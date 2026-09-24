//! Canonical paired compliance snapshots and the global freeze barrier.
use anyhow::Result;
use serde::{Deserialize, Serialize};
use shieldd_sdk_proto::{core::component::compliance::v1 as pb, DomainType};
use shieldd_sdk_tct::StateCommitment;

#[derive(Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
#[serde(try_from = "pb::ComplianceSnapshot", into = "pb::ComplianceSnapshot")]
pub struct ComplianceSnapshot {
    pub user_root: StateCommitment,
    pub asset_root: StateCommitment,
    pub freeze_epoch: u64,
    pub observed_height: u64,
    pub observed_time_seconds: u64,
}

impl DomainType for ComplianceSnapshot {
    type Proto = pb::ComplianceSnapshot;
}

impl TryFrom<pb::ComplianceSnapshot> for ComplianceSnapshot {
    type Error = anyhow::Error;
    fn try_from(value: pb::ComplianceSnapshot) -> Result<Self> {
        Ok(Self {
            user_root: StateCommitment::try_from(value.user_root.as_slice())?,
            asset_root: StateCommitment::try_from(value.asset_root.as_slice())?,
            freeze_epoch: value.freeze_epoch,
            observed_height: value.observed_height,
            observed_time_seconds: value.observed_time_seconds,
        })
    }
}

impl From<ComplianceSnapshot> for pb::ComplianceSnapshot {
    fn from(value: ComplianceSnapshot) -> Self {
        Self {
            user_root: value.user_root.0.to_bytes().to_vec(),
            asset_root: value.asset_root.0.to_bytes().to_vec(),
            freeze_epoch: value.freeze_epoch,
            observed_height: value.observed_height,
            observed_time_seconds: value.observed_time_seconds,
        }
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum StaleComplianceSnapshot {
    Unknown,
    Frozen,
    Expired,
    Future,
}

impl std::fmt::Display for StaleComplianceSnapshot {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(f, "stale compliance snapshot ({self:?}); sync and explicitly rebuild, reprove and reauthorize the transaction")
    }
}
impl std::error::Error for StaleComplianceSnapshot {}

pub fn validate_snapshot(
    snapshot: &ComplianceSnapshot,
    epoch: u64,
    now: u64,
    max_age: u64,
) -> Result<(), StaleComplianceSnapshot> {
    if snapshot.freeze_epoch != epoch {
        return Err(StaleComplianceSnapshot::Frozen);
    }
    let age = now
        .checked_sub(snapshot.observed_time_seconds)
        .ok_or(StaleComplianceSnapshot::Future)?;
    if max_age == 0 || age > max_age {
        return Err(StaleComplianceSnapshot::Expired);
    }
    Ok(())
}

#[cfg(feature = "component")]
pub mod state {
    use super::*;
    use crate::{
        params::StateReadExt, registry::ComplianceRegistryRead, state_key::admission as key,
    };
    use anyhow::ensure;
    use cnidarium::{StateRead, StateWrite};
    use futures::StreamExt;
    use shieldd_sdk_proto::{StateReadProto, StateWriteProto};
    use shieldd_sdk_sct::component::clock::EpochRead;

    pub const PRUNE_LIMIT: usize = 64;

    pub async fn epoch<S: StateRead + ?Sized>(state: &S) -> Result<u64> {
        state
            .get_proto(key::freeze_epoch())
            .await?
            .ok_or_else(|| anyhow::anyhow!("missing compliance freeze epoch"))
    }

    pub async fn current<S: StateRead + ?Sized>(state: &S) -> Result<Option<ComplianceSnapshot>> {
        state
            .get(&key::pair(
                &state.get_user_tree_root().await?,
                &state.get_asset_imt_root().await?,
            ))
            .await
    }

    pub async fn validate<S: StateRead + ?Sized>(
        state: &S,
        user: &StateCommitment,
        asset: &StateCommitment,
    ) -> Result<()> {
        if *user == state.get_user_tree_root().await?
            && *asset == state.get_asset_imt_root().await?
        {
            return Ok(());
        }
        let snapshot: ComplianceSnapshot = state
            .get(&key::pair(user, asset))
            .await?
            .ok_or(StaleComplianceSnapshot::Unknown)?;
        ensure!(
            snapshot.user_root == *user && snapshot.asset_root == *asset,
            "corrupt compliance snapshot pair"
        );
        validate_snapshot(
            &snapshot,
            epoch(state).await?,
            state
                .get_current_block_timestamp()
                .await?
                .unix_timestamp()
                .try_into()?,
            state
                .get_compliance_params()
                .await?
                .compliance_anchor_max_age_seconds,
        )?;
        Ok(())
    }

    #[cfg(test)]
    pub async fn freeze<S: StateWrite + ?Sized>(state: &mut S) -> Result<()> {
        let next = epoch(state)
            .await?
            .checked_add(1)
            .ok_or_else(|| anyhow::anyhow!("compliance freeze epoch overflow"))?;
        state.put_proto(key::freeze_epoch().to_owned(), next);
        Ok(())
    }

    pub async fn record<S: StateWrite + ?Sized>(
        state: &mut S,
        height: u64,
        time: u64,
    ) -> Result<()> {
        let snapshot = ComplianceSnapshot {
            user_root: state.get_user_tree_root().await?,
            asset_root: state.get_asset_imt_root().await?,
            freeze_epoch: epoch(state).await?,
            observed_height: height,
            observed_time_seconds: time,
        };
        let pair = key::pair(&snapshot.user_root, &snapshot.asset_root);
        if let Some(previous) = state.get::<ComplianceSnapshot>(&pair).await? {
            state.delete(key::last_seen(&previous));
        }
        state.put(pair, snapshot.clone());
        state.put(key::last_seen(&snapshot), snapshot);
        Ok(())
    }

    pub async fn prune<S: StateWrite + ?Sized>(state: &mut S, time: u64) -> Result<()> {
        let epoch = epoch(state).await?;
        let max_age = state
            .get_compliance_params()
            .await?
            .compliance_anchor_max_age_seconds;
        let current_pair = (
            state.get_user_tree_root().await?,
            state.get_asset_imt_root().await?,
        );
        let expired = {
            let entries = state.prefix::<ComplianceSnapshot>(key::last_seen_prefix());
            futures::pin_mut!(entries);
            let mut expired = Vec::new();
            while expired.len() < PRUNE_LIMIT {
                let Some(entry) = entries.next().await else {
                    break;
                };
                let (key, snapshot) = entry?;
                if snapshot.freeze_epoch == epoch
                    && ((snapshot.user_root, snapshot.asset_root) == current_pair
                        || (max_age > 0
                            && time.saturating_sub(snapshot.observed_time_seconds) <= max_age))
                {
                    break;
                }
                expired.push((key, snapshot));
            }
            expired
        };
        for (index, snapshot) in expired {
            let pair = key::pair(&snapshot.user_root, &snapshot.asset_root);
            if state.get::<ComplianceSnapshot>(&pair).await?.as_ref() == Some(&snapshot) {
                state.delete(pair);
            }
            state.delete(index);
        }
        Ok(())
    }

    /// A checkpoint is a complete database, not a new root observation.
    pub async fn validate_checkpoint<S: StateRead + ?Sized>(state: &S) -> Result<()> {
        let epoch = epoch(state).await?;
        let height = state.get_block_height().await?;
        state.get_compliance_params().await?;
        if state.get_proto::<bool>(key::pending_genesis()).await? == Some(true) {
            ensure!(
                height == 0 && epoch == 0 && current(state).await?.is_none(),
                "invalid pending genesis compliance state"
            );
            return Ok(());
        }
        let time: u64 = state
            .get_current_block_timestamp()
            .await?
            .unix_timestamp()
            .try_into()?;
        let current = current(state)
            .await?
            .ok_or_else(|| anyhow::anyhow!("checkpoint has no current compliance snapshot"))?;
        ensure!(
            current.freeze_epoch == epoch
                && current.observed_height == height
                && current.observed_time_seconds == time,
            "checkpoint compliance snapshot is not current"
        );
        let pairs = state.prefix::<ComplianceSnapshot>(key::pairs_prefix());
        futures::pin_mut!(pairs);
        while let Some(entry) = pairs.next().await {
            let (pair, snapshot) = entry?;
            ensure!(
                pair == key::pair(&snapshot.user_root, &snapshot.asset_root)
                    && snapshot.freeze_epoch <= epoch
                    && snapshot.observed_height <= height
                    && snapshot.observed_time_seconds <= time,
                "invalid checkpoint compliance snapshot"
            );
            ensure!(
                state
                    .get::<ComplianceSnapshot>(&key::last_seen(&snapshot))
                    .await?
                    .as_ref()
                    == Some(&snapshot),
                "missing checkpoint compliance chronological index"
            );
        }
        let indexes = state.prefix::<ComplianceSnapshot>(key::last_seen_prefix());
        futures::pin_mut!(indexes);
        while let Some(entry) = indexes.next().await {
            let (index, snapshot) = entry?;
            ensure!(
                index == key::last_seen(&snapshot)
                    && state
                        .get::<ComplianceSnapshot>(&key::pair(
                            &snapshot.user_root,
                            &snapshot.asset_root
                        ))
                        .await?
                        .as_ref()
                        == Some(&snapshot),
                "orphan checkpoint compliance chronological index"
            );
        }
        Ok(())
    }

    /// Called before overwriting the parent clock, including on speculative parents.
    pub async fn validate_time<S: StateRead + ?Sized>(
        state: &S,
        time: tendermint::Time,
    ) -> Result<()> {
        ensure!(
            time.unix_timestamp() >= 0,
            "block time must not precede Unix epoch"
        );
        if state.get_block_height().await? == 0
            && state.get_proto::<bool>(key::pending_genesis()).await? == Some(true)
        {
            return Ok(());
        }
        ensure!(
            time >= state.get_current_block_timestamp().await?,
            "block time must not precede parent block time"
        );
        Ok(())
    }
}

#[cfg(all(test, feature = "component"))]
mod tests;
