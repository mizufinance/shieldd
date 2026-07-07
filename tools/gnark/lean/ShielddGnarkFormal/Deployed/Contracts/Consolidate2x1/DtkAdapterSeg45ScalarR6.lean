import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg45_rows66 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3823 rho ∧ Seg45.relationRow3824 rho ∧ Seg45.relationRow3825 rho ∧ Seg45.relationRow3826 rho ∧ Seg45.relationRow3827 rho ∧ Seg45.relationRow3828 rho ∧ Seg45.relationRow3829 rho ∧ Seg45.relationRow3830 rho ∧ Seg45.relationRow3831 rho ∧ Seg45.relationRow3832 rho ∧ Seg45.relationRow3833 rho ∧ Seg45.relationRow3834 rho ∧ Seg45.relationRow3835 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3823, r3824, r3825, r3826, r3827, r3828, r3829, r3830, r3831, r3832, r3833, r3834, r3835, _, _, _, _⟩
  exact ⟨r3823, r3824, r3825, r3826, r3827, r3828, r3829, r3830, r3831, r3832, r3833, r3834, r3835⟩

theorem seg45_rung66 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41014 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX66 rho : Seg45.F), (seg45AccY66 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42049 : Seg45.F), (rho 42050 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX66 rho : Seg45.F), (seg45AccY66 rho : Seg45.F)⟩
        ⟨(rho 42049 : Seg45.F), (rho 42050 : Seg45.F)⟩
        ⟨(seg45AccX67 rho : Seg45.F), (seg45AccY67 rho : Seg45.F)⟩
        ⟨(rho 42062 : Seg45.F), (rho 42063 : Seg45.F)⟩ := by
  obtain ⟨r3823, r3824, r3825, r3826, r3827, r3828, r3829, r3830, r3831, r3832, r3833, r3834, r3835⟩ := seg45_rows66 rho h
  unfold Seg45.relationRow3823 at r3823
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3823
  unfold Seg45.relationRow3824 at r3824
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3824
  unfold Seg45.relationRow3825 at r3825
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3825
  unfold Seg45.relationRow3826 at r3826
  unfold Seg45.relationRow3827 at r3827
  unfold Seg45.relationRow3828 at r3828
  unfold Seg45.relationRow3829 at r3829
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3829
  unfold Seg45.relationRow3830 at r3830
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3830
  unfold Seg45.relationRow3831 at r3831
  unfold Seg45.relationRow3832 at r3832
  unfold Seg45.relationRow3833 at r3833
  unfold Seg45.relationRow3834 at r3834
  unfold Seg45.relationRow3835 at r3835
  have hrung66 (bit : Bool) (hbit : rho 41014 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX66 rho : Seg45.F), (seg45AccY66 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42049 : Seg45.F), (rho 42050 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX66 rho : Seg45.F), (seg45AccY66 rho : Seg45.F)⟩
        ⟨(rho 42049 : Seg45.F), (rho 42050 : Seg45.F)⟩
        ⟨(seg45AccX67 rho : Seg45.F), (seg45AccY67 rho : Seg45.F)⟩
        ⟨(rho 42062 : Seg45.F), (rho 42063 : Seg45.F)⟩ := by
    have hnextx : seg45AccX67 rho = seg45AccX66 rho + rho 42057 := by
      unfold seg45AccX67 seg45AccX66
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 66]
      ring
    have hnexty : seg45AccY67 rho = seg45AccY66 rho + rho 42058 := by
      unfold seg45AccY67 seg45AccY66
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 66]
      ring
    have ha0 : (rho 42049 + rho 42050) * (seg45AccX66 rho + seg45AccY66 rho) = rho 42051 := by
      unfold seg45AccX66 seg45AccY66
      linear_combination r3823
    have ha1 : rho 42050 * seg45AccX66 rho = rho 42052 := by
      unfold seg45AccX66
      linear_combination r3824
    have ha2 : rho 42049 * seg45AccY66 rho = rho 42053 := by
      unfold seg45AccY66
      linear_combination r3825
    have ha3 : 3021 * rho 42052 * rho 42053 = rho 42054 := by
      linear_combination r3826
    have ha4 : rho 42055 * (1 + rho 42054) = rho 42052 + rho 42053 := by
      linear_combination r3827
    have ha5 : rho 42056 * (1 - rho 42054) = rho 42051 - rho 42052 - rho 42053 := by
      linear_combination r3828
    have haddx :
        rho 42055 * (1 + 3021 * (rho 42050 * seg45AccX66 rho) * (rho 42049 * seg45AccY66 rho)) =
          rho 42050 * seg45AccX66 rho + rho 42049 * seg45AccY66 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42056 * (1 - 3021 * (rho 42050 * seg45AccX66 rho) * (rho 42049 * seg45AccY66 rho)) =
          (-1) * (rho 42050 * seg45AccX66 rho) - rho 42049 * seg45AccY66 rho +
            (seg45AccY66 rho - seg45AccX66 rho * (-1)) * (rho 42049 + rho 42050) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42056 * (1 - rho 42054) = rho 42051 - rho 42052 - rho 42053 := ha5
        _ = (-1) * rho 42052 - rho 42053 + (seg45AccY66 rho - seg45AccX66 rho * (-1)) * (rho 42049 + rho 42050) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX67 rho = seg45AccX66 rho - Bool.toZMod bit * (seg45AccX66 rho - rho 42055) := by
      have hd : rho 42057 = Bool.toZMod bit * (rho 42055 - seg45AccX66 rho) := by
        rw [← hbit]
        unfold seg45AccX66
        linear_combination -r3829
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY67 rho = seg45AccY66 rho - Bool.toZMod bit * (seg45AccY66 rho - rho 42056) := by
      have hd : rho 42058 = Bool.toZMod bit * (rho 42056 - seg45AccY66 rho) := by
        rw [← hbit]
        unfold seg45AccY66
        linear_combination -r3830
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42049 * rho 42050 = rho 42059 := by linear_combination r3831
    have hd1 : rho 42049 * rho 42049 = rho 42060 := by linear_combination r3832
    have hd2 : rho 42050 * rho 42050 = rho 42061 := by linear_combination r3833
    have hd3 : rho 42062 * (rho 42050 * rho 42050 + rho 42049 * rho 42049 * (-1)) = 2 * (rho 42049 * rho 42050) := by
      rw [hd0, hd1, hd2]
      linear_combination r3834
    have hd4 : rho 42063 * (2 - (rho 42050 * rho 42050 + rho 42049 * rho 42049 * (-1))) = rho 42050 * rho 42050 - rho 42049 * rho 42049 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3835
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX66 rho : Seg45.F), (seg45AccY66 rho : Seg45.F)⟩
      ⟨(rho 42049 : Seg45.F), (rho 42050 : Seg45.F)⟩
      ⟨(rho 42055 : Seg45.F), (rho 42056 : Seg45.F)⟩
      ⟨(seg45AccX67 rho : Seg45.F), (seg45AccY67 rho : Seg45.F)⟩
      ⟨(rho 42062 : Seg45.F), (rho 42063 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung66

theorem seg45_rows67 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3836 rho ∧ Seg45.relationRow3837 rho ∧ Seg45.relationRow3838 rho ∧ Seg45.relationRow3839 rho ∧ Seg45.relationRow3840 rho ∧ Seg45.relationRow3841 rho ∧ Seg45.relationRow3842 rho ∧ Seg45.relationRow3843 rho ∧ Seg45.relationRow3844 rho ∧ Seg45.relationRow3845 rho ∧ Seg45.relationRow3846 rho ∧ Seg45.relationRow3847 rho ∧ Seg45.relationRow3848 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3836, r3837, r3838, r3839⟩
  unfold Seg45.relationPart48 at p48
  rcases p48 with ⟨r3840, r3841, r3842, r3843, r3844, r3845, r3846, r3847, r3848, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3836, r3837, r3838, r3839, r3840, r3841, r3842, r3843, r3844, r3845, r3846, r3847, r3848⟩

theorem seg45_rung67 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41015 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX67 rho : Seg45.F), (seg45AccY67 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42062 : Seg45.F), (rho 42063 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX67 rho : Seg45.F), (seg45AccY67 rho : Seg45.F)⟩
        ⟨(rho 42062 : Seg45.F), (rho 42063 : Seg45.F)⟩
        ⟨(seg45AccX68 rho : Seg45.F), (seg45AccY68 rho : Seg45.F)⟩
        ⟨(rho 42075 : Seg45.F), (rho 42076 : Seg45.F)⟩ := by
  obtain ⟨r3836, r3837, r3838, r3839, r3840, r3841, r3842, r3843, r3844, r3845, r3846, r3847, r3848⟩ := seg45_rows67 rho h
  unfold Seg45.relationRow3836 at r3836
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3836
  unfold Seg45.relationRow3837 at r3837
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3837
  unfold Seg45.relationRow3838 at r3838
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3838
  unfold Seg45.relationRow3839 at r3839
  unfold Seg45.relationRow3840 at r3840
  unfold Seg45.relationRow3841 at r3841
  unfold Seg45.relationRow3842 at r3842
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3842
  unfold Seg45.relationRow3843 at r3843
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3843
  unfold Seg45.relationRow3844 at r3844
  unfold Seg45.relationRow3845 at r3845
  unfold Seg45.relationRow3846 at r3846
  unfold Seg45.relationRow3847 at r3847
  unfold Seg45.relationRow3848 at r3848
  have hrung67 (bit : Bool) (hbit : rho 41015 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX67 rho : Seg45.F), (seg45AccY67 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42062 : Seg45.F), (rho 42063 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX67 rho : Seg45.F), (seg45AccY67 rho : Seg45.F)⟩
        ⟨(rho 42062 : Seg45.F), (rho 42063 : Seg45.F)⟩
        ⟨(seg45AccX68 rho : Seg45.F), (seg45AccY68 rho : Seg45.F)⟩
        ⟨(rho 42075 : Seg45.F), (rho 42076 : Seg45.F)⟩ := by
    have hnextx : seg45AccX68 rho = seg45AccX67 rho + rho 42070 := by
      unfold seg45AccX68 seg45AccX67
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 67]
      ring
    have hnexty : seg45AccY68 rho = seg45AccY67 rho + rho 42071 := by
      unfold seg45AccY68 seg45AccY67
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 67]
      ring
    have ha0 : (rho 42062 + rho 42063) * (seg45AccX67 rho + seg45AccY67 rho) = rho 42064 := by
      unfold seg45AccX67 seg45AccY67
      linear_combination r3836
    have ha1 : rho 42063 * seg45AccX67 rho = rho 42065 := by
      unfold seg45AccX67
      linear_combination r3837
    have ha2 : rho 42062 * seg45AccY67 rho = rho 42066 := by
      unfold seg45AccY67
      linear_combination r3838
    have ha3 : 3021 * rho 42065 * rho 42066 = rho 42067 := by
      linear_combination r3839
    have ha4 : rho 42068 * (1 + rho 42067) = rho 42065 + rho 42066 := by
      linear_combination r3840
    have ha5 : rho 42069 * (1 - rho 42067) = rho 42064 - rho 42065 - rho 42066 := by
      linear_combination r3841
    have haddx :
        rho 42068 * (1 + 3021 * (rho 42063 * seg45AccX67 rho) * (rho 42062 * seg45AccY67 rho)) =
          rho 42063 * seg45AccX67 rho + rho 42062 * seg45AccY67 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42069 * (1 - 3021 * (rho 42063 * seg45AccX67 rho) * (rho 42062 * seg45AccY67 rho)) =
          (-1) * (rho 42063 * seg45AccX67 rho) - rho 42062 * seg45AccY67 rho +
            (seg45AccY67 rho - seg45AccX67 rho * (-1)) * (rho 42062 + rho 42063) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42069 * (1 - rho 42067) = rho 42064 - rho 42065 - rho 42066 := ha5
        _ = (-1) * rho 42065 - rho 42066 + (seg45AccY67 rho - seg45AccX67 rho * (-1)) * (rho 42062 + rho 42063) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX68 rho = seg45AccX67 rho - Bool.toZMod bit * (seg45AccX67 rho - rho 42068) := by
      have hd : rho 42070 = Bool.toZMod bit * (rho 42068 - seg45AccX67 rho) := by
        rw [← hbit]
        unfold seg45AccX67
        linear_combination -r3842
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY68 rho = seg45AccY67 rho - Bool.toZMod bit * (seg45AccY67 rho - rho 42069) := by
      have hd : rho 42071 = Bool.toZMod bit * (rho 42069 - seg45AccY67 rho) := by
        rw [← hbit]
        unfold seg45AccY67
        linear_combination -r3843
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42062 * rho 42063 = rho 42072 := by linear_combination r3844
    have hd1 : rho 42062 * rho 42062 = rho 42073 := by linear_combination r3845
    have hd2 : rho 42063 * rho 42063 = rho 42074 := by linear_combination r3846
    have hd3 : rho 42075 * (rho 42063 * rho 42063 + rho 42062 * rho 42062 * (-1)) = 2 * (rho 42062 * rho 42063) := by
      rw [hd0, hd1, hd2]
      linear_combination r3847
    have hd4 : rho 42076 * (2 - (rho 42063 * rho 42063 + rho 42062 * rho 42062 * (-1))) = rho 42063 * rho 42063 - rho 42062 * rho 42062 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3848
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX67 rho : Seg45.F), (seg45AccY67 rho : Seg45.F)⟩
      ⟨(rho 42062 : Seg45.F), (rho 42063 : Seg45.F)⟩
      ⟨(rho 42068 : Seg45.F), (rho 42069 : Seg45.F)⟩
      ⟨(seg45AccX68 rho : Seg45.F), (seg45AccY68 rho : Seg45.F)⟩
      ⟨(rho 42075 : Seg45.F), (rho 42076 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung67

theorem seg45_rows68 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3849 rho ∧ Seg45.relationRow3850 rho ∧ Seg45.relationRow3851 rho ∧ Seg45.relationRow3852 rho ∧ Seg45.relationRow3853 rho ∧ Seg45.relationRow3854 rho ∧ Seg45.relationRow3855 rho ∧ Seg45.relationRow3856 rho ∧ Seg45.relationRow3857 rho ∧ Seg45.relationRow3858 rho ∧ Seg45.relationRow3859 rho ∧ Seg45.relationRow3860 rho ∧ Seg45.relationRow3861 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, r3849, r3850, r3851, r3852, r3853, r3854, r3855, r3856, r3857, r3858, r3859, r3860, r3861, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3849, r3850, r3851, r3852, r3853, r3854, r3855, r3856, r3857, r3858, r3859, r3860, r3861⟩

theorem seg45_rung68 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41016 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX68 rho : Seg45.F), (seg45AccY68 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42075 : Seg45.F), (rho 42076 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX68 rho : Seg45.F), (seg45AccY68 rho : Seg45.F)⟩
        ⟨(rho 42075 : Seg45.F), (rho 42076 : Seg45.F)⟩
        ⟨(seg45AccX69 rho : Seg45.F), (seg45AccY69 rho : Seg45.F)⟩
        ⟨(rho 42088 : Seg45.F), (rho 42089 : Seg45.F)⟩ := by
  obtain ⟨r3849, r3850, r3851, r3852, r3853, r3854, r3855, r3856, r3857, r3858, r3859, r3860, r3861⟩ := seg45_rows68 rho h
  unfold Seg45.relationRow3849 at r3849
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3849
  unfold Seg45.relationRow3850 at r3850
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3850
  unfold Seg45.relationRow3851 at r3851
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3851
  unfold Seg45.relationRow3852 at r3852
  unfold Seg45.relationRow3853 at r3853
  unfold Seg45.relationRow3854 at r3854
  unfold Seg45.relationRow3855 at r3855
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3855
  unfold Seg45.relationRow3856 at r3856
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3856
  unfold Seg45.relationRow3857 at r3857
  unfold Seg45.relationRow3858 at r3858
  unfold Seg45.relationRow3859 at r3859
  unfold Seg45.relationRow3860 at r3860
  unfold Seg45.relationRow3861 at r3861
  have hrung68 (bit : Bool) (hbit : rho 41016 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX68 rho : Seg45.F), (seg45AccY68 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42075 : Seg45.F), (rho 42076 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX68 rho : Seg45.F), (seg45AccY68 rho : Seg45.F)⟩
        ⟨(rho 42075 : Seg45.F), (rho 42076 : Seg45.F)⟩
        ⟨(seg45AccX69 rho : Seg45.F), (seg45AccY69 rho : Seg45.F)⟩
        ⟨(rho 42088 : Seg45.F), (rho 42089 : Seg45.F)⟩ := by
    have hnextx : seg45AccX69 rho = seg45AccX68 rho + rho 42083 := by
      unfold seg45AccX69 seg45AccX68
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 68]
      ring
    have hnexty : seg45AccY69 rho = seg45AccY68 rho + rho 42084 := by
      unfold seg45AccY69 seg45AccY68
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 68]
      ring
    have ha0 : (rho 42075 + rho 42076) * (seg45AccX68 rho + seg45AccY68 rho) = rho 42077 := by
      unfold seg45AccX68 seg45AccY68
      linear_combination r3849
    have ha1 : rho 42076 * seg45AccX68 rho = rho 42078 := by
      unfold seg45AccX68
      linear_combination r3850
    have ha2 : rho 42075 * seg45AccY68 rho = rho 42079 := by
      unfold seg45AccY68
      linear_combination r3851
    have ha3 : 3021 * rho 42078 * rho 42079 = rho 42080 := by
      linear_combination r3852
    have ha4 : rho 42081 * (1 + rho 42080) = rho 42078 + rho 42079 := by
      linear_combination r3853
    have ha5 : rho 42082 * (1 - rho 42080) = rho 42077 - rho 42078 - rho 42079 := by
      linear_combination r3854
    have haddx :
        rho 42081 * (1 + 3021 * (rho 42076 * seg45AccX68 rho) * (rho 42075 * seg45AccY68 rho)) =
          rho 42076 * seg45AccX68 rho + rho 42075 * seg45AccY68 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42082 * (1 - 3021 * (rho 42076 * seg45AccX68 rho) * (rho 42075 * seg45AccY68 rho)) =
          (-1) * (rho 42076 * seg45AccX68 rho) - rho 42075 * seg45AccY68 rho +
            (seg45AccY68 rho - seg45AccX68 rho * (-1)) * (rho 42075 + rho 42076) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42082 * (1 - rho 42080) = rho 42077 - rho 42078 - rho 42079 := ha5
        _ = (-1) * rho 42078 - rho 42079 + (seg45AccY68 rho - seg45AccX68 rho * (-1)) * (rho 42075 + rho 42076) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX69 rho = seg45AccX68 rho - Bool.toZMod bit * (seg45AccX68 rho - rho 42081) := by
      have hd : rho 42083 = Bool.toZMod bit * (rho 42081 - seg45AccX68 rho) := by
        rw [← hbit]
        unfold seg45AccX68
        linear_combination -r3855
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY69 rho = seg45AccY68 rho - Bool.toZMod bit * (seg45AccY68 rho - rho 42082) := by
      have hd : rho 42084 = Bool.toZMod bit * (rho 42082 - seg45AccY68 rho) := by
        rw [← hbit]
        unfold seg45AccY68
        linear_combination -r3856
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42075 * rho 42076 = rho 42085 := by linear_combination r3857
    have hd1 : rho 42075 * rho 42075 = rho 42086 := by linear_combination r3858
    have hd2 : rho 42076 * rho 42076 = rho 42087 := by linear_combination r3859
    have hd3 : rho 42088 * (rho 42076 * rho 42076 + rho 42075 * rho 42075 * (-1)) = 2 * (rho 42075 * rho 42076) := by
      rw [hd0, hd1, hd2]
      linear_combination r3860
    have hd4 : rho 42089 * (2 - (rho 42076 * rho 42076 + rho 42075 * rho 42075 * (-1))) = rho 42076 * rho 42076 - rho 42075 * rho 42075 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3861
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX68 rho : Seg45.F), (seg45AccY68 rho : Seg45.F)⟩
      ⟨(rho 42075 : Seg45.F), (rho 42076 : Seg45.F)⟩
      ⟨(rho 42081 : Seg45.F), (rho 42082 : Seg45.F)⟩
      ⟨(seg45AccX69 rho : Seg45.F), (seg45AccY69 rho : Seg45.F)⟩
      ⟨(rho 42088 : Seg45.F), (rho 42089 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung68

theorem seg45_rows69 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3862 rho ∧ Seg45.relationRow3863 rho ∧ Seg45.relationRow3864 rho ∧ Seg45.relationRow3865 rho ∧ Seg45.relationRow3866 rho ∧ Seg45.relationRow3867 rho ∧ Seg45.relationRow3868 rho ∧ Seg45.relationRow3869 rho ∧ Seg45.relationRow3870 rho ∧ Seg45.relationRow3871 rho ∧ Seg45.relationRow3872 rho ∧ Seg45.relationRow3873 rho ∧ Seg45.relationRow3874 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3862, r3863, r3864, r3865, r3866, r3867, r3868, r3869, r3870, r3871, r3872, r3873, r3874, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3862, r3863, r3864, r3865, r3866, r3867, r3868, r3869, r3870, r3871, r3872, r3873, r3874⟩

theorem seg45_rung69 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41017 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX69 rho : Seg45.F), (seg45AccY69 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42088 : Seg45.F), (rho 42089 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX69 rho : Seg45.F), (seg45AccY69 rho : Seg45.F)⟩
        ⟨(rho 42088 : Seg45.F), (rho 42089 : Seg45.F)⟩
        ⟨(seg45AccX70 rho : Seg45.F), (seg45AccY70 rho : Seg45.F)⟩
        ⟨(rho 42101 : Seg45.F), (rho 42102 : Seg45.F)⟩ := by
  obtain ⟨r3862, r3863, r3864, r3865, r3866, r3867, r3868, r3869, r3870, r3871, r3872, r3873, r3874⟩ := seg45_rows69 rho h
  unfold Seg45.relationRow3862 at r3862
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3862
  unfold Seg45.relationRow3863 at r3863
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3863
  unfold Seg45.relationRow3864 at r3864
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3864
  unfold Seg45.relationRow3865 at r3865
  unfold Seg45.relationRow3866 at r3866
  unfold Seg45.relationRow3867 at r3867
  unfold Seg45.relationRow3868 at r3868
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3868
  unfold Seg45.relationRow3869 at r3869
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3869
  unfold Seg45.relationRow3870 at r3870
  unfold Seg45.relationRow3871 at r3871
  unfold Seg45.relationRow3872 at r3872
  unfold Seg45.relationRow3873 at r3873
  unfold Seg45.relationRow3874 at r3874
  have hrung69 (bit : Bool) (hbit : rho 41017 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX69 rho : Seg45.F), (seg45AccY69 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42088 : Seg45.F), (rho 42089 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX69 rho : Seg45.F), (seg45AccY69 rho : Seg45.F)⟩
        ⟨(rho 42088 : Seg45.F), (rho 42089 : Seg45.F)⟩
        ⟨(seg45AccX70 rho : Seg45.F), (seg45AccY70 rho : Seg45.F)⟩
        ⟨(rho 42101 : Seg45.F), (rho 42102 : Seg45.F)⟩ := by
    have hnextx : seg45AccX70 rho = seg45AccX69 rho + rho 42096 := by
      unfold seg45AccX70 seg45AccX69
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 69]
      ring
    have hnexty : seg45AccY70 rho = seg45AccY69 rho + rho 42097 := by
      unfold seg45AccY70 seg45AccY69
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 69]
      ring
    have ha0 : (rho 42088 + rho 42089) * (seg45AccX69 rho + seg45AccY69 rho) = rho 42090 := by
      unfold seg45AccX69 seg45AccY69
      linear_combination r3862
    have ha1 : rho 42089 * seg45AccX69 rho = rho 42091 := by
      unfold seg45AccX69
      linear_combination r3863
    have ha2 : rho 42088 * seg45AccY69 rho = rho 42092 := by
      unfold seg45AccY69
      linear_combination r3864
    have ha3 : 3021 * rho 42091 * rho 42092 = rho 42093 := by
      linear_combination r3865
    have ha4 : rho 42094 * (1 + rho 42093) = rho 42091 + rho 42092 := by
      linear_combination r3866
    have ha5 : rho 42095 * (1 - rho 42093) = rho 42090 - rho 42091 - rho 42092 := by
      linear_combination r3867
    have haddx :
        rho 42094 * (1 + 3021 * (rho 42089 * seg45AccX69 rho) * (rho 42088 * seg45AccY69 rho)) =
          rho 42089 * seg45AccX69 rho + rho 42088 * seg45AccY69 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42095 * (1 - 3021 * (rho 42089 * seg45AccX69 rho) * (rho 42088 * seg45AccY69 rho)) =
          (-1) * (rho 42089 * seg45AccX69 rho) - rho 42088 * seg45AccY69 rho +
            (seg45AccY69 rho - seg45AccX69 rho * (-1)) * (rho 42088 + rho 42089) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42095 * (1 - rho 42093) = rho 42090 - rho 42091 - rho 42092 := ha5
        _ = (-1) * rho 42091 - rho 42092 + (seg45AccY69 rho - seg45AccX69 rho * (-1)) * (rho 42088 + rho 42089) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX70 rho = seg45AccX69 rho - Bool.toZMod bit * (seg45AccX69 rho - rho 42094) := by
      have hd : rho 42096 = Bool.toZMod bit * (rho 42094 - seg45AccX69 rho) := by
        rw [← hbit]
        unfold seg45AccX69
        linear_combination -r3868
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY70 rho = seg45AccY69 rho - Bool.toZMod bit * (seg45AccY69 rho - rho 42095) := by
      have hd : rho 42097 = Bool.toZMod bit * (rho 42095 - seg45AccY69 rho) := by
        rw [← hbit]
        unfold seg45AccY69
        linear_combination -r3869
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42088 * rho 42089 = rho 42098 := by linear_combination r3870
    have hd1 : rho 42088 * rho 42088 = rho 42099 := by linear_combination r3871
    have hd2 : rho 42089 * rho 42089 = rho 42100 := by linear_combination r3872
    have hd3 : rho 42101 * (rho 42089 * rho 42089 + rho 42088 * rho 42088 * (-1)) = 2 * (rho 42088 * rho 42089) := by
      rw [hd0, hd1, hd2]
      linear_combination r3873
    have hd4 : rho 42102 * (2 - (rho 42089 * rho 42089 + rho 42088 * rho 42088 * (-1))) = rho 42089 * rho 42089 - rho 42088 * rho 42088 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3874
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX69 rho : Seg45.F), (seg45AccY69 rho : Seg45.F)⟩
      ⟨(rho 42088 : Seg45.F), (rho 42089 : Seg45.F)⟩
      ⟨(rho 42094 : Seg45.F), (rho 42095 : Seg45.F)⟩
      ⟨(seg45AccX70 rho : Seg45.F), (seg45AccY70 rho : Seg45.F)⟩
      ⟨(rho 42101 : Seg45.F), (rho 42102 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung69

theorem seg45_rows70 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3875 rho ∧ Seg45.relationRow3876 rho ∧ Seg45.relationRow3877 rho ∧ Seg45.relationRow3878 rho ∧ Seg45.relationRow3879 rho ∧ Seg45.relationRow3880 rho ∧ Seg45.relationRow3881 rho ∧ Seg45.relationRow3882 rho ∧ Seg45.relationRow3883 rho ∧ Seg45.relationRow3884 rho ∧ Seg45.relationRow3885 rho ∧ Seg45.relationRow3886 rho ∧ Seg45.relationRow3887 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3875, r3876, r3877, r3878, r3879, r3880, r3881, r3882, r3883, r3884, r3885, r3886, r3887, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3875, r3876, r3877, r3878, r3879, r3880, r3881, r3882, r3883, r3884, r3885, r3886, r3887⟩

theorem seg45_rung70 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41018 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX70 rho : Seg45.F), (seg45AccY70 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42101 : Seg45.F), (rho 42102 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX70 rho : Seg45.F), (seg45AccY70 rho : Seg45.F)⟩
        ⟨(rho 42101 : Seg45.F), (rho 42102 : Seg45.F)⟩
        ⟨(seg45AccX71 rho : Seg45.F), (seg45AccY71 rho : Seg45.F)⟩
        ⟨(rho 42114 : Seg45.F), (rho 42115 : Seg45.F)⟩ := by
  obtain ⟨r3875, r3876, r3877, r3878, r3879, r3880, r3881, r3882, r3883, r3884, r3885, r3886, r3887⟩ := seg45_rows70 rho h
  unfold Seg45.relationRow3875 at r3875
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3875
  unfold Seg45.relationRow3876 at r3876
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3876
  unfold Seg45.relationRow3877 at r3877
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3877
  unfold Seg45.relationRow3878 at r3878
  unfold Seg45.relationRow3879 at r3879
  unfold Seg45.relationRow3880 at r3880
  unfold Seg45.relationRow3881 at r3881
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3881
  unfold Seg45.relationRow3882 at r3882
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3882
  unfold Seg45.relationRow3883 at r3883
  unfold Seg45.relationRow3884 at r3884
  unfold Seg45.relationRow3885 at r3885
  unfold Seg45.relationRow3886 at r3886
  unfold Seg45.relationRow3887 at r3887
  have hrung70 (bit : Bool) (hbit : rho 41018 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX70 rho : Seg45.F), (seg45AccY70 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42101 : Seg45.F), (rho 42102 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX70 rho : Seg45.F), (seg45AccY70 rho : Seg45.F)⟩
        ⟨(rho 42101 : Seg45.F), (rho 42102 : Seg45.F)⟩
        ⟨(seg45AccX71 rho : Seg45.F), (seg45AccY71 rho : Seg45.F)⟩
        ⟨(rho 42114 : Seg45.F), (rho 42115 : Seg45.F)⟩ := by
    have hnextx : seg45AccX71 rho = seg45AccX70 rho + rho 42109 := by
      unfold seg45AccX71 seg45AccX70
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 70]
      ring
    have hnexty : seg45AccY71 rho = seg45AccY70 rho + rho 42110 := by
      unfold seg45AccY71 seg45AccY70
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 70]
      ring
    have ha0 : (rho 42101 + rho 42102) * (seg45AccX70 rho + seg45AccY70 rho) = rho 42103 := by
      unfold seg45AccX70 seg45AccY70
      linear_combination r3875
    have ha1 : rho 42102 * seg45AccX70 rho = rho 42104 := by
      unfold seg45AccX70
      linear_combination r3876
    have ha2 : rho 42101 * seg45AccY70 rho = rho 42105 := by
      unfold seg45AccY70
      linear_combination r3877
    have ha3 : 3021 * rho 42104 * rho 42105 = rho 42106 := by
      linear_combination r3878
    have ha4 : rho 42107 * (1 + rho 42106) = rho 42104 + rho 42105 := by
      linear_combination r3879
    have ha5 : rho 42108 * (1 - rho 42106) = rho 42103 - rho 42104 - rho 42105 := by
      linear_combination r3880
    have haddx :
        rho 42107 * (1 + 3021 * (rho 42102 * seg45AccX70 rho) * (rho 42101 * seg45AccY70 rho)) =
          rho 42102 * seg45AccX70 rho + rho 42101 * seg45AccY70 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42108 * (1 - 3021 * (rho 42102 * seg45AccX70 rho) * (rho 42101 * seg45AccY70 rho)) =
          (-1) * (rho 42102 * seg45AccX70 rho) - rho 42101 * seg45AccY70 rho +
            (seg45AccY70 rho - seg45AccX70 rho * (-1)) * (rho 42101 + rho 42102) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42108 * (1 - rho 42106) = rho 42103 - rho 42104 - rho 42105 := ha5
        _ = (-1) * rho 42104 - rho 42105 + (seg45AccY70 rho - seg45AccX70 rho * (-1)) * (rho 42101 + rho 42102) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX71 rho = seg45AccX70 rho - Bool.toZMod bit * (seg45AccX70 rho - rho 42107) := by
      have hd : rho 42109 = Bool.toZMod bit * (rho 42107 - seg45AccX70 rho) := by
        rw [← hbit]
        unfold seg45AccX70
        linear_combination -r3881
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY71 rho = seg45AccY70 rho - Bool.toZMod bit * (seg45AccY70 rho - rho 42108) := by
      have hd : rho 42110 = Bool.toZMod bit * (rho 42108 - seg45AccY70 rho) := by
        rw [← hbit]
        unfold seg45AccY70
        linear_combination -r3882
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42101 * rho 42102 = rho 42111 := by linear_combination r3883
    have hd1 : rho 42101 * rho 42101 = rho 42112 := by linear_combination r3884
    have hd2 : rho 42102 * rho 42102 = rho 42113 := by linear_combination r3885
    have hd3 : rho 42114 * (rho 42102 * rho 42102 + rho 42101 * rho 42101 * (-1)) = 2 * (rho 42101 * rho 42102) := by
      rw [hd0, hd1, hd2]
      linear_combination r3886
    have hd4 : rho 42115 * (2 - (rho 42102 * rho 42102 + rho 42101 * rho 42101 * (-1))) = rho 42102 * rho 42102 - rho 42101 * rho 42101 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3887
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX70 rho : Seg45.F), (seg45AccY70 rho : Seg45.F)⟩
      ⟨(rho 42101 : Seg45.F), (rho 42102 : Seg45.F)⟩
      ⟨(rho 42107 : Seg45.F), (rho 42108 : Seg45.F)⟩
      ⟨(seg45AccX71 rho : Seg45.F), (seg45AccY71 rho : Seg45.F)⟩
      ⟨(rho 42114 : Seg45.F), (rho 42115 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung70

theorem seg45_rows71 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3888 rho ∧ Seg45.relationRow3889 rho ∧ Seg45.relationRow3890 rho ∧ Seg45.relationRow3891 rho ∧ Seg45.relationRow3892 rho ∧ Seg45.relationRow3893 rho ∧ Seg45.relationRow3894 rho ∧ Seg45.relationRow3895 rho ∧ Seg45.relationRow3896 rho ∧ Seg45.relationRow3897 rho ∧ Seg45.relationRow3898 rho ∧ Seg45.relationRow3899 rho ∧ Seg45.relationRow3900 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3888, r3889, r3890, r3891, r3892, r3893, r3894, r3895, r3896, r3897, r3898, r3899, r3900, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3888, r3889, r3890, r3891, r3892, r3893, r3894, r3895, r3896, r3897, r3898, r3899, r3900⟩

theorem seg45_rung71 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41019 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX71 rho : Seg45.F), (seg45AccY71 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42114 : Seg45.F), (rho 42115 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX71 rho : Seg45.F), (seg45AccY71 rho : Seg45.F)⟩
        ⟨(rho 42114 : Seg45.F), (rho 42115 : Seg45.F)⟩
        ⟨(seg45AccX72 rho : Seg45.F), (seg45AccY72 rho : Seg45.F)⟩
        ⟨(rho 42127 : Seg45.F), (rho 42128 : Seg45.F)⟩ := by
  obtain ⟨r3888, r3889, r3890, r3891, r3892, r3893, r3894, r3895, r3896, r3897, r3898, r3899, r3900⟩ := seg45_rows71 rho h
  unfold Seg45.relationRow3888 at r3888
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3888
  unfold Seg45.relationRow3889 at r3889
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3889
  unfold Seg45.relationRow3890 at r3890
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3890
  unfold Seg45.relationRow3891 at r3891
  unfold Seg45.relationRow3892 at r3892
  unfold Seg45.relationRow3893 at r3893
  unfold Seg45.relationRow3894 at r3894
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3894
  unfold Seg45.relationRow3895 at r3895
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3895
  unfold Seg45.relationRow3896 at r3896
  unfold Seg45.relationRow3897 at r3897
  unfold Seg45.relationRow3898 at r3898
  unfold Seg45.relationRow3899 at r3899
  unfold Seg45.relationRow3900 at r3900
  have hrung71 (bit : Bool) (hbit : rho 41019 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX71 rho : Seg45.F), (seg45AccY71 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42114 : Seg45.F), (rho 42115 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX71 rho : Seg45.F), (seg45AccY71 rho : Seg45.F)⟩
        ⟨(rho 42114 : Seg45.F), (rho 42115 : Seg45.F)⟩
        ⟨(seg45AccX72 rho : Seg45.F), (seg45AccY72 rho : Seg45.F)⟩
        ⟨(rho 42127 : Seg45.F), (rho 42128 : Seg45.F)⟩ := by
    have hnextx : seg45AccX72 rho = seg45AccX71 rho + rho 42122 := by
      unfold seg45AccX72 seg45AccX71
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 71]
      ring
    have hnexty : seg45AccY72 rho = seg45AccY71 rho + rho 42123 := by
      unfold seg45AccY72 seg45AccY71
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 71]
      ring
    have ha0 : (rho 42114 + rho 42115) * (seg45AccX71 rho + seg45AccY71 rho) = rho 42116 := by
      unfold seg45AccX71 seg45AccY71
      linear_combination r3888
    have ha1 : rho 42115 * seg45AccX71 rho = rho 42117 := by
      unfold seg45AccX71
      linear_combination r3889
    have ha2 : rho 42114 * seg45AccY71 rho = rho 42118 := by
      unfold seg45AccY71
      linear_combination r3890
    have ha3 : 3021 * rho 42117 * rho 42118 = rho 42119 := by
      linear_combination r3891
    have ha4 : rho 42120 * (1 + rho 42119) = rho 42117 + rho 42118 := by
      linear_combination r3892
    have ha5 : rho 42121 * (1 - rho 42119) = rho 42116 - rho 42117 - rho 42118 := by
      linear_combination r3893
    have haddx :
        rho 42120 * (1 + 3021 * (rho 42115 * seg45AccX71 rho) * (rho 42114 * seg45AccY71 rho)) =
          rho 42115 * seg45AccX71 rho + rho 42114 * seg45AccY71 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42121 * (1 - 3021 * (rho 42115 * seg45AccX71 rho) * (rho 42114 * seg45AccY71 rho)) =
          (-1) * (rho 42115 * seg45AccX71 rho) - rho 42114 * seg45AccY71 rho +
            (seg45AccY71 rho - seg45AccX71 rho * (-1)) * (rho 42114 + rho 42115) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42121 * (1 - rho 42119) = rho 42116 - rho 42117 - rho 42118 := ha5
        _ = (-1) * rho 42117 - rho 42118 + (seg45AccY71 rho - seg45AccX71 rho * (-1)) * (rho 42114 + rho 42115) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX72 rho = seg45AccX71 rho - Bool.toZMod bit * (seg45AccX71 rho - rho 42120) := by
      have hd : rho 42122 = Bool.toZMod bit * (rho 42120 - seg45AccX71 rho) := by
        rw [← hbit]
        unfold seg45AccX71
        linear_combination -r3894
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY72 rho = seg45AccY71 rho - Bool.toZMod bit * (seg45AccY71 rho - rho 42121) := by
      have hd : rho 42123 = Bool.toZMod bit * (rho 42121 - seg45AccY71 rho) := by
        rw [← hbit]
        unfold seg45AccY71
        linear_combination -r3895
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42114 * rho 42115 = rho 42124 := by linear_combination r3896
    have hd1 : rho 42114 * rho 42114 = rho 42125 := by linear_combination r3897
    have hd2 : rho 42115 * rho 42115 = rho 42126 := by linear_combination r3898
    have hd3 : rho 42127 * (rho 42115 * rho 42115 + rho 42114 * rho 42114 * (-1)) = 2 * (rho 42114 * rho 42115) := by
      rw [hd0, hd1, hd2]
      linear_combination r3899
    have hd4 : rho 42128 * (2 - (rho 42115 * rho 42115 + rho 42114 * rho 42114 * (-1))) = rho 42115 * rho 42115 - rho 42114 * rho 42114 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3900
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX71 rho : Seg45.F), (seg45AccY71 rho : Seg45.F)⟩
      ⟨(rho 42114 : Seg45.F), (rho 42115 : Seg45.F)⟩
      ⟨(rho 42120 : Seg45.F), (rho 42121 : Seg45.F)⟩
      ⟨(seg45AccX72 rho : Seg45.F), (seg45AccY72 rho : Seg45.F)⟩
      ⟨(rho 42127 : Seg45.F), (rho 42128 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung71

theorem seg45_rows72 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3901 rho ∧ Seg45.relationRow3902 rho ∧ Seg45.relationRow3903 rho ∧ Seg45.relationRow3904 rho ∧ Seg45.relationRow3905 rho ∧ Seg45.relationRow3906 rho ∧ Seg45.relationRow3907 rho ∧ Seg45.relationRow3908 rho ∧ Seg45.relationRow3909 rho ∧ Seg45.relationRow3910 rho ∧ Seg45.relationRow3911 rho ∧ Seg45.relationRow3912 rho ∧ Seg45.relationRow3913 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3901, r3902, r3903, r3904, r3905, r3906, r3907, r3908, r3909, r3910, r3911, r3912, r3913, _, _, _, _, _, _⟩
  exact ⟨r3901, r3902, r3903, r3904, r3905, r3906, r3907, r3908, r3909, r3910, r3911, r3912, r3913⟩

theorem seg45_rung72 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41020 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX72 rho : Seg45.F), (seg45AccY72 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42127 : Seg45.F), (rho 42128 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX72 rho : Seg45.F), (seg45AccY72 rho : Seg45.F)⟩
        ⟨(rho 42127 : Seg45.F), (rho 42128 : Seg45.F)⟩
        ⟨(seg45AccX73 rho : Seg45.F), (seg45AccY73 rho : Seg45.F)⟩
        ⟨(rho 42140 : Seg45.F), (rho 42141 : Seg45.F)⟩ := by
  obtain ⟨r3901, r3902, r3903, r3904, r3905, r3906, r3907, r3908, r3909, r3910, r3911, r3912, r3913⟩ := seg45_rows72 rho h
  unfold Seg45.relationRow3901 at r3901
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3901
  unfold Seg45.relationRow3902 at r3902
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3902
  unfold Seg45.relationRow3903 at r3903
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3903
  unfold Seg45.relationRow3904 at r3904
  unfold Seg45.relationRow3905 at r3905
  unfold Seg45.relationRow3906 at r3906
  unfold Seg45.relationRow3907 at r3907
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3907
  unfold Seg45.relationRow3908 at r3908
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3908
  unfold Seg45.relationRow3909 at r3909
  unfold Seg45.relationRow3910 at r3910
  unfold Seg45.relationRow3911 at r3911
  unfold Seg45.relationRow3912 at r3912
  unfold Seg45.relationRow3913 at r3913
  have hrung72 (bit : Bool) (hbit : rho 41020 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX72 rho : Seg45.F), (seg45AccY72 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42127 : Seg45.F), (rho 42128 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX72 rho : Seg45.F), (seg45AccY72 rho : Seg45.F)⟩
        ⟨(rho 42127 : Seg45.F), (rho 42128 : Seg45.F)⟩
        ⟨(seg45AccX73 rho : Seg45.F), (seg45AccY73 rho : Seg45.F)⟩
        ⟨(rho 42140 : Seg45.F), (rho 42141 : Seg45.F)⟩ := by
    have hnextx : seg45AccX73 rho = seg45AccX72 rho + rho 42135 := by
      unfold seg45AccX73 seg45AccX72
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 72]
      ring
    have hnexty : seg45AccY73 rho = seg45AccY72 rho + rho 42136 := by
      unfold seg45AccY73 seg45AccY72
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 72]
      ring
    have ha0 : (rho 42127 + rho 42128) * (seg45AccX72 rho + seg45AccY72 rho) = rho 42129 := by
      unfold seg45AccX72 seg45AccY72
      linear_combination r3901
    have ha1 : rho 42128 * seg45AccX72 rho = rho 42130 := by
      unfold seg45AccX72
      linear_combination r3902
    have ha2 : rho 42127 * seg45AccY72 rho = rho 42131 := by
      unfold seg45AccY72
      linear_combination r3903
    have ha3 : 3021 * rho 42130 * rho 42131 = rho 42132 := by
      linear_combination r3904
    have ha4 : rho 42133 * (1 + rho 42132) = rho 42130 + rho 42131 := by
      linear_combination r3905
    have ha5 : rho 42134 * (1 - rho 42132) = rho 42129 - rho 42130 - rho 42131 := by
      linear_combination r3906
    have haddx :
        rho 42133 * (1 + 3021 * (rho 42128 * seg45AccX72 rho) * (rho 42127 * seg45AccY72 rho)) =
          rho 42128 * seg45AccX72 rho + rho 42127 * seg45AccY72 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42134 * (1 - 3021 * (rho 42128 * seg45AccX72 rho) * (rho 42127 * seg45AccY72 rho)) =
          (-1) * (rho 42128 * seg45AccX72 rho) - rho 42127 * seg45AccY72 rho +
            (seg45AccY72 rho - seg45AccX72 rho * (-1)) * (rho 42127 + rho 42128) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42134 * (1 - rho 42132) = rho 42129 - rho 42130 - rho 42131 := ha5
        _ = (-1) * rho 42130 - rho 42131 + (seg45AccY72 rho - seg45AccX72 rho * (-1)) * (rho 42127 + rho 42128) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX73 rho = seg45AccX72 rho - Bool.toZMod bit * (seg45AccX72 rho - rho 42133) := by
      have hd : rho 42135 = Bool.toZMod bit * (rho 42133 - seg45AccX72 rho) := by
        rw [← hbit]
        unfold seg45AccX72
        linear_combination -r3907
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY73 rho = seg45AccY72 rho - Bool.toZMod bit * (seg45AccY72 rho - rho 42134) := by
      have hd : rho 42136 = Bool.toZMod bit * (rho 42134 - seg45AccY72 rho) := by
        rw [← hbit]
        unfold seg45AccY72
        linear_combination -r3908
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42127 * rho 42128 = rho 42137 := by linear_combination r3909
    have hd1 : rho 42127 * rho 42127 = rho 42138 := by linear_combination r3910
    have hd2 : rho 42128 * rho 42128 = rho 42139 := by linear_combination r3911
    have hd3 : rho 42140 * (rho 42128 * rho 42128 + rho 42127 * rho 42127 * (-1)) = 2 * (rho 42127 * rho 42128) := by
      rw [hd0, hd1, hd2]
      linear_combination r3912
    have hd4 : rho 42141 * (2 - (rho 42128 * rho 42128 + rho 42127 * rho 42127 * (-1))) = rho 42128 * rho 42128 - rho 42127 * rho 42127 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3913
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX72 rho : Seg45.F), (seg45AccY72 rho : Seg45.F)⟩
      ⟨(rho 42127 : Seg45.F), (rho 42128 : Seg45.F)⟩
      ⟨(rho 42133 : Seg45.F), (rho 42134 : Seg45.F)⟩
      ⟨(seg45AccX73 rho : Seg45.F), (seg45AccY73 rho : Seg45.F)⟩
      ⟨(rho 42140 : Seg45.F), (rho 42141 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung72

theorem seg45_rows73 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3914 rho ∧ Seg45.relationRow3915 rho ∧ Seg45.relationRow3916 rho ∧ Seg45.relationRow3917 rho ∧ Seg45.relationRow3918 rho ∧ Seg45.relationRow3919 rho ∧ Seg45.relationRow3920 rho ∧ Seg45.relationRow3921 rho ∧ Seg45.relationRow3922 rho ∧ Seg45.relationRow3923 rho ∧ Seg45.relationRow3924 rho ∧ Seg45.relationRow3925 rho ∧ Seg45.relationRow3926 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3914, r3915, r3916, r3917, r3918, r3919⟩
  unfold Seg45.relationPart49 at p49
  rcases p49 with ⟨r3920, r3921, r3922, r3923, r3924, r3925, r3926, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3914, r3915, r3916, r3917, r3918, r3919, r3920, r3921, r3922, r3923, r3924, r3925, r3926⟩

theorem seg45_rung73 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41021 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX73 rho : Seg45.F), (seg45AccY73 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42140 : Seg45.F), (rho 42141 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX73 rho : Seg45.F), (seg45AccY73 rho : Seg45.F)⟩
        ⟨(rho 42140 : Seg45.F), (rho 42141 : Seg45.F)⟩
        ⟨(seg45AccX74 rho : Seg45.F), (seg45AccY74 rho : Seg45.F)⟩
        ⟨(rho 42153 : Seg45.F), (rho 42154 : Seg45.F)⟩ := by
  obtain ⟨r3914, r3915, r3916, r3917, r3918, r3919, r3920, r3921, r3922, r3923, r3924, r3925, r3926⟩ := seg45_rows73 rho h
  unfold Seg45.relationRow3914 at r3914
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3914
  unfold Seg45.relationRow3915 at r3915
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3915
  unfold Seg45.relationRow3916 at r3916
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3916
  unfold Seg45.relationRow3917 at r3917
  unfold Seg45.relationRow3918 at r3918
  unfold Seg45.relationRow3919 at r3919
  unfold Seg45.relationRow3920 at r3920
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3920
  unfold Seg45.relationRow3921 at r3921
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3921
  unfold Seg45.relationRow3922 at r3922
  unfold Seg45.relationRow3923 at r3923
  unfold Seg45.relationRow3924 at r3924
  unfold Seg45.relationRow3925 at r3925
  unfold Seg45.relationRow3926 at r3926
  have hrung73 (bit : Bool) (hbit : rho 41021 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX73 rho : Seg45.F), (seg45AccY73 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42140 : Seg45.F), (rho 42141 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX73 rho : Seg45.F), (seg45AccY73 rho : Seg45.F)⟩
        ⟨(rho 42140 : Seg45.F), (rho 42141 : Seg45.F)⟩
        ⟨(seg45AccX74 rho : Seg45.F), (seg45AccY74 rho : Seg45.F)⟩
        ⟨(rho 42153 : Seg45.F), (rho 42154 : Seg45.F)⟩ := by
    have hnextx : seg45AccX74 rho = seg45AccX73 rho + rho 42148 := by
      unfold seg45AccX74 seg45AccX73
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 73]
      ring
    have hnexty : seg45AccY74 rho = seg45AccY73 rho + rho 42149 := by
      unfold seg45AccY74 seg45AccY73
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 73]
      ring
    have ha0 : (rho 42140 + rho 42141) * (seg45AccX73 rho + seg45AccY73 rho) = rho 42142 := by
      unfold seg45AccX73 seg45AccY73
      linear_combination r3914
    have ha1 : rho 42141 * seg45AccX73 rho = rho 42143 := by
      unfold seg45AccX73
      linear_combination r3915
    have ha2 : rho 42140 * seg45AccY73 rho = rho 42144 := by
      unfold seg45AccY73
      linear_combination r3916
    have ha3 : 3021 * rho 42143 * rho 42144 = rho 42145 := by
      linear_combination r3917
    have ha4 : rho 42146 * (1 + rho 42145) = rho 42143 + rho 42144 := by
      linear_combination r3918
    have ha5 : rho 42147 * (1 - rho 42145) = rho 42142 - rho 42143 - rho 42144 := by
      linear_combination r3919
    have haddx :
        rho 42146 * (1 + 3021 * (rho 42141 * seg45AccX73 rho) * (rho 42140 * seg45AccY73 rho)) =
          rho 42141 * seg45AccX73 rho + rho 42140 * seg45AccY73 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42147 * (1 - 3021 * (rho 42141 * seg45AccX73 rho) * (rho 42140 * seg45AccY73 rho)) =
          (-1) * (rho 42141 * seg45AccX73 rho) - rho 42140 * seg45AccY73 rho +
            (seg45AccY73 rho - seg45AccX73 rho * (-1)) * (rho 42140 + rho 42141) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42147 * (1 - rho 42145) = rho 42142 - rho 42143 - rho 42144 := ha5
        _ = (-1) * rho 42143 - rho 42144 + (seg45AccY73 rho - seg45AccX73 rho * (-1)) * (rho 42140 + rho 42141) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX74 rho = seg45AccX73 rho - Bool.toZMod bit * (seg45AccX73 rho - rho 42146) := by
      have hd : rho 42148 = Bool.toZMod bit * (rho 42146 - seg45AccX73 rho) := by
        rw [← hbit]
        unfold seg45AccX73
        linear_combination -r3920
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY74 rho = seg45AccY73 rho - Bool.toZMod bit * (seg45AccY73 rho - rho 42147) := by
      have hd : rho 42149 = Bool.toZMod bit * (rho 42147 - seg45AccY73 rho) := by
        rw [← hbit]
        unfold seg45AccY73
        linear_combination -r3921
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42140 * rho 42141 = rho 42150 := by linear_combination r3922
    have hd1 : rho 42140 * rho 42140 = rho 42151 := by linear_combination r3923
    have hd2 : rho 42141 * rho 42141 = rho 42152 := by linear_combination r3924
    have hd3 : rho 42153 * (rho 42141 * rho 42141 + rho 42140 * rho 42140 * (-1)) = 2 * (rho 42140 * rho 42141) := by
      rw [hd0, hd1, hd2]
      linear_combination r3925
    have hd4 : rho 42154 * (2 - (rho 42141 * rho 42141 + rho 42140 * rho 42140 * (-1))) = rho 42141 * rho 42141 - rho 42140 * rho 42140 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3926
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX73 rho : Seg45.F), (seg45AccY73 rho : Seg45.F)⟩
      ⟨(rho 42140 : Seg45.F), (rho 42141 : Seg45.F)⟩
      ⟨(rho 42146 : Seg45.F), (rho 42147 : Seg45.F)⟩
      ⟨(seg45AccX74 rho : Seg45.F), (seg45AccY74 rho : Seg45.F)⟩
      ⟨(rho 42153 : Seg45.F), (rho 42154 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung73

theorem seg45_rows74 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3927 rho ∧ Seg45.relationRow3928 rho ∧ Seg45.relationRow3929 rho ∧ Seg45.relationRow3930 rho ∧ Seg45.relationRow3931 rho ∧ Seg45.relationRow3932 rho ∧ Seg45.relationRow3933 rho ∧ Seg45.relationRow3934 rho ∧ Seg45.relationRow3935 rho ∧ Seg45.relationRow3936 rho ∧ Seg45.relationRow3937 rho ∧ Seg45.relationRow3938 rho ∧ Seg45.relationRow3939 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, r3927, r3928, r3929, r3930, r3931, r3932, r3933, r3934, r3935, r3936, r3937, r3938, r3939, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3927, r3928, r3929, r3930, r3931, r3932, r3933, r3934, r3935, r3936, r3937, r3938, r3939⟩

theorem seg45_rung74 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41022 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX74 rho : Seg45.F), (seg45AccY74 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42153 : Seg45.F), (rho 42154 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX74 rho : Seg45.F), (seg45AccY74 rho : Seg45.F)⟩
        ⟨(rho 42153 : Seg45.F), (rho 42154 : Seg45.F)⟩
        ⟨(seg45AccX75 rho : Seg45.F), (seg45AccY75 rho : Seg45.F)⟩
        ⟨(rho 42166 : Seg45.F), (rho 42167 : Seg45.F)⟩ := by
  obtain ⟨r3927, r3928, r3929, r3930, r3931, r3932, r3933, r3934, r3935, r3936, r3937, r3938, r3939⟩ := seg45_rows74 rho h
  unfold Seg45.relationRow3927 at r3927
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3927
  unfold Seg45.relationRow3928 at r3928
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3928
  unfold Seg45.relationRow3929 at r3929
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3929
  unfold Seg45.relationRow3930 at r3930
  unfold Seg45.relationRow3931 at r3931
  unfold Seg45.relationRow3932 at r3932
  unfold Seg45.relationRow3933 at r3933
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3933
  unfold Seg45.relationRow3934 at r3934
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3934
  unfold Seg45.relationRow3935 at r3935
  unfold Seg45.relationRow3936 at r3936
  unfold Seg45.relationRow3937 at r3937
  unfold Seg45.relationRow3938 at r3938
  unfold Seg45.relationRow3939 at r3939
  have hrung74 (bit : Bool) (hbit : rho 41022 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX74 rho : Seg45.F), (seg45AccY74 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42153 : Seg45.F), (rho 42154 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX74 rho : Seg45.F), (seg45AccY74 rho : Seg45.F)⟩
        ⟨(rho 42153 : Seg45.F), (rho 42154 : Seg45.F)⟩
        ⟨(seg45AccX75 rho : Seg45.F), (seg45AccY75 rho : Seg45.F)⟩
        ⟨(rho 42166 : Seg45.F), (rho 42167 : Seg45.F)⟩ := by
    have hnextx : seg45AccX75 rho = seg45AccX74 rho + rho 42161 := by
      unfold seg45AccX75 seg45AccX74
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 74]
      ring
    have hnexty : seg45AccY75 rho = seg45AccY74 rho + rho 42162 := by
      unfold seg45AccY75 seg45AccY74
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 74]
      ring
    have ha0 : (rho 42153 + rho 42154) * (seg45AccX74 rho + seg45AccY74 rho) = rho 42155 := by
      unfold seg45AccX74 seg45AccY74
      linear_combination r3927
    have ha1 : rho 42154 * seg45AccX74 rho = rho 42156 := by
      unfold seg45AccX74
      linear_combination r3928
    have ha2 : rho 42153 * seg45AccY74 rho = rho 42157 := by
      unfold seg45AccY74
      linear_combination r3929
    have ha3 : 3021 * rho 42156 * rho 42157 = rho 42158 := by
      linear_combination r3930
    have ha4 : rho 42159 * (1 + rho 42158) = rho 42156 + rho 42157 := by
      linear_combination r3931
    have ha5 : rho 42160 * (1 - rho 42158) = rho 42155 - rho 42156 - rho 42157 := by
      linear_combination r3932
    have haddx :
        rho 42159 * (1 + 3021 * (rho 42154 * seg45AccX74 rho) * (rho 42153 * seg45AccY74 rho)) =
          rho 42154 * seg45AccX74 rho + rho 42153 * seg45AccY74 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42160 * (1 - 3021 * (rho 42154 * seg45AccX74 rho) * (rho 42153 * seg45AccY74 rho)) =
          (-1) * (rho 42154 * seg45AccX74 rho) - rho 42153 * seg45AccY74 rho +
            (seg45AccY74 rho - seg45AccX74 rho * (-1)) * (rho 42153 + rho 42154) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42160 * (1 - rho 42158) = rho 42155 - rho 42156 - rho 42157 := ha5
        _ = (-1) * rho 42156 - rho 42157 + (seg45AccY74 rho - seg45AccX74 rho * (-1)) * (rho 42153 + rho 42154) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX75 rho = seg45AccX74 rho - Bool.toZMod bit * (seg45AccX74 rho - rho 42159) := by
      have hd : rho 42161 = Bool.toZMod bit * (rho 42159 - seg45AccX74 rho) := by
        rw [← hbit]
        unfold seg45AccX74
        linear_combination -r3933
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY75 rho = seg45AccY74 rho - Bool.toZMod bit * (seg45AccY74 rho - rho 42160) := by
      have hd : rho 42162 = Bool.toZMod bit * (rho 42160 - seg45AccY74 rho) := by
        rw [← hbit]
        unfold seg45AccY74
        linear_combination -r3934
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42153 * rho 42154 = rho 42163 := by linear_combination r3935
    have hd1 : rho 42153 * rho 42153 = rho 42164 := by linear_combination r3936
    have hd2 : rho 42154 * rho 42154 = rho 42165 := by linear_combination r3937
    have hd3 : rho 42166 * (rho 42154 * rho 42154 + rho 42153 * rho 42153 * (-1)) = 2 * (rho 42153 * rho 42154) := by
      rw [hd0, hd1, hd2]
      linear_combination r3938
    have hd4 : rho 42167 * (2 - (rho 42154 * rho 42154 + rho 42153 * rho 42153 * (-1))) = rho 42154 * rho 42154 - rho 42153 * rho 42153 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3939
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX74 rho : Seg45.F), (seg45AccY74 rho : Seg45.F)⟩
      ⟨(rho 42153 : Seg45.F), (rho 42154 : Seg45.F)⟩
      ⟨(rho 42159 : Seg45.F), (rho 42160 : Seg45.F)⟩
      ⟨(seg45AccX75 rho : Seg45.F), (seg45AccY75 rho : Seg45.F)⟩
      ⟨(rho 42166 : Seg45.F), (rho 42167 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung74

theorem seg45_rows75 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3940 rho ∧ Seg45.relationRow3941 rho ∧ Seg45.relationRow3942 rho ∧ Seg45.relationRow3943 rho ∧ Seg45.relationRow3944 rho ∧ Seg45.relationRow3945 rho ∧ Seg45.relationRow3946 rho ∧ Seg45.relationRow3947 rho ∧ Seg45.relationRow3948 rho ∧ Seg45.relationRow3949 rho ∧ Seg45.relationRow3950 rho ∧ Seg45.relationRow3951 rho ∧ Seg45.relationRow3952 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3940, r3941, r3942, r3943, r3944, r3945, r3946, r3947, r3948, r3949, r3950, r3951, r3952, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3940, r3941, r3942, r3943, r3944, r3945, r3946, r3947, r3948, r3949, r3950, r3951, r3952⟩

theorem seg45_rung75 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41023 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX75 rho : Seg45.F), (seg45AccY75 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42166 : Seg45.F), (rho 42167 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX75 rho : Seg45.F), (seg45AccY75 rho : Seg45.F)⟩
        ⟨(rho 42166 : Seg45.F), (rho 42167 : Seg45.F)⟩
        ⟨(seg45AccX76 rho : Seg45.F), (seg45AccY76 rho : Seg45.F)⟩
        ⟨(rho 42179 : Seg45.F), (rho 42180 : Seg45.F)⟩ := by
  obtain ⟨r3940, r3941, r3942, r3943, r3944, r3945, r3946, r3947, r3948, r3949, r3950, r3951, r3952⟩ := seg45_rows75 rho h
  unfold Seg45.relationRow3940 at r3940
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3940
  unfold Seg45.relationRow3941 at r3941
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3941
  unfold Seg45.relationRow3942 at r3942
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3942
  unfold Seg45.relationRow3943 at r3943
  unfold Seg45.relationRow3944 at r3944
  unfold Seg45.relationRow3945 at r3945
  unfold Seg45.relationRow3946 at r3946
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3946
  unfold Seg45.relationRow3947 at r3947
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3947
  unfold Seg45.relationRow3948 at r3948
  unfold Seg45.relationRow3949 at r3949
  unfold Seg45.relationRow3950 at r3950
  unfold Seg45.relationRow3951 at r3951
  unfold Seg45.relationRow3952 at r3952
  have hrung75 (bit : Bool) (hbit : rho 41023 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX75 rho : Seg45.F), (seg45AccY75 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42166 : Seg45.F), (rho 42167 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX75 rho : Seg45.F), (seg45AccY75 rho : Seg45.F)⟩
        ⟨(rho 42166 : Seg45.F), (rho 42167 : Seg45.F)⟩
        ⟨(seg45AccX76 rho : Seg45.F), (seg45AccY76 rho : Seg45.F)⟩
        ⟨(rho 42179 : Seg45.F), (rho 42180 : Seg45.F)⟩ := by
    have hnextx : seg45AccX76 rho = seg45AccX75 rho + rho 42174 := by
      unfold seg45AccX76 seg45AccX75
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 75]
      ring
    have hnexty : seg45AccY76 rho = seg45AccY75 rho + rho 42175 := by
      unfold seg45AccY76 seg45AccY75
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 75]
      ring
    have ha0 : (rho 42166 + rho 42167) * (seg45AccX75 rho + seg45AccY75 rho) = rho 42168 := by
      unfold seg45AccX75 seg45AccY75
      linear_combination r3940
    have ha1 : rho 42167 * seg45AccX75 rho = rho 42169 := by
      unfold seg45AccX75
      linear_combination r3941
    have ha2 : rho 42166 * seg45AccY75 rho = rho 42170 := by
      unfold seg45AccY75
      linear_combination r3942
    have ha3 : 3021 * rho 42169 * rho 42170 = rho 42171 := by
      linear_combination r3943
    have ha4 : rho 42172 * (1 + rho 42171) = rho 42169 + rho 42170 := by
      linear_combination r3944
    have ha5 : rho 42173 * (1 - rho 42171) = rho 42168 - rho 42169 - rho 42170 := by
      linear_combination r3945
    have haddx :
        rho 42172 * (1 + 3021 * (rho 42167 * seg45AccX75 rho) * (rho 42166 * seg45AccY75 rho)) =
          rho 42167 * seg45AccX75 rho + rho 42166 * seg45AccY75 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42173 * (1 - 3021 * (rho 42167 * seg45AccX75 rho) * (rho 42166 * seg45AccY75 rho)) =
          (-1) * (rho 42167 * seg45AccX75 rho) - rho 42166 * seg45AccY75 rho +
            (seg45AccY75 rho - seg45AccX75 rho * (-1)) * (rho 42166 + rho 42167) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42173 * (1 - rho 42171) = rho 42168 - rho 42169 - rho 42170 := ha5
        _ = (-1) * rho 42169 - rho 42170 + (seg45AccY75 rho - seg45AccX75 rho * (-1)) * (rho 42166 + rho 42167) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX76 rho = seg45AccX75 rho - Bool.toZMod bit * (seg45AccX75 rho - rho 42172) := by
      have hd : rho 42174 = Bool.toZMod bit * (rho 42172 - seg45AccX75 rho) := by
        rw [← hbit]
        unfold seg45AccX75
        linear_combination -r3946
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY76 rho = seg45AccY75 rho - Bool.toZMod bit * (seg45AccY75 rho - rho 42173) := by
      have hd : rho 42175 = Bool.toZMod bit * (rho 42173 - seg45AccY75 rho) := by
        rw [← hbit]
        unfold seg45AccY75
        linear_combination -r3947
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42166 * rho 42167 = rho 42176 := by linear_combination r3948
    have hd1 : rho 42166 * rho 42166 = rho 42177 := by linear_combination r3949
    have hd2 : rho 42167 * rho 42167 = rho 42178 := by linear_combination r3950
    have hd3 : rho 42179 * (rho 42167 * rho 42167 + rho 42166 * rho 42166 * (-1)) = 2 * (rho 42166 * rho 42167) := by
      rw [hd0, hd1, hd2]
      linear_combination r3951
    have hd4 : rho 42180 * (2 - (rho 42167 * rho 42167 + rho 42166 * rho 42166 * (-1))) = rho 42167 * rho 42167 - rho 42166 * rho 42166 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3952
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX75 rho : Seg45.F), (seg45AccY75 rho : Seg45.F)⟩
      ⟨(rho 42166 : Seg45.F), (rho 42167 : Seg45.F)⟩
      ⟨(rho 42172 : Seg45.F), (rho 42173 : Seg45.F)⟩
      ⟨(seg45AccX76 rho : Seg45.F), (seg45AccY76 rho : Seg45.F)⟩
      ⟨(rho 42179 : Seg45.F), (rho 42180 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung75

theorem seg45_rows76 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3953 rho ∧ Seg45.relationRow3954 rho ∧ Seg45.relationRow3955 rho ∧ Seg45.relationRow3956 rho ∧ Seg45.relationRow3957 rho ∧ Seg45.relationRow3958 rho ∧ Seg45.relationRow3959 rho ∧ Seg45.relationRow3960 rho ∧ Seg45.relationRow3961 rho ∧ Seg45.relationRow3962 rho ∧ Seg45.relationRow3963 rho ∧ Seg45.relationRow3964 rho ∧ Seg45.relationRow3965 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3953, r3954, r3955, r3956, r3957, r3958, r3959, r3960, r3961, r3962, r3963, r3964, r3965, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3953, r3954, r3955, r3956, r3957, r3958, r3959, r3960, r3961, r3962, r3963, r3964, r3965⟩

theorem seg45_rung76 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41024 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX76 rho : Seg45.F), (seg45AccY76 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42179 : Seg45.F), (rho 42180 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX76 rho : Seg45.F), (seg45AccY76 rho : Seg45.F)⟩
        ⟨(rho 42179 : Seg45.F), (rho 42180 : Seg45.F)⟩
        ⟨(seg45AccX77 rho : Seg45.F), (seg45AccY77 rho : Seg45.F)⟩
        ⟨(rho 42192 : Seg45.F), (rho 42193 : Seg45.F)⟩ := by
  obtain ⟨r3953, r3954, r3955, r3956, r3957, r3958, r3959, r3960, r3961, r3962, r3963, r3964, r3965⟩ := seg45_rows76 rho h
  unfold Seg45.relationRow3953 at r3953
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3953
  unfold Seg45.relationRow3954 at r3954
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3954
  unfold Seg45.relationRow3955 at r3955
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3955
  unfold Seg45.relationRow3956 at r3956
  unfold Seg45.relationRow3957 at r3957
  unfold Seg45.relationRow3958 at r3958
  unfold Seg45.relationRow3959 at r3959
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3959
  unfold Seg45.relationRow3960 at r3960
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3960
  unfold Seg45.relationRow3961 at r3961
  unfold Seg45.relationRow3962 at r3962
  unfold Seg45.relationRow3963 at r3963
  unfold Seg45.relationRow3964 at r3964
  unfold Seg45.relationRow3965 at r3965
  have hrung76 (bit : Bool) (hbit : rho 41024 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX76 rho : Seg45.F), (seg45AccY76 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42179 : Seg45.F), (rho 42180 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX76 rho : Seg45.F), (seg45AccY76 rho : Seg45.F)⟩
        ⟨(rho 42179 : Seg45.F), (rho 42180 : Seg45.F)⟩
        ⟨(seg45AccX77 rho : Seg45.F), (seg45AccY77 rho : Seg45.F)⟩
        ⟨(rho 42192 : Seg45.F), (rho 42193 : Seg45.F)⟩ := by
    have hnextx : seg45AccX77 rho = seg45AccX76 rho + rho 42187 := by
      unfold seg45AccX77 seg45AccX76
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 76]
      ring
    have hnexty : seg45AccY77 rho = seg45AccY76 rho + rho 42188 := by
      unfold seg45AccY77 seg45AccY76
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 76]
      ring
    have ha0 : (rho 42179 + rho 42180) * (seg45AccX76 rho + seg45AccY76 rho) = rho 42181 := by
      unfold seg45AccX76 seg45AccY76
      linear_combination r3953
    have ha1 : rho 42180 * seg45AccX76 rho = rho 42182 := by
      unfold seg45AccX76
      linear_combination r3954
    have ha2 : rho 42179 * seg45AccY76 rho = rho 42183 := by
      unfold seg45AccY76
      linear_combination r3955
    have ha3 : 3021 * rho 42182 * rho 42183 = rho 42184 := by
      linear_combination r3956
    have ha4 : rho 42185 * (1 + rho 42184) = rho 42182 + rho 42183 := by
      linear_combination r3957
    have ha5 : rho 42186 * (1 - rho 42184) = rho 42181 - rho 42182 - rho 42183 := by
      linear_combination r3958
    have haddx :
        rho 42185 * (1 + 3021 * (rho 42180 * seg45AccX76 rho) * (rho 42179 * seg45AccY76 rho)) =
          rho 42180 * seg45AccX76 rho + rho 42179 * seg45AccY76 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42186 * (1 - 3021 * (rho 42180 * seg45AccX76 rho) * (rho 42179 * seg45AccY76 rho)) =
          (-1) * (rho 42180 * seg45AccX76 rho) - rho 42179 * seg45AccY76 rho +
            (seg45AccY76 rho - seg45AccX76 rho * (-1)) * (rho 42179 + rho 42180) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42186 * (1 - rho 42184) = rho 42181 - rho 42182 - rho 42183 := ha5
        _ = (-1) * rho 42182 - rho 42183 + (seg45AccY76 rho - seg45AccX76 rho * (-1)) * (rho 42179 + rho 42180) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX77 rho = seg45AccX76 rho - Bool.toZMod bit * (seg45AccX76 rho - rho 42185) := by
      have hd : rho 42187 = Bool.toZMod bit * (rho 42185 - seg45AccX76 rho) := by
        rw [← hbit]
        unfold seg45AccX76
        linear_combination -r3959
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY77 rho = seg45AccY76 rho - Bool.toZMod bit * (seg45AccY76 rho - rho 42186) := by
      have hd : rho 42188 = Bool.toZMod bit * (rho 42186 - seg45AccY76 rho) := by
        rw [← hbit]
        unfold seg45AccY76
        linear_combination -r3960
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42179 * rho 42180 = rho 42189 := by linear_combination r3961
    have hd1 : rho 42179 * rho 42179 = rho 42190 := by linear_combination r3962
    have hd2 : rho 42180 * rho 42180 = rho 42191 := by linear_combination r3963
    have hd3 : rho 42192 * (rho 42180 * rho 42180 + rho 42179 * rho 42179 * (-1)) = 2 * (rho 42179 * rho 42180) := by
      rw [hd0, hd1, hd2]
      linear_combination r3964
    have hd4 : rho 42193 * (2 - (rho 42180 * rho 42180 + rho 42179 * rho 42179 * (-1))) = rho 42180 * rho 42180 - rho 42179 * rho 42179 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3965
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX76 rho : Seg45.F), (seg45AccY76 rho : Seg45.F)⟩
      ⟨(rho 42179 : Seg45.F), (rho 42180 : Seg45.F)⟩
      ⟨(rho 42185 : Seg45.F), (rho 42186 : Seg45.F)⟩
      ⟨(seg45AccX77 rho : Seg45.F), (seg45AccY77 rho : Seg45.F)⟩
      ⟨(rho 42192 : Seg45.F), (rho 42193 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung76

theorem seg45_hstep_c6 (rho : Nat -> Seg45.F) (h : Seg45.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (40948 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 66 ≤ i → i < 77 →
      EdwardsBridge.onCurve (seg45LadderAccState rho i) →
      EdwardsBridge.onCurve (seg45LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg45LadderAccState rho i) (seg45LadderCurState rho i)
        (seg45LadderAccState rho (i + 1)) (seg45LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg45_rung66 rho h bits[66]! (hbitAt 66 (by omega)) hacc hcur
  · exact seg45_rung67 rho h bits[67]! (hbitAt 67 (by omega)) hacc hcur
  · exact seg45_rung68 rho h bits[68]! (hbitAt 68 (by omega)) hacc hcur
  · exact seg45_rung69 rho h bits[69]! (hbitAt 69 (by omega)) hacc hcur
  · exact seg45_rung70 rho h bits[70]! (hbitAt 70 (by omega)) hacc hcur
  · exact seg45_rung71 rho h bits[71]! (hbitAt 71 (by omega)) hacc hcur
  · exact seg45_rung72 rho h bits[72]! (hbitAt 72 (by omega)) hacc hcur
  · exact seg45_rung73 rho h bits[73]! (hbitAt 73 (by omega)) hacc hcur
  · exact seg45_rung74 rho h bits[74]! (hbitAt 74 (by omega)) hacc hcur
  · exact seg45_rung75 rho h bits[75]! (hbitAt 75 (by omega)) hacc hcur
  · exact seg45_rung76 rho h bits[76]! (hbitAt 76 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
