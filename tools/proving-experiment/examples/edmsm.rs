//! Source-bound Edwards-versus-selected-gnark actual Transfer MSM comparison.
#[path = "gnark_msm.rs"]
mod arithmetic;
use arithmetic::{bridge, keys, lowering};
use arithmetic::{checked, identify, point, point_bytes, record, scalar_bytes, scalars, sha, FileIdentity, Go, Manifest, Response};
use anyhow::{ensure, Result};
use ark_ec::{AffineRepr, CurveGroup};
use ark_serialize::CanonicalSerialize;
use serde::Serialize;
use std::{fs::{self, File}, path::{Path, PathBuf}, time::Instant};
fn encode<T:CanonicalSerialize>(v:&T)->Result<Vec<u8>> {let mut b=Vec::new();v.serialize_compressed(&mut b)?;Ok(b)}
#[derive(Serialize)]
struct Header {schema:&'static str, files:Vec<FileIdentity>, baseline:Response, edwards:Response, initialization_wall_ns:u128, workers:usize, limits:&'static str}
#[derive(Serialize)]
struct Sample {schema:&'static str, operation:&'static str, backend:&'static str, block:usize, warmup:bool, points:usize, boundary_ns:u128, output_sha256:String, exact_group_equality:bool, go:Response}
#[derive(Serialize)]
struct Complete {schema:&'static str, samples:FileIdentity, arithmetic_calls_verified:usize}
fn main()->Result<()> {
    ensure!(rayon::current_num_threads()==2,"two workers required");
    let a:Vec<PathBuf>=std::env::args_os().skip(1).map(PathBuf::from).collect();
    ensure!(a.len()==4,"usage: edmsm OPERANDS BASELINE_GO EDWARDS_GO NEW_OUTPUT");
    let dir=&a[0];let out=&a[3];ensure!(!out.exists(),"preserve previous run");fs::create_dir(out)?;
    let manifest_path=dir.join("manifest.json");let m:Manifest=serde_json::from_slice(&fs::read(&manifest_path)?)?;
    ensure!(m.schema=="shieldd.proving_experiment.msm_operands.v1" && m.operations.len()==5 && m.workers==2,"operand manifest");
    drop(checked(&m.proof)?);drop(checked(&m.key)?);
    let root=Path::new(env!("CARGO_MANIFEST_DIR"));let mut files=Vec::new();
    for p in [manifest_path,a[1].clone(),a[2].clone(),std::env::current_exe()?,root.join("examples/edmsm.rs"),root.join("examples/gnark_msm.rs"),root.join("Cargo.lock"),root.join("edmsm/go.mod"),root.join("edmsm/go.sum"),root.join("edmsm/upstream.json"),root.join("edmsm/main.go"),root.join("edmsm/edwards/adapter.go"),root.join("edmsm/edwards/points.go"),root.join("edmsm/edwards/multiexp.go")]{files.push(identify(&p)?);}
    let start=Instant::now();let (mut baseline,ready_baseline)=Go::start(&a[1],dir)?;
    let (mut candidate,ready_edwards)=Go::start(&a[2],dir)?;let initialization_wall_ns=start.elapsed().as_nanos();
    let samples=out.join("samples.jsonl");let mut log=File::create(&samples)?;
    record(&mut log,&Header{schema:"shieldd.proving_experiment.edmsm_header.v1",files,baseline:ready_baseline,edwards:ready_edwards,initialization_wall_ns,workers:2,limits:"Verified Transfer operands; two resident workers, one active MSM at a time; two warmups and three balanced measured pairs per combined group. Rust scalar encoding, IPC, Go canonical decoding and checked result conversion are inside each boundary. Initial subgroup/base loading and Edwards preparation are separate. Same current field arithmetic and Go1.25.7. No window sweep, full proof, phone or old-reference speedup claim."})?;
    let mut verified=0;
    for (name,left,right) in [("commitment","witness","quotient"),("opening","opening_a","opening_r")] {
        let x=m.operations.iter().find(|o|o.name==left).unwrap();let y=m.operations.iter().find(|o|o.name==right).unwrap();
        let sx=scalars(&checked(&x.scalars)?)?;let sy=scalars(&checked(&y.scalars)?)?;
        ensure!(sx.len()==x.count && sy.len()==y.count,"scalar counts");
        let expected=point(&checked(&x.expected)?)?.into_group()+point(&checked(&y.expected)?)?;
        for block in 0..5 {for ed in if block%2==0{[false,true]}else{[true,false]} {
            let start=Instant::now();let mut bytes=scalar_bytes(&sx);bytes.extend(scalar_bytes(&sy));
            let (response,output)=if ed {candidate.call(name,&bytes)?}else{baseline.call(name,&bytes)?};
            let result=point(&output)?.into_group();let boundary_ns=start.elapsed().as_nanos();
            ensure!(result==expected,"MSM differs from verified real-proof operands");verified+=1;
            record(&mut log,&Sample{schema:"shieldd.proving_experiment.edmsm_sample.v1",operation:name,backend:if ed{"edwards"}else{"gnark_selected"},block,warmup:block<2,points:x.count+y.count,boundary_ns,output_sha256:sha(&point_bytes(&result.into_affine())),exact_group_equality:true,go:response})?;
        }}
        eprintln!("{name}: exact actual-operand comparison passed");
    }
    baseline.close()?;candidate.close()?;
    fs::write(out.join("complete.json"),serde_json::to_vec_pretty(&Complete{schema:"shieldd.proving_experiment.edmsm_complete.v1",samples:identify(&samples)?,arithmetic_calls_verified:verified})?)?;
    Ok(())
}
