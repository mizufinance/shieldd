use std::{
    any::Any,
    panic::{catch_unwind, AssertUnwindSafe},
    path::PathBuf,
    ptr, slice, str,
};

use prost::Message;
use tokio::runtime::{Builder, Runtime};

use crate::{ErrorKind, ExecutionService, ServiceError};

const ABI_VERSION: u32 = 1;
const STATUS_OK: i32 = 0;
const STATUS_INVALID_ARGUMENT: i32 = 1;
const STATUS_FAILED_PRECONDITION: i32 = 2;
const STATUS_INTERNAL: i32 = 3;
const STATUS_PANIC: i32 = 4;

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

#[repr(C)]
pub struct ShielddHandle {
    _private: [u8; 0],
}

struct Handle {
    runtime: Runtime,
    service: tokio::sync::Mutex<ExecutionService>,
}

#[repr(C)]
pub struct ShielddBuffer {
    pub data: *mut u8,
    pub len: usize,
}

impl ShielddBuffer {
    fn empty() -> Self {
        Self {
            data: ptr::null_mut(),
            len: 0,
        }
    }

    fn from_vec(data: Vec<u8>) -> Self {
        if data.is_empty() {
            return Self::empty();
        }

        let mut data = data.into_boxed_slice();
        let buffer = Self {
            data: data.as_mut_ptr(),
            len: data.len(),
        };
        std::mem::forget(data);
        buffer
    }
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
            ErrorKind::Internal => STATUS_INTERNAL,
        };
        Self {
            status,
            message: error.to_string(),
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
    out_handle: *mut *mut ShielddHandle,
) -> ShielddResult {
    boundary(|| {
        if out_handle.is_null() {
            return Err(FfiError::invalid_argument("out_handle must not be null"));
        }
        unsafe {
            out_handle.write(ptr::null_mut());
        }

        let db_path = unsafe { input_bytes(db_path, db_path_len)? };
        let db_path = str::from_utf8(db_path).map_err(|error| {
            FfiError::invalid_argument(format!("db_path must be UTF-8: {error}"))
        })?;
        if db_path.is_empty() {
            return Err(FfiError::invalid_argument("db_path must not be empty"));
        }

        let runtime = Builder::new_multi_thread()
            .enable_all()
            .build()
            .map_err(|error| {
                FfiError::internal(format!("failed to create Shieldd runtime: {error}"))
            })?;
        let service = runtime
            .block_on(ExecutionService::open(PathBuf::from(db_path)))
            .map_err(FfiError::service)?;
        let handle = Box::into_raw(Box::new(Handle {
            runtime,
            service: tokio::sync::Mutex::new(service),
        })) as *mut ShielddHandle;
        unsafe {
            out_handle.write(handle);
        }

        Ok(Vec::new())
    })
}

#[no_mangle]
pub extern "C" fn shieldd_call(
    handle: *mut ShielddHandle,
    method: u32,
    request: *const u8,
    request_len: usize,
) -> ShielddResult {
    boundary(|| {
        if handle.is_null() {
            return Err(FfiError::invalid_argument("handle must not be null"));
        }
        let request = unsafe { input_bytes(request, request_len)? };
        let handle = unsafe { &*(handle.cast::<Handle>()) };
        handle.runtime.block_on(async {
            let mut service = handle.service.lock().await;
            dispatch(&mut service, method, request).await
        })
    })
}

#[no_mangle]
pub extern "C" fn shieldd_close(handle: *mut ShielddHandle) -> ShielddResult {
    boundary(|| {
        if handle.is_null() {
            return Err(FfiError::invalid_argument("handle must not be null"));
        }

        let handle = unsafe { Box::from_raw(handle.cast::<Handle>()) };
        let Handle { runtime, service } = *handle;
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
        if !buffer.data.is_null() {
            let data = ptr::slice_from_raw_parts_mut(buffer.data, buffer.len);
            unsafe {
                drop(Box::from_raw(data));
            }
        }
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

async fn dispatch(
    service: &mut ExecutionService,
    method: u32,
    request: &[u8],
) -> std::result::Result<Vec<u8>, FfiError> {
    match method {
        METHOD_INIT_GENESIS => service
            .init_genesis(decode(request)?)
            .await
            .map(|response| response.encode_to_vec())
            .map_err(FfiError::service),
        METHOD_BEGIN_BLOCK => service
            .begin_block(decode(request)?)
            .await
            .map(|response| response.encode_to_vec())
            .map_err(FfiError::service),
        METHOD_DEPOSIT => service
            .deposit(decode(request)?)
            .await
            .map(|response| response.encode_to_vec())
            .map_err(FfiError::service),
        METHOD_CHECK_TX => service
            .check_tx(decode(request)?)
            .await
            .map(|response| response.encode_to_vec())
            .map_err(FfiError::service),
        METHOD_DELIVER_TX => service
            .deliver_tx(decode(request)?)
            .await
            .map(|response| response.encode_to_vec())
            .map_err(FfiError::service),
        METHOD_END_BLOCK => service
            .end_block(decode(request)?)
            .await
            .map(|response| response.encode_to_vec())
            .map_err(FfiError::service),
        METHOD_COMMIT => service
            .commit(decode(request)?)
            .await
            .map(|response| response.encode_to_vec())
            .map_err(FfiError::service),
        METHOD_GET_COMMITTED_STATE => service
            .get_committed_state(decode(request)?)
            .await
            .map(|response| response.encode_to_vec())
            .map_err(FfiError::service),
        METHOD_ROLLBACK => service
            .rollback(decode(request)?)
            .await
            .map(|response| response.encode_to_vec())
            .map_err(FfiError::service),
        METHOD_EXPORT_GENESIS => service
            .export_genesis(decode(request)?)
            .await
            .map(|response| response.encode_to_vec())
            .map_err(FfiError::service),
        _ => Err(FfiError::invalid_argument(format!(
            "unknown Shieldd method {method}"
        ))),
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
    use shieldd_sdk_proto::execution_client::v1::{
        BeginBlockRequest, BeginBlockResponse, CheckTxRequest, CheckTxResponse, CommitRequest,
        CommitResponse, DeliverTxRequest, DeliverTxResponse, GetCommittedStateRequest,
        GetCommittedStateResponse, InitGenesisRequest, InitGenesisResponse,
    };

    fn open(directory: &std::path::Path) -> *mut ShielddHandle {
        let path = directory
            .to_str()
            .expect("temporary directory path is UTF-8")
            .as_bytes();
        let mut handle = ptr::null_mut();
        let result = shieldd_open(path.as_ptr(), path.len(), &mut handle);
        assert_eq!(result.status, STATUS_OK, "{}", error_text(&result));
        free_result(result);
        assert!(!handle.is_null());
        handle
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
