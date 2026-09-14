use anyhow::{Context, Result, ensure};
use commonware_codec::{Encode, RangeCfg, Read};
use commonware_cryptography::{
    Hasher,
    bls12381::primitives::group::Scalar,
    sha256::Sha256,
    transcript::{Transcript, Version},
    zk::{
        circuit::{Var, build, build_with_values},
        pari,
    },
};
use commonware_math::algebra::Ring;
use commonware_parallel::Rayon;
use serde::{Deserialize, Serialize};
use shieldd_native_parallel_ntt_experiment::{fixtures, hash::Parameters, map::Generators, transfer};
use std::{
    fs::{self, File, OpenOptions},
    io::Write,
    num::NonZeroUsize,
    path::{Path, PathBuf},
    time::Instant,
};

#[derive(Serialize, Deserialize, PartialEq, Eq)]
struct FileIdentity {
    path: PathBuf,
    sha256: String,
}
#[derive(Serialize, Deserialize, PartialEq, Eq)]
struct Identity {
    schema: String,
    relation: String,
    domain: usize,
    rows: usize,
    variables: usize,
    sources: Vec<FileIdentity>,
}
#[derive(Serialize)]
struct KeyRecord {
    stage: &'static str,
    generated: bool,
    setup_ns: u128,
    checked_load_ns: u128,
    pk_bytes: usize,
    vk_bytes: usize,
    pk_sha256: String,
    vk_sha256: String,
}
#[derive(Serialize, Deserialize)]
struct ProofRecord {
    stage: String,
    scenario: String,
    source_witness_sha256: String,
    reused: bool,
    original_constraints: bool,
    converted_constraints: bool,
    verified: bool,
    wrong_statement_rejected: bool,
    wrong_commitment_rejected: bool,
    wrong_key_rejected: bool,
    wrong_domain_rejected: bool,
    malformed_proofs_rejected: bool,
    proof_bytes: usize,
    claim_bytes: usize,
    proof_sha256: String,
    claim_sha256: String,
    diagnostic_presolved_prove_ns: u128,
}
#[derive(Serialize, Deserialize)]
struct Complete {
    identity_sha256: String,
    artifacts: Vec<FileIdentity>,
    invalid_witness_rejected: bool,
}
fn commit_directory(path: &Path, files: &[(&str, &[u8])]) -> Result<()> {
    ensure!(
        !path.exists(),
        "preserve completed directory {}",
        path.display()
    );
    let partial = path.with_extension("partial");
    if partial.exists() {
        fs::remove_dir_all(&partial)?;
    }
    fs::create_dir(&partial)?;
    for (name, bytes) in files {
        fs::write(partial.join(name), bytes)?;
    }
    fs::rename(partial, path)?;
    Ok(())
}
fn hash(data: &[u8]) -> String {
    hex::encode(Sha256::hash(&[data]).as_ref())
}
fn identify(path: &Path) -> Result<FileIdentity> {
    Ok(FileIdentity {
        path: path.canonicalize()?,
        sha256: hash(&fs::read(path)?),
    })
}
fn collect(path: &Path, ids: &mut Vec<FileIdentity>) -> Result<()> {
    if path.is_file() {
        ids.push(identify(path)?);
    } else {
        for entry in fs::read_dir(path)? {
            collect(&entry?.path(), ids)?;
        }
    }
    Ok(())
}
fn save(path: &Path, bytes: &[u8]) -> Result<()> {
    ensure!(
        !path.exists(),
        "preserve completed artifact {}",
        path.display()
    );
    let temporary = path.with_extension("partial");
    fs::write(&temporary, bytes)?;
    fs::rename(temporary, path)?;
    Ok(())
}
fn record(file: &mut File, value: &impl Serialize) -> Result<()> {
    serde_json::to_writer(&mut *file, value)?;
    file.write_all(b"\n")?;
    file.flush()?;
    Ok(())
}
fn proof(bytes: &[u8]) -> Result<pari::Proof> {
    let mut input = bytes;
    let proof = pari::Proof::read_cfg(&mut input, &())?;
    ensure!(
        input.is_empty() && proof.encode().as_ref() == bytes,
        "noncanonical proof"
    );
    Ok(proof)
}
fn claim(bytes: &[u8]) -> Result<pari::Claim> {
    let mut input = bytes;
    let claim = pari::Claim::read_cfg(&mut input, &(RangeCfg::exact(1), RangeCfg::exact(1)))?;
    ensure!(
        input.is_empty() && claim.encode().as_ref() == bytes,
        "noncanonical claim"
    );
    Ok(claim)
}
fn transcript() -> Transcript {
    Transcript::new(b"shieldd-proving-experiment/native-transfer", Version::V1)
}

fn main() -> Result<()> {
    let args: Vec<_> = std::env::args_os().collect();
    ensure!(args.len() == 2, "usage: transfer_gate NEW_CACHE_DIRECTORY");
    let root = Path::new(env!("CARGO_MANIFEST_DIR"));
    let cache = root
        .parent()
        .context("candidate root")?
        .parent()
        .context("experiment root")?
        .join("cache")
        .canonicalize()?;
    let out = Path::new(&args[1]);
    fs::create_dir_all(out)?;
    let out = out.canonicalize()?;
    ensure!(
        out.starts_with(&cache),
        "native gate artifacts must remain in the experiment cache"
    );
    let params = Parameters::load()?;
    let generators = Generators::derive(&params);
    let facts = fixtures::load()?;
    let first = fixtures::build(&params, &generators, &facts[0])?;
    let (c, selected) = build(|ctx| transfer::constrain(ctx, &params, &generators, &first));
    let layout = pari::InputLayout::new(vec![selected[0]], vec![vec![selected[1]]])?;
    let relation = pari::Relation::compile(&c, &layout)?;
    ensure!(relation.domain_size()==196608 && hex::encode(relation.digest())=="722fba7093a6188bba83708f0abe409a39cf34fa4451b95594e82781b68f3783" && relation.constraint_count()==191516 && relation.variable_count()==191501, "wrong subset relation");
    drop(c);
    let mut sources = Vec::new();
    for name in [
        "src",
        "examples/transfer_gate.rs",
        "Cargo.toml",
        "Cargo.lock",
        "params",
        "patches/commonware-parallel-ntt.patch",
    ] {
        collect(&root.join(name), &mut sources)?;
    }
    collect(&cache.join("commonware-parallel-ntt/cryptography/src/zk/pari"),&mut sources)?;
    sources.push(identify(&cache.join("logical-facts.json"))?);
    sources.sort_by(|a, b| a.path.cmp(&b.path));
    let identity = Identity {
        schema: "shieldd.native_experiment.full_transfer_gate.v1".into(),
        relation: hex::encode(relation.digest()),
        domain: relation.domain_size(),
        rows: relation.constraint_count(),
        variables: relation.variable_count(),
        sources,
    };
    let id_path = out.join("identity.json");
    if id_path.exists() {
        ensure!(
            serde_json::from_slice::<Identity>(&fs::read(&id_path)?)? == identity,
            "native gate source identity changed; select a new cache"
        );
    } else {
        save(&id_path, &serde_json::to_vec_pretty(&identity)?)?;
    }
    let complete_path = out.join("complete.json");
    if complete_path.exists() {
        let complete: Complete = serde_json::from_slice(&fs::read(&complete_path)?)?;
        ensure!(
            complete.identity_sha256 == hash(&fs::read(&id_path)?)
                && complete.invalid_witness_rejected,
            "invalid completion record"
        );
        for artifact in complete.artifacts {
            ensure!(
                artifact.path.starts_with(&out) && identify(&artifact.path)? == artifact,
                "completed artifact hash differs"
            );
        }
        eprintln!("native Transfer gate already complete; all bound artifact hashes checked");
        return Ok(());
    }
    let mut records = OpenOptions::new()
        .create(true)
        .append(true)
        .open(out.join("gate.jsonl"))?;
    let strategy = Rayon::new(NonZeroUsize::new(2).unwrap())?;
    let mut rng = rand::rng();
    let key_dir = out.join("keys");
    let generated = !key_dir.exists();
    if generated {
        eprintln!(
            "native Transfer: setup {} square rows, {} variables, domain {}",
            identity.rows, identity.variables, identity.domain
        );
        let start = Instant::now();
        let (pk, _) = pari::setup(&relation, &mut rng, &strategy)?;
        let setup_ns = start.elapsed().as_nanos();
        commit_directory(
            &key_dir,
            &[
                ("native.pk", pk.encode().as_ref()),
                ("setup_ns.json", &serde_json::to_vec(&setup_ns)?),
            ],
        )?;
    }
    let setup_ns: u128 = serde_json::from_slice(&fs::read(key_dir.join("setup_ns.json"))?)?;
    let pk_path = key_dir.join("native.pk");
    let pk_bytes = fs::read(&pk_path)?;
    let start = Instant::now();
    let mut input = pk_bytes.as_slice();
    let pk = pari::ProvingKey::read_cfg(&mut input, &(RangeCfg::exact(1), RangeCfg::exact(1)))?;
    ensure!(
        input.is_empty() && pk.encode().as_ref() == pk_bytes,
        "noncanonical proving key"
    );
    ensure!(
        pk.verifying_key().relation_digest() == relation.digest(),
        "wrong relation key"
    );
    let checked_load_ns = start.elapsed().as_nanos();
    let vk = pk.verifying_key();
    let vk_bytes = vk.encode();
    let vk_path = key_dir.join("native.vk");
    if vk_path.exists() {
        ensure!(
            fs::read(&vk_path)?.as_slice() == vk_bytes.as_ref(),
            "cached verifying key differs"
        );
    } else {
        save(&vk_path, &vk_bytes)?;
    }
    let key_record = KeyRecord {
        stage: "keys",
        generated,
        setup_ns,
        checked_load_ns,
        pk_bytes: pk_bytes.len(),
        vk_bytes: vk_bytes.len(),
        pk_sha256: hash(&pk_bytes),
        vk_sha256: hash(&vk_bytes),
    };
    if !key_dir.join("record.json").exists() {
        save(
            &key_dir.join("record.json"),
            &serde_json::to_vec_pretty(&key_record)?,
        )?;
    }
    record(&mut records, &key_record)?;
    drop(pk_bytes);
    let (other, indices) = build(|ctx| {
        let x = Var::witness(ctx, |_| Scalar::one());
        let b = Var::witness(ctx, |_| Scalar::one());
        b.assert_eq(&x);
        vec![x.clone() * &x, b]
    });
    let other_layout = pari::InputLayout::new(vec![indices[0]], vec![vec![indices[1]]])?;
    let other_relation = pari::Relation::compile(&other, &other_layout)?;
    let (_, wrong_key) = pari::setup(&other_relation, &mut rng, &strategy)?;
    for f in &facts {
        let w = fixtures::build(&params, &generators, f)?;
        let (valued, _) =
            build_with_values(|ctx| transfer::constrain(ctx, &params, &generators, &w));
        ensure!(valued.is_satisfied(), "{} original constraints", f.scenario);
        let witness =
            relation.witness_prepared(&valued, &layout, vec![pari::Opening::random(&mut rng)])?;
        ensure!(
            relation.check_witness(&witness),
            "{} converted constraints",
            f.scenario
        );
        let scenario_dir = out.join(&f.scenario);
        let reused = scenario_dir.exists();
        let (proof_bytes, claim_bytes, elapsed) = if reused {
            let bytes = fs::read(scenario_dir.join("proof.bin"))?;
            let claim = fs::read(scenario_dir.join("claim.bin"))?;
            let prior: ProofRecord =
                serde_json::from_slice(&fs::read(scenario_dir.join("record.json"))?)?;
            ensure!(
                prior.scenario == f.scenario
                    && prior.source_witness_sha256 == f.witness_sha256
                    && prior.proof_sha256 == hash(&bytes)
                    && prior.claim_sha256 == hash(&claim),
                "cached scenario identity mismatch"
            );
            (bytes, claim, prior.diagnostic_presolved_prove_ns)
        } else {
            let claim = witness.claim(pk.commitment_keys(), &strategy)?;
            let start = Instant::now();
            let result = pari::prove(
                &mut rng,
                &mut transcript(),
                &pk,
                &relation,
                &claim,
                &witness,
                &strategy,
            )?;
            let elapsed = start.elapsed().as_nanos();
            ensure!(
                pari::verify(&mut transcript(), vk, &claim, &result),
                "{} generated proof rejected",
                f.scenario
            );
            (result.encode().to_vec(), claim.encode().to_vec(), elapsed)
        };
        let proof = proof(&proof_bytes)?;
        let claim = claim(&claim_bytes)?;
        ensure!(
            claim.public_inputs == vec![w.claimed_statement.clone()],
            "cached proof statement differs"
        );
        let verified = pari::verify(&mut transcript(), vk, &claim, &proof);
        let mut bad = claim.clone();
        bad.public_inputs[0] += &Scalar::one();
        let wrong_statement_rejected = !pari::verify(&mut transcript(), vk, &bad, &proof);
        let fresh_claim = witness.claim(pk.commitment_keys(), &strategy)?;
        let mut bad = claim.clone();
        bad.commitments = if fresh_claim.commitments != claim.commitments {
            fresh_claim.commitments
        } else {
            relation
                .witness_prepared(&valued, &layout, vec![pari::Opening::random(&mut rng)])?
                .claim(pk.commitment_keys(), &strategy)?
                .commitments
        };
        let wrong_commitment_rejected = !pari::verify(&mut transcript(), vk, &bad, &proof);
        let wrong_key_rejected = !pari::verify(&mut transcript(), &wrong_key, &claim, &proof);
        let wrong_domain_rejected = !pari::verify(&mut transcript(),&vk.domain_audit_key()?,&claim,&proof);
        let mut trailing = proof_bytes.clone();
        trailing.push(0);
        let mut noncanonical = proof_bytes.clone();
        let size = noncanonical.len();
        noncanonical[size - 32..].copy_from_slice(&hex::decode(
            "73eda753299d7d483339d80809a1d80553bda402fffe5bfeffffffff00000001",
        )?);
        let malformed_proofs_rejected = self::proof(&proof_bytes[..proof_bytes.len() - 1]).is_err()
            && self::proof(&trailing).is_err()
            && self::proof(&noncanonical).is_err();
        ensure!(
            verified
                && wrong_statement_rejected
                && wrong_commitment_rejected
                && wrong_key_rejected
                && wrong_domain_rejected
                && malformed_proofs_rejected,
            "{} correctness rejection failed",
            f.scenario
        );
        let proof_record = ProofRecord {
            stage: "scenario".into(),
            scenario: f.scenario.clone(),
            source_witness_sha256: f.witness_sha256.clone(),
            reused,
            original_constraints: true,
            converted_constraints: true,
            verified,
            wrong_statement_rejected,
            wrong_commitment_rejected,
            wrong_key_rejected,
            wrong_domain_rejected,
            malformed_proofs_rejected,
            proof_bytes: proof_bytes.len(),
            claim_bytes: claim_bytes.len(),
            proof_sha256: hash(&proof_bytes),
            claim_sha256: hash(&claim_bytes),
            diagnostic_presolved_prove_ns: elapsed,
        };
        if !reused {
            commit_directory(
                &scenario_dir,
                &[
                    ("proof.bin", &proof_bytes),
                    ("claim.bin", &claim_bytes),
                    ("record.json", &serde_json::to_vec_pretty(&proof_record)?),
                ],
            )?;
        }
        record(&mut records, &proof_record)?;
        eprintln!(
            "{}: full native proof and rejection checks passed",
            f.scenario
        );
    }
    let mut bad = first;
    bad.nonce_root += &Scalar::one();
    let (valued, _) = build_with_values(|ctx| transfer::constrain(ctx, &params, &generators, &bad));
    let witness =
        relation.witness_prepared(&valued, &layout, vec![pari::Opening::random(&mut rng)])?;
    ensure!(
        !valued.is_satisfied() && !relation.check_witness(&witness),
        "invalid original/converted assignment accepted"
    );
    let claim = witness.claim(pk.commitment_keys(), &strategy)?;
    ensure!(
        matches!(
            pari::prove(
                &mut rng,
                &mut transcript(),
                &pk,
                &relation,
                &claim,
                &witness,
                &strategy
            ),
            Err(pari::Error::Unsatisfied)
        ),
        "invalid native witness was proved"
    );
    let mut artifacts = Vec::new();
    collect(&key_dir, &mut artifacts)?;
    for f in &facts {
        collect(&out.join(&f.scenario), &mut artifacts)?;
    }
    artifacts.sort_by(|a, b| a.path.cmp(&b.path));
    let complete = Complete {
        identity_sha256: hash(&fs::read(&id_path)?),
        artifacts,
        invalid_witness_rejected: true,
    };
    save(&complete_path, &serde_json::to_vec_pretty(&complete)?)?;
    eprintln!("native Transfer gate complete; kernel diagnostics are not full API measurements");
    Ok(())
}
