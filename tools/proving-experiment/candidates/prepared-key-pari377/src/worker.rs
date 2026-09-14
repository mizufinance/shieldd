use crate::protocol::PreparedProver;
use crate::{bridge, lowering};
use anyhow::{ensure, Context, Result};
use ark_bls12_377::{Bls12_377, Fr};
use ark_ff::Field;
use ark_relations::gr1cs::predicate::polynomial_constraint::SR1CS_PREDICATE_LABEL;
use serde::{Deserialize, Serialize};
use std::{
    fs,
    io::{BufReader, BufWriter, Read, Write},
    path::Path,
    process::{Child, ChildStdin, ChildStdout, Command, Stdio},
    sync::Arc,
    time::Instant,
};
use zkpari::{Proof, ZkPari};

const SCHEMA: &str = "shieldd.proving_experiment.worker.v1";
const GO_SCHEMA: &str = "shieldd.proving_experiment.gnark_worker.v1";
const MAGIC: &[u8; 8] = b"SHBSD001";

#[derive(Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
struct Request {
    schema: String,
    op: String,
    payload_bytes: u32,
    #[serde(default)]
    statement: String,
}

#[derive(Default, Deserialize, Serialize)]
#[serde(default, deny_unknown_fields)]
struct GoResponse {
    schema: String,
    op: String,
    payload_bytes: u32,
    error: String,
    statement: String,
    circuit_sha256: String,
    wires: usize,
    compile_ns: u64,
    key_load_ns: u64,
    witness_ns: u64,
    solve_ns: u64,
    prove_ns: u64,
    encode_ns: u64,
    request_ns: u64,
    verified: bool,
}
#[derive(Serialize)]
pub(crate) struct Initialization {
    go_compile_ns: u64,
    relation_preparation_ns: u128,
    key_file_read_ns: u128,
    key_checked_decode_ns: u128,
    key_association_ns: u128,
    total_ns: u128,
}
#[derive(Serialize)]
pub(crate) struct Timings {
    go_roundtrip_ns: u128,
    checked_mapping_ns: u128,
    prove_ns: u128,
    encoding_ns: u128,
    cleanup_ns: u128,
    request_ns: u128,
    go: GoResponse,
}
fn read_header<T: for<'de> Deserialize<'de>>(reader: &mut impl Read) -> Result<T> {
    let mut size = [0; 4];
    reader.read_exact(&mut size)?;
    let size = u32::from_be_bytes(size) as usize;
    ensure!((1..=4096).contains(&size), "invalid worker header length");
    let mut bytes = vec![0; size];
    reader.read_exact(&mut bytes)?;
    Ok(serde_json::from_slice(&bytes)?)
}
fn write_frame(writer: &mut impl Write, header: &impl Serialize, payload: &[u8]) -> Result<()> {
    let bytes = serde_json::to_vec(header)?;
    ensure!(bytes.len() <= 4096, "worker header too large");
    writer.write_all(&(bytes.len() as u32).to_be_bytes())?;
    writer.write_all(&bytes)?;
    writer.write_all(payload)?;
    writer.flush()?;
    Ok(())
}
struct GoWorker {
    child: Child,
    input: BufWriter<ChildStdin>,
    output: BufReader<ChildStdout>,
}
impl Drop for GoWorker {
    fn drop(&mut self) {
        let _ = self.child.kill();
        let _ = self.child.wait();
    }
}
impl GoWorker {
    fn start(binary: &Path, artifacts: &Path) -> Result<(Self, GoResponse)> {
        let mut child = Command::new(binary)
            .args(["serve", "B"])
            .arg(artifacts)
            .stdin(Stdio::piped())
            .stdout(Stdio::piped())
            .stderr(Stdio::inherit())
            .spawn()?;
        let input = BufWriter::new(child.stdin.take().context("Go stdin")?);
        let output = BufReader::new(child.stdout.take().context("Go stdout")?);
        let mut worker = Self {
            child,
            input,
            output,
        };
        let ready = worker.response()?;
        ensure!(
            ready.op == "ready" && ready.payload_bytes == 0,
            "unexpected Go initialization response"
        );
        Ok((worker, ready))
    }
    fn response(&mut self) -> Result<GoResponse> {
        let response: GoResponse = read_header(&mut self.output)?;
        ensure!(
            response.schema == GO_SCHEMA && response.error.is_empty(),
            "Go worker rejected request: {}",
            response.error
        );
        Ok(response)
    }
    fn solve(&mut self, payload: &[u8], wires: usize) -> Result<(GoResponse, Vec<u8>)> {
        let q = Request {
            schema: GO_SCHEMA.into(),
            op: "solve".into(),
            payload_bytes: u32::try_from(payload.len())?,
            statement: String::new(),
        };
        write_frame(&mut self.input, &q, payload)?;
        let response = self.response()?;
        ensure!(
            response.op == "solve" && response.payload_bytes as usize == 32 * wires,
            "unexpected solved assignment size"
        );
        let mut bytes = vec![0; response.payload_bytes as usize];
        self.output.read_exact(&mut bytes)?;
        Ok((response, bytes))
    }
}
pub(crate) struct Worker {
    go: GoWorker,
    lowered: Arc<lowering::Lowered>,
    pub(crate) prover: PreparedProver,
    wires: usize,
}
impl Worker {
    pub(crate) fn new(
        old: &Path,
        key: &Path,
        go_binary: &Path,
        artifacts: &Path,
    ) -> Result<(Self, Initialization)> {
        let total = Instant::now();
        let (go, ready) = GoWorker::start(go_binary, artifacts)?;
        let start = Instant::now();
        let original = crate::relation(old)?;
        ensure!(
            ready.circuit_sha256 == original.metadata.circuit_sha256
                && ready.wires == original.metadata.wires(),
            "Go/Rust circuit identity mismatch"
        );
        let wires = ready.wires;
        let lowered = Arc::new(lowering::Lowered::compile(&original));
        let cs = ZkPari::<Bls12_377>::circuit_to_keygen_cs(lowering::Circuit {
            relation: lowered.clone(),
            original: None,
        })?;
        let matrices =
            cs.to_matrices().context("missing square matrices")?[SR1CS_PREDICATE_LABEL].clone();
        drop(cs);
        drop(original);
        let relation_preparation_ns = start.elapsed().as_nanos();
        let start = Instant::now();
        let bytes = fs::read(key)?;
        let key_file_read_ns = start.elapsed().as_nanos();
        let start = Instant::now();
        let key = crate::protocol::decode_key(&bytes)?;
        drop(bytes);
        let key_checked_decode_ns = start.elapsed().as_nanos();
        let start = Instant::now();
        let prover = PreparedProver::new(key, matrices)?;
        let key_association_ns = start.elapsed().as_nanos();
        let initialization = Initialization {
            go_compile_ns: ready.compile_ns,
            relation_preparation_ns,
            key_file_read_ns,
            key_checked_decode_ns,
            key_association_ns,
            total_ns: total.elapsed().as_nanos(),
        };
        Ok((
            Self {
                go,
                lowered,
                prover,
                wires,
            },
            initialization,
        ))
    }
    pub(crate) fn prove_using(
        &mut self,
        payload: &[u8],
        prove: impl FnOnce(&PreparedProver, &[Fr], &[Fr]) -> Result<Proof<Bls12_377>>,
    ) -> Result<(Vec<u8>, String, Timings)> {
        let total = Instant::now();
        let (go, bytes) = self.go.solve(payload, self.wires)?;
        let go_roundtrip_ns = total.elapsed().as_nanos();
        let start = Instant::now();
        let values = bytes
            .chunks_exact(32)
            .map(bridge::decode)
            .collect::<Result<Vec<Fr>>>()?;
        let statement = bridge::decode::<Fr>(&hex::decode(&go.statement)?)?;
        ensure!(
            values.len() == self.wires && values[0] == Fr::ONE && values[1] == statement,
            "assignment/public mapping mismatch"
        );
        let witnesses = self.lowered.witness(&values)?;
        let checked_mapping_ns = start.elapsed().as_nanos();
        let start = Instant::now();
        let proof = prove(&self.prover, &values[..2], &witnesses)?;
        let prove_ns = start.elapsed().as_nanos();
        let start = Instant::now();
        let mut output = MAGIC.to_vec();
        output.extend(crate::encode(&statement)?);
        output.extend(crate::encode(&proof)?);
        let encoding_ns = start.elapsed().as_nanos();
        let start = Instant::now();
        drop(witnesses);
        drop(values);
        drop(bytes);
        let cleanup_ns = start.elapsed().as_nanos();
        let statement = go.statement.clone();
        let timings = Timings {
            go_roundtrip_ns,
            checked_mapping_ns,
            prove_ns,
            encoding_ns,
            cleanup_ns,
            request_ns: total.elapsed().as_nanos(),
            go,
        };
        Ok((output, statement, timings))
    }
    pub(crate) fn verify_other_domain(&self, payload: &[u8], expected: &str) -> Result<bool> {
        ensure!(
            self.verify(payload, expected)?,
            "wrong-domain audit requires a valid proof"
        );
        let statement = bridge::decode::<Fr>(&payload[8..40])?;
        let proof: Proof<Bls12_377> = bridge::decode(&payload[40..])?;
        crate::protocol::verify_other_domain(&proof, self.prover.verifying_key(), &[statement])
    }
    pub(crate) fn verify(&self, payload: &[u8], expected: &str) -> Result<bool> {
        ensure!(
            payload.len() == 168 && payload.starts_with(MAGIC),
            "invalid B proof package"
        );
        let statement = bridge::decode::<Fr>(&payload[8..40])?;
        ensure!(
            statement == bridge::decode::<Fr>(&hex::decode(expected)?)?,
            "proof statement differs from request"
        );
        let proof: Proof<Bls12_377> = bridge::decode(&payload[40..])?;
        Ok(crate::protocol::verify(
            &proof,
            self.prover.verifying_key(),
            &[statement],
        ))
    }
}
#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn bounded_headers_reject_truncation_and_unknown_fields() {
        let q = Request {
            schema: SCHEMA.into(),
            op: "prove".into(),
            payload_bytes: 0,
            statement: String::new(),
        };
        let mut frame = Vec::new();
        write_frame(&mut frame, &q, &[]).unwrap();
        let actual: Request = read_header(&mut frame.as_slice()).unwrap();
        assert_eq!(actual.op, "prove");
        assert!(read_header::<Request>(&mut &frame[..frame.len() - 1]).is_err());
        assert!(read_header::<Request>(&mut &4097u32.to_be_bytes()[..]).is_err());
        let malformed = br#"{"schema":"s","op":"prove","payload_bytes":0,"extra":1}"#;
        let mut frame = (malformed.len() as u32).to_be_bytes().to_vec();
        frame.extend(malformed);
        assert!(read_header::<Request>(&mut frame.as_slice()).is_err());
    }
}
