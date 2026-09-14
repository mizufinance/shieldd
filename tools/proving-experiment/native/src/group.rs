use commonware_codec::Encode;
use commonware_cryptography::zk::circuit::BoolVar;
use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::circuit::{Context, Var},
};
use commonware_math::algebra::{Additive, Field, Ring};

/// Jubjub affine point; circuit inputs require `witness_subgroup` before use.
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Point<F> {
    pub x: F,
    pub y: F,
}

struct Extended<F> {
    x: F,
    y: F,
    z: F,
    t: F,
}
impl<F: Field> Extended<F> {
    fn affine(point: Point<F>) -> Self {
        Self {
            t: point.x.clone() * &point.y,
            x: point.x,
            y: point.y,
            z: F::one(),
        }
    }
    fn add(&self, other: &Self, d: &F) -> Self {
        let a = (self.y.clone() - &self.x) * &(other.y.clone() - &other.x);
        let b = (self.y.clone() + &self.x) * &(other.y.clone() + &other.x);
        let c = self.t.clone() * &other.t * &(d.clone() + d);
        let dd = self.z.clone() * &(other.z.clone() + &other.z);
        let e = b.clone() - &a;
        let f = dd.clone() - &c;
        let g = dd + &c;
        let h = b + &a;
        Self {
            x: e.clone() * &f,
            y: g.clone() * &h,
            z: f * &g,
            t: e * &h,
        }
    }
    fn double(&self) -> Self {
        let a = self.x.clone() * &self.x;
        let b = self.y.clone() * &self.y;
        let zz = self.z.clone() * &self.z;
        let c = zz.clone() + &zz;
        let d = -a.clone();
        let sum = self.x.clone() + &self.y;
        let e = sum.clone() * &sum - &a - &b;
        let g = d.clone() + &b;
        let f = g.clone() - &c;
        let h = d - &b;
        Self {
            x: e.clone() * &f,
            y: g.clone() * &h,
            z: f * &g,
            t: e * &h,
        }
    }
    fn normalize(self) -> Point<F> {
        let inverse = self.z.inv();
        Point {
            x: self.x * &inverse,
            y: self.y * &inverse,
        }
    }
}

fn multiply<F: Field>(base: &Point<F>, bits: &[F], d: &F) -> Point<F> {
    let double = base.add(base, d);
    let triple = double.add(base, d);
    let choose = |bit: &F, yes: &F, no: &F| no.clone() + &(bit.clone() * &(yes.clone() - no));
    let mut result = Extended::affine(Point::identity());
    for pair in bits.chunks(2).rev() {
        result = result.double().double();
        let low = &pair[0];
        let high = pair.get(1).cloned().unwrap_or_else(F::zero);
        let window = Point {
            x: choose(
                &high,
                &choose(low, &triple.x, &double.x),
                &choose(low, &base.x, &F::zero()),
            ),
            y: choose(
                &high,
                &choose(low, &triple.y, &double.y),
                &choose(low, &base.y, &F::one()),
            ),
        };
        result = result.add(&Extended::affine(window), d);
    }
    result.normalize()
}

fn decimal(s: &str) -> Scalar {
    s.bytes().fold(Scalar::zero(), |a, b| {
        a * &Scalar::from(10) + &Scalar::from(u64::from(b - b'0'))
    })
}
pub fn coefficient_d() -> Scalar {
    -Scalar::from(10240) * &Scalar::from(10241).inv()
}
pub fn generator() -> Point<Scalar> {
    Point {
        x: decimal("8076246640662884909881801758704306714034609987455869804520522091855516602923"),
        y: decimal("13262374693698910701929044844600465831413122818447359594527400194675274060458"),
    }
}
impl<F: Field> Point<F> {
    pub fn identity() -> Self {
        Self {
            x: F::zero(),
            y: F::one(),
        }
    }
    pub fn add(&self, other: &Self, d: &F) -> Self {
        let xx = self.x.clone() * &other.x;
        let yy = self.y.clone() * &other.y;
        let dt = xx.clone() * &yy * d;
        let plus = F::one() + &dt;
        let minus = F::one() - &dt;
        // Complete Edwards addition on valid Jubjub points: both denominators are nonzero.
        let inverse = (plus.clone() * &minus).inv();
        Self {
            x: (self.x.clone() * &other.y + &(self.y.clone() * &other.x)) * &minus * &inverse,
            y: (yy + &xx) * &plus * &inverse,
        }
    }
    pub fn multiply_constant(&self, bits: &[u64], d: &F) -> Self {
        let mut out = Self::identity();
        for word in bits.iter().rev() {
            for bit in (0..64).rev() {
                out = out.add(&out, d);
                if word >> bit & 1 == 1 {
                    out = out.add(self, d);
                }
            }
        }
        out
    }
}
impl Point<Scalar> {
    /// Constant weighted radix-four windows retain complete extended Edwards addition.
    pub fn multiply_fixed<'ctx>(&self, bits: &[BoolVar<'ctx, Scalar>]) -> Point<Var<'ctx, Scalar>> {
        assert!(self.is_on_curve(), "fixed base must be a curve point");
        #[cfg(feature = "cost_trace")]
        let start = bits.iter().find_map(|b| b.var().diagnostic_position());
        let d = coefficient_d();
        let mut base = self.clone();
        let mut result = Extended::affine(Point::identity());
        for pair in bits.chunks(2) {
            let double = base.add(&base, &d);
            let triple = double.add(&base, &d);
            let low = &pair[0];
            let high = pair
                .get(1)
                .cloned()
                .unwrap_or_else(|| BoolVar::constant(false));
            let select = |identity: Scalar, one: Scalar, two: Scalar, three: Scalar| {
                high.select(
                    &low.select(&Var::native(three), &Var::native(two)),
                    &low.select(&Var::native(one), &Var::native(identity)),
                )
            };
            let window = Extended {
                x: select(
                    Scalar::zero(),
                    base.x.clone(),
                    double.x.clone(),
                    triple.x.clone(),
                ),
                y: select(
                    Scalar::one(),
                    base.y.clone(),
                    double.y.clone(),
                    triple.y.clone(),
                ),
                z: Var::one(),
                t: select(
                    Scalar::zero(),
                    base.x.clone() * &base.y,
                    double.x.clone() * &double.y,
                    triple.x.clone() * &triple.y,
                ),
            };
            result = result.add(&window, &Var::native(d.clone()));
            base = double.add(&double, &d);
        }
        let output = result.normalize();
        #[cfg(feature = "cost_trace")]
        if let Some(start) = start {
            let end = bits
                .iter()
                .find_map(|b| b.var().diagnostic_position())
                .expect("same circuit");
            let mut event =
                crate::diagnostics::span("scalar_multiplication", "weighted_radix4", start, end);
            event.scalar_bits = Some(bits.len());
            event.fixed_base = Some(true);
            crate::diagnostics::record(event);
        }
        output
    }
    pub fn multiply(&self, scalar: &Scalar) -> Self {
        let bytes = scalar.encode();
        let bits = (0..255)
            .map(|i| Scalar::from(u64::from(bytes[31 - i / 8] >> (i % 8) & 1)))
            .collect::<Vec<_>>();
        multiply(self, &bits, &coefficient_d())
    }
    pub fn cofactor_preimage(&self) -> Self {
        self.multiply(&Scalar::from_limbs(crate::scalar::INVERSE_EIGHT))
    }
    pub fn is_on_curve(&self) -> bool {
        let xx = self.x.clone() * &self.x;
        let yy = self.y.clone() * &self.y;
        yy.clone() - &xx == Scalar::one() + &(coefficient_d() * &xx * &yy)
    }
}
impl<'ctx> Point<Var<'ctx, Scalar>> {
    pub fn multiply_bits(&self, bits: &[BoolVar<'ctx, Scalar>]) -> Self {
        #[cfg(feature = "cost_trace")]
        let position = || {
            self.x
                .diagnostic_position()
                .or_else(|| bits.iter().find_map(|b| b.var().diagnostic_position()))
        };
        #[cfg(feature = "cost_trace")]
        let start = position();
        let output = multiply(
            self,
            &bits.iter().map(|b| b.var().clone()).collect::<Vec<_>>(),
            &Var::native(coefficient_d()),
        );
        #[cfg(feature = "cost_trace")]
        if let Some(start) = start {
            let mut event = crate::diagnostics::span(
                "scalar_multiplication",
                "radix4",
                start,
                position().expect("same circuit"),
            );
            event.scalar_bits = Some(bits.len());
            event.fixed_base =
                Some(self.x.diagnostic_is_constant() && self.y.diagnostic_is_constant());
            crate::diagnostics::record(event);
        }
        output
    }
    fn assert_on_curve(&self, d: &Var<'ctx, Scalar>) {
        let xx = self.x.clone() * &self.x;
        let yy = self.y.clone() * &self.y;
        (yy.clone() - &xx).assert_eq(&(Var::one() + &(d.clone() * &xx * &yy)));
    }
    pub fn assert_equal(&self, other: &Self) {
        self.x.assert_eq(&other.x);
        self.y.assert_eq(&other.y);
    }
    pub fn assert_non_identity(&self) {
        // A prime-subgroup point has x=0 only at identity (the other x=0 point has order 2).
        let _ = self.x.inv();
    }
}

/// An on-curve cofactor preimage proves prime-subgroup membership without an r-bit multiplication in circuit.
pub fn witness_subgroup<'ctx>(
    ctx: Context<'ctx, Scalar>,
    point: &Point<Scalar>,
    preimage: &Point<Scalar>,
) -> Point<Var<'ctx, Scalar>> {
    #[cfg(feature = "cost_trace")]
    let start = ctx.diagnostic_position();
    let p = Point {
        x: Var::witness(ctx, |_| point.x.clone()),
        y: Var::witness(ctx, |_| point.y.clone()),
    };
    let mut q = Point {
        x: Var::witness(ctx, |_| preimage.x.clone()),
        y: Var::witness(ctx, |_| preimage.y.clone()),
    };
    let d = Var::constant(ctx, coefficient_d());
    q.assert_on_curve(&d);
    for _ in 0..3 {
        q = q.add(&q, &d);
    }
    p.assert_equal(&q);
    #[cfg(feature = "cost_trace")]
    crate::diagnostics::record(crate::diagnostics::span(
        "subgroup",
        "cofactor_preimage",
        start,
        ctx.diagnostic_position(),
    ));
    p
}

#[cfg(test)]
mod tests {
    use super::*;
    use commonware_cryptography::zk::circuit::build_with_values;
    #[test]
    fn fixed_windows_match_variable_and_independent_group_boundaries() {
        use ark_ec::{AffineRepr, CurveGroup};
        use ark_ff::PrimeField;
        for value in [
            Scalar::zero(),
            Scalar::one(),
            Scalar::from(2),
            Scalar::from(3),
            Scalar::from(4),
            Scalar::from(255),
            Scalar::from_limbs(crate::scalar::ORDER) - &Scalar::one(),
        ] {
            for base in [
                generator(),
                generator().multiply(&Scalar::from(17)),
                Point::identity(),
            ] {
                let coordinate = |s: &Scalar| {
                    ark_ed_on_bls12_381::Fq::from_be_bytes_mod_order(s.encode().as_ref())
                };
                let reference = ark_ed_on_bls12_381::EdwardsAffine::new_unchecked(
                    coordinate(&base.x),
                    coordinate(&base.y),
                );
                let exponent =
                    ark_ed_on_bls12_381::Fr::from_be_bytes_mod_order(value.encode().as_ref());
                let expected = reference.mul_bigint(exponent.into_bigint()).into_affine();
                let native = base.multiply(&value);
                assert_eq!(coordinate(&native.x), expected.x);
                assert_eq!(coordinate(&native.y), expected.y);
                let (valid, _) = build_with_values(|ctx| {
                    let bits =
                        crate::scalar::canonical_bits(ctx, &Var::witness(ctx, |_| value.clone()));
                    let fixed = base.multiply_fixed(&bits);
                    let variable = Point {
                        x: Var::witness(ctx, |_| base.x.clone()),
                        y: Var::witness(ctx, |_| base.y.clone()),
                    }
                    .multiply_bits(&bits);
                    fixed.assert_equal(&variable);
                    fixed.assert_equal(&Point {
                        x: Var::native(native.x.clone()),
                        y: Var::native(native.y.clone()),
                    });
                    Vec::new()
                });
                assert!(valid.is_satisfied());
            }
        }
    }
    #[test]
    fn native_generator_and_cofactor_subgroup_circuit_agree() {
        let q = generator();
        assert!(q.is_on_curve());
        let p = q.multiply_constant(&[8], &coefficient_d());
        assert!(p.is_on_curve());
        let (valid, _) = build_with_values(|ctx| {
            witness_subgroup(ctx, &p, &q).assert_non_identity();
            Vec::new()
        });
        assert!(valid.is_satisfied());
        let bad = Point {
            x: p.x.clone() + &Scalar::one(),
            y: p.y.clone(),
        };
        let (invalid, _) = build_with_values(|ctx| {
            witness_subgroup(ctx, &bad, &q);
            Vec::new()
        });
        assert!(!invalid.is_satisfied());
    }
    #[test]
    fn torsion_and_identity_are_rejected_at_ownership_boundary() {
        let q = generator();
        let torsion = Point {
            x: Scalar::zero(),
            y: -Scalar::one(),
        };
        let (invalid, _) = build_with_values(|ctx| {
            witness_subgroup(ctx, &torsion, &q);
            Vec::new()
        });
        assert!(!invalid.is_satisfied());
        let zero = Point::identity();
        let (identity, _) = build_with_values(|ctx| {
            witness_subgroup(ctx, &zero, &zero).assert_non_identity();
            Vec::new()
        });
        assert!(!identity.is_satisfied());
    }
}
