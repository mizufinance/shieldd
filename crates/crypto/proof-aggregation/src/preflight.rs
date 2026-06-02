use ark_groth16::PreparedVerifyingKey;
use ark_ip_proofs::challenge::ChallengeContext;
use decaf377::{Bls12_377, Fq};

use crate::{
    aggregate_proof_wrapper::{decode_wrapped_aggregate_proof, MAX_AGGREGATE_PROOF_BYTES},
    backend::AggregateVerifyError,
    srs::{srs_id, DevSrs},
    statement::{aggregate_verification_key_digest, AggregateStatement},
    ProofFamilyId,
};

pub struct AggregatePreflightInput<'a> {
    pub statement: &'a AggregateStatement,
    pub pvk: &'a PreparedVerifyingKey<Bls12_377>,
    pub aggregate_proof_bytes: &'a [u8],
    pub srs: &'a DevSrs,
}

#[derive(Clone, Copy, Debug, Eq, PartialEq)]
pub struct PreflightCheapChecks {
    pub supported_count: bool,
    pub non_empty: bool,
    pub srs_matches: bool,
    pub wrapper_matches_statement: bool,
    pub vk_matches_statement: bool,
}

#[derive(Clone, Copy, Debug, Eq, PartialEq)]
pub enum PreflightWorkGate {
    Reject,
    BackendWorkAllowed,
}

pub fn preflight_work_gate(checks: PreflightCheapChecks) -> PreflightWorkGate {
    if checks.supported_count
        && checks.non_empty
        && checks.srs_matches
        && checks.wrapper_matches_statement
        && checks.vk_matches_statement
    {
        PreflightWorkGate::BackendWorkAllowed
    } else {
        PreflightWorkGate::Reject
    }
}

#[derive(Clone, Copy)]
struct VerifiedPreflightChecks;

#[derive(Clone, Copy)]
pub struct VerifiedInnerProofBytes<'a> {
    bytes: &'a [u8],
}

impl<'a> VerifiedInnerProofBytes<'a> {
    pub fn as_bytes(self) -> &'a [u8] {
        self.bytes
    }
}

#[derive(Clone, Copy)]
pub struct VerifiedChallengeContext<'a> {
    context: &'a ChallengeContext,
}

impl<'a> VerifiedChallengeContext<'a> {
    pub fn as_ref(self) -> &'a ChallengeContext {
        self.context
    }
}

#[derive(Clone, Copy)]
pub struct VerifiedAggregateBackendCall<'a> {
    family_id: ProofFamilyId,
    pvk: &'a PreparedVerifyingKey<Bls12_377>,
    srs: &'a DevSrs,
    challenge_context: VerifiedChallengeContext<'a>,
    inner_proof_bytes: VerifiedInnerProofBytes<'a>,
    padded_public_inputs: &'a [Vec<Fq>],
}

impl<'a> VerifiedAggregateBackendCall<'a> {
    pub fn family_id(self) -> ProofFamilyId {
        self.family_id
    }

    pub fn pvk(self) -> &'a PreparedVerifyingKey<Bls12_377> {
        self.pvk
    }

    pub fn srs(self) -> &'a DevSrs {
        self.srs
    }

    pub fn challenge_context(self) -> &'a ChallengeContext {
        self.challenge_context.as_ref()
    }

    pub fn inner_proof_bytes(self) -> &'a [u8] {
        self.inner_proof_bytes.as_bytes()
    }

    pub fn padded_public_inputs(self) -> &'a [Vec<Fq>] {
        self.padded_public_inputs
    }

    fn new(
        _checks: VerifiedPreflightChecks,
        family_id: ProofFamilyId,
        pvk: &'a PreparedVerifyingKey<Bls12_377>,
        srs: &'a DevSrs,
        challenge_context: &'a ChallengeContext,
        inner_proof_bytes: &'a [u8],
        padded_public_inputs: &'a [Vec<Fq>],
    ) -> Self {
        Self {
            family_id,
            pvk,
            srs,
            challenge_context: VerifiedChallengeContext {
                context: challenge_context,
            },
            inner_proof_bytes: VerifiedInnerProofBytes {
                bytes: inner_proof_bytes,
            },
            padded_public_inputs,
        }
    }
}

pub fn preflight_aggregate_verify<'a>(
    input: AggregatePreflightInput<'a>,
) -> Result<VerifiedAggregateBackendCall<'a>, AggregateVerifyError> {
    let statement = input.statement;
    let family_id = statement.family_id();
    let padded_public_inputs = statement.padded_public_inputs();

    let supported_count = input
        .srs
        .ensure_supported_count(padded_public_inputs.len())
        .map(|_| true)
        .map_err(|err| AggregateVerifyError::BadPadding(err.to_string()))?;
    if padded_public_inputs.is_empty() {
        return Err(AggregateVerifyError::BadCount(format!(
            "cannot verify an empty aggregate for family {family_id:?}"
        )));
    }

    if statement.srs_id() != srs_id(input.srs) {
        return Err(AggregateVerifyError::StatementDigestMismatch);
    }

    let inner_proof_bytes = decode_wrapped_aggregate_proof(
        input.aggregate_proof_bytes,
        statement.statement_digest(),
        Some(MAX_AGGREGATE_PROOF_BYTES),
    )?;

    let expected_vk_digest = aggregate_verification_key_digest(input.pvk)?;
    if statement.vk_digest() != expected_vk_digest {
        return Err(AggregateVerifyError::StatementDigestMismatch);
    }

    let checks = require_preflight_checks(PreflightCheapChecks {
        supported_count,
        non_empty: true,
        srs_matches: true,
        wrapper_matches_statement: true,
        vk_matches_statement: true,
    })?;

    Ok(VerifiedAggregateBackendCall::new(
        checks,
        family_id,
        input.pvk,
        input.srs,
        statement.challenge_context(),
        inner_proof_bytes,
        padded_public_inputs,
    ))
}

fn require_preflight_checks(
    checks: PreflightCheapChecks,
) -> Result<VerifiedPreflightChecks, AggregateVerifyError> {
    match preflight_work_gate(checks) {
        PreflightWorkGate::BackendWorkAllowed => Ok(VerifiedPreflightChecks),
        PreflightWorkGate::Reject => Err(AggregateVerifyError::StatementDigestMismatch),
    }
}
