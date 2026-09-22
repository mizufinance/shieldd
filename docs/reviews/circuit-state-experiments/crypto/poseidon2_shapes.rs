//! Extracted reference Poseidon2 BLS12-381 t=3/t=8 cost experiment; not Shieldd protocol parameters.
use anyhow::{Result,ensure};
use commonware_codec::Read;
use commonware_cryptography::{bls12381::primitives::group::{Scalar,ScalarReadCfg},zk::{circuit::{self,Var},pari::{InputLayout,Relation}}};
use commonware_math::algebra::{Additive,Field};
use std::time::Instant;
fn scalar(s:&str)->Result<Scalar>{let b=hex::decode(s)?;let mut v=b.as_slice();Ok(Scalar::read_cfg(&mut v,&ScalarReadCfg::AllowZero)?)}
fn constants(w:usize)->Result<(Vec<Scalar>,Vec<Vec<Scalar>>)> {
 let json:serde_json::Value=serde_json::from_str(include_str!("poseidon2_params.json"))?;
 let diag=json[format!("MAT_DIAG{w}_M_1")].as_array().unwrap().iter().map(|x|scalar(x.as_str().unwrap())).collect::<Result<Vec<_>>>()?;
 let flat=json[format!("RC{w}")].as_array().unwrap().iter().map(|x|scalar(x.as_str().unwrap())).collect::<Result<Vec<_>>>()?;
 let rc=flat.chunks(w).map(|x|x.to_vec()).collect();Ok((diag,rc))
}
fn ext<F:Field>(s:&mut [F]){
 match s.len(){
  3=>{let sum=s.iter().cloned().fold(F::zero(),|a,b|a+&b);for v in s{*v+=&sum;}},
  8=>{
   for chunk in s.chunks_mut(4){
    let t0=chunk[0].clone()+&chunk[1];let t1=chunk[2].clone()+&chunk[3];
    let t2=chunk[1].clone()+&chunk[1]+&t1;let t3=chunk[3].clone()+&chunk[3]+&t0;
    let t4=t1.clone()+&t1+&t1+&t1+&t3;
    let t5=t0.clone()+&t0+&t0+&t0+&t2;
    let t6=t3+&t5;let t7=t2+&t4;
    chunk[0]=t6;chunk[1]=t5;chunk[2]=t7;chunk[3]=t4;
   }
   for i in 0..4{let sum=s[i].clone()+&s[i+4];s[i]+=&sum;s[i+4]+=&sum;}
  },_=>panic!("width")
 }
}
fn permute<F:Field>(s:&mut [F],diag:&[Scalar],rc:&[Vec<Scalar>],lift:&impl Fn(&Scalar)->F){
 let w=s.len();let half=4;ext(s);
 for (r,row) in rc.iter().enumerate(){
  if r<half||r>=rc.len()-half {
   for i in 0..w{let x=s[i].clone()+&lift(&row[i]);let q=x.clone()*&x;s[i]=q.clone()*&q*&x;}ext(s);
  }else{
   let x=s[0].clone()+&lift(&row[0]);let q=x.clone()*&x;s[0]=q.clone()*&q*&x;
   let sum=s.iter().cloned().fold(F::zero(),|a,b|a+&b);
   if w==3 {s[0]+=&sum;s[1]+=&sum;s[2]=s[2].clone()+&s[2]+&sum;}
   else {for i in 0..w{s[i]=s[i].clone()*&lift(&diag[i])+&sum;}}
  }
 }
}
fn main()->Result<()> {
 let (d3,r3)=constants(3)?;let (d8,r8)=constants(8)?;
 ensure!(r3.len()==64&&r8.len()==65,"round count");
 let mut kat=(0..3).map(|i|Scalar::from(i as u64)).collect::<Vec<_>>();
 permute(&mut kat,&d3,&r3,&Clone::clone);
 ensure!(kat[0]==scalar("1b152349b1950b6a8ca75ee4407b6e26ca5cca5650534e56ef3fd45761fbf5f0")?,"width 3 reference KAT mismatch");
 let mut kat8=(0..8).map(|i|Scalar::from(i as u64)).collect::<Vec<_>>();
 permute(&mut kat8,&d8,&r8,&Clone::clone);
 ensure!(kat8[0]==scalar("638a70e5a395c4473b2545d6cbb088d46587ddc9e1b2cff26d283d7c5557fd44")?,"width 8 independent Python KAT mismatch");
 // One-permutation native/circuit parity, plus a deliberately incorrect claimed output.
 for wrong in [false,true] {
  let claim=if wrong {kat8[0].clone()+&Scalar::from(1)} else {kat8[0].clone()};
  let (valued,_)=circuit::build_with_values(|ctx| {
   let mut state=(0..8).map(|i|Var::witness(ctx, |_|Scalar::from(i as u64))).collect::<Vec<_>>();
   permute(&mut state,&d8,&r8,&|x|Var::native(x.clone()));
   let expected=Var::witness(ctx, |_|claim.clone());state[0].assert_eq(&expected);vec![expected]
  });
  ensure!(valued.is_satisfied()!=wrong,"Poseidon2 native/circuit parity failure");
 }

 for (shape,w,depth,arity) in [("p2_binary_w3",3,48,2),("p2_binary_w8",8,48,2),("p2_quaternary_w8",8,24,4),("p2_octary_w8",8,16,8)] {
  let (diag,rc)=if w==3{(&d3,&r3)}else{(&d8,&r8)};let now=Instant::now();
  let (c,indices)=circuit::build(|ctx|{
   let witness=||Var::witness(ctx, |_|Scalar::from(7));let committed=witness();let mut node=committed.clone();
   for level in 0..depth{
    let mut inputs=vec![Var::native(Scalar::from(level as u64+1)),node];
    for _ in 1..arity{inputs.push(witness());}
    let rate=w-1;let mut state=vec![Var::zero();w];state[0]=Var::native(Scalar::from((arity+1) as u64*256+42));
    for chunk in inputs.chunks(rate){for (i,v) in chunk.iter().enumerate(){state[i+1]+=&v.clone();}permute(&mut state,diag,rc,&|x|Var::native(x.clone()));}
    node=state[1].clone();
   }
   let public=witness();node.assert_eq(&public);vec![public,committed]
  });
  let layout=InputLayout::new(vec![indices[0]],vec![vec![indices[1]]])?;let relation=Relation::compile(&c,&layout)?;
  println!("{} domain={} compile_s={:.4}",shape,relation.domain_size(),now.elapsed().as_secs_f64());
 }
 Ok(())
}
