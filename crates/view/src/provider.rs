//! Host anchors authenticate state; the explicitly selected provider is trusted for completeness.
use anyhow::{ensure, Context, Result};
use async_trait::async_trait;
use shieldd_sdk_compact_block::{
    pages::{AssemblyBudget, AssemblyLimits, PageAssembler, SparseCompactBlock},
    CompactBlock,
};
use shieldd_sdk_proto::{
    core::{
        app::v1 as app,
        component::{compact_block::v1 as cb, sct::v1 as sct},
    },
    DomainType, Message,
};
use shieldd_sdk_sct::Nullifier;
use shieldd_sdk_shielded_pool::discovery::{Parameters, RoutingSelector};
use shieldd_sdk_transaction::Transaction;
use shieldd_sdk_txhash::TransactionId;
use std::collections::{BTreeMap, BTreeSet};

#[derive(Default, Clone, Debug, PartialEq, Eq)]
pub enum SyncMode {
    #[default]
    FullScan,
    /// Explicit permission to disclose selectors and owned nullifiers to this provider.
    RemoteFiltered { provider_id: String },
}

/// Provider-specific operating limits. Configure the item cap to the selected node's budget.
#[derive(Clone, Copy, Debug)]
pub struct SyncLimits {
    pub items_per_request: usize,
    pub block: AssemblyLimits,
}
impl Default for SyncLimits {
    fn default() -> Self {
        Self {
            items_per_request: 256,
            block: AssemblyLimits::default(),
        }
    }
}
impl SyncLimits {
    pub fn validate(&self) -> Result<()> {
        ensure!(
            (1..=256).contains(&self.items_per_request),
            "invalid provider item limit"
        );
        AssemblyBudget::new(self.block)?;
        Ok(())
    }
}

/// Independently supplied host facts. No field may be copied from the filtering response.
pub struct HostBlock {
    pub chain_id: String,
    pub height: u64,
    pub expected_sct_root: shieldd_sdk_tct::Root,
    pub timestamp: u64,
    pub assets: Vec<shieldd_sdk_asset::asset::Metadata>,
    pub updated_app_parameters: Option<shieldd_sdk_app::params::AppParameters>,
    pub discovery: Parameters,
    pub previous_discovery: Parameters,
    pub discovery_grace_blocks: u64,
}

#[async_trait]
pub trait SyncProvider: Send + Sync {
    fn id(&self) -> &str;
    fn limits(&self) -> SyncLimits;
    async fn compact_page(&self, request: cb::CompactBlockPageRequest) -> Result<cb::CompactPage>;
    async fn filtered_page(&self, request: cb::FilteredBlockPageRequest)
        -> Result<cb::CompactPage>;
    async fn spend_page(
        &self,
        request: sct::SpendStatusPageRequest,
    ) -> Result<sct::SpendStatusPageResponse>;
    async fn transaction_page(
        &self,
        request: app::TransactionsByHeightRequest,
    ) -> Result<app::TransactionsByHeightResponse>;
    async fn transaction(&self, height: u64, id: TransactionId) -> Result<Transaction>;
}

/// Existing host trust boundary, independent of the filtering provider.
#[async_trait]
pub trait GenerationAnchors: Send + Sync {
    async fn generation_root(&self, anchor_height: u64, generation: u64) -> Result<[u8; 32]>;
}

pub(crate) async fn full(
    provider: &dyn SyncProvider,
    host: &HostBlock,
    budget: &mut AssemblyBudget,
) -> Result<CompactBlock> {
    let mut assembler = PageAssembler::new(host.height, host.chain_id.clone(), false);
    let mut cursor = vec![];
    loop {
        let page = provider
            .compact_page(cb::CompactBlockPageRequest {
                height: host.height,
                cursor: cursor.clone(),
            })
            .await?;
        check_page(&page, &cursor)?;
        let next = page.next_cursor.clone();
        assembler.push(page, budget)?;
        if next.is_empty() {
            return assembler.full();
        }
        cursor = next;
    }
}

fn check_page(page: &cb::CompactPage, cursor: &[u8]) -> Result<()> {
    ensure!(
        page.encoded_len() <= 4 * 1024 * 1024
            && page.next_cursor.len() <= 1024
            && (page.next_cursor.is_empty() || page.next_cursor != cursor),
        "oversized or nonadvancing compact page"
    );
    Ok(())
}

pub(crate) async fn sparse(
    provider: &dyn SyncProvider,
    host: &HostBlock,
    addresses: Vec<crate::IssuedAddress>,
    budget: &mut AssemblyBudget,
) -> Result<SparseCompactBlock> {
    let limits = provider.limits();
    limits.validate()?;
    let mut selectors = BTreeSet::new();
    for issued in addresses {
        // Include retired and restored addresses: retirement is not proof that no sender uses them.
        if issued.birth_height > host.height {
            continue;
        }
        for parameters in std::iter::once(&host.discovery).chain(
            (host.height
                < host
                    .discovery
                    .as_of_height
                    .saturating_add(host.discovery_grace_blocks))
            .then_some(&host.previous_discovery),
        ) {
            // A general address can receive both asset classes.
            for precision in [
                parameters.regulated_precision,
                parameters.unregulated_precision,
            ] {
                selectors.insert(RoutingSelector::for_address(&issued.address, precision));
            }
        }
    }
    let selectors = selectors.into_iter().collect::<Vec<_>>();
    let mut merged: Option<SparseCompactBlock> = None;
    // An empty manifest still queries unrouted outputs; FullScan is the recovery mode.
    for chunk in selectors
        .chunks(limits.items_per_request)
        .chain(selectors.is_empty().then_some(&[][..]))
    {
        let mut assembler = PageAssembler::new(host.height, host.chain_id.clone(), true);
        let mut cursor = vec![];
        loop {
            let page = provider
                .filtered_page(cb::FilteredBlockPageRequest {
                    height: host.height,
                    selectors: chunk.iter().copied().map(Into::into).collect(),
                    cursor: cursor.clone(),
                })
                .await?;
            check_page(&page, &cursor)?;
            let next = page.next_cursor.clone();
            assembler.push(page, budget)?;
            if next.is_empty() {
                break;
            }
            cursor = next;
        }
        let mut next = assembler.sparse()?;
        if let Some(prior) = &mut merged {
            let mut left = prior.block.clone();
            left.state_payloads.clear();
            let mut right = next.block.clone();
            right.state_payloads.clear();
            ensure!(
                left.encode_to_vec() == right.encode_to_vec()
                    && prior.payload_count == next.payload_count,
                "selector pages disagree on block metadata"
            );
            let mut payloads = BTreeMap::new();
            for (payload, proof) in std::mem::take(&mut prior.block.state_payloads)
                .into_iter()
                .zip(std::mem::take(&mut prior.proofs))
                .chain(
                    next.block
                        .state_payloads
                        .drain(..)
                        .zip(next.proofs.drain(..)),
                )
            {
                if let Some((old, old_proof)) =
                    payloads.insert(proof.position, (payload.clone(), proof.clone()))
                {
                    let old: cb::StatePayload = old.into();
                    let payload: cb::StatePayload = payload.into();
                    ensure!(
                        old == payload && old_proof == proof,
                        "conflicting positional payload across selectors"
                    );
                }
            }
            for (_, (payload, proof)) in payloads {
                prior.block.state_payloads.push(payload);
                prior.proofs.push(proof);
            }
            for (position, owner) in next.owners {
                if let Some(old) = prior.owners.insert(position, owner) {
                    ensure!(old == owner, "conflicting positional transaction owner");
                }
            }
        } else {
            merged = Some(next);
        }
    }
    merged.context("missing filtered query")
}

pub(crate) async fn transactions(
    provider: &dyn SyncProvider,
    height: u64,
    budget: &mut AssemblyBudget,
) -> Result<Vec<Transaction>> {
    let mut cursor = vec![];
    let mut result = vec![];
    loop {
        let page = provider
            .transaction_page(app::TransactionsByHeightRequest {
                block_height: height,
                cursor: cursor.clone(),
            })
            .await?;
        ensure!(
            page.block_height == height
                && page.encoded_len() <= 4 * 1024 * 1024
                && page.next_cursor.len() <= 1024
                && (page.next_cursor.is_empty() || page.next_cursor != cursor),
            "invalid transaction page"
        );
        for transaction in page.transactions {
            budget.reserve_record(transaction.encoded_len())?;
            result.push(transaction.try_into()?);
        }
        if page.next_cursor.is_empty() {
            return Ok(result);
        }
        cursor = page.next_cursor;
    }
}

pub(crate) async fn spends(
    provider: &dyn SyncProvider,
    anchors: &dyn GenerationAnchors,
    chain: &str,
    height: u64,
    nullifiers: BTreeSet<Nullifier>,
) -> Result<Vec<Nullifier>> {
    let limits = provider.limits();
    limits.validate()?;
    let nullifiers = nullifiers.into_iter().collect::<Vec<_>>();
    let mut result = BTreeSet::new();
    for chunk in nullifiers.chunks(limits.items_per_request) {
        let mut cursor = vec![];
        let mut anchor = None;
        loop {
            let page = provider
                .spend_page(sct::SpendStatusPageRequest {
                    nullifiers: chunk.iter().copied().map(Into::into).collect(),
                    start_height: height,
                    end_height: height,
                    cursor: cursor.clone(),
                })
                .await?;
            ensure!(
                page.chain_id == chain
                    && page.anchor_height >= height
                    && page.encoded_len() <= 4 * 1024 * 1024
                    && page.next_cursor.len() <= 1024
                    && (page.next_cursor.is_empty() || page.next_cursor != cursor),
                "invalid spend-status page"
            );
            ensure!(
                anchor.is_none_or(|h| h == page.anchor_height),
                "spend anchor changed between pages"
            );
            anchor = Some(page.anchor_height);
            for spend in page.spends {
                let nullifier: Nullifier = spend
                    .nullifier
                    .context("missing spent nullifier")?
                    .try_into()?;
                ensure!(
                    spend.height == height
                        && chunk.contains(&nullifier)
                        && result.insert(nullifier),
                    "unexpected, duplicate or mistimed spend"
                );
                let root = anchors
                    .generation_root(page.anchor_height, spend.generation)
                    .await?;
                ensure!(
                    root.as_slice() == spend.generation_root,
                    "spend root differs from host anchor"
                );
                let witness: shieldd_sdk_sct::indexed_nullifier_tree::IndexedNullifierWitness =
                    spend
                        .witness
                        .context("missing membership proof")?
                        .try_into()?;
                witness.verify_membership(nullifier, root)?;
            }
            if page.next_cursor.is_empty() {
                break;
            }
            cursor = page.next_cursor;
        }
    }
    Ok(result.into_iter().collect())
}

#[cfg(test)]
mod tests {
    use super::*;
    use std::sync::Mutex;

    struct LimitedProvider(Mutex<Vec<usize>>);
    #[async_trait]
    impl SyncProvider for LimitedProvider {
        fn id(&self) -> &str {
            "limited-provider"
        }
        fn limits(&self) -> SyncLimits {
            SyncLimits {
                items_per_request: 2,
                ..Default::default()
            }
        }
        async fn spend_page(
            &self,
            request: sct::SpendStatusPageRequest,
        ) -> Result<sct::SpendStatusPageResponse> {
            ensure!(
                request.nullifiers.len() <= 2,
                "provider item limit exceeded"
            );
            ensure!(
                request.start_height == 7 && request.end_height == 7,
                "wrong interval"
            );
            self.0.lock().unwrap().push(request.nullifiers.len());
            Ok(sct::SpendStatusPageResponse {
                chain_id: "test".into(),
                anchor_height: 7,
                ..Default::default()
            })
        }
        async fn compact_page(&self, _: cb::CompactBlockPageRequest) -> Result<cb::CompactPage> {
            anyhow::bail!("unexpected full query")
        }
        async fn filtered_page(&self, _: cb::FilteredBlockPageRequest) -> Result<cb::CompactPage> {
            anyhow::bail!("unexpected filtered query")
        }
        async fn transaction_page(
            &self,
            request: app::TransactionsByHeightRequest,
        ) -> Result<app::TransactionsByHeightResponse> {
            ensure!(
                request.cursor.is_empty() || request.cursor == [1],
                "unexpected cursor"
            );
            Ok(app::TransactionsByHeightResponse {
                block_height: request.block_height,
                transactions: vec![Transaction::default().into()],
                next_cursor: if request.cursor.is_empty() {
                    vec![1]
                } else {
                    vec![]
                },
            })
        }
        async fn transaction(&self, _: u64, _: TransactionId) -> Result<Transaction> {
            anyhow::bail!("unexpected transaction")
        }
    }
    struct Anchors;
    #[async_trait]
    impl GenerationAnchors for Anchors {
        async fn generation_root(&self, _: u64, _: u64) -> Result<[u8; 32]> {
            anyhow::bail!("unexpected positive spend")
        }
    }
    #[tokio::test]
    async fn spend_sync_obeys_selected_provider_item_budget() -> Result<()> {
        let provider = LimitedProvider(Mutex::new(vec![]));
        let nullifiers = (1..=5u64)
            .map(|n| Nullifier(shieldd_sdk_crypto::Fq::from(n)))
            .collect();
        assert!(spends(&provider, &Anchors, "test", 7, nullifiers)
            .await?
            .is_empty());
        assert_eq!(*provider.0.lock().unwrap(), [2, 2, 1]);
        Ok(())
    }

    #[tokio::test]
    async fn transaction_pages_share_the_blocks_remaining_assembly_budget() -> Result<()> {
        use shieldd_sdk_proto::DomainType;
        let provider = LimitedProvider(Mutex::new(vec![]));
        let length = Transaction::default().to_proto().encoded_len();
        for (bytes, records, succeeds) in [
            (2 * length, 2, true),
            (2 * length - 1, 2, false),
            (2 * length, 1, false),
        ] {
            let mut budget = AssemblyBudget::new(AssemblyLimits {
                max_encoded_bytes: bytes + 17,
                max_records: records + 1,
            })?;
            // Compact records already fetched for this block consume the same budget.
            budget.reserve_record(17)?;
            let result = transactions(&provider, 7, &mut budget).await;
            if succeeds {
                let transactions = result?;
                assert_eq!(transactions.len(), 2);
                assert!(transactions
                    .iter()
                    .all(|tx| tx.id() == Transaction::default().id()));
            } else {
                assert!(result.unwrap_err().to_string().contains("assembly budget"));
            }
        }
        Ok(())
    }
}
