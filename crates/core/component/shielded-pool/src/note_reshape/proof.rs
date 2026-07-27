use anyhow::{anyhow, bail, ensure, Result};
use ark_groth16::{r1cs_to_qap::LibsnarkReduction, Groth16, PreparedVerifyingKey, Proof};
use ark_serialize::CanonicalDeserialize;
use ark_snark::SNARK;
use decaf377::{Bls12_377, Fq, Fr};
use decaf377_rdsa::{SpendAuth, VerificationKey};
use shieldd_sdk_asset::balance;
use shieldd_sdk_keys::keys::NullifierKey;
use shieldd_sdk_proof_params::GROTH16_PROOF_LENGTH_BYTES;
use shieldd_sdk_proto::{core::component::shielded_pool::v1 as pb, DomainType};
use shieldd_sdk_sct::Nullifier;
use shieldd_sdk_tct as tct;

use crate::{
    public_input_hash::{note_reshape_statement_hash_from_public, StatementHashError},
    Note,
};

use super::NoteReshapeFamilyId;

impl NoteReshapeFamilyId {
    pub fn proof_verification_key(self) -> &'static PreparedVerifyingKey<Bls12_377> {
        shieldd_sdk_proof_params::note_reshape_proof_verification_key(self.get())
    }

    pub fn proving_key_bytes(self) -> &'static [u8] {
        shieldd_sdk_proof_params::note_reshape_proving_key_bytes(self.get())
    }

    pub fn circuit_metadata_bytes(self) -> &'static [u8] {
        shieldd_sdk_proof_params::note_reshape_circuit_metadata(self.get())
    }
}

#[derive(Clone, Debug)]
pub struct NoteReshapeInputPublic {
    pub nullifier: Nullifier,
    pub rk: VerificationKey<SpendAuth>,
}

#[derive(Clone, Debug)]
pub struct NoteReshapeOutputPublic {
    pub note_commitment: tct::StateCommitment,
}

#[derive(Clone, Debug)]
pub struct NoteReshapeProofPublic {
    pub family_id: NoteReshapeFamilyId,
    pub anchor: tct::Root,
    pub balance_commitment: balance::Commitment,
    pub inputs: Vec<NoteReshapeInputPublic>,
    pub outputs: Vec<NoteReshapeOutputPublic>,
}

impl NoteReshapeProofPublic {
    pub fn validate_shape(&self) -> Result<()> {
        let spec = self.family_id.spec();
        ensure!(
            self.inputs.len() == spec.n_in,
            "{} expects {} inputs, got {}",
            spec.label,
            spec.n_in,
            self.inputs.len()
        );
        ensure!(
            self.outputs.len() == spec.n_out,
            "{} expects {} outputs, got {}",
            spec.label,
            spec.n_out,
            self.outputs.len()
        );
        Ok(())
    }

    pub fn statement_hash(&self) -> Result<Fq, StatementHashError> {
        note_reshape_statement_hash_from_public(self)
    }
}

fn validate_dummy_suffix(label: &str, flags: &[bool]) -> Result<()> {
    let mut saw_dummy = false;
    for (index, is_dummy) in flags.iter().copied().enumerate() {
        if is_dummy {
            saw_dummy = true;
        } else if saw_dummy {
            bail!("note reshape {label} dummy flag at slot {index} is not a suffix")
        }
    }
    Ok(())
}

#[derive(Clone, Debug)]
pub struct NoteReshapeInputPrivate {
    pub state_commitment_proof: tct::Proof,
    pub spent_note: Note,
    pub spend_auth_randomizer: Fr,
    pub(crate) is_dummy: bool,
    pub(crate) dummy_nullifier_seed: Fq,
}

#[derive(Clone, Debug)]
pub struct NoteReshapeOutputPrivate {
    pub created_note: Note,
}

#[derive(Clone, Debug)]
pub struct NoteReshapeProofPrivate {
    pub family_id: NoteReshapeFamilyId,
    pub action_balance_blinding: Fr,
    pub ak: VerificationKey<SpendAuth>,
    pub nk: NullifierKey,
    pub inputs: Vec<NoteReshapeInputPrivate>,
    pub outputs: Vec<NoteReshapeOutputPrivate>,
}

impl NoteReshapeProofPrivate {
    pub fn validate_shape(&self) -> Result<()> {
        let spec = self.family_id.spec();
        ensure!(
            self.inputs.len() == spec.n_in,
            "{} expects {} private inputs, got {}",
            spec.label,
            spec.n_in,
            self.inputs.len()
        );
        ensure!(
            self.outputs.len() == spec.n_out,
            "{} expects {} private outputs, got {}",
            spec.label,
            spec.n_out,
            self.outputs.len()
        );
        if self.family_id.spec().input_padding
            == super::generated::InputPaddingPolicy::SyntheticPrivate
        {
            validate_dummy_suffix(
                "private input",
                &self
                    .inputs
                    .iter()
                    .map(|input| input.is_dummy)
                    .collect::<Vec<_>>(),
            )?;
            ensure!(
                !self.inputs[0].is_dummy,
                "note reshape input slot 0 must be real"
            );
        } else {
            ensure!(
                self.inputs.iter().all(|input| !input.is_dummy),
                "fixed note reshape inputs cannot be dummy"
            );
        }
        self.family_id.validate_real_counts(
            self.inputs.iter().filter(|input| !input.is_dummy).count(),
            self.outputs.len(),
        )?;
        Ok(())
    }
}

#[derive(Clone, Debug, Default, Eq, PartialEq, serde::Deserialize, serde::Serialize)]
#[serde(transparent)]
pub struct NoteReshapeProof {
    pub inner: Vec<u8>,
}

impl NoteReshapeProof {
    pub fn new(inner: Vec<u8>) -> Self {
        Self { inner }
    }

    pub fn as_bytes(&self) -> &[u8] {
        &self.inner
    }

    fn decoded_proof(&self) -> anyhow::Result<Proof<Bls12_377>> {
        Proof::deserialize_compressed(&self.inner[..]).map_err(|e| anyhow!(e))
    }

    pub fn to_batch_item(
        &self,
        public: &NoteReshapeProofPublic,
    ) -> anyhow::Result<shieldd_sdk_proof_params::batch::BatchItem> {
        let proof = self.decoded_proof()?;
        let statement_hash = public.statement_hash()?;

        Ok(shieldd_sdk_proof_params::batch::BatchItem {
            proof,
            public_inputs: vec![statement_hash],
        })
    }

    pub fn for_family(&self, _family_id: NoteReshapeFamilyId) -> anyhow::Result<()> {
        let _: [u8; GROTH16_PROOF_LENGTH_BYTES] = self
            .inner
            .clone()
            .try_into()
            .map_err(|_| anyhow!("malformed note_reshape proof length"))?;
        Ok(())
    }

    pub fn verify(&self, public: &NoteReshapeProofPublic) -> anyhow::Result<()> {
        self.verify_with_prepared_vk(public, public.family_id.proof_verification_key())
    }

    pub fn verify_with_prepared_vk(
        &self,
        public: &NoteReshapeProofPublic,
        vk: &PreparedVerifyingKey<Bls12_377>,
    ) -> anyhow::Result<()> {
        let item = self.to_batch_item(public)?;
        let proof_result = Groth16::<Bls12_377, LibsnarkReduction>::verify_with_processed_vk(
            vk,
            item.public_inputs.as_slice(),
            &item.proof,
        )
        .map_err(|err| anyhow!(err))?;

        proof_result
            .then_some(())
            .ok_or_else(|| anyhow!("{} proof did not verify", public.family_id.label()))
    }

    #[cfg(any(unix, windows))]
    pub fn prove(
        public: NoteReshapeProofPublic,
        private: NoteReshapeProofPrivate,
    ) -> Result<Self, crate::ProofError> {
        let family_id = public.family_id;
        public
            .validate_shape()
            .map_err(|e| crate::ProofError::InvalidPublicInput(e.to_string()))?;
        private
            .validate_shape()
            .map_err(|e| crate::ProofError::InvalidPrivateInput(e.to_string()))?;
        if private.family_id != family_id {
            return Err(crate::ProofError::InvalidPublicInput(format!(
                "note_reshape family mismatch: public={} private={}",
                family_id.label(),
                private.family_id.label(),
            )));
        }

        super::prover_runtime::prove_with_runtime(public, private).map_err(|e| {
            crate::ProofError::ProofGenerationFailed(format!(
                "gnark {} prove: {e}",
                family_id.label()
            ))
        })
    }
}

impl DomainType for NoteReshapeProof {
    type Proto = pb::ZkNoteReshapeProof;
}

impl From<NoteReshapeProof> for pb::ZkNoteReshapeProof {
    fn from(value: NoteReshapeProof) -> Self {
        Self { inner: value.inner }
    }
}

impl TryFrom<pb::ZkNoteReshapeProof> for NoteReshapeProof {
    type Error = anyhow::Error;

    fn try_from(value: pb::ZkNoteReshapeProof) -> Result<Self, Self::Error> {
        Ok(Self { inner: value.inner })
    }
}

#[cfg(test)]
mod tests {
    use super::NoteReshapeProof;
    use crate::{note_reshape::NoteReshapeFamilyId, test_proof_helpers::proof_test_helpers};

    #[test]
    fn note_reshape_proof_public_shape_rejects_wrong_input_and_output_shapes() {
        for family_id in NoteReshapeFamilyId::ALL {
            let (mut public, _) =
                proof_test_helpers::build_note_reshape_roundtrip_inputs(family_id);
            public.inputs.pop();
            assert!(
                public.validate_shape().is_err(),
                "{} must reject an input shape mutation",
                family_id.label()
            );

            let (mut public, _) =
                proof_test_helpers::build_note_reshape_roundtrip_inputs(family_id);
            public.outputs.pop();
            assert!(
                public.validate_shape().is_err(),
                "{} must reject an output shape mutation",
                family_id.label()
            );
        }
    }

    #[cfg(any(unix, windows))]
    fn should_skip_note_reshape_proof_roundtrip() -> bool {
        if cfg!(debug_assertions) {
            eprintln!(
                "skipping note_reshape GNARK proof roundtrip in debug builds; use `cargo test --release -p shieldd-sdk-shielded-pool --features bundled-proving-keys note_reshape_fresh_fixture_proof_roundtrip --lib` for real proving"
            );
            return true;
        }
        if crate::gnark::GnarkNoteReshapeClient::env_override_configured() {
            return false;
        }
        let has_library = crate::gnark::GnarkNoteReshapeClient::bundled_lib_path().is_some()
            || crate::gnark::GnarkNoteReshapeClient::auto_lib_path().is_some();
        let has_proving_keys = NoteReshapeFamilyId::ALL
            .into_iter()
            .all(|family_id| !family_id.proving_key_bytes().is_empty());
        if !has_library || !has_proving_keys {
            eprintln!(
                "skipping note_reshape GNARK proof roundtrip: no bundled or external prover transport is available"
            );
            return true;
        }
        false
    }

    #[cfg(any(unix, windows))]
    #[test]
    fn note_reshape_fresh_fixture_proof_roundtrip_rejects_cross_family_vks() {
        if should_skip_note_reshape_proof_roundtrip() {
            return;
        }

        for family_id in NoteReshapeFamilyId::ALL {
            let (public, private) =
                proof_test_helpers::build_note_reshape_roundtrip_inputs(family_id);
            let proof = NoteReshapeProof::prove(public.clone(), private)
                .unwrap_or_else(|error| panic!("prove {} fixture: {error}", family_id.label()));
            proof
                .verify(&public)
                .unwrap_or_else(|error| panic!("verify {} fixture: {error}", family_id.label()));

            for other_family in NoteReshapeFamilyId::ALL {
                if other_family == family_id {
                    continue;
                }
                assert!(
                    proof
                        .verify_with_prepared_vk(&public, other_family.proof_verification_key())
                        .is_err(),
                    "{} proof must not verify with {} VK",
                    family_id.label(),
                    other_family.label()
                );
            }
        }
    }
}
