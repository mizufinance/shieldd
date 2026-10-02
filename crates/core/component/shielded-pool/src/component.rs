//! Shielded-pool implementations of [`shieldd_sdk_storage::Component`] and
//! [`shieldd_sdk_storage::ActionHandler`].

mod action_handler;
mod assets;
mod note_manager;
mod shielded_pool;

pub use assets::{AssetRegistry, AssetRegistryRead};
pub use note_manager::{build_position_derived_mint_payload, NoteManager};
pub use shielded_pool::{PendingVolume, ShieldedPool, StateReadExt, StateWriteExt, PENDING_VOLUME};

pub use action_handler::note_reshape_action::{
    note_reshape_check_stateless_and_extract, note_reshape_execute_verified,
};
pub use action_handler::shielded_host_withdrawal::{
    shielded_host_withdrawal_check_stateless_and_extract,
    shielded_host_withdrawal_execute_verified, shielded_host_withdrawal_verify_auth_sig,
};
#[cfg(all(test, all(feature = "prover", any(unix, windows))))]
pub(crate) use action_handler::transfer::transfer_extract_public;
pub use action_handler::transfer::{
    transfer_check_stateless_and_extract, transfer_execute_validated, transfer_execute_verified,
    transfer_validate_verified, ValidatedTransferExecution,
};

pub mod query;
