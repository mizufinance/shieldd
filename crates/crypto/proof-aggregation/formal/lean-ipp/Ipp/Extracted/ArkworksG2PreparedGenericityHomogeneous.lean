import Ipp.Extracted.ArkworksG2PreparedGenericity

/-! Homogeneous-coordinate form of the prepared mixed-add genericity boundary. -/

namespace Ipp.Extracted.ArkworksG2PreparedGenericityHomogeneous

open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedRepresentation
open Ipp.Extracted.ArkworksG2PreparedGenericity

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

set_option maxHeartbeats 1000000

/-- Point exclusions imply precisely the genericity premise of `g2_add_line_spec`. -/
theorem homogeneous_generic_of_point_exclusions
    (state : G2HomProjective)
    (qx qy : Fq2) (point qPoint : G2AffinePoint)
    (hrep : RepresentsDecodedG2
      (decodeModelHomogeneous state) point)
    (hq : RepresentsDecodedG2 (some (qx, qy)) qPoint)
    (hzero : point ≠ 0) (heq : point ≠ qPoint) (hneg : point ≠ -qPoint) :
    state.z ≠ 0 ∧ state.x / state.z ≠ qx := by
  have hdecoded := hrep
  have hz : state.z ≠ 0 := by
    intro hz
    have hnone : decodeModelHomogeneous state = none := by
      simp [decodeModelHomogeneous, hz]
    rw [hnone] at hdecoded
    exact hzero hdecoded
  refine ⟨hz, ?_⟩
  intro hx
  have hsome : decodeModelHomogeneous state =
      some (state.x / state.z, state.y / state.z) := by
    simp [decodeModelHomogeneous, hz]
  rw [hsome] at hdecoded
  rcases represented_eq_or_eq_neg_of_same_x
      (state.x / state.z, state.y / state.z) (qx, qy)
      point qPoint hdecoded hq hx with h | h
  · exact heq h
  · exact hneg h

#print axioms homogeneous_generic_of_point_exclusions

end Ipp.Extracted.ArkworksG2PreparedGenericityHomogeneous
