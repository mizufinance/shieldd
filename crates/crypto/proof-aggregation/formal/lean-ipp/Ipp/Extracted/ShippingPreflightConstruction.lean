import Ipp.Extracted.ShippingCallMaterialization

/-!
Exact constructor boundary pending the refreshed shipping-preflight extraction.

The checked-in graph lacks `app_verify_shipping_preflight_core`. This module
packages an accepted inner constructor and names the exact indexed remainder;
it does not claim production provenance. The refreshed preflight equation must
supply that provenance and retain its backend call, field rows, and output.
-/

namespace Ipp.Extracted.ShippingPreflightConstruction

open Aeneas Aeneas.Std Result
open ark_ip_proofs
open Ipp.Extracted.AppVerifierStateMachine
open Ipp.Extracted.ShippingCallConstruction
open Ipp.Extracted.ShippingCallMaterialization
open Ipp.Extracted.ShippingStatementConstruction
open Ipp.Extracted.ShippingVerifierComposition
open Ipp.ShippingStatementProjection

noncomputable section

local instance : Fact Ipp.Bls12377.scalarModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.scalarPrime⟩

/-- Package an accepted inner input through the exact call/wrapper constructors.
Outer-preflight provenance still requires the pending generated equation. -/
def builtConstructorOfAcceptedInput
    (execution : ConstructorExecution) : BuiltConstructorExecution where
  callConstruction := {
    id := execution.call.id
    bundleFamily := execution.call.bundle_family
    expectedRealCount := execution.call.expected_real_count
    bundleRealCount := execution.call.bundle_real_count
    expectedPaddedCount := execution.call.expected_padded_count
    bundlePaddedCount := execution.call.bundle_padded_count
    output := execution.call
    accepted := by
      simpa using
        (extracted_shipping_call_from_parts_exact execution.call)
  }
  wrapperConstruction := {
    statementDigest := execution.wrapper.statement_digest
    wrappedProofBytes := execution.wrapper.wrapped_proof_bytes
    innerProofBytes := execution.wrapper.inner_proof_bytes
    output := execution.wrapper
    accepted := by
      simpa using
        (extracted_shipping_wrapper_projection_from_parts_exact
          execution.wrapper.statement_digest
          execution.wrapper.wrapped_proof_bytes
          execution.wrapper.inner_proof_bytes)
  }
  protocolVersion := execution.protocolVersion
  family := execution.family
  srsId := execution.srsId
  serializedVk := execution.serializedVk
  vkDigest := execution.vkDigest
  realCount := execution.realCount
  paddedCount := execution.paddedCount
  publicInputArity := execution.publicInputArity
  paddedPublicInputs := execution.paddedPublicInputs
  canonicalStatementBytes := execution.canonicalStatementBytes
  challengeContext := execution.challengeContext
  output := execution.output
  accepted := execution.accepted

/-- Forgetting the canonical call/wrapper packaging returns the exact accepted
inner constructor execution; no field is changed or selected again. -/
@[simp] theorem builtConstructorOfAcceptedInput_forget
    (execution : ConstructorExecution) :
    (builtConstructorOfAcceptedInput execution).toConstructorExecution =
      execution := by
  cases execution
  rfl

/-- Exact remainder indexed by one built constructor.
It cannot replace the formal input used by rows or the SRS identity. -/
structure ConcreteOutputDerivedCallRemainder
    {D : Type} {μ arity : Nat}
    (wire :
      WireRowDecoder μ
        (Fin arity → Ipp.Bls12377.Fr))
    (bytes :
      BindingOperations μ
        (Fin arity → Ipp.Bls12377.Fr) (ValidatedProof D))
    (operations :
      SemanticOperations μ arity Ipp.Bls12377.Fr
        Ipp.Bls12377.g1PrimeSubgroup Ipp.Bls12377.g2PrimeSubgroup
        Ipp.Bls12377.ArkPairingOutput (ValidatedProof D))
    (runtime : ConcreteShippingRuntime)
    (boundary :
      ExactSemanticBoundary wire bytes
        (executableSemanticOperations runtime.hbilinear operations))
    (constructor : BuiltConstructorExecution) where
  materialization :
    ConstructorOutputMaterialization D μ arity wire bytes
      constructor.toConstructorExecution
  rows :
    ExecutionCoupledRowConstruction constructor.toConstructorExecution
      materialization.input
  plan : ShippingPlanExecution
  verifierSrsLoadExecution :
    runtime.loadVerifierSrs materialization.input.srsId =
      some runtime.verifierSrs

/-- Assemble the concrete call once production provenance has supplied the
built constructor and the exact indexed remainder has discharged the named
decoder, row, plan, and SRS-load boundaries. -/
def ConcreteOutputDerivedCallRemainder.toConcreteOutputDerivedCall
    {D : Type} {μ arity : Nat}
    {wire :
      WireRowDecoder μ
        (Fin arity → Ipp.Bls12377.Fr)}
    {bytes :
      BindingOperations μ
        (Fin arity → Ipp.Bls12377.Fr) (ValidatedProof D)}
    {operations :
      SemanticOperations μ arity Ipp.Bls12377.Fr
        Ipp.Bls12377.g1PrimeSubgroup Ipp.Bls12377.g2PrimeSubgroup
        Ipp.Bls12377.ArkPairingOutput (ValidatedProof D)}
    {runtime : ConcreteShippingRuntime}
    {boundary :
      ExactSemanticBoundary wire bytes
        (executableSemanticOperations runtime.hbilinear operations)}
    {constructor : BuiltConstructorExecution}
    (remainder :
      ConcreteOutputDerivedCallRemainder wire bytes operations runtime
        boundary constructor) :
    ConcreteOutputDerivedCall wire bytes operations runtime boundary where
  constructor := constructor
  materialization := remainder.materialization
  rows := remainder.rows
  plan := remainder.plan
  verifierSrsLoadExecution := remainder.verifierSrsLoadExecution

end

end Ipp.Extracted.ShippingPreflightConstruction
