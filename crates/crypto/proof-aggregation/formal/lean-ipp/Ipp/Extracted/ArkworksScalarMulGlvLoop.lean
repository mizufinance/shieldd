import Ipp.Extracted.ArkworksScalarMulGlvLoopModel
import Ipp.Extracted.ArkworksScalarMulGlvStep
import Ipp.Extracted.ArkworksScalarMulG1Loop

/-! Refinement of the executed BLS12-377 G1 GLV paired-bit loop. -/

namespace Ipp.Extracted.ArkworksScalarMul

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksG1

local instance : Fact Ipp.Bls12377.baseModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.basePrime⟩

local instance : Ipp.Bls12377.g1Curve.IsElliptic :=
  Ipp.Bls12377.g1_isElliptic

set_option maxHeartbeats 4000000

/-- Once the single leading `00` pair is skipped, every remaining pair refines
    one `runJoint` step. -/
theorem glvJointLoopResult_valid_false {Acc G : Type} [AddMonoid G]
    (StateOk : Acc → G → Prop) (step : Acc → Bool → Bool → Result Acc)
    (k1 k2 : ScalarArray) (b1 b2 : G)
    (hstep : ∀ accumulator output accumulatorPoint bit1 bit2,
      StateOk accumulator accumulatorPoint →
      step accumulator bit1 bit2 = .ok output →
      StateOk output
        (accumulatorPoint + accumulatorPoint +
          if bit1 then (if bit2 then b1 + b2 else b1)
          else (if bit2 then b2 else 0)))
    {state : Acc × Bool × Usize} {result : Result Acc}
    (hrun : LoopResult (glvJointBody step k1 k2) state result)
    (hbound : state.2.2.val ≤ 256) (hskip : state.2.1 = false)
    (accumulatorPoint : G) (hvalid : StateOk state.1 accumulatorPoint) :
    ∀ output, result = .ok output →
      StateOk output
        (runJoint state.2.2.val (glvPairs k1 k2 state.2.2.val)
          b1 b2 accumulatorPoint) := by
  induction hrun generalizing accumulatorPoint with
  | done hbody =>
      rename_i current final
      rcases current with ⟨accumulator, skipZeros, bitIndex⟩
      intro output hresult
      have hskip' : skipZeros = false := hskip
      subst skipZeros
      simp only [glvJointBody] at hbody
      by_cases hpos : bitIndex.val > 0
      · rw [if_pos hpos] at hbody
        cases hexec : step accumulator (glvBit k1 (bitIndex.val - 1))
            (glvBit k2 (bitIndex.val - 1)) <;> simp [hexec] at hbody
      · have hzero : bitIndex.val = 0 := by omega
        rw [if_neg hpos] at hbody
        simp only [Result.ok.injEq, ControlFlow.done.injEq] at hbody
        cases hbody
        cases hresult
        simpa [hzero, runJoint] using hvalid
  | next hbody hnext ih =>
      rename_i current nextState nextResult
      rcases current with ⟨accumulator, skipZeros, bitIndex⟩
      intro output hresult
      have hskip' : skipZeros = false := hskip
      subst skipZeros
      change bitIndex.val ≤ 256 at hbound
      have hpos : bitIndex.val > 0 := by
        by_contra hnot
        simp [glvJointBody, hnot] at hbody
      have hbitBound : bitIndex.val - 1 ≤ 256 := by omega
      let bit1 := glvBit k1 (bitIndex.val - 1)
      let bit2 := glvBit k2 (bitIndex.val - 1)
      simp only [glvJointBody] at hbody
      rw [if_pos hpos] at hbody
      cases hexec : step accumulator bit1 bit2 with
      | ok nextAccumulator =>
          change step accumulator bit1 bit2 >>= _ = _ at hbody
          rw [hexec] at hbody
          simp only [Result.bind_ok, Result.ok.injEq, ControlFlow.cont.injEq] at hbody
          cases hbody
          have hnextValid := hstep accumulator nextAccumulator accumulatorPoint
            bit1 bit2 hvalid hexec
          have htail := ih hbitBound rfl _ hnextValid output hresult
          have hsucc : bitIndex.val - 1 + 1 = bitIndex.val := by omega
          rw [← hsucc, glvPairs_succ, runJoint]
          simpa [bit1, bit2] using htail
      | fail error =>
          change step accumulator bit1 bit2 >>= _ = _ at hbody
          rw [hexec] at hbody
          simp at hbody
      | div =>
          change step accumulator bit1 bit2 >>= _ = _ at hbody
          rw [hexec] at hbody
          simp at hbody
  | fail hbody => intro output hresult; simp at hresult
  | div hbody => intro output hresult; simp at hresult

/-- The extracted 256-pair loop refines the exact symbolic schedule, including
    its single leading `00` skip. -/
theorem valid_g1_glv_joint_loop_256
    (b1 b2 b1b2 : G1ProjLimbTriple) (k1 k2 : ScalarArray)
    (b1Point b2Point : G1AffinePoint) (output : G1ProjLimbTriple)
    (hb1 : ValidG1LoopState b1 b1Point)
    (hb2 : ValidG1LoopState b2 b2Point)
    (hb1b2 : ValidG1LoopState b1b2 (b1Point + b2Point))
    (hk1 : scalarToNat k1 < 2 ^ 255) (hk2 : scalarToNat k2 < 2 ^ 255)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_glv_joint_loop
      b1 b2 b1b2 k1 k2 = .ok output) :
    ValidG1LoopState output
      (runJoint 256 (glvPairs k1 k2 256) b1Point b2Point 0) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_glv_joint_loop at hexec
  let zero : G1ProjLimbTriple :=
    { x := ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE
      y := ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE
      z := ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO }
  have hzeroExec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_zero = .ok zero := rfl
  change (ark_ip_proofs.s3_07_arkworks_fq_spike.g1_zero >>= _) = .ok output at hexec
  rw [hzeroExec] at hexec
  simp only [Result.bind_ok] at hexec
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_glv_joint_loop_loop at hexec
  have hrun := Aeneas.loopResult_of_eq (by simp) hexec
  let step := fun accumulator bit1 bit2 =>
    ark_ip_proofs.s3_07_arkworks_fq_spike.g1_glv_joint_step
      accumulator b1 b2 b1b2 bit1 bit2
  change LoopResult (glvJointExtractedBody step k1 k2)
    (zero, true, 256#usize) (.ok output) at hrun
  have hmodel := glvJointLoopResult_to_model step k1 k2 hrun (by decide)
  have hhead := glvPairs_256_head_false k1 k2 hk1 hk2
  have hbits : (glvBit k1 255, glvBit k2 255) = (false, false) := by
    have hhead' :
        (glvBit k1 255, glvBit k2 255) :: glvPairs k1 k2 255 =
          (false, false) :: glvPairs k1 k2 255 := hhead
    exact (List.cons.inj hhead').1
  have hbit1 : glvBit k1 255 = false := congrArg Prod.fst hbits
  have hbit2 : glvBit k2 255 = false := congrArg Prod.snd hbits
  cases hmodel with
  | done hbody => simp [glvJointBody, hbit1, hbit2] at hbody
  | next hbody htail =>
      rename_i nextState
      have hstate : nextState = (zero, false, 255#usize) := by
        simpa [glvJointBody, hbit1, hbit2] using hbody.symm
      subst nextState
      have hzero := valid_g1_zero zero hzeroExec
      have hvalid := glvJointLoopResult_valid_false ValidG1LoopState step
        k1 k2 b1Point b2Point
        (by
          intro accumulator next accumulatorPoint bit1 bit2 haccumulator hstepExec
          exact valid_g1_glv_joint_step accumulator b1 b2 b1b2 next
            accumulatorPoint b1Point b2Point bit1 bit2 haccumulator hb1 hb2 hb1b2
            hstepExec)
        htail (by decide) rfl 0 hzero output rfl
      rw [hhead, runJoint]
      simpa only [zero_add] using hvalid

/-- `runJoint_256_skip` evaluates the represented output as the two GLV
    magnitude actions. -/
theorem valid_g1_glv_joint_loop_value
    (b1 b2 b1b2 : G1ProjLimbTriple) (k1 k2 : ScalarArray)
    (b1Point b2Point : G1AffinePoint) (output : G1ProjLimbTriple)
    (hb1 : ValidG1LoopState b1 b1Point)
    (hb2 : ValidG1LoopState b2 b2Point)
    (hb1b2 : ValidG1LoopState b1b2 (b1Point + b2Point))
    (hk1 : scalarToNat k1 < 2 ^ 255) (hk2 : scalarToNat k2 < 2 ^ 255)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_glv_joint_loop
      b1 b2 b1b2 k1 k2 = .ok output) :
    let value := jointValue 255 (glvPairs k1 k2 255)
    ValidG1LoopState output (value.1 • b1Point + value.2 • b2Point) := by
  have hvalid := valid_g1_glv_joint_loop_256 b1 b2 b1b2 k1 k2
    b1Point b2Point output hb1 hb2 hb1b2 hk1 hk2 hexec
  rw [runJoint_glvPairs_256_skip k1 k2 b1Point b2Point hk1 hk2] at hvalid
  exact hvalid

#print axioms glvJointLoopResult_valid_false
#print axioms valid_g1_glv_joint_loop_256
#print axioms valid_g1_glv_joint_loop_value

end Ipp.Extracted.ArkworksScalarMul
