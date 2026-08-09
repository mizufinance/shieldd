use anyhow::{ensure, Context, Result};
use parking_lot::RwLock;
use std::collections::{BTreeMap, HashMap, VecDeque};
use std::sync::atomic::{AtomicBool, Ordering};
use std::sync::Arc;

use crate::{app::MAX_TRANSACTION_SIZE_BYTES, metrics};
use sha2::Digest as _;
use shieldd_sdk_proof_aggregation::ProofFamilyId;
use shieldd_sdk_proof_params::{
    batch::{BatchItem, VerifiedBatchItem},
    DeployedProofKey,
};
use shieldd_sdk_proto::DomainType;
use shieldd_sdk_sct::Nullifier;
use shieldd_sdk_tct::{Root, StateCommitment};
use shieldd_sdk_transaction::Transaction;

const MAX_ENTRIES: usize = 4_096;
const MAX_RETAINED_RAW_TX_BYTES: usize = 64 * 1024 * 1024;
const MAX_CACHEABLE_RAW_TX_BYTES: usize = MAX_TRANSACTION_SIZE_BYTES;

#[derive(Clone)]
pub enum CacheEntry {
    Extracted(Arc<TxArtifact>),
    FullyVerified(Arc<VerifiedTxArtifact>),
    Invalid,
}

/// The exact location of a proof-bearing action within a transaction.
#[derive(Clone, Copy, Debug, Eq, Ord, PartialEq, PartialOrd)]
pub(crate) enum ProofSlot {
    BodyAction(usize),
    FeeFunding,
}

#[derive(Clone, Copy, Debug, Eq, PartialEq)]
pub(crate) struct ProofLocation {
    pub family_id: ProofFamilyId,
    pub family_index: usize,
    pub key: DeployedProofKey,
}

#[derive(Clone)]
pub struct TxArtifact {
    pub tx: Arc<Transaction>,
    pub proof_items: BTreeMap<ProofFamilyId, Vec<BatchItem>>,
    pub spend_nullifiers: Vec<Nullifier>,
    pub anchor_pairs: Vec<(StateCommitment, StateCommitment)>,
    pub total_proof_count: usize,
    pub historical_validation: Option<HistoricalValidationStamp>,
}

#[derive(Clone, Copy, Debug, Eq, PartialEq)]
pub struct HistoricalValidationStamp {
    pub snapshot_version: u64,
    pub anchor: Root,
}

impl TxArtifact {
    pub(crate) fn proof_locations(&self) -> Result<BTreeMap<ProofSlot, ProofLocation>> {
        let mut family_counts = BTreeMap::<ProofFamilyId, usize>::new();
        let mut locations = BTreeMap::new();
        for (action_index, action) in self.tx.actions().enumerate() {
            let Some((family_id, key)) = proof_family_and_key_for_action(action) else {
                continue;
            };
            let family_index = *family_counts.entry(family_id).or_default();
            family_counts.insert(family_id, family_index + 1);
            locations.insert(
                ProofSlot::BodyAction(action_index),
                ProofLocation {
                    family_id,
                    family_index,
                    key,
                },
            );
        }
        if self.tx.transaction_body.fee_funding.is_some() {
            let family_id = ProofFamilyId::Transfer;
            let family_index = *family_counts.entry(family_id).or_default();
            family_counts.insert(family_id, family_index + 1);
            locations.insert(
                ProofSlot::FeeFunding,
                ProofLocation {
                    family_id,
                    family_index,
                    key: DeployedProofKey::Transfer,
                },
            );
        }

        ensure!(
            locations.len() == self.total_proof_count,
            "proof-slot count mismatch: transaction has {}, artifact has {}",
            locations.len(),
            self.total_proof_count
        );
        for (&family_id, items) in &self.proof_items {
            let expected = family_counts.get(&family_id).copied().unwrap_or_default();
            ensure!(
                items.len() == expected,
                "proof family {family_id:?} count mismatch: extracted {}, transaction has {expected}",
                items.len()
            );
        }
        for (family_id, expected) in family_counts {
            let actual = self
                .proof_items
                .get(&family_id)
                .map(Vec::len)
                .unwrap_or_default();
            ensure!(
                actual == expected,
                "proof family {family_id:?} is missing extracted items"
            );
        }
        Ok(locations)
    }

    fn proof_item_at(&self, location: ProofLocation) -> Result<&BatchItem> {
        self.proof_items
            .get(&location.family_id)
            .and_then(|items| items.get(location.family_index))
            .ok_or_else(|| anyhow::anyhow!("extracted proof item is missing"))
    }

    pub fn with_historical_validation(
        &self,
        historical_validation: HistoricalValidationStamp,
    ) -> Arc<Self> {
        if self.historical_validation == Some(historical_validation) {
            return Arc::new(self.clone());
        }

        Arc::new(Self {
            tx: self.tx.clone(),
            proof_items: self.proof_items.clone(),
            spend_nullifiers: self.spend_nullifiers.clone(),
            anchor_pairs: self.anchor_pairs.clone(),
            total_proof_count: self.total_proof_count,
            historical_validation: Some(historical_validation),
        })
    }

    pub fn with_historical_validation_owned(
        mut self: Arc<Self>,
        historical_validation: HistoricalValidationStamp,
    ) -> Arc<Self> {
        if self.historical_validation != Some(historical_validation) {
            Arc::make_mut(&mut self).historical_validation = Some(historical_validation);
        }
        self
    }

    pub fn has_matching_historical_validation(&self, snapshot_version: u64) -> bool {
        self.historical_validation.as_ref().is_some_and(|stamp| {
            stamp.snapshot_version == snapshot_version && stamp.anchor == self.tx.anchor
        })
    }
}

fn proof_family_and_key_for_action(
    action: &shieldd_sdk_transaction::Action,
) -> Option<(ProofFamilyId, DeployedProofKey)> {
    use shieldd_sdk_transaction::Action;

    match action {
        Action::Transfer(_) => Some((ProofFamilyId::Transfer, DeployedProofKey::Transfer)),
        Action::NoteReshape(action) => Some((
            ProofFamilyId::NoteReshape(action.body.family_id),
            action.body.family_id.deployed_proof_key(),
        )),
        Action::ShieldedIcs20Withdrawal(action) => Some((
            ProofFamilyId::ShieldedIcs20Withdrawal(action.body.family_id),
            action.body.family_id.deployed_proof_key(),
        )),
        Action::ShieldedHostWithdrawal(action) => Some((
            ProofFamilyId::ShieldedIcs20Withdrawal(action.body.family_id),
            action.body.family_id.deployed_proof_key(),
        )),
        _ => None,
    }
}

/// A transaction artifact carrying a verified capability for every proof slot.
#[derive(Clone)]
pub struct VerifiedTxArtifact {
    extracted: Arc<TxArtifact>,
    verified_proofs: BTreeMap<ProofSlot, VerifiedBatchItem>,
}

impl VerifiedTxArtifact {
    pub(crate) fn new(
        extracted: Arc<TxArtifact>,
        verified_rows: Vec<(ProofSlot, VerifiedBatchItem)>,
    ) -> Result<Self> {
        let locations = extracted.proof_locations()?;
        let mut verified_proofs = BTreeMap::new();
        for (slot, capability) in verified_rows {
            ensure!(
                verified_proofs.insert(slot, capability).is_none(),
                "duplicate verified proof capability for {slot:?}"
            );
        }
        let expected = locations.keys().copied().collect::<Vec<_>>();
        let actual = verified_proofs.keys().copied().collect::<Vec<_>>();
        ensure!(
            actual == expected,
            "verified proof-slot coverage mismatch: expected {expected:?}, got {actual:?}"
        );
        for (&slot, &location) in &locations {
            let capability = verified_proofs
                .get(&slot)
                .ok_or_else(|| anyhow::anyhow!("verified proof capability missing for {slot:?}"))?;
            capability
                .ensure_binds(location.key, extracted.proof_item_at(location)?)
                .map_err(|error| anyhow::anyhow!("{slot:?} capability binding failed: {error}"))?;
        }
        Ok(Self {
            extracted,
            verified_proofs,
        })
    }

    pub(crate) fn take_family_capabilities(
        extracted: Arc<TxArtifact>,
        capabilities: &mut BTreeMap<ProofFamilyId, VecDeque<VerifiedBatchItem>>,
    ) -> Result<Self> {
        let rows = extracted
            .proof_locations()?
            .into_iter()
            .map(|(slot, location)| {
                let capability = capabilities
                    .get_mut(&location.family_id)
                    .and_then(VecDeque::pop_front)
                    .ok_or_else(|| {
                        anyhow::anyhow!(
                            "verified capability missing for proof family {:?}",
                            location.family_id
                        )
                    })?;
                Ok((slot, capability))
            })
            .collect::<Result<Vec<_>>>()?;
        Self::new(extracted, rows)
    }

    pub(crate) fn proof_for_slot(&self, slot: ProofSlot) -> Result<&VerifiedBatchItem> {
        self.verified_proofs
            .get(&slot)
            .ok_or_else(|| anyhow::anyhow!("verified proof capability missing for {slot:?}"))
    }

    pub(crate) fn tx(&self) -> &Arc<Transaction> {
        &self.extracted.tx
    }

    pub(crate) fn extracted(&self) -> Arc<TxArtifact> {
        self.extracted.clone()
    }

    pub(crate) fn has_matching_historical_validation(&self, snapshot_version: u64) -> bool {
        self.extracted
            .has_matching_historical_validation(snapshot_version)
    }

    pub(crate) fn with_historical_validation_owned(
        mut self: Arc<Self>,
        historical_validation: HistoricalValidationStamp,
    ) -> Arc<Self> {
        if !self
            .extracted
            .has_matching_historical_validation(historical_validation.snapshot_version)
        {
            Arc::make_mut(&mut self).extracted = self
                .extracted
                .clone()
                .with_historical_validation_owned(historical_validation);
        }
        self
    }
}

impl CacheEntry {
    /// Returns the artifact if this entry holds one, regardless of verification tier.
    pub fn artifact(&self) -> Option<Arc<TxArtifact>> {
        match self {
            CacheEntry::Extracted(a) => Some(a.clone()),
            CacheEntry::FullyVerified(a) => Some(a.extracted()),
            CacheEntry::Invalid => None,
        }
    }
}

/// Bounded cache for stateless verification results, shared across ABCI passes.
///
/// Indexed by SHA-256 and bound to the complete raw transaction bytes.
///
/// A digest match is only an index lookup: cached parsing or verification is
/// reused only after the candidate bytes compare equal. Eviction uses a
/// second-chance (clock) policy to avoid full-cache flushes under bursty load.
/// Entry count, individual raw bytes, and aggregate retained raw bytes are all
/// bounded so untrusted CheckTx traffic cannot make cache memory unbounded.
pub struct StatelessCache {
    inner: RwLock<CacheInner>,
    max_entries: usize,
    max_retained_raw_tx_bytes: usize,
    max_cacheable_raw_tx_bytes: usize,
}

struct CacheValue {
    raw_tx: Arc<[u8]>,
    entry: CacheEntry,
    referenced: AtomicBool,
}

struct CacheInner {
    map: HashMap<[u8; 32], CacheValue>,
    // Front removal and back insertion are O(1), so sustained unique misses
    // do not shift the full cache on every eviction.
    clock: VecDeque<[u8; 32]>,
    retained_raw_tx_bytes: usize,
}

impl StatelessCache {
    pub fn new() -> Self {
        Self::with_limits(
            MAX_ENTRIES,
            MAX_RETAINED_RAW_TX_BYTES,
            MAX_CACHEABLE_RAW_TX_BYTES,
        )
    }

    fn with_limits(
        max_entries: usize,
        max_retained_raw_tx_bytes: usize,
        max_cacheable_raw_tx_bytes: usize,
    ) -> Self {
        Self {
            inner: RwLock::new(CacheInner {
                map: HashMap::with_capacity(max_entries / 2),
                clock: VecDeque::with_capacity(max_entries),
                retained_raw_tx_bytes: 0,
            }),
            max_entries,
            max_retained_raw_tx_bytes,
            max_cacheable_raw_tx_bytes,
        }
    }

    pub fn get(&self, hash: &[u8; 32], raw_tx: &[u8]) -> Option<CacheEntry> {
        if raw_tx.len() > self.max_cacheable_raw_tx_bytes {
            metrics::counter!(metrics::STATELESS_CACHE_MISS_TOTAL).increment(1);
            return None;
        }

        let inner = self.inner.read();
        let Some(value) = inner.map.get(hash) else {
            metrics::counter!(metrics::STATELESS_CACHE_MISS_TOTAL).increment(1);
            return None;
        };
        if value.raw_tx.as_ref() != raw_tx {
            metrics::counter!(metrics::STATELESS_CACHE_MISS_TOTAL).increment(1);
            return None;
        }
        // Mark as recently referenced on hit so clock eviction gives it a second chance.
        value.referenced.store(true, Ordering::Relaxed);
        let entry = value.entry.clone();
        drop(inner);
        match entry {
            CacheEntry::Extracted(_) | CacheEntry::FullyVerified(_) => {
                metrics::counter!(metrics::STATELESS_CACHE_HIT_VALID_TOTAL).increment(1)
            }
            CacheEntry::Invalid => {
                metrics::counter!(metrics::STATELESS_CACHE_HIT_INVALID_TOTAL).increment(1)
            }
        }
        Some(entry)
    }

    fn insert(&self, raw_tx: &[u8], entry: CacheEntry) -> Result<()> {
        let hash: [u8; 32] = sha2::Sha256::digest(raw_tx).into();
        if self.max_entries == 0
            || raw_tx.len() > self.max_cacheable_raw_tx_bytes
            || raw_tx.len() > self.max_retained_raw_tx_bytes
        {
            return Ok(());
        }

        let mut inner = self.inner.write();

        if let Some(value) = inner.map.get_mut(&hash) {
            let old_len = value.raw_tx.len();
            value.raw_tx = Arc::from(raw_tx);
            value.entry = entry;
            value.referenced.store(true, Ordering::Relaxed);
            inner.retained_raw_tx_bytes = inner
                .retained_raw_tx_bytes
                .checked_sub(old_len)
                .expect("stateless cache retained-byte accounting must not underflow")
                .saturating_add(raw_tx.len());
            while inner.retained_raw_tx_bytes > self.max_retained_raw_tx_bytes {
                if !evict_one_clock(&mut inner, Some(&hash)) {
                    clear_inconsistent_clock(&mut inner);
                    return Ok(());
                }
            }
            return Ok(());
        }

        while inner.map.len() >= self.max_entries
            || inner.retained_raw_tx_bytes.saturating_add(raw_tx.len())
                > self.max_retained_raw_tx_bytes
        {
            if !evict_one_clock(&mut inner, None) {
                clear_inconsistent_clock(&mut inner);
                return Ok(());
            }
        }

        inner.retained_raw_tx_bytes += raw_tx.len();
        inner.map.insert(
            hash,
            CacheValue {
                raw_tx: Arc::from(raw_tx),
                entry,
                referenced: AtomicBool::new(true),
            },
        );
        inner.clock.push_back(hash);
        Ok(())
    }

    fn ensure_artifact_matches_raw(raw_tx: &[u8], artifact_tx: &Transaction) -> Result<()> {
        let decoded = Transaction::decode_canonical(raw_tx)
            .context("decoding stateless cache transaction association")?;
        ensure!(
            decoded.encode_to_vec() == artifact_tx.encode_to_vec(),
            "stateless cache artifact transaction does not match raw transaction"
        );
        Ok(())
    }

    pub fn insert_extracted(&self, raw_tx: &[u8], artifact: Arc<TxArtifact>) -> Result<()> {
        Self::ensure_artifact_matches_raw(raw_tx, artifact.tx.as_ref())?;
        self.insert(raw_tx, CacheEntry::Extracted(artifact))
    }

    pub fn insert_fully_verified(
        &self,
        raw_tx: &[u8],
        artifact: Arc<VerifiedTxArtifact>,
    ) -> Result<()> {
        Self::ensure_artifact_matches_raw(raw_tx, artifact.tx().as_ref())?;
        self.insert(raw_tx, CacheEntry::FullyVerified(artifact))
    }

    pub fn insert_invalid(&self, raw_tx: &[u8]) -> Result<()> {
        self.insert(raw_tx, CacheEntry::Invalid)
    }

    #[cfg(test)]
    fn retained(&self) -> (usize, usize) {
        let inner = self.inner.read();
        (inner.map.len(), inner.retained_raw_tx_bytes)
    }
}

fn clear_inconsistent_clock(inner: &mut CacheInner) {
    inner.map.clear();
    inner.clock.clear();
    inner.retained_raw_tx_bytes = 0;
}

fn evict_one_clock(inner: &mut CacheInner, protected: Option<&[u8; 32]>) -> bool {
    let scan_limit = inner.clock.len().saturating_mul(2).max(1);
    for _ in 0..scan_limit {
        let Some(key) = inner.clock.pop_front() else {
            return false;
        };
        if protected.is_some_and(|candidate| candidate == &key) {
            inner.clock.push_back(key);
            continue;
        }
        let evict = match inner.map.get_mut(&key) {
            Some(value) if value.referenced.swap(false, Ordering::Relaxed) => {
                inner.clock.push_back(key);
                false
            }
            Some(_) => true,
            None => false,
        };
        if evict {
            let value = inner
                .map
                .remove(&key)
                .expect("clock key selected for eviction must exist");
            inner.retained_raw_tx_bytes = inner
                .retained_raw_tx_bytes
                .checked_sub(value.raw_tx.len())
                .expect("stateless cache retained-byte accounting must not underflow");
            metrics::counter!(metrics::STATELESS_CACHE_EVICTION_TOTAL).increment(1);
            return true;
        }
    }
    false
}

#[cfg(test)]
mod tests {
    use super::*;

    fn digest(raw: &[u8]) -> [u8; 32] {
        sha2::Sha256::digest(raw).into()
    }

    #[test]
    fn digest_match_never_reuses_entry_for_different_bytes() {
        let cache = StatelessCache::new();
        let hash = digest(b"first transaction");

        cache
            .insert_invalid(b"first transaction")
            .expect("cache insertion succeeds");

        assert!(matches!(
            cache.get(&hash, b"first transaction"),
            Some(CacheEntry::Invalid)
        ));
        assert!(cache.get(&hash, b"different transaction").is_none());
    }

    #[test]
    fn valid_entries_reject_raw_transaction_artifact_mismatch() {
        let cache = StatelessCache::new();
        let raw_tx = Transaction::default();
        let raw_bytes = raw_tx.encode_to_vec();

        let mut other_tx = Transaction::default();
        other_tx
            .transaction_body
            .transaction_parameters
            .expiry_height = 1;
        let other_artifact = Arc::new(TxArtifact {
            tx: Arc::new(other_tx),
            proof_items: BTreeMap::new(),
            spend_nullifiers: Vec::new(),
            anchor_pairs: Vec::new(),
            total_proof_count: 0,
            historical_validation: None,
        });

        cache
            .insert_extracted(&raw_bytes, other_artifact)
            .expect_err("raw transaction A must not accept artifact B");
        assert_eq!(cache.retained(), (0, 0));
    }

    #[test]
    fn raw_byte_budget_bounds_sustained_churn() {
        let cache = StatelessCache::with_limits(3, 12, 4);

        for index in 0u8..100 {
            cache
                .insert_invalid(&[index; 4])
                .expect("cache insertion succeeds");
            let (entries, retained_bytes) = cache.retained();
            assert!(entries <= 3);
            assert!(retained_bytes <= 12);
        }

        assert_eq!(cache.retained(), (3, 12));
        assert!(matches!(
            cache.get(&digest(&[99; 4]), &[99; 4]),
            Some(CacheEntry::Invalid)
        ));
    }
}
