#![deny(clippy::unwrap_used)]
#![cfg_attr(docsrs, feature(doc_cfg))]

// Exercise proof fixtures with the native daemon's allocator and purge policy.
// The system allocator retains large freed proving allocations across test cases.
#[cfg(all(test, not(target_env = "msvc")))]
#[global_allocator]
static GLOBAL: tikv_jemallocator::Jemalloc = tikv_jemallocator::Jemalloc;

#[cfg(all(test, not(target_env = "msvc")))]
#[allow(non_upper_case_globals)]
#[export_name = "_rjem_malloc_conf"]
pub static malloc_conf: &[u8] = b"dirty_decay_ms:0,muzzy_decay_ms:0\0";

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
