use std::time::Instant;

use anyhow::{Context, Result};
use cnidarium::{StateDelta, StateRead, Storage};
use futures::StreamExt as _;
use shieldd_sdk_compact_block::{component::StateReadExt as _, CompactBlock};
use shieldd_sdk_proto::StateReadProto as _;
use shieldd_sdk_sct::{
    generation_pack::{GenerationPackRepository, NullifierGenerationPack},
    nullifier_generation::{
        NullifierGenerationArchived, NullifierGenerationPackReceipt, NullifierGenerationState,
    },
    nullifier_tree,
};

pub const DIRECTORY: &str = "nullifier-generation-packs";
pub const PACK_BYTES: &str = "shieldd_nullifier_generation_pack_bytes";
pub const PACK_BUILD_DURATION: &str = "shieldd_nullifier_generation_pack_build_seconds";
pub const PACK_FAILURES_TOTAL: &str = "shieldd_nullifier_generation_pack_failures_total";
pub const PACK_RETIRED_GENERATIONS: &str = "shieldd_nullifier_generation_pack_retired_generations";
pub const PACK_READY_GENERATIONS: &str = "shieldd_nullifier_generation_pack_ready_generations";
pub const PACK_PRUNED_RECORDS_TOTAL: &str =
    "shieldd_nullifier_generation_pack_pruned_records_total";
pub const PACK_VERIFY_DURATION: &str = "shieldd_nullifier_generation_pack_verify_seconds";

pub fn register_metrics() {
    metrics::describe_gauge!(
        PACK_BYTES,
        metrics::Unit::Bytes,
        "Size of the latest generation pack"
    );
    metrics::describe_histogram!(
        PACK_BUILD_DURATION,
        metrics::Unit::Seconds,
        "Time to build and durably publish a generation pack"
    );
    metrics::describe_counter!(
        PACK_FAILURES_TOTAL,
        metrics::Unit::Count,
        "Generation pack worker failures"
    );
    metrics::describe_gauge!(
        PACK_RETIRED_GENERATIONS,
        metrics::Unit::Count,
        "Retired nullifier generations"
    );
    metrics::describe_gauge!(
        PACK_READY_GENERATIONS,
        metrics::Unit::Count,
        "Validated local generation packs"
    );
    metrics::describe_counter!(
        PACK_PRUNED_RECORDS_TOTAL,
        metrics::Unit::Count,
        "Expanded generation records pruned after packing"
    );
    metrics::describe_histogram!(
        PACK_VERIFY_DURATION,
        metrics::Unit::Seconds,
        "Time to validate or fully verify a generation pack"
    );
}

/// Validate retired packs, build missing packs, and safely prune expanded copies.
pub async fn prepare(storage: &Storage, repository: &GenerationPackRepository) -> Result<bool> {
    let snapshot = storage.latest_snapshot();
    let Some(generation_state) = snapshot
        .get::<NullifierGenerationState>(shieldd_sdk_sct::state_key::nullifier_generations::state())
        .await?
    else {
        return Ok(false);
    };
    let mut storage_changed = false;
    metrics::gauge!(PACK_RETIRED_GENERATIONS)
        .set(generation_state.archived_generation_count as f64);
    let mut ready = 0u64;
    for generation_index in 0..generation_state.archived_generation_count {
        let mut delta = StateDelta::new(storage.latest_snapshot());
        let archived = nullifier_tree::archived_generation(&delta, generation_index).await?;
        let stored = nullifier_tree::generation_pack_receipt(&delta, generation_index).await?;
        let receipt = ensure_pack(&delta, repository, archived, stored.as_ref()).await?;
        ready += 1;
        let mut changed = false;
        if stored.as_ref() != Some(&receipt) {
            nullifier_tree::record_generation_pack_completion(&mut delta, &receipt).await?;
            changed = true;
        }
        let deleted = nullifier_tree::prune_packed_generation(&mut delta, &receipt).await?;
        if deleted > 0 {
            tracing::info!(
                generation_index,
                deleted,
                "pruned expanded nullifier generation"
            );
            metrics::counter!(PACK_PRUNED_RECORDS_TOTAL).increment(deleted);
            changed = true;
        }
        if changed {
            storage.commit_in_place(delta).await?;
            storage_changed = true;
        }
    }
    metrics::gauge!(PACK_READY_GENERATIONS).set(ready as f64);
    Ok(storage_changed)
}

/// Keep creating packs as generations retire. Pruning is deferred to startup maintenance.
pub fn spawn_worker(
    storage: Storage,
    repository: GenerationPackRepository,
) -> tokio::task::JoinHandle<()> {
    tokio::spawn(async move {
        let mut snapshots = storage.subscribe();
        while snapshots.changed().await.is_ok() {
            let snapshot = snapshots.borrow_and_update().clone();
            let result = async {
                let Some(generation_state) = snapshot
                    .get::<NullifierGenerationState>(
                        shieldd_sdk_sct::state_key::nullifier_generations::state(),
                    )
                    .await?
                else {
                    return Ok::<_, anyhow::Error>(());
                };
                for generation_index in 0..generation_state.archived_generation_count {
                    if repository.contains(generation_index) {
                        continue;
                    }
                    let archived =
                        nullifier_tree::archived_generation(&snapshot, generation_index).await?;
                    ensure_pack(&snapshot, &repository, archived, None).await?;
                }
                Ok(())
            }
            .await;
            if let Err(error) = result {
                metrics::counter!(PACK_FAILURES_TOTAL).increment(1);
                tracing::warn!(%error, "nullifier generation pack worker will retry after the next commit");
            }
        }
    })
}

async fn ensure_pack<S: StateRead + ?Sized>(
    state: &S,
    repository: &GenerationPackRepository,
    archived: NullifierGenerationArchived,
    trusted_receipt: Option<&NullifierGenerationPackReceipt>,
) -> Result<NullifierGenerationPackReceipt> {
    if repository.contains(archived.generation_index) {
        let started = Instant::now();
        let inspected = repository.inspect(archived);
        let existing = match inspected {
            Ok(receipt) if trusted_receipt == Some(&receipt) => Ok(receipt),
            Ok(_) => repository.verify(archived),
            Err(error) => Err(error),
        };
        metrics::histogram!(PACK_VERIFY_DURATION).record(started.elapsed().as_secs_f64());
        match existing {
            Ok(receipt) => return Ok(receipt),
            Err(error) => {
                let quarantine = repository.quarantine(archived.generation_index)?;
                tracing::warn!(
                    generation_index = archived.generation_index,
                    %error,
                    quarantine = ?quarantine,
                    "quarantined invalid nullifier generation pack"
                );
            }
        }
    }

    let started = Instant::now();
    let pack = match nullifier_tree::build_generation_pack(state, archived.generation_index).await {
        Ok(pack) => pack,
        Err(expanded_error) => {
            tracing::info!(
                generation_index = archived.generation_index,
                %expanded_error,
                "rebuilding nullifier generation pack from compact blocks"
            );
            recover_from_compact_blocks(state, archived)
                .await
                .context("expanded tree and compact-block recovery both failed")?
        }
    };
    let receipt = repository.write(&pack)?;
    anyhow::ensure!(
        repository.verify(archived)? == receipt,
        "generation pack changed after durable write"
    );
    metrics::histogram!(PACK_BUILD_DURATION).record(started.elapsed().as_secs_f64());
    tracing::info!(
        generation_index = archived.generation_index,
        leaves = receipt.leaf_count,
        bytes = receipt.byte_length,
        path = %repository.path(archived.generation_index).display(),
        "nullifier generation pack ready"
    );
    metrics::gauge!(PACK_BYTES).set(receipt.byte_length as f64);
    Ok(receipt)
}

async fn recover_from_compact_blocks<S: StateRead + ?Sized>(
    state: &S,
    archived: NullifierGenerationArchived,
) -> Result<NullifierGenerationPack> {
    let mut active_generation = 0u64;
    let mut nullifiers = Vec::new();
    let mut blocks = state.stream_compact_block(0);
    while let Some(block) = blocks.next().await {
        let block: CompactBlock = block?.try_into()?;
        if active_generation == archived.generation_index {
            nullifiers.extend(block.nullifiers);
        }
        if let Some(window) = block.nullifier_window {
            anyhow::ensure!(
                window.current_generation >= active_generation,
                "compact-block nullifier generation moved backwards"
            );
            if active_generation == archived.generation_index
                && window.current_generation > archived.generation_index
            {
                let pack = NullifierGenerationPack::new(archived, nullifiers)?;
                pack.reconstruct()?;
                return Ok(pack);
            }
            active_generation = window.current_generation;
        }
    }
    anyhow::bail!(
        "compact blocks do not contain the complete interval for retired generation {}",
        archived.generation_index
    )
}

#[cfg(test)]
mod tests {
    use super::*;
    use cnidarium::{StateWrite as _, TempStorage};
    use decaf377::Fq;
    use shieldd_sdk_proto::DomainType as _;
    use shieldd_sdk_sct::{nullifier_tree, Nullifier};

    fn nullifier(value: u64) -> Nullifier {
        Nullifier(Fq::from(value))
    }

    #[tokio::test]
    async fn compact_blocks_rebuild_the_exact_retired_root() -> Result<()> {
        let storage = TempStorage::new().await?;
        let mut state = StateDelta::new(storage.latest_snapshot());
        nullifier_tree::initialize(&mut state).await?;
        nullifier_tree::insert_batch(&mut state, [nullifier(7), nullifier(1)]).await?;
        let initial_window = nullifier_tree::generation_state(&state).await?.window();
        let mut block = CompactBlock {
            height: 0,
            nullifiers: vec![nullifier(7), nullifier(1)],
            nullifier_window: Some(initial_window),
            ..Default::default()
        };
        state.nonverifiable_put_raw(
            shieldd_sdk_compact_block::state_key::compact_block(0).into_bytes(),
            block.encode_to_vec(),
        );

        nullifier_tree::rollover(&mut state, 30, 1 << 32).await?;
        let transition = nullifier_tree::rollover(&mut state, 60, 2 << 32)
            .await?
            .context("second rollover")?;
        let archived = transition.archived.context("retired generation")?;
        block.height = 1;
        block.nullifiers.clear();
        block.nullifier_window = Some(transition.next.window());
        state.nonverifiable_put_raw(
            shieldd_sdk_compact_block::state_key::compact_block(1).into_bytes(),
            block.encode_to_vec(),
        );

        let rebuilt = recover_from_compact_blocks(&state, archived).await?;
        assert_eq!(rebuilt.metadata.generation_root, archived.generation_root);
        assert_eq!(rebuilt.nullifiers, vec![nullifier(7), nullifier(1)]);
        rebuilt.reconstruct()?;
        Ok(())
    }

    #[tokio::test]
    async fn startup_preparation_packs_and_prunes_multiple_generations() -> Result<()> {
        let storage_directory = tempfile::tempdir()?;
        let storage_path = storage_directory.path().join("rocksdb");
        let storage = Storage::load(storage_path.clone(), vec![]).await?;
        let mut state = StateDelta::new(storage.latest_snapshot());
        nullifier_tree::initialize(&mut state).await?;
        nullifier_tree::insert_batch(&mut state, [nullifier(7), nullifier(1)]).await?;
        nullifier_tree::rollover(&mut state, 30, 1 << 32).await?;
        nullifier_tree::insert_batch(&mut state, [nullifier(11)]).await?;
        nullifier_tree::rollover(&mut state, 60, 2 << 32).await?;
        nullifier_tree::rollover(&mut state, 90, 3 << 32).await?;
        storage.commit(state).await?;

        let directory = tempfile::tempdir()?;
        let repository = GenerationPackRepository::new(directory.path().to_path_buf(), 1)?;
        assert!(prepare(&storage, &repository).await?);
        storage.release().await;
        let storage = Storage::load(storage_path, vec![]).await?;

        let snapshot = storage.latest_snapshot();
        for generation_index in 0..2 {
            let archived = nullifier_tree::archived_generation(&snapshot, generation_index).await?;
            let receipt = nullifier_tree::generation_pack_receipt(&snapshot, generation_index)
                .await?
                .context("pack receipt missing")?;
            assert_eq!(repository.inspect(archived)?, receipt);
            assert!(nullifier_tree::archived_nonmembership_proof(
                &snapshot,
                generation_index,
                nullifier(8),
            )
            .await
            .is_err());
            repository
                .nonmembership_proof(archived, nullifier(8))?
                .verify_for(nullifier(8))?;
        }
        Ok(())
    }

    #[tokio::test]
    async fn invalid_pack_with_a_stored_receipt_is_rebuilt_before_pruning() -> Result<()> {
        let storage = TempStorage::new().await?;
        let mut state = StateDelta::new(storage.latest_snapshot());
        nullifier_tree::initialize(&mut state).await?;
        nullifier_tree::insert_batch(&mut state, [nullifier(7), nullifier(1)]).await?;
        nullifier_tree::rollover(&mut state, 30, 1 << 32).await?;
        nullifier_tree::rollover(&mut state, 60, 2 << 32).await?;
        let archived = nullifier_tree::archived_generation(&state, 0).await?;
        let pack = nullifier_tree::build_generation_pack(&state, 0).await?;
        let directory = tempfile::tempdir()?;
        let repository = GenerationPackRepository::new(directory.path().to_path_buf(), 1)?;
        let receipt = repository.write(&pack)?;
        nullifier_tree::record_generation_pack_completion(&mut state, &receipt).await?;
        storage.commit(state).await?;

        let mut wrong = pack;
        wrong.nullifiers[0] = nullifier(8);
        std::fs::write(repository.path(0), wrong.encode()?)?;

        assert!(prepare(storage.as_ref(), &repository).await?);
        let snapshot = storage.latest_snapshot();
        let receipt = nullifier_tree::generation_pack_receipt(&snapshot, 0)
            .await?
            .context("pack receipt missing")?;
        assert_eq!(repository.verify(archived)?, receipt);
        assert!(repository
            .nonmembership_proof(archived, nullifier(7))
            .is_err());
        Ok(())
    }

    #[tokio::test]
    async fn valid_receipt_allows_restart_after_expanded_state_is_pruned() -> Result<()> {
        let storage_directory = tempfile::tempdir()?;
        let storage_path = storage_directory.path().join("rocksdb");
        let storage = Storage::load(storage_path.clone(), vec![]).await?;
        let mut state = StateDelta::new(storage.latest_snapshot());
        nullifier_tree::initialize(&mut state).await?;
        nullifier_tree::insert_batch(&mut state, [nullifier(7), nullifier(1)]).await?;
        nullifier_tree::rollover(&mut state, 30, 1 << 32).await?;
        nullifier_tree::rollover(&mut state, 60, 2 << 32).await?;
        storage.commit(state).await?;
        let directory = tempfile::tempdir()?;
        let repository = GenerationPackRepository::new(directory.path().to_path_buf(), 1)?;
        assert!(prepare(&storage, &repository).await?);
        storage.release().await;

        let storage = Storage::load(storage_path, vec![]).await?;
        assert!(!prepare(&storage, &repository).await?);
        let snapshot = storage.latest_snapshot();
        let archived = nullifier_tree::archived_generation(&snapshot, 0).await?;
        repository
            .nonmembership_proof(archived, nullifier(8))?
            .verify_for(nullifier(8))?;
        Ok(())
    }
}
