use anyhow::{ensure, Context, Result};
use parking_lot::RwLock;
use std::collections::{BTreeMap, HashMap, VecDeque};
use std::sync::atomic::{AtomicBool, Ordering};
use std::sync::Arc;

use crate::{app::MAX_TRANSACTION_SIZE_BYTES, metrics};
use sha2::Digest as _;
use shieldd_sdk_circuits::proof::Family;
use shieldd_sdk_proof_params::pari::{Registry, Verification, Verified};
use shieldd_sdk_proto::DomainType;
use shieldd_sdk_sct::nullifier_generation::NullifierWindow;
use shieldd_sdk_sct::Nullifier;
use shieldd_sdk_transaction::Transaction;
use shieldd_sdk_txhash::{AuthHash, AuthorizingData};

const MAX_ENTRIES: usize = 4_096;
const MAX_RETAINED_RAW_TX_BYTES: usize = 64 * 1024 * 1024;
const MAX_CACHEABLE_RAW_TX_BYTES: usize = MAX_TRANSACTION_SIZE_BYTES;

#[derive(Clone)]
pub enum CacheEntry {
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
    pub family_id: Family,
    pub family_index: usize,
}

#[derive(Clone)]
pub struct TxArtifact {
    pub tx: Arc<Transaction>,
    pub(crate) proof_items: BTreeMap<Family, Vec<Verification>>,
    pub spend_nullifiers: Vec<Nullifier>,
    pub total_proof_count: usize,
}

impl TxArtifact {
    pub(crate) fn proof_locations(&self) -> Result<BTreeMap<ProofSlot, ProofLocation>> {
        let mut family_counts = BTreeMap::<Family, usize>::new();
        let mut locations = BTreeMap::new();
        for (action_index, action) in self.tx.actions().enumerate() {
            let Some(family_id) = proof_family_for_action(action) else {
                continue;
            };
            let family_index = *family_counts.entry(family_id).or_default();
            family_counts.insert(family_id, family_index + 1);
            locations.insert(
                ProofSlot::BodyAction(action_index),
                ProofLocation {
                    family_id,
                    family_index,
                },
            );
        }
        if self.tx.transaction_body.fee_funding.is_some() {
            let family_id = Family::Transfer;
            let family_index = *family_counts.entry(family_id).or_default();
            family_counts.insert(family_id, family_index + 1);
            locations.insert(
                ProofSlot::FeeFunding,
                ProofLocation {
                    family_id,
                    family_index,
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

    fn proof_item_at(&self, location: ProofLocation) -> Result<&Verification> {
        self.proof_items
            .get(&location.family_id)
            .and_then(|items| items.get(location.family_index))
            .ok_or_else(|| anyhow::anyhow!("extracted proof item is missing"))
    }
}

fn proof_family_for_action(action: &shieldd_sdk_transaction::Action) -> Option<Family> {
    use shieldd_sdk_transaction::Action;
    match action {
        Action::Transfer(_) => Some(Family::Transfer),
        Action::NoteReshape(action) => Some(action.body.family_id.proof_family()),
        Action::ShieldedHostWithdrawal(_) => Some(Family::Withdrawal),
        _ => None,
    }
}

#[cfg(test)]
pub(crate) mod attachment_observer {
    use shieldd_sdk_transaction::Transaction;
    use std::sync::{Arc, Mutex};
    use std::thread::{self, ThreadId};

    struct Observation {
        transaction: Arc<Transaction>,
        runtime_thread: ThreadId,
        calls: usize,
        on_runtime_thread: bool,
    }
    static OBSERVATION: Mutex<Option<Observation>> = Mutex::new(None);

    pub(crate) struct Guard;
    impl Guard {
        pub(crate) fn new(transaction: Arc<Transaction>) -> Self {
            let mut slot = OBSERVATION.lock().unwrap();
            assert!(slot.is_none(), "only one attachment observer may run");
            *slot = Some(Observation {
                transaction,
                runtime_thread: thread::current().id(),
                calls: 0,
                on_runtime_thread: false,
            });
            Self
        }
        pub(crate) fn result(&self) -> (usize, bool) {
            let slot = OBSERVATION.lock().unwrap();
            let observed = slot.as_ref().unwrap();
            (observed.calls, observed.on_runtime_thread)
        }
    }
    impl Drop for Guard {
        fn drop(&mut self) {
            *OBSERVATION.lock().unwrap() = None;
        }
    }
    pub(super) fn record(transaction: &Arc<Transaction>) {
        if let Some(observed) = OBSERVATION.lock().unwrap().as_mut() {
            if Arc::ptr_eq(&observed.transaction, transaction) {
                observed.calls += 1;
                observed.on_runtime_thread |= thread::current().id() == observed.runtime_thread;
            }
        }
    }
}

/// A transaction artifact carrying a verified capability for every proof slot.
#[derive(Clone)]
pub struct VerifiedTxArtifact {
    registry_id: [u8; 32],
    extracted: Arc<TxArtifact>,
    verified_proofs: BTreeMap<ProofSlot, Verified>,
    verified_historical_inputs: Vec<VerifiedHistoricalInput>,
}

#[derive(Clone, Copy, Debug, Eq, PartialEq)]
pub(crate) struct VerifiedHistoricalInput {
    nullifier: Nullifier,
    window: NullifierWindow,
    transaction_auth_hash: AuthHash,
}

impl VerifiedHistoricalInput {
    pub(crate) fn new(
        nullifier: Nullifier,
        window: NullifierWindow,
        transaction_auth_hash: AuthHash,
    ) -> Self {
        Self {
            nullifier,
            window,
            transaction_auth_hash,
        }
    }
}

fn validate_proof_capability_rows<T>(
    extracted: &TxArtifact,
    verified_rows: Vec<(ProofSlot, T)>,
    ensure_binds: impl Fn(&T, Family, &Verification) -> Result<()>,
) -> Result<BTreeMap<ProofSlot, T>> {
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
        ensure_binds(
            capability,
            location.family_id,
            extracted.proof_item_at(location)?,
        )
        .with_context(|| format!("{slot:?} capability binding failed"))?;
    }
    Ok(verified_proofs)
}

impl VerifiedTxArtifact {
    pub(crate) fn ensure_registry(&self, registry: &Registry) -> Result<()> {
        ensure!(
            self.registry_id == registry.id(),
            "verified transaction registry mismatch"
        );
        Ok(())
    }
    pub(crate) fn new(
        extracted: Arc<TxArtifact>,
        verified_rows: Vec<(ProofSlot, Verified)>,
        registry: &Registry,
    ) -> Result<Self> {
        let verified_proofs = validate_proof_capability_rows(
            extracted.as_ref(),
            verified_rows,
            |capability, family, item| {
                ensure!(
                    capability.registry_id() == registry.id(),
                    "proof capability registry mismatch"
                );
                capability.ensure_binds(family, item)
            },
        )?;
        #[cfg(test)]
        attachment_observer::record(&extracted.tx);
        let verified_historical_inputs =
            crate::action_handler::transaction::verify_historical_proofs(&extracted.tx, registry)?;
        let artifact = Self {
            registry_id: registry.id(),
            extracted,
            verified_proofs,
            verified_historical_inputs,
        };
        artifact.ensure_historical_coverage()?;
        Ok(artifact)
    }

    pub(crate) fn take_family_capabilities(
        extracted: Arc<TxArtifact>,
        capabilities: &mut BTreeMap<Family, VecDeque<Verified>>,
        registry: &Registry,
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
        Self::new(extracted, rows, registry)
    }

    pub(crate) fn proof_for_slot(&self, slot: ProofSlot) -> Result<&Verified> {
        self.verified_proofs
            .get(&slot)
            .ok_or_else(|| anyhow::anyhow!("verified proof capability missing for {slot:?}"))
    }

    pub(crate) fn tx(&self) -> &Arc<Transaction> {
        &self.extracted.tx
    }

    pub(crate) fn ensure_historical_coverage(&self) -> Result<()> {
        let expected = self.extracted.tx.transaction_body.historical_nullifiers();
        ensure!(
            expected.len() == self.verified_historical_inputs.len(),
            "verified historical input coverage mismatch"
        );
        let window = self.extracted.tx.transaction_body.nullifier_window;
        let auth_hash = self.extracted.tx.auth_hash();
        for (nullifier, capability) in expected.into_iter().zip(&self.verified_historical_inputs) {
            ensure!(
                capability.nullifier == nullifier
                    && Some(capability.window) == window
                    && capability.transaction_auth_hash == auth_hash,
                "verified historical input capability binding mismatch"
            );
        }
        Ok(())
    }

    pub(crate) fn extracted(&self) -> Arc<TxArtifact> {
        self.extracted.clone()
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
    registry_id: [u8; 32],
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

    pub fn get(&self, registry_id: [u8; 32], hash: &[u8; 32], raw_tx: &[u8]) -> Option<CacheEntry> {
        if raw_tx.len() > self.max_cacheable_raw_tx_bytes {
            metrics::counter!(metrics::STATELESS_CACHE_MISS_TOTAL).increment(1);
            return None;
        }

        let inner = self.inner.read();
        let Some(value) = inner.map.get(hash) else {
            metrics::counter!(metrics::STATELESS_CACHE_MISS_TOTAL).increment(1);
            return None;
        };
        if value.registry_id != registry_id || value.raw_tx.as_ref() != raw_tx {
            metrics::counter!(metrics::STATELESS_CACHE_MISS_TOTAL).increment(1);
            return None;
        }
        // Mark as recently referenced on hit so clock eviction gives it a second chance.
        value.referenced.store(true, Ordering::Relaxed);
        let entry = value.entry.clone();
        drop(inner);
        match entry {
            CacheEntry::FullyVerified(_) => {
                metrics::counter!(metrics::STATELESS_CACHE_HIT_VALID_TOTAL).increment(1)
            }
            CacheEntry::Invalid => {
                metrics::counter!(metrics::STATELESS_CACHE_HIT_INVALID_TOTAL).increment(1)
            }
        }
        Some(entry)
    }

    fn insert(&self, registry_id: [u8; 32], raw_tx: &[u8], entry: CacheEntry) -> Result<()> {
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
            value.registry_id = registry_id;
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
                registry_id,
                raw_tx: Arc::from(raw_tx),
                entry,
                referenced: AtomicBool::new(true),
            },
        );
        inner.clock.push_back(hash);
        Ok(())
    }

    fn ensure_artifact_matches_raw(raw_tx: &[u8], artifact_tx: &Transaction) -> Result<()> {
        ensure!(
            raw_tx == artifact_tx.encode_to_vec(),
            "stateless cache artifact transaction does not match raw transaction"
        );
        Ok(())
    }

    pub fn insert_fully_verified(
        &self,
        raw_tx: &[u8],
        artifact: Arc<VerifiedTxArtifact>,
    ) -> Result<()> {
        Self::ensure_artifact_matches_raw(raw_tx, artifact.tx().as_ref())?;
        self.insert(
            artifact.registry_id,
            raw_tx,
            CacheEntry::FullyVerified(artifact),
        )
    }

    pub fn insert_invalid(&self, registry_id: [u8; 32], raw_tx: &[u8]) -> Result<()> {
        self.insert(registry_id, raw_tx, CacheEntry::Invalid)
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
    use commonware_codec::Encode;
    use commonware_cryptography::{
        bls12381::primitives::group::{Scalar, G1},
        zk::pari::Claim,
    };
    use commonware_math::algebra::{Additive, CryptoGroup};
    use shieldd_sdk_circuits::proof::Envelope;
    use shieldd_sdk_shielded_pool::test_proof_helpers::proof_test_helpers::build_transfer_action_and_public_without_proof;
    use shieldd_sdk_transaction::Action;

    use super::*;

    fn digest(raw: &[u8]) -> [u8; 32] {
        sha2::Sha256::digest(raw).into()
    }

    fn proof_item(value: u64) -> Verification {
        // Codec fixture for pure slot mapping tests, never accepted as a verified proof.
        let mut bytes = vec![shieldd_sdk_crypto::SUITE, Family::Transfer as u8];
        bytes.extend([0; 32]);
        bytes.extend(Claim::new(vec![Scalar::from(value)], vec![G1::generator()]).encode());
        bytes.extend(G1::generator().encode());
        bytes.extend(G1::generator().encode());
        bytes.extend(Scalar::zero().encode());
        Verification {
            family: Family::Transfer,
            statement: Scalar::from(value),
            envelope: Envelope::from_bytes(&bytes).unwrap(),
        }
    }
    #[derive(Clone, Debug)]
    struct TestCapability {
        key: Family,
        item: Verification,
    }
    fn capability(key: Family, item: &Verification) -> TestCapability {
        TestCapability {
            key,
            item: item.clone(),
        }
    }

    fn two_slot_artifact() -> (Arc<TxArtifact>, Verification, Verification) {
        let (transfer, _, _) = build_transfer_action_and_public_without_proof(false);
        let mut tx = Transaction::default();
        tx.transaction_body.actions = vec![
            Action::Transfer(transfer.clone()),
            Action::Transfer(transfer),
        ];
        let first = proof_item(1);
        let second = proof_item(2);
        let artifact = Arc::new(TxArtifact {
            tx: Arc::new(tx),
            proof_items: BTreeMap::from([(Family::Transfer, vec![first.clone(), second.clone()])]),
            spend_nullifiers: Vec::new(),
            total_proof_count: 2,
        });
        (artifact, first, second)
    }

    #[test]
    fn verified_artifact_capability_rows_reject_every_coverage_and_binding_mismatch() {
        let (artifact, first, second) = two_slot_artifact();
        let first_capability = capability(Family::Transfer, &first);
        let second_capability = capability(Family::Transfer, &second);
        let validate = |rows| {
            validate_proof_capability_rows(
                artifact.as_ref(),
                rows,
                |capability: &TestCapability, key, item| {
                    ensure!(capability.key == key, "wrong deployed proof key");
                    ensure!(&capability.item == item, "wrong public inputs");
                    Ok(())
                },
            )
        };
        let valid = vec![
            (ProofSlot::BodyAction(0), first_capability.clone()),
            (ProofSlot::BodyAction(1), second_capability.clone()),
        ];
        validate(valid.clone()).expect("exact slot, key, and public-input coverage must pass");

        validate(valid[..1].to_vec()).expect_err("missing capability must fail");

        let mut extra = valid.clone();
        extra.push((ProofSlot::BodyAction(2), first_capability.clone()));
        validate(extra).expect_err("extra capability must fail");

        let mut duplicate = valid.clone();
        duplicate.push((ProofSlot::BodyAction(0), first_capability.clone()));
        validate(duplicate).expect_err("duplicate slot capability must fail");

        let wrong_slot = vec![
            (ProofSlot::BodyAction(0), first_capability.clone()),
            (ProofSlot::FeeFunding, second_capability.clone()),
        ];
        validate(wrong_slot).expect_err("capability in the wrong slot must fail");

        let swapped = vec![
            (ProofSlot::BodyAction(0), second_capability.clone()),
            (ProofSlot::BodyAction(1), first_capability.clone()),
        ];
        validate(swapped).expect_err("swapped public inputs must fail");

        let wrong_key = vec![
            (
                ProofSlot::BodyAction(0),
                capability(Family::ReshapeOneToEight, &first),
            ),
            (ProofSlot::BodyAction(1), second_capability),
        ];
        validate(wrong_key).expect_err("wrong deployed key must fail");
    }

    #[test]
    fn digest_match_never_reuses_entry_for_different_bytes() {
        let cache = StatelessCache::new();
        let hash = digest(b"first transaction");

        cache
            .insert_invalid([1; 32], b"first transaction")
            .expect("cache insertion succeeds");

        assert!(matches!(
            cache.get([1; 32], &hash, b"first transaction"),
            Some(CacheEntry::Invalid)
        ));
        assert!(cache
            .get([1; 32], &hash, b"different transaction")
            .is_none());
    }

    #[test]
    fn cached_results_are_scoped_to_exact_registry() {
        let cache = StatelessCache::new();
        let raw = b"same transaction";
        let hash = digest(raw);
        cache.insert_invalid([1; 32], raw).unwrap();
        assert!(cache.get([1; 32], &hash, raw).is_some());
        assert!(cache.get([2; 32], &hash, raw).is_none());
        cache.insert_invalid([2; 32], raw).unwrap();
        assert!(cache.get([1; 32], &hash, raw).is_none());
        assert!(cache.get([2; 32], &hash, raw).is_some());
        assert_eq!(cache.retained(), (1, raw.len()));
    }

    #[test]
    fn artifact_association_requires_exact_canonical_bytes() {
        let tx = Transaction::default();
        let canonical = tx.encode_to_vec();
        StatelessCache::ensure_artifact_matches_raw(&canonical, &tx).unwrap();
        let mut noncanonical = canonical;
        // Unknown protobuf field 100 decodes to the same domain transaction.
        noncanonical.extend([0xa0, 0x06, 0x01]);
        assert_eq!(
            Transaction::decode(noncanonical.as_slice())
                .unwrap()
                .encode_to_vec(),
            tx.encode_to_vec()
        );
        assert!(StatelessCache::ensure_artifact_matches_raw(&noncanonical, &tx).is_err());
    }

    #[test]
    fn valid_cache_entries_reject_raw_transaction_artifact_mismatch() {
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
            total_proof_count: 0,
        });

        let verified = Arc::new(VerifiedTxArtifact {
            registry_id: [1; 32],
            extracted: other_artifact,
            verified_proofs: BTreeMap::new(),
            verified_historical_inputs: Vec::new(),
        });
        cache
            .insert_fully_verified(&raw_bytes, verified)
            .expect_err("raw transaction A must not accept verified artifact B");
        assert_eq!(cache.retained(), (0, 0));
    }

    #[test]
    fn distinct_raw_transactions_derive_distinct_cache_entries() {
        let cache = StatelessCache::new();
        let first_digest = digest(b"first transaction");
        let replacement_digest = digest(b"replacement transaction");

        cache
            .insert_invalid([1; 32], b"first transaction")
            .expect("cache insertion succeeds");
        cache
            .insert_invalid([1; 32], b"replacement transaction")
            .expect("cache insertion succeeds");

        assert!(matches!(
            cache.get([1; 32], &first_digest, b"first transaction"),
            Some(CacheEntry::Invalid)
        ));
        assert!(matches!(
            cache.get([1; 32], &replacement_digest, b"replacement transaction"),
            Some(CacheEntry::Invalid)
        ));
    }

    #[test]
    fn oversized_transactions_are_never_retained() {
        let cache = StatelessCache::with_limits(4, 16, 4);
        let digest = digest(b"12345");

        cache
            .insert_invalid([1; 32], b"12345")
            .expect("oversized insertion is a no-op");

        assert_eq!(cache.retained(), (0, 0));
        assert!(cache.get([1; 32], &digest, b"12345").is_none());
    }

    #[test]
    fn aggregate_raw_byte_budget_evicts_entries() {
        let cache = StatelessCache::with_limits(8, 6, 4);

        cache
            .insert_invalid([1; 32], b"one")
            .expect("cache insertion succeeds");
        cache
            .insert_invalid([1; 32], b"two")
            .expect("cache insertion succeeds");
        cache
            .insert_invalid([1; 32], b"tri")
            .expect("cache insertion succeeds");

        assert_eq!(cache.retained(), (2, 6));
        assert!(cache.get([1; 32], &digest(b"one"), b"one").is_none());
        assert!(matches!(
            cache.get([1; 32], &digest(b"two"), b"two"),
            Some(CacheEntry::Invalid)
        ));
        assert!(matches!(
            cache.get([1; 32], &digest(b"tri"), b"tri"),
            Some(CacheEntry::Invalid)
        ));
    }

    #[test]
    fn entry_count_budget_evicts_independently_of_raw_byte_budget() {
        let cache = StatelessCache::with_limits(2, 1_024, 4);

        cache
            .insert_invalid([1; 32], b"one")
            .expect("cache insertion succeeds");
        cache
            .insert_invalid([1; 32], b"two")
            .expect("cache insertion succeeds");
        cache
            .insert_invalid([1; 32], b"tri")
            .expect("cache insertion succeeds");

        assert_eq!(cache.retained(), (2, 6));
        assert!(cache.get([1; 32], &digest(b"one"), b"one").is_none());
        assert!(matches!(
            cache.get([1; 32], &digest(b"two"), b"two"),
            Some(CacheEntry::Invalid)
        ));
        assert!(matches!(
            cache.get([1; 32], &digest(b"tri"), b"tri"),
            Some(CacheEntry::Invalid)
        ));
    }

    #[test]
    fn reinsertion_of_same_bytes_preserves_raw_byte_accounting() {
        let cache = StatelessCache::with_limits(4, 8, 8);
        let repeated = digest(b"aa");
        let other = digest(b"bbbb");

        cache
            .insert_invalid([1; 32], b"aa")
            .expect("cache insertion succeeds");
        cache
            .insert_invalid([1; 32], b"bbbb")
            .expect("cache insertion succeeds");
        cache
            .insert_invalid([1; 32], b"aa")
            .expect("cache reinsertion succeeds");

        assert_eq!(cache.retained(), (2, 6));
        assert!(matches!(
            cache.get([1; 32], &other, b"bbbb"),
            Some(CacheEntry::Invalid)
        ));
        assert!(matches!(
            cache.get([1; 32], &repeated, b"aa"),
            Some(CacheEntry::Invalid)
        ));
    }

    #[test]
    fn sustained_post_cap_churn_stays_within_both_limits() {
        let cache = StatelessCache::with_limits(3, 12, 4);

        for index in 0u8..100 {
            cache
                .insert_invalid([1; 32], &[index; 4])
                .expect("cache insertion succeeds");
            let (entries, retained_bytes) = cache.retained();
            assert!(entries <= 3);
            assert!(retained_bytes <= 12);
        }

        assert_eq!(cache.retained(), (3, 12));
        assert!(matches!(
            cache.get([1; 32], &digest(&[99; 4]), &[99; 4]),
            Some(CacheEntry::Invalid)
        ));
    }

    #[test]
    fn clock_invariant_drift_clears_cache_instead_of_exceeding_limits() {
        let cache = StatelessCache::with_limits(1, 4, 4);
        cache
            .insert_invalid([1; 32], b"one")
            .expect("cache insertion succeeds");
        cache.inner.write().clock.clear();

        cache
            .insert_invalid([1; 32], b"two")
            .expect("cache insertion succeeds");

        assert_eq!(cache.retained(), (0, 0));
        assert!(cache.get([1; 32], &digest(b"one"), b"one").is_none());
        assert!(cache.get([1; 32], &digest(b"two"), b"two").is_none());
    }

    #[test]
    fn protected_only_clock_drift_is_bounded_and_clears_cache() {
        let cache = StatelessCache::with_limits(1, 4, 4);
        let digest = digest(b"one");
        cache
            .insert_invalid([1; 32], b"one")
            .expect("cache insertion succeeds");
        cache.inner.write().retained_raw_tx_bytes = 5;

        cache
            .insert_invalid([1; 32], b"one")
            .expect("cache insertion succeeds");

        assert_eq!(cache.retained(), (0, 0));
        assert!(cache.get([1; 32], &digest, b"one").is_none());
    }
}
