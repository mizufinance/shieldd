//! Ownership encryption binds both validated address points; PET is external.
use anyhow::Result;
pub use shieldd_sdk_crypto::audit::OwnershipCiphertext;
use shieldd_sdk_crypto::{audit::AddressPoints, Fr, SubgroupPoint};
use shieldd_sdk_keys::Address;

pub fn fingerprint(address: &Address) -> SubgroupPoint {
    points(address).fingerprint()
}

pub fn encrypt(
    address: &Address,
    checking: SubgroupPoint,
    randomness: Fr,
) -> Result<OwnershipCiphertext> {
    OwnershipCiphertext::encrypt(&points(address), checking, randomness)
}

fn points(address: &Address) -> AddressPoints {
    AddressPoints::new(
        *address.diversified_generator(),
        *address.transmission_point(),
    )
    .expect("validated address")
}
