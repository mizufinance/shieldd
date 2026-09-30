use super::*;
use nomt_core::{proof::PathProofTerminal, trie_pos::TriePosition};
use shieldd_sdk_proto::core::component::sct::v1 as pb;

fn hash(bytes: Vec<u8>) -> Result<[u8; 32]> {
    bytes
        .try_into()
        .map_err(|_| anyhow::anyhow!("nullifier hash must be 32 bytes"))
}
impl TryFrom<pb::PermanentNullifierBoundary> for Boundary {
    type Error = anyhow::Error;
    fn try_from(value: pb::PermanentNullifierBoundary) -> Result<Self> {
        ensure!(
            value.partition_roots.len() == PARTITIONS,
            "invalid nullifier partition count"
        );
        let roots = Roots(
            value
                .partition_roots
                .into_iter()
                .map(hash)
                .collect::<Result<Vec<_>>>()?
                .try_into()
                .map_err(|_| anyhow::anyhow!("invalid nullifier partition count"))?,
        );
        ensure!(
            hash(value.aggregate_root)? == roots.commitment(),
            "nullifier aggregate root mismatch"
        );
        Ok(Self {
            height: Some(value.height),
            block_id: hash(value.block_id)?,
            roots,
        })
    }
}
impl TryFrom<Boundary> for pb::PermanentNullifierBoundary {
    type Error = anyhow::Error;
    fn try_from(value: Boundary) -> Result<Self> {
        Ok(Self {
            height: value
                .height
                .context("nullifier boundary is not initialized")?,
            block_id: value.block_id.to_vec(),
            aggregate_root: value.roots.commitment().to_vec(),
            partition_roots: value.roots.0.into_iter().map(|r| r.to_vec()).collect(),
        })
    }
}
impl TryFrom<pb::NullifierResponse> for Status {
    type Error = anyhow::Error;
    fn try_from(value: pb::NullifierResponse) -> Result<Self> {
        let nullifier = value.nullifier.context("missing nullifier")?.try_into()?;
        let boundary = value
            .boundary
            .context("missing nullifier boundary")?
            .try_into()?;
        let proof = value.proof.context("missing nullifier proof")?;
        ensure!(
            proof.siblings.len() <= 256,
            "nullifier proof depth exceeded"
        );
        let siblings = proof
            .siblings
            .into_iter()
            .map(hash)
            .collect::<Result<Vec<_>>>()?;
        let terminal = match proof.terminal.context("missing proof terminal")? {
            pb::nullifier_path_proof::Terminal::Leaf(leaf) => PathProofTerminal::Leaf(LeafData {
                key_path: hash(leaf.key_path)?,
                value_hash: hash(leaf.value_hash)?,
            }),
            pb::nullifier_path_proof::Terminal::Terminator(bytes) => {
                let path = key(nullifier);
                let position = if siblings.is_empty() {
                    TriePosition::new()
                } else {
                    TriePosition::from_bitslice(&path.view_bits::<Msb0>()[..siblings.len()])
                };
                ensure!(
                    hash(bytes)? == position.raw_path(),
                    "noncanonical nullifier terminal path"
                );
                PathProofTerminal::Terminator(position)
            }
        };
        let status = Self {
            nullifier,
            boundary,
            spent: value.spent,
            proof: PathProof { terminal, siblings },
        };
        status.verify(&status.boundary)?;
        Ok(status)
    }
}
impl TryFrom<Status> for pb::NullifierResponse {
    type Error = anyhow::Error;
    fn try_from(value: Status) -> Result<Self> {
        value.verify(&value.boundary)?;
        let terminal = match value.proof.terminal {
            PathProofTerminal::Leaf(leaf) => {
                pb::nullifier_path_proof::Terminal::Leaf(pb::NullifierLeaf {
                    key_path: leaf.key_path.to_vec(),
                    value_hash: leaf.value_hash.to_vec(),
                })
            }
            PathProofTerminal::Terminator(position) => {
                pb::nullifier_path_proof::Terminal::Terminator(position.raw_path().to_vec())
            }
        };
        Ok(Self {
            nullifier: Some(value.nullifier.into()),
            spent: value.spent,
            boundary: Some(value.boundary.try_into()?),
            proof: Some(pb::NullifierPathProof {
                terminal: Some(terminal),
                siblings: value
                    .proof
                    .siblings
                    .into_iter()
                    .map(|r| r.to_vec())
                    .collect(),
            }),
        })
    }
}
