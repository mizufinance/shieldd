use ff::Field;
use group::cofactor::CofactorGroup;
use jubjub::{AffinePoint, ExtendedPoint, Fq, SubgroupPoint};
use subtle::{Choice, ConditionallySelectable};

/// Elligator 2 with Z=5, its Edwards rational map, then cofactor clearing.
pub fn to_subgroup(u: &Fq) -> SubgroupPoint {
    let k = -Fq::from(40964);
    let inverse = k.invert().unwrap();
    let c1 = Fq::from(40962) * inverse;
    let c2 = inverse.square();
    let tv = Fq::from(5) * u.square();
    // -1/5 is nonsquare in Fq, so 1+5u² never vanishes.
    let x1 = -c1 * (Fq::ONE + tv).invert().unwrap();
    let gx1 = ((x1 + c1) * x1 + c2) * x1;
    let x2 = -x1 - c1;
    let root = gx1.sqrt();
    let square = root.is_some();
    let x = Fq::conditional_select(&x2, &x1, square);
    let mut y = Fq::conditional_select(
        &(tv * gx1).sqrt().unwrap_or(Fq::ZERO),
        &root.unwrap_or(Fq::ZERO),
        square,
    );
    y = Fq::conditional_select(&y, &-y, Choice::from(y.to_bytes()[0] & 1) ^ square);
    let s = x * k;
    let t = y * k;
    let plus = s + Fq::ONE;
    let inverse = (plus * t).invert();
    let zero = !inverse.is_some();
    let inverse = inverse.unwrap_or(Fq::ZERO);
    let x = inverse * plus * s;
    let y = Fq::conditional_select(&(inverse * t * (s - Fq::ONE)), &Fq::ONE, zero);
    // Coordinates are constructed by the complete rational map above.
    ExtendedPoint::from(AffinePoint::from_raw_unchecked(x, y)).clear_cofactor()
}
