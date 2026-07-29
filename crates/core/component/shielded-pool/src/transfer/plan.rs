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

#[derive(Clone, Debug, Deserialize, Serialize)]
#[serde(try_from = "pb::TransferPlan", into = "pb::TransferPlan")]
pub struct TransferPlan {
    pub body: TransferBody,
    pub value_blinding: Fr,
    pub balance: Balance,
    pub spends: Vec<ShieldedInputPlan>,
    pub outputs: Vec<ShieldedOutputPlan>,
}

impl TransferPlan {
    pub fn new(
        spends: Vec<ShieldedInputPlan>,
        outputs: Vec<ShieldedOutputPlan>,
        value_blinding: Fr,
    ) -> anyhow::Result<Self> {
        ensure!(!spends.is_empty(), "transfer requires at least one spend");
        ensure!(!outputs.is_empty(), "transfer requires at least one output");
        ensure!(
            spends.len() <= PADDED_TRANSFER_INPUTS,
            "transfer supports at most {} spends, got {}",
            PADDED_TRANSFER_INPUTS,
            spends.len()
        );
        ensure!(
            outputs.len() <= PADDED_TRANSFER_OUTPUTS,
            "transfer supports at most {} outputs, got {}",
            PADDED_TRANSFER_OUTPUTS,
            outputs.len()
        );

        let asset_id = spends[0].note.asset_id();
        ensure!(
            spends.iter().all(|spend| spend.note.asset_id() == asset_id)
                && outputs
                    .iter()
                    .all(|output| output.value.asset_id == asset_id),
            "transfer requires all spends and outputs to use the same asset",
        );
        let balance = spends.iter().fold(Balance::default(), |mut acc, spend| {
            acc += spend.balance();
            acc
        }) + outputs.iter().fold(Balance::default(), |mut acc, output| {
            acc += output.balance();
            acc
        });
        let mut plan = Self {
            body: TransferBody {
                anchor: tct::Tree::default().root(),
                balance_commitment: balance.commit(value_blinding),
                inputs: Vec::new(),
                outputs: Vec::new(),
                target_timestamp: spends[0].target_timestamp,
                compliance_anchor: spends[0].compliance_anchor,
                asset_anchor: spends[0].asset_anchor,
            },
            value_blinding,
            balance,
            spends,
            outputs,
        };
        plan.body = plan.placeholder_body();
        plan.validate_invariants()?;
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

    pub fn spend_randomizers(&self) -> impl Iterator<Item = Fr> + '_ {
        self.spends.iter().map(|spend| spend.randomizer)
    }

    pub fn dest_addresses(&self) -> impl Iterator<Item = shieldd_sdk_keys::Address> + '_ {
        self.outputs
            .iter()
            .map(|output| output.dest_address.clone())
    }

    pub fn num_outputs(&self) -> usize {
        self.body.outputs.len()
    }

    pub fn balance(&self) -> Balance {
        self.balance.clone()
    }

    pub fn refresh_body_public_inputs(&mut self) -> anyhow::Result<()> {
        let first_spend = self
            .spends
            .first()
            .ok_or_else(|| anyhow!("transfer requires at least one spend"))?;
        self.body.balance_commitment = self.balance.commit(self.value_blinding);
        self.body.target_timestamp = first_spend.target_timestamp;
        self.body.compliance_anchor = first_spend.compliance_anchor;
        self.body.asset_anchor = first_spend.asset_anchor;
        self.validate_invariants()
    }

    fn first_spend(&self) -> &ShieldedInputPlan {
        self.spends
            .first()
            .expect("transfer plan must contain at least one real spend")
    }

    fn sender_address(&self) -> Address {
        self.first_spend().note.address()
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

    fn placeholder_bytes(
        &self,
        domain: &[u8],
        slot: usize,
        commitment: tct::StateCommitment,
    ) -> [u8; 48] {
        let mut hash = blake2b_simd::Params::new();
        hash.hash_length(48).personal(b"ShlddTrPlanPad");
        let mut state = hash.to_state();
        state.update(domain);
        state.update(&(slot as u64).to_le_bytes());
        state.update(&commitment.0.to_bytes());
        state.update(&self.value_blinding.to_bytes());
        state
            .finalize()
            .as_bytes()
            .try_into()
            .expect("configured placeholder length is 48 bytes")
    }

    fn placeholder_body(&self) -> TransferBody {
        let mut inputs = self
            .spends
            .iter()
            .enumerate()
            .map(|(slot, spend)| TransferInputBody {
                nullifier: shieldd_sdk_sct::Nullifier(Fq::from(0u64)),
                rk: decaf377_rdsa::VerificationKey::from(decaf377_rdsa::SigningKey::<
                    decaf377_rdsa::SpendAuth,
                >::from(Fr::from(0u64))),
                encrypted_backref: crate::EncryptedBackref::try_from(self.placeholder_bytes(
                    b"input-backref",
                    slot,
                    spend.note.commit(),
                ))
                .expect("placeholder backref has the fixed wire length"),
                compliance_ciphertext: Vec::new(),
            })
            .collect::<Vec<_>>();
        pad_to_len(&mut inputs, PADDED_TRANSFER_INPUTS, |slot| {
            let dummy_note = self.synthetic_dummy_input_note(slot);
            TransferInputBody {
                nullifier: self.synthetic_dummy_nullifier(slot),
                rk: self.synthetic_dummy_verification_key(slot),
                encrypted_backref: crate::EncryptedBackref::try_from(self.placeholder_bytes(
                    b"input-backref",
                    slot,
                    dummy_note.commit(),
                ))
                .expect("placeholder backref has the fixed wire length"),
                compliance_ciphertext: Vec::new(),
            }
        });

        let mut outputs = self
            .outputs
            .iter()
            .enumerate()
            .map(|(slot, output)| {
                let note_payload = output.output_note().payload();
                TransferOutputBody {
                    wrapped_memo_key: WrappedMemoKey(self.placeholder_bytes(
                        b"memo-key",
                        slot,
                        note_payload.note_commitment,
                    )),
                    ovk_wrapped_key: OvkWrappedKey(self.placeholder_bytes(
                        b"ovk-key",
                        slot,
                        note_payload.note_commitment,
                    )),
                    note_payload,
                    compliance_ciphertext: Vec::new(),
                    orbis_upload_bundle: Vec::new(),
                }
            })
            .collect::<Vec<_>>();
        pad_to_len(&mut outputs, PADDED_TRANSFER_OUTPUTS, |slot| {
            let note_payload = self.synthetic_dummy_output_note(slot).payload();
            TransferOutputBody {
                wrapped_memo_key: WrappedMemoKey(self.placeholder_bytes(
                    b"memo-key",
                    slot,
                    note_payload.note_commitment,
                )),
                ovk_wrapped_key: OvkWrappedKey(self.placeholder_bytes(
                    b"ovk-key",
                    slot,
                    note_payload.note_commitment,
                )),
                note_payload,
                compliance_ciphertext: Vec::new(),
                orbis_upload_bundle: Vec::new(),
            }
        });

        TransferBody {
            anchor: tct::Tree::default().root(),
            balance_commitment: self.balance.commit(self.value_blinding),
            inputs,
            outputs,
            target_timestamp: self.spends[0].target_timestamp,
            compliance_anchor: self.spends[0].compliance_anchor,
            asset_anchor: self.spends[0].asset_anchor,
        }
    }

    fn upload_asset_policy(&self) -> anyhow::Result<AssetPolicy> {
        let plan_policy = self
            .outputs
            .first()
            .and_then(|output| output.asset_policy.as_ref())
            .or_else(|| {
                self.spends
                    .first()
                    .and_then(|spend| spend.asset_policy.as_ref())
            })
            .cloned();

        if self.first_spend().is_regulated {
            plan_policy
                .ok_or_else(|| anyhow!("transfer missing asset policy for Orbis upload bundle"))
        } else {
            Ok(plan_policy.unwrap_or_else(AssetPolicy::default_unregulated))
        }
    }

    fn validate_invariants(&self) -> anyhow::Result<()> {
        self.body.validate_shape()?;
        let recomputed_balance = self
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
                });
        ensure!(
            self.balance == recomputed_balance,
            "transfer net balance must equal spends plus outputs",
        );
        ensure!(
            self.body.balance_commitment == recomputed_balance.commit(self.value_blinding),
            "transfer body balance commitment must match plan balance",
        );
        let first_spend = self
            .spends
            .first()
            .ok_or_else(|| anyhow!("transfer requires at least one spend"))?;
        ensure!(
            self.body.asset_anchor == first_spend.asset_anchor,
            "transfer body asset anchor must match spends",
        );
        ensure!(
            self.body.compliance_anchor == first_spend.compliance_anchor,
            "transfer body compliance anchor must match spends",
        );
        ensure!(
            self.body.target_timestamp == first_spend.target_timestamp,
            "transfer body target timestamp must match spends",
        );
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
                    && spend.compliance_path == first_spend.compliance_path,
                "transfer spends must use the same sender compliance witness",
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
        }
        if let Some(change_output) = self.outputs.get(CHANGE_OUTPUT_INDEX) {
            ensure!(
                change_output.dest_address == sender_address,
                "transfer change output must be sender-owned",
            );
        }
        Ok(())
    }

    pub fn transfer_body(
        &self,
        fvk: &FullViewingKey,
        memo_key: &PayloadKey,
        anchor: tct::Root,
    ) -> anyhow::Result<TransferBody> {
        self.validate_invariants()?;
        let sender_leaf = sender_leaf(
            self.spends
                .first()
                .ok_or_else(|| anyhow!("transfer requires at least one spend"))?,
        );
        let asset_policy = self.upload_asset_policy()?;
        let compliance = build_transfer_compliance(
            &self.outputs,
            &sender_leaf,
            &asset_policy,
            &self.spends[0].asset_indexed_leaf,
            self.spends[0].target_timestamp,
            self.spends[0].tx_blinding_nonce,
        )?;

        let inputs = self
            .spends
            .iter()
            .map(|spend| {
                let mut input = spend.action_input_body(fvk);
                input.compliance_ciphertext.clear();
                input
            })
            .collect::<Vec<_>>();
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
            }
        });

        let action_balance_commitment = self.balance.commit(self.value_blinding);
        let outputs = self
            .outputs
            .iter()
            .enumerate()
            .map(|(index, output)| {
                let (note_payload, wrapped_memo_key, ovk_wrapped_key) = transfer_output_parts(
                    output.output_note(),
                    fvk.outgoing(),
                    memo_key,
                    action_balance_commitment,
                );
                let compliance_bytes = if is_receiver_output_index(index) {
                    receiver_output_transfer_compliance(&compliance.ciphertext, &compliance.bundle)?
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
                    orbis_upload_bundle: compliance_bytes.orbis_upload_bundle,
                })
            })
            .collect::<anyhow::Result<Vec<_>>>()?;
        let mut outputs = outputs;
        pad_to_len(&mut outputs, PADDED_TRANSFER_OUTPUTS, |slot| {
            let dummy_note = self.synthetic_dummy_output_note(slot);
            let (note_payload, wrapped_memo_key, ovk_wrapped_key) = transfer_output_parts(
                dummy_note,
                fvk.outgoing(),
                memo_key,
                action_balance_commitment,
            );
            TransferOutputBody {
                note_payload,
                wrapped_memo_key,
                ovk_wrapped_key,
                compliance_ciphertext: Vec::new(),
                orbis_upload_bundle: Vec::new(),
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
        })
    }

    pub fn transfer_public_private(
        &self,
        fvk: &FullViewingKey,
        state_commitment_proofs: &[tct::Proof],
        anchor: tct::Root,
    ) -> Result<(TransferProofPublic, TransferProofPrivate), crate::ProofError> {
        self.validate_invariants()
            .map_err(|e| crate::ProofError::InvalidPublicInput(e.to_string()))?;
        if state_commitment_proofs.len() != self.spends.len() {
            return Err(crate::ProofError::InvalidPublicInput(format!(
                "transfer expected {} state commitment proofs, got {}",
                self.spends.len(),
                state_commitment_proofs.len()
            )));
        }
        let sender_leaf = sender_leaf(&self.spends[0]);
        let asset_policy = self
            .upload_asset_policy()
            .map_err(|e| crate::ProofError::InvalidPublicInput(e.to_string()))?;
        let compliance = build_transfer_compliance(
            &self.outputs,
            &sender_leaf,
            &asset_policy,
            &self.spends[0].asset_indexed_leaf,
            self.spends[0].target_timestamp,
            self.spends[0].tx_blinding_nonce,
        )
        .map_err(|e| crate::ProofError::InvalidPublicInput(e.to_string()))?;

        let input_publics = self
            .spends
            .iter()
            .map(|spend| {
                Ok(TransferSpendPublic {
                    nullifier: spend.nullifier(fvk),
                    rk: spend.rk(fvk),
                })
            })
            .collect::<Result<Vec<_>, crate::ProofError>>()?;
        let mut input_publics = input_publics;
        pad_to_len(&mut input_publics, PADDED_TRANSFER_INPUTS, |slot| {
            TransferSpendPublic {
                nullifier: self.synthetic_dummy_nullifier(slot),
                rk: self.synthetic_dummy_verification_key(slot),
            }
        });

        let output_publics = self
            .outputs
            .iter()
            .map(|output| {
                Ok(TransferOutputPublic {
                    note_commitment: output.output_note().commit(),
                })
            })
            .collect::<Result<Vec<_>, crate::ProofError>>()?;
        let mut output_publics = output_publics;
        pad_to_len(&mut output_publics, PADDED_TRANSFER_OUTPUTS, |slot| {
            let dummy_note = self.synthetic_dummy_output_note(slot);
            TransferOutputPublic {
                note_commitment: dummy_note.commit(),
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

        Ok((
            TransferProofPublic {
                anchor,
                balance_commitment: self.balance.commit(self.value_blinding),
                asset_anchor: self.spends[0].asset_anchor,
                compliance_anchor: self.spends[0].compliance_anchor,
                target_timestamp: Fq::from(self.spends[0].target_timestamp),
                inputs: input_publics,
                outputs: output_publics,
                compliance: compliance.public,
            },
            TransferProofPrivate {
                action_balance_blinding: self.value_blinding,
                ak: *fvk.spend_verification_key(),
                nk: *fvk.nullifier_key(),
                asset_path: self.spends[0].asset_path.clone(),
                asset_position: self.spends[0].asset_position,
                asset_indexed_leaf: self.spends[0].asset_indexed_leaf.clone(),
                is_regulated: self.spends[0].is_regulated,
                sender_compliance_path: self.spends[0].compliance_path.clone(),
                sender_compliance_position: self.spends[0].compliance_position,
                sender_leaf,
                compliance: compliance.private,
                required_input,
                optional_input,
                receiver_output,
                change_output,
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
    ) -> Result<Transfer, crate::ProofError> {
        let body = self
            .transfer_body(fvk, memo_key, anchor)
            .map_err(|e| crate::ProofError::InvalidPublicInput(e.to_string()))?;
        if auth_sigs.len() != self.spends.len() {
            return Err(crate::ProofError::InvalidPublicInput(format!(
                "transfer expected {} auth sigs, got {}",
                self.spends.len(),
                auth_sigs.len()
            )));
        }
        let (public, private) =
            self.transfer_public_private(fvk, &state_commitment_proofs, anchor)?;
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
    ) -> Result<Vec<u8>, crate::ProofError> {
        let (public, private) =
            self.transfer_public_private(fvk, &state_commitment_proofs, anchor)?;
        crate::gnark::encode_transfer_witness_v11(&public, &private)
            .map_err(|e| crate::ProofError::InvalidPublicInput(e.to_string()))
    }

    pub fn build_unauth_transfer_with_proof(
        &self,
        fvk: &FullViewingKey,
        auth_sigs: Vec<Signature<decaf377_rdsa::SpendAuth>>,
        anchor: tct::Root,
        memo_key: &PayloadKey,
        proof: TransferProof,
    ) -> Result<Transfer, crate::ProofError> {
        let body = self
            .transfer_body(fvk, memo_key, anchor)
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
            body: Some(msg.body.into()),
            value_blinding: msg.value_blinding.to_bytes().to_vec(),
            balance: Some(msg.balance.into()),
            spends: msg.spends.into_iter().map(Into::into).collect(),
            outputs: msg.outputs.into_iter().map(Into::into).collect(),
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
            body: proto
                .body
                .ok_or_else(|| anyhow!("missing transfer plan body"))?
                .try_into()?,
            value_blinding: Fr::from_bytes_checked(&value_blinding_bytes)
                .map_err(|_| anyhow!("malformed canonical value blinding"))?,
            balance: proto
                .balance
                .ok_or_else(|| anyhow!("missing transfer plan balance"))?
                .try_into()?,
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
        };
        plan.validate_invariants()?;
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
    (note.payload(), wrapped_memo_key, ovk_wrapped_key)
}

#[cfg(test)]
mod tests {
    use super::*;
    use rand_core::OsRng;
    use shieldd_sdk_asset::{Value, BASE_ASSET_ID};
    use shieldd_sdk_keys::test_keys;
    use shieldd_sdk_num::Amount;

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
    fn plan_proto_rejects_stale_balance_commitment() {
        let (spend, output, _, _) = transfer_parts(100, 100);
        let plan = TransferPlan::new(vec![spend], vec![output], Fr::from(5u64))
            .expect("transfer plan should be valid");
        let mut proto: pb::TransferPlan = plan.into();
        proto
            .body
            .as_mut()
            .expect("transfer plan body")
            .balance_commitment = Some(Balance::default().commit(Fr::from(6u64)).into());

        let err = TransferPlan::try_from(proto)
            .expect_err("deserialization must reject a stale balance commitment");
        assert!(err
            .to_string()
            .contains("transfer body balance commitment must match plan balance"));
    }

    #[test]
    fn new_preserves_transfer_public_inputs() {
        let (spend, output, _, _) = transfer_parts(100, 100);
        let plan = TransferPlan::new(vec![spend.clone()], vec![output], Fr::from(5u64))
            .expect("transfer plan should be valid");

        assert_eq!(plan.body.asset_anchor, spend.asset_anchor);
        assert_eq!(plan.body.compliance_anchor, spend.compliance_anchor);
        assert_eq!(plan.body.target_timestamp, spend.target_timestamp);
        assert!(plan
            .body
            .inputs
            .iter()
            .all(|input| input.encrypted_backref.len() == crate::backref::ENCRYPTED_BACKREF_LEN));
    }

    #[test]
    fn transfer_input_wire_rejects_empty_backreference() {
        let (spend, output, _, _) = transfer_parts(100, 100);
        let plan = TransferPlan::new(vec![spend], vec![output], Fr::from(5u64))
            .expect("transfer plan should be valid");
        let mut proto: pb::TransferPlan = plan.into();
        proto.body.as_mut().expect("transfer plan body").inputs[0]
            .encrypted_backref
            .clear();

        assert!(TransferPlan::try_from(proto).is_err());
    }

    // Regression: the fee-funding enricher mutates spend/output anchors after
    // `TransferPlan::new` and must call `refresh_body_public_inputs` to
    // re-sync the body, otherwise `validate_invariants` rejects the plan.
    #[test]
    fn refresh_body_public_inputs_resyncs_after_anchor_mutation() {
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

        let err = plan
            .validate_invariants()
            .expect_err("stale body must be rejected before refresh");
        assert!(err
            .to_string()
            .contains("transfer body asset anchor must match spends"));

        plan.refresh_body_public_inputs()
            .expect("refresh should reconcile body with mutated spends");
        assert_eq!(plan.body.asset_anchor, new_asset_anchor);
        assert_eq!(plan.body.compliance_anchor, new_compliance_anchor);
        assert_eq!(plan.body.target_timestamp, new_timestamp);
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
            .transfer_public_private(&test_keys::FULL_VIEWING_KEY, &[proof], anchor)
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
            .transfer_body(&test_keys::FULL_VIEWING_KEY, &memo_key, anchor)
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

        let legacy_per_output_commitment = plan.outputs[0]
            .balance()
            .commit(plan.outputs[0].value_blinding);
        let receiver = &body.outputs[0];
        assert!(Note::decrypt_key(
            receiver.ovk_wrapped_key.clone(),
            receiver.note_payload.note_commitment,
            legacy_per_output_commitment,
            test_keys::FULL_VIEWING_KEY.outgoing(),
            &receiver.note_payload.ephemeral_key,
        )
        .is_err());
    }
}
