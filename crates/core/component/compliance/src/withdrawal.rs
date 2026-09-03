use anyhow::{anyhow, Context, Result};
use decaf377::{Element, Fq, Fr};
use rand_core::{CryptoRng, RngCore};
use shieldd_sdk_asset::asset;
use shieldd_sdk_keys::Address;

use crate::{
    crypto::{compliance_stream_block, encrypt_tier_bytes, ISSUER_DETECTION_DOMAIN},
    issuer_keys::detection_flag_plaintext,
    C2_BYTES, DETECTION_TAG_BYTES, EPK_BYTES, FQ_BYTES,
};

pub const WITHDRAWAL_DETECTION_FQS: usize = 4;
pub const WITHDRAWAL_SENDER_CIPHERTEXT_FQS: usize = 3;
pub const WITHDRAWAL_WIRE_BYTES: usize =
    EPK_BYTES + C2_BYTES + DETECTION_TAG_BYTES + FQ_BYTES * WITHDRAWAL_SENDER_CIPHERTEXT_FQS;

#[derive(Clone, Debug)]
pub struct WithdrawalComplianceCiphertext {
    pub sender_epk: Element,
    pub sender_c2: Fq,
    pub detection_tag: [u8; DETECTION_TAG_BYTES],
    pub encrypted_sender: [u8; FQ_BYTES * WITHDRAWAL_SENDER_CIPHERTEXT_FQS],
}

#[derive(Clone, Debug)]
pub struct WithdrawalCompliancePublicInputs {
    pub sender_epk: Element,
    pub sender_c2: Fq,
    pub detection_ciphertext: [Fq; WITHDRAWAL_DETECTION_FQS],
    pub sender_ciphertext: [Fq; WITHDRAWAL_SENDER_CIPHERTEXT_FQS],
}

#[derive(Clone, Debug)]
pub struct WithdrawalEncryptionResult {
    pub ciphertext: WithdrawalComplianceCiphertext,
    pub sender_seed: Fq,
    pub sender_randomizer: Fr,
}

fn sample_nonzero_scalar(rng: &mut (impl RngCore + CryptoRng)) -> Fr {
    loop {
        let scalar = Fr::rand(&mut *rng);
        if scalar != Fr::from(0u64) {
            return scalar;
        }
    }
}

pub fn derive_withdrawal_salt(root: Fr, label: &[u8]) -> Fq {
    let domain = Fq::from_le_bytes_mod_order(
        blake2b_simd::blake2b(b"shieldd.withdrawal.compliance.salt").as_bytes(),
    );
    let label_fq = Fq::from_le_bytes_mod_order(blake2b_simd::blake2b(label).as_bytes());
    poseidon377::hash_2(
        &domain,
        (Fq::from_le_bytes_mod_order(&root.to_bytes()), label_fq),
    )
}

pub fn encrypt_withdrawal_sender(
    mut rng: impl RngCore + CryptoRng,
    ack_sender: &Element,
    dk_pub: &Element,
    sender_address: &Address,
    asset_id: asset::Id,
    is_flagged: bool,
    detection_salt: Fq,
) -> Result<WithdrawalEncryptionResult> {
    let sender_seed = Fq::rand(&mut rng);
    let sender_randomizer = sample_nonzero_scalar(&mut rng);
    let sender_epk = Element::GENERATOR * sender_randomizer;
    let sender_shared = if is_flagged {
        *dk_pub * sender_randomizer
    } else {
        *ack_sender * sender_randomizer
    };
    let sender_c2 = sender_seed + sender_shared.vartime_compress_to_field();

    let detection_shared = *dk_pub * sender_randomizer;
    let detection_seed = poseidon377::hash_2(
        &ISSUER_DETECTION_DOMAIN,
        (
            detection_shared.vartime_compress_to_field(),
            sender_epk.vartime_compress_to_field(),
        ),
    );
    let words = [
        asset_id.0 + compliance_stream_block(detection_seed, 0),
        detection_salt + compliance_stream_block(detection_seed, 1),
        detection_flag_plaintext(is_flagged) + compliance_stream_block(detection_seed, 2),
        compliance_stream_block(detection_seed, 3),
    ];
    let mut detection_tag = [0u8; DETECTION_TAG_BYTES];
    for (index, word) in words.iter().enumerate() {
        detection_tag[index * FQ_BYTES..(index + 1) * FQ_BYTES].copy_from_slice(&word.to_bytes());
    }
    let mut sender_bytes = Vec::with_capacity(64);
    sender_bytes.extend_from_slice(&sender_address.diversified_generator().vartime_compress().0);
    sender_bytes.extend_from_slice(&sender_address.transmission_key().0);
    let encrypted_sender = encrypt_tier_bytes(&sender_bytes, sender_seed)
        .try_into()
        .map_err(|_| anyhow!("withdrawal sender ciphertext must be three Fqs"))?;

    Ok(WithdrawalEncryptionResult {
        ciphertext: WithdrawalComplianceCiphertext {
            sender_epk,
            sender_c2,
            detection_tag,
            encrypted_sender,
        },
        sender_seed,
        sender_randomizer,
    })
}

impl WithdrawalComplianceCiphertext {
    pub fn to_bytes(&self) -> Vec<u8> {
        let mut bytes = Vec::with_capacity(WITHDRAWAL_WIRE_BYTES);
        bytes.extend_from_slice(&self.sender_epk.vartime_compress().0);
        bytes.extend_from_slice(&self.sender_c2.to_bytes());
        bytes.extend_from_slice(&self.detection_tag);
        bytes.extend_from_slice(&self.encrypted_sender);
        bytes
    }

    pub fn from_bytes(bytes: &[u8]) -> Result<Self> {
        anyhow::ensure!(
            bytes.len() == WITHDRAWAL_WIRE_BYTES,
            "withdrawal compliance ciphertext must be {WITHDRAWAL_WIRE_BYTES} bytes, got {}",
            bytes.len()
        );
        let sender_epk = decaf377::Encoding(bytes[..32].try_into()?)
            .vartime_decompress()
            .map_err(|e| anyhow!("decompress withdrawal sender EPK: {e:?}"))?;
        let sender_c2 = Fq::from_bytes_checked(&bytes[32..64].try_into()?)
            .map_err(|_| anyhow!("invalid withdrawal sender c2"))?;
        let detection_tag: [u8; DETECTION_TAG_BYTES] = bytes[64..192]
            .try_into()
            .context("read withdrawal detection ciphertext")?;
        let encrypted_sender: [u8; 96] = bytes[192..288]
            .try_into()
            .context("read withdrawal sender ciphertext")?;
        for (label, values) in [
            ("detection", detection_tag.as_slice()),
            ("sender", encrypted_sender.as_slice()),
        ] {
            for (index, chunk) in values.chunks_exact(FQ_BYTES).enumerate() {
                Fq::from_bytes_checked(&chunk.try_into().expect("fixed Fq chunk"))
                    .map_err(|_| anyhow!("invalid canonical withdrawal {label} word {index}"))?;
            }
        }
        Ok(Self {
            sender_epk,
            sender_c2,
            detection_tag,
            encrypted_sender,
        })
    }

    pub fn to_circuit_public_inputs(&self) -> WithdrawalCompliancePublicInputs {
        fn decode<const N: usize>(bytes: &[u8]) -> [Fq; N] {
            std::array::from_fn(|index| {
                Fq::from_bytes_checked(
                    &bytes[index * FQ_BYTES..(index + 1) * FQ_BYTES]
                        .try_into()
                        .expect("fixed Fq chunk"),
                )
                .expect("validated ciphertext contains canonical Fqs")
            })
        }
        WithdrawalCompliancePublicInputs {
            sender_epk: self.sender_epk,
            sender_c2: self.sender_c2,
            detection_ciphertext: decode(&self.detection_tag),
            sender_ciphertext: decode(&self.encrypted_sender),
        }
    }
}

const _: () = assert!(WITHDRAWAL_WIRE_BYTES == 288);

#[cfg(test)]
mod tests {
    use super::*;
    use rand_core::OsRng;

    #[test]
    fn withdrawal_ciphertext_round_trips_exact_wire() {
        let address = &shieldd_sdk_keys::test_keys::ADDRESS_0;
        let scalar = Fr::from(7u64);
        let result = encrypt_withdrawal_sender(
            OsRng,
            &(Element::GENERATOR * scalar),
            &(Element::GENERATOR * Fr::from(9u64)),
            address,
            asset::Id(Fq::from(11u64)),
            false,
            Fq::from(13u64),
        )
        .unwrap();
        let bytes = result.ciphertext.to_bytes();
        assert_eq!(bytes.len(), WITHDRAWAL_WIRE_BYTES);
        assert_eq!(
            WithdrawalComplianceCiphertext::from_bytes(&bytes)
                .unwrap()
                .to_bytes(),
            bytes
        );
    }
}
