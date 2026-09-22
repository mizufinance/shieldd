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

/// Compare two already constrained equal-width integer bit vectors.
pub fn less_or_equal_bounded<'ctx>(
    ctx: Context<'ctx, Scalar>,
    a: &[BoolVar<'ctx, Scalar>],
    b: &[BoolVar<'ctx, Scalar>],
) -> BoolVar<'ctx, Scalar> {
    assert_eq!(a.len(), b.len());
    assert!((1..=253).contains(&a.len()));
    let compose = |bits: &[BoolVar<'ctx, Scalar>]| {
        let mut weight = Scalar::one();
        bits.iter().fold(Var::zero(), |sum, bit| {
            let term = bit.var().clone() * &Var::native(weight.clone());
            weight = weight.clone() + &weight;
            sum + &term
        })
    };
    let a_value = compose(a);
    let b_value = compose(b);
    let two_to_width = (0..a.len()).fold(Scalar::one(), |x, _| x.clone() + &x);
    let borrow = BoolVar::witness(ctx, |values| {
        a_value.value(values).encode() > b_value.value(values).encode()
    });
    let difference = Var::witness(ctx, |values| {
        b_value.value(values) - &a_value.value(values)
            + &(borrow.var().value(values) * &two_to_width)
    });
    decompose(ctx, &difference, a.len());
    (b_value - &a_value).assert_eq(
        &(difference - &(borrow.var().clone() * &Var::native(two_to_width)))
    );
    !borrow
}

/// Compare canonical 255-bit field encodings using two bounded limbs.
pub fn less_or_equal_limbs<'ctx>(
    ctx: Context<'ctx, Scalar>,
    a: &[BoolVar<'ctx, Scalar>],
    b: &[BoolVar<'ctx, Scalar>],
) -> BoolVar<'ctx, Scalar> {
    assert_eq!(a.len(), 255);
    assert_eq!(b.len(), 255);
    let high_le = less_or_equal_bounded(ctx, &a[128..], &b[128..]);
    let high_ge = less_or_equal_bounded(ctx, &b[128..], &a[128..]);
    let low_le = less_or_equal_bounded(ctx, &a[..128], &b[..128]);
    high_le & (!high_ge | low_le)
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
    fn limb_comparison_preserves_canonical_field_order() {
        let near_max = -Scalar::one();
        let boundary = Scalar::from_limbs([u64::MAX, u64::MAX, 0, 0]);
        let mut values = vec![
            Scalar::zero(), Scalar::one(), Scalar::from(1u64 << 63),
            boundary.clone(), boundary.clone() + &Scalar::one(),
            boundary.clone() + &Scalar::from(2),
            near_max.clone() - &Scalar::one(), near_max,
        ];
        for i in 0..16u64 {
            values.push(Scalar::from_limbs([
                i.wrapping_mul(0x9e3779b97f4a7c15),
                i.wrapping_mul(0xbf58476d1ce4e5b9),
                i.wrapping_mul(0x94d049bb133111eb),
                i.wrapping_mul(0x123456789abcdef),
            ]));
        }
        for a in &values {
            for b in &values {
                let expected = a.encode() <= b.encode();
                let (c, _) = build_with_values(|ctx| {
                    let av = Var::witness(ctx, |_| a.clone());
                    let bv = Var::witness(ctx, |_| b.clone());
                    less_or_equal_limbs(
                        ctx,
                        &crate::encoding::canonical_bits(ctx, &av),
                        &crate::encoding::canonical_bits(ctx, &bv),
                    ).assert_eq(&BoolVar::constant(expected));
                    Vec::new()
                });
                assert!(c.is_satisfied());
            }
        }
    }
    #[test]
    fn bounded_difference_matches_integer_order() {
        for width in 1..=4 {
            for a in 0..(1u64 << width) {
                for b in 0..(1u64 << width) {
                    let (c, _) = build_with_values(|ctx| {
                        let av = Var::witness(ctx, |_| Scalar::from(a));
                        let bv = Var::witness(ctx, |_| Scalar::from(b));
                        less_or_equal_bounded(
                            ctx,
                            &decompose(ctx, &av, width),
                            &decompose(ctx, &bv, width),
                        ).assert_eq(&BoolVar::constant(a <= b));
                        Vec::new()
                    });
                    assert!(c.is_satisfied(), "width={width} a={a} b={b}");
                }
            }
        }
        let max = Scalar::from_limbs([u64::MAX, u64::MAX, 0, 0]);
        for (a, b, expected) in [
            (Scalar::zero(), max.clone(), true),
            (max.clone(), Scalar::zero(), false),
            (max.clone(), max.clone(), true),
            (max.clone() - &Scalar::one(), max.clone(), true),
            (max.clone(), max.clone() - &Scalar::one(), false),
        ] {
            let (c, _) = build_with_values(|ctx| {
                let av = Var::witness(ctx, |_| a.clone());
                let bv = Var::witness(ctx, |_| b.clone());
                less_or_equal_bounded(ctx, &decompose(ctx, &av, 128), &decompose(ctx, &bv, 128))
                    .assert_eq(&BoolVar::constant(expected));
                Vec::new()
            });
            assert!(c.is_satisfied());
        }
        let (invalid, _) = build_with_values(|ctx| {
            let av = Var::witness(ctx, |_| max.clone() + &Scalar::one());
            let bv = Var::witness(ctx, |_| Scalar::zero());
            less_or_equal_bounded(ctx, &decompose(ctx, &av, 128), &decompose(ctx, &bv, 128));
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
