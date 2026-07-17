//! MAC-campaign parity gate for the monomorphic safe-Rust CIOS copy.

use ark_bls12_377::Fq;
use ark_ff::{BigInt, FftField, Field};
use ark_serialize::{CanonicalDeserialize, CanonicalSerialize};
use ark_std::{test_rng, UniformRand};
use std::convert::TryInto;

#[path = "../src/s3_07_arkworks_fq_spike.rs"]
mod spike;
use spike::FqMont;

fn mont(value: Fq) -> FqMont {
    FqMont(value.0 .0)
}

fn ark(value: FqMont) -> Fq {
    Fq::new_unchecked(BigInt(value.0))
}

fn check(a: Fq, b: Fq) {
    assert_eq!(ark(spike::add(mont(a), mont(b))), a + b);
    assert_eq!(ark(spike::sub(mont(a), mont(b))), a - b);
    assert_eq!(ark(spike::neg(mont(a))), -a);
    assert_eq!(ark(spike::mul(mont(a), mont(b))), a * b);
    assert_eq!(ark(spike::square(mont(a))), a.square());
}

fn canonical_bytes(value: Fq) -> [u8; 48] {
    let mut bytes = Vec::new();
    value.serialize_uncompressed(&mut bytes).unwrap();
    bytes.try_into().unwrap()
}

fn check_sqrt_and_bytes(value: Fq) {
    assert_eq!(spike::sqrt(mont(value)).map(ark), value.sqrt());
    let bytes = canonical_bytes(value);
    assert_eq!(spike::to_bytes(mont(value)), bytes);
    assert_eq!(spike::from_bytes(bytes).map(ark), Some(value));
    assert_eq!(
        Fq::deserialize_uncompressed(bytes.as_slice()).ok(),
        spike::from_bytes(bytes).map(ark),
    );
}

#[test]
fn edge_and_512_random_vectors_match_arkworks_fq_arithmetic() {
    let edges = [
        Fq::from(0_u64),
        Fq::from(1_u64),
        Fq::from(2_u64),
        -Fq::from(1_u64),
        -Fq::from(2_u64),
        Fq::from(u64::MAX),
    ];
    for &a in &edges {
        for &b in &edges {
            check(a, b);
        }
    }

    let mut rng = test_rng();
    for _ in 0..512 {
        check(Fq::rand(&mut rng), Fq::rand(&mut rng));
    }
}

#[test]
fn sqrt_edges_residue_pairs_and_512_random_vectors_match_arkworks() {
    check_sqrt_and_bytes(Fq::from(0_u64));
    check_sqrt_and_bytes(Fq::ONE);

    for root in [
        Fq::from(2_u64),
        Fq::from(5_u64),
        Fq::from(10_u64),
        Fq::from(u64::MAX),
    ] {
        let residue = root.square();
        let nonresidue = residue * Fq::GENERATOR;
        assert_eq!(spike::sqrt(mont(residue)).map(ark), residue.sqrt());
        assert_eq!(spike::sqrt(mont(nonresidue)).map(ark), None);
    }

    let mut rng = test_rng();
    for _ in 0..512 {
        check_sqrt_and_bytes(Fq::rand(&mut rng));
    }
}

#[test]
fn canonical_bytes_reject_noncanonical_and_spare_bit_values() {
    let noncanonical = [
        spike::FqBytes::from([
            0x01, 0x00, 0x00, 0x00, 0x00, 0xc0, 0x08, 0x85, 0x00, 0x00, 0x00, 0x30, 0x44, 0x5d,
            0x0b, 0x17, 0x00, 0x48, 0x09, 0xba, 0x2f, 0x62, 0xf3, 0x1e, 0x8f, 0x13, 0xf5, 0x00,
            0xf3, 0xd9, 0x22, 0x1a, 0x3b, 0x49, 0xa1, 0x6c, 0xc0, 0x05, 0x3b, 0xc6, 0xea, 0x10,
            0xc5, 0x17, 0x46, 0x3a, 0xae, 0x01,
        ]),
        [0xff; 48],
        {
            let mut bytes = [0_u8; 48];
            bytes[47] = 0x02;
            bytes
        },
    ];

    for bytes in noncanonical {
        assert_eq!(spike::from_bytes(bytes), None);
        assert!(Fq::deserialize_uncompressed(bytes.as_slice()).is_err());
    }
}
