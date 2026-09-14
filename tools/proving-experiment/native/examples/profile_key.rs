use anyhow::{Result, ensure};
use commonware_codec::{Encode, RangeCfg, Read};
use commonware_cryptography::{
    Hasher,
    sha256::Sha256,
    transcript::{Transcript, Version},
    zk::pari,
};
use commonware_parallel::Rayon;
use serde::Serialize;
use std::{fs, num::NonZeroUsize, path::Path, time::Instant};
#[derive(Serialize)]
struct Record {
    schema: &'static str,
    key_sha256: String,
    key_bytes: usize,
    sequential_ns: u128,
    parallel_ns: u128,
    canonical_parity: bool,
    verified_scenarios: Vec<String>,
}
fn main() -> Result<()> {
    let args: Vec<_> = std::env::args_os().collect();
    ensure!(
        args.len() == 3,
        "usage: profile_key FULL_GATE NEW_OUTPUT_JSON"
    );
    let gate = Path::new(&args[1]);
    let out = Path::new(&args[2]);
    ensure!(!out.exists(), "preserve key diagnostic");
    let bytes = fs::read(gate.join("keys/native.pk"))?;
    let cfg = (RangeCfg::exact(1), RangeCfg::exact(1));
    let strategy = Rayon::new(NonZeroUsize::new(2).unwrap())?;
    let start = Instant::now();
    let mut input = bytes.as_slice();
    let sequential = pari::ProvingKey::read_cfg(&mut input, &cfg)?;
    ensure!(
        input.is_empty() && sequential.encode().as_ref() == bytes,
        "sequential canonical mismatch"
    );
    let sequential_ns = start.elapsed().as_nanos();
    drop(sequential);
    let start = Instant::now();
    let mut input = bytes.as_slice();
    let parallel = pari::ProvingKey::read_with_strategy(&mut input, &cfg, &strategy)?;
    ensure!(
        input.is_empty() && parallel.encode().as_ref() == bytes,
        "parallel canonical mismatch"
    );
    let parallel_ns = start.elapsed().as_nanos();
    let mut verified_scenarios = Vec::new();
    for scenario in [
        "transfer",
        "transfer_unregulated",
        "transfer_flagged",
        "transfer_accumulating",
        "transfer_over_limit_disclosure",
        "transfer_accumulator_continuation",
    ] {
        let proof_bytes = fs::read(gate.join(scenario).join("proof.bin"))?;
        let claim_bytes = fs::read(gate.join(scenario).join("claim.bin"))?;
        let mut input = proof_bytes.as_slice();
        let proof = pari::Proof::read_cfg(&mut input, &())?;
        ensure!(
            input.is_empty() && proof.encode().as_ref() == proof_bytes,
            "proof encoding"
        );
        let mut input = claim_bytes.as_slice();
        let claim = pari::Claim::read_cfg(&mut input, &cfg)?;
        ensure!(
            input.is_empty() && claim.encode().as_ref() == claim_bytes,
            "claim encoding"
        );
        let mut transcript =
            Transcript::new(b"shieldd-proving-experiment/native-transfer", Version::V1);
        ensure!(
            pari::verify(&mut transcript, parallel.verifying_key(), &claim, &proof),
            "cached real proof rejected"
        );
        verified_scenarios.push(scenario.into());
    }
    let record = Record {
        schema: "shieldd.native_experiment.key_profile.v1",
        key_sha256: hex::encode(Sha256::hash(&[&bytes]).as_ref()),
        key_bytes: bytes.len(),
        sequential_ns,
        parallel_ns,
        canonical_parity: true,
        verified_scenarios,
    };
    fs::write(out, serde_json::to_vec_pretty(&record)?)?;
    Ok(())
}
