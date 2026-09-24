//! Closed circuit catalogue; templates supply shape only and contain no setup randomness.
use crate::{
    audit, authorization, compliance, disclosure, encryption, group::Point, hash::Parameters,
    history, map::Generators, note, proof::Family, recovery, registry, reshape, routing, scalar,
    seizure, self_action, transfer, tree::Path, volume, withdrawal,
};
use anyhow::Result;
use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::{
        circuit::{self, Context, ValuedCircuit, Var},
        pari::{InputLayout, Relation},
    },
};
use commonware_math::algebra::Additive;

pub enum Witness {
    Transfer(Box<transfer::Witness>),
    Reshape(Box<reshape::Witness>),
    Withdrawal(Box<withdrawal::Witness>),
    Seizure(Box<seizure::Witness>),
    Disclosure(Box<disclosure::Witness>),
    DisclosureOne(Box<disclosure::Witness<1>>),
    HistoryGeneration(Box<history::GenerationWitness>),
    HistoryChunk(Box<history::ChunkWitness>),
}
impl Witness {
    pub fn family(&self) -> Family {
        match self {
            Self::Transfer(_) => Family::Transfer,
            Self::Reshape(w) => match &w.notes {
                reshape::Notes::Split { .. } => Family::ReshapeOneToEight,
                reshape::Notes::Merge { .. } => Family::ReshapeEightToOne,
            },
            Self::Withdrawal(_) => Family::Withdrawal,
            Self::Seizure(_) => Family::Seizure,
            Self::Disclosure(_) => Family::Disclosure,
            Self::DisclosureOne(_) => Family::DisclosureOne,
            Self::HistoryGeneration(_) => Family::HistoryGeneration,
            Self::HistoryChunk(_) => Family::HistoryChunk,
        }
    }
    pub fn digest(&self, p: &Parameters, g: &Generators) -> Result<Scalar> {
        Ok(match self {
            Self::Transfer(w) => p.native(
                transfer::STATEMENT_DOMAIN,
                &transfer::statement(p, g, w)?.fields(),
            ),
            Self::Reshape(w) => w.statement(g).digest(p),
            Self::Withdrawal(w) => w.statement(g).digest(p),
            Self::Seizure(w) => w.statement.digest(p),
            Self::Disclosure(w) => w.statement.digest(p),
            Self::DisclosureOne(w) => w.statement.digest(p),
            Self::HistoryGeneration(w) => w.statement.digest(p),
            Self::HistoryChunk(w) => w.statement.digest(p),
        })
    }
    pub fn constrain<'a>(
        &self,
        ctx: Context<'a, Scalar>,
        p: &Parameters,
        g: &Generators,
        digest: &Scalar,
    ) -> Vec<Var<'a, Scalar>> {
        match self {
            Self::Transfer(w) => transfer::constrain(ctx, p, g, w, digest),
            Self::Reshape(w) => reshape::constrain(ctx, p, g, w, digest),
            Self::Withdrawal(w) => withdrawal::constrain(ctx, p, g, w, digest),
            Self::Seizure(w) => seizure::constrain(ctx, p, w, digest),
            Self::Disclosure(w) => disclosure::constrain(ctx, p, w, digest),
            Self::DisclosureOne(w) => disclosure::constrain(ctx, p, w, digest),
            Self::HistoryGeneration(w) => history::constrain_generation(ctx, p, w, digest),
            Self::HistoryChunk(w) => history::constrain_chunk(ctx, p, w, digest),
        }
    }
}
pub struct Compiled {
    pub family: Family,
    pub relation: Relation,
    pub layout: InputLayout,
}
pub fn compile(family: Family) -> Result<Compiled> {
    let p = Parameters::load()?;
    let g = Generators::derive(&p);
    let w = template(family);
    let (c, selected) = circuit::build(|ctx| w.constrain(ctx, &p, &g, &Scalar::zero()));
    let layout = InputLayout::new(vec![selected[0]], vec![vec![selected[1]]])?;
    let relation = Relation::compile(&c, &layout)?;
    Ok(Compiled {
        family,
        relation,
        layout,
    })
}
pub fn evaluate(witness: &Witness) -> Result<ValuedCircuit<Scalar>> {
    let p = Parameters::load()?;
    let g = Generators::derive(&p);
    let digest = witness.digest(&p, &g)?;
    Ok(circuit::build_with_values(|ctx| witness.constrain(ctx, &p, &g, &digest)).0)
}

fn zero() -> Scalar {
    Scalar::zero()
}
fn point() -> Point<Scalar> {
    Point::identity()
}
fn address() -> encryption::Address<Scalar> {
    encryption::Address {
        diversified: point(),
        transmission: point(),
    }
}
fn path<const D: usize>() -> Path<Scalar, D> {
    Path {
        position: zero(),
        siblings: std::array::from_fn(|_| std::array::from_fn(|_| zero())),
    }
}
fn note() -> note::Note<Scalar> {
    note::Note {
        blinding: zero(),
        amount: zero(),
        recovery: zero(),
    }
}
fn capsule() -> recovery::Capsule<Scalar> {
    recovery::Capsule {
        commitment: zero(),
        epk: point(),
        c2: zero(),
        salt: zero(),
        confirmation: zero(),
        encrypted_amount: zero(),
        encrypted_blinding: zero(),
    }
}
fn output() -> note::OutputWitness {
    note::OutputWitness {
        note: note(),
        commitment: zero(),
        capsule: recovery::Witness {
            capsule: capsule(),
            seed: zero(),
            randomizer: zero(),
        },
    }
}
fn spend() -> note::SpendWitness {
    note::SpendWitness {
        note: note(),
        path: path(),
        nullifier: zero(),
        history_required: false,
    }
}
fn optional() -> note::OptionalWitness {
    note::OptionalWitness {
        is_dummy: false,
        seed: zero(),
    }
}
fn auth() -> authorization::Witness {
    authorization::Witness {
        ak: point(),
        ak_preimage: point(),
        nk: zero(),
        ivk: scalar::Reduction {
            remainder: zero(),
            quotient: 0,
        },
    }
}
fn audit() -> audit::Keys<Scalar> {
    audit::Keys {
        epoch: zero(),
        payload: point(),
        checking: point(),
    }
}
fn registry() -> registry::Witness {
    registry::Witness {
        path: path(),
        leaf: registry::Leaf {
            value: zero(),
            next_index: zero(),
            next_value: zero(),
            dk: point(),
            daily_limit: zero(),
            route_policy: zero(),
            ring: point(),
            ring_id: zero(),
            policy_id: zero(),
            permission: zero(),
            resource: zero(),
            audit: audit(),
        },
    }
}
fn owner() -> compliance::Witness {
    compliance::Witness {
        path: path(),
        leaf: compliance::Leaf {
            address: address(),
            rnk_dh: point(),
            rnk_commitment: zero(),
            lifecycle: zero(),
        },
    }
}
fn volume() -> volume::Witness {
    volume::Witness {
        nullifier: zero(),
        commitment: zero(),
        day_start: zero(),
        proof_context: 1,
        use_real: false,
        starts_new_day: false,
        timestamp_day_index: 0,
        timestamp_second: 0,
        subject: zero(),
        prior_volume: 0,
        prior_blinding: zero(),
        prior_commitment: zero(),
        prior_path: path(),
        successor_volume: 0,
        successor_blinding: zero(),
    }
}
fn self_action() -> self_action::Witness {
    self_action::Witness {
        spend_auth: note::SpendAuthorization {
            randomizer: zero(),
            rk: point(),
        },
        anchor: zero(),
        asset_anchor: zero(),
        compliance_anchor: zero(),
        asset: zero(),
        regulated: false,
        recent_floor: zero(),
        balance_blinding: zero(),
        routing_nonce: zero(),
        routing: routing::SingleWitness {
            regulated_precision: 0,
            unregulated_precision: 0,
            as_of_height: zero(),
            parameter_set: zero(),
            tag: zero(),
        },
        auth: auth(),
        registry: registry(),
        sender: owner(),
    }
}
fn generation() -> history::GenerationWitness {
    history::GenerationWitness {
        statement: history::GenerationStatement {
            version: history::VERSION,
            nullifier: zero(),
            index: 0,
            root: zero(),
            start_position: 0,
            end_position: 0,
            start_head: zero(),
            end_head: zero(),
        },
        leaf: history::Leaf {
            value: zero(),
            next_index: 0,
            next_value: zero(),
            lower_sentinel: false,
            terminal: false,
        },
        path: path(),
    }
}
fn predicate() -> disclosure::Predicate<Scalar> {
    disclosure::Predicate {
        op: zero(),
        lower: zero(),
        upper: zero(),
        result: zero(),
    }
}
fn disclosure_template<const N: usize>() -> disclosure::Witness<N> {
    disclosure::Witness {
        statement: disclosure::Statement {
            context: [zero(), zero()],
            context_hash: zero(),
            slots: std::array::from_fn(|_| disclosure::Slot {
                active: zero(),
                commitment: zero(),
                reveal_amount: zero(),
                reveal_asset: zero(),
                reveal_recipient: zero(),
                amount: zero(),
                asset: zero(),
                address: address(),
                predicate: predicate(),
            }),
            total_enabled: zero(),
            total_reveal: zero(),
            total_amount: zero(),
            total_asset: zero(),
            total_predicate: predicate(),
        },
        notes: std::array::from_fn(|_| disclosure::Opening {
            note: note(),
            asset: zero(),
            address: address(),
        }),
    }
}

fn template(family: Family) -> Witness {
    match family {
        Family::Transfer => {
            let core = || encryption::Core {
                epk: point(),
                c2: zero(),
                confirmation: zero(),
                ciphertext: zero(),
            };
            let extended = || encryption::Extended {
                epk: point(),
                c2: zero(),
                ciphertext: std::array::from_fn(|_| zero()),
            };
            Witness::Transfer(Box::new(transfer::Witness {
                spend_auth: note::SpendAuthorization {
                    randomizer: zero(),
                    rk: point(),
                },
                anchor: zero(),
                asset_anchor: zero(),
                compliance_anchor: zero(),
                asset: zero(),
                regulated: false,
                timestamp: zero(),
                recent_floor: zero(),
                nonce_root: zero(),
                balance_blinding: zero(),
                auth: auth(),
                registry: registry(),
                sender: owner(),
                receiver: owner(),
                spends: [spend(), spend()],
                optional: optional(),
                outputs: [output(), output()],
                volume: volume(),
                encryption: encryption::Witness {
                    ephemeral: std::array::from_fn(|_| zero()),
                    ownership_randomness: std::array::from_fn(|_| zero()),
                    published: encryption::Published {
                        detection: std::array::from_fn(|_| zero()),
                        sender_core: core(),
                        sender_ext: extended(),
                        output_core: core(),
                        output_ext: extended(),
                        metadata: encryption::Metadata {
                            policy: encryption::Policy {
                                ring_id: zero(),
                                policy_id: zero(),
                                resource: zero(),
                                permission: zero(),
                                timestamp: zero(),
                            },
                            audit_epoch: zero(),
                            salts: std::array::from_fn(|_| zero()),
                        },
                        ownership: std::array::from_fn(|_| audit::Ciphertext {
                            r: point(),
                            c: point(),
                        }),
                    },
                },
                routing: routing::Witness {
                    regulated_precision: 0,
                    unregulated_precision: 0,
                    as_of_height: zero(),
                    parameter_set: zero(),
                    tags: [zero(), zero()],
                },
            }))
        }
        Family::ReshapeOneToEight => Witness::Reshape(Box::new(reshape::Witness {
            owner: self_action(),
            notes: reshape::Notes::Split {
                input: spend(),
                outputs: std::array::from_fn(|_| output()),
            },
        })),
        Family::ReshapeEightToOne => Witness::Reshape(Box::new(reshape::Witness {
            owner: self_action(),
            notes: reshape::Notes::Merge {
                inputs: std::array::from_fn(|_| reshape::MergeInput {
                    spend: spend(),
                    padding: optional(),
                }),
                output: output(),
            },
        })),
        Family::Withdrawal => Witness::Withdrawal(Box::new(withdrawal::Witness {
            owner: self_action(),
            timestamp: zero(),
            amount: zero(),
            effect_hash: std::array::from_fn(|_| zero()),
            spends: [spend(), spend()],
            optional: optional(),
            change: output(),
            volume: volume(),
            volume_seed: zero(),
            encryption: withdrawal::EncryptionWitness {
                ciphertext: withdrawal::Ciphertext {
                    epk: point(),
                    c2: zero(),
                    confirmation: zero(),
                    address: std::array::from_fn(|_| zero()),
                },
                randomizer: zero(),
                seed: zero(),
            },
        })),
        Family::Seizure => Witness::Seizure(Box::new(seizure::Witness {
            statement: seizure::Statement {
                anchor: zero(),
                commitment: zero(),
                nullifier: zero(),
                history_required: zero(),
                recent_floor: zero(),
                address: address(),
                asset: zero(),
                amount: zero(),
                recovery: capsule(),
                seed: zero(),
                rnk_commitment: zero(),
                authorization: zero(),
            },
            blinding: zero(),
            rnk: zero(),
            path: path(),
        })),
        Family::Disclosure => Witness::Disclosure(Box::new(disclosure_template::<32>())),
        Family::DisclosureOne => Witness::DisclosureOne(Box::new(disclosure_template::<1>())),
        Family::HistoryGeneration => Witness::HistoryGeneration(Box::new(generation())),
        Family::HistoryChunk => Witness::HistoryChunk(Box::new(history::ChunkWitness {
            statement: history::ChunkStatement {
                version: history::VERSION,
                nullifier: zero(),
                index: 0,
                start_head: zero(),
                end_head: zero(),
            },
            generations: std::array::from_fn(|_| generation()),
        })),
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::fixtures;
    use commonware_math::algebra::Ring;
    #[test]
    fn catalogue_relations_match_all_nine_real_witness_shapes() {
        let p = Parameters::load().unwrap();
        let g = Generators::derive(&p);
        let witnesses = [
            Witness::Transfer(Box::new(
                fixtures::build(&p, &g, &fixtures::load().unwrap()[0]).unwrap(),
            )),
            Witness::Reshape(Box::new(fixtures::reshape(&p, &g, true, None).unwrap())),
            Witness::Reshape(Box::new(fixtures::reshape(&p, &g, true, Some(2)).unwrap())),
            Witness::Withdrawal(Box::new(fixtures::withdrawal(&p, &g, 0).unwrap())),
            Witness::Seizure(Box::new(seizure::tests::fixture(&p))),
            Witness::Disclosure(Box::new(disclosure::tests::fixture(&p, 2, Scalar::one()))),
            Witness::DisclosureOne(Box::new(disclosure::tests::fixture_for_capacity::<1>(
                &p,
                1,
                Scalar::one(),
            ))),
            Witness::HistoryGeneration(Box::new(
                history::tests::chunk(&p, 0).generations[0].clone(),
            )),
            Witness::HistoryChunk(Box::new(history::tests::chunk(&p, 0))),
        ];
        let mut digests = std::collections::BTreeSet::new();
        for w in witnesses {
            let family = w.family();
            let compiled = compile(family).unwrap();
            let digest = w.digest(&p, &g).unwrap();
            let (c, selected) = circuit::build(|ctx| w.constrain(ctx, &p, &g, &digest));
            let layout = InputLayout::new(vec![selected[0]], vec![vec![selected[1]]]).unwrap();
            let actual = Relation::compile(&c, &layout).unwrap();
            assert_eq!(
                actual.digest(),
                compiled.relation.digest(),
                "{}",
                family.label()
            );
            assert!(digests.insert(*actual.digest()));
            assert!(evaluate(&w).unwrap().is_satisfied());
            let wrong_digest = digest + &Scalar::one();
            let (invalid, _) =
                circuit::build_with_values(|ctx| w.constrain(ctx, &p, &g, &wrong_digest));
            assert!(!invalid.is_satisfied(), "{} digest binding", family.label());
        }
    }
}
