//! The Shieldd shielded pool [`Component`] and [`ActionHandler`] implementations.

mod action_handler;
mod assets;
mod fmd;
mod ics20_withdrawal_with_handler;
mod metrics;
mod note_manager;
mod shielded_pool;
mod transfer;

pub use self::metrics::register_metrics;
pub use assets::{AssetRegistry, AssetRegistryRead};
pub use fmd::ClueManager;
pub use ics20_withdrawal_with_handler::Ics20WithdrawalWithHandler;
pub use note_manager::{build_position_derived_mint_payload, NoteManager};
pub use shielded_pool::{ShieldedPool, StateReadExt, StateWriteExt};
#[cfg(feature = "benchmark-helpers")]
pub(crate) use transfer::benchmark_parse_ics20_receive_context;
pub use transfer::Ics20Transfer;

// Checked batch-verification entry points for process_proposal.
pub use action_handler::note_reshape_action::note_reshape_check_stateless_and_extract;
pub use action_handler::shielded_ics20_withdrawal::shielded_ics20_withdrawal_check_stateless_and_extract;
pub use action_handler::transfer::transfer_check_stateless_and_extract;
#[cfg(all(test, any(unix, windows)))]
pub(crate) use action_handler::transfer::transfer_extract_public;

pub mod rpc;
