use anyhow::{Result, ensure};
use serde::{Deserialize, Serialize};
use sha2::{Digest, Sha256};
use std::{fs, io::{self, BufRead, Write}, path::Path, time::Instant};

#[derive(Deserialize)]
pub struct Identity { pub path: String, pub sha256: String }
#[derive(Deserialize)]
pub struct Operation { pub name:String, pub count:usize, pub bases:Identity, pub scalars:Identity, pub expected:Identity }
#[derive(Deserialize)]
struct Manifest { schema:String, curve:String, workers:usize, proof:Identity, operations:Vec<Operation> }
pub fn hash(bytes:&[u8])->String{hex::encode(Sha256::digest(bytes))}
pub fn checked(id:&Identity)->Result<Vec<u8>>{let bytes=fs::read(&id.path)?;ensure!(hash(&bytes)==id.sha256,"changed input {}",id.path);Ok(bytes)}
pub fn load(path:&Path)->Result<(Operation,Vec<u8>,Vec<u8>)>{
 let bytes=fs::read(path)?;ensure!(hash(&bytes)=="3fbf8283e1333fcfcae1f3449977240a56684878f1db71a338edc3ca74f4faab","wrong historical operand manifest");
 let manifest:Manifest=serde_json::from_slice(&bytes)?;
 ensure!(manifest.schema=="shieldd.native_experiment.gnark381_operands.v1"&&manifest.curve=="bls12_381"&&manifest.workers==2,"wrong curve/schema/workers");
 checked(&manifest.proof)?;
 let op=manifest.operations.into_iter().find(|v|v.name=="opening_r").ok_or_else(||anyhow::anyhow!("missing opening"))?;
 ensure!(op.count==524290,"unexpected operation size");
 let bases=checked(&op.bases)?;let expected=checked(&op.expected)?;
 ensure!(bases.len()==op.count*48 && expected.len()==48,"point byte count");
 Ok((op,bases,expected))
}
#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct Command {op:String}
#[derive(Serialize)]
pub struct Response {pub stage:&'static str,pub backend:&'static str,pub wall_ns:u128,pub kernel_ns:u128,pub point_hex:String,pub rejected:bool,pub error:Option<String>}
pub fn emit(value:&impl Serialize)->Result<()>{let mut out=io::stdout().lock();serde_json::to_writer(&mut out,value)?;out.write_all(b"\n")?;out.flush()?;Ok(())}
pub fn serve(backend:&'static str,op:&Operation,expected:&[u8],mut compute:impl FnMut(&[u8])->Result<(Vec<u8>,u128)>)->Result<()>{
 for line in io::stdin().lock().lines(){
  let line=line?;ensure!(line.len()<256,"command too long");let command:Command=serde_json::from_str(&line)?;
  ensure!(["msm","invalid_scalar","wrong_count"].contains(&command.op.as_str()),"unknown command");
  let start=Instant::now();let mut bytes=checked(&op.scalars)?;ensure!(bytes.len()==32*op.count,"scalar source length");
  if command.op=="invalid_scalar"{bytes[..32].fill(255);}
  if command.op=="wrong_count"{bytes.pop();}
  let result=compute(&bytes);
  let response=match result {
   Ok((point,kernel_ns))=>{ensure!(command.op=="msm"&&point==expected,"incorrect MSM/negative accepted");Response{stage:"msm",backend,wall_ns:start.elapsed().as_nanos(),kernel_ns,point_hex:hex::encode(point),rejected:false,error:None}},
   Err(error)=>{ensure!(command.op!="msm","actual MSM failed: {error}");Response{stage:"negative",backend,wall_ns:start.elapsed().as_nanos(),kernel_ns:0,point_hex:String::new(),rejected:true,error:Some(error.to_string())}},
  };
  emit(&response)?;
 }
 Ok(())
}
