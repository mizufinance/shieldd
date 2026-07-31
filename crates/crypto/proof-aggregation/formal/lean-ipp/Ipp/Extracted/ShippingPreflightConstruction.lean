import Ipp.Extracted.ShippingCallMaterialization

/-!
Exact constructor boundary for the extracted shipping-preflight core.

An accepted preflight execution fixes the backend call, retained field rows,
serialized rows, and shipping input in one generated equation. The outer Rust
delegation into this core remains the separately named exact boundary.
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

/-- One successful invocation of the production-used shipping-preflight core.
The result is indexed by every concrete argument and the generated execution
equation, so later composition cannot choose a different backend call or row
projection. -/
structure AcceptedShippingPreflightExecution
    (BackendCall Fields : Type) where
  backendCall : BackendCall
  rows :
    app_verifier.AppVerifyShippingRowsProjection Fields
      (alloc.vec.Vec (alloc.vec.Vec (alloc.vec.Vec UInt8)))
  call : app_verifier.AppVerifyShippingCall
  protocolVersion : Std.U32
  family : app_verifier.AppVerifyFamilyCode
  srsId : alloc.vec.Vec UInt8
  serializedVk : alloc.vec.Vec UInt8
  vkDigest : alloc.vec.Vec UInt8
  canonicalStatementBytes : alloc.vec.Vec UInt8
  wrapper : app_verifier.AppVerifyShippingWrapperProjection
  challengeContext : alloc.vec.Vec UInt8
  output : app_verifier.AppVerifyShippingPreflight BackendCall Fields
  accepted :
    app_verifier.app_verify_shipping_preflight_core
        backendCall rows call protocolVersion family srsId serializedVk
        vkDigest canonicalStatementBytes wrapper challengeContext =
      .ok (.Ok output)

/-- Acceptance by the outer preflight core contains an accepted execution of
the exact inner shipping-input constructor on `rows.serialized`. -/
theorem AcceptedShippingPreflightExecution.shippingInputAccepted
    {BackendCall Fields : Type}
    (execution :
      AcceptedShippingPreflightExecution BackendCall Fields) :
    app_verifier.app_verify_shipping_input_from_parts
        execution.call execution.protocolVersion execution.family
        execution.srsId execution.serializedVk execution.vkDigest
        execution.rows.real_count execution.rows.padded_count
        execution.rows.public_input_arity execution.rows.serialized
        execution.canonicalStatementBytes execution.wrapper
        execution.challengeContext =
      .ok (.Ok execution.output.shipping_input) := by
  have haccepted := execution.accepted
  unfold app_verifier.app_verify_shipping_preflight_core at haccepted
  cases hinput :
      app_verifier.app_verify_shipping_input_from_parts
        execution.call execution.protocolVersion execution.family
        execution.srsId execution.serializedVk execution.vkDigest
        execution.rows.real_count execution.rows.padded_count
        execution.rows.public_input_arity execution.rows.serialized
        execution.canonicalStatementBytes execution.wrapper
        execution.challengeContext with
  | fail error =>
      simp [hinput] at haccepted
  | div =>
      simp [hinput] at haccepted
  | ok result =>
      cases result with
      | Err error =>
          simp [hinput] at haccepted
      | Ok input =>
          simp [hinput] at haccepted
          have houtput :
              execution.output =
                {
                  backend_call := execution.backendCall
                  padded_public_input_fields := execution.rows.fields
                  shipping_input := input
                } :=
            haccepted.symm
          simpa [houtput] using hinput

/-- The accepted output envelope retains the exact backend call, field rows,
and inner constructor output selected by the generated preflight execution. -/
theorem AcceptedShippingPreflightExecution.envelopeExact
    {BackendCall Fields : Type}
    (execution :
      AcceptedShippingPreflightExecution BackendCall Fields) :
    execution.output =
      {
        backend_call := execution.backendCall
        padded_public_input_fields := execution.rows.fields
        shipping_input := execution.output.shipping_input
      } := by
  have haccepted := execution.accepted
  unfold app_verifier.app_verify_shipping_preflight_core at haccepted
  cases hinput :
      app_verifier.app_verify_shipping_input_from_parts
        execution.call execution.protocolVersion execution.family
        execution.srsId execution.serializedVk execution.vkDigest
        execution.rows.real_count execution.rows.padded_count
        execution.rows.public_input_arity execution.rows.serialized
        execution.canonicalStatementBytes execution.wrapper
        execution.challengeContext with
  | fail error =>
      simp [hinput] at haccepted
  | div =>
      simp [hinput] at haccepted
  | ok result =>
      cases result with
      | Err error =>
          simp [hinput] at haccepted
      | Ok input =>
          simp [hinput] at haccepted
          have houtput :
              execution.output =
                {
                  backend_call := execution.backendCall
                  padded_public_input_fields := execution.rows.fields
                  shipping_input := input
                } :=
            haccepted.symm
          simpa [houtput] using houtput

/-- Exact inner constructor execution recovered from the generated accepted
preflight equation. -/
def AcceptedShippingPreflightExecution.toConstructorExecution
    {BackendCall Fields : Type}
    (execution :
      AcceptedShippingPreflightExecution BackendCall Fields) :
    ConstructorExecution where
  call := execution.call
  protocolVersion := execution.protocolVersion
  family := execution.family
  srsId := execution.srsId
  serializedVk := execution.serializedVk
  vkDigest := execution.vkDigest
  realCount := execution.rows.real_count
  paddedCount := execution.rows.padded_count
  publicInputArity := execution.rows.public_input_arity
  paddedPublicInputs := execution.rows.serialized
  canonicalStatementBytes := execution.canonicalStatementBytes
  wrapper := execution.wrapper
  challengeContext := execution.challengeContext
  output := execution.output.shipping_input
  accepted := execution.shippingInputAccepted

/-- Package an accepted inner input through the exact call/wrapper constructors.
The call and wrapper arguments are copied from that execution. -/
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

/-- Canonical call/wrapper packaging of an accepted shipping preflight. No
constructor argument is supplied independently of the generated equation. -/
def AcceptedShippingPreflightExecution.toBuiltConstructorExecution
    {BackendCall Fields : Type}
    (execution :
      AcceptedShippingPreflightExecution BackendCall Fields) :
    BuiltConstructorExecution :=
  builtConstructorOfAcceptedInput execution.toConstructorExecution

@[simp] theorem
    AcceptedShippingPreflightExecution.toBuiltConstructorExecution_forget
    {BackendCall Fields : Type}
    (execution :
      AcceptedShippingPreflightExecution BackendCall Fields) :
    execution.toBuiltConstructorExecution.toConstructorExecution =
      execution.toConstructorExecution :=
  builtConstructorOfAcceptedInput_forget execution.toConstructorExecution

/-- Every field of the accepted preflight output is the exact record assembled
from the generated arguments, including the serialized row matrix. -/
@[simp] theorem AcceptedShippingPreflightExecution.outputExact
    {BackendCall Fields : Type}
    (execution :
      AcceptedShippingPreflightExecution BackendCall Fields) :
    execution.output =
      {
        backend_call := execution.backendCall
        padded_public_input_fields := execution.rows.fields
        shipping_input := {
          call := execution.call
          protocol_version := execution.protocolVersion
          family := execution.family
          srs_id := execution.srsId
          serialized_vk := execution.serializedVk
          vk_digest := execution.vkDigest
          real_count := execution.rows.real_count
          padded_count := execution.rows.padded_count
          public_input_arity := execution.rows.public_input_arity
          padded_public_inputs := execution.rows.serialized
          canonical_statement_bytes := execution.canonicalStatementBytes
          statement_digest := execution.wrapper.statement_digest
          wrapped_proof_bytes := execution.wrapper.wrapped_proof_bytes
          inner_proof_bytes := execution.wrapper.inner_proof_bytes
          challenge_context := execution.challengeContext
        }
      } := by
  calc
    execution.output =
        {
          backend_call := execution.backendCall
          padded_public_input_fields := execution.rows.fields
          shipping_input := execution.output.shipping_input
        } :=
      execution.envelopeExact
    _ = _ := by
      rw [execution.toConstructorExecution.outputExact]

@[simp] theorem AcceptedShippingPreflightExecution.backendCallExact
    {BackendCall Fields : Type}
    (execution :
      AcceptedShippingPreflightExecution BackendCall Fields) :
    execution.output.backend_call = execution.backendCall := by
  rw [execution.outputExact]

@[simp] theorem AcceptedShippingPreflightExecution.fieldRowsExact
    {BackendCall Fields : Type}
    (execution :
      AcceptedShippingPreflightExecution BackendCall Fields) :
    execution.output.padded_public_input_fields = execution.rows.fields := by
  rw [execution.outputExact]

@[simp] theorem AcceptedShippingPreflightExecution.realCountExact
    {BackendCall Fields : Type}
    (execution :
      AcceptedShippingPreflightExecution BackendCall Fields) :
    execution.output.shipping_input.real_count =
      execution.rows.real_count := by
  rw [execution.outputExact]

@[simp] theorem AcceptedShippingPreflightExecution.paddedCountExact
    {BackendCall Fields : Type}
    (execution :
      AcceptedShippingPreflightExecution BackendCall Fields) :
    execution.output.shipping_input.padded_count =
      execution.rows.padded_count := by
  rw [execution.outputExact]

@[simp] theorem AcceptedShippingPreflightExecution.publicInputArityExact
    {BackendCall Fields : Type}
    (execution :
      AcceptedShippingPreflightExecution BackendCall Fields) :
    execution.output.shipping_input.public_input_arity =
      execution.rows.public_input_arity := by
  rw [execution.outputExact]

@[simp] theorem AcceptedShippingPreflightExecution.serializedRowsExact
    {BackendCall Fields : Type}
    (execution :
      AcceptedShippingPreflightExecution BackendCall Fields) :
    execution.output.shipping_input.padded_public_inputs =
      execution.rows.serialized := by
  rw [execution.outputExact]

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

/-- Discharge only the explicitly indexed decoder, row, plan, and SRS
remainder after the generated preflight execution has fixed the constructor.
The resulting concrete call therefore carries the same backend/row/input
provenance as `execution.accepted`. -/
def AcceptedShippingPreflightExecution.toConcreteOutputDerivedCall
    {BackendCall Fields D : Type} {μ arity : Nat}
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
    (execution :
      AcceptedShippingPreflightExecution BackendCall Fields)
    (remainder :
      ConcreteOutputDerivedCallRemainder wire bytes operations runtime
        boundary execution.toBuiltConstructorExecution) :
    ConcreteOutputDerivedCall wire bytes operations runtime boundary :=
  remainder.toConcreteOutputDerivedCall

end

end Ipp.Extracted.ShippingPreflightConstruction
