//! Real Transfer relation audit and isolated development setup.
use anyhow::{Result,ensure};
use commonware_codec::{Encode,Read,RangeCfg};
use commonware_cryptography::{Hasher,sha256::Sha256,zk::{circuit::{build,build_with_values},pari}};
use commonware_parallel::Rayon;
use serde::Serialize;
use shieldd_native_prepared_key381_experiment::{hash::Parameters,map::Generators,transfer,witness_codec};
use std::{fs,path::PathBuf,num::NonZeroUsize,time::Instant};
#[derive(Serialize)]
struct Audit { scenario:String, witness_sha256:String, original_digest:String, outlined_digest:String,
    original_rows:usize, outlined_rows:usize, original_columns:usize, outlined_columns:usize,
    domain:usize, public_rows:usize, exact_rewrite_and_assignment_checks:bool }
#[derive(Serialize)]
struct Setup { schema:&'static str, relation:String, setup_ns:u128, prepared_encode_ns:u128,
    checked_decode_ns:u128, key_sha256:String, vk_sha256:String, key_bytes:usize, vk_bytes:usize }
fn hash(b:&[u8])->String {hex::encode(Sha256::hash(&[b]).as_ref())}
fn main()->Result<()> {
 let a=std::env::args().collect::<Vec<_>>();ensure!(a.len()==4,"outline_gate relations|setup WITNESS_DIR NEW_OUTPUT");
 let dir=PathBuf::from(&a[2]);let out=PathBuf::from(&a[3]);ensure!(!out.exists(),"preserve existing output");
 let params=Parameters::load()?;let generators=Generators::derive(&params);
 if a[1]=="relations" {
  let mut records=Vec::new();
  for scenario in ["transfer","transfer_unregulated","transfer_flagged","transfer_accumulating","transfer_over_limit_disclosure","transfer_accumulator_continuation"] {
   let bytes=fs::read(dir.join(format!("{scenario}.witness")))?;let w=witness_codec::decode(&bytes)?;
   let (valued,selected)=build_with_values(|ctx|transfer::constrain(ctx,&params,&generators,&w));
   ensure!(valued.is_satisfied(),"original constraints failed: {scenario}");
   let layout=pari::InputLayout::new(vec![selected[0]],vec![vec![selected[1]]])?;
   let (c,indices)=build(|ctx|transfer::constrain(ctx,&params,&generators,&w));
   ensure!(selected==indices,"valued/unvalued layout drift");
   let relation=pari::Relation::compile(&c,&layout)?;
   let audit=relation.audit_constant_outline(&valued,&layout)?;
   ensure!(hex::encode(audit.original_digest)=="722fba7093a6188bba83708f0abe409a39cf34fa4451b95594e82781b68f3783","wrong source relation");
   ensure!(audit.original_rows==191516 && audit.outlined_rows==191517 && audit.original_columns==191501 && audit.outlined_columns==191502 && audit.domain==196608 && audit.public_rows==2,"unexpected layout");
   records.push(Audit{scenario:scenario.into(),witness_sha256:hash(&bytes),original_digest:hex::encode(audit.original_digest),outlined_digest:hex::encode(audit.outlined_digest),original_rows:audit.original_rows,outlined_rows:audit.outlined_rows,original_columns:audit.original_columns,outlined_columns:audit.outlined_columns,domain:audit.domain,public_rows:audit.public_rows,exact_rewrite_and_assignment_checks:true});
  }
  fs::write(out,serde_json::to_vec_pretty(&records)?)?;
 } else {
  ensure!(a[1]=="setup","unknown stage");
  let w=witness_codec::decode(&fs::read(dir.join("transfer.witness"))?)?;
  let (c,selected)=build(|ctx|transfer::constrain(ctx,&params,&generators,&w));
  let layout=pari::InputLayout::new(vec![selected[0]],vec![vec![selected[1]]])?;let relation=pari::Relation::compile(&c,&layout)?;
  let strategy=Rayon::new(NonZeroUsize::new(2).unwrap())?;let start=Instant::now();let(pk,vk)=pari::setup(&relation,&mut rand::rng(),&strategy)?;let setup_ns=start.elapsed().as_nanos();
  let start=Instant::now();let bytes=pk.encode_prepared();let prepared_encode_ns=start.elapsed().as_nanos();
  let start=Instant::now();let mut input=bytes.as_slice();let loaded=pari::ProvingKey::read_prepared_with_strategy(&mut input,&(RangeCfg::exact(1),RangeCfg::exact(1)),&strategy)?;
  ensure!(input.is_empty() && loaded==pk && loaded.encode_prepared()==bytes,"prepared-key checked roundtrip failed");let checked_decode_ns=start.elapsed().as_nanos();
  let vkbytes=vk.encode();let mut input=vkbytes.as_ref();let decoded=pari::VerifyingKey::read_cfg(&mut input,&(RangeCfg::exact(1),RangeCfg::exact(1)))?;ensure!(input.is_empty() && decoded==vk,"verifying key roundtrip failed");
  let record=Setup{schema:"shieldd.native_outline_setup.v1",relation:hex::encode(relation.digest()),setup_ns,prepared_encode_ns,checked_decode_ns,key_sha256:hash(&bytes),vk_sha256:hash(&vkbytes),key_bytes:bytes.len(),vk_bytes:vkbytes.len()};
  fs::create_dir(&out)?;fs::write(out.join("native.prepared.pk"),bytes)?;fs::write(out.join("native.vk"),vkbytes)?;fs::write(out.join("complete.json"),serde_json::to_vec_pretty(&record)?)?;
 }
 Ok(())
}
