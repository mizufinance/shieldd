//! Inclusive unsigned comparison with one state and unchanged input-bit constraints.
use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::circuit::{BoolVar, Var},
};
use commonware_math::algebra::Ring;
pub use native::range::{decompose, is_zero};
pub mod screen;

pub fn less_or_equal<'a>(
    a: &[BoolVar<'a, Scalar>],
    b: &[BoolVar<'a, Scalar>],
) -> BoolVar<'a, Scalar> {
    assert_eq!(a.len(), b.len());
    let mut le = Var::one();
    // For each new most-significant bit, equal bits preserve the lower-bit comparison.
    for (a, b) in a.iter().zip(b) {
        let x = Var::one() - a.var();
        let y = b.var();
        let both = x.clone() * y;
        let unequal = x + y - &(both.clone() + &both);
        le = both + &(le * &unequal);
    }
    BoolVar::assert(le)
}

#[cfg(test)]
mod tests {
    use super::*;
    use commonware_math::algebra::{Additive, Ring};

    #[test]
    fn exhaustive_small_comparisons_and_wrong_answers() {
        for constant in [false, true] {
            for a in 0..16 {
                for b in 0..16 {
                    for wrong in [false, true] {
                        let result = screen::check(
                            &Scalar::from(a),
                            &Scalar::from(b),
                            4,
                            constant,
                            true,
                            wrong,
                        )
                        .unwrap();
                        assert_eq!(result.original_valid, !wrong);
                        assert_eq!(result.converted_valid, !wrong);
                    }
                }
            }
        }
    }

    #[test]
    fn full_amount_and_subgroup_order_boundaries() {
        let max = Scalar::from_limbs([u64::MAX, u64::MAX, 0, 0]);
        let q = Scalar::from_limbs(native::scalar::ORDER);
        for (width, bound) in [
            (128, max),
            (129, Scalar::from_limbs([0, 0, 1, 0])),
            (252, q - &Scalar::one()),
        ] {
            for a in [
                Scalar::zero(),
                bound.clone() - &Scalar::one(),
                bound.clone(),
                bound.clone() + &Scalar::one(),
            ] {
                for constant in [false, true] {
                    let result = screen::check(&a, &bound, width, constant, true, false).unwrap();
                    let in_range = if width == 128 { a <= bound } else { true };
                    assert_eq!(result.original_valid, in_range);
                    assert_eq!(result.converted_valid, in_range);
                }
            }
        }
    }
}
