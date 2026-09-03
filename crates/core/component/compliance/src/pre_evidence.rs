//! Native verification for ordinary Orbis PRE and issuer DH evidence.
//!
//! The evidence is private auditor input. Verification binds the ordinary PRE
//! relation to the exact ring capability, trial derivation, ciphertext EPK, and
//! reader key before a shared point may be used by a seizure witness. The
//! bulletin object ID is bookkeeping, not a second transaction attestation.

use std::collections::BTreeSet;

use anyhow::{bail, ensure, Result};
use ark_ff::{BigInteger, PrimeField};
use decaf377::{Element, Fr};
use once_cell::sync::Lazy;
use sha2::{Digest, Sha512};
use shieldd_sdk_asset::asset;
use shieldd_sdk_keys::Address;
use shieldd_sdk_proto::{core::component::compliance::v1 as pb, DomainType};

pub const PRE_EVIDENCE_VERSION: u32 = 1;
pub const MAX_PRE_EVIDENCE_ID_BYTES: usize = 256;
pub const MAX_PRE_DERIVATION_BYTES: usize = 256;
pub const MAX_PRE_SHARES: usize = 64;

const ORBIS_DERIVATION_DOMAIN: &[u8] = b"elgamal-derivation-v1\0\0";
const ORBIS_PRE_DLEQ_DOMAIN: &[u8] = b"elgamal-reencrypt-challenge-v1";
const ADDRESS_DH_RELEASE_DOMAIN: &[u8] = b"shieldd.orbis.address_dh.release.v1";
const ADDRESS_DH_DLEQ_DOMAIN: &[u8] = b"shieldd.orbis.address_dh.share.v1";
static ISSUER_DLEQ_DOMAIN: Lazy<decaf377::Fq> =
    Lazy::new(|| decaf377::Fq::from_le_bytes_mod_order(b"shieldd.issuer.dh_evidence.dleq.v1\0"));

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct DleqProof {
    pub commitment_g: Element,
    pub commitment_h: Element,
    pub response: Fr,
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct PreShareEvidence {
    pub participant_index: u32,
    pub capability_share: Element,
    pub reencrypted_share: Element,
    /// Fiat-Shamir challenge returned by ordinary Orbis PRE.
    pub challenge: Fr,
    /// Schnorr response returned by ordinary Orbis PRE.
    pub response: Fr,
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct PreEvidence {
    pub version: u32,
    pub ring_id: String,
    /// Ordinary bulletin identifier; not an additional transaction binding.
    pub object_id: String,
    /// Opaque capability selected by the authority-controlled ring setup.
    pub release_scope_commitment: [u8; 32],
    /// Untrusted trial derivation passed to ordinary `StartPre`.
    pub derivation: Vec<u8>,
    pub ring_pk: Element,
    pub ciphertext_epk: Element,
    pub reader_pk: Element,
    pub threshold: u32,
    pub shares: Vec<PreShareEvidence>,
}

/// Representation-neutral output of the evolving ACP adapter.
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct EvidenceReleaseAuthorization {
    pub ring_id: String,
    pub release_scope_commitment: [u8; 32],
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct VerifiedPreEvidence {
    capability: Element,
    reencrypted_point: Element,
    ciphertext_epk: Element,
    reader_pk: Element,
}

/// Complete context Orbis authorizes before releasing an address-scoped RNK DH point.
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct AddressDhReleaseRequest {
    pub ring_id: String,
    pub asset_id: asset::Id,
    pub address: Address,
    pub ring_pk: Element,
    pub reader_pk: Element,
    pub authority_instruction_hash: [u8; 32],
    pub expires_at_unix: u64,
    pub request_nonce: [u8; 32],
}

/// Threshold evidence for `ring_sk * (reader_pk + pk_d)`.
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct AddressDhReleaseEvidence {
    pub request: AddressDhReleaseRequest,
    pub threshold: u32,
    pub shares: Vec<PreShareEvidence>,
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct VerifiedAddressDhRelease {
    ring_pk: Element,
    reader_pk: Element,
    reencrypted_point: Element,
}

fn decode_element(bytes: Vec<u8>, label: &str) -> Result<Element> {
    let bytes: [u8; 32] = bytes.try_into().map_err(|bytes: Vec<u8>| {
        anyhow::anyhow!("{label} must be 32 bytes, got {}", bytes.len())
    })?;
    decaf377::Encoding(bytes)
        .vartime_decompress()
        .map_err(|_| anyhow::anyhow!("invalid {label} point encoding"))
}

fn decode_fr(bytes: Vec<u8>, label: &str) -> Result<Fr> {
    let bytes: [u8; 32] = bytes.try_into().map_err(|bytes: Vec<u8>| {
        anyhow::anyhow!("{label} must be 32 bytes, got {}", bytes.len())
    })?;
    Fr::from_bytes_checked(&bytes).map_err(|_| anyhow::anyhow!("invalid canonical {label} scalar"))
}

fn decode32(bytes: Vec<u8>, label: &str) -> Result<[u8; 32]> {
    bytes
        .try_into()
        .map_err(|bytes: Vec<u8>| anyhow::anyhow!("{label} must be 32 bytes, got {}", bytes.len()))
}

impl DomainType for PreEvidence {
    type Proto = pb::PreEvidence;
}

impl TryFrom<pb::PreEvidence> for PreEvidence {
    type Error = anyhow::Error;

    fn try_from(value: pb::PreEvidence) -> Result<Self> {
        let evidence = Self {
            version: value.version,
            ring_id: value.ring_id,
            object_id: value.object_id,
            release_scope_commitment: decode32(
                value.release_scope_commitment,
                "PRE release scope commitment",
            )?,
            derivation: value.derivation,
            ring_pk: decode_element(value.ring_pk, "PRE ring_pk")?,
            ciphertext_epk: decode_element(value.ciphertext_epk, "PRE ciphertext_epk")?,
            reader_pk: decode_element(value.reader_pk, "PRE reader_pk")?,
            threshold: value.threshold,
            shares: value
                .shares
                .into_iter()
                .map(|share| {
                    Ok(PreShareEvidence {
                        participant_index: share.participant_index,
                        capability_share: decode_element(
                            share.capability_share,
                            "PRE capability share",
                        )?,
                        reencrypted_share: decode_element(
                            share.reencrypted_share,
                            "PRE reencrypted share",
                        )?,
                        challenge: decode_fr(share.challenge, "PRE challenge")?,
                        response: decode_fr(share.response, "PRE response")?,
                    })
                })
                .collect::<Result<_>>()?,
        };
        ensure!(
            evidence.shares.len() <= MAX_PRE_SHARES,
            "PRE evidence exceeds the share limit"
        );
        Ok(evidence)
    }
}

impl From<PreEvidence> for pb::PreEvidence {
    fn from(value: PreEvidence) -> Self {
        Self {
            version: value.version,
            ring_id: value.ring_id,
            object_id: value.object_id,
            release_scope_commitment: value.release_scope_commitment.to_vec(),
            derivation: value.derivation,
            ring_pk: value.ring_pk.vartime_compress().0.to_vec(),
            ciphertext_epk: value.ciphertext_epk.vartime_compress().0.to_vec(),
            reader_pk: value.reader_pk.vartime_compress().0.to_vec(),
            threshold: value.threshold,
            shares: value
                .shares
                .into_iter()
                .map(|share| pb::PreShareEvidence {
                    participant_index: share.participant_index,
                    capability_share: share.capability_share.vartime_compress().0.to_vec(),
                    reencrypted_share: share.reencrypted_share.vartime_compress().0.to_vec(),
                    challenge: share.challenge.to_bytes().to_vec(),
                    response: share.response.to_bytes().to_vec(),
                })
                .collect(),
        }
    }
}

impl VerifiedPreEvidence {
    pub fn capability(&self) -> Element {
        self.capability
    }

    pub fn reencrypted_point(&self) -> Element {
        self.reencrypted_point
    }

    pub fn recover_shared_point(&self, reader_secret: Fr) -> Result<Element> {
        ensure!(
            Element::GENERATOR * reader_secret == self.reader_pk,
            "PRE reader secret does not match reader_pk"
        );
        let shared = self.reencrypted_point - self.capability * reader_secret;
        ensure!(
            !shared.is_identity(),
            "PRE recovered an identity shared point"
        );
        Ok(shared)
    }

    pub fn ciphertext_epk(&self) -> Element {
        self.ciphertext_epk
    }
}

impl PreEvidence {
    pub fn verify(
        &self,
        authorization: &EvidenceReleaseAuthorization,
    ) -> Result<VerifiedPreEvidence> {
        ensure!(
            self.version == PRE_EVIDENCE_VERSION,
            "unsupported PRE evidence version {}",
            self.version
        );
        validate_id("ring_id", &self.ring_id)?;
        validate_id("object_id", &self.object_id)?;
        validate_id("authorized ring_id", &authorization.ring_id)?;
        ensure!(
            self.ring_id == authorization.ring_id,
            "PRE evidence ring is not the authorized ring"
        );
        ensure!(
            self.release_scope_commitment != [0; 32],
            "PRE evidence release scope must be nonzero"
        );
        ensure!(
            self.release_scope_commitment == authorization.release_scope_commitment,
            "PRE evidence release scope differs from the authority-selected ring scope"
        );
        ensure!(
            !self.derivation.is_empty() && self.derivation.len() <= MAX_PRE_DERIVATION_BYTES,
            "invalid PRE trial derivation length"
        );
        ensure_nonidentity("ring_pk", self.ring_pk)?;
        ensure_nonidentity("ciphertext_epk", self.ciphertext_epk)?;
        ensure_nonidentity("reader_pk", self.reader_pk)?;
        ensure!(self.threshold > 0, "PRE threshold must be nonzero");
        ensure!(
            self.shares.len() == self.threshold as usize,
            "PRE evidence must contain exactly threshold shares"
        );
        ensure!(
            self.shares.len() <= MAX_PRE_SHARES,
            "PRE evidence exceeds the share limit"
        );

        let reader_base = self.reader_pk + self.ciphertext_epk;
        ensure_nonidentity("reader_pk + ciphertext_epk", reader_base)?;
        let mut indices = BTreeSet::new();
        for share in &self.shares {
            ensure!(
                share.participant_index > 0,
                "PRE participant index must be nonzero"
            );
            ensure!(
                indices.insert(share.participant_index),
                "duplicate PRE participant index {}",
                share.participant_index
            );
            ensure_nonidentity("PRE capability share", share.capability_share)?;
            ensure_nonidentity("PRE reencrypted share", share.reencrypted_share)?;
            verify_orbis_pre_share(self, share, reader_base)?;
        }

        let indices = indices.into_iter().collect::<Vec<_>>();
        let mut capability = Element::IDENTITY;
        let mut reencrypted_point = Element::IDENTITY;
        for share in &self.shares {
            let coefficient = lagrange_coefficient(share.participant_index, &indices)?;
            capability += share.capability_share * coefficient;
            reencrypted_point += share.reencrypted_share * coefficient;
        }
        ensure_nonidentity("interpolated PRE capability", capability)?;
        ensure_nonidentity("interpolated PRE point", reencrypted_point)?;

        let derivation_scalar = derive_orbis_scalar(&self.derivation);
        let expected_capability = self.ring_pk * derivation_scalar;
        ensure!(
            capability == expected_capability,
            "PRE shares do not interpolate to the requested ring capability"
        );

        Ok(VerifiedPreEvidence {
            capability,
            reencrypted_point,
            ciphertext_epk: self.ciphertext_epk,
            reader_pk: self.reader_pk,
        })
    }
}

impl AddressDhReleaseRequest {
    fn pk_d(&self) -> Result<Element> {
        decaf377::Encoding(self.address.transmission_key().0)
            .vartime_decompress()
            .map_err(|_| anyhow::anyhow!("address-DH address has an invalid transmission key"))
    }

    fn transcript(&self) -> Result<Vec<u8>> {
        validate_id("address-DH ring_id", &self.ring_id)?;
        ensure_nonidentity("address-DH ring_pk", self.ring_pk)?;
        let pk_d = self.pk_d()?;
        ensure_nonidentity("address-DH pk_d", pk_d)?;
        ensure_nonidentity("address-DH reader_pk", self.reader_pk)?;
        ensure!(
            self.reader_pk + pk_d != Element::IDENTITY,
            "address-DH reader_pk + pk_d must not be identity"
        );
        ensure!(
            self.authority_instruction_hash != [0; 32],
            "address-DH authority instruction hash must be nonzero"
        );
        ensure!(
            self.request_nonce != [0; 32],
            "address-DH request nonce must be nonzero"
        );
        ensure!(
            self.expires_at_unix > 0,
            "address-DH expiry must be nonzero"
        );

        let mut transcript = Vec::with_capacity(320);
        transcript.extend_from_slice(ADDRESS_DH_RELEASE_DOMAIN);
        transcript.extend_from_slice(&(self.ring_id.len() as u32).to_le_bytes());
        transcript.extend_from_slice(self.ring_id.as_bytes());
        transcript.extend_from_slice(&self.asset_id.0.to_bytes());
        let address = self.address.to_vec();
        transcript.extend_from_slice(&(address.len() as u32).to_le_bytes());
        transcript.extend_from_slice(&address);
        for point in [self.ring_pk, pk_d, self.reader_pk] {
            transcript.extend_from_slice(&point.vartime_compress().0);
        }
        transcript.extend_from_slice(&self.authority_instruction_hash);
        transcript.extend_from_slice(&self.expires_at_unix.to_le_bytes());
        transcript.extend_from_slice(&self.request_nonce);
        Ok(transcript)
    }
}

impl AddressDhReleaseEvidence {
    pub fn verify(
        &self,
        expected: &AddressDhReleaseRequest,
        current_unix: u64,
    ) -> Result<VerifiedAddressDhRelease> {
        ensure!(
            &self.request == expected,
            "address-DH evidence does not match the authorized release request"
        );
        let transcript = self.request.transcript()?;
        ensure!(
            current_unix <= self.request.expires_at_unix,
            "address-DH release request has expired"
        );
        ensure!(self.threshold > 0, "address-DH threshold must be nonzero");
        ensure!(
            self.shares.len() == self.threshold as usize,
            "address-DH evidence must contain exactly threshold shares"
        );
        ensure!(
            self.shares.len() <= MAX_PRE_SHARES,
            "address-DH evidence exceeds the share limit"
        );

        let reader_base = self.request.reader_pk + self.request.pk_d()?;
        let mut indices = BTreeSet::new();
        for share in &self.shares {
            ensure!(
                share.participant_index > 0,
                "address-DH participant index must be nonzero"
            );
            ensure!(
                indices.insert(share.participant_index),
                "duplicate address-DH participant index {}",
                share.participant_index
            );
            ensure_nonidentity("address-DH public share", share.capability_share)?;
            ensure_nonidentity("address-DH release share", share.reencrypted_share)?;
            verify_address_dh_share(&transcript, reader_base, share)?;
        }

        let indices = indices.into_iter().collect::<Vec<_>>();
        let mut ring_pk = Element::IDENTITY;
        let mut reencrypted_point = Element::IDENTITY;
        for share in &self.shares {
            let coefficient = lagrange_coefficient(share.participant_index, &indices)?;
            ring_pk += share.capability_share * coefficient;
            reencrypted_point += share.reencrypted_share * coefficient;
        }
        ensure!(
            ring_pk == self.request.ring_pk,
            "address-DH shares do not interpolate to the requested ring key"
        );
        ensure_nonidentity("interpolated address-DH release", reencrypted_point)?;

        Ok(VerifiedAddressDhRelease {
            ring_pk,
            reader_pk: self.request.reader_pk,
            reencrypted_point,
        })
    }
}

impl VerifiedAddressDhRelease {
    /// Remove the authority's reader contribution and recover `ring_sk * pk_d`.
    pub fn recover_shared_point(&self, reader_secret: Fr) -> Result<Element> {
        ensure!(
            Element::GENERATOR * reader_secret == self.reader_pk,
            "address-DH reader secret does not match reader_pk"
        );
        let shared = self.reencrypted_point - self.ring_pk * reader_secret;
        ensure_nonidentity("address-DH recovered shared point", shared)?;
        Ok(shared)
    }
}

impl DomainType for AddressDhReleaseRequest {
    type Proto = pb::AddressDhReleaseRequest;
}

impl TryFrom<pb::AddressDhReleaseRequest> for AddressDhReleaseRequest {
    type Error = anyhow::Error;

    fn try_from(value: pb::AddressDhReleaseRequest) -> Result<Self> {
        let request = Self {
            ring_id: value.ring_id,
            asset_id: value
                .asset_id
                .ok_or_else(|| anyhow::anyhow!("address-DH request is missing asset_id"))?
                .try_into()?,
            address: value
                .address
                .ok_or_else(|| anyhow::anyhow!("address-DH request is missing address"))?
                .try_into()?,
            ring_pk: decode_element(value.ring_pk, "address-DH ring_pk")?,
            reader_pk: decode_element(value.reader_pk, "address-DH reader_pk")?,
            authority_instruction_hash: decode32(
                value.authority_instruction_hash,
                "address-DH authority instruction hash",
            )?,
            expires_at_unix: value.expires_at_unix,
            request_nonce: decode32(value.request_nonce, "address-DH request nonce")?,
        };
        request.transcript()?;
        Ok(request)
    }
}

impl From<AddressDhReleaseRequest> for pb::AddressDhReleaseRequest {
    fn from(value: AddressDhReleaseRequest) -> Self {
        Self {
            ring_id: value.ring_id,
            asset_id: Some(value.asset_id.into()),
            address: Some(value.address.into()),
            ring_pk: value.ring_pk.vartime_compress().0.to_vec(),
            reader_pk: value.reader_pk.vartime_compress().0.to_vec(),
            authority_instruction_hash: value.authority_instruction_hash.to_vec(),
            expires_at_unix: value.expires_at_unix,
            request_nonce: value.request_nonce.to_vec(),
        }
    }
}

impl DomainType for AddressDhReleaseEvidence {
    type Proto = pb::AddressDhReleaseEvidence;
}

impl TryFrom<pb::AddressDhReleaseEvidence> for AddressDhReleaseEvidence {
    type Error = anyhow::Error;

    fn try_from(value: pb::AddressDhReleaseEvidence) -> Result<Self> {
        let shares = value
            .shares
            .into_iter()
            .map(|share| {
                Ok(PreShareEvidence {
                    participant_index: share.participant_index,
                    capability_share: decode_element(
                        share.capability_share,
                        "address-DH public share",
                    )?,
                    reencrypted_share: decode_element(
                        share.reencrypted_share,
                        "address-DH release share",
                    )?,
                    challenge: decode_fr(share.challenge, "address-DH challenge")?,
                    response: decode_fr(share.response, "address-DH response")?,
                })
            })
            .collect::<Result<Vec<_>>>()?;
        ensure!(
            shares.len() <= MAX_PRE_SHARES,
            "address-DH evidence exceeds the share limit"
        );
        Ok(Self {
            request: value
                .request
                .ok_or_else(|| anyhow::anyhow!("address-DH evidence is missing request"))?
                .try_into()?,
            threshold: value.threshold,
            shares,
        })
    }
}

impl From<AddressDhReleaseEvidence> for pb::AddressDhReleaseEvidence {
    fn from(value: AddressDhReleaseEvidence) -> Self {
        Self {
            request: Some(value.request.into()),
            threshold: value.threshold,
            shares: value
                .shares
                .into_iter()
                .map(|share| pb::PreShareEvidence {
                    participant_index: share.participant_index,
                    capability_share: share.capability_share.vartime_compress().0.to_vec(),
                    reencrypted_share: share.reencrypted_share.vartime_compress().0.to_vec(),
                    challenge: share.challenge.to_bytes().to_vec(),
                    response: share.response.to_bytes().to_vec(),
                })
                .collect(),
        }
    }
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct IssuerDhEvidence {
    pub version: u32,
    pub asset_id: [u8; 32],
    pub ciphertext_epk: Element,
    pub issuer_dk_pub: Element,
    pub shared_point: Element,
    pub proof: DleqProof,
}

impl IssuerDhEvidence {
    pub fn verify(&self) -> Result<Element> {
        ensure!(self.version == 1, "unsupported issuer DH evidence version");
        decaf377::Fq::from_bytes_checked(&self.asset_id)
            .map_err(|_| anyhow::anyhow!("issuer evidence asset ID is not canonical"))?;
        ensure_nonidentity("issuer ciphertext_epk", self.ciphertext_epk)?;
        ensure_nonidentity("issuer_dk_pub", self.issuer_dk_pub)?;
        ensure_nonidentity("issuer shared point", self.shared_point)?;
        ensure_nonidentity("issuer DLEQ generator commitment", self.proof.commitment_g)?;
        ensure_nonidentity("issuer DLEQ EPK commitment", self.proof.commitment_h)?;
        let challenge = issuer_challenge(self);
        verify_dleq(
            Element::GENERATOR,
            self.ciphertext_epk,
            self.issuer_dk_pub,
            self.shared_point,
            &self.proof,
            challenge,
        )?;
        Ok(self.shared_point)
    }
}

pub fn derive_orbis_scalar(derivation: &[u8]) -> Fr {
    let mut hasher = Sha512::new();
    hasher.update(ORBIS_DERIVATION_DOMAIN);
    hasher.update(derivation);
    Fr::from_le_bytes_mod_order(&hasher.finalize())
}

fn validate_id(label: &str, value: &str) -> Result<()> {
    ensure!(
        !value.is_empty() && value.len() <= MAX_PRE_EVIDENCE_ID_BYTES,
        "invalid PRE {label} length"
    );
    Ok(())
}

fn ensure_nonidentity(label: &str, point: Element) -> Result<()> {
    ensure!(!point.is_identity(), "{label} must not be identity");
    Ok(())
}

fn lagrange_coefficient(index: u32, indices: &[u32]) -> Result<Fr> {
    let i = Fr::from(index);
    let mut coefficient = Fr::from(1u64);
    for other in indices.iter().copied().filter(|other| *other != index) {
        let j = Fr::from(other);
        let denominator = j - i;
        if denominator == Fr::from(0u64) {
            bail!("duplicate PRE participant index {index}");
        }
        coefficient *= j / denominator;
    }
    Ok(coefficient)
}

fn verify_dleq(
    base_g: Element,
    base_h: Element,
    point_g: Element,
    point_h: Element,
    proof: &DleqProof,
    challenge: Fr,
) -> Result<()> {
    ensure!(
        base_g * proof.response == proof.commitment_g + point_g * challenge,
        "invalid DLEQ generator equation"
    );
    ensure!(
        base_h * proof.response == proof.commitment_h + point_h * challenge,
        "invalid DLEQ second-base equation"
    );
    Ok(())
}

fn verify_orbis_pre_share(
    evidence: &PreEvidence,
    share: &PreShareEvidence,
    reader_base: Element,
) -> Result<()> {
    let commitment_reader =
        reader_base * share.response - share.reencrypted_share * share.challenge;
    let commitment_generator =
        Element::GENERATOR * share.response - share.capability_share * share.challenge;
    let expected = orbis_pre_challenge(
        share.participant_index,
        evidence.reader_pk,
        evidence.ciphertext_epk,
        share.capability_share,
        share.reencrypted_share,
        commitment_reader,
        commitment_generator,
    );
    ensure!(
        share.challenge == expected,
        "invalid ordinary Orbis PRE share proof"
    );
    Ok(())
}

fn verify_address_dh_share(
    transcript: &[u8],
    reader_base: Element,
    share: &PreShareEvidence,
) -> Result<()> {
    let commitment_reader =
        reader_base * share.response - share.reencrypted_share * share.challenge;
    let commitment_generator =
        Element::GENERATOR * share.response - share.capability_share * share.challenge;
    let mut hash = Sha512::new();
    hash.update(ADDRESS_DH_DLEQ_DOMAIN);
    hash.update(transcript);
    hash.update(share.participant_index.to_le_bytes());
    for point in [
        share.capability_share,
        share.reencrypted_share,
        commitment_reader,
        commitment_generator,
    ] {
        update_point(&mut hash, point);
    }
    let expected = Fr::from_le_bytes_mod_order(&hash.finalize());
    ensure!(
        share.challenge == expected,
        "invalid address-DH release share proof"
    );
    Ok(())
}

fn orbis_pre_challenge(
    participant_index: u32,
    reader_pk: Element,
    ciphertext_epk: Element,
    capability_share: Element,
    reencrypted_share: Element,
    commitment_reader: Element,
    commitment_generator: Element,
) -> Fr {
    let mut hash = Sha512::new();
    hash.update(ORBIS_PRE_DLEQ_DOMAIN);
    hash.update(participant_index.to_le_bytes());
    for point in [
        reader_pk,
        ciphertext_epk,
        capability_share,
        reencrypted_share,
        commitment_reader,
        commitment_generator,
    ] {
        update_point(&mut hash, point);
    }
    Fr::from_le_bytes_mod_order(&hash.finalize())
}

fn issuer_challenge(evidence: &IssuerDhEvidence) -> Fr {
    let asset_id = decaf377::Fq::from_bytes_checked(&evidence.asset_id)
        .expect("issuer evidence verification checked the asset ID encoding");
    let challenge = poseidon377::hash_7(
        &ISSUER_DLEQ_DOMAIN,
        (
            asset_id,
            Element::GENERATOR.vartime_compress_to_field(),
            evidence.issuer_dk_pub.vartime_compress_to_field(),
            evidence.ciphertext_epk.vartime_compress_to_field(),
            evidence.shared_point.vartime_compress_to_field(),
            evidence.proof.commitment_g.vartime_compress_to_field(),
            evidence.proof.commitment_h.vartime_compress_to_field(),
        ),
    );
    fq_to_challenge_scalar(challenge)
}

fn fq_to_challenge_scalar(challenge: decaf377::Fq) -> Fr {
    let mut bytes = challenge.into_bigint().to_bytes_le();
    bytes.resize(32, 0);
    let keep_bits = (Fr::MODULUS_BIT_SIZE - 1) as usize;
    let keep_bytes = keep_bits.div_ceil(8);
    let spare_bits = keep_bytes * 8 - keep_bits;
    bytes[keep_bytes - 1] &= 0xff >> spare_bits;
    Fr::from_le_bytes_mod_order(&bytes)
}

fn update_point(hash: &mut Sha512, point: Element) {
    hash.update(point.vartime_compress().0);
}

#[cfg(test)]
mod tests {
    use super::*;

    fn address_dh_share(
        request: &AddressDhReleaseRequest,
        index: u32,
        secret: Fr,
        nonce: Fr,
    ) -> PreShareEvidence {
        let reader_base = request.reader_pk + request.pk_d().unwrap();
        let transcript = request.transcript().unwrap();
        let mut share = PreShareEvidence {
            participant_index: index,
            capability_share: Element::GENERATOR * secret,
            reencrypted_share: reader_base * secret,
            challenge: Fr::from(0u64),
            response: Fr::from(0u64),
        };
        let commitment_reader = reader_base * nonce;
        let commitment_generator = Element::GENERATOR * nonce;
        let mut hash = Sha512::new();
        hash.update(ADDRESS_DH_DLEQ_DOMAIN);
        hash.update(&transcript);
        hash.update(index.to_le_bytes());
        for point in [
            share.capability_share,
            share.reencrypted_share,
            commitment_reader,
            commitment_generator,
        ] {
            update_point(&mut hash, point);
        }
        share.challenge = Fr::from_le_bytes_mod_order(&hash.finalize());
        share.response = nonce + share.challenge * secret;
        share
    }

    fn valid_address_dh_evidence() -> (AddressDhReleaseEvidence, Fr, Fr) {
        let fvk = &*shieldd_sdk_keys::test_keys::FULL_VIEWING_KEY;
        let address = fvk.payment_address(0u32.into());
        let ring_secret = Fr::from(17u64);
        let reader_secret = Fr::from(31u64);
        let request = AddressDhReleaseRequest {
            ring_id: "ring-1".to_owned(),
            asset_id: asset::Id(decaf377::Fq::from(9u64)),
            address,
            ring_pk: Element::GENERATOR * ring_secret,
            reader_pk: Element::GENERATOR * reader_secret,
            authority_instruction_hash: [7; 32],
            expires_at_unix: 2_000,
            request_nonce: [8; 32],
        };
        let polynomial = Fr::from(29u64);
        let share_1 = ring_secret + polynomial;
        let share_3 = ring_secret + polynomial * Fr::from(3u64);
        let evidence = AddressDhReleaseEvidence {
            request: request.clone(),
            threshold: 2,
            shares: vec![
                address_dh_share(&request, 1, share_1, Fr::from(41u64)),
                address_dh_share(&request, 3, share_3, Fr::from(43u64)),
            ],
        };
        (evidence, reader_secret, ring_secret)
    }

    fn pre_proof(evidence: &PreEvidence, index: u32, secret: Fr, nonce: Fr) -> PreShareEvidence {
        let reader_base = evidence.reader_pk + evidence.ciphertext_epk;
        let mut share = PreShareEvidence {
            participant_index: index,
            capability_share: Element::GENERATOR * secret,
            reencrypted_share: reader_base * secret,
            challenge: Fr::from(0u64),
            response: Fr::from(0u64),
        };
        share.challenge = orbis_pre_challenge(
            index,
            evidence.reader_pk,
            evidence.ciphertext_epk,
            share.capability_share,
            share.reencrypted_share,
            reader_base * nonce,
            Element::GENERATOR * nonce,
        );
        share.response = nonce + share.challenge * secret;
        share
    }

    fn valid_pre_evidence() -> (PreEvidence, EvidenceReleaseAuthorization, Fr, Fr, Fr) {
        let derivation = b"trial-address-derivation".to_vec();
        let d = derive_orbis_scalar(&derivation);
        let ring_secret = Fr::from(17u64);
        let polynomial = Fr::from(29u64);
        let reader_secret = Fr::from(31u64);
        let epk_secret = Fr::from(37u64);
        let mut evidence = PreEvidence {
            version: PRE_EVIDENCE_VERSION,
            ring_id: "ring-1".to_owned(),
            object_id: "object-1".to_owned(),
            release_scope_commitment: [7; 32],
            derivation,
            ring_pk: Element::GENERATOR * ring_secret,
            ciphertext_epk: Element::GENERATOR * epk_secret,
            reader_pk: Element::GENERATOR * reader_secret,
            threshold: 2,
            shares: Vec::new(),
        };
        let share_1_secret = d * (ring_secret + polynomial);
        let share_2_secret = d * (ring_secret + polynomial * Fr::from(2u64));
        evidence.shares = vec![
            pre_proof(&evidence, 1, share_1_secret, Fr::from(41u64)),
            pre_proof(&evidence, 2, share_2_secret, Fr::from(43u64)),
        ];
        let authorization = EvidenceReleaseAuthorization {
            ring_id: evidence.ring_id.clone(),
            release_scope_commitment: evidence.release_scope_commitment,
        };
        (evidence, authorization, reader_secret, epk_secret, d)
    }

    #[test]
    fn address_dh_release_recovers_the_wallet_shared_point_from_two_of_three_shares() {
        let (evidence, reader_secret, ring_secret) = valid_address_dh_evidence();
        let expected = evidence.request.clone();
        let recovered = evidence
            .verify(&expected, 1_000)
            .unwrap()
            .recover_shared_point(reader_secret)
            .unwrap();
        assert_eq!(recovered, expected.pk_d().unwrap() * ring_secret);
    }

    #[test]
    fn address_dh_release_binds_scope_reader_and_expiry() {
        let (evidence, reader_secret, _) = valid_address_dh_evidence();
        let request = evidence.request.clone();
        assert!(evidence
            .verify(&request, request.expires_at_unix + 1)
            .is_err());
        assert!(evidence
            .verify(&request, 1_000)
            .unwrap()
            .recover_shared_point(reader_secret + Fr::from(1u64))
            .is_err());

        let mut wrong_asset = request.clone();
        wrong_asset.asset_id = asset::Id(wrong_asset.asset_id.0 + decaf377::Fq::from(1u64));
        assert!(evidence.verify(&wrong_asset, 1_000).is_err());

        let mut wrong_address = request.clone();
        wrong_address.address =
            shieldd_sdk_keys::test_keys::FULL_VIEWING_KEY.payment_address(1u32.into());
        assert!(evidence.verify(&wrong_address, 1_000).is_err());

        let mut wrong_ring = request.clone();
        wrong_ring.ring_id = "other-ring".to_owned();
        assert!(evidence.verify(&wrong_ring, 1_000).is_err());

        let mut wrong_reader = request;
        wrong_reader.reader_pk += Element::GENERATOR;
        assert!(evidence.verify(&wrong_reader, 1_000).is_err());
    }

    #[test]
    fn verifies_threshold_pre_and_recovers_exact_shared_point() {
        let (evidence, authorization, reader_secret, epk_secret, d) = valid_pre_evidence();
        let ring_pk = evidence.ring_pk;
        let verified = evidence.verify(&authorization).unwrap();
        assert_eq!(verified.capability(), ring_pk * d);
        assert_eq!(
            verified.recover_shared_point(reader_secret).unwrap(),
            ring_pk * (d * epk_secret)
        );
    }

    #[test]
    fn a_false_trial_derivation_is_verified_but_opens_the_wrong_key() {
        let (mut evidence, authorization, reader_secret, epk_secret, actual_d) =
            valid_pre_evidence();
        evidence.derivation = b"different-address".to_vec();
        let requested_d = derive_orbis_scalar(&evidence.derivation);
        let ring_secret = Fr::from(17u64);
        let polynomial = Fr::from(29u64);
        evidence.shares = vec![
            pre_proof(
                &evidence,
                1,
                requested_d * (ring_secret + polynomial),
                Fr::from(47u64),
            ),
            pre_proof(
                &evidence,
                2,
                requested_d * (ring_secret + polynomial * Fr::from(2u64)),
                Fr::from(53u64),
            ),
        ];
        let recovered = evidence
            .verify(&authorization)
            .unwrap()
            .recover_shared_point(reader_secret)
            .unwrap();
        assert_ne!(recovered, evidence.ring_pk * (actual_d * epk_secret));
        assert_eq!(recovered, evidence.ring_pk * (requested_d * epk_secret));
    }

    #[test]
    fn pre_evidence_rejects_mutations_and_duplicate_indices() {
        let (evidence, authorization, _, _, _) = valid_pre_evidence();
        let mut bad_proof = evidence.clone();
        bad_proof.shares[0].response += Fr::from(1u64);
        assert!(bad_proof.verify(&authorization).is_err());

        let mut bad_epk = evidence.clone();
        bad_epk.ciphertext_epk += Element::GENERATOR;
        assert!(bad_epk.verify(&authorization).is_err());

        let mut duplicate = evidence;
        duplicate.shares[1].participant_index = 1;
        assert!(duplicate.verify(&authorization).is_err());
    }

    #[test]
    fn same_ring_cannot_substitute_a_different_release_scope() {
        let (evidence, mut authorization, _, _, _) = valid_pre_evidence();
        authorization.release_scope_commitment = [8; 32];
        assert!(evidence.verify(&authorization).is_err());

        let mut other_ring = EvidenceReleaseAuthorization {
            ring_id: "ring-2".to_owned(),
            release_scope_commitment: evidence.release_scope_commitment,
        };
        assert!(evidence.verify(&other_ring).is_err());
        other_ring.ring_id = evidence.ring_id.clone();
        assert!(evidence.verify(&other_ring).is_ok());
    }

    fn issuer_proof(secret: Fr, epk: Element, asset_id: [u8; 32]) -> IssuerDhEvidence {
        let nonce = Fr::from(59u64);
        let mut evidence = IssuerDhEvidence {
            version: 1,
            asset_id,
            ciphertext_epk: epk,
            issuer_dk_pub: Element::GENERATOR * secret,
            shared_point: epk * secret,
            proof: DleqProof {
                commitment_g: Element::GENERATOR * nonce,
                commitment_h: epk * nonce,
                response: Fr::from(0u64),
            },
        };
        let challenge = issuer_challenge(&evidence);
        evidence.proof.response = nonce + challenge * secret;
        evidence
    }

    #[test]
    fn issuer_dh_evidence_binds_asset_epk_and_shared_point() {
        let epk = Element::GENERATOR * Fr::from(61u64);
        let evidence = issuer_proof(Fr::from(67u64), epk, [7u8; 32]);
        assert_eq!(evidence.verify().unwrap(), evidence.shared_point);

        let mut wrong_epk = evidence.clone();
        wrong_epk.ciphertext_epk += Element::GENERATOR;
        assert!(wrong_epk.verify().is_err());

        let mut wrong_asset = evidence;
        wrong_asset.asset_id[0] ^= 1;
        assert!(wrong_asset.verify().is_err());
    }
}
