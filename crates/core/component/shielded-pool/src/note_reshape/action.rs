use std::convert::TryInto;

use anyhow::{Context, Error};
use decaf377::Fq;
use decaf377_rdsa::{Signature, SpendAuth, VerificationKey};
use shieldd_sdk_asset::balance;
use shieldd_sdk_keys::symmetric::{OvkWrappedKey, WrappedMemoKey};
use shieldd_sdk_proto::{core::component::shielded_pool::v1 as pb, DomainType};
use shieldd_sdk_sct::Nullifier;
use shieldd_sdk_tct as tct;
use shieldd_sdk_txhash::{EffectHash, EffectingData};

use super::{NoteReshapeFamilyId, NoteReshapeProof};
use crate::{backref::ENCRYPTED_BACKREF_LEN, discovery::RoutingTag, EncryptedBackref, NotePayload};

#[derive(Clone, Debug, serde::Deserialize, serde::Serialize)]
#[serde(
    try_from = "pb::NoteReshapeInputBody",
    into = "pb::NoteReshapeInputBody"
)]
pub struct NoteReshapeInputBody {
    pub nullifier: Nullifier,
    pub rk: VerificationKey<SpendAuth>,
    pub encrypted_backref: EncryptedBackref,
    pub history_required: bool,
}

#[derive(Clone, Debug, serde::Deserialize, serde::Serialize)]
#[serde(
    try_from = "pb::NoteReshapeOutputBody",
    into = "pb::NoteReshapeOutputBody"
)]
pub struct NoteReshapeOutputBody {
    pub note_payload: NotePayload,
    pub wrapped_memo_key: WrappedMemoKey,
    pub ovk_wrapped_key: OvkWrappedKey,
}

#[derive(Clone, Debug, serde::Deserialize, serde::Serialize)]
#[serde(try_from = "pb::NoteReshapeBody", into = "pb::NoteReshapeBody")]
pub struct NoteReshapeBody {
    pub family_id: NoteReshapeFamilyId,
    pub anchor: shieldd_sdk_tct::Root,
    pub balance_commitment: balance::Commitment,
    pub inputs: Vec<NoteReshapeInputBody>,
    pub outputs: Vec<NoteReshapeOutputBody>,
    pub routing_tag: RoutingTag,
    pub routing_parameter_set_id: Fq,
    pub asset_anchor: tct::StateCommitment,
}

#[derive(Clone, Debug)]
pub struct NoteReshape {
    pub body: NoteReshapeBody,
    pub auth_sigs: Vec<Signature<SpendAuth>>,
    pub proof: NoteReshapeProof,
}

impl NoteReshapeBody {
    pub fn validate_shape(&self) -> anyhow::Result<()> {
        anyhow::ensure!(
            self.inputs.len() == self.family_id.input_count(),
            "note_reshape family {:?} expects {} inputs, got {}",
            self.family_id,
            self.family_id.input_count(),
            self.inputs.len()
        );
        anyhow::ensure!(
            self.outputs.len() == self.family_id.output_count(),
            "note_reshape family {:?} expects {} outputs, got {}",
            self.family_id,
            self.family_id.output_count(),
            self.outputs.len()
        );
        for (index, input) in self.inputs.iter().enumerate() {
            anyhow::ensure!(
                input.encrypted_backref.len() == ENCRYPTED_BACKREF_LEN,
                "note_reshape input {index} encrypted backref must be {ENCRYPTED_BACKREF_LEN} bytes"
            );
        }
        Ok(())
    }
}

impl EffectingData for NoteReshapeBody {
    fn effect_hash(&self) -> EffectHash {
        let mut effecting = self.clone();
        effecting.anchor = tct::Tree::default().root();
        EffectHash::from_proto_effecting_data(&effecting.to_proto())
    }
}

impl EffectingData for NoteReshape {
    fn effect_hash(&self) -> EffectHash {
        self.body.effect_hash()
    }
}

impl DomainType for NoteReshape {
    type Proto = pb::NoteReshape;
}

impl From<NoteReshape> for pb::NoteReshape {
    fn from(msg: NoteReshape) -> Self {
        Self {
            body: Some(msg.body.into()),
            auth_sigs: msg.auth_sigs.into_iter().map(Into::into).collect(),
            proof: Some(msg.proof.into()),
        }
    }
}

impl TryFrom<pb::NoteReshape> for NoteReshape {
    type Error = Error;

    fn try_from(proto: pb::NoteReshape) -> Result<Self, Self::Error> {
        let body: NoteReshapeBody = proto
            .body
            .ok_or_else(|| anyhow::anyhow!("missing note_reshape body"))?
            .try_into()
            .context("malformed note_reshape body")?;
        body.validate_shape()?;

        let auth_sigs = proto
            .auth_sigs
            .into_iter()
            .map(|sig| sig.try_into().context("malformed note_reshape auth sig"))
            .collect::<Result<Vec<_>, _>>()?;

        anyhow::ensure!(
            auth_sigs.len() == body.family_id.auth_sig_count(),
            "note_reshape expected {} auth sigs, got {}",
            body.family_id.auth_sig_count(),
            auth_sigs.len()
        );

        Ok(Self {
            body,
            auth_sigs,
            proof: proto
                .proof
                .ok_or_else(|| anyhow::anyhow!("missing note_reshape proof"))?
                .try_into()
                .context("malformed note_reshape proof")?,
        })
    }
}

impl DomainType for NoteReshapeInputBody {
    type Proto = pb::NoteReshapeInputBody;
}

impl From<NoteReshapeInputBody> for pb::NoteReshapeInputBody {
    fn from(msg: NoteReshapeInputBody) -> Self {
        Self {
            nullifier: Some(msg.nullifier.into()),
            rk: Some(msg.rk.into()),
            encrypted_backref: msg.encrypted_backref.into(),
            history_required: msg.history_required,
        }
    }
}

impl TryFrom<pb::NoteReshapeInputBody> for NoteReshapeInputBody {
    type Error = Error;

    fn try_from(proto: pb::NoteReshapeInputBody) -> Result<Self, Self::Error> {
        let bytes: [u8; ENCRYPTED_BACKREF_LEN] =
            proto.encrypted_backref.try_into().map_err(|_| {
                anyhow::anyhow!("encrypted backref must be exactly {ENCRYPTED_BACKREF_LEN} bytes")
            })?;
        let encrypted_backref = EncryptedBackref::try_from(bytes)
            .map_err(|_| anyhow::anyhow!("invalid encrypted backref"))?;

        Ok(Self {
            nullifier: proto
                .nullifier
                .ok_or_else(|| anyhow::anyhow!("missing nullifier"))?
                .try_into()
                .context("malformed nullifier")?,
            rk: proto
                .rk
                .ok_or_else(|| anyhow::anyhow!("missing rk"))?
                .try_into()
                .context("malformed rk")?,
            encrypted_backref,
            history_required: proto.history_required,
        })
    }
}

impl DomainType for NoteReshapeOutputBody {
    type Proto = pb::NoteReshapeOutputBody;
}

impl From<NoteReshapeOutputBody> for pb::NoteReshapeOutputBody {
    fn from(msg: NoteReshapeOutputBody) -> Self {
        Self {
            note_payload: Some(msg.note_payload.into()),
            wrapped_memo_key: msg.wrapped_memo_key.0.to_vec(),
            ovk_wrapped_key: msg.ovk_wrapped_key.0.to_vec(),
        }
    }
}

impl TryFrom<pb::NoteReshapeOutputBody> for NoteReshapeOutputBody {
    type Error = Error;

    fn try_from(proto: pb::NoteReshapeOutputBody) -> Result<Self, Self::Error> {
        let wrapped_memo_key = proto
            .wrapped_memo_key
            .try_into()
            .map_err(|_| anyhow::anyhow!("malformed wrapped memo key"))?;
        let ovk_wrapped_key = proto
            .ovk_wrapped_key
            .try_into()
            .map_err(|_| anyhow::anyhow!("malformed ovk wrapped key"))?;
        Ok(Self {
            note_payload: proto
                .note_payload
                .ok_or_else(|| anyhow::anyhow!("missing note payload"))?
                .try_into()
                .context("malformed note payload")?,
            wrapped_memo_key: WrappedMemoKey(wrapped_memo_key),
            ovk_wrapped_key: OvkWrappedKey(ovk_wrapped_key),
        })
    }
}

impl DomainType for NoteReshapeBody {
    type Proto = pb::NoteReshapeBody;
}

impl From<NoteReshapeBody> for pb::NoteReshapeBody {
    fn from(msg: NoteReshapeBody) -> Self {
        Self {
            family_id: msg.family_id.into(),
            anchor: Some(msg.anchor.into()),
            balance_commitment: Some(msg.balance_commitment.into()),
            inputs: msg.inputs.into_iter().map(Into::into).collect(),
            outputs: msg.outputs.into_iter().map(Into::into).collect(),
            routing_tag: Some(msg.routing_tag.into()),
            routing_parameter_set_id: msg.routing_parameter_set_id.to_bytes().to_vec(),
            asset_anchor: Some(msg.asset_anchor.into()),
        }
    }
}

impl TryFrom<pb::NoteReshapeBody> for NoteReshapeBody {
    type Error = Error;

    fn try_from(proto: pb::NoteReshapeBody) -> Result<Self, Self::Error> {
        let body = Self {
            family_id: proto.family_id.try_into()?,
            anchor: proto
                .anchor
                .ok_or_else(|| anyhow::anyhow!("missing anchor"))?
                .try_into()
                .context("malformed anchor")?,
            balance_commitment: proto
                .balance_commitment
                .ok_or_else(|| anyhow::anyhow!("missing balance commitment"))?
                .try_into()
                .context("malformed balance commitment")?,
            inputs: proto
                .inputs
                .into_iter()
                .map(TryInto::try_into)
                .collect::<Result<_, _>>()?,
            outputs: proto
                .outputs
                .into_iter()
                .map(TryInto::try_into)
                .collect::<Result<_, _>>()?,
            routing_tag: proto
                .routing_tag
                .ok_or_else(|| anyhow::anyhow!("missing note reshape routing tag"))?
                .try_into()?,
            routing_parameter_set_id: Fq::from_bytes_checked(
                &proto
                    .routing_parameter_set_id
                    .try_into()
                    .map_err(|_| anyhow::anyhow!("routing parameter set id must be 32 bytes"))?,
            )
            .map_err(|_| anyhow::anyhow!("routing parameter set id must be canonical"))?,
            asset_anchor: proto
                .asset_anchor
                .ok_or_else(|| anyhow::anyhow!("missing asset anchor"))?
                .try_into()
                .context("malformed asset anchor")?,
        };
        body.validate_shape()?;
        Ok(body)
    }
}

#[cfg(test)]
mod tests {
    use super::{pb, NoteReshapeBody, NoteReshapeInputBody};

    fn struct_body<'a>(source: &'a str, name: &str) -> &'a str {
        let start = source
            .find(&format!("pub struct {name}"))
            .expect("source struct should exist");
        let body = &source[start..];
        &body[..body.find('}').expect("source struct should close")]
    }

    // TXN-M3: an attacker-controlled family_id that is not in the registry must be
    // rejected at the wire boundary, before it can reach the panicking spec() /
    // proof_verification_key() lookups in consensus verification.
    #[test]
    fn unknown_family_id_is_rejected_at_wire_boundary() {
        let proto = pb::NoteReshapeBody {
            family_id: u32::MAX,
            ..Default::default()
        };
        let err = NoteReshapeBody::try_from(proto)
            .expect_err("unknown note_reshape family id must be rejected on decode");
        assert!(
            err.to_string().contains("family"),
            "expected a family-id error, got: {err}"
        );
    }

    #[test]
    fn empty_input_backref_is_rejected_at_wire_boundary() {
        let err = NoteReshapeInputBody::try_from(pb::NoteReshapeInputBody::default())
            .expect_err("note_reshape inputs require fixed-size encrypted backrefs");
        assert!(
            err.to_string().contains("exactly 48 bytes"),
            "unexpected error: {err:#}"
        );
    }

    #[test]
    fn note_reshape_public_encodings_have_no_dummy_flags_after_redesign() {
        for (source, names) in [
            (
                include_str!("action.rs"),
                vec![
                    "NoteReshapeInputBody",
                    "NoteReshapeOutputBody",
                    "NoteReshapeBody",
                ],
            ),
            (
                include_str!("proof.rs"),
                vec![
                    "NoteReshapeInputPublic",
                    "NoteReshapeOutputPublic",
                    "NoteReshapeProofPublic",
                ],
            ),
            (
                include_str!("../gnark/note_reshape_witness.rs"),
                vec!["NoteReshapeOutputWitnessV5"],
            ),
        ] {
            for name in names {
                let body = struct_body(source, name);
                assert!(
                    !body.contains("is_dummy"),
                    "{name} still exposes an explicit dummy flag"
                );
            }
        }
    }
}
