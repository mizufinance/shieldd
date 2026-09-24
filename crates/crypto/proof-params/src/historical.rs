//! Canonical nullifier-history claims verified by the configured native Pari registry.
use crate::pari::Registry;
use anyhow::{ensure, Result};
use shieldd_sdk_circuits::{
    encoding::field,
    hash::Parameters,
    history,
    proof::{Envelope, Family},
};
use shieldd_sdk_crypto::encoding;

#[derive(Clone, Copy, Debug, Eq, PartialEq)]
pub struct GenerationClaim {
    pub protocol_version: u32,
    pub nullifier: [u8; 32],
    pub generation_index: u64,
    pub generation_root: [u8; 32],
    pub generation_start_position: u64,
    pub generation_end_position: u64,
    pub start_history_head: [u8; 32],
    pub end_history_head: [u8; 32],
}
impl GenerationClaim {
    pub fn statement(self) -> Result<history::GenerationStatement> {
        ensure!(
            self.protocol_version == history::VERSION,
            "unsupported history version"
        );
        ensure!(
            self.generation_start_position <= self.generation_end_position
                && self.generation_end_position < (1u64 << 48),
            "invalid history position range"
        );
        Ok(history::GenerationStatement {
            version: self.protocol_version,
            nullifier: field(&encoding::field(&self.nullifier)?),
            index: self.generation_index,
            root: field(&encoding::field(&self.generation_root)?),
            start_position: self.generation_start_position,
            end_position: self.generation_end_position,
            start_head: field(&encoding::field(&self.start_history_head)?),
            end_head: field(&encoding::field(&self.end_history_head)?),
        })
    }
}
#[derive(Clone, Copy, Debug, Eq, PartialEq)]
pub struct ChunkClaim {
    pub protocol_version: u32,
    pub nullifier: [u8; 32],
    pub chunk_index: u64,
    pub start_history_head: [u8; 32],
    pub end_history_head: [u8; 32],
}
impl ChunkClaim {
    pub fn statement(self) -> Result<history::ChunkStatement> {
        ensure!(
            self.protocol_version == history::VERSION,
            "unsupported history version"
        );
        let statement = history::ChunkStatement {
            version: self.protocol_version,
            nullifier: field(&encoding::field(&self.nullifier)?),
            index: self.chunk_index,
            start_head: field(&encoding::field(&self.start_history_head)?),
            end_head: field(&encoding::field(&self.end_history_head)?),
        };
        ensure!(
            statement.generation_indices().is_some(),
            "history generation index overflow"
        );
        Ok(statement)
    }
}
pub fn verify_generation(registry: &Registry, claim: GenerationClaim, proof: &[u8]) -> Result<()> {
    let statement = claim.statement()?.digest(Parameters::load()?);
    registry.verify(
        Family::HistoryGeneration,
        &statement,
        &Envelope::from_bytes(proof)?,
    )
}
pub fn verify_chunk(registry: &Registry, claim: ChunkClaim, proof: &[u8]) -> Result<()> {
    let statement = claim.statement()?.digest(Parameters::load()?);
    registry.verify(
        Family::HistoryChunk,
        &statement,
        &Envelope::from_bytes(proof)?,
    )
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn history_claims_reject_noncanonical_fields_versions_and_ranges() {
        let generation = GenerationClaim {
            protocol_version: history::VERSION,
            nullifier: [0; 32],
            generation_index: 0,
            generation_root: [0; 32],
            generation_start_position: 0,
            generation_end_position: 1,
            start_history_head: [0; 32],
            end_history_head: [0; 32],
        };
        assert!(generation.statement().is_ok());
        for bad in [
            GenerationClaim {
                protocol_version: 2,
                ..generation
            },
            GenerationClaim {
                nullifier: [255; 32],
                ..generation
            },
            GenerationClaim {
                generation_root: [255; 32],
                ..generation
            },
            GenerationClaim {
                generation_start_position: 2,
                ..generation
            },
            GenerationClaim {
                generation_end_position: 1u64 << 48,
                ..generation
            },
        ] {
            assert!(bad.statement().is_err());
        }
        let chunk = ChunkClaim {
            protocol_version: history::VERSION,
            nullifier: [0; 32],
            chunk_index: 0,
            start_history_head: [0; 32],
            end_history_head: [0; 32],
        };
        assert!(chunk.statement().is_ok());
        assert!(ChunkClaim {
            chunk_index: u64::MAX,
            ..chunk
        }
        .statement()
        .is_err());
        assert!(ChunkClaim {
            end_history_head: [255; 32],
            ..chunk
        }
        .statement()
        .is_err());
    }
}
