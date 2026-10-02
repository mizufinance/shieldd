//! Small owning-suite fixture. Production persistence uses explicit boundaries.
use crate::{BlockBoundary, Commitment, ForestConfig, Snapshot, StateDelta, Storage};
use anyhow::Result;
use std::{collections::BTreeMap, ops::Deref};

pub struct TempStorage {
    storage: Storage,
    // Drop the open stores before removing their files.
    _directory: tempfile::TempDir,
}
impl TempStorage {
    pub async fn new() -> Result<Self> {
        let directory = tempfile::tempdir()?;
        let storage = Storage::open(
            &directory.path().join("state"),
            ForestConfig {
                buckets: 1024,
                cache_mib: 1,
                preallocate: false,
                materialization_workers: 2,
            },
        )?;
        Ok(Self {
            storage,
            _directory: directory,
        })
    }
    pub fn storage(&self) -> &Storage {
        &self.storage
    }
    /// Component tests have no SDK side effects or native nullifiers. App/host
    /// owning suites use their real lifecycle and exact replay receipt instead.
    pub async fn commit(&self, state: StateDelta<Snapshot>) -> Result<Commitment> {
        let previous = self.storage.manifest();
        let height = previous.as_ref().map_or(0, |m| m.height + 1);
        let boundary = BlockBoundary {
            chain_id: previous
                .as_ref()
                .map_or_else(|| "component-test".into(), |m| m.chain_id.clone()),
            protocol: previous.as_ref().map_or([1; 32], |m| m.protocol),
            height,
            block_id: if height == 0 {
                [0; 32]
            } else {
                [height as u8; 32]
            },
            time: height as i64,
        };
        let prepared = self.storage.prepare(state, boundary, BTreeMap::new())?;
        Ok(Commitment(self.storage.materialize(prepared)?.digest()?))
    }
}
impl Deref for TempStorage {
    type Target = Storage;
    fn deref(&self) -> &Storage {
        &self.storage
    }
}
