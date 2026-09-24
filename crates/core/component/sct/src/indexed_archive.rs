//! Immutable positional leaves, sorted values and Merkle levels. Only the manifest is a publication marker.
use crate::{
    generation_pack::GenerationPackMetadata,
    indexed_nullifier_tree::{
        hash_children, FqOrdKey, IndexedNullifierLeaf as Leaf, IndexedNullifierWitness as Witness,
        DEPTH, ZERO_HASHES,
    },
    nullifier_generation::{
        ArchivedNullifierProof, ArchivedNullifierSpent, NullifierGenerationArchived,
        NullifierGenerationPackReceipt,
    },
    Nullifier,
};
use anyhow::{ensure, Context, Result};
use sha2::{Digest, Sha256};
use shieldd_sdk_crypto::Fq;
use std::{
    collections::{BTreeMap, VecDeque},
    fs::{self, File},
    io::{BufReader, BufWriter, Read, Seek, SeekFrom, Write},
    path::{Path, PathBuf},
    sync::{Arc, Mutex},
};

const LEAF_BYTES: u64 = 74;
const INDEX_BYTES: u64 = 40;
const PAGE_BYTES: u64 = 4096;
const RUN_RECORDS: usize = 64 * 1024 * 1024 / INDEX_BYTES as usize;
const FAN_IN: usize = 16;

#[derive(Clone, Debug, serde::Serialize, serde::Deserialize)]
#[serde(deny_unknown_fields)]
struct Manifest {
    schema: u32,
    metadata: GenerationPackMetadata,
    byte_length: u64,
    digest: [u8; 32],
}
impl Manifest {
    fn layout(&self) -> Result<Layout> {
        ensure!(
            self.schema == 2,
            "unsupported archive schema; reset and rebuild archives"
        );
        self.metadata.validate()?;
        let layout = Layout::new(self.metadata.leaf_count)?;
        ensure!(
            layout.length == self.byte_length,
            "archive length disagrees with manifest"
        );
        Ok(layout)
    }
    fn receipt(&self) -> Result<NullifierGenerationPackReceipt> {
        self.layout()?;
        Ok(NullifierGenerationPackReceipt {
            protocol_version: self.metadata.protocol_version,
            generation_index: self.metadata.generation_index,
            generation_root: self.metadata.generation_root,
            generation_start_position: self.metadata.generation_start_position,
            generation_end_position: self.metadata.generation_end_position,
            leaf_count: self.metadata.leaf_count,
            byte_length: self.byte_length,
            pack_sha256: self.digest,
        })
    }
}
struct Layout {
    index: u64,
    levels: Vec<(u64, u64)>,
    length: u64,
}
impl Layout {
    fn new(count: u64) -> Result<Self> {
        ensure!(
            (1..=1u64 << 40).contains(&count),
            "invalid archive leaf count"
        );
        let index = count * LEAF_BYTES;
        let mut offset = index + (count - 1) * INDEX_BYTES;
        let mut size = count;
        let mut levels = Vec::new();
        for _ in 0..=DEPTH {
            levels.push((offset, size));
            offset += size * 32;
            size = size.div_ceil(4);
        }
        Ok(Self {
            index,
            levels,
            length: offset,
        })
    }
}
#[derive(Debug, Clone, PartialEq, Eq)]
struct FileIdentity {
    length: u64,
    modified: std::time::SystemTime,
    #[cfg(unix)]
    device: u64,
    #[cfg(unix)]
    inode: u64,
}
impl FileIdentity {
    fn read(metadata: fs::Metadata) -> Result<Self> {
        #[cfg(unix)]
        use std::os::unix::fs::MetadataExt;
        Ok(Self {
            length: metadata.len(),
            modified: metadata.modified()?,
            #[cfg(unix)]
            device: metadata.dev(),
            #[cfg(unix)]
            inode: metadata.ino(),
        })
    }
}
#[derive(Debug)]
struct Validated {
    receipt: NullifierGenerationPackReceipt,
    file: File,
    identity: FileIdentity,
    path: PathBuf,
    manifest_path: PathBuf,
    manifest_identity: FileIdentity,
}
/// Holds the file that was fully validated in this process through the pruning commit.
#[derive(Debug, Clone)]
pub struct ValidatedArchive(Arc<Validated>);
impl ValidatedArchive {
    pub fn receipt(&self) -> &NullifierGenerationPackReceipt {
        &self.0.receipt
    }
    pub fn check_identity(&self) -> Result<()> {
        ensure!(
            FileIdentity::read(self.0.file.metadata()?)? == self.0.identity
                && FileIdentity::read(fs::metadata(&self.0.path)?)? == self.0.identity,
            "validated archive identity changed"
        );
        ensure!(
            FileIdentity::read(fs::metadata(&self.0.manifest_path)?)? == self.0.manifest_identity,
            "validated archive manifest changed"
        );
        Ok(())
    }
}
#[derive(Debug, Default)]
struct PageCache {
    pages: BTreeMap<([u8; 32], u64), Arc<Vec<u8>>>,
    order: VecDeque<([u8; 32], u64)>,
    bytes: usize,
    read_bytes: u64,
    read_pages: u64,
}
#[derive(Clone, Copy, Debug)]
pub struct ArchiveReadStatistics {
    pub cached_bytes: usize,
    pub read_bytes: u64,
    pub read_pages: u64,
}
#[derive(Clone, Debug)]
pub struct Repository {
    // Clones and in-flight reads keep the exclusive archive-directory owner alive.
    _owner: Arc<File>,
    directory: Arc<PathBuf>,
    max_cached_bytes: usize,
    cache: Arc<Mutex<PageCache>>,
    validated: Arc<Mutex<BTreeMap<u64, ValidatedArchive>>>,
    repairs: Arc<Mutex<std::collections::BTreeSet<u64>>>,
    repair_wake: Arc<tokio::sync::Notify>,
}
impl Repository {
    pub fn new(directory: PathBuf, max_cached_bytes: usize) -> Result<Self> {
        fs::create_dir_all(&directory)?;
        let owner = File::options()
            .read(true)
            .write(true)
            .create(true)
            .truncate(false)
            .open(directory.join(".archive-owner.lock"))?;
        owner
            .try_lock()
            .context("archive directory is already in use")?;
        // Only the exclusive owner may reclaim files whose destructors were lost to a crash.
        for entry in fs::read_dir(&directory)? {
            let entry = entry?;
            let name = entry.file_name();
            let name = name.to_string_lossy();
            if [
                ".archive-build-",
                ".archive-data-",
                ".archive-manifest-",
                ".archive-probe-",
                ".corrupt-manifest-",
                ".corrupt-data-",
            ]
            .iter()
            .any(|prefix| name.starts_with(prefix))
            {
                if entry.file_type()?.is_dir() {
                    fs::remove_dir_all(entry.path())?;
                } else {
                    fs::remove_file(entry.path())?;
                }
            }
        }
        // Fail startup on an unusable configured directory, even before the first retirement.
        let probe = tempfile::Builder::new()
            .prefix(".archive-probe-")
            .tempfile_in(&directory)?;
        probe.as_file().sync_all()?;
        drop(probe);
        File::open(&directory)?.sync_all()?;
        Ok(Self {
            _owner: Arc::new(owner),
            directory: Arc::new(directory),
            max_cached_bytes,
            cache: Arc::new(Mutex::new(PageCache::default())),
            validated: Arc::new(Mutex::new(BTreeMap::new())),
            repairs: Arc::new(Mutex::new(Default::default())),
            repair_wake: Arc::new(tokio::sync::Notify::new()),
        })
    }
    pub fn request_repair(&self, generation: u64) {
        let mut pending = self.repairs.lock().expect("archive repair lock poisoned");
        if pending.len() < 256 {
            pending.insert(generation);
            self.repair_wake.notify_one();
        }
    }
    pub async fn repair_requested(&self) {
        self.repair_wake.notified().await;
    }
    pub fn next_repair(&self) -> Option<u64> {
        self.repairs
            .lock()
            .expect("archive repair lock poisoned")
            .pop_first()
    }
    pub fn read_statistics(&self) -> ArchiveReadStatistics {
        let cache = self.cache.lock().expect("archive mutex poisoned");
        ArchiveReadStatistics {
            cached_bytes: cache.bytes,
            read_bytes: cache.read_bytes,
            read_pages: cache.read_pages,
        }
    }
    pub fn directory(&self) -> &Path {
        &self.directory
    }
    pub fn path(&self, generation: u64) -> PathBuf {
        self.directory
            .join(format!("generation-{generation:020}.manifest"))
    }
    fn data_path(&self, manifest: &Manifest) -> PathBuf {
        self.directory
            .join(format!("archive-{}.data", hex::encode(manifest.digest)))
    }
    pub fn contains(&self, generation: u64) -> bool {
        self.path(generation).is_file()
    }
    fn manifest(&self, archived: NullifierGenerationArchived) -> Result<Manifest> {
        let bytes = read_small(&self.path(archived.generation_index))?;
        let manifest: Manifest = serde_json::from_slice(&bytes)?;
        manifest.layout()?;
        ensure!(
            manifest.metadata.matches_archived(archived),
            "archive manifest disagrees with committed generation"
        );
        Ok(manifest)
    }
    pub fn inspect(
        &self,
        archived: NullifierGenerationArchived,
    ) -> Result<NullifierGenerationPackReceipt> {
        self.manifest(archived)?.receipt()
    }
    pub fn verify(
        &self,
        archived: NullifierGenerationArchived,
    ) -> Result<NullifierGenerationPackReceipt> {
        let manifest = self.manifest(archived)?;
        let path = self.data_path(&manifest);
        let mut file = File::open(&path)?;
        let identity = FileIdentity::read(file.metadata()?)?;
        validate_file(&mut file, &manifest)?;
        ensure!(
            FileIdentity::read(file.metadata()?)? == identity,
            "archive changed during validation"
        );
        let receipt = manifest.receipt()?;
        let manifest_path = self.path(archived.generation_index);
        let manifest_identity = FileIdentity::read(fs::metadata(&manifest_path)?)?;
        ensure!(
            self.inspect(archived)? == receipt,
            "manifest changed during validation"
        );
        let mut validated = self.validated.lock().expect("archive mutex poisoned");
        if validated.len() == 4 && !validated.contains_key(&archived.generation_index) {
            validated.pop_first();
        }
        validated.insert(
            archived.generation_index,
            ValidatedArchive(Arc::new(Validated {
                receipt: receipt.clone(),
                file,
                identity,
                path,
                manifest_path,
                manifest_identity,
            })),
        );
        Ok(receipt)
    }
    pub fn validated_archive(&self, generation: u64) -> Result<Option<ValidatedArchive>> {
        let archive = self
            .validated
            .lock()
            .expect("archive mutex poisoned")
            .get(&generation)
            .cloned();
        if archive
            .as_ref()
            .is_some_and(|archive| archive.check_identity().is_err())
        {
            self.forget_ready_receipt(generation)?;
            self.request_repair(generation);
            return Ok(None);
        }
        Ok(archive)
    }
    pub fn ready_receipt(&self, generation: u64) -> Result<Option<NullifierGenerationPackReceipt>> {
        Ok(self
            .validated_archive(generation)?
            .map(|a| a.receipt().clone()))
    }
    pub fn remember_verified_receipt(&self, receipt: NullifierGenerationPackReceipt) -> Result<()> {
        ensure!(
            self.ready_receipt(receipt.generation_index)?.as_ref() == Some(&receipt),
            "archive has not been validated in this process"
        );
        Ok(())
    }
    pub fn forget_ready_receipt(&self, generation: u64) -> Result<()> {
        self.validated
            .lock()
            .expect("archive mutex poisoned")
            .remove(&generation);
        Ok(())
    }
    pub fn quarantine(&self, generation: u64) -> Result<()> {
        self.forget_ready_receipt(generation)?;
        let path = self.path(generation);
        if !path.exists() {
            return Ok(());
        }
        fs::remove_file(&path)?;
        File::open(self.directory())?.sync_all()?;
        let mut cache = self.cache.lock().expect("archive mutex poisoned");
        cache.pages.clear();
        cache.order.clear();
        cache.bytes = 0;
        Ok(())
    }
    /// Stream insertion-ordered ordinary nullifiers. Errors or cancellation must arrive as an Err, never a successful EOF.
    pub fn write_stream(
        &self,
        archived: NullifierGenerationArchived,
        values: impl IntoIterator<Item = Result<Nullifier>>,
    ) -> Result<NullifierGenerationPackReceipt> {
        let scratch = tempfile::Builder::new()
            .prefix(".archive-build-")
            .tempdir_in(self.directory())?;
        let mut leaves = File::create(scratch.path().join("leaves"))?;
        leaves.write_all(&encode_leaf(Leaf::lower_sentinel()))?;
        let mut count = 1u64;
        let mut run = Vec::<[u8; 40]>::with_capacity(RUN_RECORDS);
        let mut levels: Vec<Vec<tempfile::NamedTempFile>> = Vec::new();
        for value in values {
            let value = value?;
            ensure!(count < 1u64 << 40, "archive exceeds generation capacity");
            let mut item = [0; 40];
            item[..32].copy_from_slice(&FqOrdKey::from(value.0).0);
            item[32..].copy_from_slice(&count.to_be_bytes());
            run.push(item);
            leaves.write_all(&encode_leaf(Leaf::ordinary(
                value,
                0,
                Fq::from(0u64).to_bytes(),
                true,
            )))?;
            count += 1;
            if run.len() == RUN_RECORDS {
                add_run(
                    &mut levels,
                    sorted_run(&mut run, scratch.path())?,
                    0,
                    scratch.path(),
                )?;
            }
        }
        if !run.is_empty() || levels.is_empty() {
            add_run(
                &mut levels,
                sorted_run(&mut run, scratch.path())?,
                0,
                scratch.path(),
            )?;
        }
        drop(run);
        leaves.flush()?;
        let mut merged = None;
        for level in levels {
            for file in level {
                merged = Some(match merged {
                    None => file,
                    Some(previous) => merge_runs(vec![previous, file], scratch.path())?,
                });
            }
        }
        let sorted = merged.context("missing archive index")?;
        let mut reader = BufReader::new(File::open(sorted.path())?);
        let mut previous: Option<[u8; 40]> = None;
        let mut current = read_index(&mut reader)?;
        while let Some(item) = current {
            let next = read_index(&mut reader)?;
            if let Some(prior) = previous {
                ensure!(prior[..32] < item[..32], "duplicate archive nullifier");
            }
            let position = index_position(&item);
            let value = index_value(&item)?;
            let leaf = if let Some(next) = next {
                Leaf::ordinary(
                    value,
                    index_position(&next),
                    index_value(&next)?.to_bytes(),
                    false,
                )
            } else {
                Leaf::ordinary(value, 0, Fq::from(0u64).to_bytes(), true)
            };
            leaves.seek(SeekFrom::Start(position * LEAF_BYTES))?;
            leaves.write_all(&encode_leaf(leaf))?;
            if previous.is_none() {
                leaves.seek(SeekFrom::Start(0))?;
                leaves.write_all(&encode_leaf(Leaf {
                    next_index: position,
                    next_value: value.to_bytes(),
                    is_terminal: false,
                    ..Leaf::lower_sentinel()
                }))?;
            }
            previous = Some(item);
            current = next;
        }
        leaves.flush()?;
        let layout = Layout::new(count)?;
        let mut data = tempfile::Builder::new()
            .prefix(".archive-data-")
            .tempfile_in(self.directory())?;
        std::io::copy(&mut File::open(scratch.path().join("leaves"))?, &mut data)?;
        std::io::copy(&mut File::open(sorted.path())?, &mut data)?;
        let mut leaf_reader = BufReader::new(File::open(scratch.path().join("leaves"))?);
        for _ in 0..count {
            let mut bytes = [0; LEAF_BYTES as usize];
            leaf_reader.read_exact(&mut bytes)?;
            data.write_all(&decode_leaf(&bytes)?.commitment()?.to_bytes())?;
        }
        for level in 0..DEPTH as usize {
            data.flush()?;
            let mut input = BufReader::new(File::open(data.path())?);
            input.seek(SeekFrom::Start(layout.levels[level].0))?;
            let child_count = layout.levels[level].1;
            for parent in 0..child_count.div_ceil(4) {
                let mut children = [ZERO_HASHES[level]; 4];
                for (slot, child) in children.iter_mut().enumerate() {
                    if parent * 4 + (slot as u64) < child_count {
                        let mut bytes = [0; 32];
                        input.read_exact(&mut bytes)?;
                        *child = field(&bytes)?;
                    }
                }
                data.write_all(&hash_children(level as u8 + 1, children).to_bytes())?;
            }
        }
        data.flush()?;
        data.as_file().sync_all()?;
        let metadata = GenerationPackMetadata::from_archived(archived, count);
        let digest = digest_file(&mut File::open(data.path())?)?;
        let manifest = Manifest {
            schema: 2,
            metadata,
            byte_length: layout.length,
            digest,
        };
        validate_file(&mut File::open(data.path())?, &manifest)?;
        let data_path = self.data_path(&manifest);
        match data.persist_noclobber(&data_path) {
            Ok(_) => {}
            Err(e) if e.error.kind() == std::io::ErrorKind::AlreadyExists => {
                if validate_file(&mut File::open(&data_path)?, &manifest).is_err() {
                    // Repair only unpublished, invalid data, after the replacement
                    // has passed complete validation against the committed root.
                    ensure!(
                        !self.path(archived.generation_index).try_exists()?,
                        "quarantine the invalid manifest before repairing archive data"
                    );
                    let quarantine = tempfile::Builder::new()
                        .prefix(".corrupt-data-")
                        .tempfile_in(self.directory())?;
                    fs::rename(&data_path, quarantine.path())?;
                    e.file
                        .persist_noclobber(&data_path)
                        .map_err(|error| error.error)?;
                }
            }
            Err(e) => return Err(e.error.into()),
        }
        File::open(self.directory())?.sync_all()?;
        let mut publication = tempfile::Builder::new()
            .prefix(".archive-manifest-")
            .tempfile_in(self.directory())?;
        publication.write_all(&serde_json::to_vec(&manifest)?)?;
        publication.as_file().sync_all()?;
        match publication.persist_noclobber(self.path(archived.generation_index)) {
            Ok(_) => {}
            Err(e) if e.error.kind() == std::io::ErrorKind::AlreadyExists => {
                ensure!(
                    self.inspect(archived)? == manifest.receipt()?,
                    "existing archive differs"
                );
            }
            Err(e) => return Err(e.error.into()),
        }
        File::open(self.directory())?.sync_all()?;
        self.verify(archived)
    }
    fn read_at(
        &self,
        file: &mut File,
        manifest: &Manifest,
        offset: u64,
        length: usize,
    ) -> Result<Vec<u8>> {
        ensure!(
            offset
                .checked_add(length as u64)
                .is_some_and(|end| end <= manifest.byte_length),
            "archive read out of bounds"
        );
        let mut out = Vec::with_capacity(length);
        while out.len() < length {
            let at = offset + out.len() as u64;
            let page = at / PAGE_BYTES;
            let key = (manifest.digest, page);
            let cached = self
                .cache
                .lock()
                .expect("archive mutex poisoned")
                .pages
                .get(&key)
                .cloned();
            let bytes = if let Some(bytes) = cached {
                bytes
            } else {
                let mut bytes =
                    vec![0; (manifest.byte_length - page * PAGE_BYTES).min(PAGE_BYTES) as usize];
                file.seek(SeekFrom::Start(page * PAGE_BYTES))?;
                file.read_exact(&mut bytes)?;
                let bytes = Arc::new(bytes);
                let mut cache = self.cache.lock().expect("archive mutex poisoned");
                cache.read_bytes += bytes.len() as u64;
                cache.read_pages += 1;
                metrics::counter!("shieldd_archive_read_bytes_total").increment(bytes.len() as u64);
                metrics::counter!("shieldd_archive_read_pages_total").increment(1);
                if bytes.len() <= self.max_cached_bytes && !cache.pages.contains_key(&key) {
                    while cache.bytes + bytes.len() > self.max_cached_bytes {
                        let old = cache.order.pop_front().context("invalid archive cache")?;
                        cache.bytes -= cache
                            .pages
                            .remove(&old)
                            .context("missing cache page")?
                            .len();
                    }
                    cache.bytes += bytes.len();
                    cache.order.push_back(key);
                    cache.pages.insert(key, bytes.clone());
                }
                bytes
            };
            let start = (at % PAGE_BYTES) as usize;
            out.extend_from_slice(&bytes[start..(start + length - out.len()).min(bytes.len())]);
        }
        Ok(out)
    }
    pub fn witness(
        &self,
        archived: NullifierGenerationArchived,
        target: Nullifier,
    ) -> Result<(bool, Witness)> {
        let manifest = self.manifest(archived)?;
        let layout = manifest.layout()?;
        let mut file = File::open(self.data_path(&manifest))?;
        ensure!(
            file.metadata()?.len() == manifest.byte_length,
            "truncated archive"
        );
        let key = FqOrdKey::from(target.0).0;
        let mut low = 0;
        let mut high = manifest.metadata.leaf_count - 1;
        let mut found = false;
        let mut position = 0;
        while low < high {
            let mid = low + (high - low) / 2;
            let item: [u8; 40] = self
                .read_at(&mut file, &manifest, layout.index + mid * INDEX_BYTES, 40)?
                .try_into()
                .expect("fixed archive index width");
            match item[..32].cmp(&key) {
                std::cmp::Ordering::Equal => {
                    position = index_position(&item);
                    found = true;
                    break;
                }
                std::cmp::Ordering::Less => {
                    low = mid + 1;
                    position = index_position(&item);
                }
                std::cmp::Ordering::Greater => high = mid,
            }
        }
        ensure!(
            position < manifest.metadata.leaf_count,
            "archive index position out of bounds"
        );
        let leaf = decode_leaf(&self.read_at(
            &mut file,
            &manifest,
            position * LEAF_BYTES,
            LEAF_BYTES as usize,
        )?)?;
        let mut path = Vec::with_capacity(DEPTH as usize);
        let mut node = position;
        for (level, &(offset, count)) in layout.levels.iter().take(DEPTH as usize).enumerate() {
            let mut siblings = [[0; 32]; 3];
            let mut slot = 0;
            for child in 0..4 {
                if child == node % 4 {
                    continue;
                }
                let index = node / 4 * 4 + child;
                siblings[slot] = if index < count {
                    self.read_at(&mut file, &manifest, offset + index * 32, 32)?
                        .try_into()
                        .expect("fixed archive node width")
                } else {
                    ZERO_HASHES[level].to_bytes()
                };
                slot += 1;
            }
            path.push(siblings);
            node /= 4;
        }
        let witness = Witness {
            leaf_position: position,
            leaf,
            auth_path: path,
        };
        if found {
            witness.verify_membership(target, archived.generation_root)?;
        } else {
            witness.verify_nonmembership(target, archived.generation_root)?;
        }
        Ok((found, witness))
    }
    pub fn nonmembership_proof(
        &self,
        archived: NullifierGenerationArchived,
        target: Nullifier,
    ) -> Result<Box<ArchivedNullifierProof>> {
        let (found, witness) = self.witness(archived, target)?;
        if found {
            return Err(ArchivedNullifierSpent.into());
        }
        Ok(Box::new(ArchivedNullifierProof {
            generation_index: archived.generation_index,
            generation_root: archived.generation_root,
            generation_start_position: archived.generation_start_position,
            generation_end_position: archived.generation_end_position,
            witness,
        }))
    }
}
fn read_small(path: &Path) -> Result<Vec<u8>> {
    let mut bytes = Vec::new();
    File::open(path)?.take(4097).read_to_end(&mut bytes)?;
    ensure!(bytes.len() <= 4096, "oversized archive manifest");
    Ok(bytes)
}
fn field(bytes: &[u8; 32]) -> Result<Fq> {
    shieldd_sdk_crypto::encoding::field(bytes)
        .map_err(|_| anyhow::anyhow!("noncanonical archive field"))
}
fn encode_leaf(leaf: Leaf) -> [u8; 74] {
    let mut b = [0; 74];
    b[..32].copy_from_slice(&leaf.value);
    b[32..40].copy_from_slice(&leaf.next_index.to_be_bytes());
    b[40..72].copy_from_slice(&leaf.next_value);
    b[72] = leaf.is_lower_sentinel as u8;
    b[73] = leaf.is_terminal as u8;
    b
}
fn decode_leaf(b: &[u8]) -> Result<Leaf> {
    ensure!(
        b.len() == 74 && b[72] <= 1 && b[73] <= 1,
        "invalid archive leaf encoding"
    );
    let leaf = Leaf {
        value: b[..32].try_into()?,
        next_index: u64::from_be_bytes(b[32..40].try_into()?),
        next_value: b[40..72].try_into()?,
        is_lower_sentinel: b[72] == 1,
        is_terminal: b[73] == 1,
    };
    leaf.validate()?;
    Ok(leaf)
}
fn index_position(item: &[u8; 40]) -> u64 {
    u64::from_be_bytes(item[32..].try_into().expect("fixed archive field width"))
}
fn index_value(item: &[u8; 40]) -> Result<Nullifier> {
    let mut value: [u8; 32] = item[..32].try_into()?;
    value.reverse();
    Ok(Nullifier(field(&value)?))
}
fn read_index(reader: &mut impl Read) -> Result<Option<[u8; 40]>> {
    let mut item = [0; 40];
    if reader.read(&mut item[..1])? == 0 {
        return Ok(None);
    }
    reader.read_exact(&mut item[1..])?;
    Ok(Some(item))
}
fn sorted_run(run: &mut Vec<[u8; 40]>, directory: &Path) -> Result<tempfile::NamedTempFile> {
    run.sort_unstable();
    let file = tempfile::NamedTempFile::new_in(directory)?;
    let mut writer = BufWriter::new(file);
    for item in run.drain(..) {
        writer.write_all(&item)?;
    }
    writer.flush()?;
    Ok(writer.into_inner()?)
}
fn add_run(
    levels: &mut Vec<Vec<tempfile::NamedTempFile>>,
    file: tempfile::NamedTempFile,
    level: usize,
    directory: &Path,
) -> Result<()> {
    if levels.len() == level {
        levels.push(Vec::new());
    }
    levels[level].push(file);
    if levels[level].len() == FAN_IN {
        let files = std::mem::take(&mut levels[level]);
        add_run(levels, merge_runs(files, directory)?, level + 1, directory)?;
    }
    Ok(())
}
fn merge_runs(
    files: Vec<tempfile::NamedTempFile>,
    directory: &Path,
) -> Result<tempfile::NamedTempFile> {
    ensure!(files.len() <= FAN_IN, "archive merge fan-in exceeded");
    let mut readers = files
        .iter()
        .map(|f| File::open(f.path()).map(BufReader::new))
        .collect::<std::io::Result<Vec<_>>>()?;
    let mut heads = readers
        .iter_mut()
        .map(read_index)
        .collect::<Result<Vec<_>>>()?;
    let mut out = BufWriter::new(tempfile::NamedTempFile::new_in(directory)?);
    loop {
        let smallest = heads
            .iter()
            .enumerate()
            .filter_map(|(i, item)| item.map(|v| (v, i)))
            .min();
        let Some((item, i)) = smallest else {
            break;
        };
        out.write_all(&item)?;
        heads[i] = read_index(&mut readers[i])?;
    }
    out.flush()?;
    Ok(out.into_inner()?)
}
fn digest_file(file: &mut File) -> Result<[u8; 32]> {
    file.seek(SeekFrom::Start(0))?;
    let mut digest = Sha256::new();
    let mut bytes = [0; 64 * 1024];
    loop {
        let n = file.read(&mut bytes)?;
        if n == 0 {
            break;
        }
        digest.update(&bytes[..n]);
    }
    Ok(digest.finalize().into())
}
fn read_exact_at<const N: usize>(file: &mut File, offset: u64) -> Result<[u8; N]> {
    file.seek(SeekFrom::Start(offset))?;
    let mut bytes = [0; N];
    file.read_exact(&mut bytes)?;
    Ok(bytes)
}
fn validate_file(file: &mut File, manifest: &Manifest) -> Result<()> {
    let layout = manifest.layout()?;
    ensure!(
        file.metadata()?.len() == layout.length && digest_file(file)? == manifest.digest,
        "archive length or digest mismatch"
    );
    let count = manifest.metadata.leaf_count;
    let mut previous: Option<[u8; 40]> = None;
    let mut sentinel = Leaf::lower_sentinel();
    for i in 0..count - 1 {
        let item = read_exact_at::<40>(file, layout.index + i * INDEX_BYTES)?;
        ensure!(
            index_position(&item) > 0 && index_position(&item) < count,
            "archive index points outside ordinary leaves"
        );
        if let Some(prior) = previous {
            ensure!(
                prior[..32] < item[..32],
                "archive index is not strictly ordered"
            );
        } else {
            sentinel.next_index = index_position(&item);
            sentinel.next_value = index_value(&item)?.to_bytes();
            sentinel.is_terminal = false;
        }
        let expected = if i + 1 < count - 1 {
            let next = read_exact_at::<40>(file, layout.index + (i + 1) * INDEX_BYTES)?;
            Leaf::ordinary(
                index_value(&item)?,
                index_position(&next),
                index_value(&next)?.to_bytes(),
                false,
            )
        } else {
            Leaf::ordinary(index_value(&item)?, 0, Fq::from(0u64).to_bytes(), true)
        };
        ensure!(
            read_exact_at::<74>(file, index_position(&item) * LEAF_BYTES)? == encode_leaf(expected),
            "archive successor/index disagreement"
        );
        previous = Some(item);
    }
    ensure!(
        read_exact_at::<74>(file, 0)? == encode_leaf(sentinel),
        "archive sentinel disagreement"
    );
    for i in 0..count {
        let leaf = decode_leaf(&read_exact_at::<74>(file, i * LEAF_BYTES)?)?;
        ensure!(
            leaf.is_lower_sentinel == (i == 0),
            "unexpected archive sentinel"
        );
        ensure!(
            read_exact_at::<32>(file, layout.levels[0].0 + i * 32)?
                == leaf.commitment()?.to_bytes(),
            "archive leaf commitment mismatch"
        );
    }
    for level in 0..DEPTH as usize {
        let (offset, children) = layout.levels[level];
        for parent in 0..children.div_ceil(4) {
            let mut values = [ZERO_HASHES[level]; 4];
            for (slot, value) in values.iter_mut().enumerate() {
                let i = parent * 4 + slot as u64;
                if i < children {
                    *value = field(&read_exact_at::<32>(file, offset + i * 32)?)?;
                }
            }
            ensure!(
                read_exact_at::<32>(file, layout.levels[level + 1].0 + parent * 32)?
                    == hash_children(level as u8 + 1, values).to_bytes(),
                "archive Merkle level mismatch"
            );
        }
    }
    ensure!(
        read_exact_at::<32>(file, layout.levels[DEPTH as usize].0)?
            == manifest.metadata.generation_root,
        "archive root mismatch"
    );
    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;
    use cnidarium::{StateDelta, TempStorage};
    fn nf(value: u64) -> Nullifier {
        Nullifier(Fq::from(value))
    }
    #[tokio::test]
    async fn indexed_witnesses_reject_corruption_and_incomplete_publication() -> Result<()> {
        let storage = TempStorage::new().await?;
        let mut state = StateDelta::new(storage.latest_snapshot());
        crate::nullifier_tree::initialize(&mut state).await?;
        let values = [nf(0), nf(7), nf(1), nf(12)];
        crate::nullifier_tree::insert_batch(&mut state, values).await?;
        crate::nullifier_tree::rollover(&mut state, 30, 1 << 32).await?;
        crate::nullifier_tree::rollover(&mut state, 60, 2 << 32).await?;
        let archived = crate::nullifier_tree::archived_generation(&state, 0).await?;
        let directory = tempfile::tempdir()?;
        let mut repository = Repository::new(directory.path().to_path_buf(), PAGE_BYTES as usize)?;
        assert!(repository
            .write_stream(
                archived,
                [Ok(nf(0)), Err(anyhow::anyhow!("cancelled producer"))]
            )
            .is_err());
        assert!(!repository.contains(0));
        assert!(repository
            .write_stream(archived, [Ok(nf(0)), Ok(nf(0))])
            .is_err());
        assert!(!repository.contains(0));
        let receipt = repository.write_stream(archived, values.into_iter().map(Ok))?;
        assert_eq!(
            receipt.byte_length,
            NullifierGenerationPackReceipt::archive_byte_length(5)
        );
        for target in [0, 1, 2, 7, 8, 12, 13] {
            let (found, witness) = repository.witness(archived, nf(target))?;
            assert_eq!(found, [0, 1, 7, 12].contains(&target));
            if found {
                witness.verify_membership(nf(target), archived.generation_root)?;
            } else {
                let oracle =
                    crate::nullifier_tree::archived_nonmembership_proof(&state, 0, nf(target))
                        .await?;
                assert_eq!(witness, oracle.witness);
            }
        }
        assert!(repository.cache.lock().expect("cache").bytes <= PAGE_BYTES as usize);
        let manifest = repository.manifest(archived)?;
        let path = repository.data_path(&manifest);
        let original = fs::read(&path)?;
        // Fresh readers must reject a corrupt sorted index as well as corrupt leaf/node pages.
        let layout = manifest.layout()?;
        for at in [
            LEAF_BYTES as usize,
            layout.index as usize,
            layout.levels[0].0 as usize,
        ] {
            let mut corrupt = original.clone();
            corrupt[at] ^= 255;
            fs::write(&path, corrupt)?;
            drop(repository);
            repository = Repository::new(directory.path().to_path_buf(), 0)?;
            assert!(repository.verify(archived).is_err());
            assert!(repository.witness(archived, nf(0)).is_err());
        }
        fs::write(&path, &original[..original.len() - 1])?;
        assert!(repository.verify(archived).is_err());
        assert!(repository.ready_receipt(0)?.is_none());
        assert!(repository
            .write_stream(archived, values.into_iter().map(Ok))
            .is_err());
        assert_eq!(fs::read(&path)?, original[..original.len() - 1]);
        repository.quarantine(0)?;
        repository.write_stream(archived, values.into_iter().map(Ok))?;
        assert_eq!(fs::read(&path)?, original);
        drop(repository);
        let cold = Repository::new(directory.path().to_path_buf(), 0)?;
        cold.nonmembership_proof(archived, nf(8))?
            .verify_for(nf(8))?;
        Ok(())
    }
    #[test]
    fn archive_owner_reclaims_interrupted_builds_without_touching_published_files() -> Result<()> {
        let directory = tempfile::tempdir()?;
        let scratch = directory.path().join(".archive-build-interrupted");
        fs::create_dir(&scratch)?;
        fs::write(scratch.join("leaves"), b"incomplete build")?;
        let unpublished = directory.path().join(".archive-data-interrupted");
        fs::write(&unpublished, b"unpublished")?;
        let published = directory.path().join("archive-keep.data");
        fs::write(&published, b"canonical data")?;
        let unrelated = directory.path().join("operator-notes");
        fs::write(&unrelated, b"preserve")?;
        let repository = Repository::new(directory.path().to_path_buf(), 4096)?;
        assert!(!scratch.exists(), "interrupted build was not reclaimed");
        assert!(!unpublished.exists());
        assert_eq!(fs::read(&published)?, b"canonical data");
        assert_eq!(fs::read(&unrelated)?, b"preserve");
        let active = directory.path().join(".archive-data-active");
        fs::write(&active, b"live owner")?;
        assert!(Repository::new(directory.path().to_path_buf(), 4096).is_err());
        assert!(active.exists(), "another owner deleted a live build");
        let clone = repository.clone();
        drop(repository);
        assert!(Repository::new(directory.path().to_path_buf(), 4096).is_err());
        drop(clone);
        let _reopened = Repository::new(directory.path().to_path_buf(), 4096)?;
        assert!(!active.exists());
        Ok(())
    }

    #[test]
    fn bounded_merge_preserves_every_sorted_index_entry_across_runs() -> Result<()> {
        let directory = tempfile::tempdir()?;
        let mut levels = Vec::new();
        for run in 0..33u64 {
            let mut entries = (0..7u64)
                .rev()
                .map(|i| {
                    let value = (i * 33 + run).to_be_bytes();
                    let mut entry = [0; 40];
                    entry[24..32].copy_from_slice(&value);
                    entry[32..].copy_from_slice(&value);
                    entry
                })
                .collect();
            add_run(
                &mut levels,
                sorted_run(&mut entries, directory.path())?,
                0,
                directory.path(),
            )?;
        }
        let mut files = levels.into_iter().flatten().collect::<Vec<_>>();
        // There are at most FAN_IN retained runs after this two-level fixture.
        let merged = merge_runs(std::mem::take(&mut files), directory.path())?;
        let mut reader = File::open(merged.path())?;
        for expected in 0..231u64 {
            let item = read_index(&mut reader)?.context("missing merge item")?;
            assert_eq!(index_position(&item), expected);
        }
        assert!(read_index(&mut reader)?.is_none());
        Ok(())
    }
}
