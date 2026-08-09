//! The Shieldd shielded pool [`Component`] and [`ActionHandler`] implementations.

mod action_handler;
mod assets;
mod fmd;
mod metrics;
mod note_manager;
mod shielded_pool;
mod transfer;

pub use self::metrics::register_metrics;
pub use assets::{AssetRegistry, AssetRegistryRead};
pub use fmd::ClueManager;
pub use note_manager::{build_position_derived_mint_payload, NoteManager};
pub use shielded_pool::{ShieldedPool, StateReadExt, StateWriteExt};
#[cfg(feature = "benchmark-helpers")]
pub(crate) use transfer::benchmark_parse_ics20_receive_context;
pub use transfer::Ics20Transfer;

pub use action_handler::note_reshape_action::{
    note_reshape_check_stateless_and_extract, note_reshape_execute_verified,
};
pub use action_handler::shielded_ics20_withdrawal::{
    shielded_ics20_withdrawal_check_stateless_and_extract,
    shielded_ics20_withdrawal_execute_verified,
};
#[cfg(all(test, any(unix, windows)))]
pub(crate) use action_handler::transfer::transfer_extract_public;
pub use action_handler::transfer::{
    transfer_check_stateless_and_extract, transfer_execute_verified,
};

pub mod rpc;
