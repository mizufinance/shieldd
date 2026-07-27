import Ipp.Extracted.ArkworksG2PreparedPointStepDouble
import Ipp.Extracted.ArkworksG2PreparedPointStepAddition
import Ipp.Extracted.ArkworksG2PreparedScalar

/-! True-bit pure-step representation projection. -/

namespace Ipp.Extracted.ArkworksG2PreparedLoopTrueRepresentation

open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedScalar
open Ipp.Extracted.ArkworksG2PreparedPointStep

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

set_option maxHeartbeats 1000000

/-- Pure double/add represents the next true-bit accumulated scalar. -/
theorem true_represents
    (q : AffineRep Fq2) (Q : G2AffinePoint) (remaining : Nat)
    (state doubled added : G2HomProjective)
    (hpos : 0 < remaining) (hbound : remaining ≤ 63)
    (hbit : ateLoopParameter.testBit (remaining - 1) = true)
    (hrep : RepresentsDecodedG2 (decodeModelHomogeneous state)
      (accumulatedScalar remaining • Q))
    (hsub : inPrimeSubgroup Q) (hne : Q ≠ 0)
    (hq : RepresentsDecodedG2 (some (q.x, q.y)) Q)
    (hdouble : doubled = (doubleLine state).1)
    (hadd : added = (addLine doubled q).1) :
    RepresentsDecodedG2 (decodeModelHomogeneous added)
      (accumulatedScalar (remaining - 1) • Q) := by
  have hdoubleRepState := double_model_represents_nsmul state Q
    (accumulatedScalar remaining) hrep
  have hdoubleRep : RepresentsDecodedG2 (decodeModelHomogeneous doubled)
      ((2 * accumulatedScalar remaining) • Q) := by
    rw [hdouble]
    exact hdoubleRepState
  have hmem := doubledScalar_mem hpos hbound hbit
  have hadded := add_model_generic_and_represents doubled q.x q.y Q
    (2 * accumulatedScalar remaining) hsub hne hmem hdoubleRep hq
  have hscalar := accumulatedScalar_step hpos hbound
  rw [hbit] at hscalar
  simp only [if_true] at hscalar
  rw [hscalar, hadd]
  exact hadded.2

end Ipp.Extracted.ArkworksG2PreparedLoopTrueRepresentation
