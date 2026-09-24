use std::sync::Arc;

use anyhow::Result;
use async_trait::async_trait;
use cnidarium::{StateRead, StateWrite};

#[async_trait]
/// Validates and executes individual transaction actions.
///
/// [`Component`](crate::Component) handles block-wide lifecycle work. The caller
/// performs transaction-wide validation and invokes these action-level phases:
///
/// - [`Self::check_stateless`] uses only [`Self::CheckStatelessContext`].
/// - [`Self::check_historical`] reads a snapshot and may check only facts that
///   remain valid when earlier actions change state.
/// - [`Self::check_and_execute`] validates current facts and applies writes.
///
/// Errors abort admission or execution. The caller must isolate staged writes
/// and discard them on failure; this trait does not supply transaction rollback.
pub trait ActionHandler {
    /// Context for stateless validity checks, like the transaction containing the action.
    type CheckStatelessContext: Clone + Send + Sync + 'static;
    /// Performs all of this action's stateless validity checks in the
    /// transaction-wide `context`.
    ///
    /// This method is `async` to make it easy to perform stateless validity
    /// checks in parallel, by allowing `ActionHandler` implementations to
    /// easily spawn tasks internally.
    ///
    /// Supplying the `context` means that stateless checks can use
    /// transaction-wide data like the SCT anchor.
    ///
    /// As much work as possible should be done in `check_stateless`, as it can
    /// be run in parallel across all transactions in a block.
    async fn check_stateless(&self, context: Self::CheckStatelessContext) -> Result<()>;

    /// Performs those stateful validity checks that can be performed against a
    /// historical state snapshot.
    ///
    /// This method provides read access to a snapshot of the `State` prior to
    /// transaction execution.  It is intended to be run in parallel across all
    /// actions within a transaction.
    ///
    /// # Warning
    ///
    /// Misuse of this method creates TOCTOU vulnerabilities. Checks performed
    /// in this method must be valid if they are performed against a _prior_
    /// state, as another action in the same transaction may execute first and
    /// change the state.
    ///
    /// Checks performed in this phase should have a justification for why they
    /// are safe to run in parallel with other actions in the same transaction,
    /// and the default behavior should be to perform checks in
    /// [`ActionHandler::check_and_execute`].
    ///
    /// # Invariants
    ///
    /// This method should only be called on data that has been checked
    /// with [`ActionHandler::check_stateless`].  This method can be called
    /// before [`Component::begin_block`](crate::Component::begin_block).
    async fn check_historical<S: StateRead + 'static>(&self, _state: Arc<S>) -> Result<()> {
        // Default behavior: no-op
        Ok(())
    }

    /// Validate current state and execute this action after the earlier check phases.
    ///
    /// The caller must discard staged writes if execution fails. Checks that can
    /// be invalidated by earlier actions belong here, not in `check_historical`.
    /// Current-state checks and writes run sequentially within the transaction.
    async fn check_and_execute<S: StateWrite>(&self, state: S) -> Result<()>;
}
