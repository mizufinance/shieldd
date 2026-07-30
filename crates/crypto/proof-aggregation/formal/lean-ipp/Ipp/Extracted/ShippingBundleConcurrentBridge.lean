import Ipp.Extracted.ShippingBundleProgramConstruction

/-!
Accepted Tokio bundle execution at the formal shared-cache boundary.

The runtime caller retains planner-indexed join results in planner order while
the verifier closures may finish in any scheduler order.  This module erases
profiles, timings, and debug records, but retains exact per-call outputs and
chronological query logs.  It constructs the accepted-run serialization
record only; it makes no distribution or soundness claim.
-/

namespace Ipp.Extracted.ShippingBundleConcurrentBridge

open OracleSpec OracleComp
open Ipp.ShippingMultiStatement
open Ipp.ShippingBundleCachedComposition
open Ipp.Extracted.AppVerifierStateMachine
open Ipp.Extracted.ShippingBundleMaterialization
open Ipp.Extracted.ShippingBundleProgramConstruction
open Ipp.Extracted.ShippingProductionKeyFunctionality

noncomputable section

/-- One successful joined closure annotated with its planner index and actual
number of closure invocations.  A panic has no inhabitant of this accepted
carrier. -/
structure AcceptedTokioSlot
    (Profile Timing Debug : Type) where
  plannerIndex : Nat
  closureExecutions : Nat
  joined :
    ConcurrentCallObservation
      RecordedPackedCall
      (QueryLog GlobalFsSourceSpec)
      Profile Timing Debug

/-- Exact accepted-branch postconditions supplied by the extracted Tokio
caller.

The range equation rules out missing, duplicate, reordered, or unexpected
planner slots.  `semanticAtIndex` binds each joined value to the constructor-
derived call at that slot.  `closureExecutedOnce` records the operational
exactly-once fact rather than replacing it with an arbitrary proposition. -/
structure AcceptedTokioIndexedPostconditions
    {declared : Aeneas.Std.alloc.vec.Vec ExpectedCall}
    {expected : Aeneas.Std.alloc.vec.Vec CallId}
    {results : Aeneas.Std.alloc.vec.Vec CallResult}
    (bundle : OutputDerivedShippingBundle declared expected results)
    (Profile Timing Debug : Type)
    (observations :
      List
        (ConcurrentCallObservation
          RecordedPackedCall
          (QueryLog GlobalFsSourceSpec)
          Profile Timing Debug)) : Prop where
  slots : List (AcceptedTokioSlot Profile Timing Debug)
  observationsExact :
    slots.map AcceptedTokioSlot.joined =
      observations
  plannerIndicesExact :
    slots.map AcceptedTokioSlot.plannerIndex =
      List.range bundle.recordedCalls.length
  countExact :
    slots.length = bundle.recordedCalls.length
  closureExecutedOnce :
    ∀ slot ∈ slots,
      slot.closureExecutions = 1
  semanticAtIndex :
    ∀ slot ∈ slots,
      bundle.recordedCalls.get? slot.plannerIndex =
        some slot.joined.semantic

/-- Concrete call-local chronological trace postcondition.

The output must be the formal verifier result for the exact production
selection under the same answer function, and the retained trace must be the
complete chronological query log of that execution. -/
def CallLocalChronologicalTraceExact
    (answer : QueryImpl GlobalFsSourceSpec Id)
    (recorded : RecordedPackedCall)
    (trace : QueryLog GlobalFsSourceSpec) : Prop :=
  ∃ output : PackedOutcome CallId,
    RecordedPackedCall.Matches recorded output ∧
      evalWithAnswerFn answer
          (verifyPackedSelection recorded.selection) =
        output ∧
      evalWithAnswerFn answer
          (verifyPackedSelection recorded.selection).withQueryLog =
        (output, trace)

/-- `AcceptedConcurrentSemanticProjection` with concrete indexed Tokio and
chronological-trace postconditions installed. -/
abbrev AcceptedTokioSemanticProjection
    {declared : Aeneas.Std.alloc.vec.Vec ExpectedCall}
    {expected : Aeneas.Std.alloc.vec.Vec CallId}
    {results : Aeneas.Std.alloc.vec.Vec CallResult}
    (bundle : OutputDerivedShippingBundle declared expected results)
    (answer : QueryImpl GlobalFsSourceSpec Id)
    (Profile Timing Debug : Type) :=
  AcceptedConcurrentSemanticProjection bundle
    (QueryLog GlobalFsSourceSpec)
    Profile Timing Debug
    (CallLocalChronologicalTraceExact answer)
    (fun observations =>
      AcceptedTokioIndexedPostconditions
        bundle Profile Timing Debug observations)
    (fun observations =>
      AcceptedTokioIndexedPostconditions
        bundle Profile Timing Debug observations)

/-- Exact relation between one retained production observation and one formal
per-call run.

`Matches` is the required typed bridge because a production observation
contains `RecordedPackedCall` while the formal run contains
`PackedOutcome`.  The second field is literal chronological-trace equality. -/
structure ObservationRunExact
    (answer : QueryImpl GlobalFsSourceSpec Id)
    {Profile Timing Debug : Type}
    (observation :
      ConcurrentCallObservation
        RecordedPackedCall
        (QueryLog GlobalFsSourceSpec)
        Profile Timing Debug)
    (run :
      PackedOutcome CallId ×
        QueryLog GlobalFsSourceSpec) : Prop where
  semanticMatches :
    RecordedPackedCall.Matches
      observation.semantic run.1
  chronologicalTraceExact :
    observation.localTrace = run.2
  verifierOutputExact :
    evalWithAnswerFn answer
        (verifyPackedSelection
          observation.semantic.selection) =
      run.1
  verifierTraceExact :
    evalWithAnswerFn answer
        (verifyPackedSelection
          observation.semantic.selection).withQueryLog =
      run

namespace ObservationRunExact

/-- The pair-level relation supplies the call-local trace predicate consumed
by the semantic projection. -/
theorem callLocalChronologicalTraceExact
    {answer : QueryImpl GlobalFsSourceSpec Id}
    {Profile Timing Debug : Type}
    {observation :
      ConcurrentCallObservation
        RecordedPackedCall
        (QueryLog GlobalFsSourceSpec)
        Profile Timing Debug}
    {run :
      PackedOutcome CallId ×
        QueryLog GlobalFsSourceSpec}
    (exact : ObservationRunExact answer observation run) :
    CallLocalChronologicalTraceExact answer
      observation.semantic observation.localTrace := by
  refine
    ⟨run.1, exact.semanticMatches,
      exact.verifierOutputExact, ?_⟩
  rw [exact.chronologicalTraceExact]
  exact exact.verifierTraceExact

end ObservationRunExact

/-- Accepted concurrent-run bridge used to construct the formal
serialization boundary.

The planner executes before the verifier closures, so its chronological log
is included in the shared-cache equivalence.  The scheduler may permute
queries from the call-local logs, but it cannot change any answer under the
one fixed answer function. -/
structure AcceptedConcurrentRunBridge
    {declared : Aeneas.Std.alloc.vec.Vec ExpectedCall}
    {expected : Aeneas.Std.alloc.vec.Vec CallId}
    {results : Aeneas.Std.alloc.vec.Vec CallResult}
    (bundle : OutputDerivedShippingBundle declared expected results)
    (preselection :
      OracleComp GlobalFsSourceSpec
        (List (PackedSelection CallId)))
    (invalid : (μ : Nat) → SelectionAt CallId μ → Prop)
    (answer : QueryImpl GlobalFsSourceSpec Id)
    (runtimeOutput : PackedOutcome CallId)
    (Profile Timing Debug : Type) : Prop where
  projection :
    AcceptedTokioSemanticProjection
      bundle answer Profile Timing Debug
  plannerLog : QueryLog GlobalFsSourceSpec
  plannerOutputExact :
    evalWithAnswerFn answer preselection =
      bundle.selections
  plannerTraceExact :
    evalWithAnswerFn answer preselection.withQueryLog =
      (bundle.selections, plannerLog)
  perCallRuns :
    List
      (PackedOutcome CallId ×
        QueryLog GlobalFsSourceSpec)
  observationRunsExact :
    List.Forall₂
      (ObservationRunExact answer)
      projection.observations perCallRuns
  schedulerLog : QueryLog GlobalFsSourceSpec
  schedulerCacheEquivalent :
    SharedAnswerCacheEquivalent answer schedulerLog
      (plannerLog ++
        (perCallRuns.map Prod.snd).flatten)
  leastExact :
    leastInvalidOutcome? invalid
        (perCallRuns.map Prod.fst) =
      some runtimeOutput

private theorem observationRuns_perCallExact
    {answer : QueryImpl GlobalFsSourceSpec Id}
    {Profile Timing Debug : Type}
    {observations :
      List
        (ConcurrentCallObservation
          RecordedPackedCall
          (QueryLog GlobalFsSourceSpec)
          Profile Timing Debug)}
    {runs :
      List
        (PackedOutcome CallId ×
          QueryLog GlobalFsSourceSpec)}
    (exact :
      List.Forall₂
        (ObservationRunExact answer)
        observations runs) :
    List.Forall₂
      (fun selection run =>
        evalWithAnswerFn answer
            (verifyPackedSelection selection) =
          run.1 ∧
        evalWithAnswerFn answer
            (verifyPackedSelection selection).withQueryLog =
          run)
      (observations.map fun observation =>
        observation.semantic.selection)
      runs := by
  induction exact with
  | nil =>
      exact .nil
  | cons headExact _tailExact ih =>
      exact
        .cons
          ⟨headExact.verifierOutputExact,
            headExact.verifierTraceExact⟩
          ih

private theorem observationRuns_packedMatches
    {answer : QueryImpl GlobalFsSourceSpec Id}
    {Profile Timing Debug : Type}
    {observations :
      List
        (ConcurrentCallObservation
          RecordedPackedCall
          (QueryLog GlobalFsSourceSpec)
          Profile Timing Debug)}
    {runs :
      List
        (PackedOutcome CallId ×
          QueryLog GlobalFsSourceSpec)}
    (exact :
      List.Forall₂
        (ObservationRunExact answer)
        observations runs) :
    List.Forall₂ RecordedPackedCall.Matches
      (observations.map
        ConcurrentCallObservation.eraseSemantic)
      (runs.map Prod.fst) := by
  induction exact with
  | nil =>
      exact .nil
  | cons headExact _tailExact ih =>
      exact
        .cons headExact.semanticMatches ih

private theorem forall₂_exists_related_left
    {α β : Type}
    {relation : α → β → Prop}
    {left : List α}
    {right : List β}
    (related : List.Forall₂ relation left right)
    {value : β}
    (member : value ∈ right) :
    ∃ input ∈ left, relation input value := by
  induction related with
  | nil =>
      simp at member
  | @cons leftHead rightHead leftTail rightTail headRelated tailRelated ih =>
      rcases List.mem_cons.1 member with headExact | tailMember
      · subst value
        exact
          ⟨leftHead, List.mem_cons_self, headRelated⟩
      · rcases ih tailMember with
          ⟨input, inputMember, inputRelated⟩
        exact
          ⟨input, List.mem_cons_of_mem leftHead inputMember,
            inputRelated⟩

namespace AcceptedConcurrentRunBridge

/-- Erasing the planner-ordered observations yields the exact production
selection order. -/
theorem observationSelectionsExact
    {declared : Aeneas.Std.alloc.vec.Vec ExpectedCall}
    {expected : Aeneas.Std.alloc.vec.Vec CallId}
    {results : Aeneas.Std.alloc.vec.Vec CallResult}
    {bundle : OutputDerivedShippingBundle declared expected results}
    {preselection :
      OracleComp GlobalFsSourceSpec
        (List (PackedSelection CallId))}
    {invalid : (μ : Nat) → SelectionAt CallId μ → Prop}
    {answer : QueryImpl GlobalFsSourceSpec Id}
    {runtimeOutput : PackedOutcome CallId}
    {Profile Timing Debug : Type}
    (bridge :
      AcceptedConcurrentRunBridge
        bundle preselection invalid answer runtimeOutput
          Profile Timing Debug) :
    bridge.projection.observations.map
        (fun observation =>
          observation.semantic.selection) =
      bundle.selections := by
  calc
    bridge.projection.observations.map
          (fun observation =>
            observation.semantic.selection) =
        (bridge.projection.observations.map
          ConcurrentCallObservation.eraseSemantic).map
            RecordedPackedCall.selection := by
      simp [List.map_map,
        ConcurrentCallObservation.eraseSemantic]
    _ =
        bundle.recordedCalls.map
          RecordedPackedCall.selection := by
      rw [bridge.projection.plannerOrderExact]
    _ = bundle.selections :=
      bundle.recordedCalls_selections

/-- Per-call formal runs retain the exact complete output-derived planner
order. -/
theorem packedRunMatches
    {declared : Aeneas.Std.alloc.vec.Vec ExpectedCall}
    {expected : Aeneas.Std.alloc.vec.Vec CallId}
    {results : Aeneas.Std.alloc.vec.Vec CallResult}
    {bundle : OutputDerivedShippingBundle declared expected results}
    {preselection :
      OracleComp GlobalFsSourceSpec
        (List (PackedSelection CallId))}
    {invalid : (μ : Nat) → SelectionAt CallId μ → Prop}
    {answer : QueryImpl GlobalFsSourceSpec Id}
    {runtimeOutput : PackedOutcome CallId}
    {Profile Timing Debug : Type}
    (bridge :
      AcceptedConcurrentRunBridge
        bundle preselection invalid answer runtimeOutput
          Profile Timing Debug) :
    bundle.PackedRunMatches
      (bridge.perCallRuns.map Prod.fst) := by
  unfold OutputDerivedShippingBundle.PackedRunMatches
  rw [← bridge.projection.plannerOrderExact]
  exact
    observationRuns_packedMatches
      bridge.observationRunsExact

/-- The observation/run relation supplies the `perCallExact` field of the
canonical serialization record. -/
theorem perCallExact
    {declared : Aeneas.Std.alloc.vec.Vec ExpectedCall}
    {expected : Aeneas.Std.alloc.vec.Vec CallId}
    {results : Aeneas.Std.alloc.vec.Vec CallResult}
    {bundle : OutputDerivedShippingBundle declared expected results}
    {preselection :
      OracleComp GlobalFsSourceSpec
        (List (PackedSelection CallId))}
    {invalid : (μ : Nat) → SelectionAt CallId μ → Prop}
    {answer : QueryImpl GlobalFsSourceSpec Id}
    {runtimeOutput : PackedOutcome CallId}
    {Profile Timing Debug : Type}
    (bridge :
      AcceptedConcurrentRunBridge
        bundle preselection invalid answer runtimeOutput
          Profile Timing Debug) :
    List.Forall₂
      (fun selection run =>
        evalWithAnswerFn answer
            (verifyPackedSelection selection) =
          run.1 ∧
        evalWithAnswerFn answer
            (verifyPackedSelection selection).withQueryLog =
          run)
      bundle.selections bridge.perCallRuns := by
  rw [← bridge.observationSelectionsExact]
  exact
    observationRuns_perCallExact
      bridge.observationRunsExact

/-- The selected runtime output accepts because it is one of the exact formal
runs and every retained production result on this accepted branch is true. -/
theorem runtimeOutputAccepted
    {declared : Aeneas.Std.alloc.vec.Vec ExpectedCall}
    {expected : Aeneas.Std.alloc.vec.Vec CallId}
    {results : Aeneas.Std.alloc.vec.Vec CallResult}
    {bundle : OutputDerivedShippingBundle declared expected results}
    {preselection :
      OracleComp GlobalFsSourceSpec
        (List (PackedSelection CallId))}
    {invalid : (μ : Nat) → SelectionAt CallId μ → Prop}
    {answer : QueryImpl GlobalFsSourceSpec Id}
    {runtimeOutput : PackedOutcome CallId}
    {Profile Timing Debug : Type}
    (bridge :
      AcceptedConcurrentRunBridge
        bundle preselection invalid answer runtimeOutput
          Profile Timing Debug) :
    runtimeOutput.accept = true := by
  have runtimeMember :
      runtimeOutput ∈ bridge.perCallRuns.map Prod.fst :=
    leastInvalidOutcome?_mem invalid bridge.leastExact
  rcases List.mem_map.1 runtimeMember with
    ⟨run, runMember, runExact⟩
  rcases
      forall₂_exists_related_left
        bridge.observationRunsExact runMember with
    ⟨observation, observationMember, observationExact⟩
  calc
    runtimeOutput.accept = run.1.accept := by
      rw [runExact]
    _ = observation.semantic.accepted :=
      observationExact.semanticMatches.2
    _ = true :=
      bridge.projection.allAccepted
        observation observationMember

/-- The least selected formal output is still one of the complete
constructor-derived production selections. -/
theorem runtimeOutputOrigin
    {declared : Aeneas.Std.alloc.vec.Vec ExpectedCall}
    {expected : Aeneas.Std.alloc.vec.Vec CallId}
    {results : Aeneas.Std.alloc.vec.Vec CallResult}
    {bundle : OutputDerivedShippingBundle declared expected results}
    {preselection :
      OracleComp GlobalFsSourceSpec
        (List (PackedSelection CallId))}
    {invalid : (μ : Nat) → SelectionAt CallId μ → Prop}
    {answer : QueryImpl GlobalFsSourceSpec Id}
    {runtimeOutput : PackedOutcome CallId}
    {Profile Timing Debug : Type}
    (bridge :
      AcceptedConcurrentRunBridge
        bundle preselection invalid answer runtimeOutput
          Profile Timing Debug) :
    OutputDerivedSelectionAt
      runtimeOutput.1 runtimeOutput.2.selection := by
  have runtimeMember :
      runtimeOutput ∈ bridge.perCallRuns.map Prod.fst :=
    leastInvalidOutcome?_mem invalid bridge.leastExact
  have selectionMember :
      runtimeOutput.selection ∈ bundle.selections := by
    rw [← bridge.packedRunMatches.selectionsExact]
    exact
      List.mem_map.2
        ⟨runtimeOutput, runtimeMember, rfl⟩
  exact
    ⟨declared, expected, results, bundle,
      selectionMember⟩

/-- Construct the exact accepted-run serialization boundary from typed Tokio
postconditions, planner execution, and per-call execution equations. -/
noncomputable def toAcceptedConcurrentBundleSerialization
    {declared : Aeneas.Std.alloc.vec.Vec ExpectedCall}
    {expected : Aeneas.Std.alloc.vec.Vec CallId}
    {results : Aeneas.Std.alloc.vec.Vec CallResult}
    {bundle : OutputDerivedShippingBundle declared expected results}
    {preselection :
      OracleComp GlobalFsSourceSpec
        (List (PackedSelection CallId))}
    {invalid : (μ : Nat) → SelectionAt CallId μ → Prop}
    {answer : QueryImpl GlobalFsSourceSpec Id}
    {runtimeOutput : PackedOutcome CallId}
    {Profile Timing Debug : Type}
    (bridge :
      AcceptedConcurrentRunBridge
        bundle preselection invalid answer runtimeOutput
          Profile Timing Debug) :
    AcceptedConcurrentBundleSerialization
      preselection invalid answer runtimeOutput where
  selections := bundle.selections
  plannerLog := bridge.plannerLog
  plannerOutputExact := bridge.plannerOutputExact
  plannerTraceExact := bridge.plannerTraceExact
  perCallRuns := bridge.perCallRuns
  perCallExact := bridge.perCallExact
  schedulerLog := bridge.schedulerLog
  schedulerCacheEquivalent :=
    bridge.schedulerCacheEquivalent
  leastExact := bridge.leastExact
  accepted := bridge.runtimeOutputAccepted
  outputOrigin := bridge.runtimeOutputOrigin

/-- The constructed accepted serialization has the exact canonical
planner-order output under the same answer function.  This remains a
single-answer-function execution equation, not a distribution equality. -/
theorem canonicalOutputExact
    {declared : Aeneas.Std.alloc.vec.Vec ExpectedCall}
    {expected : Aeneas.Std.alloc.vec.Vec CallId}
    {results : Aeneas.Std.alloc.vec.Vec CallResult}
    {bundle : OutputDerivedShippingBundle declared expected results}
    {preselection :
      OracleComp GlobalFsSourceSpec
        (List (PackedSelection CallId))}
    {invalid : (μ : Nat) → SelectionAt CallId μ → Prop}
    {answer : QueryImpl GlobalFsSourceSpec Id}
    {runtimeOutput : PackedOutcome CallId}
    {fallbackSelection : PackedSelection CallId}
    {Profile Timing Debug : Type}
    (bridge :
      AcceptedConcurrentRunBridge
        bundle preselection invalid answer runtimeOutput
          Profile Timing Debug) :
    evalWithAnswerFn answer
        (projectedLeastInvalidBundleFsGame
          preselection invalid
            (rejectedPackedOutcome fallbackSelection)) =
      runtimeOutput :=
  (bridge.toAcceptedConcurrentBundleSerialization)
    .canonicalOutputExact fallbackSelection

end AcceptedConcurrentRunBridge

#print axioms ObservationRunExact.callLocalChronologicalTraceExact
#print axioms AcceptedConcurrentRunBridge.observationSelectionsExact
#print axioms AcceptedConcurrentRunBridge.packedRunMatches
#print axioms AcceptedConcurrentRunBridge.perCallExact
#print axioms AcceptedConcurrentRunBridge.runtimeOutputAccepted
#print axioms AcceptedConcurrentRunBridge.runtimeOutputOrigin
#print axioms AcceptedConcurrentRunBridge.toAcceptedConcurrentBundleSerialization
#print axioms AcceptedConcurrentRunBridge.canonicalOutputExact

end

end Ipp.Extracted.ShippingBundleConcurrentBridge
