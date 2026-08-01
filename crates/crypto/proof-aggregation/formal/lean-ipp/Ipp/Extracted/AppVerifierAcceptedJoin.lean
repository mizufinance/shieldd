import Ipp.Extracted.AppVerifierStateMachine

/-!
Exact accepted-join semantics for the production application verifier.

The extracted core checks count, full call identity, planner order, and every
acceptance bit. This module gives those loops an independent list model and
retains each original observation and executed payload unchanged.
-/

namespace Ipp.Extracted.AppVerifierAcceptedJoin

open Aeneas Aeneas.Std Result ControlFlow Error
open Std.Do
open ark_ip_proofs
open Ipp.Extracted.AppVerifierStateMachine

noncomputable section

abbrev JoinedRecord (Observation Execution : Type) :=
  app_verifier.AppVerifyPlannerIndexedExecutedRecord Observation Execution

abbrev AcceptedJoinProjection (Observation Execution : Type) :=
  app_verifier.AppVerifyAcceptedJoinProjection Observation Execution

def recordIdentitiesMatch
    {Observation Execution : Type}
    (record : JoinedRecord Observation Execution) : Bool :=
  callIdMatchesModel record.authenticated_id record.planner_id &&
    callIdMatchesModel record.executed_id record.planner_id

def identityScanFrom
    {Observation Execution : Type} :
    Nat → List (JoinedRecord Observation Execution) → Nat × Bool
  | position, [] => (position, true)
  | position, record :: remaining =>
      if recordIdentitiesMatch record then
        identityScanFrom (position + 1) remaining
      else
        (position, false)

def orderScanFrom
    {Observation Execution : Type} :
    Nat → List CallId → List (JoinedRecord Observation Execution) → Nat × Bool
  | position, [], [] => (position, true)
  | position, expected :: remainingExpected, record :: remainingRecords =>
      if callIdMatchesModel record.planner_id expected then
        orderScanFrom (position + 1) remainingExpected remainingRecords
      else
        (position, false)
  | position, _, _ => (position, false)

def rejectedCallIds
    {Observation Execution : Type} :
    List (JoinedRecord Observation Execution) → List CallId
  | [] => []
  | record :: remaining =>
      (if record.accepted then [] else [record.planner_id]) ++
        rejectedCallIds remaining

@[simp] theorem callIdMatchesModel_eq_true_iff
    (left right : CallId) :
    callIdMatchesModel left right = true ↔ left = right := by
  rcases left with ⟨leftOrder, leftSegment, leftIndex, leftFamily⟩
  rcases right with ⟨rightOrder, rightSegment, rightIndex, rightFamily⟩
  rcases leftFamily with
    ⟨leftProof, leftReshape, leftWithdrawal⟩
  rcases rightFamily with
    ⟨rightProof, rightReshape, rightWithdrawal⟩
  simp [callIdMatchesModel, familyCodeMatchesModel, usize_eq_iff_val_eq]

@[simp] theorem recordIdentitiesMatch_eq_true_iff
    {Observation Execution : Type}
    (record : JoinedRecord Observation Execution) :
    recordIdentitiesMatch record = true ↔
      record.authenticated_id = record.planner_id ∧
        record.executed_id = record.planner_id := by
  simp [recordIdentitiesMatch]

theorem identityScanFrom_accepts_iff
    {Observation Execution : Type}
    (position : Nat)
    (records : List (JoinedRecord Observation Execution)) :
    (identityScanFrom position records).2 = true ↔
      ∀ record ∈ records,
        record.authenticated_id = record.planner_id ∧
          record.executed_id = record.planner_id := by
  induction records generalizing position with
  | nil =>
      simp [identityScanFrom]
  | cons record remaining ih =>
      cases hmatch : recordIdentitiesMatch record with
      | false =>
          have hrecord : ¬(record.authenticated_id = record.planner_id ∧
              record.executed_id = record.planner_id) := by
            intro hidentities
            have := (recordIdentitiesMatch_eq_true_iff record).2 hidentities
            simp [hmatch] at this
          simp [identityScanFrom, hmatch, hrecord]
      | true =>
          have hrecord : record.authenticated_id = record.planner_id ∧
              record.executed_id = record.planner_id :=
            (recordIdentitiesMatch_eq_true_iff record).1 hmatch
          simp [identityScanFrom, hmatch, hrecord, ih]

theorem orderScanFrom_accepts_iff
    {Observation Execution : Type}
    (position : Nat)
    (expected : List CallId)
    (records : List (JoinedRecord Observation Execution))
    (hcount : expected.length = records.length) :
    (orderScanFrom position expected records).2 = true ↔
      records.map (fun record => record.planner_id) = expected := by
  induction expected generalizing position records with
  | nil =>
      cases records with
      | nil =>
          simp [orderScanFrom]
      | cons record remaining =>
          simp at hcount
  | cons expected remainingExpected ih =>
      cases records with
      | nil =>
          simp at hcount
      | cons record remainingRecords =>
          have htail :
              remainingExpected.length = remainingRecords.length := by
            simpa using hcount
          cases hmatch :
              callIdMatchesModel record.planner_id expected with
          | false =>
              have hne : record.planner_id ≠ expected := by
                intro heq
                have :=
                  (callIdMatchesModel_eq_true_iff
                    record.planner_id expected).2 heq
                simp [hmatch] at this
              simp [orderScanFrom, hmatch, hne]
          | true =>
              have heq : record.planner_id = expected :=
                (callIdMatchesModel_eq_true_iff
                  record.planner_id expected).1 hmatch
              simp [orderScanFrom, hmatch, heq, ih _ _ htail]

theorem rejectedCallIds_eq_nil_iff
    {Observation Execution : Type}
    (records : List (JoinedRecord Observation Execution)) :
    rejectedCallIds records = [] ↔
      ∀ record ∈ records, record.accepted = true := by
  induction records with
  | nil =>
      simp [rejectedCallIds]
  | cons record remaining ih =>
      cases haccepted : record.accepted <;>
        simp [rejectedCallIds, haccepted, ih]

private theorem identityLoopFuel_exact
    {Observation Execution : Type}
    (consumed remaining : List (JoinedRecord Observation Execution)) :
    loopFuel
        (fun (state : Usize × Bool) =>
          app_verifier.app_verify_accepted_join_projection_core_loop0.body
            ⟨consumed ++ remaining⟩ state.1 state.2)
        (remaining.length + 1)
        (⟨consumed.length⟩, true) =
      let scanned := identityScanFrom consumed.length remaining
      .ok (⟨scanned.1⟩, scanned.2) := by
  induction remaining generalizing consumed with
  | nil =>
      simp [loopFuel,
        app_verifier.app_verify_accepted_join_projection_core_loop0.body,
        identityScanFrom, ark_ip_proofs.alloc.vec.Vec.len]
  | cons record remaining ih =>
      simp only [loopFuel]
      cases hauth :
          callIdMatchesModel record.authenticated_id record.planner_id with
      | false =>
          have hbody :
              app_verifier.app_verify_accepted_join_projection_core_loop0.body
                  ⟨consumed ++ record :: remaining⟩
                  ⟨consumed.length⟩ true =
                .ok (.cont (⟨consumed.length⟩, false)) := by
            simp [
              app_verifier.app_verify_accepted_join_projection_core_loop0.body,
              ark_ip_proofs.alloc.vec.Vec.len,
              ark_ip_proofs.alloc.vec.Vec.index,
              extracted_call_id_matches_eq_model, hauth]
          rw [hbody]
          simp [loopFuel,
            app_verifier.app_verify_accepted_join_projection_core_loop0.body,
            identityScanFrom, recordIdentitiesMatch, hauth,
            ark_ip_proofs.alloc.vec.Vec.len]
      | true =>
          cases hexecuted :
              callIdMatchesModel record.executed_id record.planner_id with
          | false =>
              have hbody :
                  app_verifier.app_verify_accepted_join_projection_core_loop0.body
                      ⟨consumed ++ record :: remaining⟩
                      ⟨consumed.length⟩ true =
                    .ok (.cont (⟨consumed.length⟩, false)) := by
                simp [
                  app_verifier.app_verify_accepted_join_projection_core_loop0.body,
                  ark_ip_proofs.alloc.vec.Vec.len,
                  ark_ip_proofs.alloc.vec.Vec.index,
                  extracted_call_id_matches_eq_model, hauth, hexecuted]
              rw [hbody]
              simp [loopFuel,
                app_verifier.app_verify_accepted_join_projection_core_loop0.body,
                identityScanFrom, recordIdentitiesMatch, hauth, hexecuted,
                ark_ip_proofs.alloc.vec.Vec.len]
          | true =>
              have hbody :
                  app_verifier.app_verify_accepted_join_projection_core_loop0.body
                      ⟨consumed ++ record :: remaining⟩
                      ⟨consumed.length⟩ true =
                    .ok (.cont (⟨consumed.length + 1⟩, true)) := by
                simp [
                  app_verifier.app_verify_accepted_join_projection_core_loop0.body,
                  ark_ip_proofs.alloc.vec.Vec.len,
                  ark_ip_proofs.alloc.vec.Vec.index,
                  extracted_call_id_matches_eq_model, hauth, hexecuted]
              rw [hbody]
              simpa [identityScanFrom, recordIdentitiesMatch, hauth, hexecuted]
                using
                  (ih (consumed := consumed ++ [record]))

theorem app_verify_accepted_join_projection_core_loop0_exact
    {Observation Execution : Type}
    (records : alloc.vec.Vec (JoinedRecord Observation Execution)) :
    app_verifier.app_verify_accepted_join_projection_core_loop0
        records 0#usize true =
      let scanned := identityScanFrom 0 records.val
      .ok (⟨scanned.1⟩, scanned.2) := by
  unfold app_verifier.app_verify_accepted_join_projection_core_loop0
  apply loop_eq_of_fuel (by simp)
  simpa using
    (identityLoopFuel_exact ([] :
      List (JoinedRecord Observation Execution)) records.val)

private theorem orderLoopFuel_exact
    {Observation Execution : Type}
    (consumedExpected remainingExpected : List CallId)
    (consumedRecords remainingRecords :
      List (JoinedRecord Observation Execution))
    (hconsumed : consumedExpected.length = consumedRecords.length)
    (hremaining : remainingExpected.length = remainingRecords.length) :
    loopFuel
        (fun (state : Usize × Bool) =>
          app_verifier.app_verify_accepted_join_projection_core_loop1.body
            ⟨consumedExpected ++ remainingExpected⟩
            ⟨consumedRecords ++ remainingRecords⟩
            state.1 state.2)
        (remainingExpected.length + 1)
        (⟨consumedExpected.length⟩, true) =
      let scanned :=
        orderScanFrom consumedExpected.length
          remainingExpected remainingRecords
      .ok (⟨scanned.1⟩, scanned.2) := by
  induction remainingExpected generalizing
      consumedExpected consumedRecords remainingRecords with
  | nil =>
      cases remainingRecords with
      | nil =>
          simp [loopFuel,
            app_verifier.app_verify_accepted_join_projection_core_loop1.body,
            orderScanFrom, ark_ip_proofs.alloc.vec.Vec.len]
      | cons record remaining =>
          simp at hremaining
  | cons expected remainingExpected ih =>
      cases remainingRecords with
      | nil =>
          simp at hremaining
      | cons record remainingRecords =>
          have htail :
              remainingExpected.length = remainingRecords.length := by
            simpa using hremaining
          simp only [loopFuel]
          cases hmatch :
              callIdMatchesModel record.planner_id expected with
          | false =>
              have hbody :
                  app_verifier.app_verify_accepted_join_projection_core_loop1.body
                      ⟨consumedExpected ++ expected :: remainingExpected⟩
                      ⟨consumedRecords ++ record :: remainingRecords⟩
                      ⟨consumedExpected.length⟩ true =
                    .ok (.cont (⟨consumedExpected.length⟩, false)) := by
                simp [
                  app_verifier.app_verify_accepted_join_projection_core_loop1.body,
                  ark_ip_proofs.alloc.vec.Vec.len,
                  ark_ip_proofs.alloc.vec.Vec.index,
                  extracted_call_id_matches_eq_model, hconsumed, hmatch]
              rw [hbody]
              simp [loopFuel,
                app_verifier.app_verify_accepted_join_projection_core_loop1.body,
                orderScanFrom, hmatch,
                ark_ip_proofs.alloc.vec.Vec.len]
          | true =>
              have hbody :
                  app_verifier.app_verify_accepted_join_projection_core_loop1.body
                      ⟨consumedExpected ++ expected :: remainingExpected⟩
                      ⟨consumedRecords ++ record :: remainingRecords⟩
                      ⟨consumedExpected.length⟩ true =
                    .ok (.cont (⟨consumedExpected.length + 1⟩, true)) := by
                simp [
                  app_verifier.app_verify_accepted_join_projection_core_loop1.body,
                  ark_ip_proofs.alloc.vec.Vec.len,
                  ark_ip_proofs.alloc.vec.Vec.index,
                  extracted_call_id_matches_eq_model, hconsumed, hmatch]
              rw [hbody]
              have hnext :=
                ih
                  (consumedExpected := consumedExpected ++ [expected])
                  (consumedRecords := consumedRecords ++ [record])
                  (remainingRecords := remainingRecords)
                  (by simpa using hconsumed)
                  htail
              simpa [orderScanFrom, hmatch] using hnext

theorem app_verify_accepted_join_projection_core_loop1_exact
    {Observation Execution : Type}
    (expected : alloc.vec.Vec CallId)
    (records : alloc.vec.Vec (JoinedRecord Observation Execution))
    (hcount : expected.val.length = records.val.length) :
    app_verifier.app_verify_accepted_join_projection_core_loop1
        expected records 0#usize true =
      let scanned := orderScanFrom 0 expected.val records.val
      .ok (⟨scanned.1⟩, scanned.2) := by
  unfold app_verifier.app_verify_accepted_join_projection_core_loop1
  apply loop_eq_of_fuel (by simp)
  simpa using
    (orderLoopFuel_exact
      ([] : List CallId) expected.val
      ([] : List (JoinedRecord Observation Execution)) records.val
      rfl hcount)

private theorem rejectedLoopFuel_exact
    {Observation Execution : Type}
    (consumed remaining : List (JoinedRecord Observation Execution))
    (output : List CallId) :
    loopFuel
        (fun (state : Usize × alloc.vec.Vec CallId) =>
          app_verifier.app_verify_accepted_join_projection_core_loop2.body
            ⟨consumed ++ remaining⟩ state.1 state.2)
        (remaining.length + 1)
        (⟨consumed.length⟩, ⟨output⟩) =
      .ok ⟨output ++ rejectedCallIds remaining⟩ := by
  induction remaining generalizing consumed output with
  | nil =>
      simp [loopFuel,
        app_verifier.app_verify_accepted_join_projection_core_loop2.body,
        rejectedCallIds, ark_ip_proofs.alloc.vec.Vec.len]
  | cons record remaining ih =>
      simp only [loopFuel]
      cases haccepted : record.accepted with
      | false =>
          have hbody :
              app_verifier.app_verify_accepted_join_projection_core_loop2.body
                  ⟨consumed ++ record :: remaining⟩
                  ⟨consumed.length⟩ ⟨output⟩ =
                .ok (.cont
                  (⟨consumed.length + 1⟩,
                    ⟨output ++ [record.planner_id]⟩)) := by
            simp [
              app_verifier.app_verify_accepted_join_projection_core_loop2.body,
              ark_ip_proofs.alloc.vec.Vec.len,
              ark_ip_proofs.alloc.vec.Vec.index,
              alloc.vec.Vec.push, haccepted]
          rw [hbody]
          simpa [rejectedCallIds, haccepted, List.append_assoc] using
            (ih (consumed := consumed ++ [record])
              (output := output ++ [record.planner_id]))
      | true =>
          have hbody :
              app_verifier.app_verify_accepted_join_projection_core_loop2.body
                  ⟨consumed ++ record :: remaining⟩
                  ⟨consumed.length⟩ ⟨output⟩ =
                .ok (.cont
                  (⟨consumed.length + 1⟩, ⟨output⟩)) := by
            simp [
              app_verifier.app_verify_accepted_join_projection_core_loop2.body,
              ark_ip_proofs.alloc.vec.Vec.len,
              ark_ip_proofs.alloc.vec.Vec.index, haccepted]
          rw [hbody]
          simpa [rejectedCallIds, haccepted] using
            (ih (consumed := consumed ++ [record]) (output := output))

theorem app_verify_accepted_join_projection_core_loop2_exact
    {Observation Execution : Type}
    (records : alloc.vec.Vec (JoinedRecord Observation Execution))
    (output : alloc.vec.Vec CallId) :
    app_verifier.app_verify_accepted_join_projection_core_loop2
        records 0#usize output =
      .ok ⟨output.val ++ rejectedCallIds records.val⟩ := by
  unfold app_verifier.app_verify_accepted_join_projection_core_loop2
  apply loop_eq_of_fuel (by simp)
  simpa using
    (rejectedLoopFuel_exact
      ([] : List (JoinedRecord Observation Execution))
      records.val output.val)

def acceptedJoinModel
    {Observation Execution : Type}
    (expected : alloc.vec.Vec CallId)
    (records : alloc.vec.Vec (JoinedRecord Observation Execution)) :
    core.result.Result
      (AcceptedJoinProjection Observation Execution)
      app_verifier.AppVerifyAcceptedJoinProjectionError :=
  if records.val.length ≠ expected.val.length then
    .Err
      (.OutcomeCountMismatch
        ⟨expected.val.length⟩ ⟨records.val.length⟩)
  else
    let identities := identityScanFrom 0 records.val
    if identities.2 then
      let order := orderScanFrom 0 expected.val records.val
      if order.2 then
        .Ok {
          records := records
          rejected_calls := ⟨rejectedCallIds records.val⟩
        }
      else
        .Err (.OutcomeOrderMismatch ⟨order.1⟩)
    else
      .Err (.FullIdentityMismatch ⟨identities.1⟩)

/-- The generated join projection is exactly the independent list model. -/
theorem extracted_accepted_join_projection_eq_model
    {Observation Execution : Type}
    (expected : alloc.vec.Vec CallId)
    (records : alloc.vec.Vec (JoinedRecord Observation Execution)) :
    app_verifier.app_verify_accepted_join_projection_core expected records =
      .ok (acceptedJoinModel expected records) := by
  unfold app_verifier.app_verify_accepted_join_projection_core
  by_cases hcount : records.val.length = expected.val.length
  · have hcountUsize :
        ark_ip_proofs.alloc.vec.Vec.len records =
          ark_ip_proofs.alloc.vec.Vec.len expected := by
      simp [ark_ip_proofs.alloc.vec.Vec.len, hcount]
    simp only [hcountUsize, ne_eq, not_true_eq_false, if_false]
    rw [app_verify_accepted_join_projection_core_loop0_exact]
    cases hidentities : identityScanFrom 0 records.val with
    | mk identityPosition identitiesMatch =>
        cases identitiesMatch with
        | false =>
            simp [acceptedJoinModel, hcount, hidentities]
        | true =>
            rw [app_verify_accepted_join_projection_core_loop1_exact
              expected records hcount.symm]
            cases horder : orderScanFrom 0 expected.val records.val with
            | mk orderPosition orderMatches =>
                cases orderMatches with
                | false =>
                    simp [acceptedJoinModel, hcount, hidentities, horder]
                | true =>
                    rw [app_verify_accepted_join_projection_core_loop2_exact]
                    simp [acceptedJoinModel, hcount, hidentities, horder,
                      ark_ip_proofs.alloc.vec.Vec.new]
  · have hcountUsize :
        ark_ip_proofs.alloc.vec.Vec.len records ≠
          ark_ip_proofs.alloc.vec.Vec.len expected := by
      simpa [ark_ip_proofs.alloc.vec.Vec.len] using hcount
    simp [acceptedJoinModel, hcount, hcountUsize,
      ark_ip_proofs.alloc.vec.Vec.len]

/-- Exact semantic facts retained by one successful generated join
projection. `recordsExact` preserves every observation and executed payload. -/
structure AcceptedJoinFacts
    {Observation Execution : Type}
    (expected : alloc.vec.Vec CallId)
    (records : alloc.vec.Vec (JoinedRecord Observation Execution))
    (projection : AcceptedJoinProjection Observation Execution) : Prop where
  recordsExact :
    projection.records = records
  countExact :
    records.val.length = expected.val.length
  plannerOrderExact :
    records.val.map (fun record => record.planner_id) = expected.val
  authenticatedIdentityExact :
    ∀ record ∈ records.val,
      record.authenticated_id = record.planner_id
  executedIdentityExact :
    ∀ record ∈ records.val,
      record.executed_id = record.planner_id
  rejectedCallsExact :
    projection.rejected_calls.val = rejectedCallIds records.val

/-- Success cannot manufacture, omit, reorder, or substitute a retained
record. Every identity conclusion follows from the generated comparisons. -/
theorem accepted_join_projection_success_exact
    {Observation Execution : Type}
    (expected : alloc.vec.Vec CallId)
    (records : alloc.vec.Vec (JoinedRecord Observation Execution))
    (projection : AcceptedJoinProjection Observation Execution)
    (hprojection :
      app_verifier.app_verify_accepted_join_projection_core expected records =
        .ok (.Ok projection)) :
    AcceptedJoinFacts expected records projection := by
  rw [extracted_accepted_join_projection_eq_model] at hprojection
  unfold acceptedJoinModel at hprojection
  by_cases hcount : records.val.length = expected.val.length
  · simp only [hcount, ne_eq, not_true_eq_false, if_false] at hprojection
    cases hidentities : identityScanFrom 0 records.val with
    | mk identityPosition identitiesMatch =>
        cases identitiesMatch with
        | false =>
            simp [hidentities] at hprojection
        | true =>
            simp only [hidentities, if_true] at hprojection
            cases horder : orderScanFrom 0 expected.val records.val with
            | mk orderPosition orderMatches =>
                cases orderMatches with
                | false =>
                    simp [horder] at hprojection
                | true =>
                    simp only [horder, if_true] at hprojection
                    have hprojectionExact :
                        projection = {
                          records := records
                          rejected_calls := ⟨rejectedCallIds records.val⟩
                        } :=
                      core.result.Result.Ok.inj
                        (Result.ok.inj hprojection).symm
                    subst projection
                    have hidentitiesExact :=
                      (identityScanFrom_accepts_iff
                        0 records.val).1 (by simp [hidentities])
                    have horderExact :=
                      (orderScanFrom_accepts_iff
                        0 expected.val records.val hcount.symm).1
                          (by simp [horder])
                    exact {
                      recordsExact := rfl
                      countExact := hcount
                      plannerOrderExact := horderExact
                      authenticatedIdentityExact := fun record hrecord =>
                        (hidentitiesExact record hrecord).1
                      executedIdentityExact := fun record hrecord =>
                        (hidentitiesExact record hrecord).2
                      rejectedCallsExact := rfl
                    }
  · simp [hcount] at hprojection

/-- The final acceptance check is true exactly for an empty rejected-call
vector. -/
theorem app_verify_join_acceptance_core_true_iff
    (rejected : alloc.vec.Vec CallId) :
    app_verifier.app_verify_join_acceptance_core rejected = .ok true ↔
      rejected.val = [] := by
  rcases rejected with ⟨values⟩
  cases values with
  | nil =>
      simp [app_verifier.app_verify_join_acceptance_core,
        ark_ip_proofs.alloc.vec.Vec.is_empty]
  | cons rejected remaining =>
      simp [app_verifier.app_verify_join_acceptance_core,
        ark_ip_proofs.alloc.vec.Vec.is_empty]

/-- Accepted join capstone.

The two premises are the exact generated successful projection and final
acceptance equations. The conclusion preserves every original record, proves
full identity and planner-order binding, and proves every planned call
accepted. No runtime, cryptographic, or oracle premise is used. -/
theorem accepted_join_success_binds_every_call
    {Observation Execution : Type}
    (expected : alloc.vec.Vec CallId)
    (records : alloc.vec.Vec (JoinedRecord Observation Execution))
    (projection : AcceptedJoinProjection Observation Execution)
    (hprojection :
      app_verifier.app_verify_accepted_join_projection_core expected records =
        .ok (.Ok projection))
    (haccept :
      app_verifier.app_verify_join_acceptance_core
          projection.rejected_calls =
        .ok true) :
    AcceptedJoinFacts expected records projection ∧
      ∀ record ∈ records.val, record.accepted = true := by
  let facts :=
    accepted_join_projection_success_exact
      expected records projection hprojection
  have hrejected : projection.rejected_calls.val = [] :=
    (app_verify_join_acceptance_core_true_iff
      projection.rejected_calls).1 haccept
  have hmodelEmpty : rejectedCallIds records.val = [] := by
    rw [← facts.rejectedCallsExact]
    exact hrejected
  exact
    ⟨facts,
      (rejectedCallIds_eq_nil_iff records.val).1 hmodelEmpty⟩

#print axioms extracted_accepted_join_projection_eq_model
#print axioms accepted_join_projection_success_exact
#print axioms app_verify_join_acceptance_core_true_iff
#print axioms accepted_join_success_binds_every_call

end

end Ipp.Extracted.AppVerifierAcceptedJoin
