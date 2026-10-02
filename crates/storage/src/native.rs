//! Explicit native-root read regions. An unfinished or failed region poisons
//! observations even when its caller discards writes or catches the error.
use crate::{Observations, StateRead};
use anyhow::{ensure, Result};
use std::sync::atomic::{AtomicBool, Ordering};
use std::sync::Arc;

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum NativeTree {
    Sct,
    ComplianceUser,
    ComplianceAsset,
}
pub(crate) fn intersects(prefix: &[u8]) -> bool {
    [
        b"sct/tree/incremental/hash/".as_slice(),
        b"sct/tree/incremental/commitment/".as_slice(),
        b"compliance/tree/user/node/".as_slice(),
        b"compliance/tree/asset/node/".as_slice(),
    ]
    .iter()
    .any(|native| prefix.starts_with(native) || native.starts_with(prefix))
}
pub(crate) fn tree(key: &[u8]) -> Option<NativeTree> {
    if key.starts_with(b"sct/tree/incremental/hash/")
        || key.starts_with(b"sct/tree/incremental/commitment/")
    {
        Some(NativeTree::Sct)
    } else if key.starts_with(b"compliance/tree/user/node/") {
        Some(NativeTree::ComplianceUser)
    } else if key.starts_with(b"compliance/tree/asset/node/") {
        Some(NativeTree::ComplianceAsset)
    } else {
        None
    }
}
struct Region {
    observations: Option<Observations>,
    owner: NativeTree,
    completed: AtomicBool,
}
impl Drop for Region {
    fn drop(&mut self) {
        if !self.completed.load(Ordering::Acquire) {
            if let Some(observations) = &self.observations {
                observations.finish_native(false);
            }
        }
    }
}
/// Clones keep a read stream inside its owner's authentication region.
#[derive(Clone)]
pub struct NativeReadScope(Arc<Region>);
impl NativeReadScope {
    pub fn new(state: &(impl StateRead + ?Sized), owner: NativeTree) -> Result<Self> {
        let observations = state.read_view().map(|v| v.observations);
        if let Some(observations) = &observations {
            observations.begin_native()?;
        }
        Ok(Self(Arc::new(Region {
            observations,
            owner,
            completed: AtomicBool::new(false),
        })))
    }
    pub(crate) fn check(&self, observations: &Observations, key: &[u8]) -> Result<()> {
        ensure!(
            !self.0.completed.load(Ordering::Acquire),
            "native authentication region has closed"
        );
        ensure!(
            tree(key) == Some(self.0.owner),
            "native read belongs to a different commitment owner"
        );
        ensure!(
            self.0
                .observations
                .as_ref()
                .is_some_and(|ledger| ledger.same_view(observations)),
            "native read capability belongs to a different immutable view"
        );
        Ok(())
    }
    /// Finish only after the owning native commitment has been checked. Local
    /// derived-node cleanup may finish after authenticating its controlling
    /// position/forgotten metadata; cleanup records never enter canonical deltas.
    pub fn finish<T>(self, result: Result<T>) -> Result<T> {
        ensure!(
            !self.0.completed.swap(true, Ordering::AcqRel),
            "native authentication region completed twice"
        );
        if let Some(observations) = &self.0.observations {
            observations.finish_native(result.is_ok());
        }
        result
    }
}
