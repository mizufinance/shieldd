//! Owned handoff between stateless verification and ordered native execution.
use crate::service::ServiceError;
use anyhow::{ensure, Context, Result};
use shieldd_sdk_app::{app::App, stateless_cache::VerifiedTxArtifact};
use shieldd_sdk_proof_params::pari::Registry;
use shieldd_sdk_proto::execution_client::v1::{
    StartVerificationRequest, VerificationCandidate, VerificationPosition,
};
use std::{collections::VecDeque, sync::Arc};
use tokio::sync::{mpsc, watch, Mutex, OwnedSemaphorePermit, Semaphore};

#[derive(Clone, Debug, Eq, PartialEq, Ord, PartialOrd)]
struct Position {
    transaction: u32,
    path: Vec<u32>,
}
impl Position {
    fn decode(position: &VerificationPosition) -> Result<Self> {
        ensure!(
            !position.message_path.is_empty()
                && position.message_path.len() <= shieldd_sdk_storage::MAX_DEPTH,
            "invalid SDK verification position"
        );
        Ok(Self {
            transaction: position.tx_index,
            path: position.message_path.clone(),
        })
    }
}
pub(crate) struct OwnedVerification {
    position: Position,
    bytes: Vec<u8>,
    pub(crate) result: std::result::Result<Arc<VerifiedTxArtifact>, String>,
    _memory: Arc<(OwnedSemaphorePermit, Option<OwnedSemaphorePermit>)>,
}
struct Active {
    height: u64,
    ready: VecDeque<OwnedVerification>,
    receiver: mpsc::Receiver<Result<VecDeque<OwnedVerification>>>,
    cancel: watch::Sender<bool>,
    worker: tokio::task::JoinHandle<Result<()>>,
}
#[derive(Default)]
pub(crate) struct VerificationPipeline {
    active: Mutex<Option<Active>>,
    lifecycle: Mutex<()>,
}
impl VerificationPipeline {
    pub(crate) async fn stop(&self) -> Result<()> {
        let _transition = self.lifecycle.lock().await;
        self.stop_locked().await
    }
    async fn stop_locked(&self) -> Result<()> {
        let Some(active) = self.active.lock().await.take() else {
            return Ok(());
        };
        let Active {
            cancel,
            worker,
            ready,
            receiver,
            ..
        } = active;
        let _ = cancel.send(true);
        drop(ready);
        drop(receiver);
        worker.await.context("proof producer panicked")??;
        Ok(())
    }
    pub(crate) async fn start(
        &self,
        mut request: StartVerificationRequest,
        registry: Arc<Registry>,
        memory_ceiling: usize,
    ) -> Result<(), ServiceError> {
        let _transition = self.lifecycle.lock().await;
        self.stop_locked()
            .await
            .map_err(ServiceError::unavailable)?;
        // Oversized messages are ordinary transaction rejections. Leave their
        // deterministic size check to ordered delivery without proof decoding.
        // Validate positions before filtering oversized inputs, so malformed
        // ordering cannot be hidden by an ordinary size rejection.
        let mut prior = None;
        for candidate in &request.candidates {
            let position = Position::decode(candidate.position.as_ref().ok_or_else(|| {
                ServiceError::invalid_argument(anyhow::anyhow!("verification position is missing"))
            })?)
            .map_err(ServiceError::invalid_argument)?;
            if prior.as_ref().is_some_and(|p| p >= &position) {
                return Err(ServiceError::invalid_argument(anyhow::anyhow!(
                    "verification inputs are not in SDK transaction order"
                )));
            }
            prior = Some(position);
        }
        request.candidates.retain(|candidate| {
            candidate.tx.len() <= shieldd_sdk_app::app::MAX_TRANSACTION_SIZE_BYTES
        });
        let result = (|| -> Result<_> {
            ensure!(
                request.height > 0,
                "verification requires a positive block height"
            );
            let mut previous = None;
            let mut bytes = request
                .candidates
                .capacity()
                .checked_mul(std::mem::size_of::<VerificationCandidate>())
                .context("verification input allocation overflow")?;
            for candidate in &request.candidates {
                let position = Position::decode(
                    candidate
                        .position
                        .as_ref()
                        .context("verification position is missing")?,
                )?;
                ensure!(
                    previous.as_ref().is_none_or(|prior| prior < &position),
                    "verification inputs are not in SDK transaction order"
                );
                previous = Some(position);
                bytes = bytes
                    .checked_add(candidate.tx.capacity())
                    .and_then(|n| {
                        n.checked_add(candidate.position.as_ref().map_or(0, |p| {
                            p.message_path.capacity() * std::mem::size_of::<u32>()
                        }))
                    })
                    .context("verification input allocation overflow")?;
            }
            // This is a local memory failure, never a transaction rejection.
            ensure!(
                bytes < memory_ceiling,
                "local proof input memory ceiling exceeded"
            );
            Ok(bytes)
        })()
        .map_err(ServiceError::unavailable)?;
        let memory = Arc::new(Semaphore::new(memory_ceiling));
        let inputs = memory
            .clone()
            .acquire_many_owned(result.try_into().map_err(|_| {
                ServiceError::unavailable(anyhow::anyhow!(
                    "proof input allocation exceeds local ceiling"
                ))
            })?)
            .await
            .map_err(|error| ServiceError::unavailable(error.into()))?;
        let (sender, receiver) = mpsc::channel(2);
        let (cancel, mut cancelled) = watch::channel(false);
        let height = request.height;
        let worker = tokio::spawn(async move {
            let _inputs = inputs;
            let result = async {
                let mut remaining = VecDeque::from(request.candidates);
                // Reserve a conservative decoded-allocation charge before
                // parsing. Chunk sizing follows local memory, never admission.
                let local_chunk = (memory_ceiling / 3 / 32)
                    .max(1)
                    .min(shieldd_sdk_storage::PROOF_CHUNK_BYTES);
                while !remaining.is_empty() {
                    if *cancelled.borrow() {
                        return Ok(());
                    }
                    let mut candidates = Vec::<VerificationCandidate>::new();
                    let mut encoded = 0usize;
                    while let Some(next) = remaining.front() {
                        if !candidates.is_empty()
                            && (candidates.len() == shieldd_sdk_storage::PROOF_CHUNK_TRANSACTIONS
                                || encoded.saturating_add(next.tx.len()) > local_chunk)
                        {
                            break;
                        }
                        encoded = encoded
                            .checked_add(next.tx.len())
                            .context("proof chunk length overflow")?;
                        candidates.push(remaining.pop_front().expect("front exists"));
                    }
                    ensure!(
                        encoded <= shieldd_sdk_storage::PROOF_CHUNK_BYTES,
                        "individual input exceeds supported native transaction size"
                    );
                    let charge = encoded
                        .checked_mul(32)
                        .and_then(|value| value.checked_add(candidates.len() * 4096))
                        .context("decoded artifact charge overflow")?;
                    ensure!(
                        charge <= memory_ceiling.saturating_sub(result),
                        "local decoded artifact memory ceiling exceeded"
                    );
                    let allowance = tokio::select! {
                        memory = memory.clone().acquire_many_owned(charge.try_into()?) => memory?,
                        _ = cancelled.changed() => return Ok(()),
                    };
                    let bytes = candidates
                        .iter_mut()
                        .map(|input| std::mem::take(&mut input.tx))
                        .collect::<Vec<_>>();
                    let verified = App::verify_owned_chunk(registry.clone(), &bytes).await?;
                    ensure!(
                        verified.len() == candidates.len(),
                        "proof producer result count mismatch"
                    );
                    // Account decoded capacities rather than treating encoded
                    // bytes as the retained-memory measurement. The initial
                    // charge bounds ordinary decode work; excess is a local
                    // processing failure, never a transaction rejection.
                    let actual = candidates.len() * std::mem::size_of::<OwnedVerification>()
                        + candidates
                            .iter()
                            .map(|c| {
                                c.position.as_ref().map_or(0, |p| {
                                    p.message_path.capacity() * std::mem::size_of::<u32>()
                                })
                            })
                            .sum::<usize>()
                        + bytes.iter().map(Vec::capacity).sum::<usize>()
                        + verified
                            .iter()
                            .map(|r| match r {
                                Ok(artifact) => artifact.allocated_bytes(),
                                Err(error) => error.capacity(),
                            })
                            .sum::<usize>();
                    ensure!(
                        actual <= memory_ceiling.saturating_sub(result),
                        "local decoded artifact memory ceiling exceeded"
                    );
                    let overflow = if actual > charge {
                        Some(
                            memory
                                .clone()
                                .try_acquire_many_owned((actual - charge).try_into()?)
                                .context("local decoded artifact memory ceiling exceeded")?,
                        )
                    } else {
                        None
                    };
                    let memory = Arc::new((allowance, overflow));
                    let mut chunk = VecDeque::new();
                    for ((candidate, bytes), result) in
                        candidates.into_iter().zip(bytes).zip(verified)
                    {
                        chunk.push_back(OwnedVerification {
                            position: Position::decode(
                                candidate
                                    .position
                                    .as_ref()
                                    .context("verification position disappeared")?,
                            )?,
                            bytes,
                            result,
                            _memory: memory.clone(),
                        });
                    }
                    if sender.send(Ok(chunk)).await.is_err() {
                        return Ok(());
                    }
                }
                Ok(())
            }
            .await;
            if let Err(error) = &result {
                let _ = sender.send(Err(anyhow::anyhow!("{error:#}"))).await;
            }
            result
        });
        *self.active.lock().await = Some(Active {
            height,
            ready: VecDeque::new(),
            receiver,
            cancel,
            worker,
        });
        Ok(())
    }
    pub(crate) async fn take(
        &self,
        height: u64,
        position: Option<&VerificationPosition>,
        bytes: &[u8],
    ) -> Result<Option<OwnedVerification>, ServiceError> {
        let Some(position) = position else {
            return Ok(None);
        };
        let position = Position::decode(position).map_err(ServiceError::invalid_argument)?;
        let mut active = self.active.lock().await;
        let Some(active) = active.as_mut().filter(|active| active.height == height) else {
            return Ok(None);
        };
        loop {
            while active
                .ready
                .front()
                .is_some_and(|row| row.position < position)
            {
                active.ready.pop_front();
            }
            if let Some(next) = active.ready.front() {
                if next.position > position {
                    return Ok(None);
                }
                if next.bytes != bytes {
                    return Err(ServiceError::unavailable(anyhow::anyhow!(
                        "owned proof input differs from exact SDK message bytes"
                    )));
                }
                return Ok(active.ready.pop_front());
            }
            match active.receiver.recv().await {
                Some(Ok(chunk)) => active.ready = chunk,
                Some(Err(error)) => return Err(ServiceError::unavailable(error)),
                None => return Ok(None),
            }
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    fn position(index: u32) -> VerificationPosition {
        VerificationPosition {
            tx_index: index,
            message_path: vec![0],
        }
    }
    fn candidates(count: u32) -> StartVerificationRequest {
        StartVerificationRequest {
            height: 1,
            candidates: (0..count)
                .map(|i| VerificationCandidate {
                    tx: vec![0xff, 0xff],
                    position: Some(position(i)),
                })
                .collect(),
        }
    }
    #[tokio::test]
    async fn owned_chunks_preserve_order_and_accept_more_than_one_chunk() -> Result<()> {
        let pipeline = VerificationPipeline::default();
        pipeline
            .start(candidates(300), crate::test_registry(), 64 * 1024 * 1024)
            .await?;
        for index in 0..300 {
            let owned = pipeline
                .take(1, Some(&position(index)), &[0xff, 0xff])
                .await?
                .context("owned rejection missing")?;
            assert!(owned.result.is_err());
        }
        pipeline.stop().await?;
        assert!(pipeline.active.lock().await.is_none());
        Ok(())
    }
    #[tokio::test]
    async fn oversized_inputs_remain_ordered_delivery_rejections_and_memory_failure_is_local(
    ) -> Result<()> {
        let pipeline = VerificationPipeline::default();
        let mut request = candidates(2);
        request.candidates[0].tx = vec![0; shieldd_sdk_app::app::MAX_TRANSACTION_SIZE_BYTES + 1];
        pipeline
            .start(request.clone(), crate::test_registry(), 64 * 1024 * 1024)
            .await?;
        assert!(pipeline
            .take(1, Some(&position(0)), &request.candidates[0].tx)
            .await?
            .is_none());
        assert!(pipeline
            .take(1, Some(&position(1)), &request.candidates[1].tx)
            .await?
            .unwrap()
            .result
            .is_err());
        pipeline.stop().await?;
        let mut request = candidates(1);
        request.candidates[0].tx = Vec::with_capacity(16 * 1024 * 1024);
        request.candidates[0].tx.push(0xff);
        let error = pipeline
            .start(request, crate::test_registry(), 16 * 1024 * 1024)
            .await
            .unwrap_err();
        assert_eq!(error.kind(), crate::ErrorKind::Unavailable);
        assert!(pipeline.active.lock().await.is_none());
        Ok(())
    }
    #[tokio::test]
    async fn concurrent_restarts_join_abandoned_producers() -> Result<()> {
        let pipeline = Arc::new(VerificationPipeline::default());
        let mut starts = vec![];
        for height in 1..=4 {
            let pipeline = pipeline.clone();
            let mut request = candidates(600);
            request.height = height;
            starts.push(tokio::spawn(async move {
                pipeline
                    .start(request, crate::test_registry(), 64 * 1024 * 1024)
                    .await
            }));
        }
        for start in starts {
            start.await??;
        }
        pipeline.stop().await?;
        assert!(pipeline.active.lock().await.is_none());
        Ok(())
    }
}
