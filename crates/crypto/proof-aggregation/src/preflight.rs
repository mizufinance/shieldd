use ark_groth16::PreparedVerifyingKey;
use ark_ip_proofs::{
    app_verifier::{app_verify_shipping_preflight_core, AppVerifyShippingPreflight},
    challenge::ChallengeContext,
};
use decaf377::{Bls12_377, Fq};

use crate::{
    aggregate_proof_wrapper::{decode_wrapped_aggregate_proof, MAX_AGGREGATE_PROOF_BYTES},
    app_verifier::{
        app_verify_family_code, app_verify_protocol_version_core,
        app_verify_shipping_into_parts_core, app_verify_shipping_rows_from_parts,
        app_verify_shipping_wrapper_projection_from_parts, AppVerifyShippingCall,
        AppVerifyShippingInput,
    },
    backend::AggregateVerifyError,
    srs::{srs_id, DevSrs},
    statement::{
        aggregate_verification_key_bytes, aggregate_verification_key_digest_from_bytes,
        AggregateStatement,
    },
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

#[derive(Clone)]
pub struct VerifiedAggregateBackendCall<'a> {
    family_id: ProofFamilyId,
    pvk: &'a PreparedVerifyingKey<Bls12_377>,
    srs: &'a DevSrs,
    authenticated_srs_id: [u8; 32],
    serialized_vk: Vec<u8>,
    challenge_context: VerifiedChallengeContext<'a>,
    inner_proof_bytes: VerifiedInnerProofBytes<'a>,
    padded_public_inputs: &'a [Vec<Fq>],
}

/// Backend call paired with the exact byte-level shipping input authenticated
/// by the same successful preflight.
#[doc(hidden)]
pub(crate) struct VerifiedShippingAggregateBackendCall<'a> {
    projection: AppVerifyShippingPreflight<VerifiedAggregateBackendCall<'a>, &'a [Vec<Fq>]>,
}

impl<'a> VerifiedShippingAggregateBackendCall<'a> {
    pub(crate) fn into_parts(self) -> (VerifiedAggregateBackendCall<'a>, AppVerifyShippingInput) {
        app_verify_shipping_into_parts_core(
            self.projection.backend_call,
            self.projection.shipping_input,
        )
    }
}

impl<'a> VerifiedAggregateBackendCall<'a> {
    pub fn family_id(&self) -> ProofFamilyId {
        self.family_id
    }

    pub fn pvk(&self) -> &'a PreparedVerifyingKey<Bls12_377> {
        self.pvk
    }

    pub fn srs(&self) -> &'a DevSrs {
        self.srs
    }

    pub fn challenge_context(&self) -> &'a ChallengeContext {
        self.challenge_context.as_ref()
    }

    pub fn inner_proof_bytes(&self) -> &'a [u8] {
        self.inner_proof_bytes.as_bytes()
    }

    pub fn padded_public_inputs(&self) -> &'a [Vec<Fq>] {
        self.padded_public_inputs
    }

    fn new(
        _checks: VerifiedPreflightChecks,
        family_id: ProofFamilyId,
        pvk: &'a PreparedVerifyingKey<Bls12_377>,
        srs: &'a DevSrs,
        authenticated_srs_id: [u8; 32],
        serialized_vk: Vec<u8>,
        challenge_context: &'a ChallengeContext,
        inner_proof_bytes: &'a [u8],
        padded_public_inputs: &'a [Vec<Fq>],
    ) -> Self {
        Self {
            family_id,
            pvk,
            srs,
            authenticated_srs_id,
            serialized_vk,
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

    let authenticated_srs_id = srs_id(input.srs);
    if statement.srs_id() != authenticated_srs_id {
        return Err(AggregateVerifyError::StatementDigestMismatch);
    }

    let inner_proof_bytes = decode_wrapped_aggregate_proof(
        input.aggregate_proof_bytes,
        statement.statement_digest(),
        Some(MAX_AGGREGATE_PROOF_BYTES),
    )?;

    let serialized_vk = aggregate_verification_key_bytes(input.pvk)?;
    let expected_vk_digest = aggregate_verification_key_digest_from_bytes(&serialized_vk)?;
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
        authenticated_srs_id,
        serialized_vk,
        statement.challenge_context(),
        inner_proof_bytes,
        padded_public_inputs,
    ))
}

/// Shipping preflight plus a pure projection of every authenticated byte and
/// scalar field consumed by the formal v1 input.
#[doc(hidden)]
pub(crate) fn preflight_shipping_aggregate_verify<'a>(
    application_call: AppVerifyShippingCall,
    input: AggregatePreflightInput<'a>,
) -> Result<VerifiedShippingAggregateBackendCall<'a>, AggregateVerifyError> {
    let statement = input.statement;
    let wrapped_proof_bytes = input.aggregate_proof_bytes;
    let backend_call = preflight_aggregate_verify(input)?;
    let statement_rows = statement.shipping_rows();
    let rows = app_verify_shipping_rows_from_parts(
        statement_rows.real_count,
        statement_rows.padded_count,
        statement_rows.public_input_arity,
        backend_call.padded_public_inputs(),
        statement_rows.serialized.to_nested_bytes(),
    );
    let authenticated_srs_id = backend_call.authenticated_srs_id;
    let serialized_vk = backend_call.serialized_vk.clone();
    let wrapper = app_verify_shipping_wrapper_projection_from_parts(
        statement.statement_digest().to_vec(),
        wrapped_proof_bytes.to_vec(),
        backend_call.inner_proof_bytes().to_vec(),
    );
    let projection = app_verify_shipping_preflight_core(
        backend_call,
        rows,
        application_call,
        app_verify_protocol_version_core(),
        app_verify_family_code(statement.family_id()),
        authenticated_srs_id.to_vec(),
        serialized_vk,
        statement.vk_digest().to_vec(),
        statement.canonical_bytes().to_vec(),
        wrapper,
        statement.challenge_context().as_bytes().to_vec(),
    )
    .map_err(|_| AggregateVerifyError::StatementDigestMismatch)?;
    Ok(VerifiedShippingAggregateBackendCall { projection })
}

fn require_preflight_checks(
    checks: PreflightCheapChecks,
) -> Result<VerifiedPreflightChecks, AggregateVerifyError> {
    match preflight_work_gate(checks) {
        PreflightWorkGate::BackendWorkAllowed => Ok(VerifiedPreflightChecks),
        PreflightWorkGate::Reject => Err(AggregateVerifyError::StatementDigestMismatch),
    }
}
