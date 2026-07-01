import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg45_rows33 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3394 rho ∧ Seg45.relationRow3395 rho ∧ Seg45.relationRow3396 rho ∧ Seg45.relationRow3397 rho ∧ Seg45.relationRow3398 rho ∧ Seg45.relationRow3399 rho ∧ Seg45.relationRow3400 rho ∧ Seg45.relationRow3401 rho ∧ Seg45.relationRow3402 rho ∧ Seg45.relationRow3403 rho ∧ Seg45.relationRow3404 rho ∧ Seg45.relationRow3405 rho ∧ Seg45.relationRow3406 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p42, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3394, r3395, r3396, r3397, r3398, r3399, r3400, r3401, r3402, r3403, r3404, r3405, r3406, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3394, r3395, r3396, r3397, r3398, r3399, r3400, r3401, r3402, r3403, r3404, r3405, r3406⟩

theorem seg45_rung33 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40981 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX33 rho : Seg45.F), (seg45AccY33 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41620 : Seg45.F), (rho 41621 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX33 rho : Seg45.F), (seg45AccY33 rho : Seg45.F)⟩
        ⟨(rho 41620 : Seg45.F), (rho 41621 : Seg45.F)⟩
        ⟨(seg45AccX34 rho : Seg45.F), (seg45AccY34 rho : Seg45.F)⟩
        ⟨(rho 41633 : Seg45.F), (rho 41634 : Seg45.F)⟩ := by
  obtain ⟨r3394, r3395, r3396, r3397, r3398, r3399, r3400, r3401, r3402, r3403, r3404, r3405, r3406⟩ := seg45_rows33 rho h
  unfold Seg45.relationRow3394 at r3394
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3394
  unfold Seg45.relationRow3395 at r3395
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3395
  unfold Seg45.relationRow3396 at r3396
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3396
  unfold Seg45.relationRow3397 at r3397
  unfold Seg45.relationRow3398 at r3398
  unfold Seg45.relationRow3399 at r3399
  unfold Seg45.relationRow3400 at r3400
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3400
  unfold Seg45.relationRow3401 at r3401
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3401
  unfold Seg45.relationRow3402 at r3402
  unfold Seg45.relationRow3403 at r3403
  unfold Seg45.relationRow3404 at r3404
  unfold Seg45.relationRow3405 at r3405
  unfold Seg45.relationRow3406 at r3406
  have hrung33 (bit : Bool) (hbit : rho 40981 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX33 rho : Seg45.F), (seg45AccY33 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41620 : Seg45.F), (rho 41621 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX33 rho : Seg45.F), (seg45AccY33 rho : Seg45.F)⟩
        ⟨(rho 41620 : Seg45.F), (rho 41621 : Seg45.F)⟩
        ⟨(seg45AccX34 rho : Seg45.F), (seg45AccY34 rho : Seg45.F)⟩
        ⟨(rho 41633 : Seg45.F), (rho 41634 : Seg45.F)⟩ := by
    have hnextx : seg45AccX34 rho = seg45AccX33 rho + rho 41628 := by
      unfold seg45AccX34 seg45AccX33
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 33]
      ring
    have hnexty : seg45AccY34 rho = seg45AccY33 rho + rho 41629 := by
      unfold seg45AccY34 seg45AccY33
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 33]
      ring
    have ha0 : (rho 41620 + rho 41621) * (seg45AccX33 rho + seg45AccY33 rho) = rho 41622 := by
      unfold seg45AccX33 seg45AccY33
      linear_combination r3394
    have ha1 : rho 41621 * seg45AccX33 rho = rho 41623 := by
      unfold seg45AccX33
      linear_combination r3395
    have ha2 : rho 41620 * seg45AccY33 rho = rho 41624 := by
      unfold seg45AccY33
      linear_combination r3396
    have ha3 : 3021 * rho 41623 * rho 41624 = rho 41625 := by
      linear_combination r3397
    have ha4 : rho 41626 * (1 + rho 41625) = rho 41623 + rho 41624 := by
      linear_combination r3398
    have ha5 : rho 41627 * (1 - rho 41625) = rho 41622 - rho 41623 - rho 41624 := by
      linear_combination r3399
    have haddx :
        rho 41626 * (1 + 3021 * (rho 41621 * seg45AccX33 rho) * (rho 41620 * seg45AccY33 rho)) =
          rho 41621 * seg45AccX33 rho + rho 41620 * seg45AccY33 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41627 * (1 - 3021 * (rho 41621 * seg45AccX33 rho) * (rho 41620 * seg45AccY33 rho)) =
          (-1) * (rho 41621 * seg45AccX33 rho) - rho 41620 * seg45AccY33 rho +
            (seg45AccY33 rho - seg45AccX33 rho * (-1)) * (rho 41620 + rho 41621) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41627 * (1 - rho 41625) = rho 41622 - rho 41623 - rho 41624 := ha5
        _ = (-1) * rho 41623 - rho 41624 + (seg45AccY33 rho - seg45AccX33 rho * (-1)) * (rho 41620 + rho 41621) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX34 rho = seg45AccX33 rho - Bool.toZMod bit * (seg45AccX33 rho - rho 41626) := by
      have hd : rho 41628 = Bool.toZMod bit * (rho 41626 - seg45AccX33 rho) := by
        rw [← hbit]
        unfold seg45AccX33
        linear_combination -r3400
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY34 rho = seg45AccY33 rho - Bool.toZMod bit * (seg45AccY33 rho - rho 41627) := by
      have hd : rho 41629 = Bool.toZMod bit * (rho 41627 - seg45AccY33 rho) := by
        rw [← hbit]
        unfold seg45AccY33
        linear_combination -r3401
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41620 * rho 41621 = rho 41630 := by linear_combination r3402
    have hd1 : rho 41620 * rho 41620 = rho 41631 := by linear_combination r3403
    have hd2 : rho 41621 * rho 41621 = rho 41632 := by linear_combination r3404
    have hd3 : rho 41633 * (rho 41621 * rho 41621 + rho 41620 * rho 41620 * (-1)) = 2 * (rho 41620 * rho 41621) := by
      rw [hd0, hd1, hd2]
      linear_combination r3405
    have hd4 : rho 41634 * (2 - (rho 41621 * rho 41621 + rho 41620 * rho 41620 * (-1))) = rho 41621 * rho 41621 - rho 41620 * rho 41620 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3406
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX33 rho : Seg45.F), (seg45AccY33 rho : Seg45.F)⟩
      ⟨(rho 41620 : Seg45.F), (rho 41621 : Seg45.F)⟩
      ⟨(rho 41626 : Seg45.F), (rho 41627 : Seg45.F)⟩
      ⟨(seg45AccX34 rho : Seg45.F), (seg45AccY34 rho : Seg45.F)⟩
      ⟨(rho 41633 : Seg45.F), (rho 41634 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung33

theorem seg45_rows34 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3407 rho ∧ Seg45.relationRow3408 rho ∧ Seg45.relationRow3409 rho ∧ Seg45.relationRow3410 rho ∧ Seg45.relationRow3411 rho ∧ Seg45.relationRow3412 rho ∧ Seg45.relationRow3413 rho ∧ Seg45.relationRow3414 rho ∧ Seg45.relationRow3415 rho ∧ Seg45.relationRow3416 rho ∧ Seg45.relationRow3417 rho ∧ Seg45.relationRow3418 rho ∧ Seg45.relationRow3419 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p42, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3407, r3408, r3409, r3410, r3411, r3412, r3413, r3414, r3415, r3416, r3417, r3418, r3419, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3407, r3408, r3409, r3410, r3411, r3412, r3413, r3414, r3415, r3416, r3417, r3418, r3419⟩

theorem seg45_rung34 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40982 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX34 rho : Seg45.F), (seg45AccY34 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41633 : Seg45.F), (rho 41634 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX34 rho : Seg45.F), (seg45AccY34 rho : Seg45.F)⟩
        ⟨(rho 41633 : Seg45.F), (rho 41634 : Seg45.F)⟩
        ⟨(seg45AccX35 rho : Seg45.F), (seg45AccY35 rho : Seg45.F)⟩
        ⟨(rho 41646 : Seg45.F), (rho 41647 : Seg45.F)⟩ := by
  obtain ⟨r3407, r3408, r3409, r3410, r3411, r3412, r3413, r3414, r3415, r3416, r3417, r3418, r3419⟩ := seg45_rows34 rho h
  unfold Seg45.relationRow3407 at r3407
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3407
  unfold Seg45.relationRow3408 at r3408
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3408
  unfold Seg45.relationRow3409 at r3409
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3409
  unfold Seg45.relationRow3410 at r3410
  unfold Seg45.relationRow3411 at r3411
  unfold Seg45.relationRow3412 at r3412
  unfold Seg45.relationRow3413 at r3413
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3413
  unfold Seg45.relationRow3414 at r3414
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3414
  unfold Seg45.relationRow3415 at r3415
  unfold Seg45.relationRow3416 at r3416
  unfold Seg45.relationRow3417 at r3417
  unfold Seg45.relationRow3418 at r3418
  unfold Seg45.relationRow3419 at r3419
  have hrung34 (bit : Bool) (hbit : rho 40982 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX34 rho : Seg45.F), (seg45AccY34 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41633 : Seg45.F), (rho 41634 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX34 rho : Seg45.F), (seg45AccY34 rho : Seg45.F)⟩
        ⟨(rho 41633 : Seg45.F), (rho 41634 : Seg45.F)⟩
        ⟨(seg45AccX35 rho : Seg45.F), (seg45AccY35 rho : Seg45.F)⟩
        ⟨(rho 41646 : Seg45.F), (rho 41647 : Seg45.F)⟩ := by
    have hnextx : seg45AccX35 rho = seg45AccX34 rho + rho 41641 := by
      unfold seg45AccX35 seg45AccX34
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 34]
      ring
    have hnexty : seg45AccY35 rho = seg45AccY34 rho + rho 41642 := by
      unfold seg45AccY35 seg45AccY34
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 34]
      ring
    have ha0 : (rho 41633 + rho 41634) * (seg45AccX34 rho + seg45AccY34 rho) = rho 41635 := by
      unfold seg45AccX34 seg45AccY34
      linear_combination r3407
    have ha1 : rho 41634 * seg45AccX34 rho = rho 41636 := by
      unfold seg45AccX34
      linear_combination r3408
    have ha2 : rho 41633 * seg45AccY34 rho = rho 41637 := by
      unfold seg45AccY34
      linear_combination r3409
    have ha3 : 3021 * rho 41636 * rho 41637 = rho 41638 := by
      linear_combination r3410
    have ha4 : rho 41639 * (1 + rho 41638) = rho 41636 + rho 41637 := by
      linear_combination r3411
    have ha5 : rho 41640 * (1 - rho 41638) = rho 41635 - rho 41636 - rho 41637 := by
      linear_combination r3412
    have haddx :
        rho 41639 * (1 + 3021 * (rho 41634 * seg45AccX34 rho) * (rho 41633 * seg45AccY34 rho)) =
          rho 41634 * seg45AccX34 rho + rho 41633 * seg45AccY34 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41640 * (1 - 3021 * (rho 41634 * seg45AccX34 rho) * (rho 41633 * seg45AccY34 rho)) =
          (-1) * (rho 41634 * seg45AccX34 rho) - rho 41633 * seg45AccY34 rho +
            (seg45AccY34 rho - seg45AccX34 rho * (-1)) * (rho 41633 + rho 41634) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41640 * (1 - rho 41638) = rho 41635 - rho 41636 - rho 41637 := ha5
        _ = (-1) * rho 41636 - rho 41637 + (seg45AccY34 rho - seg45AccX34 rho * (-1)) * (rho 41633 + rho 41634) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX35 rho = seg45AccX34 rho - Bool.toZMod bit * (seg45AccX34 rho - rho 41639) := by
      have hd : rho 41641 = Bool.toZMod bit * (rho 41639 - seg45AccX34 rho) := by
        rw [← hbit]
        unfold seg45AccX34
        linear_combination -r3413
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY35 rho = seg45AccY34 rho - Bool.toZMod bit * (seg45AccY34 rho - rho 41640) := by
      have hd : rho 41642 = Bool.toZMod bit * (rho 41640 - seg45AccY34 rho) := by
        rw [← hbit]
        unfold seg45AccY34
        linear_combination -r3414
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41633 * rho 41634 = rho 41643 := by linear_combination r3415
    have hd1 : rho 41633 * rho 41633 = rho 41644 := by linear_combination r3416
    have hd2 : rho 41634 * rho 41634 = rho 41645 := by linear_combination r3417
    have hd3 : rho 41646 * (rho 41634 * rho 41634 + rho 41633 * rho 41633 * (-1)) = 2 * (rho 41633 * rho 41634) := by
      rw [hd0, hd1, hd2]
      linear_combination r3418
    have hd4 : rho 41647 * (2 - (rho 41634 * rho 41634 + rho 41633 * rho 41633 * (-1))) = rho 41634 * rho 41634 - rho 41633 * rho 41633 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3419
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX34 rho : Seg45.F), (seg45AccY34 rho : Seg45.F)⟩
      ⟨(rho 41633 : Seg45.F), (rho 41634 : Seg45.F)⟩
      ⟨(rho 41639 : Seg45.F), (rho 41640 : Seg45.F)⟩
      ⟨(seg45AccX35 rho : Seg45.F), (seg45AccY35 rho : Seg45.F)⟩
      ⟨(rho 41646 : Seg45.F), (rho 41647 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung34

theorem seg45_rows35 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3420 rho ∧ Seg45.relationRow3421 rho ∧ Seg45.relationRow3422 rho ∧ Seg45.relationRow3423 rho ∧ Seg45.relationRow3424 rho ∧ Seg45.relationRow3425 rho ∧ Seg45.relationRow3426 rho ∧ Seg45.relationRow3427 rho ∧ Seg45.relationRow3428 rho ∧ Seg45.relationRow3429 rho ∧ Seg45.relationRow3430 rho ∧ Seg45.relationRow3431 rho ∧ Seg45.relationRow3432 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p42, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3420, r3421, r3422, r3423, r3424, r3425, r3426, r3427, r3428, r3429, r3430, r3431, r3432, _, _, _, _, _, _, _⟩
  exact ⟨r3420, r3421, r3422, r3423, r3424, r3425, r3426, r3427, r3428, r3429, r3430, r3431, r3432⟩

theorem seg45_rung35 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40983 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX35 rho : Seg45.F), (seg45AccY35 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41646 : Seg45.F), (rho 41647 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX35 rho : Seg45.F), (seg45AccY35 rho : Seg45.F)⟩
        ⟨(rho 41646 : Seg45.F), (rho 41647 : Seg45.F)⟩
        ⟨(seg45AccX36 rho : Seg45.F), (seg45AccY36 rho : Seg45.F)⟩
        ⟨(rho 41659 : Seg45.F), (rho 41660 : Seg45.F)⟩ := by
  obtain ⟨r3420, r3421, r3422, r3423, r3424, r3425, r3426, r3427, r3428, r3429, r3430, r3431, r3432⟩ := seg45_rows35 rho h
  unfold Seg45.relationRow3420 at r3420
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3420
  unfold Seg45.relationRow3421 at r3421
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3421
  unfold Seg45.relationRow3422 at r3422
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3422
  unfold Seg45.relationRow3423 at r3423
  unfold Seg45.relationRow3424 at r3424
  unfold Seg45.relationRow3425 at r3425
  unfold Seg45.relationRow3426 at r3426
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3426
  unfold Seg45.relationRow3427 at r3427
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3427
  unfold Seg45.relationRow3428 at r3428
  unfold Seg45.relationRow3429 at r3429
  unfold Seg45.relationRow3430 at r3430
  unfold Seg45.relationRow3431 at r3431
  unfold Seg45.relationRow3432 at r3432
  have hrung35 (bit : Bool) (hbit : rho 40983 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX35 rho : Seg45.F), (seg45AccY35 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41646 : Seg45.F), (rho 41647 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX35 rho : Seg45.F), (seg45AccY35 rho : Seg45.F)⟩
        ⟨(rho 41646 : Seg45.F), (rho 41647 : Seg45.F)⟩
        ⟨(seg45AccX36 rho : Seg45.F), (seg45AccY36 rho : Seg45.F)⟩
        ⟨(rho 41659 : Seg45.F), (rho 41660 : Seg45.F)⟩ := by
    have hnextx : seg45AccX36 rho = seg45AccX35 rho + rho 41654 := by
      unfold seg45AccX36 seg45AccX35
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 35]
      ring
    have hnexty : seg45AccY36 rho = seg45AccY35 rho + rho 41655 := by
      unfold seg45AccY36 seg45AccY35
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 35]
      ring
    have ha0 : (rho 41646 + rho 41647) * (seg45AccX35 rho + seg45AccY35 rho) = rho 41648 := by
      unfold seg45AccX35 seg45AccY35
      linear_combination r3420
    have ha1 : rho 41647 * seg45AccX35 rho = rho 41649 := by
      unfold seg45AccX35
      linear_combination r3421
    have ha2 : rho 41646 * seg45AccY35 rho = rho 41650 := by
      unfold seg45AccY35
      linear_combination r3422
    have ha3 : 3021 * rho 41649 * rho 41650 = rho 41651 := by
      linear_combination r3423
    have ha4 : rho 41652 * (1 + rho 41651) = rho 41649 + rho 41650 := by
      linear_combination r3424
    have ha5 : rho 41653 * (1 - rho 41651) = rho 41648 - rho 41649 - rho 41650 := by
      linear_combination r3425
    have haddx :
        rho 41652 * (1 + 3021 * (rho 41647 * seg45AccX35 rho) * (rho 41646 * seg45AccY35 rho)) =
          rho 41647 * seg45AccX35 rho + rho 41646 * seg45AccY35 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41653 * (1 - 3021 * (rho 41647 * seg45AccX35 rho) * (rho 41646 * seg45AccY35 rho)) =
          (-1) * (rho 41647 * seg45AccX35 rho) - rho 41646 * seg45AccY35 rho +
            (seg45AccY35 rho - seg45AccX35 rho * (-1)) * (rho 41646 + rho 41647) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41653 * (1 - rho 41651) = rho 41648 - rho 41649 - rho 41650 := ha5
        _ = (-1) * rho 41649 - rho 41650 + (seg45AccY35 rho - seg45AccX35 rho * (-1)) * (rho 41646 + rho 41647) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX36 rho = seg45AccX35 rho - Bool.toZMod bit * (seg45AccX35 rho - rho 41652) := by
      have hd : rho 41654 = Bool.toZMod bit * (rho 41652 - seg45AccX35 rho) := by
        rw [← hbit]
        unfold seg45AccX35
        linear_combination -r3426
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY36 rho = seg45AccY35 rho - Bool.toZMod bit * (seg45AccY35 rho - rho 41653) := by
      have hd : rho 41655 = Bool.toZMod bit * (rho 41653 - seg45AccY35 rho) := by
        rw [← hbit]
        unfold seg45AccY35
        linear_combination -r3427
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41646 * rho 41647 = rho 41656 := by linear_combination r3428
    have hd1 : rho 41646 * rho 41646 = rho 41657 := by linear_combination r3429
    have hd2 : rho 41647 * rho 41647 = rho 41658 := by linear_combination r3430
    have hd3 : rho 41659 * (rho 41647 * rho 41647 + rho 41646 * rho 41646 * (-1)) = 2 * (rho 41646 * rho 41647) := by
      rw [hd0, hd1, hd2]
      linear_combination r3431
    have hd4 : rho 41660 * (2 - (rho 41647 * rho 41647 + rho 41646 * rho 41646 * (-1))) = rho 41647 * rho 41647 - rho 41646 * rho 41646 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3432
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX35 rho : Seg45.F), (seg45AccY35 rho : Seg45.F)⟩
      ⟨(rho 41646 : Seg45.F), (rho 41647 : Seg45.F)⟩
      ⟨(rho 41652 : Seg45.F), (rho 41653 : Seg45.F)⟩
      ⟨(seg45AccX36 rho : Seg45.F), (seg45AccY36 rho : Seg45.F)⟩
      ⟨(rho 41659 : Seg45.F), (rho 41660 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung35

theorem seg45_rows36 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3433 rho ∧ Seg45.relationRow3434 rho ∧ Seg45.relationRow3435 rho ∧ Seg45.relationRow3436 rho ∧ Seg45.relationRow3437 rho ∧ Seg45.relationRow3438 rho ∧ Seg45.relationRow3439 rho ∧ Seg45.relationRow3440 rho ∧ Seg45.relationRow3441 rho ∧ Seg45.relationRow3442 rho ∧ Seg45.relationRow3443 rho ∧ Seg45.relationRow3444 rho ∧ Seg45.relationRow3445 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p42, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3433, r3434, r3435, r3436, r3437, r3438, r3439⟩
  unfold Seg45.relationPart43 at p43
  rcases p43 with ⟨r3440, r3441, r3442, r3443, r3444, r3445, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3433, r3434, r3435, r3436, r3437, r3438, r3439, r3440, r3441, r3442, r3443, r3444, r3445⟩

theorem seg45_rung36 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40984 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX36 rho : Seg45.F), (seg45AccY36 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41659 : Seg45.F), (rho 41660 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX36 rho : Seg45.F), (seg45AccY36 rho : Seg45.F)⟩
        ⟨(rho 41659 : Seg45.F), (rho 41660 : Seg45.F)⟩
        ⟨(seg45AccX37 rho : Seg45.F), (seg45AccY37 rho : Seg45.F)⟩
        ⟨(rho 41672 : Seg45.F), (rho 41673 : Seg45.F)⟩ := by
  obtain ⟨r3433, r3434, r3435, r3436, r3437, r3438, r3439, r3440, r3441, r3442, r3443, r3444, r3445⟩ := seg45_rows36 rho h
  unfold Seg45.relationRow3433 at r3433
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3433
  unfold Seg45.relationRow3434 at r3434
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3434
  unfold Seg45.relationRow3435 at r3435
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3435
  unfold Seg45.relationRow3436 at r3436
  unfold Seg45.relationRow3437 at r3437
  unfold Seg45.relationRow3438 at r3438
  unfold Seg45.relationRow3439 at r3439
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3439
  unfold Seg45.relationRow3440 at r3440
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3440
  unfold Seg45.relationRow3441 at r3441
  unfold Seg45.relationRow3442 at r3442
  unfold Seg45.relationRow3443 at r3443
  unfold Seg45.relationRow3444 at r3444
  unfold Seg45.relationRow3445 at r3445
  have hrung36 (bit : Bool) (hbit : rho 40984 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX36 rho : Seg45.F), (seg45AccY36 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41659 : Seg45.F), (rho 41660 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX36 rho : Seg45.F), (seg45AccY36 rho : Seg45.F)⟩
        ⟨(rho 41659 : Seg45.F), (rho 41660 : Seg45.F)⟩
        ⟨(seg45AccX37 rho : Seg45.F), (seg45AccY37 rho : Seg45.F)⟩
        ⟨(rho 41672 : Seg45.F), (rho 41673 : Seg45.F)⟩ := by
    have hnextx : seg45AccX37 rho = seg45AccX36 rho + rho 41667 := by
      unfold seg45AccX37 seg45AccX36
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 36]
      ring
    have hnexty : seg45AccY37 rho = seg45AccY36 rho + rho 41668 := by
      unfold seg45AccY37 seg45AccY36
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 36]
      ring
    have ha0 : (rho 41659 + rho 41660) * (seg45AccX36 rho + seg45AccY36 rho) = rho 41661 := by
      unfold seg45AccX36 seg45AccY36
      linear_combination r3433
    have ha1 : rho 41660 * seg45AccX36 rho = rho 41662 := by
      unfold seg45AccX36
      linear_combination r3434
    have ha2 : rho 41659 * seg45AccY36 rho = rho 41663 := by
      unfold seg45AccY36
      linear_combination r3435
    have ha3 : 3021 * rho 41662 * rho 41663 = rho 41664 := by
      linear_combination r3436
    have ha4 : rho 41665 * (1 + rho 41664) = rho 41662 + rho 41663 := by
      linear_combination r3437
    have ha5 : rho 41666 * (1 - rho 41664) = rho 41661 - rho 41662 - rho 41663 := by
      linear_combination r3438
    have haddx :
        rho 41665 * (1 + 3021 * (rho 41660 * seg45AccX36 rho) * (rho 41659 * seg45AccY36 rho)) =
          rho 41660 * seg45AccX36 rho + rho 41659 * seg45AccY36 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41666 * (1 - 3021 * (rho 41660 * seg45AccX36 rho) * (rho 41659 * seg45AccY36 rho)) =
          (-1) * (rho 41660 * seg45AccX36 rho) - rho 41659 * seg45AccY36 rho +
            (seg45AccY36 rho - seg45AccX36 rho * (-1)) * (rho 41659 + rho 41660) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41666 * (1 - rho 41664) = rho 41661 - rho 41662 - rho 41663 := ha5
        _ = (-1) * rho 41662 - rho 41663 + (seg45AccY36 rho - seg45AccX36 rho * (-1)) * (rho 41659 + rho 41660) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX37 rho = seg45AccX36 rho - Bool.toZMod bit * (seg45AccX36 rho - rho 41665) := by
      have hd : rho 41667 = Bool.toZMod bit * (rho 41665 - seg45AccX36 rho) := by
        rw [← hbit]
        unfold seg45AccX36
        linear_combination -r3439
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY37 rho = seg45AccY36 rho - Bool.toZMod bit * (seg45AccY36 rho - rho 41666) := by
      have hd : rho 41668 = Bool.toZMod bit * (rho 41666 - seg45AccY36 rho) := by
        rw [← hbit]
        unfold seg45AccY36
        linear_combination -r3440
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41659 * rho 41660 = rho 41669 := by linear_combination r3441
    have hd1 : rho 41659 * rho 41659 = rho 41670 := by linear_combination r3442
    have hd2 : rho 41660 * rho 41660 = rho 41671 := by linear_combination r3443
    have hd3 : rho 41672 * (rho 41660 * rho 41660 + rho 41659 * rho 41659 * (-1)) = 2 * (rho 41659 * rho 41660) := by
      rw [hd0, hd1, hd2]
      linear_combination r3444
    have hd4 : rho 41673 * (2 - (rho 41660 * rho 41660 + rho 41659 * rho 41659 * (-1))) = rho 41660 * rho 41660 - rho 41659 * rho 41659 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3445
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX36 rho : Seg45.F), (seg45AccY36 rho : Seg45.F)⟩
      ⟨(rho 41659 : Seg45.F), (rho 41660 : Seg45.F)⟩
      ⟨(rho 41665 : Seg45.F), (rho 41666 : Seg45.F)⟩
      ⟨(seg45AccX37 rho : Seg45.F), (seg45AccY37 rho : Seg45.F)⟩
      ⟨(rho 41672 : Seg45.F), (rho 41673 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung36

theorem seg45_rows37 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3446 rho ∧ Seg45.relationRow3447 rho ∧ Seg45.relationRow3448 rho ∧ Seg45.relationRow3449 rho ∧ Seg45.relationRow3450 rho ∧ Seg45.relationRow3451 rho ∧ Seg45.relationRow3452 rho ∧ Seg45.relationRow3453 rho ∧ Seg45.relationRow3454 rho ∧ Seg45.relationRow3455 rho ∧ Seg45.relationRow3456 rho ∧ Seg45.relationRow3457 rho ∧ Seg45.relationRow3458 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, r3446, r3447, r3448, r3449, r3450, r3451, r3452, r3453, r3454, r3455, r3456, r3457, r3458, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3446, r3447, r3448, r3449, r3450, r3451, r3452, r3453, r3454, r3455, r3456, r3457, r3458⟩

theorem seg45_rung37 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40985 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX37 rho : Seg45.F), (seg45AccY37 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41672 : Seg45.F), (rho 41673 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX37 rho : Seg45.F), (seg45AccY37 rho : Seg45.F)⟩
        ⟨(rho 41672 : Seg45.F), (rho 41673 : Seg45.F)⟩
        ⟨(seg45AccX38 rho : Seg45.F), (seg45AccY38 rho : Seg45.F)⟩
        ⟨(rho 41685 : Seg45.F), (rho 41686 : Seg45.F)⟩ := by
  obtain ⟨r3446, r3447, r3448, r3449, r3450, r3451, r3452, r3453, r3454, r3455, r3456, r3457, r3458⟩ := seg45_rows37 rho h
  unfold Seg45.relationRow3446 at r3446
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3446
  unfold Seg45.relationRow3447 at r3447
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3447
  unfold Seg45.relationRow3448 at r3448
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3448
  unfold Seg45.relationRow3449 at r3449
  unfold Seg45.relationRow3450 at r3450
  unfold Seg45.relationRow3451 at r3451
  unfold Seg45.relationRow3452 at r3452
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3452
  unfold Seg45.relationRow3453 at r3453
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3453
  unfold Seg45.relationRow3454 at r3454
  unfold Seg45.relationRow3455 at r3455
  unfold Seg45.relationRow3456 at r3456
  unfold Seg45.relationRow3457 at r3457
  unfold Seg45.relationRow3458 at r3458
  have hrung37 (bit : Bool) (hbit : rho 40985 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX37 rho : Seg45.F), (seg45AccY37 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41672 : Seg45.F), (rho 41673 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX37 rho : Seg45.F), (seg45AccY37 rho : Seg45.F)⟩
        ⟨(rho 41672 : Seg45.F), (rho 41673 : Seg45.F)⟩
        ⟨(seg45AccX38 rho : Seg45.F), (seg45AccY38 rho : Seg45.F)⟩
        ⟨(rho 41685 : Seg45.F), (rho 41686 : Seg45.F)⟩ := by
    have hnextx : seg45AccX38 rho = seg45AccX37 rho + rho 41680 := by
      unfold seg45AccX38 seg45AccX37
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 37]
      ring
    have hnexty : seg45AccY38 rho = seg45AccY37 rho + rho 41681 := by
      unfold seg45AccY38 seg45AccY37
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 37]
      ring
    have ha0 : (rho 41672 + rho 41673) * (seg45AccX37 rho + seg45AccY37 rho) = rho 41674 := by
      unfold seg45AccX37 seg45AccY37
      linear_combination r3446
    have ha1 : rho 41673 * seg45AccX37 rho = rho 41675 := by
      unfold seg45AccX37
      linear_combination r3447
    have ha2 : rho 41672 * seg45AccY37 rho = rho 41676 := by
      unfold seg45AccY37
      linear_combination r3448
    have ha3 : 3021 * rho 41675 * rho 41676 = rho 41677 := by
      linear_combination r3449
    have ha4 : rho 41678 * (1 + rho 41677) = rho 41675 + rho 41676 := by
      linear_combination r3450
    have ha5 : rho 41679 * (1 - rho 41677) = rho 41674 - rho 41675 - rho 41676 := by
      linear_combination r3451
    have haddx :
        rho 41678 * (1 + 3021 * (rho 41673 * seg45AccX37 rho) * (rho 41672 * seg45AccY37 rho)) =
          rho 41673 * seg45AccX37 rho + rho 41672 * seg45AccY37 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41679 * (1 - 3021 * (rho 41673 * seg45AccX37 rho) * (rho 41672 * seg45AccY37 rho)) =
          (-1) * (rho 41673 * seg45AccX37 rho) - rho 41672 * seg45AccY37 rho +
            (seg45AccY37 rho - seg45AccX37 rho * (-1)) * (rho 41672 + rho 41673) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41679 * (1 - rho 41677) = rho 41674 - rho 41675 - rho 41676 := ha5
        _ = (-1) * rho 41675 - rho 41676 + (seg45AccY37 rho - seg45AccX37 rho * (-1)) * (rho 41672 + rho 41673) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX38 rho = seg45AccX37 rho - Bool.toZMod bit * (seg45AccX37 rho - rho 41678) := by
      have hd : rho 41680 = Bool.toZMod bit * (rho 41678 - seg45AccX37 rho) := by
        rw [← hbit]
        unfold seg45AccX37
        linear_combination -r3452
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY38 rho = seg45AccY37 rho - Bool.toZMod bit * (seg45AccY37 rho - rho 41679) := by
      have hd : rho 41681 = Bool.toZMod bit * (rho 41679 - seg45AccY37 rho) := by
        rw [← hbit]
        unfold seg45AccY37
        linear_combination -r3453
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41672 * rho 41673 = rho 41682 := by linear_combination r3454
    have hd1 : rho 41672 * rho 41672 = rho 41683 := by linear_combination r3455
    have hd2 : rho 41673 * rho 41673 = rho 41684 := by linear_combination r3456
    have hd3 : rho 41685 * (rho 41673 * rho 41673 + rho 41672 * rho 41672 * (-1)) = 2 * (rho 41672 * rho 41673) := by
      rw [hd0, hd1, hd2]
      linear_combination r3457
    have hd4 : rho 41686 * (2 - (rho 41673 * rho 41673 + rho 41672 * rho 41672 * (-1))) = rho 41673 * rho 41673 - rho 41672 * rho 41672 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3458
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX37 rho : Seg45.F), (seg45AccY37 rho : Seg45.F)⟩
      ⟨(rho 41672 : Seg45.F), (rho 41673 : Seg45.F)⟩
      ⟨(rho 41678 : Seg45.F), (rho 41679 : Seg45.F)⟩
      ⟨(seg45AccX38 rho : Seg45.F), (seg45AccY38 rho : Seg45.F)⟩
      ⟨(rho 41685 : Seg45.F), (rho 41686 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung37

theorem seg45_rows38 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3459 rho ∧ Seg45.relationRow3460 rho ∧ Seg45.relationRow3461 rho ∧ Seg45.relationRow3462 rho ∧ Seg45.relationRow3463 rho ∧ Seg45.relationRow3464 rho ∧ Seg45.relationRow3465 rho ∧ Seg45.relationRow3466 rho ∧ Seg45.relationRow3467 rho ∧ Seg45.relationRow3468 rho ∧ Seg45.relationRow3469 rho ∧ Seg45.relationRow3470 rho ∧ Seg45.relationRow3471 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3459, r3460, r3461, r3462, r3463, r3464, r3465, r3466, r3467, r3468, r3469, r3470, r3471, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3459, r3460, r3461, r3462, r3463, r3464, r3465, r3466, r3467, r3468, r3469, r3470, r3471⟩

theorem seg45_rung38 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40986 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX38 rho : Seg45.F), (seg45AccY38 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41685 : Seg45.F), (rho 41686 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX38 rho : Seg45.F), (seg45AccY38 rho : Seg45.F)⟩
        ⟨(rho 41685 : Seg45.F), (rho 41686 : Seg45.F)⟩
        ⟨(seg45AccX39 rho : Seg45.F), (seg45AccY39 rho : Seg45.F)⟩
        ⟨(rho 41698 : Seg45.F), (rho 41699 : Seg45.F)⟩ := by
  obtain ⟨r3459, r3460, r3461, r3462, r3463, r3464, r3465, r3466, r3467, r3468, r3469, r3470, r3471⟩ := seg45_rows38 rho h
  unfold Seg45.relationRow3459 at r3459
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3459
  unfold Seg45.relationRow3460 at r3460
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3460
  unfold Seg45.relationRow3461 at r3461
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3461
  unfold Seg45.relationRow3462 at r3462
  unfold Seg45.relationRow3463 at r3463
  unfold Seg45.relationRow3464 at r3464
  unfold Seg45.relationRow3465 at r3465
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3465
  unfold Seg45.relationRow3466 at r3466
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3466
  unfold Seg45.relationRow3467 at r3467
  unfold Seg45.relationRow3468 at r3468
  unfold Seg45.relationRow3469 at r3469
  unfold Seg45.relationRow3470 at r3470
  unfold Seg45.relationRow3471 at r3471
  have hrung38 (bit : Bool) (hbit : rho 40986 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX38 rho : Seg45.F), (seg45AccY38 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41685 : Seg45.F), (rho 41686 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX38 rho : Seg45.F), (seg45AccY38 rho : Seg45.F)⟩
        ⟨(rho 41685 : Seg45.F), (rho 41686 : Seg45.F)⟩
        ⟨(seg45AccX39 rho : Seg45.F), (seg45AccY39 rho : Seg45.F)⟩
        ⟨(rho 41698 : Seg45.F), (rho 41699 : Seg45.F)⟩ := by
    have hnextx : seg45AccX39 rho = seg45AccX38 rho + rho 41693 := by
      unfold seg45AccX39 seg45AccX38
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 38]
      ring
    have hnexty : seg45AccY39 rho = seg45AccY38 rho + rho 41694 := by
      unfold seg45AccY39 seg45AccY38
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 38]
      ring
    have ha0 : (rho 41685 + rho 41686) * (seg45AccX38 rho + seg45AccY38 rho) = rho 41687 := by
      unfold seg45AccX38 seg45AccY38
      linear_combination r3459
    have ha1 : rho 41686 * seg45AccX38 rho = rho 41688 := by
      unfold seg45AccX38
      linear_combination r3460
    have ha2 : rho 41685 * seg45AccY38 rho = rho 41689 := by
      unfold seg45AccY38
      linear_combination r3461
    have ha3 : 3021 * rho 41688 * rho 41689 = rho 41690 := by
      linear_combination r3462
    have ha4 : rho 41691 * (1 + rho 41690) = rho 41688 + rho 41689 := by
      linear_combination r3463
    have ha5 : rho 41692 * (1 - rho 41690) = rho 41687 - rho 41688 - rho 41689 := by
      linear_combination r3464
    have haddx :
        rho 41691 * (1 + 3021 * (rho 41686 * seg45AccX38 rho) * (rho 41685 * seg45AccY38 rho)) =
          rho 41686 * seg45AccX38 rho + rho 41685 * seg45AccY38 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41692 * (1 - 3021 * (rho 41686 * seg45AccX38 rho) * (rho 41685 * seg45AccY38 rho)) =
          (-1) * (rho 41686 * seg45AccX38 rho) - rho 41685 * seg45AccY38 rho +
            (seg45AccY38 rho - seg45AccX38 rho * (-1)) * (rho 41685 + rho 41686) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41692 * (1 - rho 41690) = rho 41687 - rho 41688 - rho 41689 := ha5
        _ = (-1) * rho 41688 - rho 41689 + (seg45AccY38 rho - seg45AccX38 rho * (-1)) * (rho 41685 + rho 41686) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX39 rho = seg45AccX38 rho - Bool.toZMod bit * (seg45AccX38 rho - rho 41691) := by
      have hd : rho 41693 = Bool.toZMod bit * (rho 41691 - seg45AccX38 rho) := by
        rw [← hbit]
        unfold seg45AccX38
        linear_combination -r3465
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY39 rho = seg45AccY38 rho - Bool.toZMod bit * (seg45AccY38 rho - rho 41692) := by
      have hd : rho 41694 = Bool.toZMod bit * (rho 41692 - seg45AccY38 rho) := by
        rw [← hbit]
        unfold seg45AccY38
        linear_combination -r3466
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41685 * rho 41686 = rho 41695 := by linear_combination r3467
    have hd1 : rho 41685 * rho 41685 = rho 41696 := by linear_combination r3468
    have hd2 : rho 41686 * rho 41686 = rho 41697 := by linear_combination r3469
    have hd3 : rho 41698 * (rho 41686 * rho 41686 + rho 41685 * rho 41685 * (-1)) = 2 * (rho 41685 * rho 41686) := by
      rw [hd0, hd1, hd2]
      linear_combination r3470
    have hd4 : rho 41699 * (2 - (rho 41686 * rho 41686 + rho 41685 * rho 41685 * (-1))) = rho 41686 * rho 41686 - rho 41685 * rho 41685 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3471
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX38 rho : Seg45.F), (seg45AccY38 rho : Seg45.F)⟩
      ⟨(rho 41685 : Seg45.F), (rho 41686 : Seg45.F)⟩
      ⟨(rho 41691 : Seg45.F), (rho 41692 : Seg45.F)⟩
      ⟨(seg45AccX39 rho : Seg45.F), (seg45AccY39 rho : Seg45.F)⟩
      ⟨(rho 41698 : Seg45.F), (rho 41699 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung38

theorem seg45_rows39 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3472 rho ∧ Seg45.relationRow3473 rho ∧ Seg45.relationRow3474 rho ∧ Seg45.relationRow3475 rho ∧ Seg45.relationRow3476 rho ∧ Seg45.relationRow3477 rho ∧ Seg45.relationRow3478 rho ∧ Seg45.relationRow3479 rho ∧ Seg45.relationRow3480 rho ∧ Seg45.relationRow3481 rho ∧ Seg45.relationRow3482 rho ∧ Seg45.relationRow3483 rho ∧ Seg45.relationRow3484 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3472, r3473, r3474, r3475, r3476, r3477, r3478, r3479, r3480, r3481, r3482, r3483, r3484, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3472, r3473, r3474, r3475, r3476, r3477, r3478, r3479, r3480, r3481, r3482, r3483, r3484⟩

theorem seg45_rung39 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40987 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX39 rho : Seg45.F), (seg45AccY39 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41698 : Seg45.F), (rho 41699 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX39 rho : Seg45.F), (seg45AccY39 rho : Seg45.F)⟩
        ⟨(rho 41698 : Seg45.F), (rho 41699 : Seg45.F)⟩
        ⟨(seg45AccX40 rho : Seg45.F), (seg45AccY40 rho : Seg45.F)⟩
        ⟨(rho 41711 : Seg45.F), (rho 41712 : Seg45.F)⟩ := by
  obtain ⟨r3472, r3473, r3474, r3475, r3476, r3477, r3478, r3479, r3480, r3481, r3482, r3483, r3484⟩ := seg45_rows39 rho h
  unfold Seg45.relationRow3472 at r3472
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3472
  unfold Seg45.relationRow3473 at r3473
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3473
  unfold Seg45.relationRow3474 at r3474
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3474
  unfold Seg45.relationRow3475 at r3475
  unfold Seg45.relationRow3476 at r3476
  unfold Seg45.relationRow3477 at r3477
  unfold Seg45.relationRow3478 at r3478
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3478
  unfold Seg45.relationRow3479 at r3479
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3479
  unfold Seg45.relationRow3480 at r3480
  unfold Seg45.relationRow3481 at r3481
  unfold Seg45.relationRow3482 at r3482
  unfold Seg45.relationRow3483 at r3483
  unfold Seg45.relationRow3484 at r3484
  have hrung39 (bit : Bool) (hbit : rho 40987 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX39 rho : Seg45.F), (seg45AccY39 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41698 : Seg45.F), (rho 41699 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX39 rho : Seg45.F), (seg45AccY39 rho : Seg45.F)⟩
        ⟨(rho 41698 : Seg45.F), (rho 41699 : Seg45.F)⟩
        ⟨(seg45AccX40 rho : Seg45.F), (seg45AccY40 rho : Seg45.F)⟩
        ⟨(rho 41711 : Seg45.F), (rho 41712 : Seg45.F)⟩ := by
    have hnextx : seg45AccX40 rho = seg45AccX39 rho + rho 41706 := by
      unfold seg45AccX40 seg45AccX39
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 39]
      ring
    have hnexty : seg45AccY40 rho = seg45AccY39 rho + rho 41707 := by
      unfold seg45AccY40 seg45AccY39
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 39]
      ring
    have ha0 : (rho 41698 + rho 41699) * (seg45AccX39 rho + seg45AccY39 rho) = rho 41700 := by
      unfold seg45AccX39 seg45AccY39
      linear_combination r3472
    have ha1 : rho 41699 * seg45AccX39 rho = rho 41701 := by
      unfold seg45AccX39
      linear_combination r3473
    have ha2 : rho 41698 * seg45AccY39 rho = rho 41702 := by
      unfold seg45AccY39
      linear_combination r3474
    have ha3 : 3021 * rho 41701 * rho 41702 = rho 41703 := by
      linear_combination r3475
    have ha4 : rho 41704 * (1 + rho 41703) = rho 41701 + rho 41702 := by
      linear_combination r3476
    have ha5 : rho 41705 * (1 - rho 41703) = rho 41700 - rho 41701 - rho 41702 := by
      linear_combination r3477
    have haddx :
        rho 41704 * (1 + 3021 * (rho 41699 * seg45AccX39 rho) * (rho 41698 * seg45AccY39 rho)) =
          rho 41699 * seg45AccX39 rho + rho 41698 * seg45AccY39 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41705 * (1 - 3021 * (rho 41699 * seg45AccX39 rho) * (rho 41698 * seg45AccY39 rho)) =
          (-1) * (rho 41699 * seg45AccX39 rho) - rho 41698 * seg45AccY39 rho +
            (seg45AccY39 rho - seg45AccX39 rho * (-1)) * (rho 41698 + rho 41699) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41705 * (1 - rho 41703) = rho 41700 - rho 41701 - rho 41702 := ha5
        _ = (-1) * rho 41701 - rho 41702 + (seg45AccY39 rho - seg45AccX39 rho * (-1)) * (rho 41698 + rho 41699) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX40 rho = seg45AccX39 rho - Bool.toZMod bit * (seg45AccX39 rho - rho 41704) := by
      have hd : rho 41706 = Bool.toZMod bit * (rho 41704 - seg45AccX39 rho) := by
        rw [← hbit]
        unfold seg45AccX39
        linear_combination -r3478
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY40 rho = seg45AccY39 rho - Bool.toZMod bit * (seg45AccY39 rho - rho 41705) := by
      have hd : rho 41707 = Bool.toZMod bit * (rho 41705 - seg45AccY39 rho) := by
        rw [← hbit]
        unfold seg45AccY39
        linear_combination -r3479
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41698 * rho 41699 = rho 41708 := by linear_combination r3480
    have hd1 : rho 41698 * rho 41698 = rho 41709 := by linear_combination r3481
    have hd2 : rho 41699 * rho 41699 = rho 41710 := by linear_combination r3482
    have hd3 : rho 41711 * (rho 41699 * rho 41699 + rho 41698 * rho 41698 * (-1)) = 2 * (rho 41698 * rho 41699) := by
      rw [hd0, hd1, hd2]
      linear_combination r3483
    have hd4 : rho 41712 * (2 - (rho 41699 * rho 41699 + rho 41698 * rho 41698 * (-1))) = rho 41699 * rho 41699 - rho 41698 * rho 41698 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3484
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX39 rho : Seg45.F), (seg45AccY39 rho : Seg45.F)⟩
      ⟨(rho 41698 : Seg45.F), (rho 41699 : Seg45.F)⟩
      ⟨(rho 41704 : Seg45.F), (rho 41705 : Seg45.F)⟩
      ⟨(seg45AccX40 rho : Seg45.F), (seg45AccY40 rho : Seg45.F)⟩
      ⟨(rho 41711 : Seg45.F), (rho 41712 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung39

theorem seg45_rows40 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3485 rho ∧ Seg45.relationRow3486 rho ∧ Seg45.relationRow3487 rho ∧ Seg45.relationRow3488 rho ∧ Seg45.relationRow3489 rho ∧ Seg45.relationRow3490 rho ∧ Seg45.relationRow3491 rho ∧ Seg45.relationRow3492 rho ∧ Seg45.relationRow3493 rho ∧ Seg45.relationRow3494 rho ∧ Seg45.relationRow3495 rho ∧ Seg45.relationRow3496 rho ∧ Seg45.relationRow3497 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3485, r3486, r3487, r3488, r3489, r3490, r3491, r3492, r3493, r3494, r3495, r3496, r3497, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3485, r3486, r3487, r3488, r3489, r3490, r3491, r3492, r3493, r3494, r3495, r3496, r3497⟩

theorem seg45_rung40 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40988 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX40 rho : Seg45.F), (seg45AccY40 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41711 : Seg45.F), (rho 41712 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX40 rho : Seg45.F), (seg45AccY40 rho : Seg45.F)⟩
        ⟨(rho 41711 : Seg45.F), (rho 41712 : Seg45.F)⟩
        ⟨(seg45AccX41 rho : Seg45.F), (seg45AccY41 rho : Seg45.F)⟩
        ⟨(rho 41724 : Seg45.F), (rho 41725 : Seg45.F)⟩ := by
  obtain ⟨r3485, r3486, r3487, r3488, r3489, r3490, r3491, r3492, r3493, r3494, r3495, r3496, r3497⟩ := seg45_rows40 rho h
  unfold Seg45.relationRow3485 at r3485
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3485
  unfold Seg45.relationRow3486 at r3486
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3486
  unfold Seg45.relationRow3487 at r3487
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3487
  unfold Seg45.relationRow3488 at r3488
  unfold Seg45.relationRow3489 at r3489
  unfold Seg45.relationRow3490 at r3490
  unfold Seg45.relationRow3491 at r3491
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3491
  unfold Seg45.relationRow3492 at r3492
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3492
  unfold Seg45.relationRow3493 at r3493
  unfold Seg45.relationRow3494 at r3494
  unfold Seg45.relationRow3495 at r3495
  unfold Seg45.relationRow3496 at r3496
  unfold Seg45.relationRow3497 at r3497
  have hrung40 (bit : Bool) (hbit : rho 40988 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX40 rho : Seg45.F), (seg45AccY40 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41711 : Seg45.F), (rho 41712 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX40 rho : Seg45.F), (seg45AccY40 rho : Seg45.F)⟩
        ⟨(rho 41711 : Seg45.F), (rho 41712 : Seg45.F)⟩
        ⟨(seg45AccX41 rho : Seg45.F), (seg45AccY41 rho : Seg45.F)⟩
        ⟨(rho 41724 : Seg45.F), (rho 41725 : Seg45.F)⟩ := by
    have hnextx : seg45AccX41 rho = seg45AccX40 rho + rho 41719 := by
      unfold seg45AccX41 seg45AccX40
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 40]
      ring
    have hnexty : seg45AccY41 rho = seg45AccY40 rho + rho 41720 := by
      unfold seg45AccY41 seg45AccY40
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 40]
      ring
    have ha0 : (rho 41711 + rho 41712) * (seg45AccX40 rho + seg45AccY40 rho) = rho 41713 := by
      unfold seg45AccX40 seg45AccY40
      linear_combination r3485
    have ha1 : rho 41712 * seg45AccX40 rho = rho 41714 := by
      unfold seg45AccX40
      linear_combination r3486
    have ha2 : rho 41711 * seg45AccY40 rho = rho 41715 := by
      unfold seg45AccY40
      linear_combination r3487
    have ha3 : 3021 * rho 41714 * rho 41715 = rho 41716 := by
      linear_combination r3488
    have ha4 : rho 41717 * (1 + rho 41716) = rho 41714 + rho 41715 := by
      linear_combination r3489
    have ha5 : rho 41718 * (1 - rho 41716) = rho 41713 - rho 41714 - rho 41715 := by
      linear_combination r3490
    have haddx :
        rho 41717 * (1 + 3021 * (rho 41712 * seg45AccX40 rho) * (rho 41711 * seg45AccY40 rho)) =
          rho 41712 * seg45AccX40 rho + rho 41711 * seg45AccY40 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41718 * (1 - 3021 * (rho 41712 * seg45AccX40 rho) * (rho 41711 * seg45AccY40 rho)) =
          (-1) * (rho 41712 * seg45AccX40 rho) - rho 41711 * seg45AccY40 rho +
            (seg45AccY40 rho - seg45AccX40 rho * (-1)) * (rho 41711 + rho 41712) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41718 * (1 - rho 41716) = rho 41713 - rho 41714 - rho 41715 := ha5
        _ = (-1) * rho 41714 - rho 41715 + (seg45AccY40 rho - seg45AccX40 rho * (-1)) * (rho 41711 + rho 41712) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX41 rho = seg45AccX40 rho - Bool.toZMod bit * (seg45AccX40 rho - rho 41717) := by
      have hd : rho 41719 = Bool.toZMod bit * (rho 41717 - seg45AccX40 rho) := by
        rw [← hbit]
        unfold seg45AccX40
        linear_combination -r3491
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY41 rho = seg45AccY40 rho - Bool.toZMod bit * (seg45AccY40 rho - rho 41718) := by
      have hd : rho 41720 = Bool.toZMod bit * (rho 41718 - seg45AccY40 rho) := by
        rw [← hbit]
        unfold seg45AccY40
        linear_combination -r3492
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41711 * rho 41712 = rho 41721 := by linear_combination r3493
    have hd1 : rho 41711 * rho 41711 = rho 41722 := by linear_combination r3494
    have hd2 : rho 41712 * rho 41712 = rho 41723 := by linear_combination r3495
    have hd3 : rho 41724 * (rho 41712 * rho 41712 + rho 41711 * rho 41711 * (-1)) = 2 * (rho 41711 * rho 41712) := by
      rw [hd0, hd1, hd2]
      linear_combination r3496
    have hd4 : rho 41725 * (2 - (rho 41712 * rho 41712 + rho 41711 * rho 41711 * (-1))) = rho 41712 * rho 41712 - rho 41711 * rho 41711 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3497
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX40 rho : Seg45.F), (seg45AccY40 rho : Seg45.F)⟩
      ⟨(rho 41711 : Seg45.F), (rho 41712 : Seg45.F)⟩
      ⟨(rho 41717 : Seg45.F), (rho 41718 : Seg45.F)⟩
      ⟨(seg45AccX41 rho : Seg45.F), (seg45AccY41 rho : Seg45.F)⟩
      ⟨(rho 41724 : Seg45.F), (rho 41725 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung40

theorem seg45_rows41 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3498 rho ∧ Seg45.relationRow3499 rho ∧ Seg45.relationRow3500 rho ∧ Seg45.relationRow3501 rho ∧ Seg45.relationRow3502 rho ∧ Seg45.relationRow3503 rho ∧ Seg45.relationRow3504 rho ∧ Seg45.relationRow3505 rho ∧ Seg45.relationRow3506 rho ∧ Seg45.relationRow3507 rho ∧ Seg45.relationRow3508 rho ∧ Seg45.relationRow3509 rho ∧ Seg45.relationRow3510 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3498, r3499, r3500, r3501, r3502, r3503, r3504, r3505, r3506, r3507, r3508, r3509, r3510, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3498, r3499, r3500, r3501, r3502, r3503, r3504, r3505, r3506, r3507, r3508, r3509, r3510⟩

theorem seg45_rung41 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40989 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX41 rho : Seg45.F), (seg45AccY41 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41724 : Seg45.F), (rho 41725 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX41 rho : Seg45.F), (seg45AccY41 rho : Seg45.F)⟩
        ⟨(rho 41724 : Seg45.F), (rho 41725 : Seg45.F)⟩
        ⟨(seg45AccX42 rho : Seg45.F), (seg45AccY42 rho : Seg45.F)⟩
        ⟨(rho 41737 : Seg45.F), (rho 41738 : Seg45.F)⟩ := by
  obtain ⟨r3498, r3499, r3500, r3501, r3502, r3503, r3504, r3505, r3506, r3507, r3508, r3509, r3510⟩ := seg45_rows41 rho h
  unfold Seg45.relationRow3498 at r3498
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3498
  unfold Seg45.relationRow3499 at r3499
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3499
  unfold Seg45.relationRow3500 at r3500
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3500
  unfold Seg45.relationRow3501 at r3501
  unfold Seg45.relationRow3502 at r3502
  unfold Seg45.relationRow3503 at r3503
  unfold Seg45.relationRow3504 at r3504
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3504
  unfold Seg45.relationRow3505 at r3505
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3505
  unfold Seg45.relationRow3506 at r3506
  unfold Seg45.relationRow3507 at r3507
  unfold Seg45.relationRow3508 at r3508
  unfold Seg45.relationRow3509 at r3509
  unfold Seg45.relationRow3510 at r3510
  have hrung41 (bit : Bool) (hbit : rho 40989 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX41 rho : Seg45.F), (seg45AccY41 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41724 : Seg45.F), (rho 41725 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX41 rho : Seg45.F), (seg45AccY41 rho : Seg45.F)⟩
        ⟨(rho 41724 : Seg45.F), (rho 41725 : Seg45.F)⟩
        ⟨(seg45AccX42 rho : Seg45.F), (seg45AccY42 rho : Seg45.F)⟩
        ⟨(rho 41737 : Seg45.F), (rho 41738 : Seg45.F)⟩ := by
    have hnextx : seg45AccX42 rho = seg45AccX41 rho + rho 41732 := by
      unfold seg45AccX42 seg45AccX41
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 41]
      ring
    have hnexty : seg45AccY42 rho = seg45AccY41 rho + rho 41733 := by
      unfold seg45AccY42 seg45AccY41
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 41]
      ring
    have ha0 : (rho 41724 + rho 41725) * (seg45AccX41 rho + seg45AccY41 rho) = rho 41726 := by
      unfold seg45AccX41 seg45AccY41
      linear_combination r3498
    have ha1 : rho 41725 * seg45AccX41 rho = rho 41727 := by
      unfold seg45AccX41
      linear_combination r3499
    have ha2 : rho 41724 * seg45AccY41 rho = rho 41728 := by
      unfold seg45AccY41
      linear_combination r3500
    have ha3 : 3021 * rho 41727 * rho 41728 = rho 41729 := by
      linear_combination r3501
    have ha4 : rho 41730 * (1 + rho 41729) = rho 41727 + rho 41728 := by
      linear_combination r3502
    have ha5 : rho 41731 * (1 - rho 41729) = rho 41726 - rho 41727 - rho 41728 := by
      linear_combination r3503
    have haddx :
        rho 41730 * (1 + 3021 * (rho 41725 * seg45AccX41 rho) * (rho 41724 * seg45AccY41 rho)) =
          rho 41725 * seg45AccX41 rho + rho 41724 * seg45AccY41 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41731 * (1 - 3021 * (rho 41725 * seg45AccX41 rho) * (rho 41724 * seg45AccY41 rho)) =
          (-1) * (rho 41725 * seg45AccX41 rho) - rho 41724 * seg45AccY41 rho +
            (seg45AccY41 rho - seg45AccX41 rho * (-1)) * (rho 41724 + rho 41725) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41731 * (1 - rho 41729) = rho 41726 - rho 41727 - rho 41728 := ha5
        _ = (-1) * rho 41727 - rho 41728 + (seg45AccY41 rho - seg45AccX41 rho * (-1)) * (rho 41724 + rho 41725) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX42 rho = seg45AccX41 rho - Bool.toZMod bit * (seg45AccX41 rho - rho 41730) := by
      have hd : rho 41732 = Bool.toZMod bit * (rho 41730 - seg45AccX41 rho) := by
        rw [← hbit]
        unfold seg45AccX41
        linear_combination -r3504
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY42 rho = seg45AccY41 rho - Bool.toZMod bit * (seg45AccY41 rho - rho 41731) := by
      have hd : rho 41733 = Bool.toZMod bit * (rho 41731 - seg45AccY41 rho) := by
        rw [← hbit]
        unfold seg45AccY41
        linear_combination -r3505
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41724 * rho 41725 = rho 41734 := by linear_combination r3506
    have hd1 : rho 41724 * rho 41724 = rho 41735 := by linear_combination r3507
    have hd2 : rho 41725 * rho 41725 = rho 41736 := by linear_combination r3508
    have hd3 : rho 41737 * (rho 41725 * rho 41725 + rho 41724 * rho 41724 * (-1)) = 2 * (rho 41724 * rho 41725) := by
      rw [hd0, hd1, hd2]
      linear_combination r3509
    have hd4 : rho 41738 * (2 - (rho 41725 * rho 41725 + rho 41724 * rho 41724 * (-1))) = rho 41725 * rho 41725 - rho 41724 * rho 41724 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3510
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX41 rho : Seg45.F), (seg45AccY41 rho : Seg45.F)⟩
      ⟨(rho 41724 : Seg45.F), (rho 41725 : Seg45.F)⟩
      ⟨(rho 41730 : Seg45.F), (rho 41731 : Seg45.F)⟩
      ⟨(seg45AccX42 rho : Seg45.F), (seg45AccY42 rho : Seg45.F)⟩
      ⟨(rho 41737 : Seg45.F), (rho 41738 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung41

theorem seg45_rows42 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3511 rho ∧ Seg45.relationRow3512 rho ∧ Seg45.relationRow3513 rho ∧ Seg45.relationRow3514 rho ∧ Seg45.relationRow3515 rho ∧ Seg45.relationRow3516 rho ∧ Seg45.relationRow3517 rho ∧ Seg45.relationRow3518 rho ∧ Seg45.relationRow3519 rho ∧ Seg45.relationRow3520 rho ∧ Seg45.relationRow3521 rho ∧ Seg45.relationRow3522 rho ∧ Seg45.relationRow3523 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, p44, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3511, r3512, r3513, r3514, r3515, r3516, r3517, r3518, r3519⟩
  unfold Seg45.relationPart44 at p44
  rcases p44 with ⟨r3520, r3521, r3522, r3523, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3511, r3512, r3513, r3514, r3515, r3516, r3517, r3518, r3519, r3520, r3521, r3522, r3523⟩

theorem seg45_rung42 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40990 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX42 rho : Seg45.F), (seg45AccY42 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41737 : Seg45.F), (rho 41738 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX42 rho : Seg45.F), (seg45AccY42 rho : Seg45.F)⟩
        ⟨(rho 41737 : Seg45.F), (rho 41738 : Seg45.F)⟩
        ⟨(seg45AccX43 rho : Seg45.F), (seg45AccY43 rho : Seg45.F)⟩
        ⟨(rho 41750 : Seg45.F), (rho 41751 : Seg45.F)⟩ := by
  obtain ⟨r3511, r3512, r3513, r3514, r3515, r3516, r3517, r3518, r3519, r3520, r3521, r3522, r3523⟩ := seg45_rows42 rho h
  unfold Seg45.relationRow3511 at r3511
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3511
  unfold Seg45.relationRow3512 at r3512
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3512
  unfold Seg45.relationRow3513 at r3513
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3513
  unfold Seg45.relationRow3514 at r3514
  unfold Seg45.relationRow3515 at r3515
  unfold Seg45.relationRow3516 at r3516
  unfold Seg45.relationRow3517 at r3517
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3517
  unfold Seg45.relationRow3518 at r3518
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3518
  unfold Seg45.relationRow3519 at r3519
  unfold Seg45.relationRow3520 at r3520
  unfold Seg45.relationRow3521 at r3521
  unfold Seg45.relationRow3522 at r3522
  unfold Seg45.relationRow3523 at r3523
  have hrung42 (bit : Bool) (hbit : rho 40990 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX42 rho : Seg45.F), (seg45AccY42 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41737 : Seg45.F), (rho 41738 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX42 rho : Seg45.F), (seg45AccY42 rho : Seg45.F)⟩
        ⟨(rho 41737 : Seg45.F), (rho 41738 : Seg45.F)⟩
        ⟨(seg45AccX43 rho : Seg45.F), (seg45AccY43 rho : Seg45.F)⟩
        ⟨(rho 41750 : Seg45.F), (rho 41751 : Seg45.F)⟩ := by
    have hnextx : seg45AccX43 rho = seg45AccX42 rho + rho 41745 := by
      unfold seg45AccX43 seg45AccX42
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 42]
      ring
    have hnexty : seg45AccY43 rho = seg45AccY42 rho + rho 41746 := by
      unfold seg45AccY43 seg45AccY42
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 42]
      ring
    have ha0 : (rho 41737 + rho 41738) * (seg45AccX42 rho + seg45AccY42 rho) = rho 41739 := by
      unfold seg45AccX42 seg45AccY42
      linear_combination r3511
    have ha1 : rho 41738 * seg45AccX42 rho = rho 41740 := by
      unfold seg45AccX42
      linear_combination r3512
    have ha2 : rho 41737 * seg45AccY42 rho = rho 41741 := by
      unfold seg45AccY42
      linear_combination r3513
    have ha3 : 3021 * rho 41740 * rho 41741 = rho 41742 := by
      linear_combination r3514
    have ha4 : rho 41743 * (1 + rho 41742) = rho 41740 + rho 41741 := by
      linear_combination r3515
    have ha5 : rho 41744 * (1 - rho 41742) = rho 41739 - rho 41740 - rho 41741 := by
      linear_combination r3516
    have haddx :
        rho 41743 * (1 + 3021 * (rho 41738 * seg45AccX42 rho) * (rho 41737 * seg45AccY42 rho)) =
          rho 41738 * seg45AccX42 rho + rho 41737 * seg45AccY42 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41744 * (1 - 3021 * (rho 41738 * seg45AccX42 rho) * (rho 41737 * seg45AccY42 rho)) =
          (-1) * (rho 41738 * seg45AccX42 rho) - rho 41737 * seg45AccY42 rho +
            (seg45AccY42 rho - seg45AccX42 rho * (-1)) * (rho 41737 + rho 41738) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41744 * (1 - rho 41742) = rho 41739 - rho 41740 - rho 41741 := ha5
        _ = (-1) * rho 41740 - rho 41741 + (seg45AccY42 rho - seg45AccX42 rho * (-1)) * (rho 41737 + rho 41738) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX43 rho = seg45AccX42 rho - Bool.toZMod bit * (seg45AccX42 rho - rho 41743) := by
      have hd : rho 41745 = Bool.toZMod bit * (rho 41743 - seg45AccX42 rho) := by
        rw [← hbit]
        unfold seg45AccX42
        linear_combination -r3517
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY43 rho = seg45AccY42 rho - Bool.toZMod bit * (seg45AccY42 rho - rho 41744) := by
      have hd : rho 41746 = Bool.toZMod bit * (rho 41744 - seg45AccY42 rho) := by
        rw [← hbit]
        unfold seg45AccY42
        linear_combination -r3518
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41737 * rho 41738 = rho 41747 := by linear_combination r3519
    have hd1 : rho 41737 * rho 41737 = rho 41748 := by linear_combination r3520
    have hd2 : rho 41738 * rho 41738 = rho 41749 := by linear_combination r3521
    have hd3 : rho 41750 * (rho 41738 * rho 41738 + rho 41737 * rho 41737 * (-1)) = 2 * (rho 41737 * rho 41738) := by
      rw [hd0, hd1, hd2]
      linear_combination r3522
    have hd4 : rho 41751 * (2 - (rho 41738 * rho 41738 + rho 41737 * rho 41737 * (-1))) = rho 41738 * rho 41738 - rho 41737 * rho 41737 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3523
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX42 rho : Seg45.F), (seg45AccY42 rho : Seg45.F)⟩
      ⟨(rho 41737 : Seg45.F), (rho 41738 : Seg45.F)⟩
      ⟨(rho 41743 : Seg45.F), (rho 41744 : Seg45.F)⟩
      ⟨(seg45AccX43 rho : Seg45.F), (seg45AccY43 rho : Seg45.F)⟩
      ⟨(rho 41750 : Seg45.F), (rho 41751 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung42

theorem seg45_rows43 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3524 rho ∧ Seg45.relationRow3525 rho ∧ Seg45.relationRow3526 rho ∧ Seg45.relationRow3527 rho ∧ Seg45.relationRow3528 rho ∧ Seg45.relationRow3529 rho ∧ Seg45.relationRow3530 rho ∧ Seg45.relationRow3531 rho ∧ Seg45.relationRow3532 rho ∧ Seg45.relationRow3533 rho ∧ Seg45.relationRow3534 rho ∧ Seg45.relationRow3535 rho ∧ Seg45.relationRow3536 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p44, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, r3524, r3525, r3526, r3527, r3528, r3529, r3530, r3531, r3532, r3533, r3534, r3535, r3536, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3524, r3525, r3526, r3527, r3528, r3529, r3530, r3531, r3532, r3533, r3534, r3535, r3536⟩

theorem seg45_rung43 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40991 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX43 rho : Seg45.F), (seg45AccY43 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41750 : Seg45.F), (rho 41751 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX43 rho : Seg45.F), (seg45AccY43 rho : Seg45.F)⟩
        ⟨(rho 41750 : Seg45.F), (rho 41751 : Seg45.F)⟩
        ⟨(seg45AccX44 rho : Seg45.F), (seg45AccY44 rho : Seg45.F)⟩
        ⟨(rho 41763 : Seg45.F), (rho 41764 : Seg45.F)⟩ := by
  obtain ⟨r3524, r3525, r3526, r3527, r3528, r3529, r3530, r3531, r3532, r3533, r3534, r3535, r3536⟩ := seg45_rows43 rho h
  unfold Seg45.relationRow3524 at r3524
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3524
  unfold Seg45.relationRow3525 at r3525
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3525
  unfold Seg45.relationRow3526 at r3526
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3526
  unfold Seg45.relationRow3527 at r3527
  unfold Seg45.relationRow3528 at r3528
  unfold Seg45.relationRow3529 at r3529
  unfold Seg45.relationRow3530 at r3530
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3530
  unfold Seg45.relationRow3531 at r3531
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3531
  unfold Seg45.relationRow3532 at r3532
  unfold Seg45.relationRow3533 at r3533
  unfold Seg45.relationRow3534 at r3534
  unfold Seg45.relationRow3535 at r3535
  unfold Seg45.relationRow3536 at r3536
  have hrung43 (bit : Bool) (hbit : rho 40991 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX43 rho : Seg45.F), (seg45AccY43 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41750 : Seg45.F), (rho 41751 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX43 rho : Seg45.F), (seg45AccY43 rho : Seg45.F)⟩
        ⟨(rho 41750 : Seg45.F), (rho 41751 : Seg45.F)⟩
        ⟨(seg45AccX44 rho : Seg45.F), (seg45AccY44 rho : Seg45.F)⟩
        ⟨(rho 41763 : Seg45.F), (rho 41764 : Seg45.F)⟩ := by
    have hnextx : seg45AccX44 rho = seg45AccX43 rho + rho 41758 := by
      unfold seg45AccX44 seg45AccX43
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 43]
      ring
    have hnexty : seg45AccY44 rho = seg45AccY43 rho + rho 41759 := by
      unfold seg45AccY44 seg45AccY43
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 43]
      ring
    have ha0 : (rho 41750 + rho 41751) * (seg45AccX43 rho + seg45AccY43 rho) = rho 41752 := by
      unfold seg45AccX43 seg45AccY43
      linear_combination r3524
    have ha1 : rho 41751 * seg45AccX43 rho = rho 41753 := by
      unfold seg45AccX43
      linear_combination r3525
    have ha2 : rho 41750 * seg45AccY43 rho = rho 41754 := by
      unfold seg45AccY43
      linear_combination r3526
    have ha3 : 3021 * rho 41753 * rho 41754 = rho 41755 := by
      linear_combination r3527
    have ha4 : rho 41756 * (1 + rho 41755) = rho 41753 + rho 41754 := by
      linear_combination r3528
    have ha5 : rho 41757 * (1 - rho 41755) = rho 41752 - rho 41753 - rho 41754 := by
      linear_combination r3529
    have haddx :
        rho 41756 * (1 + 3021 * (rho 41751 * seg45AccX43 rho) * (rho 41750 * seg45AccY43 rho)) =
          rho 41751 * seg45AccX43 rho + rho 41750 * seg45AccY43 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41757 * (1 - 3021 * (rho 41751 * seg45AccX43 rho) * (rho 41750 * seg45AccY43 rho)) =
          (-1) * (rho 41751 * seg45AccX43 rho) - rho 41750 * seg45AccY43 rho +
            (seg45AccY43 rho - seg45AccX43 rho * (-1)) * (rho 41750 + rho 41751) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41757 * (1 - rho 41755) = rho 41752 - rho 41753 - rho 41754 := ha5
        _ = (-1) * rho 41753 - rho 41754 + (seg45AccY43 rho - seg45AccX43 rho * (-1)) * (rho 41750 + rho 41751) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX44 rho = seg45AccX43 rho - Bool.toZMod bit * (seg45AccX43 rho - rho 41756) := by
      have hd : rho 41758 = Bool.toZMod bit * (rho 41756 - seg45AccX43 rho) := by
        rw [← hbit]
        unfold seg45AccX43
        linear_combination -r3530
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY44 rho = seg45AccY43 rho - Bool.toZMod bit * (seg45AccY43 rho - rho 41757) := by
      have hd : rho 41759 = Bool.toZMod bit * (rho 41757 - seg45AccY43 rho) := by
        rw [← hbit]
        unfold seg45AccY43
        linear_combination -r3531
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41750 * rho 41751 = rho 41760 := by linear_combination r3532
    have hd1 : rho 41750 * rho 41750 = rho 41761 := by linear_combination r3533
    have hd2 : rho 41751 * rho 41751 = rho 41762 := by linear_combination r3534
    have hd3 : rho 41763 * (rho 41751 * rho 41751 + rho 41750 * rho 41750 * (-1)) = 2 * (rho 41750 * rho 41751) := by
      rw [hd0, hd1, hd2]
      linear_combination r3535
    have hd4 : rho 41764 * (2 - (rho 41751 * rho 41751 + rho 41750 * rho 41750 * (-1))) = rho 41751 * rho 41751 - rho 41750 * rho 41750 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3536
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX43 rho : Seg45.F), (seg45AccY43 rho : Seg45.F)⟩
      ⟨(rho 41750 : Seg45.F), (rho 41751 : Seg45.F)⟩
      ⟨(rho 41756 : Seg45.F), (rho 41757 : Seg45.F)⟩
      ⟨(seg45AccX44 rho : Seg45.F), (seg45AccY44 rho : Seg45.F)⟩
      ⟨(rho 41763 : Seg45.F), (rho 41764 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung43

theorem seg45_hstep_c3 (rho : Nat -> Seg45.F) (h : Seg45.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (40948 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 33 ≤ i → i < 44 →
      EdwardsBridge.onCurve (seg45LadderAccState rho i) →
      EdwardsBridge.onCurve (seg45LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg45LadderAccState rho i) (seg45LadderCurState rho i)
        (seg45LadderAccState rho (i + 1)) (seg45LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg45_rung33 rho h bits[33]! (hbitAt 33 (by omega)) hacc hcur
  · exact seg45_rung34 rho h bits[34]! (hbitAt 34 (by omega)) hacc hcur
  · exact seg45_rung35 rho h bits[35]! (hbitAt 35 (by omega)) hacc hcur
  · exact seg45_rung36 rho h bits[36]! (hbitAt 36 (by omega)) hacc hcur
  · exact seg45_rung37 rho h bits[37]! (hbitAt 37 (by omega)) hacc hcur
  · exact seg45_rung38 rho h bits[38]! (hbitAt 38 (by omega)) hacc hcur
  · exact seg45_rung39 rho h bits[39]! (hbitAt 39 (by omega)) hacc hcur
  · exact seg45_rung40 rho h bits[40]! (hbitAt 40 (by omega)) hacc hcur
  · exact seg45_rung41 rho h bits[41]! (hbitAt 41 (by omega)) hacc hcur
  · exact seg45_rung42 rho h bits[42]! (hbitAt 42 (by omega)) hacc hcur
  · exact seg45_rung43 rho h bits[43]! (hbitAt 43 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
