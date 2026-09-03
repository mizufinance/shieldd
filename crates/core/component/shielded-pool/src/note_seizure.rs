use anyhow::{ensure, Context, Result};
use ark_groth16::{r1cs_to_qap::LibsnarkReduction, Groth16, PreparedVerifyingKey, Proof};
use ark_serialize::CanonicalSerialize;
use ark_snark::SNARK;
use decaf377::{Bls12_377, Fq, Fr};
use decaf377_rdsa::{Signature, SpendAuth, VerificationKey};
use shieldd_sdk_asset::{asset, Value};
use shieldd_sdk_compliance::PreEvidence;
use shieldd_sdk_keys::Address;
use shieldd_sdk_num::Amount;
use shieldd_sdk_proto::{core::component::shielded_pool::v1 as pb, DomainType};
use shieldd_sdk_sct::{
    nullifier_generation::{HistoricalNullifierProof, NullifierWindow},
    Nullifier,
};
use shieldd_sdk_tct as tct;

use crate::{
    public_input_hash::{note_seizure_statement_hash_from_public, StatementHashError},
    HostWithdrawal, RecoveryCapsule,
};

pub const NOTE_SEIZURE_PROOF_LABEL: &str = "note_seizure";
pub const NOTE_SEIZURE_STATEMENT_FIELD_COUNT: usize = 19;
pub const MAX_NOTE_SEIZURE_CHAIN_ID_BYTES: usize = 128;
const NOTE_SEIZURE_AUTHORIZATION_DOMAIN: &[u8] = b"shieldd.note_seizure.authorization";
const NOTE_SEIZURE_AUTHORIZATION_COMMITMENT_DOMAIN: &[u8] =
    b"shieldd.note_seizure.authorization_commitment";

/// Immutable facts approved by the asset's seizure authority.
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct NoteSeizureAuthorizationBody {
    pub chain_id: String,
    pub note_commitment: tct::StateCommitment,
    pub nullifier: Nullifier,
    pub address: Address,
    pub asset_id: asset::Id,
    pub amount: Amount,
    pub freeze_generation: u64,
    pub frozen_since_height: u64,
    pub withdrawal: HostWithdrawal,
    pub release_scope_commitment: [u8; 32],
    pub expiry_height: u64,
}

impl NoteSeizureAuthorizationBody {
    pub fn validate(&self) -> Result<()> {
        ensure!(
            !self.chain_id.is_empty() && self.chain_id.len() <= MAX_NOTE_SEIZURE_CHAIN_ID_BYTES,
            "invalid note seizure chain_id length"
        );
        ensure!(
            self.amount != Amount::zero(),
            "note seizure amount must be nonzero"
        );
        ensure!(
            self.freeze_generation > 0,
            "note seizure freeze generation must be nonzero"
        );
        ensure!(
            self.frozen_since_height > 0,
            "note seizure frozen-since height must be nonzero"
        );
        ensure!(
            self.release_scope_commitment != [0; 32],
            "note seizure release scope must be nonzero"
        );
        ensure!(
            self.expiry_height >= self.frozen_since_height,
            "note seizure authorization expires before the freeze"
        );
        self.withdrawal.validate()?;
        ensure!(
            self.withdrawal.value
                == Value {
                    amount: self.amount,
                    asset_id: self.asset_id,
                },
            "note seizure withdrawal must exactly match the seized note value"
        );
        Ok(())
    }

    pub fn signing_bytes(&self) -> Result<Vec<u8>> {
        self.validate()?;
        let body = self.encode_to_vec();
        let mut bytes =
            Vec::with_capacity(NOTE_SEIZURE_AUTHORIZATION_DOMAIN.len() + 1 + body.len());
        bytes.extend_from_slice(NOTE_SEIZURE_AUTHORIZATION_DOMAIN);
        bytes.push(0);
        bytes.extend_from_slice(&body);
        Ok(bytes)
    }

    pub fn verify_signature(
        &self,
        authority: &VerificationKey<SpendAuth>,
        signature: &Signature<SpendAuth>,
    ) -> Result<()> {
        authority
            .verify(&self.signing_bytes()?, signature)
            .context("invalid note seizure authority signature")
    }

    pub fn commitment(&self) -> Result<Fq> {
        self.validate()?;
        let mut state = blake2b_simd::Params::new().hash_length(64).to_state();
        state.update(NOTE_SEIZURE_AUTHORIZATION_COMMITMENT_DOMAIN);
        state.update(&[0]);
        state.update(&self.encode_to_vec());
        Ok(Fq::from_le_bytes_mod_order(state.finalize().as_bytes()))
    }
}

impl DomainType for NoteSeizureAuthorizationBody {
    type Proto = pb::NoteSeizureAuthorizationBody;
}

impl TryFrom<pb::NoteSeizureAuthorizationBody> for NoteSeizureAuthorizationBody {
    type Error = anyhow::Error;

    fn try_from(value: pb::NoteSeizureAuthorizationBody) -> Result<Self> {
        let body = Self {
            chain_id: value.chain_id,
            note_commitment: value
                .note_commitment
                .context("note seizure authorization is missing note commitment")?
                .try_into()
                .context("invalid note seizure note commitment")?,
            nullifier: value
                .nullifier
                .context("note seizure authorization is missing nullifier")?
                .try_into()
                .context("invalid note seizure nullifier")?,
            address: value
                .address
                .context("note seizure authorization is missing address")?
                .try_into()
                .context("invalid note seizure address")?,
            asset_id: value
                .asset_id
                .context("note seizure authorization is missing asset ID")?
                .try_into()
                .context("invalid note seizure asset ID")?,
            amount: value
                .amount
                .context("note seizure authorization is missing amount")?
                .try_into()
                .context("invalid note seizure amount")?,
            freeze_generation: value.freeze_generation,
            frozen_since_height: value.frozen_since_height,
            withdrawal: value
                .withdrawal
                .context("note seizure authorization is missing withdrawal")?
                .try_into()
                .context("invalid note seizure withdrawal")?,
            release_scope_commitment: decode32(
                value.release_scope_commitment,
                "note seizure release scope",
            )?,
            expiry_height: value.expiry_height,
        };
        body.validate()?;
        Ok(body)
    }
}

impl From<NoteSeizureAuthorizationBody> for pb::NoteSeizureAuthorizationBody {
    fn from(value: NoteSeizureAuthorizationBody) -> Self {
        Self {
            chain_id: value.chain_id,
            note_commitment: Some(value.note_commitment.into()),
            nullifier: Some(value.nullifier.into()),
            address: Some(value.address.into()),
            asset_id: Some(value.asset_id.into()),
            amount: Some(value.amount.into()),
            freeze_generation: value.freeze_generation,
            frozen_since_height: value.frozen_since_height,
            withdrawal: Some(value.withdrawal.into()),
            release_scope_commitment: value.release_scope_commitment.to_vec(),
            expiry_height: value.expiry_height,
        }
    }
}

/// Public statement opened by one note-seizure proof.
#[derive(Clone, Debug)]
pub struct NoteSeizureProofPublic {
    pub authorization: NoteSeizureAuthorizationBody,
    pub anchor: tct::Root,
    pub history_required: bool,
    pub recent_position_floor: u64,
    pub recovery_capsule: RecoveryCapsule,
    pub recovery_seed: Fq,
    pub rnk_commitment: Fq,
}

impl NoteSeizureProofPublic {
    pub fn statement_hash(&self) -> Result<Fq, StatementHashError> {
        note_seizure_statement_hash_from_public(self)
    }
}

/// Private opening proving that the authorization consumes the real SCT note.
#[derive(Clone, Debug)]
pub struct NoteSeizureProofPrivate {
    pub note_blinding: Fq,
    pub state_commitment_proof: tct::Proof,
    pub rnk: Fq,
}

impl NoteSeizureProofPrivate {
    pub fn validate_against(&self, public: &NoteSeizureProofPublic) -> Result<()> {
        let note_commitment = crate::note::commitment_from_address(
            public.authorization.address.clone(),
            Value {
                amount: public.authorization.amount,
                asset_id: public.authorization.asset_id,
            },
            self.note_blinding,
            public.recovery_capsule.commitment(),
        )?;
        ensure!(
            note_commitment == public.authorization.note_commitment,
            "note seizure witness note commitment mismatch"
        );
        ensure!(
            self.state_commitment_proof.commitment() == note_commitment,
            "note seizure SCT proof commitment mismatch"
        );
        ensure!(
            self.state_commitment_proof.root() == public.anchor,
            "note seizure SCT proof anchor mismatch"
        );
        ensure!(
            shieldd_sdk_compliance::compliance_nullifier_key_commitment(self.rnk)
                == public.rnk_commitment,
            "note seizure RNK commitment mismatch"
        );
        ensure!(
            Nullifier::derive(
                &shieldd_sdk_keys::keys::NullifierKey(self.rnk),
                self.state_commitment_proof.position(),
                &note_commitment,
            ) == public.authorization.nullifier,
            "note seizure canonical nullifier mismatch"
        );
        ensure!(
            public.history_required
                == (u64::from(self.state_commitment_proof.position())
                    < public.recent_position_floor),
            "note seizure history classification mismatch"
        );
        let plaintext = public
            .recovery_capsule
            .decrypt_with_seed(public.recovery_seed)?;
        ensure!(
            plaintext.amount == public.authorization.amount
                && plaintext.note_blinding == self.note_blinding,
            "note seizure recovery plaintext mismatch"
        );
        Ok(())
    }
}

#[derive(Clone, Debug, Default)]
pub struct NoteSeizureProof {
    pub inner: Vec<u8>,
}

impl NoteSeizureProof {
    fn decoded_proof(&self) -> Result<Proof<Bls12_377>> {
        crate::groth16_proof::decode(&self.inner)
    }

    pub fn verify_with_prepared_vk(
        &self,
        public: &NoteSeizureProofPublic,
        vk: &PreparedVerifyingKey<Bls12_377>,
    ) -> Result<()> {
        let proof = self.decoded_proof()?;
        let statement_hash = public.statement_hash()?;
        let verified = Groth16::<Bls12_377, LibsnarkReduction>::verify_with_processed_vk(
            vk,
            &[statement_hash],
            &proof,
        )?;
        ensure!(verified, "{NOTE_SEIZURE_PROOF_LABEL} proof did not verify");
        Ok(())
    }

    pub fn verify(&self, public: &NoteSeizureProofPublic) -> Result<()> {
        self.verify_with_prepared_vk(
            public,
            shieldd_sdk_proof_params::note_seizure_proof_verification_key(),
        )
    }

    pub fn validate_encoding(&self) -> Result<()> {
        self.decoded_proof()?;
        Ok(())
    }

    pub fn compressed_bytes(&self) -> Result<Vec<u8>> {
        let mut bytes = Vec::new();
        self.decoded_proof()?.serialize_compressed(&mut bytes)?;
        Ok(bytes)
    }
}

impl DomainType for NoteSeizureProof {
    type Proto = pb::ZkNoteSeizureProof;
}

impl From<NoteSeizureProof> for pb::ZkNoteSeizureProof {
    fn from(value: NoteSeizureProof) -> Self {
        Self { inner: value.inner }
    }
}

impl TryFrom<pb::ZkNoteSeizureProof> for NoteSeizureProof {
    type Error = anyhow::Error;

    fn try_from(value: pb::ZkNoteSeizureProof) -> Result<Self> {
        let proof = Self { inner: value.inner };
        proof.validate_encoding()?;
        Ok(proof)
    }
}

/// Complete native and zero-knowledge evidence for consuming one frozen note.
#[derive(Clone, Debug)]
pub struct NoteSeizure {
    pub authorization: NoteSeizureAuthorizationBody,
    pub authority_signature: Signature<SpendAuth>,
    pub anchor: tct::Root,
    pub history_required: bool,
    pub recent_position_floor: u64,
    pub recovery_capsule: RecoveryCapsule,
    pub recovery_seed: Fq,
    pub rnk_commitment: Fq,
    pub pre_evidence: PreEvidence,
    pub reader_secret: Fr,
    pub proof: NoteSeizureProof,
    pub nullifier_window: NullifierWindow,
    pub historical_nullifier_proof: Option<HistoricalNullifierProof>,
}

impl NoteSeizure {
    pub fn validate(&self) -> Result<()> {
        self.authorization.validate()?;
        self.recovery_capsule.validate()?;
        self.nullifier_window.validate()?;
        ensure!(
            self.recent_position_floor == self.nullifier_window.recent_position_floor,
            "note seizure recent position floor differs from its nullifier window"
        );
        match (self.history_required, &self.historical_nullifier_proof) {
            (true, Some(proof)) => {
                ensure!(
                    proof.nullifier == self.authorization.nullifier,
                    "historical proof nullifier differs from note seizure nullifier"
                );
                proof.validate_structure(self.nullifier_window)?;
            }
            (true, None) => anyhow::bail!("old note seizure requires a historical proof"),
            (false, Some(_)) => {
                anyhow::bail!("recent note seizure must not include a historical proof")
            }
            (false, None) => {}
        }
        Ok(())
    }

    pub fn proof_public(&self) -> NoteSeizureProofPublic {
        NoteSeizureProofPublic {
            authorization: self.authorization.clone(),
            anchor: self.anchor,
            history_required: self.history_required,
            recent_position_floor: self.recent_position_floor,
            recovery_capsule: self.recovery_capsule.clone(),
            recovery_seed: self.recovery_seed,
            rnk_commitment: self.rnk_commitment,
        }
    }
}

impl DomainType for NoteSeizure {
    type Proto = pb::NoteSeizure;
}

impl TryFrom<pb::NoteSeizure> for NoteSeizure {
    type Error = anyhow::Error;

    fn try_from(value: pb::NoteSeizure) -> Result<Self> {
        let seizure = Self {
            authorization: value
                .authorization
                .context("note seizure is missing authorization")?
                .try_into()?,
            authority_signature: value
                .authority_signature
                .context("note seizure is missing authority signature")?
                .try_into()
                .context("invalid note seizure authority signature encoding")?,
            anchor: value
                .anchor
                .context("note seizure is missing anchor")?
                .try_into()
                .context("invalid note seizure anchor")?,
            history_required: value.history_required,
            recent_position_floor: value.recent_position_floor,
            recovery_capsule: value
                .recovery_capsule
                .context("note seizure is missing recovery capsule")?
                .try_into()?,
            recovery_seed: decode_fq(value.recovery_seed, "note seizure recovery seed")?,
            rnk_commitment: decode_fq(value.rnk_commitment, "note seizure RNK commitment")?,
            pre_evidence: value
                .pre_evidence
                .context("note seizure is missing PRE evidence")?
                .try_into()?,
            reader_secret: decode_fr(value.reader_secret, "note seizure reader secret")?,
            proof: value
                .proof
                .context("note seizure is missing ZK proof")?
                .try_into()?,
            nullifier_window: value
                .nullifier_window
                .context("note seizure is missing nullifier window")?
                .try_into()?,
            historical_nullifier_proof: value
                .historical_nullifier_proof
                .map(TryInto::try_into)
                .transpose()?,
        };
        seizure.validate()?;
        Ok(seizure)
    }
}

impl From<NoteSeizure> for pb::NoteSeizure {
    fn from(value: NoteSeizure) -> Self {
        Self {
            authorization: Some(value.authorization.into()),
            authority_signature: Some(value.authority_signature.into()),
            anchor: Some(value.anchor.into()),
            history_required: value.history_required,
            recent_position_floor: value.recent_position_floor,
            recovery_capsule: Some(value.recovery_capsule.into()),
            recovery_seed: value.recovery_seed.to_bytes().to_vec(),
            rnk_commitment: value.rnk_commitment.to_bytes().to_vec(),
            pre_evidence: Some(value.pre_evidence.into()),
            reader_secret: value.reader_secret.to_bytes().to_vec(),
            proof: Some(value.proof.into()),
            nullifier_window: Some(value.nullifier_window.into()),
            historical_nullifier_proof: value.historical_nullifier_proof.map(Into::into),
        }
    }
}

fn decode32(bytes: Vec<u8>, label: &str) -> Result<[u8; 32]> {
    bytes
        .try_into()
        .map_err(|bytes: Vec<u8>| anyhow::anyhow!("{label} must be 32 bytes, got {}", bytes.len()))
}

fn decode_fq(bytes: Vec<u8>, label: &str) -> Result<Fq> {
    Fq::from_bytes_checked(&decode32(bytes, label)?)
        .map_err(|_| anyhow::anyhow!("{label} is not a canonical field element"))
}

fn decode_fr(bytes: Vec<u8>, label: &str) -> Result<Fr> {
    Fr::from_bytes_checked(&decode32(bytes, label)?)
        .map_err(|_| anyhow::anyhow!("{label} is not a canonical scalar"))
}

#[cfg(test)]
mod tests {
    use decaf377_rdsa::SigningKey;
    use shieldd_sdk_keys::test_keys;

    use super::*;
    use crate::{HostTransfer, HostWithdrawalDestination};

    fn authorization() -> NoteSeizureAuthorizationBody {
        let asset_id = asset::Id(Fq::from(11u64));
        let amount = Amount::from(42u64);
        NoteSeizureAuthorizationBody {
            chain_id: "shieldd-test".to_owned(),
            note_commitment: tct::StateCommitment(Fq::from(7u64)),
            nullifier: Nullifier(Fq::from(8u64)),
            address: test_keys::ADDRESS_0.clone(),
            asset_id,
            amount,
            freeze_generation: 2,
            frozen_since_height: 10,
            withdrawal: HostWithdrawal {
                value: Value { amount, asset_id },
                destination: HostWithdrawalDestination::Transfer(HostTransfer {
                    recipient: "bank1seizureauthority".to_owned(),
                }),
            },
            release_scope_commitment: [9u8; 32],
            expiry_height: 20,
        }
    }

    #[test]
    fn authority_signature_binds_the_complete_seizure_instruction() {
        let authority = SigningKey::<SpendAuth>::from(Fr::from(3u64));
        let authority_vk = VerificationKey::from(&authority);
        let body = authorization();
        let signature = authority.sign_deterministic(&body.signing_bytes().unwrap());

        body.verify_signature(&authority_vk, &signature).unwrap();

        let mut redirected = body.clone();
        redirected.withdrawal.destination = HostWithdrawalDestination::Transfer(HostTransfer {
            recipient: "bank1attacker".to_owned(),
        });
        redirected
            .verify_signature(&authority_vk, &signature)
            .expect_err("authority signature must bind the destination");

        let wrong_authority = SigningKey::<SpendAuth>::from(Fr::from(4u64));
        body.verify_signature(&VerificationKey::from(&wrong_authority), &signature)
            .expect_err("a different seizure authority must not authorize the note");
    }

    #[test]
    fn authorization_proto_round_trip_preserves_signing_bytes() {
        let body = authorization();
        let encoded = body.clone().encode_to_vec();
        let decoded = NoteSeizureAuthorizationBody::decode(encoded.as_slice()).unwrap();

        assert_eq!(decoded, body);
        assert_eq!(
            decoded.signing_bytes().unwrap(),
            body.signing_bytes().unwrap()
        );
        assert_eq!(decoded.commitment().unwrap(), body.commitment().unwrap());
    }

    #[test]
    fn seizure_witness_needs_recovered_blinding_not_note_rseed() {
        let mut body = authorization();
        let capk = decaf377::Element::GENERATOR * Fr::from(19u64);
        let rseed = crate::Rseed([17; 32]);
        let note_blinding = rseed.derive_note_blinding();
        let (capsule, opening) =
            RecoveryCapsule::encrypt(body.amount, note_blinding, capk, rseed).unwrap();
        body.note_commitment = crate::note::commitment_from_address(
            body.address.clone(),
            Value {
                amount: body.amount,
                asset_id: body.asset_id,
            },
            note_blinding,
            capsule.commitment(),
        )
        .unwrap();

        let mut tree = tct::Tree::new();
        tree.insert(tct::Witness::Keep, body.note_commitment)
            .unwrap();
        let state_commitment_proof = tree.witness(body.note_commitment).unwrap();
        let rnk = Fq::from(23u64);
        body.nullifier = Nullifier::derive(
            &shieldd_sdk_keys::keys::NullifierKey(rnk),
            state_commitment_proof.position(),
            &body.note_commitment,
        );
        let public = NoteSeizureProofPublic {
            authorization: body,
            anchor: state_commitment_proof.root(),
            history_required: false,
            recent_position_floor: 0,
            recovery_capsule: capsule,
            recovery_seed: opening.seed,
            rnk_commitment: shieldd_sdk_compliance::compliance_nullifier_key_commitment(rnk),
        };
        let private = NoteSeizureProofPrivate {
            note_blinding,
            state_commitment_proof,
            rnk,
        };

        private.validate_against(&public).unwrap();
        crate::gnark::encode_note_seizure_witness(&public, &private).unwrap();

        let mut wrong = private;
        wrong.note_blinding += Fq::from(1u64);
        wrong
            .validate_against(&public)
            .expect_err("a different recovered blinding must not open the note");
    }
}
