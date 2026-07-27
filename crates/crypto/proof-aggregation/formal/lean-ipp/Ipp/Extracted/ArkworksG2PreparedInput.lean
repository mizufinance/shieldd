import Ipp.Extracted.ArkworksG2PreparedSchedule
import Ipp.Extracted.ArkworksG2PreparedRepresentation
import Ipp.Extracted.ArkworksG2PreparedResult
import Ipp.Extracted.ArkworksScalarMulNormalizeCommon

/-! Canonical represented inputs and the initial homogeneous prepared state. -/

namespace Ipp.Extracted.ArkworksG2PreparedInput

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedRepresentation
open Ipp.Extracted.ArkworksG2PreparedResult
open Ipp.Extracted.ArkworksG2PreparedSchedule

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

/-- Canonical affine limbs representing the point passed to preparation. -/
structure ValidG2PreparedInput (q : G2AffineLimb) (Q : G2AffinePoint) : Prop where
  canonicalX : Canonical2 q.x
  canonicalY : Canonical2 q.y
  represents : RepresentsDecodedG2
    (if q.infinity then none else some (decodeFq2 q.x, decodeFq2 q.y)) Q

/-- A represented finite affine input is not the group identity. -/
theorem finite_ne_zero {q : G2AffineLimb} {Q : G2AffinePoint}
    (hq : ValidG2PreparedInput q Q) (hfinite : q.infinity = false) :
    Q ≠ 0 := by
  have hrep : RepresentsDecodedG2
      (some (decodeFq2 q.x, decodeFq2 q.y)) Q := by
    simpa [hfinite] using hq.represents
  rcases hrep with ⟨hcurve, hQ⟩
  intro hzero
  rw [hzero] at hQ
  simp [WeierstrassCurve.Affine.Point.mk] at hQ

/-- The Mathlib point's canonical affine representative is the decoded input. -/
theorem affineRepOfPoint_eq {q : G2AffineLimb} {Q : G2AffinePoint}
    (hq : ValidG2PreparedInput q Q) (hfinite : q.infinity = false) :
    affineRepOfPoint Q =
      ⟨false, decodeFq2 q.x, decodeFq2 q.y⟩ := by
  have hrep : RepresentsDecodedG2
      (some (decodeFq2 q.x, decodeFq2 q.y)) Q := by
    simpa [hfinite] using hq.represents
  rcases hrep with ⟨hcurve, hQ⟩
  rw [hQ]
  simp [affineRepOfPoint, WeierstrassCurve.Affine.Point.mk]

/-- The extracted finite initial state has canonical homogeneous limbs. -/
theorem initialState_canonical {q : G2AffineLimb} {Q : G2AffinePoint}
    (hq : ValidG2PreparedInput q Q) :
    CanonicalG2 (initialState q) := by
  exact ⟨hq.canonicalX, hq.canonicalY,
    Ipp.Extracted.ArkworksScalarMulNormalizeCommon.fq2_one_canonical⟩

/-- The decoded extracted finite initial state represents the affine input point. -/
theorem initialState_representsDecoded {q : G2AffineLimb} {Q : G2AffinePoint}
    (hq : ValidG2PreparedInput q Q) (hfinite : q.infinity = false) :
    RepresentsDecodedG2
      (decodeModelHomogeneous (decodeHomogeneous (initialState q))) Q := by
  have hrep : RepresentsDecodedG2
      (some (decodeFq2 q.x, decodeFq2 q.y)) Q := by
    simpa [hfinite] using hq.represents
  simpa [initialState, decodeHomogeneous, decodeModelHomogeneous,
    Ipp.Extracted.ArkworksScalarMulNormalizeCommon.decode_fq2_one]
    using hrep

#print axioms finite_ne_zero
#print axioms affineRepOfPoint_eq
#print axioms initialState_canonical
#print axioms initialState_representsDecoded

end Ipp.Extracted.ArkworksG2PreparedInput
