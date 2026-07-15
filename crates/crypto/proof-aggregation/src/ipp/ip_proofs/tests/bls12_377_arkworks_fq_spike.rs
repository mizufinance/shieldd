//! MAC-campaign parity gate for the monomorphic safe-Rust CIOS copy.

use ark_bls12_377::Fq;
use ark_ff::BigInt;
use ark_std::{test_rng, UniformRand};

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
    assert_eq!(ark(spike::mul(mont(a), mont(b))), a * b);
}

#[test]
fn edge_and_512_random_vectors_match_arkworks_fq_mul() {
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
