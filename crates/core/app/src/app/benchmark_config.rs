use std::sync::OnceLock;

pub(super) fn max_transaction_size_bytes_override() -> usize {
    static OVERRIDE: OnceLock<usize> = OnceLock::new();
    *OVERRIDE.get_or_init(|| {
        std::env::var("SHIELDD_MAX_TRANSACTION_SIZE_BYTES")
            .ok()
            .and_then(|value| value.parse::<usize>().ok())
            .filter(|value| *value > 0)
            .unwrap_or(super::MAX_TRANSACTION_SIZE_BYTES)
    })
}
