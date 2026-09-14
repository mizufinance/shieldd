use anyhow::{Result, ensure};
use commonware_codec::Encode;
use commonware_cryptography::{Hasher, bls12381::primitives::group::Scalar, sha256::Sha256};
use commonware_math::algebra::Ring;
use serde::Serialize;
use shieldd_native_proving_experiment::{
    fixtures, hash::Parameters, map::Generators, witness_codec,
};
use std::{fs, path::Path};

#[derive(Serialize)]
struct Witness {
    scenario: String,
    source_witness_sha256: String,
    witness_sha256: String,
    claimed_statement: String,
}
#[derive(Serialize)]
struct Manifest {
    schema: &'static str,
    facts: Vec<Witness>,
    invalid_witness_sha256: String,
}
fn hash(bytes: &[u8]) -> String {
    hex::encode(Sha256::hash(&[bytes]).as_ref())
}
fn main() -> Result<()> {
    let args: Vec<_> = std::env::args_os().collect();
    ensure!(
        args.len() == 2,
        "usage: export_witnesses NEW_CACHE_DIRECTORY"
    );
    let out = Path::new(&args[1]);
    let cache = Path::new(env!("CARGO_MANIFEST_DIR"))
        .parent()
        .unwrap()
        .join("cache")
        .canonicalize()?;
    ensure!(
        !out.exists() && out.parent().unwrap().canonicalize()?.starts_with(cache),
        "preserve witness cache"
    );
    fs::create_dir(out)?;
    let p = Parameters::load()?;
    let g = Generators::derive(&p);
    let facts = fixtures::load()?;
    let mut records = Vec::new();
    for f in &facts {
        let w = fixtures::build(&p, &g, f)?;
        let payload = witness_codec::encode(&w);
        fs::write(out.join(format!("{}.witness", f.scenario)), &payload)?;
        records.push(Witness {
            scenario: f.scenario.clone(),
            source_witness_sha256: f.witness_sha256.clone(),
            witness_sha256: hash(&payload),
            claimed_statement: hex::encode(w.claimed_statement.encode()),
        });
    }
    let mut bad = fixtures::build(&p, &g, &facts[0])?;
    bad.nonce_root += &Scalar::one();
    let invalid = witness_codec::encode(&bad);
    fs::write(out.join("invalid.witness"), &invalid)?;
    let manifest = Manifest {
        schema: "shieldd.native_experiment.logical_witnesses.v1",
        facts: records,
        invalid_witness_sha256: hash(&invalid),
    };
    fs::write(
        out.join("manifest.json"),
        serde_json::to_vec_pretty(&manifest)?,
    )?;
    Ok(())
}
