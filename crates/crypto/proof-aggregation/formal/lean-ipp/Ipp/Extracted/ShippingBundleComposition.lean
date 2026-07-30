import Ipp.Extracted.ShippingVerifierComposition
import Ipp.Extracted.ShippingStatementConstruction

/-!
Bundle-level composition for the extracted application planner and reducer.

The async Rust caller is not extracted here.  Its exact residual obligations
are split between `ShippingPlannedCall`, which selects concrete data aligned
with the extracted plan/result vectors, and `ShippingPerCallRefinement`, which
supplies the raw adapter execution and named external boundaries for that
selected call.  Neither record states SnarkPack-v1 or goal acceptance.
-/

namespace Ipp.Extracted.ShippingBundleComposition

open Aeneas Aeneas.Std Result
open ark_ip_proofs
open Ipp.Extracted.AppVerifierStateMachine
open Ipp.Extracted.ShippingStatementConstruction
open Ipp.Extracted.ShippingVerifierComposition

noncomputable section

local instance : Fact Ipp.Bls12377.scalarModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.scalarPrime⟩

/-- Per-call execution data not already implied by bundle acceptance.  The
global planner membership and reducer result are deliberately absent: the
bundle theorem derives and installs those facts. -/
structure ShippingCallExecutionBoundary
    {D : Type} {μ arity : Nat}
    (data : ShippingCallData D μ arity)
    (transcript : Ipp.FsTranscript μ Ipp.Bls12377.Fr) : Type where
  identityAccepted :
    app_verifier.app_verify_plan_identity_core data.call.id
        data.call.bundle_family data.call.expected_real_count
        data.call.bundle_real_count =
      .ok (.Ok data.call.id)
  paddingAccepted :
    app_verifier.app_verify_plan_padding_core data.call.id
        data.call.expected_padded_count data.call.bundle_padded_count =
      .ok (.Ok data.call.id)
  randomizerEffect : data.randomizerState
  finalRandomizerEffect : data.randomizerState
  effect : data.tippState
  finalEffect : data.tippState
  tippPairing : data.tippPairingState
  ppePairing : data.ppePairingState
  adapter :
    data.AdapterAcceptedAt transcript
      randomizerEffect finalRandomizerEffect effect finalEffect
      tippPairing ppePairing

/-- Install the two facts supplied once by bundle acceptance into the existing
raw per-call execution record. -/
def ShippingCallExecutionBoundary.toAccepted
    {D : Type} {μ arity : Nat}
    {data : ShippingCallData D μ arity}
    {transcript : Ipp.FsTranscript μ Ipp.Bls12377.Fr}
    (boundary : ShippingCallExecutionBoundary data transcript)
    (planned : data.call.id ∈ data.expected.val)
    (reducerAccepted :
      app_verifier.app_verify_normal_acceptance_core
          data.expected data.results =
        .ok (.Ok true)) :
    AcceptedShippingExecutionAt data transcript where
  planned := planned
  reducerAccepted := reducerAccepted
  identityAccepted := boundary.identityAccepted
  paddingAccepted := boundary.paddingAccepted
  randomizerEffect := boundary.randomizerEffect
  finalRandomizerEffect := boundary.finalRandomizerEffect
  effect := boundary.effect
  finalEffect := boundary.finalEffect
  tippPairing := boundary.tippPairing
  ppePairing := boundary.ppePairing
  adapter := boundary.adapter

/-- Exact residual production boundary for one asynchronously executed call.

The linkage equations prevent a witness from selecting unrelated declared,
planned, or reducer data.  `execution` contains only concrete extracted
result/effect equations.  `refinement` and `challengeAnswers` are precisely the
inputs of the existing per-call refinement theorem. -/
structure ShippingBundleCallWitness
    (declared : alloc.vec.Vec ExpectedCall)
    (expected : alloc.vec.Vec CallId)
    (results : alloc.vec.Vec CallResult)
    (id : CallId) where
  D : Type
  μ : Nat
  arity : Nat
  data : ShippingCallData D μ arity
  transcript : Ipp.FsTranscript μ Ipp.Bls12377.Fr
  expectedExact : data.expected = expected
  resultsExact : data.results = results
  idExact : data.call.id = id
  execution : ShippingCallExecutionBoundary data transcript
  refinement : ShippingVerifierRefinementContracts data
  applicationDeclaredExact : refinement.application.declared = declared
  challengeAnswers :
    ArkworksChallengeOracleAnswers data.primitive data.serialization
      data.proof transcript execution.effect

/-- One exact planned call selected from the bundle's concrete plan and
result vectors.  Static application construction is stored here; no adapter
execution or semantic refinement fact is part of the selection. -/
structure ShippingPlannedCall
    (declared : alloc.vec.Vec ExpectedCall)
    (expected : alloc.vec.Vec CallId)
    (results : alloc.vec.Vec CallResult)
    (id : CallId) where
  D : Type
  μ : Nat
  arity : Nat
  data : ShippingCallData D μ arity
  transcript : Ipp.FsTranscript μ Ipp.Bls12377.Fr
  expectedExact : data.expected = expected
  resultsExact : data.results = results
  idExact : data.call.id = id
  application : ShippingApplicationConstruction data
  applicationDeclaredExact : application.declared = declared
  wire : WireRowDecoder μ (Fin arity → Ipp.Bls12377.Fr)
  constructor : ConstructorExecution
  constructorCallExact : constructor.call = data.call
  constructorRepresents :
    ConstructorArgumentsRepresent (arity := arity)
      wire constructor data.input
  shippingAccepted : Bool
  shippingResult : app_verifier.AppVerifyShippingResult
  shippingResultConstruction :
    app_verifier.app_verify_shipping_result_from_parts
        constructor.output shippingAccepted =
      .ok shippingResult
  resultRecorded : shippingResult.result ∈ results.val

/-- Exact facts retained by the production result constructor and the
shipping-input constructor beneath it. -/
theorem ShippingPlannedCall.productionResultExact
    {declared : alloc.vec.Vec ExpectedCall}
    {expected : alloc.vec.Vec CallId}
    {results : alloc.vec.Vec CallResult}
    {id : CallId}
    (call : ShippingPlannedCall declared expected results id) :
    call.shippingResult.input = call.constructor.output ∧
      call.shippingResult.result.id = call.data.call.id ∧
      call.shippingResult.result.accepted = call.shippingAccepted ∧
      call.shippingResult.result ∈ results.val ∧
      OutputRetainsShippingInput (arity := call.arity)
        call.wire call.constructor call.data.input := by
  have hresult :=
    Ipp.Extracted.AppVerifierStateMachine.extracted_shipping_result_success_retains_exact
        call.constructor.output call.shippingAccepted call.shippingResult
        call.shippingResultConstruction
  have hcall : call.constructor.output.call = call.data.call := by
    rw [call.constructor.outputExact]
    exact call.constructorCallExact
  exact ⟨hresult.1,
    hresult.2.1.trans (congrArg (fun plannedCall => plannedCall.id) hcall),
    hresult.2.2, call.resultRecorded,
    accepted_constructor_retains_shipping_input call.constructorRepresents⟩

/-- Per-call facts that remain external after exact plan/result selection.
Each field is one raw execution or named refinement boundary; this record
contains no SnarkPack-v1 or goal-acceptance conclusion. -/
structure ShippingPerCallRefinement
    {declared : alloc.vec.Vec ExpectedCall}
    {expected : alloc.vec.Vec CallId}
    {results : alloc.vec.Vec CallResult}
    {id : CallId}
    (call : ShippingPlannedCall declared expected results id) where
  execution :
    ShippingCallExecutionBoundary call.data call.transcript
  external : ShippingVerifierExternalContracts call.data
  challengeAnswers :
    ArkworksChallengeOracleAnswers call.data.primitive
      call.data.serialization call.data.proof call.transcript execution.effect

/-- Assemble the internal per-call composition record from an exact planned
call and its individually named refinement data.  This is construction, not a
caller-supplied semantic witness. -/
def ShippingPlannedCall.toWitness
    {declared : alloc.vec.Vec ExpectedCall}
    {expected : alloc.vec.Vec CallId}
    {results : alloc.vec.Vec CallResult}
    {id : CallId}
    (call : ShippingPlannedCall declared expected results id)
    (perCall : ShippingPerCallRefinement call) :
    ShippingBundleCallWitness declared expected results id where
  D := call.D
  μ := call.μ
  arity := call.arity
  data := call.data
  transcript := call.transcript
  expectedExact := call.expectedExact
  resultsExact := call.resultsExact
  idExact := call.idExact
  execution := perCall.execution
  refinement :=
    {
      application := call.application
      external := perCall.external
    }
  applicationDeclaredExact := call.applicationDeclaredExact
  challengeAnswers := perCall.challengeAnswers

/-- Bundle-wide production construction.  Every planned full identifier
selects exact concrete call data aligned with the one plan/result vector, and
then supplies only the raw per-call execution and named external refinement
facts for that selected call. -/
structure ShippingBundleConstruction
    (declared : alloc.vec.Vec ExpectedCall)
    (expected : alloc.vec.Vec CallId)
    (results : alloc.vec.Vec CallResult) where
  call :
    ∀ (id : CallId), id ∈ expected.val →
      ShippingPlannedCall declared expected results id
  perCall :
    ∀ (id : CallId) (planned : id ∈ expected.val),
      ShippingPerCallRefinement (call id planned)

/-- Semantic output for one bundle call.  Unlike
`ShippingBundleCallWitness`, this record contains the v1 acceptance conclusion
and the canonical input-binding facts derived by the per-call theorem. -/
structure RefinedShippingBundleCall
    (expected : alloc.vec.Vec CallId)
    (results : alloc.vec.Vec CallResult)
    (id : CallId) where
  D : Type
  μ : Nat
  arity : Nat
  data : ShippingCallData D μ arity
  transcript : Ipp.FsTranscript μ Ipp.Bls12377.Fr
  expectedExact : data.expected = expected
  resultsExact : data.results = results
  idExact : data.call.id = id
  supported : data.contract.supported data.input
  familyRegistered : data.input.family.Registered
  represents :
    Ipp.ShippingV1.RepresentsShippingInput data.projection data.input
      data.statement data.proof
  validCounts : Ipp.ShippingV1.ValidCounts data.input
  repeatFinalPadding : Ipp.ShippingV1.RepeatFinalPadding data.input
  accepts :
    Ipp.SnarkPackV1.Accepts data.statement data.proof transcript

/-- A bundle call refines v1 when its exact semantic record is inhabited. -/
def BundleCallRefinesV1
    (expected : alloc.vec.Vec CallId)
    (results : alloc.vec.Vec CallResult)
    (id : CallId) : Prop :=
  Nonempty (RefinedShippingBundleCall expected results id)

/-- The residual production witness and the two global bundle facts compose
through the existing concrete per-call refinement theorem. -/
theorem ShippingBundleCallWitness.refinesV1
    {declared : alloc.vec.Vec ExpectedCall}
    {expected : alloc.vec.Vec CallId}
    {results : alloc.vec.Vec CallResult}
    {id : CallId}
    (witness : ShippingBundleCallWitness declared expected results id)
    (planned : id ∈ expected.val)
    (reducerAccepted :
      app_verifier.app_verify_normal_acceptance_core expected results =
        .ok (.Ok true)) :
    BundleCallRefinesV1 expected results id := by
  have planned' : witness.data.call.id ∈ witness.data.expected.val := by
    rw [witness.expectedExact, witness.idExact]
    exact planned
  have reducerAccepted' :
      app_verifier.app_verify_normal_acceptance_core
          witness.data.expected witness.data.results =
        .ok (.Ok true) := by
    rw [witness.expectedExact, witness.resultsExact]
    exact reducerAccepted
  let execution :=
    witness.execution.toAccepted planned' reducerAccepted'
  have refined :=
    execution.refines witness.refinement witness.challengeAnswers
  exact ⟨{
    D := witness.D
    μ := witness.μ
    arity := witness.arity
    data := witness.data
    transcript := witness.transcript
    expectedExact := witness.expectedExact
    resultsExact := witness.resultsExact
    idExact := witness.idExact
    supported := refined.supported
    familyRegistered := refined.familyRegistered
    represents := refined.represents
    validCounts := refined.app.validCounts
    repeatFinalPadding := refined.app.repeatFinalPadding
    accepts := refined.accepts
  }⟩

/-- Exact planned-call selection plus raw per-call refinement data is
sufficient to invoke the existing per-call v1 theorem. -/
theorem ShippingPlannedCall.refinesV1
    {declared : alloc.vec.Vec ExpectedCall}
    {expected : alloc.vec.Vec CallId}
    {results : alloc.vec.Vec CallResult}
    {id : CallId}
    (call : ShippingPlannedCall declared expected results id)
    (perCall : ShippingPerCallRefinement call)
    (planned : id ∈ expected.val)
    (reducerAccepted :
      app_verifier.app_verify_normal_acceptance_core expected results =
        .ok (.Ok true)) :
    BundleCallRefinesV1 expected results id :=
  (call.toWitness perCall).refinesV1 planned reducerAccepted

/-- Exact bundle-level result: the plan is the extracted planner's unique
output, order tags do not repeat, result cardinality is exact, every planned
full ID has exactly one accepted result, and every planned call refines a
canonical accepted SnarkPack-v1 call. -/
structure ShippingBundleRefinesV1
    (declared : alloc.vec.Vec ExpectedCall)
    (expected : alloc.vec.Vec CallId)
    (results : alloc.vec.Vec CallResult) : Prop where
  planExact : expected.val = planIdsModel declared.val
  orderTagsNoDuplicate :
    (expected.val.map (fun id => id.order_index.val)).Nodup
  resultCountExact : results.val.length = expected.val.length
  uniqueAccepted :
    ∀ id ∈ expected.val, matchingAcceptances id results.val = [true]
  calls :
    ∀ id ∈ expected.val, BundleCallRefinesV1 expected results id

/-- Generic reducer composition.  This theorem is the bundle combinator used
for v1 below and can also lift independently proved per-call quantitative goal
theorems without changing the application proof. -/
theorem accepted_bundle_lifts_per_call_claim
    (expected : alloc.vec.Vec CallId)
    (results : alloc.vec.Vec CallResult)
    (claim : CallId → Prop)
    (reducerAccepted :
      app_verifier.app_verify_normal_acceptance_core expected results =
        .ok (.Ok true))
    (perCall :
      ∀ id, id ∈ expected.val →
        matchingAcceptances id results.val = [true] →
        claim id) :
    ∀ id ∈ expected.val, claim id := by
  have accepted :=
    (app_reduce_accepts_iff_all_expected_accept expected results).1
      reducerAccepted
  intro id planned
  exact perCall id planned (accepted.2 id planned)

/-- Compose the extracted planner and fail-closed reducer with the exact
planned-call construction.  Call selection is aligned once with the concrete
plan/result vectors; raw execution and named refinement fields are supplied
separately and the per-call composition witness is built internally. -/
theorem accepted_shipping_bundle_refines_all_v1
    (declared : alloc.vec.Vec ExpectedCall)
    (expected : alloc.vec.Vec CallId)
    (results : alloc.vec.Vec CallResult)
    (plan :
      app_verifier.app_verify_plan_ids_core declared = .ok expected)
    (reducerAccepted :
      app_verifier.app_verify_normal_acceptance_core expected results =
        .ok (.Ok true))
    (construction :
      ShippingBundleConstruction declared expected results) :
    ShippingBundleRefinesV1 declared expected results := by
  have planExact : expected.val = planIdsModel declared.val := by
    rw [app_plan_deterministic_exact declared] at plan
    exact
      congrArg (fun ids : alloc.vec.Vec CallId => ids.val)
        (Result.ok.inj plan).symm
  have reduced :=
    (app_reduce_accepts_iff_all_expected_accept expected results).1
      reducerAccepted
  refine {
    planExact := planExact
    orderTagsNoDuplicate := ?_
    resultCountExact := reduced.1
    uniqueAccepted := reduced.2
    calls := ?_
  }
  · rw [planExact]
    exact (app_plan_complete_noDuplicate declared).2
  · apply accepted_bundle_lifts_per_call_claim expected results
      (BundleCallRefinesV1 expected results) reducerAccepted
    intro id planned _accepted
    let call := construction.call id planned
    let perCall := construction.perCall id planned
    exact call.refinesV1 perCall planned reducerAccepted

#print axioms ShippingCallExecutionBoundary.toAccepted
#print axioms ShippingPlannedCall.productionResultExact
#print axioms ShippingPlannedCall.toWitness
#print axioms ShippingBundleCallWitness.refinesV1
#print axioms ShippingPlannedCall.refinesV1
#print axioms accepted_bundle_lifts_per_call_claim
#print axioms accepted_shipping_bundle_refines_all_v1

end

end Ipp.Extracted.ShippingBundleComposition
