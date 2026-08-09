import Ipp.Extracted.AppVerifierGenerated

/-!
Exact list semantics for the production application verifier's extracted
planning and acceptance state machine.
-/

namespace Ipp.Extracted.AppVerifierStateMachine

open Aeneas Aeneas.Std Result ControlFlow Error
open Std.Do
open ark_ip_proofs

noncomputable section

abbrev FamilyCode := app_verifier.AppVerifyFamilyCode
abbrev ExpectedCall := app_verifier.AppVerifyExpectedCall
abbrev CallId := app_verifier.AppVerifyCallId
abbrev CallResult := app_verifier.AppVerifyCallResult
abbrev SegmentRange := app_verifier.AppVerifySegmentRange

@[simp] theorem usize_eq_iff_val_eq (left right : Usize) :
    left = right ↔ left.val = right.val := by
  constructor
  · exact congrArg Usize.val
  · intro h
    cases left
    cases right
    simp_all

def familyCodeMatchesModel (left right : FamilyCode) : Bool :=
  decide (
    left.proof_family_id.val = right.proof_family_id.val ∧
    left.note_reshape_family_id.val = right.note_reshape_family_id.val ∧
    left.shielded_ics20_withdrawal_family_id.val =
      right.shielded_ics20_withdrawal_family_id.val)

def callIdMatchesModel (left right : CallId) : Bool :=
  decide (
    left.order_index.val = right.order_index.val ∧
    left.segment_index.val = right.segment_index.val ∧
    left.family_index.val = right.family_index.val ∧
    familyCodeMatchesModel left.family right.family = true)

@[simp] theorem extracted_family_code_matches_eq_model
    (left right : FamilyCode) :
    app_verifier.app_verify_family_code_matches left right =
      .ok (familyCodeMatchesModel left right) := by
  rcases left with ⟨leftFamily, leftReshape, leftWithdrawal⟩
  rcases right with ⟨rightFamily, rightReshape, rightWithdrawal⟩
  by_cases hfamily : leftFamily.val = rightFamily.val <;>
    by_cases hreshape : leftReshape.val = rightReshape.val <;>
      by_cases hwithdrawal :
        leftWithdrawal.val = rightWithdrawal.val <;>
        simp [app_verifier.app_verify_family_code_matches,
          familyCodeMatchesModel, usize_eq_iff_val_eq, hfamily, hreshape,
          hwithdrawal]

@[simp] theorem extracted_call_id_matches_eq_model
    (left right : CallId) :
    app_verifier.app_verify_call_id_matches left right =
      .ok (callIdMatchesModel left right) := by
  rcases left with ⟨leftOrder, leftSegment, leftIndex, leftFamily⟩
  rcases right with ⟨rightOrder, rightSegment, rightIndex, rightFamily⟩
  by_cases horder : leftOrder.val = rightOrder.val <;>
    by_cases hsegment : leftSegment.val = rightSegment.val <;>
      by_cases hindex : leftIndex.val = rightIndex.val <;>
        cases hfamily : familyCodeMatchesModel leftFamily rightFamily <;>
          simp [app_verifier.app_verify_call_id_matches, callIdMatchesModel,
            extracted_family_code_matches_eq_model, familyCodeMatchesModel,
            usize_eq_iff_val_eq, horder, hsegment, hindex, hfamily]

def plannedId (orderIndex : Nat) (expected : ExpectedCall) : CallId :=
  {
    order_index := ⟨orderIndex⟩
    segment_index := expected.segment_index
    family_index := expected.family_index
    family := expected.family
  }

def planIdsFrom : Nat → List ExpectedCall → List CallId
  | _, [] => []
  | orderIndex, expected :: remaining =>
      plannedId orderIndex expected ::
        planIdsFrom (orderIndex + 1) remaining

def planIdsModel (expected : List ExpectedCall) : List CallId :=
  planIdsFrom 0 expected

private theorem planLoopFuel_exact
    (consumed remaining : List ExpectedCall) (output : List CallId) :
    loopFuel
        (fun (state : alloc.vec.Vec CallId × Usize) =>
          app_verifier.app_verify_plan_ids_core_loop.body
            ⟨consumed ++ remaining⟩ state.1 state.2)
        (remaining.length + 1)
        (⟨output⟩, ⟨consumed.length⟩) =
      .ok ⟨output ++ planIdsFrom consumed.length remaining⟩ := by
  induction remaining generalizing consumed output with
  | nil =>
      simp [loopFuel, app_verifier.app_verify_plan_ids_core_loop.body,
        ark_ip_proofs.alloc.vec.Vec.len, planIdsFrom]
  | cons expected remaining ih =>
      simp only [loopFuel]
      have hbody :
          app_verifier.app_verify_plan_ids_core_loop.body
              ⟨consumed ++ expected :: remaining⟩
              ⟨output⟩ ⟨consumed.length⟩ =
            .ok (.cont
              (⟨output ++ [plannedId consumed.length expected]⟩,
                ⟨consumed.length + 1⟩)) := by
        simp [app_verifier.app_verify_plan_ids_core_loop.body,
          ark_ip_proofs.alloc.vec.Vec.len,
          ark_ip_proofs.alloc.vec.Vec.index,
          alloc.vec.Vec.push, plannedId]
      rw [hbody]
      simpa [planIdsFrom, List.append_assoc] using
        ih (consumed := consumed ++ [expected])
          (output := output ++ [plannedId consumed.length expected])

theorem app_verify_plan_ids_core_loop_exact
    (expected : alloc.vec.Vec ExpectedCall)
    (output : alloc.vec.Vec CallId) :
    app_verifier.app_verify_plan_ids_core_loop expected output 0#usize =
      .ok ⟨output.val ++ planIdsModel expected.val⟩ := by
  unfold app_verifier.app_verify_plan_ids_core_loop
  apply loop_eq_of_fuel (by simp)
  simpa [planIdsModel] using
    (planLoopFuel_exact [] expected.val output.val)

/-- The generated planner assigns the exact list index and preserves every
segment, family index, and full registered family code. -/
theorem extracted_plan_ids_eq_model
    (expected : alloc.vec.Vec ExpectedCall) :
    app_verifier.app_verify_plan_ids_core expected =
      .ok ⟨planIdsModel expected.val⟩ := by
  simp [app_verifier.app_verify_plan_ids_core,
    app_verify_plan_ids_core_loop_exact, planIdsModel,
    alloc.vec.Vec.with_capacity]

theorem planIdsFrom_length (start : Nat) (expected : List ExpectedCall) :
    (planIdsFrom start expected).length = expected.length := by
  induction expected generalizing start with
  | nil => rfl
  | cons _ remaining ih =>
      simp [planIdsFrom, ih]

theorem planIdsFrom_orderValues (start : Nat)
    (expected : List ExpectedCall) :
    (planIdsFrom start expected).map (fun id => id.order_index.val) =
      List.range' start expected.length := by
  induction expected generalizing start with
  | nil => rfl
  | cons _ remaining ih =>
      simp [planIdsFrom, plannedId, List.range'_succ, ih]

/-- The planner is functional and returns the one exact formal plan. -/
theorem app_plan_deterministic_exact
    (expected : alloc.vec.Vec ExpectedCall) :
    app_verifier.app_verify_plan_ids_core expected =
      .ok ⟨planIdsModel expected.val⟩ :=
  extracted_plan_ids_eq_model expected

/-- Every expected call appears once, in declaration order, and the generated
order tags contain no duplicate. -/
theorem app_plan_complete_noDuplicate
    (expected : alloc.vec.Vec ExpectedCall) :
    (planIdsModel expected.val).length = expected.val.length ∧
      ((planIdsModel expected.val).map
        (fun id => id.order_index.val)).Nodup := by
  constructor
  · exact planIdsFrom_length 0 expected.val
  · change
      ((planIdsFrom 0 expected.val).map
        (fun id => id.order_index.val)).Nodup
    rw [planIdsFrom_orderValues]
    exact List.nodup_range'

def segmentScanModel : Usize → Nat → List Usize →
    List SegmentRange × Usize × Bool
  | start, _, [] => ([], start, false)
  | start, segmentIndex, count :: remaining =>
      if start.val + count.val ≤ Usize.max then
        let next : Usize := ⟨start.val + count.val⟩
        let tail := segmentScanModel next (segmentIndex + 1) remaining
        ({
          segment_index := ⟨segmentIndex⟩
          start := start
          «end» := next
        } :: tail.1, tail.2.1, tail.2.2)
      else
        ([], start, true)

private theorem segmentLoopFuel_exact
    (consumed remaining : List Usize) (output : List SegmentRange)
    (start : Usize) :
    loopFuel
        (fun (state : alloc.vec.Vec SegmentRange × Usize × Usize × Bool) =>
          app_verifier.app_verify_preflight_core_loop.body
            ⟨consumed ++ remaining⟩ state.1 state.2.1
            state.2.2.1 state.2.2.2)
        (remaining.length + 1)
        (⟨output⟩, start, ⟨consumed.length⟩, false) =
      let scanned := segmentScanModel start consumed.length remaining
      .ok (⟨output ++ scanned.1⟩, scanned.2.1, scanned.2.2) := by
  induction remaining generalizing consumed output start with
  | nil =>
      simp [loopFuel, app_verifier.app_verify_preflight_core_loop.body,
        segmentScanModel, ark_ip_proofs.alloc.vec.Vec.len]
  | cons count remaining ih =>
      simp only [loopFuel]
      by_cases hadd : start.val + count.val ≤ Usize.max
      · let next : Usize := ⟨start.val + count.val⟩
        let range : SegmentRange := {
          segment_index := ⟨consumed.length⟩
          start := start
          «end» := next
        }
        have hbody :
            app_verifier.app_verify_preflight_core_loop.body
                ⟨consumed ++ count :: remaining⟩
                ⟨output⟩ start ⟨consumed.length⟩ false =
              .ok (.cont
                (⟨output ++ [range]⟩, next,
                  ⟨consumed.length + 1⟩, false)) := by
          simp [app_verifier.app_verify_preflight_core_loop.body,
            ark_ip_proofs.alloc.vec.Vec.len,
            ark_ip_proofs.alloc.vec.Vec.index,
            Usize.checked_add, lift, hadd, alloc.vec.Vec.push, next, range]
        rw [hbody]
        simpa [segmentScanModel, hadd, next, range, List.append_assoc] using
          ih (consumed := consumed ++ [count])
            (output := output ++ [range]) (start := next)
      · have hbody :
            app_verifier.app_verify_preflight_core_loop.body
                ⟨consumed ++ count :: remaining⟩
                ⟨output⟩ start ⟨consumed.length⟩ false =
              .ok (.cont
                (⟨output⟩, start, ⟨consumed.length⟩, true)) := by
          simp [app_verifier.app_verify_preflight_core_loop.body,
            ark_ip_proofs.alloc.vec.Vec.len,
            ark_ip_proofs.alloc.vec.Vec.index,
            Usize.checked_add, lift, hadd]
        rw [hbody]
        simp [loopFuel, app_verifier.app_verify_preflight_core_loop.body,
          segmentScanModel, hadd, ark_ip_proofs.alloc.vec.Vec.len]

theorem app_verify_preflight_core_loop_exact
    (counts : alloc.vec.Vec Usize)
    (output : alloc.vec.Vec SegmentRange) (start : Usize) :
    app_verifier.app_verify_preflight_core_loop counts output start
        0#usize false =
      let scanned := segmentScanModel start 0 counts.val
      .ok (⟨output.val ++ scanned.1⟩, scanned.2.1, scanned.2.2) := by
  unfold app_verifier.app_verify_preflight_core_loop
  apply loop_eq_of_fuel (by simp)
  simpa using
    (segmentLoopFuel_exact [] counts.val output.val start)

def preflightModel
    (expectedVersion bundleVersion : Std.U32)
    (totalProofCount : Usize)
    (expectedSrsId bundleSrsId : List UInt8)
    (artifactCount : Usize) (countsProvided : Bool)
    (segmentCounts : List Usize) :
    core.result.Result (List SegmentRange)
      app_verifier.AppVerifyPreflightError :=
  if bundleVersion.val ≠ expectedVersion.val then
    .Err app_verifier.AppVerifyPreflightError.BadVersion
  else if totalProofCount.val = 0 then
    .Err app_verifier.AppVerifyPreflightError.EmptyProofSet
  else if bundleSrsId.length ≠ 32 then
    .Err app_verifier.AppVerifyPreflightError.BadSrsLength
  else if bundleSrsId ≠ expectedSrsId then
    .Err app_verifier.AppVerifyPreflightError.SrsMismatch
  else if countsProvided then
    let scanned := segmentScanModel ⟨0⟩ 0 segmentCounts
    if scanned.2.2 then
      .Err app_verifier.AppVerifyPreflightError.SegmentCoverageOverflow
    else if scanned.2.1.val ≠ artifactCount.val then
      .Err app_verifier.AppVerifyPreflightError.SegmentCoverageMismatch
    else
      .Ok scanned.1
  else
    .Ok [{
      segment_index := ⟨0⟩
      start := ⟨0⟩
      «end» := artifactCount
    }]

/-- The extracted preflight computes the exact checked, contiguous segment
plan and fails closed on every header, SRS, overflow, and coverage error. -/
theorem extracted_segment_plan_eq_model
    (expectedVersion bundleVersion : Std.U32)
    (totalProofCount : Usize)
    (expectedSrsId bundleSrsId : alloc.vec.Vec UInt8)
    (artifactCount : Usize) (countsProvided : Bool)
    (segmentCounts : alloc.vec.Vec Usize) :
    app_verifier.app_verify_preflight_core expectedVersion bundleVersion
        totalProofCount expectedSrsId bundleSrsId artifactCount
        countsProvided segmentCounts =
      .ok (match preflightModel expectedVersion bundleVersion totalProofCount
          expectedSrsId.val bundleSrsId.val artifactCount countsProvided
          segmentCounts.val with
        | .Ok ranges => .Ok ⟨ranges⟩
        | .Err error => .Err error) := by
  unfold app_verifier.app_verify_preflight_core
  rw [alloc.vec.partial_eq.PartialEqVec.ne_u8_exact]
  simp only [ark_ip_proofs.alloc.vec.Vec.len,
    alloc.vec.Vec.with_capacity]
  rw [app_verify_preflight_core_loop_exact]
  simp only [List.nil_append, Result.bind_ok]
  simp only [Usize.ofNat]
  by_cases hversion : bundleVersion.val = expectedVersion.val
  · by_cases hproofs : totalProofCount.val = 0
    · simp [preflightModel, hversion, hproofs,
        usize_eq_iff_val_eq]
    · by_cases hsrsLength : bundleSrsId.val.length = 32
      · by_cases hsrs : bundleSrsId.val = expectedSrsId.val
        · have hexpectedLength : expectedSrsId.val.length = 32 := by
            simpa [hsrs] using hsrsLength
          cases countsProvided with
          | false =>
              simp [preflightModel, hversion, hproofs, hsrsLength, hsrs,
                hexpectedLength, usize_eq_iff_val_eq, alloc.vec.Vec.push]
          | true =>
              by_cases hoverflow :
                  (segmentScanModel ⟨0⟩ 0 segmentCounts.val).2.2 = true
              · simp [preflightModel, hversion, hproofs, hsrsLength,
                  hsrs, hexpectedLength, hoverflow, usize_eq_iff_val_eq]
              · by_cases hcoverage :
                    (segmentScanModel ⟨0⟩ 0
                      segmentCounts.val).2.1.val = artifactCount.val <;>
                  simp [preflightModel, hversion, hproofs, hsrsLength,
                    hsrs, hexpectedLength, hoverflow, hcoverage,
                    usize_eq_iff_val_eq]
        · simp [preflightModel, hversion, hproofs, hsrsLength, hsrs,
            usize_eq_iff_val_eq]
      · simp [preflightModel, hversion, hproofs, hsrsLength,
          usize_eq_iff_val_eq]
  · simp [preflightModel, hversion, usize_eq_iff_val_eq]

def familyCountModel (expectedCount bundleCount : Usize) :
    core.result.Result Unit app_verifier.AppVerifyPlanError :=
  if bundleCount.val = expectedCount.val then
    .Ok ()
  else
    .Err app_verifier.AppVerifyPlanError.FamilyCountMismatch

theorem extracted_family_count_eq_model
    (expectedCount bundleCount : Usize) :
    app_verifier.app_verify_family_count_core expectedCount bundleCount =
      .ok (familyCountModel expectedCount bundleCount) := by
  by_cases hcount : bundleCount.val = expectedCount.val <;>
    simp [app_verifier.app_verify_family_count_core, familyCountModel,
      usize_eq_iff_val_eq, hcount]

def identityModel (id : CallId) (bundleFamily : FamilyCode)
    (expectedRealCount : Usize) (bundleRealCount : Std.U32) :
    core.result.Result CallId app_verifier.AppVerifyPlanError :=
  if familyCodeMatchesModel bundleFamily id.family then
    if expectedRealCount.val > 2 ^ 32 - 1 then
      .Err app_verifier.AppVerifyPlanError.RealCountOverflow
    else if bundleRealCount.val ≠ expectedRealCount.val then
      .Err app_verifier.AppVerifyPlanError.RealCountMismatch
    else
      .Ok id
  else
    .Err app_verifier.AppVerifyPlanError.FamilyMismatch

theorem extracted_plan_identity_eq_model
    (id : CallId) (bundleFamily : FamilyCode)
    (expectedRealCount : Usize) (bundleRealCount : Std.U32) :
    app_verifier.app_verify_plan_identity_core id bundleFamily
        expectedRealCount bundleRealCount =
      .ok (identityModel id bundleFamily expectedRealCount bundleRealCount) := by
  rw [show
    app_verifier.app_verify_plan_identity_core id bundleFamily
        expectedRealCount bundleRealCount =
      (do
        let familyMatches ←
          app_verifier.app_verify_family_code_matches bundleFamily id.family
        if familyMatches then
          let maximum ← lift (MacCampaign.castUsize core.num.U32.MAX)
          if expectedRealCount > maximum then
            .ok (.Err app_verifier.AppVerifyPlanError.RealCountOverflow)
          else
            let narrowed ← lift (UScalar.cast .U32 expectedRealCount)
            if bundleRealCount != narrowed then
              .ok (.Err app_verifier.AppVerifyPlanError.RealCountMismatch)
            else
              .ok (.Ok id)
        else
          .ok (.Err app_verifier.AppVerifyPlanError.FamilyMismatch)) by rfl]
  rw [extracted_family_code_matches_eq_model]
  cases hfamily : familyCodeMatchesModel bundleFamily id.family
  · simp [identityModel, hfamily]
  · by_cases hover : 2 ^ 32 - 1 < expectedRealCount.val
    · simp [identityModel, core.num.U32.MAX, MacCampaign.castUsize,
        UScalar.cast, lift, usize_eq_iff_val_eq, hfamily, hover]
    · by_cases hcount :
        bundleRealCount.val = expectedRealCount.val <;>
        simp [identityModel, core.num.U32.MAX, MacCampaign.castUsize,
          UScalar.cast, lift, usize_eq_iff_val_eq, hfamily, hover, hcount]

def paddingModel (id : CallId) (expectedPaddedCount : Usize)
    (bundlePaddedCount : Std.U32) :
    core.result.Result CallId app_verifier.AppVerifyPlanError :=
  if expectedPaddedCount.val > 2 ^ 32 - 1 then
    .Err app_verifier.AppVerifyPlanError.PaddedCountOverflow
  else if bundlePaddedCount.val ≠ expectedPaddedCount.val then
    .Err app_verifier.AppVerifyPlanError.PaddedCountMismatch
  else
    .Ok id

theorem extracted_plan_padding_eq_model
    (id : CallId) (expectedPaddedCount : Usize)
    (bundlePaddedCount : Std.U32) :
    app_verifier.app_verify_plan_padding_core id expectedPaddedCount
        bundlePaddedCount =
      .ok (paddingModel id expectedPaddedCount bundlePaddedCount) := by
  by_cases hover : 2 ^ 32 - 1 < expectedPaddedCount.val
  · simp [app_verifier.app_verify_plan_padding_core, paddingModel,
      core.num.U32.MAX, MacCampaign.castUsize, UScalar.cast, lift,
      usize_eq_iff_val_eq, hover]
  · by_cases hcount :
      bundlePaddedCount.val = expectedPaddedCount.val <;>
      simp [app_verifier.app_verify_plan_padding_core, paddingModel,
        core.num.U32.MAX, MacCampaign.castUsize, UScalar.cast, lift,
        usize_eq_iff_val_eq, hover, hcount]

def matchingAcceptances (expected : CallId)
    (results : List CallResult) : List Bool :=
  results.filterMap fun result =>
    if callIdMatchesModel result.id expected then
      some result.accepted
    else
      none

def uniqueResultModel (expected : CallId)
    (results : List CallResult) : Option Bool :=
  match matchingAcceptances expected results with
  | [accepted] => some accepted
  | _ => none

private theorem findUniqueLoopFuel_exact
    (expected : CallId)
    (consumed remaining : List CallResult) (output : List Bool) :
    loopFuel
        (fun (state : alloc.vec.Vec Bool × Usize) =>
          app_verifier.app_verify_find_unique_result_loop.body expected
            ⟨consumed ++ remaining⟩ state.1 state.2)
        (remaining.length + 1)
        (⟨output⟩, ⟨consumed.length⟩) =
      .ok ⟨output ++ matchingAcceptances expected remaining⟩ := by
  induction remaining generalizing consumed output with
  | nil =>
      simp [loopFuel,
        app_verifier.app_verify_find_unique_result_loop.body,
        matchingAcceptances, Slice.len]
  | cons result remaining ih =>
      simp only [loopFuel]
      cases hmatch : callIdMatchesModel result.id expected with
      | false =>
          have hbody :
              app_verifier.app_verify_find_unique_result_loop.body expected
                  ⟨consumed ++ result :: remaining⟩
                  ⟨output⟩ ⟨consumed.length⟩ =
                .ok (.cont (⟨output⟩, ⟨consumed.length + 1⟩)) := by
            simp [app_verifier.app_verify_find_unique_result_loop.body,
              Slice.len, Slice.index_usize,
              extracted_call_id_matches_eq_model, hmatch]
          rw [hbody]
          simpa [matchingAcceptances, hmatch] using
            ih (consumed := consumed ++ [result]) (output := output)
      | true =>
          have hbody :
              app_verifier.app_verify_find_unique_result_loop.body expected
                  ⟨consumed ++ result :: remaining⟩
                  ⟨output⟩ ⟨consumed.length⟩ =
                .ok (.cont
                  (⟨output ++ [result.accepted]⟩,
                    ⟨consumed.length + 1⟩)) := by
            simp [app_verifier.app_verify_find_unique_result_loop.body,
              Slice.len, Slice.index_usize, alloc.vec.Vec.push,
              extracted_call_id_matches_eq_model, hmatch]
          rw [hbody]
          simpa [matchingAcceptances, hmatch, List.append_assoc] using
            ih (consumed := consumed ++ [result])
              (output := output ++ [result.accepted])

theorem app_verify_find_unique_result_loop_exact
    (expected : CallId) (results : Slice CallResult)
    (output : alloc.vec.Vec Bool) :
    app_verifier.app_verify_find_unique_result_loop expected results
        output 0#usize =
      .ok ⟨output.val ++ matchingAcceptances expected results.val⟩ := by
  unfold app_verifier.app_verify_find_unique_result_loop
  apply loop_eq_of_fuel (by simp)
  simpa using
    (findUniqueLoopFuel_exact expected [] results.val output.val)

theorem app_verify_find_unique_result_exact
    (expected : CallId) (results : Slice CallResult) :
    app_verifier.app_verify_find_unique_result expected results =
      .ok (uniqueResultModel expected results.val) := by
  rw [show
    app_verifier.app_verify_find_unique_result expected results =
      (do
        let accepted ←
          app_verifier.app_verify_find_unique_result_loop expected results
            (ark_ip_proofs.alloc.vec.Vec.new Bool) 0#usize
        let count := ark_ip_proofs.alloc.vec.Vec.len accepted
        if count = 1#usize then
          let value ←
            ark_ip_proofs.alloc.vec.Vec.index
              (ark_ip_proofs.core.slice.index.SliceIndexUsizeSlice Bool)
              accepted 0#usize
          .ok (some value)
        else
          .ok none) by rfl]
  rw [app_verify_find_unique_result_loop_exact]
  simp only [ark_ip_proofs.alloc.vec.Vec.new, List.nil_append,
    Result.bind_ok]
  cases haccepted : matchingAcceptances expected results.val with
  | nil =>
      simp [uniqueResultModel, haccepted, ark_ip_proofs.alloc.vec.Vec.len]
  | cons accepted remaining =>
      cases remaining with
      | nil =>
          simp [uniqueResultModel, haccepted, ark_ip_proofs.alloc.vec.Vec.len,
            ark_ip_proofs.alloc.vec.Vec.index]
      | cons next rest =>
          simp [uniqueResultModel, haccepted, ark_ip_proofs.alloc.vec.Vec.len]

def reduceScanModel : List CallId → List CallResult → List CallId × Bool
  | [], _ => ([], true)
  | expected :: remaining, results =>
      match uniqueResultModel expected results with
      | none => ([], false)
      | some accepted =>
          let tail := reduceScanModel remaining results
          ((if accepted then [] else [expected]) ++ tail.1, tail.2)

def reduceCallsModel (expected : List CallId) (results : List CallResult) :
    Option (List CallId) :=
  let scanned := reduceScanModel expected results
  if scanned.2 then some scanned.1 else none

def reduceModel (expected : List CallId) (results : List CallResult) :
    core.result.Result (List CallId) app_verifier.AppVerifyReductionError :=
  if results.length ≠ expected.length then
    .Err app_verifier.AppVerifyReductionError.OutcomeCountMismatch
  else
    match reduceCallsModel expected results with
    | some rejected => .Ok rejected
    | none => .Err app_verifier.AppVerifyReductionError.OutcomeIdentityMismatch

def acceptanceModel (expected : List CallId) (results : List CallResult) :
    core.result.Result Bool app_verifier.AppVerifyReductionError :=
  match reduceModel expected results with
  | .Ok rejected => .Ok rejected.isEmpty
  | .Err error => .Err error

private theorem reduceLoopFuel_exact
    (consumed remaining : List CallId) (results : List CallResult)
    (output : List CallId) :
    loopFuel
        (fun (state : alloc.vec.Vec CallId × Usize × Bool) =>
          app_verifier.app_verify_reduce_core_loop.body
            ⟨consumed ++ remaining⟩ ⟨results⟩
            state.1 state.2.1 state.2.2)
        (remaining.length + 1)
        (⟨output⟩, ⟨consumed.length⟩, true) =
      let scanned := reduceScanModel remaining results
      .ok (⟨output ++ scanned.1⟩, scanned.2) := by
  induction remaining generalizing consumed output with
  | nil =>
      simp [loopFuel, app_verifier.app_verify_reduce_core_loop.body,
        reduceScanModel, ark_ip_proofs.alloc.vec.Vec.len]
  | cons expected remaining ih =>
      simp only [loopFuel]
      cases hunique : uniqueResultModel expected results with
      | none =>
          have hbody :
              app_verifier.app_verify_reduce_core_loop.body
                  ⟨consumed ++ expected :: remaining⟩ ⟨results⟩
                  ⟨output⟩ ⟨consumed.length⟩ true =
                .ok (.cont (⟨output⟩, ⟨consumed.length⟩, false)) := by
            simp [app_verifier.app_verify_reduce_core_loop.body,
              ark_ip_proofs.alloc.vec.Vec.len,
              ark_ip_proofs.alloc.vec.Vec.index,
              ark_ip_proofs.alloc.vec.Vec.deref,
              app_verify_find_unique_result_exact, hunique]
          rw [hbody]
          simp [loopFuel, app_verifier.app_verify_reduce_core_loop.body,
            reduceScanModel, hunique, ark_ip_proofs.alloc.vec.Vec.len]
      | some accepted =>
          cases accepted with
          | false =>
              have hbody :
                  app_verifier.app_verify_reduce_core_loop.body
                      ⟨consumed ++ expected :: remaining⟩ ⟨results⟩
                      ⟨output⟩ ⟨consumed.length⟩ true =
                    .ok (.cont
                      (⟨output ++ [expected]⟩,
                        ⟨consumed.length + 1⟩, true)) := by
                simp [app_verifier.app_verify_reduce_core_loop.body,
                  ark_ip_proofs.alloc.vec.Vec.len,
                  ark_ip_proofs.alloc.vec.Vec.index,
                  ark_ip_proofs.alloc.vec.Vec.deref,
                  alloc.vec.Vec.push,
                  app_verify_find_unique_result_exact, hunique]
              rw [hbody]
              simpa [reduceScanModel, hunique, List.append_assoc] using
                ih (consumed := consumed ++ [expected])
                  (output := output ++ [expected])
          | true =>
              have hbody :
                  app_verifier.app_verify_reduce_core_loop.body
                      ⟨consumed ++ expected :: remaining⟩ ⟨results⟩
                      ⟨output⟩ ⟨consumed.length⟩ true =
                    .ok (.cont
                      (⟨output⟩, ⟨consumed.length + 1⟩, true)) := by
                simp [app_verifier.app_verify_reduce_core_loop.body,
                  ark_ip_proofs.alloc.vec.Vec.len,
                  ark_ip_proofs.alloc.vec.Vec.index,
                  ark_ip_proofs.alloc.vec.Vec.deref,
                  app_verify_find_unique_result_exact, hunique]
              rw [hbody]
              simpa [reduceScanModel, hunique] using
                ih (consumed := consumed ++ [expected]) (output := output)

theorem app_verify_reduce_core_loop_exact
    (expected : alloc.vec.Vec CallId)
    (results : alloc.vec.Vec CallResult)
    (output : alloc.vec.Vec CallId) :
    app_verifier.app_verify_reduce_core_loop expected results output
        0#usize true =
      let scanned := reduceScanModel expected.val results.val
      .ok (⟨output.val ++ scanned.1⟩, scanned.2) := by
  unfold app_verifier.app_verify_reduce_core_loop
  apply loop_eq_of_fuel (by simp)
  simpa using
    (reduceLoopFuel_exact [] expected.val results.val output.val)

/-- The generated reducer is exactly the independent list model: length is
checked first, then every expected full call ID must have one unique outcome. -/
theorem extracted_reduce_eq_model
    (expected : alloc.vec.Vec CallId)
    (results : alloc.vec.Vec CallResult) :
    app_verifier.app_verify_reduce_core expected results =
      .ok (match reduceModel expected.val results.val with
        | .Ok rejected => .Ok ⟨rejected⟩
        | .Err error => .Err error) := by
  rw [show
    app_verifier.app_verify_reduce_core expected results =
      (do
        let resultCount := ark_ip_proofs.alloc.vec.Vec.len results
        let expectedCount := ark_ip_proofs.alloc.vec.Vec.len expected
        if resultCount != expectedCount then
          .ok (.Err app_verifier.AppVerifyReductionError.OutcomeCountMismatch)
        else
          let (rejected, identitiesMatch) ←
            app_verifier.app_verify_reduce_core_loop expected results
              (ark_ip_proofs.alloc.vec.Vec.new CallId) 0#usize true
          if identitiesMatch then
            .ok (.Ok rejected)
          else
            .ok (.Err
              app_verifier.AppVerifyReductionError.OutcomeIdentityMismatch)) by
      rfl]
  by_cases hcount : results.val.length = expected.val.length
  · have hcountUsize :
        ark_ip_proofs.alloc.vec.Vec.len results =
          ark_ip_proofs.alloc.vec.Vec.len expected := by
      simp [ark_ip_proofs.alloc.vec.Vec.len, hcount]
    simp only [hcountUsize, ne_eq, not_true_eq_false, if_false]
    rw [app_verify_reduce_core_loop_exact]
    simp only [ark_ip_proofs.alloc.vec.Vec.new, List.nil_append,
      Result.bind_ok]
    cases hscan : reduceScanModel expected.val results.val with
    | mk rejected identitiesMatch =>
        cases identitiesMatch <;>
          simp [reduceModel, reduceCallsModel, hcount, hscan]
  · have hcountUsize :
        ark_ip_proofs.alloc.vec.Vec.len results ≠
          ark_ip_proofs.alloc.vec.Vec.len expected := by
      simpa [ark_ip_proofs.alloc.vec.Vec.len] using hcount
    simp [hcountUsize, reduceModel, hcount]

theorem extracted_acceptance_eq_model
    (expected : alloc.vec.Vec CallId)
    (results : alloc.vec.Vec CallResult) :
    app_verifier.app_verify_normal_acceptance_core expected results =
      .ok (acceptanceModel expected.val results.val) := by
  unfold app_verifier.app_verify_normal_acceptance_core
  unfold app_verifier.app_verify_profiled_acceptance_core
  rw [extracted_reduce_eq_model]
  cases hreduce : reduceModel expected.val results.val with
  | Ok rejected =>
      cases rejected <;>
        simp [acceptanceModel, hreduce, ark_ip_proofs.alloc.vec.Vec.len,
          usize_eq_iff_val_eq]
  | Err error =>
      simp [acceptanceModel, hreduce]

theorem uniqueResultModel_true_iff (expected : CallId)
    (results : List CallResult) :
    uniqueResultModel expected results = some true ↔
      matchingAcceptances expected results = [true] := by
  unfold uniqueResultModel
  cases hmatching : matchingAcceptances expected results with
  | nil => simp [hmatching]
  | cons accepted remaining =>
      cases remaining with
      | nil =>
          cases accepted <;> simp [hmatching]
      | cons next rest =>
          simp [hmatching]

theorem reduceScanModel_accepts_iff (expected : List CallId)
    (results : List CallResult) :
    reduceScanModel expected results = ([], true) ↔
      ∀ id ∈ expected, matchingAcceptances id results = [true] := by
  induction expected with
  | nil =>
      simp [reduceScanModel]
  | cons id remaining ih =>
      cases hunique : uniqueResultModel id results with
      | none =>
          have hnot :
              matchingAcceptances id results ≠ [true] := by
            intro hmatching
            have :
                uniqueResultModel id results = some true :=
              (uniqueResultModel_true_iff id results).2 hmatching
            simp [hunique] at this
          simp [reduceScanModel, hunique, hnot]
      | some accepted =>
          cases accepted with
          | false =>
              have hnot :
                  matchingAcceptances id results ≠ [true] := by
                intro hmatching
                have :
                    uniqueResultModel id results = some true :=
                  (uniqueResultModel_true_iff id results).2 hmatching
                simp [hunique] at this
              simp [reduceScanModel, hunique, hnot]
          | true =>
              have hmatching :
                  matchingAcceptances id results = [true] :=
                (uniqueResultModel_true_iff id results).1 hunique
              simp [reduceScanModel, hunique, hmatching, ih]

theorem acceptanceModel_true_iff (expected : List CallId)
    (results : List CallResult) :
    acceptanceModel expected results = .Ok true ↔
      results.length = expected.length ∧
        ∀ id ∈ expected, matchingAcceptances id results = [true] := by
  by_cases hcount : results.length = expected.length
  · rw [show
      acceptanceModel expected results =
        (match reduceScanModel expected results with
        | (rejected, true) => .Ok rejected.isEmpty
        | (_, false) =>
            .Err app_verifier.AppVerifyReductionError.OutcomeIdentityMismatch) by
          cases hscan : reduceScanModel expected results with
          | mk rejected identitiesMatch =>
              cases identitiesMatch <;>
                simp [acceptanceModel, reduceModel, reduceCallsModel, hcount,
                  hscan]]
    cases hscan : reduceScanModel expected results with
    | mk rejected identitiesMatch =>
        cases identitiesMatch with
        | false =>
            have hnot :
                ¬(∀ id ∈ expected,
                  matchingAcceptances id results = [true]) := by
              intro hall
              have :=
                (reduceScanModel_accepts_iff expected results).2 hall
              simp [hscan] at this
            simp [hcount, hnot]
        | true =>
            cases rejected with
            | nil =>
                have hall :
                    ∀ id ∈ expected,
                      matchingAcceptances id results = [true] :=
                  (reduceScanModel_accepts_iff expected results).1
                    (by simpa using hscan)
                constructor
                · intro _
                  exact ⟨hcount, hall⟩
                · intro _
                  rfl
            | cons rejected remaining =>
                have hnot :
                    ¬(∀ id ∈ expected,
                      matchingAcceptances id results = [true]) := by
                  intro hall
                  have :=
                    (reduceScanModel_accepts_iff expected results).2 hall
                  simp [hscan] at this
                simp [hcount, hnot]
  · simp [acceptanceModel, reduceModel, hcount]

/-- Acceptance means that every expected full ID—including the registered
family code—occurs exactly once and that sole result is accepted. -/
theorem app_reduce_accepts_iff_all_expected_accept
    (expected : alloc.vec.Vec CallId)
    (results : alloc.vec.Vec CallResult) :
    app_verifier.app_verify_normal_acceptance_core expected results =
        .ok (.Ok true) ↔
      results.val.length = expected.val.length ∧
        ∀ id ∈ expected.val,
          matchingAcceptances id results.val = [true] := by
  rw [extracted_acceptance_eq_model]
  simp only [Result.ok.injEq]
  exact acceptanceModel_true_iff expected.val results.val

theorem matchingAcceptances_perm (expected : CallId)
    {left right : List CallResult} (hperm : left.Perm right) :
    (matchingAcceptances expected left).Perm
      (matchingAcceptances expected right) := by
  exact hperm.filterMap _

private theorem matchingAcceptances_eq_singleton_iff_of_perm
    (expected : CallId) {left right : List CallResult}
    (hperm : left.Perm right) (accepted : Bool) :
    matchingAcceptances expected left = [accepted] ↔
      matchingAcceptances expected right = [accepted] := by
  have hmatching := matchingAcceptances_perm expected hperm
  constructor
  · intro hleft
    rw [hleft] at hmatching
    exact hmatching.singleton_eq.symm
  · intro hright
    rw [hright] at hmatching
    exact hmatching.eq_singleton

/-- Reordering independently completed verification tasks cannot change the
reducer's acceptance decision. -/
theorem app_reduce_permutation_invariant
    (expected : alloc.vec.Vec CallId)
    (left right : alloc.vec.Vec CallResult)
    (hperm : left.val.Perm right.val) :
    (app_verifier.app_verify_normal_acceptance_core expected left =
        .ok (.Ok true) ↔
      app_verifier.app_verify_normal_acceptance_core expected right =
        .ok (.Ok true)) := by
  rw [app_reduce_accepts_iff_all_expected_accept,
    app_reduce_accepts_iff_all_expected_accept]
  constructor
  · rintro ⟨hlength, hall⟩
    constructor
    · exact hperm.length_eq.symm.trans hlength
    · intro id hid
      exact
        (matchingAcceptances_eq_singleton_iff_of_perm id hperm true).1
          (hall id hid)
  · rintro ⟨hlength, hall⟩
    constructor
    · exact hperm.length_eq.trans hlength
    · intro id hid
      exact
        (matchingAcceptances_eq_singleton_iff_of_perm id hperm true).2
          (hall id hid)

/-- Profiling changes observation only; it cannot change acceptance. -/
theorem app_normal_profiled_acceptance_parity
    (expected : alloc.vec.Vec CallId)
    (results : alloc.vec.Vec CallResult) :
    app_verifier.app_verify_normal_acceptance_core expected results =
      app_verifier.app_verify_profiled_acceptance_core expected results := by
  rfl

#print axioms extracted_family_code_matches_eq_model
#print axioms extracted_call_id_matches_eq_model
#print axioms extracted_plan_ids_eq_model
#print axioms extracted_segment_plan_eq_model
#print axioms extracted_family_count_eq_model
#print axioms extracted_plan_identity_eq_model
#print axioms extracted_plan_padding_eq_model
#print axioms extracted_reduce_eq_model
#print axioms app_plan_deterministic_exact
#print axioms app_plan_complete_noDuplicate
#print axioms app_reduce_accepts_iff_all_expected_accept
#print axioms app_reduce_permutation_invariant
#print axioms app_normal_profiled_acceptance_parity

end

end Ipp.Extracted.AppVerifierStateMachine
