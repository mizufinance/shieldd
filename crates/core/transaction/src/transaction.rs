use group::GroupEncoding;
use std::{
    collections::BTreeMap,
    convert::{TryFrom, TryInto},
};

use anyhow::{Context, Error};
use reddsa::{sapling::Binding, Signature, VerificationKey, VerificationKeyBytes};
use serde::{Deserialize, Serialize};
use shieldd_sdk_asset::Balance;
use shieldd_sdk_crypto::Fr;
use shieldd_sdk_keys::{AddressView, FullViewingKey, PayloadKey};
use shieldd_sdk_proto::{
    core::transaction::v1::{self as pbt},
    DomainType, Message,
};
use shieldd_sdk_sct::Nullifier;
use shieldd_sdk_shielded_pool::{
    Note, NoteReshape, ShieldedHostWithdrawal, ShieldedHostWithdrawalView, Transfer,
};
use shieldd_sdk_tct as tct;
use shieldd_sdk_tct::StateCommitment;
use shieldd_sdk_txhash::{
    AuthHash, AuthorizingData, EffectHash, EffectingData, TransactionContext, TransactionId,
};

use crate::{
    fee_funding::FeeFunding,
    memo::{MemoCiphertext, MemoPlaintext},
    view::{
        action_view::{NoteReshapeView, TransferView},
        MemoView, TransactionBodyView,
    },
    Action, ActionView, IsAction, MemoPlaintextView, TransactionParameters, TransactionPerspective,
    TransactionView,
};

#[derive(Clone, Debug, Default)]
pub struct TransactionBody {
    pub actions: Vec<Action>,
    pub transaction_parameters: TransactionParameters,
    pub fee_funding: Option<FeeFunding>,
    pub memo: Option<MemoCiphertext>,
}

#[derive(Debug, Clone, Default, Serialize, Deserialize)]
#[serde(try_from = "pbt::TransactionSummary", into = "pbt::TransactionSummary")]
pub struct TransactionSummary {
    pub effects: Vec<TransactionEffect>,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
pub struct TransactionEffect {
    pub address: AddressView,
    pub balance: Balance,
}

impl EffectingData for TransactionBody {
    fn effect_hash(&self) -> EffectHash {
        let mut state = blake2b_simd::Params::new()
            .personal(b"ShielddEfHs")
            .to_state();

        let parameters_hash = self.transaction_parameters.effect_hash();
        let memo_hash = self
            .memo
            .as_ref()
            .map(|memo| memo.effect_hash())
            .unwrap_or_default();
        let fee_funding_hash = self
            .fee_funding
            .as_ref()
            .map(EffectingData::effect_hash)
            .unwrap_or_default();

        state.update(parameters_hash.as_bytes());
        state.update(memo_hash.as_bytes());
        state.update(fee_funding_hash.as_bytes());

        let num_actions = self.actions.len() as u32;
        state.update(&num_actions.to_le_bytes());
        for action in &self.actions {
            state.update(action.effect_hash().as_bytes());
        }

        EffectHash(state.finalize().as_array().clone())
    }
}

impl EffectingData for Transaction {
    fn effect_hash(&self) -> EffectHash {
        self.transaction_body.effect_hash()
    }
}

impl AuthorizingData for TransactionBody {
    fn auth_hash(&self) -> AuthHash {
        AuthHash(
            blake2b_simd::Params::default()
                .hash(&self.encode_to_vec())
                .as_bytes()[0..32]
                .try_into()
                .expect("blake2b output is always 32 bytes long"),
        )
    }
}

impl AuthorizingData for Transaction {
    fn auth_hash(&self) -> AuthHash {
        self.transaction_body.auth_hash()
    }
}

#[derive(Clone, Debug, Serialize, Deserialize)]
#[serde(try_from = "pbt::Transaction", into = "pbt::Transaction")]
pub struct Transaction {
    pub transaction_body: TransactionBody,
    pub binding_sig: Signature<Binding>,
    pub anchor: tct::Root,
}

/// Canonical placeholder for no-proof transactions whose binding key is identity.
pub fn no_binding_signature() -> Signature<Binding> {
    [0u8; 64].into()
}

/// Returns whether a binding signature is the canonical no-proof placeholder.
pub fn is_no_binding_signature(signature: &Signature<Binding>) -> bool {
    <[u8; 64]>::from(*signature) == [0u8; 64]
}

impl Default for Transaction {
    fn default() -> Self {
        Transaction {
            transaction_body: Default::default(),
            binding_sig: no_binding_signature(),
            anchor: tct::Tree::new().root(),
        }
    }
}

impl Transaction {
    /// Decodes only the unique protobuf encoding emitted by this domain type.
    pub fn decode_canonical(bytes: &[u8]) -> anyhow::Result<Self> {
        let tx: Self = pbt::Transaction::decode(bytes)
            .context("decoding transaction protobuf")?
            .try_into()?;
        let canonical: Vec<u8> = (&tx).into();
        anyhow::ensure!(
            canonical == bytes,
            "transaction bytes are not the canonical protobuf encoding"
        );
        Ok(tx)
    }

    pub fn context(&self) -> TransactionContext {
        TransactionContext {
            anchor: self.anchor,
            effect_hash: self.effect_hash(),
        }
    }

    pub fn num_proofs(&self) -> usize {
        self.transaction_body
            .actions
            .iter()
            .map(|action| match action {
                Action::Transfer(_)
                | Action::NoteReshape(_)
                | Action::ShieldedHostWithdrawal(_) => 1,
                Action::ComplianceRegisterAsset(_) | Action::ComplianceRegisterUser(_) => 0,
            })
            .sum::<usize>()
            + usize::from(self.transaction_body.fee_funding.is_some())
    }

    pub fn decrypt_memo(&self, fvk: &FullViewingKey) -> anyhow::Result<MemoPlaintext> {
        let memo = self.transaction_body.memo.as_ref().context("no memo")?;
        for output in self.shielded_outputs() {
            let payload = output.note_payload;
            if let Ok(plaintext) = MemoCiphertext::decrypt_outgoing(
                output.wrapped_memo_key,
                output.ovk_wrapped_key.clone(),
                payload.note_commitment,
                output.balance_commitment,
                fvk.outgoing(),
                &payload.ephemeral_key,
                memo.clone(),
            ) {
                return Ok(plaintext);
            }
            if let Ok(key) = output
                .wrapped_memo_key
                .decrypt(payload.ephemeral_key, fvk.incoming())
            {
                if let Ok(plaintext) = MemoCiphertext::decrypt(&key, memo.clone()) {
                    return Ok(plaintext);
                }
            }
        }

        Err(anyhow::anyhow!("unable to decrypt memo"))
    }

    pub fn payload_keys(
        &self,
        fvk: &FullViewingKey,
    ) -> anyhow::Result<BTreeMap<StateCommitment, PayloadKey>> {
        let mut result = BTreeMap::new();

        for output in self.shielded_outputs() {
            let payload = output.note_payload;
            let epk = &payload.ephemeral_key;
            let shared_secret = Note::decrypt_key(
                output.ovk_wrapped_key.clone(),
                payload.note_commitment,
                output.balance_commitment,
                fvk.outgoing(),
                epk,
            )
            .unwrap_or_else(|_| fvk.incoming().key_agreement_with(epk));
            result.insert(
                payload.note_commitment,
                PayloadKey::derive(&shared_secret, epk),
            );
        }

        Ok(result)
    }

    pub fn view_from_perspective(&self, txp: &TransactionPerspective) -> TransactionView {
        let mut action_views = Vec::new();
        let mut memo_plaintext: Option<MemoPlaintext> = None;
        let mut memo_ciphertext: Option<MemoCiphertext> = None;

        for action in self.actions() {
            let action_view = action.view_from_perspective(txp);

            if matches!(
                &action_view,
                ActionView::Transfer(_)
                    | ActionView::NoteReshape(_)
                    | ActionView::ShieldedHostWithdrawal(_)
            ) && memo_plaintext.is_none()
            {
                memo_plaintext = match self.transaction_body.memo.as_ref() {
                    Some(ciphertext) => {
                        memo_ciphertext = Some(ciphertext.clone());
                        payload_key_from_view(&action_view).and_then(|payload_key| {
                            MemoCiphertext::decrypt(payload_key, ciphertext.clone()).ok()
                        })
                    }
                    None => None,
                }
            }

            action_views.push(action_view);
        }

        let fee_funding = self
            .transaction_body
            .fee_funding
            .as_ref()
            .map(|fee_funding| fee_funding.view_from_perspective(txp));
        if memo_plaintext.is_none() {
            if let (Some(ciphertext), Some(TransferView::Visible { payload_key, .. })) =
                (self.transaction_body.memo.as_ref(), fee_funding.as_ref())
            {
                memo_ciphertext = Some(ciphertext.clone());
                memo_plaintext = MemoCiphertext::decrypt(payload_key, ciphertext.clone()).ok();
            }
        }

        let memo_view = match memo_ciphertext {
            Some(ciphertext) => match memo_plaintext {
                Some(plaintext) => Some(MemoView::Visible {
                    plaintext: MemoPlaintextView {
                        return_address: txp.view_address(plaintext.return_address()),
                        text: plaintext.text().to_owned(),
                    },
                    ciphertext,
                }),
                None => Some(MemoView::Opaque { ciphertext }),
            },
            None => None,
        };

        TransactionView {
            body_view: TransactionBodyView {
                action_views,
                transaction_parameters: self.transaction_parameters(),
                fee_funding,
                memo_view,
            },
            binding_sig: self.binding_sig,
            anchor: self.anchor,
        }
    }

    pub fn actions(&self) -> impl Iterator<Item = &Action> {
        self.transaction_body.actions.iter()
    }

    pub fn transfers(&self) -> impl Iterator<Item = &Transfer> {
        self.actions().filter_map(|action| {
            if let Action::Transfer(transfer) = action {
                Some(transfer)
            } else {
                None
            }
        })
    }

    pub fn note_reshapes(&self) -> impl Iterator<Item = &NoteReshape> {
        self.actions().filter_map(|action| {
            if let Action::NoteReshape(note_reshape) = action {
                Some(note_reshape)
            } else {
                None
            }
        })
    }

    pub fn shielded_host_withdrawals(&self) -> impl Iterator<Item = &ShieldedHostWithdrawal> {
        self.actions().filter_map(|action| {
            if let Action::ShieldedHostWithdrawal(withdrawal) = action {
                Some(withdrawal)
            } else {
                None
            }
        })
    }

    pub fn spent_nullifiers(&self) -> impl Iterator<Item = Nullifier> + '_ {
        self.actions()
            .flat_map(|action| {
                let (transfer, reshape): (&[_], &[_]) = match action {
                    Action::Transfer(transfer) => (&transfer.body.inputs, &[]),
                    Action::NoteReshape(reshape) => (&[], &reshape.body.inputs),
                    Action::ShieldedHostWithdrawal(withdrawal) => (&withdrawal.body.inputs, &[]),
                    Action::ComplianceRegisterAsset(_) | Action::ComplianceRegisterUser(_) => {
                        (&[], &[])
                    }
                };
                transfer
                    .iter()
                    .map(|input| input.nullifier)
                    .chain(reshape.iter().map(|input| input.nullifier))
            })
            .chain(
                self.transaction_body
                    .fee_funding
                    .iter()
                    .flat_map(|fee| fee.transfer.body.inputs.iter().map(|input| input.nullifier)),
            )
    }

    /// Scoped volume nullifiers for body actions; fee funding has no volume effect.
    pub fn volume_nullifiers(
        &self,
    ) -> impl Iterator<Item = shieldd_sdk_shielded_pool::VolumeNullifier> + '_ {
        self.actions().filter_map(|action| match action {
            Action::Transfer(transfer) => Some(transfer.body.volume_accumulator.scoped_nullifier()),
            Action::ShieldedHostWithdrawal(withdrawal) => {
                Some(withdrawal.body.volume_accumulator.scoped_nullifier())
            }
            _ => None,
        })
    }

    /// Counts every proof-bound spend, including fee funding.
    pub fn spent_nullifier_count(&self) -> usize {
        let body_count = self.actions().fold(0usize, |count, action| {
            let action_count = match action {
                Action::Transfer(transfer) => transfer.body.inputs.len(),
                Action::NoteReshape(note_reshape) => note_reshape.body.inputs.len(),

                Action::ShieldedHostWithdrawal(withdrawal) => withdrawal.body.inputs.len(),
                Action::ComplianceRegisterAsset(_) | Action::ComplianceRegisterUser(_) => 0,
            };
            count.saturating_add(action_count)
        });
        let fee_count = self
            .transaction_body
            .fee_funding
            .as_ref()
            .map(|fee_funding| fee_funding.transfer.body.inputs.len())
            .unwrap_or_default();
        body_count.saturating_add(fee_count)
    }

    pub fn state_commitments(&self) -> impl Iterator<Item = StateCommitment> + '_ {
        self.actions()
            .flat_map(|action| {
                action_outputs(action)
                    .map(|output| output.note_payload.note_commitment)
                    .chain(match action {
                        Action::Transfer(transfer) => {
                            Some(transfer.body.volume_accumulator.commitment)
                        }
                        _ => None,
                    })
            })
            .chain(
                self.fee_outputs()
                    .map(|output| output.note_payload.note_commitment),
            )
    }

    fn shielded_outputs(&self) -> impl Iterator<Item = OutputRef<'_>> {
        self.actions()
            .flat_map(action_outputs)
            .chain(self.fee_outputs())
    }

    fn fee_outputs(&self) -> impl Iterator<Item = OutputRef<'_>> {
        self.transaction_body.fee_funding.iter().flat_map(|fee| {
            fee.transfer
                .body
                .outputs
                .iter()
                .map(|output| output.into_output_ref(fee.transfer.body.balance_commitment))
        })
    }

    pub fn transaction_body(&self) -> TransactionBody {
        self.transaction_body.clone()
    }

    pub fn transaction_parameters(&self) -> TransactionParameters {
        self.transaction_body.transaction_parameters.clone()
    }

    pub fn binding_sig(&self) -> &Signature<Binding> {
        &self.binding_sig
    }

    pub fn id(&self) -> TransactionId {
        use sha2::{Digest, Sha256};

        let tx_bytes: Vec<u8> = self.into();
        let mut id_bytes = [0; 32];
        id_bytes[..].copy_from_slice(Sha256::digest(&tx_bytes).as_slice());

        TransactionId(id_bytes)
    }

    pub fn binding_verification_key(&self) -> VerificationKey<Binding> {
        let mut balance_commitments = shieldd_sdk_crypto::SubgroupPoint::default();
        for action in &self.transaction_body.actions {
            balance_commitments += action.balance_commitment().0;
        }
        if let Some(fee_funding) = &self.transaction_body.fee_funding {
            balance_commitments += fee_funding.balance_commitment().0;
        }

        let fee_v_blinding = Fr::zero();
        let fee_value_commitment = self
            .transaction_body
            .transaction_parameters
            .fee
            .commit(fee_v_blinding);
        balance_commitments += fee_value_commitment.0;

        let binding_verification_key_bytes: VerificationKeyBytes<Binding> =
            balance_commitments.to_bytes().into();

        binding_verification_key_bytes
            .try_into()
            .expect("verification key is valid")
    }
}

fn action_outputs(action: &Action) -> impl Iterator<Item = OutputRef<'_>> {
    let (transfer, reshape, withdrawal, balance_commitment): (&[_], &[_], Option<&_>, _) =
        match action {
            Action::Transfer(transfer) => (
                &transfer.body.outputs[..],
                &[][..],
                None,
                transfer.body.balance_commitment,
            ),
            Action::NoteReshape(reshape) => (
                &[][..],
                &reshape.body.outputs[..],
                None,
                reshape.body.balance_commitment,
            ),
            Action::ShieldedHostWithdrawal(withdrawal) => (
                &[][..],
                &[][..],
                Some(&withdrawal.body.change_output),
                withdrawal.body.balance_commitment,
            ),
            Action::ComplianceRegisterAsset(_) | Action::ComplianceRegisterUser(_) => {
                (&[][..], &[][..], None, Default::default())
            }
        };
    transfer
        .iter()
        .map(move |output| output.into_output_ref(balance_commitment))
        .chain(
            reshape
                .iter()
                .map(move |output| output.into_output_ref(balance_commitment)),
        )
        .chain(
            withdrawal
                .into_iter()
                .map(move |output| output.into_output_ref(balance_commitment)),
        )
}

trait IntoOutputRef<'a> {
    fn into_output_ref(
        self,
        balance_commitment: shieldd_sdk_asset::balance::Commitment,
    ) -> OutputRef<'a>;
}

struct OutputRef<'a> {
    note_payload: &'a shieldd_sdk_shielded_pool::NotePayload,
    ovk_wrapped_key: &'a shieldd_sdk_keys::symmetric::OvkWrappedKey,
    wrapped_memo_key: &'a shieldd_sdk_keys::symmetric::WrappedMemoKey,
    balance_commitment: shieldd_sdk_asset::balance::Commitment,
}

impl<'a> IntoOutputRef<'a> for &'a shieldd_sdk_shielded_pool::TransferOutputBody {
    fn into_output_ref(
        self,
        balance_commitment: shieldd_sdk_asset::balance::Commitment,
    ) -> OutputRef<'a> {
        OutputRef {
            note_payload: &self.note_payload,
            ovk_wrapped_key: &self.ovk_wrapped_key,
            wrapped_memo_key: &self.wrapped_memo_key,
            balance_commitment,
        }
    }
}

impl<'a> IntoOutputRef<'a> for &'a shieldd_sdk_shielded_pool::NoteReshapeOutputBody {
    fn into_output_ref(
        self,
        balance_commitment: shieldd_sdk_asset::balance::Commitment,
    ) -> OutputRef<'a> {
        OutputRef {
            note_payload: &self.note_payload,
            ovk_wrapped_key: &self.ovk_wrapped_key,
            wrapped_memo_key: &self.wrapped_memo_key,
            balance_commitment,
        }
    }
}

impl<'a> IntoOutputRef<'a> for &'a shieldd_sdk_shielded_pool::ShieldedWithdrawalChangeBody {
    fn into_output_ref(
        self,
        balance_commitment: shieldd_sdk_asset::balance::Commitment,
    ) -> OutputRef<'a> {
        OutputRef {
            note_payload: &self.note_payload,
            ovk_wrapped_key: &self.ovk_wrapped_key,
            wrapped_memo_key: &self.wrapped_memo_key,
            balance_commitment,
        }
    }
}

fn payload_key_from_view(action_view: &ActionView) -> Option<&PayloadKey> {
    match action_view {
        ActionView::Transfer(TransferView::Visible { payload_key, .. }) => Some(payload_key),
        ActionView::Transfer(TransferView::Opaque { .. }) => None,
        ActionView::NoteReshape(NoteReshapeView::Visible { payload_key, .. }) => Some(payload_key),
        ActionView::NoteReshape(NoteReshapeView::Opaque { .. }) => None,

        ActionView::ShieldedHostWithdrawal(ShieldedHostWithdrawalView::Visible {
            payload_key,
            ..
        }) => Some(payload_key),
        ActionView::ShieldedHostWithdrawal(ShieldedHostWithdrawalView::Opaque { .. }) => None,
        _ => None,
    }
}

#[cfg(test)]
mod tests {
    use reddsa::{sapling::SpendAuth, SigningKey, VerificationKey};
    use shieldd_sdk_asset::{asset, Balance, Value, BASE_ASSET_DENOM};
    use shieldd_sdk_compliance::WithdrawalComplianceCiphertext;
    use shieldd_sdk_keys::symmetric::{OvkWrappedKey, WrappedMemoKey};
    use shieldd_sdk_proto::DomainType as _;
    use shieldd_sdk_sct::Nullifier;
    use shieldd_sdk_shielded_pool::{
        backref::ENCRYPTED_BACKREF_LEN, note::NOTE_CIPHERTEXT_BYTES, RecoveryCapsule,
    };

    use super::{Action, Transaction, TransactionBody};

    fn recovery_capsule(seed: u64) -> RecoveryCapsule {
        RecoveryCapsule {
            epk: (*shieldd_sdk_crypto::generators::SPEND_AUTH) * shieldd_sdk_crypto::Fr::from(seed),
            c2: shieldd_sdk_crypto::Fq::from(seed + 1),
            salt: shieldd_sdk_crypto::Fq::from(seed + 2),
            key_confirmation: shieldd_sdk_crypto::Fq::from(seed + 3),
            encrypted_amount: shieldd_sdk_crypto::Fq::from(seed + 4),
            encrypted_note_blinding: shieldd_sdk_crypto::Fq::from(seed + 5),
        }
    }

    fn withdrawal_compliance_ciphertext(seed: u64) -> WithdrawalComplianceCiphertext {
        WithdrawalComplianceCiphertext {
            epk: (*shieldd_sdk_crypto::generators::SPEND_AUTH) * shieldd_sdk_crypto::Fr::from(seed),
            c2: shieldd_sdk_crypto::Fq::from(seed + 1),
            key_confirmation: shieldd_sdk_crypto::Fq::from(seed + 2),
            encrypted_sender_address: [0u8; 96],
        }
    }

    #[test]
    fn canonical_decode_accepts_exact_encoding_and_rejects_unknown_fields() {
        let tx = Transaction::default();
        let canonical: Vec<u8> = (&tx).into();
        assert_eq!(
            Transaction::decode_canonical(&canonical)
                .expect("canonical transaction must decode")
                .encode_to_vec(),
            canonical
        );

        // Unknown field 127, varint value 0. Prost accepts and drops it, so
        // decode followed by canonical re-encoding must reject this wire form.
        let mut noncanonical = canonical;
        noncanonical.extend_from_slice(&[0xf8, 0x07, 0x00]);
        let error = Transaction::decode_canonical(&noncanonical)
            .expect_err("unknown protobuf fields must not cross transaction ingress");
        assert!(
            error
                .to_string()
                .contains("not the canonical protobuf encoding"),
            "unexpected error: {error:#}"
        );
    }

    #[test]
    fn transfer_counts_as_nullifier_and_state_commitment_source() {
        let transfer = shieldd_sdk_shielded_pool::Transfer {
            body: shieldd_sdk_shielded_pool::TransferBody {
                rk: VerificationKey::from(
                    &SigningKey::<SpendAuth>::try_from(
                        (shieldd_sdk_crypto::Fr::from(4u64)).to_bytes(),
                    )
                    .expect("canonical key"),
                ),
                anchor: shieldd_sdk_tct::Tree::default().root(),
                balance_commitment: Balance::from(Value {
                    amount: 9u64.into(),
                    asset_id: asset::Id(shieldd_sdk_crypto::Fq::from(1u64)),
                })
                .commit(shieldd_sdk_crypto::Fr::from(2u64)),
                inputs: vec![
                    shieldd_sdk_shielded_pool::TransferInputBody {
                        nullifier: Nullifier(shieldd_sdk_crypto::Fq::from(3u64)),

                        encrypted_backref: shieldd_sdk_shielded_pool::EncryptedBackref::try_from(
                            [1u8; ENCRYPTED_BACKREF_LEN],
                        )
                        .expect("valid encrypted backref"),
                        compliance_ciphertext: vec![1, 2, 3],
                    },
                    shieldd_sdk_shielded_pool::TransferInputBody {
                        nullifier: Nullifier(shieldd_sdk_crypto::Fq::from(30u64)),

                        encrypted_backref: shieldd_sdk_shielded_pool::EncryptedBackref::try_from(
                            [2u8; 48],
                        )
                        .expect("fixed-size encrypted backref"),
                        compliance_ciphertext: vec![],
                    },
                ],
                outputs: vec![
                    shieldd_sdk_shielded_pool::TransferOutputBody {
                        note_payload: shieldd_sdk_shielded_pool::NotePayload {
                            note_commitment: shieldd_sdk_tct::StateCommitment(
                                shieldd_sdk_crypto::Fq::from(5u64),
                            ),
                            ephemeral_key: shieldd_sdk_crypto::ka::Public::from_point(
                                *shieldd_sdk_crypto::generators::SPEND_AUTH
                                    * shieldd_sdk_crypto::Fr::from(6),
                            )
                            .expect("valid point"),
                            encrypted_note: shieldd_sdk_shielded_pool::NoteCiphertext(
                                [7u8; NOTE_CIPHERTEXT_BYTES],
                            ),
                            recovery_capsule: Some(recovery_capsule(7)),
                        },
                        wrapped_memo_key: WrappedMemoKey([8u8; 48]),
                        ovk_wrapped_key: OvkWrappedKey([9u8; 48]),
                        compliance_ciphertext: vec![4, 5, 6],
                        compliance_metadata: vec![15, 16],
                    },
                    shieldd_sdk_shielded_pool::TransferOutputBody {
                        note_payload: shieldd_sdk_shielded_pool::NotePayload {
                            note_commitment: shieldd_sdk_tct::StateCommitment(
                                shieldd_sdk_crypto::Fq::from(50u64),
                            ),
                            ephemeral_key: shieldd_sdk_crypto::ka::Public::from_point(
                                *shieldd_sdk_crypto::generators::SPEND_AUTH
                                    * shieldd_sdk_crypto::Fr::from(60),
                            )
                            .expect("valid point"),
                            encrypted_note: shieldd_sdk_shielded_pool::NoteCiphertext(
                                [70u8; NOTE_CIPHERTEXT_BYTES],
                            ),
                            recovery_capsule: Some(recovery_capsule(70)),
                        },
                        wrapped_memo_key: WrappedMemoKey([80u8; 48]),
                        ovk_wrapped_key: OvkWrappedKey([90u8; 48]),
                        compliance_ciphertext: vec![],
                        compliance_metadata: vec![],
                    },
                ],
                target_timestamp: 10,
                compliance_anchor: shieldd_sdk_tct::StateCommitment(shieldd_sdk_crypto::Fq::from(
                    11u64,
                )),
                asset_anchor: shieldd_sdk_tct::StateCommitment(shieldd_sdk_crypto::Fq::from(12u64)),
                routing: Default::default(),
                routing_parameter_set_id: shieldd_sdk_crypto::Fq::from(0u64),
                volume_accumulator:
                    shieldd_sdk_shielded_pool::VolumeAccumulatorPayload::canonical_fee_funding(),
                proof_context: shieldd_sdk_shielded_pool::TransferProofContext::Ordinary,
            },
            auth_sig: [17u8; 64].into(),
            proof: shieldd_sdk_shielded_pool::TransferProof::default(),
        };
        assert_eq!(transfer.body.inputs.len(), 2);
        assert_eq!(transfer.body.outputs.len(), 2);

        let tx = Transaction {
            transaction_body: TransactionBody {
                actions: vec![Action::Transfer(transfer.clone())],
                ..Default::default()
            },
            ..Default::default()
        };

        assert_eq!(tx.spent_nullifiers().collect::<Vec<_>>().len(), 2);
        assert_eq!(
            tx.spent_nullifier_count(),
            tx.spent_nullifiers().count(),
            "zero-allocation count must match the canonical iterator"
        );
        assert_eq!(
            tx.state_commitments().collect::<Vec<_>>(),
            vec![
                shieldd_sdk_tct::StateCommitment(shieldd_sdk_crypto::Fq::from(5u64)),
                shieldd_sdk_tct::StateCommitment(shieldd_sdk_crypto::Fq::from(50u64)),
                transfer.body.volume_accumulator.commitment,
            ]
        );

        let fee_funded_tx = Transaction {
            transaction_body: TransactionBody {
                actions: vec![Action::Transfer(transfer.clone())],
                fee_funding: Some(crate::FeeFunding { transfer }),
                ..Default::default()
            },
            ..Default::default()
        };
        assert_eq!(
            fee_funded_tx.spent_nullifiers().collect::<Vec<_>>().len(),
            4
        );
        assert_eq!(
            fee_funded_tx.spent_nullifier_count(),
            fee_funded_tx.spent_nullifiers().count(),
            "body and fee-funding nullifiers must share one canonical count"
        );
        assert_eq!(
            fee_funded_tx.state_commitments().collect::<Vec<_>>(),
            vec![
                shieldd_sdk_tct::StateCommitment(shieldd_sdk_crypto::Fq::from(5u64)),
                shieldd_sdk_tct::StateCommitment(shieldd_sdk_crypto::Fq::from(50u64)),
                fee_funded_tx
                    .transfers()
                    .next()
                    .unwrap()
                    .body
                    .volume_accumulator
                    .commitment,
                shieldd_sdk_tct::StateCommitment(shieldd_sdk_crypto::Fq::from(5u64)),
                shieldd_sdk_tct::StateCommitment(shieldd_sdk_crypto::Fq::from(50u64)),
            ]
        );
    }

    #[test]
    fn note_reshape_fixed_slots_do_not_filter_spent_nullifiers() {
        let inputs = (0..8)
            .map(|index| shieldd_sdk_shielded_pool::NoteReshapeInputBody {
                nullifier: Nullifier(shieldd_sdk_crypto::Fq::from(100u64 + index)),
                encrypted_backref: shieldd_sdk_shielded_pool::EncryptedBackref::try_from(
                    [u8::try_from(index + 1).expect("small test index"); 48],
                )
                .expect("fixed-size encrypted backref"),
            })
            .collect::<Vec<_>>();
        assert!(inputs
            .iter()
            .all(|input| input.encrypted_backref.len() == 48));

        let note_reshape = shieldd_sdk_shielded_pool::NoteReshape {
            body: shieldd_sdk_shielded_pool::NoteReshapeBody {
                rk: VerificationKey::from(
                    &SigningKey::<SpendAuth>::try_from(
                        (shieldd_sdk_crypto::Fr::from(200u64)).to_bytes(),
                    )
                    .expect("canonical key"),
                ),
                family_id: shieldd_sdk_shielded_pool::NoteReshapeFamilyId::EightByOne,
                anchor: shieldd_sdk_tct::Tree::default().root(),
                balance_commitment: Balance::default().commit(shieldd_sdk_crypto::Fr::from(1u64)),
                inputs,
                outputs: vec![shieldd_sdk_shielded_pool::NoteReshapeOutputBody {
                    note_payload: shieldd_sdk_shielded_pool::NotePayload {
                        note_commitment: shieldd_sdk_tct::StateCommitment(
                            shieldd_sdk_crypto::Fq::from(300u64),
                        ),
                        ephemeral_key: shieldd_sdk_crypto::ka::Public::from_point(
                            *shieldd_sdk_crypto::generators::SPEND_AUTH
                                * shieldd_sdk_crypto::Fr::from(3),
                        )
                        .expect("valid point"),
                        encrypted_note: shieldd_sdk_shielded_pool::NoteCiphertext(
                            [4u8; NOTE_CIPHERTEXT_BYTES],
                        ),
                        recovery_capsule: Some(recovery_capsule(4)),
                    },
                    wrapped_memo_key: WrappedMemoKey([5u8; 48]),
                    ovk_wrapped_key: OvkWrappedKey([6u8; 48]),
                }],
                routing_tag: Default::default(),
                routing_parameter_set_id: shieldd_sdk_crypto::Fq::from(0u64),
                asset_anchor: shieldd_sdk_tct::StateCommitment(shieldd_sdk_crypto::Fq::from(0u64)),
                compliance_anchor: shieldd_sdk_tct::StateCommitment(shieldd_sdk_crypto::Fq::from(
                    0u64,
                )),
            },
            auth_sig: [0u8; 64].into(),
            proof: shieldd_sdk_shielded_pool::NoteReshapeProof::default(),
        };
        let tx = Transaction {
            transaction_body: TransactionBody {
                actions: vec![Action::NoteReshape(note_reshape)],
                ..Default::default()
            },
            ..Default::default()
        };

        assert_eq!(tx.spent_nullifiers().collect::<Vec<_>>().len(), 8);
        assert_eq!(tx.spent_nullifier_count(), tx.spent_nullifiers().count());
    }

    #[test]
    fn compliance_scanner_transaction_id_matches_canonical_transaction_id() {
        let tx = Transaction::default();
        let proto: shieldd_sdk_proto::core::transaction::v1::Transaction = (&tx).into();
        assert_eq!(
            shieldd_sdk_compliance::scanner_transaction_id_from_proto(&proto),
            tx.id()
        );
    }

    #[test]
    fn proof_and_nullifier_counts_cover_mixed_shielded_families() {
        let tx = Transaction {
            transaction_body: TransactionBody {
                actions: vec![
                    Action::NoteReshape(shieldd_sdk_shielded_pool::NoteReshape {
                        body: shieldd_sdk_shielded_pool::NoteReshapeBody {
                rk: VerificationKey::from(&SigningKey::<SpendAuth>::try_from((shieldd_sdk_crypto::Fr::from(3u64)).to_bytes()).expect("canonical key")),
                            family_id: shieldd_sdk_shielded_pool::NoteReshapeFamilyId::EightByOne,
                            anchor: shieldd_sdk_tct::Tree::default().root(),
                            balance_commitment: Balance::default().commit(shieldd_sdk_crypto::Fr::from(1u64)),
                            inputs: vec![
                                shieldd_sdk_shielded_pool::NoteReshapeInputBody {
                                    nullifier: Nullifier(shieldd_sdk_crypto::Fq::from(2u64)),

                                    encrypted_backref:
                                        shieldd_sdk_shielded_pool::EncryptedBackref::dummy(),
                                },
                                shieldd_sdk_shielded_pool::NoteReshapeInputBody {
                                    nullifier: Nullifier(shieldd_sdk_crypto::Fq::from(4u64)),

                                    encrypted_backref:
                                        shieldd_sdk_shielded_pool::EncryptedBackref::dummy(),
                                },
                            ],
                            outputs: vec![shieldd_sdk_shielded_pool::NoteReshapeOutputBody {
                                note_payload: shieldd_sdk_shielded_pool::NotePayload {
                                    note_commitment: shieldd_sdk_tct::StateCommitment(
                                        shieldd_sdk_crypto::Fq::from(6u64),
                                    ),
                                    ephemeral_key: shieldd_sdk_crypto::ka::Public::from_point(*shieldd_sdk_crypto::generators::SPEND_AUTH * shieldd_sdk_crypto::Fr::from(7)).expect("valid point"),
                                    encrypted_note:
                                        shieldd_sdk_shielded_pool::NoteCiphertext(
                                            [8u8; NOTE_CIPHERTEXT_BYTES],
                                        ),
                                    recovery_capsule: Some(recovery_capsule(8)),
                                },
                                wrapped_memo_key: WrappedMemoKey([9u8; 48]),
                                ovk_wrapped_key: OvkWrappedKey([10u8; 48]),
                            }],
                            routing_tag: Default::default(),
                            routing_parameter_set_id: shieldd_sdk_crypto::Fq::from(0u64),
                            asset_anchor: shieldd_sdk_tct::StateCommitment(shieldd_sdk_crypto::Fq::from(0u64)),
                            compliance_anchor: shieldd_sdk_tct::StateCommitment(
                                shieldd_sdk_crypto::Fq::from(0u64),
                            ),
                        },
                        auth_sig: [11u8; 64].into(),
                        proof: shieldd_sdk_shielded_pool::NoteReshapeProof::default(),
                    }),
                    Action::NoteReshape(shieldd_sdk_shielded_pool::NoteReshape {
                        body: shieldd_sdk_shielded_pool::NoteReshapeBody {
                rk: VerificationKey::from(&SigningKey::<SpendAuth>::try_from((shieldd_sdk_crypto::Fr::from(15u64)).to_bytes()).expect("canonical key")),
                            family_id: shieldd_sdk_shielded_pool::NoteReshapeFamilyId::OneByEight,
                            anchor: shieldd_sdk_tct::Tree::default().root(),
                            balance_commitment: Balance::default().commit(shieldd_sdk_crypto::Fr::from(13u64)),
                            inputs: vec![shieldd_sdk_shielded_pool::NoteReshapeInputBody {
                                nullifier: Nullifier(shieldd_sdk_crypto::Fq::from(14u64)),

                                encrypted_backref:
                                    shieldd_sdk_shielded_pool::EncryptedBackref::dummy(),
                            }],
                            outputs: vec![
                                shieldd_sdk_shielded_pool::NoteReshapeOutputBody {
                                    note_payload: shieldd_sdk_shielded_pool::NotePayload {
                                        note_commitment: shieldd_sdk_tct::StateCommitment(
                                            shieldd_sdk_crypto::Fq::from(16u64),
                                        ),
                                        ephemeral_key: shieldd_sdk_crypto::ka::Public::from_point(*shieldd_sdk_crypto::generators::SPEND_AUTH * shieldd_sdk_crypto::Fr::from(17)).expect("valid point"),
                                        encrypted_note: shieldd_sdk_shielded_pool::NoteCiphertext(
                                            [18u8; NOTE_CIPHERTEXT_BYTES],
                                        ),
                                        recovery_capsule: Some(recovery_capsule(18)),
                                    },
                                    wrapped_memo_key: WrappedMemoKey([19u8; 48]),
                                    ovk_wrapped_key: OvkWrappedKey([20u8; 48]),
                                };
                                4
                            ],
                            routing_tag: Default::default(),
                            routing_parameter_set_id: shieldd_sdk_crypto::Fq::from(0u64),
                            asset_anchor: shieldd_sdk_tct::StateCommitment(shieldd_sdk_crypto::Fq::from(0u64)),
                            compliance_anchor: shieldd_sdk_tct::StateCommitment(
                                shieldd_sdk_crypto::Fq::from(0u64),
                            ),
                        },
                        auth_sig: [21u8; 64].into(),
                        proof: shieldd_sdk_shielded_pool::NoteReshapeProof::default(),
                    }),
                    Action::ShieldedHostWithdrawal(
                        shieldd_sdk_shielded_pool::ShieldedHostWithdrawal {
                            body: shieldd_sdk_shielded_pool::ShieldedHostWithdrawalBody {
                rk: VerificationKey::from(&SigningKey::<SpendAuth>::try_from((shieldd_sdk_crypto::Fr::from(24u64)).to_bytes()).expect("canonical key")),
                                family_id:
                                    shieldd_sdk_shielded_pool::ShieldedWithdrawalFamilyId::Canonical,
                                anchor: shieldd_sdk_tct::Tree::default().root(),
                                balance_commitment: Balance::default().commit(shieldd_sdk_crypto::Fr::from(22u64)),
                                inputs: vec![
                                    shieldd_sdk_shielded_pool::TransferInputBody {
                                        nullifier: Nullifier(shieldd_sdk_crypto::Fq::from(23u64)),

                                        encrypted_backref:
                                            shieldd_sdk_shielded_pool::EncryptedBackref::try_from(
                                                [23u8; 48],
                                            )
                                            .expect("fixed-size encrypted backref"),
                                        compliance_ciphertext: vec![],
                                    },
                                    shieldd_sdk_shielded_pool::TransferInputBody {
                                        nullifier: Nullifier(shieldd_sdk_crypto::Fq::from(25u64)),

                                        encrypted_backref:
                                            shieldd_sdk_shielded_pool::EncryptedBackref::try_from(
                                                [25u8; 48],
                                            )
                                            .expect("fixed-size encrypted backref"),
                                        compliance_ciphertext: vec![],
                                    },
                                ],
                                withdrawal: shieldd_sdk_shielded_pool::HostWithdrawal {
                                    value: Value { amount: 1u64.into(), asset_id: BASE_ASSET_DENOM.id() },
                                    destination: shieldd_sdk_shielded_pool::HostWithdrawalDestination::Transfer(
                                        shieldd_sdk_shielded_pool::HostTransfer { recipient: "bank1destination".to_owned() }
                                    ),
                                },
                                change_output:
                                    shieldd_sdk_shielded_pool::ShieldedWithdrawalChangeBody {
                                        note_payload: shieldd_sdk_shielded_pool::NotePayload {
                                            note_commitment: shieldd_sdk_tct::StateCommitment(
                                                shieldd_sdk_crypto::Fq::from(27u64),
                                            ),
                                            ephemeral_key: shieldd_sdk_crypto::ka::Public::from_point(*shieldd_sdk_crypto::generators::SPEND_AUTH * shieldd_sdk_crypto::Fr::from(28)).expect("valid point"),
                                            encrypted_note:
                                                shieldd_sdk_shielded_pool::NoteCiphertext(
                                                    [29u8; NOTE_CIPHERTEXT_BYTES],
                                                ),
                                            recovery_capsule: Some(recovery_capsule(29)),
                                        },
                                        wrapped_memo_key: WrappedMemoKey([30u8; 48]),
                                        ovk_wrapped_key: OvkWrappedKey([31u8; 48]),
                                    },
                                target_timestamp: 0,
                                compliance_anchor: shieldd_sdk_tct::StateCommitment(
                                    shieldd_sdk_crypto::Fq::from(32u64),
                                ),
                                asset_anchor: shieldd_sdk_tct::StateCommitment(shieldd_sdk_crypto::Fq::from(33u64)),
                                routing_tag: Default::default(),
                                routing_parameter_set_id: shieldd_sdk_crypto::Fq::from(0u64),
                                withdrawal_compliance_ciphertext:
                                    withdrawal_compliance_ciphertext(36),
                                volume_accumulator:
                                    shieldd_sdk_shielded_pool::VolumeAccumulatorPayload::canonical_fee_funding(),
                            },
                            auth_sig: [34u8; 64].into(),
                            proof: shieldd_sdk_shielded_pool::ShieldedWithdrawalProof::default(),
                        },
                    ),
                ],
                ..Default::default()
            },
            ..Default::default()
        };

        assert_eq!(tx.num_proofs(), 3);
        assert_eq!(
            tx.spent_nullifiers().collect::<Vec<_>>(),
            [
                Nullifier(shieldd_sdk_crypto::Fq::from(2u64)),
                Nullifier(shieldd_sdk_crypto::Fq::from(4u64)),
                Nullifier(shieldd_sdk_crypto::Fq::from(14u64)),
                Nullifier(shieldd_sdk_crypto::Fq::from(23u64)),
                Nullifier(shieldd_sdk_crypto::Fq::from(25u64)),
            ],
            "transaction-wide duplicate detection must see every fixed-slot \
             NoteReshape and shielded-withdrawal nullifier"
        );
        assert_eq!(
            tx.state_commitments().collect::<Vec<_>>(),
            [6u64, 16, 16, 16, 16, 27]
                .map(|value| shieldd_sdk_tct::StateCommitment(shieldd_sdk_crypto::Fq::from(value))),
            "mixed output commitments must retain action and slot order"
        );
        let Action::ShieldedHostWithdrawal(withdrawal) = &tx.transaction_body.actions[2] else {
            unreachable!()
        };
        assert_eq!(
            tx.volume_nullifiers().collect::<Vec<_>>(),
            vec![withdrawal.body.volume_accumulator.scoped_nullifier()]
        );
        assert_eq!(
            tx.spent_nullifier_count(),
            tx.spent_nullifiers().count(),
            "mixed-family count must match the canonical iterator"
        );
    }
}

impl DomainType for TransactionSummary {
    type Proto = pbt::TransactionSummary;
}

impl From<TransactionSummary> for pbt::TransactionSummary {
    fn from(summary: TransactionSummary) -> Self {
        pbt::TransactionSummary {
            effects: summary
                .effects
                .into_iter()
                .map(|effect| pbt::transaction_summary::Effects {
                    address: Some(effect.address.into()),
                    balance: Some(effect.balance.into()),
                })
                .collect(),
        }
    }
}

impl TryFrom<pbt::TransactionSummary> for TransactionSummary {
    type Error = anyhow::Error;

    fn try_from(pbt: pbt::TransactionSummary) -> Result<Self, Self::Error> {
        let effects = pbt
            .effects
            .into_iter()
            .map(|effect| {
                Ok(TransactionEffect {
                    address: effect
                        .address
                        .ok_or_else(|| anyhow::anyhow!("missing address field"))?
                        .try_into()?,
                    balance: effect
                        .balance
                        .ok_or_else(|| anyhow::anyhow!("missing balance field"))?
                        .try_into()?,
                })
            })
            .collect::<Result<Vec<TransactionEffect>, anyhow::Error>>()?;

        Ok(Self { effects })
    }
}

impl DomainType for TransactionBody {
    type Proto = pbt::TransactionBody;
}

impl From<TransactionBody> for pbt::TransactionBody {
    fn from(msg: TransactionBody) -> Self {
        pbt::TransactionBody {
            actions: msg.actions.into_iter().map(Into::into).collect(),
            transaction_parameters: Some(msg.transaction_parameters.into()),
            fee_funding: msg.fee_funding.map(Into::into),
            memo: msg.memo.map(Into::into),
        }
    }
}

impl TryFrom<pbt::TransactionBody> for TransactionBody {
    type Error = Error;

    fn try_from(proto: pbt::TransactionBody) -> anyhow::Result<Self, Self::Error> {
        let actions = proto
            .actions
            .into_iter()
            .map(|action| {
                action
                    .try_into()
                    .context("action malformed while parsing transaction body")
            })
            .collect::<Result<Vec<_>, _>>()?;

        let memo = proto
            .memo
            .map(TryFrom::try_from)
            .transpose()
            .context("encrypted memo malformed while parsing transaction body")?;

        let fee_funding = proto
            .fee_funding
            .map(TryFrom::try_from)
            .transpose()
            .context("fee funding malformed while parsing transaction body")?;

        let transaction_parameters = proto
            .transaction_parameters
            .ok_or_else(|| anyhow::anyhow!("transaction body missing transaction parameters"))?
            .try_into()
            .context("transaction parameters malformed")?;

        let body = TransactionBody {
            actions,
            transaction_parameters,
            fee_funding,
            memo,
        };
        Ok(body)
    }
}

impl DomainType for Transaction {
    type Proto = pbt::Transaction;
}

impl From<Transaction> for pbt::Transaction {
    fn from(msg: Transaction) -> Self {
        pbt::Transaction {
            body: Some(msg.transaction_body.into()),
            anchor: Some(msg.anchor.into()),
            binding_sig: Some(msg.binding_sig.into()),
        }
    }
}

impl From<&Transaction> for pbt::Transaction {
    fn from(msg: &Transaction) -> Self {
        Transaction {
            transaction_body: msg.transaction_body.clone(),
            anchor: msg.anchor,
            binding_sig: msg.binding_sig,
        }
        .into()
    }
}

impl TryFrom<pbt::Transaction> for Transaction {
    type Error = Error;

    fn try_from(proto: pbt::Transaction) -> anyhow::Result<Self, Self::Error> {
        let transaction_body = proto
            .body
            .ok_or_else(|| anyhow::anyhow!("transaction missing body"))?
            .try_into()
            .context("transaction body malformed")?;

        let binding_sig = proto
            .binding_sig
            .ok_or_else(|| anyhow::anyhow!("transaction missing binding signature"))?
            .try_into()
            .context("transaction binding signature malformed")?;

        let anchor = proto
            .anchor
            .ok_or_else(|| anyhow::anyhow!("transaction missing anchor"))?
            .try_into()
            .context("transaction anchor malformed")?;

        Ok(Transaction {
            transaction_body,
            binding_sig,
            anchor,
        })
    }
}

impl TryFrom<&[u8]> for Transaction {
    type Error = Error;

    fn try_from(bytes: &[u8]) -> Result<Transaction, Self::Error> {
        Self::decode_canonical(bytes)
    }
}

impl TryFrom<Vec<u8>> for Transaction {
    type Error = Error;

    fn try_from(bytes: Vec<u8>) -> Result<Transaction, Self::Error> {
        Self::try_from(&bytes[..])
    }
}

impl From<Transaction> for Vec<u8> {
    fn from(transaction: Transaction) -> Vec<u8> {
        let protobuf_serialized: pbt::Transaction = transaction.into();
        protobuf_serialized.encode_to_vec()
    }
}

impl From<&Transaction> for Vec<u8> {
    fn from(transaction: &Transaction) -> Vec<u8> {
        let protobuf_serialized: pbt::Transaction = transaction.into();
        protobuf_serialized.encode_to_vec()
    }
}
