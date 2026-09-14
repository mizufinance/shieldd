//! Exact real Transfer operands: native, prepared, and combined blst MSMs.
use anyhow::{Result, ensure};
use commonware_codec::Encode;
use commonware_cryptography::{
    Hasher,
    bls12381::primitives::group::{G1, PreparedG1Msm, Scalar},
    sha256::Sha256,
};
use commonware_math::algebra::{Additive, Space};
use commonware_parallel::Rayon;
use serde::Serialize;
use shieldd_native_proving_experiment::{
    api::{Initialization, Prover},
    fixtures,
    hash::Parameters,
    map::Generators,
    witness_codec,
};
use std::{
    fs::{self, File},
    io::Write,
    num::NonZeroUsize,
    path::{Path, PathBuf},
    time::Instant,
};
const NAMES: [&str; 5] = ["witness", "masks", "quotient", "opening_a", "opening_r"];
fn sha(bytes: &[u8]) -> String {
    hex::encode(Sha256::hash(&[bytes]).as_ref())
}
#[derive(Serialize)]
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
fn record(file: &mut File, value: &impl Serialize) -> Result<()> {
    serde_json::to_writer(&mut *file, value)?;
    file.write_all(b"\n")?;
    file.flush()?;
    Ok(())
}
struct Captured {
    bases: Vec<G1>,
    scalars: Vec<Scalar>,
    expected: G1,
    reference_ns: u128,
}
#[derive(Serialize)]
struct Operand {
    name: &'static str,
    count: usize,
    identity_bases: usize,
    zero_scalars: usize,
    nonzero_pairs: usize,
    bases: Identity,
    scalars: Identity,
    expected: Identity,
    reference_ns: u128,
}
#[derive(Serialize)]
struct Header {
    schema: &'static str,
    initialization: Initialization,
    proof: Identity,
    full_api_capture_wall_ns: u128,
    sources: Vec<Identity>,
    operands: Vec<Operand>,
    prepared_initialization_ns: u128,
    prepared_resident_bytes: usize,
    combined_initialization_ns: u128,
    combined_resident_bytes: usize,
    workers: usize,
    limits: &'static str,
}
#[derive(Serialize)]
struct Sample {
    schema: &'static str,
    operation: &'static str,
    variant: &'static str,
    block: usize,
    warmup: bool,
    points: usize,
    wall_ns: u128,
    output_sha256: String,
    exact_group_equality: bool,
}
#[derive(Serialize)]
struct Complete {
    schema: &'static str,
    samples: Identity,
    arithmetic_calls_verified: usize,
    real_proofs_verified: usize,
}
fn main() -> Result<()> {
    let args: Vec<PathBuf> = std::env::args_os().skip(1).map(PathBuf::from).collect();
    ensure!(args.len() == 2, "usage: prepared_msm NEW_OUTPUT KEY");
    let out = &args[0];
    let key = &args[1];
    ensure!(!out.exists(), "preserve previous run");
    fs::create_dir(out)?;
    let root = Path::new(env!("CARGO_MANIFEST_DIR"));
    let strategy = Rayon::new(NonZeroUsize::new(2).unwrap())?;
    let params = Parameters::load()?;
    let generators = Generators::derive(&params);
    let facts = fixtures::load()?;
    let payload = witness_codec::encode(&fixtures::build(&params, &generators, &facts[0])?);
    let payload_path = out.join("transfer.witness");
    fs::write(&payload_path, &payload)?;
    let (prover, initialization) = Prover::new(&payload, key)?;
    let mut captured = Vec::new();
    let start = Instant::now();
    let proof = prover.prove_with_msm(&payload, &mut rand::rng(), &mut |bases, scalars| {
        let start = Instant::now();
        let result = G1::msm(bases, scalars, &strategy);
        let reference_ns = start.elapsed().as_nanos();
        captured.push(Captured {
            bases: bases.to_vec(),
            scalars: scalars.to_vec(),
            expected: result,
            reference_ns,
        });
        Ok(result)
    })?;
    let full_api_capture_wall_ns = start.elapsed().as_nanos();
    ensure!(
        captured.len() == 5 && prover.verify(&proof.bytes, &payload)?,
        "real capture proof rejected or changed MSM schedule"
    );
    let proof_path = out.join("capture.proof");
    fs::write(&proof_path, &proof.bytes)?;
    let mut operands = Vec::new();
    for (name, op) in NAMES.into_iter().zip(&captured) {
        ensure!(op.bases.len() == op.scalars.len(), "captured count");
        let bases = out.join(format!("{name}.bases"));
        let scalars = out.join(format!("{name}.scalars"));
        let expected = out.join(format!("{name}.expected"));
        let mut b = Vec::with_capacity(48 * op.bases.len());
        for v in &op.bases {
            b.extend_from_slice(&v.encode());
        }
        fs::write(&bases, b)?;
        let mut b = Vec::with_capacity(32 * op.scalars.len());
        for v in &op.scalars {
            b.extend_from_slice(&v.encode());
        }
        fs::write(&scalars, b)?;
        fs::write(&expected, op.expected.encode())?;
        operands.push(Operand {
            name,
            count: op.bases.len(),
            identity_bases: op.bases.iter().filter(|p| **p == G1::zero()).count(),
            zero_scalars: op.scalars.iter().filter(|s| **s == Scalar::zero()).count(),
            nonzero_pairs: op.bases.iter().zip(&op.scalars).filter(|(p,s)| **p != G1::zero() && **s != Scalar::zero()).count(),
            bases: identify(&bases)?,
            scalars: identify(&scalars)?,
            expected: identify(&expected)?,
            reference_ns: op.reference_ns,
        });
    }
    let start = Instant::now();
    let prepared: Vec<_> = captured
        .iter()
        .map(|c| PreparedG1Msm::new(&[&c.bases]))
        .collect();
    let prepared_initialization_ns = start.elapsed().as_nanos();
    let start = Instant::now();
    let combined = [
        PreparedG1Msm::new(&[&captured[0].bases, &captured[2].bases]),
        PreparedG1Msm::new(&[&captured[3].bases, &captured[4].bases]),
    ];
    let combined_initialization_ns = start.elapsed().as_nanos();
    let mut sources = Vec::new();
    for p in [
        key.clone(),
        payload_path,
        std::env::current_exe()?,
        root.join("examples/prepared_msm.rs"),
        root.join("src/api.rs"),
        root.join("Cargo.lock"),
        root.join("patches/commonware-polynomial-migration.patch"),
    ] {
        sources.push(identify(&p)?);
    }
    let mut log = File::create(out.join("samples.jsonl"))?;
    record(
        &mut log,
        &Header {
            schema: "shieldd.native_experiment.prepared_msm.v1",
            initialization,
            proof: identify(&proof_path)?,
            full_api_capture_wall_ns,
            sources,
            operands,
            prepared_initialization_ns,
            prepared_resident_bytes: prepared.iter().map(|p| p.resident_bytes()).sum(),
            combined_initialization_ns,
            combined_resident_bytes: combined.iter().map(|p| p.resident_bytes()).sum(),
            workers: 2,
            limits: "One fresh verified complete Transfer captures actual operands. Capture wall includes copies and is not a timing sample. Each MSM/group: two warmups and three measured calls per variant, balanced order. Native includes per-call point filtering/copying, affine preparation and scalar encoding. Prepared/combined keeps affine bases resident, identity points omitted by checked index mapping, scalar encoding included. This diagnostic holds reference key, captured operands and both prepared table sets; RSS is not isolated deployment memory. No full proving speedup or phone claim.",
        },
    )?;
    let mut verified = 0;
    for (index, op) in captured.iter().enumerate() {
        for block in 0..5 {
            for ready in if block % 2 == 0 {
                [false, true]
            } else {
                [true, false]
            } {
                let start = Instant::now();
                let result = if ready {
                    prepared[index]
                        .msm(&[&op.scalars], &strategy)
                        .map_err(anyhow::Error::msg)?
                } else {
                    G1::msm(&op.bases, &op.scalars, &strategy)
                };
                let wall_ns = start.elapsed().as_nanos();
                ensure!(result == op.expected, "prepared MSM mismatch");
                verified += 1;
                record(
                    &mut log,
                    &Sample {
                        schema: "shieldd.native_experiment.prepared_msm_sample.v1",
                        operation: NAMES[index],
                        variant: if ready { "prepared" } else { "native" },
                        block,
                        warmup: block < 2,
                        points: op.bases.len(),
                        wall_ns,
                        output_sha256: sha(&result.encode()),
                        exact_group_equality: true,
                    },
                )?;
            }
        }
        eprintln!("{} native/prepared exact equality passed", NAMES[index]);
    }
    for (group, (name, a, b)) in [("commitment", 0, 2), ("opening", 3, 4)]
        .into_iter()
        .enumerate()
    {
        let left = &captured[a];
        let right = &captured[b];
        let expected = left.expected + &right.expected;
        for block in 0..5 {
            for j in 0..3 {
                let mode = (j + block) % 3;
                let start = Instant::now();
                let result = match mode {
                    0 => {
                        G1::msm(&left.bases, &left.scalars, &strategy)
                            + &G1::msm(&right.bases, &right.scalars, &strategy)
                    }
                    1 => {
                        prepared[a]
                            .msm(&[&left.scalars], &strategy)
                            .map_err(anyhow::Error::msg)?
                            + &prepared[b]
                                .msm(&[&right.scalars], &strategy)
                                .map_err(anyhow::Error::msg)?
                    }
                    _ => combined[group]
                        .msm(&[&left.scalars, &right.scalars], &strategy)
                        .map_err(anyhow::Error::msg)?,
                };
                let wall_ns = start.elapsed().as_nanos();
                ensure!(result == expected, "combined MSM mismatch");
                verified += 1;
                record(
                    &mut log,
                    &Sample {
                        schema: "shieldd.native_experiment.prepared_msm_sample.v1",
                        operation: name,
                        variant: ["native", "prepared", "combined"][mode],
                        block,
                        warmup: block < 2,
                        points: left.bases.len() + right.bases.len(),
                        wall_ns,
                        output_sha256: sha(&result.encode()),
                        exact_group_equality: true,
                    },
                )?;
            }
        }
        eprintln!("{name} combined exact equality passed");
    }
    drop(log);
    record(
        &mut File::create(out.join("complete.json"))?,
        &Complete {
            schema: "shieldd.native_experiment.prepared_msm_complete.v1",
            samples: identify(&out.join("samples.jsonl"))?,
            arithmetic_calls_verified: verified,
            real_proofs_verified: 1,
        },
    )?;
    Ok(())
}
#[cfg(test)]
mod tests {
    use super::*;
    use commonware_math::algebra::{CryptoGroup, Ring};
    use commonware_parallel::Sequential;
    #[test]
    fn prepared_identity_zero_prefixes_and_segments_match_group_arithmetic() {
        let g = G1::generator();
        let p = [g, G1::zero(), -g];
        let q = [G1::zero(), g];
        let prepared = PreparedG1Msm::new(&[&p, &q]);
        let s = [Scalar::from(3), Scalar::from(7), Scalar::one()];
        let t = [Scalar::from(9), Scalar::from(5)];
        assert_eq!(
            prepared.msm(&[&s, &t], &Sequential).unwrap(),
            g * &Scalar::from(7)
        );
        assert_eq!(
            prepared.msm(&[&s[..1], &[]], &Sequential).unwrap(),
            g * &Scalar::from(3)
        );
        assert_eq!(prepared.msm(&[&[], &[]], &Sequential).unwrap(), G1::zero());
        assert!(prepared.msm(&[&s], &Sequential).is_err());
        assert!(prepared.msm(&[&s, &s], &Sequential).is_err());
        assert_eq!(
            PreparedG1Msm::new(&[&[G1::zero()]])
                .msm(&[&[Scalar::one()]], &Sequential)
                .unwrap(),
            G1::zero()
        );
    }
    #[test]
    fn prepared_parallel_zero_scalars_and_opposite_points_match_reference() {
        let strategy = Rayon::new(NonZeroUsize::new(2).unwrap()).unwrap();
        let g = G1::generator();
        let p: Vec<_> = (0..1024)
            .map(|i| match i % 3 {
                0 => g,
                1 => -g,
                _ => G1::zero(),
            })
            .collect();
        let s: Vec<_> = (0..1024)
            .map(|i| {
                if i % 5 == 0 {
                    Scalar::zero()
                } else {
                    Scalar::from(i as u64)
                }
            })
            .collect();
        let prepared = PreparedG1Msm::new(&[&p]);
        assert_eq!(
            prepared.msm(&[&s], &strategy).unwrap(),
            G1::msm(&p, &s, &strategy)
        );
        assert_eq!(prepared.msm(&[&[]], &strategy).unwrap(), G1::zero());
    }
}
