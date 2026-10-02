use crate::{Manifest, MAX_CALLS, MAX_DEPTH, MAX_RECEIPT_BYTES, MAX_SCOPES};
use anyhow::{ensure, Context, Result};
use prost::{bytes::Bytes, Message};
use sha2::{Digest, Sha256};
use std::collections::{BTreeMap, BTreeSet};

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum ReplayAction {
    Open = 1,
    Prepare = 2,
    Close = 3,
    Snapshot = 4,
    Revert = 5,
    Call = 6,
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct ReplayStep {
    pub action: ReplayAction,
    pub scope: u32,
    pub parent: u32,
    pub point: u32,
    pub adopt: bool,
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
    action: u32,
    #[prost(uint32, tag = "2")]
    scope: u32,
    #[prost(uint32, tag = "3")]
    parent: u32,
    #[prost(uint32, tag = "4")]
    point: u32,
    #[prost(bool, tag = "5")]
    adopt: bool,
    #[prost(uint32, tag = "6")]
    method: u32,
    #[prost(bytes = "bytes", tag = "7")]
    input: Bytes,
    #[prost(uint32, tag = "8")]
    outcome: u32,
    #[prost(bytes = "vec", tag = "9")]
    output: Vec<u8>,
}

impl From<&ReplayStep> for StepRecord {
    fn from(s: &ReplayStep) -> Self {
        Self {
            action: s.action as u32,
            scope: s.scope,
            parent: s.parent,
            point: s.point,
            adopt: s.adopt,
            method: s.method,
            input: s.input.clone(),
            outcome: s.outcome,
            output: if s.action == ReplayAction::Call {
                s.output.to_vec()
            } else {
                Vec::new()
            },
        }
    }
}

fn response_digest(outcome: u32, response: &[u8]) -> [u8; 32] {
    let mut hash = Sha256::new();
    hash.update(b"shieldd.native-response.v1\0");
    hash.update(outcome.to_be_bytes());
    hash.update(response);
    hash.finalize().into()
}

struct Scope {
    capability: u64,
    ordinal: u32,
    prepared: bool,
    points: BTreeSet<u32>,
}

/// Canonical ordinals are independent of process capabilities and RPC traffic.
/// Failed/aborted work stays in the transcript and consumes the same budget.
pub struct Recorder {
    steps: Vec<ReplayStep>,
    stack: Vec<Scope>,
    opened: usize,
    calls: usize,
    charged: usize,
    closing: usize,
    pending: Option<usize>,
    failed: bool,
}

// Reserve protobuf framing, both manifests, canonical effects, and the final
// EndBlock call before domain side effects consume any of the receipt budget.
const HEADER_RESERVATION: usize = 16 * 1024;
const CLOSING_RESERVATION: usize = 64;

impl Default for Recorder {
    fn default() -> Self {
        Self {
            steps: Vec::new(),
            stack: Vec::new(),
            opened: 0,
            calls: 0,
            charged: HEADER_RESERVATION,
            closing: 0,
            pending: None,
            failed: false,
        }
    }
}

impl Recorder {
    fn ready(&self) -> Result<()> {
        ensure!(
            !self.failed && self.pending.is_none(),
            "recorder is failed or has an unfinished call"
        );
        Ok(())
    }
    fn charge(&mut self, bytes: usize) -> Result<()> {
        self.ready()?;
        let next = self
            .charged
            .checked_add(bytes)
            .context("receipt accounting overflow")?;
        if !next
            .checked_add(self.closing)
            .is_some_and(|size| size <= MAX_RECEIPT_BYTES)
        {
            return Err(crate::ProtocolLimitExceeded("encoded receipt limit exceeded").into());
        }
        self.charged = next;
        Ok(())
    }
    fn active(&self, capability: u64) -> Result<u32> {
        let scope = self
            .stack
            .last()
            .context("native call has no recorded owner")?;
        ensure!(
            scope.capability == capability && !scope.prepared,
            "recorded capability is not writable"
        );
        Ok(scope.ordinal)
    }
    fn push(&mut self, step: ReplayStep) {
        self.steps.push(step);
    }
    fn step(action: ReplayAction, scope: u32) -> ReplayStep {
        ReplayStep {
            action,
            scope,
            parent: 0,
            point: 0,
            adopt: false,
            method: 0,
            input: Bytes::new(),
            outcome: 0,
            output: [0; 32],
        }
    }
    pub fn open(&mut self, capability: u64, parent: u64) -> Result<()> {
        self.ready()?;
        ensure!(
            capability != 0 && self.stack.iter().all(|s| s.capability != capability),
            "invalid or reused recorded capability"
        );
        let parent = if self.stack.is_empty() {
            ensure!(parent == 0, "recorded root has a parent");
            0
        } else {
            self.active(parent)?
        };
        if self.opened >= MAX_SCOPES || self.stack.len() >= MAX_DEPTH {
            return Err(crate::ProtocolLimitExceeded("recorder scope limit exceeded").into());
        }
        self.charge(64 + CLOSING_RESERVATION)?;
        self.closing += CLOSING_RESERVATION;
        self.opened += 1;
        let ordinal = self.opened as u32;
        let mut step = Self::step(ReplayAction::Open, ordinal);
        step.parent = parent;
        self.push(step);
        self.stack.push(Scope {
            capability,
            ordinal,
            prepared: false,
            points: BTreeSet::new(),
        });
        Ok(())
    }
    pub fn prepare(&mut self, capability: u64) -> Result<()> {
        self.ready()?;
        let ordinal = self.active(capability)?;
        // Both prepare and close were reserved at scope creation.
        self.push(Self::step(ReplayAction::Prepare, ordinal));
        self.stack.last_mut().expect("active owner").prepared = true;
        Ok(())
    }
    pub fn close(&mut self, capability: u64, adopt: bool) -> Result<()> {
        self.ready()?;
        let owner = self.stack.last().context("no recorded owner to close")?;
        ensure!(
            owner.capability == capability && (!adopt || owner.prepared),
            "recorded scope cannot be closed or adopted"
        );
        let mut step = Self::step(ReplayAction::Close, owner.ordinal);
        step.adopt = adopt;
        self.push(step);
        self.stack.pop();
        self.closing -= CLOSING_RESERVATION;
        Ok(())
    }
    pub fn snapshot(&mut self, capability: u64, point: u32) -> Result<()> {
        let ordinal = self.active(capability)?;
        ensure!(
            self.opened < MAX_SCOPES,
            "recorder savepoint limit exceeded"
        );
        ensure!(
            !self
                .stack
                .last()
                .expect("active owner")
                .points
                .contains(&point),
            "reused recorded savepoint"
        );
        self.charge(64)?;
        self.opened += 1;
        self.stack
            .last_mut()
            .expect("active owner")
            .points
            .insert(point);
        let mut step = Self::step(ReplayAction::Snapshot, ordinal);
        step.point = point;
        self.push(step);
        Ok(())
    }
    pub fn revert(&mut self, capability: u64, point: u32) -> Result<()> {
        let ordinal = self.active(capability)?;
        ensure!(
            self.stack
                .last()
                .expect("active owner")
                .points
                .contains(&point),
            "unknown or invalidated recorded savepoint"
        );
        self.charge(64)?;
        self.stack
            .last_mut()
            .expect("active owner")
            .points
            .retain(|p| *p <= point);
        let mut step = Self::step(ReplayAction::Revert, ordinal);
        step.point = point;
        self.push(step);
        Ok(())
    }
    /// Reserve the complete input and response digest before calling native code.
    pub fn reserve_call(&mut self, capability: u64, method: u32, input: &[u8]) -> Result<()> {
        self.reserve_input(capability, method, input.len(), || {
            Bytes::copy_from_slice(input)
        })
    }
    fn reserve_input(
        &mut self,
        capability: u64,
        method: u32,
        input_len: usize,
        input: impl FnOnce() -> Bytes,
    ) -> Result<()> {
        let scope = if capability == 0 {
            ensure!(
                self.stack.is_empty() && matches!(method, 2 | 6),
                "unowned native mutation"
            );
            0
        } else {
            self.active(capability)?
        };
        if method == 6 {
            ensure!(
                input_len <= 4096,
                "EndBlock input exceeds its reserved framing"
            );
            ensure!(
                self.calls < MAX_CALLS,
                "reserved EndBlock call is unavailable"
            );
            self.ready()?;
        } else {
            if self.calls >= MAX_CALLS - 1 {
                return Err(crate::ProtocolLimitExceeded("native call count exceeded").into());
            }
            self.charge(
                input_len
                    .checked_add(128)
                    .context("native input accounting overflow")?,
            )?;
        }
        self.calls += 1;
        let mut step = Self::step(ReplayAction::Call, scope);
        step.method = method;
        step.input = input();
        self.pending = Some(self.steps.len());
        self.push(step);
        Ok(())
    }
    pub fn finish_call(&mut self, outcome: u32, response: &[u8]) -> Result<()> {
        let index = self
            .pending
            .take()
            .context("native response has no reserved call")?;
        let step = &mut self.steps[index];
        step.outcome = outcome;
        step.output = response_digest(outcome, response);
        Ok(())
    }
    pub fn fail(&mut self) {
        self.failed = true;
    }
    pub fn finish(self, previous: Manifest, next: Manifest, delta: [u8; 32]) -> Result<Receipt> {
        self.ready()?;
        ensure!(
            self.stack.is_empty() && self.closing == 0,
            "receipt has unclosed scopes"
        );
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
            version: 1,
            previous: self.previous.encode()?,
            next: self.next.encode()?,
            steps: self.steps.iter().map(StepRecord::from).collect(),
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
            record.version == 1 && record.encode_to_vec() == bytes,
            "noncanonical or unsupported receipt"
        );
        let receipt = Self {
            previous: Manifest::decode(&record.previous)?,
            next: Manifest::decode(&record.next)?,
            delta: record
                .delta
                .try_into()
                .map_err(|_| anyhow::anyhow!("invalid canonical delta digest"))?,
            steps: record
                .steps
                .into_iter()
                .map(|s| {
                    let action = match s.action {
                        1 => ReplayAction::Open,
                        2 => ReplayAction::Prepare,
                        3 => ReplayAction::Close,
                        4 => ReplayAction::Snapshot,
                        5 => ReplayAction::Revert,
                        6 => ReplayAction::Call,
                        _ => anyhow::bail!("unknown replay action"),
                    };
                    let output = if action == ReplayAction::Call {
                        s.output
                            .try_into()
                            .map_err(|_| anyhow::anyhow!("invalid native response digest"))?
                    } else {
                        ensure!(
                            s.output.is_empty(),
                            "scope action carries a native response"
                        );
                        [0; 32]
                    };
                    Ok(ReplayStep {
                        action,
                        scope: s.scope,
                        parent: s.parent,
                        point: s.point,
                        adopt: s.adopt,
                        method: s.method,
                        input: s.input,
                        outcome: s.outcome,
                        output,
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
        hash.update(b"shieldd.replay-receipt.v1\0");
        hash.update(bytes);
        hash.finalize().into()
    }
    pub fn compare_response(step: &ReplayStep, outcome: u32, bytes: &[u8]) -> Result<()> {
        ensure!(
            step.action == ReplayAction::Call
                && step.outcome == outcome
                && step.output == response_digest(outcome, bytes),
            "native replay response mismatch"
        );
        Ok(())
    }
    pub fn validate(&self) -> Result<()> {
        self.next.follows(&self.previous)?;
        ensure!(
            self.steps
                .first()
                .is_some_and(|s| s.action == ReplayAction::Call && s.scope == 0 && s.method == 2)
                && self
                    .steps
                    .last()
                    .is_some_and(|s| s.action == ReplayAction::Call
                        && s.scope == 0
                        && s.method == 6),
            "receipt is missing its block lifecycle inputs"
        );
        ensure!(
            self.steps
                .iter()
                .filter(|s| s.action == ReplayAction::Call && s.method == 2)
                .count()
                == 1
                && self
                    .steps
                    .iter()
                    .filter(|s| s.action == ReplayAction::Call && s.method == 6)
                    .count()
                    == 1,
            "repeated receipt lifecycle input"
        );
        let mut recorder = Recorder::default();
        let mut owners = BTreeMap::new();
        for step in &self.steps {
            match step.action {
                ReplayAction::Open => {
                    ensure!(
                        step.point == 0
                            && !step.adopt
                            && step.method == 0
                            && step.input.is_empty()
                            && step.outcome == 0
                            && step.output == [0; 32],
                        "open carries unrelated fields"
                    );
                    ensure!(
                        !owners.contains_key(&step.scope),
                        "reused canonical scope ordinal"
                    );
                    recorder.open(step.scope as u64, step.parent as u64)?;
                    ensure!(
                        recorder.stack.last().expect("opened owner").ordinal == step.scope,
                        "noncanonical scope ordinal"
                    );
                    owners.insert(step.scope, ());
                }
                ReplayAction::Call => {
                    ensure!(
                        step.parent == 0
                            && step.point == 0
                            && !step.adopt
                            && matches!(step.method, 2 | 3 | 5 | 6 | 12),
                        "invalid native replay method or call fields"
                    );
                    recorder.reserve_input(
                        step.scope as u64,
                        step.method,
                        step.input.len(),
                        || step.input.clone(),
                    )?;
                    recorder.pending = None;
                }
                action => {
                    ensure!(
                        step.parent == 0
                            && step.method == 0
                            && step.input.is_empty()
                            && step.outcome == 0
                            && step.output == [0; 32],
                        "scope action carries call fields"
                    );
                    match action {
                        ReplayAction::Prepare => {
                            ensure!(
                                step.point == 0 && !step.adopt,
                                "prepare carries unrelated fields"
                            );
                            recorder.prepare(step.scope as u64)?;
                        }
                        ReplayAction::Close => {
                            ensure!(step.point == 0, "close carries a savepoint");
                            recorder.close(step.scope as u64, step.adopt)?;
                        }
                        ReplayAction::Snapshot => {
                            ensure!(!step.adopt, "snapshot carries adoption");
                            recorder.snapshot(step.scope as u64, step.point)?;
                        }
                        ReplayAction::Revert => {
                            ensure!(!step.adopt, "revert carries adoption");
                            recorder.revert(step.scope as u64, step.point)?;
                        }
                        _ => unreachable!(),
                    }
                }
            }
        }
        ensure!(
            recorder.stack.is_empty(),
            "receipt ends with an owned scope"
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
    fn receipt_keeps_failed_calls_and_abort_without_process_identifiers() {
        let record = |capability| {
            let mut recorder = Recorder::default();
            recorder.reserve_call(0, 2, b"begin").unwrap();
            recorder.finish_call(0, b"").unwrap();
            recorder.open(capability, 0).unwrap();
            recorder.snapshot(capability, 0).unwrap();
            recorder.reserve_call(capability, 3, b"same input").unwrap();
            recorder.finish_call(1, b"").unwrap();
            recorder.revert(capability, 0).unwrap();
            recorder.close(capability, false).unwrap();
            recorder.reserve_call(0, 6, b"end").unwrap();
            recorder.finish_call(0, b"").unwrap();
            let (previous, next) = manifests();
            recorder.finish(previous, next, [3; 32]).unwrap()
        };
        let receipt = record(1);
        assert_eq!(receipt.encode().unwrap(), record(100_000).encode().unwrap());
        assert_eq!(
            Receipt::decode(&receipt.encode().unwrap()).unwrap(),
            receipt
        );
        assert!(Receipt::compare_response(&receipt.steps[3], 0, b"").is_err());
        let mut corrupt = receipt.encode().unwrap();
        corrupt.extend_from_slice(&[48, 1]);
        assert!(Receipt::decode(&corrupt).is_err());
    }
    #[test]
    fn receipt_reserves_closing_before_effects_and_rejects_unfinished_calls() {
        let mut recorder = Recorder::default();
        recorder.reserve_call(0, 2, b"begin").unwrap();
        recorder.finish_call(0, b"").unwrap();
        recorder.open(1, 0).unwrap();
        recorder.charged = MAX_RECEIPT_BYTES - recorder.closing;
        assert!(recorder.reserve_call(1, 3, b"large input").is_err());
        recorder.prepare(1).unwrap();
        recorder.close(1, true).unwrap();
        recorder.reserve_call(0, 6, b"end").unwrap();
        recorder.finish_call(0, b"").unwrap();
        let (previous, next) = manifests();
        recorder.finish(previous, next, [4; 32]).unwrap();
        let mut recorder = Recorder::default();
        recorder.open(1, 0).unwrap();
        recorder.reserve_call(1, 3, b"").unwrap();
        assert!(recorder.close(1, false).is_err());
        let (previous, next) = manifests();
        assert!(recorder.finish(previous, next, [4; 32]).is_err());
    }
}
