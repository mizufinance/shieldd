//! Full Transfer count/solve screen; no key generation or proving.
pub use native::{group, range, scalar};
#[path = "../transfer/authorization.rs"]
pub mod authorization;
#[path = "../../../native-subset/src/balance.rs"]
pub mod balance;
#[path = "../../../native-subset/src/compliance.rs"]
pub mod compliance;
#[path = "../../../native-subset/src/encoding.rs"]
pub mod encoding;
#[path = "../transfer/encryption.rs"]
pub mod encryption;
#[path = "../../../native-subset/src/hash.rs"]
pub mod hash;
#[path = "../../../native-subset/src/map.rs"]
pub mod map;
#[path = "../../../native-subset/src/note.rs"]
pub mod note;
#[path = "../transfer/recovery.rs"]
pub mod recovery;
#[path = "../../../native-subset/src/registry.rs"]
pub mod registry;
#[path = "../../../native-subset/src/routing.rs"]
pub mod routing;
#[path = "../../../native-subset/src/transfer.rs"]
pub mod transfer;
#[path = "../../../native-subset/src/tree.rs"]
pub mod tree;
#[path = "../../../native-subset/src/volume.rs"]
pub mod volume;
#[path = "../../../native-subset/src/witness_codec.rs"]
pub mod witness_codec;

use anyhow::{Result, ensure};
use commonware_codec::Encode;
use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::{
        circuit::{Context, Var, build, build_with_values},
        pari,
    },
};
use commonware_math::algebra::Ring;
use serde::{Deserialize, Serialize};
use sha2::{Digest, Sha256};
use std::{fs, path::Path, time::Instant};

#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct Manifest {
    schema: String,
    facts: Vec<Fact>,
    invalid_witness_sha256: String,
}
#[derive(Deserialize, Serialize)]
#[serde(deny_unknown_fields)]
struct Fact {
    scenario: String,
    source_witness_sha256: String,
    witness_sha256: String,
    claimed_statement: String,
}
#[derive(Serialize)]
struct Sample {
    scenario: String,
    sample: usize,
    decode_ns: u128,
    construction_ns: u128,
    mapping_ns: u128,
    original_check_ns: u128,
    converted_check_ns: u128,
    complete_checked_ns: u128,
    original_valid: bool,
    converted_valid: bool,
    statement: String,
}
#[derive(Serialize)]
struct Report {
    schema: &'static str,
    mode: String,
    facts: Vec<Fact>,
    relation: String,
    rows: usize,
    columns: usize,
    retained_domain: usize,
    fft_domain: usize,
    compile_ns: u128,
    samples: Vec<Sample>,
    invalid_witness_rejected: bool,
    altered_statement_rejected: bool,
    limits: &'static str,
}

fn run<W>(
    mode: &str,
    root: &Path,
    decode: impl Fn(&[u8]) -> Result<W>,
    constrain: impl for<'a> Fn(Context<'a, Scalar>, &W) -> Vec<Var<'a, Scalar>>,
    alter_statement: impl Fn(&mut W),
) -> Result<Report> {
    let manifest: Manifest = serde_json::from_slice(&fs::read(root.join("manifest.json"))?)?;
    ensure!(
        manifest.schema == "shieldd.native_experiment.logical_witnesses.v1",
        "wrong manifest"
    );
    let scenarios = [
        "transfer",
        "transfer_unregulated",
        "transfer_flagged",
        "transfer_accumulating",
        "transfer_over_limit_disclosure",
        "transfer_accumulator_continuation",
    ];
    ensure!(
        manifest
            .facts
            .iter()
            .map(|f| f.scenario.as_str())
            .eq(scenarios),
        "scenario order"
    );
    let inputs = manifest
        .facts
        .iter()
        .map(|f| {
            let bytes = fs::read(root.join(format!("{}.witness", f.scenario)))?;
            ensure!(
                hex::encode(Sha256::digest(&bytes)) == f.witness_sha256,
                "wrong witness hash"
            );
            Ok(bytes)
        })
        .collect::<Result<Vec<_>>>()?;
    let template = decode(&inputs[0])?;
    let now = Instant::now();
    let (circuit, selected) = build(|ctx| constrain(ctx, &template));
    let layout = pari::InputLayout::new(vec![selected[0]], vec![vec![selected[1]]])?;
    let relation = pari::Relation::compile(&circuit, &layout)?;
    let compile_ns = now.elapsed().as_nanos();
    drop(circuit);
    drop(template);
    if mode == "control" {
        ensure!(
            relation.constraint_count() == 220009 && relation.variable_count() == 220029,
            "control relation counts changed"
        );
        ensure!(
            hex::encode(relation.digest())
                == "80915f4d2181d1a6ff31c9d17b5855f665946b466fd66e9e7f10660c213a17d5",
            "control relation digest changed"
        );
    }
    let mut samples = Vec::new();
    for sample in 0..3 {
        for (fact, bytes) in manifest.facts.iter().zip(&inputs) {
            let total = Instant::now();
            let now = Instant::now();
            let witness = decode(bytes)?;
            let decode_ns = now.elapsed().as_nanos();
            let now = Instant::now();
            let (valued, selected) = build_with_values(|ctx| constrain(ctx, &witness));
            let construction_ns = now.elapsed().as_nanos();
            let statement = hex::encode(valued[selected[0]].encode());
            ensure!(statement == fact.claimed_statement, "changed statement");
            let now = Instant::now();
            let original_valid = valued.is_satisfied();
            let original_check_ns = now.elapsed().as_nanos();
            let now = Instant::now();
            let converted =
                relation.witness_prepared(&valued, &layout, vec![pari::Opening::new(Scalar::one())])?;
            let mapping_ns = now.elapsed().as_nanos();
            let now = Instant::now();
            let converted_valid = relation.check_witness(&converted);
            let converted_check_ns = now.elapsed().as_nanos();
            ensure!(
                original_valid && converted_valid,
                "invalid Transfer assignment"
            );
            drop(converted);
            drop(valued);
            drop(witness);
            samples.push(Sample {
                scenario: fact.scenario.clone(),
                sample,
                decode_ns,
                construction_ns,
                mapping_ns,
                original_check_ns,
                converted_check_ns,
                complete_checked_ns: total.elapsed().as_nanos(),
                original_valid,
                converted_valid,
                statement,
            });
        }
    }
    let rejects = |witness: &W| -> Result<bool> {
        let (valued, _) = build_with_values(|ctx| constrain(ctx, witness));
        let converted =
            relation.witness_prepared(&valued, &layout, vec![pari::Opening::new(Scalar::one())])?;
        Ok(!valued.is_satisfied() && !relation.check_witness(&converted))
    };
    let invalid_bytes = fs::read(root.join("invalid.witness"))?;
    ensure!(
        hex::encode(Sha256::digest(&invalid_bytes)) == manifest.invalid_witness_sha256,
        "invalid witness hash"
    );
    let invalid_witness_rejected = rejects(&decode(&invalid_bytes)?)?;
    let mut altered = decode(&inputs[0])?;
    alter_statement(&mut altered);
    let altered_statement_rejected = rejects(&altered)?;
    ensure!(
        invalid_witness_rejected && altered_statement_rejected,
        "negative witness accepted"
    );
    Ok(Report {
        schema: "shieldd.hinted_transfer_screen.v2",
        mode: mode.to_owned(),
        facts: manifest.facts,
        relation: hex::encode(relation.digest()),
        rows: relation.constraint_count(),
        columns: relation.variable_count(),
        retained_domain: relation.domain_size(),
        fft_domain: relation.domain_size().next_power_of_two(),
        compile_ns,
        samples,
        invalid_witness_rejected,
        altered_statement_rejected,
        limits: "Three count/solve observations per scenario including online hint generation and the actual prepared witness mapper; no warmups or proving. Original/converted checks are separately timed and included in complete checked time. No key, proof or network/phone measurement.",
    })
}

fn main() -> Result<()> {
    let args = std::env::args().skip(1).collect::<Vec<_>>();
    ensure!(
        args.len() == 3,
        "usage: hinted-transfer-screen control|hinted WITNESS_DIR OUTPUT_JSON"
    );
    let report = match args[0].as_str() {
        "control" => {
            let params = native::hash::Parameters::load()?;
            let generators = native::map::Generators::derive(&params);
            run(
                "control",
                Path::new(&args[1]),
                native::witness_codec::decode,
                |ctx, w| native::transfer::constrain(ctx, &params, &generators, w),
                |w| w.claimed_statement += &Scalar::one(),
            )?
        }
        "hinted" => {
            let params = hash::Parameters::load()?;
            let generators = map::Generators::derive(&params);
            run(
                "hinted",
                Path::new(&args[1]),
                witness_codec::decode,
                |ctx, w| transfer::constrain(ctx, &params, &generators, w),
                |w| w.claimed_statement += &Scalar::one(),
            )?
        }
        _ => anyhow::bail!("unknown mode"),
    };
    serde_json::to_writer_pretty(
        fs::OpenOptions::new()
            .write(true)
            .create_new(true)
            .open(&args[2])?,
        &report,
    )?;
    Ok(())
}
