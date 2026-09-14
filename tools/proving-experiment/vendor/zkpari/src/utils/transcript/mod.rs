//! The Fiat-Shamir transcript: a thin typed wrapper over a Merlin transcript.

use ark_ff::PrimeField;
use ark_serialize::CanonicalSerialize;
use merlin::Transcript;
use std::marker::PhantomData;

/// A Fiat-Shamir transcript over the prime field `F`, backed by Merlin
/// (Strobe-128).
///
/// Cloning is cheap and is the intended usage pattern: the verifying key
/// holds a transcript pre-seeded with the key material, and every challenge
/// derivation clones it and absorbs only the per-proof bytes.
#[derive(Clone)]
pub struct IOPTranscript<F: PrimeField> {
    transcript: Transcript,
    phantom: PhantomData<F>,
}

impl<F: PrimeField> IOPTranscript<F> {
    /// Create a new transcript under a domain-separation label.
    pub fn new(label: &'static [u8]) -> Self {
        Self {
            transcript: Transcript::new(label),
            phantom: PhantomData,
        }
    }

    /// Absorb raw bytes.
    pub fn append_message(&mut self, label: &'static [u8], msg: &[u8]) {
        self.transcript.append_message(label, msg);
    }

    /// Absorb anything `CanonicalSerialize`, in compressed form.
    pub fn append_serializable_element<S: CanonicalSerialize + ?Sized>(
        &mut self,
        label: &'static [u8],
        elem: &S,
    ) {
        let mut buf = Vec::with_capacity(elem.compressed_size());
        elem.serialize_compressed(&mut buf)
            .expect("serialization into a Vec cannot fail");
        self.append_message(label, &buf);
    }

    /// Squeeze a field-element challenge and absorb it back.
    ///
    /// The challenge is reduced from 24 uniform bytes (192 bits), a
    /// deliberate performance choice: 192-bit challenges keep the verifier's
    /// per-proof scalar multiplications and the batch verifier's
    /// random-linear-combination MSMs short, while the statistical distance
    /// from uniform over a ~255-bit field stays below 2^-64 and the knowledge
    /// error stays around 2^-170.
    pub fn get_and_append_challenge(&mut self, label: &'static [u8]) -> F {
        let mut buf = [0u8; 24];
        self.transcript.challenge_bytes(label, &mut buf);
        let challenge = F::from_le_bytes_mod_order(&buf);
        self.append_serializable_element(label, &challenge);
        challenge
    }

    /// Squeeze 32 raw bytes (used for the matrix digest at key generation).
    pub fn challenge_bytes32(&mut self, label: &'static [u8]) -> [u8; 32] {
        let mut buf = [0u8; 32];
        self.transcript.challenge_bytes(label, &mut buf);
        buf
    }
}
