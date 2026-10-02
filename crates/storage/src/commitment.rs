use anyhow::{ensure, Result};
use sha2::{Digest, Sha256};

pub const SPENT: &[u8] = &[1];

pub fn nullifier_key(nullifier: &[u8; 32]) -> [u8; 32] {
    let mut hash = Sha256::new();
    hash.update(b"shieldd.spend-nullifier.v1\0");
    hash.update(nullifier);
    hash.finalize().into()
}

pub fn volume_key(day: crate::Day, nullifier: &[u8; 32]) -> Result<[u8; 32]> {
    ensure!(day.0 % 86_400 == 0, "noncanonical volume generation");
    let mut hash = Sha256::new();
    hash.update(b"shieldd.volume-nullifier.v1\0");
    hash.update(day.0.to_be_bytes());
    hash.update(nullifier);
    Ok(hash.finalize().into())
}

pub fn nullifier_shard(key: &[u8; 32]) -> u8 {
    key[0] >> 4
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct ValueCommitment {
    pub hash: [u8; 32],
    pub length: u64,
}

impl ValueCommitment {
    pub fn new(value: &[u8]) -> Self {
        let mut hash = Sha256::new();
        hash.update(b"shieldd.value.v1\0");
        hash.update(value);
        Self {
            hash: hash.finalize().into(),
            length: value.len() as u64,
        }
    }

    pub fn encode(&self) -> [u8; 40] {
        let mut bytes = [0; 40];
        bytes[..32].copy_from_slice(&self.hash);
        bytes[32..].copy_from_slice(&self.length.to_be_bytes());
        bytes
    }

    pub fn decode(bytes: &[u8]) -> Result<Self> {
        ensure!(
            bytes.len() == 40,
            "value commitment must contain a hash and checked length"
        );
        Ok(Self {
            hash: bytes[..32].try_into()?,
            length: u64::from_be_bytes(bytes[32..].try_into()?),
        })
    }

    pub fn verify(&self, value: &[u8]) -> Result<()> {
        ensure!(
            self.length == value.len() as u64,
            "committed value length mismatch"
        );
        ensure!(*self == Self::new(value), "committed value hash mismatch");
        Ok(())
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn committed_bytes_and_length_are_both_checked() {
        let commitment = ValueCommitment::new(b"original");
        commitment.verify(b"original").unwrap();
        assert!(commitment.verify(b"replaced").is_err());
        assert!(commitment.verify(b"short").is_err());
        let mut bytes = commitment.encode();
        bytes[39] += 1;
        assert!(ValueCommitment::decode(&bytes)
            .unwrap()
            .verify(b"original")
            .is_err());
        assert!(ValueCommitment::decode(&bytes[..39]).is_err());
    }
}
