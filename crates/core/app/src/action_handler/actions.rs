use std::sync::Arc;

use crate::ShielddHost;
use anyhow::{bail, Result};
use async_trait::async_trait;
use cnidarium::{StateRead, StateWrite};
use shieldd_sdk_shielded_pool::component::Ics20Transfer;
use shieldd_sdk_transaction::Action;

use super::AppActionHandler;
use cnidarium_component::ActionHandler as _;

#[async_trait]
impl AppActionHandler for Action {
    async fn check_historical<S: StateRead + 'static>(&self, state: Arc<S>) -> Result<()> {
        match self {
            Action::Transfer(action) => action.check_historical(state).await,
            Action::NoteReshape(_) => Ok(()),
            Action::IbcRelay(action) => {
                action
                    .clone()
                    .with_handler::<Ics20Transfer, ShielddHost>()
                    .check_historical(state)
                    .await
            }
            Action::ShieldedIcs20Withdrawal(action) => action.check_historical(state).await,
            Action::ShieldedHostWithdrawal(action) => action.check_historical(state).await,
            Action::ComplianceRegisterAsset(action) => action.check_historical(state).await,
            Action::ComplianceRegisterUser(action) => action.check_historical(state).await,
            Action::AggregateBundle(_) => bail!(
                "aggregate bundle actions are only permitted in the dedicated aggregation pipeline"
            ),
        }
    }

    async fn check_and_execute<S: StateWrite>(&self, state: S) -> Result<()> {
        match self {
            Action::Transfer(action) => action.check_and_execute(state).await,
            Action::NoteReshape(action) => action.check_and_execute(state).await,
            Action::IbcRelay(action) => {
                action
                    .clone()
                    .with_handler::<Ics20Transfer, ShielddHost>()
                    .check_and_execute(state)
                    .await
            }
            Action::ShieldedIcs20Withdrawal(action) => action.check_and_execute(state).await,
            Action::ShieldedHostWithdrawal(action) => action.check_and_execute(state).await,
            Action::ComplianceRegisterAsset(action) => action.check_and_execute(state).await,
            Action::ComplianceRegisterUser(action) => action.check_and_execute(state).await,
            Action::AggregateBundle(_) => bail!(
                "aggregate bundle actions are only permitted in the dedicated aggregation pipeline"
            ),
        }
    }
}
