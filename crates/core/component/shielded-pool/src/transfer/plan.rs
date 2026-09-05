use anyhow::{anyhow, ensure, Error};
use decaf377::{Fq, Fr};
use decaf377_rdsa::{Signature, SpendAuth, VerificationKey};
use serde::{Deserialize, Serialize};
use shieldd_sdk_asset::{asset, balance, Balance};
use shieldd_sdk_compliance::{AssetPolicy, ComplianceLeaf};
use shieldd_sdk_keys::{
    keys::OutgoingViewingKey,
    symmetric::{OvkWrappedKey, PayloadKey, WrappedMemoKey},
    Address, FullViewingKey,
};
use shieldd_sdk_proto::{core::component::shielded_pool::v1 as pb, DomainType};
use shieldd_sdk_tct as tct;
use std::convert::{TryFrom, TryInto};

use crate::discovery::{self, Parameters};

use super::compliance::{
    build_transfer_compliance, change_output_transfer_compliance, is_change_output_index,
    is_receiver_output_index, receiver_output_transfer_compliance, CHANGE_OUTPUT_INDEX,
};
use crate::note_reshape_padding::dummy_spend_auth_sig;
use crate::note_reshape_padding::dummy_state_commitment_proof;
use crate::note_reshape_padding::{pad_to_len, HiddenArityPadder};
use crate::transfer::{
    Transfer, TransferChangeOutputPrivate, TransferOptionalSpendPrivate, TransferOutputPublic,
    TransferProof, TransferProofPrivate, TransferProofPublic, TransferReceiverOutputPrivate,
    TransferSpendPrivate, TransferSpendPublic,
};
use crate::transfer::{
    TransferBody, TransferInputBody, TransferOutputBody, PADDED_TRANSFER_INPUTS,
    PADDED_TRANSFER_OUTPUTS,
};
use crate::{Note, ShieldedInputPlan, ShieldedOutputPlan};
use crate::{TransferProofContext, VolumeAccumulatorPlan};

#[derive(Clone, Debug, Deserialize, Serialize)]
#[serde(try_from = "pb::TransferPlan", into = "pb::TransferPlan")]
pub struct TransferPlan {
    pub value_blinding: Fr,
    pub spends: Vec<ShieldedInputPlan>,
    pub outputs: Vec<ShieldedOutputPlan>,
    pub routing_parameters: Parameters,
    pub volume_accumulator: VolumeAccumulatorPlan,
    pub proof_context: TransferProofContext,
}

impl TransferPlan {
    pub fn new(
        spends: Vec<ShieldedInputPlan>,
        outputs: Vec<ShieldedOutputPlan>,
        value_blinding: Fr,
    ) -> anyhow::Result<Self> {
        let target_timestamp = spends
            .first()
            .map(|spend| spend.target_timestamp)
            .unwrap_or(0);
        let plan = Self {
            value_blinding,
            spends,
            outputs,
            routing_parameters: Parameters::default(),
            volume_accumulator: VolumeAccumulatorPlan::padding(target_timestamp),
            proof_context: TransferProofContext::Ordinary,
        };
        plan.validate()?;
        Ok(plan)
    }

    pub fn from_spend_output(
        spend: ShieldedInputPlan,
        output: ShieldedOutputPlan,
        value_blinding: Fr,
    ) -> anyhow::Result<Self> {
        Self::new(vec![spend], vec![output], value_blinding)
    }

    pub fn shape(&self) -> (usize, usize) {
        (self.spends.len(), self.outputs.len())
    }

    pub fn inputs(&self) -> &[ShieldedInputPlan] {
        &self.spends
    }

    pub fn outputs(&self) -> &[ShieldedOutputPlan] {
        &self.outputs
    }

    pub fn set_routing_parameters(&mut self, parameters: Parameters) {
        self.routing_parameters = parameters;
    }

    pub fn set_volume_accumulator(&mut self, plan: VolumeAccumulatorPlan) {
        self.volume_accumulator = plan;
    }

    pub fn set_fee_funding_context(&mut self) {
        self.proof_context = TransferProofContext::FeeFunding;
        self.volume_accumulator =
            VolumeAccumulatorPlan::padding(self.first_spend().target_timestamp);
    }

    pub fn accumulator_prior_commitment(&self) -> Option<tct::StateCommitment> {
        (self.proof_context == TransferProofContext::Ordinary
            && matches!(
                self.volume_accumulator,
                VolumeAccumulatorPlan::Continuation { .. }
            ))
        .then(|| self.volume_accumulator.prior_commitment())
    }

    fn effective_volume_accumulator(&self) -> VolumeAccumulatorPlan {
        if self.proof_context == TransferProofContext::Ordinary
            && !self.volume_accumulator.is_real()
        {
            VolumeAccumulatorPlan::padding(self.first_spend().target_timestamp)
        } else {
            self.volume_accumulator.clone()
        }
    }

    fn is_disclosed_to_issuer(&self) -> bool {
        self.proof_context == TransferProofContext::Ordinary
            && self.first_spend().is_regulated
            && self.outputs[0].dest_address != self.sender_address()
            && !self.volume_accumulator.is_real()
    }

    pub fn volume_accumulator_payload(
        &self,
        fvk: &FullViewingKey,
    ) -> crate::VolumeAccumulatorPayload {
        self.effective_volume_accumulator().selected_payload(
            fvk.nullifier_key(),
            fvk.outgoing(),
            Fq::from_le_bytes_mod_order(&self.spends[0].tx_blinding_nonce.to_bytes()),
            self.proof_context,
        )
    }

    #[cfg(feature = "poc-orbis")]
    pub fn poc_orbis_audit_bundle(
        &self,
    ) -> anyhow::Result<Option<shieldd_sdk_compliance::PocOrbisAuditBundle>> {
        self.validate()?;
        let result = build_transfer_compliance(
            &self.outputs,
            &sender_leaf(self.first_spend()),
            self.asset_policy()?,
            &self.first_spend().asset_indexed_leaf,
            self.first_spend().target_timestamp,
            self.first_spend().tx_blinding_nonce,
            self.is_disclosed_to_issuer(),
        )?;
        Ok(result.poc_orbis_audit_bundle)
    }

    pub fn spend_randomizers(&self) -> impl Iterator<Item = Fr> + '_ {
        self.spends.iter().map(|spend| spend.randomizer)
    }

    pub fn dest_addresses(&self) -> impl Iterator<Item = shieldd_sdk_keys::Address> + '_ {
        self.outputs
            .iter()
            .map(|output| output.dest_address.clone())
    }

    pub fn num_outputs(&self) -> usize {
        PADDED_TRANSFER_OUTPUTS
    }

    pub fn balance(&self) -> Balance {
        self.spends
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
                })
    }

    fn first_spend(&self) -> &ShieldedInputPlan {
        self.spends
            .first()
            .expect("transfer plan must contain at least one real spend")
    }

    fn sender_address(&self) -> Address {
        self.first_spend().note.address()
    }

    fn routing(&self) -> (crate::discovery::TransferRouting, bool) {
        let routing_nonce =
            Fq::from_le_bytes_mod_order(&self.first_spend().tx_blinding_nonce.to_bytes());
        discovery::transfer_routing(
            &self.sender_address(),
            &self.outputs[0].dest_address,
            self.first_spend().is_regulated,
            self.outputs.get(CHANGE_OUTPUT_INDEX).is_some(),
            &self.routing_parameters,
            routing_nonce,
        )
    }

    fn transfer_asset_id(&self) -> asset::Id {
        self.first_spend().note.asset_id()
    }

    fn padder(&self) -> HiddenArityPadder {
        HiddenArityPadder {
            value_blinding: self.value_blinding,
            first_spend_randomizer: self.first_spend().randomizer,
            sender_address: self.sender_address(),
            asset_id: self.transfer_asset_id(),
            capk: sender_leaf(self.first_spend()).capk,
            nullifier_domain_sep_label: b"shieldd.transfer.synthetic_dummy.nullifier",
            nullifier_seed_label: b"shieldd.transfer.synthetic_dummy.nullifier_seed",
            spend_auth_key_label: b"shieldd.transfer.synthetic_dummy.spend_auth_key",
            spend_auth_randomizer_label: b"shieldd.transfer.synthetic_dummy.spend_auth_randomizer",
            input_note_label: b"shieldd.transfer.synthetic_dummy.input_note",
            output_note_label: b"shieldd.transfer.synthetic_dummy.output_note",
        }
    }

    fn synthetic_dummy_nullifier_seed(&self, slot: usize) -> Fq {
        self.padder().synthetic_dummy_nullifier_seed(slot)
    }

    fn synthetic_dummy_spend_auth_randomizer(&self, slot: usize) -> Fr {
        self.padder().synthetic_dummy_spend_auth_randomizer(slot)
    }

    fn synthetic_dummy_nullifier(&self, slot: usize) -> shieldd_sdk_sct::Nullifier {
        self.padder().synthetic_dummy_nullifier(slot)
    }

    fn synthetic_dummy_verification_key(&self, slot: usize) -> VerificationKey<SpendAuth> {
        self.padder().synthetic_dummy_verification_key(slot)
    }

    pub fn synthetic_dummy_auth_sig(
        &self,
        slot: usize,
        effect_hash: &[u8],
    ) -> Signature<SpendAuth> {
        self.padder().synthetic_dummy_auth_sig(slot, effect_hash)
    }

    fn synthetic_dummy_input_note(&self, slot: usize) -> Note {
        self.padder().synthetic_dummy_input_note(slot)
    }

    fn synthetic_dummy_output_note(&self, slot: usize) -> Note {
        self.padder().synthetic_dummy_output_note(slot)
    }

    fn asset_policy(&self) -> anyhow::Result<Option<&AssetPolicy>> {
        let plan_policy = self
            .spends
            .first()
            .and_then(|spend| spend.asset_policy.as_ref());
        ensure!(
            !self.first_spend().is_regulated || plan_policy.is_some(),
            "regulated transfer missing asset policy"
        );
        Ok(plan_policy)
    }

    pub fn validate(&self) -> anyhow::Result<()> {
        ensure!(
            !self.spends.is_empty(),
            "transfer requires at least one spend"
        );
        ensure!(
            !self.outputs.is_empty(),
            "transfer requires at least one output"
        );
        ensure!(
            self.spends.len() <= PADDED_TRANSFER_INPUTS,
            "transfer supports at most {} spends, got {}",
            PADDED_TRANSFER_INPUTS,
            self.spends.len()
        );
        ensure!(
            self.outputs.len() <= PADDED_TRANSFER_OUTPUTS,
            "transfer supports at most {} outputs, got {}",
            PADDED_TRANSFER_OUTPUTS,
            self.outputs.len()
        );
        let first_spend = self
            .spends
            .first()
            .ok_or_else(|| anyhow!("transfer requires at least one spend"))?;
        let sender_address = first_spend.note.address();
        for spend in &self.spends {
            ensure!(
                spend.note.asset_id() == first_spend.note.asset_id(),
                "transfer spends must use the same asset",
            );
            ensure!(
                spend.asset_anchor == first_spend.asset_anchor,
                "transfer spend asset anchors must match",
            );
            ensure!(
                spend.compliance_anchor == first_spend.compliance_anchor,
                "transfer spend compliance anchors must match",
            );
            ensure!(
                spend.target_timestamp == first_spend.target_timestamp,
                "transfer spend timestamps must match",
            );
            ensure!(
                spend.tx_blinding_nonce == first_spend.tx_blinding_nonce,
                "transfer spend tx blinding nonce must match",
            );
            ensure!(
                spend.note.address() == sender_address,
                "transfer spends must use the same sender address",
            );
            ensure!(
                spend.compliance_position == first_spend.compliance_position
                    && spend.compliance_path == first_spend.compliance_path
                    && spend.compliance_leaf == first_spend.compliance_leaf,
                "transfer spends must use the same sender compliance witness",
            );
            ensure!(
                spend.asset_position == first_spend.asset_position
                    && spend.asset_path == first_spend.asset_path
                    && spend.asset_indexed_leaf == first_spend.asset_indexed_leaf,
                "transfer spends must use the same asset registry witness",
            );
            ensure!(
                spend.asset_policy == first_spend.asset_policy,
                "transfer spends must use the same asset policy",
            );
            ensure!(
                spend.is_regulated == first_spend.is_regulated,
                "transfer spend regulation flags must match",
            );
        }
        for output in &self.outputs {
            ensure!(
                output.value.asset_id == first_spend.note.asset_id(),
                "transfer outputs must use the same asset as spends",
            );
            ensure!(
                output.asset_anchor == first_spend.asset_anchor,
                "transfer output asset anchors must match spends",
            );
            ensure!(
                output.compliance_anchor == first_spend.compliance_anchor,
                "transfer output compliance anchors must match spends",
            );
            ensure!(
                output.target_timestamp == first_spend.target_timestamp,
                "transfer output timestamps must match spends",
            );
            ensure!(
                output.tx_blinding_nonce == first_spend.tx_blinding_nonce,
                "transfer output tx blinding nonce must match spends",
            );
            ensure!(
                output.is_regulated == first_spend.is_regulated,
                "transfer output regulation flags must match spends",
            );
            ensure!(
                output.asset_position == first_spend.asset_position
                    && output.asset_path == first_spend.asset_path
                    && output.asset_indexed_leaf == first_spend.asset_indexed_leaf,
                "transfer outputs must use the same asset registry witness as spends",
            );
            ensure!(
                output.asset_policy == first_spend.asset_policy,
                "transfer outputs must use the same asset policy as spends",
            );
        }
        if let Some(change_output) = self.outputs.get(CHANGE_OUTPUT_INDEX) {
            ensure!(
                change_output.dest_address == sender_address,
                "transfer change output must be sender-owned",
            );
            ensure!(
                change_output.compliance_position == first_spend.compliance_position
                    && change_output.compliance_path == first_spend.compliance_path
                    && change_output.compliance_leaf == first_spend.compliance_leaf,
                "transfer change output must use the sender compliance witness",
            );
        }
        if self.proof_context == TransferProofContext::FeeFunding {
            ensure!(
                self.outputs[0].dest_address == sender_address,
                "fee funding receiver must be the sender"
            );
            ensure!(
                !self.volume_accumulator.is_real(),
                "fee funding must not carry a real volume accumulator"
            );
        }
        Ok(())
    }

    pub fn transfer_body(
        &self,
        fvk: &FullViewingKey,
        memo_key: &PayloadKey,
        anchor: tct::Root,
        recent_position_floor: u64,
    ) -> anyhow::Result<TransferBody> {
        self.validate()?;
        let sender_leaf = sender_leaf(
            self.spends
                .first()
                .ok_or_else(|| anyhow!("transfer requires at least one spend"))?,
        );
        let asset_policy = self.asset_policy()?;
        let (routing, _) = self.routing();
        let compliance = build_transfer_compliance(
            &self.outputs,
            &sender_leaf,
            asset_policy,
            &self.spends[0].asset_indexed_leaf,
            self.spends[0].target_timestamp,
            self.spends[0].tx_blinding_nonce,
            self.is_disclosed_to_issuer(),
        )?;

        let inputs = self
            .spends
            .iter()
            .map(|spend| spend.action_input_body(fvk, recent_position_floor))
            .collect::<anyhow::Result<Vec<_>>>()?;
        let mut inputs = inputs;
        pad_to_len(&mut inputs, PADDED_TRANSFER_INPUTS, |slot| {
            let nullifier = self.synthetic_dummy_nullifier(slot);
            let dummy_note = self.synthetic_dummy_input_note(slot);
            TransferInputBody {
                nullifier,
                rk: self.synthetic_dummy_verification_key(slot),
                encrypted_backref: crate::Backref::new(dummy_note.commit())
                    .encrypt(&fvk.backref_key(), &nullifier),
                compliance_ciphertext: Vec::new(),
                history_required: false,
            }
        });

        let action_balance_commitment = self.balance().commit(self.value_blinding);
        let outputs = self
            .outputs
            .iter()
            .enumerate()
            .map(|(index, output)| {
                let (note, recovery_capsule) = output.output_note_and_capsule();
                let (note_payload, wrapped_memo_key, ovk_wrapped_key) = transfer_output_parts(
                    note,
                    recovery_capsule,
                    fvk.outgoing(),
                    memo_key,
                    action_balance_commitment,
                );
                let compliance_bytes = if is_receiver_output_index(index) {
                    receiver_output_transfer_compliance(
                        &compliance.ciphertext,
                        &compliance.metadata,
                    )?
                } else if is_change_output_index(index) {
                    change_output_transfer_compliance()
                } else {
                    change_output_transfer_compliance()
                };
                Ok(TransferOutputBody {
                    note_payload,
                    wrapped_memo_key,
                    ovk_wrapped_key,
                    compliance_ciphertext: compliance_bytes.compliance_ciphertext,
                    compliance_metadata: compliance_bytes.compliance_metadata,
                })
            })
            .collect::<anyhow::Result<Vec<_>>>()?;
        let mut outputs = outputs;
        pad_to_len(&mut outputs, PADDED_TRANSFER_OUTPUTS, |slot| {
            let (dummy_note, recovery_capsule) =
                self.padder().synthetic_dummy_output_note_and_capsule(slot);
            let (note_payload, wrapped_memo_key, ovk_wrapped_key) = transfer_output_parts(
                dummy_note,
                recovery_capsule,
                fvk.outgoing(),
                memo_key,
                action_balance_commitment,
            );
            TransferOutputBody {
                note_payload,
                wrapped_memo_key,
                ovk_wrapped_key,
                compliance_ciphertext: Vec::new(),
                compliance_metadata: Vec::new(),
            }
        });

        Ok(TransferBody {
            anchor,
            balance_commitment: action_balance_commitment,
            inputs,
            outputs,
            target_timestamp: self.spends[0].target_timestamp,
            compliance_anchor: self.spends[0].compliance_anchor,
            asset_anchor: self.spends[0].asset_anchor,
            routing,
            routing_parameter_set_id: self.routing_parameters.id(),
            volume_accumulator: self.volume_accumulator_payload(fvk),
            proof_context: self.proof_context,
        })
    }

    pub fn transfer_public_private(
        &self,
        fvk: &FullViewingKey,
        state_commitment_proofs: &[tct::Proof],
        anchor: tct::Root,
        recent_position_floor: u64,
    ) -> Result<(TransferProofPublic, TransferProofPrivate), crate::ProofError> {
        self.validate()
            .map_err(|e| crate::ProofError::InvalidPublicInput(e.to_string()))?;
        let needs_accumulator_proof = self.proof_context == TransferProofContext::Ordinary
            && matches!(
                self.volume_accumulator,
                VolumeAccumulatorPlan::Continuation { .. }
            );
        let expected_proofs = self.spends.len() + usize::from(needs_accumulator_proof);
        if state_commitment_proofs.len() != expected_proofs {
            return Err(crate::ProofError::InvalidPublicInput(format!(
                "transfer expected {} state commitment proofs, got {}",
                expected_proofs,
                state_commitment_proofs.len()
            )));
        }
        let sender_leaf = sender_leaf(&self.spends[0]);
        if self.spends[0].is_regulated
            && shieldd_sdk_compliance::compliance_nullifier_key_commitment(
                self.spends[0].compliance_nullifier_key(fvk),
            ) != sender_leaf.rnk_commitment
        {
            return Err(crate::ProofError::InvalidPrivateInput(
                "wallet compliance nullifier key does not match the registered sender leaf"
                    .to_owned(),
            ));
        }
        let asset_policy = self
            .asset_policy()
            .map_err(|e| crate::ProofError::InvalidPublicInput(e.to_string()))?;
        let (routing, _) = self.routing();
        let compliance = build_transfer_compliance(
            &self.outputs,
            &sender_leaf,
            asset_policy,
            &self.spends[0].asset_indexed_leaf,
            self.spends[0].target_timestamp,
            self.spends[0].tx_blinding_nonce,
            self.is_disclosed_to_issuer(),
        )
        .map_err(|e| crate::ProofError::InvalidPublicInput(e.to_string()))?;

        let input_publics = self
            .spends
            .iter()
            .map(|spend| {
                Ok(TransferSpendPublic {
                    nullifier: spend.nullifier(fvk),
                    rk: spend.rk(fvk),
                    history_required: shieldd_sdk_sct::nullifier_generation::is_old(
                        u64::from(spend.position),
                        recent_position_floor,
                    )
                    .map_err(|error| crate::ProofError::InvalidPublicInput(error.to_string()))?,
                })
            })
            .collect::<Result<Vec<_>, crate::ProofError>>()?;
        let mut input_publics = input_publics;
        pad_to_len(&mut input_publics, PADDED_TRANSFER_INPUTS, |slot| {
            TransferSpendPublic {
                nullifier: self.synthetic_dummy_nullifier(slot),
                rk: self.synthetic_dummy_verification_key(slot),
                history_required: false,
            }
        });

        let output_publics = self
            .outputs
            .iter()
            .map(|output| {
                let note = output.output_note();
                Ok(TransferOutputPublic {
                    note_commitment: note.commit(),
                    recovery_commitment: note.recovery_commitment(),
                })
            })
            .collect::<Result<Vec<_>, crate::ProofError>>()?;
        let mut output_publics = output_publics;
        pad_to_len(&mut output_publics, PADDED_TRANSFER_OUTPUTS, |slot| {
            let dummy_note = self.synthetic_dummy_output_note(slot);
            TransferOutputPublic {
                note_commitment: dummy_note.commit(),
                recovery_commitment: dummy_note.recovery_commitment(),
            }
        });

        let required_input = TransferSpendPrivate {
            state_commitment_proof: state_commitment_proofs[0].clone(),
            spent_note: self.spends[0].note.clone(),
            spend_auth_randomizer: self.spends[0].randomizer,
        };
        let optional_input = if self.spends.len() == PADDED_TRANSFER_INPUTS {
            TransferOptionalSpendPrivate {
                spend: TransferSpendPrivate {
                    state_commitment_proof: state_commitment_proofs[1].clone(),
                    spent_note: self.spends[1].note.clone(),
                    spend_auth_randomizer: self.spends[1].randomizer,
                },
                is_dummy: false,
                dummy_nullifier_seed: Fq::from(0u64),
            }
        } else {
            let slot = 1;
            let dummy_note = self.synthetic_dummy_input_note(slot);
            let dummy_proof = dummy_state_commitment_proof(dummy_note.commit());
            TransferOptionalSpendPrivate {
                spend: TransferSpendPrivate {
                    state_commitment_proof: dummy_proof,
                    spent_note: dummy_note,
                    spend_auth_randomizer: self.synthetic_dummy_spend_auth_randomizer(slot),
                },
                is_dummy: true,
                dummy_nullifier_seed: self.synthetic_dummy_nullifier_seed(slot),
            }
        };

        let receiver = self
            .outputs
            .first()
            .expect("validated transfer plan has a receiver output");
        let receiver_created_note = receiver.output_note();
        let receiver_output = TransferReceiverOutputPrivate {
            recipient_compliance_path: receiver.compliance_path.clone(),
            recipient_compliance_position: receiver.compliance_position,
            recipient_leaf: recipient_leaf(receiver, &receiver_created_note),
            created_note: receiver_created_note,
        };
        let change_output = TransferChangeOutputPrivate {
            created_note: self
                .outputs
                .get(CHANGE_OUTPUT_INDEX)
                .map(ShieldedOutputPlan::output_note)
                .unwrap_or_else(|| self.synthetic_dummy_output_note(CHANGE_OUTPUT_INDEX)),
        };
        let volume_plan = self.effective_volume_accumulator();
        let volume_payload = volume_plan.selected_payload(
            fvk.nullifier_key(),
            fvk.outgoing(),
            Fq::from_le_bytes_mod_order(&self.spends[0].tx_blinding_nonce.to_bytes()),
            self.proof_context,
        );
        let volume_prior_proof = if needs_accumulator_proof {
            state_commitment_proofs[self.spends.len()].clone()
        } else {
            dummy_state_commitment_proof(volume_plan.prior_commitment())
        };

        Ok((
            TransferProofPublic {
                anchor,
                balance_commitment: self.balance().commit(self.value_blinding),
                asset_anchor: self.spends[0].asset_anchor,
                compliance_anchor: self.spends[0].compliance_anchor,
                target_timestamp: Fq::from(self.spends[0].target_timestamp),
                inputs: input_publics,
                outputs: output_publics,
                compliance: compliance.public,
                routing,
                routing_parameter_set_id: self.routing_parameters.id(),
                recent_position_floor,
                volume_accumulator: crate::VolumeAccumulatorPublic {
                    nullifier: volume_payload.nullifier,
                    commitment: volume_payload.commitment,
                    day_start: volume_payload.day_start,
                },
                proof_context: self.proof_context,
            },
            TransferProofPrivate {
                action_balance_blinding: self.value_blinding,
                ak: *fvk.spend_verification_key(),
                nk: *fvk.nullifier_key(),
                asset_path: self.spends[0].asset_path.clone(),
                asset_position: self.spends[0].asset_position,
                asset_indexed_leaf: self.spends[0].asset_indexed_leaf.clone(),
                is_regulated: self.spends[0].is_regulated,
                routing_parameters: self.routing_parameters.clone(),
                sender_compliance_path: self.spends[0].compliance_path.clone(),
                sender_compliance_position: self.spends[0].compliance_position,
                sender_leaf,
                compliance: compliance.private,
                required_input,
                optional_input,
                receiver_output,
                change_output,
                volume_accumulator: crate::VolumeAccumulatorPrivate {
                    plan: volume_plan,
                    prior_proof: volume_prior_proof,
                },
            },
        ))
    }

    #[cfg(any(unix, windows))]
    pub fn build_unauth_transfer(
        &self,
        fvk: &FullViewingKey,
        auth_sigs: Vec<Signature<decaf377_rdsa::SpendAuth>>,
        state_commitment_proofs: Vec<tct::Proof>,
        anchor: tct::Root,
        memo_key: &PayloadKey,
        recent_position_floor: u64,
    ) -> Result<Transfer, crate::ProofError> {
        let body = self
            .transfer_body(fvk, memo_key, anchor, recent_position_floor)
            .map_err(|e| crate::ProofError::InvalidPublicInput(e.to_string()))?;
        if auth_sigs.len() != self.spends.len() {
            return Err(crate::ProofError::InvalidPublicInput(format!(
                "transfer expected {} auth sigs, got {}",
                self.spends.len(),
                auth_sigs.len()
            )));
        }
        let (public, private) = self.transfer_public_private(
            fvk,
            &state_commitment_proofs,
            anchor,
            recent_position_floor,
        )?;
        let proof = TransferProof::prove(public, private)?;
        let mut auth_sigs = auth_sigs;
        while auth_sigs.len() < PADDED_TRANSFER_INPUTS {
            auth_sigs.push(dummy_spend_auth_sig());
        }

        Ok(Transfer {
            body,
            auth_sigs,
            proof,
        })
    }

    pub fn transfer_witness_payload(
        &self,
        fvk: &FullViewingKey,
        state_commitment_proofs: Vec<tct::Proof>,
        anchor: tct::Root,
        recent_position_floor: u64,
    ) -> Result<Vec<u8>, crate::ProofError> {
        let (public, private) = self.transfer_public_private(
            fvk,
            &state_commitment_proofs,
            anchor,
            recent_position_floor,
        )?;
        crate::gnark::encode_transfer_witness(&public, &private)
            .map_err(|e| crate::ProofError::InvalidPublicInput(e.to_string()))
    }

    pub fn build_unauth_transfer_with_proof(
        &self,
        fvk: &FullViewingKey,
        auth_sigs: Vec<Signature<decaf377_rdsa::SpendAuth>>,
        anchor: tct::Root,
        memo_key: &PayloadKey,
        proof: TransferProof,
        recent_position_floor: u64,
    ) -> Result<Transfer, crate::ProofError> {
        let body = self
            .transfer_body(fvk, memo_key, anchor, recent_position_floor)
            .map_err(|e| crate::ProofError::InvalidPublicInput(e.to_string()))?;
        if auth_sigs.len() != self.spends.len() {
            return Err(crate::ProofError::InvalidPublicInput(format!(
                "transfer expected {} auth sigs, got {}",
                self.spends.len(),
                auth_sigs.len()
            )));
        }
        let mut auth_sigs = auth_sigs;
        while auth_sigs.len() < PADDED_TRANSFER_INPUTS {
            auth_sigs.push(dummy_spend_auth_sig());
        }

        Ok(Transfer {
            body,
            auth_sigs,
            proof,
        })
    }
}

impl DomainType for TransferPlan {
    type Proto = pb::TransferPlan;
}

impl From<TransferPlan> for pb::TransferPlan {
    fn from(msg: TransferPlan) -> Self {
        Self {
            value_blinding: msg.value_blinding.to_bytes().to_vec(),
            spends: msg.spends.into_iter().map(Into::into).collect(),
            outputs: msg.outputs.into_iter().map(Into::into).collect(),
            routing_parameters: Some(msg.routing_parameters.into()),
            volume_accumulator: Some(msg.volume_accumulator.into()),
            proof_context: msg.proof_context.into(),
        }
    }
}

impl TryFrom<pb::TransferPlan> for TransferPlan {
    type Error = Error;

    fn try_from(proto: pb::TransferPlan) -> Result<Self, Self::Error> {
        let value_blinding_bytes: [u8; 32] = proto
            .value_blinding
            .try_into()
            .map_err(|_| anyhow!("malformed value blinding"))?;

        let plan = Self {
            value_blinding: Fr::from_bytes_checked(&value_blinding_bytes)
                .map_err(|_| anyhow!("malformed canonical value blinding"))?,
            spends: proto
                .spends
                .into_iter()
                .map(TryInto::try_into)
                .collect::<Result<Vec<_>, _>>()?,
            outputs: proto
                .outputs
                .into_iter()
                .map(TryInto::try_into)
                .collect::<Result<Vec<_>, _>>()?,
            routing_parameters: proto
                .routing_parameters
                .ok_or_else(|| anyhow!("missing routing parameters"))?
                .try_into()?,
            volume_accumulator: proto
                .volume_accumulator
                .ok_or_else(|| anyhow!("missing volume accumulator plan"))?
                .try_into()?,
            proof_context: proto.proof_context.try_into()?,
        };
        plan.validate()?;
        Ok(plan)
    }
}

fn sender_leaf(spend: &ShieldedInputPlan) -> ComplianceLeaf {
    spend.compliance_leaf.clone().unwrap_or_else(|| {
        shieldd_sdk_compliance::ComplianceLeaf::synthetic_unregulated(
            spend.note.address().clone(),
            spend.note.asset_id(),
        )
    })
}

fn recipient_leaf(output: &ShieldedOutputPlan, created_note: &crate::Note) -> ComplianceLeaf {
    output.compliance_leaf.clone().unwrap_or_else(|| {
        shieldd_sdk_compliance::ComplianceLeaf::synthetic_unregulated(
            created_note.address().clone(),
            created_note.asset_id(),
        )
    })
}

fn transfer_output_parts(
    note: Note,
    recovery_capsule: crate::RecoveryCapsule,
    ovk: &OutgoingViewingKey,
    memo_key: &PayloadKey,
    action_balance_commitment: balance::Commitment,
) -> (crate::NotePayload, WrappedMemoKey, OvkWrappedKey) {
    let esk = note.ephemeral_secret_key();
    let wrapped_memo_key = WrappedMemoKey::encrypt(
        memo_key,
        esk,
        note.transmission_key(),
        &note.diversified_generator(),
    );
    let ovk_wrapped_key = note.encrypt_key(ovk, action_balance_commitment);
    (
        note.payload(recovery_capsule),
        wrapped_memo_key,
        ovk_wrapped_key,
    )
}

#[cfg(test)]
mod tests {
    use super::*;
    use rand_core::OsRng;
    use shieldd_sdk_asset::{Value, BASE_ASSET_ID};
    use shieldd_sdk_keys::test_keys;
    use shieldd_sdk_num::Amount;
    use shieldd_sdk_txhash::EffectingData;

    fn transfer_parts(
        spend_amount: u64,
        receiver_amount: u64,
    ) -> (ShieldedInputPlan, ShieldedOutputPlan, tct::Proof, tct::Root) {
        let mut rng = OsRng;
        let note = Note::generate(
            &mut rng,
            &test_keys::ADDRESS_0,
            Value {
                amount: Amount::from(spend_amount),
                asset_id: *BASE_ASSET_ID,
            },
        );
        let mut sct = tct::Tree::new();
        sct.insert(tct::Witness::Keep, note.commit())
            .expect("insert transfer input note");
        let state_commitment_proof = sct.witness(note.commit()).expect("input note witness");
        let mut spend = ShieldedInputPlan::new(&mut rng, note, state_commitment_proof.position());
        spend.target_timestamp = 1_700_000_000;

        let mut output = ShieldedOutputPlan::new(
            &mut rng,
            Value {
                amount: Amount::from(receiver_amount),
                asset_id: *BASE_ASSET_ID,
            },
            test_keys::ADDRESS_1.clone(),
        );
        align_output_metadata(&mut output, &spend);

        (spend, output, state_commitment_proof, sct.root())
    }

    fn change_output(spend: &ShieldedInputPlan, amount: u64) -> ShieldedOutputPlan {
        let mut rng = OsRng;
        let mut output = ShieldedOutputPlan::new(
            &mut rng,
            Value {
                amount: Amount::from(amount),
                asset_id: *BASE_ASSET_ID,
            },
            test_keys::ADDRESS_0.clone(),
        );
        align_output_metadata(&mut output, spend);
        output
    }

    fn align_output_metadata(output: &mut ShieldedOutputPlan, spend: &ShieldedInputPlan) {
        output.asset_anchor = spend.asset_anchor;
        output.compliance_anchor = spend.compliance_anchor;
        output.target_timestamp = spend.target_timestamp;
        output.is_regulated = spend.is_regulated;
        output.tx_blinding_nonce = spend.tx_blinding_nonce;
        output.asset_indexed_leaf = spend.asset_indexed_leaf.clone();
        output.asset_path = spend.asset_path.clone();
        output.asset_position = spend.asset_position;
        output.asset_policy = spend.asset_policy.clone();
    }

    fn aligned_spend(
        first: &ShieldedInputPlan,
        address: &Address,
        amount: u64,
    ) -> ShieldedInputPlan {
        let mut rng = OsRng;
        let note = Note::generate(
            &mut rng,
            address,
            Value {
                amount: Amount::from(amount),
                asset_id: first.note.asset_id(),
            },
        );
        let mut spend = ShieldedInputPlan::new(&mut rng, note, 1u64.into());
        spend.target_timestamp = first.target_timestamp;
        spend.asset_anchor = first.asset_anchor;
        spend.compliance_anchor = first.compliance_anchor;
        spend.tx_blinding_nonce = first.tx_blinding_nonce;
        spend.is_regulated = first.is_regulated;
        spend.compliance_path = first.compliance_path.clone();
        spend.compliance_position = first.compliance_position;
        spend.asset_path = first.asset_path.clone();
        spend.asset_position = first.asset_position;
        spend.asset_indexed_leaf = first.asset_indexed_leaf.clone();
        spend.asset_policy = first.asset_policy.clone();
        spend
    }

    fn two_spend_plan() -> TransferPlan {
        let (first, output, _, _) = transfer_parts(100, 200);
        let second = aligned_spend(&first, &first.note.address(), 100);
        TransferPlan::new(vec![first, second], vec![output], Fr::from(5u64))
            .expect("aligned two-spend transfer plan should be valid")
    }

    fn assert_validation_and_decode_reject(plan: TransferPlan, expected: &str) {
        let err = plan
            .validate()
            .expect_err("mutated domain plan must fail validation");
        assert!(
            err.to_string().contains(expected),
            "unexpected validation error: {err}"
        );

        let err = TransferPlan::try_from(pb::TransferPlan::from(plan))
            .expect_err("serialized mutated plan must fail decoding");
        assert!(
            err.to_string().contains(expected),
            "unexpected decoding error: {err}"
        );
    }

    #[test]
    fn new_rejects_mismatched_transfer_public_inputs() {
        let (spend, output, _, _) = transfer_parts(100, 100);

        let mut bad_asset_anchor = output.clone();
        bad_asset_anchor.asset_anchor = tct::StateCommitment(Fq::from(99u64));
        let err = TransferPlan::new(vec![spend.clone()], vec![bad_asset_anchor], Fr::from(5u64))
            .expect_err("asset anchor mismatch should fail");
        assert!(err
            .to_string()
            .contains("transfer output asset anchors must match spends"));

        let mut bad_compliance_anchor = output.clone();
        bad_compliance_anchor.compliance_anchor = tct::StateCommitment(Fq::from(88u64));
        let err = TransferPlan::new(
            vec![spend.clone()],
            vec![bad_compliance_anchor],
            Fr::from(5u64),
        )
        .expect_err("compliance anchor mismatch should fail");
        assert!(err
            .to_string()
            .contains("transfer output compliance anchors must match spends"));

        let mut bad_timestamp = output.clone();
        bad_timestamp.target_timestamp += 1;
        let err = TransferPlan::new(vec![spend.clone()], vec![bad_timestamp], Fr::from(5u64))
            .expect_err("timestamp mismatch should fail");
        assert!(err
            .to_string()
            .contains("transfer output timestamps must match spends"));

        let mut bad_regulation = output;
        bad_regulation.is_regulated = !spend.is_regulated;
        let err = TransferPlan::new(vec![spend], vec![bad_regulation], Fr::from(5u64))
            .expect_err("regulation mismatch should fail");
        assert!(err
            .to_string()
            .contains("transfer output regulation flags must match spends"));
    }

    #[test]
    fn validation_rejects_every_remaining_cross_record_invariant_mutation() {
        let mut empty_spends = two_spend_plan();
        empty_spends.spends.clear();
        assert_validation_and_decode_reject(empty_spends, "at least one spend");

        let mut empty_outputs = two_spend_plan();
        empty_outputs.outputs.clear();
        assert_validation_and_decode_reject(empty_outputs, "at least one output");

        let mut too_many_outputs = two_spend_plan();
        let extra_output = too_many_outputs.outputs[0].clone();
        too_many_outputs.outputs.push(extra_output.clone());
        too_many_outputs.outputs.push(extra_output);
        assert_validation_and_decode_reject(too_many_outputs, "at most 2 outputs");

        let mut spend_asset = two_spend_plan();
        let mut value = spend_asset.spends[1].note.value();
        value.asset_id = asset::Id(Fq::from(0xA55E7u64));
        spend_asset.spends[1].note = Note::generate(&mut OsRng, &test_keys::ADDRESS_0, value);
        assert_validation_and_decode_reject(spend_asset, "same asset");

        let mut spend_asset_anchor = two_spend_plan();
        spend_asset_anchor.spends[1].asset_anchor = tct::StateCommitment(Fq::from(0xA55E7u64));
        assert_validation_and_decode_reject(spend_asset_anchor, "asset anchors must match");

        let mut spend_compliance_anchor = two_spend_plan();
        spend_compliance_anchor.spends[1].compliance_anchor =
            tct::StateCommitment(Fq::from(0xC0FF1u64));
        assert_validation_and_decode_reject(
            spend_compliance_anchor,
            "compliance anchors must match",
        );

        let mut spend_timestamp = two_spend_plan();
        spend_timestamp.spends[1].target_timestamp += 1;
        assert_validation_and_decode_reject(spend_timestamp, "timestamps must match");

        let mut spend_nonce = two_spend_plan();
        spend_nonce.spends[1].tx_blinding_nonce += Fr::from(1u64);
        assert_validation_and_decode_reject(spend_nonce, "tx blinding nonce must match");

        let mut spend_regulation = two_spend_plan();
        spend_regulation.spends[1].is_regulated = !spend_regulation.spends[0].is_regulated;
        assert_validation_and_decode_reject(spend_regulation, "regulation flags must match");

        let mut output_asset = two_spend_plan();
        output_asset.outputs[0].value.asset_id = asset::Id(Fq::from(0xA55E7u64));
        assert_validation_and_decode_reject(output_asset, "same asset as spends");

        let mut output_nonce = two_spend_plan();
        output_nonce.outputs[0].tx_blinding_nonce += Fr::from(1u64);
        assert_validation_and_decode_reject(output_nonce, "tx blinding nonce must match spends");

        let (spend, receiver, _, _) = transfer_parts(100, 60);
        let change = change_output(&spend, 40);
        let mut change_owner =
            TransferPlan::new(vec![spend], vec![receiver, change], Fr::from(5u64))
                .expect("aligned transfer plan should be valid");
        change_owner.outputs[CHANGE_OUTPUT_INDEX].dest_address = test_keys::ADDRESS_1.clone();
        assert_validation_and_decode_reject(change_owner, "change output must be sender-owned");
    }

    #[test]
    fn fee_funding_requires_a_self_directed_receiver() {
        let (spend, external_receiver, _, _) = transfer_parts(100, 100);
        let mut plan = TransferPlan::new(vec![spend], vec![external_receiver], Fr::from(5u64))
            .expect("ordinary external transfer is valid");
        plan.set_fee_funding_context();
        assert!(plan
            .validate()
            .expect_err("external fee funding must fail")
            .to_string()
            .contains("fee funding receiver must be the sender"));
    }

    #[test]
    fn materializers_reject_missing_compliance_inputs_and_count_mismatches() {
        let (spend, output, _, anchor) = transfer_parts(100, 100);
        let plan = TransferPlan::new(vec![spend], vec![output], Fr::from(5u64))
            .expect("transfer plan should be valid");

        let error = plan
            .transfer_public_private(&test_keys::FULL_VIEWING_KEY, &[], anchor, 0)
            .expect_err("proof materialization must require one proof per real spend");
        assert!(error
            .to_string()
            .contains("transfer expected 1 state commitment proofs, got 0"));

        let error = plan
            .build_unauth_transfer_with_proof(
                &test_keys::FULL_VIEWING_KEY,
                Vec::new(),
                anchor,
                &PayloadKey::random_key(&mut OsRng),
                TransferProof::default(),
                0,
            )
            .expect_err("action materialization must require one signature per real spend");
        assert!(error
            .to_string()
            .contains("transfer expected 1 auth sigs, got 0"));

        let mut missing_receiver_leaf = plan.clone();
        missing_receiver_leaf.outputs[0].compliance_leaf = None;
        let error = missing_receiver_leaf
            .transfer_body(
                &test_keys::FULL_VIEWING_KEY,
                &PayloadKey::random_key(&mut OsRng),
                anchor,
                0,
            )
            .expect_err("receiver compliance leaf must be authoritative");
        assert!(error
            .to_string()
            .contains("receiver output missing compliance leaf"));

        let mut missing_policy = plan;
        for spend in &mut missing_policy.spends {
            spend.is_regulated = true;
            spend.asset_policy = None;
        }
        for output in &mut missing_policy.outputs {
            output.is_regulated = true;
            output.asset_policy = None;
        }
        let error = missing_policy
            .transfer_body(
                &test_keys::FULL_VIEWING_KEY,
                &PayloadKey::random_key(&mut OsRng),
                anchor,
                0,
            )
            .expect_err("regulated transfer must carry its authoritative policy");
        assert!(error
            .to_string()
            .contains("regulated transfer missing asset policy"));
    }

    #[test]
    fn new_and_decode_reject_multi_spend_sender_mismatch() {
        let (first, output, _, _) = transfer_parts(100, 200);
        let second = aligned_spend(&first, &test_keys::ADDRESS_1, 100);
        let err = TransferPlan::new(vec![first, second], vec![output], Fr::from(5u64))
            .expect_err("sender mismatch must fail during plan construction");
        assert!(err
            .to_string()
            .contains("transfer spends must use the same sender address"));

        let mut proto: pb::TransferPlan = two_spend_plan().into();
        let replacement_note = Note::generate(
            &mut OsRng,
            &test_keys::ADDRESS_1,
            Value {
                amount: Amount::from(100u64),
                asset_id: *BASE_ASSET_ID,
            },
        );
        proto.spends[1].note = Some(replacement_note.into());
        let err = TransferPlan::try_from(proto)
            .expect_err("sender mismatch must fail during plan decoding");
        assert!(err
            .to_string()
            .contains("transfer spends must use the same sender address"));
    }

    #[test]
    fn new_and_decode_reject_multi_spend_compliance_witness_mismatch() {
        let (first, output, _, _) = transfer_parts(100, 200);
        let mut second = aligned_spend(&first, &first.note.address(), 100);
        second.compliance_path.layers[0].siblings[0] = Fq::from(123u64).to_bytes().to_vec();
        let err = TransferPlan::new(vec![first, second], vec![output], Fr::from(5u64))
            .expect_err("sender compliance path mismatch must fail during plan construction");
        assert!(err
            .to_string()
            .contains("transfer spends must use the same sender compliance witness"));

        let mut proto: pb::TransferPlan = two_spend_plan().into();
        proto.spends[1].compliance_position = proto.spends[1].compliance_position.wrapping_add(1);
        let err = TransferPlan::try_from(proto)
            .expect_err("sender compliance position mismatch must fail during plan decoding");
        assert!(err
            .to_string()
            .contains("transfer spends must use the same sender compliance witness"));
    }

    #[test]
    fn validation_rejects_every_redundant_multi_spend_witness_mutation() {
        let mut bad_leaf = two_spend_plan();
        let bad_leaf_value = bad_leaf.spends[1]
            .compliance_leaf
            .as_mut()
            .expect("test spend has a compliance leaf");
        bad_leaf_value.status = shieldd_sdk_compliance::UserAssetStatus::Frozen;
        bad_leaf_value.freeze_generation = 1;
        bad_leaf_value.frozen_since_height = 1;
        assert_validation_and_decode_reject(
            bad_leaf,
            "transfer spends must use the same sender compliance witness",
        );

        let mut bad_asset_path = two_spend_plan();
        bad_asset_path.spends[1].asset_path.layers[0].siblings[0] =
            Fq::from(321u64).to_bytes().to_vec();
        assert_validation_and_decode_reject(
            bad_asset_path,
            "transfer spends must use the same asset registry witness",
        );

        let mut bad_asset_position = two_spend_plan();
        bad_asset_position.spends[1].asset_position =
            bad_asset_position.spends[1].asset_position.wrapping_add(1);
        assert_validation_and_decode_reject(
            bad_asset_position,
            "transfer spends must use the same asset registry witness",
        );

        let mut bad_indexed_leaf = two_spend_plan();
        bad_indexed_leaf.spends[1].asset_indexed_leaf.next_index = bad_indexed_leaf.spends[1]
            .asset_indexed_leaf
            .next_index
            .wrapping_add(1);
        assert_validation_and_decode_reject(
            bad_indexed_leaf,
            "transfer spends must use the same asset registry witness",
        );

        let mut bad_policy = two_spend_plan();
        bad_policy.spends[1].asset_policy = Some(AssetPolicy::default_unregulated());
        assert_validation_and_decode_reject(
            bad_policy,
            "transfer spends must use the same asset policy",
        );
    }

    #[test]
    fn validation_rejects_every_redundant_output_asset_witness_mutation() {
        let mut bad_asset_path = two_spend_plan();
        bad_asset_path.outputs[0].asset_path.layers[0].siblings[0] =
            Fq::from(654u64).to_bytes().to_vec();
        assert_validation_and_decode_reject(
            bad_asset_path,
            "transfer outputs must use the same asset registry witness as spends",
        );

        let mut bad_asset_position = two_spend_plan();
        bad_asset_position.outputs[0].asset_position =
            bad_asset_position.outputs[0].asset_position.wrapping_add(1);
        assert_validation_and_decode_reject(
            bad_asset_position,
            "transfer outputs must use the same asset registry witness as spends",
        );

        let mut bad_indexed_leaf = two_spend_plan();
        bad_indexed_leaf.outputs[0].asset_indexed_leaf.next_index = bad_indexed_leaf.outputs[0]
            .asset_indexed_leaf
            .next_index
            .wrapping_add(1);
        assert_validation_and_decode_reject(
            bad_indexed_leaf,
            "transfer outputs must use the same asset registry witness as spends",
        );

        let mut bad_policy = two_spend_plan();
        bad_policy.outputs[0].asset_policy = Some(AssetPolicy::default_unregulated());
        assert_validation_and_decode_reject(
            bad_policy,
            "transfer outputs must use the same asset policy as spends",
        );
    }

    #[test]
    fn validation_rejects_every_redundant_change_sender_witness_mutation() {
        let (spend, receiver, _, _) = transfer_parts(100, 60);
        let change = change_output(&spend, 40);
        let plan = TransferPlan::new(vec![spend], vec![receiver, change], Fr::from(5u64))
            .expect("aligned transfer plan should be valid");

        let mut bad_path = plan.clone();
        bad_path.outputs[CHANGE_OUTPUT_INDEX].compliance_path.layers[0].siblings[0] =
            Fq::from(987u64).to_bytes().to_vec();
        assert_validation_and_decode_reject(
            bad_path,
            "transfer change output must use the sender compliance witness",
        );

        let mut bad_position = plan.clone();
        bad_position.outputs[CHANGE_OUTPUT_INDEX].compliance_position = bad_position.outputs
            [CHANGE_OUTPUT_INDEX]
            .compliance_position
            .wrapping_add(1);
        assert_validation_and_decode_reject(
            bad_position,
            "transfer change output must use the sender compliance witness",
        );

        let mut bad_leaf = plan;
        let bad_leaf_value = bad_leaf.outputs[CHANGE_OUTPUT_INDEX]
            .compliance_leaf
            .as_mut()
            .expect("change output has a compliance leaf");
        bad_leaf_value.status = shieldd_sdk_compliance::UserAssetStatus::Frozen;
        bad_leaf_value.freeze_generation = 1;
        bad_leaf_value.frozen_since_height = 1;
        assert_validation_and_decode_reject(
            bad_leaf,
            "transfer change output must use the sender compliance witness",
        );
    }

    #[test]
    fn plan_proto_roundtrip_derives_balance_and_fixed_arity() {
        let (spend, output, _, _) = transfer_parts(100, 100);
        let plan = TransferPlan::new(vec![spend], vec![output], Fr::from(5u64))
            .expect("transfer plan should be valid");
        let expected_balance = plan.balance();
        let decoded = TransferPlan::try_from(pb::TransferPlan::from(plan))
            .expect("canonical transfer plan should roundtrip");

        assert_eq!(decoded.balance(), expected_balance);
        assert_eq!(decoded.num_outputs(), PADDED_TRANSFER_OUTPUTS);
    }

    #[test]
    fn plan_proto_rejects_too_many_spends() {
        let mut proto: pb::TransferPlan = two_spend_plan().into();
        let extra_spend = proto.spends[0].clone();
        proto.spends.push(extra_spend);

        let error = TransferPlan::try_from(proto)
            .expect_err("plan decoding must enforce the deployed input arity");
        assert!(error.to_string().contains("supports at most 2 spends"));
    }

    #[test]
    fn enriched_metadata_materializes_directly_into_the_body() {
        let (spend, output, _, _) = transfer_parts(100, 100);
        let mut plan = TransferPlan::new(vec![spend], vec![output], Fr::from(5u64))
            .expect("transfer plan should be valid");

        let new_asset_anchor = tct::StateCommitment(Fq::from(0xA55E7u64));
        let new_compliance_anchor = tct::StateCommitment(Fq::from(0xC0FF1u64));
        let new_timestamp = plan.spends[0].target_timestamp + 42;
        for spend in &mut plan.spends {
            spend.asset_anchor = new_asset_anchor;
            spend.compliance_anchor = new_compliance_anchor;
            spend.target_timestamp = new_timestamp;
        }
        for output in &mut plan.outputs {
            output.asset_anchor = new_asset_anchor;
            output.compliance_anchor = new_compliance_anchor;
            output.target_timestamp = new_timestamp;
        }

        plan.validate()
            .expect("canonical spend/output metadata should need no cache refresh");
        let body = plan
            .transfer_body(
                &test_keys::FULL_VIEWING_KEY,
                &PayloadKey::random_key(&mut OsRng),
                tct::Tree::default().root(),
                0,
            )
            .expect("enriched plan should materialize");
        assert_eq!(body.asset_anchor, new_asset_anchor);
        assert_eq!(body.compliance_anchor, new_compliance_anchor);
        assert_eq!(body.target_timestamp, new_timestamp);
        assert!(body
            .inputs
            .iter()
            .all(|input| input.encrypted_backref.len() == crate::backref::ENCRYPTED_BACKREF_LEN));
    }

    #[test]
    fn effect_hash_binds_proof_bound_compliance_records_but_not_witness_anchor() {
        let (spend, output, _, anchor) = transfer_parts(100, 100);
        let plan = TransferPlan::new(vec![spend], vec![output], Fr::from(5u64))
            .expect("transfer plan should be valid");
        let body = plan
            .transfer_body(
                &test_keys::FULL_VIEWING_KEY,
                &PayloadKey::random_key(&mut OsRng),
                anchor,
                0,
            )
            .expect("transfer body should build");
        let effect_hash = body.effect_hash();

        for output_index in 0..body.outputs.len() {
            for byte_index in 0..body.outputs[output_index].compliance_ciphertext.len() {
                let mut changed = body.clone();
                changed.outputs[output_index].compliance_ciphertext[byte_index] ^= 1;
                assert_ne!(
                    changed.effect_hash(),
                    effect_hash,
                    "output {output_index} compliance ciphertext byte {byte_index} was not effect-hashed",
                );
            }
            for byte_index in 0..body.outputs[output_index].compliance_metadata.len() {
                let mut changed = body.clone();
                changed.outputs[output_index].compliance_metadata[byte_index] ^= 1;
                assert_ne!(
                    changed.effect_hash(),
                    effect_hash,
                    "output {output_index} compliance metadata byte {byte_index} was not effect-hashed",
                );
            }
        }

        let mut changed_anchor = body;
        changed_anchor.anchor = tct::Tree::default().root();
        assert_ne!(changed_anchor.anchor, anchor);
        assert_eq!(changed_anchor.effect_hash(), effect_hash);
    }

    #[test]
    fn receiver_and_change_output_indices_preserve_plan_order() {
        let (spend, receiver, proof, anchor) = transfer_parts(100, 60);
        let change = change_output(&spend, 40);
        let plan = TransferPlan::new(vec![spend], vec![receiver, change], Fr::from(5u64))
            .expect("transfer plan with change should be valid");
        let expected_receiver = plan.outputs[0].output_note().commit();
        let expected_change = plan.outputs[1].output_note().commit();

        let (_public, private) = plan
            .transfer_public_private(&test_keys::FULL_VIEWING_KEY, &[proof], anchor, 0)
            .expect("transfer public/private inputs should build");

        assert_eq!(
            private.receiver_output.created_note.commit(),
            expected_receiver
        );
        assert_eq!(private.change_output.created_note.commit(), expected_change);
    }

    #[test]
    fn transfer_body_hides_padding_and_wraps_all_outputs_under_action_commitment() {
        let (spend, receiver, _, anchor) = transfer_parts(100, 60);
        let plan = TransferPlan::new(vec![spend], vec![receiver], Fr::from(5u64))
            .expect("transfer plan should be valid");
        let mut rng = OsRng;
        let memo_key = PayloadKey::random_key(&mut rng);
        let body = plan
            .transfer_body(&test_keys::FULL_VIEWING_KEY, &memo_key, anchor, 0)
            .expect("transfer body should build");

        assert!(body
            .inputs
            .iter()
            .all(|input| input.encrypted_backref.len() == crate::backref::ENCRYPTED_BACKREF_LEN));
        for input in &body.inputs {
            assert!(input
                .encrypted_backref
                .decrypt(&test_keys::FULL_VIEWING_KEY.backref_key(), &input.nullifier)
                .expect("backreference should decrypt")
                .is_some());
        }

        assert!(body
            .outputs
            .iter()
            .all(|output| output.wrapped_memo_key.0 != [0u8; 48]
                && output.ovk_wrapped_key.0 != [0u8; 48]));

        let expected_notes = [
            plan.outputs[0].output_note(),
            plan.synthetic_dummy_output_note(CHANGE_OUTPUT_INDEX),
        ];
        for (output, expected_note) in body.outputs.iter().zip(expected_notes) {
            let epk = &output.note_payload.ephemeral_key;
            let shared_secret = Note::decrypt_key(
                output.ovk_wrapped_key.clone(),
                output.note_payload.note_commitment,
                body.balance_commitment,
                test_keys::FULL_VIEWING_KEY.outgoing(),
                epk,
            )
            .expect("outgoing key should unwrap under the serialized action commitment");
            let payload_key = PayloadKey::derive(&shared_secret, epk);
            assert_eq!(
                output
                    .wrapped_memo_key
                    .decrypt_outgoing(&payload_key)
                    .expect("memo key should unwrap"),
                memo_key
            );
            assert_eq!(
                Note::decrypt_with_payload_key(
                    &output.note_payload.encrypted_note,
                    &payload_key,
                    epk,
                )
                .expect("note should decrypt"),
                expected_note
            );
        }

        let per_output_commitment = plan.outputs[0]
            .balance()
            .commit(plan.outputs[0].value_blinding);
        let receiver = &body.outputs[0];
        assert!(Note::decrypt_key(
            receiver.ovk_wrapped_key.clone(),
            receiver.note_payload.note_commitment,
            per_output_commitment,
            test_keys::FULL_VIEWING_KEY.outgoing(),
            &receiver.note_payload.ephemeral_key,
        )
        .is_err());
    }
}
