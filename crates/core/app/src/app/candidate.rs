use anyhow::{ensure, Result};
use serde::{Deserialize, Serialize};
use sha2::Digest as _;

/// Canonical transactions and descriptive benchmark metadata, never verification evidence.
#[derive(Clone, Debug, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct CandidateEnvelope {
    pub txs: Vec<Vec<u8>>,
    pub tx_hashes: Vec<[u8; 32]>,
    pub block_tx_count: usize,
    pub total_payload_bytes: usize,
    pub candidate_digest: [u8; 32],
    pub source_builder_label: String,
}
impl CandidateEnvelope {
    pub fn new(txs: Vec<Vec<u8>>, source_builder_label: String) -> Result<Self> {
        let tx_hashes = txs
            .iter()
            .map(|tx| sha2::Sha256::digest(tx).into())
            .collect::<Vec<_>>();
        let envelope = Self {
            block_tx_count: txs.len(),
            total_payload_bytes: txs.iter().map(Vec::len).sum(),
            candidate_digest: candidate_digest_from_hashes(&tx_hashes),
            txs,
            tx_hashes,
            source_builder_label,
        };
        envelope.validate()?;
        Ok(envelope)
    }
    pub fn validate(&self) -> Result<()> {
        ensure!(
            self.block_tx_count == self.txs.len() && self.tx_hashes.len() == self.txs.len(),
            "candidate transaction count mismatch"
        );
        ensure!(
            self.total_payload_bytes == self.txs.iter().map(Vec::len).sum::<usize>(),
            "candidate size mismatch"
        );
        for (bytes, hash) in self.txs.iter().zip(&self.tx_hashes) {
            ensure!(
                &<[u8; 32]>::from(sha2::Sha256::digest(bytes)) == hash,
                "candidate transaction hash mismatch"
            );
            shieldd_sdk_transaction::Transaction::decode_canonical(bytes)?;
        }
        ensure!(
            self.candidate_digest == candidate_digest_from_hashes(&self.tx_hashes),
            "candidate digest mismatch"
        );
        Ok(())
    }
}
pub fn candidate_digest_from_hashes(tx_hashes: &[[u8; 32]]) -> [u8; 32] {
    let mut hasher = sha2::Sha256::new();
    hasher.update((tx_hashes.len() as u64).to_le_bytes());
    for hash in tx_hashes {
        hasher.update(hash);
    }
    hasher.finalize().into()
}
