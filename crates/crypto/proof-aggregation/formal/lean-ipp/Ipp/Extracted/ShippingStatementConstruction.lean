import Ipp.Extracted.AppVerifierShipping
import Ipp.Extracted.ShippingRowConstruction
import Ipp.ShippingV1

/-!
Construction of the formal shipping statement from the production-used
`app_verify_shipping_input_from_parts` root.  The extracted theorem owns byte
retention.  The remaining fields are exact, operation-specific postconditions
for the Rust/F*/Arkworks boundary; no field assumes either target contract.
-/

namespace Ipp.Extracted.ShippingStatementConstruction

open Aeneas Aeneas.Std Result ControlFlow Error
open Std.Do
open ark_ip_proofs

noncomputable section

abbrev Bytes := Ipp.ShippingV1.Bytes

/-- Authenticated wire version used by the shipping Rust constructor.  The
generated `app_verify_protocol_version_core` root pins this value to the
production constant.  It is distinct from the formal protocol name
`SnarkPackV1`. -/
def aggregateProtocolVersion : Nat := 2

/-- The extracted production accessor fixes the authenticated wire version;
formal construction cannot choose a different version. -/
@[simp] theorem extracted_protocol_version_exact :
    app_verifier.app_verify_protocol_version_core =
      .ok (⟨aggregateProtocolVersion⟩ : Std.U32) := by
  rfl

/-- Byte shape received by the production statement constructor before field
elements are decoded. -/
def paddedRowsBytes
    (rows : alloc.vec.Vec (alloc.vec.Vec (alloc.vec.Vec UInt8))) :
    List (List (List UInt8)) :=
  rows.val.map fun row => row.val.map fun value => value.val

/-- One successful invocation of the production-used shipping-input
constructor.  This contains only concrete arguments and its extracted result
equation. -/
structure ConstructorExecution where
  call : app_verifier.AppVerifyShippingCall
  protocolVersion : Std.U32
  family : app_verifier.AppVerifyFamilyCode
  srsId : alloc.vec.Vec UInt8
  serializedVk : alloc.vec.Vec UInt8
  vkDigest : alloc.vec.Vec UInt8
  realCount : Std.U32
  paddedCount : Std.U32
  publicInputArity : Std.U32
  paddedPublicInputs :
    alloc.vec.Vec (alloc.vec.Vec (alloc.vec.Vec UInt8))
  canonicalStatementBytes : alloc.vec.Vec UInt8
  wrapper : app_verifier.AppVerifyShippingWrapperProjection
  challengeContext : alloc.vec.Vec UInt8
  output : app_verifier.AppVerifyShippingInput
  accepted :
    app_verifier.app_verify_shipping_input_from_parts
        call protocolVersion family srsId serializedVk vkDigest
        realCount paddedCount publicInputArity paddedPublicInputs
        canonicalStatementBytes wrapper challengeContext =
      .ok (.Ok output)

/-- The accepted extracted constructor returns exactly the record assembled
from its arguments. -/
@[simp] theorem ConstructorExecution.outputExact
    (execution : ConstructorExecution) :
    execution.output =
      { call := execution.call
        protocol_version := execution.protocolVersion
        family := execution.family
        srs_id := execution.srsId
        serialized_vk := execution.serializedVk
        vk_digest := execution.vkDigest
        real_count := execution.realCount
        padded_count := execution.paddedCount
        public_input_arity := execution.publicInputArity
        padded_public_inputs := execution.paddedPublicInputs
        canonical_statement_bytes := execution.canonicalStatementBytes
        statement_digest := execution.wrapper.statement_digest
        wrapped_proof_bytes := execution.wrapper.wrapped_proof_bytes
        inner_proof_bytes := execution.wrapper.inner_proof_bytes
        challenge_context := execution.challengeContext } :=
  Ipp.Extracted.AppVerifierStateMachine.extracted_shipping_input_success_exact
    execution.call execution.protocolVersion execution.family execution.srsId
    execution.serializedVk execution.vkDigest execution.realCount
    execution.paddedCount execution.publicInputArity
    execution.paddedPublicInputs execution.canonicalStatementBytes
    execution.wrapper execution.challengeContext execution.output
    execution.accepted

/-- Pure decoding of the nested canonical field bytes retained by the
shipping constructor. -/
structure WireRowDecoder (μ : Nat) (Row : Type) where
  decodePaddedRows :
    List (List (List UInt8)) → Option (Fin (2 ^ μ) → Row)

/-- Exact relation between constructor arguments and one formal shipping
input.  Decoding and cryptographic semantics are deliberately absent here. -/
structure ConstructorArgumentsRepresent
    {μ arity : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT]
    (wire : WireRowDecoder μ Row)
    (execution : ConstructorExecution)
    (input : Ipp.ShippingV1.ShippingV1Input
      μ F G1 G2 GT Row DecodedProof) : Prop where
  protocolVersion :
    execution.protocolVersion.val = aggregateProtocolVersion
  family :
    Ipp.Extracted.AppVerifierStateMachine.RepresentsShippingFamily
      execution.family input.family
  srsId : input.srsId = execution.srsId.val
  serializedVk : input.serializedVk = execution.serializedVk.val
  vkDigest : input.vkDigest = execution.vkDigest.val
  realCount : input.realCount = execution.realCount.val
  paddedCount : execution.paddedCount.val = 2 ^ μ
  publicInputArity : execution.publicInputArity.val = arity
  paddedRows :
    wire.decodePaddedRows
        (paddedRowsBytes execution.paddedPublicInputs) =
      some input.publicRows
  canonicalStatementBytes :
    input.canonicalStatementBytes =
      execution.canonicalStatementBytes.val
  statementDigest :
    input.statementDigest = execution.wrapper.statement_digest.val
  wrappedProofBytes :
    input.wrappedProofBytes = execution.wrapper.wrapped_proof_bytes.val
  innerProofBytes :
    input.innerProofBytes = execution.wrapper.inner_proof_bytes.val
  challengeContext :
    List.ofFn input.challengeContext = execution.challengeContext.val

/-- The same relation stated against the actual extracted output. -/
structure OutputRetainsShippingInput
    {μ arity : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT]
    (wire : WireRowDecoder μ Row)
    (execution : ConstructorExecution)
    (input : Ipp.ShippingV1.ShippingV1Input
      μ F G1 G2 GT Row DecodedProof) : Prop where
  family :
    Ipp.Extracted.AppVerifierStateMachine.RepresentsShippingFamily
      execution.output.family input.family
  srsId : input.srsId = execution.output.srs_id.val
  serializedVk : input.serializedVk = execution.output.serialized_vk.val
  vkDigest : input.vkDigest = execution.output.vk_digest.val
  realCount : input.realCount = execution.output.real_count.val
  paddedCount : execution.output.padded_count.val = 2 ^ μ
  publicInputArity : execution.output.public_input_arity.val = arity
  paddedRows :
    wire.decodePaddedRows
        (paddedRowsBytes execution.output.padded_public_inputs) =
      some input.publicRows
  canonicalStatementBytes :
    input.canonicalStatementBytes =
      execution.output.canonical_statement_bytes.val
  statementDigest :
    input.statementDigest = execution.output.statement_digest.val
  wrappedProofBytes :
    input.wrappedProofBytes = execution.output.wrapped_proof_bytes.val
  innerProofBytes :
    input.innerProofBytes = execution.output.inner_proof_bytes.val
  challengeContext :
    List.ofFn input.challengeContext = execution.output.challenge_context.val

/-- The extracted constructor equation transports every byte, count, family,
and decoded-row source named by the formal input to the actual returned
record. -/
theorem accepted_constructor_retains_shipping_input
    {μ arity : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT]
    {wire : WireRowDecoder μ Row}
    {execution : ConstructorExecution}
    {input : Ipp.ShippingV1.ShippingV1Input
      μ F G1 G2 GT Row DecodedProof}
    (representation :
      ConstructorArgumentsRepresent (arity := arity)
        wire execution input) :
    OutputRetainsShippingInput (arity := arity)
      wire execution input := by
  have hout := execution.outputExact
  refine {
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
  · simpa only [hout] using representation.family
  · simpa only [hout] using representation.srsId
  · simpa only [hout] using representation.serializedVk
  · simpa only [hout] using representation.vkDigest
  · simpa only [hout] using representation.realCount
  · simpa only [hout] using representation.paddedCount
  · simpa only [hout] using representation.publicInputArity
  · simpa only [hout] using representation.paddedRows
  · simpa only [hout] using representation.canonicalStatementBytes
  · simpa only [hout] using representation.statementDigest
  · simpa only [hout] using representation.wrappedProofBytes
  · simpa only [hout] using representation.innerProofBytes
  · simpa only [hout] using representation.challengeContext

/-- One repeat-final execution whose source rows, padded rows, and serialized
matrix all belong to the same accepted shipping-input constructor execution.
The projection fields remain the narrow outer-caller/Arkworks boundary. -/
structure ExecutionCoupledRowConstruction
    {μ : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT]
    (execution : ConstructorExecution)
    (input : Ipp.ShippingV1.ShippingV1Input
      μ F G1 G2 GT Row DecodedProof) where
  cloneInst : core.clone.Clone Row
  cloneExact : ∀ row, cloneInst.clone row = .ok row
  sourceRows : alloc.vec.Vec Row
  paddedRows : alloc.vec.Vec Row
  sourceNonempty : sourceRows.val ≠ []
  realCountExact : input.realCount = sourceRows.val.length
  realRowsExact :
    ∀ i : Fin input.realCount,
      sourceRows.val[i.val]? = some (input.realRows i)
  paddedRowsExact :
    ∀ i : Fin (2 ^ μ),
      paddedRows.val[i.val]? = some (input.publicRows i)
  encodeRow : Row → List (List UInt8)
  serializedPaddedRowsExact :
    paddedRowsBytes execution.paddedPublicInputs =
      paddedRows.val.map encodeRow
  paddingExecution :
    app_verifier.app_verify_repeat_final_rows_core
        cloneInst sourceRows ⟨2 ^ μ⟩ =
      .ok (.Ok paddedRows)

/-- Forget only the constructor serialization link after the execution-coupled
witness has supplied the exact extracted padding execution. -/
def ExecutionCoupledRowConstruction.toExactRowConstruction
    {μ : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT]
    {execution : ConstructorExecution}
    {input : Ipp.ShippingV1.ShippingV1Input
      μ F G1 G2 GT Row DecodedProof}
    (rows : ExecutionCoupledRowConstruction execution input) :
    Ipp.Extracted.ShippingRowConstruction.ExactRowConstruction input :=
  Ipp.Extracted.ShippingRowConstruction.ExactRowConstruction.ofExtractedSuccess
    input rows.cloneInst rows.cloneExact rows.sourceRows rows.paddedRows
    rows.sourceNonempty rows.realCountExact rows.realRowsExact
    rows.paddedRowsExact rows.paddingExecution

/-- Inputs supported by the concrete contract are exactly those backed by a
successful extracted constructor invocation, its exact argument projection,
and one repeat-final execution coupled to that constructor's serialized row
matrix. -/
def SupportedShippingInput
    {μ arity : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT]
    (wire : WireRowDecoder μ Row)
    (input : Ipp.ShippingV1.ShippingV1Input
      μ F G1 G2 GT Row DecodedProof) : Prop :=
  ∃ execution : ConstructorExecution,
    ConstructorArgumentsRepresent (arity := arity)
      wire execution input ∧
    ExecutionCoupledRowConstruction execution input

/-- Exact row construction is data carried by concrete support, not a free
semantic postcondition of the statement contract. -/
theorem supported_shipping_input_row_construction
    {μ arity : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT]
    {wire : WireRowDecoder μ Row}
    {input : Ipp.ShippingV1.ShippingV1Input
      μ F G1 G2 GT Row DecodedProof}
    (hsupported : SupportedShippingInput (arity := arity) wire input) :
    Ipp.Extracted.ShippingRowConstruction.ExactRowConstruction input := by
  rcases hsupported with ⟨_execution, _representation, rows⟩
  exact rows.toExactRowConstruction

/-- Every supported input is therefore retained in the actual output of at
least one successful extracted constructor run. -/
theorem supported_shipping_input_has_retained_output
    {μ arity : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT]
    {wire : WireRowDecoder μ Row}
    {input : Ipp.ShippingV1.ShippingV1Input
      μ F G1 G2 GT Row DecodedProof}
    (hsupported : SupportedShippingInput (arity := arity) wire input) :
    ∃ execution : ConstructorExecution,
      OutputRetainsShippingInput (arity := arity)
        wire execution input := by
  rcases hsupported with ⟨execution, representation, _rows⟩
  exact ⟨execution,
    accepted_constructor_retains_shipping_input representation⟩

/-- Prepared verification-key material selected by the authenticated family
and VK digest. -/
structure PreparedVkMaterial (arity : Nat) (G1 G2 : Type) where
  alpha : G1
  beta : G2
  gamma : G2
  delta : G2
  gammaABC : Fin (arity + 1) → G1

/-- SRS material selected by the authenticated SRS identity. -/
structure SrsMaterial (μ : Nat) (G1 G2 : Type) where
  v : Fin (2 ^ μ) → G2
  w : Fin (2 ^ μ) → G1

/-- Production semantic operations.  `statementOf` is constructed below from
these operations; it is not supplied as an unconstrained function. -/
structure SemanticOperations
    (μ arity : Nat) (F G1 G2 GT DecodedProof : Type)
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT] where
  pairing : G1 →ₗ[F] G2 →ₗ[F] GT
  acceptV : F → (Fin (2 ^ μ) → F) → G2 → G2 → Prop
  acceptW : F → (Fin (2 ^ μ) → F) → G1 → G1 → Prop
  rejectionFuel : Nat
  defaultVk : PreparedVkMaterial arity G1 G2
  defaultSrs : SrsMaterial μ G1 G2
  resolveVk :
    Ipp.ShippingV1.Family → Bytes →
      Option (PreparedVkMaterial arity G1 G2)
  decodeSerializedVk :
    Bytes → Option (PreparedVkMaterial arity G1 G2)
  loadSrs : Bytes → Option (SrsMaterial μ G1 G2)
  prepareAic :
    (Fin (arity + 1) → G1) → (Fin arity → F) → Option G1
  proofOf :
    DecodedProof → Ipp.Proof μ F G1 G2 GT

def preparedAic
    {arity : Nat} {F G1 : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    (gammaABC : Fin (arity + 1) → G1)
    (row : Fin arity → F) : G1 :=
  gammaABC 0 +
    ∑ j : Fin arity, row j • gammaABC (Fin.succ j)

/-- The formal statement is definitionally assembled from the VK-digest
resolver, SRS loader, and prepared gammaABC formula. -/
def SemanticOperations.statementOf
    {μ arity : Nat} {F G1 G2 GT DecodedProof : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (operations : SemanticOperations μ arity F G1 G2 GT DecodedProof)
    (claim : Ipp.ShippingV1.PublicClaim μ (Fin arity → F)) :
    Ipp.FsStatement μ F G1 G2 GT :=
  let vk :=
    (operations.resolveVk claim.family claim.vkDigest).getD
      operations.defaultVk
  let srs := (operations.loadSrs claim.srsId).getD operations.defaultSrs
  {
    e := operations.pairing
    srsV := srs.v
    srsW := srs.w
    acceptV := operations.acceptV
    acceptW := operations.acceptW
    alpha := vk.alpha
    beta := vk.beta
    gamma := vk.gamma
    delta := vk.delta
    Aic := fun i => preparedAic vk.gammaABC (claim.rows i)
    rejectionFuel := operations.rejectionFuel
  }

def SemanticOperations.projection
    {μ arity : Nat} {F G1 G2 GT DecodedProof : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (operations : SemanticOperations μ arity F G1 G2 GT DecodedProof) :
    Ipp.ShippingV1.ShippingProjection μ F G1 G2 GT
      (Fin arity → F) DecodedProof :=
  {
    statementOf := operations.statementOf
    proofOf := operations.proofOf
  }

/-- The constructed projection represents its statement and decoded proof by
definition, so later shipping composition does not need a separate
`RepresentsShippingInput` premise. -/
theorem SemanticOperations.represents
    {μ arity : Nat} {F G1 G2 GT DecodedProof : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (operations : SemanticOperations μ arity F G1 G2 GT DecodedProof)
    (input : Ipp.ShippingV1.ShippingV1Input μ F G1 G2 GT
      (Fin arity → F) DecodedProof) :
    Ipp.ShippingV1.RepresentsShippingInput operations.projection input
      (operations.statementOf input.publicClaim)
      (operations.proofOf input.decodedProof) :=
  ⟨rfl, rfl⟩

def SemanticOperations.decodeVkTuple
    {μ arity : Nat} {F G1 G2 GT DecodedProof : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (operations : SemanticOperations μ arity F G1 G2 GT DecodedProof)
    (bytes : Bytes) : Option (G1 × G2 × G2 × G2) :=
  (operations.decodeSerializedVk bytes).map fun vk =>
    (vk.alpha, vk.beta, vk.gamma, vk.delta)

def SemanticOperations.loadSrsPair
    {μ arity : Nat} {F G1 G2 GT DecodedProof : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (operations : SemanticOperations μ arity F G1 G2 GT DecodedProof)
    (bytes : Bytes) :
    Option ((Fin (2 ^ μ) → G2) × (Fin (2 ^ μ) → G1)) :=
  (operations.loadSrs bytes).map fun srs => (srs.v, srs.w)

def SemanticOperations.projectRow
    {μ arity : Nat} {F G1 G2 GT DecodedProof : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (operations : SemanticOperations μ arity F G1 G2 GT DecodedProof)
    (serializedVk : Bytes) (row : Fin arity → F) : Option G1 := do
  let vk ← operations.decodeSerializedVk serializedVk
  operations.prepareAic vk.gammaABC row

def SemanticOperations.familyVkSrsAllowed
    {μ arity : Nat} {F G1 G2 GT DecodedProof : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (operations : SemanticOperations μ arity F G1 G2 GT DecodedProof)
    (family : Ipp.ShippingV1.Family)
    (serializedVk srsId : Bytes) : Prop :=
  family.Registered ∧
    (∃ vk, operations.decodeSerializedVk serializedVk = some vk) ∧
    ∃ srs, operations.loadSrs srsId = some srs

/-- Exact byte operations installed by production construction and strict
decoding. -/
structure BindingOperations
    (μ : Nat) (Row DecodedProof : Type) where
  decodeWrapper : Bytes → Bytes → Option Bytes
  decodeProof : Bytes → Option DecodedProof
  sha256 : Bytes → Bytes
  encodePublicClaim : Ipp.ShippingV1.PublicClaim μ Row → Bytes

abbrev FormalShippingInput
    (μ arity : Nat) (F G1 G2 GT DecodedProof : Type)
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT] :=
  Ipp.ShippingV1.ShippingV1Input μ F G1 G2 GT
    (Fin arity → F) DecodedProof

/-- Individually named postconditions at the Rust/F*/Arkworks boundary.  None
of these fields states `StatementBindingContract`,
`StatementProjectionContract`, `RepresentsShippingInput`, or verifier
acceptance. -/
structure ExactSemanticBoundary
    {μ arity : Nat} {F G1 G2 GT DecodedProof : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (wire : WireRowDecoder μ (Fin arity → F))
    (bytes : BindingOperations μ (Fin arity → F) DecodedProof)
    (semantics :
      SemanticOperations μ arity F G1 G2 GT DecodedProof) where
  familyRoutingRegistered : ∀
      (input : FormalShippingInput μ arity F G1 G2 GT DecodedProof),
    SupportedShippingInput (arity := arity) wire input →
      input.family.Registered
  canonicalStatementConstruction : ∀
      (input : FormalShippingInput μ arity F G1 G2 GT DecodedProof),
    SupportedShippingInput (arity := arity) wire input →
      input.canonicalStatementBytes =
        bytes.encodePublicClaim input.publicClaim
  canonicalStatementEncodingInjective : ∀
      (left right :
        FormalShippingInput μ arity F G1 G2 GT DecodedProof),
    SupportedShippingInput (arity := arity) wire left →
    SupportedShippingInput (arity := arity) wire right →
    bytes.encodePublicClaim left.publicClaim =
      bytes.encodePublicClaim right.publicClaim →
    left.publicClaim = right.publicClaim
  vkDigestShaExecution : ∀
      (input : FormalShippingInput μ arity F G1 G2 GT DecodedProof),
    SupportedShippingInput (arity := arity) wire input →
      input.vkDigest =
        bytes.sha256
          (Ipp.ShippingV1.vkDigestPreimage input.serializedVk)
  statementDigestShaExecution : ∀
      (input : FormalShippingInput μ arity F G1 G2 GT DecodedProof),
    SupportedShippingInput (arity := arity) wire input →
      input.statementDigest =
        bytes.sha256
          (Ipp.ShippingV1.statementDigestPreimage
            input.canonicalStatementBytes)
  challengeContextShaExecution : ∀
      (input : FormalShippingInput μ arity F G1 G2 GT DecodedProof),
    SupportedShippingInput (arity := arity) wire input →
      List.ofFn input.challengeContext =
        bytes.sha256
          (Ipp.ShippingV1.challengeContextPreimage input.statementDigest)
  wrapperDecodeExecution : ∀
      (input : FormalShippingInput μ arity F G1 G2 GT DecodedProof),
    SupportedShippingInput (arity := arity) wire input →
      bytes.decodeWrapper input.statementDigest input.wrappedProofBytes =
        some input.innerProofBytes
  aggregateProofDecodeExecution : ∀
      (input : FormalShippingInput μ arity F G1 G2 GT DecodedProof),
    SupportedShippingInput (arity := arity) wire input →
      bytes.decodeProof input.innerProofBytes = some input.decodedProof
  vkMaterial : ∀
      (input : FormalShippingInput μ arity F G1 G2 GT DecodedProof),
    SupportedShippingInput (arity := arity) wire input →
      PreparedVkMaterial arity G1 G2
  vkDigestRouteExecution : ∀
      (input : FormalShippingInput μ arity F G1 G2 GT DecodedProof)
      (hsupported :
        SupportedShippingInput (arity := arity) wire input),
    semantics.resolveVk input.family input.vkDigest =
      some (vkMaterial input hsupported)
  serializedVkDecodeExecution : ∀
      (input : FormalShippingInput μ arity F G1 G2 GT DecodedProof)
      (hsupported :
        SupportedShippingInput (arity := arity) wire input),
    semantics.decodeSerializedVk input.serializedVk =
      some (vkMaterial input hsupported)
  srsMaterial : ∀
      (input : FormalShippingInput μ arity F G1 G2 GT DecodedProof),
    SupportedShippingInput (arity := arity) wire input →
      SrsMaterial μ G1 G2
  srsLoadExecution : ∀
      (input : FormalShippingInput μ arity F G1 G2 GT DecodedProof)
      (hsupported :
        SupportedShippingInput (arity := arity) wire input),
    semantics.loadSrs input.srsId = some (srsMaterial input hsupported)
  preparedGammaAbcAicExecution : ∀
      (input : FormalShippingInput μ arity F G1 G2 GT DecodedProof)
      (hsupported :
        SupportedShippingInput (arity := arity) wire input)
      (i : Fin (2 ^ μ)),
    semantics.prepareAic
        (vkMaterial input hsupported).gammaABC (input.publicRows i) =
      some (preparedAic
        (vkMaterial input hsupported).gammaABC (input.publicRows i))

/-- Construct the byte-binding contract from the exact constructor support
relation and the individually named boundary postconditions. -/
def ExactSemanticBoundary.bindingContract
    {μ arity : Nat} {F G1 G2 GT DecodedProof : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    {wire : WireRowDecoder μ (Fin arity → F)}
    {bytes : BindingOperations μ (Fin arity → F) DecodedProof}
    {semantics :
      SemanticOperations μ arity F G1 G2 GT DecodedProof}
    (boundary : ExactSemanticBoundary wire bytes semantics) :
    Ipp.ShippingV1.StatementBindingContract μ F G1 G2 GT
      (Fin arity → F) DecodedProof :=
  {
    supported := SupportedShippingInput (arity := arity) wire
    decodeWrapper := bytes.decodeWrapper
    decodeProof := bytes.decodeProof
    sha256 := bytes.sha256
    encodePublicClaim := bytes.encodePublicClaim
    familyRegistered := boundary.familyRoutingRegistered
    canonicalStatementExact := boundary.canonicalStatementConstruction
    canonicalStatementInjective :=
      boundary.canonicalStatementEncodingInjective
    vkDigestPreimageInjective := fun _left _right _hleft _hright =>
      Ipp.ShippingV1.vkDigestPreimage_injective
    vkDigestExact := boundary.vkDigestShaExecution
    statementDigestExact := boundary.statementDigestShaExecution
    challengeContextExact := boundary.challengeContextShaExecution
    wrapperExact := boundary.wrapperDecodeExecution
    proofDecodeExact := boundary.aggregateProofDecodeExecution
    validCounts := fun input hsupported =>
      Ipp.Extracted.ShippingRowConstruction.validCounts
        (supported_shipping_input_row_construction hsupported)
    realPrefixExact := fun input hsupported =>
      Ipp.Extracted.ShippingRowConstruction.realPrefixExact
        (supported_shipping_input_row_construction hsupported)
    repeatFinalPadding := fun input hsupported =>
      Ipp.Extracted.ShippingRowConstruction.repeatFinalPadding
        (supported_shipping_input_row_construction hsupported)
  }

/-- Construct the semantic projection contract.  The statement side is the
definitionally assembled `SemanticOperations.projection`; exact decoder,
loader, and prepared-Aic executions prove each required component. -/
def ExactSemanticBoundary.projectionContract
    {μ arity : Nat} {F G1 G2 GT DecodedProof : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    {wire : WireRowDecoder μ (Fin arity → F)}
    {bytes : BindingOperations μ (Fin arity → F) DecodedProof}
    {semantics :
      SemanticOperations μ arity F G1 G2 GT DecodedProof}
    (boundary : ExactSemanticBoundary wire bytes semantics) :
    Ipp.ShippingV1.StatementProjectionContract
      semantics.projection boundary.bindingContract :=
  {
    familyVkSrsAllowed := semantics.familyVkSrsAllowed
    decodeVk := semantics.decodeVkTuple
    loadSrs := semantics.loadSrsPair
    projectRow := semantics.projectRow
    exact := by
      intro input hsupported
      let vk := boundary.vkMaterial input hsupported
      let srs := boundary.srsMaterial input hsupported
      have hregistered :=
        boundary.familyRoutingRegistered input hsupported
      have hroute :=
        boundary.vkDigestRouteExecution input hsupported
      have hdecode :=
        boundary.serializedVkDecodeExecution input hsupported
      have hsrs := boundary.srsLoadExecution input hsupported
      refine ⟨?_, ?_, ?_, ?_⟩
      · exact ⟨hregistered, ⟨vk, hdecode⟩, ⟨srs, hsrs⟩⟩
      · simp [SemanticOperations.decodeVkTuple,
          SemanticOperations.projection, SemanticOperations.statementOf,
          Ipp.ShippingV1.ShippingV1Input.publicClaim,
          hroute, hdecode]
      · simp [SemanticOperations.loadSrsPair,
          SemanticOperations.projection, SemanticOperations.statementOf,
          Ipp.ShippingV1.ShippingV1Input.publicClaim,
          hroute, hsrs]
      · intro i
        have haic :=
          boundary.preparedGammaAbcAicExecution input hsupported i
        simp [SemanticOperations.projectRow,
          SemanticOperations.projection, SemanticOperations.statementOf,
          Ipp.ShippingV1.ShippingV1Input.publicClaim,
          hroute, hdecode, haic]
  }

/-- Assemble the byte-binding and statement-projection contracts from one
execution-coupled support witness and the individually named semantic boundary.
Concrete Rust construction must still instantiate that boundary. -/
theorem supported_boundary_assembles_exact_statement
    {μ arity : Nat} {F G1 G2 GT DecodedProof : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    {wire : WireRowDecoder μ (Fin arity → F)}
    {bytes : BindingOperations μ (Fin arity → F) DecodedProof}
    {semantics :
      SemanticOperations μ arity F G1 G2 GT DecodedProof}
    (boundary : ExactSemanticBoundary wire bytes semantics)
    (input : Ipp.ShippingV1.ShippingV1Input μ F G1 G2 GT
      (Fin arity → F) DecodedProof)
    (hsupported :
      SupportedShippingInput (arity := arity) wire input) :
    boundary.bindingContract.supported input ∧
      Ipp.ShippingV1.RepresentsShippingInput semantics.projection input
        (semantics.statementOf input.publicClaim)
        (semantics.proofOf input.decodedProof) ∧
      Ipp.ShippingV1.ValidCounts input ∧
      Ipp.ShippingV1.RealPrefixExact input ∧
      Ipp.ShippingV1.RepeatFinalPadding input ∧
      boundary.projectionContract.Projects input := by
  exact ⟨hsupported,
    semantics.represents input,
    Ipp.Extracted.ShippingRowConstruction.validCounts
      (supported_shipping_input_row_construction hsupported),
    Ipp.Extracted.ShippingRowConstruction.realPrefixExact
      (supported_shipping_input_row_construction hsupported),
    Ipp.Extracted.ShippingRowConstruction.repeatFinalPadding
      (supported_shipping_input_row_construction hsupported),
    Ipp.ShippingV1.shipping_input_projects_exact_statement
      semantics.projection boundary.bindingContract
      boundary.projectionContract input hsupported⟩

#print axioms ConstructorExecution.outputExact
#print axioms extracted_protocol_version_exact
#print axioms accepted_constructor_retains_shipping_input
#print axioms ExecutionCoupledRowConstruction.toExactRowConstruction
#print axioms supported_shipping_input_row_construction
#print axioms supported_shipping_input_has_retained_output
#print axioms ExactSemanticBoundary.bindingContract
#print axioms ExactSemanticBoundary.projectionContract
#print axioms supported_boundary_assembles_exact_statement

end

end Ipp.Extracted.ShippingStatementConstruction
