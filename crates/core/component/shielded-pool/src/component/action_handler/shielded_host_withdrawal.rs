use std::sync::Arc;

use anyhow::{Context, Result};
use async_trait::async_trait;
use cnidarium::{StateRead, StateWrite};
use cnidarium_component::ActionHandler;
use shieldd_sdk_proof_params::batch::{self, BatchItem};
use shieldd_sdk_txhash::{EffectingData, TransactionContext};

use crate::{
    component::{
        action_handler::{note_reshape, shielded_withdrawal},
        AssetRegistryRead as _, StateReadExt as _,
    },
    ShieldedHostWithdrawal, ShieldedIcs20WithdrawalChangeBody, ShieldedIcs20WithdrawalProofPublic,
    TransferInputBody,
};

pub fn shielded_host_withdrawal_verify_auth_sigs(
    action: &ShieldedHostWithdrawal,
    context: &TransactionContext,
) -> Result<()> {
    shielded_withdrawal::verify_auth_sigs(
        "shielded_host_withdrawal",
        &action.body.inputs,
        &action.auth_sigs,
        context,
    )
}

pub fn shielded_host_withdrawal_extract_public(
    action: &ShieldedHostWithdrawal,
    context: &TransactionContext,
) -> Result<ShieldedIcs20WithdrawalProofPublic> {
    shielded_withdrawal::extract_public(
        shielded_withdrawal::ProofPublicData {
            family_id: action.body.family_id,
            balance_commitment: action.body.balance_commitment,
            asset_anchor: action.body.asset_anchor,
            compliance_anchor: action.body.compliance_anchor,
            target_timestamp: action.body.target_timestamp,
            inputs: &action.body.inputs,
            change_output: &action.body.change_output,
            outbound_value: action.body.withdrawal.value,
            withdrawal_effect_hash: action.body.withdrawal.effect_hash(),
        },
        context,
    )
    .context("shielded host withdrawal proof family shape mismatch")
}

pub fn shielded_host_withdrawal_to_batch_item(
    action: &ShieldedHostWithdrawal,
    public: ShieldedIcs20WithdrawalProofPublic,
) -> Result<BatchItem> {
    action.proof.to_batch_item(&public)
}

pub fn shielded_host_withdrawal_check_stateless_and_extract(
    action: &ShieldedHostWithdrawal,
    context: &TransactionContext,
) -> Result<BatchItem> {
    action.body.validate_shape()?;
    action.body.withdrawal.validate()?;
    shielded_host_withdrawal_verify_auth_sigs(action, context)?;
    let public = shielded_host_withdrawal_extract_public(action, context)?;
    shielded_host_withdrawal_to_batch_item(action, public)
}

#[async_trait]
impl ActionHandler for ShieldedHostWithdrawal {
    type CheckStatelessContext = TransactionContext;

    async fn check_stateless(&self, context: TransactionContext) -> Result<()> {
        let item = shielded_host_withdrawal_check_stateless_and_extract(self, &context)?;
        batch::batch_verify(
            self.body.family_id.proof_verification_key(),
            std::slice::from_ref(&item),
        )
        .map_err(|e| anyhow::anyhow!("shielded host withdrawal proof did not verify: {e}"))?;
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

    async fn check_and_execute<S: StateWrite>(&self, mut state: S) -> Result<()> {
        shielded_withdrawal::validate_compliance(
            &state,
            &self.body.compliance_anchor,
            &self.body.asset_anchor,
            self.body.target_timestamp,
        )
        .await?;

        note_reshape::execute(
            &mut state,
            &self.body.inputs,
            std::slice::from_ref(&self.body.change_output),
            |input| input.nullifier,
            TransferInputBody::is_dummy,
            |output| &output.note_payload,
            ShieldedIcs20WithdrawalChangeBody::is_dummy,
        )
        .await
    }
}
