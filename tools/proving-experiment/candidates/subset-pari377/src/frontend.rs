//! Full logical-witness API with checked combined resident arithmetic.
use crate::{arithmetic, protocol::PreparedProver, worker};
#[path = "../../../transport.rs"]
mod transport;
use anyhow::{ensure, Context, Result};
use arithmetic::{checked, identify, point, point_bytes, scalar_bytes, FileIdentity, Go};
use ark_bls12_377::{Bls12_377, Fr, G1Affine, G1Projective};
use ark_ec::{AffineRepr, VariableBaseMSM};
use ark_ff::AdditiveGroup;
use rand::rngs::OsRng;
use serde::{Deserialize, Serialize};
use sha2::{Digest, Sha256};
use std::{
    fs,
    path::{Path, PathBuf},
    time::Instant,
};
use zkpari::Proof;
const CLASSES: [&str; 5] = ["witness", "masks", "quotient", "opening_a", "opening_r"];
#[derive(Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
struct Operation {
    name: String,
    count: usize,
    bases: FileIdentity,
}
#[derive(Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
struct Manifest {
    schema: String,
    boundary: String,
    workers: usize,
    key: FileIdentity,
    operations: Vec<Operation>,
}
pub fn export_bases(key_path: &Path, out: &Path) -> Result<()> {
    ensure!(!out.exists(), "preserve bases");
    let key = crate::protocol::decode_key(&fs::read(key_path)?)?;
    fs::create_dir_all(out)?;
    let masks = [key.sigma_mask_const, key.sigma_mask_linear];
    let slices: [&[G1Affine]; 5] = [
        &key.sigma_w,
        &masks,
        &key.sigma_q,
        &key.sigma_a,
        &key.sigma_r,
    ];
    let mut operations = Vec::new();
    for (name, bases) in CLASSES.into_iter().zip(slices) {
        let mut bytes = Vec::with_capacity(97 * bases.len());
        for point in bases {
            bytes.extend(point_bytes(point));
        }
        let path = out.join(format!("{name}.bases"));
        fs::write(&path, bytes)?;
        operations.push(Operation {
            name: name.into(),
            count: bases.len(),
            bases: identify(&path)?,
        });
    }
    let manifest=Manifest{schema:"shieldd.proving_experiment.msm_operands.v1".into(),boundary:"Checked subset development-key bases for resident arithmetic; no simulated proof or scalar corpus.".into(),workers:2,key:identify(key_path)?,operations};
    fs::write(
        out.join("manifest.json"),
        serde_json::to_vec_pretty(&manifest)?,
    )?;
    Ok(())
}
struct Bound {
    pointer: usize,
    count: usize,
}
struct Foreign {
    go: Go,
    ranges: Vec<Bound>,
    masks: [G1Affine; 2],
    pending: Option<Vec<u8>>,
}
impl Foreign {
    fn start(
        prover: &PreparedProver,
        key: &Path,
        dir: &Path,
        binary: &Path,
    ) -> Result<(Self, arithmetic::Response)> {
        let m: Manifest = serde_json::from_slice(&fs::read(dir.join("manifest.json"))?)?;
        ensure!(
            m.schema == "shieldd.proving_experiment.msm_operands.v1"
                && m.workers == 2
                && m.operations.len() == 5,
            "operand manifest"
        );
        ensure!(
            identify(key)?.sha256 == m.key.sha256,
            "resident bases belong to another key"
        );
        let pk = prover.proving_key();
        let masks = [pk.sigma_mask_const, pk.sigma_mask_linear];
        let slices: [&[G1Affine]; 5] = [&pk.sigma_w, &masks, &pk.sigma_q, &pk.sigma_a, &pk.sigma_r];
        let mut ranges = Vec::new();
        for ((name, bases), op) in CLASSES.iter().zip(slices).zip(&m.operations) {
            ensure!(
                *name == op.name && bases.len() == op.count,
                "key slice/count mismatch"
            );
            let mut digest = Sha256::new();
            for p in bases {
                digest.update(point_bytes(p));
            }
            ensure!(
                hex::encode(digest.finalize()) == op.bases.sha256,
                "actual key bases differ from worker bases"
            );
            // Check the file before handing its source-bound manifest to the child.
            drop(checked(&op.bases)?);
            ranges.push(Bound {
                pointer: bases.as_ptr() as usize,
                count: bases.len(),
            });
        }
        let (go, ready) = Go::start(binary, dir)?;
        Ok((
            Self {
                go,
                ranges,
                masks,
                pending: None,
            },
            ready,
        ))
    }
    fn msm(&mut self, index: usize, bases: &[G1Affine], scalars: &[Fr]) -> Result<G1Projective> {
        ensure!(
            index < 5 && bases.len() == scalars.len(),
            "unexpected MSM call"
        );
        let bound = &self.ranges[index];
        if index == 1 {
            ensure!(bases == self.masks, "mask bases changed");
            return Ok(G1Projective::msm_unchecked(bases, scalars));
        }
        validate_range(bound, bases.as_ptr() as usize, bases.len())?;
        let mut bytes = scalar_bytes(scalars);
        // Zero coefficients preserve an exact prefix MSM, including a zero polynomial.
        bytes.resize(32 * bound.count, 0);
        let name = {
            if index == 0 || index == 3 {
                ensure!(self.pending.is_none(), "unfinished combined MSM");
                self.pending = Some(bytes);
                return Ok(G1Projective::ZERO);
            }
            let mut prefix = self.pending.take().context("missing combined MSM prefix")?;
            prefix.extend(bytes);
            bytes = prefix;
            if index == 2 {
                "commitment"
            } else {
                "opening"
            }
        };
        let (_, output) = self.go.call(name, &bytes)?;
        Ok(point(&output)?.into_group())
    }
    fn prove(
        &mut self,
        prover: &PreparedProver,
        public: &[Fr],
        witness: &[Fr],
        rng: &mut (impl rand::RngCore + rand::CryptoRng),
    ) -> Result<Proof<Bls12_377>> {
        ensure!(self.pending.is_none(), "unconsumed combined MSM");
        let mut calls = 0;
        let mut failure = None;
        let result = prover.prove_with_msm(public, witness, rng, &mut |bases, scalars| {
            let index = calls;
            calls += 1;
            if failure.is_some() {
                return G1Projective::ZERO;
            }
            match self.msm(index, bases, scalars) {
                Ok(p) => p,
                Err(e) => {
                    failure = Some(e);
                    G1Projective::ZERO
                }
            }
        });
        // An infallible upstream callback cannot propagate I/O errors itself.
        // Never admit its provisional result if any foreign operation failed.
        if let Some(e) = failure {
            return Err(e);
        }
        let proof = result?;
        ensure!(self.pending.is_none(), "incomplete combined MSM");
        ensure!(calls == 5, "changed prover MSM schedule");
        Ok(proof)
    }
}
fn validate_range(bound: &Bound, pointer: usize, count: usize) -> Result<()> {
    ensure!(
        pointer == bound.pointer && count <= bound.count,
        "MSM key slice mapping mismatch"
    );
    Ok(())
}
#[derive(Serialize)]
struct SelectedInitialization {
    prover: worker::Initialization,
    arithmetic_preparation_ns: u128,
    go_initialization_ns: u64,
    resident_base_bytes: usize,
    total_ns: u128,
}
pub fn serve(args: &[PathBuf]) -> Result<()> {
    ensure!(
        args.len() == 6,
        "serve OLD KEY SOLVER ARTIFACTS OPERANDS MSM_WORKER"
    );
    let total = Instant::now();
    let (mut api, prover) = worker::Worker::new(&args[0], &args[1], &args[2], &args[3])?;
    let start = Instant::now();
    let (mut foreign, ready) = Foreign::start(&api.prover, &args[1], &args[4], &args[5])?;
    let initialization = SelectedInitialization {
        prover,
        arithmetic_preparation_ns: start.elapsed().as_nanos(),
        go_initialization_ns: ready.initialization_ns,
        resident_base_bytes: ready.resident_base_bytes,
        total_ns: total.elapsed().as_nanos(),
    };
    transport::serve(
        "shieldd.proving_experiment.selected_b.v1",
        initialization,
        |request, payload| match request.op.as_str() {
            "prove" => {
                let (bytes, statement, timing) = api
                    .prove_using(payload, |prover, public, witness| {
                        foreign.prove(prover, public, witness, &mut OsRng)
                    })?;
                Ok(transport::Outcome {
                    bytes,
                    statement: Some(statement),
                    verified: false,
                    timing: Some(timing),
                })
            }
            "verify_wrong_domain" => Ok(transport::Outcome {
                bytes: Vec::new(),
                statement: None,
                verified: api.verify_other_domain(payload, &request.statement)?,
                timing: None,
            }),
            "verify" => Ok(transport::Outcome {
                bytes: Vec::new(),
                statement: None,
                verified: api.verify(payload, &request.statement)?,
                timing: None,
            }),
            _ => anyhow::bail!("unknown operation"),
        },
    )?;
    foreign.go.close()
}
