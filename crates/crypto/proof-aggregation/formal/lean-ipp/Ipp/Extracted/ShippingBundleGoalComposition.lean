import Ipp.Extracted.ShippingBundleComposition
import Ipp.Extracted.ShippingBundleMaterialization
import Ipp.ShippingDeployedHashTraceConstruction
import Ipp.ShippingToGoal

/-!
Ordered-goal composition for an accepted shipping bundle.

The extracted planner and reducer fix the complete call list and every
accepted result.  Per-call verifier refinement then supplies SnarkPack-v1
acceptance.  This module derives the real-prefix and ordered-row goal facts;
neither fact is accepted as a premise.
-/

namespace Ipp.Extracted.ShippingBundleGoalComposition

open Aeneas Aeneas.Std Result
open OracleSpec OracleComp
open ark_ip_proofs
open Ipp.Extracted.AppVerifierStateMachine
open Ipp.Extracted.ShippingBundleComposition
open Ipp.Extracted.ShippingBundleMaterialization
open Ipp.Extracted.ShippingCallMaterialization
open Ipp.Extracted.ShippingVerifierComposition
open Ipp.ShippingDeployedHashTraceConstruction
open Ipp.ShippingRealVerifier

noncomputable section

local instance : Fact Ipp.Bls12377.scalarModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.scalarPrime⟩

/-- One exactly planned bundle call, refined through SnarkPack v1 to the
independent ordered-row goal. -/
structure RefinedShippingBundleGoalCall
    (expected : alloc.vec.Vec CallId)
    (results : alloc.vec.Vec CallResult)
    (id : CallId) where
  refined : RefinedShippingBundleCall expected results id
  realPrefixExact : Ipp.ShippingV1.RealPrefixExact refined.data.input
  goalRows :
    ∀ i : Fin refined.data.input.realCount,
      (Ipp.SnarkPackV1.Refinement.toRealGoal
        refined.data.statement refined.data.input.realCount
        (refined.data.contract.validCounts
          refined.data.input refined.supported).2).rows i =
        Ipp.SnarkPackV1.Refinement.publicRowAt
          refined.data.statement
          (Ipp.Goal.embedFin
            (refined.data.contract.validCounts
              refined.data.input refined.supported).2 i)

/-- A planned call satisfies the ordered goal when its exact refined carrier
is inhabited. -/
def BundleCallRefinesGoal
    (expected : alloc.vec.Vec CallId)
    (results : alloc.vec.Vec CallResult)
    (id : CallId) : Prop :=
  Nonempty (RefinedShippingBundleGoalCall expected results id)

/-- The complete accepted bundle has exact planner order, no duplicate order
tags, exact result cardinality, one accepted result per planned identifier,
and an ordered-goal refinement for every call. -/
structure ShippingBundleRefinesGoals
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
    ∀ id ∈ expected.val, BundleCallRefinesGoal expected results id

/-- The real-prefix and ordered-row facts are consequences of the supported
shipping input already retained by the v1 refinement. -/
def refinedShippingBundleCallToGoal
    {expected : alloc.vec.Vec CallId}
    {results : alloc.vec.Vec CallResult}
    {id : CallId}
    (refined : RefinedShippingBundleCall expected results id) :
    RefinedShippingBundleGoalCall expected results id := by
  have preserved :=
    Ipp.ShippingV1.shipping_input_preserves_order_and_padding
      refined.data.contract refined.data.input refined.supported
  exact {
    refined := refined
    realPrefixExact := preserved.2.1
    goalRows :=
      Ipp.SnarkPackV1.Refinement.realGoal_rows
        refined.data.statement refined.data.input.realCount
        (refined.data.contract.validCounts
          refined.data.input refined.supported).2
  }

/-- Accepted extracted bundle composition lifts every exact planned call from
v1 acceptance to the independent ordered-row goal. -/
theorem accepted_shipping_bundle_refines_all_goals
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
    ShippingBundleRefinesGoals declared expected results := by
  let refined :=
    accepted_shipping_bundle_refines_all_v1
      declared expected results plan reducerAccepted construction
  refine {
    planExact := refined.planExact
    orderTagsNoDuplicate := refined.orderTagsNoDuplicate
    resultCountExact := refined.resultCountExact
    uniqueAccepted := refined.uniqueAccepted
    calls := ?_
  }
  intro id planned
  rcases refined.calls id planned with ⟨call⟩
  exact ⟨refinedShippingBundleCallToGoal call⟩

/-- Irreducible verifier facts for one output-derived planned call.

Support, statement projection, statement/proof representation, valid counts,
and padding are derived from the constructor output and semantic alignment;
they are deliberately absent from this record. -/
structure OutputDerivedVerifierRemainder
    {declared : alloc.vec.Vec ExpectedCall}
    {expected : alloc.vec.Vec CallId}
    {results : alloc.vec.Vec CallResult}
    {id : CallId}
    (call : OutputDerivedPlannedCall declared expected results id)
    (semantic : OutputDerivedSelectionAlignment call) where
  kernel :
    Ipp.Extracted.AggregateVerifier.ArkworksTippKernelContract
      call.construction.shippingData.hbilinear
      call.construction.shippingData.primitive
  preparedVk :
    ArkworksPreparedVkAicContract
      call.construction.shippingData.statement
      call.construction.shippingData.gammaABC
      call.construction.shippingData.input.publicRows
  decoded :
    ∀ transcript
      (_execution : AcceptedShippingExecutionAt
        call.construction.shippingData transcript),
      ArkworksDecodedProofContract
        call.construction.shippingData.hbilinear
        call.construction.shippingData.baseStmt
        call.construction.shippingData.input.decodedProof
        call.construction.shippingData.proof transcript
        call.construction.shippingData.srs.g
        call.construction.shippingData.srs.g_beta
        call.construction.shippingData.srs.h
        call.construction.shippingData.srs.h_alpha
  kzg :
    ∀ transcript
      (execution : AcceptedShippingExecutionAt
        call.construction.shippingData transcript),
      Ipp.Extracted.AggregateVerifier.ArkworksTippKzgContract
        call.construction.shippingData.hbilinear
        call.construction.shippingData.baseStmt
        call.construction.shippingData.proof transcript
        call.construction.shippingData.srs.g
        call.construction.shippingData.srs.g_beta
        call.construction.shippingData.srs.h
        call.construction.shippingData.srs.h_alpha
        execution.tippPairing call.construction.shippingData.tippOutcome

/-- Assemble the complete per-call verifier contract while deriving every
constructor-owned field internally. -/
noncomputable def OutputDerivedVerifierRemainder.toExternalContracts
    {declared : alloc.vec.Vec ExpectedCall}
    {expected : alloc.vec.Vec CallId}
    {results : alloc.vec.Vec CallResult}
    {id : CallId}
    {call : OutputDerivedPlannedCall declared expected results id}
    {semantic : OutputDerivedSelectionAlignment call}
    (remainder : OutputDerivedVerifierRemainder call semantic) :
    ShippingVerifierExternalContracts
      call.construction.shippingData := by
  let derived :=
    call.construction.shippingRefinementInputs
      semantic.boundary semantic.alignment
  exact {
    kernel := remainder.kernel
    supported := derived.1
    statementProjection := Classical.choice derived.2.1
    represents := derived.2.2.1
    preparedVk := remainder.preparedVk
    decoded := remainder.decoded
    kzg := remainder.kzg
  }

/-- Exact production-to-deployed-experiment boundary for every planned call.

`emittedAccepted` transports only a raw accepted execution at the exact
constructor-derived call into the deployed verifier experiment.  It states no
formal acceptance, invalidity, goal row, or probability inequality. -/
structure OutputDerivedBundleVerificationBridge
    {declared : alloc.vec.Vec ExpectedCall}
    {expected : alloc.vec.Vec CallId}
    {results : alloc.vec.Vec CallResult}
    (bundle : OutputDerivedShippingBundle declared expected results)
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes) where
  serialization :
    ∀ (id : CallId) (planned : id ∈ expected.val),
      Ipp.ShippingArkworksHash.SerializationContract
        (bundle.call id planned).construction.shippingData.serialization
  remainder :
    ∀ (id : CallId) (planned : id ∈ expected.val),
      OutputDerivedVerifierRemainder
        (bundle.call id planned) (bundle.semantic id planned)
  randomizerSemantics :
    ∀ (id : CallId) (planned : id ∈ expected.val),
      Ipp.ShippingArkworksHash.Blake2bRandomizerEffectPostcondition
        (serialization id planned)
        (bundle.call id planned).construction.shippingData.randomizerEffects
        (bundle.call id planned).construction.shippingData.input.family
        (bundle.call id planned).construction.shippingData.input.challengeContext
        (bundle.call id planned).construction.shippingData.statement.rejectionFuel
        blake2b
  tippSemantics :
    ∀ (id : CallId) (planned : id ∈ expected.val),
      Ipp.ShippingArkworksHash.Blake2bTippEffectPostcondition
        (serialization id planned)
        (bundle.call id planned).construction.shippingData.input.family
        (bundle.call id planned).construction.shippingData.input.challengeContext
        (bundle.call id planned).construction.shippingData.statement.rejectionFuel
        blake2b
  emittedAccepted :
    ∀ (id : CallId) (planned : id ∈ expected.val),
      (bundle.call id planned).shippingAccepted = true →
        ∃ output ∈ support
            (shippingRealCallVerifier
              (bundle.call id planned).construction.shippingData
              (serialization id planned) blake2b),
          AcceptedCallOutput
            (bundle.call id planned).construction.shippingData output

/-- The per-call verifier refinement is fully constructed from the retained
application construction and the narrow external remainder. -/
noncomputable def OutputDerivedBundleVerificationBridge.refinement
    {declared : alloc.vec.Vec ExpectedCall}
    {expected : alloc.vec.Vec CallId}
    {results : alloc.vec.Vec CallResult}
    {bundle : OutputDerivedShippingBundle declared expected results}
    {blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes}
    (bridge : OutputDerivedBundleVerificationBridge bundle blake2b)
    (id : CallId) (planned : id ∈ expected.val) :
    ShippingVerifierRefinementContracts
      (bundle.call id planned).construction.shippingData := {
  application := (bundle.call id planned).construction.application
  external := (bridge.remainder id planned).toExternalContracts
}

/-- The retained effect postconditions construct the deployed challenge
contract for the exact output-derived call. -/
noncomputable def OutputDerivedBundleVerificationBridge.deployed
    {declared : alloc.vec.Vec ExpectedCall}
    {expected : alloc.vec.Vec CallId}
    {results : alloc.vec.Vec CallResult}
    {bundle : OutputDerivedShippingBundle declared expected results}
    {blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes}
    (bridge : OutputDerivedBundleVerificationBridge bundle blake2b)
    (id : CallId) (planned : id ∈ expected.val) :
    DeployedChallengePrimitiveContract
      (bundle.call id planned).construction.shippingData
      (bridge.serialization id planned) blake2b :=
  deployed_hash_trace_construction
    (bundle.call id planned).construction.shippingData
    (bridge.serialization id planned) blake2b
    (bridge.randomizerSemantics id planned)
    (bridge.tippSemantics id planned)
    (fun output _hsupport execution =>
      (bridge.remainder id planned).decoded
        output.transcript execution)

/-- One exact output-derived production call, its emitted raw accepted run,
and the ordered-goal facts derived from that run. -/
structure OutputDerivedBundleGoalCall
    {declared : alloc.vec.Vec ExpectedCall}
    {expected : alloc.vec.Vec CallId}
    {results : alloc.vec.Vec CallResult}
    (bundle : OutputDerivedShippingBundle declared expected results)
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes)
    (bridge : OutputDerivedBundleVerificationBridge bundle blake2b)
    (id : CallId) (planned : id ∈ expected.val) where
  output :
    Ipp.FsResult (bundle.call id planned).μ Ipp.Bls12377.Fr
      Ipp.Bls12377.g1PrimeSubgroup Ipp.Bls12377.g2PrimeSubgroup
      Ipp.Bls12377.ArkPairingOutput
  emitted :
    output ∈ support
      (shippingRealCallVerifier
        (bundle.call id planned).construction.shippingData
        (bridge.serialization id planned) blake2b)
  rawAccepted :
    AcceptedCallOutput
      (bundle.call id planned).construction.shippingData output
  callIdExact :
    ((bundle.call id planned).selection
      (bundle.semantic id planned)).call = id
  statementExact :
    (bundle.call id planned).construction.shippingData.statement =
      (bundle.call id planned).construction.shippingData.projection.statementOf
        (bundle.call id planned).construction.shippingData.input.publicClaim
  proofExact :
    (bundle.call id planned).construction.shippingData.proof =
      (bundle.call id planned).construction.shippingData.projection.proofOf
        (bundle.call id planned).construction.shippingData.input.decodedProof
  accepts :
    Ipp.SnarkPackV1.Accepts
      (bundle.call id planned).construction.shippingData.statement
      (bundle.call id planned).construction.shippingData.proof
      output.transcript
  supported :
    (bundle.call id planned).construction.shippingData.contract.supported
      (bundle.call id planned).construction.shippingData.input
  validCounts :
    Ipp.ShippingV1.ValidCounts
      (bundle.call id planned).construction.shippingData.input
  realPrefixExact :
    Ipp.ShippingV1.RealPrefixExact
      (bundle.call id planned).construction.shippingData.input
  repeatFinalPadding :
    Ipp.ShippingV1.RepeatFinalPadding
      (bundle.call id planned).construction.shippingData.input
  goalRows :
    ∀ i : Fin
        (bundle.call id planned).construction.shippingData.input.realCount,
      (Ipp.SnarkPackV1.Refinement.toRealGoal
        (bundle.call id planned).construction.shippingData.statement
        (bundle.call id planned).construction.shippingData.input.realCount
        ((bundle.call id planned).construction.shippingData.contract.validCounts
          (bundle.call id planned).construction.shippingData.input
          supported).2).rows i =
        Ipp.SnarkPackV1.Refinement.publicRowAt
          (bundle.call id planned).construction.shippingData.statement
          (Ipp.Goal.embedFin
            ((bundle.call id planned).construction.shippingData.contract.validCounts
              (bundle.call id planned).construction.shippingData.input
              supported).2 i)

/-- Production output-derived form of complete bundle goal refinement. -/
structure OutputDerivedBundleRefinesGoals
    {declared : alloc.vec.Vec ExpectedCall}
    {expected : alloc.vec.Vec CallId}
    {results : alloc.vec.Vec CallResult}
    (bundle : OutputDerivedShippingBundle declared expected results)
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes)
    (bridge : OutputDerivedBundleVerificationBridge bundle blake2b) : Prop where
  planExact : expected.val = planIdsModel declared.val
  orderTagsNoDuplicate :
    (expected.val.map (fun id => id.order_index.val)).Nodup
  resultCountExact : results.val.length = expected.val.length
  uniqueAccepted :
    ∀ id ∈ expected.val, matchingAcceptances id results.val = [true]
  calls :
    ∀ (id : CallId) (planned : id ∈ expected.val),
      Nonempty
        (OutputDerivedBundleGoalCall bundle blake2b bridge id planned)

/-- Accepted production bundle composition.  The planner and reducer derive
complete coverage and exact acceptance; the runtime bridge supplies only raw
deployed executions and named external postconditions.  Formal acceptance and
all ordered-goal rows are conclusions. -/
theorem accepted_output_derived_bundle_refines_all_goals
    {declared : alloc.vec.Vec ExpectedCall}
    {expected : alloc.vec.Vec CallId}
    {results : alloc.vec.Vec CallResult}
    (bundle : OutputDerivedShippingBundle declared expected results)
    (plan :
      app_verifier.app_verify_plan_ids_core declared = .ok expected)
    (reducerAccepted :
      app_verifier.app_verify_normal_acceptance_core expected results =
        .ok (.Ok true))
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes)
    (bridge : OutputDerivedBundleVerificationBridge bundle blake2b) :
    OutputDerivedBundleRefinesGoals bundle blake2b bridge := by
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
  · intro id planned
    let call := bundle.call id planned
    let semantic := bundle.semantic id planned
    have shippingAccepted : call.shippingAccepted = true :=
      bundle.allRecordedResultsAccepted reducerAccepted id planned
    rcases bridge.emittedAccepted id planned shippingAccepted with
      ⟨output, emitted, rawAccepted⟩
    have refined :=
      acceptedCallOutput_refines_shipping_v1
        call.construction.shippingData
        (bridge.serialization id planned) blake2b
        (bridge.refinement id planned)
        (bridge.deployed id planned) emitted rawAccepted
    have derived :=
      call.construction.shippingRefinementInputs
        semantic.boundary semantic.alignment
    have selectedExact := call.selectionExact semantic
    exact ⟨{
      output := output
      emitted := emitted
      rawAccepted := rawAccepted
      callIdExact := selectedExact.1
      statementExact := refined.1
      proofExact := refined.2.1
      accepts := refined.2.2.1
      supported := derived.1
      validCounts := refined.2.2.2.1
      realPrefixExact := refined.2.2.2.2.1
      repeatFinalPadding := refined.2.2.2.2.2
      goalRows :=
        Ipp.SnarkPackV1.Refinement.realGoal_rows
          call.construction.shippingData.statement
          call.construction.shippingData.input.realCount
          (call.construction.shippingData.contract.validCounts
            call.construction.shippingData.input derived.1).2
    }⟩

#print axioms refinedShippingBundleCallToGoal
#print axioms accepted_shipping_bundle_refines_all_goals
#print axioms OutputDerivedVerifierRemainder.toExternalContracts
#print axioms OutputDerivedBundleVerificationBridge.deployed
#print axioms accepted_output_derived_bundle_refines_all_goals

end

end Ipp.Extracted.ShippingBundleGoalComposition
