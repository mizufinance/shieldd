//! Disposable S3-06 experiment; this crate is not reachable from production code.
//!
//! The backends were generated under WSL with fiat-crypto's official published
//! JavaScript generator `v0.1.6-115-g3c5114cb1` (commit
//! `3c5114cb11cdc1da781583543d5b42cf7c838d25`; generator SHA-256
//! `4c05afbf01098b4e4e154e82d8358629f6e54b9bab386c56a655e2ba24adf3f0`).
//! Each generated file records the complete command. Their SHA-256 digests are:
//! Fq `429fa4276e7b89f9dcaa249a7b988af05abff7e512358a6921859420e95d96b6`,
//! Fr `ffa2954e17ec1bbffbbac7bac4b2a1bf834447f05ad6d928e632196a135cfd38`.
//!
//! Fiat's generated function comments are the verified carry/reduction boundary.
//! This experiment tests the safe facade and does not independently verify those
//! generated routines or claim to implement the full `ark_ff::PrimeField` API.

#[path = "bls12_377_fiat_spike/fq_generated.rs"]
mod fq_generated;
#[path = "bls12_377_fiat_spike/fr_generated.rs"]
mod fr_generated;

use ark_bls12_377::{Fq as ArkFq, Fr as ArkFr};
use ark_ff::{BigInt, Field, PrimeField};
use ark_std::{test_rng, UniformRand};
use std::{hint::black_box, time::Instant};

use fq_generated::{
    fiat_bls12_377_fq_add, fiat_bls12_377_fq_from_montgomery,
    fiat_bls12_377_fq_montgomery_domain_field_element as FqMont, fiat_bls12_377_fq_mul,
    fiat_bls12_377_fq_non_montgomery_domain_field_element as FqCanonical, fiat_bls12_377_fq_square,
    fiat_bls12_377_fq_to_montgomery,
};
use fr_generated::{
    fiat_bls12_377_fr_add, fiat_bls12_377_fr_from_montgomery,
    fiat_bls12_377_fr_montgomery_domain_field_element as FrMont, fiat_bls12_377_fr_mul,
    fiat_bls12_377_fr_non_montgomery_domain_field_element as FrCanonical, fiat_bls12_377_fr_square,
    fiat_bls12_377_fr_to_montgomery,
};

#[derive(Clone, Copy)]
struct FiatFq(FqMont);

impl FiatFq {
    fn from_ark(value: ArkFq) -> Self {
        let canonical = FqCanonical(value.into_bigint().0);
        let mut montgomery = FqMont([0; 6]);
        fiat_bls12_377_fq_to_montgomery(&mut montgomery, &canonical);
        Self(montgomery)
    }

    fn to_ark(self) -> ArkFq {
        let mut canonical = FqCanonical([0; 6]);
        fiat_bls12_377_fq_from_montgomery(&mut canonical, &self.0);
        ArkFq::from_bigint(BigInt(canonical.0)).expect("fiat output is reduced")
    }

    fn add(self, rhs: Self) -> Self {
        let mut output = FqMont([0; 6]);
        fiat_bls12_377_fq_add(&mut output, &self.0, &rhs.0);
        Self(output)
    }

    fn mul(self, rhs: Self) -> Self {
        let mut output = FqMont([0; 6]);
        fiat_bls12_377_fq_mul(&mut output, &self.0, &rhs.0);
        Self(output)
    }

    fn square(self) -> Self {
        let mut output = FqMont([0; 6]);
        fiat_bls12_377_fq_square(&mut output, &self.0);
        Self(output)
    }
}

#[derive(Clone, Copy)]
struct FiatFr(FrMont);

impl FiatFr {
    fn from_ark(value: ArkFr) -> Self {
        let canonical = FrCanonical(value.into_bigint().0);
        let mut montgomery = FrMont([0; 4]);
        fiat_bls12_377_fr_to_montgomery(&mut montgomery, &canonical);
        Self(montgomery)
    }

    fn to_ark(self) -> ArkFr {
        let mut canonical = FrCanonical([0; 4]);
        fiat_bls12_377_fr_from_montgomery(&mut canonical, &self.0);
        ArkFr::from_bigint(BigInt(canonical.0)).expect("fiat output is reduced")
    }

    fn add(self, rhs: Self) -> Self {
        let mut output = FrMont([0; 4]);
        fiat_bls12_377_fr_add(&mut output, &self.0, &rhs.0);
        Self(output)
    }

    fn mul(self, rhs: Self) -> Self {
        let mut output = FrMont([0; 4]);
        fiat_bls12_377_fr_mul(&mut output, &self.0, &rhs.0);
        Self(output)
    }

    fn square(self) -> Self {
        let mut output = FrMont([0; 4]);
        fiat_bls12_377_fr_square(&mut output, &self.0);
        Self(output)
    }
}

fn check_fq(a: ArkFq, b: ArkFq) {
    let fiat_a = FiatFq::from_ark(a);
    let fiat_b = FiatFq::from_ark(b);
    assert_eq!(fiat_a.to_ark(), a, "Fq encode/decode");
    assert_eq!(fiat_a.add(fiat_b).to_ark(), a + b, "Fq add");
    assert_eq!(fiat_a.mul(fiat_b).to_ark(), a * b, "Fq mul");
    assert_eq!(fiat_a.square().to_ark(), a.square(), "Fq square");
}

fn check_fr(a: ArkFr, b: ArkFr) {
    let fiat_a = FiatFr::from_ark(a);
    let fiat_b = FiatFr::from_ark(b);
    assert_eq!(fiat_a.to_ark(), a, "Fr encode/decode");
    assert_eq!(fiat_a.add(fiat_b).to_ark(), a + b, "Fr add");
    assert_eq!(fiat_a.mul(fiat_b).to_ark(), a * b, "Fr mul");
    assert_eq!(fiat_a.square().to_ark(), a.square(), "Fr square");
}

#[test]
fn fq_edge_and_random_parity() {
    let edges = [
        ArkFq::from(0_u64),
        ArkFq::from(1_u64),
        ArkFq::from(2_u64),
        -ArkFq::from(1_u64),
        -ArkFq::from(2_u64),
        ArkFq::from(u64::MAX),
    ];
    for &a in &edges {
        for &b in &edges {
            check_fq(a, b);
        }
    }

    let mut rng = test_rng();
    for _ in 0..512 {
        check_fq(ArkFq::rand(&mut rng), ArkFq::rand(&mut rng));
    }
}

#[test]
fn fr_edge_and_random_parity() {
    let edges = [
        ArkFr::from(0_u64),
        ArkFr::from(1_u64),
        ArkFr::from(2_u64),
        -ArkFr::from(1_u64),
        -ArkFr::from(2_u64),
        ArkFr::from(u64::MAX),
    ];
    for &a in &edges {
        for &b in &edges {
            check_fr(a, b);
        }
    }

    let mut rng = test_rng();
    for _ in 0..512 {
        check_fr(ArkFr::rand(&mut rng), ArkFr::rand(&mut rng));
    }
}

fn median_ns_per_op<T: Copy>(iterations: u64, mut operation: impl FnMut() -> T) -> f64 {
    let mut samples = Vec::with_capacity(9);
    for _ in 0..9 {
        let start = Instant::now();
        for _ in 0..iterations {
            black_box(operation());
        }
        samples.push(start.elapsed().as_nanos() as f64 / iterations as f64);
    }
    samples.sort_by(f64::total_cmp);
    samples[samples.len() / 2]
}

#[test]
#[ignore = "release-only directional microbenchmark"]
fn release_field_operation_medians() {
    assert!(
        !cfg!(debug_assertions),
        "run this timing harness with --release"
    );
    const ITERATIONS: u64 = 200_000;

    let fq_a = ArkFq::from(0x1234_5678_9abc_def0_u64);
    let fq_b = ArkFq::from(0xfedc_ba98_7654_3211_u64);
    let fiat_fq_a = FiatFq::from_ark(fq_a);
    let fiat_fq_b = FiatFq::from_ark(fq_b);
    let fr_a = ArkFr::from(0x1234_5678_9abc_def0_u64);
    let fr_b = ArkFr::from(0xfedc_ba98_7654_3211_u64);
    let fiat_fr_a = FiatFr::from_ark(fr_a);
    let fiat_fr_b = FiatFr::from_ark(fr_b);

    macro_rules! measure_pair {
        ($name:literal, $fiat:expr, $ark:expr) => {{
            let fiat = median_ns_per_op(ITERATIONS, $fiat);
            let ark = median_ns_per_op(ITERATIONS, $ark);
            println!(
                "{:<10} fiat={:>8.2} ns/op ark={:>8.2} ns/op ratio={:.2}x",
                $name,
                fiat,
                ark,
                fiat / ark
            );
        }};
    }

    measure_pair!("Fq add", || fiat_fq_a.add(black_box(fiat_fq_b)), || fq_a
        + black_box(fq_b));
    measure_pair!("Fq mul", || fiat_fq_a.mul(black_box(fiat_fq_b)), || fq_a
        * black_box(fq_b));
    measure_pair!("Fq square", || black_box(fiat_fq_a).square(), || black_box(
        fq_a
    )
    .square());
    measure_pair!("Fr add", || fiat_fr_a.add(black_box(fiat_fr_b)), || fr_a
        + black_box(fr_b));
    measure_pair!("Fr mul", || fiat_fr_a.mul(black_box(fiat_fr_b)), || fr_a
        * black_box(fr_b));
    measure_pair!("Fr square", || black_box(fiat_fr_a).square(), || black_box(
        fr_a
    )
    .square());
}
