//! Offline capacity operations; they never alter consensus admission.
use crate::{ForestConfig, Manifest, ParticipantId, Storage};
use anyhow::{ensure, Context, Result};
use serde::Serialize;
use std::path::Path;

#[derive(Clone, Debug, Serialize)]
pub struct ParticipantCapacity {
    pub participant: String,
    pub entries: u64,
    pub files: Vec<FileCapacity>,
    pub bucket_capacity: u64,
    pub occupied_buckets: u64,
    pub resident_branch_count: u64,
    pub resident_branch_page_bytes: u64,
    pub resident_map_node_bytes: u64,
    pub resident_branch_header_bytes: u64,
    pub resident_bucket_metadata_bytes: u64,
    /// Includes free pages; virtual mappings must not be reported as RSS.
    pub pool_mapped_bytes: u64,
    /// Requested allocations reachable from this quiescent index root.
    /// Excludes allocator rounding, fragmentation and transient COW roots.
    pub resident_index_requested_bytes: u64,
    pub undo_file_bytes: u64,
    pub undo_first_record: u64,
    pub undo_last_record: u64,
}
#[derive(Clone, Debug, Serialize)]
pub struct FileCapacity {
    pub file: String,
    pub file_bytes: u64,
    pub next_page: u64,
    pub usable_pages: u64,
    pub address_headroom_pages: u64,
}

/// Qualification must precede 70% of either projected usable address space or
/// the configured aggregate resident-index budget. Shards do not reduce total RAM.
pub fn qualification_required(
    projected_pages: u64,
    usable_pages: u64,
    projected_index_bytes: u64,
    resident_budget: u64,
) -> Result<bool> {
    ensure!(
        usable_pages > 0 && resident_budget > 0,
        "capacity qualification requires nonzero budgets"
    );
    Ok(
        u128::from(projected_pages) * 100 >= u128::from(usable_pages) * 70
            || u128::from(projected_index_bytes) * 100 >= u128::from(resident_budget) * 70,
    )
}

pub(crate) fn free_bytes(path: &Path) -> Result<u64> {
    use std::os::unix::ffi::OsStrExt;
    let path = std::ffi::CString::new(path.as_os_str().as_bytes())?;
    let mut stat = std::mem::MaybeUninit::<libc::statvfs>::uninit();
    // SAFETY: the path is nul-terminated and stat points to writable storage.
    ensure!(
        unsafe { libc::statvfs(path.as_ptr(), stat.as_mut_ptr()) } == 0,
        "cannot inspect available temporary space: {}",
        std::io::Error::last_os_error()
    );
    let stat = unsafe { stat.assume_init() };
    u64::try_from(u128::from(stat.f_bavail) * u128::from(stat.f_frsize))
        .context("available-space overflow")
}

impl Storage {
    pub fn capacity(&self) -> Result<Vec<ParticipantCapacity>> {
        let manifest = self
            .manifest()
            .context("capacity requires a materialized boundary")?;
        self.forest().read().capacity(&manifest.participants)
    }
    /// Stop the node before calling. Complete proof/count validation runs both
    /// before and after the dependency's crash-recoverable offline rehash.
    pub fn grow_offline(
        path: &Path,
        config: ForestConfig,
        participant: ParticipantId,
        buckets: u32,
        anchor: [u8; 32],
    ) -> Result<Manifest> {
        let storage = Self::open(path, config.clone())?;
        let before = storage
            .manifest()
            .context("growth requires a materialized boundary")?;
        ensure!(
            before.digest()? == anchor,
            "growth boundary differs from SDK anchor"
        );
        ensure!(
            before
                .participants
                .iter()
                .any(|p| p.kind == participant.kind && p.generation == participant.generation),
            "growth participant is not active"
        );
        storage.validate()?;
        let usage = storage
            .capacity()?
            .into_iter()
            .find(|p| p.participant == participant.name())
            .context("participant capacity is missing")?;
        ensure!(
            u64::from(buckets) > usage.bucket_capacity,
            "growth must increase bucket count"
        );
        let pages = u64::from(buckets)
            .checked_add(u64::from(buckets).div_ceil(4096))
            .context("growth page overflow")?;
        ensure!(
            pages <= u64::from(u32::MAX),
            "growth exceeds NOMT file addressing"
        );
        // The old HT remains until the replacement is durable. Account for a
        // fully allocated replacement even when sparse creation is configured.
        let temporary = pages
            .checked_mul(4096)
            .and_then(|b| b.checked_add(64 * 1024 * 1024))
            .context("growth space overflow")?;
        ensure!(
            free_bytes(path)? >= temporary,
            "insufficient temporary space for crash-safe growth ({temporary} bytes required)"
        );
        drop(storage);
        let mut options = nomt::Options::new();
        options.path(path.join("forest").join(participant.name()));
        options.hashtable_buckets(buckets);
        options.preallocate_ht(config.preallocate);
        nomt::grow_hashtable(&options)?;
        nomt::validate_hashtable(&options)?;
        let storage = Self::open(path, config)?;
        ensure!(
            storage.manifest().as_ref() == Some(&before),
            "growth changed the matched boundary"
        );
        storage.validate()?;
        Ok(before)
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn qualification_includes_aggregate_memory_and_exact_seventy_percent() {
        assert!(!qualification_required(69, 100, 69, 100).unwrap());
        assert!(qualification_required(70, 100, 1, 100).unwrap());
        assert!(qualification_required(1, 100, 70, 100).unwrap());
        assert!(qualification_required(u64::MAX, u64::MAX, 1, 100).unwrap());
        assert!(qualification_required(1, 0, 1, 100).is_err());
    }
}
