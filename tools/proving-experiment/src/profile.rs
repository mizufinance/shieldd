use crate::{bridge, lowering, Solved};
use anyhow::{ensure, Context, Result};
use ark_bls12_377::Bls12_377;
use ark_relations::gr1cs::predicate::polynomial_constraint::SR1CS_PREDICATE_LABEL;
use ark_std::rand::rngs::OsRng;
use serde::Serialize;
use std::{fs, path::Path, sync::Arc, time::Instant};
use zkpari::{PreparedProver, ProvingProfile, ZkPari};

#[derive(Serialize)]
struct Phases {
    vectors_ns: u64,
    interpolation_ns: u64,
    quotient_ns: u64,
    masking_ns: u64,
    commitment_msm_ns: u64,
    transcript_opening_polynomials_ns: u64,
    opening_msm_ns: u64,
}
impl From<ProvingProfile> for Phases {
    fn from(p: ProvingProfile) -> Self {
        Self {
            vectors_ns: p.vectors_ns,
            interpolation_ns: p.interpolation_ns,
            quotient_ns: p.quotient_ns,
            masking_ns: p.masking_ns,
            commitment_msm_ns: p.commitment_msm_ns,
            transcript_opening_polynomials_ns: p.transcript_opening_polynomials_ns,
            opening_msm_ns: p.opening_msm_ns,
        }
    }
}
#[derive(Serialize)]
struct Sample {
    schema: &'static str,
    sample: usize,
    presolved_kernel_ns: u128,
    phases: Phases,
    verified: bool,
}

pub fn run(old: &Path, key: &Path, out: &Path) -> Result<()> {
    ensure!(
        !out.parent()
            .context("profile output parent")?
            .canonicalize()?
            .starts_with(old.canonicalize()?),
        "preserve old cache"
    );
    ensure!(!out.exists(), "profile output already exists");
    let original = crate::relation(old)?;
    let lowered = Arc::new(lowering::Lowered::compile(&original));
    let cs = ZkPari::<Bls12_377>::circuit_to_keygen_cs(lowering::Circuit {
        relation: lowered.clone(),
        original: None,
    })?;
    let matrices = cs.to_matrices().context("missing matrices")?[SR1CS_PREDICATE_LABEL].clone();
    let prover = PreparedProver::new(bridge::decode(&fs::read(key)?)?, matrices)?;
    let solved: Solved = serde_json::from_slice(&fs::read(old.join("transfer.json"))?)?;
    let original_values = bridge::assignment(&solved.assignment, &original, &solved.statement)?;
    lowered.validate(&original_values)?;
    let witnesses = lowered.witness(&original_values)?;
    let mut samples = Vec::new();
    for i in 0..8 {
        let start = Instant::now();
        let (proof, profile) =
            prover.prove_profiled(&original_values[..2], &witnesses, &mut OsRng)?;
        let elapsed = start.elapsed().as_nanos();
        ensure!(
            ZkPari::<Bls12_377>::verify(&proof, prover.verifying_key(), &original_values[1..2]),
            "profile proof rejected"
        );
        if i >= 3 {
            samples.push(Sample {
                schema: "shieldd.proving_experiment.presolved_profile.v1",
                sample: i - 3,
                presolved_kernel_ns: elapsed,
                phases: profile.into(),
                verified: true,
            });
        }
    }
    ensure!(!out.exists(), "profile output already exists");
    fs::write(out, serde_json::to_vec_pretty(&samples)?)?;
    Ok(())
}
