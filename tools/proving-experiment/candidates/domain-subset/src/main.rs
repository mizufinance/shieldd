//! Synthetic full-size polynomial cost gate, not a SNARK or protocol implementation.
use anyhow::{ensure,Result};
use ark_ff::{FftField,Field};
use ark_poly::{EvaluationDomain,Radix2EvaluationDomain};
use ark_std::UniformRand;
use rand::{rngs::StdRng,SeedableRng};
use serde::Serialize;
use std::{fs,hint::black_box,path::PathBuf,time::Instant};
struct Domain<F:FftField>{fft:Radix2EvaluationDomain<F>,wide:Radix2EvaluationDomain<F>,s:usize,c:F,weights:Vec<F>,z:Vec<F>,retained:usize}
impl<F:FftField> Domain<F>{
 fn new(n:usize,m:usize)->Self{
  let fft=Radix2EvaluationDomain::<F>::new(n).unwrap();let wide=Radix2EvaluationDomain::<F>::new(2*n).unwrap();
  let s=n-m;assert!(s==0 || s.is_power_of_two() && n%s==0);
  let c=if s==0{F::ONE}else{fft.group_gen.pow([s as u64])};
  let weights=fft.elements().map(|x|if s==0{F::ONE}else{x.pow([s as u64])-c}).collect();
  let mut z=vec![F::ZERO;m+1];
  if s==0 {z[0]=-F::ONE;z[m]=F::ONE;}else{for j in 0..n/s{z[j*s]=c.pow([(n/s-1-j) as u64]);}}
  Self{fft,wide,s,c,weights,z,retained:m}
 }
 fn interpolate(&self,raw:&[F])->Result<Vec<F>>{
  let mut eval=vec![F::ZERO;self.fft.size()];let mut cursor=0;
  for (i,w) in self.weights.iter().enumerate(){if !w.is_zero(){if cursor<raw.len(){eval[i]=raw[cursor]*w;}cursor+=1;}}
  ensure!(cursor==self.retained && raw.len()<=cursor,"domain capacity");self.fft.ifft_in_place(&mut eval);
  if self.s==0{return Ok(eval);}
  let mut q=vec![F::ZERO;self.retained];
  for k in (self.s..eval.len()).rev(){let v=eval[k];q[k-self.s]=v;eval[k-self.s]+=self.c*v;eval[k]=F::ZERO;}
  ensure!(eval.iter().all(|v|v.is_zero()),"weighted interpolation remainder");Ok(q)
 }
 fn kernel(&self,raw:&[Vec<F>;3],square:bool,tamper:bool)->Result<usize>{
  let a=self.interpolate(&raw[0])?;let b=self.interpolate(&raw[1])?;let mut c=self.interpolate(&raw[2])?;
  if tamper{c[0]+=F::ONE;}
  let mut product=self.wide.fft(&a);
  if square{for v in &mut product{v.square_in_place();}}else{let other=self.wide.fft(&b);for(v,w)in product.iter_mut().zip(other){*v*=w;}}
  self.wide.ifft_in_place(&mut product);for(v,w)in product.iter_mut().zip(&c){*v-=w;}
  let mut numerator=if self.s==0{product}else{
   let mut out=vec![F::ZERO;product.len()+self.s];for(i,v)in product.into_iter().enumerate(){out[i]-=self.c*v;out[i+self.s]+=v;}out
  };
  let n=self.fft.size();let mut q=vec![F::ZERO;numerator.len()-n];
  for k in (n..numerator.len()).rev(){let v=numerator[k];q[k-n]=v;numerator[k-n]+=v;numerator[k]=F::ZERO;}
  ensure!(numerator.iter().all(|v|v.is_zero()),"quotient remainder");
  ensure!(q[self.retained.saturating_sub(1)..].iter().all(|v|v.is_zero()),"quotient degree");
  q.truncate(self.retained+3);q.resize(self.retained+3,F::ZERO);
  if square{
   // Full h=eta0+eta1*X mask expansion and A+Zh construction, with fixed nonzero diagnostic masks.
   let h0=F::from(17u64);let h1=F::from(23u64);let mut masked=a.clone();masked.resize(self.retained+2,F::ZERO);
   for(i,v)in a.iter().enumerate(){q[i]+=h0.double()*v;q[i+1]+=h1.double()*v;}
   for(i,v)in self.z.iter().enumerate(){q[i]+=h0.square()*v;q[i+1]+=(h0*h1).double()*v;q[i+2]+=h1.square()*v;masked[i]+=h0*v;masked[i+1]+=h1*v;}
   black_box(masked);
  }
  let bound=if square{self.retained+3}else{self.retained-1};q.truncate(bound);black_box(b);black_box(q);Ok(bound)
 }
}
#[derive(Serialize)]struct Sample{field:&'static str,relation:&'static str,retained:usize,rows:usize,fft:usize,product_fft:usize,block:usize,warmup:bool,wall_ns:u128,quotient_bound:usize}
#[derive(Serialize)]struct Preparation{field:&'static str,relation:&'static str,retained:usize,ns:u128}
#[derive(Serialize)]struct Report{schema:&'static str,workers:usize,preparation:Vec<Preparation>,samples:Vec<Sample>,limits:&'static str}
fn run<F:FftField+UniformRand>(field:&'static str,relation:&'static str,rows:usize,square:bool,sizes:&[usize],report:&mut Report)->Result<()>{
 let mut rng=StdRng::seed_from_u64(10922);let a:Vec<F>=(0..rows).map(|_|F::rand(&mut rng)).collect();let b:Vec<F>=(0..rows).map(|_|F::rand(&mut rng)).collect();let c=a.iter().zip(&b).map(|(a,b)|if square{a.square()}else{*a*b}).collect();let raw=[a,b,c];
 let domains:Vec<_>=sizes.iter().map(|m|{let start=Instant::now();let d=Domain::new(262144,*m);report.preparation.push(Preparation{field,relation,retained:*m,ns:start.elapsed().as_nanos()});d}).collect();
 for d in &domains{d.kernel(&raw,square,false)?;ensure!(d.kernel(&raw,square,true).is_err(),"altered relation accepted");}
 for block in 0..8{let mut order:Vec<_>=(0..domains.len()).collect();if block%2==1{order.reverse();}
  for i in order{let d=&domains[i];let start=Instant::now();let quotient_bound=d.kernel(black_box(&raw),square,false)?;let wall_ns=start.elapsed().as_nanos();report.samples.push(Sample{field,relation,retained:d.retained,rows,fft:262144,product_fft:524288,block,warmup:block<3,wall_ns,quotient_bound});}
 }
 eprintln!("{field}/{relation}: full-size identities, negatives and samples passed");Ok(())
}
fn main()->Result<()>{
 let out=PathBuf::from(std::env::args().nth(1).expect("new output JSON"));ensure!(!out.exists(),"preserve prior results");
 let mut r=Report{schema:"shieldd.proving_experiment.domain_subset_cost.v1",workers:rayon::current_num_threads(),preparation:vec![],samples:vec![],limits:"Synthetic field polynomial kernels at actual circuit row capacities; no key, proof, consensus-domain change or full-API speed claim. Includes three interpolants, square/product, exact quotient division and Pari mask expansion. Precomputed domain weights separate; RNG/input construction outside samples. A is an equally eligible QAP control. Three warmups and five measured balanced blocks."};
 run::<ark_bls12_377::Fr>("BLS12-377-Fr","pari-B",226578,true,&[262144,245760,229376],&mut r)?;
 run::<ark_bls12_381::Fr>("BLS12-381-Fr","pari-C",220029,true,&[262144,245760,229376],&mut r)?;
 run::<ark_bls12_377::Fr>("BLS12-377-Fr","groth16-A",155122,false,&[262144,245760,229376,196608],&mut r)?;
 fs::write(out,serde_json::to_vec_pretty(&r)?)?;Ok(())
}
#[cfg(test)]mod tests{use super::*;#[test]fn small_domain_identities_and_mutation_rejection(){for square in [false,true]{for m in [64,60,56,48]{let d=Domain::<ark_bls12_377::Fr>::new(64,m);let a:Vec<_>=(1u64..=40).map(ark_bls12_377::Fr::from).collect();let b=vec![ark_bls12_377::Fr::from(7u64);40];let c=a.iter().zip(&b).map(|(a,b)|if square{a.square()}else{*a*b}).collect();let raw=[a,b,c];d.kernel(&raw,square,false).unwrap();assert!(d.kernel(&raw,square,true).is_err());}}}}
