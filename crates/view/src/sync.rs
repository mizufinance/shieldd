use std::collections::BTreeMap;

use futures::{stream, StreamExt};
use shieldd_sdk_compact_block::{CompactBlock, StatePayload};
use shieldd_sdk_compliance::effective_nullifier_key;
use shieldd_sdk_fee::GasPrices;
use shieldd_sdk_keys::FullViewingKey;
use shieldd_sdk_sct::{nullifier_generation::NullifierWindow, Nullifier};
use shieldd_sdk_shielded_pool::{discovery, VolumeAccumulatorPayload, VolumeAccumulatorState};
use shieldd_sdk_tct::{self as tct, StateCommitment};

use crate::{storage::ComplianceBlockPlan, SpendableNoteRecord, Storage};

const SCT_BLOCK_CAPACITY: usize = u16::MAX as usize + 1;

/// Contains the results of scanning a single block.
#[derive(Debug, Clone)]
pub struct FilteredBlock {
    pub new_notes: BTreeMap<StateCommitment, SpendableNoteRecord>,
    pub spent_nullifiers: Vec<Nullifier>,
    pub height: u64,
    pub discovery_parameters: Option<discovery::Parameters>,
    pub app_parameters_updated: bool,
    pub gas_prices: Option<GasPrices>,
    pub nullifier_window: Option<NullifierWindow>,
    pub volume_accumulators: Vec<RecoveredVolumeAccumulator>,
}

#[derive(Debug, Clone)]
pub struct RecoveredVolumeAccumulator {
    pub payload: VolumeAccumulatorPayload,
    pub state: VolumeAccumulatorState,
    pub position: tct::Position,
}

pub async fn scan_block(
    fvk: &FullViewingKey,
    tree: &mut tct::Tree,
    block: CompactBlock,
    storage: &Storage,
    compliance: Option<&ComplianceBlockPlan>,
) -> anyhow::Result<FilteredBlock> {
    scan(fvk, tree, block, None, storage, compliance).await
}

pub async fn scan_sparse_block(
    fvk: &FullViewingKey,
    tree: &mut tct::Tree,
    sparse: shieldd_sdk_compact_block::pages::SparseCompactBlock,
    storage: &Storage,
    compliance: Option<&ComplianceBlockPlan>,
) -> anyhow::Result<FilteredBlock> {
    anyhow::ensure!(
        sparse.block.state_payloads.len() == sparse.proofs.len(),
        "sparse payload/proof count mismatch"
    );
    for (index, (payload, proof)) in sparse
        .block
        .state_payloads
        .iter()
        .zip(&sparse.proofs)
        .enumerate()
    {
        anyhow::ensure!(
            payload.commitment() == &proof.commitment
                && (index == 0 || sparse.proofs[index - 1].position < proof.position),
            "sparse payload order or commitment mismatch"
        );
    }
    tct::builder::block::Finalized::checked_sparse(
        sparse.block.block_root,
        sparse.payload_count,
        &sparse.proofs,
    )?;
    let position = tree
        .position()
        .ok_or_else(|| anyhow::anyhow!("wallet SCT is full"))?;
    anyhow::ensure!(
        u64::from(position) & 65535 == 0
            && (sparse.payload_count == 0
                || sparse.block.state_payload_start_position == u64::from(position)),
        "sparse block starts at the wrong SCT position"
    );
    scan(
        fvk,
        tree,
        sparse.block,
        Some((sparse.payload_count, sparse.proofs)),
        storage,
        compliance,
    )
    .await
}

#[tracing::instrument(skip_all, fields(height = %height))]
async fn scan(
    fvk: &FullViewingKey,
    state_commitment_tree: &mut tct::Tree,
    CompactBlock {
        height,
        state_payloads,
        nullifiers,
        block_root,
        epoch_root,
        discovery_parameters,
        app_parameters_updated,
        gas_prices,
        nullifier_window,
        // TODO: do we need this, or is there a bug in scan_block?
        // proposal_started,
        ..
    }: CompactBlock,
    sparse: Option<(u32, Vec<tct::builder::block::LeafProof>)>,
    storage: &Storage,
    compliance_plan: Option<&ComplianceBlockPlan>,
) -> anyhow::Result<FilteredBlock> {
    // Nullifiers we've found in this block
    let spent_nullifiers: Vec<Nullifier> = nullifiers;

    // Trial-decrypt the notes in this block, keeping track of the ones that were meant for us
    let mut unknown_commitments = Vec::new();
    let mut volume_advice = BTreeMap::new();

    for payload in state_payloads.iter() {
        match payload {
            StatePayload::Note { .. } => {}
            StatePayload::RolledUp { commitment, .. } => unknown_commitments.push(*commitment),
            StatePayload::VolumeAccumulator { payload, .. } => {
                match payload.trial_decrypt(fvk.outgoing()) {
                    Some((state, true)) => {
                        volume_advice.insert(payload.commitment, ((**payload).clone(), state));
                    }
                    _ => unknown_commitments.push(payload.commitment),
                }
            }
        }
    }
    let mut note_advice = storage.scan_advice(unknown_commitments).await?;
    // FullScan never depends on issued-address metadata or routing selectors.
    let mut decryptions = stream::iter(
        state_payloads
            .iter()
            .filter_map(|payload| match payload {
                StatePayload::Note { note, .. } => Some(note),
                _ => None,
            })
            .map(|note| {
                let note = (**note).clone();
                let fvk = fvk.clone();
                tokio::task::spawn_blocking(move || note.trial_decrypt(&fvk))
            }),
    )
    .buffered(2);
    while let Some(decryption) = decryptions.next().await {
        if let Some(note) = decryption? {
            note_advice.insert(note.commit(), note);
        }
    }
    drop(decryptions);
    let sparse_start = state_commitment_tree.position().map(u64::from);
    let mut kept_proofs = Vec::new();
    // Newly detected spendable notes.
    let mut new_notes = BTreeMap::new();
    let mut volume_accumulators = Vec::new();

    if note_advice.is_empty() && volume_advice.is_empty() {
        // If there are no notes we care about in this block, just insert the block root into the
        // tree instead of processing each commitment individually
        state_commitment_tree
            .insert_block(block_root)
            .expect("inserting a block root must succeed");
    } else {
        // If we found at least one note for us in this block, we have to explicitly construct the
        // whole block in the SCT by inserting each commitment one at a time
        tracing::debug!("found at least one relevant SCT entry, reconstructing block subtree");
        let mut commitments_in_reconstructed_block = 0usize;

        for (payload_index, payload) in state_payloads.into_iter().enumerate() {
            if sparse.is_none() && commitments_in_reconstructed_block == SCT_BLOCK_CAPACITY {
                state_commitment_tree
                    .end_block()
                    .expect("ending a reconstructed SCT block must succeed");
                commitments_in_reconstructed_block = 0;
            }

            // We need to insert each commitment, so use a match statement to ensure we
            // exhaustively cover all possible cases.
            if let Some((volume_payload, state)) = volume_advice.remove(payload.commitment()) {
                let position = if let Some((_, proofs)) = &sparse {
                    kept_proofs.push(proofs[payload_index].clone());
                    tct::Position::from(
                        sparse_start.expect("validated sparse start")
                            + proofs[payload_index].position as u64,
                    )
                } else {
                    state_commitment_tree.insert(tct::Witness::Keep, *payload.commitment())?
                };
                volume_accumulators.push(RecoveredVolumeAccumulator {
                    payload: volume_payload,
                    state,
                    position,
                });
            } else {
                match note_advice.get(payload.commitment()) {
                    Some(note) => {
                        // Keep track of this commitment for later witnessing
                        let position = if let Some((_, proofs)) = &sparse {
                            kept_proofs.push(proofs[payload_index].clone());
                            tct::Position::from(
                                sparse_start.expect("validated sparse start")
                                    + proofs[payload_index].position as u64,
                            )
                        } else {
                            state_commitment_tree
                                .insert(tct::Witness::Keep, *payload.commitment())?
                        };

                        let source = payload.source().clone();
                        let policy = match compliance_plan
                            .and_then(|plan| plan.asset_policy(note.asset_id()))
                        {
                            Some(policy) => Some(policy.clone()),
                            None => storage.get_asset_policy(&note.asset_id()).await?,
                        };
                        let nk = match policy {
                            Some(policy) => {
                                let pending_leaf = compliance_plan
                                    .and_then(|plan| {
                                        plan.user_leaf(&note.address(), note.asset_id())
                                    })
                                    .cloned();
                                let rnk_dh_pk = match pending_leaf {
                                    Some(leaf) => leaf.rnk_dh_pk,
                                    None => {
                                        let leaf = storage
                                            .get_compliance_leaf_data(
                                                &note.address(),
                                                &note.asset_id(),
                                            )
                                            .await?
                                            .ok_or_else(|| {
                                                anyhow::anyhow!(
                                                    "regulated note is missing its compliance leaf"
                                                )
                                            })?;
                                        shieldd_sdk_crypto::encoding::nonidentity(&leaf.rnk_dh_pk)
                                            .map_err(|_| {
                                            anyhow::anyhow!("stored rnk_dh_pk is invalid")
                                        })?
                                    }
                                };
                                effective_nullifier_key(
                                    *fvk.nullifier_key(),
                                    fvk.incoming(),
                                    &note.address(),
                                    note.asset_id(),
                                    policy.ring.ring_pk,
                                    rnk_dh_pk,
                                    true,
                                )?
                            }
                            None => *fvk.nullifier_key(),
                        };
                        let nullifier = Nullifier::derive(&nk, position, payload.commitment());
                        let address_index =
                            fvk.incoming().index_for_diversifier(note.diversifier());

                        new_notes.insert(
                            *payload.commitment(),
                            SpendableNoteRecord {
                                note_commitment: *payload.commitment(),
                                height_spent: None,
                                height_created: height,
                                note: note.clone(),
                                address_index,
                                nullifier,
                                position,
                                source,
                                return_address: None,
                            },
                        );
                    }
                    None => {
                        // Don't remember this commitment; it wasn't ours
                        if sparse.is_none() {
                            state_commitment_tree
                                .insert(tct::Witness::Forget, *payload.commitment())?;
                        }
                    }
                }
            }

            commitments_in_reconstructed_block += 1;
        }

        if let Some((count, _)) = sparse {
            state_commitment_tree.insert_block(tct::builder::block::Finalized::checked_sparse(
                block_root,
                count,
                &kept_proofs,
            )?)?;
        } else if commitments_in_reconstructed_block > 0 {
            state_commitment_tree
                .end_block()
                .expect("ending the block must succeed");
        }
    }

    // If we've also reached the end of the epoch, end the epoch in the commitment tree
    let is_epoch_end = epoch_root.is_some();
    if is_epoch_end {
        tracing::debug!(?height, "end of epoch");
        state_commitment_tree
            .end_epoch()
            .expect("ending the epoch must succeed");
    }

    // Print the TCT root for debugging
    tracing::debug!(tct_root = %state_commitment_tree.root(), "tct root");

    // Filter nullifiers to remove any without matching note note_commitments
    // This is a very important optimization to avoid unnecessary query load on the storage backend
    // -- it results in 100x+ slower sync times if we don't do this!
    let newly_spent = new_notes
        .values()
        .map(|n| n.nullifier)
        .filter(|n| spent_nullifiers.contains(n))
        .collect::<std::collections::BTreeSet<_>>();
    let mut filtered_nullifiers = storage
        .filter_nullifiers(spent_nullifiers)
        .await?
        .into_iter()
        .collect::<std::collections::BTreeSet<_>>();
    filtered_nullifiers.extend(newly_spent);
    let filtered_nullifiers = filtered_nullifiers.into_iter().collect();

    // Construct filtered block
    let result = FilteredBlock {
        new_notes,
        spent_nullifiers: filtered_nullifiers,
        height,
        discovery_parameters,
        app_parameters_updated,
        gas_prices,
        nullifier_window,
        volume_accumulators,
    };

    Ok(result)
}

#[cfg(test)]
mod selective_tests {
    use super::*;
    use shieldd_sdk_asset::{asset, Value};
    use shieldd_sdk_keys::{keys::AddressIndex, test_keys};
    use shieldd_sdk_shielded_pool::{Note, RecoveryCommitment, Rseed};

    #[tokio::test]
    async fn sparse_and_full_scans_keep_identical_positions_witnesses_and_same_block_spends(
    ) -> anyhow::Result<()> {
        let fvk = &*test_keys::FULL_VIEWING_KEY;
        let storage =
            Storage::initialize(None::<&camino::Utf8Path>, fvk.clone(), Default::default()).await?;
        let note = Note::from_parts(
            fvk.payment_address(AddressIndex::new(0)),
            Value {
                amount: 5u64.into(),
                asset_id: asset::Id(shieldd_sdk_crypto::Fq::from(7u64)),
            },
            Rseed([1; 32]),
            RecoveryCommitment::unavailable(),
        )?;
        storage.give_advice(note.clone()).await?;
        // Duplicate commitments must retain their actual positions; the latest witness wins.
        let commitments = vec![
            tct::StateCommitment(shieldd_sdk_crypto::Fq::from(99)),
            note.commit(),
            tct::StateCommitment(shieldd_sdk_crypto::Fq::from(98)),
            note.commit(),
        ];
        let root = tct::builder::block::finalized_forget_root(&commitments)?;
        let proofs = tct::builder::block::ProofTree::new(commitments.clone(), root)?;
        let nullifier = Nullifier::derive(
            fvk.nullifier_key(),
            tct::Position::from(3u64),
            &note.commit(),
        );
        let block = CompactBlock {
            state_payloads: commitments
                .into_iter()
                .map(|commitment| StatePayload::RolledUp {
                    commitment,
                    source: shieldd_sdk_sct::CommitmentSource::Genesis,
                })
                .collect(),
            nullifiers: vec![nullifier],
            block_root: root,
            ..Default::default()
        };
        let mut sparse_block = block.clone();
        sparse_block.state_payloads = vec![
            block.state_payloads[1].clone(),
            block.state_payloads[3].clone(),
        ];
        let sparse = shieldd_sdk_compact_block::pages::SparseCompactBlock {
            block: sparse_block,
            payload_count: 4,
            proofs: vec![proofs.proof(1)?, proofs.proof(3)?],
            owners: Default::default(),
        };
        let mut full_tree = tct::Tree::new();
        let mut sparse_tree = tct::Tree::new();
        let full = scan_block(fvk, &mut full_tree, block, &storage, None).await?;
        let filtered = scan_sparse_block(fvk, &mut sparse_tree, sparse, &storage, None).await?;
        assert_eq!(
            full.new_notes[&note.commit()].position,
            tct::Position::from(3u64)
        );
        assert_eq!(
            full.new_notes[&note.commit()].position,
            filtered.new_notes[&note.commit()].position
        );
        assert_eq!(full.spent_nullifiers, vec![nullifier]);
        assert_eq!(full.spent_nullifiers, filtered.spent_nullifiers);
        assert_eq!(full_tree.root(), sparse_tree.root());
        assert_eq!(
            full_tree.witness(note.commit()),
            sparse_tree.witness(note.commit())
        );
        for tree in [&mut full_tree, &mut sparse_tree] {
            tree.end_epoch()?;
            tree.insert_block(tct::builder::block::finalized_forget_root(&[])?)?;
        }
        assert_eq!(full_tree.root(), sparse_tree.root());
        assert_eq!(
            full_tree.witness(note.commit()),
            sparse_tree.witness(note.commit())
        );
        Ok(())
    }
}
