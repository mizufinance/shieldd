use std::collections::BTreeMap;

use crate::{planning_io::PlanningIo, NoteManager, NoteManagerPlanningResult};
use anyhow::Context;
use rand_core::{CryptoRng, RngCore};
use shieldd_sdk_proto::view::v1::NotesRequest;
use shieldd_sdk_transaction::TransactionPlan;
use tracing::instrument;

#[instrument(skip(view, rng))]
pub async fn sweep<V, R>(
    view: &mut V,
    mut rng: R,
    gas_prices: shieldd_sdk_fee::GasPrices,
) -> anyhow::Result<Option<TransactionPlan>>
where
    V: PlanningIo + Send,
    R: RngCore + CryptoRng,
{
    let mut counts = BTreeMap::new();
    for record in view.notes(NotesRequest::default()).await? {
        if record.note.amount() == 0u64.into() {
            continue;
        }
        *counts
            .entry((record.address_index, record.note.asset_id()))
            .or_insert(0usize) += 1;
    }

    let mut note_manager = NoteManager::new(&mut rng);
    note_manager.set_gas_prices(gas_prices);
    for ((index, asset_id), count) in counts {
        if count < 2 {
            continue;
        }
        if asset_id == *shieldd_sdk_asset::BASE_ASSET_ID
            && !crate::note_manager::gas_prices_are_zero(gas_prices)
        {
            if let Some(plan) = note_manager.plan_base_consolidation(view, index).await? {
                return Ok(Some(plan));
            }
            continue;
        }
        match note_manager
            .plan_note_reshape_from_notes(view, index, asset_id, None)
            .await
            .context("can't build sweep transaction")?
        {
            NoteManagerPlanningResult::Ready { transaction_plan } => {
                return Ok(Some(transaction_plan));
            }
            NoteManagerPlanningResult::UnsupportedIntent { reason } => {
                tracing::debug!(?asset_id, ?reason, "skipping unsupported sweep intent");
            }
            NoteManagerPlanningResult::NeedsMaintenance { .. }
            | NoteManagerPlanningResult::InsufficientBalance => {}
        }
    }
    Ok(None)
}
