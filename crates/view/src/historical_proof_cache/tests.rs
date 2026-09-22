use super::*;
use shieldd_sdk_crypto::Fq;
use shieldd_sdk_sct::indexed_nullifier_tree::{
    IndexedNullifierLeaf, IndexedNullifierWitness, DEPTH, ZERO_HASHES,
};
use std::sync::atomic::{AtomicUsize, Ordering};

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
    for index in 0..count {
        let raw = archived(index);
        head = append_history(
            head,
            index,
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
struct Source {
    calls: AtomicUsize,
}
#[async_trait]
impl HistoricalWitnessSource for Source {
    async fn nonmembership_proof(
        &self,
        _: Nullifier,
        index: u64,
    ) -> Result<ArchivedNullifierProof> {
        self.calls.fetch_add(1, Ordering::Relaxed);
        Ok(archived(index))
    }
}
// Canonical envelopes exercise cache structure only; actual proofs have a separate ignored test.
fn structural_envelope(family: shieldd_sdk_circuits::proof::Family) -> Vec<u8> {
    let mut bytes = vec![0; shieldd_sdk_circuits::proof::ENCODED_LEN];
    bytes[0] = shieldd_sdk_crypto::SUITE;
    bytes[1] = family as u8;
    bytes[34] = 1;
    bytes[67] = 1;
    let generator = hex::decode("97f1d3a73197d7942695638c4fa9ac0fc3688c4f9774b905a14e3a3f171bac586c55e83ff97a1aeffb3af00adb22c6bb").unwrap();
    for offset in [68, 116, 164] {
        bytes[offset..offset + 48].copy_from_slice(&generator);
    }
    bytes
}

fn complete_structural_work(
    cache: &mut HistoricalProofCache,
    family: shieldd_sdk_circuits::proof::Family,
) {
    use shieldd_sdk_circuits::proof::Family::HistoryChunk;
    let raw = cache.pending.last().unwrap().clone();
    if family == HistoryChunk {
        cache.proof.completed_chunks.push(HistoricalChunkProof {
            chunk_index: raw.generation_index / CHUNK_WIDTH,
            end_history_head: window(raw.generation_index + 1).archived_history_head,
            proof: structural_envelope(family),
        });
        cache.proof.tail.clear();
        cache.pending.clear();
    } else {
        cache.proof.tail.push(GenerationNonmembershipProof {
            generation_index: raw.generation_index,
            generation_root: raw.generation_root,
            generation_start_position: raw.generation_start_position,
            generation_end_position: raw.generation_end_position,
            proof: structural_envelope(family),
        });
    }
}

#[tokio::test]
async fn backfill_proves_complete_chunks_before_final_tail() -> Result<()> {
    use shieldd_sdk_circuits::proof::Family::{HistoryChunk, HistoryGeneration};
    for count in [9, 10, 11, 20] {
        let source = Source {
            calls: AtomicUsize::new(0),
        };
        let mut cache = HistoricalProofCache::pending(Nullifier(Fq::from(9)));
        let target = window(count);
        let mut families = Vec::new();
        while cache.state != HistoricalProofCacheState::Ready {
            stage_historical_witness(&mut cache, target, &source, [7; 32]).await?;
            if !cache.has_staged_proof(target)? {
                continue;
            }
            let family = if cache.pending.len() == history::CHUNK_SIZE {
                HistoryChunk
            } else {
                HistoryGeneration
            };
            families.push(family);
            complete_structural_work(&mut cache, family);
            cache.validate()?;
            if cache.proof.coverage()?.generation_count == count {
                cache.mark_ready(target)?;
            }
        }
        let expected = match count {
            9 => vec![HistoryGeneration; 9],
            10 => vec![HistoryChunk],
            11 => vec![HistoryChunk, HistoryGeneration],
            20 => vec![HistoryChunk; 2],
            _ => unreachable!(),
        };
        assert_eq!(families, expected, "backlog {count}");
        assert_eq!(source.calls.load(Ordering::Relaxed), count as usize);
    }
    Ok(())
}

#[tokio::test]
async fn live_updates_retain_tail_until_chunk_closes() -> Result<()> {
    use shieldd_sdk_circuits::proof::Family::{HistoryChunk, HistoryGeneration};
    let source = Source {
        calls: AtomicUsize::new(0),
    };
    let mut cache = HistoricalProofCache::pending(Nullifier(Fq::from(9)));
    for count in 1..=11 {
        let target = window(count);
        stage_historical_witness(&mut cache, target, &source, [7; 32]).await?;
        assert!(cache.has_staged_proof(target)?);
        let family = if count == 10 {
            HistoryChunk
        } else {
            HistoryGeneration
        };
        complete_structural_work(&mut cache, family);
        cache.mark_ready(target)?;
        assert_eq!(cache.proof.tail.len(), (count % 10) as usize);
        assert_eq!(cache.proof.completed_chunks.len(), (count / 10) as usize);
    }
    assert_eq!(source.calls.load(Ordering::Relaxed), 11);
    Ok(())
}

#[tokio::test]
async fn proven_tail_resumes_backfill_without_refetching_or_reproving_generations() -> Result<()> {
    use shieldd_sdk_circuits::proof::Family::{HistoryChunk, HistoryGeneration};
    let source = Source {
        calls: AtomicUsize::new(0),
    };
    let mut cache = HistoricalProofCache::pending(Nullifier(Fq::from(9)));
    for count in 1..=3 {
        stage_historical_witness(&mut cache, window(count), &source, [7; 32]).await?;
        assert!(cache.has_staged_proof(window(count))?);
        complete_structural_work(&mut cache, HistoryGeneration);
        cache.mark_ready(window(count))?;
    }
    let proven_tail = cache.proof.tail.clone();
    let target = window(20);
    for _ in 3..=6 {
        stage_historical_witness(&mut cache, target, &source, [7; 32]).await?;
        assert!(!cache.has_staged_proof(target)?);
        assert_eq!(cache.proof.tail, proven_tail);
    }
    assert_eq!(cache.pending.len(), 7);
    assert_eq!(source.calls.load(Ordering::Relaxed), 7);
    let mut cache: HistoricalProofCache = serde_json::from_slice(&serde_json::to_vec(&cache)?)?;
    cache.recover_after_restart()?;
    assert_eq!(cache.proof.tail, proven_tail);
    let mut completed = Vec::new();
    while cache.state != HistoricalProofCacheState::Ready {
        stage_historical_witness(&mut cache, target, &source, [7; 32]).await?;
        if cache.proof.completed_chunks.is_empty() {
            assert_eq!(cache.proof.tail, proven_tail);
        }
        if !cache.has_staged_proof(target)? {
            continue;
        }
        assert_eq!(cache.pending.len(), history::CHUNK_SIZE);
        let index = cache.pending.last().unwrap().generation_index / CHUNK_WIDTH;
        completed.push(index);
        complete_structural_work(&mut cache, HistoryChunk);
        cache.validate()?;
        assert_eq!(
            cache.proof.completed_chunks.last().unwrap().chunk_index,
            index
        );
        if cache.proof.coverage()?.generation_count == 20 {
            cache.mark_ready(target)?;
        }
    }
    assert_eq!(completed, vec![0, 1]);
    assert_eq!(source.calls.load(Ordering::Relaxed), 20);
    assert!(cache.proof.tail.is_empty());
    assert!(cache.pending.is_empty());
    cache.ensure_ready_for(target, [7; 32])?;
    Ok(())
}

#[tokio::test]
async fn partially_staged_chunk_resumes_without_refetch_or_premature_proof() -> Result<()> {
    let source = Source {
        calls: AtomicUsize::new(0),
    };
    let mut cache = HistoricalProofCache::pending(Nullifier(Fq::from(9)));
    for _ in 0..4 {
        stage_historical_witness(&mut cache, window(10), &source, [7; 32]).await?;
        assert!(!cache.has_staged_proof(window(10))?);
    }
    assert_eq!(cache.pending.len(), 4);
    assert!(cache.proof.tail.is_empty());
    let mut cache: HistoricalProofCache = serde_json::from_slice(&serde_json::to_vec(&cache)?)?;
    cache.recover_after_restart()?;
    for _ in 4..10 {
        stage_historical_witness(&mut cache, window(10), &source, [7; 32]).await?;
    }
    assert!(cache.has_staged_proof(window(10))?);
    assert_eq!(source.calls.load(Ordering::Relaxed), 10);
    assert!(cache.mark_ready(window(10)).is_err());
    Ok(())
}

#[tokio::test]
async fn staged_witness_survives_restart_without_refetch_and_binds_registry() {
    let mut cache = HistoricalProofCache::pending(Nullifier(Fq::from(9)));
    let source = Source {
        calls: AtomicUsize::new(0),
    };
    stage_historical_witness(&mut cache, window(1), &source, [7; 32])
        .await
        .unwrap();
    assert_eq!(cache.pending.len(), 1);
    let bytes = serde_json::to_vec(&cache).unwrap();
    let mut loaded: HistoricalProofCache = serde_json::from_slice(&bytes).unwrap();
    loaded.recover_after_restart().unwrap();
    stage_historical_witness(&mut loaded, window(1), &source, [7; 32])
        .await
        .unwrap();
    assert_eq!(source.calls.load(Ordering::Relaxed), 1);
    assert!(
        stage_historical_witness(&mut loaded, window(1), &source, [8; 32])
            .await
            .is_err()
    );
    assert!(loaded.bundle_for(window(1), [8; 32]).is_err());
    assert!(loaded.mark_ready(window(1)).is_err());
}
#[tokio::test]
async fn staged_metadata_paths_and_terminal_head_are_checked() {
    let source = Source {
        calls: AtomicUsize::new(0),
    };
    let mut cache = HistoricalProofCache::pending(Nullifier(Fq::from(9)));
    let mut bad_window = window(1);
    bad_window.archived_history_head = Fq::from(123).to_bytes();
    assert!(
        stage_historical_witness(&mut cache, bad_window, &source, [7; 32])
            .await
            .is_err()
    );
    assert!(cache.pending.is_empty());
    stage_historical_witness(&mut cache, window(1), &source, [7; 32])
        .await
        .unwrap();
    for mutation in 0..4 {
        let mut changed = cache.clone();
        match mutation {
            0 => changed.pending[0].generation_index = 1,
            1 => changed.pending[0].generation_end_position = 1 << 48,
            2 => changed.pending[0].witness.auth_path[0][0] = Fq::from(1).to_bytes(),
            _ => changed.pending.extend((1..=10).map(archived)),
        }
        assert!(changed.validate().is_err());
    }
}
#[test]
fn history_runtime_witness_matches_native_generation_relation() {
    let witness =
        generation_witness(Nullifier(Fq::from(9)), &archived(0), empty_history_head()).unwrap();
    assert!(
        shieldd_sdk_circuits::catalogue::evaluate(&Witness::HistoryGeneration(Box::new(witness)))
            .unwrap()
            .is_satisfied()
    );
}
#[test]
fn persisted_errors_are_bounded_at_utf8_boundaries() {
    let mut cache = HistoricalProofCache::pending(Nullifier(Fq::from(9)));
    cache
        .transition(HistoricalProofCacheState::Updating)
        .unwrap();
    cache
        .block_on_prover(format!("{}é", "x".repeat(1023)))
        .unwrap();
    assert_eq!(cache.last_error.as_ref().unwrap().len(), 1023);
    cache.validate().unwrap();
}

#[tokio::test]
#[ignore = "requires local Pari keys and actual generation/chunk proof generation"]
async fn runtime_history_closes_raw_chunk_after_failed_proof_and_restart() -> Result<()> {
    let directory = std::path::PathBuf::from(std::env::var("SHIELDD_PARI_KEYS")?);
    let registry = Arc::new(Registry::load(&directory)?);
    let source = Source {
        calls: AtomicUsize::new(0),
    };
    let target = window(10);
    let mut cache = HistoricalProofCache::pending(Nullifier(Fq::from(9)));
    for _ in 0..9 {
        stage_historical_witness(&mut cache, target, &source, registry.id()).await?;
        assert!(!cache.has_staged_proof(target)?);
    }
    assert!(cache.proof.tail.is_empty());
    stage_historical_witness(&mut cache, target, &source, registry.id()).await?;
    assert_eq!(cache.pending.len(), 10);
    let staged = serde_json::to_vec(&cache)?;
    // A verification-only registry has the same identity, but cannot load the chunk proving key.
    let missing = tempfile::tempdir()?;
    std::fs::copy(
        directory.join("manifest.json"),
        missing.path().join("manifest.json"),
    )?;
    for family in shieldd_sdk_circuits::proof::Family::ALL {
        let name = format!("{}.vk", family.label());
        std::fs::copy(directory.join(&name), missing.path().join(&name))?;
    }
    let unavailable = Arc::new(Registry::load(missing.path())?);
    assert_eq!(registry.id(), unavailable.id());
    assert!(matches!(
        advance_historical_proof_cache(&mut cache, target, unavailable).await,
        Err(HistoricalProofUpdateError::Prover(_))
    ));
    assert_eq!(serde_json::to_vec(&cache)?, staged);
    let mut resumed: HistoricalProofCache = serde_json::from_slice(&staged)?;
    resumed.recover_after_restart()?;
    stage_historical_witness(&mut resumed, target, &source, registry.id()).await?;
    assert_eq!(source.calls.load(Ordering::Relaxed), 10);
    advance_historical_proof_cache(&mut resumed, target, registry.clone()).await?;
    assert!(resumed.pending.is_empty());
    assert!(resumed.proof.tail.is_empty());
    assert_eq!(resumed.proof.completed_chunks.len(), 1);
    let bundle = resumed.bundle_for(target, registry.id())?;
    let chunk = &bundle.completed_chunks[0];
    shieldd_sdk_proof_params::historical::verify_chunk(
        &registry,
        ChunkClaim {
            protocol_version: PROTOCOL_VERSION,
            nullifier: bundle.nullifier.into(),
            chunk_index: 0,
            start_history_head: empty_history_head(),
            end_history_head: target.archived_history_head,
        },
        &chunk.proof,
    )?;
    assert!(resumed.bundle_for(target, [0; 32]).is_err());
    Ok(())
}

#[test]
#[ignore = "real native generation proofs with concurrent blocking callers"]
fn concurrent_provers_share_bounded_workers() -> Result<()> {
    let registry = Arc::new(Registry::load(std::env::var("SHIELDD_PARI_KEYS")?)?);
    let witness = Arc::new(Witness::HistoryGeneration(Box::new(generation_witness(
        Nullifier(Fq::from(9)),
        &archived(0),
        empty_history_head(),
    )?)));
    let parameters = shieldd_sdk_circuits::hash::Parameters::load()?;
    let statement = witness.digest(
        &parameters,
        &shieldd_sdk_circuits::map::Generators::derive(&parameters),
    )?;
    let runtime = tokio::runtime::Builder::new_current_thread()
        .enable_all()
        .build()?;
    let barrier = Arc::new(std::sync::Barrier::new(2));
    let result = runtime.block_on(async {
        let mut tasks = Vec::new();
        for _ in 0..2 {
            let (registry, witness, barrier) = (registry.clone(), witness.clone(), barrier.clone());
            tasks.push(tokio::task::spawn_blocking(move || {
                barrier.wait();
                registry.prove(
                    &witness,
                    shieldd_sdk_proof_params::pari::proving_strategy()?,
                )
            }));
        }
        tokio::time::timeout(std::time::Duration::from_secs(60), async {
            for task in tasks {
                let proof = task.await??;
                registry.verify(witness.family(), &statement, &proof)?;
            }
            Ok::<_, anyhow::Error>(())
        })
        .await
    });
    // Blocking jobs cannot be cancelled; bound teardown even if the timeout catches a deadlock.
    runtime.shutdown_timeout(std::time::Duration::from_secs(1));
    result??;
    Ok(())
}
