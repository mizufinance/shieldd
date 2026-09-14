use commonware_cryptography::{bls12381::primitives::group::Scalar, zk::pari};
use commonware_math::{
    algebra::{Additive, Random, Ring},
    poly::Poly,
};

#[test]
fn unmasked_square_quotient_matches_generic_masked_polynomial_and_rejects_remainder() {
    let mut rng = rand::rng();
    for fft in [8, 32, 128] {
        let n=fft-fft/8;
        let domain=pari::SubsetDomain::new(n).unwrap();
        let a = Poly::from_coefficients((0..n).map(|_| Scalar::random(&mut rng))).unwrap();
        let (_, b) = domain.divide(&a.multiply(&a).unwrap()).unwrap();
        for (constant, linear) in [
            (Scalar::zero(), Scalar::zero()),
            (Scalar::one(), Scalar::zero()),
            (Scalar::zero(), Scalar::one()),
            (Scalar::random(&mut rng), Scalar::random(&mut rng)),
        ] {
            let mask_a = Poly::from_coefficients(vec![constant, linear]).unwrap();
            let mask_b = Poly::from_coefficients(vec![Scalar::random(&mut rng)]).unwrap();
            let am = domain.mask(&a,&mask_a).unwrap();
            let bm = domain.mask(&b,&mask_b).unwrap();
            let (mut expected, remainder) = domain.divide(&(am.multiply(&am).unwrap()-&bm)).unwrap();
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
