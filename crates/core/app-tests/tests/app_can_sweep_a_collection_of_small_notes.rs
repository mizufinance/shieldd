use anyhow::Context;
use cnidarium::TempStorage;
use shieldd_sdk_app::{
    genesis::{AppState, Content},
    test_support::{TestHost, TEST_CHAIN_ID},
};
use shieldd_sdk_asset::{BASE_ASSET_DENOM, BASE_ASSET_ID};
use shieldd_sdk_keys::test_keys;
use shieldd_sdk_mock_client::MockClient;
use shieldd_sdk_proto::DomainType;
use shieldd_sdk_shielded_pool::genesis::Allocation;
use shieldd_sdk_view::{Storage, StoragePlanningIo};
use std::ops::Deref;
mod common;
const COUNT: usize = 5;
const NOTE_VALUE: u64 = 1_000_000;

#[tokio::test(flavor = "multi_thread", worker_threads = 2)]
async fn app_can_sweep_a_collection_of_small_notes() -> anyhow::Result<()> {
    let storage = TempStorage::new().await?;
    let allocations = {
        let dust = Allocation {
            raw_amount: NOTE_VALUE.into(),
            raw_denom: BASE_ASSET_DENOM.deref().base_denom().denom,
            address: test_keys::ADDRESS_0.to_owned(),
        };
        std::iter::repeat(dust).take(COUNT).collect()
    };

    let mut genesis = Content {
        chain_id: TEST_CHAIN_ID.into(),
        shielded_pool_content: shieldd_sdk_shielded_pool::genesis::Content {
            allocations,
            ..Default::default()
        },
        ..Default::default()
    };
    genesis
        .fee_content
        .fee_params
        .fixed_gas_prices
        .execution_price = 1_000;
    let mut host = TestHost::new(
        storage.as_ref().clone(),
        AppState::Content(genesis),
        tendermint::Time::parse_from_rfc3339("2026-01-01T00:00:00Z")?,
        shieldd_sdk_app_tests::registry(),
    )
    .await?;
    host.execute(vec![]).await?;
    let wallet = Storage::initialize(
        None::<&camino::Utf8Path>,
        (*test_keys::FULL_VIEWING_KEY).clone(),
        shieldd_sdk_app::params::AppParameters {
            chain_id: TEST_CHAIN_ID.into(),
            ..Default::default()
        },
    )
    .await?;
    common::scan_latest(&storage, &wallet).await?;
    let mut client = MockClient::new(test_keys::SPEND_KEY.clone())
        .with_sync_to_storage(&storage)
        .await?;
    assert_eq!(client.notes_by_asset(*BASE_ASSET_ID).count(), COUNT);
    let mut paid_fees = shieldd_sdk_num::Amount::zero();
    for _ in 0..COUNT {
        let mut reader = StoragePlanningIo::new(wallet.clone()).await?;
        let Some(plan) =
            shieldd_sdk_view::sweep(&mut reader, rand_core::OsRng, wallet.gas_prices().await?)
                .await
                .context("constructing sweep plan")?
        else {
            break;
        };
        assert!(plan.fee_funding.is_none(), "base sweep funds its own fee");
        let fee = plan.transaction_parameters.fee.amount();
        assert!(fee > shieldd_sdk_num::Amount::zero());
        paid_fees += fee;
        let tx = client
            .witness_auth_build(&plan, shieldd_sdk_app_tests::registry())
            .await?;
        host.execute(vec![tx.encode_to_vec()]).await?;
        client.sync_to_latest(storage.latest_snapshot()).await?;
        common::scan_latest(&storage, &wallet).await?;
    }
    let notes = wallet
        .notes(false, Some(*BASE_ASSET_ID), None, None)
        .await?;
    assert!(notes.len() < COUNT, "sweep should reduce note count");
    assert!(notes.len() > 0, "sweep must retain the balance");
    let total: shieldd_sdk_num::Amount = notes.iter().map(|n| n.note.amount()).sum();
    assert_eq!(total + paid_fees, ((COUNT as u64) * NOTE_VALUE).into());
    Ok(())
}
