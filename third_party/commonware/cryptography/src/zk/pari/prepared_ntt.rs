//! BLS scalar parity coverage for the shared prepared transform.
#[cfg(test)]
mod tests {
    use crate::bls12381::primitives::group::Scalar;
    use commonware_math::algebra::{FieldNTT, Random};
    use commonware_math::{
        algebra::{Additive, Ring},
        ntt::{Domain, PreparedTransform},
    };
    use commonware_parallel::{Rayon, Sequential};
    use rand::{SeedableRng, rngs::StdRng};
    use std::num::NonZeroUsize;
    #[test]
    fn exact_forward_inverse_and_padding_match_reference() {
        let mut rng = StdRng::seed_from_u64(914);
        let parallel = Rayon::new(NonZeroUsize::new(2).unwrap()).unwrap();
        for size in [1, 2, 4, 8, 32, 128, 1024] {
            let reference = Domain::<Scalar>::new(size).unwrap();
            let plan = PreparedTransform::new(&reference).unwrap();
            for len in [0, 1, size / 2, size] {
                let coefficients = (0..len)
                    .map(|_| Scalar::random(&mut rng))
                    .collect::<Vec<_>>();
                let evaluated = plan.evaluate(coefficients.clone(), &Sequential).unwrap();
                assert_eq!(evaluated, reference.evaluate(&coefficients).unwrap());
                assert_eq!(
                    evaluated,
                    plan.evaluate(coefficients.clone(), &parallel).unwrap()
                );
                let reconstructed = plan.interpolate(evaluated.clone(), &Sequential).unwrap();
                assert_eq!(reconstructed, reference.interpolate(&evaluated).unwrap());
                assert_eq!(
                    reconstructed,
                    plan.interpolate(evaluated.clone(), &parallel).unwrap()
                );
                let mut unscaled = plan
                    .interpolate_unscaled(evaluated.clone(), &parallel)
                    .unwrap();
                for value in &mut unscaled {
                    *value *= plan.inverse_size();
                }
                assert_eq!(reconstructed, unscaled);
                assert_eq!(&reconstructed[..len], coefficients);
                assert!(reconstructed[len..].iter().all(|x| *x == Scalar::zero()));
            }
            for value in [Scalar::zero(), Scalar::one(), -Scalar::one()] {
                let values = vec![value; size];
                assert_eq!(
                    plan.evaluate(values.clone(), &Sequential).unwrap(),
                    reference.evaluate(&values).unwrap()
                );
                assert_eq!(
                    plan.interpolate(values.clone(), &Sequential).unwrap(),
                    reference.interpolate(&values).unwrap()
                );
            }
            let values = (0..size)
                .map(|_| Scalar::random(&mut rng))
                .collect::<Vec<_>>();
            assert_eq!(
                plan.interpolate(values.clone(), &Sequential).unwrap(),
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
                let plan = PreparedTransform::new(&reference).unwrap();
                for len in [0, size - 1, size] {
                    let coefficients = (0..len)
                        .map(|_| Scalar::random(&mut rng))
                        .collect::<Vec<_>>();
                    let evaluations = plan.evaluate(coefficients.clone(), &strategy).unwrap();
                    assert_eq!(evaluations, reference.evaluate(&coefficients).unwrap());
                    assert_eq!(
                        plan.interpolate(evaluations.clone(), &strategy).unwrap(),
                        reference.interpolate(&evaluations).unwrap()
                    );
                }
                let evaluations = (0..size)
                    .map(|_| Scalar::random(&mut rng))
                    .collect::<Vec<_>>();
                assert_eq!(
                    plan.interpolate(evaluations.clone(), &strategy).unwrap(),
                    reference.interpolate(&evaluations).unwrap()
                );
            }
        }
    }
    #[test]
    fn descriptor_lengths_and_table_footprint_are_bounded() {
        for n in [0, usize::MAX] {
            assert!(
                Domain::<Scalar>::new(n)
                    .and_then(|domain| PreparedTransform::new(&domain))
                    .is_err()
            );
        }
        if let Some(unsupported) = 1usize.checked_shl(u32::from(Scalar::MAX_LG_ROOT_ORDER) + 1) {
            assert!(
                Domain::<Scalar>::new(unsupported)
                    .and_then(|domain| PreparedTransform::new(&domain))
                    .is_err()
            );
        }
        let plan = PreparedTransform::new(&Domain::<Scalar>::new(8).unwrap()).unwrap();
        assert!(plan.evaluate(vec![Scalar::zero(); 9], &Sequential).is_err());
        assert!(
            plan.interpolate(vec![Scalar::zero(); 7], &Sequential)
                .is_err()
        );
        assert!(
            plan.interpolate(vec![Scalar::zero(); 9], &Sequential)
                .is_err()
        );
        assert_eq!(plan.table_bytes(), 8 * std::mem::size_of::<Scalar>());
        assert_eq!(
            PreparedTransform::new(&Domain::<Scalar>::new(1).unwrap())
                .unwrap()
                .table_bytes(),
            0
        );
    }
}
