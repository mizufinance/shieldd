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

#[tokio::test]
async fn snapshot_rejects_rewritten_spentness_under_the_original_host_root() -> Result<()> {
    use sha2::{Digest, Sha256};

    let storage = TempStorage::new_with_prefixes(crate::SUBSTORE_PREFIXES.to_vec()).await?;
    let directory = tempfile::tempdir()?;
    let mut writer = PermanentWriter::open(storage.as_ref().clone(), &config()).await?;
    genesis(&mut writer, &storage).await?;
    writer
        .prepare(block(&storage, 1), 1, [1; 32], vec![nf(1)])
        .await?;
    writer.seal()?;
    let committed = writer.commit()?;
    let export = directory.path().join("export");
    writer.export_snapshot(&export, &committed).await?;
    let control = PermanentWriter::restore_snapshot(
        &export,
        &directory.path().join("control"),
        &config(),
        committed.application_root.unwrap(),
    )
    .await?;
    assert!(control.status(nf(1), &committed)?.spent);

    let mut forged = committed.clone();
    forged.nullifiers.roots = nullifiers::Roots::default();
    std::fs::write(
        export.join("shieldd-snapshot.json"),
        serde_json::to_vec(&forged)?,
    )?;
    std::fs::write(
        export.join("nullifiers/checkpoint.json"),
        serde_json::to_vec(&forged.nullifiers)?,
    )?;
    let record_path = export.join("nullifiers/00000000000000000001.json");
    let mut record: nullifiers::Transition = serde_json::from_slice(&std::fs::read(&record_path)?)?;
    record.nullifiers.clear();
    record.next = forged.nullifiers.clone();
    std::fs::write(record_path, serde_json::to_vec(&record)?)?;

    // Corrupt only the flat value index, preserving every JMT node and root.
    let application = export.join("application");
    let options = rocksdb::Options::default();
    let families = rocksdb::DB::list_cf(&options, &application)?;
    let db = rocksdb::DB::open_cf(&options, &application, families)?;
    let values = db.cf_handle("substore--jmt-values").unwrap();
    for (key, value) in [
        (
            "sct/permanent-nullifiers/boundary",
            serde_json::to_vec(&forged.nullifiers)?,
        ),
        (
            "sct/permanent-nullifiers/root",
            forged.nullifiers.roots.commitment().to_vec(),
        ),
    ] {
        let mut versioned_key = Sha256::digest(key.as_bytes()).to_vec();
        versioned_key.extend_from_slice(&storage.latest_snapshot().version().to_be_bytes());
        assert!(db.get_cf(values, &versioned_key)?.is_some());
        // Cnidarium's value column stores Borsh Option<Vec<u8>>.
        let mut encoded = vec![1];
        encoded.extend_from_slice(&(value.len() as u32).to_le_bytes());
        encoded.extend_from_slice(&value);
        db.put_cf(values, versioned_key, encoded)?;
    }
    db.flush()?;
    drop(db);

    let result = PermanentWriter::restore_snapshot(
        &export,
        &directory.path().join("tampered"),
        &config(),
        committed.application_root.unwrap(),
    )
    .await;
    if let Ok(restored) = &result {
        assert!(
            !restored.status(nf(1), &forged)?.spent,
            "the forged history removes the original spend"
        );
    }
    assert!(
        result.is_err(),
        "tampered spentness must fail authentication before becoming ready"
    );
    let error = result.err().unwrap();
    assert!(error
        .to_string()
        .contains("authenticate permanent nullifier key"));
    let tampered = directory.path().join("tampered");
    assert!(!tampered.join("permanent-nullifiers").exists());
    let recovery = directory.path().join("recovery");
    std::fs::create_dir(&recovery)?;
    for entry in std::fs::read_dir(export.join("application"))? {
        let entry = entry?;
        std::fs::copy(entry.path(), recovery.join(entry.file_name()))?;
    }
    let corrupted = Storage::load(recovery.clone(), crate::SUBSTORE_PREFIXES.to_vec()).await?;
    assert_eq!(
        corrupted.latest_snapshot().root_hash().await?.0,
        committed.application_root.unwrap()
    );
    let nomt_path = recovery.join("permanent-nullifiers");
    let mut store = Store::open(&nomt_path, &config(), true)?;
    store.restore(&export.join("nullifiers"), &forged.nullifiers)?;
    assert!(
        PermanentWriter::recover(corrupted.clone(), store, committed.application_root)
            .await
            .err()
            .unwrap()
            .to_string()
            .contains("authenticate permanent nullifier key")
    );
    let mut recovering = PermanentWriter {
        storage: corrupted,
        nullifiers: std::sync::Arc::new(std::sync::RwLock::new(Store::open(
            &nomt_path,
            &config(),
            false,
        )?)),
        phase: Phase::Ready(forged),
    };
    assert!(recovering
        .recover_current()
        .await
        .err()
        .unwrap()
        .to_string()
        .contains("authenticate permanent nullifier key"));
    assert!(
        recovering.committed().is_err(),
        "failed recovery must remain interrupted"
    );
    Ok(())
}
