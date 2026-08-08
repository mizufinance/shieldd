use anyhow::{Context, Result};
use async_trait::async_trait;
use cnidarium::StateWrite;
use cnidarium_component::ActionHandler;
use shieldd_sdk_compliance::registry::ComplianceRegistryRead;
use shieldd_sdk_proof_params::batch::{self, BatchItem};
use shieldd_sdk_proto::{DomainType as _, StateWriteProto as _};
use shieldd_sdk_sct::component::{
    clock::EpochRead,
    source::SourceContext,
    tree::{SctManager, VerificationExt},
};
use shieldd_sdk_txhash::TransactionContext;

use crate::transfer::compliance::{
    parse_transfer_output_compliance, transfer_compliance_public_from_parts,
};
use crate::{
    component::{
        action_handler::note_reshape, DiscoveryManager, NoteManager,
        StateReadExt as ShieldedPoolStateReadExt,
    },
    discovery, event, Transfer, TransferInputBody, TransferOutputBody, TransferOutputPublic,
    TransferProofPublic, TransferSpendPublic,
};

pub fn transfer_verify_auth_sigs(transfer: &Transfer, context: &TransactionContext) -> Result<()> {
    anyhow::ensure!(
        transfer.body.inputs.len() == transfer.auth_sigs.len(),
        "transfer expected {} auth sigs, got {}",
        transfer.body.inputs.len(),
        transfer.auth_sigs.len()
    );
    for (index, (input, auth_sig)) in transfer
        .body
        .inputs
        .iter()
        .zip(transfer.auth_sigs.iter())
        .enumerate()
    {
        input
            .rk
            .verify(context.effect_hash.as_ref(), auth_sig)
            .with_context(|| format!("transfer auth signature {index} failed to verify"))?;
    }
    Ok(())
}

fn transfer_check_lengths(transfer: &Transfer) -> Result<()> {
    for (index, input) in transfer.body.inputs.iter().enumerate() {
        anyhow::ensure!(
            input.compliance_ciphertext.is_empty(),
            "transfer input {} compliance ciphertext must be empty",
            index + 1
        );
    }
    let _ = parse_transfer_output_compliance(&transfer.body.outputs)?;
    Ok(())
}

pub fn transfer_extract_public(
    transfer: &Transfer,
    context: &TransactionContext,
) -> Result<TransferProofPublic> {
    let inputs = transfer
        .body
        .inputs
        .iter()
        .map(|input| {
            Ok(TransferSpendPublic {
                nullifier: input.nullifier,
                rk: input.rk,
            })
        })
        .collect::<Result<Vec<_>>>()?;
    let (ciphertext, bundle) = parse_transfer_output_compliance(&transfer.body.outputs)?;
    let outputs = transfer
        .body
        .outputs
        .iter()
        .map(|output| {
            Ok(TransferOutputPublic {
                note_commitment: output.note_payload.note_commitment,
            })
        })
        .collect::<Result<Vec<_>>>()?;

    let public = TransferProofPublic {
        anchor: context.anchor,
        balance_commitment: transfer.body.balance_commitment,
        asset_anchor: transfer.body.asset_anchor,
        compliance_anchor: transfer.body.compliance_anchor,
        target_timestamp: decaf377::Fq::from(transfer.body.target_timestamp),
        inputs,
        outputs,
        compliance: transfer_compliance_public_from_parts(&ciphertext, &bundle)?,
    };
    public
        .validate_shape()
        .context("transfer proof shape mismatch")?;
    Ok(public)
}

pub fn transfer_to_batch_item(
    transfer: &Transfer,
    public: TransferProofPublic,
) -> Result<BatchItem> {
    transfer.proof.to_batch_item(&public)
}

pub fn transfer_check_stateless_and_extract(
    transfer: &Transfer,
    context: &TransactionContext,
) -> Result<BatchItem> {
    transfer_verify_auth_sigs(transfer, context)?;
    transfer_check_lengths(transfer)?;
    let public = transfer_extract_public(transfer, context)?;
    transfer_to_batch_item(transfer, public)
}

#[async_trait]
impl ActionHandler for Transfer {
    type CheckStatelessContext = TransactionContext;

    async fn check_stateless(&self, context: TransactionContext) -> Result<()> {
        let item = transfer_check_stateless_and_extract(self, &context)?;
        batch::batch_verify(
            shieldd_sdk_proof_params::transfer_proof_verification_key(),
            std::slice::from_ref(&item),
        )
        .map_err(|e| anyhow::anyhow!("transfer proof did not verify: {e}"))?;
        Ok(())
    }

    async fn check_and_execute<S: StateWrite>(&self, mut state: S) -> Result<()> {
        let (ciphertext, _) = parse_transfer_output_compliance(&self.body.outputs)?;
        anyhow::ensure!(
            self.body.outputs.iter().enumerate().all(|(index, output)| {
                let expected = if index == 0 {
                    ciphertext.discovery_tags.receiver.value()
                } else {
                    ciphertext.discovery_tags.sender.value()
                };
                output.note_payload.discovery_tag.precision.bits()
                    == ciphertext.discovery_tags.precision_bits
                    && output.note_payload.discovery_tag.value == expected
            }),
            "participant discovery tags do not match output note discovery tags",
        );

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

        for input in &self.body.inputs {
            state.check_nullifier_unspent(input.nullifier).await?;
        }

        let source = state
            .get_current_source()
            .ok_or_else(|| anyhow::anyhow!("source should be set during execution"))?;

        let discovery_precision =
            discovery::Precision::new(ciphertext.discovery_tags.precision_bits)?;
        let current_discovery = state.get_current_discovery_parameters().await?;
        let previous_discovery = state.get_previous_discovery_parameters().await?;
        let discovery_grace_period_blocks = state
            .get_shielded_pool_params()
            .await?
            .discovery_grace_period_blocks;
        let block_height = state.get_block_height().await?;
        anyhow::ensure!(
            current_discovery.accepts_precision(
                &previous_discovery,
                discovery_grace_period_blocks,
                block_height,
                discovery_precision,
            ),
            "transfer discovery precision is not active at this block",
        );
        state.record_transaction_discovery(discovery::Transaction {
            transaction_id: source,
            sender: discovery::Tag {
                precision: discovery_precision,
                value: ciphertext.discovery_tags.sender.value(),
            },
            receiver: discovery::Tag {
                precision: discovery_precision,
                value: ciphertext.discovery_tags.receiver.value(),
            },
        });

        for input in note_reshape::real_items(&self.body.inputs, TransferInputBody::is_dummy) {
            state.nullify(input.nullifier, source.into()).await?;
            state.record_proto(
                event::EventNullifierSpent {
                    nullifier: input.nullifier,
                }
                .to_proto(),
            );
        }
        for output in note_reshape::real_items(&self.body.outputs, TransferOutputBody::is_dummy) {
            state
                .add_note_payload(output.note_payload.clone(), source.into())
                .await;
            state.record_proto(
                event::EventNoteCreated {
                    note_commitment: output.note_payload.note_commitment,
                }
                .to_proto(),
            );
        }

        Ok(())
    }
}
