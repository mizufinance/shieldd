//! Private, bounded scratch storage. Anonymous files disappear on cancellation or process exit.
use super::types::*;
use anyhow::{ensure, Context, Result};
use serde::{Deserialize, Serialize};
use sha2::{Digest, Sha256};
use std::io::{Read, Seek, SeekFrom, Write};

const MAX_SPOOL_BYTES: u64 = 256 * 1024 * 1024;
const MAX_RECORD_BYTES: usize = 1024 * 1024;

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct ScannerIdentity(pub [u8; 32]);
impl ScannerIdentity {
    pub fn new(key: &crate::DetectionKey, asset: &shieldd_sdk_asset::asset::Id) -> Self {
        use group::GroupEncoding;
        let mut hash = Sha256::new();
        hash.update(b"shieldd-scanner-v2");
        hash.update(key.public_key().to_bytes());
        hash.update(asset.0.to_bytes());
        Self(hash.finalize().into())
    }
}

#[derive(Default, Clone, Copy, Debug)]
pub struct ScanCounts {
    pub irrelevant: u64,
    pub invalid: u64,
    pub detected: u64,
}

pub struct ScanBatch {
    pub(crate) block: BlockRef,
    pub(crate) predecessor: Option<BlockRef>,
    pub(crate) identity: ScannerIdentity,
    pub(crate) counts: ScanCounts,
    file: std::fs::File,
    bytes: u64,
    records: u64,
    failed: bool,
}
impl ScanBatch {
    pub fn new(
        block: BlockRef,
        predecessor: Option<BlockRef>,
        identity: ScannerIdentity,
    ) -> Result<Self> {
        Ok(Self {
            block,
            predecessor,
            identity,
            counts: ScanCounts::default(),
            file: tempfile::tempfile()?,
            bytes: 0,
            records: 0,
            failed: false,
        })
    }
    pub fn push(&mut self, output: ScannedOutput) -> Result<()> {
        ensure!(
            !self.failed,
            "scanner batch must be replayed after a spool failure"
        );
        let result = self.push_record(output);
        self.failed = result.is_err();
        result
    }
    fn push_record(&mut self, output: ScannedOutput) -> Result<()> {
        ensure!(
            output.ciphertext.record_ref.action().tx.block == self.block,
            "scanner output block mismatch"
        );
        let retain = match &output.outcome {
            OutputOutcome::Irrelevant => {
                self.counts.irrelevant += 1;
                false
            }
            OutputOutcome::Invalid { .. } => {
                self.counts.invalid += 1;
                self.counts.invalid <= super::storage::MAX_INVALID_CIPHERTEXTS_PER_BLOCK as u64
            }
            OutputOutcome::Detected { event, .. } => {
                ensure!(
                    event.record_ref == output.ciphertext.record_ref,
                    "detection output identity mismatch"
                );
                self.counts.detected += 1;
                true
            }
        };
        if !retain {
            return Ok(());
        }
        let bytes = serde_json::to_vec(&WireOutput::from_output(output))?;
        ensure!(
            bytes.len() <= MAX_RECORD_BYTES
                && self.bytes + 4 + bytes.len() as u64 <= MAX_SPOOL_BYTES,
            "scanner scratch budget exceeded"
        );
        self.file.write_all(&(bytes.len() as u32).to_be_bytes())?;
        self.file.write_all(&bytes)?;
        self.bytes += 4 + bytes.len() as u64;
        self.records += 1;
        Ok(())
    }
    pub(crate) fn records(&self) -> Result<impl Iterator<Item = Result<ScannedOutput>>> {
        ensure!(!self.failed, "incomplete scanner batch cannot commit");
        let mut file = self.file.try_clone()?;
        file.seek(SeekFrom::Start(0))?;
        let mut remaining = self.records;
        Ok(std::iter::from_fn(move || {
            if remaining == 0 {
                return None;
            }
            remaining -= 1;
            Some((|| {
                let mut length = [0; 4];
                file.read_exact(&mut length)?;
                let length = u32::from_be_bytes(length) as usize;
                ensure!(length <= MAX_RECORD_BYTES, "invalid scratch record length");
                let mut bytes = vec![0; length];
                file.read_exact(&mut bytes)?;
                serde_json::from_slice::<WireOutput>(&bytes)?.into_output()
            })())
        }))
    }
}

#[derive(Serialize, Deserialize)]
struct WireOutput {
    ciphertext: ExtractedComplianceCiphertext,
    outcome: WireOutcome,
}
#[derive(Serialize, Deserialize)]
enum WireOutcome {
    Invalid {
        reason: String,
    },
    Detected {
        record_ref: ComplianceRecordRef,
        asset: String,
        flagged: bool,
        salt: [u8; 32],
        tags: [u32; 2],
        ciphertext: Vec<u8>,
        raw: Vec<u8>,
        public: Option<PublicWithdrawalData>,
        evidence: std::result::Result<Vec<u8>, String>,
    },
}
impl WireOutput {
    fn from_output(output: ScannedOutput) -> Self {
        let outcome = match output.outcome {
            OutputOutcome::Irrelevant => unreachable!("irrelevant ciphertexts are never spooled"),
            OutputOutcome::Invalid { reason } => WireOutcome::Invalid { reason },
            OutputOutcome::Detected { event, evidence } => WireOutcome::Detected {
                record_ref: event.record_ref,
                asset: event.asset_id.to_string(),
                flagged: event.is_flagged,
                salt: event.salt.to_bytes(),
                tags: event.routing_tags,
                ciphertext: event.ciphertext.to_bytes(),
                raw: event.raw_bytes,
                public: event.public_withdrawal,
                evidence: match evidence {
                    CandidateEvidence::Ready(e) => Ok(e.to_bytes()),
                    CandidateEvidence::BuildFailure { reason } => Err(reason),
                },
            },
        };
        Self {
            ciphertext: output.ciphertext,
            outcome,
        }
    }
    fn into_output(self) -> Result<ScannedOutput> {
        let outcome = match self.outcome {
            WireOutcome::Invalid { reason } => OutputOutcome::Invalid { reason },
            WireOutcome::Detected {
                record_ref,
                asset,
                flagged,
                salt,
                tags,
                ciphertext,
                raw,
                public,
                evidence,
            } => OutputOutcome::Detected {
                event: DetectionEvent {
                    record_ref,
                    asset_id: asset.parse()?,
                    is_flagged: flagged,
                    salt: shieldd_sdk_crypto::encoding::field(&salt).context("scratch salt")?,
                    routing_tags: tags,
                    ciphertext: match self.ciphertext.kind {
                        ComplianceCiphertextKind::Transfer => ComplianceCiphertext::Transfer(
                            crate::TransferComplianceCiphertext::from_bytes(&ciphertext)?,
                        ),
                        ComplianceCiphertextKind::Withdrawal => ComplianceCiphertext::Withdrawal(
                            crate::WithdrawalComplianceCiphertext::from_bytes(&ciphertext)?,
                        ),
                    },
                    raw_bytes: raw,
                    public_withdrawal: public,
                },
                evidence: match evidence {
                    Ok(bytes) => CandidateEvidence::Ready(
                        crate::ComplianceEvidenceObject::from_bytes(&bytes)?,
                    ),
                    Err(reason) => CandidateEvidence::BuildFailure { reason },
                },
            },
        };
        Ok(ScannedOutput {
            ciphertext: self.ciphertext,
            outcome,
        })
    }
}
