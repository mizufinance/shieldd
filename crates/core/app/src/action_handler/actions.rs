use std::sync::Arc;

use anyhow::Result;
use async_trait::async_trait;
use cnidarium::{StateRead, StateWrite};
use shieldd_sdk_shielded_pool::component::Ics20Transfer;
use shieldd_sdk_transaction::Action;
use shieldd_sdk_txhash::TransactionContext;

mod submit;

use crate::ShielddHost;

use super::AppActionHandler;
use cnidarium_component::ActionHandler as _;

#[async_trait]
impl AppActionHandler for Action {
    type CheckStatelessContext = TransactionContext;

    async fn check_stateless(&self, context: TransactionContext) -> Result<()> {
        match self {
            Action::Transfer(action) => action.check_stateless(context).await,
            Action::NoteReshape(action) => action.check_stateless(context).await,
            Action::ValidatorDefinition(action) => action.check_stateless(()).await,
            Action::ValidatorVote(action) => action.check_stateless(()).await,
            Action::ProposalSubmit(action) => action.check_stateless(()).await,
            Action::IbcRelay(action) => {
                action
                    .clone()
                    .with_handler::<Ics20Transfer, ShielddHost>()
                    .check_stateless(())
                    .await
            }
            Action::ShieldedIcs20Withdrawal(action) => action.check_stateless(context).await,
            Action::ComplianceRegisterAsset(action) => action.check_stateless(()).await,
            Action::ComplianceRegisterUser(action) => action.check_stateless(()).await,
        }
    }

    async fn check_historical<S: StateRead + 'static>(&self, state: Arc<S>) -> Result<()> {
        match self {
            Action::Transfer(action) => action.check_historical(state).await,
            Action::NoteReshape(_) => Ok(()),
            Action::ValidatorDefinition(action) => action.check_historical(state).await,
            Action::ValidatorVote(action) => action.check_historical(state).await,
            Action::ProposalSubmit(action) => action.check_historical(state).await,
            Action::IbcRelay(action) => {
                action
                    .clone()
                    .with_handler::<Ics20Transfer, ShielddHost>()
                    .check_historical(state)
                    .await
            }
            Action::ShieldedIcs20Withdrawal(action) => action.check_historical(state).await,
            Action::ComplianceRegisterAsset(action) => action.check_historical(state).await,
            Action::ComplianceRegisterUser(action) => action.check_historical(state).await,
        }
    }

    async fn check_and_execute<S: StateWrite>(&self, state: S) -> Result<()> {
        match self {
            Action::Transfer(action) => action.check_and_execute(state).await,
            Action::NoteReshape(action) => action.check_and_execute(state).await,
            Action::ValidatorDefinition(action) => action.check_and_execute(state).await,
            Action::ValidatorVote(action) => action.check_and_execute(state).await,
            Action::ProposalSubmit(action) => action.check_and_execute(state).await,
            Action::IbcRelay(action) => {
                action
                    .clone()
                    .with_handler::<Ics20Transfer, ShielddHost>()
                    .check_and_execute(state)
                    .await
            }
            Action::ShieldedIcs20Withdrawal(action) => action.check_and_execute(state).await,
            Action::ComplianceRegisterAsset(action) => action.check_and_execute(state).await,
            Action::ComplianceRegisterUser(action) => action.check_and_execute(state).await,
        }
    }
}
