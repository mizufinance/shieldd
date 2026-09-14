"""Apply the canonical subset domain to an isolated lifetime-optimized source copy."""
from pathlib import Path
import hashlib,json,shutil
HERE=Path(__file__).resolve().parent
CW=HERE.parents[1]/'cache/commonware-subset381'
BASE=CW/'cryptography/src/zk/pari'
identity=json.loads((CW/'baseline-identity.json').read_text())
for name,h in identity['files'].items():assert hashlib.sha256(Path(name).read_bytes()).hexdigest()==h,name
shutil.copyfile(HERE/'overlay/domain.rs',BASE/'domain.rs')
def once(s,a,b):
 assert s.count(a)==1,(a,s.count(a))
 return s.replace(a,b)
p=BASE/'mod.rs';s=p.read_text().replace('mod circuit;','mod circuit;\nmod domain;\npub use domain::SubsetDomain;').replace('ntt::Domain<Scalar>','SubsetDomain').replace('_COMMONWARE_CRYPTOGRAPHY_ZK_PARI_PROOF_V1','_SHIELDD_NATIVE_SUBSET_PARI_PROOF_V1');p.write_text(s)
p=BASE/'circuit.rs';s=p.read_text().replace('b"_COMMONWARE_CRYPTOGRAPHY_ZK_PARI_RELATION_DIGEST"','b"_SHIELDD_NATIVE_SUBSET_PARI_RELATION_DIGEST_V1"')
s=once(s,'let size = required\n            .checked_next_power_of_two()\n            .ok_or(Error::SizeOverflow)?;', 'let size = super::SubsetDomain::capacity_size(required).ok_or(Error::SizeOverflow)?;')
s=once(s,'let log_size = size.ilog2();','let log_size = size.next_power_of_two().ilog2();')
s=s.replace('Size of the padded radix-2 constraint domain, which also equals the','Size of the retained constraint domain, which also equals the')
s=once(s,'    pub fn constraint_count(&self) -> usize {','''    /// Compare unchanged sparse rows/layout against the previous full-FFT relation digest.
    pub fn reference_digest(&self, layout: &InputLayout) -> Result<[u8;32],super::Error> {
        Ok(relation_digest_namespace(self.size.next_power_of_two(),&self.rows,layout,b"_COMMONWARE_CRYPTOGRAPHY_ZK_PARI_RELATION_DIGEST")?)
    }

    pub fn constraint_count(&self) -> usize {''')
s=once(s,'    let mut hasher = blake3::Hasher::new();\n    hasher.update(DIGEST_NAMESPACE);','''    relation_digest_namespace(size,rows,layout,DIGEST_NAMESPACE)
}
fn relation_digest_namespace(size:usize,rows:&[SparseRow],layout:&InputLayout,namespace:&[u8])->Result<[u8;32],Error>{
    let mut hasher = blake3::Hasher::new();
    hasher.update(namespace);''')
p.write_text(s)
p=BASE/'setup.rs';s=p.read_text().replace('use commonware_math::ntt::Domain;','use super::SubsetDomain as Domain;');p.write_text(s)
p=BASE/'simulator.rs';s=p.read_text().replace('use commonware_math::ntt::Domain;','use super::SubsetDomain as Domain;');p.write_text(s)
p=BASE/'verifier.rs';s=p.read_text().replace('ntt::Domain,','').replace('Domain<Scalar>','Domain')
s='use super::SubsetDomain as Domain;\n'+s
s=once(s,'if !verifying_key.domain_size.is_power_of_two() {','if !Domain::valid_size(verifying_key.domain_size as usize) {')
s=s.replace('// Domain::new rounds up to a power of two, so reject sizes it would\n    // otherwise silently normalize.','// The retained size canonically determines a distinct FFT size and excluded coset.')
p.write_text(s)
p=BASE/'types.rs';s=p.read_text().replace('_COMMONWARE_CRYPTOGRAPHY_ZK_PARI_COMMITMENT_KEY_DIGEST','_SHIELDD_NATIVE_SUBSET_PARI_COMMITMENT_KEY_DIGEST_V1').replace('_COMMONWARE_CRYPTOGRAPHY_ZK_PARI_VERIFYING_KEY_DIGEST','_SHIELDD_NATIVE_SUBSET_PARI_VERIFYING_KEY_DIGEST_V1')
s=once(s,'if !domain_size.is_power_of_two() {','if !super::SubsetDomain::valid_size(domain_size as usize) {').replace('domain size must be a power of two','invalid canonical subset domain')
p.write_text(s)
p=BASE/'prover.rs';s=p.read_text().replace('ntt::Domain,','ntt::Domain as FftDomain,');s='use super::SubsetDomain as Domain;\n'+s
s=once(s,'let domain = Domain::new(length)?;','let domain = FftDomain::new(length)?;')
s=once(s,'(square - b).divide_by_vanishing(size)?','Domain::new(size)?.divide(&(square - b))?')
s=once(s,'mask_a.multiply(mask_a)?.mul_vanishing(size)?','Domain::new(size)?.multiply_vanishing(&mask_a.multiply(mask_a)?)?')
s=s.replace('Polynomial::interpolate(&domain, &z_a_evaluations)?','domain.polynomial(&z_a_evaluations)?').replace('Polynomial::interpolate(&domain, &z_b_evaluations)?','domain.polynomial(&z_b_evaluations)?')
s=s.replace('Polynomial::interpolate(&domain,&a)?','domain.polynomial(&a)?').replace('Polynomial::interpolate(&domain,&b)?','domain.polynomial(&b)?').replace('Polynomial::interpolate(&domain,column)?','domain.polynomial(column)?')
s=s.replace('z_a.mask_vanishing(&a_mask, domain.size())?','domain.mask(&z_a,&a_mask)?').replace('z_b.mask_vanishing(&b_mask, domain.size())?','domain.mask(&z_b,&b_mask)?')
s=once(s,'numerator.divide_by_vanishing(domain.size())?','domain.divide(&numerator)?')
s=once(s,'quotient.mul_vanishing(domain.size())?','domain.multiply_vanishing(&quotient)?')
s=s.replace('domain: Domain<Scalar>,','domain: Domain,').replace('vanishing_inverse: Scalar,','vanishing_inverse: Vec<Scalar>,')
s=once(s,'let vanishing=domain.evaluate_vanishing(&shift);\n        if vanishing==Scalar::zero(){return Err(Error::RelationMismatch);}', 'let vanishing_inverse=domain.coset_inverse(&shift)?;')
s=s.replace('Vec::with_capacity(domain.size())','Vec::with_capacity(domain.fft_size())').replace('for _ in 0..domain.size(){powers.push','for _ in 0..domain.fft_size(){powers.push').replace('vanishing_inverse:vanishing.inv()','vanishing_inverse')
s=s.replace('self.domain.evaluate(&shifted(a))?','self.domain.fft().evaluate(&shifted(a))?').replace('self.domain.evaluate(&shifted(b))?','self.domain.fft().evaluate(&shifted(b))?')
s=once(s,'for (x,y) in evaluated.iter_mut().zip(other){x.square();*x-= &y;*x*=&self.vanishing_inverse;}', 'for (i,(x,y)) in evaluated.iter_mut().zip(other).enumerate(){x.square();*x-= &y;*x*=&self.vanishing_inverse[i%8];}')
s=once(s,'let mut coefficients=self.domain.interpolate(&evaluated)?;','let mut coefficients=self.domain.fft().interpolate(&evaluated)?;')
s=once(s,'Polynomial::from_coefficients(coefficients).ok_or(Error::TooLarge)\n    }\n}', '''if coefficients[self.domain.size()-1..].iter().any(|c|*c!=Scalar::zero()){return Err(Error::Unsatisfied);}
        coefficients.truncate(self.domain.size()-1);
        Polynomial::from_coefficients(coefficients).ok_or(Error::TooLarge)
    }
}''')
p.write_text(s)
p=HERE/'src/api.rs';p.write_text(p.read_text().replace('SHNCP001','SHNCS001'))
p=HERE/'examples/full_compile_cost.rs';s=p.read_text().replace('hex::encode(relation.digest())==','hex::encode(relation.reference_digest(&layout)?)==');s=s.replace('relation.constraint_count()==220009 &&','relation.domain_size()==229376 && relation.variable_count()==220029 && relation.constraint_count()==220009 &&');p.write_text(s)
paths=[p for p in CW.rglob('*') if p.is_file()]+[p for p in HERE.rglob('*') if p.is_file()]
(CW/'subset-identity.json').write_text(json.dumps({'schema':'shieldd.native_subset.sources.v1','files':{str(p):hashlib.sha256(p.read_bytes()).hexdigest() for p in paths}},indent=2)+'\n')
