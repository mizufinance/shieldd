use anyhow::{anyhow, ensure, Context, Error};
use decaf377::Fq;
use decaf377::Fr;
use decaf377_rdsa::{Signature, SpendAuth};
use serde::{Deserialize, Serialize};
use shieldd_sdk_asset::{asset, Balance};
use shieldd_sdk_keys::symmetric::PayloadKey;
use shieldd_sdk_keys::FullViewingKey;
use shieldd_sdk_keys::{symmetric::WrappedMemoKey, Address};
use shieldd_sdk_proto::{core::component::shielded_pool::v1 as pb, DomainType};
use shieldd_sdk_tct as tct;
use shieldd_sdk_txhash::EffectingData;

use crate::note_reshape_padding::dummy_spend_auth_sig;
use crate::note_reshape_padding::dummy_state_commitment_proof;
use crate::note_reshape_padding::{pad_to_len, HiddenArityPadder};
use crate::{
    Ics20Withdrawal, ShieldedIcs20WithdrawalChangeBody, ShieldedInputPlan, ShieldedOutputPlan,
    TransferInputBody,
};
use crate::{
    ShieldedIcs20Withdrawal, ShieldedIcs20WithdrawalChangePrivate,
    ShieldedIcs20WithdrawalChangePublic, ShieldedIcs20WithdrawalInputPublic,
    ShieldedIcs20WithdrawalOptionalInputPrivate, ShieldedIcs20WithdrawalProof,
    ShieldedIcs20WithdrawalProofPrivate, ShieldedIcs20WithdrawalProofPublic,
    ShieldedIcs20WithdrawalRequiredInputPrivate,
};

use super::{ShieldedIcs20WithdrawalBody, ShieldedIcs20WithdrawalFamilyId};

const PADDED_ICS20_WITHDRAWAL_INPUTS: usize = 2;

#[derive(Clone, Debug, Deserialize, Serialize)]
#[serde(
    try_from = "pb::ShieldedIcs20WithdrawalPlan",
    into = "pb::ShieldedIcs20WithdrawalPlan"
)]
pub struct ShieldedIcs20WithdrawalPlan {
    pub body: ShieldedIcs20WithdrawalBody,
    pub value_blinding: Fr,
    pub balance: Balance,
    pub spends: Vec<ShieldedInputPlan>,
    pub change_output: Option<ShieldedOutputPlan>,
    pub withdrawal: Ics20Withdrawal,
}

impl ShieldedIcs20WithdrawalPlan {
    pub fn new(
        family_id: ShieldedIcs20WithdrawalFamilyId,
        spends: Vec<ShieldedInputPlan>,
        change_output: Option<ShieldedOutputPlan>,
        withdrawal: Ics20Withdrawal,
        value_blinding: Fr,
    ) -> anyhow::Result<Self> {
        ensure!(
            family_id == ShieldedIcs20WithdrawalFamilyId::Canonical,
            "active shielded ICS-20 withdrawal family must be shielded_ics20_withdrawal, got {:?}",
            family_id
        );
        ensure!(
            !spends.is_empty(),
            "shielded ICS-20 withdrawal requires at least one spend"
        );
        ensure!(
            spends.len() <= PADDED_ICS20_WITHDRAWAL_INPUTS,
            "shielded_ics20_withdrawal supports at most {} spends, got {}",
            PADDED_ICS20_WITHDRAWAL_INPUTS,
            spends.len()
        );

        let asset_id = spends[0].note.asset_id();
        ensure!(
            withdrawal.denom.id() == asset_id,
            "shielded ICS-20 withdrawal payload asset must match spends"
        );
        if let Some(change_output) = &change_output {
            ensure!(
                change_output.value.asset_id == asset_id,
                "shielded ICS-20 withdrawal change output must use the same asset as spends"
            );
            ensure!(
                change_output.dest_address == spends[0].note.address(),
                "shielded ICS-20 withdrawal change must be sender-owned"
            );
        }

        let balance = spends.iter().fold(Balance::default(), |mut acc, spend| {
            acc += spend.balance();
            acc
        }) + change_output
            .iter()
            .fold(Balance::default(), |mut acc, output| {
                acc -= Balance::from(output.value);
                acc
            })
            + withdrawal.balance();

        ensure!(
            balance == Balance::default(),
            "shielded ICS-20 withdrawal must be internally balanced"
        );

        let mut plan = Self {
            body: ShieldedIcs20WithdrawalBody {
                family_id,
                anchor: tct::Tree::default().root(),
                balance_commitment: balance.commit(value_blinding),
                inputs: Vec::new(),
                withdrawal: withdrawal.clone(),
                change_output: ShieldedIcs20WithdrawalChangeBody {
                    note_payload: spends[0].note.payload(),
                    wrapped_memo_key: WrappedMemoKey([0u8; 48]),
                    ovk_wrapped_key: shieldd_sdk_keys::symmetric::OvkWrappedKey([0u8; 48]),
                },
                target_timestamp: spends[0].target_timestamp,
                compliance_anchor: spends[0].compliance_anchor,
                asset_anchor: spends[0].asset_anchor,
            },
            value_blinding,
            balance,
            spends,
            change_output,
            withdrawal,
        };
        plan.body = plan.placeholder_body();
        plan.validate_invariants()?;
        Ok(plan)
    }

    pub fn family_id(&self) -> ShieldedIcs20WithdrawalFamilyId {
        self.body.family_id
    }

    pub fn balance(&self) -> Balance {
        self.balance.clone()
    }

    pub fn refresh_body_public_inputs(&mut self) -> anyhow::Result<()> {
        let first_spend = self
            .spends
            .first()
            .ok_or_else(|| anyhow!("shielded ICS-20 withdrawal requires at least one spend"))?;
        self.body.balance_commitment = self.balance.commit(self.value_blinding);
        self.body.target_timestamp = first_spend.target_timestamp;
        self.body.compliance_anchor = first_spend.compliance_anchor;
        self.body.asset_anchor = first_spend.asset_anchor;
        self.body.withdrawal = self.withdrawal.clone();
        self.validate_invariants()
    }

    fn first_spend(&self) -> &ShieldedInputPlan {
        self.spends
            .first()
            .expect("shielded ICS-20 withdrawal plan must contain at least one real spend")
    }

    fn sender_address(&self) -> Address {
        self.first_spend().note.address()
    }

    pub fn created_output_address(&self) -> Address {
        self.change_output
            .as_ref()
            .map(|output| output.dest_address.clone())
            .unwrap_or_else(|| self.sender_address())
    }

    pub fn note_creating_output_count(&self) -> usize {
        1
    }

    fn withdrawal_asset_id(&self) -> asset::Id {
        self.first_spend().note.asset_id()
    }

    fn padder(&self) -> HiddenArityPadder {
        HiddenArityPadder {
            value_blinding: self.value_blinding,
            first_spend_randomizer: self.first_spend().randomizer,
            sender_address: self.sender_address(),
            asset_id: self.withdrawal_asset_id(),
            nullifier_domain_sep_label:
                b"shieldd.shielded_ics20_withdrawal.synthetic_dummy.nullifier",
            nullifier_seed_label:
                b"shieldd.shielded_ics20_withdrawal.synthetic_dummy.nullifier_seed",
            spend_auth_key_label:
                b"shieldd.shielded_ics20_withdrawal.synthetic_dummy.spend_auth_key",
            spend_auth_randomizer_label:
                b"shieldd.shielded_ics20_withdrawal.synthetic_dummy.spend_auth_randomizer",
            input_note_label: b"shieldd.shielded_ics20_withdrawal.synthetic_dummy.input_note",
            output_note_label: b"shieldd.shielded_ics20_withdrawal.synthetic_dummy.output_note",
        }
    }

    fn validate_invariants(&self) -> anyhow::Result<()> {
        self.withdrawal
            .validate()
            .context("invalid shielded ICS-20 withdrawal payload")?;
        ensure!(
            self.spends.len() <= PADDED_ICS20_WITHDRAWAL_INPUTS,
            "shielded ICS-20 withdrawal supports at most two spends",
        );
        self.body.validate_shape()?;

        let first_spend = self
            .spends
            .first()
            .ok_or_else(|| anyhow!("shielded ICS-20 withdrawal requires at least one spend"))?;
        ensure!(
            self.body.asset_anchor == first_spend.asset_anchor,
            "shielded ICS-20 withdrawal body asset anchor must match spends",
        );
        ensure!(
            self.body.compliance_anchor == first_spend.compliance_anchor,
            "shielded ICS-20 withdrawal body compliance anchor must match spends",
        );
        ensure!(
            self.body.target_timestamp == first_spend.target_timestamp,
            "shielded ICS-20 withdrawal body target timestamp must match spends",
        );
        ensure!(
            self.body.balance_commitment == self.balance.commit(self.value_blinding),
            "shielded ICS-20 withdrawal body balance commitment must match plan balance",
        );
        ensure!(
            self.body.withdrawal.effect_hash() == self.withdrawal.effect_hash(),
            "shielded ICS-20 withdrawal body payload must match plan withdrawal",
        );
        ensure!(
            self.withdrawal.denom.id() == first_spend.note.asset_id(),
            "shielded ICS-20 withdrawal payload asset must match spends",
        );

        for spend in &self.spends {
            ensure!(
                spend.note.asset_id() == first_spend.note.asset_id(),
                "shielded ICS-20 withdrawal spends must use the same asset",
            );
            ensure!(
                spend.asset_anchor == first_spend.asset_anchor,
                "shielded ICS-20 withdrawal spend asset anchors must match",
            );
            ensure!(
                spend.compliance_anchor == first_spend.compliance_anchor,
                "shielded ICS-20 withdrawal spend compliance anchors must match",
            );
            ensure!(
                spend.target_timestamp == first_spend.target_timestamp,
                "shielded ICS-20 withdrawal spend timestamps must match",
            );
            ensure!(
                spend.tx_blinding_nonce == first_spend.tx_blinding_nonce,
                "shielded ICS-20 withdrawal spend tx blinding nonce must match",
            );
            ensure!(
                spend.note.address() == first_spend.note.address(),
                "shielded ICS-20 withdrawal spends must use the same sender address",
            );
            ensure!(
                spend.compliance_position == first_spend.compliance_position
                    && spend.compliance_path == first_spend.compliance_path,
                "shielded ICS-20 withdrawal spends must use the same sender compliance witness",
            );
            ensure!(
                spend.is_regulated == first_spend.is_regulated,
                "shielded ICS-20 withdrawal spend regulation flags must match",
            );
        }

        if let Some(change_output) = &self.change_output {
            ensure!(
                change_output.value.asset_id == first_spend.note.asset_id(),
                "shielded ICS-20 withdrawal change must use the same asset as spends",
            );
            ensure!(
                change_output.dest_address == first_spend.note.address(),
                "shielded ICS-20 withdrawal change must be sender-owned",
            );
        }

        let recomputed_balance = self
            .spends
            .iter()
            .fold(Balance::default(), |mut acc, spend| {
                acc += spend.balance();
                acc
            })
            + self
                .change_output
                .iter()
                .fold(Balance::default(), |mut acc, output| {
                    acc -= Balance::from(output.value);
                    acc
                })
            + self.withdrawal.balance();
        ensure!(
            recomputed_balance == self.balance,
            "shielded ICS-20 withdrawal balance must equal spends plus withdrawal plus change",
        );
        ensure!(
            self.balance == Balance::default(),
            "shielded ICS-20 withdrawal must be internally balanced",
        );
        Ok(())
    }

    fn placeholder_body(&self) -> ShieldedIcs20WithdrawalBody {
        let mut inputs = self
            .spends
            .iter()
            .map(|_spend| TransferInputBody {
                nullifier: shieldd_sdk_sct::Nullifier(decaf377::Fq::from(0u64)),
                rk: decaf377_rdsa::VerificationKey::from(decaf377_rdsa::SigningKey::<
                    decaf377_rdsa::SpendAuth,
                >::from(Fr::from(0u64))),
                encrypted_backref: crate::EncryptedBackref::try_from(
                    [0u8; crate::backref::ENCRYPTED_BACKREF_LEN],
                )
                .expect("fixed-size placeholder backref is valid"),
                compliance_ciphertext: Vec::new(),
            })
            .collect::<Vec<_>>();
        let padder = self.padder();
        pad_to_len(&mut inputs, PADDED_ICS20_WITHDRAWAL_INPUTS, |slot| {
            TransferInputBody {
                nullifier: padder.synthetic_dummy_nullifier(slot),
                rk: padder.synthetic_dummy_verification_key(slot),
                encrypted_backref: crate::EncryptedBackref::try_from(
                    [0u8; crate::backref::ENCRYPTED_BACKREF_LEN],
                )
                .expect("fixed-size placeholder backref is valid"),
                compliance_ciphertext: Vec::new(),
            }
        });

        let change_output = if let Some(change_output) = &self.change_output {
            let output_note = change_output.output_note();
            ShieldedIcs20WithdrawalChangeBody {
                note_payload: output_note.payload(),
                wrapped_memo_key: WrappedMemoKey([0u8; 48]),
                ovk_wrapped_key: shieldd_sdk_keys::symmetric::OvkWrappedKey([0u8; 48]),
            }
        } else {
            let dummy_note = padder.synthetic_dummy_output_note(1);
            ShieldedIcs20WithdrawalChangeBody {
                note_payload: dummy_note.payload(),
                wrapped_memo_key: WrappedMemoKey([0u8; 48]),
                ovk_wrapped_key: shieldd_sdk_keys::symmetric::OvkWrappedKey([0u8; 48]),
            }
        };

        ShieldedIcs20WithdrawalBody {
            family_id: self.family_id(),
            anchor: tct::Tree::default().root(),
            balance_commitment: self.balance.commit(self.value_blinding),
            inputs,
            withdrawal: self.withdrawal.clone(),
            change_output,
            target_timestamp: self.first_spend().target_timestamp,
            compliance_anchor: self.first_spend().compliance_anchor,
            asset_anchor: self.first_spend().asset_anchor,
        }
    }

    fn sender_leaf(&self) -> shieldd_sdk_compliance::ComplianceLeaf {
        let spend = self.first_spend();
        spend.compliance_leaf.clone().unwrap_or_else(|| {
            shieldd_sdk_compliance::ComplianceLeaf::synthetic_unregulated(
                spend.note.address().clone(),
                spend.note.asset_id(),
            )
        })
    }

    fn withdrawal_effect_hash_limbs(&self) -> [Fq; 4] {
        let effect_hash = self.withdrawal.effect_hash();
        super::withdrawal_effect_hash_limbs(effect_hash.as_bytes())
    }

    pub fn shielded_ics20_withdrawal_public_private(
        &self,
        fvk: &FullViewingKey,
        state_commitment_proofs: &[tct::Proof],
        anchor: tct::Root,
    ) -> Result<
        (
            ShieldedIcs20WithdrawalProofPublic,
            ShieldedIcs20WithdrawalProofPrivate,
        ),
        crate::ProofError,
    > {
        self.validate_invariants()
            .map_err(|e| crate::ProofError::InvalidPublicInput(e.to_string()))?;
        if state_commitment_proofs.len() != self.spends.len() {
            return Err(crate::ProofError::InvalidPublicInput(format!(
                "shielded ICS-20 withdrawal expected {} state commitment proofs, got {}",
                self.spends.len(),
                state_commitment_proofs.len()
            )));
        }

        let mut input_publics = self
            .spends
            .iter()
            .map(|spend| {
                Ok(ShieldedIcs20WithdrawalInputPublic {
                    nullifier: spend.nullifier(fvk),
                    rk: spend.rk(fvk),
                })
            })
            .collect::<Result<Vec<_>, crate::ProofError>>()?;
        let padder = self.padder();
        pad_to_len(&mut input_publics, PADDED_ICS20_WITHDRAWAL_INPUTS, |slot| {
            ShieldedIcs20WithdrawalInputPublic {
                nullifier: padder.synthetic_dummy_nullifier(slot),
                rk: padder.synthetic_dummy_verification_key(slot),
            }
        });

        let mut real_input_privates = self
            .spends
            .iter()
            .zip(state_commitment_proofs.iter().cloned())
            .map(
                |(spend, state_commitment_proof)| ShieldedIcs20WithdrawalRequiredInputPrivate {
                    state_commitment_proof,
                    spent_note: spend.note.clone(),
                    spend_auth_randomizer: spend.randomizer,
                },
            )
            .collect::<Vec<_>>()
            .into_iter();
        let required_input = real_input_privates
            .next()
            .expect("validated withdrawal plans always contain a required spend");
        let optional_input = real_input_privates.next().map_or_else(
            || {
                let slot = 1;
                let dummy_note = padder.synthetic_dummy_input_note(slot);
                ShieldedIcs20WithdrawalOptionalInputPrivate {
                    spend: ShieldedIcs20WithdrawalRequiredInputPrivate {
                        state_commitment_proof: dummy_state_commitment_proof(dummy_note.commit()),
                        spent_note: dummy_note,
                        spend_auth_randomizer: padder.synthetic_dummy_spend_auth_randomizer(slot),
                    },
                    is_dummy: true,
                    dummy_nullifier_seed: padder.synthetic_dummy_nullifier_seed(slot),
                }
            },
            |spend| ShieldedIcs20WithdrawalOptionalInputPrivate {
                spend,
                is_dummy: false,
                dummy_nullifier_seed: Fq::from(0u64),
            },
        );
        debug_assert!(real_input_privates.next().is_none());

        let change_note = self
            .change_output
            .as_ref()
            .map(|output| output.output_note())
            .unwrap_or_else(|| self.padder().synthetic_dummy_output_note(1));
        let withdrawal_effect_hash_limbs = self.withdrawal_effect_hash_limbs();

        Ok((
            ShieldedIcs20WithdrawalProofPublic {
                family_id: self.body.family_id,
                anchor,
                balance_commitment: self.balance.commit(self.value_blinding),
                asset_anchor: self.first_spend().asset_anchor,
                compliance_anchor: self.first_spend().compliance_anchor,
                target_timestamp: Fq::from(self.first_spend().target_timestamp),
                inputs: input_publics,
                change_output: ShieldedIcs20WithdrawalChangePublic {
                    note_commitment: change_note.commit(),
                },
                outbound_asset_id: self.withdrawal.denom.id().0,
                outbound_amount: Fq::from(self.withdrawal.amount),
                withdrawal_effect_hash_limbs,
            },
            ShieldedIcs20WithdrawalProofPrivate {
                family_id: self.body.family_id,
                action_balance_blinding: self.value_blinding,
                ak: *fvk.spend_verification_key(),
                nk: *fvk.nullifier_key(),
                asset_path: self.first_spend().asset_path.clone(),
                asset_position: self.first_spend().asset_position,
                asset_indexed_leaf: self.first_spend().asset_indexed_leaf.clone(),
                is_regulated: self.first_spend().is_regulated,
                sender_compliance_path: self.first_spend().compliance_path.clone(),
                sender_compliance_position: self.first_spend().compliance_position,
                sender_leaf: self.sender_leaf(),
                required_input,
                optional_input,
                change_output: ShieldedIcs20WithdrawalChangePrivate {
                    created_note: change_note,
                },
            },
        ))
    }

    pub fn action_body(
        &self,
        fvk: &FullViewingKey,
        memo_key: &PayloadKey,
        anchor: tct::Root,
    ) -> anyhow::Result<ShieldedIcs20WithdrawalBody> {
        self.validate_invariants()?;

        let mut inputs = self
            .spends
            .iter()
            .map(|spend| {
                let mut input = spend.action_input_body(fvk);
                input.compliance_ciphertext.clear();
                input
            })
            .collect::<Vec<_>>();
        let padder = self.padder();
        pad_to_len(&mut inputs, PADDED_ICS20_WITHDRAWAL_INPUTS, |slot| {
            let dummy_note = padder.synthetic_dummy_input_note(slot);
            let nullifier = padder.synthetic_dummy_nullifier(slot);
            TransferInputBody {
                nullifier,
                rk: padder.synthetic_dummy_verification_key(slot),
                encrypted_backref: crate::Backref::new(dummy_note.commit())
                    .encrypt(&fvk.backref_key(), &nullifier),
                compliance_ciphertext: Vec::new(),
            }
        });

        let change_note = self
            .change_output
            .as_ref()
            .map(ShieldedOutputPlan::output_note)
            .unwrap_or_else(|| padder.synthetic_dummy_output_note(1));
        let esk = change_note.ephemeral_secret_key();
        let ovk_wrapped_key =
            change_note.encrypt_key(fvk.outgoing(), self.balance.commit(self.value_blinding));
        let wrapped_memo_key = WrappedMemoKey::encrypt(
            memo_key,
            esk,
            change_note.transmission_key(),
            &change_note.diversified_generator(),
        );
        let change_output = ShieldedIcs20WithdrawalChangeBody {
            note_payload: change_note.payload(),
            wrapped_memo_key,
            ovk_wrapped_key,
        };

        Ok(ShieldedIcs20WithdrawalBody {
            family_id: self.family_id(),
            anchor,
            balance_commitment: self.balance.commit(self.value_blinding),
            inputs,
            withdrawal: self.withdrawal.clone(),
            change_output,
            target_timestamp: self.first_spend().target_timestamp,
            compliance_anchor: self.first_spend().compliance_anchor,
            asset_anchor: self.first_spend().asset_anchor,
        })
    }

    #[cfg(any(unix, windows))]
    pub fn build_unauth_shielded_ics20_withdrawal(
        &self,
        fvk: &FullViewingKey,
        auth_sigs: Vec<Signature<SpendAuth>>,
        state_commitment_proofs: Vec<tct::Proof>,
        anchor: tct::Root,
        memo_key: &PayloadKey,
    ) -> Result<ShieldedIcs20Withdrawal, crate::ProofError> {
        let body = self
            .action_body(fvk, memo_key, anchor)
            .map_err(|e| crate::ProofError::InvalidPublicInput(e.to_string()))?;
        if auth_sigs.len() != self.spends.len() {
            return Err(crate::ProofError::InvalidPublicInput(format!(
                "shielded ICS-20 withdrawal expected {} auth sigs, got {}",
                self.spends.len(),
                auth_sigs.len()
            )));
        }
        let (public, private) =
            self.shielded_ics20_withdrawal_public_private(fvk, &state_commitment_proofs, anchor)?;
        let proof = ShieldedIcs20WithdrawalProof::prove(public, private)?;
        let mut auth_sigs = auth_sigs;
        while auth_sigs.len() < PADDED_ICS20_WITHDRAWAL_INPUTS {
            auth_sigs.push(dummy_spend_auth_sig());
        }

        Ok(ShieldedIcs20Withdrawal {
            body,
            auth_sigs,
            proof,
        })
    }

    pub fn shielded_ics20_withdrawal_witness_payload(
        &self,
        fvk: &FullViewingKey,
        state_commitment_proofs: Vec<tct::Proof>,
        anchor: tct::Root,
    ) -> Result<Vec<u8>, crate::ProofError> {
        let (public, private) =
            self.shielded_ics20_withdrawal_public_private(fvk, &state_commitment_proofs, anchor)?;
        crate::gnark::encode_shielded_ics20_withdrawal_witness_v6(&public, &private)
            .map_err(|e| crate::ProofError::InvalidPublicInput(e.to_string()))
    }

    pub fn build_unauth_shielded_ics20_withdrawal_with_proof(
        &self,
        fvk: &FullViewingKey,
        auth_sigs: Vec<Signature<SpendAuth>>,
        anchor: tct::Root,
        memo_key: &PayloadKey,
        proof: ShieldedIcs20WithdrawalProof,
    ) -> Result<ShieldedIcs20Withdrawal, crate::ProofError> {
        let body = self
            .action_body(fvk, memo_key, anchor)
            .map_err(|e| crate::ProofError::InvalidPublicInput(e.to_string()))?;
        if auth_sigs.len() != self.spends.len() {
            return Err(crate::ProofError::InvalidPublicInput(format!(
                "shielded ICS-20 withdrawal expected {} auth sigs, got {}",
                self.spends.len(),
                auth_sigs.len()
            )));
        }
        let mut auth_sigs = auth_sigs;
        while auth_sigs.len() < PADDED_ICS20_WITHDRAWAL_INPUTS {
            auth_sigs.push(dummy_spend_auth_sig());
        }

        Ok(ShieldedIcs20Withdrawal {
            body,
            auth_sigs,
            proof,
        })
    }

    pub fn synthetic_dummy_auth_sig(
        &self,
        slot: usize,
        effect_hash: &[u8],
    ) -> Signature<SpendAuth> {
        self.padder().synthetic_dummy_auth_sig(slot, effect_hash)
    }
}

impl DomainType for ShieldedIcs20WithdrawalPlan {
    type Proto = pb::ShieldedIcs20WithdrawalPlan;
}

impl From<ShieldedIcs20WithdrawalPlan> for pb::ShieldedIcs20WithdrawalPlan {
    fn from(value: ShieldedIcs20WithdrawalPlan) -> Self {
        Self {
            body: Some(value.body.into()),
            value_blinding: value.value_blinding.to_bytes().to_vec(),
            balance: Some(value.balance.into()),
            spends: value.spends.into_iter().map(Into::into).collect(),
            change_output: value.change_output.map(Into::into),
            withdrawal: Some(value.withdrawal.into()),
        }
    }
}

impl TryFrom<pb::ShieldedIcs20WithdrawalPlan> for ShieldedIcs20WithdrawalPlan {
    type Error = Error;

    fn try_from(value: pb::ShieldedIcs20WithdrawalPlan) -> Result<Self, Self::Error> {
        let value_blinding_bytes: [u8; 32] = value
            .value_blinding
            .try_into()
            .map_err(|_| anyhow!("malformed shielded ICS-20 withdrawal value blinding"))?;

        let plan = Self {
            body: value
                .body
                .ok_or_else(|| anyhow!("missing shielded ICS-20 withdrawal plan body"))?
                .try_into()?,
            value_blinding: Fr::from_bytes_checked(&value_blinding_bytes).map_err(|_| {
                anyhow!("malformed canonical shielded ICS-20 withdrawal value blinding")
            })?,
            balance: value
                .balance
                .ok_or_else(|| anyhow!("missing shielded ICS-20 withdrawal plan balance"))?
                .try_into()?,
            spends: value
                .spends
                .into_iter()
                .map(TryInto::try_into)
                .collect::<Result<Vec<_>, _>>()?,
            change_output: value.change_output.map(TryInto::try_into).transpose()?,
            withdrawal: value
                .withdrawal
                .ok_or_else(|| anyhow!("missing embedded shielded ICS-20 withdrawal payload"))?
                .try_into()?,
        };
        plan.validate_invariants()?;
        Ok(plan)
    }
}

#[cfg(test)]
mod tests {
    use std::{ops::Deref, str::FromStr};

    use decaf377::Fr;
    use ibc_types::core::{channel::ChannelId, client::Height as IbcHeight};
    use rand_core::OsRng;
    use shieldd_sdk_asset::{Value, BASE_ASSET_DENOM};
    use shieldd_sdk_keys::test_keys;
    use shieldd_sdk_txhash::EffectingData;

    use super::*;
    use crate::Note;

    fn test_withdrawal(amount: u64) -> Ics20Withdrawal {
        Ics20Withdrawal {
            amount: amount.into(),
            denom: BASE_ASSET_DENOM.clone(),
            destination_chain_address: "cosmos1destination".to_string(),
            return_address: test_keys::ADDRESS_0.deref().clone(),
            timeout_height: IbcHeight::new(1, 10).expect("valid timeout height"),
            timeout_time: 60_000_000_000,
            source_channel: ChannelId::from_str("channel-0").expect("valid channel id"),
            use_compat_address: false,
            ics20_memo: String::new(),
            use_transparent_address: false,
        }
    }

    fn two_spends(second_address: &Address) -> (ShieldedInputPlan, ShieldedInputPlan) {
        let value = Value {
            amount: 20u64.into(),
            asset_id: BASE_ASSET_DENOM.id(),
        };
        let first_note = Note::generate(&mut OsRng, &test_keys::ADDRESS_0, value);
        let second_note = Note::generate(&mut OsRng, second_address, value);
        let first = ShieldedInputPlan::new(&mut OsRng, first_note, 0u64.into());
        let mut second = ShieldedInputPlan::new(&mut OsRng, second_note, 1u64.into());
        second.asset_anchor = first.asset_anchor;
        second.compliance_anchor = first.compliance_anchor;
        second.target_timestamp = first.target_timestamp;
        second.tx_blinding_nonce = first.tx_blinding_nonce;
        second.is_regulated = first.is_regulated;
        second.compliance_path = first.compliance_path.clone();
        second.compliance_position = first.compliance_position;
        (first, second)
    }

    fn one_spend_plan() -> ShieldedIcs20WithdrawalPlan {
        let value = Value {
            amount: 40u64.into(),
            asset_id: BASE_ASSET_DENOM.id(),
        };
        let note = Note::generate(&mut OsRng, &test_keys::ADDRESS_0, value);
        let spend = ShieldedInputPlan::new(&mut OsRng, note, 0u64.into());
        ShieldedIcs20WithdrawalPlan::new(
            ShieldedIcs20WithdrawalFamilyId::Canonical,
            vec![spend],
            None,
            test_withdrawal(40),
            Fr::from(7u64),
        )
        .expect("one-spend withdrawal plan should be valid")
    }

    #[test]
    fn new_plan_builds_padded_body_with_change() {
        let spend_value = Value {
            amount: 50_000u64.into(),
            asset_id: BASE_ASSET_DENOM.id(),
        };
        let change_value = Value {
            amount: 10_000u64.into(),
            asset_id: BASE_ASSET_DENOM.id(),
        };
        let note = Note::generate(&mut OsRng, &test_keys::ADDRESS_0, spend_value);
        let spend = ShieldedInputPlan::new(&mut OsRng, note, 0u64.into());
        let change = ShieldedOutputPlan::new(
            &mut OsRng,
            change_value,
            test_keys::ADDRESS_0.deref().clone(),
        );
        let withdrawal = Ics20Withdrawal {
            amount: 40_000u64.into(),
            denom: BASE_ASSET_DENOM.clone(),
            destination_chain_address: "cosmos1destination".to_string(),
            return_address: test_keys::ADDRESS_0.deref().clone(),
            timeout_height: IbcHeight::new(1, 10).expect("valid timeout height"),
            timeout_time: 60_000_000_000,
            source_channel: ChannelId::from_str("channel-0").expect("valid channel id"),
            use_compat_address: false,
            ics20_memo: String::new(),
            use_transparent_address: false,
        };

        let plan = ShieldedIcs20WithdrawalPlan::new(
            ShieldedIcs20WithdrawalFamilyId::Canonical,
            vec![spend],
            Some(change),
            withdrawal.clone(),
            Fr::from(7u64),
        )
        .expect("plan should be valid");

        assert_eq!(plan.body.inputs.len(), 2);
        assert_eq!(plan.body.withdrawal.effect_hash(), withdrawal.effect_hash());
        assert!(plan
            .body
            .inputs
            .iter()
            .all(|input| input.encrypted_backref.len() == crate::backref::ENCRYPTED_BACKREF_LEN));

        let body = plan
            .action_body(
                &test_keys::FULL_VIEWING_KEY,
                &[7u8; 32].into(),
                shieldd_sdk_tct::Tree::default().root(),
            )
            .expect("body should build");
        assert_eq!(body.inputs.len(), 2);
        assert_eq!(body.withdrawal.effect_hash(), withdrawal.effect_hash());
        Note::decrypt_key(
            body.change_output.ovk_wrapped_key.clone(),
            body.change_output.note_payload.note_commitment,
            body.balance_commitment,
            test_keys::FULL_VIEWING_KEY.outgoing(),
            &body.change_output.note_payload.ephemeral_key,
        )
        .expect("withdrawal change key must unwrap with the serialized action commitment");
        assert!(
            !body.inputs[1].encrypted_backref.is_empty(),
            "synthetic input backrefs must be indistinguishable in length from real inputs"
        );
        let expected_dummy_note = plan.padder().synthetic_dummy_input_note(1);
        let decrypted = body.inputs[1]
            .encrypted_backref
            .decrypt(
                &test_keys::FULL_VIEWING_KEY.backref_key(),
                &body.inputs[1].nullifier,
            )
            .expect("decrypt synthetic input backref");
        assert_eq!(
            decrypted,
            Some(crate::Backref::new(expected_dummy_note.commit()))
        );
    }

    #[test]
    fn new_plan_rejects_multi_spend_sender_mismatch() {
        let (first, second) = two_spends(&test_keys::ADDRESS_1);
        let err = ShieldedIcs20WithdrawalPlan::new(
            ShieldedIcs20WithdrawalFamilyId::Canonical,
            vec![first, second],
            None,
            test_withdrawal(40),
            Fr::from(7u64),
        )
        .expect_err("sender mismatch must fail before proving");
        assert!(err
            .to_string()
            .contains("spends must use the same sender address"));
    }

    #[test]
    fn new_plan_rejects_multi_spend_compliance_witness_mismatch() {
        let (first, mut second) = two_spends(&test_keys::ADDRESS_0);
        second.compliance_position = second.compliance_position.wrapping_add(1);
        let err = ShieldedIcs20WithdrawalPlan::new(
            ShieldedIcs20WithdrawalFamilyId::Canonical,
            vec![first, second],
            None,
            test_withdrawal(40),
            Fr::from(7u64),
        )
        .expect_err("sender compliance witness mismatch must fail before proving");
        assert!(err.to_string().contains("same sender compliance witness"));
    }

    #[test]
    fn new_plan_rejects_multi_spend_regulation_mismatch() {
        let (first, mut second) = two_spends(&test_keys::ADDRESS_0);
        second.is_regulated = !first.is_regulated;
        let err = ShieldedIcs20WithdrawalPlan::new(
            ShieldedIcs20WithdrawalFamilyId::Canonical,
            vec![first, second],
            None,
            test_withdrawal(40),
            Fr::from(7u64),
        )
        .expect_err("regulation mismatch must fail before proving");
        assert!(err
            .to_string()
            .contains("spend regulation flags must match"));
    }

    #[test]
    fn new_plan_rejects_non_sender_owned_change() {
        let spend_value = Value {
            amount: 50_000u64.into(),
            asset_id: BASE_ASSET_DENOM.id(),
        };
        let change_value = Value {
            amount: 10_000u64.into(),
            asset_id: BASE_ASSET_DENOM.id(),
        };
        let note = Note::generate(&mut OsRng, &test_keys::ADDRESS_0, spend_value);
        let spend = ShieldedInputPlan::new(&mut OsRng, note, 0u64.into());
        let bad_change = ShieldedOutputPlan::new(
            &mut OsRng,
            change_value,
            test_keys::ADDRESS_1.deref().clone(),
        );
        let withdrawal = Ics20Withdrawal {
            amount: 40_000u64.into(),
            denom: BASE_ASSET_DENOM.clone(),
            destination_chain_address: "cosmos1destination".to_string(),
            return_address: test_keys::ADDRESS_0.deref().clone(),
            timeout_height: IbcHeight::new(1, 10).expect("valid timeout height"),
            timeout_time: 60_000_000_000,
            source_channel: ChannelId::from_str("channel-0").expect("valid channel id"),
            use_compat_address: false,
            ics20_memo: String::new(),
            use_transparent_address: false,
        };

        let err = ShieldedIcs20WithdrawalPlan::new(
            ShieldedIcs20WithdrawalFamilyId::Canonical,
            vec![spend],
            Some(bad_change),
            withdrawal,
            Fr::from(7u64),
        )
        .expect_err("non-sender-owned change must be rejected");

        assert!(err
            .to_string()
            .contains("shielded ICS-20 withdrawal change must be sender-owned"));
    }

    #[test]
    fn plan_proto_rejects_stale_body_public_inputs() {
        let plan = one_spend_plan();
        let mut proto: pb::ShieldedIcs20WithdrawalPlan = plan.into();
        proto
            .body
            .as_mut()
            .expect("withdrawal plan body")
            .target_timestamp += 1;

        let err = ShieldedIcs20WithdrawalPlan::try_from(proto)
            .expect_err("deserialization must reject a stale plan body");
        assert!(err
            .to_string()
            .contains("body target timestamp must match spends"));
    }

    #[test]
    fn plan_construction_and_decode_reject_invalid_withdrawal_payload() {
        let value = Value {
            amount: 40u64.into(),
            asset_id: BASE_ASSET_DENOM.id(),
        };
        let note = Note::generate(&mut OsRng, &test_keys::ADDRESS_0, value);
        let spend = ShieldedInputPlan::new(&mut OsRng, note, 0u64.into());
        let mut invalid_withdrawal = test_withdrawal(40);
        invalid_withdrawal.timeout_time = 0;
        let err = ShieldedIcs20WithdrawalPlan::new(
            ShieldedIcs20WithdrawalFamilyId::Canonical,
            vec![spend],
            None,
            invalid_withdrawal,
            Fr::from(7u64),
        )
        .expect_err("plan construction must reject an invalid withdrawal payload");
        assert!(format!("{err:#}").contains("timeout time must be non-zero"));

        let mut proto: pb::ShieldedIcs20WithdrawalPlan = one_spend_plan().into();
        proto
            .withdrawal
            .as_mut()
            .expect("plan withdrawal")
            .timeout_time = 0;
        proto
            .body
            .as_mut()
            .and_then(|body| body.withdrawal.as_mut())
            .expect("body withdrawal")
            .timeout_time = 0;
        let err = ShieldedIcs20WithdrawalPlan::try_from(proto)
            .expect_err("plan decoding must reject an invalid withdrawal payload");
        assert!(format!("{err:#}").contains("timeout time must be non-zero"));
    }

    #[test]
    fn body_proto_rejects_wrong_fixed_input_count() {
        let plan = one_spend_plan();
        let mut proto: pb::ShieldedIcs20WithdrawalBody = plan.body.into();
        proto.inputs.pop();

        let err = ShieldedIcs20WithdrawalBody::try_from(proto)
            .expect_err("body decoding must enforce the fixed family shape");
        assert!(err.to_string().contains("expects 2 inputs, got 1"));
    }

    #[test]
    fn refresh_body_public_inputs_resyncs_enriched_plan() {
        let mut plan = one_spend_plan();
        let new_asset_anchor = tct::StateCommitment(Fq::from(0xA55E7u64));
        let new_compliance_anchor = tct::StateCommitment(Fq::from(0xC0FF1u64));
        let new_timestamp = plan.spends[0].target_timestamp + 42;
        plan.spends[0].asset_anchor = new_asset_anchor;
        plan.spends[0].compliance_anchor = new_compliance_anchor;
        plan.spends[0].target_timestamp = new_timestamp;
        plan.withdrawal.ics20_memo = "enriched compliance memo".to_owned();

        let err = plan
            .validate_invariants()
            .expect_err("stale body must be rejected before refresh");
        assert!(err
            .to_string()
            .contains("body asset anchor must match spends"));

        plan.refresh_body_public_inputs()
            .expect("refresh should reconcile the enriched plan");
        assert_eq!(plan.body.asset_anchor, new_asset_anchor);
        assert_eq!(plan.body.compliance_anchor, new_compliance_anchor);
        assert_eq!(plan.body.target_timestamp, new_timestamp);
        assert_eq!(
            plan.body.withdrawal.effect_hash(),
            plan.withdrawal.effect_hash()
        );
        assert_eq!(
            plan.body.balance_commitment,
            plan.balance.commit(plan.value_blinding)
        );
    }
}
