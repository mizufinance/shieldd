import Ipp.Extracted.ArkworksG2PreparedPointStepDouble
import Ipp.Extracted.ArkworksG2PreparedPointStepAddition
import Ipp.Extracted.ArkworksG2PreparedModelPrefix

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

theorem true_step
    (q : AffineRep Fq2) (Q : G2AffinePoint) (remaining : Nat)
    (state doubled added : G2HomProjective) (coeffs : List EllCoeff)
    (doubleCoeff addCoeff : EllCoeff)
    (hpos : 0 < remaining) (hbound : remaining ≤ 63)
    (hbit : ateLoopParameter.testBit (remaining - 1) = true)
    (hstate : state = (preparedModelAt q remaining).r)
    (hrep : RepresentsDecodedG2 (decodeModelHomogeneous state)
      (accumulatedScalar remaining • Q))
    (hcoeffs : coeffs = (preparedModelAt q remaining).ellCoeffs)
    (hsub : inPrimeSubgroup Q) (hne : Q ≠ 0)
    (hq : RepresentsDecodedG2 (some (q.x, q.y)) Q)
    (hdouble : (doubled, doubleCoeff) = doubleLine state)
    (hadd : (added, addCoeff) = addLine doubled q) :
    (doubled.z ≠ 0 ∧ doubled.x / doubled.z ≠ q.x) ∧
      added = (preparedModelAt q (remaining - 1)).r ∧
      RepresentsDecodedG2 (decodeModelHomogeneous added)
        (accumulatedScalar (remaining - 1) • Q) ∧
      (coeffs ++ [doubleCoeff]) ++ [addCoeff] =
        (preparedModelAt q (remaining - 1)).ellCoeffs := by
  have hprefix := preparedModelAt_step q hpos hbound
  rw [hbit] at hprefix
  have hdoubleRepState := double_model_represents_nsmul state Q
    (accumulatedScalar remaining) hrep
  have hdstate : doubled = (doubleLine state).1 := congrArg Prod.fst hdouble
  have hdcoeff : doubleCoeff = (doubleLine state).2 := congrArg Prod.snd hdouble
  have hastate : added = (addLine doubled q).1 := congrArg Prod.fst hadd
  have hacoeff : addCoeff = (addLine doubled q).2 := congrArg Prod.snd hadd
  have hdoubleRep : RepresentsDecodedG2 (decodeModelHomogeneous doubled)
      ((2 * accumulatedScalar remaining) • Q) := by
    rw [hdstate]
    exact hdoubleRepState
  have hmem := doubledScalar_mem hpos hbound hbit
  have hadded := add_model_generic_and_represents doubled q.x q.y Q
    (2 * accumulatedScalar remaining) hsub hne hmem hdoubleRep hq
  have hscalar := accumulatedScalar_step hpos hbound
  rw [hbit] at hscalar
  simp only [if_true] at hscalar
  refine ⟨hadded.1, ?_, ?_, ?_⟩
  · rw [hprefix]
    simpa [preparedModelStep, hstate, hdstate] using hastate
  · rw [hscalar, hastate]
    exact hadded.2
  · rw [hprefix]
    simpa [preparedModelStep, hstate, hcoeffs, hdstate, hdcoeff] using hacoeff

#print axioms true_step

end Ipp.Extracted.ArkworksG2PreparedLoopPureStep
