use super::*;
use cnidarium::{StateRead, StateWrite, TempStorage};
use shieldd_sdk_crypto::Fq;
use shieldd_sdk_sct::{component::clock::EpochManager as _, permanent_nullifiers::Config};

fn config() -> Config {
    Config {
        buckets: 1024,
        cache_mib: 1,
        preallocate: false,
    }
}
fn nf(value: u64) -> Nullifier {
    Nullifier(Fq::from(value))
}
fn block(storage: &Storage, height: u64) -> StateDelta<Snapshot> {
    let mut state = StateDelta::new(storage.latest_snapshot());
    state.put_block_height(height);
    state.put_raw("test/accepted-block".into(), height.to_be_bytes().to_vec());
    state
}
async fn fresh(storage: &Storage, directory: &std::path::Path) -> Result<PermanentWriter> {
    PermanentWriter::recover(
        storage.clone(),
        Store::open(directory, &config(), true)?,
        None,
    )
    .await
}
async fn genesis(writer: &mut PermanentWriter, storage: &Storage) -> Result<CommitBoundary> {
    writer
        .prepare(block(storage, 0), 0, [0; 32], vec![])
        .await?;
    writer.seal()?;
    writer.commit()
}

#[tokio::test]
async fn disposable_proposals_and_failed_spends_publish_no_state() -> Result<()> {
    let storage = TempStorage::new().await?;
    let directory = tempfile::tempdir()?;
    let path = directory.path().join("nomt");
    let mut writer = fresh(&storage, &path).await?;
    let initial = genesis(&mut writer, &storage).await?;
    let proposal = writer
        .prepare(block(&storage, 1), 1, [1; 32], vec![nf(1)])
        .await?;
    assert_ne!(proposal.application_root, initial.application_root);
    assert_eq!(writer.committed()?, &initial);
    assert!(!writer.status(nf(1), &initial)?.spent);
    assert!(writer.commit().is_err(), "durable intent is required");
    writer.discard()?;
    assert!(!path.join("intent.json").exists());
    assert_eq!(
        storage.latest_snapshot().root_hash().await?.0,
        initial.application_root.unwrap()
    );
    assert_eq!(
        storage
            .latest_snapshot()
            .get_raw("test/accepted-block")
            .await?,
        Some(0u64.to_be_bytes().to_vec())
    );

    assert!(writer
        .prepare(block(&storage, 1), 1, [1; 32], vec![nf(1), nf(1)])
        .await
        .is_err());
    assert_eq!(writer.committed()?, &initial);
    let prepared = writer
        .prepare(block(&storage, 1), 1, [1; 32], vec![nf(1), nf(2)])
        .await?;
    assert_eq!(writer.seal()?, prepared);
    assert!(writer.discard().is_err(), "sealed work requires recovery");
    let committed = writer.commit()?;
    assert_eq!(committed, prepared);
    assert!(
        writer.status(nf(1), &initial).is_err(),
        "old published boundaries expire"
    );
    for value in [1, 2] {
        let status = writer.status(nf(value), &committed)?;
        assert!(status.spent);
        status.verify(&committed.nullifiers)?;
    }
    assert!(writer
        .prepare(block(&storage, 2), 2, [2; 32], vec![nf(1)])
        .await
        .is_err());
    assert_eq!(writer.committed()?, &committed);
    Ok(())
}

#[tokio::test]
async fn recover_each_application_handoff_without_publishing_partial_work() -> Result<()> {
    // Intent only; NOMT durable but application old; application durable but
    // completion pending. The application root, not local intent, selects recovery.
    for crash in 0..3 {
        let storage = TempStorage::new().await?;
        let directory = tempfile::tempdir()?;
        let path = directory.path().join("nomt");
        let mut writer = fresh(&storage, &path).await?;
        let initial = genesis(&mut writer, &storage).await?;
        let next = writer
            .prepare(block(&storage, 1), 1, [1; 32], vec![nf(1), nf(2)])
            .await?;
        writer.seal()?;
        let Phase::Sealed(frozen) = std::mem::replace(&mut writer.phase, Phase::Interrupted) else {
            panic!("sealed")
        };
        if crash > 0 {
            writer
                .nullifiers
                .write()
                .unwrap()
                .commit(frozen.insertions)?;
        }
        if crash > 1 {
            storage.commit_batch(frozen.application)?;
        }
        assert!(writer.committed().is_err());
        assert!(writer.status(nf(1), &initial).is_err());
        assert!(path.join("intent.json").exists());
        drop(writer);
        let expected = if crash == 2 { &next } else { &initial };
        let mut recovered = PermanentWriter::recover(
            storage.clone(),
            Store::open(&path, &config(), false)?,
            expected.application_root,
        )
        .await?;
        assert_eq!(recovered.committed()?, expected);
        assert!(!path.join("intent.json").exists());
        for value in [1, 2] {
            assert_eq!(recovered.status(nf(value), expected)?.spent, crash == 2);
        }
        assert_eq!(
            storage
                .latest_snapshot()
                .get_raw("test/accepted-block")
                .await?,
            Some((if crash == 2 { 1u64 } else { 0 }).to_be_bytes().to_vec())
        );
        if crash < 2 {
            assert_eq!(
                recovered
                    .prepare(block(&storage, 1), 1, [1; 32], vec![nf(1), nf(2)])
                    .await?,
                next
            );
            recovered.seal()?;
            assert_eq!(recovered.commit()?, next);
        }
    }
    Ok(())
}

#[tokio::test]
async fn inconsistent_host_commitment_or_missing_application_never_becomes_ready() -> Result<()> {
    let storage = TempStorage::new().await?;
    let directory = tempfile::tempdir()?;
    let path = directory.path().join("nomt");
    let mut writer = fresh(&storage, &path).await?;
    let initial = genesis(&mut writer, &storage).await?;
    drop(writer);
    let wrong = PermanentWriter::recover(
        storage.clone(),
        Store::open(&path, &config(), false)?,
        Some([42; 32]),
    )
    .await;
    assert!(wrong.err().unwrap().to_string().contains("host commitment"));
    assert_eq!(
        storage.latest_snapshot().root_hash().await?.0,
        initial.application_root.unwrap()
    );
    let mut writer = PermanentWriter::recover(
        storage.clone(),
        Store::open(&path, &config(), false)?,
        initial.application_root,
    )
    .await?;
    writer
        .prepare(block(&storage, 1), 1, [1; 32], vec![nf(1)])
        .await?;
    writer.seal()?;
    writer.commit()?;
    drop(writer);
    let empty = TempStorage::new().await?;
    let error =
        PermanentWriter::recover(empty.clone(), Store::open(&path, &config(), false)?, None).await;
    assert!(
        error.is_err(),
        "populated NOMT cannot initialize missing application state"
    );
    let mut corrupted = StateDelta::new(storage.latest_snapshot());
    corrupted.put_block_height(7);
    storage.commit(corrupted).await?;
    let actual = storage.latest_snapshot().root_hash().await?.0;
    let error = PermanentWriter::recover(
        storage.clone(),
        Store::open(&path, &config(), false)?,
        Some(actual),
    )
    .await;
    assert!(error
        .err()
        .unwrap()
        .to_string()
        .contains("heights disagree"));
    Ok(())
}

#[tokio::test]
async fn snapshot_restores_application_and_all_partitions_against_host_root() -> Result<()> {
    let storage = TempStorage::new_with_prefixes(crate::SUBSTORE_PREFIXES.to_vec()).await?;
    let directory = tempfile::tempdir()?;
    let mut writer = PermanentWriter::open(storage.as_ref().clone(), &config()).await?;
    genesis(&mut writer, &storage).await?;
    let values = (1..=64).map(nf).collect();
    writer
        .prepare(block(&storage, 1), 1, [1; 32], values)
        .await?;
    writer.seal()?;
    let expected = writer.commit()?;
    let export = directory.path().join("export");
    writer.export_snapshot(&export, &expected).await?;
    assert_eq!(writer.capacity()?.len(), 16);
    let larger = Config {
        buckets: 2048,
        ..config()
    };
    let restored = PermanentWriter::restore_snapshot(
        &export,
        &directory.path().join("restored"),
        &larger,
        expected.application_root.unwrap(),
    )
    .await?;
    assert_eq!(restored.committed()?, &expected);
    for i in 1..=64 {
        assert!(restored.status(nf(i), &expected)?.spent);
    }
    assert!(!restored.status(nf(65), &expected)?.spent);
    assert!(PermanentWriter::restore_snapshot(
        &export,
        &directory.path().join("wrong"),
        &config(),
        [255; 32]
    )
    .await
    .is_err());
    std::fs::remove_file(export.join("nullifiers/00000000000000000001.json"))?;
    assert!(PermanentWriter::restore_snapshot(
        &export,
        &directory.path().join("missing-history"),
        &config(),
        expected.application_root.unwrap()
    )
    .await
    .is_err());
    assert_eq!(writer.committed()?, &expected);
    Ok(())
}
