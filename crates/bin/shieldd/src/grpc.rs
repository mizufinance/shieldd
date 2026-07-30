use std::sync::Arc;

use shieldd_sdk_proto::execution_client::v1::{
    execution_client_service_server::ExecutionClientService, BeginBlockRequest, BeginBlockResponse,
    CheckTxRequest, CheckTxResponse, CommitRequest, CommitResponse, DeliverTxRequest,
    DeliverTxResponse, DepositRequest, DepositResponse, EndBlockRequest, EndBlockResponse,
    ExportGenesisRequest, ExportGenesisResponse, InitGenesisRequest, InitGenesisResponse,
    RollbackRequest, RollbackResponse,
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
}

fn status(error: ServiceError) -> Status {
    match error.kind() {
        ErrorKind::InvalidArgument => Status::invalid_argument(error.to_string()),
        ErrorKind::FailedPrecondition => Status::failed_precondition(error.to_string()),
        ErrorKind::Internal => Status::internal(error.to_string()),
    }
}
