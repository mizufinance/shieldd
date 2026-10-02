use crate::{AuthenticatedValue, MAX_OBSERVATION_BYTES};
use anyhow::{ensure, Result};
use parking_lot::Mutex;
use std::{collections::BTreeMap, sync::Arc};

/// Participant identity is included even when two empty roots happen to coincide.
#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
pub struct ObservedValue {
    pub participant: u32,
    pub key: [u8; 32],
    pub value: Option<[u8; 32]>,
}

#[derive(Default)]
struct Ledger {
    reads: BTreeMap<(u32, [u8; 32]), Option<[u8; 32]>>,
    failed: bool,
    frozen: bool,
}

/// Shared by every branch of one execution view, including discarded branches.
/// Queries create their own view; they never consume a block's protocol budget.
#[derive(Clone, Default)]
pub struct Observations(Arc<Mutex<Ledger>>);

// Canonical accounting includes the participant, key, presence, and value hash.
const OBSERVATION_BYTES: usize = 4 + 32 + 1 + 32;

impl Observations {
    /// A local I/O failure must invalidate the complete execution view even if
    /// the caller catches its error and discards that call's writes.
    pub fn poison(&self) {
        self.0.lock().failed = true;
    }

    pub fn record(&self, read: ObservedValue) -> Result<()> {
        let mut ledger = self.0.lock();
        ensure!(
            !ledger.failed && !ledger.frozen,
            "read view is failed or frozen"
        );
        let key = (read.participant, read.key);
        if let Some(prior) = ledger.reads.get(&key) {
            if *prior != read.value {
                ledger.failed = true;
                anyhow::bail!("committed read changed within one immutable view");
            }
            return Ok(());
        }
        if ledger.reads.len() >= MAX_OBSERVATION_BYTES / OBSERVATION_BYTES {
            ledger.failed = true;
            anyhow::bail!("canonical read-observation budget exceeded");
        }
        ledger.reads.insert(key, read.value);
        Ok(())
    }

    pub fn len(&self) -> usize {
        self.0.lock().reads.len()
    }
    pub fn is_empty(&self) -> bool {
        self.len() == 0
    }

    /// Run after all calls have completed, before any SDK durable decision.
    pub fn freeze(
        &self,
        mut prove: impl FnMut(u32, [u8; 32]) -> Result<AuthenticatedValue>,
    ) -> Result<()> {
        let mut ledger = self.0.lock();
        ensure!(
            !ledger.failed && !ledger.frozen,
            "read view is failed or already frozen"
        );
        ledger.frozen = true;
        for ((participant, key), expected) in &ledger.reads {
            match prove(*participant, *key) {
                Ok(actual) if actual.key == *key && actual.value == *expected => {}
                result => {
                    ledger.failed = true;
                    return match result {
                        Err(error) => Err(error),
                        Ok(_) => Err(anyhow::anyhow!("committed read authentication mismatch")),
                    };
                }
            }
        }
        Ok(())
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn aborted_branches_keep_reads_and_conflicting_observations_poison_freeze() {
        let ledger = Observations::default();
        let branch = ledger.clone();
        branch
            .record(ObservedValue {
                participant: 1,
                key: [2; 32],
                value: None,
            })
            .unwrap();
        drop(branch);
        assert_eq!(ledger.len(), 1);
        assert!(ledger
            .record(ObservedValue {
                participant: 1,
                key: [2; 32],
                value: Some([3; 32])
            })
            .is_err());
        assert!(ledger
            .freeze(|_, _| panic!("poisoned observations cannot be authenticated"))
            .is_err());
    }
    #[test]
    fn failed_io_without_a_value_observation_invalidates_freeze() {
        let ledger = Observations::default();
        ledger.clone().poison();
        assert!(ledger.freeze(|_, _| panic!("failed I/O cannot be authenticated")).is_err());
    }
    #[test]
    fn successful_freeze_authenticates_absence_and_rejects_later_reads() {
        let ledger = Observations::default();
        let read = ObservedValue {
            participant: 0,
            key: [1; 32],
            value: None,
        };
        ledger.record(read).unwrap();
        ledger
            .freeze(|participant, key| {
                assert_eq!(participant, 0);
                Ok(AuthenticatedValue {
                    root: [0; 32],
                    key,
                    value: None,
                })
            })
            .unwrap();
        assert!(ledger.record(read).is_err());
    }
}
