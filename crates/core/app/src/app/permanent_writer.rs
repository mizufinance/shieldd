//! Ordered commit boundary for NOMT and authenticated application state.
//!
//! The host must seal before committing Bankd. The prepared application root is
//! covered by Bankd's authenticated state; its local recovery record is not trust.

use anyhow::{ensure, Context, Result};
use cnidarium::{Snapshot, StagedWriteBatch, StateDelta, Storage};
use shieldd_sdk_sct::component::clock::EpochRead as _;
use shieldd_sdk_sct::{
    permanent_nullifiers::{self as nullifiers, Boundary, Prepared, Store},
    Nullifier,
};

#[derive(Clone, Debug, Eq, PartialEq, serde::Serialize, serde::Deserialize)]
#[serde(deny_unknown_fields)]
pub struct CommitBoundary {
    pub nullifiers: Boundary,
    pub application_root: Option<[u8; 32]>,
}

struct Frozen {
    insertions: Prepared,
    application: StagedWriteBatch,
    previous: CommitBoundary,
    next: CommitBoundary,
}

enum Phase {
    Ready(CommitBoundary),
    Prepared(Frozen),
    Sealed(Frozen),
    Interrupted,
}

/// Persistence owner at the host edge. No participant may commit independently.
pub struct PermanentWriter {
    storage: Storage,
    nullifiers: std::sync::Arc<std::sync::RwLock<Store>>,
    phase: Phase,
}

impl PermanentWriter {
    /// Reconcile local databases. Bankd must validate this application root
    /// against its authenticated commitment before execution or publication.
    pub async fn open(storage: Storage, config: &nullifiers::Config) -> Result<Self> {
        let path = storage.path().join("permanent-nullifiers");
        let create = storage.latest_version() == u64::MAX && !path.exists();
        let store = Store::open(&path, config, create)?;
        let expected = if storage.latest_version() == u64::MAX {
            None
        } else {
            Some(storage.latest_snapshot().root_hash().await?.0)
        };
        Self::recover(storage, store, expected).await
    }

    #[cfg(any(test, feature = "benchmark-helpers"))]
    pub async fn from_reader(storage: Storage, reader: nullifiers::Reader) -> Result<Self> {
        let mut writer = Self {
            storage,
            nullifiers: reader.0,
            phase: Phase::Interrupted,
        };
        writer.recover_current().await?;
        Ok(writer)
    }

    pub async fn recover_current(&mut self) -> Result<()> {
        // Drop disposable sessions before acquiring the database writer lock.
        self.phase = Phase::Interrupted;
        let snapshot = self.storage.latest_snapshot();
        let committed = if snapshot.version() == u64::MAX {
            CommitBoundary {
                nullifiers: Boundary::default(),
                application_root: None,
            }
        } else {
            let boundary = nullifiers::read_boundary(&snapshot).await?;
            ensure!(
                boundary.height == Some(snapshot.get_block_height().await?),
                "application and nullifier heights disagree"
            );
            CommitBoundary {
                nullifiers: boundary,
                application_root: Some(snapshot.root_hash().await?.0),
            }
        };
        self.nullifiers
            .write()
            .map_err(|_| anyhow::anyhow!("nullifier writer failed"))?
            .recover(&committed.nullifiers)?;
        self.phase = Phase::Ready(committed);
        Ok(())
    }

    pub fn prepared(&self) -> Result<&CommitBoundary> {
        match &self.phase {
            Phase::Prepared(frozen) | Phase::Sealed(frozen) => Ok(&frozen.next),
            _ => anyhow::bail!("permanent writer has no prepared block"),
        }
    }

    /// Recover to application state, then compare with the host's authenticated
    /// commitment before permitting execution or queries. Missing state fails closed.
    pub async fn recover(
        storage: Storage,
        mut nullifiers: Store,
        expected_application_root: Option<[u8; 32]>,
    ) -> Result<Self> {
        let snapshot = storage.latest_snapshot();
        let committed = if snapshot.version() == u64::MAX {
            ensure!(
                expected_application_root.is_none(),
                "application state is missing"
            );
            CommitBoundary {
                nullifiers: Boundary::default(),
                application_root: None,
            }
        } else {
            let root = snapshot.root_hash().await?.0;
            ensure!(
                expected_application_root == Some(root),
                "application root disagrees with host commitment"
            );
            let boundary = nullifiers::read_boundary(&snapshot).await?;
            ensure!(
                boundary.height == Some(snapshot.get_block_height().await?),
                "application and nullifier heights disagree"
            );
            CommitBoundary {
                nullifiers: boundary,
                application_root: Some(root),
            }
        };
        nullifiers.recover(&committed.nullifiers)?;
        Ok(Self {
            storage,
            nullifiers: std::sync::Arc::new(std::sync::RwLock::new(nullifiers)),
            phase: Phase::Ready(committed),
        })
    }

    pub fn reader(&self) -> nullifiers::Reader {
        nullifiers::Reader(self.nullifiers.clone())
    }

    pub fn committed(&self) -> Result<&CommitBoundary> {
        match &self.phase {
            Phase::Ready(boundary) => Ok(boundary),
            Phase::Prepared(frozen) | Phase::Sealed(frozen) => Ok(&frozen.previous),
            Phase::Interrupted => anyhow::bail!("permanent writer requires recovery"),
        }
    }

    /// Freeze disposable block state and the exact accepted nullifier sequence.
    /// This does not write recovery intent or any participant's durable state.
    pub async fn prepare(
        &mut self,
        mut state: StateDelta<Snapshot>,
        height: u64,
        block_id: [u8; 32],
        accepted: Vec<Nullifier>,
    ) -> Result<CommitBoundary> {
        let Phase::Ready(previous) = &self.phase else {
            anyhow::bail!("permanent writer is not ready to prepare");
        };
        let previous = previous.clone();
        ensure!(
            state.get_block_height().await? == height,
            "prepared application height disagrees"
        );
        let insertions = self
            .nullifiers
            .read()
            .map_err(|_| anyhow::anyhow!("nullifier writer failed"))?
            .prepare(height, block_id, &previous.nullifiers, accepted)?;
        nullifiers::stage_boundary(&mut state, insertions.transition()).await?;
        let application = self.storage.prepare_commit(state).await?;
        let next = CommitBoundary {
            nullifiers: insertions.transition().next.clone(),
            application_root: Some(application.root_hash().0),
        };
        self.phase = Phase::Prepared(Frozen {
            insertions,
            application,
            previous,
            next: next.clone(),
        });
        Ok(next)
    }

    /// Persist intent before Bankd, NOMT or Shieldd makes the first durable change.
    pub fn seal(&mut self) -> Result<CommitBoundary> {
        let phase = std::mem::replace(&mut self.phase, Phase::Interrupted);
        match phase {
            Phase::Prepared(frozen) => {
                self.nullifiers
                    .write()
                    .map_err(|_| anyhow::anyhow!("nullifier writer failed"))?
                    .persist_intent(&frozen.insertions)?;
                let next = frozen.next.clone();
                self.phase = Phase::Sealed(frozen);
                Ok(next)
            }
            other => {
                self.phase = other;
                anyhow::bail!("permanent writer has no prepared commit to seal")
            }
        }
    }

    /// Discard a proposal. Once sealed, recovery must choose the durable boundary.
    pub fn discard(&mut self) -> Result<()> {
        let phase = std::mem::replace(&mut self.phase, Phase::Interrupted);
        match phase {
            Phase::Prepared(frozen) => {
                self.phase = Phase::Ready(frozen.previous);
                Ok(())
            }
            other => {
                self.phase = other;
                anyhow::bail!("only an unsealed proposal may be discarded")
            }
        }
    }

    /// Bankd has committed the prepared root. Commit all NOMT partitions first,
    /// then the already frozen application batch. Any failure disables reads.
    pub fn commit(&mut self) -> Result<CommitBoundary> {
        let phase = std::mem::replace(&mut self.phase, Phase::Interrupted);
        let Phase::Sealed(frozen) = phase else {
            self.phase = phase;
            anyhow::bail!("permanent writer commit requires durable intent");
        };
        ensure!(
            self.storage.latest_version().wrapping_add(1) == frozen.application.version(),
            "application changed after commit preparation"
        );
        self.nullifiers
            .write()
            .map_err(|_| anyhow::anyhow!("nullifier writer failed"))?
            .commit(frozen.insertions)
            .context("committing permanent nullifiers")?;
        let root = self
            .storage
            .commit_batch(frozen.application)
            .context("committing application state")?;
        ensure!(
            Some(root.0) == frozen.next.application_root,
            "prepared application root changed"
        );
        self.nullifiers
            .write()
            .map_err(|_| anyhow::anyhow!("nullifier writer failed"))?
            .complete(&frozen.next.nullifiers)?;
        self.phase = Phase::Ready(frozen.next.clone());
        for partition in self.capacity()? {
            let label = partition.partition.to_string();
            crate::metrics::gauge!(crate::metrics::NULLIFIER_BUCKETS,"partition"=>label.clone())
                .set(partition.buckets as f64);
            crate::metrics::gauge!(crate::metrics::NULLIFIER_OCCUPIED,"partition"=>label)
                .set(partition.occupied as f64);
        }
        Ok(frozen.next)
    }

    pub fn status(
        &self,
        nullifier: Nullifier,
        expected: &CommitBoundary,
    ) -> Result<nullifiers::Status> {
        ensure!(
            self.committed()? == expected,
            "published application boundary is stale"
        );
        self.nullifiers
            .read()
            .map_err(|_| anyhow::anyhow!("nullifier writer failed"))?
            .status(nullifier, &expected.nullifiers)
    }

    pub fn history(&self, expected: &CommitBoundary) -> Result<nullifiers::History> {
        ensure!(
            self.committed()? == expected,
            "snapshot application boundary is stale"
        );
        self.nullifiers
            .read()
            .map_err(|_| anyhow::anyhow!("nullifier writer failed"))?
            .history(&expected.nullifiers)
    }
}

#[cfg(test)]
mod tests;

mod snapshot;
