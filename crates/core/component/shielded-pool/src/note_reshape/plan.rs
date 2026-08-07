use anyhow::{anyhow, ensure, Context, Error};
use decaf377::{Fq, Fr};
use decaf377_rdsa::{SigningKey, SpendAuth, VerificationKey};
use serde::{Deserialize, Serialize};
use shieldd_sdk_asset::Balance;
use shieldd_sdk_keys::symmetric::PayloadKey;
use shieldd_sdk_keys::FullViewingKey;
use shieldd_sdk_proto::{core::component::shielded_pool::v1 as pb, DomainType};
use shieldd_sdk_tct as tct;
use shieldd_sdk_txhash::EffectingData;
use std::convert::{TryFrom, TryInto};

use crate::discovery::Precision;
use crate::note_reshape_padding::{dummy_state_commitment_proof, pad_to_len, HiddenArityPadder};
use crate::{ShieldedInputPlan, ShieldedOutputPlan};
#[cfg(any(unix, windows))]
use decaf377_rdsa::Signature;

#[cfg(any(unix, windows))]
use super::{NoteReshape, NoteReshapeProof};
use super::{
    NoteReshapeBody, NoteReshapeFamilyId, NoteReshapeInputBody, NoteReshapeInputPrivate,
    NoteReshapeInputPublic, NoteReshapeOutputBody, NoteReshapeOutputPrivate,
    NoteReshapeOutputPublic, NoteReshapeProofPrivate, NoteReshapeProofPublic,
};

#[derive(Clone, Debug, Deserialize, Serialize)]
#[serde(try_from = "pb::NoteReshapePlan", into = "pb::NoteReshapePlan")]
pub struct NoteReshapePlan {
    pub body: NoteReshapeBody,
    pub value_blinding: Fr,
    pub balance: Balance,
    pub spends: Vec<ShieldedInputPlan>,
    pub outputs: Vec<ShieldedOutputPlan>,
    pub discovery_precision: Precision,
}

impl NoteReshapePlan {
    pub fn new_auto(
        spends: Vec<ShieldedInputPlan>,
        outputs: Vec<ShieldedOutputPlan>,
        value_blinding: Fr,
    ) -> anyhow::Result<Self> {
        // Wallet policy is intentionally directional: 2x1 is the exact
        // two-input path; 4x1 and 8x1 hide many-to-one input arity with
        // synthetic private inputs; 1x8 hides output arity with ordinary
        // zero-value notes. Keep family selection here, at the wallet edge.
        let family_id = NoteReshapeFamilyId::smallest_covering(spends.len(), outputs.len())
            .ok_or_else(|| {
                anyhow!(
                    "no note reshape family can cover {} real inputs and {} real outputs",
                    spends.len(),
                    outputs.len()
                )
            })?;
        Self::new(family_id, spends, outputs, value_blinding)
    }

    pub fn new(
        family_id: NoteReshapeFamilyId,
        spends: Vec<ShieldedInputPlan>,
        outputs: Vec<ShieldedOutputPlan>,
        value_blinding: Fr,
    ) -> anyhow::Result<Self> {
        // `spends` and `outputs` are the wallet's real items. Padding is
        // derived below and is never accepted as an externally supplied
        // public count or action flag.
        ensure!(
            !spends.is_empty(),
            "note_reshape requires at least one spend"
        );
        ensure!(
            !outputs.is_empty(),
            "note_reshape requires at least one output"
        );
        family_id.validate_real_counts(spends.len(), outputs.len())?;

        let first_spend = spends
            .first()
            .ok_or_else(|| anyhow!("note_reshape requires at least one spend"))?;
        let shared_address = first_spend.note.address();
        let shared_asset_id = first_spend.note.asset_id();
        ensure!(
            spends
                .iter()
                .all(|spend| spend.note.address() == shared_address),
            "note_reshape spends must all use the same address",
        );
        ensure!(
            outputs
                .iter()
                .all(|output| output.dest_address == shared_address),
            "note_reshape outputs must all use the same address as spends",
        );
        ensure!(
            spends
                .iter()
                .all(|spend| spend.note.asset_id() == shared_asset_id)
                && outputs
                    .iter()
                    .all(|output| output.value.asset_id == shared_asset_id),
            "note_reshape requires all spends and outputs to use the same asset",
        );

        let balance = spends.iter().fold(Balance::default(), |mut acc, spend| {
            acc += spend.balance();
            acc
        }) + outputs.iter().fold(Balance::default(), |mut acc, output| {
            acc += output.balance();
            acc
        });

        let plan = Self {
            body: Self::placeholder_body(
                &spends,
                &outputs,
                family_id,
                value_blinding,
                balance.commit(value_blinding),
                Precision::default(),
            ),
            value_blinding,
            balance,
            spends,
            outputs,
            discovery_precision: Precision::default(),
        };
        plan.validate_invariants()?;
        Ok(plan)
    }

    fn placeholder_body(
        spends: &[ShieldedInputPlan],
        outputs: &[ShieldedOutputPlan],
        family_id: NoteReshapeFamilyId,
        value_blinding: Fr,
        balance_commitment: shieldd_sdk_asset::balance::Commitment,
        discovery_precision: Precision,
    ) -> NoteReshapeBody {
        let padder = Self::padder_for(spends, outputs, value_blinding);
        let mut inputs = spends
            .iter()
            .map(|_| NoteReshapeInputBody {
                nullifier: shieldd_sdk_sct::Nullifier(Fq::from(0u64)),
                rk: VerificationKey::from(SigningKey::<SpendAuth>::from(Fr::from(0u64))),
                encrypted_backref: crate::EncryptedBackref::dummy(),
            })
            .collect::<Vec<_>>();
        pad_to_len(&mut inputs, family_id.input_count(), |slot| {
            NoteReshapeInputBody {
                nullifier: padder.synthetic_dummy_nullifier(slot),
                rk: padder.synthetic_dummy_verification_key(slot),
                encrypted_backref: crate::EncryptedBackref::dummy(),
            }
        });
        let mut output_bodies = outputs
            .iter()
            .map(|output| NoteReshapeOutputBody {
                note_payload: output.output_note().payload(discovery_precision),
                wrapped_memo_key: shieldd_sdk_keys::symmetric::WrappedMemoKey([0u8; 48]),
                ovk_wrapped_key: shieldd_sdk_keys::symmetric::OvkWrappedKey([0u8; 48]),
            })
            .collect::<Vec<_>>();
        pad_to_len(&mut output_bodies, family_id.output_count(), |slot| {
            NoteReshapeOutputBody {
                note_payload: padder
                    .synthetic_dummy_output_note(slot)
                    .payload(discovery_precision),
                wrapped_memo_key: shieldd_sdk_keys::symmetric::WrappedMemoKey([0u8; 48]),
                ovk_wrapped_key: shieldd_sdk_keys::symmetric::OvkWrappedKey([0u8; 48]),
            }
        });

        NoteReshapeBody {
            family_id,
            anchor: tct::Tree::default().root(),
            balance_commitment,
            inputs,
            outputs: output_bodies,
        }
    }

    pub fn set_discovery_precision(&mut self, precision: Precision) {
        self.discovery_precision = precision;
        self.body = Self::placeholder_body(
            &self.spends,
            &self.outputs,
            self.body.family_id,
            self.value_blinding,
            self.balance.commit(self.value_blinding),
            precision,
        );
    }

    fn padder_for(
        spends: &[ShieldedInputPlan],
        _outputs: &[ShieldedOutputPlan],
        value_blinding: Fr,
    ) -> HiddenArityPadder {
        let first_spend = spends
            .first()
            .expect("note reshape must contain a real spend");
        HiddenArityPadder {
            value_blinding,
            first_spend_randomizer: first_spend.randomizer,
            sender_address: first_spend.note.address(),
            asset_id: first_spend.note.asset_id(),
            nullifier_domain_sep_label: b"shieldd.note_reshape.synthetic_dummy.nullifier",
            nullifier_seed_label: b"shieldd.note_reshape.synthetic_dummy.nullifier_seed",
            spend_auth_key_label: b"shieldd.note_reshape.synthetic_dummy.spend_auth_key",
            spend_auth_randomizer_label:
                b"shieldd.note_reshape.synthetic_dummy.spend_auth_randomizer",
            input_note_label: b"shieldd.note_reshape.synthetic_dummy.input_note",
            output_note_label: b"shieldd.note_reshape.synthetic_dummy.output_note",
        }
    }

    fn padder(&self) -> HiddenArityPadder {
        Self::padder_for(&self.spends, &self.outputs, self.value_blinding)
    }

    pub fn validate_shape(&self) -> anyhow::Result<()> {
        self.body.validate_shape()?;
        ensure!(
            self.spends.len() >= self.body.family_id.min_real_inputs(),
            "note reshape plan has too few real spends: {}",
            self.spends.len()
        );
        ensure!(
            self.spends.len() <= self.body.family_id.max_real_inputs(),
            "note reshape plan has too many real spends: {}",
            self.spends.len()
        );
        ensure!(
            self.outputs.len() >= self.body.family_id.min_real_outputs(),
            "note reshape plan has too few real outputs: {}",
            self.outputs.len()
        );
        ensure!(
            self.outputs.len() <= self.body.family_id.max_real_outputs(),
            "note reshape plan has too many real outputs: {}",
            self.outputs.len()
        );
        ensure!(
            self.body.inputs.len() == self.body.family_id.input_count(),
            "note reshape body expected {} inputs, got {}",
            self.body.family_id.input_count(),
            self.body.inputs.len()
        );
        ensure!(
            self.body.outputs.len() == self.body.family_id.output_count(),
            "note reshape body expected {} outputs, got {}",
            self.body.family_id.output_count(),
            self.body.outputs.len()
        );
        Ok(())
    }

    pub fn validate_invariants(&self) -> anyhow::Result<()> {
        self.validate_shape()?;
        let first_spend = self
            .spends
            .first()
            .ok_or_else(|| anyhow!("note_reshape requires at least one spend"))?;
        let shared_address = first_spend.note.address();
        let shared_asset_id = first_spend.note.asset_id();
        ensure!(
            self.spends
                .iter()
                .all(|spend| spend.note.address() == shared_address),
            "note_reshape spends must all use the same address",
        );
        ensure!(
            self.outputs
                .iter()
                .all(|output| output.dest_address == shared_address),
            "note_reshape outputs must all use the same address as spends",
        );
        ensure!(
            self.spends
                .iter()
                .all(|spend| spend.note.asset_id() == shared_asset_id)
                && self
                    .outputs
                    .iter()
                    .all(|output| output.value.asset_id == shared_asset_id),
            "note_reshape requires all spends and outputs to use the same asset",
        );
        ensure!(
            self.balance
                == self
                    .spends
                    .iter()
                    .fold(Balance::default(), |mut acc, spend| {
                        acc += spend.balance();
                        acc
                    })
                    + self
                        .outputs
                        .iter()
                        .fold(Balance::default(), |mut acc, output| {
                            acc += output.balance();
                            acc
                        }),
            "note_reshape net balance must equal spends plus outputs",
        );
        Ok(())
    }

    pub fn family_id(&self) -> NoteReshapeFamilyId {
        self.body.family_id
    }

    pub fn balance(&self) -> Balance {
        self.balance.clone()
    }

    pub fn note_reshape_public_private(
        &self,
        fvk: &FullViewingKey,
        state_commitment_proofs: &[tct::Proof],
        anchor: tct::Root,
    ) -> Result<(NoteReshapeProofPublic, NoteReshapeProofPrivate), crate::ProofError> {
        self.validate_invariants()
            .map_err(|e| crate::ProofError::InvalidPublicInput(e.to_string()))?;
        if state_commitment_proofs.len() != self.spends.len() {
            return Err(crate::ProofError::InvalidPublicInput(format!(
                "note_reshape expected {} state commitment proofs, got {}",
                self.spends.len(),
                state_commitment_proofs.len()
            )));
        }

        let padder = self.padder();
        let mut input_publics = self
            .spends
            .iter()
            .map(|spend| {
                Ok(NoteReshapeInputPublic {
                    nullifier: spend.nullifier(fvk),
                    rk: spend.rk(fvk),
                })
            })
            .collect::<Result<Vec<_>, crate::ProofError>>()?;
        pad_to_len(&mut input_publics, self.family_id().input_count(), |slot| {
            NoteReshapeInputPublic {
                nullifier: padder.synthetic_dummy_nullifier(slot),
                rk: padder.synthetic_dummy_verification_key(slot),
            }
        });

        let mut output_publics = self
            .outputs
            .iter()
            .map(|output| {
                Ok(NoteReshapeOutputPublic {
                    note_commitment: output.output_note().commit(),
                })
            })
            .collect::<Result<Vec<_>, crate::ProofError>>()?;
        pad_to_len(
            &mut output_publics,
            self.family_id().output_count(),
            |slot| NoteReshapeOutputPublic {
                note_commitment: padder.synthetic_dummy_output_note(slot).commit(),
            },
        );

        let mut input_privates = self
            .spends
            .iter()
            .zip(state_commitment_proofs.iter().cloned())
            .map(|(spend, state_commitment_proof)| {
                Ok(NoteReshapeInputPrivate {
                    state_commitment_proof,
                    spent_note: spend.note.clone(),
                    spend_auth_randomizer: spend.randomizer,
                    is_dummy: false,
                    dummy_nullifier_seed: Fq::from(0u64),
                    dummy_spend_auth_key: Fr::from(0u64),
                })
            })
            .collect::<Result<Vec<_>, crate::ProofError>>()?;
        pad_to_len(
            &mut input_privates,
            self.family_id().input_count(),
            |slot| NoteReshapeInputPrivate {
                state_commitment_proof: dummy_state_commitment_proof(
                    padder.synthetic_dummy_input_note(slot).commit(),
                ),
                spent_note: padder.synthetic_dummy_input_note(slot),
                spend_auth_randomizer: padder.synthetic_dummy_spend_auth_randomizer(slot),
                is_dummy: true,
                dummy_nullifier_seed: padder.synthetic_dummy_nullifier_seed(slot),
                dummy_spend_auth_key: padder.synthetic_dummy_spend_auth_key(slot),
            },
        );

        let mut output_privates = self
            .outputs
            .iter()
            .map(|output| {
                Ok(NoteReshapeOutputPrivate {
                    created_note: output.output_note(),
                })
            })
            .collect::<Result<Vec<_>, crate::ProofError>>()?;
        pad_to_len(
            &mut output_privates,
            self.family_id().output_count(),
            |slot| NoteReshapeOutputPrivate {
                created_note: padder.synthetic_dummy_output_note(slot),
            },
        );

        Ok((
            NoteReshapeProofPublic {
                family_id: self.body.family_id,
                anchor,
                balance_commitment: self.balance.commit(self.value_blinding),
                inputs: input_publics,
                outputs: output_publics,
            },
            NoteReshapeProofPrivate {
                family_id: self.body.family_id,
                action_balance_blinding: self.value_blinding,
                ak: *fvk.spend_verification_key(),
                nk: *fvk.nullifier_key(),
                inputs: input_privates,
                outputs: output_privates,
            },
        ))
    }

    pub fn note_reshape_body(
        &self,
        fvk: &FullViewingKey,
        memo_key: &PayloadKey,
        anchor: tct::Root,
    ) -> anyhow::Result<NoteReshapeBody> {
        self.validate_invariants()?;
        let padder = self.padder();
        let mut inputs = self
            .spends
            .iter()
            .map(|spend| {
                let spend_body = spend.action_input_body(fvk);
                NoteReshapeInputBody {
                    nullifier: spend_body.nullifier,
                    rk: spend_body.rk,
                    encrypted_backref: spend_body.encrypted_backref,
                }
            })
            .collect::<Vec<_>>();
        pad_to_len(&mut inputs, self.family_id().input_count(), |slot| {
            NoteReshapeInputBody {
                nullifier: padder.synthetic_dummy_nullifier(slot),
                rk: padder.synthetic_dummy_verification_key(slot),
                encrypted_backref: crate::EncryptedBackref::dummy(),
            }
        });
        let mut outputs = self
            .outputs
            .iter()
            .map(|output| {
                let (note_payload, wrapped_memo_key, ovk_wrapped_key) =
                    output.action_output_parts(fvk.outgoing(), memo_key, self.discovery_precision);
                NoteReshapeOutputBody {
                    note_payload,
                    wrapped_memo_key,
                    ovk_wrapped_key,
                }
            })
            .collect::<Vec<_>>();
        pad_to_len(&mut outputs, self.family_id().output_count(), |slot| {
            NoteReshapeOutputBody {
                note_payload: padder
                    .synthetic_dummy_output_note(slot)
                    .payload(self.discovery_precision),
                wrapped_memo_key: shieldd_sdk_keys::symmetric::WrappedMemoKey([0u8; 48]),
                ovk_wrapped_key: shieldd_sdk_keys::symmetric::OvkWrappedKey([0u8; 48]),
            }
        });

        Ok(NoteReshapeBody {
            family_id: self.body.family_id,
            anchor,
            balance_commitment: self.balance.commit(self.value_blinding),
            inputs,
            outputs,
        })
    }

    #[cfg(any(unix, windows))]
    pub fn note_reshape(
        &self,
        fvk: &FullViewingKey,
        auth_sigs: Vec<Signature<SpendAuth>>,
        state_commitment_proofs: Vec<tct::Proof>,
        anchor: tct::Root,
        memo_key: &PayloadKey,
    ) -> Result<NoteReshape, crate::ProofError> {
        let body = self
            .note_reshape_body(fvk, memo_key, anchor)
            .map_err(|e| crate::ProofError::InvalidPublicInput(e.to_string()))?;
        if auth_sigs.len() != self.spends.len() {
            return Err(crate::ProofError::InvalidPublicInput(format!(
                "note_reshape expected {} auth sigs, got {}",
                self.spends.len(),
                auth_sigs.len()
            )));
        }
        let effect_hash = body.effect_hash();
        let mut auth_sigs = auth_sigs;
        pad_to_len(&mut auth_sigs, self.family_id().auth_sig_count(), |slot| {
            self.padder()
                .synthetic_dummy_auth_sig(slot, effect_hash.as_ref())
        });
        let (public, private) =
            self.note_reshape_public_private(fvk, &state_commitment_proofs, anchor)?;
        let proof = NoteReshapeProof::prove(public, private)?;

        Ok(NoteReshape {
            body,
            auth_sigs,
            proof,
        })
    }
}

impl DomainType for NoteReshapePlan {
    type Proto = pb::NoteReshapePlan;
}

impl From<NoteReshapePlan> for pb::NoteReshapePlan {
    fn from(msg: NoteReshapePlan) -> Self {
        Self {
            body: Some(msg.body.into()),
            value_blinding: msg.value_blinding.to_bytes_le().to_vec(),
            balance: Some(msg.balance.into()),
            spends: msg.spends.into_iter().map(Into::into).collect(),
            outputs: msg.outputs.into_iter().map(Into::into).collect(),
            discovery_precision_bits: msg.discovery_precision.into(),
        }
    }
}

impl TryFrom<pb::NoteReshapePlan> for NoteReshapePlan {
    type Error = Error;

    fn try_from(proto: pb::NoteReshapePlan) -> Result<Self, Self::Error> {
        let plan = Self {
            body: proto
                .body
                .ok_or_else(|| anyhow::anyhow!("missing note_reshape body"))?
                .try_into()?,
            value_blinding: Fr::from_bytes_checked(
                proto
                    .value_blinding
                    .as_slice()
                    .try_into()
                    .context("malformed value blinding")?,
            )
            .map_err(|_| anyhow::anyhow!("invalid value blinding"))?,
            balance: proto
                .balance
                .ok_or_else(|| anyhow::anyhow!("missing balance"))?
                .try_into()?,
            spends: proto
                .spends
                .into_iter()
                .map(TryInto::try_into)
                .collect::<Result<_, _>>()?,
            outputs: proto
                .outputs
                .into_iter()
                .map(TryInto::try_into)
                .collect::<Result<_, _>>()?,
            discovery_precision: proto.discovery_precision_bits.try_into()?,
        };
        plan.validate_invariants()?;
        Ok(plan)
    }
}

#[cfg(test)]
mod tests {
    use std::collections::HashSet;

    use super::*;

    #[test]
    fn note_reshape_family_specs_cover_expected_shapes() {
        assert_eq!(NoteReshapeFamilyId::TwoByOne.input_count(), 2);
        assert_eq!(NoteReshapeFamilyId::EightByOne.input_count(), 8);
        assert_eq!(
            NoteReshapeFamilyId::smallest_covering(2, 1),
            Some(NoteReshapeFamilyId::TwoByOne)
        );
        assert_eq!(
            NoteReshapeFamilyId::smallest_covering(3, 1),
            Some(NoteReshapeFamilyId::FourByOne)
        );
        assert_eq!(
            NoteReshapeFamilyId::smallest_covering(5, 1),
            Some(NoteReshapeFamilyId::EightByOne)
        );
        assert_eq!(
            NoteReshapeFamilyId::smallest_covering(1, 2),
            Some(NoteReshapeFamilyId::OneByEight)
        );
    }

    #[test]
    fn synthetic_input_slots_have_distinct_nullifiers() {
        for family_id in [
            NoteReshapeFamilyId::FourByOne,
            NoteReshapeFamilyId::EightByOne,
        ] {
            let (public, private) =
                crate::test_proof_helpers::proof_test_helpers::build_note_reshape_roundtrip_inputs(
                    family_id,
                );
            let all = public
                .inputs
                .iter()
                .map(|input| input.nullifier)
                .collect::<HashSet<_>>();
            assert_eq!(
                all.len(),
                public.inputs.len(),
                "{} produced duplicate input nullifiers",
                family_id.label()
            );

            let synthetic = public
                .inputs
                .iter()
                .zip(&private.inputs)
                .filter(|(_, input)| input.is_dummy)
                .map(|(input, _)| input.nullifier)
                .collect::<HashSet<_>>();
            assert_eq!(
                synthetic.len(),
                private.inputs.iter().filter(|input| input.is_dummy).count(),
                "{} produced duplicate synthetic nullifiers",
                family_id.label()
            );
        }
    }
}
