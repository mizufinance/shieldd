//! Deterministic checked subgroup validation on a bounded sample of public B bases.
#[path = "gnark_msm.rs"]
mod arithmetic;
use arithmetic::{bridge, keys, lowering};
use arithmetic::{checked, identify, point, record, sha, FileIdentity, Manifest};
use anyhow::{ensure, Result};
use ark_bls12_377::{Fq, Fr, G1Affine, G1Projective};
use ark_ec::{AffineRepr, CurveGroup, PrimeGroup};
use ark_ff::{AdditiveGroup, Field, MontFp, PrimeField, Zero};
use ark_serialize::CanonicalSerialize;
use rayon::prelude::*;
use serde::Serialize;
use std::{fs::{self, File}, hint::black_box, path::{Path, PathBuf}, time::Instant};
const GNARK_BETA:Fq=MontFp!("80949648264912719408558363140637477264845294720710499478137287262712535938301461879813459410945");
fn encode<T:CanonicalSerialize>(v:&T)->Result<Vec<u8>> {let mut b=Vec::new();v.serialize_compressed(&mut b)?;Ok(b)}

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
fn fast(p:&G1Affine)->bool {
    if !p.is_on_curve(){return false;}
    if p.is_zero(){return true;}
    let mut phi=p.into_group();phi.x*=GNARK_BETA;
    -by_seed(by_seed(phi))==p.into_group()
}
fn reference(p:&G1Affine)->bool {p.is_on_curve() && p.is_in_correct_subgroup_assuming_on_curve()}
fn decode(bytes:&[u8],fast_check:bool)->Result<G1Affine> {
    ensure!(bytes.len()==97 && bytes[0]<=1,"point length/tag");
    if bytes[0]==0 {ensure!(bytes[1..].iter().all(|b|*b==0),"noncanonical identity");return Ok(G1Affine::zero());}
    let x=bridge::decode::<Fq>(&bytes[1..49].iter().rev().copied().collect::<Vec<_>>())?;
    let y=bridge::decode::<Fq>(&bytes[49..].iter().rev().copied().collect::<Vec<_>>())?;
    let p=G1Affine::new_unchecked(x,y);
    ensure!(!p.is_zero() && if fast_check{fast(&p)}else{reference(&p)},"invalid finite subgroup point");Ok(p)
}
fn unreduced(p:G1Affine,limbs:&[u64])->G1Projective {
    let mut r=G1Projective::zero();for limb in limbs.iter().rev(){for bit in (0..64).rev(){r.double_in_place();if limb>>bit&1==1{r+=p;}}}r
}
fn boundary_gate()->Result<usize> {
    let generator=G1Affine::generator();let mut cases=vec![G1Affine::zero(),generator,-generator];
    for x in 0..64u64 {
        let x=Fq::from(x);if let Some(y)=(x.square()*x+Fq::ONE).sqrt(){
            let p=G1Affine::new_unchecked(x,y);let torsion=unreduced(p,Fr::MODULUS.as_ref()).into_affine();
            cases.extend([p,-p,torsion,-torsion,(generator.into_group()+torsion).into_affine()]);
            ensure!(by_seed(p.into_group())==unreduced(p,&[9_586_122_913_090_633_729]),"seed chain differs");
            let member=unreduced(generator,&[x.into_bigint().0[0]]).into_affine();cases.push(member);
        }
    }
    let mut off=generator;off.y+=Fq::ONE;cases.push(off);
    let order2=G1Affine::new_unchecked(-Fq::ONE,Fq::ZERO);let order3=G1Affine::new_unchecked(Fq::ZERO,Fq::ONE);cases.extend([order2,order3]);
    ensure!(!reference(&order2) && !reference(&order3),"torsion test invalid");
    // This trap must not become the reference or fast membership implementation.
    ensure!(order3.into_group().mul_bigint(Fr::MODULUS).is_zero() && !fast(&order3),"GLV reduction trap not excluded");
    for p in &cases {
        ensure!(fast(p)==reference(p),"fast/reference subgroup disagreement");
        if p.is_on_curve(){ensure!(reference(p)==unreduced(*p,Fr::MODULUS.as_ref()).is_zero(),"full-order reference differs");}
        let bytes=arithmetic::point_bytes(p);
        ensure!(decode(&bytes,true).is_ok()==decode(&bytes,false).is_ok(),"checked codec acceptance differs");
    }
    let mut wrong_phi=generator.into_group();wrong_phi.x*=GNARK_BETA.square();
    ensure!(-by_seed(by_seed(wrong_phi))!=generator.into_group(),"conjugate-beta negative case invalid");
    for bytes in [vec![0u8;96],vec![255u8;97],{let mut b=vec![255u8;97];b[0]=1;b},{let mut b=vec![0u8;97];b[96]=1;b},{let mut b=vec![0u8;97];b[0]=1;b}] {
        ensure!(decode(&bytes,true).is_err() && decode(&bytes,false).is_err(),"malformed codec accepted");
    }
    Ok(cases.len())
}
#[derive(Serialize)]
struct Selection {operation:String, indices:Vec<usize>}
#[derive(Serialize)]
struct Header {schema:&'static str, files:Vec<FileIdentity>, selection:Vec<Selection>, sample:FileIdentity, points:usize, identities:usize, boundary_cases:usize, preparation_ns:u128, workers:usize, limits:&'static str}
#[derive(Serialize)]
struct Sample {schema:&'static str, path:&'static str, implementation:&'static str, block:usize, warmup:bool, points:usize, wall_ns:u128, all_valid:bool}
#[derive(Serialize)]
struct Complete {schema:&'static str,samples:FileIdentity,checked_points_per_sample:usize,validations:usize}
fn main()->Result<()> {
    ensure!(rayon::current_num_threads()==2,"two workers required");
    let a:Vec<PathBuf>=std::env::args_os().skip(1).map(PathBuf::from).collect();ensure!(a.len()==2,"usage: subgroup OPERANDS NEW_OUTPUT");
    let out=&a[1];ensure!(!out.exists(),"preserve previous sample");fs::create_dir(out)?;
    let start=Instant::now();let boundary_cases=boundary_gate()?;
    let manifest=a[0].join("manifest.json");let m:Manifest=serde_json::from_slice(&fs::read(&manifest)?)?;ensure!(m.operations.len()==5 && m.workers==2,"manifest profile");
    let mut data=Vec::new();let mut selection=Vec::new();let mut files=vec![identify(&manifest)?];
    for name in ["witness","quotient","opening_a","opening_r"] {
        let op=m.operations.iter().find(|o|o.name==name).unwrap();let b=checked(&op.bases)?;ensure!(b.len()==op.count*97 && op.count>=1024,"base shape");files.push(identify(&op.bases.path)?);
        let indices:Vec<_>=(0..1024).map(|i|i*op.count/1024).collect();for &i in &indices {data.extend_from_slice(&b[i*97..(i+1)*97]);}selection.push(Selection{operation:name.into(),indices});
    }
    let points=data.par_chunks_exact(97).map(point).collect::<Result<Vec<_>>>()?;ensure!(points.len()==4096,"sample count");
    let root=Path::new(env!("CARGO_MANIFEST_DIR"));for p in [std::env::current_exe()?,root.join("examples/subgroup.rs"),root.join("examples/gnark_msm.rs"),root.join("Cargo.lock")]{files.push(identify(&p)?);}
    fs::write(out.join("points.bin"),&data)?;let mut log=File::create(out.join("samples.jsonl"))?;
    record(&mut log,&Header{schema:"shieldd.proving_experiment.subgroup_header.v1",files,selection,sample:identify(&out.join("points.bin"))?,points:points.len(),identities:points.iter().filter(|p|p.is_zero()).count(),boundary_cases,preparation_ns:start.elapsed().as_nanos(),workers:2,limits:"Deterministic gnark377 beta and unreduced short seed chains, compared with Arkworks0.6 full-order reference. Equal4096 public bases evenly sampled from four actual key slices. Two warmups and three balanced measured pairs for membership and canonical point decoding+membership. Not a full-key loader, full startup, proving, probabilistic batching or phone measurement; current key/statement association and checked source artifacts remain unchanged."})?;
    let mut validations=0;
    for path in ["membership","checked_decode"] {for block in 0..5 {for use_fast in if block%2==0{[false,true]}else{[true,false]} {
        let start=Instant::now();let valid=if path=="membership" {let results:Vec<_>=points.par_iter().map(|p|if use_fast{fast(black_box(p))}else{reference(black_box(p))}).collect();results.into_iter().all(|x|x)}else{let decoded=data.par_chunks_exact(97).map(|b|decode(black_box(b),use_fast)).collect::<Result<Vec<_>>>()?;decoded==points};let wall_ns=start.elapsed().as_nanos();ensure!(valid,"sample validation failed");validations+=points.len();
        record(&mut log,&Sample{schema:"shieldd.proving_experiment.subgroup_sample.v1",path,implementation:if use_fast{"deterministic_seed"}else{"ark_full_order"},block,warmup:block<2,points:points.len(),wall_ns,all_valid:valid})?;
    }}}
    drop(log);fs::write(out.join("complete.json"),serde_json::to_vec_pretty(&Complete{schema:"shieldd.proving_experiment.subgroup_complete.v1",samples:identify(&out.join("samples.jsonl"))?,checked_points_per_sample:4096,validations})?)?;Ok(())
}
#[cfg(test)]mod tests {use super::*;#[test]fn full_order_torsion_mixed_curve_identity_and_codec_parity(){assert!(boundary_gate().unwrap()>100);}}
