#![deny(clippy::unwrap_used)]
#![cfg_attr(docsrs, feature(doc_cfg))]

/// The original-key prefix used for historical block transaction data.
pub static COMETBFT_SUBSTORE_PREFIX: &'static str = "cometbft-data";

pub mod app_version;
#[cfg(feature = "component")]
pub mod registry_binding;
pub use app_version::APP_VERSION;

pub mod genesis;
pub mod params;

cfg_if::cfg_if! {
    if #[cfg(feature="component")] {
        pub mod app;
        pub mod block_tx_indexing;
        pub mod metrics;
        pub mod stateless_cache;
        #[cfg(any(test, feature = "benchmark-helpers"))]
        pub mod test_support;

        mod action_handler;


    }
}
