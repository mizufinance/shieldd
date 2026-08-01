import Ipp.ShippingAdaptiveSha
import Ipp.ShippingMultiStatement
import Ipp.ShippingRealVerifier

/-!
Adaptive SHA binding for one concrete shipping verifier call.

The adversary may make deployed SHA-256 queries before returning a supported
intended input.  It cannot supply an acceptance bit: the experiment then runs
the concrete shipping verifier and records its returned result.  This is the
fixed-call bridge needed before packaging heterogeneous production calls in
the shared multi-statement experiment.
-/

open OracleComp ENNReal
open scoped ENNReal

namespace Ipp.ShippingAdaptiveCall

noncomputable section

open Ipp.Bls12377
open Ipp.ShippingAdaptiveSha
open Ipp.ShippingMultiStatement
open Ipp.ShippingRealVerifier

/-- The exact concrete shipping-input carrier selected by one extracted
production call. -/
abbrev ConcreteShippingInput
    (D : Type) (μ arity : Nat) :=
  Ipp.ShippingV1.ShippingV1Input μ Fr
    g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput
    (Fin arity → Fr)
    (Ipp.Extracted.ShippingVerifierComposition.ValidatedProof D)

/-- An intended input chosen by the adaptive adversary together with the
production binding evidence required before it may enter the experiment. -/
structure SupportedIntendedInput
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity) where
  input : ConcreteShippingInput D μ arity
  supported : data.contract.supported input

/-- Canonical global-oracle identity retained from one concrete shipping
input.  No digest-only synthetic call identifier is introduced. -/
def productionStatementKey
    {D : Type} {μ arity : Nat}
    (input : ConcreteShippingInput D μ arity) :
    ShippingStatementKey := {
  family := input.family
  srsId := input.srsId
  serializedVk := input.serializedVk
  canonicalStatement := input.canonicalStatementBytes
  statementDigest := input.statementDigest
  challengeContext := input.challengeContext
}

/-- The unique registered family domain selected by the production call's
binding contract. -/
noncomputable def productionFamilyDomain
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity)
    (refinement : RefinementContracts data) : List UInt8 :=
  Classical.choose
    (data.contract.familyRegistered data.input
      refinement.external.supported)

theorem productionFamilyDomain_registered
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity)
    (refinement : RefinementContracts data) :
    data.input.family.transcriptDomain =
      some (productionFamilyDomain data refinement) :=
  Classical.choose_spec
    (data.contract.familyRegistered data.input
      refinement.external.supported)

/-- Embed one concrete production call into the shared global-oracle
selection type.  `ShippingStatementKey` is used as the uniform `Call`
carrier, so selections at different proof sizes can inhabit the same
heterogeneous `PackedSelection` type. -/
noncomputable def productionSelection
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity)
    (refinement : RefinementContracts data) :
    SelectionAt ShippingStatementKey μ := {
  call := productionStatementKey data.input
  logicalKey := productionStatementKey data.input
  encodedKey := {
    familyDomain := productionFamilyDomain data refinement
    challengeContext := data.input.challengeContext
  }
  familyDomain_exact := productionFamilyDomain_registered data refinement
  challengeContext_exact := rfl
  statement := data.statement
  proof := data.proof
}

/-- The shared selection carries exactly the statement and proof projected by
the extracted production call, not merely the same family/context bytes. -/
theorem productionSelection_refines_shipping_input
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity)
    (refinement : RefinementContracts data) :
    let selection := productionSelection data refinement
    selection.call = productionStatementKey data.input ∧
      selection.logicalKey = productionStatementKey data.input ∧
      selection.statement =
        data.projection.statementOf data.input.publicClaim ∧
      selection.proof =
        data.projection.proofOf data.input.decodedProof := by
  exact
    ⟨rfl, rfl, refinement.external.represents.1,
      refinement.external.represents.2⟩

/-- Dependent packaging of the exact concrete selection into the common
heterogeneous game input carrier. -/
noncomputable def packedProductionSelection
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity)
    (refinement : RefinementContracts data) :
    PackedSelection ShippingStatementKey :=
  ⟨μ, productionSelection data refinement⟩

/-- Every challenge issued after selecting the concrete production call has
the exact deployed family prefix and retained SHA-derived context. -/
theorem productionSelection_globalQueryEncoding_eq_shipping
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity)
    (refinement : RefinementContracts data)
    (attempt : Ipp.ShippingHashGame.ShippingAttempt) :
    globalQueryEncoding {
        statement := (productionSelection data refinement).logicalKey
        encoded := (productionSelection data refinement).encodedKey
        attempt := attempt
      } =
      Ipp.ShippingHashGame.shippingBlake2bPreimage
        data.input.family data.input.challengeContext
        (Ipp.ShippingHashGame.shippingAttemptPoint attempt) := by
  exact
    (productionSelection data refinement).globalQueryEncoding_eq_shipping
      attempt

/-- One result of the fixed-call adaptive experiment.  The verifier result is
produced by `shippingRealCallVerifier`; it is not an adversary-labelled bit. -/
abbrev ShippingAliasRun
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity) :=
  SupportedIntendedInput data ×
    Ipp.FsResult μ Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput

/-- The adversary first runs against the deployed SHA-256 implementation and
chooses a supported intended input.  Only then does the model execute the
fixed concrete shipping verifier against deployed Blake2b.

`queryBudget` below counts the adversary's explicit SHA queries.  Blake2b
queries belong to the separate whole-program ROM budget. -/
def deployedShippingAliasExperiment
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity)
    (serialization :
      Ipp.ShippingArkworksHash.SerializationContract data.serialization)
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes)
    (adversary :
      OracleComp AdaptiveShaSourceSpec (SupportedIntendedInput data)) :
    ProbComp (ShippingAliasRun data) := do
  let intended ←
    simulateQ (deployedShaImpl data.contract.sha256) adversary
  let output ← shippingRealCallVerifier data serialization blake2b
  pure (intended, output)

/-- The concrete verifier returned an output accepted by the raw extracted
shipping predicate, and that accepted call aliases the intended binding. -/
def AcceptedShippingAlias
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity) :
    ShippingAliasRun data → Prop :=
  fun run =>
    AcceptedCallOutput data run.2 ∧
      Ipp.ShippingV1.ShippingBindingAlias run.1.input data.input

/-- The precise three-lane SHA-256 collision event for the adaptively chosen
intended input and the concrete production call. -/
def ShippingAliasShaBad
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity) :
    ShippingAliasRun data → Prop :=
  fun run => shaBad data run.1.input

/-- A result accepted by the concrete shipping predicate cannot realize a
binding substitution without producing the named SHA-256 collision event. -/
theorem acceptedShippingAlias_implies_shaBad
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity)
    (refinement : RefinementContracts data)
    (run : ShippingAliasRun data)
    (haccepted : AcceptedShippingAlias data run) :
    ShippingAliasShaBad data run :=
  accepted_call_binding_alias_implies_shaBad
    data refinement run.1.input run.1.supported
      haccepted.1 haccepted.2

/-- External collision-resistance postcondition for the exact fixed-call
experiment.  Its budget is attached to the SHA-querying adversary program;
the accepted output remains generated by the shipping verifier in the same
experiment. -/
structure CollisionSecurity
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity)
    (serialization :
      Ipp.ShippingArkworksHash.SerializationContract data.serialization)
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes)
    (adversary :
      OracleComp AdaptiveShaSourceSpec (SupportedIntendedInput data))
    (queryBudget : Nat) where
  queryBound : IsTotalQueryBound adversary queryBudget
  epsilon : ℝ≥0∞
  collision_le :
    Pr[ShippingAliasShaBad data |
      deployedShippingAliasExperiment
        data serialization blake2b adversary] ≤ epsilon

/-- Fixed-call adaptive accepted substitutions reduce to SHA-256 collision
security without accepting an adversary-provided acceptance label. -/
theorem deployedShippingAcceptedAlias_le_sha256Advantage
    {D : Type} {μ arity : Nat}
    (data : CallData D μ arity)
    (serialization :
      Ipp.ShippingArkworksHash.SerializationContract data.serialization)
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes)
    (refinement : RefinementContracts data)
    (adversary :
      OracleComp AdaptiveShaSourceSpec (SupportedIntendedInput data))
    (queryBudget : Nat)
    (security :
      CollisionSecurity data serialization blake2b adversary queryBudget) :
    Pr[AcceptedShippingAlias data |
      deployedShippingAliasExperiment
        data serialization blake2b adversary] ≤ security.epsilon := by
  calc
    _ ≤ Pr[ShippingAliasShaBad data |
        deployedShippingAliasExperiment
          data serialization blake2b adversary] := by
      apply probEvent_mono
      intro run _ haccepted
      exact acceptedShippingAlias_implies_shaBad
        data refinement run haccepted
    _ ≤ security.epsilon := security.collision_le

end

end Ipp.ShippingAdaptiveCall
