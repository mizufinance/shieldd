
#[tokio::test]
async fn opus_review_pending_history_blocks_sync_startup() -> anyhow::Result<()> {
    use std::sync::atomic::{AtomicUsize, Ordering};
    struct PendingSource(AtomicUsize);
    #[async_trait]
    impl HistoricalWitnessSource for PendingSource {
        async fn nonmembership_proof(&self, _: Nullifier, _: u64) -> anyhow::Result<ArchivedNullifierProof> {
            self.0.fetch_add(1, Ordering::SeqCst);
            std::future::pending().await
        }
    }
    let (storage, nf) = wallet(1).await?;
    storage.put_historical_proof_cache(HistoricalProofCache::pending(nf)).await?;
    let registry = registry();
    // An immediate external failure is deferred and permits startup.
    let control = crate::SyncWorker::new(storage.clone(), registry.clone(), unavailable_source()).await;
    assert!(control.is_ok(), "positive control: ordinary source error must let startup finish");
    drop(control);
    let source = Arc::new(PendingSource(AtomicUsize::new(0)));
    let result = tokio::time::timeout(std::time::Duration::from_secs(2), crate::SyncWorker::new(storage, registry, source.clone())).await;
    assert_eq!(source.0.load(Ordering::SeqCst), 1, "must reach the external witness await");
    assert!(result.is_err(), "pending witness prevents SyncWorker construction from completing");
    eprintln!("REPRODUCED: immediate witness error permits startup; pending witness blocks startup beyond 2 seconds");
    Ok(())
}
