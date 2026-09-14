//! Complete encoded-witness to encoded-proof boundary for the native experiment.
use crate::{hash::Parameters, map::Generators, transfer, witness_codec};
use anyhow::{Result, ensure};
use commonware_codec::{Encode, RangeCfg, Read};
use commonware_cryptography::{
    bls12381::primitives::group::{G1, Scalar},
    transcript::{Transcript, Version},
    zk::{
        circuit::{build, build_with_values},
        pari,
    },
};
use commonware_parallel::Rayon;
use serde::Serialize;
use std::{fs, num::NonZeroUsize, path::Path, time::Instant};

fn allocation_stage(stage: &'static str) {
    #[cfg(feature = "allocation_trace")]
    crate::allocation::record(stage);
    #[cfg(not(feature = "allocation_trace"))]
    let _ = stage;
}

const MAGIC: &[u8; 8] = b"SHNC3401";
#[derive(Serialize)]
pub struct Initialization {
    pub relation_preparation_ns: u128,
    pub key_file_read_ns: u128,
    pub key_decode_ns: u128,
    pub key_canonical_roundtrip_ns: u128,
    pub key_checked_decode_ns: u128,
    pub total_ns: u128,
}
#[derive(Serialize)]
pub struct RequestTimings {
    pub checked_witness_decode_ns: u128,
    pub construction_solving_ns: u128,
    pub assignment_mapping_ns: u128,
    pub claim_ns: u128,
    pub prove_ns: u128,
    pub encoding_ns: u128,
    pub cleanup_ns: u128,
    pub total_ns: u128,
}
pub struct Output {
    pub bytes: Vec<u8>,
    pub timings: RequestTimings,
    pub kernel: Option<pari::ProverTimings>,
}
pub struct Prover {
    params: Parameters,
    generators: Generators,
    layout: pari::InputLayout,
    relation: pari::Relation,
    polynomials: pari::PreparedPolynomials,
    key: pari::ProvingKey,
    strategy: Rayon,
}
fn transcript() -> Transcript {
    Transcript::new(b"shieldd-proving-experiment/native-transfer", Version::V1)
}
impl Prover {
    /// Runtime preparation is charged to first use; trusted setup remains offline.
    pub fn new(template: &[u8], key_path: &Path) -> Result<(Self, Initialization)> {
        let total = Instant::now();
        allocation_stage("initialize_start");
        let params = Parameters::load()?;
        let generators = Generators::derive(&params);
        let w = witness_codec::decode(template)?;
        let (c, selected) = build(|ctx| transfer::constrain(ctx, &params, &generators, &w));
        allocation_stage("compiled");
        let layout = pari::InputLayout::new(vec![selected[0]], vec![vec![selected[1]]])?;
        let relation = pari::Relation::compile(&c, &layout)?;
        drop(c);
        drop(w);
        allocation_stage("relation_ready");
        let polynomials = pari::PreparedPolynomials::new(&relation)?;
        allocation_stage("polynomials_ready");
        let strategy = Rayon::new(NonZeroUsize::new(2).unwrap())?;
        let relation_preparation_ns = total.elapsed().as_nanos();
        let start = Instant::now();
        let bytes = fs::read(key_path)?;
        let key_file_read_ns = start.elapsed().as_nanos();
        let start = Instant::now();
        let mut input = bytes.as_slice();
        let key = pari::ProvingKey::read_with_strategy(
            &mut input,
            &(RangeCfg::exact(1), RangeCfg::exact(1)),
            &strategy,
        )?;
        let key_decode_ns = start.elapsed().as_nanos();
        allocation_stage("key_decoded");
        let canonical_start = Instant::now();
        ensure!(
            input.is_empty() && key.encode().as_ref() == bytes,
            "noncanonical native key"
        );
        ensure!(
            key.verifying_key().relation_digest() == relation.digest(),
            "wrong native relation key"
        );
        let key_checked_decode_ns = start.elapsed().as_nanos();
        let key_canonical_roundtrip_ns = canonical_start.elapsed().as_nanos();
        drop(bytes);
        allocation_stage("initialize_cleaned");
        let initialization = Initialization {
            relation_preparation_ns,
            key_file_read_ns,
            key_decode_ns,
            key_canonical_roundtrip_ns,
            key_checked_decode_ns,
            total_ns: total.elapsed().as_nanos(),
        };
        Ok((
            Self {
                params,
                generators,
                layout,
                relation,
                polynomials,
                key,
                strategy,
            },
            initialization,
        ))
    }

    pub fn msm_bases(&self) -> pari::ProverBases<'_> {
        self.key.msm_bases()
    }

    pub fn prove(&self, payload: &[u8]) -> Result<Output> {
        let start = Instant::now();
        self.work(payload, &mut rand::rng(), None, start, None)
    }

    /// Paired RNGs are permitted only for diagnostic proof-byte parity checks.
    pub fn profile_with_rng(
        &self,
        payload: &[u8],
        rng: &mut impl rand::CryptoRng,
        method: pari::QuotientMethod,
    ) -> Result<Output> {
        self.work(payload, rng, Some(method), Instant::now(), None)
    }

    /// Includes the complete logical-witness API around a diagnostic MSM callback.
    pub fn prove_with_msm(
        &self,
        payload: &[u8],
        rng: &mut impl rand::CryptoRng,
        msm: &mut dyn FnMut(&[G1], &[Scalar]) -> Result<G1, pari::Error>,
    ) -> Result<Output> {
        self.work(payload, rng, None, Instant::now(), Some(msm))
    }

    fn work(
        &self,
        payload: &[u8],
        rng: &mut impl rand::CryptoRng,
        method: Option<pari::QuotientMethod>,
        total: Instant,
        msm: Option<&mut dyn FnMut(&[G1], &[Scalar]) -> Result<G1, pari::Error>>,
    ) -> Result<Output> {
        allocation_stage("request_start");
        let w = witness_codec::decode(payload)?;
        let checked_witness_decode_ns = total.elapsed().as_nanos();
        let start = Instant::now();
        let (valued, _) =
            build_with_values(|ctx| transfer::constrain(ctx, &self.params, &self.generators, &w));
        let construction_solving_ns = start.elapsed().as_nanos();
        allocation_stage("valued_ready");
        let start = Instant::now();
        let openings = vec![pari::Opening::random(rng)];
        let witness = self
            .relation
            .witness_prepared(&valued, &self.layout, openings)?;
        drop(valued);
        drop(w);
        let assignment_mapping_ns = start.elapsed().as_nanos();
        allocation_stage("witness_ready");
        let start = Instant::now();
        let claim = witness.claim(self.key.commitment_keys(), &self.strategy)?;
        let claim_ns = start.elapsed().as_nanos();
        let start = Instant::now();
        let (proof, kernel) = if let Some(msm) = msm {
            (
                pari::prove_with_prepared_msm(
                    rng,
                    &mut transcript(),
                    &self.key,
                    &self.relation,
                    &claim,
                    &witness,
                    &self.strategy,
                    &self.polynomials,
                    msm,
                )?,
                None,
            )
        } else if let Some(method) = method {
            let (proof, timings) = pari::prove_profiled(
                rng,
                &mut transcript(),
                &self.key,
                &self.relation,
                &claim,
                &witness,
                &self.strategy,
                method,
            )?;
            (proof, Some(timings))
        } else {
            (
                pari::prove(
                    rng,
                    &mut transcript(),
                    &self.key,
                    &self.relation,
                    &claim,
                    &witness,
                    &self.strategy,
                )?,
                None,
            )
        };
        let prove_ns = start.elapsed().as_nanos();
        allocation_stage("proof_ready");
        let start = Instant::now();
        let mut bytes = MAGIC.to_vec();
        bytes.extend_from_slice(&claim.encode());
        bytes.extend_from_slice(&proof.encode());
        let encoding_ns = start.elapsed().as_nanos();
        let start = Instant::now();
        drop(witness);
        let cleanup_ns = start.elapsed().as_nanos();
        allocation_stage("request_cleaned");
        Ok(Output {
            bytes,
            kernel,
            timings: RequestTimings {
                checked_witness_decode_ns,
                construction_solving_ns,
                assignment_mapping_ns,
                claim_ns,
                prove_ns,
                encoding_ns,
                cleanup_ns,
                total_ns: total.elapsed().as_nanos(),
            },
        })
    }

    /// Checked package verification is outside every proving timer.
    pub fn verify(&self, bytes: &[u8], expected_payload: &[u8]) -> Result<bool> {
        let expected = witness_codec::decode(expected_payload)?.claimed_statement;
        self.verify_statement(bytes, &expected)
    }

    pub fn verify_other_domain(&self,bytes:&[u8],expected:&Scalar)->Result<bool>{
        ensure!(self.verify_statement(bytes,expected)?,"domain audit requires a valid proof");
        let mut input=&bytes[MAGIC.len()..];
        let claim=pari::Claim::read_cfg(&mut input,&(RangeCfg::exact(1),RangeCfg::exact(1)))?;
        let proof=pari::Proof::read_cfg(&mut input,&())?;
        Ok(pari::verify(&mut transcript(),&self.key.verifying_key().domain_audit_key()?,&claim,&proof))
    }

    pub fn verify_statement(&self, bytes: &[u8], expected: &Scalar) -> Result<bool> {
        ensure!(bytes.starts_with(MAGIC), "wrong native proof package");
        let mut input = &bytes[MAGIC.len()..];
        let claim = pari::Claim::read_cfg(&mut input, &(RangeCfg::exact(1), RangeCfg::exact(1)))?;
        ensure!(
            claim.public_inputs.as_slice() == std::slice::from_ref(expected),
            "native proof statement differs from request"
        );
        let proof = pari::Proof::read_cfg(&mut input, &())?;
        ensure!(input.is_empty(), "trailing native proof bytes");
        let mut canonical = MAGIC.to_vec();
        canonical.extend_from_slice(&claim.encode());
        canonical.extend_from_slice(&proof.encode());
        ensure!(canonical == bytes, "noncanonical native proof package");
        Ok(pari::verify(
            &mut transcript(),
            self.key.verifying_key(),
            &claim,
            &proof,
        ))
    }
}
