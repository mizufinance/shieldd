//! Standalone issuer detection keys for per-asset scanning and flagged decryption.

use ff::Field;
use group::{Group, GroupEncoding};
use shieldd_sdk_asset::asset;
use shieldd_sdk_crypto::{Fq, Fr, SubgroupPoint};

use crate::crypto::compliance_stream_block;

/// Fixed detection tier: asset ID, salt, flagged bit, and reserved zero padding.
pub const DETECTION_TIER_BYTES: usize = 128;

pub(crate) fn detection_flag_plaintext(is_flagged: bool) -> Fq {
    Fq::from(u64::from(is_flagged))
}

pub(crate) fn detection_flag_from_fq(value: Fq) -> anyhow::Result<bool> {
    anyhow::ensure!(
        value == Fq::from(0u64) || value == Fq::from(1u64),
        "detection flag is not boolean"
    );
    Ok(value == Fq::from(1u64))
}

/// Detection Key (Per-Asset Secret, Held by Issuer).
///
/// Per-asset secret key generated and held by the issuer. Used for:
/// - Scanning: Decrypting the detection tier to identify transfers of this asset
/// - Flagged decryption: Decrypting core+extension data for flagged transactions
///
/// **Important**: DK is generated independently of Orbis keys.
/// The issuer registers dk_pub on-chain; the private scalar never leaves the issuer.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct DetectionKey(pub Fr);

/// Decode detection data using a shared point authenticated by issuer DLEQ evidence.
pub fn decrypt_detection(
    shared_secret: &SubgroupPoint,
    epk: &SubgroupPoint,
    detection_ciphertext: &[u8; DETECTION_TIER_BYTES],
    expected_asset_id: &asset::Id,
) -> anyhow::Result<(asset::Id, bool, Fq)> {
    anyhow::ensure!(
        !bool::from(shared_secret.is_identity()) && !bool::from(epk.is_identity()),
        "identity detection point"
    );
    let seed = crate::crypto::detection_seed(shared_secret, epk);

    // Detection tier layout:
    // [asset_id, salt, is_flagged, reserved_zero]
    let ct_fq = shieldd_sdk_crypto::encoding::field(detection_ciphertext[..32].try_into()?)?;
    let keystream = compliance_stream_block(seed, 0);
    let decrypted_asset_id = ct_fq - keystream;
    anyhow::ensure!(
        decrypted_asset_id == expected_asset_id.0,
        "detection tier does not match expected asset"
    );

    let ct_salt_fq = shieldd_sdk_crypto::encoding::field(detection_ciphertext[32..64].try_into()?)?;
    let keystream_salt = compliance_stream_block(seed, 1);
    let salt = ct_salt_fq - keystream_salt;

    let ct_flag = shieldd_sdk_crypto::encoding::field(detection_ciphertext[64..96].try_into()?)?;
    let is_flagged = detection_flag_from_fq(ct_flag - compliance_stream_block(seed, 2))?;
    let ct_reserved =
        shieldd_sdk_crypto::encoding::field(detection_ciphertext[96..128].try_into()?)?;
    anyhow::ensure!(
        ct_reserved - compliance_stream_block(seed, 3) == Fq::from(0u64),
        "detection reserved word is nonzero"
    );

    Ok((*expected_asset_id, is_flagged, salt))
}

impl DetectionKey {
    /// Create a new detection key from a scalar.
    pub fn new(scalar: Fr) -> Self {
        Self(scalar)
    }

    /// Generate a deterministic demo DK for testing.
    #[cfg(any(test, feature = "test-helpers"))]
    pub fn demo() -> Self {
        Self::new(Fr::from(88888u64))
    }

    /// Generate a demo DK for a specific asset (deterministic).
    ///
    /// This allows different assets to have different DKs in tests.
    #[cfg(any(test, feature = "test-helpers"))]
    pub fn demo_for_asset(asset_id: &asset::Id) -> Self {
        let personal = b"shieldd_dk_demo";
        let hash = blake2b_simd::Params::new()
            .hash_length(64)
            .personal(personal)
            .hash(&asset_id.0.to_bytes());
        let scalar = Fr::from_bytes_wide(hash.as_array());
        Self::new(scalar)
    }

    /// Derive DK from a seed (for deterministic testing).
    #[cfg(any(test, feature = "test-helpers"))]
    pub fn from_seed(seed: &[u8; 32]) -> Self {
        let personal = b"shieldd_dk_seed";
        let hash = blake2b_simd::Params::new()
            .hash_length(64)
            .personal(personal)
            .hash(seed);
        let scalar = Fr::from_bytes_wide(hash.as_array());
        Self::new(scalar)
    }

    /// Derive the public key (DK_pub = DK * G).
    ///
    /// This is stored in the asset leaf for encryption.
    pub fn public_key(&self) -> SubgroupPoint {
        (*shieldd_sdk_crypto::generators::SPEND_AUTH) * self.0
    }

    /// Access the inner scalar (use with caution - this is secret material).
    pub fn inner(&self) -> &Fr {
        &self.0
    }

    pub fn to_bytes(&self) -> [u8; 32] {
        self.0.to_bytes()
    }

    pub fn from_bytes(bytes: &[u8; 32]) -> anyhow::Result<Self> {
        let scalar = shieldd_sdk_crypto::encoding::scalar(bytes)?;
        anyhow::ensure!(!bool::from(scalar.is_zero()), "zero issuer secret key");
        Ok(Self::new(scalar))
    }

    /// Try to decrypt the detection tier of a compliance ciphertext.
    ///
    /// Decrypts via Fq subtraction, requires the exact expected asset ID, and
    /// decodes the canonical flagged bit, and requires zero reserved padding.
    ///
    /// Returns `Ok((asset_id, is_flagged, salt))`
    /// if the decrypted value matches expected_asset_id,
    /// or `Err(_)` if decryption doesn't match (wrong key or wrong asset).
    pub fn try_decrypt_detection(
        &self,
        epk: &SubgroupPoint,
        detection_ciphertext: &[u8; DETECTION_TIER_BYTES],
        expected_asset_id: &asset::Id,
    ) -> anyhow::Result<(asset::Id, bool, Fq)> {
        decrypt_detection(
            &(*epk * self.0),
            epk,
            detection_ciphertext,
            expected_asset_id,
        )
    }

    /// Encrypt a detection tier for tests of issuer-side decoding.
    #[cfg(test)]
    fn encrypt_to_public<R: rand_core::RngCore + rand_core::CryptoRng>(
        &self,
        rng: &mut R,
        asset_id: &asset::Id,
        is_flagged: bool,
    ) -> ([u8; DETECTION_TIER_BYTES], SubgroupPoint) {
        Self::encrypt_to_dk_pub(rng, &self.public_key(), asset_id, is_flagged)
    }

    /// Encrypt detection tier to a specific public key (for encryption without holding DK).
    ///
    /// Uses the exact asset, salt, Boolean flag, and zero-reserved plaintext.
    #[cfg(test)]
    fn encrypt_to_dk_pub<R: rand_core::RngCore + rand_core::CryptoRng>(
        rng: &mut R,
        dk_pub: &SubgroupPoint,
        asset_id: &asset::Id,
        is_flagged: bool,
    ) -> ([u8; DETECTION_TIER_BYTES], SubgroupPoint) {
        let ephemeral_secret = Fr::random(rng);
        let epk = (*shieldd_sdk_crypto::generators::SPEND_AUTH) * ephemeral_secret;

        // Compute shared secret: S = r * DK_pub
        let shared_secret = *dk_pub * ephemeral_secret;

        // Derive seed
        let seed = crate::crypto::detection_seed(&shared_secret, &epk);

        let mut detection_bytes = [0u8; DETECTION_TIER_BYTES];
        let plaintext = [
            asset_id.0,
            Fq::from(0u64),
            detection_flag_plaintext(is_flagged),
            Fq::from(0u64),
        ];
        for (counter, (word, chunk)) in plaintext
            .into_iter()
            .zip(detection_bytes.chunks_exact_mut(32))
            .enumerate()
        {
            let keystream = compliance_stream_block(seed, counter as u64);
            chunk.copy_from_slice(&(word + keystream).to_bytes());
        }
        (detection_bytes, epk)
    }
}

/// Detection Key Public (Point).
///
/// The public component of the detection key, stored in the asset leaf.
/// This is what senders encrypt the detection tier to.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct DetectionKeyPublic(pub SubgroupPoint);

impl DetectionKeyPublic {
    pub fn new(point: SubgroupPoint) -> Self {
        Self(point)
    }

    pub fn from_dk(dk: &DetectionKey) -> Self {
        Self(dk.public_key())
    }

    pub fn inner(&self) -> &SubgroupPoint {
        &self.0
    }

    pub fn to_bytes(&self) -> [u8; 32] {
        self.0.to_bytes()
    }

    pub fn from_bytes(bytes: [u8; 32]) -> anyhow::Result<Self> {
        let point = shieldd_sdk_crypto::encoding::point(&bytes)
            .map_err(|_| anyhow::anyhow!("invalid detection key public bytes"))?;
        Ok(Self(point))
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use rand_core::OsRng;

    #[test]
    fn test_dk_basic() {
        let dk = DetectionKey::demo();
        let dk_pub = dk.public_key();

        // Verify public key is derived correctly
        assert_eq!(dk_pub, (*shieldd_sdk_crypto::generators::SPEND_AUTH) * dk.0);

        // Round-trip through bytes
        let bytes = dk.to_bytes();
        let recovered = DetectionKey::from_bytes(&bytes).unwrap();
        assert_eq!(dk, recovered);
    }

    #[test]
    fn test_dk_per_asset_isolation() {
        let asset1 = asset::Id(Fq::from(100u64));
        let asset2 = asset::Id(Fq::from(200u64));

        let dk1 = DetectionKey::demo_for_asset(&asset1);
        let dk2 = DetectionKey::demo_for_asset(&asset2);

        // Different assets get different DKs
        assert_ne!(dk1, dk2);

        // Same asset gets same DK (deterministic)
        let dk1_again = DetectionKey::demo_for_asset(&asset1);
        assert_eq!(dk1, dk1_again);
    }

    #[test]
    fn test_wrong_dk_cannot_decrypt() {
        let mut rng = OsRng;
        let dk1 = DetectionKey::demo();
        let dk2 = DetectionKey::from_seed(&[1u8; 32]);
        let asset_id = asset::Id(Fq::from(77777u64));

        let (ciphertext, epk) = dk1.encrypt_to_public(&mut rng, &asset_id, false);

        // Wrong DK → pt_fq won't match expected asset_id → Err
        let result = dk2.try_decrypt_detection(&epk, &ciphertext, &asset_id);
        assert!(
            result.is_err(),
            "wrong DK should fail to match expected asset"
        );
    }

    #[test]
    fn detection_flag_is_boolean_and_canonical() {
        assert!(!detection_flag_from_fq(detection_flag_plaintext(false)).unwrap());
        assert!(detection_flag_from_fq(detection_flag_plaintext(true)).unwrap());
        assert!(detection_flag_from_fq(Fq::from(2u64)).is_err());
    }

    #[test]
    fn test_detection_key_public_roundtrip() {
        let dk = DetectionKey::demo();
        let dk_pub = DetectionKeyPublic::from_dk(&dk);

        let bytes = dk_pub.to_bytes();
        let recovered = DetectionKeyPublic::from_bytes(bytes).unwrap();

        assert_eq!(dk_pub, recovered);
    }

    #[test]
    fn detection_flags_roundtrip_across_asset_bits() {
        let mut realistic = [0u8; 32];
        realistic[0] = 0x42;
        realistic[31] = 0x05;
        let mut high_byte = [0u8; 32];
        high_byte[0] = 0x01;
        high_byte[31] = 0x11;
        let dk = DetectionKey::demo();
        for (name, value) in [
            ("zero", Fq::from(0u64)),
            ("one", Fq::from(1u64)),
            ("u64_max", Fq::from(u64::MAX)),
            ("large", Fq::from(12345678901234567890u64)),
            ("roundtrip", Fq::from(12345u64)),
            ("flagged", Fq::from(99999u64)),
            (
                "realistic",
                shieldd_sdk_crypto::encoding::field(&realistic).unwrap(),
            ),
            (
                "high_byte",
                shieldd_sdk_crypto::encoding::field(&high_byte).unwrap(),
            ),
        ] {
            let asset_id = asset::Id(value);
            for flag in [false, true] {
                let (ct, epk) =
                    DetectionKey::encrypt_to_dk_pub(&mut OsRng, &dk.public_key(), &asset_id, flag);
                let (actual_id, actual_flag, _) =
                    dk.try_decrypt_detection(&epk, &ct, &asset_id).unwrap();
                assert_eq!((actual_id, actual_flag), (asset_id, flag), "{name}");
            }
        }
    }

    #[test]
    fn high_bit_asset_alias_is_rejected() {
        let mut rng = OsRng;
        let dk = DetectionKey::demo();
        let asset_id = asset::Id(Fq::from(41u64));
        let (ciphertext, epk) = dk.encrypt_to_public(&mut rng, &asset_id, true);

        let mut sentinel_bytes = [0u8; 32];
        sentinel_bytes[31] = 1 << 5;
        let alias =
            asset::Id(asset_id.0 + shieldd_sdk_crypto::encoding::field(&sentinel_bytes).unwrap());

        assert!(
            dk.try_decrypt_detection(&epk, &ciphertext, &alias).is_err(),
            "ciphertext word 0 must bind the exact asset independently of the flag"
        );
    }
}
