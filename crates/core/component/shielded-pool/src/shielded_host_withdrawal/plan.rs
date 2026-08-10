use anyhow::{anyhow, ensure, Error};
use decaf377::{Fq, Fr};
use decaf377_rdsa::{Signature, SpendAuth};
use serde::{Deserialize, Serialize};
use shieldd_sdk_asset::{asset, Balance};
use shieldd_sdk_keys::{
    symmetric::{PayloadKey, WrappedMemoKey},
    Address, FullViewingKey,
};
use shieldd_sdk_proto::{core::component::shielded_pool::v1 as pb, DomainType};
use shieldd_sdk_tct as tct;
use shieldd_sdk_txhash::EffectingData;

use crate::{
    discovery::Precision,
    note_reshape_padding::{
        dummy_spend_auth_sig, dummy_state_commitment_proof, pad_to_len, HiddenArityPadder,
    },
    HostWithdrawal, ShieldedHostWithdrawal, ShieldedIcs20WithdrawalChangeBody,
    ShieldedIcs20WithdrawalChangePrivate, ShieldedIcs20WithdrawalChangePublic,
    ShieldedIcs20WithdrawalFamilyId, ShieldedIcs20WithdrawalInputPrivate,
    ShieldedIcs20WithdrawalInputPublic, ShieldedIcs20WithdrawalProof,
    ShieldedIcs20WithdrawalProofPrivate, ShieldedIcs20WithdrawalProofPublic, ShieldedInputPlan,
    ShieldedOutputPlan, TransferInputBody,
};

use super::ShieldedHostWithdrawalBody;

const PADDED_HOST_WITHDRAWAL_INPUTS: usize = 2;

#[derive(Clone, Debug, Deserialize, Serialize)]
#[serde(
    try_from = "pb::ShieldedHostWithdrawalPlan",
    into = "pb::ShieldedHostWithdrawalPlan"
)]
pub struct ShieldedHostWithdrawalPlan {
    pub body: ShieldedHostWithdrawalBody,
    pub value_blinding: Fr,
    pub balance: Balance,
    pub spends: Vec<ShieldedInputPlan>,
    pub change_output: Option<ShieldedOutputPlan>,
    pub withdrawal: HostWithdrawal,
    pub discovery_precision: Precision,
}

impl ShieldedHostWithdrawalPlan {
    pub fn new(
        family_id: ShieldedIcs20WithdrawalFamilyId,
        spends: Vec<ShieldedInputPlan>,
        change_output: Option<ShieldedOutputPlan>,
        withdrawal: HostWithdrawal,
        value_blinding: Fr,
    ) -> anyhow::Result<Self> {
        ensure!(
            family_id == ShieldedIcs20WithdrawalFamilyId::Canonical,
            "active shielded host withdrawal family must be canonical, got {:?}",
            family_id
        );
        ensure!(
            !spends.is_empty(),
            "shielded host withdrawal requires at least one spend"
        );
        ensure!(
            spends.len() <= PADDED_HOST_WITHDRAWAL_INPUTS,
            "shielded host withdrawal supports at most {} spends, got {}",
            PADDED_HOST_WITHDRAWAL_INPUTS,
            spends.len()
        );
        withdrawal.validate()?;

        let asset_id = spends[0].note.asset_id();
        ensure!(
            withdrawal.value.asset_id == asset_id,
            "shielded host withdrawal payload asset must match spends"
        );
        if let Some(change_output) = &change_output {
            ensure!(
                change_output.value.asset_id == asset_id,
                "shielded host withdrawal change output must use the same asset as spends"
            );
            ensure!(
                change_output.dest_address == spends[0].note.address(),
                "shielded host withdrawal change must be sender-owned"
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
            "shielded host withdrawal must be internally balanced"
        );

        let mut plan = Self {
            body: ShieldedHostWithdrawalBody {
                family_id,
                anchor: tct::Tree::default().root(),
                balance_commitment: balance.commit(value_blinding),
                inputs: Vec::new(),
                withdrawal: withdrawal.clone(),
                change_output: ShieldedIcs20WithdrawalChangeBody {
                    note_payload: spends[0].note.payload(Precision::default()),
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
            discovery_precision: Precision::default(),
        };
        plan.body = plan.placeholder_body();
        Ok(plan)
    }

    pub fn family_id(&self) -> ShieldedIcs20WithdrawalFamilyId {
        self.body.family_id
    }

    pub fn set_discovery_precision(&mut self, precision: Precision) {
        self.discovery_precision = precision;
        self.body = self.placeholder_body();
    }

    pub fn balance(&self) -> Balance {
        self.balance.clone()
    }

    fn first_spend(&self) -> &ShieldedInputPlan {
        self.spends
            .first()
            .expect("shielded host withdrawal plan must contain at least one real spend")
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
        self.withdrawal.value.asset_id
    }

    fn padder(&self) -> HiddenArityPadder {
        HiddenArityPadder {
            value_blinding: self.value_blinding,
            first_spend_randomizer: self.first_spend().randomizer,
            sender_address: self.sender_address(),
            asset_id: self.withdrawal_asset_id(),
            // Host withdrawals reuse the ICS-20 circuit and its fixed dummy-nullifier domain.
            nullifier_domain_sep_label:
                b"shieldd.shielded_ics20_withdrawal.synthetic_dummy.nullifier",
            nullifier_seed_label:
                b"shieldd.shielded_host_withdrawal.synthetic_dummy.nullifier_seed",
            spend_auth_key_label:
                b"shieldd.shielded_host_withdrawal.synthetic_dummy.spend_auth_key",
            spend_auth_randomizer_label:
                b"shieldd.shielded_host_withdrawal.synthetic_dummy.spend_auth_randomizer",
            input_note_label: b"shieldd.shielded_host_withdrawal.synthetic_dummy.input_note",
            output_note_label: b"shieldd.shielded_host_withdrawal.synthetic_dummy.output_note",
        }
    }

    fn validate_invariants(&self) -> anyhow::Result<()> {
        ensure!(
            self.spends.len() <= PADDED_HOST_WITHDRAWAL_INPUTS,
            "shielded host withdrawal supports at most two spends",
        );
        self.body.validate_shape()?;
        self.withdrawal.validate()?;

        let first_spend = self
            .spends
            .first()
            .ok_or_else(|| anyhow!("shielded host withdrawal requires at least one spend"))?;
        ensure!(
            self.withdrawal.value.asset_id == first_spend.note.asset_id(),
            "shielded host withdrawal payload asset must match spends",
        );

        for spend in &self.spends {
            ensure!(
                spend.note.asset_id() == first_spend.note.asset_id(),
                "shielded host withdrawal spends must use the same asset",
            );
            ensure!(
                spend.asset_anchor == first_spend.asset_anchor,
                "shielded host withdrawal spend asset anchors must match",
            );
            ensure!(
                spend.compliance_anchor == first_spend.compliance_anchor,
                "shielded host withdrawal spend compliance anchors must match",
            );
            ensure!(
                spend.target_timestamp == first_spend.target_timestamp,
                "shielded host withdrawal spend timestamps must match",
            );
            ensure!(
                spend.tx_blinding_nonce == first_spend.tx_blinding_nonce,
                "shielded host withdrawal spend tx blinding nonce must match",
            );
        }

        if let Some(change_output) = &self.change_output {
            ensure!(
                change_output.value.asset_id == first_spend.note.asset_id(),
                "shielded host withdrawal change must use the same asset as spends",
            );
            ensure!(
                change_output.dest_address == first_spend.note.address(),
                "shielded host withdrawal change must be sender-owned",
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
            "shielded host withdrawal balance must equal spends plus withdrawal plus change",
        );
        ensure!(
            self.balance == Balance::default(),
            "shielded host withdrawal must be internally balanced",
        );
        Ok(())
    }

    fn placeholder_body(&self) -> ShieldedHostWithdrawalBody {
        let mut inputs = self
            .spends
            .iter()
            .map(|_| TransferInputBody {
                nullifier: shieldd_sdk_sct::Nullifier(Fq::from(0u64)),
                rk: decaf377_rdsa::VerificationKey::from(
                    decaf377_rdsa::SigningKey::<SpendAuth>::from(Fr::from(0u64)),
                ),
                encrypted_backref: crate::EncryptedBackref::dummy(),
                compliance_ciphertext: Vec::new(),
            })
            .collect::<Vec<_>>();
        let padder = self.padder();
        pad_to_len(&mut inputs, PADDED_HOST_WITHDRAWAL_INPUTS, |slot| {
            TransferInputBody {
                nullifier: padder.synthetic_dummy_nullifier(slot),
                rk: padder.synthetic_dummy_verification_key(slot),
                encrypted_backref: crate::EncryptedBackref::dummy(),
                compliance_ciphertext: Vec::new(),
            }
        });

        let change_output = if let Some(change_output) = &self.change_output {
            ShieldedIcs20WithdrawalChangeBody {
                note_payload: change_output
                    .output_note()
                    .payload(self.discovery_precision),
                wrapped_memo_key: WrappedMemoKey([0u8; 48]),
                ovk_wrapped_key: shieldd_sdk_keys::symmetric::OvkWrappedKey([0u8; 48]),
            }
        } else {
            ShieldedIcs20WithdrawalChangeBody {
                note_payload: padder
                    .synthetic_dummy_output_note(1)
                    .payload(self.discovery_precision),
                wrapped_memo_key: WrappedMemoKey([0u8; 48]),
                ovk_wrapped_key: shieldd_sdk_keys::symmetric::OvkWrappedKey([0u8; 48]),
            }
        };

        ShieldedHostWithdrawalBody {
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

    fn withdrawal_effect_hash_limbs(&self) -> (Fq, Fq) {
        let effect_hash = self.withdrawal.effect_hash();
        let bytes = effect_hash.as_bytes();
        (
            Fq::from_le_bytes_mod_order(&bytes[..32]),
            Fq::from_le_bytes_mod_order(&bytes[32..]),
        )
    }

    pub fn proof_public_private(
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
                "shielded host withdrawal expected {} state commitment proofs, got {}",
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
        pad_to_len(&mut input_publics, PADDED_HOST_WITHDRAWAL_INPUTS, |slot| {
            ShieldedIcs20WithdrawalInputPublic {
                nullifier: padder.synthetic_dummy_nullifier(slot),
                rk: padder.synthetic_dummy_verification_key(slot),
            }
        });

        let mut input_privates = self
            .spends
            .iter()
            .zip(state_commitment_proofs.iter().cloned())
            .map(|(spend, state_commitment_proof)| {
                Ok(ShieldedIcs20WithdrawalInputPrivate {
                    state_commitment_proof,
                    spent_note: spend.note.clone(),
                    spend_auth_randomizer: spend.randomizer,
                    is_dummy: false,
                    dummy_nullifier_seed: Fq::from(0u64),
                    dummy_spend_auth_key: Fr::from(0u64),
                })
            })
            .collect::<Result<Vec<_>, crate::ProofError>>()?;
        pad_to_len(&mut input_privates, PADDED_HOST_WITHDRAWAL_INPUTS, |slot| {
            let dummy_note = padder.synthetic_dummy_input_note(slot);
            ShieldedIcs20WithdrawalInputPrivate {
                state_commitment_proof: dummy_state_commitment_proof(dummy_note.commit()),
                spent_note: dummy_note,
                spend_auth_randomizer: padder.synthetic_dummy_spend_auth_randomizer(slot),
                is_dummy: true,
                dummy_nullifier_seed: padder.synthetic_dummy_nullifier_seed(slot),
                dummy_spend_auth_key: padder.synthetic_dummy_spend_auth_key(slot),
            }
        });

        let change_note = self
            .change_output
            .as_ref()
            .map(ShieldedOutputPlan::output_note)
            .unwrap_or_else(|| self.padder().synthetic_dummy_output_note(1));
        let (withdrawal_effect_hash_lo, withdrawal_effect_hash_hi) =
            self.withdrawal_effect_hash_limbs();

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
                outbound_asset_id: self.withdrawal.value.asset_id.0,
                outbound_amount: Fq::from(self.withdrawal.value.amount),
                withdrawal_effect_hash_lo,
                withdrawal_effect_hash_hi,
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
                inputs: input_privates,
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
    ) -> anyhow::Result<ShieldedHostWithdrawalBody> {
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
        pad_to_len(&mut inputs, PADDED_HOST_WITHDRAWAL_INPUTS, |slot| {
            TransferInputBody {
                nullifier: padder.synthetic_dummy_nullifier(slot),
                rk: padder.synthetic_dummy_verification_key(slot),
                encrypted_backref: crate::EncryptedBackref::dummy(),
                compliance_ciphertext: Vec::new(),
            }
        });

        let change_output = if let Some(change_output) = &self.change_output {
            let (note_payload, wrapped_memo_key, ovk_wrapped_key) = change_output
                .action_output_parts(fvk.outgoing(), memo_key, self.discovery_precision);
            ShieldedIcs20WithdrawalChangeBody {
                note_payload,
                wrapped_memo_key,
                ovk_wrapped_key,
            }
        } else {
            let dummy_note = padder.synthetic_dummy_output_note(1);
            let esk = dummy_note.ephemeral_secret_key();
            let ovk_wrapped_key =
                dummy_note.encrypt_key(fvk.outgoing(), self.balance.commit(self.value_blinding));
            let wrapped_memo_key = WrappedMemoKey::encrypt(
                memo_key,
                esk,
                dummy_note.transmission_key(),
                &dummy_note.diversified_generator(),
            );
            ShieldedIcs20WithdrawalChangeBody {
                note_payload: dummy_note.payload(self.discovery_precision),
                wrapped_memo_key,
                ovk_wrapped_key,
            }
        };

        Ok(ShieldedHostWithdrawalBody {
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
    pub fn shielded_host_withdrawal(
        &self,
        fvk: &FullViewingKey,
        auth_sigs: Vec<Signature<SpendAuth>>,
        state_commitment_proofs: Vec<tct::Proof>,
        anchor: tct::Root,
        memo_key: &PayloadKey,
    ) -> Result<ShieldedHostWithdrawal, crate::ProofError> {
        if auth_sigs.len() != self.spends.len() {
            return Err(crate::ProofError::InvalidPublicInput(format!(
                "shielded host withdrawal expected {} auth sigs, got {}",
                self.spends.len(),
                auth_sigs.len()
            )));
        }
        let (public, private) = self.proof_public_private(fvk, &state_commitment_proofs, anchor)?;
        let proof = ShieldedIcs20WithdrawalProof::prove(public, private)?;
        self.with_proof(fvk, auth_sigs, anchor, memo_key, proof)
    }

    pub fn with_proof(
        &self,
        fvk: &FullViewingKey,
        auth_sigs: Vec<Signature<SpendAuth>>,
        anchor: tct::Root,
        memo_key: &PayloadKey,
        proof: ShieldedIcs20WithdrawalProof,
    ) -> Result<ShieldedHostWithdrawal, crate::ProofError> {
        let body = self
            .action_body(fvk, memo_key, anchor)
            .map_err(|e| crate::ProofError::InvalidPublicInput(e.to_string()))?;
        if auth_sigs.len() != self.spends.len() {
            return Err(crate::ProofError::InvalidPublicInput(format!(
                "shielded host withdrawal expected {} auth sigs, got {}",
                self.spends.len(),
                auth_sigs.len()
            )));
        }
        let mut auth_sigs = auth_sigs;
        while auth_sigs.len() < PADDED_HOST_WITHDRAWAL_INPUTS {
            auth_sigs.push(dummy_spend_auth_sig());
        }

        Ok(ShieldedHostWithdrawal {
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

impl DomainType for ShieldedHostWithdrawalPlan {
    type Proto = pb::ShieldedHostWithdrawalPlan;
}

impl From<ShieldedHostWithdrawalPlan> for pb::ShieldedHostWithdrawalPlan {
    fn from(value: ShieldedHostWithdrawalPlan) -> Self {
        Self {
            body: Some(value.body.into()),
            value_blinding: value.value_blinding.to_bytes().to_vec(),
            balance: Some(value.balance.into()),
            spends: value.spends.into_iter().map(Into::into).collect(),
            change_output: value.change_output.map(Into::into),
            withdrawal: Some(value.withdrawal.into()),
            discovery_precision_bits: value.discovery_precision.into(),
        }
    }
}

impl TryFrom<pb::ShieldedHostWithdrawalPlan> for ShieldedHostWithdrawalPlan {
    type Error = Error;

    fn try_from(value: pb::ShieldedHostWithdrawalPlan) -> Result<Self, Self::Error> {
        let value_blinding_bytes: [u8; 32] = value
            .value_blinding
            .try_into()
            .map_err(|_| anyhow!("malformed shielded host withdrawal value blinding"))?;

        let plan = Self {
            body: value
                .body
                .ok_or_else(|| anyhow!("missing shielded host withdrawal plan body"))?
                .try_into()?,
            value_blinding: Fr::from_bytes_checked(&value_blinding_bytes).map_err(|_| {
                anyhow!("malformed canonical shielded host withdrawal value blinding")
            })?,
            balance: value
                .balance
                .ok_or_else(|| anyhow!("missing shielded host withdrawal plan balance"))?
                .try_into()?,
            spends: value
                .spends
                .into_iter()
                .map(TryInto::try_into)
                .collect::<Result<Vec<_>, _>>()?,
            change_output: value.change_output.map(TryInto::try_into).transpose()?,
            withdrawal: value
                .withdrawal
                .ok_or_else(|| anyhow!("missing embedded shielded host withdrawal payload"))?
                .try_into()?,
            discovery_precision: value.discovery_precision_bits.try_into()?,
        };
        plan.validate_invariants()?;
        Ok(plan)
    }
}

#[cfg(test)]
mod tests {
    use std::ops::Deref;

    use rand_core::OsRng;
    use shieldd_sdk_asset::{Value, BASE_ASSET_DENOM};
    use shieldd_sdk_keys::test_keys;
    use shieldd_sdk_sct::Nullifier;

    use super::*;
    use crate::{
        shielded_ics20_withdrawal::test_runtime, HostTransfer, HostWithdrawalDestination, Note,
        ShieldedIcs20WithdrawalProof, ShieldedIcs20WithdrawalProofPrivate,
        ShieldedIcs20WithdrawalProofPublic,
    };

    fn padded_proof_inputs() -> (
        ShieldedIcs20WithdrawalProofPublic,
        ShieldedIcs20WithdrawalProofPrivate,
    ) {
        let value = Value {
            amount: 42u64.into(),
            asset_id: BASE_ASSET_DENOM.id(),
        };
        let note = Note::generate(&mut OsRng, &test_keys::ADDRESS_0, value);
        let mut tree = tct::Tree::new();
        tree.insert(tct::Witness::Keep, note.commit())
            .expect("insert withdrawal note");
        let state_commitment_proof = tree
            .witness(note.commit())
            .expect("witness withdrawal note");
        let spend = ShieldedInputPlan::new(&mut OsRng, note, state_commitment_proof.position());
        let withdrawal = HostWithdrawal {
            value,
            destination: HostWithdrawalDestination::Transfer(HostTransfer {
                recipient: "bank1recipient".to_owned(),
            }),
        };
        let plan = ShieldedHostWithdrawalPlan::new(
            ShieldedIcs20WithdrawalFamilyId::Canonical,
            vec![spend],
            None,
            withdrawal,
            Fr::from(7u64),
        )
        .expect("plan should be valid");

        plan.proof_public_private(
            &test_keys::FULL_VIEWING_KEY,
            &[state_commitment_proof],
            tree.root(),
        )
        .expect("derive host withdrawal proof inputs")
    }

    #[test]
    fn new_plan_builds_padded_host_withdrawal_body() {
        let value = Value {
            amount: 42u64.into(),
            asset_id: BASE_ASSET_DENOM.id(),
        };
        let note = Note::generate(&mut OsRng, &test_keys::ADDRESS_0, value);
        let spend = ShieldedInputPlan::new(&mut OsRng, note, 0u64.into());
        let withdrawal = HostWithdrawal {
            value,
            destination: HostWithdrawalDestination::Transfer(HostTransfer {
                recipient: "bank1recipient".to_owned(),
            }),
        };

        let plan = ShieldedHostWithdrawalPlan::new(
            ShieldedIcs20WithdrawalFamilyId::Canonical,
            vec![spend],
            None,
            withdrawal.clone(),
            Fr::from(7u64),
        )
        .expect("plan should be valid");

        assert_eq!(plan.body.inputs.len(), 2);
        assert_eq!(plan.body.withdrawal.effect_hash(), withdrawal.effect_hash());
        assert_eq!(
            plan.created_output_address(),
            test_keys::ADDRESS_0.deref().clone()
        );
    }

    #[test]
    fn padded_spend_uses_shared_withdrawal_circuit_nullifier_domain() {
        let (public, private) = padded_proof_inputs();
        let dummy = &private.inputs[1];
        let domain = Fq::from_le_bytes_mod_order(
            blake2b_simd::blake2b(b"shieldd.shielded_ics20_withdrawal.synthetic_dummy.nullifier")
                .as_bytes(),
        );
        let expected = Nullifier(poseidon377::hash_3(
            &domain,
            (
                dummy.dummy_nullifier_seed,
                Fq::from_le_bytes_mod_order(&dummy.spend_auth_randomizer.to_bytes()),
                Fq::from(1u64),
            ),
        ));

        assert_eq!(public.inputs[1].nullifier, expected);
    }

    #[cfg(any(unix, windows))]
    #[test]
    fn padded_host_withdrawal_proof_roundtrip() {
        if test_runtime::should_skip_shielded_ics20_withdrawal_proof_roundtrip_tests() {
            return;
        }

        let (public, private) = padded_proof_inputs();
        let proof = ShieldedIcs20WithdrawalProof::prove(public.clone(), private)
            .expect("padded host withdrawal proof should generate");
        proof
            .verify(&public)
            .expect("padded host withdrawal proof should verify");
    }
}
