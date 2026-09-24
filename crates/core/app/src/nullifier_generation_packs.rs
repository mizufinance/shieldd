use std::time::Instant;

use anyhow::{Context, Result};
use cnidarium::{StateRead, StateWrite, Storage};
#[cfg(test)]
use shieldd_sdk_compact_block::CompactBlock;
use shieldd_sdk_proto::StateReadProto as _;
use shieldd_sdk_sct::{
    generation_pack::{ArchiveMaintenanceLease, GenerationPackRepository},
    nullifier_generation::{
        NullifierGenerationArchived, NullifierGenerationPackReceipt, NullifierGenerationState,
    },
    nullifier_tree, state_key,
};

#[derive(Clone, Copy, Debug, Default, serde::Deserialize, serde::Serialize)]
struct PruneCursor {
    generation_index: u64,
}

#[derive(Default)]
pub struct MaintenanceResult {
    pub completed_generation: Option<u64>,
    pub prefixes: Vec<Vec<u8>>,
    pub archive: Option<shieldd_sdk_sct::generation_pack::ValidatedArchive>,
}
impl MaintenanceResult {
    pub fn attach(
        &self,
        storage: &Storage,
        batch: cnidarium::StagedWriteBatch,
    ) -> Result<cnidarium::StagedWriteBatch> {
        if let Some(archive) = &self.archive {
            archive.check_identity()?;
        }
        storage.attach_nonverifiable_prefix_deletions(batch, self.prefixes.clone())
    }
}

pub const DIRECTORY: &str = "nullifier-generation-packs";
pub const PACK_BYTES: &str = "shieldd_nullifier_generation_pack_bytes";
pub const PACK_BUILD_DURATION: &str = "shieldd_nullifier_generation_pack_build_seconds";
pub const PACK_FAILURES_TOTAL: &str = "shieldd_nullifier_generation_pack_failures_total";
pub const PACK_RETIRED_GENERATIONS: &str = "shieldd_nullifier_generation_pack_retired_generations";
pub const PACK_READY_GENERATIONS: &str = "shieldd_nullifier_generation_pack_ready_generations";
pub const PACK_PRUNED_GENERATIONS_TOTAL: &str =
    "shieldd_nullifier_generation_pack_pruned_generations_total";
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
        PACK_PRUNED_GENERATIONS_TOTAL,
        metrics::Unit::Count,
        "Expanded generations logically retired with range tombstones"
    );
    metrics::describe_histogram!(
        PACK_VERIFY_DURATION,
        metrics::Unit::Seconds,
        "Time to validate or fully verify a generation pack"
    );
}

/// Startup inspects only small manifests. Validation and repair run in the maintenance worker.
pub async fn prepare(storage: &Storage, repository: &GenerationPackRepository) -> Result<u64> {
    let snapshot = storage.latest_snapshot();
    if let Some(state) = snapshot
        .get::<NullifierGenerationState>(state_key::nullifier_generations::state())
        .await?
    {
        for generation in 0..state.archived_generation_count {
            if repository.contains(generation) {
                let archived = nullifier_tree::archived_generation(&snapshot, generation).await?;
                if let Err(error) = repository.inspect(archived) {
                    tracing::warn!(%error, generation, "archive manifest needs background repair");
                }
            }
        }
    }
    Ok(0)
}

pub struct MaintenanceWorker {
    handle: tokio::task::JoinHandle<()>,
    stop: tokio::sync::watch::Sender<bool>,
}
impl MaintenanceWorker {
    pub fn abort(&self) {
        self.handle.abort();
    }
    pub fn abort_handle(&self) -> tokio::task::AbortHandle {
        self.handle.abort_handle()
    }
    /// Finish any in-flight blocking work before releasing the database owner.
    pub async fn shutdown(&mut self) {
        let _ = self.stop.send(true);
        let _ = (&mut self.handle).await;
    }
}

/// Keep publishing validated packs as generations retire.
pub fn spawn_worker(
    storage: Storage,
    repository: GenerationPackRepository,
    prepared_generation_count: u64,
) -> MaintenanceWorker {
    let snapshots = storage.subscribe();
    let (stop, mut stopping) = tokio::sync::watch::channel(false);
    let handle = tokio::spawn(async move {
        let mut snapshots = snapshots;
        let mut next_generation = prepared_generation_count;
        let mut next_compaction = 0u64;
        let mut compaction_checkpoint = None;
        let mut compaction_through = 0;
        let mut compaction_after = Instant::now();
        loop {
            if *stopping.borrow() {
                break;
            }
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
                if let Some(generation) = repository.next_repair() {
                    let archived =
                        nullifier_tree::archived_generation(&snapshot, generation).await?;
                    ensure_pack(&snapshot, &repository, archived).await?;
                }
                if next_generation < generation_state.archived_generation_count {
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
                if next_compaction < cursor.generation_index && compaction_checkpoint.is_none() {
                    compaction_checkpoint = Some(storage.compaction_checkpoint());
                    compaction_through = cursor.generation_index;
                }
                if next_compaction < cursor.generation_index
                    && Instant::now() >= compaction_after
                    && storage.compaction_checkpoint_released(
                        compaction_checkpoint.expect("pending retirement"),
                    )?
                {
                    let tree = shieldd_sdk_sct::nullifier_generation::NullifierTreeId::Generation(
                        next_compaction,
                    );
                    let owner = storage.clone();
                    let repair = ArchiveMaintenanceLease::acquire().await;
                    let started = Instant::now();
                    tokio::task::spawn_blocking(move || {
                        let _repair = repair;
                        for prefix in [
                            state_key::nullifier_generations::tree_node_prefix(tree),
                            state_key::nullifier_generations::leaf_prefix(tree),
                            state_key::nullifier_generations::value_prefix(tree),
                            state_key::nullifier_generations::value_desc_prefix(tree),
                        ] {
                            owner.compact_nonverifiable_prefix(&prefix)?;
                        }
                        Ok::<_, anyhow::Error>(())
                    })
                    .await??;
                    metrics::histogram!("shieldd_nullifier_archive_compaction_seconds")
                        .record(started.elapsed().as_secs_f64());
                    next_compaction += 1;
                    if next_compaction == compaction_through {
                        compaction_checkpoint = None;
                    }
                    compaction_after = Instant::now() + std::time::Duration::from_secs(1);
                }
                metrics::gauge!("shieldd_nullifier_retirement_logical_backlog").set(
                    (generation_state.archived_generation_count - cursor.generation_index) as f64,
                );
                metrics::gauge!("shieldd_nullifier_retirement_compaction_backlog")
                    .set((cursor.generation_index - next_compaction) as f64);
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
            tokio::select! {
                _ = stopping.changed() => { break; },
                changed = snapshots.changed() => { if changed.is_err() { break; } },
                _ = repository.repair_requested() => {},
                _ = tokio::time::sleep(std::time::Duration::from_secs(1)) => {},
            }
        }
    });
    MaintenanceWorker { handle, stop }
}

pub async fn maintain_one_generation<S: StateWrite + ?Sized>(
    state: &mut S,
    repository: &GenerationPackRepository,
) -> Result<MaintenanceResult> {
    let Some(generations) = state
        .get::<NullifierGenerationState>(state_key::nullifier_generations::state())
        .await?
    else {
        return Ok(Default::default());
    };
    let key = state_key::nullifier_generations::prune_cursor();
    let cursor = state
        .nonverifiable_get_raw(key)
        .await?
        .map(|bytes| serde_json::from_slice::<PruneCursor>(&bytes))
        .transpose()?
        .unwrap_or_default();
    anyhow::ensure!(
        cursor.generation_index <= generations.archived_generation_count,
        "prune cursor exceeds retirement count"
    );
    if cursor.generation_index == generations.archived_generation_count {
        return Ok(Default::default());
    }
    let Some(archive) = repository.validated_archive(cursor.generation_index)? else {
        return Ok(Default::default());
    };
    let archived = nullifier_tree::archived_generation(state, cursor.generation_index).await?;
    let receipt = archive.receipt();
    anyhow::ensure!(
        receipt.generation_root == archived.generation_root
            && receipt.generation_start_position == archived.generation_start_position
            && receipt.generation_end_position == archived.generation_end_position,
        "archive does not match retired metadata"
    );
    let tree =
        shieldd_sdk_sct::nullifier_generation::NullifierTreeId::Generation(cursor.generation_index);
    anyhow::ensure!(
        generations.current_tree != tree && generations.previous_tree != Some(tree),
        "cannot prune an active generation"
    );
    let prefixes = vec![
        state_key::nullifier_generations::tree_node_prefix(tree),
        state_key::nullifier_generations::leaf_prefix(tree),
        state_key::nullifier_generations::value_prefix(tree),
        state_key::nullifier_generations::value_desc_prefix(tree),
    ];
    nullifier_tree::record_generation_pack_completion(state, receipt).await?;
    state.nonverifiable_put_raw(
        key.to_vec(),
        serde_json::to_vec(&PruneCursor {
            generation_index: cursor.generation_index + 1,
        })?,
    );
    Ok(MaintenanceResult {
        completed_generation: Some(cursor.generation_index),
        prefixes,
        archive: Some(archive),
    })
}

async fn ensure_pack<S: StateRead + ?Sized>(
    state: &S,
    repository: &GenerationPackRepository,
    archived: NullifierGenerationArchived,
) -> Result<NullifierGenerationPackReceipt> {
    let repair = ArchiveMaintenanceLease::acquire().await;
    let repository_for_check = repository.clone();
    let (existing, repair) = tokio::task::spawn_blocking(move || {
        let repair = repair;
        let repository = repository_for_check;
        if !repository.contains(archived.generation_index) {
            return Ok::<_, anyhow::Error>((None, repair));
        }
        let started = Instant::now();
        let existing = repository.verify(archived);
        metrics::histogram!(PACK_VERIFY_DURATION).record(started.elapsed().as_secs_f64());
        match existing {
            Ok(receipt) => return Ok((Some(receipt), repair)),
            Err(error) => {
                repository.quarantine(archived.generation_index)?;
                tracing::warn!(
                    generation_index = archived.generation_index,
                    %error,
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
    let receipt = match nullifier_tree::build_generation_archive(
        state,
        repository,
        archived.generation_index,
        repair.clone(),
    )
    .await
    {
        Ok(receipt) => receipt,
        Err(expanded_error) => {
            tracing::info!(generation_index = archived.generation_index, %expanded_error, "rebuilding archive from canonical history");
            recover_from_compact_blocks(state, repository, archived, repair.clone())
                .await
                .context("expanded tree and canonical recovery both failed")?
        }
    };
    drop(repair);
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
    repository: &GenerationPackRepository,
    archived: NullifierGenerationArchived,
    maintenance: ArchiveMaintenanceLease,
) -> Result<NullifierGenerationPackReceipt> {
    let (sender, receiver) = tokio::sync::mpsc::channel(1024);
    let repository = repository.clone();
    let job = tokio::task::spawn_blocking(move || {
        let _maintenance = maintenance;
        repository.write_stream(archived, nullifier_tree::ArchiveInput::new(receiver))
    });
    let produce = async {
        use shieldd_sdk_proto::Message as _;
        let range =
            nullifier_tree::generation_block_range(state, archived.generation_index).await?;
        let mut position = 1;
        for height in range.start_height..=range.end_height {
            let interval =
                nullifier_tree::insertion_interval(state, archived.generation_index, height)
                    .await?;
            anyhow::ensure!(
                interval.first_position == position,
                "history insertion intervals overlap or omit leaves"
            );
            let bytes = state
                .nonverifiable_get_raw(
                    shieldd_sdk_compact_block::state_key::compact_block(height).as_bytes(),
                )
                .await?
                .context("missing canonical block")?;
            let header =
                shieldd_sdk_proto::core::component::compact_block::v1::StoredCompactBlock::decode(
                    bytes.as_slice(),
                )?;
            anyhow::ensure!(
                header.metadata.as_ref().is_some_and(|m| m.height == height),
                "canonical header height mismatch"
            );
            let count = header
                .sections
                .iter()
                .find(|s| s.kind == 2)
                .context("missing nullifier inventory")?
                .count;
            anyhow::ensure!(
                count as u64 == interval.count,
                "canonical nullifier count disagrees with insertion interval"
            );
            for index in 0..count {
                let bytes = shieldd_sdk_compact_block::component::records::get(
                    state,
                    &shieldd_sdk_compact_block::state_key::record(height, 2, index as u64),
                )
                .await?;
                let value = shieldd_sdk_proto::core::component::sct::v1::Nullifier::decode(
                    bytes.as_slice(),
                )?;
                sender
                    .send(Some(value.try_into()?))
                    .await
                    .context("archive builder stopped")?;
            }
            position += interval.count;
        }
        sender.send(None).await.context("archive builder stopped")?;
        Ok::<_, anyhow::Error>(())
    }
    .await;
    drop(sender);
    let result = job.await.context("archive recovery task failed")?;
    produce?;
    result
}

#[cfg(test)]
mod tests {
    use super::*;
    use cnidarium::{StateDelta, StateRead, TempStorage};
    use shieldd_sdk_compact_block::component::CompactBlockManager;
    use shieldd_sdk_crypto::Fq;
    use shieldd_sdk_sct::{nullifier_generation::NullifierTreeId, Nullifier};
    fn nf(value: u64) -> Nullifier {
        Nullifier(Fq::from(value))
    }
    async fn seed(state: &mut StateDelta<cnidarium::Snapshot>) -> Result<()> {
        nullifier_tree::initialize(state).await?;
        for (generation, height, values) in
            [(0, 0, vec![nf(7), nf(0), nf(12)]), (1, 1, vec![nf(9)])]
        {
            nullifier_tree::insert_batch(state, values.clone()).await?;
            nullifier_tree::record_block_insertions(
                state,
                nullifier_tree::InsertionInterval {
                    height,
                    generation,
                    first_position: 1,
                    count: values.len() as u64,
                },
            )
            .await?;
            state.put_compact_block(CompactBlock {
                height,
                nullifiers: values,
                ..Default::default()
            })?;
            nullifier_tree::rollover(state, (generation + 1) * 30, (generation + 1) << 32).await?;
        }
        Ok(())
    }
    #[tokio::test]
    async fn range_retirement_preserves_snapshots_metadata_and_adjacent_generation() -> Result<()> {
        let directory = tempfile::tempdir()?;
        let path = directory.path().join("db");
        let storage = Storage::load(path.clone(), vec![]).await?;
        let mut state = StateDelta::new(storage.latest_snapshot());
        seed(&mut state).await?;
        state.put_raw("authenticated/keep".into(), b"yes".to_vec());
        storage.commit(state).await?;
        let old = storage.latest_snapshot();
        let root = old.root_hash().await?;
        let archives = GenerationPackRepository::new(directory.path().join("archives"), 4096)?;
        assert_eq!(prepare(&storage, &archives).await?, 0);
        let mut state = StateDelta::new(old.clone());
        assert!(maintain_one_generation(&mut state, &archives)
            .await?
            .completed_generation
            .is_none());
        let archived = nullifier_tree::archived_generation(&old, 0).await?;
        ensure_pack(&old, &archives, archived).await?;
        let maintenance = maintain_one_generation(&mut state, &archives).await?;
        assert_eq!(maintenance.completed_generation, Some(0));
        let batch = maintenance.attach(&storage, storage.prepare_commit(state).await?)?;
        // Dropping a prepared batch cannot delete anything or advance the receipt/cursor.
        drop(batch);
        assert!(
            nullifier_tree::generation_pack_receipt(&storage.latest_snapshot(), 0)
                .await?
                .is_none()
        );
        let mut state = StateDelta::new(storage.latest_snapshot());
        let maintenance = maintain_one_generation(&mut state, &archives).await?;
        let batch = maintenance.attach(&storage, storage.prepare_commit(state).await?)?;
        storage.commit_batch(batch)?;
        let latest = storage.latest_snapshot();
        assert_eq!(latest.root_hash().await?, root);
        let retired_leaf =
            state_key::nullifier_generations::leaf(NullifierTreeId::Generation(0), 1);
        assert!(old.nonverifiable_get_raw(&retired_leaf).await?.is_some());
        assert!(latest.nonverifiable_get_raw(&retired_leaf).await?.is_none());
        assert!(latest
            .nonverifiable_get_raw(&state_key::nullifier_generations::leaf(
                NullifierTreeId::Generation(1),
                1
            ))
            .await?
            .is_some());
        assert_eq!(nullifier_tree::spend_height(&latest, 0, 2).await?, 0);
        assert!(nullifier_tree::spend_height(&latest, 0, 0).await.is_err());
        archives
            .nonmembership_proof(archived, nf(8))?
            .verify_for(nf(8))?;
        drop(old);
        drop(latest);
        storage.release().await;
        let storage = Storage::load(path, vec![]).await?;
        drop(archives);
        let reopened = GenerationPackRepository::new(directory.path().join("archives"), 4096)?;
        assert!(
            reopened.ready_receipt(0)?.is_none(),
            "restart must not inherit validation"
        );
        reopened
            .nonmembership_proof(archived, nf(8))?
            .verify_for(nf(8))?;
        storage.release().await;
        Ok(())
    }
    #[tokio::test]
    async fn generation_local_history_repairs_missing_and_corrupt_archives_after_pruning(
    ) -> Result<()> {
        let storage = TempStorage::new().await?;
        let mut state = StateDelta::new(storage.latest_snapshot());
        seed(&mut state).await?;
        storage.commit(state).await?;
        let directory = tempfile::tempdir()?;
        let mut repository = GenerationPackRepository::new(directory.path().to_path_buf(), 4096)?;
        let snapshot = storage.latest_snapshot();
        let archived = nullifier_tree::archived_generation(&snapshot, 0).await?;
        ensure_pack(&snapshot, &repository, archived).await?;
        let mut state = StateDelta::new(snapshot);
        let maintenance = maintain_one_generation(&mut state, &repository).await?;
        storage
            .commit_batch(maintenance.attach(&storage, storage.prepare_commit(state).await?)?)?;
        std::fs::remove_file(repository.path(0))?;
        assert!(repository.ready_receipt(0)?.is_none());
        let snapshot = storage.latest_snapshot();
        ensure_pack(&snapshot, &repository, archived).await?;
        for value in [1, 8, 13] {
            repository
                .nonmembership_proof(archived, nf(value))?
                .verify_for(nf(value))?;
        }
        assert!(repository.nonmembership_proof(archived, nf(0)).is_err());
        // The manifest can be valid while the immutable data at its digest is damaged.
        // Rebuilding must restore that data from canonical history after expanded state is gone.
        let data = std::fs::read_dir(directory.path())?
            .collect::<std::io::Result<Vec<_>>>()?
            .into_iter()
            .map(|entry| entry.path())
            .find(|path| {
                path.extension()
                    .is_some_and(|extension| extension == "data")
            })
            .context("archive data file")?;
        std::fs::write(&data, b"truncated")?;
        drop(repository);
        repository = GenerationPackRepository::new(directory.path().to_path_buf(), 0)?;
        assert!(repository.nonmembership_proof(archived, nf(8)).is_err());
        ensure_pack(&snapshot, &repository, archived).await?;
        repository
            .nonmembership_proof(archived, nf(8))?
            .verify_for(nf(8))?;
        assert!(repository.nonmembership_proof(archived, nf(0)).is_err());
        // A corrupted manifest is quarantined; a gap in canonical coverage fails closed.
        std::fs::write(repository.path(0), b"corrupt")?;
        let mut incomplete = StateDelta::new(storage.latest_snapshot());
        incomplete.nonverifiable_delete(state_key::nullifier_generations::insertion(0, 0));
        assert!(ensure_pack(&incomplete, &repository, archived)
            .await
            .is_err());
        assert!(!repository.contains(0));
        Ok(())
    }
    #[tokio::test]
    async fn worker_observes_retirement_committed_before_its_first_poll() -> Result<()> {
        let storage = TempStorage::new().await?;
        let directory = tempfile::tempdir()?;
        let repository = GenerationPackRepository::new(directory.path().to_path_buf(), 4096)?;
        let frontier = prepare(&storage, &repository).await?;
        let mut state = StateDelta::new(storage.latest_snapshot());
        seed(&mut state).await?;
        storage.commit(state).await?;
        let mut worker = spawn_worker(storage.as_ref().clone(), repository.clone(), frontier);
        tokio::time::timeout(std::time::Duration::from_secs(10), async {
            while repository.ready_receipt(0)?.is_none() {
                tokio::task::yield_now().await;
            }
            Ok::<_, anyhow::Error>(())
        })
        .await??;
        worker.shutdown().await;
        Ok(())
    }
}
