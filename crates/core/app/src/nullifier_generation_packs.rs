use std::{sync::Arc, time::Instant};

use anyhow::{Context, Result};
use cnidarium::{StateRead, StateWrite, Storage};
use futures::StreamExt as _;
use shieldd_sdk_compact_block::{component::StateReadExt as _, CompactBlock};
use shieldd_sdk_proto::StateReadProto as _;
use shieldd_sdk_sct::{
    generation_pack::{GenerationPackRepository, NullifierGenerationPack},
    nullifier_generation::{
        NullifierGenerationArchived, NullifierGenerationPackReceipt, NullifierGenerationState,
    },
    nullifier_tree, state_key,
};

const PRUNE_PAGE_KEYS: usize = 256;
static PACK_REPAIR: once_cell::sync::Lazy<Arc<tokio::sync::Mutex<()>>> =
    once_cell::sync::Lazy::new(|| Arc::new(tokio::sync::Mutex::new(())));

#[derive(Clone, Copy, Debug, Default, serde::Deserialize, serde::Serialize)]
struct PruneCursor {
    generation_index: u64,
    prefix_index: u8,
}

#[derive(Default)]
pub struct MaintenanceResult {
    pub changed: bool,
    pub deleted: u64,
    pub completed_generation: Option<u64>,
}

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

/// Validate retired packs and rebuild missing local artifacts before proof service starts.
pub async fn prepare(storage: &Storage, repository: &GenerationPackRepository) -> Result<u64> {
    let snapshot = storage.latest_snapshot();
    let Some(generation_state) = snapshot
        .get::<NullifierGenerationState>(shieldd_sdk_sct::state_key::nullifier_generations::state())
        .await?
    else {
        return Ok(0);
    };
    let cursor = snapshot
        .nonverifiable_get_raw(state_key::nullifier_generations::prune_cursor())
        .await?
        .map(|bytes| serde_json::from_slice::<PruneCursor>(&bytes))
        .transpose()?
        .unwrap_or_default();
    metrics::gauge!(PACK_RETIRED_GENERATIONS)
        .set(generation_state.archived_generation_count as f64);
    let mut ready = 0u64;
    for generation_index in 0..generation_state.archived_generation_count {
        let archived = nullifier_tree::archived_generation(&snapshot, generation_index).await?;
        let receipt = ensure_pack(&snapshot, repository, archived).await?;
        ready += 1;
        if generation_index == cursor.generation_index {
            repository.remember_verified_receipt(receipt)?;
        }
    }
    metrics::gauge!(PACK_READY_GENERATIONS).set(ready as f64);
    Ok(generation_state.archived_generation_count)
}

/// Keep publishing validated packs as generations retire.
pub fn spawn_worker(
    storage: Storage,
    repository: GenerationPackRepository,
    prepared_generation_count: u64,
) -> tokio::task::JoinHandle<()> {
    let snapshots = storage.subscribe();
    tokio::spawn(async move {
        let mut snapshots = snapshots;
        let mut next_generation = prepared_generation_count;
        loop {
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
                while next_generation < generation_state.archived_generation_count {
                    let generation_index = next_generation;
                    let archived =
                        nullifier_tree::archived_generation(&snapshot, generation_index).await?;
                    ensure_pack(&snapshot, &repository, archived).await?;
                    next_generation += 1;
                }
                let cursor = snapshot
                    .nonverifiable_get_raw(state_key::nullifier_generations::prune_cursor())
                    .await?
                    .map(|bytes| serde_json::from_slice::<PruneCursor>(&bytes))
                    .transpose()?
                    .unwrap_or_default();
                if cursor.generation_index < generation_state.archived_generation_count
                    && repository.ready_receipt(cursor.generation_index)?.is_none()
                {
                    let archived =
                        nullifier_tree::archived_generation(&snapshot, cursor.generation_index)
                            .await?;
                    let receipt = ensure_pack(&snapshot, &repository, archived).await?;
                    repository.remember_verified_receipt(receipt)?;
                }
                Ok(())
            }
            .await;
            if let Err(error) = result {
                metrics::counter!(PACK_FAILURES_TOTAL).increment(1);
                tracing::warn!(%error, "nullifier generation pack worker will retry after the next commit");
            }
            if snapshots.changed().await.is_err() {
                break;
            }
        }
    })
}

pub async fn maintain_one_page<S: StateWrite + ?Sized>(
    state: &mut S,
    repository: &GenerationPackRepository,
) -> Result<MaintenanceResult> {
    let Some(generations) = state
        .get::<NullifierGenerationState>(state_key::nullifier_generations::state())
        .await?
    else {
        return Ok(MaintenanceResult::default());
    };
    let key = state_key::nullifier_generations::prune_cursor();
    let cursor = state
        .nonverifiable_get_raw(key)
        .await?
        .map(|bytes| serde_json::from_slice::<PruneCursor>(&bytes))
        .transpose()?
        .unwrap_or_default();
    anyhow::ensure!(cursor.prefix_index < 4, "invalid nullifier pruning cursor");
    anyhow::ensure!(
        cursor.generation_index <= generations.archived_generation_count,
        "nullifier pruning cursor exceeds archived generations"
    );
    if cursor.generation_index == generations.archived_generation_count {
        anyhow::ensure!(
            cursor.prefix_index == 0,
            "completed nullifier pruning cursor has a nonzero prefix"
        );
        return Ok(MaintenanceResult::default());
    }
    let archived = nullifier_tree::archived_generation(state, cursor.generation_index).await?;
    let stored = nullifier_tree::generation_pack_receipt(state, cursor.generation_index).await?;
    let ready = repository.ready_receipt(cursor.generation_index)?;
    let Some(receipt) = ready else {
        return Ok(MaintenanceResult::default());
    };
    anyhow::ensure!(
        receipt.generation_index == archived.generation_index
            && receipt.generation_root == archived.generation_root
            && receipt.generation_start_position == archived.generation_start_position
            && receipt.generation_end_position == archived.generation_end_position,
        "generation pack receipt does not match retired state"
    );
    let mut result = MaintenanceResult::default();
    if stored.as_ref() != Some(&receipt) {
        nullifier_tree::record_generation_pack_completion(state, &receipt).await?;
        result.changed = true;
    }
    let deleted = nullifier_tree::prune_packed_generation_page(
        state,
        &receipt,
        cursor.prefix_index,
        PRUNE_PAGE_KEYS,
    )
    .await?;
    result.deleted = deleted;
    if deleted > 0 {
        result.changed = true;
    }
    if deleted < PRUNE_PAGE_KEYS as u64 {
        let mut next = cursor;
        next.prefix_index += 1;
        if next.prefix_index == 4 {
            result.completed_generation = Some(cursor.generation_index);
            next.generation_index += 1;
            next.prefix_index = 0;
        }
        state.nonverifiable_put_raw(key.to_vec(), serde_json::to_vec(&next)?);
        result.changed = true;
    }
    Ok(result)
}

async fn ensure_pack<S: StateRead + ?Sized>(
    state: &S,
    repository: &GenerationPackRepository,
    archived: NullifierGenerationArchived,
) -> Result<NullifierGenerationPackReceipt> {
    let repair = PACK_REPAIR.clone().lock_owned().await;
    let trusted_receipt =
        nullifier_tree::generation_pack_receipt(state, archived.generation_index).await?;
    let repository_for_check = repository.clone();
    let (existing, repair) = tokio::task::spawn_blocking(move || {
        let repair = repair;
        let repository = repository_for_check;
        if !repository.contains(archived.generation_index) {
            return Ok::<_, anyhow::Error>((None, repair));
        }
        let started = Instant::now();
        let existing = match repository.inspect(archived) {
            Ok(receipt) if trusted_receipt.as_ref() == Some(&receipt) => Ok(receipt),
            Ok(_) => repository.verify(archived),
            Err(error) => Err(error),
        };
        metrics::histogram!(PACK_VERIFY_DURATION).record(started.elapsed().as_secs_f64());
        match existing {
            Ok(receipt) => return Ok((Some(receipt), repair)),
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
        Ok((None, repair))
    })
    .await
    .context("generation pack inspection task panicked")??;
    if let Some(receipt) = existing {
        return Ok(receipt);
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
    let repository_for_write = repository.clone();
    let receipt = tokio::task::spawn_blocking(move || {
        let _repair = repair;
        let receipt = repository_for_write.write(&pack)?;
        anyhow::ensure!(
            repository_for_write.inspect(archived)? == receipt,
            "generation pack changed after durable write"
        );
        Ok::<_, anyhow::Error>(receipt)
    })
    .await
    .context("generation pack publication task panicked")??;
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

pub async fn repair_pack<S: StateRead + ?Sized>(
    state: &S,
    repository: &GenerationPackRepository,
    generation_index: u64,
) -> Result<()> {
    let archived = nullifier_tree::archived_generation(state, generation_index).await?;
    ensure_pack(state, repository, archived).await?;
    Ok(())
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
                return tokio::task::spawn_blocking(move || {
                    let pack = NullifierGenerationPack::new(archived, nullifiers)?;
                    pack.reconstruct()?;
                    Ok(pack)
                })
                .await
                .context("recovered generation pack validation task panicked")?;
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
    use cnidarium::{StateDelta, TempStorage};
    use shieldd_sdk_crypto::Fq;
    use shieldd_sdk_proto::DomainType as _;
    use shieldd_sdk_sct::{nullifier_tree, Nullifier};

    fn nullifier(value: u64) -> Nullifier {
        Nullifier(Fq::from(value))
    }

    async fn commit_maintenance(
        storage: &Storage,
        repository: &GenerationPackRepository,
    ) -> Result<usize> {
        let mut pages = 0;
        loop {
            let mut state = StateDelta::new(storage.latest_snapshot());
            let result = maintain_one_page(&mut state, repository).await?;
            if !result.changed {
                return Ok(pages);
            }
            assert!(result.deleted <= PRUNE_PAGE_KEYS as u64);
            storage.commit(state).await?;
            if let Some(generation) = result.completed_generation {
                repository.forget_ready_receipt(generation)?;
                prepare(storage, repository).await?;
            }
            pages += 1;
            assert!(pages < 100);
        }
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

        // The persisted root still matches the archive, but the expanded leaf stream is corrupt.
        let leaf_key = shieldd_sdk_sct::state_key::nullifier_generations::leaf(
            shieldd_sdk_sct::nullifier_generation::NullifierTreeId::Generation(0),
            1,
        );
        let leaf_bytes = state
            .nonverifiable_get_raw(&leaf_key)
            .await?
            .context("expanded leaf")?;
        let mut leaf: shieldd_sdk_sct::indexed_nullifier_tree::IndexedNullifierLeaf =
            bincode::deserialize(&leaf_bytes)?;
        leaf.value = nullifier(8).to_bytes();
        state.nonverifiable_put_raw(leaf_key, bincode::serialize(&leaf)?);
        let error = nullifier_tree::build_generation_pack(&state, 0)
            .await
            .unwrap_err();
        assert!(
            error.to_string().contains("reconstructed generation root"),
            "{error:#}"
        );
        let directory = tempfile::tempdir()?;
        let repository = GenerationPackRepository::new(directory.path().to_path_buf(), 1)?;
        let receipt = ensure_pack(&state, &repository, archived).await?;
        assert_eq!(repository.verify(archived)?, receipt);
        assert!(repository
            .nonmembership_proof(archived, nullifier(7))
            .is_err());
        repository
            .nonmembership_proof(archived, nullifier(8))?
            .verify_for(nullifier(8))?;
        Ok(())
    }

    #[tokio::test]
    async fn startup_preparation_publishes_packs_for_bounded_maintenance() -> Result<()> {
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
        prepare(&storage, &repository).await?;
        assert!(commit_maintenance(&storage, &repository).await? > 0);
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

        prepare(storage.as_ref(), &repository).await?;
        let snapshot = storage.latest_snapshot();
        let receipt = nullifier_tree::generation_pack_receipt(&snapshot, 0)
            .await?
            .context("pack receipt missing")?;
        assert_eq!(repository.verify(archived)?, receipt);
        std::fs::write(repository.path(0), wrong.encode()?)?;
        let (first, second) = tokio::join!(
            repair_pack(&snapshot, &repository, 0),
            repair_pack(&snapshot, &repository, 0),
        );
        first?;
        second?;
        assert_eq!(repository.verify(archived)?, receipt);
        assert!(repository
            .nonmembership_proof(archived, nullifier(7))
            .is_err());
        Ok(())
    }

    #[tokio::test]
    async fn worker_processes_generation_retired_after_preparation_before_first_poll() -> Result<()>
    {
        let storage = TempStorage::new().await?;
        let mut state = StateDelta::new(storage.latest_snapshot());
        nullifier_tree::initialize(&mut state).await?;
        storage.commit(state).await?;

        let directory = tempfile::tempdir()?;
        let repository = GenerationPackRepository::new(directory.path().to_path_buf(), 0)?;
        let frontier = prepare(storage.as_ref(), &repository).await?;
        assert_eq!(frontier, 0);

        let mut state = StateDelta::new(storage.latest_snapshot());
        nullifier_tree::insert_batch(&mut state, [nullifier(7), nullifier(1)]).await?;
        nullifier_tree::rollover(&mut state, 30, 1 << 32).await?;
        nullifier_tree::rollover(&mut state, 60, 2 << 32).await?;
        storage.commit(state).await?;

        let worker = spawn_worker(storage.as_ref().clone(), repository.clone(), frontier);
        tokio::time::timeout(std::time::Duration::from_secs(10), async {
            loop {
                if repository.ready_receipt(0)?.is_some() {
                    break Ok::<_, anyhow::Error>(());
                }
                tokio::task::yield_now().await;
            }
        })
        .await??;
        worker.abort();
        assert!(repository.contains(0));
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
        prepare(&storage, &repository).await?;
        assert!(commit_maintenance(&storage, &repository).await? > 0);
        storage.release().await;

        let storage = Storage::load(storage_path, vec![]).await?;
        prepare(&storage, &repository).await?;
        assert_eq!(commit_maintenance(&storage, &repository).await?, 0);
        let snapshot = storage.latest_snapshot();
        let archived = nullifier_tree::archived_generation(&snapshot, 0).await?;
        repository
            .nonmembership_proof(archived, nullifier(8))?
            .verify_for(nullifier(8))?;
        Ok(())
    }

    #[tokio::test]
    async fn retired_pruning_is_bounded_and_resumes_after_reopen() -> Result<()> {
        let storage_directory = tempfile::tempdir()?;
        let storage_path = storage_directory.path().join("rocksdb");
        let mut storage = Storage::load(storage_path.clone(), vec![]).await?;
        let mut state = StateDelta::new(storage.latest_snapshot());
        nullifier_tree::initialize(&mut state).await?;
        let nullifiers = (1..=200).map(nullifier).collect::<Vec<_>>();
        nullifier_tree::insert_batch(&mut state, nullifiers).await?;
        nullifier_tree::rollover(&mut state, 30, 1 << 32).await?;
        nullifier_tree::rollover(&mut state, 60, 2 << 32).await?;
        state.put_raw("test/sentinel".to_owned(), b"present".to_vec());
        storage.commit(state).await?;

        let directory = tempfile::tempdir()?;
        let repository = GenerationPackRepository::new(directory.path().to_path_buf(), 64 << 20)?;
        prepare(&storage, &repository).await?;
        let root = storage.latest_snapshot().root_hash().await?;
        let mut pages = 0;
        loop {
            let mut state = StateDelta::new(storage.latest_snapshot());
            let result = maintain_one_page(&mut state, &repository).await?;
            if !result.changed {
                break;
            }
            assert!(result.deleted <= PRUNE_PAGE_KEYS as u64);
            state.put_raw("test/sentinel".to_owned(), b"present".to_vec());
            storage.commit(state).await?;
            pages += 1;
            if pages == 1 {
                storage.release().await;
                storage = Storage::load(storage_path.clone(), vec![]).await?;
                assert_eq!(storage.latest_snapshot().root_hash().await?, root);
            }
            assert!(pages < 100);
        }
        assert!(pages > 1);
        assert_eq!(storage.latest_snapshot().root_hash().await?, root);
        let snapshot = storage.latest_snapshot();
        assert!(
            nullifier_tree::archived_nonmembership_proof(&snapshot, 0, nullifier(1000))
                .await
                .is_err()
        );
        repository
            .nonmembership_proof(
                nullifier_tree::archived_generation(&snapshot, 0).await?,
                nullifier(1000),
            )?
            .verify_for(nullifier(1000))?;
        Ok(())
    }
}
