#![forbid(unsafe_code)]
use anyhow::{ensure,Result};
use commonware_codec::Encode;
use commonware_cryptography::bls12381::primitives::group::{G1,PreparedG1Msm,Scalar};
use commonware_math::algebra::{Additive,Ring,Space};
use commonware_parallel::Rayon;
use rand::{SeedableRng,rngs::StdRng};
use serde::{Deserialize,Serialize};
use sha2::{Digest,Sha256};
use shieldd_native_prepared_key381_experiment::{api::Prover,witness_codec};
use std::{fs,path::{Path,PathBuf},num::NonZeroUsize,time::Instant,collections::BTreeMap};
#[derive(Serialize,Deserialize)]struct Identity{path:PathBuf,sha256:String}
fn hash(bytes:&[u8])->String{hex::encode(Sha256::digest(bytes))}
fn identity(path:&Path)->Result<Identity>{Ok(Identity{path:path.canonicalize()?,sha256:hash(&fs::read(path)?)})}
#[derive(Deserialize)]struct Source{files:BTreeMap<String,String>,artifacts:BTreeMap<String,String>}
#[derive(Serialize)]struct Operation{name:&'static str,count:usize,parts:Vec<usize>,identity_bases:usize,bases:Identity,scalars:Identity,expected:Identity}
#[derive(Serialize)]struct Gates{verified_capture_proof:bool,verified_combined_proof:bool,paired_proof_equal:bool,changed_statement_rejected:bool,truncated_proof_rejected:bool,invalid_witness_rejected:bool}
#[derive(Serialize)]struct Manifest{schema:&'static str,curve:&'static str,workers:usize,source:Identity,key:Identity,witness:Identity,proof:Identity,relation_digest:&'static str,capture_wall_ns:u128,gates:Gates,operations:Vec<Operation>}
struct Captured{bases:Vec<G1>,scalars:Vec<Scalar>,expected:G1}
fn main()->Result<()>{
 let args:Vec<_>=std::env::args_os().skip(1).map(PathBuf::from).collect();ensure!(args.len()==4,"OUTPUT KEY WITNESS SOURCE_IDENTITY");
 let(out,key,witness,source)=(&args[0],&args[1],&args[2],&args[3]);ensure!(!out.exists(),"preserve outputs");
 let src:Source=serde_json::from_slice(&fs::read(source)?)?;
 for(path,h)in &src.files{ensure!(hash(&fs::read(path)?)==*h,"changed source {path}");}
 for(path,h)in &src.artifacts{ensure!(hash(&fs::read(source.parent().unwrap().join(path))?)==*h,"changed artifact {path}");}
 let key_id=identity(key)?;ensure!(key_id.sha256=="e16f65551b74cd1d14e231adc9df17f441c06942c2d1fc0516cad2d4f56e40d5","wrong selected key");
 let payload=fs::read(witness)?;let claimed=witness_codec::decode(&payload)?.claimed_statement;
 let(prover,_)=Prover::new(&payload,key)?;let strategy=Rayon::new(NonZeroUsize::new(2).unwrap())?;
 let seed=rand::random::<[u8;32]>();let mut captured=Vec::new();let start=Instant::now();
 let proof=prover.prove_with_msm(&payload,&mut StdRng::from_seed(seed),&mut|b,s|{
  let expected=G1::msm(b,s,&strategy);captured.push(Captured{bases:b.to_vec(),scalars:s.to_vec(),expected});Ok(expected)
 })?;let capture_wall_ns=start.elapsed().as_nanos();
 ensure!(captured.len()==5&&prover.verify(&proof.bytes,&payload)?,"capture proof or schedule");
 let mut combined=Vec::new();
 for(a,b)in [(0,2),(3,4)]{
  let actual=PreparedG1Msm::new(&[&captured[a].bases,&captured[b].bases]).msm(&[&captured[a].scalars,&captured[b].scalars],&strategy).map_err(anyhow::Error::msg)?;
  ensure!(actual==captured[a].expected+&captured[b].expected,"combined arithmetic mismatch");combined.push(actual);
 }
 let mut calls=0;let second=prover.prove_with_msm(&payload,&mut StdRng::from_seed(seed),&mut|b,s|{
  let i=calls;calls+=1;if i>=5||b!=captured[i].bases||s!=captured[i].scalars{return Err(commonware_cryptography::zk::pari::Error::RelationMismatch);}
  Ok(match i{0|3=>G1::zero(),1=>captured[1].expected,2=>combined[0],4=>combined[1],_=>unreachable!()})
 })?;
 ensure!(calls==5&&second.bytes==proof.bytes&&prover.verify(&second.bytes,&payload)?,"combined proof mismatch");
 ensure!(!prover.verify_statement(&proof.bytes,&(claimed+&Scalar::one())).unwrap_or(false),"changed statement accepted");
 ensure!(!prover.verify(&proof.bytes[..proof.bytes.len()-1],&payload).unwrap_or(false),"truncated proof accepted");
 let invalid=fs::read(witness.parent().unwrap().join("invalid.witness"))?;ensure!(prover.prove(&invalid).is_err(),"invalid witness accepted");
 fs::create_dir(out)?;let proof_path=out.join("capture.proof");fs::write(&proof_path,&proof.bytes)?;
 let mut operations=Vec::new();
 for(group,(name,a,b))in [("commitment",0,2),("opening",3,4)].into_iter().enumerate(){
  let bases:Vec<_>=captured[a].bases.iter().chain(&captured[b].bases).collect();let scalars:Vec<_>=captured[a].scalars.iter().chain(&captured[b].scalars).collect();ensure!(bases.len()==scalars.len(),"paired lengths");
  let base_path=out.join(format!("{name}.bases"));let scalar_path=out.join(format!("{name}.scalars"));let expected_path=out.join(format!("{name}.expected"));
  let mut bytes=Vec::with_capacity(48*bases.len());for p in &bases{bytes.extend_from_slice(&p.encode());}fs::write(&base_path,bytes)?;
  let mut bytes=Vec::with_capacity(32*scalars.len());for p in &scalars{bytes.extend_from_slice(&p.encode());}fs::write(&scalar_path,bytes)?;fs::write(&expected_path,combined[group].encode())?;
  operations.push(Operation{name,count:bases.len(),parts:vec![captured[a].bases.len(),captured[b].bases.len()],identity_bases:bases.iter().filter(|p|***p==G1::zero()).count(),bases:identity(&base_path)?,scalars:identity(&scalar_path)?,expected:identity(&expected_path)?});
 }
 let manifest=Manifest{schema:"shieldd.native_current_combined_operands.v1",curve:"bls12_381",workers:2,source:identity(source)?,key:key_id,witness:identity(witness)?,proof:identity(&proof_path)?,relation_digest:"722fba7093a6188bba83708f0abe409a39cf34fa4451b95594e82781b68f3783",capture_wall_ns,gates:Gates{verified_capture_proof:true,verified_combined_proof:true,paired_proof_equal:true,changed_statement_rejected:true,truncated_proof_rejected:true,invalid_witness_rejected:true},operations};
 fs::write(out.join("manifest.json"),serde_json::to_vec_pretty(&manifest)?)?;
 println!("{}",serde_json::to_string(&manifest)?);Ok(())
}
