//! Exact real-prover operands and matched resident-base arithmetic diagnostics.
#[path = "../src/bridge.rs"]
pub(crate) mod bridge;
#[path = "../src/keys.rs"]
pub(crate) mod keys;
#[path = "../src/lowering.rs"]
pub(crate) mod lowering;
use anyhow::{ensure, Context, Result};
use ark_bls12_377::{Bls12_377, Fq, Fr, G1Affine, G1Projective};
use ark_ec::{AffineRepr, CurveGroup, VariableBaseMSM};
use ark_ff::{Field, PrimeField};
use ark_relations::gr1cs::predicate::polynomial_constraint::SR1CS_PREDICATE_LABEL;
use ark_serialize::CanonicalSerialize;
use ark_std::rand::rngs::OsRng;
use rayon::prelude::*;
use serde::{Deserialize, Serialize};
use sha2::{Digest, Sha256};
use std::{
    fs::{self, File, OpenOptions},
    io::{BufReader, BufWriter, Read, Write},
    path::{Path, PathBuf},
    process::{Child, ChildStdin, ChildStdout, Command, Stdio},
    sync::Arc,
    time::Instant,
};
use zkpari::{PreparedProver, ZkPari};
const SCHEMA: &str = "shieldd.proving_experiment.gnark_msm_worker.v1";
const CLASSES: [&str; 5] = ["witness", "masks", "quotient", "opening_a", "opening_r"];
fn encode<T: CanonicalSerialize>(value: &T) -> Result<Vec<u8>> {
    let mut bytes = Vec::new();
    value.serialize_compressed(&mut bytes)?;
    Ok(bytes)
}
pub(crate) fn sha(bytes: &[u8]) -> String {
    hex::encode(Sha256::digest(bytes))
}
#[derive(Clone, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub(crate) struct FileIdentity {
    pub(crate) path: PathBuf,
    pub(crate) sha256: String,
}
pub(crate) fn identify(path: &Path) -> Result<FileIdentity> {
    Ok(FileIdentity {
        path: path.canonicalize()?,
        sha256: sha(&fs::read(path)?),
    })
}
pub(crate) fn checked(id: &FileIdentity) -> Result<Vec<u8>> {
    let b = fs::read(&id.path)?;
    ensure!(sha(&b) == id.sha256, "artifact hash mismatch");
    Ok(b)
}
fn append_field<const N: usize>(out: &mut Vec<u8>, limbs: &[u64; N]) {
    for limb in limbs.iter().rev() {
        out.extend_from_slice(&limb.to_be_bytes());
    }
}
pub(crate) fn point_bytes(point: &G1Affine) -> Vec<u8> {
    let mut out = Vec::with_capacity(97);
    if point.is_zero() {
        out.resize(97, 0);
        return out;
    }
    out.push(1);
    append_field(&mut out, &point.x.into_bigint().0);
    append_field(&mut out, &point.y.into_bigint().0);
    out
}
pub(crate) fn point(bytes: &[u8]) -> Result<G1Affine> {
    ensure!(bytes.len() == 97, "point size");
    if bytes[0] == 0 {
        ensure!(bytes[1..].iter().all(|v| *v == 0), "noncanonical identity");
        return Ok(G1Affine::identity());
    }
    ensure!(bytes[0] == 1, "point tag");
    let x = bridge::decode::<Fq>(&bytes[1..49].iter().rev().copied().collect::<Vec<_>>())?;
    let y = bridge::decode::<Fq>(&bytes[49..].iter().rev().copied().collect::<Vec<_>>())?;
    let p = G1Affine::new_unchecked(x, y);
    ensure!(
        !p.is_zero() && p.is_on_curve() && p.is_in_correct_subgroup_assuming_on_curve(),
        "invalid finite subgroup point"
    );
    Ok(p)
}
pub(crate) fn scalar_bytes(scalars: &[Fr]) -> Vec<u8> {
    let mut out = Vec::with_capacity(32 * scalars.len());
    for s in scalars {
        append_field(&mut out, &s.into_bigint().0);
    }
    out
}
pub(crate) fn scalars(bytes: &[u8]) -> Result<Vec<Fr>> {
    ensure!(bytes.len() % 32 == 0, "scalar size");
    bytes
        .par_chunks_exact(32)
        .map(|b| bridge::decode(&b.iter().rev().copied().collect::<Vec<_>>()))
        .collect()
}
#[derive(Clone, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub(crate) struct Operation {
    pub(crate) name: String,
    pub(crate) count: usize,
    pub(crate) bases: FileIdentity,
    pub(crate) scalars: FileIdentity,
    pub(crate) expected: FileIdentity,
    pub(crate) reference_msm_ns: u128,
}
#[derive(Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub(crate) struct Manifest {
    pub(crate) schema: String,
    pub(crate) boundary: String,
    pub(crate) workers: usize,
    pub(crate) sources: Vec<FileIdentity>,
    pub(crate) key: FileIdentity,
    pub(crate) solved_witness: FileIdentity,
    pub(crate) proof: FileIdentity,
    pub(crate) statement: String,
    pub(crate) operations: Vec<Operation>,
    pub(crate) preparation_ns: u128,
    pub(crate) proving_wall_with_capture_ns: u128,
    pub(crate) non_msm_ns: u64,
}
#[derive(Deserialize)]
struct Solved {
    assignment: String,
    statement: String,
}
struct Captured {
    bases: Vec<G1Affine>,
    scalars: Vec<Fr>,
    expected: G1Affine,
    msm_ns: u128,
}
fn export(old: &Path, key: &Path, out: &Path) -> Result<()> {
    ensure!(!out.exists(), "preserve existing operand capture");
    fs::create_dir(out)?;
    let start = Instant::now();
    let metadata = serde_json::from_slice(&fs::read(old.join("metadata.json"))?)?;
    let original = Arc::new(bridge::Relation::read(
        &old.join("transfer.r1cs"),
        metadata,
    )?);
    let lowered = Arc::new(lowering::Lowered::compile(&original));
    let cs = ZkPari::<Bls12_377>::circuit_to_keygen_cs(lowering::Circuit {
        relation: lowered.clone(),
        original: None,
    })?;
    let matrices = cs.to_matrices().context("square matrices")?[SR1CS_PREDICATE_LABEL].clone();
    drop(cs);
    let prover = PreparedProver::new(keys::decode(&fs::read(key)?)?, matrices)?;
    let solved: Solved = serde_json::from_slice(&fs::read(old.join("transfer.json"))?)?;
    let values = bridge::assignment(&solved.assignment, &original, &solved.statement)?;
    lowered.validate(&values)?;
    let witness = lowered.witness(&values)?;
    let preparation_ns = start.elapsed().as_nanos();
    let mut captured = Vec::new();
    let start = Instant::now();
    let (proof, profile) = prover.prove_profiled_with_msm(
        &values[..2],
        &witness,
        &mut OsRng,
        &mut |bases, scalars| {
            assert_eq!(bases.len(), scalars.len());
            let start = Instant::now();
            let result = G1Projective::msm_unchecked(bases, scalars);
            let msm_ns = start.elapsed().as_nanos();
            captured.push(Captured {
                bases: bases.to_vec(),
                scalars: scalars.to_vec(),
                expected: result.into_affine(),
                msm_ns,
            });
            result
        },
    )?;
    let proving_wall_with_capture_ns = start.elapsed().as_nanos();
    ensure!(
        captured.len() == 5
            && ZkPari::<Bls12_377>::verify(&proof, prover.verifying_key(), &values[1..2]),
        "captured real proof rejected or changed MSM structure"
    );
    let proof_path = out.join("proof.bin");
    fs::write(&proof_path, encode(&proof)?)?;
    let mut operations = Vec::new();
    for (name, c) in CLASSES.into_iter().zip(captured) {
        let mut bases = Vec::with_capacity(c.bases.len() * 97);
        for p in &c.bases {
            bases.extend(point_bytes(p));
        }
        let b = out.join(format!("{name}.bases"));
        let s = out.join(format!("{name}.scalars"));
        let e = out.join(format!("{name}.expected"));
        fs::write(&b, bases)?;
        fs::write(&s, scalar_bytes(&c.scalars))?;
        fs::write(&e, point_bytes(&c.expected))?;
        operations.push(Operation {
            name: name.into(),
            count: c.bases.len(),
            bases: identify(&b)?,
            scalars: identify(&s)?,
            expected: identify(&e)?,
            reference_msm_ns: c.msm_ns,
        });
    }
    let root = Path::new(env!("CARGO_MANIFEST_DIR"));
    let mut sources = Vec::new();
    for path in [
        root.join("examples/gnark_msm.rs"),
        root.join("src/bridge.rs"),
        root.join("src/lowering.rs"),
        root.join("src/keys.rs"),
        root.join("Cargo.lock"),
        root.join("vendor/zkpari/src/prover.rs"),
        std::env::current_exe()?,
        old.join("metadata.json"),
        old.join("transfer.r1cs"),
    ] {
        sources.push(identify(&path)?);
    }
    let non_msm_ns = profile.vectors_ns
        + profile.interpolation_ns
        + profile.quotient_ns
        + profile.masking_ns
        + profile.transcript_opening_polynomials_ns;
    let manifest=Manifest {schema:"shieldd.proving_experiment.msm_operands.v1".into(),boundary:"One genuine verified standard Transfer proof with fresh masks; pre-solved operands for arithmetic diagnostics only. Capture copies are inside export wall time; no complete API/proving-speed claim.".into(),workers:2,sources,key:identify(key)?,solved_witness:identify(&old.join("transfer.json"))?,proof:identify(&proof_path)?,statement:hex::encode(encode(&values[1])?),operations,preparation_ns,proving_wall_with_capture_ns,non_msm_ns};
    fs::write(
        out.join("manifest.json"),
        serde_json::to_vec_pretty(&manifest)?,
    )?;
    Ok(())
}
#[derive(Serialize)]
struct Request<'a> {
    schema: &'static str,
    op: &'static str,
    name: &'a str,
    payload_bytes: usize,
}
#[derive(Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub(crate) struct Response {
    pub(crate) schema: String,
    pub(crate) op: String,
    pub(crate) name: String,
    pub(crate) payload_bytes: usize,
    pub(crate) error: String,
    pub(crate) workers: usize,
    pub(crate) initialization_ns: u64,
    pub(crate) resident_base_bytes: usize,
    pub(crate) payload_read_ns: u64,
    pub(crate) scalar_decode_ns: u64,
    pub(crate) msm_ns: u64,
    pub(crate) encoding_ns: u64,
    pub(crate) worker_ns: u64,
    pub(crate) msm_allocated_bytes: u64,
    pub(crate) peak_rss_bytes: u64,
    pub(crate) heap_alloc_bytes: u64,
    pub(crate) heap_sys_bytes: u64,
}
pub(crate) struct Go {
    child: Child,
    input: Option<BufWriter<ChildStdin>>,
    output: BufReader<ChildStdout>,
}
impl Drop for Go {
    fn drop(&mut self) {
        drop(self.input.take());
        if self.child.try_wait().ok().flatten().is_none() {
            let _ = self.child.kill();
            let _ = self.child.wait();
        }
    }
}
impl Go {
    pub(crate) fn start(binary: &Path, dir: &Path) -> Result<(Self, Response)> {
        let mut child = Command::new(binary)
            .arg(dir)
            .stdin(Stdio::piped())
            .stdout(Stdio::piped())
            .stderr(Stdio::inherit())
            .spawn()?;
        let input = Some(BufWriter::with_capacity(
            65536,
            child.stdin.take().context("Go stdin")?,
        ));
        let output = BufReader::with_capacity(65536, child.stdout.take().context("Go stdout")?);
        let mut worker = Self {
            child,
            input,
            output,
        };
        let (ready, payload) = worker.read()?;
        ensure!(ready.op == "ready" && payload.is_empty(), "Go readiness");
        Ok((worker, ready))
    }
    fn read(&mut self) -> Result<(Response, Vec<u8>)> {
        let mut length = [0; 4];
        self.output.read_exact(&mut length)?;
        let n = u32::from_be_bytes(length) as usize;
        ensure!((1..=4096).contains(&n), "Go header size");
        let mut bytes = vec![0; n];
        self.output.read_exact(&mut bytes)?;
        let response: Response = serde_json::from_slice(&bytes)?;
        ensure!(
            response.schema == SCHEMA
                && response.workers == 2
                && response.payload_bytes <= 97
                && response.error.is_empty(),
            "Go response: {}",
            response.error
        );
        let mut payload = vec![0; response.payload_bytes];
        self.output.read_exact(&mut payload)?;
        Ok((response, payload))
    }
    pub(crate) fn call(&mut self, name: &str, scalars: &[u8]) -> Result<(Response, Vec<u8>)> {
        let header = serde_json::to_vec(&Request {
            schema: SCHEMA,
            op: "msm",
            name,
            payload_bytes: scalars.len(),
        })?;
        let input = self.input.as_mut().context("closed worker")?;
        input.write_all(&(header.len() as u32).to_be_bytes())?;
        input.write_all(&header)?;
        input.write_all(scalars)?;
        input.flush()?;
        let (r, b) = self.read()?;
        ensure!(
            r.op == "msm" && r.name == name && b.len() == 97,
            "MSM response mismatch"
        );
        Ok((r, b))
    }
    pub(crate) fn close(mut self) -> Result<()> {
        drop(self.input.take());
        let status = self.child.wait()?;
        ensure!(status.success(), "Go worker exit");
        Ok(())
    }
}
struct Resident {
    meta: Operation,
    bases: Vec<G1Affine>,
    scalars: Vec<Fr>,
    expected: G1Affine,
}
#[derive(Serialize)]
struct Header {
    schema: &'static str,
    operands: FileIdentity,
    arkworks_initialization_ns: u128,
    go: Response,
    go_binary: FileIdentity,
    rust_binary: FileIdentity,
    go_lock: FileIdentity,
    rust_lock: FileIdentity,
    workers: usize,
    warmups: usize,
    measured_pairs: usize,
    limits: &'static str,
}
#[derive(Serialize)]
struct Sample {
    schema: &'static str,
    operation: String,
    count: usize,
    block: usize,
    warmup: bool,
    backend: &'static str,
    crypto_ns: u128,
    scalar_encoding_ns: u128,
    boundary_ns: u128,
    checked_result_decode_ns: u128,
    result_encoding_ns: u128,
    scalar_payload_bytes: usize,
    output_sha256: String,
    exact_group_equality: bool,
    go: Option<Response>,
}
pub(crate) fn record(out: &mut File, value: &impl Serialize) -> Result<()> {
    serde_json::to_writer(&mut *out, value)?;
    out.write_all(b"\n")?;
    out.flush()?;
    Ok(())
}
fn measure(dir: &Path, binary: &Path, out: &Path) -> Result<()> {
    ensure!(!out.exists(), "preserve existing measurements");
    let start = Instant::now();
    let manifest: Manifest = serde_json::from_slice(&fs::read(dir.join("manifest.json"))?)?;
    ensure!(
        manifest.schema == "shieldd.proving_experiment.msm_operands.v1"
            && manifest.workers == 2
            && manifest.operations.len() == 5,
        "operand manifest"
    );
    checked(&manifest.proof)?;
    let mut resident = Vec::new();
    for (name, meta) in CLASSES.into_iter().zip(manifest.operations) {
        ensure!(
            meta.name == name && meta.count <= 1 << 21,
            "unexpected class"
        );
        let bytes = checked(&meta.bases)?;
        ensure!(bytes.len() == meta.count * 97, "base byte count");
        let bases = bytes
            .par_chunks_exact(97)
            .map(point)
            .collect::<Result<Vec<_>>>()?;
        drop(bytes);
        let scalars = scalars(&checked(&meta.scalars)?)?;
        ensure!(scalars.len() == meta.count, "scalar count");
        let expected = point(&checked(&meta.expected)?)?;
        resident.push(Resident {
            meta,
            bases,
            scalars,
            expected,
        });
    }
    let arkworks_initialization_ns = start.elapsed().as_nanos();
    let (mut go, ready) = Go::start(binary, dir)?;
    let root = Path::new(env!("CARGO_MANIFEST_DIR"));
    let mut output = OpenOptions::new().write(true).create_new(true).open(out)?;
    record(&mut output,&Header {schema:"shieldd.proving_experiment.gnark_msm_probe_header.v1",operands:identify(&dir.join("manifest.json"))?,arkworks_initialization_ns,go:ready,go_binary:identify(binary)?,rust_binary:identify(&std::env::current_exe()?)?,go_lock:identify(&root.parent().unwrap().join("gnark/go.sum"))?,rust_lock:identify(&root.join("Cargo.lock"))?,workers:2,warmups:2,measured_pairs:3,limits:"Resident identical checked bases and exact real-prover scalars. Go boundary includes scalar encoding, pipe transport, canonical scalar decoding, MultiExp, result encoding and checked Rust result decoding. Arkworks boundary is the native MSM call; output encoding is only for equality diagnostics, separately timed. These are arithmetic diagnostics, not complete proving samples."})?;
    for op in &resident {
        for block in 0..5 {
            for backend in if block % 2 == 0 {
                ["arkworks", "gnark_crypto"]
            } else {
                ["gnark_crypto", "arkworks"]
            } {
                let mut sample = Sample {
                    schema: "shieldd.proving_experiment.gnark_msm_probe_sample.v1",
                    operation: op.meta.name.clone(),
                    count: op.meta.count,
                    block,
                    warmup: block < 2,
                    backend,
                    crypto_ns: 0,
                    scalar_encoding_ns: 0,
                    boundary_ns: 0,
                    checked_result_decode_ns: 0,
                    result_encoding_ns: 0,
                    scalar_payload_bytes: 0,
                    output_sha256: String::new(),
                    exact_group_equality: false,
                    go: None,
                };
                let actual = if backend == "arkworks" {
                    let start = Instant::now();
                    let result = G1Projective::msm_unchecked(&op.bases, &op.scalars);
                    sample.crypto_ns = start.elapsed().as_nanos();
                    sample.boundary_ns = sample.crypto_ns;
                    let start = Instant::now();
                    let point = result.into_affine();
                    sample.output_sha256 = sha(&point_bytes(&point));
                    sample.result_encoding_ns = start.elapsed().as_nanos();
                    point
                } else {
                    let start = Instant::now();
                    let payload = scalar_bytes(&op.scalars);
                    sample.scalar_encoding_ns = start.elapsed().as_nanos();
                    sample.scalar_payload_bytes = payload.len();
                    let (response, bytes) = go.call(&op.meta.name, &payload)?;
                    let decode = Instant::now();
                    let point = point(&bytes)?;
                    sample.checked_result_decode_ns = decode.elapsed().as_nanos();
                    drop(payload);
                    sample.boundary_ns = start.elapsed().as_nanos();
                    sample.crypto_ns = u128::from(response.msm_ns);
                    sample.result_encoding_ns = u128::from(response.encoding_ns);
                    sample.output_sha256 = sha(&bytes);
                    sample.go = Some(response);
                    point
                };
                ensure!(
                    actual == op.expected,
                    "foreign MSM differs from real-prover output"
                );
                sample.exact_group_equality = true;
                record(&mut output, &sample)?;
            }
        }
        eprintln!(
            "{}: two warmups and three matched MSM pairs passed",
            op.meta.name
        );
    }
    go.close()?;
    Ok(())
}
fn main() -> Result<()> {
    ensure!(
        rayon::current_num_threads() == 2,
        "probe requires two Rayon workers"
    );
    let args: Vec<_> = std::env::args().collect();
    match args.get(1).map(String::as_str) {
        Some("export") if args.len()==5=>export(Path::new(&args[2]),Path::new(&args[3]),Path::new(&args[4])),
        Some("measure") if args.len()==5=>measure(Path::new(&args[2]),Path::new(&args[3]),Path::new(&args[4])),
        _=>anyhow::bail!("usage: gnark_msm export OLD_CACHE KEY NEW_DIRECTORY | measure OPERANDS GO_BINARY NEW_JSONL"),
    }
}
#[cfg(test)]
mod tests {
    use super::*;
    use ark_ec::AdditiveGroup;
    #[test]
    fn canonical_point_and_scalar_bridge_handles_identity_and_rejects_modulus_torsion() {
        for p in [
            G1Affine::identity(),
            G1Affine::generator(),
            -G1Affine::generator(),
        ] {
            assert_eq!(point(&point_bytes(&p)).unwrap(), p);
        }
        let mut bad = vec![0; 97];
        bad[96] = 1;
        assert!(point(&bad).is_err());
        bad[0] = 1;
        assert!(point(&bad).is_err());
        let mut invalid = point_bytes(&G1Affine::generator());
        invalid[1..49].fill(255);
        assert!(point(&invalid).is_err());
        assert!(point(&invalid[..96]).is_err());
        let s = [Fr::ZERO, Fr::ONE, -Fr::ONE];
        assert_eq!(scalars(&scalar_bytes(&s)).unwrap(), s);
        let mut modulus = Vec::new();
        append_field(&mut modulus, &Fr::MODULUS.0);
        assert!(scalars(&modulus).is_err());
    }
}
