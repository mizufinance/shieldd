use commonware_codec::Encode;
use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::circuit::{BoolVar, Context, Var},
};
use commonware_math::algebra::{Additive, Field, Ring};

pub fn is_zero<'ctx>(
    ctx: Context<'ctx, Scalar>,
    value: &Var<'ctx, Scalar>,
) -> BoolVar<'ctx, Scalar> {
    let zero = BoolVar::witness(ctx, |v| value.value(v) == Scalar::zero());
    let inverse = Var::witness(ctx, |v| value.value(v).inv());
    (value.clone() * &inverse).assert_eq(&(Var::one() - zero.var()));
    (value.clone() * zero.var()).assert_eq(&Var::zero());
    zero
}

/// An injective integer decomposition for amounts, sums, positions and timestamps.
pub fn decompose<'ctx>(
    ctx: Context<'ctx, Scalar>,
    value: &Var<'ctx, Scalar>,
    width: usize,
) -> Vec<BoolVar<'ctx, Scalar>> {
    assert!(
        (1..=254).contains(&width),
        "full-field encodings need a separate modulus bound"
    );
    let mut sum = Var::zero();
    let mut weight = Scalar::one();
    let bits = (0..width)
        .map(|i| {
            let bit = BoolVar::witness(ctx, |values| {
                let bytes = value.value(values).encode();
                bytes[31 - i / 8] >> (i % 8) & 1 == 1
            });
            sum += &(bit.var().clone() * &Var::constant(ctx, weight.clone()));
            weight = weight.clone() + &weight;
            bit
        })
        .collect();
    sum.assert_eq(value);
    bits
}

pub fn less_or_equal<'ctx>(
    a: &[BoolVar<'ctx, Scalar>],
    b: &[BoolVar<'ctx, Scalar>],
) -> BoolVar<'ctx, Scalar> {
    assert_eq!(a.len(), b.len());
    let mut equal = BoolVar::constant(true);
    let mut less = BoolVar::constant(false);
    for (a, b) in a.iter().zip(b).rev() {
        less = less | (equal.clone() & !a.clone() & b.clone());
        equal = equal & ((a.clone() & b.clone()) | (!a.clone() & !b.clone()));
    }
    less | equal
}

#[cfg(test)]
mod tests {
    use super::*;
    use commonware_cryptography::zk::circuit::build_with_values;
    #[test]
    fn full_u128_and_u129_sum_are_preserved() {
        let max = Scalar::from_limbs([u64::MAX, u64::MAX, 0, 0]);
        let (valid, _) = build_with_values(|ctx| {
            let a = Var::witness(ctx, |_| max.clone());
            decompose(ctx, &a, 128);
            decompose(ctx, &(a.clone() + &a), 129);
            Vec::new()
        });
        assert!(valid.is_satisfied());
        let (invalid, _) = build_with_values(|ctx| {
            let a = Var::witness(ctx, |_| max.clone() + &Scalar::one());
            decompose(ctx, &a, 128);
            Vec::new()
        });
        assert!(!invalid.is_satisfied());
    }
    #[test]
    fn limit_boundary_is_inclusive() {
        for (a, b, expected) in [(9, 10, true), (10, 10, true), (11, 10, false)] {
            let (c, _) = build_with_values(|ctx| {
                let av = Var::witness(ctx, |_| Scalar::from(a));
                let bv = Var::witness(ctx, |_| Scalar::from(b));
                less_or_equal(&decompose(ctx, &av, 128), &decompose(ctx, &bv, 128))
                    .assert_eq(&BoolVar::constant(expected));
                Vec::new()
            });
            assert!(c.is_satisfied());
        }
    }
}
