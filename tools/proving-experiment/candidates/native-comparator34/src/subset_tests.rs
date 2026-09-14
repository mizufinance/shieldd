use commonware_cryptography::{bls12381::primitives::group::Scalar, zk::pari::SubsetDomain};
use commonware_math::{
    algebra::{Additive, FieldNTT, Ring},
    poly::Poly,
};
type Polynomial = Poly<Scalar>;

#[test]
fn retained_roots_interpolation_masks_division_and_removed_root_poles() {
    for n in [4, 8, 16, 32, 128] {
        let d = SubsetDomain::new(n - n / 4).unwrap();
        let indices = (0..n).filter(|i| i % 4 != 1).collect::<Vec<_>>();
        let values = (0..d.size())
            .map(|i| Scalar::from(i as u64 + 11))
            .collect::<Vec<_>>();
        let a = d.polynomial(&values).unwrap();
        let full = d.fft().evaluate(a.coefficients()).unwrap();
        for ((i, index), value) in indices.iter().enumerate().zip(&values) {
            assert_eq!(d.element(i).unwrap(), d.fft().element(*index).unwrap());
            assert_eq!(&full[*index], value);
        }
        let product = d.multiply_vanishing(&a).unwrap();
        let (q, r) = d.divide(&product).unwrap();
        let mut expected = a.clone();
        expected.trim();
        assert_eq!(q, expected);
        assert_eq!(r, Polynomial::zero());
        let mask = Polynomial::from_coefficients(vec![Scalar::from(13), Scalar::from(17)]).unwrap();
        let masked = d.mask(&a, &mask).unwrap();
        let (q, mut r) = d.divide(&masked).unwrap();
        r.trim();
        assert_eq!(q, mask);
        assert_eq!(r, expected);
        for index in 0..n {
            let point = d.fft().element(index).unwrap();
            let weights = d.lagrange_basis(&point);
            let value = values
                .iter()
                .zip(weights)
                .fold(Scalar::zero(), |sum, (v, w)| sum + &(v.clone() * &w));
            assert_eq!(value, a.eval(&point));
            let oracle = indices.iter().fold(Scalar::one(), |p, i| {
                p * &(point.clone() - &d.fft().element(*i).unwrap())
            });
            assert_eq!(d.evaluate_vanishing(&point), oracle);
            assert_eq!(oracle == Scalar::zero(), index % 4 != 1);
            if index % 4 != 1 {
                assert_eq!(masked.eval(&point), a.eval(&point));
            }
            assert!(d.coset_inverse(&point).is_err());
        }
        let shift = Scalar::coset_shift();
        let inverses = d.coset_inverse(&shift).unwrap();
        assert_eq!(inverses.len(), 4);
        for i in 0..n {
            let point = shift.clone() * &d.fft().element(i).unwrap();
            assert_eq!(
                inverses[i % 4].clone() * &d.evaluate_vanishing(&point),
                Scalar::one()
            );
        }
        let zero = d.polynomial(&[]).unwrap();
        assert_eq!(zero.eval(&shift), Scalar::zero());
        let short = d.polynomial(&values[..1]).unwrap();
        for (i, index) in indices.iter().enumerate() {
            assert_eq!(
                short.eval(&d.fft().element(*index).unwrap()),
                if i == 0 {
                    values[0].clone()
                } else {
                    Scalar::zero()
                }
            );
        }
    }
}

#[test]
fn domain_descriptor_and_buffer_bounds_reject_old_domain() {
    for m in [
        0,
        1,
        2,
        4,
        7,
        8,
        15,
        196607,
        196609,
        229376,
        262144,
        1 << 21,
        usize::MAX,
    ] {
        assert!(SubsetDomain::new(m).is_err(), "{m}");
    }
    for (required, expected) in [
        (0, 3),
        (3, 3),
        (4, 6),
        (6, 6),
        (7, 12),
        (191516, 196608),
        (196608, 196608),
        (196609, 393216),
        (786432, 786432),
    ] {
        assert_eq!(SubsetDomain::capacity_size(required), Some(expected));
    }
    for required in [786433, usize::MAX] {
        assert_eq!(SubsetDomain::capacity_size(required), None);
    }
    let d = SubsetDomain::new(3).unwrap();
    assert!(d.element(3).is_err());
    assert!(d.interpolate(&vec![Scalar::zero(); 4]).is_err());
    assert!(d.lagrange_basis_at(&Scalar::one(), &[3]).is_err());
}
