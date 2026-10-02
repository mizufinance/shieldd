//! Wallet planning, scanning, compliance projection and durable local storage.

#![deny(clippy::unwrap_used)]
#![recursion_limit = "512"]
// Requires nightly.
#![cfg_attr(docsrs, feature(doc_cfg))]
mod client_compliance;
mod compliance_tree;
mod issued_address;
mod note_manager;
mod note_record;
mod provider;
#[cfg(feature = "rpc")]
mod provider_rpc;
#[cfg(feature = "rpc")]
pub use provider_rpc::RpcSyncProvider;
mod storage;
mod sync;
mod worker;
pub use provider::{HostBlock, NullifierAnchors, SyncLimits, SyncMode, SyncProvider};

pub use crate::client_compliance::{
    complete_plan_with_compliance, CompletionData, VolumeRecoveryRecord,
};
pub use crate::compliance_tree::{ComplianceAssetTree, ComplianceUserTree};

pub use crate::issued_address::{AddressPurpose, IssuedAddress};
pub use crate::note_manager::{
    NoteManager, NoteManagerPlanningResult, NoteManagerResumeToken, TransferResumeToken,
};
pub use crate::note_record::SpendableNoteRecord;
pub use crate::storage::{
    ConfirmedVolumeAccumulator, Storage, VolumeAccumulatorRecovery, VolumeAccumulatorReservation,
};

pub mod planning_intent;

pub mod planning_io;

pub use worker::{SyncWorker, WalletBlock};

mod storage_planning;
pub use storage_planning::StoragePlanningIo;

mod sweep;
pub use sweep::sweep;
