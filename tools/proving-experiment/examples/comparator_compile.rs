//! Full Transfer relation gate for the strict comparator candidate; no keys.
#[path = "../src/bridge.rs"]
mod bridge;
#[path = "../src/lowering.rs"]
mod lowering;
use anyhow::{ensure, Result};
use ark_bls12_377::{Bls12_377, Fr};
use ark_ff::Field;
use ark_poly::{EvaluationDomain, GeneralEvaluationDomain};
use ark_relations::gr1cs::predicate::polynomial_constraint::SR1CS_PREDICATE_LABEL;
use serde::{Deserialize, Serialize};
use std::{fs, path::PathBuf, sync::Arc, time::Instant};
use zkpari::ZkPari;
#[derive(Deserialize)]
struct Solved { assignment: String, statement: String }
#[derive(Serialize)]
struct Gate { scenario: String, validation_ns: u128, witness_wires: usize, wrong_constant_rejected: bool, wrong_statement_rejected: bool, wrong_witness_rejected: bool }
#[derive(Serialize)]
struct Report { schema: &'static str, original_constraints: usize, original_wires: usize, lowered_body_rows: usize, converted_rows: usize, domain: usize, preparation_ns: u128, counts: lowering::Counts, gates: Vec<Gate>, limits: &'static str }
fn main() -> Result<()> {
 let dir=PathBuf::from(std::env::args().nth(1).expect("relation directory"));
 ensure!(!dir.join("lowering.json").exists(),"preserve completed evidence");
 let meta=serde_json::from_slice(&fs::read(dir.join("metadata.json"))?)?;
 let original=bridge::Relation::read(&dir.join("transfer.r1cs"),meta)?;
 let start=Instant::now();
 let plan=Arc::new(lowering::Lowered::compile(&original));
 let cs=ZkPari::<Bls12_377>::circuit_to_keygen_cs(lowering::Circuit{relation:plan.clone(),original:None})?;
 let matrices=cs.to_matrices().expect("matrices")[SR1CS_PREDICATE_LABEL].clone();
 let rows=matrices[0].len();
 let domain=GeneralEvaluationDomain::<Fr>::new(rows).expect("domain").size();
 let preparation_ns=start.elapsed().as_nanos();
 let mut gates=Vec::new();
 for name in ["transfer","transfer_unregulated","transfer_flagged","transfer_accumulating","transfer_over_limit_disclosure","transfer_accumulator_continuation"] {
  let solved:Solved=serde_json::from_slice(&fs::read(dir.join(format!("{name}.json")))?)?;
  let start=Instant::now();
  let values=bridge::assignment(&solved.assignment,&original,&solved.statement)?;
  original.validate(&values)?; plan.validate(&values)?;
  let converted=ZkPari::<Bls12_377>::circuit_to_prover_cs(lowering::Circuit{relation:plan.clone(),original:Some(Arc::new(values.clone()))})?;
  ensure!(converted.is_satisfied()?,"converted relation rejected");
  let expected=plan.witness(&values)?;
  ensure!(converted.assignments.witness_assignment==expected,"mapping mismatch");
  ensure!(converted.assignments.instance_assignment==values[..2],"public mapping mismatch");
  for index in [0,1,2] {
   let mut bad=values.clone();bad[index]+=Fr::ONE;
   ensure!(original.validate(&bad).is_err(),"original mutation {index} accepted");
   ensure!(plan.validate(&bad).is_err(),"lowered mutation {index} accepted");
  }
  gates.push(Gate{scenario:name.into(),validation_ns:start.elapsed().as_nanos(),witness_wires:expected.len(),wrong_constant_rejected:true,wrong_statement_rejected:true,wrong_witness_rejected:true});
  eprintln!("{name}: original/converted/mapping and negatives passed");
 }
 let report=Report{schema:"shieldd.proving_experiment.comparator_lowering.v1",original_constraints:original.metadata.constraints,original_wires:original.metadata.wires(),lowered_body_rows:plan.body_rows(),converted_rows:rows,domain,preparation_ns,counts:plan.counts.clone(),gates,limits:"Compile/solve relation evidence only; no key generation, proof or full-API speed claim."};
 fs::write(dir.join("lowering.json"),serde_json::to_vec_pretty(&report)?)?;Ok(())
}
