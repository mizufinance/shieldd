use anyhow::{bail, ensure, Result};
use reddsa::{sapling::SpendAuth, VerificationKey};
use shieldd_sdk_asset::balance;
use shieldd_sdk_compliance::{ComplianceLeaf, IndexedLeaf, MerklePath};
use shieldd_sdk_crypto::{Fq, Fr};
use shieldd_sdk_keys::keys::NullifierKey;
use shieldd_sdk_proto::{core::component::shielded_pool::v1 as pb, DomainType};
use shieldd_sdk_sct::Nullifier;
use shieldd_sdk_tct as tct;

use crate::{
    discovery::{Parameters as RoutingParameters, RoutingTag},
    public_input_hash::note_reshape_statement_hash_from_public,
    Note,
};

use super::NoteReshapeFamilyId;

impl NoteReshapeFamilyId {
    pub fn proof_family(self) -> shieldd_sdk_circuits::proof::Family {
        match self {
            Self::OneByEight => shieldd_sdk_circuits::proof::Family::ReshapeOneToEight,
            Self::EightByOne => shieldd_sdk_circuits::proof::Family::ReshapeEightToOne,
            _ => unreachable!("validated reshape family"),
        }
    }
}

#[derive(Clone, Debug)]
pub struct NoteReshapeInputPublic {
    pub nullifier: Nullifier,
    pub history_required: bool,
}

#[derive(Clone, Debug)]
pub struct NoteReshapeOutputPublic {
    pub note_commitment: tct::StateCommitment,
    pub recovery_commitment: crate::RecoveryCommitment,
}

#[derive(Clone, Debug)]
pub struct NoteReshapeProofPublic {
    pub rk: VerificationKey<SpendAuth>,
    pub family_id: NoteReshapeFamilyId,
    pub anchor: tct::Root,
    pub balance_commitment: balance::Commitment,
    pub asset_anchor: tct::StateCommitment,
    pub compliance_anchor: tct::StateCommitment,
    pub routing_tag: RoutingTag,
    pub routing_parameter_set_id: Fq,
    pub recent_position_floor: u64,
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

    pub fn statement_hash(&self) -> Result<Fq> {
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
    pub(crate) is_dummy: bool,
    pub(crate) dummy_nullifier_seed: Fq,
}

#[derive(Clone, Debug)]
pub struct NoteReshapeOutputPrivate {
    pub created_note: Note,
}

#[derive(Clone, Debug)]
pub struct NoteReshapeProofPrivate {
    pub spend_auth_randomizer: Fr,
    pub family_id: NoteReshapeFamilyId,
    pub action_balance_blinding: Fr,
    pub ak: VerificationKey<SpendAuth>,
    pub nk: NullifierKey,
    pub asset_path: MerklePath,
    pub asset_position: u64,
    pub asset_indexed_leaf: IndexedLeaf,
    pub sender_compliance_path: MerklePath,
    pub sender_compliance_position: u64,
    pub sender_leaf: ComplianceLeaf,
    pub is_regulated: bool,
    pub routing_parameters: RoutingParameters,
    pub routing_nonce: Fq,
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
            == super::family::InputPaddingPolicy::SyntheticPrivate
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
    pub(crate) fn to_batch_item(
        &self,
        public: &NoteReshapeProofPublic,
    ) -> Result<shieldd_sdk_proof_params::pari::Verification> {
        let envelope = crate::proof::decode(&self.inner, public.family_id.proof_family())?;
        Ok(shieldd_sdk_proof_params::pari::Verification {
            family: public.family_id.proof_family(),
            statement: shieldd_sdk_circuits::encoding::field(&public.statement_hash()?),
            envelope,
        })
    }

    pub fn verify(
        &self,
        public: &NoteReshapeProofPublic,
        registry: &shieldd_sdk_proof_params::pari::Registry,
    ) -> Result<()> {
        registry
            .verify_item(&self.to_batch_item(public)?)
            .map(|_| ())
    }

    pub fn validate_encoding(&self) -> Result<()> {
        let decoded = shieldd_sdk_circuits::proof::Envelope::from_bytes(&self.inner)?;
        ensure!(
            matches!(
                decoded.family(),
                shieldd_sdk_circuits::proof::Family::ReshapeOneToEight
                    | shieldd_sdk_circuits::proof::Family::ReshapeEightToOne
            ),
            "wrong reshape proof family"
        );
        Ok(())
    }

    pub fn prove(
        public: NoteReshapeProofPublic,
        private: NoteReshapeProofPrivate,
        registry: &shieldd_sdk_proof_params::pari::Registry,
    ) -> Result<Self, crate::ProofError> {
        (|| -> Result<Self> {
            let witness = crate::pari::reshape(&public, &private)?;
            let proof = registry.prove(
                &witness,
                shieldd_sdk_proof_params::pari::proving_strategy()?,
            )?;
            registry.verify(
                public.family_id.proof_family(),
                &shieldd_sdk_circuits::encoding::field(&public.statement_hash()?),
                &proof,
            )?;
            Ok(Self {
                inner: proof.to_bytes(),
            })
        })()
        .map_err(|error| {
            crate::ProofError::ProofGenerationFailed(format!("Pari reshape: {error:#}"))
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
        let proof = Self { inner: value.inner };
        proof.validate_encoding()?;
        Ok(proof)
    }
}

#[cfg(test)]
mod tests {
    use crate::{note_reshape::NoteReshapeFamilyId, test_proof_helpers::proof_test_helpers};

    #[test]
    fn reshape_families_match_native_catalogue() {
        assert_eq!(
            NoteReshapeFamilyId::OneByEight.proof_family(),
            shieldd_sdk_circuits::proof::Family::ReshapeOneToEight
        );
        assert_eq!(
            NoteReshapeFamilyId::EightByOne.proof_family(),
            shieldd_sdk_circuits::proof::Family::ReshapeEightToOne
        );
    }

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
}
