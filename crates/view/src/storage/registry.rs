use super::Storage;
use anyhow::{ensure, Result};
use r2d2_sqlite::rusqlite::{OptionalExtension, TransactionBehavior};

impl Storage {
    /// Bind local proof work to one configured registry without altering existing proof caches.
    pub async fn bind_registry(&self, registry_id: [u8; 32]) -> Result<()> {
        let pool = self.pool.clone();
        tokio::task::spawn_blocking(move || {
            let mut connection = pool.get()?;
            let transaction =
                connection.transaction_with_behavior(TransactionBehavior::Immediate)?;
            bind(&transaction, registry_id)?;
            transaction.commit()?;
            Ok(())
        })
        .await?
    }
}

/// The caller commits only after all accompanying wallet work succeeds.
pub(super) fn bind(
    transaction: &r2d2_sqlite::rusqlite::Transaction<'_>,
    registry_id: [u8; 32],
) -> Result<()> {
    let stored: Option<Vec<u8>> = transaction
        .query_row("SELECT v FROM kv WHERE k = 'pari_registry_id'", [], |r| {
            r.get(0)
        })
        .optional()?;
    if let Some(stored) = stored {
        ensure!(stored.as_slice() == registry_id, "Pari registry does not match this wallet; restore its configured keys or reset the wallet");
    } else {
        let mismatches: u64 = transaction.query_row(
                    "SELECT COUNT(*) FROM historical_proof_cache WHERE registry_id IS NOT NULL AND registry_id != ?1",
                    [registry_id.as_slice()], |r| r.get(0),
                )?;
        ensure!(
            mismatches == 0,
            "Pari registry does not match existing wallet history proofs"
        );
        transaction.execute(
            "INSERT INTO kv (k,v) VALUES ('pari_registry_id',?1)",
            [registry_id.as_slice()],
        )?;
    }
    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;
    #[tokio::test]
    async fn failed_witness_does_not_bind_wallet() -> Result<()> {
        let storage = Storage::initialize(
            None::<&camino::Utf8Path>,
            (*shieldd_sdk_keys::test_keys::FULL_VIEWING_KEY).clone(),
            shieldd_sdk_app::params::AppParameters::default(),
        )
        .await?;
        storage.pool.get()?.execute("DROP TABLE sct_position", [])?;
        assert!(storage
            .witness_plan(&Default::default(), [1; 32])
            .await
            .is_err());
        let bound: bool = storage.pool.get()?.query_row(
            "SELECT EXISTS(SELECT 1 FROM kv WHERE k='pari_registry_id')",
            [],
            |r| r.get(0),
        )?;
        assert!(!bound, "failed witness must not persist configuration");
        Ok(())
    }
    #[tokio::test]
    async fn wrong_registry_does_not_rebind_or_poison_wallet() -> Result<()> {
        let storage = Storage::initialize(
            None::<&camino::Utf8Path>,
            (*shieldd_sdk_keys::test_keys::FULL_VIEWING_KEY).clone(),
            shieldd_sdk_app::params::AppParameters::default(),
        )
        .await?;
        storage.bind_registry([1; 32]).await?;
        assert!(storage.bind_registry([2; 32]).await.is_err());
        storage.bind_registry([1; 32]).await?;
        let value: Vec<u8> = storage.pool.get()?.query_row(
            "SELECT v FROM kv WHERE k='pari_registry_id'",
            [],
            |row| row.get(0),
        )?;
        assert_eq!(value, vec![1; 32]);
        Ok(())
    }
}
