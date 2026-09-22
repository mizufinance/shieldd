use commonware_cryptography::{Hasher, Sha256, sha256::Digest};
use commonware_parallel::Sequential;
use commonware_runtime::{Runner as _, Supervisor, tokio::{Runner, Config, Context}, buffer::paged::CacheRef};
use commonware_storage::{merkle::{mmr,full::Config as MerkleConfig}, qmdb::{current::{ordered::variable::Db,VariableConfig}, any::traits::DbAny}, translator::OneCap, journal::contiguous::variable::Config as JournalConfig};
use commonware_utils::{NZUsize,NZU16,NZU64};
use futures::StreamExt;
use std::{path::Path,time::Instant};
type Database=Db<mmr::Family,Context,Digest,Vec<u8>,Sha256,OneCap,32,Sequential>;
fn cfg(ctx:&Context)->VariableConfig<OneCap,((),(commonware_codec::RangeCfg<usize>,())),Sequential>{
 let cache=CacheRef::from_pooler(ctx,NZU16!(4096),NZUsize!(64));
 VariableConfig{merkle_config:MerkleConfig{journal_partition:"nodes".into(),metadata_partition:"metadata".into(),items_per_blob:NZU64!(1024),write_buffer:NZUsize!(65536),replay_buffer:NZUsize!(65536),strategy:Sequential,page_cache:cache.clone()},journal_config:JournalConfig{partition:"ops".into(),items_per_section:NZU64!(1024),compression:None,codec_config:((),((0..=128).into(),())),page_cache:cache,write_buffer:NZUsize!(65536),replay_buffer:NZUsize!(65536)},grafted_metadata_partition:"graft".into(),translator:OneCap,init_cache:Some(NZUsize!(1024)),init_buffer:NZUsize!(65536),init_concurrency:()}
}
fn bytes(path:&Path)->u64{std::fs::read_dir(path).unwrap().map(|e|{let e=e.unwrap();let m=e.metadata().unwrap();if m.is_dir(){bytes(&e.path())}else{m.len()}}).sum()}
fn key(i:u32,ordered:bool)->Digest{
 let source=format!("hist/{i:08}");
 if !ordered{return Sha256::hash(&[source.as_bytes()]);}
 let mut bytes=[0u8;32];bytes[..source.len()].copy_from_slice(source.as_bytes());Digest(bytes)
}
fn main(){
 let path=std::env::args().nth(1).expect("fresh directory");assert!(!Path::new(&path).exists());
 let ordered=std::env::args().nth(2).as_deref()==Some("ordered");
 Runner::new(Config::new().with_worker_threads(2).with_storage_directory(&path)).start(move |ctx|async move{
 let mut db=Database::init(ctx.child("db"),cfg(&ctx)).await.unwrap();
 let mut root=db.root();
 for version in 0..32u32{
  let now=Instant::now();let mut batch=db.new_batch();for i in 0..512u32{batch=batch.write(key(i,ordered),Some(vec![version as u8;64]));}
  let batch=batch.merkleize(&db,None).await.unwrap();(db,_)=db.apply_batch(batch).await.unwrap();db=db.commit().await.unwrap();root=db.root();
  println!("phase=updates version={version} commit_ms={} physical_bytes={}",now.elapsed().as_millis(),bytes(Path::new(&path)));
 }
 let now=Instant::now();for i in 0..512{assert_eq!(db.get(&key(i,ordered)).await.unwrap(),Some(vec![31;64]));}println!("phase=read mode={} read_us={}",if ordered{"ordered"}else{"hashed"},now.elapsed().as_micros());
 if ordered{
  assert_eq!(db.get_prev_key(&key(256,true)).await.unwrap(),Some(key(255,true)));
  assert_eq!(db.get_next_key(&key(256,true)).await.unwrap(),Some(key(257,true)));
  {
   let stream=db.stream_range(key(0,true)).await.unwrap();futures::pin_mut!(stream);
   for i in 0..512u32{let (found,value)=stream.next().await.unwrap().unwrap();assert_eq!(found,key(i,true));assert_eq!(value,vec![31;64]);}
   assert!(stream.next().await.is_none());
  }
  println!("phase=ordered_queries predecessor_next_and_512_range=true");
 }
 let floor=db.sync_boundary();println!("phase=before_prune sync_boundary={floor:?} inactivity_floor={:?}",db.inactivity_floor_loc());db=db.prune(floor).await.unwrap().sync().await.unwrap();assert_eq!(root,db.root());println!("phase=pruned physical_bytes={}",bytes(Path::new(&path)));
 drop(db);let now=Instant::now();let mut db=Database::init(ctx.child("reopened"),cfg(&ctx)).await.unwrap();assert_eq!(root,db.root());for i in 0..512{assert_eq!(db.get(&key(i,ordered)).await.unwrap(),Some(vec![31;64]));}println!("phase=reopened equal_root=true reopen_and_read_ms={} physical_bytes={}",now.elapsed().as_millis(),bytes(Path::new(&path)));
 let mut batch=db.new_batch();for i in 0..512{batch=batch.write(key(i,ordered),None);}let batch=batch.merkleize(&db,None).await.unwrap();(db,_)=db.apply_batch(batch).await.unwrap();db=db.commit().await.unwrap();let floor=db.sync_boundary();println!("phase=before_delete_prune sync_boundary={floor:?} inactivity_floor={:?}",db.inactivity_floor_loc());db=db.prune(floor).await.unwrap().sync().await.unwrap();println!("phase=deleted_pruned physical_bytes={}",bytes(Path::new(&path)));drop(db);
 let db=Database::init(ctx.child("deleted_reopen"),cfg(&ctx)).await.unwrap();for i in 0..512{assert!(db.get(&key(i,ordered)).await.unwrap().is_none());}println!("phase=deleted_reopened physical_bytes={}",bytes(Path::new(&path)));
 });
}
