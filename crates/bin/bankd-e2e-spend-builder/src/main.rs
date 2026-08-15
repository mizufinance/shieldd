#![deny(clippy::unwrap_used)]

use std::{env, ops::Deref, path::PathBuf};

use anyhow::{anyhow, bail, Context, Result};
use base64::{engine::general_purpose::STANDARD, Engine as _};
use cnidarium::Storage;
use decaf377::Fr;
use rand_core::OsRng;
use shieldd_sdk_app::SUBSTORE_PREFIXES;
use shieldd_sdk_asset::Value;
use shieldd_sdk_keys::test_keys;
use shieldd_sdk_mock_client::MockClient;
use shieldd_sdk_num::Amount;
use shieldd_sdk_proto::DomainType;
use shieldd_sdk_shielded_pool::{ShieldedInputPlan, ShieldedOutputPlan, TransferPlan};
use shieldd_sdk_transaction::{
    memo::MemoPlaintext, plan::MemoPlan, TransactionParameters, TransactionPlan,
};

struct Opt {
    db: PathBuf,
    chain_id: String,
    send_amount: Amount,
}

#[tokio::main]
async fn main() -> Result<()> {
    let opt = parse_args()?;
    let tx_bytes = build_spend_tx(opt).await?;

    println!("{}", STANDARD.encode(tx_bytes));
    Ok(())
}

fn parse_args() -> Result<Opt> {
    let mut args = env::args().skip(1);
    let db = PathBuf::from(
        args.next()
            .context("usage: bankd-e2e-spend-builder <db> <chain-id> [send-amount]")?,
    );
    let chain_id = args
        .next()
        .context("usage: bankd-e2e-spend-builder <db> <chain-id> [send-amount]")?;
    let send_amount = match args.next() {
        Some(raw) => Amount::from(
            raw.parse::<u64>()
                .with_context(|| format!("invalid send amount {raw}"))?,
        ),
        None => Amount::from(1u64),
    };

    if args.next().is_some() {
        bail!("usage: bankd-e2e-spend-builder <db> <chain-id> [send-amount]");
    }

    Ok(Opt {
        db,
        chain_id,
        send_amount,
    })
}

async fn build_spend_tx(opt: Opt) -> Result<Vec<u8>> {
    let storage = Storage::load(opt.db.clone(), SUBSTORE_PREFIXES.to_vec())
        .await
        .with_context(|| format!("failed to open Shieldd RocksDB at {}", opt.db.display()))?;

    let mut client = MockClient::new(test_keys::SPEND_KEY.clone());
    client
        .sync_to_latest(storage.latest_snapshot())
        .await
        .context("failed to sync Shieldd test wallet to storage")?;

    let input_note = client
        .notes
        .values()
        .filter(|note| note.address() == test_keys::ADDRESS_0.deref().clone())
        .filter(|note| !client.spent_note(&note.commit()))
        .filter(|note| note.amount() >= opt.send_amount)
        .cloned()
        .next()
        .ok_or_else(|| {
            anyhow!(
                "no spendable note for Shieldd test address {} covering {}",
                test_keys::ADDRESS_0_STR,
                opt.send_amount
            )
        })?;

    let position = client
        .position(input_note.commit())
        .ok_or_else(|| anyhow!("input note commitment was unknown to mock client"))?;
    let mut spend = ShieldedInputPlan::new(&mut OsRng, input_note.clone(), position);
    let change_amount = input_note
        .amount()
        .checked_sub(&opt.send_amount)
        .context("input note amount must cover send amount")?;

    let mut output = ShieldedOutputPlan::new(
        &mut OsRng,
        Value {
            amount: opt.send_amount,
            asset_id: input_note.asset_id(),
        },
        test_keys::ADDRESS_1.deref().clone(),
    );
    let mut change = ShieldedOutputPlan::new(
        &mut OsRng,
        Value {
            amount: change_amount,
            asset_id: input_note.asset_id(),
        },
        input_note.address(),
    );

    align_transfer_planning_metadata(&mut spend, [&mut output, &mut change]);

    let transfer = TransferPlan::new(vec![spend], vec![output, change], Fr::from(1u64))?;
    let mut plan = TransactionPlan {
        actions: vec![transfer.into()],
        memo: Some(MemoPlan::new(
            &mut OsRng,
            MemoPlaintext::blank_memo(test_keys::ADDRESS_0.deref().clone()),
        )),
        fee_funding: None,
        transaction_parameters: TransactionParameters {
            chain_id: opt.chain_id,
            ..Default::default()
        },
        nullifier_window: None,
    };

    let tx = client
        .witness_auth_build_with_compliance(&mut plan, storage.latest_snapshot())
        .await
        .context("failed to build Shieldd spend transaction")?;

    Ok(tx.encode_to_vec())
}

fn align_transfer_planning_metadata(
    spend: &mut ShieldedInputPlan,
    outputs: [&mut ShieldedOutputPlan; 2],
) {
    for output in outputs {
        output.asset_anchor = spend.asset_anchor;
        output.compliance_anchor = spend.compliance_anchor;
        output.target_timestamp = spend.target_timestamp;
        output.is_regulated = spend.is_regulated;
        output.tx_blinding_nonce = spend.tx_blinding_nonce;
        output.asset_indexed_leaf = spend.asset_indexed_leaf.clone();
        output.asset_path = spend.asset_path.clone();
        output.asset_position = spend.asset_position;
        output.asset_policy = spend.asset_policy.clone();
    }
}
