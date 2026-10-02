use anyhow::{ensure, Context, Result};
use prost::Message;
use sha2::{Digest, Sha256};

#[derive(
    Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord, serde::Serialize, serde::Deserialize,
)]
pub enum ParticipantKind {
    Application = 1,
    Permanent = 2,
    Volume = 3,
}

#[derive(Clone, Debug, PartialEq, Eq, serde::Serialize, serde::Deserialize)]
pub struct Participant {
    pub kind: ParticipantKind,
    pub generation: u64,
    pub root: [u8; 32],
    pub count: u64,
}

#[derive(
    Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord, serde::Serialize, serde::Deserialize,
)]
pub struct Day(pub u64);

impl Day {
    pub fn at(seconds: i64) -> Result<Self> {
        let seconds = u64::try_from(seconds).context("canonical block time predates Unix epoch")?;
        Ok(Self(seconds / 86_400 * 86_400))
    }
    /// Existing volume proofs permit a target timestamp within thirty minutes
    /// of canonical block time, including the adjacent UTC day at midnight.
    pub fn eligible_at(self, seconds: i64) -> Result<bool> {
        ensure!(self.0 % 86_400 == 0, "noncanonical generation day");
        let now = u64::try_from(seconds).context("negative block time")?;
        Ok(
            self.0 <= now.checked_add(1_800).context("day eligibility overflow")?
                && now
                    <= self
                        .0
                        .checked_add(86_399 + 1_800)
                        .context("day eligibility overflow")?,
        )
    }
    pub fn retired_at(self, seconds: i64) -> Result<bool> {
        ensure!(self.0 % 86_400 == 0, "noncanonical generation day");
        let cutoff = self
            .0
            .checked_add(88_200)
            .context("generation expiry overflow")?;
        Ok(u64::try_from(seconds).context("negative block time")? > cutoff)
    }
}

#[derive(Clone, Debug, PartialEq, Eq, serde::Serialize, serde::Deserialize)]
pub struct Manifest {
    pub chain_id: String,
    pub protocol: [u8; 32],
    pub height: u64,
    pub block_id: [u8; 32],
    pub previous: [u8; 32],
    pub participants: Vec<Participant>,
}

#[derive(Clone, PartialEq, Message)]
struct ManifestRecord {
    #[prost(uint32, tag = "1")]
    version: u32,
    #[prost(string, tag = "2")]
    chain_id: String,
    #[prost(bytes = "vec", tag = "3")]
    protocol: Vec<u8>,
    #[prost(uint64, tag = "4")]
    height: u64,
    #[prost(bytes = "vec", tag = "5")]
    block_id: Vec<u8>,
    #[prost(bytes = "vec", tag = "6")]
    previous: Vec<u8>,
    #[prost(message, repeated, tag = "7")]
    participants: Vec<ParticipantRecord>,
}
#[derive(Clone, PartialEq, Message)]
struct ParticipantRecord {
    #[prost(uint32, tag = "1")]
    kind: u32,
    #[prost(uint64, tag = "2")]
    generation: u64,
    #[prost(bytes = "vec", tag = "3")]
    root: Vec<u8>,
    #[prost(uint64, tag = "4")]
    count: u64,
}

impl Manifest {
    pub fn validate(&self) -> Result<()> {
        ensure!(
            !self.chain_id.is_empty() && self.chain_id.len() <= 256,
            "invalid manifest chain identity"
        );
        ensure!(self.protocol != [0; 32], "missing protocol identity");
        ensure!(
            self.height != 0 || (self.block_id == [0; 32] && self.previous == [0; 32]),
            "invalid genesis boundary"
        );
        ensure!(
            self.height == 0 || (self.block_id != [0; 32] && self.previous != [0; 32]),
            "missing block boundary identity"
        );
        ensure!(
            self.participants.len() >= 17 && self.participants.len() <= 20,
            "invalid participant count"
        );
        ensure!(
            self.participants
                .windows(2)
                .all(|p| (p[0].kind, p[0].generation) < (p[1].kind, p[1].generation)),
            "participants are not strictly ordered"
        );
        ensure!(
            self.participants[0].kind == ParticipantKind::Application
                && self.participants[0].generation == 0,
            "missing application participant"
        );
        for (shard, participant) in self.participants[1..17].iter().enumerate() {
            ensure!(
                participant.kind == ParticipantKind::Permanent
                    && participant.generation == shard as u64,
                "missing permanent shard"
            );
        }
        for participant in &self.participants[17..] {
            ensure!(
                participant.kind == ParticipantKind::Volume && participant.generation % 86_400 == 0,
                "invalid volume generation"
            );
        }
        for participant in &self.participants {
            ensure!(
                (participant.count == 0) == (participant.root == [0; 32]),
                "participant root and count disagree"
            );
        }
        Ok(())
    }

    pub fn encode(&self) -> Result<Vec<u8>> {
        self.validate()?;
        Ok(ManifestRecord {
            version: 1,
            chain_id: self.chain_id.clone(),
            protocol: self.protocol.to_vec(),
            height: self.height,
            block_id: self.block_id.to_vec(),
            previous: self.previous.to_vec(),
            participants: self
                .participants
                .iter()
                .map(|p| ParticipantRecord {
                    kind: p.kind as u32,
                    generation: p.generation,
                    root: p.root.to_vec(),
                    count: p.count,
                })
                .collect(),
        }
        .encode_to_vec())
    }

    pub fn decode(bytes: &[u8]) -> Result<Self> {
        ensure!(bytes.len() <= 4096, "manifest exceeds canonical size limit");
        let record = ManifestRecord::decode(bytes)?;
        ensure!(
            record.version == 1 && record.encode_to_vec() == bytes,
            "noncanonical or unsupported manifest"
        );
        let manifest = Self {
            chain_id: record.chain_id,
            protocol: record
                .protocol
                .try_into()
                .map_err(|_| anyhow::anyhow!("invalid protocol digest"))?,
            height: record.height,
            block_id: record
                .block_id
                .try_into()
                .map_err(|_| anyhow::anyhow!("invalid block identity"))?,
            previous: record
                .previous
                .try_into()
                .map_err(|_| anyhow::anyhow!("invalid previous boundary"))?,
            participants: record
                .participants
                .into_iter()
                .map(|p| {
                    Ok(Participant {
                        kind: match p.kind {
                            1 => ParticipantKind::Application,
                            2 => ParticipantKind::Permanent,
                            3 => ParticipantKind::Volume,
                            _ => anyhow::bail!("unknown participant kind"),
                        },
                        generation: p.generation,
                        root: p
                            .root
                            .try_into()
                            .map_err(|_| anyhow::anyhow!("invalid participant root"))?,
                        count: p.count,
                    })
                })
                .collect::<Result<_>>()?,
        };
        manifest.validate()?;
        Ok(manifest)
    }

    pub fn digest(&self) -> Result<[u8; 32]> {
        let mut hash = Sha256::new();
        hash.update(b"shieldd.manifest.v1\0");
        hash.update(self.encode()?);
        Ok(hash.finalize().into())
    }

    pub fn follows(&self, previous: &Self) -> Result<()> {
        self.validate()?;
        previous.validate()?;
        ensure!(
            self.chain_id == previous.chain_id && self.protocol == previous.protocol,
            "manifest protocol identity changed"
        );
        ensure!(
            previous.height.checked_add(1) == Some(self.height)
                && self.previous == previous.digest()?,
            "manifest does not follow committed boundary"
        );
        Ok(())
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    fn genesis() -> Manifest {
        let mut participants = vec![Participant {
            kind: ParticipantKind::Application,
            generation: 0,
            root: [0; 32],
            count: 0,
        }];
        participants.extend((0..16).map(|generation| Participant {
            kind: ParticipantKind::Permanent,
            generation,
            root: [0; 32],
            count: 0,
        }));
        Manifest {
            chain_id: "test".into(),
            protocol: [1; 32],
            height: 0,
            block_id: [0; 32],
            previous: [0; 32],
            participants,
        }
    }
    #[test]
    fn canonical_boundaries_bind_identity_order_roots_and_counts() {
        let previous = genesis();
        let mut next = previous.clone();
        next.height = 1;
        next.block_id = [2; 32];
        next.previous = previous.digest().unwrap();
        next.participants[1].root = [3; 32];
        next.participants[1].count = 1;
        next.follows(&previous).unwrap();
        let digest = next.digest().unwrap();
        let mut corrupt = next.clone();
        corrupt.participants[1].count = 2;
        assert_ne!(digest, corrupt.digest().unwrap());
        corrupt.chain_id = "foreign".into();
        assert!(corrupt.follows(&previous).is_err());
        corrupt = next.clone();
        corrupt.participants.swap(1, 2);
        assert!(corrupt.encode().is_err());
        let mut wire = next.encode().unwrap();
        wire.extend_from_slice(&[0x40, 1]);
        assert!(Manifest::decode(&wire).is_err());
        wire = next.encode().unwrap();
        wire.extend_from_slice(&[8, 1]);
        assert!(Manifest::decode(&wire).is_err());
    }
    #[test]
    fn day_expiry_keeps_the_strict_boundary() {
        let day = Day::at(172_801).unwrap();
        assert_eq!(day, Day(172_800));
        assert!(!day.retired_at(172_800 + 88_199).unwrap());
        assert!(!day.retired_at(172_800 + 88_200).unwrap());
        assert!(day.retired_at(172_800 + 88_201).unwrap());
    }
}
