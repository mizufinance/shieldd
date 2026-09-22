//! Extracted gadget shape experiments; does not implement a new protocol or proof family.
use commonware_cryptography::{bls12381::primitives::group::Scalar, zk::{circuit::{self, Var}, pari::{InputLayout, Relation}}};
use shieldd_sdk_circuits::{encoding, group, hash::Parameters, scalar};

use std::time::Instant;
fn main() -> anyhow::Result<()> {
 let p=Parameters::load()?;
 // Native coordinate roundtrip: retain the canonical compressed-point decoder as the final gate.
 let g=group::generator();
 let bytes=encoding::point_bytes(&g);
 let _accepted=shieldd_sdk_crypto::encoding::nonidentity(&bytes)?;
 anyhow::ensure!(shieldd_sdk_crypto::encoding::nonidentity(&[255;32]).is_err(),"noncanonical accepted");
 let identity=encoding::point_bytes(&group::Point::identity());
 anyhow::ensure!(shieldd_sdk_crypto::encoding::nonidentity(&identity).is_err(),"identity accepted");
 for shape in ["hash_binary", "hash_quaternary", "hash_octary", "note_current", "note_address_digest", "notes8_current", "notes8_shared1", "notes8_shared2", "notes8_shared8", "address_packed", "address_affine", "amount_core_one", "amount_core_two"] {
  let start=Instant::now();
  let (c, out)=circuit::build(|ctx| {
   let input=|| Var::witness(ctx, |_| Scalar::from(7));
   let committed=input();
   let result=match shape {
    "hash_binary"|"hash_quaternary"|"hash_octary" => {
     let (arity,depth) = match shape {"hash_binary"=>(2,48),"hash_quaternary"=>(4,24),_=>(8,16)};
     let mut node=committed.clone();
     for level in 0..depth {
      let mut v=Vec::with_capacity(arity+1);
      v.push(Var::native(Scalar::from(level as u64+1)));
      v.push(node);
      for _ in 1..arity {v.push(input());}
      node=p.circuit(42,&v);
     }
     node
    },
    "note_current" => {let mut f=vec![committed.clone()];f.extend((0..7).map(|_|input()));p.circuit(43,&f)},
    "note_address_digest" => {let coords=(0..4).map(|_|input()).collect::<Vec<_>>();let digest=p.circuit(44,&coords);let mut f=vec![committed.clone()];f.extend((0..3).map(|_|input()));f.push(digest);p.circuit(43,&f)},
    "notes8_current"|"notes8_shared1"|"notes8_shared2"|"notes8_shared8" => {
      let mut outputs=Vec::new();
      let owners=match shape {"notes8_shared1"=>1,"notes8_shared2"=>2,"notes8_shared8"=>8,_=>0};
      let address_digests=(0..owners).map(|_| {
       let coords=(0..4).map(|_|input()).collect::<Vec<_>>();
       p.circuit(44,&coords)
      }).collect::<Vec<_>>();
      for i in 0..8 {
       let mut note=vec![if i==0 {committed.clone()} else {input()}];
       if owners==0 {note.extend((0..7).map(|_|input()));}
       else {note.extend((0..3).map(|_|input()));note.push(address_digests[i%owners].clone());}
       outputs.push(p.circuit(43,&note));
      }
      p.circuit(46,&outputs)
    },
    "amount_core_one"|"amount_core_two" => {
      let n=if shape=="amount_core_one" {1} else {2};
      let base=group::generator();
      let selected=group::Point{x:Var::witness(ctx, |_|base.x.clone()),y:Var::witness(ctx, |_|base.y.clone())};
      let mut outputs=Vec::new();
      for i in 0..n {
       let ephemeral=Var::witness(ctx, |_| Scalar::from((i+1) as u64));
       let bits=scalar::canonical_bits(ctx,&ephemeral);
       let epk=base.multiply_fixed(&bits);
       let secret=selected.multiply_bits(&bits);
       let key=p.circuit(shieldd_sdk_crypto::domains::SHARED_SECRET,&[secret.x,secret.y]);
       let seed=input();
       let c2=seed.clone()+&key;
       let salt=input();
       let confirmation=p.circuit(shieldd_sdk_crypto::domains::KEY_CONFIRMATION,&[seed.clone(),epk.x,epk.y,salt]);
       let stream=p.circuit(shieldd_sdk_crypto::domains::ENCRYPTION_STREAM,&[seed,Var::native(Scalar::from(0))]);
       let ciphertext=committed.clone()+&stream;
       outputs.extend([c2,confirmation,ciphertext]);
      }
      p.circuit(46,&outputs)
    },
    "address_packed"|"address_affine" => {
      let g=group::generator();
      let point=|| group::Point{x:Var::witness(ctx, |_|g.x.clone()),y:Var::witness(ctx, |_|g.y.clone())};
      let a=point();let b=point();
      let words=if shape=="address_packed" {encoding::address_words(ctx,&a,&b)} else {vec![a.x,a.y,b.x,b.y]};
      let seed=committed.clone();
      let encrypted=words.iter().enumerate().map(|(i,w)|w.clone()+&p.circuit(shieldd_sdk_crypto::domains::ENCRYPTION_STREAM,&[seed.clone(),Var::native(Scalar::from(i as u64))])).collect::<Vec<_>>();
      p.circuit(45,&encrypted)
    },
    _=>unreachable!()
   };
   let public=Var::witness(ctx, |_|Scalar::from(5));
   result.assert_eq(&public);
   vec![public,committed]
  });
  let layout=InputLayout::new(vec![out[0]],vec![vec![out[1]]])?;
  let relation=Relation::compile(&c,&layout)?;
  println!("{} domain={} compile_s={:.4} relation={}",shape,relation.domain_size(),start.elapsed().as_secs_f64(),hex::encode(relation.digest()));
 }
 Ok(())
}
