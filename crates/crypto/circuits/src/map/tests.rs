use super::*;
use ark_ec::{
    AffineRepr, CurveConfig,
    hashing::{
        curve_maps::elligator2::{Elligator2Config, Elligator2Map},
        map_to_curve_hasher::MapToCurve,
    },
    twisted_edwards::{Affine, MontCurveConfig, TECurveConfig},
};
use ark_ed_on_bls12_381::{Fq, Fr, JubjubConfig};
use ark_ff::{MontFp, PrimeField};
use commonware_cryptography::zk::circuit::build_with_values;

#[derive(Clone, Default, PartialEq, Eq)]
struct Reference;
impl CurveConfig for Reference {
    type BaseField = Fq;
    type ScalarField = Fr;
    const COFACTOR: &'static [u64] = &[8];
    const COFACTOR_INV: Fr = <JubjubConfig as CurveConfig>::COFACTOR_INV;
}
impl TECurveConfig for Reference {
    const COEFF_A: Fq = <JubjubConfig as TECurveConfig>::COEFF_A;
    const COEFF_D: Fq = <JubjubConfig as TECurveConfig>::COEFF_D;
    const GENERATOR: Affine<Self> = Affine::new_unchecked(
        <JubjubConfig as TECurveConfig>::GENERATOR.x,
        <JubjubConfig as TECurveConfig>::GENERATOR.y,
    );
    type MontCurveConfig = Self;
}
impl MontCurveConfig for Reference {
    const COEFF_A: Fq = <JubjubConfig as MontCurveConfig>::COEFF_A;
    const COEFF_B: Fq = <JubjubConfig as MontCurveConfig>::COEFF_B;
    type TECurveConfig = Self;
}
impl Elligator2Config for Reference {
    const Z: Fq = MontFp!("5");
    const ONE_OVER_COEFF_B_SQUARE: Fq =
        MontFp!("19676371192118968049803995723067767322369844622612809987311387700305851196142");
    const COEFF_A_OVER_COEFF_B: Fq =
        MontFp!("9628519018340474679875156334893438995974717701127060143092098445975442038616");
}
fn ark(s: &Scalar) -> Fq {
    Fq::from_be_bytes_mod_order(&s.encode())
}

#[test]
fn native_and_circuit_match_arkworks_elligator_including_zero_and_full_field() {
    Elligator2Map::<Reference>::check_parameters().unwrap();
    assert!(Scalar::from(5).sqrt().is_none());
    assert!((-Scalar::one() * &Scalar::from(5).inv()).sqrt().is_none());
    assert!(
        (Scalar::from(40962) * &Scalar::from(40962) - &Scalar::from(4))
            .sqrt()
            .is_none()
    );
    let p = Parameters::load().unwrap();
    let mut inputs = vec![
        Scalar::zero(),
        Scalar::one(),
        -Scalar::one(),
        Scalar::from_limbs([u64::MAX, u64::MAX, 0, 0]),
    ];
    inputs.extend((0..32).map(|i| p.native(ASSET_GENERATOR, &[Scalar::from(i)])));
    for u in inputs {
        let expected = Elligator2Map::<Reference>::map_to_curve(ark(&u))
            .unwrap()
            .clear_cofactor();
        let native = to_prime(&u);
        let mut encoded: [u8; 32] = u.encode().as_ref().try_into().unwrap();
        encoded.reverse();
        let input = shieldd_sdk_crypto::encoding::field(&encoded).unwrap();
        let runtime = shieldd_sdk_crypto::map::to_subgroup(&input);
        assert_eq!(crate::group::native_point(&runtime), native);
        assert_eq!(ark(&native.x), expected.x);
        assert_eq!(ark(&native.y), expected.y);
        assert!(native.is_on_curve());
        assert!(expected.is_in_correct_subgroup_assuming_on_curve());
        let (c, _) = build_with_values(|ctx| {
            let u = Var::witness(ctx, |_| u.clone());
            let point = circuit(ctx, &u);
            point.x.assert_eq(&Var::native(native.x.clone()));
            point.y.assert_eq(&Var::native(native.y.clone()));
            Vec::new()
        });
        assert!(c.is_satisfied());
        let (invalid, _) = build_with_values(|ctx| {
            let u = Var::witness(ctx, |_| u.clone());
            circuit(ctx, &u)
                .x
                .assert_eq(&Var::native(native.x.clone() + &Scalar::one()));
            Vec::new()
        });
        assert!(!invalid.is_satisfied());
    }
}

#[test]
fn quadratic_choice_and_domain_separated_generator_bindings_are_not_optional() {
    for value in [Scalar::one(), Scalar::from(5)] {
        let square = value.sqrt().is_some();
        let root = if square {
            value.sqrt().unwrap()
        } else {
            (Scalar::from(5) * &value).sqrt().unwrap()
        };
        for wrong in [false, true] {
            let (c, _) = build_with_values(|ctx| {
                let gx = Var::witness(ctx, |_| value.clone());
                let choice = BoolVar::witness(ctx, |_| square ^ wrong);
                let root = Var::witness(ctx, |_| root.clone());
                constrain_square(&gx, &choice, &root);
                Vec::new()
            });
            assert_eq!(c.is_satisfied(), !wrong);
        }
    }
    let p = Parameters::load().unwrap();
    let g = Generators::derive(&p);
    assert_ne!(g.blinding, g.unregulated_dk);
    assert_ne!(g.blinding, g.unregulated_ring);
    assert_ne!(g.unregulated_dk, g.unregulated_ring);
    assert_ne!(asset(&p, &Scalar::one()), asset(&p, &Scalar::from(2)));
}
