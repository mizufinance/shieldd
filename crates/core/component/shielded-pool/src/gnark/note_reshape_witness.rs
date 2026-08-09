use anyhow::{anyhow, bail, Result};
use decaf377::{Encoding, Fq};

use crate::{
    gnark::typed::{point_affine_bytes, PointAffineBytes},
    note_reshape::{
        NoteReshapeInputPrivate, NoteReshapeInputPublic, NoteReshapeOutputPrivate,
        NoteReshapeOutputPublic, NoteReshapeProofPrivate, NoteReshapeProofPublic,
    },
    public_input_hash::note_reshape_statement_hash_from_public,
    NoteReshapeFamilyId,
};

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct NoteReshapeSpendWitnessV3 {
    pub(crate) is_dummy: bool,
    pub nullifier: [u8; 32],
    pub(crate) dummy_nullifier_seed: [u8; 32],
    pub spent_note_blinding: [u8; 32],
    pub spent_note_amount: [u8; 32],
    pub state_commitment_commitment: [u8; 32],
    pub state_commitment_position: u64,
    pub state_commitment_auth_path: Vec<[[u8; 32]; 3]>,
    pub spend_auth_randomizer: [u8; 32],
    pub rk_affine: PointAffineBytes,
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct NoteReshapeOutputWitnessV3 {
    pub note_commitment: [u8; 32],
    pub created_note_blinding: [u8; 32],
    pub created_note_amount: [u8; 32],
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct NoteReshapeSharedNoteContextWitnessV3 {
    pub asset_id: [u8; 32],
    pub clue_key: [u8; 32],
    pub diversified_generator_affine: PointAffineBytes,
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct NoteReshapeWitnessV3 {
    pub family_id: NoteReshapeFamilyId,
    pub total_length: u32,
    pub n_in: u32,
    pub n_out: u32,
    pub anchor: [u8; 32],
    pub claimed_statement_hash: [u8; 32],
    pub action_balance_blinding: [u8; 32],
    pub nk: [u8; 32],
    pub shared: NoteReshapeSharedNoteContextWitnessV3,
    pub spends: Vec<NoteReshapeSpendWitnessV3>,
    pub outputs: Vec<NoteReshapeOutputWitnessV3>,
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
) -> Result<NoteReshapeSpendWitnessV3> {
    let state_commitment_auth_path = private
        .state_commitment_proof
        .auth_path()
        .iter()
        .map(|siblings| siblings.map(|sibling| Fq::from(sibling).to_bytes()))
        .collect::<Vec<_>>();
    Ok(NoteReshapeSpendWitnessV3 {
        is_dummy: private.is_dummy,
        nullifier: public.nullifier.0.to_bytes(),
        dummy_nullifier_seed: private.dummy_nullifier_seed.to_bytes(),
        spent_note_blinding: private.spent_note.note_blinding().to_bytes(),
        spent_note_amount: Fq::from(private.spent_note.value().amount).to_bytes(),
        state_commitment_commitment: private.state_commitment_proof.commitment().0.to_bytes(),
        state_commitment_position: u64::from(private.state_commitment_proof.position()),
        state_commitment_auth_path,
        spend_auth_randomizer: private.spend_auth_randomizer.to_bytes(),
        rk_affine: point_affine_bytes(verification_key_point(public.rk, &format!("rk_{index}"))?)?,
    })
}

fn output_witness(
    public: &NoteReshapeOutputPublic,
    private: &NoteReshapeOutputPrivate,
) -> Result<NoteReshapeOutputWitnessV3> {
    Ok(NoteReshapeOutputWitnessV3 {
        note_commitment: public.note_commitment.0.to_bytes(),
        created_note_blinding: private.created_note.note_blinding().to_bytes(),
        created_note_amount: Fq::from(private.created_note.value().amount).to_bytes(),
    })
}

impl NoteReshapeWitnessV3 {
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
            .map(|(public, private)| output_witness(public, private))
            .collect::<Result<Vec<_>>>()?;
        let first_input = private
            .inputs
            .first()
            .ok_or_else(|| anyhow!("note reshape witness requires a real first input"))?;
        let shared = NoteReshapeSharedNoteContextWitnessV3 {
            asset_id: first_input.spent_note.asset_id().0.to_bytes(),
            clue_key: Fq::from_bytes_checked(&first_input.spent_note.clue_key().0)
                .expect("note addresses validate clue-key encodings")
                .to_bytes(),
            diversified_generator_affine: point_affine_bytes(
                first_input.spent_note.diversified_generator(),
            )?,
        };

        let mut witness = Self {
            family_id: public.family_id,
            total_length: 0,
            n_in: public.inputs.len() as u32,
            n_out: public.outputs.len() as u32,
            anchor: Fq::from(public.anchor).to_bytes(),
            claimed_statement_hash: claimed_statement_hash.to_bytes(),
            action_balance_blinding: private.action_balance_blinding.to_bytes(),
            nk: private.nk.0.to_bytes(),
            shared,
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
