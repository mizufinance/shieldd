import Ipp.Extracted.ShippingBundleMaterialization

/-!
Production-key functionality for constructor-derived shipping selections.

The adaptive game continues to permit arbitrary adversary values.  This module
restricts only selections which the complete replay program projects from an
output-derived production bundle.  A deterministic, fail-closed statement
materializer then makes equality of retained logical keys sufficient for
equality of the formal v1 statements.
-/

namespace Ipp.Extracted.ShippingProductionKeyFunctionality

open OracleComp
open ark_ip_proofs
open Ipp.Extracted.AppVerifierStateMachine
open Ipp.Extracted.ShippingBundleMaterialization
open Ipp.ShippingMultiStatement

noncomputable section

/-- The formal statement type selected at one exact GIPA depth. -/
abbrev ProductionFsStatement (μ : Nat) :=
  Ipp.FsStatement μ Ipp.Bls12377.Fr
    Ipp.Bls12377.g1PrimeSubgroup
    Ipp.Bls12377.g2PrimeSubgroup
    Ipp.Bls12377.ArkPairingOutput

/-- Deterministic, fail-closed materialization of a formal statement from the
complete retained production key.

The concrete closure route instantiates this function with the production VK,
SRS, and canonical-row decoders.  Returning `Option` prevents a missing or
malformed key from acquiring a caller-selected default statement. -/
structure ProductionStatementMaterializer where
  materialize :
    (μ : Nat) → ShippingStatementKey →
      Option (ProductionFsStatement μ)

/-- One formal selection is accepted by the deterministic production
statement materializer.  This predicate is intentionally separate from
`SelectionAt`; arbitrary adversary-created selections need not satisfy it. -/
def MaterializedSelectionAt
    {Call : Type}
    (materializer : ProductionStatementMaterializer)
    {μ : Nat}
    (selection : SelectionAt Call μ) : Prop :=
  materializer.materialize μ selection.logicalKey =
    some selection.statement

/-- A deterministic successful materialization makes the logical key
functional for formal statements. -/
theorem ProductionStatementMaterializer.keyDeterminesStatementAt
    {Call : Type}
    (materializer : ProductionStatementMaterializer)
    (μ : Nat) :
    KeyDeterminesStatementAt
      (MaterializedSelectionAt (Call := Call) materializer) := by
  intro left right hleft hright hkey
  apply Option.some.inj
  calc
    some left.statement =
        materializer.materialize μ left.logicalKey := hleft.symm
    _ = materializer.materialize μ right.logicalKey := by rw [hkey]
    _ = some right.statement := hright

/-- Exact-size selections which occur in the planner-ordered list constructed
from one particular production bundle. -/
def BundleOutputDerivedSelectionAt
    {declared : Aeneas.Std.alloc.vec.Vec ExpectedCall}
    {expected : Aeneas.Std.alloc.vec.Vec CallId}
    {results : Aeneas.Std.alloc.vec.Vec CallResult}
    (bundle : OutputDerivedShippingBundle declared expected results)
    (μ : Nat)
  (selection : SelectionAt CallId μ) : Prop :=
  (⟨μ, selection⟩ : PackedSelection CallId) ∈ bundle.selections

/-- A selection materialized by some successful production bundle.

Different replay branches may select different bundles after seeing different
oracle answers.  The existential therefore ranges over production bundles
rather than fixing one bundle before the adaptive execution. -/
def OutputDerivedSelectionAt
    (μ : Nat)
    (selection : SelectionAt CallId μ) : Prop :=
  ∃ (declared : Aeneas.Std.alloc.vec.Vec ExpectedCall)
    (expected : Aeneas.Std.alloc.vec.Vec CallId)
    (results : Aeneas.Std.alloc.vec.Vec CallResult)
    (bundle : OutputDerivedShippingBundle declared expected results),
      BundleOutputDerivedSelectionAt bundle μ selection

/-- Exact execution equations needed to share one statement materializer
across every call produced by the shipping construction.

The right-hand side is the existing constructor-derived semantic statement,
not a caller-selected statement equality.  `selectionExact` below composes
this equation with the already-proved shipping input materialization. -/
structure OutputDerivedStatementMaterialization where
  materializer : ProductionStatementMaterializer
  inputExact :
    ∀ {declared : Aeneas.Std.alloc.vec.Vec ExpectedCall}
      {expected : Aeneas.Std.alloc.vec.Vec CallId}
      {results : Aeneas.Std.alloc.vec.Vec CallResult}
      (bundle : OutputDerivedShippingBundle declared expected results)
      (id : CallId) (planned : id ∈ expected.val),
      let call := bundle.call id planned
      let semantic := bundle.semantic id planned
      materializer.materialize call.μ call.statementKey =
        some
          (semantic.semantics.statementOf
            call.construction.shippingData.input.publicClaim)

/-- Every exact-size selection in one constructor-derived bundle is accepted
by the shared deterministic statement materializer. -/
theorem OutputDerivedStatementMaterialization.materializedBundleSelection
    {declared : Aeneas.Std.alloc.vec.Vec ExpectedCall}
    {expected : Aeneas.Std.alloc.vec.Vec CallId}
    {results : Aeneas.Std.alloc.vec.Vec CallResult}
    {bundle : OutputDerivedShippingBundle declared expected results}
    (materialization : OutputDerivedStatementMaterialization)
    {μ : Nat}
    {selection : SelectionAt CallId μ}
    (derived : BundleOutputDerivedSelectionAt bundle μ selection) :
    MaterializedSelectionAt materialization.materializer selection := by
  unfold BundleOutputDerivedSelectionAt at derived
  unfold OutputDerivedShippingBundle.selections at derived
  rcases List.mem_map.1 derived with
    ⟨planned, _plannedMember, selectionExact⟩
  let call := bundle.call planned.1 planned.2
  let semantic := bundle.semantic planned.1 planned.2
  change call.packedSelection semantic = ⟨μ, selection⟩ at selectionExact
  cases selectionExact
  have aligned := call.selectionExact semantic
  unfold MaterializedSelectionAt
  rw [aligned.2.1, aligned.2.2.1]
  exact materialization.inputExact bundle planned.1 planned.2

/-- Every adaptive branch which reaches the production construction is
accepted by the same deterministic statement materializer, even when
different branches materialize different bundles. -/
theorem OutputDerivedStatementMaterialization.materializedSelection
    (materialization : OutputDerivedStatementMaterialization)
    {μ : Nat}
    {selection : SelectionAt CallId μ}
    (derived : OutputDerivedSelectionAt μ selection) :
    MaterializedSelectionAt materialization.materializer selection := by
  rcases derived with
    ⟨_declared, _expected, _results, bundle, bundleDerived⟩
  exact materialization.materializedBundleSelection bundleDerived

/-- Equal logical keys among output-derived production selections determine
one exact formal statement.  No property is asserted for selections outside
the constructor-derived bundle. -/
theorem OutputDerivedStatementMaterialization.keyDeterminesStatementAt
    (materialization : OutputDerivedStatementMaterialization)
    (μ : Nat) :
    KeyDeterminesStatementAt (OutputDerivedSelectionAt μ) := by
  intro left right hleft hright hkey
  exact
    materialization.materializer.keyDeterminesStatementAt μ
      left right
      (materialization.materializedSelection hleft)
      (materialization.materializedSelection hright)
      hkey

/-- Whole-program output-origin equation.

Only selections projected from complete replay runs are required to occur in
the output-derived bundle.  The adversary remains free to make oracle queries
and construct arbitrary rejected or non-output values before the shipping
construction and materialization path selects the verifier input. -/
def ProductionReplayOriginAt
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome CallId))
    (μ : Nat) : Prop :=
  ∀ selection,
    ReplayReachableSelectionAt game μ selection →
      OutputDerivedSelectionAt μ selection

/-- Concrete reduction of the multi-statement replay obligation to the
production output-origin equation and deterministic key materialization.

This discharges `ProductionKeyDeterminesStatementAt`; it does not assume the
common-statement fork conclusion and does not constrain arbitrary
`SelectionAt` values. -/
theorem productionKeyDeterminesStatementAt_of_outputDerived
    {game : OracleComp GlobalFsSourceSpec (PackedOutcome CallId)}
    (materialization : OutputDerivedStatementMaterialization)
    (μ : Nat)
    (origin : ProductionReplayOriginAt game μ) :
    ProductionKeyDeterminesStatementAt game μ := by
  intro left right hleft hright hkey
  exact
    materialization.keyDeterminesStatementAt μ
      left right
      (origin left hleft)
      (origin right hright)
      hkey

#print axioms ProductionStatementMaterializer.keyDeterminesStatementAt
#print axioms OutputDerivedStatementMaterialization.materializedBundleSelection
#print axioms OutputDerivedStatementMaterialization.materializedSelection
#print axioms OutputDerivedStatementMaterialization.keyDeterminesStatementAt
#print axioms productionKeyDeterminesStatementAt_of_outputDerived

end

end Ipp.Extracted.ShippingProductionKeyFunctionality
