//! Validate page completeness before handing a block to wallet synchronization.
use anyhow::{ensure, Context, Result};
use sha2::{Digest, Sha256};
use shieldd_sdk_proto::{
    core::component::{compact_block::v1 as pb, compliance::v1 as compliance, sct::v1 as sct},
    Message,
};
use shieldd_sdk_tct::builder::block::LeafProof;
use shieldd_sdk_txhash::TransactionId;
use std::collections::BTreeMap;

/// Local aggregate wire-data and record budgets, independent of chain validity.
#[derive(Clone, Copy, Debug)]
pub struct AssemblyLimits {
    pub max_encoded_bytes: usize,
    pub max_records: usize,
}
impl Default for AssemblyLimits {
    fn default() -> Self {
        Self {
            max_encoded_bytes: 64 * 1024 * 1024,
            max_records: 262_144,
        }
    }
}
/// Shared across selector chunks and canonical transactions for one wallet block.
pub struct AssemblyBudget {
    bytes: usize,
    records: usize,
}
impl AssemblyBudget {
    pub fn new(limits: AssemblyLimits) -> Result<Self> {
        ensure!(
            limits.max_encoded_bytes > 0 && limits.max_records > 0,
            "invalid wallet block budget"
        );
        Ok(Self {
            bytes: limits.max_encoded_bytes,
            records: limits.max_records,
        })
    }
    pub fn reserve_record(&mut self, length: usize) -> Result<()> {
        ensure!(
            length <= self.bytes && self.records > 0,
            "wallet block exceeds assembly budget"
        );
        self.bytes -= length;
        self.records -= 1;
        Ok(())
    }
}

/// A filtered block whose selected payloads have complete positional proof records.
/// Provider omission remains a trusted-provider boundary; callers must verify the host SCT root.
pub struct SparseCompactBlock {
    pub block: crate::CompactBlock,
    pub payload_count: u32,
    pub proofs: Vec<LeafProof>,
    pub owners: BTreeMap<u64, TransactionId>,
}

/// An assembler is scoped to one query and discarded after any page failure.
pub struct PageAssembler {
    height: u64,
    chain: String,
    filtered: bool,
    identity: Option<Vec<u8>>,
    header: Option<pb::StoredCompactBlock>,
    pending: Option<pb::CompactRecordFragment>,
    counts: [u32; 7],
    proven: BTreeMap<u64, pb::ProvenPayload>,
    complete: bool,
}
impl PageAssembler {
    pub fn new(height: u64, chain: String, filtered: bool) -> Self {
        Self {
            height,
            chain,
            filtered,
            identity: None,
            header: None,
            pending: None,
            counts: [0; 7],
            proven: BTreeMap::new(),
            complete: false,
        }
    }
    pub fn push(
        &mut self,
        page: pb::CompactBlockPageResponse,
        budget: &mut AssemblyBudget,
    ) -> Result<()> {
        ensure!(
            !self.complete
                && page.height == self.height
                && page.chain_id == self.chain
                && page.block_identity.len() == 32,
            "page belongs to another block or completed query"
        );
        if let Some(identity) = &self.identity {
            ensure!(
                *identity == page.block_identity,
                "page block identity changed"
            );
        } else {
            self.identity = Some(page.block_identity);
        }
        for fragment in page.fragments {
            ensure!(
                fragment.total_length <= 16 * 1024 * 1024 && fragment.data.len() <= 64 * 1024,
                "record fragment exceeds wallet budget"
            );
            let mut record = match self.pending.take() {
                Some(record) => {
                    ensure!(
                        record.kind == fragment.kind
                            && record.index == fragment.index
                            && record.total_length == fragment.total_length
                            && record.data.len() == fragment.offset as usize,
                        "noncontiguous record fragments"
                    );
                    record
                }
                None => {
                    ensure!(fragment.offset == 0, "record starts at a nonzero offset");
                    budget.reserve_record(fragment.total_length as usize)?;
                    pb::CompactRecordFragment {
                        data: Vec::new(),
                        ..fragment.clone()
                    }
                }
            };
            ensure!(
                record.data.len() + fragment.data.len() <= record.total_length as usize
                    && (!fragment.data.is_empty() || record.total_length == 0),
                "invalid record fragment length"
            );
            record.data.extend(fragment.data);
            if record.data.len() == record.total_length as usize {
                self.record(record, budget)?;
            } else {
                self.pending = Some(record);
            }
        }
        if page.next_cursor.is_empty() {
            ensure!(self.pending.is_none(), "query ended inside a record");
            self.complete = true;
        }
        Ok(())
    }
    fn record(&mut self, record: pb::CompactRecordFragment, budget: &AssemblyBudget) -> Result<()> {
        if record.kind == 0 {
            ensure!(
                self.header.is_none() && record.index == 0,
                "duplicate or misplaced compact header"
            );
            ensure!(
                Sha256::digest(&record.data).as_slice()
                    == self.identity.as_ref().context("missing page identity")?,
                "header digest mismatch"
            );
            let header = pb::StoredCompactBlock::decode(record.data.as_slice())?;
            ensure!(
                header.sections.len() == 7
                    && header
                        .sections
                        .iter()
                        .enumerate()
                        .all(|(i, s)| s.kind == i as i32 + 1),
                "invalid section inventory"
            );
            let block = header.metadata.as_ref().context("missing compact header")?;
            ensure!(
                block.height == self.height
                    && block.state_payloads.is_empty()
                    && block.nullifiers.is_empty()
                    && block.routing_records.is_empty()
                    && block.routing_actions.is_empty()
                    && block.compliance_user_registrations.is_empty()
                    && block.compliance_user_status_changes.is_empty()
                    && block.compliance_asset_registrations.is_empty(),
                "header repeats records or has wrong height"
            );
            ensure!(
                header.sections[0].count <= 65536,
                "payload count exceeds SCT capacity"
            );
            let required_records: u64 = header
                .sections
                .iter()
                .filter(|section| !self.filtered || section.kind >= 5)
                .map(|section| u64::from(section.count))
                .sum();
            ensure!(
                required_records <= budget.records as u64,
                "wallet block exceeds record budget"
            );
            self.header = Some(header);
            return Ok(());
        }
        let header = self
            .header
            .as_mut()
            .context("record precedes compact header")?;
        if record.kind == 8 {
            ensure!(self.filtered, "proven payload in a full scan response");
            let proven = pb::ProvenPayload::decode(record.data.as_slice())?;
            let metadata = header.metadata.as_ref().context("missing header")?;
            ensure!(
                proven
                    .position
                    .checked_sub(metadata.state_payload_start_position)
                    == Some(record.index as u64)
                    && record.index < header.sections[0].count,
                "proven payload position outside block"
            );
            if let Some(previous) = self.proven.insert(proven.position, proven.clone()) {
                ensure!(previous == proven, "conflicting duplicate payload");
            }
            return Ok(());
        }
        ensure!(
            (1..=7).contains(&record.kind) && (!self.filtered || record.kind >= 5),
            "unexpected compact collection"
        );
        let kind = record.kind as usize - 1;
        ensure!(
            record.index == self.counts[kind] && record.index < header.sections[kind].count,
            "missing, duplicate or reordered compact record"
        );
        self.counts[kind] += 1;
        let block = header.metadata.as_mut().context("missing header")?;
        macro_rules! append {
            ($field:ident,$ty:ty) => {
                block.$field.push(<$ty>::decode(record.data.as_slice())?)
            };
        }
        match record.kind {
            1 => append!(state_payloads, pb::StatePayload),
            2 => append!(nullifiers, sct::Nullifier),
            3 => append!(routing_records, pb::RoutingRecord),
            4 => append!(routing_actions, pb::RoutingAction),
            5 => append!(
                compliance_user_registrations,
                compliance::EventUserRegistered
            ),
            6 => append!(
                compliance_user_status_changes,
                compliance::EventUserAssetStatusChanged
            ),
            7 => append!(
                compliance_asset_registrations,
                compliance::EventAssetRegistered
            ),
            _ => unreachable!(),
        }
        Ok(())
    }
    fn finish_header(&mut self) -> Result<pb::StoredCompactBlock> {
        ensure!(
            self.complete && self.pending.is_none(),
            "compact query has not completed"
        );
        let header = self.header.take().context("missing compact header")?;
        for (i, section) in header.sections.iter().enumerate() {
            if !self.filtered || i >= 4 {
                ensure!(
                    self.counts[i] == section.count,
                    "compact collection is incomplete"
                );
            }
        }
        Ok(header)
    }
    pub fn full(mut self) -> Result<crate::CompactBlock> {
        ensure!(
            !self.filtered,
            "filtered query cannot be committed as a full block"
        );
        self.finish_header()?
            .metadata
            .context("missing header")?
            .try_into()
    }
    pub fn sparse(mut self) -> Result<SparseCompactBlock> {
        ensure!(self.filtered, "full query is not sparse");
        let header = self.finish_header()?;
        let count = header.sections[0].count;
        let mut block: crate::CompactBlock =
            header.metadata.context("missing header")?.try_into()?;
        let mut proofs = Vec::new();
        let mut owners = BTreeMap::new();
        for (position, proven) in self.proven {
            let payload: crate::StatePayload = proven
                .payload
                .context("missing proven payload")?
                .try_into()?;
            ensure!(proven.auth_path.len() == 8, "invalid block proof depth");
            let mut siblings = [[[0; 32]; 3]; 8];
            for (path, chunk) in siblings.iter_mut().zip(proven.auth_path) {
                *path = [
                    chunk
                        .sibling_1
                        .try_into()
                        .map_err(|_| anyhow::anyhow!("invalid sibling width"))?,
                    chunk
                        .sibling_2
                        .try_into()
                        .map_err(|_| anyhow::anyhow!("invalid sibling width"))?,
                    chunk
                        .sibling_3
                        .try_into()
                        .map_err(|_| anyhow::anyhow!("invalid sibling width"))?,
                ];
            }
            proofs.push(LeafProof {
                position: u16::try_from(position - block.state_payload_start_position)?,
                commitment: *payload.commitment(),
                siblings,
            });
            if let Some(owner) = proven.transaction_id {
                owners.insert(position, owner.try_into()?);
            }
            block.state_payloads.push(payload);
        }
        shieldd_sdk_tct::builder::block::Finalized::checked_sparse(
            block.block_root,
            count,
            &proofs,
        )?;
        Ok(SparseCompactBlock {
            block,
            payload_count: count,
            proofs,
            owners,
        })
    }
}
