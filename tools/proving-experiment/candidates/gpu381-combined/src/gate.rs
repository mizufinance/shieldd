#![forbid(unsafe_code)]
use anyhow::{Result, ensure};
use blstrs::{Bls12, G1Affine, G1Projective, Scalar};
use ff::Field;
use group::{Curve, Group, prime::PrimeCurveAffine};
use serde::Serialize;
use std::{fs, path::PathBuf, time::Instant};
use webgpu_groth16::{gpu::GpuContext, prover::{gpu_msm_g1,PreparedG1Msm}};

#[derive(Serialize)]
struct Gate { name: &'static str, points: usize, filtered_identity_bases: usize, gpu_wall_ns: u128, prepared_ns:u128, persistent_bytes:u64, reuse_round:usize, expected: String, exact: bool }
#[derive(Serialize)]
struct Adapter { name: String, backend: String, vendor: u32, device: u32, max_storage_buffer_binding_size: u32, max_buffer_size: u64 }
#[derive(Serialize)]
struct Report { schema: &'static str, adapter_selection_probe: Adapter, initialization_ns: u128, gates: Vec<Gate>, limits: &'static str }

fn main() -> Result<()> { futures::executor::block_on(run()) }

async fn finite_msm(gpu: &GpuContext<Bls12>, bases: &[G1Affine], scalars: &[Scalar]) -> Result<G1Projective> {
 ensure!(bases.len()==scalars.len(),"MSM length mismatch");
 if bases.is_empty(){return Ok(G1Projective::identity());}
 if !bases.iter().any(|p|bool::from(p.is_identity())){return gpu_msm_g1::<Bls12>(gpu,bases,scalars).await;}
 let (finite,weights):(Vec<_>,Vec<_>)=bases.iter().zip(scalars).filter(|(p,_)|!bool::from(p.is_identity())).map(|(p,s)|(*p,*s)).unzip();
 if finite.is_empty(){return Ok(G1Projective::identity());}
 gpu_msm_g1::<Bls12>(gpu,&finite,&weights).await
}

async fn run() -> Result<()> {
 let args: Vec<_> = std::env::args_os().skip(1).map(PathBuf::from).collect();
 ensure!(args.len()==1 && !args[0].exists(), "new output directory required");
 ensure!(std::env::var("RAYON_NUM_THREADS")?.as_str()=="2", "two worker limit required");
 fs::create_dir(&args[0])?;
 let instance=wgpu::Instance::default();
 let adapter=instance.request_adapter(&wgpu::RequestAdapterOptions{power_preference:wgpu::PowerPreference::HighPerformance,force_fallback_adapter:false,compatible_surface:None}).await?;
 let info=adapter.get_info();let limits=adapter.limits();
 ensure!(info.backend==wgpu::Backend::Metal && info.name.contains("M4 Pro"),"expected local M4 Pro Metal adapter");
 let adapter_selection_probe=Adapter{name:info.name,backend:format!("{:?}",info.backend),vendor:info.vendor,device:info.device,max_storage_buffer_binding_size:limits.max_storage_buffer_binding_size,max_buffer_size:limits.max_buffer_size};
 fs::write(args[0].join("adapter.json"),serde_json::to_vec_pretty(&adapter_selection_probe)?)?;
 let start=Instant::now();
 let gpu=GpuContext::<Bls12>::new().await?;
 ensure!(gpu.device.limits().max_storage_buffer_binding_size==limits.max_storage_buffer_binding_size,"GPU context limits differ from adapter probe");
 let mut report=Report{schema:"shieldd.gpu381_combined_gate.v1",adapter_selection_probe,initialization_ns:start.elapsed().as_nanos(),gates:vec![],limits:"Isolated prepared-entry wrapper reuses unchanged persistent MSM shader and bucket paths. Eight point sets with four scalar vectors each on the same prepared buffer, versus CPU and fresh public API; wrong counts rejected. GPU preparation including completion read is separate. Tiny scoped gates; no Transfer or phone claim."};
 ensure!(PreparedG1Msm::new(&gpu,&vec![G1Affine::identity();614401]).await.is_err(),"point cap accepted");
 let g=G1Projective::generator();
 let one=Scalar::ONE;let zero=Scalar::ZERO;let max=-one;
 let cases:Vec<(&'static str,Vec<G1Projective>,Vec<Scalar>)>=vec![
  ("zero_scalars",vec![g;4],vec![zero;4]),
  ("duplicates",vec![g;4],vec![one,Scalar::from(2),Scalar::from(3),Scalar::from(4)]),
  ("inverse_cancellation",vec![g,-g,g+g,-(g+g)],vec![one;4]),
  ("identity_points",vec![G1Projective::identity(),g,G1Projective::identity(),g],vec![max,one,one,one]),
  ("scalar_boundaries",vec![g,g+g,g*Scalar::from(3),g*Scalar::from(4)],vec![max,max-one,Scalar::from(1u64<<63),Scalar::from(u64::MAX)]),
  ("odd_count",vec![g,g+g,g*Scalar::from(7)],vec![Scalar::from(17),Scalar::from(23),Scalar::from(41)]),
  ("identities_only",vec![G1Projective::identity();4],vec![one,max,one,one]),
  ("empty",vec![],vec![]),
 ];
 for(name,points,initial_scalars) in cases {
  let bases:Vec<G1Affine>=points.iter().map(Curve::to_affine).collect();
  let filtered_identity_bases=bases.iter().filter(|p|bool::from(p.is_identity())).count();
  let prep=Instant::now();let prepared=PreparedG1Msm::new(&gpu,&bases).await?;let prepared_ns=prep.elapsed().as_nanos();
  ensure!(prepared.msm(&vec![one;bases.len()+1]).await.is_err(),"wrong count accepted");
  let variants=vec![initial_scalars,vec![zero;bases.len()],vec![max;bases.len()],(0..bases.len()).map(|i|if i%2==0 {Scalar::from((i+7)as u64)}else{-Scalar::from((i+11)as u64)}).collect()];
  for(reuse_round,scalars)in variants.into_iter().enumerate(){
   let expected=points.iter().zip(&scalars).fold(G1Projective::identity(),|acc,(p,s)|acc+p*s);
   let fresh=finite_msm(&gpu,&bases,&scalars).await?;ensure!(fresh==expected,"fresh path mismatch");
   let start=Instant::now();let actual=prepared.msm(&scalars).await?;let elapsed=start.elapsed().as_nanos();
   ensure!(actual==expected,"prepared GPU mismatch: {name}/{reuse_round}");
   let bytes=actual.to_affine().to_compressed();ensure!(bool::from(G1Affine::from_compressed(&bytes).is_some()),"result decode");
   report.gates.push(Gate{name,points:bases.len(),filtered_identity_bases,gpu_wall_ns:elapsed,prepared_ns,persistent_bytes:prepared.resident_bytes(),reuse_round,expected:hex::encode(bytes),exact:true});
   fs::write(args[0].join("progress.json"),serde_json::to_vec_pretty(&report)?)?;
   eprintln!("{name}/{reuse_round}: exact prepared/fresh/CPU result");
  }
 }
 fs::write(args[0].join("complete.json"),serde_json::to_vec_pretty(&report)?)?;
 Ok(())
}
