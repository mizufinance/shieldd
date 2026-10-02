#![cfg(feature = "persistent")]

use anyhow::Result;
use shieldd_sdk_storage::*;
use std::collections::BTreeMap;

fn proof(
    storage: &Storage,
    manifest: &Manifest,
    participant: u32,
    key: [u8; 32],
) -> Result<StateProof> {
    let (value, path) = storage
        .forest()
        .read()
        .authenticated_read(&manifest.participants[participant as usize], key)?;
    Ok(StateProof {
        manifest: manifest.clone(),
        participant,
        key,
        value,
        path,
    })
}

/// Deterministic detached proofs also consumed by the browser/WASM owning suite.
/// Set SHIELDD_PROOF_VECTORS only when regenerating its checked-in fixture.
#[test]
fn detached_native_and_archive_proofs_share_consumer_vectors() -> Result<()> {
    let directory = tempfile::tempdir()?;
    let storage = Storage::open(
        &directory.path().join("state"),
        ForestConfig {
            buckets: 1024,
            cache_mib: 1,
            preallocate: false,
            materialization_workers: 2,
        },
    )?;
    let key = b"consumer/key";
    let value = b"authenticated bytes";
    let mut nullifier = [0; 32];
    nullifier[0] = 9;
    let nf_key = nullifier_key(&nullifier);
    let shard = nullifier_shard(&nf_key);
    for height in 0..4 {
        let mut state = StateDelta::new(storage.latest_snapshot());
        state.put_raw(String::from_utf8(key.to_vec())?, value.to_vec());
        for i in 0..4u8 {
            state.nonverifiable_put_raw(
                [
                    format!("compactblock/payload/{height:020}/").as_bytes(),
                    &[i],
                ]
                .concat(),
                vec![i; 3],
            );
        }
        let changes = if height == 1 {
            BTreeMap::from([(
                ParticipantId::permanent(shard)?,
                vec![ParticipantChange {
                    key: nf_key,
                    value: Some(SPENT.to_vec()),
                }],
            )])
        } else {
            BTreeMap::new()
        };
        let prepared = storage.prepare(
            state,
            BlockBoundary {
                chain_id: "consumer-vectors".into(),
                protocol: [1; 32],
                height,
                block_id: [height as u8; 32],
                time: height as i64,
            },
            changes,
        )?;
        storage.materialize(prepared)?;
    }
    let manifest = storage.manifest().unwrap();
    let anchor = manifest.digest()?;
    let present = proof(
        &storage,
        &manifest,
        0,
        application_key(Space::Application, key),
    )?;
    let absent_key = b"consumer/missing";
    let absent = proof(
        &storage,
        &manifest,
        0,
        application_key(Space::Application, absent_key),
    )?;
    present.verify_application(anchor, Space::Application, key, Some(value))?;
    absent.verify_application(anchor, Space::Application, absent_key, None)?;
    let spent = proof(&storage, &manifest, 1 + u32::from(shard), nf_key)?;
    spent.verify(anchor, 1 + u32::from(shard), nf_key)?;
    assert_eq!(spent.value.as_deref(), Some(SPENT));
    let prefix = b"compactblock/payload/00000000000000000001/".to_vec();
    let query = ArchiveQuery {
        height: 1,
        start: [prefix.as_slice(), &[1]].concat(),
        prefix,
        end: None,
        limit: 2,
    };
    let mmr = proof(
        &storage,
        &manifest,
        0,
        application_key(Space::Application, b"storage/archive/mmr.v1"),
    )?;
    let range = storage
        .latest_snapshot()
        .archive_range_proof(mmr, &query, 16 * 1024 * 1024)?;
    let page = range.verify(anchor, &query)?;
    assert_eq!(
        page.records
            .iter()
            .map(|r| r.value.clone())
            .collect::<Vec<_>>(),
        vec![vec![1; 3], vec![2; 3]]
    );
    assert_eq!(page.next, Some([query.prefix.as_slice(), &[3]].concat()));
    if let Ok(path) = std::env::var("SHIELDD_PROOF_VECTORS") {
        let vectors = serde_json::json!({ "anchor":anchor.to_vec(), "key":key, "value":value,
            "present":present.encode()?, "absentKey":absent_key, "absent":absent.encode()?,
            "nullifier":nullifier.to_vec(), "spent":spent.encode()?, "archive":range.encode_canonical()?,
            "query":{ "height":query.height, "prefix":query.prefix, "start":query.start, "limit":query.limit },
            "page":page });
        std::fs::write(path, serde_json::to_vec(&vectors)?)?;
    }
    Ok(())
}
