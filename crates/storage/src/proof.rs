use anyhow::{ensure, Result};
use bitvec::prelude::*;
use nomt_core::{
    hasher::{Sha2Hasher, ValueHasher},
    proof::PathProof,
    trie::LeafData,
};

#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
pub struct AuthenticatedValue {
    pub root: [u8; 32],
    pub key: [u8; 32],
    pub value: Option<[u8; 32]>,
}

/// A path proof must confirm the expected value or absence, in addition to its root.
pub fn authenticate(
    proof: &PathProof,
    root: [u8; 32],
    key: [u8; 32],
    value: Option<&[u8]>,
) -> Result<AuthenticatedValue> {
    let verified = proof
        .verify::<Sha2Hasher>(key.view_bits::<Msb0>(), root)
        .map_err(|e| anyhow::anyhow!("invalid authenticated path: {e:?}"))?;
    let value = value.map(Sha2Hasher::hash_value);
    let matches = match value {
        Some(value_hash) => verified.confirm_value(&LeafData {
            key_path: key,
            value_hash,
        }),
        None => verified.confirm_nonexistence(&key),
    }
    .map_err(|e| anyhow::anyhow!("key outside authenticated path: {e:?}"))?;
    ensure!(matches, "authenticated value or absence mismatch");
    Ok(AuthenticatedValue { root, key, value })
}
