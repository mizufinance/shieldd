pub mod app_version {
    pub fn safeguard() -> &'static str {
        "application/version/safeguard"
    }
}

pub mod genesis {
    pub fn app_state() -> &'static str {
        "application/genesis/app_state"
    }
}

pub mod data {
    pub fn chain_id() -> &'static str {
        "application/data/chain_id"
    }
}

pub mod block_data {
    pub fn transaction_count(height: u64) -> Vec<u8> {
        format!(
            "{}/transactions/{height:020}/count",
            crate::COMETBFT_SUBSTORE_PREFIX
        )
        .into_bytes()
    }
    pub fn transaction_prefix(height: u64) -> Vec<u8> {
        format!(
            "{}/transactions/{height:020}/entry/",
            crate::COMETBFT_SUBSTORE_PREFIX
        )
        .into_bytes()
    }
    pub fn transaction(height: u64, ordinal: u64) -> Vec<u8> {
        let mut key = transaction_prefix(height);
        key.extend_from_slice(&ordinal.to_be_bytes());
        key
    }
    pub fn transaction_id(height: u64, id: [u8; 32]) -> Vec<u8> {
        let mut key = format!(
            "{}/transactions/{height:020}/id/",
            crate::COMETBFT_SUBSTORE_PREFIX
        )
        .into_bytes();
        key.extend_from_slice(&id);
        key
    }
}
