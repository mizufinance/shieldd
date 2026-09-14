mod bridge;
mod generic;
mod keys;
mod lowering;
mod msm;
mod msm_probe;
mod profile;
mod worker;

use anyhow::{ensure, Context, Result};
use ark_bls12_377::{Bls12_377, Fr};
use ark_ff::Field;
use ark_poly::EvaluationDomain;
use ark_relations::gr1cs::predicate::polynomial_constraint::SR1CS_PREDICATE_LABEL;
use ark_serialize::CanonicalSerialize;
use ark_std::rand::rngs::OsRng;
use serde::{Deserialize, Serialize};
use std::{fs, path::Path, sync::Arc, time::Instant};
use zkpari::{PreparedProver, Proof, ProvingKey, ZkPari};

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
#[derive(Serialize)]
struct Gate {
    scenario: String,
    original_and_lowered: bool,
    assignment_mapping: bool,
    valid_proof: bool,
    wrong_statement_rejected: bool,
    invalid_assignment_rejected: bool,
    diagnostic_presolved_prove_ns: u128,
    proof_bytes: usize,
}
#[derive(Serialize)]
struct Evidence {
    schema: &'static str,
    original_constraints: usize,
    body_constraints: usize,
    outlined_constraints: usize,
    domain: usize,
    counts: lowering::Counts,
    offline_keygen_ns: Option<u128>,
    gates: Vec<Gate>,
    limits: &'static str,
}

fn encode<T: CanonicalSerialize>(value: &T) -> Result<Vec<u8>> {
    let mut out = Vec::new();
    value.serialize_compressed(&mut out)?;
    Ok(out)
}
fn relation(dir: &Path) -> Result<Arc<bridge::Relation>> {
    let meta = serde_json::from_slice(&fs::read(dir.join("metadata.json"))?)?;
    Ok(Arc::new(bridge::Relation::read(
        &dir.join("transfer.r1cs"),
        meta,
    )?))
}
fn generic_gate(old: &Path, out: &Path) -> Result<()> {
    let original = relation(old)?;
    let plan = generic::GenericPlan::compile(original.clone())?;
    let cs = ZkPari::<Bls12_377>::circuit_to_keygen_cs(bridge::Circuit {
        relation: original.clone(),
        values: None,
    })?;
    let matrices = cs.to_matrices().context("no matrices")?[SR1CS_PREDICATE_LABEL].clone();
    let key: ProvingKey<Bls12_377> = bridge::decode(&fs::read(old.join("zkpari.pk"))?)?;
    let prover = PreparedProver::new(key, matrices)?;
    let mut gates = Vec::new();
    for name in SCENARIOS {
        let solved: Solved = serde_json::from_slice(&fs::read(old.join(format!("{name}.json")))?)?;
        let values = bridge::assignment(&solved.assignment, &original, &solved.statement)?;
        let witnesses = plan.witness(&values)?;
        let native = ZkPari::<Bls12_377>::circuit_to_prover_cs(bridge::Circuit {
            relation: original.clone(),
            values: Some(Arc::new(values.clone())),
        })?;
        ensure!(
            native.is_satisfied()? && native.assignments.witness_assignment == witnesses,
            "generic mapping mismatch"
        );
        ensure!(
            native.assignments.instance_assignment == values[..2],
            "generic public mapping mismatch"
        );
        let start = Instant::now();
        let proof = prover.prove(&values[..2], &witnesses, &mut OsRng)?;
        let proving_ns = start.elapsed().as_nanos();
        ensure!(
            ZkPari::<Bls12_377>::verify(&proof, prover.verifying_key(), &values[1..2]),
            "generic proof rejected"
        );
        ensure!(
            !ZkPari::<Bls12_377>::verify(&proof, prover.verifying_key(), &[values[1] + Fr::ONE]),
            "generic altered statement accepted"
        );
        let mut invalid = witnesses.clone();
        *invalid.last_mut().context("empty witnesses")? += Fr::ONE;
        ensure!(
            prover.prove(&values[..2], &invalid, &mut OsRng).is_err(),
            "generic invalid assignment accepted"
        );
        let bytes = encode(&proof)?;
        fs::write(out.join(format!("{name}.proof")), &bytes)?;
        gates.push(Gate {
            scenario: name.into(),
            original_and_lowered: true,
            assignment_mapping: true,
            valid_proof: true,
            wrong_statement_rejected: true,
            invalid_assignment_rejected: true,
            diagnostic_presolved_prove_ns: proving_ns,
            proof_bytes: bytes.len(),
        });
        eprintln!("{name}: current-key prepared proof and mapping passed");
    }
    fs::write(out.join("gate.json"), serde_json::to_vec_pretty(&gates)?)?;
    Ok(())
}

#[cfg(test)]
mod prepared_tests {
    use super::*;
    use crate::bridge::{Metadata, Relation, Row, Term};

    #[test]
    fn prepared_key_binding_shapes_and_randomized_proofs() {
        let t = |i| {
            vec![Term {
                coefficient: Fr::ONE,
                wire: i,
            }]
        };
        let original = Relation {
            metadata: Metadata {
                schema: String::new(),
                modulus: String::new(),
                constraints: 1,
                public: 2,
                secret: 1,
                internal: 0,
                circuit_sha256: String::new(),
            },
            rows: vec![Row {
                a: t(2),
                b: t(2),
                c: t(1),
            }],
        };
        let lowered = Arc::new(lowering::Lowered::compile(&original));
        let circuit = lowering::Circuit {
            relation: lowered.clone(),
            original: None,
        };
        let cs = ZkPari::<Bls12_377>::circuit_to_keygen_cs(circuit.clone()).unwrap();
        let matrices = cs.to_matrices().unwrap()[SR1CS_PREDICATE_LABEL].clone();
        let (pk, _) = ZkPari::<Bls12_377>::keygen(circuit.clone(), &mut OsRng);
        let mut incorrect = matrices.clone();
        incorrect[1][0][0].0 += Fr::ONE;
        assert!(PreparedProver::new(pk.clone(), incorrect).is_err());
        let mut truncated = pk.clone();
        truncated.sigma_a.pop();
        assert!(PreparedProver::new(truncated, matrices.clone()).is_err());
        let prover = PreparedProver::new(pk, matrices).unwrap();
        let original: Vec<_> = [1u64, 9, 3].into_iter().map(Fr::from).collect();
        let witness = lowered.witness(&original).unwrap();
        let proof = prover.prove(&original[..2], &witness, &mut OsRng).unwrap();
        assert!(ZkPari::<Bls12_377>::verify(
            &proof,
            prover.verifying_key(),
            &original[1..2]
        ));
        let fresh = prover.prove(&original[..2], &witness, &mut OsRng).unwrap();
        assert_ne!(encode(&proof).unwrap(), encode(&fresh).unwrap());
        let (_, wrong) = ZkPari::<Bls12_377>::keygen(circuit, &mut OsRng);
        assert!(!ZkPari::<Bls12_377>::verify(
            &proof,
            &wrong,
            &original[1..2]
        ));
        assert!(prover
            .prove(&original[..2], &witness[..witness.len() - 1], &mut OsRng)
            .is_err());
        assert!(prover
            .prove(&[Fr::from(0u64), original[1]], &witness, &mut OsRng)
            .is_err());
        let mut altered = witness;
        altered[2] += Fr::ONE;
        assert!(prover.prove(&original[..2], &altered, &mut OsRng).is_err());
    }
}
fn main() -> Result<()> {
    let args: Vec<_> = std::env::args().collect();
    if args.len() == 4 && args[1] == "profile-key" {
        return keys::profile(Path::new(&args[2]), Path::new(&args[3]));
    }
    if args.len() == 6 && args[1] == "serve" {
        return worker::serve(
            Path::new(&args[2]),
            Path::new(&args[3]),
            Path::new(&args[4]),
            Path::new(&args[5]),
        );
    }
    if args.len() == 6 && args[1] == "probe-msm" {
        let alternative = match args[5].as_str() {
            "dense14" => msm::Method::Dense14,
            "glv14" => msm::Method::Glv14,
            "glv15" => msm::Method::Glv15,
            "glv16" => msm::Method::Glv16,
            "glv16_cached" => msm::Method::Glv16Cached,
            _ => anyhow::bail!("unknown MSM alternative"),
        };
        return msm_probe::run(
            Path::new(&args[2]),
            Path::new(&args[3]),
            Path::new(&args[4]),
            alternative,
        );
    }
    if args.len() == 5 && args[1] == "profile-lowered" {
        return profile::run(
            Path::new(&args[2]),
            Path::new(&args[3]),
            Path::new(&args[4]),
        );
    }
    ensure!(
        args.len() == 4 && ["lowered-gate", "generic-gate"].contains(&args[1].as_str()),
        "usage: shieldd-proving-experiment lowered-gate|generic-gate OLD_CACHE NEW_OUTPUT"
    );
    let old = Path::new(&args[2]).canonicalize()?;
    fs::create_dir_all(&args[3])?;
    let out = Path::new(&args[3]).canonicalize()?;
    ensure!(!out.starts_with(&old), "must preserve the old cache");
    if args[1] == "generic-gate" {
        return generic_gate(&old, &out);
    }
    let original = relation(&old)?;
    let lowered = Arc::new(lowering::Lowered::compile(&original));
    let circuit = lowering::Circuit {
        relation: lowered.clone(),
        original: None,
    };
    let cs = ZkPari::<Bls12_377>::circuit_to_keygen_cs(circuit.clone())?;
    let matrices = cs.to_matrices().context("no matrices")?[SR1CS_PREDICATE_LABEL].clone();
    let outlined = cs.num_constraints();
    ensure!(
        outlined == lowered.body_rows() + 4,
        "unexpected outlining shape"
    );
    eprintln!(
        "compiled: {} original, {} body, {} outlined constraints",
        original.metadata.constraints,
        lowered.body_rows(),
        outlined
    );
    let key_path = out.join("lowered.pk");
    let mut offline_keygen_ns = None;
    let key: ProvingKey<Bls12_377> = if key_path.exists() {
        bridge::decode(&fs::read(&key_path)?)?
    } else {
        let start = Instant::now();
        let (pk, vk) = ZkPari::<Bls12_377>::keygen(circuit, &mut OsRng);
        offline_keygen_ns = Some(start.elapsed().as_nanos());
        fs::write(out.join("lowered.vk"), encode(&vk)?)?;
        fs::write(out.join("lowered.pk.tmp"), encode(&pk)?)?;
        fs::rename(out.join("lowered.pk.tmp"), &key_path)?;
        pk
    };
    let prover = PreparedProver::new(key, matrices)?;
    let mut gates = Vec::new();
    for name in SCENARIOS {
        let solved: Solved = serde_json::from_slice(&fs::read(old.join(format!("{name}.json")))?)?;
        let values = bridge::assignment(&solved.assignment, &original, &solved.statement)?;
        lowered.validate(&values)?;
        let witnesses = lowered.witness(&values)?;
        let native = ZkPari::<Bls12_377>::circuit_to_prover_cs(lowering::Circuit {
            relation: lowered.clone(),
            original: Some(Arc::new(values.clone())),
        })?;
        ensure!(
            native.is_satisfied()? && native.assignments.witness_assignment == witnesses,
            "derived wire mapping mismatch"
        );
        ensure!(
            native.assignments.instance_assignment == values[..2],
            "public mapping mismatch"
        );
        let start = Instant::now();
        let proof = prover.prove(&values[..2], &witnesses, &mut OsRng)?;
        let proving_ns = start.elapsed().as_nanos();
        let bytes = encode(&proof)?;
        let decoded: Proof<Bls12_377> = bridge::decode(&bytes)?;
        ensure!(
            ZkPari::<Bls12_377>::verify(&decoded, prover.verifying_key(), &values[1..2]),
            "valid proof rejected"
        );
        ensure!(
            !ZkPari::<Bls12_377>::verify(&decoded, prover.verifying_key(), &[values[1] + Fr::ONE]),
            "wrong statement accepted"
        );
        ensure!(
            bridge::decode::<Proof<Bls12_377>>(&bytes[..bytes.len() - 1]).is_err(),
            "truncated proof accepted"
        );
        let mut noncanonical = bytes.clone();
        noncanonical.push(0);
        ensure!(
            bridge::decode::<Proof<Bls12_377>>(&noncanonical).is_err(),
            "trailing proof bytes accepted"
        );
        let mut invalid = witnesses.clone();
        invalid[1] += Fr::ONE;
        ensure!(
            prover.prove(&values[..2], &invalid, &mut OsRng).is_err(),
            "invalid witness accepted"
        );
        fs::write(out.join(format!("{name}.proof")), &bytes)?;
        gates.push(Gate {
            scenario: name.into(),
            original_and_lowered: true,
            assignment_mapping: true,
            valid_proof: true,
            wrong_statement_rejected: true,
            invalid_assignment_rejected: true,
            diagnostic_presolved_prove_ns: proving_ns,
            proof_bytes: bytes.len(),
        });
        eprintln!("{name}: proof and rejection gates passed");
    }
    let domain = prover.verifying_key().domain.size();
    let evidence=Evidence{schema:"shieldd.proving_experiment.lowered_gate.v1",original_constraints:original.metadata.constraints,body_constraints:lowered.body_rows(),outlined_constraints:outlined,domain,counts:lowered.counts.clone(),offline_keygen_ns,gates,limits:"Correctness and pre-solved kernel diagnostics only. No full API timing, current-key checkpoint, final sample matrix, native Commonware Transfer, or phone measurements."};
    fs::write(out.join("gate.json"), serde_json::to_vec_pretty(&evidence)?)?;
    Ok(())
}
