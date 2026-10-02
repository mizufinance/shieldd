use super::{App, InterBlockState};
use anyhow::{ensure, Context as _, Result};
use std::collections::BTreeMap;

pub const MAX_SCOPES_PER_BLOCK: u64 = 262_144;
pub const MAX_SCOPE_DEPTH: usize = 1_024;

/// A frozen branch is a distinct delta, never another Arc to writable state.
/// Saving only the append cursor avoids copying the block's transaction list
/// for every SDK cache and EVM savepoint.
pub(super) struct SavedState {
    state: InterBlockState,
    transactions: usize,
}

impl App {
    pub(super) fn save_scope(&mut self) -> Result<SavedState> {
        let state = std::sync::Arc::get_mut(&mut self.state)
            .context("execution state is still borrowed at scope boundary")?
            .fork();
        let parent = std::mem::replace(&mut self.state, std::sync::Arc::new(state));
        Ok(SavedState {
            state: parent,
            transactions: self.deferred_block_transactions.len(),
        })
    }

    pub(super) fn restore_scope(&mut self, saved: SavedState) {
        self.state = saved.state;
        self.deferred_block_transactions
            .truncate(saved.transactions);
    }
}

struct Scope {
    id: u64,
    saved: SavedState,
    points: BTreeMap<u64, SavedState>,
    next_point: u64,
    prepared: bool,
}

#[derive(Default)]
pub(super) struct Scopes {
    stack: Vec<Scope>,
    opened: u64,
}

impl Scopes {
    pub fn active(&self) -> u64 {
        self.stack.last().map_or(0, |scope| scope.id)
    }

    pub fn is_empty(&self) -> bool {
        self.stack.is_empty()
    }

    pub fn open(&mut self, app: &mut App, parent: u64, id: u64) -> Result<u64> {
        ensure!(
            parent == self.active(),
            "scope parent is not the active owner"
        );
        ensure!(
            self.stack.last().is_none_or(|scope| !scope.prepared),
            "scope is prepared for adoption"
        );
        if self.stack.len() >= MAX_SCOPE_DEPTH {
            return Err(shieldd_sdk_storage::ProtocolLimitExceeded("scope depth exceeded").into());
        }
        if self.opened >= MAX_SCOPES_PER_BLOCK {
            return Err(shieldd_sdk_storage::ProtocolLimitExceeded("scope count exceeded").into());
        }
        ensure!(id != 0, "scope capability is read-only");
        let saved = app.save_scope()?;
        self.opened += 1;
        self.stack.push(Scope {
            id,
            saved,
            points: BTreeMap::new(),
            next_point: 0,
            prepared: false,
        });
        Ok(id)
    }

    fn owner(&mut self, id: u64) -> Result<&mut Scope> {
        let scope = self.stack.last_mut().context("no active execution scope")?;
        ensure!(
            id != 0 && scope.id == id,
            "scope capability is not the active owner"
        );
        Ok(scope)
    }

    pub fn writable(&mut self, id: u64) -> Result<()> {
        ensure!(!self.owner(id)?.prepared, "scope is prepared for adoption");
        Ok(())
    }

    pub fn prepare(&mut self, id: u64) -> Result<()> {
        self.owner(id)?.prepared = true;
        Ok(())
    }

    pub fn close(&mut self, app: &mut App, id: u64, adopt: bool) -> Result<()> {
        ensure!(
            !adopt || self.owner(id)?.prepared,
            "scope adoption was not prepared"
        );
        self.owner(id)?;
        let scope = self.stack.pop().expect("owner checked");
        if !adopt {
            app.restore_scope(scope.saved);
        }
        Ok(())
    }

    pub fn snapshot(&mut self, app: &mut App, id: u64) -> Result<u64> {
        self.writable(id)?;
        if self.opened >= MAX_SCOPES_PER_BLOCK {
            return Err(shieldd_sdk_storage::ProtocolLimitExceeded(
                "scope/savepoint count exceeded",
            )
            .into());
        }
        let saved = app.save_scope()?;
        self.opened += 1;
        let scope = self.owner(id)?;
        let point = scope.next_point;
        scope.next_point = scope
            .next_point
            .checked_add(1)
            .context("savepoint ID overflow")?;
        scope.points.insert(point, saved);
        Ok(point)
    }

    pub fn revert(&mut self, app: &mut App, id: u64, point: u64) -> Result<()> {
        self.writable(id)?;
        let scope = self.owner(id)?;
        let saved = scope
            .points
            .remove(&point)
            .context("invalidated native savepoint")?;
        scope.points.retain(|id, _| *id < point);
        app.restore_scope(saved);
        // Preserve the target so a later enclosing rollback can restore it
        // again, while all later snapshots remain invalidated.
        let saved = app.save_scope()?;
        self.owner(id)?.points.insert(point, saved);
        Ok(())
    }

    pub fn abort_all(&mut self, app: &mut App) {
        while let Some(scope) = self.stack.pop() {
            app.restore_scope(scope.saved);
        }
    }

    pub fn reset(&mut self) -> Result<()> {
        ensure!(self.is_empty(), "cannot reset open scopes");
        self.opened = 0;
        Ok(())
    }
}
