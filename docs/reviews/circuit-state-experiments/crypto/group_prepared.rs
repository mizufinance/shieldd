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

pub fn coefficient_d() -> Scalar {
    -Scalar::from(10240) * &Scalar::from(10241).inv()
}
pub fn native_point(point: &shieldd_sdk_crypto::SubgroupPoint) -> Point<Scalar> {
    let encoded = shieldd_sdk_crypto::coordinates(point);
    let convert = |mut bytes: [u8; 32]| {
        bytes.reverse();
        use commonware_codec::Read;
        use commonware_cryptography::bls12381::primitives::group::ScalarReadCfg;
        Scalar::read_cfg(&mut bytes.as_slice(), &ScalarReadCfg::AllowZero)
            .expect("Jubjub coordinates are in the BLS12-381 scalar field")
    };
    Point {
        x: convert(encoded.x),
        y: convert(encoded.y),
    }
}

pub fn generator() -> Point<Scalar> {
    native_point(&shieldd_sdk_crypto::generators::SPEND_AUTH)
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
    /// Constant weighted radix-four windows use complete affine Jubjub addition.
    pub fn multiply_fixed<'ctx>(&self, bits: &[BoolVar<'ctx, Scalar>]) -> Point<Var<'ctx, Scalar>> {
        assert!(self.is_on_curve(), "fixed base must be a curve point");
        let output = affine_fixed(self, bits);
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
        let output = affine_variable(self, bits);
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

type V<'a> = Var<'a, Scalar>;
fn quotients<'a>(nx: V<'a>, ny: V<'a>, dx: V<'a>, dy: V<'a>) -> Point<V<'a>> {
    // Completeness applies only to validated Jubjub points: a=-1 is square, d is nonsquare.
    // Callers retain subgroup input checks and Boolean window selection.
    Point {
        x: nx / &dx,
        y: ny / &dy,
    }
}
fn add<'a>(p: &Point<V<'a>>, q: &Point<V<'a>>) -> Point<V<'a>> {
    let xx = p.x.clone() * &q.x;
    let yy = p.y.clone() * &q.y;
    let cross = (p.x.clone() + &p.y) * &(q.x.clone() + &q.y) - &xx - &yy;
    let dt = xx.clone() * &yy * &V::native(coefficient_d());
    quotients(cross, yy + &xx, V::one() + &dt, V::one() - &dt)
}
fn double<'a>(p: &Point<V<'a>>) -> Point<V<'a>> {
    let xx = p.x.clone() * &p.x;
    let yy = p.y.clone() * &p.y;
    let sum = p.x.clone() + &p.y;
    let cross = sum.clone() * &sum - &xx - &yy;
    // On-curve induction gives 1+d*x²*y²=y²-x² for a=-1.
    let dx = yy.clone() - &xx;
    let dy = V::native(Scalar::from(2)) - &dx;
    quotients(cross, yy + &xx, dx, dy)
}
fn select<'a>(
    base: &Point<V<'a>>,
    twice: &Point<V<'a>>,
    triple: &Point<V<'a>>,
    pair: &[BoolVar<'a, Scalar>],
) -> Point<V<'a>> {
    let low = &pair[0];
    let high = pair
        .get(1)
        .cloned()
        .unwrap_or_else(|| BoolVar::constant(false));
    Point {
        x: high.select(
            &low.select(&triple.x, &twice.x),
            &low.select(&base.x, &V::zero()),
        ),
        y: high.select(
            &low.select(&triple.y, &twice.y),
            &low.select(&base.y, &V::one()),
        ),
    }
}
pub struct PreparedVariable<'a> {
    base: Point<V<'a>>,
    twice: Point<V<'a>>,
    triple: Point<V<'a>>,
}
impl<'a> PreparedVariable<'a> {
    pub fn new(base: &Point<V<'a>>) -> Self {
        let twice = double(base);
        let triple = add(&twice, base);
        Self { base: base.clone(), twice, triple }
    }
    pub fn multiply_bits(&self, bits: &[BoolVar<'a, Scalar>]) -> Point<V<'a>> {
        let mut result = Point::identity();
        for pair in bits.chunks(2).rev() {
            result = double(&double(&result));
            result = add(&result, &select(&self.base, &self.twice, &self.triple, pair));
        }
        result
    }
}
fn affine_variable<'a>(base: &Point<V<'a>>, bits: &[BoolVar<'a, Scalar>]) -> Point<V<'a>> {
    PreparedVariable::new(base).multiply_bits(bits)
}
fn affine_fixed<'a>(base: &Point<Scalar>, bits: &[BoolVar<'a, Scalar>]) -> Point<V<'a>> {
    let d = coefficient_d();
    let mut base = base.clone();
    let mut result = Point::identity();
    let lift = |p: &Point<Scalar>| Point {
        x: V::native(p.x.clone()),
        y: V::native(p.y.clone()),
    };
    for pair in bits.chunks(2) {
        let twice = base.add(&base, &d);
        let triple = twice.add(&base, &d);
        result = add(
            &result,
            &select(&lift(&base), &lift(&twice), &lift(&triple), pair),
        );
        base = twice.add(&twice, &d);
    }
    result
}
