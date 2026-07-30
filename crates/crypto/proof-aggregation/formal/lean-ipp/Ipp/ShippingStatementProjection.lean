import Ipp.Extracted.ShippingRowConstruction
import Ipp.Extracted.ShippingStatementConstruction

/-!
Per-call materialization of the formal statement from constructor-retained
shipping data. The remaining boundary is stated as exact VK-route, VK-decode,
and SRS-load equations for this call; no statement-level contract or
preflight-authentication result is assumed.
-/

namespace Ipp.ShippingStatementProjection

noncomputable section

open Ipp.Extracted
open Ipp.Extracted.ShippingStatementConstruction

/-- One accepted constructor call with exact row, prepared-VK, and SRS
materialization. Every semantic equation is restricted to this retained call
rather than universally assuming a decoder or loader is correct. -/
structure RetainedCallMaterialization
    {μ arity : Nat} {F G1 G2 GT DecodedProof : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (wire :
      WireRowDecoder μ (Fin arity → F))
    (operations :
      SemanticOperations
        μ arity F G1 G2 GT DecodedProof)
    (input :
      FormalShippingInput
        μ arity F G1 G2 GT DecodedProof) where
  execution : ConstructorExecution
  constructorProjection :
    ConstructorArgumentsRepresent
      (arity := arity) wire execution input
  rowConstruction :
    Ipp.Extracted.ShippingRowConstruction.ExactRowConstruction input
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

/-- The complete formal statement made from the selected prepared VK, selected
SRS, and constructor-retained ordered rows. -/
def materializedStatement
    {μ arity : Nat} {F G1 G2 GT DecodedProof : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (operations :
      SemanticOperations
        μ arity F G1 G2 GT DecodedProof)
    (vk : PreparedVkMaterial arity G1 G2)
    (srs : SrsMaterial μ G1 G2)
    (rows : Fin (2 ^ μ) → Fin arity → F) :
    Ipp.FsStatement μ F G1 G2 GT :=
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
    Aic := fun i =>
      preparedAic vk.gammaABC (rows i)
    rejectionFuel := operations.rejectionFuel
  }

/-- Successful digest routing and SRS loading eliminate both defaults in
`statementOf`, yielding the complete selected statement definitionally. -/
theorem statement_exact
    {μ arity : Nat} {F G1 G2 GT DecodedProof : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    {wire :
      WireRowDecoder μ (Fin arity → F)}
    {operations :
      SemanticOperations
        μ arity F G1 G2 GT DecodedProof}
    {input :
      FormalShippingInput
        μ arity F G1 G2 GT DecodedProof}
    (materialization :
      RetainedCallMaterialization wire operations input) :
    operations.statementOf input.publicClaim =
      materializedStatement operations materialization.preparedVk
        materialization.srs input.publicRows := by
  simp [SemanticOperations.statementOf,
    Ipp.ShippingV1.ShippingV1Input.publicClaim,
    materializedStatement, materialization.vkDigestRoute,
    materialization.srsIdentityLoad]

/-- Every formal Aic entry is therefore the exact Groth16 gammaABC
combination of the retained row at the same padded index. -/
theorem aic_exact
    {μ arity : Nat} {F G1 G2 GT DecodedProof : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    {wire :
      WireRowDecoder μ (Fin arity → F)}
    {operations :
      SemanticOperations
        μ arity F G1 G2 GT DecodedProof}
    {input :
      FormalShippingInput
        μ arity F G1 G2 GT DecodedProof}
    (materialization :
      RetainedCallMaterialization wire operations input)
    (i : Fin (2 ^ μ)) :
    (operations.statementOf input.publicClaim).Aic i =
      preparedAic
        materialization.preparedVk.gammaABC
        (input.publicRows i) := by
  rw [statement_exact materialization]
  rfl

/-- The accepted extracted constructor retains the same call-scoped bytes
and rows used by this materialization. -/
theorem output_retains_input
    {μ arity : Nat} {F G1 G2 GT DecodedProof : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    {wire :
      WireRowDecoder μ (Fin arity → F)}
    {operations :
      SemanticOperations
        μ arity F G1 G2 GT DecodedProof}
    {input :
      FormalShippingInput
        μ arity F G1 G2 GT DecodedProof}
    (materialization :
      RetainedCallMaterialization wire operations input) :
    OutputRetainsShippingInput
      (arity := arity) wire materialization.execution input :=
  accepted_constructor_retains_shipping_input
    materialization.constructorProjection

/-- The generated padding refinement supplies valid counts, the exact
caller-order prefix, and repeat-final padding for the same formal rows. -/
theorem rows_exact
    {μ arity : Nat} {F G1 G2 GT DecodedProof : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    {wire :
      WireRowDecoder μ (Fin arity → F)}
    {operations :
      SemanticOperations
        μ arity F G1 G2 GT DecodedProof}
    {input :
      FormalShippingInput
        μ arity F G1 G2 GT DecodedProof}
    (materialization :
      RetainedCallMaterialization wire operations input) :
  Ipp.ShippingV1.ValidCounts input ∧
      Ipp.ShippingV1.RealPrefixExact input ∧
      Ipp.ShippingV1.RepeatFinalPadding input :=
  Ipp.Extracted.ShippingRowConstruction.preserves_order_and_padding
    materialization.rowConstruction

/-- Deterministic exact serialized-VK decoding makes the selected complete
prepared VK unique for this retained byte string. -/
theorem prepared_vk_unique
    {μ arity : Nat} {F G1 G2 GT DecodedProof : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    {wire :
      WireRowDecoder μ (Fin arity → F)}
    {operations :
      SemanticOperations
        μ arity F G1 G2 GT DecodedProof}
    {input :
      FormalShippingInput
        μ arity F G1 G2 GT DecodedProof}
    (left right :
      RetainedCallMaterialization wire operations input) :
    left.preparedVk = right.preparedVk := by
  exact Option.some.inj
    (left.serializedVkDecode.symm.trans right.serializedVkDecode)

/-- Loading by the retained SRS identity makes the complete V/W material
unique for this call. Authentication of that identity is a separate preflight
projection. -/
theorem srs_unique
    {μ arity : Nat} {F G1 G2 GT DecodedProof : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    {wire :
      WireRowDecoder μ (Fin arity → F)}
    {operations :
      SemanticOperations
        μ arity F G1 G2 GT DecodedProof}
    {input :
      FormalShippingInput
        μ arity F G1 G2 GT DecodedProof}
    (left right :
      RetainedCallMaterialization wire operations input) :
    left.srs = right.srs := by
  exact Option.some.inj
    (left.srsIdentityLoad.symm.trans right.srsIdentityLoad)

/-- All statement witnesses for one retained input denote the same full
formal statement, even before separately proving witness-record equality. -/
theorem materialized_statement_unique
    {μ arity : Nat} {F G1 G2 GT DecodedProof : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    {wire :
      WireRowDecoder μ (Fin arity → F)}
    {operations :
      SemanticOperations
        μ arity F G1 G2 GT DecodedProof}
    {input :
      FormalShippingInput
        μ arity F G1 G2 GT DecodedProof}
    (left right :
      RetainedCallMaterialization wire operations input) :
    materializedStatement operations left.preparedVk left.srs
        input.publicRows =
      materializedStatement operations right.preparedVk right.srs
        input.publicRows := by
  exact (statement_exact left).symm.trans (statement_exact right)

/-- Exact facts exposed by one retained-call statement materialization. This
is an intermediate interface: authenticating the retained fields and
constructing its three loader equations from Arkworks remain outside this
theorem. -/
structure RetainedProjectionFacts
    {μ arity : Nat} {F G1 G2 GT DecodedProof : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (wire :
      WireRowDecoder μ (Fin arity → F))
    (operations :
      SemanticOperations
        μ arity F G1 G2 GT DecodedProof)
    (input :
      FormalShippingInput
        μ arity F G1 G2 GT DecodedProof) : Prop where
  execution : ConstructorExecution
  preparedVk : PreparedVkMaterial arity G1 G2
  srs : SrsMaterial μ G1 G2
  outputRetains :
    OutputRetainsShippingInput
      (arity := arity) wire execution input
  familyRegistered : input.family.Registered
  vkDigestRoute :
    operations.resolveVk input.family input.vkDigest =
      some preparedVk
  serializedVkDecode :
    operations.decodeSerializedVk input.serializedVk =
      some preparedVk
  srsIdentityLoad :
    operations.loadSrs input.srsId = some srs
  statementExact :
    operations.statementOf input.publicClaim =
      materializedStatement operations preparedVk srs input.publicRows
  aicExact : ∀ i : Fin (2 ^ μ),
    (operations.statementOf input.publicClaim).Aic i =
      preparedAic preparedVk.gammaABC
        (input.publicRows i)
  validCounts : Ipp.ShippingV1.ValidCounts input
  realPrefixExact : Ipp.ShippingV1.RealPrefixExact input
  repeatFinalPadding : Ipp.ShippingV1.RepeatFinalPadding input

/-- Strongest extraction-independent statement-projection result currently
available: constructor-retained bytes and caller rows select one complete
prepared VK and SRS, and every formal Aic entry uses the corresponding ordered
row. -/
theorem retained_shipping_rows_vk_srs_and_aic
    {μ arity : Nat} {F G1 G2 GT DecodedProof : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    {wire :
      WireRowDecoder μ (Fin arity → F)}
    {operations :
      SemanticOperations
        μ arity F G1 G2 GT DecodedProof}
    {input :
      FormalShippingInput
        μ arity F G1 G2 GT DecodedProof}
    (materialization :
      RetainedCallMaterialization wire operations input) :
    RetainedProjectionFacts wire operations input := by
  have hrows := rows_exact materialization
  exact {
    execution := materialization.execution
    preparedVk := materialization.preparedVk
    srs := materialization.srs
    outputRetains := output_retains_input materialization
    familyRegistered := materialization.familyRegistered
    vkDigestRoute := materialization.vkDigestRoute
    serializedVkDecode := materialization.serializedVkDecode
    srsIdentityLoad := materialization.srsIdentityLoad
    statementExact := statement_exact materialization
    aicExact := aic_exact materialization
    validCounts := hrows.1
    realPrefixExact := hrows.2.1
    repeatFinalPadding := hrows.2.2
  }

#print axioms statement_exact
#print axioms aic_exact
#print axioms output_retains_input
#print axioms rows_exact
#print axioms prepared_vk_unique
#print axioms srs_unique
#print axioms materialized_statement_unique
#print axioms retained_shipping_rows_vk_srs_and_aic

end

end Ipp.ShippingStatementProjection
