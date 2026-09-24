use anyhow::Result;
use cnidarium::{StateDelta, StateRead, StateWrite, TempStorage};

#[tokio::test]
async fn range_commit_is_atomic_snapshot_isolated_and_reports_invalidations() -> Result<()> {
    let storage = TempStorage::new_with_prefixes(vec!["sct".into()]).await?;
    let mut delta = StateDelta::new(storage.latest_snapshot());
    for key in [b"sct/retired/a", b"sct/retired/b", b"sct/current/a"] {
        delta.nonverifiable_put_raw(key.to_vec(), b"value".to_vec());
    }
    delta.put_raw("sct/root".into(), b"root".to_vec());
    storage.commit(delta).await?;
    let old = storage.latest_snapshot();
    let root = old.root_hash().await?;
    let mut changes = storage.subscribe_changes();
    let mut delta = StateDelta::new(old.clone());
    delta.nonverifiable_put_raw(b"sct/receipt".to_vec(), b"archive".to_vec());
    let batch = storage.prepare_commit(delta).await?;
    let batch =
        storage.attach_nonverifiable_prefix_deletions(batch, vec![b"sct/retired/".to_vec()])?;
    storage.commit_batch(batch)?;
    let checkpoint = storage.compaction_checkpoint();
    changes.changed().await?;
    assert_eq!(
        changes.borrow().1.nonverifiable_range_deletions(),
        &[b"sct/retired/".to_vec()..b"sct/retired0".to_vec()]
    );
    let new = storage.latest_snapshot();
    assert_eq!(new.root_hash().await?, root);
    assert!(old.nonverifiable_get_raw(b"sct/retired/a").await?.is_some());
    assert!(new.nonverifiable_get_raw(b"sct/retired/a").await?.is_none());
    assert!(new.nonverifiable_get_raw(b"sct/current/a").await?.is_some());
    assert_eq!(
        new.nonverifiable_get_raw(b"sct/receipt").await?,
        Some(b"archive".to_vec())
    );
    assert!(!storage.compaction_checkpoint_released(checkpoint)?);
    for _ in 0..10 {
        storage
            .commit(StateDelta::new(storage.latest_snapshot()))
            .await?;
    }
    assert!(
        !storage.compaction_checkpoint_released(checkpoint)?,
        "a held reader still needs the retired records"
    );
    drop(old);
    assert!(storage.compaction_checkpoint_released(checkpoint)?);
    Ok(())
}

#[tokio::test]
async fn range_commit_rejects_overlapping_writes_ranges_and_substores() -> Result<()> {
    let storage = TempStorage::new_with_prefixes(vec!["sct".into()]).await?;
    storage
        .commit(StateDelta::new(storage.latest_snapshot()))
        .await?;
    let mut delta = StateDelta::new(storage.latest_snapshot());
    delta.nonverifiable_put_raw(b"sct/retired/a".to_vec(), b"new".to_vec());
    let batch = storage.prepare_commit(delta).await?;
    assert!(storage
        .attach_nonverifiable_prefix_deletions(batch, vec![b"sct/retired/".to_vec()])
        .is_err());
    for prefixes in [
        vec![b"sct/".to_vec()],
        vec![b"sct/retired/".to_vec(), b"sct/retired/nested/".to_vec()],
    ] {
        let batch = storage
            .prepare_commit(StateDelta::new(storage.latest_snapshot()))
            .await?;
        assert!(storage
            .attach_nonverifiable_prefix_deletions(batch, prefixes)
            .is_err());
    }
    assert!(storage
        .latest_snapshot()
        .nonverifiable_get_raw(b"sct/retired/a")
        .await?
        .is_none());
    Ok(())
}
