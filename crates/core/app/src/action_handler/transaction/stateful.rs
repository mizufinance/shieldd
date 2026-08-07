use anyhow::{ensure, Result};
use cnidarium::StateRead;
use shieldd_sdk_sct::component::tree::VerificationExt;
use shieldd_sdk_shielded_pool::{discovery, NotePayload};
use shieldd_sdk_transaction::{Action, Transaction, TransactionParameters};

use super::HistoricalCheckContext;

pub fn tx_parameters_historical_check_with_context(
    transaction: &Transaction,
    context: &HistoricalCheckContext,
) -> Result<()> {
    let TransactionParameters {
        chain_id,
        expiry_height,
        fee: _,
    } = transaction.transaction_parameters();

    ensure!(
        chain_id == context.chain_id,
        "transaction chain ID '{}' must match the current chain ID '{}'",
        chain_id,
        context.chain_id
    );

    if expiry_height != 0 {
        ensure!(
            expiry_height >= context.block_height,
            "transaction expiry height '{}' must be greater than or equal to the current block height '{}'",
            expiry_height,
            context.block_height
        );
    }

    Ok(())
}

pub fn discovery_parameters_valid_with_context(
    transaction: &Transaction,
    context: &HistoricalCheckContext,
) -> Result<()> {
    discovery_precision_within_grace_period(
        transaction,
        context.discovery_grace_period_blocks,
        context.previous_discovery_parameters.clone(),
        context.current_discovery_parameters.clone(),
        context.block_height,
    )
}

#[tracing::instrument(
    skip_all,
    fields(
        current_discovery.precision_bits = current_discovery_parameters.precision.bits(),
        previous_discovery.precision_bits = previous_discovery_parameters.precision.bits(),
        current_discovery.as_of_block_height = current_discovery_parameters.as_of_block_height,
        block_height,
    )
)]
pub fn discovery_precision_within_grace_period(
    tx: &Transaction,
    grace_period_blocks: u64,
    previous_discovery_parameters: discovery::Parameters,
    current_discovery_parameters: discovery::Parameters,
    block_height: u64,
) -> anyhow::Result<()> {
    let mut payloads: Vec<&NotePayload> = Vec::new();
    for action in tx.actions() {
        match action {
            Action::Transfer(transfer) => {
                payloads.extend(
                    transfer
                        .body
                        .outputs
                        .iter()
                        .map(|output| &output.note_payload),
                );
            }
            Action::NoteReshape(reshape) => {
                payloads.extend(
                    reshape
                        .body
                        .outputs
                        .iter()
                        .map(|output| &output.note_payload),
                );
            }
            Action::ShieldedIcs20Withdrawal(withdrawal) => {
                payloads.push(&withdrawal.body.change_output.note_payload);
            }
            Action::ShieldedHostWithdrawal(withdrawal) => {
                payloads.push(&withdrawal.body.change_output.note_payload);
            }
            _ => {}
        }
    }
    let transaction_body = tx.transaction_body();
    if let Some(fee_funding) = &transaction_body.fee_funding {
        payloads.extend(
            fee_funding
                .transfer
                .body
                .outputs
                .iter()
                .map(|output| &output.note_payload),
        );
    }

    for payload in payloads {
        if payload.is_dummy() {
            continue;
        }
        let tag_precision = payload.discovery_tag.precision;
        if current_discovery_parameters.accepts_precision(
            &previous_discovery_parameters,
            grace_period_blocks,
            block_height,
            tag_precision,
        ) {
            continue;
        } else {
            let using_current_precision = tag_precision == current_discovery_parameters.precision;
            let using_previous_precision = tag_precision == previous_discovery_parameters.precision;
            let within_grace_period = block_height
                < current_discovery_parameters
                    .as_of_block_height
                    .saturating_add(grace_period_blocks);
            tracing::error!(
                precision_bits = tag_precision.bits(),
                %using_current_precision,
                %using_previous_precision,
                %within_grace_period,
                "invalid discovery-tag precision"
            );
            anyhow::bail!("consensus rule violated: invalid discovery-tag precision");
        }
    }
    Ok(())
}

pub async fn claimed_anchor_is_valid<S: StateRead>(
    state: S,
    transaction: &Transaction,
) -> Result<()> {
    state.check_claimed_anchor(transaction.anchor).await
}
