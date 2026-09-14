use crate::range::{decompose, less_or_equal};
use commonware_codec::Encode;
use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::circuit::{BoolVar, Context, Var},
};
use commonware_math::algebra::Ring;

pub const ORDER: [u64; 4] = [
    15030498081868557495,
    11990869827041890434,
    461402362329971456,
    1044189607433056169,
];
pub const INVERSE_EIGHT: [u64; 4] = [
    6490498278660957591,
    1498858728380236304,
    2363518304504940384,
    130523700929132021,
];
#[derive(Clone)]
pub struct Reduction {
    pub remainder: Scalar,
    pub quotient: u64,
}

/// Fixed eight subtract-and-select rounds reduce a canonical circuit-field value.
pub fn reduce(value: &Scalar) -> Reduction {
    let bytes = value.encode();
    let mut limbs: [u64; 4] = std::array::from_fn(|i| {
        u64::from_be_bytes(
            bytes[(3 - i) * 8..(4 - i) * 8]
                .try_into()
                .expect("scalar limb"),
        )
    });
    let mut quotient = 0;
    for _ in 0..8 {
        let mut borrow = 0u128;
        let difference = std::array::from_fn::<_, 4, _>(|i| {
            let wide = (1u128 << 64) + u128::from(limbs[i]) - u128::from(ORDER[i]) - borrow;
            borrow = (wide >> 64) ^ 1;
            wide as u64
        });
        let select = (borrow as u64).wrapping_sub(1);
        for i in 0..4 {
            limbs[i] = (difference[i] & select) | (limbs[i] & !select);
        }
        quotient += (borrow as u64) ^ 1;
    }
    Reduction {
        remainder: Scalar::from_limbs(limbs),
        quotient,
    }
}
fn bound<'ctx>(maximum: &Scalar, width: usize) -> Vec<BoolVar<'ctx, Scalar>> {
    let bytes = maximum.encode();
    (0..width)
        .map(|i| BoolVar::constant(bytes[31 - i / 8] >> (i % 8) & 1 == 1))
        .collect()
}

/// A canonical subgroup scalar, not merely a 252-bit integer.
pub fn canonical_bits<'ctx>(
    ctx: Context<'ctx, Scalar>,
    value: &Var<'ctx, Scalar>,
) -> Vec<BoolVar<'ctx, Scalar>> {
    let bits = decompose(ctx, value, 252);
    less_or_equal(
        &bits,
        &bound(&(Scalar::from_limbs(ORDER) - &Scalar::one()), 252),
    )
    .assert_eq(&BoolVar::constant(true));
    bits
}

/// The q=8 boundary prevents a field-wrapped quotient/remainder equation.
pub fn constrain_reduction<'ctx>(
    ctx: Context<'ctx, Scalar>,
    value: &Var<'ctx, Scalar>,
    claimed: &Reduction,
) -> Vec<BoolVar<'ctx, Scalar>> {
    let quotient = Var::witness(ctx, |_| Scalar::from(claimed.quotient));
    let remainder = Var::witness(ctx, |_| claimed.remainder.clone());
    let qbits = decompose(ctx, &quotient, 4);
    less_or_equal(&qbits, &bound(&Scalar::from(8), 4)).assert_eq(&BoolVar::constant(true));
    let rbits = canonical_bits(ctx, &remainder);
    (quotient * &Var::native(Scalar::from_limbs(ORDER)) + &remainder).assert_eq(value);
    let last = -Scalar::one() - &(Scalar::from_limbs(ORDER) * &Scalar::from(8));
    (qbits[3].clone() & !less_or_equal(&rbits, &bound(&last, 252)))
        .assert_eq(&BoolVar::constant(false));
    rbits
}

#[cfg(test)]
mod tests {
    use super::*;
    use commonware_cryptography::zk::circuit::build_with_values;
    use commonware_math::algebra::Additive;
    #[test]
    fn subgroup_reduction_preserves_canonical_integer_equation() {
        let order = Scalar::from_limbs(ORDER);
        for value in [
            Scalar::zero(),
            order.clone() - &Scalar::one(),
            order.clone(),
            -Scalar::one(),
        ] {
            let reduced = reduce(&value);
            assert!(reduced.remainder < order);
            assert_eq!(
                Scalar::from(reduced.quotient) * &order + &reduced.remainder,
                value
            );
            let (valid, _) = build_with_values(|ctx| {
                let v = Var::witness(ctx, |_| value.clone());
                constrain_reduction(ctx, &v, &reduced);
                Vec::new()
            });
            assert!(valid.is_satisfied());
        }
        let wrapped = Reduction {
            quotient: 8,
            remainder: -(order * &Scalar::from(8)),
        };
        let (invalid, _) = build_with_values(|ctx| {
            let zero = Var::witness(ctx, |_| Scalar::zero());
            constrain_reduction(ctx, &zero, &wrapped);
            Vec::new()
        });
        assert!(!invalid.is_satisfied());
    }
}
