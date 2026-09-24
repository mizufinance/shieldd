//! Deterministic complete Transfer witnesses for relation and proof tests.
use crate::{
    audit, authorization, compliance,
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
use rand10::{SeedableRng, rngs::StdRng};
use serde::Deserialize;
use std::collections::{BTreeMap, BTreeSet};

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
    pub seed: [u8; 32],
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
pub fn load() -> Result<Vec<Facts>> {
    use commonware_codec::Encode;
    let field = |n: u64| hex::encode(Scalar::from(n).encode());
    Ok(SCENARIOS
        .iter()
        .enumerate()
        .map(|(i, scenario)| {
            let regulated = i != 1;
            let use_real = matches!(i, 0 | 3 | 5);
            let continuation = i == 5;
            Facts {
                scenario: scenario.to_string(),
                seed: [i as u8 + 1; 32],
                asset: field(7),
                regulated,
                inputs: ["100".into(), "0".into()],
                outputs: ["25".into(), "75".into()],
                optional_dummy: true,
                same_affine_address: false,
                spend_positions: [0, 0],
                history: [false; 2],
                timestamp: "86401".into(),
                recent_floor: "0".into(),
                sender_status: field(1),
                receiver_status: field(1),
                sender_position: 0,
                receiver_position: 1,
                regulated_precision: 8,
                unregulated_precision: 8,
                routing_height: 1,
                registry: RegistryFacts {
                    value: field(if regulated { 7 } else { 3 }),
                    next_index: 1,
                    next_value: field(11),
                    daily_limit: if i == 4 { "24" } else { "25" }.into(),
                    route_policy: field(1),
                    ring_id: field(2),
                    policy_id: field(3),
                    permission: field(4),
                    resource: field(5),
                    position: 0,
                },
                volume: VolumeFacts {
                    use_real,
                    starts_new_day: !continuation,
                    day_start: "86400".into(),
                    context: "1".into(),
                    prior: "0".into(),
                    successor: if use_real { "25" } else { "0" }.into(),
                    position: if continuation { 2 } else { 0 },
                },
            }
        })
        .collect())
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
    let mut rng = StdRng::from_seed(f.seed);
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
        rnk_dh,
        rnk_commitment: p.native(authorization::RNK_COMMITMENT, &[rnk]),
        lifecycle: field(&f.sender_status)?,
    };
    let receiver_leaf = if f.same_affine_address {
        sender_leaf.clone()
    } else {
        compliance::Leaf {
            address: receiver_address.clone(),
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
        audit: audit::Keys {
            epoch: Scalar::from(1),
            payload: point(&mut rng),
            checking: point(&mut rng),
        },
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
    let randomizer = secret(&mut rng);
    let spend_auth = note::SpendAuthorization {
        rk: ak.add(
            &group::generator().multiply(&randomizer),
            &group::coefficient_d(),
        ),
        randomizer: randomizer.clone(),
    };
    let spends = std::array::from_fn(|i| {
        let dummy = i == 1 && f.optional_dummy;
        let nullifier = if dummy {
            note::dummy_nullifier(p, &dummy_seed, &randomizer, note::Padding::Transfer)
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
            if f.regulated {
                &registry_leaf.audit.payload
            } else {
                &g.unregulated_ring
            },
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
            detection_key: issuer,
            audit: if f.regulated {
                registry_leaf.audit.clone()
            } else {
                audit::Keys::from_native(&shieldd_sdk_crypto::audit::AuditKeys::unregulated())
            },
            sender: sender_address.clone(),
            receiver: receiver_address.clone(),
            policy,
        },
        std::array::from_fn(|_| secret(&mut rng)),
        std::array::from_fn(|_| Scalar::random(&mut rng)),
        std::array::from_fn(|_| secret(&mut rng)),
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
    let w = Witness {
        spend_auth,
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
    };
    Ok(w)
}

pub fn owner(p: &Parameters, w: &Witness) -> crate::self_action::Witness {
    crate::self_action::Witness {
        spend_auth: w.spend_auth.clone(),
        anchor: w.anchor.clone(),
        asset_anchor: w.asset_anchor.clone(),
        compliance_anchor: w.compliance_anchor.clone(),
        asset: w.asset.clone(),
        regulated: w.regulated,
        recent_floor: w.recent_floor.clone(),
        balance_blinding: w.balance_blinding.clone(),
        routing_nonce: w.nonce_root.clone(),
        routing: routing::build_single(
            p,
            w.regulated,
            &w.sender.leaf.address.transmission,
            &w.nonce_root,
            8,
            16,
            Scalar::from(1),
        )
        .unwrap(),
        auth: w.auth.clone(),
        registry: w.registry.clone(),
        sender: w.sender.clone(),
    }
}

pub fn self_output(
    p: &Parameters,
    owner: &crate::self_action::Witness,
    amount: u128,
    blinding: u64,
) -> note::OutputWitness {
    let blinding = Scalar::from(blinding);
    let amount = self::amount(amount);
    let sink = group::native_point(&shieldd_sdk_crypto::audit::UNREGULATED_RING);
    let capsule = recovery::encrypt(
        p,
        if owner.regulated {
            &owner.registry.leaf.audit.payload
        } else {
            &sink
        },
        &amount,
        &blinding,
        Scalar::from(43),
        Scalar::from(47),
        Scalar::from(53),
    )
    .unwrap();
    let note = note::Note {
        amount,
        blinding,
        recovery: capsule.capsule.commitment.clone(),
    };
    note::OutputWitness {
        commitment: note.commitment(p, &owner.asset, &owner.sender.leaf.address),
        note,
        capsule,
    }
}

pub fn reshape(
    p: &Parameters,
    g: &Generators,
    regulated: bool,
    merge_count: Option<usize>,
) -> Result<crate::reshape::Witness> {
    use crate::reshape::{MergeInput, Notes};
    let facts = load()?;
    let transfer = build(p, g, &facts[if regulated { 0 } else { 1 }])?;
    let mut owner = owner(p, &transfer);
    let notes = if let Some(count) = merge_count {
        ensure!((2..=8).contains(&count), "merge fixture real count");
        let nk = if regulated {
            authorization::regulated_key(
                p,
                &owner.auth.ivk.remainder,
                &owner.sender.leaf.address,
                &owner.asset,
                &owner.sender.leaf.rnk_dh,
                &owner.registry.leaf.ring,
            )
        } else {
            owner.auth.nk.clone()
        };
        let notes: [_; 8] = std::array::from_fn(|i| note::Note {
            blinding: Scalar::from(i as u64 + 1),
            amount: Scalar::from(if i < count { 10 } else { 0 }),
            recovery: Scalar::from(3),
        });
        let leaves: Vec<_> = notes[..count]
            .iter()
            .enumerate()
            .map(|(i, n)| LeafAt {
                position: i as u64,
                value: n.commitment(p, &owner.asset, &owner.sender.leaf.address),
            })
            .collect();
        let state = tree::<STATE_DEPTH>(p, Tree::State, &leaves)?;
        owner.anchor = state.root;
        let inputs = std::array::from_fn(|i| {
            let randomizer = owner.spend_auth.randomizer.clone();
            let padding = note::OptionalWitness {
                is_dummy: i >= count,
                seed: Scalar::from(i as u64 + 19),
            };
            let position = if i < count { i as u64 } else { 0 };
            let nullifier = if padding.is_dummy {
                note::dummy_nullifier(p, &padding.seed, &randomizer, note::Padding::Reshape(i))
            } else {
                p.native(
                    volume::NOTE_NULLIFIER,
                    &[
                        nk.clone(),
                        notes[i].commitment(p, &owner.asset, &owner.sender.leaf.address),
                        Scalar::from(position),
                    ],
                )
            };
            MergeInput {
                spend: note::SpendWitness {
                    note: notes[i].clone(),
                    path: state.paths[&position].clone(),
                    nullifier,
                    history_required: false,
                },
                padding,
            }
        });
        Notes::Merge {
            inputs,
            output: self_output(p, &owner, count as u128 * 10, 101),
        }
    } else {
        Notes::Split {
            input: transfer.spends[0].clone(),
            outputs: std::array::from_fn(|i| {
                self_output(p, &owner, if i < 2 { 50 } else { 0 }, i as u64 + 101)
            }),
        }
    };
    Ok(crate::reshape::Witness { owner, notes })
}

pub fn withdrawal(
    p: &Parameters,
    g: &Generators,
    scenario: usize,
) -> Result<crate::withdrawal::Witness> {
    let transfer = build(p, g, &load()?[scenario])?;
    let owner = owner(p, &transfer);
    let mut spends = transfer.spends.clone();
    if transfer.optional.is_dummy {
        spends[1].nullifier = note::dummy_nullifier(
            p,
            &transfer.optional.seed,
            &owner.spend_auth.randomizer,
            note::Padding::Withdrawal,
        );
    }
    let flagged = transfer.regulated && !transfer.volume.use_real;
    let key = if flagged {
        &owner.registry.leaf.dk
    } else {
        if owner.regulated {
            &owner.registry.leaf.audit.payload
        } else {
            &group::native_point(&shieldd_sdk_crypto::audit::UNREGULATED_RING)
        }
    };
    let encryption = crate::withdrawal::encrypt(
        p,
        key,
        &owner.sender.leaf.address,
        Scalar::from(61),
        Scalar::from(67),
    )?;
    Ok(crate::withdrawal::Witness {
        owner,
        timestamp: transfer.timestamp,
        amount: transfer.outputs[0].note.amount.clone(),
        effect_hash: [1, 2, 3, 4].map(Scalar::from),
        spends,
        optional: transfer.optional,
        change: transfer.outputs[1].clone(),
        volume: transfer.volume,
        volume_seed: transfer.nonce_root,
        encryption,
    })
}
