//! Private preparation after authorized recovery and local authenticated history replay.
//!
//! The caller supplies an authenticated current leaf and retained SCT paths. This
//! module does not authorize capsule release or authenticate uploaded history.
//! Recovery-service provenance, key-wide matching authorization, recipient
//! confidentiality and RNK delivery require the external ACP/Orbis contract.
use crate::{
    HostWithdrawal, HostWithdrawalDestination, NoteSeizureAuthorizationBody, NoteSeizureBatch,
    NoteSeizureProof, NoteSeizureProofPrivate, NoteSeizureProofPublic, RecoveryCommitment,
    SeizureEntry, MAX_SEIZURE_ENTRIES,
};
use anyhow::{ensure, Result};
use ff::Field;
use shieldd_sdk_compliance::{ComplianceLeaf, UserAssetStatus};
use shieldd_sdk_crypto::{Fq, Fr};
use shieldd_sdk_num::Amount;
use shieldd_sdk_sct::Nullifier;
use shieldd_sdk_tct as tct;

/// Matching facts only; secrets have no serialization or Debug implementation.
#[derive(Clone)]
pub struct RecoveredSeizureNote {
    pub amount: Amount,
    pub note_blinding: Fq,
    pub recovery_commitment: RecoveryCommitment,
    pub proof: tct::Proof,
}
#[derive(Clone)]
pub struct SeizurePreparationContext {
    pub chain_id: String,
    pub leaf: ComplianceLeaf,
    pub current_height: u64,
    pub anchor: tct::Root,
    pub destination: HostWithdrawalDestination,
    pub expiry_height: u64,
}
/// Completed public data awaiting the authority's exact batch signature.
pub struct PreparedSeizure {
    authorization: NoteSeizureAuthorizationBody,
    anchor: tct::Root,
    proofs: Vec<NoteSeizureProof>,
    witnesses: Vec<NoteSeizureProofPrivate>,
}
impl PreparedSeizure {
    pub fn authorization(&self) -> &NoteSeizureAuthorizationBody {
        &self.authorization
    }
    pub fn anchor(&self) -> tct::Root {
        self.anchor
    }
    pub fn proofs(&self) -> &[NoteSeizureProof] {
        &self.proofs
    }

    /// Refresh locally retained paths before authorization, preserving every Ci and Ri.
    /// Caller authenticates the new tree/anchor; host still checks current admission.
    pub fn refresh_anchor(
        &mut self,
        tree: &tct::Tree,
        registry: &shieldd_sdk_proof_params::pari::Registry,
    ) -> Result<()> {
        ensure!(
            registry.id() == self.authorization.registry_id,
            "seizure registry mismatch"
        );
        let anchor = tree.root();
        let updated = self
            .witnesses
            .iter()
            .map(|witness| -> Result<_> {
                let mut witness = witness.clone();
                witness.state_commitment_proof = tree
                    .witness(witness.state_commitment_proof.position())
                    .ok_or_else(|| {
                        anyhow::anyhow!("selected occurrence is not retained at refreshed anchor")
                    })?;
                Ok(witness)
            })
            .collect::<Result<Vec<_>>>()?;
        let proofs = updated
            .iter()
            .zip(&self.authorization.entries)
            .map(|(private, entry)| {
                NoteSeizureProof::prove(
                    NoteSeizureProofPublic {
                        anchor,
                        address: self.authorization.address.clone(),
                        asset_id: self.authorization.asset_id,
                        rnk_commitment: shieldd_sdk_compliance::compliance_nullifier_key_commitment(
                            private.rnk,
                        ),
                        entry: entry.clone(),
                    },
                    private.clone(),
                    registry,
                )
                .map_err(Into::into)
            })
            .collect::<Result<Vec<_>>>()?;
        self.anchor = anchor;
        self.proofs = proofs;
        self.witnesses = updated;
        Ok(())
    }
    pub fn authorize(
        self,
        signature: reddsa::Signature<reddsa::sapling::SpendAuth>,
        authority: &reddsa::VerificationKey<reddsa::sapling::SpendAuth>,
    ) -> Result<NoteSeizureBatch> {
        self.authorization.verify_signature(authority, &signature)?;
        self.authorization.verify_balance()?;
        let batch = NoteSeizureBatch {
            authorization: self.authorization,
            anchor: self.anchor,
            proofs: self.proofs,
            authority_signature: signature,
        };
        batch.validate()?;
        Ok(batch)
    }
}
/// Prove sequentially with independent fresh blindings; no raw witness is persisted.
/// Oversized totals fail before proving. Split whole notes before seeking authorization.
pub fn prepare_seizure(
    context: SeizurePreparationContext,
    recovered: Vec<RecoveredSeizureNote>,
    rnk: Fq,
    registry: &shieldd_sdk_proof_params::pari::Registry,
    rng: &mut (impl rand_core::RngCore + rand_core::CryptoRng),
) -> Result<PreparedSeizure> {
    ensure!(
        (1..=MAX_SEIZURE_ENTRIES).contains(&recovered.len()),
        "invalid recovered seizure count"
    );
    ensure!(
        matches!(
            context.leaf.status,
            UserAssetStatus::Frozen | UserAssetStatus::Seized
        ),
        "seizure target must be frozen or seized"
    );
    ensure!(
        context.current_height >= context.leaf.frozen_since_height
            && context.current_height <= context.expiry_height,
        "seizure preparation height is outside authorization scope"
    );
    ensure!(
        shieldd_sdk_compliance::compliance_nullifier_key_commitment(rnk)
            == context.leaf.rnk_commitment,
        "recovered RNK mismatch"
    );
    let mut total = 0u128;
    let mut aggregate_blinding = Fr::from(0u64);
    let mut inputs = Vec::with_capacity(recovered.len());
    for note in recovered {
        total = total.checked_add(note.amount.value()).ok_or_else(|| {
            anyhow::anyhow!("whole-note batch total overflows u128; split before signing")
        })?;
        let value_blinding = Fr::random(&mut *rng);
        aggregate_blinding += value_blinding;
        let commitment = note.proof.commitment();
        let entry = SeizureEntry {
            nullifier: Nullifier::derive(
                &shieldd_sdk_keys::keys::NullifierKey(rnk),
                note.proof.position(),
                &commitment,
            ),
            value_commitment: shieldd_sdk_asset::Value {
                amount: note.amount,
                asset_id: context.leaf.asset_id,
            }
            .commit(value_blinding),
        };
        let public = NoteSeizureProofPublic {
            anchor: context.anchor,
            address: context.leaf.address.clone(),
            asset_id: context.leaf.asset_id,
            rnk_commitment: context.leaf.rnk_commitment,
            entry,
        };
        let private = NoteSeizureProofPrivate {
            amount: note.amount,
            note_blinding: note.note_blinding,
            recovery_commitment: note.recovery_commitment,
            state_commitment_proof: note.proof,
            rnk,
            value_blinding,
        };
        private.validate_against(&public)?;
        inputs.push((public, private));
    }
    inputs.sort_by_key(|(public, _)| public.entry.nullifier.to_bytes());
    let authorization = NoteSeizureAuthorizationBody {
        chain_id: context.chain_id,
        address: context.leaf.address,
        asset_id: context.leaf.asset_id,
        freeze_generation: context.leaf.freeze_generation,
        frozen_since_height: context.leaf.frozen_since_height,
        withdrawal: HostWithdrawal {
            value: shieldd_sdk_asset::Value {
                amount: total.into(),
                asset_id: context.leaf.asset_id,
            },
            destination: context.destination,
        },
        expiry_height: context.expiry_height,
        registry_id: registry.id(),
        aggregate_blinding,
        entries: inputs
            .iter()
            .map(|(public, _)| public.entry.clone())
            .collect(),
    };
    authorization.verify_balance()?;
    let proofs = inputs
        .iter()
        .map(|(public, private)| {
            NoteSeizureProof::prove(public.clone(), private.clone(), registry).map_err(Into::into)
        })
        .collect::<Result<Vec<_>>>()?;
    let witnesses = inputs.into_iter().map(|(_, private)| private).collect();
    let items = proofs
        .iter()
        .zip(&authorization.entries)
        .map(|(proof, entry)| {
            proof.to_batch_item(&NoteSeizureProofPublic {
                anchor: context.anchor,
                address: authorization.address.clone(),
                asset_id: authorization.asset_id,
                rnk_commitment: context.leaf.rnk_commitment,
                entry: entry.clone(),
            })
        })
        .collect::<Result<Vec<_>>>()?;
    registry.verify_items(&items, shieldd_sdk_proof_params::pari::proving_strategy()?)?;
    Ok(PreparedSeizure {
        authorization,
        anchor: context.anchor,
        proofs,
        witnesses,
    })
}
