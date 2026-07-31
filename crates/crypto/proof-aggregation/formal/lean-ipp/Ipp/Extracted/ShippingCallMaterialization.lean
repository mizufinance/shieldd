import Ipp.Extracted.ShippingCallConstruction
import Ipp.ShippingStatementProjection

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
open Ipp.ShippingStatementProjection

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

/-- Concrete runtime material installed by the shipping Arkworks verifier.

This record deliberately omits the formal input, statement, proof,
projection, binding contract, prepared VK, and application construction.
Those values are constructed below from the accepted Rust constructor output
and `ExactSemanticBoundary`. The verifier-SRS loader equation is kept outside
this static record so each call must authenticate the exact retained SRS id.
-/
structure ConcreteShippingRuntime where
  randomizerState : Type
  tippState : Type
  tippPairingState : Type
  ppePairingState : Type
  results :
    alloc.vec.Vec
      Ipp.Extracted.AppVerifierStateMachine.CallResult
  hbilinear : Ipp.Bls12377.PublishedPairingBilinear
  verifierSrs :
    tipa.VerifierSRSData Ipp.Bls12377.g1PrimeSubgroup
      Ipp.Bls12377.g2PrimeSubgroup
  loadVerifierSrs :
    Bytes →
      Option (tipa.VerifierSRSData Ipp.Bls12377.g1PrimeSubgroup
        Ipp.Bls12377.g2PrimeSubgroup)
  serializeG1 :
    ark_serialize.CanonicalSerialize Ipp.Bls12377.g1PrimeSubgroup
  deserializeG1 :
    ark_serialize.CanonicalDeserialize Ipp.Bls12377.g1PrimeSubgroup
  serializeG2 :
    ark_serialize.CanonicalSerialize Ipp.Bls12377.g2PrimeSubgroup
  deserializeG2 :
    ark_serialize.CanonicalDeserialize Ipp.Bls12377.g2PrimeSubgroup
  primitive : Ipp.Extracted.TippMippAdapter.Primitive
    tippState Ipp.Bls12377.Fr Ipp.Bls12377.g1PrimeSubgroup
      Ipp.Bls12377.g2PrimeSubgroup Ipp.Bls12377.ArkPairingOutput
  serialization :
    Ipp.Extracted.TippMippAdapter.SerializationContract primitive
  randomizerEffects :
    applications.groth16_aggregation.AggregateRandomizerEffect
      randomizerState Ipp.Bls12377.Fr String
  tippOutcome : tippPairingState → Option Unit
  ppeOutcome : ppePairingState → Option Unit

/-- One exact execution of the generated application-plan constructor. -/
structure ShippingPlanExecution where
  declared :
    alloc.vec.Vec
      Ipp.Extracted.AppVerifierStateMachine.ExpectedCall
  expected :
    alloc.vec.Vec
      Ipp.Extracted.AppVerifierStateMachine.CallId
  execution :
    app_verifier.app_verify_plan_ids_core declared = .ok expected

/-- Install the concrete BLS12-377 pairing into otherwise exact semantic
operations. Consequently the shipping statement's executable-pairing wrapper
does not require a separately asserted statement-alignment equation. -/
noncomputable def executableSemanticOperations
    {D : Type} {μ arity : Nat}
    (hbilinear : Ipp.Bls12377.PublishedPairingBilinear)
    (operations :
      SemanticOperations μ arity Ipp.Bls12377.Fr
        Ipp.Bls12377.g1PrimeSubgroup Ipp.Bls12377.g2PrimeSubgroup
        Ipp.Bls12377.ArkPairingOutput (ValidatedProof D)) :
    SemanticOperations μ arity Ipp.Bls12377.Fr
      Ipp.Bls12377.g1PrimeSubgroup Ipp.Bls12377.g2PrimeSubgroup
      Ipp.Bls12377.ArkPairingOutput (ValidatedProof D) :=
  { operations with
    pairing := Ipp.Bls12377.executablePairingLinear hbilinear
  }

/-- Reinstalling the already selected executable pairing leaves the complete
statement unchanged. -/
@[simp] theorem executable_statement_exact
    {D : Type} {μ arity : Nat}
    (hbilinear : Ipp.Bls12377.PublishedPairingBilinear)
    (operations :
      SemanticOperations μ arity Ipp.Bls12377.Fr
        Ipp.Bls12377.g1PrimeSubgroup Ipp.Bls12377.g2PrimeSubgroup
        Ipp.Bls12377.ArkPairingOutput (ValidatedProof D))
    (claim :
      Ipp.ShippingV1.PublicClaim μ
        (Fin arity → Ipp.Bls12377.Fr)) :
    Ipp.Bls12377.statementWithExecutablePairing hbilinear
        ((executableSemanticOperations hbilinear operations).statementOf
          claim) =
      (executableSemanticOperations hbilinear operations).statementOf
        claim := by
  rfl

/-- A constructor-output-derived production call.

The formal input is definitionally materialized from `execution.output`.
The binding and projection contracts, formal statement, proof, and prepared
gammaABC vector are definitionally constructed from the exact boundary.
Only the concrete runtime installation, plan execution, and exact
verifier-SRS load remain as non-extracted inputs. -/
structure ConcreteOutputDerivedCall
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
        (executableSemanticOperations runtime.hbilinear operations)) :
    Type where
  constructor : BuiltConstructorExecution
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

/-- The accepted input-constructor execution derived from the generated
planned-call output. -/
def ConcreteOutputDerivedCall.execution
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
    (construction :
      ConcreteOutputDerivedCall wire bytes operations runtime boundary) :
    ConstructorExecution :=
  construction.constructor.toConstructorExecution

/-- Concrete support is recovered from the one constructor output and its
coupled repeat-final execution. -/
def ConcreteOutputDerivedCall.supported
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
    (construction :
      ConcreteOutputDerivedCall wire bytes operations runtime boundary) :
    SupportedShippingInput (arity := arity) wire
      construction.materialization.input :=
  ⟨construction.execution,
    construction.materialization.argumentsRepresent,
    construction.rows⟩

/-- The full `ShippingCallData` value is constructed rather than supplied as
a template. In particular, its statement, proof, projection, binding
contract, gammaABC vector, input, and planned call cannot be replaced
independently of the retained production output. -/
noncomputable def ConcreteOutputDerivedCall.shippingData
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
    (construction :
      ConcreteOutputDerivedCall wire bytes operations runtime boundary) :
    ShippingCallData D μ arity :=
  {
    randomizerState := runtime.randomizerState
    tippState := runtime.tippState
    tippPairingState := runtime.tippPairingState
    ppePairingState := runtime.ppePairingState
    expected := construction.plan.expected
    results := runtime.results
    call := construction.execution.output.call
    hbilinear := runtime.hbilinear
    projection :=
      (executableSemanticOperations runtime.hbilinear operations).projection
    contract := boundary.bindingContract
    input := construction.materialization.input
    baseStmt :=
      (executableSemanticOperations runtime.hbilinear operations).statementOf
        construction.materialization.input.publicClaim
    proof :=
      (executableSemanticOperations runtime.hbilinear operations).proofOf
        construction.materialization.input.decodedProof
    gammaABC :=
      (boundary.vkMaterial construction.materialization.input
        construction.supported).gammaABC
    srs := runtime.verifierSrs
    serializeG1 := runtime.serializeG1
    deserializeG1 := runtime.deserializeG1
    serializeG2 := runtime.serializeG2
    deserializeG2 := runtime.deserializeG2
    primitive := runtime.primitive
    serialization := runtime.serialization
    randomizerEffects := runtime.randomizerEffects
    tippOutcome := runtime.tippOutcome
    ppeOutcome := runtime.ppeOutcome
  }

/-- The constructed call is the exact call retained by the Rust constructor
output. -/
@[simp] theorem ConcreteOutputDerivedCall.shippingCallExact
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
    (construction :
      ConcreteOutputDerivedCall wire bytes operations runtime boundary) :
    construction.shippingData.call = construction.execution.call := by
  exact construction.materialization.outputCallExact

/-- The statement stored in the concrete shipping call is exactly the
definitionally projected statement of the output-derived public claim. -/
@[simp] theorem ConcreteOutputDerivedCall.shippingStatementExact
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
    (construction :
      ConcreteOutputDerivedCall wire bytes operations runtime boundary) :
    construction.shippingData.statement =
      (executableSemanticOperations runtime.hbilinear operations).statementOf
        construction.materialization.input.publicClaim := by
  exact executable_statement_exact runtime.hbilinear operations
    construction.materialization.input.publicClaim

/-- The generated application construction is derived from the same output
and generated plan equations. Family, count, identity, and padding facts are
not caller-supplied premises. -/
noncomputable def ConcreteOutputDerivedCall.application
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
    (construction :
      ConcreteOutputDerivedCall wire bytes operations runtime boundary) :
    ShippingApplicationConstruction construction.shippingData := by
  have harguments := construction.materialization.argumentsRepresent
  have hfamily :
      shippingFamilyCode construction.materialization.input.family =
        construction.execution.family := by
    exact construction.materialization.familyCodeExact.symm.trans
      (congrArg (fun output => output.family)
        construction.execution.outputExact)
  refine {
    declared := construction.plan.declared
    plan := construction.plan.execution
    realCountWire := construction.execution.realCount
    paddedCountWire := construction.execution.paddedCount
    realCountWireExact := harguments.realCount.symm
    paddedCountWireExact := harguments.paddedCount
    scalarProjection := ?_
  }
  rw [construction.shippingCallExact, hfamily]
  exact construction.execution.projectionAccepted

/-- Family and both count equalities are derived from the constructed
application witness and the constructor's own successful identity/padding
checks. -/
noncomputable def ConcreteOutputDerivedCall.applicationProjection
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
    (construction :
      ConcreteOutputDerivedCall wire bytes operations runtime boundary) :
    ShippingApplicationProjectionContract construction.shippingData := by
  apply construction.application.projectionContract
  · simpa only [construction.shippingCallExact] using
      construction.execution.identityAccepted
  · simpa only [construction.shippingCallExact] using
      construction.execution.paddingAccepted

/-- The projection contract is now a theorem about the constructed call,
rather than a field in caller-owned `ShippingCallData`. -/
theorem ConcreteOutputDerivedCall.statementProjection
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
    (construction :
      ConcreteOutputDerivedCall wire bytes operations runtime boundary) :
    Ipp.ShippingV1.StatementProjectionContract
      construction.shippingData.projection
      construction.shippingData.contract := by
  exact boundary.projectionContract

/-- The constructed statement and proof represent precisely the formal input
materialized from the Rust output. -/
theorem ConcreteOutputDerivedCall.represents
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
    (construction :
      ConcreteOutputDerivedCall wire bytes operations runtime boundary) :
    Ipp.ShippingV1.RepresentsShippingInput
      construction.shippingData.projection construction.shippingData.input
      construction.shippingData.statement construction.shippingData.proof := by
  simpa only [construction.shippingStatementExact] using
    (executableSemanticOperations runtime.hbilinear operations).represents
      construction.materialization.input

/-- The prepared gammaABC vector installed in the adapter is the selected
prepared VK vector, and every Aic term uses the row at the same padded index.
-/
theorem ConcreteOutputDerivedCall.preparedVk
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
    (construction :
      ConcreteOutputDerivedCall wire bytes operations runtime boundary) :
    ArkworksPreparedVkAicContract construction.shippingData.statement
      construction.shippingData.gammaABC
      construction.shippingData.input.publicRows := by
  refine { aic := ?_ }
  intro i
  have hroute :=
    boundary.vkDigestRouteExecution construction.materialization.input
      construction.supported
  rw [construction.shippingStatementExact]
  simp [ConcreteOutputDerivedCall.shippingData,
    SemanticOperations.statementOf,
    Ipp.ShippingV1.ShippingV1Input.publicClaim,
    hroute, preparedAic]

/-- Reinstalling output-derived call/input fields into the already constructed
call data is an identity operation. -/
@[simp] theorem ConcreteOutputDerivedCall.installExact
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
    (construction :
      ConcreteOutputDerivedCall wire bytes operations runtime boundary) :
    construction.materialization.install construction.shippingData =
      construction.shippingData := by
  rfl

/-- Compatibility projection into the existing heterogeneous bundle
materialization. The legacy template is the already constructed concrete call
itself, so it cannot reintroduce independently selected semantic fields. -/
noncomputable def ConcreteOutputDerivedCall.toOutputDerivedAcceptedCall
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
    (construction :
      ConcreteOutputDerivedCall wire bytes operations runtime boundary) :
    OutputDerivedAcceptedCall construction.shippingData wire bytes :=
  {
    execution := construction.execution
    materialization := construction.materialization
    application := by
      simpa only [construction.installExact] using construction.application
    rows := construction.rows
  }

/-- The existing bundle-level semantic-alignment record is also derived; it
is no longer a caller premise for concrete output-derived calls. -/
noncomputable def ConcreteOutputDerivedCall.semanticAlignment
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
    (construction :
      ConcreteOutputDerivedCall wire bytes operations runtime boundary) :
    ShippingSemanticAlignment construction.toOutputDerivedAcceptedCall
      boundary := by
  refine {
    contractExact := ?_
    projectionExact := ?_
    statementExact := ?_
    proofExact := ?_
  }
  · rfl
  · rfl
  · simpa only [construction.installExact] using
      construction.shippingStatementExact
  · rfl

/-- Exact verifier-SRS loading is retained on the constructed call data. -/
theorem ConcreteOutputDerivedCall.verifierSrsExact
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
    (construction :
      ConcreteOutputDerivedCall wire bytes operations runtime boundary) :
    runtime.loadVerifierSrs construction.shippingData.input.srsId =
      some construction.shippingData.srs :=
  construction.verifierSrsLoadExecution

/-- Irreducible verifier boundaries left after concrete call construction.

Support, statement projection, statement/proof representation, prepared-VK
Aic projection, application construction, and challenge admissibility are
intentionally absent: construction fields are theorems of
`ConcreteOutputDerivedCall`, while admissibility comes from the deployed
bounded-sampler execution. -/
structure ConcreteVerifierExternalRemainder
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
    (construction :
      ConcreteOutputDerivedCall wire bytes operations runtime boundary) where
  kernel :
    Ipp.Extracted.AggregateVerifier.ArkworksTippKernelContract
      construction.shippingData.hbilinear
      construction.shippingData.primitive
  decoded :
    ∀ transcript
      (_execution :
        AcceptedShippingExecutionAt construction.shippingData transcript),
      ArkworksDecodedProofContract construction.shippingData.hbilinear
        construction.shippingData.baseStmt
        construction.shippingData.input.decodedProof
        construction.shippingData.proof transcript
        construction.shippingData.srs.g
        construction.shippingData.srs.g_beta
        construction.shippingData.srs.h
        construction.shippingData.srs.h_alpha
  kzg :
    ∀ transcript
      (execution :
        AcceptedShippingExecutionAt construction.shippingData transcript),
      Ipp.Extracted.AggregateVerifier.ArkworksTippKzgContract
        construction.shippingData.hbilinear
        construction.shippingData.baseStmt
        construction.shippingData.proof transcript
        construction.shippingData.srs.g
        construction.shippingData.srs.g_beta
        construction.shippingData.srs.h
        construction.shippingData.srs.h_alpha
        execution.tippPairing construction.shippingData.tippOutcome

/-- Assemble the downstream external-contract record with every construction
field filled by the output-derived theorems above. -/
noncomputable def ConcreteOutputDerivedCall.externalContracts
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
    (construction :
      ConcreteOutputDerivedCall wire bytes operations runtime boundary)
    (remainder : ConcreteVerifierExternalRemainder construction) :
    ShippingVerifierExternalContracts construction.shippingData :=
  {
    kernel := remainder.kernel
    supported := construction.supported
    statementProjection := construction.statementProjection
    represents := construction.represents
    preparedVk := construction.preparedVk
    decoded := remainder.decoded
    kzg := remainder.kzg
  }

/-- Complete verifier-refinement package with the application witness and all
statement-construction fields derived internally. -/
noncomputable def ConcreteOutputDerivedCall.refinementContracts
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
    (construction :
      ConcreteOutputDerivedCall wire bytes operations runtime boundary)
    (remainder : ConcreteVerifierExternalRemainder construction) :
    ShippingVerifierRefinementContracts construction.shippingData :=
  {
    application := construction.application
    external := construction.externalContracts remainder
  }

/-- Concrete construction capstone for the statement and Rust-call gaps.

All conclusions are derived from the generated constructor/plan/padding
executions and exact external postconditions. No accepted formal verifier
event or target refinement is an input. -/
theorem concrete_rust_shipping_call_construction
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
    (construction :
      ConcreteOutputDerivedCall wire bytes operations runtime boundary) :
    construction.shippingData.call =
        construction.constructor.callConstruction.output ∧
      construction.shippingData.call = construction.execution.output.call ∧
      construction.shippingData.input =
        construction.materialization.input ∧
      runtime.loadVerifierSrs construction.shippingData.input.srsId =
        some construction.shippingData.srs ∧
      ShippingApplicationConstruction construction.shippingData ∧
      ShippingApplicationProjectionContract construction.shippingData ∧
      construction.shippingData.contract.supported
        construction.shippingData.input ∧
      construction.shippingData.input.canonicalStatementBytes =
        bytes.encodePublicClaim
          construction.shippingData.input.publicClaim ∧
      construction.shippingData.input.vkDigest =
        bytes.sha256
          (Ipp.ShippingV1.vkDigestPreimage
            construction.shippingData.input.serializedVk) ∧
      construction.shippingData.input.statementDigest =
        bytes.sha256
          (Ipp.ShippingV1.statementDigestPreimage
            construction.shippingData.input.canonicalStatementBytes) ∧
      List.ofFn construction.shippingData.input.challengeContext =
        bytes.sha256
          (Ipp.ShippingV1.challengeContextPreimage
            construction.shippingData.input.statementDigest) ∧
      bytes.decodeWrapper
          construction.shippingData.input.statementDigest
          construction.shippingData.input.wrappedProofBytes =
        some construction.shippingData.input.innerProofBytes ∧
      bytes.decodeProof construction.shippingData.input.innerProofBytes =
        some construction.shippingData.input.decodedProof ∧
      Ipp.ShippingV1.StatementProjectionContract
        construction.shippingData.projection
        construction.shippingData.contract ∧
      Ipp.ShippingV1.RepresentsShippingInput
        construction.shippingData.projection
        construction.shippingData.input
        construction.shippingData.statement
        construction.shippingData.proof ∧
      ArkworksPreparedVkAicContract construction.shippingData.statement
        construction.shippingData.gammaABC
        construction.shippingData.input.publicRows ∧
      Ipp.ShippingV1.ValidCounts construction.shippingData.input ∧
      Ipp.ShippingV1.RealPrefixExact construction.shippingData.input ∧
      Ipp.ShippingV1.RepeatFinalPadding construction.shippingData.input := by
  have hprojection :=
    Ipp.ShippingStatementProjection.concrete_shipping_statement_projection_contract
      boundary construction.supported
  exact
    ⟨construction.shippingCallExact, rfl, rfl,
      construction.verifierSrsExact, construction.application,
      construction.applicationProjection, construction.supported,
      boundary.canonicalStatementConstruction
        construction.materialization.input construction.supported,
      boundary.vkDigestShaExecution
        construction.materialization.input construction.supported,
      boundary.statementDigestShaExecution
        construction.materialization.input construction.supported,
      boundary.challengeContextShaExecution
        construction.materialization.input construction.supported,
      construction.materialization.wrapperExact,
      construction.materialization.proofExact,
      hprojection.1, construction.represents,
      construction.preparedVk,
      hprojection.2.2.validCounts, hprojection.2.2.realPrefixExact,
      hprojection.2.2.repeatFinalPadding⟩

/-- A raw accepted adapter result can be installed into the constructed call
without separately supplying identity or padding successes. Those successes
come from the same accepted shipping-input constructor. -/
noncomputable def ConcreteOutputDerivedCall.acceptedExecution
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
    (construction :
      ConcreteOutputDerivedCall wire bytes operations runtime boundary)
    (transcript : Ipp.FsTranscript μ Ipp.Bls12377.Fr)
    (planned :
      construction.shippingData.call.id ∈
        construction.shippingData.expected.val)
    (reducerAccepted :
      app_verifier.app_verify_normal_acceptance_core
          construction.shippingData.expected
          construction.shippingData.results =
        .ok (.Ok true))
    (randomizerEffect finalRandomizerEffect :
      construction.shippingData.randomizerState)
    (effect finalEffect : construction.shippingData.tippState)
    (tippPairing : construction.shippingData.tippPairingState)
    (ppePairing : construction.shippingData.ppePairingState)
    (adapter :
      construction.shippingData.AdapterAcceptedAt transcript
        randomizerEffect finalRandomizerEffect effect finalEffect
        tippPairing ppePairing) :
    AcceptedShippingExecutionAt construction.shippingData transcript := by
  refine {
    planned := planned
    reducerAccepted := reducerAccepted
    identityAccepted := ?_
    paddingAccepted := ?_
    randomizerEffect := randomizerEffect
    finalRandomizerEffect := finalRandomizerEffect
    effect := effect
    finalEffect := finalEffect
    tippPairing := tippPairing
    ppePairing := ppePairing
    adapter := adapter
  }
  · simpa only [construction.shippingCallExact] using
      construction.execution.identityAccepted
  · simpa only [construction.shippingCallExact] using
      construction.execution.paddingAccepted

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
#print axioms executable_statement_exact
#print axioms ConcreteOutputDerivedCall.supported
#print axioms ConcreteOutputDerivedCall.shippingCallExact
#print axioms ConcreteOutputDerivedCall.shippingStatementExact
#print axioms ConcreteOutputDerivedCall.application
#print axioms ConcreteOutputDerivedCall.applicationProjection
#print axioms ConcreteOutputDerivedCall.statementProjection
#print axioms ConcreteOutputDerivedCall.represents
#print axioms ConcreteOutputDerivedCall.preparedVk
#print axioms ConcreteOutputDerivedCall.installExact
#print axioms ConcreteOutputDerivedCall.toOutputDerivedAcceptedCall
#print axioms ConcreteOutputDerivedCall.semanticAlignment
#print axioms ConcreteOutputDerivedCall.verifierSrsExact
#print axioms ConcreteOutputDerivedCall.externalContracts
#print axioms ConcreteOutputDerivedCall.refinementContracts
#print axioms concrete_rust_shipping_call_construction
#print axioms ConcreteOutputDerivedCall.acceptedExecution

end

end Ipp.Extracted.ShippingCallMaterialization
