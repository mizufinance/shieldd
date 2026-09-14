//! Deterministic BLS12-377 G1 subgroup validation with unreduced seed multiplication.
use anyhow::{ensure,Result};
use ark_bls12_377::{Fq,G1Affine,G1Projective};
use ark_ec::AffineRepr;
use ark_ff::{AdditiveGroup,Field,MontFp,Zero};
use ark_serialize::{CanonicalDeserialize,CanonicalSerialize,Compress,Validate};
const GNARK_BETA:Fq=MontFp!("80949648264912719408558363140637477264845294720710499478137287262712535938301461879813459410945");
// All operations are group doubling/addition; no scalar-field reduction or GLV.
fn by_seed(q:G1Projective)->G1Projective {
    let mut z=q.double()+q;
    let mut t0=z.double();
    let mut t1=t0.double().double();
    t0=z.double()+z;t0+=t1;
    t1=t0.double();for _ in 0..6 {t1.double_in_place();}t0+=t1;
    for _ in 0..5 {t0.double_in_place();}z+=t0;
    for _ in 0..46 {z.double_in_place();}z+=q;z
}
pub(super) fn contains(p:&G1Affine)->bool {
    if !p.is_on_curve(){return false;}
    if p.is_zero(){return true;}
    let mut phi=p.into_group();phi.x*=GNARK_BETA;
    -by_seed(by_seed(phi))==p.into_group()
}

pub(super) fn decode(bytes:&[u8])->Result<G1Affine>{
 ensure!(bytes.len()==48,"compressed G1 length");
 let mut input=bytes;
 // Skip only Ark's full-order membership loop; the deterministic criterion below replaces it.
 let point=G1Affine::deserialize_with_mode(&mut input,Compress::Yes,Validate::No)?;
 ensure!(input.is_empty() && contains(&point),"G1 is not on curve or in the prime subgroup");
 let mut canonical=Vec::with_capacity(48);point.serialize_compressed(&mut canonical)?;
 ensure!(canonical==bytes,"noncanonical compressed G1");Ok(point)
}
pub(super) fn decode_uncompressed(bytes:&[u8])->Result<G1Affine>{
 ensure!(bytes.len()==96,"uncompressed G1 length");
 let mut input=bytes;
 let point=G1Affine::deserialize_with_mode(&mut input,Compress::No,Validate::No)?;
 ensure!(input.is_empty() && contains(&point),"G1 is not on curve or in the prime subgroup");
 let mut canonical=Vec::with_capacity(96);point.serialize_uncompressed(&mut canonical)?;
 ensure!(canonical==bytes,"noncanonical uncompressed G1");Ok(point)
}
#[cfg(test)]mod tests{
 use super::*;
 use ark_bls12_377::Fr;
 use ark_ec::{CurveGroup,PrimeGroup};
 use ark_ff::PrimeField;
 fn unreduced(p:G1Affine,limbs:&[u64])->G1Projective{let mut r=G1Projective::zero();for limb in limbs.iter().rev(){for bit in (0..64).rev(){r.double_in_place();if limb>>bit&1==1{r+=p;}}}r}
 #[test]fn full_order_mixed_torsion_and_compressed_codec_parity(){
  let generator=G1Affine::generator();let mut cases=vec![G1Affine::zero(),generator,-generator];
  for x in 0..64u64{let x=Fq::from(x);if let Some(y)=(x.square()*x+Fq::ONE).sqrt(){
   let p=G1Affine::new_unchecked(x,y);let torsion=unreduced(p,Fr::MODULUS.as_ref()).into_affine();
   cases.extend([p,-p,torsion,-torsion,(generator.into_group()+torsion).into_affine()]);
   assert_eq!(by_seed(p.into_group()),unreduced(p,&[9_586_122_913_090_633_729]));
   cases.push(unreduced(generator,&[x.into_bigint().0[0]]).into_affine());
  }}
  let order3=G1Affine::new_unchecked(Fq::ZERO,Fq::ONE);cases.extend([G1Affine::new_unchecked(-Fq::ONE,Fq::ZERO),order3]);
  assert!(order3.into_group().mul_bigint(Fr::MODULUS).is_zero());assert!(!contains(&order3));
  for p in &cases{
   let reference=p.is_on_curve() && p.is_in_correct_subgroup_assuming_on_curve();
   assert_eq!(contains(p),reference);assert_eq!(reference,unreduced(*p,Fr::MODULUS.as_ref()).is_zero());
   let mut bytes=Vec::new();p.serialize_compressed(&mut bytes).unwrap();
   let ordinary=G1Affine::deserialize_compressed(bytes.as_slice());assert_eq!(decode(&bytes).is_ok(),ordinary.is_ok());
   let mut raw=Vec::new();p.serialize_uncompressed(&mut raw).unwrap();
   assert_eq!(decode_uncompressed(&raw).is_ok(),reference);
   if reference {assert_eq!(decode_uncompressed(&raw).unwrap(),*p);}
  }
  let mut off=generator;off.y+=Fq::ONE;assert!(!contains(&off));
  let mut raw=Vec::new();off.serialize_uncompressed(&mut raw).unwrap();assert!(decode_uncompressed(&raw).is_err());
  let mut wrong_phi=generator.into_group();wrong_phi.x*=GNARK_BETA.square();assert_ne!(-by_seed(by_seed(wrong_phi)),generator.into_group());
  assert!(cases.len()>190);
 }
 #[test]fn rejects_noncanonical_fields_flags_identity_truncation_and_trailing(){
  for b in [vec![0u8;47],vec![0u8;49],vec![255u8;48],{let mut b=vec![0u8;48];b[47]=0xc0;b},{let mut b=vec![0u8;48];b[0]=1;b[47]=0x40;b}]{assert!(decode(&b).is_err());}
 }
}

#[cfg(test)] mod raw_tests {
 use super::*;
 #[test] fn uncompressed_canonical_flags_identity_lengths_and_fields() {
  for b in [vec![0u8;95],vec![0u8;97],vec![255u8;96],{let mut b=vec![0u8;96];b[95]=0xc0;b},{let mut b=vec![0u8;96];b[0]=1;b[95]=0x40;b}]{assert!(decode_uncompressed(&b).is_err());}
 }
}
