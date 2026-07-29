use aes_gcm::{
    aead::{Aead, KeyInit, Payload},
    Aes256Gcm, Nonce,
};
use anyhow::{anyhow, bail, Context, Result};
use bincode::Options as _;
use decaf377::{Element, Encoding, Fq, Fr};
use hkdf::Hkdf;
use rand_core::{CryptoRng, RngCore};
use serde::{Deserialize, Serialize};
use sha2::{Digest, Sha256, Sha512};

use crate::{
    crypto::verify_dleq_native,
    decode_object::{TransferTierKind, TransferTierMetadataStatement},
    indexed_tree::string_to_fq,
};

const ENCRYPT_PROOF_DOMAIN: &[u8; 24] = b"elgamal-encrypt-proof-v1";
const AAD_DOMAIN: &[u8; 15] = b"elgamal-aad-v1\0";
const DERIVATION_DOMAIN: &[u8; 23] = b"elgamal-derivation-v1\0\0";
const POLICY_METADATA_DOMAIN: &[u8] = b"orbis-policy-metadata-v1";
const HKDF_INFO: &[u8] = b"elgamal-aes-key-v1";
const MAX_ORBIS_IDENTIFIER_BYTES: usize = 4 * 1024;
const ENCRYPTED_SEED_BYTES: usize = 32 + 16;
const AES_GCM_NONCE_BYTES: usize = 12;

/// Consensus transport bound for the four-package upload bundle.
pub const MAX_TRANSFER_ORBIS_UPLOAD_BUNDLE_BYTES: usize = 64 * 1024;

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct OrbisSecretEnvelope {
    pub enc_cmt: Vec<u8>,
    pub encrypted_data: Vec<u8>,
    pub nonce: Vec<u8>,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct OrbisEncryptedSeedUploadPackage {
    pub statement: TransferTierMetadataStatement,
    pub ring_id: String,
    pub policy_id: String,
    pub resource: String,
    pub permission: String,
    pub tier_label: String,
    pub timestamp: u64,
    pub salt: String,
    pub encrypted_document: Vec<u8>,
    pub enc_cmt: Vec<u8>,
    pub shared_point: Vec<u8>,
    pub challenge: Vec<u8>,
    pub response: Vec<u8>,
    pub orbis_challenge: Vec<u8>,
    pub orbis_response: Vec<u8>,
    pub derived_pk: Vec<u8>,
    pub metadata_hash: Vec<u8>,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct TransferOrbisUploadBundle {
    pub sender_core: OrbisEncryptedSeedUploadPackage,
    pub sender_ext: OrbisEncryptedSeedUploadPackage,
    pub output_core: OrbisEncryptedSeedUploadPackage,
    pub output_ext: OrbisEncryptedSeedUploadPackage,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
struct EncryptionProof {
    shared_point: Vec<u8>,
    challenge: Vec<u8>,
    response: Vec<u8>,
    derived_pk: Vec<u8>,
}

impl OrbisEncryptedSeedUploadPackage {
    pub fn derivation_bytes(&self) -> [u8; 32] {
        self.statement.subject_derivation_bytes
    }

    pub fn metadata_hash_fq(&self) -> Result<Fq> {
        let metadata: [u8; 32] = self
            .metadata_hash
            .clone()
            .try_into()
            .map_err(|_| anyhow!("metadata_hash must be 32 bytes"))?;
        Fq::from_bytes_checked(&metadata).map_err(|_| anyhow!("invalid metadata_hash"))
    }

    pub fn orbis_policy_metadata(&self) -> Vec<u8> {
        encode_orbis_policy_metadata(
            &self.policy_id,
            &self.resource,
            &self.permission,
            Some(&self.tier_label),
            Some(self.timestamp),
            Some(&self.salt),
        )
    }

    pub fn derived_pk(&self) -> Result<Element> {
        parse_element(&self.derived_pk, "derived_pk")
    }

    pub fn enc_cmt(&self) -> Result<Element> {
        parse_element(&self.enc_cmt, "enc_cmt")
    }

    pub fn shared_point(&self) -> Result<Element> {
        parse_element(&self.shared_point, "shared_point")
    }

    pub fn response_scalar(&self) -> Result<Fr> {
        let bytes: [u8; 32] = self
            .response
            .clone()
            .try_into()
            .map_err(|_| anyhow!("response must be 32 bytes"))?;
        Fr::from_bytes_checked(&bytes).map_err(|_| anyhow!("invalid response scalar"))
    }

    pub fn challenge_scalar(&self) -> Result<Fq> {
        parse_challenge(&self.challenge, "challenge")
    }

    pub fn orbis_response_scalar(&self) -> Result<Fr> {
        let bytes: [u8; 32] = self
            .orbis_response
            .clone()
            .try_into()
            .map_err(|_| anyhow!("orbis_response must be 32 bytes"))?;
        Fr::from_bytes_checked(&bytes).map_err(|_| anyhow!("invalid orbis_response scalar"))
    }

    pub fn orbis_challenge_scalar(&self) -> Result<Fq> {
        parse_challenge(&self.orbis_challenge, "orbis_challenge")
    }

    pub fn validate(&self) -> Result<()> {
        self.statement.validate_shape()?;
        for (label, value) in [
            ("ring_id", self.ring_id.as_str()),
            ("policy_id", self.policy_id.as_str()),
            ("resource", self.resource.as_str()),
            ("permission", self.permission.as_str()),
        ] {
            anyhow::ensure!(
                value.len() <= MAX_ORBIS_IDENTIFIER_BYTES,
                "{label} exceeds {MAX_ORBIS_IDENTIFIER_BYTES} bytes"
            );
        }
        anyhow::ensure!(
            string_to_fq(&self.ring_id) == self.statement.ring_id_hash()?,
            "ring_id does not match statement ring_id_hash"
        );
        anyhow::ensure!(
            string_to_fq(&self.policy_id) == self.statement.policy_id_hash()?,
            "policy_id does not match statement policy_id_hash"
        );
        anyhow::ensure!(
            string_to_fq(&self.resource) == self.statement.resource_hash()?,
            "resource does not match statement resource_hash"
        );
        anyhow::ensure!(
            string_to_fq(&self.permission) == self.statement.permission_hash()?,
            "permission does not match statement permission_hash"
        );
        anyhow::ensure!(
            self.tier_label == self.statement.tier.label(),
            "tier_label does not match statement tier"
        );
        anyhow::ensure!(
            self.timestamp == self.statement.target_timestamp,
            "timestamp does not match statement target_timestamp"
        );
        anyhow::ensure!(
            self.salt == hex::encode(self.statement.salt()?.to_bytes()),
            "salt does not match statement salt"
        );
        let derived_pk = self.derived_pk()?;
        let enc_cmt = self.enc_cmt()?;
        let shared_point = self.shared_point()?;
        let transfer_metadata_hash = self.statement.metadata_hash()?;
        verify_dleq_native(
            &derived_pk,
            &enc_cmt,
            &shared_point,
            &self.challenge_scalar()?,
            &self.response_scalar()?,
            transfer_metadata_hash,
        )?;

        let secret: OrbisSecretEnvelope = serde_json::from_slice(&self.encrypted_document)
            .context("encrypted_document must be a seed envelope")?;
        anyhow::ensure!(
            serde_json::to_vec(&secret)? == self.encrypted_document,
            "encrypted_document must use canonical JSON encoding"
        );
        anyhow::ensure!(
            secret.enc_cmt == self.enc_cmt,
            "encrypted_document enc_cmt does not match package enc_cmt"
        );
        parse_element(&secret.enc_cmt, "encrypted_document enc_cmt")?;
        anyhow::ensure!(
            secret.encrypted_data.len() == ENCRYPTED_SEED_BYTES,
            "encrypted_document encrypted_data must be {ENCRYPTED_SEED_BYTES} bytes"
        );
        anyhow::ensure!(
            secret.nonce.len() == AES_GCM_NONCE_BYTES,
            "encrypted_document nonce must be {AES_GCM_NONCE_BYTES} bytes"
        );

        let metadata_hash = self.orbis_policy_metadata();
        anyhow::ensure!(
            self.metadata_hash == metadata_hash,
            "metadata_hash does not match Orbis policy metadata"
        );
        verify_dleq_native(
            &derived_pk,
            &enc_cmt,
            &shared_point,
            &self.orbis_challenge_scalar()?,
            &self.orbis_response_scalar()?,
            self.metadata_hash_fq()?,
        )
    }

    pub fn validate_c2_seed(&self, c2: Fq, seed: Fq) -> Result<()> {
        let expected_c2 = seed + self.shared_point()?.vartime_compress_to_field();
        anyhow::ensure!(
            c2 == expected_c2,
            "{} c2 does not match decrypted seed and shared point",
            self.statement.tier.label()
        );
        Ok(())
    }
}

impl TransferOrbisUploadBundle {
    pub fn to_bytes(&self) -> Result<Vec<u8>> {
        self.validate()?;
        upload_bundle_bincode_options()
            .serialize(self)
            .context("failed to serialize Orbis upload bundle")
    }

    pub fn from_bytes(bytes: &[u8]) -> Result<Self> {
        anyhow::ensure!(
            bytes.len() <= MAX_TRANSFER_ORBIS_UPLOAD_BUNDLE_BYTES,
            "Orbis upload bundle exceeds {MAX_TRANSFER_ORBIS_UPLOAD_BUNDLE_BYTES} bytes"
        );
        let bundle: Self = upload_bundle_bincode_options()
            .deserialize(bytes)
            .context("failed to deserialize Orbis upload bundle")?;
        bundle.validate()?;
        Ok(bundle)
    }

    pub fn validate(&self) -> Result<()> {
        for (label, package, expected_tier) in [
            (
                "sender_core",
                &self.sender_core,
                TransferTierKind::SenderCore,
            ),
            ("sender_ext", &self.sender_ext, TransferTierKind::SenderExt),
            (
                "output_core",
                &self.output_core,
                TransferTierKind::OutputCore,
            ),
            ("output_ext", &self.output_ext, TransferTierKind::OutputExt),
        ] {
            anyhow::ensure!(
                package.statement.tier == expected_tier,
                "{label} package has the wrong transfer tier"
            );
        }
        self.sender_core.validate()?;
        self.sender_ext.validate()?;
        self.output_core.validate()?;
        self.output_ext.validate()?;
        Ok(())
    }
}

fn upload_bundle_bincode_options() -> impl bincode::Options {
    bincode::DefaultOptions::new()
        .with_fixint_encoding()
        .with_limit(MAX_TRANSFER_ORBIS_UPLOAD_BUNDLE_BYTES as u64)
        .reject_trailing_bytes()
}

pub fn encode_orbis_policy_metadata(
    policy_id: &str,
    resource: &str,
    permission: &str,
    tier: Option<&str>,
    timestamp: Option<u64>,
    salt: Option<&str>,
) -> Vec<u8> {
    let domain = Fq::from_le_bytes_mod_order(POLICY_METADATA_DOMAIN);
    let ts_le = timestamp.map(|t| t.to_le_bytes());
    let ts_bytes: &[u8] = ts_le.as_ref().map_or(&[], |b| b.as_slice());

    let mut inputs = Vec::new();
    for field in &[
        policy_id.as_bytes(),
        resource.as_bytes(),
        permission.as_bytes(),
        tier.unwrap_or("").as_bytes(),
        ts_bytes,
        salt.unwrap_or("").as_bytes(),
    ] {
        inputs.push(Fq::from(field.len() as u64));
        for chunk in field.chunks(31) {
            inputs.push(Fq::from_le_bytes_mod_order(chunk));
        }
    }

    let mut state = domain;
    for pair in inputs.chunks(2) {
        state = if pair.len() == 2 {
            poseidon377::hash_2(&state, (pair[0], pair[1]))
        } else {
            poseidon377::hash_1(&state, pair[0])
        };
    }

    state.to_bytes().to_vec()
}

pub fn build_orbis_encrypted_seed_upload_package(
    mut rng: impl RngCore + CryptoRng,
    ring_pk: &Element,
    seed: Fq,
    statement: TransferTierMetadataStatement,
    ring_id: &str,
    policy_id: &str,
    resource: &str,
    permission: &str,
    tier: TransferTierKind,
    timestamp: u64,
    salt: Fq,
) -> Result<OrbisEncryptedSeedUploadPackage> {
    let r = loop {
        let mut bytes = [0u8; 64];
        rng.fill_bytes(&mut bytes);
        let candidate = Fr::from_le_bytes_mod_order(&bytes);
        if candidate != Fr::from(0u64) {
            break candidate;
        }
    };
    build_orbis_encrypted_seed_upload_package_with_randomness(
        &mut rng, ring_pk, seed, r, statement, ring_id, policy_id, resource, permission, tier,
        timestamp, salt,
    )
}

pub fn build_orbis_encrypted_seed_upload_package_with_randomness(
    rng: &mut (impl RngCore + CryptoRng),
    ring_pk: &Element,
    seed: Fq,
    r: Fr,
    statement: TransferTierMetadataStatement,
    ring_id: &str,
    policy_id: &str,
    resource: &str,
    permission: &str,
    tier: TransferTierKind,
    timestamp: u64,
    salt: Fq,
) -> Result<OrbisEncryptedSeedUploadPackage> {
    statement.validate_shape()?;
    let derivation_bytes = statement.subject_derivation_bytes;
    anyhow::ensure!(
        string_to_fq(ring_id) == statement.ring_id_hash()?,
        "ring_id does not match statement ring_id_hash"
    );
    anyhow::ensure!(
        string_to_fq(policy_id) == statement.policy_id_hash()?,
        "policy_id does not match statement policy_id_hash"
    );
    anyhow::ensure!(
        string_to_fq(resource) == statement.resource_hash()?,
        "resource does not match statement resource_hash"
    );
    anyhow::ensure!(
        string_to_fq(permission) == statement.permission_hash()?,
        "permission does not match statement permission_hash"
    );
    anyhow::ensure!(statement.tier == tier, "tier does not match statement tier");
    anyhow::ensure!(
        statement.target_timestamp == timestamp,
        "timestamp does not match statement target_timestamp"
    );
    anyhow::ensure!(
        statement.salt()? == salt,
        "salt does not match statement salt"
    );

    let tier_label = tier.label().to_string();
    let salt_hex = hex::encode(salt.to_bytes());
    let transfer_metadata_hash = statement.metadata_hash()?.to_bytes().to_vec();
    let metadata_hash = encode_orbis_policy_metadata(
        policy_id,
        resource,
        permission,
        Some(tier.label()),
        Some(timestamp),
        Some(&salt_hex),
    );

    let (enc_cmt, encrypted_secret, proof) = encrypt_secret_with_randomness(
        rng,
        ring_pk,
        &seed.to_bytes(),
        r,
        Some(&derivation_bytes),
        Some(&transfer_metadata_hash),
    )?;
    let derived_pk = parse_element(&proof.derived_pk, "derived_pk")?;
    let shared_point = parse_element(&proof.shared_point, "shared_point")?;
    let (orbis_challenge, orbis_response) = generate_encryption_proof(
        rng,
        &r,
        &derived_pk,
        &enc_cmt,
        &shared_point,
        Some(&metadata_hash),
    )?;

    Ok(OrbisEncryptedSeedUploadPackage {
        statement,
        ring_id: ring_id.to_string(),
        policy_id: policy_id.to_string(),
        resource: resource.to_string(),
        permission: permission.to_string(),
        tier_label,
        timestamp,
        salt: salt_hex,
        encrypted_document: serde_json::to_vec(&encrypted_secret)
            .context("failed to serialize encrypted seed envelope")?,
        enc_cmt: enc_cmt.vartime_compress().0.to_vec(),
        shared_point: proof.shared_point,
        challenge: proof.challenge,
        response: proof.response,
        orbis_challenge: orbis_challenge.to_bytes().to_vec(),
        orbis_response: orbis_response.to_bytes().to_vec(),
        derived_pk: proof.derived_pk,
        metadata_hash,
    })
}

pub fn decrypt_orbis_reencrypted_seed(
    package: &OrbisEncryptedSeedUploadPackage,
    reader_sk: &Fr,
    xnc_cmt: &Element,
    secret: &OrbisSecretEnvelope,
) -> Result<Fq> {
    let effective_pk = package.derived_pk()?;
    let xs_g = effective_pk * *reader_sk;
    let shared_point = *xnc_cmt - xs_g;
    let aes_key = derive_key_from_point(&shared_point)?;
    let cipher = Aes256Gcm::new(&aes_key.into());
    let aad = build_aad(&secret.enc_cmt, &shared_point.vartime_compress().0);
    let plaintext = cipher
        .decrypt(
            Nonce::from_slice(&secret.nonce),
            Payload {
                msg: &secret.encrypted_data,
                aad: &aad,
            },
        )
        .map_err(|_| anyhow!("failed to decrypt Orbis re-encrypted seed envelope"))?;
    let seed_bytes: [u8; 32] = plaintext
        .try_into()
        .map_err(|_| anyhow!("seed plaintext must be 32 bytes"))?;
    Fq::from_bytes_checked(&seed_bytes).map_err(|_| anyhow!("invalid decrypted seed"))
}

fn encrypt_secret_with_randomness(
    rng: &mut (impl RngCore + CryptoRng),
    dkg_pk: &Element,
    data: &[u8],
    r: Fr,
    derivation: Option<&[u8]>,
    metadata: Option<&[u8]>,
) -> Result<(Element, OrbisSecretEnvelope, EncryptionProof)> {
    if *dkg_pk == Element::default() {
        bail!("invalid dkg_pk: cannot be the identity element");
    }
    let enc_cmt = Element::GENERATOR * r;

    let (effective_pk, derived_pk) = if let Some(deriv_bytes) = derivation {
        let d = derive_capability_scalar(deriv_bytes);
        if d == Fr::from(0u64) {
            bail!("derivation produced zero scalar");
        }
        let derived_pk = *dkg_pk * d;
        if derived_pk == Element::default() {
            bail!("derived public key is the identity element");
        }
        (derived_pk, derived_pk.vartime_compress().0.to_vec())
    } else {
        (*dkg_pk, dkg_pk.vartime_compress().0.to_vec())
    };

    let shared_point = effective_pk * r;
    let (challenge, response) =
        generate_encryption_proof(rng, &r, &effective_pk, &enc_cmt, &shared_point, metadata)?;

    let shared_point_bytes = shared_point.vartime_compress().0.to_vec();
    let aes_key = derive_key_from_point(&shared_point)?;
    let cipher = Aes256Gcm::new(&aes_key.into());

    let mut nonce_bytes = [0u8; 12];
    rng.fill_bytes(&mut nonce_bytes);
    let nonce = Nonce::from_slice(&nonce_bytes);

    let enc_cmt_bytes = enc_cmt.vartime_compress().0.to_vec();
    let aad = build_aad(&enc_cmt_bytes, &shared_point_bytes);
    let ciphertext = cipher
        .encrypt(
            nonce,
            Payload {
                msg: data,
                aad: &aad,
            },
        )
        .map_err(|_| anyhow!("encryption failed"))?;

    Ok((
        enc_cmt,
        OrbisSecretEnvelope {
            enc_cmt: enc_cmt_bytes,
            encrypted_data: ciphertext,
            nonce: nonce_bytes.to_vec(),
        },
        EncryptionProof {
            shared_point: shared_point_bytes,
            challenge: challenge.to_bytes().to_vec(),
            response: response.to_bytes().to_vec(),
            derived_pk,
        },
    ))
}

/// Derive a capability scalar — must match Orbis `derive_capability_scalar`
/// (SHA-512 digest reduced mod `Fr`, wide reduction).
fn derive_capability_scalar(derivation: &[u8]) -> Fr {
    let mut hasher = Sha512::new();
    hasher.update(DERIVATION_DOMAIN);
    hasher.update(derivation);
    let hash = hasher.finalize();
    Fr::from_le_bytes_mod_order(&hash)
}

fn derive_key_from_point(point: &Element) -> Result<[u8; 32]> {
    let point_bytes = point.vartime_compress().0;
    let hkdf = Hkdf::<Sha256>::new(None, &point_bytes);
    let mut key = [0u8; 32];
    hkdf.expand(HKDF_INFO, &mut key)
        .map_err(|_| anyhow!("HKDF expansion failed"))?;
    Ok(key)
}

fn build_aad(enc_cmt_bytes: &[u8], shared_point_bytes: &[u8]) -> [u8; 32] {
    let mut hasher = Sha256::new();
    hasher.update(AAD_DOMAIN);
    hasher.update(enc_cmt_bytes);
    hasher.update(shared_point_bytes);
    hasher.finalize().into()
}

fn generate_encryption_proof(
    rng: &mut (impl RngCore + CryptoRng),
    r: &Fr,
    dkg_pk: &Element,
    enc_cmt: &Element,
    shared_point: &Element,
    metadata: Option<&[u8]>,
) -> Result<(Fr, Fr)> {
    let metadata_arr: Option<[u8; 32]> = metadata
        .map(|m| {
            m.try_into()
                .map_err(|_| anyhow!("metadata must be exactly 32 bytes"))
        })
        .transpose()?;

    let mut bytes = [0u8; 64];
    rng.fill_bytes(&mut bytes);
    let k = Fr::from_le_bytes_mod_order(&bytes);

    let r1 = Element::GENERATOR * k;
    let r2 = *dkg_pk * k;
    let challenge = hash_encryption_proof_points(
        &Element::GENERATOR,
        dkg_pk,
        enc_cmt,
        shared_point,
        &r1,
        &r2,
        metadata_arr.as_ref(),
    );

    Ok((challenge, k + (challenge * *r)))
}

fn hash_encryption_proof_points(
    g: &Element,
    dkg_pk: &Element,
    enc_cmt: &Element,
    shared_point: &Element,
    r1: &Element,
    r2: &Element,
    metadata: Option<&[u8; 32]>,
) -> Fr {
    let metadata_fq = metadata
        .map(|bytes| Fq::from_le_bytes_mod_order(bytes))
        .unwrap_or_else(|| Fq::from(0u64));
    let domain = Fq::from_le_bytes_mod_order(ENCRYPT_PROOF_DOMAIN);
    let hash = poseidon377::hash_7(
        &domain,
        (
            metadata_fq,
            g.vartime_compress_to_field(),
            dkg_pk.vartime_compress_to_field(),
            enc_cmt.vartime_compress_to_field(),
            shared_point.vartime_compress_to_field(),
            r1.vartime_compress_to_field(),
            r2.vartime_compress_to_field(),
        ),
    );
    fq_to_challenge_scalar(hash)
}

fn fq_to_challenge_scalar(fq: Fq) -> Fr {
    let mut bytes = fq.to_bytes();
    let keep_bits = Fr::MODULUS_BIT_SIZE as usize - 1;
    let keep_bytes = keep_bits.div_ceil(8);
    let spare_bits = keep_bytes * 8 - keep_bits;
    bytes[keep_bytes - 1] &= 0xff >> spare_bits;
    Fr::from_le_bytes_mod_order(&bytes)
}

fn parse_element(bytes: &[u8], label: &str) -> Result<Element> {
    let bytes: [u8; 32] = bytes
        .try_into()
        .map_err(|_| anyhow!("{label} must be 32 bytes"))?;
    Encoding(bytes)
        .vartime_decompress()
        .map_err(|_| anyhow!("invalid {label} encoding"))
}

fn parse_challenge(bytes: &[u8], label: &str) -> Result<Fq> {
    let bytes: [u8; 32] = bytes
        .try_into()
        .map_err(|_| anyhow!("{label} must be 32 bytes"))?;
    let scalar = Fr::from_bytes_checked(&bytes).map_err(|_| anyhow!("invalid {label} scalar"))?;
    // The wire challenge is an Fr scalar. The compliance statement and circuit
    // expose that canonical scalar through their Fq-valued public-input type.
    Ok(Fq::from_le_bytes_mod_order(&scalar.to_bytes()))
}

#[cfg(test)]
mod tests {
    use super::*;
    use rand_core::OsRng;

    fn encode_unvalidated(bundle: &TransferOrbisUploadBundle) -> Vec<u8> {
        upload_bundle_bincode_options()
            .serialize(bundle)
            .expect("serialize test bundle")
    }

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
    fn upload_bundle_decode_is_bounded_and_canonical() {
        let (_, bundle, _) = crate::evidence::tests::valid_evidence_fixture();
        let encoded = bundle.to_bytes().expect("serialize valid upload bundle");
        assert!(encoded.len() < MAX_TRANSFER_ORBIS_UPLOAD_BUNDLE_BYTES);

        let decoded =
            TransferOrbisUploadBundle::from_bytes(&encoded).expect("decode canonical bundle");
        decoded.validate().expect("validate canonical bundle");

        let mut trailing = encoded.clone();
        trailing.push(0);
        TransferOrbisUploadBundle::from_bytes(&trailing)
            .expect_err("trailing upload bundle bytes must be rejected");

        TransferOrbisUploadBundle::from_bytes(&vec![
            0u8;
            MAX_TRANSFER_ORBIS_UPLOAD_BUNDLE_BYTES + 1
        ])
        .expect_err("oversized upload bundle must be rejected before decoding");

        let mut claimed_length = encoded;
        let ring_id_length = ("ring-id".len() as u64).to_le_bytes();
        let length_offset = claimed_length
            .windows(ring_id_length.len())
            .position(|window| window == ring_id_length)
            .expect("canonical bundle contains the ring ID length");
        claimed_length[length_offset..length_offset + 8].copy_from_slice(&u64::MAX.to_le_bytes());
        TransferOrbisUploadBundle::from_bytes(&claimed_length)
            .expect_err("claimed vector length beyond the decode budget must fail");
    }

    #[test]
    fn upload_bundle_validation_rejects_semantic_encoding_aliases() {
        let (_, bundle, _) = crate::evidence::tests::valid_evidence_fixture();

        let mut noncanonical_challenge = bundle.clone();
        noncanonical_challenge.sender_core.challenge = fr_modulus_bytes().to_vec();
        TransferOrbisUploadBundle::from_bytes(&encode_unvalidated(&noncanonical_challenge))
            .expect_err("non-canonical challenge scalar must fail");

        let mut noncanonical_document = bundle.clone();
        noncanonical_document
            .sender_core
            .encrypted_document
            .push(b' ');
        TransferOrbisUploadBundle::from_bytes(&encode_unvalidated(&noncanonical_document))
            .expect_err("non-canonical encrypted document JSON must fail");

        let mut oversized_identifier = bundle.clone();
        oversized_identifier.sender_core.ring_id = "x".repeat(MAX_ORBIS_IDENTIFIER_BYTES + 1);
        oversized_identifier
            .to_bytes()
            .expect_err("canonical encoder must reject oversized identifiers");
        TransferOrbisUploadBundle::from_bytes(&encode_unvalidated(&oversized_identifier))
            .expect_err("oversized upload package identifier must fail");

        let mut swapped_tiers = bundle;
        std::mem::swap(
            &mut swapped_tiers.sender_core,
            &mut swapped_tiers.sender_ext,
        );
        swapped_tiers
            .to_bytes()
            .expect_err("canonical encoder must reject packages in the wrong tier slot");
        TransferOrbisUploadBundle::from_bytes(&encode_unvalidated(&swapped_tiers))
            .expect_err("upload packages in the wrong tier slot must fail");
    }

    #[test]
    fn upload_package_roundtrips_seed_and_proof() {
        let mut rng = OsRng;
        let ring_sk = Fr::rand(&mut rng);
        let ring_pk = Element::GENERATOR * ring_sk;
        let statement = TransferTierMetadataStatement::from_identifiers(
            Fq::from(42u64),
            "ring-id",
            "policy-id",
            "document",
            "read",
            TransferTierKind::OutputCore,
            1_700_000_000,
            Fq::from(99u64),
        );
        let seed = Fq::from(7u64);
        let package = build_orbis_encrypted_seed_upload_package(
            &mut rng,
            &ring_pk,
            seed,
            statement,
            "ring-id",
            "policy-id",
            "document",
            "read",
            TransferTierKind::OutputCore,
            1_700_000_000,
            Fq::from(99u64),
        )
        .expect("package should build");

        package.validate().expect("proof should validate");

        let reader_sk = Fr::rand(&mut rng);
        let derived_pk = package.derived_pk().expect("derived_pk");
        let xnc_cmt = package.shared_point().expect("shared_point") + (derived_pk * reader_sk);
        let secret: OrbisSecretEnvelope = serde_json::from_slice(&package.encrypted_document)
            .expect("encrypted document should deserialize");
        let recovered = decrypt_orbis_reencrypted_seed(&package, &reader_sk, &xnc_cmt, &secret)
            .expect("seed should decrypt");
        assert_eq!(recovered, seed);
    }

    #[test]
    fn upload_package_binds_orbis_policy_metadata() {
        let mut rng = OsRng;
        let ring_pk = Element::GENERATOR * Fr::rand(&mut rng);
        let statement = TransferTierMetadataStatement::from_identifiers(
            Fq::from(42u64),
            "ring-id",
            "policy-id",
            "document",
            "read",
            TransferTierKind::OutputCore,
            1_700_000_000,
            Fq::from(99u64),
        );

        let package = build_orbis_encrypted_seed_upload_package(
            &mut rng,
            &ring_pk,
            Fq::from(7u64),
            statement.clone(),
            "ring-id",
            "policy-id",
            "document",
            "read",
            TransferTierKind::OutputCore,
            1_700_000_000,
            Fq::from(99u64),
        )
        .expect("package should build");

        let canonical_metadata = statement.metadata_hash().expect("canonical metadata");
        let orbis_metadata = package.orbis_policy_metadata();

        assert_eq!(package.metadata_hash, orbis_metadata);
        assert_ne!(
            package.metadata_hash,
            canonical_metadata.to_bytes().to_vec()
        );
        assert_ne!(package.challenge, package.orbis_challenge);
        assert_ne!(package.response, package.orbis_response);
        package
            .validate()
            .expect("proof should validate with Orbis metadata");
    }
}
