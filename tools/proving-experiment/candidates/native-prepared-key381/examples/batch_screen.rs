//! Checked verifier-only screen using a disclosed repeated pool of real Transfer proofs.
use anyhow::{Result, ensure};
use commonware_codec::{Encode, RangeCfg, Read};
use commonware_cryptography::{
    Hasher,
    sha256::Sha256,
    transcript::{Transcript, Version},
    zk::pari,
};
use commonware_parallel::Sequential;
use serde::{Deserialize, Serialize};
use std::{collections::HashSet, fs, path::PathBuf, time::Instant};
const MAGIC: &[u8; 8] = b"SHNC3401";
#[derive(Clone, Deserialize)]
struct Input {
    scenario: String,
    proof: String,
    statement: String,
}
#[derive(Deserialize)]
struct Corpus {
    entries: Vec<Input>,
}
#[derive(Serialize)]
struct Sample {
    stage: &'static str,
    index: usize,
    real_count: usize,
    preparation_ns: u128,
    verify_ns: u128,
    checked_ns: u128,
    accepted: bool,
}
#[derive(Serialize)]
struct Check {
    case: &'static str,
    passed: bool,
}
#[derive(Serialize)]
struct Report {
    schema: &'static str,
    verifier_key_sha256: String,
    corpus_sha256: String,
    key_initialization_ns: u128,
    unique_proofs: usize,
    unique_statements: usize,
    unique_scenarios: usize,
    batch_count: usize,
    encoded_package_bytes: usize,
    external_statement_bytes: usize,
    checks: Vec<Check>,
    samples: Vec<Sample>,
    strategy: &'static str,
    randomness: &'static str,
    limits: &'static str,
}
fn hash(bytes: &[u8]) -> String {
    hex::encode(Sha256::hash(&[bytes]).as_ref())
}
fn transcript() -> Transcript {
    Transcript::new(b"shieldd-proving-experiment/native-transfer", Version::V1)
}
fn item(record: &Input) -> Result<(pari::Claim, pari::Proof)> {
    let bytes = hex::decode(&record.proof)?;
    let expected = hex::decode(&record.statement)?;
    ensure!(bytes.starts_with(MAGIC), "wrong package marker");
    let mut input = &bytes[MAGIC.len()..];
    let claim = pari::Claim::read_cfg(&mut input, &(RangeCfg::exact(1), RangeCfg::exact(1)))?;
    ensure!(
        claim.public_inputs[0].encode().as_ref() == expected,
        "statement differs"
    );
    let proof = pari::Proof::read_cfg(&mut input, &())?;
    ensure!(input.is_empty(), "trailing proof bytes");
    let mut canonical = MAGIC.to_vec();
    canonical.extend_from_slice(&claim.encode());
    canonical.extend_from_slice(&proof.encode());
    ensure!(canonical == bytes, "noncanonical proof package");
    Ok((claim, proof))
}
fn run(
    vk: &pari::VerifyingKey,
    batch: &[Input],
    stage: &'static str,
    index: usize,
) -> Result<Sample> {
    let start = Instant::now();
    let decoded = batch.iter().map(item).collect::<Result<Vec<_>>>()?;
    let mut transcripts = (0..batch.len()).map(|_| transcript()).collect::<Vec<_>>();
    let preparation_ns = start.elapsed().as_nanos();
    let crypto = Instant::now();
    let accepted = pari::batch_verify(
        &mut rand::rng(),
        &mut transcripts,
        vk,
        &decoded,
        &Sequential,
    );
    let verify_ns = crypto.elapsed().as_nanos();
    Ok(Sample {
        stage,
        index,
        real_count: batch.len(),
        preparation_ns,
        verify_ns,
        checked_ns: start.elapsed().as_nanos(),
        accepted,
    })
}
fn main() -> Result<()> {
    let args = std::env::args().collect::<Vec<_>>();
    ensure!(args.len() == 4, "usage: batch_screen VK CORPUS NEW_REPORT");
    let out = PathBuf::from(&args[3]);
    ensure!(!out.exists(), "preserve existing results");
    let start = Instant::now();
    let key_bytes = fs::read(&args[1])?;
    ensure!(
        hash(&key_bytes) == "ae426ec83c319aa82ea35499534f022f554726e15b5ae5ae2bedd18a67771049",
        "wrong final C key"
    );
    let mut input = key_bytes.as_slice();
    let vk = pari::VerifyingKey::read_cfg(&mut input, &(RangeCfg::exact(1), RangeCfg::exact(1)))?;
    ensure!(
        input.is_empty() && vk.encode().as_ref() == key_bytes,
        "noncanonical key"
    );
    ensure!(
        hex::encode(vk.relation_digest())
            == "722fba7093a6188bba83708f0abe409a39cf34fa4451b95594e82781b68f3783",
        "wrong relation"
    );
    let key_initialization_ns = start.elapsed().as_nanos();
    let raw = fs::read(&args[2])?;
    let corpus: Corpus = serde_json::from_slice(&raw)?;
    ensure!(
        corpus.entries.len() == 14,
        "expected retained fourteen-proof pool"
    );
    let unique_proofs = corpus
        .entries
        .iter()
        .map(|x| &x.proof)
        .collect::<HashSet<_>>()
        .len();
    let unique_statements = corpus
        .entries
        .iter()
        .map(|x| &x.statement)
        .collect::<HashSet<_>>()
        .len();
    let unique_scenarios = corpus
        .entries
        .iter()
        .map(|x| &x.scenario)
        .collect::<HashSet<_>>()
        .len();
    ensure!(
        unique_proofs == 14 && unique_statements == 6 && unique_scenarios == 6,
        "unexpected diversity"
    );
    for record in &corpus.entries {
        let (claim, proof) = item(record)?;
        ensure!(
            pari::verify(&mut transcript(), &vk, &claim, &proof),
            "invalid cached proof"
        );
    }
    let batch = (0..4096)
        .map(|i| corpus.entries[i % corpus.entries.len()].clone())
        .collect::<Vec<_>>();
    let mut checks = vec![Check {
        case: "all_unique_proofs_individually_verified",
        passed: true,
    }];
    let mut bad = batch.clone();
    let shortened = bad[2048].proof.len() - 2;
    bad[2048].proof.truncate(shortened);
    checks.push(Check {
        case: "one_truncated_package_in_4096",
        passed: run(&vk, &bad, "negative", 0).is_err(),
    });
    let mut bad = batch.clone();
    bad[2048].proof.push_str("00");
    checks.push(Check {
        case: "one_noncanonical_trailing_package_in_4096",
        passed: run(&vk, &bad, "negative", 0).is_err(),
    });
    let mut bad = batch.clone();
    bad[2048].statement = corpus.entries[1].statement.clone();
    checks.push(Check {
        case: "one_altered_external_statement_in_4096",
        passed: run(&vk, &bad, "negative", 0).is_err(),
    });
    let (claim, _) = item(&batch[2048])?;
    let (_, other) = item(&corpus.entries[1])?;
    let mut mismatched = MAGIC.to_vec();
    mismatched.extend_from_slice(&claim.encode());
    mismatched.extend_from_slice(&other.encode());
    let mut bad = vec![batch[2048].clone(), batch[0].clone()];
    bad[0].proof = hex::encode(mismatched);
    item(&bad[0])?;
    checks.push(Check {
        case: "one_canonical_but_invalid_proof_in_two",
        passed: !run(&vk, &bad, "negative", 0)?.accepted,
    });
    ensure!(checks.iter().all(|c| c.passed), "negative check failed");
    fs::write(
        out.with_extension("checks.json"),
        serde_json::to_vec_pretty(&checks)?,
    )?;
    let mut samples = Vec::new();
    for (stage, n) in [("single_observation", 1)] {
        for index in 0..n {
            let sample = run(&vk, &batch, stage, index)?;
            ensure!(sample.accepted, "valid batch failed");
            fs::write(
                out.with_extension("sample.json"),
                serde_json::to_vec_pretty(&sample)?,
            )?;
            samples.push(sample);
        }
    }
    let report = Report {
        schema: "shieldd.native_batch_screen381.v1",
        verifier_key_sha256: hash(&key_bytes),
        corpus_sha256: hash(&raw),
        key_initialization_ns,
        unique_proofs,
        unique_statements,
        unique_scenarios,
        batch_count: batch.len(),
        encoded_package_bytes: batch.iter().map(|x| x.proof.len() / 2).sum(),
        external_statement_bytes: 32 * batch.len(),
        checks,
        samples,
        strategy: "Sequential; RAYON_NUM_THREADS=1",
        randomness: "Upstream verifier-owned unpredictable 128-bit coefficients from rand::rng(), freshly sampled per batch invocation",
        limits: "One bounded observation, no completed full-size warmup or percentile estimate. Preliminary verifier-only desktop screen: 14 real cached proof packages cyclically repeated to 4096, no deduplication. All entries are decoded and checked each invocation. Repeated input/cache/locality/MSM bias remains; not an independent 4096-proof corpus, executable block, payment TPS or phone result. File I/O and key initialization excluded from batch request, hex decoding/canonical/subgroup checks, transcript construction/preflight/randomness and crypto included.",
    };
    fs::write(out, serde_json::to_vec_pretty(&report)?)?;
    Ok(())
}
