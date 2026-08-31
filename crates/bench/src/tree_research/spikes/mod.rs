//! Decision-oriented tree prototypes built outside production paths.

mod compliance;
mod nullifier;
mod poseidon;
mod tct;

use anyhow::Result;

use super::{InputPattern, Measurement};

#[derive(Clone, Copy, Debug)]
pub struct SpikeConfig {
    pub batch_size: usize,
    pub prefill_size: usize,
    pub threads: usize,
    pub warmups: usize,
    pub repetitions: usize,
    pub pattern: InputPattern,
    pub parallel_threshold: usize,
    pub max_concurrent_reads: usize,
}

impl SpikeConfig {
    pub fn smoke(threads: usize) -> Self {
        Self {
            batch_size: 100,
            prefill_size: 100,
            threads,
            warmups: 0,
            repetitions: 1,
            pattern: InputPattern::Spread,
            parallel_threshold: 64,
            max_concurrent_reads: 256,
        }
    }
}

pub async fn run_spike_suite(config: SpikeConfig) -> Result<Vec<Measurement>> {
    let mut measurements = Vec::new();
    measurements.extend(nullifier::measure(&config).await?);
    measurements.extend(tct::measure(&config)?);
    measurements.extend(compliance::measure(&config)?);
    measurements.extend(poseidon::measure(&config)?);
    Ok(measurements)
}

pub async fn run_nullifier_spikes(config: &SpikeConfig) -> Result<Vec<Measurement>> {
    nullifier::measure(config).await
}

pub fn run_tct_spikes(config: &SpikeConfig) -> Result<Vec<Measurement>> {
    tct::measure(config)
}

pub fn run_compliance_spikes(config: &SpikeConfig) -> Result<Vec<Measurement>> {
    compliance::measure(config)
}

pub fn run_poseidon_spikes(config: &SpikeConfig) -> Result<Vec<Measurement>> {
    poseidon::measure(config)
}
