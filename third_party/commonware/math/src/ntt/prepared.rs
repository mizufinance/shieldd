//! Prepared single-column transforms using immutable root-power tables.
use super::{Domain, Error, reverse_slice};
use crate::algebra::FieldNTT;
#[cfg(not(feature = "std"))]
use alloc::vec::Vec;
use commonware_parallel::Strategy;
#[cfg(feature = "std")]
use std::vec::Vec;

/// A radix-2 transform with reusable root powers and consuming vector operations.
pub struct PreparedTransform<F> {
    size: usize,
    inverse_size: F,
    forward: Vec<F>,
    inverse: Vec<F>,
}
impl<F: FieldNTT> PreparedTransform<F> {
    /// Prepare immutable root tables for an existing evaluation domain.
    pub fn new(domain: &Domain<F>) -> Result<Self, Error> {
        let size = domain.size();
        let powers = |root: F| -> Result<Vec<F>, Error> {
            let mut values = Vec::new();
            values
                .try_reserve_exact(size / 2)
                .map_err(|_| Error::AllocationFailed)?;
            let mut power = F::one();
            for _ in 0..size / 2 {
                values.push(power.clone());
                power *= &root;
            }
            Ok(values)
        };
        Ok(Self {
            size,
            inverse_size: domain.size_inverse.clone(),
            forward: powers(domain.generator().clone())?,
            inverse: powers(domain.generator().inv())?,
        })
    }
    /// Bytes occupied by immutable root-power tables.
    pub fn table_bytes(&self) -> usize {
        (self.forward.len() + self.inverse.len()) * core::mem::size_of::<F>()
    }
    /// Consume coefficients, padding in place before evaluation in natural order.
    pub fn evaluate(&self, mut values: Vec<F>, strategy: &impl Strategy) -> Result<Vec<F>, Error> {
        if values.len() > self.size {
            return Err(Error::PolynomialTooLarge {
                coefficients: values.len(),
                domain_size: self.size,
            });
        }
        values
            .try_reserve(self.size - values.len())
            .map_err(|_| Error::AllocationFailed)?;
        values.resize(self.size, F::zero());
        reverse_slice(self.size.ilog2(), &mut values);
        for stage in 0..self.size.ilog2() {
            self.stage::<false>(&mut values, 1usize << stage, strategy);
        }
        Ok(values)
    }
    /// The normalization factor required after an unscaled inverse transform.
    pub fn inverse_size(&self) -> &F {
        &self.inverse_size
    }
    /// Consume evaluations and recover coefficients in the same allocation.
    pub fn interpolate(
        &self,
        evaluations: Vec<F>,
        strategy: &impl Strategy,
    ) -> Result<Vec<F>, Error> {
        let mut values = self.interpolate_unscaled(evaluations, strategy)?;
        for value in &mut values {
            *value *= &self.inverse_size;
        }
        Ok(values)
    }
    /// Returns N times IFFT; callers apply exactly one inverse-N factor.
    pub fn interpolate_unscaled(
        &self,
        evaluations: Vec<F>,
        strategy: &impl Strategy,
    ) -> Result<Vec<F>, Error> {
        if evaluations.len() != self.size {
            return Err(Error::EvaluationCount {
                expected: self.size,
                actual: evaluations.len(),
            });
        }
        let mut values = evaluations;
        for stage in (0..self.size.ilog2()).rev() {
            self.stage::<true>(&mut values, 1usize << stage, strategy);
        }
        reverse_slice(self.size.ilog2(), &mut values);
        Ok(values)
    }
    fn stage<const INVERSE: bool>(&self, values: &mut [F], skip: usize, strategy: &impl Strategy) {
        let stride = self.size / (2 * skip);
        let powers = if INVERSE {
            &self.inverse
        } else {
            &self.forward
        };
        let butterflies = |left: &mut [F], right: &mut [F], offset: usize| {
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
        let blocks = |values: &mut [F]| {
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
            strategy
                .manual()
                .join(|| butterflies(a, c, 0), || butterflies(b, d, skip / 2));
        } else {
            let (left, right) = values.split_at_mut(self.size / 2);
            strategy.manual().join(|| blocks(left), || blocks(right));
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::{
        algebra::{Additive, Ring},
        fields::goldilocks::F,
    };
    use commonware_parallel::Sequential;

    #[test]
    fn goldilocks_matches_domain_with_padding_and_inverse_normalization() {
        for size in [1, 2, 4, 16, 128, 8192] {
            let domain = Domain::<F>::new(size).unwrap();
            let prepared = PreparedTransform::new(&domain).unwrap();
            for len in [0, 1, size / 2, size] {
                let coefficients = (0..len)
                    .map(|i| F::from((i as u64 + 7).pow(3)))
                    .collect::<Vec<_>>();
                let expected = domain.evaluate(&coefficients).unwrap();
                let evaluations = prepared.evaluate(coefficients, &Sequential).unwrap();
                assert_eq!(evaluations, expected);
                let expected = domain.interpolate(&evaluations).unwrap();
                assert_eq!(
                    prepared
                        .interpolate(evaluations.clone(), &Sequential)
                        .unwrap(),
                    expected
                );
                let mut unscaled = prepared
                    .interpolate_unscaled(evaluations, &Sequential)
                    .unwrap();
                for value in &mut unscaled {
                    *value *= prepared.inverse_size();
                }
                assert_eq!(unscaled, expected);
            }
        }
    }

    #[test]
    fn transforms_reuse_an_adequately_sized_allocation() {
        let domain = Domain::<F>::new(32).unwrap();
        let prepared = PreparedTransform::new(&domain).unwrap();
        let mut coefficients = Vec::with_capacity(domain.size());
        coefficients.extend([F::one(), F::from(7)]);
        let allocation = coefficients.as_ptr();
        let evaluations = prepared.evaluate(coefficients, &Sequential).unwrap();
        assert_eq!(evaluations.as_ptr(), allocation);
        let restored = prepared.interpolate(evaluations, &Sequential).unwrap();
        assert_eq!(restored.as_ptr(), allocation);
        assert_eq!(restored[0], F::one());
        assert_eq!(restored[1], F::from(7));
        assert!(restored[2..].iter().all(|value| *value == F::zero()));
    }
}
