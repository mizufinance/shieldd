//! Actual Transfer polynomial equality and cost gate, without key generation.
#[path = "../src/bridge.rs"] mod bridge;
#[path = "../src/lowering.rs"] mod lowering;
use anyhow::{Result,ensure};
use ark_bls12_377::{Bls12_377,Fr};
use ark_ff::{AdditiveGroup,Field,FftField};
use ark_poly::{EvaluationDomain,Radix2EvaluationDomain,DenseUVPolynomial,univariate::DensePolynomial};
use ark_relations::gr1cs::predicate::polynomial_constraint::SR1CS_PREDICATE_LABEL;
use serde::{Serialize,Deserialize};
use std::{fs,path::PathBuf,sync::Arc,time::Instant,hint::black_box};
use zkpari::ZkPari;
#[derive(Deserialize)]struct Solved{assignment:String,statement:String}
#[derive(Serialize)]struct Sample{scenario:String,block:usize,warmup:bool,method:&'static str,interpolation_ns:u128,quotient_ns:u128,total_ns:u128}
#[derive(Serialize)]struct Report{schema:&'static str,rows:usize,domain:usize,public_column_entries:[usize;2],public_b_entries:usize,public_preparation_ns:u128,public_storage_bytes:usize,coset_preparation_ns:u128,samples:Vec<Sample>,invalid_evaluations_rejected:bool,limits:&'static str}
fn coset_quotient(domain:Radix2EvaluationDomain<Fr>,a:&[Fr],b:&[Fr],inverse:Fr)->Vec<Fr>{
 let mut q=domain.fft(a);let other=domain.fft(b);for(x,y)in q.iter_mut().zip(other){*x=(x.square()-y)*inverse;}domain.ifft_in_place(&mut q);q
}
fn checked_rows(a:&[Fr],b:&[Fr])->Result<()>{ensure!(a.len()==b.len() && a.iter().zip(b).all(|(x,y)|x.square()==*y),"unsatisfied row evaluations");Ok(())}
fn wide_quotient(domain:Radix2EvaluationDomain<Fr>,a:&[Fr],b:&[Fr])->Result<Vec<Fr>>{
 let n=domain.size()/2;let base=Radix2EvaluationDomain::<Fr>::new(n).unwrap();
 let a=DensePolynomial::from_coefficients_vec(a.to_vec());let b=DensePolynomial::from_coefficients_vec(b.to_vec());
 // Exact expression used by the current pinned B prover, including its multiplication implementation.
 let(q,remainder)=(&a*&a-&b).divide_by_vanishing_poly(base);
 ensure!(remainder.coeffs.iter().all(|v|*v==Fr::ZERO),"nonzero remainder");let mut q=q.coeffs;q.resize(n,Fr::ZERO);Ok(q)
}

fn main()->Result<()>{
 let a:Vec<_>=std::env::args().collect();ensure!(a.len()==3,"usage: coset_cost RELATION NEW_OUTPUT");let dir=PathBuf::from(&a[1]);let out=PathBuf::from(&a[2]);ensure!(!out.exists(),"preserve evidence");
 let original=bridge::Relation::read(&dir.join("transfer.r1cs"),serde_json::from_slice(&fs::read(dir.join("metadata.json"))?)?)?;
 let plan=Arc::new(lowering::Lowered::compile(&original));let cs=ZkPari::<Bls12_377>::circuit_to_keygen_cs(lowering::Circuit{relation:plan.clone(),original:None})?;
 let matrices=cs.to_matrices().unwrap()[SR1CS_PREDICATE_LABEL].clone();let n=cs.num_constraints().next_power_of_two();let domain=Radix2EvaluationDomain::<Fr>::new(n).unwrap();let wide=Radix2EvaluationDomain::<Fr>::new(2*n).unwrap();
 let start=Instant::now();let coset=domain.get_coset(Fr::GENERATOR).unwrap();let inverse=(Fr::GENERATOR.pow([n as u64])-Fr::ONE).inverse().unwrap();let coset_preparation_ns=start.elapsed().as_nanos();
 let start=Instant::now();let mut columns=[vec![Fr::ZERO;n],vec![Fr::ZERO;n]];let mut counts=[0;2];let mut public_b_entries=0;
 for(i,row)in matrices[0].iter().enumerate(){for(c,wire)in row{if *wire<2{columns[*wire][i]+=c;counts[*wire]+=1;}}}
 for row in &matrices[1]{public_b_entries+=row.iter().filter(|(_,i)|*i<2).count();}
 for c in &mut columns{domain.ifft_in_place(c);}let public_preparation_ns=start.elapsed().as_nanos();
 let mut report=Report{schema:"shieldd.proving_experiment.coset_cost.v1",rows:cs.num_constraints(),domain:n,public_column_entries:counts,public_b_entries,public_preparation_ns,public_storage_bytes:2*n*32,coset_preparation_ns,samples:vec![],invalid_evaluations_rejected:true,limits:"Actual full Transfer assignments and exact coefficient parity for old/optimized interpolation and quotient paths. Includes O(N) on-domain satisfaction check for coset method; no key, proof, or complete API result. Three warmups plus five measured balanced blocks per scenario. Prepared public columns bind this complete checked relation."};
 for name in["transfer","transfer_unregulated","transfer_flagged","transfer_accumulating","transfer_over_limit_disclosure","transfer_accumulator_continuation"]{
  let solved:Solved=serde_json::from_slice(&fs::read(dir.join(format!("{name}.json")))?)?;let values=bridge::assignment(&solved.assignment,&original,&solved.statement)?;let mut full=values[..2].to_vec();full.extend(plan.witness(&values)?);
  let mut eval=[vec![Fr::ZERO;n],vec![Fr::ZERO;n],vec![Fr::ZERO;n]];
  for(i,row)in matrices[0].iter().enumerate(){for(c,j)in row{eval[0][i]+=*c*full[*j];if *j>=2{eval[2][i]+=*c*full[*j];}}}
  for(i,row)in matrices[1].iter().enumerate(){eval[1][i]=row.iter().map(|(c,j)|*c*full[*j]).sum();}checked_rows(&eval[0],&eval[1])?;
  let ahat=domain.ifft(&eval[0]);let bhat=domain.ifft(&eval[1]);let what=domain.ifft(&eval[2]);let reference=wide_quotient(wide,&ahat,&bhat)?;
  ensure!(coset_quotient(coset,&ahat,&bhat,inverse)==reference,"exact quotient mismatch");
  for boundary in[0,matrices[0].len()-1,n-1]{let mut bad=eval[1].clone();bad[boundary]+=Fr::ONE;ensure!(checked_rows(&eval[0],&bad).is_err(),"bad row accepted");}
  for block in 0..8{for method in if block%2==0{["current","public_prepared_coset"]}else{["public_prepared_coset","current"]}{
   let start=Instant::now();if method!="current"{checked_rows(&eval[0],&eval[1])?;}
   let aa=domain.ifft(&eval[0]);let bb=domain.ifft(&eval[1]);let ww=if method=="current"{domain.ifft(&eval[2])}else{aa.iter().enumerate().map(|(i,a)|*a-columns[0][i]*full[0]-columns[1][i]*full[1]).collect::<Vec<_>>()};let interpolation_ns=start.elapsed().as_nanos();
   let start_q=Instant::now();let q=if method=="current"{wide_quotient(wide,&aa,&bb)?}else{coset_quotient(coset,&aa,&bb,inverse)};let quotient_ns=start_q.elapsed().as_nanos();let total_ns=start.elapsed().as_nanos();
   ensure!(ww==what && q==reference,"sample polynomial mismatch");black_box((aa,bb,ww,q));report.samples.push(Sample{scenario:name.into(),block,warmup:block<3,method,interpolation_ns,quotient_ns,total_ns});
  }}
  eprintln!("{name}: exact polynomial parity, all boundary negatives and samples passed");
 }
 fs::write(out,serde_json::to_vec_pretty(&report)?)?;Ok(())
}
