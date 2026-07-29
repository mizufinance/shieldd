use anyhow::{bail, Context, Result};

use crate::{
    gnark::{
        binary::encode_triple_path_32,
        binary::{encode_vec_32, put_bytes, put_u32, put_u64, put_u8, BinaryCursor},
        transfer_witness::{
            TransferChangeOutputWitnessV11, TransferComplianceCiphertextWitnessV11,
            TransferOptionalSpendWitnessV11, TransferReceiverOutputWitnessV11,
            TransferRequiredSpendWitnessV11, TransferTierRandomizersWitnessV11, TransferWitnessV11,
        },
        typed::{
            decode_indexed_leaf, encode_indexed_leaf, encode_merkle_path, encode_point_affine,
        },
    },
    transfer::TRANSFER_PROOF_LABEL,
};

const TRANSFER_WITNESS_MAGIC: &[u8; 4] = b"PTWG";
const TRANSFER_WITNESS_VERSION: u32 = 11;

impl TransferWitnessV11 {
    pub fn encode(&self) -> Result<Vec<u8>> {
        let mut buf = Vec::new();
        put_bytes(&mut buf, TRANSFER_WITNESS_MAGIC);
        put_u32(&mut buf, TRANSFER_WITNESS_VERSION);
        put_u32(&mut buf, 0);
        put_bytes(&mut buf, &self.anchor);
        put_bytes(&mut buf, &self.asset_anchor);
        put_bytes(&mut buf, &self.compliance_anchor);
        put_bytes(&mut buf, &self.target_timestamp);
        put_bytes(&mut buf, &self.claimed_statement_hash);
        put_bytes(&mut buf, &self.action_balance_blinding);
        put_bytes(&mut buf, &self.nk);
        encode_merkle_path(&mut buf, &self.asset_path)?;
        put_u64(&mut buf, self.asset_position);
        encode_indexed_leaf(&mut buf, &self.asset_indexed_leaf);
        put_u8(&mut buf, u8::from(self.is_regulated));
        encode_merkle_path(&mut buf, &self.sender_compliance_path)?;
        put_u64(&mut buf, self.sender_compliance_position);
        put_bytes(&mut buf, &self.sender_slot_id);
        put_bytes(&mut buf, &self.sender_slot_derivation);
        put_bytes(&mut buf, &self.sender_d);
        put_bytes(&mut buf, &self.transfer_nonce_root);
        encode_vec_32(&mut buf, &self.detection_ciphertext)?;
        encode_compliance_tier(&mut buf, &self.sender_core)?;
        encode_compliance_tier(&mut buf, &self.sender_ext)?;
        encode_compliance_tier(&mut buf, &self.output_core)?;
        encode_compliance_tier(&mut buf, &self.output_ext)?;
        encode_randomizers(&mut buf, &self.sender_randomizers);
        encode_randomizers(&mut buf, &self.output_randomizers);

        encode_required_spend(&mut buf, &self.required_spend)?;
        encode_optional_spend(&mut buf, &self.optional_spend)?;
        encode_receiver_output(&mut buf, &self.receiver_output)?;
        encode_change_output(&mut buf, &self.change_output);

        encode_point_affine(&mut buf, &self.balance_commitment_affine);
        encode_point_affine(&mut buf, &self.ak_affine);
        encode_point_affine(&mut buf, &self.asset_indexed_leaf_dk_pub_affine);
        encode_point_affine(&mut buf, &self.asset_indexed_leaf_ring_pk_affine);
        encode_point_affine(&mut buf, &self.sender_diversified_generator_affine);
        encode_point_affine(&mut buf, &self.sender_transmission_key_affine);

        let total_len = u32::try_from(buf.len()).context("encoded transfer witness exceeds u32")?;
        buf[8..12].copy_from_slice(&total_len.to_le_bytes());
        Ok(buf)
    }

    pub fn decode(bytes: &[u8]) -> Result<Self> {
        let mut cursor = BinaryCursor::new(bytes);
        if cursor.read_fixed::<4>()? != *TRANSFER_WITNESS_MAGIC {
            bail!("invalid transfer witness magic");
        }
        let version = cursor.read_u32()?;
        if version != TRANSFER_WITNESS_VERSION {
            bail!("unsupported transfer witness version {version}");
        }
        let total_length = cursor.read_u32()?;
        if total_length as usize != bytes.len() {
            bail!(
                "transfer witness length mismatch: header={}, actual={}",
                total_length,
                bytes.len()
            );
        }

        let witness = Self {
            total_length,
            anchor: cursor.read_fixed::<32>()?,
            asset_anchor: cursor.read_fixed::<32>()?,
            compliance_anchor: cursor.read_fixed::<32>()?,
            target_timestamp: cursor.read_fixed::<32>()?,
            claimed_statement_hash: cursor.read_fixed::<32>()?,
            action_balance_blinding: cursor.read_fr()?,
            nk: cursor.read_fixed::<32>()?,
            asset_path: cursor.read_merkle_path()?,
            asset_position: cursor.read_u64()?,
            asset_indexed_leaf: decode_indexed_leaf(&mut cursor)?,
            is_regulated: cursor.read_bool()?,
            sender_compliance_path: cursor.read_merkle_path()?,
            sender_compliance_position: cursor.read_u64()?,
            sender_slot_id: cursor.read_fixed::<32>()?,
            sender_slot_derivation: cursor.read_fixed::<32>()?,
            sender_d: cursor.read_fixed::<32>()?,
            transfer_nonce_root: cursor.read_fixed::<32>()?,
            detection_ciphertext: cursor.read_vec_32()?,
            sender_core: decode_compliance_tier(&mut cursor)?,
            sender_ext: decode_compliance_tier(&mut cursor)?,
            output_core: decode_compliance_tier(&mut cursor)?,
            output_ext: decode_compliance_tier(&mut cursor)?,
            sender_randomizers: decode_randomizers(&mut cursor)?,
            output_randomizers: decode_randomizers(&mut cursor)?,
            required_spend: decode_required_spend(&mut cursor)?,
            optional_spend: decode_optional_spend(&mut cursor)?,
            receiver_output: decode_receiver_output(&mut cursor)?,
            change_output: decode_change_output(&mut cursor)?,
            balance_commitment_affine: cursor.read_point_affine()?,
            ak_affine: cursor.read_point_affine()?,
            asset_indexed_leaf_dk_pub_affine: cursor.read_point_affine()?,
            asset_indexed_leaf_ring_pk_affine: cursor.read_point_affine()?,
            sender_diversified_generator_affine: cursor.read_point_affine()?,
            sender_transmission_key_affine: cursor.read_point_affine()?,
        };

        cursor.finish(TRANSFER_PROOF_LABEL)?;
        Ok(witness)
    }
}

fn encode_compliance_tier(
    buf: &mut Vec<u8>,
    tier: &TransferComplianceCiphertextWitnessV11,
) -> Result<()> {
    put_bytes(buf, &tier.c2);
    encode_vec_32(buf, &tier.ciphertext)?;
    put_bytes(buf, &tier.subject_derivation);
    put_bytes(buf, &tier.ring_id_hash);
    put_bytes(buf, &tier.policy_id_hash);
    put_bytes(buf, &tier.resource_hash);
    put_bytes(buf, &tier.permission_hash);
    put_u64(buf, tier.tier);
    put_bytes(buf, &tier.statement_target_timestamp);
    put_bytes(buf, &tier.salt);
    put_bytes(buf, &tier.challenge);
    put_bytes(buf, &tier.response);
    encode_point_affine(buf, &tier.epk_affine);
    encode_point_affine(buf, &tier.derived_pk_affine);
    encode_point_affine(buf, &tier.enc_cmt_affine);
    encode_point_affine(buf, &tier.shared_point_affine);
    Ok(())
}

fn decode_compliance_tier(
    cursor: &mut BinaryCursor<'_>,
) -> Result<TransferComplianceCiphertextWitnessV11> {
    Ok(TransferComplianceCiphertextWitnessV11 {
        c2: cursor.read_fixed::<32>()?,
        ciphertext: cursor.read_vec_32()?,
        subject_derivation: cursor.read_fixed::<32>()?,
        ring_id_hash: cursor.read_fixed::<32>()?,
        policy_id_hash: cursor.read_fixed::<32>()?,
        resource_hash: cursor.read_fixed::<32>()?,
        permission_hash: cursor.read_fixed::<32>()?,
        tier: cursor.read_u64()?,
        statement_target_timestamp: cursor.read_fixed::<32>()?,
        salt: cursor.read_fixed::<32>()?,
        challenge: cursor.read_fr()?,
        response: cursor.read_fr()?,
        epk_affine: cursor.read_point_affine()?,
        derived_pk_affine: cursor.read_point_affine()?,
        enc_cmt_affine: cursor.read_point_affine()?,
        shared_point_affine: cursor.read_point_affine()?,
    })
}

fn encode_randomizers(buf: &mut Vec<u8>, randomizers: &TransferTierRandomizersWitnessV11) {
    put_bytes(buf, &randomizers.core);
    put_bytes(buf, &randomizers.ext);
}

fn decode_randomizers(cursor: &mut BinaryCursor<'_>) -> Result<TransferTierRandomizersWitnessV11> {
    Ok(TransferTierRandomizersWitnessV11 {
        core: cursor.read_fr()?,
        ext: cursor.read_fr()?,
    })
}

fn encode_required_spend(buf: &mut Vec<u8>, spend: &TransferRequiredSpendWitnessV11) -> Result<()> {
    put_bytes(buf, &spend.nullifier);
    put_bytes(buf, &spend.spent_note_blinding);
    put_bytes(buf, &spend.spent_note_amount);
    put_bytes(buf, &spend.spent_note_asset_id);
    put_bytes(buf, &spend.spent_clue_key);
    put_u64(buf, spend.state_commitment_position);
    encode_triple_path_32(buf, &spend.state_commitment_auth_path)?;
    put_bytes(buf, &spend.spend_auth_randomizer);
    encode_point_affine(buf, &spend.rk_affine);
    Ok(())
}

fn decode_required_spend(cursor: &mut BinaryCursor<'_>) -> Result<TransferRequiredSpendWitnessV11> {
    Ok(TransferRequiredSpendWitnessV11 {
        nullifier: cursor.read_fixed::<32>()?,
        spent_note_blinding: cursor.read_fixed::<32>()?,
        spent_note_amount: cursor.read_fixed::<32>()?,
        spent_note_asset_id: cursor.read_fixed::<32>()?,
        spent_clue_key: cursor.read_fixed::<32>()?,
        state_commitment_position: cursor.read_u64()?,
        state_commitment_auth_path: cursor.read_triple_path_32()?,
        spend_auth_randomizer: cursor.read_fr()?,
        rk_affine: cursor.read_point_affine()?,
    })
}

fn encode_optional_spend(buf: &mut Vec<u8>, spend: &TransferOptionalSpendWitnessV11) -> Result<()> {
    put_bytes(buf, &spend.nullifier);
    put_bytes(buf, &spend.spent_note_blinding);
    put_bytes(buf, &spend.spent_note_amount);
    put_bytes(buf, &spend.spent_clue_key);
    put_u64(buf, spend.state_commitment_position);
    encode_triple_path_32(buf, &spend.state_commitment_auth_path)?;
    put_bytes(buf, &spend.spend_auth_randomizer);
    encode_point_affine(buf, &spend.rk_affine);
    put_u8(buf, u8::from(spend.is_dummy));
    put_bytes(buf, &spend.dummy_nullifier_seed);
    Ok(())
}

fn decode_optional_spend(cursor: &mut BinaryCursor<'_>) -> Result<TransferOptionalSpendWitnessV11> {
    Ok(TransferOptionalSpendWitnessV11 {
        nullifier: cursor.read_fixed::<32>()?,
        spent_note_blinding: cursor.read_fixed::<32>()?,
        spent_note_amount: cursor.read_fixed::<32>()?,
        spent_clue_key: cursor.read_fixed::<32>()?,
        state_commitment_position: cursor.read_u64()?,
        state_commitment_auth_path: cursor.read_triple_path_32()?,
        spend_auth_randomizer: cursor.read_fr()?,
        rk_affine: cursor.read_point_affine()?,
        is_dummy: cursor.read_bool()?,
        dummy_nullifier_seed: cursor.read_fixed::<32>()?,
    })
}

fn encode_receiver_output(
    buf: &mut Vec<u8>,
    output: &TransferReceiverOutputWitnessV11,
) -> Result<()> {
    put_bytes(buf, &output.note_commitment);
    put_bytes(buf, &output.created_note_blinding);
    put_bytes(buf, &output.created_note_amount);
    put_bytes(buf, &output.created_clue_key);
    encode_merkle_path(buf, &output.recipient_compliance_path)?;
    put_u64(buf, output.recipient_compliance_position);
    put_bytes(buf, &output.recipient_slot_id);
    put_bytes(buf, &output.recipient_slot_derivation);
    put_bytes(buf, &output.recipient_d);
    encode_point_affine(buf, &output.recipient_diversified_generator_affine);
    encode_point_affine(buf, &output.recipient_transmission_key_affine);
    Ok(())
}

fn decode_receiver_output(
    cursor: &mut BinaryCursor<'_>,
) -> Result<TransferReceiverOutputWitnessV11> {
    Ok(TransferReceiverOutputWitnessV11 {
        note_commitment: cursor.read_fixed::<32>()?,
        created_note_blinding: cursor.read_fixed::<32>()?,
        created_note_amount: cursor.read_fixed::<32>()?,
        created_clue_key: cursor.read_fixed::<32>()?,
        recipient_compliance_path: cursor.read_merkle_path()?,
        recipient_compliance_position: cursor.read_u64()?,
        recipient_slot_id: cursor.read_fixed::<32>()?,
        recipient_slot_derivation: cursor.read_fixed::<32>()?,
        recipient_d: cursor.read_fixed::<32>()?,
        recipient_diversified_generator_affine: cursor.read_point_affine()?,
        recipient_transmission_key_affine: cursor.read_point_affine()?,
    })
}

fn encode_change_output(buf: &mut Vec<u8>, output: &TransferChangeOutputWitnessV11) {
    put_bytes(buf, &output.note_commitment);
    put_bytes(buf, &output.created_note_blinding);
    put_bytes(buf, &output.created_note_amount);
    put_bytes(buf, &output.created_clue_key);
}

fn decode_change_output(cursor: &mut BinaryCursor<'_>) -> Result<TransferChangeOutputWitnessV11> {
    Ok(TransferChangeOutputWitnessV11 {
        note_commitment: cursor.read_fixed::<32>()?,
        created_note_blinding: cursor.read_fixed::<32>()?,
        created_note_amount: cursor.read_fixed::<32>()?,
        created_clue_key: cursor.read_fixed::<32>()?,
    })
}

#[cfg(test)]
mod tests {
    use super::*;
    use decaf377::Fr;

    fn fr_modulus_bytes() -> [u8; 32] {
        let mut modulus = (-Fr::from(1u64)).to_bytes();
        for byte in &mut modulus {
            let (next, carry) = byte.overflowing_add(1);
            *byte = next;
            if !carry {
                break;
            }
        }
        modulus
    }

    #[test]
    fn compliance_tier_rejects_scalar_modulus_challenge() {
        let mut encoded = Vec::new();
        put_bytes(&mut encoded, &[0u8; 32]);
        put_u32(&mut encoded, 0);
        for _ in 0..5 {
            put_bytes(&mut encoded, &[0u8; 32]);
        }
        put_u64(&mut encoded, 1);
        put_bytes(&mut encoded, &[0u8; 32]);
        put_bytes(&mut encoded, &[0u8; 32]);
        put_bytes(&mut encoded, &fr_modulus_bytes());

        let error = decode_compliance_tier(&mut BinaryCursor::new(&encoded))
            .expect_err("Fr modulus challenge must be rejected");
        assert!(
            error.to_string().contains("non-canonical Fr"),
            "unexpected challenge rejection: {error:#}"
        );
    }
}
