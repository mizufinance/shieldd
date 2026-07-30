//! Application projection into the extracted aggregate-verifier state machine.

use crate::{bundle::family_proto_fields, ProofFamilyId};

#[doc(hidden)]
pub use ark_ip_proofs::app_verifier::{
    app_verify_family_count_core, app_verify_normal_acceptance_core, app_verify_plan_identity_core,
    app_verify_plan_ids_core, app_verify_plan_padding_core, app_verify_preflight_core,
    app_verify_prepare_public_input_rows_core, app_verify_profiled_acceptance_core,
    app_verify_protocol_version_core, app_verify_reduce_core, app_verify_shipping_call_from_parts,
    app_verify_shipping_into_parts_core, app_verify_shipping_projection_core,
    app_verify_shipping_result_from_parts, app_verify_shipping_rows_from_parts,
    app_verify_shipping_wrapper_projection_from_parts, app_verify_statement_row_bytes_from_parts,
    AppVerifyCallId, AppVerifyCallResult, AppVerifyExpectedCall, AppVerifyFamilyCode,
    AppVerifyPlanError, AppVerifyPreflightError, AppVerifyReductionError, AppVerifySegmentRange,
    AppVerifyShippingCall, AppVerifyShippingInput, AppVerifyShippingResult,
};

#[doc(hidden)]
pub fn app_verify_family_code(family_id: ProofFamilyId) -> AppVerifyFamilyCode {
    let fields = family_proto_fields(family_id);
    AppVerifyFamilyCode {
        proof_family_id: fields.family_id,
        note_reshape_family_id: fields.note_reshape_family_id,
        shielded_ics20_withdrawal_family_id: fields.shielded_ics20_withdrawal_family_id,
    }
}
