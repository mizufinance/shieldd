use crate::{
    public_input_hash::note_seizure_statement_hash_from_public, HostWithdrawal, RecoveryCommitment,
};
use anyhow::{ensure, Context, Result};
use reddsa::{sapling::SpendAuth, Signature, VerificationKey};
use shieldd_sdk_asset::{asset, balance::Commitment, Value};
use shieldd_sdk_crypto::{encoding, Fq, Fr};
use shieldd_sdk_keys::Address;
use shieldd_sdk_num::Amount;
use shieldd_sdk_proto::{core::component::shielded_pool::v1 as pb, DomainType};
use shieldd_sdk_sct::Nullifier;
use shieldd_sdk_tct as tct;

pub const NOTE_SEIZURE_PROOF_LABEL: &str = "note_seizure";
pub const NOTE_SEIZURE_STATEMENT_FIELD_COUNT: usize =
    shieldd_sdk_circuits::seizure::STATEMENT_FIELDS;
pub const MAX_NOTE_SEIZURE_CHAIN_ID_BYTES: usize = 128;
pub const MAX_SEIZURE_ENTRIES: usize = shieldd_sdk_compliance::MAX_SEIZED_NULLIFIERS;
pub const MAX_SEIZURE_REQUEST_BYTES: usize = 16 * 1024 * 1024;
const AUTHORIZATION_DOMAIN: &[u8] = b"shieldd.seizure_batch.authorization.v1";
const AUTHORIZATION_COMMITMENT_DOMAIN: &[u8] = b"shieldd.seizure_batch.commitment.v1";

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct SeizureEntry {
    pub nullifier: Nullifier,
    pub value_commitment: Commitment,
}
impl DomainType for SeizureEntry {
    type Proto = pb::SeizureEntry;
}
impl From<SeizureEntry> for pb::SeizureEntry {
    fn from(v: SeizureEntry) -> Self {
        Self {
            nullifier: Some(v.nullifier.into()),
            value_commitment: Some(v.value_commitment.into()),
        }
    }
}
impl TryFrom<pb::SeizureEntry> for SeizureEntry {
    type Error = anyhow::Error;
    fn try_from(v: pb::SeizureEntry) -> Result<Self> {
        Ok(Self {
            nullifier: v
                .nullifier
                .context("missing seizure nullifier")?
                .try_into()?,
            value_commitment: v
                .value_commitment
                .context("missing seizure value commitment")?
                .try_into()?,
        })
    }
}

/// Only the aggregate value is public. Entries are ordered by canonical nullifier bytes.
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct NoteSeizureAuthorizationBody {
    pub chain_id: String,
    pub address: Address,
    pub asset_id: asset::Id,
    pub freeze_generation: u64,
    pub frozen_since_height: u64,
    pub withdrawal: HostWithdrawal,
    pub expiry_height: u64,
    pub registry_id: [u8; 32],
    pub entries: Vec<SeizureEntry>,
    pub aggregate_blinding: Fr,
}
impl NoteSeizureAuthorizationBody {
    pub fn validate(&self) -> Result<()> {
        ensure!(
            !self.chain_id.is_empty() && self.chain_id.len() <= MAX_NOTE_SEIZURE_CHAIN_ID_BYTES,
            "invalid seizure chain_id length"
        );
        ensure!(
            (1..=MAX_SEIZURE_ENTRIES).contains(&self.entries.len()),
            "seizure entry count must be 1..={MAX_SEIZURE_ENTRIES}"
        );
        ensure!(
            self.entries
                .windows(2)
                .all(|p| p[0].nullifier.to_bytes() < p[1].nullifier.to_bytes()),
            "seizure nullifiers must be unique and canonically ordered"
        );
        ensure!(
            self.freeze_generation > 0 && self.frozen_since_height > 0,
            "seizure requires a freeze generation and height"
        );
        ensure!(
            self.expiry_height >= self.frozen_since_height,
            "seizure expires before freeze"
        );
        self.withdrawal.validate()?;
        ensure!(
            self.withdrawal.value.asset_id == self.asset_id,
            "seizure withdrawal asset mismatch"
        );
        ensure!(
            self.encode_to_vec().len() <= MAX_SEIZURE_REQUEST_BYTES,
            "seizure authorization exceeds size limit"
        );
        Ok(())
    }
    pub fn verify_balance(&self) -> Result<()> {
        self.validate()?;
        let sum = self
            .entries
            .iter()
            .fold(Commitment::default(), |sum, entry| {
                sum + entry.value_commitment
            });
        ensure!(
            sum == self.withdrawal.value.commit(self.aggregate_blinding),
            "seizure aggregate value commitment mismatch"
        );
        Ok(())
    }
    pub fn signing_bytes(&self) -> Result<Vec<u8>> {
        self.validate()?;
        let mut bytes = AUTHORIZATION_DOMAIN.to_vec();
        bytes.push(shieldd_sdk_crypto::SUITE);
        bytes.extend(self.encode_to_vec());
        Ok(bytes)
    }
    pub fn verify_signature(
        &self,
        authority: &VerificationKey<SpendAuth>,
        signature: &Signature<SpendAuth>,
    ) -> Result<()> {
        authority
            .verify(&self.signing_bytes()?, signature)
            .context("invalid seizure authority signature")
    }
    pub fn commitment(&self) -> Result<Fq> {
        self.validate()?;
        let mut hash = blake2b_simd::Params::new().hash_length(64).to_state();
        hash.update(AUTHORIZATION_COMMITMENT_DOMAIN);
        hash.update(&[shieldd_sdk_crypto::SUITE]);
        hash.update(&self.encode_to_vec());
        Ok(Fq::from_bytes_wide(
            hash.finalize().as_bytes().try_into().expect("Blake2b-512"),
        ))
    }
}
impl DomainType for NoteSeizureAuthorizationBody {
    type Proto = pb::NoteSeizureAuthorizationBody;
}
impl TryFrom<pb::NoteSeizureAuthorizationBody> for NoteSeizureAuthorizationBody {
    type Error = anyhow::Error;
    fn try_from(v: pb::NoteSeizureAuthorizationBody) -> Result<Self> {
        ensure!(
            v.entries.len() <= MAX_SEIZURE_ENTRIES,
            "too many seizure entries"
        );
        let body = Self {
            chain_id: v.chain_id,
            address: v.address.context("missing seizure address")?.try_into()?,
            asset_id: v.asset_id.context("missing seizure asset")?.try_into()?,
            freeze_generation: v.freeze_generation,
            frozen_since_height: v.frozen_since_height,
            withdrawal: v
                .withdrawal
                .context("missing seizure withdrawal")?
                .try_into()?,
            expiry_height: v.expiry_height,
            registry_id: bytes32(v.registry_id, "registry ID")?,
            entries: v
                .entries
                .into_iter()
                .map(TryInto::try_into)
                .collect::<Result<_>>()?,
            aggregate_blinding: encoding::scalar(&bytes32(
                v.aggregate_blinding,
                "aggregate blinding",
            )?)?,
        };
        body.validate()?;
        Ok(body)
    }
}
impl From<NoteSeizureAuthorizationBody> for pb::NoteSeizureAuthorizationBody {
    fn from(v: NoteSeizureAuthorizationBody) -> Self {
        Self {
            chain_id: v.chain_id,
            address: Some(v.address.into()),
            asset_id: Some(v.asset_id.into()),
            freeze_generation: v.freeze_generation,
            frozen_since_height: v.frozen_since_height,
            withdrawal: Some(v.withdrawal.into()),
            expiry_height: v.expiry_height,
            registry_id: v.registry_id.to_vec(),
            entries: v.entries.into_iter().map(Into::into).collect(),
            aggregate_blinding: v.aggregate_blinding.to_bytes().to_vec(),
        }
    }
}

#[derive(Clone, Debug)]
pub struct NoteSeizureProofPublic {
    pub anchor: tct::Root,
    pub address: Address,
    pub asset_id: asset::Id,
    pub rnk_commitment: Fq,
    pub entry: SeizureEntry,
}
impl NoteSeizureProofPublic {
    pub fn statement_hash(&self) -> Result<Fq> {
        note_seizure_statement_hash_from_public(self)
    }
}
/// Kept in the private prover process; never serialized into consensus or checkpoints.
#[derive(Clone)]
pub struct NoteSeizureProofPrivate {
    pub amount: Amount,
    pub note_blinding: Fq,
    pub recovery_commitment: RecoveryCommitment,
    pub state_commitment_proof: tct::Proof,
    pub rnk: Fq,
    pub value_blinding: Fr,
}
impl NoteSeizureProofPrivate {
    pub fn validate_against(&self, public: &NoteSeizureProofPublic) -> Result<()> {
        ensure!(
            self.amount != Amount::zero(),
            "seizure must consume a nonzero whole note"
        );
        let value = Value {
            amount: self.amount,
            asset_id: public.asset_id,
        };
        let commitment = crate::note::commitment_from_address(
            public.address.clone(),
            value,
            self.note_blinding,
            self.recovery_commitment,
        );
        ensure!(
            self.state_commitment_proof.commitment() == commitment,
            "seizure private opening mismatch"
        );
        self.state_commitment_proof.verify(public.anchor)?;
        ensure!(
            shieldd_sdk_compliance::compliance_nullifier_key_commitment(self.rnk)
                == public.rnk_commitment,
            "seizure RNK commitment mismatch"
        );
        ensure!(
            Nullifier::derive(
                &shieldd_sdk_keys::keys::NullifierKey(self.rnk),
                self.state_commitment_proof.position(),
                &commitment
            ) == public.entry.nullifier,
            "seizure positional nullifier mismatch"
        );
        ensure!(
            value.commit(self.value_blinding) == public.entry.value_commitment,
            "seizure complete value commitment mismatch"
        );
        Ok(())
    }
}
#[derive(Clone, Debug, Default)]
pub struct NoteSeizureProof {
    pub inner: Vec<u8>,
}

impl NoteSeizureProof {
    pub fn to_batch_item(
        &self,
        public: &NoteSeizureProofPublic,
    ) -> Result<shieldd_sdk_proof_params::pari::Verification> {
        let envelope =
            crate::proof::decode(&self.inner, shieldd_sdk_circuits::proof::Family::Seizure)?;
        Ok(shieldd_sdk_proof_params::pari::Verification {
            family: shieldd_sdk_circuits::proof::Family::Seizure,
            statement: shieldd_sdk_circuits::encoding::field(&public.statement_hash()?),
            envelope,
        })
    }

    pub fn verify(
        &self,
        public: &NoteSeizureProofPublic,
        registry: &shieldd_sdk_proof_params::pari::Registry,
    ) -> Result<()> {
        registry
            .verify_item(&self.to_batch_item(public)?)
            .map(|_| ())
    }

    pub fn validate_encoding(&self) -> Result<()> {
        let decoded = shieldd_sdk_circuits::proof::Envelope::from_bytes(&self.inner)?;
        ensure!(
            decoded.family() == shieldd_sdk_circuits::proof::Family::Seizure,
            "wrong proof family"
        );
        Ok(())
    }

    pub fn prove(
        public: NoteSeizureProofPublic,
        private: NoteSeizureProofPrivate,
        registry: &shieldd_sdk_proof_params::pari::Registry,
    ) -> Result<Self, crate::ProofError> {
        (|| -> Result<Self> {
            let witness = crate::pari::seizure(&public, &private)?;
            let proof = registry.prove(
                &witness,
                shieldd_sdk_proof_params::pari::proving_strategy()?,
            )?;
            registry.verify(
                shieldd_sdk_circuits::proof::Family::Seizure,
                &shieldd_sdk_circuits::encoding::field(&public.statement_hash()?),
                &proof,
            )?;
            Ok(Self {
                inner: proof.to_bytes(),
            })
        })()
        .map_err(|error| {
            crate::ProofError::ProofGenerationFailed(format!("Pari seizure: {error:#}"))
        })
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

#[derive(Clone, Debug)]
pub struct NoteSeizureBatch {
    pub authorization: NoteSeizureAuthorizationBody,
    pub authority_signature: Signature<SpendAuth>,
    pub anchor: tct::Root,
    pub proofs: Vec<NoteSeizureProof>,
}
impl NoteSeizureBatch {
    pub fn validate(&self) -> Result<()> {
        self.authorization.validate()?;
        ensure!(
            self.proofs.len() == self.authorization.entries.len(),
            "seizure proof count mismatch"
        );
        ensure!(
            self.encode_to_vec().len() <= MAX_SEIZURE_REQUEST_BYTES,
            "seizure request exceeds size limit"
        );
        Ok(())
    }
    pub fn verify_proofs(
        &self,
        rnk_commitment: Fq,
        registry: &shieldd_sdk_proof_params::pari::Registry,
    ) -> Result<()> {
        self.validate()?;
        ensure!(
            self.authorization.registry_id == registry.id(),
            "seizure registry mismatch"
        );
        let items = self
            .authorization
            .entries
            .iter()
            .zip(&self.proofs)
            .map(|(entry, proof)| {
                proof.to_batch_item(&NoteSeizureProofPublic {
                    anchor: self.anchor,
                    address: self.authorization.address.clone(),
                    asset_id: self.authorization.asset_id,
                    rnk_commitment,
                    entry: entry.clone(),
                })
            })
            .collect::<Result<Vec<_>>>()?;
        registry.verify_items(&items, shieldd_sdk_proof_params::pari::proving_strategy()?)?;
        Ok(())
    }
}
impl DomainType for NoteSeizureBatch {
    type Proto = pb::NoteSeizureBatch;
}
impl TryFrom<pb::NoteSeizureBatch> for NoteSeizureBatch {
    type Error = anyhow::Error;
    fn try_from(v: pb::NoteSeizureBatch) -> Result<Self> {
        ensure!(
            v.proofs.len() <= MAX_SEIZURE_ENTRIES,
            "too many seizure proofs"
        );
        let batch = Self {
            authorization: v
                .authorization
                .context("missing seizure authorization")?
                .try_into()?,
            authority_signature: v
                .authority_signature
                .context("missing seizure signature")?
                .try_into()?,
            anchor: v.anchor.context("missing seizure anchor")?.try_into()?,
            proofs: v
                .proofs
                .into_iter()
                .map(TryInto::try_into)
                .collect::<Result<_>>()?,
        };
        batch.validate()?;
        Ok(batch)
    }
}
impl From<NoteSeizureBatch> for pb::NoteSeizureBatch {
    fn from(v: NoteSeizureBatch) -> Self {
        Self {
            authorization: Some(v.authorization.into()),
            authority_signature: Some(v.authority_signature.into()),
            anchor: Some(v.anchor.into()),
            proofs: v.proofs.into_iter().map(Into::into).collect(),
        }
    }
}
fn bytes32(bytes: Vec<u8>, name: &str) -> Result<[u8; 32]> {
    bytes
        .try_into()
        .map_err(|v: Vec<u8>| anyhow::anyhow!("{name} must have 32 bytes, got {}", v.len()))
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::{HostTransfer, HostWithdrawalDestination};
    use rand_core::OsRng;
    use reddsa::SigningKey;
    use shieldd_sdk_keys::test_keys;
    fn body() -> NoteSeizureAuthorizationBody {
        let asset_id = asset::Id(Fq::from(7u64));
        let entries = [(10u64, 11u64), (20, 13)]
            .into_iter()
            .enumerate()
            .map(|(i, (amount, r))| SeizureEntry {
                nullifier: Nullifier(Fq::from(i as u64 + 1)),
                value_commitment: Value {
                    asset_id,
                    amount: amount.into(),
                }
                .commit(Fr::from(r)),
            })
            .collect();
        NoteSeizureAuthorizationBody {
            chain_id: "test".into(),
            address: test_keys::ADDRESS_0.clone(),
            asset_id,
            freeze_generation: 1,
            frozen_since_height: 2,
            expiry_height: 20,
            registry_id: [1; 32],
            entries,
            aggregate_blinding: Fr::from(24u64),
            withdrawal: HostWithdrawal {
                value: Value {
                    asset_id,
                    amount: 30u64.into(),
                },
                destination: HostWithdrawalDestination::Transfer(HostTransfer {
                    recipient: "bank1authority".into(),
                }),
            },
        }
    }
    #[test]
    fn total_opening_and_authority_bind_every_economic_fact() {
        let body = body();
        body.verify_balance().unwrap();
        let sk = SigningKey::<SpendAuth>::try_from(Fr::from(3u64).to_bytes()).unwrap();
        let vk = VerificationKey::from(&sk);
        let signature = sk.sign(OsRng, &body.signing_bytes().unwrap());
        body.verify_signature(&vk, &signature).unwrap();
        for i in 0..8 {
            let mut bad = body.clone();
            match i {
                0 => bad.withdrawal.value.amount = 29u64.into(),
                1 => bad.aggregate_blinding += Fr::from(1u64),
                2 => bad.entries[1].value_commitment = bad.entries[0].value_commitment,
                3 => bad.entries[1].nullifier = Nullifier(Fq::from(3u64)),
                4 => bad.registry_id[0] ^= 1,
                5 => bad.freeze_generation += 1,
                6 => bad.chain_id.push('x'),
                _ => bad.expiry_height += 1,
            }
            assert!(bad.verify_signature(&vk, &signature).is_err());
            if i < 3 {
                let signed_wrong = sk.sign(OsRng, &bad.signing_bytes().unwrap());
                bad.verify_signature(&vk, &signed_wrong).unwrap();
                assert!(bad
                    .verify_balance()
                    .unwrap_err()
                    .to_string()
                    .contains("aggregate value commitment"));
            }
            assert_ne!(bad.commitment().unwrap(), body.commitment().unwrap());
        }
        let mut bad = body.clone();
        bad.entries.reverse();
        assert!(bad.validate().is_err());
        bad.entries = vec![body.entries[0].clone(); 2];
        assert!(bad.validate().is_err());
        bad.entries.clear();
        assert!(bad.validate().is_err());
    }
    #[test]
    fn bounded_integer_total_zero_blinding_and_canonical_codecs() {
        let mut body = body();
        body.aggregate_blinding = Fr::from(0u64);
        body.entries = (1..=MAX_SEIZURE_ENTRIES)
            .map(|n| SeizureEntry {
                nullifier: Nullifier(Fq::from(n as u64)),
                value_commitment: Value {
                    asset_id: body.asset_id,
                    amount: 1u64.into(),
                }
                .commit(Fr::from(0u64)),
            })
            .collect();
        body.entries.sort_by_key(|entry| entry.nullifier.to_bytes());
        body.withdrawal.value.amount = Amount::from(MAX_SEIZURE_ENTRIES as u64);
        body.verify_balance().unwrap();
        let wire: pb::NoteSeizureAuthorizationBody = body.clone().into();
        assert_eq!(
            NoteSeizureAuthorizationBody::try_from(wire.clone()).unwrap(),
            body
        );
        let mut bad = wire.clone();
        bad.aggregate_blinding = vec![255; 32];
        assert!(NoteSeizureAuthorizationBody::try_from(bad).is_err());
        let mut bad = wire;
        bad.entries[0].value_commitment.as_mut().unwrap().inner = vec![255; 32];
        assert!(NoteSeizureAuthorizationBody::try_from(bad).is_err());
        body.withdrawal.value.amount = 1u64.into();
        assert!(body.verify_balance().is_err());
        let q = shieldd_sdk_crypto::encoding::embed_scalar(&(-Fr::from(1u64))) + Fq::from(1u64);
        let max_sum = Fq::from(Amount::from(u128::MAX)) * Fq::from(MAX_SEIZURE_ENTRIES as u64);
        assert!(
            max_sum
                .to_bytes()
                .iter()
                .rev()
                .cmp(q.to_bytes().iter().rev())
                .is_lt(),
            "bounded integer sums must be below the subgroup order"
        );
    }
    #[test]
    fn private_opening_consumes_whole_note_and_positional_nullifier() {
        let body = body();
        let amount = Amount::from(42u64);
        let note_blinding = Fq::from(17u64);
        let recovery_commitment = RecoveryCommitment(Fq::from(19u64));
        let rnk = Fq::from(23u64);
        let value = Value {
            amount,
            asset_id: body.asset_id,
        };
        let cm = crate::note::commitment_from_address(
            body.address.clone(),
            value,
            note_blinding,
            recovery_commitment,
        );
        let mut tree = tct::Tree::new();
        let positions = [
            tree.insert(tct::Witness::Keep, cm).unwrap(),
            tree.insert(tct::Witness::Keep, cm).unwrap(),
        ];
        let mut nullifiers = Vec::new();
        for position in positions {
            let r = Fr::from(29u64);
            let public = NoteSeizureProofPublic {
                anchor: tree.root(),
                address: body.address.clone(),
                asset_id: body.asset_id,
                rnk_commitment: shieldd_sdk_compliance::compliance_nullifier_key_commitment(rnk),
                entry: SeizureEntry {
                    nullifier: Nullifier::derive(
                        &shieldd_sdk_keys::keys::NullifierKey(rnk),
                        position,
                        &cm,
                    ),
                    value_commitment: value.commit(r),
                },
            };
            let private = NoteSeizureProofPrivate {
                amount,
                note_blinding,
                recovery_commitment,
                rnk,
                value_blinding: r,
                state_commitment_proof: tree.witness(position).unwrap(),
            };
            private.validate_against(&public).unwrap();
            let witness = crate::pari::seizure(&public, &private).unwrap();
            assert!(shieldd_sdk_circuits::catalogue::evaluate(&witness)
                .unwrap()
                .is_satisfied());
            assert_eq!(
                crate::public_input_hash::note_seizure_statement_fields(&public)
                    .unwrap()
                    .len(),
                NOTE_SEIZURE_STATEMENT_FIELD_COUNT
            );
            let mut partial = private.clone();
            partial.amount = 41u64.into();
            let mut partial_public = public.clone();
            partial_public.entry.value_commitment = Value {
                amount: partial.amount,
                asset_id: body.asset_id,
            }
            .commit(r);
            assert!(partial
                .validate_against(&partial_public)
                .unwrap_err()
                .to_string()
                .contains("private opening"));
            nullifiers.push(public.entry.nullifier);
        }
        assert_ne!(nullifiers[0], nullifiers[1]);
    }
}
