//! Joint approval of an ordered transaction by independent wallets.
//!
//! Exchange only public actions, authorizations and transaction-specific balance
//! openings between owners. A signing request contains a local plan and must stay
//! inside its owner's custody group. Peer proof inspection prevents failed
//! settlements; every signer independently checks its own effects and receipts.

use std::collections::BTreeSet;

use anyhow::{ensure, Context, Result};
use ff::Field;
use rand_core::OsRng;
use reddsa::{sapling::Binding, SigningKey};
use shieldd_sdk_asset::{Balance, Value};
use shieldd_sdk_crypto::Fr;
use shieldd_sdk_keys::{keys::SpendKey, Address, FullViewingKey, PayloadKey};
use shieldd_sdk_proof_params::pari::Registry;
use shieldd_sdk_proto::DomainType;
use shieldd_sdk_shielded_pool::TransferProofContext;
use shieldd_sdk_tct::Root;
use shieldd_sdk_txhash::{AuthHash, AuthorizingData, EffectHash, EffectingData};

use crate::{
    memo::MemoCiphertext, Action, ActionPlan, AuthorizationData, FeeFunding, Transaction,
    TransactionPlan,
};

/// Proof-bearing public material; use the existing Action and FeeFunding codecs
/// to exchange it without exposing the local plan.
pub struct JointFragment {
    pub actions: Vec<Action>,
    pub fee_funding: Option<FeeFunding>,
}

impl JointFragment {
    #[cfg(all(feature = "prover", any(unix, windows)))]
    pub fn build(
        plan: &TransactionPlan,
        fvk: &FullViewingKey,
        witness: &crate::WitnessData,
        registry: &Registry,
    ) -> Result<Self> {
        let actions = plan
            .actions
            .iter()
            .map(|action| {
                ActionPlan::build_unauth(action.clone(), fvk, witness, plan.memo_key(), registry)
            })
            .collect::<Result<Vec<_>>>()?;
        let key = plan.memo_key().unwrap_or(PayloadKey::from([0u8; 32]));
        let fee_funding = plan
            .fee_funding
            .as_ref()
            .map(|fee| fee.build_unauth(fvk, witness, &key, registry))
            .transpose()?;
        Ok(Self {
            actions,
            fee_funding,
        })
    }
}

/// A distinct incoming output required by this wallet's settlement terms.
#[derive(Clone, Debug)]
pub struct ExpectedReceipt {
    pub action_index: usize,
    pub output_index: usize,
    pub address: Address,
    pub value: Value,
}

/// Full public candidate plus evidence local to one wallet or custody group.
#[derive(Clone, Debug)]
pub struct JointSigningRequest {
    pub transaction: Transaction,
    pub plan: TransactionPlan,
    /// Candidate indices, in local plan order. Registration slots need no spend signature.
    pub action_indices: Vec<usize>,
    pub incoming: Vec<ExpectedReceipt>,
    pub anchor: Root,
    pub action_count: usize,
}

impl JointSigningRequest {
    /// Safety checks repeated by every signer, including FROST followers.
    /// This does not verify peer proofs or current chain admission state.
    pub fn validate(&self, fvk: &FullViewingKey) -> Result<()> {
        let tx = &self.transaction;
        validate_candidate(tx)?;
        ensure!(tx.anchor == self.anchor, "agreed anchor changed");
        ensure!(
            tx.transaction_body.actions.len() == self.action_count,
            "agreed action count changed"
        );
        ensure!(
            tx.transaction_body.transaction_parameters.to_proto()
                == self.plan.transaction_parameters.to_proto(),
            "agreed transaction parameters changed"
        );
        ensure!(
            tx.transaction_body
                .memo
                .as_ref()
                .map(DomainType::encode_to_vec)
                == self
                    .plan
                    .memo
                    .as_ref()
                    .map(|memo| memo.memo().map(|m| m.encode_to_vec()))
                    .transpose()?,
            "agreed memo changed"
        );
        ensure!(
            self.action_indices.len() == self.plan.actions.len(),
            "local action index count differs"
        );
        let key = self.plan.memo_key().unwrap_or(PayloadKey::from([0u8; 32]));
        let mut indices = BTreeSet::new();
        for (plan, index) in self.plan.actions.iter().zip(&self.action_indices) {
            ensure!(indices.insert(*index), "duplicate owned action index");
            let action = tx
                .transaction_body
                .actions
                .get(*index)
                .context("owned action index out of bounds")?;
            match (plan, action) {
                (ActionPlan::Transfer(plan), Action::Transfer(transfer)) => {
                    plan.validate()?;
                    ensure!(
                        plan.proof_context == TransferProofContext::Ordinary,
                        "principal requires ordinary context"
                    );
                    ensure!(
                        plan.balance() == Balance::default(),
                        "principal has residual value"
                    );
                    ensure!(
                        plan.spends
                            .iter()
                            .all(|spend| spend.note.controlled_by(fvk)),
                        "principal inputs belong to another wallet"
                    );
                    ensure!(
                        transfer.body.rk
                            == fvk
                                .spend_verification_key()
                                .randomize(&plan.auth_randomizer),
                        "owned randomized key differs"
                    );
                }
                (ActionPlan::ComplianceRegisterAsset(_), Action::ComplianceRegisterAsset(_))
                | (ActionPlan::ComplianceRegisterUser(_), Action::ComplianceRegisterUser(_)) => {}
                _ => anyhow::bail!("unsupported or mismatched joint action"),
            }
            ensure!(
                plan.effect_hash(fvk, &key)? == action.effect_hash(),
                "wallet's proposed action changed"
            );
        }
        if let Some(plan) = &self.plan.fee_funding {
            plan.validate()?;
            let fee = tx
                .transaction_body
                .fee_funding
                .as_ref()
                .context("missing owned fee funding")?;
            ensure!(
                plan.balance() + self.plan.transaction_parameters.fee.balance()
                    == Balance::default(),
                "fee plan does not cover public fee"
            );
            ensure!(
                plan.transfer
                    .spends
                    .iter()
                    .all(|spend| spend.note.controlled_by(fvk)),
                "fee inputs belong to another wallet"
            );
            ensure!(
                fee.transfer.body.rk
                    == fvk
                        .spend_verification_key()
                        .randomize(&plan.transfer.auth_randomizer),
                "owned fee randomized key differs"
            );
            ensure!(
                plan.effect_hash(fvk, &key)? == fee.effect_hash(),
                "wallet's fee funding changed"
            );
        }
        let mut receipts = BTreeSet::new();
        for expected in &self.incoming {
            ensure!(
                receipts.insert((expected.action_index, expected.output_index)),
                "duplicate expected receipt"
            );
            ensure!(
                expected.value.amount > 0u64.into(),
                "expected receipt must have positive value"
            );
            let Some(Action::Transfer(transfer)) =
                tx.transaction_body.actions.get(expected.action_index)
            else {
                anyhow::bail!("incoming action is not a Transfer")
            };
            let output = transfer
                .body
                .outputs
                .get(expected.output_index)
                .context("incoming output index out of bounds")?;
            let note = output
                .note_payload
                .trial_decrypt(fvk)
                .context("incoming receiver note is not usable by this wallet")?;
            ensure!(
                note.address() == expected.address,
                "incoming receiving address differs"
            );
            ensure!(
                note.value() == expected.value,
                "incoming asset or amount differs"
            );
            let memo_key = output
                .wrapped_memo_key
                .decrypt(output.note_payload.ephemeral_key, fvk.incoming())?;
            let memo = tx
                .transaction_body
                .memo
                .as_ref()
                .context("incoming memo missing")?;
            ensure!(
                Some(MemoCiphertext::decrypt(&memo_key, memo.clone())?)
                    == self.plan.memo.as_ref().map(|memo| memo.plaintext.clone()),
                "incoming memo cannot be recovered"
            );
        }
        Ok(())
    }

    /// Negotiating wallets verify proofs before asking custody to approve effects.
    pub fn verify_proofs(&self, registry: &Registry) -> Result<()> {
        validate_candidate(&self.transaction)?;
        for action in &self.transaction.transaction_body.actions {
            if let Action::Transfer(transfer) = action {
                let public = transfer
                    .body
                    .proof_public(self.anchor, TransferProofContext::Ordinary)?;
                transfer.proof.verify(&public, registry)?;
            }
        }
        if let Some(fee) = &self.transaction.transaction_body.fee_funding {
            let public = fee
                .transfer
                .body
                .proof_public(self.anchor, TransferProofContext::FeeFunding)?;
            fee.transfer.proof.verify(&public, registry)?;
        }
        Ok(())
    }

    pub fn effect_hash(&self) -> EffectHash {
        self.transaction.effect_hash()
    }

    /// Local action order, followed by this wallet's optional fee authorization.
    pub fn randomizers(&self) -> Vec<Fr> {
        self.plan.spend_auth_randomizers().collect()
    }

    pub fn authorize(&self, key: &SpendKey, registry: &Registry) -> Result<AuthorizationData> {
        self.validate(key.full_viewing_key())?;
        self.verify_proofs(registry)?;
        let hash = self.effect_hash();
        Ok(AuthorizationData {
            effect_hash: Some(hash),
            spend_auths: self
                .randomizers()
                .into_iter()
                .map(|r| {
                    key.spend_auth_key()
                        .randomize(&r)
                        .sign(OsRng, hash.as_ref())
                })
                .collect(),
        })
    }

    /// Verify all supplied signatures before placing any of them in the candidate.
    pub fn apply(
        &self,
        candidate: &mut Transaction,
        authorization: &AuthorizationData,
    ) -> Result<()> {
        ensure!(
            candidate.anchor == self.anchor && candidate.effect_hash() == self.effect_hash(),
            "authorization belongs to a different transaction"
        );
        ensure!(
            authorization.effect_hash == Some(self.effect_hash()),
            "authorization effect hash differs"
        );
        let owned = self
            .action_indices
            .iter()
            .copied()
            .filter(|i| {
                matches!(
                    self.transaction.transaction_body.actions.get(*i),
                    Some(Action::Transfer(_))
                )
            })
            .collect::<Vec<_>>();
        ensure!(
            authorization.spend_auths.len()
                == owned.len() + usize::from(self.plan.fee_funding.is_some()),
            "incorrect owned signature count"
        );
        for (index, sig) in owned.iter().zip(&authorization.spend_auths) {
            let Some(Action::Transfer(transfer)) = candidate.transaction_body.actions.get(*index)
            else {
                anyhow::bail!("owned action is not a Transfer")
            };
            transfer.body.rk.verify(self.effect_hash().as_ref(), sig)?;
        }
        if self.plan.fee_funding.is_some() {
            let fee = candidate
                .transaction_body
                .fee_funding
                .as_ref()
                .context("missing owned fee funding")?;
            let sig = authorization
                .spend_auths
                .last()
                .context("missing fee signature")?;
            fee.transfer
                .body
                .rk
                .verify(self.effect_hash().as_ref(), sig)?;
        }
        for (index, sig) in owned.iter().zip(&authorization.spend_auths) {
            if let Action::Transfer(transfer) = &mut candidate.transaction_body.actions[*index] {
                transfer.auth_sig = *sig;
            }
        }
        if self.plan.fee_funding.is_some() {
            candidate
                .transaction_body
                .fee_funding
                .as_mut()
                .context("missing owned fee funding")?
                .transfer
                .auth_sig = *authorization
                .spend_auths
                .last()
                .context("missing fee signature")?;
        }
        Ok(())
    }

    /// Release only fresh zero-residual openings, after every owner authorized.
    pub fn contribution(
        &self,
        candidate: &Transaction,
        fvk: &FullViewingKey,
        registry: &Registry,
    ) -> Result<BindingContribution> {
        ensure!(
            candidate.anchor == self.anchor && candidate.effect_hash() == self.effect_hash(),
            "contribution belongs to a different transaction"
        );
        self.validate(fvk)?;
        // Inspect the final proof bytes as well as the approved effects.
        let signed = Self {
            transaction: candidate.clone(),
            ..self.clone()
        };
        signed.verify_proofs(registry)?;
        verify_authorizations(candidate)?;
        Ok(BindingContribution {
            effect_hash: candidate.effect_hash(),
            auth_hash: candidate.auth_hash(),
            anchor: candidate.anchor,
            actions: self
                .plan
                .actions
                .iter()
                .zip(&self.action_indices)
                .filter_map(|(plan, index)| match plan {
                    ActionPlan::Transfer(plan) => Some(BalanceOpening {
                        action_index: *index,
                        blinding: plan.value_blinding.to_bytes(),
                    }),
                    _ => None,
                })
                .collect(),
            fee_blinding: self
                .plan
                .fee_funding
                .as_ref()
                .map(|fee| fee.value_blinding().to_bytes()),
        })
    }
}

/// Public, transaction-specific balance opening. Never reuse its blinding.
#[derive(Clone)]
pub struct BalanceOpening {
    pub action_index: usize,
    pub blinding: [u8; 32],
}

/// Bound to the final body, including proof and authorization bytes, and anchor.
#[derive(Clone)]
pub struct BindingContribution {
    pub effect_hash: EffectHash,
    pub auth_hash: AuthHash,
    pub anchor: Root,
    pub actions: Vec<BalanceOpening>,
    pub fee_blinding: Option<[u8; 32]>,
}

/// Envelope checks shared by wallets and the assembler. Chain admission remains
/// responsible for freshness, authority grants, fee pricing and unspent state.
pub fn validate_candidate(tx: &Transaction) -> Result<()> {
    ensure!(
        !tx.transaction_body.actions.is_empty(),
        "empty joint transaction"
    );
    ensure!(
        tx.encode_to_vec().len() <= shieldd_sdk_proto::core::app::v1::MAX_TRANSACTION_BYTES,
        "joint transaction exceeds wire size limit"
    );
    let mut previous = 0;
    let mut keys = Vec::new();
    for action in &tx.transaction_body.actions {
        ensure!(
            matches!(
                action,
                Action::Transfer(_)
                    | Action::ComplianceRegisterAsset(_)
                    | Action::ComplianceRegisterUser(_)
            ),
            "unsupported joint action"
        );
        ensure!(
            action.variant_index() >= previous,
            "transfers must precede asset and user registrations"
        );
        previous = action.variant_index();
        if let Action::Transfer(transfer) = action {
            transfer
                .body
                .proof_public(tx.anchor, TransferProofContext::Ordinary)?;
            keys.push(transfer.body.rk);
        }
    }
    if let Some(fee) = &tx.transaction_body.fee_funding {
        fee.transfer
            .body
            .proof_public(tx.anchor, TransferProofContext::FeeFunding)?;
        keys.push(fee.transfer.body.rk);
    }
    ensure!(
        keys.iter()
            .enumerate()
            .all(|(i, key)| !keys[..i].contains(key)),
        "reused randomized key"
    );
    let mut notes = BTreeSet::new();
    for nf in tx.spent_nullifiers() {
        ensure!(notes.insert(nf), "reused note nullifier");
    }
    let mut volumes = BTreeSet::new();
    for nf in tx.volume_nullifiers() {
        ensure!(volumes.insert(nf), "reused volume nullifier");
    }
    Ok(())
}

pub fn verify_authorizations(tx: &Transaction) -> Result<()> {
    validate_candidate(tx)?;
    let digest = tx.effect_hash();
    for transfer in tx.transfers().chain(
        tx.transaction_body
            .fee_funding
            .iter()
            .map(|fee| &fee.transfer),
    ) {
        transfer
            .body
            .rk
            .verify(digest.as_ref(), &transfer.auth_sig)?;
    }
    Ok(())
}

fn scalar(bytes: &[u8; 32]) -> Result<Fr> {
    Option::<Fr>::from(Fr::from_bytes(bytes)).context("noncanonical balance blinding")
}

/// Coordinator needs no keys, plans, plaintext notes or proof witnesses.
pub fn finalize(tx: &mut Transaction, contributions: &[BindingContribution]) -> Result<()> {
    verify_authorizations(tx)?;
    let mut seen = BTreeSet::new();
    let mut sum = Fr::zero();
    let mut fee_blinding = None;
    for contribution in contributions {
        ensure!(
            contribution.effect_hash == tx.effect_hash()
                && contribution.auth_hash == tx.auth_hash()
                && contribution.anchor == tx.anchor,
            "contribution belongs to a different transaction"
        );
        ensure!(
            !contribution.actions.is_empty() || contribution.fee_blinding.is_some(),
            "empty binding contribution"
        );
        for opening in &contribution.actions {
            ensure!(
                seen.insert(opening.action_index),
                "duplicate action contribution"
            );
            let Some(Action::Transfer(transfer)) =
                tx.transaction_body.actions.get(opening.action_index)
            else {
                anyhow::bail!("contribution index is not a Transfer")
            };
            let blinding = scalar(&opening.blinding)?;
            ensure!(
                transfer.body.balance_commitment == Balance::default().commit(blinding),
                "principal contribution does not open zero residual"
            );
            sum += blinding;
        }
        if let Some(bytes) = contribution.fee_blinding {
            ensure!(
                fee_blinding.replace(scalar(&bytes)?).is_none(),
                "multiple fee contributors"
            );
        }
    }
    ensure!(
        seen.len() == tx.transfers().count(),
        "missing principal contribution"
    );
    match (&tx.transaction_body.fee_funding, fee_blinding) {
        (Some(fee), Some(blinding)) => {
            ensure!(
                fee.transfer.body.balance_commitment
                    + tx.transaction_body
                        .transaction_parameters
                        .fee
                        .commit(Fr::zero())
                    == Balance::default().commit(blinding),
                "fee contribution does not cover public fee"
            );
            sum += blinding;
        }
        (None, None) => ensure!(
            tx.transaction_body.transaction_parameters.fee.amount() == 0u64.into(),
            "missing fee funding"
        ),
        _ => anyhow::bail!("missing or unexpected fee contribution"),
    }
    if tx.num_proofs() == 0 {
        ensure!(
            contributions.is_empty(),
            "unexpected registration balance contribution"
        );
        tx.binding_sig = crate::no_binding_signature();
    } else {
        ensure!(!bool::from(sum.is_zero()), "identity binding key");
        let key = SigningKey::<Binding>::try_from(sum.to_bytes())?;
        ensure!(
            reddsa::VerificationKey::from(&key) == tx.binding_verification_key(),
            "binding contribution mismatch"
        );
        tx.binding_sig = key.sign(OsRng, tx.auth_hash().as_bytes());
    }
    Ok(())
}

#[cfg(test)]
mod tests;
