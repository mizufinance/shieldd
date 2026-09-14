//! Full logical-witness API parity and bounded foreign-arithmetic measurements.
#[path = "gnark_msm.rs"]
mod arithmetic;
use arithmetic::{bridge, keys, lowering};
#[path = "../src/worker.rs"]
mod worker;
#[path = "../transport.rs"]
mod transport;

use anyhow::{ensure, Context, Result};
use arithmetic::{
    checked, identify, point, point_bytes, record, scalar_bytes, sha, FileIdentity, Go, Manifest,
};
use ark_bls12_377::{Bls12_377, Fr, G1Affine, G1Projective};
use ark_ec::{AffineRepr, VariableBaseMSM};
use ark_ff::AdditiveGroup;
use ark_serialize::CanonicalSerialize;
use rand::{
    rngs::{OsRng, StdRng},
    RngCore, SeedableRng,
};
use serde::{Deserialize, Serialize};
use sha2::{Digest, Sha256};
use std::{
    collections::HashSet,
    fs::{self, File},
    path::{Path, PathBuf},
    sync::Arc,
    time::Instant,
};
use zkpari::{PreparedProver, Proof};

const CLASSES: [&str; 5] = ["witness", "masks", "quotient", "opening_a", "opening_r"];
fn encode<T: CanonicalSerialize>(value: &T) -> Result<Vec<u8>> {
    let mut out = Vec::new();
    value.serialize_compressed(&mut out)?;
    Ok(out)
}
fn relation(dir: &Path) -> Result<Arc<bridge::Relation>> {
    Ok(Arc::new(bridge::Relation::read(
        &dir.join("transfer.r1cs"),
        serde_json::from_slice(&fs::read(dir.join("metadata.json"))?)?,
    )?))
}
struct Bound {
    pointer: usize,
    count: usize,
}
struct Foreign {
    go: Go,
    ranges: Vec<Bound>,
    masks: [G1Affine; 2],
    combined: bool,
    pending: Option<Vec<u8>>,
}
impl Foreign {
    fn start(
        prover: &PreparedProver<Bls12_377>,
        key: &Path,
        dir: &Path,
        binary: &Path,
    ) -> Result<(Self, arithmetic::Response)> {
        let m: Manifest = serde_json::from_slice(&fs::read(dir.join("manifest.json"))?)?;
        ensure!(
            m.schema == "shieldd.proving_experiment.msm_operands.v1"
                && m.workers == 2
                && m.operations.len() == 5,
            "operand manifest"
        );
        ensure!(
            identify(key)?.sha256 == m.key.sha256,
            "resident bases belong to another key"
        );
        let pk = prover.proving_key();
        let masks = [pk.sigma_mask_const, pk.sigma_mask_linear];
        let slices: [&[G1Affine]; 5] = [&pk.sigma_w, &masks, &pk.sigma_q, &pk.sigma_a, &pk.sigma_r];
        let mut ranges = Vec::new();
        for ((name, bases), op) in CLASSES.iter().zip(slices).zip(&m.operations) {
            ensure!(
                *name == op.name && bases.len() == op.count,
                "key slice/count mismatch"
            );
            let mut digest = Sha256::new();
            for p in bases {
                digest.update(point_bytes(p));
            }
            ensure!(
                hex::encode(digest.finalize()) == op.bases.sha256,
                "actual key bases differ from worker bases"
            );
            // Check the file before handing its source-bound manifest to the child.
            drop(checked(&op.bases)?);
            ranges.push(Bound {
                pointer: bases.as_ptr() as usize,
                count: bases.len(),
            });
        }
        let (go, ready) = Go::start(binary, dir)?;
        Ok((
            Self {
                go,
                ranges,
                masks,
                combined: false,
                pending: None,
            },
            ready,
        ))
    }
    fn msm(&mut self, index: usize, bases: &[G1Affine], scalars: &[Fr]) -> Result<G1Projective> {
        ensure!(
            index < 5 && bases.len() == scalars.len(),
            "unexpected MSM call"
        );
        let bound = &self.ranges[index];
        if index == 1 {
            ensure!(bases == self.masks, "mask bases changed");
            return Ok(G1Projective::msm_unchecked(bases, scalars));
        }
        validate_range(bound, bases.as_ptr() as usize, bases.len())?;
        let mut bytes = scalar_bytes(scalars);
        // Zero coefficients preserve an exact prefix MSM, including a zero polynomial.
        bytes.resize(32 * bound.count, 0);
        let name = if self.combined {
            if index == 0 || index == 3 {
                ensure!(self.pending.is_none(), "unfinished combined MSM");
                self.pending = Some(bytes);
                return Ok(G1Projective::ZERO);
            }
            let mut prefix = self.pending.take().context("missing combined MSM prefix")?;
            prefix.extend(bytes);
            bytes = prefix;
            if index == 2 {
                "commitment"
            } else {
                "opening"
            }
        } else {
            CLASSES[index]
        };
        let (_, output) = self.go.call(name, &bytes)?;
        Ok(point(&output)?.into_group())
    }
    fn prove(
        &mut self,
        prover: &PreparedProver<Bls12_377>,
        public: &[Fr],
        witness: &[Fr],
        rng: &mut (impl rand::RngCore + rand::CryptoRng),
        combined: bool,
    ) -> Result<Proof<Bls12_377>> {
        ensure!(self.pending.is_none(), "unconsumed combined MSM");
        self.combined = combined;
        let mut calls = 0;
        let mut failure = None;
        let result = prover.prove_with_msm(public, witness, rng, &mut |bases, scalars| {
            let index = calls;
            calls += 1;
            if failure.is_some() {
                return G1Projective::ZERO;
            }
            match self.msm(index, bases, scalars) {
                Ok(p) => p,
                Err(e) => {
                    failure = Some(e);
                    G1Projective::ZERO
                }
            }
        });
        // An infallible upstream callback cannot propagate I/O errors itself.
        // Never admit its provisional result if any foreign operation failed.
        if let Some(e) = failure {
            return Err(e);
        }
        let proof = result?;
        ensure!(self.pending.is_none(), "incomplete combined MSM");
        ensure!(calls == 5, "changed prover MSM schedule");
        Ok(proof)
    }
}
fn validate_range(bound: &Bound, pointer: usize, count: usize) -> Result<()> {
    ensure!(
        pointer == bound.pointer && count <= bound.count,
        "MSM key slice mapping mismatch"
    );
    Ok(())
}
#[derive(Deserialize)]
struct Facts {
    facts: Vec<Fact>,
}
#[derive(Deserialize)]
struct Fact {
    scenario: String,
    witness_sha256: String,
}
#[derive(Serialize)]
struct Header {
    schema: &'static str,
    files: Vec<FileIdentity>,
    worker_initialization: worker::Initialization,
    foreign_initialization: arithmetic::Response,
    total_initialization_ns: u128,
    workers: usize,
    limits: &'static str,
}
#[derive(Serialize)]
struct Sample {
    schema: &'static str,
    stage: &'static str,
    scenario: String,
    backend: &'static str,
    block: usize,
    wall_ns: u128,
    timing: worker::Timings,
    proof: FileIdentity,
    statement: String,
    verified: bool,
}
#[derive(Serialize)]
struct Gate {
    stage: &'static str,
    scenario: String,
    exact_proof_equality: bool,
    malformed_rejected: bool,
    changed_statement_rejected: bool,
}
#[derive(Serialize)]
struct Completion {
    schema: &'static str,
    samples: FileIdentity,
    measured: usize,
    warmups: usize,
    paired_gate_proofs: usize,
    invalid_witness_rejected: bool,
}

fn run(
    old: &Path,
    key: &Path,
    solver: &Path,
    artifacts: &Path,
    operands: &Path,
    msm: &Path,
    out: &Path,
    compare_combined: bool,
) -> Result<()> {
    ensure!(!out.exists(), "preserve prior run");
    fs::create_dir(out)?;
    let root = Path::new(env!("CARGO_MANIFEST_DIR"))
        .parent()
        .unwrap()
        .parent()
        .unwrap();
    let facts_path = root.join("tools/proving-experiment/cache/logical-facts.json");
    let facts: Facts = serde_json::from_slice(&fs::read(&facts_path)?)?;
    ensure!(facts.facts.len() == 6, "six scenarios required");
    let mut fixtures = Vec::new();
    for f in facts.facts {
        let path = if f.scenario == "transfer_over_limit_disclosure" {
            old.join("over_limit_disclosure.bin")
        } else {
            root.join(format!(
                "tools/gnark/internal/testfixtures/vectors/{}_witness.bin",
                f.scenario
            ))
        };
        let payload = fs::read(&path)?;
        ensure!(sha(&payload) == f.witness_sha256, "fixture hash");
        fixtures.push((f.scenario, payload, path));
    }
    let mut files = Vec::new();
    for p in [
        key.to_path_buf(),
        solver.to_path_buf(),
        msm.to_path_buf(),
        operands.join("manifest.json"),
        std::env::current_exe()?,
        facts_path,
        old.join("metadata.json"),
        old.join("transfer.r1cs"),
    ] {
        files.push(identify(&p)?);
    }
    for p in [
        "examples/gnark_msm_full.rs",
        "examples/gnark_msm.rs",
        "src/worker.rs",
        "src/bridge.rs",
        "src/lowering.rs",
        "src/keys.rs",
        "Cargo.toml",
        "Cargo.lock",
        "vendor/zkpari/src/prover.rs",
        "vendor/zkpari/src/prepared.rs",
    ] {
        files.push(identify(&Path::new(env!("CARGO_MANIFEST_DIR")).join(p))?);
    }
    for (_, _, p) in &fixtures {
        files.push(identify(p)?);
    }
    let mut log = File::create(out.join("samples.jsonl"))?;
    let start = Instant::now();
    let (mut worker, initialization) = worker::Worker::new(old, key, solver, artifacts)?;
    let (mut foreign, ready) = Foreign::start(&worker.prover, key, operands, msm)?;
    record(&mut log, &Header { schema: "shieldd.proving_experiment.gnark_full_header.v1", files, worker_initialization: initialization, foreign_initialization: ready, total_initialization_ns: start.elapsed().as_nanos(), workers: 2, limits: "Complete logical-witness API; original relation/key; native mask MSM; four separate or two combined persistent Go MSM calls, ordinary unprofiled callback. Six-scenario paired-mask diagnostic proofs are not independent transactions. Warmups and measurements use independent fresh seeds. Same resident worker/key for both backends; verification outside timers. No first-proof or phone measurements." })?;
    let mut hashes = HashSet::new();
    for (block, (name, payload, _)) in fixtures.iter().enumerate() {
        let mut seed = [0u8; 32];
        OsRng.fill_bytes(&mut seed);
        let mut proofs = Vec::new();
        for use_go in [false, true] {
            let mut rng = StdRng::from_seed(seed);
            let start = Instant::now();
            let (proof, statement, timing) = worker.prove_using(payload, |p, public, w| {
                if compare_combined || use_go {
                    foreign.prove(p, public, w, &mut rng, compare_combined && use_go)
                } else {
                    Ok(p.prove(public, w, &mut rng)?)
                }
            })?;
            let wall_ns = start.elapsed().as_nanos();
            ensure!(worker.verify(&proof, &statement)?, "full gate verification");
            let backend = if compare_combined {
                if use_go {
                    "gnark_combined"
                } else {
                    "gnark_separate"
                }
            } else if use_go {
                "gnark"
            } else {
                "arkworks"
            };
            let path = out.join(format!("gate-{name}-{backend}.proof"));
            fs::write(&path, &proof)?;
            record(
                &mut log,
                &Sample {
                    schema: "shieldd.proving_experiment.gnark_full_sample.v1",
                    stage: "gate",
                    scenario: name.clone(),
                    backend,
                    block,
                    wall_ns,
                    timing,
                    proof: identify(&path)?,
                    statement: statement.clone(),
                    verified: true,
                },
            )?;
            proofs.push(proof);
            let truncated = worker
                .verify(&proofs[proofs.len() - 1][..167], &statement)
                .unwrap_or(false);
            let mut changed = hex::decode(&statement)?;
            changed[0] ^= 1;
            ensure!(
                !truncated
                    && !worker
                        .verify(&proofs[proofs.len() - 1], &hex::encode(changed))
                        .unwrap_or(false),
                "negative proof checks"
            );
        }
        ensure!(proofs[0] == proofs[1], "complete paired-mask proof differs");
        ensure!(
            hashes.insert(sha(&proofs[0])),
            "duplicate independent gate proof"
        );
        record(
            &mut log,
            &Gate {
                stage: "parity",
                scenario: name.clone(),
                exact_proof_equality: true,
                malformed_rejected: true,
                changed_statement_rejected: true,
            },
        )?;
        eprintln!("{name}: complete paired-proof equality and verification passed");
    }
    let invalid = fs::read(root.join(
        "tools/gnark/internal/testfixtures/vectors/transfer_accumulator_over_limit_witness.bin",
    ))?;
    let mut rng = StdRng::from_rng(OsRng)?;
    ensure!(
        worker
            .prove_using(&invalid, |p, public, w| foreign.prove(
                p,
                public,
                w,
                &mut rng,
                compare_combined
            ))
            .is_err(),
        "invalid witness accepted"
    );
    let (name, payload, _) = fixtures
        .iter()
        .find(|(name, _, _)| name == "transfer")
        .context("standard fixture")?;
    for block in 0..7 {
        for use_go in if block % 2 == 0 {
            [false, true]
        } else {
            [true, false]
        } {
            let mut rng = StdRng::from_rng(OsRng)?;
            let start = Instant::now();
            let (proof, statement, timing) = worker.prove_using(payload, |p, public, w| {
                if compare_combined || use_go {
                    foreign.prove(p, public, w, &mut rng, compare_combined && use_go)
                } else {
                    Ok(p.prove(public, w, &mut rng)?)
                }
            })?;
            let wall_ns = start.elapsed().as_nanos();
            ensure!(
                worker.verify(&proof, &statement)? && hashes.insert(sha(&proof)),
                "fresh complete proof rejected/duplicated"
            );
            let backend = if compare_combined {
                if use_go {
                    "gnark_combined"
                } else {
                    "gnark_separate"
                }
            } else if use_go {
                "gnark"
            } else {
                "arkworks"
            };
            let path = out.join(format!("sample-{block}-{backend}.proof"));
            fs::write(&path, proof)?;
            record(
                &mut log,
                &Sample {
                    schema: "shieldd.proving_experiment.gnark_full_sample.v1",
                    stage: if block < 2 { "warmup" } else { "measurement" },
                    scenario: name.clone(),
                    backend,
                    block,
                    wall_ns,
                    timing,
                    proof: identify(&path)?,
                    statement,
                    verified: true,
                },
            )?;
        }
        eprintln!("complete API block {block} passed");
    }
    foreign.go.close()?;
    drop(worker);
    drop(log);
    let completion = Completion {
        schema: "shieldd.proving_experiment.gnark_full_complete.v1",
        samples: identify(&out.join("samples.jsonl"))?,
        measured: 10,
        warmups: 4,
        paired_gate_proofs: 12,
        invalid_witness_rejected: true,
    };
    fs::write(
        out.join("complete.json"),
        serde_json::to_vec_pretty(&completion)?,
    )?;
    Ok(())
}
#[derive(Serialize)]
struct SelectedInitialization {
    prover: worker::Initialization,
    arithmetic_preparation_ns: u128,
    go_initialization_ns: u64,
    resident_base_bytes: usize,
    total_ns: u128,
}
fn serve_selected(args: &[PathBuf]) -> Result<()> {
    ensure!(args.len() == 6, "serve OLD KEY SOLVER ARTIFACTS OPERANDS MSM_WORKER");
    let total = Instant::now();
    let (mut api, prover) = worker::Worker::new(&args[0], &args[1], &args[2], &args[3])?;
    let start = Instant::now();
    let (mut foreign, ready) = Foreign::start(&api.prover, &args[1], &args[4], &args[5])?;
    let initialization = SelectedInitialization {
        prover, arithmetic_preparation_ns: start.elapsed().as_nanos(),
        go_initialization_ns: ready.initialization_ns,
        resident_base_bytes: ready.resident_base_bytes,
        total_ns: total.elapsed().as_nanos(),
    };
    transport::serve("shieldd.proving_experiment.selected_b.v1", initialization, |request, payload| {
        match request.op.as_str() {
            "prove" => {
                let (bytes, statement, timing) = api.prove_using(payload, |prover, public, witness| {
                    foreign.prove(prover, public, witness, &mut OsRng, true)
                })?;
                Ok(transport::Outcome { bytes, statement: Some(statement), verified: false, timing: Some(timing) })
            }
            "verify" => Ok(transport::Outcome { bytes: Vec::new(), statement: None, verified: api.verify(payload, &request.statement)?, timing: None }),
            _ => anyhow::bail!("unknown operation"),
        }
    })?;
    foreign.go.close()
}
fn main() -> Result<()> {
    ensure!(rayon::current_num_threads() == 2, "two workers required");
    let args: Vec<PathBuf> = std::env::args_os().skip(1).map(PathBuf::from).collect();
    if args.first().is_some_and(|p| p == Path::new("serve")) { return serve_selected(&args[1..]); }
    ensure!(
        args.len() == 8 && (args[7] == Path::new("arkworks-v-gnark") || args[7] == Path::new("separate-v-combined")),
        "usage: gnark_msm_full OLD KEY SOLVER ARTIFACTS OPERANDS MSM_WORKER NEW_OUTPUT arkworks-v-gnark|separate-v-combined"
    );
    run(
        &args[0],
        &args[1],
        &args[2],
        &args[3],
        &args[4],
        &args[5],
        &args[6],
        args[7] == Path::new("separate-v-combined"),
    )
}
#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn key_slice_binding_rejects_other_addresses_and_oversized_prefixes() {
        let b = Bound {
            pointer: 128,
            count: 10,
        };
        assert!(validate_range(&b, 128, 10).is_ok());
        assert!(validate_range(&b, 128, 0).is_ok());
        assert!(validate_range(&b, 128, 11).is_err());
        assert!(validate_range(&b, 129, 10).is_err());
    }
}
