use std::{fmt, path::Path};

use anyhow::{Context as _, Result};
use cnidarium::Storage;
use shieldd_sdk_app::{
    app::{App, HostBlock, HostExecution, HostTxResponse, HostWithdrawal},
    genesis::AppState,
    SUBSTORE_PREFIXES,
};
use shieldd_sdk_proto::core::component::sct::v1::{
    ArchivedNullifierProofRequest, ArchivedNullifierProofResponse,
};
use shieldd_sdk_proto::{
    core::app::v1 as proto_app,
    cosmos::base::v1beta1::Coin,
    execution_client::v1::{
        host_withdrawal::Destination as ProtoDestination, ApplyComplianceActionRequest,
        ApplyComplianceActionResponse, AttachFreezeResultAnchorRequest,
        AttachFreezeResultAnchorResponse, BeginBlockRequest, BeginBlockResponse, CheckTxRequest,
        CheckTxResponse, CommitRequest, CommitResponse, DeliverTxRequest, DeliverTxResponse,
        DepositRequest, DepositResponse, EndBlockRequest, EndBlockResponse, Event as ProtoEvent,
        EventAttribute as ProtoEventAttribute, ExportGenesisRequest, ExportGenesisResponse,
        GetCommittedStateRequest, GetCommittedStateResponse, HostWithdrawal as ProtoHostWithdrawal,
        InitGenesisRequest, InitGenesisResponse, RollbackRequest, RollbackResponse,
    },
};
use shieldd_sdk_sct::{generation_pack::GenerationPackRepository, nullifier_tree, Nullifier};
use shieldd_sdk_shielded_pool::HostWithdrawalDestination;
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
    storage: Option<Storage>,
    generation_packs: Option<GenerationPackRepository>,
    generation_pack_worker: Option<tokio::task::JoinHandle<()>>,
}

impl ExecutionService {
    pub async fn open(db: impl AsRef<Path>) -> std::result::Result<Self, ServiceError> {
        Self::open_inner(db.as_ref(), None).await
    }

    pub async fn open_with_generation_packs(
        db: impl AsRef<Path>,
        generation_pack_directory: impl AsRef<Path>,
    ) -> std::result::Result<Self, ServiceError> {
        let repository =
            GenerationPackRepository::new(generation_pack_directory.as_ref().to_path_buf(), 1)
                .map_err(ServiceError::internal)?;
        Self::open_inner(db.as_ref(), Some(repository)).await
    }

    async fn open_inner(
        db: &Path,
        generation_packs: Option<GenerationPackRepository>,
    ) -> std::result::Result<Self, ServiceError> {
        let db = db.to_path_buf();
        let mut storage = Storage::load(db.clone(), SUBSTORE_PREFIXES.to_vec())
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

        if let Some(repository) = generation_packs.as_ref() {
            let changed =
                shieldd_sdk_app::nullifier_generation_packs::prepare(&storage, repository)
                    .await
                    .context("prepare retired nullifier generation packs")
                    .map_err(ServiceError::internal)?;
            if changed {
                storage.release().await;
                storage = Storage::load(db.clone(), SUBSTORE_PREFIXES.to_vec())
                    .await
                    .with_context(|| {
                        format!(
                            "failed to reopen Shieldd RocksDB after pack maintenance at {}",
                            db.display()
                        )
                    })
                    .map_err(ServiceError::internal)?;
            }
        }

        Ok(Self::new_with_generation_packs(storage, generation_packs))
    }

    pub fn new(storage: Storage) -> Self {
        Self::new_with_generation_packs(storage, None)
    }

    fn new_with_generation_packs(
        storage: Storage,
        generation_packs: Option<GenerationPackRepository>,
    ) -> Self {
        let generation_pack_worker = generation_packs.as_ref().map(|repository| {
            shieldd_sdk_app::nullifier_generation_packs::spawn_worker(
                storage.clone(),
                repository.clone(),
            )
        });
        Self {
            execution: Some(HostExecution::new(storage.clone())),
            storage: Some(storage),
            generation_packs,
            generation_pack_worker,
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

    pub async fn apply_compliance_action(
        &mut self,
        request: ApplyComplianceActionRequest,
    ) -> std::result::Result<ApplyComplianceActionResponse, ServiceError> {
        let execution = self.execution.as_mut().ok_or_else(ServiceError::closed)?;
        let response = execution
            .apply_compliance_action(request)
            .await
            .map_err(ServiceError::invalid_argument)?;
        Ok(response.response)
    }

    pub async fn attach_freeze_result_anchor(
        &mut self,
        request: AttachFreezeResultAnchorRequest,
    ) -> std::result::Result<AttachFreezeResultAnchorResponse, ServiceError> {
        let execution = self.execution.as_mut().ok_or_else(ServiceError::closed)?;
        let response = execution
            .attach_freeze_result_anchor(request)
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

    pub async fn get_committed_state(
        &self,
        _request: GetCommittedStateRequest,
    ) -> std::result::Result<GetCommittedStateResponse, ServiceError> {
        let execution = self.execution.as_ref().ok_or_else(ServiceError::closed)?;
        let committed = execution
            .committed_state()
            .await
            .map_err(ServiceError::failed_precondition)?;
        Ok(GetCommittedStateResponse {
            height: committed.height,
            root_hash: committed.root_hash,
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

    pub async fn archived_nullifier_proof(
        &self,
        request: ArchivedNullifierProofRequest,
    ) -> std::result::Result<ArchivedNullifierProofResponse, ServiceError> {
        let nullifier = request
            .nullifier
            .context("missing nullifier")
            .and_then(Nullifier::try_from)
            .map_err(ServiceError::invalid_argument)?;
        let repository = self.generation_packs.clone().ok_or_else(|| {
            ServiceError::failed_precondition(anyhow::anyhow!(
                "historical witness storage is not configured"
            ))
        })?;
        self.execution.as_ref().ok_or_else(ServiceError::closed)?;
        let state = self
            .storage
            .as_ref()
            .ok_or_else(ServiceError::closed)?
            .latest_snapshot();
        let archived = nullifier_tree::archived_generation(&state, request.generation_index)
            .await
            .map_err(ServiceError::failed_precondition)?;
        let packed = if repository.contains(request.generation_index) {
            Some(
                tokio::task::spawn_blocking(move || {
                    repository
                        .nonmembership_proof(archived, nullifier)
                        .map(|proof| *proof)
                })
                .await
                .context("historical witness task failed")
                .map_err(ServiceError::internal)?,
            )
        } else {
            None
        };
        let proof = match packed {
            Some(Ok(proof)) => proof,
            Some(Err(pack_error)) => nullifier_tree::archived_nonmembership_proof(
                &state,
                request.generation_index,
                nullifier,
            )
            .await
            .with_context(|| format!("generation pack is also unavailable: {pack_error}"))
            .map_err(ServiceError::failed_precondition)?,
            None => nullifier_tree::archived_nonmembership_proof(
                &state,
                request.generation_index,
                nullifier,
            )
            .await
            .map_err(ServiceError::failed_precondition)?,
        };
        Ok(proof.into())
    }

    pub async fn close(&mut self) -> std::result::Result<(), ServiceError> {
        if let Some(worker) = self.generation_pack_worker.take() {
            worker.abort();
            let _ = worker.await;
        }
        drop(self.execution.take());
        if let Some(storage) = self.storage.take() {
            storage.release().await;
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

fn encode_withdrawals(withdrawals: Vec<HostWithdrawal>) -> Vec<ProtoHostWithdrawal> {
    withdrawals
        .into_iter()
        .map(|withdrawal| ProtoHostWithdrawal {
            coin: Some(Coin {
                denom: withdrawal.denom,
                amount: withdrawal.amount.to_string(),
            }),
            destination: Some(match withdrawal.destination {
                HostWithdrawalDestination::Transfer(transfer) => {
                    ProtoDestination::Transfer(transfer.into())
                }
                HostWithdrawalDestination::Execution(execution) => {
                    ProtoDestination::Execution(execution.into())
                }
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
    use cnidarium::StateDelta;
    use decaf377::Fq;
    use shieldd_sdk_app::genesis::{AppState, Content};
    use shieldd_sdk_keys::test_keys;
    use shieldd_sdk_proto::core::component::sct::v1::ArchivedNullifierProofRequest;
    use shieldd_sdk_sct::{nullifier_tree, Nullifier};
    use shieldd_sdk_shielded_pool::{EvmCall, HostExecution};
    use std::ops::Deref;

    fn init_genesis_request() -> InitGenesisRequest {
        InitGenesisRequest {
            genesis: Some(
                AppState::Content(Content::default().with_chain_id("bankd-local".to_owned()))
                    .into(),
            ),
        }
    }

    fn nullifier(value: u64) -> Nullifier {
        Nullifier(Fq::from(value))
    }

    #[tokio::test]
    async fn embedded_service_serves_a_pack_after_expanded_state_is_pruned() -> Result<()> {
        let storage_directory = tempfile::tempdir()?;
        let storage = Storage::load(
            storage_directory.path().join("rocksdb"),
            SUBSTORE_PREFIXES.to_vec(),
        )
        .await?;
        let mut state = StateDelta::new(storage.latest_snapshot());
        nullifier_tree::initialize(&mut state).await?;
        nullifier_tree::insert_batch(&mut state, [nullifier(7), nullifier(1)]).await?;
        nullifier_tree::rollover(&mut state, 30, 1 << 32).await?;
        nullifier_tree::rollover(&mut state, 60, 2 << 32).await?;
        let archived = nullifier_tree::archived_generation(&state, 0).await?;
        let pack = nullifier_tree::build_generation_pack(&state, 0).await?;
        let directory = tempfile::tempdir()?;
        let repository = GenerationPackRepository::new(directory.path().to_path_buf(), 1)?;
        let receipt = repository.write(&pack)?;
        nullifier_tree::record_generation_pack_completion(&mut state, &receipt).await?;
        nullifier_tree::prune_packed_generation(&mut state, &receipt).await?;
        storage.commit(state).await?;

        let mut service = ExecutionService::new_with_generation_packs(storage, Some(repository));
        let response = service
            .archived_nullifier_proof(ArchivedNullifierProofRequest {
                generation_index: 0,
                nullifier: Some(nullifier(8).into()),
            })
            .await?;
        let proof: shieldd_sdk_sct::nullifier_generation::ArchivedNullifierProof =
            response.try_into()?;
        proof.verify_for(nullifier(8))?;
        assert_eq!(proof.generation_root, archived.generation_root);
        service.close().await?;
        Ok(())
    }

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
    fn encode_withdrawals_maps_transfer_and_coin() {
        let encoded = encode_withdrawals(vec![HostWithdrawal {
            denom: "ushieldd".to_owned(),
            amount: 42u64.into(),
            destination: HostWithdrawalDestination::Transfer(
                shieldd_sdk_shielded_pool::HostTransfer {
                    recipient: "bank1recipient".to_owned(),
                },
            ),
        }]);

        assert_eq!(encoded.len(), 1);
        let coin = encoded[0].coin.as_ref().expect("withdrawal coin");
        assert_eq!(coin.denom, "ushieldd");
        assert_eq!(coin.amount, "42");
        assert!(matches!(
            encoded[0].destination.as_ref(),
            Some(ProtoDestination::Transfer(transfer))
                if transfer.recipient == "bank1recipient"
        ));
    }

    #[test]
    fn encode_withdrawals_preserves_execution_call_order_and_refund_address() {
        let encoded = encode_withdrawals(vec![HostWithdrawal {
            denom: "ushieldd".to_owned(),
            amount: 42u64.into(),
            destination: HostWithdrawalDestination::Execution(HostExecution {
                refund_address: test_keys::ADDRESS_0.deref().clone(),
                gas_limit: 200_000,
                calls: vec![
                    EvmCall {
                        contract: [1u8; 20],
                        calldata: vec![0xaa],
                    },
                    EvmCall {
                        contract: [2u8; 20],
                        calldata: vec![0xbb],
                    },
                ],
            }),
        }]);

        let Some(ProtoDestination::Execution(execution)) = encoded[0].destination.as_ref() else {
            panic!("expected host execution");
        };
        assert_eq!(execution.refund_address, test_keys::ADDRESS_0.to_string());
        assert_eq!(execution.gas_limit, 200_000);
        assert_eq!(execution.calls[0].contract, [1u8; 20]);
        assert_eq!(execution.calls[0].calldata, vec![0xaa]);
        assert_eq!(execution.calls[1].contract, [2u8; 20]);
        assert_eq!(execution.calls[1].calldata, vec![0xbb]);
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

    #[tokio::test]
    async fn committed_state_survives_reopening_the_service() {
        let directory = tempfile::tempdir().expect("temporary database directory");
        let mut service = ExecutionService::open(directory.path())
            .await
            .expect("open execution service");

        let error = service
            .get_committed_state(GetCommittedStateRequest {})
            .await
            .expect_err("uninitialized storage has no committed state");
        assert_eq!(error.kind(), ErrorKind::FailedPrecondition);

        service
            .init_genesis(init_genesis_request())
            .await
            .expect("initialize genesis");
        let commit = service
            .commit(CommitRequest {})
            .await
            .expect("commit genesis");
        let committed = service
            .get_committed_state(GetCommittedStateRequest {})
            .await
            .expect("get committed genesis");
        assert_eq!(committed.height, 0);
        assert_eq!(committed.root_hash, commit.root_hash);

        service.close().await.expect("close execution service");

        let mut reopened = ExecutionService::open(directory.path())
            .await
            .expect("reopen execution service");
        let reopened_committed = reopened
            .get_committed_state(GetCommittedStateRequest {})
            .await
            .expect("get committed state after reopening");
        assert_eq!(reopened_committed, committed);
        reopened.close().await.expect("close reopened service");
    }
}
