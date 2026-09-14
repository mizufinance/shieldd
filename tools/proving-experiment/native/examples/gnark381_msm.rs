//! Prepared blst versus gnark-crypto381 on the verified native proof's operands.
use anyhow::{Context, Result, ensure};
use commonware_codec::{Encode, Read};
use commonware_cryptography::{
    Hasher,
    bls12381::primitives::group::{G1, PreparedG1Msm, Scalar, ScalarReadCfg},
    sha256::Sha256,
};
use commonware_math::algebra::Additive;
use commonware_parallel::Rayon;
use serde::{Deserialize, Serialize};
use std::{
    fs::{self, File},
    io::{BufReader, BufWriter, Read as IoRead, Write},
    num::NonZeroUsize,
    path::{Path, PathBuf},
    process::{Child, ChildStdin, ChildStdout, Command, Stdio},
    time::Instant,
};
const SCHEMA: &str = "shieldd.native_experiment.gnark381_worker.v1";
const NAMES: [&str; 5] = ["witness", "masks", "quotient", "opening_a", "opening_r"];
fn sha(b: &[u8]) -> String {
    hex::encode(Sha256::hash(&[b]).as_ref())
}
#[derive(Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
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
fn checked(i: &Identity) -> Result<Vec<u8>> {
    let b = fs::read(&i.path)?;
    ensure!(sha(&b) == i.sha256, "artifact hash mismatch");
    Ok(b)
}
fn point(b: &[u8]) -> Result<G1> {
    ensure!(b.len() == 48, "point length");
    let mut input = b;
    let p = G1::read_maybe_identity(&mut input)?;
    ensure!(
        input.is_empty() && p.encode().as_ref() == b,
        "noncanonical native point"
    );
    Ok(p)
}
fn scalar(b: &[u8]) -> Result<Scalar> {
    let mut input = b;
    let s = Scalar::read_cfg(&mut input, &ScalarReadCfg::AllowZero)?;
    ensure!(
        input.is_empty() && s.encode().as_ref() == b,
        "noncanonical scalar"
    );
    Ok(s)
}
fn encode_scalars(parts: &[&[Scalar]]) -> Vec<u8> {
    let mut b = Vec::with_capacity(parts.iter().map(|s| 32 * s.len()).sum());
    for s in parts.iter().flat_map(|s| s.iter()) {
        commonware_codec::Write::write(s, &mut b);
    }
    b
}
#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct Operation {
    name: String,
    count: usize,
    bases: Identity,
    scalars: Identity,
    expected: Identity,
    reference_msm_ns: u128,
}
#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct Manifest {
    schema: String,
    curve: String,
    workers: usize,
    sources: Vec<Identity>,
    proof: Identity,
    operations: Vec<Operation>,
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
struct Response {
    schema: String,
    op: String,
    name: String,
    payload_bytes: usize,
    error: String,
    workers: usize,
    initialization_ns: u64,
    resident_base_bytes: usize,
    payload_read_ns: u64,
    scalar_decode_ns: u64,
    msm_ns: u64,
    encoding_ns: u64,
    worker_ns: u64,
    msm_allocated_bytes: u64,
    peak_rss_bytes: u64,
    heap_alloc_bytes: u64,
    heap_sys_bytes: u64,
}
struct Go {
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
    fn start(binary: &Path, dir: &Path) -> Result<(Self, Response)> {
        let mut child = Command::new(binary)
            .arg(dir)
            .stdin(Stdio::piped())
            .stdout(Stdio::piped())
            .stderr(Stdio::inherit())
            .spawn()?;
        let input = Some(BufWriter::with_capacity(
            65536,
            child.stdin.take().context("stdin")?,
        ));
        let output = BufReader::with_capacity(65536, child.stdout.take().context("stdout")?);
        let mut go = Self {
            child,
            input,
            output,
        };
        let (r, b) = go.read()?;
        ensure!(r.op == "ready" && b.is_empty(), "worker readiness");
        Ok((go, r))
    }
    fn read(&mut self) -> Result<(Response, Vec<u8>)> {
        let mut n = [0; 4];
        self.output.read_exact(&mut n)?;
        let n = u32::from_be_bytes(n) as usize;
        ensure!((1..=4096).contains(&n), "response header bound");
        let mut b = vec![0; n];
        self.output.read_exact(&mut b)?;
        let r: Response = serde_json::from_slice(&b)?;
        ensure!(
            r.schema == SCHEMA && r.workers == 2 && r.payload_bytes <= 48 && r.error.is_empty(),
            "worker response: {}",
            r.error
        );
        let mut b = vec![0; r.payload_bytes];
        self.output.read_exact(&mut b)?;
        Ok((r, b))
    }
    fn call(&mut self, name: &str, scalars: &[u8]) -> Result<(Response, G1)> {
        let h = serde_json::to_vec(&Request {
            schema: SCHEMA,
            op: "msm",
            name,
            payload_bytes: scalars.len(),
        })?;
        let w = self.input.as_mut().context("closed worker")?;
        w.write_all(&(h.len() as u32).to_be_bytes())?;
        w.write_all(&h)?;
        w.write_all(scalars)?;
        w.flush()?;
        let (r, b) = self.read()?;
        ensure!(
            r.op == "msm" && r.name == name && b.len() == 48,
            "response identity"
        );
        Ok((r, point(&b)?))
    }
    fn close(mut self) -> Result<()> {
        drop(self.input.take());
        ensure!(self.child.wait()?.success(), "worker exit");
        Ok(())
    }
}
struct Resident {
    bases: Vec<G1>,
    scalars: Vec<Scalar>,
    expected: G1,
}
#[derive(Serialize)]
struct Header {
    schema: &'static str,
    files: Vec<Identity>,
    blst_initialization_ns: u128,
    blst_table_bytes: usize,
    go: Response,
    workers: usize,
    limits: &'static str,
}
#[derive(Serialize)]
struct Sample {
    schema: &'static str,
    operation: &'static str,
    backend: &'static str,
    block: usize,
    warmup: bool,
    count: usize,
    boundary_ns: u128,
    output_sha256: String,
    exact_group_equality: bool,
    go: Option<Response>,
}
#[derive(Serialize)]
struct Complete {
    schema: &'static str,
    samples: Identity,
    arithmetic_calls_verified: usize,
}
fn record(f: &mut File, v: &impl Serialize) -> Result<()> {
    serde_json::to_writer(&mut *f, v)?;
    f.write_all(b"\n")?;
    f.flush()?;
    Ok(())
}
fn main() -> Result<()> {
    let args: Vec<PathBuf> = std::env::args_os().skip(1).map(PathBuf::from).collect();
    ensure!(
        args.len() == 3,
        "usage: gnark381_msm OPERANDS GO_BINARY NEW_OUTPUT"
    );
    let dir = &args[0];
    let binary = &args[1];
    let out = &args[2];
    ensure!(!out.exists(), "preserve prior run");
    fs::create_dir(out)?;
    let manifest_path = dir.join("manifest.json");
    let m: Manifest = serde_json::from_slice(&fs::read(&manifest_path)?)?;
    ensure!(
        m.schema == "shieldd.native_experiment.gnark381_operands.v1"
            && m.curve == "bls12_381"
            && m.workers == 2
            && m.operations.len() == 5,
        "operand manifest identity"
    );
    for f in &m.sources {
        drop(checked(f)?);
    }
    drop(checked(&m.proof)?);
    let start = Instant::now();
    let mut resident = Vec::new();
    for (name, o) in NAMES.into_iter().zip(m.operations) {
        ensure!(
            o.name == name && o.count <= 1 << 21,
            "operation identity/count"
        );
        let b = checked(&o.bases)?;
        ensure!(b.len() == 48 * o.count, "base byte count");
        let bases = b.chunks_exact(48).map(point).collect::<Result<Vec<_>>>()?;
        let b = checked(&o.scalars)?;
        ensure!(b.len() == 32 * o.count, "scalar byte count");
        let scalars = b.chunks_exact(32).map(scalar).collect::<Result<Vec<_>>>()?;
        let expected = point(&checked(&o.expected)?)?;
        resident.push(Resident {
            bases,
            scalars,
            expected,
        });
    }
    let prepared: Vec<_> = resident
        .iter()
        .map(|r| PreparedG1Msm::new(&[&r.bases]))
        .collect();
    let combined = [
        PreparedG1Msm::new(&[&resident[0].bases, &resident[2].bases]),
        PreparedG1Msm::new(&[&resident[3].bases, &resident[4].bases]),
    ];
    let blst_initialization_ns = start.elapsed().as_nanos();
    let strategy = Rayon::new(NonZeroUsize::new(2).unwrap())?;
    let (mut go, ready) = Go::start(binary, dir)?;
    let root = Path::new(env!("CARGO_MANIFEST_DIR"));
    let mut files = Vec::new();
    for p in [
        manifest_path,
        binary.clone(),
        std::env::current_exe()?,
        root.join("examples/gnark381_msm.rs"),
        root.join("Cargo.lock"),
        root.join("patches/commonware-polynomial-migration.patch"),
        root.parent()
            .unwrap()
            .parent()
            .unwrap()
            .join("gnark/go.sum"),
    ] {
        files.push(identify(&p)?);
    }
    let mut log = File::create(out.join("samples.jsonl"))?;
    record(
        &mut log,
        &Header {
            schema: "shieldd.native_experiment.gnark381_comparison.v1",
            files,
            blst_initialization_ns,
            blst_table_bytes: prepared
                .iter()
                .chain(combined.iter())
                .map(|p| p.resident_bytes())
                .sum(),
            go: ready,
            workers: 2,
            limits: "Verified C capture reused with hash-bound provenance. Same BLS12-381 compressed encoding is checked canonically and for subgroup membership by both implementations, including identity. Prepared blst is the control. Five individual classes and two combined groups each receive two warmups and three matched samples; Go timing includes scalar encoding, transport, decoding, MSM and checked result decoding. Parent holds reference points/scalars and separate+combined tables. Arithmetic diagnostic only, not complete proving or isolated memory/first-proof/phone measurements.",
        },
    )?;
    let mut calls = 0;
    for (i, r) in resident.iter().enumerate() {
        for block in 0..5 {
            for foreign in if block % 2 == 0 {
                [false, true]
            } else {
                [true, false]
            } {
                let start = Instant::now();
                let (result, response) = if foreign {
                    let bytes = encode_scalars(&[&r.scalars]);
                    let (response, result) = go.call(NAMES[i], &bytes)?;
                    (result, Some(response))
                } else {
                    (
                        prepared[i]
                            .msm(&[&r.scalars], &strategy)
                            .map_err(anyhow::Error::msg)?,
                        None,
                    )
                };
                let boundary_ns = start.elapsed().as_nanos();
                ensure!(result == r.expected, "individual arithmetic mismatch");
                calls += 1;
                record(
                    &mut log,
                    &Sample {
                        schema: "shieldd.native_experiment.gnark381_sample.v1",
                        operation: NAMES[i],
                        backend: if foreign { "gnark381" } else { "prepared_blst" },
                        block,
                        warmup: block < 2,
                        count: r.bases.len(),
                        boundary_ns,
                        output_sha256: sha(&result.encode()),
                        exact_group_equality: true,
                        go: response,
                    },
                )?;
            }
        }
        eprintln!("{} prepared-blst/gnark381 equality passed", NAMES[i]);
    }
    for (group, (name, a, b)) in [("commitment", 0, 2), ("opening", 3, 4)]
        .into_iter()
        .enumerate()
    {
        let left = &resident[a];
        let right = &resident[b];
        let expected = left.expected + &right.expected;
        for block in 0..5 {
            for foreign in if block % 2 == 0 {
                [false, true]
            } else {
                [true, false]
            } {
                let start = Instant::now();
                let (result, response) = if foreign {
                    let bytes = encode_scalars(&[&left.scalars, &right.scalars]);
                    let (response, result) = go.call(name, &bytes)?;
                    (result, Some(response))
                } else {
                    (
                        combined[group]
                            .msm(&[&left.scalars, &right.scalars], &strategy)
                            .map_err(anyhow::Error::msg)?,
                        None,
                    )
                };
                let boundary_ns = start.elapsed().as_nanos();
                ensure!(result == expected, "combined arithmetic mismatch");
                calls += 1;
                record(
                    &mut log,
                    &Sample {
                        schema: "shieldd.native_experiment.gnark381_sample.v1",
                        operation: name,
                        backend: if foreign { "gnark381" } else { "prepared_blst" },
                        block,
                        warmup: block < 2,
                        count: left.bases.len() + right.bases.len(),
                        boundary_ns,
                        output_sha256: sha(&result.encode()),
                        exact_group_equality: true,
                        go: response,
                    },
                )?;
            }
        }
        eprintln!("{name} combined prepared-blst/gnark381 equality passed");
    }
    go.close()?;
    drop(log);
    record(
        &mut File::create(out.join("complete.json"))?,
        &Complete {
            schema: "shieldd.native_experiment.gnark381_complete.v1",
            samples: identify(&out.join("samples.jsonl"))?,
            arithmetic_calls_verified: calls,
        },
    )?;
    Ok(())
}
#[cfg(test)]
mod tests {
    use super::*;
    use commonware_math::algebra::{CryptoGroup, Ring};
    #[test]
    fn canonical_native_bridge_handles_identity_and_rejects_bad_encodings() {
        for p in [G1::zero(), G1::generator(), -G1::generator()] {
            assert_eq!(point(&p.encode()).unwrap(), p);
        }
        let mut bad = vec![0; 48];
        bad[0] = 0xc0;
        bad[47] = 1;
        assert!(point(&bad).is_err());
        bad.fill(0);
        bad[0] = 0x80;
        assert!(point(&bad).is_err());
        assert!(point(&G1::generator().encode()[..47]).is_err());
        for s in [Scalar::zero(), Scalar::one(), -Scalar::one()] {
            assert_eq!(scalar(&s.encode()).unwrap(), s);
        }
        let values = [Scalar::zero(), Scalar::one(), -Scalar::one()];
        let bytes = encode_scalars(&[&values[..1], &values[1..]]);
        assert_eq!(bytes.len(), 96);
        for (bytes, expected) in bytes.chunks_exact(32).zip(values) {
            assert_eq!(scalar(bytes).unwrap(), expected);
        }
        assert!(scalar(&[255; 32]).is_err());
    }
}
