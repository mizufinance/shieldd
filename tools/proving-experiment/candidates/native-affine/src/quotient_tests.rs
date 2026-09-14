use commonware_cryptography::{bls12381::primitives::group::Scalar, zk::pari};
use commonware_math::{
    algebra::{Additive, Random, Ring},
    poly::Poly,
};

#[test]
fn unmasked_square_quotient_matches_generic_masked_polynomial_and_rejects_remainder() {
    let mut rng = rand::rng();
    for n in [8, 32, 128] {
        let a = Poly::from_coefficients((0..n).map(|_| Scalar::random(&mut rng))).unwrap();
        let (_, b) = a.multiply(&a).unwrap().divide_by_vanishing(n).unwrap();
        for (constant, linear) in [
            (Scalar::zero(), Scalar::zero()),
            (Scalar::one(), Scalar::zero()),
            (Scalar::zero(), Scalar::one()),
            (Scalar::random(&mut rng), Scalar::random(&mut rng)),
        ] {
            let mask_a = Poly::from_coefficients(vec![constant, linear]).unwrap();
            let mask_b = Poly::from_coefficients(vec![Scalar::random(&mut rng)]).unwrap();
            let am = a.mask_vanishing(&mask_a, n).unwrap();
            let bm = b.mask_vanishing(&mask_b, n).unwrap();
            let (mut expected, remainder) = (am.multiply(&am).unwrap() - &bm)
                .divide_by_vanishing(n)
                .unwrap();
            assert_eq!(remainder, Poly::zero());
            expected.trim();
            let actual = pari::masked_quotient(&a, &b, &mask_a, &mask_b, n).unwrap();
            assert_eq!(actual, expected);
            let bad = b.clone() + &Poly::from_coefficients(vec![Scalar::one()]).unwrap();
            assert!(matches!(
                pari::masked_quotient(&a, &bad, &mask_a, &mask_b, n),
                Err(pari::Error::Unsatisfied)
            ));
        }
        assert!(pari::masked_quotient(&a, &b, &Poly::zero(), &Poly::zero(), n).is_err());
    }
}
