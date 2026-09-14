//! Actual query-point decoding screen; initialization and conversion are separate.
#![forbid(unsafe_code)]
use anyhow::{Result, ensure};
use commonware_codec::{Encode, RangeCfg};
use commonware_cryptography::{Hasher, sha256::Sha256, bls12381::primitives::group::G1, zk::pari};
use commonware_math::algebra::Additive;
use commonware_parallel::{Rayon, Strategy};
use serde::Serialize;
use shieldd_prepared_points381_screen::{compressed, prepare, prepared};
use std::{fs, path::PathBuf, num::NonZeroUsize, time::Instant};
#[derive(Serialize)]
struct Role { role: &'static str, indices: Vec<usize>, compressed_sha256: String, prepared_sha256: String }
#[derive(Serialize)]
struct Sample { method: &'static str, block: usize, warmup: bool, ns: u128, exact_output: bool }
#[derive(Serialize)]
struct Report {
    schema: &'static str, key_sha256: String, key_bytes: usize, checked_key_initialization_ns: u128,
    corpus_preparation_ns: u128, roles: Vec<Role>, points: usize, compressed_bytes: usize,
    prepared_bytes: usize, projective_output_bytes_per_point: usize, samples: Vec<Sample>, limits: &'static str,
}
fn hash(bytes: &[u8]) -> String { hex::encode(Sha256::hash(&[bytes]).as_ref()) }
fn main() -> Result<()> {
    let args = std::env::args().collect::<Vec<_>>();
    ensure!(args.len() == 3, "usage: prepared-points381 KEY NEW_OUTPUT");
    let out = PathBuf::from(&args[2]); ensure!(!out.exists(), "preserve evidence");
    let start = Instant::now();
    let strategy = Rayon::new(NonZeroUsize::new(2).unwrap())?;
    let encoded = fs::read(&args[1])?;
    let mut input = encoded.as_slice();
    let key = pari::ProvingKey::read_with_strategy(&mut input, &(RangeCfg::exact(1), RangeCfg::exact(1)), &strategy)?;
    ensure!(input.is_empty() && key.encode().as_ref() == encoded, "key canonical roundtrip failed");
    let checked_key_initialization_ns = start.elapsed().as_nanos();
    let start = Instant::now();
    let bases = key.msm_bases();
    let mut roles = Vec::new(); let mut compact = Vec::<[u8;48]>::new(); let mut expanded = Vec::<[u8;96]>::new();
    for (role, points) in [("witness_nonzero",bases.witness),("quotient",bases.quotient),("opening_a",bases.opening_a),("opening_r",bases.opening_r)] {
        let mut indices = Vec::new(); let mut c = Vec::new(); let mut e = Vec::new();
        for (index, point) in points.iter().enumerate().filter(|(_,p)| **p != G1::zero()).take(256) {
            let bytes: [u8;48] = point.encode().as_ref().try_into().unwrap();
            let converted = prepare(&bytes)?;
            ensure!(prepared(&converted)?.to_public_key().compress() == bytes, "conversion changed point");
            indices.push(index); c.extend_from_slice(&bytes); e.extend_from_slice(&converted);
            compact.push(bytes); expanded.push(converted);
        }
        ensure!(indices.len() == 256, "insufficient actual query points");
        roles.push(Role {role,indices,compressed_sha256:hash(&c),prepared_sha256:hash(&e)});
    }
    let corpus_preparation_ns = start.elapsed().as_nanos();
    drop(key);
    ensure!(std::mem::size_of::<G1>() == std::mem::size_of::<blst::min_pk::AggregatePublicKey>(), "output representation size mismatch");
    let mut samples = Vec::new();
    for block in 0..8 {
        for method in if block%2==0 { ["compressed","prepared"] } else { ["prepared","compressed"] } {
            let clock = Instant::now();
            let ns = if method == "compressed" {
                let values = strategy.manual().try_map_collect_vec(&compact, |bytes| compressed(bytes))?;
                let ns = clock.elapsed().as_nanos();
                ensure!(values.iter().zip(&compact).all(|(p,b)| p.encode().as_ref() == b), "compressed result mismatch");
                ns
            } else {
                let values = strategy.manual().try_map_collect_vec(&expanded, |bytes| prepared(bytes))?;
                let ns = clock.elapsed().as_nanos();
                ensure!(values.iter().zip(&compact).all(|(p,b)| &p.to_public_key().compress() == b), "prepared result mismatch");
                ns
            };
            samples.push(Sample {method,block,warmup:block<3,ns,exact_output:true});
        }
    }
    let report = Report {
        schema:"shieldd.prepared_points381_screen.v1",key_sha256:hash(&encoded),key_bytes:encoded.len(),checked_key_initialization_ns,corpus_preparation_ns,
        roles,points:compact.len(),compressed_bytes:compact.len()*48,prepared_bytes:expanded.len()*96,projective_output_bytes_per_point:std::mem::size_of::<G1>(),samples,
        limits:"1024 actual nonidentity query points: 256 per nonzero witness, quotient, opening-A and opening-R role. Both paths include canonical decoding/roundtrip, curve/subgroup/nonidentity checks, collection allocation and projective output construction; equal-output checks and cleanup occur outside clocks. One shared two-worker strategy, three warmups and five samples each, alternating order. Initial complete key loading and offline conversion are separate. Identity-permitted verifying/commitment-key roles are excluded. No full prepared-key codec, proof generation, first-proof improvement or phone claim.",
    };
    fs::write(out,serde_json::to_vec_pretty(&report)?)?; Ok(())
}
