//! Authenticated state contracts and owned execution overlays.
mod action_handler;
#[cfg(feature = "persistent")]
mod capacity;
mod commitment;
mod component;
mod delta;
mod effects;
#[cfg(feature = "persistent")]
mod forest;
mod manifest;
mod native;
mod observation;
mod proof;
mod query_error;
#[cfg(feature = "persistent")]
mod raw;
mod read;
mod receipt;
#[cfg(feature = "persistent")]
mod store;
#[cfg(feature = "test-support")]
mod test_support;
mod write;

pub use action_handler::ActionHandler;
#[cfg(feature = "persistent")]
pub use capacity::{qualification_required, FileCapacity, ParticipantCapacity};
pub use commitment::{nullifier_key, nullifier_shard, volume_key, ValueCommitment, SPENT};
pub use component::{BlockContext, Component};
pub use delta::{ArcStateDeltaExt, Cache, StateDelta};
pub use effects::{application_key, Effect, Effects, Space};
#[cfg(feature = "persistent")]
pub use forest::{Forest, ForestConfig, ForestUpdate, ParticipantChange, ParticipantId};
pub use manifest::{Day, Manifest, Participant, ParticipantKind};
pub use native::{NativeReadScope, NativeTree};
pub use observation::{DeferredReadCredit, DeferredReadGuard, Observations, ObservedValue};
pub use proof::{authenticate, AuthenticatedValue, StateProof};
pub use query_error::{QueryError, QueryErrorKind};
#[cfg(feature = "persistent")]
pub use raw::{ordered_effects, RawStore, Snapshot};
pub use read::{ReadView, StateRead};
pub use receipt::{response_digest as receipt_response_digest, Receipt, Recorder, ReplayStep};
#[cfg(feature = "persistent")]
pub use store::{BlockBoundary, Prepared, Storage};
#[cfg(feature = "test-support")]
pub use test_support::TempStorage;
pub use write::StateWrite;

pub const MAX_NULLIFIERS_PER_BLOCK: usize = 131_072;
pub const MAX_CALLS: usize = 131_072;
pub const MAX_RECEIPT_BYTES: usize = 64 * 1024 * 1024;
pub const MAX_OBSERVATION_BYTES: usize = 128 * 1024 * 1024;
pub const PROOF_CHUNK_TRANSACTIONS: usize = 128;
pub const PROOF_CHUNK_BYTES: usize = 16 * 1024 * 1024;

#[derive(Debug)]
pub struct ProtocolLimitExceeded(pub &'static str);
impl std::fmt::Display for ProtocolLimitExceeded {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        f.write_str(self.0)
    }
}
impl std::error::Error for ProtocolLimitExceeded {}

/// The digest of the complete native boundary, anchored in the SDK store.
#[derive(Clone, Copy, Debug, PartialEq, Eq, serde::Serialize, serde::Deserialize)]
pub struct Commitment(pub [u8; 32]);

/// Shared block-scoped charge; raw values remain in their owning volume overlay.
pub const PENDING_VOLUME_COUNT: &str = "storage/pending_volume_count";

/// A local execution/worker failure must never become a different transaction
/// validity result. The embedding process must cancel and recover its candidate.
#[derive(Debug)]
pub struct LocalProcessingFailure(pub String);
impl std::fmt::Display for LocalProcessingFailure {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        f.write_str(&self.0)
    }
}
impl std::error::Error for LocalProcessingFailure {}
