//! Checkpoint availability is receiver policy, separate from its trusted state.
use anyhow::{ensure, Result};
use std::path::Path;

/// Minimum archive coverage selected by the receiver, never by the supplier.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum ArchiveCompleteness {
    FullHistory,
    CurrentState,
}

pub(crate) const DESCRIPTOR: &str = "archive-checkpoint.v1";

pub(crate) fn encode(first_height: u64) -> Vec<u8> {
    let class = if first_height == 0 { 1 } else { 2 };
    [vec![1, class], first_height.to_be_bytes().to_vec()].concat()
}

pub(crate) fn read(source: &Path, required: ArchiveCompleteness) -> Result<u64> {
    let path = source.join(DESCRIPTOR);
    ensure!(
        std::fs::metadata(&path)?.len() == 10,
        "unsupported archive checkpoint descriptor"
    );
    let bytes = std::fs::read(path)?;
    ensure!(
        bytes.len() == 10 && bytes[0] == 1,
        "unsupported archive checkpoint descriptor"
    );
    let first_height = u64::from_be_bytes(bytes[2..].try_into()?);
    ensure!(
        bytes[1] == if first_height == 0 { 1 } else { 2 },
        "archive completeness claim disagrees with coverage"
    );
    ensure!(
        required == ArchiveCompleteness::CurrentState || first_height == 0,
        "receiver requires complete archive history"
    );
    Ok(first_height)
}
