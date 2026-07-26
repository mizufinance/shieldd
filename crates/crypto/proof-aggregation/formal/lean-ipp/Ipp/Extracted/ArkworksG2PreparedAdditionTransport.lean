import Ipp.Extracted.ArkworksG2PreparedAdditionModel

/-! Represented-point transport for the homogeneous mixed-addition model. -/

namespace Ipp.Extracted.ArkworksG2PreparedAdditionTransport

open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedAdditionModel

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

private theorem chord_on_curve (p q : Fq2 × Fq2)
    (hp : DecodedG2OnCurve (some p)) (hq : DecodedG2OnCurve (some q))
    (hx : p.1 ≠ q.1) : DecodedG2OnCurve (some (chordAddG2 p q)) := by
  rcases p with ⟨x₁, y₁⟩
  rcases q with ⟨x₂, y₂⟩
  rw [chordAddG2_eq_mathlib x₁ y₁ x₂ y₂ hx]
  exact (WeierstrassCurve.Affine.nonsingular_add
    (WeierstrassCurve.Affine.equation_iff_nonsingular.mp hp)
    (WeierstrassCurve.Affine.equation_iff_nonsingular.mp hq)
    (fun h => hx h.1)).1

/-- The generic homogeneous formula represents addition by the affine input. -/
theorem addLine_represents_add (r : G2HomProjective) (qx qy : Fq2)
    (point qPoint : G2AffinePoint) (hz : r.z ≠ 0)
    (hx : r.x / r.z ≠ qx)
    (hrep : RepresentsDecodedG2 (decodeModelHomogeneous r) point)
    (hq : RepresentsDecodedG2 (some (qx, qy)) qPoint) :
    RepresentsDecodedG2
      (decodeModelHomogeneous (addLine r ⟨false, qx, qy⟩).1)
      (point + qPoint) := by
  have hin : decodeModelHomogeneous r =
      some (r.x / r.z, r.y / r.z) := by
    simp [decodeModelHomogeneous, hz]
  rw [hin] at hrep
  rcases hrep with ⟨hp, hpoint⟩
  rcases hq with ⟨hqcurve, hqpoint⟩
  rw [addLine_decode_generic r qx qy hz hx]
  have hout := chord_on_curve (r.x / r.z, r.y / r.z) (qx, qy)
    hp hqcurve hx
  refine ⟨hout, ?_⟩
  rw [hpoint, hqpoint]
  simpa [liftDecodedG2] using
    (lift_chordAddG2 (r.x / r.z) (r.y / r.z) qx qy hx
      hp hqcurve hout).symm

#print axioms addLine_represents_add

end Ipp.Extracted.ArkworksG2PreparedAdditionTransport
