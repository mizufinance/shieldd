use anyhow::{ensure, Context, Result};
use async_trait::async_trait;
use serde::{Deserialize, Serialize};
use shieldd_sdk_circuits::{catalogue::Witness, encoding::field, history, tree::Path};
use shieldd_sdk_crypto::encoding;
use shieldd_sdk_proof_params::{
    historical::{ChunkClaim, GenerationClaim},
    pari::Registry,
};
use shieldd_sdk_sct::{
    nullifier_generation::{
        append_history, empty_history_head, ArchivedNullifierProof, GenerationNonmembershipProof,
        HistoricalChunkProof, HistoricalCoverage, HistoricalNullifierProof, NullifierWindow,
        CHUNK_WIDTH, PROTOCOL_VERSION,
    },
    Nullifier,
};
use std::sync::Arc;

#[derive(Clone, Copy, Debug, Eq, PartialEq, Serialize, Deserialize)]
pub enum HistoricalProofCacheState {
    PendingBackfill,
    Ready,
    Updating,
    BlockedOnWitnessSource,
    BlockedOnProver,
    Invalid,
}
impl HistoricalProofCacheState {
    pub fn can_transition_to(self, next: Self) -> bool {
        use HistoricalProofCacheState::*;
        matches!(
            (self, next),
            (
                PendingBackfill | Ready | BlockedOnWitnessSource | BlockedOnProver,
                Updating
            ) | (Updating, Ready | BlockedOnWitnessSource | BlockedOnProver)
                | (
                    PendingBackfill | Ready | Updating | BlockedOnWitnessSource | BlockedOnProver,
                    Invalid
                )
        )
    }
    pub(crate) const fn storage_id(self) -> i64 {
        match self {
            Self::PendingBackfill => 0,
            Self::Ready => 1,
            Self::Updating => 2,
            Self::BlockedOnWitnessSource => 3,
            Self::Invalid => 4,
            Self::BlockedOnProver => 5,
        }
    }
    pub(crate) fn from_storage_id(value: i64) -> Result<Self> {
        Ok(match value {
            0 => Self::PendingBackfill,
            1 => Self::Ready,
            2 => Self::Updating,
            3 => Self::BlockedOnWitnessSource,
            4 => Self::Invalid,
            5 => Self::BlockedOnProver,
            _ => anyhow::bail!("invalid history cache state"),
        })
    }
}

/// Verified history coverage and at most one chunk's raw nonmembership witnesses.
#[derive(Clone, Debug, Eq, PartialEq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct HistoricalProofCache {
    pub protocol_version: u32,
    pub registry_id: Option<[u8; 32]>,
    pub proof: HistoricalNullifierProof,
    pub pending: Vec<ArchivedNullifierProof>,
    pub state: HistoricalProofCacheState,
    pub last_error: Option<String>,
}
impl HistoricalProofCache {
    pub fn pending(nullifier: Nullifier) -> Self {
        Self {
            protocol_version: PROTOCOL_VERSION,
            registry_id: None,
            proof: HistoricalNullifierProof {
                nullifier,
                completed_chunks: vec![],
                tail: vec![],
            },
            pending: vec![],
            state: HistoricalProofCacheState::PendingBackfill,
            last_error: None,
        }
    }
    pub fn recover_after_restart(&mut self) -> Result<()> {
        if self.state == HistoricalProofCacheState::Updating {
            self.state = HistoricalProofCacheState::PendingBackfill;
        }
        self.validate()
    }
    pub fn validate(&self) -> Result<()> {
        self.validated_coverage().map(|_| ())
    }
    fn validated_coverage(&self) -> Result<HistoricalCoverage> {
        ensure!(
            self.protocol_version == PROTOCOL_VERSION,
            "unsupported history cache version"
        );
        ensure!(
            self.last_error.as_ref().map_or(0, String::len) <= 1024,
            "history error exceeds bound"
        );
        let coverage = self.proof.coverage()?;
        let tail = self.proof.tail.len();
        ensure!(
            self.pending.len() <= history::CHUNK_SIZE && self.pending.len() >= tail,
            "pending history witnesses do not match proof coverage"
        );
        ensure!(
            self.state != HistoricalProofCacheState::Ready || self.pending.len() == tail,
            "ready cache has unfinished proof work"
        );
        ensure!(
            self.registry_id.is_some()
                || (coverage.generation_count == 0 && self.pending.is_empty()),
            "history cache lacks registry identity"
        );
        let base = coverage
            .generation_count
            .checked_sub(tail as u64)
            .context("history coverage underflow")?;
        let mut head = self.chunk_start_head();
        for (offset, archived) in self.pending.iter().enumerate() {
            ensure!(
                archived.generation_index
                    == base
                        .checked_add(offset as u64)
                        .context("history index overflow")?,
                "pending history index mismatch"
            );
            archived.verify_for(self.proof.nullifier)?;
            let end = append_history(
                head,
                archived.generation_index,
                archived.generation_root,
                archived.generation_start_position,
                archived.generation_end_position,
            )?;
            if let Some(generation) = self.proof.tail.get(offset) {
                ensure!(
                    generation.generation_index == archived.generation_index
                        && generation.generation_root == archived.generation_root
                        && generation.generation_start_position
                            == archived.generation_start_position
                        && generation.generation_end_position == archived.generation_end_position,
                    "pending witness differs from proven generation"
                );
            }
            head = end;
            if offset + 1 == tail {
                ensure!(
                    head == coverage.terminal_head,
                    "pending history head mismatch"
                );
            }
        }
        Ok(coverage)
    }
    /// Full backfill chunks need no intermediate generation proofs.
    pub(crate) fn has_staged_proof(&self, window: NullifierWindow) -> Result<bool> {
        let coverage = self.proof.coverage()?;
        let base = coverage.generation_count - self.proof.tail.len() as u64;
        let remaining = window
            .archived_generation_count
            .checked_sub(base)
            .context("history cache ahead of window")?;
        ensure!(
            self.pending.len() as u64 <= remaining,
            "staged history ahead of window"
        );
        Ok(if remaining >= CHUNK_WIDTH {
            self.pending.len() == history::CHUNK_SIZE
        } else {
            self.pending.len() > self.proof.tail.len()
        })
    }

    fn chunk_start_head(&self) -> [u8; 32] {
        self.proof
            .completed_chunks
            .last()
            .map_or_else(empty_history_head, |chunk| chunk.end_history_head)
    }
    pub fn transition(&mut self, next: HistoricalProofCacheState) -> Result<()> {
        ensure!(
            self.state.can_transition_to(next),
            "illegal history cache transition {:?} -> {:?}",
            self.state,
            next
        );
        self.state = next;
        if !matches!(
            next,
            HistoricalProofCacheState::BlockedOnWitnessSource
                | HistoricalProofCacheState::BlockedOnProver
        ) {
            self.last_error = None;
        }
        Ok(())
    }
    pub fn block_on_witness_source(&mut self, error: impl Into<String>) -> Result<()> {
        self.transition(HistoricalProofCacheState::BlockedOnWitnessSource)?;
        self.set_error(error.into());
        Ok(())
    }
    pub fn block_on_prover(&mut self, error: impl Into<String>) -> Result<()> {
        self.transition(HistoricalProofCacheState::BlockedOnProver)?;
        self.set_error(error.into());
        Ok(())
    }
    pub(crate) fn set_error(&mut self, mut error: String) {
        let mut end = error.len().min(1024);
        while !error.is_char_boundary(end) {
            end -= 1;
        }
        error.truncate(end);
        self.last_error = Some(error);
    }
    pub fn mark_ready(&mut self, window: NullifierWindow) -> Result<()> {
        window.validate()?;
        let coverage = self.validated_coverage()?;
        ensure!(
            coverage.generation_count == window.archived_generation_count
                && coverage.terminal_head == window.archived_history_head,
            "history cache does not cover window"
        );
        ensure!(
            self.pending.len() == self.proof.tail.len(),
            "pending history work remains"
        );
        if window.archived_generation_count > 0 {
            self.proof.validate_structure(window)?;
        }
        self.transition(HistoricalProofCacheState::Ready)?;
        self.validate()
    }
    pub(crate) fn ensure_ready_for(
        &self,
        window: NullifierWindow,
        registry_id: [u8; 32],
    ) -> Result<()> {
        window.validate()?;
        let coverage = self.validated_coverage()?;
        ensure!(
            self.registry_id == Some(registry_id),
            "historical proof cache registry mismatch"
        );
        ensure!(
            self.state == HistoricalProofCacheState::Ready,
            "history cache not ready"
        );
        ensure!(
            coverage.generation_count == window.archived_generation_count
                && coverage.terminal_head == window.archived_history_head,
            "stale history cache"
        );
        if window.archived_generation_count > 0 {
            self.proof.validate_structure(window)?;
        }
        Ok(())
    }

    pub fn bundle_for(
        &self,
        window: NullifierWindow,
        registry_id: [u8; 32],
    ) -> Result<HistoricalNullifierProof> {
        self.ensure_ready_for(window, registry_id)?;
        ensure!(
            window.archived_generation_count > 0,
            "empty history needs no proof bundle"
        );
        Ok(self.proof.clone())
    }
}
#[async_trait]
pub trait HistoricalWitnessSource: Send + Sync {
    async fn nonmembership_proof(
        &self,
        nullifier: Nullifier,
        generation_index: u64,
    ) -> Result<ArchivedNullifierProof>;
}
#[derive(Debug)]
pub enum HistoricalProofUpdateError {
    InvalidPrefix(anyhow::Error),
    Invalid(anyhow::Error),
    WitnessSource(anyhow::Error),
    Prover(anyhow::Error),
}
impl std::fmt::Display for HistoricalProofUpdateError {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Self::InvalidPrefix(e) => write!(f, "invalid history prefix: {e:#}"),
            Self::Invalid(e) => write!(f, "invalid history state: {e:#}"),
            Self::WitnessSource(e) => write!(f, "history witness source: {e:#}"),
            Self::Prover(e) => write!(f, "history prover: {e:#}"),
        }
    }
}
impl std::error::Error for HistoricalProofUpdateError {}

/// Stage one checked witness; persist each path before fetching more or proving.
pub async fn stage_historical_witness(
    cache: &mut HistoricalProofCache,
    window: NullifierWindow,
    source: &dyn HistoricalWitnessSource,
    registry_id: [u8; 32],
) -> Result<(), HistoricalProofUpdateError> {
    use HistoricalProofUpdateError::{Invalid, WitnessSource};
    window.validate().map_err(Invalid)?;
    let coverage = cache.validated_coverage().map_err(Invalid)?;
    if cache.registry_id.is_some_and(|id| id != registry_id) {
        return Err(Invalid(anyhow::anyhow!("history cache registry mismatch")));
    }
    if coverage.generation_count > window.archived_generation_count {
        return Err(Invalid(anyhow::anyhow!("history cache ahead of window")));
    }
    if cache.state != HistoricalProofCacheState::Updating {
        cache
            .transition(HistoricalProofCacheState::Updating)
            .map_err(Invalid)?;
    }
    cache.registry_id = Some(registry_id);
    if coverage.generation_count == window.archived_generation_count {
        if coverage.terminal_head != window.archived_history_head {
            return Err(HistoricalProofUpdateError::InvalidPrefix(anyhow::anyhow!(
                "completed history differs from current window"
            )));
        }
        cache.mark_ready(window).map_err(Invalid)?;
        return Ok(());
    }
    if cache.has_staged_proof(window).map_err(Invalid)? {
        return Ok(());
    }
    let mut staged_head = coverage.terminal_head;
    for raw in cache.pending.iter().skip(cache.proof.tail.len()) {
        staged_head = append_history(
            staged_head,
            raw.generation_index,
            raw.generation_root,
            raw.generation_start_position,
            raw.generation_end_position,
        )
        .map_err(Invalid)?;
    }
    let next_index = coverage
        .generation_count
        .checked_add((cache.pending.len() - cache.proof.tail.len()) as u64)
        .context("history index overflow")
        .map_err(Invalid)?;
    let archived = source
        .nonmembership_proof(cache.proof.nullifier, next_index)
        .await
        .map_err(WitnessSource)?;
    if archived.generation_index != next_index {
        return Err(WitnessSource(anyhow::anyhow!("wrong archived generation")));
    }
    generation_witness(cache.proof.nullifier, &archived, staged_head).map_err(WitnessSource)?;
    let end_head = append_history(
        staged_head,
        archived.generation_index,
        archived.generation_root,
        archived.generation_start_position,
        archived.generation_end_position,
    )
    .map_err(WitnessSource)?;
    if archived.generation_index.checked_add(1) == Some(window.archived_generation_count)
        && end_head != window.archived_history_head
    {
        return Err(HistoricalProofUpdateError::InvalidPrefix(anyhow::anyhow!(
            "archived witness chain does not match current history head"
        )));
    }
    cache.pending.push(archived);
    cache.validate().map_err(Invalid)
}

fn generation_witness(
    nullifier: Nullifier,
    archived: &ArchivedNullifierProof,
    start_head: [u8; 32],
) -> Result<history::GenerationWitness> {
    archived.verify_for(nullifier)?;
    let end_head = append_history(
        start_head,
        archived.generation_index,
        archived.generation_root,
        archived.generation_start_position,
        archived.generation_end_position,
    )?;
    let statement = GenerationClaim {
        protocol_version: PROTOCOL_VERSION,
        nullifier: nullifier.into(),
        generation_index: archived.generation_index,
        generation_root: archived.generation_root,
        generation_start_position: archived.generation_start_position,
        generation_end_position: archived.generation_end_position,
        start_history_head: start_head,
        end_history_head: end_head,
    }
    .statement()?;
    let leaf = &archived.witness.leaf;
    let scalar = |bytes: &[u8; 32]| -> Result<_> { Ok(field(&encoding::field(bytes)?)) };
    let siblings = archived
        .witness
        .auth_path
        .iter()
        .map(|row| Ok([scalar(&row[0])?, scalar(&row[1])?, scalar(&row[2])?]))
        .collect::<Result<Vec<_>>>()?
        .try_into()
        .map_err(|_| anyhow::anyhow!("wrong history path depth"))?;
    Ok(history::GenerationWitness {
        statement,
        leaf: history::Leaf {
            value: scalar(&leaf.value)?,
            next_index: leaf.next_index,
            next_value: scalar(&leaf.next_value)?,
            lower_sentinel: leaf.is_lower_sentinel,
            terminal: leaf.is_terminal,
        },
        path: Path {
            position: archived.witness.leaf_position.into(),
            siblings,
        },
    })
}

/// Prove staged work, replacing a full raw chunk atomically only after verification.
pub async fn advance_historical_proof_cache(
    cache: &mut HistoricalProofCache,
    window: NullifierWindow,
    registry: Arc<Registry>,
) -> Result<(), HistoricalProofUpdateError> {
    use HistoricalProofUpdateError::{Invalid, Prover};
    window.validate().map_err(Invalid)?;
    let coverage = cache.validated_coverage().map_err(Invalid)?;
    if coverage.generation_count >= window.archived_generation_count {
        return Err(Invalid(anyhow::anyhow!("no historical proof work remains")));
    }
    if cache.registry_id != Some(registry.id()) {
        return Err(Invalid(anyhow::anyhow!("history cache registry mismatch")));
    }
    if cache.state != HistoricalProofCacheState::Updating
        || !cache.has_staged_proof(window).map_err(Invalid)?
    {
        return Err(Invalid(anyhow::anyhow!("history proof work is not staged")));
    }
    let close = cache.pending.len() == history::CHUNK_SIZE;
    let next = if close {
        cache.pending.len() - 1
    } else {
        cache.proof.tail.len()
    };
    let archived = cache
        .pending
        .get(next)
        .cloned()
        .context("pending history witness missing")
        .map_err(Invalid)?;
    let nullifier = cache.proof.nullifier;
    let mut end_head = coverage.terminal_head;
    for raw in cache
        .pending
        .iter()
        .skip(cache.proof.tail.len())
        .take(next + 1 - cache.proof.tail.len())
    {
        end_head = append_history(
            end_head,
            raw.generation_index,
            raw.generation_root,
            raw.generation_start_position,
            raw.generation_end_position,
        )
        .map_err(Invalid)?;
    }
    if archived.generation_index.checked_add(1) == Some(window.archived_generation_count)
        && end_head != window.archived_history_head
    {
        return Err(HistoricalProofUpdateError::InvalidPrefix(anyhow::anyhow!(
            "staged history does not match current window"
        )));
    }
    let witness = if close {
        let mut head = cache.chunk_start_head();
        let mut generations = Vec::with_capacity(history::CHUNK_SIZE);
        for raw in &cache.pending {
            let generation = generation_witness(nullifier, raw, head).map_err(Invalid)?;
            head = append_history(
                head,
                raw.generation_index,
                raw.generation_root,
                raw.generation_start_position,
                raw.generation_end_position,
            )
            .map_err(Invalid)?;
            generations.push(generation);
        }
        let statement = ChunkClaim {
            protocol_version: PROTOCOL_VERSION,
            nullifier: nullifier.into(),
            chunk_index: archived.generation_index / CHUNK_WIDTH,
            start_history_head: cache.chunk_start_head(),
            end_history_head: end_head,
        }
        .statement()
        .map_err(Invalid)?;
        Witness::HistoryChunk(Box::new(history::ChunkWitness {
            statement,
            generations: generations
                .try_into()
                .map_err(|_| Invalid(anyhow::anyhow!("wrong raw chunk width")))?,
        }))
    } else {
        Witness::HistoryGeneration(Box::new(
            generation_witness(nullifier, &archived, coverage.terminal_head).map_err(Invalid)?,
        ))
    };
    let proof = tokio::task::spawn_blocking(move || {
        let envelope = registry.prove(
            &witness,
            shieldd_sdk_proof_params::pari::proving_strategy()?,
        )?;
        let parameters = shieldd_sdk_circuits::hash::Parameters::load()?;
        registry.verify(
            witness.family(),
            &witness.digest(
                &parameters,
                &shieldd_sdk_circuits::map::Generators::derive(&parameters),
            )?,
            &envelope,
        )?;
        Ok::<_, anyhow::Error>(envelope.to_bytes())
    })
    .await
    .map_err(|e| Prover(e.into()))?
    .map_err(Prover)?;
    let mut completed = cache.clone();
    if close {
        completed.proof.completed_chunks.push(HistoricalChunkProof {
            chunk_index: archived.generation_index / CHUNK_WIDTH,
            end_history_head: end_head,
            proof,
        });
        completed.proof.tail.clear();
        completed.pending.clear();
    } else {
        completed.proof.tail.push(GenerationNonmembershipProof {
            generation_index: archived.generation_index,
            generation_root: archived.generation_root,
            generation_start_position: archived.generation_start_position,
            generation_end_position: archived.generation_end_position,
            proof,
        });
    }
    completed.validate().map_err(Invalid)?;
    if archived.generation_index.checked_add(1) == Some(window.archived_generation_count) {
        completed.mark_ready(window).map_err(Invalid)?;
    }
    *cache = completed;
    Ok(())
}

#[cfg(test)]
mod tests;
