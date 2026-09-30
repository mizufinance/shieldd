//! Permanent spend-nullifier commitments and detached authentication proofs.
use crate::Nullifier;
use anyhow::{ensure, Context, Result};
use bitvec::prelude::*;
use nomt_core::{
    hasher::{Sha2Hasher, ValueHasher},
    proof::PathProof,
    trie::LeafData,
};
use serde::{Deserialize, Serialize};
use sha2::{Digest, Sha256};

pub const PARTITIONS: usize = 16;
pub const SPENT_VALUE: &[u8] = b"shieldd.spent.v1";

#[derive(Clone, Debug, Eq, PartialEq, Serialize, Deserialize)]
pub struct Roots(pub [[u8; 32]; PARTITIONS]);

impl Default for Roots {
    fn default() -> Self {
        Self([[0; 32]; PARTITIONS])
    }
}

impl Roots {
    pub fn commitment(&self) -> [u8; 32] {
        let mut hash = Sha256::new();
        hash.update(b"shieldd.nomt.roots.v1\0");
        hash.update((PARTITIONS as u16).to_be_bytes());
        for root in self.0 {
            hash.update(root);
        }
        hash.finalize().into()
    }
}

/// Authenticated application boundary, including blocks with no spends.
#[derive(Clone, Debug, Default, Eq, PartialEq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct Boundary {
    pub height: Option<u64>,
    pub block_id: [u8; 32],
    pub roots: Roots,
}

fn key(nullifier: Nullifier) -> [u8; 32] {
    let mut hash = Sha256::new();
    hash.update(b"shieldd.spend-nullifier.v1\0");
    hash.update(nullifier.to_bytes());
    hash.finalize().into()
}
fn partition(key: &[u8; 32]) -> usize {
    (key[0] >> 4) as usize
}

/// A detached query result: no NOMT read session survives this call.
#[derive(Clone, Debug, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct Status {
    pub nullifier: Nullifier,
    pub boundary: Boundary,
    pub spent: bool,
    pub proof: PathProof,
}
impl Status {
    pub fn verify(&self, committed: &Boundary) -> Result<()> {
        ensure!(
            &self.boundary == committed,
            "nullifier status boundary is not committed"
        );
        let path = key(self.nullifier);
        let verified = self
            .proof
            .verify::<Sha2Hasher>(
                path.view_bits::<Msb0>(),
                self.boundary.roots.0[partition(&path)],
            )
            .map_err(|e| anyhow::anyhow!("invalid nullifier status path: {e:?}"))?;
        if self.spent {
            ensure!(
                verified
                    .confirm_value(&LeafData {
                        key_path: path,
                        value_hash: Sha2Hasher::hash_value(SPENT_VALUE)
                    })
                    .map_err(|e| anyhow::anyhow!("nullifier status out of scope: {e:?}"))?,
                "invalid spent value"
            );
        } else {
            ensure!(
                verified
                    .confirm_nonexistence(&path)
                    .map_err(|e| anyhow::anyhow!("nullifier status out of scope: {e:?}"))?,
                "nullifier is spent"
            );
        }
        Ok(())
    }
}

#[cfg(feature = "component")]
mod store;
#[cfg(feature = "component")]
pub use store::{
    read_boundary, stage_boundary, Config, History, PartitionCapacity, Prepared, Reader, Store,
    Transition,
};

mod codec;
