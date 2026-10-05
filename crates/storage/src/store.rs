use crate::{
    ordered_effects, ArchiveCompleteness, Effects, Forest, ForestConfig, ForestUpdate, Manifest,
    Participant, ParticipantChange, ParticipantId, ParticipantKind, Snapshot, StateDelta,
};
use anyhow::{ensure, Context, Result};
use parking_lot::RwLock;
use std::{
    collections::BTreeMap,
    path::{Path, PathBuf},
    sync::Arc,
};

/// Canonical execution context supplied by the native block lifecycle.
pub struct BlockBoundary {
    pub chain_id: String,
    pub protocol: [u8; 32],
    pub height: u64,
    pub block_id: [u8; 32],
    pub time: i64,
}

/// An owned frozen update. Dropping it discards preparation without persistence.
pub struct Prepared {
    previous: Option<Manifest>,
    next: Manifest,
    effects: Effects,
    forest: ForestUpdate,
}
impl Prepared {
    pub fn previous(&self) -> Option<&Manifest> {
        self.previous.as_ref()
    }
    pub fn next(&self) -> &Manifest {
        &self.next
    }
    pub fn effects(&self) -> &Effects {
        &self.effects
    }
}
struct Shared {
    path: PathBuf,
    raw: crate::RawStore,
    forest: RwLock<Forest>,
    latest: RwLock<Snapshot>,
}
#[derive(Clone)]
pub struct Storage(Arc<Shared>);
impl Storage {
    pub fn open(path: &Path, config: ForestConfig) -> Result<Self> {
        if path.exists() {
            for entry in std::fs::read_dir(path)? {
                let entry = entry?;
                ensure!(matches!(entry.file_name().to_str(),Some("values"|"forest"|"manifest.pb"|"archive-checkpoint.v1")),"unrecognized storage layout; recreate prototype state or restore a matched checkpoint");
            }
        }
        #[cfg(target_os = "linux")]
        {
            // Match NOMT's worker requirements before creating any store files.
            // Allowing setup alone can still leave workers unable to submit I/O.
            let ring =
                io_uring::IoUring::<io_uring::squeue::Entry, io_uring::cqueue::Entry>::builder()
                    .setup_single_issuer()
                    .build(1024)
                    .context("NOMT requires Linux 6.0+ and permitted io_uring_setup")?;
            ring.submitter()
                .submit()
                .context("NOMT requires permitted io_uring_enter")?;
        }
        std::fs::create_dir_all(path)?;
        let raw = crate::RawStore::open(&path.join("values"))?;
        let latest = raw.latest_snapshot()?;
        if latest.manifest().is_none() {
            ensure!(
                latest.canonical_entries().next().is_none(),
                "populated raw values have no materialized manifest"
            );
        }
        let forest = Forest::open(&path.join("forest"), config, latest.manifest())?;
        if let Some(manifest) = latest.manifest() {
            let bytes = latest.archive_state()?.context("unsupported pre-archive prototype state; recreate or restore a compatible checkpoint")?;
            let mmr = crate::archive::Mmr::decode(&bytes)?;
            ensure!(
                manifest.height.checked_add(1) == Some(mmr.count),
                "archive boundary mismatch"
            );
            ensure!(
                latest.archive_first_height()? <= mmr.count,
                "archive coverage exceeds boundary"
            );
            forest.authenticate_reads(manifest, latest.observations())?;
        }

        Ok(Self(Arc::new(Shared {
            path: path.into(),
            raw,
            forest: RwLock::new(forest),
            latest: RwLock::new(latest),
        })))
    }
    pub fn path(&self) -> &Path {
        &self.0.path
    }
    pub fn latest_snapshot(&self) -> Snapshot {
        self.0.latest.read().new_view()
    }
    pub fn latest_version(&self) -> u64 {
        self.0.latest.read().version()
    }
    pub fn manifest(&self) -> Option<Manifest> {
        self.0.latest.read().manifest().cloned()
    }
    pub fn forest(&self) -> &RwLock<Forest> {
        &self.0.forest
    }
    pub fn check_materialized(&self) -> Result<()> {
        let view = self.latest_snapshot();
        if let Some(manifest) = view.manifest() {
            self.0.forest.read().check_roots(&manifest.participants)?;
        }
        Ok(())
    }
    /// Recompute the complete canonical genesis manifest without mutating
    /// stores. Repeated InitChain must derive the same root from its inputs.
    pub fn expected_genesis(
        &self,
        state: StateDelta<Snapshot>,
        boundary: BlockBoundary,
    ) -> Result<Manifest> {
        let (view, cache) = state.flatten();
        ensure!(
            view.manifest().is_none() && boundary.height == 0 && boundary.block_id == [0; 32],
            "invalid genesis recomputation input"
        );
        let mut effects = Effects::from_cache(&cache);
        crate::archive::stage(&view, boundary.height, &mut effects)?;
        let effects = ordered_effects(&view, effects)?;
        let changes = effects.application_changes()?;
        let values = changes
            .iter()
            .filter_map(|change| change.value.as_ref().map(|value| (change.key, value)));
        use nomt_core::hasher::ValueHasher;
        let root = nomt_core::update::build_trie::<nomt_core::hasher::Sha2Hasher>(
            0,
            values.map(|(key, value)| (key, nomt_core::hasher::Sha2Hasher::hash_value(value))),
            |_| {},
        );
        let mut manifest = empty_manifest(boundary.chain_id, boundary.protocol);
        manifest.participants[0].root = root;
        manifest.participants[0].count = changes
            .iter()
            .filter(|change| change.value.is_some())
            .count()
            .try_into()?;
        manifest.validate()?;
        Ok(manifest)
    }
    /// Freeze execution reads, neighboring ordering changes and witnessed NOMT
    /// updates before the SDK may decide this block.
    pub fn prepare(
        &self,
        state: StateDelta<Snapshot>,
        boundary: BlockBoundary,
        mut changes: BTreeMap<ParticipantId, Vec<ParticipantChange>>,
    ) -> Result<Prepared> {
        let (view, cache) = state.flatten();
        let BlockBoundary {
            chain_id,
            protocol,
            height,
            block_id,
            time,
        } = boundary;
        let previous = view.manifest().cloned();
        ensure!(
            previous == self.manifest(),
            "execution base is not the materialized boundary"
        );
        let base = previous
            .clone()
            .unwrap_or_else(|| empty_manifest(chain_id.clone(), protocol));
        ensure!(
            base.chain_id == chain_id && base.protocol == protocol,
            "execution identity mismatch"
        );
        ensure!(
            previous
                .as_ref()
                .map_or(height == 0, |previous| previous.height.checked_add(1)
                    == Some(height)),
            "nonconsecutive storage decision"
        );
        let mut effects = Effects::from_cache(&cache);
        crate::archive::stage(&view, height, &mut effects)?;
        let effects = ordered_effects(&view, effects)?;
        let application = effects.application_changes()?;
        ensure!(
            !changes.contains_key(&ParticipantId::APPLICATION),
            "application changes must be derived from owned state"
        );
        changes.insert(ParticipantId::APPLICATION, application);
        let mut forest = self.0.forest.write();
        if previous.is_none() {
            ensure!(
                changes
                    .iter()
                    .all(|(id, changes)| *id == ParticipantId::APPLICATION || changes.is_empty()),
                "genesis cannot consume nullifiers"
            );
            use nomt_core::hasher::ValueHasher;
            let genesis_root = nomt_core::update::build_trie::<nomt_core::hasher::Sha2Hasher>(
                0,
                changes[&ParticipantId::APPLICATION]
                    .iter()
                    .filter_map(|change| {
                        change.value.as_ref().map(|value| {
                            (change.key, nomt_core::hasher::Sha2Hasher::hash_value(value))
                        })
                    }),
                |_| {},
            );
            forest.reconcile_genesis(genesis_root)?;
        }
        forest.authenticate_reads(&base, view.observations())?;
        let mut active = base.participants.clone();
        if height > 0 {
            crate::Day::at(time)?;
            let latest_possible_day = crate::Day::at(
                time.checked_add(1_800)
                    .ok_or_else(|| anyhow::anyhow!("canonical time overflow"))?,
            )?;
            active.clear();
            for participant in &base.participants {
                if participant.kind != ParticipantKind::Volume
                    || !crate::Day(participant.generation).retired_at(time)?
                {
                    ensure!(
                        participant.kind != ParticipantKind::Volume
                            || participant.generation <= latest_possible_day.0,
                        "volume generation is outside canonical block time bounds"
                    );
                    active.push(participant.clone());
                }
            }
            for (id, delta) in &changes {
                if id.kind != ParticipantKind::Volume || delta.is_empty() {
                    continue;
                }
                let day = crate::Day(id.generation);
                ensure!(
                    day.eligible_at(time)?,
                    "volume writes are outside canonical block time bounds"
                );
                forest.ensure_volume(day)?;
                if !active
                    .iter()
                    .any(|p| p.kind == ParticipantKind::Volume && p.generation == day.0)
                {
                    active.push(Participant {
                        kind: ParticipantKind::Volume,
                        generation: day.0,
                        root: [0; 32],
                        count: 0,
                    });
                }
            }
            active.sort_by_key(|p| (p.kind, p.generation));
        } else {
            ensure!(
                changes.keys().all(|id| id.kind != ParticipantKind::Volume),
                "genesis has no volume generation"
            );
        }
        changes.retain(|_, delta| !delta.is_empty());
        let update = forest.prepare(&active, changes)?;
        let next = Manifest {
            chain_id,
            protocol,
            height,
            block_id,
            previous: previous
                .as_ref()
                .map(Manifest::digest)
                .transpose()?
                .unwrap_or([0; 32]),
            participants: update.next().to_vec(),
        };
        next.validate()?;
        Ok(Prepared {
            previous,
            next,
            effects,
            forest: update,
        })
    }
    /// Call only after the SDK decision. NOMT advances first; values and the
    /// manifest share exactly one synced RocksDB batch. The raw previous
    /// boundary therefore identifies all interruptions for decided replay.
    pub fn materialize(&self, prepared: Prepared) -> Result<Manifest> {
        ensure!(
            self.manifest() == prepared.previous,
            "materialization previous boundary mismatch"
        );
        let mut forest = self.0.forest.write();
        if let Some(previous) = &prepared.previous {
            forest.check_roots(&previous.participants)?;
        }
        forest.materialize(prepared.forest)?;
        self.0.raw.materialize(
            &prepared.effects,
            &prepared.next,
            &forest.collected_retirements,
        )?;
        forest.collected_retirements.clear();
        let latest = self.0.raw.latest_snapshot()?;
        ensure!(
            latest.manifest() == Some(&prepared.next),
            "raw materialized manifest mismatch"
        );
        *self.0.latest.write() = latest;
        // Local deletion failure must never alter the decided block. The next
        // matched materialization retries it; active participants are protected.
        if let Err(error) = self
            .0
            .raw
            .retired_volumes()
            .and_then(|retired| forest.collect_retired(&prepared.next, &retired))
        {
            tracing::warn!(%error, "retired volume cleanup deferred");
        }
        Ok(prepared.next)
    }
    pub fn rewind_decided(&self, previous: &Manifest, next: &Manifest) -> Result<()> {
        next.follows(previous)?;
        ensure!(
            self.manifest().as_ref() == Some(previous),
            "raw boundary does not match receipt base"
        );
        self.0
            .forest
            .write()
            .reconcile_decided(&previous.participants, &next.participants)
    }
    pub fn validate(&self) -> Result<()> {
        let snapshot = self.latest_snapshot();
        let manifest = snapshot
            .manifest()
            .ok_or_else(|| anyhow::anyhow!("validation requires a materialized boundary"))?;
        let forest = self.0.forest.write();
        forest.validate_participants(&manifest.participants)?;
        forest
            .validate_application_values(&manifest.participants[0], snapshot.canonical_entries())?;
        snapshot.validate_archive()
    }
    /// Matched checkpoint callers hold the publication boundary and join their
    /// materializer before entering this method.
    pub fn checkpoint(&self, destination: &Path, expected: &Manifest) -> Result<()> {
        self.checkpoint_with_archive(destination, expected, ArchiveCompleteness::FullHistory)
    }
    /// Capture the available archive without removing any records. The caller
    /// selects its minimum coverage; a full-history export never downgrades.
    pub fn checkpoint_with_archive(
        &self,
        destination: &Path,
        expected: &Manifest,
        required: ArchiveCompleteness,
    ) -> Result<()> {
        ensure!(
            self.manifest().as_ref() == Some(expected),
            "checkpoint boundary mismatch"
        );
        ensure!(
            !destination.exists(),
            "checkpoint destination already exists"
        );
        self.validate()?;
        let first_height = self.latest_snapshot().archive_first_height()?;
        ensure!(
            required == ArchiveCompleteness::CurrentState || first_height == 0,
            "full-history export requires complete archive coverage"
        );
        let forest = self.0.forest.write();
        forest.check_roots(&expected.participants)?;
        std::fs::create_dir_all(destination)?;
        self.0.raw.checkpoint(&destination.join("values"))?;
        forest.checkpoint(&destination.join("forest"), &expected.participants)?;
        let path = destination.join("manifest.pb");
        use std::io::Write;
        let mut file = std::fs::OpenOptions::new()
            .write(true)
            .create_new(true)
            .open(path)?;
        file.write_all(&expected.encode()?)?;
        file.sync_all()?;
        let mut descriptor = std::fs::OpenOptions::new()
            .write(true)
            .create_new(true)
            .open(destination.join(crate::checkpoint::DESCRIPTOR))?;
        descriptor.write_all(&crate::checkpoint::encode(first_height))?;
        descriptor.sync_all()?;
        std::fs::File::open(destination)?.sync_all()?;
        Ok(())
    }
    /// Complete validation of an immutable capture. Run outside the live
    /// publication guard; roots/counts come from the host-authenticated manifest.
    pub fn validate_checkpoint(
        source: &Path,
        config: ForestConfig,
        anchor: [u8; 32],
    ) -> Result<Manifest> {
        Self::validate_checkpoint_with_archive(
            source,
            config,
            anchor,
            ArchiveCompleteness::FullHistory,
        )
    }
    /// Native receivers may explicitly allow missing optional history. Native
    /// SCT/compliance commitment validation remains the application owner's duty.
    pub fn validate_checkpoint_with_archive(
        source: &Path,
        config: ForestConfig,
        anchor: [u8; 32],
        required: ArchiveCompleteness,
    ) -> Result<Manifest> {
        let first_height = crate::checkpoint::read(source, required)?;
        let descriptor = Manifest::decode(&std::fs::read(source.join("manifest.pb"))?)?;
        ensure!(
            descriptor.digest()? == anchor,
            "checkpoint differs from the trusted Shieldd commitment"
        );
        let expected: std::collections::BTreeSet<_> = descriptor
            .participants
            .iter()
            .map(|p| {
                ParticipantId {
                    kind: p.kind,
                    generation: p.generation,
                }
                .name()
            })
            .collect();
        let actual: std::collections::BTreeSet<_> = std::fs::read_dir(source.join("forest"))?
            .map(|entry| -> Result<String> {
                let entry = entry?;
                ensure!(
                    entry.file_type()?.is_dir(),
                    "checkpoint forest contains unexpected files or links"
                );
                entry
                    .file_name()
                    .into_string()
                    .map_err(|_| anyhow::anyhow!("invalid checkpoint participant name"))
            })
            .collect::<Result<_>>()?;
        ensure!(
            actual == expected,
            "checkpoint forest participant inventory differs from the host-authenticated manifest"
        );
        ensure!(
            source.join("values/CURRENT").is_file(),
            "checkpoint raw database is missing"
        );
        for participant in &descriptor.participants {
            let id = ParticipantId {
                kind: participant.kind,
                generation: participant.generation,
            };
            let path = source.join("forest").join(id.name());
            for file in ["meta", "ln", "bbn", "ht"] {
                ensure!(
                    path.join(file).is_file(),
                    "checkpoint participant file is missing"
                );
            }
        }
        let storage = Self::open(source, config)?;
        ensure!(
            storage.manifest().as_ref() == Some(&descriptor),
            "checkpoint raw boundary differs from its descriptor"
        );
        ensure!(
            storage.latest_snapshot().archive_first_height()? == first_height,
            "checkpoint coverage claim differs from retained data"
        );
        storage.validate()?;
        Ok(descriptor)
    }
    pub fn restore(
        source: &Path,
        destination: &Path,
        config: ForestConfig,
        anchor: [u8; 32],
    ) -> Result<Self> {
        Self::restore_with_archive(
            source,
            destination,
            config,
            anchor,
            ArchiveCompleteness::FullHistory,
        )
    }
    /// Restore at a receiver-selected completeness class, with no automatic
    /// fallback from full history to current state.
    pub fn restore_with_archive(
        source: &Path,
        destination: &Path,
        config: ForestConfig,
        anchor: [u8; 32],
        required: ArchiveCompleteness,
    ) -> Result<Self> {
        crate::checkpoint::read(source, required)?;
        let descriptor = Manifest::decode(&std::fs::read(source.join("manifest.pb"))?)?;
        ensure!(
            descriptor.digest()? == anchor,
            "restore source differs from the trusted Shieldd commitment"
        );
        ensure!(
            destination
                .symlink_metadata()
                .is_err_and(|error| error.kind() == std::io::ErrorKind::NotFound),
            "restore destination already exists or is inaccessible"
        );
        let parent = destination
            .parent()
            .filter(|p| !p.as_os_str().is_empty())
            .unwrap_or_else(|| Path::new("."));
        ensure!(parent.is_dir(), "restore parent directory is missing");
        let required_space = crate::forest::file_bytes(source)?
            .checked_add(64 * 1024 * 1024)
            .context("restore temporary-space overflow")?;
        ensure!(
            crate::capacity::free_bytes(parent)? >= required_space,
            "insufficient temporary space for a matched restore ({required_space} bytes required)"
        );
        let nonce = std::time::SystemTime::now()
            .duration_since(std::time::UNIX_EPOCH)?
            .as_nanos();
        let temporary = parent.join(format!(".shieldd-restore-{}-{nonce}", std::process::id()));
        ensure!(!temporary.exists(), "private restore path already exists");
        let result = (|| -> Result<()> {
            crate::forest::copy_files(source, &temporary)?;
            // Validate the installed bytes and exact inventory, rather than
            // relying on a source that could change while it is being copied.
            Self::validate_checkpoint_with_archive(&temporary, config.clone(), anchor, required)?;
            std::fs::remove_file(temporary.join("manifest.pb"))?;
            std::fs::remove_file(temporary.join(crate::checkpoint::DESCRIPTOR))?;
            std::fs::File::open(&temporary)?.sync_all()?;
            let storage = Self::open(&temporary, config.clone())?;
            storage.0.raw.rebuild_archive_indexes()?;
            *storage.0.latest.write() = storage.0.raw.latest_snapshot()?;
            ensure!(
                storage
                    .manifest()
                    .context("restored manifest is missing")?
                    .digest()?
                    == anchor,
                "restored boundary changed"
            );
            drop(storage);
            std::fs::rename(&temporary, destination)?;
            std::fs::File::open(parent)?.sync_all()?;
            Ok(())
        })();
        if result.is_err() && temporary.exists() {
            let _ = std::fs::remove_dir_all(&temporary);
        }
        result?;
        Self::open(destination, config)
    }

    /// Activate a fully validated, closed checkpoint on the same filesystem.
    /// The live pathname always names either the old or the replacement store;
    /// a crash cannot leave the missing-directory gap of two ordinary renames.
    pub fn activate_checkpoint(prepared: &Path, live: &Path) -> Result<()> {
        use std::os::unix::ffi::OsStrExt;
        ensure!(
            prepared.parent() == live.parent(),
            "checkpoint replacement must share its parent filesystem"
        );
        ensure!(
            prepared.is_dir() && live.is_dir(),
            "checkpoint replacement directories are missing"
        );
        let from = std::ffi::CString::new(prepared.as_os_str().as_bytes())?;
        let to = std::ffi::CString::new(live.as_os_str().as_bytes())?;
        // SAFETY: both paths are valid nul-terminated strings. Atomic exchange
        // is required; unsupported filesystems fail without moving either path.
        #[cfg(target_os = "macos")]
        let result = unsafe { libc::renamex_np(from.as_ptr(), to.as_ptr(), libc::RENAME_SWAP) };
        #[cfg(target_os = "linux")]
        let result = unsafe {
            libc::syscall(
                libc::SYS_renameat2,
                libc::AT_FDCWD,
                from.as_ptr(),
                libc::AT_FDCWD,
                to.as_ptr(),
                libc::RENAME_EXCHANGE,
            )
        };
        #[cfg(not(any(target_os = "macos", target_os = "linux")))]
        anyhow::bail!("atomic checkpoint activation is unsupported on this platform");
        #[cfg(any(target_os = "macos", target_os = "linux"))]
        ensure!(
            result == 0,
            "atomic checkpoint activation failed: {}",
            std::io::Error::last_os_error()
        );
        std::fs::File::open(live.parent().context("checkpoint parent is missing")?)?.sync_all()?;
        Ok(())
    }
}
fn empty_manifest(chain_id: String, protocol: [u8; 32]) -> Manifest {
    Manifest {
        chain_id,
        protocol,
        height: 0,
        block_id: [0; 32],
        previous: [0; 32],
        participants: std::iter::once(Participant {
            kind: ParticipantKind::Application,
            generation: 0,
            root: [0; 32],
            count: 0,
        })
        .chain((0..16).map(|generation| Participant {
            kind: ParticipantKind::Permanent,
            generation,
            root: [0; 32],
            count: 0,
        }))
        .collect(),
    }
}

#[cfg(test)]
mod tests {
    #[test]
    fn checkpoint_activation_exchanges_directories_without_a_missing_live_path() {
        let parent = tempfile::tempdir().unwrap();
        let live = parent.path().join("live");
        let prepared = parent.path().join("prepared");
        std::fs::create_dir(&live).unwrap();
        std::fs::create_dir(&prepared).unwrap();
        std::fs::write(live.join("boundary"), b"old").unwrap();
        std::fs::write(prepared.join("boundary"), b"matched").unwrap();
        super::Storage::activate_checkpoint(&prepared, &live).unwrap();
        assert_eq!(std::fs::read(live.join("boundary")).unwrap(), b"matched");
        assert_eq!(std::fs::read(prepared.join("boundary")).unwrap(), b"old");
        assert!(
            super::Storage::activate_checkpoint(&parent.path().join("missing"), &live).is_err()
        );
        assert_eq!(std::fs::read(live.join("boundary")).unwrap(), b"matched");
    }
    use super::*;
    use crate::{StateRead, StateWrite};
    fn config() -> ForestConfig {
        ForestConfig {
            buckets: 1024,
            cache_mib: 1,
            preallocate: false,
            materialization_workers: 2,
        }
    }
    fn boundary(height: u64, time: i64) -> BlockBoundary {
        BlockBoundary {
            chain_id: "store-test".into(),
            protocol: [1; 32],
            height,
            block_id: if height == 0 {
                [0; 32]
            } else {
                [height as u8; 32]
            },
            time,
        }
    }
    fn state(storage: &Storage, value: &[u8]) -> StateDelta<Snapshot> {
        let mut state = StateDelta::new(storage.latest_snapshot());
        state.put_raw("key".into(), value.to_vec());
        state
    }
    #[test]
    fn current_state_restore_preserves_frontier_and_provable_suffix_without_downgrading_full_history(
    ) -> Result<()> {
        use crate::{ArchiveQuery, Space, StateProof};
        use futures::FutureExt;
        let temporary = tempfile::tempdir()?;
        let storage = Storage::open(&temporary.path().join("state"), config())?;
        let mut frontier = Vec::new();
        for height in 0..4 {
            let mut delta = state(&storage, b"current-state");
            delta.nonverifiable_put_raw(
                format!("compactblock/payload/{height:020}/0").into_bytes(),
                vec![height as u8],
            );
            let prepared =
                storage.prepare(delta, boundary(height, height as i64), BTreeMap::new())?;
            storage.materialize(prepared)?;
            if height == 1 {
                frontier = storage.latest_snapshot().archive_state()?.unwrap();
            }
        }
        storage.0.raw.omit_archive_prefix_for_test(2, &frontier)?;
        *storage.0.latest.write() = storage.0.raw.latest_snapshot()?;
        storage.validate()?;
        let manifest = storage.manifest().unwrap();
        let source = temporary.path().join("partial");
        assert!(storage.checkpoint(&source, &manifest).is_err());
        assert!(!source.exists());
        storage.checkpoint_with_archive(&source, &manifest, ArchiveCompleteness::CurrentState)?;
        assert!(Storage::validate_checkpoint(&source, config(), manifest.digest()?).is_err());
        let restored = Storage::restore_with_archive(
            &source,
            &temporary.path().join("restored"),
            config(),
            manifest.digest()?,
            ArchiveCompleteness::CurrentState,
        )?;
        assert!(restored
            .latest_snapshot()
            .nonverifiable_get_raw(b"compactblock/payload/00000000000000000001/0")
            .now_or_never()
            .unwrap()
            .unwrap_err()
            .is::<crate::ArchiveUnavailable>());
        let mut delta = state(&restored, b"next-state");
        delta.nonverifiable_put_raw(
            b"compactblock/payload/00000000000000000004/0".to_vec(),
            b"new".to_vec(),
        );
        let prepared = restored.prepare(delta, boundary(4, 4), BTreeMap::new())?;
        let next = restored.materialize(prepared)?;
        restored.validate()?;
        let key = crate::application_key(Space::Application, crate::archive::STATE_KEY);
        let (value, path) = restored
            .forest()
            .read()
            .authenticated_read(&next.participants[0], key)?;
        let anchor = StateProof {
            manifest: next.clone(),
            participant: 0,
            key,
            value,
            path,
        };
        for height in 2..5 {
            let prefix = format!("compactblock/payload/{height:020}/").into_bytes();
            let query = ArchiveQuery {
                height,
                start: prefix.clone(),
                prefix,
                end: None,
                limit: 1,
            };
            let proof =
                restored
                    .latest_snapshot()
                    .archive_range_proof(anchor.clone(), &query, 1 << 20)?;
            assert_eq!(proof.verify(next.digest()?, &query)?.records.len(), 1);
        }
        assert!(restored
            .checkpoint(&temporary.path().join("false-full"), &next)
            .is_err());
        std::fs::write(
            source.join(crate::checkpoint::DESCRIPTOR),
            crate::checkpoint::encode(0),
        )?;
        assert!(
            Storage::validate_checkpoint(&source, config(), manifest.digest()?).is_err(),
            "supplier relabeling cannot manufacture full history"
        );
        let bad_frontier = crate::archive::Mmr::decode(&frontier)?;
        let mut forged = bad_frontier.encode()?;
        forged[8] ^= 1;
        assert!(
            restored
                .0
                .raw
                .omit_archive_prefix_for_test(2, &forged)
                .is_err(),
            "frontier must reconstruct the authenticated MMR"
        );
        Ok(())
    }
    #[cfg(target_os = "linux")]
    #[test]
    #[ignore = "requires denied io_uring; run by the Linux container storage gate"]
    fn unavailable_io_uring_creates_no_store() -> Result<()> {
        let denied = std::env::var("SHIELDD_EXPECT_IO_URING_DENIAL")?;
        ensure!(matches!(
            denied.as_str(),
            "io_uring_setup" | "io_uring_enter"
        ));
        let temporary = tempfile::tempdir()?;
        let path = temporary.path().join("state");
        let opened = Storage::open(&path, config());
        assert!(
            !path.exists(),
            "refused startup must not create partial state"
        );
        let error = opened
            .err()
            .context("denied I/O must refuse storage startup")?;
        assert!(error.to_string().contains(&denied), "{error:#}");
        assert_eq!(
            error
                .downcast_ref::<std::io::Error>()
                .and_then(|error| error.raw_os_error()),
            Some(libc::EPERM),
            "the refusal must reach the denied syscall: {error:#}"
        );
        Ok(())
    }
    #[tokio::test]
    async fn retained_blocks_use_one_mmr_and_detect_aborted_reads_missing_values_and_extras() {
        use futures::StreamExt;
        let temporary = tempfile::tempdir().unwrap();
        let storage = Storage::open(&temporary.path().join("state"), config()).unwrap();
        let mut stable_count = None;
        for height in 0..6 {
            let mut delta = state(&storage, b"ordinary-state");
            for index in 0..19 {
                delta.nonverifiable_put_raw(
                    format!("compactblock/payload/{height:020}/{index:020}").into_bytes(),
                    vec![height as u8, index as u8],
                );
            }
            let prepared = storage
                .prepare(delta, boundary(height, height as i64), BTreeMap::new())
                .unwrap();
            let manifest = storage.materialize(prepared).unwrap();
            assert_eq!(
                *stable_count.get_or_insert(manifest.participants[0].count),
                manifest.participants[0].count,
                "archive records must not each grow the application NOMT"
            );
        }
        storage.validate().unwrap();
        let view = storage.latest_snapshot();
        let prefix = format!("compactblock/payload/{:020}/", 2).into_bytes();
        let records: Vec<_> = view
            .nonverifiable_range_raw(
                Some(&prefix),
                format!("{:020}", 5).into_bytes()..format!("{:020}", 13).into_bytes(),
            )
            .unwrap()
            .collect()
            .await;
        assert_eq!(records.len(), 8);
        for (offset, record) in records.into_iter().enumerate() {
            assert_eq!(record.unwrap().1, vec![2, (5 + offset) as u8]);
        }
        storage
            .forest()
            .read()
            .authenticate_reads(&storage.manifest().unwrap(), view.observations())
            .unwrap();
        let checkpoint = temporary.path().join("checkpoint");
        let manifest = storage.manifest().unwrap();
        storage.checkpoint(&checkpoint, &manifest).unwrap();
        Storage::validate_checkpoint(&checkpoint, config(), manifest.digest().unwrap()).unwrap();
        let restored = Storage::restore(
            &checkpoint,
            &temporary.path().join("restored"),
            config(),
            manifest.digest().unwrap(),
        )
        .unwrap();
        restored.validate().unwrap();
        let key = format!("compactblock/payload/{:020}/{:020}", 2, 7).into_bytes();
        storage
            .0
            .raw
            .corrupt_for_test(crate::Space::Archive, &key, None);
        let raw = storage.0.raw.latest_snapshot().unwrap();
        assert!(raw.nonverifiable_get_raw(&key).await.is_err());
        assert!(
            storage
                .forest()
                .read()
                .authenticate_reads(&manifest, raw.observations())
                .is_err(),
            "discarding failed call writes must not erase archive integrity failure"
        );
        let extra = format!("compactblock/payload/{:020}/{:020}", 2, 99).into_bytes();
        storage
            .0
            .raw
            .corrupt_for_test(crate::Space::Archive, &extra, Some(b"extra"));
        storage
            .0
            .raw
            .corrupt_for_test(crate::Space::Archive, &key, Some(&[2, 7]));
        *storage.0.latest.write() = storage.0.raw.latest_snapshot().unwrap();
        assert!(
            storage.validate().is_err(),
            "complete validation must reject uncommitted raw archive entries"
        );
    }
    #[test]
    fn offline_growth_preserves_complete_roots_and_rejects_shrink() {
        let temporary = tempfile::tempdir().unwrap();
        let path = temporary.path().join("state");
        let storage = Storage::open(&path, config()).unwrap();
        let prepared = storage
            .prepare(state(&storage, b"value"), boundary(0, 0), BTreeMap::new())
            .unwrap();
        let manifest = storage.materialize(prepared).unwrap();
        let anchor = manifest.digest().unwrap();
        drop(storage);
        assert!(
            Storage::grow_offline(&path, config(), ParticipantId::APPLICATION, 512, anchor)
                .is_err()
        );
        assert_eq!(
            Storage::grow_offline(&path, config(), ParticipantId::APPLICATION, 2048, anchor)
                .unwrap(),
            manifest
        );
        let storage = Storage::open(&path, config()).unwrap();
        storage.validate().unwrap();
        assert_eq!(storage.capacity().unwrap()[0].bucket_capacity, 2048);
    }
    #[test]
    fn genesis_reopens_and_reconciles_only_the_exact_canonical_input() {
        let temporary = tempfile::tempdir().unwrap();
        let path = temporary.path().join("state");
        let storage = Storage::open(&path, config()).unwrap();
        drop(storage);
        let storage = Storage::open(&path, config()).unwrap();
        let prepared = storage
            .prepare(
                state(&storage, b"canonical-genesis"),
                boundary(0, 0),
                BTreeMap::new(),
            )
            .unwrap();
        let expected = prepared.next.clone();
        storage
            .0
            .forest
            .write()
            .materialize(prepared.forest)
            .unwrap();
        drop(storage);
        let storage = Storage::open(&path, config()).unwrap();
        assert!(storage
            .prepare(
                state(&storage, b"different-genesis"),
                boundary(0, 0),
                BTreeMap::new()
            )
            .is_err());
        let prepared = storage
            .prepare(
                state(&storage, b"canonical-genesis"),
                boundary(0, 0),
                BTreeMap::new(),
            )
            .unwrap();
        assert_eq!(prepared.next, expected);
        storage.materialize(prepared).unwrap();
        storage.validate().unwrap();
        let legacy = temporary.path().join("legacy");
        std::fs::create_dir(&legacy).unwrap();
        std::fs::write(legacy.join("CURRENT"), b"old backend").unwrap();
        assert!(Storage::open(&legacy, config()).is_err());
        assert!(!legacy.join("values").exists());
    }
    #[tokio::test]
    async fn decided_materialization_replays_after_forest_advanced_without_raw_batch() {
        let temporary = tempfile::tempdir().unwrap();
        let path = temporary.path().join("state");
        let storage = Storage::open(&path, config()).unwrap();
        let genesis = storage
            .prepare(state(&storage, b"genesis"), boundary(0, 0), BTreeMap::new())
            .unwrap();
        let previous = storage.materialize(genesis).unwrap();
        let prepared = storage
            .prepare(
                state(&storage, b"decided"),
                boundary(1, 86_400),
                BTreeMap::from([(
                    ParticipantId::volume(crate::Day(86_400)).unwrap(),
                    vec![ParticipantChange {
                        key: [9; 32],
                        value: Some(crate::SPENT.to_vec()),
                    }],
                )]),
            )
            .unwrap();
        let next = prepared.next.clone();
        let digest = prepared.effects.digest().unwrap();
        storage
            .0
            .forest
            .write()
            .materialize(prepared.forest)
            .unwrap();
        drop(storage);
        let storage = Storage::open(&path, config()).unwrap();
        assert_eq!(storage.manifest(), Some(previous.clone()));
        assert_eq!(
            storage
                .latest_snapshot()
                .get_raw("key")
                .await
                .unwrap()
                .unwrap(),
            b"genesis"
        );
        storage.rewind_decided(&previous, &next).unwrap();
        storage.rewind_decided(&previous, &next).unwrap();
        let replay = storage
            .prepare(
                state(&storage, b"decided"),
                boundary(1, 86_400),
                BTreeMap::from([(
                    ParticipantId::volume(crate::Day(86_400)).unwrap(),
                    vec![ParticipantChange {
                        key: [9; 32],
                        value: Some(crate::SPENT.to_vec()),
                    }],
                )]),
            )
            .unwrap();
        assert_eq!(replay.next, next);
        assert_eq!(replay.effects.digest().unwrap(), digest);
        storage.materialize(replay).unwrap();
        assert_eq!(
            storage
                .latest_snapshot()
                .get_raw("key")
                .await
                .unwrap()
                .unwrap(),
            b"decided"
        );
        assert!(storage.rewind_decided(&previous, &next).is_err());
    }
    #[test]
    fn midnight_proofs_keep_adjacent_generations_without_creating_empty_days() {
        let temporary = tempfile::tempdir().unwrap();
        let storage = Storage::open(&temporary.path().join("state"), config()).unwrap();
        let genesis = storage
            .prepare(state(&storage, b"0"), boundary(0, 0), BTreeMap::new())
            .unwrap();
        storage.materialize(genesis).unwrap();
        for (height, time, day) in [(1, 84_600, 86_400), (2, 84_601, 86_400), (3, 86_400, 0)] {
            let day = crate::Day(day);
            let changes = BTreeMap::from([(
                ParticipantId::volume(day).unwrap(),
                vec![ParticipantChange {
                    key: crate::volume_key(day, &[height as u8; 32]).unwrap(),
                    value: Some(crate::SPENT.to_vec()),
                }],
            )]);
            let prepared = storage
                .prepare(
                    state(&storage, &[height as u8]),
                    boundary(height, time),
                    changes,
                )
                .unwrap();
            storage.materialize(prepared).unwrap();
        }
        let before = storage.manifest().unwrap();
        assert_eq!(before.participants.len(), 19);
        let expired = BTreeMap::from([(
            ParticipantId::volume(crate::Day(0)).unwrap(),
            vec![ParticipantChange {
                key: [8; 32],
                value: Some(crate::SPENT.to_vec()),
            }],
        )]);
        assert!(storage
            .prepare(state(&storage, b"invalid"), boundary(4, 88_200), expired)
            .is_err());
        assert_eq!(storage.manifest().unwrap(), before);
        let prepared = storage
            .prepare(
                state(&storage, b"boundary"),
                boundary(4, 88_200),
                BTreeMap::new(),
            )
            .unwrap();
        assert_eq!(prepared.next.participants.len(), 19);
        storage.materialize(prepared).unwrap();
        let prepared = storage
            .prepare(
                state(&storage, b"expired"),
                boundary(5, 88_201),
                BTreeMap::new(),
            )
            .unwrap();
        assert_eq!(prepared.next.participants.len(), 18);
        storage.materialize(prepared).unwrap();
        assert!(!crate::Day(86_400).eligible_at(84_599).unwrap());
        assert!(crate::Day(86_400).eligible_at(84_600).unwrap());
        assert!(crate::Day(0).eligible_at(88_199).unwrap());
        assert!(!crate::Day(0).eligible_at(88_200).unwrap());
    }
    #[test]
    fn volume_retirement_is_logical_strict_and_checkpoint_copies_one_boundary() {
        let temporary = tempfile::tempdir().unwrap();
        let storage = Storage::open(&temporary.path().join("state"), config()).unwrap();
        let genesis = storage
            .prepare(state(&storage, b"0"), boundary(0, 0), BTreeMap::new())
            .unwrap();
        storage.materialize(genesis).unwrap();
        for (height, time, expected_days) in [
            (1, 1, vec![0]),
            (2, 88_200, vec![0, 86_400]),
            (3, 88_201, vec![86_400]),
        ] {
            let day = crate::Day::at(time).unwrap();
            let prepared = storage
                .prepare(
                    state(&storage, &[height as u8]),
                    boundary(height, time),
                    BTreeMap::from([(
                        ParticipantId::volume(day).unwrap(),
                        vec![ParticipantChange {
                            key: crate::volume_key(day, &[height as u8; 32]).unwrap(),
                            value: Some(crate::SPENT.to_vec()),
                        }],
                    )]),
                )
                .unwrap();
            assert_eq!(
                prepared
                    .next
                    .participants
                    .iter()
                    .filter(|p| p.kind == ParticipantKind::Volume)
                    .map(|p| p.generation)
                    .collect::<Vec<_>>(),
                expected_days
            );
            storage.materialize(prepared).unwrap();
        }
        let retired = temporary
            .path()
            .join("state/forest/volume-00000000000000000000");
        assert!(retired.is_dir());
        for height in 4..=7 {
            let prepared = storage
                .prepare(
                    state(&storage, &[height as u8]),
                    boundary(height, 88_201),
                    BTreeMap::new(),
                )
                .unwrap();
            storage.materialize(prepared).unwrap();
            assert_eq!(
                retired.exists(),
                height <= 5,
                "retain two completed undo boundaries before physical GC"
            );
        }
        assert!(
            storage.0.raw.retired_volumes().unwrap().is_empty(),
            "completed GC records leave through the next normal materialization batch"
        );
        let manifest = storage.manifest().unwrap();
        let checkpoint = temporary.path().join("checkpoint");
        storage.checkpoint(&checkpoint, &manifest).unwrap();
        let restored = Storage::open(&checkpoint, config()).unwrap();
        assert_eq!(restored.manifest().unwrap(), manifest);
        restored.check_materialized().unwrap();
        restored.validate().unwrap();
        assert!(storage.checkpoint(&checkpoint, &manifest).is_err());
    }
}
