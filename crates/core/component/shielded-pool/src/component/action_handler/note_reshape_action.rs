use anyhow::{Context, Result};
use async_trait::async_trait;
use cnidarium::StateWrite;
use cnidarium_component::ActionHandler;
use shieldd_sdk_proof_params::batch::{self, BatchItem};
use shieldd_sdk_txhash::TransactionContext;

use crate::{
    component::action_handler::note_reshape, NoteReshape, NoteReshapeInputPublic,
    NoteReshapeOutputPublic, NoteReshapeProofPublic,
};

pub fn note_reshape_verify_auth_sigs(
    note_reshape: &NoteReshape,
    context: &TransactionContext,
) -> Result<()> {
    note_reshape::verify_auth_sigs(
        "note_reshape",
        &note_reshape.body.inputs,
        &note_reshape.auth_sigs,
        context,
        |input| &input.rk,
    )
}

pub fn note_reshape_extract_public(
    note_reshape: &NoteReshape,
    context: &TransactionContext,
) -> Result<NoteReshapeProofPublic> {
    let (inputs, outputs) = note_reshape::extract_public_parts(
        &note_reshape.body.inputs,
        &note_reshape.body.outputs,
        |input| (input.nullifier, &input.rk),
        |output| &output.note_payload,
    );

    let public = NoteReshapeProofPublic {
        family_id: note_reshape.body.family_id,
        anchor: context.anchor,
        balance_commitment: note_reshape.body.balance_commitment,
        inputs: inputs
            .into_iter()
            .map(|input| NoteReshapeInputPublic {
                nullifier: input.nullifier,
                rk: input.rk,
            })
            .collect(),
        outputs: outputs
            .into_iter()
            .map(|output| NoteReshapeOutputPublic {
                note_commitment: output.note_commitment,
            })
            .collect(),
    };
    public
        .validate_shape()
        .context("note_reshape proof family shape mismatch")?;
    Ok(public)
}

pub fn note_reshape_to_batch_item(
    note_reshape: &NoteReshape,
    public: NoteReshapeProofPublic,
) -> Result<BatchItem> {
    note_reshape.proof.to_batch_item(&public)
}

pub fn note_reshape_check_stateless_and_extract(
    note_reshape: &NoteReshape,
    context: &TransactionContext,
) -> Result<BatchItem> {
    note_reshape_verify_auth_sigs(note_reshape, context)?;
    let public = note_reshape_extract_public(note_reshape, context)?;
    note_reshape_to_batch_item(note_reshape, public)
}

#[async_trait]
impl ActionHandler for NoteReshape {
    type CheckStatelessContext = TransactionContext;

    async fn check_stateless(&self, context: TransactionContext) -> Result<()> {
        let item = note_reshape_check_stateless_and_extract(self, &context)?;
        batch::batch_verify(
            self.body.family_id.proof_verification_key(),
            std::slice::from_ref(&item),
        )
        .map_err(|e| anyhow::anyhow!("note_reshape proof did not verify: {e}"))?;
        Ok(())
    }

    async fn check_and_execute<S: StateWrite>(&self, mut state: S) -> Result<()> {
        note_reshape::execute_note_reshape(
            &mut state,
            &self.body.inputs,
            &self.body.outputs,
            |input| input.nullifier,
            |output| &output.note_payload,
        )
        .await
    }
}
