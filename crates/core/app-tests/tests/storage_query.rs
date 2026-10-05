use anyhow::Context;
use shieldd_sdk_app::{
    genesis::{AppState, Content},
    test_support::{TestHost, TEST_CHAIN_ID},
};
use shieldd_sdk_storage::{StateRead as _, TempStorage};

#[tokio::test]
async fn host_storage_query_proves_committed_value_at_exact_root() -> anyhow::Result<()> {
    let storage = TempStorage::new().await?;
    let mut host = TestHost::new(
        storage.storage().clone(),
        AppState::Content(Content::default().with_chain_id(TEST_CHAIN_ID.into())),
        tendermint::Time::parse_from_rfc3339("2026-01-01T00:00:00Z")?,
        shieldd_sdk_app_tests::registry(),
    )
    .await?;
    let committed = host.execute(vec![]).await?.commit;
    let snapshot = storage.latest_snapshot();
    assert_eq!(snapshot.version(), 1);
    let key = "application/data/chain_id";
    let value = snapshot
        .get_raw(key)
        .await?
        .context("chain ID must be stored")?;
    let manifest = storage.manifest().context("materialized manifest")?;
    let native_key = shieldd_sdk_storage::application_key(
        shieldd_sdk_storage::Space::Application,
        key.as_bytes(),
    );
    let (commitment, path) = storage
        .forest()
        .read()
        .authenticated_read(&manifest.participants[0], native_key)?;
    let proof = shieldd_sdk_storage::StateProof {
        manifest,
        participant: 0,
        key: native_key,
        value: commitment,
        path,
    };
    let detached = shieldd_sdk_storage::StateProof::decode(&proof.encode()?)?;
    let anchor: [u8; 32] = committed.root_hash.try_into().unwrap();
    detached.verify_application(
        anchor,
        shieldd_sdk_storage::Space::Application,
        key.as_bytes(),
        Some(&value),
    )?;
    let mut corrupt = value;
    corrupt.push(0);
    assert!(detached
        .verify_application(
            anchor,
            shieldd_sdk_storage::Space::Application,
            key.as_bytes(),
            Some(&corrupt)
        )
        .is_err());
    Ok(())
}
