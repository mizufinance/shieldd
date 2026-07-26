use anyhow::{anyhow, bail, Result};
use decaf377::{Encoding, Fq};

use crate::{
    gnark::typed::{point_affine_bytes, PointAffineBytes},
    note_reshape::{
        NoteReshapeInputPrivate, NoteReshapeInputPublic, NoteReshapeOutputPrivate,
        NoteReshapeOutputPublic, NoteReshapeProofPrivate, NoteReshapeProofPublic,
    },
    public_input_hash::{note_reshape_statement_fields, note_reshape_statement_hash_from_public},
    NoteReshapeFamilyId,
};

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct NoteReshapeSpendWitnessV1 {
    pub(crate) is_dummy: bool,
    pub nullifier: [u8; 32],
    pub(crate) dummy_nullifier_seed: [u8; 32],
    pub(crate) dummy_spend_auth_key: [u8; 32],
    pub spent_note_blinding: [u8; 32],
    pub spent_note_amount: [u8; 32],
    pub spent_note_asset_id: [u8; 32],
    pub spent_transmission_key: [u8; 32],
    pub spent_clue_key: [u8; 32],
    pub state_commitment_commitment: [u8; 32],
    pub state_commitment_position: u64,
    pub state_commitment_auth_path: Vec<[[u8; 32]; 3]>,
    pub spend_auth_randomizer: [u8; 32],
    pub rk_affine: PointAffineBytes,
    pub spent_diversified_generator_affine: PointAffineBytes,
    pub spent_transmission_key_affine: PointAffineBytes,
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct NoteReshapeOutputWitnessV1 {
    pub note_commitment: [u8; 32],
    pub created_note_blinding: [u8; 32],
    pub created_note_amount: [u8; 32],
    pub created_note_asset_id: [u8; 32],
    pub created_transmission_key: [u8; 32],
    pub created_clue_key: [u8; 32],
    pub created_diversified_generator_affine: PointAffineBytes,
    pub created_transmission_key_affine: PointAffineBytes,
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct NoteReshapeWitnessV1 {
    pub family_id: NoteReshapeFamilyId,
    pub total_length: u32,
    pub n_in: u32,
    pub n_out: u32,
    pub anchor: [u8; 32],
    pub balance_commitment: [u8; 32],
    pub claimed_statement_hash: [u8; 32],
    pub statement_fields: Vec<[u8; 32]>,
    pub action_balance_blinding: [u8; 32],
    pub ak: [u8; 32],
    pub nk: [u8; 32],
    pub spends: Vec<NoteReshapeSpendWitnessV1>,
    pub outputs: Vec<NoteReshapeOutputWitnessV1>,
    pub balance_commitment_affine: PointAffineBytes,
    pub ak_affine: PointAffineBytes,
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
    public: &NoteReshapeInputPublic,
    private: &NoteReshapeInputPrivate,
    index: usize,
) -> Result<NoteReshapeSpendWitnessV1> {
    let state_commitment_auth_path = private
        .state_commitment_proof
        .auth_path()
        .iter()
        .map(|siblings| siblings.map(|sibling| Fq::from(sibling).to_bytes()))
        .collect::<Vec<_>>();
    Ok(NoteReshapeSpendWitnessV1 {
        is_dummy: private.is_dummy,
        nullifier: public.nullifier.0.to_bytes(),
        dummy_nullifier_seed: private.dummy_nullifier_seed.to_bytes(),
        dummy_spend_auth_key: private.dummy_spend_auth_key.to_bytes(),
        spent_note_blinding: private.spent_note.note_blinding().to_bytes(),
        spent_note_amount: Fq::from(private.spent_note.value().amount).to_bytes(),
        spent_note_asset_id: private.spent_note.asset_id().0.to_bytes(),
        spent_transmission_key: private.spent_note.transmission_key().0,
        spent_clue_key: Fq::from_le_bytes_mod_order(&private.spent_note.clue_key().0).to_bytes(),
        state_commitment_commitment: private.state_commitment_proof.commitment().0.to_bytes(),
        state_commitment_position: u64::from(private.state_commitment_proof.position()),
        state_commitment_auth_path,
        spend_auth_randomizer: private.spend_auth_randomizer.to_bytes(),
        rk_affine: point_affine_bytes(verification_key_point(public.rk, &format!("rk_{index}"))?)?,
        spent_diversified_generator_affine: point_affine_bytes(
            private.spent_note.diversified_generator(),
        )?,
        spent_transmission_key_affine: point_affine_bytes(
            Encoding(private.spent_note.transmission_key().0)
                .vartime_decompress()
                .map_err(|e| anyhow!("decompress spent transmission key {index}: {e:?}"))?,
        )?,
    })
}

fn output_witness(
    public: &NoteReshapeOutputPublic,
    private: &NoteReshapeOutputPrivate,
    index: usize,
) -> Result<NoteReshapeOutputWitnessV1> {
    Ok(NoteReshapeOutputWitnessV1 {
        note_commitment: public.note_commitment.0.to_bytes(),
        created_note_blinding: private.created_note.note_blinding().to_bytes(),
        created_note_amount: Fq::from(private.created_note.value().amount).to_bytes(),
        created_note_asset_id: private.created_note.asset_id().0.to_bytes(),
        created_transmission_key: private.created_note.transmission_key().0,
        created_clue_key: Fq::from_le_bytes_mod_order(&private.created_note.clue_key().0)
            .to_bytes(),
        created_diversified_generator_affine: point_affine_bytes(
            private.created_note.diversified_generator(),
        )?,
        created_transmission_key_affine: point_affine_bytes(
            Encoding(private.created_note.transmission_key().0)
                .vartime_decompress()
                .map_err(|e| anyhow!("decompress created transmission key {index}: {e:?}"))?,
        )?,
    })
}

impl NoteReshapeWitnessV1 {
    pub fn from_public_private(
        public: &NoteReshapeProofPublic,
        private: &NoteReshapeProofPrivate,
    ) -> Result<Self> {
        public.validate_shape()?;
        private.validate_shape()?;
        if public.family_id != private.family_id {
            bail!(
                "note reshape witness family mismatch: public={} private={}",
                public.family_id.get(),
                private.family_id.get()
            );
        }
        if public.inputs.len() != private.inputs.len()
            || public.outputs.len() != private.outputs.len()
        {
            bail!("note reshape public/private witness vector lengths differ")
        }

        let claimed_statement_hash = note_reshape_statement_hash_from_public(public)
            .map_err(|e| anyhow!("compute {} statement hash: {e}", public.family_id.label()))?;
        let statement_fields = note_reshape_statement_fields(public)
            .map_err(|e| anyhow!("compute {} statement fields: {e}", public.family_id.label()))?;
        let spends = public
            .inputs
            .iter()
            .zip(private.inputs.iter())
            .enumerate()
            .map(|(index, (public, private))| spend_witness(public, private, index))
            .collect::<Result<Vec<_>>>()?;
        let outputs = public
            .outputs
            .iter()
            .zip(private.outputs.iter())
            .enumerate()
            .map(|(index, (public, private))| output_witness(public, private, index))
            .collect::<Result<Vec<_>>>()?;

        let mut witness = Self {
            family_id: public.family_id,
            total_length: 0,
            n_in: public.inputs.len() as u32,
            n_out: public.outputs.len() as u32,
            anchor: Fq::from(public.anchor).to_bytes(),
            balance_commitment: public.balance_commitment.to_bytes(),
            claimed_statement_hash: claimed_statement_hash.to_bytes(),
            statement_fields: statement_fields
                .iter()
                .map(|value| value.to_bytes())
                .collect(),
            action_balance_blinding: private.action_balance_blinding.to_bytes(),
            ak: private.ak.to_bytes(),
            nk: private.nk.0.to_bytes(),
            spends,
            outputs,
            balance_commitment_affine: point_affine_bytes(public.balance_commitment.0)?,
            ak_affine: point_affine_bytes(verification_key_point(private.ak, "ak")?)?,
        };
        witness.total_length = u32::try_from(witness.encode()?.len())
            .map_err(|_| anyhow!("encoded {} witness exceeds u32", witness.family_id.label()))?;
        Ok(witness)
    }
}
