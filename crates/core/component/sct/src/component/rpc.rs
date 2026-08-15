use cnidarium::Storage;
use pbjson_types::Timestamp;
use shieldd_sdk_proto::core::component::sct::v1::query_service_server::QueryService;
use shieldd_sdk_proto::core::component::sct::v1::{
    AnchorByHeightRequest, AnchorByHeightResponse, ArchivedNullifierProofRequest,
    ArchivedNullifierProofResponse, EpochByHeightRequest, EpochByHeightResponse, NullifierRequest,
    NullifierResponse, NullifierTreeLookup, NullifierWindowRequest, NullifierWindowResponse,
    SctFrontierRequest, SctFrontierResponse, TimestampByHeightRequest, TimestampByHeightResponse,
};
use shieldd_sdk_proto::crypto::tct::v1 as pb_tct;
use std::sync::Arc;
use tokio::sync::Semaphore;
use tonic::Status;
use tracing::instrument;

use crate::{generation_pack::GenerationPackRepository, nullifier_tree, state_key, Nullifier};

use super::clock::EpochRead;
use super::tree::SctRead;

// TODO: Hide this and only expose a Router?
pub struct Server {
    storage: Storage,
    nullifier_proofs: Arc<Semaphore>,
    generation_packs: Option<GenerationPackRepository>,
}

impl Server {
    const MAX_CONCURRENT_NULLIFIER_PROOFS: usize = 32;

    pub fn new(storage: Storage) -> Self {
        Self {
            storage,
            nullifier_proofs: Arc::new(Semaphore::new(Self::MAX_CONCURRENT_NULLIFIER_PROOFS)),
            generation_packs: None,
        }
    }

    pub fn with_generation_packs(
        storage: Storage,
        generation_packs: GenerationPackRepository,
    ) -> Self {
        Self {
            storage,
            nullifier_proofs: Arc::new(Semaphore::new(Self::MAX_CONCURRENT_NULLIFIER_PROOFS)),
            generation_packs: Some(generation_packs),
        }
    }
}

#[tonic::async_trait]
impl QueryService for Server {
    #[instrument(skip(self, request))]
    async fn epoch_by_height(
        &self,
        request: tonic::Request<EpochByHeightRequest>,
    ) -> Result<tonic::Response<EpochByHeightResponse>, Status> {
        let state = self.storage.latest_snapshot();

        let epoch = state
            .get_epoch_by_height(request.get_ref().height)
            .await
            .map_err(|e| tonic::Status::unknown(format!("could not get epoch for height: {e}")))?;

        Ok(tonic::Response::new(EpochByHeightResponse {
            epoch: Some(epoch.into()),
        }))
    }

    #[instrument(skip(self, request))]
    async fn anchor_by_height(
        &self,
        request: tonic::Request<AnchorByHeightRequest>,
    ) -> Result<tonic::Response<AnchorByHeightResponse>, Status> {
        let state = self.storage.latest_snapshot();

        let height = request.get_ref().height;
        let anchor = state.get_anchor_by_height(height).await.map_err(|e| {
            tonic::Status::unknown(format!("could not get anchor for height {height}: {e}"))
        })?;

        Ok(tonic::Response::new(AnchorByHeightResponse {
            anchor: anchor.map(Into::into),
        }))
    }

    #[instrument(skip(self, request))]
    async fn timestamp_by_height(
        &self,
        request: tonic::Request<TimestampByHeightRequest>,
    ) -> Result<tonic::Response<TimestampByHeightResponse>, Status> {
        let state = self.storage.latest_snapshot();

        let height = request.get_ref().height;
        let block_time = state.get_block_timestamp(height).await.map_err(|e| {
            tonic::Status::unknown(format!("could not get timestamp for height {height}: {e}"))
        })?;
        let timestamp = chrono::DateTime::parse_from_rfc3339(block_time.to_rfc3339().as_str())
            .expect("timestamp should roundtrip to string");

        Ok(tonic::Response::new(TimestampByHeightResponse {
            timestamp: Some(Timestamp {
                seconds: timestamp.timestamp(),
                nanos: timestamp.timestamp_subsec_nanos() as i32,
            }),
        }))
    }

    #[instrument(skip(self, request))]
    async fn sct_frontier(
        &self,
        request: tonic::Request<SctFrontierRequest>,
    ) -> Result<tonic::Response<SctFrontierResponse>, Status> {
        let state = self.storage.latest_snapshot();

        let with_proof = request.get_ref().with_proof;

        let frontier = state.get_sct().await;
        let current_height = state
            .get_block_height()
            .await
            .map_err(|e| tonic::Status::unknown(format!("could not get current height: {e}")))?;

        let (anchor, maybe_proof) = if !with_proof {
            (frontier.root(), None)
        } else {
            let anchor_key = state_key::tree::anchor_by_height(current_height)
                .as_bytes()
                .to_vec();
            let (maybe_raw_anchor, proof) =
                state.get_with_proof(anchor_key).await.map_err(|e| {
                    tonic::Status::unknown(format!(
                        "could not get w/ proof anchor for height {current_height}: {e}"
                    ))
                })?;

            let Some(raw_anchor) = maybe_raw_anchor else {
                return Err(tonic::Status::not_found(format!(
                    "anchor not found for height {current_height}"
                )));
            };

            let proto_anchor: pb_tct::MerkleRoot = pb_tct::MerkleRoot { inner: raw_anchor };
            let anchor: shieldd_sdk_tct::Root = proto_anchor
                .try_into()
                .map_err(|_| tonic::Status::internal("failed to parse anchor"))?;
            (anchor, Some(proof.into()))
        };

        // Sanity check we got the right anchor - redundant if no proof was requested
        let locked_anchor = frontier.root();
        if anchor != locked_anchor {
            return Err(tonic::Status::internal(format!(
                "anchor mismatch: {anchor} != {locked_anchor}"
            )));
        }

        let raw_frontier = bincode::serialize(&frontier)
            .map_err(|e| tonic::Status::internal(format!("failed to serialize SCT: {e}")))?;

        Ok(tonic::Response::new(SctFrontierResponse {
            height: current_height,
            anchor: Some(anchor.into()),
            compact_frontier: raw_frontier,
            proof: maybe_proof,
        }))
    }

    #[instrument(skip(self, request))]
    async fn nullifier(
        &self,
        request: tonic::Request<NullifierRequest>,
    ) -> Result<tonic::Response<NullifierResponse>, Status> {
        let state = self.storage.latest_snapshot();
        let request = request.into_inner();
        let nullifier = request
            .nullifier
            .ok_or_else(|| tonic::Status::invalid_argument("missing nullifier"))?;
        let nullifier = Nullifier::try_from(nullifier)
            .map_err(|e| tonic::Status::invalid_argument(format!("invalid nullifier: {e}")))?;
        let generation_state = nullifier_tree::generation_state(&state)
            .await
            .map_err(|e| tonic::Status::unknown(format!("could not read nullifier window: {e}")))?;
        let active_lookups = if request.with_proof {
            let _permit = self
                .nullifier_proofs
                .clone()
                .try_acquire_owned()
                .map_err(|_| {
                    tonic::Status::resource_exhausted(
                        "nullifier proof service is at capacity; retry the request",
                    )
                })?;
            let lookups = nullifier_tree::active_lookups(&state, nullifier)
                .await
                .map_err(|e| tonic::Status::unknown(format!("could not query nullifier: {e}")))?;
            lookups
                .into_iter()
                .map(|lookup| {
                    Ok(NullifierTreeLookup {
                        tree: Some(lookup.tree.into()),
                        root: lookup.root.to_vec(),
                        spent: lookup.spent,
                        proof: Some(lookup.proof.into()),
                    })
                })
                .collect::<Result<Vec<_>, Status>>()?
        } else {
            let mut trees = vec![(generation_state.current_tree, generation_state.current_root)];
            if let (Some(tree), Some(root)) = (
                generation_state.previous_tree,
                generation_state.previous_root,
            ) {
                trees.push((tree, root));
            }
            let mut lookups = Vec::with_capacity(trees.len());
            for (tree, root) in trees {
                lookups.push(NullifierTreeLookup {
                    tree: Some(tree.into()),
                    root: root.to_vec(),
                    spent: nullifier_tree::is_spent_in_tree(&state, tree, nullifier)
                        .await
                        .map_err(|e| {
                            tonic::Status::unknown(format!("could not query nullifier: {e}"))
                        })?,
                    proof: None,
                });
            }
            lookups
        };
        let spent = active_lookups.iter().any(|lookup| lookup.spent);

        Ok(tonic::Response::new(NullifierResponse {
            spent,
            window: Some(generation_state.window().into()),
            active_lookups,
        }))
    }

    #[instrument(skip(self, _request))]
    async fn nullifier_window(
        &self,
        _request: tonic::Request<NullifierWindowRequest>,
    ) -> Result<tonic::Response<NullifierWindowResponse>, Status> {
        let state = self.storage.latest_snapshot();
        let generation_state = nullifier_tree::generation_state(&state)
            .await
            .map_err(|e| tonic::Status::unknown(format!("could not read nullifier window: {e}")))?;
        Ok(tonic::Response::new(NullifierWindowResponse {
            window: Some(generation_state.window().into()),
        }))
    }

    #[instrument(skip(self, request))]
    async fn archived_nullifier_proof(
        &self,
        request: tonic::Request<ArchivedNullifierProofRequest>,
    ) -> Result<tonic::Response<ArchivedNullifierProofResponse>, Status> {
        let _permit = self
            .nullifier_proofs
            .clone()
            .try_acquire_owned()
            .map_err(|_| {
                tonic::Status::resource_exhausted(
                    "nullifier proof service is at capacity; retry the request",
                )
            })?;
        let request = request.into_inner();
        let nullifier = request
            .nullifier
            .ok_or_else(|| tonic::Status::invalid_argument("missing nullifier"))?
            .try_into()
            .map_err(|e| tonic::Status::invalid_argument(format!("invalid nullifier: {e}")))?;
        let state = self.storage.latest_snapshot();
        let proof = if let Some(repository) = self
            .generation_packs
            .clone()
            .filter(|repository| repository.contains(request.generation_index))
        {
            let archived = nullifier_tree::archived_generation(&state, request.generation_index)
                .await
                .map_err(|e| {
                    tonic::Status::not_found(format!("historical proof unavailable: {e}"))
                })?;
            let packed = tokio::task::spawn_blocking(move || {
                repository
                    .nonmembership_proof(archived, nullifier)
                    .map(|proof| *proof)
            })
            .await
            .map_err(|e| tonic::Status::internal(format!("historical proof task failed: {e}")))?;
            match packed {
                Ok(proof) => proof,
                Err(pack_error) => nullifier_tree::archived_nonmembership_proof(
                    &state,
                    request.generation_index,
                    nullifier,
                )
                .await
                .map_err(|expanded_error| {
                    tonic::Status::not_found(format!(
                        "historical proof unavailable from pack ({pack_error}) or expanded tree ({expanded_error})"
                    ))
                })?,
            }
        } else {
            nullifier_tree::archived_nonmembership_proof(
                &state,
                request.generation_index,
                nullifier,
            )
            .await
            .map_err(|e| tonic::Status::not_found(format!("historical proof unavailable: {e}")))?
        };
        Ok(tonic::Response::new(proof.into()))
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use cnidarium::{StateDelta, TempStorage};
    use decaf377::Fq;
    use tempfile::tempdir;

    fn nullifier(value: u64) -> Nullifier {
        Nullifier(Fq::from(value))
    }

    #[tokio::test]
    async fn archived_rpc_uses_pack_after_expanded_tree_is_pruned() -> anyhow::Result<()> {
        let storage = TempStorage::new().await?;
        let mut state = StateDelta::new(storage.latest_snapshot());
        nullifier_tree::initialize(&mut state).await?;
        nullifier_tree::insert_batch(&mut state, [nullifier(7), nullifier(1)]).await?;
        nullifier_tree::rollover(&mut state, 30, 1 << 32).await?;
        nullifier_tree::rollover(&mut state, 60, 2 << 32).await?;
        let archived = nullifier_tree::archived_generation(&state, 0).await?;
        let pack = nullifier_tree::build_generation_pack(&state, 0).await?;
        let directory = tempdir()?;
        let repository = GenerationPackRepository::new(directory.path().to_path_buf(), 1)?;
        let receipt = repository.write(&pack)?;
        nullifier_tree::record_generation_pack_completion(&mut state, &receipt).await?;
        nullifier_tree::prune_packed_generation(&mut state, &receipt).await?;
        storage.commit(state).await?;

        let server = Server::with_generation_packs(storage.as_ref().clone(), repository);
        let response = QueryService::archived_nullifier_proof(
            &server,
            tonic::Request::new(ArchivedNullifierProofRequest {
                generation_index: 0,
                nullifier: Some(nullifier(8).into()),
            }),
        )
        .await?
        .into_inner();
        let proof: crate::nullifier_generation::ArchivedNullifierProof = response.try_into()?;
        proof.verify_for(nullifier(8))?;
        assert_eq!(proof.generation_root, archived.generation_root);
        Ok(())
    }
}
