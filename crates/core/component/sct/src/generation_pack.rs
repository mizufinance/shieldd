pub use crate::indexed_archive::{Repository as GenerationPackRepository, ValidatedArchive};
use crate::indexed_nullifier_tree::CAPACITY;
use crate::nullifier_generation::{NullifierGenerationArchived, PROTOCOL_VERSION};
use anyhow::{ensure, Result};

#[derive(Clone, Copy, Debug, Eq, PartialEq, serde::Serialize, serde::Deserialize)]
pub struct GenerationPackMetadata {
    pub protocol_version: u32,
    pub generation_index: u64,
    pub generation_root: [u8; 32],
    pub generation_start_position: u64,
    pub generation_end_position: u64,
    /// Includes the implicit lower sentinel at position zero.
    pub leaf_count: u64,
}

impl GenerationPackMetadata {
    pub fn from_archived(archived: NullifierGenerationArchived, leaf_count: u64) -> Self {
        Self {
            protocol_version: PROTOCOL_VERSION,
            generation_index: archived.generation_index,
            generation_root: archived.generation_root,
            generation_start_position: archived.generation_start_position,
            generation_end_position: archived.generation_end_position,
            leaf_count,
        }
    }

    pub fn validate(&self) -> Result<()> {
        ensure!(
            self.protocol_version == PROTOCOL_VERSION,
            "unsupported nullifier generation pack protocol"
        );
        ensure!(
            self.generation_start_position <= self.generation_end_position
                && self.generation_end_position < (1 << 48),
            "generation pack position range is invalid"
        );
        ensure!(
            (1..=CAPACITY).contains(&self.leaf_count),
            "generation pack leaf count is invalid"
        );
        shieldd_sdk_crypto::encoding::field(&self.generation_root)
            .map_err(|_| anyhow::anyhow!("generation pack root is not canonical"))?;
        Ok(())
    }

    pub fn matches_archived(&self, archived: NullifierGenerationArchived) -> bool {
        self.protocol_version == PROTOCOL_VERSION
            && self.generation_index == archived.generation_index
            && self.generation_root == archived.generation_root
            && self.generation_start_position == archived.generation_start_position
            && self.generation_end_position == archived.generation_end_position
    }
}

/// Shared ownership keeps the maintenance slot occupied after async cancellation until blocking
/// file work actually finishes. Clones belong to one operation, not additional jobs.
#[derive(Clone)]
pub struct ArchiveMaintenanceLease {
    _guard: std::sync::Arc<tokio::sync::OwnedMutexGuard<()>>,
}
impl ArchiveMaintenanceLease {
    pub async fn acquire() -> Self {
        static SLOT: once_cell::sync::Lazy<std::sync::Arc<tokio::sync::Mutex<()>>> =
            once_cell::sync::Lazy::new(|| std::sync::Arc::new(tokio::sync::Mutex::new(())));
        Self {
            _guard: std::sync::Arc::new(SLOT.clone().lock_owned().await),
        }
    }
}
