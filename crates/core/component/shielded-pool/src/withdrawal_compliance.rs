use anyhow::{anyhow, Result};
use decaf377::Fr;
use rand::{rngs::StdRng, SeedableRng};
use shieldd_sdk_compliance::{
    derive_withdrawal_salt, encrypt_withdrawal_sender, AssetPolicy, ComplianceLeaf, IndexedLeaf,
    WithdrawalComplianceCiphertext, WithdrawalComplianceMetadata,
};
use shieldd_sdk_keys::Address;

use crate::shielded_ics20_withdrawal::{
    WithdrawalComplianceCiphertextPublic, WithdrawalCompliancePrivate, WithdrawalCompliancePublic,
};

pub(crate) struct BuildWithdrawalComplianceResult {
    pub ciphertext: WithdrawalComplianceCiphertext,
    pub metadata: WithdrawalComplianceMetadata,
    pub public: WithdrawalCompliancePublic,
    pub private: WithdrawalCompliancePrivate,
}

#[cfg(feature = "component")]
pub(crate) fn public_from_bytes(
    ciphertext: &[u8],
    metadata: &[u8],
) -> Result<WithdrawalCompliancePublic> {
    let ciphertext = WithdrawalComplianceCiphertext::from_bytes(ciphertext)?;
    let metadata = WithdrawalComplianceMetadata::from_bytes(metadata)?;
    let inputs = ciphertext.to_circuit_public_inputs();
    Ok(WithdrawalCompliancePublic {
        ciphertext: WithdrawalComplianceCiphertextPublic {
            epk: inputs.sender_epk,
            c2: inputs.sender_c2,
            detection_ciphertext: inputs.detection_ciphertext.to_vec(),
            sender_ciphertext: inputs.sender_ciphertext.to_vec(),
        },
        metadata,
    })
}

fn rng_seed(nonce_root: Fr) -> [u8; 32] {
    let hash = blake2b_simd::Params::new()
        .hash_length(32)
        .personal(b"pnwdrl-comprng")
        .hash(&nonce_root.to_bytes());
    let mut seed = [0u8; 32];
    seed.copy_from_slice(hash.as_bytes());
    seed
}

#[allow(clippy::too_many_arguments)]
pub(crate) fn build_withdrawal_compliance(
    sender_address: &Address,
    sender_leaf: &ComplianceLeaf,
    asset_policy: Option<&AssetPolicy>,
    asset_indexed_leaf: &IndexedLeaf,
    target_timestamp: u64,
    nonce_root: Fr,
    is_regulated: bool,
    is_flagged: bool,
) -> Result<BuildWithdrawalComplianceResult> {
    anyhow::ensure!(
        !is_flagged || is_regulated,
        "unregulated withdrawal cannot be flagged"
    );
    let (ring_pk, dk_pub, identifiers) = if is_regulated {
        let policy =
            asset_policy.ok_or_else(|| anyhow!("regulated withdrawal missing asset policy"))?;
        (
            asset_indexed_leaf.ring.ring_pk,
            asset_indexed_leaf.params.dk_pub,
            (
                policy.ring.ring_id.as_str(),
                policy.ring.policy_id.as_str(),
                policy.ring.resource.as_str(),
                policy.ring.permission.as_str(),
            ),
        )
    } else {
        (
            *shieldd_sdk_compliance::UNREGULATED_SINK_RING_PK,
            *shieldd_sdk_compliance::UNREGULATED_SINK_DK_PUB,
            ("", "", "", ""),
        )
    };
    let sender_ack = ring_pk * Fr::from_le_bytes_mod_order(&sender_leaf.d.to_bytes());
    let detection_salt = derive_withdrawal_salt(nonce_root, b"detection");
    let sender_salt = derive_withdrawal_salt(nonce_root, b"sender");
    let encryption = encrypt_withdrawal_sender(
        StdRng::from_seed(rng_seed(nonce_root)),
        &sender_ack,
        &dk_pub,
        sender_address,
        sender_leaf.asset_id,
        is_flagged,
        detection_salt,
    )?;
    let metadata = WithdrawalComplianceMetadata::from_identifiers(
        identifiers.0,
        identifiers.1,
        identifiers.2,
        identifiers.3,
        target_timestamp,
        sender_salt,
    );
    metadata.validate()?;
    let inputs = encryption.ciphertext.to_circuit_public_inputs();
    let public = WithdrawalCompliancePublic {
        ciphertext: WithdrawalComplianceCiphertextPublic {
            epk: inputs.sender_epk,
            c2: inputs.sender_c2,
            detection_ciphertext: inputs.detection_ciphertext.to_vec(),
            sender_ciphertext: inputs.sender_ciphertext.to_vec(),
        },
        metadata: metadata.clone(),
    };
    Ok(BuildWithdrawalComplianceResult {
        ciphertext: encryption.ciphertext,
        metadata,
        public,
        private: WithdrawalCompliancePrivate {
            nonce_root,
            sender_randomizer: encryption.sender_randomizer,
        },
    })
}
