import Ipp.Extracted.ArkworksScalarMulGlvGenerated
import Ipp.Extracted.ArkworksScalarMulG1Step

/-! Branch-complete refinement of one executed G1 GLV joint step. -/

namespace Ipp.Extracted.ArkworksScalarMul

open Aeneas Result
open Ipp.Extracted.ArkworksG1

local instance : Fact Ipp.Bls12377.baseModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.basePrime⟩

local instance : Ipp.Bls12377.g1Curve.IsElliptic :=
  Ipp.Bls12377.g1_isElliptic

set_option maxHeartbeats 4000000

private theorem bind_eq_ok_glv {alpha beta : Type} {action : Result alpha}
    {next : alpha → Result beta} {output : beta}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action with
  | ok value => exact ⟨value, rfl, hexec⟩
  | fail error => simp at hexec
  | div => simp at hexec

/-- One executed joint bit pair performs double plus arkworks' choice-add. -/
theorem valid_g1_glv_joint_step
    (accumulator b1 b2 b1b2 output : G1ProjLimbTriple)
    (accumulatorPoint b1Point b2Point : G1AffinePoint)
    (bit1 bit2 : Bool)
    (haccumulator : ValidG1LoopState accumulator accumulatorPoint)
    (hb1 : ValidG1LoopState b1 b1Point)
    (hb2 : ValidG1LoopState b2 b2Point)
    (hb1b2 : ValidG1LoopState b1b2 (b1Point + b2Point))
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_glv_joint_step
      accumulator b1 b2 b1b2 bit1 bit2 = .ok output) :
    ValidG1LoopState output
      (accumulatorPoint + accumulatorPoint +
        if bit1 then (if bit2 then b1Point + b2Point else b1Point)
        else (if bit2 then b2Point else 0)) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_glv_joint_step at hexec
  obtain ⟨doubled, hdoubled, hexec⟩ := bind_eq_ok_glv hexec
  have hd := valid_g1_double accumulator doubled accumulatorPoint
    haccumulator hdoubled
  cases bit1 <;> cases bit2
  · simp only [Bool.false_eq_true, ↓reduceIte, Result.ok.injEq] at hexec ⊢
    subst output
    simpa using hd
  · simp only [Bool.false_eq_true, ↓reduceIte] at hexec ⊢
    exact valid_g1_add doubled b2 output
      (accumulatorPoint + accumulatorPoint) b2Point hd hb2 hexec
  · simp only [Bool.false_eq_true, ↓reduceIte] at hexec ⊢
    exact valid_g1_add doubled b1 output
      (accumulatorPoint + accumulatorPoint) b1Point hd hb1 hexec
  · simp only [↓reduceIte] at hexec ⊢
    exact valid_g1_add doubled b1b2 output
      (accumulatorPoint + accumulatorPoint) (b1Point + b2Point) hd hb1b2 hexec

#print axioms valid_g1_glv_joint_step

end Ipp.Extracted.ArkworksScalarMul
