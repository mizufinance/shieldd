//! Native fixture construction from the checked original witnesses' logical facts.
//! Deterministic fixture keys are development data, not production wallet secrets.
use crate::{
    authorization, compliance,
    encryption::{self, Address, Policy},
    group::{self, Point},
    hash::Parameters,
    map::Generators,
    note, recovery, registry, routing, scalar,
    transfer::{self, Witness},
    tree::{COMPLIANCE_DEPTH, Path, STATE_DEPTH, Tree},
    volume,
};
use anyhow::{Context, Result, ensure};
use commonware_codec::Read;
use commonware_cryptography::bls12381::primitives::group::{Scalar, ScalarReadCfg};
use commonware_math::algebra::{Additive, Random};
use rand::{SeedableRng, rngs::StdRng};
use serde::Deserialize;
use std::{
    collections::{BTreeMap, BTreeSet},
    fs,
    path::Path as FilePath,
};

pub const SCENARIOS: [&str; 6] = [
    "transfer",
    "transfer_unregulated",
    "transfer_flagged",
    "transfer_accumulating",
    "transfer_over_limit_disclosure",
    "transfer_accumulator_continuation",
];
#[derive(Clone, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct RegistryFacts {
    pub value: String,
    pub next_index: u64,
    pub next_value: String,
    pub daily_limit: String,
    pub route_policy: String,
    pub ring_id: String,
    pub policy_id: String,
    pub permission: String,
    pub resource: String,
    pub position: u64,
}
#[derive(Clone, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct VolumeFacts {
    pub use_real: bool,
    pub starts_new_day: bool,
    pub day_start: String,
    pub context: String,
    pub prior: String,
    pub successor: String,
    pub position: u64,
}
#[derive(Clone, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct Facts {
    pub scenario: String,
    pub witness_sha256: String,
    pub claimed_statement: String,
    pub asset: String,
    pub regulated: bool,
    pub inputs: [String; 2],
    pub outputs: [String; 2],
    pub optional_dummy: bool,
    pub same_affine_address: bool,
    pub spend_positions: [u64; 2],
    pub history: [bool; 2],
    pub timestamp: String,
    pub recent_floor: String,
    pub sender_status: String,
    pub receiver_status: String,
    pub sender_position: u64,
    pub receiver_position: u64,
    pub regulated_precision: u8,
    pub unregulated_precision: u8,
    pub routing_height: u64,
    pub registry: RegistryFacts,
    pub volume: VolumeFacts,
}
#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct Export {
    schema: String,
    field_encoding: String,
    facts: Vec<Facts>,
}
#[derive(Deserialize)]
struct OriginalIdentity {
    witness_sha256: String,
}

pub fn load() -> Result<Vec<Facts>> {
    let root = FilePath::new(env!("CARGO_MANIFEST_DIR"))
        .parent()
        .context("experiment root")?;
    let data: Export = serde_json::from_slice(&fs::read(root.join("cache/logical-facts.json"))?)?;
    ensure!(
        data.schema == "shieldd.proving_experiment.logical_facts.v1"
            && !data.field_encoding.is_empty(),
        "unexpected facts schema"
    );
    ensure!(data.facts.len() == 6, "expected six logical witnesses");
    for (i, f) in data.facts.iter().enumerate() {
        ensure!(f.scenario == SCENARIOS[i], "unexpected scenario order");
        let old: OriginalIdentity = serde_json::from_slice(&fs::read(
            root.join("../zkpari-spike/cache/99228210a891ffa23aeb")
                .join(format!("{}.json", f.scenario)),
        )?)?;
        ensure!(
            old.witness_sha256 == f.witness_sha256,
            "source fixture differs from preserved corpus"
        );
    }
    Ok(data.facts)
}
fn field(text: &str) -> Result<Scalar> {
    let bytes = hex::decode(text)?;
    ensure!(bytes.len() == 32, "field encoding length");
    Ok(Scalar::read_cfg(
        &mut bytes.as_slice(),
        &ScalarReadCfg::AllowZero,
    )?)
}
fn amount(n: u128) -> Scalar {
    Scalar::from_limbs([n as u64, (n >> 64) as u64, 0, 0])
}
fn secret(rng: &mut StdRng) -> Scalar {
    loop {
        let s = scalar::reduce(&Scalar::random(&mut *rng)).remainder;
        if s != Scalar::zero() {
            return s;
        }
    }
}
fn point(rng: &mut StdRng) -> Point<Scalar> {
    group::generator().multiply(&secret(rng))
}

struct LeafAt {
    position: u64,
    value: Scalar,
}
struct TreeWitnesses<const D: usize> {
    root: Scalar,
    paths: BTreeMap<u64, Path<Scalar, D>>,
}
fn tree<const D: usize>(p: &Parameters, kind: Tree, leaves: &[LeafAt]) -> Result<TreeWitnesses<D>> {
    ensure!(!leaves.is_empty() && D <= 24, "tree shape");
    let mut nodes = BTreeMap::new();
    for leaf in leaves {
        ensure!(leaf.position >> (2 * D) == 0, "leaf position outside tree");
        if let Some(previous) = nodes.insert(leaf.position, leaf.value.clone()) {
            ensure!(previous == leaf.value, "conflicting leaf at same position");
        }
    }
    let mut paths: BTreeMap<_, Path<Scalar, D>> = leaves
        .iter()
        .map(|l| {
            (
                l.position,
                Path {
                    position: Scalar::from(l.position),
                    siblings: std::array::from_fn(|_| std::array::from_fn(|_| Scalar::zero())),
                },
            )
        })
        .collect();
    let mut empty = Scalar::zero();
    for level in 0..D {
        for (position, path) in &mut paths {
            let index = *position >> (level * 2);
            let slot = index & 3;
            let base = index & !3;
            path.siblings[level] = std::array::from_fn(|j| {
                let sibling = j as u64 + u64::from(j as u64 >= slot);
                nodes.get(&(base + sibling)).unwrap_or(&empty).clone()
            });
        }
        let parents: BTreeSet<_> = nodes.keys().map(|i| i >> 2).collect();
        let mut next = BTreeMap::new();
        for parent in parents {
            let mut inputs = vec![Scalar::from(level as u64 + 1)];
            inputs.extend(
                (0..4).map(|slot| nodes.get(&(parent * 4 + slot)).unwrap_or(&empty).clone()),
            );
            next.insert(parent, p.native(kind as u8, &inputs));
        }
        empty = p.native(
            kind as u8,
            &[
                Scalar::from(level as u64 + 1),
                empty.clone(),
                empty.clone(),
                empty.clone(),
                empty,
            ],
        );
        nodes = next;
    }
    Ok(TreeWitnesses {
        root: nodes.get(&0).context("tree root")?.clone(),
        paths,
    })
}

pub fn build(p: &Parameters, g: &Generators, f: &Facts) -> Result<Witness> {
    let digest = hex::decode(&f.witness_sha256)?;
    ensure!(digest.len() == 32, "source witness digest");
    let mut rng = StdRng::from_seed(digest.try_into().expect("32-byte seed"));
    let asset = field(&f.asset)?;
    let ak = point(&mut rng);
    let nk = Scalar::random(&mut rng);
    let ivk = authorization::viewing_key(p, &nk, &ak);
    ensure!(
        ivk.remainder != Scalar::zero(),
        "fixture viewing key is zero"
    );
    let sender_div = point(&mut rng);
    let sender_address = Address {
        transmission: sender_div.multiply(&ivk.remainder),
        diversified: sender_div,
    };
    let receiver_address = if f.same_affine_address {
        sender_address.clone()
    } else {
        let diversified = point(&mut rng);
        Address {
            transmission: diversified.multiply(&secret(&mut rng)),
            diversified,
        }
    };
    let leaf_ring = if f.regulated {
        group::generator()
    } else {
        point(&mut rng)
    };
    let effective_ring = if f.regulated {
        leaf_ring.clone()
    } else {
        g.unregulated_ring.clone()
    };
    let issuer = if f.regulated {
        group::generator()
    } else {
        g.unregulated_dk.clone()
    };
    let rnk_dh = sender_address.diversified.clone();
    let rnk = authorization::regulated_key(
        p,
        &ivk.remainder,
        &sender_address,
        &asset,
        &rnk_dh,
        &effective_ring,
    );
    let effective_nk = if f.regulated { rnk.clone() } else { nk.clone() };
    let sender_leaf = compliance::Leaf {
        address: sender_address.clone(),
        capk: point(&mut rng),
        rnk_dh,
        rnk_commitment: p.native(authorization::RNK_COMMITMENT, &[rnk]),
        lifecycle: field(&f.sender_status)?,
    };
    let receiver_leaf = if f.same_affine_address {
        sender_leaf.clone()
    } else {
        compliance::Leaf {
            address: receiver_address.clone(),
            capk: point(&mut rng),
            rnk_dh: receiver_address.diversified.clone(),
            rnk_commitment: p.native(authorization::RNK_COMMITMENT, &[Scalar::from(2)]),
            lifecycle: field(&f.receiver_status)?,
        }
    };
    ensure!(
        receiver_leaf.lifecycle == field(&f.receiver_status)?,
        "self receiver lifecycle differs"
    );
    let users = tree::<COMPLIANCE_DEPTH>(
        p,
        Tree::Compliance,
        &[
            LeafAt {
                position: f.sender_position,
                value: sender_leaf.commitment(p, &asset),
            },
            LeafAt {
                position: f.receiver_position,
                value: receiver_leaf.commitment(p, &asset),
            },
        ],
    )?;
    let r = &f.registry;
    let registry_leaf = registry::Leaf {
        value: field(&r.value)?,
        next_index: Scalar::from(r.next_index),
        next_value: field(&r.next_value)?,
        dk: group::generator(),
        daily_limit: amount(r.daily_limit.parse()?),
        route_policy: field(&r.route_policy)?,
        ring: leaf_ring,
        ring_id: field(&r.ring_id)?,
        policy_id: field(&r.policy_id)?,
        permission: field(&r.permission)?,
        resource: field(&r.resource)?,
    };
    let assets = tree::<COMPLIANCE_DEPTH>(
        p,
        Tree::Asset,
        &[LeafAt {
            position: r.position,
            value: registry_leaf.commitment(p),
        }],
    )?;
    let nonce = Scalar::random(&mut rng);
    let v = &f.volume;
    let day = Scalar::from(v.day_start.parse::<u64>()?);
    let subject = if v.use_real {
        let mut fields = transfer::address_fields(&sender_address).to_vec();
        fields.push(asset.clone());
        p.native(4, &fields)
    } else {
        Scalar::zero()
    };
    let prior: u128 = v.prior.parse()?;
    let successor: u128 = v.successor.parse()?;
    let prior_blinding = Scalar::random(&mut rng);
    let successor_blinding = Scalar::random(&mut rng);
    let prior_commitment = p.native(
        5,
        &[
            subject.clone(),
            day.clone(),
            amount(prior),
            prior_blinding.clone(),
        ],
    );
    let input_amounts: [u128; 2] = [f.inputs[0].parse()?, f.inputs[1].parse()?];
    let notes: [note::Note<Scalar>; 2] = std::array::from_fn(|i| note::Note {
        blinding: Scalar::random(&mut rng),
        amount: amount(input_amounts[i]),
        recovery: Scalar::zero(),
    });
    let mut leaves = vec![LeafAt {
        position: f.spend_positions[0],
        value: notes[0].commitment(p, &asset, &sender_address),
    }];
    if !f.optional_dummy {
        leaves.push(LeafAt {
            position: f.spend_positions[1],
            value: notes[1].commitment(p, &asset, &sender_address),
        });
    }
    if v.use_real && !v.starts_new_day {
        leaves.push(LeafAt {
            position: v.position,
            value: prior_commitment.clone(),
        });
    }
    let state = tree::<STATE_DEPTH>(p, Tree::State, &leaves)?;
    let dummy_seed = Scalar::random(&mut rng);
    let spends = std::array::from_fn(|i| {
        let randomizer = secret(&mut rng);
        let dummy = i == 1 && f.optional_dummy;
        let nullifier = if dummy {
            note::dummy_nullifier(p, &dummy_seed, &randomizer)
        } else {
            p.native(
                volume::NOTE_NULLIFIER,
                &[
                    effective_nk.clone(),
                    notes[i].commitment(p, &asset, &sender_address),
                    Scalar::from(f.spend_positions[i]),
                ],
            )
        };
        note::SpendWitness {
            note: notes[i].clone(),
            path: state
                .paths
                .get(&f.spend_positions[i])
                .expect("fixture spend position")
                .clone(),
            rk: if dummy {
                point(&mut rng)
            } else {
                ak.add(
                    &group::generator().multiply(&randomizer),
                    &group::coefficient_d(),
                )
            },
            randomizer,
            nullifier,
            history_required: f.history[i],
        }
    });
    let mut outputs = Vec::new();
    for i in 0..2 {
        let owner = if i == 0 { &receiver_leaf } else { &sender_leaf };
        let value = amount(f.outputs[i].parse()?);
        let blinding = Scalar::random(&mut rng);
        let capsule = recovery::encrypt(
            p,
            &owner.capk,
            &value,
            &blinding,
            secret(&mut rng),
            Scalar::random(&mut rng),
            Scalar::random(&mut rng),
        )?;
        let note = note::Note {
            blinding,
            amount: value,
            recovery: capsule.capsule.commitment.clone(),
        };
        outputs.push(note::OutputWitness {
            commitment: note.commitment(p, &asset, &owner.address),
            note,
            capsule,
        });
    }
    let outputs: [note::OutputWitness; 2] = outputs
        .try_into()
        .map_err(|_| anyhow::anyhow!("output shape"))?;
    let volume_nullifier = if v.use_real {
        if v.starts_new_day {
            p.native(6, &[nk.clone(), subject.clone(), day.clone()])
        } else {
            p.native(
                volume::NOTE_NULLIFIER,
                &[
                    nk.clone(),
                    prior_commitment.clone(),
                    Scalar::from(v.position),
                ],
            )
        }
    } else {
        p.native(9, &[nk.clone(), nonce.clone(), day.clone()])
    };
    let volume_commitment = if v.use_real {
        p.native(
            5,
            &[
                subject.clone(),
                day.clone(),
                amount(successor),
                successor_blinding.clone(),
            ],
        )
    } else {
        p.native(8, &[nk.clone(), nonce.clone(), day.clone()])
    };
    let timestamp = f.timestamp.parse::<u64>()?;
    let selected = |s: &Scalar| {
        if f.regulated {
            s.clone()
        } else {
            transfer::empty_policy()
        }
    };
    let policy = Policy {
        ring_id: selected(&registry_leaf.ring_id),
        policy_id: selected(&registry_leaf.policy_id),
        resource: selected(&registry_leaf.resource),
        permission: selected(&registry_leaf.permission),
        timestamp: Scalar::from(timestamp),
    };
    let encryption = encryption::encrypt(
        p,
        &encryption::Shared {
            flagged: f.regulated && !f.same_affine_address && !v.use_real,
            nonce_root: nonce.clone(),
            asset: asset.clone(),
            amount: outputs[0].note.amount.clone(),
            issuer,
            sender_ack: sender_leaf.capk.clone(),
            receiver_ack: receiver_leaf.capk.clone(),
            sender: sender_address.clone(),
            receiver: receiver_address.clone(),
            policy,
        },
        std::array::from_fn(|_| secret(&mut rng)),
        std::array::from_fn(|_| Scalar::random(&mut rng)),
    )?;
    let routing = routing::build_tags(
        p,
        f.regulated,
        outputs[1].note.amount != Scalar::zero(),
        &sender_address.transmission,
        &receiver_address.transmission,
        &nonce,
        f.regulated_precision,
        f.unregulated_precision,
        Scalar::from(f.routing_height),
    )?;
    let mut w = Witness {
        anchor: state.root,
        asset_anchor: assets.root,
        compliance_anchor: users.root,
        asset,
        regulated: f.regulated,
        timestamp: Scalar::from(timestamp),
        recent_floor: Scalar::from(f.recent_floor.parse::<u64>()?),
        nonce_root: nonce,
        balance_blinding: secret(&mut rng),
        auth: authorization::Witness {
            ak_preimage: ak.cofactor_preimage(),
            ak,
            nk,
            ivk,
        },
        registry: registry::Witness {
            leaf: registry_leaf,
            path: assets.paths[&r.position].clone(),
        },
        sender: compliance::Witness {
            leaf: sender_leaf,
            path: users.paths[&f.sender_position].clone(),
        },
        receiver: compliance::Witness {
            leaf: receiver_leaf,
            path: users.paths[&f.receiver_position].clone(),
        },
        spends,
        optional: note::OptionalWitness {
            is_dummy: f.optional_dummy,
            seed: dummy_seed,
        },
        outputs,
        encryption,
        routing,
        volume: volume::Witness {
            nullifier: volume_nullifier,
            commitment: volume_commitment,
            day_start: day,
            proof_context: v.context.parse()?,
            use_real: v.use_real,
            starts_new_day: v.starts_new_day,
            timestamp_day_index: timestamp / 86400,
            timestamp_second: timestamp % 86400,
            subject,
            prior_volume: prior,
            prior_blinding,
            prior_commitment,
            prior_path: state
                .paths
                .get(&v.position)
                .context("fixture volume path")?
                .clone(),
            successor_volume: successor,
            successor_blinding,
        },
        claimed_statement: Scalar::zero(),
    };
    w.claimed_statement = p.native(
        transfer::STATEMENT_DOMAIN,
        &transfer::statement(p, g, &w)?.fields(),
    );
    Ok(w)
}
