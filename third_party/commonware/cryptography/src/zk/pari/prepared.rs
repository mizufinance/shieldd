//! Immutable, checked prover preparation for one exact key and relation.
use super::{
    CommitmentKey, Error, ProvingKey, Relation, VerifyingKey, prover::PreparedPolynomials,
};
use crate::bls12381::primitives::group::{G1, PreparedG1Msm};

/// Owns checked key metadata and affine proving bases without retaining projective copies.
/// Public polynomial storage scales as `domain_size * (public_inputs + 1)`.
pub struct PreparedProver {
    pub(super) verifying_key: VerifyingKey,
    pub(super) commitment_keys: Vec<CommitmentKey>,
    pub(super) masks: [G1; 2],
    pub(super) witness_len: usize,
    pub(super) polynomials: PreparedPolynomials,
    pub(super) commitment_msm: PreparedG1Msm,
    pub(super) opening_msm: PreparedG1Msm,
}

impl PreparedProver {
    /// Consume a checked key whose relation shape matches the locally compiled relation.
    pub fn new(key: ProvingKey, relation: &Relation) -> Result<Self, Error> {
        if !key.verifying_key.matches_relation(relation)
            || key
                .commitment_keys
                .iter()
                .any(|k| k.relation_digest != *relation.digest())
            || key.verifying_key.commitment_key_digest
                != super::types::commitment_keys_digest(&key.commitment_keys)
        {
            return Err(Error::RelationMismatch);
        }
        let polynomials = PreparedPolynomials::new(relation)?;
        let witness_len = key.sigma_witness.len();
        let commitment_msm = PreparedG1Msm::new(&[&key.sigma_witness, &key.sigma_quotient]);
        let opening_msm = PreparedG1Msm::new(&[&key.sigma_a, &key.sigma_r]);
        Ok(Self {
            verifying_key: key.verifying_key,
            commitment_keys: key.commitment_keys,
            masks: [key.sigma_mask_constant, key.sigma_mask_linear],
            witness_len,
            polynomials,
            commitment_msm,
            opening_msm,
        })
    }

    /// The exact verification key bound to this preparation.
    pub const fn verifying_key(&self) -> &VerifyingKey {
        &self.verifying_key
    }

    /// Per-block keys for claims proved by this preparation.
    pub fn commitment_keys(&self) -> &[CommitmentKey] {
        &self.commitment_keys
    }
}
