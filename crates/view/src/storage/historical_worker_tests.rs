use super::*;
use crate::{HistoricalProofWorker, HistoricalWitnessSource};
use async_trait::async_trait;
use shieldd_sdk_keys::test_keys;
use shieldd_sdk_proof_params::pari::Registry;
use shieldd_sdk_sct::{
    indexed_nullifier_tree::{IndexedNullifierLeaf, IndexedNullifierWitness, DEPTH, ZERO_HASHES},
    nullifier_generation::{
        append_history, empty_history_head, ArchivedNullifierProof, HistoricalChunkProof,
        PROTOCOL_VERSION,
    },
};
use std::sync::{Arc, Mutex, OnceLock};

fn registry() -> Arc<Registry> {
    static REGISTRY: OnceLock<Arc<Registry>> = OnceLock::new();
    REGISTRY
        .get_or_init(|| {
            Arc::new(
                Registry::load(std::env::var("SHIELDD_PARI_KEYS").expect("native test keys"))
                    .unwrap(),
            )
        })
        .clone()
}
fn archived(index: u64) -> ArchivedNullifierProof {
    let witness = IndexedNullifierWitness {
        leaf_position: 0,
        leaf: IndexedNullifierLeaf::lower_sentinel(),
        auth_path: (0..DEPTH)
            .map(|i| [ZERO_HASHES[i as usize].to_bytes(); 3])
            .collect(),
    };
    ArchivedNullifierProof {
        generation_index: index,
        generation_root: witness.root().unwrap(),
        generation_start_position: index << 32,
        generation_end_position: (index + 1) << 32,
        witness,
    }
}
fn window(count: u64) -> NullifierWindow {
    let mut head = empty_history_head();
    for i in 0..count {
        let raw = archived(i);
        head = append_history(
            head,
            i,
            raw.generation_root,
            raw.generation_start_position,
            raw.generation_end_position,
        )
        .unwrap();
    }
    NullifierWindow {
        protocol_version: PROTOCOL_VERSION,
        current_generation: count + 1,
        recent_position_floor: count << 32,
        archived_generation_count: count,
        archived_history_head: head,
    }
}
async fn wallet(count: u64) -> anyhow::Result<(Storage, Nullifier)> {
    let storage = Storage::initialize(
        None::<&Utf8Path>,
        (*test_keys::FULL_VIEWING_KEY).clone(),
        AppParameters::default(),
    )
    .await?;
    let nf = Nullifier(Fq::from(9));
    storage.pool.get()?.execute("INSERT INTO spendable_notes (note_commitment,nullifier,position,height_created,address_index,source) VALUES (?1,?1,0,0,X'',X'')", [nf.to_bytes().to_vec()])?;
    let proto: pb_sct::NullifierWindow = window(count).into();
    storage.pool.get()?.execute(
        "INSERT INTO kv (k,v) VALUES ('nullifier_window',?1)",
        [proto.encode_to_vec()],
    )?;
    Ok((storage, nf))
}
struct Source {
    requests: Mutex<Vec<u64>>,
    spend: Option<Storage>,
}
#[async_trait]
impl HistoricalWitnessSource for Source {
    async fn nonmembership_proof(
        &self,
        nf: Nullifier,
        index: u64,
    ) -> anyhow::Result<ArchivedNullifierProof> {
        self.requests.lock().unwrap().push(index);
        if let Some(storage) = &self.spend {
            storage.pool.get()?.execute(
                "UPDATE spendable_notes SET height_spent=1 WHERE nullifier=?1",
                [nf.to_bytes().to_vec()],
            )?;
            storage.delete_historical_proof_cache(nf).await?;
            Ok(archived(index))
        } else {
            anyhow::bail!("source unavailable")
        }
    }
}
fn unavailable_source() -> Arc<Source> {
    Arc::new(Source {
        requests: Mutex::default(),
        spend: None,
    })
}

#[tokio::test]
async fn empty_ready_history_does_not_rewrite_the_cache() -> anyhow::Result<()> {
    let (storage, nf) = wallet(0).await?;
    let registry = registry();
    let mut cache = HistoricalProofCache::pending(nf);
    cache.registry_id = Some(registry.id());
    cache.transition(HistoricalProofCacheState::Updating)?;
    cache.mark_ready(window(0))?;
    storage.put_historical_proof_cache(cache).await?;
    storage.pool.get()?.execute_batch("CREATE TABLE history_writes (n INTEGER); CREATE TRIGGER count_history_writes AFTER UPDATE ON historical_proof_cache BEGIN INSERT INTO history_writes VALUES (1); END;")?;
    let source = unavailable_source();
    let mut worker = HistoricalProofWorker::new(storage.clone(), source.clone(), registry).await?;
    worker.update().await?;
    let writes: u64 =
        storage
            .pool
            .get()?
            .query_row("SELECT COUNT(*) FROM history_writes", [], |row| row.get(0))?;
    assert_eq!(writes, 0, "already-ready history must not be rewritten");
    assert!(source.requests.lock().unwrap().is_empty());
    Ok(())
}
#[tokio::test]
async fn wrong_registry_does_not_recover_or_mutate_updating_cache() -> anyhow::Result<()> {
    let (storage, nf) = wallet(1).await?;
    let mut cache = HistoricalProofCache::pending(nf);
    cache.registry_id = Some([0; 32]);
    cache.transition(HistoricalProofCacheState::Updating)?;
    let source = unavailable_source();
    let mut worker =
        HistoricalProofWorker::new(storage.clone(), source.clone(), registry()).await?;
    storage.put_historical_proof_cache(cache.clone()).await?;
    worker.update().await?;
    assert_eq!(storage.historical_proof_cache(nf).await?, Some(cache));
    assert!(source.requests.lock().unwrap().is_empty());
    Ok(())
}
#[tokio::test]
async fn spent_note_during_fetch_cannot_recreate_cache() -> anyhow::Result<()> {
    let (storage, nf) = wallet(10).await?;
    storage
        .put_historical_proof_cache(HistoricalProofCache::pending(nf))
        .await?;
    let source = Arc::new(Source {
        requests: Mutex::default(),
        spend: Some(storage.clone()),
    });
    let configured = registry();
    let directory = tempfile::tempdir()?;
    let keys = std::path::PathBuf::from(std::env::var("SHIELDD_PARI_KEYS")?);
    std::fs::copy(
        keys.join("manifest.json"),
        directory.path().join("manifest.json"),
    )?;
    for family in shieldd_sdk_circuits::proof::Family::ALL {
        let name = format!("{}.vk", family.label());
        std::fs::copy(keys.join(&name), directory.path().join(name))?;
    }
    let verification_only = Arc::new(Registry::load(directory.path())?);
    assert_eq!(configured.id(), verification_only.id());
    let mut worker =
        HistoricalProofWorker::new(storage.clone(), source.clone(), verification_only).await?;
    worker.update().await?;
    assert!(storage.historical_proof_cache(nf).await?.is_none());
    assert_eq!(*source.requests.lock().unwrap(), vec![0]);
    let mut completed = HistoricalProofCache::pending(nf);
    completed.registry_id = Some(configured.id());
    completed.transition(HistoricalProofCacheState::Updating)?;
    completed.mark_ready(window(0))?;
    assert_eq!(
        storage.put_historical_proof_cache(completed).await?,
        HistoricalCacheWrite::NoteSpent
    );
    Ok(())
}
#[tokio::test]
async fn mismatched_prefix_is_persistently_discarded_and_restarts_at_zero() -> anyhow::Result<()> {
    let (storage, nf) = wallet(10).await?;
    let configured = registry();
    let mut cache = HistoricalProofCache::pending(nf);
    cache.registry_id = Some(configured.id());
    let mut proof = vec![0; shieldd_sdk_circuits::proof::ENCODED_LEN];
    proof[0] = shieldd_sdk_crypto::SUITE;
    proof[1] = shieldd_sdk_circuits::proof::Family::HistoryChunk as u8;
    proof[34] = 1;
    proof[67] = 1;
    let generator = hex::decode("97f1d3a73197d7942695638c4fa9ac0fc3688c4f9774b905a14e3a3f171bac586c55e83ff97a1aeffb3af00adb22c6bb")?;
    for offset in [68, 116, 164] {
        proof[offset..offset + 48].copy_from_slice(&generator);
    }
    cache.proof.completed_chunks.push(HistoricalChunkProof {
        chunk_index: 0,
        end_history_head: Fq::from(123).to_bytes(),
        proof,
    });
    cache.validate()?;
    storage.put_historical_proof_cache(cache).await?;
    let source = unavailable_source();
    let mut worker =
        HistoricalProofWorker::new(storage.clone(), source.clone(), configured.clone()).await?;
    worker.update().await?;
    let reset = storage
        .historical_proof_cache(nf)
        .await?
        .context("reset cache persisted")?;
    assert_eq!(reset.proof.nullifier, nf);
    assert_eq!(reset.registry_id, Some(configured.id()));
    assert_eq!(
        reset.state,
        HistoricalProofCacheState::BlockedOnWitnessSource
    );
    assert!(
        reset.proof.completed_chunks.is_empty()
            && reset.proof.tail.is_empty()
            && reset.pending.is_empty()
    );
    assert!(source.requests.lock().unwrap().is_empty());
    worker.update().await?;
    assert_eq!(*source.requests.lock().unwrap(), vec![0]);
    Ok(())
}

#[tokio::test]
async fn partially_staged_chunk_round_trips_durably() -> anyhow::Result<()> {
    let (storage, nf) = wallet(10).await?;
    let mut cache = HistoricalProofCache::pending(nf);
    cache.registry_id = Some([7; 32]);
    cache.transition(HistoricalProofCacheState::Updating)?;
    for index in 0..10 {
        cache.pending.push(archived(index));
        assert_eq!(
            storage.put_historical_proof_cache(cache.clone()).await?,
            HistoricalCacheWrite::Stored
        );
        cache = storage
            .historical_proof_cache(nf)
            .await?
            .context("staged cache persisted")?;
        cache.recover_after_restart()?;
        assert_eq!(cache.pending.len(), (index + 1) as usize);
        assert_eq!(cache.has_staged_proof(window(10))?, index == 9);
        assert!(cache.proof.tail.is_empty());
        cache.transition(HistoricalProofCacheState::Updating)?;
    }
    Ok(())
}

#[tokio::test]
async fn history_worker_old_window_must_not_poison_newer_staged_cache() -> anyhow::Result<()> {
    struct PausedFailureSource {
        entered: tokio::sync::Notify,
        resume: tokio::sync::Notify,
        first: std::sync::atomic::AtomicBool,
    }
    #[async_trait]
    impl HistoricalWitnessSource for PausedFailureSource {
        async fn nonmembership_proof(
            &self,
            _: Nullifier,
            _: u64,
        ) -> anyhow::Result<ArchivedNullifierProof> {
            if self.first.swap(false, std::sync::atomic::Ordering::SeqCst) {
                self.entered.notify_one();
                self.resume.notified().await;
            }
            anyhow::bail!("source temporarily unavailable")
        }
    }
    struct RawSource;
    #[async_trait]
    impl HistoricalWitnessSource for RawSource {
        async fn nonmembership_proof(
            &self,
            _: Nullifier,
            index: u64,
        ) -> anyhow::Result<ArchivedNullifierProof> {
            Ok(archived(index))
        }
    }

    let (storage, _) = wallet(1).await?;
    // A page holds 32 rows. Nullifier 41 is read only after the first page.
    for value in 9u64..=41 {
        let nf = Nullifier(Fq::from(value));
        if value != 9 {
            storage.pool.get()?.execute(
                "INSERT INTO spendable_notes (note_commitment,nullifier,position,height_created,address_index,source) VALUES (?1,?1,0,0,X'',X'')",
                [nf.to_bytes().to_vec()],
            )?;
        }
        storage
            .put_historical_proof_cache(HistoricalProofCache::pending(nf))
            .await?;
    }
    let registry = registry();
    let source = Arc::new(PausedFailureSource {
        entered: tokio::sync::Notify::new(),
        resume: tokio::sync::Notify::new(),
        first: std::sync::atomic::AtomicBool::new(true),
    });
    let mut worker =
        HistoricalProofWorker::new(storage.clone(), source.clone(), registry.clone()).await?;
    let running = tokio::spawn(async move { worker.update().await });
    tokio::time::timeout(
        std::time::Duration::from_secs(10),
        source.entered.notified(),
    )
    .await?;

    // Worker A already captured window(1) and its first page. A concurrent scanner
    // advances the window, and worker B persists two checked raw paths for row33.
    let target = Nullifier(Fq::from(41u64));
    let newer_window = window(10);
    storage.pool.get()?.execute(
        "UPDATE kv SET v=?1 WHERE k='nullifier_window'",
        [pb_sct::NullifierWindow::from(newer_window).encode_to_vec()],
    )?;
    let mut newer = storage.historical_proof_cache(target).await?.unwrap();
    for _ in 0..2 {
        crate::historical_proof_cache::stage_historical_witness(
            &mut newer,
            newer_window,
            &RawSource,
            registry.id(),
        )
        .await?;
        storage.put_historical_proof_cache(newer.clone()).await?;
    }
    assert_eq!(newer.pending.len(), 2);
    assert!(newer.proof.tail.is_empty());
    source.resume.notify_one();
    tokio::time::timeout(std::time::Duration::from_secs(20), running).await???;

    let stored = storage.historical_proof_cache(target).await?.unwrap();
    assert_ne!(
        stored.state,
        HistoricalProofCacheState::Invalid,
        "an old worker window must not terminal-poison a newer authenticated staged prefix: {:?}",
        stored.last_error,
    );
    assert_eq!(
        stored.pending, newer.pending,
        "newer staged paths must survive"
    );
    Ok(())
}

#[tokio::test]
async fn stale_fetch_cannot_overwrite_changed_row_or_window() -> anyhow::Result<()> {
    struct ChangingSource {
        storage: Storage,
        registry_id: [u8; 32],
        change_window: bool,
        fail: bool,
    }
    #[async_trait]
    impl HistoricalWitnessSource for ChangingSource {
        async fn nonmembership_proof(
            &self,
            nf: Nullifier,
            index: u64,
        ) -> anyhow::Result<ArchivedNullifierProof> {
            if self.change_window {
                self.storage.pool.get()?.execute(
                    "UPDATE kv SET v=?1 WHERE k='nullifier_window'",
                    [pb_sct::NullifierWindow::from(window(11)).encode_to_vec()],
                )?;
            } else {
                let mut newer = HistoricalProofCache::pending(nf);
                newer.registry_id = Some(self.registry_id);
                newer.transition(HistoricalProofCacheState::Updating)?;
                newer.block_on_witness_source("newer worker outcome")?;
                self.storage.put_historical_proof_cache(newer).await?;
            }
            if self.fail {
                anyhow::bail!("stale worker failure");
            }
            Ok(archived(index))
        }
    }
    let configured = registry();
    for change_window in [false, true] {
        for fail in [false, true] {
            let (storage, nf) = wallet(10).await?;
            let initial = HistoricalProofCache::pending(nf);
            storage.put_historical_proof_cache(initial.clone()).await?;
            let source = Arc::new(ChangingSource {
                storage: storage.clone(),
                registry_id: configured.id(),
                change_window,
                fail,
            });
            HistoricalProofWorker::new(storage.clone(), source, configured.clone())
                .await?
                .update()
                .await?;
            let stored = storage.historical_proof_cache(nf).await?.unwrap();
            if change_window {
                assert_eq!(stored, initial, "advanced window must reject stale work");
            } else {
                assert_eq!(
                    stored.state,
                    HistoricalProofCacheState::BlockedOnWitnessSource
                );
                assert_eq!(stored.last_error.as_deref(), Some("newer worker outcome"));
                assert!(stored.pending.is_empty());
            }
        }
    }
    Ok(())
}

#[tokio::test]
async fn completed_history_write_requires_expected_row_and_window() -> anyhow::Result<()> {
    let (storage, nf) = wallet(0).await?;
    let initial = HistoricalProofCache::pending(nf);
    storage.put_historical_proof_cache(initial.clone()).await?;
    let mut completed = initial.clone();
    completed.registry_id = Some(registry().id());
    completed.transition(HistoricalProofCacheState::Updating)?;
    completed.mark_ready(window(0))?;
    assert_eq!(
        storage
            .update_historical_proof_cache(initial.clone(), window(1), completed.clone())
            .await?,
        HistoricalCacheWrite::Stale
    );
    assert_eq!(
        storage.historical_proof_cache(nf).await?,
        Some(initial.clone())
    );
    assert_eq!(
        storage
            .update_historical_proof_cache(initial.clone(), window(0), completed.clone())
            .await?,
        HistoricalCacheWrite::Stored
    );
    let mut invalid = initial.clone();
    invalid.transition(HistoricalProofCacheState::Updating)?;
    invalid.transition(HistoricalProofCacheState::Invalid)?;
    assert_eq!(
        storage
            .update_historical_proof_cache(initial, window(0), invalid)
            .await?,
        HistoricalCacheWrite::Stale
    );
    assert_eq!(storage.historical_proof_cache(nf).await?, Some(completed));
    Ok(())
}
