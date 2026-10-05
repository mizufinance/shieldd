//! Detached retained-record ranges. Rank neighbors prove page completeness;
//! the MMR state is anchored through the ordinary NOMT application proof.
use super::*;
use crate::{Space, StateProof};
use prost::Message;

pub const MAX_RANGE_RECORDS: usize = 4096;
pub const MAX_RANGE_PROOF_BYTES: usize = 16 * 1024 * 1024;

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct ArchiveQuery {
    pub height: u64,
    pub prefix: Vec<u8>,
    /// Inclusive, full original key; normally prefix plus the next-page key.
    pub start: Vec<u8>,
    /// Exclusive, full original key. None means the end of this prefix.
    pub end: Option<Vec<u8>>,
    pub limit: usize,
}
impl ArchiveQuery {
    pub fn validate(&self) -> Result<()> {
        ensure!(
            height(&self.prefix) == Some(self.height) && self.prefix.len() <= 256,
            "invalid archive range prefix"
        );
        ensure!(
            self.start.starts_with(&self.prefix) && self.start.len() <= 512,
            "archive start escaped prefix"
        );
        ensure!(
            self.end
                .as_ref()
                .is_none_or(|e| e.len() <= 512 && e > &self.start),
            "invalid archive range end"
        );
        ensure!(
            (1..=MAX_RANGE_RECORDS).contains(&self.limit),
            "invalid archive page limit"
        );
        Ok(())
    }
    fn contains(&self, key: &[u8]) -> bool {
        key.starts_with(&self.prefix)
            && key >= self.start.as_slice()
            && self.end.as_ref().is_none_or(|end| key < end.as_slice())
    }
}
#[derive(Clone, PartialEq, Message)]
struct Record {
    #[prost(uint64, tag = "1")]
    rank: u64,
    #[prost(bytes = "vec", tag = "2")]
    key: Vec<u8>,
    #[prost(bytes = "vec", tag = "3")]
    value: Vec<u8>,
    #[prost(bytes = "vec", repeated, tag = "4")]
    siblings: Vec<Vec<u8>>,
}
impl Record {
    fn verify(&self, block: &Block) -> Result<()> {
        let width = block
            .count
            .max(1)
            .checked_next_power_of_two()
            .context("archive proof width overflow")?;
        ensure!(
            self.siblings.len() == width.trailing_zeros() as usize,
            "archive record proof depth mismatch"
        );
        let mut siblings = self.siblings.iter();
        authenticate_record(block, self.rank, &self.key, &self.value, |_| {
            Ok(siblings.next().cloned())
        })
    }
}
#[derive(Clone, PartialEq, Message)]
pub struct ArchiveRangeProof {
    #[prost(uint32, tag = "1")]
    version: u32,
    #[prost(bytes = "vec", tag = "2")]
    anchor: Vec<u8>,
    #[prost(bytes = "vec", tag = "3")]
    mmr: Vec<u8>,
    #[prost(bytes = "vec", tag = "4")]
    block: Vec<u8>,
    #[prost(bytes = "vec", repeated, tag = "5")]
    mmr_siblings: Vec<Vec<u8>>,
    #[prost(bytes = "vec", tag = "6")]
    prefix: Vec<u8>,
    #[prost(bytes = "vec", tag = "7")]
    start: Vec<u8>,
    #[prost(bool, tag = "8")]
    bounded: bool,
    #[prost(bytes = "vec", tag = "9")]
    end: Vec<u8>,
    #[prost(uint32, tag = "10")]
    limit: u32,
    #[prost(uint64, tag = "11")]
    first: u64,
    #[prost(message, repeated, tag = "12")]
    records: Vec<Record>,
    #[prost(message, optional, tag = "13")]
    before: Option<Record>,
    #[prost(message, optional, tag = "14")]
    after: Option<Record>,
}
#[derive(Debug, PartialEq, Eq, serde::Serialize)]
pub struct VerifiedArchiveRecord {
    pub key: Vec<u8>,
    pub value: Vec<u8>,
}

#[derive(Debug, PartialEq, Eq, serde::Serialize)]
pub struct VerifiedArchivePage {
    pub records: Vec<VerifiedArchiveRecord>,
    /// Exact full key to use as the next request's inclusive start.
    pub next: Option<Vec<u8>>,
}
impl ArchiveRangeProof {
    pub fn decode_canonical(bytes: &[u8]) -> Result<Self> {
        ensure!(
            bytes.len() <= MAX_RANGE_PROOF_BYTES,
            "archive proof exceeds local bound"
        );
        let proof = Self::decode(bytes)?;
        ensure!(
            proof.encode_to_vec() == bytes,
            "noncanonical archive proof encoding"
        );
        Ok(proof)
    }
    pub fn encode_canonical(&self) -> Result<Vec<u8>> {
        let bytes = self.encode_to_vec();
        ensure!(
            bytes.len() <= MAX_RANGE_PROOF_BYTES,
            "archive proof exceeds local bound"
        );
        Ok(bytes)
    }
    pub fn verify(
        &self,
        shieldd_commitment: Hash,
        query: &ArchiveQuery,
    ) -> Result<VerifiedArchivePage> {
        query.validate()?;
        ensure!(
            self.version == 1
                && self.prefix == query.prefix
                && self.start == query.start
                && self.bounded == query.end.is_some()
                && self.end == query.end.clone().unwrap_or_default()
                && self.limit as usize == query.limit,
            "archive proof belongs to another query"
        );
        let anchor = StateProof::decode(&self.anchor)?;
        anchor.verify_application(
            shieldd_commitment,
            Space::Application,
            STATE_KEY,
            Some(&self.mmr),
        )?;
        let mmr = Mmr::decode(&self.mmr)?;
        ensure!(
            anchor.manifest.height.checked_add(1) == Some(mmr.count),
            "archive count differs from authenticated Shieldd boundary"
        );
        let block = Block::decode(&self.block)?;
        ensure!(
            block.height == query.height,
            "archive proof belongs to another block"
        );
        let (depth, _, _) = mmr.peak(block.height)?;
        ensure!(
            self.mmr_siblings.len() == depth as usize,
            "archive MMR proof depth mismatch"
        );
        let mut siblings = self.mmr_siblings.iter();
        mmr.authenticate_block(&block, |_| Ok(siblings.next().cloned()))?;
        ensure!(
            self.first <= block.count && self.records.len() <= query.limit,
            "invalid archive page ranks"
        );
        let end = self
            .first
            .checked_add(self.records.len() as u64)
            .context("archive page rank overflow")?;
        ensure!(end <= block.count, "archive page exceeds committed count");
        match &self.before {
            Some(record) => {
                ensure!(
                    self.first > 0 && record.rank == self.first - 1 && record.key < query.start,
                    "archive start omitted records"
                );
                record.verify(&block)?;
            }
            None => ensure!(self.first == 0, "archive start neighbor is missing"),
        }
        for (offset, record) in self.records.iter().enumerate() {
            ensure!(
                record.rank == self.first + offset as u64 && query.contains(&record.key),
                "archive page rank or bounds mismatch"
            );
            if offset > 0 {
                ensure!(
                    self.records[offset - 1].key < record.key,
                    "archive records are not ordered"
                );
            }
            record.verify(&block)?;
        }
        let next = match &self.after {
            Some(record) => {
                ensure!(
                    record.rank == end && record.key >= query.start,
                    "archive end omitted records"
                );
                if let Some(last) = self.records.last() {
                    ensure!(last.key < record.key, "archive end neighbor is not ordered");
                }
                record.verify(&block)?;
                if query.contains(&record.key) {
                    ensure!(!self.records.is_empty(), "archive page made no progress");
                    Some(record.key.clone())
                } else {
                    None
                }
            }
            None => {
                ensure!(end == block.count, "archive end neighbor is missing");
                None
            }
        };
        if let Some(first) = self.records.first() {
            ensure!(first.key >= query.start, "archive start mismatch");
        }
        Ok(VerifiedArchivePage {
            records: self
                .records
                .iter()
                .map(|r| VerifiedArchiveRecord {
                    key: r.key.clone(),
                    value: r.value.clone(),
                })
                .collect(),
            next,
        })
    }
}
#[cfg(feature = "persistent")]
pub(crate) fn build_proof(
    anchor: StateProof,
    query: &ArchiveQuery,
    byte_budget: usize,
    mut get: impl FnMut(&[u8]) -> Result<Option<Vec<u8>>>,
    mut value: impl FnMut(&[u8]) -> Result<Option<Vec<u8>>>,
    mmr_bytes: Vec<u8>,
) -> Result<ArchiveRangeProof> {
    query.validate()?;
    ensure!(
        byte_budget <= MAX_RANGE_PROOF_BYTES && byte_budget >= 1024,
        "invalid archive proof budget"
    );
    let mmr = Mmr::decode(&mmr_bytes)?;
    let block = descriptor(&mmr, query.height, &mut get)?;
    let mut mmr_siblings = vec![];
    mmr.authenticate_block(&block, |key| {
        let bytes = get(key)?.context("missing archive MMR node")?;
        mmr_siblings.push(bytes.clone());
        Ok(Some(bytes))
    })?;
    let first = lower_bound(&block, &query.start, &mut get, &mut value)?;
    let mut record = |rank| -> Result<Record> {
        let (key, value) = at(&block, rank, &mut get, &mut value)?;
        let mut siblings = vec![];
        authenticate_record(&block, rank, &key, &value, |key| {
            let bytes = get(key)?.context("missing archive tree node")?;
            siblings.push(bytes.clone());
            Ok(Some(bytes))
        })?;
        Ok(Record {
            rank,
            key,
            value,
            siblings,
        })
    };
    let before = if first > 0 {
        Some(record(first - 1)?)
    } else {
        None
    };
    let mut proof = ArchiveRangeProof {
        version: 1,
        anchor: anchor.encode()?,
        mmr: mmr_bytes,
        block: block.encode(),
        mmr_siblings,
        prefix: query.prefix.clone(),
        start: query.start.clone(),
        bounded: query.end.is_some(),
        end: query.end.clone().unwrap_or_default(),
        limit: query.limit as u32,
        first,
        records: vec![],
        before,
        after: None,
    };
    let mut rank = first;
    while rank < block.count {
        let entry = record(rank)?;
        if !query.contains(&entry.key) || proof.records.len() == query.limit {
            proof.after = Some(entry);
            break;
        }
        // Reserve the following boundary witness before accepting this record.
        let following = if rank + 1 < block.count {
            Some(record(rank + 1)?)
        } else {
            None
        };
        proof.records.push(entry);
        proof.after = following;
        if proof.encoded_len() > byte_budget {
            let rejected = proof.records.pop().expect("just pushed");
            proof.after = Some(rejected);
            ensure!(
                !proof.records.is_empty(),
                "archive record does not fit local proof budget"
            );
            break;
        }
        rank += 1;
    }
    proof.verify(StateProof::decode(&proof.anchor)?.manifest.digest()?, query)?;
    ensure!(
        proof.encoded_len() <= byte_budget,
        "archive boundary witnesses exceed local proof budget"
    );
    proof.encode_canonical()?;
    Ok(proof)
}

#[cfg(all(test, feature = "persistent"))]
mod tests {
    use super::*;
    use crate::{BlockBoundary, ForestConfig, StateDelta, StateWrite, Storage};
    use std::collections::BTreeMap;
    #[test]
    fn detached_mid_history_pages_reject_omissions_bounds_corruption_and_wrong_anchor() -> Result<()>
    {
        let directory = tempfile::tempdir()?;
        let storage = Storage::open(
            directory.path(),
            ForestConfig {
                buckets: 1024,
                cache_mib: 1,
                preallocate: false,
                materialization_workers: 2,
            },
        )?;
        for height in 0..9 {
            let mut state = StateDelta::new(storage.latest_snapshot());
            for i in 0..5u8 {
                state.nonverifiable_put_raw(
                    format!("compactblock/payload/{height:020}/")
                        .into_bytes()
                        .into_iter()
                        .chain([i])
                        .collect(),
                    vec![i; 100],
                );
            }
            let prepared = storage.prepare(
                state,
                BlockBoundary {
                    chain_id: "test".into(),
                    protocol: [1; 32],
                    height,
                    block_id: [height as u8; 32],
                    time: height as i64,
                },
                BTreeMap::new(),
            )?;
            storage.materialize(prepared)?;
        }
        let view = storage.latest_snapshot();
        let manifest = storage.manifest().unwrap();
        let shieldd_commitment = manifest.digest()?;
        let key = crate::application_key(Space::Application, STATE_KEY);
        let (value, path) = storage
            .forest()
            .read()
            .authenticated_read(&manifest.participants[0], key)?;
        let anchor = StateProof {
            manifest,
            participant: 0,
            key,
            value,
            path,
        };
        let prefix = b"compactblock/payload/00000000000000000003/".to_vec();
        let mut query = ArchiveQuery {
            height: 3,
            start: [prefix.as_slice(), &[1]].concat(),
            prefix,
            end: None,
            limit: 2,
        };
        let proof = view.archive_range_proof(anchor.clone(), &query, MAX_RANGE_PROOF_BYTES)?;
        let bytes = proof.encode_canonical()?;
        let proof = ArchiveRangeProof::decode_canonical(&bytes)?;
        let page = proof.verify(shieldd_commitment, &query)?;
        assert_eq!(page.records.len(), 2);
        assert_eq!(page.records[0].value, vec![1; 100]);
        let mut bad = proof.clone();
        bad.records.remove(0);
        assert!(bad.verify(shieldd_commitment, &query).is_err());
        let mut bad = proof.clone();
        bad.before = None;
        assert!(bad.verify(shieldd_commitment, &query).is_err());
        let mut bad = proof.clone();
        bad.after = None;
        assert!(bad.verify(shieldd_commitment, &query).is_err());
        let mut bad = proof.clone();
        bad.records[0].value[0] ^= 1;
        assert!(bad.verify(shieldd_commitment, &query).is_err());
        let mut bad = proof.clone();
        bad.mmr_siblings[0][0] ^= 1;
        assert!(bad.verify(shieldd_commitment, &query).is_err());
        assert!(proof.verify([0; 32], &query).is_err());
        let mut noncanonical = bytes;
        noncanonical.extend([0xa0, 6, 0]);
        assert!(ArchiveRangeProof::decode_canonical(&noncanonical).is_err());
        query.start = page.next.unwrap();
        assert!(proof.verify(shieldd_commitment, &query).is_err());
        let page = view
            .archive_range_proof(anchor.clone(), &query, MAX_RANGE_PROOF_BYTES)?
            .verify(shieldd_commitment, &query)?;
        assert_eq!(page.records.len(), 2);
        assert!(page.next.is_none());
        query.start = [query.prefix.as_slice(), &[6]].concat();
        let page = view
            .archive_range_proof(anchor, &query, MAX_RANGE_PROOF_BYTES)?
            .verify(shieldd_commitment, &query)?;
        assert!(page.records.is_empty() && page.next.is_none());
        Ok(())
    }
}
