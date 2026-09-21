use anyhow::Context;
use cnidarium::TempStorage;
use shieldd_sdk_app::{
    genesis::{AppState, Content},
    test_support::{TestHost, TEST_CHAIN_ID},
};
use shieldd_sdk_asset::{Value, BASE_ASSET_DENOM, BASE_ASSET_ID};
use shieldd_sdk_keys::{keys::AddressIndex, test_keys};
use shieldd_sdk_mock_client::MockClient;
use shieldd_sdk_num::Amount;
use shieldd_sdk_proto::DomainType;
use shieldd_sdk_shielded_pool::{
    genesis::Allocation, HostTransfer, HostWithdrawal, HostWithdrawalDestination,
};
use shieldd_sdk_transaction::ActionPlan;
use shieldd_sdk_view::{NoteManager, NoteManagerPlanningResult, Storage, StoragePlanningIo};
mod common;

#[tokio::test(flavor = "multi_thread", worker_threads = 2)]
async fn paid_withdrawal_splits_fee_note_then_resumes_and_executes() -> anyhow::Result<()> {
    let initial = Amount::from(1_000_000_000u64);
    let principal = Amount::from(1u64);
    let chain = TempStorage::new().await?;
    let mut genesis = Content {
        chain_id: TEST_CHAIN_ID.into(),
        shielded_pool_content: shieldd_sdk_shielded_pool::genesis::Content {
            allocations: vec![Allocation {
                raw_amount: initial,
                raw_denom: BASE_ASSET_DENOM.base_denom().denom,
                address: test_keys::ADDRESS_0.clone(),
            }],
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
        chain.as_ref().clone(),
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
    common::scan_latest(&chain, &wallet).await?;
    let mut client = MockClient::new(test_keys::SPEND_KEY.clone())
        .with_sync_to_storage(&chain)
        .await?;
    let withdrawal = HostWithdrawal {
        value: Value {
            amount: principal,
            asset_id: *BASE_ASSET_ID,
        },
        destination: HostWithdrawalDestination::Transfer(HostTransfer {
            recipient: "host-recipient".to_owned(),
        }),
    };
    let mut manager = NoteManager::new(rand_core::OsRng);
    manager.set_gas_prices(wallet.gas_prices().await?);
    let mut reader = StoragePlanningIo::new(wallet.clone()).await?;
    let result = manager
        .plan_host_withdrawal(&mut reader, AddressIndex::default(), withdrawal.clone())
        .await?;
    let NoteManagerPlanningResult::NeedsMaintenance {
        maintenance_plan,
        resume_token,
    } = result
    else {
        anyhow::bail!("single note must first isolate withdrawal fee");
    };
    let [ActionPlan::Transfer(split)] = maintenance_plan.actions.as_slice() else {
        anyhow::bail!("fee isolation must use a self-transfer");
    };
    assert_eq!(split.spends.len(), 1);
    assert_eq!(split.outputs.len(), 2);
    assert!(split
        .outputs
        .iter()
        .any(|output| output.value.amount == principal));
    assert!(maintenance_plan.fee_funding.is_none());
    let split_fee = maintenance_plan.transaction_parameters.fee.amount();
    assert!(split_fee > Amount::zero());
    let tx = client
        .witness_auth_build(&maintenance_plan, shieldd_sdk_app_tests::registry())
        .await
        .context("proving fee isolation transfer")?;
    let split_result = host.execute(vec![tx.encode_to_vec()]).await?;
    assert!(split_result.transactions[0].withdrawals.is_empty());
    client.sync_to_latest(chain.latest_snapshot()).await?;
    common::scan_latest(&chain, &wallet).await?;

    let mut reader = StoragePlanningIo::new(wallet.clone()).await?;
    let result = manager.resume(&mut reader, resume_token).await?;
    let NoteManagerPlanningResult::Ready { transaction_plan } = result else {
        anyhow::bail!("fee isolation must make withdrawal ready");
    };
    let [ActionPlan::ShieldedHostWithdrawal(action)] = transaction_plan.actions.as_slice() else {
        anyhow::bail!("resume must preserve withdrawal intent");
    };
    assert_eq!(action.withdrawal, withdrawal);
    assert_eq!(action.spends.len(), 1);
    assert_eq!(action.spends[0].note.amount(), principal);
    let funding = transaction_plan
        .fee_funding
        .as_ref()
        .context("separate fee funding")?;
    assert!(funding
        .transfer
        .spends
        .iter()
        .all(|spend| spend.note.commit() != action.spends[0].note.commit()));
    let withdrawal_fee = transaction_plan.transaction_parameters.fee.amount();
    assert!(withdrawal_fee > Amount::zero());
    let tx = client
        .witness_auth_build(&transaction_plan, shieldd_sdk_app_tests::registry())
        .await
        .context("proving withdrawal and separate fee funding")?;
    let result = host.execute(vec![tx.encode_to_vec()]).await?;
    let payouts = &result.transactions[0].withdrawals;
    assert_eq!(payouts.len(), 1);
    assert_eq!(payouts[0].amount, principal);
    assert_eq!(payouts[0].denom, BASE_ASSET_DENOM.base_denom().denom);
    assert_eq!(payouts[0].destination, withdrawal.destination);
    common::scan_latest(&chain, &wallet).await?;
    let remaining: Amount = wallet
        .notes(false, Some(*BASE_ASSET_ID), None, None)
        .await?
        .iter()
        .map(|record| record.note.amount())
        .sum();
    assert_eq!(remaining + principal + split_fee + withdrawal_fee, initial);
    Ok(())
}
