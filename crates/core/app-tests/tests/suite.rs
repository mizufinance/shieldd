mod common;

#[path = "suite/app_can_sweep_a_collection_of_small_notes.rs"]
mod app_can_sweep_a_collection_of_small_notes;
#[path = "suite/app_can_transfer_notes_and_detect_new_notes.rs"]
mod app_can_transfer_notes_and_detect_new_notes;
#[path = "suite/compliance_diversifier_fix.rs"]
mod compliance_diversifier_fix;
#[cfg(feature = "disclosure-e2e")]
#[path = "suite/disclosure.rs"]
mod disclosure;
#[path = "suite/host_blocks.rs"]
mod host_blocks;
#[path = "suite/joint_registration.rs"]
mod joint_registration;
#[path = "suite/local_wallet_planning.rs"]
mod local_wallet_planning;
#[path = "suite/paid_wallet_withdrawal.rs"]
mod paid_wallet_withdrawal;
#[path = "suite/private_avp.rs"]
mod private_avp;
#[path = "suite/storage_query.rs"]
mod storage_query;
