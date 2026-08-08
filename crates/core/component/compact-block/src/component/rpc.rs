use std::{
    collections::{BTreeMap, BTreeSet},
    pin::Pin,
};

use anyhow::bail;
use cnidarium::Storage;
use futures::{StreamExt, TryFutureExt, TryStreamExt};
use shieldd_sdk_proto::core::component::compact_block::v1::{
    query_service_server::QueryService, CompactBlock as ProtoCompactBlock,
    CompactBlockRangeRequest, CompactBlockRangeResponse, CompactBlockRequest, CompactBlockResponse,
    DiscoveryBlockRangeRequest, DiscoveryBlockRangeResponse, NoteCandidatesRequest,
    NoteCandidatesResponse, TransactionCandidatesRequest, TransactionCandidatesResponse,
};
use shieldd_sdk_sct::component::clock::EpochRead;
use shieldd_sdk_shielded_pool::discovery;
use tokio::sync::mpsc;
use tonic::Status;
use tracing::{instrument, Instrument};

use super::{metrics, StateReadExt};
use crate::{DiscoveryBlock, NoteCandidate, StatePayload, TransactionCandidate};

const MAX_DISCOVERY_BLOCKS_PER_REQUEST: u64 = 10_000;
const MAX_DISCOVERY_TAGS_PER_REQUEST: usize = 256;

// TODO: Hide this and only expose a Router?
pub struct Server {
    storage: Storage,
}

impl Server {
    pub fn new(storage: Storage) -> Self {
        Self { storage }
    }
}

#[tonic::async_trait]
impl QueryService for Server {
    type CompactBlockRangeStream = Pin<
        Box<dyn futures::Stream<Item = Result<CompactBlockRangeResponse, tonic::Status>> + Send>,
    >;
    type DiscoveryBlockRangeStream = Pin<
        Box<dyn futures::Stream<Item = Result<DiscoveryBlockRangeResponse, tonic::Status>> + Send>,
    >;
    type NoteCandidatesStream =
        Pin<Box<dyn futures::Stream<Item = Result<NoteCandidatesResponse, tonic::Status>> + Send>>;
    type TransactionCandidatesStream = Pin<
        Box<
            dyn futures::Stream<Item = Result<TransactionCandidatesResponse, tonic::Status>> + Send,
        >,
    >;

    async fn compact_block(
        &self,
        request: tonic::Request<CompactBlockRequest>,
    ) -> Result<tonic::Response<CompactBlockResponse>, Status> {
        let snapshot = self.storage.latest_snapshot();

        let height = request.get_ref().height;
        let compact_block = snapshot
            .compact_block(height)
            .await
            .map_err(|e| tonic::Status::internal(format!("error fetching block: {e:#}")))?
            .ok_or_else(|| tonic::Status::not_found(format!("compact block {height} not found")))?;

        Ok(tonic::Response::new(CompactBlockResponse {
            compact_block: Some(compact_block.into()),
        }))
    }

    #[instrument(
        skip(self, request),
        fields(
            start_height = request.get_ref().start_height,
            end_height = request.get_ref().end_height,
            keep_alive = request.get_ref().keep_alive,
        ),
    )]
    async fn compact_block_range(
        &self,
        request: tonic::Request<CompactBlockRangeRequest>,
    ) -> Result<tonic::Response<Self::CompactBlockRangeStream>, Status> {
        let snapshot = self.storage.latest_snapshot();
        // TODO(erwan): re-enable chain id checks
        // snapshot
        //     .check_chain_id(&request.get_ref().chain_id)
        //     .await
        //     .map_err(|e| {
        //         tonic::Status::unknown(format!(
        //             "failed to validate chain id during compact_block_range request: {e}"
        //         ))
        //     })?;

        let CompactBlockRangeRequest {
            start_height,
            end_height,
            keep_alive,
            ..
        } = request.into_inner();

        let current_height = snapshot
            .get_block_height()
            .await
            .map_err(|e| tonic::Status::unavailable(format!("error getting block height: {e}")))?;

        // Perform housekeeping, so long-lived connections don't cause pd to leak memory.
        std::mem::drop(snapshot);

        // Treat end_height = 0 as end_height = current_height so that if the
        // end_height is unspecified in the proto, it will be treated as a
        // request to sync up to the current height.
        let end_height = if end_height == 0 {
            current_height
        } else {
            std::cmp::min(end_height, current_height)
        };

        // Clone these, so we can keep copies in the worker task we spawn
        // to handle this request.
        let storage = self.storage.clone();
        let mut rx_state_snapshot = self.storage.subscribe();

        let (tx_blocks, rx_blocks) = mpsc::channel(10);
        let tx_blocks_err = tx_blocks.clone();
        // Wrap the block sender in a guard that ensures we only send the expected next block
        let mut tx_blocks = BlockSender {
            next_height: start_height,
            inner: tx_blocks,
        };
        tokio::spawn(
            async move {
                let _guard = CompactBlockConnectionCounter::new();

                // Phase 1: Catch up from the start height.
                tracing::debug!(
                    ?end_height,
                    "catching up from start height to current end height"
                );

                // We rely on a range query to fetch compact blocks in order and
                // pipe them to the client sync stream.
                let storage2 = storage.clone();
                let latest_snapshot = storage2.latest_snapshot();
                let mut cb_stream = latest_snapshot.stream_compact_block(start_height);

                while let Some(res_compact_block) = cb_stream.next().await {
                    let compact_block = match res_compact_block {
                        Ok(compact_block) => compact_block,
                        Err(e) => {
                            bail!("error streaming compact blocks: {e}")
                        }
                    };
                    if compact_block.height > end_height {
                        break;
                    }

                    // Tracked in #2908: we previously added a timeout on `send` targeting
                    // buffered streams staying full for too long. However, in at least a few
                    // "regular usage" instances we observed client streams stopping too eagerly.
                    // In #2932, it was established that the timeout had to be at least 10s to
                    // accommodate those usecases.
                    //
                    // Although we cannot exclude that clients actually did not poll the stream for
                    // more than `9s`, this seems unlikely. We are removing the timeout mechanism
                    // altogether for now. This might negatively impact memory usage under load.
                    // Future iterations of this work should start by moving block serialization
                    // outside of the `send_op` future, and investigate if long blocking sends can
                    // happen for benign reasons (i.e not caused by the client).
                    tx_blocks.send(compact_block).await?;
                    metrics::counter!(metrics::COMPACT_BLOCK_RANGE_SERVED_TOTAL).increment(1);
                }

                // If the client didn't request a keep-alive, we're done.
                if !keep_alive {
                    // Explicitly annotate the error type, so we can bubble up errors...
                    return Ok::<(), anyhow::Error>(());
                }

                // Before we can stream new compact blocks as they're created,
                // catch up on any blocks that have been created while catching up.
                let snapshot = rx_state_snapshot.borrow_and_update().clone();
                let cur_height = snapshot.version();
                tracing::debug!(
                    cur_height,
                    "finished request, client requested keep-alive, continuing to stream blocks"
                );

                // We want to send all blocks *after* end_height (which we already sent)
                // up to and including cur_height (which we won't send in the loop below).
                // This range could be empty.
                for height in (end_height + 1)..=cur_height {
                    tracing::debug!(?height, "sending block in phase 2 catch-up");
                    let block = snapshot
                        .compact_block(height)
                        .await
                        .expect("no error fetching block")
                        .expect("compact block for in-range height must be present");
                    tx_blocks.send(block).await?;
                    metrics::counter!(metrics::COMPACT_BLOCK_RANGE_SERVED_TOTAL).increment(1);
                }

                // Ensure that we don't hold a reference to the snapshot indefinitely
                // while we hold open the connection to notify the client of new blocks.
                std::mem::drop(snapshot);

                // Phase 2: wait on the height notifier and stream blocks as
                // they're created.
                //
                // Because we used borrow_and_update above, we know this will
                // wait for the *next* block to be created before firing.
                loop {
                    rx_state_snapshot
                        .changed()
                        .await
                        .expect("channel should be open");
                    let snapshot = rx_state_snapshot.borrow().clone();
                    let height = snapshot.version();
                    tracing::debug!(?height, "notifying client of new block");
                    let block = snapshot
                        .compact_block(height)
                        .await
                        .map_err(|e| tonic::Status::internal(e.to_string()))?
                        .expect("compact block for in-range height must be present");
                    tx_blocks.send(block).await?;
                    metrics::counter!(metrics::COMPACT_BLOCK_RANGE_SERVED_TOTAL).increment(1);
                }
            }
            .map_err(|e| async move {
                // ... into something that can convert them into a tonic error
                // and stuff it into a second copy of the response channel
                // to notify the client before the task exits.
                let _ = tx_blocks_err
                    .send(Err(tonic::Status::internal(e.to_string())))
                    .await;
            })
            .instrument(tracing::Span::current()),
        );

        // TODO: eventually, we may want to register joinhandles or something
        // and be able to track how many open connections we have, drop them to
        // manage load, etc.
        //
        // for now, assume that we can do c10k or whatever and don't worry about it.
        Ok(tonic::Response::new(
            tokio_stream::wrappers::ReceiverStream::new(rx_blocks)
                .map_ok(|block| CompactBlockRangeResponse {
                    compact_block: Some(block),
                })
                .boxed(),
        ))
    }

    #[instrument(
        skip(self, request),
        fields(
            start_height = request.get_ref().start_height,
            end_height = request.get_ref().end_height,
        ),
    )]
    async fn discovery_block_range(
        &self,
        request: tonic::Request<DiscoveryBlockRangeRequest>,
    ) -> Result<tonic::Response<Self::DiscoveryBlockRangeStream>, Status> {
        let DiscoveryBlockRangeRequest {
            start_height,
            end_height,
        } = request.into_inner();
        let end_height = bounded_discovery_end(&self.storage, start_height, end_height).await?;
        let storage = self.storage.clone();
        let (tx, rx) = mpsc::channel(10);

        tokio::spawn(async move {
            let snapshot = storage.latest_snapshot();
            let mut blocks = snapshot.stream_compact_block(start_height);
            while let Some(result) = blocks.next().await {
                let proto_block = match result {
                    Ok(block) if block.height <= end_height => block,
                    Ok(_) => break,
                    Err(error) => {
                        let _ = tx
                            .send(Err(Status::internal(format!(
                                "error streaming discovery blocks: {error:#}"
                            ))))
                            .await;
                        return;
                    }
                };
                let block = match crate::CompactBlock::try_from(proto_block) {
                    Ok(block) => block,
                    Err(error) => {
                        let _ = tx
                            .send(Err(Status::internal(format!(
                                "invalid stored compact block: {error:#}"
                            ))))
                            .await;
                        return;
                    }
                };
                let response = DiscoveryBlockRangeResponse {
                    discovery_block: Some(DiscoveryBlock::from(block).into()),
                };
                if tx.send(Ok(response)).await.is_err() {
                    return;
                }
            }
        });

        Ok(tonic::Response::new(
            tokio_stream::wrappers::ReceiverStream::new(rx).boxed(),
        ))
    }

    #[instrument(
        skip(self, request),
        fields(
            start_height = request.get_ref().start_height,
            end_height = request.get_ref().end_height,
            tag_count = request.get_ref().tags.len(),
        ),
    )]
    async fn note_candidates(
        &self,
        request: tonic::Request<NoteCandidatesRequest>,
    ) -> Result<tonic::Response<Self::NoteCandidatesStream>, Status> {
        let NoteCandidatesRequest {
            start_height,
            end_height,
            tags,
        } = request.into_inner();
        if tags.is_empty() {
            return Err(Status::invalid_argument(
                "at least one discovery tag is required",
            ));
        }
        if tags.len() > MAX_DISCOVERY_TAGS_PER_REQUEST {
            return Err(Status::invalid_argument(format!(
                "at most {MAX_DISCOVERY_TAGS_PER_REQUEST} discovery tags are allowed"
            )));
        }
        let tags = tags
            .into_iter()
            .map(discovery::Tag::try_from)
            .collect::<std::result::Result<BTreeSet<_>, _>>()
            .map_err(|error| Status::invalid_argument(format!("invalid discovery tag: {error}")))?;
        let end_height = bounded_discovery_end(&self.storage, start_height, end_height).await?;
        let storage = self.storage.clone();
        let (tx, rx) = mpsc::channel(10);

        tokio::spawn(async move {
            let snapshot = storage.latest_snapshot();
            let mut blocks = snapshot.stream_compact_block(start_height);
            while let Some(result) = blocks.next().await {
                let proto_block = match result {
                    Ok(block) if block.height <= end_height => block,
                    Ok(_) => break,
                    Err(error) => {
                        let _ = tx
                            .send(Err(Status::internal(format!(
                                "error scanning note candidates: {error:#}"
                            ))))
                            .await;
                        return;
                    }
                };
                let block = match crate::CompactBlock::try_from(proto_block) {
                    Ok(block) => block,
                    Err(error) => {
                        let _ = tx
                            .send(Err(Status::internal(format!(
                                "invalid stored compact block: {error:#}"
                            ))))
                            .await;
                        return;
                    }
                };
                for (index, payload) in block.state_payloads.into_iter().enumerate() {
                    let StatePayload::Note { note, .. } = payload else {
                        continue;
                    };
                    if note.is_dummy() || !tags.contains(&note.discovery_tag) {
                        continue;
                    }
                    let state_payload_index = match u32::try_from(index) {
                        Ok(index) => index,
                        Err(_) => {
                            let _ = tx
                                .send(Err(Status::internal(
                                    "compact block has more than u32::MAX state payloads",
                                )))
                                .await;
                            return;
                        }
                    };
                    let response: NoteCandidatesResponse = NoteCandidate {
                        height: block.height,
                        state_payload_index,
                        note_payload: *note,
                    }
                    .into();
                    if tx.send(Ok(response)).await.is_err() {
                        return;
                    }
                }
            }
        });

        Ok(tonic::Response::new(
            tokio_stream::wrappers::ReceiverStream::new(rx).boxed(),
        ))
    }

    #[instrument(
        skip(self, request),
        fields(
            start_height = request.get_ref().start_height,
            end_height = request.get_ref().end_height,
            tag_count = request.get_ref().tags.len(),
        ),
    )]
    async fn transaction_candidates(
        &self,
        request: tonic::Request<TransactionCandidatesRequest>,
    ) -> Result<tonic::Response<Self::TransactionCandidatesStream>, Status> {
        let TransactionCandidatesRequest {
            start_height,
            end_height,
            tags,
        } = request.into_inner();
        if tags.is_empty() {
            return Err(Status::invalid_argument(
                "at least one discovery tag is required",
            ));
        }
        if tags.len() > MAX_DISCOVERY_TAGS_PER_REQUEST {
            return Err(Status::invalid_argument(format!(
                "at most {MAX_DISCOVERY_TAGS_PER_REQUEST} discovery tags are allowed"
            )));
        }
        let tags = tags
            .into_iter()
            .map(discovery::Tag::try_from)
            .collect::<std::result::Result<BTreeSet<_>, _>>()
            .map_err(|error| Status::invalid_argument(format!("invalid discovery tag: {error}")))?;
        let end_height = bounded_discovery_end(&self.storage, start_height, end_height).await?;
        let storage = self.storage.clone();
        let (tx, rx) = mpsc::channel(10);

        tokio::spawn(async move {
            let snapshot = storage.latest_snapshot();
            let mut blocks = snapshot.stream_compact_block(start_height);
            while let Some(result) = blocks.next().await {
                let proto_block = match result {
                    Ok(block) if block.height <= end_height => block,
                    Ok(_) => break,
                    Err(error) => {
                        let _ = tx
                            .send(Err(Status::internal(format!(
                                "error scanning transaction candidates: {error:#}"
                            ))))
                            .await;
                        return;
                    }
                };
                let block = match crate::CompactBlock::try_from(proto_block) {
                    Ok(block) => block,
                    Err(error) => {
                        let _ = tx
                            .send(Err(Status::internal(format!(
                                "invalid stored compact block: {error:#}"
                            ))))
                            .await;
                        return;
                    }
                };

                let mut matches = BTreeMap::new();
                for transaction in block.transaction_discoveries {
                    let sender_match = tags.contains(&transaction.sender);
                    let receiver_match = tags.contains(&transaction.receiver);
                    if !sender_match && !receiver_match {
                        continue;
                    }
                    let entry = matches
                        .entry(transaction.transaction_id)
                        .or_insert((false, false));
                    entry.0 |= sender_match;
                    entry.1 |= receiver_match;
                }

                for (transaction_id, (sender_match, receiver_match)) in matches {
                    let response: TransactionCandidatesResponse = TransactionCandidate {
                        height: block.height,
                        transaction_id,
                        sender_match,
                        receiver_match,
                    }
                    .into();
                    if tx.send(Ok(response)).await.is_err() {
                        return;
                    }
                }
            }
        });

        Ok(tonic::Response::new(
            tokio_stream::wrappers::ReceiverStream::new(rx).boxed(),
        ))
    }
}

async fn bounded_discovery_end(
    storage: &Storage,
    start_height: u64,
    requested_end_height: u64,
) -> Result<u64, Status> {
    let current_height = storage
        .latest_snapshot()
        .get_block_height()
        .await
        .map_err(|error| Status::unavailable(format!("error getting block height: {error}")))?;
    let end_height = if requested_end_height == 0 {
        current_height
    } else {
        requested_end_height.min(current_height)
    };
    if end_height < start_height {
        return Err(Status::invalid_argument(
            "end height must not be lower than start height",
        ));
    }
    if end_height.saturating_sub(start_height) >= MAX_DISCOVERY_BLOCKS_PER_REQUEST {
        return Err(Status::invalid_argument(format!(
            "discovery requests may span at most {MAX_DISCOVERY_BLOCKS_PER_REQUEST} blocks; paginate larger ranges"
        )));
    }
    Ok(end_height)
}

/// RAII guard used to increment and decrement an active connection counter.
///
/// This ensures we appropriately decrement the counter when the guard goes out of scope.
struct CompactBlockConnectionCounter {}

impl CompactBlockConnectionCounter {
    pub fn new() -> Self {
        metrics::gauge!(metrics::COMPACT_BLOCK_RANGE_ACTIVE_CONNECTIONS).increment(1.0);
        CompactBlockConnectionCounter {}
    }
}

impl Drop for CompactBlockConnectionCounter {
    fn drop(&mut self) {
        metrics::gauge!(metrics::COMPACT_BLOCK_RANGE_ACTIVE_CONNECTIONS).decrement(1.0);
    }
}

/// Stateful wrapper for a mpsc that tracks the outbound height
struct BlockSender {
    next_height: u64,
    inner: mpsc::Sender<Result<ProtoCompactBlock, tonic::Status>>,
}

impl BlockSender {
    async fn send(&mut self, block: ProtoCompactBlock) -> anyhow::Result<()> {
        if block.height != self.next_height {
            bail!(
                "block height mismatch while sending: expected {}, got {}",
                self.next_height,
                block.height
            );
        }
        self.inner.send(Ok(block)).await?;
        self.next_height += 1;
        Ok(())
    }
}
