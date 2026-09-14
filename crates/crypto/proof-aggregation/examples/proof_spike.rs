//! Development-only JSONL baseline using the shipping Groth16 and SnarkPack v1 APIs.
#[path = "../../../../tools/zkpari-spike/src/protocol.rs"]
mod protocol;
use anyhow::{ensure, Result};
use ark_groth16::{prepare_verifying_key, Groth16, PreparedVerifyingKey, Proof};
use ark_serialize::{CanonicalDeserialize, CanonicalSerialize};
use decaf377::{Bls12_377, Fq};
use protocol::{ProofRecord, Request, Response};
use shieldd_sdk_proof_aggregation::{
    aggregate_family, pad_items_to_power_of_two, prepare_verify_inputs, srs_id, srs_report,
    verify_family_aggregate, AggregateStatement, DevSrs, ProofFamilyId, AGGREGATE_PROTOCOL_VERSION,
};
use shieldd_sdk_proof_params::{batch::BatchItem, transfer_proof_verification_key};
use shieldd_sdk_shielded_pool::gnark::translate_transfer_proof_result;
use std::{
    io::{self, BufRead, Write},
    time::Instant,
};

fn ns(start: Instant) -> u64 {
    start.elapsed().as_nanos() as u64
}
fn decode<T: CanonicalSerialize + CanonicalDeserialize>(bytes: &[u8]) -> Result<T> {
    let mut input = bytes;
    let result = T::deserialize_compressed(&mut input)?;
    ensure!(input.is_empty(), "trailing bytes");
    let mut canonical = Vec::new();
    result.serialize_compressed(&mut canonical)?;
    ensure!(canonical == bytes, "noncanonical encoding");
    Ok(result)
}
fn item(p: &ProofRecord) -> Result<BatchItem> {
    Ok(BatchItem {
        proof: decode(&hex::decode(&p.proof)?)?,
        public_inputs: vec![decode(&hex::decode(&p.statement)?)?],
    })
}
struct Worker {
    pvk: PreparedVerifyingKey<Bls12_377>,
    srs: DevSrs,
}
impl Worker {
    fn statement_from_rows(&self, mut rows: Vec<Vec<Fq>>) -> Result<AggregateStatement> {
        let real_count = rows.len();
        ensure!((1..=4096).contains(&real_count), "invalid real count");
        rows.resize(real_count.next_power_of_two(), rows[real_count - 1].clone());
        Ok(AggregateStatement::new(
            AGGREGATE_PROTOCOL_VERSION,
            ProofFamilyId::Transfer,
            srs_id(&self.srs),
            &self.pvk,
            real_count as u32,
            &rows,
        )?)
    }
    fn statement(&self, items: &[BatchItem]) -> Result<AggregateStatement> {
        let prepared = prepare_verify_inputs(items, 4096)?;
        Ok(AggregateStatement::new(
            AGGREGATE_PROTOCOL_VERSION,
            ProofFamilyId::Transfer,
            srs_id(&self.srs),
            &self.pvk,
            items.len() as u32,
            &prepared.padded_public_inputs,
        )?)
    }
    fn handle(&self, q: Request) -> Result<Response> {
        let mut r = Response::new();
        match q.op.as_str() {
            "prepare_batch" => {
                let start = Instant::now();
                let report = srs_report(&self.srs)?;
                r.srs_preparation_ns = ns(start);
                r.srs_bytes = report.compressed_bytes;
            }
            "import" => {
                let start = Instant::now();
                let (hash, proof) = translate_transfer_proof_result(&hex::decode(q.gnark_proof)?)?;
                let mut statement = Vec::new();
                hash.serialize_compressed(&mut statement)?;
                ensure!(hex::encode(statement) == q.statement, "statement mismatch");
                r.proof_bytes = proof.inner.len();
                r.proof = Some(ProofRecord {
                    scenario: q.scenario,
                    statement: q.statement,
                    proof: hex::encode(proof.inner),
                });
                r.encoding_ns = ns(start);
            }
            "verify" => {
                ensure!(q.proofs.len() == 1, "one proof required");
                let p = item(&q.proofs[0])?;
                let start = Instant::now();
                r.accepted =
                    Groth16::<Bls12_377>::verify_proof(&self.pvk, &p.proof, &p.public_inputs)?;
                r.verify_prepared_ns = ns(start);
                let start = Instant::now();
                let p = item(&q.proofs[0])?;
                r.accepted &=
                    Groth16::<Bls12_377>::verify_proof(&self.pvk, &p.proof, &p.public_inputs)?;
                r.verify_checked_ns = ns(start);
            }
            "aggregate" => {
                ensure!(
                    !q.proofs.is_empty() && q.proofs.len() <= 4096,
                    "invalid corpus prefix count"
                );
                let start = Instant::now();
                let items = q.proofs.iter().map(item).collect::<Result<Vec<_>>>()?;
                let statement = self.statement(&items)?;
                let padded = pad_items_to_power_of_two(&items, 4096)?;
                r.aggregation_preparation_ns = ns(start);
                let crypto = Instant::now();
                let bytes = aggregate_family(&statement, &self.pvk, &padded, &self.srs)?;
                r.aggregation_ns = ns(crypto);
                r.aggregation_checked_ns = ns(start);
                r.aggregate_bytes = bytes.len();
                r.aggregate = Some(hex::encode(bytes));
                r.real_count = items.len();
                r.padded_count = padded.len();
            }
            "batch" => {
                ensure!(
                    !q.statements.is_empty() && q.statements.len() <= 4096,
                    "invalid corpus prefix count"
                );
                let start = Instant::now();
                // Aggregate verification consumes statements and the wrapped aggregate.
                // Individual proof decoding belongs to aggregation, not this verifier path.
                let inputs = q
                    .statements
                    .iter()
                    .map(|statement| Ok(vec![decode::<Fq>(&hex::decode(statement)?)?]))
                    .collect::<Result<Vec<_>>>()?;
                let real_count = inputs.len();
                let statement = self.statement_from_rows(inputs)?;
                let bytes = hex::decode(&q.aggregate)?;
                r.batch_preparation_ns = ns(start);
                let crypto = Instant::now();
                r.accepted =
                    verify_family_aggregate(&statement, &self.pvk, &bytes, &self.srs).is_ok();
                r.batch_verify_ns = ns(crypto);
                r.batch_checked_ns = ns(start);
                r.real_count = real_count;
                r.padded_count = real_count.next_power_of_two();
                r.aggregate_bytes = bytes.len();
                r.statement_bytes = 32 * real_count;
            }
            "negative" => {
                ensure!(!q.proofs.is_empty(), "proof required");
                let p = item(&q.proofs[0])?;
                ensure!(
                    Groth16::<Bls12_377>::verify_proof(&self.pvk, &p.proof, &p.public_inputs)?,
                    "invalid positive control"
                );
                ensure!(
                    !Groth16::<Bls12_377>::verify_proof(
                        &self.pvk,
                        &p.proof,
                        &[p.public_inputs[0] + Fq::ONE]
                    )?,
                    "wrong statement accepted"
                );
                let mut wrong = self.pvk.vk.clone();
                wrong.alpha_g1 = Default::default();
                ensure!(
                    !Groth16::<Bls12_377>::verify_proof(
                        &prepare_verifying_key(&wrong),
                        &p.proof,
                        &p.public_inputs
                    )?,
                    "wrong key accepted"
                );
                let mut bytes = hex::decode(&q.proofs[0].proof)?;
                ensure!(
                    decode::<Proof<Bls12_377>>(&bytes[..bytes.len() - 1]).is_err(),
                    "truncation accepted"
                );
                bytes.push(0);
                ensure!(
                    decode::<Proof<Bls12_377>>(&bytes).is_err(),
                    "trailing bytes accepted"
                );
                let mut items = vec![p.clone(); 3];
                let statement = self.statement(&items)?;
                items[1].proof.a = Default::default();
                let padded = pad_items_to_power_of_two(&items, 4096)?;
                match aggregate_family(&statement, &self.pvk, &padded, &self.srs) {
                    Ok(bytes) => ensure!(
                        verify_family_aggregate(&statement, &self.pvk, &bytes, &self.srs).is_err(),
                        "bad batch item accepted"
                    ),
                    Err(_) => (),
                }
                let rows = vec![
                    vec![Fq::ONE],
                    vec![Fq::ONE],
                    vec![Fq::ONE],
                    vec![Fq::from(2u64)],
                ];
                ensure!(
                    AggregateStatement::new(
                        AGGREGATE_PROTOCOL_VERSION,
                        ProofFamilyId::Transfer,
                        srs_id(&self.srs),
                        &self.pvk,
                        3,
                        &rows
                    )
                    .is_err(),
                    "bad padding accepted"
                );
                ensure!(
                    AggregateStatement::new(
                        AGGREGATE_PROTOCOL_VERSION,
                        ProofFamilyId::Transfer,
                        srs_id(&self.srs),
                        &self.pvk,
                        5,
                        &rows
                    )
                    .is_err(),
                    "bad count accepted"
                );
                r.accepted = true;
            }
            _ => anyhow::bail!("unknown operation"),
        }
        Ok(r)
    }
}
fn main() -> Result<()> {
    let start = Instant::now();
    let key = Instant::now();
    let pvk = transfer_proof_verification_key().clone();
    let key_preparation_ns = ns(key);
    let srs = DevSrs::default();
    let worker = Worker { pvk, srs };
    let mut r = Response::new();
    r.initialization_ns = ns(start);
    r.key_preparation_ns = key_preparation_ns;
    r.key_bytes = worker.pvk.vk.compressed_size();
    r.peak_rss_bytes = protocol::peak_rss_bytes();
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

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn statement_only_padding_matches_shipping_preparation() {
        let worker = Worker {
            pvk: transfer_proof_verification_key().clone(),
            srs: DevSrs::default(),
        };
        for count in [
            1, 2, 8, 16, 32, 48, 64, 128, 256, 257, 512, 1024, 1025, 2048, 4096,
        ] {
            let items: Vec<_> = (0..count)
                .map(|i| BatchItem {
                    proof: Proof::default(),
                    public_inputs: vec![Fq::from(i as u64)],
                })
                .collect();
            let rows = items.iter().map(|i| i.public_inputs.clone()).collect();
            assert_eq!(
                worker.statement(&items).unwrap().statement_digest(),
                worker.statement_from_rows(rows).unwrap().statement_digest()
            );
        }
    }
}
