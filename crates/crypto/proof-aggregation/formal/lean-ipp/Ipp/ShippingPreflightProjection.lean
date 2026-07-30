import Ipp.ShippingStatementProjection
import Ipp.Extracted.ShippingBundleComposition

/-!
Per-call bridge from a successful shipping preflight projection to the formal
statement materialization.

The outer Rust preflight and Arkworks field-row serializer are not currently
extraction roots. Consequently, `AcceptedPreflightConstruction` records only
their exact per-call postconditions. Repeat-final padding itself is derived
from the existing extracted production core. No statement contract,
preflight result, or row-padding conclusion is assumed.

The production path now passes through registered pure cores for
`app_verify_shipping_into_parts_core`,
`app_verify_shipping_rows_from_parts`,
`app_verify_statement_row_bytes_from_parts`, and
`app_verify_prepare_public_input_rows_core`. Their generated declarations and
the outer call-site instantiations are not yet available here, so this module
keeps the exact per-call boundary explicit rather than claiming extraction.
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

/-- Exact rows crossing the still-unextracted outer preflight.

`paddingExecution` is the production repeat-final core and is sufficient to
derive the padding semantics. `serializedPaddedRowsExact` is the narrow
Arkworks boundary still needed to identify those field rows with the nested
bytes retained by the shipping constructor. -/
structure ExactPreflightRows
    {μ arity : Nat} {F G1 G2 GT DecodedProof : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (execution : ConstructorExecution)
    (input :
      FormalShippingInput
        μ arity F G1 G2 GT DecodedProof) where
  cloneInst : core.clone.Clone (Fin arity → F)
  cloneExact :
    ∀ row, cloneInst.clone row = .ok row
  sourceRows : alloc.vec.Vec (Fin arity → F)
  paddedRows : alloc.vec.Vec (Fin arity → F)
  sourceNonempty : sourceRows.val ≠ []
  realCountExact : input.realCount = sourceRows.val.length
  realRowsExact :
    ∀ i : Fin input.realCount,
      sourceRows.val[i.val]? = some (input.realRows i)
  paddedRowsExact :
    ∀ i : Fin (2 ^ μ),
      paddedRows.val[i.val]? = some (input.publicRows i)
  encodeRow : (Fin arity → F) → List (List UInt8)
  serializedPaddedRowsExact :
    paddedRowsBytes execution.paddedPublicInputs =
      paddedRows.val.map encodeRow
  paddingExecution :
    app_verifier.app_verify_repeat_final_rows_core
        cloneInst sourceRows ⟨2 ^ μ⟩ =
      .ok (.Ok paddedRows)

/-- The existing extracted repeat-final theorem discharges all padding
semantics once the outer caller's exact source/output projections are known. -/
def ExactPreflightRows.toExactRowConstruction
    {μ arity : Nat} {F G1 G2 GT DecodedProof : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    {execution : ConstructorExecution}
    {input :
      FormalShippingInput
        μ arity F G1 G2 GT DecodedProof}
    (rows : ExactPreflightRows execution input) :
    Ipp.Extracted.ShippingRowConstruction.ExactRowConstruction input :=
  Ipp.Extracted.ShippingRowConstruction.ExactRowConstruction.ofExtractedSuccess
    input rows.cloneInst rows.cloneExact rows.sourceRows rows.paddedRows
    rows.sourceNonempty rows.realCountExact rows.realRowsExact
    rows.paddedRowsExact rows.paddingExecution

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
    (rows : ExactPreflightRows execution input) :
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
  rows : ExactPreflightRows execution input

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
    (rows : ExactPreflightRows call.constructor call.data.input) :
    AcceptedPreflightConstruction call.wire call.data.input where
  execution := call.constructor
  constructorProjection := call.constructorRepresents
  rows := rows

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

#print axioms ExactPreflightRows.toExactRowConstruction
#print axioms serialized_rows_decode_exact
#print axioms AcceptedPreflightConstruction.ofPlannedCall
#print axioms AcceptedPreflightConstruction.toRetainedCallMaterialization
#print axioms accepted_preflight_rows_materialize_statement

end

end Ipp.ShippingPreflightProjection
