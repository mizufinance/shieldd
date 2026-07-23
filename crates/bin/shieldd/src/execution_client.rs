use anyhow::{Context as _, Result};
use cnidarium::Storage;
use shieldd_sdk_app::{
    app::{HostBlock, HostExecution, HostTxResponse, HostWithdrawal},
    genesis::AppState,
};
use shieldd_sdk_proto::{
    core::app::v1 as proto_app,
    cosmos::base::v1beta1::Coin,
    execution_client::v1::{
        execution_client_service_server::ExecutionClientService, BeginBlockRequest,
        BeginBlockResponse, CheckTxRequest, CheckTxResponse, CommitRequest,
        CommitResponse as ProtoCommitResponse, DeliverTxRequest, DeliverTxResponse, DepositRequest,
        DepositResponse, EndBlockRequest, EndBlockResponse, Event as ProtoEvent,
        EventAttribute as ProtoEventAttribute, ExportGenesisRequest, ExportGenesisResponse,
        InitGenesisRequest, InitGenesisResponse, RollbackRequest, RollbackResponse,
        Withdrawal as ProtoWithdrawal,
    },
};
use tendermint::{abci, Time};
use tokio::sync::Mutex;
use tonic::{Request, Response, Status};

pub struct GrpcExecutionClient {
    inner: Mutex<HostExecution>,
}

impl GrpcExecutionClient {
    pub fn new(storage: Storage) -> Self {
        Self {
            inner: Mutex::new(HostExecution::new(storage)),
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
            .and_then(AppState::try_from)
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
        request: Request<BeginBlockRequest>,
    ) -> std::result::Result<Response<BeginBlockResponse>, Status> {
        let block = decode_host_block(request.into_inner()).map_err(invalid_argument)?;

        let mut inner = self.inner.lock().await;
        let response = inner
            .begin_block(block)
            .await
            .map_err(failed_precondition)?;

        Ok(Response::new(BeginBlockResponse {
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
        Ok(Response::new(response.response))
    }

    async fn check_tx(
        &self,
        request: Request<CheckTxRequest>,
    ) -> std::result::Result<Response<CheckTxResponse>, Status> {
        let inner = self.inner.lock().await;
        let response = inner
            .check_tx(&request.into_inner().tx)
            .await
            .map_err(failed_precondition)?;

        Ok(Response::new(
            check_tx_response(response).map_err(internal)?,
        ))
    }

    async fn deliver_tx(
        &self,
        request: Request<DeliverTxRequest>,
    ) -> std::result::Result<Response<DeliverTxResponse>, Status> {
        let mut inner = self.inner.lock().await;
        let response = inner
            .deliver_tx(&request.into_inner().tx)
            .await
            .map_err(failed_precondition)?;

        Ok(Response::new(
            deliver_tx_response(response).map_err(internal)?,
        ))
    }

    async fn end_block(
        &self,
        request: Request<EndBlockRequest>,
    ) -> std::result::Result<Response<EndBlockResponse>, Status> {
        let mut inner = self.inner.lock().await;
        let response = inner
            .end_block(request.into_inner().height)
            .await
            .map_err(failed_precondition)?;

        Ok(Response::new(EndBlockResponse {
            events: encode_events(response.events).map_err(internal)?,
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
}
