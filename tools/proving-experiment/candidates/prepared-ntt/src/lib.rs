//! Prover-only single-column radix-2 transforms with immutable root-power tables.
use anyhow::{Result, ensure};
use commonware_cryptography::bls12381::primitives::group::Scalar;
use commonware_math::{
    algebra::{Additive, Field, FieldNTT, Ring},
    ntt::Domain,
};

pub struct PreparedTransform {
    size: usize,
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
            forward: powers(domain.generator().clone()),
            inverse: powers(domain.generator().inv()),
        })
    }
    pub fn table_bytes(&self) -> usize {
        (self.forward.len() + self.inverse.len()) * std::mem::size_of::<Scalar>()
    }
    pub fn evaluate(&self, coefficients: &[Scalar]) -> Result<Vec<Scalar>> {
        ensure!(
            coefficients.len() <= self.size,
            "polynomial exceeds FFT size"
        );
        let mut values = vec![Scalar::zero(); self.size];
        values[..coefficients.len()].clone_from_slice(coefficients);
        self.reverse(&mut values);
        for stage in 0..self.size.ilog2() {
            let skip = 1usize << stage;
            let stride = self.size / (2 * skip);
            for block in values.chunks_exact_mut(2 * skip) {
                let (left, right) = block.split_at_mut(skip);
                for (j, (a, b)) in left.iter_mut().zip(right).enumerate() {
                    let left = a.clone();
                    let product = self.forward[j * stride].clone() * &*b;
                    *a = left.clone() + &product;
                    *b = left - &product;
                }
            }
        }
        Ok(values)
    }
    pub fn interpolate(&self, evaluations: &[Scalar]) -> Result<Vec<Scalar>> {
        ensure!(evaluations.len() == self.size, "wrong evaluation count");
        let mut values = evaluations.to_vec();
        for stage in (0..self.size.ilog2()).rev() {
            let skip = 1usize << stage;
            let stride = self.size / (2 * skip);
            for block in values.chunks_exact_mut(2 * skip) {
                let (left, right) = block.split_at_mut(skip);
                for (j, (a, b)) in left.iter_mut().zip(right).enumerate() {
                    let left = a.clone();
                    let right = b.clone();
                    *a = (left.clone() + &right).div_2();
                    *b = ((left - &right) * &self.inverse[j * stride]).div_2();
                }
            }
        }
        self.reverse(&mut values);
        Ok(values)
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
                let evaluated = plan.evaluate(&coefficients).unwrap();
                assert_eq!(evaluated, reference.evaluate(&coefficients).unwrap());
                let reconstructed = plan.interpolate(&evaluated).unwrap();
                assert_eq!(reconstructed, reference.interpolate(&evaluated).unwrap());
                assert_eq!(&reconstructed[..len], coefficients);
                assert!(reconstructed[len..].iter().all(|x| *x == Scalar::zero()));
            }
            for value in [Scalar::zero(), Scalar::one(), -Scalar::one()] {
                let values = vec![value; size];
                assert_eq!(
                    plan.evaluate(&values).unwrap(),
                    reference.evaluate(&values).unwrap()
                );
                assert_eq!(
                    plan.interpolate(&values).unwrap(),
                    reference.interpolate(&values).unwrap()
                );
            }
            let values = (0..size)
                .map(|_| Scalar::random(&mut rng))
                .collect::<Vec<_>>();
            assert_eq!(
                plan.interpolate(&values).unwrap(),
                reference.interpolate(&values).unwrap()
            );
        }
    }
    #[test]
    fn descriptor_lengths_and_table_footprint_are_bounded() {
        for n in [0, 3, 7, (1 << 20) + 1, 1 << 21, usize::MAX] {
            assert!(PreparedTransform::new(n).is_err());
        }
        let plan = PreparedTransform::new(8).unwrap();
        assert!(plan.evaluate(&vec![Scalar::zero(); 9]).is_err());
        assert!(plan.interpolate(&vec![Scalar::zero(); 7]).is_err());
        assert!(plan.interpolate(&vec![Scalar::zero(); 9]).is_err());
        assert_eq!(plan.table_bytes(), 8 * 32);
        assert_eq!(PreparedTransform::new(1).unwrap().table_bytes(), 0);
    }
}
