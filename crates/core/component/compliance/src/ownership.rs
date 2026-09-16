//! Experimental proof-bound ownership encryption. Distributed PET is not implemented.
use anyhow::{ensure, Result};
use decaf377::{Element, Encoding, Fq, Fr};
use once_cell::sync::Lazy;
use shieldd_sdk_keys::Address;

static DOMAIN: Lazy<Fq> = Lazy::new(|| {
    Fq::from_le_bytes_mod_order(blake2b_simd::blake2b(b"shieldd.audit.ownership.v1").as_bytes())
});

pub fn fingerprint(address: &Address) -> Element {
    let generator = address.diversified_generator().vartime_compress_to_field();
    let transmission =
        Fq::from_bytes_checked(&address.transmission_key().0).expect("validated canonical address");
    Element::encode_to_curve(&poseidon377::hash_2(&DOMAIN, (generator, transmission)))
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct OwnershipCiphertext {
    pub r: Element,
    pub c: Element,
}

impl OwnershipCiphertext {
    pub fn encrypt(address: &Address, checking: Element, randomness: Fr) -> Result<Self> {
        ensure!(!checking.is_identity(), "identity checking key");
        ensure!(randomness != Fr::from(0u64), "zero checking randomness");
        Ok(Self {
            r: Element::GENERATOR * randomness,
            c: fingerprint(address) + checking * randomness,
        })
    }

    pub fn to_bytes(self) -> [u8; 64] {
        let mut bytes = [0; 64];
        bytes[..32].copy_from_slice(&self.r.vartime_compress().0);
        bytes[32..].copy_from_slice(&self.c.vartime_compress().0);
        bytes
    }

    pub fn from_bytes(bytes: &[u8]) -> Result<Self> {
        ensure!(bytes.len() == 64, "ownership ciphertext length");
        let point = |start| -> Result<Element> {
            let encoded: [u8; 32] = bytes[start..start + 32].try_into()?;
            let point = Encoding(encoded)
                .vartime_decompress()
                .map_err(|_| anyhow::anyhow!("invalid ownership point"))?;
            ensure!(
                point.vartime_compress().0 == encoded,
                "noncanonical ownership point"
            );
            Ok(point)
        };
        let result = Self {
            r: point(0)?,
            c: point(32)?,
        };
        ensure!(!result.r.is_identity(), "identity ownership ephemeral key");
        Ok(result)
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::test_helpers::make_address;
    #[test]
    #[ignore = "regenerate Rust/gnark ownership parity vectors"]
    fn emit_parity_vectors() {
        let vectors: Vec<_> = [31u8, 32, 73]
            .into_iter()
            .map(|n| {
                let address = make_address(n);
                serde_json::json!({
                    "generator": hex::encode(address.diversified_generator().vartime_compress().0),
                    "transmission": hex::encode(address.transmission_key().0),
                    "fingerprint": hex::encode(fingerprint(&address).vartime_compress().0),
                })
            })
            .collect();
        let path = std::path::Path::new(env!("CARGO_MANIFEST_DIR"))
            .join("../../../../tools/gnark/internal/compliance/ownership_vectors.json");
        std::fs::write(path, serde_json::to_string_pretty(&vectors).unwrap() + "\n").unwrap();
    }
    #[test]
    fn ownership_is_stable_and_ciphertexts_are_independent() {
        let alice = make_address(31);
        let bob = make_address(32);
        let secret = Fr::from(204u64);
        let key = Element::GENERATOR * secret;
        let a = OwnershipCiphertext::encrypt(&alice, key, Fr::from(5u64)).unwrap();
        let b = OwnershipCiphertext::encrypt(&alice, key, Fr::from(7u64)).unwrap();
        assert_eq!(a.c - a.r * secret, fingerprint(&alice));
        assert_eq!(b.c - b.r * secret, fingerprint(&alice));
        assert_ne!(a, b);
        assert_ne!(fingerprint(&alice), fingerprint(&bob));
        assert_ne!(a.c - a.r * Fr::from(201u64), fingerprint(&alice));
        assert_eq!(OwnershipCiphertext::from_bytes(&a.to_bytes()).unwrap(), a);
        assert!(OwnershipCiphertext::encrypt(&alice, key, Fr::from(0u64)).is_err());
        assert!(OwnershipCiphertext::encrypt(&alice, Element::IDENTITY, Fr::from(1u64)).is_err());
        assert!(OwnershipCiphertext::from_bytes(&[0; 64]).is_err());
        assert!(OwnershipCiphertext::from_bytes(&[255; 64]).is_err());
        assert!(OwnershipCiphertext::from_bytes(&[1; 63]).is_err());
    }
}
