use anyhow::{bail, Context, Result};

use crate::gnark::{
    binary::{encode_triple_path_32, encode_vec_32, put_bytes, put_u32, put_u64, BinaryCursor},
    note_reshape_witness::{
        NoteReshapeOutputWitnessV1, NoteReshapeSpendWitnessV1, NoteReshapeWitnessV1,
    },
    typed::encode_point_affine,
};

const NOTE_RESHAPE_WITNESS_MAGIC: &[u8; 4] = b"PNWG";
const NOTE_RESHAPE_WITNESS_VERSION: u32 = 1;

impl NoteReshapeWitnessV1 {
    pub fn encode(&self) -> Result<Vec<u8>> {
        let mut buf = Vec::new();
        put_bytes(&mut buf, NOTE_RESHAPE_WITNESS_MAGIC);
        put_u32(&mut buf, NOTE_RESHAPE_WITNESS_VERSION);
        put_u32(&mut buf, 0);
        put_u32(&mut buf, self.family_id.get());
        put_u32(&mut buf, self.n_in);
        put_u32(&mut buf, self.n_out);
        put_bytes(&mut buf, &self.anchor);
        put_bytes(&mut buf, &self.balance_commitment);
        put_bytes(&mut buf, &self.claimed_statement_hash);
        encode_vec_32(&mut buf, &self.statement_fields)?;
        put_bytes(&mut buf, &self.action_balance_blinding);
        put_bytes(&mut buf, &self.ak);
        put_bytes(&mut buf, &self.nk);
        for spend in &self.spends {
            encode_spend(
                &mut buf,
                spend,
                self.family_id.spec().input_padding
                    == crate::note_reshape::InputPaddingPolicy::SyntheticPrivate,
            )?;
        }
        for output in &self.outputs {
            encode_output(&mut buf, output);
        }
        encode_point_affine(&mut buf, &self.balance_commitment_affine);
        encode_point_affine(&mut buf, &self.ak_affine);

        let total_len =
            u32::try_from(buf.len()).context("encoded note reshape witness exceeds u32")?;
        buf[8..12].copy_from_slice(&total_len.to_le_bytes());
        Ok(buf)
    }

    pub fn decode(bytes: &[u8]) -> Result<Self> {
        let mut cursor = BinaryCursor::new(bytes);
        if cursor.read_fixed::<4>()? != *NOTE_RESHAPE_WITNESS_MAGIC {
            bail!("invalid note reshape witness magic")
        }
        let version = cursor.read_u32()?;
        if version != NOTE_RESHAPE_WITNESS_VERSION {
            bail!("unsupported note reshape witness version {version}")
        }
        let total_length = cursor.read_u32()?;
        if total_length as usize != bytes.len() {
            bail!(
                "note reshape witness length mismatch: header={}, actual={}",
                total_length,
                bytes.len()
            )
        }
        let family_id = crate::NoteReshapeFamilyId::try_from(cursor.read_u32()?)?;
        let n_in = cursor.read_u32()?;
        let n_out = cursor.read_u32()?;
        let anchor = cursor.read_fixed::<32>()?;
        let balance_commitment = cursor.read_fixed::<32>()?;
        let claimed_statement_hash = cursor.read_fixed::<32>()?;
        let statement_fields = cursor.read_vec_32()?;
        let action_balance_blinding = cursor.read_fixed::<32>()?;
        let ak = cursor.read_fixed::<32>()?;
        let nk = cursor.read_fixed::<32>()?;
        if n_in as usize != family_id.input_count() || n_out as usize != family_id.output_count() {
            bail!(
                "{} witness shape mismatch: got {}x{}, expected {}x{}",
                family_id.label(),
                n_in,
                n_out,
                family_id.input_count(),
                family_id.output_count()
            )
        }
        let spends = (0..n_in)
            .map(|_| {
                decode_spend(
                    &mut cursor,
                    family_id.spec().input_padding
                        == crate::note_reshape::InputPaddingPolicy::SyntheticPrivate,
                )
            })
            .collect::<Result<Vec<_>>>()?;
        let outputs = (0..n_out)
            .map(|_| decode_output(&mut cursor))
            .collect::<Result<Vec<_>>>()?;
        let balance_commitment_affine = cursor.read_point_affine()?;
        let ak_affine = cursor.read_point_affine()?;
        cursor.finish("note reshape witness")?;

        Ok(Self {
            family_id,
            total_length,
            n_in,
            n_out,
            anchor,
            balance_commitment,
            claimed_statement_hash,
            statement_fields,
            action_balance_blinding,
            ak,
            nk,
            spends,
            outputs,
            balance_commitment_affine,
            ak_affine,
        })
    }
}

fn encode_spend(
    buf: &mut Vec<u8>,
    spend: &NoteReshapeSpendWitnessV1,
    synthetic_private_padding: bool,
) -> Result<()> {
    if synthetic_private_padding {
        put_u32(buf, if spend.is_dummy { 1 } else { 0 });
        put_bytes(buf, &spend.dummy_nullifier_seed);
        put_bytes(buf, &spend.dummy_spend_auth_key);
    }
    put_bytes(buf, &spend.nullifier);
    put_bytes(buf, &spend.spent_note_blinding);
    put_bytes(buf, &spend.spent_note_amount);
    put_bytes(buf, &spend.spent_note_asset_id);
    put_bytes(buf, &spend.spent_transmission_key);
    put_bytes(buf, &spend.spent_clue_key);
    put_bytes(buf, &spend.state_commitment_commitment);
    put_u64(buf, spend.state_commitment_position);
    encode_triple_path_32(buf, &spend.state_commitment_auth_path)?;
    put_bytes(buf, &spend.spend_auth_randomizer);
    encode_point_affine(buf, &spend.rk_affine);
    encode_point_affine(buf, &spend.spent_diversified_generator_affine);
    encode_point_affine(buf, &spend.spent_transmission_key_affine);
    Ok(())
}

fn decode_spend(
    cursor: &mut BinaryCursor<'_>,
    synthetic_private_padding: bool,
) -> Result<NoteReshapeSpendWitnessV1> {
    let (is_dummy, dummy_nullifier_seed, dummy_spend_auth_key) = if synthetic_private_padding {
        let is_dummy = match cursor.read_u32()? {
            0 => false,
            1 => true,
            value => bail!("invalid note reshape input dummy flag {value}"),
        };
        (
            is_dummy,
            cursor.read_fixed::<32>()?,
            cursor.read_fixed::<32>()?,
        )
    } else {
        (false, [0u8; 32], [0u8; 32])
    };
    Ok(NoteReshapeSpendWitnessV1 {
        is_dummy,
        nullifier: cursor.read_fixed::<32>()?,
        dummy_nullifier_seed,
        dummy_spend_auth_key,
        spent_note_blinding: cursor.read_fixed::<32>()?,
        spent_note_amount: cursor.read_fixed::<32>()?,
        spent_note_asset_id: cursor.read_fixed::<32>()?,
        spent_transmission_key: cursor.read_fixed::<32>()?,
        spent_clue_key: cursor.read_fixed::<32>()?,
        state_commitment_commitment: cursor.read_fixed::<32>()?,
        state_commitment_position: cursor.read_u64()?,
        state_commitment_auth_path: cursor.read_triple_path_32()?,
        spend_auth_randomizer: cursor.read_fixed::<32>()?,
        rk_affine: cursor.read_point_affine()?,
        spent_diversified_generator_affine: cursor.read_point_affine()?,
        spent_transmission_key_affine: cursor.read_point_affine()?,
    })
}

fn encode_output(buf: &mut Vec<u8>, output: &NoteReshapeOutputWitnessV1) {
    put_bytes(buf, &output.note_commitment);
    put_bytes(buf, &output.created_note_blinding);
    put_bytes(buf, &output.created_note_amount);
    put_bytes(buf, &output.created_note_asset_id);
    put_bytes(buf, &output.created_transmission_key);
    put_bytes(buf, &output.created_clue_key);
    encode_point_affine(buf, &output.created_diversified_generator_affine);
    encode_point_affine(buf, &output.created_transmission_key_affine);
}

fn decode_output(cursor: &mut BinaryCursor<'_>) -> Result<NoteReshapeOutputWitnessV1> {
    Ok(NoteReshapeOutputWitnessV1 {
        note_commitment: cursor.read_fixed::<32>()?,
        created_note_blinding: cursor.read_fixed::<32>()?,
        created_note_amount: cursor.read_fixed::<32>()?,
        created_note_asset_id: cursor.read_fixed::<32>()?,
        created_transmission_key: cursor.read_fixed::<32>()?,
        created_clue_key: cursor.read_fixed::<32>()?,
        created_diversified_generator_affine: cursor.read_point_affine()?,
        created_transmission_key_affine: cursor.read_point_affine()?,
    })
}
