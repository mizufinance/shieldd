//! Hardcoded test keys used by the `Default` genesis state and test code.

use once_cell::sync::Lazy;

use crate::{
    keys::{Bip44Path, SpendKey, WalletId},
    Address, FullViewingKey,
};

/// This address is for test purposes, allocations were added beginning with
/// the 062-Iapetus testnet.
/// Previously the test data was generated using BIP39 derivation starting with
/// the 016-Pandia testnet.
pub const SEED_PHRASE: &str = "comfort ten front cycle churn burger oak absent rice ice urge result art couple benefit cabbage frequent obscure hurry trick segment cool job debate";

/// These addresses both correspond to the test wallet above.
pub const ADDRESS_0_STR: &str =
    "shieldd1u29dhz4vxgnek6a3vzxlejg0l83wegpu7hgs3yphdvljcnnnh89dvs6lc9hxxw94w464t7lh5x36cxnxyx0";
/// These addresses both correspond to the test wallet above.
pub const ADDRESS_1_STR: &str =
    "shieldd1nrvgexa9tq9y242r6s7mqa6qlkfqmu45k9cwyrh66faaj8eupldkw837cjgv8qkfwedsdzmlypseupefutj";

pub static ADDRESS_0: Lazy<Address> = Lazy::new(|| {
    ADDRESS_0_STR
        .parse()
        .expect("hardcoded test addresses should be valid")
});
pub static ADDRESS_1: Lazy<Address> = Lazy::new(|| {
    ADDRESS_1_STR
        .parse()
        .expect("hardcoded test addresses should be valid")
});

/// The test account's spend key.
pub static SPEND_KEY: Lazy<SpendKey> = Lazy::new(|| {
    SpendKey::from_seed_phrase_bip44(
        SEED_PHRASE
            .parse()
            .expect("hardcoded test seed phrase should be valid"),
        &Bip44Path::new(0),
    )
});

/// The test account's full viewing key, as a string.
pub const FULL_VIEWING_KEY_STR: &str = "shielddfullviewingkey1m3409f50z92qajpkw93wp7d5yumdyfvqqz2pj5h8dp0v28z8svzqh7awek4q262g500pswwd5fmg6u4dv0n4rnag0mvcwjudr5p3grqnhg43u";

/// The test account's full viewing key.
pub static FULL_VIEWING_KEY: Lazy<FullViewingKey> = Lazy::new(|| {
    FULL_VIEWING_KEY_STR
        .parse()
        .expect("hardcoded test fvk should be valid")
});

pub static WALLET_ID: Lazy<WalletId> = Lazy::new(|| FULL_VIEWING_KEY.wallet_id());

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_fvk_matches() {
        assert_eq!(*FULL_VIEWING_KEY, *SPEND_KEY.full_viewing_key());
    }

    #[test]
    fn test_addresses_match_viewing_key() {
        assert_eq!(
            ADDRESS_0_STR,
            FULL_VIEWING_KEY.payment_address(0u32.into()).to_string()
        );
        assert_eq!(
            ADDRESS_1_STR,
            FULL_VIEWING_KEY.payment_address(1u32.into()).to_string()
        );
    }
}
