#![forbid(unsafe_code)]
#[path="../../gpu381-opening/shared.rs"]mod shared;
use anyhow::{Result,ensure};
use blstrs::{Bls12,G1Affine,Scalar};
use group::Curve;
use serde::Serialize;
use std::{path::PathBuf,time::Instant};
use webgpu_groth16::{gpu::{GpuContext,curve::GpuCurve},bucket::optimal_glv_c};
#[derive(Serialize)]struct Preflight{glv_base_bytes:u64,index_bytes:u64,logical_bucket_bytes:u64,sub_bucket_bytes:u64,conservative_working_bytes:u64,device_binding_limit:u32,device_buffer_limit:u64}
#[derive(Serialize)]struct Ready{stage:&'static str,backend:&'static str,initialization_ns:u128,gpu_initialization_ns:u128,prepared_ns:u128,persistent_gpu_bytes:u64,points:usize,preflight:Preflight}
fn main()->Result<()>{
 let args:Vec<_>=std::env::args_os().skip(1).map(PathBuf::from).collect();ensure!(args.len()==1,"manifest required");
 let start=Instant::now();let(op,bytes,expected)=shared::load(&args[0])?;
 let mut bases=Vec::with_capacity(op.count);
 for chunk in bytes.chunks_exact(48){let bytes:&[u8;48]=chunk.try_into()?;let point=Option::<G1Affine>::from(G1Affine::from_compressed(bytes)).ok_or_else(||anyhow::anyhow!("invalid checked base"))?;ensure!(&point.to_compressed()==bytes,"noncanonical base");bases.push(point);}
 drop(bytes);let init=Instant::now();let gpu=futures::executor::block_on(GpuContext::<Bls12>::new())?;let gpu_initialization_ns=init.elapsed().as_nanos();
 let limits=gpu.device.limits();let n=op.count as u64;let c=optimal_glv_c::<Bls12>(op.count);ensure!((1..=16).contains(&c),"bucket width");let k=128usize.div_ceil(c) as u64+1;
 let logical=k*(1u64<<(c-1));let dispatched=logical+(2*n*k).div_ceil(<Bls12 as GpuCurve>::MSM_MAX_CHUNK_SIZE as u64);
 let base=2*n*<Bls12 as GpuCurve>::G1_GPU_BYTES as u64;let indices=2*n*k*4;let buckets=logical*384;let sub=dispatched*384;
 let estimate=3*base+3*indices+3*buckets+2*sub+dispatched*64+1024*1024*1024;
 for size in [base,indices,buckets,sub,dispatched*4,k*384*64]{ensure!(size<=u64::from(limits.max_storage_buffer_binding_size)&&size<=limits.max_buffer_size,"GPU buffer exceeds device limit");}
 ensure!(estimate<6*1024*1024*1024,"conservative working estimate exceeds6GiB");
 let prep=Instant::now();let prepared=futures::executor::block_on(webgpu_groth16::prover::PreparedG1Msm::new(&gpu,&bases))?;let prepared_ns=prep.elapsed().as_nanos();drop(bases);
 shared::emit(&Ready{stage:"ready",backend:"gpu",initialization_ns:start.elapsed().as_nanos(),gpu_initialization_ns,prepared_ns,persistent_gpu_bytes:prepared.resident_bytes(),points:op.count,preflight:Preflight{glv_base_bytes:base,index_bytes:indices,logical_bucket_bytes:buckets,sub_bucket_bytes:sub,conservative_working_bytes:estimate,device_binding_limit:limits.max_storage_buffer_binding_size,device_buffer_limit:limits.max_buffer_size}})?;
 shared::serve("gpu",&op,&expected,|bytes|{
  ensure!(bytes.len()==32*op.count,"scalar count");let mut scalars=Vec::with_capacity(op.count);
  for chunk in bytes.chunks_exact(32){scalars.push(Option::<Scalar>::from(Scalar::from_bytes_be(chunk.try_into()?)).ok_or_else(||anyhow::anyhow!("noncanonical scalar"))?);}
  let kernel=Instant::now();let point=futures::executor::block_on(prepared.msm(&scalars))?;let kernel_ns=kernel.elapsed().as_nanos();
  let encoded=point.to_affine().to_compressed();ensure!(bool::from(G1Affine::from_compressed(&encoded).is_some()),"result decode");Ok((encoded.to_vec(),kernel_ns))
 })
}
