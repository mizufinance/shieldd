use std::sync::Arc;

use anyhow::{Context, Result};
use async_trait::async_trait;
use cnidarium::{StateRead, StateWrite};
use cnidarium_component::ActionHandler;
use shieldd_sdk_proof_params::pari::{Verification, Verified};
use shieldd_sdk_txhash::{EffectingData, TransactionContext};

use crate::{
    component::{
        action_handler::{note_reshape, shielded_withdrawal},
        AssetRegistryRead as _, StateReadExt as _,
    },
    ShieldedHostWithdrawal, ShieldedWithdrawalProofPublic,
};

pub fn shielded_host_withdrawal_verify_auth_sig(
    action: &ShieldedHostWithdrawal,
    context: &TransactionContext,
) -> Result<()> {
    super::note_reshape::verify_auth_sig(
        "shielded_host_withdrawal",
        &action.body.rk,
        &action.auth_sig,
        context,
    )
}

pub fn shielded_host_withdrawal_extract_public(
    action: &ShieldedHostWithdrawal,
    context: &TransactionContext,
) -> Result<ShieldedWithdrawalProofPublic> {
    shielded_withdrawal::extract_public(
        shielded_withdrawal::ProofPublicData {
            rk: action.body.rk,
            family_id: action.body.family_id,
            balance_commitment: action.body.balance_commitment,
            asset_anchor: action.body.asset_anchor,
            compliance_anchor: action.body.compliance_anchor,
            target_timestamp: action.body.target_timestamp,
            inputs: &action.body.inputs,
            change_output: &action.body.change_output,
            outbound_value: action.body.withdrawal.value,
            withdrawal_effect_hash: action.body.withdrawal.effect_hash(),
            routing_tag: action.body.routing_tag,
            routing_parameter_set_id: action.body.routing_parameter_set_id,
            withdrawal_compliance_ciphertext: &action.body.withdrawal_compliance_ciphertext,
            volume_accumulator: &action.body.volume_accumulator,
        },
        context,
    )
    .context("shielded host withdrawal proof family shape mismatch")
}

pub fn shielded_host_withdrawal_to_batch_item(
    action: &ShieldedHostWithdrawal,
    public: ShieldedWithdrawalProofPublic,
) -> Result<Verification> {
    action.proof.to_batch_item(&public)
}

pub fn shielded_host_withdrawal_check_stateless_and_extract(
    action: &ShieldedHostWithdrawal,
    context: &TransactionContext,
) -> Result<Verification> {
    action.body.validate_shape()?;
    action.body.withdrawal.validate()?;
    shielded_host_withdrawal_verify_auth_sig(action, context)?;
    let public = shielded_host_withdrawal_extract_public(action, context)?;
    shielded_host_withdrawal_to_batch_item(action, public)
}

/// Execute a host withdrawal whose exact proof item has already verified.
pub async fn shielded_host_withdrawal_execute_verified<S: StateWrite>(
    action: &ShieldedHostWithdrawal,
    context: &TransactionContext,
    verified_proof: &Verified,
    mut state: S,
) -> Result<()> {
    let item = shielded_host_withdrawal_check_stateless_and_extract(action, context)?;
    verified_proof
        .ensure_binds(shieldd_sdk_circuits::proof::Family::Withdrawal, &item)
        .context("shielded host withdrawal verified proof capability mismatch")?;

    anyhow::ensure!(
        state.host_withdrawals_enabled().await?,
        "shielded host withdrawals are not enabled"
    );
    anyhow::ensure!(
        state
            .denom_metadata_by_asset(&action.body.withdrawal.value.asset_id)
            .await
            .is_some(),
        "host withdrawal asset is not registered"
    );
    shielded_withdrawal::validate_compliance(
        &state,
        &action.body.compliance_anchor,
        &action.body.asset_anchor,
        action.body.target_timestamp,
    )
    .await?;
    shielded_withdrawal::validate_volume(&state, &action.body.volume_accumulator).await?;

    note_reshape::execute_proof_bound_effects(
        &mut state,
        &action.body.inputs,
        std::slice::from_ref(&action.body.change_output),
        |input| input.nullifier,
        |output| &output.note_payload,
    )
    .await?;
    shielded_withdrawal::execute_volume(&mut state, &action.body.volume_accumulator).await
}

#[async_trait]
impl ActionHandler for ShieldedHostWithdrawal {
    type CheckStatelessContext = crate::ProofVerificationContext;

    async fn check_stateless(&self, proof_context: crate::ProofVerificationContext) -> Result<()> {
        let context = proof_context.transaction;
        let item = shielded_host_withdrawal_check_stateless_and_extract(self, &context)?;
        proof_context.registry.verify_item(&item)?;
        Ok(())
    }

    async fn check_historical<S: StateRead + 'static>(&self, state: Arc<S>) -> Result<()> {
        anyhow::ensure!(
            state.host_withdrawals_enabled().await?,
            "shielded host withdrawals are not enabled"
        );
        anyhow::ensure!(
            state
                .denom_metadata_by_asset(&self.body.withdrawal.value.asset_id)
                .await
                .is_some(),
            "host withdrawal asset is not registered"
        );
        Ok(())
    }

    async fn check_and_execute<S: StateWrite>(&self, _state: S) -> Result<()> {
        anyhow::bail!(
            "shielded host withdrawal execution requires an exact verified proof capability"
        )
    }
}
