//! Data modeling for Shieldd transactions.
//!
//! This crate defines data structures that provide modeling of shielded
//! transactions through their entire lifecycle:
//!
//! * the [`TransactionPlan`](TransactionPlan) type completely describes a
//! planned transaction before it is created;
//!
//! * the [`Transaction`] type represents the shielded transaction itself;
//!
//! * the [`TransactionView`] type represents a view from a particular
//! [`TransactionPerspective`] (e.g., the sender or receiver) of the cleartext
//! contents of a shielded transaction after it has been created.

#![deny(clippy::unwrap_used)]
#![allow(clippy::clone_on_copy)]
// Requires nightly.
#![cfg_attr(docsrs, feature(doc_cfg))]

mod auth_data;
mod error;
mod fee_funding;
mod is_action;
mod parameters;
mod transaction;
mod witness_data;

pub mod action;
pub mod gas;
pub mod memo;
pub mod plan;
pub mod view;

pub use action::Action;
pub use auth_data::AuthorizationData;
pub use error::Error;
pub use fee_funding::{FeeFunding, FeeFundingPlan};
pub use is_action::IsAction;
pub use parameters::TransactionParameters;
pub use plan::{ActionPlan, TransactionPlan};
pub use shieldd_sdk_txhash as txhash;
pub use transaction::{
    is_no_binding_signature, no_binding_signature, Transaction, TransactionBody, TransactionSummary,
};
pub use view::{ActionView, MemoPlaintextView, MemoView, TransactionPerspective, TransactionView};
pub use witness_data::WitnessData;
