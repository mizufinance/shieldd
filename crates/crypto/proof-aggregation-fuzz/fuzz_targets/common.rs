#![allow(dead_code, unused_imports)]

use std::sync::OnceLock;

use ark_ff::UniformRand;
use ark_groth16::{r1cs_to_qap::LibsnarkReduction, Groth16, PreparedVerifyingKey};
use ark_r1cs_std::{alloc::AllocVar, eq::EqGadget, fields::fp::FpVar};
use ark_relations::r1cs::{ConstraintSynthesizer, ConstraintSystemRef, SynthesisError};
use ark_snark::SNARK;
use decaf377::{Bls12_377, Fq};
use rand_chacha::{rand_core::SeedableRng, ChaCha20Rng};
use shieldd_sdk_proof_aggregation::{
    aggregate_family, pad_items_to_power_of_two, srs_id, AggregatePreflightInput,
    AggregateStatement, DevSrs, ProofFamilyId, AGGREGATE_PROTOCOL_VERSION,
};
use shieldd_sdk_proof_params::batch::BatchItem;

struct SquareCircuit {
    x: Option<Fq>,
}

impl ConstraintSynthesizer<Fq> for SquareCircuit {
    fn generate_constraints(self, cs: ConstraintSystemRef<Fq>) -> Result<(), SynthesisError> {
        let x = FpVar::new_witness(cs.clone(), || {
            self.x.ok_or(SynthesisError::AssignmentMissing)
        })?;
        let x_sq = &x * &x;
        let public = FpVar::new_input(cs, || {
            let x = self.x.ok_or(SynthesisError::AssignmentMissing)?;
            Ok(x * x)
        })?;
        x_sq.enforce_equal(&public)?;
        Ok(())
    }
}

pub struct Fixture {
    pub pvk: PreparedVerifyingKey<Bls12_377>,
    pub statement: AggregateStatement,
    pub srs: DevSrs,
    pub aggregate_proof: Vec<u8>,
}

static FIXTURE: OnceLock<Fixture> = OnceLock::new();

pub fn fixture() -> &'static Fixture {
    FIXTURE.get_or_init(|| {
        let mut rng = ChaCha20Rng::seed_from_u64(0x5eed);
        let pk =
            Groth16::<Bls12_377, LibsnarkReduction>::generate_random_parameters_with_reduction(
                SquareCircuit {
                    x: Some(Fq::from(1u64)),
                },
                &mut rng,
            )
            .expect("fuzz fixture setup");
        let pvk = PreparedVerifyingKey::from(pk.vk.clone());
        let x = Fq::rand(&mut rng);
        let proof = Groth16::<Bls12_377, LibsnarkReduction>::prove(
            &pk,
            SquareCircuit { x: Some(x) },
            &mut rng,
        )
        .expect("fuzz fixture proof");
        let item = BatchItem {
            proof,
            public_inputs: vec![x * x],
        };
        let srs = DevSrs::default();
        let items = pad_items_to_power_of_two(&[item], srs.max_padded_count as usize)
            .expect("fuzz fixture padding");
        let rows = items
            .iter()
            .map(|item| item.public_inputs.clone())
            .collect::<Vec<_>>();
        let statement = AggregateStatement::new(
            AGGREGATE_PROTOCOL_VERSION,
            ProofFamilyId::Transfer,
            srs_id(&srs),
            &pvk,
            1,
            &rows,
        )
        .expect("fuzz fixture statement");
        let aggregate_proof =
            aggregate_family(&statement, &pvk, &items, &srs).expect("fuzz fixture aggregate");
        Fixture {
            pvk,
            statement,
            srs,
            aggregate_proof,
        }
    })
}

pub fn preflight_input<'a>(aggregate_proof_bytes: &'a [u8]) -> AggregatePreflightInput<'a> {
    let fixture = fixture();
    AggregatePreflightInput {
        statement: &fixture.statement,
        pvk: &fixture.pvk,
        aggregate_proof_bytes,
        srs: &fixture.srs,
    }
}
