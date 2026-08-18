use std::sync::Arc;

use anyhow::Result;
use async_trait::async_trait;
use cnidarium::{StateRead, StateWrite};

mod actions;
pub(crate) mod transaction;

/// App-level action checks for types whose implementations require application
/// context and cannot use the component action trait directly.
///
/// - Action (which needs to slot in the ShielddHost for IBC action handling)
/// - Transaction (which depends on the above)
#[async_trait]
pub(crate) trait AppActionHandler {
    async fn check_historical<S: StateRead + 'static>(&self, _state: Arc<S>) -> Result<()> {
        return Ok(());
    }
    async fn check_and_execute<S: StateWrite>(&self, state: S) -> Result<()>;
}
