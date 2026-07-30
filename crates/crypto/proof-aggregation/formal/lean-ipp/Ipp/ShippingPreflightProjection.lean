import Ipp.ShippingStatementProjection
import Ipp.Extracted.ShippingBundleComposition

/-!
Per-call bridge from a successful shipping preflight projection to the formal
statement materialization.

The production preflight now delegates to a registered extraction root that
retains the backend field rows together with the counts, serialized rows,
backend call, and constructed shipping input. Its generated declaration is
pending the next scoped AppVerifier extraction, so
`AcceptedPreflightConstruction` still records the exact per-call equation
needed to consume that output. Repeat-final padding itself is derived from the
existing extracted production core. No statement contract, preflight result,
or row-padding conclusion is assumed.

The production path passes through registered pure cores for
`app_verify_shipping_into_parts_core`,
`app_verify_shipping_rows_from_parts`,
`app_verify_statement_row_bytes_from_parts`, and
`app_verify_prepare_public_input_rows_core`, plus the new retained preflight
root. The refreshed generated declaration and outer call-site instantiation
are not yet available here, so this module keeps the exact per-call boundary
explicit rather than claiming extraction.
-/

namespace Ipp.ShippingPreflightProjection

noncomputable section

open Aeneas Aeneas.Std Result
open ark_ip_proofs
open Ipp.Extracted.ShippingBundleComposition
open Ipp.Extracted.ShippingStatementConstruction
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
    preflight.rows⟩

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
still-open Arkworks materialization results. -/
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
      call.shippingResultSerializedRowsExact rows,
      call.shippingResultRowsDecodeExact⟩

#print axioms serialized_rows_decode_exact
#print axioms AcceptedPreflightConstruction.ofPlannedCall
#print axioms AcceptedPreflightConstruction.supported
#print axioms ShippingPlannedCall.shippingResultRowsDecodeExact
#print axioms ShippingPlannedCall.shippingResultSerializedRowsExact
#print axioms AcceptedPreflightConstruction.toRetainedCallMaterialization
#print axioms accepted_preflight_rows_materialize_statement
#print axioms ShippingPlannedCall.resultRowsMaterializeStatement

end

end Ipp.ShippingPreflightProjection
