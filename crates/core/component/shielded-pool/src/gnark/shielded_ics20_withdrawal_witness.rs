use anyhow::{anyhow, bail, Result};
use decaf377::{Encoding, Fq};
use shieldd_sdk_asset::Balance;

use crate::{
    gnark::typed::{
        compliance_leaf_from_typed, merkle_path_from_typed, point_affine_bytes,
        ComplianceLeafBinary, MerklePathBinary, PointAffineBytes,
    },
    public_input_hash::shielded_ics20_withdrawal_statement_hash_from_public,
    shielded_ics20_withdrawal::{
        ShieldedIcs20WithdrawalChangePrivate, ShieldedIcs20WithdrawalChangePublic,
        ShieldedIcs20WithdrawalInputPublic, ShieldedIcs20WithdrawalProofPrivate,
        ShieldedIcs20WithdrawalProofPublic, ShieldedIcs20WithdrawalRequiredInputPrivate,
    },
    ShieldedIcs20WithdrawalFamilyId,
};

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct ShieldedIcs20WithdrawalRequiredSpendWitnessV10 {
    pub nullifier: [u8; 32],
    pub spent_note_blinding: [u8; 32],
    pub spent_note_amount: [u8; 32],
    pub state_commitment_position: u64,
    pub state_commitment_auth_path: Vec<[[u8; 32]; 3]>,
    pub spend_auth_randomizer: [u8; 32],
    pub rk_affine: PointAffineBytes,
    pub history_required: bool,
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct ShieldedIcs20WithdrawalOptionalSpendWitnessV10 {
    pub spend: ShieldedIcs20WithdrawalRequiredSpendWitnessV10,
    pub is_dummy: bool,
    pub dummy_nullifier_seed: [u8; 32],
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct ShieldedIcs20WithdrawalChangeWitnessV10 {
    pub note_commitment: [u8; 32],
    pub created_note_blinding: [u8; 32],
    pub created_note_amount: [u8; 32],
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct ShieldedIcs20WithdrawalAssetLeafWitnessV10 {
    pub value: [u8; 32],
    pub next_index: u64,
    pub next_value: [u8; 32],
    pub params_hash: [u8; 32],
    pub ring_hash: [u8; 32],
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct ShieldedIcs20WithdrawalWitnessV10 {
    pub family_id: ShieldedIcs20WithdrawalFamilyId,
    pub total_length: u32,
    pub n_in: u32,
    pub anchor: [u8; 32],
    pub asset_anchor: [u8; 32],
    pub compliance_anchor: [u8; 32],
    pub target_timestamp: [u8; 32],
    pub outbound_asset_id: [u8; 32],
    pub outbound_amount: [u8; 32],
    pub withdrawal_effect_hash_limbs: [[u8; 32]; 4],
    pub claimed_statement_hash: [u8; 32],
    pub routing_tag: [u8; 32],
    pub routing_parameter_set_id: [u8; 32],
    pub recent_position_floor: [u8; 32],
    pub action_balance_blinding: [u8; 32],
    pub nk: [u8; 32],
    pub asset_path: MerklePathBinary,
    pub asset_position: u64,
    pub asset_indexed_leaf: ShieldedIcs20WithdrawalAssetLeafWitnessV10,
    pub is_regulated: bool,
    pub regulated_precision: u8,
    pub unregulated_precision: u8,
    pub routing_as_of_height: u64,
    pub routing_nonce: [u8; 32],
    pub sender_compliance_path: MerklePathBinary,
    pub sender_compliance_position: u64,
    pub sender_slot_id: [u8; 32],
    pub sender_slot_derivation: [u8; 32],
    pub sender_d: [u8; 32],
    pub sender_status: [u8; 32],
    pub required_spend: ShieldedIcs20WithdrawalRequiredSpendWitnessV10,
    pub optional_spend: ShieldedIcs20WithdrawalOptionalSpendWitnessV10,
    pub change_output: ShieldedIcs20WithdrawalChangeWitnessV10,
    pub ak_affine: PointAffineBytes,
    pub sender_diversified_generator_affine: PointAffineBytes,
}

fn compliance_leaf_parts(leaf: &ComplianceLeafBinary) -> ([u8; 32], [u8; 32], [u8; 32], [u8; 32]) {
    (leaf.slot_id, leaf.slot_derivation, leaf.d, leaf.status)
}

fn verification_key_point(
    vk: decaf377_rdsa::VerificationKey<decaf377_rdsa::SpendAuth>,
    label: &str,
) -> Result<decaf377::Element> {
    Encoding(vk.to_bytes())
        .vartime_decompress()
        .map_err(|e| anyhow!("decompress {label}: {e:?}"))
}

fn spend_witness(
    public_input: &ShieldedIcs20WithdrawalInputPublic,
    private_input: &ShieldedIcs20WithdrawalRequiredInputPrivate,
    index: usize,
) -> Result<ShieldedIcs20WithdrawalRequiredSpendWitnessV10> {
    let state_commitment_auth_path = private_input
        .state_commitment_proof
        .auth_path()
        .iter()
        .map(|siblings| siblings.map(|sibling| Fq::from(sibling).to_bytes()))
        .collect::<Vec<_>>();

    Ok(ShieldedIcs20WithdrawalRequiredSpendWitnessV10 {
        nullifier: public_input.nullifier.0.to_bytes(),
        spent_note_blinding: private_input.spent_note.note_blinding().to_bytes(),
        spent_note_amount: Fq::from(private_input.spent_note.value().amount).to_bytes(),
        state_commitment_position: u64::from(private_input.state_commitment_proof.position()),
        state_commitment_auth_path,
        spend_auth_randomizer: private_input.spend_auth_randomizer.to_bytes(),
        rk_affine: point_affine_bytes(verification_key_point(
            public_input.rk,
            &format!("shielded_ics20_withdrawal_rk_{index}"),
        )?)?,
        history_required: public_input.history_required,
    })
}

fn change_witness(
    public_output: &ShieldedIcs20WithdrawalChangePublic,
    private_output: &ShieldedIcs20WithdrawalChangePrivate,
) -> ShieldedIcs20WithdrawalChangeWitnessV10 {
    ShieldedIcs20WithdrawalChangeWitnessV10 {
        note_commitment: public_output.note_commitment.0.to_bytes(),
        created_note_blinding: private_output.created_note.note_blinding().to_bytes(),
        created_note_amount: Fq::from(private_output.created_note.value().amount).to_bytes(),
    }
}

fn u128_from_field(value: Fq, label: &str) -> Result<u128> {
    let bytes = value.to_bytes();
    if bytes[16..].iter().any(|byte| *byte != 0) {
        bail!("{label} exceeds the circuit's 128-bit amount range");
    }
    Ok(u128::from_le_bytes(
        bytes[..16]
            .try_into()
            .expect("field prefix contains exactly 16 bytes"),
    ))
}

impl ShieldedIcs20WithdrawalWitnessV10 {
    pub fn from_public_private(
        public: &ShieldedIcs20WithdrawalProofPublic,
        private: &ShieldedIcs20WithdrawalProofPrivate,
    ) -> Result<Self> {
        public.validate_shape()?;
        private.validate_shape()?;
        if public.family_id != private.family_id {
            bail!(
                "shielded ICS-20 withdrawal witness family mismatch: public={} private={}",
                public.family_id.get(),
                private.family_id.get()
            );
        }

        let required_amount: u128 = private.required_input.spent_note.value().amount.into();
        let optional_amount: u128 = private
            .optional_input
            .spend
            .spent_note
            .value()
            .amount
            .into();
        let change_amount: u128 = private.change_output.created_note.value().amount.into();
        let outbound_amount = u128_from_field(public.outbound_amount, "outbound amount")?;
        let input_total = required_amount
            .checked_add(optional_amount)
            .ok_or_else(|| anyhow!("shielded ICS-20 withdrawal input amount sum overflows u128"))?;
        let output_total = change_amount.checked_add(outbound_amount).ok_or_else(|| {
            anyhow!("shielded ICS-20 withdrawal output amount sum overflows u128")
        })?;
        if input_total != output_total {
            bail!(
                "shielded ICS-20 withdrawal must conserve value internally: inputs={input_total}, outputs={output_total}"
            );
        }
        let expected_balance_commitment =
            Balance::default().commit(private.action_balance_blinding);
        if public.balance_commitment != expected_balance_commitment {
            bail!(
                "shielded ICS-20 withdrawal balance commitment must be the blinding-only commitment"
            );
        }

        let claimed_statement_hash =
            shielded_ics20_withdrawal_statement_hash_from_public(public)
                .map_err(|e| anyhow!("compute {} statement hash: {e}", public.family_id.label()))?;
        let sender_leaf = compliance_leaf_from_typed(&private.sender_leaf)?;
        let (sender_slot_id, sender_slot_derivation, sender_d, sender_status) =
            compliance_leaf_parts(&sender_leaf);

        let required_spend = spend_witness(&public.inputs[0], &private.required_input, 0)?;
        let optional_spend = ShieldedIcs20WithdrawalOptionalSpendWitnessV10 {
            spend: spend_witness(&public.inputs[1], &private.optional_input.spend, 1)?,
            is_dummy: private.optional_input.is_dummy,
            dummy_nullifier_seed: private.optional_input.dummy_nullifier_seed.to_bytes(),
        };

        let asset_commitments = private.asset_indexed_leaf.commitment_parts();
        let mut witness = Self {
            family_id: public.family_id,
            total_length: 0,
            n_in: public.inputs.len() as u32,
            anchor: Fq::from(public.anchor).to_bytes(),
            asset_anchor: public.asset_anchor.0.to_bytes(),
            compliance_anchor: public.compliance_anchor.0.to_bytes(),
            target_timestamp: public.target_timestamp.to_bytes(),
            outbound_asset_id: public.outbound_asset_id.to_bytes(),
            outbound_amount: public.outbound_amount.to_bytes(),
            withdrawal_effect_hash_limbs: public
                .withdrawal_effect_hash_limbs
                .map(|limb| limb.to_bytes()),
            claimed_statement_hash: claimed_statement_hash.to_bytes(),
            routing_tag: Fq::from(public.routing_tag.value).to_bytes(),
            routing_parameter_set_id: public.routing_parameter_set_id.to_bytes(),
            recent_position_floor: Fq::from(public.recent_position_floor).to_bytes(),
            action_balance_blinding: private.action_balance_blinding.to_bytes(),
            nk: private.nk.0.to_bytes(),
            asset_path: merkle_path_from_typed(&private.asset_path)?,
            asset_position: private.asset_position,
            asset_indexed_leaf: ShieldedIcs20WithdrawalAssetLeafWitnessV10 {
                value: private.asset_indexed_leaf.value.to_bytes(),
                next_index: private.asset_indexed_leaf.next_index,
                next_value: private.asset_indexed_leaf.next_value.to_bytes(),
                params_hash: asset_commitments.params_hash.to_bytes(),
                ring_hash: asset_commitments.ring_hash.to_bytes(),
            },
            is_regulated: private.is_regulated,
            regulated_precision: private.routing_parameters.regulated_precision.bits(),
            unregulated_precision: private.routing_parameters.unregulated_precision.bits(),
            routing_as_of_height: private.routing_parameters.as_of_height,
            routing_nonce: private.routing_nonce.to_bytes(),
            sender_compliance_path: merkle_path_from_typed(&private.sender_compliance_path)?,
            sender_compliance_position: private.sender_compliance_position,
            sender_slot_id,
            sender_slot_derivation,
            sender_d,
            sender_status,
            required_spend,
            optional_spend,
            change_output: change_witness(&public.change_output, &private.change_output),
            ak_affine: point_affine_bytes(verification_key_point(
                private.ak,
                "shielded_ics20_withdrawal_ak",
            )?)?,
            sender_diversified_generator_affine: point_affine_bytes(
                *private.sender_leaf.address.diversified_generator(),
            )?,
        };
        witness.total_length = u32::try_from(witness.encode()?.len())
            .map_err(|_| anyhow!("encoded {} witness exceeds u32", witness.family_id.label()))?;
        Ok(witness)
    }
}
