#![forbid(unsafe_code)]
#[path="../../gpu381-combined/shared.rs"]mod shared;
use anyhow::{Result,ensure};
use commonware_codec::{Read,ReadExt,Encode};
use commonware_cryptography::bls12381::primitives::group::{G1,Scalar,ScalarReadCfg,PreparedG1Msm};
use commonware_parallel::Rayon;
use std::{path::PathBuf,num::NonZeroUsize,time::Instant};
use serde::Serialize;
#[derive(Serialize)]struct Prepared{operation:String,preparation_ns:u128,resident_bytes:usize,points:usize}
#[derive(Serialize)]struct Ready{stage:&'static str,backend:&'static str,initialization_ns:u128,prepared:Vec<Prepared>}
fn main()->Result<()>{
 let args:Vec<_>=std::env::args_os().skip(1).map(PathBuf::from).collect();ensure!(args.len()==1,"manifest required");
 let start=Instant::now();let operations=shared::load(&args[0])?;let mut tables=Vec::new();let mut metadata=Vec::new();
 for op in &operations {
  let bytes=shared::checked(&op.bases)?;ensure!(bytes.len()==48*op.count,"base byte count");
  let mut bases=Vec::with_capacity(op.count);for chunk in bytes.chunks_exact(48){bases.push(decode_point(chunk)?);}
  let preparation=Instant::now();let prepared=PreparedG1Msm::new(&[&bases[..op.parts[0]],&bases[op.parts[0]..]]);let preparation_ns=preparation.elapsed().as_nanos();
  metadata.push(Prepared{operation:op.name.clone(),preparation_ns,resident_bytes:prepared.resident_bytes(),points:op.count});tables.push(prepared);
 }
 let strategy=Rayon::new(NonZeroUsize::new(2).unwrap())?;
 shared::emit(&Ready{stage:"ready",backend:"native",initialization_ns:start.elapsed().as_nanos(),prepared:metadata})?;
 shared::serve("native",&operations,|index,bytes|{
  let op=&operations[index];ensure!(bytes.len()==32*op.count,"scalar count");let mut scalars=Vec::with_capacity(op.count);
  for chunk in bytes.chunks_exact(32){let mut input=chunk;scalars.push(Scalar::read_cfg(&mut input,&ScalarReadCfg::AllowZero)?);ensure!(input.is_empty(),"scalar trailing bytes");}
  let kernel=Instant::now();let point=tables[index].msm(&[&scalars[..op.parts[0]],&scalars[op.parts[0]..]],&strategy).map_err(anyhow::Error::msg)?;let kernel_ns=kernel.elapsed().as_nanos();
  let encoded=point.encode().to_vec();let mut input=encoded.as_slice();ensure!(G1::read(&mut input)?==point&&input.is_empty(),"result decode");Ok((encoded,kernel_ns))
 })
}

fn decode_point(bytes:&[u8])->Result<G1>{let mut input=bytes;let point=G1::read_maybe_identity(&mut input)?;ensure!(input.is_empty()&&point.encode().as_ref()==bytes,"point encoding");Ok(point)}
#[cfg(test)]mod tests{
 use super::*;use commonware_math::algebra::Additive;
 #[test]fn accepts_canonical_identity_base(){let bytes=G1::zero().encode();assert_eq!(decode_point(&bytes).unwrap(),G1::zero());}
 #[test]fn rejects_noncanonical_identity_base(){let mut bytes=G1::zero().encode().to_vec();bytes[47]=1;assert!(decode_point(&bytes).is_err());}
}
