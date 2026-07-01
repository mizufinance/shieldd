import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg34_rows110 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4395 rho ∧ Seg34.relationRow4396 rho ∧ Seg34.relationRow4397 rho ∧ Seg34.relationRow4398 rho ∧ Seg34.relationRow4399 rho ∧ Seg34.relationRow4400 rho ∧ Seg34.relationRow4401 rho ∧ Seg34.relationRow4402 rho ∧ Seg34.relationRow4403 rho ∧ Seg34.relationRow4404 rho ∧ Seg34.relationRow4405 rho ∧ Seg34.relationRow4406 rho ∧ Seg34.relationRow4407 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p54, p55, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4395, r4396, r4397, r4398, r4399⟩
  unfold Seg34.relationPart55 at p55
  rcases p55 with ⟨r4400, r4401, r4402, r4403, r4404, r4405, r4406, r4407, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4395, r4396, r4397, r4398, r4399, r4400, r4401, r4402, r4403, r4404, r4405, r4406, r4407⟩

theorem seg34_rung110 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34102 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX110 rho : Seg34.F), (seg34AccY110 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35665 : Seg34.F), (rho 35666 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX110 rho : Seg34.F), (seg34AccY110 rho : Seg34.F)⟩
        ⟨(rho 35665 : Seg34.F), (rho 35666 : Seg34.F)⟩
        ⟨(seg34AccX111 rho : Seg34.F), (seg34AccY111 rho : Seg34.F)⟩
        ⟨(rho 35678 : Seg34.F), (rho 35679 : Seg34.F)⟩ := by
  obtain ⟨r4395, r4396, r4397, r4398, r4399, r4400, r4401, r4402, r4403, r4404, r4405, r4406, r4407⟩ := seg34_rows110 rho h
  unfold Seg34.relationRow4395 at r4395
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4395
  unfold Seg34.relationRow4396 at r4396
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4396
  unfold Seg34.relationRow4397 at r4397
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4397
  unfold Seg34.relationRow4398 at r4398
  unfold Seg34.relationRow4399 at r4399
  unfold Seg34.relationRow4400 at r4400
  unfold Seg34.relationRow4401 at r4401
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4401
  unfold Seg34.relationRow4402 at r4402
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4402
  unfold Seg34.relationRow4403 at r4403
  unfold Seg34.relationRow4404 at r4404
  unfold Seg34.relationRow4405 at r4405
  unfold Seg34.relationRow4406 at r4406
  unfold Seg34.relationRow4407 at r4407
  have hrung110 (bit : Bool) (hbit : rho 34102 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX110 rho : Seg34.F), (seg34AccY110 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35665 : Seg34.F), (rho 35666 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX110 rho : Seg34.F), (seg34AccY110 rho : Seg34.F)⟩
        ⟨(rho 35665 : Seg34.F), (rho 35666 : Seg34.F)⟩
        ⟨(seg34AccX111 rho : Seg34.F), (seg34AccY111 rho : Seg34.F)⟩
        ⟨(rho 35678 : Seg34.F), (rho 35679 : Seg34.F)⟩ := by
    have hnextx : seg34AccX111 rho = seg34AccX110 rho + rho 35673 := by
      unfold seg34AccX111 seg34AccX110
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 110]
      ring
    have hnexty : seg34AccY111 rho = seg34AccY110 rho + rho 35674 := by
      unfold seg34AccY111 seg34AccY110
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 110]
      ring
    have ha0 : (rho 35665 + rho 35666) * (seg34AccX110 rho + seg34AccY110 rho) = rho 35667 := by
      unfold seg34AccX110 seg34AccY110
      linear_combination r4395
    have ha1 : rho 35666 * seg34AccX110 rho = rho 35668 := by
      unfold seg34AccX110
      linear_combination r4396
    have ha2 : rho 35665 * seg34AccY110 rho = rho 35669 := by
      unfold seg34AccY110
      linear_combination r4397
    have ha3 : 3021 * rho 35668 * rho 35669 = rho 35670 := by
      linear_combination r4398
    have ha4 : rho 35671 * (1 + rho 35670) = rho 35668 + rho 35669 := by
      linear_combination r4399
    have ha5 : rho 35672 * (1 - rho 35670) = rho 35667 - rho 35668 - rho 35669 := by
      linear_combination r4400
    have haddx :
        rho 35671 * (1 + 3021 * (rho 35666 * seg34AccX110 rho) * (rho 35665 * seg34AccY110 rho)) =
          rho 35666 * seg34AccX110 rho + rho 35665 * seg34AccY110 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35672 * (1 - 3021 * (rho 35666 * seg34AccX110 rho) * (rho 35665 * seg34AccY110 rho)) =
          (-1) * (rho 35666 * seg34AccX110 rho) - rho 35665 * seg34AccY110 rho +
            (seg34AccY110 rho - seg34AccX110 rho * (-1)) * (rho 35665 + rho 35666) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35672 * (1 - rho 35670) = rho 35667 - rho 35668 - rho 35669 := ha5
        _ = (-1) * rho 35668 - rho 35669 + (seg34AccY110 rho - seg34AccX110 rho * (-1)) * (rho 35665 + rho 35666) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX111 rho = seg34AccX110 rho - Bool.toZMod bit * (seg34AccX110 rho - rho 35671) := by
      have hd : rho 35673 = Bool.toZMod bit * (rho 35671 - seg34AccX110 rho) := by
        rw [← hbit]
        unfold seg34AccX110
        linear_combination -r4401
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY111 rho = seg34AccY110 rho - Bool.toZMod bit * (seg34AccY110 rho - rho 35672) := by
      have hd : rho 35674 = Bool.toZMod bit * (rho 35672 - seg34AccY110 rho) := by
        rw [← hbit]
        unfold seg34AccY110
        linear_combination -r4402
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35665 * rho 35666 = rho 35675 := by linear_combination r4403
    have hd1 : rho 35665 * rho 35665 = rho 35676 := by linear_combination r4404
    have hd2 : rho 35666 * rho 35666 = rho 35677 := by linear_combination r4405
    have hd3 : rho 35678 * (rho 35666 * rho 35666 + rho 35665 * rho 35665 * (-1)) = 2 * (rho 35665 * rho 35666) := by
      rw [hd0, hd1, hd2]
      linear_combination r4406
    have hd4 : rho 35679 * (2 - (rho 35666 * rho 35666 + rho 35665 * rho 35665 * (-1))) = rho 35666 * rho 35666 - rho 35665 * rho 35665 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4407
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX110 rho : Seg34.F), (seg34AccY110 rho : Seg34.F)⟩
      ⟨(rho 35665 : Seg34.F), (rho 35666 : Seg34.F)⟩
      ⟨(rho 35671 : Seg34.F), (rho 35672 : Seg34.F)⟩
      ⟨(seg34AccX111 rho : Seg34.F), (seg34AccY111 rho : Seg34.F)⟩
      ⟨(rho 35678 : Seg34.F), (rho 35679 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung110

theorem seg34_rows111 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4408 rho ∧ Seg34.relationRow4409 rho ∧ Seg34.relationRow4410 rho ∧ Seg34.relationRow4411 rho ∧ Seg34.relationRow4412 rho ∧ Seg34.relationRow4413 rho ∧ Seg34.relationRow4414 rho ∧ Seg34.relationRow4415 rho ∧ Seg34.relationRow4416 rho ∧ Seg34.relationRow4417 rho ∧ Seg34.relationRow4418 rho ∧ Seg34.relationRow4419 rho ∧ Seg34.relationRow4420 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p55, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, r4408, r4409, r4410, r4411, r4412, r4413, r4414, r4415, r4416, r4417, r4418, r4419, r4420, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4408, r4409, r4410, r4411, r4412, r4413, r4414, r4415, r4416, r4417, r4418, r4419, r4420⟩

theorem seg34_rung111 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34103 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX111 rho : Seg34.F), (seg34AccY111 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35678 : Seg34.F), (rho 35679 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX111 rho : Seg34.F), (seg34AccY111 rho : Seg34.F)⟩
        ⟨(rho 35678 : Seg34.F), (rho 35679 : Seg34.F)⟩
        ⟨(seg34AccX112 rho : Seg34.F), (seg34AccY112 rho : Seg34.F)⟩
        ⟨(rho 35691 : Seg34.F), (rho 35692 : Seg34.F)⟩ := by
  obtain ⟨r4408, r4409, r4410, r4411, r4412, r4413, r4414, r4415, r4416, r4417, r4418, r4419, r4420⟩ := seg34_rows111 rho h
  unfold Seg34.relationRow4408 at r4408
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4408
  unfold Seg34.relationRow4409 at r4409
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4409
  unfold Seg34.relationRow4410 at r4410
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4410
  unfold Seg34.relationRow4411 at r4411
  unfold Seg34.relationRow4412 at r4412
  unfold Seg34.relationRow4413 at r4413
  unfold Seg34.relationRow4414 at r4414
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4414
  unfold Seg34.relationRow4415 at r4415
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4415
  unfold Seg34.relationRow4416 at r4416
  unfold Seg34.relationRow4417 at r4417
  unfold Seg34.relationRow4418 at r4418
  unfold Seg34.relationRow4419 at r4419
  unfold Seg34.relationRow4420 at r4420
  have hrung111 (bit : Bool) (hbit : rho 34103 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX111 rho : Seg34.F), (seg34AccY111 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35678 : Seg34.F), (rho 35679 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX111 rho : Seg34.F), (seg34AccY111 rho : Seg34.F)⟩
        ⟨(rho 35678 : Seg34.F), (rho 35679 : Seg34.F)⟩
        ⟨(seg34AccX112 rho : Seg34.F), (seg34AccY112 rho : Seg34.F)⟩
        ⟨(rho 35691 : Seg34.F), (rho 35692 : Seg34.F)⟩ := by
    have hnextx : seg34AccX112 rho = seg34AccX111 rho + rho 35686 := by
      unfold seg34AccX112 seg34AccX111
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 111]
      ring
    have hnexty : seg34AccY112 rho = seg34AccY111 rho + rho 35687 := by
      unfold seg34AccY112 seg34AccY111
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 111]
      ring
    have ha0 : (rho 35678 + rho 35679) * (seg34AccX111 rho + seg34AccY111 rho) = rho 35680 := by
      unfold seg34AccX111 seg34AccY111
      linear_combination r4408
    have ha1 : rho 35679 * seg34AccX111 rho = rho 35681 := by
      unfold seg34AccX111
      linear_combination r4409
    have ha2 : rho 35678 * seg34AccY111 rho = rho 35682 := by
      unfold seg34AccY111
      linear_combination r4410
    have ha3 : 3021 * rho 35681 * rho 35682 = rho 35683 := by
      linear_combination r4411
    have ha4 : rho 35684 * (1 + rho 35683) = rho 35681 + rho 35682 := by
      linear_combination r4412
    have ha5 : rho 35685 * (1 - rho 35683) = rho 35680 - rho 35681 - rho 35682 := by
      linear_combination r4413
    have haddx :
        rho 35684 * (1 + 3021 * (rho 35679 * seg34AccX111 rho) * (rho 35678 * seg34AccY111 rho)) =
          rho 35679 * seg34AccX111 rho + rho 35678 * seg34AccY111 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35685 * (1 - 3021 * (rho 35679 * seg34AccX111 rho) * (rho 35678 * seg34AccY111 rho)) =
          (-1) * (rho 35679 * seg34AccX111 rho) - rho 35678 * seg34AccY111 rho +
            (seg34AccY111 rho - seg34AccX111 rho * (-1)) * (rho 35678 + rho 35679) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35685 * (1 - rho 35683) = rho 35680 - rho 35681 - rho 35682 := ha5
        _ = (-1) * rho 35681 - rho 35682 + (seg34AccY111 rho - seg34AccX111 rho * (-1)) * (rho 35678 + rho 35679) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX112 rho = seg34AccX111 rho - Bool.toZMod bit * (seg34AccX111 rho - rho 35684) := by
      have hd : rho 35686 = Bool.toZMod bit * (rho 35684 - seg34AccX111 rho) := by
        rw [← hbit]
        unfold seg34AccX111
        linear_combination -r4414
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY112 rho = seg34AccY111 rho - Bool.toZMod bit * (seg34AccY111 rho - rho 35685) := by
      have hd : rho 35687 = Bool.toZMod bit * (rho 35685 - seg34AccY111 rho) := by
        rw [← hbit]
        unfold seg34AccY111
        linear_combination -r4415
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35678 * rho 35679 = rho 35688 := by linear_combination r4416
    have hd1 : rho 35678 * rho 35678 = rho 35689 := by linear_combination r4417
    have hd2 : rho 35679 * rho 35679 = rho 35690 := by linear_combination r4418
    have hd3 : rho 35691 * (rho 35679 * rho 35679 + rho 35678 * rho 35678 * (-1)) = 2 * (rho 35678 * rho 35679) := by
      rw [hd0, hd1, hd2]
      linear_combination r4419
    have hd4 : rho 35692 * (2 - (rho 35679 * rho 35679 + rho 35678 * rho 35678 * (-1))) = rho 35679 * rho 35679 - rho 35678 * rho 35678 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4420
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX111 rho : Seg34.F), (seg34AccY111 rho : Seg34.F)⟩
      ⟨(rho 35678 : Seg34.F), (rho 35679 : Seg34.F)⟩
      ⟨(rho 35684 : Seg34.F), (rho 35685 : Seg34.F)⟩
      ⟨(seg34AccX112 rho : Seg34.F), (seg34AccY112 rho : Seg34.F)⟩
      ⟨(rho 35691 : Seg34.F), (rho 35692 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung111

theorem seg34_rows112 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4421 rho ∧ Seg34.relationRow4422 rho ∧ Seg34.relationRow4423 rho ∧ Seg34.relationRow4424 rho ∧ Seg34.relationRow4425 rho ∧ Seg34.relationRow4426 rho ∧ Seg34.relationRow4427 rho ∧ Seg34.relationRow4428 rho ∧ Seg34.relationRow4429 rho ∧ Seg34.relationRow4430 rho ∧ Seg34.relationRow4431 rho ∧ Seg34.relationRow4432 rho ∧ Seg34.relationRow4433 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p55, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4421, r4422, r4423, r4424, r4425, r4426, r4427, r4428, r4429, r4430, r4431, r4432, r4433, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4421, r4422, r4423, r4424, r4425, r4426, r4427, r4428, r4429, r4430, r4431, r4432, r4433⟩

theorem seg34_rung112 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34104 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX112 rho : Seg34.F), (seg34AccY112 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35691 : Seg34.F), (rho 35692 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX112 rho : Seg34.F), (seg34AccY112 rho : Seg34.F)⟩
        ⟨(rho 35691 : Seg34.F), (rho 35692 : Seg34.F)⟩
        ⟨(seg34AccX113 rho : Seg34.F), (seg34AccY113 rho : Seg34.F)⟩
        ⟨(rho 35704 : Seg34.F), (rho 35705 : Seg34.F)⟩ := by
  obtain ⟨r4421, r4422, r4423, r4424, r4425, r4426, r4427, r4428, r4429, r4430, r4431, r4432, r4433⟩ := seg34_rows112 rho h
  unfold Seg34.relationRow4421 at r4421
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4421
  unfold Seg34.relationRow4422 at r4422
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4422
  unfold Seg34.relationRow4423 at r4423
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4423
  unfold Seg34.relationRow4424 at r4424
  unfold Seg34.relationRow4425 at r4425
  unfold Seg34.relationRow4426 at r4426
  unfold Seg34.relationRow4427 at r4427
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4427
  unfold Seg34.relationRow4428 at r4428
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4428
  unfold Seg34.relationRow4429 at r4429
  unfold Seg34.relationRow4430 at r4430
  unfold Seg34.relationRow4431 at r4431
  unfold Seg34.relationRow4432 at r4432
  unfold Seg34.relationRow4433 at r4433
  have hrung112 (bit : Bool) (hbit : rho 34104 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX112 rho : Seg34.F), (seg34AccY112 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35691 : Seg34.F), (rho 35692 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX112 rho : Seg34.F), (seg34AccY112 rho : Seg34.F)⟩
        ⟨(rho 35691 : Seg34.F), (rho 35692 : Seg34.F)⟩
        ⟨(seg34AccX113 rho : Seg34.F), (seg34AccY113 rho : Seg34.F)⟩
        ⟨(rho 35704 : Seg34.F), (rho 35705 : Seg34.F)⟩ := by
    have hnextx : seg34AccX113 rho = seg34AccX112 rho + rho 35699 := by
      unfold seg34AccX113 seg34AccX112
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 112]
      ring
    have hnexty : seg34AccY113 rho = seg34AccY112 rho + rho 35700 := by
      unfold seg34AccY113 seg34AccY112
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 112]
      ring
    have ha0 : (rho 35691 + rho 35692) * (seg34AccX112 rho + seg34AccY112 rho) = rho 35693 := by
      unfold seg34AccX112 seg34AccY112
      linear_combination r4421
    have ha1 : rho 35692 * seg34AccX112 rho = rho 35694 := by
      unfold seg34AccX112
      linear_combination r4422
    have ha2 : rho 35691 * seg34AccY112 rho = rho 35695 := by
      unfold seg34AccY112
      linear_combination r4423
    have ha3 : 3021 * rho 35694 * rho 35695 = rho 35696 := by
      linear_combination r4424
    have ha4 : rho 35697 * (1 + rho 35696) = rho 35694 + rho 35695 := by
      linear_combination r4425
    have ha5 : rho 35698 * (1 - rho 35696) = rho 35693 - rho 35694 - rho 35695 := by
      linear_combination r4426
    have haddx :
        rho 35697 * (1 + 3021 * (rho 35692 * seg34AccX112 rho) * (rho 35691 * seg34AccY112 rho)) =
          rho 35692 * seg34AccX112 rho + rho 35691 * seg34AccY112 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35698 * (1 - 3021 * (rho 35692 * seg34AccX112 rho) * (rho 35691 * seg34AccY112 rho)) =
          (-1) * (rho 35692 * seg34AccX112 rho) - rho 35691 * seg34AccY112 rho +
            (seg34AccY112 rho - seg34AccX112 rho * (-1)) * (rho 35691 + rho 35692) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35698 * (1 - rho 35696) = rho 35693 - rho 35694 - rho 35695 := ha5
        _ = (-1) * rho 35694 - rho 35695 + (seg34AccY112 rho - seg34AccX112 rho * (-1)) * (rho 35691 + rho 35692) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX113 rho = seg34AccX112 rho - Bool.toZMod bit * (seg34AccX112 rho - rho 35697) := by
      have hd : rho 35699 = Bool.toZMod bit * (rho 35697 - seg34AccX112 rho) := by
        rw [← hbit]
        unfold seg34AccX112
        linear_combination -r4427
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY113 rho = seg34AccY112 rho - Bool.toZMod bit * (seg34AccY112 rho - rho 35698) := by
      have hd : rho 35700 = Bool.toZMod bit * (rho 35698 - seg34AccY112 rho) := by
        rw [← hbit]
        unfold seg34AccY112
        linear_combination -r4428
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35691 * rho 35692 = rho 35701 := by linear_combination r4429
    have hd1 : rho 35691 * rho 35691 = rho 35702 := by linear_combination r4430
    have hd2 : rho 35692 * rho 35692 = rho 35703 := by linear_combination r4431
    have hd3 : rho 35704 * (rho 35692 * rho 35692 + rho 35691 * rho 35691 * (-1)) = 2 * (rho 35691 * rho 35692) := by
      rw [hd0, hd1, hd2]
      linear_combination r4432
    have hd4 : rho 35705 * (2 - (rho 35692 * rho 35692 + rho 35691 * rho 35691 * (-1))) = rho 35692 * rho 35692 - rho 35691 * rho 35691 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4433
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX112 rho : Seg34.F), (seg34AccY112 rho : Seg34.F)⟩
      ⟨(rho 35691 : Seg34.F), (rho 35692 : Seg34.F)⟩
      ⟨(rho 35697 : Seg34.F), (rho 35698 : Seg34.F)⟩
      ⟨(seg34AccX113 rho : Seg34.F), (seg34AccY113 rho : Seg34.F)⟩
      ⟨(rho 35704 : Seg34.F), (rho 35705 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung112

theorem seg34_rows113 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4434 rho ∧ Seg34.relationRow4435 rho ∧ Seg34.relationRow4436 rho ∧ Seg34.relationRow4437 rho ∧ Seg34.relationRow4438 rho ∧ Seg34.relationRow4439 rho ∧ Seg34.relationRow4440 rho ∧ Seg34.relationRow4441 rho ∧ Seg34.relationRow4442 rho ∧ Seg34.relationRow4443 rho ∧ Seg34.relationRow4444 rho ∧ Seg34.relationRow4445 rho ∧ Seg34.relationRow4446 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p55, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4434, r4435, r4436, r4437, r4438, r4439, r4440, r4441, r4442, r4443, r4444, r4445, r4446, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4434, r4435, r4436, r4437, r4438, r4439, r4440, r4441, r4442, r4443, r4444, r4445, r4446⟩

theorem seg34_rung113 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34105 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX113 rho : Seg34.F), (seg34AccY113 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35704 : Seg34.F), (rho 35705 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX113 rho : Seg34.F), (seg34AccY113 rho : Seg34.F)⟩
        ⟨(rho 35704 : Seg34.F), (rho 35705 : Seg34.F)⟩
        ⟨(seg34AccX114 rho : Seg34.F), (seg34AccY114 rho : Seg34.F)⟩
        ⟨(rho 35717 : Seg34.F), (rho 35718 : Seg34.F)⟩ := by
  obtain ⟨r4434, r4435, r4436, r4437, r4438, r4439, r4440, r4441, r4442, r4443, r4444, r4445, r4446⟩ := seg34_rows113 rho h
  unfold Seg34.relationRow4434 at r4434
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4434
  unfold Seg34.relationRow4435 at r4435
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4435
  unfold Seg34.relationRow4436 at r4436
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4436
  unfold Seg34.relationRow4437 at r4437
  unfold Seg34.relationRow4438 at r4438
  unfold Seg34.relationRow4439 at r4439
  unfold Seg34.relationRow4440 at r4440
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4440
  unfold Seg34.relationRow4441 at r4441
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4441
  unfold Seg34.relationRow4442 at r4442
  unfold Seg34.relationRow4443 at r4443
  unfold Seg34.relationRow4444 at r4444
  unfold Seg34.relationRow4445 at r4445
  unfold Seg34.relationRow4446 at r4446
  have hrung113 (bit : Bool) (hbit : rho 34105 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX113 rho : Seg34.F), (seg34AccY113 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35704 : Seg34.F), (rho 35705 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX113 rho : Seg34.F), (seg34AccY113 rho : Seg34.F)⟩
        ⟨(rho 35704 : Seg34.F), (rho 35705 : Seg34.F)⟩
        ⟨(seg34AccX114 rho : Seg34.F), (seg34AccY114 rho : Seg34.F)⟩
        ⟨(rho 35717 : Seg34.F), (rho 35718 : Seg34.F)⟩ := by
    have hnextx : seg34AccX114 rho = seg34AccX113 rho + rho 35712 := by
      unfold seg34AccX114 seg34AccX113
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 113]
      ring
    have hnexty : seg34AccY114 rho = seg34AccY113 rho + rho 35713 := by
      unfold seg34AccY114 seg34AccY113
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 113]
      ring
    have ha0 : (rho 35704 + rho 35705) * (seg34AccX113 rho + seg34AccY113 rho) = rho 35706 := by
      unfold seg34AccX113 seg34AccY113
      linear_combination r4434
    have ha1 : rho 35705 * seg34AccX113 rho = rho 35707 := by
      unfold seg34AccX113
      linear_combination r4435
    have ha2 : rho 35704 * seg34AccY113 rho = rho 35708 := by
      unfold seg34AccY113
      linear_combination r4436
    have ha3 : 3021 * rho 35707 * rho 35708 = rho 35709 := by
      linear_combination r4437
    have ha4 : rho 35710 * (1 + rho 35709) = rho 35707 + rho 35708 := by
      linear_combination r4438
    have ha5 : rho 35711 * (1 - rho 35709) = rho 35706 - rho 35707 - rho 35708 := by
      linear_combination r4439
    have haddx :
        rho 35710 * (1 + 3021 * (rho 35705 * seg34AccX113 rho) * (rho 35704 * seg34AccY113 rho)) =
          rho 35705 * seg34AccX113 rho + rho 35704 * seg34AccY113 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35711 * (1 - 3021 * (rho 35705 * seg34AccX113 rho) * (rho 35704 * seg34AccY113 rho)) =
          (-1) * (rho 35705 * seg34AccX113 rho) - rho 35704 * seg34AccY113 rho +
            (seg34AccY113 rho - seg34AccX113 rho * (-1)) * (rho 35704 + rho 35705) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35711 * (1 - rho 35709) = rho 35706 - rho 35707 - rho 35708 := ha5
        _ = (-1) * rho 35707 - rho 35708 + (seg34AccY113 rho - seg34AccX113 rho * (-1)) * (rho 35704 + rho 35705) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX114 rho = seg34AccX113 rho - Bool.toZMod bit * (seg34AccX113 rho - rho 35710) := by
      have hd : rho 35712 = Bool.toZMod bit * (rho 35710 - seg34AccX113 rho) := by
        rw [← hbit]
        unfold seg34AccX113
        linear_combination -r4440
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY114 rho = seg34AccY113 rho - Bool.toZMod bit * (seg34AccY113 rho - rho 35711) := by
      have hd : rho 35713 = Bool.toZMod bit * (rho 35711 - seg34AccY113 rho) := by
        rw [← hbit]
        unfold seg34AccY113
        linear_combination -r4441
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35704 * rho 35705 = rho 35714 := by linear_combination r4442
    have hd1 : rho 35704 * rho 35704 = rho 35715 := by linear_combination r4443
    have hd2 : rho 35705 * rho 35705 = rho 35716 := by linear_combination r4444
    have hd3 : rho 35717 * (rho 35705 * rho 35705 + rho 35704 * rho 35704 * (-1)) = 2 * (rho 35704 * rho 35705) := by
      rw [hd0, hd1, hd2]
      linear_combination r4445
    have hd4 : rho 35718 * (2 - (rho 35705 * rho 35705 + rho 35704 * rho 35704 * (-1))) = rho 35705 * rho 35705 - rho 35704 * rho 35704 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4446
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX113 rho : Seg34.F), (seg34AccY113 rho : Seg34.F)⟩
      ⟨(rho 35704 : Seg34.F), (rho 35705 : Seg34.F)⟩
      ⟨(rho 35710 : Seg34.F), (rho 35711 : Seg34.F)⟩
      ⟨(seg34AccX114 rho : Seg34.F), (seg34AccY114 rho : Seg34.F)⟩
      ⟨(rho 35717 : Seg34.F), (rho 35718 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung113

theorem seg34_rows114 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4447 rho ∧ Seg34.relationRow4448 rho ∧ Seg34.relationRow4449 rho ∧ Seg34.relationRow4450 rho ∧ Seg34.relationRow4451 rho ∧ Seg34.relationRow4452 rho ∧ Seg34.relationRow4453 rho ∧ Seg34.relationRow4454 rho ∧ Seg34.relationRow4455 rho ∧ Seg34.relationRow4456 rho ∧ Seg34.relationRow4457 rho ∧ Seg34.relationRow4458 rho ∧ Seg34.relationRow4459 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p55, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4447, r4448, r4449, r4450, r4451, r4452, r4453, r4454, r4455, r4456, r4457, r4458, r4459, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4447, r4448, r4449, r4450, r4451, r4452, r4453, r4454, r4455, r4456, r4457, r4458, r4459⟩

theorem seg34_rung114 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34106 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX114 rho : Seg34.F), (seg34AccY114 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35717 : Seg34.F), (rho 35718 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX114 rho : Seg34.F), (seg34AccY114 rho : Seg34.F)⟩
        ⟨(rho 35717 : Seg34.F), (rho 35718 : Seg34.F)⟩
        ⟨(seg34AccX115 rho : Seg34.F), (seg34AccY115 rho : Seg34.F)⟩
        ⟨(rho 35730 : Seg34.F), (rho 35731 : Seg34.F)⟩ := by
  obtain ⟨r4447, r4448, r4449, r4450, r4451, r4452, r4453, r4454, r4455, r4456, r4457, r4458, r4459⟩ := seg34_rows114 rho h
  unfold Seg34.relationRow4447 at r4447
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4447
  unfold Seg34.relationRow4448 at r4448
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4448
  unfold Seg34.relationRow4449 at r4449
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4449
  unfold Seg34.relationRow4450 at r4450
  unfold Seg34.relationRow4451 at r4451
  unfold Seg34.relationRow4452 at r4452
  unfold Seg34.relationRow4453 at r4453
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4453
  unfold Seg34.relationRow4454 at r4454
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4454
  unfold Seg34.relationRow4455 at r4455
  unfold Seg34.relationRow4456 at r4456
  unfold Seg34.relationRow4457 at r4457
  unfold Seg34.relationRow4458 at r4458
  unfold Seg34.relationRow4459 at r4459
  have hrung114 (bit : Bool) (hbit : rho 34106 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX114 rho : Seg34.F), (seg34AccY114 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35717 : Seg34.F), (rho 35718 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX114 rho : Seg34.F), (seg34AccY114 rho : Seg34.F)⟩
        ⟨(rho 35717 : Seg34.F), (rho 35718 : Seg34.F)⟩
        ⟨(seg34AccX115 rho : Seg34.F), (seg34AccY115 rho : Seg34.F)⟩
        ⟨(rho 35730 : Seg34.F), (rho 35731 : Seg34.F)⟩ := by
    have hnextx : seg34AccX115 rho = seg34AccX114 rho + rho 35725 := by
      unfold seg34AccX115 seg34AccX114
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 114]
      ring
    have hnexty : seg34AccY115 rho = seg34AccY114 rho + rho 35726 := by
      unfold seg34AccY115 seg34AccY114
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 114]
      ring
    have ha0 : (rho 35717 + rho 35718) * (seg34AccX114 rho + seg34AccY114 rho) = rho 35719 := by
      unfold seg34AccX114 seg34AccY114
      linear_combination r4447
    have ha1 : rho 35718 * seg34AccX114 rho = rho 35720 := by
      unfold seg34AccX114
      linear_combination r4448
    have ha2 : rho 35717 * seg34AccY114 rho = rho 35721 := by
      unfold seg34AccY114
      linear_combination r4449
    have ha3 : 3021 * rho 35720 * rho 35721 = rho 35722 := by
      linear_combination r4450
    have ha4 : rho 35723 * (1 + rho 35722) = rho 35720 + rho 35721 := by
      linear_combination r4451
    have ha5 : rho 35724 * (1 - rho 35722) = rho 35719 - rho 35720 - rho 35721 := by
      linear_combination r4452
    have haddx :
        rho 35723 * (1 + 3021 * (rho 35718 * seg34AccX114 rho) * (rho 35717 * seg34AccY114 rho)) =
          rho 35718 * seg34AccX114 rho + rho 35717 * seg34AccY114 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35724 * (1 - 3021 * (rho 35718 * seg34AccX114 rho) * (rho 35717 * seg34AccY114 rho)) =
          (-1) * (rho 35718 * seg34AccX114 rho) - rho 35717 * seg34AccY114 rho +
            (seg34AccY114 rho - seg34AccX114 rho * (-1)) * (rho 35717 + rho 35718) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35724 * (1 - rho 35722) = rho 35719 - rho 35720 - rho 35721 := ha5
        _ = (-1) * rho 35720 - rho 35721 + (seg34AccY114 rho - seg34AccX114 rho * (-1)) * (rho 35717 + rho 35718) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX115 rho = seg34AccX114 rho - Bool.toZMod bit * (seg34AccX114 rho - rho 35723) := by
      have hd : rho 35725 = Bool.toZMod bit * (rho 35723 - seg34AccX114 rho) := by
        rw [← hbit]
        unfold seg34AccX114
        linear_combination -r4453
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY115 rho = seg34AccY114 rho - Bool.toZMod bit * (seg34AccY114 rho - rho 35724) := by
      have hd : rho 35726 = Bool.toZMod bit * (rho 35724 - seg34AccY114 rho) := by
        rw [← hbit]
        unfold seg34AccY114
        linear_combination -r4454
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35717 * rho 35718 = rho 35727 := by linear_combination r4455
    have hd1 : rho 35717 * rho 35717 = rho 35728 := by linear_combination r4456
    have hd2 : rho 35718 * rho 35718 = rho 35729 := by linear_combination r4457
    have hd3 : rho 35730 * (rho 35718 * rho 35718 + rho 35717 * rho 35717 * (-1)) = 2 * (rho 35717 * rho 35718) := by
      rw [hd0, hd1, hd2]
      linear_combination r4458
    have hd4 : rho 35731 * (2 - (rho 35718 * rho 35718 + rho 35717 * rho 35717 * (-1))) = rho 35718 * rho 35718 - rho 35717 * rho 35717 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4459
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX114 rho : Seg34.F), (seg34AccY114 rho : Seg34.F)⟩
      ⟨(rho 35717 : Seg34.F), (rho 35718 : Seg34.F)⟩
      ⟨(rho 35723 : Seg34.F), (rho 35724 : Seg34.F)⟩
      ⟨(seg34AccX115 rho : Seg34.F), (seg34AccY115 rho : Seg34.F)⟩
      ⟨(rho 35730 : Seg34.F), (rho 35731 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung114

theorem seg34_rows115 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4460 rho ∧ Seg34.relationRow4461 rho ∧ Seg34.relationRow4462 rho ∧ Seg34.relationRow4463 rho ∧ Seg34.relationRow4464 rho ∧ Seg34.relationRow4465 rho ∧ Seg34.relationRow4466 rho ∧ Seg34.relationRow4467 rho ∧ Seg34.relationRow4468 rho ∧ Seg34.relationRow4469 rho ∧ Seg34.relationRow4470 rho ∧ Seg34.relationRow4471 rho ∧ Seg34.relationRow4472 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p55, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4460, r4461, r4462, r4463, r4464, r4465, r4466, r4467, r4468, r4469, r4470, r4471, r4472, _, _, _, _, _, _, _⟩
  exact ⟨r4460, r4461, r4462, r4463, r4464, r4465, r4466, r4467, r4468, r4469, r4470, r4471, r4472⟩

theorem seg34_rung115 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34107 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX115 rho : Seg34.F), (seg34AccY115 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35730 : Seg34.F), (rho 35731 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX115 rho : Seg34.F), (seg34AccY115 rho : Seg34.F)⟩
        ⟨(rho 35730 : Seg34.F), (rho 35731 : Seg34.F)⟩
        ⟨(seg34AccX116 rho : Seg34.F), (seg34AccY116 rho : Seg34.F)⟩
        ⟨(rho 35743 : Seg34.F), (rho 35744 : Seg34.F)⟩ := by
  obtain ⟨r4460, r4461, r4462, r4463, r4464, r4465, r4466, r4467, r4468, r4469, r4470, r4471, r4472⟩ := seg34_rows115 rho h
  unfold Seg34.relationRow4460 at r4460
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4460
  unfold Seg34.relationRow4461 at r4461
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4461
  unfold Seg34.relationRow4462 at r4462
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4462
  unfold Seg34.relationRow4463 at r4463
  unfold Seg34.relationRow4464 at r4464
  unfold Seg34.relationRow4465 at r4465
  unfold Seg34.relationRow4466 at r4466
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4466
  unfold Seg34.relationRow4467 at r4467
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4467
  unfold Seg34.relationRow4468 at r4468
  unfold Seg34.relationRow4469 at r4469
  unfold Seg34.relationRow4470 at r4470
  unfold Seg34.relationRow4471 at r4471
  unfold Seg34.relationRow4472 at r4472
  have hrung115 (bit : Bool) (hbit : rho 34107 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX115 rho : Seg34.F), (seg34AccY115 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35730 : Seg34.F), (rho 35731 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX115 rho : Seg34.F), (seg34AccY115 rho : Seg34.F)⟩
        ⟨(rho 35730 : Seg34.F), (rho 35731 : Seg34.F)⟩
        ⟨(seg34AccX116 rho : Seg34.F), (seg34AccY116 rho : Seg34.F)⟩
        ⟨(rho 35743 : Seg34.F), (rho 35744 : Seg34.F)⟩ := by
    have hnextx : seg34AccX116 rho = seg34AccX115 rho + rho 35738 := by
      unfold seg34AccX116 seg34AccX115
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 115]
      ring
    have hnexty : seg34AccY116 rho = seg34AccY115 rho + rho 35739 := by
      unfold seg34AccY116 seg34AccY115
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 115]
      ring
    have ha0 : (rho 35730 + rho 35731) * (seg34AccX115 rho + seg34AccY115 rho) = rho 35732 := by
      unfold seg34AccX115 seg34AccY115
      linear_combination r4460
    have ha1 : rho 35731 * seg34AccX115 rho = rho 35733 := by
      unfold seg34AccX115
      linear_combination r4461
    have ha2 : rho 35730 * seg34AccY115 rho = rho 35734 := by
      unfold seg34AccY115
      linear_combination r4462
    have ha3 : 3021 * rho 35733 * rho 35734 = rho 35735 := by
      linear_combination r4463
    have ha4 : rho 35736 * (1 + rho 35735) = rho 35733 + rho 35734 := by
      linear_combination r4464
    have ha5 : rho 35737 * (1 - rho 35735) = rho 35732 - rho 35733 - rho 35734 := by
      linear_combination r4465
    have haddx :
        rho 35736 * (1 + 3021 * (rho 35731 * seg34AccX115 rho) * (rho 35730 * seg34AccY115 rho)) =
          rho 35731 * seg34AccX115 rho + rho 35730 * seg34AccY115 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35737 * (1 - 3021 * (rho 35731 * seg34AccX115 rho) * (rho 35730 * seg34AccY115 rho)) =
          (-1) * (rho 35731 * seg34AccX115 rho) - rho 35730 * seg34AccY115 rho +
            (seg34AccY115 rho - seg34AccX115 rho * (-1)) * (rho 35730 + rho 35731) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35737 * (1 - rho 35735) = rho 35732 - rho 35733 - rho 35734 := ha5
        _ = (-1) * rho 35733 - rho 35734 + (seg34AccY115 rho - seg34AccX115 rho * (-1)) * (rho 35730 + rho 35731) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX116 rho = seg34AccX115 rho - Bool.toZMod bit * (seg34AccX115 rho - rho 35736) := by
      have hd : rho 35738 = Bool.toZMod bit * (rho 35736 - seg34AccX115 rho) := by
        rw [← hbit]
        unfold seg34AccX115
        linear_combination -r4466
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY116 rho = seg34AccY115 rho - Bool.toZMod bit * (seg34AccY115 rho - rho 35737) := by
      have hd : rho 35739 = Bool.toZMod bit * (rho 35737 - seg34AccY115 rho) := by
        rw [← hbit]
        unfold seg34AccY115
        linear_combination -r4467
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35730 * rho 35731 = rho 35740 := by linear_combination r4468
    have hd1 : rho 35730 * rho 35730 = rho 35741 := by linear_combination r4469
    have hd2 : rho 35731 * rho 35731 = rho 35742 := by linear_combination r4470
    have hd3 : rho 35743 * (rho 35731 * rho 35731 + rho 35730 * rho 35730 * (-1)) = 2 * (rho 35730 * rho 35731) := by
      rw [hd0, hd1, hd2]
      linear_combination r4471
    have hd4 : rho 35744 * (2 - (rho 35731 * rho 35731 + rho 35730 * rho 35730 * (-1))) = rho 35731 * rho 35731 - rho 35730 * rho 35730 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4472
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX115 rho : Seg34.F), (seg34AccY115 rho : Seg34.F)⟩
      ⟨(rho 35730 : Seg34.F), (rho 35731 : Seg34.F)⟩
      ⟨(rho 35736 : Seg34.F), (rho 35737 : Seg34.F)⟩
      ⟨(seg34AccX116 rho : Seg34.F), (seg34AccY116 rho : Seg34.F)⟩
      ⟨(rho 35743 : Seg34.F), (rho 35744 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung115

theorem seg34_rows116 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4473 rho ∧ Seg34.relationRow4474 rho ∧ Seg34.relationRow4475 rho ∧ Seg34.relationRow4476 rho ∧ Seg34.relationRow4477 rho ∧ Seg34.relationRow4478 rho ∧ Seg34.relationRow4479 rho ∧ Seg34.relationRow4480 rho ∧ Seg34.relationRow4481 rho ∧ Seg34.relationRow4482 rho ∧ Seg34.relationRow4483 rho ∧ Seg34.relationRow4484 rho ∧ Seg34.relationRow4485 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p55, p56, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4473, r4474, r4475, r4476, r4477, r4478, r4479⟩
  unfold Seg34.relationPart56 at p56
  rcases p56 with ⟨r4480, r4481, r4482, r4483, r4484, r4485, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4473, r4474, r4475, r4476, r4477, r4478, r4479, r4480, r4481, r4482, r4483, r4484, r4485⟩

theorem seg34_rung116 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34108 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX116 rho : Seg34.F), (seg34AccY116 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35743 : Seg34.F), (rho 35744 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX116 rho : Seg34.F), (seg34AccY116 rho : Seg34.F)⟩
        ⟨(rho 35743 : Seg34.F), (rho 35744 : Seg34.F)⟩
        ⟨(seg34AccX117 rho : Seg34.F), (seg34AccY117 rho : Seg34.F)⟩
        ⟨(rho 35756 : Seg34.F), (rho 35757 : Seg34.F)⟩ := by
  obtain ⟨r4473, r4474, r4475, r4476, r4477, r4478, r4479, r4480, r4481, r4482, r4483, r4484, r4485⟩ := seg34_rows116 rho h
  unfold Seg34.relationRow4473 at r4473
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4473
  unfold Seg34.relationRow4474 at r4474
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4474
  unfold Seg34.relationRow4475 at r4475
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4475
  unfold Seg34.relationRow4476 at r4476
  unfold Seg34.relationRow4477 at r4477
  unfold Seg34.relationRow4478 at r4478
  unfold Seg34.relationRow4479 at r4479
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4479
  unfold Seg34.relationRow4480 at r4480
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4480
  unfold Seg34.relationRow4481 at r4481
  unfold Seg34.relationRow4482 at r4482
  unfold Seg34.relationRow4483 at r4483
  unfold Seg34.relationRow4484 at r4484
  unfold Seg34.relationRow4485 at r4485
  have hrung116 (bit : Bool) (hbit : rho 34108 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX116 rho : Seg34.F), (seg34AccY116 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35743 : Seg34.F), (rho 35744 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX116 rho : Seg34.F), (seg34AccY116 rho : Seg34.F)⟩
        ⟨(rho 35743 : Seg34.F), (rho 35744 : Seg34.F)⟩
        ⟨(seg34AccX117 rho : Seg34.F), (seg34AccY117 rho : Seg34.F)⟩
        ⟨(rho 35756 : Seg34.F), (rho 35757 : Seg34.F)⟩ := by
    have hnextx : seg34AccX117 rho = seg34AccX116 rho + rho 35751 := by
      unfold seg34AccX117 seg34AccX116
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 116]
      ring
    have hnexty : seg34AccY117 rho = seg34AccY116 rho + rho 35752 := by
      unfold seg34AccY117 seg34AccY116
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 116]
      ring
    have ha0 : (rho 35743 + rho 35744) * (seg34AccX116 rho + seg34AccY116 rho) = rho 35745 := by
      unfold seg34AccX116 seg34AccY116
      linear_combination r4473
    have ha1 : rho 35744 * seg34AccX116 rho = rho 35746 := by
      unfold seg34AccX116
      linear_combination r4474
    have ha2 : rho 35743 * seg34AccY116 rho = rho 35747 := by
      unfold seg34AccY116
      linear_combination r4475
    have ha3 : 3021 * rho 35746 * rho 35747 = rho 35748 := by
      linear_combination r4476
    have ha4 : rho 35749 * (1 + rho 35748) = rho 35746 + rho 35747 := by
      linear_combination r4477
    have ha5 : rho 35750 * (1 - rho 35748) = rho 35745 - rho 35746 - rho 35747 := by
      linear_combination r4478
    have haddx :
        rho 35749 * (1 + 3021 * (rho 35744 * seg34AccX116 rho) * (rho 35743 * seg34AccY116 rho)) =
          rho 35744 * seg34AccX116 rho + rho 35743 * seg34AccY116 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35750 * (1 - 3021 * (rho 35744 * seg34AccX116 rho) * (rho 35743 * seg34AccY116 rho)) =
          (-1) * (rho 35744 * seg34AccX116 rho) - rho 35743 * seg34AccY116 rho +
            (seg34AccY116 rho - seg34AccX116 rho * (-1)) * (rho 35743 + rho 35744) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35750 * (1 - rho 35748) = rho 35745 - rho 35746 - rho 35747 := ha5
        _ = (-1) * rho 35746 - rho 35747 + (seg34AccY116 rho - seg34AccX116 rho * (-1)) * (rho 35743 + rho 35744) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX117 rho = seg34AccX116 rho - Bool.toZMod bit * (seg34AccX116 rho - rho 35749) := by
      have hd : rho 35751 = Bool.toZMod bit * (rho 35749 - seg34AccX116 rho) := by
        rw [← hbit]
        unfold seg34AccX116
        linear_combination -r4479
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY117 rho = seg34AccY116 rho - Bool.toZMod bit * (seg34AccY116 rho - rho 35750) := by
      have hd : rho 35752 = Bool.toZMod bit * (rho 35750 - seg34AccY116 rho) := by
        rw [← hbit]
        unfold seg34AccY116
        linear_combination -r4480
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35743 * rho 35744 = rho 35753 := by linear_combination r4481
    have hd1 : rho 35743 * rho 35743 = rho 35754 := by linear_combination r4482
    have hd2 : rho 35744 * rho 35744 = rho 35755 := by linear_combination r4483
    have hd3 : rho 35756 * (rho 35744 * rho 35744 + rho 35743 * rho 35743 * (-1)) = 2 * (rho 35743 * rho 35744) := by
      rw [hd0, hd1, hd2]
      linear_combination r4484
    have hd4 : rho 35757 * (2 - (rho 35744 * rho 35744 + rho 35743 * rho 35743 * (-1))) = rho 35744 * rho 35744 - rho 35743 * rho 35743 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4485
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX116 rho : Seg34.F), (seg34AccY116 rho : Seg34.F)⟩
      ⟨(rho 35743 : Seg34.F), (rho 35744 : Seg34.F)⟩
      ⟨(rho 35749 : Seg34.F), (rho 35750 : Seg34.F)⟩
      ⟨(seg34AccX117 rho : Seg34.F), (seg34AccY117 rho : Seg34.F)⟩
      ⟨(rho 35756 : Seg34.F), (rho 35757 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung116

theorem seg34_rows117 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4486 rho ∧ Seg34.relationRow4487 rho ∧ Seg34.relationRow4488 rho ∧ Seg34.relationRow4489 rho ∧ Seg34.relationRow4490 rho ∧ Seg34.relationRow4491 rho ∧ Seg34.relationRow4492 rho ∧ Seg34.relationRow4493 rho ∧ Seg34.relationRow4494 rho ∧ Seg34.relationRow4495 rho ∧ Seg34.relationRow4496 rho ∧ Seg34.relationRow4497 rho ∧ Seg34.relationRow4498 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p56, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, r4486, r4487, r4488, r4489, r4490, r4491, r4492, r4493, r4494, r4495, r4496, r4497, r4498, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4486, r4487, r4488, r4489, r4490, r4491, r4492, r4493, r4494, r4495, r4496, r4497, r4498⟩

theorem seg34_rung117 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34109 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX117 rho : Seg34.F), (seg34AccY117 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35756 : Seg34.F), (rho 35757 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX117 rho : Seg34.F), (seg34AccY117 rho : Seg34.F)⟩
        ⟨(rho 35756 : Seg34.F), (rho 35757 : Seg34.F)⟩
        ⟨(seg34AccX118 rho : Seg34.F), (seg34AccY118 rho : Seg34.F)⟩
        ⟨(rho 35769 : Seg34.F), (rho 35770 : Seg34.F)⟩ := by
  obtain ⟨r4486, r4487, r4488, r4489, r4490, r4491, r4492, r4493, r4494, r4495, r4496, r4497, r4498⟩ := seg34_rows117 rho h
  unfold Seg34.relationRow4486 at r4486
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4486
  unfold Seg34.relationRow4487 at r4487
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4487
  unfold Seg34.relationRow4488 at r4488
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4488
  unfold Seg34.relationRow4489 at r4489
  unfold Seg34.relationRow4490 at r4490
  unfold Seg34.relationRow4491 at r4491
  unfold Seg34.relationRow4492 at r4492
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4492
  unfold Seg34.relationRow4493 at r4493
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4493
  unfold Seg34.relationRow4494 at r4494
  unfold Seg34.relationRow4495 at r4495
  unfold Seg34.relationRow4496 at r4496
  unfold Seg34.relationRow4497 at r4497
  unfold Seg34.relationRow4498 at r4498
  have hrung117 (bit : Bool) (hbit : rho 34109 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX117 rho : Seg34.F), (seg34AccY117 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35756 : Seg34.F), (rho 35757 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX117 rho : Seg34.F), (seg34AccY117 rho : Seg34.F)⟩
        ⟨(rho 35756 : Seg34.F), (rho 35757 : Seg34.F)⟩
        ⟨(seg34AccX118 rho : Seg34.F), (seg34AccY118 rho : Seg34.F)⟩
        ⟨(rho 35769 : Seg34.F), (rho 35770 : Seg34.F)⟩ := by
    have hnextx : seg34AccX118 rho = seg34AccX117 rho + rho 35764 := by
      unfold seg34AccX118 seg34AccX117
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 117]
      ring
    have hnexty : seg34AccY118 rho = seg34AccY117 rho + rho 35765 := by
      unfold seg34AccY118 seg34AccY117
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 117]
      ring
    have ha0 : (rho 35756 + rho 35757) * (seg34AccX117 rho + seg34AccY117 rho) = rho 35758 := by
      unfold seg34AccX117 seg34AccY117
      linear_combination r4486
    have ha1 : rho 35757 * seg34AccX117 rho = rho 35759 := by
      unfold seg34AccX117
      linear_combination r4487
    have ha2 : rho 35756 * seg34AccY117 rho = rho 35760 := by
      unfold seg34AccY117
      linear_combination r4488
    have ha3 : 3021 * rho 35759 * rho 35760 = rho 35761 := by
      linear_combination r4489
    have ha4 : rho 35762 * (1 + rho 35761) = rho 35759 + rho 35760 := by
      linear_combination r4490
    have ha5 : rho 35763 * (1 - rho 35761) = rho 35758 - rho 35759 - rho 35760 := by
      linear_combination r4491
    have haddx :
        rho 35762 * (1 + 3021 * (rho 35757 * seg34AccX117 rho) * (rho 35756 * seg34AccY117 rho)) =
          rho 35757 * seg34AccX117 rho + rho 35756 * seg34AccY117 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35763 * (1 - 3021 * (rho 35757 * seg34AccX117 rho) * (rho 35756 * seg34AccY117 rho)) =
          (-1) * (rho 35757 * seg34AccX117 rho) - rho 35756 * seg34AccY117 rho +
            (seg34AccY117 rho - seg34AccX117 rho * (-1)) * (rho 35756 + rho 35757) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35763 * (1 - rho 35761) = rho 35758 - rho 35759 - rho 35760 := ha5
        _ = (-1) * rho 35759 - rho 35760 + (seg34AccY117 rho - seg34AccX117 rho * (-1)) * (rho 35756 + rho 35757) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX118 rho = seg34AccX117 rho - Bool.toZMod bit * (seg34AccX117 rho - rho 35762) := by
      have hd : rho 35764 = Bool.toZMod bit * (rho 35762 - seg34AccX117 rho) := by
        rw [← hbit]
        unfold seg34AccX117
        linear_combination -r4492
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY118 rho = seg34AccY117 rho - Bool.toZMod bit * (seg34AccY117 rho - rho 35763) := by
      have hd : rho 35765 = Bool.toZMod bit * (rho 35763 - seg34AccY117 rho) := by
        rw [← hbit]
        unfold seg34AccY117
        linear_combination -r4493
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35756 * rho 35757 = rho 35766 := by linear_combination r4494
    have hd1 : rho 35756 * rho 35756 = rho 35767 := by linear_combination r4495
    have hd2 : rho 35757 * rho 35757 = rho 35768 := by linear_combination r4496
    have hd3 : rho 35769 * (rho 35757 * rho 35757 + rho 35756 * rho 35756 * (-1)) = 2 * (rho 35756 * rho 35757) := by
      rw [hd0, hd1, hd2]
      linear_combination r4497
    have hd4 : rho 35770 * (2 - (rho 35757 * rho 35757 + rho 35756 * rho 35756 * (-1))) = rho 35757 * rho 35757 - rho 35756 * rho 35756 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4498
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX117 rho : Seg34.F), (seg34AccY117 rho : Seg34.F)⟩
      ⟨(rho 35756 : Seg34.F), (rho 35757 : Seg34.F)⟩
      ⟨(rho 35762 : Seg34.F), (rho 35763 : Seg34.F)⟩
      ⟨(seg34AccX118 rho : Seg34.F), (seg34AccY118 rho : Seg34.F)⟩
      ⟨(rho 35769 : Seg34.F), (rho 35770 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung117

theorem seg34_rows118 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4499 rho ∧ Seg34.relationRow4500 rho ∧ Seg34.relationRow4501 rho ∧ Seg34.relationRow4502 rho ∧ Seg34.relationRow4503 rho ∧ Seg34.relationRow4504 rho ∧ Seg34.relationRow4505 rho ∧ Seg34.relationRow4506 rho ∧ Seg34.relationRow4507 rho ∧ Seg34.relationRow4508 rho ∧ Seg34.relationRow4509 rho ∧ Seg34.relationRow4510 rho ∧ Seg34.relationRow4511 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p56, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4499, r4500, r4501, r4502, r4503, r4504, r4505, r4506, r4507, r4508, r4509, r4510, r4511, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4499, r4500, r4501, r4502, r4503, r4504, r4505, r4506, r4507, r4508, r4509, r4510, r4511⟩

theorem seg34_rung118 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34110 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX118 rho : Seg34.F), (seg34AccY118 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35769 : Seg34.F), (rho 35770 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX118 rho : Seg34.F), (seg34AccY118 rho : Seg34.F)⟩
        ⟨(rho 35769 : Seg34.F), (rho 35770 : Seg34.F)⟩
        ⟨(seg34AccX119 rho : Seg34.F), (seg34AccY119 rho : Seg34.F)⟩
        ⟨(rho 35782 : Seg34.F), (rho 35783 : Seg34.F)⟩ := by
  obtain ⟨r4499, r4500, r4501, r4502, r4503, r4504, r4505, r4506, r4507, r4508, r4509, r4510, r4511⟩ := seg34_rows118 rho h
  unfold Seg34.relationRow4499 at r4499
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4499
  unfold Seg34.relationRow4500 at r4500
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4500
  unfold Seg34.relationRow4501 at r4501
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4501
  unfold Seg34.relationRow4502 at r4502
  unfold Seg34.relationRow4503 at r4503
  unfold Seg34.relationRow4504 at r4504
  unfold Seg34.relationRow4505 at r4505
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4505
  unfold Seg34.relationRow4506 at r4506
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4506
  unfold Seg34.relationRow4507 at r4507
  unfold Seg34.relationRow4508 at r4508
  unfold Seg34.relationRow4509 at r4509
  unfold Seg34.relationRow4510 at r4510
  unfold Seg34.relationRow4511 at r4511
  have hrung118 (bit : Bool) (hbit : rho 34110 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX118 rho : Seg34.F), (seg34AccY118 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35769 : Seg34.F), (rho 35770 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX118 rho : Seg34.F), (seg34AccY118 rho : Seg34.F)⟩
        ⟨(rho 35769 : Seg34.F), (rho 35770 : Seg34.F)⟩
        ⟨(seg34AccX119 rho : Seg34.F), (seg34AccY119 rho : Seg34.F)⟩
        ⟨(rho 35782 : Seg34.F), (rho 35783 : Seg34.F)⟩ := by
    have hnextx : seg34AccX119 rho = seg34AccX118 rho + rho 35777 := by
      unfold seg34AccX119 seg34AccX118
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 118]
      ring
    have hnexty : seg34AccY119 rho = seg34AccY118 rho + rho 35778 := by
      unfold seg34AccY119 seg34AccY118
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 118]
      ring
    have ha0 : (rho 35769 + rho 35770) * (seg34AccX118 rho + seg34AccY118 rho) = rho 35771 := by
      unfold seg34AccX118 seg34AccY118
      linear_combination r4499
    have ha1 : rho 35770 * seg34AccX118 rho = rho 35772 := by
      unfold seg34AccX118
      linear_combination r4500
    have ha2 : rho 35769 * seg34AccY118 rho = rho 35773 := by
      unfold seg34AccY118
      linear_combination r4501
    have ha3 : 3021 * rho 35772 * rho 35773 = rho 35774 := by
      linear_combination r4502
    have ha4 : rho 35775 * (1 + rho 35774) = rho 35772 + rho 35773 := by
      linear_combination r4503
    have ha5 : rho 35776 * (1 - rho 35774) = rho 35771 - rho 35772 - rho 35773 := by
      linear_combination r4504
    have haddx :
        rho 35775 * (1 + 3021 * (rho 35770 * seg34AccX118 rho) * (rho 35769 * seg34AccY118 rho)) =
          rho 35770 * seg34AccX118 rho + rho 35769 * seg34AccY118 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35776 * (1 - 3021 * (rho 35770 * seg34AccX118 rho) * (rho 35769 * seg34AccY118 rho)) =
          (-1) * (rho 35770 * seg34AccX118 rho) - rho 35769 * seg34AccY118 rho +
            (seg34AccY118 rho - seg34AccX118 rho * (-1)) * (rho 35769 + rho 35770) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35776 * (1 - rho 35774) = rho 35771 - rho 35772 - rho 35773 := ha5
        _ = (-1) * rho 35772 - rho 35773 + (seg34AccY118 rho - seg34AccX118 rho * (-1)) * (rho 35769 + rho 35770) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX119 rho = seg34AccX118 rho - Bool.toZMod bit * (seg34AccX118 rho - rho 35775) := by
      have hd : rho 35777 = Bool.toZMod bit * (rho 35775 - seg34AccX118 rho) := by
        rw [← hbit]
        unfold seg34AccX118
        linear_combination -r4505
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY119 rho = seg34AccY118 rho - Bool.toZMod bit * (seg34AccY118 rho - rho 35776) := by
      have hd : rho 35778 = Bool.toZMod bit * (rho 35776 - seg34AccY118 rho) := by
        rw [← hbit]
        unfold seg34AccY118
        linear_combination -r4506
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35769 * rho 35770 = rho 35779 := by linear_combination r4507
    have hd1 : rho 35769 * rho 35769 = rho 35780 := by linear_combination r4508
    have hd2 : rho 35770 * rho 35770 = rho 35781 := by linear_combination r4509
    have hd3 : rho 35782 * (rho 35770 * rho 35770 + rho 35769 * rho 35769 * (-1)) = 2 * (rho 35769 * rho 35770) := by
      rw [hd0, hd1, hd2]
      linear_combination r4510
    have hd4 : rho 35783 * (2 - (rho 35770 * rho 35770 + rho 35769 * rho 35769 * (-1))) = rho 35770 * rho 35770 - rho 35769 * rho 35769 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4511
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX118 rho : Seg34.F), (seg34AccY118 rho : Seg34.F)⟩
      ⟨(rho 35769 : Seg34.F), (rho 35770 : Seg34.F)⟩
      ⟨(rho 35775 : Seg34.F), (rho 35776 : Seg34.F)⟩
      ⟨(seg34AccX119 rho : Seg34.F), (seg34AccY119 rho : Seg34.F)⟩
      ⟨(rho 35782 : Seg34.F), (rho 35783 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung118

theorem seg34_rows119 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4512 rho ∧ Seg34.relationRow4513 rho ∧ Seg34.relationRow4514 rho ∧ Seg34.relationRow4515 rho ∧ Seg34.relationRow4516 rho ∧ Seg34.relationRow4517 rho ∧ Seg34.relationRow4518 rho ∧ Seg34.relationRow4519 rho ∧ Seg34.relationRow4520 rho ∧ Seg34.relationRow4521 rho ∧ Seg34.relationRow4522 rho ∧ Seg34.relationRow4523 rho ∧ Seg34.relationRow4524 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p56, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4512, r4513, r4514, r4515, r4516, r4517, r4518, r4519, r4520, r4521, r4522, r4523, r4524, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4512, r4513, r4514, r4515, r4516, r4517, r4518, r4519, r4520, r4521, r4522, r4523, r4524⟩

theorem seg34_rung119 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34111 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX119 rho : Seg34.F), (seg34AccY119 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35782 : Seg34.F), (rho 35783 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX119 rho : Seg34.F), (seg34AccY119 rho : Seg34.F)⟩
        ⟨(rho 35782 : Seg34.F), (rho 35783 : Seg34.F)⟩
        ⟨(seg34AccX120 rho : Seg34.F), (seg34AccY120 rho : Seg34.F)⟩
        ⟨(rho 35795 : Seg34.F), (rho 35796 : Seg34.F)⟩ := by
  obtain ⟨r4512, r4513, r4514, r4515, r4516, r4517, r4518, r4519, r4520, r4521, r4522, r4523, r4524⟩ := seg34_rows119 rho h
  unfold Seg34.relationRow4512 at r4512
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4512
  unfold Seg34.relationRow4513 at r4513
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4513
  unfold Seg34.relationRow4514 at r4514
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4514
  unfold Seg34.relationRow4515 at r4515
  unfold Seg34.relationRow4516 at r4516
  unfold Seg34.relationRow4517 at r4517
  unfold Seg34.relationRow4518 at r4518
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4518
  unfold Seg34.relationRow4519 at r4519
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4519
  unfold Seg34.relationRow4520 at r4520
  unfold Seg34.relationRow4521 at r4521
  unfold Seg34.relationRow4522 at r4522
  unfold Seg34.relationRow4523 at r4523
  unfold Seg34.relationRow4524 at r4524
  have hrung119 (bit : Bool) (hbit : rho 34111 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX119 rho : Seg34.F), (seg34AccY119 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35782 : Seg34.F), (rho 35783 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX119 rho : Seg34.F), (seg34AccY119 rho : Seg34.F)⟩
        ⟨(rho 35782 : Seg34.F), (rho 35783 : Seg34.F)⟩
        ⟨(seg34AccX120 rho : Seg34.F), (seg34AccY120 rho : Seg34.F)⟩
        ⟨(rho 35795 : Seg34.F), (rho 35796 : Seg34.F)⟩ := by
    have hnextx : seg34AccX120 rho = seg34AccX119 rho + rho 35790 := by
      unfold seg34AccX120 seg34AccX119
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 119]
      ring
    have hnexty : seg34AccY120 rho = seg34AccY119 rho + rho 35791 := by
      unfold seg34AccY120 seg34AccY119
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 119]
      ring
    have ha0 : (rho 35782 + rho 35783) * (seg34AccX119 rho + seg34AccY119 rho) = rho 35784 := by
      unfold seg34AccX119 seg34AccY119
      linear_combination r4512
    have ha1 : rho 35783 * seg34AccX119 rho = rho 35785 := by
      unfold seg34AccX119
      linear_combination r4513
    have ha2 : rho 35782 * seg34AccY119 rho = rho 35786 := by
      unfold seg34AccY119
      linear_combination r4514
    have ha3 : 3021 * rho 35785 * rho 35786 = rho 35787 := by
      linear_combination r4515
    have ha4 : rho 35788 * (1 + rho 35787) = rho 35785 + rho 35786 := by
      linear_combination r4516
    have ha5 : rho 35789 * (1 - rho 35787) = rho 35784 - rho 35785 - rho 35786 := by
      linear_combination r4517
    have haddx :
        rho 35788 * (1 + 3021 * (rho 35783 * seg34AccX119 rho) * (rho 35782 * seg34AccY119 rho)) =
          rho 35783 * seg34AccX119 rho + rho 35782 * seg34AccY119 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35789 * (1 - 3021 * (rho 35783 * seg34AccX119 rho) * (rho 35782 * seg34AccY119 rho)) =
          (-1) * (rho 35783 * seg34AccX119 rho) - rho 35782 * seg34AccY119 rho +
            (seg34AccY119 rho - seg34AccX119 rho * (-1)) * (rho 35782 + rho 35783) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35789 * (1 - rho 35787) = rho 35784 - rho 35785 - rho 35786 := ha5
        _ = (-1) * rho 35785 - rho 35786 + (seg34AccY119 rho - seg34AccX119 rho * (-1)) * (rho 35782 + rho 35783) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX120 rho = seg34AccX119 rho - Bool.toZMod bit * (seg34AccX119 rho - rho 35788) := by
      have hd : rho 35790 = Bool.toZMod bit * (rho 35788 - seg34AccX119 rho) := by
        rw [← hbit]
        unfold seg34AccX119
        linear_combination -r4518
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY120 rho = seg34AccY119 rho - Bool.toZMod bit * (seg34AccY119 rho - rho 35789) := by
      have hd : rho 35791 = Bool.toZMod bit * (rho 35789 - seg34AccY119 rho) := by
        rw [← hbit]
        unfold seg34AccY119
        linear_combination -r4519
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35782 * rho 35783 = rho 35792 := by linear_combination r4520
    have hd1 : rho 35782 * rho 35782 = rho 35793 := by linear_combination r4521
    have hd2 : rho 35783 * rho 35783 = rho 35794 := by linear_combination r4522
    have hd3 : rho 35795 * (rho 35783 * rho 35783 + rho 35782 * rho 35782 * (-1)) = 2 * (rho 35782 * rho 35783) := by
      rw [hd0, hd1, hd2]
      linear_combination r4523
    have hd4 : rho 35796 * (2 - (rho 35783 * rho 35783 + rho 35782 * rho 35782 * (-1))) = rho 35783 * rho 35783 - rho 35782 * rho 35782 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4524
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX119 rho : Seg34.F), (seg34AccY119 rho : Seg34.F)⟩
      ⟨(rho 35782 : Seg34.F), (rho 35783 : Seg34.F)⟩
      ⟨(rho 35788 : Seg34.F), (rho 35789 : Seg34.F)⟩
      ⟨(seg34AccX120 rho : Seg34.F), (seg34AccY120 rho : Seg34.F)⟩
      ⟨(rho 35795 : Seg34.F), (rho 35796 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung119

theorem seg34_rows120 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4525 rho ∧ Seg34.relationRow4526 rho ∧ Seg34.relationRow4527 rho ∧ Seg34.relationRow4528 rho ∧ Seg34.relationRow4529 rho ∧ Seg34.relationRow4530 rho ∧ Seg34.relationRow4531 rho ∧ Seg34.relationRow4532 rho ∧ Seg34.relationRow4533 rho ∧ Seg34.relationRow4534 rho ∧ Seg34.relationRow4535 rho ∧ Seg34.relationRow4536 rho ∧ Seg34.relationRow4537 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p56, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4525, r4526, r4527, r4528, r4529, r4530, r4531, r4532, r4533, r4534, r4535, r4536, r4537, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4525, r4526, r4527, r4528, r4529, r4530, r4531, r4532, r4533, r4534, r4535, r4536, r4537⟩

theorem seg34_rung120 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34112 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX120 rho : Seg34.F), (seg34AccY120 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35795 : Seg34.F), (rho 35796 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX120 rho : Seg34.F), (seg34AccY120 rho : Seg34.F)⟩
        ⟨(rho 35795 : Seg34.F), (rho 35796 : Seg34.F)⟩
        ⟨(seg34AccX121 rho : Seg34.F), (seg34AccY121 rho : Seg34.F)⟩
        ⟨(rho 35808 : Seg34.F), (rho 35809 : Seg34.F)⟩ := by
  obtain ⟨r4525, r4526, r4527, r4528, r4529, r4530, r4531, r4532, r4533, r4534, r4535, r4536, r4537⟩ := seg34_rows120 rho h
  unfold Seg34.relationRow4525 at r4525
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4525
  unfold Seg34.relationRow4526 at r4526
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4526
  unfold Seg34.relationRow4527 at r4527
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4527
  unfold Seg34.relationRow4528 at r4528
  unfold Seg34.relationRow4529 at r4529
  unfold Seg34.relationRow4530 at r4530
  unfold Seg34.relationRow4531 at r4531
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4531
  unfold Seg34.relationRow4532 at r4532
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4532
  unfold Seg34.relationRow4533 at r4533
  unfold Seg34.relationRow4534 at r4534
  unfold Seg34.relationRow4535 at r4535
  unfold Seg34.relationRow4536 at r4536
  unfold Seg34.relationRow4537 at r4537
  have hrung120 (bit : Bool) (hbit : rho 34112 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX120 rho : Seg34.F), (seg34AccY120 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35795 : Seg34.F), (rho 35796 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX120 rho : Seg34.F), (seg34AccY120 rho : Seg34.F)⟩
        ⟨(rho 35795 : Seg34.F), (rho 35796 : Seg34.F)⟩
        ⟨(seg34AccX121 rho : Seg34.F), (seg34AccY121 rho : Seg34.F)⟩
        ⟨(rho 35808 : Seg34.F), (rho 35809 : Seg34.F)⟩ := by
    have hnextx : seg34AccX121 rho = seg34AccX120 rho + rho 35803 := by
      unfold seg34AccX121 seg34AccX120
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 120]
      ring
    have hnexty : seg34AccY121 rho = seg34AccY120 rho + rho 35804 := by
      unfold seg34AccY121 seg34AccY120
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 120]
      ring
    have ha0 : (rho 35795 + rho 35796) * (seg34AccX120 rho + seg34AccY120 rho) = rho 35797 := by
      unfold seg34AccX120 seg34AccY120
      linear_combination r4525
    have ha1 : rho 35796 * seg34AccX120 rho = rho 35798 := by
      unfold seg34AccX120
      linear_combination r4526
    have ha2 : rho 35795 * seg34AccY120 rho = rho 35799 := by
      unfold seg34AccY120
      linear_combination r4527
    have ha3 : 3021 * rho 35798 * rho 35799 = rho 35800 := by
      linear_combination r4528
    have ha4 : rho 35801 * (1 + rho 35800) = rho 35798 + rho 35799 := by
      linear_combination r4529
    have ha5 : rho 35802 * (1 - rho 35800) = rho 35797 - rho 35798 - rho 35799 := by
      linear_combination r4530
    have haddx :
        rho 35801 * (1 + 3021 * (rho 35796 * seg34AccX120 rho) * (rho 35795 * seg34AccY120 rho)) =
          rho 35796 * seg34AccX120 rho + rho 35795 * seg34AccY120 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35802 * (1 - 3021 * (rho 35796 * seg34AccX120 rho) * (rho 35795 * seg34AccY120 rho)) =
          (-1) * (rho 35796 * seg34AccX120 rho) - rho 35795 * seg34AccY120 rho +
            (seg34AccY120 rho - seg34AccX120 rho * (-1)) * (rho 35795 + rho 35796) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35802 * (1 - rho 35800) = rho 35797 - rho 35798 - rho 35799 := ha5
        _ = (-1) * rho 35798 - rho 35799 + (seg34AccY120 rho - seg34AccX120 rho * (-1)) * (rho 35795 + rho 35796) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX121 rho = seg34AccX120 rho - Bool.toZMod bit * (seg34AccX120 rho - rho 35801) := by
      have hd : rho 35803 = Bool.toZMod bit * (rho 35801 - seg34AccX120 rho) := by
        rw [← hbit]
        unfold seg34AccX120
        linear_combination -r4531
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY121 rho = seg34AccY120 rho - Bool.toZMod bit * (seg34AccY120 rho - rho 35802) := by
      have hd : rho 35804 = Bool.toZMod bit * (rho 35802 - seg34AccY120 rho) := by
        rw [← hbit]
        unfold seg34AccY120
        linear_combination -r4532
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35795 * rho 35796 = rho 35805 := by linear_combination r4533
    have hd1 : rho 35795 * rho 35795 = rho 35806 := by linear_combination r4534
    have hd2 : rho 35796 * rho 35796 = rho 35807 := by linear_combination r4535
    have hd3 : rho 35808 * (rho 35796 * rho 35796 + rho 35795 * rho 35795 * (-1)) = 2 * (rho 35795 * rho 35796) := by
      rw [hd0, hd1, hd2]
      linear_combination r4536
    have hd4 : rho 35809 * (2 - (rho 35796 * rho 35796 + rho 35795 * rho 35795 * (-1))) = rho 35796 * rho 35796 - rho 35795 * rho 35795 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4537
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX120 rho : Seg34.F), (seg34AccY120 rho : Seg34.F)⟩
      ⟨(rho 35795 : Seg34.F), (rho 35796 : Seg34.F)⟩
      ⟨(rho 35801 : Seg34.F), (rho 35802 : Seg34.F)⟩
      ⟨(seg34AccX121 rho : Seg34.F), (seg34AccY121 rho : Seg34.F)⟩
      ⟨(rho 35808 : Seg34.F), (rho 35809 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung120

theorem seg34_hstep_c10 (rho : Nat -> Seg34.F) (h : Seg34.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (33992 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 110 ≤ i → i < 121 →
      EdwardsBridge.onCurve (seg34LadderAccState rho i) →
      EdwardsBridge.onCurve (seg34LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg34LadderAccState rho i) (seg34LadderCurState rho i)
        (seg34LadderAccState rho (i + 1)) (seg34LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg34_rung110 rho h bits[110]! (hbitAt 110 (by omega)) hacc hcur
  · exact seg34_rung111 rho h bits[111]! (hbitAt 111 (by omega)) hacc hcur
  · exact seg34_rung112 rho h bits[112]! (hbitAt 112 (by omega)) hacc hcur
  · exact seg34_rung113 rho h bits[113]! (hbitAt 113 (by omega)) hacc hcur
  · exact seg34_rung114 rho h bits[114]! (hbitAt 114 (by omega)) hacc hcur
  · exact seg34_rung115 rho h bits[115]! (hbitAt 115 (by omega)) hacc hcur
  · exact seg34_rung116 rho h bits[116]! (hbitAt 116 (by omega)) hacc hcur
  · exact seg34_rung117 rho h bits[117]! (hbitAt 117 (by omega)) hacc hcur
  · exact seg34_rung118 rho h bits[118]! (hbitAt 118 (by omega)) hacc hcur
  · exact seg34_rung119 rho h bits[119]! (hbitAt 119 (by omega)) hacc hcur
  · exact seg34_rung120 rho h bits[120]! (hbitAt 120 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
