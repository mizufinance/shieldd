use anyhow::{ensure, Context, Result};
use orbis_common::blockchain::orbis::generate_document_id;
use orbis_crypto::{
    r#trait::{EncryptionProof, Secret, ThresholdDealer},
    CiphertextContext, PreImpl,
};

/// Upstream inline document and its authenticated encryption context.
pub struct EncryptedDocument {
    pub ring_id: String,
    pub context: CiphertextContext,
    pub secret: Secret,
    pub proof: EncryptionProof,
}

impl EncryptedDocument {
    pub fn object_id(&self) -> Result<String> {
        PreImpl::verify_encryption(&self.proof, &self.context, &self.secret)?;
        Ok(generate_document_id(
            &self.ring_id,
            &serde_json::to_string(&self.secret)?,
            &serde_json::to_string(&self.proof)?,
            &self.context.policy_id,
            &self.context.resource,
            &self.context.permission,
            self.context.tier.as_deref(),
            self.context.timestamp,
        )?)
    }

    pub(crate) fn request(
        &self,
        reader_key: &orbis_crypto::ScalarField,
    ) -> Result<orbis_proto::v0::pre::StartPreRequest> {
        use orbis_crypto::{CryptoSerialize, GroupAffine};
        use orbis_proto::v0::pre::{ReaderKeyProof, StartPreRequest, TimestampRange};
        let reader_pk = GroupAffine::GENERATOR * *reader_key;
        let proof = PreImpl::prove_reader_key(reader_key, &reader_pk)?;
        Ok(StartPreRequest {
            rdr_pk: reader_pk.to_bytes()?,
            object_id: self.object_id()?,
            derivation: None,
            salt: self.context.salt.clone(),
            valid_window: self.context.timestamp.map(|timestamp| TimestampRange {
                start: timestamp,
                end: timestamp,
            }),
            document: Some(self.inline()?),
            rdr_pk_proof: Some(ReaderKeyProof {
                challenge: proof.challenge,
                response: proof.response,
            }),
        })
    }

    pub(crate) fn inline(&self) -> Result<orbis_proto::v0::pre::InlineDocument> {
        Ok(orbis_proto::v0::pre::InlineDocument {
            ring_id: self.ring_id.clone(),
            encrypted_document: serde_json::to_vec(&self.secret)?,
            enc_cmt: self.secret.enc_cmt.clone(),
            policy_id: self.context.policy_id.clone(),
            resource: self.context.resource.clone(),
            permission: self.context.permission.clone(),
            challenge: self.proof.challenge.clone(),
            response: self.proof.response.clone(),
            tier: self.context.tier.clone(),
            timestamp: self.context.timestamp,
        })
    }

    pub(crate) fn validate_response(&self, raw: &[u8]) -> Result<Vec<u8>> {
        #[derive(serde::Deserialize)]
        #[serde(deny_unknown_fields)]
        struct Response {
            xnc_cmt: String,
            secret: Secret,
        }
        let response: Response =
            serde_json::from_slice(raw).context("malformed Orbis PRE response")?;
        ensure!(
            response.secret.enc_cmt == self.secret.enc_cmt
                && response.secret.nonce == self.secret.nonce
                && response.secret.encrypted_data == self.secret.encrypted_data,
            "Orbis returned a different encrypted document"
        );
        let commitment = hex::decode(response.xnc_cmt).context("invalid Orbis PRE commitment")?;
        ensure!(
            commitment.len() == 32,
            "invalid Orbis PRE commitment length"
        );
        Ok(commitment)
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use orbis_crypto::{GroupAffine, ScalarField};

    fn document() -> EncryptedDocument {
        let pk = GroupAffine::GENERATOR * ScalarField::from(7u64);
        use orbis_crypto::CryptoSerialize;
        let context = CiphertextContext {
            ring_pk: pk.to_bytes().unwrap(),
            policy_id: "policy".into(),
            resource: "document".into(),
            permission: "read".into(),
            tier: Some("output_core".into()),
            timestamp: Some(1),
            salt: None,
        };
        let (_, secret, proof) = PreImpl::encrypt_secret(&pk, b"opening", None, &context).unwrap();
        EncryptedDocument {
            ring_id: "ring".into(),
            context,
            secret,
            proof,
        }
    }

    #[test]
    fn wire_request_binds_the_reader_proof_and_document() {
        use orbis_crypto::{r#trait::ReaderKeyProof, CryptoDeserialize};
        let document = document();
        let request = document.request(&ScalarField::from(11u64)).unwrap();
        assert_eq!(request.object_id, document.object_id().unwrap());
        assert_eq!(request.valid_window.unwrap().start, 1);
        let key = GroupAffine::from_bytes(&request.rdr_pk).unwrap();
        let wire = request.rdr_pk_proof.unwrap();
        let mut proof = ReaderKeyProof {
            challenge: wire.challenge,
            response: wire.response,
        };
        PreImpl::verify_reader_key(&key, &proof).unwrap();
        proof.response[0] ^= 1;
        assert!(PreImpl::verify_reader_key(&key, &proof).is_err());
    }

    #[test]
    fn canonical_document_rejects_context_tampering() {
        let mut document = document();
        assert_eq!(document.object_id().unwrap().len(), 64);
        document.context.permission = "write".into();
        assert!(document.object_id().is_err());
    }

    #[test]
    fn response_must_return_the_requested_ciphertext() {
        let document = document();
        let mut secret = document.secret.clone();
        secret.encrypted_data[0] ^= 1;
        let raw = serde_json::to_vec(
            &serde_json::json!({ "xnc_cmt": "00".repeat(32), "secret": secret }),
        )
        .unwrap();
        assert!(document.validate_response(&raw).is_err());
        assert!(document.validate_response(b"{}").is_err());
    }
}
