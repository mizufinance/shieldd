use std::sync::Arc;

use anyhow::{Context, Result};
use async_trait::async_trait;
use cnidarium::{StateRead, StateWrite};
use cnidarium_component::ActionHandler;
use shieldd_sdk_compliance::registry::ComplianceRegistryRead;
use shieldd_sdk_ibc::StateReadExt as _;
use shieldd_sdk_proof_params::batch::{self, BatchItem};
use shieldd_sdk_sct::component::clock::EpochRead;
use shieldd_sdk_txhash::{EffectingData, TransactionContext};

use crate::{
    component::{
        action_handler::note_reshape,
        transfer::{Ics20TransferExecutionExt as _, Ics20TransferWriteExt as _},
    },
    ShieldedIcs20Withdrawal, ShieldedIcs20WithdrawalChangePublic,
    ShieldedIcs20WithdrawalInputPublic, ShieldedIcs20WithdrawalProofPublic,
};

fn shielded_ics20_withdrawal_verify_auth_sigs(
    action: &ShieldedIcs20Withdrawal,
    context: &TransactionContext,
) -> Result<()> {
    note_reshape::verify_auth_sigs(
        "shielded_ics20_withdrawal",
        &action.body.inputs,
        &action.auth_sigs,
        context,
        |input| &input.rk,
    )
}

fn shielded_ics20_withdrawal_check_lengths(action: &ShieldedIcs20Withdrawal) -> Result<()> {
    for (index, input) in action.body.inputs.iter().enumerate() {
        anyhow::ensure!(
            input.compliance_ciphertext.is_empty(),
            "shielded ICS-20 withdrawal input {} compliance ciphertext must be empty",
            index + 1
        );
    }
    Ok(())
}

fn shielded_ics20_withdrawal_extract_public(
    action: &ShieldedIcs20Withdrawal,
    context: &TransactionContext,
) -> Result<ShieldedIcs20WithdrawalProofPublic> {
    let effect_hash = action.body.withdrawal.effect_hash();
    let effect_hash_bytes = effect_hash.as_bytes();
    let public = ShieldedIcs20WithdrawalProofPublic {
        family_id: action.body.family_id,
        anchor: context.anchor,
        balance_commitment: action.body.balance_commitment,
        asset_anchor: action.body.asset_anchor,
        compliance_anchor: action.body.compliance_anchor,
        target_timestamp: decaf377::Fq::from(action.body.target_timestamp),
        inputs: action
            .body
            .inputs
            .iter()
            .map(|input| ShieldedIcs20WithdrawalInputPublic {
                nullifier: input.nullifier,
                rk: input.rk,
            })
            .collect(),
        change_output: ShieldedIcs20WithdrawalChangePublic {
            note_commitment: action.body.change_output.note_payload.note_commitment,
        },
        outbound_asset_id: action.body.withdrawal.denom.id().0,
        outbound_amount: decaf377::Fq::from(action.body.withdrawal.amount),
        withdrawal_effect_hash_limbs:
            crate::shielded_ics20_withdrawal::withdrawal_effect_hash_limbs(effect_hash_bytes),
    };
    public
        .validate_shape()
        .context("shielded ICS-20 withdrawal proof family shape mismatch")?;
    Ok(public)
}

fn shielded_ics20_withdrawal_to_batch_item(
    action: &ShieldedIcs20Withdrawal,
    public: ShieldedIcs20WithdrawalProofPublic,
) -> Result<BatchItem> {
    action.proof.to_batch_item(&public)
}

pub fn shielded_ics20_withdrawal_check_stateless_and_extract(
    action: &ShieldedIcs20Withdrawal,
    context: &TransactionContext,
) -> Result<BatchItem> {
    note_reshape::validate_action_anchor("shielded_ics20_withdrawal", action.body.anchor, context)?;
    action.body.validate_shape()?;
    action.body.withdrawal.validate()?;
    shielded_ics20_withdrawal_check_lengths(action)?;
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
        state
            .validate_compliance_anchors(&self.body.compliance_anchor, &self.body.asset_anchor)
            .await
            .context("invalid compliance anchors")?;

        let block_time = state.get_current_block_timestamp().await?;
        let block_unix = block_time.unix_timestamp();
        anyhow::ensure!(block_unix >= 0, "block timestamp is negative");
        let block_timestamp = block_unix as u64;
        shieldd_sdk_compliance::registry::check_timestamp_freshness(
            self.body.target_timestamp,
            block_timestamp,
        )?;

        let current_block_time = block_time;
        state
            .withdrawal_check_cached(&self.body.withdrawal, current_block_time)
            .await?;
        note_reshape::execute_proof_bound_effects(
            &mut state,
            &self.body.inputs,
            std::slice::from_ref(&self.body.change_output),
            |input| input.nullifier,
            |output| &output.note_payload,
        )
        .await?;
        state.withdrawal_execute(&self.body.withdrawal).await
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

    use super::*;
    use crate::{
        note_reshape_padding::dummy_spend_auth_sig, Ics20Withdrawal, Note,
        ShieldedIcs20WithdrawalFamilyId, ShieldedIcs20WithdrawalPlan, ShieldedInputPlan,
    };

    #[test]
    fn stateless_rejects_nonempty_input_compliance_ciphertext() {
        let value = Value {
            amount: 40u64.into(),
            asset_id: BASE_ASSET_DENOM.id(),
        };
        let note = Note::generate(&mut OsRng, &test_keys::ADDRESS_0, value);
        let spend = ShieldedInputPlan::new(&mut OsRng, note, 0u64.into());
        let withdrawal = Ics20Withdrawal {
            amount: 40u64.into(),
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
            None,
            withdrawal,
            Fr::from(7u64),
        )
        .expect("withdrawal plan should be valid");
        let anchor = shieldd_sdk_tct::Tree::default().root();
        let mut body = plan
            .action_body(&test_keys::FULL_VIEWING_KEY, &[7u8; 32].into(), anchor)
            .expect("withdrawal body should build");
        body.inputs[0].compliance_ciphertext.push(1);
        let auth_sigs = vec![dummy_spend_auth_sig(); body.inputs.len()];
        let action = ShieldedIcs20Withdrawal {
            body,
            auth_sigs,
            proof: Default::default(),
        };
        let context = TransactionContext {
            anchor,
            effect_hash: Default::default(),
        };

        let err = shielded_ics20_withdrawal_check_stateless_and_extract(&action, &context)
            .err()
            .expect("stateless validation must reject unused input compliance ciphertext");
        assert!(err
            .to_string()
            .contains("withdrawal input 1 compliance ciphertext must be empty"));
    }
}
