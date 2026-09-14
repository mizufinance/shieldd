//! Development-only corrected dimension-two Jubjub multiplication screen.
use anyhow::{Result, ensure};
use commonware_codec::Encode;
use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::circuit::{BoolVar, Context, Values, Var},
};
use commonware_math::algebra::{Additive, Field, Ring};
use native::{
    group::{Point, coefficient_d, witness_subgroup},
    range, scalar,
};
use num_bigint::{BigInt, BigUint, Sign};
use num_traits::{One, Zero};

type V<'a> = Var<'a, Scalar>;
pub mod screen;
const SHORT_BITS: usize = 128;
const CARRY_BITS: usize = 67;

pub fn integer(value: &Scalar) -> BigUint {
    BigUint::from_bytes_be(value.encode().as_ref())
}
pub fn field(value: &BigUint) -> Scalar {
    assert!(value.bits() <= 254);
    let words = value.to_u64_digits();
    Scalar::from_limbs(std::array::from_fn(|i| words.get(i).copied().unwrap_or(0)))
}
pub fn order() -> BigUint {
    integer(&Scalar::from_limbs(scalar::ORDER))
}

#[derive(Clone, Debug)]
pub struct Fraction {
    pub numerator: BigUint,
    pub denominator: BigUint,
    pub negative: bool,
    pub quotient: BigUint,
    pub carries: [BigUint; 5],
}

fn limbs(value: &BigUint, count: usize) -> Vec<BigInt> {
    let words = value.to_u64_digits();
    (0..count)
        .map(|i| BigInt::from(words.get(i).copied().unwrap_or(0)))
        .collect()
}

impl Fraction {
    pub fn generate(s: &BigUint) -> Result<Self> {
        let q = order();
        ensure!(s < &q, "noncanonical subgroup scalar");
        let (mut previous, mut remainder) = (q.clone(), s.clone());
        let (mut previous_coefficient, mut coefficient) = (BigInt::zero(), BigInt::one());
        while &remainder * &remainder >= q {
            let quotient = &previous / &remainder;
            (previous, remainder) = (remainder.clone(), previous - &quotient * &remainder);
            (previous_coefficient, coefficient) = (
                coefficient.clone(),
                previous_coefficient - BigInt::from(quotient) * &coefficient,
            );
        }
        let negative = coefficient.sign() == Sign::Minus;
        let denominator = coefficient.magnitude().clone();
        ensure!(!denominator.is_zero(), "zero denominator");
        let product = s * &denominator;
        let quotient = if negative {
            (&product + &remainder) / &q
        } else {
            (&product - &remainder) / &q
        };
        ensure!(
            [&remainder, &denominator, &quotient]
                .iter()
                .all(|n| n.bits() <= SHORT_BITS as u64),
            "short integer overflow"
        );
        let mut output = Self {
            numerator: remainder,
            denominator,
            negative,
            quotient,
            carries: std::array::from_fn(|_| BigUint::zero()),
        };
        output.set_carries(s)?;
        Ok(output)
    }

    fn set_carries(&mut self, s: &BigUint) -> Result<()> {
        let s = limbs(s, 4);
        let a = limbs(&self.denominator, 2);
        let u = limbs(&self.numerator, 2);
        let k = limbs(&self.quotient, 2);
        let q = limbs(&order(), 4);
        let base: BigInt = BigInt::one() << 64usize;
        let offset: BigInt = BigInt::one() << 66usize;
        let mut carry = BigInt::zero();
        for i in 0..6 {
            let mut delta = carry;
            for j in 0..4 {
                if i >= j && i - j < 2 {
                    delta += &s[j] * &a[i - j] - &q[j] * &k[i - j];
                }
            }
            if i < 2 {
                if self.negative {
                    delta += &u[i];
                } else {
                    delta -= &u[i];
                }
            }
            ensure!((&delta % &base).is_zero(), "noninteger limb carry");
            carry = delta / &base;
            if i < 5 {
                let encoded: BigInt = &carry + &offset;
                ensure!(
                    encoded.sign() != Sign::Minus && encoded.bits() <= CARRY_BITS as u64,
                    "carry overflow"
                );
                self.carries[i] = encoded.to_biguint().unwrap();
            }
        }
        ensure!(carry.is_zero(), "nonzero terminal carry");
        Ok(())
    }
}

#[derive(Clone, Debug)]
pub struct Hint {
    pub fraction: Fraction,
    pub output: Point<Scalar>,
    pub preimage: Point<Scalar>,
}
impl Hint {
    fn zero() -> Self {
        Self {
            fraction: Fraction {
                numerator: BigUint::zero(),
                denominator: BigUint::one(),
                negative: false,
                quotient: BigUint::zero(),
                carries: std::array::from_fn(|_| BigUint::one() << 66),
            },
            output: Point::identity(),
            preimage: Point::identity(),
        }
    }
    pub fn generate(base: &Point<Scalar>, value: &Scalar) -> Result<Self> {
        let fraction = Fraction::generate(&integer(value))?;
        let output = base.multiply(value);
        let preimage = output.cofactor_preimage();
        Ok(Self {
            fraction,
            output,
            preimage,
        })
    }
}

fn assemble<'a>(bits: &[BoolVar<'a, Scalar>]) -> V<'a> {
    bits.iter()
        .rev()
        .fold(V::zero(), |acc, bit| acc.clone() + &acc + bit.var())
}
fn short<'a>(ctx: Context<'a, Scalar>, value: &BigUint) -> Vec<BoolVar<'a, Scalar>> {
    range::decompose(ctx, &V::witness(ctx, |_| field(value)), SHORT_BITS)
}

/// Six base-2^64 equations bind an integer product, never a field-wrapped congruence.
pub fn constrain_fraction<'a>(
    ctx: Context<'a, Scalar>,
    scalar: &[BoolVar<'a, Scalar>],
    f: &Fraction,
) -> (
    Vec<BoolVar<'a, Scalar>>,
    Vec<BoolVar<'a, Scalar>>,
    BoolVar<'a, Scalar>,
) {
    let numerator = V::witness(ctx, |_| field(&f.numerator));
    fraction_with_numerator(ctx, scalar, f, &numerator)
}

fn fraction_with_numerator<'a>(
    ctx: Context<'a, Scalar>,
    scalar: &[BoolVar<'a, Scalar>],
    f: &Fraction,
    numerator: &V<'a>,
) -> (
    Vec<BoolVar<'a, Scalar>>,
    Vec<BoolVar<'a, Scalar>>,
    BoolVar<'a, Scalar>,
) {
    assert!(scalar.len() <= 252);
    let u = range::decompose(ctx, numerator, SHORT_BITS);
    let a = short(ctx, &f.denominator);
    let k = short(ctx, &f.quotient);
    let negative = BoolVar::witness(ctx, |_| f.negative);
    let _ = assemble(&a).inv();
    let split = |bits: &[BoolVar<'a, Scalar>]| bits.chunks(64).map(assemble).collect::<Vec<_>>();
    let (ul, al, kl) = (split(&u), split(&a), split(&k));
    let mut sl = split(scalar);
    sl.resize(4, V::zero());
    let q = scalar::ORDER.map(|n| V::native(Scalar::from(n)));
    let base = V::native(Scalar::from_limbs([0, 1, 0, 0]));
    let offset = V::native(Scalar::from_limbs([0, 4, 0, 0]));
    let mut carry = V::zero();
    for i in 0..6 {
        let mut delta = carry;
        for j in 0..4 {
            if i >= j && i - j < 2 {
                delta += &(sl[j].clone() * &al[i - j] - &(q[j].clone() * &kl[i - j]));
            }
        }
        if i < 2 {
            delta += &negative.select(&ul[i], &(-ul[i].clone()));
        }
        let next = if i < 5 {
            let encoded = V::witness(ctx, |_| field(&f.carries[i]));
            range::decompose(ctx, &encoded, CARRY_BITS);
            encoded - &offset
        } else {
            V::zero()
        };
        delta.assert_eq(&(base.clone() * &next));
        carry = next;
    }
    (u, a, negative)
}

fn add<'a>(p: &Point<V<'a>>, q: &Point<V<'a>>) -> Point<V<'a>> {
    let xx = p.x.clone() * &q.x;
    let yy = p.y.clone() * &q.y;
    let cross = (p.x.clone() + &p.y) * &(q.x.clone() + &q.y) - &xx - &yy;
    let dt = xx.clone() * &yy * &V::native(coefficient_d());
    Point {
        x: cross / &(V::one() + &dt),
        y: (yy + &xx) / &(V::one() - &dt),
    }
}
fn double<'a>(p: &Point<V<'a>>) -> Point<V<'a>> {
    let xx = p.x.clone() * &p.x;
    let yy = p.y.clone() * &p.y;
    let sum = p.x.clone() + &p.y;
    let cross = sum.clone() * &sum - &xx - &yy;
    let dx = yy.clone() - &xx;
    Point {
        x: cross / &dx,
        y: (yy + &xx) / &(V::native(Scalar::from(2)) - &dx),
    }
}

/// Input is already in the prime subgroup; bits encode an integer below its order.
pub fn multiply<'a>(
    ctx: Context<'a, Scalar>,
    p: &Point<V<'a>>,
    bits: &[BoolVar<'a, Scalar>],
    hint: &Hint,
) -> Point<V<'a>> {
    multiply_with(ctx, p, bits, |_| hint.clone())
}

/// Host hints are generated from current values inside witness construction and charged there.
pub fn multiply_dynamic<'a>(
    ctx: Context<'a, Scalar>,
    p: &Point<V<'a>>,
    bits: &[BoolVar<'a, Scalar>],
) -> Point<V<'a>> {
    multiply_with(ctx, p, bits, |values| {
        let base = Point {
            x: p.x.value(values),
            y: p.y.value(values),
        };
        let value = bits.iter().rev().fold(Scalar::zero(), |acc, bit| {
            acc.clone() + &acc + &bit.var().value(values)
        });
        // Noncanonical scalars already fail the caller's canonical-bit constraints.
        Hint::generate(&base, &value).unwrap_or_else(|_| Hint::zero())
    })
}

fn multiply_with<'a>(
    ctx: Context<'a, Scalar>,
    p: &Point<V<'a>>,
    bits: &[BoolVar<'a, Scalar>],
    make_hint: impl for<'v> FnOnce(Values<'v, Scalar>) -> Hint,
) -> Point<V<'a>> {
    let mut assigned = None;
    let numerator = V::witness(ctx, |values| {
        let hint = make_hint(values);
        let numerator = field(&hint.fraction.numerator);
        assigned = Some(hint);
        numerator
    });
    let hint = assigned.unwrap_or_else(Hint::zero);
    let (u, a, negative) = fraction_with_numerator(ctx, bits, &hint.fraction, &numerator);
    // Full cofactor binding excludes torsion even when the short denominator is even.
    let q = witness_subgroup(ctx, &hint.output, &hint.preimage);
    let r = Point {
        x: negative.select(&q.x, &(-q.x.clone())),
        y: q.y.clone(),
    };
    let sum = add(p, &r);
    let difference = add(
        p,
        &Point {
            x: -r.x.clone(),
            y: r.y.clone(),
        },
    );
    // Starting at P+R makes the signed-bit result 2*(uP+aR)+(P+R).
    let mut acc = sum.clone();
    for (u, a) in u.iter().zip(&a).rev() {
        let both = u.var().clone() * a.var();
        let parity = u.var().clone() + a.var() - &(both.clone() + &both);
        let choose = |yes: &V<'a>, no: &V<'a>| no.clone() + &(parity.clone() * &(yes.clone() - no));
        let x = choose(&difference.x, &sum.x);
        let selected = Point {
            x: u.select(&x, &(-x.clone())),
            y: choose(&difference.y, &sum.y),
        };
        acc = add(&double(&acc), &selected);
    }
    acc.assert_equal(&sum);
    q
}

#[cfg(test)]
mod tests {
    use super::*;
    use native::group::generator;

    #[test]
    fn half_eea_has_short_nonzero_denominator_and_exact_integer_relation() {
        let q = order();
        let mut values = vec![
            BigUint::zero(),
            BigUint::one(),
            &q - BigUint::one(),
            &q / 2u8,
        ];
        let mut value = BigUint::from(7123u64);
        for _ in 0..4096 {
            value = (&value * BigUint::from(6364136223846793005u64) + BigUint::one()) % &q;
            values.push(value.clone());
        }
        let mut signs = [0; 2];
        for value in values {
            let f = Fraction::generate(&value).unwrap();
            signs[usize::from(f.negative)] += 1;
            assert!(f.numerator.bits() <= 126 && f.denominator.bits() <= 126);
            assert!(!f.denominator.is_zero());
            if f.negative {
                assert_eq!(&value * &f.denominator + &f.numerator, &f.quotient * &q);
            } else {
                assert_eq!(&value * &f.denominator, &f.quotient * &q + &f.numerator);
            }
        }
        assert!(signs.iter().all(|count| *count > 100));
        assert!(Fraction::generate(&q).is_err());
    }

    #[test]
    fn corrected_original_and_converted_gadget_accepts_boundaries() {
        let g = generator();
        let values = [
            Scalar::zero(),
            Scalar::one(),
            Scalar::from(2),
            Scalar::from(3),
            Scalar::from(255),
            Scalar::from_limbs(scalar::ORDER) - &Scalar::one(),
            field(&(order() / 2u8)),
            field(&(order() / 3u8)),
            field(&(BigUint::one() << 128)),
        ];
        for base in [g.clone(), Point { x: -g.x, y: g.y }, Point::identity()] {
            for value in &values {
                let hint = Hint::generate(&base, value).unwrap();
                let result = screen::check(&base, value, &hint, true).unwrap();
                assert!(result.original_valid && result.converted_valid);
            }
        }
    }

    #[test]
    fn malformed_hints_and_integer_carries_are_rejected() {
        let base = generator();
        let value = field(&(order() / 3u8));
        let hint = Hint::generate(&base, &value).unwrap();
        let rejects = |bad: Hint| {
            let result = screen::check(&base, &value, &bad, true).unwrap();
            assert!(!result.original_valid && !result.converted_valid);
        };
        let mut bad = hint.clone();
        bad.fraction.numerator += BigUint::one();
        rejects(bad);
        let mut bad = hint.clone();
        bad.fraction.denominator += BigUint::one();
        rejects(bad);
        let mut bad = hint.clone();
        bad.fraction.denominator = BigUint::zero();
        rejects(bad);
        let mut bad = hint.clone();
        bad.fraction.quotient += BigUint::one();
        rejects(bad);
        let mut bad = hint.clone();
        bad.fraction.negative = !bad.fraction.negative;
        rejects(bad);
        let mut bad = hint.clone();
        bad.fraction.numerator += BigUint::one() << 128;
        rejects(bad);
        for i in 0..5 {
            let mut bad = hint.clone();
            bad.fraction.carries[i] += BigUint::one();
            rejects(bad);
            let mut bad = hint.clone();
            bad.fraction.carries[i] += BigUint::one() << 67;
            rejects(bad);
        }
        let mut bad = hint.clone();
        bad.output.x += &Scalar::one();
        rejects(bad);
        let mut bad = hint.clone();
        bad.preimage.y += &Scalar::one();
        rejects(bad);
        let mut bad = hint.clone();
        bad.output = base.clone();
        bad.preimage = bad.output.cofactor_preimage();
        rejects(bad);
    }

    #[test]
    fn full_cofactor_binding_rejects_torsion_even_for_even_denominator() {
        let base = generator();
        let value = field(&(order() / 2u8));
        let mut hint = Hint::generate(&base, &value).unwrap();
        assert!(!hint.fraction.denominator.bit(0));
        // The order-two point is annihilated by the denominator, defeating an unbound MSM check.
        hint.output.x = -hint.output.x;
        hint.output.y = -hint.output.y;
        let numerator = base.multiply(&field(&hint.fraction.numerator));
        let mut denominator = hint.output.multiply(&field(&hint.fraction.denominator));
        if !hint.fraction.negative {
            denominator.x = -denominator.x;
        }
        assert_eq!(
            numerator.add(&denominator, &coefficient_d()),
            Point::identity()
        );
        hint.preimage = hint.output.cofactor_preimage();
        let result = screen::check(&base, &value, &hint, true).unwrap();
        assert!(!result.original_valid && !result.converted_valid);
    }

    #[test]
    fn native_field_wrapped_product_is_not_integer_congruence() {
        use commonware_cryptography::zk::circuit::build_with_values;
        let q = order();
        let modulus = integer(&(-Scalar::one())) + BigUint::one();
        // s*a = k*q + u + p, so a native-field-only equation would admit this witness.
        let a: BigUint = BigUint::one() << 64usize;
        let s = (&modulus + &a - BigUint::one()) / &a;
        let u = &s * &a - &modulus;
        let f = Fraction {
            numerator: u,
            denominator: a,
            negative: false,
            quotient: BigUint::zero(),
            carries: std::array::from_fn(|_| BigUint::one() << 66),
        };
        assert!(s < q && f.numerator.bits() <= 128);
        assert_eq!(
            field(&s) * &field(&f.denominator),
            field(&f.quotient) * &field(&q) + &field(&f.numerator)
        );
        let (valued, _) = build_with_values(|ctx| {
            let bits = scalar::canonical_bits(ctx, &V::witness(ctx, |_| field(&s)));
            constrain_fraction(ctx, &bits, &f);
            Vec::new()
        });
        assert!(!valued.is_satisfied());
    }

    #[test]
    fn subgroup_inputs_and_canonical_scalars_remain_required() {
        let g = generator();
        for base in [
            Point {
                x: Scalar::zero(),
                y: -Scalar::one(),
            },
            Point {
                x: g.x.clone() + &Scalar::one(),
                y: g.y.clone(),
            },
        ] {
            let hint = Hint::generate(&base, &Scalar::one()).unwrap();
            let result = screen::check(&base, &Scalar::one(), &hint, true).unwrap();
            assert!(!result.original_valid && !result.converted_valid);
        }
        let hint = Hint::generate(&g, &Scalar::zero()).unwrap();
        let result = screen::check(&g, &Scalar::from_limbs(scalar::ORDER), &hint, true).unwrap();
        assert!(!result.original_valid && !result.converted_valid);
    }

    #[test]
    fn dynamic_hints_use_current_values_and_preserve_zero_boundary() {
        use commonware_cryptography::zk::circuit::build_with_values;
        let g = generator();
        for value in [
            Scalar::zero(),
            Scalar::one(),
            Scalar::from_limbs(scalar::ORDER) - &Scalar::one(),
        ] {
            let (valued, _) = build_with_values(|ctx| {
                let p = witness_subgroup(ctx, &g, &g.cofactor_preimage());
                let bits = scalar::canonical_bits(ctx, &V::witness(ctx, |_| value.clone()));
                let expected = g.multiply(&value);
                multiply_dynamic(ctx, &p, &bits).assert_equal(&Point {
                    x: V::native(expected.x),
                    y: V::native(expected.y),
                });
                Vec::new()
            });
            assert!(valued.is_satisfied());
        }
    }
}
