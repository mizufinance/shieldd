mod bridge;
mod protocol;
use anyhow::{ensure, Context, Result};
use ark_bls12_377::{Bls12_377, Fr};
use ark_ec::{AffineRepr, CurveGroup};
use ark_ff::Field;
use ark_poly::EvaluationDomain;
use ark_serialize::CanonicalSerialize;
use ark_std::rand::rngs::OsRng;
use bridge::{assignment, decode, validate_converted, Circuit, Metadata, Relation};
use protocol::{ProofRecord, Request, Response};
use serde::Deserialize;
use serde_json::json;
use std::{
    fs,
    io::{self, BufRead, Write},
    path::{Path, PathBuf},
    sync::Arc,
    time::Instant,
};
use zkpari::{Proof, ProvingKey, VerifyingKey, ZkPari};

const SCENARIOS: [&str; 6] = [
    "transfer",
    "transfer_unregulated",
    "transfer_flagged",
    "transfer_accumulating",
    "transfer_over_limit_disclosure",
    "transfer_accumulator_continuation",
];

#[derive(Deserialize)]
struct Solved {
    assignment: String,
    statement: String,
}
fn encode<T: CanonicalSerialize>(value: &T) -> Result<Vec<u8>> {
    let mut bytes = Vec::new();
    value.serialize_compressed(&mut bytes)?;
    Ok(bytes)
}
fn relation(dir: &Path) -> Result<Arc<Relation>> {
    let metadata: Metadata = serde_json::from_slice(&fs::read(dir.join("metadata.json"))?)?;
    Ok(Arc::new(Relation::read(
        &dir.join("transfer.r1cs"),
        metadata,
    )?))
}
fn ns(start: Instant) -> u64 {
    start.elapsed().as_nanos() as u64
}
fn item(record: &ProofRecord) -> Result<(Proof<Bls12_377>, Vec<Fr>)> {
    Ok((
        decode(&hex::decode(&record.proof)?)?,
        vec![decode(&hex::decode(&record.statement)?)?],
    ))
}
struct Prover {
    relation: Arc<Relation>,
    pk: ProvingKey<Bls12_377>,
}
struct Worker {
    prover: Option<Prover>,
    vk: VerifyingKey<Bls12_377>,
}
impl Worker {
    fn handle(&self, q: Request) -> Result<Response> {
        let mut r = Response::new();
        match q.op.as_str() {
            "prove" => {
                let prover = self.prover.as_ref().context("verification-only worker")?;
                let start = Instant::now();
                let values = assignment(&q.assignment, &prover.relation, &q.statement)?;
                let circuit = Circuit {
                    relation: prover.relation.clone(),
                    values: Some(Arc::new(values)),
                };
                // Diagnostic validation is part of this development bridge's measured cost.
                validate_converted(circuit.clone())?;
                r.bridge_ns = ns(start);
                let start = Instant::now();
                let proof = ZkPari::<Bls12_377>::prove(circuit, &prover.pk, &mut OsRng)?;
                r.prove_ns = ns(start);
                let start = Instant::now();
                let bytes = encode(&proof)?;
                r.proof_bytes = bytes.len();
                r.proof = Some(ProofRecord {
                    scenario: q.scenario,
                    statement: q.statement,
                    proof: hex::encode(bytes),
                });
                r.encoding_ns = ns(start);
            }
            "verify" => {
                ensure!(q.proofs.len() == 1, "one proof required");
                let (proof, inputs) = item(&q.proofs[0])?;
                let start = Instant::now();
                r.accepted = ZkPari::<Bls12_377>::verify(&proof, &self.vk, &inputs);
                r.verify_prepared_ns = ns(start);
                let start = Instant::now();
                let (proof, inputs) = item(&q.proofs[0])?;
                r.accepted &= ZkPari::<Bls12_377>::verify(&proof, &self.vk, &inputs);
                r.verify_checked_ns = ns(start);
            }
            "batch" => {
                ensure!(
                    !q.proofs.is_empty() && q.proofs.len() <= 4096,
                    "invalid corpus prefix count"
                );
                let start = Instant::now();
                let batch = q.proofs.iter().map(item).collect::<Result<Vec<_>>>()?;
                r.batch_preparation_ns = ns(start);
                let crypto = Instant::now();
                r.accepted = ZkPari::<Bls12_377>::batch_verify(&batch, &self.vk, &mut OsRng);
                r.batch_verify_ns = ns(crypto);
                r.batch_checked_ns = ns(start);
                r.real_count = batch.len();
                r.padded_count = batch.len();
                r.proof_bytes = q.proofs.iter().map(|p| p.proof.len() / 2).sum();
                r.statement_bytes = 32 * batch.len();
            }
            "negative" => {
                ensure!(!q.proofs.is_empty(), "proof required");
                let (proof, input) = item(&q.proofs[0])?;
                ensure!(
                    ZkPari::<Bls12_377>::verify(&proof, &self.vk, &input),
                    "invalid positive control"
                );
                ensure!(
                    !ZkPari::<Bls12_377>::verify(&proof, &self.vk, &[input[0] + Fr::ONE]),
                    "wrong statement accepted"
                );
                let vk = &self.vk;
                let wrong = VerifyingKey::new(
                    vk.succinct_index.clone(),
                    vk.g,
                    (vk.alpha_g.into_group() + vk.g).into_affine(),
                    vk.beta_g,
                    vk.delta_h,
                    vk.tau_h,
                    vk.h,
                    vk.domain,
                );
                ensure!(
                    !ZkPari::<Bls12_377>::verify(&proof, &wrong, &input),
                    "wrong key accepted"
                );
                let mut bytes = encode(&proof)?;
                ensure!(
                    decode::<Proof<Bls12_377>>(&bytes[..bytes.len() - 1]).is_err(),
                    "truncation accepted"
                );
                bytes.push(0);
                ensure!(
                    decode::<Proof<Bls12_377>>(&bytes).is_err(),
                    "noncanonical proof accepted"
                );
                let mut batch = vec![(proof, input); 3];
                batch[1].0.v_a += Fr::ONE;
                ensure!(
                    !ZkPari::<Bls12_377>::batch_verify(&batch, vk, &mut OsRng),
                    "bad batch item accepted"
                );
                r.accepted = true;
            }
            _ => anyhow::bail!("unknown operation"),
        }
        Ok(r)
    }
}
fn serve(dir: &Path, with_prover: bool) -> Result<()> {
    let start = Instant::now();
    let mut r = Response::new();
    let key = Instant::now();
    let vk: VerifyingKey<Bls12_377> = decode(&fs::read(dir.join("zkpari.vk"))?)?;
    r.key_preparation_ns = ns(key);
    r.key_bytes = vk.compressed_size();
    let prover = if with_prover {
        let timer = Instant::now();
        let relation = relation(dir)?;
        r.relation_load_ns = ns(timer);
        let timer = Instant::now();
        let pk: ProvingKey<Bls12_377> = decode(&fs::read(dir.join("zkpari.pk"))?)?;
        r.proving_key_load_ns = ns(timer);
        ensure!(
            encode(&pk.verifying_key)? == encode(&vk)?,
            "key pair mismatch"
        );
        r.key_bytes += pk.compressed_size();
        Some(Prover { relation, pk })
    } else {
        None
    };
    r.initialization_ns = ns(start);
    r.peak_rss_bytes = protocol::peak_rss_bytes();
    let worker = Worker { prover, vk };
    let stdout = io::stdout();
    let mut out = stdout.lock();
    serde_json::to_writer(&mut out, &r)?;
    writeln!(out)?;
    out.flush()?;
    for line in io::stdin().lock().lines() {
        let result = serde_json::from_str(&line?)
            .map_err(anyhow::Error::from)
            .and_then(|q| worker.handle(q));
        let mut r = result.unwrap_or_else(|e| Response {
            error: Some(format!("{e:#}")),
            ..Response::new()
        });
        r.peak_rss_bytes = protocol::peak_rss_bytes();
        serde_json::to_writer(&mut out, &r)?;
        writeln!(out)?;
        out.flush()?;
    }
    Ok(())
}
fn gate(dir: &Path, scenarios: &[&str]) -> Result<()> {
    let relation = relation(dir)?;
    let mut circuits = Vec::new();
    let mut inputs = Vec::new();
    for scenario in scenarios {
        let solved: Solved =
            serde_json::from_slice(&fs::read(dir.join(format!("{scenario}.json")))?)?;
        let values = assignment(&solved.assignment, &relation, &solved.statement)?;
        inputs.push(vec![values[1]]);
        let circuit = Circuit {
            relation: relation.clone(),
            values: Some(Arc::new(values)),
        };
        let converted = validate_converted(circuit.clone())?;
        println!(
            "{}",
            json!({"event":"assignment_validated", "scenario":scenario, "original_constraints":relation.metadata.constraints, "converted_constraints":converted})
        );
        circuits.push(circuit);
    }
    // The original constant/public wires are constrained; these changes must fail.
    for index in [0, 1, 2] {
        let mut bad = circuits[0].values.as_ref().unwrap().as_ref().clone();
        bad[index] += Fr::ONE;
        ensure!(
            relation.validate(&bad).is_err(),
            "altered wire {index} accepted"
        );
    }
    let mut bad = circuits[0].values.as_ref().unwrap().as_ref().clone();
    bad.swap(1, 2);
    ensure!(
        relation.validate(&bad).is_err(),
        "incorrect wire mapping accepted"
    );
    ensure!(
        validate_converted(Circuit {
            relation: relation.clone(),
            values: Some(Arc::new(bad))
        })
        .is_err(),
        "converted relation accepted wrong wire mapping"
    );
    let original_domain =
        (relation.metadata.constraints + relation.metadata.public).next_power_of_two();
    let start = Instant::now();
    let (pk, vk) = ZkPari::<Bls12_377>::keygen(
        Circuit {
            relation,
            values: None,
        },
        &mut OsRng,
    );
    println!(
        "{}",
        json!({"event":"keygen", "ns":start.elapsed().as_nanos(), "original_domain":original_domain, "domain":vk.domain.size(), "maximum_multiplication_domain":2*vk.domain.size(), "converted_constraints":vk.succinct_index.num_constraints})
    );
    fs::write(dir.join("zkpari.pk"), encode(&pk)?)?;
    fs::write(dir.join("zkpari.vk"), encode(&vk)?)?;
    let wrong_vk = VerifyingKey::new(
        vk.succinct_index.clone(),
        vk.g,
        (vk.alpha_g.into_group() + vk.g).into_affine(),
        vk.beta_g,
        vk.delta_h,
        vk.tau_h,
        vk.h,
        vk.domain,
    );
    let mut batch = Vec::new();
    for ((scenario, circuit), input) in scenarios.iter().zip(circuits).zip(inputs) {
        let start = Instant::now();
        let proof = ZkPari::<Bls12_377>::prove(circuit, &pk, &mut OsRng)?;
        let prove_ns = start.elapsed().as_nanos();
        ensure!(
            ZkPari::<Bls12_377>::verify(&proof, &vk, &input),
            "valid Transfer rejected: {scenario}"
        );
        ensure!(
            !ZkPari::<Bls12_377>::verify(&proof, &vk, &[input[0] + Fr::ONE]),
            "wrong statement accepted"
        );
        ensure!(
            !ZkPari::<Bls12_377>::verify(&proof, &wrong_vk, &input),
            "wrong key accepted"
        );
        let bytes = encode(&proof)?;
        ensure!(
            decode::<Proof<Bls12_377>>(&bytes[..bytes.len() - 1]).is_err(),
            "truncated proof accepted"
        );
        let mut trailing = bytes.clone();
        trailing.push(0);
        ensure!(
            decode::<Proof<Bls12_377>>(&trailing).is_err(),
            "noncanonical proof accepted"
        );
        fs::write(dir.join(format!("{scenario}.zkpari")), &bytes)?;
        println!(
            "{}",
            json!({"event":"proof_validated", "scenario":scenario, "prove_from_assignment_ns":prove_ns, "bytes":bytes.len()})
        );
        batch.push((proof, input));
    }
    ensure!(
        ZkPari::<Bls12_377>::batch_verify(&batch, &vk, &mut OsRng),
        "valid batch rejected"
    );
    batch[0].0.v_a += Fr::ONE;
    ensure!(
        !ZkPari::<Bls12_377>::batch_verify(&batch, &vk, &mut OsRng),
        "invalid batch accepted"
    );
    println!(
        "{}",
        json!({"event":"gate_passed", "scenarios":scenarios.len()})
    );
    Ok(())
}
fn main() -> Result<()> {
    let args: Vec<_> = std::env::args().collect();
    let dir = PathBuf::from(
        args.get(2)
            .context("usage: shieldd-zkpari-spike gate CACHE")?,
    );
    match args.get(1).map(String::as_str) {
        Some("gate") => gate(&dir, &SCENARIOS),
        Some("feasibility") => gate(&dir, &["transfer"]),
        Some("worker") => serve(&dir, true),
        Some("verify-worker") => serve(&dir, false),
        _ => anyhow::bail!("unknown command"),
    }
}
