use crate::{AuthenticatedValue, MAX_OBSERVATION_BYTES};
use anyhow::{ensure, Result};
use parking_lot::Mutex;
use std::{
    collections::{BTreeMap, BTreeSet},
    sync::Arc,
};

/// Participant identity is included even when two empty roots happen to coincide.
#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
pub struct ObservedValue {
    pub participant: u32,
    pub key: [u8; 32],
    pub value: Option<[u8; 32]>,
}

#[derive(Default)]
struct Ledger {
    reads: BTreeMap<(u32, [u8; 32]), (Option<[u8; 32]>, bool)>,
    reserved: BTreeSet<(u32, [u8; 32])>,
    failed: bool,
    frozen: bool,
    native_pending: usize,
    future: usize,
    active_credit: Option<usize>,
}

/// Shared by every branch of one execution view, including discarded branches.
/// Queries create their own view; they never consume a block's protocol budget.
#[derive(Clone, Default)]
pub struct Observations(Arc<Mutex<Ledger>>);

// Canonical accounting includes the participant, key, presence, and value hash.
const OBSERVATION_BYTES: usize = 4 + 32 + 1 + 32;

/// Linear credit for mandatory deferred work on one immutable execution view.
/// Dropping an unused credit keeps its reservation charged until the view ends.
pub struct DeferredReadCredit {
    ledger: Arc<Mutex<Ledger>>,
    slots: usize,
}
pub struct DeferredReadGuard {
    ledger: Arc<Mutex<Ledger>>,
}
impl DeferredReadCredit {
    pub fn activate(self) -> Result<DeferredReadGuard> {
        let mut ledger = self.ledger.lock();
        ensure!(
            !ledger.failed
                && !ledger.frozen
                && ledger.active_credit.is_none()
                && ledger.future >= self.slots,
            "invalid deferred observation ownership"
        );
        ledger.active_credit = Some(self.slots);
        drop(ledger);
        Ok(DeferredReadGuard {
            ledger: self.ledger,
        })
    }
}
impl Drop for DeferredReadGuard {
    fn drop(&mut self) {
        let mut ledger = self.ledger.lock();
        let unused = ledger
            .active_credit
            .take()
            .expect("deferred read owner is active");
        ledger.future -= unused;
    }
}
impl Ledger {
    fn new_slot(&mut self) -> Result<()> {
        if let Some(remaining) = self.active_credit.as_mut().filter(|credit| **credit > 0) {
            *remaining -= 1;
            self.future -= 1;
            return Ok(());
        }
        if self.reads.len() + self.reserved.len() + self.future
            >= MAX_OBSERVATION_BYTES / OBSERVATION_BYTES
        {
            return Err(
                crate::ProtocolLimitExceeded("canonical read-observation budget exceeded").into(),
            );
        }
        Ok(())
    }
}

impl Observations {
    pub fn reserve_work(&self, slots: usize) -> Result<DeferredReadCredit> {
        let mut ledger = self.0.lock();
        ensure!(
            !ledger.failed && !ledger.frozen,
            "read view is failed or frozen"
        );
        let next = ledger
            .future
            .checked_add(slots)
            .ok_or_else(|| anyhow::anyhow!("deferred observation overflow"))?;
        if next
            > MAX_OBSERVATION_BYTES / OBSERVATION_BYTES
                - (ledger.reads.len() + ledger.reserved.len())
        {
            return Err(
                crate::ProtocolLimitExceeded("deferred read-observation budget exceeded").into(),
            );
        }
        ledger.future = next;
        Ok(DeferredReadCredit {
            ledger: self.0.clone(),
            slots,
        })
    }
    pub(crate) fn same_view(&self, other: &Self) -> bool {
        Arc::ptr_eq(&self.0, &other.0)
    }
    pub(crate) fn begin_native(&self) -> Result<()> {
        let mut ledger = self.0.lock();
        ensure!(
            !ledger.failed && !ledger.frozen,
            "native read view is failed or frozen"
        );
        ledger.native_pending = ledger
            .native_pending
            .checked_add(1)
            .ok_or_else(|| anyhow::anyhow!("native region count overflow"))?;
        Ok(())
    }
    pub(crate) fn finish_native(&self, verified: bool) {
        let mut ledger = self.0.lock();
        if ledger.native_pending == 0 || !verified {
            ledger.failed = true;
        }
        ledger.native_pending = ledger.native_pending.saturating_sub(1);
    }

    /// A local I/O failure must invalidate the complete execution view even if
    /// the caller catches its error and discards that call's writes.
    pub fn poison(&self) {
        self.0.lock().failed = true;
    }

    pub fn reserve_read(&self, participant: u32, key: [u8; 32]) -> Result<()> {
        let mut ledger = self.0.lock();
        ensure!(
            !ledger.failed && !ledger.frozen,
            "read view is failed or frozen"
        );
        let key = (participant, key);
        if ledger.reads.contains_key(&key) || ledger.reserved.contains(&key) {
            return Ok(());
        }
        ledger.new_slot()?;
        ledger.reserved.insert(key);
        Ok(())
    }
    pub fn record(&self, read: ObservedValue) -> Result<()> {
        let mut ledger = self.0.lock();
        ensure!(
            !ledger.failed && !ledger.frozen,
            "read view is failed or frozen"
        );
        let key = (read.participant, read.key);
        if let Some(prior) = ledger.reads.get(&key) {
            if prior.0 != read.value {
                ledger.failed = true;
                anyhow::bail!("committed read changed within one immutable view");
            }
            return Ok(());
        }
        if !ledger.reserved.remove(&key) {
            ledger.new_slot()?;
        }
        ledger.reads.insert(key, (read.value, false));
        Ok(())
    }

    pub fn len(&self) -> usize {
        self.0.lock().reads.len()
    }
    pub fn is_empty(&self) -> bool {
        self.len() == 0
    }

    /// Incremental authentication for disposable results before they leave the
    /// native boundary. The view remains writable and keeps aborted reads.
    pub fn authenticate(
        &self,
        prove: impl FnMut(u32, [u8; 32]) -> Result<AuthenticatedValue>,
    ) -> Result<()> {
        self.verify(prove, false)
    }
    /// Run after all calls have completed, before any SDK durable decision.
    pub fn freeze(
        &self,
        prove: impl FnMut(u32, [u8; 32]) -> Result<AuthenticatedValue>,
    ) -> Result<()> {
        self.verify(prove, true)
    }
    fn verify(
        &self,
        mut prove: impl FnMut(u32, [u8; 32]) -> Result<AuthenticatedValue>,
        freeze: bool,
    ) -> Result<()> {
        let mut ledger = self.0.lock();
        ensure!(
            !ledger.failed && !ledger.frozen,
            "read view is failed or already frozen"
        );
        ensure!(
            ledger.native_pending == 0,
            "native read region has not authenticated its commitment"
        );
        ensure!(
            ledger.reserved.is_empty(),
            "committed read did not complete recording"
        );
        ledger.frozen = freeze;
        let mut failure = None;
        for ((participant, key), (expected, verified)) in &mut ledger.reads {
            if *verified {
                continue;
            }
            match prove(*participant, *key) {
                Ok(actual) if actual.key == *key && actual.value == *expected => {
                    *verified = true;
                }
                result => {
                    failure = Some(match result {
                        Err(error) => error,
                        Ok(_) => anyhow::anyhow!("committed read authentication mismatch"),
                    });
                    break;
                }
            }
        }
        if let Some(error) = failure {
            ledger.failed = true;
            return Err(error);
        }
        Ok(())
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn deferred_allowance_survives_abort_and_cannot_be_spent_by_ordinary_calls() {
        let ledger = Observations::default();
        let credit = ledger
            .reserve_work(MAX_OBSERVATION_BYTES / OBSERVATION_BYTES - 2)
            .unwrap();
        for byte in 1..=2 {
            ledger
                .record(ObservedValue {
                    participant: 0,
                    key: [byte; 32],
                    value: None,
                })
                .unwrap();
        }
        assert!(ledger
            .reserve_read(0, [3; 32])
            .unwrap_err()
            .is::<crate::ProtocolLimitExceeded>());
        {
            let _owner = credit.activate().unwrap();
            ledger.reserve_read(0, [3; 32]).unwrap();
            ledger
                .record(ObservedValue {
                    participant: 0,
                    key: [3; 32],
                    value: None,
                })
                .unwrap();
        }
        // Charged observations remain after their write scope aborts; unused
        // allowance from completed mandatory work can safely be released.
        assert_eq!(ledger.len(), 3);
        assert_eq!(ledger.0.lock().future, 0);
        let abandoned = ledger.reserve_work(8).unwrap();
        drop(abandoned);
        assert_eq!(ledger.0.lock().future, 8);
    }

    #[test]
    fn abandoned_native_region_remains_failed_after_write_discard() {
        let ledger = Observations::default();
        ledger.begin_native().unwrap();
        assert!(ledger.authenticate(|_, _| unreachable!()).is_err());
        ledger.finish_native(false);
        assert!(ledger.freeze(|_, _| unreachable!()).is_err());
        let verified = Observations::default();
        verified.begin_native().unwrap();
        verified.finish_native(true);
        verified.freeze(|_, _| unreachable!()).unwrap();
    }
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
        assert!(ledger
            .freeze(|_, _| panic!("failed I/O cannot be authenticated"))
            .is_err());
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
