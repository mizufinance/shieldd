//! Matched real-Transfer kernels for MSM tuning, never complete witness-to-proof timings.
use crate::{
    bridge, lowering,
    msm::{self, Details, Method},
    Solved,
};
use anyhow::{ensure, Context, Result};
use ark_bls12_377::{Bls12_377, G1Projective};
use ark_ec::VariableBaseMSM;
use ark_relations::gr1cs::predicate::polynomial_constraint::SR1CS_PREDICATE_LABEL;
use ark_std::rand::{
    rngs::{OsRng, StdRng},
    RngCore, SeedableRng,
};
use serde::Serialize;
use sha2::{Digest, Sha256};
use std::{
    fs::{self, File, OpenOptions},
    io::{BufWriter, Write},
    path::{Path, PathBuf},
    sync::Arc,
    time::Instant,
};
use zkpari::{PreparedProver, ZkPari};

#[derive(Serialize)]
struct Identity {
    path: PathBuf,
    sha256: String,
}
fn identity(path: &Path) -> Result<Identity> {
    Ok(Identity {
        path: path.canonicalize()?,
        sha256: hex::encode(Sha256::digest(fs::read(path)?)),
    })
}
fn sources(path: &Path, result: &mut Vec<Identity>) -> Result<()> {
    if path.is_file() {
        result.push(identity(path)?);
    } else {
        for entry in fs::read_dir(path)? {
            sources(&entry?.path(), result)?;
        }
    }
    Ok(())
}

#[derive(Serialize)]
struct Header {
    schema: &'static str,
    boundary: &'static str,
    randomness: &'static str,
    key_loading_and_relation_preparation_ns: u128,
    reusable_table_preparation_ns: u128,
    reusable_table_bytes: usize,
    workers: usize,
    sources: Vec<Identity>,
    key: Identity,
    witness: Identity,
    metadata: Identity,
    executable: Identity,
    warmup_blocks: usize,
    measured_blocks: usize,
    methods: Vec<Method>,
}
#[derive(Serialize)]
struct Operation {
    name: &'static str,
    real_count: usize,
    elapsed_ns: u128,
    details: Details,
}
#[derive(Serialize)]
struct Sample {
    schema: &'static str,
    block: usize,
    warmup: bool,
    order: usize,
    method: Method,
    presolved_kernel_ns: u128,
    commitment_msm_ns: u64,
    opening_msm_ns: u64,
    operations: Vec<Operation>,
    proof_sha256: String,
    verified: bool,
    identical_proof_for_matched_randomness: bool,
}
fn write_record(out: &mut BufWriter<File>, record: &impl Serialize) -> Result<()> {
    serde_json::to_writer(&mut *out, record)?;
    out.write_all(b"\n")?;
    out.flush()?;
    Ok(())
}

pub fn run(old: &Path, key: &Path, out: &Path, alternative: Method) -> Result<()> {
    ensure!(!out.exists(), "probe output already exists");
    ensure!(
        !out.parent()
            .context("output parent")?
            .canonicalize()?
            .starts_with(old.canonicalize()?),
        "preserve old campaign"
    );
    ensure!(
        [1, 2].contains(&rayon::current_num_threads()),
        "diagnostics require one or two workers"
    );
    let begin = Instant::now();
    let original = crate::relation(old)?;
    let lowered = Arc::new(lowering::Lowered::compile(&original));
    let cs = ZkPari::<Bls12_377>::circuit_to_keygen_cs(lowering::Circuit {
        relation: lowered.clone(),
        original: None,
    })?;
    let matrices = cs.to_matrices().context("missing matrices")?[SR1CS_PREDICATE_LABEL].clone();
    let prover = PreparedProver::new(bridge::decode(&fs::read(key)?)?, matrices)?;
    let initialization = begin.elapsed().as_nanos();
    let table_start = Instant::now();
    let tables = if matches!(alternative, Method::Glv16Cached) {
        let key = prover.proving_key();
        vec![
            msm::CachedGlv::new(&key.sigma_q),
            msm::CachedGlv::new(&key.sigma_a),
            msm::CachedGlv::new(&key.sigma_r),
        ]
    } else {
        Vec::new()
    };
    let table_preparation = if tables.is_empty() {
        0
    } else {
        table_start.elapsed().as_nanos()
    };
    let solved: Solved = serde_json::from_slice(&fs::read(old.join("transfer.json"))?)?;
    let values = bridge::assignment(&solved.assignment, &original, &solved.statement)?;
    lowered.validate(&values)?;
    let witnesses = lowered.witness(&values)?;
    let root = Path::new(env!("CARGO_MANIFEST_DIR"));
    let mut source_ids = Vec::new();
    for path in [
        "src",
        "vendor/zkpari/src",
        "Cargo.toml",
        "Cargo.lock",
        "vendor/zkpari/Cargo.toml",
    ] {
        sources(&root.join(path), &mut source_ids)?;
    }
    source_ids.sort_by(|a, b| a.path.cmp(&b.path));
    let header = Header {
        schema: "shieldd.proving_experiment.msm_probe_header.v1",
        boundary: "pre-solved standard Transfer kernel; includes per-call MSM preparation; excludes logical witness and bridge",
        randomness: "fresh OsRng seed each block; same masks across alternatives inside that block for exact proof parity; diagnostic only",
        key_loading_and_relation_preparation_ns: initialization,
        reusable_table_preparation_ns: table_preparation,
        reusable_table_bytes: tables.iter().map(|t| t.bytes()).sum(),
        workers: rayon::current_num_threads(), sources: source_ids,
        key: identity(key)?, witness: identity(&old.join("transfer.json"))?, metadata: identity(&old.join("metadata.json"))?,
        executable: identity(&std::env::current_exe()?)?, warmup_blocks: 2, measured_blocks: 3,
        methods: vec![Method::Arkworks, alternative],
    };
    let mut output = BufWriter::new(OpenOptions::new().write(true).create_new(true).open(out)?);
    write_record(&mut output, &header)?;
    let methods = [Method::Arkworks, alternative];
    for block in 0..5 {
        let mut seed = [0u8; 32];
        OsRng.fill_bytes(&mut seed);
        let mut reference = None;
        let order = if block % 2 == 0 { [0, 1] } else { [1, 0] };
        for (order_index, index) in order.into_iter().enumerate() {
            let method = methods[index];
            let mut operations = Vec::new();
            let mut rng = StdRng::from_seed(seed);
            let start = Instant::now();
            let (proof, profile) = prover.prove_profiled_with_msm(
                &values[..2],
                &witnesses,
                &mut rng,
                &mut |bases, scalars| {
                    let call = operations.len();
                    let names = ["witness", "masks", "quotient", "opening_a", "opening_r"];
                    let operation_start = Instant::now();
                    let (point, details) = if call < 2 {
                        (
                            G1Projective::msm_unchecked(bases, scalars),
                            Details::default(),
                        )
                    } else if matches!(method, Method::Glv16Cached) {
                        tables[call - 2].run(bases, scalars)
                    } else {
                        msm::run(method, bases, scalars)
                    };
                    operations.push(Operation {
                        name: names[call],
                        real_count: bases.len(),
                        elapsed_ns: operation_start.elapsed().as_nanos(),
                        details,
                    });
                    point
                },
            )?;
            let elapsed = start.elapsed().as_nanos();
            ensure!(
                operations.len() == 5,
                "unexpected prover MSM call structure"
            );
            let verified =
                ZkPari::<Bls12_377>::verify(&proof, prover.verifying_key(), &values[1..2]);
            let bytes = crate::encode(&proof)?;
            let parity = reference.as_ref().is_none_or(|b: &Vec<u8>| *b == bytes);
            if reference.is_none() {
                reference = Some(bytes.clone());
            }
            write_record(
                &mut output,
                &Sample {
                    schema: "shieldd.proving_experiment.msm_probe_sample.v1",
                    block,
                    warmup: block < 2,
                    order: order_index,
                    method,
                    presolved_kernel_ns: elapsed,
                    commitment_msm_ns: profile.commitment_msm_ns,
                    opening_msm_ns: profile.opening_msm_ns,
                    operations,
                    proof_sha256: hex::encode(Sha256::digest(&bytes)),
                    verified,
                    identical_proof_for_matched_randomness: parity,
                },
            )?;
            ensure!(
                verified && parity,
                "MSM alternative changed or invalidated the real proof"
            );
            eprintln!("MSM diagnostic block {block}, {method:?}: verified and exact proof parity");
        }
    }
    Ok(())
}
