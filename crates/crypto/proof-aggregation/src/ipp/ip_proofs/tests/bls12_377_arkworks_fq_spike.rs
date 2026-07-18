//! MAC-campaign parity gate for the monomorphic safe-Rust CIOS copy.

use ark_bls12_377::{Fq, Fq12, Fq2, Fq6, G1Affine, G1Projective};
use ark_ec::{CurveGroup, PrimeGroup};
use ark_ff::{AdditiveGroup, BigInt, CyclotomicMultSubgroup, FftField, Field, PrimeField};
use ark_serialize::{CanonicalDeserialize, CanonicalSerialize};
use ark_std::{test_rng, UniformRand};
use std::convert::TryInto;

#[path = "../src/s3_07_arkworks_fq_spike.rs"]
mod spike;
use spike::{Fq12Bytes, Fq12Mont, Fq2Bytes, Fq2Mont, Fq6Bytes, Fq6Mont, FqMont};

fn mont_g1(value: G1Projective) -> spike::G1ProjMont {
    spike::G1ProjMont {
        x: mont(value.x),
        y: mont(value.y),
        z: mont(value.z),
    }
}

fn ark_g1(value: spike::G1ProjMont) -> G1Projective {
    G1Projective::new_unchecked(ark(value.x), ark(value.y), ark(value.z))
}

fn mont_g1_affine(value: G1Affine) -> spike::G1AffineMont {
    spike::G1AffineMont {
        x: mont(value.x),
        y: mont(value.y),
        infinity: value.infinity,
    }
}

fn assert_same_g1_class(actual: spike::G1ProjMont, expected: G1Projective) {
    assert_eq!(ark_g1(actual).into_affine(), expected.into_affine());
}

fn check_g1(a: G1Projective, b: G1Projective, affine: G1Affine) {
    assert_same_g1_class(spike::g1_add(mont_g1(a), mont_g1(b)), a + b);
    assert_same_g1_class(
        spike::g1_add_mixed(mont_g1(a), mont_g1_affine(affine)),
        a + affine,
    );
    assert_same_g1_class(spike::g1_double(mont_g1(a)), a.double());
    assert_same_g1_class(spike::g1_neg(mont_g1(a)), -a);
    let affine_neg = spike::g1_affine_neg(mont_g1_affine(affine));
    let affine_neg = if affine_neg.infinity {
        G1Affine::identity()
    } else {
        G1Affine::new_unchecked(ark(affine_neg.x), ark(affine_neg.y))
    };
    assert_eq!(affine_neg, -affine);
}

#[test]
fn g1_edges_and_512_random_vectors_match_arkworks_projective_classes() {
    let zero = G1Projective::ZERO;
    let generator = G1Projective::generator();
    let neg_generator = -generator;
    let doubled = generator.double();
    let scaled_generator = {
        let lambda = Fq::from(7_u64);
        let lambda2 = lambda.square();
        G1Projective::new_unchecked(
            generator.x * lambda2,
            generator.y * lambda2 * lambda,
            lambda,
        )
    };
    let noncanonical_zero =
        G1Projective::new_unchecked(Fq::from(9_u64), Fq::from(11_u64), Fq::ZERO);
    let affine_zero = G1Affine::identity();
    let affine_generator = generator.into_affine();

    for (a, b, affine) in [
        (zero, zero, affine_zero),
        (zero, generator, affine_generator),
        (generator, zero, affine_zero),
        (generator, generator, affine_generator),
        (generator, neg_generator, (-generator).into_affine()),
        (neg_generator, generator, affine_generator),
        (doubled, scaled_generator, affine_generator),
        (scaled_generator, scaled_generator, affine_zero),
        (noncanonical_zero, generator, affine_generator),
        (generator, noncanonical_zero, affine_zero),
    ] {
        check_g1(a, b, affine);
    }

    let mut rng = test_rng();
    for _ in 0..512 {
        check_g1(
            G1Projective::rand(&mut rng),
            G1Projective::rand(&mut rng),
            G1Affine::rand(&mut rng),
        );
    }
}

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

fn mont12(value: Fq12) -> Fq12Mont {
    Fq12Mont {
        c0: mont6(value.c0),
        c1: mont6(value.c1),
    }
}

fn ark12(value: Fq12Mont) -> Fq12 {
    Fq12::new(ark6(value.c0), ark6(value.c1))
}

fn bytes2(value: Fq2) -> Fq2Bytes {
    Fq2Bytes {
        c0: canonical_bytes(value.c0),
        c1: canonical_bytes(value.c1),
    }
}

fn bytes6(value: Fq6) -> Fq6Bytes {
    Fq6Bytes {
        c0: bytes2(value.c0),
        c1: bytes2(value.c1),
        c2: bytes2(value.c2),
    }
}

fn bytes12(value: Fq12) -> Fq12Bytes {
    Fq12Bytes {
        c0: bytes6(value.c0),
        c1: bytes6(value.c1),
    }
}

fn check_fq12(a: Fq12, b: Fq12, c0: Fq2, c3: Fq2, c4: Fq2) {
    assert_eq!(ark12(spike::fq12_mul(mont12(a), mont12(b))), a * b);
    assert_eq!(ark12(spike::fq12_square(mont12(a))), a.square());

    let mut expected_sparse = a;
    expected_sparse.mul_by_034(&c0, &c3, &c4);
    assert_eq!(
        ark12(spike::fq12_mul_by_034(
            mont12(a),
            mont2(c0),
            mont2(c3),
            mont2(c4),
        )),
        expected_sparse
    );

    let mut expected_conjugate = a;
    expected_conjugate.conjugate_in_place();
    assert_eq!(ark12(spike::fq12_conjugate(mont12(a))), expected_conjugate);
    assert_eq!(
        spike::fq12_cyclotomic_inverse(mont12(a)).map(ark12),
        a.cyclotomic_inverse()
    );
    assert_eq!(spike::fq12_inv(mont12(a)).map(ark12), a.inverse());

    for power in [1, 2] {
        let mut expected = a;
        expected.frobenius_map_in_place(power);
        assert_eq!(ark12(spike::fq12_frobenius(mont12(a), power)), expected);
    }

    assert_eq!(
        ark12(spike::fq12_cyclotomic_square(mont12(a))),
        a.cyclotomic_square()
    );
    assert_eq!(
        ark12(spike::fq12_cyclotomic_exp(mont12(a))),
        a.cyclotomic_exp([0x8508_c000_0000_0001])
    );

    let bytes = bytes12(a);
    assert_eq!(spike::fq12_to_bytes(mont12(a)), bytes);
    assert_eq!(spike::fq12_from_bytes(bytes).map(ark12), Some(a));

    let mut serialized = Vec::new();
    a.serialize_uncompressed(&mut serialized).unwrap();
    assert_eq!(serialized.len(), 576);
    assert_eq!(
        Fq12::deserialize_uncompressed(serialized.as_slice()).ok(),
        spike::fq12_from_bytes(bytes).map(ark12)
    );
}

#[test]
fn fq12_edges_and_512_random_vectors_match_arkworks() {
    let zero6 = Fq6::ZERO;
    let one6 = Fq6::ONE;
    let v = Fq6::new(Fq2::ZERO, Fq2::ONE, Fq2::ZERO);
    let edges = [
        Fq12::ZERO,
        Fq12::ONE,
        Fq12::new(zero6, one6),
        Fq12::new(v, -one6),
        -Fq12::ONE,
    ];
    let sparse = [Fq2::ZERO, Fq2::ONE, Fq2::new(Fq::ZERO, Fq::ONE), -Fq2::ONE];
    for (i, &a) in edges.iter().enumerate() {
        for (j, &b) in edges.iter().enumerate() {
            check_fq12(
                a,
                b,
                sparse[i % sparse.len()],
                sparse[j % sparse.len()],
                sparse[(i + j) % sparse.len()],
            );
        }
    }
    assert_eq!(spike::fq12_inv(mont12(Fq12::ZERO)), None);
    assert_eq!(spike::fq12_cyclotomic_inverse(mont12(Fq12::ZERO)), None);

    let mut noncanonical = bytes12(Fq12::ZERO);
    noncanonical.c1.c2.c1 = [0xff; 48];
    assert_eq!(spike::fq12_from_bytes(noncanonical), None);

    let mut rng = test_rng();
    for _ in 0..512 {
        check_fq12(
            Fq12::rand(&mut rng),
            Fq12::rand(&mut rng),
            Fq2::rand(&mut rng),
            Fq2::rand(&mut rng),
            Fq2::rand(&mut rng),
        );
    }
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
