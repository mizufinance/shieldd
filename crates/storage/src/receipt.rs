use crate::{Manifest, MAX_CALLS, MAX_RECEIPT_BYTES};
use anyhow::{ensure, Context, Result};
use prost::{bytes::Bytes, Message};
use sha2::{Digest, Sha256};

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct ReplayStep {
    pub method: u32,
    pub input: Bytes,
    pub outcome: u32,
    pub output: [u8; 32],
}
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Receipt {
    pub previous: Manifest,
    pub next: Manifest,
    pub steps: Vec<ReplayStep>,
    pub delta: [u8; 32],
}
#[derive(Clone, PartialEq, Message)]
struct ReceiptRecord {
    #[prost(uint32, tag = "1")]
    version: u32,
    #[prost(bytes = "vec", tag = "2")]
    previous: Vec<u8>,
    #[prost(bytes = "vec", tag = "3")]
    next: Vec<u8>,
    #[prost(message, repeated, tag = "4")]
    steps: Vec<StepRecord>,
    #[prost(bytes = "vec", tag = "5")]
    delta: Vec<u8>,
}
#[derive(Clone, PartialEq, Message)]
struct StepRecord {
    #[prost(uint32, tag = "1")]
    method: u32,
    #[prost(bytes = "bytes", tag = "2")]
    input: Bytes,
    #[prost(uint32, tag = "3")]
    outcome: u32,
    #[prost(bytes = "vec", tag = "4")]
    output: Vec<u8>,
}
pub fn response_digest(outcome: u32, response: &[u8]) -> [u8; 32] {
    let mut hash = Sha256::new();
    hash.update(b"shieldd.native-response.v1\0");
    hash.update(outcome.to_be_bytes());
    hash.update(response);
    hash.finalize().into()
}
/// Failed native calls remain in the replay transcript and consume capacity.
pub struct Recorder {
    steps: Vec<ReplayStep>,
    calls: usize,
    charged: usize,
    pending: Option<usize>,
    future_calls: usize,
}
const HEADER_RESERVATION: usize = 16 * 1024;
impl Default for Recorder {
    fn default() -> Self {
        Self {
            steps: Vec::new(),
            calls: 0,
            charged: HEADER_RESERVATION,
            pending: None,
            future_calls: 0,
        }
    }
}
impl Recorder {
    fn ready(&self) -> Result<()> {
        ensure!(self.pending.is_none(), "unfinished native call");
        Ok(())
    }
    fn charge(&mut self, bytes: usize) -> Result<()> {
        let next = self
            .charged
            .checked_add(bytes)
            .context("receipt accounting overflow")?;
        if next > MAX_RECEIPT_BYTES {
            return Err(crate::ProtocolLimitExceeded("encoded receipt limit exceeded").into());
        }
        self.charged = next;
        Ok(())
    }
    pub fn reserve_call(&mut self, method: u32, input: &[u8]) -> Result<()> {
        self.ready()?;
        ensure!(
            matches!(method, 2 | 3 | 5 | 6 | 12 | 22),
            "invalid native replay method"
        );
        if method == 6 {
            ensure!(
                input.len() <= 4096 && self.calls < MAX_CALLS,
                "EndBlock reservation exceeded"
            );
        } else {
            if self.calls + self.future_calls >= MAX_CALLS - 1 {
                return Err(crate::ProtocolLimitExceeded("native call count exceeded").into());
            }
            self.charge(
                input
                    .len()
                    .checked_add(128)
                    .context("input size overflow")?,
            )?;
        }
        self.push(method, input);
        Ok(())
    }
    fn push(&mut self, method: u32, input: &[u8]) {
        self.calls += 1;
        self.pending = Some(self.steps.len());
        self.steps.push(ReplayStep {
            method,
            input: Bytes::copy_from_slice(input),
            outcome: 0,
            output: [0; 32],
        });
    }
    pub fn reserve_future_call(&mut self, capacity: usize) -> Result<()> {
        if self.calls + self.future_calls >= MAX_CALLS - 1 {
            return Err(crate::ProtocolLimitExceeded("deferred native call count exceeded").into());
        }
        self.charge(
            capacity
                .checked_add(128)
                .context("deferred size overflow")?,
        )?;
        self.future_calls += 1;
        Ok(())
    }
    pub fn reserve_deferred_call(
        &mut self,
        method: u32,
        input: &[u8],
        capacity: usize,
    ) -> Result<()> {
        self.ready()?;
        ensure!(
            method == 3 && self.future_calls > 0 && input.len() <= capacity,
            "invalid deferred call reservation"
        );
        self.future_calls -= 1;
        self.push(method, input);
        Ok(())
    }
    pub fn finish_call(&mut self, outcome: u32, response: &[u8]) -> Result<()> {
        let index = self
            .pending
            .take()
            .context("native response has no reserved call")?;
        self.steps[index].outcome = outcome;
        self.steps[index].output = response_digest(outcome, response);
        Ok(())
    }
    pub fn finish(self, previous: Manifest, next: Manifest, delta: [u8; 32]) -> Result<Receipt> {
        self.ready()?;
        let receipt = Receipt {
            previous,
            next,
            steps: self.steps,
            delta,
        };
        receipt.validate()?;
        Ok(receipt)
    }
}
impl Receipt {
    fn record(&self) -> Result<ReceiptRecord> {
        Ok(ReceiptRecord {
            version: 2,
            previous: self.previous.encode()?,
            next: self.next.encode()?,
            steps: self
                .steps
                .iter()
                .map(|s| StepRecord {
                    method: s.method,
                    input: s.input.clone(),
                    outcome: s.outcome,
                    output: s.output.to_vec(),
                })
                .collect(),
            delta: self.delta.to_vec(),
        })
    }
    pub fn encode(&self) -> Result<Vec<u8>> {
        self.validate()?;
        let record = self.record()?;
        ensure!(
            record.encoded_len() <= MAX_RECEIPT_BYTES,
            "encoded receipt exceeds protocol limit"
        );
        Ok(record.encode_to_vec())
    }
    pub fn decode(bytes: &[u8]) -> Result<Self> {
        ensure!(
            bytes.len() <= MAX_RECEIPT_BYTES,
            "receipt exceeds canonical size limit"
        );
        let record = ReceiptRecord::decode(bytes)?;
        ensure!(
            record.version == 2 && record.encode_to_vec() == bytes,
            "noncanonical or unsupported receipt"
        );
        let receipt = Self {
            previous: Manifest::decode(&record.previous)?,
            next: Manifest::decode(&record.next)?,
            delta: record
                .delta
                .try_into()
                .map_err(|_| anyhow::anyhow!("invalid delta digest"))?,
            steps: record
                .steps
                .into_iter()
                .map(|s| {
                    Ok(ReplayStep {
                        method: s.method,
                        input: s.input,
                        outcome: s.outcome,
                        output: s
                            .output
                            .try_into()
                            .map_err(|_| anyhow::anyhow!("invalid response digest"))?,
                    })
                })
                .collect::<Result<_>>()?,
        };
        receipt.validate()?;
        Ok(receipt)
    }
    pub fn digest(&self) -> Result<[u8; 32]> {
        Ok(Self::encoded_digest(&self.encode()?))
    }
    pub fn encoded_digest(bytes: &[u8]) -> [u8; 32] {
        let mut hash = Sha256::new();
        hash.update(b"shieldd.replay-receipt.v2\0");
        hash.update(bytes);
        hash.finalize().into()
    }
    pub fn compare_response(step: &ReplayStep, outcome: u32, bytes: &[u8]) -> Result<()> {
        ensure!(
            step.outcome == outcome && step.output == response_digest(outcome, bytes),
            "native replay response mismatch"
        );
        Ok(())
    }
    pub fn validate(&self) -> Result<()> {
        self.next.follows(&self.previous)?;
        ensure!(
            (2..=MAX_CALLS).contains(&self.steps.len()),
            "invalid receipt call count"
        );
        ensure!(
            self.steps
                .first()
                .is_some_and(|s| s.method == 2 && s.outcome == 0)
                && self
                    .steps
                    .last()
                    .is_some_and(|s| s.method == 6 && s.outcome == 0),
            "receipt is missing successful block lifecycle inputs"
        );
        for step in &self.steps[1..self.steps.len() - 1] {
            ensure!(
                matches!(step.method, 3 | 5 | 12 | 22) && step.outcome <= 9,
                "invalid receipt native method or status"
            );
        }
        ensure!(
            self.record()?.encoded_len() <= MAX_RECEIPT_BYTES,
            "receipt exceeds canonical size limit"
        );
        Ok(())
    }
}
#[cfg(test)]
mod tests {
    use super::*;
    fn manifests() -> (Manifest, Manifest) {
        let previous = Manifest {
            chain_id: "test".into(),
            protocol: [1; 32],
            height: 0,
            block_id: [0; 32],
            previous: [0; 32],
            participants: std::iter::once(crate::Participant {
                kind: crate::ParticipantKind::Application,
                generation: 0,
                root: [0; 32],
                count: 0,
            })
            .chain((0..16).map(|generation| crate::Participant {
                kind: crate::ParticipantKind::Permanent,
                generation,
                root: [0; 32],
                count: 0,
            }))
            .collect(),
        };
        let mut next = previous.clone();
        next.height = 1;
        next.block_id = [2; 32];
        next.previous = previous.digest().unwrap();
        (previous, next)
    }

    #[test]
    fn receipt_keeps_failed_calls_and_rejects_substitution() {
        let mut recorder = Recorder::default();
        for (method, outcome) in [(2, 0), (3, 1), (6, 0)] {
            recorder.reserve_call(method, b"input").unwrap();
            recorder.finish_call(outcome, b"response").unwrap();
        }
        let (previous, next) = manifests();
        let receipt = recorder.finish(previous, next, [3; 32]).unwrap();
        assert_eq!(
            Receipt::decode(&receipt.encode().unwrap()).unwrap(),
            receipt
        );
        assert!(Receipt::compare_response(&receipt.steps[1], 0, b"response").is_err());
        let mut corrupt = receipt.encode().unwrap();
        corrupt.extend_from_slice(&[48, 1]);
        assert!(Receipt::decode(&corrupt).is_err());
    }
    #[test]
    fn reserved_deposit_and_end_block_survive_call_limit() {
        let mut recorder = Recorder::default();
        recorder.calls = MAX_CALLS - 2;
        recorder.reserve_future_call(32).unwrap();
        assert!(recorder.reserve_call(3, b"ordinary").is_err());
        recorder.reserve_deferred_call(3, b"deposit", 32).unwrap();
        recorder.finish_call(0, b"").unwrap();
        recorder.charged = MAX_RECEIPT_BYTES;
        recorder.reserve_call(6, b"end").unwrap();
        recorder.finish_call(0, b"").unwrap();
        assert_eq!(recorder.calls, MAX_CALLS);
    }
    #[test]
    fn receipt_rejects_unfinished_calls_and_repeated_lifecycle() {
        let mut recorder = Recorder::default();
        recorder.reserve_call(2, b"begin").unwrap();
        let (previous, next) = manifests();
        assert!(recorder.finish(previous, next, [0; 32]).is_err());
        let mut recorder = Recorder::default();
        for method in [2, 2, 6] {
            recorder.reserve_call(method, b"").unwrap();
            recorder.finish_call(0, b"").unwrap();
        }
        let (previous, next) = manifests();
        assert!(recorder.finish(previous, next, [0; 32]).is_err());
    }
}
