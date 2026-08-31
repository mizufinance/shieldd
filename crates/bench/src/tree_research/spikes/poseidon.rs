use anyhow::{ensure, Result};
use decaf377::Fq;
use rayon::prelude::*;

use super::super::{
    field_values,
    metrics::{measure_repeated, IoStats},
    pool, root_hex, Measurement,
};
use super::SpikeConfig;

fn hash_inputs(inputs: &[[Fq; 4]]) -> Vec<Fq> {
    inputs
        .iter()
        .map(|input| poseidon377::hash_4(&Fq::from(0u64), (*input).into()))
        .collect()
}

fn hash_inputs_parallel(inputs: &[[Fq; 4]], threads: usize) -> Result<Vec<Fq>> {
    let pool = pool(threads)?;
    Ok(pool.install(|| {
        inputs
            .par_iter()
            .map(|input| poseidon377::hash_4(&Fq::from(0u64), (*input).into()))
            .collect()
    }))
}

pub fn measure(config: &SpikeConfig) -> Result<Vec<Measurement>> {
    let values = field_values(config.batch_size.saturating_mul(4), config.pattern);
    let inputs: Vec<[Fq; 4]> = values
        .chunks_exact(4)
        .map(|chunk| chunk.try_into().expect("chunks have four field elements"))
        .collect();

    let (sequential, sequential_timing) =
        measure_repeated(config.warmups, config.repetitions, || {
            Ok(hash_inputs(&inputs))
        })?;
    let (parallel, parallel_timing) = measure_repeated(config.warmups, config.repetitions, || {
        hash_inputs_parallel(&inputs, config.threads)
    })?;
    ensure!(sequential == parallel, "parallel Poseidon output drift");
    let digest = sequential.last().copied().unwrap_or(Fq::from(0u64));

    Ok(vec![
        Measurement {
            tree: "poseidon",
            operation: "p0_scalar_hash4",
            pattern: config.pattern.label(),
            prefill_items: 0,
            items: inputs.len(),
            threads: 1,
            parallel_threshold: None,
            elapsed_ms: sequential_timing.median_ms,
            commit_ms: None,
            timing: Some(sequential_timing),
            io: IoStats::default(),
            internal_hashes: inputs.len(),
            root: root_hex(digest),
            exact_root_match: true,
            state_parity: None,
        },
        Measurement {
            tree: "poseidon",
            operation: "p1_rayon_hash4",
            pattern: config.pattern.label(),
            prefill_items: 0,
            items: inputs.len(),
            threads: config.threads,
            parallel_threshold: Some(1),
            elapsed_ms: parallel_timing.median_ms,
            commit_ms: None,
            timing: Some(parallel_timing),
            io: IoStats::default(),
            internal_hashes: inputs.len(),
            root: root_hex(digest),
            exact_root_match: true,
            state_parity: None,
        },
    ])
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn parallel_poseidon_adapter_is_exact() -> Result<()> {
        let measurements = measure(&SpikeConfig::smoke(4))?;
        assert!(measurements
            .iter()
            .all(|measurement| measurement.exact_root_match));
        Ok(())
    }
}
