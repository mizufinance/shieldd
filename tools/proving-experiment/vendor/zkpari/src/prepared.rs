use crate::{circuit::assert_instance_outlining_complete, Proof, ProvingKey, ZkPari};
use ark_ec::{pairing::Pairing, VariableBaseMSM};
use ark_ff::Field;
use ark_poly::EvaluationDomain;
use ark_relations::gr1cs::{Matrix, SynthesisError};
use ark_std::rand::RngCore;

#[derive(Default, Clone, Debug)]
pub struct ProvingProfile {
    pub vectors_ns: u64,
    pub interpolation_ns: u64,
    pub quotient_ns: u64,
    pub masking_ns: u64,
    pub commitment_msm_ns: u64,
    pub transcript_opening_polynomials_ns: u64,
    pub opening_msm_ns: u64,
}

/// Immutable relation and key association; assignments and masks remain request-local.
pub struct PreparedProver<E: Pairing> {
    key: ProvingKey<E>,
    matrices: Vec<Matrix<E::ScalarField>>,
}

impl<E: Pairing> PreparedProver<E> {
    /// Binds already checked key material to the complete outlined relation.
    pub fn new(
        key: ProvingKey<E>,
        matrices: Vec<Matrix<E::ScalarField>>,
    ) -> Result<Self, SynthesisError> {
        let index = &key.verifying_key.succinct_index;
        let n = index.num_constraints;
        let m = key.verifying_key.domain.size();
        let instances = index.instance_len;
        let wires = instances
            .checked_add(key.sigma_w.len())
            .ok_or(SynthesisError::Unsatisfiable)?;
        if instances == 0
            || n < instances
            || n.checked_next_power_of_two() != Some(m)
            || matrices.len() != 2
            || matrices.iter().any(|a| a.len() != n)
            || matrices
                .iter()
                .flatten()
                .flatten()
                .any(|(_, wire)| *wire >= wires)
            || key.sigma_q.len() < m + 3
            || key.sigma_a.len() < m + 1
            || key.sigma_r.len() < 2 * m + 2
            || ZkPari::<E>::hash_index(&matrices, n, instances) != index.matrix_digest
        {
            return Err(SynthesisError::Unsatisfiable);
        }
        // The matrix digest matches the checked key; also enforce the verifier's shape invariant.
        assert_instance_outlining_complete(&matrices, instances, n);
        Ok(Self { key, matrices })
    }

    pub fn verifying_key(&self) -> &crate::VerifyingKey<E> {
        &self.key.verifying_key
    }

    /// Immutable checked bases for development-only preparation diagnostics.
    pub fn proving_key(&self) -> &ProvingKey<E> {
        &self.key
    }

    /// The quotient remainder rejects unsatisfied assignments in release builds too.
    pub fn prove<R: RngCore>(
        &self,
        instances: &[E::ScalarField],
        witnesses: &[E::ScalarField],
        rng: &mut R,
    ) -> Result<Proof<E>, SynthesisError> {
        self.prove_inner(instances, witnesses, rng, None, &mut E::G1::msm_unchecked)
    }

    pub fn prove_profiled<R: RngCore>(
        &self,
        instances: &[E::ScalarField],
        witnesses: &[E::ScalarField],
        rng: &mut R,
    ) -> Result<(Proof<E>, ProvingProfile), SynthesisError> {
        let mut profile = ProvingProfile::default();
        let proof = self.prove_inner(instances, witnesses, rng, Some(&mut profile), &mut E::G1::msm_unchecked)?;
        Ok((proof, profile))
    }

    /// Uses the ordinary proving path with a supplied group MSM implementation.
    pub fn prove_with_msm<R: RngCore>(
        &self,
        instances: &[E::ScalarField],
        witnesses: &[E::ScalarField],
        rng: &mut R,
        msm: &mut impl FnMut(&[E::G1Affine], &[E::ScalarField]) -> E::G1,
    ) -> Result<Proof<E>, SynthesisError> {
        self.prove_inner(instances, witnesses, rng, None, msm)
    }

    /// Development diagnostics may replace only the group MSM operation.
    pub fn prove_profiled_with_msm<R: RngCore>(
        &self,
        instances: &[E::ScalarField],
        witnesses: &[E::ScalarField],
        rng: &mut R,
        msm: &mut impl FnMut(&[E::G1Affine], &[E::ScalarField]) -> E::G1,
    ) -> Result<(Proof<E>, ProvingProfile), SynthesisError> {
        let mut profile = ProvingProfile::default();
        let proof = self.prove_inner(instances, witnesses, rng, Some(&mut profile), msm)?;
        Ok((proof, profile))
    }

    fn prove_inner<R: RngCore>(
        &self,
        instances: &[E::ScalarField],
        witnesses: &[E::ScalarField],
        rng: &mut R,
        profile: Option<&mut ProvingProfile>,
        msm: &mut impl FnMut(&[E::G1Affine], &[E::ScalarField]) -> E::G1,
    ) -> Result<Proof<E>, SynthesisError> {
        let index = &self.key.verifying_key.succinct_index;
        if instances.len() != index.instance_len
            || instances.first() != Some(&E::ScalarField::ONE)
            || witnesses.len() != self.key.sigma_w.len()
        {
            return Err(SynthesisError::Unsatisfiable);
        }
        ZkPari::<E>::prove_matrices(
            &self.key,
            &self.matrices,
            instances,
            witnesses,
            index.num_constraints,
            rng,
            profile,
            msm,
        )
    }
}
