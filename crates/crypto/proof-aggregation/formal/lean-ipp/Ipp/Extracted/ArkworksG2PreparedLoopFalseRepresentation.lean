import Ipp.Extracted.ArkworksG2PreparedPointStepDouble
import Ipp.Extracted.ArkworksG2PreparedScalar

/-! False-bit pure-step representation projection. -/

namespace Ipp.Extracted.ArkworksG2PreparedLoopFalseRepresentation

open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedScalar
open Ipp.Extracted.ArkworksG2PreparedPointStep

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

/-- Pure doubling represents the next false-bit accumulated scalar. -/
theorem false_represents
    (Q : G2AffinePoint) (remaining : Nat)
    (state doubled : G2HomProjective)
    (hpos : 0 < remaining) (hbound : remaining ≤ 63)
    (hbit : ateLoopParameter.testBit (remaining - 1) = false)
    (hrep : RepresentsDecodedG2 (decodeModelHomogeneous state)
      (accumulatedScalar remaining • Q))
    (hdouble : doubled = (doubleLine state).1) :
    RepresentsDecodedG2 (decodeModelHomogeneous doubled)
      (accumulatedScalar (remaining - 1) • Q) := by
  have hdoubleRep := double_model_represents_nsmul state Q
    (accumulatedScalar remaining) hrep
  have hscalar := accumulatedScalar_step hpos hbound
  rw [hbit] at hscalar
  simp only [Bool.false_eq_true, if_false, add_zero] at hscalar
  rw [hscalar, hdouble]
  exact hdoubleRep

end Ipp.Extracted.ArkworksG2PreparedLoopFalseRepresentation
