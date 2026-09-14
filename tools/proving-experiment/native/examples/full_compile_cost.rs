//! Full relation correctness and warm witness costs, without setup or proof timing.
use anyhow::{Result,ensure};
use commonware_cryptography::zk::{circuit::{build,build_with_values},pari};
use commonware_math::algebra::{Additive,Ring};
use commonware_cryptography::bls12381::primitives::group::Scalar;
use serde::Serialize;
use shieldd_native_proving_experiment::{hash::Parameters,map::Generators,transfer,witness_codec};
use std::{fs,path::PathBuf,time::Instant};
#[derive(Serialize)]
struct Sample { scenario:String, sample:usize, warmup:bool, checked_decode_ns:u128, construction_solving_ns:u128, assignment_mapping_ns:u128, original_satisfied:bool, converted_satisfied:bool }
#[derive(Serialize)]
struct Report { schema:&'static str, relation:String, rows:usize, columns:usize, domain:usize, compilation_ns:u128, samples:Vec<Sample>, negatives_rejected:usize, limits:&'static str }
fn main()->Result<()> {
 let args:Vec<_>=std::env::args().collect();ensure!(args.len()==3,"usage: full_compile_cost WITNESSES OUTPUT");
 let input=PathBuf::from(&args[1]);let output=PathBuf::from(&args[2]);ensure!(!output.exists(),"preserve completed evidence");
 let p=Parameters::load()?;let g=Generators::derive(&p);
 let first=witness_codec::decode(&fs::read(input.join("transfer.witness"))?)?;
 let start=Instant::now();let(c,selected)=build(|ctx|transfer::constrain(ctx,&p,&g,&first));
 let layout=pari::InputLayout::new(vec![selected[0]],vec![vec![selected[1]]])?;
 let relation=pari::Relation::compile(&c,&layout)?;let compilation_ns=start.elapsed().as_nanos();
 ensure!(relation.constraint_count()==232683 && hex::encode(relation.digest())=="c266ae6a5ab86caa5d6eb417e0870bcfb34c05f27b15715f36d6011d87126851", "wrong extended baseline binary/relation");
 let mut rng=rand::rng();let mut samples=Vec::new();
 for name in ["transfer","transfer_unregulated","transfer_flagged","transfer_accumulating","transfer_over_limit_disclosure","transfer_accumulator_continuation"] {
  let payload=fs::read(input.join(format!("{name}.witness")))?;
  for sample in 0..7 {
   let start=Instant::now();let w=witness_codec::decode(&payload)?;let checked_decode_ns=start.elapsed().as_nanos();
   let start=Instant::now();let(valued,_)=build_with_values(|ctx|transfer::constrain(ctx,&p,&g,&w));let construction_solving_ns=start.elapsed().as_nanos();
   let start=Instant::now();let converted=relation.witness_prepared(&valued,&layout,vec![pari::Opening::random(&mut rng)])?;let assignment_mapping_ns=start.elapsed().as_nanos();
   ensure!(valued.is_satisfied() && relation.check_witness(&converted),"{name} invalid");
   if sample==0 {
    let checked=relation.witness(&valued,&layout,vec![pari::Opening::random(&mut rng)])?;
    ensure!(relation.check_witness(&checked),"recompiled relation or layout changed");
   }
   samples.push(Sample{scenario:name.into(),sample,warmup:sample<2,checked_decode_ns,construction_solving_ns,assignment_mapping_ns,original_satisfied:true,converted_satisfied:true});
  }
  eprintln!("{name}: full original/converted relation and witness samples passed");
 }
 for choice in 0..3 {
  let mut bad=first.clone();match choice {0=>bad.claimed_statement+=&Scalar::one(),1=>bad.nonce_root+=&Scalar::one(),_=>bad.auth.nk+=&Scalar::one()}
  let(valued,_)=build_with_values(|ctx|transfer::constrain(ctx,&p,&g,&bad));
  let converted=relation.witness_prepared(&valued,&layout,vec![pari::Opening::random(&mut rng)])?;
  ensure!(!valued.is_satisfied() && !relation.check_witness(&converted),"mutation accepted");
 }
 let report=Report{schema:"shieldd.native_experiment.full_compile_cost.v1",relation:hex::encode(relation.digest()),rows:relation.constraint_count(),columns:relation.variable_count(),domain:relation.domain_size(),compilation_ns,samples,negatives_rejected:3,limits:"Full compile/solve and checked witness preparation only; no key or proof. Five measured warm samples per scenario are diagnostic."};
 fs::write(output,serde_json::to_vec_pretty(&report)?)?;Ok(())
}
