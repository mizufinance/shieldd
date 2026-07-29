//! Extraction-friendly control state for the application aggregate verifier.
//!
//! Rich proof and statement values stay at the application edge. This module
//! owns every acceptance-relevant scalar comparison and tagged reduction.

#[doc(hidden)]
#[derive(Clone, Copy, Debug, Eq, PartialEq)]
pub struct AppVerifyFamilyCode {
    pub proof_family_id: u32,
    pub note_reshape_family_id: u32,
    pub shielded_ics20_withdrawal_family_id: u32,
}

#[doc(hidden)]
#[derive(Clone, Copy, Debug, Eq, PartialEq)]
pub struct AppVerifyExpectedCall {
    pub segment_index: usize,
    pub family_index: usize,
    pub family: AppVerifyFamilyCode,
}

#[doc(hidden)]
#[derive(Clone, Copy, Debug, Eq, PartialEq)]
pub struct AppVerifyCallId {
    pub order_index: usize,
    pub segment_index: usize,
    pub family_index: usize,
    pub family: AppVerifyFamilyCode,
}

#[doc(hidden)]
#[derive(Clone, Copy, Debug, Eq, PartialEq)]
pub struct AppVerifySegmentRange {
    pub segment_index: usize,
    pub start: usize,
    pub end: usize,
}

#[doc(hidden)]
#[derive(Clone, Copy, Debug, Eq, PartialEq)]
pub struct AppVerifyCallResult {
    pub id: AppVerifyCallId,
    pub accepted: bool,
}

/// Exact scalar projection of one application-planned shipping verifier call.
///
/// The application owns the richer statement, proof, and SRS values. This
/// record pins only the family and count fields consumed by the extracted
/// identity and padding checks.
#[doc(hidden)]
#[derive(Clone, Copy, Debug, Eq, PartialEq)]
pub struct AppVerifyShippingCall {
    pub id: AppVerifyCallId,
    pub bundle_family: AppVerifyFamilyCode,
    pub expected_real_count: usize,
    pub bundle_real_count: u32,
    pub expected_padded_count: usize,
    pub bundle_padded_count: u32,
}

/// Exact wrapper bytes retained after successful shipping preflight.
#[doc(hidden)]
#[derive(Clone, Debug, Eq, PartialEq)]
pub struct AppVerifyShippingWrapperProjection {
    pub statement_digest: Vec<u8>,
    pub wrapped_proof_bytes: Vec<u8>,
    pub inner_proof_bytes: Vec<u8>,
}

/// Concrete byte-level input authenticated before one shipping verifier call.
///
/// The strict aggregate-proof decoder consumes `inner_proof_bytes` after this
/// record is constructed. Curve objects and decoder semantics remain explicit
/// external refinement boundaries.
#[doc(hidden)]
#[derive(Clone, Debug, Eq, PartialEq)]
pub struct AppVerifyShippingInput {
    pub call: AppVerifyShippingCall,
    pub protocol_version: u32,
    pub family: AppVerifyFamilyCode,
    pub srs_id: Vec<u8>,
    pub serialized_vk: Vec<u8>,
    pub vk_digest: Vec<u8>,
    pub real_count: u32,
    pub padded_count: u32,
    pub public_input_arity: u32,
    pub padded_public_inputs: Vec<Vec<Vec<u8>>>,
    pub canonical_statement_bytes: Vec<u8>,
    pub statement_digest: Vec<u8>,
    pub wrapped_proof_bytes: Vec<u8>,
    pub inner_proof_bytes: Vec<u8>,
    pub challenge_context: Vec<u8>,
}

/// Accepted/rejected backend result paired with the exact authenticated input.
#[doc(hidden)]
#[derive(Clone, Debug, Eq, PartialEq)]
pub struct AppVerifyShippingResult {
    pub input: AppVerifyShippingInput,
    pub result: AppVerifyCallResult,
}

#[doc(hidden)]
#[derive(Clone, Copy, Debug, Eq, PartialEq)]
pub enum AppVerifyShippingInputError {
    CallIdentityMismatch,
    CallPaddingMismatch,
    StatementFamilyMismatch,
    StatementRealCountMismatch,
    StatementPaddedCountMismatch,
}

#[doc(hidden)]
#[derive(Clone, Copy, Debug, Eq, PartialEq)]
pub enum AppVerifyRowPaddingError {
    TargetSmallerThanInput,
    EmptyRowsForNonzeroTarget,
}

#[doc(hidden)]
#[derive(Clone, Copy, Debug, Eq, PartialEq)]
pub enum AppVerifyPreflightError {
    BadVersion,
    EmptyProofSet,
    BadSrsLength,
    SrsMismatch,
    SegmentCoverageOverflow,
    SegmentCoverageMismatch,
}

#[doc(hidden)]
#[derive(Clone, Copy, Debug, Eq, PartialEq)]
pub enum AppVerifyPlanError {
    FamilyCountMismatch,
    FamilyMismatch,
    RealCountOverflow,
    RealCountMismatch,
    PaddedCountOverflow,
    PaddedCountMismatch,
}

#[doc(hidden)]
#[derive(Clone, Copy, Debug, Eq, PartialEq)]
pub enum AppVerifyReductionError {
    OutcomeCountMismatch,
    OutcomeIdentityMismatch,
}

/// Pure constructor used by the production planner after preparing one call.
///
/// Validation remains in `app_verify_plan_identity_core` and
/// `app_verify_plan_padding_core`, preserving their failure ordering.
#[doc(hidden)]
pub fn app_verify_shipping_call_from_parts(
    id: AppVerifyCallId,
    bundle_family: AppVerifyFamilyCode,
    expected_real_count: usize,
    bundle_real_count: u32,
    expected_padded_count: usize,
    bundle_padded_count: u32,
) -> AppVerifyShippingCall {
    AppVerifyShippingCall {
        id,
        bundle_family,
        expected_real_count,
        bundle_real_count,
        expected_padded_count,
        bundle_padded_count,
    }
}

/// Pure retention projection for one successfully decoded proof wrapper.
#[doc(hidden)]
pub fn app_verify_shipping_wrapper_projection_from_parts(
    statement_digest: Vec<u8>,
    wrapped_proof_bytes: Vec<u8>,
    inner_proof_bytes: Vec<u8>,
) -> AppVerifyShippingWrapperProjection {
    AppVerifyShippingWrapperProjection {
        statement_digest,
        wrapped_proof_bytes,
        inner_proof_bytes,
    }
}

/// Validate the scalar statement projection against one planned call.
///
/// This is the production check that binds the routed statement family and
/// counts to the exact call accepted by the application reducer.
#[doc(hidden)]
pub fn app_verify_shipping_projection_core(
    call: AppVerifyShippingCall,
    family: AppVerifyFamilyCode,
    real_count: u32,
    padded_count: u32,
) -> Result<(), AppVerifyShippingInputError> {
    match app_verify_plan_identity_core(
        call.id,
        call.bundle_family,
        call.expected_real_count,
        call.bundle_real_count,
    ) {
        Ok(_) => {}
        Err(_) => return Err(AppVerifyShippingInputError::CallIdentityMismatch),
    }
    match app_verify_plan_padding_core(
        call.id,
        call.expected_padded_count,
        call.bundle_padded_count,
    ) {
        Ok(_) => {}
        Err(_) => return Err(AppVerifyShippingInputError::CallPaddingMismatch),
    }
    if !app_verify_family_code_matches(family, call.bundle_family) {
        return Err(AppVerifyShippingInputError::StatementFamilyMismatch);
    }
    if real_count != call.bundle_real_count {
        return Err(AppVerifyShippingInputError::StatementRealCountMismatch);
    }
    if padded_count != call.bundle_padded_count {
        return Err(AppVerifyShippingInputError::StatementPaddedCountMismatch);
    }
    Ok(())
}

/// Pure projection used after successful shipping preflight.
#[doc(hidden)]
#[allow(clippy::too_many_arguments)]
pub fn app_verify_shipping_input_from_parts(
    call: AppVerifyShippingCall,
    protocol_version: u32,
    family: AppVerifyFamilyCode,
    srs_id: Vec<u8>,
    serialized_vk: Vec<u8>,
    vk_digest: Vec<u8>,
    real_count: u32,
    padded_count: u32,
    public_input_arity: u32,
    padded_public_inputs: Vec<Vec<Vec<u8>>>,
    canonical_statement_bytes: Vec<u8>,
    wrapper: AppVerifyShippingWrapperProjection,
    challenge_context: Vec<u8>,
) -> Result<AppVerifyShippingInput, AppVerifyShippingInputError> {
    match app_verify_shipping_projection_core(call, family, real_count, padded_count) {
        Ok(()) => {}
        Err(error) => return Err(error),
    }
    Ok(AppVerifyShippingInput {
        call,
        protocol_version,
        family,
        srs_id,
        serialized_vk,
        vk_digest,
        real_count,
        padded_count,
        public_input_arity,
        padded_public_inputs,
        canonical_statement_bytes,
        statement_digest: wrapper.statement_digest,
        wrapped_proof_bytes: wrapper.wrapped_proof_bytes,
        inner_proof_bytes: wrapper.inner_proof_bytes,
        challenge_context,
    })
}

/// Pure result constructor used by the async caller before bundle reduction.
#[doc(hidden)]
pub fn app_verify_shipping_result_from_parts(
    input: AppVerifyShippingInput,
    accepted: bool,
) -> AppVerifyShippingResult {
    let id = input.call.id;
    AppVerifyShippingResult {
        input,
        result: AppVerifyCallResult { id, accepted },
    }
}

/// Repeat the final caller-order row up to an exact target length.
#[doc(hidden)]
pub fn app_verify_repeat_final_rows_core<T: Clone>(
    mut rows: Vec<T>,
    target: usize,
) -> Result<Vec<T>, AppVerifyRowPaddingError> {
    if target < rows.len() {
        return Err(AppVerifyRowPaddingError::TargetSmallerThanInput);
    }
    if rows.is_empty() {
        return if target == 0 {
            Ok(rows)
        } else {
            Err(AppVerifyRowPaddingError::EmptyRowsForNonzeroTarget)
        };
    }

    let last_index = match rows.len().checked_sub(1) {
        Some(index) => index,
        None => return Err(AppVerifyRowPaddingError::EmptyRowsForNonzeroTarget),
    };
    let last = match rows.get(last_index) {
        Some(last) => last.clone(),
        None => return Err(AppVerifyRowPaddingError::EmptyRowsForNonzeroTarget),
    };
    while rows.len() < target {
        rows.push(last.clone());
    }
    Ok(rows)
}

#[doc(hidden)]
pub fn app_verify_preflight_core(
    expected_version: u32,
    bundle_version: u32,
    total_proof_count: usize,
    expected_srs_id: Vec<u8>,
    bundle_srs_id: Vec<u8>,
    artifact_count: usize,
    counts_provided: bool,
    segment_tx_counts: Vec<usize>,
) -> Result<Vec<AppVerifySegmentRange>, AppVerifyPreflightError> {
    if bundle_version != expected_version {
        return Err(AppVerifyPreflightError::BadVersion);
    }
    if total_proof_count == 0 {
        return Err(AppVerifyPreflightError::EmptyProofSet);
    }
    if bundle_srs_id.len() != 32 {
        return Err(AppVerifyPreflightError::BadSrsLength);
    }
    if bundle_srs_id != expected_srs_id {
        return Err(AppVerifyPreflightError::SrsMismatch);
    }
    if !counts_provided {
        let mut ranges = Vec::with_capacity(1);
        ranges.push(AppVerifySegmentRange {
            segment_index: 0,
            start: 0,
            end: artifact_count,
        });
        return Ok(ranges);
    }

    let mut ranges = Vec::with_capacity(segment_tx_counts.len());
    let mut start = 0usize;
    let mut segment_index = 0usize;
    let mut overflowed = false;
    while segment_index < segment_tx_counts.len() && !overflowed {
        let count = segment_tx_counts[segment_index];
        match start.checked_add(count) {
            Some(end) => {
                ranges.push(AppVerifySegmentRange {
                    segment_index,
                    start,
                    end,
                });
                start = end;
                segment_index += 1;
            }
            None => overflowed = true,
        }
    }
    if overflowed {
        return Err(AppVerifyPreflightError::SegmentCoverageOverflow);
    }
    if start != artifact_count {
        return Err(AppVerifyPreflightError::SegmentCoverageMismatch);
    }
    Ok(ranges)
}

#[doc(hidden)]
pub fn app_verify_family_count_core(
    expected_family_count: usize,
    bundle_family_count: usize,
) -> Result<(), AppVerifyPlanError> {
    if bundle_family_count != expected_family_count {
        return Err(AppVerifyPlanError::FamilyCountMismatch);
    }
    Ok(())
}

#[doc(hidden)]
pub fn app_verify_plan_ids_core(expected: Vec<AppVerifyExpectedCall>) -> Vec<AppVerifyCallId> {
    let mut ids = Vec::with_capacity(expected.len());
    let mut order_index = 0usize;
    while order_index < expected.len() {
        let item = expected[order_index];
        ids.push(AppVerifyCallId {
            order_index,
            segment_index: item.segment_index,
            family_index: item.family_index,
            family: item.family,
        });
        order_index += 1;
    }
    ids
}

fn app_verify_family_code_matches(left: AppVerifyFamilyCode, right: AppVerifyFamilyCode) -> bool {
    left.proof_family_id == right.proof_family_id
        && left.note_reshape_family_id == right.note_reshape_family_id
        && left.shielded_ics20_withdrawal_family_id == right.shielded_ics20_withdrawal_family_id
}

fn app_verify_call_id_matches(left: AppVerifyCallId, right: AppVerifyCallId) -> bool {
    left.order_index == right.order_index
        && left.segment_index == right.segment_index
        && left.family_index == right.family_index
        && app_verify_family_code_matches(left.family, right.family)
}

fn app_verify_find_unique_result(
    expected_id: AppVerifyCallId,
    results: &[AppVerifyCallResult],
) -> Option<bool> {
    let mut matched_acceptances = Vec::new();
    let mut result_index = 0usize;
    while result_index < results.len() {
        let result = results[result_index];
        if app_verify_call_id_matches(result.id, expected_id) {
            matched_acceptances.push(result.accepted);
        }
        result_index += 1;
    }
    if matched_acceptances.len() == 1 {
        Some(matched_acceptances[0])
    } else {
        None
    }
}

#[doc(hidden)]
pub fn app_verify_plan_identity_core(
    id: AppVerifyCallId,
    bundle_family: AppVerifyFamilyCode,
    expected_real_count: usize,
    bundle_real_count: u32,
) -> Result<AppVerifyCallId, AppVerifyPlanError> {
    if !app_verify_family_code_matches(bundle_family, id.family) {
        return Err(AppVerifyPlanError::FamilyMismatch);
    }
    if expected_real_count > u32::MAX as usize {
        return Err(AppVerifyPlanError::RealCountOverflow);
    }
    if bundle_real_count != expected_real_count as u32 {
        return Err(AppVerifyPlanError::RealCountMismatch);
    }
    Ok(id)
}

#[doc(hidden)]
pub fn app_verify_plan_padding_core(
    id: AppVerifyCallId,
    expected_padded_count: usize,
    bundle_padded_count: u32,
) -> Result<AppVerifyCallId, AppVerifyPlanError> {
    if expected_padded_count > u32::MAX as usize {
        return Err(AppVerifyPlanError::PaddedCountOverflow);
    }
    if bundle_padded_count != expected_padded_count as u32 {
        return Err(AppVerifyPlanError::PaddedCountMismatch);
    }
    Ok(id)
}

#[doc(hidden)]
pub fn app_verify_reduce_core(
    expected_call_ids: Vec<AppVerifyCallId>,
    results: Vec<AppVerifyCallResult>,
) -> Result<Vec<AppVerifyCallId>, AppVerifyReductionError> {
    if results.len() != expected_call_ids.len() {
        return Err(AppVerifyReductionError::OutcomeCountMismatch);
    }

    let mut rejected_calls = Vec::new();
    let mut position = 0usize;
    let mut identities_match = true;
    while position < expected_call_ids.len() && identities_match {
        let expected_id = expected_call_ids[position];
        match app_verify_find_unique_result(expected_id, &results) {
            Some(accepted) => {
                if !accepted {
                    rejected_calls.push(expected_id);
                }
                position += 1;
            }
            None => {
                identities_match = false;
            }
        }
    }
    if !identities_match {
        return Err(AppVerifyReductionError::OutcomeIdentityMismatch);
    }
    Ok(rejected_calls)
}

#[doc(hidden)]
pub fn app_verify_profiled_acceptance_core(
    expected_call_ids: Vec<AppVerifyCallId>,
    results: Vec<AppVerifyCallResult>,
) -> Result<bool, AppVerifyReductionError> {
    match app_verify_reduce_core(expected_call_ids, results) {
        Ok(rejected_calls) => Ok(rejected_calls.len() == 0),
        Err(error) => Err(error),
    }
}

#[doc(hidden)]
pub fn app_verify_normal_acceptance_core(
    expected_call_ids: Vec<AppVerifyCallId>,
    results: Vec<AppVerifyCallResult>,
) -> Result<bool, AppVerifyReductionError> {
    app_verify_profiled_acceptance_core(expected_call_ids, results)
}

#[cfg(test)]
mod tests {
    use super::*;

    fn family(tag: u32) -> AppVerifyFamilyCode {
        AppVerifyFamilyCode {
            proof_family_id: tag,
            note_reshape_family_id: 0,
            shielded_ics20_withdrawal_family_id: 0,
        }
    }

    fn call(segment_index: usize, family_index: usize) -> AppVerifyExpectedCall {
        AppVerifyExpectedCall {
            segment_index,
            family_index,
            family: family((family_index + 1) as u32),
        }
    }

    #[test]
    fn preflight_checks_every_header_before_segment_planning() {
        let srs = vec![7u8; 32];
        assert_eq!(
            app_verify_preflight_core(2, 1, 0, srs.clone(), Vec::new(), 3, true, vec![2]),
            Err(AppVerifyPreflightError::BadVersion)
        );
        assert_eq!(
            app_verify_preflight_core(2, 2, 0, srs.clone(), srs.clone(), 3, true, vec![2]),
            Err(AppVerifyPreflightError::EmptyProofSet)
        );
        assert_eq!(
            app_verify_preflight_core(2, 2, 1, srs.clone(), vec![7; 31], 3, true, vec![2]),
            Err(AppVerifyPreflightError::BadSrsLength)
        );
        assert_eq!(
            app_verify_preflight_core(2, 2, 1, srs.clone(), vec![8; 32], 3, true, vec![2]),
            Err(AppVerifyPreflightError::SrsMismatch)
        );
        assert_eq!(
            app_verify_preflight_core(
                2,
                2,
                1,
                srs.clone(),
                srs.clone(),
                usize::MAX,
                true,
                vec![usize::MAX, 1],
            ),
            Err(AppVerifyPreflightError::SegmentCoverageOverflow)
        );
        assert_eq!(
            app_verify_preflight_core(2, 2, 1, srs.clone(), srs, 3, true, vec![2]),
            Err(AppVerifyPreflightError::SegmentCoverageMismatch)
        );

        let srs = vec![7u8; 32];
        assert_eq!(
            app_verify_preflight_core(2, 2, 1, srs.clone(), srs.clone(), 5, false, Vec::new()),
            Ok(vec![AppVerifySegmentRange {
                segment_index: 0,
                start: 0,
                end: 5,
            }])
        );
        assert_eq!(
            app_verify_preflight_core(2, 2, 1, srs.clone(), srs, 5, true, vec![2, 0, 3]),
            Ok(vec![
                AppVerifySegmentRange {
                    segment_index: 0,
                    start: 0,
                    end: 2,
                },
                AppVerifySegmentRange {
                    segment_index: 1,
                    start: 2,
                    end: 2,
                },
                AppVerifySegmentRange {
                    segment_index: 2,
                    start: 2,
                    end: 5,
                },
            ])
        );
    }

    #[test]
    fn ids_are_exact_and_reduction_is_permutation_invariant() {
        let expected = app_verify_plan_ids_core(vec![call(0, 0), call(1, 0), call(1, 1)]);
        assert_eq!(expected.len(), 3);
        assert_eq!(expected[0].order_index, 0);
        assert_eq!(expected[1].order_index, 1);
        assert_eq!(expected[2].order_index, 2);

        let outcomes = vec![
            AppVerifyCallResult {
                id: expected[2],
                accepted: false,
            },
            AppVerifyCallResult {
                id: expected[0],
                accepted: true,
            },
            AppVerifyCallResult {
                id: expected[1],
                accepted: true,
            },
        ];
        assert_eq!(
            app_verify_reduce_core(expected.clone(), outcomes.clone()),
            Ok(vec![expected[2]])
        );
        assert_eq!(
            app_verify_normal_acceptance_core(expected.clone(), outcomes.clone()),
            app_verify_profiled_acceptance_core(expected, outcomes)
        );
    }

    #[test]
    fn plan_compares_concrete_family_and_count_values_in_failure_order() {
        let transfer = AppVerifyFamilyCode {
            proof_family_id: 1,
            note_reshape_family_id: 0,
            shielded_ics20_withdrawal_family_id: 0,
        };
        let reshape = AppVerifyFamilyCode {
            proof_family_id: 2,
            note_reshape_family_id: 1,
            shielded_ics20_withdrawal_family_id: 0,
        };
        let id = AppVerifyCallId {
            order_index: 3,
            segment_index: 1,
            family_index: 2,
            family: transfer,
        };
        assert_eq!(
            app_verify_family_count_core(2, 1),
            Err(AppVerifyPlanError::FamilyCountMismatch)
        );
        assert_eq!(
            app_verify_plan_identity_core(id, reshape, 4, 5),
            Err(AppVerifyPlanError::FamilyMismatch)
        );
        assert_eq!(
            app_verify_plan_identity_core(id, transfer, 4, 5),
            Err(AppVerifyPlanError::RealCountMismatch)
        );
        assert_eq!(app_verify_plan_identity_core(id, transfer, 4, 4), Ok(id));
        assert_eq!(
            app_verify_plan_identity_core(id, transfer, u32::MAX as usize + 1, 4),
            Err(AppVerifyPlanError::RealCountOverflow)
        );
        assert_eq!(
            app_verify_plan_padding_core(id, 8, 4),
            Err(AppVerifyPlanError::PaddedCountMismatch)
        );
        assert_eq!(
            app_verify_plan_padding_core(id, u32::MAX as usize + 1, 4),
            Err(AppVerifyPlanError::PaddedCountOverflow)
        );
        assert_eq!(app_verify_plan_padding_core(id, 8, 8), Ok(id));
    }

    #[test]
    fn shipping_call_constructor_preserves_every_checked_field() {
        let id = AppVerifyCallId {
            order_index: 4,
            segment_index: 2,
            family_index: 1,
            family: family(7),
        };
        let bundle_family = family(7);
        assert_eq!(
            app_verify_shipping_call_from_parts(id, bundle_family, 3, 3, 4, 4),
            AppVerifyShippingCall {
                id,
                bundle_family,
                expected_real_count: 3,
                bundle_real_count: 3,
                expected_padded_count: 4,
                bundle_padded_count: 4,
            }
        );
    }

    #[test]
    fn shipping_projection_accepts_exact_input_and_preserves_failure_order() {
        let call = app_verify_shipping_call_from_parts(
            AppVerifyCallId {
                order_index: 4,
                segment_index: 2,
                family_index: 1,
                family: family(7),
            },
            family(7),
            3,
            3,
            4,
            4,
        );

        assert_eq!(
            app_verify_shipping_projection_core(call, family(7), 3, 4),
            Ok(())
        );

        let bad_identity = AppVerifyShippingCall {
            bundle_family: family(9),
            expected_padded_count: 5,
            bundle_padded_count: 8,
            ..call
        };
        assert_eq!(
            app_verify_shipping_projection_core(bad_identity, family(8), 2, 8),
            Err(AppVerifyShippingInputError::CallIdentityMismatch)
        );

        let bad_padding = AppVerifyShippingCall {
            expected_padded_count: 5,
            bundle_padded_count: 8,
            ..call
        };
        assert_eq!(
            app_verify_shipping_projection_core(bad_padding, family(8), 2, 8),
            Err(AppVerifyShippingInputError::CallPaddingMismatch)
        );
        assert_eq!(
            app_verify_shipping_projection_core(call, family(8), 2, 8),
            Err(AppVerifyShippingInputError::StatementFamilyMismatch)
        );
        assert_eq!(
            app_verify_shipping_projection_core(call, family(7), 2, 8),
            Err(AppVerifyShippingInputError::StatementRealCountMismatch)
        );
        assert_eq!(
            app_verify_shipping_projection_core(call, family(7), 3, 8),
            Err(AppVerifyShippingInputError::StatementPaddedCountMismatch)
        );
    }

    #[test]
    fn shipping_wrapper_projection_preserves_exact_parts() {
        let projection = app_verify_shipping_wrapper_projection_from_parts(
            vec![0x71; 32],
            vec![0x81, 0x82, 0x83],
            vec![0x82, 0x83],
        );
        assert_eq!(projection.statement_digest, vec![0x71; 32]);
        assert_eq!(projection.wrapped_proof_bytes, vec![0x81, 0x82, 0x83]);
        assert_eq!(projection.inner_proof_bytes, vec![0x82, 0x83]);
    }

    #[test]
    fn shipping_input_and_result_preserve_every_authenticated_field() {
        let call = app_verify_shipping_call_from_parts(
            AppVerifyCallId {
                order_index: 4,
                segment_index: 2,
                family_index: 1,
                family: family(7),
            },
            family(7),
            3,
            3,
            4,
            4,
        );
        let input = app_verify_shipping_input_from_parts(
            call,
            2,
            family(7),
            vec![0x11; 32],
            vec![0x22, 0x23],
            vec![0x33; 32],
            3,
            4,
            2,
            vec![vec![vec![0x41], vec![0x42]], vec![vec![0x51], vec![0x52]]],
            vec![0x61, 0x62],
            app_verify_shipping_wrapper_projection_from_parts(
                vec![0x71; 32],
                vec![0x81, 0x82, 0x83],
                vec![0x82, 0x83],
            ),
            vec![0x91; 32],
        )
        .expect("matching shipping input");
        assert_eq!(input.call, call);
        assert_eq!(input.protocol_version, 2);
        assert_eq!(input.family, family(7));
        assert_eq!(input.srs_id, vec![0x11; 32]);
        assert_eq!(input.serialized_vk, vec![0x22, 0x23]);
        assert_eq!(input.vk_digest, vec![0x33; 32]);
        assert_eq!(input.real_count, 3);
        assert_eq!(input.padded_count, 4);
        assert_eq!(input.public_input_arity, 2);
        assert_eq!(
            input.padded_public_inputs,
            vec![vec![vec![0x41], vec![0x42]], vec![vec![0x51], vec![0x52]],]
        );
        assert_eq!(input.canonical_statement_bytes, vec![0x61, 0x62]);
        assert_eq!(input.statement_digest, vec![0x71; 32]);
        assert_eq!(input.wrapped_proof_bytes, vec![0x81, 0x82, 0x83]);
        assert_eq!(input.inner_proof_bytes, vec![0x82, 0x83]);
        assert_eq!(input.challenge_context, vec![0x91; 32]);

        let result = app_verify_shipping_result_from_parts(input.clone(), true);
        assert_eq!(result.input, input);
        assert_eq!(result.result.id, call.id);
        assert!(result.result.accepted);
    }

    #[test]
    fn repeat_final_rows_preserves_prefix_and_fills_suffix() {
        let rows = vec![vec![1u8], vec![2u8], vec![3u8]];
        let padded = app_verify_repeat_final_rows_core(rows.clone(), 8).expect("valid padding");

        assert_eq!(padded.len(), 8);
        assert_eq!(&padded[..rows.len()], rows.as_slice());
        assert!(padded[rows.len()..].iter().all(|row| row == &rows[2]));
    }

    #[test]
    fn repeat_final_rows_accepts_only_the_empty_zero_target() {
        assert_eq!(
            app_verify_repeat_final_rows_core::<Vec<u8>>(Vec::new(), 0),
            Ok(Vec::new())
        );
        assert_eq!(
            app_verify_repeat_final_rows_core::<Vec<u8>>(Vec::new(), 1),
            Err(AppVerifyRowPaddingError::EmptyRowsForNonzeroTarget)
        );
    }

    #[test]
    fn repeat_final_rows_rejects_a_smaller_target() {
        assert_eq!(
            app_verify_repeat_final_rows_core(vec![1u8, 2, 3], 2),
            Err(AppVerifyRowPaddingError::TargetSmallerThanInput)
        );
    }

    #[test]
    fn shipping_input_rejects_cross_record_substitution() {
        let call = app_verify_shipping_call_from_parts(
            AppVerifyCallId {
                order_index: 4,
                segment_index: 2,
                family_index: 1,
                family: family(7),
            },
            family(7),
            3,
            3,
            4,
            4,
        );
        let build = |call, statement_family, real_count, padded_count| {
            app_verify_shipping_input_from_parts(
                call,
                2,
                statement_family,
                vec![0x11; 32],
                vec![0x22],
                vec![0x33; 32],
                real_count,
                padded_count,
                1,
                vec![vec![vec![0x41]]; 4],
                vec![0x61],
                app_verify_shipping_wrapper_projection_from_parts(
                    vec![0x71; 32],
                    vec![0x81, 0x82],
                    vec![0x82],
                ),
                vec![0x91; 32],
            )
        };

        assert_eq!(
            build(call, family(8), 3, 4),
            Err(AppVerifyShippingInputError::StatementFamilyMismatch)
        );
        assert_eq!(
            build(call, family(7), 2, 4),
            Err(AppVerifyShippingInputError::StatementRealCountMismatch)
        );
        assert_eq!(
            build(call, family(7), 3, 8),
            Err(AppVerifyShippingInputError::StatementPaddedCountMismatch)
        );

        let wrong_call_count = AppVerifyShippingCall {
            bundle_real_count: 2,
            ..call
        };
        assert_eq!(
            build(wrong_call_count, family(7), 2, 4),
            Err(AppVerifyShippingInputError::CallIdentityMismatch)
        );
        let wrong_call_padding = AppVerifyShippingCall {
            bundle_padded_count: 8,
            ..call
        };
        assert_eq!(
            build(wrong_call_padding, family(7), 3, 8),
            Err(AppVerifyShippingInputError::CallPaddingMismatch)
        );
    }

    #[test]
    fn reduction_rejects_missing_duplicate_and_unexpected_tags() {
        let expected = app_verify_plan_ids_core(vec![call(0, 0), call(1, 0)]);
        assert_eq!(
            app_verify_reduce_core(
                expected.clone(),
                vec![AppVerifyCallResult {
                    id: expected[0],
                    accepted: true,
                }],
            ),
            Err(AppVerifyReductionError::OutcomeCountMismatch)
        );
        assert_eq!(
            app_verify_reduce_core(
                expected.clone(),
                vec![
                    AppVerifyCallResult {
                        id: expected[0],
                        accepted: true,
                    },
                    AppVerifyCallResult {
                        id: expected[0],
                        accepted: true,
                    },
                ],
            ),
            Err(AppVerifyReductionError::OutcomeIdentityMismatch)
        );
        let unexpected = AppVerifyCallId {
            order_index: 1,
            segment_index: 9,
            family_index: 0,
            family: family(9),
        };
        assert_eq!(
            app_verify_reduce_core(
                expected.clone(),
                vec![
                    AppVerifyCallResult {
                        id: expected[0],
                        accepted: true,
                    },
                    AppVerifyCallResult {
                        id: unexpected,
                        accepted: true,
                    },
                ],
            ),
            Err(AppVerifyReductionError::OutcomeIdentityMismatch)
        );
    }
}
