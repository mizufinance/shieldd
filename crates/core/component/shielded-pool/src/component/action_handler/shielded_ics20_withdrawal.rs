use std::sync::Arc;

use anyhow::{Context, Result};
use async_trait::async_trait;
use cnidarium::{StateRead, StateWrite};
use cnidarium_component::ActionHandler;
use shieldd_sdk_ibc::StateReadExt as _;
use shieldd_sdk_proof_params::batch::{self, BatchItem};
use shieldd_sdk_txhash::{EffectingData, TransactionContext};

use crate::{
    component::{
        action_handler::{note_reshape, shielded_withdrawal},
        transfer::{Ics20TransferExecutionExt as _, Ics20TransferWriteExt as _},
    },
    ShieldedIcs20Withdrawal, ShieldedIcs20WithdrawalChangeBody, ShieldedIcs20WithdrawalProofPublic,
    TransferInputBody,
};

pub fn shielded_ics20_withdrawal_verify_auth_sigs(
    action: &ShieldedIcs20Withdrawal,
    context: &TransactionContext,
) -> Result<()> {
    shielded_withdrawal::verify_auth_sigs(
        "shielded_ics20_withdrawal",
        &action.body.inputs,
        &action.auth_sigs,
        context,
    )
}

pub fn shielded_ics20_withdrawal_extract_public(
    action: &ShieldedIcs20Withdrawal,
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
            outbound_value: action.body.withdrawal.value(),
            withdrawal_effect_hash: action.body.withdrawal.effect_hash(),
        },
        context,
    )
    .context("shielded ICS-20 withdrawal proof family shape mismatch")
}

pub fn shielded_ics20_withdrawal_to_batch_item(
    action: &ShieldedIcs20Withdrawal,
    public: ShieldedIcs20WithdrawalProofPublic,
) -> Result<BatchItem> {
    action.proof.to_batch_item(&public)
}

pub fn shielded_ics20_withdrawal_check_stateless_and_extract(
    action: &ShieldedIcs20Withdrawal,
    context: &TransactionContext,
) -> Result<BatchItem> {
    action.body.validate_shape()?;
    action.body.withdrawal.validate()?;
    shielded_ics20_withdrawal_verify_auth_sigs(action, context)?;
    let public = shielded_ics20_withdrawal_extract_public(action, context)?;
    shielded_ics20_withdrawal_to_batch_item(action, public)
}

#[async_trait]
impl ActionHandler for ShieldedIcs20Withdrawal {
    type CheckStatelessContext = TransactionContext;

    async fn check_stateless(&self, context: TransactionContext) -> Result<()> {
        let item = shielded_ics20_withdrawal_check_stateless_and_extract(self, &context)?;
        batch::batch_verify(
            self.body.family_id.proof_verification_key(),
            std::slice::from_ref(&item),
        )
        .map_err(|e| anyhow::anyhow!("shielded ICS-20 withdrawal proof did not verify: {e}"))?;
        Ok(())
    }

    async fn check_historical<S: StateRead + 'static>(&self, state: Arc<S>) -> Result<()> {
        anyhow::ensure!(
            state
                .get_ibc_params()
                .await?
                .outbound_ics20_transfers_enabled,
            "transaction has a shielded ICS20 withdrawal, but outbound ICS20 withdrawals are not enabled"
        );
        Ok(())
    }

    async fn check_and_execute<S: StateWrite>(&self, mut state: S) -> Result<()> {
        let block_time = shielded_withdrawal::validate_compliance(
            &state,
            &self.body.compliance_anchor,
            &self.body.asset_anchor,
            self.body.target_timestamp,
        )
        .await?;

        let current_block_time = block_time;
        state
            .withdrawal_check_cached(&self.body.withdrawal, current_block_time)
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
        .await?;
        state.withdrawal_execute(&self.body.withdrawal).await
    }
}
