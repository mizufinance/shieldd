//! Development-only BLS12-377 dense MSM alternatives; the default prover is unchanged.
use ark_bls12_377::{g1::Config, Fr, G1Affine, G1Projective};
use ark_ec::{scalar_mul::glv::GLVConfig, AdditiveGroup, VariableBaseMSM};
use ark_ff::{BigInt, BigInteger, PrimeField};
use num_bigint::BigUint;
use rayon::prelude::*;
use serde::Serialize;
use std::time::Instant;

const Q: u128 = 91893752504881257701523279626832445441;
type Integer = BigInt<4>;
type Bucket = <G1Projective as VariableBaseMSM>::Bucket;

#[derive(Clone, Copy, Debug, Serialize)]
#[serde(rename_all = "snake_case")]
pub enum Method {
    Arkworks,
    Dense14,
    Glv14,
    Glv15,
    Glv16,
    Glv16Cached,
}

#[derive(Default, Serialize)]
pub struct Details {
    pub preparation_ns: u128,
    pub buckets_ns: u128,
    pub temporary_base_bytes: usize,
    pub scalar_digit_bytes: usize,
}

pub struct CachedGlv<'a> {
    original: &'a [G1Affine],
    expanded: Vec<G1Affine>,
}
impl<'a> CachedGlv<'a> {
    pub fn new(bases: &'a [G1Affine]) -> Self {
        Self {
            original: bases,
            expanded: bases
                .par_iter()
                .flat_map_iter(|base| [*base, -Config::endomorphism_affine(base)])
                .collect(),
        }
    }

    pub fn bytes(&self) -> usize {
        self.expanded.len() * std::mem::size_of::<G1Affine>()
    }

    pub fn run(&self, bases: &[G1Affine], scalars: &[Fr]) -> (G1Projective, Details) {
        // The table borrows its immutable checked key slice for its entire lifetime.
        assert_eq!(
            bases.as_ptr(),
            self.original.as_ptr(),
            "cached table belongs to another key"
        );
        assert!(bases.len() <= self.original.len());
        assert_eq!(bases.len(), scalars.len());
        let start = Instant::now();
        let q = BigUint::from(Q);
        let bigints: Vec<_> = scalars
            .par_iter()
            .flat_map_iter(|s| {
                let (a, b) = split(s, &q);
                [a, b]
            })
            .collect();
        let preparation_ns = start.elapsed().as_nanos();
        let start = Instant::now();
        let point = windowed(&self.expanded[..2 * bases.len()], &bigints, 127, 16);
        (
            point,
            Details {
                preparation_ns,
                buckets_ns: start.elapsed().as_nanos(),
                temporary_base_bytes: 0,
                scalar_digit_bytes: bigints.len() * 8 * 2,
            },
        )
    }
}

fn integer(n: u128) -> Integer {
    BigInt([n as u64, (n >> 64) as u64, 0, 0])
}

fn as_u128(n: BigUint) -> u128 {
    let limbs = n.to_u64_digits();
    assert!(limbs.len() <= 2);
    limbs.first().copied().unwrap_or(0) as u128
        | ((limbs.get(1).copied().unwrap_or(0) as u128) << 64)
}

fn split(s: &Fr, q: &BigUint) -> (Integer, Integer) {
    let n = BigUint::from(s.into_bigint());
    let quotient = &n / q;
    let remainder = n - &quotient * q;
    (integer(as_u128(remainder)), integer(as_u128(quotient)))
}

fn digits(s: &Integer, width: usize, count: usize, target: &mut [i16]) {
    let mut carry = 0u64;
    for (i, digit) in target.iter_mut().enumerate().take(count) {
        let bit = i * width;
        let limb = bit / 64;
        let offset = bit % 64;
        let mut word = s.0.get(limb).copied().unwrap_or(0) >> offset;
        if offset != 0 {
            word |= s.0.get(limb + 1).copied().unwrap_or(0) << (64 - offset);
        }
        let value = (word & ((1 << width) - 1)) + carry;
        carry = (value + (1 << (width - 1))) >> width;
        *digit = (value as i64 - ((carry << width) as i64)) as i16;
    }
    assert_eq!(carry, 0, "signed recoding must retain its final carry");
}

fn windowed(bases: &[G1Affine], scalars: &[Integer], bits: usize, width: usize) -> G1Projective {
    assert_eq!(bases.len(), scalars.len());
    assert!((2..=16).contains(&width));
    assert!(scalars.iter().all(|s| s.num_bits() as usize <= bits));
    if scalars.is_empty() {
        return G1Projective::ZERO;
    }
    let count = (bits + 1).div_ceil(width);
    let mut encoded = vec![0i16; count * scalars.len()];
    encoded
        .par_chunks_mut(count)
        .zip(scalars.par_iter())
        .for_each(|(target, scalar)| digits(scalar, width, count, target));
    let sums: Vec<G1Projective> = (0..count)
        .into_par_iter()
        .map(|window| {
            let mut buckets = vec![G1Projective::ZERO_BUCKET; 1 << (width - 1)];
            for (d, base) in encoded.chunks_exact(count).zip(bases) {
                let digit = d[window];
                if digit > 0 {
                    buckets[digit as usize - 1] += base;
                }
                if digit < 0 {
                    buckets[digit.unsigned_abs() as usize - 1] -= base;
                }
            }
            let mut running: Bucket = G1Projective::ZERO_BUCKET;
            let mut sum: Bucket = G1Projective::ZERO_BUCKET;
            for bucket in buckets.iter().rev() {
                running += bucket;
                sum += &running;
            }
            sum.into()
        })
        .collect();
    let mut total = G1Projective::ZERO;
    for sum in sums.iter().rev() {
        for _ in 0..width {
            total.double_in_place();
        }
        total += sum;
    }
    total
}

pub fn run(method: Method, bases: &[G1Affine], scalars: &[Fr]) -> (G1Projective, Details) {
    assert!(
        !matches!(method, Method::Glv16Cached),
        "cached method requires its bound table"
    );
    assert_eq!(bases.len(), scalars.len());
    let start = Instant::now();
    if matches!(method, Method::Arkworks) {
        let point = G1Projective::msm_unchecked(bases, scalars);
        return (
            point,
            Details {
                buckets_ns: start.elapsed().as_nanos(),
                ..Details::default()
            },
        );
    }
    let glv = matches!(method, Method::Glv14 | Method::Glv15 | Method::Glv16);
    let width = match method {
        Method::Glv15 => 15,
        Method::Glv16 => 16,
        _ => 14,
    };
    let bits = if glv {
        127
    } else {
        Fr::MODULUS_BIT_SIZE as usize
    };
    let mut expanded = Vec::new();
    let bigints: Vec<Integer> = if glv {
        let q = BigUint::from(Q);
        let pairs: Vec<_> = scalars.par_iter().map(|s| split(s, &q)).collect();
        expanded = bases
            .par_iter()
            .flat_map_iter(|base| [*base, -Config::endomorphism_affine(base)])
            .collect();
        pairs.into_iter().flat_map(|(a, b)| [a, b]).collect()
    } else {
        scalars.par_iter().map(|s| s.into_bigint()).collect()
    };
    let preparation_ns = start.elapsed().as_nanos();
    let target = if glv { expanded.as_slice() } else { bases };
    let bucket_start = Instant::now();
    let point = windowed(target, &bigints, bits, width);
    (
        point,
        Details {
            preparation_ns,
            buckets_ns: bucket_start.elapsed().as_nanos(),
            temporary_base_bytes: expanded.len() * std::mem::size_of::<G1Affine>(),
            scalar_digit_bytes: bigints.len() * (bits + 1).div_ceil(width) * 2,
        },
    )
}

#[cfg(test)]
mod tests {
    use super::*;
    use ark_ec::{AffineRepr, CurveGroup};
    use ark_ff::Field;
    use ark_std::{
        rand::{rngs::StdRng, SeedableRng},
        UniformRand,
    };

    #[test]
    fn decomposition_and_signed_carries_cover_boundaries() {
        assert_eq!(Config::LAMBDA, -Fr::from(Q));
        let q = BigUint::from(Q);
        let mut rng = StdRng::seed_from_u64(0x377);
        let mut values = vec![
            Fr::ZERO,
            Fr::ONE,
            -Fr::ONE,
            Fr::from(Q - 1),
            Fr::from(Q),
            Fr::from(Q + 1),
        ];
        values.extend((0..253).map(|i| Fr::from(2u64).pow([i])));
        values.extend((0..1024).map(|_| Fr::rand(&mut rng)));
        for s in values {
            let (a, b) = split(&s, &q);
            assert!(a.num_bits() <= 127 && b.num_bits() <= 127);
            assert_eq!(
                Fr::from_bigint(a).unwrap() - Config::LAMBDA * Fr::from_bigint(b).unwrap(),
                s
            );
            for (v, bits) in [(s.into_bigint(), 253), (a, 127), (b, 127)] {
                for width in [3, 7, 14, 15, 16] {
                    let count = (bits + 1usize).div_ceil(width);
                    let mut encoded = vec![0i16; count];
                    digits(&v, width, count, &mut encoded);
                    let reconstructed = encoded.into_iter().rev().fold(Fr::ZERO, |n, d| {
                        n * Fr::from(1u64 << width)
                            + if d < 0 {
                                -Fr::from(d.unsigned_abs() as u64)
                            } else {
                                Fr::from(d as u64)
                            }
                    });
                    assert_eq!(reconstructed, Fr::from_bigint(v).unwrap());
                }
            }
        }
    }

    #[test]
    fn dense_and_glv_match_independent_group_multiplication() {
        let mut rng = StdRng::seed_from_u64(0xb175377);
        let mut bases: Vec<_> = (0..65)
            .map(|_| G1Projective::rand(&mut rng).into_affine())
            .collect();
        bases[0] = G1Affine::zero();
        bases[1] = bases[2];
        bases[3] = -bases[2];
        let mut scalars: Vec<_> = (0..65).map(|_| Fr::rand(&mut rng)).collect();
        scalars[..6].copy_from_slice(&[
            Fr::ZERO,
            Fr::ONE,
            -Fr::ONE,
            Fr::from(Q - 1),
            Fr::from(Q),
            Fr::from(Q + 1),
        ]);
        for n in [0, 1, 2, 31, 32, 65] {
            let expected: G1Projective = bases[..n]
                .iter()
                .zip(&scalars[..n])
                .map(|(p, s)| p.mul_bigint(s.into_bigint()))
                .sum();
            for method in [
                Method::Arkworks,
                Method::Dense14,
                Method::Glv14,
                Method::Glv15,
                Method::Glv16,
            ] {
                assert_eq!(
                    run(method, &bases[..n], &scalars[..n]).0,
                    expected,
                    "{method:?} count {n}"
                );
            }
            let table = CachedGlv::new(&bases);
            assert_eq!(table.run(&bases[..n], &scalars[..n]).0, expected);
        }
        let table = CachedGlv::new(&bases);
        let other = bases.clone();
        assert!(std::panic::catch_unwind(|| table.run(&other, &scalars)).is_err());
    }
}
