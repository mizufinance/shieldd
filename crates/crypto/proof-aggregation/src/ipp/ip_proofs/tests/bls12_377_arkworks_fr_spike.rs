//! S3-F05B parity gate for the monomorphic safe-Rust four-limb Fr copy.

use ark_bls12_377::Fr;
use ark_ff::{BigInt, Field};
use ark_serialize::{CanonicalDeserialize, CanonicalSerialize};
use ark_std::{test_rng, UniformRand};
use std::convert::TryInto;

#[path = "../src/s3_07_arkworks_fr_spike.rs"]
mod spike;
use spike::FrMont;

fn mont(value: Fr) -> FrMont {
    FrMont(value.0 .0)
}

fn ark(value: FrMont) -> Fr {
    Fr::new_unchecked(BigInt(value.0))
}

fn check(a: Fr, b: Fr) {
    assert_eq!(ark(spike::add(mont(a), mont(b))), a + b);
    assert_eq!(ark(spike::sub(mont(a), mont(b))), a - b);
    assert_eq!(ark(spike::neg(mont(a))), -a);
    assert_eq!(ark(spike::mul(mont(a), mont(b))), a * b);
    assert_eq!(spike::inv(mont(a)).map(ark), a.inverse());
    assert_eq!(spike::inv(mont(b)).map(ark), b.inverse());
}

fn canonical_bytes(value: Fr) -> [u8; 32] {
    let mut bytes = Vec::new();
    value.serialize_uncompressed(&mut bytes).unwrap();
    bytes.try_into().unwrap()
}

fn check_bytes(value: Fr) {
    let bytes = canonical_bytes(value);
    assert_eq!(spike::to_bytes(mont(value)), bytes);
    assert_eq!(spike::from_bytes(bytes).map(ark), Some(value));
    assert_eq!(
        Fr::deserialize_uncompressed(bytes.as_slice()).ok(),
        Some(value)
    );
}

#[test]
fn edge_and_512_random_vectors_match_arkworks_fr() {
    let edges = [
        Fr::from(0_u64),
        Fr::from(1_u64),
        Fr::from(2_u64),
        -Fr::from(1_u64),
        -Fr::from(2_u64),
        Fr::from(u64::MAX),
    ];
    for &a in &edges {
        for &b in &edges {
            check(a, b);
        }
        check_bytes(a);
    }

    let mut rng = test_rng();
    for _ in 0..512 {
        let a = Fr::rand(&mut rng);
        let b = Fr::rand(&mut rng);
        check(a, b);
        check_bytes(a);
    }
}

#[test]
fn fr_zero_inverse_and_noncanonical_bytes_reject() {
    assert_eq!(spike::inv(FrMont([0; 4])), None);
    assert_eq!(spike::inv(mont(Fr::from(1_u64))).map(ark), Fr::from(1_u64).inverse());

    // r itself, r + 1, and all-ones are noncanonical.
    let modulus_bytes: [u8; 32] = {
        let mut bytes = [0_u8; 32];
        let limbs: [u64; 4] = [
            0x0a11_8000_0000_0001,
            0x59aa_76fe_d000_0001,
            0x60b4_4d1e_5c37_b001,
            0x12ab_655e_9a2c_a556,
        ];
        for (i, limb) in limbs.iter().enumerate() {
            bytes[8 * i..8 * (i + 1)].copy_from_slice(&limb.to_le_bytes());
        }
        bytes
    };
    let mut modulus_plus_one = modulus_bytes;
    modulus_plus_one[0] += 1;
    for bytes in [modulus_bytes, modulus_plus_one, [0xff_u8; 32]] {
        assert_eq!(spike::from_bytes(bytes), None);
        assert!(Fr::deserialize_uncompressed(bytes.as_slice()).is_err());
    }
}
