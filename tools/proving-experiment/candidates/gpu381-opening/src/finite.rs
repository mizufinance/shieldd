use anyhow::{Result,ensure};
use blstrs::{Bls12,G1Affine,G1Projective,Scalar};
use group::{Group,prime::PrimeCurveAffine};
use webgpu_groth16::{gpu::GpuContext,prover::gpu_msm_g1};
pub(crate) async fn finite_msm(gpu: &GpuContext<Bls12>, bases: &[G1Affine], scalars: &[Scalar]) -> Result<G1Projective> {
 ensure!(bases.len()==scalars.len(),"MSM length mismatch");
 if bases.is_empty(){return Ok(G1Projective::identity());}
 if !bases.iter().any(|p|bool::from(p.is_identity())){return gpu_msm_g1::<Bls12>(gpu,bases,scalars).await;}
 let (finite,weights):(Vec<_>,Vec<_>)=bases.iter().zip(scalars).filter(|(p,_)|!bool::from(p.is_identity())).map(|(p,s)|(*p,*s)).unzip();
 if finite.is_empty(){return Ok(G1Projective::identity());}
 gpu_msm_g1::<Bls12>(gpu,&finite,&weights).await
}
