import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg34_rows66 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3823 rho ∧ Seg34.relationRow3824 rho ∧ Seg34.relationRow3825 rho ∧ Seg34.relationRow3826 rho ∧ Seg34.relationRow3827 rho ∧ Seg34.relationRow3828 rho ∧ Seg34.relationRow3829 rho ∧ Seg34.relationRow3830 rho ∧ Seg34.relationRow3831 rho ∧ Seg34.relationRow3832 rho ∧ Seg34.relationRow3833 rho ∧ Seg34.relationRow3834 rho ∧ Seg34.relationRow3835 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3823, r3824, r3825, r3826, r3827, r3828, r3829, r3830, r3831, r3832, r3833, r3834, r3835, _, _, _, _⟩
  exact ⟨r3823, r3824, r3825, r3826, r3827, r3828, r3829, r3830, r3831, r3832, r3833, r3834, r3835⟩

theorem seg34_rung66 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34058 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX66 rho : Seg34.F), (seg34AccY66 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35093 : Seg34.F), (rho 35094 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX66 rho : Seg34.F), (seg34AccY66 rho : Seg34.F)⟩
        ⟨(rho 35093 : Seg34.F), (rho 35094 : Seg34.F)⟩
        ⟨(seg34AccX67 rho : Seg34.F), (seg34AccY67 rho : Seg34.F)⟩
        ⟨(rho 35106 : Seg34.F), (rho 35107 : Seg34.F)⟩ := by
  obtain ⟨r3823, r3824, r3825, r3826, r3827, r3828, r3829, r3830, r3831, r3832, r3833, r3834, r3835⟩ := seg34_rows66 rho h
  unfold Seg34.relationRow3823 at r3823
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3823
  unfold Seg34.relationRow3824 at r3824
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3824
  unfold Seg34.relationRow3825 at r3825
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3825
  unfold Seg34.relationRow3826 at r3826
  unfold Seg34.relationRow3827 at r3827
  unfold Seg34.relationRow3828 at r3828
  unfold Seg34.relationRow3829 at r3829
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3829
  unfold Seg34.relationRow3830 at r3830
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3830
  unfold Seg34.relationRow3831 at r3831
  unfold Seg34.relationRow3832 at r3832
  unfold Seg34.relationRow3833 at r3833
  unfold Seg34.relationRow3834 at r3834
  unfold Seg34.relationRow3835 at r3835
  have hrung66 (bit : Bool) (hbit : rho 34058 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX66 rho : Seg34.F), (seg34AccY66 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35093 : Seg34.F), (rho 35094 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX66 rho : Seg34.F), (seg34AccY66 rho : Seg34.F)⟩
        ⟨(rho 35093 : Seg34.F), (rho 35094 : Seg34.F)⟩
        ⟨(seg34AccX67 rho : Seg34.F), (seg34AccY67 rho : Seg34.F)⟩
        ⟨(rho 35106 : Seg34.F), (rho 35107 : Seg34.F)⟩ := by
    have hnextx : seg34AccX67 rho = seg34AccX66 rho + rho 35101 := by
      unfold seg34AccX67 seg34AccX66
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 66]
      ring
    have hnexty : seg34AccY67 rho = seg34AccY66 rho + rho 35102 := by
      unfold seg34AccY67 seg34AccY66
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 66]
      ring
    have ha0 : (rho 35093 + rho 35094) * (seg34AccX66 rho + seg34AccY66 rho) = rho 35095 := by
      unfold seg34AccX66 seg34AccY66
      linear_combination r3823
    have ha1 : rho 35094 * seg34AccX66 rho = rho 35096 := by
      unfold seg34AccX66
      linear_combination r3824
    have ha2 : rho 35093 * seg34AccY66 rho = rho 35097 := by
      unfold seg34AccY66
      linear_combination r3825
    have ha3 : 3021 * rho 35096 * rho 35097 = rho 35098 := by
      linear_combination r3826
    have ha4 : rho 35099 * (1 + rho 35098) = rho 35096 + rho 35097 := by
      linear_combination r3827
    have ha5 : rho 35100 * (1 - rho 35098) = rho 35095 - rho 35096 - rho 35097 := by
      linear_combination r3828
    have haddx :
        rho 35099 * (1 + 3021 * (rho 35094 * seg34AccX66 rho) * (rho 35093 * seg34AccY66 rho)) =
          rho 35094 * seg34AccX66 rho + rho 35093 * seg34AccY66 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35100 * (1 - 3021 * (rho 35094 * seg34AccX66 rho) * (rho 35093 * seg34AccY66 rho)) =
          (-1) * (rho 35094 * seg34AccX66 rho) - rho 35093 * seg34AccY66 rho +
            (seg34AccY66 rho - seg34AccX66 rho * (-1)) * (rho 35093 + rho 35094) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35100 * (1 - rho 35098) = rho 35095 - rho 35096 - rho 35097 := ha5
        _ = (-1) * rho 35096 - rho 35097 + (seg34AccY66 rho - seg34AccX66 rho * (-1)) * (rho 35093 + rho 35094) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX67 rho = seg34AccX66 rho - Bool.toZMod bit * (seg34AccX66 rho - rho 35099) := by
      have hd : rho 35101 = Bool.toZMod bit * (rho 35099 - seg34AccX66 rho) := by
        rw [← hbit]
        unfold seg34AccX66
        linear_combination -r3829
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY67 rho = seg34AccY66 rho - Bool.toZMod bit * (seg34AccY66 rho - rho 35100) := by
      have hd : rho 35102 = Bool.toZMod bit * (rho 35100 - seg34AccY66 rho) := by
        rw [← hbit]
        unfold seg34AccY66
        linear_combination -r3830
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35093 * rho 35094 = rho 35103 := by linear_combination r3831
    have hd1 : rho 35093 * rho 35093 = rho 35104 := by linear_combination r3832
    have hd2 : rho 35094 * rho 35094 = rho 35105 := by linear_combination r3833
    have hd3 : rho 35106 * (rho 35094 * rho 35094 + rho 35093 * rho 35093 * (-1)) = 2 * (rho 35093 * rho 35094) := by
      rw [hd0, hd1, hd2]
      linear_combination r3834
    have hd4 : rho 35107 * (2 - (rho 35094 * rho 35094 + rho 35093 * rho 35093 * (-1))) = rho 35094 * rho 35094 - rho 35093 * rho 35093 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3835
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX66 rho : Seg34.F), (seg34AccY66 rho : Seg34.F)⟩
      ⟨(rho 35093 : Seg34.F), (rho 35094 : Seg34.F)⟩
      ⟨(rho 35099 : Seg34.F), (rho 35100 : Seg34.F)⟩
      ⟨(seg34AccX67 rho : Seg34.F), (seg34AccY67 rho : Seg34.F)⟩
      ⟨(rho 35106 : Seg34.F), (rho 35107 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung66

theorem seg34_rows67 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3836 rho ∧ Seg34.relationRow3837 rho ∧ Seg34.relationRow3838 rho ∧ Seg34.relationRow3839 rho ∧ Seg34.relationRow3840 rho ∧ Seg34.relationRow3841 rho ∧ Seg34.relationRow3842 rho ∧ Seg34.relationRow3843 rho ∧ Seg34.relationRow3844 rho ∧ Seg34.relationRow3845 rho ∧ Seg34.relationRow3846 rho ∧ Seg34.relationRow3847 rho ∧ Seg34.relationRow3848 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3836, r3837, r3838, r3839⟩
  unfold Seg34.relationPart48 at p48
  rcases p48 with ⟨r3840, r3841, r3842, r3843, r3844, r3845, r3846, r3847, r3848, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3836, r3837, r3838, r3839, r3840, r3841, r3842, r3843, r3844, r3845, r3846, r3847, r3848⟩

theorem seg34_rung67 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34059 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX67 rho : Seg34.F), (seg34AccY67 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35106 : Seg34.F), (rho 35107 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX67 rho : Seg34.F), (seg34AccY67 rho : Seg34.F)⟩
        ⟨(rho 35106 : Seg34.F), (rho 35107 : Seg34.F)⟩
        ⟨(seg34AccX68 rho : Seg34.F), (seg34AccY68 rho : Seg34.F)⟩
        ⟨(rho 35119 : Seg34.F), (rho 35120 : Seg34.F)⟩ := by
  obtain ⟨r3836, r3837, r3838, r3839, r3840, r3841, r3842, r3843, r3844, r3845, r3846, r3847, r3848⟩ := seg34_rows67 rho h
  unfold Seg34.relationRow3836 at r3836
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3836
  unfold Seg34.relationRow3837 at r3837
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3837
  unfold Seg34.relationRow3838 at r3838
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3838
  unfold Seg34.relationRow3839 at r3839
  unfold Seg34.relationRow3840 at r3840
  unfold Seg34.relationRow3841 at r3841
  unfold Seg34.relationRow3842 at r3842
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3842
  unfold Seg34.relationRow3843 at r3843
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3843
  unfold Seg34.relationRow3844 at r3844
  unfold Seg34.relationRow3845 at r3845
  unfold Seg34.relationRow3846 at r3846
  unfold Seg34.relationRow3847 at r3847
  unfold Seg34.relationRow3848 at r3848
  have hrung67 (bit : Bool) (hbit : rho 34059 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX67 rho : Seg34.F), (seg34AccY67 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35106 : Seg34.F), (rho 35107 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX67 rho : Seg34.F), (seg34AccY67 rho : Seg34.F)⟩
        ⟨(rho 35106 : Seg34.F), (rho 35107 : Seg34.F)⟩
        ⟨(seg34AccX68 rho : Seg34.F), (seg34AccY68 rho : Seg34.F)⟩
        ⟨(rho 35119 : Seg34.F), (rho 35120 : Seg34.F)⟩ := by
    have hnextx : seg34AccX68 rho = seg34AccX67 rho + rho 35114 := by
      unfold seg34AccX68 seg34AccX67
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 67]
      ring
    have hnexty : seg34AccY68 rho = seg34AccY67 rho + rho 35115 := by
      unfold seg34AccY68 seg34AccY67
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 67]
      ring
    have ha0 : (rho 35106 + rho 35107) * (seg34AccX67 rho + seg34AccY67 rho) = rho 35108 := by
      unfold seg34AccX67 seg34AccY67
      linear_combination r3836
    have ha1 : rho 35107 * seg34AccX67 rho = rho 35109 := by
      unfold seg34AccX67
      linear_combination r3837
    have ha2 : rho 35106 * seg34AccY67 rho = rho 35110 := by
      unfold seg34AccY67
      linear_combination r3838
    have ha3 : 3021 * rho 35109 * rho 35110 = rho 35111 := by
      linear_combination r3839
    have ha4 : rho 35112 * (1 + rho 35111) = rho 35109 + rho 35110 := by
      linear_combination r3840
    have ha5 : rho 35113 * (1 - rho 35111) = rho 35108 - rho 35109 - rho 35110 := by
      linear_combination r3841
    have haddx :
        rho 35112 * (1 + 3021 * (rho 35107 * seg34AccX67 rho) * (rho 35106 * seg34AccY67 rho)) =
          rho 35107 * seg34AccX67 rho + rho 35106 * seg34AccY67 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35113 * (1 - 3021 * (rho 35107 * seg34AccX67 rho) * (rho 35106 * seg34AccY67 rho)) =
          (-1) * (rho 35107 * seg34AccX67 rho) - rho 35106 * seg34AccY67 rho +
            (seg34AccY67 rho - seg34AccX67 rho * (-1)) * (rho 35106 + rho 35107) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35113 * (1 - rho 35111) = rho 35108 - rho 35109 - rho 35110 := ha5
        _ = (-1) * rho 35109 - rho 35110 + (seg34AccY67 rho - seg34AccX67 rho * (-1)) * (rho 35106 + rho 35107) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX68 rho = seg34AccX67 rho - Bool.toZMod bit * (seg34AccX67 rho - rho 35112) := by
      have hd : rho 35114 = Bool.toZMod bit * (rho 35112 - seg34AccX67 rho) := by
        rw [← hbit]
        unfold seg34AccX67
        linear_combination -r3842
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY68 rho = seg34AccY67 rho - Bool.toZMod bit * (seg34AccY67 rho - rho 35113) := by
      have hd : rho 35115 = Bool.toZMod bit * (rho 35113 - seg34AccY67 rho) := by
        rw [← hbit]
        unfold seg34AccY67
        linear_combination -r3843
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35106 * rho 35107 = rho 35116 := by linear_combination r3844
    have hd1 : rho 35106 * rho 35106 = rho 35117 := by linear_combination r3845
    have hd2 : rho 35107 * rho 35107 = rho 35118 := by linear_combination r3846
    have hd3 : rho 35119 * (rho 35107 * rho 35107 + rho 35106 * rho 35106 * (-1)) = 2 * (rho 35106 * rho 35107) := by
      rw [hd0, hd1, hd2]
      linear_combination r3847
    have hd4 : rho 35120 * (2 - (rho 35107 * rho 35107 + rho 35106 * rho 35106 * (-1))) = rho 35107 * rho 35107 - rho 35106 * rho 35106 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3848
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX67 rho : Seg34.F), (seg34AccY67 rho : Seg34.F)⟩
      ⟨(rho 35106 : Seg34.F), (rho 35107 : Seg34.F)⟩
      ⟨(rho 35112 : Seg34.F), (rho 35113 : Seg34.F)⟩
      ⟨(seg34AccX68 rho : Seg34.F), (seg34AccY68 rho : Seg34.F)⟩
      ⟨(rho 35119 : Seg34.F), (rho 35120 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung67

theorem seg34_rows68 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3849 rho ∧ Seg34.relationRow3850 rho ∧ Seg34.relationRow3851 rho ∧ Seg34.relationRow3852 rho ∧ Seg34.relationRow3853 rho ∧ Seg34.relationRow3854 rho ∧ Seg34.relationRow3855 rho ∧ Seg34.relationRow3856 rho ∧ Seg34.relationRow3857 rho ∧ Seg34.relationRow3858 rho ∧ Seg34.relationRow3859 rho ∧ Seg34.relationRow3860 rho ∧ Seg34.relationRow3861 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, r3849, r3850, r3851, r3852, r3853, r3854, r3855, r3856, r3857, r3858, r3859, r3860, r3861, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3849, r3850, r3851, r3852, r3853, r3854, r3855, r3856, r3857, r3858, r3859, r3860, r3861⟩

theorem seg34_rung68 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34060 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX68 rho : Seg34.F), (seg34AccY68 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35119 : Seg34.F), (rho 35120 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX68 rho : Seg34.F), (seg34AccY68 rho : Seg34.F)⟩
        ⟨(rho 35119 : Seg34.F), (rho 35120 : Seg34.F)⟩
        ⟨(seg34AccX69 rho : Seg34.F), (seg34AccY69 rho : Seg34.F)⟩
        ⟨(rho 35132 : Seg34.F), (rho 35133 : Seg34.F)⟩ := by
  obtain ⟨r3849, r3850, r3851, r3852, r3853, r3854, r3855, r3856, r3857, r3858, r3859, r3860, r3861⟩ := seg34_rows68 rho h
  unfold Seg34.relationRow3849 at r3849
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3849
  unfold Seg34.relationRow3850 at r3850
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3850
  unfold Seg34.relationRow3851 at r3851
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3851
  unfold Seg34.relationRow3852 at r3852
  unfold Seg34.relationRow3853 at r3853
  unfold Seg34.relationRow3854 at r3854
  unfold Seg34.relationRow3855 at r3855
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3855
  unfold Seg34.relationRow3856 at r3856
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3856
  unfold Seg34.relationRow3857 at r3857
  unfold Seg34.relationRow3858 at r3858
  unfold Seg34.relationRow3859 at r3859
  unfold Seg34.relationRow3860 at r3860
  unfold Seg34.relationRow3861 at r3861
  have hrung68 (bit : Bool) (hbit : rho 34060 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX68 rho : Seg34.F), (seg34AccY68 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35119 : Seg34.F), (rho 35120 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX68 rho : Seg34.F), (seg34AccY68 rho : Seg34.F)⟩
        ⟨(rho 35119 : Seg34.F), (rho 35120 : Seg34.F)⟩
        ⟨(seg34AccX69 rho : Seg34.F), (seg34AccY69 rho : Seg34.F)⟩
        ⟨(rho 35132 : Seg34.F), (rho 35133 : Seg34.F)⟩ := by
    have hnextx : seg34AccX69 rho = seg34AccX68 rho + rho 35127 := by
      unfold seg34AccX69 seg34AccX68
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 68]
      ring
    have hnexty : seg34AccY69 rho = seg34AccY68 rho + rho 35128 := by
      unfold seg34AccY69 seg34AccY68
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 68]
      ring
    have ha0 : (rho 35119 + rho 35120) * (seg34AccX68 rho + seg34AccY68 rho) = rho 35121 := by
      unfold seg34AccX68 seg34AccY68
      linear_combination r3849
    have ha1 : rho 35120 * seg34AccX68 rho = rho 35122 := by
      unfold seg34AccX68
      linear_combination r3850
    have ha2 : rho 35119 * seg34AccY68 rho = rho 35123 := by
      unfold seg34AccY68
      linear_combination r3851
    have ha3 : 3021 * rho 35122 * rho 35123 = rho 35124 := by
      linear_combination r3852
    have ha4 : rho 35125 * (1 + rho 35124) = rho 35122 + rho 35123 := by
      linear_combination r3853
    have ha5 : rho 35126 * (1 - rho 35124) = rho 35121 - rho 35122 - rho 35123 := by
      linear_combination r3854
    have haddx :
        rho 35125 * (1 + 3021 * (rho 35120 * seg34AccX68 rho) * (rho 35119 * seg34AccY68 rho)) =
          rho 35120 * seg34AccX68 rho + rho 35119 * seg34AccY68 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35126 * (1 - 3021 * (rho 35120 * seg34AccX68 rho) * (rho 35119 * seg34AccY68 rho)) =
          (-1) * (rho 35120 * seg34AccX68 rho) - rho 35119 * seg34AccY68 rho +
            (seg34AccY68 rho - seg34AccX68 rho * (-1)) * (rho 35119 + rho 35120) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35126 * (1 - rho 35124) = rho 35121 - rho 35122 - rho 35123 := ha5
        _ = (-1) * rho 35122 - rho 35123 + (seg34AccY68 rho - seg34AccX68 rho * (-1)) * (rho 35119 + rho 35120) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX69 rho = seg34AccX68 rho - Bool.toZMod bit * (seg34AccX68 rho - rho 35125) := by
      have hd : rho 35127 = Bool.toZMod bit * (rho 35125 - seg34AccX68 rho) := by
        rw [← hbit]
        unfold seg34AccX68
        linear_combination -r3855
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY69 rho = seg34AccY68 rho - Bool.toZMod bit * (seg34AccY68 rho - rho 35126) := by
      have hd : rho 35128 = Bool.toZMod bit * (rho 35126 - seg34AccY68 rho) := by
        rw [← hbit]
        unfold seg34AccY68
        linear_combination -r3856
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35119 * rho 35120 = rho 35129 := by linear_combination r3857
    have hd1 : rho 35119 * rho 35119 = rho 35130 := by linear_combination r3858
    have hd2 : rho 35120 * rho 35120 = rho 35131 := by linear_combination r3859
    have hd3 : rho 35132 * (rho 35120 * rho 35120 + rho 35119 * rho 35119 * (-1)) = 2 * (rho 35119 * rho 35120) := by
      rw [hd0, hd1, hd2]
      linear_combination r3860
    have hd4 : rho 35133 * (2 - (rho 35120 * rho 35120 + rho 35119 * rho 35119 * (-1))) = rho 35120 * rho 35120 - rho 35119 * rho 35119 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3861
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX68 rho : Seg34.F), (seg34AccY68 rho : Seg34.F)⟩
      ⟨(rho 35119 : Seg34.F), (rho 35120 : Seg34.F)⟩
      ⟨(rho 35125 : Seg34.F), (rho 35126 : Seg34.F)⟩
      ⟨(seg34AccX69 rho : Seg34.F), (seg34AccY69 rho : Seg34.F)⟩
      ⟨(rho 35132 : Seg34.F), (rho 35133 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung68

theorem seg34_rows69 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3862 rho ∧ Seg34.relationRow3863 rho ∧ Seg34.relationRow3864 rho ∧ Seg34.relationRow3865 rho ∧ Seg34.relationRow3866 rho ∧ Seg34.relationRow3867 rho ∧ Seg34.relationRow3868 rho ∧ Seg34.relationRow3869 rho ∧ Seg34.relationRow3870 rho ∧ Seg34.relationRow3871 rho ∧ Seg34.relationRow3872 rho ∧ Seg34.relationRow3873 rho ∧ Seg34.relationRow3874 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3862, r3863, r3864, r3865, r3866, r3867, r3868, r3869, r3870, r3871, r3872, r3873, r3874, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3862, r3863, r3864, r3865, r3866, r3867, r3868, r3869, r3870, r3871, r3872, r3873, r3874⟩

theorem seg34_rung69 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34061 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX69 rho : Seg34.F), (seg34AccY69 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35132 : Seg34.F), (rho 35133 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX69 rho : Seg34.F), (seg34AccY69 rho : Seg34.F)⟩
        ⟨(rho 35132 : Seg34.F), (rho 35133 : Seg34.F)⟩
        ⟨(seg34AccX70 rho : Seg34.F), (seg34AccY70 rho : Seg34.F)⟩
        ⟨(rho 35145 : Seg34.F), (rho 35146 : Seg34.F)⟩ := by
  obtain ⟨r3862, r3863, r3864, r3865, r3866, r3867, r3868, r3869, r3870, r3871, r3872, r3873, r3874⟩ := seg34_rows69 rho h
  unfold Seg34.relationRow3862 at r3862
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3862
  unfold Seg34.relationRow3863 at r3863
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3863
  unfold Seg34.relationRow3864 at r3864
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3864
  unfold Seg34.relationRow3865 at r3865
  unfold Seg34.relationRow3866 at r3866
  unfold Seg34.relationRow3867 at r3867
  unfold Seg34.relationRow3868 at r3868
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3868
  unfold Seg34.relationRow3869 at r3869
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3869
  unfold Seg34.relationRow3870 at r3870
  unfold Seg34.relationRow3871 at r3871
  unfold Seg34.relationRow3872 at r3872
  unfold Seg34.relationRow3873 at r3873
  unfold Seg34.relationRow3874 at r3874
  have hrung69 (bit : Bool) (hbit : rho 34061 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX69 rho : Seg34.F), (seg34AccY69 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35132 : Seg34.F), (rho 35133 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX69 rho : Seg34.F), (seg34AccY69 rho : Seg34.F)⟩
        ⟨(rho 35132 : Seg34.F), (rho 35133 : Seg34.F)⟩
        ⟨(seg34AccX70 rho : Seg34.F), (seg34AccY70 rho : Seg34.F)⟩
        ⟨(rho 35145 : Seg34.F), (rho 35146 : Seg34.F)⟩ := by
    have hnextx : seg34AccX70 rho = seg34AccX69 rho + rho 35140 := by
      unfold seg34AccX70 seg34AccX69
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 69]
      ring
    have hnexty : seg34AccY70 rho = seg34AccY69 rho + rho 35141 := by
      unfold seg34AccY70 seg34AccY69
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 69]
      ring
    have ha0 : (rho 35132 + rho 35133) * (seg34AccX69 rho + seg34AccY69 rho) = rho 35134 := by
      unfold seg34AccX69 seg34AccY69
      linear_combination r3862
    have ha1 : rho 35133 * seg34AccX69 rho = rho 35135 := by
      unfold seg34AccX69
      linear_combination r3863
    have ha2 : rho 35132 * seg34AccY69 rho = rho 35136 := by
      unfold seg34AccY69
      linear_combination r3864
    have ha3 : 3021 * rho 35135 * rho 35136 = rho 35137 := by
      linear_combination r3865
    have ha4 : rho 35138 * (1 + rho 35137) = rho 35135 + rho 35136 := by
      linear_combination r3866
    have ha5 : rho 35139 * (1 - rho 35137) = rho 35134 - rho 35135 - rho 35136 := by
      linear_combination r3867
    have haddx :
        rho 35138 * (1 + 3021 * (rho 35133 * seg34AccX69 rho) * (rho 35132 * seg34AccY69 rho)) =
          rho 35133 * seg34AccX69 rho + rho 35132 * seg34AccY69 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35139 * (1 - 3021 * (rho 35133 * seg34AccX69 rho) * (rho 35132 * seg34AccY69 rho)) =
          (-1) * (rho 35133 * seg34AccX69 rho) - rho 35132 * seg34AccY69 rho +
            (seg34AccY69 rho - seg34AccX69 rho * (-1)) * (rho 35132 + rho 35133) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35139 * (1 - rho 35137) = rho 35134 - rho 35135 - rho 35136 := ha5
        _ = (-1) * rho 35135 - rho 35136 + (seg34AccY69 rho - seg34AccX69 rho * (-1)) * (rho 35132 + rho 35133) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX70 rho = seg34AccX69 rho - Bool.toZMod bit * (seg34AccX69 rho - rho 35138) := by
      have hd : rho 35140 = Bool.toZMod bit * (rho 35138 - seg34AccX69 rho) := by
        rw [← hbit]
        unfold seg34AccX69
        linear_combination -r3868
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY70 rho = seg34AccY69 rho - Bool.toZMod bit * (seg34AccY69 rho - rho 35139) := by
      have hd : rho 35141 = Bool.toZMod bit * (rho 35139 - seg34AccY69 rho) := by
        rw [← hbit]
        unfold seg34AccY69
        linear_combination -r3869
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35132 * rho 35133 = rho 35142 := by linear_combination r3870
    have hd1 : rho 35132 * rho 35132 = rho 35143 := by linear_combination r3871
    have hd2 : rho 35133 * rho 35133 = rho 35144 := by linear_combination r3872
    have hd3 : rho 35145 * (rho 35133 * rho 35133 + rho 35132 * rho 35132 * (-1)) = 2 * (rho 35132 * rho 35133) := by
      rw [hd0, hd1, hd2]
      linear_combination r3873
    have hd4 : rho 35146 * (2 - (rho 35133 * rho 35133 + rho 35132 * rho 35132 * (-1))) = rho 35133 * rho 35133 - rho 35132 * rho 35132 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3874
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX69 rho : Seg34.F), (seg34AccY69 rho : Seg34.F)⟩
      ⟨(rho 35132 : Seg34.F), (rho 35133 : Seg34.F)⟩
      ⟨(rho 35138 : Seg34.F), (rho 35139 : Seg34.F)⟩
      ⟨(seg34AccX70 rho : Seg34.F), (seg34AccY70 rho : Seg34.F)⟩
      ⟨(rho 35145 : Seg34.F), (rho 35146 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung69

theorem seg34_rows70 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3875 rho ∧ Seg34.relationRow3876 rho ∧ Seg34.relationRow3877 rho ∧ Seg34.relationRow3878 rho ∧ Seg34.relationRow3879 rho ∧ Seg34.relationRow3880 rho ∧ Seg34.relationRow3881 rho ∧ Seg34.relationRow3882 rho ∧ Seg34.relationRow3883 rho ∧ Seg34.relationRow3884 rho ∧ Seg34.relationRow3885 rho ∧ Seg34.relationRow3886 rho ∧ Seg34.relationRow3887 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3875, r3876, r3877, r3878, r3879, r3880, r3881, r3882, r3883, r3884, r3885, r3886, r3887, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3875, r3876, r3877, r3878, r3879, r3880, r3881, r3882, r3883, r3884, r3885, r3886, r3887⟩

theorem seg34_rung70 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34062 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX70 rho : Seg34.F), (seg34AccY70 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35145 : Seg34.F), (rho 35146 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX70 rho : Seg34.F), (seg34AccY70 rho : Seg34.F)⟩
        ⟨(rho 35145 : Seg34.F), (rho 35146 : Seg34.F)⟩
        ⟨(seg34AccX71 rho : Seg34.F), (seg34AccY71 rho : Seg34.F)⟩
        ⟨(rho 35158 : Seg34.F), (rho 35159 : Seg34.F)⟩ := by
  obtain ⟨r3875, r3876, r3877, r3878, r3879, r3880, r3881, r3882, r3883, r3884, r3885, r3886, r3887⟩ := seg34_rows70 rho h
  unfold Seg34.relationRow3875 at r3875
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3875
  unfold Seg34.relationRow3876 at r3876
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3876
  unfold Seg34.relationRow3877 at r3877
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3877
  unfold Seg34.relationRow3878 at r3878
  unfold Seg34.relationRow3879 at r3879
  unfold Seg34.relationRow3880 at r3880
  unfold Seg34.relationRow3881 at r3881
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3881
  unfold Seg34.relationRow3882 at r3882
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3882
  unfold Seg34.relationRow3883 at r3883
  unfold Seg34.relationRow3884 at r3884
  unfold Seg34.relationRow3885 at r3885
  unfold Seg34.relationRow3886 at r3886
  unfold Seg34.relationRow3887 at r3887
  have hrung70 (bit : Bool) (hbit : rho 34062 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX70 rho : Seg34.F), (seg34AccY70 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35145 : Seg34.F), (rho 35146 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX70 rho : Seg34.F), (seg34AccY70 rho : Seg34.F)⟩
        ⟨(rho 35145 : Seg34.F), (rho 35146 : Seg34.F)⟩
        ⟨(seg34AccX71 rho : Seg34.F), (seg34AccY71 rho : Seg34.F)⟩
        ⟨(rho 35158 : Seg34.F), (rho 35159 : Seg34.F)⟩ := by
    have hnextx : seg34AccX71 rho = seg34AccX70 rho + rho 35153 := by
      unfold seg34AccX71 seg34AccX70
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 70]
      ring
    have hnexty : seg34AccY71 rho = seg34AccY70 rho + rho 35154 := by
      unfold seg34AccY71 seg34AccY70
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 70]
      ring
    have ha0 : (rho 35145 + rho 35146) * (seg34AccX70 rho + seg34AccY70 rho) = rho 35147 := by
      unfold seg34AccX70 seg34AccY70
      linear_combination r3875
    have ha1 : rho 35146 * seg34AccX70 rho = rho 35148 := by
      unfold seg34AccX70
      linear_combination r3876
    have ha2 : rho 35145 * seg34AccY70 rho = rho 35149 := by
      unfold seg34AccY70
      linear_combination r3877
    have ha3 : 3021 * rho 35148 * rho 35149 = rho 35150 := by
      linear_combination r3878
    have ha4 : rho 35151 * (1 + rho 35150) = rho 35148 + rho 35149 := by
      linear_combination r3879
    have ha5 : rho 35152 * (1 - rho 35150) = rho 35147 - rho 35148 - rho 35149 := by
      linear_combination r3880
    have haddx :
        rho 35151 * (1 + 3021 * (rho 35146 * seg34AccX70 rho) * (rho 35145 * seg34AccY70 rho)) =
          rho 35146 * seg34AccX70 rho + rho 35145 * seg34AccY70 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35152 * (1 - 3021 * (rho 35146 * seg34AccX70 rho) * (rho 35145 * seg34AccY70 rho)) =
          (-1) * (rho 35146 * seg34AccX70 rho) - rho 35145 * seg34AccY70 rho +
            (seg34AccY70 rho - seg34AccX70 rho * (-1)) * (rho 35145 + rho 35146) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35152 * (1 - rho 35150) = rho 35147 - rho 35148 - rho 35149 := ha5
        _ = (-1) * rho 35148 - rho 35149 + (seg34AccY70 rho - seg34AccX70 rho * (-1)) * (rho 35145 + rho 35146) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX71 rho = seg34AccX70 rho - Bool.toZMod bit * (seg34AccX70 rho - rho 35151) := by
      have hd : rho 35153 = Bool.toZMod bit * (rho 35151 - seg34AccX70 rho) := by
        rw [← hbit]
        unfold seg34AccX70
        linear_combination -r3881
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY71 rho = seg34AccY70 rho - Bool.toZMod bit * (seg34AccY70 rho - rho 35152) := by
      have hd : rho 35154 = Bool.toZMod bit * (rho 35152 - seg34AccY70 rho) := by
        rw [← hbit]
        unfold seg34AccY70
        linear_combination -r3882
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35145 * rho 35146 = rho 35155 := by linear_combination r3883
    have hd1 : rho 35145 * rho 35145 = rho 35156 := by linear_combination r3884
    have hd2 : rho 35146 * rho 35146 = rho 35157 := by linear_combination r3885
    have hd3 : rho 35158 * (rho 35146 * rho 35146 + rho 35145 * rho 35145 * (-1)) = 2 * (rho 35145 * rho 35146) := by
      rw [hd0, hd1, hd2]
      linear_combination r3886
    have hd4 : rho 35159 * (2 - (rho 35146 * rho 35146 + rho 35145 * rho 35145 * (-1))) = rho 35146 * rho 35146 - rho 35145 * rho 35145 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3887
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX70 rho : Seg34.F), (seg34AccY70 rho : Seg34.F)⟩
      ⟨(rho 35145 : Seg34.F), (rho 35146 : Seg34.F)⟩
      ⟨(rho 35151 : Seg34.F), (rho 35152 : Seg34.F)⟩
      ⟨(seg34AccX71 rho : Seg34.F), (seg34AccY71 rho : Seg34.F)⟩
      ⟨(rho 35158 : Seg34.F), (rho 35159 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung70

theorem seg34_rows71 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3888 rho ∧ Seg34.relationRow3889 rho ∧ Seg34.relationRow3890 rho ∧ Seg34.relationRow3891 rho ∧ Seg34.relationRow3892 rho ∧ Seg34.relationRow3893 rho ∧ Seg34.relationRow3894 rho ∧ Seg34.relationRow3895 rho ∧ Seg34.relationRow3896 rho ∧ Seg34.relationRow3897 rho ∧ Seg34.relationRow3898 rho ∧ Seg34.relationRow3899 rho ∧ Seg34.relationRow3900 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3888, r3889, r3890, r3891, r3892, r3893, r3894, r3895, r3896, r3897, r3898, r3899, r3900, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3888, r3889, r3890, r3891, r3892, r3893, r3894, r3895, r3896, r3897, r3898, r3899, r3900⟩

theorem seg34_rung71 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34063 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX71 rho : Seg34.F), (seg34AccY71 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35158 : Seg34.F), (rho 35159 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX71 rho : Seg34.F), (seg34AccY71 rho : Seg34.F)⟩
        ⟨(rho 35158 : Seg34.F), (rho 35159 : Seg34.F)⟩
        ⟨(seg34AccX72 rho : Seg34.F), (seg34AccY72 rho : Seg34.F)⟩
        ⟨(rho 35171 : Seg34.F), (rho 35172 : Seg34.F)⟩ := by
  obtain ⟨r3888, r3889, r3890, r3891, r3892, r3893, r3894, r3895, r3896, r3897, r3898, r3899, r3900⟩ := seg34_rows71 rho h
  unfold Seg34.relationRow3888 at r3888
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3888
  unfold Seg34.relationRow3889 at r3889
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3889
  unfold Seg34.relationRow3890 at r3890
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3890
  unfold Seg34.relationRow3891 at r3891
  unfold Seg34.relationRow3892 at r3892
  unfold Seg34.relationRow3893 at r3893
  unfold Seg34.relationRow3894 at r3894
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3894
  unfold Seg34.relationRow3895 at r3895
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3895
  unfold Seg34.relationRow3896 at r3896
  unfold Seg34.relationRow3897 at r3897
  unfold Seg34.relationRow3898 at r3898
  unfold Seg34.relationRow3899 at r3899
  unfold Seg34.relationRow3900 at r3900
  have hrung71 (bit : Bool) (hbit : rho 34063 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX71 rho : Seg34.F), (seg34AccY71 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35158 : Seg34.F), (rho 35159 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX71 rho : Seg34.F), (seg34AccY71 rho : Seg34.F)⟩
        ⟨(rho 35158 : Seg34.F), (rho 35159 : Seg34.F)⟩
        ⟨(seg34AccX72 rho : Seg34.F), (seg34AccY72 rho : Seg34.F)⟩
        ⟨(rho 35171 : Seg34.F), (rho 35172 : Seg34.F)⟩ := by
    have hnextx : seg34AccX72 rho = seg34AccX71 rho + rho 35166 := by
      unfold seg34AccX72 seg34AccX71
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 71]
      ring
    have hnexty : seg34AccY72 rho = seg34AccY71 rho + rho 35167 := by
      unfold seg34AccY72 seg34AccY71
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 71]
      ring
    have ha0 : (rho 35158 + rho 35159) * (seg34AccX71 rho + seg34AccY71 rho) = rho 35160 := by
      unfold seg34AccX71 seg34AccY71
      linear_combination r3888
    have ha1 : rho 35159 * seg34AccX71 rho = rho 35161 := by
      unfold seg34AccX71
      linear_combination r3889
    have ha2 : rho 35158 * seg34AccY71 rho = rho 35162 := by
      unfold seg34AccY71
      linear_combination r3890
    have ha3 : 3021 * rho 35161 * rho 35162 = rho 35163 := by
      linear_combination r3891
    have ha4 : rho 35164 * (1 + rho 35163) = rho 35161 + rho 35162 := by
      linear_combination r3892
    have ha5 : rho 35165 * (1 - rho 35163) = rho 35160 - rho 35161 - rho 35162 := by
      linear_combination r3893
    have haddx :
        rho 35164 * (1 + 3021 * (rho 35159 * seg34AccX71 rho) * (rho 35158 * seg34AccY71 rho)) =
          rho 35159 * seg34AccX71 rho + rho 35158 * seg34AccY71 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35165 * (1 - 3021 * (rho 35159 * seg34AccX71 rho) * (rho 35158 * seg34AccY71 rho)) =
          (-1) * (rho 35159 * seg34AccX71 rho) - rho 35158 * seg34AccY71 rho +
            (seg34AccY71 rho - seg34AccX71 rho * (-1)) * (rho 35158 + rho 35159) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35165 * (1 - rho 35163) = rho 35160 - rho 35161 - rho 35162 := ha5
        _ = (-1) * rho 35161 - rho 35162 + (seg34AccY71 rho - seg34AccX71 rho * (-1)) * (rho 35158 + rho 35159) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX72 rho = seg34AccX71 rho - Bool.toZMod bit * (seg34AccX71 rho - rho 35164) := by
      have hd : rho 35166 = Bool.toZMod bit * (rho 35164 - seg34AccX71 rho) := by
        rw [← hbit]
        unfold seg34AccX71
        linear_combination -r3894
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY72 rho = seg34AccY71 rho - Bool.toZMod bit * (seg34AccY71 rho - rho 35165) := by
      have hd : rho 35167 = Bool.toZMod bit * (rho 35165 - seg34AccY71 rho) := by
        rw [← hbit]
        unfold seg34AccY71
        linear_combination -r3895
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35158 * rho 35159 = rho 35168 := by linear_combination r3896
    have hd1 : rho 35158 * rho 35158 = rho 35169 := by linear_combination r3897
    have hd2 : rho 35159 * rho 35159 = rho 35170 := by linear_combination r3898
    have hd3 : rho 35171 * (rho 35159 * rho 35159 + rho 35158 * rho 35158 * (-1)) = 2 * (rho 35158 * rho 35159) := by
      rw [hd0, hd1, hd2]
      linear_combination r3899
    have hd4 : rho 35172 * (2 - (rho 35159 * rho 35159 + rho 35158 * rho 35158 * (-1))) = rho 35159 * rho 35159 - rho 35158 * rho 35158 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3900
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX71 rho : Seg34.F), (seg34AccY71 rho : Seg34.F)⟩
      ⟨(rho 35158 : Seg34.F), (rho 35159 : Seg34.F)⟩
      ⟨(rho 35164 : Seg34.F), (rho 35165 : Seg34.F)⟩
      ⟨(seg34AccX72 rho : Seg34.F), (seg34AccY72 rho : Seg34.F)⟩
      ⟨(rho 35171 : Seg34.F), (rho 35172 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung71

theorem seg34_rows72 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3901 rho ∧ Seg34.relationRow3902 rho ∧ Seg34.relationRow3903 rho ∧ Seg34.relationRow3904 rho ∧ Seg34.relationRow3905 rho ∧ Seg34.relationRow3906 rho ∧ Seg34.relationRow3907 rho ∧ Seg34.relationRow3908 rho ∧ Seg34.relationRow3909 rho ∧ Seg34.relationRow3910 rho ∧ Seg34.relationRow3911 rho ∧ Seg34.relationRow3912 rho ∧ Seg34.relationRow3913 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3901, r3902, r3903, r3904, r3905, r3906, r3907, r3908, r3909, r3910, r3911, r3912, r3913, _, _, _, _, _, _⟩
  exact ⟨r3901, r3902, r3903, r3904, r3905, r3906, r3907, r3908, r3909, r3910, r3911, r3912, r3913⟩

theorem seg34_rung72 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34064 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX72 rho : Seg34.F), (seg34AccY72 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35171 : Seg34.F), (rho 35172 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX72 rho : Seg34.F), (seg34AccY72 rho : Seg34.F)⟩
        ⟨(rho 35171 : Seg34.F), (rho 35172 : Seg34.F)⟩
        ⟨(seg34AccX73 rho : Seg34.F), (seg34AccY73 rho : Seg34.F)⟩
        ⟨(rho 35184 : Seg34.F), (rho 35185 : Seg34.F)⟩ := by
  obtain ⟨r3901, r3902, r3903, r3904, r3905, r3906, r3907, r3908, r3909, r3910, r3911, r3912, r3913⟩ := seg34_rows72 rho h
  unfold Seg34.relationRow3901 at r3901
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3901
  unfold Seg34.relationRow3902 at r3902
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3902
  unfold Seg34.relationRow3903 at r3903
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3903
  unfold Seg34.relationRow3904 at r3904
  unfold Seg34.relationRow3905 at r3905
  unfold Seg34.relationRow3906 at r3906
  unfold Seg34.relationRow3907 at r3907
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3907
  unfold Seg34.relationRow3908 at r3908
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3908
  unfold Seg34.relationRow3909 at r3909
  unfold Seg34.relationRow3910 at r3910
  unfold Seg34.relationRow3911 at r3911
  unfold Seg34.relationRow3912 at r3912
  unfold Seg34.relationRow3913 at r3913
  have hrung72 (bit : Bool) (hbit : rho 34064 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX72 rho : Seg34.F), (seg34AccY72 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35171 : Seg34.F), (rho 35172 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX72 rho : Seg34.F), (seg34AccY72 rho : Seg34.F)⟩
        ⟨(rho 35171 : Seg34.F), (rho 35172 : Seg34.F)⟩
        ⟨(seg34AccX73 rho : Seg34.F), (seg34AccY73 rho : Seg34.F)⟩
        ⟨(rho 35184 : Seg34.F), (rho 35185 : Seg34.F)⟩ := by
    have hnextx : seg34AccX73 rho = seg34AccX72 rho + rho 35179 := by
      unfold seg34AccX73 seg34AccX72
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 72]
      ring
    have hnexty : seg34AccY73 rho = seg34AccY72 rho + rho 35180 := by
      unfold seg34AccY73 seg34AccY72
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 72]
      ring
    have ha0 : (rho 35171 + rho 35172) * (seg34AccX72 rho + seg34AccY72 rho) = rho 35173 := by
      unfold seg34AccX72 seg34AccY72
      linear_combination r3901
    have ha1 : rho 35172 * seg34AccX72 rho = rho 35174 := by
      unfold seg34AccX72
      linear_combination r3902
    have ha2 : rho 35171 * seg34AccY72 rho = rho 35175 := by
      unfold seg34AccY72
      linear_combination r3903
    have ha3 : 3021 * rho 35174 * rho 35175 = rho 35176 := by
      linear_combination r3904
    have ha4 : rho 35177 * (1 + rho 35176) = rho 35174 + rho 35175 := by
      linear_combination r3905
    have ha5 : rho 35178 * (1 - rho 35176) = rho 35173 - rho 35174 - rho 35175 := by
      linear_combination r3906
    have haddx :
        rho 35177 * (1 + 3021 * (rho 35172 * seg34AccX72 rho) * (rho 35171 * seg34AccY72 rho)) =
          rho 35172 * seg34AccX72 rho + rho 35171 * seg34AccY72 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35178 * (1 - 3021 * (rho 35172 * seg34AccX72 rho) * (rho 35171 * seg34AccY72 rho)) =
          (-1) * (rho 35172 * seg34AccX72 rho) - rho 35171 * seg34AccY72 rho +
            (seg34AccY72 rho - seg34AccX72 rho * (-1)) * (rho 35171 + rho 35172) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35178 * (1 - rho 35176) = rho 35173 - rho 35174 - rho 35175 := ha5
        _ = (-1) * rho 35174 - rho 35175 + (seg34AccY72 rho - seg34AccX72 rho * (-1)) * (rho 35171 + rho 35172) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX73 rho = seg34AccX72 rho - Bool.toZMod bit * (seg34AccX72 rho - rho 35177) := by
      have hd : rho 35179 = Bool.toZMod bit * (rho 35177 - seg34AccX72 rho) := by
        rw [← hbit]
        unfold seg34AccX72
        linear_combination -r3907
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY73 rho = seg34AccY72 rho - Bool.toZMod bit * (seg34AccY72 rho - rho 35178) := by
      have hd : rho 35180 = Bool.toZMod bit * (rho 35178 - seg34AccY72 rho) := by
        rw [← hbit]
        unfold seg34AccY72
        linear_combination -r3908
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35171 * rho 35172 = rho 35181 := by linear_combination r3909
    have hd1 : rho 35171 * rho 35171 = rho 35182 := by linear_combination r3910
    have hd2 : rho 35172 * rho 35172 = rho 35183 := by linear_combination r3911
    have hd3 : rho 35184 * (rho 35172 * rho 35172 + rho 35171 * rho 35171 * (-1)) = 2 * (rho 35171 * rho 35172) := by
      rw [hd0, hd1, hd2]
      linear_combination r3912
    have hd4 : rho 35185 * (2 - (rho 35172 * rho 35172 + rho 35171 * rho 35171 * (-1))) = rho 35172 * rho 35172 - rho 35171 * rho 35171 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3913
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX72 rho : Seg34.F), (seg34AccY72 rho : Seg34.F)⟩
      ⟨(rho 35171 : Seg34.F), (rho 35172 : Seg34.F)⟩
      ⟨(rho 35177 : Seg34.F), (rho 35178 : Seg34.F)⟩
      ⟨(seg34AccX73 rho : Seg34.F), (seg34AccY73 rho : Seg34.F)⟩
      ⟨(rho 35184 : Seg34.F), (rho 35185 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung72

theorem seg34_rows73 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3914 rho ∧ Seg34.relationRow3915 rho ∧ Seg34.relationRow3916 rho ∧ Seg34.relationRow3917 rho ∧ Seg34.relationRow3918 rho ∧ Seg34.relationRow3919 rho ∧ Seg34.relationRow3920 rho ∧ Seg34.relationRow3921 rho ∧ Seg34.relationRow3922 rho ∧ Seg34.relationRow3923 rho ∧ Seg34.relationRow3924 rho ∧ Seg34.relationRow3925 rho ∧ Seg34.relationRow3926 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3914, r3915, r3916, r3917, r3918, r3919⟩
  unfold Seg34.relationPart49 at p49
  rcases p49 with ⟨r3920, r3921, r3922, r3923, r3924, r3925, r3926, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3914, r3915, r3916, r3917, r3918, r3919, r3920, r3921, r3922, r3923, r3924, r3925, r3926⟩

theorem seg34_rung73 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34065 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX73 rho : Seg34.F), (seg34AccY73 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35184 : Seg34.F), (rho 35185 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX73 rho : Seg34.F), (seg34AccY73 rho : Seg34.F)⟩
        ⟨(rho 35184 : Seg34.F), (rho 35185 : Seg34.F)⟩
        ⟨(seg34AccX74 rho : Seg34.F), (seg34AccY74 rho : Seg34.F)⟩
        ⟨(rho 35197 : Seg34.F), (rho 35198 : Seg34.F)⟩ := by
  obtain ⟨r3914, r3915, r3916, r3917, r3918, r3919, r3920, r3921, r3922, r3923, r3924, r3925, r3926⟩ := seg34_rows73 rho h
  unfold Seg34.relationRow3914 at r3914
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3914
  unfold Seg34.relationRow3915 at r3915
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3915
  unfold Seg34.relationRow3916 at r3916
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3916
  unfold Seg34.relationRow3917 at r3917
  unfold Seg34.relationRow3918 at r3918
  unfold Seg34.relationRow3919 at r3919
  unfold Seg34.relationRow3920 at r3920
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3920
  unfold Seg34.relationRow3921 at r3921
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3921
  unfold Seg34.relationRow3922 at r3922
  unfold Seg34.relationRow3923 at r3923
  unfold Seg34.relationRow3924 at r3924
  unfold Seg34.relationRow3925 at r3925
  unfold Seg34.relationRow3926 at r3926
  have hrung73 (bit : Bool) (hbit : rho 34065 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX73 rho : Seg34.F), (seg34AccY73 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35184 : Seg34.F), (rho 35185 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX73 rho : Seg34.F), (seg34AccY73 rho : Seg34.F)⟩
        ⟨(rho 35184 : Seg34.F), (rho 35185 : Seg34.F)⟩
        ⟨(seg34AccX74 rho : Seg34.F), (seg34AccY74 rho : Seg34.F)⟩
        ⟨(rho 35197 : Seg34.F), (rho 35198 : Seg34.F)⟩ := by
    have hnextx : seg34AccX74 rho = seg34AccX73 rho + rho 35192 := by
      unfold seg34AccX74 seg34AccX73
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 73]
      ring
    have hnexty : seg34AccY74 rho = seg34AccY73 rho + rho 35193 := by
      unfold seg34AccY74 seg34AccY73
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 73]
      ring
    have ha0 : (rho 35184 + rho 35185) * (seg34AccX73 rho + seg34AccY73 rho) = rho 35186 := by
      unfold seg34AccX73 seg34AccY73
      linear_combination r3914
    have ha1 : rho 35185 * seg34AccX73 rho = rho 35187 := by
      unfold seg34AccX73
      linear_combination r3915
    have ha2 : rho 35184 * seg34AccY73 rho = rho 35188 := by
      unfold seg34AccY73
      linear_combination r3916
    have ha3 : 3021 * rho 35187 * rho 35188 = rho 35189 := by
      linear_combination r3917
    have ha4 : rho 35190 * (1 + rho 35189) = rho 35187 + rho 35188 := by
      linear_combination r3918
    have ha5 : rho 35191 * (1 - rho 35189) = rho 35186 - rho 35187 - rho 35188 := by
      linear_combination r3919
    have haddx :
        rho 35190 * (1 + 3021 * (rho 35185 * seg34AccX73 rho) * (rho 35184 * seg34AccY73 rho)) =
          rho 35185 * seg34AccX73 rho + rho 35184 * seg34AccY73 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35191 * (1 - 3021 * (rho 35185 * seg34AccX73 rho) * (rho 35184 * seg34AccY73 rho)) =
          (-1) * (rho 35185 * seg34AccX73 rho) - rho 35184 * seg34AccY73 rho +
            (seg34AccY73 rho - seg34AccX73 rho * (-1)) * (rho 35184 + rho 35185) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35191 * (1 - rho 35189) = rho 35186 - rho 35187 - rho 35188 := ha5
        _ = (-1) * rho 35187 - rho 35188 + (seg34AccY73 rho - seg34AccX73 rho * (-1)) * (rho 35184 + rho 35185) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX74 rho = seg34AccX73 rho - Bool.toZMod bit * (seg34AccX73 rho - rho 35190) := by
      have hd : rho 35192 = Bool.toZMod bit * (rho 35190 - seg34AccX73 rho) := by
        rw [← hbit]
        unfold seg34AccX73
        linear_combination -r3920
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY74 rho = seg34AccY73 rho - Bool.toZMod bit * (seg34AccY73 rho - rho 35191) := by
      have hd : rho 35193 = Bool.toZMod bit * (rho 35191 - seg34AccY73 rho) := by
        rw [← hbit]
        unfold seg34AccY73
        linear_combination -r3921
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35184 * rho 35185 = rho 35194 := by linear_combination r3922
    have hd1 : rho 35184 * rho 35184 = rho 35195 := by linear_combination r3923
    have hd2 : rho 35185 * rho 35185 = rho 35196 := by linear_combination r3924
    have hd3 : rho 35197 * (rho 35185 * rho 35185 + rho 35184 * rho 35184 * (-1)) = 2 * (rho 35184 * rho 35185) := by
      rw [hd0, hd1, hd2]
      linear_combination r3925
    have hd4 : rho 35198 * (2 - (rho 35185 * rho 35185 + rho 35184 * rho 35184 * (-1))) = rho 35185 * rho 35185 - rho 35184 * rho 35184 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3926
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX73 rho : Seg34.F), (seg34AccY73 rho : Seg34.F)⟩
      ⟨(rho 35184 : Seg34.F), (rho 35185 : Seg34.F)⟩
      ⟨(rho 35190 : Seg34.F), (rho 35191 : Seg34.F)⟩
      ⟨(seg34AccX74 rho : Seg34.F), (seg34AccY74 rho : Seg34.F)⟩
      ⟨(rho 35197 : Seg34.F), (rho 35198 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung73

theorem seg34_rows74 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3927 rho ∧ Seg34.relationRow3928 rho ∧ Seg34.relationRow3929 rho ∧ Seg34.relationRow3930 rho ∧ Seg34.relationRow3931 rho ∧ Seg34.relationRow3932 rho ∧ Seg34.relationRow3933 rho ∧ Seg34.relationRow3934 rho ∧ Seg34.relationRow3935 rho ∧ Seg34.relationRow3936 rho ∧ Seg34.relationRow3937 rho ∧ Seg34.relationRow3938 rho ∧ Seg34.relationRow3939 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, r3927, r3928, r3929, r3930, r3931, r3932, r3933, r3934, r3935, r3936, r3937, r3938, r3939, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3927, r3928, r3929, r3930, r3931, r3932, r3933, r3934, r3935, r3936, r3937, r3938, r3939⟩

theorem seg34_rung74 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34066 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX74 rho : Seg34.F), (seg34AccY74 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35197 : Seg34.F), (rho 35198 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX74 rho : Seg34.F), (seg34AccY74 rho : Seg34.F)⟩
        ⟨(rho 35197 : Seg34.F), (rho 35198 : Seg34.F)⟩
        ⟨(seg34AccX75 rho : Seg34.F), (seg34AccY75 rho : Seg34.F)⟩
        ⟨(rho 35210 : Seg34.F), (rho 35211 : Seg34.F)⟩ := by
  obtain ⟨r3927, r3928, r3929, r3930, r3931, r3932, r3933, r3934, r3935, r3936, r3937, r3938, r3939⟩ := seg34_rows74 rho h
  unfold Seg34.relationRow3927 at r3927
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3927
  unfold Seg34.relationRow3928 at r3928
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3928
  unfold Seg34.relationRow3929 at r3929
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3929
  unfold Seg34.relationRow3930 at r3930
  unfold Seg34.relationRow3931 at r3931
  unfold Seg34.relationRow3932 at r3932
  unfold Seg34.relationRow3933 at r3933
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3933
  unfold Seg34.relationRow3934 at r3934
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3934
  unfold Seg34.relationRow3935 at r3935
  unfold Seg34.relationRow3936 at r3936
  unfold Seg34.relationRow3937 at r3937
  unfold Seg34.relationRow3938 at r3938
  unfold Seg34.relationRow3939 at r3939
  have hrung74 (bit : Bool) (hbit : rho 34066 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX74 rho : Seg34.F), (seg34AccY74 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35197 : Seg34.F), (rho 35198 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX74 rho : Seg34.F), (seg34AccY74 rho : Seg34.F)⟩
        ⟨(rho 35197 : Seg34.F), (rho 35198 : Seg34.F)⟩
        ⟨(seg34AccX75 rho : Seg34.F), (seg34AccY75 rho : Seg34.F)⟩
        ⟨(rho 35210 : Seg34.F), (rho 35211 : Seg34.F)⟩ := by
    have hnextx : seg34AccX75 rho = seg34AccX74 rho + rho 35205 := by
      unfold seg34AccX75 seg34AccX74
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 74]
      ring
    have hnexty : seg34AccY75 rho = seg34AccY74 rho + rho 35206 := by
      unfold seg34AccY75 seg34AccY74
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 74]
      ring
    have ha0 : (rho 35197 + rho 35198) * (seg34AccX74 rho + seg34AccY74 rho) = rho 35199 := by
      unfold seg34AccX74 seg34AccY74
      linear_combination r3927
    have ha1 : rho 35198 * seg34AccX74 rho = rho 35200 := by
      unfold seg34AccX74
      linear_combination r3928
    have ha2 : rho 35197 * seg34AccY74 rho = rho 35201 := by
      unfold seg34AccY74
      linear_combination r3929
    have ha3 : 3021 * rho 35200 * rho 35201 = rho 35202 := by
      linear_combination r3930
    have ha4 : rho 35203 * (1 + rho 35202) = rho 35200 + rho 35201 := by
      linear_combination r3931
    have ha5 : rho 35204 * (1 - rho 35202) = rho 35199 - rho 35200 - rho 35201 := by
      linear_combination r3932
    have haddx :
        rho 35203 * (1 + 3021 * (rho 35198 * seg34AccX74 rho) * (rho 35197 * seg34AccY74 rho)) =
          rho 35198 * seg34AccX74 rho + rho 35197 * seg34AccY74 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35204 * (1 - 3021 * (rho 35198 * seg34AccX74 rho) * (rho 35197 * seg34AccY74 rho)) =
          (-1) * (rho 35198 * seg34AccX74 rho) - rho 35197 * seg34AccY74 rho +
            (seg34AccY74 rho - seg34AccX74 rho * (-1)) * (rho 35197 + rho 35198) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35204 * (1 - rho 35202) = rho 35199 - rho 35200 - rho 35201 := ha5
        _ = (-1) * rho 35200 - rho 35201 + (seg34AccY74 rho - seg34AccX74 rho * (-1)) * (rho 35197 + rho 35198) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX75 rho = seg34AccX74 rho - Bool.toZMod bit * (seg34AccX74 rho - rho 35203) := by
      have hd : rho 35205 = Bool.toZMod bit * (rho 35203 - seg34AccX74 rho) := by
        rw [← hbit]
        unfold seg34AccX74
        linear_combination -r3933
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY75 rho = seg34AccY74 rho - Bool.toZMod bit * (seg34AccY74 rho - rho 35204) := by
      have hd : rho 35206 = Bool.toZMod bit * (rho 35204 - seg34AccY74 rho) := by
        rw [← hbit]
        unfold seg34AccY74
        linear_combination -r3934
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35197 * rho 35198 = rho 35207 := by linear_combination r3935
    have hd1 : rho 35197 * rho 35197 = rho 35208 := by linear_combination r3936
    have hd2 : rho 35198 * rho 35198 = rho 35209 := by linear_combination r3937
    have hd3 : rho 35210 * (rho 35198 * rho 35198 + rho 35197 * rho 35197 * (-1)) = 2 * (rho 35197 * rho 35198) := by
      rw [hd0, hd1, hd2]
      linear_combination r3938
    have hd4 : rho 35211 * (2 - (rho 35198 * rho 35198 + rho 35197 * rho 35197 * (-1))) = rho 35198 * rho 35198 - rho 35197 * rho 35197 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3939
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX74 rho : Seg34.F), (seg34AccY74 rho : Seg34.F)⟩
      ⟨(rho 35197 : Seg34.F), (rho 35198 : Seg34.F)⟩
      ⟨(rho 35203 : Seg34.F), (rho 35204 : Seg34.F)⟩
      ⟨(seg34AccX75 rho : Seg34.F), (seg34AccY75 rho : Seg34.F)⟩
      ⟨(rho 35210 : Seg34.F), (rho 35211 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung74

theorem seg34_rows75 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3940 rho ∧ Seg34.relationRow3941 rho ∧ Seg34.relationRow3942 rho ∧ Seg34.relationRow3943 rho ∧ Seg34.relationRow3944 rho ∧ Seg34.relationRow3945 rho ∧ Seg34.relationRow3946 rho ∧ Seg34.relationRow3947 rho ∧ Seg34.relationRow3948 rho ∧ Seg34.relationRow3949 rho ∧ Seg34.relationRow3950 rho ∧ Seg34.relationRow3951 rho ∧ Seg34.relationRow3952 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3940, r3941, r3942, r3943, r3944, r3945, r3946, r3947, r3948, r3949, r3950, r3951, r3952, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3940, r3941, r3942, r3943, r3944, r3945, r3946, r3947, r3948, r3949, r3950, r3951, r3952⟩

theorem seg34_rung75 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34067 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX75 rho : Seg34.F), (seg34AccY75 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35210 : Seg34.F), (rho 35211 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX75 rho : Seg34.F), (seg34AccY75 rho : Seg34.F)⟩
        ⟨(rho 35210 : Seg34.F), (rho 35211 : Seg34.F)⟩
        ⟨(seg34AccX76 rho : Seg34.F), (seg34AccY76 rho : Seg34.F)⟩
        ⟨(rho 35223 : Seg34.F), (rho 35224 : Seg34.F)⟩ := by
  obtain ⟨r3940, r3941, r3942, r3943, r3944, r3945, r3946, r3947, r3948, r3949, r3950, r3951, r3952⟩ := seg34_rows75 rho h
  unfold Seg34.relationRow3940 at r3940
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3940
  unfold Seg34.relationRow3941 at r3941
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3941
  unfold Seg34.relationRow3942 at r3942
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3942
  unfold Seg34.relationRow3943 at r3943
  unfold Seg34.relationRow3944 at r3944
  unfold Seg34.relationRow3945 at r3945
  unfold Seg34.relationRow3946 at r3946
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3946
  unfold Seg34.relationRow3947 at r3947
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3947
  unfold Seg34.relationRow3948 at r3948
  unfold Seg34.relationRow3949 at r3949
  unfold Seg34.relationRow3950 at r3950
  unfold Seg34.relationRow3951 at r3951
  unfold Seg34.relationRow3952 at r3952
  have hrung75 (bit : Bool) (hbit : rho 34067 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX75 rho : Seg34.F), (seg34AccY75 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35210 : Seg34.F), (rho 35211 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX75 rho : Seg34.F), (seg34AccY75 rho : Seg34.F)⟩
        ⟨(rho 35210 : Seg34.F), (rho 35211 : Seg34.F)⟩
        ⟨(seg34AccX76 rho : Seg34.F), (seg34AccY76 rho : Seg34.F)⟩
        ⟨(rho 35223 : Seg34.F), (rho 35224 : Seg34.F)⟩ := by
    have hnextx : seg34AccX76 rho = seg34AccX75 rho + rho 35218 := by
      unfold seg34AccX76 seg34AccX75
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 75]
      ring
    have hnexty : seg34AccY76 rho = seg34AccY75 rho + rho 35219 := by
      unfold seg34AccY76 seg34AccY75
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 75]
      ring
    have ha0 : (rho 35210 + rho 35211) * (seg34AccX75 rho + seg34AccY75 rho) = rho 35212 := by
      unfold seg34AccX75 seg34AccY75
      linear_combination r3940
    have ha1 : rho 35211 * seg34AccX75 rho = rho 35213 := by
      unfold seg34AccX75
      linear_combination r3941
    have ha2 : rho 35210 * seg34AccY75 rho = rho 35214 := by
      unfold seg34AccY75
      linear_combination r3942
    have ha3 : 3021 * rho 35213 * rho 35214 = rho 35215 := by
      linear_combination r3943
    have ha4 : rho 35216 * (1 + rho 35215) = rho 35213 + rho 35214 := by
      linear_combination r3944
    have ha5 : rho 35217 * (1 - rho 35215) = rho 35212 - rho 35213 - rho 35214 := by
      linear_combination r3945
    have haddx :
        rho 35216 * (1 + 3021 * (rho 35211 * seg34AccX75 rho) * (rho 35210 * seg34AccY75 rho)) =
          rho 35211 * seg34AccX75 rho + rho 35210 * seg34AccY75 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35217 * (1 - 3021 * (rho 35211 * seg34AccX75 rho) * (rho 35210 * seg34AccY75 rho)) =
          (-1) * (rho 35211 * seg34AccX75 rho) - rho 35210 * seg34AccY75 rho +
            (seg34AccY75 rho - seg34AccX75 rho * (-1)) * (rho 35210 + rho 35211) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35217 * (1 - rho 35215) = rho 35212 - rho 35213 - rho 35214 := ha5
        _ = (-1) * rho 35213 - rho 35214 + (seg34AccY75 rho - seg34AccX75 rho * (-1)) * (rho 35210 + rho 35211) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX76 rho = seg34AccX75 rho - Bool.toZMod bit * (seg34AccX75 rho - rho 35216) := by
      have hd : rho 35218 = Bool.toZMod bit * (rho 35216 - seg34AccX75 rho) := by
        rw [← hbit]
        unfold seg34AccX75
        linear_combination -r3946
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY76 rho = seg34AccY75 rho - Bool.toZMod bit * (seg34AccY75 rho - rho 35217) := by
      have hd : rho 35219 = Bool.toZMod bit * (rho 35217 - seg34AccY75 rho) := by
        rw [← hbit]
        unfold seg34AccY75
        linear_combination -r3947
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35210 * rho 35211 = rho 35220 := by linear_combination r3948
    have hd1 : rho 35210 * rho 35210 = rho 35221 := by linear_combination r3949
    have hd2 : rho 35211 * rho 35211 = rho 35222 := by linear_combination r3950
    have hd3 : rho 35223 * (rho 35211 * rho 35211 + rho 35210 * rho 35210 * (-1)) = 2 * (rho 35210 * rho 35211) := by
      rw [hd0, hd1, hd2]
      linear_combination r3951
    have hd4 : rho 35224 * (2 - (rho 35211 * rho 35211 + rho 35210 * rho 35210 * (-1))) = rho 35211 * rho 35211 - rho 35210 * rho 35210 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3952
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX75 rho : Seg34.F), (seg34AccY75 rho : Seg34.F)⟩
      ⟨(rho 35210 : Seg34.F), (rho 35211 : Seg34.F)⟩
      ⟨(rho 35216 : Seg34.F), (rho 35217 : Seg34.F)⟩
      ⟨(seg34AccX76 rho : Seg34.F), (seg34AccY76 rho : Seg34.F)⟩
      ⟨(rho 35223 : Seg34.F), (rho 35224 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung75

theorem seg34_rows76 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3953 rho ∧ Seg34.relationRow3954 rho ∧ Seg34.relationRow3955 rho ∧ Seg34.relationRow3956 rho ∧ Seg34.relationRow3957 rho ∧ Seg34.relationRow3958 rho ∧ Seg34.relationRow3959 rho ∧ Seg34.relationRow3960 rho ∧ Seg34.relationRow3961 rho ∧ Seg34.relationRow3962 rho ∧ Seg34.relationRow3963 rho ∧ Seg34.relationRow3964 rho ∧ Seg34.relationRow3965 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3953, r3954, r3955, r3956, r3957, r3958, r3959, r3960, r3961, r3962, r3963, r3964, r3965, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3953, r3954, r3955, r3956, r3957, r3958, r3959, r3960, r3961, r3962, r3963, r3964, r3965⟩

theorem seg34_rung76 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34068 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX76 rho : Seg34.F), (seg34AccY76 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35223 : Seg34.F), (rho 35224 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX76 rho : Seg34.F), (seg34AccY76 rho : Seg34.F)⟩
        ⟨(rho 35223 : Seg34.F), (rho 35224 : Seg34.F)⟩
        ⟨(seg34AccX77 rho : Seg34.F), (seg34AccY77 rho : Seg34.F)⟩
        ⟨(rho 35236 : Seg34.F), (rho 35237 : Seg34.F)⟩ := by
  obtain ⟨r3953, r3954, r3955, r3956, r3957, r3958, r3959, r3960, r3961, r3962, r3963, r3964, r3965⟩ := seg34_rows76 rho h
  unfold Seg34.relationRow3953 at r3953
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3953
  unfold Seg34.relationRow3954 at r3954
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3954
  unfold Seg34.relationRow3955 at r3955
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3955
  unfold Seg34.relationRow3956 at r3956
  unfold Seg34.relationRow3957 at r3957
  unfold Seg34.relationRow3958 at r3958
  unfold Seg34.relationRow3959 at r3959
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3959
  unfold Seg34.relationRow3960 at r3960
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3960
  unfold Seg34.relationRow3961 at r3961
  unfold Seg34.relationRow3962 at r3962
  unfold Seg34.relationRow3963 at r3963
  unfold Seg34.relationRow3964 at r3964
  unfold Seg34.relationRow3965 at r3965
  have hrung76 (bit : Bool) (hbit : rho 34068 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX76 rho : Seg34.F), (seg34AccY76 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35223 : Seg34.F), (rho 35224 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX76 rho : Seg34.F), (seg34AccY76 rho : Seg34.F)⟩
        ⟨(rho 35223 : Seg34.F), (rho 35224 : Seg34.F)⟩
        ⟨(seg34AccX77 rho : Seg34.F), (seg34AccY77 rho : Seg34.F)⟩
        ⟨(rho 35236 : Seg34.F), (rho 35237 : Seg34.F)⟩ := by
    have hnextx : seg34AccX77 rho = seg34AccX76 rho + rho 35231 := by
      unfold seg34AccX77 seg34AccX76
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 76]
      ring
    have hnexty : seg34AccY77 rho = seg34AccY76 rho + rho 35232 := by
      unfold seg34AccY77 seg34AccY76
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 76]
      ring
    have ha0 : (rho 35223 + rho 35224) * (seg34AccX76 rho + seg34AccY76 rho) = rho 35225 := by
      unfold seg34AccX76 seg34AccY76
      linear_combination r3953
    have ha1 : rho 35224 * seg34AccX76 rho = rho 35226 := by
      unfold seg34AccX76
      linear_combination r3954
    have ha2 : rho 35223 * seg34AccY76 rho = rho 35227 := by
      unfold seg34AccY76
      linear_combination r3955
    have ha3 : 3021 * rho 35226 * rho 35227 = rho 35228 := by
      linear_combination r3956
    have ha4 : rho 35229 * (1 + rho 35228) = rho 35226 + rho 35227 := by
      linear_combination r3957
    have ha5 : rho 35230 * (1 - rho 35228) = rho 35225 - rho 35226 - rho 35227 := by
      linear_combination r3958
    have haddx :
        rho 35229 * (1 + 3021 * (rho 35224 * seg34AccX76 rho) * (rho 35223 * seg34AccY76 rho)) =
          rho 35224 * seg34AccX76 rho + rho 35223 * seg34AccY76 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35230 * (1 - 3021 * (rho 35224 * seg34AccX76 rho) * (rho 35223 * seg34AccY76 rho)) =
          (-1) * (rho 35224 * seg34AccX76 rho) - rho 35223 * seg34AccY76 rho +
            (seg34AccY76 rho - seg34AccX76 rho * (-1)) * (rho 35223 + rho 35224) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35230 * (1 - rho 35228) = rho 35225 - rho 35226 - rho 35227 := ha5
        _ = (-1) * rho 35226 - rho 35227 + (seg34AccY76 rho - seg34AccX76 rho * (-1)) * (rho 35223 + rho 35224) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX77 rho = seg34AccX76 rho - Bool.toZMod bit * (seg34AccX76 rho - rho 35229) := by
      have hd : rho 35231 = Bool.toZMod bit * (rho 35229 - seg34AccX76 rho) := by
        rw [← hbit]
        unfold seg34AccX76
        linear_combination -r3959
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY77 rho = seg34AccY76 rho - Bool.toZMod bit * (seg34AccY76 rho - rho 35230) := by
      have hd : rho 35232 = Bool.toZMod bit * (rho 35230 - seg34AccY76 rho) := by
        rw [← hbit]
        unfold seg34AccY76
        linear_combination -r3960
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35223 * rho 35224 = rho 35233 := by linear_combination r3961
    have hd1 : rho 35223 * rho 35223 = rho 35234 := by linear_combination r3962
    have hd2 : rho 35224 * rho 35224 = rho 35235 := by linear_combination r3963
    have hd3 : rho 35236 * (rho 35224 * rho 35224 + rho 35223 * rho 35223 * (-1)) = 2 * (rho 35223 * rho 35224) := by
      rw [hd0, hd1, hd2]
      linear_combination r3964
    have hd4 : rho 35237 * (2 - (rho 35224 * rho 35224 + rho 35223 * rho 35223 * (-1))) = rho 35224 * rho 35224 - rho 35223 * rho 35223 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3965
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX76 rho : Seg34.F), (seg34AccY76 rho : Seg34.F)⟩
      ⟨(rho 35223 : Seg34.F), (rho 35224 : Seg34.F)⟩
      ⟨(rho 35229 : Seg34.F), (rho 35230 : Seg34.F)⟩
      ⟨(seg34AccX77 rho : Seg34.F), (seg34AccY77 rho : Seg34.F)⟩
      ⟨(rho 35236 : Seg34.F), (rho 35237 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung76

theorem seg34_hstep_c6 (rho : Nat -> Seg34.F) (h : Seg34.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (33992 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 66 ≤ i → i < 77 →
      EdwardsBridge.onCurve (seg34LadderAccState rho i) →
      EdwardsBridge.onCurve (seg34LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg34LadderAccState rho i) (seg34LadderCurState rho i)
        (seg34LadderAccState rho (i + 1)) (seg34LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg34_rung66 rho h bits[66]! (hbitAt 66 (by omega)) hacc hcur
  · exact seg34_rung67 rho h bits[67]! (hbitAt 67 (by omega)) hacc hcur
  · exact seg34_rung68 rho h bits[68]! (hbitAt 68 (by omega)) hacc hcur
  · exact seg34_rung69 rho h bits[69]! (hbitAt 69 (by omega)) hacc hcur
  · exact seg34_rung70 rho h bits[70]! (hbitAt 70 (by omega)) hacc hcur
  · exact seg34_rung71 rho h bits[71]! (hbitAt 71 (by omega)) hacc hcur
  · exact seg34_rung72 rho h bits[72]! (hbitAt 72 (by omega)) hacc hcur
  · exact seg34_rung73 rho h bits[73]! (hbitAt 73 (by omega)) hacc hcur
  · exact seg34_rung74 rho h bits[74]! (hbitAt 74 (by omega)) hacc hcur
  · exact seg34_rung75 rho h bits[75]! (hbitAt 75 (by omega)) hacc hcur
  · exact seg34_rung76 rho h bits[76]! (hbitAt 76 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
