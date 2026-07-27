import Ipp.Extracted.ArkworksG2PreparedPointStepDouble
import Ipp.Extracted.ArkworksG2PreparedModelPrefix
import Ipp.Extracted.ArkworksG2PreparedScalar

namespace Ipp.Extracted.ArkworksG2PreparedLoopPureStep

open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedResult
open Ipp.Extracted.ArkworksG2PreparedModelPrefix
open Ipp.Extracted.ArkworksG2PreparedScalar
open Ipp.Extracted.ArkworksG2PreparedPointStep

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

set_option maxHeartbeats 2000000
set_option linter.constructorNameAsVariable false

/-- Pure false-bit update: one double and one appended coefficient. -/
theorem false_step
    (q : AffineRep Fq2) (Q : G2AffinePoint) (remaining : Nat)
    (state doubled : G2HomProjective) (coeffs : List EllCoeff)
    (doubleCoeff : EllCoeff)
    (hpos : 0 < remaining) (hbound : remaining ≤ 63)
    (hbit : ateLoopParameter.testBit (remaining - 1) = false)
    (hstate : state = (preparedModelAt q remaining).r)
    (hrep : RepresentsDecodedG2 (decodeModelHomogeneous state)
      (accumulatedScalar remaining • Q))
    (hcoeffs : coeffs = (preparedModelAt q remaining).ellCoeffs)
    (hdouble : (doubled, doubleCoeff) = doubleLine state) :
    doubled = (preparedModelAt q (remaining - 1)).r ∧
      RepresentsDecodedG2 (decodeModelHomogeneous doubled)
        (accumulatedScalar (remaining - 1) • Q) ∧
      coeffs ++ [doubleCoeff] =
        (preparedModelAt q (remaining - 1)).ellCoeffs := by
  have hprefix := preparedModelAt_step q hpos hbound
  rw [hbit] at hprefix
  have hdoubleRep := double_model_represents_nsmul state Q
    (accumulatedScalar remaining) hrep
  have hdstate : doubled = (doubleLine state).1 := congrArg Prod.fst hdouble
  have hdcoeff : doubleCoeff = (doubleLine state).2 := congrArg Prod.snd hdouble
  have hscalar := accumulatedScalar_step hpos hbound
  rw [hbit] at hscalar
  simp only [Bool.false_eq_true, if_false, add_zero] at hscalar
  refine ⟨?_, ?_, ?_⟩
  · rw [hprefix]
    simpa [preparedModelStep, hstate] using hdstate
  · rw [hscalar, hdstate]
    exact hdoubleRep
  · rw [hprefix]
    simpa [preparedModelStep, hstate, hcoeffs] using hdcoeff

#print axioms false_step

end Ipp.Extracted.ArkworksG2PreparedLoopPureStep
