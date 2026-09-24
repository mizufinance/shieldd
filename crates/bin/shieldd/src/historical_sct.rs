use crate::service::ServiceError;
use anyhow::{Context, Result};
use cnidarium::Snapshot;
use shieldd_sdk_proto::{
    core::component::compact_block::v1::{StatePayload, StoredCompactBlock},
    Message,
};
use shieldd_sdk_tct::builder::block::{ProofTree, Root};
use std::{
    collections::{BTreeMap, VecDeque},
    sync::{Arc, Mutex},
};

type Key = (String, u64, [u8; 32]);
#[derive(Default)]
struct Entries {
    trees: BTreeMap<Key, Arc<ProofTree>>,
    order: VecDeque<Key>,
    bytes: usize,
}
/// Historical proof nodes are a bounded, disposable cache, never another persistent tree index.
pub(crate) struct HistoricalSct {
    entries: Mutex<Entries>,
    bytes: usize,
    worker: Arc<tokio::sync::Semaphore>,
}
impl HistoricalSct {
    pub fn new(bytes: usize) -> Self {
        Self {
            entries: Mutex::new(Entries::default()),
            bytes,
            worker: Arc::new(tokio::sync::Semaphore::new(1)),
        }
    }
    pub async fn tree(
        &self,
        state: Snapshot,
        chain: String,
        header: &StoredCompactBlock,
    ) -> Result<Arc<ProofTree>, ServiceError> {
        let metadata = header
            .metadata
            .as_ref()
            .context("missing block metadata")
            .map_err(ServiceError::unavailable)?;
        let root: Root = metadata
            .block_root
            .clone()
            .context("missing block root")
            .and_then(|root| Root::try_from(root).map_err(Into::into))
            .map_err(ServiceError::unavailable)?;
        let key = (
            chain,
            metadata.height,
            shieldd_sdk_crypto::Fq::from(root).to_bytes(),
        );
        if let Some(tree) = self.cached(&key) {
            return Ok(tree);
        }
        // A concurrent miss retries instead of starting another reconstruction or entering an unbounded queue.
        let permit = self
            .worker
            .clone()
            .try_acquire_owned()
            .map_err(|_| ServiceError::overloaded())?;
        if let Some(tree) = self.cached(&key) {
            return Ok(tree);
        }
        let count = header
            .sections
            .iter()
            .find(|s| s.kind == 1)
            .context("missing payload count")
            .map_err(ServiceError::unavailable)?
            .count;
        if count > 65536 {
            return Err(ServiceError::unavailable(anyhow::anyhow!(
                "invalid SCT block payload count"
            )));
        }
        let mut commitments = Vec::with_capacity(count as usize);
        for ordinal in 0..count {
            let key = shieldd_sdk_compact_block::state_key::payload(
                metadata.height,
                metadata.state_payload_start_position + ordinal as u64,
            );
            let bytes = shieldd_sdk_compact_block::component::records::get(&state, &key)
                .await
                .map_err(ServiceError::unavailable)?;
            let payload: shieldd_sdk_compact_block::StatePayload =
                StatePayload::decode(bytes.as_slice())
                    .context("decode canonical payload")
                    .and_then(TryInto::try_into)
                    .map_err(ServiceError::unavailable)?;
            commitments.push(*payload.commitment());
        }
        drop(state);
        let (tree, _permit) = tokio::task::spawn_blocking(move || {
            ProofTree::new(commitments, root).map(|tree| (Arc::new(tree), permit))
        })
        .await
        .context("historical SCT reconstruction task failed")
        .map_err(ServiceError::internal)?
        .map_err(ServiceError::unavailable)?;
        let bytes = tree.cached_bytes();
        if bytes <= self.bytes {
            let mut entries = self
                .entries
                .lock()
                .expect("historical SCT cache lock poisoned");
            while entries.bytes + bytes > self.bytes {
                // A slow consumer must not keep an evicted tree alive outside the cache budget.
                let candidate = entries
                    .order
                    .iter()
                    .position(|key| {
                        entries
                            .trees
                            .get(key)
                            .is_some_and(|tree| Arc::strong_count(tree) == 1)
                    })
                    .ok_or_else(ServiceError::overloaded)?;
                let oldest = entries
                    .order
                    .remove(candidate)
                    .expect("known cache position");
                entries.bytes -= entries
                    .trees
                    .remove(&oldest)
                    .expect("cached tree")
                    .cached_bytes();
            }
            entries.bytes += bytes;
            entries.order.push_back(key.clone());
            entries.trees.insert(key, tree.clone());
        } else {
            return Err(ServiceError::overloaded());
        }
        Ok(tree)
    }
    fn cached(&self, key: &Key) -> Option<Arc<ProofTree>> {
        let mut entries = self
            .entries
            .lock()
            .expect("historical SCT cache lock poisoned");
        let tree = entries.trees.get(key).cloned()?;
        entries.order.retain(|entry| entry != key);
        entries.order.push_back(key.clone());
        Some(tree)
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use cnidarium::{StateDelta, StateRead, TempStorage};
    use shieldd_sdk_compact_block::{component::CompactBlockManager, CompactBlock};
    use shieldd_sdk_tct::{builder::block::finalized_forget_root, StateCommitment};
    #[tokio::test]
    async fn pinned_historical_proofs_apply_backpressure_and_resume_after_release() -> Result<()> {
        let storage = TempStorage::new().await?;
        let mut state = StateDelta::new(storage.latest_snapshot());
        let mut headers = Vec::new();
        let mut budget = 0;
        for height in 0..3 {
            let commitments = (1..=4)
                .map(|i| StateCommitment(shieldd_sdk_crypto::Fq::from(height * 4 + i)))
                .collect::<Vec<_>>();
            let root = finalized_forget_root(&commitments)?;
            budget = ProofTree::new(commitments.clone(), root)?.cached_bytes();
            state.put_compact_block(CompactBlock {
                height,
                block_root: root,
                state_payloads: commitments
                    .into_iter()
                    .map(
                        |commitment| shieldd_sdk_compact_block::StatePayload::RolledUp {
                            commitment,
                            source: shieldd_sdk_sct::CommitmentSource::Genesis,
                        },
                    )
                    .collect(),
                ..Default::default()
            })?;
            headers.push(StoredCompactBlock::decode(
                state
                    .nonverifiable_get_raw(
                        shieldd_sdk_compact_block::state_key::compact_block(height).as_bytes(),
                    )
                    .await?
                    .unwrap()
                    .as_slice(),
            )?);
        }
        storage.commit(state).await?;
        let cache = HistoricalSct::new(budget * 2);
        let first = cache
            .tree(storage.latest_snapshot(), "test".into(), &headers[0])
            .await?;
        let second = cache
            .tree(storage.latest_snapshot(), "test".into(), &headers[1])
            .await?;
        let error = cache
            .tree(storage.latest_snapshot(), "test".into(), &headers[2])
            .await
            .unwrap_err();
        assert_eq!(error.kind(), crate::service::ErrorKind::Overloaded);
        drop(first);
        let third = cache
            .tree(storage.latest_snapshot(), "test".into(), &headers[2])
            .await?;
        assert_eq!(second.proof(1)?.position, 1);
        drop((second, third));
        for header in headers.iter().cycle().take(12) {
            cache
                .tree(storage.latest_snapshot(), "test".into(), header)
                .await?
                .proof(3)?;
        }
        Ok(())
    }
}
