import Ipp.Extracted.ShippingCallConstruction

/-!
Materialization of one formal v1 input from the actual record returned by the
production shipping-input constructor.

The materialized input cannot choose byte strings, counts, family routing, or
challenge context independently of the accepted Rust output. The remaining
fields are exact row/wrapper/proof decoding witnesses; caller-order padding is
still supplied by the extracted repeat-final execution.
-/

namespace Ipp.Extracted.ShippingCallMaterialization

open Aeneas Aeneas.Std Result
open ark_ip_proofs
open Ipp.Extracted.AppVerifierStateMachine
open Ipp.Extracted.ShippingStatementConstruction
open Ipp.Extracted.ShippingVerifierComposition
open Ipp.Extracted.ShippingCallConstruction

noncomputable section

local instance : Fact Ipp.Bls12377.scalarModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.scalarPrime⟩

/-- Decoded values belonging to the exact record returned by one successful
`app_verify_shipping_input_from_parts` execution.

All scalar and byte fields of `input` below are definitionally projected from
`execution.output`. The family and fixed-size challenge context are the only
typed views of output bytes; their equations make those views functional.
The decoded proof is tied to the same retained inner bytes. -/
structure ConstructorOutputMaterialization
    (D : Type) (μ arity : Nat)
    (wire :
      WireRowDecoder μ
        (Fin arity → Ipp.Bls12377.Fr))
    (bytes :
      BindingOperations μ
        (Fin arity → Ipp.Bls12377.Fr) (ValidatedProof D))
    (execution : ConstructorExecution) where
  protocolVersionExecution :
    app_verifier.app_verify_protocol_version_core =
      .ok execution.output.protocol_version
  family : Ipp.ShippingV1.Family
  familyCodeExact :
    execution.output.family = shippingFamilyCode family
  realRows :
    Fin execution.output.real_count.val →
      Fin arity → Ipp.Bls12377.Fr
  publicRows :
    Fin (2 ^ μ) → Fin arity → Ipp.Bls12377.Fr
  decodedProof : ValidatedProof D
  challengeContext : Ipp.ChallengeEncoding.Context
  paddedCountExact :
    execution.output.padded_count.val = 2 ^ μ
  publicInputArityExact :
    execution.output.public_input_arity.val = arity
  paddedRowsDecodeExact :
    wire.decodePaddedRows
        (paddedRowsBytes execution.output.padded_public_inputs) =
      some publicRows
  wrapperDecodeExact :
    bytes.decodeWrapper execution.output.statement_digest.val
        execution.output.wrapped_proof_bytes.val =
      some execution.output.inner_proof_bytes.val
  proofDecodeExact :
    bytes.decodeProof execution.output.inner_proof_bytes.val =
      some decodedProof
  challengeContextBytesExact :
    List.ofFn challengeContext = execution.output.challenge_context.val

/-- The unique formal input obtained by projecting the successful Rust
constructor output. There are deliberately no arguments for retained bytes or
counts: replacing any of them requires replacing `execution.output`. -/
def ConstructorOutputMaterialization.input
    {D : Type} {μ arity : Nat}
    {wire :
      WireRowDecoder μ
        (Fin arity → Ipp.Bls12377.Fr)}
    {bytes :
      BindingOperations μ
        (Fin arity → Ipp.Bls12377.Fr) (ValidatedProof D)}
    {execution : ConstructorExecution}
    (materialization :
      ConstructorOutputMaterialization D μ arity wire bytes execution) :
    FormalShippingInput μ arity Ipp.Bls12377.Fr
      Ipp.Bls12377.g1PrimeSubgroup Ipp.Bls12377.g2PrimeSubgroup
      Ipp.Bls12377.ArkPairingOutput (ValidatedProof D) :=
  {
    family := materialization.family
    srsId := execution.output.srs_id.val
    serializedVk := execution.output.serialized_vk.val
    vkDigest := execution.output.vk_digest.val
    realCount := execution.output.real_count.val
    realRows := materialization.realRows
    publicRows := materialization.publicRows
    canonicalStatementBytes :=
      execution.output.canonical_statement_bytes.val
    statementDigest := execution.output.statement_digest.val
    wrappedProofBytes := execution.output.wrapped_proof_bytes.val
    innerProofBytes := execution.output.inner_proof_bytes.val
    decodedProof := materialization.decodedProof
    challengeContext := materialization.challengeContext
  }

/-- Install the output-derived call and input into the remaining static
verifier data. The template's former `call` and `input` fields are ignored, so
the resulting `ShippingCallData` cannot carry a separately selected formal
input or application call. -/
def ConstructorOutputMaterialization.install
    {D : Type} {μ arity : Nat}
    {wire :
      WireRowDecoder μ
        (Fin arity → Ipp.Bls12377.Fr)}
    {bytes :
      BindingOperations μ
        (Fin arity → Ipp.Bls12377.Fr) (ValidatedProof D)}
    {execution : ConstructorExecution}
    (materialization :
      ConstructorOutputMaterialization D μ arity wire bytes execution)
    (template : ShippingCallData D μ arity) :
    ShippingCallData D μ arity :=
  { template with
    call := execution.output.call
    input := materialization.input
  }

/-- The retained output's call is exactly the call supplied to the accepted
constructor. -/
theorem ConstructorOutputMaterialization.outputCallExact
    {D : Type} {μ arity : Nat}
    {wire :
      WireRowDecoder μ
        (Fin arity → Ipp.Bls12377.Fr)}
    {bytes :
      BindingOperations μ
        (Fin arity → Ipp.Bls12377.Fr) (ValidatedProof D)}
    {execution : ConstructorExecution}
    (_materialization :
      ConstructorOutputMaterialization D μ arity wire bytes execution) :
    execution.output.call = execution.call := by
  exact congrArg (fun output => output.call) execution.outputExact

/-- The accepted constructor equation proves that the deterministic
materialization represents every constructor argument. No formal input is
quantified or selected in this theorem. -/
theorem ConstructorOutputMaterialization.argumentsRepresent
    {D : Type} {μ arity : Nat}
    {wire :
      WireRowDecoder μ
        (Fin arity → Ipp.Bls12377.Fr)}
    {bytes :
      BindingOperations μ
        (Fin arity → Ipp.Bls12377.Fr) (ValidatedProof D)}
    {execution : ConstructorExecution}
    (materialization :
      ConstructorOutputMaterialization D μ arity wire bytes execution) :
    ConstructorArgumentsRepresent
      (arity := arity) wire execution materialization.input := by
  have hout := execution.outputExact
  have hversion :
      execution.output.protocol_version =
        (⟨aggregateProtocolVersion⟩ : Std.U32) :=
    Result.ok.inj
      (materialization.protocolVersionExecution.symm.trans
        extracted_protocol_version_exact)
  have hfamily :
      execution.family = shippingFamilyCode materialization.family := by
    calc
      execution.family = execution.output.family := by
        exact (congrArg (fun output => output.family) hout).symm
      _ = shippingFamilyCode materialization.family :=
        materialization.familyCodeExact
  refine {
    protocolVersion := ?_
    family := ?_
    srsId := ?_
    serializedVk := ?_
    vkDigest := ?_
    realCount := ?_
    paddedCount := ?_
    publicInputArity := ?_
    paddedRows := ?_
    canonicalStatementBytes := ?_
    statementDigest := ?_
    wrappedProofBytes := ?_
    innerProofBytes := ?_
    challengeContext := ?_
  }
  · exact congrArg (fun version : Std.U32 => version.val)
      ((congrArg (fun output => output.protocol_version) hout).symm.trans
        hversion)
  · rw [hfamily]
    exact shippingFamilyCode_represents materialization.family
  · simpa [ConstructorOutputMaterialization.input, hout]
  · simpa [ConstructorOutputMaterialization.input, hout]
  · simpa [ConstructorOutputMaterialization.input, hout]
  · simpa [ConstructorOutputMaterialization.input, hout]
  · simpa [ConstructorOutputMaterialization.input, hout] using
      materialization.paddedCountExact
  · simpa [ConstructorOutputMaterialization.input, hout] using
      materialization.publicInputArityExact
  · simpa [ConstructorOutputMaterialization.input, hout] using
      materialization.paddedRowsDecodeExact
  · simp [ConstructorOutputMaterialization.input, hout]
  · simp [ConstructorOutputMaterialization.input, hout]
  · simp [ConstructorOutputMaterialization.input, hout]
  · simp [ConstructorOutputMaterialization.input, hout]
  · simpa [ConstructorOutputMaterialization.input, hout] using
      materialization.challengeContextBytesExact

/-- Wrapper exposure is tied to the same output-derived statement digest,
wrapper bytes, and inner proof bytes used by the formal input. -/
theorem ConstructorOutputMaterialization.wrapperExact
    {D : Type} {μ arity : Nat}
    {wire :
      WireRowDecoder μ
        (Fin arity → Ipp.Bls12377.Fr)}
    {bytes :
      BindingOperations μ
        (Fin arity → Ipp.Bls12377.Fr) (ValidatedProof D)}
    {execution : ConstructorExecution}
    (materialization :
      ConstructorOutputMaterialization D μ arity wire bytes execution) :
    bytes.decodeWrapper materialization.input.statementDigest
        materialization.input.wrappedProofBytes =
      some materialization.input.innerProofBytes := by
  simpa [ConstructorOutputMaterialization.input] using
    materialization.wrapperDecodeExact

/-- Strict aggregate-proof decoding fixes the formal decoded proof to the
same inner bytes retained by the successful constructor. -/
theorem ConstructorOutputMaterialization.proofExact
    {D : Type} {μ arity : Nat}
    {wire :
      WireRowDecoder μ
        (Fin arity → Ipp.Bls12377.Fr)}
    {bytes :
      BindingOperations μ
        (Fin arity → Ipp.Bls12377.Fr) (ValidatedProof D)}
    {execution : ConstructorExecution}
    (materialization :
      ConstructorOutputMaterialization D μ arity wire bytes execution) :
    bytes.decodeProof materialization.input.innerProofBytes =
      some materialization.input.decodedProof := by
  simpa [ConstructorOutputMaterialization.input] using
    materialization.proofDecodeExact

/-- A complete accepted constructor call whose formal input and planned call
are definitionally installed from the actual Rust output.

The template supplies the remaining verifier types and static semantic
operations. Its former `input` and `call` fields are discarded by
`ConstructorOutputMaterialization.install`. This structure alone does not
claim that the template's projection, contract, base statement, or proof is
the semantic interpretation of the installed input; that separate boundary is
`ShippingSemanticAlignment` below. -/
structure OutputDerivedAcceptedCall
    {D : Type} {μ arity : Nat}
    (template : ShippingCallData D μ arity)
    (wire :
      WireRowDecoder μ
        (Fin arity → Ipp.Bls12377.Fr))
    (bytes :
      BindingOperations μ
        (Fin arity → Ipp.Bls12377.Fr) (ValidatedProof D)) : Type where
  execution : ConstructorExecution
  materialization :
    ConstructorOutputMaterialization D μ arity wire bytes execution
  application :
    ShippingApplicationConstruction
      (materialization.install template)
  rows :
    ExecutionCoupledRowConstruction execution materialization.input

/-- The exact `ShippingCallData` consumed by all downstream theorems. -/
def OutputDerivedAcceptedCall.shippingData
    {D : Type} {μ arity : Nat}
    {template : ShippingCallData D μ arity}
    {wire :
      WireRowDecoder μ
        (Fin arity → Ipp.Bls12377.Fr)}
    {bytes :
      BindingOperations μ
        (Fin arity → Ipp.Bls12377.Fr) (ValidatedProof D)}
    (construction : OutputDerivedAcceptedCall template wire bytes) :
    ShippingCallData D μ arity :=
  construction.materialization.install template

/-- The installed formal input is definitionally the constructor-output
materialization, independent of the template's former input field. -/
@[simp] theorem OutputDerivedAcceptedCall.shippingDataInputExact
    {D : Type} {μ arity : Nat}
    {template : ShippingCallData D μ arity}
    {wire :
      WireRowDecoder μ
        (Fin arity → Ipp.Bls12377.Fr)}
    {bytes :
      BindingOperations μ
        (Fin arity → Ipp.Bls12377.Fr) (ValidatedProof D)}
    (construction : OutputDerivedAcceptedCall template wire bytes) :
    construction.shippingData.input =
      construction.materialization.input := by
  rfl

/-- The installed planned call is definitionally the call retained by the
same constructor output. -/
@[simp] theorem OutputDerivedAcceptedCall.shippingDataCallExact
    {D : Type} {μ arity : Nat}
    {template : ShippingCallData D μ arity}
    {wire :
      WireRowDecoder μ
        (Fin arity → Ipp.Bls12377.Fr)}
    {bytes :
      BindingOperations μ
        (Fin arity → Ipp.Bls12377.Fr) (ValidatedProof D)}
    (construction : OutputDerivedAcceptedCall template wire bytes) :
    construction.shippingData.call =
      construction.execution.output.call := by
  rfl

/-- The static call in `ShippingCallData` is the exact constructor argument,
derived through the returned output rather than asserted directly. -/
theorem OutputDerivedAcceptedCall.executionCallExact
    {D : Type} {μ arity : Nat}
    {template : ShippingCallData D μ arity}
    {wire :
      WireRowDecoder μ
        (Fin arity → Ipp.Bls12377.Fr)}
    {bytes :
      BindingOperations μ
        (Fin arity → Ipp.Bls12377.Fr) (ValidatedProof D)}
    (construction : OutputDerivedAcceptedCall template wire bytes) :
    construction.execution.call = construction.shippingData.call := by
  simpa [OutputDerivedAcceptedCall.shippingData,
    ConstructorOutputMaterialization.install] using
    construction.materialization.outputCallExact.symm

/-- Exact support for the definitionally installed output-derived input. -/
def OutputDerivedAcceptedCall.supported
    {D : Type} {μ arity : Nat}
    {template : ShippingCallData D μ arity}
    {wire :
      WireRowDecoder μ
        (Fin arity → Ipp.Bls12377.Fr)}
    {bytes :
      BindingOperations μ
        (Fin arity → Ipp.Bls12377.Fr) (ValidatedProof D)}
    (construction : OutputDerivedAcceptedCall template wire bytes) :
    SupportedShippingInput (arity := arity) wire
      construction.shippingData.input := by
  change SupportedShippingInput (arity := arity) wire
    construction.materialization.input
  exact ⟨construction.execution,
    construction.materialization.argumentsRepresent, construction.rows⟩

/-- The production application projection now consumes the same call and
formal input fixed by the successful constructor output. -/
def OutputDerivedAcceptedCall.applicationProjection
    {D : Type} {μ arity : Nat}
    {template : ShippingCallData D μ arity}
    {wire :
      WireRowDecoder μ
        (Fin arity → Ipp.Bls12377.Fr)}
    {bytes :
      BindingOperations μ
        (Fin arity → Ipp.Bls12377.Fr) (ValidatedProof D)}
    (construction : OutputDerivedAcceptedCall template wire bytes) :
    ShippingApplicationProjectionContract construction.shippingData := by
  have hidentity :
      app_verifier.app_verify_plan_identity_core
          construction.shippingData.call.id
          construction.shippingData.call.bundle_family
          construction.shippingData.call.expected_real_count
          construction.shippingData.call.bundle_real_count =
        .ok (.Ok construction.shippingData.call.id) := by
    simpa only [construction.executionCallExact] using
      construction.execution.identityAccepted
  have hpadding :
      app_verifier.app_verify_plan_padding_core
          construction.shippingData.call.id
          construction.shippingData.call.expected_padded_count
          construction.shippingData.call.bundle_padded_count =
        .ok (.Ok construction.shippingData.call.id) := by
    simpa only [construction.executionCallExact] using
      construction.execution.paddingAccepted
  exact construction.application.projectionContract hidentity hpadding

/-- The wrapper decoder cannot select bytes distinct from the constructor
output recorded in the installed shipping input. -/
theorem OutputDerivedAcceptedCall.wrapperExact
    {D : Type} {μ arity : Nat}
    {template : ShippingCallData D μ arity}
    {wire :
      WireRowDecoder μ
        (Fin arity → Ipp.Bls12377.Fr)}
    {bytes :
      BindingOperations μ
        (Fin arity → Ipp.Bls12377.Fr) (ValidatedProof D)}
    (construction : OutputDerivedAcceptedCall template wire bytes) :
    bytes.decodeWrapper construction.shippingData.input.statementDigest
        construction.shippingData.input.wrappedProofBytes =
      some construction.shippingData.input.innerProofBytes := by
  simpa [OutputDerivedAcceptedCall.shippingData,
      ConstructorOutputMaterialization.install] using
    construction.materialization.wrapperExact

/-- The decoded proof in `ShippingCallData` cannot be chosen independently of
the strict decoder result for the retained inner bytes. -/
theorem OutputDerivedAcceptedCall.proofExact
    {D : Type} {μ arity : Nat}
    {template : ShippingCallData D μ arity}
    {wire :
      WireRowDecoder μ
        (Fin arity → Ipp.Bls12377.Fr)}
    {bytes :
      BindingOperations μ
        (Fin arity → Ipp.Bls12377.Fr) (ValidatedProof D)}
    (construction : OutputDerivedAcceptedCall template wire bytes) :
    bytes.decodeProof construction.shippingData.input.innerProofBytes =
      some construction.shippingData.input.decodedProof := by
  simpa [OutputDerivedAcceptedCall.shippingData,
      ConstructorOutputMaterialization.install] using
    construction.materialization.proofExact

/-- Strongest byte/call construction result before regenerating the outer
preflight extraction roots: one accepted Rust output fixes the complete formal
v1 input, its planned call, wrapper exposure, decoded proof, and ordered padded
rows.

This theorem intentionally concludes with `semantics.projection`, not the
projection and statement stored in the `ShippingCallData` template. Their
alignment is a distinct boundary below. -/
theorem OutputDerivedAcceptedCall.assemblesExactStatement
    {D : Type} {μ arity : Nat}
    {template : ShippingCallData D μ arity}
    {wire :
      WireRowDecoder μ
        (Fin arity → Ipp.Bls12377.Fr)}
    {bytes :
      BindingOperations μ
        (Fin arity → Ipp.Bls12377.Fr) (ValidatedProof D)}
    {semantics :
      SemanticOperations μ arity Ipp.Bls12377.Fr
        Ipp.Bls12377.g1PrimeSubgroup Ipp.Bls12377.g2PrimeSubgroup
        Ipp.Bls12377.ArkPairingOutput (ValidatedProof D)}
    (construction : OutputDerivedAcceptedCall template wire bytes)
    (boundary : ExactSemanticBoundary wire bytes semantics) :
    boundary.bindingContract.supported construction.shippingData.input ∧
      Ipp.ShippingV1.RepresentsShippingInput semantics.projection
        construction.shippingData.input
        (semantics.statementOf construction.shippingData.input.publicClaim)
        (semantics.proofOf construction.shippingData.input.decodedProof) ∧
      Ipp.ShippingV1.ValidCounts construction.shippingData.input ∧
      Ipp.ShippingV1.RealPrefixExact construction.shippingData.input ∧
      Ipp.ShippingV1.RepeatFinalPadding construction.shippingData.input ∧
      boundary.projectionContract.Projects construction.shippingData.input :=
  supported_boundary_assembles_exact_statement boundary
    construction.shippingData.input construction.supported

/-- Exact semantic alignment still required after byte/call materialization.

These four equations are the smallest bridge from the output-derived input to
the fields consumed by `ShippingVerifierComposition`. They neither state nor
imply verifier acceptance. In particular, `statementExact` must account for
the executable Arkworks pairing installed by `ShippingCallData.statement`. -/
structure ShippingSemanticAlignment
    {D : Type} {μ arity : Nat}
    {template : ShippingCallData D μ arity}
    {wire :
      WireRowDecoder μ
        (Fin arity → Ipp.Bls12377.Fr)}
    {bytes :
      BindingOperations μ
        (Fin arity → Ipp.Bls12377.Fr) (ValidatedProof D)}
    {semantics :
      SemanticOperations μ arity Ipp.Bls12377.Fr
        Ipp.Bls12377.g1PrimeSubgroup Ipp.Bls12377.g2PrimeSubgroup
        Ipp.Bls12377.ArkPairingOutput (ValidatedProof D)}
    (construction : OutputDerivedAcceptedCall template wire bytes)
    (boundary : ExactSemanticBoundary wire bytes semantics) : Prop where
  contractExact :
    construction.shippingData.contract = boundary.bindingContract
  projectionExact :
    construction.shippingData.projection = semantics.projection
  statementExact :
    construction.shippingData.statement =
      semantics.statementOf construction.shippingData.input.publicClaim
  proofExact :
    construction.shippingData.proof =
      semantics.proofOf construction.shippingData.input.decodedProof

/-- The exact downstream construction interface, with no unconstrained
shipping input, call, statement, proof, projection, or binding contract.

The residual hypotheses are the named decoder/serializer/VK/SRS/pairing
postconditions in `ConstructorOutputMaterialization`,
`ExactSemanticBoundary`, and `ShippingSemanticAlignment`; no acceptance event
appears in any of them. -/
theorem OutputDerivedAcceptedCall.shippingRefinementInputs
    {D : Type} {μ arity : Nat}
    {template : ShippingCallData D μ arity}
    {wire :
      WireRowDecoder μ
        (Fin arity → Ipp.Bls12377.Fr)}
    {bytes :
      BindingOperations μ
        (Fin arity → Ipp.Bls12377.Fr) (ValidatedProof D)}
    {semantics :
      SemanticOperations μ arity Ipp.Bls12377.Fr
        Ipp.Bls12377.g1PrimeSubgroup Ipp.Bls12377.g2PrimeSubgroup
        Ipp.Bls12377.ArkPairingOutput (ValidatedProof D)}
    (construction : OutputDerivedAcceptedCall template wire bytes)
    (boundary : ExactSemanticBoundary wire bytes semantics)
    (alignment : ShippingSemanticAlignment construction boundary) :
    construction.shippingData.contract.supported
        construction.shippingData.input ∧
      Ipp.ShippingV1.StatementProjectionContract
        construction.shippingData.projection
        construction.shippingData.contract ∧
      Ipp.ShippingV1.RepresentsShippingInput
        construction.shippingData.projection
        construction.shippingData.input
        construction.shippingData.statement
        construction.shippingData.proof ∧
      Ipp.ShippingV1.ValidCounts construction.shippingData.input ∧
      Ipp.ShippingV1.RealPrefixExact construction.shippingData.input ∧
      Ipp.ShippingV1.RepeatFinalPadding construction.shippingData.input := by
  rcases construction.assemblesExactStatement boundary with
    ⟨hsupported, hrepresents, hcounts, hprefix, hpadding, _hprojects⟩
  refine ⟨?_, ?_, ?_, hcounts, hprefix, hpadding⟩
  · simpa only [alignment.contractExact] using hsupported
  · simpa only [alignment.projectionExact, alignment.contractExact] using
      boundary.projectionContract
  · simpa only [alignment.projectionExact, alignment.statementExact,
      alignment.proofExact] using hrepresents

#print axioms ConstructorOutputMaterialization.outputCallExact
#print axioms ConstructorOutputMaterialization.argumentsRepresent
#print axioms ConstructorOutputMaterialization.wrapperExact
#print axioms ConstructorOutputMaterialization.proofExact
#print axioms OutputDerivedAcceptedCall.shippingDataInputExact
#print axioms OutputDerivedAcceptedCall.shippingDataCallExact
#print axioms OutputDerivedAcceptedCall.executionCallExact
#print axioms OutputDerivedAcceptedCall.supported
#print axioms OutputDerivedAcceptedCall.applicationProjection
#print axioms OutputDerivedAcceptedCall.wrapperExact
#print axioms OutputDerivedAcceptedCall.proofExact
#print axioms OutputDerivedAcceptedCall.assemblesExactStatement
#print axioms OutputDerivedAcceptedCall.shippingRefinementInputs

end

end Ipp.Extracted.ShippingCallMaterialization
