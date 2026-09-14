//! Checked resident Go MSM transport, using the existing helper unchanged.
use crate::bridge;
use anyhow::{ensure, Context, Result};
use ark_bls12_377::{Fq, Fr, G1Affine};
use ark_ec::AffineRepr;
use ark_ff::PrimeField;
use serde::{Deserialize, Serialize};
use sha2::{Digest, Sha256};
use std::{
    fs,
    io::{BufReader, BufWriter, Read, Write},
    path::{Path, PathBuf},
    process::{Child, ChildStdin, ChildStdout, Command, Stdio},
};
const SCHEMA: &str = "shieldd.proving_experiment.gnark_msm_worker.v1";
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
