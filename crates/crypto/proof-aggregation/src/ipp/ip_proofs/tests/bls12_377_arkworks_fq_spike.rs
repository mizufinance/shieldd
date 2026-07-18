//! MAC-campaign parity gate for the monomorphic safe-Rust CIOS copy.

use ark_bls12_377::{Fq, Fq2, Fq6};
use ark_ff::{AdditiveGroup, BigInt, FftField, Field, PrimeField};
use ark_serialize::{CanonicalDeserialize, CanonicalSerialize};
use ark_std::{test_rng, UniformRand};
use std::convert::TryInto;

#[path = "../src/s3_07_arkworks_fq_spike.rs"]
mod spike;
use spike::{Fq2Mont, Fq6Mont, FqMont};

fn mont(value: Fq) -> FqMont {
    FqMont(value.0 .0)
}

fn ark(value: FqMont) -> Fq {
    Fq::new_unchecked(BigInt(value.0))
}

fn mont2(value: Fq2) -> Fq2Mont {
    Fq2Mont {
        c0: mont(value.c0),
        c1: mont(value.c1),
    }
}

fn ark2(value: Fq2Mont) -> Fq2 {
    Fq2::new(ark(value.c0), ark(value.c1))
}

fn mont6(value: Fq6) -> Fq6Mont {
    Fq6Mont {
        c0: mont2(value.c0),
        c1: mont2(value.c1),
        c2: mont2(value.c2),
    }
}

fn ark6(value: Fq6Mont) -> Fq6 {
    Fq6::new(ark2(value.c0), ark2(value.c1), ark2(value.c2))
}

fn check_fq6(a: Fq6, b: Fq6, c0: Fq2, c1: Fq2) {
    assert_eq!(ark6(spike::fq6_add(mont6(a), mont6(b))), a + b);
    assert_eq!(ark6(spike::fq6_sub(mont6(a), mont6(b))), a - b);
    assert_eq!(ark6(spike::fq6_neg(mont6(a))), -a);
    assert_eq!(ark6(spike::fq6_double(mont6(a))), a.double());
    assert_eq!(ark6(spike::fq6_mul(mont6(a), mont6(b))), a * b);
    assert_eq!(ark6(spike::fq6_square(mont6(a))), a.square());
    assert_eq!(spike::fq6_inv(mont6(a)).map(ark6), a.inverse());

    for power in [1, 2] {
        let mut expected = a;
        expected.frobenius_map_in_place(power);
        assert_eq!(ark6(spike::fq6_frobenius(mont6(a), power)), expected);
    }

    let mut expected_by_01 = a;
    expected_by_01.mul_by_01(&c0, &c1);
    assert_eq!(
        ark6(spike::fq6_mul_by_01(mont6(a), mont2(c0), mont2(c1))),
        expected_by_01
    );

    let u = Fq2::new(Fq::ZERO, Fq::ONE);
    assert_eq!(
        ark2(spike::fq6_mul_base_field_by_nonresidue(mont2(c0))),
        c0 * u
    );
}

#[test]
fn fq6_edges_and_512_random_vectors_match_arkworks() {
    let zero2 = Fq2::ZERO;
    let one2 = Fq2::ONE;
    let u = Fq2::new(Fq::ZERO, Fq::ONE);
    let edges = [
        Fq6::ZERO,
        Fq6::ONE,
        Fq6::new(zero2, one2, zero2),
        Fq6::new(zero2, zero2, one2),
        Fq6::new(u, -u, one2),
        -Fq6::ONE,
    ];
    let sparse = [zero2, one2, u, -u];
    for (i, &a) in edges.iter().enumerate() {
        for (j, &b) in edges.iter().enumerate() {
            check_fq6(a, b, sparse[i % sparse.len()], sparse[j % sparse.len()]);
        }
    }
    assert_eq!(spike::fq6_inv(mont6(Fq6::ZERO)), None);

    let mut rng = test_rng();
    for _ in 0..512 {
        check_fq6(
            Fq6::rand(&mut rng),
            Fq6::rand(&mut rng),
            Fq2::rand(&mut rng),
            Fq2::rand(&mut rng),
        );
    }
}

fn check_fq2(a: Fq2, b: Fq2) {
    assert_eq!(ark2(spike::fq2_add(mont2(a), mont2(b))), a + b);
    assert_eq!(ark2(spike::fq2_sub(mont2(a), mont2(b))), a - b);
    assert_eq!(ark2(spike::fq2_neg(mont2(a))), -a);
    assert_eq!(ark2(spike::fq2_mul(mont2(a), mont2(b))), a * b);
    assert_eq!(ark2(spike::fq2_square(mont2(a))), a.square());
    assert_eq!(spike::fq2_inv(mont2(a)).map(ark2), a.inverse());
    let mut a_frob = a;
    a_frob.frobenius_map_in_place(1);
    assert_eq!(ark2(spike::fq2_frobenius(mont2(a))), a_frob);
    assert_eq!(spike::fq2_sqrt(mont2(a)).map(ark2), a.sqrt());
    let ac1 = a.c1.into_bigint();
    let bc1 = b.c1.into_bigint();
    let ac0 = a.c0.into_bigint();
    let bc0 = b.c0.into_bigint();
    let less_ref = ac1 < bc1 || (ac1 == bc1 && ac0 < bc0);
    assert_eq!(spike::fq2_less(mont2(a), mont2(b)), less_ref);
    // reflexive and antisymmetric spot checks
    assert!(!spike::fq2_less(mont2(a), mont2(a)));
    assert_eq!(ark(spike::double(mont(a.c0))), a.c0.double());
    assert_eq!(
        ark(spike::sum_of_products2(
            mont(a.c0),
            mont(b.c0),
            mont(a.c1),
            mont(b.c1)
        )),
        a.c0 * b.c0 + a.c1 * b.c1
    );
}

#[test]
fn fq2_edge_and_512_random_vectors_match_arkworks() {
    let mut rng = test_rng();
    let edges = [
        Fq2::new(Fq::from(0u64), Fq::from(0u64)),
        Fq2::new(Fq::from(1u64), Fq::from(0u64)),
        Fq2::new(Fq::from(0u64), Fq::from(1u64)),
        Fq2::new(-Fq::from(1u64), Fq::from(2u64)),
    ];
    for &a in &edges {
        for &b in &edges {
            check_fq2(a, b);
        }
    }
    for _ in 0..512 {
        check_fq2(Fq2::rand(&mut rng), Fq2::rand(&mut rng));
    }
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
