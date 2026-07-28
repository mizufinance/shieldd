#![deny(clippy::unwrap_used)]

mod ffi;
mod grpc;
mod service;

pub use grpc::GrpcExecutionClient;
pub use service::{ErrorKind, ExecutionService, ServiceError};
