use super::*;
use nomt::{
    proof::{self, PathUpdate},
    FinishedSession, KeyReadWrite, Nomt, SessionParams, Witness, WitnessMode,
};
use std::{
    collections::BTreeSet,
    fs::{self, File, OpenOptions},
    io::{Read, Write},
    path::{Path, PathBuf},
};
const FORMAT: &str = "shieldd.nomt.spent.v1.sha256.p16";
const MAX_INSERTIONS: usize = crate::component::tree::MAX_NULLIFIERS_PER_BLOCK;
const MAX_RECORD_BYTES: u64 = 4 * 1024 * 1024;
/// A shared database read capability attached by the persistence owner.
/// Every read checks the application's authenticated boundary before returning.
#[derive(Clone)]
pub struct Reader(pub std::sync::Arc<std::sync::RwLock<Store>>);

impl Reader {
    pub fn status(&self, nullifier: Nullifier, boundary: &Boundary) -> Result<Status> {
        self.0
            .read()
            .map_err(|_| anyhow::anyhow!("nullifier writer failed"))?
            .status(nullifier, boundary)
    }
    pub fn validate_boundary(&self, boundary: &Boundary) -> Result<()> {
        let store = self
            .0
            .read()
            .map_err(|_| anyhow::anyhow!("nullifier writer failed"))?;
        store.ensure_ready()?;
        ensure!(
            store.boundary.as_ref() == Some(boundary) && store.actual_roots() == boundary.roots,
            "nullifier boundary is unavailable"
        );
        Ok(())
    }

    pub async fn contains<S: cnidarium::StateRead + ?Sized>(
        &self,
        state: &S,
        values: &[Nullifier],
    ) -> Result<Vec<bool>> {
        let committed = read_boundary(state).await?;
        let store = self
            .0
            .read()
            .map_err(|_| anyhow::anyhow!("nullifier writer failed; recovery required"))?;
        values
            .iter()
            .map(|value| {
                let status = store.status(*value, &committed)?;
                status.verify(&committed)?;
                Ok(status.spent)
            })
            .collect()
    }
}

/// Physical options are node-local and never affect authenticated roots.
#[derive(Clone, Debug, Deserialize)]
#[serde(default, deny_unknown_fields)]
pub struct Config {
    pub buckets: u32,
    pub cache_mib: usize,
    pub preallocate: bool,
}
impl Config {
    pub fn from_env() -> Result<Self> {
        match std::env::var("SHIELDD_NULLIFIER_STORAGE") {
            Ok(json) => Ok(serde_json::from_str(&json)?),
            Err(std::env::VarError::NotPresent) => Ok(Self::default()),
            Err(error) => Err(error.into()),
        }
    }
}
impl Default for Config {
    fn default() -> Self {
        Self {
            buckets: 64_000,
            cache_mib: 8,
            preallocate: true,
        }
    }
}

/// Canonical insertion record, retained separately from working trie databases.
#[derive(Clone, Debug, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct Transition {
    pub previous: Boundary,
    pub next: Boundary,
    pub nullifiers: Vec<Nullifier>,
}

impl Transition {
    fn validate(&self) -> Result<()> {
        let height = self
            .next
            .height
            .context("nullifier transition has no height")?;
        ensure!(
            self.previous
                .height
                .map_or(height == 0, |h| h.checked_add(1) == Some(height)),
            "nullifier transition height is not consecutive"
        );
        ensure!(
            self.nullifiers.len() <= MAX_INSERTIONS,
            "nullifier record insertion limit exceeded"
        );
        let mut seen = BTreeSet::new();
        for nullifier in &self.nullifiers {
            ensure!(
                seen.insert(*nullifier),
                "duplicate nullifier in recovery record"
            );
        }
        if self.previous.height.is_none() {
            ensure!(
                self.previous == Boundary::default(),
                "invalid initial nullifier boundary"
            );
        }
        Ok(())
    }
}

#[derive(Clone, Debug, Serialize)]
pub struct PartitionCapacity {
    pub partition: usize,
    pub buckets: usize,
    pub occupied: usize,
    pub alert: &'static str,
}

pub struct Prepared {
    transition: Transition,
    sessions: Vec<(usize, FinishedSession)>,
}

impl Prepared {
    pub fn transition(&self) -> &Transition {
        &self.transition
    }
}

/// A fixed, authenticated export boundary over immutable canonical records.
/// Does not retain a NOMT session or block the application's ordered writer.
pub struct History {
    directory: PathBuf,
    boundary: Boundary,
}
impl History {
    pub fn export(&self, destination: &Path) -> Result<()> {
        ensure!(
            !destination.exists(),
            "nullifier export destination already exists"
        );
        fs::create_dir_all(destination)?;
        let Some(last) = self.boundary.height else {
            anyhow::bail!("cannot export before genesis");
        };
        let mut previous = Boundary::default();
        for height in 0..=last {
            let filename = format!("{height:020}.json");
            let bytes = read_record(File::open(self.directory.join(&filename))?)?;
            let record: Transition = serde_json::from_slice(&bytes)?;
            record.validate()?;
            ensure!(
                record.previous == previous && record.next.height == Some(height),
                "nullifier export history has a gap or mismatch"
            );
            previous = record.next;
            durable_write(&destination.join(filename), &bytes)?;
        }
        ensure!(
            previous == self.boundary,
            "nullifier export checkpoint mismatch"
        );
        // Written last: incomplete exports have no authenticated completion marker.
        durable_write(
            &destination.join("checkpoint.json"),
            &serde_json::to_vec(&self.boundary)?,
        )
    }
}

pub struct Store {
    directory: PathBuf,
    partitions: Vec<Nomt<Sha2Hasher>>,
    ready: bool,
    boundary: Option<Boundary>,
}
impl Store {
    /// `create` is permitted only for a new genesis or an explicit restore target.
    /// Opening existing application state must never silently create an empty set.
    pub fn open(directory: &Path, config: &Config, create: bool) -> Result<Self> {
        ensure!(
            config.buckets > 0,
            "nullifier partition capacity must be positive"
        );
        ensure!(
            u64::from(config.buckets) + u64::from(config.buckets).div_ceil(4096)
                <= u64::from(u32::MAX),
            "nullifier hash table exceeds NOMT's page-count limit"
        );
        ensure!(
            config.cache_mib > 0 && config.cache_mib.checked_mul(1024 * 1024).is_some(),
            "nullifier cache size is invalid"
        );
        if create {
            ensure!(!directory.exists(), "nullifier store already exists");
            fs::create_dir_all(directory)?;
            durable_write(&directory.join("format"), FORMAT.as_bytes())?;
            fs::create_dir(directory.join("history"))?;
            sync_directory(directory)?;
        } else {
            ensure!(
                fs::read(directory.join("format"))? == FORMAT.as_bytes(),
                "unsupported nullifier store format"
            );
            for index in 0..PARTITIONS {
                ensure!(
                    directory
                        .join(format!("partition-{index:02}"))
                        .join("meta")
                        .is_file(),
                    "missing nullifier partition {index}"
                );
            }
            ensure!(
                directory.join("history").is_dir(),
                "missing nullifier recovery history"
            );
        }
        let mut partitions = Vec::with_capacity(PARTITIONS);
        for index in 0..PARTITIONS {
            let mut options = nomt::Options::new();
            options.path(directory.join(format!("partition-{index:02}")));
            options.hashtable_buckets(config.buckets);
            options.preallocate_ht(config.preallocate);
            options.page_cache_size(config.cache_mib);
            options.leaf_cache_size(config.cache_mib);
            options.page_cache_upper_levels(1);
            options.commit_concurrency(1);
            options.io_workers(1);
            options.rollback(true);
            options.max_rollback_log_len(2);
            partitions.push(
                Nomt::open(options).with_context(|| format!("open nullifier partition {index}"))?,
            );
        }
        sync_directory(directory)?;
        Ok(Self {
            directory: directory.to_owned(),
            partitions,
            ready: false,
            boundary: None,
        })
    }

    fn actual_roots(&self) -> Roots {
        Roots(std::array::from_fn(|index| {
            self.partitions[index].root().into_inner()
        }))
    }

    fn ensure_ready(&self) -> Result<()> {
        ensure!(
            self.ready && self.partitions.iter().all(|p| !p.is_poisoned()),
            "nullifier store requires recovery"
        );
        Ok(())
    }

    /// Recover a partial local commit to the application's authenticated boundary.
    /// A partition ahead of the application is rolled back; no application state
    /// is advanced on the authority of the intent file alone.
    pub fn recover(&mut self, committed: &Boundary) -> Result<()> {
        self.ready = false;
        let intent_path = self.directory.join("intent.json");
        match File::open(&intent_path) {
            Ok(file) => {
                let intent: Transition = serde_json::from_slice(&read_record(file)?)?;
                intent.validate()?;
                ensure!(
                    committed == &intent.previous || committed == &intent.next,
                    "application root disagrees with nullifier recovery intent"
                );
                let actual = self.actual_roots();
                for index in 0..PARTITIONS {
                    ensure!(
                        actual.0[index] == intent.previous.roots.0[index]
                            || actual.0[index] == intent.next.roots.0[index],
                        "nullifier partition {index} has unknown root"
                    );
                }
                if committed == &intent.previous {
                    for index in 0..PARTITIONS {
                        if actual.0[index] != committed.roots.0[index] {
                            self.partitions[index].rollback(1)?;
                        }
                    }
                } else {
                    // The application commits only after all partitions; a lagging
                    // partition at this boundary is corruption, not a replay request.
                    ensure!(
                        actual == committed.roots,
                        "application committed before nullifier partitions"
                    );
                    self.retain(&intent)?;
                }
                ensure!(
                    self.actual_roots() == committed.roots,
                    "nullifier recovery root mismatch"
                );
                fs::remove_file(&intent_path)?;
                sync_directory(&self.directory)?;
            }
            Err(error) if error.kind() == std::io::ErrorKind::NotFound => {
                ensure!(
                    self.actual_roots() == committed.roots,
                    "nullifier roots disagree without recovery intent"
                );
            }
            Err(error) => return Err(error.into()),
        }
        if let Some(height) = committed.height {
            let bytes = read_record(File::open(
                self.directory
                    .join("history")
                    .join(format!("{height:020}.json")),
            )?)
            .context("committed nullifier recovery record is missing")?;
            let retained: Transition = serde_json::from_slice(&bytes)?;
            retained.validate()?;
            ensure!(
                retained.next == *committed,
                "committed nullifier history boundary mismatch"
            );
        } else {
            ensure!(
                *committed == Boundary::default(),
                "invalid uninitialized nullifier boundary"
            );
        }
        self.boundary = Some(committed.clone());
        self.ready = true;
        Ok(())
    }

    pub fn status(&self, nullifier: Nullifier, committed: &Boundary) -> Result<Status> {
        self.ensure_ready()?;
        ensure!(
            self.actual_roots() == committed.roots,
            "nullifier query root is stale"
        );
        ensure!(
            self.boundary.as_ref() == Some(committed),
            "nullifier query boundary is stale"
        );
        let path = key(nullifier);
        let session = self.partitions[partition(&path)].begin_session(SessionParams::default());
        let proof = session.prove(path)?;
        let verified = proof
            .verify::<Sha2Hasher>(
                path.view_bits::<Msb0>(),
                committed.roots.0[partition(&path)],
            )
            .map_err(|e| anyhow::anyhow!("invalid nullifier path: {e:?}"))?;
        let absent = verified
            .confirm_nonexistence(&path)
            .map_err(|e| anyhow::anyhow!("nullifier path out of scope: {e:?}"))?;
        let status = Status {
            nullifier,
            boundary: committed.clone(),
            spent: !absent,
            proof,
        };
        status.verify(committed)?;
        Ok(status)
    }

    pub fn prepare(
        &self,
        height: u64,
        block_id: [u8; 32],
        committed: &Boundary,
        nullifiers: Vec<Nullifier>,
    ) -> Result<Prepared> {
        self.ensure_ready()?;
        ensure!(
            !self.directory.join("intent.json").exists(),
            "nullifier recovery intent is pending"
        );
        ensure!(
            nullifiers.len() <= MAX_INSERTIONS,
            "block nullifier limit exceeded"
        );
        let mut unique = BTreeSet::new();
        for nf in &nullifiers {
            ensure!(unique.insert(*nf), "duplicate nullifier in block");
        }
        ensure!(
            self.actual_roots() == committed.roots,
            "nullifier update root is stale"
        );
        let mut keys: [Vec<[u8; 32]>; PARTITIONS] = std::array::from_fn(|_| Vec::new());
        for nf in &nullifiers {
            let path = key(*nf);
            keys[partition(&path)].push(path);
        }
        ensure!(
            self.boundary.as_ref() == Some(committed),
            "nullifier update boundary is stale"
        );
        ensure!(
            committed
                .height
                .map_or(height == 0, |h| h.checked_add(1) == Some(height)),
            "nullifier block height is not consecutive"
        );
        let mut next = Boundary {
            height: Some(height),
            block_id,
            roots: committed.roots.clone(),
        };
        let mut sessions = Vec::new();
        for (index, mut paths) in keys.into_iter().enumerate() {
            if paths.is_empty() {
                continue;
            }
            paths.sort_unstable();
            ensure!(
                paths.windows(2).all(|pair| pair[0] != pair[1]),
                "nullifier key collision"
            );
            let session = self.partitions[index]
                .begin_session(SessionParams::default().witness_mode(WitnessMode::read_write()));
            // A value-index miss is only an optimization. The witness below must
            // independently prove absence, even if the value index is corrupt.
            for path in &paths {
                ensure!(session.read(*path)?.is_none(), "nullifier already spent");
            }
            let actuals = paths
                .iter()
                .map(|path| {
                    (
                        *path,
                        KeyReadWrite::ReadThenWrite(None, Some(SPENT_VALUE.to_vec())),
                    )
                })
                .collect();
            let mut finished = session.finish(actuals)?;
            let witness = finished
                .take_witness()
                .context("nullifier update witness missing")?;
            verify_insertions(
                &witness,
                &paths,
                committed.roots.0[index],
                finished.root().into_inner(),
            )?;
            next.roots.0[index] = finished.root().into_inner();
            sessions.push((index, finished));
        }
        Ok(Prepared {
            transition: Transition {
                previous: committed.clone(),
                next,
                nullifiers,
            },
            sessions,
        })
    }

    /// Must succeed before Bankd, NOMT or application state changes durably.
    /// Readers can still authenticate the previous boundary until `commit` starts.
    pub fn persist_intent(&mut self, prepared: &Prepared) -> Result<()> {
        self.ensure_ready()?;
        ensure!(
            self.actual_roots() == prepared.transition.previous.roots,
            "prepared nullifier transition is stale"
        );
        ensure!(
            self.boundary.as_ref() == Some(&prepared.transition.previous),
            "prepared nullifier boundary is stale"
        );
        let path = self.directory.join("intent.json");
        let bytes = serde_json::to_vec(&prepared.transition)?;
        if path.exists() {
            ensure!(
                read_record(File::open(&path)?)? == bytes,
                "another nullifier recovery intent is pending"
            );
            return Ok(());
        }
        let height = prepared
            .transition
            .next
            .height
            .context("nullifier transition has no height")?;
        ensure!(
            !self
                .directory
                .join("history")
                .join(format!("{height:020}.json"))
                .exists(),
            "nullifier block already retained"
        );
        self.ready = false;
        durable_write(&path, &bytes)?;
        self.ready = true;
        Ok(())
    }

    /// Commit a transition whose intent is already durable. Leaves the store
    /// unavailable until the authenticated application commit selects a boundary.
    pub fn commit(&mut self, prepared: Prepared) -> Result<Transition> {
        self.ensure_ready()?;
        ensure!(
            self.boundary.as_ref() == Some(&prepared.transition.previous)
                && self.actual_roots() == prepared.transition.previous.roots,
            "prepared nullifier boundary is stale"
        );
        let intent = read_record(
            File::open(self.directory.join("intent.json"))
                .context("nullifier intent must be durable before committing participants")?,
        )?;
        ensure!(
            intent == serde_json::to_vec(&prepared.transition)?,
            "durable nullifier intent differs from prepared transition"
        );
        self.ready = false;
        for (index, session) in prepared.sessions {
            session.commit(&self.partitions[index])?;
        }
        ensure!(
            self.actual_roots() == prepared.transition.next.roots,
            "committed nullifier update root mismatch"
        );
        Ok(prepared.transition)
    }

    /// Must be passed roots read from durable, consensus-authenticated application state.
    pub fn complete(&mut self, committed: &Boundary) -> Result<()> {
        self.recover(committed)
    }

    pub fn history(&self, committed: &Boundary) -> Result<History> {
        self.ensure_ready()?;
        ensure!(
            self.boundary.as_ref() == Some(committed),
            "nullifier export boundary is stale"
        );
        Ok(History {
            directory: self.directory.join("history"),
            boundary: committed.clone(),
        })
    }

    fn retain(&self, transition: &Transition) -> Result<()> {
        let path = self.directory.join("history").join(format!(
            "{:020}.json",
            transition
                .next
                .height
                .context("recovery record has no height")?
        ));
        let bytes = serde_json::to_vec(transition)?;
        if path.exists() {
            ensure!(
                read_record(File::open(path)?)? == bytes,
                "nullifier recovery record conflicts with committed history"
            );
        } else {
            durable_write(&path, &bytes)?;
        }
        Ok(())
    }

    /// Rebuild a fresh working store from independently retained canonical records.
    /// `expected` must come from the authenticated restore checkpoint.
    pub fn replay(
        &mut self,
        records: impl IntoIterator<Item = Transition>,
        expected: &Boundary,
    ) -> Result<()> {
        let result = self.replay_inner(records, expected);
        if result.is_err() {
            self.ready = false;
        }
        result
    }

    /// Restore an immutable export to a fresh working store. The caller obtains
    /// `expected` from authenticated application state, never the export itself.
    pub fn restore(&mut self, source: &Path, expected: &Boundary) -> Result<()> {
        let result = (|| {
            let checkpoint: Boundary =
                serde_json::from_slice(&read_record(File::open(source.join("checkpoint.json"))?)?)?;
            ensure!(
                &checkpoint == expected,
                "nullifier export differs from authenticated checkpoint"
            );
            let last = expected
                .height
                .context("restore checkpoint has no height")?;
            self.recover(&Boundary::default())?;
            let mut previous = Boundary::default();
            for height in 0..=last {
                let record: Transition = serde_json::from_slice(&read_record(File::open(
                    source.join(format!("{height:020}.json")),
                )?)?)?;
                record.validate()?;
                ensure!(
                    record.previous == previous && record.next.height == Some(height),
                    "nullifier restoration history has a gap or mismatch"
                );
                let prepared =
                    self.prepare(height, record.next.block_id, &previous, record.nullifiers)?;
                ensure!(
                    prepared.transition.next == record.next,
                    "restored nullifier root differs from canonical history"
                );
                self.persist_intent(&prepared)?;
                previous = self.commit(prepared)?.next;
                self.complete(&previous)?;
            }
            ensure!(
                &previous == expected,
                "nullifier restoration checkpoint mismatch"
            );
            Ok(())
        })();
        if result.is_err() {
            self.ready = false;
        }
        result
    }

    pub fn capacity(&self) -> Result<Vec<PartitionCapacity>> {
        self.ensure_ready()?;
        Ok(self
            .partitions
            .iter()
            .enumerate()
            .map(|(partition, db)| {
                let usage = db.hash_table_utilization();
                let percent = usage.occupied.saturating_mul(100) / usage.capacity;
                PartitionCapacity {
                    partition,
                    buckets: usage.capacity,
                    occupied: usage.occupied,
                    alert: if percent >= 80 {
                        "critical"
                    } else if percent >= 70 {
                        "warning"
                    } else {
                        "ok"
                    },
                }
            })
            .collect())
    }

    fn replay_inner(
        &mut self,
        records: impl IntoIterator<Item = Transition>,
        expected: &Boundary,
    ) -> Result<()> {
        self.recover(&Boundary::default())?;
        let mut boundary = Boundary::default();
        for record in records {
            record.validate()?;
            ensure!(
                record.previous == boundary,
                "nullifier replay previous boundary mismatch"
            );
            let height = record
                .next
                .height
                .context("nullifier replay record has no height")?;
            let prepared =
                self.prepare(height, record.next.block_id, &boundary, record.nullifiers)?;
            ensure!(
                prepared.transition.next == record.next,
                "nullifier replay next boundary mismatch"
            );
            self.persist_intent(&prepared)?;
            boundary = self.commit(prepared)?.next;
            self.complete(&boundary)?;
        }
        ensure!(
            &boundary == expected,
            "nullifier replay checkpoint mismatch"
        );
        Ok(())
    }
}

fn verify_insertions(
    witness: &Witness,
    keys: &[[u8; 32]],
    previous: [u8; 32],
    next: [u8; 32],
) -> Result<()> {
    ensure!(
        witness.operations.reads.len() == keys.len()
            && witness.operations.writes.len() == keys.len(),
        "nullifier witness operation count mismatch"
    );
    let mut updates = Vec::with_capacity(witness.path_proofs.len());
    for path in &witness.path_proofs {
        let verified = path
            .inner
            .verify::<Sha2Hasher>(path.path.path(), previous)
            .map_err(|e| anyhow::anyhow!("invalid nullifier batch path: {e:?}"))?;
        updates.push(PathUpdate {
            inner: verified,
            ops: Vec::new(),
        });
    }
    let mut read_keys = BTreeSet::new();
    for read in &witness.operations.reads {
        ensure!(
            keys.binary_search(&read.key).is_ok() && read_keys.insert(read.key),
            "unexpected or duplicate witnessed read"
        );
        ensure!(
            read.value.is_none(),
            "witness reports previously spent nullifier"
        );
        let update = updates
            .get(read.path_index)
            .context("invalid read path index")?;
        ensure!(
            update
                .inner
                .confirm_nonexistence(&read.key)
                .map_err(|e| anyhow::anyhow!("nullifier read out of scope: {e:?}"))?,
            "authenticated nullifier is already spent"
        );
    }
    let mut write_keys = BTreeSet::new();
    for write in &witness.operations.writes {
        ensure!(
            keys.binary_search(&write.key).is_ok() && write_keys.insert(write.key),
            "unexpected or duplicate witnessed write"
        );
        ensure!(
            write.value == Some(Sha2Hasher::hash_value(SPENT_VALUE)),
            "invalid witnessed spent value"
        );
        updates
            .get_mut(write.path_index)
            .context("invalid write path index")?
            .ops
            .push((write.key, write.value));
    }
    for update in &mut updates {
        update.ops.sort_unstable_by_key(|op| op.0);
    }
    updates.sort_by(|a, b| a.inner.path().cmp(b.inner.path()));
    ensure!(
        updates.iter().all(|p| !p.ops.is_empty()),
        "nullifier witness contains unused path"
    );
    let verified_next = proof::verify_update::<Sha2Hasher>(previous, &updates)
        .map_err(|e| anyhow::anyhow!("invalid nullifier update proof: {e:?}"))?;
    ensure!(verified_next == next, "nullifier batch next root mismatch");
    Ok(())
}

fn read_record(file: File) -> Result<Vec<u8>> {
    let mut bytes = Vec::new();
    file.take(MAX_RECORD_BYTES + 1).read_to_end(&mut bytes)?;
    ensure!(
        bytes.len() as u64 <= MAX_RECORD_BYTES,
        "nullifier recovery record exceeds size limit"
    );
    Ok(bytes)
}

fn sync_directory(path: &Path) -> Result<()> {
    File::open(path)?.sync_all()?;
    Ok(())
}
fn durable_write(path: &Path, bytes: &[u8]) -> Result<()> {
    let parent = path.parent().context("recovery record has no directory")?;
    let temporary = path.with_extension("tmp");
    // One ordered writer owns these names. An interrupted write may be replaced.
    let mut file = OpenOptions::new()
        .create(true)
        .truncate(true)
        .write(true)
        .open(&temporary)?;
    file.write_all(bytes)?;
    file.sync_all()?;
    drop(file);
    fs::rename(&temporary, path)?;
    sync_directory(parent)
}

const BOUNDARY_KEY: &str = "sct/permanent-nullifiers/boundary";
const ROOT_KEY: &str = "sct/permanent-nullifiers/root";
const FORMAT_KEY: &str = "sct/permanent-nullifiers/format";

/// Authenticate the committed boundary before selecting a NOMT recovery target.
/// JMT value-index reads alone do not authenticate bytes to the stored root.
pub async fn read_committed_boundary(
    snapshot: &cnidarium::Snapshot,
    application_root: [u8; 32],
) -> Result<Boundary> {
    use crate::component::clock::EpochRead as _;
    use ibc_types::core::commitment::{MerklePath, MerkleRoot};

    ensure!(
        snapshot.root_hash().await?.0 == application_root,
        "application root disagrees with host commitment"
    );
    for key in [BOUNDARY_KEY, ROOT_KEY, FORMAT_KEY] {
        let (value, proof) = snapshot.get_with_proof(key.as_bytes().to_vec()).await?;
        proof
            .verify_membership(
                &[cnidarium::ics23_spec()],
                MerkleRoot {
                    hash: application_root.to_vec(),
                },
                MerklePath {
                    key_path: vec![key.into()],
                },
                value.context("committed nullifier boundary key is missing")?,
                0,
            )
            .with_context(|| format!("authenticate permanent nullifier key {key}"))?;
    }
    let boundary = read_boundary(snapshot).await?;
    ensure!(
        boundary.height == Some(snapshot.get_block_height().await?),
        "application and nullifier heights disagree"
    );
    Ok(boundary)
}

/// Read a boundary authenticated by the application's state commitment.
/// Missing state is unavailable; only `stage_boundary` may initialize genesis.
pub async fn read_boundary<S: cnidarium::StateRead + ?Sized>(state: &S) -> Result<Boundary> {
    let bytes = state
        .get_raw(BOUNDARY_KEY)
        .await?
        .context("permanent nullifier application boundary is missing")?;
    ensure!(
        state.get_raw(FORMAT_KEY).await?.as_deref() == Some(FORMAT.as_bytes()),
        "unsupported permanent nullifier application format"
    );
    let boundary: Boundary = serde_json::from_slice(&bytes)?;
    ensure!(
        boundary.height.is_some(),
        "committed nullifier boundary has no height"
    );
    ensure!(
        state.get_raw(ROOT_KEY).await?.as_deref() == Some(boundary.roots.commitment().as_slice()),
        "permanent nullifier aggregate root mismatch"
    );
    Ok(boundary)
}

/// Stage an exact transition in the caller's disposable application delta.
/// The caller persists recovery intent and commits NOMT before committing this delta.
pub async fn stage_boundary<S: cnidarium::StateWrite + ?Sized>(
    state: &mut S,
    transition: &Transition,
) -> Result<()> {
    transition.validate()?;
    if transition.previous.height.is_none() {
        ensure!(
            state.get_raw(BOUNDARY_KEY).await?.is_none()
                && state.get_raw(FORMAT_KEY).await?.is_none()
                && state.get_raw(ROOT_KEY).await?.is_none(),
            "permanent nullifier application state already initialized"
        );
        ensure!(
            state
                .get_raw("sct/nullifier_generations/state")
                .await?
                .is_none()
                && state.get_raw("sct/nullifier_set/root").await?.is_none(),
            "stale nullifier state cannot initialize a permanent set"
        );
    } else {
        ensure!(
            read_boundary(state).await? == transition.previous,
            "permanent nullifier application boundary is stale"
        );
    }
    let bytes = serde_json::to_vec(&transition.next)?;
    state.put_raw(BOUNDARY_KEY.to_owned(), bytes);
    state.put_raw(FORMAT_KEY.to_owned(), FORMAT.as_bytes().to_vec());
    state.put_raw(
        ROOT_KEY.to_owned(),
        transition.next.roots.commitment().to_vec(),
    );
    Ok(())
}

#[cfg(test)]
#[path = "tests.rs"]
mod tests;
