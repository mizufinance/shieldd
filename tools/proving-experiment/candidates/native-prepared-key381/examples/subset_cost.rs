use anyhow::{Result,ensure};
use commonware_cryptography::{bls12381::primitives::group::Scalar,zk::{circuit::{build,build_with_values},pari}};
use commonware_math::algebra::{Additive,Random};
use serde::Serialize;
use shieldd_native_prepared_key381_experiment::{hash::Parameters,map::Generators,transfer,witness_codec};
use std::{fs,path::PathBuf,};
#[derive(Serialize)]struct Sample{scenario:String,variant:&'static str,block:usize,measured:bool,ns:u128}
#[derive(Serialize)]struct Report{schema:&'static str,relation:String,reference_relation:String,rows:usize,columns:usize,retained:usize,fft:usize,subset_preparation_ns:u128,reference_preparation_ns:u128,gates:usize,samples:Vec<Sample>,limits:&'static str}
fn main()->Result<()>{
 let args:Vec<_>=std::env::args().collect();ensure!(args.len()==3,"usage: subset_cost WITNESSES NEW_OUTPUT");let inputs=PathBuf::from(&args[1]);let out=PathBuf::from(&args[2]);ensure!(!out.exists(),"preserve evidence");
 let params=Parameters::load()?;let generators=Generators::derive(&params);let template=witness_codec::decode(&fs::read(inputs.join("transfer.witness"))?)?;
 let(c,selected)=build(|ctx|transfer::constrain(ctx,&params,&generators,&template));let layout=pari::InputLayout::new(vec![selected[0]],vec![vec![selected[1]]])?;let relation=pari::Relation::compile(&c,&layout)?;drop(c);drop(template);
 let reference_relation=hex::encode(relation.reference_digest(&layout)?);
 ensure!(relation.constraint_count()==191516 && relation.variable_count()==191501 && relation.domain_size()==196608 && hex::encode(relation.digest())=="722fba7093a6188bba83708f0abe409a39cf34fa4451b95594e82781b68f3783","wrong native relation");
 let screen=pari::PolynomialScreen::new(&relation)?;
 let mut report=Report{schema:"shieldd.native_subset.polynomial_screen.v1",relation:hex::encode(relation.digest()),reference_relation,rows:relation.constraint_count(),columns:relation.variable_count(),retained:relation.domain_size(),fft:262144,subset_preparation_ns:screen.subset_preparation_ns,reference_preparation_ns:screen.reference_preparation_ns,gates:0,samples:vec![],limits:"Actual six affine Transfer assignments. Polynomial stage only: row evaluation/checks, prepared public combination, interpolation, coset quotient, complete A/B masks and both openings. Reference is the existing full-FFT prepared algorithm on identical unpadded rows/columns. No timing samples; independent masked product/division and public-column oracle outside timing. No subset key/proof/full API claim."};
 let mut rng=rand::rng();
 for scenario in["transfer","transfer_unregulated","transfer_flagged","transfer_accumulating","transfer_over_limit_disclosure","transfer_accumulator_continuation"]{
  let payload=fs::read(inputs.join(format!("{scenario}.witness")))?;let witness=witness_codec::decode(&payload)?;let(valued,_)=build_with_values(|ctx|transfer::constrain(ctx,&params,&generators,&witness));ensure!(valued.is_satisfied(),"original circuit failure");
  let w=relation.witness_prepared(&valued,&layout,vec![pari::Opening::random(&mut rng)])?;drop(valued);drop(witness);ensure!(relation.check_witness(&w),"converted circuit failure");
  let domain=pari::SubsetDomain::new(relation.domain_size())?;let point=loop{let x=Scalar::random(&mut rng);if domain.evaluate_vanishing(&x)!=Scalar::zero(){break x}};
  let eta=[Scalar::random(&mut rng),Scalar::random(&mut rng)];screen.validate(&relation,&w,eta.clone(),&point)?;report.gates+=1;
  eprintln!("{scenario}: original/converted, complete masked quotient and public-column gates passed");
 }
 let invalid=witness_codec::decode(&fs::read(inputs.join("invalid.witness"))?)?;let(valued,_)=build_with_values(|ctx|transfer::constrain(ctx,&params,&generators,&invalid));let bad=relation.witness_prepared(&valued,&layout,vec![pari::Opening::random(&mut rng)])?;
 ensure!(!valued.is_satisfied() && !relation.check_witness(&bad),"invalid witness accepted");
 ensure!(screen.work(&relation,&bad,true,[Scalar::random(&mut rng),Scalar::random(&mut rng)],&Scalar::random(&mut rng)).is_err(),"polynomial boundary accepted invalid rows");
 fs::write(out,serde_json::to_vec_pretty(&report)?)?;Ok(())
}
