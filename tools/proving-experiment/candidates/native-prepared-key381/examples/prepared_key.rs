//! Convert and validate the complete existing Transfer key without a new setup.
use anyhow::{Result, ensure};
use commonware_codec::{Encode, EncodeSize, RangeCfg};
use commonware_cryptography::{Hasher, sha256::Sha256, bls12381::primitives::group::G1, zk::pari};
use commonware_math::algebra::Additive;
use commonware_parallel::Rayon;
use serde::Serialize;
use std::{fs, path::PathBuf, num::NonZeroUsize, time::Instant};
#[derive(Serialize)]
struct Rejection { case: &'static str, rejected: bool }
#[derive(Serialize)]
struct Report {
    schema: &'static str, source_key_sha256: String, prepared_key_sha256: String,
    source_bytes: usize, prepared_bytes: usize, expanded_query_points: usize,
    source_checked_loading_ns: u128, prepared_encoding_ns: u128, prepared_checked_loading_ns: u128,
    all_validation_ns: u128, total_ns: u128, complete_key_equal: bool, original_canonical_bytes_equal: bool,
    relation_digest: String, verifying_key_sha256: String, rejections: Vec<Rejection>, limits: &'static str,
}
fn hash(bytes: &[u8]) -> String { hex::encode(Sha256::hash(&[bytes]).as_ref()) }
fn main() -> Result<()> {
    let args = std::env::args().collect::<Vec<_>>();
    ensure!(args.len()==3, "usage: prepared_key ORIGINAL_KEY NEW_OUTPUT");
    let out=PathBuf::from(&args[2]); ensure!(!out.exists(),"preserve completed output");
    let total=Instant::now();let strategy=Rayon::new(NonZeroUsize::new(2).unwrap())?;
    let cfg=(RangeCfg::exact(1),RangeCfg::exact(1));
    let clock=Instant::now();let original=fs::read(&args[1])?;
    ensure!(hash(&original)=="1e11ac4e5ee43d719aeb8814dc27d2545266e5af4dcf37f5eae5d39f8e48fa0d", "wrong pinned Transfer key");
    let mut input=original.as_slice();let key=pari::ProvingKey::read_with_strategy(&mut input,&cfg,&strategy)?;
    ensure!(input.is_empty() && key.encode().as_ref()==original,"original canonical key rejected");
    ensure!(hex::encode(key.verifying_key().relation_digest())=="722fba7093a6188bba83708f0abe409a39cf34fa4451b95594e82781b68f3783","wrong Transfer relation");
    let source_checked_loading_ns=clock.elapsed().as_nanos();
    let clock=Instant::now();let bytes=key.encode_prepared();let prepared_encoding_ns=clock.elapsed().as_nanos();
    let clock=Instant::now();let mut input=bytes.as_slice();let decoded=pari::ProvingKey::read_prepared_with_strategy(&mut input,&cfg,&strategy)?;
    ensure!(input.is_empty() && decoded.encode_prepared()==bytes,"prepared canonical key rejected");
    let prepared_checked_loading_ns=clock.elapsed().as_nanos();
    let clock=Instant::now();ensure!(key==decoded,"complete decoded key differs");
    ensure!(decoded.encode().as_ref()==original,"original canonical key bytes changed");
    let b=key.msm_bases();let witness=b.witness.iter().enumerate().filter(|(_,p)|**p!=G1::zero()).map(|(i,_)|i as u32).collect::<Vec<_>>();
    let expanded_query_points=witness.len()+b.quotient.len()+b.opening_a.len()+b.opening_r.len();
    ensure!(bytes.len()==original.len()+48*expanded_query_points+8,"unexpected storage layout");
    let first_point=8+key.verifying_key().encode_size()+key.commitment_keys().to_vec().encode_size()+witness.len().encode_size()+witness[0].encode_size();
    let reject=|bad:&[u8]| {
        let mut input=bad;
        !pari::ProvingKey::read_prepared_with_strategy(&mut input,&cfg,&strategy)
            .is_ok_and(|k|input.is_empty() && k.encode_prepared()==bad)
    };
    let mut rejections=Vec::new();
    for (case,bad) in [("old_format",original.as_slice()),("short_header",&bytes[..7]),("truncated_final_vector",&bytes[..bytes.len()-1])] {
        ensure!(reject(bad),"accepted {case}");rejections.push(Rejection{case,rejected:true});
    }
    let mut bad=bytes.clone();bad[0]^=1;ensure!(reject(&bad),"wrong storage marker accepted");rejections.push(Rejection{case:"wrong_marker",rejected:true});
    let mut bad=bytes.clone();bad[8]^=1;ensure!(reject(&bad),"wrong relation binding accepted");rejections.push(Rejection{case:"wrong_relation_binding",rejected:true});
    let mut bad=bytes.clone();bad[first_point]|=0x20;ensure!(reject(&bad),"noncanonical query accepted");rejections.push(Rejection{case:"noncanonical_query",rejected:true});
    let mut bad=bytes.clone();bad[first_point..first_point+96].fill(0);bad[first_point]=0x40;ensure!(reject(&bad),"identity query accepted");rejections.push(Rejection{case:"identity_query",rejected:true});
    let outside_group=(1u8..=64).find_map(|x|{let mut p=[0;48];p[0]=0x80;p[47]=x;blst::min_pk::PublicKey::deserialize(&p).ok().filter(|p|p.validate().is_err())}).unwrap().serialize();
    let mut bad=bytes.clone();bad[first_point..first_point+96].copy_from_slice(&outside_group);ensure!(reject(&bad),"outside-subgroup query accepted");rejections.push(Rejection{case:"outside_subgroup_query",rejected:true});
    let all_validation_ns=clock.elapsed().as_nanos();
    let report=Report{schema:"shieldd.native_prepared_key381_conversion.v1",source_key_sha256:hash(&original),prepared_key_sha256:hash(&bytes),source_bytes:original.len(),prepared_bytes:bytes.len(),expanded_query_points,source_checked_loading_ns,prepared_encoding_ns,prepared_checked_loading_ns,all_validation_ns,total_ns:total.elapsed().as_nanos(),complete_key_equal:true,original_canonical_bytes_equal:true,relation_digest:hex::encode(key.verifying_key().relation_digest()),verifying_key_sha256:hash(&key.verifying_key().encode()),rejections,limits:"Offline conversion/validation of the existing complete Transfer key, including exact full decoded-key and original canonical-byte equality. Only four nonidentity query-vector roles expand; VK/commitment keys/masks retain original codecs. All curve/subgroup/canonical checks remain. No new setup, full API timing or phone claim."};
    fs::create_dir(&out)?;fs::write(out.join("native.prepared.pk"),bytes)?;fs::write(out.join("complete.json"),serde_json::to_vec_pretty(&report)?)?;
    Ok(())
}
