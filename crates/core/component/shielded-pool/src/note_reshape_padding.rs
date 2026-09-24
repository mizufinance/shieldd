use blake2b_simd;
use shieldd_sdk_asset::asset;
use shieldd_sdk_crypto::{Fq, Fr, SubgroupPoint};
use shieldd_sdk_keys::Address;
use shieldd_sdk_num::Amount;
use shieldd_sdk_sct::Nullifier;
use shieldd_sdk_tct as tct;

use crate::{Note, RecoveryCapsule, Rseed};

pub(crate) struct HiddenArityPadder {
    pub value_blinding: Fr,
    pub auth_randomizer: Fr,
    pub sender_address: Address,
    pub asset_id: asset::Id,
    pub payload_key: SubgroupPoint,
    pub nullifier_domain: u8,
    pub nullifier_seed_label: &'static [u8],
    pub input_note_label: &'static [u8],
    pub output_note_label: &'static [u8],
}

impl HiddenArityPadder {
    fn derive_dummy_bytes(&self, label: &[u8], slot: usize) -> [u8; 64] {
        let mut data = Vec::with_capacity(label.len() + 32 + 32 + 8);
        data.extend_from_slice(label);
        data.extend_from_slice(&self.value_blinding.to_bytes());
        data.extend_from_slice(&self.auth_randomizer.to_bytes());
        data.extend_from_slice(&(slot as u64).to_le_bytes());
        let digest = blake2b_simd::blake2b(&data);
        digest.as_bytes().try_into().expect("Blake2b-512 output")
    }

    pub fn synthetic_dummy_nullifier_seed(&self, slot: usize) -> Fq {
        Fq::from_bytes_wide(&self.derive_dummy_bytes(self.nullifier_seed_label, slot))
    }

    fn synthetic_dummy_rseed(&self, slot: usize, label: &[u8]) -> Rseed {
        Rseed(
            self.derive_dummy_bytes(label, slot)[..32]
                .try_into()
                .expect("rseed length"),
        )
    }

    pub fn synthetic_dummy_nullifier(&self, slot: usize) -> Nullifier {
        let seed = self.synthetic_dummy_nullifier_seed(slot);
        let randomizer = self.auth_randomizer;
        Nullifier(shieldd_sdk_crypto::poseidon::hash(
            self.nullifier_domain,
            &[
                seed,
                shieldd_sdk_crypto::encoding::embed_scalar(&randomizer),
                Fq::from(slot as u64),
            ],
        ))
    }

    pub fn synthetic_dummy_input_note(&self, slot: usize) -> Note {
        self.synthetic_dummy_note(slot, self.input_note_label)
    }

    pub fn synthetic_dummy_output_note(&self, slot: usize) -> Note {
        self.synthetic_dummy_note(slot, self.output_note_label)
    }

    pub fn synthetic_dummy_output_note_and_capsule(&self, slot: usize) -> (Note, RecoveryCapsule) {
        self.synthetic_dummy_note_and_capsule(slot, self.output_note_label)
    }

    fn synthetic_dummy_note(&self, slot: usize, label: &[u8]) -> Note {
        self.synthetic_dummy_note_and_capsule(slot, label).0
    }

    fn synthetic_dummy_note_and_capsule(
        &self,
        slot: usize,
        label: &[u8],
    ) -> (Note, RecoveryCapsule) {
        let rseed = self.synthetic_dummy_rseed(slot, label);
        Note::from_parts_with_recovery(
            self.sender_address.clone(),
            shieldd_sdk_asset::Value {
                amount: Amount::zero(),
                asset_id: self.asset_id,
            },
            rseed,
            self.payload_key,
        )
        .expect("synthetic hidden-arity dummy note is valid")
    }
}

pub(crate) fn pad_to_len<T>(
    items: &mut Vec<T>,
    len: usize,
    mut make_padding: impl FnMut(usize) -> T,
) {
    while items.len() < len {
        let slot = items.len();
        items.push(make_padding(slot));
    }
}

pub(crate) fn dummy_state_commitment_proof(commitment: tct::StateCommitment) -> tct::Proof {
    tct::Proof::new(
        commitment,
        0u64.into(),
        [[shieldd_sdk_tct::structure::Hash::new(Fq::from(0u64)); 3]; 24],
    )
}
