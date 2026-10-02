use anyhow::{ensure, Context, Result};
use prost::Message;
use shieldd::ExecutionService;
use shieldd_sdk_app::genesis::{AppState, Content};
use shieldd_sdk_keys::test_keys;
use shieldd_sdk_proto::{
    core::{
        app::v1::AppParametersRequest,
        component::{compact_block::v1::CompactBlockPageRequest, sct::v1::NullifierRequest},
    },
    execution_client::v1::*,
    storage::v1::KeyValueRequest,
};
use shieldd_sdk_storage::{ForestConfig, Storage};
use std::path::Path;

fn deposit() -> DepositRequest {
    DepositRequest {
        queued: false,
        denom: shieldd_sdk_asset::BASE_ASSET_DENOM.to_string(),
        amount: "100".into(),
        recipient: test_keys::ADDRESS_0.to_string(),
        source: Some(HostSource {
            height: 1,
            tx_hash: vec![7; 32],
            tx_index: 0,
            msg_index: 0,
        }),
    }
}

async fn begin(service: &mut ExecutionService, height: i64) -> Result<()> {
    let mut request = BeginBlockRequest {
        height,
        block_id: vec![height as u8; 32],
        time: Some(Default::default()),
    };
    request.time.as_mut().context("time")?.seconds = 1_700_000_000 + height;
    service.reserve_call(2, &request.encode_to_vec())?;
    let response = service.begin_block(request).await?;
    service.finish_call(0, &response.encode_to_vec())?;
    Ok(())
}

async fn snapshot(service: &mut ExecutionService) -> Result<Vec<u8>> {
    let committed = service
        .get_committed_state(GetCommittedStateRequest {})
        .await?;
    ensure!(
        committed.root_hash.len() == 32,
        "matched native commitment is missing"
    );
    let queries = service.queries();
    let mut bytes = Vec::new();
    committed.encode_length_delimited(&mut bytes)?;
    queries
        .app_parameters(AppParametersRequest {})
        .await?
        .encode_length_delimited(&mut bytes)?;
    queries
        .nullifier_status(NullifierRequest {
            nullifier: Some(
                shieldd_sdk_sct::Nullifier(shieldd_sdk_crypto::Fq::from(999u64)).into(),
            ),
        })
        .await?
        .encode_length_delimited(&mut bytes)?;
    for key in [
        "application/data/chain_id",
        "application/data/absent-compatibility-key",
    ] {
        queries
            .key_value(KeyValueRequest {
                key: key.into(),
                proof: true,
            })
            .await?
            .encode_length_delimited(&mut bytes)?;
    }
    for height in 0..=1 {
        let mut cursor = Vec::new();
        loop {
            let page = queries
                .compact_block_page(CompactBlockPageRequest { height, cursor })
                .await?;
            page.encode_length_delimited(&mut bytes)?;
            cursor = page.page.context("missing compact page")?.next_cursor;
            if cursor.is_empty() {
                break;
            }
        }
    }
    Ok(bytes)
}

async fn seed(db: &Path) -> Result<ExecutionService> {
    let mut service = ExecutionService::open(db, registry()?).await?;
    service
        .init_genesis(InitGenesisRequest {
            genesis: Some(
                AppState::Content(Content::default().with_chain_id("state-persistence".into()))
                    .into(),
            ),
        })
        .await?;
    service
        .materialize(MaterializeRequest {
            height: 0,
            receipt_digest: vec![],
        })
        .await?;
    begin(&mut service, 1).await?;
    let request = deposit();
    service.reserve_call(3, &request.encode_to_vec())?;
    service.begin_native_call()?;
    let response = service.deposit(request).await?;
    service.finish_native_call(true)?;
    service.finish_call(0, &response.encode_to_vec())?;
    finish(&mut service, 1).await?;
    Ok(service)
}
async fn finish(service: &mut ExecutionService, height: i64) -> Result<()> {
    let request = EndBlockRequest { height };
    service.reserve_call(6, &request.encode_to_vec())?;
    let response = service.end_block(request).await?;
    service.finish_call(0, &response.encode_to_vec())?;
    let frozen = service.freeze(FreezeRequest {}).await?;
    service
        .materialize(MaterializeRequest {
            height: height as u64,
            receipt_digest: frozen.receipt_digest,
        })
        .await?;
    service.check_persistence()?;
    Ok(())
}
#[tokio::main]
async fn main() -> Result<()> {
    let args = std::env::args().collect::<Vec<_>>();
    ensure!(args.len() == 3, "usage: state_persistence WORKDIR OUTPUT");
    let work = Path::new(&args[1]);
    std::fs::create_dir_all(work)?;
    let mut control = None;
    let mut control_queries = None;
    for mode in ["uninterrupted", "reopen", "checkpoint"] {
        let mut db = work.join(mode);
        let mut service = seed(&db).await?;
        let before = snapshot(&mut service).await?;
        if let Some(expected) = &control_queries {
            ensure!(&before == expected, "initial query mismatch");
        } else {
            control_queries = Some(before.clone());
        }
        if mode != "uninterrupted" {
            let boundary = service
                .get_committed_state(GetCommittedStateRequest {})
                .await?;
            service.close().await?;
            if mode == "checkpoint" {
                let storage = Storage::open(&db, ForestConfig::from_env()?)?;
                let manifest = storage.manifest().context("matched manifest")?;
                let checkpoint = work.join("captured");
                storage.checkpoint(&checkpoint, &manifest)?;
                shieldd::validate_checkpoint_native(&checkpoint, &manifest).await?;
                let restored = work.join("restored");
                Storage::restore(
                    &checkpoint,
                    &restored,
                    ForestConfig::from_env()?,
                    manifest.digest()?,
                )?;
                drop(storage);
                db = restored;
            }
            service = ExecutionService::open(&db, registry()?).await?;
            service
                .recover_decided(RecoverDecidedRequest {
                    decided: Some(boundary),
                    receipt_digest: vec![0; 32],
                    receipt: vec![],
                })
                .await?;
            ensure!(
                snapshot(&mut service).await? == before,
                "reopen or matched checkpoint changed queries/proofs"
            );
        }
        begin(&mut service, 2).await?;
        finish(&mut service, 2).await?;
        let after = snapshot(&mut service).await?;
        service.close().await?;
        if let Some(expected) = &control {
            ensure!(
                &after == expected,
                "{mode} differs from uninterrupted execution"
            );
        } else {
            control = Some(after);
        }
    }
    std::fs::write(&args[2], control.context("control result")?)?;
    Ok(())
}

fn registry() -> Result<std::sync::Arc<shieldd_sdk_proof_params::pari::Registry>> {
    Ok(std::sync::Arc::new(
        shieldd_sdk_proof_params::pari::Registry::load(
            std::env::var("SHIELDD_PARI_KEYS").context("SHIELDD_PARI_KEYS is required")?,
        )?,
    ))
}
