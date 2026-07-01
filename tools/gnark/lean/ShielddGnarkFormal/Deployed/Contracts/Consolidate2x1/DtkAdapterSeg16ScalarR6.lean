import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg16_rows66 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3823 rho ∧ Seg16.relationRow3824 rho ∧ Seg16.relationRow3825 rho ∧ Seg16.relationRow3826 rho ∧ Seg16.relationRow3827 rho ∧ Seg16.relationRow3828 rho ∧ Seg16.relationRow3829 rho ∧ Seg16.relationRow3830 rho ∧ Seg16.relationRow3831 rho ∧ Seg16.relationRow3832 rho ∧ Seg16.relationRow3833 rho ∧ Seg16.relationRow3834 rho ∧ Seg16.relationRow3835 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3823, r3824, r3825, r3826, r3827, r3828, r3829, r3830, r3831, r3832, r3833, r3834, r3835, _, _, _, _⟩
  exact ⟨r3823, r3824, r3825, r3826, r3827, r3828, r3829, r3830, r3831, r3832, r3833, r3834, r3835⟩

theorem seg16_rung66 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15358 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX66 rho : Seg16.F), (seg16AccY66 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16393 : Seg16.F), (rho 16394 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX66 rho : Seg16.F), (seg16AccY66 rho : Seg16.F)⟩
        ⟨(rho 16393 : Seg16.F), (rho 16394 : Seg16.F)⟩
        ⟨(seg16AccX67 rho : Seg16.F), (seg16AccY67 rho : Seg16.F)⟩
        ⟨(rho 16406 : Seg16.F), (rho 16407 : Seg16.F)⟩ := by
  obtain ⟨r3823, r3824, r3825, r3826, r3827, r3828, r3829, r3830, r3831, r3832, r3833, r3834, r3835⟩ := seg16_rows66 rho h
  unfold Seg16.relationRow3823 at r3823
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3823
  unfold Seg16.relationRow3824 at r3824
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3824
  unfold Seg16.relationRow3825 at r3825
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3825
  unfold Seg16.relationRow3826 at r3826
  unfold Seg16.relationRow3827 at r3827
  unfold Seg16.relationRow3828 at r3828
  unfold Seg16.relationRow3829 at r3829
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3829
  unfold Seg16.relationRow3830 at r3830
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3830
  unfold Seg16.relationRow3831 at r3831
  unfold Seg16.relationRow3832 at r3832
  unfold Seg16.relationRow3833 at r3833
  unfold Seg16.relationRow3834 at r3834
  unfold Seg16.relationRow3835 at r3835
  have hrung66 (bit : Bool) (hbit : rho 15358 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX66 rho : Seg16.F), (seg16AccY66 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16393 : Seg16.F), (rho 16394 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX66 rho : Seg16.F), (seg16AccY66 rho : Seg16.F)⟩
        ⟨(rho 16393 : Seg16.F), (rho 16394 : Seg16.F)⟩
        ⟨(seg16AccX67 rho : Seg16.F), (seg16AccY67 rho : Seg16.F)⟩
        ⟨(rho 16406 : Seg16.F), (rho 16407 : Seg16.F)⟩ := by
    have hnextx : seg16AccX67 rho = seg16AccX66 rho + rho 16401 := by
      unfold seg16AccX67 seg16AccX66
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 66]
      ring
    have hnexty : seg16AccY67 rho = seg16AccY66 rho + rho 16402 := by
      unfold seg16AccY67 seg16AccY66
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 66]
      ring
    have ha0 : (rho 16393 + rho 16394) * (seg16AccX66 rho + seg16AccY66 rho) = rho 16395 := by
      unfold seg16AccX66 seg16AccY66
      linear_combination r3823
    have ha1 : rho 16394 * seg16AccX66 rho = rho 16396 := by
      unfold seg16AccX66
      linear_combination r3824
    have ha2 : rho 16393 * seg16AccY66 rho = rho 16397 := by
      unfold seg16AccY66
      linear_combination r3825
    have ha3 : 3021 * rho 16396 * rho 16397 = rho 16398 := by
      linear_combination r3826
    have ha4 : rho 16399 * (1 + rho 16398) = rho 16396 + rho 16397 := by
      linear_combination r3827
    have ha5 : rho 16400 * (1 - rho 16398) = rho 16395 - rho 16396 - rho 16397 := by
      linear_combination r3828
    have haddx :
        rho 16399 * (1 + 3021 * (rho 16394 * seg16AccX66 rho) * (rho 16393 * seg16AccY66 rho)) =
          rho 16394 * seg16AccX66 rho + rho 16393 * seg16AccY66 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16400 * (1 - 3021 * (rho 16394 * seg16AccX66 rho) * (rho 16393 * seg16AccY66 rho)) =
          (-1) * (rho 16394 * seg16AccX66 rho) - rho 16393 * seg16AccY66 rho +
            (seg16AccY66 rho - seg16AccX66 rho * (-1)) * (rho 16393 + rho 16394) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16400 * (1 - rho 16398) = rho 16395 - rho 16396 - rho 16397 := ha5
        _ = (-1) * rho 16396 - rho 16397 + (seg16AccY66 rho - seg16AccX66 rho * (-1)) * (rho 16393 + rho 16394) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX67 rho = seg16AccX66 rho - Bool.toZMod bit * (seg16AccX66 rho - rho 16399) := by
      have hd : rho 16401 = Bool.toZMod bit * (rho 16399 - seg16AccX66 rho) := by
        rw [← hbit]
        unfold seg16AccX66
        linear_combination -r3829
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY67 rho = seg16AccY66 rho - Bool.toZMod bit * (seg16AccY66 rho - rho 16400) := by
      have hd : rho 16402 = Bool.toZMod bit * (rho 16400 - seg16AccY66 rho) := by
        rw [← hbit]
        unfold seg16AccY66
        linear_combination -r3830
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16393 * rho 16394 = rho 16403 := by linear_combination r3831
    have hd1 : rho 16393 * rho 16393 = rho 16404 := by linear_combination r3832
    have hd2 : rho 16394 * rho 16394 = rho 16405 := by linear_combination r3833
    have hd3 : rho 16406 * (rho 16394 * rho 16394 + rho 16393 * rho 16393 * (-1)) = 2 * (rho 16393 * rho 16394) := by
      rw [hd0, hd1, hd2]
      linear_combination r3834
    have hd4 : rho 16407 * (2 - (rho 16394 * rho 16394 + rho 16393 * rho 16393 * (-1))) = rho 16394 * rho 16394 - rho 16393 * rho 16393 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3835
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX66 rho : Seg16.F), (seg16AccY66 rho : Seg16.F)⟩
      ⟨(rho 16393 : Seg16.F), (rho 16394 : Seg16.F)⟩
      ⟨(rho 16399 : Seg16.F), (rho 16400 : Seg16.F)⟩
      ⟨(seg16AccX67 rho : Seg16.F), (seg16AccY67 rho : Seg16.F)⟩
      ⟨(rho 16406 : Seg16.F), (rho 16407 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung66

theorem seg16_rows67 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3836 rho ∧ Seg16.relationRow3837 rho ∧ Seg16.relationRow3838 rho ∧ Seg16.relationRow3839 rho ∧ Seg16.relationRow3840 rho ∧ Seg16.relationRow3841 rho ∧ Seg16.relationRow3842 rho ∧ Seg16.relationRow3843 rho ∧ Seg16.relationRow3844 rho ∧ Seg16.relationRow3845 rho ∧ Seg16.relationRow3846 rho ∧ Seg16.relationRow3847 rho ∧ Seg16.relationRow3848 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3836, r3837, r3838, r3839⟩
  unfold Seg16.relationPart48 at p48
  rcases p48 with ⟨r3840, r3841, r3842, r3843, r3844, r3845, r3846, r3847, r3848, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3836, r3837, r3838, r3839, r3840, r3841, r3842, r3843, r3844, r3845, r3846, r3847, r3848⟩

theorem seg16_rung67 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15359 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX67 rho : Seg16.F), (seg16AccY67 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16406 : Seg16.F), (rho 16407 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX67 rho : Seg16.F), (seg16AccY67 rho : Seg16.F)⟩
        ⟨(rho 16406 : Seg16.F), (rho 16407 : Seg16.F)⟩
        ⟨(seg16AccX68 rho : Seg16.F), (seg16AccY68 rho : Seg16.F)⟩
        ⟨(rho 16419 : Seg16.F), (rho 16420 : Seg16.F)⟩ := by
  obtain ⟨r3836, r3837, r3838, r3839, r3840, r3841, r3842, r3843, r3844, r3845, r3846, r3847, r3848⟩ := seg16_rows67 rho h
  unfold Seg16.relationRow3836 at r3836
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3836
  unfold Seg16.relationRow3837 at r3837
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3837
  unfold Seg16.relationRow3838 at r3838
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3838
  unfold Seg16.relationRow3839 at r3839
  unfold Seg16.relationRow3840 at r3840
  unfold Seg16.relationRow3841 at r3841
  unfold Seg16.relationRow3842 at r3842
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3842
  unfold Seg16.relationRow3843 at r3843
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3843
  unfold Seg16.relationRow3844 at r3844
  unfold Seg16.relationRow3845 at r3845
  unfold Seg16.relationRow3846 at r3846
  unfold Seg16.relationRow3847 at r3847
  unfold Seg16.relationRow3848 at r3848
  have hrung67 (bit : Bool) (hbit : rho 15359 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX67 rho : Seg16.F), (seg16AccY67 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16406 : Seg16.F), (rho 16407 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX67 rho : Seg16.F), (seg16AccY67 rho : Seg16.F)⟩
        ⟨(rho 16406 : Seg16.F), (rho 16407 : Seg16.F)⟩
        ⟨(seg16AccX68 rho : Seg16.F), (seg16AccY68 rho : Seg16.F)⟩
        ⟨(rho 16419 : Seg16.F), (rho 16420 : Seg16.F)⟩ := by
    have hnextx : seg16AccX68 rho = seg16AccX67 rho + rho 16414 := by
      unfold seg16AccX68 seg16AccX67
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 67]
      ring
    have hnexty : seg16AccY68 rho = seg16AccY67 rho + rho 16415 := by
      unfold seg16AccY68 seg16AccY67
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 67]
      ring
    have ha0 : (rho 16406 + rho 16407) * (seg16AccX67 rho + seg16AccY67 rho) = rho 16408 := by
      unfold seg16AccX67 seg16AccY67
      linear_combination r3836
    have ha1 : rho 16407 * seg16AccX67 rho = rho 16409 := by
      unfold seg16AccX67
      linear_combination r3837
    have ha2 : rho 16406 * seg16AccY67 rho = rho 16410 := by
      unfold seg16AccY67
      linear_combination r3838
    have ha3 : 3021 * rho 16409 * rho 16410 = rho 16411 := by
      linear_combination r3839
    have ha4 : rho 16412 * (1 + rho 16411) = rho 16409 + rho 16410 := by
      linear_combination r3840
    have ha5 : rho 16413 * (1 - rho 16411) = rho 16408 - rho 16409 - rho 16410 := by
      linear_combination r3841
    have haddx :
        rho 16412 * (1 + 3021 * (rho 16407 * seg16AccX67 rho) * (rho 16406 * seg16AccY67 rho)) =
          rho 16407 * seg16AccX67 rho + rho 16406 * seg16AccY67 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16413 * (1 - 3021 * (rho 16407 * seg16AccX67 rho) * (rho 16406 * seg16AccY67 rho)) =
          (-1) * (rho 16407 * seg16AccX67 rho) - rho 16406 * seg16AccY67 rho +
            (seg16AccY67 rho - seg16AccX67 rho * (-1)) * (rho 16406 + rho 16407) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16413 * (1 - rho 16411) = rho 16408 - rho 16409 - rho 16410 := ha5
        _ = (-1) * rho 16409 - rho 16410 + (seg16AccY67 rho - seg16AccX67 rho * (-1)) * (rho 16406 + rho 16407) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX68 rho = seg16AccX67 rho - Bool.toZMod bit * (seg16AccX67 rho - rho 16412) := by
      have hd : rho 16414 = Bool.toZMod bit * (rho 16412 - seg16AccX67 rho) := by
        rw [← hbit]
        unfold seg16AccX67
        linear_combination -r3842
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY68 rho = seg16AccY67 rho - Bool.toZMod bit * (seg16AccY67 rho - rho 16413) := by
      have hd : rho 16415 = Bool.toZMod bit * (rho 16413 - seg16AccY67 rho) := by
        rw [← hbit]
        unfold seg16AccY67
        linear_combination -r3843
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16406 * rho 16407 = rho 16416 := by linear_combination r3844
    have hd1 : rho 16406 * rho 16406 = rho 16417 := by linear_combination r3845
    have hd2 : rho 16407 * rho 16407 = rho 16418 := by linear_combination r3846
    have hd3 : rho 16419 * (rho 16407 * rho 16407 + rho 16406 * rho 16406 * (-1)) = 2 * (rho 16406 * rho 16407) := by
      rw [hd0, hd1, hd2]
      linear_combination r3847
    have hd4 : rho 16420 * (2 - (rho 16407 * rho 16407 + rho 16406 * rho 16406 * (-1))) = rho 16407 * rho 16407 - rho 16406 * rho 16406 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3848
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX67 rho : Seg16.F), (seg16AccY67 rho : Seg16.F)⟩
      ⟨(rho 16406 : Seg16.F), (rho 16407 : Seg16.F)⟩
      ⟨(rho 16412 : Seg16.F), (rho 16413 : Seg16.F)⟩
      ⟨(seg16AccX68 rho : Seg16.F), (seg16AccY68 rho : Seg16.F)⟩
      ⟨(rho 16419 : Seg16.F), (rho 16420 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung67

theorem seg16_rows68 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3849 rho ∧ Seg16.relationRow3850 rho ∧ Seg16.relationRow3851 rho ∧ Seg16.relationRow3852 rho ∧ Seg16.relationRow3853 rho ∧ Seg16.relationRow3854 rho ∧ Seg16.relationRow3855 rho ∧ Seg16.relationRow3856 rho ∧ Seg16.relationRow3857 rho ∧ Seg16.relationRow3858 rho ∧ Seg16.relationRow3859 rho ∧ Seg16.relationRow3860 rho ∧ Seg16.relationRow3861 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, r3849, r3850, r3851, r3852, r3853, r3854, r3855, r3856, r3857, r3858, r3859, r3860, r3861, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3849, r3850, r3851, r3852, r3853, r3854, r3855, r3856, r3857, r3858, r3859, r3860, r3861⟩

theorem seg16_rung68 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15360 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX68 rho : Seg16.F), (seg16AccY68 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16419 : Seg16.F), (rho 16420 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX68 rho : Seg16.F), (seg16AccY68 rho : Seg16.F)⟩
        ⟨(rho 16419 : Seg16.F), (rho 16420 : Seg16.F)⟩
        ⟨(seg16AccX69 rho : Seg16.F), (seg16AccY69 rho : Seg16.F)⟩
        ⟨(rho 16432 : Seg16.F), (rho 16433 : Seg16.F)⟩ := by
  obtain ⟨r3849, r3850, r3851, r3852, r3853, r3854, r3855, r3856, r3857, r3858, r3859, r3860, r3861⟩ := seg16_rows68 rho h
  unfold Seg16.relationRow3849 at r3849
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3849
  unfold Seg16.relationRow3850 at r3850
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3850
  unfold Seg16.relationRow3851 at r3851
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3851
  unfold Seg16.relationRow3852 at r3852
  unfold Seg16.relationRow3853 at r3853
  unfold Seg16.relationRow3854 at r3854
  unfold Seg16.relationRow3855 at r3855
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3855
  unfold Seg16.relationRow3856 at r3856
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3856
  unfold Seg16.relationRow3857 at r3857
  unfold Seg16.relationRow3858 at r3858
  unfold Seg16.relationRow3859 at r3859
  unfold Seg16.relationRow3860 at r3860
  unfold Seg16.relationRow3861 at r3861
  have hrung68 (bit : Bool) (hbit : rho 15360 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX68 rho : Seg16.F), (seg16AccY68 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16419 : Seg16.F), (rho 16420 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX68 rho : Seg16.F), (seg16AccY68 rho : Seg16.F)⟩
        ⟨(rho 16419 : Seg16.F), (rho 16420 : Seg16.F)⟩
        ⟨(seg16AccX69 rho : Seg16.F), (seg16AccY69 rho : Seg16.F)⟩
        ⟨(rho 16432 : Seg16.F), (rho 16433 : Seg16.F)⟩ := by
    have hnextx : seg16AccX69 rho = seg16AccX68 rho + rho 16427 := by
      unfold seg16AccX69 seg16AccX68
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 68]
      ring
    have hnexty : seg16AccY69 rho = seg16AccY68 rho + rho 16428 := by
      unfold seg16AccY69 seg16AccY68
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 68]
      ring
    have ha0 : (rho 16419 + rho 16420) * (seg16AccX68 rho + seg16AccY68 rho) = rho 16421 := by
      unfold seg16AccX68 seg16AccY68
      linear_combination r3849
    have ha1 : rho 16420 * seg16AccX68 rho = rho 16422 := by
      unfold seg16AccX68
      linear_combination r3850
    have ha2 : rho 16419 * seg16AccY68 rho = rho 16423 := by
      unfold seg16AccY68
      linear_combination r3851
    have ha3 : 3021 * rho 16422 * rho 16423 = rho 16424 := by
      linear_combination r3852
    have ha4 : rho 16425 * (1 + rho 16424) = rho 16422 + rho 16423 := by
      linear_combination r3853
    have ha5 : rho 16426 * (1 - rho 16424) = rho 16421 - rho 16422 - rho 16423 := by
      linear_combination r3854
    have haddx :
        rho 16425 * (1 + 3021 * (rho 16420 * seg16AccX68 rho) * (rho 16419 * seg16AccY68 rho)) =
          rho 16420 * seg16AccX68 rho + rho 16419 * seg16AccY68 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16426 * (1 - 3021 * (rho 16420 * seg16AccX68 rho) * (rho 16419 * seg16AccY68 rho)) =
          (-1) * (rho 16420 * seg16AccX68 rho) - rho 16419 * seg16AccY68 rho +
            (seg16AccY68 rho - seg16AccX68 rho * (-1)) * (rho 16419 + rho 16420) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16426 * (1 - rho 16424) = rho 16421 - rho 16422 - rho 16423 := ha5
        _ = (-1) * rho 16422 - rho 16423 + (seg16AccY68 rho - seg16AccX68 rho * (-1)) * (rho 16419 + rho 16420) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX69 rho = seg16AccX68 rho - Bool.toZMod bit * (seg16AccX68 rho - rho 16425) := by
      have hd : rho 16427 = Bool.toZMod bit * (rho 16425 - seg16AccX68 rho) := by
        rw [← hbit]
        unfold seg16AccX68
        linear_combination -r3855
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY69 rho = seg16AccY68 rho - Bool.toZMod bit * (seg16AccY68 rho - rho 16426) := by
      have hd : rho 16428 = Bool.toZMod bit * (rho 16426 - seg16AccY68 rho) := by
        rw [← hbit]
        unfold seg16AccY68
        linear_combination -r3856
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16419 * rho 16420 = rho 16429 := by linear_combination r3857
    have hd1 : rho 16419 * rho 16419 = rho 16430 := by linear_combination r3858
    have hd2 : rho 16420 * rho 16420 = rho 16431 := by linear_combination r3859
    have hd3 : rho 16432 * (rho 16420 * rho 16420 + rho 16419 * rho 16419 * (-1)) = 2 * (rho 16419 * rho 16420) := by
      rw [hd0, hd1, hd2]
      linear_combination r3860
    have hd4 : rho 16433 * (2 - (rho 16420 * rho 16420 + rho 16419 * rho 16419 * (-1))) = rho 16420 * rho 16420 - rho 16419 * rho 16419 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3861
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX68 rho : Seg16.F), (seg16AccY68 rho : Seg16.F)⟩
      ⟨(rho 16419 : Seg16.F), (rho 16420 : Seg16.F)⟩
      ⟨(rho 16425 : Seg16.F), (rho 16426 : Seg16.F)⟩
      ⟨(seg16AccX69 rho : Seg16.F), (seg16AccY69 rho : Seg16.F)⟩
      ⟨(rho 16432 : Seg16.F), (rho 16433 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung68

theorem seg16_rows69 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3862 rho ∧ Seg16.relationRow3863 rho ∧ Seg16.relationRow3864 rho ∧ Seg16.relationRow3865 rho ∧ Seg16.relationRow3866 rho ∧ Seg16.relationRow3867 rho ∧ Seg16.relationRow3868 rho ∧ Seg16.relationRow3869 rho ∧ Seg16.relationRow3870 rho ∧ Seg16.relationRow3871 rho ∧ Seg16.relationRow3872 rho ∧ Seg16.relationRow3873 rho ∧ Seg16.relationRow3874 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3862, r3863, r3864, r3865, r3866, r3867, r3868, r3869, r3870, r3871, r3872, r3873, r3874, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3862, r3863, r3864, r3865, r3866, r3867, r3868, r3869, r3870, r3871, r3872, r3873, r3874⟩

theorem seg16_rung69 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15361 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX69 rho : Seg16.F), (seg16AccY69 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16432 : Seg16.F), (rho 16433 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX69 rho : Seg16.F), (seg16AccY69 rho : Seg16.F)⟩
        ⟨(rho 16432 : Seg16.F), (rho 16433 : Seg16.F)⟩
        ⟨(seg16AccX70 rho : Seg16.F), (seg16AccY70 rho : Seg16.F)⟩
        ⟨(rho 16445 : Seg16.F), (rho 16446 : Seg16.F)⟩ := by
  obtain ⟨r3862, r3863, r3864, r3865, r3866, r3867, r3868, r3869, r3870, r3871, r3872, r3873, r3874⟩ := seg16_rows69 rho h
  unfold Seg16.relationRow3862 at r3862
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3862
  unfold Seg16.relationRow3863 at r3863
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3863
  unfold Seg16.relationRow3864 at r3864
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3864
  unfold Seg16.relationRow3865 at r3865
  unfold Seg16.relationRow3866 at r3866
  unfold Seg16.relationRow3867 at r3867
  unfold Seg16.relationRow3868 at r3868
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3868
  unfold Seg16.relationRow3869 at r3869
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3869
  unfold Seg16.relationRow3870 at r3870
  unfold Seg16.relationRow3871 at r3871
  unfold Seg16.relationRow3872 at r3872
  unfold Seg16.relationRow3873 at r3873
  unfold Seg16.relationRow3874 at r3874
  have hrung69 (bit : Bool) (hbit : rho 15361 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX69 rho : Seg16.F), (seg16AccY69 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16432 : Seg16.F), (rho 16433 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX69 rho : Seg16.F), (seg16AccY69 rho : Seg16.F)⟩
        ⟨(rho 16432 : Seg16.F), (rho 16433 : Seg16.F)⟩
        ⟨(seg16AccX70 rho : Seg16.F), (seg16AccY70 rho : Seg16.F)⟩
        ⟨(rho 16445 : Seg16.F), (rho 16446 : Seg16.F)⟩ := by
    have hnextx : seg16AccX70 rho = seg16AccX69 rho + rho 16440 := by
      unfold seg16AccX70 seg16AccX69
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 69]
      ring
    have hnexty : seg16AccY70 rho = seg16AccY69 rho + rho 16441 := by
      unfold seg16AccY70 seg16AccY69
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 69]
      ring
    have ha0 : (rho 16432 + rho 16433) * (seg16AccX69 rho + seg16AccY69 rho) = rho 16434 := by
      unfold seg16AccX69 seg16AccY69
      linear_combination r3862
    have ha1 : rho 16433 * seg16AccX69 rho = rho 16435 := by
      unfold seg16AccX69
      linear_combination r3863
    have ha2 : rho 16432 * seg16AccY69 rho = rho 16436 := by
      unfold seg16AccY69
      linear_combination r3864
    have ha3 : 3021 * rho 16435 * rho 16436 = rho 16437 := by
      linear_combination r3865
    have ha4 : rho 16438 * (1 + rho 16437) = rho 16435 + rho 16436 := by
      linear_combination r3866
    have ha5 : rho 16439 * (1 - rho 16437) = rho 16434 - rho 16435 - rho 16436 := by
      linear_combination r3867
    have haddx :
        rho 16438 * (1 + 3021 * (rho 16433 * seg16AccX69 rho) * (rho 16432 * seg16AccY69 rho)) =
          rho 16433 * seg16AccX69 rho + rho 16432 * seg16AccY69 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16439 * (1 - 3021 * (rho 16433 * seg16AccX69 rho) * (rho 16432 * seg16AccY69 rho)) =
          (-1) * (rho 16433 * seg16AccX69 rho) - rho 16432 * seg16AccY69 rho +
            (seg16AccY69 rho - seg16AccX69 rho * (-1)) * (rho 16432 + rho 16433) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16439 * (1 - rho 16437) = rho 16434 - rho 16435 - rho 16436 := ha5
        _ = (-1) * rho 16435 - rho 16436 + (seg16AccY69 rho - seg16AccX69 rho * (-1)) * (rho 16432 + rho 16433) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX70 rho = seg16AccX69 rho - Bool.toZMod bit * (seg16AccX69 rho - rho 16438) := by
      have hd : rho 16440 = Bool.toZMod bit * (rho 16438 - seg16AccX69 rho) := by
        rw [← hbit]
        unfold seg16AccX69
        linear_combination -r3868
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY70 rho = seg16AccY69 rho - Bool.toZMod bit * (seg16AccY69 rho - rho 16439) := by
      have hd : rho 16441 = Bool.toZMod bit * (rho 16439 - seg16AccY69 rho) := by
        rw [← hbit]
        unfold seg16AccY69
        linear_combination -r3869
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16432 * rho 16433 = rho 16442 := by linear_combination r3870
    have hd1 : rho 16432 * rho 16432 = rho 16443 := by linear_combination r3871
    have hd2 : rho 16433 * rho 16433 = rho 16444 := by linear_combination r3872
    have hd3 : rho 16445 * (rho 16433 * rho 16433 + rho 16432 * rho 16432 * (-1)) = 2 * (rho 16432 * rho 16433) := by
      rw [hd0, hd1, hd2]
      linear_combination r3873
    have hd4 : rho 16446 * (2 - (rho 16433 * rho 16433 + rho 16432 * rho 16432 * (-1))) = rho 16433 * rho 16433 - rho 16432 * rho 16432 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3874
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX69 rho : Seg16.F), (seg16AccY69 rho : Seg16.F)⟩
      ⟨(rho 16432 : Seg16.F), (rho 16433 : Seg16.F)⟩
      ⟨(rho 16438 : Seg16.F), (rho 16439 : Seg16.F)⟩
      ⟨(seg16AccX70 rho : Seg16.F), (seg16AccY70 rho : Seg16.F)⟩
      ⟨(rho 16445 : Seg16.F), (rho 16446 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung69

theorem seg16_rows70 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3875 rho ∧ Seg16.relationRow3876 rho ∧ Seg16.relationRow3877 rho ∧ Seg16.relationRow3878 rho ∧ Seg16.relationRow3879 rho ∧ Seg16.relationRow3880 rho ∧ Seg16.relationRow3881 rho ∧ Seg16.relationRow3882 rho ∧ Seg16.relationRow3883 rho ∧ Seg16.relationRow3884 rho ∧ Seg16.relationRow3885 rho ∧ Seg16.relationRow3886 rho ∧ Seg16.relationRow3887 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3875, r3876, r3877, r3878, r3879, r3880, r3881, r3882, r3883, r3884, r3885, r3886, r3887, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3875, r3876, r3877, r3878, r3879, r3880, r3881, r3882, r3883, r3884, r3885, r3886, r3887⟩

theorem seg16_rung70 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15362 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX70 rho : Seg16.F), (seg16AccY70 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16445 : Seg16.F), (rho 16446 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX70 rho : Seg16.F), (seg16AccY70 rho : Seg16.F)⟩
        ⟨(rho 16445 : Seg16.F), (rho 16446 : Seg16.F)⟩
        ⟨(seg16AccX71 rho : Seg16.F), (seg16AccY71 rho : Seg16.F)⟩
        ⟨(rho 16458 : Seg16.F), (rho 16459 : Seg16.F)⟩ := by
  obtain ⟨r3875, r3876, r3877, r3878, r3879, r3880, r3881, r3882, r3883, r3884, r3885, r3886, r3887⟩ := seg16_rows70 rho h
  unfold Seg16.relationRow3875 at r3875
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3875
  unfold Seg16.relationRow3876 at r3876
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3876
  unfold Seg16.relationRow3877 at r3877
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3877
  unfold Seg16.relationRow3878 at r3878
  unfold Seg16.relationRow3879 at r3879
  unfold Seg16.relationRow3880 at r3880
  unfold Seg16.relationRow3881 at r3881
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3881
  unfold Seg16.relationRow3882 at r3882
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3882
  unfold Seg16.relationRow3883 at r3883
  unfold Seg16.relationRow3884 at r3884
  unfold Seg16.relationRow3885 at r3885
  unfold Seg16.relationRow3886 at r3886
  unfold Seg16.relationRow3887 at r3887
  have hrung70 (bit : Bool) (hbit : rho 15362 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX70 rho : Seg16.F), (seg16AccY70 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16445 : Seg16.F), (rho 16446 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX70 rho : Seg16.F), (seg16AccY70 rho : Seg16.F)⟩
        ⟨(rho 16445 : Seg16.F), (rho 16446 : Seg16.F)⟩
        ⟨(seg16AccX71 rho : Seg16.F), (seg16AccY71 rho : Seg16.F)⟩
        ⟨(rho 16458 : Seg16.F), (rho 16459 : Seg16.F)⟩ := by
    have hnextx : seg16AccX71 rho = seg16AccX70 rho + rho 16453 := by
      unfold seg16AccX71 seg16AccX70
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 70]
      ring
    have hnexty : seg16AccY71 rho = seg16AccY70 rho + rho 16454 := by
      unfold seg16AccY71 seg16AccY70
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 70]
      ring
    have ha0 : (rho 16445 + rho 16446) * (seg16AccX70 rho + seg16AccY70 rho) = rho 16447 := by
      unfold seg16AccX70 seg16AccY70
      linear_combination r3875
    have ha1 : rho 16446 * seg16AccX70 rho = rho 16448 := by
      unfold seg16AccX70
      linear_combination r3876
    have ha2 : rho 16445 * seg16AccY70 rho = rho 16449 := by
      unfold seg16AccY70
      linear_combination r3877
    have ha3 : 3021 * rho 16448 * rho 16449 = rho 16450 := by
      linear_combination r3878
    have ha4 : rho 16451 * (1 + rho 16450) = rho 16448 + rho 16449 := by
      linear_combination r3879
    have ha5 : rho 16452 * (1 - rho 16450) = rho 16447 - rho 16448 - rho 16449 := by
      linear_combination r3880
    have haddx :
        rho 16451 * (1 + 3021 * (rho 16446 * seg16AccX70 rho) * (rho 16445 * seg16AccY70 rho)) =
          rho 16446 * seg16AccX70 rho + rho 16445 * seg16AccY70 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16452 * (1 - 3021 * (rho 16446 * seg16AccX70 rho) * (rho 16445 * seg16AccY70 rho)) =
          (-1) * (rho 16446 * seg16AccX70 rho) - rho 16445 * seg16AccY70 rho +
            (seg16AccY70 rho - seg16AccX70 rho * (-1)) * (rho 16445 + rho 16446) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16452 * (1 - rho 16450) = rho 16447 - rho 16448 - rho 16449 := ha5
        _ = (-1) * rho 16448 - rho 16449 + (seg16AccY70 rho - seg16AccX70 rho * (-1)) * (rho 16445 + rho 16446) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX71 rho = seg16AccX70 rho - Bool.toZMod bit * (seg16AccX70 rho - rho 16451) := by
      have hd : rho 16453 = Bool.toZMod bit * (rho 16451 - seg16AccX70 rho) := by
        rw [← hbit]
        unfold seg16AccX70
        linear_combination -r3881
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY71 rho = seg16AccY70 rho - Bool.toZMod bit * (seg16AccY70 rho - rho 16452) := by
      have hd : rho 16454 = Bool.toZMod bit * (rho 16452 - seg16AccY70 rho) := by
        rw [← hbit]
        unfold seg16AccY70
        linear_combination -r3882
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16445 * rho 16446 = rho 16455 := by linear_combination r3883
    have hd1 : rho 16445 * rho 16445 = rho 16456 := by linear_combination r3884
    have hd2 : rho 16446 * rho 16446 = rho 16457 := by linear_combination r3885
    have hd3 : rho 16458 * (rho 16446 * rho 16446 + rho 16445 * rho 16445 * (-1)) = 2 * (rho 16445 * rho 16446) := by
      rw [hd0, hd1, hd2]
      linear_combination r3886
    have hd4 : rho 16459 * (2 - (rho 16446 * rho 16446 + rho 16445 * rho 16445 * (-1))) = rho 16446 * rho 16446 - rho 16445 * rho 16445 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3887
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX70 rho : Seg16.F), (seg16AccY70 rho : Seg16.F)⟩
      ⟨(rho 16445 : Seg16.F), (rho 16446 : Seg16.F)⟩
      ⟨(rho 16451 : Seg16.F), (rho 16452 : Seg16.F)⟩
      ⟨(seg16AccX71 rho : Seg16.F), (seg16AccY71 rho : Seg16.F)⟩
      ⟨(rho 16458 : Seg16.F), (rho 16459 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung70

theorem seg16_rows71 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3888 rho ∧ Seg16.relationRow3889 rho ∧ Seg16.relationRow3890 rho ∧ Seg16.relationRow3891 rho ∧ Seg16.relationRow3892 rho ∧ Seg16.relationRow3893 rho ∧ Seg16.relationRow3894 rho ∧ Seg16.relationRow3895 rho ∧ Seg16.relationRow3896 rho ∧ Seg16.relationRow3897 rho ∧ Seg16.relationRow3898 rho ∧ Seg16.relationRow3899 rho ∧ Seg16.relationRow3900 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3888, r3889, r3890, r3891, r3892, r3893, r3894, r3895, r3896, r3897, r3898, r3899, r3900, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3888, r3889, r3890, r3891, r3892, r3893, r3894, r3895, r3896, r3897, r3898, r3899, r3900⟩

theorem seg16_rung71 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15363 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX71 rho : Seg16.F), (seg16AccY71 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16458 : Seg16.F), (rho 16459 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX71 rho : Seg16.F), (seg16AccY71 rho : Seg16.F)⟩
        ⟨(rho 16458 : Seg16.F), (rho 16459 : Seg16.F)⟩
        ⟨(seg16AccX72 rho : Seg16.F), (seg16AccY72 rho : Seg16.F)⟩
        ⟨(rho 16471 : Seg16.F), (rho 16472 : Seg16.F)⟩ := by
  obtain ⟨r3888, r3889, r3890, r3891, r3892, r3893, r3894, r3895, r3896, r3897, r3898, r3899, r3900⟩ := seg16_rows71 rho h
  unfold Seg16.relationRow3888 at r3888
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3888
  unfold Seg16.relationRow3889 at r3889
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3889
  unfold Seg16.relationRow3890 at r3890
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3890
  unfold Seg16.relationRow3891 at r3891
  unfold Seg16.relationRow3892 at r3892
  unfold Seg16.relationRow3893 at r3893
  unfold Seg16.relationRow3894 at r3894
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3894
  unfold Seg16.relationRow3895 at r3895
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3895
  unfold Seg16.relationRow3896 at r3896
  unfold Seg16.relationRow3897 at r3897
  unfold Seg16.relationRow3898 at r3898
  unfold Seg16.relationRow3899 at r3899
  unfold Seg16.relationRow3900 at r3900
  have hrung71 (bit : Bool) (hbit : rho 15363 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX71 rho : Seg16.F), (seg16AccY71 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16458 : Seg16.F), (rho 16459 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX71 rho : Seg16.F), (seg16AccY71 rho : Seg16.F)⟩
        ⟨(rho 16458 : Seg16.F), (rho 16459 : Seg16.F)⟩
        ⟨(seg16AccX72 rho : Seg16.F), (seg16AccY72 rho : Seg16.F)⟩
        ⟨(rho 16471 : Seg16.F), (rho 16472 : Seg16.F)⟩ := by
    have hnextx : seg16AccX72 rho = seg16AccX71 rho + rho 16466 := by
      unfold seg16AccX72 seg16AccX71
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 71]
      ring
    have hnexty : seg16AccY72 rho = seg16AccY71 rho + rho 16467 := by
      unfold seg16AccY72 seg16AccY71
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 71]
      ring
    have ha0 : (rho 16458 + rho 16459) * (seg16AccX71 rho + seg16AccY71 rho) = rho 16460 := by
      unfold seg16AccX71 seg16AccY71
      linear_combination r3888
    have ha1 : rho 16459 * seg16AccX71 rho = rho 16461 := by
      unfold seg16AccX71
      linear_combination r3889
    have ha2 : rho 16458 * seg16AccY71 rho = rho 16462 := by
      unfold seg16AccY71
      linear_combination r3890
    have ha3 : 3021 * rho 16461 * rho 16462 = rho 16463 := by
      linear_combination r3891
    have ha4 : rho 16464 * (1 + rho 16463) = rho 16461 + rho 16462 := by
      linear_combination r3892
    have ha5 : rho 16465 * (1 - rho 16463) = rho 16460 - rho 16461 - rho 16462 := by
      linear_combination r3893
    have haddx :
        rho 16464 * (1 + 3021 * (rho 16459 * seg16AccX71 rho) * (rho 16458 * seg16AccY71 rho)) =
          rho 16459 * seg16AccX71 rho + rho 16458 * seg16AccY71 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16465 * (1 - 3021 * (rho 16459 * seg16AccX71 rho) * (rho 16458 * seg16AccY71 rho)) =
          (-1) * (rho 16459 * seg16AccX71 rho) - rho 16458 * seg16AccY71 rho +
            (seg16AccY71 rho - seg16AccX71 rho * (-1)) * (rho 16458 + rho 16459) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16465 * (1 - rho 16463) = rho 16460 - rho 16461 - rho 16462 := ha5
        _ = (-1) * rho 16461 - rho 16462 + (seg16AccY71 rho - seg16AccX71 rho * (-1)) * (rho 16458 + rho 16459) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX72 rho = seg16AccX71 rho - Bool.toZMod bit * (seg16AccX71 rho - rho 16464) := by
      have hd : rho 16466 = Bool.toZMod bit * (rho 16464 - seg16AccX71 rho) := by
        rw [← hbit]
        unfold seg16AccX71
        linear_combination -r3894
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY72 rho = seg16AccY71 rho - Bool.toZMod bit * (seg16AccY71 rho - rho 16465) := by
      have hd : rho 16467 = Bool.toZMod bit * (rho 16465 - seg16AccY71 rho) := by
        rw [← hbit]
        unfold seg16AccY71
        linear_combination -r3895
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16458 * rho 16459 = rho 16468 := by linear_combination r3896
    have hd1 : rho 16458 * rho 16458 = rho 16469 := by linear_combination r3897
    have hd2 : rho 16459 * rho 16459 = rho 16470 := by linear_combination r3898
    have hd3 : rho 16471 * (rho 16459 * rho 16459 + rho 16458 * rho 16458 * (-1)) = 2 * (rho 16458 * rho 16459) := by
      rw [hd0, hd1, hd2]
      linear_combination r3899
    have hd4 : rho 16472 * (2 - (rho 16459 * rho 16459 + rho 16458 * rho 16458 * (-1))) = rho 16459 * rho 16459 - rho 16458 * rho 16458 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3900
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX71 rho : Seg16.F), (seg16AccY71 rho : Seg16.F)⟩
      ⟨(rho 16458 : Seg16.F), (rho 16459 : Seg16.F)⟩
      ⟨(rho 16464 : Seg16.F), (rho 16465 : Seg16.F)⟩
      ⟨(seg16AccX72 rho : Seg16.F), (seg16AccY72 rho : Seg16.F)⟩
      ⟨(rho 16471 : Seg16.F), (rho 16472 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung71

theorem seg16_rows72 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3901 rho ∧ Seg16.relationRow3902 rho ∧ Seg16.relationRow3903 rho ∧ Seg16.relationRow3904 rho ∧ Seg16.relationRow3905 rho ∧ Seg16.relationRow3906 rho ∧ Seg16.relationRow3907 rho ∧ Seg16.relationRow3908 rho ∧ Seg16.relationRow3909 rho ∧ Seg16.relationRow3910 rho ∧ Seg16.relationRow3911 rho ∧ Seg16.relationRow3912 rho ∧ Seg16.relationRow3913 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3901, r3902, r3903, r3904, r3905, r3906, r3907, r3908, r3909, r3910, r3911, r3912, r3913, _, _, _, _, _, _⟩
  exact ⟨r3901, r3902, r3903, r3904, r3905, r3906, r3907, r3908, r3909, r3910, r3911, r3912, r3913⟩

theorem seg16_rung72 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15364 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX72 rho : Seg16.F), (seg16AccY72 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16471 : Seg16.F), (rho 16472 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX72 rho : Seg16.F), (seg16AccY72 rho : Seg16.F)⟩
        ⟨(rho 16471 : Seg16.F), (rho 16472 : Seg16.F)⟩
        ⟨(seg16AccX73 rho : Seg16.F), (seg16AccY73 rho : Seg16.F)⟩
        ⟨(rho 16484 : Seg16.F), (rho 16485 : Seg16.F)⟩ := by
  obtain ⟨r3901, r3902, r3903, r3904, r3905, r3906, r3907, r3908, r3909, r3910, r3911, r3912, r3913⟩ := seg16_rows72 rho h
  unfold Seg16.relationRow3901 at r3901
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3901
  unfold Seg16.relationRow3902 at r3902
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3902
  unfold Seg16.relationRow3903 at r3903
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3903
  unfold Seg16.relationRow3904 at r3904
  unfold Seg16.relationRow3905 at r3905
  unfold Seg16.relationRow3906 at r3906
  unfold Seg16.relationRow3907 at r3907
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3907
  unfold Seg16.relationRow3908 at r3908
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3908
  unfold Seg16.relationRow3909 at r3909
  unfold Seg16.relationRow3910 at r3910
  unfold Seg16.relationRow3911 at r3911
  unfold Seg16.relationRow3912 at r3912
  unfold Seg16.relationRow3913 at r3913
  have hrung72 (bit : Bool) (hbit : rho 15364 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX72 rho : Seg16.F), (seg16AccY72 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16471 : Seg16.F), (rho 16472 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX72 rho : Seg16.F), (seg16AccY72 rho : Seg16.F)⟩
        ⟨(rho 16471 : Seg16.F), (rho 16472 : Seg16.F)⟩
        ⟨(seg16AccX73 rho : Seg16.F), (seg16AccY73 rho : Seg16.F)⟩
        ⟨(rho 16484 : Seg16.F), (rho 16485 : Seg16.F)⟩ := by
    have hnextx : seg16AccX73 rho = seg16AccX72 rho + rho 16479 := by
      unfold seg16AccX73 seg16AccX72
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 72]
      ring
    have hnexty : seg16AccY73 rho = seg16AccY72 rho + rho 16480 := by
      unfold seg16AccY73 seg16AccY72
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 72]
      ring
    have ha0 : (rho 16471 + rho 16472) * (seg16AccX72 rho + seg16AccY72 rho) = rho 16473 := by
      unfold seg16AccX72 seg16AccY72
      linear_combination r3901
    have ha1 : rho 16472 * seg16AccX72 rho = rho 16474 := by
      unfold seg16AccX72
      linear_combination r3902
    have ha2 : rho 16471 * seg16AccY72 rho = rho 16475 := by
      unfold seg16AccY72
      linear_combination r3903
    have ha3 : 3021 * rho 16474 * rho 16475 = rho 16476 := by
      linear_combination r3904
    have ha4 : rho 16477 * (1 + rho 16476) = rho 16474 + rho 16475 := by
      linear_combination r3905
    have ha5 : rho 16478 * (1 - rho 16476) = rho 16473 - rho 16474 - rho 16475 := by
      linear_combination r3906
    have haddx :
        rho 16477 * (1 + 3021 * (rho 16472 * seg16AccX72 rho) * (rho 16471 * seg16AccY72 rho)) =
          rho 16472 * seg16AccX72 rho + rho 16471 * seg16AccY72 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16478 * (1 - 3021 * (rho 16472 * seg16AccX72 rho) * (rho 16471 * seg16AccY72 rho)) =
          (-1) * (rho 16472 * seg16AccX72 rho) - rho 16471 * seg16AccY72 rho +
            (seg16AccY72 rho - seg16AccX72 rho * (-1)) * (rho 16471 + rho 16472) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16478 * (1 - rho 16476) = rho 16473 - rho 16474 - rho 16475 := ha5
        _ = (-1) * rho 16474 - rho 16475 + (seg16AccY72 rho - seg16AccX72 rho * (-1)) * (rho 16471 + rho 16472) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX73 rho = seg16AccX72 rho - Bool.toZMod bit * (seg16AccX72 rho - rho 16477) := by
      have hd : rho 16479 = Bool.toZMod bit * (rho 16477 - seg16AccX72 rho) := by
        rw [← hbit]
        unfold seg16AccX72
        linear_combination -r3907
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY73 rho = seg16AccY72 rho - Bool.toZMod bit * (seg16AccY72 rho - rho 16478) := by
      have hd : rho 16480 = Bool.toZMod bit * (rho 16478 - seg16AccY72 rho) := by
        rw [← hbit]
        unfold seg16AccY72
        linear_combination -r3908
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16471 * rho 16472 = rho 16481 := by linear_combination r3909
    have hd1 : rho 16471 * rho 16471 = rho 16482 := by linear_combination r3910
    have hd2 : rho 16472 * rho 16472 = rho 16483 := by linear_combination r3911
    have hd3 : rho 16484 * (rho 16472 * rho 16472 + rho 16471 * rho 16471 * (-1)) = 2 * (rho 16471 * rho 16472) := by
      rw [hd0, hd1, hd2]
      linear_combination r3912
    have hd4 : rho 16485 * (2 - (rho 16472 * rho 16472 + rho 16471 * rho 16471 * (-1))) = rho 16472 * rho 16472 - rho 16471 * rho 16471 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3913
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX72 rho : Seg16.F), (seg16AccY72 rho : Seg16.F)⟩
      ⟨(rho 16471 : Seg16.F), (rho 16472 : Seg16.F)⟩
      ⟨(rho 16477 : Seg16.F), (rho 16478 : Seg16.F)⟩
      ⟨(seg16AccX73 rho : Seg16.F), (seg16AccY73 rho : Seg16.F)⟩
      ⟨(rho 16484 : Seg16.F), (rho 16485 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung72

theorem seg16_rows73 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3914 rho ∧ Seg16.relationRow3915 rho ∧ Seg16.relationRow3916 rho ∧ Seg16.relationRow3917 rho ∧ Seg16.relationRow3918 rho ∧ Seg16.relationRow3919 rho ∧ Seg16.relationRow3920 rho ∧ Seg16.relationRow3921 rho ∧ Seg16.relationRow3922 rho ∧ Seg16.relationRow3923 rho ∧ Seg16.relationRow3924 rho ∧ Seg16.relationRow3925 rho ∧ Seg16.relationRow3926 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3914, r3915, r3916, r3917, r3918, r3919⟩
  unfold Seg16.relationPart49 at p49
  rcases p49 with ⟨r3920, r3921, r3922, r3923, r3924, r3925, r3926, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3914, r3915, r3916, r3917, r3918, r3919, r3920, r3921, r3922, r3923, r3924, r3925, r3926⟩

theorem seg16_rung73 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15365 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX73 rho : Seg16.F), (seg16AccY73 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16484 : Seg16.F), (rho 16485 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX73 rho : Seg16.F), (seg16AccY73 rho : Seg16.F)⟩
        ⟨(rho 16484 : Seg16.F), (rho 16485 : Seg16.F)⟩
        ⟨(seg16AccX74 rho : Seg16.F), (seg16AccY74 rho : Seg16.F)⟩
        ⟨(rho 16497 : Seg16.F), (rho 16498 : Seg16.F)⟩ := by
  obtain ⟨r3914, r3915, r3916, r3917, r3918, r3919, r3920, r3921, r3922, r3923, r3924, r3925, r3926⟩ := seg16_rows73 rho h
  unfold Seg16.relationRow3914 at r3914
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3914
  unfold Seg16.relationRow3915 at r3915
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3915
  unfold Seg16.relationRow3916 at r3916
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3916
  unfold Seg16.relationRow3917 at r3917
  unfold Seg16.relationRow3918 at r3918
  unfold Seg16.relationRow3919 at r3919
  unfold Seg16.relationRow3920 at r3920
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3920
  unfold Seg16.relationRow3921 at r3921
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3921
  unfold Seg16.relationRow3922 at r3922
  unfold Seg16.relationRow3923 at r3923
  unfold Seg16.relationRow3924 at r3924
  unfold Seg16.relationRow3925 at r3925
  unfold Seg16.relationRow3926 at r3926
  have hrung73 (bit : Bool) (hbit : rho 15365 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX73 rho : Seg16.F), (seg16AccY73 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16484 : Seg16.F), (rho 16485 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX73 rho : Seg16.F), (seg16AccY73 rho : Seg16.F)⟩
        ⟨(rho 16484 : Seg16.F), (rho 16485 : Seg16.F)⟩
        ⟨(seg16AccX74 rho : Seg16.F), (seg16AccY74 rho : Seg16.F)⟩
        ⟨(rho 16497 : Seg16.F), (rho 16498 : Seg16.F)⟩ := by
    have hnextx : seg16AccX74 rho = seg16AccX73 rho + rho 16492 := by
      unfold seg16AccX74 seg16AccX73
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 73]
      ring
    have hnexty : seg16AccY74 rho = seg16AccY73 rho + rho 16493 := by
      unfold seg16AccY74 seg16AccY73
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 73]
      ring
    have ha0 : (rho 16484 + rho 16485) * (seg16AccX73 rho + seg16AccY73 rho) = rho 16486 := by
      unfold seg16AccX73 seg16AccY73
      linear_combination r3914
    have ha1 : rho 16485 * seg16AccX73 rho = rho 16487 := by
      unfold seg16AccX73
      linear_combination r3915
    have ha2 : rho 16484 * seg16AccY73 rho = rho 16488 := by
      unfold seg16AccY73
      linear_combination r3916
    have ha3 : 3021 * rho 16487 * rho 16488 = rho 16489 := by
      linear_combination r3917
    have ha4 : rho 16490 * (1 + rho 16489) = rho 16487 + rho 16488 := by
      linear_combination r3918
    have ha5 : rho 16491 * (1 - rho 16489) = rho 16486 - rho 16487 - rho 16488 := by
      linear_combination r3919
    have haddx :
        rho 16490 * (1 + 3021 * (rho 16485 * seg16AccX73 rho) * (rho 16484 * seg16AccY73 rho)) =
          rho 16485 * seg16AccX73 rho + rho 16484 * seg16AccY73 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16491 * (1 - 3021 * (rho 16485 * seg16AccX73 rho) * (rho 16484 * seg16AccY73 rho)) =
          (-1) * (rho 16485 * seg16AccX73 rho) - rho 16484 * seg16AccY73 rho +
            (seg16AccY73 rho - seg16AccX73 rho * (-1)) * (rho 16484 + rho 16485) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16491 * (1 - rho 16489) = rho 16486 - rho 16487 - rho 16488 := ha5
        _ = (-1) * rho 16487 - rho 16488 + (seg16AccY73 rho - seg16AccX73 rho * (-1)) * (rho 16484 + rho 16485) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX74 rho = seg16AccX73 rho - Bool.toZMod bit * (seg16AccX73 rho - rho 16490) := by
      have hd : rho 16492 = Bool.toZMod bit * (rho 16490 - seg16AccX73 rho) := by
        rw [← hbit]
        unfold seg16AccX73
        linear_combination -r3920
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY74 rho = seg16AccY73 rho - Bool.toZMod bit * (seg16AccY73 rho - rho 16491) := by
      have hd : rho 16493 = Bool.toZMod bit * (rho 16491 - seg16AccY73 rho) := by
        rw [← hbit]
        unfold seg16AccY73
        linear_combination -r3921
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16484 * rho 16485 = rho 16494 := by linear_combination r3922
    have hd1 : rho 16484 * rho 16484 = rho 16495 := by linear_combination r3923
    have hd2 : rho 16485 * rho 16485 = rho 16496 := by linear_combination r3924
    have hd3 : rho 16497 * (rho 16485 * rho 16485 + rho 16484 * rho 16484 * (-1)) = 2 * (rho 16484 * rho 16485) := by
      rw [hd0, hd1, hd2]
      linear_combination r3925
    have hd4 : rho 16498 * (2 - (rho 16485 * rho 16485 + rho 16484 * rho 16484 * (-1))) = rho 16485 * rho 16485 - rho 16484 * rho 16484 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3926
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX73 rho : Seg16.F), (seg16AccY73 rho : Seg16.F)⟩
      ⟨(rho 16484 : Seg16.F), (rho 16485 : Seg16.F)⟩
      ⟨(rho 16490 : Seg16.F), (rho 16491 : Seg16.F)⟩
      ⟨(seg16AccX74 rho : Seg16.F), (seg16AccY74 rho : Seg16.F)⟩
      ⟨(rho 16497 : Seg16.F), (rho 16498 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung73

theorem seg16_rows74 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3927 rho ∧ Seg16.relationRow3928 rho ∧ Seg16.relationRow3929 rho ∧ Seg16.relationRow3930 rho ∧ Seg16.relationRow3931 rho ∧ Seg16.relationRow3932 rho ∧ Seg16.relationRow3933 rho ∧ Seg16.relationRow3934 rho ∧ Seg16.relationRow3935 rho ∧ Seg16.relationRow3936 rho ∧ Seg16.relationRow3937 rho ∧ Seg16.relationRow3938 rho ∧ Seg16.relationRow3939 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, r3927, r3928, r3929, r3930, r3931, r3932, r3933, r3934, r3935, r3936, r3937, r3938, r3939, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3927, r3928, r3929, r3930, r3931, r3932, r3933, r3934, r3935, r3936, r3937, r3938, r3939⟩

theorem seg16_rung74 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15366 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX74 rho : Seg16.F), (seg16AccY74 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16497 : Seg16.F), (rho 16498 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX74 rho : Seg16.F), (seg16AccY74 rho : Seg16.F)⟩
        ⟨(rho 16497 : Seg16.F), (rho 16498 : Seg16.F)⟩
        ⟨(seg16AccX75 rho : Seg16.F), (seg16AccY75 rho : Seg16.F)⟩
        ⟨(rho 16510 : Seg16.F), (rho 16511 : Seg16.F)⟩ := by
  obtain ⟨r3927, r3928, r3929, r3930, r3931, r3932, r3933, r3934, r3935, r3936, r3937, r3938, r3939⟩ := seg16_rows74 rho h
  unfold Seg16.relationRow3927 at r3927
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3927
  unfold Seg16.relationRow3928 at r3928
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3928
  unfold Seg16.relationRow3929 at r3929
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3929
  unfold Seg16.relationRow3930 at r3930
  unfold Seg16.relationRow3931 at r3931
  unfold Seg16.relationRow3932 at r3932
  unfold Seg16.relationRow3933 at r3933
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3933
  unfold Seg16.relationRow3934 at r3934
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3934
  unfold Seg16.relationRow3935 at r3935
  unfold Seg16.relationRow3936 at r3936
  unfold Seg16.relationRow3937 at r3937
  unfold Seg16.relationRow3938 at r3938
  unfold Seg16.relationRow3939 at r3939
  have hrung74 (bit : Bool) (hbit : rho 15366 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX74 rho : Seg16.F), (seg16AccY74 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16497 : Seg16.F), (rho 16498 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX74 rho : Seg16.F), (seg16AccY74 rho : Seg16.F)⟩
        ⟨(rho 16497 : Seg16.F), (rho 16498 : Seg16.F)⟩
        ⟨(seg16AccX75 rho : Seg16.F), (seg16AccY75 rho : Seg16.F)⟩
        ⟨(rho 16510 : Seg16.F), (rho 16511 : Seg16.F)⟩ := by
    have hnextx : seg16AccX75 rho = seg16AccX74 rho + rho 16505 := by
      unfold seg16AccX75 seg16AccX74
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 74]
      ring
    have hnexty : seg16AccY75 rho = seg16AccY74 rho + rho 16506 := by
      unfold seg16AccY75 seg16AccY74
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 74]
      ring
    have ha0 : (rho 16497 + rho 16498) * (seg16AccX74 rho + seg16AccY74 rho) = rho 16499 := by
      unfold seg16AccX74 seg16AccY74
      linear_combination r3927
    have ha1 : rho 16498 * seg16AccX74 rho = rho 16500 := by
      unfold seg16AccX74
      linear_combination r3928
    have ha2 : rho 16497 * seg16AccY74 rho = rho 16501 := by
      unfold seg16AccY74
      linear_combination r3929
    have ha3 : 3021 * rho 16500 * rho 16501 = rho 16502 := by
      linear_combination r3930
    have ha4 : rho 16503 * (1 + rho 16502) = rho 16500 + rho 16501 := by
      linear_combination r3931
    have ha5 : rho 16504 * (1 - rho 16502) = rho 16499 - rho 16500 - rho 16501 := by
      linear_combination r3932
    have haddx :
        rho 16503 * (1 + 3021 * (rho 16498 * seg16AccX74 rho) * (rho 16497 * seg16AccY74 rho)) =
          rho 16498 * seg16AccX74 rho + rho 16497 * seg16AccY74 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16504 * (1 - 3021 * (rho 16498 * seg16AccX74 rho) * (rho 16497 * seg16AccY74 rho)) =
          (-1) * (rho 16498 * seg16AccX74 rho) - rho 16497 * seg16AccY74 rho +
            (seg16AccY74 rho - seg16AccX74 rho * (-1)) * (rho 16497 + rho 16498) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16504 * (1 - rho 16502) = rho 16499 - rho 16500 - rho 16501 := ha5
        _ = (-1) * rho 16500 - rho 16501 + (seg16AccY74 rho - seg16AccX74 rho * (-1)) * (rho 16497 + rho 16498) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX75 rho = seg16AccX74 rho - Bool.toZMod bit * (seg16AccX74 rho - rho 16503) := by
      have hd : rho 16505 = Bool.toZMod bit * (rho 16503 - seg16AccX74 rho) := by
        rw [← hbit]
        unfold seg16AccX74
        linear_combination -r3933
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY75 rho = seg16AccY74 rho - Bool.toZMod bit * (seg16AccY74 rho - rho 16504) := by
      have hd : rho 16506 = Bool.toZMod bit * (rho 16504 - seg16AccY74 rho) := by
        rw [← hbit]
        unfold seg16AccY74
        linear_combination -r3934
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16497 * rho 16498 = rho 16507 := by linear_combination r3935
    have hd1 : rho 16497 * rho 16497 = rho 16508 := by linear_combination r3936
    have hd2 : rho 16498 * rho 16498 = rho 16509 := by linear_combination r3937
    have hd3 : rho 16510 * (rho 16498 * rho 16498 + rho 16497 * rho 16497 * (-1)) = 2 * (rho 16497 * rho 16498) := by
      rw [hd0, hd1, hd2]
      linear_combination r3938
    have hd4 : rho 16511 * (2 - (rho 16498 * rho 16498 + rho 16497 * rho 16497 * (-1))) = rho 16498 * rho 16498 - rho 16497 * rho 16497 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3939
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX74 rho : Seg16.F), (seg16AccY74 rho : Seg16.F)⟩
      ⟨(rho 16497 : Seg16.F), (rho 16498 : Seg16.F)⟩
      ⟨(rho 16503 : Seg16.F), (rho 16504 : Seg16.F)⟩
      ⟨(seg16AccX75 rho : Seg16.F), (seg16AccY75 rho : Seg16.F)⟩
      ⟨(rho 16510 : Seg16.F), (rho 16511 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung74

theorem seg16_rows75 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3940 rho ∧ Seg16.relationRow3941 rho ∧ Seg16.relationRow3942 rho ∧ Seg16.relationRow3943 rho ∧ Seg16.relationRow3944 rho ∧ Seg16.relationRow3945 rho ∧ Seg16.relationRow3946 rho ∧ Seg16.relationRow3947 rho ∧ Seg16.relationRow3948 rho ∧ Seg16.relationRow3949 rho ∧ Seg16.relationRow3950 rho ∧ Seg16.relationRow3951 rho ∧ Seg16.relationRow3952 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3940, r3941, r3942, r3943, r3944, r3945, r3946, r3947, r3948, r3949, r3950, r3951, r3952, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3940, r3941, r3942, r3943, r3944, r3945, r3946, r3947, r3948, r3949, r3950, r3951, r3952⟩

theorem seg16_rung75 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15367 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX75 rho : Seg16.F), (seg16AccY75 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16510 : Seg16.F), (rho 16511 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX75 rho : Seg16.F), (seg16AccY75 rho : Seg16.F)⟩
        ⟨(rho 16510 : Seg16.F), (rho 16511 : Seg16.F)⟩
        ⟨(seg16AccX76 rho : Seg16.F), (seg16AccY76 rho : Seg16.F)⟩
        ⟨(rho 16523 : Seg16.F), (rho 16524 : Seg16.F)⟩ := by
  obtain ⟨r3940, r3941, r3942, r3943, r3944, r3945, r3946, r3947, r3948, r3949, r3950, r3951, r3952⟩ := seg16_rows75 rho h
  unfold Seg16.relationRow3940 at r3940
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3940
  unfold Seg16.relationRow3941 at r3941
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3941
  unfold Seg16.relationRow3942 at r3942
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3942
  unfold Seg16.relationRow3943 at r3943
  unfold Seg16.relationRow3944 at r3944
  unfold Seg16.relationRow3945 at r3945
  unfold Seg16.relationRow3946 at r3946
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3946
  unfold Seg16.relationRow3947 at r3947
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3947
  unfold Seg16.relationRow3948 at r3948
  unfold Seg16.relationRow3949 at r3949
  unfold Seg16.relationRow3950 at r3950
  unfold Seg16.relationRow3951 at r3951
  unfold Seg16.relationRow3952 at r3952
  have hrung75 (bit : Bool) (hbit : rho 15367 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX75 rho : Seg16.F), (seg16AccY75 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16510 : Seg16.F), (rho 16511 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX75 rho : Seg16.F), (seg16AccY75 rho : Seg16.F)⟩
        ⟨(rho 16510 : Seg16.F), (rho 16511 : Seg16.F)⟩
        ⟨(seg16AccX76 rho : Seg16.F), (seg16AccY76 rho : Seg16.F)⟩
        ⟨(rho 16523 : Seg16.F), (rho 16524 : Seg16.F)⟩ := by
    have hnextx : seg16AccX76 rho = seg16AccX75 rho + rho 16518 := by
      unfold seg16AccX76 seg16AccX75
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 75]
      ring
    have hnexty : seg16AccY76 rho = seg16AccY75 rho + rho 16519 := by
      unfold seg16AccY76 seg16AccY75
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 75]
      ring
    have ha0 : (rho 16510 + rho 16511) * (seg16AccX75 rho + seg16AccY75 rho) = rho 16512 := by
      unfold seg16AccX75 seg16AccY75
      linear_combination r3940
    have ha1 : rho 16511 * seg16AccX75 rho = rho 16513 := by
      unfold seg16AccX75
      linear_combination r3941
    have ha2 : rho 16510 * seg16AccY75 rho = rho 16514 := by
      unfold seg16AccY75
      linear_combination r3942
    have ha3 : 3021 * rho 16513 * rho 16514 = rho 16515 := by
      linear_combination r3943
    have ha4 : rho 16516 * (1 + rho 16515) = rho 16513 + rho 16514 := by
      linear_combination r3944
    have ha5 : rho 16517 * (1 - rho 16515) = rho 16512 - rho 16513 - rho 16514 := by
      linear_combination r3945
    have haddx :
        rho 16516 * (1 + 3021 * (rho 16511 * seg16AccX75 rho) * (rho 16510 * seg16AccY75 rho)) =
          rho 16511 * seg16AccX75 rho + rho 16510 * seg16AccY75 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16517 * (1 - 3021 * (rho 16511 * seg16AccX75 rho) * (rho 16510 * seg16AccY75 rho)) =
          (-1) * (rho 16511 * seg16AccX75 rho) - rho 16510 * seg16AccY75 rho +
            (seg16AccY75 rho - seg16AccX75 rho * (-1)) * (rho 16510 + rho 16511) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16517 * (1 - rho 16515) = rho 16512 - rho 16513 - rho 16514 := ha5
        _ = (-1) * rho 16513 - rho 16514 + (seg16AccY75 rho - seg16AccX75 rho * (-1)) * (rho 16510 + rho 16511) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX76 rho = seg16AccX75 rho - Bool.toZMod bit * (seg16AccX75 rho - rho 16516) := by
      have hd : rho 16518 = Bool.toZMod bit * (rho 16516 - seg16AccX75 rho) := by
        rw [← hbit]
        unfold seg16AccX75
        linear_combination -r3946
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY76 rho = seg16AccY75 rho - Bool.toZMod bit * (seg16AccY75 rho - rho 16517) := by
      have hd : rho 16519 = Bool.toZMod bit * (rho 16517 - seg16AccY75 rho) := by
        rw [← hbit]
        unfold seg16AccY75
        linear_combination -r3947
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16510 * rho 16511 = rho 16520 := by linear_combination r3948
    have hd1 : rho 16510 * rho 16510 = rho 16521 := by linear_combination r3949
    have hd2 : rho 16511 * rho 16511 = rho 16522 := by linear_combination r3950
    have hd3 : rho 16523 * (rho 16511 * rho 16511 + rho 16510 * rho 16510 * (-1)) = 2 * (rho 16510 * rho 16511) := by
      rw [hd0, hd1, hd2]
      linear_combination r3951
    have hd4 : rho 16524 * (2 - (rho 16511 * rho 16511 + rho 16510 * rho 16510 * (-1))) = rho 16511 * rho 16511 - rho 16510 * rho 16510 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3952
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX75 rho : Seg16.F), (seg16AccY75 rho : Seg16.F)⟩
      ⟨(rho 16510 : Seg16.F), (rho 16511 : Seg16.F)⟩
      ⟨(rho 16516 : Seg16.F), (rho 16517 : Seg16.F)⟩
      ⟨(seg16AccX76 rho : Seg16.F), (seg16AccY76 rho : Seg16.F)⟩
      ⟨(rho 16523 : Seg16.F), (rho 16524 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung75

theorem seg16_rows76 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3953 rho ∧ Seg16.relationRow3954 rho ∧ Seg16.relationRow3955 rho ∧ Seg16.relationRow3956 rho ∧ Seg16.relationRow3957 rho ∧ Seg16.relationRow3958 rho ∧ Seg16.relationRow3959 rho ∧ Seg16.relationRow3960 rho ∧ Seg16.relationRow3961 rho ∧ Seg16.relationRow3962 rho ∧ Seg16.relationRow3963 rho ∧ Seg16.relationRow3964 rho ∧ Seg16.relationRow3965 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3953, r3954, r3955, r3956, r3957, r3958, r3959, r3960, r3961, r3962, r3963, r3964, r3965, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3953, r3954, r3955, r3956, r3957, r3958, r3959, r3960, r3961, r3962, r3963, r3964, r3965⟩

theorem seg16_rung76 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15368 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX76 rho : Seg16.F), (seg16AccY76 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16523 : Seg16.F), (rho 16524 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX76 rho : Seg16.F), (seg16AccY76 rho : Seg16.F)⟩
        ⟨(rho 16523 : Seg16.F), (rho 16524 : Seg16.F)⟩
        ⟨(seg16AccX77 rho : Seg16.F), (seg16AccY77 rho : Seg16.F)⟩
        ⟨(rho 16536 : Seg16.F), (rho 16537 : Seg16.F)⟩ := by
  obtain ⟨r3953, r3954, r3955, r3956, r3957, r3958, r3959, r3960, r3961, r3962, r3963, r3964, r3965⟩ := seg16_rows76 rho h
  unfold Seg16.relationRow3953 at r3953
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3953
  unfold Seg16.relationRow3954 at r3954
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3954
  unfold Seg16.relationRow3955 at r3955
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3955
  unfold Seg16.relationRow3956 at r3956
  unfold Seg16.relationRow3957 at r3957
  unfold Seg16.relationRow3958 at r3958
  unfold Seg16.relationRow3959 at r3959
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3959
  unfold Seg16.relationRow3960 at r3960
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3960
  unfold Seg16.relationRow3961 at r3961
  unfold Seg16.relationRow3962 at r3962
  unfold Seg16.relationRow3963 at r3963
  unfold Seg16.relationRow3964 at r3964
  unfold Seg16.relationRow3965 at r3965
  have hrung76 (bit : Bool) (hbit : rho 15368 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX76 rho : Seg16.F), (seg16AccY76 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16523 : Seg16.F), (rho 16524 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX76 rho : Seg16.F), (seg16AccY76 rho : Seg16.F)⟩
        ⟨(rho 16523 : Seg16.F), (rho 16524 : Seg16.F)⟩
        ⟨(seg16AccX77 rho : Seg16.F), (seg16AccY77 rho : Seg16.F)⟩
        ⟨(rho 16536 : Seg16.F), (rho 16537 : Seg16.F)⟩ := by
    have hnextx : seg16AccX77 rho = seg16AccX76 rho + rho 16531 := by
      unfold seg16AccX77 seg16AccX76
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 76]
      ring
    have hnexty : seg16AccY77 rho = seg16AccY76 rho + rho 16532 := by
      unfold seg16AccY77 seg16AccY76
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 76]
      ring
    have ha0 : (rho 16523 + rho 16524) * (seg16AccX76 rho + seg16AccY76 rho) = rho 16525 := by
      unfold seg16AccX76 seg16AccY76
      linear_combination r3953
    have ha1 : rho 16524 * seg16AccX76 rho = rho 16526 := by
      unfold seg16AccX76
      linear_combination r3954
    have ha2 : rho 16523 * seg16AccY76 rho = rho 16527 := by
      unfold seg16AccY76
      linear_combination r3955
    have ha3 : 3021 * rho 16526 * rho 16527 = rho 16528 := by
      linear_combination r3956
    have ha4 : rho 16529 * (1 + rho 16528) = rho 16526 + rho 16527 := by
      linear_combination r3957
    have ha5 : rho 16530 * (1 - rho 16528) = rho 16525 - rho 16526 - rho 16527 := by
      linear_combination r3958
    have haddx :
        rho 16529 * (1 + 3021 * (rho 16524 * seg16AccX76 rho) * (rho 16523 * seg16AccY76 rho)) =
          rho 16524 * seg16AccX76 rho + rho 16523 * seg16AccY76 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16530 * (1 - 3021 * (rho 16524 * seg16AccX76 rho) * (rho 16523 * seg16AccY76 rho)) =
          (-1) * (rho 16524 * seg16AccX76 rho) - rho 16523 * seg16AccY76 rho +
            (seg16AccY76 rho - seg16AccX76 rho * (-1)) * (rho 16523 + rho 16524) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16530 * (1 - rho 16528) = rho 16525 - rho 16526 - rho 16527 := ha5
        _ = (-1) * rho 16526 - rho 16527 + (seg16AccY76 rho - seg16AccX76 rho * (-1)) * (rho 16523 + rho 16524) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX77 rho = seg16AccX76 rho - Bool.toZMod bit * (seg16AccX76 rho - rho 16529) := by
      have hd : rho 16531 = Bool.toZMod bit * (rho 16529 - seg16AccX76 rho) := by
        rw [← hbit]
        unfold seg16AccX76
        linear_combination -r3959
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY77 rho = seg16AccY76 rho - Bool.toZMod bit * (seg16AccY76 rho - rho 16530) := by
      have hd : rho 16532 = Bool.toZMod bit * (rho 16530 - seg16AccY76 rho) := by
        rw [← hbit]
        unfold seg16AccY76
        linear_combination -r3960
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16523 * rho 16524 = rho 16533 := by linear_combination r3961
    have hd1 : rho 16523 * rho 16523 = rho 16534 := by linear_combination r3962
    have hd2 : rho 16524 * rho 16524 = rho 16535 := by linear_combination r3963
    have hd3 : rho 16536 * (rho 16524 * rho 16524 + rho 16523 * rho 16523 * (-1)) = 2 * (rho 16523 * rho 16524) := by
      rw [hd0, hd1, hd2]
      linear_combination r3964
    have hd4 : rho 16537 * (2 - (rho 16524 * rho 16524 + rho 16523 * rho 16523 * (-1))) = rho 16524 * rho 16524 - rho 16523 * rho 16523 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3965
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX76 rho : Seg16.F), (seg16AccY76 rho : Seg16.F)⟩
      ⟨(rho 16523 : Seg16.F), (rho 16524 : Seg16.F)⟩
      ⟨(rho 16529 : Seg16.F), (rho 16530 : Seg16.F)⟩
      ⟨(seg16AccX77 rho : Seg16.F), (seg16AccY77 rho : Seg16.F)⟩
      ⟨(rho 16536 : Seg16.F), (rho 16537 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung76

theorem seg16_hstep_c6 (rho : Nat -> Seg16.F) (h : Seg16.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (15292 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 66 ≤ i → i < 77 →
      EdwardsBridge.onCurve (seg16LadderAccState rho i) →
      EdwardsBridge.onCurve (seg16LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg16LadderAccState rho i) (seg16LadderCurState rho i)
        (seg16LadderAccState rho (i + 1)) (seg16LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg16_rung66 rho h bits[66]! (hbitAt 66 (by omega)) hacc hcur
  · exact seg16_rung67 rho h bits[67]! (hbitAt 67 (by omega)) hacc hcur
  · exact seg16_rung68 rho h bits[68]! (hbitAt 68 (by omega)) hacc hcur
  · exact seg16_rung69 rho h bits[69]! (hbitAt 69 (by omega)) hacc hcur
  · exact seg16_rung70 rho h bits[70]! (hbitAt 70 (by omega)) hacc hcur
  · exact seg16_rung71 rho h bits[71]! (hbitAt 71 (by omega)) hacc hcur
  · exact seg16_rung72 rho h bits[72]! (hbitAt 72 (by omega)) hacc hcur
  · exact seg16_rung73 rho h bits[73]! (hbitAt 73 (by omega)) hacc hcur
  · exact seg16_rung74 rho h bits[74]! (hbitAt 74 (by omega)) hacc hcur
  · exact seg16_rung75 rho h bits[75]! (hbitAt 75 (by omega)) hacc hcur
  · exact seg16_rung76 rho h bits[76]! (hbitAt 76 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
