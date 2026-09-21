//! Jubjub KEM and Poseidon field-stream primitives shared by compliance tiers.
use anyhow::{ensure, Result};
use group::Group;
use sha2::{Digest, Sha512};
use shieldd_sdk_asset::asset;
use shieldd_sdk_crypto::{audit::point_fields, domains, encoding, poseidon, Fq, Fr, SubgroupPoint};
use shieldd_sdk_keys::Address;

pub use shieldd_sdk_crypto::audit::{UNREGULATED_DETECTION, UNREGULATED_RING};

const DERIVATION_DOMAIN: &[u8] = b"elgamal-derivation-v1\0\0";

pub fn compliance_derivation(address: &Address) -> Vec<u8> {
    address.to_vec()
}

/// Orbis must use this suite-tagged address and canonical wide scalar reduction.
pub fn derive_compliance_scalar(address: &Address) -> Fr {
    capability_scalar(&compliance_derivation(address))
}

fn capability_scalar(derivation: &[u8]) -> Fr {
    let mut hasher = Sha512::new();
    hasher.update(DERIVATION_DOMAIN);
    hasher.update(derivation);
    Fr::from_bytes_wide(&hasher.finalize().into())
}

pub fn shared_secret(point: &SubgroupPoint) -> Fq {
    poseidon::hash(domains::SHARED_SECRET, &point_fields(point))
}

pub fn detection_seed(shared: &SubgroupPoint, epk: &SubgroupPoint) -> Fq {
    let [sx, sy] = point_fields(shared);
    let [ex, ey] = point_fields(epk);
    poseidon::hash(domains::DETECTION, &[sx, sy, ex, ey])
}

pub fn transfer_key_confirmation(seed: Fq, epk: &SubgroupPoint, tier_salt: Fq) -> Fq {
    let [x, y] = point_fields(epk);
    poseidon::hash(domains::KEY_CONFIRMATION, &[seed, x, y, tier_salt])
}

pub fn compliance_stream_block(seed: Fq, counter: u64) -> Fq {
    poseidon::hash(domains::ENCRYPTION_STREAM, &[seed, Fq::from(counter)])
}

pub fn encrypt_tier_bytes(plaintext: &[u8], seed: Fq) -> Vec<u8> {
    encoding::pack(plaintext)
        .into_iter()
        .enumerate()
        .flat_map(|(i, word)| (word + compliance_stream_block(seed, i as u64)).to_bytes())
        .collect()
}

pub fn decrypt_detection_tier(
    dk: &Fr,
    epk: &SubgroupPoint,
    ciphertext: &[u8; crate::DETECTION_TIER_BYTES],
    expected_asset_id: &asset::Id,
) -> Result<(asset::Id, bool, Fq)> {
    crate::issuer_keys::decrypt_detection(&(epk * dk), epk, ciphertext, expected_asset_id)
}

/// Rejects noncanonical field ciphertexts and nonzero plaintext padding.
pub fn decrypt_tier_bytes(encrypted: &[u8], seed: Fq, expected_len: usize) -> Result<Vec<u8>> {
    ensure!(
        expected_len.div_ceil(31).checked_mul(32) == Some(encrypted.len()),
        "encrypted tier length mismatch"
    );
    let mut plaintext = Vec::with_capacity(expected_len);
    for (i, chunk) in encrypted.chunks_exact(32).enumerate() {
        let word = encoding::field(chunk.try_into()?)? - compliance_stream_block(seed, i as u64);
        let bytes = word.to_bytes();
        let take = 31.min(expected_len - plaintext.len());
        ensure!(
            bytes[take..].iter().all(|byte| *byte == 0),
            "noncanonical tier plaintext padding"
        );
        plaintext.extend_from_slice(&bytes[..take]);
    }
    Ok(plaintext)
}

pub fn ensure_nonidentity(point: &SubgroupPoint) -> Result<()> {
    ensure!(
        !bool::from(point.is_identity()),
        "identity compliance point"
    );
    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn tier_round_trip_rejects_noncanonical_fields_padding_and_lengths() {
        for length in [0, 1, 30, 31, 32, 64] {
            let plaintext = vec![255; length];
            let seed = Fq::from(7);
            let ciphertext = encrypt_tier_bytes(&plaintext, seed);
            assert_eq!(
                decrypt_tier_bytes(&ciphertext, seed, length).unwrap(),
                plaintext
            );
            assert!(decrypt_tier_bytes(&[255; 32], seed, 1).is_err());
            if length > 0 {
                assert!(
                    decrypt_tier_bytes(&ciphertext[..ciphertext.len() - 1], seed, length).is_err()
                );
                let wrong_length = length - 1;
                assert!(decrypt_tier_bytes(&ciphertext, seed, wrong_length).is_err());
            }
        }
    }
    #[test]
    fn capability_derivation_binds_suite_and_full_address() {
        let a = &*shieldd_sdk_keys::test_keys::ADDRESS_0;
        let b = &*shieldd_sdk_keys::test_keys::ADDRESS_1;
        assert_eq!(compliance_derivation(a).len(), 49);
        assert_eq!(compliance_derivation(a)[0], shieldd_sdk_crypto::SUITE);
        assert_ne!(derive_compliance_scalar(a), derive_compliance_scalar(b));
        assert_ne!(
            capability_scalar(&compliance_derivation(a)),
            capability_scalar(&compliance_derivation(a)[1..])
        );
    }
}
