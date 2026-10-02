//! Authenticated state contracts and owned execution overlays.
mod commitment;
mod delta;
mod effects;
#[cfg(feature = "persistent")]
mod forest;
mod manifest;
mod observation;
mod proof;
#[cfg(feature = "persistent")]
mod raw;
mod read;
mod receipt;
#[cfg(feature = "persistent")]
mod store;
mod write;

pub use commitment::{nullifier_key, nullifier_shard, volume_key, ValueCommitment, SPENT};
pub use delta::{ArcStateDeltaExt, Cache, StateDelta};
pub use effects::{application_key, Effect, Effects, Space};
#[cfg(feature = "persistent")]
pub use forest::{Forest, ForestConfig, ForestUpdate, ParticipantChange, ParticipantId};
pub use manifest::{Day, Manifest, Participant, ParticipantKind};
pub use observation::{Observations, ObservedValue};
pub use proof::{authenticate, AuthenticatedValue};
#[cfg(feature = "persistent")]
pub use raw::{ordered_effects, RawStore, Snapshot};
pub use read::{ReadView, StateRead};
pub use receipt::{Receipt, Recorder, ReplayAction, ReplayStep};
#[cfg(feature = "persistent")]
pub use store::{BlockBoundary, Prepared, Storage};
pub use write::StateWrite;

pub const MAX_NULLIFIERS_PER_BLOCK: usize = 131_072;
pub const MAX_CALLS: usize = 131_072;
pub const MAX_SCOPES: usize = 262_144;
pub const MAX_DEPTH: usize = 1_024;
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
