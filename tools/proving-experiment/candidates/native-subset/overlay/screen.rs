pub struct ReferencePolynomials {
    digest: [u8;32],
    domain: FftDomain<Scalar>,
    a: Vec<Polynomial>,
    b: Vec<Polynomial>,
    powers: Vec<Scalar>,
    inverse_powers: Vec<Scalar>,
    vanishing_inverse: Scalar,
}
impl ReferencePolynomials {
    pub fn new(relation: &Relation) -> Result<Self,Error> {
        let domain=FftDomain::new(relation.size().next_power_of_two())?;
        let width=relation.public_inputs()+1;
        let mut a=vec![vec![Scalar::zero();domain.size()];width];
        let mut b=a.clone();
        for (i,row) in relation.rows().iter().enumerate() {
            for (column,c) in &row.squared { if (*column as usize)<width {a[*column as usize][i]+=c;} }
            for (column,c) in &row.linear { if (*column as usize)<width {b[*column as usize][i]+=c;} }
        }
        let interpolate=|values:Vec<Vec<Scalar>>|->Result<Vec<Polynomial>,Error>{
            values.iter().map(|column| {
                if column.iter().all(|v|*v==Scalar::zero()){return Ok(Polynomial::zero());}
                Ok(Polynomial::interpolate(&domain,column)?)
            }).collect()
        };
        let a=interpolate(a)?;let b=interpolate(b)?;
        let shift=Scalar::coset_shift();let inverse=shift.inv();
        let vanishing=domain.evaluate_vanishing(&shift);
        if vanishing==Scalar::zero(){return Err(Error::RelationMismatch);}
        let mut powers=Vec::with_capacity(domain.size());let mut inverse_powers=Vec::with_capacity(domain.size());
        let(mut p,mut q)=(Scalar::one(),Scalar::one());
        for _ in 0..domain.size(){powers.push(p.clone());inverse_powers.push(q.clone());p*=&shift;q*=&inverse;}
        Ok(Self{digest:*relation.digest(),domain,a,b,powers,inverse_powers,vanishing_inverse:vanishing.inv()})
    }
    fn public(&self,relation:&Relation,values:&[Scalar])->Result<(Polynomial,Polynomial),Error>{
        if self.digest!=*relation.digest() || self.domain.size()!=relation.size().next_power_of_two() || values.len()!=self.a.len(){return Err(Error::RelationMismatch);}
        let combine=|columns:&[Polynomial]|->Result<Polynomial,Error>{
            let mut coefficients=vec![Scalar::zero();self.domain.size()];
            for (column,value) in columns.iter().zip(values){for (out,c) in coefficients.iter_mut().zip(column.coefficients()){*out+=&(c.clone()*value);}}
            let mut polynomial=Polynomial::from_coefficients(coefficients).ok_or(Error::TooLarge)?;polynomial.trim();Ok(polynomial)
        };
        Ok((combine(&self.a)?,combine(&self.b)?))
    }
    fn quotient(&self,a:&Polynomial,b:&Polynomial)->Result<Polynomial,Error>{
        if a.coefficients().len()>self.domain.size() || b.coefficients().len()>self.domain.size(){return Err(Error::RelationMismatch);}
        let shifted=|polynomial:&Polynomial| polynomial.coefficients().iter().zip(&self.powers).map(|(c,p)|c.clone()*p).collect::<Vec<_>>();
        let mut evaluated=self.domain.evaluate(&shifted(a))?;let other=self.domain.evaluate(&shifted(b))?;
        for (x,y) in evaluated.iter_mut().zip(other){x.square();*x-= &y;*x*=&self.vanishing_inverse;}
        let mut coefficients=self.domain.interpolate(&evaluated)?;
        for (c,p) in coefficients.iter_mut().zip(&self.inverse_powers){*c*=p;}
        Polynomial::from_coefficients(coefficients).ok_or(Error::TooLarge)
    }
}


fn expand_reference_masks(base:Polynomial,a:&Polynomial,mask_a:&Polynomial,mask_b:&Polynomial,size:usize)->Result<Polynomial,Error>{
    let [constant, linear] = mask_a.coefficients() else {
        return Err(Error::RelationMismatch);
    };
    let mut cross = vec![Scalar::zero(); a.coefficients().len() + 1];
    for (i, value) in a.coefficients().iter().enumerate() {
        cross[i] += &(value.clone() * &(constant.clone() + constant));
        cross[i + 1] += &(value.clone() * &(linear.clone() + linear));
    }
    let cross = Polynomial::from_coefficients(cross).ok_or(Error::TooLarge)?;
    let mask_square = mask_a.multiply(mask_a)?.mul_vanishing(size)?;
    let mut quotient = base + &cross + &mask_square - mask_b;
    quotient.trim();
    Ok(quotient)
}

pub struct PolynomialScreen {
    subset: PreparedPolynomials,
    reference: ReferencePolynomials,
    pub subset_preparation_ns: u128,
    pub reference_preparation_ns: u128,
}
pub struct ScreenOutput {
    pub quotient: Polynomial,
    pub a_opening: Polynomial,
    pub r_opening: Polynomial,
    a_masked: Polynomial,
    b_masked: Polynomial,
}
impl PolynomialScreen {
    pub fn new(relation:&Relation)->Result<Self,Error>{
        let start=std::time::Instant::now();let subset=PreparedPolynomials::new(relation)?;let subset_preparation_ns=start.elapsed().as_nanos();
        let start=std::time::Instant::now();let reference=ReferencePolynomials::new(relation)?;let reference_preparation_ns=start.elapsed().as_nanos();
        Ok(Self{subset,reference,subset_preparation_ns,reference_preparation_ns})
    }
    pub fn work(&self,relation:&Relation,witness:&Witness,subset:bool,eta:[Scalar;2],challenge:&Scalar)->Result<ScreenOutput,Error>{
        if witness.assignment().relation_digest()!=relation.digest(){return Err(Error::RelationMismatch)}
        let values=witness.assignment().values();
        if values.len()!=relation.size(){return Err(Error::RelationMismatch)}
        let n=if subset{relation.size()}else{relation.size().next_power_of_two()};
        let mut ae=vec![Scalar::zero();n];let mut be=ae.clone();
        for (i,row) in relation.rows().iter().enumerate(){ae[i]=dot(&row.squared,values);be[i]=dot(&row.linear,values);}
        if ae.iter().zip(&be).any(|(a,b)|a.clone()*a!=*b){return Err(Error::Unsatisfied)}
        let public=witness.assignment().public_assignment();
        let (a,b,xa,xb)=if subset{
            let d=&self.subset.domain;let (xa,xb)=self.subset.public(relation,public)?;
            (d.polynomial(&ae)?,d.polynomial(&be)?,xa,xb)
        }else{
            let d=&self.reference.domain;let (xa,xb)=self.reference.public(relation,public)?;
            (Polynomial::interpolate(d,&ae)?,Polynomial::interpolate(d,&be)?,xa,xb)
        };
        let am=Polynomial::from_coefficients(eta.to_vec()).ok_or(Error::TooLarge)?;
        let bm=Polynomial::from_coefficients(vec![witness.openings().iter().fold(Scalar::zero(),|sum,o|sum+o.scalar())]).ok_or(Error::TooLarge)?;
        let (a_masked,b_masked,quotient)=if subset{
            let d=&self.subset.domain;
            (d.mask(&a,&am)?,d.mask(&b,&bm)?,expand_masks(self.subset.quotient(&a,&b)?,&a,&am,&bm,n)?)
        }else{
            (a.mask_vanishing(&am,n)?,b.mask_vanishing(&bm,n)?,expand_reference_masks(self.reference.quotient(&a,&b)?,&a,&am,&bm,n)?)
        };
        let mut av=a_masked.eval(challenge);let va=av.clone()-&xa.eval(challenge);av.square();let vr=av-&xb.eval(challenge);
        let an=a_masked.clone()-&xa-&Polynomial::from_coefficients(vec![va]).ok_or(Error::TooLarge)?;
        let (mut a_opening,ar)=an.divide_by_linear(challenge);a_opening.trim();if ar!=Scalar::zero(){return Err(Error::InconsistentOpening)}
        let qz=if subset{self.subset.domain.multiply_vanishing(&quotient)?}else{quotient.mul_vanishing(n)?};
        let rn=b_masked.clone()-&xb+&qz-&Polynomial::from_coefficients(vec![vr]).ok_or(Error::TooLarge)?;
        let (mut r_opening,rr)=rn.divide_by_linear(challenge);r_opening.trim();if rr!=Scalar::zero(){return Err(Error::InconsistentOpening)}
        Ok(ScreenOutput{quotient,a_opening,r_opening,a_masked,b_masked})
    }
    pub fn validate(&self,relation:&Relation,witness:&Witness,eta:[Scalar;2],challenge:&Scalar)->Result<(),Error>{
        if !relation.check_witness(witness){return Err(Error::Unsatisfied)}
        for subset in [false,true]{
            let result=self.work(relation,witness,subset,eta.clone(),challenge)?;
            let product=result.a_masked.multiply(&result.a_masked)?-&result.b_masked;
            let (mut q,r)=if subset{self.subset.domain.divide(&product)?}else{product.divide_by_vanishing(self.reference.domain.size())?};
            q.trim();if r!=Polynomial::zero() || q!=result.quotient{return Err(Error::Unsatisfied)}
            let (mut a,mut b)=evaluate_public(relation,witness.assignment().public_assignment());
            let (expected_a,expected_b,xa,xb)=if subset{
                let (xa,xb)=self.subset.public(relation,witness.assignment().public_assignment())?;
                (self.subset.domain.polynomial(&a)?,self.subset.domain.polynomial(&b)?,xa,xb)
            }else{
                let d=&self.reference.domain;a.resize(d.size(),Scalar::zero());b.resize(d.size(),Scalar::zero());
                let (xa,xb)=self.reference.public(relation,witness.assignment().public_assignment())?;
                (Polynomial::interpolate(d,&a)?,Polynomial::interpolate(d,&b)?,xa,xb)
            };
            let normalize=|mut p:Polynomial|{p.trim();p};
            if normalize(expected_a)!=normalize(xa) || normalize(expected_b)!=normalize(xb){return Err(Error::RelationMismatch)}
        }
        Ok(())
    }
}
