import Ipp.Extracted.ShippingProductionKeyFunctionality

/-!
Adaptive bundle composition after output-derived call materialization.

The production planner order is retained through the formal bundle run.  The
least invalid planned selection is therefore the least invalid formal output,
and reducer acceptance forces that exact output to accept.  A final pure
projection turns the one shared-cache bundle program into the single-output
game consumed by the existing multi-statement fork/S1 layer.

The remaining deployment obligation is exactly
`SharedCacheBundleExecutionContract`: a whole-program coupling must show that
the concrete sequential verifier run produces the ordered formal run.  No
fresh-call or fixed-statement soundness premise is introduced here.
-/

namespace Ipp.Extracted.ShippingBundleAdaptiveComposition

open OracleSpec OracleComp
open ark_ip_proofs
open Ipp.Extracted.AppVerifierStateMachine
open Ipp.Extracted.ShippingBundleMaterialization
open Ipp.ShippingMultiStatement

noncomputable section

/-- The deterministic selector exposes the exact planner prefix before its
answer. Every selection in that prefix is valid, and the selected call is
invalid. This makes "least ordered" an explicit theorem rather than relying
only on the recursive definition. -/
theorem leastInvalidSelection?_prefix
    {Call : Type}
    (invalid : (μ : Nat) → SelectionAt Call μ → Prop)
    {selections : List (PackedSelection Call)}
    {selection : PackedSelection Call}
    (least :
      leastInvalidSelection? invalid selections = some selection) :
    ∃ prefix suffix,
      selections = prefix ++ selection :: suffix ∧
        (∀ prior ∈ prefix,
          ¬ InvalidSelection invalid prior) ∧
        InvalidSelection invalid selection := by
  classical
  induction selections with
  | nil =>
      simp [leastInvalidSelection?] at least
  | cons head tail ih =>
      simp only [leastInvalidSelection?] at least
      split at least
      · rename_i invalidHead
        simp only [Option.some.injEq] at least
        subst selection
        exact
          ⟨[], tail, rfl, by simp, invalidHead⟩
      · rename_i validHead
        rcases ih least with
          ⟨prefix, suffix, splitExact, prefixValid, selectedInvalid⟩
        refine
          ⟨head :: prefix, suffix, ?_, ?_, selectedInvalid⟩
        · simp [splitExact]
        · intro prior priorMember
          rcases List.mem_cons.1 priorMember with priorHead | priorTail
          · subst prior
            exact validHead
          · exact prefixValid prior priorTail

/-- Selecting the first invalid output and then forgetting its verifier
result is exactly selection of the first invalid planned input. -/
theorem leastInvalidSelection?_map_outcomes
    {Call : Type}
    (invalid : (μ : Nat) → SelectionAt Call μ → Prop)
    (outputs : List (PackedOutcome Call)) :
    leastInvalidSelection? invalid
        (outputs.map PackedOutcome.selection) =
      Option.map PackedOutcome.selection
        (leastInvalidOutcome? invalid outputs) := by
  classical
  induction outputs with
  | nil => rfl
  | cons head tail ih =>
      rcases head with ⟨μ, output⟩
      by_cases hinvalid : invalid μ output.selection
      · simp [leastInvalidSelection?, leastInvalidOutcome?,
          InvalidSelection, InvalidOutput, hinvalid]
      · simp [leastInvalidSelection?, leastInvalidOutcome?,
          InvalidSelection, InvalidOutput, hinvalid, ih]

/-- Exact ordered-output consequence of the selector commutation theorem.
This is stronger than mere membership: it identifies the formal output
selected by the fork game with the constructor-derived least invalid call. -/
theorem leastInvalidOutcome?_exact_of_selectionsExact
    {Call : Type}
    (invalid : (μ : Nat) → SelectionAt Call μ → Prop)
    {outputs : List (PackedOutcome Call)}
    {selections : List (PackedSelection Call)}
    {selection : PackedSelection Call}
    (selectionsExact :
      outputs.map PackedOutcome.selection = selections)
    (least :
      leastInvalidSelection? invalid selections = some selection) :
    ∃ output : PackedOutcome Call,
      leastInvalidOutcome? invalid outputs = some output ∧
        output.selection = selection := by
  have mapped :
      Option.map PackedOutcome.selection
          (leastInvalidOutcome? invalid outputs) =
        some selection := by
    rw [← leastInvalidSelection?_map_outcomes, selectionsExact, least]
  cases houtput : leastInvalidOutcome? invalid outputs with
  | none =>
      simp [houtput] at mapped
  | some output =>
      refine ⟨output, houtput, ?_⟩
      simpa [houtput] using mapped

/-- Every production result retained in an accepted reducer run has the
accepted bit set.  The proof ranges over the exact planner-ordered record
list, not over an unrelated per-call witness. -/
theorem OutputDerivedShippingBundle.recordedCalls_allAccepted
    {declared : Aeneas.Std.alloc.vec.Vec ExpectedCall}
    {expected : Aeneas.Std.alloc.vec.Vec CallId}
    {results : Aeneas.Std.alloc.vec.Vec CallResult}
    (bundle : OutputDerivedShippingBundle declared expected results)
    (reducerAccepted :
      app_verifier.app_verify_normal_acceptance_core expected results =
        .ok (.Ok true)) :
    ∀ recorded ∈ bundle.recordedCalls,
      recorded.accepted = true := by
  intro recorded member
  rw [OutputDerivedShippingBundle.recordedCalls] at member
  rcases List.mem_map.1 member with
    ⟨planned, _plannedMember, recordedExact⟩
  subst recorded
  simpa [OutputDerivedPlannedCall.recordedPackedCall] using
    bundle.allRecordedResultsAccepted reducerAccepted
      planned.1 planned.2

/-- The exact ordered run relation transports reducer acceptance to every
formal output. -/
theorem OutputDerivedShippingBundle.PackedRunMatches.bundleAcceptsAll
    {declared : Aeneas.Std.alloc.vec.Vec ExpectedCall}
    {expected : Aeneas.Std.alloc.vec.Vec CallId}
    {results : Aeneas.Std.alloc.vec.Vec CallResult}
    {bundle : OutputDerivedShippingBundle declared expected results}
    {outputs : List (PackedOutcome CallId)}
    (matches : bundle.PackedRunMatches outputs)
    (reducerAccepted :
      app_verifier.app_verify_normal_acceptance_core expected results =
        .ok (.Ok true)) :
    BundleAcceptsAll outputs := by
  intro output outputMember
  have outputAcceptMember :
      output.accept ∈ outputs.map PackedOutcome.accept :=
    List.mem_map.2 ⟨output, outputMember, rfl⟩
  have recordedAcceptMember :
      output.accept ∈
        bundle.recordedCalls.map RecordedPackedCall.accepted := by
    rw [← matches.acceptancesExact]
    exact outputAcceptMember
  rcases List.mem_map.1 recordedAcceptMember with
    ⟨recorded, recordedMember, acceptedExact⟩
  exact acceptedExact.symm.trans
    (bundle.recordedCalls_allAccepted reducerAccepted
      recorded recordedMember)

/-- Bundle acceptance selects the exact least invalid constructor-derived
call in the one formal shared-cache run.

The selected output remains in the run produced by
`MultiStatementBundleFsGame`; hence all adversarial prequeries and all earlier
planned verifier queries remain before it in the same global program. -/
theorem accepted_bundle_projects_exact_least_invalid_globalFsOutcome
    {declared : Aeneas.Std.alloc.vec.Vec ExpectedCall}
    {expected : Aeneas.Std.alloc.vec.Vec CallId}
    {results : Aeneas.Std.alloc.vec.Vec CallResult}
    (bundle : OutputDerivedShippingBundle declared expected results)
    (reducerAccepted :
      app_verifier.app_verify_normal_acceptance_core expected results =
        .ok (.Ok true))
    (invalid : (μ : Nat) → SelectionAt CallId μ → Prop)
    {selection : PackedSelection CallId}
    (least :
      leastInvalidSelection? invalid bundle.selections = some selection)
    (adversary :
      OracleComp GlobalFsSourceSpec
        (List (PackedSelection CallId)))
    (execution :
      SharedCacheBundleExecutionContract bundle adversary) :
    execution.outputs ∈
        support (MultiStatementBundleFsGame adversary) ∧
      ∃ output : PackedOutcome CallId,
        leastInvalidOutcome? invalid execution.outputs = some output ∧
          output.selection = selection ∧
          InvalidAccepted invalid output := by
  rcases
      leastInvalidOutcome?_exact_of_selectionsExact invalid
        execution.orderedExact.selectionsExact least with
    ⟨output, outputLeast, outputSelection⟩
  have allAccepted :
      BundleAcceptsAll execution.outputs :=
    execution.orderedExact.bundleAcceptsAll reducerAccepted
  have invalidAccepted :=
    bundle_acceptance_implies_least_invalid_acceptance
      invalid outputLeast allAccepted
  have invalidAccepted' : InvalidAccepted invalid output := by
    rcases output with ⟨μ, output⟩
    exact ⟨invalidAccepted.1, invalidAccepted.2⟩
  exact
    ⟨execution.globalFsRun, output, outputLeast, outputSelection,
      invalidAccepted'⟩

/-- Single-output projection used by the multi-statement fork/S1 layer.

The complete adaptive planner and sequential bundle verifier execute first,
inside one `OracleComp GlobalFsSourceSpec`.  The final step is pure, so it
cannot reset or alter the global oracle state.  The fallback is unreachable
on the accepted-invalid branch established below. -/
noncomputable def projectedLeastInvalidBundleFsGame
    {Call : Type}
    (adversary :
      OracleComp GlobalFsSourceSpec
        (List (PackedSelection Call)))
    (invalid : (μ : Nat) → SelectionAt Call μ → Prop)
    (fallback : PackedOutcome Call) :
    OracleComp GlobalFsSourceSpec (PackedOutcome Call) := do
  let outputs ← MultiStatementBundleFsGame adversary
  pure (leastInvalidOutcome? invalid outputs).getD fallback

/-- The projection is definitionally one whole bundle execution followed by
one pure result choice.  This equation is the explicit no-reset boundary. -/
theorem projectedLeastInvalidBundleFsGame_programShape
    {Call : Type}
    (adversary :
      OracleComp GlobalFsSourceSpec
        (List (PackedSelection Call)))
    (invalid : (μ : Nat) → SelectionAt Call μ → Prop)
    (fallback : PackedOutcome Call) :
    projectedLeastInvalidBundleFsGame adversary invalid fallback =
      (do
        let planned ← adversary
        let outputs ← verifyPackedBundle planned
        pure (leastInvalidOutcome? invalid outputs).getD fallback) := by
  unfold projectedLeastInvalidBundleFsGame
    MultiStatementBundleFsGame
  rw [bind_assoc]

/-- Concrete endpoint for the existing arbitrary-game multi-statement S1
machinery.  The exact least invalid planned call is an invalid accepted
output in the support of a single-output game, while all earlier-call cache
effects remain inside that game.

No adaptive-FS soundness or bundle-security conclusion is assumed.  The only
operational boundary is the exact whole-run `execution` record. -/
theorem accepted_bundle_projects_invalid_projectedFsGame
    {declared : Aeneas.Std.alloc.vec.Vec ExpectedCall}
    {expected : Aeneas.Std.alloc.vec.Vec CallId}
    {results : Aeneas.Std.alloc.vec.Vec CallResult}
    (bundle : OutputDerivedShippingBundle declared expected results)
    (reducerAccepted :
      app_verifier.app_verify_normal_acceptance_core expected results =
        .ok (.Ok true))
    (invalid : (μ : Nat) → SelectionAt CallId μ → Prop)
    {selection : PackedSelection CallId}
    (least :
      leastInvalidSelection? invalid bundle.selections = some selection)
    (adversary :
      OracleComp GlobalFsSourceSpec
        (List (PackedSelection CallId)))
    (execution :
      SharedCacheBundleExecutionContract bundle adversary)
    (fallback : PackedOutcome CallId) :
    ∃ output ∈
        support
          (projectedLeastInvalidBundleFsGame
            adversary invalid fallback),
      output.selection = selection ∧
        InvalidAccepted invalid output := by
  rcases
      accepted_bundle_projects_exact_least_invalid_globalFsOutcome
        bundle reducerAccepted invalid least adversary execution with
    ⟨_globalRun, output, outputLeast, outputSelection,
      outputInvalidAccepted⟩
  refine
    ⟨output, ?_, outputSelection, outputInvalidAccepted⟩
  rw [projectedLeastInvalidBundleFsGame, mem_support_bind_iff]
  refine ⟨execution.outputs, execution.globalFsRun, ?_⟩
  simp [outputLeast]

/-- Operational-equation form of the adaptive endpoint.

This is the form to be consumed by the eventual production/extraction root:
the root supplies exact selection, whole-list verifier execution, and ordered
result equations, and the existing deterministic composition builds the
packed run contract internally. -/
theorem accepted_bundle_projects_invalid_projectedFsGame_of_executionEquation
    {declared : Aeneas.Std.alloc.vec.Vec ExpectedCall}
    {expected : Aeneas.Std.alloc.vec.Vec CallId}
    {results : Aeneas.Std.alloc.vec.Vec CallResult}
    (bundle : OutputDerivedShippingBundle declared expected results)
    (reducerAccepted :
      app_verifier.app_verify_normal_acceptance_core expected results =
        .ok (.Ok true))
    (invalid : (μ : Nat) → SelectionAt CallId μ → Prop)
    {selection : PackedSelection CallId}
    (least :
      leastInvalidSelection? invalid bundle.selections = some selection)
    (adversary :
      OracleComp GlobalFsSourceSpec
        (List (PackedSelection CallId)))
    (execution :
      SharedCacheBundleExecutionEquation bundle adversary)
    (fallback : PackedOutcome CallId) :
    ∃ output ∈
        support
          (projectedLeastInvalidBundleFsGame
            adversary invalid fallback),
      output.selection = selection ∧
        InvalidAccepted invalid output :=
  accepted_bundle_projects_invalid_projectedFsGame
    bundle reducerAccepted invalid least adversary
      execution.toContract fallback

#print axioms leastInvalidSelection?_map_outcomes
#print axioms leastInvalidSelection?_prefix
#print axioms leastInvalidOutcome?_exact_of_selectionsExact
#print axioms OutputDerivedShippingBundle.recordedCalls_allAccepted
#print axioms OutputDerivedShippingBundle.PackedRunMatches.bundleAcceptsAll
#print axioms accepted_bundle_projects_exact_least_invalid_globalFsOutcome
#print axioms projectedLeastInvalidBundleFsGame_programShape
#print axioms accepted_bundle_projects_invalid_projectedFsGame
#print axioms accepted_bundle_projects_invalid_projectedFsGame_of_executionEquation

end

end Ipp.Extracted.ShippingBundleAdaptiveComposition
