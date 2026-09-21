use crate::{
    encoding,
    group::{Point, coefficient_d},
    hash::Parameters,
};
use commonware_codec::Encode;
use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::circuit::{BoolVar, Context, Var},
};
use commonware_math::algebra::{Additive, Field, Ring};

pub use shieldd_sdk_crypto::domains::ASSET_GENERATOR;
use shieldd_sdk_crypto::domains::UNREGULATED_DETECTION as UNREGULATED_DK;
use shieldd_sdk_crypto::domains::UNREGULATED_RING;

fn coefficients() -> (Scalar, Scalar, Scalar) {
    let k = -Scalar::from(40964);
    let inverse = k.inv();
    (
        k,
        Scalar::from(40962) * &inverse,
        inverse.clone() * &inverse,
    )
}

fn x_coordinates<F: Field>(u: &F, c1: &F, c2: &F, z: &F) -> (F, F, F, F) {
    let tv = z.clone() * u * u;
    // Fr381 has q=1 mod 4; -1/Z is nonsquare, so this denominator cannot vanish.
    let x1 = -c1.clone() * &(F::one() + &tv).inv();
    let gx1 = ((x1.clone() + c1) * &x1 + c2) * &x1;
    let x2 = -x1.clone() - c1;
    let gx2 = tv * &gx1;
    (x1, gx1, x2, gx2)
}

/// RFC 9380 Elligator 2 and Appendix D's rational map, followed by cofactor 8.
pub fn to_prime(u: &Scalar) -> Point<Scalar> {
    let (k, c1, c2) = coefficients();
    let (x1, gx1, x2, gx2) = x_coordinates(u, &c1, &c2, &Scalar::from(5));
    let (x, mut y, square) = if let Some(y) = gx1.sqrt() {
        (x1, y, true)
    } else {
        (
            x2,
            gx2.sqrt()
                .expect("Elligator non-residue alternative is square"),
            false,
        )
    };
    if (y.encode()[31] & 1 == 1) != square {
        y = -y;
    }
    let s = x * &k;
    let t = y * &k;
    let plus = s.clone() + &Scalar::one();
    let denominator = plus.clone() * &t;
    let inverse = denominator.inv();
    let mut point = if denominator == Scalar::zero() {
        Point::identity()
    } else {
        Point {
            x: inverse.clone() * &plus * &s,
            y: inverse * &t * &(s - &Scalar::one()),
        }
    };
    for _ in 0..3 {
        point = point.add(&point, &coefficient_d());
    }
    point
}

/// Unique QR choice: gx1 is nonzero because (J²−4)/K² is nonsquare.
fn constrain_square<'ctx>(
    gx1: &Var<'ctx, Scalar>,
    square: &BoolVar<'ctx, Scalar>,
    root: &Var<'ctx, Scalar>,
) {
    let z = Var::native(Scalar::from(5));
    (root.clone() * root).assert_eq(&square.select(gx1, &(z * gx1)));
}

pub fn circuit<'ctx>(
    ctx: Context<'ctx, Scalar>,
    u: &Var<'ctx, Scalar>,
) -> Point<Var<'ctx, Scalar>> {
    let (k, c1, c2) = coefficients();
    let k = Var::native(k);
    let (x1, gx1, x2, gx2) = x_coordinates(
        u,
        &Var::native(c1),
        &Var::native(c2),
        &Var::native(Scalar::from(5)),
    );
    let square = BoolVar::witness(ctx, |v| gx1.value(v).sqrt().is_some());
    let qr_root = Var::witness(ctx, |v| {
        let value = gx1.value(v);
        if let Some(root) = value.sqrt() {
            root
        } else {
            (Scalar::from(5) * &value)
                .sqrt()
                .expect("Z times a non-residue is square")
        }
    });
    constrain_square(&gx1, &square, &qr_root);
    let x = square.select(&x1, &x2);
    let y_squared = square.select(&gx1, &gx2);
    let y = Var::witness(ctx, |v| {
        let mut y = y_squared
            .value(v)
            .sqrt()
            .expect("selected Elligator alternative is square");
        if (y.encode()[31] & 1 == 1) != (square.var().value(v) == Scalar::one()) {
            y = -y;
        }
        y
    });
    (y.clone() * &y).assert_eq(&y_squared);
    encoding::canonical_bits(ctx, &y)[0].assert_eq(&square);
    let s = x * &k;
    let t = y * &k;
    let plus = s.clone() + &Var::one();
    let denominator = plus.clone() * &t;
    let zero = BoolVar::witness(ctx, |v| denominator.value(v) == Scalar::zero());
    let inverse = Var::witness(ctx, |v| denominator.value(v).inv());
    (denominator.clone() * &inverse).assert_eq(&(Var::one() - zero.var()));
    (denominator * zero.var()).assert_eq(&Var::zero());
    (inverse.clone() * zero.var()).assert_eq(&Var::zero());
    let mut point = Point {
        x: inverse.clone() * &plus * &s,
        y: inverse * &t * &(s - &Var::one()) + zero.var(),
    };
    for _ in 0..3 {
        point = point.add(&point, &Var::native(coefficient_d()));
    }
    point
}

pub fn asset(params: &Parameters, asset: &Scalar) -> Point<Scalar> {
    to_prime(&params.native(ASSET_GENERATOR, &[asset.clone()]))
}

/// Fixed domain-separated encodings without a published discrete-log relation to G.
pub struct Generators {
    pub blinding: Point<Scalar>,
    pub unregulated_dk: Point<Scalar>,
    pub unregulated_ring: Point<Scalar>,
}
impl Generators {
    pub fn derive(params: &Parameters) -> &Self {
        params.generators.get_or_init(|| {
            let derive = |domain| {
                let p = to_prime(&params.native(domain, &[]));
                assert!(
                    p.is_on_curve() && p != Point::identity(),
                    "fixed generator must be nonidentity"
                );
                p
            };
            Self {
                blinding: crate::group::native_point(
                    &shieldd_sdk_crypto::generators::VALUE_BLINDING,
                ),
                unregulated_dk: derive(UNREGULATED_DK),
                unregulated_ring: derive(UNREGULATED_RING),
            }
        })
    }
}

#[cfg(test)]
mod tests;
