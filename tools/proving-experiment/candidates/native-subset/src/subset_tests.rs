#[cfg(test)]
mod tests {
    use commonware_cryptography::{zk::pari::SubsetDomain,bls12381::primitives::group::Scalar};
use commonware_math::{poly::Poly,algebra::{Additive,Ring}};
type Polynomial=Poly<Scalar>;
    #[test]
    fn subset_roots_interpolation_division_and_poles(){
        for n in [8,16,32,128] {
            let d=SubsetDomain::new(n-n/8).unwrap();let m=d.size();
            let values=(0..m).map(|i|Scalar::from_limbs([i as u64+11,0,0,0])).collect::<Vec<_>>();
            let a=d.polynomial(&values).unwrap();
            let full=d.fft().evaluate(a.coefficients()).unwrap();
            for (i,v) in values.iter().enumerate(){assert_eq!(&full[8*(i/7)+if i%7==0{0}else{i%7+1}],v);}
            let product=d.multiply_vanishing(&a).unwrap();let(q,r)=d.divide(&product).unwrap();let mut expected=a.clone();expected.trim();assert_eq!(q,expected);assert_eq!(r,Polynomial::zero());
            for index in 0..n {
                let point=d.fft().element(index).unwrap();let weights=d.lagrange_basis(&point);
                let value=values.iter().zip(weights).fold(Scalar::zero(),|sum,(v,w)|sum+&(v.clone()*&w));
                assert_eq!(value,a.eval(&point));
                assert_eq!(d.evaluate_vanishing(&point)==Scalar::zero(),index%8!=1);
            }
        }
    }
    #[test]
    fn subset_descriptor_bounds(){
        for m in [0,1,6,8,15,229375,262144,1<<21]{assert!(SubsetDomain::new(m).is_err());}
        assert_eq!(SubsetDomain::capacity_size(220029),Some(229376));
        assert_eq!(SubsetDomain::capacity_size(usize::MAX),None);
        let d=SubsetDomain::new(7).unwrap();assert!(d.interpolate(&vec![Scalar::zero();8]).is_err());assert!(d.lagrange_basis_at(&Scalar::one(),&[7]).is_err());
    }
}
