//! Actual Transfer polynomial transform screen; no keys or proving-time claim.
use anyhow::{Result, ensure};
use commonware_codec::Encode;
use commonware_cryptography::{
    Hasher,
    bls12381::primitives::group::Scalar,
    sha256::Sha256,
    zk::{
        circuit::{build, build_with_values},
        pari,
    },
};
use commonware_math::{
    algebra::Additive,

};
use native::{hash::Parameters, map::Generators, transfer, witness_codec};
use rand::{SeedableRng, rngs::StdRng};
use serde::Serialize;
use shieldd_fused_inverse_screen::PreparedTransform;
use reference::PreparedTransform as ReferenceTransform;
use std::{fs, path::PathBuf, time::Instant};
#[derive(Serialize)]
struct Sample {
    operation: &'static str,
    method: &'static str,
    block: usize,
    warmup: bool,
    ns: u128,
    exact_output: bool,
}
#[derive(Serialize)]
struct Report {
    schema: &'static str,
    relation: String,
    witness_sha256: String,
    polynomial_sha256: String,
    coefficients: usize,
    fft: usize,
    table_bytes: usize,
    preparation_ns: u128,
    samples: Vec<Sample>,
    limits: &'static str,
}
fn hash(bytes: &[u8]) -> String {
    hex::encode(Sha256::hash(&[bytes]).as_ref())
}
fn main() -> Result<()> {
    let args = std::env::args().collect::<Vec<_>>();
    ensure!(args.len() == 3, "usage: prepared-ntt WITNESS NEW_OUTPUT");
    let path = PathBuf::from(&args[1]);
    let out = PathBuf::from(&args[2]);
    ensure!(!out.exists(), "preserve prior evidence");
    let payload = fs::read(path)?;
    let witness_sha256 = hash(&payload);
    let (coefficients, relation_digest, size) = {
        let params = Parameters::load()?;
        let generators = Generators::derive(&params);
        let witness = witness_codec::decode(&payload)?;
        let (c, selected) = build(|ctx| transfer::constrain(ctx, &params, &generators, &witness));
        let layout = pari::InputLayout::new(vec![selected[0]], vec![vec![selected[1]]])?;
        let relation = pari::Relation::compile(&c, &layout)?;
        ensure!(
            hex::encode(relation.digest())
                == "722fba7093a6188bba83708f0abe409a39cf34fa4451b95594e82781b68f3783",
            "wrong actual Transfer relation"
        );
        let (valued, _) =
            build_with_values(|ctx| transfer::constrain(ctx, &params, &generators, &witness));
        ensure!(valued.is_satisfied(), "original assignment rejected");
        let mut rng = StdRng::seed_from_u64(9143119);
        let assignment =
            relation.witness_prepared(&valued, &layout, vec![pari::Opening::random(&mut rng)])?;
        ensure!(
            relation.check_witness(&assignment),
            "converted assignment rejected"
        );
        let screen = pari::PolynomialScreen::new(&relation)?;
        let challenge = Scalar::from(101);
        let eta = [Scalar::from(17), Scalar::from(23)];
        ensure!(
            pari::SubsetDomain::new(relation.domain_size())?.evaluate_vanishing(&challenge)
                != Scalar::zero(),
            "challenge in retained roots"
        );
        screen.validate(&relation, &assignment, eta.clone(), &challenge)?;
        let result = screen.work(&relation, &assignment, true, eta, &challenge)?;
        (
            result.a_opening.coefficients().to_vec(),
            hex::encode(relation.digest()),
            relation.domain_size().next_power_of_two(),
        )
    };
    let reference = ReferenceTransform::new(size)?;
    let start = Instant::now();
    let prepared = PreparedTransform::new(size)?;
    let preparation_ns = start.elapsed().as_nanos();
    let evaluations = reference.evaluate(&coefficients)?;
    let reconstructed = reference.interpolate(&evaluations)?;
    ensure!(
        prepared.evaluate(&coefficients)? == evaluations
            && prepared.interpolate(&evaluations)? == reconstructed,
        "actual-size NTT mismatch"
    );
    let mut samples = Vec::new();
    for block in 0..8 {
        for operation in ["inverse"] {
            for method in if block % 2 == 0 {
                ["reference", "prepared"]
            } else {
                ["prepared", "reference"]
            } {
                let start = Instant::now();
                let output = match (operation, method) {
                    ("forward", "reference") => reference.evaluate(&coefficients)?,
                    ("forward", _) => prepared.evaluate(&coefficients)?,
                    (_, "reference") => reference.interpolate(&evaluations)?,
                    _ => prepared.interpolate(&evaluations)?,
                };
                let ns = start.elapsed().as_nanos();
                ensure!(
                    output
                        == if operation == "forward" {
                            evaluations.clone()
                        } else {
                            reconstructed.clone()
                        },
                    "timed output mismatch"
                );
                samples.push(Sample {
                    operation,
                    method,
                    block,
                    warmup: block < 3,
                    ns,
                    exact_output: true,
                });
            }
        }
    }
    let report = Report {
        schema: "shieldd.fused_inverse_screen.v1",
        relation: relation_digest,
        witness_sha256,
        polynomial_sha256: hash(&coefficients.encode()),
        coefficients: coefficients.len(),
        fft: size,
        table_bytes: prepared.table_bytes(),
        preparation_ns,
        samples,
        limits: "Single-column inverse FFT with cached powers in both methods; candidate applies one inverse-N normalization after all butterflies on an actual validated Transfer opening polynomial; no keys or proof generation. Preparation and eight-MiB tables plus one inverse-size scalar are separate. Three warmups and five samples per method/operation, alternating order; each clock includes allocation/copy/transform, with equality checks and output cleanup outside. Existing multi-column NTT and verifier paths are untouched. No full-API speedup or phone claim.",
    };
    fs::write(out, serde_json::to_vec_pretty(&report)?)?;
    Ok(())
}
