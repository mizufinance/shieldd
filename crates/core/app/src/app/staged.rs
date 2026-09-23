//! Block change sets for hosts that execute candidate blocks before finality.
//!
//! A host (bankd v2 on reth + simplex) may execute several candidate blocks at
//! one height, and children of blocks that are not final yet. Each candidate's
//! changes are kept in memory as a [`BlockChanges`] and only written to storage
//! once the host finalizes that block.

use std::collections::BTreeMap;

use cnidarium::{Cache, StateWrite};

/// Verifiable and nonverifiable writes made by one block. Ephemeral objects and
/// events are dropped, same as a normal commit.
#[derive(Clone, Debug, Default, PartialEq, Eq)]
pub struct BlockChanges {
    verifiable: BTreeMap<String, Option<Vec<u8>>>,
    nonverifiable: BTreeMap<Vec<u8>, Option<Vec<u8>>>,
}

impl BlockChanges {
    pub(crate) fn from_cache(cache: &Cache) -> Self {
        Self {
            verifiable: cache.unwritten_changes().clone(),
            nonverifiable: cache.nonverifiable_changes().clone(),
        }
    }

    pub fn is_empty(&self) -> bool {
        self.verifiable.is_empty() && self.nonverifiable.is_empty()
    }

    /// Layers `newer` on top of `self`, newer writes win.
    pub fn merge(&mut self, newer: &Self) {
        self.verifiable
            .extend(newer.verifiable.iter().map(|(k, v)| (k.clone(), v.clone())));
        self.nonverifiable
            .extend(newer.nonverifiable.iter().map(|(k, v)| (k.clone(), v.clone())));
    }

    /// Entries of `self` that `base` doesn't already hold with the same value.
    /// `self` must be `base` plus more writes, as produced by executing on it.
    pub(crate) fn without(&self, base: &Self) -> Self {
        Self {
            verifiable: self
                .verifiable
                .iter()
                .filter(|(k, v)| base.verifiable.get(*k) != Some(*v))
                .map(|(k, v)| (k.clone(), v.clone()))
                .collect(),
            nonverifiable: self
                .nonverifiable
                .iter()
                .filter(|(k, v)| base.nonverifiable.get(*k) != Some(*v))
                .map(|(k, v)| (k.clone(), v.clone()))
                .collect(),
        }
    }

    pub(crate) fn apply_to<S: StateWrite>(&self, state: &mut S) {
        for (key, value) in &self.verifiable {
            match value {
                Some(value) => state.put_raw(key.clone(), value.clone()),
                None => state.delete(key.clone()),
            }
        }
        for (key, value) in &self.nonverifiable {
            match value {
                Some(value) => state.nonverifiable_put_raw(key.clone(), value.clone()),
                None => state.nonverifiable_delete(key.clone()),
            }
        }
    }
}
