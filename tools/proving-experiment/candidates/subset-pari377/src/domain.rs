//! Checked immutable domain and the complete-row boundary for coset interpolation.
use anyhow::{ensure, Result};
use ark_bls12_377::Fr;
use ark_ff::{AdditiveGroup, FftField, Field};
use ark_poly::{
    univariate::DensePolynomial, DenseUVPolynomial, EvaluationDomain, Polynomial,
    Radix2EvaluationDomain,
};

pub struct Domain {
    descriptor: Descriptor,
    fft: Radix2EvaluationDomain<Fr>,
    coset: Radix2EvaluationDomain<Fr>,
    retained: usize,
    removed: usize,
    c: Fr,
    weights: Vec<Fr>,
    quotient_inverses: Vec<Fr>,
    vanishing: Vec<(usize, Fr)>,
}

#[derive(
    Clone,
    Copy,
    Debug,
    PartialEq,
    Eq,
    ark_serialize::CanonicalSerialize,
    ark_serialize::CanonicalDeserialize,
)]
pub struct Descriptor {
    fft_size: u32,
    removed: u32,
}
impl Descriptor {
    pub fn transfer() -> Self {
        Self {
            fft_size: 262144,
            removed: 32768,
        }
    }
}
impl Domain {
    pub fn from_descriptor(descriptor: Descriptor) -> Result<Self> {
        Self::new(descriptor.fft_size as usize, descriptor.removed as usize)
    }
    pub fn full_descriptor(&self) -> Descriptor {
        Descriptor {
            fft_size: self.descriptor.fft_size,
            removed: 0,
        }
    }
    pub fn descriptor(&self) -> Descriptor {
        self.descriptor
    }
    pub fn size(&self) -> usize {
        self.retained
    }
    pub fn fft_size(&self) -> usize {
        self.fft.size()
    }
    pub fn vanishing_terms(&self) -> impl Iterator<Item = (usize, Fr)> + '_ {
        self.vanishing.iter().copied()
    }
    pub fn lagranges(&self, point: Fr) -> Result<Vec<Fr>> {
        let roots: Vec<_> = (0..self.retained)
            .map(|i| self.fft.element(self.root_index(i).unwrap()))
            .collect();
        if let Some(i) = roots.iter().position(|x| *x == point) {
            let mut out = vec![Fr::ZERO; self.retained];
            out[i] = Fr::ONE;
            return Ok(out);
        }
        let mut inverse: Vec<_> = roots.iter().map(|root| point - root).collect();
        ark_ff::batch_inversion(&mut inverse);
        let scale = self.evaluate_vanishing(point) * self.fft.size_inv;
        for (i, (value, root)) in inverse.iter_mut().zip(roots).enumerate() {
            let root_index = self.root_index(i)?;
            *value *= scale * root * self.weights[root_index % self.weights.len()];
        }
        Ok(inverse)
    }
    pub fn checked_polynomials(&self, a: &[Fr], b: &[Fr]) -> Result<(Vec<Fr>, Vec<Fr>, Vec<Fr>)> {
        self.check_rows(a, b)?;
        let a = self.interpolate(a)?;
        let b = self.interpolate(b)?;
        let q = self.quotient(&a, &b)?;
        Ok((a, b, q))
    }
    fn new(n: usize, removed: usize) -> Result<Self> {
        ensure!(
            (8..=1 << 20).contains(&n) && n.is_power_of_two(),
            "unsupported FFT size"
        );
        ensure!(
            removed == 0 || removed.is_power_of_two() && removed < n && n % removed == 0,
            "invalid excluded coset"
        );
        let fft = Radix2EvaluationDomain::<Fr>::new(n).unwrap();
        let coset = fft.get_coset(Fr::GENERATOR).unwrap();
        let denominator = (Fr::GENERATOR.pow([n as u64]) - Fr::ONE).inverse().unwrap();
        let retained = n - removed;
        let (c, weights, quotient_inverses, vanishing) = if removed == 0 {
            (
                Fr::ONE,
                vec![Fr::ONE],
                vec![denominator],
                vec![(0, -Fr::ONE), (n, Fr::ONE)],
            )
        } else {
            let ratio = n / removed;
            let c = fft.group_gen.pow([removed as u64]);
            let shift = Fr::GENERATOR.pow([removed as u64]);
            let powers: Vec<_> = (0..ratio).map(|i| c.pow([i as u64])).collect();
            let weights = powers.iter().map(|p| *p - c).collect();
            let inverses = powers
                .iter()
                .map(|p| (shift * p - c) * denominator)
                .collect();
            let vanishing = (0..ratio)
                .map(|i| (i * removed, c.pow([(ratio - 1 - i) as u64])))
                .collect();
            (c, weights, inverses, vanishing)
        };
        Ok(Self {
            descriptor: Descriptor {
                fft_size: n as u32,
                removed: removed as u32,
            },
            fft,
            coset,
            retained,
            removed,
            c,
            weights,
            quotient_inverses,
            vanishing,
        })
    }

    pub fn root_index(&self, ordinal: usize) -> Result<usize> {
        ensure!(ordinal < self.retained, "row outside retained domain");
        Ok(if self.removed == 0 {
            ordinal
        } else {
            let per_period = self.weights.len() - 1;
            ordinal + (ordinal + per_period - 1) / per_period
        })
    }

    pub fn interpolate(&self, values: &[Fr]) -> Result<Vec<Fr>> {
        ensure!(values.len() <= self.retained, "too many row evaluations");
        if self.removed == 0 {
            return Ok(self.fft.ifft(values));
        }
        let mut weighted = vec![Fr::ZERO; self.fft.size()];
        for (ordinal, value) in values.iter().enumerate() {
            let root = self.root_index(ordinal)?;
            weighted[root] = *value * self.weights[root % self.weights.len()];
        }
        self.fft.ifft_in_place(&mut weighted);
        let mut coefficients = vec![Fr::ZERO; self.retained];
        for k in (self.removed..weighted.len()).rev() {
            let v = weighted[k];
            coefficients[k - self.removed] = v;
            weighted[k - self.removed] += self.c * v;
            weighted[k] = Fr::ZERO;
        }
        ensure!(
            weighted.iter().all(|v| *v == Fr::ZERO),
            "weighted interpolation remainder"
        );
        Ok(coefficients)
    }

    pub fn check_rows(&self, a: &[Fr], b: &[Fr]) -> Result<()> {
        ensure!(
            a.len() == self.retained && b.len() == self.retained,
            "complete real and padding rows required"
        );
        ensure!(
            a.iter().zip(b).all(|(a, b)| a.square() == *b),
            "unsatisfied row"
        );
        Ok(())
    }

    fn quotient(&self, a: &[Fr], b: &[Fr]) -> Result<Vec<Fr>> {
        ensure!(
            a.len() <= self.retained && b.len() <= self.retained,
            "interpolant degree"
        );
        let mut q = self.coset.fft(a);
        let other = self.coset.fft(b);
        for (i, (a, b)) in q.iter_mut().zip(other).enumerate() {
            *a = (a.square() - b) * self.quotient_inverses[i % self.quotient_inverses.len()];
        }
        self.coset.ifft_in_place(&mut q);
        ensure!(
            q[self.retained - 1..].iter().all(|v| *v == Fr::ZERO),
            "quotient degree overflow"
        );
        q.truncate(self.retained - 1);
        Ok(q)
    }

    pub fn multiply_vanishing(&self, polynomial: &[Fr]) -> Vec<Fr> {
        let mut out = vec![Fr::ZERO; polynomial.len() + self.retained];
        for (power, factor) in &self.vanishing {
            for (i, value) in polynomial.iter().enumerate() {
                if *factor == Fr::ONE {
                    out[i + power] += value;
                } else if *factor == -Fr::ONE {
                    out[i + power] -= value;
                } else {
                    out[i + power] += *value * factor;
                }
            }
        }
        out
    }

    pub fn evaluate_vanishing(&self, point: Fr) -> Fr {
        self.vanishing
            .iter()
            .map(|(power, factor)| point.pow([*power as u64]) * factor)
            .sum()
    }

    pub fn lagrange(&self, ordinal: usize, point: Fr) -> Result<Fr> {
        let root_index = self.root_index(ordinal)?;
        let root = self.fft.element(root_index);
        if root == point {
            return Ok(Fr::ONE);
        }
        let weight = self.weights[root_index % self.weights.len()];
        Ok(self.evaluate_vanishing(point)
            * weight
            * root
            * self.fft.size_inv
            * (point - root).inverse().unwrap())
    }

    /// Independent 2N-product oracle, used outside timing only.
    pub fn quotient_oracle(&self, a: &[Fr], b: &[Fr]) -> Result<Vec<Fr>> {
        let wide = Radix2EvaluationDomain::<Fr>::new(2 * self.fft.size()).unwrap();
        let mut product = wide.fft(a);
        for v in &mut product {
            *v = v.square();
        }
        wide.ifft_in_place(&mut product);
        for (v, b) in product.iter_mut().zip(b) {
            *v -= b;
        }
        let mut numerator = if self.removed == 0 {
            product
        } else {
            let mut out = vec![Fr::ZERO; product.len() + self.removed];
            for (i, v) in product.into_iter().enumerate() {
                out[i] -= self.c * v;
                out[i + self.removed] += v;
            }
            out
        };
        let n = self.fft.size();
        let mut q = vec![Fr::ZERO; numerator.len() - n];
        for k in (n..numerator.len()).rev() {
            let value = numerator[k];
            q[k - n] = value;
            numerator[k - n] += value;
            numerator[k] = Fr::ZERO;
        }
        ensure!(
            numerator.iter().all(|v| *v == Fr::ZERO),
            "oracle relation remainder"
        );
        ensure!(
            q[self.retained - 1..].iter().all(|v| *v == Fr::ZERO),
            "oracle quotient degree"
        );
        q.truncate(self.retained - 1);
        Ok(q)
    }
}

pub fn opening(polynomial: &[Fr], challenge: Fr) -> Vec<Fr> {
    let p = DensePolynomial::from_coefficients_vec(polynomial.to_vec());
    let value = p.evaluate(&challenge);
    let constant = DensePolynomial::from_coefficients_vec(vec![value]);
    let linear = DensePolynomial::from_coefficients_vec(vec![-challenge, Fr::ONE]);
    ((&p - &constant) / &linear).coeffs
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn subset_interpolation_lagrange_and_quotient_cover_retained_and_excluded_roots() {
        for removed in [0, 2, 4, 8] {
            let domain = Domain::new(16, removed).unwrap();
            let coefficients: Vec<_> = (0..domain.retained)
                .map(|i| Fr::from((i + 3) as u64))
                .collect();
            let polynomial = DensePolynomial::from_coefficients_vec(coefficients.clone());
            let values: Vec<_> = (0..domain.retained)
                .map(|i| polynomial.evaluate(&domain.fft.element(domain.root_index(i).unwrap())))
                .collect();
            assert_eq!(domain.interpolate(&values).unwrap(), coefficients);
            for point in domain.fft.elements().chain([Fr::from(41)]) {
                let batch = domain.lagranges(point).unwrap();
                for (i, value) in batch.iter().enumerate() {
                    assert_eq!(*value, domain.lagrange(i, point).unwrap());
                }
                let recovered: Fr = values
                    .iter()
                    .enumerate()
                    .map(|(i, v)| *v * domain.lagrange(i, point).unwrap())
                    .sum();
                assert_eq!(recovered, polynomial.evaluate(&point));
            }
            let b: Vec<_> = values.iter().map(|v| v.square()).collect();
            domain.check_rows(&values, &b).unwrap();
            let bb = domain.interpolate(&b).unwrap();
            assert_eq!(
                domain.quotient(&coefficients, &bb).unwrap(),
                domain.quotient_oracle(&coefficients, &bb).unwrap()
            );
            for i in 0..domain.retained {
                let mut invalid = b.clone();
                invalid[i] += Fr::ONE;
                assert!(domain.check_rows(&values, &invalid).is_err());
                let bad = domain.interpolate(&invalid).unwrap();
                assert!(domain.quotient_oracle(&coefficients, &bad).is_err());
            }
            let opened = opening(&coefficients, Fr::from(41));
            let mut rebuilt = vec![Fr::ZERO; opened.len() + 1];
            for (i, v) in opened.iter().enumerate() {
                rebuilt[i] -= Fr::from(41) * v;
                rebuilt[i + 1] += v;
            }
            rebuilt[0] += polynomial.evaluate(&Fr::from(41));
            assert_eq!(rebuilt, coefficients);
        }
    }
    #[test]
    fn malformed_domains_and_row_counts_reject() {
        for (n, s) in [
            (0, 0),
            (15, 0),
            (16, 3),
            (16, 16),
            (usize::MAX, 1),
            (16, usize::MAX),
        ] {
            assert!(Domain::new(n, s).is_err());
        }
        let d = Domain::new(16, 2).unwrap();
        assert!(d.root_index(14).is_err());
        assert!(d.interpolate(&vec![Fr::ZERO; 15]).is_err());
        assert!(d
            .check_rows(&vec![Fr::ZERO; 13], &vec![Fr::ZERO; 13])
            .is_err());
    }
}
