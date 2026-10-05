use super::{Storage, TreeStore};
use anyhow::Result;
use shieldd_sdk_transaction::{TransactionPlan, WitnessData};

impl Storage {
    pub async fn witness_plan(
        &self,
        plan: &TransactionPlan,
        registry_id: [u8; 32],
    ) -> Result<WitnessData> {
        let pool = self.pool.clone();
        let plan = plan.clone();
        tokio::task::spawn_blocking(move || {
            let mut connection = pool.get()?;
            let mut transaction = connection
                .transaction_with_behavior(r2d2_sqlite::rusqlite::TransactionBehavior::Immediate)?;
            super::registry::bind(&transaction, registry_id)?;
            let sct = shieldd_sdk_tct::Tree::from_reader(&mut TreeStore(&mut transaction))?;
            let witness = plan.witness_data(&sct)?;
            transaction.commit()?;
            Ok(witness)
        })
        .await?
    }
}
