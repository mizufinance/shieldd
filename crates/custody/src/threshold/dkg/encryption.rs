use anyhow::{anyhow, Result};
use chacha20poly1305::{aead::AeadInPlace, aead::NewAead, ChaCha20Poly1305, Key as SymmetricKey};
use rand_core::CryptoRngCore;

/// The number of bytes in a key agreement public key.
const PK_SIZE: usize = 32;
/// The number of bytes in our AEAD's authentication tag.
const TAG_SIZE: usize = 16;
/// The number of bytes in our nonce.
const NONCE_SIZE: usize = 12;

/// Derive a symmetric key from the information used to produce a shared secret.
///
/// `pk` is the target public key we're encrypting data to.
/// `epk` is data we add to the ciphertext so that the owner of that public key can decrypt it.
/// `secret` is the result of a key exchange between those two keys.
fn derive_symmetric_key(
    pk: &shieldd_sdk_crypto::ka::Public,
    epk: &shieldd_sdk_crypto::ka::Public,
    secret: &shieldd_sdk_crypto::ka::SharedSecret,
) -> SymmetricKey {
    TryInto::<[u8; 32]>::try_into(
        &blake2b_simd::Params::new()
            .personal(b"dkg-encryption")
            .to_state()
            .update(&pk.to_bytes())
            .update(&epk.to_bytes())
            .update(&secret.to_bytes())
            .finalize()
            .as_array()[..32],
    )
    .expect("array conversion should not fail")
    .into()
}

/// A key to which data can be encrypted.
///
/// This key has a corresponding decryption key which can decrypt the messages encrypted to it.
#[derive(Clone, Copy)]
pub struct EncryptionKey(shieldd_sdk_crypto::ka::Public);

impl EncryptionKey {
    /// Encrypt a message, producing a ciphertext.
    pub fn encrypt(&self, rng: &mut impl CryptoRngCore, message: &[u8]) -> Vec<u8> {
        let esk = shieldd_sdk_crypto::ka::Secret::new(rng);
        let epk = esk.public();
        let secret = esk.key_agreement_with(&self.0);
        let key = derive_symmetric_key(&self.0, &epk, &secret);
        // ciphertext = EPK || <aead tag> || <encrypted data>
        // The tag will also include the EPK as associated data that gets authenticated.
        let ciphertext = {
            let mut ciphertext = Vec::new();
            ciphertext.extend_from_slice(&epk.to_bytes());
            // Reserve space for the tag
            ciphertext.extend_from_slice(&[0u8; TAG_SIZE]);
            // Include the message, which will be written over in place
            ciphertext.extend_from_slice(message);
            let tag = ChaCha20Poly1305::new(&key)
                .encrypt_in_place_detached(
                    &[0u8; NONCE_SIZE].into(),
                    &epk.to_bytes(),
                    &mut ciphertext[PK_SIZE + TAG_SIZE..],
                )
                .expect("chacha20poly1305 encryption should not fail");
            ciphertext[PK_SIZE..PK_SIZE + TAG_SIZE].copy_from_slice(&tag);
            ciphertext
        };

        ciphertext
    }

    /// Return a view of this value's underlying bytes
    pub fn to_bytes(&self) -> [u8; 32] {
        self.0.to_bytes()
    }
}

impl TryFrom<&[u8]> for EncryptionKey {
    type Error = anyhow::Error;

    fn try_from(value: &[u8]) -> std::result::Result<Self, Self::Error> {
        let repr: [u8; 32] = value.try_into()?;
        Ok(Self(shieldd_sdk_crypto::ka::Public::try_from(repr)?))
    }
}

/// A key that allows decrypting ciphertexts sent to the corresponding encryption key.
#[derive(Clone)]
pub struct DecryptionKey(shieldd_sdk_crypto::ka::Secret);

impl From<DecryptionKey> for EncryptionKey {
    fn from(value: DecryptionKey) -> Self {
        EncryptionKey(value.0.public())
    }
}

impl DecryptionKey {
    pub fn new(rng: &mut impl CryptoRngCore) -> Self {
        Self(shieldd_sdk_crypto::ka::Secret::new(rng))
    }

    /// Get the corresponding public encryption key for this decryption key.
    ///
    /// This is a synonym for the From impl.
    pub fn public(&self) -> EncryptionKey {
        self.clone().into()
    }

    /// Decrypt a ciphertext, extracitng out the corresponding message.
    ///
    /// This may potentially fail, if the ciphertext is malformed, or was tampered with.
    pub fn decrypt(&self, ciphertext: &[u8]) -> Result<Vec<u8>> {
        if ciphertext.len() < PK_SIZE + TAG_SIZE {
            anyhow::bail!("failed to decrypt ciphertext");
        }
        let (header, message) = ciphertext.split_at(PK_SIZE + TAG_SIZE);
        let mut message = message.to_owned();
        let epk = shieldd_sdk_crypto::ka::Public::try_from(&header[..PK_SIZE])?;
        let secret = self.0.key_agreement_with(&epk);
        let key = derive_symmetric_key(&self.0.public(), &epk, &secret);
        ChaCha20Poly1305::new(&key)
            .decrypt_in_place_detached(
                &[0u8; NONCE_SIZE].into(),
                &header[..PK_SIZE],
                &mut message,
                header[PK_SIZE..PK_SIZE + TAG_SIZE].into(),
            )
            .map_err(|_| anyhow!("failed to decrypt ciphertext"))?;
        Ok(message)
    }
}

#[cfg(test)]
mod test {
    use rand_core::OsRng;

    use super::*;

    #[test]
    fn test_encryption_roundtrip() -> Result<()> {
        let mut rng = OsRng;

        let dk = DecryptionKey::new(&mut rng);
        let ek = dk.public();
        let msg = "ペンブラが好きです".as_bytes();
        let ciphertext = ek.encrypt(&mut rng, msg);
        let msg2 = dk.decrypt(&ciphertext)?;
        assert_eq!(msg, &msg2);

        Ok(())
    }
}
