//! Verifiable identity of the proof keys configured for this privacy pool.
use anyhow::{ensure, Context, Result};
use cnidarium::{Snapshot, StateRead, StateWrite};

pub const KEY: &str = "application/crypto/pari_registry_id";

pub(crate) fn initialize(state: &mut impl StateWrite, registry_id: [u8; 32]) {
    state.put_raw(KEY.into(), registry_id.to_vec());
}

/// Empty storage is bound by genesis; populated state must already carry the exact key identity.
pub async fn check(snapshot: &Snapshot, registry_id: [u8; 32]) -> Result<()> {
    if snapshot.version() == u64::MAX {
        return Ok(());
    }
    let stored = snapshot
        .get_raw(KEY)
        .await?
        .context("missing Pari registry binding; recreate demo state")?;
    ensure!(stored.as_slice() == registry_id, "Pari registry does not match this privacy pool; restore its configured keys or recreate demo state");
    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;
    use cnidarium::{StateDelta, TempStorage};
    #[tokio::test]
    async fn registry_binding_is_committed_and_never_repaired_on_open() -> Result<()> {
        let storage = TempStorage::new().await?;
        check(&storage.latest_snapshot(), [1; 32]).await?;
        let mut state = StateDelta::new(storage.latest_snapshot());
        initialize(&mut state, [1; 32]);
        storage.commit(state).await?;
        let snapshot = storage.latest_snapshot();
        let root = snapshot.root_hash().await?;
        check(&snapshot, [1; 32]).await?;
        assert!(check(&snapshot, [2; 32]).await.is_err());
        assert_eq!(root, storage.latest_snapshot().root_hash().await?);
        let mut state = StateDelta::new(snapshot);
        state.put_raw(KEY.into(), vec![1; 31]);
        storage.commit(state).await?;
        assert!(check(&storage.latest_snapshot(), [1; 32]).await.is_err());
        Ok(())
    }
}
