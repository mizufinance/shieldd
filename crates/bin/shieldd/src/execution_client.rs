use std::sync::Arc;

use anyhow::{ensure, Context as _, Result};
use cnidarium::Storage;
use prost::Message;
use shieldd_sdk_app::{
    app::App, block_tx_indexing::BlockTxIndexingMode, genesis::AppState,
    stateless_cache::StatelessCache,
};
use shieldd_sdk_proto::{
    core::app::v1 as proto_app,
    execution_client::v1::{
        execution_client_server::ExecutionClient as ExecutionClientService, CommitRequest,
        CommitResponse as ProtoCommitResponse, DepositRequest, DepositResponse,
        ExportGenesisRequest, ExportGenesisResponse, InitGenesisRequest, InitGenesisResponse,
        RollbackRequest, RollbackResponse,
    },
    tendermint::abci as proto_abci,
};
use tendermint::abci::{self, request};
use tendermint_proto::v0_37 as tendermint_proto_v037;
use tokio::sync::Mutex;
use tonic::{Request, Response, Status};

#[derive(Clone, Copy, Debug, Eq, PartialEq)]
enum ExecutionPhase {
    Idle,
    InitializedGenesis,
    InitializedCheckpointGenesis,
    InBlock,
    EndedBlock,
}

/// In-process execution boundary for a host chain embedding Shieldd.
pub struct ExecutionClient {
    storage: Storage,
    app: App,
    stateless_cache: Arc<StatelessCache>,
    phase: ExecutionPhase,
}

#[derive(Clone, Debug, Default)]
pub struct ExecutionResponse {
    pub events: Vec<abci::Event>,
}

#[derive(Clone, Debug)]
pub struct DepositExecutionResponse {
    pub deposit_id: Vec<u8>,
}

#[derive(Clone, Debug)]
pub struct CommitExecutionResponse {
    pub root_hash: Vec<u8>,
}

impl ExecutionClient {
    pub fn new(storage: Storage) -> Self {
        Self::with_cache(storage, Arc::new(StatelessCache::new()))
    }

    pub fn with_cache(storage: Storage, stateless_cache: Arc<StatelessCache>) -> Self {
        let mut app = App::new(storage.latest_snapshot());
        app.set_block_tx_indexing_mode(BlockTxIndexingMode::DeferredBatch);

        Self {
            storage,
            app,
            stateless_cache,
            phase: ExecutionPhase::Idle,
        }
    }

    pub async fn init_genesis(&mut self, genesis: AppState) -> Result<()> {
        ensure!(
            self.phase == ExecutionPhase::Idle,
            "init_genesis called while execution phase is {:?}",
            self.phase
        );

        match &genesis {
            AppState::Content(_) => {
                ensure!(
                    self.storage.latest_version() == u64::MAX,
                    "database already initialized"
                );
                self.app.init_chain(&genesis).await;
                self.phase = ExecutionPhase::InitializedGenesis;
            }
            AppState::Checkpoint(expected_root_hash) => {
                ensure!(
                    self.storage.latest_version() != u64::MAX,
                    "checkpoint genesis requires initialized storage"
                );
                let expected_root_hash: [u8; 32] = expected_root_hash
                    .as_slice()
                    .try_into()
                    .context("checkpoint genesis root hash must be 32 bytes")?;
                let actual_root_hash = self.storage.latest_snapshot().root_hash().await?;
                ensure!(
                    actual_root_hash.0 == expected_root_hash,
                    "checkpoint genesis root hash does not match storage root"
                );
                self.app.init_chain(&genesis).await;
                self.phase = ExecutionPhase::InitializedCheckpointGenesis;
            }
        }

        Ok(())
    }

    pub async fn export_genesis(&self) -> Result<AppState> {
        ensure!(
            self.phase == ExecutionPhase::Idle,
            "export_genesis called while execution phase is {:?}",
            self.phase
        );
        ensure!(
            self.storage.latest_version() != u64::MAX,
            "cannot export genesis from uninitialized storage"
        );

        let root_hash = self.storage.latest_snapshot().root_hash().await?;
        Ok(AppState::Checkpoint(root_hash.0.to_vec()))
    }

    pub async fn begin_block(
        &mut self,
        begin_block: &request::BeginBlock,
    ) -> Result<ExecutionResponse> {
        ensure!(
            matches!(
                self.phase,
                ExecutionPhase::Idle | ExecutionPhase::InitializedCheckpointGenesis
            ),
            "begin_block called while execution phase is {:?}",
            self.phase
        );

        let events = self.app.begin_block(begin_block).await;
        self.phase = ExecutionPhase::InBlock;
        Ok(ExecutionResponse { events })
    }

    pub async fn deposit(&mut self, deposit: DepositRequest) -> Result<DepositExecutionResponse> {
        ensure!(
            self.phase == ExecutionPhase::InBlock,
            "deposit called while execution phase is {:?}",
            self.phase
        );

        let result = self.app.deposit(deposit).await?;
        Ok(DepositExecutionResponse {
            deposit_id: result.response.deposit_id,
        })
    }

    pub async fn deliver_tx(&mut self, tx_bytes: &[u8]) -> Result<ExecutionResponse> {
        ensure!(
            self.phase == ExecutionPhase::InBlock,
            "deliver_tx called while execution phase is {:?}",
            self.phase
        );

        let events = self
            .app
            .deliver_tx_bytes(tx_bytes, Some(self.stateless_cache.as_ref()))
            .await?;
        Ok(ExecutionResponse { events })
    }

    pub async fn end_block(&mut self, end_block: &request::EndBlock) -> Result<ExecutionResponse> {
        ensure!(
            self.phase == ExecutionPhase::InBlock,
            "end_block called while execution phase is {:?}",
            self.phase
        );

        let events = self.app.end_block(end_block).await;
        self.phase = ExecutionPhase::EndedBlock;
        Ok(ExecutionResponse { events })
    }

    pub async fn commit(&mut self) -> Result<CommitExecutionResponse> {
        ensure!(
            matches!(
                self.phase,
                ExecutionPhase::InitializedGenesis | ExecutionPhase::EndedBlock
            ),
            "commit called while execution phase is {:?}",
            self.phase
        );

        let root_hash = self.app.commit(self.storage.clone()).await;
        self.phase = ExecutionPhase::Idle;
        Ok(CommitExecutionResponse {
            root_hash: root_hash.0.to_vec(),
        })
    }

    pub fn rollback(&mut self) {
        let mut app = App::new(self.storage.latest_snapshot());
        app.set_block_tx_indexing_mode(BlockTxIndexingMode::DeferredBatch);
        self.app = app;
        self.phase = ExecutionPhase::Idle;
    }
}

pub struct GrpcExecutionClient {
    inner: Mutex<ExecutionClient>,
}

impl GrpcExecutionClient {
    pub fn new(storage: Storage) -> Self {
        Self {
            inner: Mutex::new(ExecutionClient::new(storage)),
        }
    }
}

#[tonic::async_trait]
impl ExecutionClientService for GrpcExecutionClient {
    async fn init_genesis(
        &self,
        request: Request<InitGenesisRequest>,
    ) -> std::result::Result<Response<InitGenesisResponse>, Status> {
        let genesis = request
            .into_inner()
            .genesis
            .context("missing genesis")
            .and_then(TryInto::try_into)
            .map_err(invalid_argument)?;

        let mut inner = self.inner.lock().await;
        inner
            .init_genesis(genesis)
            .await
            .map_err(failed_precondition)?;
        Ok(Response::new(InitGenesisResponse {}))
    }

    async fn begin_block(
        &self,
        request: Request<proto_abci::RequestBeginBlock>,
    ) -> std::result::Result<Response<proto_abci::ResponseBeginBlock>, Status> {
        let begin_block = decode_tendermint_request(request.into_inner())
            .and_then(|raw: tendermint_proto_v037::abci::RequestBeginBlock| {
                raw.try_into().context("invalid begin block request")
            })
            .map_err(invalid_argument)?;

        let mut inner = self.inner.lock().await;
        let response = inner
            .begin_block(&begin_block)
            .await
            .map_err(failed_precondition)?;

        Ok(Response::new(proto_abci::ResponseBeginBlock {
            events: encode_events(response.events).map_err(internal)?,
        }))
    }

    async fn deposit(
        &self,
        request: Request<DepositRequest>,
    ) -> std::result::Result<Response<DepositResponse>, Status> {
        let mut inner = self.inner.lock().await;
        let response = inner
            .deposit(request.into_inner())
            .await
            .map_err(invalid_argument)?;
        Ok(Response::new(DepositResponse {
            deposit_id: response.deposit_id,
        }))
    }

    async fn deliver_tx(
        &self,
        request: Request<proto_abci::RequestDeliverTx>,
    ) -> std::result::Result<Response<proto_abci::ResponseDeliverTx>, Status> {
        let mut inner = self.inner.lock().await;
        let response = match inner.deliver_tx(&request.into_inner().tx).await {
            Ok(response) => proto_abci::ResponseDeliverTx {
                events: encode_events(response.events).map_err(internal)?,
                ..Default::default()
            },
            Err(error) => proto_abci::ResponseDeliverTx {
                code: 1,
                log: format!("{error:#}"),
                codespace: "shieldd".to_owned(),
                ..Default::default()
            },
        };

        Ok(Response::new(response))
    }

    async fn end_block(
        &self,
        request: Request<proto_abci::RequestEndBlock>,
    ) -> std::result::Result<Response<proto_abci::ResponseEndBlock>, Status> {
        let end_block = decode_tendermint_request(request.into_inner())
            .and_then(|raw: tendermint_proto_v037::abci::RequestEndBlock| {
                raw.try_into().context("invalid end block request")
            })
            .map_err(invalid_argument)?;

        let mut inner = self.inner.lock().await;
        let response = inner
            .end_block(&end_block)
            .await
            .map_err(failed_precondition)?;

        Ok(Response::new(proto_abci::ResponseEndBlock {
            events: encode_events(response.events).map_err(internal)?,
            ..Default::default()
        }))
    }

    async fn commit(
        &self,
        _request: Request<CommitRequest>,
    ) -> std::result::Result<Response<ProtoCommitResponse>, Status> {
        let mut inner = self.inner.lock().await;
        let response = inner.commit().await.map_err(failed_precondition)?;
        Ok(Response::new(ProtoCommitResponse {
            root_hash: response.root_hash,
        }))
    }

    async fn rollback(
        &self,
        _request: Request<RollbackRequest>,
    ) -> std::result::Result<Response<RollbackResponse>, Status> {
        let mut inner = self.inner.lock().await;
        inner.rollback();
        Ok(Response::new(RollbackResponse {}))
    }

    async fn export_genesis(
        &self,
        _request: Request<ExportGenesisRequest>,
    ) -> std::result::Result<Response<ExportGenesisResponse>, Status> {
        let inner = self.inner.lock().await;
        let genesis: proto_app::GenesisAppState = inner
            .export_genesis()
            .await
            .map_err(failed_precondition)?
            .into();
        Ok(Response::new(ExportGenesisResponse {
            genesis: Some(genesis),
        }))
    }
}

fn decode_tendermint_request<S, D>(source: S) -> Result<D>
where
    S: Message,
    D: Message + Default,
{
    let mut encoded = Vec::new();
    source.encode(&mut encoded)?;
    D::decode(encoded.as_slice()).context("decoding tendermint request")
}

fn encode_events(events: Vec<abci::Event>) -> Result<Vec<proto_abci::Event>> {
    events
        .into_iter()
        .map(|event| {
            let raw: tendermint_proto_v037::abci::Event = event.into();
            decode_tendermint_request(raw)
        })
        .collect()
}

fn invalid_argument(error: anyhow::Error) -> Status {
    Status::invalid_argument(format!("{error:#}"))
}

fn failed_precondition(error: anyhow::Error) -> Status {
    Status::failed_precondition(format!("{error:#}"))
}

fn internal(error: anyhow::Error) -> Status {
    Status::internal(format!("{error:#}"))
}

#[cfg(test)]
mod tests {
    use super::*;
    use cnidarium::TempStorage;
    use shieldd_sdk_app::SUBSTORE_PREFIXES;
    use std::ops::Deref as _;

    async fn temp_storage() -> TempStorage {
        TempStorage::new_with_prefixes(SUBSTORE_PREFIXES.to_vec())
            .await
            .expect("temp storage")
    }

    #[tokio::test]
    async fn init_genesis_commits_content_genesis() {
        let storage = temp_storage().await;
        let mut client = ExecutionClient::new(storage.deref().clone());

        assert!(client.commit().await.is_err());
        client.init_genesis(AppState::default()).await.unwrap();
        assert!(client.deposit(DepositRequest::default()).await.is_err());

        let response = client.commit().await.unwrap();
        assert_eq!(response.root_hash.len(), 32);
        assert!(App::is_ready(storage.latest_snapshot()).await);
    }

    #[tokio::test]
    async fn export_genesis_returns_committed_checkpoint() {
        let storage = temp_storage().await;
        let mut client = ExecutionClient::new(storage.deref().clone());

        client.init_genesis(AppState::default()).await.unwrap();
        let commit = client.commit().await.unwrap();

        let exported = client.export_genesis().await.unwrap();
        assert!(matches!(
            exported,
            AppState::Checkpoint(root_hash) if root_hash == commit.root_hash
        ));
    }
}
