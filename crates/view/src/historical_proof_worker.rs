use std::sync::Arc;

use anyhow::Context;
#[cfg(feature = "rpc")]
use async_trait::async_trait;
#[cfg(feature = "rpc")]
use shieldd_sdk_proto::core::component::sct::v1::{
    query_service_client::QueryServiceClient as SctQueryServiceClient,
    ArchivedNullifierProofRequest,
};
use shieldd_sdk_sct::nullifier_generation::NullifierWindow;
#[cfg(feature = "rpc")]
use shieldd_sdk_sct::{nullifier_generation::ArchivedNullifierProof, Nullifier};
#[cfg(feature = "rpc")]
use tonic::transport::Channel;

use crate::{
    advance_historical_proof_cache, historical_proof_cache::stage_historical_witness,
    storage::HistoricalCacheWrite, HistoricalProofCache, HistoricalProofCacheState,
    HistoricalProofUpdateError, HistoricalWitnessSource, Storage,
};

#[cfg(feature = "rpc")]
pub struct RpcHistoricalWitnessSource {
    pub channel: Channel,
}

#[cfg(feature = "rpc")]
#[async_trait]
impl HistoricalWitnessSource for RpcHistoricalWitnessSource {
    async fn nonmembership_proof(
        &self,
        nullifier: Nullifier,
        generation_index: u64,
    ) -> anyhow::Result<ArchivedNullifierProof> {
        let response = SctQueryServiceClient::new(self.channel.clone())
            .archived_nullifier_proof(ArchivedNullifierProofRequest {
                generation_index,
                nullifier: Some(nullifier.into()),
            })
            .await?
            .into_inner();
        let proof: ArchivedNullifierProof = response.try_into()?;
        proof.verify_for(nullifier)?;
        Ok(proof)
    }
}

pub struct HistoricalProofWorker {
    storage: Storage,
    witness_source: Arc<dyn HistoricalWitnessSource>,
    registry: Arc<shieldd_sdk_proof_params::pari::Registry>,
}

impl HistoricalProofWorker {
    pub async fn new(
        storage: Storage,
        witness_source: Arc<dyn HistoricalWitnessSource>,
        registry: Arc<shieldd_sdk_proof_params::pari::Registry>,
    ) -> anyhow::Result<Self> {
        storage.bind_registry(registry.id()).await?;
        Ok(Self {
            storage,
            witness_source,
            registry,
        })
    }

    async fn persist_failure(
        &self,
        mut cache: HistoricalProofCache,
        expected: HistoricalProofCache,
        window: NullifierWindow,
        error: HistoricalProofUpdateError,
    ) -> anyhow::Result<()> {
        cache.recover_after_restart()?;
        if cache.state != HistoricalProofCacheState::Updating {
            cache.transition(HistoricalProofCacheState::Updating)?;
        }
        match error {
            HistoricalProofUpdateError::InvalidPrefix(error) => {
                cache = HistoricalProofCache::pending(cache.proof.nullifier);
                cache.registry_id = Some(self.registry.id());
                cache.transition(HistoricalProofCacheState::Updating)?;
                cache.block_on_witness_source(format!("discarded mismatched history prefix; backfill restarts on next pass: {error:#}"))?;
            }
            HistoricalProofUpdateError::WitnessSource(error) => {
                cache.block_on_witness_source(format!("{error:#}"))?;
            }
            HistoricalProofUpdateError::Prover(error) => {
                cache.block_on_prover(format!("{error:#}"))?;
            }
            HistoricalProofUpdateError::Invalid(error) => {
                cache.transition(HistoricalProofCacheState::Invalid)?;
                cache.set_error(format!("{error:#}"));
            }
        }
        self.storage
            .update_historical_proof_cache(expected, window, cache)
            .await
            .map(|_| ())
    }

    async fn update_cache(
        &self,
        mut cache: HistoricalProofCache,
        window: NullifierWindow,
    ) -> anyhow::Result<()> {
        anyhow::ensure!(
            cache.registry_id.is_none() || cache.registry_id == Some(self.registry.id()),
            "history cache belongs to another Pari registry"
        );
        if cache.state == HistoricalProofCacheState::Ready
            && cache.ensure_ready_for(window, self.registry.id()).is_ok()
        {
            return Ok(());
        }
        let mut expected = cache.clone();
        cache.recover_after_restart()?;
        if cache.state == HistoricalProofCacheState::Invalid {
            return Ok(());
        }
        // A long archive must yield to the other notes after at most one proof.
        for _ in 0..shieldd_sdk_circuits::history::CHUNK_SIZE {
            if let Err(error) = stage_historical_witness(
                &mut cache,
                window,
                self.witness_source.as_ref(),
                self.registry.id(),
            )
            .await
            {
                return self.persist_failure(cache, expected, window, error).await;
            }
            if self
                .storage
                .update_historical_proof_cache(expected.clone(), window, cache.clone())
                .await?
                != HistoricalCacheWrite::Stored
            {
                return Ok(());
            }
            expected = cache.clone();
            if cache.state == HistoricalProofCacheState::Ready {
                return Ok(());
            }
            if !cache.has_staged_proof(window)? {
                continue;
            }
            match advance_historical_proof_cache(&mut cache, window, self.registry.clone()).await {
                Ok(()) => {
                    return self
                        .storage
                        .update_historical_proof_cache(expected, window, cache)
                        .await
                        .map(|_| ());
                }
                Err(error) => return self.persist_failure(cache, expected, window, error).await,
            }
        }
        Ok(())
    }

    /// Advance each unspent note by at most one proof, persisting staged paths first.
    pub async fn update(&mut self) -> anyhow::Result<()> {
        let Some(window) = self
            .storage
            .nullifier_window_if_initialized()
            .await
            .context("load nullifier window for historical proof worker")?
        else {
            return Ok(());
        };
        let mut cursor = None;
        loop {
            let page = self.storage.historical_proof_cache_page(cursor).await?;
            if page.is_empty() {
                break;
            }
            for cache in page {
                cursor = Some(cache.proof.nullifier);
                if let Err(error) = self.update_cache(cache, window).await {
                    tracing::warn!(?error, "historical proof cache update failed");
                }
            }
        }
        Ok(())
    }
}
