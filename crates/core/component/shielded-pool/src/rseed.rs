use rand::{CryptoRng, RngCore};
use shieldd_sdk_crypto::ka;
use shieldd_sdk_crypto::{Fq, Fr};
use shieldd_sdk_keys::prf;

/// The rseed is a uniformly random 32-byte sequence included in the note plaintext.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Rseed(pub [u8; 32]);

impl Rseed {
    /// Generate a new rseed from a random source.
    pub fn generate<R: RngCore + CryptoRng>(rng: &mut R) -> Self {
        let mut bytes = [0u8; 32];
        rng.fill_bytes(&mut bytes);
        Self(bytes)
    }

    /// Derive the ephemeral secret key from the rseed.
    pub fn derive_esk(&self) -> ka::Secret {
        let hash_result = prf::expand(b"ShielddDeriveEsk", &self.0, &[4u8]);
        let scalar = Fr::from_bytes_wide(hash_result.as_array());
        ka::Secret::from_scalar(if scalar == Fr::from(0) {
            Fr::from(1)
        } else {
            scalar
        })
        .expect("nonzero derived scalar")
    }

    /// Derive note commitment randomness from the rseed.
    pub fn derive_note_blinding(&self) -> Fq {
        let hash_result = prf::expand(b"ShielddDeriveRcm", &self.0, &[5u8]);
        Fq::from_bytes_wide(hash_result.as_array())
    }

    pub fn to_bytes(&self) -> [u8; 32] {
        self.0
    }
}
