//! Pure conversion from validated runtime records to native circuit witnesses.
use crate::*;
use anyhow::{ensure, Result};
use commonware_cryptography::bls12381::primitives::group::Scalar;
use reddsa::{sapling::SpendAuth, VerificationKey};
use shieldd_sdk_circuits::{
    self as c,
    encoding::field,
    group::{native_point as point, Point},
};
use shieldd_sdk_compliance::{ComplianceLeaf, IndexedLeaf, MerklePath};
use shieldd_sdk_crypto::{encoding, Fq, Fr, SubgroupPoint};
use shieldd_sdk_keys::{keys::NullifierKey, Address};
use shieldd_sdk_sct::Nullifier;
use shieldd_sdk_tct as tct;

fn scalar(value: Fr) -> Scalar {
    field(&encoding::field(&value.to_bytes()).expect("Jubjub scalar fits base field"))
}
fn amount(value: u128) -> Scalar {
    Scalar::from_limbs([value as u64, (value >> 64) as u64, 0, 0])
}
fn address(value: &Address) -> c::encryption::Address<Scalar> {
    c::encryption::Address {
        diversified: point(value.diversified_generator()),
        transmission: point(value.transmission_point()),
    }
}
fn key(value: VerificationKey<SpendAuth>) -> Result<Point<Scalar>> {
    Ok(point(&encoding::nonidentity(&<[u8; 32]>::from(value))?))
}
fn authorization(
    ak: VerificationKey<SpendAuth>,
    nk: NullifierKey,
) -> Result<c::authorization::Witness> {
    let ak = key(ak)?;
    let nk = field(&nk.0);
    let ivk = c::authorization::viewing_key(c::hash::Parameters::load()?, &nk, &ak);
    Ok(c::authorization::Witness {
        ak_preimage: ak.cofactor_preimage(),
        ak,
        nk,
        ivk,
    })
}
fn state_path(proof: &tct::Proof) -> c::tree::Path<Scalar, 24> {
    let path = proof.auth_path();
    c::tree::Path {
        position: Scalar::from(u64::from(proof.position())),
        siblings: std::array::from_fn(|i| path[23 - i].map(|hash| field(&Fq::from(hash)))),
    }
}
fn compliance_path(path: &MerklePath, position: u64) -> Result<c::tree::Path<Scalar, 16>> {
    ensure!(
        position < (1u64 << 32),
        "compliance position exceeds tree capacity"
    );
    ensure!(path.layers.len() == 16, "invalid compliance path depth");
    let siblings = path
        .layers
        .iter()
        .map(|layer| {
            ensure!(
                layer.siblings.len() == 3,
                "invalid compliance sibling count"
            );
            let values = layer
                .siblings
                .iter()
                .map(|bytes| Ok(field(&encoding::field(bytes.as_slice().try_into()?)?)))
                .collect::<Result<Vec<_>>>()?;
            Ok(values
                .try_into()
                .map_err(|_| anyhow::anyhow!("invalid compliance siblings"))?)
        })
        .collect::<Result<Vec<_>>>()?
        .try_into()
        .map_err(|_| anyhow::anyhow!("invalid compliance path"))?;
    Ok(c::tree::Path {
        position: Scalar::from(position),
        siblings,
    })
}
fn compliance(
    leaf: &ComplianceLeaf,
    path: &MerklePath,
    position: u64,
) -> Result<c::compliance::Witness> {
    leaf.validate()?;
    Ok(c::compliance::Witness {
        leaf: c::compliance::Leaf {
            address: address(&leaf.address),
            capk: point(&leaf.capk),
            rnk_dh: point(&leaf.rnk_dh_pk),
            rnk_commitment: field(&leaf.rnk_commitment),
            lifecycle: field(&leaf.lifecycle_field()),
        },
        path: compliance_path(path, position)?,
    })
}
fn registry(leaf: &IndexedLeaf, path: &MerklePath, position: u64) -> Result<c::registry::Witness> {
    let k = &leaf.ring.audit_keys;
    Ok(c::registry::Witness {
        leaf: c::registry::Leaf {
            value: field(&leaf.value),
            next_index: Scalar::from(leaf.next_index),
            next_value: field(&leaf.next_value),
            dk: point(&leaf.params.dk_pub),
            daily_limit: amount(leaf.params.daily_volume_limit),
            route_policy: field(&leaf.params.route_policy_hash),
            ring: point(&leaf.ring.ring_pk),
            ring_id: field(&leaf.ring.ring_id_hash),
            policy_id: field(&leaf.ring.policy_id_hash),
            permission: field(&leaf.ring.permission_hash),
            resource: field(&leaf.ring.resource_hash),
            audit: c::audit::Keys {
                epoch: Scalar::from(k.epoch),
                amount: point(&k.amount),
                sender: point(&k.sender),
                receiver: point(&k.receiver),
                checking: point(&k.checking),
            },
        },
        path: compliance_path(path, position)?,
    })
}
fn note(note: &Note) -> c::note::Note<Scalar> {
    c::note::Note {
        blinding: field(&note.note_blinding()),
        amount: field(&Fq::from(note.amount())),
        recovery: field(&note.recovery_commitment().0),
    }
}
fn spend(
    note_value: &Note,
    path: &tct::Proof,
    randomizer: Fr,
    nullifier: Nullifier,
    rk: VerificationKey<SpendAuth>,
    history_required: bool,
) -> Result<c::note::SpendWitness> {
    Ok(c::note::SpendWitness {
        note: note(note_value),
        path: state_path(path),
        randomizer: scalar(randomizer),
        nullifier: field(&nullifier.0),
        rk: key(rk)?,
        history_required,
    })
}
fn capsule(value: &RecoveryCapsule) -> c::recovery::Capsule<Scalar> {
    c::recovery::Capsule {
        commitment: field(&value.commitment().0),
        epk: point(&value.epk),
        c2: field(&value.c2),
        salt: field(&value.salt),
        confirmation: field(&value.key_confirmation),
        encrypted_amount: field(&value.encrypted_amount),
        encrypted_blinding: field(&value.encrypted_note_blinding),
    }
}
fn output(note_value: &Note, capk: SubgroupPoint) -> Result<c::note::OutputWitness> {
    let (recovery, opening) = RecoveryCapsule::encrypt(
        note_value.amount(),
        note_value.note_blinding(),
        capk,
        note_value.rseed(),
    )?;
    ensure!(
        recovery.commitment() == note_value.recovery_commitment(),
        "output recovery opening mismatch"
    );
    Ok(c::note::OutputWitness {
        note: note(note_value),
        commitment: field(&note_value.commit().0),
        capsule: c::recovery::Witness {
            capsule: capsule(&recovery),
            seed: field(&opening.seed),
            randomizer: scalar(opening.r),
        },
    })
}
fn volume(
    public: &VolumeAccumulatorPublic,
    private: &VolumeAccumulatorPrivate,
    timestamp: Fq,
    context: TransferProofContext,
) -> Result<c::volume::Witness> {
    let bytes = timestamp.to_bytes();
    ensure!(bytes[8..].iter().all(|b| *b == 0), "timestamp exceeds u64");
    let timestamp = u64::from_le_bytes(bytes[..8].try_into()?);
    let plan = &private.plan;
    plan.validate()?;
    ensure!(
        plan.prior_position() < (1u64 << 48),
        "volume position exceeds state tree capacity"
    );
    let successor = plan.successor_state();
    let prior = plan.prior_state();
    if prior.is_some() {
        ensure!(
            u64::from(private.prior_proof.position()) == plan.prior_position(),
            "volume proof position mismatch"
        );
        ensure!(
            private.prior_proof.commitment() == plan.prior_commitment(),
            "volume proof commitment mismatch"
        );
    }
    Ok(c::volume::Witness {
        nullifier: field(&public.nullifier.0),
        commitment: field(&public.commitment.0),
        day_start: Scalar::from(public.day_start),
        proof_context: match context {
            TransferProofContext::Ordinary => 1,
            TransferProofContext::FeeFunding => 2,
        },
        use_real: plan.is_real(),
        starts_new_day: plan.starts_new_day(),
        timestamp_day_index: timestamp / 86400,
        timestamp_second: timestamp % 86400,
        subject: field(&successor.as_ref().map_or(Fq::from(0), |s| s.subject)),
        prior_volume: prior.map_or(0, |s| s.undisclosed_volume),
        prior_blinding: field(&prior.map_or(Fq::from(0), |s| s.blinding)),
        prior_commitment: field(&plan.prior_commitment().0),
        prior_path: state_path(&private.prior_proof),
        successor_volume: successor.as_ref().map_or(0, |s| s.undisclosed_volume),
        successor_blinding: field(&successor.as_ref().map_or(Fq::from(0), |s| s.blinding)),
    })
}
fn single_routing(
    parameters: &discovery::Parameters,
    tag: discovery::RoutingTag,
    parameter: Fq,
) -> c::routing::SingleWitness {
    c::routing::SingleWitness {
        regulated_precision: parameters.regulated_precision.bits(),
        unregulated_precision: parameters.unregulated_precision.bits(),
        as_of_height: Scalar::from(parameters.as_of_height),
        parameter_set: field(&parameter),
        tag: Scalar::from(u64::from(tag.value)),
    }
}
fn audit(
    value: &transfer::TransferCompliancePublic,
    timestamp: Fq,
) -> Result<c::encryption::Published<Scalar>> {
    let a = crate::public_input_hash::audit(value, timestamp)?;
    let point = |p: c::group::Point<Fq>| c::group::Point {
        x: field(&p.x),
        y: field(&p.y),
    };
    let core = |t: c::encryption::Core<Fq>| c::encryption::Core {
        epk: point(t.epk),
        c2: field(&t.c2),
        confirmation: field(&t.confirmation),
        ciphertext: field(&t.ciphertext),
    };
    let extended = |t: c::encryption::Extended<Fq>| c::encryption::Extended {
        epk: point(t.epk),
        c2: field(&t.c2),
        ciphertext: t.ciphertext.each_ref().map(field),
    };
    let p = a.metadata.policy;
    Ok(c::encryption::Published {
        detection: a.detection.each_ref().map(field),
        sender_core: core(a.sender_core),
        sender_ext: extended(a.sender_ext),
        output_core: core(a.output_core),
        output_ext: extended(a.output_ext),
        metadata: c::encryption::Metadata {
            policy: c::encryption::Policy {
                ring_id: field(&p.ring_id),
                policy_id: field(&p.policy_id),
                resource: field(&p.resource),
                permission: field(&p.permission),
                timestamp: field(&p.timestamp),
            },
            audit_epoch: field(&a.metadata.audit_epoch),
            salts: a.metadata.salts.each_ref().map(field),
        },
        ownership: a.ownership.map(|ct| c::audit::Ciphertext {
            r: point(ct.r),
            c: point(ct.c),
        }),
    })
}
pub(crate) fn transfer(
    p: &TransferProofPublic,
    w: &TransferProofPrivate,
) -> Result<c::catalogue::Witness> {
    p.validate_shape()?;
    let required = &w.required_input;
    let optional = &w.optional_input.spend;
    Ok(c::catalogue::Witness::Transfer(Box::new(
        c::transfer::Witness {
            anchor: field(&p.anchor.into()),
            asset_anchor: field(&p.asset_anchor.0),
            compliance_anchor: field(&p.compliance_anchor.0),
            asset: field(&required.spent_note.asset_id().0),
            regulated: w.is_regulated,
            timestamp: field(&p.target_timestamp),
            recent_floor: Scalar::from(p.recent_position_floor),
            nonce_root: scalar(w.compliance.transfer_nonce_root),
            balance_blinding: scalar(w.action_balance_blinding),
            auth: authorization(w.ak, w.nk)?,
            registry: registry(&w.asset_indexed_leaf, &w.asset_path, w.asset_position)?,
            sender: compliance(
                &w.sender_leaf,
                &w.sender_compliance_path,
                w.sender_compliance_position,
            )?,
            receiver: compliance(
                &w.receiver_output.recipient_leaf,
                &w.receiver_output.recipient_compliance_path,
                w.receiver_output.recipient_compliance_position,
            )?,
            spends: [
                spend(
                    &required.spent_note,
                    &required.state_commitment_proof,
                    required.spend_auth_randomizer,
                    p.inputs[0].nullifier,
                    p.inputs[0].rk,
                    p.inputs[0].history_required,
                )?,
                spend(
                    &optional.spent_note,
                    &optional.state_commitment_proof,
                    optional.spend_auth_randomizer,
                    p.inputs[1].nullifier,
                    p.inputs[1].rk,
                    p.inputs[1].history_required,
                )?,
            ],
            optional: c::note::OptionalWitness {
                is_dummy: w.optional_input.is_dummy,
                seed: field(&w.optional_input.dummy_nullifier_seed),
            },
            outputs: [
                output(
                    &w.receiver_output.created_note,
                    w.receiver_output.recipient_leaf.capk,
                )?,
                output(&w.change_output.created_note, w.sender_leaf.capk)?,
            ],
            volume: volume(
                &p.volume_accumulator,
                &w.volume_accumulator,
                p.target_timestamp,
                p.proof_context,
            )?,
            encryption: c::encryption::Witness {
                ephemeral: [
                    w.compliance.sender.core,
                    w.compliance.sender.ext,
                    w.compliance.output.core,
                    w.compliance.output.ext,
                ]
                .map(scalar),
                ownership_randomness: [w.compliance.sender.checking, w.compliance.output.checking]
                    .map(scalar),
                published: audit(&p.compliance, p.target_timestamp)?,
            },
            routing: c::routing::Witness {
                regulated_precision: w.routing_parameters.regulated_precision.bits(),
                unregulated_precision: w.routing_parameters.unregulated_precision.bits(),
                as_of_height: Scalar::from(w.routing_parameters.as_of_height),
                parameter_set: field(&p.routing_parameter_set_id),
                tags: p.routing.tags.map(|tag| Scalar::from(u64::from(tag.value))),
            },
        },
    )))
}
pub(crate) fn reshape(
    p: &NoteReshapeProofPublic,
    w: &NoteReshapeProofPrivate,
) -> Result<c::catalogue::Witness> {
    p.validate_shape()?;
    w.validate_shape()?;
    ensure!(p.family_id == w.family_id, "reshape family mismatch");
    let owner = c::self_action::Witness {
        anchor: field(&p.anchor.into()),
        asset_anchor: field(&p.asset_anchor.0),
        compliance_anchor: field(&p.compliance_anchor.0),
        asset: field(&w.inputs[0].spent_note.asset_id().0),
        regulated: w.is_regulated,
        recent_floor: Scalar::from(p.recent_position_floor),
        balance_blinding: scalar(w.action_balance_blinding),
        routing_nonce: field(&w.routing_nonce),
        routing: single_routing(
            &w.routing_parameters,
            p.routing_tag,
            p.routing_parameter_set_id,
        ),
        auth: authorization(w.ak, w.nk)?,
        registry: registry(&w.asset_indexed_leaf, &w.asset_path, w.asset_position)?,
        sender: compliance(
            &w.sender_leaf,
            &w.sender_compliance_path,
            w.sender_compliance_position,
        )?,
    };
    let inputs = w
        .inputs
        .iter()
        .zip(&p.inputs)
        .map(|(w, p)| {
            Ok(c::reshape::MergeInput {
                spend: spend(
                    &w.spent_note,
                    &w.state_commitment_proof,
                    w.spend_auth_randomizer,
                    p.nullifier,
                    p.rk,
                    p.history_required,
                )?,
                padding: c::note::OptionalWitness {
                    is_dummy: w.is_dummy,
                    seed: field(&w.dummy_nullifier_seed),
                },
            })
        })
        .collect::<Result<Vec<_>>>()?;
    let outputs = w
        .outputs
        .iter()
        .map(|o| output(&o.created_note, w.sender_leaf.capk))
        .collect::<Result<Vec<_>>>()?;
    let notes = match p.family_id {
        NoteReshapeFamilyId::OneByEight => c::reshape::Notes::Split {
            input: inputs
                .into_iter()
                .next()
                .expect("validated input shape")
                .spend,
            outputs: outputs
                .try_into()
                .map_err(|_| anyhow::anyhow!("reshape output shape"))?,
        },
        NoteReshapeFamilyId::EightByOne => c::reshape::Notes::Merge {
            inputs: inputs
                .try_into()
                .map_err(|_| anyhow::anyhow!("reshape input shape"))?,
            output: outputs.into_iter().next().expect("validated output shape"),
        },
        _ => anyhow::bail!("unsupported reshape family"),
    };
    Ok(c::catalogue::Witness::Reshape(Box::new(
        c::reshape::Witness { owner, notes },
    )))
}
pub(crate) fn withdrawal(
    p: &ShieldedWithdrawalProofPublic,
    w: &ShieldedWithdrawalProofPrivate,
) -> Result<c::catalogue::Witness> {
    p.validate_shape()?;
    w.validate_shape()?;
    let s = crate::public_input_hash::withdrawal_statement(p)?;
    let e = s.encryption;
    let owner = c::self_action::Witness {
        anchor: field(&p.anchor.into()),
        asset_anchor: field(&p.asset_anchor.0),
        compliance_anchor: field(&p.compliance_anchor.0),
        asset: field(&p.outbound_asset_id),
        regulated: w.is_regulated,
        recent_floor: Scalar::from(p.recent_position_floor),
        balance_blinding: scalar(w.action_balance_blinding),
        routing_nonce: field(&w.routing_nonce),
        routing: single_routing(
            &w.routing_parameters,
            p.routing_tag,
            p.routing_parameter_set_id,
        ),
        auth: authorization(w.ak, w.nk)?,
        registry: registry(&w.asset_indexed_leaf, &w.asset_path, w.asset_position)?,
        sender: compliance(
            &w.sender_leaf,
            &w.sender_compliance_path,
            w.sender_compliance_position,
        )?,
    };
    let required = &w.required_input;
    let optional = &w.optional_input.spend;
    Ok(c::catalogue::Witness::Withdrawal(Box::new(
        c::withdrawal::Witness {
            owner,
            timestamp: field(&p.target_timestamp),
            amount: field(&p.outbound_amount),
            effect_hash: p.withdrawal_effect_hash_limbs.each_ref().map(field),
            spends: [
                spend(
                    &required.spent_note,
                    &required.state_commitment_proof,
                    required.spend_auth_randomizer,
                    p.inputs[0].nullifier,
                    p.inputs[0].rk,
                    p.inputs[0].history_required,
                )?,
                spend(
                    &optional.spent_note,
                    &optional.state_commitment_proof,
                    optional.spend_auth_randomizer,
                    p.inputs[1].nullifier,
                    p.inputs[1].rk,
                    p.inputs[1].history_required,
                )?,
            ],
            optional: c::note::OptionalWitness {
                is_dummy: w.optional_input.is_dummy,
                seed: field(&w.optional_input.dummy_nullifier_seed),
            },
            change: output(&w.change_output.created_note, w.sender_leaf.capk)?,
            volume: volume(
                &p.volume_accumulator,
                &w.volume_accumulator,
                p.target_timestamp,
                TransferProofContext::Ordinary,
            )?,
            volume_seed: field(&w.volume_accumulator_seed),
            encryption: c::withdrawal::EncryptionWitness {
                ciphertext: c::withdrawal::Ciphertext {
                    epk: Point {
                        x: field(&e.epk.x),
                        y: field(&e.epk.y),
                    },
                    c2: field(&e.c2),
                    confirmation: field(&e.confirmation),
                    address: e.address.each_ref().map(field),
                },
                randomizer: scalar(w.withdrawal_randomizer),
                seed: field(&w.withdrawal_seed),
            },
        },
    )))
}
pub(crate) fn seizure(
    p: &NoteSeizureProofPublic,
    w: &NoteSeizureProofPrivate,
) -> Result<c::catalogue::Witness> {
    w.validate_against(p)?;
    let s = crate::public_input_hash::seizure_statement(p)?;
    let statement = c::seizure::Statement {
        anchor: field(&s.anchor),
        commitment: field(&s.commitment),
        nullifier: field(&s.nullifier),
        history_required: field(&s.history_required),
        recent_floor: field(&s.recent_floor),
        address: address(&p.authorization.address),
        asset: field(&s.asset),
        amount: field(&s.amount),
        recovery: capsule(&p.recovery_capsule),
        seed: field(&s.seed),
        rnk_commitment: field(&s.rnk_commitment),
        authorization: field(&s.authorization),
    };
    Ok(c::catalogue::Witness::Seizure(Box::new(
        c::seizure::Witness {
            statement,
            blinding: field(&w.note_blinding),
            rnk: field(&w.rnk),
            path: state_path(&w.state_commitment_proof),
        },
    )))
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::test_proof_helpers::proof_test_helpers as fixtures;

    fn check(w: c::catalogue::Witness, statement: Fq) {
        let p = c::hash::Parameters::load().unwrap();
        let g = c::map::Generators::derive(&p);
        assert_eq!(
            w.digest(&p, &g).unwrap(),
            field(&statement),
            "runtime and circuit statements differ for {:?}",
            w.family()
        );
        assert!(
            c::catalogue::evaluate(&w).unwrap().is_satisfied(),
            "runtime witness fails {:?}",
            w.family()
        );
    }

    #[test]
    fn runtime_transfer_witnesses_preserve_compliance_and_padding() {
        let mut rng = rand_core::OsRng;
        for regulated in [false, true] {
            for send_to_self in [false, true] {
                let (p, w) = fixtures::build_transfer_hidden_arity_roundtrip_inputs_with_rng(
                    &mut rng,
                    regulated,
                    send_to_self,
                );
                check(transfer(&p, &w).unwrap(), p.statement_hash().unwrap());
            }
            let (p, w) = fixtures::build_transfer_roundtrip_inputs_with_rng(&mut rng, regulated);
            check(transfer(&p, &w).unwrap(), p.statement_hash().unwrap());
        }
        let (p, w) =
            fixtures::build_transfer_flagged_hidden_arity_roundtrip_inputs_with_rng(&mut rng);
        check(transfer(&p, &w).unwrap(), p.statement_hash().unwrap());
        let (p, w) = fixtures::build_transfer_accumulating_hidden_arity_roundtrip_inputs_with_rng(
            &mut rng, 100,
        );
        check(transfer(&p, &w).unwrap(), p.statement_hash().unwrap());
        let (p, w) =
            fixtures::build_transfer_continuing_accumulator_roundtrip_inputs_with_rng(&mut rng);
        check(transfer(&p, &w).unwrap(), p.statement_hash().unwrap());
    }

    #[test]
    fn runtime_reshape_witnesses_preserve_both_arities() {
        for family in NoteReshapeFamilyId::ALL {
            let (p, w) = fixtures::build_note_reshape_roundtrip_inputs(family);
            check(reshape(&p, &w).unwrap(), p.statement_hash().unwrap());
        }
    }

    #[test]
    fn runtime_withdrawal_witnesses_preserve_volume_and_full_effect_hash() {
        use fixtures::WithdrawalAccumulatorTestMode as Mode;
        let mut rng = rand_core::OsRng;
        for regulated in [false, true] {
            for spends in [1, 2] {
                for mode in [
                    Mode::Padding,
                    Mode::Origin,
                    Mode::Continuation { prior_volume: 5 },
                ] {
                    if !regulated && !matches!(mode, Mode::Padding) {
                        continue;
                    }
                    let (mut p, w) =
                        fixtures::build_shielded_withdrawal_roundtrip_inputs_with_rng_and_mode(
                            &mut rng,
                            ShieldedWithdrawalFamilyId::Canonical,
                            regulated,
                            spends,
                            mode,
                        );
                    p.withdrawal_effect_hash_limbs =
                        [Fq::from(shieldd_sdk_num::Amount::from(u128::MAX)); 4];
                    check(withdrawal(&p, &w).unwrap(), p.statement_hash().unwrap());
                }
            }
        }
    }
}
