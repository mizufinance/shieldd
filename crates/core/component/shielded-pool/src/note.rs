use std::convert::{TryFrom, TryInto};

use crate::genesis::Allocation;

use rand::{CryptoRng, Rng};
use serde::{Deserialize, Serialize};
use shieldd_sdk_crypto::ka;
use shieldd_sdk_crypto::{audit::point_fields, domains, poseidon};
use shieldd_sdk_crypto::{Fq, SubgroupPoint};
use shieldd_sdk_keys::{
    keys::{Diversifier, FullViewingKey, IncomingViewingKey, OutgoingViewingKey},
    symmetric::{OutgoingCipherKey, OvkWrappedKey, PayloadKey, PayloadKind},
    Address, AddressView,
};
use shieldd_sdk_proto::shieldd::core::component::shielded_pool::v1 as pb;
use thiserror;

pub use shieldd_sdk_tct::StateCommitment;

use shieldd_sdk_asset::{asset, balance, Value, ValueView};
use shieldd_sdk_num::Amount;

use crate::{NotePayload, RecoveryCapsule, RecoveryCommitment, Rseed};

pub const NOTE_LEN_BYTES: usize = 161;
pub const NOTE_CIPHERTEXT_BYTES: usize = NOTE_LEN_BYTES + 16;

/// A plaintext Shieldd note.
#[derive(Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(into = "pb::Note", try_from = "pb::Note")]
pub struct Note {
    /// The typed value recorded by this note.
    value: Value,
    /// A uniformly random 32-byte sequence used to derive an ephemeral secret key
    /// and note blinding factor.
    rseed: Rseed,
    /// The address controlling this note.
    address: Address,
    /// Commitment to the public recovery capsule for this exact note.
    recovery_commitment: RecoveryCommitment,
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
#[serde(into = "pb::NoteView", try_from = "pb::NoteView")]
pub struct NoteView {
    pub value: ValueView,
    pub rseed: Rseed,
    pub address: AddressView,
    pub recovery_commitment: RecoveryCommitment,
}

impl NoteView {
    pub fn note(&self) -> Result<Note, Error> {
        self.clone().try_into()
    }

    pub fn address(&self) -> Address {
        self.address.address()
    }

    pub fn asset_id(&self) -> asset::Id {
        self.value.asset_id()
    }
}

impl TryFrom<NoteView> for Note {
    type Error = Error;

    fn try_from(view: NoteView) -> Result<Self, Self::Error> {
        let value = view.value.value();
        let address = view.address.address();
        Note::from_parts(address, value, view.rseed, view.recovery_commitment)
    }
}

/// A note ciphertext.
#[derive(Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(into = "pb::NoteCiphertext", try_from = "pb::NoteCiphertext")]
pub struct NoteCiphertext(pub [u8; NOTE_CIPHERTEXT_BYTES]);

#[derive(thiserror::Error, Debug)]
pub enum Error {
    #[error("Invalid note commitment")]
    InvalidNoteCommitment,
    #[error("Invalid transmission key")]
    InvalidTransmissionKey,
    #[error("Note type unsupported")]
    NoteTypeUnsupported,
    #[error("Note deserialization error")]
    NoteDeserializationError,
    #[error("Invalid note ciphertext")]
    InvalidNoteCiphertext,
    #[error("Decryption error")]
    DecryptionError,
}

impl Note {
    pub fn controlled_by(&self, fvk: &FullViewingKey) -> bool {
        if fvk.address_index(&self.address()).is_some() {
            // Check if this note is associated with the wallet's transparent address.
            if fvk
                .incoming()
                .transparent_address()
                .parse::<Address>()
                .expect("constructed transparent address is always valid")
                == self.address()
            {
                return true;
            }

            return *self.transmission_key()
                == fvk
                    .incoming()
                    .diversified_public(&self.diversified_generator())
                    .expect("validated diversified generator");
        } else {
            false
        }
    }

    /// Obtain a note corresponding to this allocation.
    ///
    /// Note: to ensure determinism, this uses a zero rseed when
    /// creating the note.
    pub fn from_allocation(allocation: Allocation) -> anyhow::Result<Note> {
        Note::from_parts(
            allocation.address,
            Value {
                amount: allocation.raw_amount,
                asset_id: asset::REGISTRY
                    .parse_denom(&allocation.raw_denom)
                    .ok_or_else(|| anyhow::anyhow!("invalid denomination"))?
                    .id(),
            },
            Rseed([0u8; 32]),
            RecoveryCommitment::unavailable(),
        )
        .map_err(Into::into)
    }

    pub fn from_parts(
        address: Address,
        value: Value,
        rseed: Rseed,
        recovery_commitment: RecoveryCommitment,
    ) -> Result<Self, Error> {
        Ok(Note {
            value,
            rseed,
            address: address.clone(),
            recovery_commitment,
        })
    }

    pub fn from_parts_with_recovery(
        address: Address,
        value: Value,
        rseed: Rseed,
        payload_key: SubgroupPoint,
    ) -> anyhow::Result<(Self, RecoveryCapsule)> {
        let (capsule, _) = RecoveryCapsule::encrypt(
            value.amount,
            rseed.derive_note_blinding(),
            payload_key,
            rseed,
        )?;
        let note = Self::from_parts(address, value, rseed, capsule.commitment())?;
        Ok((note, capsule))
    }

    pub fn payload(&self, recovery_capsule: RecoveryCapsule) -> NotePayload {
        debug_assert_eq!(self.recovery_commitment, recovery_capsule.commitment());
        NotePayload {
            note_commitment: self.commit(),
            ephemeral_key: self.ephemeral_public_key(),
            encrypted_note: self.encrypt(),
            recovery_capsule: Some(recovery_capsule),
        }
    }

    /// Generate a fresh note representing the given value for the given destination address, with a
    /// random blinding factor.
    pub fn generate(rng: &mut (impl Rng + CryptoRng), address: &Address, value: Value) -> Self {
        let rseed = Rseed::generate(rng);
        Note::from_parts(
            address.clone(),
            value,
            rseed,
            RecoveryCommitment::unavailable(),
        )
        .expect("transmission key in address is always valid")
    }

    pub fn address(&self) -> Address {
        self.address.clone()
    }

    pub fn diversified_generator(&self) -> shieldd_sdk_crypto::SubgroupPoint {
        *self.address.diversified_generator()
    }

    pub fn transmission_key(&self) -> &ka::Public {
        self.address.transmission_key()
    }

    pub fn transmission_point(&self) -> &SubgroupPoint {
        self.address.transmission_point()
    }

    pub fn diversifier(&self) -> &Diversifier {
        self.address.diversifier()
    }

    pub fn ephemeral_secret_key(&self) -> ka::Secret {
        self.rseed.derive_esk()
    }

    pub fn ephemeral_public_key(&self) -> ka::Public {
        self.ephemeral_secret_key()
            .diversified_public(&self.diversified_generator())
            .expect("validated diversified generator")
    }

    pub fn note_blinding(&self) -> Fq {
        self.rseed.derive_note_blinding()
    }

    pub fn value(&self) -> Value {
        self.value
    }

    pub fn asset_id(&self) -> asset::Id {
        self.value.asset_id
    }

    pub fn amount(&self) -> Amount {
        self.value.amount
    }

    pub fn rseed(&self) -> Rseed {
        self.rseed
    }

    pub fn recovery_commitment(&self) -> RecoveryCommitment {
        self.recovery_commitment
    }

    /// Encrypt a note, returning its ciphertext.
    pub fn encrypt(&self) -> NoteCiphertext {
        let esk = self.ephemeral_secret_key();
        let epk = esk
            .diversified_public(&self.diversified_generator())
            .expect("validated diversified generator");
        let shared_secret = esk.key_agreement_with(self.transmission_key());

        let key = PayloadKey::derive(&shared_secret, &epk);
        let note_plaintext: Vec<u8> = self.into();
        let encryption_result = key.encrypt(note_plaintext, PayloadKind::Note);

        let ciphertext: [u8; NOTE_CIPHERTEXT_BYTES] = encryption_result
            .try_into()
            .expect("note encryption result fits in ciphertext len");

        NoteCiphertext(ciphertext)
    }

    /// Generate encrypted outgoing cipher key for use with this note.
    pub fn encrypt_key(&self, ovk: &OutgoingViewingKey, cv: balance::Commitment) -> OvkWrappedKey {
        let esk = self.ephemeral_secret_key();
        let epk = esk
            .diversified_public(&self.diversified_generator())
            .expect("validated diversified generator");
        let ock = OutgoingCipherKey::derive(ovk, cv, self.commit(), &epk);
        let shared_secret = esk.key_agreement_with(self.transmission_key());

        let encryption_result = ock.encrypt(shared_secret.to_bytes().to_vec(), PayloadKind::Note);

        OvkWrappedKey(
            encryption_result
                .try_into()
                .expect("OVK encryption result fits in ciphertext len"),
        )
    }

    /// Decrypt wrapped OVK to generate the transmission key and ephemeral secret
    pub fn decrypt_key(
        wrapped_ovk: OvkWrappedKey,
        cm: StateCommitment,
        cv: balance::Commitment,
        ovk: &OutgoingViewingKey,
        epk: &ka::Public,
    ) -> Result<ka::SharedSecret, Error> {
        let ock = OutgoingCipherKey::derive(ovk, cv, cm, epk);

        let plaintext = ock
            .decrypt(wrapped_ovk.to_vec(), PayloadKind::Note)
            .map_err(|_| Error::DecryptionError)?;

        let shared_secret_bytes: [u8; 32] = plaintext
            .as_slice()
            .try_into()
            .map_err(|_| Error::DecryptionError)?;
        let shared_secret: ka::SharedSecret = shared_secret_bytes
            .try_into()
            .map_err(|_| Error::DecryptionError)?;

        Ok(shared_secret)
    }

    /// Decrypt a note ciphertext using the wrapped OVK to generate a plaintext `Note`.
    pub fn decrypt_outgoing(
        ciphertext: &NoteCiphertext,
        wrapped_ovk: OvkWrappedKey,
        cm: StateCommitment,
        cv: balance::Commitment,
        ovk: &OutgoingViewingKey,
        epk: &ka::Public,
    ) -> Result<Note, Error> {
        let shared_secret =
            Note::decrypt_key(wrapped_ovk, cm, cv, ovk, epk).map_err(|_| Error::DecryptionError)?;

        let key = PayloadKey::derive(&shared_secret, epk);
        Note::decrypt_with_payload_key(ciphertext, &key, epk)
    }

    /// Decrypt a note ciphertext using the IVK and ephemeral public key to generate a plaintext `Note`.
    pub fn decrypt(
        ciphertext: &NoteCiphertext,
        ivk: &IncomingViewingKey,
        epk: &ka::Public,
    ) -> Result<Note, Error> {
        let shared_secret = ivk.key_agreement_with(epk);

        let key = PayloadKey::derive(&shared_secret, epk);
        Note::decrypt_with_payload_key(ciphertext, &key, epk)
    }

    /// Decrypt a note ciphertext using the [`PayloadKey`].
    pub fn decrypt_with_payload_key(
        ciphertext: &NoteCiphertext,
        payload_key: &PayloadKey,
        epk: &ka::Public,
    ) -> Result<Note, Error> {
        let plaintext = payload_key
            .decrypt(ciphertext.0.to_vec(), PayloadKind::Note)
            .map_err(|_| Error::DecryptionError)?;

        let plaintext_bytes: [u8; NOTE_LEN_BYTES] =
            plaintext.try_into().map_err(|_| Error::DecryptionError)?;

        let note: Note = plaintext_bytes
            .try_into()
            .map_err(|_| Error::DecryptionError)?;

        // Ephemeral public key integrity check. See ZIP 212 or Shieldd issue #1688.
        if note.ephemeral_public_key() != *epk {
            return Err(Error::DecryptionError);
        }

        Ok(note)
    }

    /// Create the note commitment for this note.
    pub fn commit(&self) -> StateCommitment {
        self::commitment(
            self.note_blinding(),
            self.value,
            self.diversified_generator(),
            *self.transmission_point(),
            self.recovery_commitment,
        )
    }

    pub fn to_bytes(&self) -> [u8; NOTE_LEN_BYTES] {
        self.into()
    }
}

/// Create a note commitment from its parts.
pub fn commitment(
    note_blinding: Fq,
    value: Value,
    diversified_generator: SubgroupPoint,
    transmission_key: SubgroupPoint,
    recovery_commitment: RecoveryCommitment,
) -> StateCommitment {
    let [gx, gy] = point_fields(&diversified_generator);
    let [px, py] = point_fields(&transmission_key);
    StateCommitment(poseidon::hash(
        domains::NOTE,
        &[
            note_blinding,
            value.amount.into(),
            value.asset_id.0,
            gx,
            gy,
            px,
            py,
            recovery_commitment.0,
        ],
    ))
}

pub fn commitment_from_address(
    address: Address,
    value: Value,
    note_blinding: Fq,
    recovery_commitment: RecoveryCommitment,
) -> StateCommitment {
    commitment(
        note_blinding,
        value,
        *address.diversified_generator(),
        *address.transmission_point(),
        recovery_commitment,
    )
}

impl std::fmt::Debug for Note {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        f.debug_struct("Note")
            .field("value", &self.value)
            .field("address", &self.address())
            .field("rseed", &hex::encode(self.rseed.to_bytes()))
            .finish()
    }
}

impl TryFrom<pb::Note> for Note {
    type Error = anyhow::Error;
    fn try_from(msg: pb::Note) -> Result<Self, Self::Error> {
        let address = msg
            .address
            .ok_or_else(|| anyhow::anyhow!("missing value"))?
            .try_into()?;
        let value = msg
            .value
            .ok_or_else(|| anyhow::anyhow!("missing value"))?
            .try_into()?;
        let rseed = Rseed(msg.rseed.as_slice().try_into()?);
        let recovery_commitment_bytes: [u8; 32] = msg
            .recovery_commitment
            .try_into()
            .map_err(|_| anyhow::anyhow!("recovery commitment must be 32 bytes"))?;
        let recovery_commitment = RecoveryCommitment(
            shieldd_sdk_crypto::encoding::field(&recovery_commitment_bytes)
                .map_err(|_| anyhow::anyhow!("invalid recovery commitment"))?,
        );

        Ok(Note::from_parts(
            address,
            value,
            rseed,
            recovery_commitment,
        )?)
    }
}

impl From<Note> for pb::Note {
    fn from(msg: Note) -> Self {
        pb::Note {
            address: Some(msg.address().into()),
            value: Some(msg.value().into()),
            rseed: msg.rseed.to_bytes().to_vec(),
            recovery_commitment: msg.recovery_commitment.0.to_bytes().to_vec(),
        }
    }
}

impl From<NoteView> for pb::NoteView {
    fn from(msg: NoteView) -> Self {
        pb::NoteView {
            address: Some(msg.address.into()),
            value: Some(msg.value.into()),
            rseed: msg.rseed.to_bytes().to_vec(),
            recovery_commitment: msg.recovery_commitment.0.to_bytes().to_vec(),
        }
    }
}

impl TryFrom<pb::NoteView> for NoteView {
    type Error = anyhow::Error;
    fn try_from(msg: pb::NoteView) -> Result<Self, Self::Error> {
        let address = msg
            .address
            .ok_or_else(|| anyhow::anyhow!("missing value"))?
            .try_into()?;
        let value = msg
            .value
            .ok_or_else(|| anyhow::anyhow!("missing value"))?
            .try_into()?;
        let rseed = Rseed(msg.rseed.as_slice().try_into()?);
        let recovery_commitment_bytes: [u8; 32] = msg.recovery_commitment.as_slice().try_into()?;
        let recovery_commitment = RecoveryCommitment(
            shieldd_sdk_crypto::encoding::field(&recovery_commitment_bytes)
                .map_err(|_| anyhow::anyhow!("invalid recovery commitment"))?,
        );

        Ok(NoteView {
            address,
            value,
            rseed,
            recovery_commitment,
        })
    }
}

impl From<&Note> for [u8; NOTE_LEN_BYTES] {
    fn from(note: &Note) -> [u8; NOTE_LEN_BYTES] {
        let mut bytes = [0u8; NOTE_LEN_BYTES];
        bytes[0..49].copy_from_slice(&note.address.to_vec());
        bytes[49..65].copy_from_slice(&note.value.amount.to_le_bytes());
        bytes[65..97].copy_from_slice(&note.value.asset_id.0.to_bytes());
        bytes[97..129].copy_from_slice(&note.rseed.to_bytes());
        bytes[129..161].copy_from_slice(&note.recovery_commitment.0.to_bytes());
        bytes
    }
}

impl From<Note> for [u8; NOTE_LEN_BYTES] {
    fn from(note: Note) -> [u8; NOTE_LEN_BYTES] {
        (&note).into()
    }
}

impl From<&Note> for Vec<u8> {
    fn from(note: &Note) -> Vec<u8> {
        let mut bytes = vec![];
        bytes.extend_from_slice(&note.address().to_vec());
        bytes.extend_from_slice(&note.value.amount.to_le_bytes());
        bytes.extend_from_slice(&note.value.asset_id.0.to_bytes());
        bytes.extend_from_slice(&note.rseed.to_bytes());
        bytes.extend_from_slice(&note.recovery_commitment.0.to_bytes());
        bytes
    }
}

impl TryFrom<&[u8]> for Note {
    type Error = Error;

    fn try_from(bytes: &[u8]) -> Result<Self, Self::Error> {
        if bytes.len() != NOTE_LEN_BYTES {
            return Err(Error::NoteDeserializationError);
        }

        let amount_bytes: [u8; 16] = bytes[49..65]
            .try_into()
            .map_err(|_| Error::NoteDeserializationError)?;
        let asset_id_bytes: [u8; 32] = bytes[65..97]
            .try_into()
            .map_err(|_| Error::NoteDeserializationError)?;
        let rseed_bytes: [u8; 32] = bytes[97..129]
            .try_into()
            .map_err(|_| Error::NoteDeserializationError)?;
        let recovery_commitment_bytes: [u8; 32] = bytes[129..161]
            .try_into()
            .map_err(|_| Error::NoteDeserializationError)?;

        Note::from_parts(
            bytes[0..49]
                .try_into()
                .map_err(|_| Error::NoteDeserializationError)?,
            Value {
                amount: Amount::from_le_bytes(amount_bytes),
                asset_id: asset::Id(
                    shieldd_sdk_crypto::encoding::field(&asset_id_bytes)
                        .map_err(|_| Error::NoteDeserializationError)?,
                ),
            },
            Rseed(rseed_bytes),
            RecoveryCommitment(
                shieldd_sdk_crypto::encoding::field(&recovery_commitment_bytes)
                    .map_err(|_| Error::NoteDeserializationError)?,
            ),
        )
    }
}

impl TryFrom<[u8; NOTE_LEN_BYTES]> for Note {
    type Error = Error;

    fn try_from(bytes: [u8; NOTE_LEN_BYTES]) -> Result<Note, Self::Error> {
        (&bytes[..]).try_into()
    }
}

impl TryFrom<pb::NoteCiphertext> for NoteCiphertext {
    type Error = Error;

    fn try_from(msg: pb::NoteCiphertext) -> Result<Self, Self::Error> {
        if msg.inner.len() != NOTE_CIPHERTEXT_BYTES {
            return Err(Error::InvalidNoteCiphertext);
        }

        let inner_bytes: [u8; NOTE_CIPHERTEXT_BYTES] = msg
            .inner
            .try_into()
            .map_err(|_| Error::InvalidNoteCiphertext)?;

        Ok(NoteCiphertext(inner_bytes))
    }
}

impl From<NoteCiphertext> for pb::NoteCiphertext {
    fn from(msg: NoteCiphertext) -> Self {
        pb::NoteCiphertext {
            inner: msg.0.to_vec(),
        }
    }
}

#[cfg(test)]
mod tests {
    use ff::Field;
    use rand_core::OsRng;
    use shieldd_sdk_crypto::Fr;

    use super::*;
    use shieldd_sdk_keys::keys::{Bip44Path, SeedPhrase, SpendKey};

    #[test]
    fn note_encryption_and_decryption() {
        let mut rng = OsRng;

        let seed_phrase = SeedPhrase::generate(rng);
        let sk = SpendKey::from_seed_phrase_bip44(seed_phrase, &Bip44Path::new(0))
            .expect("test spend key should satisfy key refinements");
        let fvk = sk.full_viewing_key();
        let ivk = fvk.incoming();
        let dest = ivk.payment_address(0u32.into());

        let value = Value {
            amount: 10u64.into(),
            asset_id: asset::Cache::with_known_assets()
                .get_unit("ushieldd")
                .unwrap()
                .id(),
        };
        let note = Note::generate(&mut rng, &dest, value);

        let ciphertext = note.encrypt();

        let esk = note.ephemeral_secret_key();
        let epk = esk
            .diversified_public(dest.diversified_generator())
            .expect("validated address");
        let plaintext = Note::decrypt(&ciphertext, ivk, &epk).expect("can decrypt note");

        assert_eq!(plaintext, note);

        let seed_phrase = SeedPhrase::generate(rng);
        let sk2 = SpendKey::from_seed_phrase_bip44(seed_phrase, &Bip44Path::new(0))
            .expect("test spend key should satisfy key refinements");
        let fvk2 = sk2.full_viewing_key();
        let ivk2 = fvk2.incoming();

        assert!(Note::decrypt(&ciphertext, ivk2, &epk).is_err());
    }

    #[test]
    fn note_encryption_and_sender_decryption() {
        let mut rng = OsRng;

        let seed_phrase = SeedPhrase::generate(rng);
        let sk = SpendKey::from_seed_phrase_bip44(seed_phrase, &Bip44Path::new(0))
            .expect("test spend key should satisfy key refinements");
        let fvk = sk.full_viewing_key();
        let ivk = fvk.incoming();
        let ovk = fvk.outgoing();
        let dest = ivk.payment_address(0u32.into());

        let value = Value {
            amount: 10u64.into(),
            asset_id: asset::Cache::with_known_assets()
                .get_unit("ushieldd")
                .unwrap()
                .id(),
        };
        let note = Note::generate(&mut rng, &dest, value);

        let value_blinding = Fr::random(&mut rng);
        let cv = note.value.commit(value_blinding);

        let wrapped_ovk = note.encrypt_key(ovk, cv);
        let ciphertext = note.encrypt();

        let esk = note.ephemeral_secret_key();
        let epk = esk
            .diversified_public(dest.diversified_generator())
            .expect("validated address");
        let plaintext =
            Note::decrypt_outgoing(&ciphertext, wrapped_ovk, note.commit(), cv, ovk, &epk)
                .expect("can decrypt note");

        assert_eq!(plaintext, note);
    }

    #[test]
    fn note_decryption_fails_with_incorrect_epk() {
        let mut rng = OsRng;

        let seed_phrase = SeedPhrase::generate(rng);
        let sk = SpendKey::from_seed_phrase_bip44(seed_phrase, &Bip44Path::new(0))
            .expect("test spend key should satisfy key refinements");
        let fvk = sk.full_viewing_key();
        let ivk = fvk.incoming();
        let dest = ivk.payment_address(0u32.into());

        let value = Value {
            amount: 10u64.into(),
            asset_id: asset::Cache::with_known_assets()
                .get_unit("ushieldd")
                .unwrap()
                .id(),
        };
        let note = Note::generate(&mut rng, &dest, value);

        let ciphertext = note.encrypt();

        let wrong_esk = ka::Secret::new(&mut rng);
        let wrong_epk = wrong_esk
            .diversified_public(dest.diversified_generator())
            .expect("validated address");
        let decryption_result = Note::decrypt(&ciphertext, ivk, &wrong_epk);

        assert!(decryption_result.is_err());
    }
}
