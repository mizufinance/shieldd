//! Shared timing and state-I/O instrumentation for tree research.

use std::{
    any::{Any, TypeId},
    collections::{BTreeMap, BTreeSet},
    future::Future,
    ops::RangeBounds,
    sync::Arc,
    time::Instant,
};

use anyhow::{Context, Result};
use cnidarium::{StateRead, StateWrite};
use futures::{future::BoxFuture, stream::BoxStream, FutureExt, StreamExt};
use parking_lot::Mutex;
use serde::Serialize;
use tendermint::abci;

#[derive(Clone, Copy, Debug, Eq, Ord, PartialEq, PartialOrd, Serialize)]
pub struct NodeKey {
    pub level: u8,
    pub position: u64,
}

#[derive(Clone, Copy, Debug, Eq, PartialEq, Serialize)]
pub struct LeafMutation<T> {
    pub position: u64,
    pub value: T,
}

#[derive(Clone, Copy, Debug, Eq, PartialEq, Serialize)]
pub struct NodeMutation<T> {
    pub key: NodeKey,
    pub value: T,
}

#[derive(Clone, Debug, Default, Eq, PartialEq, Serialize)]
pub struct IoStats {
    pub verifiable_reads: u64,
    pub nonverifiable_reads: u64,
    pub object_reads: u64,
    pub prefix_scans: u64,
    pub range_scans: u64,
    pub verifiable_writes: u64,
    pub nonverifiable_writes: u64,
    pub object_writes: u64,
    pub events: u64,
    pub read_key_bytes: u64,
    pub read_value_bytes: u64,
    pub written_key_bytes: u64,
    pub written_value_bytes: u64,
    pub overlay_hits: u64,
    pub unique_read_keys: usize,
    pub unique_written_keys: usize,
    #[serde(skip)]
    read_keys: BTreeSet<Vec<u8>>,
    #[serde(skip)]
    written_keys: BTreeSet<Vec<u8>>,
}

impl IoStats {
    pub fn is_empty(&self) -> bool {
        self.verifiable_reads == 0
            && self.nonverifiable_reads == 0
            && self.object_reads == 0
            && self.prefix_scans == 0
            && self.range_scans == 0
            && self.verifiable_writes == 0
            && self.nonverifiable_writes == 0
            && self.object_writes == 0
            && self.events == 0
    }

    fn record_read_key(&mut self, key: &[u8]) {
        self.read_key_bytes += key.len() as u64;
        self.read_keys.insert(key.to_vec());
        self.unique_read_keys = self.read_keys.len();
    }

    fn record_write_key(&mut self, key: &[u8]) {
        self.written_key_bytes += key.len() as u64;
        self.written_keys.insert(key.to_vec());
        self.unique_written_keys = self.written_keys.len();
    }
}

#[derive(Clone, Debug, Serialize)]
pub struct TimingDistribution {
    pub warmups: usize,
    pub repetitions: usize,
    pub median_ms: f64,
    pub p95_ms: f64,
    pub min_ms: f64,
    pub max_ms: f64,
}

impl TimingDistribution {
    fn from_samples(warmups: usize, mut samples: Vec<f64>) -> Result<Self> {
        anyhow::ensure!(
            !samples.is_empty(),
            "at least one timing sample is required"
        );
        samples.sort_by(f64::total_cmp);
        let percentile = |fraction: f64| {
            let index = ((samples.len() - 1) as f64 * fraction).ceil() as usize;
            samples[index]
        };
        Ok(Self {
            warmups,
            repetitions: samples.len(),
            median_ms: percentile(0.5),
            p95_ms: percentile(0.95),
            min_ms: samples[0],
            max_ms: *samples.last().context("timing samples disappeared")?,
        })
    }
}

pub fn measure_repeated<T>(
    warmups: usize,
    repetitions: usize,
    mut run: impl FnMut() -> Result<T>,
) -> Result<(T, TimingDistribution)> {
    for _ in 0..warmups {
        run()?;
    }
    let mut samples = Vec::with_capacity(repetitions);
    let mut output = None;
    for _ in 0..repetitions {
        let started = Instant::now();
        output = Some(run()?);
        samples.push(started.elapsed().as_secs_f64() * 1_000.0);
    }
    Ok((
        output.context("at least one measured repetition is required")?,
        TimingDistribution::from_samples(warmups, samples)?,
    ))
}

pub async fn measure_repeated_async<T, F, Fut>(
    warmups: usize,
    repetitions: usize,
    mut run: F,
) -> Result<(T, TimingDistribution)>
where
    F: FnMut() -> Fut,
    Fut: Future<Output = Result<T>>,
{
    for _ in 0..warmups {
        run().await?;
    }
    let mut samples = Vec::with_capacity(repetitions);
    let mut output = None;
    for _ in 0..repetitions {
        let started = Instant::now();
        output = Some(run().await?);
        samples.push(started.elapsed().as_secs_f64() * 1_000.0);
    }
    Ok((
        output.context("at least one measured repetition is required")?,
        TimingDistribution::from_samples(warmups, samples)?,
    ))
}

/// Counts state operations while delegating semantics to the wrapped state.
pub struct CountingState<S> {
    inner: S,
    stats: Arc<Mutex<IoStats>>,
}

impl<S> CountingState<S> {
    pub fn new(inner: S) -> Self {
        Self {
            inner,
            stats: Arc::new(Mutex::new(IoStats::default())),
        }
    }

    pub fn stats(&self) -> IoStats {
        self.stats.lock().clone()
    }

    pub fn inner(&self) -> &S {
        &self.inner
    }

    pub fn record_overlay_hits(&self, hits: usize) {
        self.stats.lock().overlay_hits += hits as u64;
    }

    pub fn into_inner(self) -> S {
        self.inner
    }
}

impl<S: StateRead> StateRead for CountingState<S> {
    type GetRawFut = BoxFuture<'static, Result<Option<Vec<u8>>>>;
    type PrefixRawStream = BoxStream<'static, Result<(String, Vec<u8>)>>;
    type PrefixKeysStream = BoxStream<'static, Result<String>>;
    type NonconsensusPrefixRawStream = BoxStream<'static, Result<(Vec<u8>, Vec<u8>)>>;
    type NonconsensusRangeRawStream = BoxStream<'static, Result<(Vec<u8>, Vec<u8>)>>;

    fn get_raw(&self, key: &str) -> Self::GetRawFut {
        {
            let mut stats = self.stats.lock();
            stats.verifiable_reads += 1;
            stats.record_read_key(key.as_bytes());
        }
        let stats = Arc::clone(&self.stats);
        self.inner
            .get_raw(key)
            .map(move |result| {
                if let Ok(Some(value)) = &result {
                    stats.lock().read_value_bytes += value.len() as u64;
                }
                result
            })
            .boxed()
    }

    fn nonverifiable_get_raw(&self, key: &[u8]) -> Self::GetRawFut {
        {
            let mut stats = self.stats.lock();
            stats.nonverifiable_reads += 1;
            stats.record_read_key(key);
        }
        let stats = Arc::clone(&self.stats);
        self.inner
            .nonverifiable_get_raw(key)
            .map(move |result| {
                if let Ok(Some(value)) = &result {
                    stats.lock().read_value_bytes += value.len() as u64;
                }
                result
            })
            .boxed()
    }

    fn object_get<T: Any + Send + Sync + Clone>(&self, key: &'static str) -> Option<T> {
        self.stats.lock().object_reads += 1;
        self.inner.object_get(key)
    }

    fn object_type(&self, key: &'static str) -> Option<TypeId> {
        self.stats.lock().object_reads += 1;
        self.inner.object_type(key)
    }

    fn prefix_raw(&self, prefix: &str) -> Self::PrefixRawStream {
        self.stats.lock().prefix_scans += 1;
        let stats = Arc::clone(&self.stats);
        self.inner
            .prefix_raw(prefix)
            .map(move |result| {
                if let Ok((key, value)) = &result {
                    let mut stats = stats.lock();
                    stats.record_read_key(key.as_bytes());
                    stats.read_value_bytes += value.len() as u64;
                }
                result
            })
            .boxed()
    }

    fn prefix_keys(&self, prefix: &str) -> Self::PrefixKeysStream {
        self.stats.lock().prefix_scans += 1;
        let stats = Arc::clone(&self.stats);
        self.inner
            .prefix_keys(prefix)
            .map(move |result| {
                if let Ok(key) = &result {
                    stats.lock().record_read_key(key.as_bytes());
                }
                result
            })
            .boxed()
    }

    fn nonverifiable_prefix_raw(&self, prefix: &[u8]) -> Self::NonconsensusPrefixRawStream {
        self.stats.lock().prefix_scans += 1;
        let stats = Arc::clone(&self.stats);
        self.inner
            .nonverifiable_prefix_raw(prefix)
            .map(move |result| {
                if let Ok((key, value)) = &result {
                    let mut stats = stats.lock();
                    stats.record_read_key(key);
                    stats.read_value_bytes += value.len() as u64;
                }
                result
            })
            .boxed()
    }

    fn nonverifiable_range_raw(
        &self,
        prefix: Option<&[u8]>,
        range: impl RangeBounds<Vec<u8>>,
    ) -> Result<Self::NonconsensusRangeRawStream> {
        self.stats.lock().range_scans += 1;
        let stats = Arc::clone(&self.stats);
        Ok(self
            .inner
            .nonverifiable_range_raw(prefix, range)?
            .map(move |result| {
                if let Ok((key, value)) = &result {
                    let mut stats = stats.lock();
                    stats.record_read_key(key);
                    stats.read_value_bytes += value.len() as u64;
                }
                result
            })
            .boxed())
    }
}

impl<S: StateWrite> StateWrite for CountingState<S> {
    fn put_raw(&mut self, key: String, value: Vec<u8>) {
        {
            let mut stats = self.stats.lock();
            stats.verifiable_writes += 1;
            stats.record_write_key(key.as_bytes());
            stats.written_value_bytes += value.len() as u64;
        }
        self.inner.put_raw(key, value);
    }

    fn delete(&mut self, key: String) {
        {
            let mut stats = self.stats.lock();
            stats.verifiable_writes += 1;
            stats.record_write_key(key.as_bytes());
        }
        self.inner.delete(key);
    }

    fn nonverifiable_put_raw(&mut self, key: Vec<u8>, value: Vec<u8>) {
        {
            let mut stats = self.stats.lock();
            stats.nonverifiable_writes += 1;
            stats.record_write_key(&key);
            stats.written_value_bytes += value.len() as u64;
        }
        self.inner.nonverifiable_put_raw(key, value);
    }

    fn nonverifiable_delete(&mut self, key: Vec<u8>) {
        {
            let mut stats = self.stats.lock();
            stats.nonverifiable_writes += 1;
            stats.record_write_key(&key);
        }
        self.inner.nonverifiable_delete(key);
    }

    fn object_put<T: Clone + Any + Send + Sync>(&mut self, key: &'static str, value: T) {
        self.stats.lock().object_writes += 1;
        self.inner.object_put(key, value);
    }

    fn object_delete(&mut self, key: &'static str) {
        self.stats.lock().object_writes += 1;
        self.inner.object_delete(key);
    }

    fn object_merge(
        &mut self,
        objects: BTreeMap<&'static str, Option<Box<dyn Any + Send + Sync>>>,
    ) {
        self.stats.lock().object_writes += objects.len() as u64;
        self.inner.object_merge(objects);
    }

    fn record(&mut self, event: abci::Event) {
        self.stats.lock().events += 1;
        self.inner.record(event);
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use cnidarium::{StateDelta, TempStorage};

    #[tokio::test]
    async fn counting_state_preserves_reads_and_writes() -> Result<()> {
        let storage = TempStorage::new().await?;
        let mut state = CountingState::new(StateDelta::new(storage.latest_snapshot()));
        state.put_raw("research/key".to_owned(), vec![1, 2, 3]);
        assert_eq!(state.get_raw("research/key").await?, Some(vec![1, 2, 3]));
        let stats = state.stats();
        assert_eq!(stats.verifiable_reads, 1);
        assert_eq!(stats.verifiable_writes, 1);
        assert_eq!(stats.read_value_bytes, 3);
        assert_eq!(stats.written_value_bytes, 3);
        Ok(())
    }

    #[test]
    fn timing_distribution_reports_requested_repetitions() -> Result<()> {
        let (_, timing) = measure_repeated(1, 3, || Ok(7))?;
        assert_eq!(timing.warmups, 1);
        assert_eq!(timing.repetitions, 3);
        assert!(timing.min_ms <= timing.median_ms && timing.median_ms <= timing.max_ms);
        Ok(())
    }
}
