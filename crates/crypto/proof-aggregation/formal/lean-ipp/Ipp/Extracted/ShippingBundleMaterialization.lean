import Ipp.Extracted.ShippingBundleComposition
import Ipp.Extracted.ShippingCallMaterialization
import Ipp.ShippingMultiStatement

/-!
Deterministic bundle materialization for production shipping calls.

This module fixes every heterogeneous formal input and call identifier from
the record returned by the production constructor, then uses the extracted
planner/reducer semantics to recover the accepted result bit.  An explicit
run-level contract relates those records to `PackedOutcome`s from the one
shared-cache global Fiat--Shamir program.  The module does not assert that
contract: deployment-to-game trace/distribution coupling remains a separate
refinement.
-/

namespace Ipp.Extracted.ShippingBundleMaterialization

open Aeneas Aeneas.Std Result
open OracleSpec OracleComp
open ark_ip_proofs
open Ipp.Extracted.AppVerifierStateMachine
open Ipp.Extracted.ShippingBundleComposition
open Ipp.Extracted.ShippingCallMaterialization
open Ipp.Extracted.ShippingStatementConstruction
open Ipp.Extracted.ShippingVerifierComposition
open Ipp.ShippingMultiStatement

noncomputable section

local instance : Fact Ipp.Bls12377.scalarModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.scalarPrime⟩

/-- One planned call whose application call and complete formal input are
installed from the exact record returned by the shipping-input constructor.
The recorded result is also the exact result constructor output retained by
the bundle reducer. No verifier-acceptance or security statement occurs in
this record. -/
structure OutputDerivedPlannedCall
    (declared : alloc.vec.Vec ExpectedCall)
    (expected : alloc.vec.Vec CallId)
    (results : alloc.vec.Vec CallResult)
    (id : CallId) where
  D : Type
  μ : Nat
  arity : Nat
  template : ShippingCallData D μ arity
  wire :
    WireRowDecoder μ (Fin arity → Ipp.Bls12377.Fr)
  bytes :
    BindingOperations μ
      (Fin arity → Ipp.Bls12377.Fr) (ValidatedProof D)
  construction : OutputDerivedAcceptedCall template wire bytes
  expectedExact : construction.shippingData.expected = expected
  resultsExact : construction.shippingData.results = results
  idExact : construction.shippingData.call.id = id
  applicationDeclaredExact :
    construction.application.declared = declared
  shippingAccepted : Bool
  shippingResult : app_verifier.AppVerifyShippingResult
  shippingResultConstruction :
    app_verifier.app_verify_shipping_result_from_parts
        construction.execution.output shippingAccepted =
      .ok shippingResult
  resultRecorded : shippingResult.result ∈ results.val

/-- Exact constructor/result facts for an output-derived planned call. -/
theorem OutputDerivedPlannedCall.productionResultExact
    {declared : alloc.vec.Vec ExpectedCall}
    {expected : alloc.vec.Vec CallId}
    {results : alloc.vec.Vec CallResult}
    {id : CallId}
    (call : OutputDerivedPlannedCall declared expected results id) :
    call.shippingResult.input = call.construction.execution.output ∧
      call.shippingResult.result.id = id ∧
      call.shippingResult.result.accepted = call.shippingAccepted ∧
      call.shippingResult.result ∈ results.val := by
  have resultFacts :=
    Ipp.Extracted.AppVerifierStateMachine.extracted_shipping_result_success_retains_exact
      call.construction.execution.output call.shippingAccepted
      call.shippingResult call.shippingResultConstruction
  have outputIdExact :
      call.construction.execution.output.call.id = id := by
    exact
      (congrArg (fun plannedCall => plannedCall.id)
        call.construction.shippingDataCallExact).symm.trans call.idExact
  exact
    ⟨resultFacts.1, resultFacts.2.1.trans outputIdExact,
      resultFacts.2.2, call.resultRecorded⟩

/-- A result whose full call identifier matches contributes its accepted bit
to the reducer's exact matching projection. -/
theorem resultAccepted_mem_matchingAcceptances
    (expected : CallId)
    (result : CallResult)
    (results : List CallResult)
    (recorded : result ∈ results)
    (matches : callIdMatchesModel result.id expected = true) :
    result.accepted ∈ matchingAcceptances expected results := by
  induction results with
  | nil =>
      simp at recorded
  | cons head tail ih =>
      rcases List.mem_cons.1 recorded with hhead | htail
      · subst head
        simp [matchingAcceptances, matches]
      · cases hmatches :
          callIdMatchesModel head.id expected with
        | false =>
            simpa [matchingAcceptances, hmatches] using
              ih htail
        | true =>
            exact List.mem_cons_of_mem head.accepted
              (by
                simpa [matchingAcceptances, hmatches] using
                  ih htail)

/-- Equality of full production identifiers implies equality in the
independent reducer model. -/
theorem callIdMatchesModel_self (id : CallId) :
    callIdMatchesModel id id = true := by
  rcases id with ⟨order, segment, familyIndex, family⟩
  rcases family with ⟨proofFamily, reshapeFamily, withdrawalFamily⟩
  simp [callIdMatchesModel, familyCodeMatchesModel]

/-- The reducer's exact singleton projection forces the result bit retained
by this output-derived call to be `true`. -/
theorem OutputDerivedPlannedCall.acceptedResultExact_of_unique
    {declared : alloc.vec.Vec ExpectedCall}
    {expected : alloc.vec.Vec CallId}
    {results : alloc.vec.Vec CallResult}
    {id : CallId}
    (call : OutputDerivedPlannedCall declared expected results id)
    (unique : matchingAcceptances id results.val = [true]) :
    call.shippingAccepted = true := by
  have resultFacts := call.productionResultExact
  have member :
      call.shippingResult.result.accepted ∈
        matchingAcceptances id results.val :=
    resultAccepted_mem_matchingAcceptances id call.shippingResult.result
      results.val resultFacts.2.2.2
      (by
        rw [resultFacts.2.1]
        exact callIdMatchesModel_self id)
  rw [unique] at member
  have accepted :
      call.shippingResult.result.accepted = true := by
    simpa using member
  exact resultFacts.2.2.1.symm.trans accepted

/-- Bundle acceptance forces the exact result bit retained by this
output-derived call to be `true`. This is a state-machine theorem only; it
does not identify that bit with formal Fiat--Shamir acceptance. -/
theorem OutputDerivedPlannedCall.acceptedResultExact
    {declared : alloc.vec.Vec ExpectedCall}
    {expected : alloc.vec.Vec CallId}
    {results : alloc.vec.Vec CallResult}
    {id : CallId}
    (call : OutputDerivedPlannedCall declared expected results id)
    (planned : id ∈ expected.val)
    (reducerAccepted :
      app_verifier.app_verify_normal_acceptance_core expected results =
        .ok (.Ok true)) :
    call.shippingAccepted = true := by
  have unique :=
    (app_reduce_accepts_iff_all_expected_accept expected results).1
      reducerAccepted
  exact call.acceptedResultExact_of_unique (unique.2 id planned)

/-- Exact semantic equations needed to turn an output-derived production call
into a global multi-statement selection. They bind the installed input to the
statement/proof fields but contain no verifier result. -/
structure OutputDerivedSelectionAlignment
    {declared : alloc.vec.Vec ExpectedCall}
    {expected : alloc.vec.Vec CallId}
    {results : alloc.vec.Vec CallResult}
    {id : CallId}
    (call : OutputDerivedPlannedCall declared expected results id) where
  semantics :
    SemanticOperations call.μ call.arity Ipp.Bls12377.Fr
      Ipp.Bls12377.g1PrimeSubgroup
      Ipp.Bls12377.g2PrimeSubgroup
      Ipp.Bls12377.ArkPairingOutput (ValidatedProof call.D)
  boundary :
    ExactSemanticBoundary call.wire call.bytes semantics
  alignment :
    ShippingSemanticAlignment call.construction boundary

/-- The logical global-oracle key is projected only from the formal input
installed from the constructor output. -/
def OutputDerivedPlannedCall.statementKey
    {declared : alloc.vec.Vec ExpectedCall}
    {expected : alloc.vec.Vec CallId}
    {results : alloc.vec.Vec CallResult}
    {id : CallId}
    (call : OutputDerivedPlannedCall declared expected results id) :
    ShippingStatementKey := {
  family := call.construction.shippingData.input.family
  srsId := call.construction.shippingData.input.srsId
  serializedVk := call.construction.shippingData.input.serializedVk
  canonicalStatement :=
    call.construction.shippingData.input.canonicalStatementBytes
  statementDigest := call.construction.shippingData.input.statementDigest
  challengeContext := call.construction.shippingData.input.challengeContext
}

/-- The unique registered Blake2b family prefix for this supported
output-derived input. -/
noncomputable def OutputDerivedPlannedCall.familyDomain
    {declared : alloc.vec.Vec ExpectedCall}
    {expected : alloc.vec.Vec CallId}
    {results : alloc.vec.Vec CallResult}
    {id : CallId}
    (call : OutputDerivedPlannedCall declared expected results id)
    (semantic : OutputDerivedSelectionAlignment call) :
    List UInt8 :=
  Classical.choose
    (call.construction.shippingData.contract.familyRegistered
      call.construction.shippingData.input
      (call.construction.shippingRefinementInputs
        semantic.boundary semantic.alignment).1)

theorem OutputDerivedPlannedCall.familyDomain_registered
    {declared : alloc.vec.Vec ExpectedCall}
    {expected : alloc.vec.Vec CallId}
    {results : alloc.vec.Vec CallResult}
    {id : CallId}
    (call : OutputDerivedPlannedCall declared expected results id)
    (semantic : OutputDerivedSelectionAlignment call) :
    call.construction.shippingData.input.family.transcriptDomain =
      some (call.familyDomain semantic) :=
  Classical.choose_spec
    (call.construction.shippingData.contract.familyRegistered
      call.construction.shippingData.input
      (call.construction.shippingRefinementInputs
        semantic.boundary semantic.alignment).1)

/-- Heterogeneous global-oracle selection fixed by one constructor output.
Its statement/proof are the semantically aligned interpretations of that same
installed input. -/
noncomputable def OutputDerivedPlannedCall.selection
    {declared : alloc.vec.Vec ExpectedCall}
    {expected : alloc.vec.Vec CallId}
    {results : alloc.vec.Vec CallResult}
    {id : CallId}
    (call : OutputDerivedPlannedCall declared expected results id)
    (semantic : OutputDerivedSelectionAlignment call) :
    SelectionAt CallId call.μ := {
  call := call.construction.shippingData.call.id
  logicalKey := call.statementKey
  encodedKey := {
    familyDomain := call.familyDomain semantic
    challengeContext :=
      call.construction.shippingData.input.challengeContext
  }
  familyDomain_exact := call.familyDomain_registered semantic
  challengeContext_exact := rfl
  statement := call.construction.shippingData.statement
  proof := call.construction.shippingData.proof
}

noncomputable def OutputDerivedPlannedCall.packedSelection
    {declared : alloc.vec.Vec ExpectedCall}
    {expected : alloc.vec.Vec CallId}
    {results : alloc.vec.Vec CallResult}
    {id : CallId}
    (call : OutputDerivedPlannedCall declared expected results id)
    (semantic : OutputDerivedSelectionAlignment call) :
    PackedSelection CallId :=
  ⟨call.μ, call.selection semantic⟩

/-- The heterogeneous selection retains the exact planned full identifier and
the exact semantic statement/proof of the constructor-derived input. -/
theorem OutputDerivedPlannedCall.selectionExact
    {declared : alloc.vec.Vec ExpectedCall}
    {expected : alloc.vec.Vec CallId}
    {results : alloc.vec.Vec CallResult}
    {id : CallId}
    (call : OutputDerivedPlannedCall declared expected results id)
    (semantic : OutputDerivedSelectionAlignment call) :
    (call.selection semantic).call = id ∧
      (call.selection semantic).logicalKey = call.statementKey ∧
      (call.selection semantic).statement =
        semantic.semantics.statementOf
          call.construction.shippingData.input.publicClaim ∧
      (call.selection semantic).proof =
        semantic.semantics.proofOf
          call.construction.shippingData.input.decodedProof := by
  exact
    ⟨call.idExact, rfl, semantic.alignment.statementExact,
      semantic.alignment.proofExact⟩

/-- A heterogeneous production bundle: each identifier in the exact planner
output selects a constructor-output-derived call and its semantic alignment.
The dependent fields permit different proof sizes, row arities, and decoded
proof carriers across calls. -/
structure OutputDerivedShippingBundle
    (declared : alloc.vec.Vec ExpectedCall)
    (expected : alloc.vec.Vec CallId)
    (results : alloc.vec.Vec CallResult) where
  call :
    ∀ (id : CallId), id ∈ expected.val →
      OutputDerivedPlannedCall declared expected results id
  semantic :
    ∀ (id : CallId) (planned : id ∈ expected.val),
      OutputDerivedSelectionAlignment (call id planned)

/-- Exact extracted bundle lifting, specialized to the output-derived Rust
result bit. This invokes the common reducer combinator once, so every planned
identifier is handled under the same concrete result vector. -/
theorem OutputDerivedShippingBundle.allRecordedResultsAccepted
    {declared : alloc.vec.Vec ExpectedCall}
    {expected : alloc.vec.Vec CallId}
    {results : alloc.vec.Vec CallResult}
    (bundle : OutputDerivedShippingBundle declared expected results)
    (reducerAccepted :
      app_verifier.app_verify_normal_acceptance_core expected results =
        .ok (.Ok true)) :
    ∀ (id : CallId) (planned : id ∈ expected.val),
      (bundle.call id planned).shippingAccepted = true := by
  apply
    accepted_bundle_lifts_per_call_claim expected results
      (fun id =>
        ∀ planned : id ∈ expected.val,
          (bundle.call id planned).shippingAccepted = true)
      reducerAccepted
  intro id planned unique planned'
  have plannedExact : planned' = planned := Subsingleton.elim _ _
  simpa only [plannedExact] using
    (bundle.call id planned).acceptedResultExact_of_unique unique

/-- Planner-ordered heterogeneous global-oracle selections. -/
noncomputable def OutputDerivedShippingBundle.selections
    {declared : alloc.vec.Vec ExpectedCall}
    {expected : alloc.vec.Vec CallId}
    {results : alloc.vec.Vec CallResult}
    (bundle : OutputDerivedShippingBundle declared expected results) :
    List (PackedSelection CallId) :=
  expected.val.attach.map fun planned =>
    (bundle.call planned.1 planned.2).packedSelection
      (bundle.semantic planned.1 planned.2)

@[simp] theorem OutputDerivedShippingBundle.selections_length
    {declared : alloc.vec.Vec ExpectedCall}
    {expected : alloc.vec.Vec CallId}
    {results : alloc.vec.Vec CallResult}
    (bundle : OutputDerivedShippingBundle declared expected results) :
    bundle.selections.length = expected.val.length := by
  simp [OutputDerivedShippingBundle.selections]

/-- One planner-ordered production result projected to the exact formal
selection installed from the same constructor output.  This carrier contains
no formal verifier result and makes no acceptance or soundness claim. -/
structure RecordedPackedCall where
  selection : PackedSelection CallId
  accepted : Bool

/-- Exact formal selection and Rust result bit for one output-derived planned
call. -/
noncomputable def OutputDerivedPlannedCall.recordedPackedCall
    {declared : alloc.vec.Vec ExpectedCall}
    {expected : alloc.vec.Vec CallId}
    {results : alloc.vec.Vec CallResult}
    {id : CallId}
    (call : OutputDerivedPlannedCall declared expected results id)
    (semantic : OutputDerivedSelectionAlignment call) :
    RecordedPackedCall := {
  selection := call.packedSelection semantic
  accepted := call.shippingAccepted
}

/-- Planner-ordered production selections paired with the result bits retained
by the application reducer. -/
noncomputable def OutputDerivedShippingBundle.recordedCalls
    {declared : alloc.vec.Vec ExpectedCall}
    {expected : alloc.vec.Vec CallId}
    {results : alloc.vec.Vec CallResult}
    (bundle : OutputDerivedShippingBundle declared expected results) :
    List RecordedPackedCall :=
  expected.val.attach.map fun planned =>
    (bundle.call planned.1 planned.2).recordedPackedCall
      (bundle.semantic planned.1 planned.2)

/-- Erasing the recorded Rust bits gives exactly the output-derived formal
selection list used by the global multi-statement game. -/
theorem OutputDerivedShippingBundle.recordedCalls_selections
    {declared : alloc.vec.Vec ExpectedCall}
    {expected : alloc.vec.Vec CallId}
    {results : alloc.vec.Vec CallResult}
    (bundle : OutputDerivedShippingBundle declared expected results) :
    bundle.recordedCalls.map RecordedPackedCall.selection =
      bundle.selections := by
  simp only [OutputDerivedShippingBundle.recordedCalls,
    OutputDerivedShippingBundle.selections, List.map_map]
  rfl

/-- The record for every planned identifier occurs at its exact planner
position. -/
theorem OutputDerivedShippingBundle.recordedPackedCall_mem
    {declared : alloc.vec.Vec ExpectedCall}
    {expected : alloc.vec.Vec CallId}
    {results : alloc.vec.Vec CallResult}
    (bundle : OutputDerivedShippingBundle declared expected results)
    (id : CallId)
    (planned : id ∈ expected.val) :
    (bundle.call id planned).recordedPackedCall
        (bundle.semantic id planned) ∈
      bundle.recordedCalls := by
  unfold OutputDerivedShippingBundle.recordedCalls
  apply List.mem_map.2
  exact ⟨⟨id, planned⟩, by simp, rfl⟩

/-- Run-level relation between one retained production result and one formal
global-FS result.  It relates only the selected input and returned verifier
bit; it does not mention invalidity, probability, or a security conclusion. -/
def RecordedPackedCall.Matches
    (recorded : RecordedPackedCall)
    (output : PackedOutcome CallId) : Prop :=
  output.selection = recorded.selection ∧
    output.accept = recorded.accepted

/-- Exact ordered relation between all production result records and one
formal shared-cache bundle run. -/
def OutputDerivedShippingBundle.PackedRunMatches
    {declared : alloc.vec.Vec ExpectedCall}
    {expected : alloc.vec.Vec CallId}
    {results : alloc.vec.Vec CallResult}
    (bundle : OutputDerivedShippingBundle declared expected results)
    (outputs : List (PackedOutcome CallId)) : Prop :=
  List.Forall₂ RecordedPackedCall.Matches
    bundle.recordedCalls outputs

/-- An exact packed-run relation preserves the complete planner-ordered
selection list. -/
theorem OutputDerivedShippingBundle.PackedRunMatches.selectionsExact
    {declared : alloc.vec.Vec ExpectedCall}
    {expected : alloc.vec.Vec CallId}
    {results : alloc.vec.Vec CallResult}
    {bundle : OutputDerivedShippingBundle declared expected results}
    {outputs : List (PackedOutcome CallId)}
    (matches : bundle.PackedRunMatches outputs) :
    outputs.map PackedOutcome.selection = bundle.selections := by
  rw [← bundle.recordedCalls_selections]
  unfold OutputDerivedShippingBundle.PackedRunMatches at matches
  induction matches with
  | nil => rfl
  | cons head tail ih =>
      simp only [List.map_cons, head.1, ih]

/-- An exact packed-run relation preserves every recorded result bit in the
same planner order. -/
theorem OutputDerivedShippingBundle.PackedRunMatches.acceptancesExact
    {declared : alloc.vec.Vec ExpectedCall}
    {expected : alloc.vec.Vec CallId}
    {results : alloc.vec.Vec CallResult}
    {bundle : OutputDerivedShippingBundle declared expected results}
    {outputs : List (PackedOutcome CallId)}
    (matches : bundle.PackedRunMatches outputs) :
    outputs.map PackedOutcome.accept =
      bundle.recordedCalls.map RecordedPackedCall.accepted := by
  unfold OutputDerivedShippingBundle.PackedRunMatches at matches
  induction matches with
  | nil => rfl
  | cons head tail ih =>
      simp only [List.map_cons, head.2, ih]

/-- Precise remaining execution-refinement boundary.

The formal outputs must come from the actual global multi-statement program,
so adversarial prequeries and every earlier planned call share one cache.
`orderedExact` then couples each returned formal verifier bit to the exact Rust
bit stored for that constructor-derived call.  This is deliberately a
run-level contract: the final deployment refinement must prove a
measure-preserving whole-program coupling that supplies this record.  Merely
inhabiting it for one run is not a probability or soundness assumption. -/
structure SharedCacheBundleExecutionContract
    {declared : alloc.vec.Vec ExpectedCall}
    {expected : alloc.vec.Vec CallId}
    {results : alloc.vec.Vec CallResult}
    (bundle : OutputDerivedShippingBundle declared expected results)
    (adversary :
      OracleComp GlobalFsSourceSpec
        (List (PackedSelection CallId))) where
  outputs : List (PackedOutcome CallId)
  globalFsRun :
    outputs ∈ support (MultiStatementBundleFsGame adversary)
  orderedExact : bundle.PackedRunMatches outputs

/-- A `Forall₂` execution relation maps membership on the production side to
membership of one exactly related formal result. -/
theorem forall₂_exists_related_right
    {α β : Type}
    {relation : α → β → Prop}
    {left : List α}
    {right : List β}
    (related : List.Forall₂ relation left right)
    {value : α}
    (member : value ∈ left) :
    ∃ output ∈ right, relation value output := by
  induction related with
  | nil =>
      simp at member
  | @cons leftHead rightHead leftTail rightTail headRelated tailRelated ih =>
      rcases List.mem_cons.1 member with headExact | tailMember
      · subst value
        exact
          ⟨rightHead, List.mem_cons_self, headRelated⟩
      · rcases ih tailMember with ⟨output, outputMember, outputRelated⟩
        exact
          ⟨output, List.mem_cons_of_mem rightHead outputMember,
            outputRelated⟩

/-- Invalidity of one packed selection, before any verifier execution. -/
def InvalidSelection
    (invalid : (μ : Nat) → SelectionAt CallId μ → Prop) :
    PackedSelection CallId → Prop
  | ⟨μ, selection⟩ => invalid μ selection

/-- Deterministically select the first invalid production selection in exact
planner order. -/
noncomputable def leastInvalidSelection?
    (invalid : (μ : Nat) → SelectionAt CallId μ → Prop) :
    List (PackedSelection CallId) →
      Option (PackedSelection CallId)
  | [] => none
  | selection :: rest =>
      @ite (Option (PackedSelection CallId))
        (InvalidSelection invalid selection)
        (Classical.propDecidable _)
        (some selection)
        (leastInvalidSelection? invalid rest)

theorem leastInvalidSelection?_mem
    (invalid : (μ : Nat) → SelectionAt CallId μ → Prop)
    {selections : List (PackedSelection CallId)}
    {selection : PackedSelection CallId}
    (least :
      leastInvalidSelection? invalid selections = some selection) :
    selection ∈ selections := by
  induction selections with
  | nil =>
      simp [leastInvalidSelection?] at least
  | cons head tail ih =>
      simp only [leastInvalidSelection?] at least
      split at least
      · simp only [Option.some.injEq] at least
        subst selection
        simp
      · exact List.mem_cons_of_mem head (ih least)

theorem leastInvalidSelection?_invalid
    (invalid : (μ : Nat) → SelectionAt CallId μ → Prop)
    {selections : List (PackedSelection CallId)}
    {selection : PackedSelection CallId}
    (least :
      leastInvalidSelection? invalid selections = some selection) :
    InvalidSelection invalid selection := by
  induction selections with
  | nil =>
      simp [leastInvalidSelection?] at least
  | cons head tail ih =>
      simp only [leastInvalidSelection?] at least
      split at least
      · rename_i invalidHead
        simp only [Option.some.injEq] at least
        subst selection
        exact invalidHead
      · exact ih least

/-- Strongest deterministic least-invalid projection available before the
production/global-FS coupling: the selected value is one exact
constructor-output-derived planned call, it is invalid by the supplied goal
predicate, and the application reducer forces its recorded Rust result bit to
`true`.

No `PackedOutcome`, formal verifier acceptance, or probability is concluded.
-/
theorem accepted_bundle_projects_least_invalid_output_derived_call
    {declared : alloc.vec.Vec ExpectedCall}
    {expected : alloc.vec.Vec CallId}
    {results : alloc.vec.Vec CallResult}
    (bundle : OutputDerivedShippingBundle declared expected results)
    (reducerAccepted :
      app_verifier.app_verify_normal_acceptance_core expected results =
        .ok (.Ok true))
    (invalid : (μ : Nat) → SelectionAt CallId μ → Prop)
    {selection : PackedSelection CallId}
    (least :
      leastInvalidSelection? invalid bundle.selections = some selection) :
    InvalidSelection invalid selection ∧
      ∃ (id : CallId) (planned : id ∈ expected.val),
        selection =
          (bundle.call id planned).packedSelection
            (bundle.semantic id planned) ∧
        (bundle.call id planned).shippingAccepted = true := by
  have member := leastInvalidSelection?_mem invalid least
  rw [OutputDerivedShippingBundle.selections] at member
  rcases List.mem_map.1 member with
    ⟨planned, _plannedMem, selectionExact⟩
  refine
    ⟨leastInvalidSelection?_invalid invalid least,
      planned.1, planned.2, selectionExact.symm, ?_⟩
  exact bundle.allRecordedResultsAccepted reducerAccepted
    planned.1 planned.2

/-- Deterministic composition across the exact remaining execution boundary.

If the shipping reducer accepted and a least invalid output-derived selection
exists, the shared-cache formal run contains the exact same selection with
formal verifier acceptance.  The selected output remains a member of the
single global bundle run, so no fresh-oracle restart or maximum-over-fixed-call
argument is introduced.

This theorem does not compare distributions.  The residual production theorem
must couple the deployed byte-oracle bundle program to the global-FS program
and produce `SharedCacheBundleExecutionContract` for corresponding runs. -/
theorem accepted_bundle_projects_invalid_shared_cache_outcome
    {declared : alloc.vec.Vec ExpectedCall}
    {expected : alloc.vec.Vec CallId}
    {results : alloc.vec.Vec CallResult}
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
      ∃ output ∈ execution.outputs,
        output.selection = selection ∧
          InvalidAccepted invalid output := by
  rcases
      accepted_bundle_projects_least_invalid_output_derived_call
        bundle reducerAccepted invalid least with
    ⟨selectionInvalid, id, planned, selectionExact, shippingAccepted⟩
  have recordedMember :
      (bundle.call id planned).recordedPackedCall
          (bundle.semantic id planned) ∈
        bundle.recordedCalls :=
    bundle.recordedPackedCall_mem id planned
  rcases
      forall₂_exists_related_right
        execution.orderedExact recordedMember with
    ⟨output, outputMember, outputRelated⟩
  have outputSelection :
      output.selection = selection := by
    calc
      output.selection =
          ((bundle.call id planned).recordedPackedCall
            (bundle.semantic id planned)).selection :=
        outputRelated.1
      _ =
          (bundle.call id planned).packedSelection
            (bundle.semantic id planned) := rfl
      _ = selection := selectionExact.symm
  have outputInvalid :
      InvalidOutput invalid output := by
    have selectedInvalid :
        InvalidSelection invalid output.selection := by
      rw [outputSelection]
      exact selectionInvalid
    rcases output with ⟨μ, output⟩
    exact selectedInvalid
  have outputAccepted :
      output.accept = true := by
    calc
      output.accept =
          ((bundle.call id planned).recordedPackedCall
            (bundle.semantic id planned)).accepted :=
        outputRelated.2
      _ = (bundle.call id planned).shippingAccepted := rfl
      _ = true := shippingAccepted
  have outputInvalidAccepted :
      InvalidAccepted invalid output := by
    rcases output with ⟨μ, output⟩
    exact ⟨outputInvalid, outputAccepted⟩
  exact
    ⟨execution.globalFsRun, output, outputMember, outputSelection,
      outputInvalidAccepted⟩

#print axioms OutputDerivedPlannedCall.productionResultExact
#print axioms resultAccepted_mem_matchingAcceptances
#print axioms callIdMatchesModel_self
#print axioms OutputDerivedPlannedCall.acceptedResultExact_of_unique
#print axioms OutputDerivedPlannedCall.acceptedResultExact
#print axioms OutputDerivedPlannedCall.familyDomain_registered
#print axioms OutputDerivedPlannedCall.selectionExact
#print axioms OutputDerivedShippingBundle.allRecordedResultsAccepted
#print axioms OutputDerivedShippingBundle.selections_length
#print axioms OutputDerivedShippingBundle.recordedCalls_selections
#print axioms OutputDerivedShippingBundle.recordedPackedCall_mem
#print axioms OutputDerivedShippingBundle.PackedRunMatches.selectionsExact
#print axioms OutputDerivedShippingBundle.PackedRunMatches.acceptancesExact
#print axioms forall₂_exists_related_right
#print axioms leastInvalidSelection?_mem
#print axioms leastInvalidSelection?_invalid
#print axioms accepted_bundle_projects_least_invalid_output_derived_call
#print axioms accepted_bundle_projects_invalid_shared_cache_outcome

end

end Ipp.Extracted.ShippingBundleMaterialization
