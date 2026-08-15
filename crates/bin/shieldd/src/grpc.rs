use std::sync::Arc;

use shieldd_sdk_proto::core::component::sct::v1::{
    ArchivedNullifierProofRequest, ArchivedNullifierProofResponse,
};
use shieldd_sdk_proto::execution_client::v1::{
    execution_client_service_server::ExecutionClientService, BeginBlockRequest, BeginBlockResponse,
    CheckTxRequest, CheckTxResponse, CommitRequest, CommitResponse, DeliverTxRequest,
    DeliverTxResponse, DepositRequest, DepositResponse, EndBlockRequest, EndBlockResponse,
    ExportGenesisRequest, ExportGenesisResponse, GetCommittedStateRequest,
    GetCommittedStateResponse, InitGenesisRequest, InitGenesisResponse, RollbackRequest,
    RollbackResponse,
};
use tokio::sync::RwLock;
use tonic::{Request, Response, Status};

use crate::{ErrorKind, ExecutionService, ServiceError};

#[derive(Clone)]
pub struct GrpcExecutionClient {
    service: Arc<RwLock<ExecutionService>>,
}

impl GrpcExecutionClient {
    pub fn new(service: ExecutionService) -> Self {
        Self {
            service: Arc::new(RwLock::new(service)),
        }
    }

    pub async fn close(&self) -> std::result::Result<(), ServiceError> {
        self.service.write().await.close().await
    }
}

#[tonic::async_trait]
impl ExecutionClientService for GrpcExecutionClient {
    async fn init_genesis(
        &self,
        request: Request<InitGenesisRequest>,
    ) -> std::result::Result<Response<InitGenesisResponse>, Status> {
        self.service
            .write()
            .await
            .init_genesis(request.into_inner())
            .await
            .map(Response::new)
            .map_err(status)
    }

    async fn begin_block(
        &self,
        request: Request<BeginBlockRequest>,
    ) -> std::result::Result<Response<BeginBlockResponse>, Status> {
        self.service
            .write()
            .await
            .begin_block(request.into_inner())
            .await
            .map(Response::new)
            .map_err(status)
    }

    async fn deposit(
        &self,
        request: Request<DepositRequest>,
    ) -> std::result::Result<Response<DepositResponse>, Status> {
        self.service
            .write()
            .await
            .deposit(request.into_inner())
            .await
            .map(Response::new)
            .map_err(status)
    }

    async fn check_tx(
        &self,
        request: Request<CheckTxRequest>,
    ) -> std::result::Result<Response<CheckTxResponse>, Status> {
        self.service
            .read()
            .await
            .check_tx(request.into_inner())
            .await
            .map(Response::new)
            .map_err(status)
    }

    async fn deliver_tx(
        &self,
        request: Request<DeliverTxRequest>,
    ) -> std::result::Result<Response<DeliverTxResponse>, Status> {
        self.service
            .write()
            .await
            .deliver_tx(request.into_inner())
            .await
            .map(Response::new)
            .map_err(status)
    }

    async fn end_block(
        &self,
        request: Request<EndBlockRequest>,
    ) -> std::result::Result<Response<EndBlockResponse>, Status> {
        self.service
            .write()
            .await
            .end_block(request.into_inner())
            .await
            .map(Response::new)
            .map_err(status)
    }

    async fn commit(
        &self,
        request: Request<CommitRequest>,
    ) -> std::result::Result<Response<CommitResponse>, Status> {
        self.service
            .write()
            .await
            .commit(request.into_inner())
            .await
            .map(Response::new)
            .map_err(status)
    }

    async fn get_committed_state(
        &self,
        request: Request<GetCommittedStateRequest>,
    ) -> std::result::Result<Response<GetCommittedStateResponse>, Status> {
        self.service
            .read()
            .await
            .get_committed_state(request.into_inner())
            .await
            .map(Response::new)
            .map_err(status)
    }

    async fn rollback(
        &self,
        request: Request<RollbackRequest>,
    ) -> std::result::Result<Response<RollbackResponse>, Status> {
        self.service
            .write()
            .await
            .rollback(request.into_inner())
            .await
            .map(Response::new)
            .map_err(status)
    }

    async fn export_genesis(
        &self,
        request: Request<ExportGenesisRequest>,
    ) -> std::result::Result<Response<ExportGenesisResponse>, Status> {
        self.service
            .read()
            .await
            .export_genesis(request.into_inner())
            .await
            .map(Response::new)
            .map_err(status)
    }

    async fn archived_nullifier_proof(
        &self,
        request: Request<ArchivedNullifierProofRequest>,
    ) -> std::result::Result<Response<ArchivedNullifierProofResponse>, Status> {
        self.service
            .read()
            .await
            .archived_nullifier_proof(request.into_inner())
            .await
            .map(Response::new)
            .map_err(status)
    }
}

fn status(error: ServiceError) -> Status {
    match error.kind() {
        ErrorKind::InvalidArgument => Status::invalid_argument(error.to_string()),
        ErrorKind::FailedPrecondition => Status::failed_precondition(error.to_string()),
        ErrorKind::Internal => Status::internal(error.to_string()),
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use anyhow::Result;
    use cnidarium::TempStorage;
    use shieldd_sdk_app::{
        genesis::{AppState, Content},
        SUBSTORE_PREFIXES,
    };
    use std::ops::Deref as _;

    async fn initialized_client() -> Result<(TempStorage, GrpcExecutionClient)> {
        let storage = TempStorage::new_with_prefixes(SUBSTORE_PREFIXES.to_vec()).await?;
        let client = GrpcExecutionClient::new(ExecutionService::new(storage.deref().clone()));
        ExecutionClientService::init_genesis(
            &client,
            Request::new(InitGenesisRequest {
                genesis: Some(
                    AppState::Content(
                        Content::default().with_chain_id("shieldd-grpc-test".to_owned()),
                    )
                    .into(),
                ),
            }),
        )
        .await?;
        ExecutionClientService::commit(&client, Request::new(CommitRequest {})).await?;
        Ok((storage, client))
    }

    #[tokio::test]
    async fn grpc_execution_check_tx_rejects_invalid_transaction() -> Result<()> {
        let (_storage, client) = initialized_client().await?;

        let response = ExecutionClientService::check_tx(
            &client,
            Request::new(CheckTxRequest {
                tx: b"not a shieldd transaction".to_vec(),
            }),
        )
        .await?
        .into_inner();

        assert_eq!(response.code, 1);
        assert!(response.log.contains("decoding transaction"));
        Ok(())
    }

    #[tokio::test]
    async fn grpc_execution_deliver_tx_rejects_invalid_transaction() -> Result<()> {
        let (_storage, client) = initialized_client().await?;
        let mut begin_block = BeginBlockRequest {
            height: 1,
            time: Some(Default::default()),
        };
        begin_block
            .time
            .as_mut()
            .expect("test begin-block time")
            .seconds = 1_700_000_000;
        ExecutionClientService::begin_block(&client, Request::new(begin_block)).await?;

        let response = ExecutionClientService::deliver_tx(
            &client,
            Request::new(DeliverTxRequest {
                tx: b"not a shieldd transaction".to_vec(),
            }),
        )
        .await?
        .into_inner();

        assert_eq!(response.code, 1);
        assert!(response.log.contains("decoding transaction"));
        Ok(())
    }
}
