use crate::{authenticate, Manifest, Participant, ParticipantKind};
use anyhow::{ensure, Context, Result};
use nomt::{
    proof::{self, PathUpdate},
    FinishedSession, KeyReadWrite, Nomt, SessionParams, Witness, WitnessMode,
};
use nomt_core::hasher::{Sha2Hasher, ValueHasher};
use std::{
    collections::{BTreeMap, BTreeSet},
    fs,
    path::{Path, PathBuf},
};

#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
pub struct ParticipantId {
    pub kind: ParticipantKind,
    pub generation: u64,
}
impl ParticipantId {
    pub const APPLICATION: Self = Self {
        kind: ParticipantKind::Application,
        generation: 0,
    };
    pub fn permanent(shard: u8) -> Result<Self> {
        ensure!(shard < 16, "invalid permanent shard");
        Ok(Self {
            kind: ParticipantKind::Permanent,
            generation: shard as u64,
        })
    }
    pub fn volume(day: crate::Day) -> Result<Self> {
        ensure!(day.0 % 86_400 == 0, "noncanonical volume generation");
        Ok(Self {
            kind: ParticipantKind::Volume,
            generation: day.0,
        })
    }
    pub(crate) fn name(self) -> String {
        match self.kind {
            ParticipantKind::Application => "application".into(),
            ParticipantKind::Permanent => format!("permanent-{:02}", self.generation),
            ParticipantKind::Volume => format!("volume-{:020}", self.generation),
        }
    }
}

#[derive(Clone, Debug, serde::Deserialize)]
#[serde(default, deny_unknown_fields)]
pub struct ForestConfig {
    pub buckets: u32,
    pub cache_mib: usize,
    pub preallocate: bool,
    pub materialization_workers: usize,
}
impl ForestConfig {
    pub fn from_env() -> Result<Self> {
        match std::env::var("SHIELDD_STORAGE") {
            Ok(json) => Ok(serde_json::from_str(&json)?),
            Err(std::env::VarError::NotPresent) => Ok(Self::default()),
            Err(error) => Err(error.into()),
        }
    }
}
impl Default for ForestConfig {
    fn default() -> Self {
        Self {
            buckets: 64_000,
            cache_mib: 8,
            preallocate: true,
            materialization_workers: 2,
        }
    }
}

#[derive(Clone, Debug)]
pub struct ParticipantChange {
    pub key: [u8; 32],
    pub value: Option<Vec<u8>>,
}

pub struct ForestUpdate {
    previous: Vec<Participant>,
    next: Vec<Participant>,
    sessions: Vec<(ParticipantId, FinishedSession)>,
}

impl ForestUpdate {
    pub fn next(&self) -> &[Participant] {
        &self.next
    }
}

/// One ordered persistence owner. Proof sessions are confined to individual calls
/// or Freeze, so none survive into a mutation or shutdown.
pub struct Forest {
    directory: PathBuf,
    config: ForestConfig,
    databases: BTreeMap<ParticipantId, Nomt<Sha2Hasher>>,
    pub(crate) collected_retirements: BTreeSet<crate::Day>,
}

impl Forest {
    pub fn open(
        directory: &Path,
        config: ForestConfig,
        manifest: Option<&Manifest>,
    ) -> Result<Self> {
        ensure!(
            config.buckets > 0
                && config.cache_mib > 0
                && (1..=16).contains(&config.materialization_workers),
            "invalid NOMT capacity or cache"
        );
        ensure!(
            u64::from(config.buckets) + u64::from(config.buckets).div_ceil(4096)
                <= u64::from(u32::MAX),
            "NOMT page-address capacity exceeded"
        );
        let mut forest = Self {
            directory: directory.into(),
            config,
            databases: BTreeMap::new(),
            collected_retirements: BTreeSet::new(),
        };
        if let Some(manifest) = manifest {
            manifest.validate()?;
            ensure!(directory.is_dir(), "authenticated forest is missing");
            for participant in &manifest.participants {
                let id = ParticipantId {
                    kind: participant.kind,
                    generation: participant.generation,
                };
                forest.open_participant(id, false)?;
            }
        } else {
            fs::create_dir_all(directory)?;
            let ids = std::iter::once(ParticipantId::APPLICATION)
                .chain((0..16).map(|shard| ParticipantId::permanent(shard).expect("fixed shard")));
            for id in ids {
                let exists = directory.join(id.name()).exists();
                forest.open_participant(id, !exists)?;
                if id.kind == ParticipantKind::Permanent {
                    ensure!(
                        forest.db(id)?.root().into_inner() == [0; 32],
                        "uninitialized forest has permanent nullifiers"
                    );
                }
            }
            sync_directory(directory)?;
        }
        Ok(forest)
    }

    fn open_participant(&mut self, id: ParticipantId, create: bool) -> Result<()> {
        ensure!(
            !self.databases.contains_key(&id),
            "participant already opened"
        );
        let path = self.directory.join(id.name());
        if create {
            ensure!(!path.exists(), "new participant already exists");
        } else {
            ensure!(path.join("meta").is_file(), "NOMT participant is missing");
        }
        let mut options = nomt::Options::new();
        options.path(path);
        options.hashtable_buckets(self.config.buckets);
        options.page_cache_size(self.config.cache_mib);
        options.leaf_cache_size(self.config.cache_mib);
        options.page_cache_upper_levels(1);
        options.preallocate_ht(self.config.preallocate);
        options.commit_concurrency(1);
        options.io_workers(1);
        options.rollback(true);
        options.max_rollback_log_len(2);
        let db = Nomt::open(options).with_context(|| format!("open participant {}", id.name()))?;
        self.databases.insert(id, db);
        Ok(())
    }

    /// Genesis can be reconstructed from the host's canonical InitChain input.
    /// Only its exact recomputed root permits undo of a partial initial commit;
    /// an unknown root never becomes an empty database implicitly.
    pub fn reconcile_genesis(&self, expected_application: [u8; 32]) -> Result<()> {
        let db = self.db(ParticipantId::APPLICATION)?;
        let actual = db.root().into_inner();
        if actual != [0; 32] {
            ensure!(
                actual == expected_application,
                "unknown initial application root requires repair"
            );
            db.rollback(1)?;
            ensure!(
                db.root().into_inner() == [0; 32],
                "initial application undo mismatch"
            );
        }
        for shard in 0..16 {
            ensure!(
                self.db(ParticipantId::permanent(shard)?)?
                    .root()
                    .into_inner()
                    == [0; 32],
                "genesis permanent shard is not empty"
            );
        }
        Ok(())
    }

    pub fn ensure_volume(&mut self, day: crate::Day) -> Result<()> {
        let id = ParticipantId::volume(day)?;
        if !self.databases.contains_key(&id) {
            let exists = self.directory.join(id.name()).exists();
            self.open_participant(id, !exists)?;
            ensure!(
                self.db(id)?.root().into_inner() == [0; 32],
                "unexplained volume generation root requires recovery"
            );
            sync_directory(&self.directory)?;
        }
        Ok(())
    }

    pub fn check_roots(&self, participants: &[Participant]) -> Result<()> {
        for participant in participants {
            let id = ParticipantId {
                kind: participant.kind,
                generation: participant.generation,
            };
            ensure!(
                self.db(id)?.root().into_inner() == participant.root,
                "materialized participant root mismatch"
            );
        }
        Ok(())
    }
    fn db(&self, id: ParticipantId) -> Result<&Nomt<Sha2Hasher>> {
        self.databases
            .get(&id)
            .context("unknown authenticated participant")
    }

    /// Observe a permanent lookup against an immutable execution view. The
    /// observation must be authenticated at Freeze before the SDK decision.
    pub fn observe_permanent(
        &self,
        manifest: &Manifest,
        nullifier: &[u8; 32],
        observations: &crate::Observations,
    ) -> Result<bool> {
        let result = (|| -> Result<bool> {
            let key = crate::nullifier_key(nullifier);
            let shard = crate::nullifier_shard(&key);
            let index = 1 + shard as usize;
            let participant = manifest
                .participants
                .get(index)
                .context("permanent shard is missing from view")?;
            ensure!(
                participant.kind == ParticipantKind::Permanent
                    && participant.generation == shard as u64,
                "permanent view identity mismatch"
            );
            let db = self.db(ParticipantId::permanent(shard)?)?;
            ensure!(
                db.root().into_inner() == participant.root,
                "permanent read boundary is unavailable"
            );
            observations.reserve_read(index as u32, key)?;
            let value = db.read(key)?;
            ensure!(
                value.as_deref().is_none_or(|v| v == crate::SPENT),
                "invalid permanent nullifier marker"
            );
            observations.record(crate::ObservedValue {
                participant: index as u32,
                key,
                value: value.as_deref().map(Sha2Hasher::hash_value),
            })?;
            Ok(value.is_some())
        })();
        if let Err(error) = &result {
            if !error.is::<crate::ProtocolLimitExceeded>() {
                observations.poison();
            }
        }
        result
    }

    pub fn observe_volume(
        &self,
        manifest: &Manifest,
        day: crate::Day,
        nullifier: &[u8; 32],
        observations: &crate::Observations,
    ) -> Result<bool> {
        let result = (|| -> Result<bool> {
            let Some(index) = manifest
                .participants
                .iter()
                .position(|p| p.kind == ParticipantKind::Volume && p.generation == day.0)
            else {
                // Generation absence is authenticated by the entire manifest.
                return Ok(false);
            };
            let participant = &manifest.participants[index];
            let key = crate::volume_key(day, nullifier)?;
            let db = self.db(ParticipantId::volume(day)?)?;
            ensure!(
                db.root().into_inner() == participant.root,
                "volume read boundary is unavailable"
            );
            observations.reserve_read(index as u32, key)?;
            let value = db.read(key)?;
            ensure!(
                value.as_deref().is_none_or(|v| v == crate::SPENT),
                "invalid volume marker"
            );
            observations.record(crate::ObservedValue {
                participant: index as u32,
                key,
                value: value.as_deref().map(Sha2Hasher::hash_value),
            })?;
            Ok(value.is_some())
        })();
        if let Err(error) = &result {
            if !error.is::<crate::ProtocolLimitExceeded>() {
                observations.poison();
            }
        }
        result
    }

    pub fn authenticated_read(
        &self,
        participant: &Participant,
        key: [u8; 32],
    ) -> Result<(Option<Vec<u8>>, nomt_core::proof::PathProof)> {
        let db = self.db(ParticipantId {
            kind: participant.kind,
            generation: participant.generation,
        })?;
        let session = db.begin_session(SessionParams::default());
        ensure!(
            session.prev_root().into_inner() == participant.root,
            "proof boundary is unavailable"
        );
        let value = session.read(key)?;
        let proof = session.prove(key)?;
        authenticate(&proof, participant.root, key, value.as_deref())?;
        Ok((value, proof))
    }

    pub fn authenticate_reads(
        &self,
        manifest: &Manifest,
        observations: &crate::Observations,
    ) -> Result<()> {
        self.verify_reads(manifest, observations, true)
    }
    pub fn authenticate_result(
        &self,
        manifest: &Manifest,
        observations: &crate::Observations,
    ) -> Result<()> {
        self.verify_reads(manifest, observations, false)
    }
    fn verify_reads(
        &self,
        manifest: &Manifest,
        observations: &crate::Observations,
        freeze: bool,
    ) -> Result<()> {
        self.check_roots(&manifest.participants)?;
        let mut sessions = BTreeMap::new();
        let prove = |index: u32, key| {
            let participant = manifest
                .participants
                .get(index as usize)
                .context("observation participant is absent")?;
            let session = match sessions.entry(index) {
                std::collections::btree_map::Entry::Occupied(entry) => entry.into_mut(),
                std::collections::btree_map::Entry::Vacant(entry) => entry.insert(
                    self.db(ParticipantId {
                        kind: participant.kind,
                        generation: participant.generation,
                    })?
                    .begin_session(SessionParams::default()),
                ),
            };
            let value = session.read(key)?;
            authenticate(
                &session.prove(key)?,
                participant.root,
                key,
                value.as_deref(),
            )
        };
        if freeze {
            observations.freeze(prove)
        } else {
            observations.authenticate(prove)
        }
    }

    /// Authenticate both prior values and the complete update witness; a corrupt
    /// value index cannot manufacture absence, delete counts, or a new root.
    pub fn prepare(
        &self,
        participants: &[Participant],
        mut changes: BTreeMap<ParticipantId, Vec<ParticipantChange>>,
    ) -> Result<ForestUpdate> {
        self.check_roots(participants)?;
        let mut next = participants.to_vec();
        let mut sessions = Vec::new();
        for participant in &mut next {
            let id = ParticipantId {
                kind: participant.kind,
                generation: participant.generation,
            };
            let Some(mut changes) = changes.remove(&id) else {
                continue;
            };
            if changes.is_empty() {
                continue;
            }
            changes.sort_unstable_by_key(|change| change.key);
            ensure!(
                changes.windows(2).all(|c| c[0].key < c[1].key),
                "duplicate authenticated delta key"
            );
            let db = self.db(id)?;
            let session =
                db.begin_session(SessionParams::default().witness_mode(WitnessMode::read_write()));
            let mut operations = Vec::with_capacity(changes.len());
            let mut count = participant.count;
            for change in &changes {
                let previous = session.read(change.key)?;
                if matches!(
                    id.kind,
                    ParticipantKind::Permanent | ParticipantKind::Volume
                ) {
                    ensure!(
                        change.value.as_deref() == Some(crate::SPENT),
                        "nullifiers require the canonical one-byte marker"
                    );
                    ensure!(
                        previous.is_none(),
                        "authenticated nullifier is already spent"
                    );
                    if id.kind == ParticipantKind::Permanent {
                        ensure!(
                            crate::nullifier_shard(&change.key) as u64 == id.generation,
                            "nullifier belongs to another permanent shard"
                        );
                    }
                }
                match (previous.is_some(), change.value.is_some()) {
                    (false, true) => {
                        count = count.checked_add(1).context("participant count overflow")?
                    }
                    (true, false) => {
                        count = count
                            .checked_sub(1)
                            .context("participant count underflow")?
                    }
                    _ => {}
                }
                operations.push((
                    change.key,
                    KeyReadWrite::ReadThenWrite(previous, change.value.clone()),
                ));
            }
            let mut finished = session.finish(operations)?;
            let witness = finished
                .take_witness()
                .context("missing authenticated delta witness")?;
            verify_update(
                &witness,
                &changes,
                participant.root,
                finished.root().into_inner(),
            )?;
            participant.root = finished.root().into_inner();
            participant.count = count;
            ensure!(
                (count == 0) == (participant.root == [0; 32]),
                "updated participant count disagrees with root"
            );
            sessions.push((id, finished));
        }
        ensure!(
            changes.is_empty(),
            "delta names an unauthenticated participant"
        );
        Ok(ForestUpdate {
            previous: participants.into(),
            next,
            sessions,
        })
    }

    /// The SDK decision must already be durable. Failure leaves raw state at the
    /// previous manifest; recovery rewinds just the participants that advanced.
    /// Only after raw durability: the forest writer drains readers and jobs.
    /// Retired handles must not keep their resident indexes alive indefinitely.
    pub(crate) fn collect_retired(
        &mut self,
        manifest: &Manifest,
        retired: &[(crate::Day, u64)],
    ) -> Result<()> {
        let active = |id: &ParticipantId| {
            manifest
                .participants
                .iter()
                .any(|p| p.kind == id.kind && p.generation == id.generation)
        };
        self.databases
            .retain(|id, _| id.kind != ParticipantKind::Volume || active(id));
        for &(day, height) in retired {
            let id = ParticipantId::volume(day)?;
            if active(&id) || manifest.height <= height.saturating_add(2) {
                continue;
            }
            if self.collected_retirements.contains(&day) {
                continue;
            }
            let path = self.directory.join(id.name());
            match std::fs::remove_dir_all(&path) {
                Ok(()) => {}
                Err(error) if error.kind() == std::io::ErrorKind::NotFound => {}
                Err(error) => return Err(error.into()),
            }
            // A retry after an earlier directory-sync failure must also make
            // an already missing directory durable before clearing its ledger.
            std::fs::File::open(&self.directory)?.sync_all()?;
            self.collected_retirements.insert(day);
        }
        Ok(())
    }
    pub fn materialize(&self, update: ForestUpdate) -> Result<()> {
        self.check_roots(&update.previous)?;
        let mut jobs = update.sessions.into_iter();
        loop {
            let group = jobs
                .by_ref()
                .take(self.config.materialization_workers)
                .map(|(id, session)| Ok((self.db(id)?, session)))
                .collect::<Result<Vec<_>>>()?;
            if group.is_empty() {
                break;
            }
            std::thread::scope(|scope| {
                let handles = group
                    .into_iter()
                    .map(|(database, session)| scope.spawn(move || session.commit(database)))
                    .collect::<Vec<_>>();
                let mut failure = None;
                // Join every started participant, even after the first failure.
                for handle in handles {
                    let result = handle.join().unwrap_or_else(|_| {
                        Err(anyhow::anyhow!("NOMT participant materializer panicked"))
                    });
                    if let Err(error) = result {
                        if failure.is_none() {
                            failure = Some(error);
                        }
                    }
                }
                failure.map_or(Ok(()), Err)
            })?;
        }
        self.check_roots(&update.next)
    }

    /// Open only the participant identities authenticated by the decided
    /// manifest. New day generations may have advanced before raw durability;
    /// retired generations must remain at their previous roots until raw commit.
    pub fn reconcile_decided(
        &mut self,
        previous: &[Participant],
        next: &[Participant],
    ) -> Result<()> {
        for new in next {
            let id = ParticipantId {
                kind: new.kind,
                generation: new.generation,
            };
            if !self.databases.contains_key(&id) {
                ensure!(
                    id.kind == ParticipantKind::Volume
                        && !previous
                            .iter()
                            .any(|p| p.kind == id.kind && p.generation == id.generation),
                    "missing existing decided participant"
                );
                let exists = self.directory.join(id.name()).exists();
                self.open_participant(id, !exists)?;
                sync_directory(&self.directory)?;
            }
            let old = previous
                .iter()
                .find(|p| p.kind == id.kind && p.generation == id.generation);
            let old_root = old.map_or([0; 32], |p| p.root);
            let db = self.db(id)?;
            let actual = db.root().into_inner();
            if actual == old_root {
                continue;
            }
            ensure!(
                actual == new.root && actual != old_root,
                "unknown root requires matched repair"
            );
            db.rollback(1)?;
            ensure!(
                db.root().into_inner() == old_root,
                "native undo boundary mismatch"
            );
        }
        for old in previous {
            if !next
                .iter()
                .any(|p| p.kind == old.kind && p.generation == old.generation)
            {
                ensure!(
                    old.kind == ParticipantKind::Volume,
                    "permanent participant was retired"
                );
            }
        }
        self.check_roots(previous)
    }

    pub fn rewind_decided(&mut self, previous: &[Participant], next: &[Participant]) -> Result<()> {
        self.reconcile_decided(previous, next)
    }

    /// Validate every full application value and ordering link in a raw
    /// checkpoint. Inclusion, unique raw keys, and the exact authenticated count
    /// detect both extra and missing records without an unbounded observation ledger.
    pub fn validate_application_values(
        &self,
        participant: &Participant,
        values: impl Iterator<Item = Result<([u8; 32], Vec<u8>)>>,
    ) -> Result<()> {
        ensure!(
            participant.kind == ParticipantKind::Application && participant.generation == 0,
            "invalid application participant"
        );
        let session = self
            .db(ParticipantId::APPLICATION)?
            .begin_session(SessionParams::default());
        ensure!(
            session.prev_root().into_inner() == participant.root,
            "raw validation boundary is unavailable"
        );
        let mut count = 0u64;
        for value in values {
            let (key, commitment) = value?;
            ensure!(
                count < participant.count,
                "raw checkpoint contains extra records"
            );
            authenticate(
                &session.prove(key)?,
                participant.root,
                key,
                Some(&commitment),
            )?;
            count = count.checked_add(1).context("raw record count overflow")?;
        }
        ensure!(
            count == participant.count,
            "raw checkpoint is missing records"
        );
        Ok(())
    }

    pub fn capacity(
        &self,
        participants: &[Participant],
    ) -> Result<Vec<crate::ParticipantCapacity>> {
        self.check_roots(participants)?;
        participants
            .iter()
            .map(|participant| {
                let id = ParticipantId {
                    kind: participant.kind,
                    generation: participant.generation,
                };
                let usage = self.db(id)?.storage_usage()?;
                let path = self.directory.join(id.name());
                let files = [
                    ("ln", u64::from(usage.leaf_next_page)),
                    ("bbn", u64::from(usage.branch_next_page)),
                ]
                .into_iter()
                .map(|(file, next_page)| {
                    let usable_pages = u64::from(u32::MAX) - 1;
                    Ok(crate::FileCapacity {
                        file: file.into(),
                        file_bytes: fs::metadata(path.join(file))?.len(),
                        next_page,
                        usable_pages,
                        address_headroom_pages: usable_pages.saturating_sub(next_page),
                    })
                })
                .collect::<Result<Vec<_>>>()?;
                let undo_file_bytes = fs::read_dir(&path)?.try_fold(0u64, |bytes, entry| {
                    let entry = entry?;
                    let name = entry.file_name();
                    if name.to_str().is_some_and(|name| name.contains("rollback"))
                        && entry.file_type()?.is_file()
                    {
                        bytes
                            .checked_add(entry.metadata()?.len())
                            .context("undo file size overflow")
                    } else {
                        Ok(bytes)
                    }
                })?;
                Ok(crate::ParticipantCapacity {
                    participant: id.name(),
                    entries: participant.count,
                    files,
                    bucket_capacity: usage.bucket_capacity,
                    occupied_buckets: usage.occupied_buckets,
                    resident_branch_count: usage.resident_branch_count,
                    resident_branch_page_bytes: usage.resident_branch_page_bytes,
                    resident_bucket_metadata_bytes: usage.resident_bucket_metadata_bytes,
                    pool_mapped_bytes: usage.pool_mapped_bytes,
                    resident_map_node_bytes: usage.resident_map_node_bytes,
                    resident_branch_header_bytes: usage.resident_branch_header_bytes,
                    resident_index_requested_bytes: usage
                        .resident_branch_page_bytes
                        .checked_add(usage.resident_map_node_bytes)
                        .and_then(|n| n.checked_add(usage.resident_branch_header_bytes))
                        .and_then(|n| n.checked_add(usage.resident_bucket_metadata_bytes))
                        .context("resident index accounting overflow")?,
                    undo_file_bytes,
                    undo_first_record: usage.undo_first_record,
                    undo_last_record: usage.undo_last_record,
                })
            })
            .collect()
    }

    pub fn validate_participants(&self, participants: &[Participant]) -> Result<()> {
        self.check_roots(participants)?;
        for participant in participants {
            let id = ParticipantId {
                kind: participant.kind,
                generation: participant.generation,
            };
            self.db(id)?
                .export_sorted(participant.root, participant.count, |key, value| {
                    match participant.kind {
                        ParticipantKind::Application => {
                            crate::ValueCommitment::decode(&value)?;
                        }
                        ParticipantKind::Permanent => {
                            ensure!(
                                value == crate::SPENT
                                    && u64::from(crate::nullifier_shard(&key))
                                        == participant.generation,
                                "invalid permanent checkpoint entry"
                            );
                        }
                        ParticipantKind::Volume => {
                            ensure!(value == crate::SPENT, "invalid volume checkpoint entry");
                        }
                    }
                    Ok(())
                })?;
        }
        Ok(())
    }
    /// Capture quiesced files only. Full sorted validation runs against the copy
    /// after releasing the live publication boundary.
    pub fn checkpoint(&self, destination: &Path, participants: &[Participant]) -> Result<()> {
        ensure!(
            !destination.exists(),
            "forest checkpoint destination already exists"
        );
        self.check_roots(participants)?;
        fs::create_dir_all(destination)?;
        for participant in participants {
            let id = ParticipantId {
                kind: participant.kind,
                generation: participant.generation,
            };
            copy_files(
                &self.directory.join(id.name()),
                &destination.join(id.name()),
            )?;
        }
        sync_directory(destination)
    }
}

fn verify_update(
    witness: &Witness,
    changes: &[ParticipantChange],
    previous: [u8; 32],
    next: [u8; 32],
) -> Result<()> {
    ensure!(
        witness.operations.reads.len() == changes.len()
            && witness.operations.writes.len() == changes.len(),
        "delta witness cardinality mismatch"
    );
    let mut paths = witness
        .path_proofs
        .iter()
        .map(|path| {
            Ok(PathUpdate {
                inner: path
                    .inner
                    .verify::<Sha2Hasher>(path.path.path(), previous)
                    .map_err(|e| anyhow::anyhow!("invalid delta path: {e:?}"))?,
                ops: Vec::new(),
            })
        })
        .collect::<Result<Vec<_>>>()?;
    let mut seen = BTreeSet::new();
    for read in &witness.operations.reads {
        ensure!(
            changes.binary_search_by_key(&read.key, |c| c.key).is_ok() && seen.insert(read.key),
            "unexpected witnessed read"
        );
        let path = &paths
            .get(read.path_index)
            .context("invalid read path index")?
            .inner;
        let matches = match read.value {
            Some(value_hash) => path.confirm_value(&nomt_core::trie::LeafData {
                key_path: read.key,
                value_hash,
            }),
            None => path.confirm_nonexistence(&read.key),
        }
        .map_err(|e| anyhow::anyhow!("delta read outside path: {e:?}"))?;
        ensure!(matches, "delta prior value authentication failed");
    }
    seen.clear();
    for write in &witness.operations.writes {
        let change = &changes[changes
            .binary_search_by_key(&write.key, |c| c.key)
            .map_err(|_| anyhow::anyhow!("unexpected witnessed write"))?];
        ensure!(
            seen.insert(write.key)
                && write.value == change.value.as_deref().map(Sha2Hasher::hash_value),
            "delta witnessed write mismatch"
        );
        paths
            .get_mut(write.path_index)
            .context("invalid write path index")?
            .ops
            .push((write.key, write.value));
    }
    for path in &mut paths {
        path.ops.sort_unstable_by_key(|op| op.0);
    }
    paths.sort_by(|a, b| a.inner.path().cmp(b.inner.path()));
    ensure!(
        paths.iter().all(|path| !path.ops.is_empty()),
        "unused delta path"
    );
    ensure!(
        proof::verify_update::<Sha2Hasher>(previous, &paths)
            .map_err(|e| anyhow::anyhow!("invalid authenticated delta: {e:?}"))?
            == next,
        "delta resulting root mismatch"
    );
    Ok(())
}

fn sync_directory(path: &Path) -> Result<()> {
    fs::File::open(path)?.sync_all()?;
    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;
    fn participants() -> Vec<Participant> {
        std::iter::once(Participant {
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
        .collect()
    }
    #[test]
    fn interrupted_participants_rewind_and_replay_exact_roots() {
        let tmp = tempfile::tempdir().unwrap();
        let mut forest = Forest::open(
            &tmp.path().join("forest"),
            ForestConfig {
                buckets: 128,
                cache_mib: 1,
                preallocate: false,
                materialization_workers: 2,
            },
            None,
        )
        .unwrap();
        let previous = participants();
        let changes = BTreeMap::from([
            (
                ParticipantId::APPLICATION,
                vec![ParticipantChange {
                    key: [2; 32],
                    value: Some(vec![3]),
                }],
            ),
            (
                ParticipantId::permanent(1).unwrap(),
                vec![ParticipantChange {
                    key: [0x10; 32],
                    value: Some(crate::SPENT.to_vec()),
                }],
            ),
        ]);
        let mut prepared = forest.prepare(&previous, changes.clone()).unwrap();
        let next = prepared.next.clone();
        let (id, first) = prepared.sessions.remove(0);
        first.commit(forest.db(id).unwrap()).unwrap();
        drop(prepared);
        forest.rewind_decided(&previous, &next).unwrap();
        let prepared = forest.prepare(&previous, changes).unwrap();
        assert_eq!(prepared.next, next);
        forest.materialize(prepared).unwrap();
        let (value, proof) = forest.authenticated_read(&next[0], [2; 32]).unwrap();
        assert_eq!(value, Some(vec![3]));
        assert!(authenticate(&proof, next[0].root, [2; 32], None).is_err());
        assert!(authenticate(&proof, next[0].root, [2; 32], Some(&[4])).is_err());
        forest.authenticated_read(&next[0], [4; 32]).unwrap();
        forest.rewind_decided(&previous, &next).unwrap();
        forest.rewind_decided(&previous, &next).unwrap();
    }
    #[test]
    fn fifty_thousand_permanent_nullifiers_materialize_with_compact_markers() {
        let tmp = tempfile::tempdir().unwrap();
        let forest = Forest::open(
            &tmp.path().join("forest"),
            ForestConfig {
                buckets: 4096,
                cache_mib: 1,
                preallocate: false,
                materialization_workers: 2,
            },
            None,
        )
        .unwrap();
        let mut changes: BTreeMap<ParticipantId, Vec<ParticipantChange>> = BTreeMap::new();
        let nf_key = |index: u32| {
            let mut nf = [0; 32];
            nf[..4].copy_from_slice(&index.to_be_bytes());
            crate::nullifier_key(&nf)
        };
        for index in 0..50_000 {
            let key = nf_key(index);
            changes
                .entry(ParticipantId::permanent(crate::nullifier_shard(&key)).unwrap())
                .or_default()
                .push(ParticipantChange {
                    key,
                    value: Some(crate::SPENT.to_vec()),
                });
        }
        let update = forest.prepare(&participants(), changes).unwrap();
        let next = update.next.clone();
        assert_eq!(next[1..].iter().map(|p| p.count).sum::<u64>(), 50_000);
        forest.materialize(update).unwrap();
        for index in [0, 24_999, 49_999] {
            let key = nf_key(index);
            let p = &next[1 + crate::nullifier_shard(&key) as usize];
            assert_eq!(
                forest.authenticated_read(p, key).unwrap().0.as_deref(),
                Some(crate::SPENT)
            );
        }
        let missing = nf_key(50_001);
        assert!(forest
            .authenticated_read(
                &next[1 + crate::nullifier_shard(&missing) as usize],
                missing
            )
            .unwrap()
            .0
            .is_none());
        let duplicate = nf_key(0);
        let changes = BTreeMap::from([(
            ParticipantId::permanent(crate::nullifier_shard(&duplicate)).unwrap(),
            vec![ParticipantChange {
                key: duplicate,
                value: Some(crate::SPENT.to_vec()),
            }],
        )]);
        assert!(forest.prepare(&next, changes).is_err());
    }
}

pub(crate) fn file_bytes(source: &Path) -> Result<u64> {
    fs::read_dir(source)?.try_fold(0u64, |bytes, entry| {
        let entry = entry?;
        let kind = entry.file_type()?;
        let size = if kind.is_file() {
            entry.metadata()?.len()
        } else if kind.is_dir() {
            file_bytes(&entry.path())?
        } else {
            anyhow::bail!("checkpoint contains a link or special file");
        };
        bytes
            .checked_add(size)
            .context("checkpoint file size overflow")
    })
}

pub(crate) fn copy_files(source: &Path, destination: &Path) -> Result<()> {
    ensure!(source.is_dir(), "NOMT checkpoint source is missing");
    fs::create_dir_all(destination)?;
    for entry in fs::read_dir(source)? {
        let entry = entry?;
        let kind = entry.file_type()?;
        let target = destination.join(entry.file_name());
        if kind.is_dir() {
            copy_files(&entry.path(), &target)?;
        } else {
            ensure!(
                kind.is_file(),
                "NOMT checkpoint contains a nonregular entry"
            );
            clone_file(&entry.path(), &target)?;
            fs::File::open(&target)?.sync_all()?;
        }
    }
    sync_directory(destination)
}

fn clone_file(source: &Path, target: &Path) -> Result<()> {
    #[cfg(target_os = "macos")]
    {
        use std::os::unix::ffi::OsStrExt;
        let source = std::ffi::CString::new(source.as_os_str().as_bytes())?;
        let target = std::ffi::CString::new(target.as_os_str().as_bytes())?;
        if unsafe { libc::clonefile(source.as_ptr(), target.as_ptr(), 0) } == 0 {
            return Ok(());
        }
    }
    #[cfg(target_os = "linux")]
    {
        use std::os::fd::AsRawFd;
        let source_file = fs::File::open(source)?;
        let target_file = fs::OpenOptions::new()
            .write(true)
            .create_new(true)
            .open(target)?;
        // Linux FICLONE takes a source descriptor and makes private COW extents.
        if unsafe { libc::ioctl(target_file.as_raw_fd(), 0x40049409, source_file.as_raw_fd()) } == 0
        {
            return Ok(());
        }
        drop(target_file);
        fs::remove_file(target)?;
    }
    fs::copy(source, target)?;
    Ok(())
}
