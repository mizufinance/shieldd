use anyhow::{ensure, Context, Result};
use cnidarium_component::ActionHandler as _;
use parking_lot::RwLock;
use std::collections::{BTreeMap, HashMap, HashSet, VecDeque};
use std::sync::atomic::{AtomicBool, Ordering};
use std::sync::Arc;

use crate::{
    action_handler::transaction::validate_transaction_envelope, action_handler::AppActionHandler,
    app::MAX_TRANSACTION_SIZE_BYTES, metrics, ShielddHost,
};
use sha2::Digest as _;
use shieldd_sdk_proof_params::{
    batch::{BatchItem, VerifiedBatchItem},
    DeployedProofKey,
};
use shieldd_sdk_proto::DomainType;
use shieldd_sdk_sct::Nullifier;
use shieldd_sdk_shielded_pool::component::{
    note_reshape_check_stateless_and_extract,
    shielded_ics20_withdrawal_check_stateless_and_extract, transfer_check_stateless_and_extract,
    Ics20Transfer,
};
use shieldd_sdk_tct::StateCommitment;
use shieldd_sdk_transaction::{Action, FeeFunding, Transaction};
use shieldd_sdk_txhash::TransactionContext;

const MAX_ENTRIES: usize = 4_096;
const MAX_RETAINED_RAW_TX_BYTES: usize = 64 * 1024 * 1024;
const MAX_CACHEABLE_RAW_TX_BYTES: usize = MAX_TRANSACTION_SIZE_BYTES;

pub(crate) fn proof_key_for_action(action: &Action) -> Option<DeployedProofKey> {
    match action {
        Action::Transfer(_) => Some(DeployedProofKey::Transfer),
        Action::NoteReshape(action) => Some(action.body.family_id.deployed_proof_key()),
        Action::ShieldedIcs20Withdrawal(action) => Some(action.body.family_id.deployed_proof_key()),
        Action::ValidatorDefinition(_)
        | Action::ValidatorVote(_)
        | Action::ProposalSubmit(_)
        | Action::IbcRelay(_)
        | Action::ComplianceRegisterAsset(_)
        | Action::ComplianceRegisterUser(_) => None,
    }
}

fn extract_fee_funding_proof_item(
    fee_funding: &FeeFunding,
    context: &TransactionContext,
) -> Result<BatchItem> {
    transfer_check_stateless_and_extract(&fee_funding.transfer, context)
        .context("fee funding transfer stateless extraction failed")
}

#[derive(Clone)]
pub(crate) enum CacheEntry {
    Extracted(Arc<ExtractedTxArtifact>),
    Groth16Verified(Arc<VerifiedTxArtifact>),
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
    pub key: DeployedProofKey,
    pub key_index: usize,
}

/// Statelessly extracted transaction facts that have not yet been proven.
#[derive(Clone)]
pub struct ExtractedTxArtifact {
    tx: Arc<Transaction>,
    proof_items: BTreeMap<DeployedProofKey, Vec<Arc<BatchItem>>>,
    spend_nullifiers: Vec<Nullifier>,
    anchor_pairs: Vec<(StateCommitment, StateCommitment)>,
    proof_slots: BTreeMap<ProofSlot, ProofLocation>,
}

impl ExtractedTxArtifact {
    fn from_canonical_parts(
        tx: Arc<Transaction>,
        proof_items: BTreeMap<DeployedProofKey, Vec<Arc<BatchItem>>>,
        spend_nullifiers: Vec<Nullifier>,
        mut anchor_pairs: Vec<(StateCommitment, StateCommitment)>,
    ) -> Result<Self> {
        let mut key_counts = BTreeMap::<DeployedProofKey, usize>::new();
        let mut proof_slots = BTreeMap::new();
        for (action_index, action) in tx.actions().enumerate() {
            if let Some(key) = proof_key_for_action(action) {
                let key_index = *key_counts.entry(key).or_default();
                key_counts.insert(key, key_index + 1);
                proof_slots.insert(
                    ProofSlot::BodyAction(action_index),
                    ProofLocation { key, key_index },
                );
            }
        }
        if tx.transaction_body.fee_funding.is_some() {
            let key = DeployedProofKey::Transfer;
            let key_index = *key_counts.entry(key).or_default();
            key_counts.insert(key, key_index + 1);
            proof_slots.insert(ProofSlot::FeeFunding, ProofLocation { key, key_index });
        }

        let total_proof_count = proof_items.values().map(Vec::len).sum::<usize>();
        ensure!(
            total_proof_count == proof_slots.len(),
            "proof-slot count mismatch: extracted {total_proof_count}, transaction has {}",
            proof_slots.len()
        );
        for (key, items) in &proof_items {
            let expected = key_counts.get(key).copied().unwrap_or_default();
            ensure!(
                items.len() == expected,
                "deployed proof key {key:?} count mismatch: extracted {}, transaction has {expected}",
                items.len()
            );
        }
        for (key, expected) in key_counts {
            let actual = proof_items.get(&key).map(Vec::len).unwrap_or_default();
            ensure!(
                actual == expected,
                "deployed proof key {key:?} is missing extracted items"
            );
        }
        anchor_pairs.sort_unstable();
        anchor_pairs.dedup();

        Ok(Self {
            tx,
            proof_items,
            spend_nullifiers,
            anchor_pairs,
            proof_slots,
        })
    }

    pub(crate) async fn extract_canonical(tx: Arc<Transaction>) -> Result<Arc<Self>> {
        validate_transaction_envelope(tx.as_ref())?;
        let context = tx.context();
        let mut proof_items = BTreeMap::<DeployedProofKey, Vec<Arc<BatchItem>>>::new();
        let mut anchor_pairs = HashSet::new();
        for action in tx.actions() {
            match action {
                Action::Transfer(transfer) => {
                    let item = transfer_check_stateless_and_extract(transfer, &context)
                        .context("transfer stateless extraction failed")?;
                    proof_items
                        .entry(DeployedProofKey::Transfer)
                        .or_default()
                        .push(Arc::new(item));
                    anchor_pairs
                        .insert((transfer.body.compliance_anchor, transfer.body.asset_anchor));
                }
                Action::NoteReshape(action) => {
                    let item = note_reshape_check_stateless_and_extract(action, &context)
                        .context("note reshape stateless extraction failed")?;
                    proof_items
                        .entry(action.body.family_id.deployed_proof_key())
                        .or_default()
                        .push(Arc::new(item));
                }
                Action::ShieldedIcs20Withdrawal(action) => {
                    let item =
                        shielded_ics20_withdrawal_check_stateless_and_extract(action, &context)
                            .context("shielded ICS-20 withdrawal stateless extraction failed")?;
                    proof_items
                        .entry(action.body.family_id.deployed_proof_key())
                        .or_default()
                        .push(Arc::new(item));
                    anchor_pairs.insert((action.body.compliance_anchor, action.body.asset_anchor));
                }
                Action::ValidatorDefinition(action) => action.check_stateless(()).await?,
                Action::ValidatorVote(action) => action.check_stateless(()).await?,
                Action::ProposalSubmit(action) => action.check_stateless(()).await?,
                Action::IbcRelay(action) => {
                    action
                        .clone()
                        .with_handler::<Ics20Transfer, ShielddHost>()
                        .check_stateless(())
                        .await?
                }
                Action::ComplianceRegisterAsset(action) => action.check_stateless(()).await?,
                Action::ComplianceRegisterUser(action) => action.check_stateless(()).await?,
            }
        }
        if let Some(fee_funding) = &tx.transaction_body.fee_funding {
            let transfer = &fee_funding.transfer;
            let item = extract_fee_funding_proof_item(fee_funding, &context)?;
            proof_items
                .entry(DeployedProofKey::Transfer)
                .or_default()
                .push(Arc::new(item));
            anchor_pairs.insert((transfer.body.compliance_anchor, transfer.body.asset_anchor));
        }

        let spend_nullifiers = tx.spent_nullifiers().collect();
        Ok(Arc::new(Self::from_canonical_parts(
            tx,
            proof_items,
            spend_nullifiers,
            anchor_pairs.into_iter().collect(),
        )?))
    }

    pub(crate) fn tx(&self) -> &Arc<Transaction> {
        &self.tx
    }

    pub(crate) fn proof_items(&self) -> &BTreeMap<DeployedProofKey, Vec<Arc<BatchItem>>> {
        &self.proof_items
    }

    pub(crate) fn spend_nullifiers(&self) -> &[Nullifier] {
        &self.spend_nullifiers
    }

    pub(crate) fn anchor_pairs(&self) -> &[(StateCommitment, StateCommitment)] {
        &self.anchor_pairs
    }

    pub(crate) fn proof_slots(&self) -> &BTreeMap<ProofSlot, ProofLocation> {
        &self.proof_slots
    }
}

/// A transaction artifact carrying an exact capability for every proof slot.
#[derive(Clone)]
pub struct VerifiedTxArtifact {
    extracted: Arc<ExtractedTxArtifact>,
    verified_proofs: BTreeMap<ProofSlot, VerifiedBatchItem>,
}

impl VerifiedTxArtifact {
    pub(crate) fn new(
        extracted: Arc<ExtractedTxArtifact>,
        verified_proof_rows: Vec<(ProofSlot, VerifiedBatchItem)>,
    ) -> Result<Self> {
        let verified_proofs = validate_proof_capability_rows(
            extracted.as_ref(),
            verified_proof_rows,
            |capability, key, item| {
                capability
                    .ensure_binds(key, item)
                    .map_err(anyhow::Error::from)
            },
        )?;
        Ok(Self {
            extracted,
            verified_proofs,
        })
    }

    pub(crate) fn proof_for_slot(&self, slot: ProofSlot) -> Result<&VerifiedBatchItem> {
        self.verified_proofs
            .get(&slot)
            .ok_or_else(|| anyhow::anyhow!("verified proof capability missing for {slot:?}"))
    }

    pub(crate) fn tx(&self) -> &Arc<Transaction> {
        &self.extracted.tx
    }

    /// Downgrade for ProcessProposal's mandatory independent re-verification.
    pub(crate) fn extracted_for_consensus_reverification(&self) -> Arc<ExtractedTxArtifact> {
        self.extracted.clone()
    }
}

fn validate_proof_capability_rows<T>(
    extracted: &ExtractedTxArtifact,
    verified_proof_rows: Vec<(ProofSlot, T)>,
    ensure_binds: impl Fn(&T, DeployedProofKey, &BatchItem) -> Result<()>,
) -> Result<BTreeMap<ProofSlot, T>> {
    let mut verified_proofs = BTreeMap::new();
    for (slot, capability) in verified_proof_rows {
        ensure!(
            verified_proofs.insert(slot, capability).is_none(),
            "duplicate verified proof capability for {slot:?}"
        );
    }
    let expected = extracted.proof_slots.keys().copied().collect::<Vec<_>>();
    let actual = verified_proofs.keys().copied().collect::<Vec<_>>();
    ensure!(
        actual == expected,
        "verified proof-slot coverage mismatch: expected {expected:?}, got {actual:?}"
    );
    for (&slot, location) in &extracted.proof_slots {
        let capability = verified_proofs
            .get(&slot)
            .ok_or_else(|| anyhow::anyhow!("verified proof capability missing for {slot:?}"))?;
        let item = extracted
            .proof_items
            .get(&location.key)
            .and_then(|items| items.get(location.key_index))
            .ok_or_else(|| anyhow::anyhow!("extracted proof item missing for {slot:?}"))?;
        ensure_binds(capability, location.key, item.as_ref())
            .map_err(|error| anyhow::anyhow!("{slot:?} capability binding failed: {error}"))?;
    }
    Ok(verified_proofs)
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
    // Keys in clock order. Front removal and back insertion are O(1), so
    // sustained unique misses do not shift the full cache on every eviction.
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

    pub(crate) fn get(&self, hash: &[u8; 32], raw_tx: &[u8]) -> Option<CacheEntry> {
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
            CacheEntry::Extracted(_) | CacheEntry::Groth16Verified(_) => {
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

    pub(crate) fn insert_extracted(
        &self,
        raw_tx: &[u8],
        artifact: Arc<ExtractedTxArtifact>,
    ) -> Result<()> {
        Self::ensure_artifact_matches_raw(raw_tx, artifact.tx.as_ref())?;
        self.insert(raw_tx, CacheEntry::Extracted(artifact))
    }

    #[cfg(feature = "benchmark-helpers")]
    pub fn seed_extracted_for_benchmark(
        &self,
        raw_tx: &[u8],
        artifact: Arc<ExtractedTxArtifact>,
    ) -> Result<()> {
        self.insert_extracted(raw_tx, artifact)
    }

    pub(crate) fn insert_groth16_verified(
        &self,
        raw_tx: &[u8],
        artifact: Arc<VerifiedTxArtifact>,
    ) -> Result<()> {
        Self::ensure_artifact_matches_raw(raw_tx, artifact.tx().as_ref())?;
        self.insert(raw_tx, CacheEntry::Groth16Verified(artifact))
    }

    pub(crate) fn insert_invalid(&self, raw_tx: &[u8]) -> Result<()> {
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
    use std::{collections::BTreeMap, sync::Arc};

    use ark_groth16::Proof;
    use decaf377::{Bls12_377, Fq, Fr};
    use decaf377_rdsa::{SigningKey, SpendAuth, VerificationKey};
    use sha2::Digest as _;
    use shieldd_sdk_shielded_pool::test_proof_helpers::proof_test_helpers::build_transfer_action_and_public_without_proof;
    use shieldd_sdk_transaction::FeeFunding;

    use super::{
        extract_fee_funding_proof_item, validate_proof_capability_rows, BatchItem, CacheEntry,
        DeployedProofKey, ExtractedTxArtifact, ProofLocation, ProofSlot, StatelessCache,
        Transaction, VerifiedTxArtifact,
    };

    fn digest(raw: &[u8]) -> [u8; 32] {
        sha2::Sha256::digest(raw).into()
    }

    #[derive(Clone)]
    struct TestCapability {
        key: DeployedProofKey,
        item: Arc<BatchItem>,
    }

    fn proof_item(value: u64) -> Arc<BatchItem> {
        Arc::new(BatchItem {
            proof: Proof::<Bls12_377>::default(),
            public_inputs: vec![Fq::from(value)],
        })
    }

    fn two_slot_artifact() -> (ExtractedTxArtifact, Arc<BatchItem>, Arc<BatchItem>) {
        let first = proof_item(1);
        let second = proof_item(2);
        let key = DeployedProofKey::Transfer;
        let artifact = ExtractedTxArtifact {
            tx: Arc::new(Transaction::default()),
            proof_items: BTreeMap::from([(key, vec![first.clone(), second.clone()])]),
            spend_nullifiers: Vec::new(),
            anchor_pairs: Vec::new(),
            proof_slots: BTreeMap::from([
                (
                    ProofSlot::BodyAction(0),
                    ProofLocation { key, key_index: 0 },
                ),
                (
                    ProofSlot::BodyAction(1),
                    ProofLocation { key, key_index: 1 },
                ),
            ]),
        };
        (artifact, first, second)
    }

    fn validate_test_capabilities(
        artifact: &ExtractedTxArtifact,
        rows: Vec<(ProofSlot, TestCapability)>,
    ) -> anyhow::Result<()> {
        validate_proof_capability_rows(artifact, rows, |capability, key, item| {
            anyhow::ensure!(capability.key == key, "wrong deployed proof key");
            anyhow::ensure!(capability.item.as_ref() == item, "wrong exact proof item");
            Ok(())
        })
        .map(|_| ())
    }

    #[test]
    fn verified_artifact_capability_rows_reject_every_coverage_and_binding_mismatch() {
        let (artifact, first, second) = two_slot_artifact();
        let first_capability = TestCapability {
            key: DeployedProofKey::Transfer,
            item: first,
        };
        let second_capability = TestCapability {
            key: DeployedProofKey::Transfer,
            item: second,
        };
        let valid = vec![
            (ProofSlot::BodyAction(0), first_capability.clone()),
            (ProofSlot::BodyAction(1), second_capability.clone()),
        ];
        validate_test_capabilities(&artifact, valid.clone())
            .expect("exact slot, key, and item coverage must pass");

        validate_test_capabilities(&artifact, valid[..1].to_vec())
            .expect_err("missing capability must fail");

        let mut extra = valid.clone();
        extra.push((ProofSlot::BodyAction(2), first_capability.clone()));
        validate_test_capabilities(&artifact, extra).expect_err("extra capability must fail");

        let mut duplicate = valid.clone();
        duplicate.push((ProofSlot::BodyAction(0), first_capability.clone()));
        validate_test_capabilities(&artifact, duplicate)
            .expect_err("duplicate slot capability must fail");

        let wrong_slot = vec![
            (ProofSlot::BodyAction(0), first_capability.clone()),
            (ProofSlot::FeeFunding, second_capability.clone()),
        ];
        validate_test_capabilities(&artifact, wrong_slot)
            .expect_err("capability in the wrong slot must fail");

        let swapped = vec![
            (ProofSlot::BodyAction(0), second_capability.clone()),
            (ProofSlot::BodyAction(1), first_capability.clone()),
        ];
        validate_test_capabilities(&artifact, swapped)
            .expect_err("swapped exact proof items must fail");

        let wrong_key = vec![
            (
                ProofSlot::BodyAction(0),
                TestCapability {
                    key: DeployedProofKey::NoteReshapeOneByEight,
                    item: first_capability.item,
                },
            ),
            (ProofSlot::BodyAction(1), second_capability),
        ];
        validate_test_capabilities(&artifact, wrong_key)
            .expect_err("wrong deployed proof key must fail");
    }

    #[test]
    fn fee_funding_extraction_rejects_identity_randomized_key() {
        let (mut transfer, _, context) = build_transfer_action_and_public_without_proof(true);
        let identity_sk = SigningKey::<SpendAuth>::from(Fr::from(0u64));
        transfer.body.inputs[0].rk = VerificationKey::from(identity_sk.clone());
        let different_message = b"different fee funding authorization hash";
        assert_ne!(&different_message[..], context.effect_hash.as_ref());
        transfer.auth_sigs[0] = identity_sk.sign_deterministic(different_message);
        transfer.body.inputs[0]
            .rk
            .verify(context.effect_hash.as_ref(), &transfer.auth_sigs[0])
            .expect("the pinned RDSA primitive admits identity keys across messages");
        let fee_funding = FeeFunding { transfer };

        let error = extract_fee_funding_proof_item(&fee_funding, &context)
            .err()
            .expect("fee funding must use the shared identity-RK rejection");
        assert!(
            format!("{error:#}").contains("randomized spend key 0 must not be identity"),
            "unexpected rejection reason: {error:#}"
        );
    }

    #[test]
    fn valid_cache_entries_reject_raw_transaction_artifact_mismatch() {
        let cache = StatelessCache::new();
        let raw_tx = Transaction::default();
        let raw_bytes: Vec<u8> = (&raw_tx).into();

        let mut other_tx = Transaction::default();
        other_tx
            .transaction_body
            .transaction_parameters
            .expiry_height = 1;
        let other_artifact = Arc::new(ExtractedTxArtifact {
            tx: Arc::new(other_tx),
            proof_items: BTreeMap::new(),
            spend_nullifiers: Vec::new(),
            anchor_pairs: Vec::new(),
            proof_slots: BTreeMap::new(),
        });

        cache
            .insert_extracted(&raw_bytes, other_artifact.clone())
            .expect_err("raw transaction A must not accept extracted artifact B");

        let verified = Arc::new(
            VerifiedTxArtifact::new(other_artifact, Vec::new())
                .expect("zero-proof test artifact has complete empty coverage"),
        );
        cache
            .insert_groth16_verified(&raw_bytes, verified)
            .expect_err("raw transaction A must not accept verified artifact B");
        assert_eq!(cache.retained(), (0, 0));
    }

    #[test]
    fn digest_match_never_reuses_entry_for_different_bytes() {
        let cache = StatelessCache::new();
        let digest = digest(b"first transaction");

        cache
            .insert_invalid(b"first transaction")
            .expect("cache insertion succeeds");

        assert!(matches!(
            cache.get(&digest, b"first transaction"),
            Some(CacheEntry::Invalid)
        ));
        assert!(cache.get(&digest, b"different transaction").is_none());
    }

    #[test]
    fn distinct_raw_transactions_derive_distinct_cache_entries() {
        let cache = StatelessCache::new();
        let first_digest = digest(b"first transaction");
        let replacement_digest = digest(b"replacement transaction");

        cache
            .insert_invalid(b"first transaction")
            .expect("cache insertion succeeds");
        cache
            .insert_invalid(b"replacement transaction")
            .expect("cache insertion succeeds");

        assert!(matches!(
            cache.get(&first_digest, b"first transaction"),
            Some(CacheEntry::Invalid)
        ));
        assert!(matches!(
            cache.get(&replacement_digest, b"replacement transaction"),
            Some(CacheEntry::Invalid)
        ));
    }

    #[test]
    fn oversized_transactions_are_never_retained() {
        let cache = StatelessCache::with_limits(4, 16, 4);
        let digest = digest(b"12345");

        cache
            .insert_invalid(b"12345")
            .expect("oversized insertion is a no-op");

        assert_eq!(cache.retained(), (0, 0));
        assert!(cache.get(&digest, b"12345").is_none());
    }

    #[test]
    fn aggregate_raw_byte_budget_evicts_entries() {
        let cache = StatelessCache::with_limits(8, 6, 4);

        cache
            .insert_invalid(b"one")
            .expect("cache insertion succeeds");
        cache
            .insert_invalid(b"two")
            .expect("cache insertion succeeds");
        cache
            .insert_invalid(b"tri")
            .expect("cache insertion succeeds");

        assert_eq!(cache.retained(), (2, 6));
        assert!(cache.get(&digest(b"one"), b"one").is_none());
        assert!(matches!(
            cache.get(&digest(b"two"), b"two"),
            Some(CacheEntry::Invalid)
        ));
        assert!(matches!(
            cache.get(&digest(b"tri"), b"tri"),
            Some(CacheEntry::Invalid)
        ));
    }

    #[test]
    fn entry_count_budget_evicts_independently_of_raw_byte_budget() {
        let cache = StatelessCache::with_limits(2, 1_024, 4);

        cache
            .insert_invalid(b"one")
            .expect("cache insertion succeeds");
        cache
            .insert_invalid(b"two")
            .expect("cache insertion succeeds");
        cache
            .insert_invalid(b"tri")
            .expect("cache insertion succeeds");

        assert_eq!(cache.retained(), (2, 6));
        assert!(cache.get(&digest(b"one"), b"one").is_none());
        assert!(matches!(
            cache.get(&digest(b"two"), b"two"),
            Some(CacheEntry::Invalid)
        ));
        assert!(matches!(
            cache.get(&digest(b"tri"), b"tri"),
            Some(CacheEntry::Invalid)
        ));
    }

    #[test]
    fn reinsertion_of_same_bytes_preserves_raw_byte_accounting() {
        let cache = StatelessCache::with_limits(4, 8, 8);
        let repeated = digest(b"aa");
        let other = digest(b"bbbb");

        cache
            .insert_invalid(b"aa")
            .expect("cache insertion succeeds");
        cache
            .insert_invalid(b"bbbb")
            .expect("cache insertion succeeds");
        cache
            .insert_invalid(b"aa")
            .expect("cache reinsertion succeeds");

        assert_eq!(cache.retained(), (2, 6));
        assert!(matches!(
            cache.get(&other, b"bbbb"),
            Some(CacheEntry::Invalid)
        ));
        assert!(matches!(
            cache.get(&repeated, b"aa"),
            Some(CacheEntry::Invalid)
        ));
    }

    #[test]
    fn sustained_post_cap_churn_stays_within_both_limits() {
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

    #[test]
    fn clock_invariant_drift_clears_cache_instead_of_exceeding_limits() {
        let cache = StatelessCache::with_limits(1, 4, 4);
        cache
            .insert_invalid(b"one")
            .expect("cache insertion succeeds");
        cache.inner.write().clock.clear();

        cache
            .insert_invalid(b"two")
            .expect("cache insertion succeeds");

        assert_eq!(cache.retained(), (0, 0));
        assert!(cache.get(&digest(b"one"), b"one").is_none());
        assert!(cache.get(&digest(b"two"), b"two").is_none());
    }

    #[test]
    fn protected_only_clock_drift_is_bounded_and_clears_cache() {
        let cache = StatelessCache::with_limits(1, 4, 4);
        let digest = digest(b"one");
        cache
            .insert_invalid(b"one")
            .expect("cache insertion succeeds");
        cache.inner.write().retained_raw_tx_bytes = 5;

        cache
            .insert_invalid(b"one")
            .expect("cache insertion succeeds");

        assert_eq!(cache.retained(), (0, 0));
        assert!(cache.get(&digest, b"one").is_none());
    }
}
