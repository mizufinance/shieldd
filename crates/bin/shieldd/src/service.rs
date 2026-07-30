use std::{
    fmt,
    path::{Path, PathBuf},
};

use anyhow::{Context as _, Result};
use cnidarium::Storage;
use shieldd_sdk_app::{
    app::{App, HostBlock, HostExecution, HostTxResponse, HostWithdrawal},
    genesis::AppState,
    SUBSTORE_PREFIXES,
};
use shieldd_sdk_proto::{
    core::app::v1 as proto_app,
    cosmos::base::v1beta1::Coin,
    execution_client::v1::{
        BeginBlockRequest, BeginBlockResponse, CheckTxRequest, CheckTxResponse, CommitRequest,
        CommitResponse, DeliverTxRequest, DeliverTxResponse, DepositRequest, DepositResponse,
        EndBlockRequest, EndBlockResponse, Event as ProtoEvent,
        EventAttribute as ProtoEventAttribute, ExportGenesisRequest, ExportGenesisResponse,
        InitGenesisRequest, InitGenesisResponse, RollbackRequest, RollbackResponse,
        Withdrawal as ProtoWithdrawal,
    },
};
use tendermint::{abci, Time};
#[derive(Clone, Copy, Debug, Eq, PartialEq)]
pub enum ErrorKind {
    InvalidArgument,
    FailedPrecondition,
    Internal,
}

#[derive(Debug)]
pub struct ServiceError {
    kind: ErrorKind,
    source: anyhow::Error,
}

impl ServiceError {
    pub fn kind(&self) -> ErrorKind {
        self.kind
    }

    fn invalid_argument(source: anyhow::Error) -> Self {
        Self {
            kind: ErrorKind::InvalidArgument,
            source,
        }
    }

    fn failed_precondition(source: anyhow::Error) -> Self {
        Self {
            kind: ErrorKind::FailedPrecondition,
            source,
        }
    }

    fn internal(source: anyhow::Error) -> Self {
        Self {
            kind: ErrorKind::Internal,
            source,
        }
    }

    fn closed() -> Self {
        Self::failed_precondition(anyhow::anyhow!("Shieldd execution service is closed"))
    }
}

impl fmt::Display for ServiceError {
    fn fmt(&self, formatter: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(formatter, "{:#}", self.source)
    }
}

impl std::error::Error for ServiceError {
    fn source(&self) -> Option<&(dyn std::error::Error + 'static)> {
        Some(self.source.as_ref())
    }
}

pub struct ExecutionService {
    execution: Option<HostExecution>,
}

impl ExecutionService {
    pub async fn open(db: impl AsRef<Path>) -> std::result::Result<Self, ServiceError> {
        let db = PathBuf::from(db.as_ref());
        let storage = Storage::load(db.clone(), SUBSTORE_PREFIXES.to_vec())
            .await
            .with_context(|| format!("failed to open Shieldd RocksDB at {}", db.display()))
            .map_err(ServiceError::internal)?;

        if storage.latest_version() == u64::MAX {
            tracing::info!("Shieldd app state is not initialized; waiting for InitGenesis");
        } else if App::is_ready(storage.latest_snapshot()).await {
            tracing::info!("Shieldd app state is ready");
        } else {
            storage.release().await;
            return Err(ServiceError::failed_precondition(anyhow::anyhow!(
                "Shieldd app state is not ready"
            )));
        }

        Ok(Self::new(storage))
    }

    pub fn new(storage: Storage) -> Self {
        Self {
            execution: Some(HostExecution::new(storage)),
        }
    }

    pub async fn init_genesis(
        &mut self,
        request: InitGenesisRequest,
    ) -> std::result::Result<InitGenesisResponse, ServiceError> {
        let genesis = request
            .genesis
            .context("missing genesis")
            .and_then(AppState::try_from)
            .map_err(ServiceError::invalid_argument)?;

        let execution = self.execution.as_mut().ok_or_else(ServiceError::closed)?;
        execution
            .init_genesis(genesis)
            .await
            .map_err(ServiceError::failed_precondition)?;
        Ok(InitGenesisResponse {})
    }

    pub async fn begin_block(
        &mut self,
        request: BeginBlockRequest,
    ) -> std::result::Result<BeginBlockResponse, ServiceError> {
        let block = decode_host_block(request).map_err(ServiceError::invalid_argument)?;

        let execution = self.execution.as_mut().ok_or_else(ServiceError::closed)?;
        let response = execution
            .begin_block(block)
            .await
            .map_err(ServiceError::failed_precondition)?;

        Ok(BeginBlockResponse {
            events: encode_events(response.events).map_err(ServiceError::internal)?,
        })
    }

    pub async fn deposit(
        &mut self,
        request: DepositRequest,
    ) -> std::result::Result<DepositResponse, ServiceError> {
        let execution = self.execution.as_mut().ok_or_else(ServiceError::closed)?;
        let response = execution
            .deposit(request)
            .await
            .map_err(ServiceError::invalid_argument)?;
        Ok(response.response)
    }

    pub async fn check_tx(
        &self,
        request: CheckTxRequest,
    ) -> std::result::Result<CheckTxResponse, ServiceError> {
        let execution = self.execution.as_ref().ok_or_else(ServiceError::closed)?;
        let response = execution
            .check_tx(&request.tx)
            .await
            .map_err(ServiceError::failed_precondition)?;

        check_tx_response(response).map_err(ServiceError::internal)
    }

    pub async fn deliver_tx(
        &mut self,
        request: DeliverTxRequest,
    ) -> std::result::Result<DeliverTxResponse, ServiceError> {
        let execution = self.execution.as_mut().ok_or_else(ServiceError::closed)?;
        let response = execution
            .deliver_tx(&request.tx)
            .await
            .map_err(ServiceError::failed_precondition)?;

        deliver_tx_response(response).map_err(ServiceError::internal)
    }

    pub async fn end_block(
        &mut self,
        request: EndBlockRequest,
    ) -> std::result::Result<EndBlockResponse, ServiceError> {
        let execution = self.execution.as_mut().ok_or_else(ServiceError::closed)?;
        let response = execution
            .end_block(request.height)
            .await
            .map_err(ServiceError::failed_precondition)?;

        Ok(EndBlockResponse {
            events: encode_events(response.events).map_err(ServiceError::internal)?,
        })
    }

    pub async fn commit(
        &mut self,
        _request: CommitRequest,
    ) -> std::result::Result<CommitResponse, ServiceError> {
        let execution = self.execution.as_mut().ok_or_else(ServiceError::closed)?;
        let response = execution
            .commit()
            .await
            .map_err(ServiceError::failed_precondition)?;
        Ok(CommitResponse {
            root_hash: response.root_hash,
        })
    }

    pub async fn rollback(
        &mut self,
        _request: RollbackRequest,
    ) -> std::result::Result<RollbackResponse, ServiceError> {
        let execution = self.execution.as_mut().ok_or_else(ServiceError::closed)?;
        execution.rollback();
        Ok(RollbackResponse {})
    }

    pub async fn export_genesis(
        &self,
        _request: ExportGenesisRequest,
    ) -> std::result::Result<ExportGenesisResponse, ServiceError> {
        let execution = self.execution.as_ref().ok_or_else(ServiceError::closed)?;
        let genesis: proto_app::GenesisAppState = execution
            .export_genesis()
            .await
            .map_err(ServiceError::failed_precondition)?
            .into();
        Ok(ExportGenesisResponse {
            genesis: Some(genesis),
        })
    }

    pub async fn close(&mut self) -> std::result::Result<(), ServiceError> {
        let execution = self.execution.take();
        if let Some(execution) = execution {
            execution.release().await;
        }
        Ok(())
    }
}

fn decode_host_block(request: BeginBlockRequest) -> Result<HostBlock> {
    let time = request.time.context("missing begin_block time")?;
    let nanos = u32::try_from(time.nanos).context("begin_block time nanos must be non-negative")?;
    let time =
        Time::from_unix_timestamp(time.seconds, nanos).context("invalid begin_block time")?;

    Ok(HostBlock {
        height: request.height,
        time,
    })
}

fn check_tx_response(response: HostTxResponse) -> Result<CheckTxResponse> {
    Ok(CheckTxResponse {
        code: response.code,
        data: response.data,
        log: response.log,
        info: response.info,
        gas_wanted: response.gas_wanted,
        gas_used: response.gas_used,
        events: encode_events(response.events)?,
        codespace: response.codespace,
    })
}

fn deliver_tx_response(response: HostTxResponse) -> Result<DeliverTxResponse> {
    Ok(DeliverTxResponse {
        code: response.code,
        data: response.data,
        log: response.log,
        info: response.info,
        gas_wanted: response.gas_wanted,
        gas_used: response.gas_used,
        events: encode_events(response.events)?,
        codespace: response.codespace,
        withdrawals: encode_withdrawals(response.withdrawals),
    })
}

fn encode_withdrawals(withdrawals: Vec<HostWithdrawal>) -> Vec<ProtoWithdrawal> {
    withdrawals
        .into_iter()
        .map(|withdrawal| ProtoWithdrawal {
            recipient: withdrawal.recipient,
            coin: Some(Coin {
                denom: withdrawal.denom,
                amount: withdrawal.amount.to_string(),
            }),
        })
        .collect()
}

fn encode_events(events: Vec<abci::Event>) -> Result<Vec<ProtoEvent>> {
    events
        .into_iter()
        .map(|event| {
            let attributes = event
                .attributes
                .iter()
                .map(|attribute| {
                    Ok(ProtoEventAttribute {
                        key: attribute.key_str()?.to_owned(),
                        value: attribute.value_str()?.to_owned(),
                        index: attribute.index(),
                    })
                })
                .collect::<Result<Vec<_>>>()?;

            Ok(ProtoEvent {
                r#type: event.kind,
                attributes,
            })
        })
        .collect()
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn decode_host_block_converts_valid_time() {
        let mut request = BeginBlockRequest {
            height: 7,
            time: Some(Default::default()),
        };
        request
            .time
            .as_mut()
            .expect("test request has time")
            .seconds = 1_700_000_000;

        let block = decode_host_block(request).expect("valid host block");

        assert_eq!(block.height, 7);
    }

    #[test]
    fn decode_host_block_requires_time() {
        let err = decode_host_block(BeginBlockRequest {
            height: 7,
            time: None,
        })
        .expect_err("missing time must be rejected");

        assert!(err.to_string().contains("missing begin_block time"));
    }

    #[test]
    fn deliver_tx_response_has_no_withdrawals_without_a_host_action() {
        let response = deliver_tx_response(HostTxResponse::default()).expect("valid response");

        assert!(response.withdrawals.is_empty());
    }

    #[test]
    fn encode_withdrawals_maps_recipient_and_coin() {
        let encoded = encode_withdrawals(vec![HostWithdrawal {
            recipient: "bank1recipient".to_owned(),
            denom: "ushieldd".to_owned(),
            amount: 42u64.into(),
        }]);

        assert_eq!(encoded.len(), 1);
        assert_eq!(encoded[0].recipient, "bank1recipient");
        let coin = encoded[0].coin.as_ref().expect("withdrawal coin");
        assert_eq!(coin.denom, "ushieldd");
        assert_eq!(coin.amount, "42");
    }

    #[tokio::test]
    async fn close_releases_storage_and_rejects_later_operations() {
        let directory = tempfile::tempdir().expect("temporary database directory");
        let mut service = ExecutionService::open(directory.path())
            .await
            .expect("open execution service");

        service
            .rollback(RollbackRequest {})
            .await
            .expect("rollback completed");
        service.close().await.expect("close execution service");

        let error = service
            .rollback(RollbackRequest {})
            .await
            .expect_err("closed service rejects calls");
        assert_eq!(error.kind(), ErrorKind::FailedPrecondition);

        let mut reopened = ExecutionService::open(directory.path())
            .await
            .expect("storage was released");
        reopened.close().await.expect("close reopened service");
    }
}
