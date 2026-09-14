//! Prover-only single-column radix-2 transforms with immutable root-power tables.
use anyhow::{Result, ensure};
use commonware_parallel::Strategy;
use commonware_cryptography::bls12381::primitives::group::Scalar;
use commonware_math::{
    algebra::{Additive, Field, Ring},
    ntt::Domain,
};

pub struct PreparedTransform {
    size: usize,
    inverse_size: Scalar,
    forward: Vec<Scalar>,
    inverse: Vec<Scalar>,
}
impl PreparedTransform {
    pub fn new(size: usize) -> Result<Self> {
        ensure!(
            size.is_power_of_two() && size <= 1 << 20,
            "invalid bounded FFT size"
        );
        let domain = Domain::<Scalar>::new(size)?;
        let powers = |root: Scalar| {
            let mut power = Scalar::one();
            (0..size / 2)
                .map(|_| {
                    let value = power.clone();
                    power *= &root;
                    value
                })
                .collect()
        };
        Ok(Self {
            size,
            inverse_size: Scalar::from(size as u64).inv(),
            forward: powers(domain.generator().clone()),
            inverse: powers(domain.generator().inv()),
        })
    }
    pub fn table_bytes(&self) -> usize {
        (self.forward.len() + self.inverse.len()) * std::mem::size_of::<Scalar>()
    }
    pub fn evaluate(&self, coefficients: &[Scalar], strategy: &impl Strategy) -> Result<Vec<Scalar>> {
        ensure!(
            coefficients.len() <= self.size,
            "polynomial exceeds FFT size"
        );
        let mut values = vec![Scalar::zero(); self.size];
        values[..coefficients.len()].clone_from_slice(coefficients);
        self.reverse(&mut values);
        for stage in 0..self.size.ilog2() {
            self.stage::<false>(&mut values, 1usize << stage, strategy);
        }
        Ok(values)
    }
    pub fn interpolate(&self, evaluations: &[Scalar], strategy: &impl Strategy) -> Result<Vec<Scalar>> {
        ensure!(evaluations.len() == self.size, "wrong evaluation count");
        let mut values = evaluations.to_vec();
        for stage in (0..self.size.ilog2()).rev() {
            self.stage::<true>(&mut values, 1usize << stage, strategy);
        }
        self.reverse(&mut values);
        for value in &mut values { *value *= &self.inverse_size; }
        Ok(values)
    }
    fn stage<const INVERSE: bool>(&self, values: &mut [Scalar], skip: usize, strategy: &impl Strategy) {
        let stride = self.size / (2 * skip);
        let powers = if INVERSE { &self.inverse } else { &self.forward };
        let butterflies = |left: &mut [Scalar], right: &mut [Scalar], offset: usize| {
            for (j, (a, b)) in left.iter_mut().zip(right).enumerate() {
                let left = a.clone();
                let right = b.clone();
                if INVERSE {
                    *a = left.clone() + &right;
                    *b = (left - &right) * &powers[(j + offset) * stride];
                } else {
                    let product = right * &powers[(j + offset) * stride];
                    *a = left.clone() + &product;
                    *b = left - &product;
                }
            }
        };
        let blocks = |values: &mut [Scalar]| {
            for block in values.chunks_exact_mut(2 * skip) {
                let (left, right) = block.split_at_mut(skip);
                butterflies(left, right, 0);
            }
        };
        if self.size < 8192 {
            blocks(values);
        } else if skip == self.size / 2 {
            let (left, right) = values.split_at_mut(skip);
            let (a, b) = left.split_at_mut(skip / 2);
            let (c, d) = right.split_at_mut(skip / 2);
            strategy.manual().join(|| butterflies(a, c, 0), || butterflies(b, d, skip / 2));
        } else {
            let (left, right) = values.split_at_mut(self.size / 2);
            strategy.manual().join(|| blocks(left), || blocks(right));
        }
    }
    fn reverse(&self, values: &mut [Scalar]) {
        if self.size == 1 {
            return;
        }
        let shift = usize::BITS - self.size.ilog2();
        for i in 0..self.size {
            let j = i.reverse_bits() >> shift;
            if i < j {
                values.swap(i, j);
            }
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use commonware_parallel::{Sequential, Rayon};
    use std::num::NonZeroUsize;
    use commonware_math::algebra::Random;
    use rand::{SeedableRng, rngs::StdRng};
    #[test]
    fn exact_forward_inverse_and_padding_match_reference() {
        let mut rng = StdRng::seed_from_u64(914);
        for size in [1, 2, 4, 8, 32, 128, 1024] {
            let reference = Domain::<Scalar>::new(size).unwrap();
            let plan = PreparedTransform::new(size).unwrap();
            for len in [0, 1, size / 2, size] {
                let coefficients = (0..len)
                    .map(|_| Scalar::random(&mut rng))
                    .collect::<Vec<_>>();
                let evaluated = plan.evaluate(&coefficients, &Sequential).unwrap();
                assert_eq!(evaluated, reference.evaluate(&coefficients).unwrap());
                let reconstructed = plan.interpolate(&evaluated, &Sequential).unwrap();
                assert_eq!(reconstructed, reference.interpolate(&evaluated).unwrap());
                assert_eq!(&reconstructed[..len], coefficients);
                assert!(reconstructed[len..].iter().all(|x| *x == Scalar::zero()));
            }
            for value in [Scalar::zero(), Scalar::one(), -Scalar::one()] {
                let values = vec![value; size];
                assert_eq!(
                    plan.evaluate(&values, &Sequential).unwrap(),
                    reference.evaluate(&values).unwrap()
                );
                assert_eq!(
                    plan.interpolate(&values, &Sequential).unwrap(),
                    reference.interpolate(&values).unwrap()
                );
            }
            let values = (0..size)
                .map(|_| Scalar::random(&mut rng))
                .collect::<Vec<_>>();
            assert_eq!(
                plan.interpolate(&values, &Sequential).unwrap(),
                reference.interpolate(&values).unwrap()
            );
        }
    }
    #[test]
    fn one_and_two_workers_match_across_partition_threshold() {
        let mut rng = StdRng::seed_from_u64(917);
        for workers in [1, 2] {
            let strategy = Rayon::new(NonZeroUsize::new(workers).unwrap()).unwrap();
            for size in [4096, 8192, 16384] {
                let reference = Domain::<Scalar>::new(size).unwrap();
                let plan = PreparedTransform::new(size).unwrap();
                for len in [0, size - 1, size] {
                    let coefficients = (0..len).map(|_| Scalar::random(&mut rng)).collect::<Vec<_>>();
                    let evaluations = plan.evaluate(&coefficients, &strategy).unwrap();
                    assert_eq!(evaluations, reference.evaluate(&coefficients).unwrap());
                    assert_eq!(plan.interpolate(&evaluations, &strategy).unwrap(), reference.interpolate(&evaluations).unwrap());
                }
                let evaluations = (0..size).map(|_| Scalar::random(&mut rng)).collect::<Vec<_>>();
                assert_eq!(plan.interpolate(&evaluations, &strategy).unwrap(), reference.interpolate(&evaluations).unwrap());
            }
        }
    }
    #[test]
    fn descriptor_lengths_and_table_footprint_are_bounded() {
        for n in [0, 3, 7, (1 << 20) + 1, 1 << 21, usize::MAX] {
            assert!(PreparedTransform::new(n).is_err());
        }
        let plan = PreparedTransform::new(8).unwrap();
        assert!(plan.evaluate(&vec![Scalar::zero(); 9], &Sequential).is_err());
        assert!(plan.interpolate(&vec![Scalar::zero(); 7], &Sequential).is_err());
        assert!(plan.interpolate(&vec![Scalar::zero(); 9], &Sequential).is_err());
        assert_eq!(plan.table_bytes(), 8 * 32);
        assert_eq!(PreparedTransform::new(1).unwrap().table_bytes(), 0);
    }
}
