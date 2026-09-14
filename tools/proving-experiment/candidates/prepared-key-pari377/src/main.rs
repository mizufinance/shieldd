//! Isolated subset-domain Transfer proof feasibility gate.
mod arithmetic;
mod bridge;
mod domain;
mod frontend;
mod lowering;
mod protocol;
mod subgroup;
mod source_key;
mod worker;
use anyhow::{ensure, Result};
use ark_bls12_377::{Bls12_377, Fr};
use ark_ff::{AdditiveGroup, Field};
use ark_relations::gr1cs::{predicate::polynomial_constraint::SR1CS_PREDICATE_LABEL, Matrix};
use ark_serialize::CanonicalSerialize;
use ark_std::rand::rngs::OsRng;
use serde::{Deserialize, Serialize};
use std::{
    fs,
    path::{Path, PathBuf},
    sync::Arc,
    time::Instant,
};
use zkpari::{Proof, ZkPari};
fn encode<T: CanonicalSerialize>(value: &T) -> Result<Vec<u8>> {
    let mut bytes = Vec::new();
    value.serialize_compressed(&mut bytes)?;
    Ok(bytes)
}
fn relation(path: &Path) -> Result<bridge::Relation> {
    bridge::Relation::read(
        &path.join("transfer.r1cs"),
        serde_json::from_slice(&fs::read(path.join("metadata.json"))?)?,
    )
}
struct Compiled {
    original: bridge::Relation,
    lowered: Arc<lowering::Lowered>,
    matrices: Vec<Matrix<Fr>>,
    instances: usize,
    witnesses: usize,
}
fn compile(path: &Path) -> Result<Compiled> {
    let original = relation(path)?;
    ensure!(
        original.metadata.circuit_sha256
            == "cc0dc2091c86777dfd21128b974d1a51f959ce0599211d90a022e5c3d9e27bde",
        "wrong Transfer circuit"
    );
    let lowered = Arc::new(lowering::Lowered::compile(&original));
    let cs = ZkPari::<Bls12_377>::circuit_to_keygen_cs(lowering::Circuit {
        relation: lowered.clone(),
        original: None,
    })?;
    ensure!(
        cs.num_constraints() == 226578
            && cs.num_instance_variables() == 2
            && cs.num_witness_variables() == 214084
            && cs.num_predicates() == 1,
        "wrong complete outlined Transfer"
    );
    let matrices = cs.to_matrices().unwrap()[SR1CS_PREDICATE_LABEL].clone();
    Ok(Compiled {
        original,
        lowered,
        matrices,
        instances: cs.num_instance_variables(),
        witnesses: cs.num_witness_variables(),
    })
}
#[derive(Deserialize)]
struct Solved {
    assignment: String,
    statement: String,
}
#[derive(Serialize)]
struct Setup {
    schema: &'static str,
    compile_ns: u128,
    setup_ns: u128,
    key_bytes: usize,
    original_rows: usize,
    outlined_rows: usize,
    witnesses: usize,
    fft: usize,
    retained: usize,
}
#[derive(Serialize)]
struct Gate {
    schema: &'static str,
    scenario: String,
    prove_ns: u128,
    proof_bytes: usize,
    verified: bool,
    wrong_statement_rejected: bool,
    wrong_key_rejected: bool,
    malformed_rejected: bool,
    constrained_witness_rejected: bool,
}
fn main() -> Result<()> {
    let args: Vec<_> = std::env::args().collect();
    if args.get(1).is_some_and(|s| s == "prepare-key") {
        ensure!(args.len()==4,"usage: prepare-key COMPRESSED_SOURCE NEW_OUTPUT");
        let out=Path::new(&args[3]);ensure!(!out.exists(),"preserve prepared key");
        let start=Instant::now();let input=fs::read(&args[2])?;
        let key=source_key::decode_key(&input)?;
        let import_ns=start.elapsed().as_nanos();let start=Instant::now();
        let bytes=protocol::encode_key(&key)?;
        let encoding_ns=start.elapsed().as_nanos();let start=Instant::now();
        let checked=protocol::decode_key(&bytes)?;
        ensure!(encode(&key.verifying_key.raw)?==encode(&checked.verifying_key.raw)?,"verifying key changed");
        ensure!(key.sigma_w==checked.sigma_w && key.sigma_q==checked.sigma_q && key.sigma_a==checked.sigma_a && key.sigma_r==checked.sigma_r && key.sigma_mask_const==checked.sigma_mask_const && key.sigma_mask_linear==checked.sigma_mask_linear,"key points changed");
        let checked_decode_ns=start.elapsed().as_nanos();
        fs::write(out,&bytes)?;
        println!("{}",serde_json::json!({"schema":"shieldd.prepared_key_pari377.import.v1","source_sha256":arithmetic::sha(&input),"prepared_sha256":arithmetic::sha(&bytes),"source_bytes":input.len(),"prepared_bytes":bytes.len(),"checked_import_ns":import_ns,"encoding_ns":encoding_ns,"prepared_checked_decode_ns":checked_decode_ns,"all_key_points_equal":true}));return Ok(());
    }
    if args.get(1).is_some_and(|s| s == "serve") {
        return frontend::serve(&args[2..].iter().map(PathBuf::from).collect::<Vec<_>>());
    }
    if args.get(1).is_some_and(|s| s == "bases") {
        ensure!(args.len() == 4, "usage: bases KEY NEW_OUTPUT");
        return frontend::export_bases(Path::new(&args[2]), Path::new(&args[3]));
    }

    ensure!(args.len()==5,"usage: subset-pari377 setup RELATION REFERENCE_VK NEW_OUTPUT | gate RELATION KEY NEW_OUTPUT");
    let relation_dir = PathBuf::from(&args[2]);
    let out = PathBuf::from(args.last().unwrap());
    ensure!(!out.exists(), "preserve existing artifacts");
    let start = Instant::now();
    let compiled = compile(&relation_dir)?;
    let compile_ns = start.elapsed().as_nanos();
    if args[1] == "setup" {
        let reference: zkpari::VerifyingKey<Bls12_377> = bridge::decode(&fs::read(&args[3])?)?;
        ensure!(
            reference.succinct_index.matrix_digest
                == protocol::hash_index(&compiled.matrices, 226578, 2)
                && reference.succinct_index.num_constraints == 226578
                && reference.succinct_index.instance_len == 2,
            "canonical index differs from pinned baseline"
        );
        let start = Instant::now();
        let key = protocol::setup(
            &compiled.matrices,
            compiled.instances,
            compiled.witnesses,
            domain::Descriptor::transfer(),
            &mut OsRng,
        )?;
        let setup_ns = start.elapsed().as_nanos();
        let bytes = protocol::encode_key(&key)?;
        fs::create_dir_all(&out)?;
        fs::write(out.join("subset.pk"), &bytes)?;
        let record = Setup {
            schema: "shieldd.subset_pari377.setup.v1",
            compile_ns,
            setup_ns,
            key_bytes: bytes.len(),
            original_rows: 155122,
            outlined_rows: 226578,
            witnesses: 214084,
            fft: 262144,
            retained: 229376,
        };
        fs::write(out.join("setup.json"), serde_json::to_vec_pretty(&record)?)?;
        return Ok(());
    }
    ensure!(args[1] == "gate" && args.len() == 5, "gate arguments");
    let bytes = fs::read(&args[3])?;
    let key = protocol::decode_key(&bytes)?;
    let mut wrong_raw = key.verifying_key.raw.clone();
    wrong_raw.index.matrix_digest[0] ^= 1;
    let wrong_key = protocol::VerifyingKey::new(wrong_raw)?;
    let constrained = compiled.matrices[0]
        .last()
        .unwrap()
        .iter()
        .find(|(_, j)| *j >= compiled.instances)
        .unwrap()
        .1
        - compiled.instances;
    let prover = protocol::PreparedProver::new(key, compiled.matrices)?;
    fs::create_dir_all(&out)?;
    let mut gates = Vec::new();
    for name in [
        "transfer",
        "transfer_unregulated",
        "transfer_flagged",
        "transfer_accumulating",
        "transfer_over_limit_disclosure",
        "transfer_accumulator_continuation",
    ] {
        let solved: Solved =
            serde_json::from_slice(&fs::read(relation_dir.join(format!("{name}.json")))?)?;
        let values = bridge::assignment(&solved.assignment, &compiled.original, &solved.statement)?;
        compiled.lowered.validate(&values)?;
        let witnesses = compiled.lowered.witness(&values)?;
        let start = Instant::now();
        let proof = prover.prove(&values[..2], &witnesses, &mut OsRng)?;
        let prove_ns = start.elapsed().as_nanos();
        ensure!(
            protocol::verify(&proof, prover.verifying_key(), &values[1..2]),
            "subset Transfer proof rejected"
        );
        ensure!(
            !protocol::verify(&proof, prover.verifying_key(), &[values[1] + Fr::ONE]),
            "wrong statement accepted"
        );
        ensure!(
            !protocol::verify(&proof, &wrong_key, &values[1..2]),
            "wrong key accepted"
        );
        let encoded = encode(&proof)?;
        let decoded: Proof<Bls12_377> = bridge::decode(&encoded)?;
        ensure!(
            protocol::verify(&decoded, prover.verifying_key(), &values[1..2]),
            "roundtrip proof rejected"
        );
        for invalid in [
            encoded[..encoded.len() - 1].to_vec(),
            [encoded.as_slice(), &[0]].concat(),
            vec![255; encoded.len()],
        ] {
            ensure!(
                bridge::decode::<Proof<Bls12_377>>(&invalid).is_err(),
                "malformed encoding accepted"
            );
        }
        let mut tampered = encoded.clone();
        tampered[50] ^= 1;
        if let Ok(p) = bridge::decode::<Proof<Bls12_377>>(&tampered) {
            ensure!(
                !protocol::verify(&p, prover.verifying_key(), &values[1..2]),
                "altered proof accepted"
            );
        }
        let mut invalid = witnesses.clone();
        invalid[constrained] += Fr::ONE;
        ensure!(
            prover.prove(&values[..2], &invalid, &mut OsRng).is_err(),
            "altered outlined witness accepted"
        );
        fs::write(out.join(format!("{name}.proof")), &encoded)?;
        gates.push(Gate {
            schema: "shieldd.subset_pari377.gate.v1",
            scenario: name.into(),
            prove_ns,
            proof_bytes: encoded.len(),
            verified: true,
            wrong_statement_rejected: true,
            wrong_key_rejected: true,
            malformed_rejected: true,
            constrained_witness_rejected: true,
        });
        fs::write(out.join("gate.json"), serde_json::to_vec_pretty(&gates)?)?;
        eprintln!("{name}: fresh subset proof and negative gate passed");
    }
    fs::write(
        out.join("complete.json"),
        b"{\"proofs\":6,\"all_verified\":true}\n",
    )?;
    Ok(())
}
