import Ipp.Extracted.ShippingBundleAdaptiveComposition
import Ipp.ShippingMultiStatementS1Reduction

/-!
Goal invalidity and fail-closed fallback facts for adaptive shipping bundles.

This module is deliberately pointwise.  It does not turn a support witness
into a probability coupling; the deployed byte program still has to supply a
measure-preserving whole-program refinement to the global field game.
-/

namespace Ipp.ShippingBundleGoalBridge

open OracleSpec OracleComp
open Ipp.ShippingMultiStatement
open Ipp.Extracted.AppVerifierStateMachine
open Ipp.Extracted.ShippingBundleMaterialization
open Ipp.Extracted.ShippingBundleAdaptiveComposition

noncomputable section

/-- Canonical adaptive invalidity: the selected proof has no full padded
representation of its exact selected v1 statement. -/
def InvalidV1Selection {Call : Type} (μ : Nat)
    (selection : SelectionAt Call μ) : Prop :=
  ¬Ipp.SnarkPackV1.Refinement.HasValidRepresentation
    selection.statement selection.proof

/-- The canonical adaptive invalidity predicate has exactly the semantic
postcondition required by the common-statement S1 projection. -/
theorem invalidV1Selection_excludesRepresentation {Call : Type} :
    InvalidSelectionExcludesRepresentation
      (fun μ selection => InvalidV1Selection (Call := Call) μ selection) := by
  intro μ selection hinvalid
  exact hinvalid

/-- Invalidity of the independently specified ordered real prefix implies
the canonical full-padded invalidity used by the adaptive S1 game. -/
theorem invalidV1Selection_of_invalidRealPrefix
    {Call : Type} {μ : Nat}
    (selection : SelectionAt Call μ)
    (realCount : Nat) (hcount : realCount ≤ 2 ^ μ)
    (hinvalid :
      ¬Ipp.SnarkPackV1.Refinement.HasValidRealPrefixRepresentation
        selection.statement selection.proof realCount hcount) :
    InvalidV1Selection μ selection :=
  Ipp.SnarkPackV1.Refinement.invalid_realPrefix_implies_invalid_padded
    selection.statement selection.proof realCount hcount hinvalid

/-- Canonical fallback for the pure least-invalid projection.  It retains the
exact selected statement and proof but is rejected definitionally. -/
def rejectedPackedOutcome {Call : Type}
    (selection : PackedSelection Call) : PackedOutcome Call :=
  match selection with
  | ⟨μ, selected⟩ =>
      ⟨μ, {
        selection := selected
        verifierResult := Ipp.rejectedResult selected.proof
      }⟩

@[simp] theorem rejectedPackedOutcome_selection {Call : Type}
    (selection : PackedSelection Call) :
    (rejectedPackedOutcome selection).selection = selection := by
  rcases selection with ⟨μ, selected⟩
  rfl

@[simp] theorem rejectedPackedOutcome_accept {Call : Type}
    (selection : PackedSelection Call) :
    (rejectedPackedOutcome selection).accept = false := by
  rcases selection with ⟨μ, selected⟩
  rfl

/-- The fallback cannot manufacture an invalid-accepted event, for any
invalidity predicate. -/
theorem rejectedPackedOutcome_not_invalidAccepted
    {Call : Type}
    (invalid : (μ : Nat) → SelectionAt Call μ → Prop)
    (selection : PackedSelection Call) :
    ¬InvalidAccepted invalid (rejectedPackedOutcome selection) := by
  rcases selection with ⟨μ, selected⟩
  simp [rejectedPackedOutcome, InvalidAccepted, Ipp.rejectedResult]

/-- Fail-closed specialization of the existing support-level bundle
projection.  This remains a pointwise support theorem, not a distribution
refinement. -/
theorem accepted_bundle_projects_invalid_projectedFsGame_rejected
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
    ∃ output ∈
        support
          (projectedLeastInvalidBundleFsGame
            adversary invalid (rejectedPackedOutcome selection)),
      output.selection = selection ∧
        InvalidAccepted invalid output :=
  accepted_bundle_projects_invalid_projectedFsGame
    bundle reducerAccepted invalid least adversary execution
      (rejectedPackedOutcome selection)

#print axioms invalidV1Selection_excludesRepresentation
#print axioms invalidV1Selection_of_invalidRealPrefix
#print axioms rejectedPackedOutcome_not_invalidAccepted
#print axioms accepted_bundle_projects_invalid_projectedFsGame_rejected

end

end Ipp.ShippingBundleGoalBridge
