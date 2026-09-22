use anyhow::{ensure, Result};
use ff::Field;
use group::{Group, GroupEncoding};
use rand_core::{CryptoRng, RngCore};
use shieldd_sdk_crypto::{Fr, SubgroupPoint};

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct DleqProof {
    pub commitment_g: SubgroupPoint,
    pub commitment_h: SubgroupPoint,
    pub response: Fr,
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct IssuerDhEvidence {
    pub version: u32,
    pub asset_id: [u8; 32],
    pub ciphertext_epk: SubgroupPoint,
    pub issuer_dk_pub: SubgroupPoint,
    pub shared_point: SubgroupPoint,
    pub proof: DleqProof,
}

impl IssuerDhEvidence {
    /// Produce verifiable decryption access for one ciphertext without exporting DK.
    pub fn prove(
        rng: impl RngCore + CryptoRng,
        dk: &crate::DetectionKey,
        asset_id: [u8; 32],
        ciphertext_epk: SubgroupPoint,
    ) -> Result<Self> {
        Self::prove_inner(rng, dk, asset_id, ciphertext_epk, None)
    }

    /// Bind fresh issuer decryption evidence to a canonical disclosure request digest.
    pub fn prove_bound(
        rng: impl RngCore + CryptoRng,
        dk: &crate::DetectionKey,
        asset_id: [u8; 32],
        ciphertext_epk: SubgroupPoint,
        request: &[u8; 32],
    ) -> Result<Self> {
        Self::prove_inner(rng, dk, asset_id, ciphertext_epk, Some(request))
    }

    fn prove_inner(
        mut rng: impl RngCore + CryptoRng,
        dk: &crate::DetectionKey,
        asset_id: [u8; 32],
        ciphertext_epk: SubgroupPoint,
        request: Option<&[u8; 32]>,
    ) -> Result<Self> {
        shieldd_sdk_crypto::encoding::field(&asset_id)
            .map_err(|_| anyhow::anyhow!("issuer evidence asset ID is not canonical"))?;
        ensure_nonidentity("issuer ciphertext_epk", ciphertext_epk)?;
        ensure_nonidentity("issuer_dk_pub", dk.public_key())?;
        let nonce = loop {
            let nonce = Fr::random(&mut rng);
            if nonce != Fr::from(0u64) {
                break nonce;
            }
        };
        let mut evidence = Self {
            version: if request.is_some() { 2 } else { 1 },
            asset_id,
            ciphertext_epk,
            issuer_dk_pub: dk.public_key(),
            shared_point: ciphertext_epk * *dk.inner(),
            proof: DleqProof {
                commitment_g: (*shieldd_sdk_crypto::generators::SPEND_AUTH) * nonce,
                commitment_h: ciphertext_epk * nonce,
                response: Fr::from(0u64),
            },
        };
        evidence.proof.response = nonce + evidence_challenge(&evidence, request) * *dk.inner();
        Ok(evidence)
    }

    /// Expected asset, registered issuer key and EPK must come from accepted chain data.
    pub fn verify_for(
        &self,
        asset_id: [u8; 32],
        issuer_dk_pub: SubgroupPoint,
        ciphertext_epk: SubgroupPoint,
    ) -> Result<SubgroupPoint> {
        ensure!(
            self.asset_id == asset_id,
            "issuer disclosure asset mismatch"
        );
        ensure!(
            self.issuer_dk_pub == issuer_dk_pub,
            "issuer disclosure key mismatch"
        );
        ensure!(
            self.ciphertext_epk == ciphertext_epk,
            "issuer disclosure ciphertext mismatch"
        );
        self.verify()
    }

    /// Expected fields and request digest come from the accepted transaction and requested disclosure.
    pub fn verify_bound_for(
        &self,
        asset_id: [u8; 32],
        issuer_dk_pub: SubgroupPoint,
        ciphertext_epk: SubgroupPoint,
        request: &[u8; 32],
    ) -> Result<SubgroupPoint> {
        ensure!(
            self.asset_id == asset_id
                && self.issuer_dk_pub == issuer_dk_pub
                && self.ciphertext_epk == ciphertext_epk,
            "issuer evidence statement mismatch"
        );
        self.verify_inner(Some(request))
    }

    pub fn verify(&self) -> Result<SubgroupPoint> {
        self.verify_inner(None)
    }

    fn verify_inner(&self, request: Option<&[u8; 32]>) -> Result<SubgroupPoint> {
        ensure!(
            self.version == if request.is_some() { 2 } else { 1 },
            "unsupported issuer DH evidence version"
        );
        shieldd_sdk_crypto::encoding::field(&self.asset_id)
            .map_err(|_| anyhow::anyhow!("issuer evidence asset ID is not canonical"))?;
        ensure_nonidentity("issuer ciphertext_epk", self.ciphertext_epk)?;
        ensure_nonidentity("issuer_dk_pub", self.issuer_dk_pub)?;
        ensure_nonidentity("issuer shared point", self.shared_point)?;
        ensure_nonidentity("issuer DLEQ generator commitment", self.proof.commitment_g)?;
        ensure_nonidentity("issuer DLEQ EPK commitment", self.proof.commitment_h)?;
        verify_dleq(
            *shieldd_sdk_crypto::generators::SPEND_AUTH,
            self.ciphertext_epk,
            self.issuer_dk_pub,
            self.shared_point,
            &self.proof,
            evidence_challenge(self, request),
        )?;
        Ok(self.shared_point)
    }
}

/// Verifies equations only; callers must validate points and bind the full
/// statement and proof commitments into a domain-separated challenge.
pub fn verify_dleq(
    base_g: SubgroupPoint,
    base_h: SubgroupPoint,
    point_g: SubgroupPoint,
    point_h: SubgroupPoint,
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

fn ensure_nonidentity(label: &str, point: SubgroupPoint) -> Result<()> {
    ensure!(
        !bool::from(point.is_identity()),
        "{label} must not be identity"
    );
    Ok(())
}

fn evidence_challenge(evidence: &IssuerDhEvidence, request: Option<&[u8; 32]>) -> Fr {
    let mut transcript = blake2b_simd::Params::new()
        .personal(b"ShielddIssuerDH")
        .to_state();
    transcript.update(&[shieldd_sdk_crypto::SUITE]);
    transcript.update(&evidence.version.to_le_bytes());
    transcript.update(&evidence.asset_id);
    for point in [
        *shieldd_sdk_crypto::generators::SPEND_AUTH,
        evidence.issuer_dk_pub,
        evidence.ciphertext_epk,
        evidence.shared_point,
        evidence.proof.commitment_g,
        evidence.proof.commitment_h,
    ] {
        transcript.update(&point.to_bytes());
    }
    transcript.update(&[u8::from(request.is_some())]);
    if let Some(request) = request {
        transcript.update(request);
    }
    Fr::from_bytes_wide(transcript.finalize().as_array())
}

pub fn fq_to_challenge_scalar(challenge: shieldd_sdk_crypto::Fq) -> Fr {
    shieldd_sdk_crypto::encoding::reduce_scalar(&challenge)
}

#[cfg(test)]
mod tests {
    use super::*;

    fn issuer_proof(secret: Fr, epk: SubgroupPoint, asset_id: [u8; 32]) -> IssuerDhEvidence {
        let nonce = Fr::from(17u64);
        let mut evidence = IssuerDhEvidence {
            version: 1,
            asset_id,
            ciphertext_epk: epk,
            issuer_dk_pub: (*shieldd_sdk_crypto::generators::SPEND_AUTH) * secret,
            shared_point: epk * secret,
            proof: DleqProof {
                commitment_g: (*shieldd_sdk_crypto::generators::SPEND_AUTH) * nonce,
                commitment_h: epk * nonce,
                response: Fr::from(0u64),
            },
        };
        evidence.proof.response = nonce + evidence_challenge(&evidence, None) * secret;
        evidence
    }

    #[test]
    fn bound_evidence_rejects_other_request_unbound_verifier_and_version() {
        let dk = crate::DetectionKey::new(Fr::from(5u64));
        let epk = *shieldd_sdk_crypto::generators::SPEND_AUTH * Fr::from(7u64);
        let asset = shieldd_sdk_crypto::Fq::from(11u64).to_bytes();
        let request = [42; 32];
        let evidence =
            IssuerDhEvidence::prove_bound(rand_core::OsRng, &dk, asset, epk, &request).unwrap();
        assert_eq!(
            evidence
                .verify_bound_for(asset, dk.public_key(), epk, &request)
                .unwrap(),
            epk * *dk.inner()
        );
        assert!(evidence
            .verify_bound_for(asset, dk.public_key(), epk, &[43; 32])
            .is_err());
        assert!(evidence.verify_for(asset, dk.public_key(), epk).is_err());
        let mut changed = evidence;
        changed.version = 1;
        assert!(changed
            .verify_bound_for(asset, dk.public_key(), epk, &request)
            .is_err());
        assert!(changed.verify_for(asset, dk.public_key(), epk).is_err());
    }

    #[test]
    fn issuer_evidence_binds_asset_epk_and_shared_point() {
        let evidence = issuer_proof(
            Fr::from(5u64),
            (*shieldd_sdk_crypto::generators::SPEND_AUTH) * Fr::from(7u64),
            shieldd_sdk_crypto::Fq::from(11u64).to_bytes(),
        );
        assert_eq!(evidence.verify().unwrap(), evidence.shared_point);

        let mut wrong_asset = evidence.clone();
        wrong_asset.asset_id = shieldd_sdk_crypto::Fq::from(12u64).to_bytes();
        assert!(wrong_asset.verify().is_err());

        let mut wrong_epk = evidence.clone();
        wrong_epk.ciphertext_epk += *shieldd_sdk_crypto::generators::SPEND_AUTH;
        assert!(wrong_epk.verify().is_err());

        let mut wrong_shared = evidence;
        wrong_shared.shared_point += *shieldd_sdk_crypto::generators::SPEND_AUTH;
        assert!(wrong_shared.verify().is_err());
    }

    #[test]
    fn issuer_disclosure_uses_fresh_proof_and_pinned_chain_values() {
        let dk = crate::DetectionKey::new(Fr::from(5u64));
        let epk = (*shieldd_sdk_crypto::generators::SPEND_AUTH) * Fr::from(7u64);
        let asset = shieldd_sdk_crypto::Fq::from(11u64).to_bytes();
        let first = IssuerDhEvidence::prove(rand_core::OsRng, &dk, asset, epk).unwrap();
        let second = IssuerDhEvidence::prove(rand_core::OsRng, &dk, asset, epk).unwrap();
        assert_ne!(first.proof.commitment_g, second.proof.commitment_g);
        assert_eq!(
            first.verify_for(asset, dk.public_key(), epk).unwrap(),
            epk * *dk.inner()
        );
        assert!(first
            .verify_for(asset, *shieldd_sdk_crypto::generators::SPEND_AUTH, epk)
            .is_err());
        assert!(first
            .verify_for(
                asset,
                dk.public_key(),
                *shieldd_sdk_crypto::generators::SPEND_AUTH
            )
            .is_err());
        assert!(first
            .verify_for(
                shieldd_sdk_crypto::Fq::from(12u64).to_bytes(),
                dk.public_key(),
                epk
            )
            .is_err());
        assert!(
            IssuerDhEvidence::prove(rand_core::OsRng, &dk, asset, SubgroupPoint::default())
                .is_err()
        );
    }
}
