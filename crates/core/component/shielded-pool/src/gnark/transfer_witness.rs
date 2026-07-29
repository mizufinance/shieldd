use anyhow::{anyhow, Context, Result};
use decaf377::{Encoding, Fq};
use shieldd_sdk_compliance::TransferTierMetadataStatement;

use crate::{
    gnark::typed::{
        compliance_leaf_from_typed, indexed_leaf_from_typed, merkle_path_from_typed,
        point_affine_bytes, ComplianceLeafBinary, IndexedLeafBinary, MerklePathBinary,
        PointAffineBytes,
    },
    public_input_hash::transfer_statement_hash_from_public,
    transfer::{
        TransferComplianceCiphertextPublic, TransferProofPrivate, TransferProofPublic,
        TransferSpendPrivate, TransferSpendPublic, TRANSFER_PROOF_LABEL,
    },
};

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct TransferRequiredSpendWitnessV11 {
    pub nullifier: [u8; 32],
    pub spent_note_blinding: [u8; 32],
    pub spent_note_amount: [u8; 32],
    pub spent_note_asset_id: [u8; 32],
    pub spent_clue_key: [u8; 32],
    pub state_commitment_position: u64,
    pub state_commitment_auth_path: Vec<[[u8; 32]; 3]>,
    pub spend_auth_randomizer: [u8; 32],
    pub rk_affine: PointAffineBytes,
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct TransferOptionalSpendWitnessV11 {
    pub nullifier: [u8; 32],
    pub spent_note_blinding: [u8; 32],
    pub spent_note_amount: [u8; 32],
    pub spent_clue_key: [u8; 32],
    pub state_commitment_position: u64,
    pub state_commitment_auth_path: Vec<[[u8; 32]; 3]>,
    pub spend_auth_randomizer: [u8; 32],
    pub rk_affine: PointAffineBytes,
    pub is_dummy: bool,
    pub dummy_nullifier_seed: [u8; 32],
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct TransferReceiverOutputWitnessV11 {
    pub note_commitment: [u8; 32],
    pub created_note_blinding: [u8; 32],
    pub created_note_amount: [u8; 32],
    pub created_clue_key: [u8; 32],
    pub recipient_compliance_path: MerklePathBinary,
    pub recipient_compliance_position: u64,
    pub recipient_slot_id: [u8; 32],
    pub recipient_slot_derivation: [u8; 32],
    pub recipient_d: [u8; 32],
    pub recipient_diversified_generator_affine: PointAffineBytes,
    pub recipient_transmission_key_affine: PointAffineBytes,
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct TransferChangeOutputWitnessV11 {
    pub note_commitment: [u8; 32],
    pub created_note_blinding: [u8; 32],
    pub created_note_amount: [u8; 32],
    pub created_clue_key: [u8; 32],
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct TransferComplianceCiphertextWitnessV11 {
    pub c2: [u8; 32],
    pub ciphertext: Vec<[u8; 32]>,
    pub subject_derivation: [u8; 32],
    pub ring_id_hash: [u8; 32],
    pub policy_id_hash: [u8; 32],
    pub resource_hash: [u8; 32],
    pub permission_hash: [u8; 32],
    pub tier: u64,
    pub statement_target_timestamp: [u8; 32],
    pub salt: [u8; 32],
    pub challenge: [u8; 32],
    pub response: [u8; 32],
    pub epk_affine: PointAffineBytes,
    pub derived_pk_affine: PointAffineBytes,
    pub enc_cmt_affine: PointAffineBytes,
    pub shared_point_affine: PointAffineBytes,
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct TransferTierRandomizersWitnessV11 {
    pub core: [u8; 32],
    pub ext: [u8; 32],
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct TransferWitnessV11 {
    pub total_length: u32,
    pub anchor: [u8; 32],
    pub asset_anchor: [u8; 32],
    pub compliance_anchor: [u8; 32],
    pub target_timestamp: [u8; 32],
    pub claimed_statement_hash: [u8; 32],
    pub action_balance_blinding: [u8; 32],
    pub nk: [u8; 32],
    pub asset_path: MerklePathBinary,
    pub asset_position: u64,
    pub asset_indexed_leaf: IndexedLeafBinary,
    pub is_regulated: bool,
    pub sender_compliance_path: MerklePathBinary,
    pub sender_compliance_position: u64,
    pub sender_slot_id: [u8; 32],
    pub sender_slot_derivation: [u8; 32],
    pub sender_d: [u8; 32],
    pub transfer_nonce_root: [u8; 32],
    pub detection_ciphertext: Vec<[u8; 32]>,
    pub sender_core: TransferComplianceCiphertextWitnessV11,
    pub sender_ext: TransferComplianceCiphertextWitnessV11,
    pub output_core: TransferComplianceCiphertextWitnessV11,
    pub output_ext: TransferComplianceCiphertextWitnessV11,
    pub sender_randomizers: TransferTierRandomizersWitnessV11,
    pub output_randomizers: TransferTierRandomizersWitnessV11,
    pub required_spend: TransferRequiredSpendWitnessV11,
    pub optional_spend: TransferOptionalSpendWitnessV11,
    pub receiver_output: TransferReceiverOutputWitnessV11,
    pub change_output: TransferChangeOutputWitnessV11,
    pub balance_commitment_affine: PointAffineBytes,
    pub ak_affine: PointAffineBytes,
    pub asset_indexed_leaf_dk_pub_affine: PointAffineBytes,
    pub asset_indexed_leaf_ring_pk_affine: PointAffineBytes,
    pub sender_diversified_generator_affine: PointAffineBytes,
    pub sender_transmission_key_affine: PointAffineBytes,
}

fn compliance_leaf_parts(
    leaf: &ComplianceLeafBinary,
) -> ([u8; 80], [u8; 32], [u8; 32], [u8; 32], [u8; 32]) {
    (
        leaf.address,
        leaf.asset_id,
        leaf.slot_id,
        leaf.slot_derivation,
        leaf.d,
    )
}

fn verification_key_point(
    vk: decaf377_rdsa::VerificationKey<decaf377_rdsa::SpendAuth>,
    label: &str,
) -> Result<decaf377::Element> {
    Encoding(vk.to_bytes())
        .vartime_decompress()
        .map_err(|e| anyhow!("decompress {label}: {e:?}"))
}

struct TransferSpendWitnessParts {
    nullifier: [u8; 32],
    spent_note_blinding: [u8; 32],
    spent_note_amount: [u8; 32],
    spent_note_asset_id: [u8; 32],
    spent_clue_key: [u8; 32],
    state_commitment_position: u64,
    state_commitment_auth_path: Vec<[[u8; 32]; 3]>,
    spend_auth_randomizer: [u8; 32],
    rk_affine: PointAffineBytes,
}

fn spend_witness_parts(
    public: &TransferSpendPublic,
    private: &TransferSpendPrivate,
    index: usize,
) -> Result<TransferSpendWitnessParts> {
    let state_commitment_auth_path = private
        .state_commitment_proof
        .auth_path()
        .iter()
        .map(|siblings| siblings.map(|sibling| Fq::from(sibling).to_bytes()))
        .collect::<Vec<_>>();
    Ok(TransferSpendWitnessParts {
        nullifier: public.nullifier.0.to_bytes(),
        spent_note_blinding: private.spent_note.note_blinding().to_bytes(),
        spent_note_amount: Fq::from(private.spent_note.value().amount).to_bytes(),
        spent_note_asset_id: private.spent_note.asset_id().0.to_bytes(),
        spent_clue_key: Fq::from_le_bytes_mod_order(&private.spent_note.clue_key().0).to_bytes(),
        state_commitment_position: u64::from(private.state_commitment_proof.position()),
        state_commitment_auth_path,
        spend_auth_randomizer: private.spend_auth_randomizer.to_bytes(),
        rk_affine: point_affine_bytes(verification_key_point(public.rk, &format!("rk_{index}"))?)?,
    })
}

fn compliance_tier_witness(
    tier: &TransferComplianceCiphertextPublic,
) -> Result<TransferComplianceCiphertextWitnessV11> {
    let statement: &TransferTierMetadataStatement = &tier.proof.statement;
    Ok(TransferComplianceCiphertextWitnessV11 {
        c2: tier.c2.to_bytes(),
        ciphertext: tier
            .ciphertext
            .iter()
            .map(|value| value.to_bytes())
            .collect(),
        subject_derivation: statement.subject_derivation_bytes,
        ring_id_hash: statement.ring_id_hash_bytes,
        policy_id_hash: statement.policy_id_hash_bytes,
        resource_hash: statement.resource_hash_bytes,
        permission_hash: statement.permission_hash_bytes,
        tier: statement.tier.as_u64(),
        statement_target_timestamp: Fq::from(statement.target_timestamp).to_bytes(),
        salt: statement.salt_bytes,
        challenge: tier.proof.challenge.to_bytes(),
        response: tier.proof.response.to_bytes(),
        epk_affine: point_affine_bytes(tier.epk)?,
        derived_pk_affine: point_affine_bytes(tier.proof.derived_pk)?,
        enc_cmt_affine: point_affine_bytes(tier.proof.enc_cmt)?,
        shared_point_affine: point_affine_bytes(tier.proof.shared_point)?,
    })
}

impl TransferWitnessV11 {
    pub fn from_public_private(
        public: &TransferProofPublic,
        private: &TransferProofPrivate,
    ) -> Result<Self> {
        public.validate_shape()?;

        let claimed_statement_hash = transfer_statement_hash_from_public(public)
            .with_context(|| format!("compute {TRANSFER_PROOF_LABEL} statement hash"))?;

        let sender_leaf = compliance_leaf_from_typed(&private.sender_leaf)?;
        let (_, _, sender_slot_id, sender_slot_derivation, sender_d) =
            compliance_leaf_parts(&sender_leaf);

        let required = spend_witness_parts(&public.inputs[0], &private.required_input, 0)?;
        let required_spend = TransferRequiredSpendWitnessV11 {
            nullifier: required.nullifier,
            spent_note_blinding: required.spent_note_blinding,
            spent_note_amount: required.spent_note_amount,
            spent_note_asset_id: required.spent_note_asset_id,
            spent_clue_key: required.spent_clue_key,
            state_commitment_position: required.state_commitment_position,
            state_commitment_auth_path: required.state_commitment_auth_path,
            spend_auth_randomizer: required.spend_auth_randomizer,
            rk_affine: required.rk_affine,
        };
        let optional = spend_witness_parts(&public.inputs[1], &private.optional_input.spend, 1)?;
        let optional_spend = TransferOptionalSpendWitnessV11 {
            nullifier: optional.nullifier,
            spent_note_blinding: optional.spent_note_blinding,
            spent_note_amount: optional.spent_note_amount,
            spent_clue_key: optional.spent_clue_key,
            state_commitment_position: optional.state_commitment_position,
            state_commitment_auth_path: optional.state_commitment_auth_path,
            spend_auth_randomizer: optional.spend_auth_randomizer,
            rk_affine: optional.rk_affine,
            is_dummy: private.optional_input.is_dummy,
            dummy_nullifier_seed: private.optional_input.dummy_nullifier_seed.to_bytes(),
        };

        let receiver_private = &private.receiver_output;
        let receiver_leaf = compliance_leaf_from_typed(&receiver_private.recipient_leaf)?;
        let (_, _, receiver_slot_id, receiver_slot_derivation, receiver_d) =
            compliance_leaf_parts(&receiver_leaf);
        let receiver_output = TransferReceiverOutputWitnessV11 {
            note_commitment: public.outputs[0].note_commitment.0.to_bytes(),
            created_note_blinding: receiver_private.created_note.note_blinding().to_bytes(),
            created_note_amount: Fq::from(receiver_private.created_note.value().amount).to_bytes(),
            created_clue_key: Fq::from_le_bytes_mod_order(
                &receiver_private.created_note.clue_key().0,
            )
            .to_bytes(),
            recipient_compliance_path: merkle_path_from_typed(
                &receiver_private.recipient_compliance_path,
            )?,
            recipient_compliance_position: receiver_private.recipient_compliance_position,
            recipient_slot_id: receiver_slot_id,
            recipient_slot_derivation: receiver_slot_derivation,
            recipient_d: receiver_d,
            recipient_diversified_generator_affine: point_affine_bytes(
                *receiver_private
                    .recipient_leaf
                    .address
                    .diversified_generator(),
            )?,
            recipient_transmission_key_affine: point_affine_bytes(
                Encoding(receiver_private.recipient_leaf.address.transmission_key().0)
                    .vartime_decompress()
                    .map_err(|e| anyhow!("decompress receiver transmission key: {e:?}"))?,
            )?,
        };
        let change_output = TransferChangeOutputWitnessV11 {
            note_commitment: public.outputs[1].note_commitment.0.to_bytes(),
            created_note_blinding: private
                .change_output
                .created_note
                .note_blinding()
                .to_bytes(),
            created_note_amount: Fq::from(private.change_output.created_note.value().amount)
                .to_bytes(),
            created_clue_key: Fq::from_le_bytes_mod_order(
                &private.change_output.created_note.clue_key().0,
            )
            .to_bytes(),
        };

        let mut witness = Self {
            total_length: 0,
            anchor: Fq::from(public.anchor).to_bytes(),
            asset_anchor: public.asset_anchor.0.to_bytes(),
            compliance_anchor: public.compliance_anchor.0.to_bytes(),
            target_timestamp: public.target_timestamp.to_bytes(),
            claimed_statement_hash: claimed_statement_hash.to_bytes(),
            action_balance_blinding: private.action_balance_blinding.to_bytes(),
            nk: private.nk.0.to_bytes(),
            asset_path: merkle_path_from_typed(&private.asset_path)?,
            asset_position: private.asset_position,
            asset_indexed_leaf: indexed_leaf_from_typed(&private.asset_indexed_leaf),
            is_regulated: private.is_regulated,
            sender_compliance_path: merkle_path_from_typed(&private.sender_compliance_path)?,
            sender_compliance_position: private.sender_compliance_position,
            sender_slot_id,
            sender_slot_derivation,
            sender_d,
            transfer_nonce_root: private.compliance.transfer_nonce_root.to_bytes(),
            detection_ciphertext: public
                .compliance
                .detection_ciphertext
                .iter()
                .map(|value| value.to_bytes())
                .collect(),
            sender_core: compliance_tier_witness(&public.compliance.sender_core)?,
            sender_ext: compliance_tier_witness(&public.compliance.sender_ext)?,
            output_core: compliance_tier_witness(&public.compliance.output_core)?,
            output_ext: compliance_tier_witness(&public.compliance.output_ext)?,
            sender_randomizers: TransferTierRandomizersWitnessV11 {
                core: private.compliance.sender.core.to_bytes(),
                ext: private.compliance.sender.ext.to_bytes(),
            },
            output_randomizers: TransferTierRandomizersWitnessV11 {
                core: private.compliance.output.core.to_bytes(),
                ext: private.compliance.output.ext.to_bytes(),
            },
            required_spend,
            optional_spend,
            receiver_output,
            change_output,
            balance_commitment_affine: point_affine_bytes(public.balance_commitment.0)?,
            ak_affine: point_affine_bytes(verification_key_point(private.ak, "ak")?)?,
            asset_indexed_leaf_dk_pub_affine: point_affine_bytes(
                private.asset_indexed_leaf.params.dk_pub,
            )?,
            asset_indexed_leaf_ring_pk_affine: point_affine_bytes(
                private.asset_indexed_leaf.ring.ring_pk,
            )?,
            sender_diversified_generator_affine: point_affine_bytes(
                *private.sender_leaf.address.diversified_generator(),
            )?,
            sender_transmission_key_affine: point_affine_bytes(
                Encoding(private.sender_leaf.address.transmission_key().0)
                    .vartime_decompress()
                    .map_err(|e| anyhow!("decompress sender transmission key: {e:?}"))?,
            )?,
        };
        witness.total_length = u32::try_from(witness.encode()?.len())
            .map_err(|_| anyhow!("encoded {TRANSFER_PROOF_LABEL} witness exceeds u32"))?;
        Ok(witness)
    }
}
