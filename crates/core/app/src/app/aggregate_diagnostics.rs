use std::fs::{self, OpenOptions};
use std::io::Write as _;
use std::path::{Path, PathBuf};
use std::sync::atomic::{AtomicU64, Ordering};
use std::sync::OnceLock;

use anyhow::{Context as _, Result};
use ark_ff::{BigInteger as _, PrimeField as _};
use decaf377::Fq;
use sha2::Digest as _;
use shieldd_sdk_proof_aggregation::{FamilyAggregate, ProofFamilyId};

use super::AggregateDebugRow;

const AGGREGATE_DEBUG_DIR_ENV: &str = "SHIELDD_AGGREGATE_DEBUG_DIR";
static AGGREGATE_DEBUG_SEQ: AtomicU64 = AtomicU64::new(0);

pub(super) fn max_transaction_size_bytes_override() -> usize {
    static OVERRIDE: OnceLock<usize> = OnceLock::new();
    *OVERRIDE.get_or_init(|| {
        std::env::var("SHIELDD_MAX_TRANSACTION_SIZE_BYTES")
            .ok()
            .and_then(|value| value.parse::<usize>().ok())
            .filter(|value| *value > 0)
            .unwrap_or(super::MAX_TRANSACTION_SIZE_BYTES)
    })
}

pub(super) fn prepare_proposal_filter_concurrency_override(default: usize) -> usize {
    std::env::var("SHIELDD_PREPARE_PROPOSAL_FILTER_CONCURRENCY")
        .ok()
        .and_then(|value| value.parse::<usize>().ok())
        .map(|value| value.max(1))
        .unwrap_or(default)
}

pub(super) fn zero_timestamp_allowed() -> bool {
    std::env::var_os("SHIELDD_BENCH_ALLOW_ZERO_TARGET_TIMESTAMP").is_some()
}

fn aggregate_debug_root() -> Option<PathBuf> {
    std::env::var_os(AGGREGATE_DEBUG_DIR_ENV).map(PathBuf::from)
}

fn fq_hex(value: &Fq) -> String {
    hex::encode(value.into_bigint().to_bytes_le())
}

pub(super) fn maybe_write_aggregate_debug_dump(
    phase: &str,
    segment_index: usize,
    family_index: usize,
    family_id: ProofFamilyId,
    rows: &[AggregateDebugRow],
    padded_public_inputs: &[Vec<Fq>],
    aggregate: Option<&FamilyAggregate>,
) {
    let Some(root) = aggregate_debug_root() else {
        return;
    };
    if let Err(error) = write_aggregate_debug_dump(
        &root,
        phase,
        segment_index,
        family_index,
        family_id,
        rows,
        padded_public_inputs,
        aggregate,
    ) {
        tracing::warn!(
            ?error,
            phase,
            ?family_id,
            "failed to write aggregate debug dump"
        );
    }
}

fn write_aggregate_debug_dump(
    root: &Path,
    phase: &str,
    segment_index: usize,
    family_index: usize,
    family_id: ProofFamilyId,
    rows: &[AggregateDebugRow],
    padded_public_inputs: &[Vec<Fq>],
    aggregate: Option<&FamilyAggregate>,
) -> Result<()> {
    fs::create_dir_all(root)
        .with_context(|| format!("creating aggregate debug directory {}", root.display()))?;
    let seq = AGGREGATE_DEBUG_SEQ.fetch_add(1, Ordering::Relaxed);
    let file_path = root.join(format!(
        "{seq:06}-{phase}-segment{segment_index:03}-family{family_index:02}-{family_id:?}.txt"
    ));
    let mut file = OpenOptions::new()
        .create(true)
        .write(true)
        .truncate(true)
        .open(&file_path)
        .with_context(|| format!("opening aggregate debug dump {}", file_path.display()))?;

    writeln!(file, "phase={phase}")?;
    writeln!(file, "segment_index={segment_index}")?;
    writeln!(file, "family_index={family_index}")?;
    writeln!(file, "family_id={family_id:?}")?;
    writeln!(file, "real_count={}", rows.len())?;
    writeln!(file, "padded_count={}", padded_public_inputs.len())?;

    if let Some(aggregate) = aggregate {
        writeln!(file, "bundle_real_count={}", aggregate.real_count)?;
        writeln!(file, "bundle_padded_count={}", aggregate.padded_count)?;
        writeln!(
            file,
            "aggregate_proof_sha256={}",
            hex::encode(sha2::Sha256::digest(&aggregate.aggregate_proof))
        )?;
    }

    for (row_index, row) in rows.iter().enumerate() {
        let action_index = row
            .action_index
            .map(|index| index.to_string())
            .unwrap_or_else(|| "unknown".to_string());
        let public_inputs = row
            .public_inputs
            .iter()
            .map(fq_hex)
            .collect::<Vec<_>>()
            .join(",");
        writeln!(
            file,
            "row[{row_index}].tx_id={} action_index={} family_local_index={} public_inputs=[{}]",
            row.tx_id, action_index, row.family_local_index, public_inputs
        )?;
    }

    for (pad_index, inputs) in padded_public_inputs.iter().enumerate() {
        let rendered = inputs.iter().map(fq_hex).collect::<Vec<_>>().join(",");
        writeln!(file, "padded_public_inputs[{pad_index}]=[{rendered}]")?;
    }

    Ok(())
}
