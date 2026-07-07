import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg45_rows220 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5895 rho ∧ Seg45.relationRow5896 rho ∧ Seg45.relationRow5897 rho ∧ Seg45.relationRow5898 rho ∧ Seg45.relationRow5899 rho ∧ Seg45.relationRow5900 rho ∧ Seg45.relationRow5901 rho ∧ Seg45.relationRow5902 rho ∧ Seg45.relationRow5903 rho ∧ Seg45.relationRow5904 rho ∧ Seg45.relationRow5905 rho ∧ Seg45.relationRow5906 rho ∧ Seg45.relationRow5907 rho ∧ Seg45.relationRow5908 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p73, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart73 at p73
  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5895, r5896, r5897, r5898, r5899, r5900, r5901, r5902, r5903, r5904, r5905, r5906, r5907, r5908, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5895, r5896, r5897, r5898, r5899, r5900, r5901, r5902, r5903, r5904, r5905, r5906, r5907, r5908⟩

theorem seg45_rung220 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41168 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX220 rho : Seg45.F), (seg45AccY220 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44121 : Seg45.F), (rho 44122 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX220 rho : Seg45.F), (seg45AccY220 rho : Seg45.F)⟩
        ⟨(rho 44121 : Seg45.F), (rho 44122 : Seg45.F)⟩
        ⟨(seg45AccX221 rho : Seg45.F), (seg45AccY221 rho : Seg45.F)⟩
        ⟨(rho 44135 : Seg45.F), (rho 44136 : Seg45.F)⟩ := by
  obtain ⟨r5895, r5896, r5897, r5898, r5899, r5900, r5901, r5902, r5903, r5904, r5905, r5906, r5907, r5908⟩ := seg45_rows220 rho h
  unfold Seg45.relationRow5895 at r5895
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5895
  unfold Seg45.relationRow5896 at r5896
  unfold Seg45.relationRow5897 at r5897
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5897
  unfold Seg45.relationRow5898 at r5898
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5898
  unfold Seg45.relationRow5899 at r5899
  unfold Seg45.relationRow5900 at r5900
  unfold Seg45.relationRow5901 at r5901
  unfold Seg45.relationRow5902 at r5902
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5902
  unfold Seg45.relationRow5903 at r5903
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5903
  unfold Seg45.relationRow5904 at r5904
  unfold Seg45.relationRow5905 at r5905
  unfold Seg45.relationRow5906 at r5906
  unfold Seg45.relationRow5907 at r5907
  unfold Seg45.relationRow5908 at r5908
  have hrung220 (bit : Bool) (hbit : rho 41168 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX220 rho : Seg45.F), (seg45AccY220 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44121 : Seg45.F), (rho 44122 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX220 rho : Seg45.F), (seg45AccY220 rho : Seg45.F)⟩
        ⟨(rho 44121 : Seg45.F), (rho 44122 : Seg45.F)⟩
        ⟨(seg45AccX221 rho : Seg45.F), (seg45AccY221 rho : Seg45.F)⟩
        ⟨(rho 44135 : Seg45.F), (rho 44136 : Seg45.F)⟩ := by
    have hnextx : seg45AccX221 rho = seg45AccX220 rho + rho 44130 := by
      unfold seg45AccX221 seg45AccX220
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 70]
      ring
    have hnexty : seg45AccY221 rho = seg45AccY220 rho + rho 44131 := by
      unfold seg45AccY221 seg45AccY220
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 70]
      ring
    have hsum : seg45AccX220 rho + seg45AccY220 rho = rho 44123 := by
      unfold seg45AccX220 seg45AccY220
      linear_combination r5895
    have ha0 : (rho 44121 + rho 44122) * (seg45AccX220 rho + seg45AccY220 rho) = rho 44124 := by
      rw [hsum]
      linear_combination r5896
    have ha1 : rho 44122 * seg45AccX220 rho = rho 44125 := by
      unfold seg45AccX220
      linear_combination r5897
    have ha2 : rho 44121 * seg45AccY220 rho = rho 44126 := by
      unfold seg45AccY220
      linear_combination r5898
    have ha3 : 3021 * rho 44125 * rho 44126 = rho 44127 := by
      linear_combination r5899
    have ha4 : rho 44128 * (1 + rho 44127) = rho 44125 + rho 44126 := by
      linear_combination r5900
    have ha5 : rho 44129 * (1 - rho 44127) = rho 44124 - rho 44125 - rho 44126 := by
      linear_combination r5901
    have haddx :
        rho 44128 * (1 + 3021 * (rho 44122 * seg45AccX220 rho) * (rho 44121 * seg45AccY220 rho)) =
          rho 44122 * seg45AccX220 rho + rho 44121 * seg45AccY220 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44129 * (1 - 3021 * (rho 44122 * seg45AccX220 rho) * (rho 44121 * seg45AccY220 rho)) =
          (-1) * (rho 44122 * seg45AccX220 rho) - rho 44121 * seg45AccY220 rho +
            (seg45AccY220 rho - seg45AccX220 rho * (-1)) * (rho 44121 + rho 44122) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44129 * (1 - rho 44127) = rho 44124 - rho 44125 - rho 44126 := ha5
        _ = (-1) * rho 44125 - rho 44126 + (seg45AccY220 rho - seg45AccX220 rho * (-1)) * (rho 44121 + rho 44122) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX221 rho = seg45AccX220 rho - Bool.toZMod bit * (seg45AccX220 rho - rho 44128) := by
      have hd : rho 44130 = Bool.toZMod bit * (rho 44128 - seg45AccX220 rho) := by
        rw [← hbit]
        unfold seg45AccX220
        linear_combination -r5902
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY221 rho = seg45AccY220 rho - Bool.toZMod bit * (seg45AccY220 rho - rho 44129) := by
      have hd : rho 44131 = Bool.toZMod bit * (rho 44129 - seg45AccY220 rho) := by
        rw [← hbit]
        unfold seg45AccY220
        linear_combination -r5903
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44121 * rho 44122 = rho 44132 := by linear_combination r5904
    have hd1 : rho 44121 * rho 44121 = rho 44133 := by linear_combination r5905
    have hd2 : rho 44122 * rho 44122 = rho 44134 := by linear_combination r5906
    have hd3 : rho 44135 * (rho 44122 * rho 44122 + rho 44121 * rho 44121 * (-1)) = 2 * (rho 44121 * rho 44122) := by
      rw [hd0, hd1, hd2]
      linear_combination r5907
    have hd4 : rho 44136 * (2 - (rho 44122 * rho 44122 + rho 44121 * rho 44121 * (-1))) = rho 44122 * rho 44122 - rho 44121 * rho 44121 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5908
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX220 rho : Seg45.F), (seg45AccY220 rho : Seg45.F)⟩
      ⟨(rho 44121 : Seg45.F), (rho 44122 : Seg45.F)⟩
      ⟨(rho 44128 : Seg45.F), (rho 44129 : Seg45.F)⟩
      ⟨(seg45AccX221 rho : Seg45.F), (seg45AccY221 rho : Seg45.F)⟩
      ⟨(rho 44135 : Seg45.F), (rho 44136 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung220

theorem seg45_rows221 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5909 rho ∧ Seg45.relationRow5910 rho ∧ Seg45.relationRow5911 rho ∧ Seg45.relationRow5912 rho ∧ Seg45.relationRow5913 rho ∧ Seg45.relationRow5914 rho ∧ Seg45.relationRow5915 rho ∧ Seg45.relationRow5916 rho ∧ Seg45.relationRow5917 rho ∧ Seg45.relationRow5918 rho ∧ Seg45.relationRow5919 rho ∧ Seg45.relationRow5920 rho ∧ Seg45.relationRow5921 rho ∧ Seg45.relationRow5922 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p73, p74, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart73 at p73
  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5909, r5910, r5911, r5912, r5913, r5914, r5915, r5916, r5917, r5918, r5919⟩
  unfold Seg45.relationPart74 at p74
  rcases p74 with ⟨r5920, r5921, r5922, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5909, r5910, r5911, r5912, r5913, r5914, r5915, r5916, r5917, r5918, r5919, r5920, r5921, r5922⟩

theorem seg45_rung221 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41169 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX221 rho : Seg45.F), (seg45AccY221 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44135 : Seg45.F), (rho 44136 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX221 rho : Seg45.F), (seg45AccY221 rho : Seg45.F)⟩
        ⟨(rho 44135 : Seg45.F), (rho 44136 : Seg45.F)⟩
        ⟨(seg45AccX222 rho : Seg45.F), (seg45AccY222 rho : Seg45.F)⟩
        ⟨(rho 44149 : Seg45.F), (rho 44150 : Seg45.F)⟩ := by
  obtain ⟨r5909, r5910, r5911, r5912, r5913, r5914, r5915, r5916, r5917, r5918, r5919, r5920, r5921, r5922⟩ := seg45_rows221 rho h
  unfold Seg45.relationRow5909 at r5909
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5909
  unfold Seg45.relationRow5910 at r5910
  unfold Seg45.relationRow5911 at r5911
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5911
  unfold Seg45.relationRow5912 at r5912
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5912
  unfold Seg45.relationRow5913 at r5913
  unfold Seg45.relationRow5914 at r5914
  unfold Seg45.relationRow5915 at r5915
  unfold Seg45.relationRow5916 at r5916
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5916
  unfold Seg45.relationRow5917 at r5917
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5917
  unfold Seg45.relationRow5918 at r5918
  unfold Seg45.relationRow5919 at r5919
  unfold Seg45.relationRow5920 at r5920
  unfold Seg45.relationRow5921 at r5921
  unfold Seg45.relationRow5922 at r5922
  have hrung221 (bit : Bool) (hbit : rho 41169 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX221 rho : Seg45.F), (seg45AccY221 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44135 : Seg45.F), (rho 44136 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX221 rho : Seg45.F), (seg45AccY221 rho : Seg45.F)⟩
        ⟨(rho 44135 : Seg45.F), (rho 44136 : Seg45.F)⟩
        ⟨(seg45AccX222 rho : Seg45.F), (seg45AccY222 rho : Seg45.F)⟩
        ⟨(rho 44149 : Seg45.F), (rho 44150 : Seg45.F)⟩ := by
    have hnextx : seg45AccX222 rho = seg45AccX221 rho + rho 44144 := by
      unfold seg45AccX222 seg45AccX221
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 71]
      ring
    have hnexty : seg45AccY222 rho = seg45AccY221 rho + rho 44145 := by
      unfold seg45AccY222 seg45AccY221
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 71]
      ring
    have hsum : seg45AccX221 rho + seg45AccY221 rho = rho 44137 := by
      unfold seg45AccX221 seg45AccY221
      linear_combination r5909
    have ha0 : (rho 44135 + rho 44136) * (seg45AccX221 rho + seg45AccY221 rho) = rho 44138 := by
      rw [hsum]
      linear_combination r5910
    have ha1 : rho 44136 * seg45AccX221 rho = rho 44139 := by
      unfold seg45AccX221
      linear_combination r5911
    have ha2 : rho 44135 * seg45AccY221 rho = rho 44140 := by
      unfold seg45AccY221
      linear_combination r5912
    have ha3 : 3021 * rho 44139 * rho 44140 = rho 44141 := by
      linear_combination r5913
    have ha4 : rho 44142 * (1 + rho 44141) = rho 44139 + rho 44140 := by
      linear_combination r5914
    have ha5 : rho 44143 * (1 - rho 44141) = rho 44138 - rho 44139 - rho 44140 := by
      linear_combination r5915
    have haddx :
        rho 44142 * (1 + 3021 * (rho 44136 * seg45AccX221 rho) * (rho 44135 * seg45AccY221 rho)) =
          rho 44136 * seg45AccX221 rho + rho 44135 * seg45AccY221 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44143 * (1 - 3021 * (rho 44136 * seg45AccX221 rho) * (rho 44135 * seg45AccY221 rho)) =
          (-1) * (rho 44136 * seg45AccX221 rho) - rho 44135 * seg45AccY221 rho +
            (seg45AccY221 rho - seg45AccX221 rho * (-1)) * (rho 44135 + rho 44136) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44143 * (1 - rho 44141) = rho 44138 - rho 44139 - rho 44140 := ha5
        _ = (-1) * rho 44139 - rho 44140 + (seg45AccY221 rho - seg45AccX221 rho * (-1)) * (rho 44135 + rho 44136) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX222 rho = seg45AccX221 rho - Bool.toZMod bit * (seg45AccX221 rho - rho 44142) := by
      have hd : rho 44144 = Bool.toZMod bit * (rho 44142 - seg45AccX221 rho) := by
        rw [← hbit]
        unfold seg45AccX221
        linear_combination -r5916
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY222 rho = seg45AccY221 rho - Bool.toZMod bit * (seg45AccY221 rho - rho 44143) := by
      have hd : rho 44145 = Bool.toZMod bit * (rho 44143 - seg45AccY221 rho) := by
        rw [← hbit]
        unfold seg45AccY221
        linear_combination -r5917
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44135 * rho 44136 = rho 44146 := by linear_combination r5918
    have hd1 : rho 44135 * rho 44135 = rho 44147 := by linear_combination r5919
    have hd2 : rho 44136 * rho 44136 = rho 44148 := by linear_combination r5920
    have hd3 : rho 44149 * (rho 44136 * rho 44136 + rho 44135 * rho 44135 * (-1)) = 2 * (rho 44135 * rho 44136) := by
      rw [hd0, hd1, hd2]
      linear_combination r5921
    have hd4 : rho 44150 * (2 - (rho 44136 * rho 44136 + rho 44135 * rho 44135 * (-1))) = rho 44136 * rho 44136 - rho 44135 * rho 44135 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5922
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX221 rho : Seg45.F), (seg45AccY221 rho : Seg45.F)⟩
      ⟨(rho 44135 : Seg45.F), (rho 44136 : Seg45.F)⟩
      ⟨(rho 44142 : Seg45.F), (rho 44143 : Seg45.F)⟩
      ⟨(seg45AccX222 rho : Seg45.F), (seg45AccY222 rho : Seg45.F)⟩
      ⟨(rho 44149 : Seg45.F), (rho 44150 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung221

theorem seg45_rows222 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5923 rho ∧ Seg45.relationRow5924 rho ∧ Seg45.relationRow5925 rho ∧ Seg45.relationRow5926 rho ∧ Seg45.relationRow5927 rho ∧ Seg45.relationRow5928 rho ∧ Seg45.relationRow5929 rho ∧ Seg45.relationRow5930 rho ∧ Seg45.relationRow5931 rho ∧ Seg45.relationRow5932 rho ∧ Seg45.relationRow5933 rho ∧ Seg45.relationRow5934 rho ∧ Seg45.relationRow5935 rho ∧ Seg45.relationRow5936 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p74, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart74 at p74
  rcases p74 with ⟨_, _, _, r5923, r5924, r5925, r5926, r5927, r5928, r5929, r5930, r5931, r5932, r5933, r5934, r5935, r5936, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5923, r5924, r5925, r5926, r5927, r5928, r5929, r5930, r5931, r5932, r5933, r5934, r5935, r5936⟩

theorem seg45_rung222 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41170 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX222 rho : Seg45.F), (seg45AccY222 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44149 : Seg45.F), (rho 44150 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX222 rho : Seg45.F), (seg45AccY222 rho : Seg45.F)⟩
        ⟨(rho 44149 : Seg45.F), (rho 44150 : Seg45.F)⟩
        ⟨(seg45AccX223 rho : Seg45.F), (seg45AccY223 rho : Seg45.F)⟩
        ⟨(rho 44163 : Seg45.F), (rho 44164 : Seg45.F)⟩ := by
  obtain ⟨r5923, r5924, r5925, r5926, r5927, r5928, r5929, r5930, r5931, r5932, r5933, r5934, r5935, r5936⟩ := seg45_rows222 rho h
  unfold Seg45.relationRow5923 at r5923
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5923
  unfold Seg45.relationRow5924 at r5924
  unfold Seg45.relationRow5925 at r5925
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5925
  unfold Seg45.relationRow5926 at r5926
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5926
  unfold Seg45.relationRow5927 at r5927
  unfold Seg45.relationRow5928 at r5928
  unfold Seg45.relationRow5929 at r5929
  unfold Seg45.relationRow5930 at r5930
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5930
  unfold Seg45.relationRow5931 at r5931
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5931
  unfold Seg45.relationRow5932 at r5932
  unfold Seg45.relationRow5933 at r5933
  unfold Seg45.relationRow5934 at r5934
  unfold Seg45.relationRow5935 at r5935
  unfold Seg45.relationRow5936 at r5936
  have hrung222 (bit : Bool) (hbit : rho 41170 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX222 rho : Seg45.F), (seg45AccY222 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44149 : Seg45.F), (rho 44150 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX222 rho : Seg45.F), (seg45AccY222 rho : Seg45.F)⟩
        ⟨(rho 44149 : Seg45.F), (rho 44150 : Seg45.F)⟩
        ⟨(seg45AccX223 rho : Seg45.F), (seg45AccY223 rho : Seg45.F)⟩
        ⟨(rho 44163 : Seg45.F), (rho 44164 : Seg45.F)⟩ := by
    have hnextx : seg45AccX223 rho = seg45AccX222 rho + rho 44158 := by
      unfold seg45AccX223 seg45AccX222
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 72]
      ring
    have hnexty : seg45AccY223 rho = seg45AccY222 rho + rho 44159 := by
      unfold seg45AccY223 seg45AccY222
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 72]
      ring
    have hsum : seg45AccX222 rho + seg45AccY222 rho = rho 44151 := by
      unfold seg45AccX222 seg45AccY222
      linear_combination r5923
    have ha0 : (rho 44149 + rho 44150) * (seg45AccX222 rho + seg45AccY222 rho) = rho 44152 := by
      rw [hsum]
      linear_combination r5924
    have ha1 : rho 44150 * seg45AccX222 rho = rho 44153 := by
      unfold seg45AccX222
      linear_combination r5925
    have ha2 : rho 44149 * seg45AccY222 rho = rho 44154 := by
      unfold seg45AccY222
      linear_combination r5926
    have ha3 : 3021 * rho 44153 * rho 44154 = rho 44155 := by
      linear_combination r5927
    have ha4 : rho 44156 * (1 + rho 44155) = rho 44153 + rho 44154 := by
      linear_combination r5928
    have ha5 : rho 44157 * (1 - rho 44155) = rho 44152 - rho 44153 - rho 44154 := by
      linear_combination r5929
    have haddx :
        rho 44156 * (1 + 3021 * (rho 44150 * seg45AccX222 rho) * (rho 44149 * seg45AccY222 rho)) =
          rho 44150 * seg45AccX222 rho + rho 44149 * seg45AccY222 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44157 * (1 - 3021 * (rho 44150 * seg45AccX222 rho) * (rho 44149 * seg45AccY222 rho)) =
          (-1) * (rho 44150 * seg45AccX222 rho) - rho 44149 * seg45AccY222 rho +
            (seg45AccY222 rho - seg45AccX222 rho * (-1)) * (rho 44149 + rho 44150) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44157 * (1 - rho 44155) = rho 44152 - rho 44153 - rho 44154 := ha5
        _ = (-1) * rho 44153 - rho 44154 + (seg45AccY222 rho - seg45AccX222 rho * (-1)) * (rho 44149 + rho 44150) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX223 rho = seg45AccX222 rho - Bool.toZMod bit * (seg45AccX222 rho - rho 44156) := by
      have hd : rho 44158 = Bool.toZMod bit * (rho 44156 - seg45AccX222 rho) := by
        rw [← hbit]
        unfold seg45AccX222
        linear_combination -r5930
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY223 rho = seg45AccY222 rho - Bool.toZMod bit * (seg45AccY222 rho - rho 44157) := by
      have hd : rho 44159 = Bool.toZMod bit * (rho 44157 - seg45AccY222 rho) := by
        rw [← hbit]
        unfold seg45AccY222
        linear_combination -r5931
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44149 * rho 44150 = rho 44160 := by linear_combination r5932
    have hd1 : rho 44149 * rho 44149 = rho 44161 := by linear_combination r5933
    have hd2 : rho 44150 * rho 44150 = rho 44162 := by linear_combination r5934
    have hd3 : rho 44163 * (rho 44150 * rho 44150 + rho 44149 * rho 44149 * (-1)) = 2 * (rho 44149 * rho 44150) := by
      rw [hd0, hd1, hd2]
      linear_combination r5935
    have hd4 : rho 44164 * (2 - (rho 44150 * rho 44150 + rho 44149 * rho 44149 * (-1))) = rho 44150 * rho 44150 - rho 44149 * rho 44149 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5936
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX222 rho : Seg45.F), (seg45AccY222 rho : Seg45.F)⟩
      ⟨(rho 44149 : Seg45.F), (rho 44150 : Seg45.F)⟩
      ⟨(rho 44156 : Seg45.F), (rho 44157 : Seg45.F)⟩
      ⟨(seg45AccX223 rho : Seg45.F), (seg45AccY223 rho : Seg45.F)⟩
      ⟨(rho 44163 : Seg45.F), (rho 44164 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung222

theorem seg45_rows223 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5937 rho ∧ Seg45.relationRow5938 rho ∧ Seg45.relationRow5939 rho ∧ Seg45.relationRow5940 rho ∧ Seg45.relationRow5941 rho ∧ Seg45.relationRow5942 rho ∧ Seg45.relationRow5943 rho ∧ Seg45.relationRow5944 rho ∧ Seg45.relationRow5945 rho ∧ Seg45.relationRow5946 rho ∧ Seg45.relationRow5947 rho ∧ Seg45.relationRow5948 rho ∧ Seg45.relationRow5949 rho ∧ Seg45.relationRow5950 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p74, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5937, r5938, r5939, r5940, r5941, r5942, r5943, r5944, r5945, r5946, r5947, r5948, r5949, r5950, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5937, r5938, r5939, r5940, r5941, r5942, r5943, r5944, r5945, r5946, r5947, r5948, r5949, r5950⟩

theorem seg45_rung223 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41171 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX223 rho : Seg45.F), (seg45AccY223 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44163 : Seg45.F), (rho 44164 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX223 rho : Seg45.F), (seg45AccY223 rho : Seg45.F)⟩
        ⟨(rho 44163 : Seg45.F), (rho 44164 : Seg45.F)⟩
        ⟨(seg45AccX224 rho : Seg45.F), (seg45AccY224 rho : Seg45.F)⟩
        ⟨(rho 44177 : Seg45.F), (rho 44178 : Seg45.F)⟩ := by
  obtain ⟨r5937, r5938, r5939, r5940, r5941, r5942, r5943, r5944, r5945, r5946, r5947, r5948, r5949, r5950⟩ := seg45_rows223 rho h
  unfold Seg45.relationRow5937 at r5937
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5937
  unfold Seg45.relationRow5938 at r5938
  unfold Seg45.relationRow5939 at r5939
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5939
  unfold Seg45.relationRow5940 at r5940
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5940
  unfold Seg45.relationRow5941 at r5941
  unfold Seg45.relationRow5942 at r5942
  unfold Seg45.relationRow5943 at r5943
  unfold Seg45.relationRow5944 at r5944
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5944
  unfold Seg45.relationRow5945 at r5945
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5945
  unfold Seg45.relationRow5946 at r5946
  unfold Seg45.relationRow5947 at r5947
  unfold Seg45.relationRow5948 at r5948
  unfold Seg45.relationRow5949 at r5949
  unfold Seg45.relationRow5950 at r5950
  have hrung223 (bit : Bool) (hbit : rho 41171 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX223 rho : Seg45.F), (seg45AccY223 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44163 : Seg45.F), (rho 44164 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX223 rho : Seg45.F), (seg45AccY223 rho : Seg45.F)⟩
        ⟨(rho 44163 : Seg45.F), (rho 44164 : Seg45.F)⟩
        ⟨(seg45AccX224 rho : Seg45.F), (seg45AccY224 rho : Seg45.F)⟩
        ⟨(rho 44177 : Seg45.F), (rho 44178 : Seg45.F)⟩ := by
    have hnextx : seg45AccX224 rho = seg45AccX223 rho + rho 44172 := by
      unfold seg45AccX224 seg45AccX223
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 73]
      ring
    have hnexty : seg45AccY224 rho = seg45AccY223 rho + rho 44173 := by
      unfold seg45AccY224 seg45AccY223
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 73]
      ring
    have hsum : seg45AccX223 rho + seg45AccY223 rho = rho 44165 := by
      unfold seg45AccX223 seg45AccY223
      linear_combination r5937
    have ha0 : (rho 44163 + rho 44164) * (seg45AccX223 rho + seg45AccY223 rho) = rho 44166 := by
      rw [hsum]
      linear_combination r5938
    have ha1 : rho 44164 * seg45AccX223 rho = rho 44167 := by
      unfold seg45AccX223
      linear_combination r5939
    have ha2 : rho 44163 * seg45AccY223 rho = rho 44168 := by
      unfold seg45AccY223
      linear_combination r5940
    have ha3 : 3021 * rho 44167 * rho 44168 = rho 44169 := by
      linear_combination r5941
    have ha4 : rho 44170 * (1 + rho 44169) = rho 44167 + rho 44168 := by
      linear_combination r5942
    have ha5 : rho 44171 * (1 - rho 44169) = rho 44166 - rho 44167 - rho 44168 := by
      linear_combination r5943
    have haddx :
        rho 44170 * (1 + 3021 * (rho 44164 * seg45AccX223 rho) * (rho 44163 * seg45AccY223 rho)) =
          rho 44164 * seg45AccX223 rho + rho 44163 * seg45AccY223 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44171 * (1 - 3021 * (rho 44164 * seg45AccX223 rho) * (rho 44163 * seg45AccY223 rho)) =
          (-1) * (rho 44164 * seg45AccX223 rho) - rho 44163 * seg45AccY223 rho +
            (seg45AccY223 rho - seg45AccX223 rho * (-1)) * (rho 44163 + rho 44164) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44171 * (1 - rho 44169) = rho 44166 - rho 44167 - rho 44168 := ha5
        _ = (-1) * rho 44167 - rho 44168 + (seg45AccY223 rho - seg45AccX223 rho * (-1)) * (rho 44163 + rho 44164) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX224 rho = seg45AccX223 rho - Bool.toZMod bit * (seg45AccX223 rho - rho 44170) := by
      have hd : rho 44172 = Bool.toZMod bit * (rho 44170 - seg45AccX223 rho) := by
        rw [← hbit]
        unfold seg45AccX223
        linear_combination -r5944
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY224 rho = seg45AccY223 rho - Bool.toZMod bit * (seg45AccY223 rho - rho 44171) := by
      have hd : rho 44173 = Bool.toZMod bit * (rho 44171 - seg45AccY223 rho) := by
        rw [← hbit]
        unfold seg45AccY223
        linear_combination -r5945
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44163 * rho 44164 = rho 44174 := by linear_combination r5946
    have hd1 : rho 44163 * rho 44163 = rho 44175 := by linear_combination r5947
    have hd2 : rho 44164 * rho 44164 = rho 44176 := by linear_combination r5948
    have hd3 : rho 44177 * (rho 44164 * rho 44164 + rho 44163 * rho 44163 * (-1)) = 2 * (rho 44163 * rho 44164) := by
      rw [hd0, hd1, hd2]
      linear_combination r5949
    have hd4 : rho 44178 * (2 - (rho 44164 * rho 44164 + rho 44163 * rho 44163 * (-1))) = rho 44164 * rho 44164 - rho 44163 * rho 44163 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5950
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX223 rho : Seg45.F), (seg45AccY223 rho : Seg45.F)⟩
      ⟨(rho 44163 : Seg45.F), (rho 44164 : Seg45.F)⟩
      ⟨(rho 44170 : Seg45.F), (rho 44171 : Seg45.F)⟩
      ⟨(seg45AccX224 rho : Seg45.F), (seg45AccY224 rho : Seg45.F)⟩
      ⟨(rho 44177 : Seg45.F), (rho 44178 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung223

theorem seg45_rows224 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5951 rho ∧ Seg45.relationRow5952 rho ∧ Seg45.relationRow5953 rho ∧ Seg45.relationRow5954 rho ∧ Seg45.relationRow5955 rho ∧ Seg45.relationRow5956 rho ∧ Seg45.relationRow5957 rho ∧ Seg45.relationRow5958 rho ∧ Seg45.relationRow5959 rho ∧ Seg45.relationRow5960 rho ∧ Seg45.relationRow5961 rho ∧ Seg45.relationRow5962 rho ∧ Seg45.relationRow5963 rho ∧ Seg45.relationRow5964 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p74, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5951, r5952, r5953, r5954, r5955, r5956, r5957, r5958, r5959, r5960, r5961, r5962, r5963, r5964, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5951, r5952, r5953, r5954, r5955, r5956, r5957, r5958, r5959, r5960, r5961, r5962, r5963, r5964⟩

theorem seg45_rung224 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41172 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX224 rho : Seg45.F), (seg45AccY224 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44177 : Seg45.F), (rho 44178 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX224 rho : Seg45.F), (seg45AccY224 rho : Seg45.F)⟩
        ⟨(rho 44177 : Seg45.F), (rho 44178 : Seg45.F)⟩
        ⟨(seg45AccX225 rho : Seg45.F), (seg45AccY225 rho : Seg45.F)⟩
        ⟨(rho 44191 : Seg45.F), (rho 44192 : Seg45.F)⟩ := by
  obtain ⟨r5951, r5952, r5953, r5954, r5955, r5956, r5957, r5958, r5959, r5960, r5961, r5962, r5963, r5964⟩ := seg45_rows224 rho h
  unfold Seg45.relationRow5951 at r5951
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5951
  unfold Seg45.relationRow5952 at r5952
  unfold Seg45.relationRow5953 at r5953
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5953
  unfold Seg45.relationRow5954 at r5954
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5954
  unfold Seg45.relationRow5955 at r5955
  unfold Seg45.relationRow5956 at r5956
  unfold Seg45.relationRow5957 at r5957
  unfold Seg45.relationRow5958 at r5958
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5958
  unfold Seg45.relationRow5959 at r5959
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5959
  unfold Seg45.relationRow5960 at r5960
  unfold Seg45.relationRow5961 at r5961
  unfold Seg45.relationRow5962 at r5962
  unfold Seg45.relationRow5963 at r5963
  unfold Seg45.relationRow5964 at r5964
  have hrung224 (bit : Bool) (hbit : rho 41172 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX224 rho : Seg45.F), (seg45AccY224 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44177 : Seg45.F), (rho 44178 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX224 rho : Seg45.F), (seg45AccY224 rho : Seg45.F)⟩
        ⟨(rho 44177 : Seg45.F), (rho 44178 : Seg45.F)⟩
        ⟨(seg45AccX225 rho : Seg45.F), (seg45AccY225 rho : Seg45.F)⟩
        ⟨(rho 44191 : Seg45.F), (rho 44192 : Seg45.F)⟩ := by
    have hnextx : seg45AccX225 rho = seg45AccX224 rho + rho 44186 := by
      unfold seg45AccX225 seg45AccX224
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 74]
      ring
    have hnexty : seg45AccY225 rho = seg45AccY224 rho + rho 44187 := by
      unfold seg45AccY225 seg45AccY224
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 74]
      ring
    have hsum : seg45AccX224 rho + seg45AccY224 rho = rho 44179 := by
      unfold seg45AccX224 seg45AccY224
      linear_combination r5951
    have ha0 : (rho 44177 + rho 44178) * (seg45AccX224 rho + seg45AccY224 rho) = rho 44180 := by
      rw [hsum]
      linear_combination r5952
    have ha1 : rho 44178 * seg45AccX224 rho = rho 44181 := by
      unfold seg45AccX224
      linear_combination r5953
    have ha2 : rho 44177 * seg45AccY224 rho = rho 44182 := by
      unfold seg45AccY224
      linear_combination r5954
    have ha3 : 3021 * rho 44181 * rho 44182 = rho 44183 := by
      linear_combination r5955
    have ha4 : rho 44184 * (1 + rho 44183) = rho 44181 + rho 44182 := by
      linear_combination r5956
    have ha5 : rho 44185 * (1 - rho 44183) = rho 44180 - rho 44181 - rho 44182 := by
      linear_combination r5957
    have haddx :
        rho 44184 * (1 + 3021 * (rho 44178 * seg45AccX224 rho) * (rho 44177 * seg45AccY224 rho)) =
          rho 44178 * seg45AccX224 rho + rho 44177 * seg45AccY224 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44185 * (1 - 3021 * (rho 44178 * seg45AccX224 rho) * (rho 44177 * seg45AccY224 rho)) =
          (-1) * (rho 44178 * seg45AccX224 rho) - rho 44177 * seg45AccY224 rho +
            (seg45AccY224 rho - seg45AccX224 rho * (-1)) * (rho 44177 + rho 44178) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44185 * (1 - rho 44183) = rho 44180 - rho 44181 - rho 44182 := ha5
        _ = (-1) * rho 44181 - rho 44182 + (seg45AccY224 rho - seg45AccX224 rho * (-1)) * (rho 44177 + rho 44178) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX225 rho = seg45AccX224 rho - Bool.toZMod bit * (seg45AccX224 rho - rho 44184) := by
      have hd : rho 44186 = Bool.toZMod bit * (rho 44184 - seg45AccX224 rho) := by
        rw [← hbit]
        unfold seg45AccX224
        linear_combination -r5958
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY225 rho = seg45AccY224 rho - Bool.toZMod bit * (seg45AccY224 rho - rho 44185) := by
      have hd : rho 44187 = Bool.toZMod bit * (rho 44185 - seg45AccY224 rho) := by
        rw [← hbit]
        unfold seg45AccY224
        linear_combination -r5959
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44177 * rho 44178 = rho 44188 := by linear_combination r5960
    have hd1 : rho 44177 * rho 44177 = rho 44189 := by linear_combination r5961
    have hd2 : rho 44178 * rho 44178 = rho 44190 := by linear_combination r5962
    have hd3 : rho 44191 * (rho 44178 * rho 44178 + rho 44177 * rho 44177 * (-1)) = 2 * (rho 44177 * rho 44178) := by
      rw [hd0, hd1, hd2]
      linear_combination r5963
    have hd4 : rho 44192 * (2 - (rho 44178 * rho 44178 + rho 44177 * rho 44177 * (-1))) = rho 44178 * rho 44178 - rho 44177 * rho 44177 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5964
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX224 rho : Seg45.F), (seg45AccY224 rho : Seg45.F)⟩
      ⟨(rho 44177 : Seg45.F), (rho 44178 : Seg45.F)⟩
      ⟨(rho 44184 : Seg45.F), (rho 44185 : Seg45.F)⟩
      ⟨(seg45AccX225 rho : Seg45.F), (seg45AccY225 rho : Seg45.F)⟩
      ⟨(rho 44191 : Seg45.F), (rho 44192 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung224

theorem seg45_rows225 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5965 rho ∧ Seg45.relationRow5966 rho ∧ Seg45.relationRow5967 rho ∧ Seg45.relationRow5968 rho ∧ Seg45.relationRow5969 rho ∧ Seg45.relationRow5970 rho ∧ Seg45.relationRow5971 rho ∧ Seg45.relationRow5972 rho ∧ Seg45.relationRow5973 rho ∧ Seg45.relationRow5974 rho ∧ Seg45.relationRow5975 rho ∧ Seg45.relationRow5976 rho ∧ Seg45.relationRow5977 rho ∧ Seg45.relationRow5978 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p74, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5965, r5966, r5967, r5968, r5969, r5970, r5971, r5972, r5973, r5974, r5975, r5976, r5977, r5978, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5965, r5966, r5967, r5968, r5969, r5970, r5971, r5972, r5973, r5974, r5975, r5976, r5977, r5978⟩

theorem seg45_rung225 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41173 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX225 rho : Seg45.F), (seg45AccY225 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44191 : Seg45.F), (rho 44192 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX225 rho : Seg45.F), (seg45AccY225 rho : Seg45.F)⟩
        ⟨(rho 44191 : Seg45.F), (rho 44192 : Seg45.F)⟩
        ⟨(seg45AccX226 rho : Seg45.F), (seg45AccY226 rho : Seg45.F)⟩
        ⟨(rho 44205 : Seg45.F), (rho 44206 : Seg45.F)⟩ := by
  obtain ⟨r5965, r5966, r5967, r5968, r5969, r5970, r5971, r5972, r5973, r5974, r5975, r5976, r5977, r5978⟩ := seg45_rows225 rho h
  unfold Seg45.relationRow5965 at r5965
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5965
  unfold Seg45.relationRow5966 at r5966
  unfold Seg45.relationRow5967 at r5967
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5967
  unfold Seg45.relationRow5968 at r5968
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5968
  unfold Seg45.relationRow5969 at r5969
  unfold Seg45.relationRow5970 at r5970
  unfold Seg45.relationRow5971 at r5971
  unfold Seg45.relationRow5972 at r5972
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5972
  unfold Seg45.relationRow5973 at r5973
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5973
  unfold Seg45.relationRow5974 at r5974
  unfold Seg45.relationRow5975 at r5975
  unfold Seg45.relationRow5976 at r5976
  unfold Seg45.relationRow5977 at r5977
  unfold Seg45.relationRow5978 at r5978
  have hrung225 (bit : Bool) (hbit : rho 41173 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX225 rho : Seg45.F), (seg45AccY225 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44191 : Seg45.F), (rho 44192 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX225 rho : Seg45.F), (seg45AccY225 rho : Seg45.F)⟩
        ⟨(rho 44191 : Seg45.F), (rho 44192 : Seg45.F)⟩
        ⟨(seg45AccX226 rho : Seg45.F), (seg45AccY226 rho : Seg45.F)⟩
        ⟨(rho 44205 : Seg45.F), (rho 44206 : Seg45.F)⟩ := by
    have hnextx : seg45AccX226 rho = seg45AccX225 rho + rho 44200 := by
      unfold seg45AccX226 seg45AccX225
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 75]
      ring
    have hnexty : seg45AccY226 rho = seg45AccY225 rho + rho 44201 := by
      unfold seg45AccY226 seg45AccY225
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 75]
      ring
    have hsum : seg45AccX225 rho + seg45AccY225 rho = rho 44193 := by
      unfold seg45AccX225 seg45AccY225
      linear_combination r5965
    have ha0 : (rho 44191 + rho 44192) * (seg45AccX225 rho + seg45AccY225 rho) = rho 44194 := by
      rw [hsum]
      linear_combination r5966
    have ha1 : rho 44192 * seg45AccX225 rho = rho 44195 := by
      unfold seg45AccX225
      linear_combination r5967
    have ha2 : rho 44191 * seg45AccY225 rho = rho 44196 := by
      unfold seg45AccY225
      linear_combination r5968
    have ha3 : 3021 * rho 44195 * rho 44196 = rho 44197 := by
      linear_combination r5969
    have ha4 : rho 44198 * (1 + rho 44197) = rho 44195 + rho 44196 := by
      linear_combination r5970
    have ha5 : rho 44199 * (1 - rho 44197) = rho 44194 - rho 44195 - rho 44196 := by
      linear_combination r5971
    have haddx :
        rho 44198 * (1 + 3021 * (rho 44192 * seg45AccX225 rho) * (rho 44191 * seg45AccY225 rho)) =
          rho 44192 * seg45AccX225 rho + rho 44191 * seg45AccY225 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44199 * (1 - 3021 * (rho 44192 * seg45AccX225 rho) * (rho 44191 * seg45AccY225 rho)) =
          (-1) * (rho 44192 * seg45AccX225 rho) - rho 44191 * seg45AccY225 rho +
            (seg45AccY225 rho - seg45AccX225 rho * (-1)) * (rho 44191 + rho 44192) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44199 * (1 - rho 44197) = rho 44194 - rho 44195 - rho 44196 := ha5
        _ = (-1) * rho 44195 - rho 44196 + (seg45AccY225 rho - seg45AccX225 rho * (-1)) * (rho 44191 + rho 44192) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX226 rho = seg45AccX225 rho - Bool.toZMod bit * (seg45AccX225 rho - rho 44198) := by
      have hd : rho 44200 = Bool.toZMod bit * (rho 44198 - seg45AccX225 rho) := by
        rw [← hbit]
        unfold seg45AccX225
        linear_combination -r5972
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY226 rho = seg45AccY225 rho - Bool.toZMod bit * (seg45AccY225 rho - rho 44199) := by
      have hd : rho 44201 = Bool.toZMod bit * (rho 44199 - seg45AccY225 rho) := by
        rw [← hbit]
        unfold seg45AccY225
        linear_combination -r5973
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44191 * rho 44192 = rho 44202 := by linear_combination r5974
    have hd1 : rho 44191 * rho 44191 = rho 44203 := by linear_combination r5975
    have hd2 : rho 44192 * rho 44192 = rho 44204 := by linear_combination r5976
    have hd3 : rho 44205 * (rho 44192 * rho 44192 + rho 44191 * rho 44191 * (-1)) = 2 * (rho 44191 * rho 44192) := by
      rw [hd0, hd1, hd2]
      linear_combination r5977
    have hd4 : rho 44206 * (2 - (rho 44192 * rho 44192 + rho 44191 * rho 44191 * (-1))) = rho 44192 * rho 44192 - rho 44191 * rho 44191 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5978
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX225 rho : Seg45.F), (seg45AccY225 rho : Seg45.F)⟩
      ⟨(rho 44191 : Seg45.F), (rho 44192 : Seg45.F)⟩
      ⟨(rho 44198 : Seg45.F), (rho 44199 : Seg45.F)⟩
      ⟨(seg45AccX226 rho : Seg45.F), (seg45AccY226 rho : Seg45.F)⟩
      ⟨(rho 44205 : Seg45.F), (rho 44206 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung225

theorem seg45_rows226 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5979 rho ∧ Seg45.relationRow5980 rho ∧ Seg45.relationRow5981 rho ∧ Seg45.relationRow5982 rho ∧ Seg45.relationRow5983 rho ∧ Seg45.relationRow5984 rho ∧ Seg45.relationRow5985 rho ∧ Seg45.relationRow5986 rho ∧ Seg45.relationRow5987 rho ∧ Seg45.relationRow5988 rho ∧ Seg45.relationRow5989 rho ∧ Seg45.relationRow5990 rho ∧ Seg45.relationRow5991 rho ∧ Seg45.relationRow5992 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p74, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5979, r5980, r5981, r5982, r5983, r5984, r5985, r5986, r5987, r5988, r5989, r5990, r5991, r5992, _, _, _, _, _, _, _⟩
  exact ⟨r5979, r5980, r5981, r5982, r5983, r5984, r5985, r5986, r5987, r5988, r5989, r5990, r5991, r5992⟩

theorem seg45_rung226 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41174 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX226 rho : Seg45.F), (seg45AccY226 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44205 : Seg45.F), (rho 44206 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX226 rho : Seg45.F), (seg45AccY226 rho : Seg45.F)⟩
        ⟨(rho 44205 : Seg45.F), (rho 44206 : Seg45.F)⟩
        ⟨(seg45AccX227 rho : Seg45.F), (seg45AccY227 rho : Seg45.F)⟩
        ⟨(rho 44219 : Seg45.F), (rho 44220 : Seg45.F)⟩ := by
  obtain ⟨r5979, r5980, r5981, r5982, r5983, r5984, r5985, r5986, r5987, r5988, r5989, r5990, r5991, r5992⟩ := seg45_rows226 rho h
  unfold Seg45.relationRow5979 at r5979
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5979
  unfold Seg45.relationRow5980 at r5980
  unfold Seg45.relationRow5981 at r5981
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5981
  unfold Seg45.relationRow5982 at r5982
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5982
  unfold Seg45.relationRow5983 at r5983
  unfold Seg45.relationRow5984 at r5984
  unfold Seg45.relationRow5985 at r5985
  unfold Seg45.relationRow5986 at r5986
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5986
  unfold Seg45.relationRow5987 at r5987
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5987
  unfold Seg45.relationRow5988 at r5988
  unfold Seg45.relationRow5989 at r5989
  unfold Seg45.relationRow5990 at r5990
  unfold Seg45.relationRow5991 at r5991
  unfold Seg45.relationRow5992 at r5992
  have hrung226 (bit : Bool) (hbit : rho 41174 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX226 rho : Seg45.F), (seg45AccY226 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44205 : Seg45.F), (rho 44206 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX226 rho : Seg45.F), (seg45AccY226 rho : Seg45.F)⟩
        ⟨(rho 44205 : Seg45.F), (rho 44206 : Seg45.F)⟩
        ⟨(seg45AccX227 rho : Seg45.F), (seg45AccY227 rho : Seg45.F)⟩
        ⟨(rho 44219 : Seg45.F), (rho 44220 : Seg45.F)⟩ := by
    have hnextx : seg45AccX227 rho = seg45AccX226 rho + rho 44214 := by
      unfold seg45AccX227 seg45AccX226
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 76]
      ring
    have hnexty : seg45AccY227 rho = seg45AccY226 rho + rho 44215 := by
      unfold seg45AccY227 seg45AccY226
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 76]
      ring
    have hsum : seg45AccX226 rho + seg45AccY226 rho = rho 44207 := by
      unfold seg45AccX226 seg45AccY226
      linear_combination r5979
    have ha0 : (rho 44205 + rho 44206) * (seg45AccX226 rho + seg45AccY226 rho) = rho 44208 := by
      rw [hsum]
      linear_combination r5980
    have ha1 : rho 44206 * seg45AccX226 rho = rho 44209 := by
      unfold seg45AccX226
      linear_combination r5981
    have ha2 : rho 44205 * seg45AccY226 rho = rho 44210 := by
      unfold seg45AccY226
      linear_combination r5982
    have ha3 : 3021 * rho 44209 * rho 44210 = rho 44211 := by
      linear_combination r5983
    have ha4 : rho 44212 * (1 + rho 44211) = rho 44209 + rho 44210 := by
      linear_combination r5984
    have ha5 : rho 44213 * (1 - rho 44211) = rho 44208 - rho 44209 - rho 44210 := by
      linear_combination r5985
    have haddx :
        rho 44212 * (1 + 3021 * (rho 44206 * seg45AccX226 rho) * (rho 44205 * seg45AccY226 rho)) =
          rho 44206 * seg45AccX226 rho + rho 44205 * seg45AccY226 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44213 * (1 - 3021 * (rho 44206 * seg45AccX226 rho) * (rho 44205 * seg45AccY226 rho)) =
          (-1) * (rho 44206 * seg45AccX226 rho) - rho 44205 * seg45AccY226 rho +
            (seg45AccY226 rho - seg45AccX226 rho * (-1)) * (rho 44205 + rho 44206) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44213 * (1 - rho 44211) = rho 44208 - rho 44209 - rho 44210 := ha5
        _ = (-1) * rho 44209 - rho 44210 + (seg45AccY226 rho - seg45AccX226 rho * (-1)) * (rho 44205 + rho 44206) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX227 rho = seg45AccX226 rho - Bool.toZMod bit * (seg45AccX226 rho - rho 44212) := by
      have hd : rho 44214 = Bool.toZMod bit * (rho 44212 - seg45AccX226 rho) := by
        rw [← hbit]
        unfold seg45AccX226
        linear_combination -r5986
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY227 rho = seg45AccY226 rho - Bool.toZMod bit * (seg45AccY226 rho - rho 44213) := by
      have hd : rho 44215 = Bool.toZMod bit * (rho 44213 - seg45AccY226 rho) := by
        rw [← hbit]
        unfold seg45AccY226
        linear_combination -r5987
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44205 * rho 44206 = rho 44216 := by linear_combination r5988
    have hd1 : rho 44205 * rho 44205 = rho 44217 := by linear_combination r5989
    have hd2 : rho 44206 * rho 44206 = rho 44218 := by linear_combination r5990
    have hd3 : rho 44219 * (rho 44206 * rho 44206 + rho 44205 * rho 44205 * (-1)) = 2 * (rho 44205 * rho 44206) := by
      rw [hd0, hd1, hd2]
      linear_combination r5991
    have hd4 : rho 44220 * (2 - (rho 44206 * rho 44206 + rho 44205 * rho 44205 * (-1))) = rho 44206 * rho 44206 - rho 44205 * rho 44205 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5992
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX226 rho : Seg45.F), (seg45AccY226 rho : Seg45.F)⟩
      ⟨(rho 44205 : Seg45.F), (rho 44206 : Seg45.F)⟩
      ⟨(rho 44212 : Seg45.F), (rho 44213 : Seg45.F)⟩
      ⟨(seg45AccX227 rho : Seg45.F), (seg45AccY227 rho : Seg45.F)⟩
      ⟨(rho 44219 : Seg45.F), (rho 44220 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung226

theorem seg45_rows227 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5993 rho ∧ Seg45.relationRow5994 rho ∧ Seg45.relationRow5995 rho ∧ Seg45.relationRow5996 rho ∧ Seg45.relationRow5997 rho ∧ Seg45.relationRow5998 rho ∧ Seg45.relationRow5999 rho ∧ Seg45.relationRow6000 rho ∧ Seg45.relationRow6001 rho ∧ Seg45.relationRow6002 rho ∧ Seg45.relationRow6003 rho ∧ Seg45.relationRow6004 rho ∧ Seg45.relationRow6005 rho ∧ Seg45.relationRow6006 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p74, p75, _, _, _, _
  ⟩
  unfold Seg45.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5993, r5994, r5995, r5996, r5997, r5998, r5999⟩
  unfold Seg45.relationPart75 at p75
  rcases p75 with ⟨r6000, r6001, r6002, r6003, r6004, r6005, r6006, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5993, r5994, r5995, r5996, r5997, r5998, r5999, r6000, r6001, r6002, r6003, r6004, r6005, r6006⟩

theorem seg45_rung227 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41175 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX227 rho : Seg45.F), (seg45AccY227 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44219 : Seg45.F), (rho 44220 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX227 rho : Seg45.F), (seg45AccY227 rho : Seg45.F)⟩
        ⟨(rho 44219 : Seg45.F), (rho 44220 : Seg45.F)⟩
        ⟨(seg45AccX228 rho : Seg45.F), (seg45AccY228 rho : Seg45.F)⟩
        ⟨(rho 44233 : Seg45.F), (rho 44234 : Seg45.F)⟩ := by
  obtain ⟨r5993, r5994, r5995, r5996, r5997, r5998, r5999, r6000, r6001, r6002, r6003, r6004, r6005, r6006⟩ := seg45_rows227 rho h
  unfold Seg45.relationRow5993 at r5993
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5993
  unfold Seg45.relationRow5994 at r5994
  unfold Seg45.relationRow5995 at r5995
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5995
  unfold Seg45.relationRow5996 at r5996
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5996
  unfold Seg45.relationRow5997 at r5997
  unfold Seg45.relationRow5998 at r5998
  unfold Seg45.relationRow5999 at r5999
  unfold Seg45.relationRow6000 at r6000
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6000
  unfold Seg45.relationRow6001 at r6001
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6001
  unfold Seg45.relationRow6002 at r6002
  unfold Seg45.relationRow6003 at r6003
  unfold Seg45.relationRow6004 at r6004
  unfold Seg45.relationRow6005 at r6005
  unfold Seg45.relationRow6006 at r6006
  have hrung227 (bit : Bool) (hbit : rho 41175 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX227 rho : Seg45.F), (seg45AccY227 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44219 : Seg45.F), (rho 44220 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX227 rho : Seg45.F), (seg45AccY227 rho : Seg45.F)⟩
        ⟨(rho 44219 : Seg45.F), (rho 44220 : Seg45.F)⟩
        ⟨(seg45AccX228 rho : Seg45.F), (seg45AccY228 rho : Seg45.F)⟩
        ⟨(rho 44233 : Seg45.F), (rho 44234 : Seg45.F)⟩ := by
    have hnextx : seg45AccX228 rho = seg45AccX227 rho + rho 44228 := by
      unfold seg45AccX228 seg45AccX227
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 77]
      ring
    have hnexty : seg45AccY228 rho = seg45AccY227 rho + rho 44229 := by
      unfold seg45AccY228 seg45AccY227
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 77]
      ring
    have hsum : seg45AccX227 rho + seg45AccY227 rho = rho 44221 := by
      unfold seg45AccX227 seg45AccY227
      linear_combination r5993
    have ha0 : (rho 44219 + rho 44220) * (seg45AccX227 rho + seg45AccY227 rho) = rho 44222 := by
      rw [hsum]
      linear_combination r5994
    have ha1 : rho 44220 * seg45AccX227 rho = rho 44223 := by
      unfold seg45AccX227
      linear_combination r5995
    have ha2 : rho 44219 * seg45AccY227 rho = rho 44224 := by
      unfold seg45AccY227
      linear_combination r5996
    have ha3 : 3021 * rho 44223 * rho 44224 = rho 44225 := by
      linear_combination r5997
    have ha4 : rho 44226 * (1 + rho 44225) = rho 44223 + rho 44224 := by
      linear_combination r5998
    have ha5 : rho 44227 * (1 - rho 44225) = rho 44222 - rho 44223 - rho 44224 := by
      linear_combination r5999
    have haddx :
        rho 44226 * (1 + 3021 * (rho 44220 * seg45AccX227 rho) * (rho 44219 * seg45AccY227 rho)) =
          rho 44220 * seg45AccX227 rho + rho 44219 * seg45AccY227 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44227 * (1 - 3021 * (rho 44220 * seg45AccX227 rho) * (rho 44219 * seg45AccY227 rho)) =
          (-1) * (rho 44220 * seg45AccX227 rho) - rho 44219 * seg45AccY227 rho +
            (seg45AccY227 rho - seg45AccX227 rho * (-1)) * (rho 44219 + rho 44220) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44227 * (1 - rho 44225) = rho 44222 - rho 44223 - rho 44224 := ha5
        _ = (-1) * rho 44223 - rho 44224 + (seg45AccY227 rho - seg45AccX227 rho * (-1)) * (rho 44219 + rho 44220) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX228 rho = seg45AccX227 rho - Bool.toZMod bit * (seg45AccX227 rho - rho 44226) := by
      have hd : rho 44228 = Bool.toZMod bit * (rho 44226 - seg45AccX227 rho) := by
        rw [← hbit]
        unfold seg45AccX227
        linear_combination -r6000
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY228 rho = seg45AccY227 rho - Bool.toZMod bit * (seg45AccY227 rho - rho 44227) := by
      have hd : rho 44229 = Bool.toZMod bit * (rho 44227 - seg45AccY227 rho) := by
        rw [← hbit]
        unfold seg45AccY227
        linear_combination -r6001
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44219 * rho 44220 = rho 44230 := by linear_combination r6002
    have hd1 : rho 44219 * rho 44219 = rho 44231 := by linear_combination r6003
    have hd2 : rho 44220 * rho 44220 = rho 44232 := by linear_combination r6004
    have hd3 : rho 44233 * (rho 44220 * rho 44220 + rho 44219 * rho 44219 * (-1)) = 2 * (rho 44219 * rho 44220) := by
      rw [hd0, hd1, hd2]
      linear_combination r6005
    have hd4 : rho 44234 * (2 - (rho 44220 * rho 44220 + rho 44219 * rho 44219 * (-1))) = rho 44220 * rho 44220 - rho 44219 * rho 44219 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6006
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX227 rho : Seg45.F), (seg45AccY227 rho : Seg45.F)⟩
      ⟨(rho 44219 : Seg45.F), (rho 44220 : Seg45.F)⟩
      ⟨(rho 44226 : Seg45.F), (rho 44227 : Seg45.F)⟩
      ⟨(seg45AccX228 rho : Seg45.F), (seg45AccY228 rho : Seg45.F)⟩
      ⟨(rho 44233 : Seg45.F), (rho 44234 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung227

theorem seg45_rows228 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow6007 rho ∧ Seg45.relationRow6008 rho ∧ Seg45.relationRow6009 rho ∧ Seg45.relationRow6010 rho ∧ Seg45.relationRow6011 rho ∧ Seg45.relationRow6012 rho ∧ Seg45.relationRow6013 rho ∧ Seg45.relationRow6014 rho ∧ Seg45.relationRow6015 rho ∧ Seg45.relationRow6016 rho ∧ Seg45.relationRow6017 rho ∧ Seg45.relationRow6018 rho ∧ Seg45.relationRow6019 rho ∧ Seg45.relationRow6020 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p75, _, _, _, _
  ⟩
  unfold Seg45.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, r6007, r6008, r6009, r6010, r6011, r6012, r6013, r6014, r6015, r6016, r6017, r6018, r6019, r6020, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6007, r6008, r6009, r6010, r6011, r6012, r6013, r6014, r6015, r6016, r6017, r6018, r6019, r6020⟩

theorem seg45_rung228 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41176 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX228 rho : Seg45.F), (seg45AccY228 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44233 : Seg45.F), (rho 44234 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX228 rho : Seg45.F), (seg45AccY228 rho : Seg45.F)⟩
        ⟨(rho 44233 : Seg45.F), (rho 44234 : Seg45.F)⟩
        ⟨(seg45AccX229 rho : Seg45.F), (seg45AccY229 rho : Seg45.F)⟩
        ⟨(rho 44247 : Seg45.F), (rho 44248 : Seg45.F)⟩ := by
  obtain ⟨r6007, r6008, r6009, r6010, r6011, r6012, r6013, r6014, r6015, r6016, r6017, r6018, r6019, r6020⟩ := seg45_rows228 rho h
  unfold Seg45.relationRow6007 at r6007
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6007
  unfold Seg45.relationRow6008 at r6008
  unfold Seg45.relationRow6009 at r6009
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6009
  unfold Seg45.relationRow6010 at r6010
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6010
  unfold Seg45.relationRow6011 at r6011
  unfold Seg45.relationRow6012 at r6012
  unfold Seg45.relationRow6013 at r6013
  unfold Seg45.relationRow6014 at r6014
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6014
  unfold Seg45.relationRow6015 at r6015
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6015
  unfold Seg45.relationRow6016 at r6016
  unfold Seg45.relationRow6017 at r6017
  unfold Seg45.relationRow6018 at r6018
  unfold Seg45.relationRow6019 at r6019
  unfold Seg45.relationRow6020 at r6020
  have hrung228 (bit : Bool) (hbit : rho 41176 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX228 rho : Seg45.F), (seg45AccY228 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44233 : Seg45.F), (rho 44234 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX228 rho : Seg45.F), (seg45AccY228 rho : Seg45.F)⟩
        ⟨(rho 44233 : Seg45.F), (rho 44234 : Seg45.F)⟩
        ⟨(seg45AccX229 rho : Seg45.F), (seg45AccY229 rho : Seg45.F)⟩
        ⟨(rho 44247 : Seg45.F), (rho 44248 : Seg45.F)⟩ := by
    have hnextx : seg45AccX229 rho = seg45AccX228 rho + rho 44242 := by
      unfold seg45AccX229 seg45AccX228
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 78]
      ring
    have hnexty : seg45AccY229 rho = seg45AccY228 rho + rho 44243 := by
      unfold seg45AccY229 seg45AccY228
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 78]
      ring
    have hsum : seg45AccX228 rho + seg45AccY228 rho = rho 44235 := by
      unfold seg45AccX228 seg45AccY228
      linear_combination r6007
    have ha0 : (rho 44233 + rho 44234) * (seg45AccX228 rho + seg45AccY228 rho) = rho 44236 := by
      rw [hsum]
      linear_combination r6008
    have ha1 : rho 44234 * seg45AccX228 rho = rho 44237 := by
      unfold seg45AccX228
      linear_combination r6009
    have ha2 : rho 44233 * seg45AccY228 rho = rho 44238 := by
      unfold seg45AccY228
      linear_combination r6010
    have ha3 : 3021 * rho 44237 * rho 44238 = rho 44239 := by
      linear_combination r6011
    have ha4 : rho 44240 * (1 + rho 44239) = rho 44237 + rho 44238 := by
      linear_combination r6012
    have ha5 : rho 44241 * (1 - rho 44239) = rho 44236 - rho 44237 - rho 44238 := by
      linear_combination r6013
    have haddx :
        rho 44240 * (1 + 3021 * (rho 44234 * seg45AccX228 rho) * (rho 44233 * seg45AccY228 rho)) =
          rho 44234 * seg45AccX228 rho + rho 44233 * seg45AccY228 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44241 * (1 - 3021 * (rho 44234 * seg45AccX228 rho) * (rho 44233 * seg45AccY228 rho)) =
          (-1) * (rho 44234 * seg45AccX228 rho) - rho 44233 * seg45AccY228 rho +
            (seg45AccY228 rho - seg45AccX228 rho * (-1)) * (rho 44233 + rho 44234) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44241 * (1 - rho 44239) = rho 44236 - rho 44237 - rho 44238 := ha5
        _ = (-1) * rho 44237 - rho 44238 + (seg45AccY228 rho - seg45AccX228 rho * (-1)) * (rho 44233 + rho 44234) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX229 rho = seg45AccX228 rho - Bool.toZMod bit * (seg45AccX228 rho - rho 44240) := by
      have hd : rho 44242 = Bool.toZMod bit * (rho 44240 - seg45AccX228 rho) := by
        rw [← hbit]
        unfold seg45AccX228
        linear_combination -r6014
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY229 rho = seg45AccY228 rho - Bool.toZMod bit * (seg45AccY228 rho - rho 44241) := by
      have hd : rho 44243 = Bool.toZMod bit * (rho 44241 - seg45AccY228 rho) := by
        rw [← hbit]
        unfold seg45AccY228
        linear_combination -r6015
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44233 * rho 44234 = rho 44244 := by linear_combination r6016
    have hd1 : rho 44233 * rho 44233 = rho 44245 := by linear_combination r6017
    have hd2 : rho 44234 * rho 44234 = rho 44246 := by linear_combination r6018
    have hd3 : rho 44247 * (rho 44234 * rho 44234 + rho 44233 * rho 44233 * (-1)) = 2 * (rho 44233 * rho 44234) := by
      rw [hd0, hd1, hd2]
      linear_combination r6019
    have hd4 : rho 44248 * (2 - (rho 44234 * rho 44234 + rho 44233 * rho 44233 * (-1))) = rho 44234 * rho 44234 - rho 44233 * rho 44233 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6020
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX228 rho : Seg45.F), (seg45AccY228 rho : Seg45.F)⟩
      ⟨(rho 44233 : Seg45.F), (rho 44234 : Seg45.F)⟩
      ⟨(rho 44240 : Seg45.F), (rho 44241 : Seg45.F)⟩
      ⟨(seg45AccX229 rho : Seg45.F), (seg45AccY229 rho : Seg45.F)⟩
      ⟨(rho 44247 : Seg45.F), (rho 44248 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung228

theorem seg45_rows229 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow6021 rho ∧ Seg45.relationRow6022 rho ∧ Seg45.relationRow6023 rho ∧ Seg45.relationRow6024 rho ∧ Seg45.relationRow6025 rho ∧ Seg45.relationRow6026 rho ∧ Seg45.relationRow6027 rho ∧ Seg45.relationRow6028 rho ∧ Seg45.relationRow6029 rho ∧ Seg45.relationRow6030 rho ∧ Seg45.relationRow6031 rho ∧ Seg45.relationRow6032 rho ∧ Seg45.relationRow6033 rho ∧ Seg45.relationRow6034 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p75, _, _, _, _
  ⟩
  unfold Seg45.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6021, r6022, r6023, r6024, r6025, r6026, r6027, r6028, r6029, r6030, r6031, r6032, r6033, r6034, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6021, r6022, r6023, r6024, r6025, r6026, r6027, r6028, r6029, r6030, r6031, r6032, r6033, r6034⟩

theorem seg45_rung229 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41177 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX229 rho : Seg45.F), (seg45AccY229 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44247 : Seg45.F), (rho 44248 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX229 rho : Seg45.F), (seg45AccY229 rho : Seg45.F)⟩
        ⟨(rho 44247 : Seg45.F), (rho 44248 : Seg45.F)⟩
        ⟨(seg45AccX230 rho : Seg45.F), (seg45AccY230 rho : Seg45.F)⟩
        ⟨(rho 44261 : Seg45.F), (rho 44262 : Seg45.F)⟩ := by
  obtain ⟨r6021, r6022, r6023, r6024, r6025, r6026, r6027, r6028, r6029, r6030, r6031, r6032, r6033, r6034⟩ := seg45_rows229 rho h
  unfold Seg45.relationRow6021 at r6021
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6021
  unfold Seg45.relationRow6022 at r6022
  unfold Seg45.relationRow6023 at r6023
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6023
  unfold Seg45.relationRow6024 at r6024
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6024
  unfold Seg45.relationRow6025 at r6025
  unfold Seg45.relationRow6026 at r6026
  unfold Seg45.relationRow6027 at r6027
  unfold Seg45.relationRow6028 at r6028
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6028
  unfold Seg45.relationRow6029 at r6029
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6029
  unfold Seg45.relationRow6030 at r6030
  unfold Seg45.relationRow6031 at r6031
  unfold Seg45.relationRow6032 at r6032
  unfold Seg45.relationRow6033 at r6033
  unfold Seg45.relationRow6034 at r6034
  have hrung229 (bit : Bool) (hbit : rho 41177 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX229 rho : Seg45.F), (seg45AccY229 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44247 : Seg45.F), (rho 44248 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX229 rho : Seg45.F), (seg45AccY229 rho : Seg45.F)⟩
        ⟨(rho 44247 : Seg45.F), (rho 44248 : Seg45.F)⟩
        ⟨(seg45AccX230 rho : Seg45.F), (seg45AccY230 rho : Seg45.F)⟩
        ⟨(rho 44261 : Seg45.F), (rho 44262 : Seg45.F)⟩ := by
    have hnextx : seg45AccX230 rho = seg45AccX229 rho + rho 44256 := by
      unfold seg45AccX230 seg45AccX229
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 79]
      ring
    have hnexty : seg45AccY230 rho = seg45AccY229 rho + rho 44257 := by
      unfold seg45AccY230 seg45AccY229
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 79]
      ring
    have hsum : seg45AccX229 rho + seg45AccY229 rho = rho 44249 := by
      unfold seg45AccX229 seg45AccY229
      linear_combination r6021
    have ha0 : (rho 44247 + rho 44248) * (seg45AccX229 rho + seg45AccY229 rho) = rho 44250 := by
      rw [hsum]
      linear_combination r6022
    have ha1 : rho 44248 * seg45AccX229 rho = rho 44251 := by
      unfold seg45AccX229
      linear_combination r6023
    have ha2 : rho 44247 * seg45AccY229 rho = rho 44252 := by
      unfold seg45AccY229
      linear_combination r6024
    have ha3 : 3021 * rho 44251 * rho 44252 = rho 44253 := by
      linear_combination r6025
    have ha4 : rho 44254 * (1 + rho 44253) = rho 44251 + rho 44252 := by
      linear_combination r6026
    have ha5 : rho 44255 * (1 - rho 44253) = rho 44250 - rho 44251 - rho 44252 := by
      linear_combination r6027
    have haddx :
        rho 44254 * (1 + 3021 * (rho 44248 * seg45AccX229 rho) * (rho 44247 * seg45AccY229 rho)) =
          rho 44248 * seg45AccX229 rho + rho 44247 * seg45AccY229 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44255 * (1 - 3021 * (rho 44248 * seg45AccX229 rho) * (rho 44247 * seg45AccY229 rho)) =
          (-1) * (rho 44248 * seg45AccX229 rho) - rho 44247 * seg45AccY229 rho +
            (seg45AccY229 rho - seg45AccX229 rho * (-1)) * (rho 44247 + rho 44248) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44255 * (1 - rho 44253) = rho 44250 - rho 44251 - rho 44252 := ha5
        _ = (-1) * rho 44251 - rho 44252 + (seg45AccY229 rho - seg45AccX229 rho * (-1)) * (rho 44247 + rho 44248) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX230 rho = seg45AccX229 rho - Bool.toZMod bit * (seg45AccX229 rho - rho 44254) := by
      have hd : rho 44256 = Bool.toZMod bit * (rho 44254 - seg45AccX229 rho) := by
        rw [← hbit]
        unfold seg45AccX229
        linear_combination -r6028
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY230 rho = seg45AccY229 rho - Bool.toZMod bit * (seg45AccY229 rho - rho 44255) := by
      have hd : rho 44257 = Bool.toZMod bit * (rho 44255 - seg45AccY229 rho) := by
        rw [← hbit]
        unfold seg45AccY229
        linear_combination -r6029
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44247 * rho 44248 = rho 44258 := by linear_combination r6030
    have hd1 : rho 44247 * rho 44247 = rho 44259 := by linear_combination r6031
    have hd2 : rho 44248 * rho 44248 = rho 44260 := by linear_combination r6032
    have hd3 : rho 44261 * (rho 44248 * rho 44248 + rho 44247 * rho 44247 * (-1)) = 2 * (rho 44247 * rho 44248) := by
      rw [hd0, hd1, hd2]
      linear_combination r6033
    have hd4 : rho 44262 * (2 - (rho 44248 * rho 44248 + rho 44247 * rho 44247 * (-1))) = rho 44248 * rho 44248 - rho 44247 * rho 44247 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6034
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX229 rho : Seg45.F), (seg45AccY229 rho : Seg45.F)⟩
      ⟨(rho 44247 : Seg45.F), (rho 44248 : Seg45.F)⟩
      ⟨(rho 44254 : Seg45.F), (rho 44255 : Seg45.F)⟩
      ⟨(seg45AccX230 rho : Seg45.F), (seg45AccY230 rho : Seg45.F)⟩
      ⟨(rho 44261 : Seg45.F), (rho 44262 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung229

theorem seg45_rows230 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow6035 rho ∧ Seg45.relationRow6036 rho ∧ Seg45.relationRow6037 rho ∧ Seg45.relationRow6038 rho ∧ Seg45.relationRow6039 rho ∧ Seg45.relationRow6040 rho ∧ Seg45.relationRow6041 rho ∧ Seg45.relationRow6042 rho ∧ Seg45.relationRow6043 rho ∧ Seg45.relationRow6044 rho ∧ Seg45.relationRow6045 rho ∧ Seg45.relationRow6046 rho ∧ Seg45.relationRow6047 rho ∧ Seg45.relationRow6048 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p75, _, _, _, _
  ⟩
  unfold Seg45.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6035, r6036, r6037, r6038, r6039, r6040, r6041, r6042, r6043, r6044, r6045, r6046, r6047, r6048, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6035, r6036, r6037, r6038, r6039, r6040, r6041, r6042, r6043, r6044, r6045, r6046, r6047, r6048⟩

theorem seg45_rung230 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41178 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX230 rho : Seg45.F), (seg45AccY230 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44261 : Seg45.F), (rho 44262 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX230 rho : Seg45.F), (seg45AccY230 rho : Seg45.F)⟩
        ⟨(rho 44261 : Seg45.F), (rho 44262 : Seg45.F)⟩
        ⟨(seg45AccX231 rho : Seg45.F), (seg45AccY231 rho : Seg45.F)⟩
        ⟨(rho 44275 : Seg45.F), (rho 44276 : Seg45.F)⟩ := by
  obtain ⟨r6035, r6036, r6037, r6038, r6039, r6040, r6041, r6042, r6043, r6044, r6045, r6046, r6047, r6048⟩ := seg45_rows230 rho h
  unfold Seg45.relationRow6035 at r6035
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6035
  unfold Seg45.relationRow6036 at r6036
  unfold Seg45.relationRow6037 at r6037
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6037
  unfold Seg45.relationRow6038 at r6038
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6038
  unfold Seg45.relationRow6039 at r6039
  unfold Seg45.relationRow6040 at r6040
  unfold Seg45.relationRow6041 at r6041
  unfold Seg45.relationRow6042 at r6042
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6042
  unfold Seg45.relationRow6043 at r6043
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6043
  unfold Seg45.relationRow6044 at r6044
  unfold Seg45.relationRow6045 at r6045
  unfold Seg45.relationRow6046 at r6046
  unfold Seg45.relationRow6047 at r6047
  unfold Seg45.relationRow6048 at r6048
  have hrung230 (bit : Bool) (hbit : rho 41178 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX230 rho : Seg45.F), (seg45AccY230 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44261 : Seg45.F), (rho 44262 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX230 rho : Seg45.F), (seg45AccY230 rho : Seg45.F)⟩
        ⟨(rho 44261 : Seg45.F), (rho 44262 : Seg45.F)⟩
        ⟨(seg45AccX231 rho : Seg45.F), (seg45AccY231 rho : Seg45.F)⟩
        ⟨(rho 44275 : Seg45.F), (rho 44276 : Seg45.F)⟩ := by
    have hnextx : seg45AccX231 rho = seg45AccX230 rho + rho 44270 := by
      unfold seg45AccX231 seg45AccX230
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 80]
      ring
    have hnexty : seg45AccY231 rho = seg45AccY230 rho + rho 44271 := by
      unfold seg45AccY231 seg45AccY230
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 80]
      ring
    have hsum : seg45AccX230 rho + seg45AccY230 rho = rho 44263 := by
      unfold seg45AccX230 seg45AccY230
      linear_combination r6035
    have ha0 : (rho 44261 + rho 44262) * (seg45AccX230 rho + seg45AccY230 rho) = rho 44264 := by
      rw [hsum]
      linear_combination r6036
    have ha1 : rho 44262 * seg45AccX230 rho = rho 44265 := by
      unfold seg45AccX230
      linear_combination r6037
    have ha2 : rho 44261 * seg45AccY230 rho = rho 44266 := by
      unfold seg45AccY230
      linear_combination r6038
    have ha3 : 3021 * rho 44265 * rho 44266 = rho 44267 := by
      linear_combination r6039
    have ha4 : rho 44268 * (1 + rho 44267) = rho 44265 + rho 44266 := by
      linear_combination r6040
    have ha5 : rho 44269 * (1 - rho 44267) = rho 44264 - rho 44265 - rho 44266 := by
      linear_combination r6041
    have haddx :
        rho 44268 * (1 + 3021 * (rho 44262 * seg45AccX230 rho) * (rho 44261 * seg45AccY230 rho)) =
          rho 44262 * seg45AccX230 rho + rho 44261 * seg45AccY230 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44269 * (1 - 3021 * (rho 44262 * seg45AccX230 rho) * (rho 44261 * seg45AccY230 rho)) =
          (-1) * (rho 44262 * seg45AccX230 rho) - rho 44261 * seg45AccY230 rho +
            (seg45AccY230 rho - seg45AccX230 rho * (-1)) * (rho 44261 + rho 44262) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44269 * (1 - rho 44267) = rho 44264 - rho 44265 - rho 44266 := ha5
        _ = (-1) * rho 44265 - rho 44266 + (seg45AccY230 rho - seg45AccX230 rho * (-1)) * (rho 44261 + rho 44262) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX231 rho = seg45AccX230 rho - Bool.toZMod bit * (seg45AccX230 rho - rho 44268) := by
      have hd : rho 44270 = Bool.toZMod bit * (rho 44268 - seg45AccX230 rho) := by
        rw [← hbit]
        unfold seg45AccX230
        linear_combination -r6042
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY231 rho = seg45AccY230 rho - Bool.toZMod bit * (seg45AccY230 rho - rho 44269) := by
      have hd : rho 44271 = Bool.toZMod bit * (rho 44269 - seg45AccY230 rho) := by
        rw [← hbit]
        unfold seg45AccY230
        linear_combination -r6043
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44261 * rho 44262 = rho 44272 := by linear_combination r6044
    have hd1 : rho 44261 * rho 44261 = rho 44273 := by linear_combination r6045
    have hd2 : rho 44262 * rho 44262 = rho 44274 := by linear_combination r6046
    have hd3 : rho 44275 * (rho 44262 * rho 44262 + rho 44261 * rho 44261 * (-1)) = 2 * (rho 44261 * rho 44262) := by
      rw [hd0, hd1, hd2]
      linear_combination r6047
    have hd4 : rho 44276 * (2 - (rho 44262 * rho 44262 + rho 44261 * rho 44261 * (-1))) = rho 44262 * rho 44262 - rho 44261 * rho 44261 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6048
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX230 rho : Seg45.F), (seg45AccY230 rho : Seg45.F)⟩
      ⟨(rho 44261 : Seg45.F), (rho 44262 : Seg45.F)⟩
      ⟨(rho 44268 : Seg45.F), (rho 44269 : Seg45.F)⟩
      ⟨(seg45AccX231 rho : Seg45.F), (seg45AccY231 rho : Seg45.F)⟩
      ⟨(rho 44275 : Seg45.F), (rho 44276 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung230

theorem seg45_hstep_c20 (rho : Nat -> Seg45.F) (h : Seg45.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (40948 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 220 ≤ i → i < 231 →
      EdwardsBridge.onCurve (seg45LadderAccState rho i) →
      EdwardsBridge.onCurve (seg45LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg45LadderAccState rho i) (seg45LadderCurState rho i)
        (seg45LadderAccState rho (i + 1)) (seg45LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg45_rung220 rho h bits[220]! (hbitAt 220 (by omega)) hacc hcur
  · exact seg45_rung221 rho h bits[221]! (hbitAt 221 (by omega)) hacc hcur
  · exact seg45_rung222 rho h bits[222]! (hbitAt 222 (by omega)) hacc hcur
  · exact seg45_rung223 rho h bits[223]! (hbitAt 223 (by omega)) hacc hcur
  · exact seg45_rung224 rho h bits[224]! (hbitAt 224 (by omega)) hacc hcur
  · exact seg45_rung225 rho h bits[225]! (hbitAt 225 (by omega)) hacc hcur
  · exact seg45_rung226 rho h bits[226]! (hbitAt 226 (by omega)) hacc hcur
  · exact seg45_rung227 rho h bits[227]! (hbitAt 227 (by omega)) hacc hcur
  · exact seg45_rung228 rho h bits[228]! (hbitAt 228 (by omega)) hacc hcur
  · exact seg45_rung229 rho h bits[229]! (hbitAt 229 (by omega)) hacc hcur
  · exact seg45_rung230 rho h bits[230]! (hbitAt 230 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
