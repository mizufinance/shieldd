use std::{
    any::Any,
    panic::{catch_unwind, AssertUnwindSafe},
    path::PathBuf,
    ptr, slice, str,
};

use prost::Message;
use tokio::runtime::{Builder, Runtime};

use crate::{ErrorKind, ExecutionService, ServiceError};

const ABI_VERSION: u32 = 3;
const STATUS_OVERLOADED: i32 = 6;
const STATUS_SNAPSHOT_EXPIRED: i32 = 7;
const STATUS_UNAVAILABLE: i32 = 8;
const METHOD_PUBLISH_COMMITTED: u32 = 13;
const STATUS_OK: i32 = 0;
const STATUS_INVALID_ARGUMENT: i32 = 1;
const STATUS_FAILED_PRECONDITION: i32 = 2;
const STATUS_INTERNAL: i32 = 3;
const STATUS_PANIC: i32 = 4;
const STATUS_NOT_FOUND: i32 = 5;

const METHOD_INIT_GENESIS: u32 = 1;
const METHOD_BEGIN_BLOCK: u32 = 2;
const METHOD_DEPOSIT: u32 = 3;
const METHOD_CHECK_TX: u32 = 4;
const METHOD_DELIVER_TX: u32 = 5;
const METHOD_END_BLOCK: u32 = 6;
const METHOD_COMMIT: u32 = 7;
const METHOD_ROLLBACK: u32 = 8;
const METHOD_EXPORT_GENESIS: u32 = 9;
const METHOD_GET_COMMITTED_STATE: u32 = 10;
const METHOD_ARCHIVED_NULLIFIER_PROOF: u32 = 11;
const METHOD_APPLY_COMPLIANCE_ACTION: u32 = 12;

// Read-only query method IDs start at 1_000_000.
const METHOD_QUERY_APP_PARAMETERS: u32 = 1_000_000;
const METHOD_QUERY_ASSET_METADATA_BY_ID: u32 = 1_000_001;
const METHOD_QUERY_COMPLIANCE_ASSET_STATUS: u32 = 1_000_002;
const METHOD_QUERY_COMPLIANCE_BATCH_MERKLE_PROOFS: u32 = 1_000_003;
const METHOD_QUERY_COMPLIANCE_USER_LEAF: u32 = 1_000_004;
const METHOD_QUERY_KEY_VALUE: u32 = 1_000_005;
const METHOD_QUERY_NULLIFIER_WINDOW: u32 = 1_000_007;
const METHOD_QUERY_COMMITTED_TRANSACTION: u32 = 1_000_008;
const METHOD_QUERY_TRANSACTIONS_BY_HEIGHT: u32 = 1_000_009;
const METHOD_QUERY_COMPACT_BLOCK_PAGE: u32 = 1_000_010;
const METHOD_QUERY_FILTERED_BLOCK_PAGE: u32 = 1_000_011;
const METHOD_QUERY_SPEND_STATUS_PAGE: u32 = 1_000_012;

#[derive(Clone, Copy, Debug, Eq, PartialEq)]
enum Method {
    PublishCommitted,
    InitGenesis,
    BeginBlock,
    Deposit,
    CheckTx,
    DeliverTx,
    EndBlock,
    Commit,
    Rollback,
    ExportGenesis,
    GetCommittedState,
    ArchivedNullifierProof,
    ApplyComplianceAction,
    QueryAppParameters,
    QueryAssetMetadataById,
    QueryComplianceAssetStatus,
    QueryComplianceBatchMerkleProofs,
    QueryComplianceUserLeaf,
    QueryKeyValue,
    QueryNullifierWindow,
    QueryCommittedTransaction,
    QueryTransactionsByHeight,
    QueryCompactBlockPage,
    QueryFilteredBlockPage,
    QuerySpendStatusPage,
}

#[repr(C)]
pub struct ShielddHandle {
    _private: [u8; 0],
}

struct Handle {
    runtime: Runtime,
    service: tokio::sync::Mutex<ExecutionService>,
    queries: std::sync::Arc<crate::QueryService>,
    read_slots: std::sync::Arc<tokio::sync::Semaphore>,
    query_bytes: std::sync::Arc<tokio::sync::Semaphore>,
    check_bytes: std::sync::Arc<tokio::sync::Semaphore>,
}

#[repr(C)]
pub struct ShielddBuffer {
    pub data: *mut u8,
    pub len: usize,
    pub owner: *mut std::ffi::c_void,
}

impl ShielddBuffer {
    fn empty() -> Self {
        Self {
            data: ptr::null_mut(),
            len: 0,
            owner: ptr::null_mut(),
        }
    }

    fn from_vec(data: Vec<u8>) -> Self {
        Self::owned(data, None)
    }

    fn owned(data: Vec<u8>, permit: Option<tokio::sync::OwnedSemaphorePermit>) -> Self {
        if data.is_empty() {
            return Self::empty();
        }
        let mut owner = Box::new(OwnedBuffer {
            bytes: data.into_boxed_slice(),
            _permit: permit,
        });
        Self {
            data: owner.bytes.as_mut_ptr(),
            len: owner.bytes.len(),
            owner: Box::into_raw(owner).cast(),
        }
    }
}
struct OwnedBuffer {
    bytes: Box<[u8]>,
    _permit: Option<tokio::sync::OwnedSemaphorePermit>,
}

#[repr(C)]
pub struct ShielddResult {
    pub status: i32,
    pub response: ShielddBuffer,
    pub error: ShielddBuffer,
}

impl ShielddResult {
    fn success(response: Vec<u8>) -> Self {
        Self {
            status: STATUS_OK,
            response: ShielddBuffer::from_vec(response),
            error: ShielddBuffer::empty(),
        }
    }

    fn failure(status: i32, error: impl Into<String>) -> Self {
        Self {
            status,
            response: ShielddBuffer::empty(),
            error: ShielddBuffer::from_vec(error.into().into_bytes()),
        }
    }
}

struct FfiError {
    status: i32,
    message: String,
}

impl FfiError {
    fn invalid_argument(message: impl Into<String>) -> Self {
        Self {
            status: STATUS_INVALID_ARGUMENT,
            message: message.into(),
        }
    }

    fn internal(message: impl Into<String>) -> Self {
        Self {
            status: STATUS_INTERNAL,
            message: message.into(),
        }
    }

    fn service(error: ServiceError) -> Self {
        let status = match error.kind() {
            ErrorKind::InvalidArgument => STATUS_INVALID_ARGUMENT,
            ErrorKind::FailedPrecondition => STATUS_FAILED_PRECONDITION,
            ErrorKind::NotFound => STATUS_NOT_FOUND,
            ErrorKind::Internal => STATUS_INTERNAL,
            ErrorKind::Overloaded => STATUS_OVERLOADED,
            ErrorKind::SnapshotExpired => STATUS_SNAPSHOT_EXPIRED,
            ErrorKind::Unavailable => STATUS_UNAVAILABLE,
        };
        Self {
            status,
            message: error.to_string(),
        }
    }
}

impl TryFrom<u32> for Method {
    type Error = FfiError;

    fn try_from(method: u32) -> std::result::Result<Self, Self::Error> {
        match method {
            METHOD_PUBLISH_COMMITTED => Ok(Self::PublishCommitted),
            METHOD_INIT_GENESIS => Ok(Self::InitGenesis),
            METHOD_BEGIN_BLOCK => Ok(Self::BeginBlock),
            METHOD_DEPOSIT => Ok(Self::Deposit),
            METHOD_CHECK_TX => Ok(Self::CheckTx),
            METHOD_DELIVER_TX => Ok(Self::DeliverTx),
            METHOD_END_BLOCK => Ok(Self::EndBlock),
            METHOD_COMMIT => Ok(Self::Commit),
            METHOD_ROLLBACK => Ok(Self::Rollback),
            METHOD_EXPORT_GENESIS => Ok(Self::ExportGenesis),
            METHOD_GET_COMMITTED_STATE => Ok(Self::GetCommittedState),
            METHOD_ARCHIVED_NULLIFIER_PROOF => Ok(Self::ArchivedNullifierProof),
            METHOD_APPLY_COMPLIANCE_ACTION => Ok(Self::ApplyComplianceAction),
            METHOD_QUERY_APP_PARAMETERS => Ok(Self::QueryAppParameters),
            METHOD_QUERY_ASSET_METADATA_BY_ID => Ok(Self::QueryAssetMetadataById),
            METHOD_QUERY_COMPLIANCE_ASSET_STATUS => Ok(Self::QueryComplianceAssetStatus),
            METHOD_QUERY_COMPLIANCE_BATCH_MERKLE_PROOFS => {
                Ok(Self::QueryComplianceBatchMerkleProofs)
            }
            METHOD_QUERY_COMPLIANCE_USER_LEAF => Ok(Self::QueryComplianceUserLeaf),
            METHOD_QUERY_KEY_VALUE => Ok(Self::QueryKeyValue),
            METHOD_QUERY_NULLIFIER_WINDOW => Ok(Self::QueryNullifierWindow),
            METHOD_QUERY_COMMITTED_TRANSACTION => Ok(Self::QueryCommittedTransaction),
            METHOD_QUERY_COMPACT_BLOCK_PAGE => Ok(Self::QueryCompactBlockPage),
            METHOD_QUERY_FILTERED_BLOCK_PAGE => Ok(Self::QueryFilteredBlockPage),
            METHOD_QUERY_SPEND_STATUS_PAGE => Ok(Self::QuerySpendStatusPage),
            METHOD_QUERY_TRANSACTIONS_BY_HEIGHT => Ok(Self::QueryTransactionsByHeight),
            _ => Err(FfiError::invalid_argument(format!(
                "unknown Shieldd method {method}"
            ))),
        }
    }
}

#[no_mangle]
pub extern "C" fn shieldd_abi_version() -> u32 {
    ABI_VERSION
}

#[no_mangle]
pub extern "C" fn shieldd_open(
    db_path: *const u8,
    db_path_len: usize,
    generation_pack_path: *const u8,
    generation_pack_path_len: usize,
    out_handle: *mut *mut ShielddHandle,
) -> ShielddResult {
    boundary(|| {
        clear_output_handle(out_handle)?;
        let db_path = unsafe { input_bytes(db_path, db_path_len)? };
        let generation_pack_path =
            unsafe { input_bytes(generation_pack_path, generation_pack_path_len)? };
        open_handle(db_path, Some(generation_pack_path), out_handle)
    })
}

fn clear_output_handle(out_handle: *mut *mut ShielddHandle) -> std::result::Result<(), FfiError> {
    if out_handle.is_null() {
        return Err(FfiError::invalid_argument("out_handle must not be null"));
    }
    unsafe {
        out_handle.write(ptr::null_mut());
    }
    Ok(())
}

fn open_handle(
    db_path: &[u8],
    generation_pack_path: Option<&[u8]>,
    out_handle: *mut *mut ShielddHandle,
) -> std::result::Result<Vec<u8>, FfiError> {
    let path = |value: &[u8], name: &str| {
        let value = str::from_utf8(value).map_err(|error| {
            FfiError::invalid_argument(format!("{name} must be UTF-8: {error}"))
        })?;
        if value.is_empty() {
            return Err(FfiError::invalid_argument(format!(
                "{name} must not be empty"
            )));
        }
        Ok(PathBuf::from(value))
    };
    let db_path = path(db_path, "db_path")?;
    let generation_pack_path = generation_pack_path
        .map(|value| path(value, "generation_pack_path"))
        .transpose()?;

    let key_directory = std::env::var_os("SHIELDD_PARI_KEYS").ok_or_else(|| {
        FfiError::invalid_argument("SHIELDD_PARI_KEYS must name a trusted local Pari registry")
    })?;
    let registry = std::sync::Arc::new(
        shieldd_sdk_proof_params::pari::Registry::load(key_directory).map_err(|error| {
            FfiError::invalid_argument(format!("invalid Pari registry: {error:#}"))
        })?,
    );
    let runtime = Builder::new_multi_thread()
        .enable_all()
        .build()
        .map_err(|error| {
            FfiError::internal(format!("failed to create Shieldd runtime: {error}"))
        })?;
    let service = match generation_pack_path {
        Some(directory) => runtime.block_on(ExecutionService::open_with_generation_packs(
            db_path, directory, registry,
        )),
        None => runtime.block_on(ExecutionService::open(db_path, registry)),
    }
    .map_err(FfiError::service)?;
    let handle = Box::into_raw(Box::new(Handle {
        queries: service.queries().clone(),
        read_slots: std::sync::Arc::new(tokio::sync::Semaphore::new(
            service.queries().limits.read_workers,
        )),
        query_bytes: std::sync::Arc::new(tokio::sync::Semaphore::new(
            service.queries().limits.read_memory_bytes(),
        )),
        check_bytes: std::sync::Arc::new(tokio::sync::Semaphore::new(
            service.queries().limits.check_tx_reservation_bytes(),
        )),
        runtime,
        service: tokio::sync::Mutex::new(service),
    })) as *mut ShielddHandle;
    unsafe {
        out_handle.write(handle);
    }

    Ok(Vec::new())
}

#[no_mangle]
pub extern "C" fn shieldd_call(
    handle: *mut ShielddHandle,
    method: u32,
    request: *const u8,
    request_len: usize,
) -> ShielddResult {
    let mut query_budget = None;
    let result = catch_unwind(AssertUnwindSafe(|| {
        if handle.is_null() {
            return Err(FfiError::invalid_argument("handle must not be null"));
        }
        let method = Method::try_from(method)?;
        let handle = unsafe { &*(handle.cast::<Handle>()) };
        let is_query = method.is_query();
        if is_query {
            query_budget = Some(if method == Method::CheckTx {
                handle.check_bytes.clone()
            } else {
                handle.query_bytes.clone()
            });
        }
        if is_query && request_len > handle.queries.limits.request_bytes {
            return Err(FfiError::invalid_argument(
                "query request exceeds configured budget",
            ));
        }
        let request = unsafe { input_bytes(request, request_len)? };
        if is_query {
            let _slot = if method == Method::CheckTx {
                None
            } else {
                Some(
                    handle
                        .read_slots
                        .clone()
                        .try_acquire_owned()
                        .map_err(|_| FfiError::service(ServiceError::overloaded()))?,
                )
            };
            // A reservation covers construction/encoding and remains attached to the returned buffer.
            let memory = query_budget
                .as_ref()
                .expect("query budget")
                .clone()
                .try_acquire_many_owned(handle.queries.limits.reservation_bytes())
                .map_err(|_| FfiError::service(ServiceError::overloaded()))?;
            let response =
                handle
                    .runtime
                    .block_on(dispatch_query(&handle.queries, method, request))?;
            if response.len() > handle.queries.limits.response_page_bytes {
                return Err(FfiError::service(ServiceError::overloaded()));
            }
            Ok(ShielddBuffer::owned(response, Some(memory)))
        } else {
            let response = handle.runtime.block_on(async {
                let mut service = handle.service.lock().await;
                dispatch(&mut service, method, request).await
            })?;
            Ok(ShielddBuffer::from_vec(response))
        }
    }));
    match result {
        Ok(Ok(response)) => ShielddResult {
            status: STATUS_OK,
            response,
            error: ShielddBuffer::empty(),
        },
        Ok(Err(error)) => budgeted_failure(error.status, error.message, query_budget),
        Err(payload) => budgeted_failure(STATUS_PANIC, panic_message(payload), query_budget),
    }
}

fn budgeted_failure(
    status: i32,
    message: String,
    budget: Option<std::sync::Arc<tokio::sync::Semaphore>>,
) -> ShielddResult {
    let Some(budget) = budget else {
        return ShielddResult::failure(status, message);
    };
    let bytes = if message.len() <= 4096 {
        message.into_bytes()
    } else {
        b"query failed; error details exceed local budget".to_vec()
    };
    let error = match budget.try_acquire_many_owned(bytes.len() as u32) {
        Ok(permit) => ShielddBuffer::owned(bytes, Some(permit)),
        Err(_) => {
            // Immutable static storage needs no reservation and remains valid after shutdown.
            let text = b"query memory budget exhausted; free outstanding buffers and retry";
            ShielddBuffer {
                data: text.as_ptr().cast_mut(),
                len: text.len(),
                owner: ptr::null_mut(),
            }
        }
    };
    ShielddResult {
        status,
        response: ShielddBuffer::empty(),
        error,
    }
}

#[no_mangle]
pub extern "C" fn shieldd_close(handle: *mut ShielddHandle) -> ShielddResult {
    boundary(|| {
        if handle.is_null() {
            return Err(FfiError::invalid_argument("handle must not be null"));
        }

        let handle = unsafe { Box::from_raw(handle.cast::<Handle>()) };
        let Handle {
            runtime,
            service,
            queries,
            read_slots,
            query_bytes,
            check_bytes,
        } = *handle;
        read_slots.close();
        query_bytes.close();
        check_bytes.close();
        drop(queries);
        let mut service = service.into_inner();
        runtime
            .block_on(service.close())
            .map_err(FfiError::service)?;
        Ok(Vec::new())
    })
}

#[no_mangle]
pub extern "C" fn shieldd_buffer_free(buffer: *mut ShielddBuffer) {
    let _ = catch_unwind(AssertUnwindSafe(|| {
        if buffer.is_null() {
            return;
        }

        let buffer = unsafe { &mut *buffer };
        if !buffer.owner.is_null() {
            unsafe {
                drop(Box::from_raw(buffer.owner.cast::<OwnedBuffer>()));
            }
        }
        buffer.owner = ptr::null_mut();
        buffer.data = ptr::null_mut();
        buffer.len = 0;
    }));
}

fn boundary(function: impl FnOnce() -> std::result::Result<Vec<u8>, FfiError>) -> ShielddResult {
    match catch_unwind(AssertUnwindSafe(function)) {
        Ok(Ok(response)) => ShielddResult::success(response),
        Ok(Err(error)) => ShielddResult::failure(error.status, error.message),
        Err(payload) => ShielddResult::failure(
            STATUS_PANIC,
            format!("Shieldd panicked: {}", panic_message(payload)),
        ),
    }
}

unsafe fn input_bytes<'a>(data: *const u8, len: usize) -> std::result::Result<&'a [u8], FfiError> {
    if len == 0 {
        return Ok(&[]);
    }
    if data.is_null() {
        return Err(FfiError::invalid_argument(
            "input data must not be null when length is non-zero",
        ));
    }
    Ok(slice::from_raw_parts(data, len))
}

impl Method {
    fn is_query(self) -> bool {
        matches!(
            self,
            Self::CheckTx
                | Self::ArchivedNullifierProof
                | Self::QueryTransactionsByHeight
                | Self::QueryCompactBlockPage
                | Self::QueryFilteredBlockPage
                | Self::QuerySpendStatusPage
                | Self::QueryCommittedTransaction
                | Self::QueryAppParameters
                | Self::QueryAssetMetadataById
                | Self::QueryComplianceAssetStatus
                | Self::QueryComplianceBatchMerkleProofs
                | Self::QueryComplianceUserLeaf
                | Self::QueryKeyValue
                | Self::QueryNullifierWindow
        )
    }
}

async fn dispatch_query(
    service: &crate::QueryService,
    method: Method,
    request: &[u8],
) -> std::result::Result<Vec<u8>, FfiError> {
    match method {
        Method::QuerySpendStatusPage => service
            .spend_status_page(decode(request)?)
            .await
            .map(|r| r.encode_to_vec())
            .map_err(FfiError::service),
        Method::QueryFilteredBlockPage => service
            .filtered_block_page(decode(request)?)
            .await
            .map(|r| r.encode_to_vec())
            .map_err(FfiError::service),
        Method::QueryCompactBlockPage => service
            .compact_block_page(decode(request)?)
            .await
            .map(|r| r.encode_to_vec())
            .map_err(FfiError::service),
        Method::CheckTx => service
            .check_tx(decode(request)?)
            .await
            .map(|response| response.encode_to_vec())
            .map_err(FfiError::service),
        Method::ArchivedNullifierProof => service
            .archived_nullifier_proof(decode(request)?)
            .await
            .map(|response| response.encode_to_vec())
            .map_err(FfiError::service),
        Method::QueryTransactionsByHeight => service
            .transactions_by_height(decode(request)?)
            .await
            .map(|response| response.encode_to_vec())
            .map_err(FfiError::service),
        Method::QueryCommittedTransaction => service
            .committed_transaction(decode(request)?)
            .await
            .map(|response| response.encode_to_vec())
            .map_err(FfiError::service),
        Method::QueryAppParameters => service
            .app_parameters(decode(request)?)
            .await
            .map(|response| response.encode_to_vec())
            .map_err(FfiError::service),
        Method::QueryAssetMetadataById => service
            .asset_metadata_by_id(decode(request)?)
            .await
            .map(|response| response.encode_to_vec())
            .map_err(FfiError::service),
        Method::QueryComplianceAssetStatus => service
            .compliance_asset_status(decode(request)?)
            .await
            .map(|response| response.encode_to_vec())
            .map_err(FfiError::service),
        Method::QueryComplianceBatchMerkleProofs => service
            .compliance_batch_merkle_proofs(decode(request)?)
            .await
            .map(|response| response.encode_to_vec())
            .map_err(FfiError::service),
        Method::QueryComplianceUserLeaf => service
            .compliance_user_leaf(decode(request)?)
            .await
            .map(|response| response.encode_to_vec())
            .map_err(FfiError::service),
        Method::QueryKeyValue => service
            .key_value(decode(request)?)
            .await
            .map(|response| response.encode_to_vec())
            .map_err(FfiError::service),
        Method::QueryNullifierWindow => service
            .nullifier_window(decode(request)?)
            .await
            .map(|response| response.encode_to_vec())
            .map_err(FfiError::service),
        _ => Err(FfiError::internal("execution dispatched to query")),
    }
}

async fn dispatch(
    service: &mut ExecutionService,
    method: Method,
    request: &[u8],
) -> std::result::Result<Vec<u8>, FfiError> {
    match method {
        Method::PublishCommitted => {
            service
                .queries()
                .publish_committed(decode(request)?)
                .await
                .map_err(FfiError::service)?;
            Ok(Vec::new())
        }
        Method::InitGenesis => service
            .init_genesis(decode(request)?)
            .await
            .map(|response| response.encode_to_vec())
            .map_err(FfiError::service),
        Method::BeginBlock => service
            .begin_block(decode(request)?)
            .await
            .map(|response| response.encode_to_vec())
            .map_err(FfiError::service),
        Method::Deposit => service
            .deposit(decode(request)?)
            .await
            .map(|response| response.encode_to_vec())
            .map_err(FfiError::service),
        Method::DeliverTx => service
            .deliver_tx(decode(request)?)
            .await
            .map(|response| response.encode_to_vec())
            .map_err(FfiError::service),
        Method::EndBlock => service
            .end_block(decode(request)?)
            .await
            .map(|response| response.encode_to_vec())
            .map_err(FfiError::service),
        Method::Commit => service
            .commit(decode(request)?)
            .await
            .map(|response| response.encode_to_vec())
            .map_err(FfiError::service),
        Method::GetCommittedState => service
            .get_committed_state(decode(request)?)
            .await
            .map(|response| response.encode_to_vec())
            .map_err(FfiError::service),
        Method::Rollback => service
            .rollback(decode(request)?)
            .await
            .map(|response| response.encode_to_vec())
            .map_err(FfiError::service),
        Method::ExportGenesis => service
            .export_genesis(decode(request)?)
            .await
            .map(|response| response.encode_to_vec())
            .map_err(FfiError::service),
        Method::ApplyComplianceAction => service
            .apply_compliance_action(decode(request)?)
            .await
            .map(|response| response.encode_to_vec())
            .map_err(FfiError::service),

        _ => Err(FfiError::internal("query dispatched to execution")),
    }
}

fn decode<M>(request: &[u8]) -> std::result::Result<M, FfiError>
where
    M: Message + Default,
{
    M::decode(request)
        .map_err(|error| FfiError::invalid_argument(format!("invalid protobuf request: {error}")))
}

fn panic_message(payload: Box<dyn Any + Send>) -> String {
    if let Some(message) = payload.downcast_ref::<&str>() {
        (*message).to_owned()
    } else if let Some(message) = payload.downcast_ref::<String>() {
        message.clone()
    } else {
        "non-string panic payload".to_owned()
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use shieldd_sdk_app::genesis::{AppState, Content};
    use shieldd_sdk_asset::asset;
    use shieldd_sdk_keys::test_keys::ADDRESS_0;
    use shieldd_sdk_proto::cnidarium::v1::{KeyValueRequest, KeyValueResponse};
    use shieldd_sdk_proto::core::app::v1::{AppParametersRequest, AppParametersResponse};
    use shieldd_sdk_proto::core::component::compact_block::v1::{
        CompactBlockPageRequest, CompactBlockPageResponse,
    };
    use shieldd_sdk_proto::core::component::compliance::v1::{
        ComplianceAssetStatusRequest, ComplianceAssetStatusResponse,
        ComplianceBatchMerkleProofsRequest, ComplianceBatchMerkleProofsResponse,
        ComplianceBatchQuery, ComplianceUserLeafRequest, ComplianceUserLeafResponse,
    };
    use shieldd_sdk_proto::core::component::sct::v1::{
        ArchivedNullifierProofRequest, NullifierWindowRequest, NullifierWindowResponse,
    };
    use shieldd_sdk_proto::core::component::shielded_pool::v1::{
        AssetMetadataByIdRequest, AssetMetadataByIdResponse,
    };
    use shieldd_sdk_proto::execution_client::v1::{
        ApplyComplianceActionRequest, BeginBlockRequest, BeginBlockResponse, CheckTxRequest,
        CheckTxResponse, CommitRequest, CommitResponse, DeliverTxRequest, DeliverTxResponse,
        EndBlockRequest, EndBlockResponse, GetCommittedStateRequest, GetCommittedStateResponse,
        HostSource, InitGenesisRequest, InitGenesisResponse,
    };

    fn open(directory: &std::path::Path) -> *mut ShielddHandle {
        let path = directory
            .to_str()
            .expect("temporary directory path is UTF-8")
            .as_bytes();
        let mut handle = ptr::null_mut();
        let packs = directory.join("archives");
        let packs = packs.to_str().expect("UTF-8 archive path").as_bytes();
        let result = shieldd_open(
            path.as_ptr(),
            path.len(),
            packs.as_ptr(),
            packs.len(),
            &mut handle,
        );
        assert_eq!(result.status, STATUS_OK, "{}", error_text(&result));
        free_result(result);
        assert!(!handle.is_null());
        handle
    }

    fn publish(handle: *mut ShielddHandle) {
        let state: GetCommittedStateResponse = call(
            handle,
            METHOD_GET_COMMITTED_STATE,
            GetCommittedStateRequest {},
        );
        let _: shieldd_sdk_proto::execution_client::v1::CommitRequest =
            call(handle, METHOD_PUBLISH_COMMITTED, state);
    }

    fn close(handle: *mut ShielddHandle) {
        let result = shieldd_close(handle);
        assert_eq!(result.status, STATUS_OK, "{}", error_text(&result));
        free_result(result);
    }

    fn error_text(result: &ShielddResult) -> String {
        if result.error.data.is_null() {
            return String::new();
        }
        let bytes = unsafe { slice::from_raw_parts(result.error.data, result.error.len) };
        String::from_utf8_lossy(bytes).into_owned()
    }

    fn free_result(mut result: ShielddResult) {
        shieldd_buffer_free(&mut result.response);
        shieldd_buffer_free(&mut result.error);
    }

    #[test]
    fn readers_bypass_execution_lock_and_buffers_hold_admission_until_freed() {
        let directory = tempfile::tempdir().unwrap();
        let handle = open(directory.path());
        initialize(handle);
        let raw = unsafe { &*handle.cast::<Handle>() };
        let guard = raw.service.try_lock().unwrap();
        // A query must finish while the writer is locked, rather than queue behind it.
        let address = handle as usize;
        let (send, receive) = std::sync::mpsc::channel();
        let reader = std::thread::spawn(move || {
            let response = shieldd_call(
                address as *mut ShielddHandle,
                METHOD_QUERY_APP_PARAMETERS,
                ptr::null(),
                0,
            );
            let status = response.status;
            free_result(response);
            send.send(status).unwrap();
        });
        let result = receive.recv_timeout(std::time::Duration::from_secs(5));
        drop(guard);
        reader.join().unwrap();
        assert_eq!(result.unwrap(), STATUS_OK);
        // Admission stays available even while callers retain every read response.
        let baseline = shieldd_call(handle, METHOD_CHECK_TX, ptr::null(), 0);
        let expected_status = baseline.status;
        let expected_error = error_text(&baseline);
        assert_ne!(expected_status, STATUS_OVERLOADED);
        free_result(baseline);
        let mut held = Vec::new();
        for _ in 0..raw.queries.limits.read_memory_bytes()
            / raw.queries.limits.reservation_bytes() as usize
        {
            let response = shieldd_call(handle, METHOD_QUERY_APP_PARAMETERS, ptr::null(), 0);
            assert_eq!(response.status, STATUS_OK);
            held.push(response);
        }
        let overloaded = shieldd_call(handle, METHOD_QUERY_APP_PARAMETERS, ptr::null(), 0);
        assert_eq!(overloaded.status, STATUS_OVERLOADED);
        free_result(overloaded);
        let slots = raw
            .read_slots
            .clone()
            .try_acquire_many_owned(raw.queries.limits.read_workers as u32)
            .unwrap();
        let check = shieldd_call(handle, METHOD_CHECK_TX, ptr::null(), 0);
        assert_eq!(
            check.status, expected_status,
            "public reads starved CheckTx"
        );
        assert_eq!(error_text(&check), expected_error);
        free_result(check);
        drop(slots);
        free_result(held.pop().unwrap());
        let admitted = shieldd_call(handle, METHOD_QUERY_APP_PARAMETERS, ptr::null(), 0);
        assert_eq!(admitted.status, STATUS_OK);
        held.push(admitted);
        close(handle);
        for response in held {
            free_result(response);
        }
    }

    #[test]
    fn abi_method_ids_map_to_their_dispatch_methods() {
        let cases = [
            (METHOD_INIT_GENESIS, Method::InitGenesis),
            (METHOD_BEGIN_BLOCK, Method::BeginBlock),
            (METHOD_DEPOSIT, Method::Deposit),
            (METHOD_CHECK_TX, Method::CheckTx),
            (METHOD_DELIVER_TX, Method::DeliverTx),
            (METHOD_END_BLOCK, Method::EndBlock),
            (METHOD_COMMIT, Method::Commit),
            (METHOD_ROLLBACK, Method::Rollback),
            (METHOD_EXPORT_GENESIS, Method::ExportGenesis),
            (METHOD_GET_COMMITTED_STATE, Method::GetCommittedState),
            (
                METHOD_ARCHIVED_NULLIFIER_PROOF,
                Method::ArchivedNullifierProof,
            ),
            (
                METHOD_APPLY_COMPLIANCE_ACTION,
                Method::ApplyComplianceAction,
            ),
            (METHOD_QUERY_APP_PARAMETERS, Method::QueryAppParameters),
            (
                METHOD_QUERY_ASSET_METADATA_BY_ID,
                Method::QueryAssetMetadataById,
            ),
            (
                METHOD_QUERY_COMPLIANCE_ASSET_STATUS,
                Method::QueryComplianceAssetStatus,
            ),
            (
                METHOD_QUERY_COMPLIANCE_BATCH_MERKLE_PROOFS,
                Method::QueryComplianceBatchMerkleProofs,
            ),
            (
                METHOD_QUERY_COMPLIANCE_USER_LEAF,
                Method::QueryComplianceUserLeaf,
            ),
            (METHOD_QUERY_KEY_VALUE, Method::QueryKeyValue),
            (METHOD_QUERY_NULLIFIER_WINDOW, Method::QueryNullifierWindow),
            (
                METHOD_QUERY_COMMITTED_TRANSACTION,
                Method::QueryCommittedTransaction,
            ),
            (
                METHOD_QUERY_TRANSACTIONS_BY_HEIGHT,
                Method::QueryTransactionsByHeight,
            ),
        ];

        for (id, method) in cases {
            assert!(matches!(Method::try_from(id), Ok(found) if found == method));
        }
        assert!(Method::try_from(u32::MAX).is_err());
    }

    fn call<Request, Response>(
        handle: *mut ShielddHandle,
        method: u32,
        request: Request,
    ) -> Response
    where
        Request: Message,
        Response: Message + Default,
    {
        let request = request.encode_to_vec();
        let result = shieldd_call(handle, method, request.as_ptr(), request.len());
        assert_eq!(result.status, STATUS_OK, "{}", error_text(&result));
        let response = if result.response.len == 0 {
            &[][..]
        } else {
            unsafe { slice::from_raw_parts(result.response.data, result.response.len) }
        };
        let response = Response::decode(response).expect("valid protobuf response");
        free_result(result);
        response
    }

    fn initialize(handle: *mut ShielddHandle) {
        let _: InitGenesisResponse = call(
            handle,
            METHOD_INIT_GENESIS,
            InitGenesisRequest {
                genesis: Some(
                    AppState::Content(Content::default().with_chain_id("bankd-local".to_owned()))
                        .into(),
                ),
            },
        );
        let _: CommitResponse = call(handle, METHOD_COMMIT, CommitRequest {});
        publish(handle);
    }

    fn commit_empty_block(handle: *mut ShielddHandle, height: i64) {
        let mut begin_block = BeginBlockRequest {
            height,
            time: Some(Default::default()),
        };
        begin_block
            .time
            .as_mut()
            .expect("test begin-block time")
            .seconds = 1_700_000_000 + height;
        let _: BeginBlockResponse = call(handle, METHOD_BEGIN_BLOCK, begin_block);
        let _: EndBlockResponse = call(handle, METHOD_END_BLOCK, EndBlockRequest { height });
        let _: CommitResponse = call(handle, METHOD_COMMIT, CommitRequest {});
        publish(handle);
    }

    #[test]
    fn open_once_call_repeatedly_and_close_releases_database() {
        let directory = tempfile::tempdir().expect("temporary database directory");
        let handle = open(directory.path());

        for _ in 0..2 {
            let result = shieldd_call(handle, METHOD_ROLLBACK, ptr::null(), 0);
            assert_eq!(result.status, STATUS_OK, "{}", error_text(&result));
            assert_eq!(result.response.len, 0);
            free_result(result);
        }

        close(handle);

        let reopened = open(directory.path());
        close(reopened);
    }

    #[test]
    fn invalid_inputs_return_c_safe_statuses() {
        let null_handle = shieldd_call(ptr::null_mut(), METHOD_ROLLBACK, ptr::null(), 0);
        assert_eq!(null_handle.status, STATUS_INVALID_ARGUMENT);
        assert!(error_text(&null_handle).contains("handle must not be null"));
        free_result(null_handle);

        let directory = tempfile::tempdir().expect("temporary database directory");
        let handle = open(directory.path());
        let malformed = [0x80];
        let invalid_proto = shieldd_call(
            handle,
            METHOD_BEGIN_BLOCK,
            malformed.as_ptr(),
            malformed.len(),
        );
        assert_eq!(invalid_proto.status, STATUS_INVALID_ARGUMENT);
        assert!(error_text(&invalid_proto).contains("invalid protobuf request"));
        free_result(invalid_proto);

        let unknown = shieldd_call(handle, u32::MAX, ptr::null(), 0);
        assert_eq!(unknown.status, STATUS_INVALID_ARGUMENT);
        assert!(error_text(&unknown).contains("unknown Shieldd method"));
        free_result(unknown);
        close(handle);
    }

    #[test]
    fn historical_witness_call_rejects_missing_nullifier() {
        let directory = tempfile::tempdir().expect("temporary database directory");
        let handle = open(directory.path());
        initialize(handle);

        let request = ArchivedNullifierProofRequest {
            generation_index: 0,
            nullifier: None,
        }
        .encode_to_vec();
        let result = shieldd_call(
            handle,
            METHOD_ARCHIVED_NULLIFIER_PROOF,
            request.as_ptr(),
            request.len(),
        );
        assert_eq!(result.status, STATUS_INVALID_ARGUMENT);
        assert!(error_text(&result).contains("missing nullifier"));
        free_result(result);
        close(handle);
    }

    #[test]
    fn compliance_action_is_dispatched_through_the_ffi() {
        let directory = tempfile::tempdir().expect("temporary database directory");
        let handle = open(directory.path());
        initialize(handle);
        let mut begin_block = BeginBlockRequest {
            height: 1,
            time: Some(Default::default()),
        };
        begin_block
            .time
            .as_mut()
            .expect("test begin-block time")
            .seconds = 1_700_000_001;
        let _: BeginBlockResponse = call(handle, METHOD_BEGIN_BLOCK, begin_block);

        let request = ApplyComplianceActionRequest {
            source: Some(HostSource {
                height: 1,
                tx_hash: [7u8; 32].to_vec(),
                tx_index: 0,
                msg_index: 0,
            }),
            action: None,
        }
        .encode_to_vec();
        let result = shieldd_call(
            handle,
            METHOD_APPLY_COMPLIANCE_ACTION,
            request.as_ptr(),
            request.len(),
        );

        assert_eq!(result.status, STATUS_INVALID_ARGUMENT);
        let error = error_text(&result);
        assert!(
            error.contains("host compliance action is required"),
            "unexpected rejection: {error}"
        );
        free_result(result);
        close(handle);
    }

    #[test]
    fn calls_sharing_a_handle_are_serialized() {
        let directory = tempfile::tempdir().expect("temporary database directory");
        let handle = open(directory.path());
        let handle_address = handle as usize;

        let threads = (0..8)
            .map(|_| {
                std::thread::spawn(move || {
                    let handle = handle_address as *mut ShielddHandle;
                    for _ in 0..16 {
                        let result = shieldd_call(handle, METHOD_ROLLBACK, ptr::null(), 0);
                        assert_eq!(result.status, STATUS_OK, "{}", error_text(&result));
                        free_result(result);
                    }
                })
            })
            .collect::<Vec<_>>();

        for thread in threads {
            thread.join().expect("call thread completed");
        }
        close(handle);
    }

    #[test]
    fn committed_state_is_available_through_the_ffi() {
        let directory = tempfile::tempdir().expect("temporary database directory");
        let handle = open(directory.path());

        let _: InitGenesisResponse = call(
            handle,
            METHOD_INIT_GENESIS,
            InitGenesisRequest {
                genesis: Some(
                    AppState::Content(Content::default().with_chain_id("bankd-local".to_owned()))
                        .into(),
                ),
            },
        );
        let commit: CommitResponse = call(handle, METHOD_COMMIT, CommitRequest {});
        publish(handle);
        let committed: GetCommittedStateResponse = call(
            handle,
            METHOD_GET_COMMITTED_STATE,
            GetCommittedStateRequest {},
        );

        assert_eq!(committed.height, 0);
        assert_eq!(committed.root_hash, commit.root_hash);
        close(handle);
    }

    #[test]
    fn app_parameters_query_reads_committed_genesis() {
        let directory = tempfile::tempdir().expect("temporary database directory");
        let handle = open(directory.path());

        let request = AppParametersRequest {}.encode_to_vec();
        let uninitialized = shieldd_call(
            handle,
            METHOD_QUERY_APP_PARAMETERS,
            request.as_ptr(),
            request.len(),
        );
        assert_eq!(uninitialized.status, STATUS_FAILED_PRECONDITION);
        assert!(error_text(&uninitialized).contains("no jointly committed state"));
        free_result(uninitialized);

        initialize(handle);
        let response: AppParametersResponse =
            call(handle, METHOD_QUERY_APP_PARAMETERS, AppParametersRequest {});

        let parameters = response
            .app_parameters
            .expect("app parameters response contains parameters");
        assert_eq!(parameters.chain_id, "bankd-local");
        assert!(parameters.compliance_params.is_some());
        assert!(parameters.fee_params.is_some());
        assert!(parameters.sct_params.is_some());
        assert!(parameters.shielded_pool_params.is_some());
        close(handle);
    }

    #[test]
    fn frontend_queries_read_committed_state() {
        let directory = tempfile::tempdir().expect("temporary database directory");
        let handle = open(directory.path());
        initialize(handle);

        let asset_id = asset::REGISTRY.parse_unit("shieldd").id();
        let asset_id_proto: shieldd_sdk_proto::core::asset::v1::AssetId = asset_id.into();
        let address: shieldd_sdk_proto::core::keys::v1::Address = ADDRESS_0.clone().into();

        let metadata_response: AssetMetadataByIdResponse = call(
            handle,
            METHOD_QUERY_ASSET_METADATA_BY_ID,
            AssetMetadataByIdRequest {
                asset_id: Some(asset_id_proto.clone()),
            },
        );
        assert_eq!(
            metadata_response
                .denom_metadata
                .expect("known genesis asset metadata")
                .base,
            "ushieldd"
        );

        let status_response: ComplianceAssetStatusResponse = call(
            handle,
            METHOD_QUERY_COMPLIANCE_ASSET_STATUS,
            ComplianceAssetStatusRequest {
                asset_id: Some(asset_id_proto.clone()),
            },
        );
        assert!(status_response.is_registered);
        assert!(!status_response.is_regulated);

        let leaf_response: ComplianceUserLeafResponse = call(
            handle,
            METHOD_QUERY_COMPLIANCE_USER_LEAF,
            ComplianceUserLeafRequest {
                address: Some(address.clone()),
                asset_id: Some(asset_id_proto.clone()),
            },
        );
        assert!(!leaf_response.is_registered);
        assert!(leaf_response.leaf.is_none());

        let batch_response: ComplianceBatchMerkleProofsResponse = call(
            handle,
            METHOD_QUERY_COMPLIANCE_BATCH_MERKLE_PROOFS,
            ComplianceBatchMerkleProofsRequest {
                queries: vec![ComplianceBatchQuery {
                    address: Some(address),
                    asset_id: Some(asset_id_proto),
                }],
            },
        );
        assert_eq!(batch_response.compliance_anchor.len(), 32);
        assert_eq!(batch_response.asset_anchor.len(), 32);
        assert_eq!(batch_response.results.len(), 1);
        assert!(!batch_response.results[0].user_registered);
        assert!(batch_response.results[0].asset_registered);
        assert!(!batch_response.results[0].is_regulated);

        let key_response: KeyValueResponse = call(
            handle,
            METHOD_QUERY_KEY_VALUE,
            KeyValueRequest {
                key: shieldd_sdk_sct::state_key::tree::anchor_by_height(0),
                proof: false,
            },
        );
        assert!(key_response.value.is_some());
        assert!(key_response.proof.is_none());

        let nullifier_window: NullifierWindowResponse = call(
            handle,
            METHOD_QUERY_NULLIFIER_WINDOW,
            NullifierWindowRequest {},
        );
        let window = nullifier_window
            .window
            .expect("initialized state contains a nullifier window");
        assert_eq!(
            window.protocol_version,
            shieldd_sdk_sct::nullifier_generation::PROTOCOL_VERSION
        );
        assert_eq!(window.current_generation, 0);
        close(handle);
    }

    #[test]
    fn compact_pages_reject_future_heights_and_expose_committed_headers() {
        let directory = tempfile::tempdir().expect("temporary directory");
        let handle = open(directory.path());
        initialize(handle);
        commit_empty_block(handle, 1);
        for height in [0, 1] {
            let page: CompactBlockPageResponse = call(
                handle,
                METHOD_QUERY_COMPACT_BLOCK_PAGE,
                CompactBlockPageRequest {
                    height,
                    cursor: Vec::new(),
                },
            );
            let page = page.page.expect("compact page");
            assert_eq!(page.height, height);
            assert_eq!(
                page.fragments[0].kind,
                shieldd_sdk_proto::core::component::compact_block::v1::CompactRecordKind::Header
                    as i32
            );
            assert_eq!(page.fragments[0].offset, 0);
            assert!(!page.block_identity.is_empty());
        }
        let request = CompactBlockPageRequest {
            height: 2,
            cursor: Vec::new(),
        }
        .encode_to_vec();
        let result = shieldd_call(
            handle,
            METHOD_QUERY_COMPACT_BLOCK_PAGE,
            request.as_ptr(),
            request.len(),
        );
        assert_eq!(result.status, STATUS_FAILED_PRECONDITION);
        free_result(result);
        close(handle);
    }

    #[test]
    fn ffi_execution_check_tx_rejects_invalid_transaction() {
        let directory = tempfile::tempdir().expect("temporary database directory");
        let handle = open(directory.path());
        initialize(handle);

        let response: CheckTxResponse = call(
            handle,
            METHOD_CHECK_TX,
            CheckTxRequest {
                tx: b"not a shieldd transaction".to_vec(),
            },
        );

        assert_eq!(response.code, 1);
        assert!(response.log.contains("decoding transaction"));
        close(handle);
    }

    #[test]
    fn ffi_execution_deliver_tx_rejects_invalid_transaction() {
        let directory = tempfile::tempdir().expect("temporary database directory");
        let handle = open(directory.path());
        initialize(handle);
        let mut begin_block = BeginBlockRequest {
            height: 1,
            time: Some(Default::default()),
        };
        begin_block
            .time
            .as_mut()
            .expect("test begin-block time")
            .seconds = 1_700_000_000;
        let _: BeginBlockResponse = call(handle, METHOD_BEGIN_BLOCK, begin_block);

        let response: DeliverTxResponse = call(
            handle,
            METHOD_DELIVER_TX,
            DeliverTxRequest {
                tx: b"not a shieldd transaction".to_vec(),
            },
        );

        assert_eq!(response.code, 1);
        assert!(response.log.contains("decoding transaction"));
        close(handle);
    }

    #[test]
    fn failed_open_clears_output_handle_before_validating_input() {
        let mut handle = std::ptr::dangling_mut::<ShielddHandle>();
        let result = shieldd_open(ptr::null(), 1, ptr::null(), 0, &mut handle);
        assert_eq!(result.status, STATUS_INVALID_ARGUMENT);
        free_result(result);
        assert!(handle.is_null());

        handle = std::ptr::dangling_mut::<ShielddHandle>();
        let result = shieldd_open(b"db".as_ptr(), 2, ptr::null(), 1, &mut handle);
        assert_eq!(result.status, STATUS_INVALID_ARGUMENT);
        free_result(result);
        assert!(handle.is_null());
    }

    #[test]
    fn panics_become_status_results() {
        let result = boundary(|| -> std::result::Result<Vec<u8>, FfiError> {
            panic!("test panic");
        });

        assert_eq!(result.status, STATUS_PANIC);
        assert!(error_text(&result).contains("test panic"));
        free_result(result);
    }

    #[test]
    fn buffer_free_is_idempotent_for_the_same_buffer_struct() {
        let mut buffer = ShielddBuffer::from_vec(vec![1, 2, 3]);

        shieldd_buffer_free(&mut buffer);
        assert!(buffer.data.is_null());
        assert_eq!(buffer.len, 0);
        shieldd_buffer_free(&mut buffer);
    }
}
