//! Matched two-call versus combined resident-base MSM boundary diagnostic.
#[path = "gnark_msm.rs"]
mod arithmetic;
use anyhow::{ensure, Result};
use arithmetic::{bridge, keys, lowering};
use arithmetic::{
    checked, identify, point, point_bytes, record, scalar_bytes, scalars, sha, FileIdentity, Go,
    Manifest, Response,
};
use ark_bls12_377::G1Projective;
use ark_ec::{AffineRepr, CurveGroup};
use ark_ff::AdditiveGroup;
use ark_serialize::CanonicalSerialize;
use serde::Serialize;
use std::{
    fs::{self, File},
    path::{Path, PathBuf},
    time::Instant,
};
fn encode<T: CanonicalSerialize>(value: &T) -> Result<Vec<u8>> {
    let mut out = Vec::new();
    value.serialize_compressed(&mut out)?;
    Ok(out)
}
#[derive(Serialize)]
struct Header {
    schema: &'static str,
    files: Vec<FileIdentity>,
    initialization: Response,
    workers: usize,
    limits: &'static str,
}
#[derive(Serialize)]
struct Sample {
    schema: &'static str,
    operation: &'static str,
    block: usize,
    warmup: bool,
    combined: bool,
    points: usize,
    boundary_ns: u128,
    crypto_ns: u64,
    output_sha256: String,
    exact_group_equality: bool,
    calls: Vec<Response>,
}
fn main() -> Result<()> {
    ensure!(rayon::current_num_threads() == 2, "two workers required");
    let args: Vec<PathBuf> = std::env::args_os().skip(1).map(PathBuf::from).collect();
    ensure!(
        args.len() == 3,
        "usage: gnark_combined OPERANDS GO_BINARY NEW_JSONL"
    );
    let dir = &args[0];
    let binary = &args[1];
    let out = &args[2];
    ensure!(!out.exists(), "preserve previous samples");
    let manifest_path = dir.join("manifest.json");
    let m: Manifest = serde_json::from_slice(&fs::read(&manifest_path)?)?;
    ensure!(
        m.schema == "shieldd.proving_experiment.msm_operands.v1"
            && m.operations.len() == 5
            && m.workers == 2,
        "operand manifest"
    );
    drop(checked(&m.proof)?);
    let (mut go, ready) = Go::start(binary, dir)?;
    let root = Path::new(env!("CARGO_MANIFEST_DIR"));
    let mut files = Vec::new();
    for p in [
        manifest_path,
        binary.clone(),
        std::env::current_exe()?,
        root.join("examples/gnark_combined.rs"),
        root.join("examples/gnark_msm.rs"),
        root.join("Cargo.lock"),
        root.parent().unwrap().join("gnark/cmd/msmworker/main.go"),
    ] {
        files.push(identify(&p)?);
    }
    let mut log = File::create(out)?;
    record(&mut log, &Header { schema: "shieldd.proving_experiment.gnark_combined_header.v1", files, initialization: ready, workers: 2, limits: "Two warmup pairs and three measured pairs; identical real-prover scalars; canonical conversion/IPC/result decoding and point addition included. Go bases initialized directly into shared immutable contiguous views, no per-proof base copies. Masks remain separate. Arithmetic diagnostic, not complete proving time." })?;
    for (name, left, right) in [
        ("commitment", "witness", "quotient"),
        ("opening", "opening_a", "opening_r"),
    ] {
        let a = m.operations.iter().find(|o| o.name == left).unwrap();
        let b = m.operations.iter().find(|o| o.name == right).unwrap();
        let sa = scalars(&checked(&a.scalars)?)?;
        let sb = scalars(&checked(&b.scalars)?)?;
        ensure!(sa.len() == a.count && sb.len() == b.count, "scalar counts");
        let expected = point(&checked(&a.expected)?)?.into_group() + point(&checked(&b.expected)?)?;
        for block in 0..5 {
            for combined in if block % 2 == 0 {
                [false, true]
            } else {
                [true, false]
            } {
                let start = Instant::now();
                let mut calls = Vec::new();
                let result = if combined {
                    let mut bytes = scalar_bytes(&sa);
                    bytes.extend(scalar_bytes(&sb));
                    let (r, output) = go.call(name, &bytes)?;
                    calls.push(r);
                    point(&output)?.into_group()
                } else {
                    let mut sum = G1Projective::ZERO;
                    for (op, s) in [(left, &sa), (right, &sb)] {
                        let bytes = scalar_bytes(s);
                        let (r, output) = go.call(op, &bytes)?;
                        calls.push(r);
                        sum += point(&output)?;
                    }
                    sum
                };
                let boundary_ns = start.elapsed().as_nanos();
                ensure!(
                    result == expected,
                    "combined MSM differs from original real proof"
                );
                record(
                    &mut log,
                    &Sample {
                        schema: "shieldd.proving_experiment.gnark_combined_sample.v1",
                        operation: name,
                        block,
                        warmup: block < 2,
                        combined,
                        points: a.count + b.count,
                        boundary_ns,
                        crypto_ns: calls.iter().map(|r| r.msm_ns).sum(),
                        output_sha256: sha(&point_bytes(&result.into_affine())),
                        exact_group_equality: true,
                        calls,
                    },
                )?;
            }
        }
        eprintln!("{name}: matched combined arithmetic passed");
    }
    go.close()?;
    Ok(())
}
