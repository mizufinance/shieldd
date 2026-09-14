//! Complete native API: current versus resident combined blst arithmetic.
use anyhow::{Result, ensure};
use commonware_codec::{Encode, Read};
#[path = "../../../transport.rs"]
mod transport;
use commonware_cryptography::{
    Hasher,
    bls12381::primitives::group::{G1, PreparedG1Msm, Scalar},
    sha256::Sha256,
    zk::pari,
};
use commonware_math::algebra::{Additive, Ring, Space};
use commonware_parallel::Rayon;
use rand::{SeedableRng, rngs::StdRng};
use serde::{Deserialize, Serialize};
use shieldd_native_comparator34_experiment::api::{Initialization, Output, Prover, RequestTimings};
use std::{
    collections::HashSet,
    fs::{self, File},
    io::Write,
    num::NonZeroUsize,
    path::{Path, PathBuf},
    time::Instant,
};
fn sha(bytes: &[u8]) -> String {
    hex::encode(Sha256::hash(&[bytes]).as_ref())
}
#[derive(Serialize)]
struct Identity {
    path: PathBuf,
    sha256: String,
}
fn identify(p: &Path) -> Result<Identity> {
    Ok(Identity {
        path: p.canonicalize()?,
        sha256: sha(&fs::read(p)?),
    })
}
fn record(f: &mut File, v: &impl Serialize) -> Result<()> {
    serde_json::to_writer(&mut *f, v)?;
    f.write_all(b"\n")?;
    f.flush()?;
    Ok(())
}
#[derive(Deserialize)]
struct Manifest {
    schema: String,
    facts: Vec<Fact>,
    invalid_witness_sha256: String,
}
#[derive(Deserialize)]
struct Fact {
    scenario: String,
    witness_sha256: String,
}
struct Bound {
    pointer: usize,
    count: usize,
}
struct Engine {
    bounds: Vec<Bound>,
    masks: [G1; 2],
    commitment: PreparedG1Msm,
    opening: PreparedG1Msm,
    pending: Option<Vec<Scalar>>,
}
impl Engine {
    fn new(prover: &Prover) -> Self {
        let b = prover.msm_bases();
        let bounds = [b.witness, &b.masks, b.quotient, b.opening_a, b.opening_r]
            .into_iter()
            .map(|v| Bound {
                pointer: v.as_ptr() as usize,
                count: v.len(),
            })
            .collect();
        Self {
            bounds,
            masks: b.masks,
            commitment: PreparedG1Msm::new(&[b.witness, b.quotient]),
            opening: PreparedG1Msm::new(&[b.opening_a, b.opening_r]),
            pending: None,
        }
    }
    fn call(
        &mut self,
        index: usize,
        bases: &[G1],
        scalars: &[Scalar],
        strategy: &Rayon,
    ) -> Result<G1, pari::Error> {
        if index >= 5 || bases.len() != scalars.len() {
            return Err(pari::Error::RelationMismatch);
        }
        if index == 1 {
            if bases != self.masks {
                return Err(pari::Error::RelationMismatch);
            }
            return Ok(G1::msm(bases, scalars, strategy));
        }
        let bound = &self.bounds[index];
        if bound.pointer != bases.as_ptr() as usize || bases.len() > bound.count {
            return Err(pari::Error::RelationMismatch);
        }
        if index == 0 || index == 3 {
            if self.pending.is_some() {
                return Err(pari::Error::RelationMismatch);
            }
            self.pending = Some(scalars.to_vec());
            return Ok(G1::zero());
        }
        let prefix = self.pending.take().ok_or(pari::Error::RelationMismatch)?;
        let prepared = if index == 2 {
            &self.commitment
        } else {
            &self.opening
        };
        prepared
            .msm(&[&prefix, scalars], strategy)
            .map_err(|_| pari::Error::RelationMismatch)
    }
    fn prove(
        &mut self,
        prover: &Prover,
        payload: &[u8],
        rng: &mut impl rand::CryptoRng,
        strategy: &Rayon,
    ) -> Result<Output> {
        ensure!(self.pending.is_none(), "unfinished combined MSM");
        let mut calls = 0;
        let out = prover.prove_with_msm(payload, rng, &mut |b, s| {
            let i = calls;
            calls += 1;
            self.call(i, b, s, strategy)
        })?;
        ensure!(calls == 5 && self.pending.is_none(), "changed MSM schedule");
        Ok(out)
    }
}
#[derive(Serialize)]
struct Header {
    schema: &'static str,
    files: Vec<Identity>,
    initialization: Initialization,
    prepared_initialization_ns: u128,
    prepared_resident_bytes: usize,
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
    timing: RequestTimings,
    proof: Identity,
    verified: bool,
}
#[derive(Serialize)]
struct Gate {
    stage: &'static str,
    scenario: String,
    paired_proof_equality: bool,
    changed_statement_rejected: bool,
    truncated_rejected: bool,
}
#[derive(Serialize)]
struct Complete {
    schema: &'static str,
    samples: Identity,
    gate_proofs: usize,
    warmups: usize,
    measured: usize,
    invalid_witness_rejected: bool,
}
#[derive(Serialize)]
struct SelectedInitialization {
    prover: Initialization,
    arithmetic_preparation_ns: u128,
    resident_base_bytes: usize,
    total_ns: u128,
}
fn serve_selected(args: &[PathBuf]) -> Result<()> {
    ensure!(args.len() == 2, "serve KEY TEMPLATE_WITNESS");
    let total = Instant::now();
    let template = fs::read(&args[1])?;
    let (prover, initialization) = Prover::new(&template, &args[0])?;
    drop(template);
    let start = Instant::now();
    let strategy = Rayon::new(NonZeroUsize::new(2).unwrap())?;
    let mut engine = Engine::new(&prover);
    let initialization = SelectedInitialization {
        prover: initialization, arithmetic_preparation_ns: start.elapsed().as_nanos(),
        resident_base_bytes: engine.commitment.resident_bytes() + engine.opening.resident_bytes(),
        total_ns: total.elapsed().as_nanos(),
    };
    transport::serve("shieldd.proving_experiment.selected_c.v1", initialization, |request, payload| {
        match request.op.as_str() {
            "prove" => {
                let out = engine.prove(&prover, payload, &mut rand::rng(), &strategy)?;
                let statement = shieldd_native_comparator34_experiment::witness_codec::decode(payload)?.claimed_statement;
                Ok(transport::Outcome { bytes: out.bytes, statement: Some(hex::encode(statement.encode())), verified: false, timing: Some(out.timings) })
            }
            "verify" | "verify_wrong_domain" => {
                let bytes = hex::decode(&request.statement)?;
                let mut input = bytes.as_slice();
                let statement = Scalar::read_cfg(&mut input, &commonware_cryptography::bls12381::primitives::group::ScalarReadCfg::AllowZero)?;
                ensure!(input.is_empty() && statement.encode().as_ref() == bytes, "noncanonical statement");
                Ok(transport::Outcome { bytes: Vec::new(), statement: None, verified: if request.op=="verify_wrong_domain" {prover.verify_other_domain(payload,&statement)?}else{prover.verify_statement(payload, &statement)?}, timing: None })
            }
            _ => anyhow::bail!("unknown operation"),
        }
    })
}
fn main() -> Result<()> {
    let args: Vec<PathBuf> = std::env::args_os().skip(1).map(PathBuf::from).collect();
    if args.first().is_some_and(|p| p == Path::new("serve")) { return serve_selected(&args[1..]); }
    ensure!(
        args.len() == 3,
        "usage: prepared_msm_full NEW_OUTPUT KEY WITNESSES"
    );
    let out = &args[0];
    let key = &args[1];
    let witnesses = &args[2];
    ensure!(!out.exists(), "preserve prior run");
    fs::create_dir(out)?;
    let manifest_path = witnesses.join("manifest.json");
    let manifest: Manifest = serde_json::from_slice(&fs::read(&manifest_path)?)?;
    ensure!(
        manifest.schema == "shieldd.native_experiment.logical_witnesses.v1"
            && manifest.facts.len() == 6,
        "witness manifest"
    );
    let mut fixtures = Vec::new();
    for fact in manifest.facts {
        let p = witnesses.join(format!("{}.witness", fact.scenario));
        let payload = fs::read(&p)?;
        ensure!(sha(&payload) == fact.witness_sha256, "witness identity");
        fixtures.push((fact.scenario, payload, p));
    }
    let standard = &fixtures
        .iter()
        .find(|(name, _, _)| name == "transfer")
        .ok_or_else(|| anyhow::anyhow!("standard fixture"))?
        .1;
    let strategy = Rayon::new(NonZeroUsize::new(2).unwrap())?;
    let (prover, initialization) = Prover::new(standard, key)?;
    let start = Instant::now();
    let mut engine = Engine::new(&prover);
    let prepared_initialization_ns = start.elapsed().as_nanos();
    let root = Path::new(env!("CARGO_MANIFEST_DIR"));
    let mut files = Vec::new();
    for p in [
        key.clone(),
        manifest_path,
        std::env::current_exe()?,
        root.join("examples/prepared_msm_full.rs"),
        root.join("src/api.rs"),
        root.join("Cargo.lock"),
        root.join("patches/commonware-polynomial-migration.patch"),
    ] {
        files.push(identify(&p)?);
    }
    for (_, _, p) in &fixtures {
        files.push(identify(p)?);
    }
    let mut log = File::create(out.join("samples.jsonl"))?;
    record(
        &mut log,
        &Header {
            schema: "shieldd.native_experiment.prepared_msm_full.v1",
            files,
            initialization,
            prepared_initialization_ns,
            prepared_resident_bytes: engine.commitment.resident_bytes()
                + engine.opening.resident_bytes(),
            workers: 2,
            limits: "Complete native logical-witness API, original circuit/key, ordinary unprofiled callbacks. Combined affine bases prepared once; per-proof scalar-prefix copies and encoding included. Current and candidate share one resident prover and candidate tables. Six paired-mask gates are diagnostic, not independent transactions. Two warmups and five fresh measured proofs per backend. Verification outside timers. No isolated first-proof, production adoption or phone claim.",
        },
    )?;
    let mut hashes = HashSet::new();
    for (block, (name, payload, _)) in fixtures.iter().enumerate() {
        let seed = rand::random::<[u8; 32]>();
        let mut pair = Vec::new();
        for prepared in [false, true] {
            let mut rng = StdRng::from_seed(seed);
            let start = Instant::now();
            let result = if prepared {
                engine.prove(&prover, payload, &mut rng, &strategy)?
            } else {
                prover
                    .prove_with_msm(payload, &mut rng, &mut |b, s| Ok(G1::msm(b, s, &strategy)))?
            };
            let wall_ns = start.elapsed().as_nanos();
            ensure!(
                prover.verify(&result.bytes, payload)?,
                "gate proof rejected"
            );
            let expected = shieldd_native_comparator34_experiment::witness_codec::decode(payload)?
                .claimed_statement;
            ensure!(
                !prover
                    .verify_statement(&result.bytes, &(expected + &Scalar::one()))
                    .unwrap_or(false),
                "changed statement accepted"
            );
            ensure!(
                !prover
                    .verify(&result.bytes[..result.bytes.len() - 1], payload)
                    .unwrap_or(false),
                "truncated proof accepted"
            );
            let backend = if prepared {
                "prepared_combined"
            } else {
                "native"
            };
            let path = out.join(format!("gate-{name}-{backend}.proof"));
            fs::write(&path, &result.bytes)?;
            pair.push(result.bytes);
            record(
                &mut log,
                &Sample {
                    schema: "shieldd.native_experiment.prepared_full_sample.v1",
                    stage: "gate",
                    scenario: name.clone(),
                    backend,
                    block,
                    wall_ns,
                    timing: result.timings,
                    proof: identify(&path)?,
                    verified: true,
                },
            )?;
        }
        ensure!(
            pair[0] == pair[1] && hashes.insert(sha(&pair[0])),
            "paired proof mismatch or duplicate gate masks"
        );
        record(
            &mut log,
            &Gate {
                stage: "parity",
                scenario: name.clone(),
                paired_proof_equality: true,
                changed_statement_rejected: true,
                truncated_rejected: true,
            },
        )?;
        eprintln!("{name} complete paired-proof equality passed");
    }
    let invalid = fs::read(witnesses.join("invalid.witness"))?;
    ensure!(
        sha(&invalid) == manifest.invalid_witness_sha256,
        "invalid fixture identity"
    );
    ensure!(
        engine
            .prove(
                &prover,
                &invalid,
                &mut StdRng::from_seed(rand::random()),
                &strategy
            )
            .is_err(),
        "invalid witness accepted"
    );
    for block in 0..7 {
        for prepared in if block % 2 == 0 {
            [false, true]
        } else {
            [true, false]
        } {
            let mut rng = StdRng::from_seed(rand::random());
            let start = Instant::now();
            let result = if prepared {
                engine.prove(&prover, standard, &mut rng, &strategy)?
            } else {
                prover
                    .prove_with_msm(standard, &mut rng, &mut |b, s| Ok(G1::msm(b, s, &strategy)))?
            };
            let wall_ns = start.elapsed().as_nanos();
            ensure!(
                prover.verify(&result.bytes, standard)? && hashes.insert(sha(&result.bytes)),
                "fresh proof rejected/duplicated"
            );
            let backend = if prepared {
                "prepared_combined"
            } else {
                "native"
            };
            let path = out.join(format!("sample-{block}-{backend}.proof"));
            fs::write(&path, result.bytes)?;
            record(
                &mut log,
                &Sample {
                    schema: "shieldd.native_experiment.prepared_full_sample.v1",
                    stage: if block < 2 { "warmup" } else { "measurement" },
                    scenario: "transfer".into(),
                    backend,
                    block,
                    wall_ns,
                    timing: result.timings,
                    proof: identify(&path)?,
                    verified: true,
                },
            )?;
        }
        eprintln!("complete native API block {block} passed");
    }
    drop(log);
    record(
        &mut File::create(out.join("complete.json"))?,
        &Complete {
            schema: "shieldd.native_experiment.prepared_full_complete.v1",
            samples: identify(&out.join("samples.jsonl"))?,
            gate_proofs: 12,
            warmups: 4,
            measured: 10,
            invalid_witness_rejected: true,
        },
    )?;
    Ok(())
}
