import Ipp.Extracted.ArkworksG2PreparedModel

/-! Decoded prepared-G2 values and their pure coefficient-sequence model. -/

namespace Ipp.Extracted.ArkworksG2PreparedResult

open Aeneas
open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

abbrev G2AffineLimb := ark_ip_proofs.s3_07_arkworks_fq_spike.G2AffineMont
abbrev G2PreparedLimb := ark_ip_proofs.s3_07_arkworks_fq_spike.G2PreparedMont

/-- Mathematical view of a prepared G2 input. -/
structure DecodedPrepared where
  ellCoeffs : List EllCoeff
  infinity : Bool

/-- Decode every emitted Montgomery coefficient without changing its order. -/
def decodePrepared (prepared : G2PreparedLimb) : DecodedPrepared :=
  ⟨prepared.ell_coeffs.val.map decodeEllCoeff, prepared.infinity⟩

/-- Pure state for the prepared coefficient schedule. -/
structure PreparedModelState where
  r : G2HomProjective
  ellCoeffs : List EllCoeff

/-- One modeled ate step: always double, then add the base at true bits. -/
def preparedModelStep (q : AffineRep Fq2)
    (state : PreparedModelState) (bit : Bool) : PreparedModelState :=
  let doubled := doubleLine state.r
  let coeffs := state.ellCoeffs ++ [doubled.2]
  if bit then
    let added := addLine doubled.1 q
    ⟨added.1, coeffs ++ [added.2]⟩
  else
    ⟨doubled.1, coeffs⟩

/-- The full 63-position finite ate schedule, including all 69 coefficients. -/
def preparedModelFinite (q : AffineRep Fq2) : PreparedModelState :=
  ateLoopBits.foldl (preparedModelStep q) ⟨⟨q.x, q.y, 1⟩, []⟩

/-- Prepared-G2 specification indexed only by the represented Mathlib point. -/
noncomputable def preparedModel (Q : G2AffinePoint) : DecodedPrepared :=
  let q := affineRepOfPoint Q
  if q.infinity then ⟨[], true⟩
  else ⟨(preparedModelFinite q).ellCoeffs, false⟩

@[simp] theorem decodePrepared_infinity :
    decodePrepared
      ({ ell_coeffs := ⟨[]⟩, infinity := true } : G2PreparedLimb) =
      ⟨[], true⟩ := rfl

#print axioms decodePrepared
#print axioms preparedModelStep
#print axioms preparedModelFinite
#print axioms preparedModel

end Ipp.Extracted.ArkworksG2PreparedResult
