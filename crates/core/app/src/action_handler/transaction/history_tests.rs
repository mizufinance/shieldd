use super::*;
use shieldd_sdk_circuits::{
    catalogue::Witness,
    encoding::{field, native_field},
    history,
    tree::Path,
};
use shieldd_sdk_crypto::Fq;
use shieldd_sdk_proof_params::{
    historical::{ChunkClaim, GenerationClaim},
    pari::{proving_strategy, Registry},
};
use shieldd_sdk_sct::{
    indexed_nullifier_tree::{IndexedNullifierLeaf, IndexedNullifierWitness, ZERO_HASHES},
    nullifier_generation::{
        append_history, GenerationNonmembershipProof, HistoricalChunkProof,
        HistoricalNullifierProof, NullifierWindow,
    },
};

fn history_fixture(
    registry: &Registry,
    nullifier: Nullifier,
) -> Result<(NullifierWindow, HistoricalNullifierProof)> {
    let leaf = IndexedNullifierLeaf::lower_sentinel();
    let raw = IndexedNullifierWitness {
        leaf_position: 0,
        leaf,
        auth_path: (0..history::DEPTH)
            .map(|i| [ZERO_HASHES[i].to_bytes(); 3])
            .collect(),
    };
    let root = raw.root()?;
    let mut head = empty_history_head();
    let mut generations = Vec::new();
    for index in 0..11 {
        let end = append_history(head, index, root, index, index + 1)?;
        let statement = GenerationClaim {
            protocol_version: PROTOCOL_VERSION,
            nullifier: nullifier.into(),
            generation_index: index,
            generation_root: root,
            generation_start_position: index,
            generation_end_position: index + 1,
            start_history_head: head,
            end_history_head: end,
        }
        .statement()?;
        generations.push(history::GenerationWitness {
            statement,
            leaf: history::Leaf {
                value: field(&Fq::from(0)),
                next_index: 0,
                next_value: field(&Fq::from(0)),
                lower_sentinel: true,
                terminal: true,
            },
            path: Path {
                position: field(&Fq::from(0)),
                siblings: std::array::from_fn(|i| std::array::from_fn(|_| field(&ZERO_HASHES[i]))),
            },
        });
        head = end;
    }
    let tail = generations.pop().context("tail")?;
    let chunk_head = native_field(&tail.statement.start_head).to_bytes();
    let chunk = history::ChunkWitness {
        statement: ChunkClaim {
            protocol_version: PROTOCOL_VERSION,
            nullifier: nullifier.into(),
            chunk_index: 0,
            start_history_head: empty_history_head(),
            end_history_head: chunk_head,
        }
        .statement()?,
        generations: generations
            .try_into()
            .map_err(|_| anyhow::anyhow!("ten generations"))?,
    };
    let chunk_proof = registry
        .prove(&Witness::HistoryChunk(Box::new(chunk)), proving_strategy()?)?
        .to_bytes();
    let tail_proof = registry
        .prove(
            &Witness::HistoryGeneration(Box::new(tail)),
            proving_strategy()?,
        )?
        .to_bytes();
    Ok((
        NullifierWindow {
            protocol_version: PROTOCOL_VERSION,
            current_generation: 12,
            recent_position_floor: 11,
            archived_generation_count: 11,
            archived_history_head: head,
        },
        HistoricalNullifierProof {
            nullifier,
            completed_chunks: vec![HistoricalChunkProof {
                chunk_index: 0,
                end_history_head: chunk_head,
                proof: chunk_proof,
            }],
            tail: vec![GenerationNonmembershipProof {
                generation_index: 10,
                generation_root: root,
                generation_start_position: 10,
                generation_end_position: 11,
                proof: tail_proof,
            }],
        },
    ))
}

#[test]
#[ignore = "requires local Pari keys and mixed-family historical proofs"]
fn historical_receipts_require_every_input_and_both_families() -> Result<()> {
    let registry = Registry::load(std::env::var("SHIELDD_PARI_KEYS")?)?;
    let nullifiers = [Nullifier(Fq::from(9)), Nullifier(Fq::from(10))];
    let (window, first) = history_fixture(&registry, nullifiers[0])?;
    let (second_window, second) = history_fixture(&registry, nullifiers[1])?;
    assert_eq!(window, second_window);
    for proof in [&first, &second] {
        verify_historical_nullifier_proof(proof.nullifier, window, proof, &registry)?;
    }
    // This test owns history receipt creation, not transfer-proof/signature admission.
    let (mut transfer, _, _) = shieldd_sdk_shielded_pool::test_proof_helpers::proof_test_helpers::build_transfer_action_and_public_without_proof(false);
    assert_eq!(transfer.body.inputs.len(), 2);
    for (input, nullifier) in transfer.body.inputs.iter_mut().zip(nullifiers) {
        input.nullifier = nullifier;
        input.history_required = true;
    }
    let mut tx = Transaction::default();
    tx.transaction_body.actions.push(Action::Transfer(transfer));
    tx.transaction_body.nullifier_window = Some(window);
    tx.transaction_body.historical_nullifier_proofs = vec![first, second];
    let receipts = verify_historical_proofs(&tx, &registry)?;
    assert_eq!(
        receipts,
        nullifiers.map(|nf| VerifiedHistoricalInput::new(nf, window, tx.auth_hash()))
    );
    for family in 0..2 {
        let mut invalid = tx.clone();
        let bundle = &mut invalid.transaction_body.historical_nullifier_proofs[1];
        let proof = if family == 0 {
            &mut bundle.completed_chunks[0].proof
        } else {
            &mut bundle.tail[0].proof
        };
        *proof.last_mut().unwrap() ^= 1;
        invalid.transaction_body.validate_nullifier_history()?;
        let error = verify_historical_proofs(&invalid, &registry).unwrap_err();
        assert!(
            error.to_string().contains("invalid Pari proof batch"),
            "{error:#}"
        );
    }
    let mut wrong_head = tx.clone();
    wrong_head.transaction_body.historical_nullifier_proofs[1].tail[0].generation_end_position += 1;
    let error = verify_historical_proofs(&wrong_head, &registry).unwrap_err();
    assert!(
        format!("{error:#}").contains("current history head"),
        "{error:#}"
    );
    let mut wrong_input = tx.clone();
    wrong_input
        .transaction_body
        .historical_nullifier_proofs
        .swap(0, 1);
    assert!(format!(
        "{:#}",
        verify_historical_proofs(&wrong_input, &registry).unwrap_err()
    )
    .contains("does not match its old input nullifier"));
    let mut wrong_window = window;
    wrong_window.archived_history_head = empty_history_head();
    assert!(verify_historical_nullifier_proof(
        nullifiers[0],
        wrong_window,
        &tx.transaction_body.historical_nullifier_proofs[0],
        &registry
    )
    .is_err());
    Ok(())
}
