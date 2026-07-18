import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg6_rows55 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3428 rho ∧ Seg6.relationRow3429 rho ∧ Seg6.relationRow3430 rho ∧ Seg6.relationRow3431 rho ∧ Seg6.relationRow3432 rho ∧ Seg6.relationRow3433 rho ∧ Seg6.relationRow3434 rho ∧ Seg6.relationRow3435 rho ∧ Seg6.relationRow3436 rho ∧ Seg6.relationRow3437 rho ∧ Seg6.relationRow3438 rho ∧ Seg6.relationRow3439 rho ∧ Seg6.relationRow3440 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p42, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3428, r3429, r3430, r3431, r3432, r3433, r3434, r3435, r3436, r3437, r3438, r3439⟩
  unfold Seg6.relationPart43 at p43
  rcases p43 with ⟨r3440, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3428, r3429, r3430, r3431, r3432, r3433, r3434, r3435, r3436, r3437, r3438, r3439, r3440⟩

theorem seg6_rung55 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1945 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX55 rho : Seg6.F), (seg6AccY55 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3825 : Seg6.F), (rho 3826 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX55 rho : Seg6.F), (seg6AccY55 rho : Seg6.F)⟩
        ⟨(rho 3825 : Seg6.F), (rho 3826 : Seg6.F)⟩
        ⟨(seg6AccX56 rho : Seg6.F), (seg6AccY56 rho : Seg6.F)⟩
        ⟨(rho 3838 : Seg6.F), (rho 3839 : Seg6.F)⟩ := by
  obtain ⟨r3428, r3429, r3430, r3431, r3432, r3433, r3434, r3435, r3436, r3437, r3438, r3439, r3440⟩ := seg6_rows55 rho h
  unfold Seg6.relationRow3428 Seg6.relationLc363 at r3428
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3428
  unfold Seg6.relationRow3429 Seg6.relationLc364 at r3429
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3429
  unfold Seg6.relationRow3430 Seg6.relationLc365 at r3430
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3430
  unfold Seg6.relationRow3431 at r3431
  unfold Seg6.relationRow3432 at r3432
  unfold Seg6.relationRow3433 at r3433
  unfold Seg6.relationRow3434 Seg6.relationLc366 at r3434
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3434
  unfold Seg6.relationRow3435 Seg6.relationLc367 at r3435
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3435
  unfold Seg6.relationRow3436 at r3436
  unfold Seg6.relationRow3437 at r3437
  unfold Seg6.relationRow3438 at r3438
  unfold Seg6.relationRow3439 at r3439
  unfold Seg6.relationRow3440 at r3440
  have hrung55 (bit : Bool) (hbit : rho 1945 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX55 rho : Seg6.F), (seg6AccY55 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3825 : Seg6.F), (rho 3826 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX55 rho : Seg6.F), (seg6AccY55 rho : Seg6.F)⟩
        ⟨(rho 3825 : Seg6.F), (rho 3826 : Seg6.F)⟩
        ⟨(seg6AccX56 rho : Seg6.F), (seg6AccY56 rho : Seg6.F)⟩
        ⟨(rho 3838 : Seg6.F), (rho 3839 : Seg6.F)⟩ := by
    have hnextx : seg6AccX56 rho = seg6AccX55 rho + rho 3833 := by
      unfold seg6AccX56 seg6AccX55
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 55]
      ring
    have hnexty : seg6AccY56 rho = seg6AccY55 rho + rho 3834 := by
      unfold seg6AccY56 seg6AccY55
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 55]
      ring
    have ha0 : (rho 3825 + rho 3826) * (seg6AccX55 rho + seg6AccY55 rho) = rho 3827 := by
      unfold seg6AccX55 seg6AccY55
      linear_combination r3428
    have ha1 : rho 3826 * seg6AccX55 rho = rho 3828 := by
      unfold seg6AccX55
      linear_combination r3429
    have ha2 : rho 3825 * seg6AccY55 rho = rho 3829 := by
      unfold seg6AccY55
      linear_combination r3430
    have ha3 : 3021 * rho 3828 * rho 3829 = rho 3830 := by
      linear_combination r3431
    have ha4 : rho 3831 * (1 + rho 3830) = rho 3828 + rho 3829 := by
      linear_combination r3432
    have ha5 : rho 3832 * (1 - rho 3830) = rho 3827 - rho 3828 - rho 3829 := by
      linear_combination r3433
    have haddx :
        rho 3831 * (1 + 3021 * (rho 3826 * seg6AccX55 rho) * (rho 3825 * seg6AccY55 rho)) =
          rho 3826 * seg6AccX55 rho + rho 3825 * seg6AccY55 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3832 * (1 - 3021 * (rho 3826 * seg6AccX55 rho) * (rho 3825 * seg6AccY55 rho)) =
          (-1) * (rho 3826 * seg6AccX55 rho) - rho 3825 * seg6AccY55 rho +
            (seg6AccY55 rho - seg6AccX55 rho * (-1)) * (rho 3825 + rho 3826) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3832 * (1 - rho 3830) = rho 3827 - rho 3828 - rho 3829 := ha5
        _ = (-1) * rho 3828 - rho 3829 + (seg6AccY55 rho - seg6AccX55 rho * (-1)) * (rho 3825 + rho 3826) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX56 rho = seg6AccX55 rho - Bool.toZMod bit * (seg6AccX55 rho - rho 3831) := by
      have hd : rho 3833 = Bool.toZMod bit * (rho 3831 - seg6AccX55 rho) := by
        rw [← hbit]
        unfold seg6AccX55
        linear_combination -r3434
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY56 rho = seg6AccY55 rho - Bool.toZMod bit * (seg6AccY55 rho - rho 3832) := by
      have hd : rho 3834 = Bool.toZMod bit * (rho 3832 - seg6AccY55 rho) := by
        rw [← hbit]
        unfold seg6AccY55
        linear_combination -r3435
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3825 * rho 3826 = rho 3835 := by linear_combination r3436
    have hd1 : rho 3825 * rho 3825 = rho 3836 := by linear_combination r3437
    have hd2 : rho 3826 * rho 3826 = rho 3837 := by linear_combination r3438
    have hd3 : rho 3838 * (rho 3826 * rho 3826 + rho 3825 * rho 3825 * (-1)) = 2 * (rho 3825 * rho 3826) := by
      rw [hd0, hd1, hd2]
      linear_combination r3439
    have hd4 : rho 3839 * (2 - (rho 3826 * rho 3826 + rho 3825 * rho 3825 * (-1))) = rho 3826 * rho 3826 - rho 3825 * rho 3825 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3440
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX55 rho : Seg6.F), (seg6AccY55 rho : Seg6.F)⟩
      ⟨(rho 3825 : Seg6.F), (rho 3826 : Seg6.F)⟩
      ⟨(rho 3831 : Seg6.F), (rho 3832 : Seg6.F)⟩
      ⟨(seg6AccX56 rho : Seg6.F), (seg6AccY56 rho : Seg6.F)⟩
      ⟨(rho 3838 : Seg6.F), (rho 3839 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung55

theorem seg6_rows56 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3441 rho ∧ Seg6.relationRow3442 rho ∧ Seg6.relationRow3443 rho ∧ Seg6.relationRow3444 rho ∧ Seg6.relationRow3445 rho ∧ Seg6.relationRow3446 rho ∧ Seg6.relationRow3447 rho ∧ Seg6.relationRow3448 rho ∧ Seg6.relationRow3449 rho ∧ Seg6.relationRow3450 rho ∧ Seg6.relationRow3451 rho ∧ Seg6.relationRow3452 rho ∧ Seg6.relationRow3453 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart43 at p43
  rcases p43 with ⟨_, r3441, r3442, r3443, r3444, r3445, r3446, r3447, r3448, r3449, r3450, r3451, r3452, r3453, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3441, r3442, r3443, r3444, r3445, r3446, r3447, r3448, r3449, r3450, r3451, r3452, r3453⟩

theorem seg6_rung56 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1946 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX56 rho : Seg6.F), (seg6AccY56 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3838 : Seg6.F), (rho 3839 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX56 rho : Seg6.F), (seg6AccY56 rho : Seg6.F)⟩
        ⟨(rho 3838 : Seg6.F), (rho 3839 : Seg6.F)⟩
        ⟨(seg6AccX57 rho : Seg6.F), (seg6AccY57 rho : Seg6.F)⟩
        ⟨(rho 3851 : Seg6.F), (rho 3852 : Seg6.F)⟩ := by
  obtain ⟨r3441, r3442, r3443, r3444, r3445, r3446, r3447, r3448, r3449, r3450, r3451, r3452, r3453⟩ := seg6_rows56 rho h
  unfold Seg6.relationRow3441 Seg6.relationLc368 at r3441
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3441
  unfold Seg6.relationRow3442 Seg6.relationLc369 at r3442
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3442
  unfold Seg6.relationRow3443 Seg6.relationLc370 at r3443
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3443
  unfold Seg6.relationRow3444 at r3444
  unfold Seg6.relationRow3445 at r3445
  unfold Seg6.relationRow3446 at r3446
  unfold Seg6.relationRow3447 Seg6.relationLc371 at r3447
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3447
  unfold Seg6.relationRow3448 Seg6.relationLc372 at r3448
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3448
  unfold Seg6.relationRow3449 at r3449
  unfold Seg6.relationRow3450 at r3450
  unfold Seg6.relationRow3451 at r3451
  unfold Seg6.relationRow3452 at r3452
  unfold Seg6.relationRow3453 at r3453
  have hrung56 (bit : Bool) (hbit : rho 1946 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX56 rho : Seg6.F), (seg6AccY56 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3838 : Seg6.F), (rho 3839 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX56 rho : Seg6.F), (seg6AccY56 rho : Seg6.F)⟩
        ⟨(rho 3838 : Seg6.F), (rho 3839 : Seg6.F)⟩
        ⟨(seg6AccX57 rho : Seg6.F), (seg6AccY57 rho : Seg6.F)⟩
        ⟨(rho 3851 : Seg6.F), (rho 3852 : Seg6.F)⟩ := by
    have hnextx : seg6AccX57 rho = seg6AccX56 rho + rho 3846 := by
      unfold seg6AccX57 seg6AccX56
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 56]
      ring
    have hnexty : seg6AccY57 rho = seg6AccY56 rho + rho 3847 := by
      unfold seg6AccY57 seg6AccY56
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 56]
      ring
    have ha0 : (rho 3838 + rho 3839) * (seg6AccX56 rho + seg6AccY56 rho) = rho 3840 := by
      unfold seg6AccX56 seg6AccY56
      linear_combination r3441
    have ha1 : rho 3839 * seg6AccX56 rho = rho 3841 := by
      unfold seg6AccX56
      linear_combination r3442
    have ha2 : rho 3838 * seg6AccY56 rho = rho 3842 := by
      unfold seg6AccY56
      linear_combination r3443
    have ha3 : 3021 * rho 3841 * rho 3842 = rho 3843 := by
      linear_combination r3444
    have ha4 : rho 3844 * (1 + rho 3843) = rho 3841 + rho 3842 := by
      linear_combination r3445
    have ha5 : rho 3845 * (1 - rho 3843) = rho 3840 - rho 3841 - rho 3842 := by
      linear_combination r3446
    have haddx :
        rho 3844 * (1 + 3021 * (rho 3839 * seg6AccX56 rho) * (rho 3838 * seg6AccY56 rho)) =
          rho 3839 * seg6AccX56 rho + rho 3838 * seg6AccY56 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3845 * (1 - 3021 * (rho 3839 * seg6AccX56 rho) * (rho 3838 * seg6AccY56 rho)) =
          (-1) * (rho 3839 * seg6AccX56 rho) - rho 3838 * seg6AccY56 rho +
            (seg6AccY56 rho - seg6AccX56 rho * (-1)) * (rho 3838 + rho 3839) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3845 * (1 - rho 3843) = rho 3840 - rho 3841 - rho 3842 := ha5
        _ = (-1) * rho 3841 - rho 3842 + (seg6AccY56 rho - seg6AccX56 rho * (-1)) * (rho 3838 + rho 3839) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX57 rho = seg6AccX56 rho - Bool.toZMod bit * (seg6AccX56 rho - rho 3844) := by
      have hd : rho 3846 = Bool.toZMod bit * (rho 3844 - seg6AccX56 rho) := by
        rw [← hbit]
        unfold seg6AccX56
        linear_combination -r3447
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY57 rho = seg6AccY56 rho - Bool.toZMod bit * (seg6AccY56 rho - rho 3845) := by
      have hd : rho 3847 = Bool.toZMod bit * (rho 3845 - seg6AccY56 rho) := by
        rw [← hbit]
        unfold seg6AccY56
        linear_combination -r3448
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3838 * rho 3839 = rho 3848 := by linear_combination r3449
    have hd1 : rho 3838 * rho 3838 = rho 3849 := by linear_combination r3450
    have hd2 : rho 3839 * rho 3839 = rho 3850 := by linear_combination r3451
    have hd3 : rho 3851 * (rho 3839 * rho 3839 + rho 3838 * rho 3838 * (-1)) = 2 * (rho 3838 * rho 3839) := by
      rw [hd0, hd1, hd2]
      linear_combination r3452
    have hd4 : rho 3852 * (2 - (rho 3839 * rho 3839 + rho 3838 * rho 3838 * (-1))) = rho 3839 * rho 3839 - rho 3838 * rho 3838 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3453
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX56 rho : Seg6.F), (seg6AccY56 rho : Seg6.F)⟩
      ⟨(rho 3838 : Seg6.F), (rho 3839 : Seg6.F)⟩
      ⟨(rho 3844 : Seg6.F), (rho 3845 : Seg6.F)⟩
      ⟨(seg6AccX57 rho : Seg6.F), (seg6AccY57 rho : Seg6.F)⟩
      ⟨(rho 3851 : Seg6.F), (rho 3852 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung56

theorem seg6_rows57 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3454 rho ∧ Seg6.relationRow3455 rho ∧ Seg6.relationRow3456 rho ∧ Seg6.relationRow3457 rho ∧ Seg6.relationRow3458 rho ∧ Seg6.relationRow3459 rho ∧ Seg6.relationRow3460 rho ∧ Seg6.relationRow3461 rho ∧ Seg6.relationRow3462 rho ∧ Seg6.relationRow3463 rho ∧ Seg6.relationRow3464 rho ∧ Seg6.relationRow3465 rho ∧ Seg6.relationRow3466 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r3454, r3455, r3456, r3457, r3458, r3459, r3460, r3461, r3462, r3463, r3464, r3465, r3466, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3454, r3455, r3456, r3457, r3458, r3459, r3460, r3461, r3462, r3463, r3464, r3465, r3466⟩

theorem seg6_rung57 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1947 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX57 rho : Seg6.F), (seg6AccY57 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3851 : Seg6.F), (rho 3852 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX57 rho : Seg6.F), (seg6AccY57 rho : Seg6.F)⟩
        ⟨(rho 3851 : Seg6.F), (rho 3852 : Seg6.F)⟩
        ⟨(seg6AccX58 rho : Seg6.F), (seg6AccY58 rho : Seg6.F)⟩
        ⟨(rho 3864 : Seg6.F), (rho 3865 : Seg6.F)⟩ := by
  obtain ⟨r3454, r3455, r3456, r3457, r3458, r3459, r3460, r3461, r3462, r3463, r3464, r3465, r3466⟩ := seg6_rows57 rho h
  unfold Seg6.relationRow3454 Seg6.relationLc373 at r3454
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3454
  unfold Seg6.relationRow3455 Seg6.relationLc374 at r3455
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3455
  unfold Seg6.relationRow3456 Seg6.relationLc375 at r3456
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3456
  unfold Seg6.relationRow3457 at r3457
  unfold Seg6.relationRow3458 at r3458
  unfold Seg6.relationRow3459 at r3459
  unfold Seg6.relationRow3460 Seg6.relationLc376 at r3460
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3460
  unfold Seg6.relationRow3461 Seg6.relationLc377 at r3461
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3461
  unfold Seg6.relationRow3462 at r3462
  unfold Seg6.relationRow3463 at r3463
  unfold Seg6.relationRow3464 at r3464
  unfold Seg6.relationRow3465 at r3465
  unfold Seg6.relationRow3466 at r3466
  have hrung57 (bit : Bool) (hbit : rho 1947 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX57 rho : Seg6.F), (seg6AccY57 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3851 : Seg6.F), (rho 3852 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX57 rho : Seg6.F), (seg6AccY57 rho : Seg6.F)⟩
        ⟨(rho 3851 : Seg6.F), (rho 3852 : Seg6.F)⟩
        ⟨(seg6AccX58 rho : Seg6.F), (seg6AccY58 rho : Seg6.F)⟩
        ⟨(rho 3864 : Seg6.F), (rho 3865 : Seg6.F)⟩ := by
    have hnextx : seg6AccX58 rho = seg6AccX57 rho + rho 3859 := by
      unfold seg6AccX58 seg6AccX57
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 57]
      ring
    have hnexty : seg6AccY58 rho = seg6AccY57 rho + rho 3860 := by
      unfold seg6AccY58 seg6AccY57
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 57]
      ring
    have ha0 : (rho 3851 + rho 3852) * (seg6AccX57 rho + seg6AccY57 rho) = rho 3853 := by
      unfold seg6AccX57 seg6AccY57
      linear_combination r3454
    have ha1 : rho 3852 * seg6AccX57 rho = rho 3854 := by
      unfold seg6AccX57
      linear_combination r3455
    have ha2 : rho 3851 * seg6AccY57 rho = rho 3855 := by
      unfold seg6AccY57
      linear_combination r3456
    have ha3 : 3021 * rho 3854 * rho 3855 = rho 3856 := by
      linear_combination r3457
    have ha4 : rho 3857 * (1 + rho 3856) = rho 3854 + rho 3855 := by
      linear_combination r3458
    have ha5 : rho 3858 * (1 - rho 3856) = rho 3853 - rho 3854 - rho 3855 := by
      linear_combination r3459
    have haddx :
        rho 3857 * (1 + 3021 * (rho 3852 * seg6AccX57 rho) * (rho 3851 * seg6AccY57 rho)) =
          rho 3852 * seg6AccX57 rho + rho 3851 * seg6AccY57 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3858 * (1 - 3021 * (rho 3852 * seg6AccX57 rho) * (rho 3851 * seg6AccY57 rho)) =
          (-1) * (rho 3852 * seg6AccX57 rho) - rho 3851 * seg6AccY57 rho +
            (seg6AccY57 rho - seg6AccX57 rho * (-1)) * (rho 3851 + rho 3852) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3858 * (1 - rho 3856) = rho 3853 - rho 3854 - rho 3855 := ha5
        _ = (-1) * rho 3854 - rho 3855 + (seg6AccY57 rho - seg6AccX57 rho * (-1)) * (rho 3851 + rho 3852) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX58 rho = seg6AccX57 rho - Bool.toZMod bit * (seg6AccX57 rho - rho 3857) := by
      have hd : rho 3859 = Bool.toZMod bit * (rho 3857 - seg6AccX57 rho) := by
        rw [← hbit]
        unfold seg6AccX57
        linear_combination -r3460
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY58 rho = seg6AccY57 rho - Bool.toZMod bit * (seg6AccY57 rho - rho 3858) := by
      have hd : rho 3860 = Bool.toZMod bit * (rho 3858 - seg6AccY57 rho) := by
        rw [← hbit]
        unfold seg6AccY57
        linear_combination -r3461
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3851 * rho 3852 = rho 3861 := by linear_combination r3462
    have hd1 : rho 3851 * rho 3851 = rho 3862 := by linear_combination r3463
    have hd2 : rho 3852 * rho 3852 = rho 3863 := by linear_combination r3464
    have hd3 : rho 3864 * (rho 3852 * rho 3852 + rho 3851 * rho 3851 * (-1)) = 2 * (rho 3851 * rho 3852) := by
      rw [hd0, hd1, hd2]
      linear_combination r3465
    have hd4 : rho 3865 * (2 - (rho 3852 * rho 3852 + rho 3851 * rho 3851 * (-1))) = rho 3852 * rho 3852 - rho 3851 * rho 3851 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3466
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX57 rho : Seg6.F), (seg6AccY57 rho : Seg6.F)⟩
      ⟨(rho 3851 : Seg6.F), (rho 3852 : Seg6.F)⟩
      ⟨(rho 3857 : Seg6.F), (rho 3858 : Seg6.F)⟩
      ⟨(seg6AccX58 rho : Seg6.F), (seg6AccY58 rho : Seg6.F)⟩
      ⟨(rho 3864 : Seg6.F), (rho 3865 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung57

theorem seg6_rows58 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3467 rho ∧ Seg6.relationRow3468 rho ∧ Seg6.relationRow3469 rho ∧ Seg6.relationRow3470 rho ∧ Seg6.relationRow3471 rho ∧ Seg6.relationRow3472 rho ∧ Seg6.relationRow3473 rho ∧ Seg6.relationRow3474 rho ∧ Seg6.relationRow3475 rho ∧ Seg6.relationRow3476 rho ∧ Seg6.relationRow3477 rho ∧ Seg6.relationRow3478 rho ∧ Seg6.relationRow3479 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3467, r3468, r3469, r3470, r3471, r3472, r3473, r3474, r3475, r3476, r3477, r3478, r3479, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3467, r3468, r3469, r3470, r3471, r3472, r3473, r3474, r3475, r3476, r3477, r3478, r3479⟩

theorem seg6_rung58 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1948 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX58 rho : Seg6.F), (seg6AccY58 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3864 : Seg6.F), (rho 3865 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX58 rho : Seg6.F), (seg6AccY58 rho : Seg6.F)⟩
        ⟨(rho 3864 : Seg6.F), (rho 3865 : Seg6.F)⟩
        ⟨(seg6AccX59 rho : Seg6.F), (seg6AccY59 rho : Seg6.F)⟩
        ⟨(rho 3877 : Seg6.F), (rho 3878 : Seg6.F)⟩ := by
  obtain ⟨r3467, r3468, r3469, r3470, r3471, r3472, r3473, r3474, r3475, r3476, r3477, r3478, r3479⟩ := seg6_rows58 rho h
  unfold Seg6.relationRow3467 Seg6.relationLc378 at r3467
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3467
  unfold Seg6.relationRow3468 Seg6.relationLc379 at r3468
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3468
  unfold Seg6.relationRow3469 Seg6.relationLc380 at r3469
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3469
  unfold Seg6.relationRow3470 at r3470
  unfold Seg6.relationRow3471 at r3471
  unfold Seg6.relationRow3472 at r3472
  unfold Seg6.relationRow3473 Seg6.relationLc381 at r3473
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3473
  unfold Seg6.relationRow3474 Seg6.relationLc382 at r3474
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3474
  unfold Seg6.relationRow3475 at r3475
  unfold Seg6.relationRow3476 at r3476
  unfold Seg6.relationRow3477 at r3477
  unfold Seg6.relationRow3478 at r3478
  unfold Seg6.relationRow3479 at r3479
  have hrung58 (bit : Bool) (hbit : rho 1948 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX58 rho : Seg6.F), (seg6AccY58 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3864 : Seg6.F), (rho 3865 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX58 rho : Seg6.F), (seg6AccY58 rho : Seg6.F)⟩
        ⟨(rho 3864 : Seg6.F), (rho 3865 : Seg6.F)⟩
        ⟨(seg6AccX59 rho : Seg6.F), (seg6AccY59 rho : Seg6.F)⟩
        ⟨(rho 3877 : Seg6.F), (rho 3878 : Seg6.F)⟩ := by
    have hnextx : seg6AccX59 rho = seg6AccX58 rho + rho 3872 := by
      unfold seg6AccX59 seg6AccX58
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 58]
      ring
    have hnexty : seg6AccY59 rho = seg6AccY58 rho + rho 3873 := by
      unfold seg6AccY59 seg6AccY58
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 58]
      ring
    have ha0 : (rho 3864 + rho 3865) * (seg6AccX58 rho + seg6AccY58 rho) = rho 3866 := by
      unfold seg6AccX58 seg6AccY58
      linear_combination r3467
    have ha1 : rho 3865 * seg6AccX58 rho = rho 3867 := by
      unfold seg6AccX58
      linear_combination r3468
    have ha2 : rho 3864 * seg6AccY58 rho = rho 3868 := by
      unfold seg6AccY58
      linear_combination r3469
    have ha3 : 3021 * rho 3867 * rho 3868 = rho 3869 := by
      linear_combination r3470
    have ha4 : rho 3870 * (1 + rho 3869) = rho 3867 + rho 3868 := by
      linear_combination r3471
    have ha5 : rho 3871 * (1 - rho 3869) = rho 3866 - rho 3867 - rho 3868 := by
      linear_combination r3472
    have haddx :
        rho 3870 * (1 + 3021 * (rho 3865 * seg6AccX58 rho) * (rho 3864 * seg6AccY58 rho)) =
          rho 3865 * seg6AccX58 rho + rho 3864 * seg6AccY58 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3871 * (1 - 3021 * (rho 3865 * seg6AccX58 rho) * (rho 3864 * seg6AccY58 rho)) =
          (-1) * (rho 3865 * seg6AccX58 rho) - rho 3864 * seg6AccY58 rho +
            (seg6AccY58 rho - seg6AccX58 rho * (-1)) * (rho 3864 + rho 3865) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3871 * (1 - rho 3869) = rho 3866 - rho 3867 - rho 3868 := ha5
        _ = (-1) * rho 3867 - rho 3868 + (seg6AccY58 rho - seg6AccX58 rho * (-1)) * (rho 3864 + rho 3865) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX59 rho = seg6AccX58 rho - Bool.toZMod bit * (seg6AccX58 rho - rho 3870) := by
      have hd : rho 3872 = Bool.toZMod bit * (rho 3870 - seg6AccX58 rho) := by
        rw [← hbit]
        unfold seg6AccX58
        linear_combination -r3473
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY59 rho = seg6AccY58 rho - Bool.toZMod bit * (seg6AccY58 rho - rho 3871) := by
      have hd : rho 3873 = Bool.toZMod bit * (rho 3871 - seg6AccY58 rho) := by
        rw [← hbit]
        unfold seg6AccY58
        linear_combination -r3474
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3864 * rho 3865 = rho 3874 := by linear_combination r3475
    have hd1 : rho 3864 * rho 3864 = rho 3875 := by linear_combination r3476
    have hd2 : rho 3865 * rho 3865 = rho 3876 := by linear_combination r3477
    have hd3 : rho 3877 * (rho 3865 * rho 3865 + rho 3864 * rho 3864 * (-1)) = 2 * (rho 3864 * rho 3865) := by
      rw [hd0, hd1, hd2]
      linear_combination r3478
    have hd4 : rho 3878 * (2 - (rho 3865 * rho 3865 + rho 3864 * rho 3864 * (-1))) = rho 3865 * rho 3865 - rho 3864 * rho 3864 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3479
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX58 rho : Seg6.F), (seg6AccY58 rho : Seg6.F)⟩
      ⟨(rho 3864 : Seg6.F), (rho 3865 : Seg6.F)⟩
      ⟨(rho 3870 : Seg6.F), (rho 3871 : Seg6.F)⟩
      ⟨(seg6AccX59 rho : Seg6.F), (seg6AccY59 rho : Seg6.F)⟩
      ⟨(rho 3877 : Seg6.F), (rho 3878 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung58

theorem seg6_rows59 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3480 rho ∧ Seg6.relationRow3481 rho ∧ Seg6.relationRow3482 rho ∧ Seg6.relationRow3483 rho ∧ Seg6.relationRow3484 rho ∧ Seg6.relationRow3485 rho ∧ Seg6.relationRow3486 rho ∧ Seg6.relationRow3487 rho ∧ Seg6.relationRow3488 rho ∧ Seg6.relationRow3489 rho ∧ Seg6.relationRow3490 rho ∧ Seg6.relationRow3491 rho ∧ Seg6.relationRow3492 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3480, r3481, r3482, r3483, r3484, r3485, r3486, r3487, r3488, r3489, r3490, r3491, r3492, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3480, r3481, r3482, r3483, r3484, r3485, r3486, r3487, r3488, r3489, r3490, r3491, r3492⟩

theorem seg6_rung59 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1949 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX59 rho : Seg6.F), (seg6AccY59 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3877 : Seg6.F), (rho 3878 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX59 rho : Seg6.F), (seg6AccY59 rho : Seg6.F)⟩
        ⟨(rho 3877 : Seg6.F), (rho 3878 : Seg6.F)⟩
        ⟨(seg6AccX60 rho : Seg6.F), (seg6AccY60 rho : Seg6.F)⟩
        ⟨(rho 3890 : Seg6.F), (rho 3891 : Seg6.F)⟩ := by
  obtain ⟨r3480, r3481, r3482, r3483, r3484, r3485, r3486, r3487, r3488, r3489, r3490, r3491, r3492⟩ := seg6_rows59 rho h
  unfold Seg6.relationRow3480 Seg6.relationLc383 at r3480
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3480
  unfold Seg6.relationRow3481 Seg6.relationLc384 at r3481
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3481
  unfold Seg6.relationRow3482 Seg6.relationLc385 at r3482
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3482
  unfold Seg6.relationRow3483 at r3483
  unfold Seg6.relationRow3484 at r3484
  unfold Seg6.relationRow3485 at r3485
  unfold Seg6.relationRow3486 Seg6.relationLc386 at r3486
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3486
  unfold Seg6.relationRow3487 Seg6.relationLc387 at r3487
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3487
  unfold Seg6.relationRow3488 at r3488
  unfold Seg6.relationRow3489 at r3489
  unfold Seg6.relationRow3490 at r3490
  unfold Seg6.relationRow3491 at r3491
  unfold Seg6.relationRow3492 at r3492
  have hrung59 (bit : Bool) (hbit : rho 1949 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX59 rho : Seg6.F), (seg6AccY59 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3877 : Seg6.F), (rho 3878 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX59 rho : Seg6.F), (seg6AccY59 rho : Seg6.F)⟩
        ⟨(rho 3877 : Seg6.F), (rho 3878 : Seg6.F)⟩
        ⟨(seg6AccX60 rho : Seg6.F), (seg6AccY60 rho : Seg6.F)⟩
        ⟨(rho 3890 : Seg6.F), (rho 3891 : Seg6.F)⟩ := by
    have hnextx : seg6AccX60 rho = seg6AccX59 rho + rho 3885 := by
      unfold seg6AccX60 seg6AccX59
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 59]
      ring
    have hnexty : seg6AccY60 rho = seg6AccY59 rho + rho 3886 := by
      unfold seg6AccY60 seg6AccY59
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 59]
      ring
    have ha0 : (rho 3877 + rho 3878) * (seg6AccX59 rho + seg6AccY59 rho) = rho 3879 := by
      unfold seg6AccX59 seg6AccY59
      linear_combination r3480
    have ha1 : rho 3878 * seg6AccX59 rho = rho 3880 := by
      unfold seg6AccX59
      linear_combination r3481
    have ha2 : rho 3877 * seg6AccY59 rho = rho 3881 := by
      unfold seg6AccY59
      linear_combination r3482
    have ha3 : 3021 * rho 3880 * rho 3881 = rho 3882 := by
      linear_combination r3483
    have ha4 : rho 3883 * (1 + rho 3882) = rho 3880 + rho 3881 := by
      linear_combination r3484
    have ha5 : rho 3884 * (1 - rho 3882) = rho 3879 - rho 3880 - rho 3881 := by
      linear_combination r3485
    have haddx :
        rho 3883 * (1 + 3021 * (rho 3878 * seg6AccX59 rho) * (rho 3877 * seg6AccY59 rho)) =
          rho 3878 * seg6AccX59 rho + rho 3877 * seg6AccY59 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3884 * (1 - 3021 * (rho 3878 * seg6AccX59 rho) * (rho 3877 * seg6AccY59 rho)) =
          (-1) * (rho 3878 * seg6AccX59 rho) - rho 3877 * seg6AccY59 rho +
            (seg6AccY59 rho - seg6AccX59 rho * (-1)) * (rho 3877 + rho 3878) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3884 * (1 - rho 3882) = rho 3879 - rho 3880 - rho 3881 := ha5
        _ = (-1) * rho 3880 - rho 3881 + (seg6AccY59 rho - seg6AccX59 rho * (-1)) * (rho 3877 + rho 3878) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX60 rho = seg6AccX59 rho - Bool.toZMod bit * (seg6AccX59 rho - rho 3883) := by
      have hd : rho 3885 = Bool.toZMod bit * (rho 3883 - seg6AccX59 rho) := by
        rw [← hbit]
        unfold seg6AccX59
        linear_combination -r3486
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY60 rho = seg6AccY59 rho - Bool.toZMod bit * (seg6AccY59 rho - rho 3884) := by
      have hd : rho 3886 = Bool.toZMod bit * (rho 3884 - seg6AccY59 rho) := by
        rw [← hbit]
        unfold seg6AccY59
        linear_combination -r3487
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3877 * rho 3878 = rho 3887 := by linear_combination r3488
    have hd1 : rho 3877 * rho 3877 = rho 3888 := by linear_combination r3489
    have hd2 : rho 3878 * rho 3878 = rho 3889 := by linear_combination r3490
    have hd3 : rho 3890 * (rho 3878 * rho 3878 + rho 3877 * rho 3877 * (-1)) = 2 * (rho 3877 * rho 3878) := by
      rw [hd0, hd1, hd2]
      linear_combination r3491
    have hd4 : rho 3891 * (2 - (rho 3878 * rho 3878 + rho 3877 * rho 3877 * (-1))) = rho 3878 * rho 3878 - rho 3877 * rho 3877 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3492
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX59 rho : Seg6.F), (seg6AccY59 rho : Seg6.F)⟩
      ⟨(rho 3877 : Seg6.F), (rho 3878 : Seg6.F)⟩
      ⟨(rho 3883 : Seg6.F), (rho 3884 : Seg6.F)⟩
      ⟨(seg6AccX60 rho : Seg6.F), (seg6AccY60 rho : Seg6.F)⟩
      ⟨(rho 3890 : Seg6.F), (rho 3891 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung59

theorem seg6_rows60 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3493 rho ∧ Seg6.relationRow3494 rho ∧ Seg6.relationRow3495 rho ∧ Seg6.relationRow3496 rho ∧ Seg6.relationRow3497 rho ∧ Seg6.relationRow3498 rho ∧ Seg6.relationRow3499 rho ∧ Seg6.relationRow3500 rho ∧ Seg6.relationRow3501 rho ∧ Seg6.relationRow3502 rho ∧ Seg6.relationRow3503 rho ∧ Seg6.relationRow3504 rho ∧ Seg6.relationRow3505 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3493, r3494, r3495, r3496, r3497, r3498, r3499, r3500, r3501, r3502, r3503, r3504, r3505, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3493, r3494, r3495, r3496, r3497, r3498, r3499, r3500, r3501, r3502, r3503, r3504, r3505⟩

theorem seg6_rung60 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1950 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX60 rho : Seg6.F), (seg6AccY60 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3890 : Seg6.F), (rho 3891 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX60 rho : Seg6.F), (seg6AccY60 rho : Seg6.F)⟩
        ⟨(rho 3890 : Seg6.F), (rho 3891 : Seg6.F)⟩
        ⟨(seg6AccX61 rho : Seg6.F), (seg6AccY61 rho : Seg6.F)⟩
        ⟨(rho 3903 : Seg6.F), (rho 3904 : Seg6.F)⟩ := by
  obtain ⟨r3493, r3494, r3495, r3496, r3497, r3498, r3499, r3500, r3501, r3502, r3503, r3504, r3505⟩ := seg6_rows60 rho h
  unfold Seg6.relationRow3493 Seg6.relationLc388 at r3493
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3493
  unfold Seg6.relationRow3494 Seg6.relationLc389 at r3494
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3494
  unfold Seg6.relationRow3495 Seg6.relationLc390 at r3495
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3495
  unfold Seg6.relationRow3496 at r3496
  unfold Seg6.relationRow3497 at r3497
  unfold Seg6.relationRow3498 at r3498
  unfold Seg6.relationRow3499 Seg6.relationLc391 at r3499
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3499
  unfold Seg6.relationRow3500 Seg6.relationLc392 at r3500
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3500
  unfold Seg6.relationRow3501 at r3501
  unfold Seg6.relationRow3502 at r3502
  unfold Seg6.relationRow3503 at r3503
  unfold Seg6.relationRow3504 at r3504
  unfold Seg6.relationRow3505 at r3505
  have hrung60 (bit : Bool) (hbit : rho 1950 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX60 rho : Seg6.F), (seg6AccY60 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3890 : Seg6.F), (rho 3891 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX60 rho : Seg6.F), (seg6AccY60 rho : Seg6.F)⟩
        ⟨(rho 3890 : Seg6.F), (rho 3891 : Seg6.F)⟩
        ⟨(seg6AccX61 rho : Seg6.F), (seg6AccY61 rho : Seg6.F)⟩
        ⟨(rho 3903 : Seg6.F), (rho 3904 : Seg6.F)⟩ := by
    have hnextx : seg6AccX61 rho = seg6AccX60 rho + rho 3898 := by
      unfold seg6AccX61 seg6AccX60
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 60]
      ring
    have hnexty : seg6AccY61 rho = seg6AccY60 rho + rho 3899 := by
      unfold seg6AccY61 seg6AccY60
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 60]
      ring
    have ha0 : (rho 3890 + rho 3891) * (seg6AccX60 rho + seg6AccY60 rho) = rho 3892 := by
      unfold seg6AccX60 seg6AccY60
      linear_combination r3493
    have ha1 : rho 3891 * seg6AccX60 rho = rho 3893 := by
      unfold seg6AccX60
      linear_combination r3494
    have ha2 : rho 3890 * seg6AccY60 rho = rho 3894 := by
      unfold seg6AccY60
      linear_combination r3495
    have ha3 : 3021 * rho 3893 * rho 3894 = rho 3895 := by
      linear_combination r3496
    have ha4 : rho 3896 * (1 + rho 3895) = rho 3893 + rho 3894 := by
      linear_combination r3497
    have ha5 : rho 3897 * (1 - rho 3895) = rho 3892 - rho 3893 - rho 3894 := by
      linear_combination r3498
    have haddx :
        rho 3896 * (1 + 3021 * (rho 3891 * seg6AccX60 rho) * (rho 3890 * seg6AccY60 rho)) =
          rho 3891 * seg6AccX60 rho + rho 3890 * seg6AccY60 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3897 * (1 - 3021 * (rho 3891 * seg6AccX60 rho) * (rho 3890 * seg6AccY60 rho)) =
          (-1) * (rho 3891 * seg6AccX60 rho) - rho 3890 * seg6AccY60 rho +
            (seg6AccY60 rho - seg6AccX60 rho * (-1)) * (rho 3890 + rho 3891) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3897 * (1 - rho 3895) = rho 3892 - rho 3893 - rho 3894 := ha5
        _ = (-1) * rho 3893 - rho 3894 + (seg6AccY60 rho - seg6AccX60 rho * (-1)) * (rho 3890 + rho 3891) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX61 rho = seg6AccX60 rho - Bool.toZMod bit * (seg6AccX60 rho - rho 3896) := by
      have hd : rho 3898 = Bool.toZMod bit * (rho 3896 - seg6AccX60 rho) := by
        rw [← hbit]
        unfold seg6AccX60
        linear_combination -r3499
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY61 rho = seg6AccY60 rho - Bool.toZMod bit * (seg6AccY60 rho - rho 3897) := by
      have hd : rho 3899 = Bool.toZMod bit * (rho 3897 - seg6AccY60 rho) := by
        rw [← hbit]
        unfold seg6AccY60
        linear_combination -r3500
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3890 * rho 3891 = rho 3900 := by linear_combination r3501
    have hd1 : rho 3890 * rho 3890 = rho 3901 := by linear_combination r3502
    have hd2 : rho 3891 * rho 3891 = rho 3902 := by linear_combination r3503
    have hd3 : rho 3903 * (rho 3891 * rho 3891 + rho 3890 * rho 3890 * (-1)) = 2 * (rho 3890 * rho 3891) := by
      rw [hd0, hd1, hd2]
      linear_combination r3504
    have hd4 : rho 3904 * (2 - (rho 3891 * rho 3891 + rho 3890 * rho 3890 * (-1))) = rho 3891 * rho 3891 - rho 3890 * rho 3890 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3505
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX60 rho : Seg6.F), (seg6AccY60 rho : Seg6.F)⟩
      ⟨(rho 3890 : Seg6.F), (rho 3891 : Seg6.F)⟩
      ⟨(rho 3896 : Seg6.F), (rho 3897 : Seg6.F)⟩
      ⟨(seg6AccX61 rho : Seg6.F), (seg6AccY61 rho : Seg6.F)⟩
      ⟨(rho 3903 : Seg6.F), (rho 3904 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung60

theorem seg6_rows61 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3506 rho ∧ Seg6.relationRow3507 rho ∧ Seg6.relationRow3508 rho ∧ Seg6.relationRow3509 rho ∧ Seg6.relationRow3510 rho ∧ Seg6.relationRow3511 rho ∧ Seg6.relationRow3512 rho ∧ Seg6.relationRow3513 rho ∧ Seg6.relationRow3514 rho ∧ Seg6.relationRow3515 rho ∧ Seg6.relationRow3516 rho ∧ Seg6.relationRow3517 rho ∧ Seg6.relationRow3518 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3506, r3507, r3508, r3509, r3510, r3511, r3512, r3513, r3514, r3515, r3516, r3517, r3518, _⟩
  exact ⟨r3506, r3507, r3508, r3509, r3510, r3511, r3512, r3513, r3514, r3515, r3516, r3517, r3518⟩

theorem seg6_rung61 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1951 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX61 rho : Seg6.F), (seg6AccY61 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3903 : Seg6.F), (rho 3904 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX61 rho : Seg6.F), (seg6AccY61 rho : Seg6.F)⟩
        ⟨(rho 3903 : Seg6.F), (rho 3904 : Seg6.F)⟩
        ⟨(seg6AccX62 rho : Seg6.F), (seg6AccY62 rho : Seg6.F)⟩
        ⟨(rho 3916 : Seg6.F), (rho 3917 : Seg6.F)⟩ := by
  obtain ⟨r3506, r3507, r3508, r3509, r3510, r3511, r3512, r3513, r3514, r3515, r3516, r3517, r3518⟩ := seg6_rows61 rho h
  unfold Seg6.relationRow3506 Seg6.relationLc393 at r3506
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3506
  unfold Seg6.relationRow3507 Seg6.relationLc394 at r3507
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3507
  unfold Seg6.relationRow3508 Seg6.relationLc395 at r3508
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3508
  unfold Seg6.relationRow3509 at r3509
  unfold Seg6.relationRow3510 at r3510
  unfold Seg6.relationRow3511 at r3511
  unfold Seg6.relationRow3512 Seg6.relationLc396 at r3512
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3512
  unfold Seg6.relationRow3513 Seg6.relationLc397 at r3513
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3513
  unfold Seg6.relationRow3514 at r3514
  unfold Seg6.relationRow3515 at r3515
  unfold Seg6.relationRow3516 at r3516
  unfold Seg6.relationRow3517 at r3517
  unfold Seg6.relationRow3518 at r3518
  have hrung61 (bit : Bool) (hbit : rho 1951 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX61 rho : Seg6.F), (seg6AccY61 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3903 : Seg6.F), (rho 3904 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX61 rho : Seg6.F), (seg6AccY61 rho : Seg6.F)⟩
        ⟨(rho 3903 : Seg6.F), (rho 3904 : Seg6.F)⟩
        ⟨(seg6AccX62 rho : Seg6.F), (seg6AccY62 rho : Seg6.F)⟩
        ⟨(rho 3916 : Seg6.F), (rho 3917 : Seg6.F)⟩ := by
    have hnextx : seg6AccX62 rho = seg6AccX61 rho + rho 3911 := by
      unfold seg6AccX62 seg6AccX61
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 61]
      ring
    have hnexty : seg6AccY62 rho = seg6AccY61 rho + rho 3912 := by
      unfold seg6AccY62 seg6AccY61
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 61]
      ring
    have ha0 : (rho 3903 + rho 3904) * (seg6AccX61 rho + seg6AccY61 rho) = rho 3905 := by
      unfold seg6AccX61 seg6AccY61
      linear_combination r3506
    have ha1 : rho 3904 * seg6AccX61 rho = rho 3906 := by
      unfold seg6AccX61
      linear_combination r3507
    have ha2 : rho 3903 * seg6AccY61 rho = rho 3907 := by
      unfold seg6AccY61
      linear_combination r3508
    have ha3 : 3021 * rho 3906 * rho 3907 = rho 3908 := by
      linear_combination r3509
    have ha4 : rho 3909 * (1 + rho 3908) = rho 3906 + rho 3907 := by
      linear_combination r3510
    have ha5 : rho 3910 * (1 - rho 3908) = rho 3905 - rho 3906 - rho 3907 := by
      linear_combination r3511
    have haddx :
        rho 3909 * (1 + 3021 * (rho 3904 * seg6AccX61 rho) * (rho 3903 * seg6AccY61 rho)) =
          rho 3904 * seg6AccX61 rho + rho 3903 * seg6AccY61 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3910 * (1 - 3021 * (rho 3904 * seg6AccX61 rho) * (rho 3903 * seg6AccY61 rho)) =
          (-1) * (rho 3904 * seg6AccX61 rho) - rho 3903 * seg6AccY61 rho +
            (seg6AccY61 rho - seg6AccX61 rho * (-1)) * (rho 3903 + rho 3904) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3910 * (1 - rho 3908) = rho 3905 - rho 3906 - rho 3907 := ha5
        _ = (-1) * rho 3906 - rho 3907 + (seg6AccY61 rho - seg6AccX61 rho * (-1)) * (rho 3903 + rho 3904) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX62 rho = seg6AccX61 rho - Bool.toZMod bit * (seg6AccX61 rho - rho 3909) := by
      have hd : rho 3911 = Bool.toZMod bit * (rho 3909 - seg6AccX61 rho) := by
        rw [← hbit]
        unfold seg6AccX61
        linear_combination -r3512
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY62 rho = seg6AccY61 rho - Bool.toZMod bit * (seg6AccY61 rho - rho 3910) := by
      have hd : rho 3912 = Bool.toZMod bit * (rho 3910 - seg6AccY61 rho) := by
        rw [← hbit]
        unfold seg6AccY61
        linear_combination -r3513
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3903 * rho 3904 = rho 3913 := by linear_combination r3514
    have hd1 : rho 3903 * rho 3903 = rho 3914 := by linear_combination r3515
    have hd2 : rho 3904 * rho 3904 = rho 3915 := by linear_combination r3516
    have hd3 : rho 3916 * (rho 3904 * rho 3904 + rho 3903 * rho 3903 * (-1)) = 2 * (rho 3903 * rho 3904) := by
      rw [hd0, hd1, hd2]
      linear_combination r3517
    have hd4 : rho 3917 * (2 - (rho 3904 * rho 3904 + rho 3903 * rho 3903 * (-1))) = rho 3904 * rho 3904 - rho 3903 * rho 3903 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3518
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX61 rho : Seg6.F), (seg6AccY61 rho : Seg6.F)⟩
      ⟨(rho 3903 : Seg6.F), (rho 3904 : Seg6.F)⟩
      ⟨(rho 3909 : Seg6.F), (rho 3910 : Seg6.F)⟩
      ⟨(seg6AccX62 rho : Seg6.F), (seg6AccY62 rho : Seg6.F)⟩
      ⟨(rho 3916 : Seg6.F), (rho 3917 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung61

theorem seg6_rows62 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3519 rho ∧ Seg6.relationRow3520 rho ∧ Seg6.relationRow3521 rho ∧ Seg6.relationRow3522 rho ∧ Seg6.relationRow3523 rho ∧ Seg6.relationRow3524 rho ∧ Seg6.relationRow3525 rho ∧ Seg6.relationRow3526 rho ∧ Seg6.relationRow3527 rho ∧ Seg6.relationRow3528 rho ∧ Seg6.relationRow3529 rho ∧ Seg6.relationRow3530 rho ∧ Seg6.relationRow3531 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, p44, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3519⟩
  unfold Seg6.relationPart44 at p44
  rcases p44 with ⟨r3520, r3521, r3522, r3523, r3524, r3525, r3526, r3527, r3528, r3529, r3530, r3531, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3519, r3520, r3521, r3522, r3523, r3524, r3525, r3526, r3527, r3528, r3529, r3530, r3531⟩

theorem seg6_rung62 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1952 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX62 rho : Seg6.F), (seg6AccY62 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3916 : Seg6.F), (rho 3917 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX62 rho : Seg6.F), (seg6AccY62 rho : Seg6.F)⟩
        ⟨(rho 3916 : Seg6.F), (rho 3917 : Seg6.F)⟩
        ⟨(seg6AccX63 rho : Seg6.F), (seg6AccY63 rho : Seg6.F)⟩
        ⟨(rho 3929 : Seg6.F), (rho 3930 : Seg6.F)⟩ := by
  obtain ⟨r3519, r3520, r3521, r3522, r3523, r3524, r3525, r3526, r3527, r3528, r3529, r3530, r3531⟩ := seg6_rows62 rho h
  unfold Seg6.relationRow3519 Seg6.relationLc398 at r3519
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3519
  unfold Seg6.relationRow3520 Seg6.relationLc399 at r3520
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3520
  unfold Seg6.relationRow3521 Seg6.relationLc400 at r3521
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3521
  unfold Seg6.relationRow3522 at r3522
  unfold Seg6.relationRow3523 at r3523
  unfold Seg6.relationRow3524 at r3524
  unfold Seg6.relationRow3525 Seg6.relationLc401 at r3525
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3525
  unfold Seg6.relationRow3526 Seg6.relationLc402 at r3526
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3526
  unfold Seg6.relationRow3527 at r3527
  unfold Seg6.relationRow3528 at r3528
  unfold Seg6.relationRow3529 at r3529
  unfold Seg6.relationRow3530 at r3530
  unfold Seg6.relationRow3531 at r3531
  have hrung62 (bit : Bool) (hbit : rho 1952 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX62 rho : Seg6.F), (seg6AccY62 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3916 : Seg6.F), (rho 3917 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX62 rho : Seg6.F), (seg6AccY62 rho : Seg6.F)⟩
        ⟨(rho 3916 : Seg6.F), (rho 3917 : Seg6.F)⟩
        ⟨(seg6AccX63 rho : Seg6.F), (seg6AccY63 rho : Seg6.F)⟩
        ⟨(rho 3929 : Seg6.F), (rho 3930 : Seg6.F)⟩ := by
    have hnextx : seg6AccX63 rho = seg6AccX62 rho + rho 3924 := by
      unfold seg6AccX63 seg6AccX62
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 62]
      ring
    have hnexty : seg6AccY63 rho = seg6AccY62 rho + rho 3925 := by
      unfold seg6AccY63 seg6AccY62
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 62]
      ring
    have ha0 : (rho 3916 + rho 3917) * (seg6AccX62 rho + seg6AccY62 rho) = rho 3918 := by
      unfold seg6AccX62 seg6AccY62
      linear_combination r3519
    have ha1 : rho 3917 * seg6AccX62 rho = rho 3919 := by
      unfold seg6AccX62
      linear_combination r3520
    have ha2 : rho 3916 * seg6AccY62 rho = rho 3920 := by
      unfold seg6AccY62
      linear_combination r3521
    have ha3 : 3021 * rho 3919 * rho 3920 = rho 3921 := by
      linear_combination r3522
    have ha4 : rho 3922 * (1 + rho 3921) = rho 3919 + rho 3920 := by
      linear_combination r3523
    have ha5 : rho 3923 * (1 - rho 3921) = rho 3918 - rho 3919 - rho 3920 := by
      linear_combination r3524
    have haddx :
        rho 3922 * (1 + 3021 * (rho 3917 * seg6AccX62 rho) * (rho 3916 * seg6AccY62 rho)) =
          rho 3917 * seg6AccX62 rho + rho 3916 * seg6AccY62 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3923 * (1 - 3021 * (rho 3917 * seg6AccX62 rho) * (rho 3916 * seg6AccY62 rho)) =
          (-1) * (rho 3917 * seg6AccX62 rho) - rho 3916 * seg6AccY62 rho +
            (seg6AccY62 rho - seg6AccX62 rho * (-1)) * (rho 3916 + rho 3917) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3923 * (1 - rho 3921) = rho 3918 - rho 3919 - rho 3920 := ha5
        _ = (-1) * rho 3919 - rho 3920 + (seg6AccY62 rho - seg6AccX62 rho * (-1)) * (rho 3916 + rho 3917) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX63 rho = seg6AccX62 rho - Bool.toZMod bit * (seg6AccX62 rho - rho 3922) := by
      have hd : rho 3924 = Bool.toZMod bit * (rho 3922 - seg6AccX62 rho) := by
        rw [← hbit]
        unfold seg6AccX62
        linear_combination -r3525
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY63 rho = seg6AccY62 rho - Bool.toZMod bit * (seg6AccY62 rho - rho 3923) := by
      have hd : rho 3925 = Bool.toZMod bit * (rho 3923 - seg6AccY62 rho) := by
        rw [← hbit]
        unfold seg6AccY62
        linear_combination -r3526
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3916 * rho 3917 = rho 3926 := by linear_combination r3527
    have hd1 : rho 3916 * rho 3916 = rho 3927 := by linear_combination r3528
    have hd2 : rho 3917 * rho 3917 = rho 3928 := by linear_combination r3529
    have hd3 : rho 3929 * (rho 3917 * rho 3917 + rho 3916 * rho 3916 * (-1)) = 2 * (rho 3916 * rho 3917) := by
      rw [hd0, hd1, hd2]
      linear_combination r3530
    have hd4 : rho 3930 * (2 - (rho 3917 * rho 3917 + rho 3916 * rho 3916 * (-1))) = rho 3917 * rho 3917 - rho 3916 * rho 3916 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3531
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX62 rho : Seg6.F), (seg6AccY62 rho : Seg6.F)⟩
      ⟨(rho 3916 : Seg6.F), (rho 3917 : Seg6.F)⟩
      ⟨(rho 3922 : Seg6.F), (rho 3923 : Seg6.F)⟩
      ⟨(seg6AccX63 rho : Seg6.F), (seg6AccY63 rho : Seg6.F)⟩
      ⟨(rho 3929 : Seg6.F), (rho 3930 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung62

theorem seg6_rows63 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3532 rho ∧ Seg6.relationRow3533 rho ∧ Seg6.relationRow3534 rho ∧ Seg6.relationRow3535 rho ∧ Seg6.relationRow3536 rho ∧ Seg6.relationRow3537 rho ∧ Seg6.relationRow3538 rho ∧ Seg6.relationRow3539 rho ∧ Seg6.relationRow3540 rho ∧ Seg6.relationRow3541 rho ∧ Seg6.relationRow3542 rho ∧ Seg6.relationRow3543 rho ∧ Seg6.relationRow3544 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p44, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r3532, r3533, r3534, r3535, r3536, r3537, r3538, r3539, r3540, r3541, r3542, r3543, r3544, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3532, r3533, r3534, r3535, r3536, r3537, r3538, r3539, r3540, r3541, r3542, r3543, r3544⟩

theorem seg6_rung63 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1953 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX63 rho : Seg6.F), (seg6AccY63 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3929 : Seg6.F), (rho 3930 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX63 rho : Seg6.F), (seg6AccY63 rho : Seg6.F)⟩
        ⟨(rho 3929 : Seg6.F), (rho 3930 : Seg6.F)⟩
        ⟨(seg6AccX64 rho : Seg6.F), (seg6AccY64 rho : Seg6.F)⟩
        ⟨(rho 3942 : Seg6.F), (rho 3943 : Seg6.F)⟩ := by
  obtain ⟨r3532, r3533, r3534, r3535, r3536, r3537, r3538, r3539, r3540, r3541, r3542, r3543, r3544⟩ := seg6_rows63 rho h
  unfold Seg6.relationRow3532 Seg6.relationLc403 at r3532
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3532
  unfold Seg6.relationRow3533 Seg6.relationLc404 at r3533
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3533
  unfold Seg6.relationRow3534 Seg6.relationLc405 at r3534
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3534
  unfold Seg6.relationRow3535 at r3535
  unfold Seg6.relationRow3536 at r3536
  unfold Seg6.relationRow3537 at r3537
  unfold Seg6.relationRow3538 Seg6.relationLc406 at r3538
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3538
  unfold Seg6.relationRow3539 Seg6.relationLc407 at r3539
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3539
  unfold Seg6.relationRow3540 at r3540
  unfold Seg6.relationRow3541 at r3541
  unfold Seg6.relationRow3542 at r3542
  unfold Seg6.relationRow3543 at r3543
  unfold Seg6.relationRow3544 at r3544
  have hrung63 (bit : Bool) (hbit : rho 1953 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX63 rho : Seg6.F), (seg6AccY63 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3929 : Seg6.F), (rho 3930 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX63 rho : Seg6.F), (seg6AccY63 rho : Seg6.F)⟩
        ⟨(rho 3929 : Seg6.F), (rho 3930 : Seg6.F)⟩
        ⟨(seg6AccX64 rho : Seg6.F), (seg6AccY64 rho : Seg6.F)⟩
        ⟨(rho 3942 : Seg6.F), (rho 3943 : Seg6.F)⟩ := by
    have hnextx : seg6AccX64 rho = seg6AccX63 rho + rho 3937 := by
      unfold seg6AccX64 seg6AccX63
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 63]
      ring
    have hnexty : seg6AccY64 rho = seg6AccY63 rho + rho 3938 := by
      unfold seg6AccY64 seg6AccY63
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 63]
      ring
    have ha0 : (rho 3929 + rho 3930) * (seg6AccX63 rho + seg6AccY63 rho) = rho 3931 := by
      unfold seg6AccX63 seg6AccY63
      linear_combination r3532
    have ha1 : rho 3930 * seg6AccX63 rho = rho 3932 := by
      unfold seg6AccX63
      linear_combination r3533
    have ha2 : rho 3929 * seg6AccY63 rho = rho 3933 := by
      unfold seg6AccY63
      linear_combination r3534
    have ha3 : 3021 * rho 3932 * rho 3933 = rho 3934 := by
      linear_combination r3535
    have ha4 : rho 3935 * (1 + rho 3934) = rho 3932 + rho 3933 := by
      linear_combination r3536
    have ha5 : rho 3936 * (1 - rho 3934) = rho 3931 - rho 3932 - rho 3933 := by
      linear_combination r3537
    have haddx :
        rho 3935 * (1 + 3021 * (rho 3930 * seg6AccX63 rho) * (rho 3929 * seg6AccY63 rho)) =
          rho 3930 * seg6AccX63 rho + rho 3929 * seg6AccY63 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3936 * (1 - 3021 * (rho 3930 * seg6AccX63 rho) * (rho 3929 * seg6AccY63 rho)) =
          (-1) * (rho 3930 * seg6AccX63 rho) - rho 3929 * seg6AccY63 rho +
            (seg6AccY63 rho - seg6AccX63 rho * (-1)) * (rho 3929 + rho 3930) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3936 * (1 - rho 3934) = rho 3931 - rho 3932 - rho 3933 := ha5
        _ = (-1) * rho 3932 - rho 3933 + (seg6AccY63 rho - seg6AccX63 rho * (-1)) * (rho 3929 + rho 3930) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX64 rho = seg6AccX63 rho - Bool.toZMod bit * (seg6AccX63 rho - rho 3935) := by
      have hd : rho 3937 = Bool.toZMod bit * (rho 3935 - seg6AccX63 rho) := by
        rw [← hbit]
        unfold seg6AccX63
        linear_combination -r3538
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY64 rho = seg6AccY63 rho - Bool.toZMod bit * (seg6AccY63 rho - rho 3936) := by
      have hd : rho 3938 = Bool.toZMod bit * (rho 3936 - seg6AccY63 rho) := by
        rw [← hbit]
        unfold seg6AccY63
        linear_combination -r3539
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3929 * rho 3930 = rho 3939 := by linear_combination r3540
    have hd1 : rho 3929 * rho 3929 = rho 3940 := by linear_combination r3541
    have hd2 : rho 3930 * rho 3930 = rho 3941 := by linear_combination r3542
    have hd3 : rho 3942 * (rho 3930 * rho 3930 + rho 3929 * rho 3929 * (-1)) = 2 * (rho 3929 * rho 3930) := by
      rw [hd0, hd1, hd2]
      linear_combination r3543
    have hd4 : rho 3943 * (2 - (rho 3930 * rho 3930 + rho 3929 * rho 3929 * (-1))) = rho 3930 * rho 3930 - rho 3929 * rho 3929 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3544
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX63 rho : Seg6.F), (seg6AccY63 rho : Seg6.F)⟩
      ⟨(rho 3929 : Seg6.F), (rho 3930 : Seg6.F)⟩
      ⟨(rho 3935 : Seg6.F), (rho 3936 : Seg6.F)⟩
      ⟨(seg6AccX64 rho : Seg6.F), (seg6AccY64 rho : Seg6.F)⟩
      ⟨(rho 3942 : Seg6.F), (rho 3943 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung63

theorem seg6_rows64 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3545 rho ∧ Seg6.relationRow3546 rho ∧ Seg6.relationRow3547 rho ∧ Seg6.relationRow3548 rho ∧ Seg6.relationRow3549 rho ∧ Seg6.relationRow3550 rho ∧ Seg6.relationRow3551 rho ∧ Seg6.relationRow3552 rho ∧ Seg6.relationRow3553 rho ∧ Seg6.relationRow3554 rho ∧ Seg6.relationRow3555 rho ∧ Seg6.relationRow3556 rho ∧ Seg6.relationRow3557 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p44, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3545, r3546, r3547, r3548, r3549, r3550, r3551, r3552, r3553, r3554, r3555, r3556, r3557, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3545, r3546, r3547, r3548, r3549, r3550, r3551, r3552, r3553, r3554, r3555, r3556, r3557⟩

theorem seg6_rung64 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1954 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX64 rho : Seg6.F), (seg6AccY64 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3942 : Seg6.F), (rho 3943 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX64 rho : Seg6.F), (seg6AccY64 rho : Seg6.F)⟩
        ⟨(rho 3942 : Seg6.F), (rho 3943 : Seg6.F)⟩
        ⟨(seg6AccX65 rho : Seg6.F), (seg6AccY65 rho : Seg6.F)⟩
        ⟨(rho 3955 : Seg6.F), (rho 3956 : Seg6.F)⟩ := by
  obtain ⟨r3545, r3546, r3547, r3548, r3549, r3550, r3551, r3552, r3553, r3554, r3555, r3556, r3557⟩ := seg6_rows64 rho h
  unfold Seg6.relationRow3545 Seg6.relationLc408 at r3545
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3545
  unfold Seg6.relationRow3546 Seg6.relationLc409 at r3546
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3546
  unfold Seg6.relationRow3547 Seg6.relationLc410 at r3547
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3547
  unfold Seg6.relationRow3548 at r3548
  unfold Seg6.relationRow3549 at r3549
  unfold Seg6.relationRow3550 at r3550
  unfold Seg6.relationRow3551 Seg6.relationLc411 at r3551
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3551
  unfold Seg6.relationRow3552 Seg6.relationLc412 at r3552
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3552
  unfold Seg6.relationRow3553 at r3553
  unfold Seg6.relationRow3554 at r3554
  unfold Seg6.relationRow3555 at r3555
  unfold Seg6.relationRow3556 at r3556
  unfold Seg6.relationRow3557 at r3557
  have hrung64 (bit : Bool) (hbit : rho 1954 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX64 rho : Seg6.F), (seg6AccY64 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3942 : Seg6.F), (rho 3943 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX64 rho : Seg6.F), (seg6AccY64 rho : Seg6.F)⟩
        ⟨(rho 3942 : Seg6.F), (rho 3943 : Seg6.F)⟩
        ⟨(seg6AccX65 rho : Seg6.F), (seg6AccY65 rho : Seg6.F)⟩
        ⟨(rho 3955 : Seg6.F), (rho 3956 : Seg6.F)⟩ := by
    have hnextx : seg6AccX65 rho = seg6AccX64 rho + rho 3950 := by
      unfold seg6AccX65 seg6AccX64
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 64]
      ring
    have hnexty : seg6AccY65 rho = seg6AccY64 rho + rho 3951 := by
      unfold seg6AccY65 seg6AccY64
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 64]
      ring
    have ha0 : (rho 3942 + rho 3943) * (seg6AccX64 rho + seg6AccY64 rho) = rho 3944 := by
      unfold seg6AccX64 seg6AccY64
      linear_combination r3545
    have ha1 : rho 3943 * seg6AccX64 rho = rho 3945 := by
      unfold seg6AccX64
      linear_combination r3546
    have ha2 : rho 3942 * seg6AccY64 rho = rho 3946 := by
      unfold seg6AccY64
      linear_combination r3547
    have ha3 : 3021 * rho 3945 * rho 3946 = rho 3947 := by
      linear_combination r3548
    have ha4 : rho 3948 * (1 + rho 3947) = rho 3945 + rho 3946 := by
      linear_combination r3549
    have ha5 : rho 3949 * (1 - rho 3947) = rho 3944 - rho 3945 - rho 3946 := by
      linear_combination r3550
    have haddx :
        rho 3948 * (1 + 3021 * (rho 3943 * seg6AccX64 rho) * (rho 3942 * seg6AccY64 rho)) =
          rho 3943 * seg6AccX64 rho + rho 3942 * seg6AccY64 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3949 * (1 - 3021 * (rho 3943 * seg6AccX64 rho) * (rho 3942 * seg6AccY64 rho)) =
          (-1) * (rho 3943 * seg6AccX64 rho) - rho 3942 * seg6AccY64 rho +
            (seg6AccY64 rho - seg6AccX64 rho * (-1)) * (rho 3942 + rho 3943) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3949 * (1 - rho 3947) = rho 3944 - rho 3945 - rho 3946 := ha5
        _ = (-1) * rho 3945 - rho 3946 + (seg6AccY64 rho - seg6AccX64 rho * (-1)) * (rho 3942 + rho 3943) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX65 rho = seg6AccX64 rho - Bool.toZMod bit * (seg6AccX64 rho - rho 3948) := by
      have hd : rho 3950 = Bool.toZMod bit * (rho 3948 - seg6AccX64 rho) := by
        rw [← hbit]
        unfold seg6AccX64
        linear_combination -r3551
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY65 rho = seg6AccY64 rho - Bool.toZMod bit * (seg6AccY64 rho - rho 3949) := by
      have hd : rho 3951 = Bool.toZMod bit * (rho 3949 - seg6AccY64 rho) := by
        rw [← hbit]
        unfold seg6AccY64
        linear_combination -r3552
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3942 * rho 3943 = rho 3952 := by linear_combination r3553
    have hd1 : rho 3942 * rho 3942 = rho 3953 := by linear_combination r3554
    have hd2 : rho 3943 * rho 3943 = rho 3954 := by linear_combination r3555
    have hd3 : rho 3955 * (rho 3943 * rho 3943 + rho 3942 * rho 3942 * (-1)) = 2 * (rho 3942 * rho 3943) := by
      rw [hd0, hd1, hd2]
      linear_combination r3556
    have hd4 : rho 3956 * (2 - (rho 3943 * rho 3943 + rho 3942 * rho 3942 * (-1))) = rho 3943 * rho 3943 - rho 3942 * rho 3942 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3557
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX64 rho : Seg6.F), (seg6AccY64 rho : Seg6.F)⟩
      ⟨(rho 3942 : Seg6.F), (rho 3943 : Seg6.F)⟩
      ⟨(rho 3948 : Seg6.F), (rho 3949 : Seg6.F)⟩
      ⟨(seg6AccX65 rho : Seg6.F), (seg6AccY65 rho : Seg6.F)⟩
      ⟨(rho 3955 : Seg6.F), (rho 3956 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung64

theorem seg6_rows65 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3558 rho ∧ Seg6.relationRow3559 rho ∧ Seg6.relationRow3560 rho ∧ Seg6.relationRow3561 rho ∧ Seg6.relationRow3562 rho ∧ Seg6.relationRow3563 rho ∧ Seg6.relationRow3564 rho ∧ Seg6.relationRow3565 rho ∧ Seg6.relationRow3566 rho ∧ Seg6.relationRow3567 rho ∧ Seg6.relationRow3568 rho ∧ Seg6.relationRow3569 rho ∧ Seg6.relationRow3570 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p44, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3558, r3559, r3560, r3561, r3562, r3563, r3564, r3565, r3566, r3567, r3568, r3569, r3570, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3558, r3559, r3560, r3561, r3562, r3563, r3564, r3565, r3566, r3567, r3568, r3569, r3570⟩

theorem seg6_rung65 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1955 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX65 rho : Seg6.F), (seg6AccY65 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3955 : Seg6.F), (rho 3956 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX65 rho : Seg6.F), (seg6AccY65 rho : Seg6.F)⟩
        ⟨(rho 3955 : Seg6.F), (rho 3956 : Seg6.F)⟩
        ⟨(seg6AccX66 rho : Seg6.F), (seg6AccY66 rho : Seg6.F)⟩
        ⟨(rho 3968 : Seg6.F), (rho 3969 : Seg6.F)⟩ := by
  obtain ⟨r3558, r3559, r3560, r3561, r3562, r3563, r3564, r3565, r3566, r3567, r3568, r3569, r3570⟩ := seg6_rows65 rho h
  unfold Seg6.relationRow3558 Seg6.relationLc413 at r3558
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3558
  unfold Seg6.relationRow3559 Seg6.relationLc414 at r3559
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3559
  unfold Seg6.relationRow3560 Seg6.relationLc415 at r3560
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3560
  unfold Seg6.relationRow3561 at r3561
  unfold Seg6.relationRow3562 at r3562
  unfold Seg6.relationRow3563 at r3563
  unfold Seg6.relationRow3564 Seg6.relationLc416 at r3564
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3564
  unfold Seg6.relationRow3565 Seg6.relationLc417 at r3565
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3565
  unfold Seg6.relationRow3566 at r3566
  unfold Seg6.relationRow3567 at r3567
  unfold Seg6.relationRow3568 at r3568
  unfold Seg6.relationRow3569 at r3569
  unfold Seg6.relationRow3570 at r3570
  have hrung65 (bit : Bool) (hbit : rho 1955 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX65 rho : Seg6.F), (seg6AccY65 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3955 : Seg6.F), (rho 3956 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX65 rho : Seg6.F), (seg6AccY65 rho : Seg6.F)⟩
        ⟨(rho 3955 : Seg6.F), (rho 3956 : Seg6.F)⟩
        ⟨(seg6AccX66 rho : Seg6.F), (seg6AccY66 rho : Seg6.F)⟩
        ⟨(rho 3968 : Seg6.F), (rho 3969 : Seg6.F)⟩ := by
    have hnextx : seg6AccX66 rho = seg6AccX65 rho + rho 3963 := by
      unfold seg6AccX66 seg6AccX65
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 65]
      ring
    have hnexty : seg6AccY66 rho = seg6AccY65 rho + rho 3964 := by
      unfold seg6AccY66 seg6AccY65
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 65]
      ring
    have ha0 : (rho 3955 + rho 3956) * (seg6AccX65 rho + seg6AccY65 rho) = rho 3957 := by
      unfold seg6AccX65 seg6AccY65
      linear_combination r3558
    have ha1 : rho 3956 * seg6AccX65 rho = rho 3958 := by
      unfold seg6AccX65
      linear_combination r3559
    have ha2 : rho 3955 * seg6AccY65 rho = rho 3959 := by
      unfold seg6AccY65
      linear_combination r3560
    have ha3 : 3021 * rho 3958 * rho 3959 = rho 3960 := by
      linear_combination r3561
    have ha4 : rho 3961 * (1 + rho 3960) = rho 3958 + rho 3959 := by
      linear_combination r3562
    have ha5 : rho 3962 * (1 - rho 3960) = rho 3957 - rho 3958 - rho 3959 := by
      linear_combination r3563
    have haddx :
        rho 3961 * (1 + 3021 * (rho 3956 * seg6AccX65 rho) * (rho 3955 * seg6AccY65 rho)) =
          rho 3956 * seg6AccX65 rho + rho 3955 * seg6AccY65 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3962 * (1 - 3021 * (rho 3956 * seg6AccX65 rho) * (rho 3955 * seg6AccY65 rho)) =
          (-1) * (rho 3956 * seg6AccX65 rho) - rho 3955 * seg6AccY65 rho +
            (seg6AccY65 rho - seg6AccX65 rho * (-1)) * (rho 3955 + rho 3956) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3962 * (1 - rho 3960) = rho 3957 - rho 3958 - rho 3959 := ha5
        _ = (-1) * rho 3958 - rho 3959 + (seg6AccY65 rho - seg6AccX65 rho * (-1)) * (rho 3955 + rho 3956) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX66 rho = seg6AccX65 rho - Bool.toZMod bit * (seg6AccX65 rho - rho 3961) := by
      have hd : rho 3963 = Bool.toZMod bit * (rho 3961 - seg6AccX65 rho) := by
        rw [← hbit]
        unfold seg6AccX65
        linear_combination -r3564
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY66 rho = seg6AccY65 rho - Bool.toZMod bit * (seg6AccY65 rho - rho 3962) := by
      have hd : rho 3964 = Bool.toZMod bit * (rho 3962 - seg6AccY65 rho) := by
        rw [← hbit]
        unfold seg6AccY65
        linear_combination -r3565
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3955 * rho 3956 = rho 3965 := by linear_combination r3566
    have hd1 : rho 3955 * rho 3955 = rho 3966 := by linear_combination r3567
    have hd2 : rho 3956 * rho 3956 = rho 3967 := by linear_combination r3568
    have hd3 : rho 3968 * (rho 3956 * rho 3956 + rho 3955 * rho 3955 * (-1)) = 2 * (rho 3955 * rho 3956) := by
      rw [hd0, hd1, hd2]
      linear_combination r3569
    have hd4 : rho 3969 * (2 - (rho 3956 * rho 3956 + rho 3955 * rho 3955 * (-1))) = rho 3956 * rho 3956 - rho 3955 * rho 3955 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3570
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX65 rho : Seg6.F), (seg6AccY65 rho : Seg6.F)⟩
      ⟨(rho 3955 : Seg6.F), (rho 3956 : Seg6.F)⟩
      ⟨(rho 3961 : Seg6.F), (rho 3962 : Seg6.F)⟩
      ⟨(seg6AccX66 rho : Seg6.F), (seg6AccY66 rho : Seg6.F)⟩
      ⟨(rho 3968 : Seg6.F), (rho 3969 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung65

theorem seg6_hstep_c5 (rho : Nat -> Seg6.F) (h : Seg6.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (1890 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 55 ≤ i → i < 66 →
      EdwardsBridge.onCurve (seg6LadderAccState rho i) →
      EdwardsBridge.onCurve (seg6LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg6LadderAccState rho i) (seg6LadderCurState rho i)
        (seg6LadderAccState rho (i + 1)) (seg6LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg6_rung55 rho h bits[55]! (hbitAt 55 (by omega)) hacc hcur
  · exact seg6_rung56 rho h bits[56]! (hbitAt 56 (by omega)) hacc hcur
  · exact seg6_rung57 rho h bits[57]! (hbitAt 57 (by omega)) hacc hcur
  · exact seg6_rung58 rho h bits[58]! (hbitAt 58 (by omega)) hacc hcur
  · exact seg6_rung59 rho h bits[59]! (hbitAt 59 (by omega)) hacc hcur
  · exact seg6_rung60 rho h bits[60]! (hbitAt 60 (by omega)) hacc hcur
  · exact seg6_rung61 rho h bits[61]! (hbitAt 61 (by omega)) hacc hcur
  · exact seg6_rung62 rho h bits[62]! (hbitAt 62 (by omega)) hacc hcur
  · exact seg6_rung63 rho h bits[63]! (hbitAt 63 (by omega)) hacc hcur
  · exact seg6_rung64 rho h bits[64]! (hbitAt 64 (by omega)) hacc hcur
  · exact seg6_rung65 rho h bits[65]! (hbitAt 65 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
