import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg34_rows220 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5895 rho ∧ Seg34.relationRow5896 rho ∧ Seg34.relationRow5897 rho ∧ Seg34.relationRow5898 rho ∧ Seg34.relationRow5899 rho ∧ Seg34.relationRow5900 rho ∧ Seg34.relationRow5901 rho ∧ Seg34.relationRow5902 rho ∧ Seg34.relationRow5903 rho ∧ Seg34.relationRow5904 rho ∧ Seg34.relationRow5905 rho ∧ Seg34.relationRow5906 rho ∧ Seg34.relationRow5907 rho ∧ Seg34.relationRow5908 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart73 at p73
  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5895, r5896, r5897, r5898, r5899, r5900, r5901, r5902, r5903, r5904, r5905, r5906, r5907, r5908, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5895, r5896, r5897, r5898, r5899, r5900, r5901, r5902, r5903, r5904, r5905, r5906, r5907, r5908⟩

theorem seg34_rung220 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34212 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX220 rho : Seg34.F), (seg34AccY220 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37165 : Seg34.F), (rho 37166 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX220 rho : Seg34.F), (seg34AccY220 rho : Seg34.F)⟩
        ⟨(rho 37165 : Seg34.F), (rho 37166 : Seg34.F)⟩
        ⟨(seg34AccX221 rho : Seg34.F), (seg34AccY221 rho : Seg34.F)⟩
        ⟨(rho 37179 : Seg34.F), (rho 37180 : Seg34.F)⟩ := by
  obtain ⟨r5895, r5896, r5897, r5898, r5899, r5900, r5901, r5902, r5903, r5904, r5905, r5906, r5907, r5908⟩ := seg34_rows220 rho h
  unfold Seg34.relationRow5895 at r5895
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5895
  unfold Seg34.relationRow5896 at r5896
  unfold Seg34.relationRow5897 at r5897
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5897
  unfold Seg34.relationRow5898 at r5898
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5898
  unfold Seg34.relationRow5899 at r5899
  unfold Seg34.relationRow5900 at r5900
  unfold Seg34.relationRow5901 at r5901
  unfold Seg34.relationRow5902 at r5902
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5902
  unfold Seg34.relationRow5903 at r5903
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5903
  unfold Seg34.relationRow5904 at r5904
  unfold Seg34.relationRow5905 at r5905
  unfold Seg34.relationRow5906 at r5906
  unfold Seg34.relationRow5907 at r5907
  unfold Seg34.relationRow5908 at r5908
  have hrung220 (bit : Bool) (hbit : rho 34212 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX220 rho : Seg34.F), (seg34AccY220 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37165 : Seg34.F), (rho 37166 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX220 rho : Seg34.F), (seg34AccY220 rho : Seg34.F)⟩
        ⟨(rho 37165 : Seg34.F), (rho 37166 : Seg34.F)⟩
        ⟨(seg34AccX221 rho : Seg34.F), (seg34AccY221 rho : Seg34.F)⟩
        ⟨(rho 37179 : Seg34.F), (rho 37180 : Seg34.F)⟩ := by
    have hnextx : seg34AccX221 rho = seg34AccX220 rho + rho 37174 := by
      unfold seg34AccX221 seg34AccX220
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 70]
      ring
    have hnexty : seg34AccY221 rho = seg34AccY220 rho + rho 37175 := by
      unfold seg34AccY221 seg34AccY220
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 70]
      ring
    have hsum : seg34AccX220 rho + seg34AccY220 rho = rho 37167 := by
      unfold seg34AccX220 seg34AccY220
      linear_combination r5895
    have ha0 : (rho 37165 + rho 37166) * (seg34AccX220 rho + seg34AccY220 rho) = rho 37168 := by
      rw [hsum]
      linear_combination r5896
    have ha1 : rho 37166 * seg34AccX220 rho = rho 37169 := by
      unfold seg34AccX220
      linear_combination r5897
    have ha2 : rho 37165 * seg34AccY220 rho = rho 37170 := by
      unfold seg34AccY220
      linear_combination r5898
    have ha3 : 3021 * rho 37169 * rho 37170 = rho 37171 := by
      linear_combination r5899
    have ha4 : rho 37172 * (1 + rho 37171) = rho 37169 + rho 37170 := by
      linear_combination r5900
    have ha5 : rho 37173 * (1 - rho 37171) = rho 37168 - rho 37169 - rho 37170 := by
      linear_combination r5901
    have haddx :
        rho 37172 * (1 + 3021 * (rho 37166 * seg34AccX220 rho) * (rho 37165 * seg34AccY220 rho)) =
          rho 37166 * seg34AccX220 rho + rho 37165 * seg34AccY220 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37173 * (1 - 3021 * (rho 37166 * seg34AccX220 rho) * (rho 37165 * seg34AccY220 rho)) =
          (-1) * (rho 37166 * seg34AccX220 rho) - rho 37165 * seg34AccY220 rho +
            (seg34AccY220 rho - seg34AccX220 rho * (-1)) * (rho 37165 + rho 37166) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37173 * (1 - rho 37171) = rho 37168 - rho 37169 - rho 37170 := ha5
        _ = (-1) * rho 37169 - rho 37170 + (seg34AccY220 rho - seg34AccX220 rho * (-1)) * (rho 37165 + rho 37166) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX221 rho = seg34AccX220 rho - Bool.toZMod bit * (seg34AccX220 rho - rho 37172) := by
      have hd : rho 37174 = Bool.toZMod bit * (rho 37172 - seg34AccX220 rho) := by
        rw [← hbit]
        unfold seg34AccX220
        linear_combination -r5902
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY221 rho = seg34AccY220 rho - Bool.toZMod bit * (seg34AccY220 rho - rho 37173) := by
      have hd : rho 37175 = Bool.toZMod bit * (rho 37173 - seg34AccY220 rho) := by
        rw [← hbit]
        unfold seg34AccY220
        linear_combination -r5903
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37165 * rho 37166 = rho 37176 := by linear_combination r5904
    have hd1 : rho 37165 * rho 37165 = rho 37177 := by linear_combination r5905
    have hd2 : rho 37166 * rho 37166 = rho 37178 := by linear_combination r5906
    have hd3 : rho 37179 * (rho 37166 * rho 37166 + rho 37165 * rho 37165 * (-1)) = 2 * (rho 37165 * rho 37166) := by
      rw [hd0, hd1, hd2]
      linear_combination r5907
    have hd4 : rho 37180 * (2 - (rho 37166 * rho 37166 + rho 37165 * rho 37165 * (-1))) = rho 37166 * rho 37166 - rho 37165 * rho 37165 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5908
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX220 rho : Seg34.F), (seg34AccY220 rho : Seg34.F)⟩
      ⟨(rho 37165 : Seg34.F), (rho 37166 : Seg34.F)⟩
      ⟨(rho 37172 : Seg34.F), (rho 37173 : Seg34.F)⟩
      ⟨(seg34AccX221 rho : Seg34.F), (seg34AccY221 rho : Seg34.F)⟩
      ⟨(rho 37179 : Seg34.F), (rho 37180 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung220

theorem seg34_rows221 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5909 rho ∧ Seg34.relationRow5910 rho ∧ Seg34.relationRow5911 rho ∧ Seg34.relationRow5912 rho ∧ Seg34.relationRow5913 rho ∧ Seg34.relationRow5914 rho ∧ Seg34.relationRow5915 rho ∧ Seg34.relationRow5916 rho ∧ Seg34.relationRow5917 rho ∧ Seg34.relationRow5918 rho ∧ Seg34.relationRow5919 rho ∧ Seg34.relationRow5920 rho ∧ Seg34.relationRow5921 rho ∧ Seg34.relationRow5922 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart73 at p73
  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5909, r5910, r5911, r5912, r5913, r5914, r5915, r5916, r5917, r5918, r5919⟩
  unfold Seg34.relationPart74 at p74
  rcases p74 with ⟨r5920, r5921, r5922, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5909, r5910, r5911, r5912, r5913, r5914, r5915, r5916, r5917, r5918, r5919, r5920, r5921, r5922⟩

theorem seg34_rung221 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34213 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX221 rho : Seg34.F), (seg34AccY221 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37179 : Seg34.F), (rho 37180 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX221 rho : Seg34.F), (seg34AccY221 rho : Seg34.F)⟩
        ⟨(rho 37179 : Seg34.F), (rho 37180 : Seg34.F)⟩
        ⟨(seg34AccX222 rho : Seg34.F), (seg34AccY222 rho : Seg34.F)⟩
        ⟨(rho 37193 : Seg34.F), (rho 37194 : Seg34.F)⟩ := by
  obtain ⟨r5909, r5910, r5911, r5912, r5913, r5914, r5915, r5916, r5917, r5918, r5919, r5920, r5921, r5922⟩ := seg34_rows221 rho h
  unfold Seg34.relationRow5909 at r5909
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5909
  unfold Seg34.relationRow5910 at r5910
  unfold Seg34.relationRow5911 at r5911
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5911
  unfold Seg34.relationRow5912 at r5912
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5912
  unfold Seg34.relationRow5913 at r5913
  unfold Seg34.relationRow5914 at r5914
  unfold Seg34.relationRow5915 at r5915
  unfold Seg34.relationRow5916 at r5916
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5916
  unfold Seg34.relationRow5917 at r5917
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5917
  unfold Seg34.relationRow5918 at r5918
  unfold Seg34.relationRow5919 at r5919
  unfold Seg34.relationRow5920 at r5920
  unfold Seg34.relationRow5921 at r5921
  unfold Seg34.relationRow5922 at r5922
  have hrung221 (bit : Bool) (hbit : rho 34213 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX221 rho : Seg34.F), (seg34AccY221 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37179 : Seg34.F), (rho 37180 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX221 rho : Seg34.F), (seg34AccY221 rho : Seg34.F)⟩
        ⟨(rho 37179 : Seg34.F), (rho 37180 : Seg34.F)⟩
        ⟨(seg34AccX222 rho : Seg34.F), (seg34AccY222 rho : Seg34.F)⟩
        ⟨(rho 37193 : Seg34.F), (rho 37194 : Seg34.F)⟩ := by
    have hnextx : seg34AccX222 rho = seg34AccX221 rho + rho 37188 := by
      unfold seg34AccX222 seg34AccX221
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 71]
      ring
    have hnexty : seg34AccY222 rho = seg34AccY221 rho + rho 37189 := by
      unfold seg34AccY222 seg34AccY221
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 71]
      ring
    have hsum : seg34AccX221 rho + seg34AccY221 rho = rho 37181 := by
      unfold seg34AccX221 seg34AccY221
      linear_combination r5909
    have ha0 : (rho 37179 + rho 37180) * (seg34AccX221 rho + seg34AccY221 rho) = rho 37182 := by
      rw [hsum]
      linear_combination r5910
    have ha1 : rho 37180 * seg34AccX221 rho = rho 37183 := by
      unfold seg34AccX221
      linear_combination r5911
    have ha2 : rho 37179 * seg34AccY221 rho = rho 37184 := by
      unfold seg34AccY221
      linear_combination r5912
    have ha3 : 3021 * rho 37183 * rho 37184 = rho 37185 := by
      linear_combination r5913
    have ha4 : rho 37186 * (1 + rho 37185) = rho 37183 + rho 37184 := by
      linear_combination r5914
    have ha5 : rho 37187 * (1 - rho 37185) = rho 37182 - rho 37183 - rho 37184 := by
      linear_combination r5915
    have haddx :
        rho 37186 * (1 + 3021 * (rho 37180 * seg34AccX221 rho) * (rho 37179 * seg34AccY221 rho)) =
          rho 37180 * seg34AccX221 rho + rho 37179 * seg34AccY221 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37187 * (1 - 3021 * (rho 37180 * seg34AccX221 rho) * (rho 37179 * seg34AccY221 rho)) =
          (-1) * (rho 37180 * seg34AccX221 rho) - rho 37179 * seg34AccY221 rho +
            (seg34AccY221 rho - seg34AccX221 rho * (-1)) * (rho 37179 + rho 37180) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37187 * (1 - rho 37185) = rho 37182 - rho 37183 - rho 37184 := ha5
        _ = (-1) * rho 37183 - rho 37184 + (seg34AccY221 rho - seg34AccX221 rho * (-1)) * (rho 37179 + rho 37180) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX222 rho = seg34AccX221 rho - Bool.toZMod bit * (seg34AccX221 rho - rho 37186) := by
      have hd : rho 37188 = Bool.toZMod bit * (rho 37186 - seg34AccX221 rho) := by
        rw [← hbit]
        unfold seg34AccX221
        linear_combination -r5916
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY222 rho = seg34AccY221 rho - Bool.toZMod bit * (seg34AccY221 rho - rho 37187) := by
      have hd : rho 37189 = Bool.toZMod bit * (rho 37187 - seg34AccY221 rho) := by
        rw [← hbit]
        unfold seg34AccY221
        linear_combination -r5917
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37179 * rho 37180 = rho 37190 := by linear_combination r5918
    have hd1 : rho 37179 * rho 37179 = rho 37191 := by linear_combination r5919
    have hd2 : rho 37180 * rho 37180 = rho 37192 := by linear_combination r5920
    have hd3 : rho 37193 * (rho 37180 * rho 37180 + rho 37179 * rho 37179 * (-1)) = 2 * (rho 37179 * rho 37180) := by
      rw [hd0, hd1, hd2]
      linear_combination r5921
    have hd4 : rho 37194 * (2 - (rho 37180 * rho 37180 + rho 37179 * rho 37179 * (-1))) = rho 37180 * rho 37180 - rho 37179 * rho 37179 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5922
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX221 rho : Seg34.F), (seg34AccY221 rho : Seg34.F)⟩
      ⟨(rho 37179 : Seg34.F), (rho 37180 : Seg34.F)⟩
      ⟨(rho 37186 : Seg34.F), (rho 37187 : Seg34.F)⟩
      ⟨(seg34AccX222 rho : Seg34.F), (seg34AccY222 rho : Seg34.F)⟩
      ⟨(rho 37193 : Seg34.F), (rho 37194 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung221

theorem seg34_rows222 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5923 rho ∧ Seg34.relationRow5924 rho ∧ Seg34.relationRow5925 rho ∧ Seg34.relationRow5926 rho ∧ Seg34.relationRow5927 rho ∧ Seg34.relationRow5928 rho ∧ Seg34.relationRow5929 rho ∧ Seg34.relationRow5930 rho ∧ Seg34.relationRow5931 rho ∧ Seg34.relationRow5932 rho ∧ Seg34.relationRow5933 rho ∧ Seg34.relationRow5934 rho ∧ Seg34.relationRow5935 rho ∧ Seg34.relationRow5936 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart74 at p74
  rcases p74 with ⟨_, _, _, r5923, r5924, r5925, r5926, r5927, r5928, r5929, r5930, r5931, r5932, r5933, r5934, r5935, r5936, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5923, r5924, r5925, r5926, r5927, r5928, r5929, r5930, r5931, r5932, r5933, r5934, r5935, r5936⟩

theorem seg34_rung222 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34214 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX222 rho : Seg34.F), (seg34AccY222 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37193 : Seg34.F), (rho 37194 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX222 rho : Seg34.F), (seg34AccY222 rho : Seg34.F)⟩
        ⟨(rho 37193 : Seg34.F), (rho 37194 : Seg34.F)⟩
        ⟨(seg34AccX223 rho : Seg34.F), (seg34AccY223 rho : Seg34.F)⟩
        ⟨(rho 37207 : Seg34.F), (rho 37208 : Seg34.F)⟩ := by
  obtain ⟨r5923, r5924, r5925, r5926, r5927, r5928, r5929, r5930, r5931, r5932, r5933, r5934, r5935, r5936⟩ := seg34_rows222 rho h
  unfold Seg34.relationRow5923 at r5923
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5923
  unfold Seg34.relationRow5924 at r5924
  unfold Seg34.relationRow5925 at r5925
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5925
  unfold Seg34.relationRow5926 at r5926
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5926
  unfold Seg34.relationRow5927 at r5927
  unfold Seg34.relationRow5928 at r5928
  unfold Seg34.relationRow5929 at r5929
  unfold Seg34.relationRow5930 at r5930
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5930
  unfold Seg34.relationRow5931 at r5931
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5931
  unfold Seg34.relationRow5932 at r5932
  unfold Seg34.relationRow5933 at r5933
  unfold Seg34.relationRow5934 at r5934
  unfold Seg34.relationRow5935 at r5935
  unfold Seg34.relationRow5936 at r5936
  have hrung222 (bit : Bool) (hbit : rho 34214 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX222 rho : Seg34.F), (seg34AccY222 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37193 : Seg34.F), (rho 37194 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX222 rho : Seg34.F), (seg34AccY222 rho : Seg34.F)⟩
        ⟨(rho 37193 : Seg34.F), (rho 37194 : Seg34.F)⟩
        ⟨(seg34AccX223 rho : Seg34.F), (seg34AccY223 rho : Seg34.F)⟩
        ⟨(rho 37207 : Seg34.F), (rho 37208 : Seg34.F)⟩ := by
    have hnextx : seg34AccX223 rho = seg34AccX222 rho + rho 37202 := by
      unfold seg34AccX223 seg34AccX222
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 72]
      ring
    have hnexty : seg34AccY223 rho = seg34AccY222 rho + rho 37203 := by
      unfold seg34AccY223 seg34AccY222
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 72]
      ring
    have hsum : seg34AccX222 rho + seg34AccY222 rho = rho 37195 := by
      unfold seg34AccX222 seg34AccY222
      linear_combination r5923
    have ha0 : (rho 37193 + rho 37194) * (seg34AccX222 rho + seg34AccY222 rho) = rho 37196 := by
      rw [hsum]
      linear_combination r5924
    have ha1 : rho 37194 * seg34AccX222 rho = rho 37197 := by
      unfold seg34AccX222
      linear_combination r5925
    have ha2 : rho 37193 * seg34AccY222 rho = rho 37198 := by
      unfold seg34AccY222
      linear_combination r5926
    have ha3 : 3021 * rho 37197 * rho 37198 = rho 37199 := by
      linear_combination r5927
    have ha4 : rho 37200 * (1 + rho 37199) = rho 37197 + rho 37198 := by
      linear_combination r5928
    have ha5 : rho 37201 * (1 - rho 37199) = rho 37196 - rho 37197 - rho 37198 := by
      linear_combination r5929
    have haddx :
        rho 37200 * (1 + 3021 * (rho 37194 * seg34AccX222 rho) * (rho 37193 * seg34AccY222 rho)) =
          rho 37194 * seg34AccX222 rho + rho 37193 * seg34AccY222 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37201 * (1 - 3021 * (rho 37194 * seg34AccX222 rho) * (rho 37193 * seg34AccY222 rho)) =
          (-1) * (rho 37194 * seg34AccX222 rho) - rho 37193 * seg34AccY222 rho +
            (seg34AccY222 rho - seg34AccX222 rho * (-1)) * (rho 37193 + rho 37194) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37201 * (1 - rho 37199) = rho 37196 - rho 37197 - rho 37198 := ha5
        _ = (-1) * rho 37197 - rho 37198 + (seg34AccY222 rho - seg34AccX222 rho * (-1)) * (rho 37193 + rho 37194) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX223 rho = seg34AccX222 rho - Bool.toZMod bit * (seg34AccX222 rho - rho 37200) := by
      have hd : rho 37202 = Bool.toZMod bit * (rho 37200 - seg34AccX222 rho) := by
        rw [← hbit]
        unfold seg34AccX222
        linear_combination -r5930
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY223 rho = seg34AccY222 rho - Bool.toZMod bit * (seg34AccY222 rho - rho 37201) := by
      have hd : rho 37203 = Bool.toZMod bit * (rho 37201 - seg34AccY222 rho) := by
        rw [← hbit]
        unfold seg34AccY222
        linear_combination -r5931
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37193 * rho 37194 = rho 37204 := by linear_combination r5932
    have hd1 : rho 37193 * rho 37193 = rho 37205 := by linear_combination r5933
    have hd2 : rho 37194 * rho 37194 = rho 37206 := by linear_combination r5934
    have hd3 : rho 37207 * (rho 37194 * rho 37194 + rho 37193 * rho 37193 * (-1)) = 2 * (rho 37193 * rho 37194) := by
      rw [hd0, hd1, hd2]
      linear_combination r5935
    have hd4 : rho 37208 * (2 - (rho 37194 * rho 37194 + rho 37193 * rho 37193 * (-1))) = rho 37194 * rho 37194 - rho 37193 * rho 37193 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5936
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX222 rho : Seg34.F), (seg34AccY222 rho : Seg34.F)⟩
      ⟨(rho 37193 : Seg34.F), (rho 37194 : Seg34.F)⟩
      ⟨(rho 37200 : Seg34.F), (rho 37201 : Seg34.F)⟩
      ⟨(seg34AccX223 rho : Seg34.F), (seg34AccY223 rho : Seg34.F)⟩
      ⟨(rho 37207 : Seg34.F), (rho 37208 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung222

theorem seg34_rows223 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5937 rho ∧ Seg34.relationRow5938 rho ∧ Seg34.relationRow5939 rho ∧ Seg34.relationRow5940 rho ∧ Seg34.relationRow5941 rho ∧ Seg34.relationRow5942 rho ∧ Seg34.relationRow5943 rho ∧ Seg34.relationRow5944 rho ∧ Seg34.relationRow5945 rho ∧ Seg34.relationRow5946 rho ∧ Seg34.relationRow5947 rho ∧ Seg34.relationRow5948 rho ∧ Seg34.relationRow5949 rho ∧ Seg34.relationRow5950 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5937, r5938, r5939, r5940, r5941, r5942, r5943, r5944, r5945, r5946, r5947, r5948, r5949, r5950, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5937, r5938, r5939, r5940, r5941, r5942, r5943, r5944, r5945, r5946, r5947, r5948, r5949, r5950⟩

theorem seg34_rung223 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34215 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX223 rho : Seg34.F), (seg34AccY223 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37207 : Seg34.F), (rho 37208 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX223 rho : Seg34.F), (seg34AccY223 rho : Seg34.F)⟩
        ⟨(rho 37207 : Seg34.F), (rho 37208 : Seg34.F)⟩
        ⟨(seg34AccX224 rho : Seg34.F), (seg34AccY224 rho : Seg34.F)⟩
        ⟨(rho 37221 : Seg34.F), (rho 37222 : Seg34.F)⟩ := by
  obtain ⟨r5937, r5938, r5939, r5940, r5941, r5942, r5943, r5944, r5945, r5946, r5947, r5948, r5949, r5950⟩ := seg34_rows223 rho h
  unfold Seg34.relationRow5937 at r5937
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5937
  unfold Seg34.relationRow5938 at r5938
  unfold Seg34.relationRow5939 at r5939
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5939
  unfold Seg34.relationRow5940 at r5940
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5940
  unfold Seg34.relationRow5941 at r5941
  unfold Seg34.relationRow5942 at r5942
  unfold Seg34.relationRow5943 at r5943
  unfold Seg34.relationRow5944 at r5944
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5944
  unfold Seg34.relationRow5945 at r5945
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5945
  unfold Seg34.relationRow5946 at r5946
  unfold Seg34.relationRow5947 at r5947
  unfold Seg34.relationRow5948 at r5948
  unfold Seg34.relationRow5949 at r5949
  unfold Seg34.relationRow5950 at r5950
  have hrung223 (bit : Bool) (hbit : rho 34215 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX223 rho : Seg34.F), (seg34AccY223 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37207 : Seg34.F), (rho 37208 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX223 rho : Seg34.F), (seg34AccY223 rho : Seg34.F)⟩
        ⟨(rho 37207 : Seg34.F), (rho 37208 : Seg34.F)⟩
        ⟨(seg34AccX224 rho : Seg34.F), (seg34AccY224 rho : Seg34.F)⟩
        ⟨(rho 37221 : Seg34.F), (rho 37222 : Seg34.F)⟩ := by
    have hnextx : seg34AccX224 rho = seg34AccX223 rho + rho 37216 := by
      unfold seg34AccX224 seg34AccX223
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 73]
      ring
    have hnexty : seg34AccY224 rho = seg34AccY223 rho + rho 37217 := by
      unfold seg34AccY224 seg34AccY223
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 73]
      ring
    have hsum : seg34AccX223 rho + seg34AccY223 rho = rho 37209 := by
      unfold seg34AccX223 seg34AccY223
      linear_combination r5937
    have ha0 : (rho 37207 + rho 37208) * (seg34AccX223 rho + seg34AccY223 rho) = rho 37210 := by
      rw [hsum]
      linear_combination r5938
    have ha1 : rho 37208 * seg34AccX223 rho = rho 37211 := by
      unfold seg34AccX223
      linear_combination r5939
    have ha2 : rho 37207 * seg34AccY223 rho = rho 37212 := by
      unfold seg34AccY223
      linear_combination r5940
    have ha3 : 3021 * rho 37211 * rho 37212 = rho 37213 := by
      linear_combination r5941
    have ha4 : rho 37214 * (1 + rho 37213) = rho 37211 + rho 37212 := by
      linear_combination r5942
    have ha5 : rho 37215 * (1 - rho 37213) = rho 37210 - rho 37211 - rho 37212 := by
      linear_combination r5943
    have haddx :
        rho 37214 * (1 + 3021 * (rho 37208 * seg34AccX223 rho) * (rho 37207 * seg34AccY223 rho)) =
          rho 37208 * seg34AccX223 rho + rho 37207 * seg34AccY223 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37215 * (1 - 3021 * (rho 37208 * seg34AccX223 rho) * (rho 37207 * seg34AccY223 rho)) =
          (-1) * (rho 37208 * seg34AccX223 rho) - rho 37207 * seg34AccY223 rho +
            (seg34AccY223 rho - seg34AccX223 rho * (-1)) * (rho 37207 + rho 37208) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37215 * (1 - rho 37213) = rho 37210 - rho 37211 - rho 37212 := ha5
        _ = (-1) * rho 37211 - rho 37212 + (seg34AccY223 rho - seg34AccX223 rho * (-1)) * (rho 37207 + rho 37208) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX224 rho = seg34AccX223 rho - Bool.toZMod bit * (seg34AccX223 rho - rho 37214) := by
      have hd : rho 37216 = Bool.toZMod bit * (rho 37214 - seg34AccX223 rho) := by
        rw [← hbit]
        unfold seg34AccX223
        linear_combination -r5944
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY224 rho = seg34AccY223 rho - Bool.toZMod bit * (seg34AccY223 rho - rho 37215) := by
      have hd : rho 37217 = Bool.toZMod bit * (rho 37215 - seg34AccY223 rho) := by
        rw [← hbit]
        unfold seg34AccY223
        linear_combination -r5945
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37207 * rho 37208 = rho 37218 := by linear_combination r5946
    have hd1 : rho 37207 * rho 37207 = rho 37219 := by linear_combination r5947
    have hd2 : rho 37208 * rho 37208 = rho 37220 := by linear_combination r5948
    have hd3 : rho 37221 * (rho 37208 * rho 37208 + rho 37207 * rho 37207 * (-1)) = 2 * (rho 37207 * rho 37208) := by
      rw [hd0, hd1, hd2]
      linear_combination r5949
    have hd4 : rho 37222 * (2 - (rho 37208 * rho 37208 + rho 37207 * rho 37207 * (-1))) = rho 37208 * rho 37208 - rho 37207 * rho 37207 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5950
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX223 rho : Seg34.F), (seg34AccY223 rho : Seg34.F)⟩
      ⟨(rho 37207 : Seg34.F), (rho 37208 : Seg34.F)⟩
      ⟨(rho 37214 : Seg34.F), (rho 37215 : Seg34.F)⟩
      ⟨(seg34AccX224 rho : Seg34.F), (seg34AccY224 rho : Seg34.F)⟩
      ⟨(rho 37221 : Seg34.F), (rho 37222 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung223

theorem seg34_rows224 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5951 rho ∧ Seg34.relationRow5952 rho ∧ Seg34.relationRow5953 rho ∧ Seg34.relationRow5954 rho ∧ Seg34.relationRow5955 rho ∧ Seg34.relationRow5956 rho ∧ Seg34.relationRow5957 rho ∧ Seg34.relationRow5958 rho ∧ Seg34.relationRow5959 rho ∧ Seg34.relationRow5960 rho ∧ Seg34.relationRow5961 rho ∧ Seg34.relationRow5962 rho ∧ Seg34.relationRow5963 rho ∧ Seg34.relationRow5964 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5951, r5952, r5953, r5954, r5955, r5956, r5957, r5958, r5959, r5960, r5961, r5962, r5963, r5964, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5951, r5952, r5953, r5954, r5955, r5956, r5957, r5958, r5959, r5960, r5961, r5962, r5963, r5964⟩

theorem seg34_rung224 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34216 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX224 rho : Seg34.F), (seg34AccY224 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37221 : Seg34.F), (rho 37222 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX224 rho : Seg34.F), (seg34AccY224 rho : Seg34.F)⟩
        ⟨(rho 37221 : Seg34.F), (rho 37222 : Seg34.F)⟩
        ⟨(seg34AccX225 rho : Seg34.F), (seg34AccY225 rho : Seg34.F)⟩
        ⟨(rho 37235 : Seg34.F), (rho 37236 : Seg34.F)⟩ := by
  obtain ⟨r5951, r5952, r5953, r5954, r5955, r5956, r5957, r5958, r5959, r5960, r5961, r5962, r5963, r5964⟩ := seg34_rows224 rho h
  unfold Seg34.relationRow5951 at r5951
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5951
  unfold Seg34.relationRow5952 at r5952
  unfold Seg34.relationRow5953 at r5953
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5953
  unfold Seg34.relationRow5954 at r5954
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5954
  unfold Seg34.relationRow5955 at r5955
  unfold Seg34.relationRow5956 at r5956
  unfold Seg34.relationRow5957 at r5957
  unfold Seg34.relationRow5958 at r5958
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5958
  unfold Seg34.relationRow5959 at r5959
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5959
  unfold Seg34.relationRow5960 at r5960
  unfold Seg34.relationRow5961 at r5961
  unfold Seg34.relationRow5962 at r5962
  unfold Seg34.relationRow5963 at r5963
  unfold Seg34.relationRow5964 at r5964
  have hrung224 (bit : Bool) (hbit : rho 34216 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX224 rho : Seg34.F), (seg34AccY224 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37221 : Seg34.F), (rho 37222 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX224 rho : Seg34.F), (seg34AccY224 rho : Seg34.F)⟩
        ⟨(rho 37221 : Seg34.F), (rho 37222 : Seg34.F)⟩
        ⟨(seg34AccX225 rho : Seg34.F), (seg34AccY225 rho : Seg34.F)⟩
        ⟨(rho 37235 : Seg34.F), (rho 37236 : Seg34.F)⟩ := by
    have hnextx : seg34AccX225 rho = seg34AccX224 rho + rho 37230 := by
      unfold seg34AccX225 seg34AccX224
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 74]
      ring
    have hnexty : seg34AccY225 rho = seg34AccY224 rho + rho 37231 := by
      unfold seg34AccY225 seg34AccY224
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 74]
      ring
    have hsum : seg34AccX224 rho + seg34AccY224 rho = rho 37223 := by
      unfold seg34AccX224 seg34AccY224
      linear_combination r5951
    have ha0 : (rho 37221 + rho 37222) * (seg34AccX224 rho + seg34AccY224 rho) = rho 37224 := by
      rw [hsum]
      linear_combination r5952
    have ha1 : rho 37222 * seg34AccX224 rho = rho 37225 := by
      unfold seg34AccX224
      linear_combination r5953
    have ha2 : rho 37221 * seg34AccY224 rho = rho 37226 := by
      unfold seg34AccY224
      linear_combination r5954
    have ha3 : 3021 * rho 37225 * rho 37226 = rho 37227 := by
      linear_combination r5955
    have ha4 : rho 37228 * (1 + rho 37227) = rho 37225 + rho 37226 := by
      linear_combination r5956
    have ha5 : rho 37229 * (1 - rho 37227) = rho 37224 - rho 37225 - rho 37226 := by
      linear_combination r5957
    have haddx :
        rho 37228 * (1 + 3021 * (rho 37222 * seg34AccX224 rho) * (rho 37221 * seg34AccY224 rho)) =
          rho 37222 * seg34AccX224 rho + rho 37221 * seg34AccY224 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37229 * (1 - 3021 * (rho 37222 * seg34AccX224 rho) * (rho 37221 * seg34AccY224 rho)) =
          (-1) * (rho 37222 * seg34AccX224 rho) - rho 37221 * seg34AccY224 rho +
            (seg34AccY224 rho - seg34AccX224 rho * (-1)) * (rho 37221 + rho 37222) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37229 * (1 - rho 37227) = rho 37224 - rho 37225 - rho 37226 := ha5
        _ = (-1) * rho 37225 - rho 37226 + (seg34AccY224 rho - seg34AccX224 rho * (-1)) * (rho 37221 + rho 37222) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX225 rho = seg34AccX224 rho - Bool.toZMod bit * (seg34AccX224 rho - rho 37228) := by
      have hd : rho 37230 = Bool.toZMod bit * (rho 37228 - seg34AccX224 rho) := by
        rw [← hbit]
        unfold seg34AccX224
        linear_combination -r5958
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY225 rho = seg34AccY224 rho - Bool.toZMod bit * (seg34AccY224 rho - rho 37229) := by
      have hd : rho 37231 = Bool.toZMod bit * (rho 37229 - seg34AccY224 rho) := by
        rw [← hbit]
        unfold seg34AccY224
        linear_combination -r5959
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37221 * rho 37222 = rho 37232 := by linear_combination r5960
    have hd1 : rho 37221 * rho 37221 = rho 37233 := by linear_combination r5961
    have hd2 : rho 37222 * rho 37222 = rho 37234 := by linear_combination r5962
    have hd3 : rho 37235 * (rho 37222 * rho 37222 + rho 37221 * rho 37221 * (-1)) = 2 * (rho 37221 * rho 37222) := by
      rw [hd0, hd1, hd2]
      linear_combination r5963
    have hd4 : rho 37236 * (2 - (rho 37222 * rho 37222 + rho 37221 * rho 37221 * (-1))) = rho 37222 * rho 37222 - rho 37221 * rho 37221 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5964
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX224 rho : Seg34.F), (seg34AccY224 rho : Seg34.F)⟩
      ⟨(rho 37221 : Seg34.F), (rho 37222 : Seg34.F)⟩
      ⟨(rho 37228 : Seg34.F), (rho 37229 : Seg34.F)⟩
      ⟨(seg34AccX225 rho : Seg34.F), (seg34AccY225 rho : Seg34.F)⟩
      ⟨(rho 37235 : Seg34.F), (rho 37236 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung224

theorem seg34_rows225 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5965 rho ∧ Seg34.relationRow5966 rho ∧ Seg34.relationRow5967 rho ∧ Seg34.relationRow5968 rho ∧ Seg34.relationRow5969 rho ∧ Seg34.relationRow5970 rho ∧ Seg34.relationRow5971 rho ∧ Seg34.relationRow5972 rho ∧ Seg34.relationRow5973 rho ∧ Seg34.relationRow5974 rho ∧ Seg34.relationRow5975 rho ∧ Seg34.relationRow5976 rho ∧ Seg34.relationRow5977 rho ∧ Seg34.relationRow5978 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5965, r5966, r5967, r5968, r5969, r5970, r5971, r5972, r5973, r5974, r5975, r5976, r5977, r5978, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5965, r5966, r5967, r5968, r5969, r5970, r5971, r5972, r5973, r5974, r5975, r5976, r5977, r5978⟩

theorem seg34_rung225 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34217 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX225 rho : Seg34.F), (seg34AccY225 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37235 : Seg34.F), (rho 37236 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX225 rho : Seg34.F), (seg34AccY225 rho : Seg34.F)⟩
        ⟨(rho 37235 : Seg34.F), (rho 37236 : Seg34.F)⟩
        ⟨(seg34AccX226 rho : Seg34.F), (seg34AccY226 rho : Seg34.F)⟩
        ⟨(rho 37249 : Seg34.F), (rho 37250 : Seg34.F)⟩ := by
  obtain ⟨r5965, r5966, r5967, r5968, r5969, r5970, r5971, r5972, r5973, r5974, r5975, r5976, r5977, r5978⟩ := seg34_rows225 rho h
  unfold Seg34.relationRow5965 at r5965
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5965
  unfold Seg34.relationRow5966 at r5966
  unfold Seg34.relationRow5967 at r5967
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5967
  unfold Seg34.relationRow5968 at r5968
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5968
  unfold Seg34.relationRow5969 at r5969
  unfold Seg34.relationRow5970 at r5970
  unfold Seg34.relationRow5971 at r5971
  unfold Seg34.relationRow5972 at r5972
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5972
  unfold Seg34.relationRow5973 at r5973
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5973
  unfold Seg34.relationRow5974 at r5974
  unfold Seg34.relationRow5975 at r5975
  unfold Seg34.relationRow5976 at r5976
  unfold Seg34.relationRow5977 at r5977
  unfold Seg34.relationRow5978 at r5978
  have hrung225 (bit : Bool) (hbit : rho 34217 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX225 rho : Seg34.F), (seg34AccY225 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37235 : Seg34.F), (rho 37236 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX225 rho : Seg34.F), (seg34AccY225 rho : Seg34.F)⟩
        ⟨(rho 37235 : Seg34.F), (rho 37236 : Seg34.F)⟩
        ⟨(seg34AccX226 rho : Seg34.F), (seg34AccY226 rho : Seg34.F)⟩
        ⟨(rho 37249 : Seg34.F), (rho 37250 : Seg34.F)⟩ := by
    have hnextx : seg34AccX226 rho = seg34AccX225 rho + rho 37244 := by
      unfold seg34AccX226 seg34AccX225
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 75]
      ring
    have hnexty : seg34AccY226 rho = seg34AccY225 rho + rho 37245 := by
      unfold seg34AccY226 seg34AccY225
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 75]
      ring
    have hsum : seg34AccX225 rho + seg34AccY225 rho = rho 37237 := by
      unfold seg34AccX225 seg34AccY225
      linear_combination r5965
    have ha0 : (rho 37235 + rho 37236) * (seg34AccX225 rho + seg34AccY225 rho) = rho 37238 := by
      rw [hsum]
      linear_combination r5966
    have ha1 : rho 37236 * seg34AccX225 rho = rho 37239 := by
      unfold seg34AccX225
      linear_combination r5967
    have ha2 : rho 37235 * seg34AccY225 rho = rho 37240 := by
      unfold seg34AccY225
      linear_combination r5968
    have ha3 : 3021 * rho 37239 * rho 37240 = rho 37241 := by
      linear_combination r5969
    have ha4 : rho 37242 * (1 + rho 37241) = rho 37239 + rho 37240 := by
      linear_combination r5970
    have ha5 : rho 37243 * (1 - rho 37241) = rho 37238 - rho 37239 - rho 37240 := by
      linear_combination r5971
    have haddx :
        rho 37242 * (1 + 3021 * (rho 37236 * seg34AccX225 rho) * (rho 37235 * seg34AccY225 rho)) =
          rho 37236 * seg34AccX225 rho + rho 37235 * seg34AccY225 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37243 * (1 - 3021 * (rho 37236 * seg34AccX225 rho) * (rho 37235 * seg34AccY225 rho)) =
          (-1) * (rho 37236 * seg34AccX225 rho) - rho 37235 * seg34AccY225 rho +
            (seg34AccY225 rho - seg34AccX225 rho * (-1)) * (rho 37235 + rho 37236) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37243 * (1 - rho 37241) = rho 37238 - rho 37239 - rho 37240 := ha5
        _ = (-1) * rho 37239 - rho 37240 + (seg34AccY225 rho - seg34AccX225 rho * (-1)) * (rho 37235 + rho 37236) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX226 rho = seg34AccX225 rho - Bool.toZMod bit * (seg34AccX225 rho - rho 37242) := by
      have hd : rho 37244 = Bool.toZMod bit * (rho 37242 - seg34AccX225 rho) := by
        rw [← hbit]
        unfold seg34AccX225
        linear_combination -r5972
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY226 rho = seg34AccY225 rho - Bool.toZMod bit * (seg34AccY225 rho - rho 37243) := by
      have hd : rho 37245 = Bool.toZMod bit * (rho 37243 - seg34AccY225 rho) := by
        rw [← hbit]
        unfold seg34AccY225
        linear_combination -r5973
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37235 * rho 37236 = rho 37246 := by linear_combination r5974
    have hd1 : rho 37235 * rho 37235 = rho 37247 := by linear_combination r5975
    have hd2 : rho 37236 * rho 37236 = rho 37248 := by linear_combination r5976
    have hd3 : rho 37249 * (rho 37236 * rho 37236 + rho 37235 * rho 37235 * (-1)) = 2 * (rho 37235 * rho 37236) := by
      rw [hd0, hd1, hd2]
      linear_combination r5977
    have hd4 : rho 37250 * (2 - (rho 37236 * rho 37236 + rho 37235 * rho 37235 * (-1))) = rho 37236 * rho 37236 - rho 37235 * rho 37235 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5978
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX225 rho : Seg34.F), (seg34AccY225 rho : Seg34.F)⟩
      ⟨(rho 37235 : Seg34.F), (rho 37236 : Seg34.F)⟩
      ⟨(rho 37242 : Seg34.F), (rho 37243 : Seg34.F)⟩
      ⟨(seg34AccX226 rho : Seg34.F), (seg34AccY226 rho : Seg34.F)⟩
      ⟨(rho 37249 : Seg34.F), (rho 37250 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung225

theorem seg34_rows226 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5979 rho ∧ Seg34.relationRow5980 rho ∧ Seg34.relationRow5981 rho ∧ Seg34.relationRow5982 rho ∧ Seg34.relationRow5983 rho ∧ Seg34.relationRow5984 rho ∧ Seg34.relationRow5985 rho ∧ Seg34.relationRow5986 rho ∧ Seg34.relationRow5987 rho ∧ Seg34.relationRow5988 rho ∧ Seg34.relationRow5989 rho ∧ Seg34.relationRow5990 rho ∧ Seg34.relationRow5991 rho ∧ Seg34.relationRow5992 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5979, r5980, r5981, r5982, r5983, r5984, r5985, r5986, r5987, r5988, r5989, r5990, r5991, r5992, _, _, _, _, _, _, _⟩
  exact ⟨r5979, r5980, r5981, r5982, r5983, r5984, r5985, r5986, r5987, r5988, r5989, r5990, r5991, r5992⟩

theorem seg34_rung226 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34218 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX226 rho : Seg34.F), (seg34AccY226 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37249 : Seg34.F), (rho 37250 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX226 rho : Seg34.F), (seg34AccY226 rho : Seg34.F)⟩
        ⟨(rho 37249 : Seg34.F), (rho 37250 : Seg34.F)⟩
        ⟨(seg34AccX227 rho : Seg34.F), (seg34AccY227 rho : Seg34.F)⟩
        ⟨(rho 37263 : Seg34.F), (rho 37264 : Seg34.F)⟩ := by
  obtain ⟨r5979, r5980, r5981, r5982, r5983, r5984, r5985, r5986, r5987, r5988, r5989, r5990, r5991, r5992⟩ := seg34_rows226 rho h
  unfold Seg34.relationRow5979 at r5979
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5979
  unfold Seg34.relationRow5980 at r5980
  unfold Seg34.relationRow5981 at r5981
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5981
  unfold Seg34.relationRow5982 at r5982
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5982
  unfold Seg34.relationRow5983 at r5983
  unfold Seg34.relationRow5984 at r5984
  unfold Seg34.relationRow5985 at r5985
  unfold Seg34.relationRow5986 at r5986
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5986
  unfold Seg34.relationRow5987 at r5987
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5987
  unfold Seg34.relationRow5988 at r5988
  unfold Seg34.relationRow5989 at r5989
  unfold Seg34.relationRow5990 at r5990
  unfold Seg34.relationRow5991 at r5991
  unfold Seg34.relationRow5992 at r5992
  have hrung226 (bit : Bool) (hbit : rho 34218 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX226 rho : Seg34.F), (seg34AccY226 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37249 : Seg34.F), (rho 37250 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX226 rho : Seg34.F), (seg34AccY226 rho : Seg34.F)⟩
        ⟨(rho 37249 : Seg34.F), (rho 37250 : Seg34.F)⟩
        ⟨(seg34AccX227 rho : Seg34.F), (seg34AccY227 rho : Seg34.F)⟩
        ⟨(rho 37263 : Seg34.F), (rho 37264 : Seg34.F)⟩ := by
    have hnextx : seg34AccX227 rho = seg34AccX226 rho + rho 37258 := by
      unfold seg34AccX227 seg34AccX226
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 76]
      ring
    have hnexty : seg34AccY227 rho = seg34AccY226 rho + rho 37259 := by
      unfold seg34AccY227 seg34AccY226
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 76]
      ring
    have hsum : seg34AccX226 rho + seg34AccY226 rho = rho 37251 := by
      unfold seg34AccX226 seg34AccY226
      linear_combination r5979
    have ha0 : (rho 37249 + rho 37250) * (seg34AccX226 rho + seg34AccY226 rho) = rho 37252 := by
      rw [hsum]
      linear_combination r5980
    have ha1 : rho 37250 * seg34AccX226 rho = rho 37253 := by
      unfold seg34AccX226
      linear_combination r5981
    have ha2 : rho 37249 * seg34AccY226 rho = rho 37254 := by
      unfold seg34AccY226
      linear_combination r5982
    have ha3 : 3021 * rho 37253 * rho 37254 = rho 37255 := by
      linear_combination r5983
    have ha4 : rho 37256 * (1 + rho 37255) = rho 37253 + rho 37254 := by
      linear_combination r5984
    have ha5 : rho 37257 * (1 - rho 37255) = rho 37252 - rho 37253 - rho 37254 := by
      linear_combination r5985
    have haddx :
        rho 37256 * (1 + 3021 * (rho 37250 * seg34AccX226 rho) * (rho 37249 * seg34AccY226 rho)) =
          rho 37250 * seg34AccX226 rho + rho 37249 * seg34AccY226 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37257 * (1 - 3021 * (rho 37250 * seg34AccX226 rho) * (rho 37249 * seg34AccY226 rho)) =
          (-1) * (rho 37250 * seg34AccX226 rho) - rho 37249 * seg34AccY226 rho +
            (seg34AccY226 rho - seg34AccX226 rho * (-1)) * (rho 37249 + rho 37250) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37257 * (1 - rho 37255) = rho 37252 - rho 37253 - rho 37254 := ha5
        _ = (-1) * rho 37253 - rho 37254 + (seg34AccY226 rho - seg34AccX226 rho * (-1)) * (rho 37249 + rho 37250) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX227 rho = seg34AccX226 rho - Bool.toZMod bit * (seg34AccX226 rho - rho 37256) := by
      have hd : rho 37258 = Bool.toZMod bit * (rho 37256 - seg34AccX226 rho) := by
        rw [← hbit]
        unfold seg34AccX226
        linear_combination -r5986
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY227 rho = seg34AccY226 rho - Bool.toZMod bit * (seg34AccY226 rho - rho 37257) := by
      have hd : rho 37259 = Bool.toZMod bit * (rho 37257 - seg34AccY226 rho) := by
        rw [← hbit]
        unfold seg34AccY226
        linear_combination -r5987
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37249 * rho 37250 = rho 37260 := by linear_combination r5988
    have hd1 : rho 37249 * rho 37249 = rho 37261 := by linear_combination r5989
    have hd2 : rho 37250 * rho 37250 = rho 37262 := by linear_combination r5990
    have hd3 : rho 37263 * (rho 37250 * rho 37250 + rho 37249 * rho 37249 * (-1)) = 2 * (rho 37249 * rho 37250) := by
      rw [hd0, hd1, hd2]
      linear_combination r5991
    have hd4 : rho 37264 * (2 - (rho 37250 * rho 37250 + rho 37249 * rho 37249 * (-1))) = rho 37250 * rho 37250 - rho 37249 * rho 37249 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5992
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX226 rho : Seg34.F), (seg34AccY226 rho : Seg34.F)⟩
      ⟨(rho 37249 : Seg34.F), (rho 37250 : Seg34.F)⟩
      ⟨(rho 37256 : Seg34.F), (rho 37257 : Seg34.F)⟩
      ⟨(seg34AccX227 rho : Seg34.F), (seg34AccY227 rho : Seg34.F)⟩
      ⟨(rho 37263 : Seg34.F), (rho 37264 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung226

theorem seg34_rows227 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5993 rho ∧ Seg34.relationRow5994 rho ∧ Seg34.relationRow5995 rho ∧ Seg34.relationRow5996 rho ∧ Seg34.relationRow5997 rho ∧ Seg34.relationRow5998 rho ∧ Seg34.relationRow5999 rho ∧ Seg34.relationRow6000 rho ∧ Seg34.relationRow6001 rho ∧ Seg34.relationRow6002 rho ∧ Seg34.relationRow6003 rho ∧ Seg34.relationRow6004 rho ∧ Seg34.relationRow6005 rho ∧ Seg34.relationRow6006 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5993, r5994, r5995, r5996, r5997, r5998, r5999⟩
  unfold Seg34.relationPart75 at p75
  rcases p75 with ⟨r6000, r6001, r6002, r6003, r6004, r6005, r6006, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5993, r5994, r5995, r5996, r5997, r5998, r5999, r6000, r6001, r6002, r6003, r6004, r6005, r6006⟩

theorem seg34_rung227 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34219 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX227 rho : Seg34.F), (seg34AccY227 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37263 : Seg34.F), (rho 37264 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX227 rho : Seg34.F), (seg34AccY227 rho : Seg34.F)⟩
        ⟨(rho 37263 : Seg34.F), (rho 37264 : Seg34.F)⟩
        ⟨(seg34AccX228 rho : Seg34.F), (seg34AccY228 rho : Seg34.F)⟩
        ⟨(rho 37277 : Seg34.F), (rho 37278 : Seg34.F)⟩ := by
  obtain ⟨r5993, r5994, r5995, r5996, r5997, r5998, r5999, r6000, r6001, r6002, r6003, r6004, r6005, r6006⟩ := seg34_rows227 rho h
  unfold Seg34.relationRow5993 at r5993
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5993
  unfold Seg34.relationRow5994 at r5994
  unfold Seg34.relationRow5995 at r5995
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5995
  unfold Seg34.relationRow5996 at r5996
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5996
  unfold Seg34.relationRow5997 at r5997
  unfold Seg34.relationRow5998 at r5998
  unfold Seg34.relationRow5999 at r5999
  unfold Seg34.relationRow6000 at r6000
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6000
  unfold Seg34.relationRow6001 at r6001
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6001
  unfold Seg34.relationRow6002 at r6002
  unfold Seg34.relationRow6003 at r6003
  unfold Seg34.relationRow6004 at r6004
  unfold Seg34.relationRow6005 at r6005
  unfold Seg34.relationRow6006 at r6006
  have hrung227 (bit : Bool) (hbit : rho 34219 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX227 rho : Seg34.F), (seg34AccY227 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37263 : Seg34.F), (rho 37264 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX227 rho : Seg34.F), (seg34AccY227 rho : Seg34.F)⟩
        ⟨(rho 37263 : Seg34.F), (rho 37264 : Seg34.F)⟩
        ⟨(seg34AccX228 rho : Seg34.F), (seg34AccY228 rho : Seg34.F)⟩
        ⟨(rho 37277 : Seg34.F), (rho 37278 : Seg34.F)⟩ := by
    have hnextx : seg34AccX228 rho = seg34AccX227 rho + rho 37272 := by
      unfold seg34AccX228 seg34AccX227
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 77]
      ring
    have hnexty : seg34AccY228 rho = seg34AccY227 rho + rho 37273 := by
      unfold seg34AccY228 seg34AccY227
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 77]
      ring
    have hsum : seg34AccX227 rho + seg34AccY227 rho = rho 37265 := by
      unfold seg34AccX227 seg34AccY227
      linear_combination r5993
    have ha0 : (rho 37263 + rho 37264) * (seg34AccX227 rho + seg34AccY227 rho) = rho 37266 := by
      rw [hsum]
      linear_combination r5994
    have ha1 : rho 37264 * seg34AccX227 rho = rho 37267 := by
      unfold seg34AccX227
      linear_combination r5995
    have ha2 : rho 37263 * seg34AccY227 rho = rho 37268 := by
      unfold seg34AccY227
      linear_combination r5996
    have ha3 : 3021 * rho 37267 * rho 37268 = rho 37269 := by
      linear_combination r5997
    have ha4 : rho 37270 * (1 + rho 37269) = rho 37267 + rho 37268 := by
      linear_combination r5998
    have ha5 : rho 37271 * (1 - rho 37269) = rho 37266 - rho 37267 - rho 37268 := by
      linear_combination r5999
    have haddx :
        rho 37270 * (1 + 3021 * (rho 37264 * seg34AccX227 rho) * (rho 37263 * seg34AccY227 rho)) =
          rho 37264 * seg34AccX227 rho + rho 37263 * seg34AccY227 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37271 * (1 - 3021 * (rho 37264 * seg34AccX227 rho) * (rho 37263 * seg34AccY227 rho)) =
          (-1) * (rho 37264 * seg34AccX227 rho) - rho 37263 * seg34AccY227 rho +
            (seg34AccY227 rho - seg34AccX227 rho * (-1)) * (rho 37263 + rho 37264) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37271 * (1 - rho 37269) = rho 37266 - rho 37267 - rho 37268 := ha5
        _ = (-1) * rho 37267 - rho 37268 + (seg34AccY227 rho - seg34AccX227 rho * (-1)) * (rho 37263 + rho 37264) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX228 rho = seg34AccX227 rho - Bool.toZMod bit * (seg34AccX227 rho - rho 37270) := by
      have hd : rho 37272 = Bool.toZMod bit * (rho 37270 - seg34AccX227 rho) := by
        rw [← hbit]
        unfold seg34AccX227
        linear_combination -r6000
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY228 rho = seg34AccY227 rho - Bool.toZMod bit * (seg34AccY227 rho - rho 37271) := by
      have hd : rho 37273 = Bool.toZMod bit * (rho 37271 - seg34AccY227 rho) := by
        rw [← hbit]
        unfold seg34AccY227
        linear_combination -r6001
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37263 * rho 37264 = rho 37274 := by linear_combination r6002
    have hd1 : rho 37263 * rho 37263 = rho 37275 := by linear_combination r6003
    have hd2 : rho 37264 * rho 37264 = rho 37276 := by linear_combination r6004
    have hd3 : rho 37277 * (rho 37264 * rho 37264 + rho 37263 * rho 37263 * (-1)) = 2 * (rho 37263 * rho 37264) := by
      rw [hd0, hd1, hd2]
      linear_combination r6005
    have hd4 : rho 37278 * (2 - (rho 37264 * rho 37264 + rho 37263 * rho 37263 * (-1))) = rho 37264 * rho 37264 - rho 37263 * rho 37263 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6006
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX227 rho : Seg34.F), (seg34AccY227 rho : Seg34.F)⟩
      ⟨(rho 37263 : Seg34.F), (rho 37264 : Seg34.F)⟩
      ⟨(rho 37270 : Seg34.F), (rho 37271 : Seg34.F)⟩
      ⟨(seg34AccX228 rho : Seg34.F), (seg34AccY228 rho : Seg34.F)⟩
      ⟨(rho 37277 : Seg34.F), (rho 37278 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung227

theorem seg34_rows228 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow6007 rho ∧ Seg34.relationRow6008 rho ∧ Seg34.relationRow6009 rho ∧ Seg34.relationRow6010 rho ∧ Seg34.relationRow6011 rho ∧ Seg34.relationRow6012 rho ∧ Seg34.relationRow6013 rho ∧ Seg34.relationRow6014 rho ∧ Seg34.relationRow6015 rho ∧ Seg34.relationRow6016 rho ∧ Seg34.relationRow6017 rho ∧ Seg34.relationRow6018 rho ∧ Seg34.relationRow6019 rho ∧ Seg34.relationRow6020 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, r6007, r6008, r6009, r6010, r6011, r6012, r6013, r6014, r6015, r6016, r6017, r6018, r6019, r6020, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6007, r6008, r6009, r6010, r6011, r6012, r6013, r6014, r6015, r6016, r6017, r6018, r6019, r6020⟩

theorem seg34_rung228 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34220 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX228 rho : Seg34.F), (seg34AccY228 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37277 : Seg34.F), (rho 37278 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX228 rho : Seg34.F), (seg34AccY228 rho : Seg34.F)⟩
        ⟨(rho 37277 : Seg34.F), (rho 37278 : Seg34.F)⟩
        ⟨(seg34AccX229 rho : Seg34.F), (seg34AccY229 rho : Seg34.F)⟩
        ⟨(rho 37291 : Seg34.F), (rho 37292 : Seg34.F)⟩ := by
  obtain ⟨r6007, r6008, r6009, r6010, r6011, r6012, r6013, r6014, r6015, r6016, r6017, r6018, r6019, r6020⟩ := seg34_rows228 rho h
  unfold Seg34.relationRow6007 at r6007
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6007
  unfold Seg34.relationRow6008 at r6008
  unfold Seg34.relationRow6009 at r6009
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6009
  unfold Seg34.relationRow6010 at r6010
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6010
  unfold Seg34.relationRow6011 at r6011
  unfold Seg34.relationRow6012 at r6012
  unfold Seg34.relationRow6013 at r6013
  unfold Seg34.relationRow6014 at r6014
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6014
  unfold Seg34.relationRow6015 at r6015
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6015
  unfold Seg34.relationRow6016 at r6016
  unfold Seg34.relationRow6017 at r6017
  unfold Seg34.relationRow6018 at r6018
  unfold Seg34.relationRow6019 at r6019
  unfold Seg34.relationRow6020 at r6020
  have hrung228 (bit : Bool) (hbit : rho 34220 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX228 rho : Seg34.F), (seg34AccY228 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37277 : Seg34.F), (rho 37278 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX228 rho : Seg34.F), (seg34AccY228 rho : Seg34.F)⟩
        ⟨(rho 37277 : Seg34.F), (rho 37278 : Seg34.F)⟩
        ⟨(seg34AccX229 rho : Seg34.F), (seg34AccY229 rho : Seg34.F)⟩
        ⟨(rho 37291 : Seg34.F), (rho 37292 : Seg34.F)⟩ := by
    have hnextx : seg34AccX229 rho = seg34AccX228 rho + rho 37286 := by
      unfold seg34AccX229 seg34AccX228
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 78]
      ring
    have hnexty : seg34AccY229 rho = seg34AccY228 rho + rho 37287 := by
      unfold seg34AccY229 seg34AccY228
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 78]
      ring
    have hsum : seg34AccX228 rho + seg34AccY228 rho = rho 37279 := by
      unfold seg34AccX228 seg34AccY228
      linear_combination r6007
    have ha0 : (rho 37277 + rho 37278) * (seg34AccX228 rho + seg34AccY228 rho) = rho 37280 := by
      rw [hsum]
      linear_combination r6008
    have ha1 : rho 37278 * seg34AccX228 rho = rho 37281 := by
      unfold seg34AccX228
      linear_combination r6009
    have ha2 : rho 37277 * seg34AccY228 rho = rho 37282 := by
      unfold seg34AccY228
      linear_combination r6010
    have ha3 : 3021 * rho 37281 * rho 37282 = rho 37283 := by
      linear_combination r6011
    have ha4 : rho 37284 * (1 + rho 37283) = rho 37281 + rho 37282 := by
      linear_combination r6012
    have ha5 : rho 37285 * (1 - rho 37283) = rho 37280 - rho 37281 - rho 37282 := by
      linear_combination r6013
    have haddx :
        rho 37284 * (1 + 3021 * (rho 37278 * seg34AccX228 rho) * (rho 37277 * seg34AccY228 rho)) =
          rho 37278 * seg34AccX228 rho + rho 37277 * seg34AccY228 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37285 * (1 - 3021 * (rho 37278 * seg34AccX228 rho) * (rho 37277 * seg34AccY228 rho)) =
          (-1) * (rho 37278 * seg34AccX228 rho) - rho 37277 * seg34AccY228 rho +
            (seg34AccY228 rho - seg34AccX228 rho * (-1)) * (rho 37277 + rho 37278) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37285 * (1 - rho 37283) = rho 37280 - rho 37281 - rho 37282 := ha5
        _ = (-1) * rho 37281 - rho 37282 + (seg34AccY228 rho - seg34AccX228 rho * (-1)) * (rho 37277 + rho 37278) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX229 rho = seg34AccX228 rho - Bool.toZMod bit * (seg34AccX228 rho - rho 37284) := by
      have hd : rho 37286 = Bool.toZMod bit * (rho 37284 - seg34AccX228 rho) := by
        rw [← hbit]
        unfold seg34AccX228
        linear_combination -r6014
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY229 rho = seg34AccY228 rho - Bool.toZMod bit * (seg34AccY228 rho - rho 37285) := by
      have hd : rho 37287 = Bool.toZMod bit * (rho 37285 - seg34AccY228 rho) := by
        rw [← hbit]
        unfold seg34AccY228
        linear_combination -r6015
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37277 * rho 37278 = rho 37288 := by linear_combination r6016
    have hd1 : rho 37277 * rho 37277 = rho 37289 := by linear_combination r6017
    have hd2 : rho 37278 * rho 37278 = rho 37290 := by linear_combination r6018
    have hd3 : rho 37291 * (rho 37278 * rho 37278 + rho 37277 * rho 37277 * (-1)) = 2 * (rho 37277 * rho 37278) := by
      rw [hd0, hd1, hd2]
      linear_combination r6019
    have hd4 : rho 37292 * (2 - (rho 37278 * rho 37278 + rho 37277 * rho 37277 * (-1))) = rho 37278 * rho 37278 - rho 37277 * rho 37277 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6020
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX228 rho : Seg34.F), (seg34AccY228 rho : Seg34.F)⟩
      ⟨(rho 37277 : Seg34.F), (rho 37278 : Seg34.F)⟩
      ⟨(rho 37284 : Seg34.F), (rho 37285 : Seg34.F)⟩
      ⟨(seg34AccX229 rho : Seg34.F), (seg34AccY229 rho : Seg34.F)⟩
      ⟨(rho 37291 : Seg34.F), (rho 37292 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung228

theorem seg34_rows229 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow6021 rho ∧ Seg34.relationRow6022 rho ∧ Seg34.relationRow6023 rho ∧ Seg34.relationRow6024 rho ∧ Seg34.relationRow6025 rho ∧ Seg34.relationRow6026 rho ∧ Seg34.relationRow6027 rho ∧ Seg34.relationRow6028 rho ∧ Seg34.relationRow6029 rho ∧ Seg34.relationRow6030 rho ∧ Seg34.relationRow6031 rho ∧ Seg34.relationRow6032 rho ∧ Seg34.relationRow6033 rho ∧ Seg34.relationRow6034 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6021, r6022, r6023, r6024, r6025, r6026, r6027, r6028, r6029, r6030, r6031, r6032, r6033, r6034, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6021, r6022, r6023, r6024, r6025, r6026, r6027, r6028, r6029, r6030, r6031, r6032, r6033, r6034⟩

theorem seg34_rung229 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34221 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX229 rho : Seg34.F), (seg34AccY229 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37291 : Seg34.F), (rho 37292 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX229 rho : Seg34.F), (seg34AccY229 rho : Seg34.F)⟩
        ⟨(rho 37291 : Seg34.F), (rho 37292 : Seg34.F)⟩
        ⟨(seg34AccX230 rho : Seg34.F), (seg34AccY230 rho : Seg34.F)⟩
        ⟨(rho 37305 : Seg34.F), (rho 37306 : Seg34.F)⟩ := by
  obtain ⟨r6021, r6022, r6023, r6024, r6025, r6026, r6027, r6028, r6029, r6030, r6031, r6032, r6033, r6034⟩ := seg34_rows229 rho h
  unfold Seg34.relationRow6021 at r6021
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6021
  unfold Seg34.relationRow6022 at r6022
  unfold Seg34.relationRow6023 at r6023
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6023
  unfold Seg34.relationRow6024 at r6024
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6024
  unfold Seg34.relationRow6025 at r6025
  unfold Seg34.relationRow6026 at r6026
  unfold Seg34.relationRow6027 at r6027
  unfold Seg34.relationRow6028 at r6028
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6028
  unfold Seg34.relationRow6029 at r6029
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6029
  unfold Seg34.relationRow6030 at r6030
  unfold Seg34.relationRow6031 at r6031
  unfold Seg34.relationRow6032 at r6032
  unfold Seg34.relationRow6033 at r6033
  unfold Seg34.relationRow6034 at r6034
  have hrung229 (bit : Bool) (hbit : rho 34221 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX229 rho : Seg34.F), (seg34AccY229 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37291 : Seg34.F), (rho 37292 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX229 rho : Seg34.F), (seg34AccY229 rho : Seg34.F)⟩
        ⟨(rho 37291 : Seg34.F), (rho 37292 : Seg34.F)⟩
        ⟨(seg34AccX230 rho : Seg34.F), (seg34AccY230 rho : Seg34.F)⟩
        ⟨(rho 37305 : Seg34.F), (rho 37306 : Seg34.F)⟩ := by
    have hnextx : seg34AccX230 rho = seg34AccX229 rho + rho 37300 := by
      unfold seg34AccX230 seg34AccX229
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 79]
      ring
    have hnexty : seg34AccY230 rho = seg34AccY229 rho + rho 37301 := by
      unfold seg34AccY230 seg34AccY229
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 79]
      ring
    have hsum : seg34AccX229 rho + seg34AccY229 rho = rho 37293 := by
      unfold seg34AccX229 seg34AccY229
      linear_combination r6021
    have ha0 : (rho 37291 + rho 37292) * (seg34AccX229 rho + seg34AccY229 rho) = rho 37294 := by
      rw [hsum]
      linear_combination r6022
    have ha1 : rho 37292 * seg34AccX229 rho = rho 37295 := by
      unfold seg34AccX229
      linear_combination r6023
    have ha2 : rho 37291 * seg34AccY229 rho = rho 37296 := by
      unfold seg34AccY229
      linear_combination r6024
    have ha3 : 3021 * rho 37295 * rho 37296 = rho 37297 := by
      linear_combination r6025
    have ha4 : rho 37298 * (1 + rho 37297) = rho 37295 + rho 37296 := by
      linear_combination r6026
    have ha5 : rho 37299 * (1 - rho 37297) = rho 37294 - rho 37295 - rho 37296 := by
      linear_combination r6027
    have haddx :
        rho 37298 * (1 + 3021 * (rho 37292 * seg34AccX229 rho) * (rho 37291 * seg34AccY229 rho)) =
          rho 37292 * seg34AccX229 rho + rho 37291 * seg34AccY229 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37299 * (1 - 3021 * (rho 37292 * seg34AccX229 rho) * (rho 37291 * seg34AccY229 rho)) =
          (-1) * (rho 37292 * seg34AccX229 rho) - rho 37291 * seg34AccY229 rho +
            (seg34AccY229 rho - seg34AccX229 rho * (-1)) * (rho 37291 + rho 37292) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37299 * (1 - rho 37297) = rho 37294 - rho 37295 - rho 37296 := ha5
        _ = (-1) * rho 37295 - rho 37296 + (seg34AccY229 rho - seg34AccX229 rho * (-1)) * (rho 37291 + rho 37292) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX230 rho = seg34AccX229 rho - Bool.toZMod bit * (seg34AccX229 rho - rho 37298) := by
      have hd : rho 37300 = Bool.toZMod bit * (rho 37298 - seg34AccX229 rho) := by
        rw [← hbit]
        unfold seg34AccX229
        linear_combination -r6028
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY230 rho = seg34AccY229 rho - Bool.toZMod bit * (seg34AccY229 rho - rho 37299) := by
      have hd : rho 37301 = Bool.toZMod bit * (rho 37299 - seg34AccY229 rho) := by
        rw [← hbit]
        unfold seg34AccY229
        linear_combination -r6029
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37291 * rho 37292 = rho 37302 := by linear_combination r6030
    have hd1 : rho 37291 * rho 37291 = rho 37303 := by linear_combination r6031
    have hd2 : rho 37292 * rho 37292 = rho 37304 := by linear_combination r6032
    have hd3 : rho 37305 * (rho 37292 * rho 37292 + rho 37291 * rho 37291 * (-1)) = 2 * (rho 37291 * rho 37292) := by
      rw [hd0, hd1, hd2]
      linear_combination r6033
    have hd4 : rho 37306 * (2 - (rho 37292 * rho 37292 + rho 37291 * rho 37291 * (-1))) = rho 37292 * rho 37292 - rho 37291 * rho 37291 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6034
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX229 rho : Seg34.F), (seg34AccY229 rho : Seg34.F)⟩
      ⟨(rho 37291 : Seg34.F), (rho 37292 : Seg34.F)⟩
      ⟨(rho 37298 : Seg34.F), (rho 37299 : Seg34.F)⟩
      ⟨(seg34AccX230 rho : Seg34.F), (seg34AccY230 rho : Seg34.F)⟩
      ⟨(rho 37305 : Seg34.F), (rho 37306 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung229

theorem seg34_rows230 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow6035 rho ∧ Seg34.relationRow6036 rho ∧ Seg34.relationRow6037 rho ∧ Seg34.relationRow6038 rho ∧ Seg34.relationRow6039 rho ∧ Seg34.relationRow6040 rho ∧ Seg34.relationRow6041 rho ∧ Seg34.relationRow6042 rho ∧ Seg34.relationRow6043 rho ∧ Seg34.relationRow6044 rho ∧ Seg34.relationRow6045 rho ∧ Seg34.relationRow6046 rho ∧ Seg34.relationRow6047 rho ∧ Seg34.relationRow6048 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6035, r6036, r6037, r6038, r6039, r6040, r6041, r6042, r6043, r6044, r6045, r6046, r6047, r6048, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6035, r6036, r6037, r6038, r6039, r6040, r6041, r6042, r6043, r6044, r6045, r6046, r6047, r6048⟩

theorem seg34_rung230 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34222 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX230 rho : Seg34.F), (seg34AccY230 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37305 : Seg34.F), (rho 37306 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX230 rho : Seg34.F), (seg34AccY230 rho : Seg34.F)⟩
        ⟨(rho 37305 : Seg34.F), (rho 37306 : Seg34.F)⟩
        ⟨(seg34AccX231 rho : Seg34.F), (seg34AccY231 rho : Seg34.F)⟩
        ⟨(rho 37319 : Seg34.F), (rho 37320 : Seg34.F)⟩ := by
  obtain ⟨r6035, r6036, r6037, r6038, r6039, r6040, r6041, r6042, r6043, r6044, r6045, r6046, r6047, r6048⟩ := seg34_rows230 rho h
  unfold Seg34.relationRow6035 at r6035
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6035
  unfold Seg34.relationRow6036 at r6036
  unfold Seg34.relationRow6037 at r6037
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6037
  unfold Seg34.relationRow6038 at r6038
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6038
  unfold Seg34.relationRow6039 at r6039
  unfold Seg34.relationRow6040 at r6040
  unfold Seg34.relationRow6041 at r6041
  unfold Seg34.relationRow6042 at r6042
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6042
  unfold Seg34.relationRow6043 at r6043
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6043
  unfold Seg34.relationRow6044 at r6044
  unfold Seg34.relationRow6045 at r6045
  unfold Seg34.relationRow6046 at r6046
  unfold Seg34.relationRow6047 at r6047
  unfold Seg34.relationRow6048 at r6048
  have hrung230 (bit : Bool) (hbit : rho 34222 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX230 rho : Seg34.F), (seg34AccY230 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37305 : Seg34.F), (rho 37306 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX230 rho : Seg34.F), (seg34AccY230 rho : Seg34.F)⟩
        ⟨(rho 37305 : Seg34.F), (rho 37306 : Seg34.F)⟩
        ⟨(seg34AccX231 rho : Seg34.F), (seg34AccY231 rho : Seg34.F)⟩
        ⟨(rho 37319 : Seg34.F), (rho 37320 : Seg34.F)⟩ := by
    have hnextx : seg34AccX231 rho = seg34AccX230 rho + rho 37314 := by
      unfold seg34AccX231 seg34AccX230
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 80]
      ring
    have hnexty : seg34AccY231 rho = seg34AccY230 rho + rho 37315 := by
      unfold seg34AccY231 seg34AccY230
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 80]
      ring
    have hsum : seg34AccX230 rho + seg34AccY230 rho = rho 37307 := by
      unfold seg34AccX230 seg34AccY230
      linear_combination r6035
    have ha0 : (rho 37305 + rho 37306) * (seg34AccX230 rho + seg34AccY230 rho) = rho 37308 := by
      rw [hsum]
      linear_combination r6036
    have ha1 : rho 37306 * seg34AccX230 rho = rho 37309 := by
      unfold seg34AccX230
      linear_combination r6037
    have ha2 : rho 37305 * seg34AccY230 rho = rho 37310 := by
      unfold seg34AccY230
      linear_combination r6038
    have ha3 : 3021 * rho 37309 * rho 37310 = rho 37311 := by
      linear_combination r6039
    have ha4 : rho 37312 * (1 + rho 37311) = rho 37309 + rho 37310 := by
      linear_combination r6040
    have ha5 : rho 37313 * (1 - rho 37311) = rho 37308 - rho 37309 - rho 37310 := by
      linear_combination r6041
    have haddx :
        rho 37312 * (1 + 3021 * (rho 37306 * seg34AccX230 rho) * (rho 37305 * seg34AccY230 rho)) =
          rho 37306 * seg34AccX230 rho + rho 37305 * seg34AccY230 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37313 * (1 - 3021 * (rho 37306 * seg34AccX230 rho) * (rho 37305 * seg34AccY230 rho)) =
          (-1) * (rho 37306 * seg34AccX230 rho) - rho 37305 * seg34AccY230 rho +
            (seg34AccY230 rho - seg34AccX230 rho * (-1)) * (rho 37305 + rho 37306) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37313 * (1 - rho 37311) = rho 37308 - rho 37309 - rho 37310 := ha5
        _ = (-1) * rho 37309 - rho 37310 + (seg34AccY230 rho - seg34AccX230 rho * (-1)) * (rho 37305 + rho 37306) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX231 rho = seg34AccX230 rho - Bool.toZMod bit * (seg34AccX230 rho - rho 37312) := by
      have hd : rho 37314 = Bool.toZMod bit * (rho 37312 - seg34AccX230 rho) := by
        rw [← hbit]
        unfold seg34AccX230
        linear_combination -r6042
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY231 rho = seg34AccY230 rho - Bool.toZMod bit * (seg34AccY230 rho - rho 37313) := by
      have hd : rho 37315 = Bool.toZMod bit * (rho 37313 - seg34AccY230 rho) := by
        rw [← hbit]
        unfold seg34AccY230
        linear_combination -r6043
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37305 * rho 37306 = rho 37316 := by linear_combination r6044
    have hd1 : rho 37305 * rho 37305 = rho 37317 := by linear_combination r6045
    have hd2 : rho 37306 * rho 37306 = rho 37318 := by linear_combination r6046
    have hd3 : rho 37319 * (rho 37306 * rho 37306 + rho 37305 * rho 37305 * (-1)) = 2 * (rho 37305 * rho 37306) := by
      rw [hd0, hd1, hd2]
      linear_combination r6047
    have hd4 : rho 37320 * (2 - (rho 37306 * rho 37306 + rho 37305 * rho 37305 * (-1))) = rho 37306 * rho 37306 - rho 37305 * rho 37305 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6048
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX230 rho : Seg34.F), (seg34AccY230 rho : Seg34.F)⟩
      ⟨(rho 37305 : Seg34.F), (rho 37306 : Seg34.F)⟩
      ⟨(rho 37312 : Seg34.F), (rho 37313 : Seg34.F)⟩
      ⟨(seg34AccX231 rho : Seg34.F), (seg34AccY231 rho : Seg34.F)⟩
      ⟨(rho 37319 : Seg34.F), (rho 37320 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung230

theorem seg34_hstep_c20 (rho : Nat -> Seg34.F) (h : Seg34.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (33992 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 220 ≤ i → i < 231 →
      EdwardsBridge.onCurve (seg34LadderAccState rho i) →
      EdwardsBridge.onCurve (seg34LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg34LadderAccState rho i) (seg34LadderCurState rho i)
        (seg34LadderAccState rho (i + 1)) (seg34LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg34_rung220 rho h bits[220]! (hbitAt 220 (by omega)) hacc hcur
  · exact seg34_rung221 rho h bits[221]! (hbitAt 221 (by omega)) hacc hcur
  · exact seg34_rung222 rho h bits[222]! (hbitAt 222 (by omega)) hacc hcur
  · exact seg34_rung223 rho h bits[223]! (hbitAt 223 (by omega)) hacc hcur
  · exact seg34_rung224 rho h bits[224]! (hbitAt 224 (by omega)) hacc hcur
  · exact seg34_rung225 rho h bits[225]! (hbitAt 225 (by omega)) hacc hcur
  · exact seg34_rung226 rho h bits[226]! (hbitAt 226 (by omega)) hacc hcur
  · exact seg34_rung227 rho h bits[227]! (hbitAt 227 (by omega)) hacc hcur
  · exact seg34_rung228 rho h bits[228]! (hbitAt 228 (by omega)) hacc hcur
  · exact seg34_rung229 rho h bits[229]! (hbitAt 229 (by omega)) hacc hcur
  · exact seg34_rung230 rho h bits[230]! (hbitAt 230 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
