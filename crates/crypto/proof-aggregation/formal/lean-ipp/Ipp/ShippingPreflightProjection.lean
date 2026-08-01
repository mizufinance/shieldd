import Ipp.ShippingStatementProjection
import Ipp.Extracted.ShippingBundleComposition
import Ipp.Extracted.ShippingCallMaterialization
import Ipp.Extracted.ShippingPreflightConstruction

/-!
Per-call bridge from a successful shipping preflight projection to the formal
statement materialization.

The production preflight delegates to a registered extraction root that
retains the backend field rows together with the counts, serialized rows,
backend call, and constructed shipping input. `AcceptedShippingPreflightExecution`
records that generated equation, while the constructor-indexed remainder keeps
the decoder, row, plan, SRS-load, and concrete-effect boundaries explicit.
Repeat-final padding itself is derived from the extracted production core. No
statement contract, preflight result, or row-padding conclusion is assumed.

The production path passes through registered pure cores for
`app_verify_shipping_into_parts_core`,
`app_verify_shipping_rows_from_parts`,
`app_verify_statement_row_bytes_from_parts`, and
`app_verify_prepare_public_input_rows_core`, plus the new retained preflight
root. The outer production-to-core delegation remains an explicit named
boundary; it supplies no statement or cryptographic conclusion.
-/

namespace Ipp.ShippingPreflightProjection

noncomputable section

open Aeneas Aeneas.Std Result
open ark_ip_proofs
open Ipp.Extracted.ShippingBundleComposition
open Ipp.Extracted.ShippingCallMaterialization
open Ipp.Extracted.ShippingPreflightConstruction
open Ipp.Extracted.ShippingStatementConstruction
open Ipp.Extracted.ShippingVerifierComposition
open Ipp.ShippingStatementProjection

local instance : Fact Ipp.Bls12377.scalarModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.scalarPrime⟩

/-- The serialized constructor matrix and the padded field-row output decode
to the same ordered formal rows. This is a consequence of exact byte
projection plus the constructor relation, not an independent row premise. -/
theorem serialized_rows_decode_exact
    {μ arity : Nat} {F G1 G2 GT DecodedProof : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    {wire : WireRowDecoder μ (Fin arity → F)}
    {execution : ConstructorExecution}
    {input :
      FormalShippingInput
        μ arity F G1 G2 GT DecodedProof}
    (projection :
      ConstructorArgumentsRepresent
        (arity := arity) wire execution input)
    (rows : ExecutionCoupledRowConstruction execution input) :
    wire.decodePaddedRows
        (rows.paddedRows.val.map rows.encodeRow) =
      some input.publicRows := by
  rw [← rows.serializedPaddedRowsExact]
  exact projection.paddedRows

/-- Exact postcondition expected from one successful outer shipping
preflight. The extracted inner constructor success is retained in
`execution`; only the outer-call and Arkworks-row projections remain fields. -/
structure AcceptedPreflightConstruction
    {μ arity : Nat} {F G1 G2 GT DecodedProof : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (wire : WireRowDecoder μ (Fin arity → F))
    (input :
      FormalShippingInput
        μ arity F G1 G2 GT DecodedProof) where
  execution : ConstructorExecution
  constructorProjection :
    ConstructorArgumentsRepresent
      (arity := arity) wire execution input
  rows : ExecutionCoupledRowConstruction execution input

/-- Existing planned-call construction already supplies the accepted inner
constructor execution and its exact formal-input projection. Only the
outer-preflight row boundary remains to build this record. -/
def AcceptedPreflightConstruction.ofPlannedCall
    {declared : alloc.vec.Vec
      Ipp.Extracted.AppVerifierStateMachine.ExpectedCall}
    {expected : alloc.vec.Vec
      Ipp.Extracted.AppVerifierStateMachine.CallId}
    {results : alloc.vec.Vec
      Ipp.Extracted.AppVerifierStateMachine.CallResult}
    {id : Ipp.Extracted.AppVerifierStateMachine.CallId}
    (call : ShippingPlannedCall declared expected results id)
    (rows :
      ExecutionCoupledRowConstruction call.constructor call.data.input) :
    AcceptedPreflightConstruction call.wire call.data.input where
  execution := call.constructor
  constructorProjection := call.constructorRepresents
  rows := rows

/-- Successful preflight construction supplies the complete concrete support
witness consumed by the statement-binding contract. -/
def AcceptedPreflightConstruction.supported
    {μ arity : Nat} {F G1 G2 GT DecodedProof : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    {wire : WireRowDecoder μ (Fin arity → F)}
    {input :
      FormalShippingInput
        μ arity F G1 G2 GT DecodedProof}
  (preflight : AcceptedPreflightConstruction wire input) :
    SupportedShippingInput (arity := arity) wire input :=
  ⟨preflight.execution, preflight.constructorProjection,
    ⟨preflight.rows⟩⟩

/-- The result constructor cannot replace the padded byte matrix after the
shipping-input constructor. Its exact returned input therefore decodes to the
same formal row function already retained by the planned call. -/
theorem ShippingPlannedCall.shippingResultRowsDecodeExact
    {declared : alloc.vec.Vec
      Ipp.Extracted.AppVerifierStateMachine.ExpectedCall}
    {expected : alloc.vec.Vec
      Ipp.Extracted.AppVerifierStateMachine.CallId}
    {results : alloc.vec.Vec
      Ipp.Extracted.AppVerifierStateMachine.CallResult}
    {id : Ipp.Extracted.AppVerifierStateMachine.CallId}
    (call : ShippingPlannedCall declared expected results id) :
    call.wire.decodePaddedRows
        (paddedRowsBytes
          call.shippingResult.input.padded_public_inputs) =
      some call.data.input.publicRows := by
  have hresult := call.productionResultExact
  have retained :
      OutputRetainsShippingInput (arity := call.arity)
        call.wire call.constructor call.data.input :=
    hresult.2.2.2.2
  rw [hresult.1]
  exact retained.paddedRows

/-- Exact outer row serialization transports through both production
constructors to the result recorded for this planned call. -/
theorem ShippingPlannedCall.shippingResultSerializedRowsExact
    {declared : alloc.vec.Vec
      Ipp.Extracted.AppVerifierStateMachine.ExpectedCall}
    {expected : alloc.vec.Vec
      Ipp.Extracted.AppVerifierStateMachine.CallId}
    {results : alloc.vec.Vec
      Ipp.Extracted.AppVerifierStateMachine.CallResult}
    {id : Ipp.Extracted.AppVerifierStateMachine.CallId}
    (call : ShippingPlannedCall declared expected results id)
    (rows :
      ExecutionCoupledRowConstruction call.constructor call.data.input) :
    paddedRowsBytes call.shippingResult.input.padded_public_inputs =
      rows.paddedRows.val.map rows.encodeRow := by
  have hresult := call.productionResultExact
  calc
    paddedRowsBytes call.shippingResult.input.padded_public_inputs =
        paddedRowsBytes call.constructor.output.padded_public_inputs := by
      exact congrArg
        (fun input => paddedRowsBytes input.padded_public_inputs)
        hresult.1
    _ = paddedRowsBytes call.constructor.paddedPublicInputs := by
      exact congrArg
        (fun input => paddedRowsBytes input.padded_public_inputs)
        call.constructor.outputExact
    _ = rows.paddedRows.val.map rows.encodeRow :=
      rows.serializedPaddedRowsExact

/-- VK/SRS selection remains a separate boundary. Splitting it from preflight
construction prevents the row-composition theorem from silently claiming the
named Arkworks materialization postconditions. -/
structure SelectedVkSrs
    {μ arity : Nat} {F G1 G2 GT DecodedProof : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (operations :
      SemanticOperations
        μ arity F G1 G2 GT DecodedProof)
    (input :
      FormalShippingInput
        μ arity F G1 G2 GT DecodedProof) where
  familyRegistered : input.family.Registered
  preparedVk : PreparedVkMaterial arity G1 G2
  vkDigestRoute :
    operations.resolveVk input.family input.vkDigest =
      some preparedVk
  serializedVkDecode :
    operations.decodeSerializedVk input.serializedVk =
      some preparedVk
  srs : SrsMaterial μ G1 G2
  srsIdentityLoad :
    operations.loadSrs input.srsId = some srs

/-- The output-derived concrete call already carries the accepted constructor
execution and its coupled repeat-final rows.  Projecting those fields removes
the need for a second, independently supplied preflight witness. -/
def concreteOutputPreflightConstruction
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
    AcceptedPreflightConstruction wire
      construction.materialization.input where
  execution := construction.execution
  constructorProjection :=
    construction.materialization.argumentsRepresent
  rows := construction.rows

/-- VK and SRS selection for the concrete output-derived call is fixed by the
same exact semantic boundary as its statement.  It is not a separately
selectable operational premise. -/
noncomputable def concreteOutputSelectedVkSrs
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
    SelectedVkSrs
      (executableSemanticOperations runtime.hbilinear operations)
      construction.materialization.input where
  familyRegistered :=
    boundary.familyRoutingRegistered construction.materialization.input
      construction.supported
  preparedVk :=
    boundary.vkMaterial construction.materialization.input
      construction.supported
  vkDigestRoute :=
    boundary.vkDigestRouteExecution construction.materialization.input
      construction.supported
  serializedVkDecode :=
    boundary.serializedVkDecodeExecution construction.materialization.input
      construction.supported
  srs :=
    boundary.srsMaterial construction.materialization.input
      construction.supported
  srsIdentityLoad :=
    boundary.srsLoadExecution construction.materialization.input
      construction.supported

/-- Compose exact preflight rows with independently selected VK/SRS material.
The only padding proof in the result comes from the extracted production
repeat-final core. -/
def AcceptedPreflightConstruction.toRetainedCallMaterialization
    {μ arity : Nat} {F G1 G2 GT DecodedProof : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    {wire : WireRowDecoder μ (Fin arity → F)}
    {operations :
      SemanticOperations
        μ arity F G1 G2 GT DecodedProof}
    {input :
      FormalShippingInput
        μ arity F G1 G2 GT DecodedProof}
    (preflight : AcceptedPreflightConstruction wire input)
    (selected : SelectedVkSrs operations input) :
    RetainedCallMaterialization wire operations input where
  execution := preflight.execution
  constructorProjection := preflight.constructorProjection
  rowConstruction := preflight.rows.toExactRowConstruction
  familyRegistered := selected.familyRegistered
  preparedVk := selected.preparedVk
  vkDigestRoute := selected.vkDigestRoute
  serializedVkDecode := selected.serializedVkDecode
  srs := selected.srs
  srsIdentityLoad := selected.srsIdentityLoad

/-- Maximal honest composition currently available: the accepted preflight
projection, exact extracted padding semantics, selected VK/SRS, complete
statement/Aic facts, and the byte-to-field-row identity are returned together.
-/
theorem accepted_preflight_rows_materialize_statement
    {μ arity : Nat} {F G1 G2 GT DecodedProof : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    {wire : WireRowDecoder μ (Fin arity → F)}
    {operations :
      SemanticOperations
        μ arity F G1 G2 GT DecodedProof}
    {input :
      FormalShippingInput
        μ arity F G1 G2 GT DecodedProof}
    (preflight : AcceptedPreflightConstruction wire input)
    (selected : SelectedVkSrs operations input) :
    RetainedProjectionFacts wire operations input ∧
      wire.decodePaddedRows
          (preflight.rows.paddedRows.val.map
            preflight.rows.encodeRow) =
        some input.publicRows := by
  let materialization :=
    preflight.toRetainedCallMaterialization selected
  exact
    ⟨retained_shipping_rows_vk_srs_and_aic materialization,
      serialized_rows_decode_exact
        preflight.constructorProjection preflight.rows⟩

/-- Planned-call capstone for the currently extracted chain. The formal
statement/Aic facts and exact padding theorem are tied to the same serialized
row matrix stored in the concrete result; neither constructor may substitute
that matrix. -/
theorem ShippingPlannedCall.resultRowsMaterializeStatement
    {declared : alloc.vec.Vec
      Ipp.Extracted.AppVerifierStateMachine.ExpectedCall}
    {expected : alloc.vec.Vec
      Ipp.Extracted.AppVerifierStateMachine.CallId}
    {results : alloc.vec.Vec
      Ipp.Extracted.AppVerifierStateMachine.CallResult}
    {id : Ipp.Extracted.AppVerifierStateMachine.CallId}
    (call : ShippingPlannedCall declared expected results id)
    (operations :
      SemanticOperations call.μ call.arity
        Ipp.Bls12377.Fr
        Ipp.Bls12377.g1PrimeSubgroup
        Ipp.Bls12377.g2PrimeSubgroup
        Ipp.Bls12377.ArkPairingOutput
        (Ipp.Extracted.ShippingVerifierComposition.ValidatedProof call.D))
    (rows :
      ExecutionCoupledRowConstruction call.constructor call.data.input)
    (selected : SelectedVkSrs operations call.data.input) :
    RetainedProjectionFacts call.wire operations call.data.input ∧
      paddedRowsBytes call.shippingResult.input.padded_public_inputs =
        rows.paddedRows.val.map rows.encodeRow ∧
      call.wire.decodePaddedRows
          (paddedRowsBytes
            call.shippingResult.input.padded_public_inputs) =
        some call.data.input.publicRows := by
  let preflight :=
    AcceptedPreflightConstruction.ofPlannedCall call rows
  have materialized :=
    accepted_preflight_rows_materialize_statement
      preflight selected
  exact
    ⟨materialized.1,
      ShippingPlannedCall.shippingResultSerializedRowsExact call rows,
      ShippingPlannedCall.shippingResultRowsDecodeExact call⟩

/-- Concrete output-derived capstone for the retained preflight path.

The accepted constructor execution, repeat-final rows, prepared VK, and SRS
are all projected from `construction`. Within this theorem, constructing that
record from the generated production preflight equation remains the explicit
Arkworks byte/loader boundary; the shipping capstone supplies it. -/
theorem concrete_output_preflight_rows_materialize_statement
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
    RetainedProjectionFacts wire
        (executableSemanticOperations runtime.hbilinear operations)
        construction.materialization.input ∧
      wire.decodePaddedRows
          (construction.rows.paddedRows.val.map
            construction.rows.encodeRow) =
        some construction.materialization.input.publicRows := by
  exact accepted_preflight_rows_materialize_statement
    (concreteOutputPreflightConstruction construction)
    (concreteOutputSelectedVkSrs construction)

/-- Exact Rust-call facts established by the concrete construction capstone.
This name packages the conjunction so accepted preflight executions can expose
the same result without duplicating a second semantic boundary. -/
def ConcreteRustCallConstructionFacts
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
      ConcreteOutputDerivedCall wire bytes operations runtime boundary) : Prop :=
  construction.shippingData.call =
      construction.constructor.callConstruction.output ∧
    construction.shippingData.call = construction.execution.output.call ∧
    construction.shippingData.input = construction.materialization.input ∧
    runtime.loadVerifierSrs construction.shippingData.input.srsId =
      some construction.shippingData.srs ∧
    Nonempty (ShippingApplicationConstruction construction.shippingData) ∧
    ShippingApplicationProjectionContract construction.shippingData ∧
    construction.shippingData.contract.supported construction.shippingData.input ∧
    construction.shippingData.input.canonicalStatementBytes =
      bytes.encodePublicClaim construction.shippingData.input.publicClaim ∧
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
    Nonempty
      (Ipp.ShippingV1.StatementProjectionContract
        construction.shippingData.projection
        construction.shippingData.contract) ∧
    Ipp.ShippingV1.RepresentsShippingInput
      construction.shippingData.projection construction.shippingData.input
      construction.shippingData.statement construction.shippingData.proof ∧
    ArkworksPreparedVkAicContract construction.shippingData.statement
      construction.shippingData.gammaABC construction.shippingData.input.publicRows ∧
    Ipp.ShippingV1.ValidCounts construction.shippingData.input ∧
    Ipp.ShippingV1.RealPrefixExact construction.shippingData.input ∧
    Ipp.ShippingV1.RepeatFinalPadding construction.shippingData.input

/-- A generated accepted preflight execution plus only its constructor-indexed
external remainder constructs the complete concrete Rust-call facts. -/
theorem accepted_shipping_preflight_constructs_concrete_rust_call
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
    (execution : AcceptedShippingPreflightExecution BackendCall Fields)
    (remainder :
      ConcreteOutputDerivedCallRemainder wire bytes operations runtime boundary
        execution.toBuiltConstructorExecution) :
    let construction := execution.toConcreteOutputDerivedCall remainder
    ConcreteRustCallConstructionFacts construction := by
  dsimp only
  exact concrete_rust_shipping_call_construction
    (execution.toConcreteOutputDerivedCall remainder)

/-- The same accepted preflight construction instantiates the exact statement
projection, selected VK/SRS, prepared Aic rows, and retained prefix/padding
facts under the named decoder, Arkworks, SRS-loader, and effect boundaries. -/
theorem accepted_shipping_preflight_constructs_statement_projection
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
    (execution : AcceptedShippingPreflightExecution BackendCall Fields)
    (remainder :
      ConcreteOutputDerivedCallRemainder wire bytes operations runtime boundary
        execution.toBuiltConstructorExecution) :
    let construction := execution.toConcreteOutputDerivedCall remainder
    Nonempty
        (Ipp.ShippingV1.StatementProjectionContract
          (executableSemanticOperations runtime.hbilinear operations).projection
          boundary.bindingContract) ∧
      boundary.projectionContract.Projects construction.materialization.input ∧
      RetainedProjectionFacts wire
        (executableSemanticOperations runtime.hbilinear operations)
        construction.materialization.input := by
  dsimp only
  exact concrete_shipping_statement_projection_contract boundary
    (execution.toConcreteOutputDerivedCall remainder).supported

/-- Two accepted preflight constructions with the same observable wrapped
input have one serialized VK, public claim, formal statement/proof, and ordered
prefix/padding interpretation unless one of the three deployed SHA-256 calls
exhibits an explicit collision. -/
theorem accepted_shipping_preflights_bind_unique_shipping_input
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
    (leftExecution : AcceptedShippingPreflightExecution BackendCall Fields)
    (leftRemainder :
      ConcreteOutputDerivedCallRemainder wire bytes operations runtime boundary
        leftExecution.toBuiltConstructorExecution)
    (rightExecution : AcceptedShippingPreflightExecution BackendCall Fields)
    (rightRemainder :
      ConcreteOutputDerivedCallRemainder wire bytes operations runtime boundary
        rightExecution.toBuiltConstructorExecution)
    (hdigest :
      (leftExecution.toConcreteOutputDerivedCall leftRemainder).materialization.input.statementDigest =
        (rightExecution.toConcreteOutputDerivedCall rightRemainder).materialization.input.statementDigest)
    (hwrapped :
      (leftExecution.toConcreteOutputDerivedCall leftRemainder).materialization.input.wrappedProofBytes =
        (rightExecution.toConcreteOutputDerivedCall rightRemainder).materialization.input.wrappedProofBytes)
    (hcollision :
      ¬Ipp.ShippingV1.ShippingShaCollision boundary.bindingContract
        (leftExecution.toConcreteOutputDerivedCall leftRemainder).materialization.input
        (rightExecution.toConcreteOutputDerivedCall rightRemainder).materialization.input) :
    let left := leftExecution.toConcreteOutputDerivedCall leftRemainder
    let right := rightExecution.toConcreteOutputDerivedCall rightRemainder
    left.materialization.input.serializedVk =
        right.materialization.input.serializedVk ∧
      left.materialization.input.publicClaim =
        right.materialization.input.publicClaim ∧
      (executableSemanticOperations runtime.hbilinear operations).projection.statementOf
          left.materialization.input.publicClaim =
        (executableSemanticOperations runtime.hbilinear operations).projection.statementOf
          right.materialization.input.publicClaim ∧
      (executableSemanticOperations runtime.hbilinear operations).projection.proofOf
          left.materialization.input.decodedProof =
        (executableSemanticOperations runtime.hbilinear operations).projection.proofOf
          right.materialization.input.decodedProof ∧
      (Ipp.ShippingV1.ValidCounts left.materialization.input ∧
        Ipp.ShippingV1.RealPrefixExact left.materialization.input ∧
        Ipp.ShippingV1.RepeatFinalPadding left.materialization.input) ∧
      (Ipp.ShippingV1.ValidCounts right.materialization.input ∧
        Ipp.ShippingV1.RealPrefixExact right.materialization.input ∧
        Ipp.ShippingV1.RepeatFinalPadding right.materialization.input) := by
  dsimp only
  exact Ipp.ShippingV1.verified_call_binds_unique_shipping_input
    (executableSemanticOperations runtime.hbilinear operations).projection
    boundary.bindingContract
    (leftExecution.toConcreteOutputDerivedCall leftRemainder).materialization.input
    (rightExecution.toConcreteOutputDerivedCall rightRemainder).materialization.input
    (leftExecution.toConcreteOutputDerivedCall leftRemainder).supported
    (rightExecution.toConcreteOutputDerivedCall rightRemainder).supported
    hdigest hwrapped hcollision

#print axioms serialized_rows_decode_exact
#print axioms AcceptedPreflightConstruction.ofPlannedCall
#print axioms AcceptedPreflightConstruction.supported
#print axioms ShippingPlannedCall.shippingResultRowsDecodeExact
#print axioms ShippingPlannedCall.shippingResultSerializedRowsExact
#print axioms AcceptedPreflightConstruction.toRetainedCallMaterialization
#print axioms accepted_preflight_rows_materialize_statement
#print axioms ShippingPlannedCall.resultRowsMaterializeStatement
#print axioms concreteOutputPreflightConstruction
#print axioms concreteOutputSelectedVkSrs
#print axioms concrete_output_preflight_rows_materialize_statement
#print axioms accepted_shipping_preflight_constructs_concrete_rust_call
#print axioms accepted_shipping_preflight_constructs_statement_projection
#print axioms accepted_shipping_preflights_bind_unique_shipping_input

end

end Ipp.ShippingPreflightProjection
