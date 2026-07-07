use anyhow::{Context, Result};
use cnidarium::StateWrite;
use decaf377_rdsa::{Signature, SpendAuth, VerificationKey};
use shieldd_sdk_proto::{DomainType as _, StateWriteProto as _};
use shieldd_sdk_sct::component::{
    source::SourceContext,
    tree::{SctManager, VerificationExt},
};
use shieldd_sdk_sct::Nullifier;
use shieldd_sdk_txhash::TransactionContext;

use crate::{component::NoteManager, event, NotePayload};

pub(crate) struct NoteReshapeInputPublicParts {
    pub nullifier: Nullifier,
    pub rk: VerificationKey<SpendAuth>,
}

pub(crate) struct NoteReshapeOutputPublicParts {
    pub note_commitment: shieldd_sdk_tct::StateCommitment,
}

enum Padded<'a, T> {
    Real(&'a T),
    Dummy,
}

impl<'a, T> Padded<'a, T> {
    fn classify(item: &'a T, is_dummy: impl Fn(&T) -> bool) -> Self {
        if is_dummy(item) {
            Self::Dummy
        } else {
            Self::Real(item)
        }
    }
}

pub(crate) fn real_items<'a, T>(
    items: &'a [T],
    is_dummy: impl Fn(&T) -> bool + 'a,
) -> impl Iterator<Item = &'a T> + 'a {
    items
        .iter()
        .filter_map(move |item| match Padded::classify(item, &is_dummy) {
            Padded::Real(item) => Some(item),
            Padded::Dummy => None,
        })
}

pub(crate) fn verify_auth_sigs<I>(
    action_label: &str,
    inputs: &[I],
    auth_sigs: &[Signature<SpendAuth>],
    context: &TransactionContext,
    rk: impl Fn(&I) -> &VerificationKey<SpendAuth>,
) -> Result<()> {
    anyhow::ensure!(
        inputs.len() == auth_sigs.len(),
        "{action_label} expected {} auth sigs, got {}",
        inputs.len(),
        auth_sigs.len()
    );
    for (index, (input, auth_sig)) in inputs.iter().zip(auth_sigs.iter()).enumerate() {
        rk(input)
            .verify(context.effect_hash.as_ref(), auth_sig)
            .with_context(|| format!("{action_label} auth signature {index} failed to verify"))?;
    }
    Ok(())
}

pub(crate) fn extract_public_parts<I, O>(
    inputs: &[I],
    outputs: &[O],
    input_parts: impl Fn(&I) -> (Nullifier, &VerificationKey<SpendAuth>),
    output_note_payload: impl Fn(&O) -> &NotePayload,
) -> (
    Vec<NoteReshapeInputPublicParts>,
    Vec<NoteReshapeOutputPublicParts>,
) {
    let inputs = inputs
        .iter()
        .map(|input| {
            let (nullifier, rk) = input_parts(input);
            NoteReshapeInputPublicParts { nullifier, rk: *rk }
        })
        .collect();
    let outputs = outputs
        .iter()
        .map(|output| NoteReshapeOutputPublicParts {
            note_commitment: output_note_payload(output).note_commitment,
        })
        .collect();
    (inputs, outputs)
}

pub(crate) async fn execute<S, I, O>(
    state: &mut S,
    inputs: &[I],
    outputs: &[O],
    input_nullifier: impl Fn(&I) -> Nullifier,
    input_is_dummy: impl Fn(&I) -> bool,
    output_note_payload: impl Fn(&O) -> &NotePayload,
    output_is_dummy: impl Fn(&O) -> bool,
) -> Result<()>
where
    S: StateWrite,
{
    for input in inputs {
        if let Padded::Real(input) = Padded::classify(input, &input_is_dummy) {
            state
                .check_nullifier_unspent(input_nullifier(input))
                .await?;
        }
    }

    let source = state
        .get_current_source()
        .ok_or_else(|| anyhow::anyhow!("source should be set during execution"))?;

    for input in inputs {
        if let Padded::Real(input) = Padded::classify(input, &input_is_dummy) {
            let nullifier = input_nullifier(input);
            state.nullify(nullifier, source.into()).await?;
            state.record_proto(event::EventNullifierSpent { nullifier }.to_proto());
        }
    }
    for output in outputs {
        if let Padded::Real(output) = Padded::classify(output, &output_is_dummy) {
            let note_payload = output_note_payload(output).clone();
            let note_commitment = note_payload.note_commitment;
            state.add_note_payload(note_payload, source.into()).await;
            state.record_proto(event::EventNoteCreated { note_commitment }.to_proto());
        }
    }

    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;
    use cnidarium::{StateDelta, TempStorage};
    use decaf377::Fq;
    use shieldd_sdk_txhash::TransactionId;

    struct TestInput(Nullifier);

    async fn run_execute<S: StateWrite>(state: &mut S, nullifier: Nullifier) -> Result<()> {
        execute::<_, TestInput, NotePayload>(
            state,
            &[TestInput(nullifier)],
            &[],
            |input| input.0,
            |_| false,
            |payload| payload,
            |_| true,
        )
        .await
    }

    /// Assurance-case R2.2 (evidence gap #1): the check-then-nullify handler
    /// path rejects a nullifier that was already spent.
    #[tokio::test]
    async fn execute_rejects_repeated_nullifier() -> Result<()> {
        let storage = TempStorage::new().await?;
        let mut state = StateDelta::new(storage.latest_snapshot());
        shieldd_sdk_sct::nullifier_tree::initialize(&mut state).await?;
        shieldd_sdk_sct::component::clock::EpochManager::put_block_height(&mut state, 1);
        state.put_current_source(Some(TransactionId([7u8; 32])));
        let nullifier = Nullifier(Fq::from(42u64));

        run_execute(&mut state, nullifier).await?;

        let err = run_execute(&mut state, nullifier)
            .await
            .expect_err("second spend of the same nullifier must be rejected");
        assert!(
            err.to_string().contains("already spent"),
            "unexpected rejection reason: {err:#}"
        );

        // A distinct nullifier is still accepted after the rejection.
        run_execute(&mut state, Nullifier(Fq::from(43u64))).await?;
        Ok(())
    }
}
