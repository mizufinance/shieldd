mod client;
mod types;

pub use client::OrbisClient;
pub use types::{DkgResult, NodeInfo, PreResult, RingInfo, StoreSecretResult};

/// Canonical bulletin namespace used by all Shieldd↔Orbis flows.
pub const ORBIS_NAMESPACE: &str = "orbis";
