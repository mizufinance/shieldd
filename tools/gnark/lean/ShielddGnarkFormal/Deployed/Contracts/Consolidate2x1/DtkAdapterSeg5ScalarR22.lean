import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg5_rows242 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow6203 rho ∧ Seg5.relationRow6204 rho ∧ Seg5.relationRow6205 rho ∧ Seg5.relationRow6206 rho ∧ Seg5.relationRow6207 rho ∧ Seg5.relationRow6208 rho ∧ Seg5.relationRow6209 rho ∧ Seg5.relationRow6210 rho ∧ Seg5.relationRow6211 rho ∧ Seg5.relationRow6212 rho ∧ Seg5.relationRow6213 rho ∧ Seg5.relationRow6214 rho ∧ Seg5.relationRow6215 rho ∧ Seg5.relationRow6216 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p77, _, _
  ⟩
  unfold Seg5.relationPart77 at p77
  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6203, r6204, r6205, r6206, r6207, r6208, r6209, r6210, r6211, r6212, r6213, r6214, r6215, r6216, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6203, r6204, r6205, r6206, r6207, r6208, r6209, r6210, r6211, r6212, r6213, r6214, r6215, r6216⟩

theorem seg5_rung242 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2657 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX242 rho : Seg5.F), (seg5AccY242 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5896 : Seg5.F), (rho 5897 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX242 rho : Seg5.F), (seg5AccY242 rho : Seg5.F)⟩
        ⟨(rho 5896 : Seg5.F), (rho 5897 : Seg5.F)⟩
        ⟨(seg5AccX243 rho : Seg5.F), (seg5AccY243 rho : Seg5.F)⟩
        ⟨(rho 5910 : Seg5.F), (rho 5911 : Seg5.F)⟩ := by
  obtain ⟨r6203, r6204, r6205, r6206, r6207, r6208, r6209, r6210, r6211, r6212, r6213, r6214, r6215, r6216⟩ := seg5_rows242 rho h
  unfold Seg5.relationRow6203 at r6203
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6203
  unfold Seg5.relationRow6204 at r6204
  unfold Seg5.relationRow6205 at r6205
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6205
  unfold Seg5.relationRow6206 at r6206
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6206
  unfold Seg5.relationRow6207 at r6207
  unfold Seg5.relationRow6208 at r6208
  unfold Seg5.relationRow6209 at r6209
  unfold Seg5.relationRow6210 at r6210
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6210
  unfold Seg5.relationRow6211 at r6211
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6211
  unfold Seg5.relationRow6212 at r6212
  unfold Seg5.relationRow6213 at r6213
  unfold Seg5.relationRow6214 at r6214
  unfold Seg5.relationRow6215 at r6215
  unfold Seg5.relationRow6216 at r6216
  have hrung242 (bit : Bool) (hbit : rho 2657 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX242 rho : Seg5.F), (seg5AccY242 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5896 : Seg5.F), (rho 5897 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX242 rho : Seg5.F), (seg5AccY242 rho : Seg5.F)⟩
        ⟨(rho 5896 : Seg5.F), (rho 5897 : Seg5.F)⟩
        ⟨(seg5AccX243 rho : Seg5.F), (seg5AccY243 rho : Seg5.F)⟩
        ⟨(rho 5910 : Seg5.F), (rho 5911 : Seg5.F)⟩ := by
    have hnextx : seg5AccX243 rho = seg5AccX242 rho + rho 5905 := by
      unfold seg5AccX243 seg5AccX242
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 92]
      ring
    have hnexty : seg5AccY243 rho = seg5AccY242 rho + rho 5906 := by
      unfold seg5AccY243 seg5AccY242
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 92]
      ring
    have hsum : seg5AccX242 rho + seg5AccY242 rho = rho 5898 := by
      unfold seg5AccX242 seg5AccY242
      linear_combination r6203
    have ha0 : (rho 5896 + rho 5897) * (seg5AccX242 rho + seg5AccY242 rho) = rho 5899 := by
      rw [hsum]
      linear_combination r6204
    have ha1 : rho 5897 * seg5AccX242 rho = rho 5900 := by
      unfold seg5AccX242
      linear_combination r6205
    have ha2 : rho 5896 * seg5AccY242 rho = rho 5901 := by
      unfold seg5AccY242
      linear_combination r6206
    have ha3 : 3021 * rho 5900 * rho 5901 = rho 5902 := by
      linear_combination r6207
    have ha4 : rho 5903 * (1 + rho 5902) = rho 5900 + rho 5901 := by
      linear_combination r6208
    have ha5 : rho 5904 * (1 - rho 5902) = rho 5899 - rho 5900 - rho 5901 := by
      linear_combination r6209
    have haddx :
        rho 5903 * (1 + 3021 * (rho 5897 * seg5AccX242 rho) * (rho 5896 * seg5AccY242 rho)) =
          rho 5897 * seg5AccX242 rho + rho 5896 * seg5AccY242 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5904 * (1 - 3021 * (rho 5897 * seg5AccX242 rho) * (rho 5896 * seg5AccY242 rho)) =
          (-1) * (rho 5897 * seg5AccX242 rho) - rho 5896 * seg5AccY242 rho +
            (seg5AccY242 rho - seg5AccX242 rho * (-1)) * (rho 5896 + rho 5897) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5904 * (1 - rho 5902) = rho 5899 - rho 5900 - rho 5901 := ha5
        _ = (-1) * rho 5900 - rho 5901 + (seg5AccY242 rho - seg5AccX242 rho * (-1)) * (rho 5896 + rho 5897) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX243 rho = seg5AccX242 rho - Bool.toZMod bit * (seg5AccX242 rho - rho 5903) := by
      have hd : rho 5905 = Bool.toZMod bit * (rho 5903 - seg5AccX242 rho) := by
        rw [← hbit]
        unfold seg5AccX242
        linear_combination -r6210
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY243 rho = seg5AccY242 rho - Bool.toZMod bit * (seg5AccY242 rho - rho 5904) := by
      have hd : rho 5906 = Bool.toZMod bit * (rho 5904 - seg5AccY242 rho) := by
        rw [← hbit]
        unfold seg5AccY242
        linear_combination -r6211
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5896 * rho 5897 = rho 5907 := by linear_combination r6212
    have hd1 : rho 5896 * rho 5896 = rho 5908 := by linear_combination r6213
    have hd2 : rho 5897 * rho 5897 = rho 5909 := by linear_combination r6214
    have hd3 : rho 5910 * (rho 5897 * rho 5897 + rho 5896 * rho 5896 * (-1)) = 2 * (rho 5896 * rho 5897) := by
      rw [hd0, hd1, hd2]
      linear_combination r6215
    have hd4 : rho 5911 * (2 - (rho 5897 * rho 5897 + rho 5896 * rho 5896 * (-1))) = rho 5897 * rho 5897 - rho 5896 * rho 5896 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6216
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX242 rho : Seg5.F), (seg5AccY242 rho : Seg5.F)⟩
      ⟨(rho 5896 : Seg5.F), (rho 5897 : Seg5.F)⟩
      ⟨(rho 5903 : Seg5.F), (rho 5904 : Seg5.F)⟩
      ⟨(seg5AccX243 rho : Seg5.F), (seg5AccY243 rho : Seg5.F)⟩
      ⟨(rho 5910 : Seg5.F), (rho 5911 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung242

theorem seg5_rows243 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow6217 rho ∧ Seg5.relationRow6218 rho ∧ Seg5.relationRow6219 rho ∧ Seg5.relationRow6220 rho ∧ Seg5.relationRow6221 rho ∧ Seg5.relationRow6222 rho ∧ Seg5.relationRow6223 rho ∧ Seg5.relationRow6224 rho ∧ Seg5.relationRow6225 rho ∧ Seg5.relationRow6226 rho ∧ Seg5.relationRow6227 rho ∧ Seg5.relationRow6228 rho ∧ Seg5.relationRow6229 rho ∧ Seg5.relationRow6230 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p77, _, _
  ⟩
  unfold Seg5.relationPart77 at p77
  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6217, r6218, r6219, r6220, r6221, r6222, r6223, r6224, r6225, r6226, r6227, r6228, r6229, r6230, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6217, r6218, r6219, r6220, r6221, r6222, r6223, r6224, r6225, r6226, r6227, r6228, r6229, r6230⟩

theorem seg5_rung243 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2658 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX243 rho : Seg5.F), (seg5AccY243 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5910 : Seg5.F), (rho 5911 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX243 rho : Seg5.F), (seg5AccY243 rho : Seg5.F)⟩
        ⟨(rho 5910 : Seg5.F), (rho 5911 : Seg5.F)⟩
        ⟨(seg5AccX244 rho : Seg5.F), (seg5AccY244 rho : Seg5.F)⟩
        ⟨(rho 5924 : Seg5.F), (rho 5925 : Seg5.F)⟩ := by
  obtain ⟨r6217, r6218, r6219, r6220, r6221, r6222, r6223, r6224, r6225, r6226, r6227, r6228, r6229, r6230⟩ := seg5_rows243 rho h
  unfold Seg5.relationRow6217 at r6217
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6217
  unfold Seg5.relationRow6218 at r6218
  unfold Seg5.relationRow6219 at r6219
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6219
  unfold Seg5.relationRow6220 at r6220
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6220
  unfold Seg5.relationRow6221 at r6221
  unfold Seg5.relationRow6222 at r6222
  unfold Seg5.relationRow6223 at r6223
  unfold Seg5.relationRow6224 at r6224
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6224
  unfold Seg5.relationRow6225 at r6225
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6225
  unfold Seg5.relationRow6226 at r6226
  unfold Seg5.relationRow6227 at r6227
  unfold Seg5.relationRow6228 at r6228
  unfold Seg5.relationRow6229 at r6229
  unfold Seg5.relationRow6230 at r6230
  have hrung243 (bit : Bool) (hbit : rho 2658 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX243 rho : Seg5.F), (seg5AccY243 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5910 : Seg5.F), (rho 5911 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX243 rho : Seg5.F), (seg5AccY243 rho : Seg5.F)⟩
        ⟨(rho 5910 : Seg5.F), (rho 5911 : Seg5.F)⟩
        ⟨(seg5AccX244 rho : Seg5.F), (seg5AccY244 rho : Seg5.F)⟩
        ⟨(rho 5924 : Seg5.F), (rho 5925 : Seg5.F)⟩ := by
    have hnextx : seg5AccX244 rho = seg5AccX243 rho + rho 5919 := by
      unfold seg5AccX244 seg5AccX243
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 93]
      ring
    have hnexty : seg5AccY244 rho = seg5AccY243 rho + rho 5920 := by
      unfold seg5AccY244 seg5AccY243
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 93]
      ring
    have hsum : seg5AccX243 rho + seg5AccY243 rho = rho 5912 := by
      unfold seg5AccX243 seg5AccY243
      linear_combination r6217
    have ha0 : (rho 5910 + rho 5911) * (seg5AccX243 rho + seg5AccY243 rho) = rho 5913 := by
      rw [hsum]
      linear_combination r6218
    have ha1 : rho 5911 * seg5AccX243 rho = rho 5914 := by
      unfold seg5AccX243
      linear_combination r6219
    have ha2 : rho 5910 * seg5AccY243 rho = rho 5915 := by
      unfold seg5AccY243
      linear_combination r6220
    have ha3 : 3021 * rho 5914 * rho 5915 = rho 5916 := by
      linear_combination r6221
    have ha4 : rho 5917 * (1 + rho 5916) = rho 5914 + rho 5915 := by
      linear_combination r6222
    have ha5 : rho 5918 * (1 - rho 5916) = rho 5913 - rho 5914 - rho 5915 := by
      linear_combination r6223
    have haddx :
        rho 5917 * (1 + 3021 * (rho 5911 * seg5AccX243 rho) * (rho 5910 * seg5AccY243 rho)) =
          rho 5911 * seg5AccX243 rho + rho 5910 * seg5AccY243 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5918 * (1 - 3021 * (rho 5911 * seg5AccX243 rho) * (rho 5910 * seg5AccY243 rho)) =
          (-1) * (rho 5911 * seg5AccX243 rho) - rho 5910 * seg5AccY243 rho +
            (seg5AccY243 rho - seg5AccX243 rho * (-1)) * (rho 5910 + rho 5911) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5918 * (1 - rho 5916) = rho 5913 - rho 5914 - rho 5915 := ha5
        _ = (-1) * rho 5914 - rho 5915 + (seg5AccY243 rho - seg5AccX243 rho * (-1)) * (rho 5910 + rho 5911) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX244 rho = seg5AccX243 rho - Bool.toZMod bit * (seg5AccX243 rho - rho 5917) := by
      have hd : rho 5919 = Bool.toZMod bit * (rho 5917 - seg5AccX243 rho) := by
        rw [← hbit]
        unfold seg5AccX243
        linear_combination -r6224
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY244 rho = seg5AccY243 rho - Bool.toZMod bit * (seg5AccY243 rho - rho 5918) := by
      have hd : rho 5920 = Bool.toZMod bit * (rho 5918 - seg5AccY243 rho) := by
        rw [← hbit]
        unfold seg5AccY243
        linear_combination -r6225
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5910 * rho 5911 = rho 5921 := by linear_combination r6226
    have hd1 : rho 5910 * rho 5910 = rho 5922 := by linear_combination r6227
    have hd2 : rho 5911 * rho 5911 = rho 5923 := by linear_combination r6228
    have hd3 : rho 5924 * (rho 5911 * rho 5911 + rho 5910 * rho 5910 * (-1)) = 2 * (rho 5910 * rho 5911) := by
      rw [hd0, hd1, hd2]
      linear_combination r6229
    have hd4 : rho 5925 * (2 - (rho 5911 * rho 5911 + rho 5910 * rho 5910 * (-1))) = rho 5911 * rho 5911 - rho 5910 * rho 5910 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6230
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX243 rho : Seg5.F), (seg5AccY243 rho : Seg5.F)⟩
      ⟨(rho 5910 : Seg5.F), (rho 5911 : Seg5.F)⟩
      ⟨(rho 5917 : Seg5.F), (rho 5918 : Seg5.F)⟩
      ⟨(seg5AccX244 rho : Seg5.F), (seg5AccY244 rho : Seg5.F)⟩
      ⟨(rho 5924 : Seg5.F), (rho 5925 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung243

theorem seg5_rows244 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow6231 rho ∧ Seg5.relationRow6232 rho ∧ Seg5.relationRow6233 rho ∧ Seg5.relationRow6234 rho ∧ Seg5.relationRow6235 rho ∧ Seg5.relationRow6236 rho ∧ Seg5.relationRow6237 rho ∧ Seg5.relationRow6238 rho ∧ Seg5.relationRow6239 rho ∧ Seg5.relationRow6240 rho ∧ Seg5.relationRow6241 rho ∧ Seg5.relationRow6242 rho ∧ Seg5.relationRow6243 rho ∧ Seg5.relationRow6244 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p77, p78, _
  ⟩
  unfold Seg5.relationPart77 at p77
  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6231, r6232, r6233, r6234, r6235, r6236, r6237, r6238, r6239⟩
  unfold Seg5.relationPart78 at p78
  rcases p78 with ⟨r6240, r6241, r6242, r6243, r6244, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6231, r6232, r6233, r6234, r6235, r6236, r6237, r6238, r6239, r6240, r6241, r6242, r6243, r6244⟩

theorem seg5_rung244 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2659 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX244 rho : Seg5.F), (seg5AccY244 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5924 : Seg5.F), (rho 5925 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX244 rho : Seg5.F), (seg5AccY244 rho : Seg5.F)⟩
        ⟨(rho 5924 : Seg5.F), (rho 5925 : Seg5.F)⟩
        ⟨(seg5AccX245 rho : Seg5.F), (seg5AccY245 rho : Seg5.F)⟩
        ⟨(rho 5938 : Seg5.F), (rho 5939 : Seg5.F)⟩ := by
  obtain ⟨r6231, r6232, r6233, r6234, r6235, r6236, r6237, r6238, r6239, r6240, r6241, r6242, r6243, r6244⟩ := seg5_rows244 rho h
  unfold Seg5.relationRow6231 at r6231
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6231
  unfold Seg5.relationRow6232 at r6232
  unfold Seg5.relationRow6233 at r6233
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6233
  unfold Seg5.relationRow6234 at r6234
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6234
  unfold Seg5.relationRow6235 at r6235
  unfold Seg5.relationRow6236 at r6236
  unfold Seg5.relationRow6237 at r6237
  unfold Seg5.relationRow6238 at r6238
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6238
  unfold Seg5.relationRow6239 at r6239
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6239
  unfold Seg5.relationRow6240 at r6240
  unfold Seg5.relationRow6241 at r6241
  unfold Seg5.relationRow6242 at r6242
  unfold Seg5.relationRow6243 at r6243
  unfold Seg5.relationRow6244 at r6244
  have hrung244 (bit : Bool) (hbit : rho 2659 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX244 rho : Seg5.F), (seg5AccY244 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5924 : Seg5.F), (rho 5925 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX244 rho : Seg5.F), (seg5AccY244 rho : Seg5.F)⟩
        ⟨(rho 5924 : Seg5.F), (rho 5925 : Seg5.F)⟩
        ⟨(seg5AccX245 rho : Seg5.F), (seg5AccY245 rho : Seg5.F)⟩
        ⟨(rho 5938 : Seg5.F), (rho 5939 : Seg5.F)⟩ := by
    have hnextx : seg5AccX245 rho = seg5AccX244 rho + rho 5933 := by
      unfold seg5AccX245 seg5AccX244
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 94]
      ring
    have hnexty : seg5AccY245 rho = seg5AccY244 rho + rho 5934 := by
      unfold seg5AccY245 seg5AccY244
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 94]
      ring
    have hsum : seg5AccX244 rho + seg5AccY244 rho = rho 5926 := by
      unfold seg5AccX244 seg5AccY244
      linear_combination r6231
    have ha0 : (rho 5924 + rho 5925) * (seg5AccX244 rho + seg5AccY244 rho) = rho 5927 := by
      rw [hsum]
      linear_combination r6232
    have ha1 : rho 5925 * seg5AccX244 rho = rho 5928 := by
      unfold seg5AccX244
      linear_combination r6233
    have ha2 : rho 5924 * seg5AccY244 rho = rho 5929 := by
      unfold seg5AccY244
      linear_combination r6234
    have ha3 : 3021 * rho 5928 * rho 5929 = rho 5930 := by
      linear_combination r6235
    have ha4 : rho 5931 * (1 + rho 5930) = rho 5928 + rho 5929 := by
      linear_combination r6236
    have ha5 : rho 5932 * (1 - rho 5930) = rho 5927 - rho 5928 - rho 5929 := by
      linear_combination r6237
    have haddx :
        rho 5931 * (1 + 3021 * (rho 5925 * seg5AccX244 rho) * (rho 5924 * seg5AccY244 rho)) =
          rho 5925 * seg5AccX244 rho + rho 5924 * seg5AccY244 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5932 * (1 - 3021 * (rho 5925 * seg5AccX244 rho) * (rho 5924 * seg5AccY244 rho)) =
          (-1) * (rho 5925 * seg5AccX244 rho) - rho 5924 * seg5AccY244 rho +
            (seg5AccY244 rho - seg5AccX244 rho * (-1)) * (rho 5924 + rho 5925) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5932 * (1 - rho 5930) = rho 5927 - rho 5928 - rho 5929 := ha5
        _ = (-1) * rho 5928 - rho 5929 + (seg5AccY244 rho - seg5AccX244 rho * (-1)) * (rho 5924 + rho 5925) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX245 rho = seg5AccX244 rho - Bool.toZMod bit * (seg5AccX244 rho - rho 5931) := by
      have hd : rho 5933 = Bool.toZMod bit * (rho 5931 - seg5AccX244 rho) := by
        rw [← hbit]
        unfold seg5AccX244
        linear_combination -r6238
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY245 rho = seg5AccY244 rho - Bool.toZMod bit * (seg5AccY244 rho - rho 5932) := by
      have hd : rho 5934 = Bool.toZMod bit * (rho 5932 - seg5AccY244 rho) := by
        rw [← hbit]
        unfold seg5AccY244
        linear_combination -r6239
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5924 * rho 5925 = rho 5935 := by linear_combination r6240
    have hd1 : rho 5924 * rho 5924 = rho 5936 := by linear_combination r6241
    have hd2 : rho 5925 * rho 5925 = rho 5937 := by linear_combination r6242
    have hd3 : rho 5938 * (rho 5925 * rho 5925 + rho 5924 * rho 5924 * (-1)) = 2 * (rho 5924 * rho 5925) := by
      rw [hd0, hd1, hd2]
      linear_combination r6243
    have hd4 : rho 5939 * (2 - (rho 5925 * rho 5925 + rho 5924 * rho 5924 * (-1))) = rho 5925 * rho 5925 - rho 5924 * rho 5924 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6244
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX244 rho : Seg5.F), (seg5AccY244 rho : Seg5.F)⟩
      ⟨(rho 5924 : Seg5.F), (rho 5925 : Seg5.F)⟩
      ⟨(rho 5931 : Seg5.F), (rho 5932 : Seg5.F)⟩
      ⟨(seg5AccX245 rho : Seg5.F), (seg5AccY245 rho : Seg5.F)⟩
      ⟨(rho 5938 : Seg5.F), (rho 5939 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung244

theorem seg5_rows245 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow6245 rho ∧ Seg5.relationRow6246 rho ∧ Seg5.relationRow6247 rho ∧ Seg5.relationRow6248 rho ∧ Seg5.relationRow6249 rho ∧ Seg5.relationRow6250 rho ∧ Seg5.relationRow6251 rho ∧ Seg5.relationRow6252 rho ∧ Seg5.relationRow6253 rho ∧ Seg5.relationRow6254 rho ∧ Seg5.relationRow6255 rho ∧ Seg5.relationRow6256 rho ∧ Seg5.relationRow6257 rho ∧ Seg5.relationRow6258 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p78, _
  ⟩
  unfold Seg5.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, r6245, r6246, r6247, r6248, r6249, r6250, r6251, r6252, r6253, r6254, r6255, r6256, r6257, r6258, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6245, r6246, r6247, r6248, r6249, r6250, r6251, r6252, r6253, r6254, r6255, r6256, r6257, r6258⟩

theorem seg5_rung245 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2660 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX245 rho : Seg5.F), (seg5AccY245 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5938 : Seg5.F), (rho 5939 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX245 rho : Seg5.F), (seg5AccY245 rho : Seg5.F)⟩
        ⟨(rho 5938 : Seg5.F), (rho 5939 : Seg5.F)⟩
        ⟨(seg5AccX246 rho : Seg5.F), (seg5AccY246 rho : Seg5.F)⟩
        ⟨(rho 5952 : Seg5.F), (rho 5953 : Seg5.F)⟩ := by
  obtain ⟨r6245, r6246, r6247, r6248, r6249, r6250, r6251, r6252, r6253, r6254, r6255, r6256, r6257, r6258⟩ := seg5_rows245 rho h
  unfold Seg5.relationRow6245 at r6245
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6245
  unfold Seg5.relationRow6246 at r6246
  unfold Seg5.relationRow6247 at r6247
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6247
  unfold Seg5.relationRow6248 at r6248
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6248
  unfold Seg5.relationRow6249 at r6249
  unfold Seg5.relationRow6250 at r6250
  unfold Seg5.relationRow6251 at r6251
  unfold Seg5.relationRow6252 at r6252
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6252
  unfold Seg5.relationRow6253 at r6253
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6253
  unfold Seg5.relationRow6254 at r6254
  unfold Seg5.relationRow6255 at r6255
  unfold Seg5.relationRow6256 at r6256
  unfold Seg5.relationRow6257 at r6257
  unfold Seg5.relationRow6258 at r6258
  have hrung245 (bit : Bool) (hbit : rho 2660 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX245 rho : Seg5.F), (seg5AccY245 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5938 : Seg5.F), (rho 5939 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX245 rho : Seg5.F), (seg5AccY245 rho : Seg5.F)⟩
        ⟨(rho 5938 : Seg5.F), (rho 5939 : Seg5.F)⟩
        ⟨(seg5AccX246 rho : Seg5.F), (seg5AccY246 rho : Seg5.F)⟩
        ⟨(rho 5952 : Seg5.F), (rho 5953 : Seg5.F)⟩ := by
    have hnextx : seg5AccX246 rho = seg5AccX245 rho + rho 5947 := by
      unfold seg5AccX246 seg5AccX245
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 95]
      ring
    have hnexty : seg5AccY246 rho = seg5AccY245 rho + rho 5948 := by
      unfold seg5AccY246 seg5AccY245
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 95]
      ring
    have hsum : seg5AccX245 rho + seg5AccY245 rho = rho 5940 := by
      unfold seg5AccX245 seg5AccY245
      linear_combination r6245
    have ha0 : (rho 5938 + rho 5939) * (seg5AccX245 rho + seg5AccY245 rho) = rho 5941 := by
      rw [hsum]
      linear_combination r6246
    have ha1 : rho 5939 * seg5AccX245 rho = rho 5942 := by
      unfold seg5AccX245
      linear_combination r6247
    have ha2 : rho 5938 * seg5AccY245 rho = rho 5943 := by
      unfold seg5AccY245
      linear_combination r6248
    have ha3 : 3021 * rho 5942 * rho 5943 = rho 5944 := by
      linear_combination r6249
    have ha4 : rho 5945 * (1 + rho 5944) = rho 5942 + rho 5943 := by
      linear_combination r6250
    have ha5 : rho 5946 * (1 - rho 5944) = rho 5941 - rho 5942 - rho 5943 := by
      linear_combination r6251
    have haddx :
        rho 5945 * (1 + 3021 * (rho 5939 * seg5AccX245 rho) * (rho 5938 * seg5AccY245 rho)) =
          rho 5939 * seg5AccX245 rho + rho 5938 * seg5AccY245 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5946 * (1 - 3021 * (rho 5939 * seg5AccX245 rho) * (rho 5938 * seg5AccY245 rho)) =
          (-1) * (rho 5939 * seg5AccX245 rho) - rho 5938 * seg5AccY245 rho +
            (seg5AccY245 rho - seg5AccX245 rho * (-1)) * (rho 5938 + rho 5939) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5946 * (1 - rho 5944) = rho 5941 - rho 5942 - rho 5943 := ha5
        _ = (-1) * rho 5942 - rho 5943 + (seg5AccY245 rho - seg5AccX245 rho * (-1)) * (rho 5938 + rho 5939) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX246 rho = seg5AccX245 rho - Bool.toZMod bit * (seg5AccX245 rho - rho 5945) := by
      have hd : rho 5947 = Bool.toZMod bit * (rho 5945 - seg5AccX245 rho) := by
        rw [← hbit]
        unfold seg5AccX245
        linear_combination -r6252
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY246 rho = seg5AccY245 rho - Bool.toZMod bit * (seg5AccY245 rho - rho 5946) := by
      have hd : rho 5948 = Bool.toZMod bit * (rho 5946 - seg5AccY245 rho) := by
        rw [← hbit]
        unfold seg5AccY245
        linear_combination -r6253
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5938 * rho 5939 = rho 5949 := by linear_combination r6254
    have hd1 : rho 5938 * rho 5938 = rho 5950 := by linear_combination r6255
    have hd2 : rho 5939 * rho 5939 = rho 5951 := by linear_combination r6256
    have hd3 : rho 5952 * (rho 5939 * rho 5939 + rho 5938 * rho 5938 * (-1)) = 2 * (rho 5938 * rho 5939) := by
      rw [hd0, hd1, hd2]
      linear_combination r6257
    have hd4 : rho 5953 * (2 - (rho 5939 * rho 5939 + rho 5938 * rho 5938 * (-1))) = rho 5939 * rho 5939 - rho 5938 * rho 5938 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6258
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX245 rho : Seg5.F), (seg5AccY245 rho : Seg5.F)⟩
      ⟨(rho 5938 : Seg5.F), (rho 5939 : Seg5.F)⟩
      ⟨(rho 5945 : Seg5.F), (rho 5946 : Seg5.F)⟩
      ⟨(seg5AccX246 rho : Seg5.F), (seg5AccY246 rho : Seg5.F)⟩
      ⟨(rho 5952 : Seg5.F), (rho 5953 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung245

theorem seg5_rows246 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow6259 rho ∧ Seg5.relationRow6260 rho ∧ Seg5.relationRow6261 rho ∧ Seg5.relationRow6262 rho ∧ Seg5.relationRow6263 rho ∧ Seg5.relationRow6264 rho ∧ Seg5.relationRow6265 rho ∧ Seg5.relationRow6266 rho ∧ Seg5.relationRow6267 rho ∧ Seg5.relationRow6268 rho ∧ Seg5.relationRow6269 rho ∧ Seg5.relationRow6270 rho ∧ Seg5.relationRow6271 rho ∧ Seg5.relationRow6272 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p78, _
  ⟩
  unfold Seg5.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6259, r6260, r6261, r6262, r6263, r6264, r6265, r6266, r6267, r6268, r6269, r6270, r6271, r6272, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6259, r6260, r6261, r6262, r6263, r6264, r6265, r6266, r6267, r6268, r6269, r6270, r6271, r6272⟩

theorem seg5_rung246 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2661 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX246 rho : Seg5.F), (seg5AccY246 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5952 : Seg5.F), (rho 5953 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX246 rho : Seg5.F), (seg5AccY246 rho : Seg5.F)⟩
        ⟨(rho 5952 : Seg5.F), (rho 5953 : Seg5.F)⟩
        ⟨(seg5AccX247 rho : Seg5.F), (seg5AccY247 rho : Seg5.F)⟩
        ⟨(rho 5966 : Seg5.F), (rho 5967 : Seg5.F)⟩ := by
  obtain ⟨r6259, r6260, r6261, r6262, r6263, r6264, r6265, r6266, r6267, r6268, r6269, r6270, r6271, r6272⟩ := seg5_rows246 rho h
  unfold Seg5.relationRow6259 at r6259
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6259
  unfold Seg5.relationRow6260 at r6260
  unfold Seg5.relationRow6261 at r6261
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6261
  unfold Seg5.relationRow6262 at r6262
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6262
  unfold Seg5.relationRow6263 at r6263
  unfold Seg5.relationRow6264 at r6264
  unfold Seg5.relationRow6265 at r6265
  unfold Seg5.relationRow6266 at r6266
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6266
  unfold Seg5.relationRow6267 at r6267
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6267
  unfold Seg5.relationRow6268 at r6268
  unfold Seg5.relationRow6269 at r6269
  unfold Seg5.relationRow6270 at r6270
  unfold Seg5.relationRow6271 at r6271
  unfold Seg5.relationRow6272 at r6272
  have hrung246 (bit : Bool) (hbit : rho 2661 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX246 rho : Seg5.F), (seg5AccY246 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5952 : Seg5.F), (rho 5953 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX246 rho : Seg5.F), (seg5AccY246 rho : Seg5.F)⟩
        ⟨(rho 5952 : Seg5.F), (rho 5953 : Seg5.F)⟩
        ⟨(seg5AccX247 rho : Seg5.F), (seg5AccY247 rho : Seg5.F)⟩
        ⟨(rho 5966 : Seg5.F), (rho 5967 : Seg5.F)⟩ := by
    have hnextx : seg5AccX247 rho = seg5AccX246 rho + rho 5961 := by
      unfold seg5AccX247 seg5AccX246
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 96]
      ring
    have hnexty : seg5AccY247 rho = seg5AccY246 rho + rho 5962 := by
      unfold seg5AccY247 seg5AccY246
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 96]
      ring
    have hsum : seg5AccX246 rho + seg5AccY246 rho = rho 5954 := by
      unfold seg5AccX246 seg5AccY246
      linear_combination r6259
    have ha0 : (rho 5952 + rho 5953) * (seg5AccX246 rho + seg5AccY246 rho) = rho 5955 := by
      rw [hsum]
      linear_combination r6260
    have ha1 : rho 5953 * seg5AccX246 rho = rho 5956 := by
      unfold seg5AccX246
      linear_combination r6261
    have ha2 : rho 5952 * seg5AccY246 rho = rho 5957 := by
      unfold seg5AccY246
      linear_combination r6262
    have ha3 : 3021 * rho 5956 * rho 5957 = rho 5958 := by
      linear_combination r6263
    have ha4 : rho 5959 * (1 + rho 5958) = rho 5956 + rho 5957 := by
      linear_combination r6264
    have ha5 : rho 5960 * (1 - rho 5958) = rho 5955 - rho 5956 - rho 5957 := by
      linear_combination r6265
    have haddx :
        rho 5959 * (1 + 3021 * (rho 5953 * seg5AccX246 rho) * (rho 5952 * seg5AccY246 rho)) =
          rho 5953 * seg5AccX246 rho + rho 5952 * seg5AccY246 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5960 * (1 - 3021 * (rho 5953 * seg5AccX246 rho) * (rho 5952 * seg5AccY246 rho)) =
          (-1) * (rho 5953 * seg5AccX246 rho) - rho 5952 * seg5AccY246 rho +
            (seg5AccY246 rho - seg5AccX246 rho * (-1)) * (rho 5952 + rho 5953) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5960 * (1 - rho 5958) = rho 5955 - rho 5956 - rho 5957 := ha5
        _ = (-1) * rho 5956 - rho 5957 + (seg5AccY246 rho - seg5AccX246 rho * (-1)) * (rho 5952 + rho 5953) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX247 rho = seg5AccX246 rho - Bool.toZMod bit * (seg5AccX246 rho - rho 5959) := by
      have hd : rho 5961 = Bool.toZMod bit * (rho 5959 - seg5AccX246 rho) := by
        rw [← hbit]
        unfold seg5AccX246
        linear_combination -r6266
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY247 rho = seg5AccY246 rho - Bool.toZMod bit * (seg5AccY246 rho - rho 5960) := by
      have hd : rho 5962 = Bool.toZMod bit * (rho 5960 - seg5AccY246 rho) := by
        rw [← hbit]
        unfold seg5AccY246
        linear_combination -r6267
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5952 * rho 5953 = rho 5963 := by linear_combination r6268
    have hd1 : rho 5952 * rho 5952 = rho 5964 := by linear_combination r6269
    have hd2 : rho 5953 * rho 5953 = rho 5965 := by linear_combination r6270
    have hd3 : rho 5966 * (rho 5953 * rho 5953 + rho 5952 * rho 5952 * (-1)) = 2 * (rho 5952 * rho 5953) := by
      rw [hd0, hd1, hd2]
      linear_combination r6271
    have hd4 : rho 5967 * (2 - (rho 5953 * rho 5953 + rho 5952 * rho 5952 * (-1))) = rho 5953 * rho 5953 - rho 5952 * rho 5952 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6272
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX246 rho : Seg5.F), (seg5AccY246 rho : Seg5.F)⟩
      ⟨(rho 5952 : Seg5.F), (rho 5953 : Seg5.F)⟩
      ⟨(rho 5959 : Seg5.F), (rho 5960 : Seg5.F)⟩
      ⟨(seg5AccX247 rho : Seg5.F), (seg5AccY247 rho : Seg5.F)⟩
      ⟨(rho 5966 : Seg5.F), (rho 5967 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung246

theorem seg5_rows247 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow6273 rho ∧ Seg5.relationRow6274 rho ∧ Seg5.relationRow6275 rho ∧ Seg5.relationRow6276 rho ∧ Seg5.relationRow6277 rho ∧ Seg5.relationRow6278 rho ∧ Seg5.relationRow6279 rho ∧ Seg5.relationRow6280 rho ∧ Seg5.relationRow6281 rho ∧ Seg5.relationRow6282 rho ∧ Seg5.relationRow6283 rho ∧ Seg5.relationRow6284 rho ∧ Seg5.relationRow6285 rho ∧ Seg5.relationRow6286 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p78, _
  ⟩
  unfold Seg5.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6273, r6274, r6275, r6276, r6277, r6278, r6279, r6280, r6281, r6282, r6283, r6284, r6285, r6286, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6273, r6274, r6275, r6276, r6277, r6278, r6279, r6280, r6281, r6282, r6283, r6284, r6285, r6286⟩

theorem seg5_rung247 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2662 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX247 rho : Seg5.F), (seg5AccY247 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5966 : Seg5.F), (rho 5967 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX247 rho : Seg5.F), (seg5AccY247 rho : Seg5.F)⟩
        ⟨(rho 5966 : Seg5.F), (rho 5967 : Seg5.F)⟩
        ⟨(seg5AccX248 rho : Seg5.F), (seg5AccY248 rho : Seg5.F)⟩
        ⟨(rho 5980 : Seg5.F), (rho 5981 : Seg5.F)⟩ := by
  obtain ⟨r6273, r6274, r6275, r6276, r6277, r6278, r6279, r6280, r6281, r6282, r6283, r6284, r6285, r6286⟩ := seg5_rows247 rho h
  unfold Seg5.relationRow6273 at r6273
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6273
  unfold Seg5.relationRow6274 at r6274
  unfold Seg5.relationRow6275 at r6275
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6275
  unfold Seg5.relationRow6276 at r6276
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6276
  unfold Seg5.relationRow6277 at r6277
  unfold Seg5.relationRow6278 at r6278
  unfold Seg5.relationRow6279 at r6279
  unfold Seg5.relationRow6280 at r6280
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6280
  unfold Seg5.relationRow6281 at r6281
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6281
  unfold Seg5.relationRow6282 at r6282
  unfold Seg5.relationRow6283 at r6283
  unfold Seg5.relationRow6284 at r6284
  unfold Seg5.relationRow6285 at r6285
  unfold Seg5.relationRow6286 at r6286
  have hrung247 (bit : Bool) (hbit : rho 2662 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX247 rho : Seg5.F), (seg5AccY247 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5966 : Seg5.F), (rho 5967 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX247 rho : Seg5.F), (seg5AccY247 rho : Seg5.F)⟩
        ⟨(rho 5966 : Seg5.F), (rho 5967 : Seg5.F)⟩
        ⟨(seg5AccX248 rho : Seg5.F), (seg5AccY248 rho : Seg5.F)⟩
        ⟨(rho 5980 : Seg5.F), (rho 5981 : Seg5.F)⟩ := by
    have hnextx : seg5AccX248 rho = seg5AccX247 rho + rho 5975 := by
      unfold seg5AccX248 seg5AccX247
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 97]
      ring
    have hnexty : seg5AccY248 rho = seg5AccY247 rho + rho 5976 := by
      unfold seg5AccY248 seg5AccY247
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 97]
      ring
    have hsum : seg5AccX247 rho + seg5AccY247 rho = rho 5968 := by
      unfold seg5AccX247 seg5AccY247
      linear_combination r6273
    have ha0 : (rho 5966 + rho 5967) * (seg5AccX247 rho + seg5AccY247 rho) = rho 5969 := by
      rw [hsum]
      linear_combination r6274
    have ha1 : rho 5967 * seg5AccX247 rho = rho 5970 := by
      unfold seg5AccX247
      linear_combination r6275
    have ha2 : rho 5966 * seg5AccY247 rho = rho 5971 := by
      unfold seg5AccY247
      linear_combination r6276
    have ha3 : 3021 * rho 5970 * rho 5971 = rho 5972 := by
      linear_combination r6277
    have ha4 : rho 5973 * (1 + rho 5972) = rho 5970 + rho 5971 := by
      linear_combination r6278
    have ha5 : rho 5974 * (1 - rho 5972) = rho 5969 - rho 5970 - rho 5971 := by
      linear_combination r6279
    have haddx :
        rho 5973 * (1 + 3021 * (rho 5967 * seg5AccX247 rho) * (rho 5966 * seg5AccY247 rho)) =
          rho 5967 * seg5AccX247 rho + rho 5966 * seg5AccY247 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5974 * (1 - 3021 * (rho 5967 * seg5AccX247 rho) * (rho 5966 * seg5AccY247 rho)) =
          (-1) * (rho 5967 * seg5AccX247 rho) - rho 5966 * seg5AccY247 rho +
            (seg5AccY247 rho - seg5AccX247 rho * (-1)) * (rho 5966 + rho 5967) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5974 * (1 - rho 5972) = rho 5969 - rho 5970 - rho 5971 := ha5
        _ = (-1) * rho 5970 - rho 5971 + (seg5AccY247 rho - seg5AccX247 rho * (-1)) * (rho 5966 + rho 5967) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX248 rho = seg5AccX247 rho - Bool.toZMod bit * (seg5AccX247 rho - rho 5973) := by
      have hd : rho 5975 = Bool.toZMod bit * (rho 5973 - seg5AccX247 rho) := by
        rw [← hbit]
        unfold seg5AccX247
        linear_combination -r6280
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY248 rho = seg5AccY247 rho - Bool.toZMod bit * (seg5AccY247 rho - rho 5974) := by
      have hd : rho 5976 = Bool.toZMod bit * (rho 5974 - seg5AccY247 rho) := by
        rw [← hbit]
        unfold seg5AccY247
        linear_combination -r6281
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5966 * rho 5967 = rho 5977 := by linear_combination r6282
    have hd1 : rho 5966 * rho 5966 = rho 5978 := by linear_combination r6283
    have hd2 : rho 5967 * rho 5967 = rho 5979 := by linear_combination r6284
    have hd3 : rho 5980 * (rho 5967 * rho 5967 + rho 5966 * rho 5966 * (-1)) = 2 * (rho 5966 * rho 5967) := by
      rw [hd0, hd1, hd2]
      linear_combination r6285
    have hd4 : rho 5981 * (2 - (rho 5967 * rho 5967 + rho 5966 * rho 5966 * (-1))) = rho 5967 * rho 5967 - rho 5966 * rho 5966 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6286
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX247 rho : Seg5.F), (seg5AccY247 rho : Seg5.F)⟩
      ⟨(rho 5966 : Seg5.F), (rho 5967 : Seg5.F)⟩
      ⟨(rho 5973 : Seg5.F), (rho 5974 : Seg5.F)⟩
      ⟨(seg5AccX248 rho : Seg5.F), (seg5AccY248 rho : Seg5.F)⟩
      ⟨(rho 5980 : Seg5.F), (rho 5981 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung247

theorem seg5_rows248 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow6287 rho ∧ Seg5.relationRow6288 rho ∧ Seg5.relationRow6289 rho ∧ Seg5.relationRow6290 rho ∧ Seg5.relationRow6291 rho ∧ Seg5.relationRow6292 rho ∧ Seg5.relationRow6293 rho ∧ Seg5.relationRow6294 rho ∧ Seg5.relationRow6295 rho ∧ Seg5.relationRow6296 rho ∧ Seg5.relationRow6297 rho ∧ Seg5.relationRow6298 rho ∧ Seg5.relationRow6299 rho ∧ Seg5.relationRow6300 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p78, _
  ⟩
  unfold Seg5.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6287, r6288, r6289, r6290, r6291, r6292, r6293, r6294, r6295, r6296, r6297, r6298, r6299, r6300, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6287, r6288, r6289, r6290, r6291, r6292, r6293, r6294, r6295, r6296, r6297, r6298, r6299, r6300⟩

theorem seg5_rung248 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2663 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX248 rho : Seg5.F), (seg5AccY248 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5980 : Seg5.F), (rho 5981 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX248 rho : Seg5.F), (seg5AccY248 rho : Seg5.F)⟩
        ⟨(rho 5980 : Seg5.F), (rho 5981 : Seg5.F)⟩
        ⟨(seg5AccX249 rho : Seg5.F), (seg5AccY249 rho : Seg5.F)⟩
        ⟨(rho 5994 : Seg5.F), (rho 5995 : Seg5.F)⟩ := by
  obtain ⟨r6287, r6288, r6289, r6290, r6291, r6292, r6293, r6294, r6295, r6296, r6297, r6298, r6299, r6300⟩ := seg5_rows248 rho h
  unfold Seg5.relationRow6287 at r6287
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6287
  unfold Seg5.relationRow6288 at r6288
  unfold Seg5.relationRow6289 at r6289
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6289
  unfold Seg5.relationRow6290 at r6290
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6290
  unfold Seg5.relationRow6291 at r6291
  unfold Seg5.relationRow6292 at r6292
  unfold Seg5.relationRow6293 at r6293
  unfold Seg5.relationRow6294 at r6294
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6294
  unfold Seg5.relationRow6295 at r6295
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6295
  unfold Seg5.relationRow6296 at r6296
  unfold Seg5.relationRow6297 at r6297
  unfold Seg5.relationRow6298 at r6298
  unfold Seg5.relationRow6299 at r6299
  unfold Seg5.relationRow6300 at r6300
  have hrung248 (bit : Bool) (hbit : rho 2663 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX248 rho : Seg5.F), (seg5AccY248 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5980 : Seg5.F), (rho 5981 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX248 rho : Seg5.F), (seg5AccY248 rho : Seg5.F)⟩
        ⟨(rho 5980 : Seg5.F), (rho 5981 : Seg5.F)⟩
        ⟨(seg5AccX249 rho : Seg5.F), (seg5AccY249 rho : Seg5.F)⟩
        ⟨(rho 5994 : Seg5.F), (rho 5995 : Seg5.F)⟩ := by
    have hnextx : seg5AccX249 rho = seg5AccX248 rho + rho 5989 := by
      unfold seg5AccX249 seg5AccX248
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 98]
      ring
    have hnexty : seg5AccY249 rho = seg5AccY248 rho + rho 5990 := by
      unfold seg5AccY249 seg5AccY248
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 98]
      ring
    have hsum : seg5AccX248 rho + seg5AccY248 rho = rho 5982 := by
      unfold seg5AccX248 seg5AccY248
      linear_combination r6287
    have ha0 : (rho 5980 + rho 5981) * (seg5AccX248 rho + seg5AccY248 rho) = rho 5983 := by
      rw [hsum]
      linear_combination r6288
    have ha1 : rho 5981 * seg5AccX248 rho = rho 5984 := by
      unfold seg5AccX248
      linear_combination r6289
    have ha2 : rho 5980 * seg5AccY248 rho = rho 5985 := by
      unfold seg5AccY248
      linear_combination r6290
    have ha3 : 3021 * rho 5984 * rho 5985 = rho 5986 := by
      linear_combination r6291
    have ha4 : rho 5987 * (1 + rho 5986) = rho 5984 + rho 5985 := by
      linear_combination r6292
    have ha5 : rho 5988 * (1 - rho 5986) = rho 5983 - rho 5984 - rho 5985 := by
      linear_combination r6293
    have haddx :
        rho 5987 * (1 + 3021 * (rho 5981 * seg5AccX248 rho) * (rho 5980 * seg5AccY248 rho)) =
          rho 5981 * seg5AccX248 rho + rho 5980 * seg5AccY248 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5988 * (1 - 3021 * (rho 5981 * seg5AccX248 rho) * (rho 5980 * seg5AccY248 rho)) =
          (-1) * (rho 5981 * seg5AccX248 rho) - rho 5980 * seg5AccY248 rho +
            (seg5AccY248 rho - seg5AccX248 rho * (-1)) * (rho 5980 + rho 5981) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5988 * (1 - rho 5986) = rho 5983 - rho 5984 - rho 5985 := ha5
        _ = (-1) * rho 5984 - rho 5985 + (seg5AccY248 rho - seg5AccX248 rho * (-1)) * (rho 5980 + rho 5981) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX249 rho = seg5AccX248 rho - Bool.toZMod bit * (seg5AccX248 rho - rho 5987) := by
      have hd : rho 5989 = Bool.toZMod bit * (rho 5987 - seg5AccX248 rho) := by
        rw [← hbit]
        unfold seg5AccX248
        linear_combination -r6294
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY249 rho = seg5AccY248 rho - Bool.toZMod bit * (seg5AccY248 rho - rho 5988) := by
      have hd : rho 5990 = Bool.toZMod bit * (rho 5988 - seg5AccY248 rho) := by
        rw [← hbit]
        unfold seg5AccY248
        linear_combination -r6295
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5980 * rho 5981 = rho 5991 := by linear_combination r6296
    have hd1 : rho 5980 * rho 5980 = rho 5992 := by linear_combination r6297
    have hd2 : rho 5981 * rho 5981 = rho 5993 := by linear_combination r6298
    have hd3 : rho 5994 * (rho 5981 * rho 5981 + rho 5980 * rho 5980 * (-1)) = 2 * (rho 5980 * rho 5981) := by
      rw [hd0, hd1, hd2]
      linear_combination r6299
    have hd4 : rho 5995 * (2 - (rho 5981 * rho 5981 + rho 5980 * rho 5980 * (-1))) = rho 5981 * rho 5981 - rho 5980 * rho 5980 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6300
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX248 rho : Seg5.F), (seg5AccY248 rho : Seg5.F)⟩
      ⟨(rho 5980 : Seg5.F), (rho 5981 : Seg5.F)⟩
      ⟨(rho 5987 : Seg5.F), (rho 5988 : Seg5.F)⟩
      ⟨(seg5AccX249 rho : Seg5.F), (seg5AccY249 rho : Seg5.F)⟩
      ⟨(rho 5994 : Seg5.F), (rho 5995 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung248

theorem seg5_rows249 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow6301 rho ∧ Seg5.relationRow6302 rho ∧ Seg5.relationRow6303 rho ∧ Seg5.relationRow6304 rho ∧ Seg5.relationRow6305 rho ∧ Seg5.relationRow6306 rho ∧ Seg5.relationRow6307 rho ∧ Seg5.relationRow6308 rho ∧ Seg5.relationRow6309 rho ∧ Seg5.relationRow6310 rho ∧ Seg5.relationRow6311 rho ∧ Seg5.relationRow6312 rho ∧ Seg5.relationRow6313 rho ∧ Seg5.relationRow6314 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p78, _
  ⟩
  unfold Seg5.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6301, r6302, r6303, r6304, r6305, r6306, r6307, r6308, r6309, r6310, r6311, r6312, r6313, r6314, _, _, _, _, _⟩
  exact ⟨r6301, r6302, r6303, r6304, r6305, r6306, r6307, r6308, r6309, r6310, r6311, r6312, r6313, r6314⟩

theorem seg5_rung249 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2664 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX249 rho : Seg5.F), (seg5AccY249 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5994 : Seg5.F), (rho 5995 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX249 rho : Seg5.F), (seg5AccY249 rho : Seg5.F)⟩
        ⟨(rho 5994 : Seg5.F), (rho 5995 : Seg5.F)⟩
        ⟨(seg5AccX250 rho : Seg5.F), (seg5AccY250 rho : Seg5.F)⟩
        ⟨(rho 6008 : Seg5.F), (rho 6009 : Seg5.F)⟩ := by
  obtain ⟨r6301, r6302, r6303, r6304, r6305, r6306, r6307, r6308, r6309, r6310, r6311, r6312, r6313, r6314⟩ := seg5_rows249 rho h
  unfold Seg5.relationRow6301 at r6301
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6301
  unfold Seg5.relationRow6302 at r6302
  unfold Seg5.relationRow6303 at r6303
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6303
  unfold Seg5.relationRow6304 at r6304
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6304
  unfold Seg5.relationRow6305 at r6305
  unfold Seg5.relationRow6306 at r6306
  unfold Seg5.relationRow6307 at r6307
  unfold Seg5.relationRow6308 at r6308
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6308
  unfold Seg5.relationRow6309 at r6309
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6309
  unfold Seg5.relationRow6310 at r6310
  unfold Seg5.relationRow6311 at r6311
  unfold Seg5.relationRow6312 at r6312
  unfold Seg5.relationRow6313 at r6313
  unfold Seg5.relationRow6314 at r6314
  have hrung249 (bit : Bool) (hbit : rho 2664 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX249 rho : Seg5.F), (seg5AccY249 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5994 : Seg5.F), (rho 5995 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX249 rho : Seg5.F), (seg5AccY249 rho : Seg5.F)⟩
        ⟨(rho 5994 : Seg5.F), (rho 5995 : Seg5.F)⟩
        ⟨(seg5AccX250 rho : Seg5.F), (seg5AccY250 rho : Seg5.F)⟩
        ⟨(rho 6008 : Seg5.F), (rho 6009 : Seg5.F)⟩ := by
    have hnextx : seg5AccX250 rho = seg5AccX249 rho + rho 6003 := by
      unfold seg5AccX250 seg5AccX249
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 99]
      ring
    have hnexty : seg5AccY250 rho = seg5AccY249 rho + rho 6004 := by
      unfold seg5AccY250 seg5AccY249
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 99]
      ring
    have hsum : seg5AccX249 rho + seg5AccY249 rho = rho 5996 := by
      unfold seg5AccX249 seg5AccY249
      linear_combination r6301
    have ha0 : (rho 5994 + rho 5995) * (seg5AccX249 rho + seg5AccY249 rho) = rho 5997 := by
      rw [hsum]
      linear_combination r6302
    have ha1 : rho 5995 * seg5AccX249 rho = rho 5998 := by
      unfold seg5AccX249
      linear_combination r6303
    have ha2 : rho 5994 * seg5AccY249 rho = rho 5999 := by
      unfold seg5AccY249
      linear_combination r6304
    have ha3 : 3021 * rho 5998 * rho 5999 = rho 6000 := by
      linear_combination r6305
    have ha4 : rho 6001 * (1 + rho 6000) = rho 5998 + rho 5999 := by
      linear_combination r6306
    have ha5 : rho 6002 * (1 - rho 6000) = rho 5997 - rho 5998 - rho 5999 := by
      linear_combination r6307
    have haddx :
        rho 6001 * (1 + 3021 * (rho 5995 * seg5AccX249 rho) * (rho 5994 * seg5AccY249 rho)) =
          rho 5995 * seg5AccX249 rho + rho 5994 * seg5AccY249 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 6002 * (1 - 3021 * (rho 5995 * seg5AccX249 rho) * (rho 5994 * seg5AccY249 rho)) =
          (-1) * (rho 5995 * seg5AccX249 rho) - rho 5994 * seg5AccY249 rho +
            (seg5AccY249 rho - seg5AccX249 rho * (-1)) * (rho 5994 + rho 5995) := by
      rw [ha1, ha2, ha3]
      calc
        rho 6002 * (1 - rho 6000) = rho 5997 - rho 5998 - rho 5999 := ha5
        _ = (-1) * rho 5998 - rho 5999 + (seg5AccY249 rho - seg5AccX249 rho * (-1)) * (rho 5994 + rho 5995) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX250 rho = seg5AccX249 rho - Bool.toZMod bit * (seg5AccX249 rho - rho 6001) := by
      have hd : rho 6003 = Bool.toZMod bit * (rho 6001 - seg5AccX249 rho) := by
        rw [← hbit]
        unfold seg5AccX249
        linear_combination -r6308
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY250 rho = seg5AccY249 rho - Bool.toZMod bit * (seg5AccY249 rho - rho 6002) := by
      have hd : rho 6004 = Bool.toZMod bit * (rho 6002 - seg5AccY249 rho) := by
        rw [← hbit]
        unfold seg5AccY249
        linear_combination -r6309
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5994 * rho 5995 = rho 6005 := by linear_combination r6310
    have hd1 : rho 5994 * rho 5994 = rho 6006 := by linear_combination r6311
    have hd2 : rho 5995 * rho 5995 = rho 6007 := by linear_combination r6312
    have hd3 : rho 6008 * (rho 5995 * rho 5995 + rho 5994 * rho 5994 * (-1)) = 2 * (rho 5994 * rho 5995) := by
      rw [hd0, hd1, hd2]
      linear_combination r6313
    have hd4 : rho 6009 * (2 - (rho 5995 * rho 5995 + rho 5994 * rho 5994 * (-1))) = rho 5995 * rho 5995 - rho 5994 * rho 5994 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6314
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX249 rho : Seg5.F), (seg5AccY249 rho : Seg5.F)⟩
      ⟨(rho 5994 : Seg5.F), (rho 5995 : Seg5.F)⟩
      ⟨(rho 6001 : Seg5.F), (rho 6002 : Seg5.F)⟩
      ⟨(seg5AccX250 rho : Seg5.F), (seg5AccY250 rho : Seg5.F)⟩
      ⟨(rho 6008 : Seg5.F), (rho 6009 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung249

theorem seg5_rows250 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow6315 rho ∧ Seg5.relationRow6316 rho ∧ Seg5.relationRow6317 rho ∧ Seg5.relationRow6318 rho ∧ Seg5.relationRow6319 rho ∧ Seg5.relationRow6320 rho ∧ Seg5.relationRow6321 rho ∧ Seg5.relationRow6322 rho ∧ Seg5.relationRow6323 rho ∧ Seg5.relationRow6324 rho ∧ Seg5.relationRow6325 rho ∧ Seg5.relationRow6326 rho ∧ Seg5.relationRow6327 rho ∧ Seg5.relationRow6328 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p78, p79
  ⟩
  unfold Seg5.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6315, r6316, r6317, r6318, r6319⟩
  unfold Seg5.relationPart79 at p79
  rcases p79 with ⟨r6320, r6321, r6322, r6323, r6324, r6325, r6326, r6327, r6328⟩
  exact ⟨r6315, r6316, r6317, r6318, r6319, r6320, r6321, r6322, r6323, r6324, r6325, r6326, r6327, r6328⟩

theorem seg5_rung250 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2665 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX250 rho : Seg5.F), (seg5AccY250 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 6008 : Seg5.F), (rho 6009 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX250 rho : Seg5.F), (seg5AccY250 rho : Seg5.F)⟩
        ⟨(rho 6008 : Seg5.F), (rho 6009 : Seg5.F)⟩
        ⟨(seg5AccX251 rho : Seg5.F), (seg5AccY251 rho : Seg5.F)⟩
        ⟨(rho 6022 : Seg5.F), (rho 6023 : Seg5.F)⟩ := by
  obtain ⟨r6315, r6316, r6317, r6318, r6319, r6320, r6321, r6322, r6323, r6324, r6325, r6326, r6327, r6328⟩ := seg5_rows250 rho h
  unfold Seg5.relationRow6315 at r6315
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6315
  unfold Seg5.relationRow6316 at r6316
  unfold Seg5.relationRow6317 at r6317
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6317
  unfold Seg5.relationRow6318 at r6318
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6318
  unfold Seg5.relationRow6319 at r6319
  unfold Seg5.relationRow6320 at r6320
  unfold Seg5.relationRow6321 at r6321
  unfold Seg5.relationRow6322 at r6322
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6322
  unfold Seg5.relationRow6323 at r6323
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6323
  unfold Seg5.relationRow6324 at r6324
  unfold Seg5.relationRow6325 at r6325
  unfold Seg5.relationRow6326 at r6326
  unfold Seg5.relationRow6327 at r6327
  unfold Seg5.relationRow6328 at r6328
  have hrung250 (bit : Bool) (hbit : rho 2665 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX250 rho : Seg5.F), (seg5AccY250 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 6008 : Seg5.F), (rho 6009 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX250 rho : Seg5.F), (seg5AccY250 rho : Seg5.F)⟩
        ⟨(rho 6008 : Seg5.F), (rho 6009 : Seg5.F)⟩
        ⟨(seg5AccX251 rho : Seg5.F), (seg5AccY251 rho : Seg5.F)⟩
        ⟨(rho 6022 : Seg5.F), (rho 6023 : Seg5.F)⟩ := by
    have hnextx : seg5AccX251 rho = seg5AccX250 rho + rho 6017 := by
      unfold seg5AccX251 seg5AccX250
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 100]
      ring
    have hnexty : seg5AccY251 rho = seg5AccY250 rho + rho 6018 := by
      unfold seg5AccY251 seg5AccY250
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 100]
      ring
    have hsum : seg5AccX250 rho + seg5AccY250 rho = rho 6010 := by
      unfold seg5AccX250 seg5AccY250
      linear_combination r6315
    have ha0 : (rho 6008 + rho 6009) * (seg5AccX250 rho + seg5AccY250 rho) = rho 6011 := by
      rw [hsum]
      linear_combination r6316
    have ha1 : rho 6009 * seg5AccX250 rho = rho 6012 := by
      unfold seg5AccX250
      linear_combination r6317
    have ha2 : rho 6008 * seg5AccY250 rho = rho 6013 := by
      unfold seg5AccY250
      linear_combination r6318
    have ha3 : 3021 * rho 6012 * rho 6013 = rho 6014 := by
      linear_combination r6319
    have ha4 : rho 6015 * (1 + rho 6014) = rho 6012 + rho 6013 := by
      linear_combination r6320
    have ha5 : rho 6016 * (1 - rho 6014) = rho 6011 - rho 6012 - rho 6013 := by
      linear_combination r6321
    have haddx :
        rho 6015 * (1 + 3021 * (rho 6009 * seg5AccX250 rho) * (rho 6008 * seg5AccY250 rho)) =
          rho 6009 * seg5AccX250 rho + rho 6008 * seg5AccY250 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 6016 * (1 - 3021 * (rho 6009 * seg5AccX250 rho) * (rho 6008 * seg5AccY250 rho)) =
          (-1) * (rho 6009 * seg5AccX250 rho) - rho 6008 * seg5AccY250 rho +
            (seg5AccY250 rho - seg5AccX250 rho * (-1)) * (rho 6008 + rho 6009) := by
      rw [ha1, ha2, ha3]
      calc
        rho 6016 * (1 - rho 6014) = rho 6011 - rho 6012 - rho 6013 := ha5
        _ = (-1) * rho 6012 - rho 6013 + (seg5AccY250 rho - seg5AccX250 rho * (-1)) * (rho 6008 + rho 6009) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX251 rho = seg5AccX250 rho - Bool.toZMod bit * (seg5AccX250 rho - rho 6015) := by
      have hd : rho 6017 = Bool.toZMod bit * (rho 6015 - seg5AccX250 rho) := by
        rw [← hbit]
        unfold seg5AccX250
        linear_combination -r6322
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY251 rho = seg5AccY250 rho - Bool.toZMod bit * (seg5AccY250 rho - rho 6016) := by
      have hd : rho 6018 = Bool.toZMod bit * (rho 6016 - seg5AccY250 rho) := by
        rw [← hbit]
        unfold seg5AccY250
        linear_combination -r6323
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 6008 * rho 6009 = rho 6019 := by linear_combination r6324
    have hd1 : rho 6008 * rho 6008 = rho 6020 := by linear_combination r6325
    have hd2 : rho 6009 * rho 6009 = rho 6021 := by linear_combination r6326
    have hd3 : rho 6022 * (rho 6009 * rho 6009 + rho 6008 * rho 6008 * (-1)) = 2 * (rho 6008 * rho 6009) := by
      rw [hd0, hd1, hd2]
      linear_combination r6327
    have hd4 : rho 6023 * (2 - (rho 6009 * rho 6009 + rho 6008 * rho 6008 * (-1))) = rho 6009 * rho 6009 - rho 6008 * rho 6008 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6328
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX250 rho : Seg5.F), (seg5AccY250 rho : Seg5.F)⟩
      ⟨(rho 6008 : Seg5.F), (rho 6009 : Seg5.F)⟩
      ⟨(rho 6015 : Seg5.F), (rho 6016 : Seg5.F)⟩
      ⟨(seg5AccX251 rho : Seg5.F), (seg5AccY251 rho : Seg5.F)⟩
      ⟨(rho 6022 : Seg5.F), (rho 6023 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung250

theorem seg5_hstep_c22 (rho : Nat -> Seg5.F) (h : Seg5.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (2415 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 242 ≤ i → i < 251 →
      EdwardsBridge.onCurve (seg5LadderAccState rho i) →
      EdwardsBridge.onCurve (seg5LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg5LadderAccState rho i) (seg5LadderCurState rho i)
        (seg5LadderAccState rho (i + 1)) (seg5LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg5_rung242 rho h bits[242]! (hbitAt 242 (by omega)) hacc hcur
  · exact seg5_rung243 rho h bits[243]! (hbitAt 243 (by omega)) hacc hcur
  · exact seg5_rung244 rho h bits[244]! (hbitAt 244 (by omega)) hacc hcur
  · exact seg5_rung245 rho h bits[245]! (hbitAt 245 (by omega)) hacc hcur
  · exact seg5_rung246 rho h bits[246]! (hbitAt 246 (by omega)) hacc hcur
  · exact seg5_rung247 rho h bits[247]! (hbitAt 247 (by omega)) hacc hcur
  · exact seg5_rung248 rho h bits[248]! (hbitAt 248 (by omega)) hacc hcur
  · exact seg5_rung249 rho h bits[249]! (hbitAt 249 (by omega)) hacc hcur
  · exact seg5_rung250 rho h bits[250]! (hbitAt 250 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
