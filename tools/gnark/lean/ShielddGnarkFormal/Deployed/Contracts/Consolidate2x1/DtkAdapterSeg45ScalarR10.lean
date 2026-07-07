import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg45_rows110 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4395 rho ∧ Seg45.relationRow4396 rho ∧ Seg45.relationRow4397 rho ∧ Seg45.relationRow4398 rho ∧ Seg45.relationRow4399 rho ∧ Seg45.relationRow4400 rho ∧ Seg45.relationRow4401 rho ∧ Seg45.relationRow4402 rho ∧ Seg45.relationRow4403 rho ∧ Seg45.relationRow4404 rho ∧ Seg45.relationRow4405 rho ∧ Seg45.relationRow4406 rho ∧ Seg45.relationRow4407 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4395, r4396, r4397, r4398, r4399⟩
  unfold Seg45.relationPart55 at p55
  rcases p55 with ⟨r4400, r4401, r4402, r4403, r4404, r4405, r4406, r4407, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4395, r4396, r4397, r4398, r4399, r4400, r4401, r4402, r4403, r4404, r4405, r4406, r4407⟩

theorem seg45_rung110 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41058 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX110 rho : Seg45.F), (seg45AccY110 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42621 : Seg45.F), (rho 42622 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX110 rho : Seg45.F), (seg45AccY110 rho : Seg45.F)⟩
        ⟨(rho 42621 : Seg45.F), (rho 42622 : Seg45.F)⟩
        ⟨(seg45AccX111 rho : Seg45.F), (seg45AccY111 rho : Seg45.F)⟩
        ⟨(rho 42634 : Seg45.F), (rho 42635 : Seg45.F)⟩ := by
  obtain ⟨r4395, r4396, r4397, r4398, r4399, r4400, r4401, r4402, r4403, r4404, r4405, r4406, r4407⟩ := seg45_rows110 rho h
  unfold Seg45.relationRow4395 at r4395
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4395
  unfold Seg45.relationRow4396 at r4396
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4396
  unfold Seg45.relationRow4397 at r4397
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4397
  unfold Seg45.relationRow4398 at r4398
  unfold Seg45.relationRow4399 at r4399
  unfold Seg45.relationRow4400 at r4400
  unfold Seg45.relationRow4401 at r4401
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4401
  unfold Seg45.relationRow4402 at r4402
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4402
  unfold Seg45.relationRow4403 at r4403
  unfold Seg45.relationRow4404 at r4404
  unfold Seg45.relationRow4405 at r4405
  unfold Seg45.relationRow4406 at r4406
  unfold Seg45.relationRow4407 at r4407
  have hrung110 (bit : Bool) (hbit : rho 41058 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX110 rho : Seg45.F), (seg45AccY110 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42621 : Seg45.F), (rho 42622 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX110 rho : Seg45.F), (seg45AccY110 rho : Seg45.F)⟩
        ⟨(rho 42621 : Seg45.F), (rho 42622 : Seg45.F)⟩
        ⟨(seg45AccX111 rho : Seg45.F), (seg45AccY111 rho : Seg45.F)⟩
        ⟨(rho 42634 : Seg45.F), (rho 42635 : Seg45.F)⟩ := by
    have hnextx : seg45AccX111 rho = seg45AccX110 rho + rho 42629 := by
      unfold seg45AccX111 seg45AccX110
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 110]
      ring
    have hnexty : seg45AccY111 rho = seg45AccY110 rho + rho 42630 := by
      unfold seg45AccY111 seg45AccY110
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 110]
      ring
    have ha0 : (rho 42621 + rho 42622) * (seg45AccX110 rho + seg45AccY110 rho) = rho 42623 := by
      unfold seg45AccX110 seg45AccY110
      linear_combination r4395
    have ha1 : rho 42622 * seg45AccX110 rho = rho 42624 := by
      unfold seg45AccX110
      linear_combination r4396
    have ha2 : rho 42621 * seg45AccY110 rho = rho 42625 := by
      unfold seg45AccY110
      linear_combination r4397
    have ha3 : 3021 * rho 42624 * rho 42625 = rho 42626 := by
      linear_combination r4398
    have ha4 : rho 42627 * (1 + rho 42626) = rho 42624 + rho 42625 := by
      linear_combination r4399
    have ha5 : rho 42628 * (1 - rho 42626) = rho 42623 - rho 42624 - rho 42625 := by
      linear_combination r4400
    have haddx :
        rho 42627 * (1 + 3021 * (rho 42622 * seg45AccX110 rho) * (rho 42621 * seg45AccY110 rho)) =
          rho 42622 * seg45AccX110 rho + rho 42621 * seg45AccY110 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42628 * (1 - 3021 * (rho 42622 * seg45AccX110 rho) * (rho 42621 * seg45AccY110 rho)) =
          (-1) * (rho 42622 * seg45AccX110 rho) - rho 42621 * seg45AccY110 rho +
            (seg45AccY110 rho - seg45AccX110 rho * (-1)) * (rho 42621 + rho 42622) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42628 * (1 - rho 42626) = rho 42623 - rho 42624 - rho 42625 := ha5
        _ = (-1) * rho 42624 - rho 42625 + (seg45AccY110 rho - seg45AccX110 rho * (-1)) * (rho 42621 + rho 42622) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX111 rho = seg45AccX110 rho - Bool.toZMod bit * (seg45AccX110 rho - rho 42627) := by
      have hd : rho 42629 = Bool.toZMod bit * (rho 42627 - seg45AccX110 rho) := by
        rw [← hbit]
        unfold seg45AccX110
        linear_combination -r4401
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY111 rho = seg45AccY110 rho - Bool.toZMod bit * (seg45AccY110 rho - rho 42628) := by
      have hd : rho 42630 = Bool.toZMod bit * (rho 42628 - seg45AccY110 rho) := by
        rw [← hbit]
        unfold seg45AccY110
        linear_combination -r4402
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42621 * rho 42622 = rho 42631 := by linear_combination r4403
    have hd1 : rho 42621 * rho 42621 = rho 42632 := by linear_combination r4404
    have hd2 : rho 42622 * rho 42622 = rho 42633 := by linear_combination r4405
    have hd3 : rho 42634 * (rho 42622 * rho 42622 + rho 42621 * rho 42621 * (-1)) = 2 * (rho 42621 * rho 42622) := by
      rw [hd0, hd1, hd2]
      linear_combination r4406
    have hd4 : rho 42635 * (2 - (rho 42622 * rho 42622 + rho 42621 * rho 42621 * (-1))) = rho 42622 * rho 42622 - rho 42621 * rho 42621 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4407
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX110 rho : Seg45.F), (seg45AccY110 rho : Seg45.F)⟩
      ⟨(rho 42621 : Seg45.F), (rho 42622 : Seg45.F)⟩
      ⟨(rho 42627 : Seg45.F), (rho 42628 : Seg45.F)⟩
      ⟨(seg45AccX111 rho : Seg45.F), (seg45AccY111 rho : Seg45.F)⟩
      ⟨(rho 42634 : Seg45.F), (rho 42635 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung110

theorem seg45_rows111 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4408 rho ∧ Seg45.relationRow4409 rho ∧ Seg45.relationRow4410 rho ∧ Seg45.relationRow4411 rho ∧ Seg45.relationRow4412 rho ∧ Seg45.relationRow4413 rho ∧ Seg45.relationRow4414 rho ∧ Seg45.relationRow4415 rho ∧ Seg45.relationRow4416 rho ∧ Seg45.relationRow4417 rho ∧ Seg45.relationRow4418 rho ∧ Seg45.relationRow4419 rho ∧ Seg45.relationRow4420 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, r4408, r4409, r4410, r4411, r4412, r4413, r4414, r4415, r4416, r4417, r4418, r4419, r4420, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4408, r4409, r4410, r4411, r4412, r4413, r4414, r4415, r4416, r4417, r4418, r4419, r4420⟩

theorem seg45_rung111 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41059 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX111 rho : Seg45.F), (seg45AccY111 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42634 : Seg45.F), (rho 42635 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX111 rho : Seg45.F), (seg45AccY111 rho : Seg45.F)⟩
        ⟨(rho 42634 : Seg45.F), (rho 42635 : Seg45.F)⟩
        ⟨(seg45AccX112 rho : Seg45.F), (seg45AccY112 rho : Seg45.F)⟩
        ⟨(rho 42647 : Seg45.F), (rho 42648 : Seg45.F)⟩ := by
  obtain ⟨r4408, r4409, r4410, r4411, r4412, r4413, r4414, r4415, r4416, r4417, r4418, r4419, r4420⟩ := seg45_rows111 rho h
  unfold Seg45.relationRow4408 at r4408
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4408
  unfold Seg45.relationRow4409 at r4409
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4409
  unfold Seg45.relationRow4410 at r4410
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4410
  unfold Seg45.relationRow4411 at r4411
  unfold Seg45.relationRow4412 at r4412
  unfold Seg45.relationRow4413 at r4413
  unfold Seg45.relationRow4414 at r4414
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4414
  unfold Seg45.relationRow4415 at r4415
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4415
  unfold Seg45.relationRow4416 at r4416
  unfold Seg45.relationRow4417 at r4417
  unfold Seg45.relationRow4418 at r4418
  unfold Seg45.relationRow4419 at r4419
  unfold Seg45.relationRow4420 at r4420
  have hrung111 (bit : Bool) (hbit : rho 41059 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX111 rho : Seg45.F), (seg45AccY111 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42634 : Seg45.F), (rho 42635 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX111 rho : Seg45.F), (seg45AccY111 rho : Seg45.F)⟩
        ⟨(rho 42634 : Seg45.F), (rho 42635 : Seg45.F)⟩
        ⟨(seg45AccX112 rho : Seg45.F), (seg45AccY112 rho : Seg45.F)⟩
        ⟨(rho 42647 : Seg45.F), (rho 42648 : Seg45.F)⟩ := by
    have hnextx : seg45AccX112 rho = seg45AccX111 rho + rho 42642 := by
      unfold seg45AccX112 seg45AccX111
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 111]
      ring
    have hnexty : seg45AccY112 rho = seg45AccY111 rho + rho 42643 := by
      unfold seg45AccY112 seg45AccY111
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 111]
      ring
    have ha0 : (rho 42634 + rho 42635) * (seg45AccX111 rho + seg45AccY111 rho) = rho 42636 := by
      unfold seg45AccX111 seg45AccY111
      linear_combination r4408
    have ha1 : rho 42635 * seg45AccX111 rho = rho 42637 := by
      unfold seg45AccX111
      linear_combination r4409
    have ha2 : rho 42634 * seg45AccY111 rho = rho 42638 := by
      unfold seg45AccY111
      linear_combination r4410
    have ha3 : 3021 * rho 42637 * rho 42638 = rho 42639 := by
      linear_combination r4411
    have ha4 : rho 42640 * (1 + rho 42639) = rho 42637 + rho 42638 := by
      linear_combination r4412
    have ha5 : rho 42641 * (1 - rho 42639) = rho 42636 - rho 42637 - rho 42638 := by
      linear_combination r4413
    have haddx :
        rho 42640 * (1 + 3021 * (rho 42635 * seg45AccX111 rho) * (rho 42634 * seg45AccY111 rho)) =
          rho 42635 * seg45AccX111 rho + rho 42634 * seg45AccY111 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42641 * (1 - 3021 * (rho 42635 * seg45AccX111 rho) * (rho 42634 * seg45AccY111 rho)) =
          (-1) * (rho 42635 * seg45AccX111 rho) - rho 42634 * seg45AccY111 rho +
            (seg45AccY111 rho - seg45AccX111 rho * (-1)) * (rho 42634 + rho 42635) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42641 * (1 - rho 42639) = rho 42636 - rho 42637 - rho 42638 := ha5
        _ = (-1) * rho 42637 - rho 42638 + (seg45AccY111 rho - seg45AccX111 rho * (-1)) * (rho 42634 + rho 42635) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX112 rho = seg45AccX111 rho - Bool.toZMod bit * (seg45AccX111 rho - rho 42640) := by
      have hd : rho 42642 = Bool.toZMod bit * (rho 42640 - seg45AccX111 rho) := by
        rw [← hbit]
        unfold seg45AccX111
        linear_combination -r4414
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY112 rho = seg45AccY111 rho - Bool.toZMod bit * (seg45AccY111 rho - rho 42641) := by
      have hd : rho 42643 = Bool.toZMod bit * (rho 42641 - seg45AccY111 rho) := by
        rw [← hbit]
        unfold seg45AccY111
        linear_combination -r4415
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42634 * rho 42635 = rho 42644 := by linear_combination r4416
    have hd1 : rho 42634 * rho 42634 = rho 42645 := by linear_combination r4417
    have hd2 : rho 42635 * rho 42635 = rho 42646 := by linear_combination r4418
    have hd3 : rho 42647 * (rho 42635 * rho 42635 + rho 42634 * rho 42634 * (-1)) = 2 * (rho 42634 * rho 42635) := by
      rw [hd0, hd1, hd2]
      linear_combination r4419
    have hd4 : rho 42648 * (2 - (rho 42635 * rho 42635 + rho 42634 * rho 42634 * (-1))) = rho 42635 * rho 42635 - rho 42634 * rho 42634 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4420
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX111 rho : Seg45.F), (seg45AccY111 rho : Seg45.F)⟩
      ⟨(rho 42634 : Seg45.F), (rho 42635 : Seg45.F)⟩
      ⟨(rho 42640 : Seg45.F), (rho 42641 : Seg45.F)⟩
      ⟨(seg45AccX112 rho : Seg45.F), (seg45AccY112 rho : Seg45.F)⟩
      ⟨(rho 42647 : Seg45.F), (rho 42648 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung111

theorem seg45_rows112 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4421 rho ∧ Seg45.relationRow4422 rho ∧ Seg45.relationRow4423 rho ∧ Seg45.relationRow4424 rho ∧ Seg45.relationRow4425 rho ∧ Seg45.relationRow4426 rho ∧ Seg45.relationRow4427 rho ∧ Seg45.relationRow4428 rho ∧ Seg45.relationRow4429 rho ∧ Seg45.relationRow4430 rho ∧ Seg45.relationRow4431 rho ∧ Seg45.relationRow4432 rho ∧ Seg45.relationRow4433 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4421, r4422, r4423, r4424, r4425, r4426, r4427, r4428, r4429, r4430, r4431, r4432, r4433, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4421, r4422, r4423, r4424, r4425, r4426, r4427, r4428, r4429, r4430, r4431, r4432, r4433⟩

theorem seg45_rung112 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41060 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX112 rho : Seg45.F), (seg45AccY112 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42647 : Seg45.F), (rho 42648 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX112 rho : Seg45.F), (seg45AccY112 rho : Seg45.F)⟩
        ⟨(rho 42647 : Seg45.F), (rho 42648 : Seg45.F)⟩
        ⟨(seg45AccX113 rho : Seg45.F), (seg45AccY113 rho : Seg45.F)⟩
        ⟨(rho 42660 : Seg45.F), (rho 42661 : Seg45.F)⟩ := by
  obtain ⟨r4421, r4422, r4423, r4424, r4425, r4426, r4427, r4428, r4429, r4430, r4431, r4432, r4433⟩ := seg45_rows112 rho h
  unfold Seg45.relationRow4421 at r4421
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4421
  unfold Seg45.relationRow4422 at r4422
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4422
  unfold Seg45.relationRow4423 at r4423
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4423
  unfold Seg45.relationRow4424 at r4424
  unfold Seg45.relationRow4425 at r4425
  unfold Seg45.relationRow4426 at r4426
  unfold Seg45.relationRow4427 at r4427
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4427
  unfold Seg45.relationRow4428 at r4428
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4428
  unfold Seg45.relationRow4429 at r4429
  unfold Seg45.relationRow4430 at r4430
  unfold Seg45.relationRow4431 at r4431
  unfold Seg45.relationRow4432 at r4432
  unfold Seg45.relationRow4433 at r4433
  have hrung112 (bit : Bool) (hbit : rho 41060 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX112 rho : Seg45.F), (seg45AccY112 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42647 : Seg45.F), (rho 42648 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX112 rho : Seg45.F), (seg45AccY112 rho : Seg45.F)⟩
        ⟨(rho 42647 : Seg45.F), (rho 42648 : Seg45.F)⟩
        ⟨(seg45AccX113 rho : Seg45.F), (seg45AccY113 rho : Seg45.F)⟩
        ⟨(rho 42660 : Seg45.F), (rho 42661 : Seg45.F)⟩ := by
    have hnextx : seg45AccX113 rho = seg45AccX112 rho + rho 42655 := by
      unfold seg45AccX113 seg45AccX112
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 112]
      ring
    have hnexty : seg45AccY113 rho = seg45AccY112 rho + rho 42656 := by
      unfold seg45AccY113 seg45AccY112
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 112]
      ring
    have ha0 : (rho 42647 + rho 42648) * (seg45AccX112 rho + seg45AccY112 rho) = rho 42649 := by
      unfold seg45AccX112 seg45AccY112
      linear_combination r4421
    have ha1 : rho 42648 * seg45AccX112 rho = rho 42650 := by
      unfold seg45AccX112
      linear_combination r4422
    have ha2 : rho 42647 * seg45AccY112 rho = rho 42651 := by
      unfold seg45AccY112
      linear_combination r4423
    have ha3 : 3021 * rho 42650 * rho 42651 = rho 42652 := by
      linear_combination r4424
    have ha4 : rho 42653 * (1 + rho 42652) = rho 42650 + rho 42651 := by
      linear_combination r4425
    have ha5 : rho 42654 * (1 - rho 42652) = rho 42649 - rho 42650 - rho 42651 := by
      linear_combination r4426
    have haddx :
        rho 42653 * (1 + 3021 * (rho 42648 * seg45AccX112 rho) * (rho 42647 * seg45AccY112 rho)) =
          rho 42648 * seg45AccX112 rho + rho 42647 * seg45AccY112 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42654 * (1 - 3021 * (rho 42648 * seg45AccX112 rho) * (rho 42647 * seg45AccY112 rho)) =
          (-1) * (rho 42648 * seg45AccX112 rho) - rho 42647 * seg45AccY112 rho +
            (seg45AccY112 rho - seg45AccX112 rho * (-1)) * (rho 42647 + rho 42648) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42654 * (1 - rho 42652) = rho 42649 - rho 42650 - rho 42651 := ha5
        _ = (-1) * rho 42650 - rho 42651 + (seg45AccY112 rho - seg45AccX112 rho * (-1)) * (rho 42647 + rho 42648) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX113 rho = seg45AccX112 rho - Bool.toZMod bit * (seg45AccX112 rho - rho 42653) := by
      have hd : rho 42655 = Bool.toZMod bit * (rho 42653 - seg45AccX112 rho) := by
        rw [← hbit]
        unfold seg45AccX112
        linear_combination -r4427
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY113 rho = seg45AccY112 rho - Bool.toZMod bit * (seg45AccY112 rho - rho 42654) := by
      have hd : rho 42656 = Bool.toZMod bit * (rho 42654 - seg45AccY112 rho) := by
        rw [← hbit]
        unfold seg45AccY112
        linear_combination -r4428
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42647 * rho 42648 = rho 42657 := by linear_combination r4429
    have hd1 : rho 42647 * rho 42647 = rho 42658 := by linear_combination r4430
    have hd2 : rho 42648 * rho 42648 = rho 42659 := by linear_combination r4431
    have hd3 : rho 42660 * (rho 42648 * rho 42648 + rho 42647 * rho 42647 * (-1)) = 2 * (rho 42647 * rho 42648) := by
      rw [hd0, hd1, hd2]
      linear_combination r4432
    have hd4 : rho 42661 * (2 - (rho 42648 * rho 42648 + rho 42647 * rho 42647 * (-1))) = rho 42648 * rho 42648 - rho 42647 * rho 42647 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4433
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX112 rho : Seg45.F), (seg45AccY112 rho : Seg45.F)⟩
      ⟨(rho 42647 : Seg45.F), (rho 42648 : Seg45.F)⟩
      ⟨(rho 42653 : Seg45.F), (rho 42654 : Seg45.F)⟩
      ⟨(seg45AccX113 rho : Seg45.F), (seg45AccY113 rho : Seg45.F)⟩
      ⟨(rho 42660 : Seg45.F), (rho 42661 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung112

theorem seg45_rows113 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4434 rho ∧ Seg45.relationRow4435 rho ∧ Seg45.relationRow4436 rho ∧ Seg45.relationRow4437 rho ∧ Seg45.relationRow4438 rho ∧ Seg45.relationRow4439 rho ∧ Seg45.relationRow4440 rho ∧ Seg45.relationRow4441 rho ∧ Seg45.relationRow4442 rho ∧ Seg45.relationRow4443 rho ∧ Seg45.relationRow4444 rho ∧ Seg45.relationRow4445 rho ∧ Seg45.relationRow4446 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4434, r4435, r4436, r4437, r4438, r4439, r4440, r4441, r4442, r4443, r4444, r4445, r4446, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4434, r4435, r4436, r4437, r4438, r4439, r4440, r4441, r4442, r4443, r4444, r4445, r4446⟩

theorem seg45_rung113 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41061 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX113 rho : Seg45.F), (seg45AccY113 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42660 : Seg45.F), (rho 42661 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX113 rho : Seg45.F), (seg45AccY113 rho : Seg45.F)⟩
        ⟨(rho 42660 : Seg45.F), (rho 42661 : Seg45.F)⟩
        ⟨(seg45AccX114 rho : Seg45.F), (seg45AccY114 rho : Seg45.F)⟩
        ⟨(rho 42673 : Seg45.F), (rho 42674 : Seg45.F)⟩ := by
  obtain ⟨r4434, r4435, r4436, r4437, r4438, r4439, r4440, r4441, r4442, r4443, r4444, r4445, r4446⟩ := seg45_rows113 rho h
  unfold Seg45.relationRow4434 at r4434
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4434
  unfold Seg45.relationRow4435 at r4435
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4435
  unfold Seg45.relationRow4436 at r4436
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4436
  unfold Seg45.relationRow4437 at r4437
  unfold Seg45.relationRow4438 at r4438
  unfold Seg45.relationRow4439 at r4439
  unfold Seg45.relationRow4440 at r4440
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4440
  unfold Seg45.relationRow4441 at r4441
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4441
  unfold Seg45.relationRow4442 at r4442
  unfold Seg45.relationRow4443 at r4443
  unfold Seg45.relationRow4444 at r4444
  unfold Seg45.relationRow4445 at r4445
  unfold Seg45.relationRow4446 at r4446
  have hrung113 (bit : Bool) (hbit : rho 41061 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX113 rho : Seg45.F), (seg45AccY113 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42660 : Seg45.F), (rho 42661 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX113 rho : Seg45.F), (seg45AccY113 rho : Seg45.F)⟩
        ⟨(rho 42660 : Seg45.F), (rho 42661 : Seg45.F)⟩
        ⟨(seg45AccX114 rho : Seg45.F), (seg45AccY114 rho : Seg45.F)⟩
        ⟨(rho 42673 : Seg45.F), (rho 42674 : Seg45.F)⟩ := by
    have hnextx : seg45AccX114 rho = seg45AccX113 rho + rho 42668 := by
      unfold seg45AccX114 seg45AccX113
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 113]
      ring
    have hnexty : seg45AccY114 rho = seg45AccY113 rho + rho 42669 := by
      unfold seg45AccY114 seg45AccY113
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 113]
      ring
    have ha0 : (rho 42660 + rho 42661) * (seg45AccX113 rho + seg45AccY113 rho) = rho 42662 := by
      unfold seg45AccX113 seg45AccY113
      linear_combination r4434
    have ha1 : rho 42661 * seg45AccX113 rho = rho 42663 := by
      unfold seg45AccX113
      linear_combination r4435
    have ha2 : rho 42660 * seg45AccY113 rho = rho 42664 := by
      unfold seg45AccY113
      linear_combination r4436
    have ha3 : 3021 * rho 42663 * rho 42664 = rho 42665 := by
      linear_combination r4437
    have ha4 : rho 42666 * (1 + rho 42665) = rho 42663 + rho 42664 := by
      linear_combination r4438
    have ha5 : rho 42667 * (1 - rho 42665) = rho 42662 - rho 42663 - rho 42664 := by
      linear_combination r4439
    have haddx :
        rho 42666 * (1 + 3021 * (rho 42661 * seg45AccX113 rho) * (rho 42660 * seg45AccY113 rho)) =
          rho 42661 * seg45AccX113 rho + rho 42660 * seg45AccY113 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42667 * (1 - 3021 * (rho 42661 * seg45AccX113 rho) * (rho 42660 * seg45AccY113 rho)) =
          (-1) * (rho 42661 * seg45AccX113 rho) - rho 42660 * seg45AccY113 rho +
            (seg45AccY113 rho - seg45AccX113 rho * (-1)) * (rho 42660 + rho 42661) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42667 * (1 - rho 42665) = rho 42662 - rho 42663 - rho 42664 := ha5
        _ = (-1) * rho 42663 - rho 42664 + (seg45AccY113 rho - seg45AccX113 rho * (-1)) * (rho 42660 + rho 42661) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX114 rho = seg45AccX113 rho - Bool.toZMod bit * (seg45AccX113 rho - rho 42666) := by
      have hd : rho 42668 = Bool.toZMod bit * (rho 42666 - seg45AccX113 rho) := by
        rw [← hbit]
        unfold seg45AccX113
        linear_combination -r4440
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY114 rho = seg45AccY113 rho - Bool.toZMod bit * (seg45AccY113 rho - rho 42667) := by
      have hd : rho 42669 = Bool.toZMod bit * (rho 42667 - seg45AccY113 rho) := by
        rw [← hbit]
        unfold seg45AccY113
        linear_combination -r4441
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42660 * rho 42661 = rho 42670 := by linear_combination r4442
    have hd1 : rho 42660 * rho 42660 = rho 42671 := by linear_combination r4443
    have hd2 : rho 42661 * rho 42661 = rho 42672 := by linear_combination r4444
    have hd3 : rho 42673 * (rho 42661 * rho 42661 + rho 42660 * rho 42660 * (-1)) = 2 * (rho 42660 * rho 42661) := by
      rw [hd0, hd1, hd2]
      linear_combination r4445
    have hd4 : rho 42674 * (2 - (rho 42661 * rho 42661 + rho 42660 * rho 42660 * (-1))) = rho 42661 * rho 42661 - rho 42660 * rho 42660 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4446
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX113 rho : Seg45.F), (seg45AccY113 rho : Seg45.F)⟩
      ⟨(rho 42660 : Seg45.F), (rho 42661 : Seg45.F)⟩
      ⟨(rho 42666 : Seg45.F), (rho 42667 : Seg45.F)⟩
      ⟨(seg45AccX114 rho : Seg45.F), (seg45AccY114 rho : Seg45.F)⟩
      ⟨(rho 42673 : Seg45.F), (rho 42674 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung113

theorem seg45_rows114 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4447 rho ∧ Seg45.relationRow4448 rho ∧ Seg45.relationRow4449 rho ∧ Seg45.relationRow4450 rho ∧ Seg45.relationRow4451 rho ∧ Seg45.relationRow4452 rho ∧ Seg45.relationRow4453 rho ∧ Seg45.relationRow4454 rho ∧ Seg45.relationRow4455 rho ∧ Seg45.relationRow4456 rho ∧ Seg45.relationRow4457 rho ∧ Seg45.relationRow4458 rho ∧ Seg45.relationRow4459 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4447, r4448, r4449, r4450, r4451, r4452, r4453, r4454, r4455, r4456, r4457, r4458, r4459, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4447, r4448, r4449, r4450, r4451, r4452, r4453, r4454, r4455, r4456, r4457, r4458, r4459⟩

theorem seg45_rung114 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41062 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX114 rho : Seg45.F), (seg45AccY114 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42673 : Seg45.F), (rho 42674 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX114 rho : Seg45.F), (seg45AccY114 rho : Seg45.F)⟩
        ⟨(rho 42673 : Seg45.F), (rho 42674 : Seg45.F)⟩
        ⟨(seg45AccX115 rho : Seg45.F), (seg45AccY115 rho : Seg45.F)⟩
        ⟨(rho 42686 : Seg45.F), (rho 42687 : Seg45.F)⟩ := by
  obtain ⟨r4447, r4448, r4449, r4450, r4451, r4452, r4453, r4454, r4455, r4456, r4457, r4458, r4459⟩ := seg45_rows114 rho h
  unfold Seg45.relationRow4447 at r4447
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4447
  unfold Seg45.relationRow4448 at r4448
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4448
  unfold Seg45.relationRow4449 at r4449
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4449
  unfold Seg45.relationRow4450 at r4450
  unfold Seg45.relationRow4451 at r4451
  unfold Seg45.relationRow4452 at r4452
  unfold Seg45.relationRow4453 at r4453
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4453
  unfold Seg45.relationRow4454 at r4454
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4454
  unfold Seg45.relationRow4455 at r4455
  unfold Seg45.relationRow4456 at r4456
  unfold Seg45.relationRow4457 at r4457
  unfold Seg45.relationRow4458 at r4458
  unfold Seg45.relationRow4459 at r4459
  have hrung114 (bit : Bool) (hbit : rho 41062 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX114 rho : Seg45.F), (seg45AccY114 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42673 : Seg45.F), (rho 42674 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX114 rho : Seg45.F), (seg45AccY114 rho : Seg45.F)⟩
        ⟨(rho 42673 : Seg45.F), (rho 42674 : Seg45.F)⟩
        ⟨(seg45AccX115 rho : Seg45.F), (seg45AccY115 rho : Seg45.F)⟩
        ⟨(rho 42686 : Seg45.F), (rho 42687 : Seg45.F)⟩ := by
    have hnextx : seg45AccX115 rho = seg45AccX114 rho + rho 42681 := by
      unfold seg45AccX115 seg45AccX114
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 114]
      ring
    have hnexty : seg45AccY115 rho = seg45AccY114 rho + rho 42682 := by
      unfold seg45AccY115 seg45AccY114
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 114]
      ring
    have ha0 : (rho 42673 + rho 42674) * (seg45AccX114 rho + seg45AccY114 rho) = rho 42675 := by
      unfold seg45AccX114 seg45AccY114
      linear_combination r4447
    have ha1 : rho 42674 * seg45AccX114 rho = rho 42676 := by
      unfold seg45AccX114
      linear_combination r4448
    have ha2 : rho 42673 * seg45AccY114 rho = rho 42677 := by
      unfold seg45AccY114
      linear_combination r4449
    have ha3 : 3021 * rho 42676 * rho 42677 = rho 42678 := by
      linear_combination r4450
    have ha4 : rho 42679 * (1 + rho 42678) = rho 42676 + rho 42677 := by
      linear_combination r4451
    have ha5 : rho 42680 * (1 - rho 42678) = rho 42675 - rho 42676 - rho 42677 := by
      linear_combination r4452
    have haddx :
        rho 42679 * (1 + 3021 * (rho 42674 * seg45AccX114 rho) * (rho 42673 * seg45AccY114 rho)) =
          rho 42674 * seg45AccX114 rho + rho 42673 * seg45AccY114 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42680 * (1 - 3021 * (rho 42674 * seg45AccX114 rho) * (rho 42673 * seg45AccY114 rho)) =
          (-1) * (rho 42674 * seg45AccX114 rho) - rho 42673 * seg45AccY114 rho +
            (seg45AccY114 rho - seg45AccX114 rho * (-1)) * (rho 42673 + rho 42674) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42680 * (1 - rho 42678) = rho 42675 - rho 42676 - rho 42677 := ha5
        _ = (-1) * rho 42676 - rho 42677 + (seg45AccY114 rho - seg45AccX114 rho * (-1)) * (rho 42673 + rho 42674) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX115 rho = seg45AccX114 rho - Bool.toZMod bit * (seg45AccX114 rho - rho 42679) := by
      have hd : rho 42681 = Bool.toZMod bit * (rho 42679 - seg45AccX114 rho) := by
        rw [← hbit]
        unfold seg45AccX114
        linear_combination -r4453
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY115 rho = seg45AccY114 rho - Bool.toZMod bit * (seg45AccY114 rho - rho 42680) := by
      have hd : rho 42682 = Bool.toZMod bit * (rho 42680 - seg45AccY114 rho) := by
        rw [← hbit]
        unfold seg45AccY114
        linear_combination -r4454
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42673 * rho 42674 = rho 42683 := by linear_combination r4455
    have hd1 : rho 42673 * rho 42673 = rho 42684 := by linear_combination r4456
    have hd2 : rho 42674 * rho 42674 = rho 42685 := by linear_combination r4457
    have hd3 : rho 42686 * (rho 42674 * rho 42674 + rho 42673 * rho 42673 * (-1)) = 2 * (rho 42673 * rho 42674) := by
      rw [hd0, hd1, hd2]
      linear_combination r4458
    have hd4 : rho 42687 * (2 - (rho 42674 * rho 42674 + rho 42673 * rho 42673 * (-1))) = rho 42674 * rho 42674 - rho 42673 * rho 42673 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4459
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX114 rho : Seg45.F), (seg45AccY114 rho : Seg45.F)⟩
      ⟨(rho 42673 : Seg45.F), (rho 42674 : Seg45.F)⟩
      ⟨(rho 42679 : Seg45.F), (rho 42680 : Seg45.F)⟩
      ⟨(seg45AccX115 rho : Seg45.F), (seg45AccY115 rho : Seg45.F)⟩
      ⟨(rho 42686 : Seg45.F), (rho 42687 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung114

theorem seg45_rows115 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4460 rho ∧ Seg45.relationRow4461 rho ∧ Seg45.relationRow4462 rho ∧ Seg45.relationRow4463 rho ∧ Seg45.relationRow4464 rho ∧ Seg45.relationRow4465 rho ∧ Seg45.relationRow4466 rho ∧ Seg45.relationRow4467 rho ∧ Seg45.relationRow4468 rho ∧ Seg45.relationRow4469 rho ∧ Seg45.relationRow4470 rho ∧ Seg45.relationRow4471 rho ∧ Seg45.relationRow4472 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4460, r4461, r4462, r4463, r4464, r4465, r4466, r4467, r4468, r4469, r4470, r4471, r4472, _, _, _, _, _, _, _⟩
  exact ⟨r4460, r4461, r4462, r4463, r4464, r4465, r4466, r4467, r4468, r4469, r4470, r4471, r4472⟩

theorem seg45_rung115 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41063 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX115 rho : Seg45.F), (seg45AccY115 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42686 : Seg45.F), (rho 42687 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX115 rho : Seg45.F), (seg45AccY115 rho : Seg45.F)⟩
        ⟨(rho 42686 : Seg45.F), (rho 42687 : Seg45.F)⟩
        ⟨(seg45AccX116 rho : Seg45.F), (seg45AccY116 rho : Seg45.F)⟩
        ⟨(rho 42699 : Seg45.F), (rho 42700 : Seg45.F)⟩ := by
  obtain ⟨r4460, r4461, r4462, r4463, r4464, r4465, r4466, r4467, r4468, r4469, r4470, r4471, r4472⟩ := seg45_rows115 rho h
  unfold Seg45.relationRow4460 at r4460
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4460
  unfold Seg45.relationRow4461 at r4461
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4461
  unfold Seg45.relationRow4462 at r4462
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4462
  unfold Seg45.relationRow4463 at r4463
  unfold Seg45.relationRow4464 at r4464
  unfold Seg45.relationRow4465 at r4465
  unfold Seg45.relationRow4466 at r4466
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4466
  unfold Seg45.relationRow4467 at r4467
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4467
  unfold Seg45.relationRow4468 at r4468
  unfold Seg45.relationRow4469 at r4469
  unfold Seg45.relationRow4470 at r4470
  unfold Seg45.relationRow4471 at r4471
  unfold Seg45.relationRow4472 at r4472
  have hrung115 (bit : Bool) (hbit : rho 41063 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX115 rho : Seg45.F), (seg45AccY115 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42686 : Seg45.F), (rho 42687 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX115 rho : Seg45.F), (seg45AccY115 rho : Seg45.F)⟩
        ⟨(rho 42686 : Seg45.F), (rho 42687 : Seg45.F)⟩
        ⟨(seg45AccX116 rho : Seg45.F), (seg45AccY116 rho : Seg45.F)⟩
        ⟨(rho 42699 : Seg45.F), (rho 42700 : Seg45.F)⟩ := by
    have hnextx : seg45AccX116 rho = seg45AccX115 rho + rho 42694 := by
      unfold seg45AccX116 seg45AccX115
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 115]
      ring
    have hnexty : seg45AccY116 rho = seg45AccY115 rho + rho 42695 := by
      unfold seg45AccY116 seg45AccY115
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 115]
      ring
    have ha0 : (rho 42686 + rho 42687) * (seg45AccX115 rho + seg45AccY115 rho) = rho 42688 := by
      unfold seg45AccX115 seg45AccY115
      linear_combination r4460
    have ha1 : rho 42687 * seg45AccX115 rho = rho 42689 := by
      unfold seg45AccX115
      linear_combination r4461
    have ha2 : rho 42686 * seg45AccY115 rho = rho 42690 := by
      unfold seg45AccY115
      linear_combination r4462
    have ha3 : 3021 * rho 42689 * rho 42690 = rho 42691 := by
      linear_combination r4463
    have ha4 : rho 42692 * (1 + rho 42691) = rho 42689 + rho 42690 := by
      linear_combination r4464
    have ha5 : rho 42693 * (1 - rho 42691) = rho 42688 - rho 42689 - rho 42690 := by
      linear_combination r4465
    have haddx :
        rho 42692 * (1 + 3021 * (rho 42687 * seg45AccX115 rho) * (rho 42686 * seg45AccY115 rho)) =
          rho 42687 * seg45AccX115 rho + rho 42686 * seg45AccY115 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42693 * (1 - 3021 * (rho 42687 * seg45AccX115 rho) * (rho 42686 * seg45AccY115 rho)) =
          (-1) * (rho 42687 * seg45AccX115 rho) - rho 42686 * seg45AccY115 rho +
            (seg45AccY115 rho - seg45AccX115 rho * (-1)) * (rho 42686 + rho 42687) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42693 * (1 - rho 42691) = rho 42688 - rho 42689 - rho 42690 := ha5
        _ = (-1) * rho 42689 - rho 42690 + (seg45AccY115 rho - seg45AccX115 rho * (-1)) * (rho 42686 + rho 42687) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX116 rho = seg45AccX115 rho - Bool.toZMod bit * (seg45AccX115 rho - rho 42692) := by
      have hd : rho 42694 = Bool.toZMod bit * (rho 42692 - seg45AccX115 rho) := by
        rw [← hbit]
        unfold seg45AccX115
        linear_combination -r4466
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY116 rho = seg45AccY115 rho - Bool.toZMod bit * (seg45AccY115 rho - rho 42693) := by
      have hd : rho 42695 = Bool.toZMod bit * (rho 42693 - seg45AccY115 rho) := by
        rw [← hbit]
        unfold seg45AccY115
        linear_combination -r4467
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42686 * rho 42687 = rho 42696 := by linear_combination r4468
    have hd1 : rho 42686 * rho 42686 = rho 42697 := by linear_combination r4469
    have hd2 : rho 42687 * rho 42687 = rho 42698 := by linear_combination r4470
    have hd3 : rho 42699 * (rho 42687 * rho 42687 + rho 42686 * rho 42686 * (-1)) = 2 * (rho 42686 * rho 42687) := by
      rw [hd0, hd1, hd2]
      linear_combination r4471
    have hd4 : rho 42700 * (2 - (rho 42687 * rho 42687 + rho 42686 * rho 42686 * (-1))) = rho 42687 * rho 42687 - rho 42686 * rho 42686 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4472
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX115 rho : Seg45.F), (seg45AccY115 rho : Seg45.F)⟩
      ⟨(rho 42686 : Seg45.F), (rho 42687 : Seg45.F)⟩
      ⟨(rho 42692 : Seg45.F), (rho 42693 : Seg45.F)⟩
      ⟨(seg45AccX116 rho : Seg45.F), (seg45AccY116 rho : Seg45.F)⟩
      ⟨(rho 42699 : Seg45.F), (rho 42700 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung115

theorem seg45_rows116 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4473 rho ∧ Seg45.relationRow4474 rho ∧ Seg45.relationRow4475 rho ∧ Seg45.relationRow4476 rho ∧ Seg45.relationRow4477 rho ∧ Seg45.relationRow4478 rho ∧ Seg45.relationRow4479 rho ∧ Seg45.relationRow4480 rho ∧ Seg45.relationRow4481 rho ∧ Seg45.relationRow4482 rho ∧ Seg45.relationRow4483 rho ∧ Seg45.relationRow4484 rho ∧ Seg45.relationRow4485 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4473, r4474, r4475, r4476, r4477, r4478, r4479⟩
  unfold Seg45.relationPart56 at p56
  rcases p56 with ⟨r4480, r4481, r4482, r4483, r4484, r4485, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4473, r4474, r4475, r4476, r4477, r4478, r4479, r4480, r4481, r4482, r4483, r4484, r4485⟩

theorem seg45_rung116 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41064 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX116 rho : Seg45.F), (seg45AccY116 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42699 : Seg45.F), (rho 42700 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX116 rho : Seg45.F), (seg45AccY116 rho : Seg45.F)⟩
        ⟨(rho 42699 : Seg45.F), (rho 42700 : Seg45.F)⟩
        ⟨(seg45AccX117 rho : Seg45.F), (seg45AccY117 rho : Seg45.F)⟩
        ⟨(rho 42712 : Seg45.F), (rho 42713 : Seg45.F)⟩ := by
  obtain ⟨r4473, r4474, r4475, r4476, r4477, r4478, r4479, r4480, r4481, r4482, r4483, r4484, r4485⟩ := seg45_rows116 rho h
  unfold Seg45.relationRow4473 at r4473
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4473
  unfold Seg45.relationRow4474 at r4474
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4474
  unfold Seg45.relationRow4475 at r4475
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4475
  unfold Seg45.relationRow4476 at r4476
  unfold Seg45.relationRow4477 at r4477
  unfold Seg45.relationRow4478 at r4478
  unfold Seg45.relationRow4479 at r4479
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4479
  unfold Seg45.relationRow4480 at r4480
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4480
  unfold Seg45.relationRow4481 at r4481
  unfold Seg45.relationRow4482 at r4482
  unfold Seg45.relationRow4483 at r4483
  unfold Seg45.relationRow4484 at r4484
  unfold Seg45.relationRow4485 at r4485
  have hrung116 (bit : Bool) (hbit : rho 41064 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX116 rho : Seg45.F), (seg45AccY116 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42699 : Seg45.F), (rho 42700 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX116 rho : Seg45.F), (seg45AccY116 rho : Seg45.F)⟩
        ⟨(rho 42699 : Seg45.F), (rho 42700 : Seg45.F)⟩
        ⟨(seg45AccX117 rho : Seg45.F), (seg45AccY117 rho : Seg45.F)⟩
        ⟨(rho 42712 : Seg45.F), (rho 42713 : Seg45.F)⟩ := by
    have hnextx : seg45AccX117 rho = seg45AccX116 rho + rho 42707 := by
      unfold seg45AccX117 seg45AccX116
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 116]
      ring
    have hnexty : seg45AccY117 rho = seg45AccY116 rho + rho 42708 := by
      unfold seg45AccY117 seg45AccY116
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 116]
      ring
    have ha0 : (rho 42699 + rho 42700) * (seg45AccX116 rho + seg45AccY116 rho) = rho 42701 := by
      unfold seg45AccX116 seg45AccY116
      linear_combination r4473
    have ha1 : rho 42700 * seg45AccX116 rho = rho 42702 := by
      unfold seg45AccX116
      linear_combination r4474
    have ha2 : rho 42699 * seg45AccY116 rho = rho 42703 := by
      unfold seg45AccY116
      linear_combination r4475
    have ha3 : 3021 * rho 42702 * rho 42703 = rho 42704 := by
      linear_combination r4476
    have ha4 : rho 42705 * (1 + rho 42704) = rho 42702 + rho 42703 := by
      linear_combination r4477
    have ha5 : rho 42706 * (1 - rho 42704) = rho 42701 - rho 42702 - rho 42703 := by
      linear_combination r4478
    have haddx :
        rho 42705 * (1 + 3021 * (rho 42700 * seg45AccX116 rho) * (rho 42699 * seg45AccY116 rho)) =
          rho 42700 * seg45AccX116 rho + rho 42699 * seg45AccY116 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42706 * (1 - 3021 * (rho 42700 * seg45AccX116 rho) * (rho 42699 * seg45AccY116 rho)) =
          (-1) * (rho 42700 * seg45AccX116 rho) - rho 42699 * seg45AccY116 rho +
            (seg45AccY116 rho - seg45AccX116 rho * (-1)) * (rho 42699 + rho 42700) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42706 * (1 - rho 42704) = rho 42701 - rho 42702 - rho 42703 := ha5
        _ = (-1) * rho 42702 - rho 42703 + (seg45AccY116 rho - seg45AccX116 rho * (-1)) * (rho 42699 + rho 42700) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX117 rho = seg45AccX116 rho - Bool.toZMod bit * (seg45AccX116 rho - rho 42705) := by
      have hd : rho 42707 = Bool.toZMod bit * (rho 42705 - seg45AccX116 rho) := by
        rw [← hbit]
        unfold seg45AccX116
        linear_combination -r4479
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY117 rho = seg45AccY116 rho - Bool.toZMod bit * (seg45AccY116 rho - rho 42706) := by
      have hd : rho 42708 = Bool.toZMod bit * (rho 42706 - seg45AccY116 rho) := by
        rw [← hbit]
        unfold seg45AccY116
        linear_combination -r4480
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42699 * rho 42700 = rho 42709 := by linear_combination r4481
    have hd1 : rho 42699 * rho 42699 = rho 42710 := by linear_combination r4482
    have hd2 : rho 42700 * rho 42700 = rho 42711 := by linear_combination r4483
    have hd3 : rho 42712 * (rho 42700 * rho 42700 + rho 42699 * rho 42699 * (-1)) = 2 * (rho 42699 * rho 42700) := by
      rw [hd0, hd1, hd2]
      linear_combination r4484
    have hd4 : rho 42713 * (2 - (rho 42700 * rho 42700 + rho 42699 * rho 42699 * (-1))) = rho 42700 * rho 42700 - rho 42699 * rho 42699 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4485
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX116 rho : Seg45.F), (seg45AccY116 rho : Seg45.F)⟩
      ⟨(rho 42699 : Seg45.F), (rho 42700 : Seg45.F)⟩
      ⟨(rho 42705 : Seg45.F), (rho 42706 : Seg45.F)⟩
      ⟨(seg45AccX117 rho : Seg45.F), (seg45AccY117 rho : Seg45.F)⟩
      ⟨(rho 42712 : Seg45.F), (rho 42713 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung116

theorem seg45_rows117 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4486 rho ∧ Seg45.relationRow4487 rho ∧ Seg45.relationRow4488 rho ∧ Seg45.relationRow4489 rho ∧ Seg45.relationRow4490 rho ∧ Seg45.relationRow4491 rho ∧ Seg45.relationRow4492 rho ∧ Seg45.relationRow4493 rho ∧ Seg45.relationRow4494 rho ∧ Seg45.relationRow4495 rho ∧ Seg45.relationRow4496 rho ∧ Seg45.relationRow4497 rho ∧ Seg45.relationRow4498 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, r4486, r4487, r4488, r4489, r4490, r4491, r4492, r4493, r4494, r4495, r4496, r4497, r4498, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4486, r4487, r4488, r4489, r4490, r4491, r4492, r4493, r4494, r4495, r4496, r4497, r4498⟩

theorem seg45_rung117 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41065 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX117 rho : Seg45.F), (seg45AccY117 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42712 : Seg45.F), (rho 42713 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX117 rho : Seg45.F), (seg45AccY117 rho : Seg45.F)⟩
        ⟨(rho 42712 : Seg45.F), (rho 42713 : Seg45.F)⟩
        ⟨(seg45AccX118 rho : Seg45.F), (seg45AccY118 rho : Seg45.F)⟩
        ⟨(rho 42725 : Seg45.F), (rho 42726 : Seg45.F)⟩ := by
  obtain ⟨r4486, r4487, r4488, r4489, r4490, r4491, r4492, r4493, r4494, r4495, r4496, r4497, r4498⟩ := seg45_rows117 rho h
  unfold Seg45.relationRow4486 at r4486
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4486
  unfold Seg45.relationRow4487 at r4487
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4487
  unfold Seg45.relationRow4488 at r4488
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4488
  unfold Seg45.relationRow4489 at r4489
  unfold Seg45.relationRow4490 at r4490
  unfold Seg45.relationRow4491 at r4491
  unfold Seg45.relationRow4492 at r4492
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4492
  unfold Seg45.relationRow4493 at r4493
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4493
  unfold Seg45.relationRow4494 at r4494
  unfold Seg45.relationRow4495 at r4495
  unfold Seg45.relationRow4496 at r4496
  unfold Seg45.relationRow4497 at r4497
  unfold Seg45.relationRow4498 at r4498
  have hrung117 (bit : Bool) (hbit : rho 41065 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX117 rho : Seg45.F), (seg45AccY117 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42712 : Seg45.F), (rho 42713 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX117 rho : Seg45.F), (seg45AccY117 rho : Seg45.F)⟩
        ⟨(rho 42712 : Seg45.F), (rho 42713 : Seg45.F)⟩
        ⟨(seg45AccX118 rho : Seg45.F), (seg45AccY118 rho : Seg45.F)⟩
        ⟨(rho 42725 : Seg45.F), (rho 42726 : Seg45.F)⟩ := by
    have hnextx : seg45AccX118 rho = seg45AccX117 rho + rho 42720 := by
      unfold seg45AccX118 seg45AccX117
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 117]
      ring
    have hnexty : seg45AccY118 rho = seg45AccY117 rho + rho 42721 := by
      unfold seg45AccY118 seg45AccY117
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 117]
      ring
    have ha0 : (rho 42712 + rho 42713) * (seg45AccX117 rho + seg45AccY117 rho) = rho 42714 := by
      unfold seg45AccX117 seg45AccY117
      linear_combination r4486
    have ha1 : rho 42713 * seg45AccX117 rho = rho 42715 := by
      unfold seg45AccX117
      linear_combination r4487
    have ha2 : rho 42712 * seg45AccY117 rho = rho 42716 := by
      unfold seg45AccY117
      linear_combination r4488
    have ha3 : 3021 * rho 42715 * rho 42716 = rho 42717 := by
      linear_combination r4489
    have ha4 : rho 42718 * (1 + rho 42717) = rho 42715 + rho 42716 := by
      linear_combination r4490
    have ha5 : rho 42719 * (1 - rho 42717) = rho 42714 - rho 42715 - rho 42716 := by
      linear_combination r4491
    have haddx :
        rho 42718 * (1 + 3021 * (rho 42713 * seg45AccX117 rho) * (rho 42712 * seg45AccY117 rho)) =
          rho 42713 * seg45AccX117 rho + rho 42712 * seg45AccY117 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42719 * (1 - 3021 * (rho 42713 * seg45AccX117 rho) * (rho 42712 * seg45AccY117 rho)) =
          (-1) * (rho 42713 * seg45AccX117 rho) - rho 42712 * seg45AccY117 rho +
            (seg45AccY117 rho - seg45AccX117 rho * (-1)) * (rho 42712 + rho 42713) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42719 * (1 - rho 42717) = rho 42714 - rho 42715 - rho 42716 := ha5
        _ = (-1) * rho 42715 - rho 42716 + (seg45AccY117 rho - seg45AccX117 rho * (-1)) * (rho 42712 + rho 42713) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX118 rho = seg45AccX117 rho - Bool.toZMod bit * (seg45AccX117 rho - rho 42718) := by
      have hd : rho 42720 = Bool.toZMod bit * (rho 42718 - seg45AccX117 rho) := by
        rw [← hbit]
        unfold seg45AccX117
        linear_combination -r4492
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY118 rho = seg45AccY117 rho - Bool.toZMod bit * (seg45AccY117 rho - rho 42719) := by
      have hd : rho 42721 = Bool.toZMod bit * (rho 42719 - seg45AccY117 rho) := by
        rw [← hbit]
        unfold seg45AccY117
        linear_combination -r4493
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42712 * rho 42713 = rho 42722 := by linear_combination r4494
    have hd1 : rho 42712 * rho 42712 = rho 42723 := by linear_combination r4495
    have hd2 : rho 42713 * rho 42713 = rho 42724 := by linear_combination r4496
    have hd3 : rho 42725 * (rho 42713 * rho 42713 + rho 42712 * rho 42712 * (-1)) = 2 * (rho 42712 * rho 42713) := by
      rw [hd0, hd1, hd2]
      linear_combination r4497
    have hd4 : rho 42726 * (2 - (rho 42713 * rho 42713 + rho 42712 * rho 42712 * (-1))) = rho 42713 * rho 42713 - rho 42712 * rho 42712 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4498
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX117 rho : Seg45.F), (seg45AccY117 rho : Seg45.F)⟩
      ⟨(rho 42712 : Seg45.F), (rho 42713 : Seg45.F)⟩
      ⟨(rho 42718 : Seg45.F), (rho 42719 : Seg45.F)⟩
      ⟨(seg45AccX118 rho : Seg45.F), (seg45AccY118 rho : Seg45.F)⟩
      ⟨(rho 42725 : Seg45.F), (rho 42726 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung117

theorem seg45_rows118 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4499 rho ∧ Seg45.relationRow4500 rho ∧ Seg45.relationRow4501 rho ∧ Seg45.relationRow4502 rho ∧ Seg45.relationRow4503 rho ∧ Seg45.relationRow4504 rho ∧ Seg45.relationRow4505 rho ∧ Seg45.relationRow4506 rho ∧ Seg45.relationRow4507 rho ∧ Seg45.relationRow4508 rho ∧ Seg45.relationRow4509 rho ∧ Seg45.relationRow4510 rho ∧ Seg45.relationRow4511 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4499, r4500, r4501, r4502, r4503, r4504, r4505, r4506, r4507, r4508, r4509, r4510, r4511, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4499, r4500, r4501, r4502, r4503, r4504, r4505, r4506, r4507, r4508, r4509, r4510, r4511⟩

theorem seg45_rung118 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41066 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX118 rho : Seg45.F), (seg45AccY118 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42725 : Seg45.F), (rho 42726 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX118 rho : Seg45.F), (seg45AccY118 rho : Seg45.F)⟩
        ⟨(rho 42725 : Seg45.F), (rho 42726 : Seg45.F)⟩
        ⟨(seg45AccX119 rho : Seg45.F), (seg45AccY119 rho : Seg45.F)⟩
        ⟨(rho 42738 : Seg45.F), (rho 42739 : Seg45.F)⟩ := by
  obtain ⟨r4499, r4500, r4501, r4502, r4503, r4504, r4505, r4506, r4507, r4508, r4509, r4510, r4511⟩ := seg45_rows118 rho h
  unfold Seg45.relationRow4499 at r4499
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4499
  unfold Seg45.relationRow4500 at r4500
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4500
  unfold Seg45.relationRow4501 at r4501
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4501
  unfold Seg45.relationRow4502 at r4502
  unfold Seg45.relationRow4503 at r4503
  unfold Seg45.relationRow4504 at r4504
  unfold Seg45.relationRow4505 at r4505
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4505
  unfold Seg45.relationRow4506 at r4506
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4506
  unfold Seg45.relationRow4507 at r4507
  unfold Seg45.relationRow4508 at r4508
  unfold Seg45.relationRow4509 at r4509
  unfold Seg45.relationRow4510 at r4510
  unfold Seg45.relationRow4511 at r4511
  have hrung118 (bit : Bool) (hbit : rho 41066 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX118 rho : Seg45.F), (seg45AccY118 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42725 : Seg45.F), (rho 42726 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX118 rho : Seg45.F), (seg45AccY118 rho : Seg45.F)⟩
        ⟨(rho 42725 : Seg45.F), (rho 42726 : Seg45.F)⟩
        ⟨(seg45AccX119 rho : Seg45.F), (seg45AccY119 rho : Seg45.F)⟩
        ⟨(rho 42738 : Seg45.F), (rho 42739 : Seg45.F)⟩ := by
    have hnextx : seg45AccX119 rho = seg45AccX118 rho + rho 42733 := by
      unfold seg45AccX119 seg45AccX118
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 118]
      ring
    have hnexty : seg45AccY119 rho = seg45AccY118 rho + rho 42734 := by
      unfold seg45AccY119 seg45AccY118
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 118]
      ring
    have ha0 : (rho 42725 + rho 42726) * (seg45AccX118 rho + seg45AccY118 rho) = rho 42727 := by
      unfold seg45AccX118 seg45AccY118
      linear_combination r4499
    have ha1 : rho 42726 * seg45AccX118 rho = rho 42728 := by
      unfold seg45AccX118
      linear_combination r4500
    have ha2 : rho 42725 * seg45AccY118 rho = rho 42729 := by
      unfold seg45AccY118
      linear_combination r4501
    have ha3 : 3021 * rho 42728 * rho 42729 = rho 42730 := by
      linear_combination r4502
    have ha4 : rho 42731 * (1 + rho 42730) = rho 42728 + rho 42729 := by
      linear_combination r4503
    have ha5 : rho 42732 * (1 - rho 42730) = rho 42727 - rho 42728 - rho 42729 := by
      linear_combination r4504
    have haddx :
        rho 42731 * (1 + 3021 * (rho 42726 * seg45AccX118 rho) * (rho 42725 * seg45AccY118 rho)) =
          rho 42726 * seg45AccX118 rho + rho 42725 * seg45AccY118 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42732 * (1 - 3021 * (rho 42726 * seg45AccX118 rho) * (rho 42725 * seg45AccY118 rho)) =
          (-1) * (rho 42726 * seg45AccX118 rho) - rho 42725 * seg45AccY118 rho +
            (seg45AccY118 rho - seg45AccX118 rho * (-1)) * (rho 42725 + rho 42726) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42732 * (1 - rho 42730) = rho 42727 - rho 42728 - rho 42729 := ha5
        _ = (-1) * rho 42728 - rho 42729 + (seg45AccY118 rho - seg45AccX118 rho * (-1)) * (rho 42725 + rho 42726) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX119 rho = seg45AccX118 rho - Bool.toZMod bit * (seg45AccX118 rho - rho 42731) := by
      have hd : rho 42733 = Bool.toZMod bit * (rho 42731 - seg45AccX118 rho) := by
        rw [← hbit]
        unfold seg45AccX118
        linear_combination -r4505
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY119 rho = seg45AccY118 rho - Bool.toZMod bit * (seg45AccY118 rho - rho 42732) := by
      have hd : rho 42734 = Bool.toZMod bit * (rho 42732 - seg45AccY118 rho) := by
        rw [← hbit]
        unfold seg45AccY118
        linear_combination -r4506
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42725 * rho 42726 = rho 42735 := by linear_combination r4507
    have hd1 : rho 42725 * rho 42725 = rho 42736 := by linear_combination r4508
    have hd2 : rho 42726 * rho 42726 = rho 42737 := by linear_combination r4509
    have hd3 : rho 42738 * (rho 42726 * rho 42726 + rho 42725 * rho 42725 * (-1)) = 2 * (rho 42725 * rho 42726) := by
      rw [hd0, hd1, hd2]
      linear_combination r4510
    have hd4 : rho 42739 * (2 - (rho 42726 * rho 42726 + rho 42725 * rho 42725 * (-1))) = rho 42726 * rho 42726 - rho 42725 * rho 42725 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4511
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX118 rho : Seg45.F), (seg45AccY118 rho : Seg45.F)⟩
      ⟨(rho 42725 : Seg45.F), (rho 42726 : Seg45.F)⟩
      ⟨(rho 42731 : Seg45.F), (rho 42732 : Seg45.F)⟩
      ⟨(seg45AccX119 rho : Seg45.F), (seg45AccY119 rho : Seg45.F)⟩
      ⟨(rho 42738 : Seg45.F), (rho 42739 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung118

theorem seg45_rows119 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4512 rho ∧ Seg45.relationRow4513 rho ∧ Seg45.relationRow4514 rho ∧ Seg45.relationRow4515 rho ∧ Seg45.relationRow4516 rho ∧ Seg45.relationRow4517 rho ∧ Seg45.relationRow4518 rho ∧ Seg45.relationRow4519 rho ∧ Seg45.relationRow4520 rho ∧ Seg45.relationRow4521 rho ∧ Seg45.relationRow4522 rho ∧ Seg45.relationRow4523 rho ∧ Seg45.relationRow4524 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4512, r4513, r4514, r4515, r4516, r4517, r4518, r4519, r4520, r4521, r4522, r4523, r4524, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4512, r4513, r4514, r4515, r4516, r4517, r4518, r4519, r4520, r4521, r4522, r4523, r4524⟩

theorem seg45_rung119 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41067 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX119 rho : Seg45.F), (seg45AccY119 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42738 : Seg45.F), (rho 42739 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX119 rho : Seg45.F), (seg45AccY119 rho : Seg45.F)⟩
        ⟨(rho 42738 : Seg45.F), (rho 42739 : Seg45.F)⟩
        ⟨(seg45AccX120 rho : Seg45.F), (seg45AccY120 rho : Seg45.F)⟩
        ⟨(rho 42751 : Seg45.F), (rho 42752 : Seg45.F)⟩ := by
  obtain ⟨r4512, r4513, r4514, r4515, r4516, r4517, r4518, r4519, r4520, r4521, r4522, r4523, r4524⟩ := seg45_rows119 rho h
  unfold Seg45.relationRow4512 at r4512
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4512
  unfold Seg45.relationRow4513 at r4513
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4513
  unfold Seg45.relationRow4514 at r4514
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4514
  unfold Seg45.relationRow4515 at r4515
  unfold Seg45.relationRow4516 at r4516
  unfold Seg45.relationRow4517 at r4517
  unfold Seg45.relationRow4518 at r4518
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4518
  unfold Seg45.relationRow4519 at r4519
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4519
  unfold Seg45.relationRow4520 at r4520
  unfold Seg45.relationRow4521 at r4521
  unfold Seg45.relationRow4522 at r4522
  unfold Seg45.relationRow4523 at r4523
  unfold Seg45.relationRow4524 at r4524
  have hrung119 (bit : Bool) (hbit : rho 41067 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX119 rho : Seg45.F), (seg45AccY119 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42738 : Seg45.F), (rho 42739 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX119 rho : Seg45.F), (seg45AccY119 rho : Seg45.F)⟩
        ⟨(rho 42738 : Seg45.F), (rho 42739 : Seg45.F)⟩
        ⟨(seg45AccX120 rho : Seg45.F), (seg45AccY120 rho : Seg45.F)⟩
        ⟨(rho 42751 : Seg45.F), (rho 42752 : Seg45.F)⟩ := by
    have hnextx : seg45AccX120 rho = seg45AccX119 rho + rho 42746 := by
      unfold seg45AccX120 seg45AccX119
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 119]
      ring
    have hnexty : seg45AccY120 rho = seg45AccY119 rho + rho 42747 := by
      unfold seg45AccY120 seg45AccY119
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 119]
      ring
    have ha0 : (rho 42738 + rho 42739) * (seg45AccX119 rho + seg45AccY119 rho) = rho 42740 := by
      unfold seg45AccX119 seg45AccY119
      linear_combination r4512
    have ha1 : rho 42739 * seg45AccX119 rho = rho 42741 := by
      unfold seg45AccX119
      linear_combination r4513
    have ha2 : rho 42738 * seg45AccY119 rho = rho 42742 := by
      unfold seg45AccY119
      linear_combination r4514
    have ha3 : 3021 * rho 42741 * rho 42742 = rho 42743 := by
      linear_combination r4515
    have ha4 : rho 42744 * (1 + rho 42743) = rho 42741 + rho 42742 := by
      linear_combination r4516
    have ha5 : rho 42745 * (1 - rho 42743) = rho 42740 - rho 42741 - rho 42742 := by
      linear_combination r4517
    have haddx :
        rho 42744 * (1 + 3021 * (rho 42739 * seg45AccX119 rho) * (rho 42738 * seg45AccY119 rho)) =
          rho 42739 * seg45AccX119 rho + rho 42738 * seg45AccY119 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42745 * (1 - 3021 * (rho 42739 * seg45AccX119 rho) * (rho 42738 * seg45AccY119 rho)) =
          (-1) * (rho 42739 * seg45AccX119 rho) - rho 42738 * seg45AccY119 rho +
            (seg45AccY119 rho - seg45AccX119 rho * (-1)) * (rho 42738 + rho 42739) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42745 * (1 - rho 42743) = rho 42740 - rho 42741 - rho 42742 := ha5
        _ = (-1) * rho 42741 - rho 42742 + (seg45AccY119 rho - seg45AccX119 rho * (-1)) * (rho 42738 + rho 42739) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX120 rho = seg45AccX119 rho - Bool.toZMod bit * (seg45AccX119 rho - rho 42744) := by
      have hd : rho 42746 = Bool.toZMod bit * (rho 42744 - seg45AccX119 rho) := by
        rw [← hbit]
        unfold seg45AccX119
        linear_combination -r4518
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY120 rho = seg45AccY119 rho - Bool.toZMod bit * (seg45AccY119 rho - rho 42745) := by
      have hd : rho 42747 = Bool.toZMod bit * (rho 42745 - seg45AccY119 rho) := by
        rw [← hbit]
        unfold seg45AccY119
        linear_combination -r4519
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42738 * rho 42739 = rho 42748 := by linear_combination r4520
    have hd1 : rho 42738 * rho 42738 = rho 42749 := by linear_combination r4521
    have hd2 : rho 42739 * rho 42739 = rho 42750 := by linear_combination r4522
    have hd3 : rho 42751 * (rho 42739 * rho 42739 + rho 42738 * rho 42738 * (-1)) = 2 * (rho 42738 * rho 42739) := by
      rw [hd0, hd1, hd2]
      linear_combination r4523
    have hd4 : rho 42752 * (2 - (rho 42739 * rho 42739 + rho 42738 * rho 42738 * (-1))) = rho 42739 * rho 42739 - rho 42738 * rho 42738 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4524
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX119 rho : Seg45.F), (seg45AccY119 rho : Seg45.F)⟩
      ⟨(rho 42738 : Seg45.F), (rho 42739 : Seg45.F)⟩
      ⟨(rho 42744 : Seg45.F), (rho 42745 : Seg45.F)⟩
      ⟨(seg45AccX120 rho : Seg45.F), (seg45AccY120 rho : Seg45.F)⟩
      ⟨(rho 42751 : Seg45.F), (rho 42752 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung119

theorem seg45_rows120 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4525 rho ∧ Seg45.relationRow4526 rho ∧ Seg45.relationRow4527 rho ∧ Seg45.relationRow4528 rho ∧ Seg45.relationRow4529 rho ∧ Seg45.relationRow4530 rho ∧ Seg45.relationRow4531 rho ∧ Seg45.relationRow4532 rho ∧ Seg45.relationRow4533 rho ∧ Seg45.relationRow4534 rho ∧ Seg45.relationRow4535 rho ∧ Seg45.relationRow4536 rho ∧ Seg45.relationRow4537 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4525, r4526, r4527, r4528, r4529, r4530, r4531, r4532, r4533, r4534, r4535, r4536, r4537, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4525, r4526, r4527, r4528, r4529, r4530, r4531, r4532, r4533, r4534, r4535, r4536, r4537⟩

theorem seg45_rung120 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41068 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX120 rho : Seg45.F), (seg45AccY120 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42751 : Seg45.F), (rho 42752 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX120 rho : Seg45.F), (seg45AccY120 rho : Seg45.F)⟩
        ⟨(rho 42751 : Seg45.F), (rho 42752 : Seg45.F)⟩
        ⟨(seg45AccX121 rho : Seg45.F), (seg45AccY121 rho : Seg45.F)⟩
        ⟨(rho 42764 : Seg45.F), (rho 42765 : Seg45.F)⟩ := by
  obtain ⟨r4525, r4526, r4527, r4528, r4529, r4530, r4531, r4532, r4533, r4534, r4535, r4536, r4537⟩ := seg45_rows120 rho h
  unfold Seg45.relationRow4525 at r4525
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4525
  unfold Seg45.relationRow4526 at r4526
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4526
  unfold Seg45.relationRow4527 at r4527
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4527
  unfold Seg45.relationRow4528 at r4528
  unfold Seg45.relationRow4529 at r4529
  unfold Seg45.relationRow4530 at r4530
  unfold Seg45.relationRow4531 at r4531
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4531
  unfold Seg45.relationRow4532 at r4532
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4532
  unfold Seg45.relationRow4533 at r4533
  unfold Seg45.relationRow4534 at r4534
  unfold Seg45.relationRow4535 at r4535
  unfold Seg45.relationRow4536 at r4536
  unfold Seg45.relationRow4537 at r4537
  have hrung120 (bit : Bool) (hbit : rho 41068 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX120 rho : Seg45.F), (seg45AccY120 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42751 : Seg45.F), (rho 42752 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX120 rho : Seg45.F), (seg45AccY120 rho : Seg45.F)⟩
        ⟨(rho 42751 : Seg45.F), (rho 42752 : Seg45.F)⟩
        ⟨(seg45AccX121 rho : Seg45.F), (seg45AccY121 rho : Seg45.F)⟩
        ⟨(rho 42764 : Seg45.F), (rho 42765 : Seg45.F)⟩ := by
    have hnextx : seg45AccX121 rho = seg45AccX120 rho + rho 42759 := by
      unfold seg45AccX121 seg45AccX120
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 120]
      ring
    have hnexty : seg45AccY121 rho = seg45AccY120 rho + rho 42760 := by
      unfold seg45AccY121 seg45AccY120
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 120]
      ring
    have ha0 : (rho 42751 + rho 42752) * (seg45AccX120 rho + seg45AccY120 rho) = rho 42753 := by
      unfold seg45AccX120 seg45AccY120
      linear_combination r4525
    have ha1 : rho 42752 * seg45AccX120 rho = rho 42754 := by
      unfold seg45AccX120
      linear_combination r4526
    have ha2 : rho 42751 * seg45AccY120 rho = rho 42755 := by
      unfold seg45AccY120
      linear_combination r4527
    have ha3 : 3021 * rho 42754 * rho 42755 = rho 42756 := by
      linear_combination r4528
    have ha4 : rho 42757 * (1 + rho 42756) = rho 42754 + rho 42755 := by
      linear_combination r4529
    have ha5 : rho 42758 * (1 - rho 42756) = rho 42753 - rho 42754 - rho 42755 := by
      linear_combination r4530
    have haddx :
        rho 42757 * (1 + 3021 * (rho 42752 * seg45AccX120 rho) * (rho 42751 * seg45AccY120 rho)) =
          rho 42752 * seg45AccX120 rho + rho 42751 * seg45AccY120 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42758 * (1 - 3021 * (rho 42752 * seg45AccX120 rho) * (rho 42751 * seg45AccY120 rho)) =
          (-1) * (rho 42752 * seg45AccX120 rho) - rho 42751 * seg45AccY120 rho +
            (seg45AccY120 rho - seg45AccX120 rho * (-1)) * (rho 42751 + rho 42752) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42758 * (1 - rho 42756) = rho 42753 - rho 42754 - rho 42755 := ha5
        _ = (-1) * rho 42754 - rho 42755 + (seg45AccY120 rho - seg45AccX120 rho * (-1)) * (rho 42751 + rho 42752) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX121 rho = seg45AccX120 rho - Bool.toZMod bit * (seg45AccX120 rho - rho 42757) := by
      have hd : rho 42759 = Bool.toZMod bit * (rho 42757 - seg45AccX120 rho) := by
        rw [← hbit]
        unfold seg45AccX120
        linear_combination -r4531
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY121 rho = seg45AccY120 rho - Bool.toZMod bit * (seg45AccY120 rho - rho 42758) := by
      have hd : rho 42760 = Bool.toZMod bit * (rho 42758 - seg45AccY120 rho) := by
        rw [← hbit]
        unfold seg45AccY120
        linear_combination -r4532
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42751 * rho 42752 = rho 42761 := by linear_combination r4533
    have hd1 : rho 42751 * rho 42751 = rho 42762 := by linear_combination r4534
    have hd2 : rho 42752 * rho 42752 = rho 42763 := by linear_combination r4535
    have hd3 : rho 42764 * (rho 42752 * rho 42752 + rho 42751 * rho 42751 * (-1)) = 2 * (rho 42751 * rho 42752) := by
      rw [hd0, hd1, hd2]
      linear_combination r4536
    have hd4 : rho 42765 * (2 - (rho 42752 * rho 42752 + rho 42751 * rho 42751 * (-1))) = rho 42752 * rho 42752 - rho 42751 * rho 42751 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4537
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX120 rho : Seg45.F), (seg45AccY120 rho : Seg45.F)⟩
      ⟨(rho 42751 : Seg45.F), (rho 42752 : Seg45.F)⟩
      ⟨(rho 42757 : Seg45.F), (rho 42758 : Seg45.F)⟩
      ⟨(seg45AccX121 rho : Seg45.F), (seg45AccY121 rho : Seg45.F)⟩
      ⟨(rho 42764 : Seg45.F), (rho 42765 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung120

theorem seg45_hstep_c10 (rho : Nat -> Seg45.F) (h : Seg45.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (40948 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 110 ≤ i → i < 121 →
      EdwardsBridge.onCurve (seg45LadderAccState rho i) →
      EdwardsBridge.onCurve (seg45LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg45LadderAccState rho i) (seg45LadderCurState rho i)
        (seg45LadderAccState rho (i + 1)) (seg45LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg45_rung110 rho h bits[110]! (hbitAt 110 (by omega)) hacc hcur
  · exact seg45_rung111 rho h bits[111]! (hbitAt 111 (by omega)) hacc hcur
  · exact seg45_rung112 rho h bits[112]! (hbitAt 112 (by omega)) hacc hcur
  · exact seg45_rung113 rho h bits[113]! (hbitAt 113 (by omega)) hacc hcur
  · exact seg45_rung114 rho h bits[114]! (hbitAt 114 (by omega)) hacc hcur
  · exact seg45_rung115 rho h bits[115]! (hbitAt 115 (by omega)) hacc hcur
  · exact seg45_rung116 rho h bits[116]! (hbitAt 116 (by omega)) hacc hcur
  · exact seg45_rung117 rho h bits[117]! (hbitAt 117 (by omega)) hacc hcur
  · exact seg45_rung118 rho h bits[118]! (hbitAt 118 (by omega)) hacc hcur
  · exact seg45_rung119 rho h bits[119]! (hbitAt 119 (by omega)) hacc hcur
  · exact seg45_rung120 rho h bits[120]! (hbitAt 120 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
