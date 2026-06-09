//! [`TendermintProxyService`] implementations for use in [`shieldd-mock-consensus`] tests.

mod proxy;
mod stub;

pub use crate::{proxy::TestNodeProxy, stub::StubProxy};
