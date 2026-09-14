use crate::{
    group::{generator, witness_subgroup},
    scalar::{ORDER, canonical_bits, reduce},
};
use ark_ec::{AffineRepr, CurveGroup};
use ark_ed_on_bls12_381::{EdwardsAffine, Fq, Fr};
use ark_ff::PrimeField;
use commonware_codec::Encode;
use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::circuit::{Var, build_with_values},
};
use commonware_math::algebra::{Additive, Random, Ring};

#[test]
fn jubjub_multiplication_and_reduction_match_arkworks() {
    let base = generator();
    let reference = EdwardsAffine::new_unchecked(
        Fq::from_be_bytes_mod_order(&base.x.encode()),
        Fq::from_be_bytes_mod_order(&base.y.encode()),
    );
    assert!(reference.is_on_curve() && reference.is_in_correct_subgroup_assuming_on_curve());
    let mut rng = rand::rng();
    let mut cases = vec![
        Scalar::zero(),
        Scalar::one(),
        Scalar::from(2),
        Scalar::from(3),
        Scalar::from_limbs(ORDER) - &Scalar::one(),
        -Scalar::one(),
    ];
    cases.extend((0..16).map(|_| Scalar::random(&mut rng)));
    for value in cases {
        let reduction = reduce(&value);
        let expected_scalar = Fr::from_be_bytes_mod_order(&value.encode());
        assert_eq!(
            Fr::from_be_bytes_mod_order(&reduction.remainder.encode()),
            expected_scalar
        );
        let expected = reference
            .mul_bigint(expected_scalar.into_bigint())
            .into_affine();
        let actual = base.multiply(&reduction.remainder);
        assert_eq!(Fq::from_be_bytes_mod_order(&actual.x.encode()), expected.x);
        assert_eq!(Fq::from_be_bytes_mod_order(&actual.y.encode()), expected.y);
        let preimage = base.cofactor_preimage();
        let (valid, _) = build_with_values(|ctx| {
            let point = witness_subgroup(ctx, &base, &preimage);
            let scalar = Var::witness(ctx, |_| reduction.remainder.clone());
            let product = point.multiply_bits(&canonical_bits(ctx, &scalar));
            product.x.assert_eq(&Var::native(actual.x.clone()));
            product.y.assert_eq(&Var::native(actual.y.clone()));
            Vec::new()
        });
        assert!(valid.is_satisfied());
    }
}
