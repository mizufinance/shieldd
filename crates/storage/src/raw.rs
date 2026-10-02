use crate::effects::{committed_value, storage_key};
use crate::{
    application_key, Effect, Effects, Manifest, Observations, ObservedValue, ParticipantChange,
    Space, StateRead, ValueCommitment,
};
use anyhow::{ensure, Context, Result};
use futures::{future::Ready, stream::BoxStream, StreamExt};
use nomt_core::hasher::{Sha2Hasher, ValueHasher};
use rocksdb::{Direction, IteratorMode, WriteBatch, WriteOptions, DB};
use std::{
    any::{Any, TypeId},
    ops::{Bound, RangeBounds},
    path::{Path, PathBuf},
    sync::Arc,
};

const MANIFEST_KEY: &[u8] = b"\xffmanifest.v1";
const RETIRED_PREFIX: &[u8] = b"\xffretired-volume.v1/";

/// The RocksDB snapshot is dropped before its owning Arc. Its borrow is kept
/// private and no borrowed database object escapes this owner.
struct RawSnapshot {
    snapshot: rocksdb::Snapshot<'static>,
    _database: Arc<DB>,
}
impl RawSnapshot {
    fn new(database: Arc<DB>) -> Self {
        let snapshot = database.snapshot();
        // SAFETY: Arc keeps the DB at a stable address, this type exposes only
        // owned reads, and Rust drops fields in declaration order.
        let snapshot = unsafe {
            std::mem::transmute::<rocksdb::Snapshot<'_>, rocksdb::Snapshot<'static>>(snapshot)
        };
        Self {
            snapshot,
            _database: database,
        }
    }
    fn get(&self, space: Space, key: &[u8]) -> Result<Option<Vec<u8>>> {
        Ok(self.snapshot.get(storage_key(space, key))?)
    }
    fn predecessor(&self, space: Space, key: &[u8]) -> Result<Option<Vec<u8>>> {
        let start = storage_key(space, key);
        for entry in self
            .snapshot
            .iterator(IteratorMode::From(&start, Direction::Reverse))
        {
            let (candidate, _) = entry?;
            if candidate.as_ref() == start {
                continue;
            }
            if candidate.first().copied() != Some(space as u8) {
                return Ok(None);
            }
            return Ok(Some(candidate[1..].to_vec()));
        }
        Ok(None)
    }
}

#[derive(Clone)]
pub struct Snapshot {
    raw: Arc<RawSnapshot>,
    manifest: Option<Arc<Manifest>>,
    observations: Observations,
    virgin: bool,
}
impl Snapshot {
    /// Empty logical input for recomputing canonical height-zero content on
    /// restart. It cannot be persisted over an existing materialized boundary.
    pub fn genesis_input(&self) -> Self {
        Self {
            raw: self.raw.clone(),
            manifest: None,
            observations: Observations::default(),
            virgin: true,
        }
    }
    fn predecessor(&self, space: Space, key: &[u8]) -> Result<Option<Vec<u8>>> {
        if self.virgin {
            Ok(None)
        } else {
            self.raw.predecessor(space, key)
        }
    }
    pub fn manifest(&self) -> Option<&Manifest> {
        self.manifest.as_deref()
    }
    pub fn observations(&self) -> &Observations {
        &self.observations
    }
    pub fn version(&self) -> u64 {
        self.manifest().map_or(u64::MAX, |m| m.height)
    }
    pub async fn root_hash(&self) -> Result<crate::Commitment> {
        self.manifest()
            .context("state has no committed manifest")?
            .digest()
            .map(crate::Commitment)
    }
    /// A new execution/query view uses its own ledger. Overlay branches clone
    /// the existing view instead, retaining observations through write discard.
    pub fn new_view(&self) -> Self {
        Self {
            raw: self.raw.clone(),
            manifest: self.manifest.clone(),
            observations: Observations::default(),
            virgin: self.virgin,
        }
    }
    pub(crate) fn canonical_entries(
        &self,
    ) -> impl Iterator<Item = Result<([u8; 32], Vec<u8>)>> + '_ {
        self.raw
            .snapshot
            .iterator(IteratorMode::Start)
            .filter_map(|entry| match entry {
                Err(error) => Some(Err(error.into())),
                Ok((key, value)) => {
                    if key.as_ref() == MANIFEST_KEY || key.starts_with(RETIRED_PREFIX) || key.first().copied() == Some(crate::archive::LOCAL_SPACE) || matches!(key.first().copied(),Some(n) if n == Space::Archive as u8 || n == Space::Native as u8) {
                        return None;
                    }
                    Some((|| {
                        let space = Space::try_from(u32::from(
                            *key.first().context("empty raw storage key")?,
                        ))?;
                        ensure!(key.len() > 1, "empty canonical storage key");
                        Ok((
                            application_key(space, &key[1..]),
                            ValueCommitment::new(&value).encode().to_vec(),
                        ))
                    })())
                }
            })
    }
    fn observed(&self, space: Space, key: &[u8]) -> Result<Option<Vec<u8>>> {
        self.observations
            .reserve_read(0, application_key(space, key))?;
        let value = (if self.virgin {
            Ok(None)
        } else {
            self.raw.get(space, key)
        })
        .inspect_err(|_| self.observations.poison())?;
        let commitment = committed_value(value.as_deref());
        self.observations.record(ObservedValue {
            participant: 0,
            key: application_key(space, key),
            value: commitment.as_deref().map(Sha2Hasher::hash_value),
        })?;
        Ok(value)
    }
    fn value(&self, space: Space, key: &[u8]) -> Result<Option<Vec<u8>>> {
        ensure!(
            space != Space::Order && !key.is_empty(),
            "invalid application key"
        );
        ensure!(
            space != Space::Raw || crate::native::tree(key).is_none(),
            "native tree nodes require their owner's authentication scope"
        );
        if space == Space::Raw && crate::archive::height(key).is_some() {
            return self.archive_value(key);
        }
        self.observed(space, key)
    }
    pub(crate) fn archive_state(&self) -> Result<Option<Vec<u8>>> {
        self.observed(Space::Application, crate::archive::STATE_KEY)
    }
    fn archive_mmr(&self) -> Result<crate::archive::Mmr> {
        self.archive_state()?
            .as_deref()
            .map(crate::archive::Mmr::decode)
            .transpose()
            .map(|s| s.unwrap_or_default())
    }
    fn local_archive(&self, key: &[u8]) -> Result<Option<Vec<u8>>> {
        if self.virgin {
            return Ok(None);
        }
        Ok(self.raw.snapshot.get(key)?)
    }
    fn archived_bytes(&self, key: &[u8]) -> Result<Option<Vec<u8>>> {
        if self.virgin {
            return Ok(None);
        }
        self.raw.get(Space::Archive, key)
    }
    pub fn archive_range_proof(
        &self,
        anchor: crate::StateProof,
        query: &crate::ArchiveQuery,
        budget: usize,
    ) -> Result<crate::ArchiveRangeProof> {
        ensure!(
            self.manifest() == Some(&anchor.manifest),
            "archive proof snapshot differs from NOMT boundary"
        );
        let bytes = self
            .archive_state()?
            .context("archive MMR state is missing")?;
        crate::archive::proof::build_proof(
            anchor,
            query,
            budget,
            |key| self.local_archive(key),
            |key| self.archived_bytes(key),
            bytes,
        )
    }
    fn archive_value(&self, key: &[u8]) -> Result<Option<Vec<u8>>> {
        let result = (|| {
            let height = crate::archive::height(key).context("invalid archive key")?;
            let mmr = self.archive_mmr()?;
            if height >= mmr.count {
                return Ok(None);
            }
            let block = crate::archive::descriptor(&mmr, height, |key| self.local_archive(key))?;
            crate::archive::lookup(
                &block,
                key,
                |key| self.local_archive(key),
                |key| self.archived_bytes(key),
            )
        })();
        if result.is_err() {
            self.observations.poison();
        }
        result
    }
    fn archive_entries(
        &self,
        prefix: Vec<u8>,
        lower: Vec<u8>,
        end: Bound<Vec<u8>>,
    ) -> BoxStream<'static, Result<(Vec<u8>, Vec<u8>)>> {
        let view = self.clone();
        futures::stream::unfold(
            (
                view,
                prefix,
                lower,
                end,
                None::<(crate::archive::Block, u64)>,
                false,
            ),
            |(view, prefix, lower, end, position, done)| async move {
                if done {
                    return None;
                }
                let result =
                    (|| -> Result<Option<((Vec<u8>, Vec<u8>), (crate::archive::Block, u64))>> {
                        let (block, rank) = match position {
                            Some(position) => position,
                            None => {
                                let height = crate::archive::height(&prefix)
                                    .context("archive range requires a block prefix")?;
                                let mmr = view.archive_mmr()?;
                                if height >= mmr.count {
                                    return Ok(None);
                                }
                                let block = crate::archive::descriptor(&mmr, height, |key| {
                                    view.local_archive(key)
                                })?;
                                let rank = crate::archive::lower_bound(
                                    &block,
                                    &lower,
                                    |key| view.local_archive(key),
                                    |key| view.archived_bytes(key),
                                )?;
                                (block, rank)
                            }
                        };
                        if rank == block.count {
                            return Ok(None);
                        }
                        let (key, bytes) = crate::archive::at(
                            &block,
                            rank,
                            |key| view.local_archive(key),
                            |key| view.archived_bytes(key),
                        )?;
                        if !key.starts_with(&prefix)
                            || match &end {
                                Bound::Included(end) => key > *end,
                                Bound::Excluded(end) => key >= *end,
                                Bound::Unbounded => false,
                            }
                        {
                            return Ok(None);
                        }
                        Ok(Some(((key, bytes), (block, rank + 1))))
                    })();
                match result {
                    Ok(Some((entry, position))) => {
                        Some((Ok(entry), (view, prefix, lower, end, Some(position), false)))
                    }
                    Ok(None) => None,
                    Err(error) => {
                        view.observations.poison();
                        Some((Err(error), (view, prefix, lower, end, None, true)))
                    }
                }
            },
        )
        .boxed()
    }
    /// Scan original retained records, recompute every block root and MMR,
    /// and optionally emit rebuilt proof nodes. Local indexes are never trusted
    /// for export completeness. Memory is bounded by a single block.
    fn walk_archive(
        &self,
        mut rebuilt: impl FnMut(Vec<(Vec<u8>, Vec<u8>)>) -> Result<()>,
    ) -> Result<()> {
        let bytes = self
            .raw
            .get(Space::Application, crate::archive::STATE_KEY)?
            .context("committed archive MMR is missing")?;
        let expected = crate::archive::Mmr::decode(&bytes)?;
        ensure!(
            self.manifest()
                .is_some_and(|m| m.height.checked_add(1) == Some(expected.count)),
            "archive MMR count differs from the materialized height"
        );
        let mut mmr = crate::archive::Mmr::default();
        let mut total = 0u64;
        for height in 0..expected.count {
            let prefixes = [
                "compactblock/metadata/",
                "compactblock/payload/",
                "compactblock/record/",
                "compactblock/routing/",
                "compactblock/actions/",
                "compactblock/unrouted/",
                "cometbft-data/transactions/",
            ];
            let mut records = Vec::new();
            for prefix in prefixes {
                let prefix =
                    storage_key(Space::Archive, format!("{prefix}{height:020}").as_bytes());
                for entry in self
                    .raw
                    .snapshot
                    .iterator(IteratorMode::From(&prefix, Direction::Forward))
                {
                    let (key, value) = entry?;
                    if !key.starts_with(&prefix) {
                        break;
                    }
                    ensure!(
                        crate::archive::height(&key[1..]) == Some(height),
                        "malformed retained archive key"
                    );
                    records.push((key[1..].to_vec(), value.to_vec()));
                }
            }
            records.sort_by(|a, b| a.0.cmp(&b.0));
            let borrowed: Vec<_> = records
                .iter()
                .map(|(key, value)| (key.as_slice(), value.as_slice()))
                .collect();
            let (block, mut nodes) = crate::archive::build(height, &borrowed)?;
            total = total
                .checked_add(block.count)
                .context("archive retained count overflow")?;
            mmr.append(&block, |level, end, node| {
                nodes.push((crate::archive::mmr_node_key(level, end), node.to_vec()))
            })?;
            rebuilt(nodes)?;
        }
        ensure!(
            mmr == expected,
            "retained archive roots/counts differ from the authenticated MMR"
        );
        let mut actual = 0u64;
        for entry in self.raw.snapshot.iterator(IteratorMode::From(
            &[Space::Archive as u8],
            Direction::Forward,
        )) {
            let (key, _) = entry?;
            if key.first().copied() != Some(Space::Archive as u8) {
                break;
            }
            ensure!(
                crate::archive::height(&key[1..]).is_some(),
                "unknown archived record key"
            );
            actual = actual
                .checked_add(1)
                .context("archive raw count overflow")?;
        }
        ensure!(
            actual == total,
            "archive raw records are missing or contain extras"
        );
        Ok(())
    }
    pub(crate) fn validate_archive(&self) -> Result<()> {
        self.walk_archive(|_| Ok(()))
    }
    pub(crate) fn reserve_ordering(&self, space: Space, key: &[u8]) -> Result<()> {
        let result = (|| {
            let predecessor = self.predecessor(space, key)?.unwrap_or_default();
            if !predecessor.is_empty() {
                ensure!(
                    self.value(space, &predecessor)?.is_some(),
                    "ordering predecessor value is missing"
                );
            }
            let next = self.successor(space, &predecessor)?;
            let exists = self.value(space, key)?.is_some();
            ensure!(
                next.as_deref().is_none_or(|next| next >= key),
                "raw predecessor omitted committed keys"
            );
            ensure!(
                exists == (next.as_deref() == Some(key)),
                "raw value and authenticated ordering disagree"
            );
            if exists {
                self.successor(space, key)?;
            }
            Ok(())
        })();
        if result
            .as_ref()
            .is_err_and(|error: &anyhow::Error| !error.is::<crate::ProtocolLimitExceeded>())
        {
            self.observations.poison();
        }
        result
    }
    fn successor(&self, space: Space, key: &[u8]) -> Result<Option<Vec<u8>>> {
        let order_key = order_key(space, key);
        let value = self.observed(Space::Order, &order_key)?;
        if value.is_none() && key.is_empty() {
            return Ok(None);
        }
        decode_link(&value.context("authenticated ordering link is missing")?)
    }
    fn first_at(&self, space: Space, lower: &[u8]) -> Result<Option<Vec<u8>>> {
        let previous = self
            .predecessor(space, lower)
            .inspect_err(|_| self.observations.poison())?
            .unwrap_or_default();
        if !previous.is_empty() {
            ensure!(
                previous.as_slice() < lower,
                "ordering predecessor is not below lower bound"
            );
            ensure!(
                self.value(space, &previous)?.is_some(),
                "ordering predecessor value is missing"
            );
        }
        let next = self.successor(space, &previous)?;
        ensure!(
            next.as_deref().is_none_or(|k| k >= lower),
            "raw predecessor omitted committed keys"
        );
        Ok(next)
    }
    fn entries(
        &self,
        space: Space,
        prefix: Vec<u8>,
        lower: Vec<u8>,
        end: Bound<Vec<u8>>,
    ) -> BoxStream<'static, Result<(Vec<u8>, Vec<u8>)>> {
        if space == Space::Raw && crate::native::intersects(&prefix) {
            self.observations.poison();
            return futures::stream::once(async {
                Err(anyhow::anyhow!(
                    "native tree scans require an authentication scope"
                ))
            })
            .boxed();
        }
        if space == Space::Raw && crate::archive::height(&prefix).is_some() {
            return self.archive_entries(prefix, lower, end);
        }
        let view = self.clone();
        futures::stream::unfold(
            (view, None::<Option<Vec<u8>>>, prefix, lower, end, false),
            move |(view, position, prefix, lower, end, done)| async move {
                if done {
                    return None;
                }
                let result = (|| -> Result<Option<(Vec<u8>, Vec<u8>, Option<Vec<u8>>)>> {
                    let next = match position {
                        None => view.first_at(space, &lower)?,
                        Some(next) => next,
                    };
                    let Some(key) = next else {
                        return Ok(None);
                    };
                    if !key.starts_with(&prefix)
                        || match &end {
                            Bound::Included(end) => key > *end,
                            Bound::Excluded(end) => key >= *end,
                            Bound::Unbounded => false,
                        }
                    {
                        return Ok(None);
                    }
                    let value = view
                        .value(space, &key)?
                        .context("committed ordered value is missing")?;
                    let next = view.successor(space, &key)?;
                    ensure!(
                        next.as_ref().is_none_or(|next| next > &key),
                        "authenticated ordering is not strictly increasing"
                    );
                    Ok(Some((key, value, next)))
                })();
                match result {
                    Ok(Some((key, value, next))) => Some((
                        Ok((key, value)),
                        (view, Some(next), prefix, lower, end, false),
                    )),
                    Ok(None) => None,
                    Err(error) => {
                        if !error.is::<crate::ProtocolLimitExceeded>() {
                            view.observations.poison();
                        }
                        Some((Err(error), (view, Some(None), prefix, lower, end, true)))
                    }
                }
            },
        )
        .boxed()
    }
}

/// A full-value store. Only materialization writes the boundary metadata; the
/// SDK receipt remains the sole durable decision outside this store.
pub struct RawStore {
    database: Arc<DB>,
    path: PathBuf,
}
impl RawStore {
    pub fn open(path: &Path) -> Result<Self> {
        let mut options = rocksdb::Options::default();
        options.create_if_missing(true);
        Ok(Self {
            database: Arc::new(DB::open(&options, path)?),
            path: path.into(),
        })
    }
    pub fn path(&self) -> &Path {
        &self.path
    }
    #[cfg(test)]
    pub(crate) fn corrupt_for_test(&self, space: Space, key: &[u8], value: Option<&[u8]>) {
        let key = storage_key(space, key);
        match value {
            Some(value) => self.database.put(key, value).unwrap(),
            None => self.database.delete(key).unwrap(),
        }
    }
    pub fn latest_snapshot(&self) -> Result<Snapshot> {
        let raw = Arc::new(RawSnapshot::new(self.database.clone()));
        let manifest = raw
            .snapshot
            .get(MANIFEST_KEY)?
            .map(|bytes| Manifest::decode(&bytes).map(Arc::new))
            .transpose()?;
        Ok(Snapshot {
            raw,
            manifest,
            observations: Observations::default(),
            virgin: false,
        })
    }
    pub(crate) fn rebuild_archive_indexes(&self) -> Result<()> {
        let snapshot = self.latest_snapshot()?;
        snapshot.validate_archive()?;
        // Recovery never trusts partially rebuilt indexes; restore publishes
        // its private destination only after the final synced batch.
        let mut clear = WriteBatch::default();
        clear.delete_range(
            &[crate::archive::LOCAL_SPACE],
            &[crate::archive::LOCAL_SPACE + 1],
        );
        self.database.write(clear)?;
        snapshot.walk_archive(|nodes| {
            let mut batch = WriteBatch::default();
            for (key, value) in nodes {
                batch.put(key, value);
            }
            self.database.write(batch)?;
            Ok(())
        })?;
        self.database.flush_wal(true)?;
        Ok(())
    }
    pub fn materialize(&self, effects: &Effects, manifest: &Manifest) -> Result<()> {
        effects.validate()?;
        manifest.validate()?;
        let previous_archive = self
            .database
            .get(storage_key(Space::Application, crate::archive::STATE_KEY))?;
        let archive_nodes =
            crate::archive::materialize(manifest.height, effects, previous_archive.as_deref())?;
        let mut batch = WriteBatch::default();
        for (key, value) in archive_nodes {
            batch.put(key, value);
        }
        for effect in &effects.0 {
            let key = storage_key(effect.space, &effect.key);
            match &effect.value {
                Some(value) => batch.put(key, value),
                None => batch.delete(key),
            }
        }
        if let Some(previous) = self.latest_snapshot()?.manifest() {
            for old in previous
                .participants
                .iter()
                .filter(|p| p.kind == crate::ParticipantKind::Volume)
            {
                if !manifest
                    .participants
                    .iter()
                    .any(|p| p.kind == old.kind && p.generation == old.generation)
                {
                    let mut key = RETIRED_PREFIX.to_vec();
                    key.extend_from_slice(&old.generation.to_be_bytes());
                    batch.put(key, manifest.height.to_be_bytes());
                }
            }
        }
        batch.put(MANIFEST_KEY, manifest.encode()?);
        let mut options = WriteOptions::default();
        options.set_sync(true);
        self.database.write_opt(batch, &options)?;
        Ok(())
    }
    pub(crate) fn retired_volumes(&self) -> Result<Vec<(crate::Day, u64)>> {
        let mut retired = Vec::new();
        for entry in self
            .database
            .iterator(IteratorMode::From(RETIRED_PREFIX, Direction::Forward))
        {
            let (key, value) = entry?;
            if !key.starts_with(RETIRED_PREFIX) {
                break;
            }
            ensure!(
                key.len() == RETIRED_PREFIX.len() + 8 && value.len() == 8,
                "invalid local retirement ledger"
            );
            let day = crate::Day(u64::from_be_bytes(key[RETIRED_PREFIX.len()..].try_into()?));
            ensure!(day.0 % 86_400 == 0, "invalid retired generation");
            retired.push((day, u64::from_be_bytes(value.as_ref().try_into()?)));
        }
        Ok(retired)
    }
    pub fn checkpoint(&self, path: &Path) -> Result<()> {
        rocksdb::checkpoint::Checkpoint::new(&self.database)?.create_checkpoint(path)?;
        Ok(())
    }
}

fn order_key(space: Space, key: &[u8]) -> Vec<u8> {
    storage_key(space, key)
}
fn encode_link(next: Option<&[u8]>) -> Vec<u8> {
    match next {
        None => vec![0],
        Some(next) => {
            let mut value = Vec::with_capacity(9 + next.len());
            value.push(1);
            value.extend_from_slice(&(next.len() as u64).to_be_bytes());
            value.extend_from_slice(next);
            value
        }
    }
}
fn decode_link(value: &[u8]) -> Result<Option<Vec<u8>>> {
    if value == [0] {
        return Ok(None);
    }
    ensure!(value.len() >= 10 && value[0] == 1, "invalid ordering link");
    let length = u64::from_be_bytes(value[1..9].try_into()?);
    ensure!(
        length == (value.len() - 9) as u64,
        "ordering link length mismatch"
    );
    Ok(Some(value[9..].to_vec()))
}

/// Update only neighboring authenticated links. A sorted pass remembers the
/// surviving predecessor, avoiding quadratic work across runs of deletions.
pub fn ordered_effects(view: &Snapshot, mut effects: Effects) -> Result<Effects> {
    effects.validate()?;
    ensure!(
        effects.0.iter().all(|e| e.space != Space::Order),
        "ordering updates must be derived"
    );
    let mut links = std::collections::BTreeMap::<Vec<u8>, Option<Vec<u8>>>::new();
    let mut previous_space = None;
    let mut last_processed = Vec::new();
    let mut surviving = Vec::new();
    for effect in &effects.0 {
        if matches!(effect.space, Space::Archive | Space::Native) {
            continue;
        }
        if previous_space != Some(effect.space) {
            previous_space = Some(effect.space);
            last_processed.clear();
            surviving.clear();
        }
        let old_predecessor = view
            .predecessor(effect.space, &effect.key)?
            .unwrap_or_default();
        let predecessor = if old_predecessor > last_processed {
            old_predecessor
        } else {
            surviving.clone()
        };
        if !predecessor.is_empty() && predecessor > last_processed {
            ensure!(
                view.value(effect.space, &predecessor)?.is_some(),
                "ordering predecessor is missing"
            );
        }
        let predecessor_link = order_key(effect.space, &predecessor);
        let next = match links.get(&predecessor_link) {
            Some(value) => decode_link(
                value
                    .as_ref()
                    .context("surviving predecessor was deleted")?,
            )?,
            None => view.successor(effect.space, &predecessor)?,
        };
        ensure!(
            next.as_ref().is_none_or(|next| next >= &effect.key),
            "raw ordering omitted a predecessor"
        );
        let old = view.value(effect.space, &effect.key)?;
        let exists = old.is_some();
        ensure!(
            exists == (next.as_ref() == Some(&effect.key)),
            "raw value and authenticated ordering disagree"
        );
        match (exists, effect.value.is_some()) {
            (false, true) => {
                links.insert(predecessor_link, Some(encode_link(Some(&effect.key))));
                links.insert(
                    order_key(effect.space, &effect.key),
                    Some(encode_link(next.as_deref())),
                );
            }
            (true, false) => {
                let following = view.successor(effect.space, &effect.key)?;
                ensure!(
                    following.as_ref().is_none_or(|next| next > &effect.key),
                    "ordering successor is not increasing"
                );
                links.insert(predecessor_link, Some(encode_link(following.as_deref())));
                links.insert(order_key(effect.space, &effect.key), None);
            }
            _ => {}
        }
        surviving = if effect.value.is_some() {
            effect.key.clone()
        } else {
            predecessor
        };
        last_processed = effect.key.clone();
    }
    effects
        .0
        .extend(links.into_iter().map(|(key, value)| Effect {
            space: Space::Order,
            key,
            value,
        }));
    effects
        .0
        .sort_by(|a, b| (a.space, &a.key).cmp(&(b.space, &b.key)));
    effects.validate()?;
    Ok(effects)
}
impl Effects {
    pub fn application_changes(&self) -> Result<Vec<ParticipantChange>> {
        self.validate()?;
        let mut changes = self
            .0
            .iter()
            .filter(|e| !matches!(e.space, Space::Archive | Space::Native))
            .map(|e| ParticipantChange {
                key: application_key(e.space, &e.key),
                value: committed_value(e.value.as_deref()),
            })
            .collect::<Vec<_>>();
        changes.sort_by_key(|c| c.key);
        ensure!(
            changes.windows(2).all(|w| w[0].key != w[1].key),
            "application key collision"
        );
        Ok(changes)
    }
}

impl StateRead for Snapshot {
    fn read_view(&self) -> Option<crate::ReadView> {
        Some(crate::ReadView {
            manifest: self.manifest.clone(),
            observations: self.observations.clone(),
        })
    }
    type GetRawFut = Ready<Result<Option<Vec<u8>>>>;
    type PrefixRawStream = BoxStream<'static, Result<(String, Vec<u8>)>>;
    type PrefixKeysStream = BoxStream<'static, Result<String>>;
    type NonconsensusPrefixRawStream = BoxStream<'static, Result<(Vec<u8>, Vec<u8>)>>;
    type NonconsensusRangeRawStream = Self::NonconsensusPrefixRawStream;
    fn get_raw(&self, key: &str) -> Self::GetRawFut {
        futures::future::ready(self.value(Space::Application, key.as_bytes()))
    }
    fn nonverifiable_get_raw(&self, key: &[u8]) -> Self::GetRawFut {
        futures::future::ready(self.value(Space::Raw, key))
    }
    fn native_get_raw(&self, scope: &crate::NativeReadScope, key: &[u8]) -> Self::GetRawFut {
        let result = (|| {
            scope.check(&self.observations, key)?;
            if self.virgin {
                Ok(None)
            } else {
                self.raw.get(Space::Native, key)
            }
        })();
        if result.is_err() {
            self.observations.poison();
        }
        futures::future::ready(result)
    }
    fn native_range_raw(
        &self,
        scope: &crate::NativeReadScope,
        prefix: &[u8],
        range: impl RangeBounds<Vec<u8>>,
    ) -> Result<Self::NonconsensusRangeRawStream> {
        scope.check(&self.observations, prefix)?;
        let view = self.clone();
        let scope = scope.clone();
        let prefix = prefix.to_vec();
        let start = range.start_bound().cloned();
        let end = range.end_bound().cloned();
        // Native commitment reconstruction validates completeness; local
        // cleanup uses this iterator only to remove derived records.
        let lower = match &start {
            Bound::Included(k) | Bound::Excluded(k) => [&prefix[..], &k[..]].concat(),
            Bound::Unbounded => prefix.clone(),
        };
        Ok(futures::stream::unfold((view,scope,prefix,start,end,lower,false), |(view,scope,prefix,start,end,mut next,done)| async move {
            if done || view.virgin { return None; }
            let result = (|| {
                scope.check(&view.observations,&prefix)?;
                for entry in view.raw.snapshot.iterator(IteratorMode::From(&storage_key(Space::Native,&next),Direction::Forward)) {
                    let (key,value) = entry?;
                    if key.first().copied() != Some(Space::Native as u8) || !key[1..].starts_with(&prefix) { return Ok(None); }
                    let key = key[1..].to_vec();
                    if !(start.clone(),end.clone()).contains(&key[prefix.len()..].to_vec()) {
                        if matches!(&start,Bound::Excluded(bound) if key[prefix.len()..] == bound[..]) { continue; }
                        return Ok(None);
                    }
                    return Ok(Some((key,value.to_vec())));
                }
                Ok(None)
            })();
            match result {
                Ok(Some((key,value))) => { next=key.clone(); next.push(0); Some((Ok((key,value)),(view,scope,prefix,start,end,next,false))) }
                Ok(None) => None,
                Err(error) => { view.observations.poison(); Some((Err(error),(view,scope,prefix,start,end,next,true))) }
            }
        }).boxed())
    }
    fn object_get<T: Any + Send + Sync + Clone>(&self, _key: &'static str) -> Option<T> {
        None
    }
    fn object_type(&self, _key: &'static str) -> Option<TypeId> {
        None
    }
    fn prefix_raw(&self, prefix: &str) -> Self::PrefixRawStream {
        self.entries(
            Space::Application,
            prefix.as_bytes().to_vec(),
            prefix.as_bytes().to_vec(),
            Bound::Unbounded,
        )
        .map(|entry| entry.and_then(|(key, value)| Ok((String::from_utf8(key)?, value))))
        .boxed()
    }
    fn prefix_keys(&self, prefix: &str) -> Self::PrefixKeysStream {
        self.prefix_raw(prefix)
            .map(|entry| entry.map(|(key, _)| key))
            .boxed()
    }
    fn nonverifiable_prefix_raw(&self, prefix: &[u8]) -> Self::NonconsensusPrefixRawStream {
        self.entries(
            Space::Raw,
            prefix.to_vec(),
            prefix.to_vec(),
            Bound::Unbounded,
        )
    }
    fn nonverifiable_range_raw(
        &self,
        prefix: Option<&[u8]>,
        range: impl RangeBounds<Vec<u8>>,
    ) -> Result<Self::NonconsensusRangeRawStream> {
        let prefix = prefix.unwrap_or_default().to_vec();
        let append = |suffix: &[u8]| {
            let mut key = prefix.clone();
            key.extend_from_slice(suffix);
            key
        };
        let start = match range.start_bound() {
            Bound::Unbounded => prefix.clone(),
            Bound::Included(start) => append(start),
            Bound::Excluded(start) => {
                let mut key = append(start);
                key.push(0);
                key
            }
        };
        let end = match range.end_bound() {
            Bound::Unbounded => Bound::Unbounded,
            Bound::Included(end) => Bound::Included(append(end)),
            Bound::Excluded(end) => Bound::Excluded(append(end)),
        };
        Ok(self.entries(Space::Raw, prefix, start, end))
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::{Forest, ForestConfig, Participant, ParticipantId, ParticipantKind};
    use std::collections::BTreeMap;
    fn empty() -> Manifest {
        Manifest {
            chain_id: "raw-test".into(),
            protocol: [1; 32],
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
    fn apply(
        store: &RawStore,
        forest: &Forest,
        previous: &Manifest,
        effects: Effects,
        height: u64,
    ) -> Manifest {
        let view = store.latest_snapshot().unwrap();
        let mut effects = effects;
        crate::archive::stage(&view, height, &mut effects).unwrap();
        let effects = ordered_effects(&view, effects).unwrap();
        forest
            .authenticate_reads(previous, view.observations())
            .unwrap();
        let update = forest
            .prepare(
                &previous.participants,
                BTreeMap::from([(
                    ParticipantId::APPLICATION,
                    effects.application_changes().unwrap(),
                )]),
            )
            .unwrap();
        let mut manifest = previous.clone();
        manifest.participants = update.next().to_vec();
        manifest.height = height;
        if height > 0 {
            manifest.previous = previous.digest().unwrap();
            manifest.block_id = [height as u8; 32];
        }
        forest.materialize(update).unwrap();
        store.materialize(&effects, &manifest).unwrap();
        manifest
    }
    fn put(space: Space, key: &[u8], value: Option<&[u8]>) -> Effect {
        Effect {
            space,
            key: key.to_vec(),
            value: value.map(Vec::from),
        }
    }
    #[tokio::test]
    async fn ordered_reads_detect_omissions_corruption_and_survive_owner_drop() {
        let temp = tempfile::tempdir().unwrap();
        let store = RawStore::open(&temp.path().join("raw")).unwrap();
        let forest = Forest::open(
            &temp.path().join("forest"),
            ForestConfig {
                buckets: 1024,
                cache_mib: 1,
                preallocate: false,
                materialization_workers: 2,
            },
            None,
        )
        .unwrap();
        let manifest = apply(
            &store,
            &forest,
            &empty(),
            Effects(vec![
                put(Space::Application, b"a", Some(b"a-value")),
                put(Space::Application, b"b", Some(b"b-value")),
                put(Space::Application, b"c", Some(b"c-value")),
                put(Space::Raw, b"raw/a", Some(b"raw")),
            ]),
            0,
        );
        let view = store.latest_snapshot().unwrap();
        let rows = view
            .prefix_raw("")
            .collect::<Vec<_>>()
            .await
            .into_iter()
            .collect::<Result<Vec<_>>>()
            .unwrap();
        assert_eq!(
            rows.iter().map(|r| r.0.as_str()).collect::<Vec<_>>(),
            vec!["a", "b", "c", "storage/archive/mmr.v1"]
        );
        assert!(view.get_raw("absent").await.unwrap().is_none());
        forest
            .authenticate_reads(&manifest, view.observations())
            .unwrap();
        // A forged successor skips b but its recorded commitment cannot pass Freeze.
        store
            .database
            .put(
                storage_key(Space::Order, &order_key(Space::Application, b"a")),
                encode_link(Some(b"c")),
            )
            .unwrap();
        let forged = store.latest_snapshot().unwrap();
        let rows = forged
            .prefix_raw("")
            .collect::<Vec<_>>()
            .await
            .into_iter()
            .collect::<Result<Vec<_>>>()
            .unwrap();
        assert_eq!(
            rows.iter().map(|row| row.0.as_str()).collect::<Vec<_>>(),
            vec!["a", "c", "storage/archive/mmr.v1"]
        );
        assert!(forest
            .authenticate_reads(&manifest, forged.observations())
            .is_err());
        // A point read of a corrupted value is rejected even when its length is unchanged.
        store
            .database
            .put(storage_key(Space::Application, b"b"), b"x-value")
            .unwrap();
        let corrupt = store.latest_snapshot().unwrap();
        assert_eq!(corrupt.get_raw("b").await.unwrap().unwrap(), b"x-value");
        assert!(forest
            .authenticate_reads(&manifest, corrupt.observations())
            .is_err());
        assert!(forest
            .validate_application_values(&manifest.participants[0], corrupt.canonical_entries())
            .is_err());
        let held = view.new_view();
        drop(store);
        assert_eq!(held.get_raw("b").await.unwrap().unwrap(), b"b-value");
        forest
            .authenticate_reads(&manifest, held.observations())
            .unwrap();
    }
    #[tokio::test]
    async fn sorted_neighbor_updates_handle_insertions_runs_of_deletions_and_ranges() {
        let temp = tempfile::tempdir().unwrap();
        let store = RawStore::open(&temp.path().join("raw")).unwrap();
        let forest = Forest::open(
            &temp.path().join("forest"),
            ForestConfig {
                buckets: 1024,
                cache_mib: 1,
                preallocate: false,
                materialization_workers: 2,
            },
            None,
        )
        .unwrap();
        let manifest = apply(
            &store,
            &forest,
            &empty(),
            Effects(
                (0..1000)
                    .map(|i| put(Space::Raw, format!("prefix/{i:04}").as_bytes(), Some(b"v")))
                    .collect(),
            ),
            0,
        );
        let mut changes = (0..999)
            .map(|i| put(Space::Raw, format!("prefix/{i:04}").as_bytes(), None))
            .collect::<Vec<_>>();
        changes.push(put(Space::Raw, b"prefix/1000", Some(b"new")));
        let manifest = apply(&store, &forest, &manifest, Effects(changes), 1);
        let view = store.latest_snapshot().unwrap();
        let rows = view
            .nonverifiable_range_raw(Some(b"prefix/"), b"0999".to_vec()..b"1001".to_vec())
            .unwrap()
            .collect::<Vec<_>>()
            .await
            .into_iter()
            .collect::<Result<Vec<_>>>()
            .unwrap();
        assert_eq!(
            rows.iter().map(|r| r.0.as_slice()).collect::<Vec<_>>(),
            vec![b"prefix/0999".as_slice(), b"prefix/1000".as_slice()]
        );
        forest
            .authenticate_reads(&manifest, view.observations())
            .unwrap();
        let view = store.latest_snapshot().unwrap();
        let inclusive = view
            .nonverifiable_range_raw(Some(b"prefix/"), b"0999".to_vec()..=b"0999".to_vec())
            .unwrap()
            .collect::<Vec<_>>()
            .await;
        assert_eq!(inclusive.len(), 1);
        forest
            .authenticate_reads(&manifest, view.observations())
            .unwrap();
    }
}
