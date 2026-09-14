use super::Error;
use crate::bls12381::primitives::group::Scalar;
use commonware_math::{algebra::{Additive, Field, Ring}, ntt::Domain as FftDomain, poly::Poly};
type Polynomial = Poly<Scalar>;

/// Canonical retained roots: all FFT roots except indices 1 modulo 8.
pub struct SubsetDomain {
    fft: FftDomain<Scalar>,
    retained: usize,
    removed: usize,
    excluded: Scalar,
}
impl SubsetDomain {
    pub fn valid_size(m: usize) -> bool {
        let Some(n)=m.checked_next_power_of_two() else {return false};
        n>=8 && n<=1<<20 && m==n-n/8
    }
    pub fn capacity_size(required: usize) -> Option<usize> {
        let n=required.checked_mul(8)?.checked_add(6)?.checked_div(7)?.max(8).checked_next_power_of_two()?;
        let m=n-n/8;
        Self::valid_size(m).then_some(m)
    }
    pub fn new(m: usize) -> Result<Self,Error> {
        if !Self::valid_size(m) {return Err(Error::RelationMismatch)}
        let n=m.next_power_of_two();let removed=n/8;
        let fft=FftDomain::<Scalar>::new(n)?;
        let excluded=fft.generator().exp(&[removed as u64]);
        Ok(Self{fft,retained:m,removed,excluded})
    }
    pub const fn size(&self)->usize {self.retained}
    pub fn fft_size(&self)->usize {self.fft.size()}
    pub fn fft(&self)->&FftDomain<Scalar> {&self.fft}
    fn root_index(&self,index:usize)->usize {8*(index/7)+if index%7==0 {0}else{index%7+1}}
    pub fn element(&self,index:usize)->Result<Scalar,Error> {
        if index>=self.retained{return Err(Error::RelationMismatch)}
        Ok(self.fft.element(self.root_index(index))?)
    }
    pub fn evaluate_vanishing(&self,point:&Scalar)->Scalar {
        let t=point.exp(&[self.removed as u64]);
        let (mut result,mut power)=(Scalar::zero(),Scalar::one());
        for _ in 0..8 {result=result*&t+&power;power*= &self.excluded;}
        result
    }
    pub fn lagrange_basis(&self,point:&Scalar)->Vec<Scalar> {
        self.lagrange_basis_at(point,&(0..self.retained as u32).collect::<Vec<_>>()).expect("canonical domain indices")
    }
    pub fn lagrange_basis_at(&self,point:&Scalar,indices:&[u32])->Result<Vec<Scalar>,Error> {
        if indices.iter().any(|i|*i as usize>=self.retained){return Err(Error::RelationMismatch)}
        let vanishing=self.evaluate_vanishing(point);
        let roots=indices.iter().map(|i|self.element(*i as usize)).collect::<Result<Vec<_>,_>>()?;
        if vanishing==Scalar::zero(){return Ok(roots.iter().map(|h|if h==point{Scalar::one()}else{Scalar::zero()}).collect())}
        let mut products=Vec::with_capacity(roots.len());let mut product=Scalar::one();
        for h in &roots {products.push(product.clone());product*= &(point.clone()-h);}
        if product==Scalar::zero(){return Err(Error::RelationMismatch)}
        let mut inverse=product.inv();let mut denominators=vec![Scalar::zero();roots.len()];
        for i in (0..roots.len()).rev(){denominators[i]=inverse.clone()*&products[i];inverse*= &(point.clone()-&roots[i]);}
        let scale=vanishing*&Scalar::from_limbs([self.fft_size() as u64,0,0,0]).inv();
        Ok(roots.iter().zip(denominators).map(|(h,inverse)| {
            let z=h.exp(&[self.removed as u64])-&self.excluded;
            scale.clone()*h*&z*&inverse
        }).collect())
    }
    pub fn interpolate(&self,values:&[Scalar])->Result<Vec<Scalar>,Error> {
        if values.len()>self.retained{return Err(Error::RelationMismatch)}
        let mut weighted=vec![Scalar::zero();self.fft_size()];
        let mut weights=Vec::with_capacity(8);let mut power=Scalar::one();
        for _ in 0..8{weights.push(power.clone()-&self.excluded);power*= &self.excluded;}
        for (i,v) in values.iter().enumerate(){let j=self.root_index(i);weighted[j]=v.clone()*&weights[j%8];}
        let mut coefficients=self.fft.interpolate(&weighted)?;
        let mut result=vec![Scalar::zero();self.retained];
        for i in (self.removed..self.fft_size()).rev(){
            result[i-self.removed]=coefficients[i].clone();
            let term=coefficients[i].clone()*&self.excluded;
            coefficients[i-self.removed]+= &term;
        }
        if coefficients[..self.removed].iter().any(|c|*c!=Scalar::zero()){return Err(Error::Unsatisfied)}
        Ok(result)
    }
    pub fn polynomial(&self,values:&[Scalar])->Result<Polynomial,Error> {
        Polynomial::from_coefficients(self.interpolate(values)?).ok_or(Error::TooLarge)
    }
    pub fn multiply_vanishing(&self,poly:&Polynomial)->Result<Polynomial,Error> {
        let mut result=vec![Scalar::zero();poly.coefficients().len().checked_add(self.retained).ok_or(Error::TooLarge)?];
        let mut weights=vec![Scalar::one();8];
        for i in (0..7).rev(){weights[i]=weights[i+1].clone()*&self.excluded;}
        for (j,weight) in weights.iter().enumerate(){for (i,c) in poly.coefficients().iter().enumerate(){result[i+j*self.removed]+= &(c.clone()*weight);}}
        Polynomial::from_coefficients(result).ok_or(Error::TooLarge)
    }
    pub fn mask(&self,poly:&Polynomial,mask:&Polynomial)->Result<Polynomial,Error> {Ok(poly.clone()+&self.multiply_vanishing(mask)?)}
    pub fn divide(&self,poly:&Polynomial)->Result<(Polynomial,Polynomial),Error> {
        let mut remainder=poly.coefficients().to_vec();
        let mut quotient=vec![Scalar::zero();remainder.len().saturating_sub(self.retained).max(1)];
        let mut weights=vec![Scalar::one();8];
        for i in (0..7).rev(){weights[i]=weights[i+1].clone()*&self.excluded;}
        for degree in (self.retained..remainder.len()).rev(){
            let coefficient=remainder[degree].clone();quotient[degree-self.retained]=coefficient.clone();
            for (j,weight) in weights.iter().enumerate(){remainder[degree-self.retained+j*self.removed]-= &(coefficient.clone()*weight);}
        }
        remainder.truncate(self.retained.min(remainder.len()).max(1));
        let mut q=Polynomial::from_coefficients(quotient).ok_or(Error::TooLarge)?;
        let mut r=Polynomial::from_coefficients(remainder).ok_or(Error::TooLarge)?;q.trim();r.trim();Ok((q,r))
    }
    pub fn coset_inverse(&self,shift:&Scalar)->Result<Vec<Scalar>,Error> {
        let zh=self.fft.evaluate_vanishing(shift);if zh==Scalar::zero(){return Err(Error::RelationMismatch)}
        let factor=zh.inv();let gs=shift.exp(&[self.removed as u64]);
        let mut root=Scalar::one();let mut result=Vec::with_capacity(8);
        for _ in 0..8{result.push((gs.clone()*&root-&self.excluded)*&factor);root*= &self.excluded;}
        Ok(result)
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn subset_roots_interpolation_division_and_poles(){
        for n in [8,16,32,128] {
            let d=SubsetDomain::new(n-n/8).unwrap();let m=d.size();
            let values=(0..m).map(|i|Scalar::from_limbs([i as u64+11,0,0,0])).collect::<Vec<_>>();
            let a=d.polynomial(&values).unwrap();
            let full=d.fft.evaluate(a.coefficients()).unwrap();
            for (i,v) in values.iter().enumerate(){assert_eq!(&full[d.root_index(i)],v);}
            let product=d.multiply_vanishing(&a).unwrap();let(q,r)=d.divide(&product).unwrap();let mut expected=a.clone();expected.trim();assert_eq!(q,expected);assert_eq!(r,Polynomial::zero());
            for index in 0..n {
                let point=d.fft.element(index).unwrap();let weights=d.lagrange_basis(&point);
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
