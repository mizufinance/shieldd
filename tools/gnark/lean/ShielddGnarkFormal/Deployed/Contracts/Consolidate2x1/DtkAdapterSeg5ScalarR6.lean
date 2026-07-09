import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg5_rows66 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3823 rho ∧ Seg5.relationRow3824 rho ∧ Seg5.relationRow3825 rho ∧ Seg5.relationRow3826 rho ∧ Seg5.relationRow3827 rho ∧ Seg5.relationRow3828 rho ∧ Seg5.relationRow3829 rho ∧ Seg5.relationRow3830 rho ∧ Seg5.relationRow3831 rho ∧ Seg5.relationRow3832 rho ∧ Seg5.relationRow3833 rho ∧ Seg5.relationRow3834 rho ∧ Seg5.relationRow3835 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p47, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3823, r3824, r3825, r3826, r3827, r3828, r3829, r3830, r3831, r3832, r3833, r3834, r3835, _, _, _, _⟩
  exact ⟨r3823, r3824, r3825, r3826, r3827, r3828, r3829, r3830, r3831, r3832, r3833, r3834, r3835⟩

theorem seg5_rung66 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2481 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX66 rho : Seg5.F), (seg5AccY66 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3516 : Seg5.F), (rho 3517 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX66 rho : Seg5.F), (seg5AccY66 rho : Seg5.F)⟩
        ⟨(rho 3516 : Seg5.F), (rho 3517 : Seg5.F)⟩
        ⟨(seg5AccX67 rho : Seg5.F), (seg5AccY67 rho : Seg5.F)⟩
        ⟨(rho 3529 : Seg5.F), (rho 3530 : Seg5.F)⟩ := by
  obtain ⟨r3823, r3824, r3825, r3826, r3827, r3828, r3829, r3830, r3831, r3832, r3833, r3834, r3835⟩ := seg5_rows66 rho h
  unfold Seg5.relationRow3823 at r3823
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3823
  unfold Seg5.relationRow3824 at r3824
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3824
  unfold Seg5.relationRow3825 at r3825
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3825
  unfold Seg5.relationRow3826 at r3826
  unfold Seg5.relationRow3827 at r3827
  unfold Seg5.relationRow3828 at r3828
  unfold Seg5.relationRow3829 at r3829
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3829
  unfold Seg5.relationRow3830 at r3830
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3830
  unfold Seg5.relationRow3831 at r3831
  unfold Seg5.relationRow3832 at r3832
  unfold Seg5.relationRow3833 at r3833
  unfold Seg5.relationRow3834 at r3834
  unfold Seg5.relationRow3835 at r3835
  have hrung66 (bit : Bool) (hbit : rho 2481 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX66 rho : Seg5.F), (seg5AccY66 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3516 : Seg5.F), (rho 3517 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX66 rho : Seg5.F), (seg5AccY66 rho : Seg5.F)⟩
        ⟨(rho 3516 : Seg5.F), (rho 3517 : Seg5.F)⟩
        ⟨(seg5AccX67 rho : Seg5.F), (seg5AccY67 rho : Seg5.F)⟩
        ⟨(rho 3529 : Seg5.F), (rho 3530 : Seg5.F)⟩ := by
    have hnextx : seg5AccX67 rho = seg5AccX66 rho + rho 3524 := by
      unfold seg5AccX67 seg5AccX66
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 66]
      ring
    have hnexty : seg5AccY67 rho = seg5AccY66 rho + rho 3525 := by
      unfold seg5AccY67 seg5AccY66
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 66]
      ring
    have ha0 : (rho 3516 + rho 3517) * (seg5AccX66 rho + seg5AccY66 rho) = rho 3518 := by
      unfold seg5AccX66 seg5AccY66
      linear_combination r3823
    have ha1 : rho 3517 * seg5AccX66 rho = rho 3519 := by
      unfold seg5AccX66
      linear_combination r3824
    have ha2 : rho 3516 * seg5AccY66 rho = rho 3520 := by
      unfold seg5AccY66
      linear_combination r3825
    have ha3 : 3021 * rho 3519 * rho 3520 = rho 3521 := by
      linear_combination r3826
    have ha4 : rho 3522 * (1 + rho 3521) = rho 3519 + rho 3520 := by
      linear_combination r3827
    have ha5 : rho 3523 * (1 - rho 3521) = rho 3518 - rho 3519 - rho 3520 := by
      linear_combination r3828
    have haddx :
        rho 3522 * (1 + 3021 * (rho 3517 * seg5AccX66 rho) * (rho 3516 * seg5AccY66 rho)) =
          rho 3517 * seg5AccX66 rho + rho 3516 * seg5AccY66 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3523 * (1 - 3021 * (rho 3517 * seg5AccX66 rho) * (rho 3516 * seg5AccY66 rho)) =
          (-1) * (rho 3517 * seg5AccX66 rho) - rho 3516 * seg5AccY66 rho +
            (seg5AccY66 rho - seg5AccX66 rho * (-1)) * (rho 3516 + rho 3517) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3523 * (1 - rho 3521) = rho 3518 - rho 3519 - rho 3520 := ha5
        _ = (-1) * rho 3519 - rho 3520 + (seg5AccY66 rho - seg5AccX66 rho * (-1)) * (rho 3516 + rho 3517) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX67 rho = seg5AccX66 rho - Bool.toZMod bit * (seg5AccX66 rho - rho 3522) := by
      have hd : rho 3524 = Bool.toZMod bit * (rho 3522 - seg5AccX66 rho) := by
        rw [← hbit]
        unfold seg5AccX66
        linear_combination -r3829
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY67 rho = seg5AccY66 rho - Bool.toZMod bit * (seg5AccY66 rho - rho 3523) := by
      have hd : rho 3525 = Bool.toZMod bit * (rho 3523 - seg5AccY66 rho) := by
        rw [← hbit]
        unfold seg5AccY66
        linear_combination -r3830
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3516 * rho 3517 = rho 3526 := by linear_combination r3831
    have hd1 : rho 3516 * rho 3516 = rho 3527 := by linear_combination r3832
    have hd2 : rho 3517 * rho 3517 = rho 3528 := by linear_combination r3833
    have hd3 : rho 3529 * (rho 3517 * rho 3517 + rho 3516 * rho 3516 * (-1)) = 2 * (rho 3516 * rho 3517) := by
      rw [hd0, hd1, hd2]
      linear_combination r3834
    have hd4 : rho 3530 * (2 - (rho 3517 * rho 3517 + rho 3516 * rho 3516 * (-1))) = rho 3517 * rho 3517 - rho 3516 * rho 3516 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3835
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX66 rho : Seg5.F), (seg5AccY66 rho : Seg5.F)⟩
      ⟨(rho 3516 : Seg5.F), (rho 3517 : Seg5.F)⟩
      ⟨(rho 3522 : Seg5.F), (rho 3523 : Seg5.F)⟩
      ⟨(seg5AccX67 rho : Seg5.F), (seg5AccY67 rho : Seg5.F)⟩
      ⟨(rho 3529 : Seg5.F), (rho 3530 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung66

theorem seg5_rows67 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3836 rho ∧ Seg5.relationRow3837 rho ∧ Seg5.relationRow3838 rho ∧ Seg5.relationRow3839 rho ∧ Seg5.relationRow3840 rho ∧ Seg5.relationRow3841 rho ∧ Seg5.relationRow3842 rho ∧ Seg5.relationRow3843 rho ∧ Seg5.relationRow3844 rho ∧ Seg5.relationRow3845 rho ∧ Seg5.relationRow3846 rho ∧ Seg5.relationRow3847 rho ∧ Seg5.relationRow3848 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p47, p48, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3836, r3837, r3838, r3839⟩
  unfold Seg5.relationPart48 at p48
  rcases p48 with ⟨r3840, r3841, r3842, r3843, r3844, r3845, r3846, r3847, r3848, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3836, r3837, r3838, r3839, r3840, r3841, r3842, r3843, r3844, r3845, r3846, r3847, r3848⟩

theorem seg5_rung67 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2482 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX67 rho : Seg5.F), (seg5AccY67 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3529 : Seg5.F), (rho 3530 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX67 rho : Seg5.F), (seg5AccY67 rho : Seg5.F)⟩
        ⟨(rho 3529 : Seg5.F), (rho 3530 : Seg5.F)⟩
        ⟨(seg5AccX68 rho : Seg5.F), (seg5AccY68 rho : Seg5.F)⟩
        ⟨(rho 3542 : Seg5.F), (rho 3543 : Seg5.F)⟩ := by
  obtain ⟨r3836, r3837, r3838, r3839, r3840, r3841, r3842, r3843, r3844, r3845, r3846, r3847, r3848⟩ := seg5_rows67 rho h
  unfold Seg5.relationRow3836 at r3836
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3836
  unfold Seg5.relationRow3837 at r3837
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3837
  unfold Seg5.relationRow3838 at r3838
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3838
  unfold Seg5.relationRow3839 at r3839
  unfold Seg5.relationRow3840 at r3840
  unfold Seg5.relationRow3841 at r3841
  unfold Seg5.relationRow3842 at r3842
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3842
  unfold Seg5.relationRow3843 at r3843
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3843
  unfold Seg5.relationRow3844 at r3844
  unfold Seg5.relationRow3845 at r3845
  unfold Seg5.relationRow3846 at r3846
  unfold Seg5.relationRow3847 at r3847
  unfold Seg5.relationRow3848 at r3848
  have hrung67 (bit : Bool) (hbit : rho 2482 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX67 rho : Seg5.F), (seg5AccY67 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3529 : Seg5.F), (rho 3530 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX67 rho : Seg5.F), (seg5AccY67 rho : Seg5.F)⟩
        ⟨(rho 3529 : Seg5.F), (rho 3530 : Seg5.F)⟩
        ⟨(seg5AccX68 rho : Seg5.F), (seg5AccY68 rho : Seg5.F)⟩
        ⟨(rho 3542 : Seg5.F), (rho 3543 : Seg5.F)⟩ := by
    have hnextx : seg5AccX68 rho = seg5AccX67 rho + rho 3537 := by
      unfold seg5AccX68 seg5AccX67
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 67]
      ring
    have hnexty : seg5AccY68 rho = seg5AccY67 rho + rho 3538 := by
      unfold seg5AccY68 seg5AccY67
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 67]
      ring
    have ha0 : (rho 3529 + rho 3530) * (seg5AccX67 rho + seg5AccY67 rho) = rho 3531 := by
      unfold seg5AccX67 seg5AccY67
      linear_combination r3836
    have ha1 : rho 3530 * seg5AccX67 rho = rho 3532 := by
      unfold seg5AccX67
      linear_combination r3837
    have ha2 : rho 3529 * seg5AccY67 rho = rho 3533 := by
      unfold seg5AccY67
      linear_combination r3838
    have ha3 : 3021 * rho 3532 * rho 3533 = rho 3534 := by
      linear_combination r3839
    have ha4 : rho 3535 * (1 + rho 3534) = rho 3532 + rho 3533 := by
      linear_combination r3840
    have ha5 : rho 3536 * (1 - rho 3534) = rho 3531 - rho 3532 - rho 3533 := by
      linear_combination r3841
    have haddx :
        rho 3535 * (1 + 3021 * (rho 3530 * seg5AccX67 rho) * (rho 3529 * seg5AccY67 rho)) =
          rho 3530 * seg5AccX67 rho + rho 3529 * seg5AccY67 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3536 * (1 - 3021 * (rho 3530 * seg5AccX67 rho) * (rho 3529 * seg5AccY67 rho)) =
          (-1) * (rho 3530 * seg5AccX67 rho) - rho 3529 * seg5AccY67 rho +
            (seg5AccY67 rho - seg5AccX67 rho * (-1)) * (rho 3529 + rho 3530) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3536 * (1 - rho 3534) = rho 3531 - rho 3532 - rho 3533 := ha5
        _ = (-1) * rho 3532 - rho 3533 + (seg5AccY67 rho - seg5AccX67 rho * (-1)) * (rho 3529 + rho 3530) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX68 rho = seg5AccX67 rho - Bool.toZMod bit * (seg5AccX67 rho - rho 3535) := by
      have hd : rho 3537 = Bool.toZMod bit * (rho 3535 - seg5AccX67 rho) := by
        rw [← hbit]
        unfold seg5AccX67
        linear_combination -r3842
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY68 rho = seg5AccY67 rho - Bool.toZMod bit * (seg5AccY67 rho - rho 3536) := by
      have hd : rho 3538 = Bool.toZMod bit * (rho 3536 - seg5AccY67 rho) := by
        rw [← hbit]
        unfold seg5AccY67
        linear_combination -r3843
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3529 * rho 3530 = rho 3539 := by linear_combination r3844
    have hd1 : rho 3529 * rho 3529 = rho 3540 := by linear_combination r3845
    have hd2 : rho 3530 * rho 3530 = rho 3541 := by linear_combination r3846
    have hd3 : rho 3542 * (rho 3530 * rho 3530 + rho 3529 * rho 3529 * (-1)) = 2 * (rho 3529 * rho 3530) := by
      rw [hd0, hd1, hd2]
      linear_combination r3847
    have hd4 : rho 3543 * (2 - (rho 3530 * rho 3530 + rho 3529 * rho 3529 * (-1))) = rho 3530 * rho 3530 - rho 3529 * rho 3529 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3848
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX67 rho : Seg5.F), (seg5AccY67 rho : Seg5.F)⟩
      ⟨(rho 3529 : Seg5.F), (rho 3530 : Seg5.F)⟩
      ⟨(rho 3535 : Seg5.F), (rho 3536 : Seg5.F)⟩
      ⟨(seg5AccX68 rho : Seg5.F), (seg5AccY68 rho : Seg5.F)⟩
      ⟨(rho 3542 : Seg5.F), (rho 3543 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung67

theorem seg5_rows68 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3849 rho ∧ Seg5.relationRow3850 rho ∧ Seg5.relationRow3851 rho ∧ Seg5.relationRow3852 rho ∧ Seg5.relationRow3853 rho ∧ Seg5.relationRow3854 rho ∧ Seg5.relationRow3855 rho ∧ Seg5.relationRow3856 rho ∧ Seg5.relationRow3857 rho ∧ Seg5.relationRow3858 rho ∧ Seg5.relationRow3859 rho ∧ Seg5.relationRow3860 rho ∧ Seg5.relationRow3861 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p48, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, r3849, r3850, r3851, r3852, r3853, r3854, r3855, r3856, r3857, r3858, r3859, r3860, r3861, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3849, r3850, r3851, r3852, r3853, r3854, r3855, r3856, r3857, r3858, r3859, r3860, r3861⟩

theorem seg5_rung68 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2483 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX68 rho : Seg5.F), (seg5AccY68 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3542 : Seg5.F), (rho 3543 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX68 rho : Seg5.F), (seg5AccY68 rho : Seg5.F)⟩
        ⟨(rho 3542 : Seg5.F), (rho 3543 : Seg5.F)⟩
        ⟨(seg5AccX69 rho : Seg5.F), (seg5AccY69 rho : Seg5.F)⟩
        ⟨(rho 3555 : Seg5.F), (rho 3556 : Seg5.F)⟩ := by
  obtain ⟨r3849, r3850, r3851, r3852, r3853, r3854, r3855, r3856, r3857, r3858, r3859, r3860, r3861⟩ := seg5_rows68 rho h
  unfold Seg5.relationRow3849 at r3849
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3849
  unfold Seg5.relationRow3850 at r3850
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3850
  unfold Seg5.relationRow3851 at r3851
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3851
  unfold Seg5.relationRow3852 at r3852
  unfold Seg5.relationRow3853 at r3853
  unfold Seg5.relationRow3854 at r3854
  unfold Seg5.relationRow3855 at r3855
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3855
  unfold Seg5.relationRow3856 at r3856
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3856
  unfold Seg5.relationRow3857 at r3857
  unfold Seg5.relationRow3858 at r3858
  unfold Seg5.relationRow3859 at r3859
  unfold Seg5.relationRow3860 at r3860
  unfold Seg5.relationRow3861 at r3861
  have hrung68 (bit : Bool) (hbit : rho 2483 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX68 rho : Seg5.F), (seg5AccY68 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3542 : Seg5.F), (rho 3543 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX68 rho : Seg5.F), (seg5AccY68 rho : Seg5.F)⟩
        ⟨(rho 3542 : Seg5.F), (rho 3543 : Seg5.F)⟩
        ⟨(seg5AccX69 rho : Seg5.F), (seg5AccY69 rho : Seg5.F)⟩
        ⟨(rho 3555 : Seg5.F), (rho 3556 : Seg5.F)⟩ := by
    have hnextx : seg5AccX69 rho = seg5AccX68 rho + rho 3550 := by
      unfold seg5AccX69 seg5AccX68
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 68]
      ring
    have hnexty : seg5AccY69 rho = seg5AccY68 rho + rho 3551 := by
      unfold seg5AccY69 seg5AccY68
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 68]
      ring
    have ha0 : (rho 3542 + rho 3543) * (seg5AccX68 rho + seg5AccY68 rho) = rho 3544 := by
      unfold seg5AccX68 seg5AccY68
      linear_combination r3849
    have ha1 : rho 3543 * seg5AccX68 rho = rho 3545 := by
      unfold seg5AccX68
      linear_combination r3850
    have ha2 : rho 3542 * seg5AccY68 rho = rho 3546 := by
      unfold seg5AccY68
      linear_combination r3851
    have ha3 : 3021 * rho 3545 * rho 3546 = rho 3547 := by
      linear_combination r3852
    have ha4 : rho 3548 * (1 + rho 3547) = rho 3545 + rho 3546 := by
      linear_combination r3853
    have ha5 : rho 3549 * (1 - rho 3547) = rho 3544 - rho 3545 - rho 3546 := by
      linear_combination r3854
    have haddx :
        rho 3548 * (1 + 3021 * (rho 3543 * seg5AccX68 rho) * (rho 3542 * seg5AccY68 rho)) =
          rho 3543 * seg5AccX68 rho + rho 3542 * seg5AccY68 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3549 * (1 - 3021 * (rho 3543 * seg5AccX68 rho) * (rho 3542 * seg5AccY68 rho)) =
          (-1) * (rho 3543 * seg5AccX68 rho) - rho 3542 * seg5AccY68 rho +
            (seg5AccY68 rho - seg5AccX68 rho * (-1)) * (rho 3542 + rho 3543) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3549 * (1 - rho 3547) = rho 3544 - rho 3545 - rho 3546 := ha5
        _ = (-1) * rho 3545 - rho 3546 + (seg5AccY68 rho - seg5AccX68 rho * (-1)) * (rho 3542 + rho 3543) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX69 rho = seg5AccX68 rho - Bool.toZMod bit * (seg5AccX68 rho - rho 3548) := by
      have hd : rho 3550 = Bool.toZMod bit * (rho 3548 - seg5AccX68 rho) := by
        rw [← hbit]
        unfold seg5AccX68
        linear_combination -r3855
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY69 rho = seg5AccY68 rho - Bool.toZMod bit * (seg5AccY68 rho - rho 3549) := by
      have hd : rho 3551 = Bool.toZMod bit * (rho 3549 - seg5AccY68 rho) := by
        rw [← hbit]
        unfold seg5AccY68
        linear_combination -r3856
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3542 * rho 3543 = rho 3552 := by linear_combination r3857
    have hd1 : rho 3542 * rho 3542 = rho 3553 := by linear_combination r3858
    have hd2 : rho 3543 * rho 3543 = rho 3554 := by linear_combination r3859
    have hd3 : rho 3555 * (rho 3543 * rho 3543 + rho 3542 * rho 3542 * (-1)) = 2 * (rho 3542 * rho 3543) := by
      rw [hd0, hd1, hd2]
      linear_combination r3860
    have hd4 : rho 3556 * (2 - (rho 3543 * rho 3543 + rho 3542 * rho 3542 * (-1))) = rho 3543 * rho 3543 - rho 3542 * rho 3542 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3861
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX68 rho : Seg5.F), (seg5AccY68 rho : Seg5.F)⟩
      ⟨(rho 3542 : Seg5.F), (rho 3543 : Seg5.F)⟩
      ⟨(rho 3548 : Seg5.F), (rho 3549 : Seg5.F)⟩
      ⟨(seg5AccX69 rho : Seg5.F), (seg5AccY69 rho : Seg5.F)⟩
      ⟨(rho 3555 : Seg5.F), (rho 3556 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung68

theorem seg5_rows69 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3862 rho ∧ Seg5.relationRow3863 rho ∧ Seg5.relationRow3864 rho ∧ Seg5.relationRow3865 rho ∧ Seg5.relationRow3866 rho ∧ Seg5.relationRow3867 rho ∧ Seg5.relationRow3868 rho ∧ Seg5.relationRow3869 rho ∧ Seg5.relationRow3870 rho ∧ Seg5.relationRow3871 rho ∧ Seg5.relationRow3872 rho ∧ Seg5.relationRow3873 rho ∧ Seg5.relationRow3874 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p48, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3862, r3863, r3864, r3865, r3866, r3867, r3868, r3869, r3870, r3871, r3872, r3873, r3874, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3862, r3863, r3864, r3865, r3866, r3867, r3868, r3869, r3870, r3871, r3872, r3873, r3874⟩

theorem seg5_rung69 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2484 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX69 rho : Seg5.F), (seg5AccY69 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3555 : Seg5.F), (rho 3556 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX69 rho : Seg5.F), (seg5AccY69 rho : Seg5.F)⟩
        ⟨(rho 3555 : Seg5.F), (rho 3556 : Seg5.F)⟩
        ⟨(seg5AccX70 rho : Seg5.F), (seg5AccY70 rho : Seg5.F)⟩
        ⟨(rho 3568 : Seg5.F), (rho 3569 : Seg5.F)⟩ := by
  obtain ⟨r3862, r3863, r3864, r3865, r3866, r3867, r3868, r3869, r3870, r3871, r3872, r3873, r3874⟩ := seg5_rows69 rho h
  unfold Seg5.relationRow3862 at r3862
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3862
  unfold Seg5.relationRow3863 at r3863
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3863
  unfold Seg5.relationRow3864 at r3864
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3864
  unfold Seg5.relationRow3865 at r3865
  unfold Seg5.relationRow3866 at r3866
  unfold Seg5.relationRow3867 at r3867
  unfold Seg5.relationRow3868 at r3868
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3868
  unfold Seg5.relationRow3869 at r3869
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3869
  unfold Seg5.relationRow3870 at r3870
  unfold Seg5.relationRow3871 at r3871
  unfold Seg5.relationRow3872 at r3872
  unfold Seg5.relationRow3873 at r3873
  unfold Seg5.relationRow3874 at r3874
  have hrung69 (bit : Bool) (hbit : rho 2484 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX69 rho : Seg5.F), (seg5AccY69 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3555 : Seg5.F), (rho 3556 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX69 rho : Seg5.F), (seg5AccY69 rho : Seg5.F)⟩
        ⟨(rho 3555 : Seg5.F), (rho 3556 : Seg5.F)⟩
        ⟨(seg5AccX70 rho : Seg5.F), (seg5AccY70 rho : Seg5.F)⟩
        ⟨(rho 3568 : Seg5.F), (rho 3569 : Seg5.F)⟩ := by
    have hnextx : seg5AccX70 rho = seg5AccX69 rho + rho 3563 := by
      unfold seg5AccX70 seg5AccX69
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 69]
      ring
    have hnexty : seg5AccY70 rho = seg5AccY69 rho + rho 3564 := by
      unfold seg5AccY70 seg5AccY69
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 69]
      ring
    have ha0 : (rho 3555 + rho 3556) * (seg5AccX69 rho + seg5AccY69 rho) = rho 3557 := by
      unfold seg5AccX69 seg5AccY69
      linear_combination r3862
    have ha1 : rho 3556 * seg5AccX69 rho = rho 3558 := by
      unfold seg5AccX69
      linear_combination r3863
    have ha2 : rho 3555 * seg5AccY69 rho = rho 3559 := by
      unfold seg5AccY69
      linear_combination r3864
    have ha3 : 3021 * rho 3558 * rho 3559 = rho 3560 := by
      linear_combination r3865
    have ha4 : rho 3561 * (1 + rho 3560) = rho 3558 + rho 3559 := by
      linear_combination r3866
    have ha5 : rho 3562 * (1 - rho 3560) = rho 3557 - rho 3558 - rho 3559 := by
      linear_combination r3867
    have haddx :
        rho 3561 * (1 + 3021 * (rho 3556 * seg5AccX69 rho) * (rho 3555 * seg5AccY69 rho)) =
          rho 3556 * seg5AccX69 rho + rho 3555 * seg5AccY69 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3562 * (1 - 3021 * (rho 3556 * seg5AccX69 rho) * (rho 3555 * seg5AccY69 rho)) =
          (-1) * (rho 3556 * seg5AccX69 rho) - rho 3555 * seg5AccY69 rho +
            (seg5AccY69 rho - seg5AccX69 rho * (-1)) * (rho 3555 + rho 3556) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3562 * (1 - rho 3560) = rho 3557 - rho 3558 - rho 3559 := ha5
        _ = (-1) * rho 3558 - rho 3559 + (seg5AccY69 rho - seg5AccX69 rho * (-1)) * (rho 3555 + rho 3556) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX70 rho = seg5AccX69 rho - Bool.toZMod bit * (seg5AccX69 rho - rho 3561) := by
      have hd : rho 3563 = Bool.toZMod bit * (rho 3561 - seg5AccX69 rho) := by
        rw [← hbit]
        unfold seg5AccX69
        linear_combination -r3868
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY70 rho = seg5AccY69 rho - Bool.toZMod bit * (seg5AccY69 rho - rho 3562) := by
      have hd : rho 3564 = Bool.toZMod bit * (rho 3562 - seg5AccY69 rho) := by
        rw [← hbit]
        unfold seg5AccY69
        linear_combination -r3869
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3555 * rho 3556 = rho 3565 := by linear_combination r3870
    have hd1 : rho 3555 * rho 3555 = rho 3566 := by linear_combination r3871
    have hd2 : rho 3556 * rho 3556 = rho 3567 := by linear_combination r3872
    have hd3 : rho 3568 * (rho 3556 * rho 3556 + rho 3555 * rho 3555 * (-1)) = 2 * (rho 3555 * rho 3556) := by
      rw [hd0, hd1, hd2]
      linear_combination r3873
    have hd4 : rho 3569 * (2 - (rho 3556 * rho 3556 + rho 3555 * rho 3555 * (-1))) = rho 3556 * rho 3556 - rho 3555 * rho 3555 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3874
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX69 rho : Seg5.F), (seg5AccY69 rho : Seg5.F)⟩
      ⟨(rho 3555 : Seg5.F), (rho 3556 : Seg5.F)⟩
      ⟨(rho 3561 : Seg5.F), (rho 3562 : Seg5.F)⟩
      ⟨(seg5AccX70 rho : Seg5.F), (seg5AccY70 rho : Seg5.F)⟩
      ⟨(rho 3568 : Seg5.F), (rho 3569 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung69

theorem seg5_rows70 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3875 rho ∧ Seg5.relationRow3876 rho ∧ Seg5.relationRow3877 rho ∧ Seg5.relationRow3878 rho ∧ Seg5.relationRow3879 rho ∧ Seg5.relationRow3880 rho ∧ Seg5.relationRow3881 rho ∧ Seg5.relationRow3882 rho ∧ Seg5.relationRow3883 rho ∧ Seg5.relationRow3884 rho ∧ Seg5.relationRow3885 rho ∧ Seg5.relationRow3886 rho ∧ Seg5.relationRow3887 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p48, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3875, r3876, r3877, r3878, r3879, r3880, r3881, r3882, r3883, r3884, r3885, r3886, r3887, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3875, r3876, r3877, r3878, r3879, r3880, r3881, r3882, r3883, r3884, r3885, r3886, r3887⟩

theorem seg5_rung70 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2485 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX70 rho : Seg5.F), (seg5AccY70 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3568 : Seg5.F), (rho 3569 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX70 rho : Seg5.F), (seg5AccY70 rho : Seg5.F)⟩
        ⟨(rho 3568 : Seg5.F), (rho 3569 : Seg5.F)⟩
        ⟨(seg5AccX71 rho : Seg5.F), (seg5AccY71 rho : Seg5.F)⟩
        ⟨(rho 3581 : Seg5.F), (rho 3582 : Seg5.F)⟩ := by
  obtain ⟨r3875, r3876, r3877, r3878, r3879, r3880, r3881, r3882, r3883, r3884, r3885, r3886, r3887⟩ := seg5_rows70 rho h
  unfold Seg5.relationRow3875 at r3875
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3875
  unfold Seg5.relationRow3876 at r3876
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3876
  unfold Seg5.relationRow3877 at r3877
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3877
  unfold Seg5.relationRow3878 at r3878
  unfold Seg5.relationRow3879 at r3879
  unfold Seg5.relationRow3880 at r3880
  unfold Seg5.relationRow3881 at r3881
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3881
  unfold Seg5.relationRow3882 at r3882
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3882
  unfold Seg5.relationRow3883 at r3883
  unfold Seg5.relationRow3884 at r3884
  unfold Seg5.relationRow3885 at r3885
  unfold Seg5.relationRow3886 at r3886
  unfold Seg5.relationRow3887 at r3887
  have hrung70 (bit : Bool) (hbit : rho 2485 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX70 rho : Seg5.F), (seg5AccY70 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3568 : Seg5.F), (rho 3569 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX70 rho : Seg5.F), (seg5AccY70 rho : Seg5.F)⟩
        ⟨(rho 3568 : Seg5.F), (rho 3569 : Seg5.F)⟩
        ⟨(seg5AccX71 rho : Seg5.F), (seg5AccY71 rho : Seg5.F)⟩
        ⟨(rho 3581 : Seg5.F), (rho 3582 : Seg5.F)⟩ := by
    have hnextx : seg5AccX71 rho = seg5AccX70 rho + rho 3576 := by
      unfold seg5AccX71 seg5AccX70
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 70]
      ring
    have hnexty : seg5AccY71 rho = seg5AccY70 rho + rho 3577 := by
      unfold seg5AccY71 seg5AccY70
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 70]
      ring
    have ha0 : (rho 3568 + rho 3569) * (seg5AccX70 rho + seg5AccY70 rho) = rho 3570 := by
      unfold seg5AccX70 seg5AccY70
      linear_combination r3875
    have ha1 : rho 3569 * seg5AccX70 rho = rho 3571 := by
      unfold seg5AccX70
      linear_combination r3876
    have ha2 : rho 3568 * seg5AccY70 rho = rho 3572 := by
      unfold seg5AccY70
      linear_combination r3877
    have ha3 : 3021 * rho 3571 * rho 3572 = rho 3573 := by
      linear_combination r3878
    have ha4 : rho 3574 * (1 + rho 3573) = rho 3571 + rho 3572 := by
      linear_combination r3879
    have ha5 : rho 3575 * (1 - rho 3573) = rho 3570 - rho 3571 - rho 3572 := by
      linear_combination r3880
    have haddx :
        rho 3574 * (1 + 3021 * (rho 3569 * seg5AccX70 rho) * (rho 3568 * seg5AccY70 rho)) =
          rho 3569 * seg5AccX70 rho + rho 3568 * seg5AccY70 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3575 * (1 - 3021 * (rho 3569 * seg5AccX70 rho) * (rho 3568 * seg5AccY70 rho)) =
          (-1) * (rho 3569 * seg5AccX70 rho) - rho 3568 * seg5AccY70 rho +
            (seg5AccY70 rho - seg5AccX70 rho * (-1)) * (rho 3568 + rho 3569) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3575 * (1 - rho 3573) = rho 3570 - rho 3571 - rho 3572 := ha5
        _ = (-1) * rho 3571 - rho 3572 + (seg5AccY70 rho - seg5AccX70 rho * (-1)) * (rho 3568 + rho 3569) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX71 rho = seg5AccX70 rho - Bool.toZMod bit * (seg5AccX70 rho - rho 3574) := by
      have hd : rho 3576 = Bool.toZMod bit * (rho 3574 - seg5AccX70 rho) := by
        rw [← hbit]
        unfold seg5AccX70
        linear_combination -r3881
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY71 rho = seg5AccY70 rho - Bool.toZMod bit * (seg5AccY70 rho - rho 3575) := by
      have hd : rho 3577 = Bool.toZMod bit * (rho 3575 - seg5AccY70 rho) := by
        rw [← hbit]
        unfold seg5AccY70
        linear_combination -r3882
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3568 * rho 3569 = rho 3578 := by linear_combination r3883
    have hd1 : rho 3568 * rho 3568 = rho 3579 := by linear_combination r3884
    have hd2 : rho 3569 * rho 3569 = rho 3580 := by linear_combination r3885
    have hd3 : rho 3581 * (rho 3569 * rho 3569 + rho 3568 * rho 3568 * (-1)) = 2 * (rho 3568 * rho 3569) := by
      rw [hd0, hd1, hd2]
      linear_combination r3886
    have hd4 : rho 3582 * (2 - (rho 3569 * rho 3569 + rho 3568 * rho 3568 * (-1))) = rho 3569 * rho 3569 - rho 3568 * rho 3568 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3887
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX70 rho : Seg5.F), (seg5AccY70 rho : Seg5.F)⟩
      ⟨(rho 3568 : Seg5.F), (rho 3569 : Seg5.F)⟩
      ⟨(rho 3574 : Seg5.F), (rho 3575 : Seg5.F)⟩
      ⟨(seg5AccX71 rho : Seg5.F), (seg5AccY71 rho : Seg5.F)⟩
      ⟨(rho 3581 : Seg5.F), (rho 3582 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung70

theorem seg5_rows71 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3888 rho ∧ Seg5.relationRow3889 rho ∧ Seg5.relationRow3890 rho ∧ Seg5.relationRow3891 rho ∧ Seg5.relationRow3892 rho ∧ Seg5.relationRow3893 rho ∧ Seg5.relationRow3894 rho ∧ Seg5.relationRow3895 rho ∧ Seg5.relationRow3896 rho ∧ Seg5.relationRow3897 rho ∧ Seg5.relationRow3898 rho ∧ Seg5.relationRow3899 rho ∧ Seg5.relationRow3900 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p48, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3888, r3889, r3890, r3891, r3892, r3893, r3894, r3895, r3896, r3897, r3898, r3899, r3900, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3888, r3889, r3890, r3891, r3892, r3893, r3894, r3895, r3896, r3897, r3898, r3899, r3900⟩

theorem seg5_rung71 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2486 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX71 rho : Seg5.F), (seg5AccY71 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3581 : Seg5.F), (rho 3582 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX71 rho : Seg5.F), (seg5AccY71 rho : Seg5.F)⟩
        ⟨(rho 3581 : Seg5.F), (rho 3582 : Seg5.F)⟩
        ⟨(seg5AccX72 rho : Seg5.F), (seg5AccY72 rho : Seg5.F)⟩
        ⟨(rho 3594 : Seg5.F), (rho 3595 : Seg5.F)⟩ := by
  obtain ⟨r3888, r3889, r3890, r3891, r3892, r3893, r3894, r3895, r3896, r3897, r3898, r3899, r3900⟩ := seg5_rows71 rho h
  unfold Seg5.relationRow3888 at r3888
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3888
  unfold Seg5.relationRow3889 at r3889
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3889
  unfold Seg5.relationRow3890 at r3890
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3890
  unfold Seg5.relationRow3891 at r3891
  unfold Seg5.relationRow3892 at r3892
  unfold Seg5.relationRow3893 at r3893
  unfold Seg5.relationRow3894 at r3894
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3894
  unfold Seg5.relationRow3895 at r3895
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3895
  unfold Seg5.relationRow3896 at r3896
  unfold Seg5.relationRow3897 at r3897
  unfold Seg5.relationRow3898 at r3898
  unfold Seg5.relationRow3899 at r3899
  unfold Seg5.relationRow3900 at r3900
  have hrung71 (bit : Bool) (hbit : rho 2486 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX71 rho : Seg5.F), (seg5AccY71 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3581 : Seg5.F), (rho 3582 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX71 rho : Seg5.F), (seg5AccY71 rho : Seg5.F)⟩
        ⟨(rho 3581 : Seg5.F), (rho 3582 : Seg5.F)⟩
        ⟨(seg5AccX72 rho : Seg5.F), (seg5AccY72 rho : Seg5.F)⟩
        ⟨(rho 3594 : Seg5.F), (rho 3595 : Seg5.F)⟩ := by
    have hnextx : seg5AccX72 rho = seg5AccX71 rho + rho 3589 := by
      unfold seg5AccX72 seg5AccX71
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 71]
      ring
    have hnexty : seg5AccY72 rho = seg5AccY71 rho + rho 3590 := by
      unfold seg5AccY72 seg5AccY71
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 71]
      ring
    have ha0 : (rho 3581 + rho 3582) * (seg5AccX71 rho + seg5AccY71 rho) = rho 3583 := by
      unfold seg5AccX71 seg5AccY71
      linear_combination r3888
    have ha1 : rho 3582 * seg5AccX71 rho = rho 3584 := by
      unfold seg5AccX71
      linear_combination r3889
    have ha2 : rho 3581 * seg5AccY71 rho = rho 3585 := by
      unfold seg5AccY71
      linear_combination r3890
    have ha3 : 3021 * rho 3584 * rho 3585 = rho 3586 := by
      linear_combination r3891
    have ha4 : rho 3587 * (1 + rho 3586) = rho 3584 + rho 3585 := by
      linear_combination r3892
    have ha5 : rho 3588 * (1 - rho 3586) = rho 3583 - rho 3584 - rho 3585 := by
      linear_combination r3893
    have haddx :
        rho 3587 * (1 + 3021 * (rho 3582 * seg5AccX71 rho) * (rho 3581 * seg5AccY71 rho)) =
          rho 3582 * seg5AccX71 rho + rho 3581 * seg5AccY71 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3588 * (1 - 3021 * (rho 3582 * seg5AccX71 rho) * (rho 3581 * seg5AccY71 rho)) =
          (-1) * (rho 3582 * seg5AccX71 rho) - rho 3581 * seg5AccY71 rho +
            (seg5AccY71 rho - seg5AccX71 rho * (-1)) * (rho 3581 + rho 3582) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3588 * (1 - rho 3586) = rho 3583 - rho 3584 - rho 3585 := ha5
        _ = (-1) * rho 3584 - rho 3585 + (seg5AccY71 rho - seg5AccX71 rho * (-1)) * (rho 3581 + rho 3582) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX72 rho = seg5AccX71 rho - Bool.toZMod bit * (seg5AccX71 rho - rho 3587) := by
      have hd : rho 3589 = Bool.toZMod bit * (rho 3587 - seg5AccX71 rho) := by
        rw [← hbit]
        unfold seg5AccX71
        linear_combination -r3894
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY72 rho = seg5AccY71 rho - Bool.toZMod bit * (seg5AccY71 rho - rho 3588) := by
      have hd : rho 3590 = Bool.toZMod bit * (rho 3588 - seg5AccY71 rho) := by
        rw [← hbit]
        unfold seg5AccY71
        linear_combination -r3895
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3581 * rho 3582 = rho 3591 := by linear_combination r3896
    have hd1 : rho 3581 * rho 3581 = rho 3592 := by linear_combination r3897
    have hd2 : rho 3582 * rho 3582 = rho 3593 := by linear_combination r3898
    have hd3 : rho 3594 * (rho 3582 * rho 3582 + rho 3581 * rho 3581 * (-1)) = 2 * (rho 3581 * rho 3582) := by
      rw [hd0, hd1, hd2]
      linear_combination r3899
    have hd4 : rho 3595 * (2 - (rho 3582 * rho 3582 + rho 3581 * rho 3581 * (-1))) = rho 3582 * rho 3582 - rho 3581 * rho 3581 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3900
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX71 rho : Seg5.F), (seg5AccY71 rho : Seg5.F)⟩
      ⟨(rho 3581 : Seg5.F), (rho 3582 : Seg5.F)⟩
      ⟨(rho 3587 : Seg5.F), (rho 3588 : Seg5.F)⟩
      ⟨(seg5AccX72 rho : Seg5.F), (seg5AccY72 rho : Seg5.F)⟩
      ⟨(rho 3594 : Seg5.F), (rho 3595 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung71

theorem seg5_rows72 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3901 rho ∧ Seg5.relationRow3902 rho ∧ Seg5.relationRow3903 rho ∧ Seg5.relationRow3904 rho ∧ Seg5.relationRow3905 rho ∧ Seg5.relationRow3906 rho ∧ Seg5.relationRow3907 rho ∧ Seg5.relationRow3908 rho ∧ Seg5.relationRow3909 rho ∧ Seg5.relationRow3910 rho ∧ Seg5.relationRow3911 rho ∧ Seg5.relationRow3912 rho ∧ Seg5.relationRow3913 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p48, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3901, r3902, r3903, r3904, r3905, r3906, r3907, r3908, r3909, r3910, r3911, r3912, r3913, _, _, _, _, _, _⟩
  exact ⟨r3901, r3902, r3903, r3904, r3905, r3906, r3907, r3908, r3909, r3910, r3911, r3912, r3913⟩

theorem seg5_rung72 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2487 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX72 rho : Seg5.F), (seg5AccY72 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3594 : Seg5.F), (rho 3595 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX72 rho : Seg5.F), (seg5AccY72 rho : Seg5.F)⟩
        ⟨(rho 3594 : Seg5.F), (rho 3595 : Seg5.F)⟩
        ⟨(seg5AccX73 rho : Seg5.F), (seg5AccY73 rho : Seg5.F)⟩
        ⟨(rho 3607 : Seg5.F), (rho 3608 : Seg5.F)⟩ := by
  obtain ⟨r3901, r3902, r3903, r3904, r3905, r3906, r3907, r3908, r3909, r3910, r3911, r3912, r3913⟩ := seg5_rows72 rho h
  unfold Seg5.relationRow3901 at r3901
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3901
  unfold Seg5.relationRow3902 at r3902
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3902
  unfold Seg5.relationRow3903 at r3903
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3903
  unfold Seg5.relationRow3904 at r3904
  unfold Seg5.relationRow3905 at r3905
  unfold Seg5.relationRow3906 at r3906
  unfold Seg5.relationRow3907 at r3907
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3907
  unfold Seg5.relationRow3908 at r3908
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3908
  unfold Seg5.relationRow3909 at r3909
  unfold Seg5.relationRow3910 at r3910
  unfold Seg5.relationRow3911 at r3911
  unfold Seg5.relationRow3912 at r3912
  unfold Seg5.relationRow3913 at r3913
  have hrung72 (bit : Bool) (hbit : rho 2487 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX72 rho : Seg5.F), (seg5AccY72 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3594 : Seg5.F), (rho 3595 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX72 rho : Seg5.F), (seg5AccY72 rho : Seg5.F)⟩
        ⟨(rho 3594 : Seg5.F), (rho 3595 : Seg5.F)⟩
        ⟨(seg5AccX73 rho : Seg5.F), (seg5AccY73 rho : Seg5.F)⟩
        ⟨(rho 3607 : Seg5.F), (rho 3608 : Seg5.F)⟩ := by
    have hnextx : seg5AccX73 rho = seg5AccX72 rho + rho 3602 := by
      unfold seg5AccX73 seg5AccX72
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 72]
      ring
    have hnexty : seg5AccY73 rho = seg5AccY72 rho + rho 3603 := by
      unfold seg5AccY73 seg5AccY72
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 72]
      ring
    have ha0 : (rho 3594 + rho 3595) * (seg5AccX72 rho + seg5AccY72 rho) = rho 3596 := by
      unfold seg5AccX72 seg5AccY72
      linear_combination r3901
    have ha1 : rho 3595 * seg5AccX72 rho = rho 3597 := by
      unfold seg5AccX72
      linear_combination r3902
    have ha2 : rho 3594 * seg5AccY72 rho = rho 3598 := by
      unfold seg5AccY72
      linear_combination r3903
    have ha3 : 3021 * rho 3597 * rho 3598 = rho 3599 := by
      linear_combination r3904
    have ha4 : rho 3600 * (1 + rho 3599) = rho 3597 + rho 3598 := by
      linear_combination r3905
    have ha5 : rho 3601 * (1 - rho 3599) = rho 3596 - rho 3597 - rho 3598 := by
      linear_combination r3906
    have haddx :
        rho 3600 * (1 + 3021 * (rho 3595 * seg5AccX72 rho) * (rho 3594 * seg5AccY72 rho)) =
          rho 3595 * seg5AccX72 rho + rho 3594 * seg5AccY72 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3601 * (1 - 3021 * (rho 3595 * seg5AccX72 rho) * (rho 3594 * seg5AccY72 rho)) =
          (-1) * (rho 3595 * seg5AccX72 rho) - rho 3594 * seg5AccY72 rho +
            (seg5AccY72 rho - seg5AccX72 rho * (-1)) * (rho 3594 + rho 3595) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3601 * (1 - rho 3599) = rho 3596 - rho 3597 - rho 3598 := ha5
        _ = (-1) * rho 3597 - rho 3598 + (seg5AccY72 rho - seg5AccX72 rho * (-1)) * (rho 3594 + rho 3595) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX73 rho = seg5AccX72 rho - Bool.toZMod bit * (seg5AccX72 rho - rho 3600) := by
      have hd : rho 3602 = Bool.toZMod bit * (rho 3600 - seg5AccX72 rho) := by
        rw [← hbit]
        unfold seg5AccX72
        linear_combination -r3907
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY73 rho = seg5AccY72 rho - Bool.toZMod bit * (seg5AccY72 rho - rho 3601) := by
      have hd : rho 3603 = Bool.toZMod bit * (rho 3601 - seg5AccY72 rho) := by
        rw [← hbit]
        unfold seg5AccY72
        linear_combination -r3908
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3594 * rho 3595 = rho 3604 := by linear_combination r3909
    have hd1 : rho 3594 * rho 3594 = rho 3605 := by linear_combination r3910
    have hd2 : rho 3595 * rho 3595 = rho 3606 := by linear_combination r3911
    have hd3 : rho 3607 * (rho 3595 * rho 3595 + rho 3594 * rho 3594 * (-1)) = 2 * (rho 3594 * rho 3595) := by
      rw [hd0, hd1, hd2]
      linear_combination r3912
    have hd4 : rho 3608 * (2 - (rho 3595 * rho 3595 + rho 3594 * rho 3594 * (-1))) = rho 3595 * rho 3595 - rho 3594 * rho 3594 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3913
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX72 rho : Seg5.F), (seg5AccY72 rho : Seg5.F)⟩
      ⟨(rho 3594 : Seg5.F), (rho 3595 : Seg5.F)⟩
      ⟨(rho 3600 : Seg5.F), (rho 3601 : Seg5.F)⟩
      ⟨(seg5AccX73 rho : Seg5.F), (seg5AccY73 rho : Seg5.F)⟩
      ⟨(rho 3607 : Seg5.F), (rho 3608 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung72

theorem seg5_rows73 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3914 rho ∧ Seg5.relationRow3915 rho ∧ Seg5.relationRow3916 rho ∧ Seg5.relationRow3917 rho ∧ Seg5.relationRow3918 rho ∧ Seg5.relationRow3919 rho ∧ Seg5.relationRow3920 rho ∧ Seg5.relationRow3921 rho ∧ Seg5.relationRow3922 rho ∧ Seg5.relationRow3923 rho ∧ Seg5.relationRow3924 rho ∧ Seg5.relationRow3925 rho ∧ Seg5.relationRow3926 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p48, p49,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3914, r3915, r3916, r3917, r3918, r3919⟩
  unfold Seg5.relationPart49 at p49
  rcases p49 with ⟨r3920, r3921, r3922, r3923, r3924, r3925, r3926, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3914, r3915, r3916, r3917, r3918, r3919, r3920, r3921, r3922, r3923, r3924, r3925, r3926⟩

theorem seg5_rung73 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2488 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX73 rho : Seg5.F), (seg5AccY73 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3607 : Seg5.F), (rho 3608 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX73 rho : Seg5.F), (seg5AccY73 rho : Seg5.F)⟩
        ⟨(rho 3607 : Seg5.F), (rho 3608 : Seg5.F)⟩
        ⟨(seg5AccX74 rho : Seg5.F), (seg5AccY74 rho : Seg5.F)⟩
        ⟨(rho 3620 : Seg5.F), (rho 3621 : Seg5.F)⟩ := by
  obtain ⟨r3914, r3915, r3916, r3917, r3918, r3919, r3920, r3921, r3922, r3923, r3924, r3925, r3926⟩ := seg5_rows73 rho h
  unfold Seg5.relationRow3914 at r3914
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3914
  unfold Seg5.relationRow3915 at r3915
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3915
  unfold Seg5.relationRow3916 at r3916
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3916
  unfold Seg5.relationRow3917 at r3917
  unfold Seg5.relationRow3918 at r3918
  unfold Seg5.relationRow3919 at r3919
  unfold Seg5.relationRow3920 at r3920
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3920
  unfold Seg5.relationRow3921 at r3921
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3921
  unfold Seg5.relationRow3922 at r3922
  unfold Seg5.relationRow3923 at r3923
  unfold Seg5.relationRow3924 at r3924
  unfold Seg5.relationRow3925 at r3925
  unfold Seg5.relationRow3926 at r3926
  have hrung73 (bit : Bool) (hbit : rho 2488 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX73 rho : Seg5.F), (seg5AccY73 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3607 : Seg5.F), (rho 3608 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX73 rho : Seg5.F), (seg5AccY73 rho : Seg5.F)⟩
        ⟨(rho 3607 : Seg5.F), (rho 3608 : Seg5.F)⟩
        ⟨(seg5AccX74 rho : Seg5.F), (seg5AccY74 rho : Seg5.F)⟩
        ⟨(rho 3620 : Seg5.F), (rho 3621 : Seg5.F)⟩ := by
    have hnextx : seg5AccX74 rho = seg5AccX73 rho + rho 3615 := by
      unfold seg5AccX74 seg5AccX73
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 73]
      ring
    have hnexty : seg5AccY74 rho = seg5AccY73 rho + rho 3616 := by
      unfold seg5AccY74 seg5AccY73
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 73]
      ring
    have ha0 : (rho 3607 + rho 3608) * (seg5AccX73 rho + seg5AccY73 rho) = rho 3609 := by
      unfold seg5AccX73 seg5AccY73
      linear_combination r3914
    have ha1 : rho 3608 * seg5AccX73 rho = rho 3610 := by
      unfold seg5AccX73
      linear_combination r3915
    have ha2 : rho 3607 * seg5AccY73 rho = rho 3611 := by
      unfold seg5AccY73
      linear_combination r3916
    have ha3 : 3021 * rho 3610 * rho 3611 = rho 3612 := by
      linear_combination r3917
    have ha4 : rho 3613 * (1 + rho 3612) = rho 3610 + rho 3611 := by
      linear_combination r3918
    have ha5 : rho 3614 * (1 - rho 3612) = rho 3609 - rho 3610 - rho 3611 := by
      linear_combination r3919
    have haddx :
        rho 3613 * (1 + 3021 * (rho 3608 * seg5AccX73 rho) * (rho 3607 * seg5AccY73 rho)) =
          rho 3608 * seg5AccX73 rho + rho 3607 * seg5AccY73 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3614 * (1 - 3021 * (rho 3608 * seg5AccX73 rho) * (rho 3607 * seg5AccY73 rho)) =
          (-1) * (rho 3608 * seg5AccX73 rho) - rho 3607 * seg5AccY73 rho +
            (seg5AccY73 rho - seg5AccX73 rho * (-1)) * (rho 3607 + rho 3608) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3614 * (1 - rho 3612) = rho 3609 - rho 3610 - rho 3611 := ha5
        _ = (-1) * rho 3610 - rho 3611 + (seg5AccY73 rho - seg5AccX73 rho * (-1)) * (rho 3607 + rho 3608) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX74 rho = seg5AccX73 rho - Bool.toZMod bit * (seg5AccX73 rho - rho 3613) := by
      have hd : rho 3615 = Bool.toZMod bit * (rho 3613 - seg5AccX73 rho) := by
        rw [← hbit]
        unfold seg5AccX73
        linear_combination -r3920
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY74 rho = seg5AccY73 rho - Bool.toZMod bit * (seg5AccY73 rho - rho 3614) := by
      have hd : rho 3616 = Bool.toZMod bit * (rho 3614 - seg5AccY73 rho) := by
        rw [← hbit]
        unfold seg5AccY73
        linear_combination -r3921
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3607 * rho 3608 = rho 3617 := by linear_combination r3922
    have hd1 : rho 3607 * rho 3607 = rho 3618 := by linear_combination r3923
    have hd2 : rho 3608 * rho 3608 = rho 3619 := by linear_combination r3924
    have hd3 : rho 3620 * (rho 3608 * rho 3608 + rho 3607 * rho 3607 * (-1)) = 2 * (rho 3607 * rho 3608) := by
      rw [hd0, hd1, hd2]
      linear_combination r3925
    have hd4 : rho 3621 * (2 - (rho 3608 * rho 3608 + rho 3607 * rho 3607 * (-1))) = rho 3608 * rho 3608 - rho 3607 * rho 3607 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3926
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX73 rho : Seg5.F), (seg5AccY73 rho : Seg5.F)⟩
      ⟨(rho 3607 : Seg5.F), (rho 3608 : Seg5.F)⟩
      ⟨(rho 3613 : Seg5.F), (rho 3614 : Seg5.F)⟩
      ⟨(seg5AccX74 rho : Seg5.F), (seg5AccY74 rho : Seg5.F)⟩
      ⟨(rho 3620 : Seg5.F), (rho 3621 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung73

theorem seg5_rows74 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3927 rho ∧ Seg5.relationRow3928 rho ∧ Seg5.relationRow3929 rho ∧ Seg5.relationRow3930 rho ∧ Seg5.relationRow3931 rho ∧ Seg5.relationRow3932 rho ∧ Seg5.relationRow3933 rho ∧ Seg5.relationRow3934 rho ∧ Seg5.relationRow3935 rho ∧ Seg5.relationRow3936 rho ∧ Seg5.relationRow3937 rho ∧ Seg5.relationRow3938 rho ∧ Seg5.relationRow3939 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p49,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, r3927, r3928, r3929, r3930, r3931, r3932, r3933, r3934, r3935, r3936, r3937, r3938, r3939, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3927, r3928, r3929, r3930, r3931, r3932, r3933, r3934, r3935, r3936, r3937, r3938, r3939⟩

theorem seg5_rung74 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2489 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX74 rho : Seg5.F), (seg5AccY74 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3620 : Seg5.F), (rho 3621 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX74 rho : Seg5.F), (seg5AccY74 rho : Seg5.F)⟩
        ⟨(rho 3620 : Seg5.F), (rho 3621 : Seg5.F)⟩
        ⟨(seg5AccX75 rho : Seg5.F), (seg5AccY75 rho : Seg5.F)⟩
        ⟨(rho 3633 : Seg5.F), (rho 3634 : Seg5.F)⟩ := by
  obtain ⟨r3927, r3928, r3929, r3930, r3931, r3932, r3933, r3934, r3935, r3936, r3937, r3938, r3939⟩ := seg5_rows74 rho h
  unfold Seg5.relationRow3927 at r3927
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3927
  unfold Seg5.relationRow3928 at r3928
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3928
  unfold Seg5.relationRow3929 at r3929
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3929
  unfold Seg5.relationRow3930 at r3930
  unfold Seg5.relationRow3931 at r3931
  unfold Seg5.relationRow3932 at r3932
  unfold Seg5.relationRow3933 at r3933
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3933
  unfold Seg5.relationRow3934 at r3934
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3934
  unfold Seg5.relationRow3935 at r3935
  unfold Seg5.relationRow3936 at r3936
  unfold Seg5.relationRow3937 at r3937
  unfold Seg5.relationRow3938 at r3938
  unfold Seg5.relationRow3939 at r3939
  have hrung74 (bit : Bool) (hbit : rho 2489 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX74 rho : Seg5.F), (seg5AccY74 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3620 : Seg5.F), (rho 3621 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX74 rho : Seg5.F), (seg5AccY74 rho : Seg5.F)⟩
        ⟨(rho 3620 : Seg5.F), (rho 3621 : Seg5.F)⟩
        ⟨(seg5AccX75 rho : Seg5.F), (seg5AccY75 rho : Seg5.F)⟩
        ⟨(rho 3633 : Seg5.F), (rho 3634 : Seg5.F)⟩ := by
    have hnextx : seg5AccX75 rho = seg5AccX74 rho + rho 3628 := by
      unfold seg5AccX75 seg5AccX74
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 74]
      ring
    have hnexty : seg5AccY75 rho = seg5AccY74 rho + rho 3629 := by
      unfold seg5AccY75 seg5AccY74
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 74]
      ring
    have ha0 : (rho 3620 + rho 3621) * (seg5AccX74 rho + seg5AccY74 rho) = rho 3622 := by
      unfold seg5AccX74 seg5AccY74
      linear_combination r3927
    have ha1 : rho 3621 * seg5AccX74 rho = rho 3623 := by
      unfold seg5AccX74
      linear_combination r3928
    have ha2 : rho 3620 * seg5AccY74 rho = rho 3624 := by
      unfold seg5AccY74
      linear_combination r3929
    have ha3 : 3021 * rho 3623 * rho 3624 = rho 3625 := by
      linear_combination r3930
    have ha4 : rho 3626 * (1 + rho 3625) = rho 3623 + rho 3624 := by
      linear_combination r3931
    have ha5 : rho 3627 * (1 - rho 3625) = rho 3622 - rho 3623 - rho 3624 := by
      linear_combination r3932
    have haddx :
        rho 3626 * (1 + 3021 * (rho 3621 * seg5AccX74 rho) * (rho 3620 * seg5AccY74 rho)) =
          rho 3621 * seg5AccX74 rho + rho 3620 * seg5AccY74 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3627 * (1 - 3021 * (rho 3621 * seg5AccX74 rho) * (rho 3620 * seg5AccY74 rho)) =
          (-1) * (rho 3621 * seg5AccX74 rho) - rho 3620 * seg5AccY74 rho +
            (seg5AccY74 rho - seg5AccX74 rho * (-1)) * (rho 3620 + rho 3621) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3627 * (1 - rho 3625) = rho 3622 - rho 3623 - rho 3624 := ha5
        _ = (-1) * rho 3623 - rho 3624 + (seg5AccY74 rho - seg5AccX74 rho * (-1)) * (rho 3620 + rho 3621) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX75 rho = seg5AccX74 rho - Bool.toZMod bit * (seg5AccX74 rho - rho 3626) := by
      have hd : rho 3628 = Bool.toZMod bit * (rho 3626 - seg5AccX74 rho) := by
        rw [← hbit]
        unfold seg5AccX74
        linear_combination -r3933
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY75 rho = seg5AccY74 rho - Bool.toZMod bit * (seg5AccY74 rho - rho 3627) := by
      have hd : rho 3629 = Bool.toZMod bit * (rho 3627 - seg5AccY74 rho) := by
        rw [← hbit]
        unfold seg5AccY74
        linear_combination -r3934
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3620 * rho 3621 = rho 3630 := by linear_combination r3935
    have hd1 : rho 3620 * rho 3620 = rho 3631 := by linear_combination r3936
    have hd2 : rho 3621 * rho 3621 = rho 3632 := by linear_combination r3937
    have hd3 : rho 3633 * (rho 3621 * rho 3621 + rho 3620 * rho 3620 * (-1)) = 2 * (rho 3620 * rho 3621) := by
      rw [hd0, hd1, hd2]
      linear_combination r3938
    have hd4 : rho 3634 * (2 - (rho 3621 * rho 3621 + rho 3620 * rho 3620 * (-1))) = rho 3621 * rho 3621 - rho 3620 * rho 3620 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3939
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX74 rho : Seg5.F), (seg5AccY74 rho : Seg5.F)⟩
      ⟨(rho 3620 : Seg5.F), (rho 3621 : Seg5.F)⟩
      ⟨(rho 3626 : Seg5.F), (rho 3627 : Seg5.F)⟩
      ⟨(seg5AccX75 rho : Seg5.F), (seg5AccY75 rho : Seg5.F)⟩
      ⟨(rho 3633 : Seg5.F), (rho 3634 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung74

theorem seg5_rows75 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3940 rho ∧ Seg5.relationRow3941 rho ∧ Seg5.relationRow3942 rho ∧ Seg5.relationRow3943 rho ∧ Seg5.relationRow3944 rho ∧ Seg5.relationRow3945 rho ∧ Seg5.relationRow3946 rho ∧ Seg5.relationRow3947 rho ∧ Seg5.relationRow3948 rho ∧ Seg5.relationRow3949 rho ∧ Seg5.relationRow3950 rho ∧ Seg5.relationRow3951 rho ∧ Seg5.relationRow3952 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p49,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3940, r3941, r3942, r3943, r3944, r3945, r3946, r3947, r3948, r3949, r3950, r3951, r3952, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3940, r3941, r3942, r3943, r3944, r3945, r3946, r3947, r3948, r3949, r3950, r3951, r3952⟩

theorem seg5_rung75 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2490 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX75 rho : Seg5.F), (seg5AccY75 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3633 : Seg5.F), (rho 3634 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX75 rho : Seg5.F), (seg5AccY75 rho : Seg5.F)⟩
        ⟨(rho 3633 : Seg5.F), (rho 3634 : Seg5.F)⟩
        ⟨(seg5AccX76 rho : Seg5.F), (seg5AccY76 rho : Seg5.F)⟩
        ⟨(rho 3646 : Seg5.F), (rho 3647 : Seg5.F)⟩ := by
  obtain ⟨r3940, r3941, r3942, r3943, r3944, r3945, r3946, r3947, r3948, r3949, r3950, r3951, r3952⟩ := seg5_rows75 rho h
  unfold Seg5.relationRow3940 at r3940
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3940
  unfold Seg5.relationRow3941 at r3941
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3941
  unfold Seg5.relationRow3942 at r3942
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3942
  unfold Seg5.relationRow3943 at r3943
  unfold Seg5.relationRow3944 at r3944
  unfold Seg5.relationRow3945 at r3945
  unfold Seg5.relationRow3946 at r3946
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3946
  unfold Seg5.relationRow3947 at r3947
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3947
  unfold Seg5.relationRow3948 at r3948
  unfold Seg5.relationRow3949 at r3949
  unfold Seg5.relationRow3950 at r3950
  unfold Seg5.relationRow3951 at r3951
  unfold Seg5.relationRow3952 at r3952
  have hrung75 (bit : Bool) (hbit : rho 2490 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX75 rho : Seg5.F), (seg5AccY75 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3633 : Seg5.F), (rho 3634 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX75 rho : Seg5.F), (seg5AccY75 rho : Seg5.F)⟩
        ⟨(rho 3633 : Seg5.F), (rho 3634 : Seg5.F)⟩
        ⟨(seg5AccX76 rho : Seg5.F), (seg5AccY76 rho : Seg5.F)⟩
        ⟨(rho 3646 : Seg5.F), (rho 3647 : Seg5.F)⟩ := by
    have hnextx : seg5AccX76 rho = seg5AccX75 rho + rho 3641 := by
      unfold seg5AccX76 seg5AccX75
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 75]
      ring
    have hnexty : seg5AccY76 rho = seg5AccY75 rho + rho 3642 := by
      unfold seg5AccY76 seg5AccY75
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 75]
      ring
    have ha0 : (rho 3633 + rho 3634) * (seg5AccX75 rho + seg5AccY75 rho) = rho 3635 := by
      unfold seg5AccX75 seg5AccY75
      linear_combination r3940
    have ha1 : rho 3634 * seg5AccX75 rho = rho 3636 := by
      unfold seg5AccX75
      linear_combination r3941
    have ha2 : rho 3633 * seg5AccY75 rho = rho 3637 := by
      unfold seg5AccY75
      linear_combination r3942
    have ha3 : 3021 * rho 3636 * rho 3637 = rho 3638 := by
      linear_combination r3943
    have ha4 : rho 3639 * (1 + rho 3638) = rho 3636 + rho 3637 := by
      linear_combination r3944
    have ha5 : rho 3640 * (1 - rho 3638) = rho 3635 - rho 3636 - rho 3637 := by
      linear_combination r3945
    have haddx :
        rho 3639 * (1 + 3021 * (rho 3634 * seg5AccX75 rho) * (rho 3633 * seg5AccY75 rho)) =
          rho 3634 * seg5AccX75 rho + rho 3633 * seg5AccY75 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3640 * (1 - 3021 * (rho 3634 * seg5AccX75 rho) * (rho 3633 * seg5AccY75 rho)) =
          (-1) * (rho 3634 * seg5AccX75 rho) - rho 3633 * seg5AccY75 rho +
            (seg5AccY75 rho - seg5AccX75 rho * (-1)) * (rho 3633 + rho 3634) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3640 * (1 - rho 3638) = rho 3635 - rho 3636 - rho 3637 := ha5
        _ = (-1) * rho 3636 - rho 3637 + (seg5AccY75 rho - seg5AccX75 rho * (-1)) * (rho 3633 + rho 3634) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX76 rho = seg5AccX75 rho - Bool.toZMod bit * (seg5AccX75 rho - rho 3639) := by
      have hd : rho 3641 = Bool.toZMod bit * (rho 3639 - seg5AccX75 rho) := by
        rw [← hbit]
        unfold seg5AccX75
        linear_combination -r3946
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY76 rho = seg5AccY75 rho - Bool.toZMod bit * (seg5AccY75 rho - rho 3640) := by
      have hd : rho 3642 = Bool.toZMod bit * (rho 3640 - seg5AccY75 rho) := by
        rw [← hbit]
        unfold seg5AccY75
        linear_combination -r3947
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3633 * rho 3634 = rho 3643 := by linear_combination r3948
    have hd1 : rho 3633 * rho 3633 = rho 3644 := by linear_combination r3949
    have hd2 : rho 3634 * rho 3634 = rho 3645 := by linear_combination r3950
    have hd3 : rho 3646 * (rho 3634 * rho 3634 + rho 3633 * rho 3633 * (-1)) = 2 * (rho 3633 * rho 3634) := by
      rw [hd0, hd1, hd2]
      linear_combination r3951
    have hd4 : rho 3647 * (2 - (rho 3634 * rho 3634 + rho 3633 * rho 3633 * (-1))) = rho 3634 * rho 3634 - rho 3633 * rho 3633 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3952
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX75 rho : Seg5.F), (seg5AccY75 rho : Seg5.F)⟩
      ⟨(rho 3633 : Seg5.F), (rho 3634 : Seg5.F)⟩
      ⟨(rho 3639 : Seg5.F), (rho 3640 : Seg5.F)⟩
      ⟨(seg5AccX76 rho : Seg5.F), (seg5AccY76 rho : Seg5.F)⟩
      ⟨(rho 3646 : Seg5.F), (rho 3647 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung75

theorem seg5_rows76 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3953 rho ∧ Seg5.relationRow3954 rho ∧ Seg5.relationRow3955 rho ∧ Seg5.relationRow3956 rho ∧ Seg5.relationRow3957 rho ∧ Seg5.relationRow3958 rho ∧ Seg5.relationRow3959 rho ∧ Seg5.relationRow3960 rho ∧ Seg5.relationRow3961 rho ∧ Seg5.relationRow3962 rho ∧ Seg5.relationRow3963 rho ∧ Seg5.relationRow3964 rho ∧ Seg5.relationRow3965 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p49,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3953, r3954, r3955, r3956, r3957, r3958, r3959, r3960, r3961, r3962, r3963, r3964, r3965, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3953, r3954, r3955, r3956, r3957, r3958, r3959, r3960, r3961, r3962, r3963, r3964, r3965⟩

theorem seg5_rung76 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2491 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX76 rho : Seg5.F), (seg5AccY76 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3646 : Seg5.F), (rho 3647 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX76 rho : Seg5.F), (seg5AccY76 rho : Seg5.F)⟩
        ⟨(rho 3646 : Seg5.F), (rho 3647 : Seg5.F)⟩
        ⟨(seg5AccX77 rho : Seg5.F), (seg5AccY77 rho : Seg5.F)⟩
        ⟨(rho 3659 : Seg5.F), (rho 3660 : Seg5.F)⟩ := by
  obtain ⟨r3953, r3954, r3955, r3956, r3957, r3958, r3959, r3960, r3961, r3962, r3963, r3964, r3965⟩ := seg5_rows76 rho h
  unfold Seg5.relationRow3953 at r3953
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3953
  unfold Seg5.relationRow3954 at r3954
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3954
  unfold Seg5.relationRow3955 at r3955
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3955
  unfold Seg5.relationRow3956 at r3956
  unfold Seg5.relationRow3957 at r3957
  unfold Seg5.relationRow3958 at r3958
  unfold Seg5.relationRow3959 at r3959
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3959
  unfold Seg5.relationRow3960 at r3960
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3960
  unfold Seg5.relationRow3961 at r3961
  unfold Seg5.relationRow3962 at r3962
  unfold Seg5.relationRow3963 at r3963
  unfold Seg5.relationRow3964 at r3964
  unfold Seg5.relationRow3965 at r3965
  have hrung76 (bit : Bool) (hbit : rho 2491 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX76 rho : Seg5.F), (seg5AccY76 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3646 : Seg5.F), (rho 3647 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX76 rho : Seg5.F), (seg5AccY76 rho : Seg5.F)⟩
        ⟨(rho 3646 : Seg5.F), (rho 3647 : Seg5.F)⟩
        ⟨(seg5AccX77 rho : Seg5.F), (seg5AccY77 rho : Seg5.F)⟩
        ⟨(rho 3659 : Seg5.F), (rho 3660 : Seg5.F)⟩ := by
    have hnextx : seg5AccX77 rho = seg5AccX76 rho + rho 3654 := by
      unfold seg5AccX77 seg5AccX76
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 76]
      ring
    have hnexty : seg5AccY77 rho = seg5AccY76 rho + rho 3655 := by
      unfold seg5AccY77 seg5AccY76
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 76]
      ring
    have ha0 : (rho 3646 + rho 3647) * (seg5AccX76 rho + seg5AccY76 rho) = rho 3648 := by
      unfold seg5AccX76 seg5AccY76
      linear_combination r3953
    have ha1 : rho 3647 * seg5AccX76 rho = rho 3649 := by
      unfold seg5AccX76
      linear_combination r3954
    have ha2 : rho 3646 * seg5AccY76 rho = rho 3650 := by
      unfold seg5AccY76
      linear_combination r3955
    have ha3 : 3021 * rho 3649 * rho 3650 = rho 3651 := by
      linear_combination r3956
    have ha4 : rho 3652 * (1 + rho 3651) = rho 3649 + rho 3650 := by
      linear_combination r3957
    have ha5 : rho 3653 * (1 - rho 3651) = rho 3648 - rho 3649 - rho 3650 := by
      linear_combination r3958
    have haddx :
        rho 3652 * (1 + 3021 * (rho 3647 * seg5AccX76 rho) * (rho 3646 * seg5AccY76 rho)) =
          rho 3647 * seg5AccX76 rho + rho 3646 * seg5AccY76 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3653 * (1 - 3021 * (rho 3647 * seg5AccX76 rho) * (rho 3646 * seg5AccY76 rho)) =
          (-1) * (rho 3647 * seg5AccX76 rho) - rho 3646 * seg5AccY76 rho +
            (seg5AccY76 rho - seg5AccX76 rho * (-1)) * (rho 3646 + rho 3647) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3653 * (1 - rho 3651) = rho 3648 - rho 3649 - rho 3650 := ha5
        _ = (-1) * rho 3649 - rho 3650 + (seg5AccY76 rho - seg5AccX76 rho * (-1)) * (rho 3646 + rho 3647) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX77 rho = seg5AccX76 rho - Bool.toZMod bit * (seg5AccX76 rho - rho 3652) := by
      have hd : rho 3654 = Bool.toZMod bit * (rho 3652 - seg5AccX76 rho) := by
        rw [← hbit]
        unfold seg5AccX76
        linear_combination -r3959
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY77 rho = seg5AccY76 rho - Bool.toZMod bit * (seg5AccY76 rho - rho 3653) := by
      have hd : rho 3655 = Bool.toZMod bit * (rho 3653 - seg5AccY76 rho) := by
        rw [← hbit]
        unfold seg5AccY76
        linear_combination -r3960
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3646 * rho 3647 = rho 3656 := by linear_combination r3961
    have hd1 : rho 3646 * rho 3646 = rho 3657 := by linear_combination r3962
    have hd2 : rho 3647 * rho 3647 = rho 3658 := by linear_combination r3963
    have hd3 : rho 3659 * (rho 3647 * rho 3647 + rho 3646 * rho 3646 * (-1)) = 2 * (rho 3646 * rho 3647) := by
      rw [hd0, hd1, hd2]
      linear_combination r3964
    have hd4 : rho 3660 * (2 - (rho 3647 * rho 3647 + rho 3646 * rho 3646 * (-1))) = rho 3647 * rho 3647 - rho 3646 * rho 3646 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3965
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX76 rho : Seg5.F), (seg5AccY76 rho : Seg5.F)⟩
      ⟨(rho 3646 : Seg5.F), (rho 3647 : Seg5.F)⟩
      ⟨(rho 3652 : Seg5.F), (rho 3653 : Seg5.F)⟩
      ⟨(seg5AccX77 rho : Seg5.F), (seg5AccY77 rho : Seg5.F)⟩
      ⟨(rho 3659 : Seg5.F), (rho 3660 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung76

theorem seg5_hstep_c6 (rho : Nat -> Seg5.F) (h : Seg5.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (2415 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 66 ≤ i → i < 77 →
      EdwardsBridge.onCurve (seg5LadderAccState rho i) →
      EdwardsBridge.onCurve (seg5LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg5LadderAccState rho i) (seg5LadderCurState rho i)
        (seg5LadderAccState rho (i + 1)) (seg5LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg5_rung66 rho h bits[66]! (hbitAt 66 (by omega)) hacc hcur
  · exact seg5_rung67 rho h bits[67]! (hbitAt 67 (by omega)) hacc hcur
  · exact seg5_rung68 rho h bits[68]! (hbitAt 68 (by omega)) hacc hcur
  · exact seg5_rung69 rho h bits[69]! (hbitAt 69 (by omega)) hacc hcur
  · exact seg5_rung70 rho h bits[70]! (hbitAt 70 (by omega)) hacc hcur
  · exact seg5_rung71 rho h bits[71]! (hbitAt 71 (by omega)) hacc hcur
  · exact seg5_rung72 rho h bits[72]! (hbitAt 72 (by omega)) hacc hcur
  · exact seg5_rung73 rho h bits[73]! (hbitAt 73 (by omega)) hacc hcur
  · exact seg5_rung74 rho h bits[74]! (hbitAt 74 (by omega)) hacc hcur
  · exact seg5_rung75 rho h bits[75]! (hbitAt 75 (by omega)) hacc hcur
  · exact seg5_rung76 rho h bits[76]! (hbitAt 76 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
