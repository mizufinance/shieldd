import Ipp.Extracted.ShippingStatementConstruction
import Ipp.Extracted.ShippingVerifierComposition

/-!
Exact scalar and byte construction for one production shipping call.

The accepted constructor supplies its own scalar-projection execution.  The
application construction supplies the same call's formal count projection.
Only byte/row decoding facts that are not present in the current extraction
remain in `ConstructorPayloadProjection`.
-/

namespace Ipp.Extracted.ShippingCallConstruction

open Aeneas Aeneas.Std Result
open ark_ip_proofs
open Ipp.Extracted.AppVerifierStateMachine
open Ipp.Extracted.ShippingStatementConstruction
open Ipp.Extracted.ShippingVerifierComposition

noncomputable section

local instance : Fact Ipp.Bls12377.scalarModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.scalarPrime⟩

/-- Successful construction necessarily traversed the concrete scalar
projection with the exact family and count arguments retained in the output.
-/
theorem ConstructorExecution.projectionAccepted
    (execution : ConstructorExecution) :
    app_verifier.app_verify_shipping_projection_core execution.call
        execution.family execution.realCount execution.paddedCount =
      .ok (.Ok ()) := by
  unfold app_verifier.app_verify_shipping_input_from_parts at execution.accepted
  cases hprojection :
      app_verifier.app_verify_shipping_projection_core execution.call
        execution.family execution.realCount execution.paddedCount with
  | fail error =>
      simp [hprojection] at execution.accepted
  | div =>
      simp [hprojection] at execution.accepted
  | ok result =>
      cases result with
      | Err error =>
          simp [hprojection] at execution.accepted
      | Ok value =>
          cases value
          exact hprojection

/-- The identity core can return only the exact identifier supplied to it. -/
theorem plan_identity_success_output_exact
    (id : CallId) (bundleFamily : FamilyCode)
    (expectedRealCount : Usize) (bundleRealCount : Std.U32)
    (output : CallId)
    (hexec :
      app_verifier.app_verify_plan_identity_core id bundleFamily
          expectedRealCount bundleRealCount =
        .ok (.Ok output)) :
    output = id := by
  have hmodel := hexec
  rw [extracted_plan_identity_eq_model] at hmodel
  have hresult := Result.ok.inj hmodel
  unfold identityModel at hresult
  split at hresult <;> simp_all
  split at hresult <;> simp_all
  split at hresult <;> simp_all

/-- The padding core likewise preserves the exact identifier supplied to it.
-/
theorem plan_padding_success_output_exact
    (id : CallId) (expectedPaddedCount : Usize)
    (bundlePaddedCount : Std.U32) (output : CallId)
    (hexec :
      app_verifier.app_verify_plan_padding_core id expectedPaddedCount
          bundlePaddedCount =
        .ok (.Ok output)) :
    output = id := by
  have hmodel := hexec
  rw [extracted_plan_padding_eq_model] at hmodel
  have hresult := Result.ok.inj hmodel
  unfold paddingModel at hresult
  split at hresult <;> simp_all
  split at hresult <;> simp_all

/-- Successful shipping construction proves the exact identity check; it is
not an additional per-call premise. -/
theorem ConstructorExecution.identityAccepted
    (execution : ConstructorExecution) :
    app_verifier.app_verify_plan_identity_core execution.call.id
        execution.call.bundle_family execution.call.expected_real_count
        execution.call.bundle_real_count =
      .ok (.Ok execution.call.id) := by
  have hprojection := execution.projectionAccepted
  unfold app_verifier.app_verify_shipping_projection_core at hprojection
  cases hidentity :
      app_verifier.app_verify_plan_identity_core execution.call.id
        execution.call.bundle_family execution.call.expected_real_count
        execution.call.bundle_real_count with
  | fail error =>
      simp [hidentity] at hprojection
  | div =>
      simp [hidentity] at hprojection
  | ok result =>
      cases result with
      | Err error =>
          simp [hidentity] at hprojection
      | Ok output =>
          have houtput :=
            plan_identity_success_output_exact execution.call.id
              execution.call.bundle_family
              execution.call.expected_real_count
              execution.call.bundle_real_count output hidentity
          subst output
          exact hidentity

/-- Successful shipping construction also proves the exact padding check. -/
theorem ConstructorExecution.paddingAccepted
    (execution : ConstructorExecution) :
    app_verifier.app_verify_plan_padding_core execution.call.id
        execution.call.expected_padded_count
        execution.call.bundle_padded_count =
      .ok (.Ok execution.call.id) := by
  have hprojection := execution.projectionAccepted
  unfold app_verifier.app_verify_shipping_projection_core at hprojection
  cases hidentity :
      app_verifier.app_verify_plan_identity_core execution.call.id
        execution.call.bundle_family execution.call.expected_real_count
        execution.call.bundle_real_count with
  | fail error =>
      simp [hidentity] at hprojection
  | div =>
      simp [hidentity] at hprojection
  | ok identityResult =>
      cases identityResult with
      | Err error =>
          simp [hidentity] at hprojection
      | Ok output =>
          cases hpadding :
              app_verifier.app_verify_plan_padding_core execution.call.id
                execution.call.expected_padded_count
                execution.call.bundle_padded_count with
          | fail error =>
              simp [hidentity, hpadding] at hprojection
          | div =>
              simp [hidentity, hpadding] at hprojection
          | ok paddingResult =>
              cases paddingResult with
              | Err error =>
                  simp [hidentity, hpadding] at hprojection
              | Ok paddingOutput =>
                  have houtput :=
                    plan_padding_success_output_exact execution.call.id
                      execution.call.expected_padded_count
                      execution.call.bundle_padded_count paddingOutput hpadding
                  subst paddingOutput
                  exact hpadding

/-- Residual payload projection after scalar family/count construction is
derived from the accepted constructor and application equations.

Each field names an exact executable or decoding boundary.  No field states a
shipping contract, formal statement projection, count invariant, or padding
conclusion. -/
structure ConstructorPayloadProjection
    {D : Type} {μ arity : Nat}
    (data : ShippingCallData D μ arity)
    (wire : WireRowDecoder μ (Fin arity → Ipp.Bls12377.Fr))
    (execution : ConstructorExecution) : Prop where
  protocolVersionExecution :
    app_verifier.app_verify_protocol_version_core =
      .ok execution.protocolVersion
  familyCodeExact :
    execution.family = shippingFamilyCode data.input.family
  srsId : data.input.srsId = execution.srsId.val
  serializedVk :
    data.input.serializedVk = execution.serializedVk.val
  vkDigest : data.input.vkDigest = execution.vkDigest.val
  publicInputArity : execution.publicInputArity.val = arity
  paddedRows :
    wire.decodePaddedRows
        (paddedRowsBytes execution.paddedPublicInputs) =
      some data.input.publicRows
  canonicalStatementBytes :
    data.input.canonicalStatementBytes =
      execution.canonicalStatementBytes.val
  statementDigest :
    data.input.statementDigest = execution.wrapper.statement_digest.val
  wrappedProofBytes :
    data.input.wrappedProofBytes =
      execution.wrapper.wrapped_proof_bytes.val
  innerProofBytes :
    data.input.innerProofBytes =
      execution.wrapper.inner_proof_bytes.val
  challengeContext :
    List.ofFn data.input.challengeContext = execution.challengeContext.val

/-- Construct the complete input-retention relation.  Family and both count
fields are consequences of the accepted production scalar projection; they
cannot be selected independently by this boundary. -/
theorem ConstructorPayloadProjection.argumentsRepresent
    {D : Type} {μ arity : Nat}
    {data : ShippingCallData D μ arity}
    {wire : WireRowDecoder μ (Fin arity → Ipp.Bls12377.Fr)}
    {execution : ConstructorExecution}
    (payload : ConstructorPayloadProjection data wire execution)
    (application : ShippingApplicationConstruction data)
    (callExact : execution.call = data.call) :
    ConstructorArgumentsRepresent
      (arity := arity) wire execution data.input := by
  have identityAccepted := execution.identityAccepted
  have paddingAccepted := execution.paddingAccepted
  have identityAccepted' :
      app_verifier.app_verify_plan_identity_core data.call.id
          data.call.bundle_family data.call.expected_real_count
          data.call.bundle_real_count =
        .ok (.Ok data.call.id) := by
    simpa only [← callExact] using identityAccepted
  have paddingAccepted' :
      app_verifier.app_verify_plan_padding_core data.call.id
          data.call.expected_padded_count data.call.bundle_padded_count =
        .ok (.Ok data.call.id) := by
    simpa only [← callExact] using paddingAccepted
  have constructorProjection := execution.projectionAccepted
  rw [payload.familyCodeExact] at constructorProjection
  have projected :=
    extracted_shipping_projection_ok execution.call data.input.family
      execution.realCount execution.paddedCount identityAccepted
      paddingAccepted constructorProjection
  have applicationProjection :=
    application.projectionContract identityAccepted' paddingAccepted'
  have protocolVersionExact :
      execution.protocolVersion =
        (⟨aggregateProtocolVersion⟩ : Std.U32) :=
    Result.ok.inj
      (payload.protocolVersionExecution.symm.trans
        extracted_protocol_version_exact)
  refine {
    protocolVersion := ?_
    family := ?_
    srsId := payload.srsId
    serializedVk := payload.serializedVk
    vkDigest := payload.vkDigest
    realCount := ?_
    paddedCount := ?_
    publicInputArity := payload.publicInputArity
    paddedRows := payload.paddedRows
    canonicalStatementBytes := payload.canonicalStatementBytes
    statementDigest := payload.statementDigest
    wrappedProofBytes := payload.wrappedProofBytes
    innerProofBytes := payload.innerProofBytes
    challengeContext := payload.challengeContext
  }
  · exact congrArg (fun version : Std.U32 => version.val)
      protocolVersionExact
  · rw [payload.familyCodeExact]
    exact shippingFamilyCode_represents data.input.family
  · calc
      data.input.realCount =
          data.call.bundle_real_count.val :=
        applicationProjection.realCount
      _ = execution.call.bundle_real_count.val := by
        rw [callExact]
      _ = execution.realCount.val :=
        (congrArg (fun count : Std.U32 => count.val)
          projected.2.1).symm
  · calc
      execution.paddedCount.val =
          execution.call.bundle_padded_count.val :=
        congrArg (fun count : Std.U32 => count.val) projected.2.2
      _ = data.call.bundle_padded_count.val := by
        rw [callExact]
      _ = 2 ^ μ := applicationProjection.paddedCount.symm

/-- The same exact construction facts transported to the record returned by
the successful shipping-input constructor. -/
theorem ConstructorPayloadProjection.outputRetains
    {D : Type} {μ arity : Nat}
    {data : ShippingCallData D μ arity}
    {wire : WireRowDecoder μ (Fin arity → Ipp.Bls12377.Fr)}
    {execution : ConstructorExecution}
    (payload : ConstructorPayloadProjection data wire execution)
    (application : ShippingApplicationConstruction data)
    (callExact : execution.call = data.call) :
    OutputRetainsShippingInput (arity := arity)
      wire execution data.input :=
  accepted_constructor_retains_shipping_input
    (payload.argumentsRepresent application callExact)

/-- Maximal construction record available before the outer Rust preflight
roots are regenerated.

Every field is either one accepted extracted execution, one extracted
application-construction equation, or an exact byte/row projection boundary.
In particular, this record does not assume `SupportedShippingInput`,
`RepresentsShippingInput`, a statement-projection contract, or formal
acceptance. -/
structure AcceptedConstructorCallProjection
    {D : Type} {μ arity : Nat}
    (data : ShippingCallData D μ arity)
    (wire : WireRowDecoder μ (Fin arity → Ipp.Bls12377.Fr)) : Type where
  execution : ConstructorExecution
  callExact : execution.call = data.call
  application : ShippingApplicationConstruction data
  payload : ConstructorPayloadProjection data wire execution
  rows : ExecutionCoupledRowConstruction execution data.input

/-- The complete constructor-input relation is derived from the accepted
execution and application equations; it is not stored in the construction
record. -/
def AcceptedConstructorCallProjection.constructorProjection
    {D : Type} {μ arity : Nat}
    {data : ShippingCallData D μ arity}
    {wire : WireRowDecoder μ (Fin arity → Ipp.Bls12377.Fr)}
    (construction : AcceptedConstructorCallProjection data wire) :
    ConstructorArgumentsRepresent (arity := arity)
      wire construction.execution data.input :=
  construction.payload.argumentsRepresent construction.application
    construction.callExact

/-- The family and both count equalities used by the application verifier are
likewise consequences of the same accepted constructor execution. -/
def AcceptedConstructorCallProjection.applicationProjection
    {D : Type} {μ arity : Nat}
    {data : ShippingCallData D μ arity}
    {wire : WireRowDecoder μ (Fin arity → Ipp.Bls12377.Fr)}
    (construction : AcceptedConstructorCallProjection data wire) :
    ShippingApplicationProjectionContract data :=
  construction.application.projectionContract
    construction.execution.identityAccepted
    construction.execution.paddingAccepted

/-- Exact concrete support for the formal input, assembled without a free
support premise. The row-padding execution and serialized row matrix belong
to the same constructor execution. -/
def AcceptedConstructorCallProjection.supported
    {D : Type} {μ arity : Nat}
    {data : ShippingCallData D μ arity}
    {wire : WireRowDecoder μ (Fin arity → Ipp.Bls12377.Fr)}
    (construction : AcceptedConstructorCallProjection data wire) :
    SupportedShippingInput (arity := arity) wire data.input :=
  ⟨construction.execution, construction.constructorProjection,
    construction.rows⟩

/-- The accepted constructor's actual returned record retains the exact
formal input assembled above. -/
theorem AcceptedConstructorCallProjection.outputRetains
    {D : Type} {μ arity : Nat}
    {data : ShippingCallData D μ arity}
    {wire : WireRowDecoder μ (Fin arity → Ipp.Bls12377.Fr)}
    (construction : AcceptedConstructorCallProjection data wire) :
    OutputRetainsShippingInput (arity := arity)
      wire construction.execution data.input :=
  accepted_constructor_retains_shipping_input
    construction.constructorProjection

/-- The serialized matrix coupled to the accepted constructor decodes to the
same ordered formal rows used by the statement. -/
theorem AcceptedConstructorCallProjection.serializedRowsDecodeExact
    {D : Type} {μ arity : Nat}
    {data : ShippingCallData D μ arity}
    {wire : WireRowDecoder μ (Fin arity → Ipp.Bls12377.Fr)}
    (construction : AcceptedConstructorCallProjection data wire) :
    wire.decodePaddedRows
        (construction.rows.paddedRows.val.map
          construction.rows.encodeRow) =
      some data.input.publicRows := by
  rw [← construction.rows.serializedPaddedRowsExact]
  exact construction.constructorProjection.paddedRows

/-- Honest constructor-to-statement capstone for the currently available
extraction.

The exact semantic boundary contains only named SHA, strict decode,
prepared-VK, SRS-load, and prepared-Aic execution postconditions. From those
and the accepted constructor call above, this theorem derives support,
statement/proof representation, ordered-row properties, and the complete
statement projection. It does not claim that production Rust has already
instantiated that remaining boundary. -/
theorem AcceptedConstructorCallProjection.assemblesExactStatement
    {D : Type} {μ arity : Nat}
    {data : ShippingCallData D μ arity}
    {wire : WireRowDecoder μ (Fin arity → Ipp.Bls12377.Fr)}
    {bytes :
      BindingOperations μ (Fin arity → Ipp.Bls12377.Fr)
        (ValidatedProof D)}
    {semantics :
      SemanticOperations μ arity Ipp.Bls12377.Fr
        Ipp.Bls12377.g1PrimeSubgroup Ipp.Bls12377.g2PrimeSubgroup
        Ipp.Bls12377.ArkPairingOutput (ValidatedProof D)}
    (construction : AcceptedConstructorCallProjection data wire)
    (boundary : ExactSemanticBoundary wire bytes semantics) :
    boundary.bindingContract.supported data.input ∧
      Ipp.ShippingV1.RepresentsShippingInput semantics.projection
        data.input (semantics.statementOf data.input.publicClaim)
        (semantics.proofOf data.input.decodedProof) ∧
      Ipp.ShippingV1.ValidCounts data.input ∧
      Ipp.ShippingV1.RealPrefixExact data.input ∧
      Ipp.ShippingV1.RepeatFinalPadding data.input ∧
      boundary.projectionContract.Projects data.input :=
  supported_boundary_assembles_exact_statement boundary data.input
    construction.supported

#print axioms ConstructorExecution.projectionAccepted
#print axioms plan_identity_success_output_exact
#print axioms plan_padding_success_output_exact
#print axioms ConstructorExecution.identityAccepted
#print axioms ConstructorExecution.paddingAccepted
#print axioms ConstructorPayloadProjection.argumentsRepresent
#print axioms ConstructorPayloadProjection.outputRetains
#print axioms AcceptedConstructorCallProjection.constructorProjection
#print axioms AcceptedConstructorCallProjection.applicationProjection
#print axioms AcceptedConstructorCallProjection.supported
#print axioms AcceptedConstructorCallProjection.outputRetains
#print axioms AcceptedConstructorCallProjection.serializedRowsDecodeExact
#print axioms AcceptedConstructorCallProjection.assemblesExactStatement

end

end Ipp.Extracted.ShippingCallConstruction
