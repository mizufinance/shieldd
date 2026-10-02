use super::{App, InterBlockState};
use anyhow::{Context as _, Result};

/// A frozen branch is a distinct delta, never another Arc to writable state.
/// Saving only the append cursor avoids copying the block's transaction list
/// for every native call.
pub(super) struct SavedState {
    state: InterBlockState,
    transactions: usize,
}

impl App {
    pub(super) fn reserve_call_writes(&self, saved: &SavedState) -> Result<()> {
        self.state.reserve_ordering_since(&saved.state)
    }

    pub(super) fn save_call(&mut self) -> Result<SavedState> {
        let state = std::sync::Arc::get_mut(&mut self.state)
            .context("execution state is still borrowed at call boundary")?
            .fork();
        let parent = std::mem::replace(&mut self.state, std::sync::Arc::new(state));
        Ok(SavedState {
            state: parent,
            transactions: self.deferred_block_transactions.len(),
        })
    }

    pub(super) fn restore_call(&mut self, saved: SavedState) {
        self.state = saved.state;
        self.deferred_block_transactions
            .truncate(saved.transactions);
    }
}
