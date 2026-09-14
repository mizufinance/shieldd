//! Same-key full API proof equality and bounded attribution for prepared polynomial work.
use anyhow::{Result,ensure};
use commonware_cryptography::{bls12381::primitives::group::{G1,Scalar},zk::pari};
use commonware_math::algebra::{Ring,Space};
use commonware_parallel::Rayon;
use rand::{SeedableRng,rngs::StdRng};
use serde::Serialize;
use shieldd_native_comparator34_experiment::{api::{Prover,RequestTimings},witness_codec};
use std::{fs,path::PathBuf,time::Instant,num::NonZeroUsize};
#[derive(Serialize)]struct Sample{scenario:String,phase:&'static str,block:usize,method:&'static str,wall_ns:u128,timings:RequestTimings,verified:bool}
#[derive(Serialize)]struct Report{schema:&'static str,initialization:shieldd_native_comparator34_experiment::api::Initialization,samples:Vec<Sample>,paired_proof_equality:usize,invalid_witness_rejected:bool,limits:&'static str}
fn main()->Result<()>{
 let a:Vec<_>=std::env::args().collect();ensure!(a.len()==4,"usage: polynomial_gate KEY WITNESSES NEW_OUTPUT");let key=PathBuf::from(&a[1]);let inputs=PathBuf::from(&a[2]);let out=PathBuf::from(&a[3]);ensure!(!out.exists(),"preserve evidence");fs::create_dir(&out)?;
 let standard=fs::read(inputs.join("transfer.witness"))?;let(prover,initialization)=Prover::new(&standard,&key)?;let strategy=Rayon::new(NonZeroUsize::new(2).unwrap())?;
 let mut report=Report{schema:"shieldd.native_experiment.polynomial_api_gate.v1",initialization,samples:vec![],paired_proof_equality:0,invalid_witness_rejected:false,limits:"Same checked key and full affine circuit; current and optimized polynomial paths share ordinary G1 MSM. Complete witness API includes solving and mapping; reference path retains diagnostic stage clocks. Six paired-randomness proof equalities are correctness checks, not corpus entries. Three warmups and five fresh measured pairs are bounded attribution, not the final combined-backend matrix."};
 for scenario in ["transfer","transfer_unregulated","transfer_flagged","transfer_accumulating","transfer_over_limit_disclosure","transfer_accumulator_continuation"]{
  let payload=fs::read(inputs.join(format!("{scenario}.witness")))?;let seed=rand::random::<[u8;32]>();let mut proofs=vec![];
  for method in["current","prepared_coset"]{
   let mut rng=StdRng::from_seed(seed);let start=Instant::now();let output=if method=="current"{prover.profile_with_rng(&payload,&mut rng,pari::QuotientMethod::Square)?}else{prover.prove_with_msm(&payload,&mut rng,&mut|b,s|Ok(G1::msm(b,s,&strategy)))?};let wall_ns=start.elapsed().as_nanos();
   ensure!(prover.verify(&output.bytes,&payload)?,"valid proof rejected");let expected=witness_codec::decode(&payload)?.claimed_statement;
   ensure!(!prover.verify_statement(&output.bytes,&(expected+&Scalar::one())).unwrap_or(false),"changed statement accepted");ensure!(!prover.verify(&output.bytes[..output.bytes.len()-1],&payload).unwrap_or(false),"truncated proof accepted");
   fs::write(out.join(format!("{scenario}-{method}.proof")),&output.bytes)?;proofs.push(output.bytes);report.samples.push(Sample{scenario:scenario.into(),phase:"gate",block:0,method,wall_ns,timings:output.timings,verified:true});
  }
  ensure!(proofs[0]==proofs[1],"paired-randomness full proof bytes differ");report.paired_proof_equality+=1;eprintln!("{scenario}: identical full proofs and negative checks passed");
 }
 let bad=fs::read(inputs.join("invalid.witness"))?;ensure!(prover.prove_with_msm(&bad,&mut rand::rng(),&mut|b,s|Ok(G1::msm(b,s,&strategy))).is_err(),"invalid witness accepted");report.invalid_witness_rejected=true;
 for block in 0..8{for method in if block%2==0{["current","prepared_coset"]}else{["prepared_coset","current"]}{
  let mut rng=rand::rng();let start=Instant::now();let output=if method=="current"{prover.profile_with_rng(&standard,&mut rng,pari::QuotientMethod::Square)?}else{prover.prove_with_msm(&standard,&mut rng,&mut|b,s|Ok(G1::msm(b,s,&strategy)))?};let wall_ns=start.elapsed().as_nanos();ensure!(prover.verify(&output.bytes,&standard)?,"sample proof rejected");fs::write(out.join(format!("sample-{block}-{method}.proof")),&output.bytes)?;report.samples.push(Sample{scenario:"transfer".into(),phase:if block<3{"warmup"}else{"sample"},block,method,wall_ns,timings:output.timings,verified:true});
 }}
 fs::write(out.join("complete.json"),serde_json::to_vec_pretty(&report)?)?;Ok(())
}
