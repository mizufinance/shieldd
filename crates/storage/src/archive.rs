//! Retained block records: sorted Merkle trees accumulated in a single MMR.
//! Full records and proof nodes are raw data; only the count/peaks enter NOMT.
pub mod proof;

#[cfg(feature = "persistent")]
use crate::Effect;
use crate::{Effects, Space, ValueCommitment};
use anyhow::{ensure, Context, Result};
use sha2::{Digest, Sha256};

pub(crate) const STATE_KEY: &[u8] = b"storage/archive/mmr.v1";
pub(crate) const LOCAL_SPACE: u8 = 254;
type Hash = [u8; 32];

pub(crate) fn height(key: &[u8]) -> Option<u64> {
    let suffix = if let Some(suffix) = key.strip_prefix(b"compactblock/") {
        let slash = suffix.iter().position(|b| *b == b'/')?;
        let kind = &suffix[..slash];
        if !matches!(
            kind,
            b"metadata" | b"payload" | b"record" | b"routing" | b"actions" | b"unrouted"
        ) {
            return None;
        }
        &suffix[slash + 1..]
    } else {
        key.strip_prefix(b"cometbft-data/transactions/")?
    };
    if suffix.len() < 20
        || !suffix[..20].iter().all(u8::is_ascii_digit)
        || (suffix.len() > 20 && suffix[20] != b'/')
    {
        return None;
    }
    let value = std::str::from_utf8(&suffix[..20])
        .ok()?
        .parse::<u64>()
        .ok()?;
    (format!("{value:020}").as_bytes() == &suffix[..20]).then_some(value)
}
fn hash(domain: &[u8], bytes: &[&[u8]]) -> Hash {
    let mut h = Sha256::new();
    h.update(domain);
    for bytes in bytes {
        h.update(bytes);
    }
    h.finalize().into()
}
fn record_hash(key: &[u8], value: &[u8]) -> Hash {
    hash(
        b"shieldd.archive.record.v1\0",
        &[
            &(key.len() as u64).to_be_bytes(),
            key,
            &ValueCommitment::new(value).encode(),
        ],
    )
}
fn parent(level: u32, left: Hash, right: Hash) -> Hash {
    hash(
        b"shieldd.archive.merkle.v1\0",
        &[&level.to_be_bytes(), &left, &right],
    )
}
fn mmr_parent(level: u32, left: Hash, right: Hash) -> Hash {
    hash(
        b"shieldd.archive.mmr-node.v1\0",
        &[&level.to_be_bytes(), &left, &right],
    )
}
fn padded_leaf() -> Hash {
    hash(b"shieldd.archive.padding.v1\0", &[])
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub(crate) struct Block {
    pub height: u64,
    pub count: u64,
    pub root: Hash,
}
impl Block {
    fn leaf(&self) -> Hash {
        hash(
            b"shieldd.archive.block.v1\0",
            &[
                &self.height.to_be_bytes(),
                &self.count.to_be_bytes(),
                &self.root,
            ],
        )
    }
    fn encode(&self) -> Vec<u8> {
        [
            &self.height.to_be_bytes()[..],
            &self.count.to_be_bytes()[..],
            &self.root[..],
        ]
        .concat()
    }
    fn decode(bytes: &[u8]) -> Result<Self> {
        ensure!(bytes.len() == 48, "invalid archive block descriptor");
        Ok(Self {
            height: u64::from_be_bytes(bytes[..8].try_into()?),
            count: u64::from_be_bytes(bytes[8..16].try_into()?),
            root: bytes[16..].try_into()?,
        })
    }
}

#[derive(Clone, Debug, Default, PartialEq, Eq)]
pub(crate) struct Mmr {
    pub count: u64,
    /// Peaks in descending height order, inferred from the set bits of count.
    peaks: Vec<Hash>,
}
impl Mmr {
    pub fn encode(&self) -> Result<Vec<u8>> {
        ensure!(
            self.peaks.len() == self.count.count_ones() as usize,
            "invalid MMR peaks"
        );
        let mut bytes = self.count.to_be_bytes().to_vec();
        for peak in &self.peaks {
            bytes.extend_from_slice(peak);
        }
        Ok(bytes)
    }
    pub fn decode(bytes: &[u8]) -> Result<Self> {
        ensure!(bytes.len() >= 8, "missing MMR count");
        let count = u64::from_be_bytes(bytes[..8].try_into()?);
        ensure!(
            bytes.len() == 8 + count.count_ones() as usize * 32,
            "noncanonical MMR encoding"
        );
        Ok(Self {
            count,
            peaks: bytes[8..]
                .chunks_exact(32)
                .map(|p| p.try_into().expect("fixed peak"))
                .collect(),
        })
    }
    /// The compact authenticated frontier is sufficient for future suffix proofs.
    #[cfg(feature = "persistent")]
    pub(crate) fn frontier_nodes(&self) -> Vec<(Vec<u8>, Vec<u8>)> {
        let mut end = 0;
        let mut peaks = self.peaks.iter();
        let mut nodes = Vec::new();
        for level in (0..64).rev() {
            if self.count & (1u64 << level) != 0 {
                end += 1u64 << level;
                nodes.push((
                    mmr_node_key(level, end),
                    peaks.next().expect("validated peaks").to_vec(),
                ));
            }
        }
        nodes
    }
    pub(crate) fn append(
        &mut self,
        block: &Block,
        mut store: impl FnMut(u32, u64, Hash),
    ) -> Result<()> {
        ensure!(
            block.height == self.count,
            "archive blocks are not consecutive"
        );
        let end = self.count.checked_add(1).context("MMR count overflow")?;
        let mut level = 0;
        let mut node = block.leaf();
        store(level, end, node);
        while self.count & (1u64 << level) != 0 {
            node = mmr_parent(
                level + 1,
                self.peaks.pop().context("missing MMR peak")?,
                node,
            );
            level += 1;
            store(level, end, node);
        }
        self.peaks.push(node);
        self.count = end;
        Ok(())
    }
    fn peak(&self, ordinal: u64) -> Result<(u32, u64, Hash)> {
        ensure!(
            ordinal < self.count,
            "archive height exceeds the authenticated MMR count"
        );
        let mut start = 0;
        let mut index = 0;
        for level in (0..64).rev() {
            if self.count & (1u64 << level) == 0 {
                continue;
            }
            let end = start + (1u64 << level);
            if ordinal < end {
                return Ok((level, start, self.peaks[index]));
            }
            start = end;
            index += 1;
        }
        anyhow::bail!("MMR peak is missing")
    }
    pub fn authenticate_block(
        &self,
        block: &Block,
        mut get: impl FnMut(&[u8]) -> Result<Option<Vec<u8>>>,
    ) -> Result<()> {
        let (level, start, expected) = self.peak(block.height)?;
        let position = block.height - start;
        let mut node = block.leaf();
        for step in 0..level {
            let width = 1u64 << step;
            let subtree_start = start + ((position >> step) << step);
            let sibling_end = if position & width == 0 {
                subtree_start + width * 2
            } else {
                subtree_start
            };
            let sibling: Hash = get(&mmr_node_key(step, sibling_end))?
                .context("missing archive MMR proof node")?
                .as_slice()
                .try_into()?;
            node = if position & width == 0 {
                mmr_parent(step + 1, node, sibling)
            } else {
                mmr_parent(step + 1, sibling, node)
            };
        }
        ensure!(
            node == expected,
            "archive block does not authenticate to the committed MMR peak"
        );
        Ok(())
    }
}

fn local(kind: &[u8], numbers: &[u64]) -> Vec<u8> {
    let mut key = vec![LOCAL_SPACE];
    key.extend_from_slice(b"archive/");
    key.extend_from_slice(kind);
    for number in numbers {
        key.extend_from_slice(&number.to_be_bytes());
    }
    key
}
pub(crate) fn block_key(height: u64) -> Vec<u8> {
    local(b"block/", &[height])
}
pub(crate) fn mmr_node_key(level: u32, end: u64) -> Vec<u8> {
    local(b"mmr/", &[u64::from(level), end])
}
fn record_node_key(height: u64, level: u32, index: u64) -> Vec<u8> {
    local(b"tree/", &[height, u64::from(level), index])
}
fn index_key(height: u64, index: u64) -> Vec<u8> {
    local(b"index/", &[height, index])
}
fn rank_key(key: &[u8]) -> Vec<u8> {
    let mut result = local(b"rank/", &[]);
    result.extend_from_slice(key);
    result
}

/// Exact new block commitment and local proof nodes. Updating historical
/// records is forbidden; retention/physical deletion is a separate local job.
fn build_tree(
    height: u64,
    records: &[(&[u8], &[u8])],
    mut emit: impl FnMut(Vec<u8>, Vec<u8>),
) -> Result<Block> {
    ensure!(
        records.windows(2).all(|w| w[0].0 < w[1].0),
        "archive records are not strictly ordered"
    );
    ensure!(
        records
            .iter()
            .all(|(key, _)| self::height(key) == Some(height)),
        "archive record belongs to a different block"
    );
    let count = records.len() as u64;
    let width = records
        .len()
        .max(1)
        .checked_next_power_of_two()
        .context("archive tree width overflow")?;
    let mut layer: Vec<_> = records
        .iter()
        .map(|(key, value)| record_hash(key, value))
        .collect();
    layer.resize(width, padded_leaf());
    for (index, (key, _)) in records.iter().enumerate() {
        emit(index_key(height, index as u64), key.to_vec());
        emit(rank_key(key), (index as u64).to_be_bytes().to_vec());
    }
    let mut level = 0;
    loop {
        for (index, node) in layer.iter().enumerate() {
            emit(record_node_key(height, level, index as u64), node.to_vec());
        }
        if layer.len() == 1 {
            break;
        }
        level += 1;
        layer = layer
            .chunks_exact(2)
            .map(|p| parent(level, p[0], p[1]))
            .collect();
    }
    let block = Block {
        height,
        count,
        root: layer[0],
    };
    emit(block_key(height), block.encode());
    Ok(block)
}

pub(crate) fn build(
    height: u64,
    records: &[(&[u8], &[u8])],
) -> Result<(Block, Vec<(Vec<u8>, Vec<u8>)>)> {
    let mut nodes = Vec::new();
    let block = build_tree(height, records, |key, value| nodes.push((key, value)))?;
    Ok((block, nodes))
}

#[cfg(feature = "persistent")]
pub(crate) fn stage(view: &crate::Snapshot, height: u64, effects: &mut Effects) -> Result<()> {
    let bytes = view.archive_state()?;
    let mut mmr = bytes
        .as_deref()
        .map(Mmr::decode)
        .transpose()?
        .unwrap_or_default();
    ensure!(
        mmr.count == height,
        "archive MMR base differs from execution height"
    );
    let records: Vec<_> = effects
        .0
        .iter()
        .filter(|e| e.space == Space::Archive)
        .map(|e| {
            ensure!(
                self::height(&e.key) == Some(height),
                "historical archive mutation is forbidden"
            );
            Ok((
                e.key.as_slice(),
                e.value
                    .as_deref()
                    .context("canonical archive deletion is forbidden")?,
            ))
        })
        .collect::<Result<_>>()?;
    let block = build_tree(height, &records, |_, _| {})?;
    mmr.append(&block, |_, _, _| {})?;
    ensure!(
        !effects
            .0
            .iter()
            .any(|e| e.space == Space::Application && e.key == STATE_KEY),
        "archive MMR state is owned by persistence"
    );
    effects.0.push(Effect {
        space: Space::Application,
        key: STATE_KEY.to_vec(),
        value: Some(mmr.encode()?),
    });
    effects
        .0
        .sort_by(|a, b| (a.space, &a.key).cmp(&(b.space, &b.key)));
    effects.validate()
}
/// Recompute derived proof nodes deterministically, outside the canonical delta.
pub(crate) fn materialize(
    height: u64,
    effects: &Effects,
    old_state: Option<&[u8]>,
) -> Result<Vec<(Vec<u8>, Vec<u8>)>> {
    let records: Vec<_> = effects
        .0
        .iter()
        .filter(|e| e.space == Space::Archive)
        .map(|e| {
            Ok((
                e.key.as_slice(),
                e.value
                    .as_deref()
                    .context("deleted canonical archive record")?,
            ))
        })
        .collect::<Result<_>>()?;
    let (block, mut nodes) = build(height, &records)?;
    let mut mmr = old_state.map(Mmr::decode).transpose()?.unwrap_or_default();
    mmr.append(&block, |level, end, node| {
        nodes.push((mmr_node_key(level, end), node.to_vec()))
    })?;
    let expected = effects
        .0
        .iter()
        .find(|e| e.space == Space::Application && e.key == STATE_KEY)
        .and_then(|e| e.value.as_ref())
        .context("frozen archive state is missing")?;
    ensure!(
        mmr.encode()? == *expected,
        "materialized archive MMR differs from the decided delta"
    );
    Ok(nodes)
}

pub(crate) fn descriptor(
    mmr: &Mmr,
    height: u64,
    mut get: impl FnMut(&[u8]) -> Result<Option<Vec<u8>>>,
) -> Result<Block> {
    let block =
        Block::decode(&get(&block_key(height))?.context("missing archive block descriptor")?)?;
    ensure!(block.height == height, "archive descriptor height mismatch");
    mmr.authenticate_block(&block, &mut get)?;
    Ok(block)
}
pub(crate) fn authenticate_record(
    block: &Block,
    index: u64,
    key: &[u8],
    value: &[u8],
    mut get: impl FnMut(&[u8]) -> Result<Option<Vec<u8>>>,
) -> Result<()> {
    ensure!(
        index < block.count && self::height(key) == Some(block.height),
        "invalid archive record position"
    );
    let width = block
        .count
        .max(1)
        .checked_next_power_of_two()
        .context("archive width overflow")?;
    let mut node = record_hash(key, value);
    for level in 0..width.trailing_zeros() {
        let sibling: Hash = get(&record_node_key(block.height, level, (index >> level) ^ 1))?
            .context("missing archive record proof node")?
            .as_slice()
            .try_into()?;
        node = if (index >> level) & 1 == 0 {
            parent(level + 1, node, sibling)
        } else {
            parent(level + 1, sibling, node)
        };
    }
    ensure!(node == block.root, "archive record authentication mismatch");
    Ok(())
}
/// Return an authenticated sorted rank. Both binary-search boundary records
/// receive membership checks, so altered local indexes cannot omit a range.
pub(crate) fn lower_bound(
    block: &Block,
    target: &[u8],
    mut get: impl FnMut(&[u8]) -> Result<Option<Vec<u8>>>,
    mut value: impl FnMut(&[u8]) -> Result<Option<Vec<u8>>>,
) -> Result<u64> {
    let mut lower = 0;
    let mut upper = block.count;
    while lower < upper {
        let mid = lower + (upper - lower) / 2;
        let key = get(&index_key(block.height, mid))?.context("missing archive sorted index")?;
        if key.as_slice() < target {
            lower = mid + 1;
        } else {
            upper = mid;
        }
    }
    for ordinal in [lower.checked_sub(1), (lower < block.count).then_some(lower)]
        .into_iter()
        .flatten()
    {
        let key =
            get(&index_key(block.height, ordinal))?.context("missing archive range boundary")?;
        let bytes = value(&key)?.context("missing archived range boundary value")?;
        authenticate_record(block, ordinal, &key, &bytes, &mut get)?;
        ensure!(
            if ordinal < lower {
                key.as_slice() < target
            } else {
                key.as_slice() >= target
            },
            "archive sorted index omitted a record"
        );
    }
    Ok(lower)
}
pub(crate) fn at(
    block: &Block,
    ordinal: u64,
    mut get: impl FnMut(&[u8]) -> Result<Option<Vec<u8>>>,
    mut value: impl FnMut(&[u8]) -> Result<Option<Vec<u8>>>,
) -> Result<(Vec<u8>, Vec<u8>)> {
    ensure!(ordinal < block.count, "archive ordinal out of range");
    let key = get(&index_key(block.height, ordinal))?.context("missing archive sorted index")?;
    let bytes = value(&key)?.context("missing archived value")?;
    authenticate_record(block, ordinal, &key, &bytes, &mut get)?;
    Ok((key, bytes))
}
pub(crate) fn lookup(
    block: &Block,
    key: &[u8],
    get: impl FnMut(&[u8]) -> Result<Option<Vec<u8>>> + Copy,
    value: impl FnMut(&[u8]) -> Result<Option<Vec<u8>>> + Copy,
) -> Result<Option<Vec<u8>>> {
    let rank = lower_bound(block, key, get, value)?;
    if rank == block.count {
        return Ok(None);
    }
    let (actual, bytes) = at(block, rank, get, value)?;
    Ok((actual == key).then_some(bytes))
}

#[cfg(test)]
mod tests {
    use super::*;
    use std::collections::BTreeMap;
    #[test]
    fn mmr_mid_history_membership_and_canonical_encoding() {
        let mut mmr = Mmr::default();
        let mut nodes = BTreeMap::new();
        let mut blocks = Vec::new();
        for height in 0..37 {
            let block = Block {
                height,
                count: height + 1,
                root: [height as u8; 32],
            };
            mmr.append(&block, |level, end, node| {
                nodes.insert(mmr_node_key(level, end), node.to_vec());
            })
            .unwrap();
            blocks.push(block);
            for block in &blocks {
                mmr.authenticate_block(block, |key| Ok(nodes.get(key).cloned()))
                    .unwrap();
            }
        }
        assert_eq!(Mmr::decode(&mmr.encode().unwrap()).unwrap(), mmr);
        let mut bad = mmr.encode().unwrap();
        bad.push(0);
        assert!(Mmr::decode(&bad).is_err());
        blocks[12].count += 1;
        assert!(mmr
            .authenticate_block(&blocks[12], |key| Ok(nodes.get(key).cloned()))
            .is_err());
    }
    #[test]
    fn archive_range_boundaries_detect_missing_corrupt_and_extra_records() {
        let keys: Vec<_> = (0..17)
            .map(|i| format!("compactblock/payload/{:020}/{i:020}", 7).into_bytes())
            .collect();
        let values: Vec<_> = (0..17).map(|i| vec![i; 11]).collect();
        let records: Vec<_> = keys
            .iter()
            .zip(&values)
            .map(|(k, v)| (k.as_slice(), v.as_slice()))
            .collect();
        let (block, nodes) = build(7, &records).unwrap();
        let mut nodes: BTreeMap<_, _> = nodes.into_iter().collect();
        let mut raw: BTreeMap<_, _> = keys.iter().cloned().zip(values).collect();
        for i in 3..11 {
            let (key, value) = at(
                &block,
                i,
                |k| Ok(nodes.get(k).cloned()),
                |k| Ok(raw.get(k).cloned()),
            )
            .unwrap();
            assert_eq!(key, keys[i as usize]);
            assert_eq!(value, vec![i as u8; 11]);
        }
        assert_eq!(
            lower_bound(
                &block,
                &keys[6],
                |k| Ok(nodes.get(k).cloned()),
                |k| Ok(raw.get(k).cloned())
            )
            .unwrap(),
            6
        );
        nodes.insert(index_key(7, 6), keys[8].clone());
        assert!(lower_bound(
            &block,
            &keys[6],
            |k| Ok(nodes.get(k).cloned()),
            |k| Ok(raw.get(k).cloned())
        )
        .is_err());
        raw.remove(&keys[2]);
        assert!(at(
            &block,
            2,
            |k| Ok(nodes.get(k).cloned()),
            |k| Ok(raw.get(k).cloned())
        )
        .is_err());
        assert!(at(
            &block,
            17,
            |k| Ok(nodes.get(k).cloned()),
            |k| Ok(raw.get(k).cloned())
        )
        .is_err());
    }
}

/// Optional historical data cannot be supplied with a complete proof.
#[derive(Debug)]
pub struct ArchiveUnavailable(pub u64);
impl std::fmt::Display for ArchiveUnavailable {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(f, "archive history unavailable at block {}", self.0)
    }
}
impl std::error::Error for ArchiveUnavailable {}
