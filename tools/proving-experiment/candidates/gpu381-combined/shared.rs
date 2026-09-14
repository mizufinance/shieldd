use anyhow::{Result, ensure};
use serde::{Deserialize, Serialize};
use sha2::{Digest, Sha256};
use std::{fs, io::{self, BufRead, Write}, path::Path, time::Instant};

#[derive(Deserialize)]
pub struct Identity { pub path: String, pub sha256: String }
#[derive(Deserialize)]
pub struct Operation { pub name:String, pub count:usize, pub parts:Vec<usize>, pub identity_bases:usize, pub bases:Identity, pub scalars:Identity, pub expected:Identity }
#[derive(Deserialize)]struct Gates{verified_capture_proof:bool,verified_combined_proof:bool,paired_proof_equal:bool,changed_statement_rejected:bool,truncated_proof_rejected:bool,invalid_witness_rejected:bool}
#[derive(Deserialize)]struct Manifest{schema:String,curve:String,workers:usize,proof:Identity,key:Identity,witness:Identity,source:Identity,relation_digest:String,gates:Gates,operations:Vec<Operation>}
pub fn hash(bytes:&[u8])->String{hex::encode(Sha256::digest(bytes))}
pub fn checked(id:&Identity)->Result<Vec<u8>>{let bytes=fs::read(&id.path)?;ensure!(hash(&bytes)==id.sha256,"changed input {}",id.path);Ok(bytes)}
pub fn load(path:&Path)->Result<Vec<Operation>>{
 let bytes=fs::read(path)?;ensure!(hash(&bytes)=="d54c705052aa1a30e15d2b85f71b1318b759f600abfcb459fbc544d9e9055d4e","wrong current operand manifest");
 let m:Manifest=serde_json::from_slice(&bytes)?;
 ensure!(m.schema=="shieldd.native_current_combined_operands.v1"&&m.curve=="bls12_381"&&m.workers==2,"schema/curve/workers");
 ensure!(m.relation_digest=="722fba7093a6188bba83708f0abe409a39cf34fa4451b95594e82781b68f3783","wrong relation");
 ensure!(m.gates.verified_capture_proof&&m.gates.verified_combined_proof&&m.gates.paired_proof_equal&&m.gates.changed_statement_rejected&&m.gates.truncated_proof_rejected&&m.gates.invalid_witness_rejected,"capture gates");
 for id in [&m.proof,&m.key,&m.witness,&m.source]{checked(id)?;}
 ensure!(m.operations.len()==2,"operation count");
 for(op,(name,parts))in m.operations.iter().zip([("commitment",[196605,196611]),("opening",[196609,393218])]){ensure!(op.name==name&&op.parts==parts&&op.count==parts.iter().sum::<usize>()&&op.identity_bases<=op.count,"operation shape");}
 Ok(m.operations)
}
#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct Command {op:String,operation:String}
#[derive(Serialize)]
pub struct Response {pub stage:&'static str,pub backend:&'static str,pub operation:String,pub wall_ns:u128,pub kernel_ns:u128,pub point_hex:String,pub rejected:bool,pub error:Option<String>}
pub fn emit(value:&impl Serialize)->Result<()>{let mut out=io::stdout().lock();serde_json::to_writer(&mut out,value)?;out.write_all(b"\n")?;out.flush()?;Ok(())}
pub fn serve(backend:&'static str,operations:&[Operation],mut compute:impl FnMut(usize,&[u8])->Result<(Vec<u8>,u128)>)->Result<()>{
 for line in io::stdin().lock().lines(){
  let line=line?;ensure!(line.len()<256,"command too long");let command:Command=serde_json::from_str(&line)?;
  ensure!(["msm","invalid_scalar","wrong_count"].contains(&command.op.as_str()),"unknown command");
  let index=operations.iter().position(|v|v.name==command.operation).ok_or_else(||anyhow::anyhow!("unknown operation"))?;let op=&operations[index];let expected=checked(&op.expected)?;ensure!(expected.len()==48,"expected result size");
  let start=Instant::now();let mut bytes=checked(&op.scalars)?;ensure!(bytes.len()==32*op.count,"scalar source length");
  if command.op=="invalid_scalar"{bytes[..32].fill(255);}
  if command.op=="wrong_count"{bytes.pop();}
  let result=compute(index,&bytes);
  let response=match result {
   Ok((point,kernel_ns))=>{ensure!(command.op=="msm"&&point==expected,"incorrect MSM/negative accepted");Response{stage:"msm",backend,operation:op.name.clone(),wall_ns:start.elapsed().as_nanos(),kernel_ns,point_hex:hex::encode(point),rejected:false,error:None}},
   Err(error)=>{ensure!(command.op!="msm","actual MSM failed: {error}");Response{stage:"negative",backend,operation:op.name.clone(),wall_ns:start.elapsed().as_nanos(),kernel_ns:0,point_hex:String::new(),rejected:true,error:Some(error.to_string())}},
  };
  emit(&response)?;
 }
 Ok(())
}
