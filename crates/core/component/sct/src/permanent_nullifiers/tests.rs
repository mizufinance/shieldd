use super::*;
use shieldd_sdk_crypto::Fq;

fn config() -> Config {
    Config {
        buckets: 1_024,
        cache_mib: 1,
        preallocate: false,
    }
}

#[cfg(target_os = "linux")]
#[test]
#[ignore = "requires a container denying io_uring; run by the container storage gate"]
fn unavailable_io_uring_creates_no_store() -> Result<()> {
    let denied = std::env::var("SHIELDD_EXPECT_IO_URING_DENIAL")?;
    assert!(matches!(
        denied.as_str(),
        "io_uring_setup" | "io_uring_enter"
    ));
    let directory = tempfile::tempdir()?;
    let path = directory.path().join("store");
    let error = Store::open(&path, &config(), true)
        .err()
        .context("denied I/O must refuse storage startup")?;
    assert!(
        error.to_string().contains(&format!("permitted {denied}")),
        "{error:#}"
    );
    assert!(
        !path.exists(),
        "refused startup must not create partial state"
    );
    Ok(())
}
fn nf(value: u64) -> Nullifier {
    Nullifier(Fq::from(value))
}
fn fresh(path: &Path) -> Result<Store> {
    let mut store = Store::open(path, &config(), true)?;
    store.recover(&Boundary::default())?;
    Ok(store)
}
fn apply(
    store: &mut Store,
    height: u64,
    previous: &Boundary,
    values: Vec<Nullifier>,
) -> Result<Transition> {
    let update = store.prepare(height, [height as u8; 32], previous, values)?;
    store.persist_intent(&update)?;
    let transition = store.commit(update)?;
    assert!(
        store.status(nf(500), &transition.next).is_err(),
        "unpublished commit must be unreadable"
    );
    store.complete(&transition.next)?;
    Ok(transition)
}

#[test]
fn permanent_set_matches_reference_and_reopens() -> Result<()> {
    let directory = tempfile::tempdir()?;
    let mut store = fresh(&directory.path().join("store"))?;
    let mut reference = BTreeSet::new();
    let mut roots = Boundary::default();
    for height in 0..5 {
        let values: Vec<_> = (0..8).map(|index| nf(height * 8 + index)).collect();
        reference.extend(values.iter().copied());
        let transition = apply(&mut store, height, &roots, values)?;
        roots = transition.next;
        for value in 0..50 {
            let status = store.status(nf(value), &roots)?;
            assert_eq!(status.spent, reference.contains(&nf(value)));
            status.verify(&roots)?;
            let wire: shieldd_sdk_proto::core::component::sct::v1::NullifierResponse =
                status.try_into()?;
            let detached: Status = wire.try_into()?;
            assert_eq!(detached.spent, reference.contains(&nf(value)));
            detached.verify(&roots)?;
        }
    }
    drop(store);
    let mut store = Store::open(&directory.path().join("store"), &config(), false)?;
    assert!(store.status(nf(0), &roots).is_err());
    store.recover(&roots)?;
    assert!(store.status(nf(0), &roots)?.spent);
    assert!(!store.status(nf(500), &roots)?.spent);
    assert!(store.prepare(5, [5; 32], &roots, vec![nf(0)]).is_err());
    assert_eq!(store.actual_roots(), roots.roots);
    Ok(())
}

#[test]
fn duplicate_stale_and_disposable_updates_publish_nothing() -> Result<()> {
    let directory = tempfile::tempdir()?;
    let mut store = fresh(&directory.path().join("store"))?;
    assert!(store
        .prepare(0, [0; 32], &Boundary::default(), vec![nf(1), nf(1)])
        .is_err());
    let pending = store.prepare(0, [0; 32], &Boundary::default(), vec![nf(1)])?;
    assert!(!store.status(nf(1), &Boundary::default())?.spent);
    drop(pending);
    assert_eq!(store.actual_roots(), Roots::default());
    assert!(!store.directory.join("intent.json").exists());
    let first = apply(&mut store, 0, &Boundary::default(), vec![nf(2)])?;
    assert!(store
        .prepare(1, [1; 32], &Boundary::default(), vec![nf(3)])
        .is_err());
    let mut status = store.status(nf(2), &first.next)?;
    status.spent = false;
    assert!(status.verify(&first.next).is_err());
    assert!(status.verify(&Boundary::default()).is_err());
    Ok(())
}

#[test]
fn an_index_miss_cannot_override_authenticated_presence() -> Result<()> {
    let directory = tempfile::tempdir()?;
    let mut store = fresh(&directory.path().join("store"))?;
    let first = apply(&mut store, 0, &Boundary::default(), vec![nf(1)])?;
    let path = key(nf(1));
    let index = partition(&path);
    // ReadThenWrite is not compare-and-set. Even a witness claiming absence
    // must independently authenticate it against the existing trie leaf.
    let session = store.partitions[index]
        .begin_session(SessionParams::default().witness_mode(WitnessMode::read_write()));
    let mut forged = session.finish(vec![(
        path,
        KeyReadWrite::ReadThenWrite(None, Some(SPENT_VALUE.to_vec())),
    )])?;
    let mut witness = forged.take_witness().context("missing witness")?;
    witness.operations.reads[0].value = None;
    let error = verify_insertions(
        &witness,
        &[path],
        first.next.roots.0[index],
        forged.root().into_inner(),
    )
    .expect_err("trie membership must reject claimed absence");
    assert!(error.to_string().contains("already spent"), "{error:#}");
    drop(forged);
    assert_eq!(store.actual_roots(), first.next.roots);
    assert!(store.status(nf(1), &first.next)?.spent);

    // NOMT reconstructs a singleton root from the value index on reopen. Use
    // an internal root so deleting an index entry leaves the trie root intact.
    let other = (2..10_000)
        .map(nf)
        .find(|value| partition(&key(*value)) == index)
        .context("partition sample missing")?;
    let second = apply(&mut store, 1, &first.next, vec![other])?;
    let authenticated = store.status(nf(1), &second.next)?;
    let database_path = store.directory.clone();
    drop(store);
    // At the pinned revision, a value-index leaf stores 32-byte keys in cell
    // pointers. Redirect the target key within its trie prefix, preserving leaf
    // ordering; leave authenticated trie pages and metadata untouched.
    let leaf_path = database_path.join(format!("partition-{index:02}/ln"));
    let mut leaf = fs::read(&leaf_path)?;
    let offsets: Vec<_> = leaf
        .windows(32)
        .enumerate()
        .filter_map(|(offset, bytes)| (bytes == path).then_some(offset))
        .collect();
    assert!(
        !offsets.is_empty(),
        "the value-index leaf must contain the target key"
    );
    let mut replacement = path;
    replacement[31] ^= 1;
    assert_eq!(path.cmp(&key(other)), replacement.cmp(&key(other)));
    for offset in offsets {
        leaf[offset..offset + 32].copy_from_slice(&replacement);
    }
    fs::write(&leaf_path, leaf)?;
    File::open(&leaf_path)?.sync_all()?;
    let mut store = Store::open(&database_path, &config(), false)?;
    store.recover(&second.next)?;
    assert!(
        store.partitions[index].read(path)?.is_none(),
        "the actual value-index entry must be missing"
    );
    authenticated.verify(&second.next)?;
    assert_eq!(store.actual_roots(), second.next.roots);
    assert!(
        store
            .status(nf(1), &second.next)
            .map_or(true, |status| status.spent),
        "an index miss must never report unspent"
    );
    assert!(
        store
            .prepare(2, [2; 32], &second.next, vec![nf(1)])
            .is_err(),
        "an index miss must not permit a second spend"
    );
    assert_eq!(store.actual_roots(), second.next.roots);
    assert!(!database_path.join("intent.json").exists());
    Ok(())
}

#[test]
fn every_partial_partition_commit_recovers_previous_boundary() -> Result<()> {
    let directory = tempfile::tempdir()?;
    // Choose one nullifier in each partition independently of update order.
    let mut values = [None; PARTITIONS];
    for value in 0..10_000 {
        let nullifier = nf(value);
        values[partition(&key(nullifier))].get_or_insert(nullifier);
        if values.iter().all(Option::is_some) {
            break;
        }
    }
    let values: Vec<_> = values
        .into_iter()
        .map(|v| v.expect("partition sample"))
        .collect();
    for committed_partitions in 0..=PARTITIONS {
        let path = directory
            .path()
            .join(format!("store-{committed_partitions}"));
        let mut store = fresh(&path)?;
        let prepared = store.prepare(0, [7; 32], &Boundary::default(), values.clone())?;
        durable_write(
            &path.join("intent.json"),
            &serde_json::to_vec(&prepared.transition)?,
        )?;
        for (index, session) in prepared.sessions.into_iter().take(committed_partitions) {
            session.commit(&store.partitions[index])?;
        }
        store.ready = false;
        drop(store);
        let mut store = Store::open(&path, &config(), false)?;
        store.recover(&Boundary::default())?;
        for value in &values {
            assert!(!store.status(*value, &Boundary::default())?.spent);
        }
        assert!(!path.join("intent.json").exists());
        // Retry the exact canonical block after rollback.
        apply(&mut store, 0, &Boundary::default(), values.clone())?;
    }
    Ok(())
}

#[test]
fn committed_intent_restore_replay_and_missing_data_fail_closed() -> Result<()> {
    let directory = tempfile::tempdir()?;
    let path = directory.path().join("store");
    let mut store = fresh(&path)?;
    let genesis = apply(&mut store, 0, &Boundary::default(), vec![])?;
    let prepared = store.prepare(1, [1; 32], &genesis.next, vec![nf(1), nf(2)])?;
    store.persist_intent(&prepared)?;
    let block = store.commit(prepared)?;
    drop(store); // Application has committed, record retention was interrupted.
    let mut store = Store::open(&path, &config(), false)?;
    store.recover(&block.next)?;
    assert!(path.join("history/00000000000000000001.json").is_file());
    let restored_path = directory.path().join("restore");
    let mut restored = fresh(&restored_path)?;
    restored.replay([genesis.clone(), block.clone()], &block.next)?;
    assert!(restored.status(nf(1), &block.next)?.spent);
    let mut incomplete = fresh(&directory.path().join("incomplete"))?;
    assert!(incomplete.replay([genesis], &block.next).is_err());
    // A failed restore must remain unavailable even if its partial root is known.
    assert!(incomplete.status(nf(1), &Boundary::default()).is_err());
    drop(restored);
    fs::remove_file(restored_path.join("partition-00/meta"))?;
    assert!(Store::open(&restored_path, &config(), false).is_err());
    drop(store);
    fs::remove_file(path.join("history/00000000000000000001.json"))?;
    // Missing canonical records must be caught by replay/checkpoint validation;
    // a working trie still cannot be opened against an unrelated application root.
    let mut store = Store::open(&path, &config(), false)?;
    assert!(
        store.recover(&block.next).is_err(),
        "missing retained canonical record must prevent readiness"
    );
    assert!(store.status(nf(1), &block.next).is_err());
    Ok(())
}

#[tokio::test]
async fn application_commit_selects_recovery_boundary_including_empty_blocks() -> Result<()> {
    use cnidarium::{StateDelta, StateRead, StateWrite};
    let directory = tempfile::tempdir()?;
    let storage = cnidarium::Storage::load(directory.path().join("app"), vec![]).await?;
    let path = directory.path().join("nullifiers");
    let mut store = fresh(&path)?;
    let genesis = store.prepare(0, [1; 32], &Boundary::default(), vec![])?;
    assert!(read_boundary(&storage.latest_snapshot()).await.is_err());
    let mut stale = StateDelta::new(storage.latest_snapshot());
    stale.put_raw(
        "sct/nullifier_generations/state".to_owned(),
        b"old schema".to_vec(),
    );
    assert!(stage_boundary(&mut stale, genesis.transition())
        .await
        .is_err());
    assert!(stale.get_raw(BOUNDARY_KEY).await?.is_none());
    drop(stale);
    let mut delta = StateDelta::new(storage.latest_snapshot());
    stage_boundary(&mut delta, genesis.transition()).await?;
    // Durable NOMT, then application; neither root changes for empty genesis.
    store.persist_intent(&genesis)?;
    let genesis = store.commit(genesis)?;
    storage.commit(delta).await?;
    drop(store);
    let committed = read_boundary(&storage.latest_snapshot()).await?;
    assert_eq!(committed, genesis.next);
    let mut store = Store::open(&path, &config(), false)?;
    store.recover(&committed)?;
    assert!(path.join("history/00000000000000000000.json").is_file());
    let previous_hash = storage.latest_snapshot().root_hash().await?;
    let update = store.prepare(1, [2; 32], &committed, vec![nf(20)])?;
    let mut discarded = StateDelta::new(storage.latest_snapshot());
    stage_boundary(&mut discarded, update.transition()).await?;
    assert!(discarded.get_raw(ROOT_KEY).await?.is_some());
    store.persist_intent(&update)?;
    store.commit(update)?;
    drop(discarded); // Crash after NOMT commits, before the application commits.
    drop(store);
    let mut store = Store::open(&path, &config(), false)?;
    store.recover(&read_boundary(&storage.latest_snapshot()).await?)?;
    assert!(!store.status(nf(20), &committed)?.spent);
    assert_eq!(storage.latest_snapshot().root_hash().await?, previous_hash);
    let update = store.prepare(1, [2; 32], &committed, vec![nf(20)])?;
    let mut delta = StateDelta::new(storage.latest_snapshot());
    stage_boundary(&mut delta, update.transition()).await?;
    store.persist_intent(&update)?;
    let next = store.commit(update)?.next;
    storage.commit(delta).await?;
    store.complete(&read_boundary(&storage.latest_snapshot()).await?)?;
    assert!(store.status(nf(20), &next)?.spent);
    assert_ne!(storage.latest_snapshot().root_hash().await?, previous_hash);
    let mut corrupt = StateDelta::new(storage.latest_snapshot());
    corrupt.put_raw(ROOT_KEY.to_owned(), vec![0; 32]);
    assert!(read_boundary(&corrupt).await.is_err());
    corrupt.delete(BOUNDARY_KEY.to_owned());
    corrupt.delete(ROOT_KEY.to_owned());
    corrupt.delete(FORMAT_KEY.to_owned());
    assert!(
        read_boundary(&corrupt).await.is_err(),
        "missing application boundary must not become an empty set"
    );
    drop(corrupt);
    drop(store);
    storage.release().await;
    Ok(())
}

#[test]
fn roots_match_independent_binary_trie_in_any_insertion_order() -> Result<()> {
    // A deliberately simple in-memory oracle, independent of NOMT's update
    // witnesses and storage implementation. Full-depth prefixes compress only
    // when the subtree has one leaf, as specified by the binary trie format.
    fn trie(keys: &[[u8; 32]], depth: usize) -> [u8; 32] {
        if keys.is_empty() {
            return [0; 32];
        }
        if keys.len() == 1 {
            let mut hash = Sha256::new();
            hash.update(keys[0]);
            hash.update(Sha256::digest(SPENT_VALUE));
            let mut node: [u8; 32] = hash.finalize().into();
            node[0] |= 128;
            return node;
        }
        let split = keys.partition_point(|key| key[depth / 8] & (128 >> (depth % 8)) == 0);
        let mut hash = Sha256::new();
        hash.update(trie(&keys[..split], depth + 1));
        hash.update(trie(&keys[split..], depth + 1));
        let mut node: [u8; 32] = hash.finalize().into();
        node[0] &= 127;
        node
    }
    let values: Vec<_> = (0..256).map(nf).collect();
    let mut partitions: [Vec<[u8; 32]>; PARTITIONS] = std::array::from_fn(|_| vec![]);
    for value in &values {
        let mut hash = Sha256::new();
        hash.update(b"shieldd.spend-nullifier.v1\0");
        hash.update(value.to_bytes());
        let key: [u8; 32] = hash.finalize().into();
        partitions[(key[0] / 16) as usize].push(key);
    }
    let expected = Roots(std::array::from_fn(|index| {
        partitions[index].sort_unstable();
        trie(&partitions[index], 0)
    }));
    let directory = tempfile::tempdir()?;
    let mut first = fresh(&directory.path().join("first"))?;
    let mut second = fresh(&directory.path().join("second"))?;
    let a = apply(&mut first, 0, &Boundary::default(), values.clone())?;
    let b = apply(
        &mut second,
        0,
        &Boundary::default(),
        values.into_iter().rev().collect(),
    )?;
    assert_eq!(a.next.roots, expected);
    assert_eq!(b.next.roots, expected);
    Ok(())
}

#[test]
fn interrupted_native_commit_child() -> Result<()> {
    let Some(path) = std::env::var_os("SHIELDD_TEST_NOMT_CRASH_PATH") else {
        return Ok(());
    };
    let path = PathBuf::from(path);
    let store = fresh(&path)?;
    let prepared = store.prepare(0, [9; 32], &Boundary::default(), vec![nf(77)])?;
    durable_write(
        &path.join("intent.json"),
        &serde_json::to_vec(prepared.transition())?,
    )?;
    drop(prepared);
    drop(store);
    let key = key(nf(77));
    let mut options = nomt::Options::new();
    options.path(path.join(format!("partition-{:02}", partition(&key))));
    options.hashtable_buckets(config().buckets);
    options.preallocate_ht(false);
    options.rollback(true);
    options.max_rollback_log_len(2);
    options.page_cache_size(1);
    options.leaf_cache_size(1);
    options.page_cache_upper_levels(1);
    options.io_workers(1);
    options.panic_on_sync(
        match std::env::var("SHIELDD_TEST_NOMT_CRASH_POINT")?.as_str() {
            "wal" => nomt::PanicOnSyncMode::PostWal,
            "meta" => nomt::PanicOnSyncMode::PostMeta,
            _ => anyhow::bail!("unknown test crash point"),
        },
    );
    let database = Nomt::<Sha2Hasher>::open(options)?;
    let session = database.begin_session(SessionParams::default());
    let finished = session.finish(vec![(
        key,
        KeyReadWrite::ReadThenWrite(None, Some(SPENT_VALUE.to_vec())),
    )])?;
    let interrupted =
        std::panic::catch_unwind(std::panic::AssertUnwindSafe(|| finished.commit(&database)));
    assert!(
        interrupted.is_err(),
        "the intended durable crash point must be reached"
    );
    // Exit without dropping the database or running Rust cleanup: reopening has
    // to recover WAL/meta, not a cleanly shut down instance.
    std::process::exit(77);
}

#[test]
fn native_wal_and_meta_interruptions_recover_without_publishing_spends() -> Result<()> {
    let directory = tempfile::tempdir()?;
    for point in ["wal", "meta"] {
        let path = directory.path().join(point);
        let status = std::process::Command::new(std::env::current_exe()?)
            .args([
                "--exact",
                "permanent_nullifiers::store::tests::interrupted_native_commit_child",
                "--test-threads=1",
            ])
            .env("SHIELDD_TEST_NOMT_CRASH_PATH", &path)
            .env("SHIELDD_TEST_NOMT_CRASH_POINT", point)
            .output()?;
        assert_eq!(
            status.status.code(),
            Some(77),
            "crash point {point}: {}",
            String::from_utf8_lossy(&status.stderr)
        );
        let mut store = Store::open(&path, &config(), false)?;
        store.recover(&Boundary::default())?;
        assert!(!store.status(nf(77), &Boundary::default())?.spent);
        apply(&mut store, 0, &Boundary::default(), vec![nf(77)])?;
    }
    Ok(())
}

#[test]
fn immutable_export_survives_later_commits_and_offline_growth() -> Result<()> {
    let directory = tempfile::tempdir()?;
    let path = directory.path().join("store");
    let mut store = fresh(&path)?;
    let first = apply(&mut store, 0, &Boundary::default(), vec![nf(1)])?;
    let export = store.history(&first.next)?;
    let second = apply(&mut store, 1, &first.next, vec![nf(2)])?;
    let destination = directory.path().join("backup");
    export.export(&destination)?;
    let checkpoint: Boundary =
        serde_json::from_slice(&fs::read(destination.join("checkpoint.json"))?)?;
    assert_eq!(checkpoint, first.next);
    assert!(!destination.join("00000000000000000001.json").exists());
    let record: Transition =
        serde_json::from_slice(&fs::read(destination.join("00000000000000000000.json"))?)?;
    let mut restored = fresh(&directory.path().join("restored"))?;
    restored.replay([record], &checkpoint)?;
    assert!(restored.status(nf(1), &checkpoint)?.spent);
    assert!(!restored.status(nf(2), &checkpoint)?.spent);
    drop(restored);
    drop(store);
    let index = partition(&key(nf(1)));
    let mut options = nomt::Options::new();
    options.path(path.join(format!("partition-{index:02}")));
    options.hashtable_buckets(2_048);
    options.io_workers(1);
    options.preallocate_ht(false);
    nomt::grow_hashtable(&options)?;
    assert_eq!(nomt::validate_hashtable(&options)?.capacity, 2_048);
    let mut store = Store::open(&path, &config(), false)?;
    store.recover(&second.next)?;
    assert!(store.status(nf(1), &second.next)?.spent);
    assert!(store.status(nf(2), &second.next)?.spent);
    Ok(())
}

#[test]
fn missing_and_invalid_stores_do_not_create_empty_partitions() -> Result<()> {
    let directory = tempfile::tempdir()?;
    let path = directory.path().join("store");
    assert!(Store::open(&path, &config(), false).is_err());
    assert!(!path.exists());
    let mut invalid = config();
    invalid.cache_mib = 0;
    assert!(Store::open(&path, &invalid, true).is_err());
    invalid.cache_mib = 1;
    invalid.buckets = u32::MAX;
    assert!(Store::open(&path, &invalid, true).is_err());
    assert!(!path.exists());
    let store = fresh(&path)?;
    // A second owner cannot mutate or publish the same partitions.
    assert!(Store::open(&path, &config(), false).is_err());
    drop(store);
    fs::write(path.join("format"), b"stale format")?;
    assert!(Store::open(&path, &config(), false).is_err());
    Ok(())
}

#[test]
fn detached_codec_rejects_malformed_and_forged_status() -> Result<()> {
    use shieldd_sdk_proto::core::component::sct::v1 as pb;
    let directory = tempfile::tempdir()?;
    let mut store = fresh(&directory.path().join("store"))?;
    let committed = apply(&mut store, 0, &Boundary::default(), vec![nf(1)])?.next;
    let valid: pb::NullifierResponse = store.status(nf(2), &committed)?.try_into()?;
    for mutation in 0..5 {
        let mut wire = valid.clone();
        match mutation {
            0 => wire.spent = true,
            1 => wire
                .boundary
                .as_mut()
                .unwrap()
                .partition_roots
                .pop()
                .map(|_| ())
                .unwrap(),
            2 => wire.boundary.as_mut().unwrap().aggregate_root[0] ^= 1,
            3 => wire.proof.as_mut().unwrap().siblings = vec![vec![0; 32]; 257],
            _ => wire.proof.as_mut().unwrap().terminal = None,
        }
        assert!(Status::try_from(wire).is_err());
    }
    let status: Status = valid.try_into()?;
    let mut unrelated = committed.clone();
    unrelated.block_id[0] ^= 1;
    assert!(
        status.verify(&unrelated).is_err(),
        "proof cannot establish host authority"
    );
    Ok(())
}
