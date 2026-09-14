//! Exact-input-index reuse inventory; unchanged native Transfer relation.
pub use native::group;
pub mod hash;
pub mod range;
pub use shieldd_native_reuse_screen::inventory;
#[path = "../../native-subset/src/authorization.rs"]
pub mod authorization;
#[path = "../../native-subset/src/balance.rs"]
pub mod balance;
#[path = "../../native-subset/src/compliance.rs"]
pub mod compliance;
#[path = "../../native-subset/src/encoding.rs"]
pub mod encoding;
#[path = "../../native-subset/src/encryption.rs"]
pub mod encryption;
#[path = "../../native-subset/src/map.rs"]
pub mod map;
#[path = "../../native-subset/src/note.rs"]
pub mod note;
#[path = "../../native-subset/src/recovery.rs"]
pub mod recovery;
#[path = "../../native-subset/src/registry.rs"]
pub mod registry;
#[path = "../../native-subset/src/routing.rs"]
pub mod routing;
#[path = "../../native-subset/src/scalar.rs"]
pub mod scalar;
#[path = "../../native-subset/src/transfer.rs"]
pub mod transfer;
#[path = "../../native-subset/src/tree.rs"]
pub mod tree;
#[path = "../../native-subset/src/volume.rs"]
pub mod volume;
#[path = "../../native-subset/src/witness_codec.rs"]
pub mod witness_codec;

use anyhow::{Result, ensure};
use commonware_codec::Encode;
use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::{
        circuit::{build, build_with_values},
        pari,
    },
};
use commonware_math::algebra::Ring;
use serde::{Deserialize, Serialize};
use sha2::{Digest, Sha256};
use std::{fs, path::Path};

#[derive(Deserialize, Serialize)]
#[serde(deny_unknown_fields)]
struct Fact {
    scenario: String,
    source_witness_sha256: String,
    witness_sha256: String,
    claimed_statement: String,
}
#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct Manifest {
    schema: String,
    facts: Vec<Fact>,
    invalid_witness_sha256: String,
}
#[derive(Serialize)]
struct Event {
    kind: inventory::Kind,
    duplicate_of: Option<usize>,
    identity_complete: bool,
    rows: usize,
    columns: usize,
}
#[derive(Serialize)]
struct ResultRecord {
    schema: &'static str,
    field: &'static str,
    parameter_hash: String,
    relation: String,
    rows: usize,
    columns: usize,
    retained_domain: usize,
    fft_domain: usize,
    events: Vec<Event>,
    facts: Vec<Fact>,
    all_original_converted_valid: bool,
    invalid_witness_rejected: bool,
    altered_statement_rejected: bool,
    limits: &'static str,
}

fn main() -> Result<()> {
    let args = std::env::args().skip(1).collect::<Vec<_>>();
    ensure!(
        args.len() == 2,
        "usage: shieldd-native-reuse-screen WITNESS_DIR OUTPUT_JSON"
    );
    let root = Path::new(&args[0]);
    let manifest: Manifest = serde_json::from_slice(&fs::read(root.join("manifest.json"))?)?;
    ensure!(
        manifest.schema == "shieldd.native_experiment.logical_witnesses.v1"
            && manifest.facts.len() == 6,
        "wrong manifest"
    );
    let mut hasher = Sha256::new();
    hasher.update(b"shieldd.reuse_screen/BLS12-381.Fr/poseidon381/width3-6");
    for bytes in [
        include_bytes!("../../native-subset/params/poseidon381.json").as_slice(),
        include_bytes!("../../native-subset/params/poseidon381-wide.json").as_slice(),
    ] {
        hasher.update((bytes.len() as u64).to_be_bytes());
        hasher.update(bytes);
    }
    let parameter_hash: [u8; 32] = hasher.finalize().into();
    let params = hash::Parameters::load()?;
    let generators = map::Generators::derive(&params);
    let template = witness_codec::decode(&fs::read(root.join("transfer.witness"))?)?;
    inventory::begin(parameter_hash);
    let (circuit, selected) =
        build(|ctx| transfer::constrain(ctx, &params, &generators, &template));
    let spans = inventory::finish();
    let layout = pari::InputLayout::new(vec![selected[0]], vec![vec![selected[1]]])?;
    let (relation, counts) = pari::Relation::compile_diagnostic(&circuit, &layout)?;
    ensure!(
        hex::encode(relation.digest())
            == "80915f4d2181d1a6ff31c9d17b5855f665946b466fd66e9e7f10660c213a17d5",
        "instrumentation changed relation"
    );
    let events = spans
        .into_iter()
        .map(|s| Event {
            kind: s.kind,
            duplicate_of: s.duplicate_of,
            identity_complete: s.identity_complete,
            rows: counts.node_rows[s.start.nodes..s.end.nodes]
                .iter()
                .sum::<usize>()
                + s.end.assertions
                - s.start.assertions,
            columns: counts.node_columns[s.start.nodes..s.end.nodes]
                .iter()
                .sum::<usize>()
                + s.end.witnesses
                - s.start.witnesses,
        })
        .collect();
    drop(circuit);
    for fact in &manifest.facts {
        let bytes = fs::read(root.join(format!("{}.witness", fact.scenario)))?;
        ensure!(
            hex::encode(Sha256::digest(&bytes)) == fact.witness_sha256,
            "wrong witness hash"
        );
        let w = witness_codec::decode(&bytes)?;
        let (valued, selected) =
            build_with_values(|ctx| transfer::constrain(ctx, &params, &generators, &w));
        ensure!(
            valued.is_satisfied()
                && hex::encode(valued[selected[0]].encode()) == fact.claimed_statement,
            "invalid original relation/statement"
        );
        let converted =
            relation.witness_prepared(&valued, &layout, vec![pari::Opening::new(Scalar::one())])?;
        ensure!(
            relation.check_witness(&converted),
            "invalid converted relation"
        );
    }
    let rejects = |w: &transfer::Witness| -> Result<bool> {
        let (valued, _) =
            build_with_values(|ctx| transfer::constrain(ctx, &params, &generators, w));
        let converted =
            relation.witness_prepared(&valued, &layout, vec![pari::Opening::new(Scalar::one())])?;
        Ok(!valued.is_satisfied() && !relation.check_witness(&converted))
    };
    let bytes = fs::read(root.join("invalid.witness"))?;
    ensure!(
        hex::encode(Sha256::digest(&bytes)) == manifest.invalid_witness_sha256,
        "wrong invalid witness hash"
    );
    let invalid_witness_rejected = rejects(&witness_codec::decode(&bytes)?)?;
    let mut bad = template;
    bad.claimed_statement += &Scalar::one();
    let altered_statement_rejected = rejects(&bad)?;
    ensure!(
        invalid_witness_rejected && altered_statement_rejected,
        "negative accepted"
    );
    let result = ResultRecord {
        schema: "shieldd.native_exact_reuse_inventory.v2",
        field: "BLS12-381.Fr",
        parameter_hash: hex::encode(parameter_hash),
        relation: hex::encode(relation.digest()),
        rows: relation.constraint_count(),
        columns: relation.variable_count(),
        retained_domain: relation.domain_size(),
        fft_domain: relation.domain_size().next_power_of_two(),
        events,
        facts: manifest.facts,
        all_original_converted_valid: true,
        invalid_witness_rejected,
        altered_statement_rejected,
        limits: "Exact circuit context/index identities and native constants0..64 compared by field equality; unresolved native constants are explicitly ineligible. Keys include field/parameters/domain/input order and decomposition width, are scoped to one build, and are not exported. Independently reconstructed equal expressions are not recognized. Range spans exclude outer canonical/upper-bound predicates, which must remain if bits are shared. This inventory changes no circuit and establishes no proving speedup.",
    };
    serde_json::to_writer_pretty(
        fs::OpenOptions::new()
            .write(true)
            .create_new(true)
            .open(&args[1])?,
        &result,
    )?;
    Ok(())
}
