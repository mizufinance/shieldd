//! Hardcoded test keys used by the `Default` genesis state and test code.

use once_cell::sync::Lazy;

use crate::{
    keys::{Bip44Path, SpendKey, WalletId},
    Address, FullViewingKey,
};

/// Seed phrase for deterministic tests and genesis fixtures.
pub const SEED_PHRASE: &str = "comfort ten front cycle churn burger oak absent rice ice urge result art couple benefit cabbage frequent obscure hurry trick segment cool job debate";

/// These addresses both correspond to the test wallet above.
pub const ADDRESS_0_STR: &str =
    "shieldd1qyn84grsmdwknvcwfppfqck9tpucuw9shrv0jy0y7cesz4ln6ucgwk0nlh0f8l09l2qgydjmttsztkggak2g7";
/// These addresses both correspond to the test wallet above.
pub const ADDRESS_1_STR: &str =
    "shieldd1q9mj4q4u2sy05hgag74hgp0mmnak2sd07930mqef5dpwz9mvd7uq2jprrcr0sz4ckhkc5vvga2lgs7sg8fct7";

pub static ADDRESS_0: Lazy<Address> = Lazy::new(|| FULL_VIEWING_KEY.payment_address(0u32.into()));
pub static ADDRESS_1: Lazy<Address> = Lazy::new(|| FULL_VIEWING_KEY.payment_address(1u32.into()));

/// The test account's spend key.
pub static SPEND_KEY: Lazy<SpendKey> = Lazy::new(|| {
    SpendKey::from_seed_phrase_bip44(
        SEED_PHRASE
            .parse()
            .expect("hardcoded test seed phrase should be valid"),
        &Bip44Path::new(0),
    )
    .expect("hardcoded test spend key satisfies key refinement invariants")
});

/// The test account's full viewing key, as a string.
pub const FULL_VIEWING_KEY_STR: &str = "shielddfullviewingkey1q85ec7070vjuntsqf647mt9y6q6y9sfag24sq77hkd5kvc6utla9u0pn9shr8h2rmu8kfcndlr67864qnaweny5vug4sndlwqgvprxts0vvmuu";

/// The test account's full viewing key.
pub static FULL_VIEWING_KEY: Lazy<FullViewingKey> =
    Lazy::new(|| SPEND_KEY.full_viewing_key().clone());

pub static WALLET_ID: Lazy<WalletId> = Lazy::new(|| FULL_VIEWING_KEY.wallet_id());

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_fvk_matches() {
        assert_eq!(*FULL_VIEWING_KEY, *SPEND_KEY.full_viewing_key());
        assert_eq!(*FULL_VIEWING_KEY, FULL_VIEWING_KEY_STR.parse().unwrap());
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
