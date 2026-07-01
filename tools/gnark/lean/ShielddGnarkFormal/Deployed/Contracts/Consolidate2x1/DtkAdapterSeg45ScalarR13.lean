import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg45_rows143 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4824 rho ∧ Seg45.relationRow4825 rho ∧ Seg45.relationRow4826 rho ∧ Seg45.relationRow4827 rho ∧ Seg45.relationRow4828 rho ∧ Seg45.relationRow4829 rho ∧ Seg45.relationRow4830 rho ∧ Seg45.relationRow4831 rho ∧ Seg45.relationRow4832 rho ∧ Seg45.relationRow4833 rho ∧ Seg45.relationRow4834 rho ∧ Seg45.relationRow4835 rho ∧ Seg45.relationRow4836 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p60, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4824, r4825, r4826, r4827, r4828, r4829, r4830, r4831, r4832, r4833, r4834, r4835, r4836, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4824, r4825, r4826, r4827, r4828, r4829, r4830, r4831, r4832, r4833, r4834, r4835, r4836⟩

theorem seg45_rung143 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41091 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX143 rho : Seg45.F), (seg45AccY143 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43050 : Seg45.F), (rho 43051 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX143 rho : Seg45.F), (seg45AccY143 rho : Seg45.F)⟩
        ⟨(rho 43050 : Seg45.F), (rho 43051 : Seg45.F)⟩
        ⟨(seg45AccX144 rho : Seg45.F), (seg45AccY144 rho : Seg45.F)⟩
        ⟨(rho 43063 : Seg45.F), (rho 43064 : Seg45.F)⟩ := by
  obtain ⟨r4824, r4825, r4826, r4827, r4828, r4829, r4830, r4831, r4832, r4833, r4834, r4835, r4836⟩ := seg45_rows143 rho h
  unfold Seg45.relationRow4824 at r4824
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4824
  unfold Seg45.relationRow4825 at r4825
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4825
  unfold Seg45.relationRow4826 at r4826
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4826
  unfold Seg45.relationRow4827 at r4827
  unfold Seg45.relationRow4828 at r4828
  unfold Seg45.relationRow4829 at r4829
  unfold Seg45.relationRow4830 at r4830
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4830
  unfold Seg45.relationRow4831 at r4831
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4831
  unfold Seg45.relationRow4832 at r4832
  unfold Seg45.relationRow4833 at r4833
  unfold Seg45.relationRow4834 at r4834
  unfold Seg45.relationRow4835 at r4835
  unfold Seg45.relationRow4836 at r4836
  have hrung143 (bit : Bool) (hbit : rho 41091 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX143 rho : Seg45.F), (seg45AccY143 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43050 : Seg45.F), (rho 43051 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX143 rho : Seg45.F), (seg45AccY143 rho : Seg45.F)⟩
        ⟨(rho 43050 : Seg45.F), (rho 43051 : Seg45.F)⟩
        ⟨(seg45AccX144 rho : Seg45.F), (seg45AccY144 rho : Seg45.F)⟩
        ⟨(rho 43063 : Seg45.F), (rho 43064 : Seg45.F)⟩ := by
    have hnextx : seg45AccX144 rho = seg45AccX143 rho + rho 43058 := by
      unfold seg45AccX144 seg45AccX143
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 143]
      ring
    have hnexty : seg45AccY144 rho = seg45AccY143 rho + rho 43059 := by
      unfold seg45AccY144 seg45AccY143
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 143]
      ring
    have ha0 : (rho 43050 + rho 43051) * (seg45AccX143 rho + seg45AccY143 rho) = rho 43052 := by
      unfold seg45AccX143 seg45AccY143
      linear_combination r4824
    have ha1 : rho 43051 * seg45AccX143 rho = rho 43053 := by
      unfold seg45AccX143
      linear_combination r4825
    have ha2 : rho 43050 * seg45AccY143 rho = rho 43054 := by
      unfold seg45AccY143
      linear_combination r4826
    have ha3 : 3021 * rho 43053 * rho 43054 = rho 43055 := by
      linear_combination r4827
    have ha4 : rho 43056 * (1 + rho 43055) = rho 43053 + rho 43054 := by
      linear_combination r4828
    have ha5 : rho 43057 * (1 - rho 43055) = rho 43052 - rho 43053 - rho 43054 := by
      linear_combination r4829
    have haddx :
        rho 43056 * (1 + 3021 * (rho 43051 * seg45AccX143 rho) * (rho 43050 * seg45AccY143 rho)) =
          rho 43051 * seg45AccX143 rho + rho 43050 * seg45AccY143 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43057 * (1 - 3021 * (rho 43051 * seg45AccX143 rho) * (rho 43050 * seg45AccY143 rho)) =
          (-1) * (rho 43051 * seg45AccX143 rho) - rho 43050 * seg45AccY143 rho +
            (seg45AccY143 rho - seg45AccX143 rho * (-1)) * (rho 43050 + rho 43051) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43057 * (1 - rho 43055) = rho 43052 - rho 43053 - rho 43054 := ha5
        _ = (-1) * rho 43053 - rho 43054 + (seg45AccY143 rho - seg45AccX143 rho * (-1)) * (rho 43050 + rho 43051) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX144 rho = seg45AccX143 rho - Bool.toZMod bit * (seg45AccX143 rho - rho 43056) := by
      have hd : rho 43058 = Bool.toZMod bit * (rho 43056 - seg45AccX143 rho) := by
        rw [← hbit]
        unfold seg45AccX143
        linear_combination -r4830
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY144 rho = seg45AccY143 rho - Bool.toZMod bit * (seg45AccY143 rho - rho 43057) := by
      have hd : rho 43059 = Bool.toZMod bit * (rho 43057 - seg45AccY143 rho) := by
        rw [← hbit]
        unfold seg45AccY143
        linear_combination -r4831
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43050 * rho 43051 = rho 43060 := by linear_combination r4832
    have hd1 : rho 43050 * rho 43050 = rho 43061 := by linear_combination r4833
    have hd2 : rho 43051 * rho 43051 = rho 43062 := by linear_combination r4834
    have hd3 : rho 43063 * (rho 43051 * rho 43051 + rho 43050 * rho 43050 * (-1)) = 2 * (rho 43050 * rho 43051) := by
      rw [hd0, hd1, hd2]
      linear_combination r4835
    have hd4 : rho 43064 * (2 - (rho 43051 * rho 43051 + rho 43050 * rho 43050 * (-1))) = rho 43051 * rho 43051 - rho 43050 * rho 43050 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4836
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX143 rho : Seg45.F), (seg45AccY143 rho : Seg45.F)⟩
      ⟨(rho 43050 : Seg45.F), (rho 43051 : Seg45.F)⟩
      ⟨(rho 43056 : Seg45.F), (rho 43057 : Seg45.F)⟩
      ⟨(seg45AccX144 rho : Seg45.F), (seg45AccY144 rho : Seg45.F)⟩
      ⟨(rho 43063 : Seg45.F), (rho 43064 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung143

theorem seg45_rows144 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4837 rho ∧ Seg45.relationRow4838 rho ∧ Seg45.relationRow4839 rho ∧ Seg45.relationRow4840 rho ∧ Seg45.relationRow4841 rho ∧ Seg45.relationRow4842 rho ∧ Seg45.relationRow4843 rho ∧ Seg45.relationRow4844 rho ∧ Seg45.relationRow4845 rho ∧ Seg45.relationRow4846 rho ∧ Seg45.relationRow4847 rho ∧ Seg45.relationRow4848 rho ∧ Seg45.relationRow4849 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p60, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4837, r4838, r4839, r4840, r4841, r4842, r4843, r4844, r4845, r4846, r4847, r4848, r4849, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4837, r4838, r4839, r4840, r4841, r4842, r4843, r4844, r4845, r4846, r4847, r4848, r4849⟩

theorem seg45_rung144 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41092 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX144 rho : Seg45.F), (seg45AccY144 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43063 : Seg45.F), (rho 43064 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX144 rho : Seg45.F), (seg45AccY144 rho : Seg45.F)⟩
        ⟨(rho 43063 : Seg45.F), (rho 43064 : Seg45.F)⟩
        ⟨(seg45AccX145 rho : Seg45.F), (seg45AccY145 rho : Seg45.F)⟩
        ⟨(rho 43076 : Seg45.F), (rho 43077 : Seg45.F)⟩ := by
  obtain ⟨r4837, r4838, r4839, r4840, r4841, r4842, r4843, r4844, r4845, r4846, r4847, r4848, r4849⟩ := seg45_rows144 rho h
  unfold Seg45.relationRow4837 at r4837
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4837
  unfold Seg45.relationRow4838 at r4838
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4838
  unfold Seg45.relationRow4839 at r4839
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4839
  unfold Seg45.relationRow4840 at r4840
  unfold Seg45.relationRow4841 at r4841
  unfold Seg45.relationRow4842 at r4842
  unfold Seg45.relationRow4843 at r4843
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4843
  unfold Seg45.relationRow4844 at r4844
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4844
  unfold Seg45.relationRow4845 at r4845
  unfold Seg45.relationRow4846 at r4846
  unfold Seg45.relationRow4847 at r4847
  unfold Seg45.relationRow4848 at r4848
  unfold Seg45.relationRow4849 at r4849
  have hrung144 (bit : Bool) (hbit : rho 41092 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX144 rho : Seg45.F), (seg45AccY144 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43063 : Seg45.F), (rho 43064 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX144 rho : Seg45.F), (seg45AccY144 rho : Seg45.F)⟩
        ⟨(rho 43063 : Seg45.F), (rho 43064 : Seg45.F)⟩
        ⟨(seg45AccX145 rho : Seg45.F), (seg45AccY145 rho : Seg45.F)⟩
        ⟨(rho 43076 : Seg45.F), (rho 43077 : Seg45.F)⟩ := by
    have hnextx : seg45AccX145 rho = seg45AccX144 rho + rho 43071 := by
      unfold seg45AccX145 seg45AccX144
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 144]
      ring
    have hnexty : seg45AccY145 rho = seg45AccY144 rho + rho 43072 := by
      unfold seg45AccY145 seg45AccY144
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 144]
      ring
    have ha0 : (rho 43063 + rho 43064) * (seg45AccX144 rho + seg45AccY144 rho) = rho 43065 := by
      unfold seg45AccX144 seg45AccY144
      linear_combination r4837
    have ha1 : rho 43064 * seg45AccX144 rho = rho 43066 := by
      unfold seg45AccX144
      linear_combination r4838
    have ha2 : rho 43063 * seg45AccY144 rho = rho 43067 := by
      unfold seg45AccY144
      linear_combination r4839
    have ha3 : 3021 * rho 43066 * rho 43067 = rho 43068 := by
      linear_combination r4840
    have ha4 : rho 43069 * (1 + rho 43068) = rho 43066 + rho 43067 := by
      linear_combination r4841
    have ha5 : rho 43070 * (1 - rho 43068) = rho 43065 - rho 43066 - rho 43067 := by
      linear_combination r4842
    have haddx :
        rho 43069 * (1 + 3021 * (rho 43064 * seg45AccX144 rho) * (rho 43063 * seg45AccY144 rho)) =
          rho 43064 * seg45AccX144 rho + rho 43063 * seg45AccY144 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43070 * (1 - 3021 * (rho 43064 * seg45AccX144 rho) * (rho 43063 * seg45AccY144 rho)) =
          (-1) * (rho 43064 * seg45AccX144 rho) - rho 43063 * seg45AccY144 rho +
            (seg45AccY144 rho - seg45AccX144 rho * (-1)) * (rho 43063 + rho 43064) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43070 * (1 - rho 43068) = rho 43065 - rho 43066 - rho 43067 := ha5
        _ = (-1) * rho 43066 - rho 43067 + (seg45AccY144 rho - seg45AccX144 rho * (-1)) * (rho 43063 + rho 43064) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX145 rho = seg45AccX144 rho - Bool.toZMod bit * (seg45AccX144 rho - rho 43069) := by
      have hd : rho 43071 = Bool.toZMod bit * (rho 43069 - seg45AccX144 rho) := by
        rw [← hbit]
        unfold seg45AccX144
        linear_combination -r4843
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY145 rho = seg45AccY144 rho - Bool.toZMod bit * (seg45AccY144 rho - rho 43070) := by
      have hd : rho 43072 = Bool.toZMod bit * (rho 43070 - seg45AccY144 rho) := by
        rw [← hbit]
        unfold seg45AccY144
        linear_combination -r4844
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43063 * rho 43064 = rho 43073 := by linear_combination r4845
    have hd1 : rho 43063 * rho 43063 = rho 43074 := by linear_combination r4846
    have hd2 : rho 43064 * rho 43064 = rho 43075 := by linear_combination r4847
    have hd3 : rho 43076 * (rho 43064 * rho 43064 + rho 43063 * rho 43063 * (-1)) = 2 * (rho 43063 * rho 43064) := by
      rw [hd0, hd1, hd2]
      linear_combination r4848
    have hd4 : rho 43077 * (2 - (rho 43064 * rho 43064 + rho 43063 * rho 43063 * (-1))) = rho 43064 * rho 43064 - rho 43063 * rho 43063 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4849
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX144 rho : Seg45.F), (seg45AccY144 rho : Seg45.F)⟩
      ⟨(rho 43063 : Seg45.F), (rho 43064 : Seg45.F)⟩
      ⟨(rho 43069 : Seg45.F), (rho 43070 : Seg45.F)⟩
      ⟨(seg45AccX145 rho : Seg45.F), (seg45AccY145 rho : Seg45.F)⟩
      ⟨(rho 43076 : Seg45.F), (rho 43077 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung144

theorem seg45_rows145 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4850 rho ∧ Seg45.relationRow4851 rho ∧ Seg45.relationRow4852 rho ∧ Seg45.relationRow4853 rho ∧ Seg45.relationRow4854 rho ∧ Seg45.relationRow4855 rho ∧ Seg45.relationRow4856 rho ∧ Seg45.relationRow4857 rho ∧ Seg45.relationRow4858 rho ∧ Seg45.relationRow4859 rho ∧ Seg45.relationRow4860 rho ∧ Seg45.relationRow4861 rho ∧ Seg45.relationRow4862 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p60, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4850, r4851, r4852, r4853, r4854, r4855, r4856, r4857, r4858, r4859, r4860, r4861, r4862, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4850, r4851, r4852, r4853, r4854, r4855, r4856, r4857, r4858, r4859, r4860, r4861, r4862⟩

theorem seg45_rung145 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41093 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX145 rho : Seg45.F), (seg45AccY145 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43076 : Seg45.F), (rho 43077 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX145 rho : Seg45.F), (seg45AccY145 rho : Seg45.F)⟩
        ⟨(rho 43076 : Seg45.F), (rho 43077 : Seg45.F)⟩
        ⟨(seg45AccX146 rho : Seg45.F), (seg45AccY146 rho : Seg45.F)⟩
        ⟨(rho 43089 : Seg45.F), (rho 43090 : Seg45.F)⟩ := by
  obtain ⟨r4850, r4851, r4852, r4853, r4854, r4855, r4856, r4857, r4858, r4859, r4860, r4861, r4862⟩ := seg45_rows145 rho h
  unfold Seg45.relationRow4850 at r4850
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4850
  unfold Seg45.relationRow4851 at r4851
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4851
  unfold Seg45.relationRow4852 at r4852
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4852
  unfold Seg45.relationRow4853 at r4853
  unfold Seg45.relationRow4854 at r4854
  unfold Seg45.relationRow4855 at r4855
  unfold Seg45.relationRow4856 at r4856
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4856
  unfold Seg45.relationRow4857 at r4857
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4857
  unfold Seg45.relationRow4858 at r4858
  unfold Seg45.relationRow4859 at r4859
  unfold Seg45.relationRow4860 at r4860
  unfold Seg45.relationRow4861 at r4861
  unfold Seg45.relationRow4862 at r4862
  have hrung145 (bit : Bool) (hbit : rho 41093 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX145 rho : Seg45.F), (seg45AccY145 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43076 : Seg45.F), (rho 43077 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX145 rho : Seg45.F), (seg45AccY145 rho : Seg45.F)⟩
        ⟨(rho 43076 : Seg45.F), (rho 43077 : Seg45.F)⟩
        ⟨(seg45AccX146 rho : Seg45.F), (seg45AccY146 rho : Seg45.F)⟩
        ⟨(rho 43089 : Seg45.F), (rho 43090 : Seg45.F)⟩ := by
    have hnextx : seg45AccX146 rho = seg45AccX145 rho + rho 43084 := by
      unfold seg45AccX146 seg45AccX145
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 145]
      ring
    have hnexty : seg45AccY146 rho = seg45AccY145 rho + rho 43085 := by
      unfold seg45AccY146 seg45AccY145
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 145]
      ring
    have ha0 : (rho 43076 + rho 43077) * (seg45AccX145 rho + seg45AccY145 rho) = rho 43078 := by
      unfold seg45AccX145 seg45AccY145
      linear_combination r4850
    have ha1 : rho 43077 * seg45AccX145 rho = rho 43079 := by
      unfold seg45AccX145
      linear_combination r4851
    have ha2 : rho 43076 * seg45AccY145 rho = rho 43080 := by
      unfold seg45AccY145
      linear_combination r4852
    have ha3 : 3021 * rho 43079 * rho 43080 = rho 43081 := by
      linear_combination r4853
    have ha4 : rho 43082 * (1 + rho 43081) = rho 43079 + rho 43080 := by
      linear_combination r4854
    have ha5 : rho 43083 * (1 - rho 43081) = rho 43078 - rho 43079 - rho 43080 := by
      linear_combination r4855
    have haddx :
        rho 43082 * (1 + 3021 * (rho 43077 * seg45AccX145 rho) * (rho 43076 * seg45AccY145 rho)) =
          rho 43077 * seg45AccX145 rho + rho 43076 * seg45AccY145 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43083 * (1 - 3021 * (rho 43077 * seg45AccX145 rho) * (rho 43076 * seg45AccY145 rho)) =
          (-1) * (rho 43077 * seg45AccX145 rho) - rho 43076 * seg45AccY145 rho +
            (seg45AccY145 rho - seg45AccX145 rho * (-1)) * (rho 43076 + rho 43077) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43083 * (1 - rho 43081) = rho 43078 - rho 43079 - rho 43080 := ha5
        _ = (-1) * rho 43079 - rho 43080 + (seg45AccY145 rho - seg45AccX145 rho * (-1)) * (rho 43076 + rho 43077) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX146 rho = seg45AccX145 rho - Bool.toZMod bit * (seg45AccX145 rho - rho 43082) := by
      have hd : rho 43084 = Bool.toZMod bit * (rho 43082 - seg45AccX145 rho) := by
        rw [← hbit]
        unfold seg45AccX145
        linear_combination -r4856
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY146 rho = seg45AccY145 rho - Bool.toZMod bit * (seg45AccY145 rho - rho 43083) := by
      have hd : rho 43085 = Bool.toZMod bit * (rho 43083 - seg45AccY145 rho) := by
        rw [← hbit]
        unfold seg45AccY145
        linear_combination -r4857
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43076 * rho 43077 = rho 43086 := by linear_combination r4858
    have hd1 : rho 43076 * rho 43076 = rho 43087 := by linear_combination r4859
    have hd2 : rho 43077 * rho 43077 = rho 43088 := by linear_combination r4860
    have hd3 : rho 43089 * (rho 43077 * rho 43077 + rho 43076 * rho 43076 * (-1)) = 2 * (rho 43076 * rho 43077) := by
      rw [hd0, hd1, hd2]
      linear_combination r4861
    have hd4 : rho 43090 * (2 - (rho 43077 * rho 43077 + rho 43076 * rho 43076 * (-1))) = rho 43077 * rho 43077 - rho 43076 * rho 43076 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4862
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX145 rho : Seg45.F), (seg45AccY145 rho : Seg45.F)⟩
      ⟨(rho 43076 : Seg45.F), (rho 43077 : Seg45.F)⟩
      ⟨(rho 43082 : Seg45.F), (rho 43083 : Seg45.F)⟩
      ⟨(seg45AccX146 rho : Seg45.F), (seg45AccY146 rho : Seg45.F)⟩
      ⟨(rho 43089 : Seg45.F), (rho 43090 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung145

theorem seg45_rows146 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4863 rho ∧ Seg45.relationRow4864 rho ∧ Seg45.relationRow4865 rho ∧ Seg45.relationRow4866 rho ∧ Seg45.relationRow4867 rho ∧ Seg45.relationRow4868 rho ∧ Seg45.relationRow4869 rho ∧ Seg45.relationRow4870 rho ∧ Seg45.relationRow4871 rho ∧ Seg45.relationRow4872 rho ∧ Seg45.relationRow4873 rho ∧ Seg45.relationRow4874 rho ∧ Seg45.relationRow4875 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p60, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4863, r4864, r4865, r4866, r4867, r4868, r4869, r4870, r4871, r4872, r4873, r4874, r4875, _, _, _, _⟩
  exact ⟨r4863, r4864, r4865, r4866, r4867, r4868, r4869, r4870, r4871, r4872, r4873, r4874, r4875⟩

theorem seg45_rung146 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41094 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX146 rho : Seg45.F), (seg45AccY146 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43089 : Seg45.F), (rho 43090 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX146 rho : Seg45.F), (seg45AccY146 rho : Seg45.F)⟩
        ⟨(rho 43089 : Seg45.F), (rho 43090 : Seg45.F)⟩
        ⟨(seg45AccX147 rho : Seg45.F), (seg45AccY147 rho : Seg45.F)⟩
        ⟨(rho 43102 : Seg45.F), (rho 43103 : Seg45.F)⟩ := by
  obtain ⟨r4863, r4864, r4865, r4866, r4867, r4868, r4869, r4870, r4871, r4872, r4873, r4874, r4875⟩ := seg45_rows146 rho h
  unfold Seg45.relationRow4863 at r4863
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4863
  unfold Seg45.relationRow4864 at r4864
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4864
  unfold Seg45.relationRow4865 at r4865
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4865
  unfold Seg45.relationRow4866 at r4866
  unfold Seg45.relationRow4867 at r4867
  unfold Seg45.relationRow4868 at r4868
  unfold Seg45.relationRow4869 at r4869
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4869
  unfold Seg45.relationRow4870 at r4870
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4870
  unfold Seg45.relationRow4871 at r4871
  unfold Seg45.relationRow4872 at r4872
  unfold Seg45.relationRow4873 at r4873
  unfold Seg45.relationRow4874 at r4874
  unfold Seg45.relationRow4875 at r4875
  have hrung146 (bit : Bool) (hbit : rho 41094 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX146 rho : Seg45.F), (seg45AccY146 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43089 : Seg45.F), (rho 43090 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX146 rho : Seg45.F), (seg45AccY146 rho : Seg45.F)⟩
        ⟨(rho 43089 : Seg45.F), (rho 43090 : Seg45.F)⟩
        ⟨(seg45AccX147 rho : Seg45.F), (seg45AccY147 rho : Seg45.F)⟩
        ⟨(rho 43102 : Seg45.F), (rho 43103 : Seg45.F)⟩ := by
    have hnextx : seg45AccX147 rho = seg45AccX146 rho + rho 43097 := by
      unfold seg45AccX147 seg45AccX146
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 146]
      ring
    have hnexty : seg45AccY147 rho = seg45AccY146 rho + rho 43098 := by
      unfold seg45AccY147 seg45AccY146
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 146]
      ring
    have ha0 : (rho 43089 + rho 43090) * (seg45AccX146 rho + seg45AccY146 rho) = rho 43091 := by
      unfold seg45AccX146 seg45AccY146
      linear_combination r4863
    have ha1 : rho 43090 * seg45AccX146 rho = rho 43092 := by
      unfold seg45AccX146
      linear_combination r4864
    have ha2 : rho 43089 * seg45AccY146 rho = rho 43093 := by
      unfold seg45AccY146
      linear_combination r4865
    have ha3 : 3021 * rho 43092 * rho 43093 = rho 43094 := by
      linear_combination r4866
    have ha4 : rho 43095 * (1 + rho 43094) = rho 43092 + rho 43093 := by
      linear_combination r4867
    have ha5 : rho 43096 * (1 - rho 43094) = rho 43091 - rho 43092 - rho 43093 := by
      linear_combination r4868
    have haddx :
        rho 43095 * (1 + 3021 * (rho 43090 * seg45AccX146 rho) * (rho 43089 * seg45AccY146 rho)) =
          rho 43090 * seg45AccX146 rho + rho 43089 * seg45AccY146 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43096 * (1 - 3021 * (rho 43090 * seg45AccX146 rho) * (rho 43089 * seg45AccY146 rho)) =
          (-1) * (rho 43090 * seg45AccX146 rho) - rho 43089 * seg45AccY146 rho +
            (seg45AccY146 rho - seg45AccX146 rho * (-1)) * (rho 43089 + rho 43090) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43096 * (1 - rho 43094) = rho 43091 - rho 43092 - rho 43093 := ha5
        _ = (-1) * rho 43092 - rho 43093 + (seg45AccY146 rho - seg45AccX146 rho * (-1)) * (rho 43089 + rho 43090) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX147 rho = seg45AccX146 rho - Bool.toZMod bit * (seg45AccX146 rho - rho 43095) := by
      have hd : rho 43097 = Bool.toZMod bit * (rho 43095 - seg45AccX146 rho) := by
        rw [← hbit]
        unfold seg45AccX146
        linear_combination -r4869
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY147 rho = seg45AccY146 rho - Bool.toZMod bit * (seg45AccY146 rho - rho 43096) := by
      have hd : rho 43098 = Bool.toZMod bit * (rho 43096 - seg45AccY146 rho) := by
        rw [← hbit]
        unfold seg45AccY146
        linear_combination -r4870
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43089 * rho 43090 = rho 43099 := by linear_combination r4871
    have hd1 : rho 43089 * rho 43089 = rho 43100 := by linear_combination r4872
    have hd2 : rho 43090 * rho 43090 = rho 43101 := by linear_combination r4873
    have hd3 : rho 43102 * (rho 43090 * rho 43090 + rho 43089 * rho 43089 * (-1)) = 2 * (rho 43089 * rho 43090) := by
      rw [hd0, hd1, hd2]
      linear_combination r4874
    have hd4 : rho 43103 * (2 - (rho 43090 * rho 43090 + rho 43089 * rho 43089 * (-1))) = rho 43090 * rho 43090 - rho 43089 * rho 43089 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4875
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX146 rho : Seg45.F), (seg45AccY146 rho : Seg45.F)⟩
      ⟨(rho 43089 : Seg45.F), (rho 43090 : Seg45.F)⟩
      ⟨(rho 43095 : Seg45.F), (rho 43096 : Seg45.F)⟩
      ⟨(seg45AccX147 rho : Seg45.F), (seg45AccY147 rho : Seg45.F)⟩
      ⟨(rho 43102 : Seg45.F), (rho 43103 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung146

theorem seg45_rows147 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4876 rho ∧ Seg45.relationRow4877 rho ∧ Seg45.relationRow4878 rho ∧ Seg45.relationRow4879 rho ∧ Seg45.relationRow4880 rho ∧ Seg45.relationRow4881 rho ∧ Seg45.relationRow4882 rho ∧ Seg45.relationRow4883 rho ∧ Seg45.relationRow4884 rho ∧ Seg45.relationRow4885 rho ∧ Seg45.relationRow4886 rho ∧ Seg45.relationRow4887 rho ∧ Seg45.relationRow4888 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p60, p61, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4876, r4877, r4878, r4879⟩
  unfold Seg45.relationPart61 at p61
  rcases p61 with ⟨r4880, r4881, r4882, r4883, r4884, r4885, r4886, r4887, r4888, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4876, r4877, r4878, r4879, r4880, r4881, r4882, r4883, r4884, r4885, r4886, r4887, r4888⟩

theorem seg45_rung147 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41095 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX147 rho : Seg45.F), (seg45AccY147 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43102 : Seg45.F), (rho 43103 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX147 rho : Seg45.F), (seg45AccY147 rho : Seg45.F)⟩
        ⟨(rho 43102 : Seg45.F), (rho 43103 : Seg45.F)⟩
        ⟨(seg45AccX148 rho : Seg45.F), (seg45AccY148 rho : Seg45.F)⟩
        ⟨(rho 43115 : Seg45.F), (rho 43116 : Seg45.F)⟩ := by
  obtain ⟨r4876, r4877, r4878, r4879, r4880, r4881, r4882, r4883, r4884, r4885, r4886, r4887, r4888⟩ := seg45_rows147 rho h
  unfold Seg45.relationRow4876 at r4876
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4876
  unfold Seg45.relationRow4877 at r4877
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4877
  unfold Seg45.relationRow4878 at r4878
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4878
  unfold Seg45.relationRow4879 at r4879
  unfold Seg45.relationRow4880 at r4880
  unfold Seg45.relationRow4881 at r4881
  unfold Seg45.relationRow4882 at r4882
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4882
  unfold Seg45.relationRow4883 at r4883
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4883
  unfold Seg45.relationRow4884 at r4884
  unfold Seg45.relationRow4885 at r4885
  unfold Seg45.relationRow4886 at r4886
  unfold Seg45.relationRow4887 at r4887
  unfold Seg45.relationRow4888 at r4888
  have hrung147 (bit : Bool) (hbit : rho 41095 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX147 rho : Seg45.F), (seg45AccY147 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43102 : Seg45.F), (rho 43103 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX147 rho : Seg45.F), (seg45AccY147 rho : Seg45.F)⟩
        ⟨(rho 43102 : Seg45.F), (rho 43103 : Seg45.F)⟩
        ⟨(seg45AccX148 rho : Seg45.F), (seg45AccY148 rho : Seg45.F)⟩
        ⟨(rho 43115 : Seg45.F), (rho 43116 : Seg45.F)⟩ := by
    have hnextx : seg45AccX148 rho = seg45AccX147 rho + rho 43110 := by
      unfold seg45AccX148 seg45AccX147
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 147]
      ring
    have hnexty : seg45AccY148 rho = seg45AccY147 rho + rho 43111 := by
      unfold seg45AccY148 seg45AccY147
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 147]
      ring
    have ha0 : (rho 43102 + rho 43103) * (seg45AccX147 rho + seg45AccY147 rho) = rho 43104 := by
      unfold seg45AccX147 seg45AccY147
      linear_combination r4876
    have ha1 : rho 43103 * seg45AccX147 rho = rho 43105 := by
      unfold seg45AccX147
      linear_combination r4877
    have ha2 : rho 43102 * seg45AccY147 rho = rho 43106 := by
      unfold seg45AccY147
      linear_combination r4878
    have ha3 : 3021 * rho 43105 * rho 43106 = rho 43107 := by
      linear_combination r4879
    have ha4 : rho 43108 * (1 + rho 43107) = rho 43105 + rho 43106 := by
      linear_combination r4880
    have ha5 : rho 43109 * (1 - rho 43107) = rho 43104 - rho 43105 - rho 43106 := by
      linear_combination r4881
    have haddx :
        rho 43108 * (1 + 3021 * (rho 43103 * seg45AccX147 rho) * (rho 43102 * seg45AccY147 rho)) =
          rho 43103 * seg45AccX147 rho + rho 43102 * seg45AccY147 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43109 * (1 - 3021 * (rho 43103 * seg45AccX147 rho) * (rho 43102 * seg45AccY147 rho)) =
          (-1) * (rho 43103 * seg45AccX147 rho) - rho 43102 * seg45AccY147 rho +
            (seg45AccY147 rho - seg45AccX147 rho * (-1)) * (rho 43102 + rho 43103) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43109 * (1 - rho 43107) = rho 43104 - rho 43105 - rho 43106 := ha5
        _ = (-1) * rho 43105 - rho 43106 + (seg45AccY147 rho - seg45AccX147 rho * (-1)) * (rho 43102 + rho 43103) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX148 rho = seg45AccX147 rho - Bool.toZMod bit * (seg45AccX147 rho - rho 43108) := by
      have hd : rho 43110 = Bool.toZMod bit * (rho 43108 - seg45AccX147 rho) := by
        rw [← hbit]
        unfold seg45AccX147
        linear_combination -r4882
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY148 rho = seg45AccY147 rho - Bool.toZMod bit * (seg45AccY147 rho - rho 43109) := by
      have hd : rho 43111 = Bool.toZMod bit * (rho 43109 - seg45AccY147 rho) := by
        rw [← hbit]
        unfold seg45AccY147
        linear_combination -r4883
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43102 * rho 43103 = rho 43112 := by linear_combination r4884
    have hd1 : rho 43102 * rho 43102 = rho 43113 := by linear_combination r4885
    have hd2 : rho 43103 * rho 43103 = rho 43114 := by linear_combination r4886
    have hd3 : rho 43115 * (rho 43103 * rho 43103 + rho 43102 * rho 43102 * (-1)) = 2 * (rho 43102 * rho 43103) := by
      rw [hd0, hd1, hd2]
      linear_combination r4887
    have hd4 : rho 43116 * (2 - (rho 43103 * rho 43103 + rho 43102 * rho 43102 * (-1))) = rho 43103 * rho 43103 - rho 43102 * rho 43102 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4888
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX147 rho : Seg45.F), (seg45AccY147 rho : Seg45.F)⟩
      ⟨(rho 43102 : Seg45.F), (rho 43103 : Seg45.F)⟩
      ⟨(rho 43108 : Seg45.F), (rho 43109 : Seg45.F)⟩
      ⟨(seg45AccX148 rho : Seg45.F), (seg45AccY148 rho : Seg45.F)⟩
      ⟨(rho 43115 : Seg45.F), (rho 43116 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung147

theorem seg45_rows148 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4889 rho ∧ Seg45.relationRow4890 rho ∧ Seg45.relationRow4891 rho ∧ Seg45.relationRow4892 rho ∧ Seg45.relationRow4893 rho ∧ Seg45.relationRow4894 rho ∧ Seg45.relationRow4895 rho ∧ Seg45.relationRow4896 rho ∧ Seg45.relationRow4897 rho ∧ Seg45.relationRow4898 rho ∧ Seg45.relationRow4899 rho ∧ Seg45.relationRow4900 rho ∧ Seg45.relationRow4901 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p61, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, r4889, r4890, r4891, r4892, r4893, r4894, r4895, r4896, r4897, r4898, r4899, r4900, r4901, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4889, r4890, r4891, r4892, r4893, r4894, r4895, r4896, r4897, r4898, r4899, r4900, r4901⟩

theorem seg45_rung148 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41096 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX148 rho : Seg45.F), (seg45AccY148 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43115 : Seg45.F), (rho 43116 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX148 rho : Seg45.F), (seg45AccY148 rho : Seg45.F)⟩
        ⟨(rho 43115 : Seg45.F), (rho 43116 : Seg45.F)⟩
        ⟨(seg45AccX149 rho : Seg45.F), (seg45AccY149 rho : Seg45.F)⟩
        ⟨(rho 43128 : Seg45.F), (rho 43129 : Seg45.F)⟩ := by
  obtain ⟨r4889, r4890, r4891, r4892, r4893, r4894, r4895, r4896, r4897, r4898, r4899, r4900, r4901⟩ := seg45_rows148 rho h
  unfold Seg45.relationRow4889 at r4889
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4889
  unfold Seg45.relationRow4890 at r4890
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4890
  unfold Seg45.relationRow4891 at r4891
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4891
  unfold Seg45.relationRow4892 at r4892
  unfold Seg45.relationRow4893 at r4893
  unfold Seg45.relationRow4894 at r4894
  unfold Seg45.relationRow4895 at r4895
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4895
  unfold Seg45.relationRow4896 at r4896
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4896
  unfold Seg45.relationRow4897 at r4897
  unfold Seg45.relationRow4898 at r4898
  unfold Seg45.relationRow4899 at r4899
  unfold Seg45.relationRow4900 at r4900
  unfold Seg45.relationRow4901 at r4901
  have hrung148 (bit : Bool) (hbit : rho 41096 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX148 rho : Seg45.F), (seg45AccY148 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43115 : Seg45.F), (rho 43116 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX148 rho : Seg45.F), (seg45AccY148 rho : Seg45.F)⟩
        ⟨(rho 43115 : Seg45.F), (rho 43116 : Seg45.F)⟩
        ⟨(seg45AccX149 rho : Seg45.F), (seg45AccY149 rho : Seg45.F)⟩
        ⟨(rho 43128 : Seg45.F), (rho 43129 : Seg45.F)⟩ := by
    have hnextx : seg45AccX149 rho = seg45AccX148 rho + rho 43123 := by
      unfold seg45AccX149 seg45AccX148
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 148]
      ring
    have hnexty : seg45AccY149 rho = seg45AccY148 rho + rho 43124 := by
      unfold seg45AccY149 seg45AccY148
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 148]
      ring
    have ha0 : (rho 43115 + rho 43116) * (seg45AccX148 rho + seg45AccY148 rho) = rho 43117 := by
      unfold seg45AccX148 seg45AccY148
      linear_combination r4889
    have ha1 : rho 43116 * seg45AccX148 rho = rho 43118 := by
      unfold seg45AccX148
      linear_combination r4890
    have ha2 : rho 43115 * seg45AccY148 rho = rho 43119 := by
      unfold seg45AccY148
      linear_combination r4891
    have ha3 : 3021 * rho 43118 * rho 43119 = rho 43120 := by
      linear_combination r4892
    have ha4 : rho 43121 * (1 + rho 43120) = rho 43118 + rho 43119 := by
      linear_combination r4893
    have ha5 : rho 43122 * (1 - rho 43120) = rho 43117 - rho 43118 - rho 43119 := by
      linear_combination r4894
    have haddx :
        rho 43121 * (1 + 3021 * (rho 43116 * seg45AccX148 rho) * (rho 43115 * seg45AccY148 rho)) =
          rho 43116 * seg45AccX148 rho + rho 43115 * seg45AccY148 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43122 * (1 - 3021 * (rho 43116 * seg45AccX148 rho) * (rho 43115 * seg45AccY148 rho)) =
          (-1) * (rho 43116 * seg45AccX148 rho) - rho 43115 * seg45AccY148 rho +
            (seg45AccY148 rho - seg45AccX148 rho * (-1)) * (rho 43115 + rho 43116) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43122 * (1 - rho 43120) = rho 43117 - rho 43118 - rho 43119 := ha5
        _ = (-1) * rho 43118 - rho 43119 + (seg45AccY148 rho - seg45AccX148 rho * (-1)) * (rho 43115 + rho 43116) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX149 rho = seg45AccX148 rho - Bool.toZMod bit * (seg45AccX148 rho - rho 43121) := by
      have hd : rho 43123 = Bool.toZMod bit * (rho 43121 - seg45AccX148 rho) := by
        rw [← hbit]
        unfold seg45AccX148
        linear_combination -r4895
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY149 rho = seg45AccY148 rho - Bool.toZMod bit * (seg45AccY148 rho - rho 43122) := by
      have hd : rho 43124 = Bool.toZMod bit * (rho 43122 - seg45AccY148 rho) := by
        rw [← hbit]
        unfold seg45AccY148
        linear_combination -r4896
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43115 * rho 43116 = rho 43125 := by linear_combination r4897
    have hd1 : rho 43115 * rho 43115 = rho 43126 := by linear_combination r4898
    have hd2 : rho 43116 * rho 43116 = rho 43127 := by linear_combination r4899
    have hd3 : rho 43128 * (rho 43116 * rho 43116 + rho 43115 * rho 43115 * (-1)) = 2 * (rho 43115 * rho 43116) := by
      rw [hd0, hd1, hd2]
      linear_combination r4900
    have hd4 : rho 43129 * (2 - (rho 43116 * rho 43116 + rho 43115 * rho 43115 * (-1))) = rho 43116 * rho 43116 - rho 43115 * rho 43115 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4901
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX148 rho : Seg45.F), (seg45AccY148 rho : Seg45.F)⟩
      ⟨(rho 43115 : Seg45.F), (rho 43116 : Seg45.F)⟩
      ⟨(rho 43121 : Seg45.F), (rho 43122 : Seg45.F)⟩
      ⟨(seg45AccX149 rho : Seg45.F), (seg45AccY149 rho : Seg45.F)⟩
      ⟨(rho 43128 : Seg45.F), (rho 43129 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung148

theorem seg45_rows149 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4902 rho ∧ Seg45.relationRow4903 rho ∧ Seg45.relationRow4904 rho ∧ Seg45.relationRow4905 rho ∧ Seg45.relationRow4906 rho ∧ Seg45.relationRow4907 rho ∧ Seg45.relationRow4908 rho ∧ Seg45.relationRow4909 rho ∧ Seg45.relationRow4910 rho ∧ Seg45.relationRow4911 rho ∧ Seg45.relationRow4912 rho ∧ Seg45.relationRow4913 rho ∧ Seg45.relationRow4914 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p61, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4902, r4903, r4904, r4905, r4906, r4907, r4908, r4909, r4910, r4911, r4912, r4913, r4914, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4902, r4903, r4904, r4905, r4906, r4907, r4908, r4909, r4910, r4911, r4912, r4913, r4914⟩

theorem seg45_rung149 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41097 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX149 rho : Seg45.F), (seg45AccY149 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43128 : Seg45.F), (rho 43129 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX149 rho : Seg45.F), (seg45AccY149 rho : Seg45.F)⟩
        ⟨(rho 43128 : Seg45.F), (rho 43129 : Seg45.F)⟩
        ⟨(seg45AccX150 rho : Seg45.F), (seg45AccY150 rho : Seg45.F)⟩
        ⟨(rho 43141 : Seg45.F), (rho 43142 : Seg45.F)⟩ := by
  obtain ⟨r4902, r4903, r4904, r4905, r4906, r4907, r4908, r4909, r4910, r4911, r4912, r4913, r4914⟩ := seg45_rows149 rho h
  unfold Seg45.relationRow4902 at r4902
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4902
  unfold Seg45.relationRow4903 at r4903
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4903
  unfold Seg45.relationRow4904 at r4904
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4904
  unfold Seg45.relationRow4905 at r4905
  unfold Seg45.relationRow4906 at r4906
  unfold Seg45.relationRow4907 at r4907
  unfold Seg45.relationRow4908 at r4908
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4908
  unfold Seg45.relationRow4909 at r4909
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4909
  unfold Seg45.relationRow4910 at r4910
  unfold Seg45.relationRow4911 at r4911
  unfold Seg45.relationRow4912 at r4912
  unfold Seg45.relationRow4913 at r4913
  unfold Seg45.relationRow4914 at r4914
  have hrung149 (bit : Bool) (hbit : rho 41097 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX149 rho : Seg45.F), (seg45AccY149 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43128 : Seg45.F), (rho 43129 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX149 rho : Seg45.F), (seg45AccY149 rho : Seg45.F)⟩
        ⟨(rho 43128 : Seg45.F), (rho 43129 : Seg45.F)⟩
        ⟨(seg45AccX150 rho : Seg45.F), (seg45AccY150 rho : Seg45.F)⟩
        ⟨(rho 43141 : Seg45.F), (rho 43142 : Seg45.F)⟩ := by
    have hnextx : seg45AccX150 rho = seg45AccX149 rho + rho 43136 := by
      unfold seg45AccX150 seg45AccX149
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 149]
      ring
    have hnexty : seg45AccY150 rho = seg45AccY149 rho + rho 43137 := by
      unfold seg45AccY150 seg45AccY149
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 149]
      ring
    have ha0 : (rho 43128 + rho 43129) * (seg45AccX149 rho + seg45AccY149 rho) = rho 43130 := by
      unfold seg45AccX149 seg45AccY149
      linear_combination r4902
    have ha1 : rho 43129 * seg45AccX149 rho = rho 43131 := by
      unfold seg45AccX149
      linear_combination r4903
    have ha2 : rho 43128 * seg45AccY149 rho = rho 43132 := by
      unfold seg45AccY149
      linear_combination r4904
    have ha3 : 3021 * rho 43131 * rho 43132 = rho 43133 := by
      linear_combination r4905
    have ha4 : rho 43134 * (1 + rho 43133) = rho 43131 + rho 43132 := by
      linear_combination r4906
    have ha5 : rho 43135 * (1 - rho 43133) = rho 43130 - rho 43131 - rho 43132 := by
      linear_combination r4907
    have haddx :
        rho 43134 * (1 + 3021 * (rho 43129 * seg45AccX149 rho) * (rho 43128 * seg45AccY149 rho)) =
          rho 43129 * seg45AccX149 rho + rho 43128 * seg45AccY149 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43135 * (1 - 3021 * (rho 43129 * seg45AccX149 rho) * (rho 43128 * seg45AccY149 rho)) =
          (-1) * (rho 43129 * seg45AccX149 rho) - rho 43128 * seg45AccY149 rho +
            (seg45AccY149 rho - seg45AccX149 rho * (-1)) * (rho 43128 + rho 43129) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43135 * (1 - rho 43133) = rho 43130 - rho 43131 - rho 43132 := ha5
        _ = (-1) * rho 43131 - rho 43132 + (seg45AccY149 rho - seg45AccX149 rho * (-1)) * (rho 43128 + rho 43129) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX150 rho = seg45AccX149 rho - Bool.toZMod bit * (seg45AccX149 rho - rho 43134) := by
      have hd : rho 43136 = Bool.toZMod bit * (rho 43134 - seg45AccX149 rho) := by
        rw [← hbit]
        unfold seg45AccX149
        linear_combination -r4908
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY150 rho = seg45AccY149 rho - Bool.toZMod bit * (seg45AccY149 rho - rho 43135) := by
      have hd : rho 43137 = Bool.toZMod bit * (rho 43135 - seg45AccY149 rho) := by
        rw [← hbit]
        unfold seg45AccY149
        linear_combination -r4909
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43128 * rho 43129 = rho 43138 := by linear_combination r4910
    have hd1 : rho 43128 * rho 43128 = rho 43139 := by linear_combination r4911
    have hd2 : rho 43129 * rho 43129 = rho 43140 := by linear_combination r4912
    have hd3 : rho 43141 * (rho 43129 * rho 43129 + rho 43128 * rho 43128 * (-1)) = 2 * (rho 43128 * rho 43129) := by
      rw [hd0, hd1, hd2]
      linear_combination r4913
    have hd4 : rho 43142 * (2 - (rho 43129 * rho 43129 + rho 43128 * rho 43128 * (-1))) = rho 43129 * rho 43129 - rho 43128 * rho 43128 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4914
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX149 rho : Seg45.F), (seg45AccY149 rho : Seg45.F)⟩
      ⟨(rho 43128 : Seg45.F), (rho 43129 : Seg45.F)⟩
      ⟨(rho 43134 : Seg45.F), (rho 43135 : Seg45.F)⟩
      ⟨(seg45AccX150 rho : Seg45.F), (seg45AccY150 rho : Seg45.F)⟩
      ⟨(rho 43141 : Seg45.F), (rho 43142 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung149

theorem seg45_rows150 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4915 rho ∧ Seg45.relationRow4916 rho ∧ Seg45.relationRow4917 rho ∧ Seg45.relationRow4918 rho ∧ Seg45.relationRow4919 rho ∧ Seg45.relationRow4920 rho ∧ Seg45.relationRow4921 rho ∧ Seg45.relationRow4922 rho ∧ Seg45.relationRow4923 rho ∧ Seg45.relationRow4924 rho ∧ Seg45.relationRow4925 rho ∧ Seg45.relationRow4926 rho ∧ Seg45.relationRow4927 rho ∧ Seg45.relationRow4928 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p61, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4915, r4916, r4917, r4918, r4919, r4920, r4921, r4922, r4923, r4924, r4925, r4926, r4927, r4928, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4915, r4916, r4917, r4918, r4919, r4920, r4921, r4922, r4923, r4924, r4925, r4926, r4927, r4928⟩

theorem seg45_rung150 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41098 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX150 rho : Seg45.F), (seg45AccY150 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43141 : Seg45.F), (rho 43142 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX150 rho : Seg45.F), (seg45AccY150 rho : Seg45.F)⟩
        ⟨(rho 43141 : Seg45.F), (rho 43142 : Seg45.F)⟩
        ⟨(seg45AccX151 rho : Seg45.F), (seg45AccY151 rho : Seg45.F)⟩
        ⟨(rho 43155 : Seg45.F), (rho 43156 : Seg45.F)⟩ := by
  obtain ⟨r4915, r4916, r4917, r4918, r4919, r4920, r4921, r4922, r4923, r4924, r4925, r4926, r4927, r4928⟩ := seg45_rows150 rho h
  unfold Seg45.relationRow4915 at r4915
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4915
  unfold Seg45.relationRow4916 at r4916
  unfold Seg45.relationRow4917 at r4917
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4917
  unfold Seg45.relationRow4918 at r4918
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4918
  unfold Seg45.relationRow4919 at r4919
  unfold Seg45.relationRow4920 at r4920
  unfold Seg45.relationRow4921 at r4921
  unfold Seg45.relationRow4922 at r4922
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4922
  unfold Seg45.relationRow4923 at r4923
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4923
  unfold Seg45.relationRow4924 at r4924
  unfold Seg45.relationRow4925 at r4925
  unfold Seg45.relationRow4926 at r4926
  unfold Seg45.relationRow4927 at r4927
  unfold Seg45.relationRow4928 at r4928
  have hrung150 (bit : Bool) (hbit : rho 41098 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX150 rho : Seg45.F), (seg45AccY150 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43141 : Seg45.F), (rho 43142 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX150 rho : Seg45.F), (seg45AccY150 rho : Seg45.F)⟩
        ⟨(rho 43141 : Seg45.F), (rho 43142 : Seg45.F)⟩
        ⟨(seg45AccX151 rho : Seg45.F), (seg45AccY151 rho : Seg45.F)⟩
        ⟨(rho 43155 : Seg45.F), (rho 43156 : Seg45.F)⟩ := by
    have hnextx : seg45AccX151 rho = seg45AccX150 rho + rho 43150 := by
      unfold seg45AccX151 seg45AccX150
      ring
    have hnexty : seg45AccY151 rho = seg45AccY150 rho + rho 43151 := by
      unfold seg45AccY151 seg45AccY150
      ring
    have hsum : seg45AccX150 rho + seg45AccY150 rho = rho 43143 := by
      unfold seg45AccX150 seg45AccY150
      linear_combination r4915
    have ha0 : (rho 43141 + rho 43142) * (seg45AccX150 rho + seg45AccY150 rho) = rho 43144 := by
      rw [hsum]
      linear_combination r4916
    have ha1 : rho 43142 * seg45AccX150 rho = rho 43145 := by
      unfold seg45AccX150
      linear_combination r4917
    have ha2 : rho 43141 * seg45AccY150 rho = rho 43146 := by
      unfold seg45AccY150
      linear_combination r4918
    have ha3 : 3021 * rho 43145 * rho 43146 = rho 43147 := by
      linear_combination r4919
    have ha4 : rho 43148 * (1 + rho 43147) = rho 43145 + rho 43146 := by
      linear_combination r4920
    have ha5 : rho 43149 * (1 - rho 43147) = rho 43144 - rho 43145 - rho 43146 := by
      linear_combination r4921
    have haddx :
        rho 43148 * (1 + 3021 * (rho 43142 * seg45AccX150 rho) * (rho 43141 * seg45AccY150 rho)) =
          rho 43142 * seg45AccX150 rho + rho 43141 * seg45AccY150 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43149 * (1 - 3021 * (rho 43142 * seg45AccX150 rho) * (rho 43141 * seg45AccY150 rho)) =
          (-1) * (rho 43142 * seg45AccX150 rho) - rho 43141 * seg45AccY150 rho +
            (seg45AccY150 rho - seg45AccX150 rho * (-1)) * (rho 43141 + rho 43142) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43149 * (1 - rho 43147) = rho 43144 - rho 43145 - rho 43146 := ha5
        _ = (-1) * rho 43145 - rho 43146 + (seg45AccY150 rho - seg45AccX150 rho * (-1)) * (rho 43141 + rho 43142) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX151 rho = seg45AccX150 rho - Bool.toZMod bit * (seg45AccX150 rho - rho 43148) := by
      have hd : rho 43150 = Bool.toZMod bit * (rho 43148 - seg45AccX150 rho) := by
        rw [← hbit]
        unfold seg45AccX150
        linear_combination -r4922
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY151 rho = seg45AccY150 rho - Bool.toZMod bit * (seg45AccY150 rho - rho 43149) := by
      have hd : rho 43151 = Bool.toZMod bit * (rho 43149 - seg45AccY150 rho) := by
        rw [← hbit]
        unfold seg45AccY150
        linear_combination -r4923
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43141 * rho 43142 = rho 43152 := by linear_combination r4924
    have hd1 : rho 43141 * rho 43141 = rho 43153 := by linear_combination r4925
    have hd2 : rho 43142 * rho 43142 = rho 43154 := by linear_combination r4926
    have hd3 : rho 43155 * (rho 43142 * rho 43142 + rho 43141 * rho 43141 * (-1)) = 2 * (rho 43141 * rho 43142) := by
      rw [hd0, hd1, hd2]
      linear_combination r4927
    have hd4 : rho 43156 * (2 - (rho 43142 * rho 43142 + rho 43141 * rho 43141 * (-1))) = rho 43142 * rho 43142 - rho 43141 * rho 43141 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4928
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX150 rho : Seg45.F), (seg45AccY150 rho : Seg45.F)⟩
      ⟨(rho 43141 : Seg45.F), (rho 43142 : Seg45.F)⟩
      ⟨(rho 43148 : Seg45.F), (rho 43149 : Seg45.F)⟩
      ⟨(seg45AccX151 rho : Seg45.F), (seg45AccY151 rho : Seg45.F)⟩
      ⟨(rho 43155 : Seg45.F), (rho 43156 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung150

theorem seg45_rows151 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4929 rho ∧ Seg45.relationRow4930 rho ∧ Seg45.relationRow4931 rho ∧ Seg45.relationRow4932 rho ∧ Seg45.relationRow4933 rho ∧ Seg45.relationRow4934 rho ∧ Seg45.relationRow4935 rho ∧ Seg45.relationRow4936 rho ∧ Seg45.relationRow4937 rho ∧ Seg45.relationRow4938 rho ∧ Seg45.relationRow4939 rho ∧ Seg45.relationRow4940 rho ∧ Seg45.relationRow4941 rho ∧ Seg45.relationRow4942 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p61, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4929, r4930, r4931, r4932, r4933, r4934, r4935, r4936, r4937, r4938, r4939, r4940, r4941, r4942, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4929, r4930, r4931, r4932, r4933, r4934, r4935, r4936, r4937, r4938, r4939, r4940, r4941, r4942⟩

theorem seg45_rung151 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41099 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX151 rho : Seg45.F), (seg45AccY151 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43155 : Seg45.F), (rho 43156 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX151 rho : Seg45.F), (seg45AccY151 rho : Seg45.F)⟩
        ⟨(rho 43155 : Seg45.F), (rho 43156 : Seg45.F)⟩
        ⟨(seg45AccX152 rho : Seg45.F), (seg45AccY152 rho : Seg45.F)⟩
        ⟨(rho 43169 : Seg45.F), (rho 43170 : Seg45.F)⟩ := by
  obtain ⟨r4929, r4930, r4931, r4932, r4933, r4934, r4935, r4936, r4937, r4938, r4939, r4940, r4941, r4942⟩ := seg45_rows151 rho h
  unfold Seg45.relationRow4929 at r4929
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4929
  unfold Seg45.relationRow4930 at r4930
  unfold Seg45.relationRow4931 at r4931
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4931
  unfold Seg45.relationRow4932 at r4932
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4932
  unfold Seg45.relationRow4933 at r4933
  unfold Seg45.relationRow4934 at r4934
  unfold Seg45.relationRow4935 at r4935
  unfold Seg45.relationRow4936 at r4936
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4936
  unfold Seg45.relationRow4937 at r4937
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4937
  unfold Seg45.relationRow4938 at r4938
  unfold Seg45.relationRow4939 at r4939
  unfold Seg45.relationRow4940 at r4940
  unfold Seg45.relationRow4941 at r4941
  unfold Seg45.relationRow4942 at r4942
  have hrung151 (bit : Bool) (hbit : rho 41099 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX151 rho : Seg45.F), (seg45AccY151 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43155 : Seg45.F), (rho 43156 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX151 rho : Seg45.F), (seg45AccY151 rho : Seg45.F)⟩
        ⟨(rho 43155 : Seg45.F), (rho 43156 : Seg45.F)⟩
        ⟨(seg45AccX152 rho : Seg45.F), (seg45AccY152 rho : Seg45.F)⟩
        ⟨(rho 43169 : Seg45.F), (rho 43170 : Seg45.F)⟩ := by
    have hnextx : seg45AccX152 rho = seg45AccX151 rho + rho 43164 := by
      unfold seg45AccX152 seg45AccX151
      ring
    have hnexty : seg45AccY152 rho = seg45AccY151 rho + rho 43165 := by
      unfold seg45AccY152 seg45AccY151
      ring
    have hsum : seg45AccX151 rho + seg45AccY151 rho = rho 43157 := by
      unfold seg45AccX151 seg45AccY151
      linear_combination r4929
    have ha0 : (rho 43155 + rho 43156) * (seg45AccX151 rho + seg45AccY151 rho) = rho 43158 := by
      rw [hsum]
      linear_combination r4930
    have ha1 : rho 43156 * seg45AccX151 rho = rho 43159 := by
      unfold seg45AccX151
      linear_combination r4931
    have ha2 : rho 43155 * seg45AccY151 rho = rho 43160 := by
      unfold seg45AccY151
      linear_combination r4932
    have ha3 : 3021 * rho 43159 * rho 43160 = rho 43161 := by
      linear_combination r4933
    have ha4 : rho 43162 * (1 + rho 43161) = rho 43159 + rho 43160 := by
      linear_combination r4934
    have ha5 : rho 43163 * (1 - rho 43161) = rho 43158 - rho 43159 - rho 43160 := by
      linear_combination r4935
    have haddx :
        rho 43162 * (1 + 3021 * (rho 43156 * seg45AccX151 rho) * (rho 43155 * seg45AccY151 rho)) =
          rho 43156 * seg45AccX151 rho + rho 43155 * seg45AccY151 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43163 * (1 - 3021 * (rho 43156 * seg45AccX151 rho) * (rho 43155 * seg45AccY151 rho)) =
          (-1) * (rho 43156 * seg45AccX151 rho) - rho 43155 * seg45AccY151 rho +
            (seg45AccY151 rho - seg45AccX151 rho * (-1)) * (rho 43155 + rho 43156) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43163 * (1 - rho 43161) = rho 43158 - rho 43159 - rho 43160 := ha5
        _ = (-1) * rho 43159 - rho 43160 + (seg45AccY151 rho - seg45AccX151 rho * (-1)) * (rho 43155 + rho 43156) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX152 rho = seg45AccX151 rho - Bool.toZMod bit * (seg45AccX151 rho - rho 43162) := by
      have hd : rho 43164 = Bool.toZMod bit * (rho 43162 - seg45AccX151 rho) := by
        rw [← hbit]
        unfold seg45AccX151
        linear_combination -r4936
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY152 rho = seg45AccY151 rho - Bool.toZMod bit * (seg45AccY151 rho - rho 43163) := by
      have hd : rho 43165 = Bool.toZMod bit * (rho 43163 - seg45AccY151 rho) := by
        rw [← hbit]
        unfold seg45AccY151
        linear_combination -r4937
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43155 * rho 43156 = rho 43166 := by linear_combination r4938
    have hd1 : rho 43155 * rho 43155 = rho 43167 := by linear_combination r4939
    have hd2 : rho 43156 * rho 43156 = rho 43168 := by linear_combination r4940
    have hd3 : rho 43169 * (rho 43156 * rho 43156 + rho 43155 * rho 43155 * (-1)) = 2 * (rho 43155 * rho 43156) := by
      rw [hd0, hd1, hd2]
      linear_combination r4941
    have hd4 : rho 43170 * (2 - (rho 43156 * rho 43156 + rho 43155 * rho 43155 * (-1))) = rho 43156 * rho 43156 - rho 43155 * rho 43155 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4942
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX151 rho : Seg45.F), (seg45AccY151 rho : Seg45.F)⟩
      ⟨(rho 43155 : Seg45.F), (rho 43156 : Seg45.F)⟩
      ⟨(rho 43162 : Seg45.F), (rho 43163 : Seg45.F)⟩
      ⟨(seg45AccX152 rho : Seg45.F), (seg45AccY152 rho : Seg45.F)⟩
      ⟨(rho 43169 : Seg45.F), (rho 43170 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung151

theorem seg45_rows152 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4943 rho ∧ Seg45.relationRow4944 rho ∧ Seg45.relationRow4945 rho ∧ Seg45.relationRow4946 rho ∧ Seg45.relationRow4947 rho ∧ Seg45.relationRow4948 rho ∧ Seg45.relationRow4949 rho ∧ Seg45.relationRow4950 rho ∧ Seg45.relationRow4951 rho ∧ Seg45.relationRow4952 rho ∧ Seg45.relationRow4953 rho ∧ Seg45.relationRow4954 rho ∧ Seg45.relationRow4955 rho ∧ Seg45.relationRow4956 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p61, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4943, r4944, r4945, r4946, r4947, r4948, r4949, r4950, r4951, r4952, r4953, r4954, r4955, r4956, _, _, _⟩
  exact ⟨r4943, r4944, r4945, r4946, r4947, r4948, r4949, r4950, r4951, r4952, r4953, r4954, r4955, r4956⟩

theorem seg45_rung152 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41100 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX152 rho : Seg45.F), (seg45AccY152 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43169 : Seg45.F), (rho 43170 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX152 rho : Seg45.F), (seg45AccY152 rho : Seg45.F)⟩
        ⟨(rho 43169 : Seg45.F), (rho 43170 : Seg45.F)⟩
        ⟨(seg45AccX153 rho : Seg45.F), (seg45AccY153 rho : Seg45.F)⟩
        ⟨(rho 43183 : Seg45.F), (rho 43184 : Seg45.F)⟩ := by
  obtain ⟨r4943, r4944, r4945, r4946, r4947, r4948, r4949, r4950, r4951, r4952, r4953, r4954, r4955, r4956⟩ := seg45_rows152 rho h
  unfold Seg45.relationRow4943 at r4943
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4943
  unfold Seg45.relationRow4944 at r4944
  unfold Seg45.relationRow4945 at r4945
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4945
  unfold Seg45.relationRow4946 at r4946
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4946
  unfold Seg45.relationRow4947 at r4947
  unfold Seg45.relationRow4948 at r4948
  unfold Seg45.relationRow4949 at r4949
  unfold Seg45.relationRow4950 at r4950
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4950
  unfold Seg45.relationRow4951 at r4951
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4951
  unfold Seg45.relationRow4952 at r4952
  unfold Seg45.relationRow4953 at r4953
  unfold Seg45.relationRow4954 at r4954
  unfold Seg45.relationRow4955 at r4955
  unfold Seg45.relationRow4956 at r4956
  have hrung152 (bit : Bool) (hbit : rho 41100 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX152 rho : Seg45.F), (seg45AccY152 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43169 : Seg45.F), (rho 43170 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX152 rho : Seg45.F), (seg45AccY152 rho : Seg45.F)⟩
        ⟨(rho 43169 : Seg45.F), (rho 43170 : Seg45.F)⟩
        ⟨(seg45AccX153 rho : Seg45.F), (seg45AccY153 rho : Seg45.F)⟩
        ⟨(rho 43183 : Seg45.F), (rho 43184 : Seg45.F)⟩ := by
    have hnextx : seg45AccX153 rho = seg45AccX152 rho + rho 43178 := by
      unfold seg45AccX153 seg45AccX152
      ring
    have hnexty : seg45AccY153 rho = seg45AccY152 rho + rho 43179 := by
      unfold seg45AccY153 seg45AccY152
      ring
    have hsum : seg45AccX152 rho + seg45AccY152 rho = rho 43171 := by
      unfold seg45AccX152 seg45AccY152
      linear_combination r4943
    have ha0 : (rho 43169 + rho 43170) * (seg45AccX152 rho + seg45AccY152 rho) = rho 43172 := by
      rw [hsum]
      linear_combination r4944
    have ha1 : rho 43170 * seg45AccX152 rho = rho 43173 := by
      unfold seg45AccX152
      linear_combination r4945
    have ha2 : rho 43169 * seg45AccY152 rho = rho 43174 := by
      unfold seg45AccY152
      linear_combination r4946
    have ha3 : 3021 * rho 43173 * rho 43174 = rho 43175 := by
      linear_combination r4947
    have ha4 : rho 43176 * (1 + rho 43175) = rho 43173 + rho 43174 := by
      linear_combination r4948
    have ha5 : rho 43177 * (1 - rho 43175) = rho 43172 - rho 43173 - rho 43174 := by
      linear_combination r4949
    have haddx :
        rho 43176 * (1 + 3021 * (rho 43170 * seg45AccX152 rho) * (rho 43169 * seg45AccY152 rho)) =
          rho 43170 * seg45AccX152 rho + rho 43169 * seg45AccY152 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43177 * (1 - 3021 * (rho 43170 * seg45AccX152 rho) * (rho 43169 * seg45AccY152 rho)) =
          (-1) * (rho 43170 * seg45AccX152 rho) - rho 43169 * seg45AccY152 rho +
            (seg45AccY152 rho - seg45AccX152 rho * (-1)) * (rho 43169 + rho 43170) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43177 * (1 - rho 43175) = rho 43172 - rho 43173 - rho 43174 := ha5
        _ = (-1) * rho 43173 - rho 43174 + (seg45AccY152 rho - seg45AccX152 rho * (-1)) * (rho 43169 + rho 43170) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX153 rho = seg45AccX152 rho - Bool.toZMod bit * (seg45AccX152 rho - rho 43176) := by
      have hd : rho 43178 = Bool.toZMod bit * (rho 43176 - seg45AccX152 rho) := by
        rw [← hbit]
        unfold seg45AccX152
        linear_combination -r4950
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY153 rho = seg45AccY152 rho - Bool.toZMod bit * (seg45AccY152 rho - rho 43177) := by
      have hd : rho 43179 = Bool.toZMod bit * (rho 43177 - seg45AccY152 rho) := by
        rw [← hbit]
        unfold seg45AccY152
        linear_combination -r4951
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43169 * rho 43170 = rho 43180 := by linear_combination r4952
    have hd1 : rho 43169 * rho 43169 = rho 43181 := by linear_combination r4953
    have hd2 : rho 43170 * rho 43170 = rho 43182 := by linear_combination r4954
    have hd3 : rho 43183 * (rho 43170 * rho 43170 + rho 43169 * rho 43169 * (-1)) = 2 * (rho 43169 * rho 43170) := by
      rw [hd0, hd1, hd2]
      linear_combination r4955
    have hd4 : rho 43184 * (2 - (rho 43170 * rho 43170 + rho 43169 * rho 43169 * (-1))) = rho 43170 * rho 43170 - rho 43169 * rho 43169 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4956
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX152 rho : Seg45.F), (seg45AccY152 rho : Seg45.F)⟩
      ⟨(rho 43169 : Seg45.F), (rho 43170 : Seg45.F)⟩
      ⟨(rho 43176 : Seg45.F), (rho 43177 : Seg45.F)⟩
      ⟨(seg45AccX153 rho : Seg45.F), (seg45AccY153 rho : Seg45.F)⟩
      ⟨(rho 43183 : Seg45.F), (rho 43184 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung152

theorem seg45_rows153 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4957 rho ∧ Seg45.relationRow4958 rho ∧ Seg45.relationRow4959 rho ∧ Seg45.relationRow4960 rho ∧ Seg45.relationRow4961 rho ∧ Seg45.relationRow4962 rho ∧ Seg45.relationRow4963 rho ∧ Seg45.relationRow4964 rho ∧ Seg45.relationRow4965 rho ∧ Seg45.relationRow4966 rho ∧ Seg45.relationRow4967 rho ∧ Seg45.relationRow4968 rho ∧ Seg45.relationRow4969 rho ∧ Seg45.relationRow4970 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p61, p62, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4957, r4958, r4959⟩
  unfold Seg45.relationPart62 at p62
  rcases p62 with ⟨r4960, r4961, r4962, r4963, r4964, r4965, r4966, r4967, r4968, r4969, r4970, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4957, r4958, r4959, r4960, r4961, r4962, r4963, r4964, r4965, r4966, r4967, r4968, r4969, r4970⟩

theorem seg45_rung153 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41101 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX153 rho : Seg45.F), (seg45AccY153 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43183 : Seg45.F), (rho 43184 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX153 rho : Seg45.F), (seg45AccY153 rho : Seg45.F)⟩
        ⟨(rho 43183 : Seg45.F), (rho 43184 : Seg45.F)⟩
        ⟨(seg45AccX154 rho : Seg45.F), (seg45AccY154 rho : Seg45.F)⟩
        ⟨(rho 43197 : Seg45.F), (rho 43198 : Seg45.F)⟩ := by
  obtain ⟨r4957, r4958, r4959, r4960, r4961, r4962, r4963, r4964, r4965, r4966, r4967, r4968, r4969, r4970⟩ := seg45_rows153 rho h
  unfold Seg45.relationRow4957 at r4957
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4957
  unfold Seg45.relationRow4958 at r4958
  unfold Seg45.relationRow4959 at r4959
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4959
  unfold Seg45.relationRow4960 at r4960
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4960
  unfold Seg45.relationRow4961 at r4961
  unfold Seg45.relationRow4962 at r4962
  unfold Seg45.relationRow4963 at r4963
  unfold Seg45.relationRow4964 at r4964
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4964
  unfold Seg45.relationRow4965 at r4965
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4965
  unfold Seg45.relationRow4966 at r4966
  unfold Seg45.relationRow4967 at r4967
  unfold Seg45.relationRow4968 at r4968
  unfold Seg45.relationRow4969 at r4969
  unfold Seg45.relationRow4970 at r4970
  have hrung153 (bit : Bool) (hbit : rho 41101 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX153 rho : Seg45.F), (seg45AccY153 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43183 : Seg45.F), (rho 43184 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX153 rho : Seg45.F), (seg45AccY153 rho : Seg45.F)⟩
        ⟨(rho 43183 : Seg45.F), (rho 43184 : Seg45.F)⟩
        ⟨(seg45AccX154 rho : Seg45.F), (seg45AccY154 rho : Seg45.F)⟩
        ⟨(rho 43197 : Seg45.F), (rho 43198 : Seg45.F)⟩ := by
    have hnextx : seg45AccX154 rho = seg45AccX153 rho + rho 43192 := by
      unfold seg45AccX154 seg45AccX153
      ring
    have hnexty : seg45AccY154 rho = seg45AccY153 rho + rho 43193 := by
      unfold seg45AccY154 seg45AccY153
      ring
    have hsum : seg45AccX153 rho + seg45AccY153 rho = rho 43185 := by
      unfold seg45AccX153 seg45AccY153
      linear_combination r4957
    have ha0 : (rho 43183 + rho 43184) * (seg45AccX153 rho + seg45AccY153 rho) = rho 43186 := by
      rw [hsum]
      linear_combination r4958
    have ha1 : rho 43184 * seg45AccX153 rho = rho 43187 := by
      unfold seg45AccX153
      linear_combination r4959
    have ha2 : rho 43183 * seg45AccY153 rho = rho 43188 := by
      unfold seg45AccY153
      linear_combination r4960
    have ha3 : 3021 * rho 43187 * rho 43188 = rho 43189 := by
      linear_combination r4961
    have ha4 : rho 43190 * (1 + rho 43189) = rho 43187 + rho 43188 := by
      linear_combination r4962
    have ha5 : rho 43191 * (1 - rho 43189) = rho 43186 - rho 43187 - rho 43188 := by
      linear_combination r4963
    have haddx :
        rho 43190 * (1 + 3021 * (rho 43184 * seg45AccX153 rho) * (rho 43183 * seg45AccY153 rho)) =
          rho 43184 * seg45AccX153 rho + rho 43183 * seg45AccY153 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43191 * (1 - 3021 * (rho 43184 * seg45AccX153 rho) * (rho 43183 * seg45AccY153 rho)) =
          (-1) * (rho 43184 * seg45AccX153 rho) - rho 43183 * seg45AccY153 rho +
            (seg45AccY153 rho - seg45AccX153 rho * (-1)) * (rho 43183 + rho 43184) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43191 * (1 - rho 43189) = rho 43186 - rho 43187 - rho 43188 := ha5
        _ = (-1) * rho 43187 - rho 43188 + (seg45AccY153 rho - seg45AccX153 rho * (-1)) * (rho 43183 + rho 43184) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX154 rho = seg45AccX153 rho - Bool.toZMod bit * (seg45AccX153 rho - rho 43190) := by
      have hd : rho 43192 = Bool.toZMod bit * (rho 43190 - seg45AccX153 rho) := by
        rw [← hbit]
        unfold seg45AccX153
        linear_combination -r4964
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY154 rho = seg45AccY153 rho - Bool.toZMod bit * (seg45AccY153 rho - rho 43191) := by
      have hd : rho 43193 = Bool.toZMod bit * (rho 43191 - seg45AccY153 rho) := by
        rw [← hbit]
        unfold seg45AccY153
        linear_combination -r4965
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43183 * rho 43184 = rho 43194 := by linear_combination r4966
    have hd1 : rho 43183 * rho 43183 = rho 43195 := by linear_combination r4967
    have hd2 : rho 43184 * rho 43184 = rho 43196 := by linear_combination r4968
    have hd3 : rho 43197 * (rho 43184 * rho 43184 + rho 43183 * rho 43183 * (-1)) = 2 * (rho 43183 * rho 43184) := by
      rw [hd0, hd1, hd2]
      linear_combination r4969
    have hd4 : rho 43198 * (2 - (rho 43184 * rho 43184 + rho 43183 * rho 43183 * (-1))) = rho 43184 * rho 43184 - rho 43183 * rho 43183 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4970
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX153 rho : Seg45.F), (seg45AccY153 rho : Seg45.F)⟩
      ⟨(rho 43183 : Seg45.F), (rho 43184 : Seg45.F)⟩
      ⟨(rho 43190 : Seg45.F), (rho 43191 : Seg45.F)⟩
      ⟨(seg45AccX154 rho : Seg45.F), (seg45AccY154 rho : Seg45.F)⟩
      ⟨(rho 43197 : Seg45.F), (rho 43198 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung153

theorem seg45_hstep_c13 (rho : Nat -> Seg45.F) (h : Seg45.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (40948 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 143 ≤ i → i < 154 →
      EdwardsBridge.onCurve (seg45LadderAccState rho i) →
      EdwardsBridge.onCurve (seg45LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg45LadderAccState rho i) (seg45LadderCurState rho i)
        (seg45LadderAccState rho (i + 1)) (seg45LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg45_rung143 rho h bits[143]! (hbitAt 143 (by omega)) hacc hcur
  · exact seg45_rung144 rho h bits[144]! (hbitAt 144 (by omega)) hacc hcur
  · exact seg45_rung145 rho h bits[145]! (hbitAt 145 (by omega)) hacc hcur
  · exact seg45_rung146 rho h bits[146]! (hbitAt 146 (by omega)) hacc hcur
  · exact seg45_rung147 rho h bits[147]! (hbitAt 147 (by omega)) hacc hcur
  · exact seg45_rung148 rho h bits[148]! (hbitAt 148 (by omega)) hacc hcur
  · exact seg45_rung149 rho h bits[149]! (hbitAt 149 (by omega)) hacc hcur
  · exact seg45_rung150 rho h bits[150]! (hbitAt 150 (by omega)) hacc hcur
  · exact seg45_rung151 rho h bits[151]! (hbitAt 151 (by omega)) hacc hcur
  · exact seg45_rung152 rho h bits[152]! (hbitAt 152 (by omega)) hacc hcur
  · exact seg45_rung153 rho h bits[153]! (hbitAt 153 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
