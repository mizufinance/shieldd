use anyhow::{Result, ensure};
use commonware_cryptography::{Hasher, sha256::Sha256, zk::pari};
use rand::{SeedableRng, rngs::StdRng};
use serde::Serialize;
use shieldd_native_proving_experiment::{
    api::{Prover, RequestTimings},
    fixtures,
    hash::Parameters,
    map::Generators,
    witness_codec,
};
use std::{
    fs::{self, File},
    io::Write,
    path::Path,
};

#[derive(Serialize)]
struct Kernel {
    input_validation_ns: u128,
    relation_evaluation_ns: u128,
    interpolation_ns: u128,
    masking_ns: u128,
    quotient_ns: u128,
    commitment_msm_ns: u128,
    opening_polynomials_ns: u128,
    opening_msm_ns: u128,
}
impl From<pari::ProverTimings> for Kernel {
    fn from(t: pari::ProverTimings) -> Self {
        Self {
            input_validation_ns: t.input_validation_ns,
            relation_evaluation_ns: t.relation_evaluation_ns,
            interpolation_ns: t.interpolation_ns,
            masking_ns: t.masking_ns,
            quotient_ns: t.quotient_ns,
            commitment_msm_ns: t.commitment_msm_ns,
            opening_polynomials_ns: t.opening_polynomials_ns,
            opening_msm_ns: t.opening_msm_ns,
        }
    }
}
#[derive(Serialize)]
struct Sample {
    mode: &'static str,
    index: usize,
    warmup: bool,
    verified: bool,
    paired_proof_bytes_equal: Option<bool>,
    witness_sha256: String,
    proof_sha256: String,
    witness_bytes: usize,
    encoded_package_bytes: usize,
    request_call_wall_ns: u128,
    request: RequestTimings,
    kernel: Option<Kernel>,
}
#[derive(Serialize)]
struct Initialization {
    schema: &'static str,
    api: shieldd_native_proving_experiment::api::Initialization,
    workers: usize,
    source_witness_sha256: String,
    executable_sha256: String,
    proving_key_sha256: String,
    commonware_patch_sha256: String,
    limits: &'static str,
}
fn hash(bytes: &[u8]) -> String {
    hex::encode(Sha256::hash(&[bytes]).as_ref())
}
fn record(file: &mut File, value: &impl Serialize) -> Result<()> {
    serde_json::to_writer(&mut *file, value)?;
    file.write_all(b"\n")?;
    file.flush()?;
    Ok(())
}
fn main() -> Result<()> {
    let args: Vec<_> = std::env::args_os().collect();
    ensure!(
        args.len() == 3,
        "usage: profile_transfer NEW_CACHE_DIRECTORY KEY"
    );
    let root = Path::new(env!("CARGO_MANIFEST_DIR"));
    let cache = root.parent().unwrap().join("cache").canonicalize()?;
    let out = Path::new(&args[1]);
    ensure!(!out.exists(), "preserve existing diagnostic");
    ensure!(
        out.parent().unwrap().canonicalize()?.starts_with(&cache),
        "diagnostic must remain in experiment cache"
    );
    fs::create_dir(out)?;
    let p = Parameters::load()?;
    let g = Generators::derive(&p);
    let facts = fixtures::load()?;
    let payload = witness_codec::encode(&fixtures::build(&p, &g, &facts[0])?);
    fs::write(out.join("transfer.witness"), &payload)?;
    let pk = Path::new(&args[2]).canonicalize()?;
    let mut file = File::create(out.join("profile.jsonl"))?;
    let (prover, initialization) = Prover::new(&payload, &pk)?;
    record(
        &mut file,
        &Initialization {
            schema: "shieldd.native_experiment.complete_api_profile.v1",
            api: initialization,
            workers: 2,
            source_witness_sha256: facts[0].witness_sha256.clone(),
            executable_sha256: hash(&fs::read(std::env::current_exe()?)?),
            proving_key_sha256: hash(&fs::read(pk)?),
            commonware_patch_sha256: hash(&fs::read(
                root.join("patches/commonware-polynomial-migration.patch"),
            )?),
            limits: "Two prepared square-quotient warmups then one generic/square-quotient profiled pair, both using prepared assignment mapping. Complete encoded logical-witness API; fixture generation offline. Initialization diagnostics include key file read but not process creation. Paired randomness checks parity, not a fresh-proof corpus. Not final comparison samples.",
        },
    )?;
    for index in 0..2 {
        let call = std::time::Instant::now();
        let result = prover.prove(&payload)?;
        let request_call_wall_ns = call.elapsed().as_nanos();
        ensure!(
            prover.verify(&result.bytes, &payload)?,
            "warmup proof rejected"
        );
        fs::write(out.join(format!("warmup-{index}.proof")), &result.bytes)?;
        record(
            &mut file,
            &Sample {
                mode: "ordinary",
                index,
                warmup: true,
                verified: true,
                paired_proof_bytes_equal: None,
                witness_sha256: hash(&payload),
                proof_sha256: hash(&result.bytes),
                witness_bytes: payload.len(),
                encoded_package_bytes: result.bytes.len(),
                request_call_wall_ns,
                request: result.timings,
                kernel: None,
            },
        )?;
        eprintln!("native complete API warmup {index} verified");
    }
    let seed = rand::random::<[u8; 32]>();
    let mut ordinary = None;
    for (mode, method) in [
        ("generic_quotient_reference", pari::QuotientMethod::Generic),
        ("square_quotient_profiled", pari::QuotientMethod::Square),
    ] {
        let call = std::time::Instant::now();
        let result = prover.profile_with_rng(&payload, &mut StdRng::from_seed(seed), method)?;
        let request_call_wall_ns = call.elapsed().as_nanos();
        ensure!(
            prover.verify(&result.bytes, &payload)?,
            "profile proof rejected"
        );
        if let Some(previous) = &ordinary {
            ensure!(
                previous == &result.bytes,
                "profile changed proof arithmetic"
            );
        } else {
            ordinary = Some(result.bytes.clone());
        }
        fs::write(out.join(format!("{mode}.proof")), &result.bytes)?;
        record(
            &mut file,
            &Sample {
                mode,
                index: 0,
                warmup: false,
                verified: true,
                paired_proof_bytes_equal: (mode == "square_quotient_profiled").then_some(true),
                witness_sha256: hash(&payload),
                proof_sha256: hash(&result.bytes),
                witness_bytes: payload.len(),
                encoded_package_bytes: result.bytes.len(),
                request_call_wall_ns,
                request: result.timings,
                kernel: result.kernel.map(Into::into),
            },
        )?;
        eprintln!("native complete API {mode} proof verified");
    }
    Ok(())
}
