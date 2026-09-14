#![forbid(unsafe_code)]
#[path="../../gpu381-opening/shared.rs"]mod shared;
use anyhow::{Result,ensure};
use commonware_codec::{Read,ReadExt,Encode};
use commonware_cryptography::bls12381::primitives::group::{G1,Scalar,ScalarReadCfg,PreparedG1Msm};
use commonware_parallel::Rayon;
use std::{path::PathBuf,num::NonZeroUsize,time::Instant};
use serde::Serialize;
#[derive(Serialize)]struct Ready{stage:&'static str,backend:&'static str,initialization_ns:u128,prepared_ns:u128,resident_bases_bytes:usize,points:usize}
fn main()->Result<()>{
 let args:Vec<_>=std::env::args_os().skip(1).map(PathBuf::from).collect();ensure!(args.len()==1,"manifest required");
 let start=Instant::now();let(op,bytes,expected)=shared::load(&args[0])?;
 let mut bases=Vec::with_capacity(op.count);for chunk in bytes.chunks_exact(48){let mut input=chunk;let point=G1::read(&mut input)?;ensure!(input.is_empty()&&point.encode().as_ref()==chunk,"point encoding");bases.push(point);}
 let preparation=Instant::now();let prepared=PreparedG1Msm::new(&[&bases]);let prepared_ns=preparation.elapsed().as_nanos();drop(bases);drop(bytes);
 let strategy=Rayon::new(NonZeroUsize::new(2).unwrap())?;
 shared::emit(&Ready{stage:"ready",backend:"native",initialization_ns:start.elapsed().as_nanos(),prepared_ns,resident_bases_bytes:prepared.resident_bytes(),points:op.count})?;
 shared::serve("native",&op,&expected,|bytes|{
  ensure!(bytes.len()==32*op.count,"scalar count");let mut scalars=Vec::with_capacity(op.count);
  for chunk in bytes.chunks_exact(32){let mut input=chunk;scalars.push(Scalar::read_cfg(&mut input,&ScalarReadCfg::AllowZero)?);ensure!(input.is_empty(),"scalar trailing bytes");}
  let kernel=Instant::now();let point=prepared.msm(&[&scalars],&strategy).map_err(anyhow::Error::msg)?;let kernel_ns=kernel.elapsed().as_nanos();
  let encoded=point.encode().to_vec();let mut input=encoded.as_slice();ensure!(G1::read(&mut input)?==point&&input.is_empty(),"result decode");Ok((encoded,kernel_ns))
 })
}
