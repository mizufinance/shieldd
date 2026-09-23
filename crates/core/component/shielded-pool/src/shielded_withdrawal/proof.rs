use anyhow::{ensure, Result};
use reddsa::{sapling::SpendAuth, VerificationKey};
use shieldd_sdk_asset::balance;
use shieldd_sdk_compliance::{
    ComplianceLeaf, IndexedLeaf, MerklePath, WithdrawalComplianceCiphertext,
};
use shieldd_sdk_crypto::{Fq, Fr};
use shieldd_sdk_keys::keys::NullifierKey;
use shieldd_sdk_proto::{core::component::shielded_pool::v1 as pb, DomainType};
use shieldd_sdk_sct::Nullifier;
use shieldd_sdk_tct as tct;

use crate::{
    discovery::{Parameters as RoutingParameters, RoutingTag},
    public_input_hash::shielded_withdrawal_statement_hash_from_public,
    Note, VolumeAccumulatorPrivate, VolumeAccumulatorPublic,
};

use super::ShieldedWithdrawalFamilyId;

#[derive(Clone, Debug, Default)]
pub struct ShieldedWithdrawalProof {
    pub inner: Vec<u8>,
}

#[derive(Clone, Debug)]
pub struct ShieldedWithdrawalInputPublic {
    pub nullifier: Nullifier,
    pub rk: VerificationKey<SpendAuth>,
    pub history_required: bool,
}

#[derive(Clone, Debug)]
pub struct ShieldedWithdrawalChangePublic {
    pub note_commitment: tct::StateCommitment,
    pub recovery_commitment: crate::RecoveryCommitment,
}

#[derive(Clone, Debug)]
pub struct ShieldedWithdrawalProofPublic {
    pub family_id: ShieldedWithdrawalFamilyId,
    pub anchor: tct::Root,
    pub balance_commitment: balance::Commitment,
    pub asset_anchor: tct::StateCommitment,
    pub compliance_anchor: tct::StateCommitment,
    pub target_timestamp: Fq,
    pub inputs: Vec<ShieldedWithdrawalInputPublic>,
    pub change_output: ShieldedWithdrawalChangePublic,
    pub outbound_asset_id: Fq,
    pub outbound_amount: Fq,
    pub withdrawal_effect_hash_limbs: [Fq; 4],
    pub routing_tag: RoutingTag,
    pub routing_parameter_set_id: Fq,
    pub withdrawal_compliance_ciphertext: WithdrawalComplianceCiphertext,
    pub recent_position_floor: u64,
    pub volume_accumulator: VolumeAccumulatorPublic,
}

pub(crate) fn withdrawal_effect_hash_limbs(bytes: &[u8]) -> [Fq; 4] {
    assert_eq!(
        bytes.len(),
        64,
        "withdrawal effect hash must contain exactly 64 bytes"
    );
    std::array::from_fn(|index| {
        let start = index * 16;
        Fq::from(shieldd_sdk_num::Amount::from(u128::from_le_bytes(
            bytes[start..start + 16].try_into().expect("128-bit limb"),
        )))
    })
}

impl ShieldedWithdrawalProofPublic {
    pub fn validate_shape(&self) -> Result<()> {
        ensure!(
            self.family_id == ShieldedWithdrawalFamilyId::Canonical,
            "shielded withdrawal family must be canonical"
        );
        ensure!(
            self.inputs.len() == self.family_id.input_count(),
            "{} expects {} inputs, got {}",
            self.family_id.label(),
            self.family_id.input_count(),
            self.inputs.len()
        );
        Ok(())
    }

    pub fn statement_hash(&self) -> Result<Fq> {
        shielded_withdrawal_statement_hash_from_public(self)
    }
}

#[derive(Clone, Debug)]
pub struct ShieldedWithdrawalRequiredInputPrivate {
    pub state_commitment_proof: tct::Proof,
    pub spent_note: Note,
    pub spend_auth_randomizer: Fr,
}

#[derive(Clone, Debug)]
pub struct ShieldedWithdrawalOptionalInputPrivate {
    pub spend: ShieldedWithdrawalRequiredInputPrivate,
    pub is_dummy: bool,
    pub dummy_nullifier_seed: Fq,
}

#[derive(Clone, Debug)]
pub struct ShieldedWithdrawalChangePrivate {
    pub created_note: Note,
}

#[derive(Clone, Debug)]
pub struct ShieldedWithdrawalProofPrivate {
    pub family_id: ShieldedWithdrawalFamilyId,
    pub action_balance_blinding: Fr,
    pub ak: VerificationKey<SpendAuth>,
    pub nk: NullifierKey,
    pub asset_path: MerklePath,
    pub asset_position: u64,
    pub asset_indexed_leaf: IndexedLeaf,
    pub is_regulated: bool,
    pub routing_parameters: RoutingParameters,
    pub routing_nonce: Fq,
    pub sender_compliance_path: MerklePath,
    pub sender_compliance_position: u64,
    pub sender_leaf: ComplianceLeaf,
    pub withdrawal_seed: Fq,
    pub withdrawal_randomizer: Fr,
    pub required_input: ShieldedWithdrawalRequiredInputPrivate,
    pub optional_input: ShieldedWithdrawalOptionalInputPrivate,
    pub change_output: ShieldedWithdrawalChangePrivate,
    pub volume_accumulator: VolumeAccumulatorPrivate,
    pub volume_accumulator_seed: Fq,
}

impl ShieldedWithdrawalProofPrivate {
    pub fn validate_shape(&self) -> Result<()> {
        ensure!(
            self.family_id == ShieldedWithdrawalFamilyId::Canonical,
            "shielded withdrawal family must be canonical"
        );
        Ok(())
    }
}

impl ShieldedWithdrawalProof {
    pub(crate) fn to_batch_item(
        &self,
        public: &ShieldedWithdrawalProofPublic,
    ) -> Result<shieldd_sdk_proof_params::pari::Verification> {
        let envelope =
            crate::proof::decode(&self.inner, shieldd_sdk_circuits::proof::Family::Withdrawal)?;
        Ok(shieldd_sdk_proof_params::pari::Verification {
            family: shieldd_sdk_circuits::proof::Family::Withdrawal,
            statement: shieldd_sdk_circuits::encoding::field(&public.statement_hash()?),
            envelope,
        })
    }

    pub fn verify(
        &self,
        public: &ShieldedWithdrawalProofPublic,
        registry: &shieldd_sdk_proof_params::pari::Registry,
    ) -> Result<()> {
        registry
            .verify_item(&self.to_batch_item(public)?)
            .map(|_| ())
    }

    pub fn validate_encoding(&self) -> Result<()> {
        let decoded = shieldd_sdk_circuits::proof::Envelope::from_bytes(&self.inner)?;
        ensure!(
            decoded.family() == shieldd_sdk_circuits::proof::Family::Withdrawal,
            "wrong proof family"
        );
        Ok(())
    }

    pub fn prove(
        public: ShieldedWithdrawalProofPublic,
        private: ShieldedWithdrawalProofPrivate,
        registry: &shieldd_sdk_proof_params::pari::Registry,
    ) -> Result<Self, crate::ProofError> {
        (|| -> Result<Self> {
            let witness = crate::pari::withdrawal(&public, &private)?;
            let proof = registry.prove(
                &witness,
                shieldd_sdk_proof_params::pari::proving_strategy()?,
            )?;
            registry.verify(
                shieldd_sdk_circuits::proof::Family::Withdrawal,
                &shieldd_sdk_circuits::encoding::field(&public.statement_hash()?),
                &proof,
            )?;
            Ok(Self {
                inner: proof.to_bytes(),
            })
        })()
        .map_err(|error| {
            crate::ProofError::ProofGenerationFailed(format!("Pari withdrawal: {error:#}"))
        })
    }
}

impl DomainType for ShieldedWithdrawalProof {
    type Proto = pb::ZkShieldedWithdrawalProof;
}

impl From<ShieldedWithdrawalProof> for pb::ZkShieldedWithdrawalProof {
    fn from(value: ShieldedWithdrawalProof) -> Self {
        Self { inner: value.inner }
    }
}

impl TryFrom<pb::ZkShieldedWithdrawalProof> for ShieldedWithdrawalProof {
    type Error = anyhow::Error;

    fn try_from(value: pb::ZkShieldedWithdrawalProof) -> Result<Self, Self::Error> {
        let proof = Self { inner: value.inner };
        proof.validate_encoding()?;
        Ok(proof)
    }
}

#[cfg(test)]
mod tests {
    use super::{withdrawal_effect_hash_limbs, ShieldedWithdrawalProof};
    use crate::test_proof_helpers::proof_test_helpers::registry;
    use crate::{test_proof_helpers::proof_test_helpers, ShieldedWithdrawalFamilyId};
    use shieldd_sdk_crypto::Fq;

    #[test]
    fn shielded_withdrawal_rejects_wrong_public_shape() {
        let (mut public, _private) = proof_test_helpers::build_shielded_withdrawal_roundtrip_inputs(
            ShieldedWithdrawalFamilyId::Canonical,
            false,
        );
        public.inputs.pop();
        let error = public
            .validate_shape()
            .expect_err("shape validation should reject 1x2 public inputs");
        assert!(
            error.to_string().contains("expects 2 inputs, got 1"),
            "unexpected shape error: {error}"
        );
    }

    #[test]
    fn withdrawal_effect_hash_maps_to_four_little_endian_u128_limbs() {
        let expected = [
            0x0123_4567_89ab_cdef_0011_2233_4455_6677u128,
            0x1020_3040_5060_7080_90a0_b0c0_d0e0_f001u128,
            0xdead_beef_cafe_babe_7654_3210_fedc_ba98u128,
            0xffff_eeee_dddd_cccc_bbbb_aaaa_9999_8888u128,
        ];
        let mut bytes = [0u8; 64];
        for (chunk, value) in bytes.chunks_exact_mut(16).zip(expected) {
            chunk.copy_from_slice(&value.to_le_bytes());
        }

        assert_eq!(
            withdrawal_effect_hash_limbs(&bytes),
            expected.map(|value| Fq::from(shieldd_sdk_num::Amount::from(value)))
        );
    }

    #[cfg(all(feature = "prover", any(unix, windows)))]
    #[test]
    #[ignore = "expensive: native Pari proof generation with local keys"]
    fn withdrawal_proof_rejects_substituted_public_effects() {
        let _ = registry();

        let (public, private) = proof_test_helpers::build_shielded_withdrawal_roundtrip_inputs(
            ShieldedWithdrawalFamilyId::Canonical,
            true,
        );
        let proof = ShieldedWithdrawalProof::prove(public.clone(), private, registry())
            .unwrap_or_else(|error| {
                panic!("can generate {} proof: {error}", public.family_id.label());
            });
        let item = proof
            .to_batch_item(&public)
            .expect("can build shielded withdrawal batch item");
        assert_eq!(item.family, shieldd_sdk_circuits::proof::Family::Withdrawal);
        proof
            .verify(&public, registry())
            .expect("proof should verify");

        let reject = |label: &str, changed: crate::ShieldedWithdrawalProofPublic| {
            assert!(
                proof.verify(&changed, registry()).is_err(),
                "proof must reject mutated {label}"
            );
        };
        let mut changed = public.clone();
        changed.volume_accumulator.nullifier.0 += Fq::from(1u64);
        reject("volume nullifier", changed);
        let mut changed = public.clone();
        changed.volume_accumulator.commitment.0 += Fq::from(1u64);
        reject("volume commitment", changed);
        let mut changed = public.clone();
        changed.volume_accumulator.day_start += 86_400;
        reject("volume day", changed);
        let mut changed = public.clone();
        changed.target_timestamp += Fq::from(1u64);
        reject("target timestamp", changed);
        let mut changed = public.clone();
        changed.outbound_asset_id += Fq::from(1u64);
        reject("outbound asset", changed);
        let mut changed = public.clone();
        changed.outbound_amount += Fq::from(1u64);
        reject("outbound amount", changed);
        let mut changed = public.clone();
        changed.withdrawal_compliance_ciphertext.epk += *shieldd_sdk_crypto::generators::SPEND_AUTH;
        reject("sender epk", changed);
        let mut changed = public.clone();
        changed.withdrawal_compliance_ciphertext.c2 += Fq::from(1u64);
        reject("sender c2", changed);
        let mut changed = public.clone();
        changed.withdrawal_compliance_ciphertext.key_confirmation += Fq::from(1u64);
        reject("sender key confirmation", changed);
        for index in 0..3 {
            let mut changed = public.clone();
            let word = &mut changed
                .withdrawal_compliance_ciphertext
                .encrypted_sender_address[index * 32..(index + 1) * 32];
            let value = shieldd_sdk_crypto::encoding::field((&*word).try_into().unwrap()).unwrap()
                + Fq::from(1u64);
            word.copy_from_slice(&value.to_bytes());
            reject("sender ciphertext", changed);
        }
    }
}
