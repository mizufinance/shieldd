//! The `shieldd-sdk-app-tests` crate stores workspace-wide test logic
//! for the Shieldd app components.

/// Local key registry shared by integration fixtures.
pub fn registry() -> std::sync::Arc<shieldd_sdk_proof_params::pari::Registry> {
    static KEYS: std::sync::OnceLock<std::sync::Arc<shieldd_sdk_proof_params::pari::Registry>> =
        std::sync::OnceLock::new();
    KEYS.get_or_init(|| {
        std::sync::Arc::new(
            shieldd_sdk_proof_params::pari::Registry::load(
                std::env::var("SHIELDD_PARI_KEYS")
                    .expect("integration tests require local Pari keys"),
            )
            .expect("valid test registry"),
        )
    })
    .clone()
}
