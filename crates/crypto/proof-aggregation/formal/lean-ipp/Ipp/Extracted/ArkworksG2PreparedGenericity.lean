import Ipp.Extracted.ArkworksG2PreparedRepresentation
import Ipp.Extracted.ArkworksScalarMulG2Base

/-! Convert represented-point exclusions into the mixed homogeneous X inequality. -/

namespace Ipp.Extracted.ArkworksG2PreparedGenericity

open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedRepresentation
open Ipp.Extracted.ArkworksScalarMul

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

/-- Same-X finite represented points are equal or inverse as group points. -/
theorem represented_eq_or_eq_neg_of_same_x
    (p q : Fq2 × Fq2) (point qPoint : G2AffinePoint)
    (hp : RepresentsDecodedG2 (some p) point)
    (hq : RepresentsDecodedG2 (some q) qPoint)
    (hx : p.1 = q.1) : point = qPoint ∨ point = -qPoint := by
  rcases hp with ⟨hpcurve, hpoint⟩
  rcases hq with ⟨hqcurve, hqPoint⟩
  rcases sq_eq_sq_iff_eq_or_eq_neg.mp
      (g2_same_x_squares p q hpcurve hqcurve hx) with hy | hy
  · left
    rw [hpoint, hqPoint]
    unfold WeierstrassCurve.Affine.Point.mk
    rw [WeierstrassCurve.Affine.Point.some.injEq]
    exact ⟨hx, hy⟩
  · right
    let negCurve : DecodedG2OnCurve (some (q.1, -q.2)) := by
      simpa [hx, hy] using hpcurve
    calc
      point = liftDecodedG2 (some p) hpcurve := hpoint
      _ = liftDecodedG2 (some (q.1, -q.2)) negCurve := by
        unfold liftDecodedG2 WeierstrassCurve.Affine.Point.mk
        rw [WeierstrassCurve.Affine.Point.some.injEq]
        exact ⟨hx, hy⟩
      _ = -liftDecodedG2 (some q) hqcurve := by
        exact lift_negG2 q.1 q.2 hqcurve negCurve
      _ = -qPoint := congrArg Neg.neg hqPoint.symm

#print axioms represented_eq_or_eq_neg_of_same_x

end Ipp.Extracted.ArkworksG2PreparedGenericity
