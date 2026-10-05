use super::{Storage, TreeStore};
use anyhow::{Context, Result};
use shieldd_sdk_tct::Proof;
use shieldd_sdk_transaction::{ActionPlan, TransactionPlan, WitnessData};

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
            let mut commitments = plan
                .spends()
                .filter(|p| p.spend.note.amount() != 0u64.into())
                .map(|p| p.spend.note.commit())
                .collect::<Vec<_>>();
            commitments.extend(plan.actions.iter().filter_map(|action| match action {
                ActionPlan::Transfer(plan) => plan.accumulator_prior_commitment(),
                ActionPlan::ShieldedHostWithdrawal(plan) => plan.accumulator_prior_commitment(),

                _ => None,
            }));
            let proofs = commitments
                .into_iter()
                .map(|commitment| sct.witness(commitment).context("note commitment missing"))
                .collect::<Result<Vec<_>>>()?;
            let mut witness = WitnessData {
                anchor: sct.root(),
                state_commitment_proofs: proofs.into_iter().map(|p| (p.commitment(), p)).collect(),
            };
            for commitment in plan
                .spends()
                .filter(|p| p.spend.note.amount() == 0u64.into())
                .map(|p| p.spend.note.commit())
            {
                witness.add_proof(commitment, Proof::dummy(&mut rand_core::OsRng, commitment));
            }
            transaction.commit()?;
            Ok(witness)
        })
        .await?
    }
}
