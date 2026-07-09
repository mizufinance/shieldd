import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg5_rows176 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5279 rho ∧ Seg5.relationRow5280 rho ∧ Seg5.relationRow5281 rho ∧ Seg5.relationRow5282 rho ∧ Seg5.relationRow5283 rho ∧ Seg5.relationRow5284 rho ∧ Seg5.relationRow5285 rho ∧ Seg5.relationRow5286 rho ∧ Seg5.relationRow5287 rho ∧ Seg5.relationRow5288 rho ∧ Seg5.relationRow5289 rho ∧ Seg5.relationRow5290 rho ∧ Seg5.relationRow5291 rho ∧ Seg5.relationRow5292 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p65, p66, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5279⟩
  unfold Seg5.relationPart66 at p66
  rcases p66 with ⟨r5280, r5281, r5282, r5283, r5284, r5285, r5286, r5287, r5288, r5289, r5290, r5291, r5292, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5279, r5280, r5281, r5282, r5283, r5284, r5285, r5286, r5287, r5288, r5289, r5290, r5291, r5292⟩

theorem seg5_rung176 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2591 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX176 rho : Seg5.F), (seg5AccY176 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4972 : Seg5.F), (rho 4973 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX176 rho : Seg5.F), (seg5AccY176 rho : Seg5.F)⟩
        ⟨(rho 4972 : Seg5.F), (rho 4973 : Seg5.F)⟩
        ⟨(seg5AccX177 rho : Seg5.F), (seg5AccY177 rho : Seg5.F)⟩
        ⟨(rho 4986 : Seg5.F), (rho 4987 : Seg5.F)⟩ := by
  obtain ⟨r5279, r5280, r5281, r5282, r5283, r5284, r5285, r5286, r5287, r5288, r5289, r5290, r5291, r5292⟩ := seg5_rows176 rho h
  unfold Seg5.relationRow5279 at r5279
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5279
  unfold Seg5.relationRow5280 at r5280
  unfold Seg5.relationRow5281 at r5281
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5281
  unfold Seg5.relationRow5282 at r5282
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5282
  unfold Seg5.relationRow5283 at r5283
  unfold Seg5.relationRow5284 at r5284
  unfold Seg5.relationRow5285 at r5285
  unfold Seg5.relationRow5286 at r5286
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5286
  unfold Seg5.relationRow5287 at r5287
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5287
  unfold Seg5.relationRow5288 at r5288
  unfold Seg5.relationRow5289 at r5289
  unfold Seg5.relationRow5290 at r5290
  unfold Seg5.relationRow5291 at r5291
  unfold Seg5.relationRow5292 at r5292
  have hrung176 (bit : Bool) (hbit : rho 2591 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX176 rho : Seg5.F), (seg5AccY176 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4972 : Seg5.F), (rho 4973 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX176 rho : Seg5.F), (seg5AccY176 rho : Seg5.F)⟩
        ⟨(rho 4972 : Seg5.F), (rho 4973 : Seg5.F)⟩
        ⟨(seg5AccX177 rho : Seg5.F), (seg5AccY177 rho : Seg5.F)⟩
        ⟨(rho 4986 : Seg5.F), (rho 4987 : Seg5.F)⟩ := by
    have hnextx : seg5AccX177 rho = seg5AccX176 rho + rho 4981 := by
      unfold seg5AccX177 seg5AccX176
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 26]
      ring
    have hnexty : seg5AccY177 rho = seg5AccY176 rho + rho 4982 := by
      unfold seg5AccY177 seg5AccY176
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 26]
      ring
    have hsum : seg5AccX176 rho + seg5AccY176 rho = rho 4974 := by
      unfold seg5AccX176 seg5AccY176
      linear_combination r5279
    have ha0 : (rho 4972 + rho 4973) * (seg5AccX176 rho + seg5AccY176 rho) = rho 4975 := by
      rw [hsum]
      linear_combination r5280
    have ha1 : rho 4973 * seg5AccX176 rho = rho 4976 := by
      unfold seg5AccX176
      linear_combination r5281
    have ha2 : rho 4972 * seg5AccY176 rho = rho 4977 := by
      unfold seg5AccY176
      linear_combination r5282
    have ha3 : 3021 * rho 4976 * rho 4977 = rho 4978 := by
      linear_combination r5283
    have ha4 : rho 4979 * (1 + rho 4978) = rho 4976 + rho 4977 := by
      linear_combination r5284
    have ha5 : rho 4980 * (1 - rho 4978) = rho 4975 - rho 4976 - rho 4977 := by
      linear_combination r5285
    have haddx :
        rho 4979 * (1 + 3021 * (rho 4973 * seg5AccX176 rho) * (rho 4972 * seg5AccY176 rho)) =
          rho 4973 * seg5AccX176 rho + rho 4972 * seg5AccY176 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4980 * (1 - 3021 * (rho 4973 * seg5AccX176 rho) * (rho 4972 * seg5AccY176 rho)) =
          (-1) * (rho 4973 * seg5AccX176 rho) - rho 4972 * seg5AccY176 rho +
            (seg5AccY176 rho - seg5AccX176 rho * (-1)) * (rho 4972 + rho 4973) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4980 * (1 - rho 4978) = rho 4975 - rho 4976 - rho 4977 := ha5
        _ = (-1) * rho 4976 - rho 4977 + (seg5AccY176 rho - seg5AccX176 rho * (-1)) * (rho 4972 + rho 4973) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX177 rho = seg5AccX176 rho - Bool.toZMod bit * (seg5AccX176 rho - rho 4979) := by
      have hd : rho 4981 = Bool.toZMod bit * (rho 4979 - seg5AccX176 rho) := by
        rw [← hbit]
        unfold seg5AccX176
        linear_combination -r5286
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY177 rho = seg5AccY176 rho - Bool.toZMod bit * (seg5AccY176 rho - rho 4980) := by
      have hd : rho 4982 = Bool.toZMod bit * (rho 4980 - seg5AccY176 rho) := by
        rw [← hbit]
        unfold seg5AccY176
        linear_combination -r5287
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4972 * rho 4973 = rho 4983 := by linear_combination r5288
    have hd1 : rho 4972 * rho 4972 = rho 4984 := by linear_combination r5289
    have hd2 : rho 4973 * rho 4973 = rho 4985 := by linear_combination r5290
    have hd3 : rho 4986 * (rho 4973 * rho 4973 + rho 4972 * rho 4972 * (-1)) = 2 * (rho 4972 * rho 4973) := by
      rw [hd0, hd1, hd2]
      linear_combination r5291
    have hd4 : rho 4987 * (2 - (rho 4973 * rho 4973 + rho 4972 * rho 4972 * (-1))) = rho 4973 * rho 4973 - rho 4972 * rho 4972 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5292
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX176 rho : Seg5.F), (seg5AccY176 rho : Seg5.F)⟩
      ⟨(rho 4972 : Seg5.F), (rho 4973 : Seg5.F)⟩
      ⟨(rho 4979 : Seg5.F), (rho 4980 : Seg5.F)⟩
      ⟨(seg5AccX177 rho : Seg5.F), (seg5AccY177 rho : Seg5.F)⟩
      ⟨(rho 4986 : Seg5.F), (rho 4987 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung176

theorem seg5_rows177 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5293 rho ∧ Seg5.relationRow5294 rho ∧ Seg5.relationRow5295 rho ∧ Seg5.relationRow5296 rho ∧ Seg5.relationRow5297 rho ∧ Seg5.relationRow5298 rho ∧ Seg5.relationRow5299 rho ∧ Seg5.relationRow5300 rho ∧ Seg5.relationRow5301 rho ∧ Seg5.relationRow5302 rho ∧ Seg5.relationRow5303 rho ∧ Seg5.relationRow5304 rho ∧ Seg5.relationRow5305 rho ∧ Seg5.relationRow5306 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p66, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r5293, r5294, r5295, r5296, r5297, r5298, r5299, r5300, r5301, r5302, r5303, r5304, r5305, r5306, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5293, r5294, r5295, r5296, r5297, r5298, r5299, r5300, r5301, r5302, r5303, r5304, r5305, r5306⟩

theorem seg5_rung177 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2592 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX177 rho : Seg5.F), (seg5AccY177 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4986 : Seg5.F), (rho 4987 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX177 rho : Seg5.F), (seg5AccY177 rho : Seg5.F)⟩
        ⟨(rho 4986 : Seg5.F), (rho 4987 : Seg5.F)⟩
        ⟨(seg5AccX178 rho : Seg5.F), (seg5AccY178 rho : Seg5.F)⟩
        ⟨(rho 5000 : Seg5.F), (rho 5001 : Seg5.F)⟩ := by
  obtain ⟨r5293, r5294, r5295, r5296, r5297, r5298, r5299, r5300, r5301, r5302, r5303, r5304, r5305, r5306⟩ := seg5_rows177 rho h
  unfold Seg5.relationRow5293 at r5293
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5293
  unfold Seg5.relationRow5294 at r5294
  unfold Seg5.relationRow5295 at r5295
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5295
  unfold Seg5.relationRow5296 at r5296
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5296
  unfold Seg5.relationRow5297 at r5297
  unfold Seg5.relationRow5298 at r5298
  unfold Seg5.relationRow5299 at r5299
  unfold Seg5.relationRow5300 at r5300
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5300
  unfold Seg5.relationRow5301 at r5301
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5301
  unfold Seg5.relationRow5302 at r5302
  unfold Seg5.relationRow5303 at r5303
  unfold Seg5.relationRow5304 at r5304
  unfold Seg5.relationRow5305 at r5305
  unfold Seg5.relationRow5306 at r5306
  have hrung177 (bit : Bool) (hbit : rho 2592 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX177 rho : Seg5.F), (seg5AccY177 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4986 : Seg5.F), (rho 4987 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX177 rho : Seg5.F), (seg5AccY177 rho : Seg5.F)⟩
        ⟨(rho 4986 : Seg5.F), (rho 4987 : Seg5.F)⟩
        ⟨(seg5AccX178 rho : Seg5.F), (seg5AccY178 rho : Seg5.F)⟩
        ⟨(rho 5000 : Seg5.F), (rho 5001 : Seg5.F)⟩ := by
    have hnextx : seg5AccX178 rho = seg5AccX177 rho + rho 4995 := by
      unfold seg5AccX178 seg5AccX177
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 27]
      ring
    have hnexty : seg5AccY178 rho = seg5AccY177 rho + rho 4996 := by
      unfold seg5AccY178 seg5AccY177
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 27]
      ring
    have hsum : seg5AccX177 rho + seg5AccY177 rho = rho 4988 := by
      unfold seg5AccX177 seg5AccY177
      linear_combination r5293
    have ha0 : (rho 4986 + rho 4987) * (seg5AccX177 rho + seg5AccY177 rho) = rho 4989 := by
      rw [hsum]
      linear_combination r5294
    have ha1 : rho 4987 * seg5AccX177 rho = rho 4990 := by
      unfold seg5AccX177
      linear_combination r5295
    have ha2 : rho 4986 * seg5AccY177 rho = rho 4991 := by
      unfold seg5AccY177
      linear_combination r5296
    have ha3 : 3021 * rho 4990 * rho 4991 = rho 4992 := by
      linear_combination r5297
    have ha4 : rho 4993 * (1 + rho 4992) = rho 4990 + rho 4991 := by
      linear_combination r5298
    have ha5 : rho 4994 * (1 - rho 4992) = rho 4989 - rho 4990 - rho 4991 := by
      linear_combination r5299
    have haddx :
        rho 4993 * (1 + 3021 * (rho 4987 * seg5AccX177 rho) * (rho 4986 * seg5AccY177 rho)) =
          rho 4987 * seg5AccX177 rho + rho 4986 * seg5AccY177 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4994 * (1 - 3021 * (rho 4987 * seg5AccX177 rho) * (rho 4986 * seg5AccY177 rho)) =
          (-1) * (rho 4987 * seg5AccX177 rho) - rho 4986 * seg5AccY177 rho +
            (seg5AccY177 rho - seg5AccX177 rho * (-1)) * (rho 4986 + rho 4987) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4994 * (1 - rho 4992) = rho 4989 - rho 4990 - rho 4991 := ha5
        _ = (-1) * rho 4990 - rho 4991 + (seg5AccY177 rho - seg5AccX177 rho * (-1)) * (rho 4986 + rho 4987) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX178 rho = seg5AccX177 rho - Bool.toZMod bit * (seg5AccX177 rho - rho 4993) := by
      have hd : rho 4995 = Bool.toZMod bit * (rho 4993 - seg5AccX177 rho) := by
        rw [← hbit]
        unfold seg5AccX177
        linear_combination -r5300
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY178 rho = seg5AccY177 rho - Bool.toZMod bit * (seg5AccY177 rho - rho 4994) := by
      have hd : rho 4996 = Bool.toZMod bit * (rho 4994 - seg5AccY177 rho) := by
        rw [← hbit]
        unfold seg5AccY177
        linear_combination -r5301
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4986 * rho 4987 = rho 4997 := by linear_combination r5302
    have hd1 : rho 4986 * rho 4986 = rho 4998 := by linear_combination r5303
    have hd2 : rho 4987 * rho 4987 = rho 4999 := by linear_combination r5304
    have hd3 : rho 5000 * (rho 4987 * rho 4987 + rho 4986 * rho 4986 * (-1)) = 2 * (rho 4986 * rho 4987) := by
      rw [hd0, hd1, hd2]
      linear_combination r5305
    have hd4 : rho 5001 * (2 - (rho 4987 * rho 4987 + rho 4986 * rho 4986 * (-1))) = rho 4987 * rho 4987 - rho 4986 * rho 4986 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5306
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX177 rho : Seg5.F), (seg5AccY177 rho : Seg5.F)⟩
      ⟨(rho 4986 : Seg5.F), (rho 4987 : Seg5.F)⟩
      ⟨(rho 4993 : Seg5.F), (rho 4994 : Seg5.F)⟩
      ⟨(seg5AccX178 rho : Seg5.F), (seg5AccY178 rho : Seg5.F)⟩
      ⟨(rho 5000 : Seg5.F), (rho 5001 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung177

theorem seg5_rows178 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5307 rho ∧ Seg5.relationRow5308 rho ∧ Seg5.relationRow5309 rho ∧ Seg5.relationRow5310 rho ∧ Seg5.relationRow5311 rho ∧ Seg5.relationRow5312 rho ∧ Seg5.relationRow5313 rho ∧ Seg5.relationRow5314 rho ∧ Seg5.relationRow5315 rho ∧ Seg5.relationRow5316 rho ∧ Seg5.relationRow5317 rho ∧ Seg5.relationRow5318 rho ∧ Seg5.relationRow5319 rho ∧ Seg5.relationRow5320 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p66, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5307, r5308, r5309, r5310, r5311, r5312, r5313, r5314, r5315, r5316, r5317, r5318, r5319, r5320, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5307, r5308, r5309, r5310, r5311, r5312, r5313, r5314, r5315, r5316, r5317, r5318, r5319, r5320⟩

theorem seg5_rung178 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2593 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX178 rho : Seg5.F), (seg5AccY178 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5000 : Seg5.F), (rho 5001 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX178 rho : Seg5.F), (seg5AccY178 rho : Seg5.F)⟩
        ⟨(rho 5000 : Seg5.F), (rho 5001 : Seg5.F)⟩
        ⟨(seg5AccX179 rho : Seg5.F), (seg5AccY179 rho : Seg5.F)⟩
        ⟨(rho 5014 : Seg5.F), (rho 5015 : Seg5.F)⟩ := by
  obtain ⟨r5307, r5308, r5309, r5310, r5311, r5312, r5313, r5314, r5315, r5316, r5317, r5318, r5319, r5320⟩ := seg5_rows178 rho h
  unfold Seg5.relationRow5307 at r5307
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5307
  unfold Seg5.relationRow5308 at r5308
  unfold Seg5.relationRow5309 at r5309
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5309
  unfold Seg5.relationRow5310 at r5310
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5310
  unfold Seg5.relationRow5311 at r5311
  unfold Seg5.relationRow5312 at r5312
  unfold Seg5.relationRow5313 at r5313
  unfold Seg5.relationRow5314 at r5314
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5314
  unfold Seg5.relationRow5315 at r5315
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5315
  unfold Seg5.relationRow5316 at r5316
  unfold Seg5.relationRow5317 at r5317
  unfold Seg5.relationRow5318 at r5318
  unfold Seg5.relationRow5319 at r5319
  unfold Seg5.relationRow5320 at r5320
  have hrung178 (bit : Bool) (hbit : rho 2593 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX178 rho : Seg5.F), (seg5AccY178 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5000 : Seg5.F), (rho 5001 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX178 rho : Seg5.F), (seg5AccY178 rho : Seg5.F)⟩
        ⟨(rho 5000 : Seg5.F), (rho 5001 : Seg5.F)⟩
        ⟨(seg5AccX179 rho : Seg5.F), (seg5AccY179 rho : Seg5.F)⟩
        ⟨(rho 5014 : Seg5.F), (rho 5015 : Seg5.F)⟩ := by
    have hnextx : seg5AccX179 rho = seg5AccX178 rho + rho 5009 := by
      unfold seg5AccX179 seg5AccX178
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 28]
      ring
    have hnexty : seg5AccY179 rho = seg5AccY178 rho + rho 5010 := by
      unfold seg5AccY179 seg5AccY178
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 28]
      ring
    have hsum : seg5AccX178 rho + seg5AccY178 rho = rho 5002 := by
      unfold seg5AccX178 seg5AccY178
      linear_combination r5307
    have ha0 : (rho 5000 + rho 5001) * (seg5AccX178 rho + seg5AccY178 rho) = rho 5003 := by
      rw [hsum]
      linear_combination r5308
    have ha1 : rho 5001 * seg5AccX178 rho = rho 5004 := by
      unfold seg5AccX178
      linear_combination r5309
    have ha2 : rho 5000 * seg5AccY178 rho = rho 5005 := by
      unfold seg5AccY178
      linear_combination r5310
    have ha3 : 3021 * rho 5004 * rho 5005 = rho 5006 := by
      linear_combination r5311
    have ha4 : rho 5007 * (1 + rho 5006) = rho 5004 + rho 5005 := by
      linear_combination r5312
    have ha5 : rho 5008 * (1 - rho 5006) = rho 5003 - rho 5004 - rho 5005 := by
      linear_combination r5313
    have haddx :
        rho 5007 * (1 + 3021 * (rho 5001 * seg5AccX178 rho) * (rho 5000 * seg5AccY178 rho)) =
          rho 5001 * seg5AccX178 rho + rho 5000 * seg5AccY178 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5008 * (1 - 3021 * (rho 5001 * seg5AccX178 rho) * (rho 5000 * seg5AccY178 rho)) =
          (-1) * (rho 5001 * seg5AccX178 rho) - rho 5000 * seg5AccY178 rho +
            (seg5AccY178 rho - seg5AccX178 rho * (-1)) * (rho 5000 + rho 5001) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5008 * (1 - rho 5006) = rho 5003 - rho 5004 - rho 5005 := ha5
        _ = (-1) * rho 5004 - rho 5005 + (seg5AccY178 rho - seg5AccX178 rho * (-1)) * (rho 5000 + rho 5001) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX179 rho = seg5AccX178 rho - Bool.toZMod bit * (seg5AccX178 rho - rho 5007) := by
      have hd : rho 5009 = Bool.toZMod bit * (rho 5007 - seg5AccX178 rho) := by
        rw [← hbit]
        unfold seg5AccX178
        linear_combination -r5314
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY179 rho = seg5AccY178 rho - Bool.toZMod bit * (seg5AccY178 rho - rho 5008) := by
      have hd : rho 5010 = Bool.toZMod bit * (rho 5008 - seg5AccY178 rho) := by
        rw [← hbit]
        unfold seg5AccY178
        linear_combination -r5315
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5000 * rho 5001 = rho 5011 := by linear_combination r5316
    have hd1 : rho 5000 * rho 5000 = rho 5012 := by linear_combination r5317
    have hd2 : rho 5001 * rho 5001 = rho 5013 := by linear_combination r5318
    have hd3 : rho 5014 * (rho 5001 * rho 5001 + rho 5000 * rho 5000 * (-1)) = 2 * (rho 5000 * rho 5001) := by
      rw [hd0, hd1, hd2]
      linear_combination r5319
    have hd4 : rho 5015 * (2 - (rho 5001 * rho 5001 + rho 5000 * rho 5000 * (-1))) = rho 5001 * rho 5001 - rho 5000 * rho 5000 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5320
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX178 rho : Seg5.F), (seg5AccY178 rho : Seg5.F)⟩
      ⟨(rho 5000 : Seg5.F), (rho 5001 : Seg5.F)⟩
      ⟨(rho 5007 : Seg5.F), (rho 5008 : Seg5.F)⟩
      ⟨(seg5AccX179 rho : Seg5.F), (seg5AccY179 rho : Seg5.F)⟩
      ⟨(rho 5014 : Seg5.F), (rho 5015 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung178

theorem seg5_rows179 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5321 rho ∧ Seg5.relationRow5322 rho ∧ Seg5.relationRow5323 rho ∧ Seg5.relationRow5324 rho ∧ Seg5.relationRow5325 rho ∧ Seg5.relationRow5326 rho ∧ Seg5.relationRow5327 rho ∧ Seg5.relationRow5328 rho ∧ Seg5.relationRow5329 rho ∧ Seg5.relationRow5330 rho ∧ Seg5.relationRow5331 rho ∧ Seg5.relationRow5332 rho ∧ Seg5.relationRow5333 rho ∧ Seg5.relationRow5334 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p66, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5321, r5322, r5323, r5324, r5325, r5326, r5327, r5328, r5329, r5330, r5331, r5332, r5333, r5334, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5321, r5322, r5323, r5324, r5325, r5326, r5327, r5328, r5329, r5330, r5331, r5332, r5333, r5334⟩

theorem seg5_rung179 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2594 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX179 rho : Seg5.F), (seg5AccY179 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5014 : Seg5.F), (rho 5015 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX179 rho : Seg5.F), (seg5AccY179 rho : Seg5.F)⟩
        ⟨(rho 5014 : Seg5.F), (rho 5015 : Seg5.F)⟩
        ⟨(seg5AccX180 rho : Seg5.F), (seg5AccY180 rho : Seg5.F)⟩
        ⟨(rho 5028 : Seg5.F), (rho 5029 : Seg5.F)⟩ := by
  obtain ⟨r5321, r5322, r5323, r5324, r5325, r5326, r5327, r5328, r5329, r5330, r5331, r5332, r5333, r5334⟩ := seg5_rows179 rho h
  unfold Seg5.relationRow5321 at r5321
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5321
  unfold Seg5.relationRow5322 at r5322
  unfold Seg5.relationRow5323 at r5323
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5323
  unfold Seg5.relationRow5324 at r5324
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5324
  unfold Seg5.relationRow5325 at r5325
  unfold Seg5.relationRow5326 at r5326
  unfold Seg5.relationRow5327 at r5327
  unfold Seg5.relationRow5328 at r5328
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5328
  unfold Seg5.relationRow5329 at r5329
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5329
  unfold Seg5.relationRow5330 at r5330
  unfold Seg5.relationRow5331 at r5331
  unfold Seg5.relationRow5332 at r5332
  unfold Seg5.relationRow5333 at r5333
  unfold Seg5.relationRow5334 at r5334
  have hrung179 (bit : Bool) (hbit : rho 2594 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX179 rho : Seg5.F), (seg5AccY179 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5014 : Seg5.F), (rho 5015 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX179 rho : Seg5.F), (seg5AccY179 rho : Seg5.F)⟩
        ⟨(rho 5014 : Seg5.F), (rho 5015 : Seg5.F)⟩
        ⟨(seg5AccX180 rho : Seg5.F), (seg5AccY180 rho : Seg5.F)⟩
        ⟨(rho 5028 : Seg5.F), (rho 5029 : Seg5.F)⟩ := by
    have hnextx : seg5AccX180 rho = seg5AccX179 rho + rho 5023 := by
      unfold seg5AccX180 seg5AccX179
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 29]
      ring
    have hnexty : seg5AccY180 rho = seg5AccY179 rho + rho 5024 := by
      unfold seg5AccY180 seg5AccY179
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 29]
      ring
    have hsum : seg5AccX179 rho + seg5AccY179 rho = rho 5016 := by
      unfold seg5AccX179 seg5AccY179
      linear_combination r5321
    have ha0 : (rho 5014 + rho 5015) * (seg5AccX179 rho + seg5AccY179 rho) = rho 5017 := by
      rw [hsum]
      linear_combination r5322
    have ha1 : rho 5015 * seg5AccX179 rho = rho 5018 := by
      unfold seg5AccX179
      linear_combination r5323
    have ha2 : rho 5014 * seg5AccY179 rho = rho 5019 := by
      unfold seg5AccY179
      linear_combination r5324
    have ha3 : 3021 * rho 5018 * rho 5019 = rho 5020 := by
      linear_combination r5325
    have ha4 : rho 5021 * (1 + rho 5020) = rho 5018 + rho 5019 := by
      linear_combination r5326
    have ha5 : rho 5022 * (1 - rho 5020) = rho 5017 - rho 5018 - rho 5019 := by
      linear_combination r5327
    have haddx :
        rho 5021 * (1 + 3021 * (rho 5015 * seg5AccX179 rho) * (rho 5014 * seg5AccY179 rho)) =
          rho 5015 * seg5AccX179 rho + rho 5014 * seg5AccY179 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5022 * (1 - 3021 * (rho 5015 * seg5AccX179 rho) * (rho 5014 * seg5AccY179 rho)) =
          (-1) * (rho 5015 * seg5AccX179 rho) - rho 5014 * seg5AccY179 rho +
            (seg5AccY179 rho - seg5AccX179 rho * (-1)) * (rho 5014 + rho 5015) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5022 * (1 - rho 5020) = rho 5017 - rho 5018 - rho 5019 := ha5
        _ = (-1) * rho 5018 - rho 5019 + (seg5AccY179 rho - seg5AccX179 rho * (-1)) * (rho 5014 + rho 5015) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX180 rho = seg5AccX179 rho - Bool.toZMod bit * (seg5AccX179 rho - rho 5021) := by
      have hd : rho 5023 = Bool.toZMod bit * (rho 5021 - seg5AccX179 rho) := by
        rw [← hbit]
        unfold seg5AccX179
        linear_combination -r5328
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY180 rho = seg5AccY179 rho - Bool.toZMod bit * (seg5AccY179 rho - rho 5022) := by
      have hd : rho 5024 = Bool.toZMod bit * (rho 5022 - seg5AccY179 rho) := by
        rw [← hbit]
        unfold seg5AccY179
        linear_combination -r5329
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5014 * rho 5015 = rho 5025 := by linear_combination r5330
    have hd1 : rho 5014 * rho 5014 = rho 5026 := by linear_combination r5331
    have hd2 : rho 5015 * rho 5015 = rho 5027 := by linear_combination r5332
    have hd3 : rho 5028 * (rho 5015 * rho 5015 + rho 5014 * rho 5014 * (-1)) = 2 * (rho 5014 * rho 5015) := by
      rw [hd0, hd1, hd2]
      linear_combination r5333
    have hd4 : rho 5029 * (2 - (rho 5015 * rho 5015 + rho 5014 * rho 5014 * (-1))) = rho 5015 * rho 5015 - rho 5014 * rho 5014 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5334
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX179 rho : Seg5.F), (seg5AccY179 rho : Seg5.F)⟩
      ⟨(rho 5014 : Seg5.F), (rho 5015 : Seg5.F)⟩
      ⟨(rho 5021 : Seg5.F), (rho 5022 : Seg5.F)⟩
      ⟨(seg5AccX180 rho : Seg5.F), (seg5AccY180 rho : Seg5.F)⟩
      ⟨(rho 5028 : Seg5.F), (rho 5029 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung179

theorem seg5_rows180 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5335 rho ∧ Seg5.relationRow5336 rho ∧ Seg5.relationRow5337 rho ∧ Seg5.relationRow5338 rho ∧ Seg5.relationRow5339 rho ∧ Seg5.relationRow5340 rho ∧ Seg5.relationRow5341 rho ∧ Seg5.relationRow5342 rho ∧ Seg5.relationRow5343 rho ∧ Seg5.relationRow5344 rho ∧ Seg5.relationRow5345 rho ∧ Seg5.relationRow5346 rho ∧ Seg5.relationRow5347 rho ∧ Seg5.relationRow5348 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p66, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5335, r5336, r5337, r5338, r5339, r5340, r5341, r5342, r5343, r5344, r5345, r5346, r5347, r5348, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5335, r5336, r5337, r5338, r5339, r5340, r5341, r5342, r5343, r5344, r5345, r5346, r5347, r5348⟩

theorem seg5_rung180 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2595 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX180 rho : Seg5.F), (seg5AccY180 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5028 : Seg5.F), (rho 5029 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX180 rho : Seg5.F), (seg5AccY180 rho : Seg5.F)⟩
        ⟨(rho 5028 : Seg5.F), (rho 5029 : Seg5.F)⟩
        ⟨(seg5AccX181 rho : Seg5.F), (seg5AccY181 rho : Seg5.F)⟩
        ⟨(rho 5042 : Seg5.F), (rho 5043 : Seg5.F)⟩ := by
  obtain ⟨r5335, r5336, r5337, r5338, r5339, r5340, r5341, r5342, r5343, r5344, r5345, r5346, r5347, r5348⟩ := seg5_rows180 rho h
  unfold Seg5.relationRow5335 at r5335
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5335
  unfold Seg5.relationRow5336 at r5336
  unfold Seg5.relationRow5337 at r5337
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5337
  unfold Seg5.relationRow5338 at r5338
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5338
  unfold Seg5.relationRow5339 at r5339
  unfold Seg5.relationRow5340 at r5340
  unfold Seg5.relationRow5341 at r5341
  unfold Seg5.relationRow5342 at r5342
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5342
  unfold Seg5.relationRow5343 at r5343
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5343
  unfold Seg5.relationRow5344 at r5344
  unfold Seg5.relationRow5345 at r5345
  unfold Seg5.relationRow5346 at r5346
  unfold Seg5.relationRow5347 at r5347
  unfold Seg5.relationRow5348 at r5348
  have hrung180 (bit : Bool) (hbit : rho 2595 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX180 rho : Seg5.F), (seg5AccY180 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5028 : Seg5.F), (rho 5029 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX180 rho : Seg5.F), (seg5AccY180 rho : Seg5.F)⟩
        ⟨(rho 5028 : Seg5.F), (rho 5029 : Seg5.F)⟩
        ⟨(seg5AccX181 rho : Seg5.F), (seg5AccY181 rho : Seg5.F)⟩
        ⟨(rho 5042 : Seg5.F), (rho 5043 : Seg5.F)⟩ := by
    have hnextx : seg5AccX181 rho = seg5AccX180 rho + rho 5037 := by
      unfold seg5AccX181 seg5AccX180
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 30]
      ring
    have hnexty : seg5AccY181 rho = seg5AccY180 rho + rho 5038 := by
      unfold seg5AccY181 seg5AccY180
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 30]
      ring
    have hsum : seg5AccX180 rho + seg5AccY180 rho = rho 5030 := by
      unfold seg5AccX180 seg5AccY180
      linear_combination r5335
    have ha0 : (rho 5028 + rho 5029) * (seg5AccX180 rho + seg5AccY180 rho) = rho 5031 := by
      rw [hsum]
      linear_combination r5336
    have ha1 : rho 5029 * seg5AccX180 rho = rho 5032 := by
      unfold seg5AccX180
      linear_combination r5337
    have ha2 : rho 5028 * seg5AccY180 rho = rho 5033 := by
      unfold seg5AccY180
      linear_combination r5338
    have ha3 : 3021 * rho 5032 * rho 5033 = rho 5034 := by
      linear_combination r5339
    have ha4 : rho 5035 * (1 + rho 5034) = rho 5032 + rho 5033 := by
      linear_combination r5340
    have ha5 : rho 5036 * (1 - rho 5034) = rho 5031 - rho 5032 - rho 5033 := by
      linear_combination r5341
    have haddx :
        rho 5035 * (1 + 3021 * (rho 5029 * seg5AccX180 rho) * (rho 5028 * seg5AccY180 rho)) =
          rho 5029 * seg5AccX180 rho + rho 5028 * seg5AccY180 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5036 * (1 - 3021 * (rho 5029 * seg5AccX180 rho) * (rho 5028 * seg5AccY180 rho)) =
          (-1) * (rho 5029 * seg5AccX180 rho) - rho 5028 * seg5AccY180 rho +
            (seg5AccY180 rho - seg5AccX180 rho * (-1)) * (rho 5028 + rho 5029) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5036 * (1 - rho 5034) = rho 5031 - rho 5032 - rho 5033 := ha5
        _ = (-1) * rho 5032 - rho 5033 + (seg5AccY180 rho - seg5AccX180 rho * (-1)) * (rho 5028 + rho 5029) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX181 rho = seg5AccX180 rho - Bool.toZMod bit * (seg5AccX180 rho - rho 5035) := by
      have hd : rho 5037 = Bool.toZMod bit * (rho 5035 - seg5AccX180 rho) := by
        rw [← hbit]
        unfold seg5AccX180
        linear_combination -r5342
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY181 rho = seg5AccY180 rho - Bool.toZMod bit * (seg5AccY180 rho - rho 5036) := by
      have hd : rho 5038 = Bool.toZMod bit * (rho 5036 - seg5AccY180 rho) := by
        rw [← hbit]
        unfold seg5AccY180
        linear_combination -r5343
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5028 * rho 5029 = rho 5039 := by linear_combination r5344
    have hd1 : rho 5028 * rho 5028 = rho 5040 := by linear_combination r5345
    have hd2 : rho 5029 * rho 5029 = rho 5041 := by linear_combination r5346
    have hd3 : rho 5042 * (rho 5029 * rho 5029 + rho 5028 * rho 5028 * (-1)) = 2 * (rho 5028 * rho 5029) := by
      rw [hd0, hd1, hd2]
      linear_combination r5347
    have hd4 : rho 5043 * (2 - (rho 5029 * rho 5029 + rho 5028 * rho 5028 * (-1))) = rho 5029 * rho 5029 - rho 5028 * rho 5028 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5348
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX180 rho : Seg5.F), (seg5AccY180 rho : Seg5.F)⟩
      ⟨(rho 5028 : Seg5.F), (rho 5029 : Seg5.F)⟩
      ⟨(rho 5035 : Seg5.F), (rho 5036 : Seg5.F)⟩
      ⟨(seg5AccX181 rho : Seg5.F), (seg5AccY181 rho : Seg5.F)⟩
      ⟨(rho 5042 : Seg5.F), (rho 5043 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung180

theorem seg5_rows181 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5349 rho ∧ Seg5.relationRow5350 rho ∧ Seg5.relationRow5351 rho ∧ Seg5.relationRow5352 rho ∧ Seg5.relationRow5353 rho ∧ Seg5.relationRow5354 rho ∧ Seg5.relationRow5355 rho ∧ Seg5.relationRow5356 rho ∧ Seg5.relationRow5357 rho ∧ Seg5.relationRow5358 rho ∧ Seg5.relationRow5359 rho ∧ Seg5.relationRow5360 rho ∧ Seg5.relationRow5361 rho ∧ Seg5.relationRow5362 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p66, p67, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5349, r5350, r5351, r5352, r5353, r5354, r5355, r5356, r5357, r5358, r5359⟩
  unfold Seg5.relationPart67 at p67
  rcases p67 with ⟨r5360, r5361, r5362, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5349, r5350, r5351, r5352, r5353, r5354, r5355, r5356, r5357, r5358, r5359, r5360, r5361, r5362⟩

theorem seg5_rung181 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2596 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX181 rho : Seg5.F), (seg5AccY181 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5042 : Seg5.F), (rho 5043 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX181 rho : Seg5.F), (seg5AccY181 rho : Seg5.F)⟩
        ⟨(rho 5042 : Seg5.F), (rho 5043 : Seg5.F)⟩
        ⟨(seg5AccX182 rho : Seg5.F), (seg5AccY182 rho : Seg5.F)⟩
        ⟨(rho 5056 : Seg5.F), (rho 5057 : Seg5.F)⟩ := by
  obtain ⟨r5349, r5350, r5351, r5352, r5353, r5354, r5355, r5356, r5357, r5358, r5359, r5360, r5361, r5362⟩ := seg5_rows181 rho h
  unfold Seg5.relationRow5349 at r5349
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5349
  unfold Seg5.relationRow5350 at r5350
  unfold Seg5.relationRow5351 at r5351
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5351
  unfold Seg5.relationRow5352 at r5352
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5352
  unfold Seg5.relationRow5353 at r5353
  unfold Seg5.relationRow5354 at r5354
  unfold Seg5.relationRow5355 at r5355
  unfold Seg5.relationRow5356 at r5356
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5356
  unfold Seg5.relationRow5357 at r5357
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5357
  unfold Seg5.relationRow5358 at r5358
  unfold Seg5.relationRow5359 at r5359
  unfold Seg5.relationRow5360 at r5360
  unfold Seg5.relationRow5361 at r5361
  unfold Seg5.relationRow5362 at r5362
  have hrung181 (bit : Bool) (hbit : rho 2596 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX181 rho : Seg5.F), (seg5AccY181 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5042 : Seg5.F), (rho 5043 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX181 rho : Seg5.F), (seg5AccY181 rho : Seg5.F)⟩
        ⟨(rho 5042 : Seg5.F), (rho 5043 : Seg5.F)⟩
        ⟨(seg5AccX182 rho : Seg5.F), (seg5AccY182 rho : Seg5.F)⟩
        ⟨(rho 5056 : Seg5.F), (rho 5057 : Seg5.F)⟩ := by
    have hnextx : seg5AccX182 rho = seg5AccX181 rho + rho 5051 := by
      unfold seg5AccX182 seg5AccX181
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 31]
      ring
    have hnexty : seg5AccY182 rho = seg5AccY181 rho + rho 5052 := by
      unfold seg5AccY182 seg5AccY181
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 31]
      ring
    have hsum : seg5AccX181 rho + seg5AccY181 rho = rho 5044 := by
      unfold seg5AccX181 seg5AccY181
      linear_combination r5349
    have ha0 : (rho 5042 + rho 5043) * (seg5AccX181 rho + seg5AccY181 rho) = rho 5045 := by
      rw [hsum]
      linear_combination r5350
    have ha1 : rho 5043 * seg5AccX181 rho = rho 5046 := by
      unfold seg5AccX181
      linear_combination r5351
    have ha2 : rho 5042 * seg5AccY181 rho = rho 5047 := by
      unfold seg5AccY181
      linear_combination r5352
    have ha3 : 3021 * rho 5046 * rho 5047 = rho 5048 := by
      linear_combination r5353
    have ha4 : rho 5049 * (1 + rho 5048) = rho 5046 + rho 5047 := by
      linear_combination r5354
    have ha5 : rho 5050 * (1 - rho 5048) = rho 5045 - rho 5046 - rho 5047 := by
      linear_combination r5355
    have haddx :
        rho 5049 * (1 + 3021 * (rho 5043 * seg5AccX181 rho) * (rho 5042 * seg5AccY181 rho)) =
          rho 5043 * seg5AccX181 rho + rho 5042 * seg5AccY181 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5050 * (1 - 3021 * (rho 5043 * seg5AccX181 rho) * (rho 5042 * seg5AccY181 rho)) =
          (-1) * (rho 5043 * seg5AccX181 rho) - rho 5042 * seg5AccY181 rho +
            (seg5AccY181 rho - seg5AccX181 rho * (-1)) * (rho 5042 + rho 5043) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5050 * (1 - rho 5048) = rho 5045 - rho 5046 - rho 5047 := ha5
        _ = (-1) * rho 5046 - rho 5047 + (seg5AccY181 rho - seg5AccX181 rho * (-1)) * (rho 5042 + rho 5043) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX182 rho = seg5AccX181 rho - Bool.toZMod bit * (seg5AccX181 rho - rho 5049) := by
      have hd : rho 5051 = Bool.toZMod bit * (rho 5049 - seg5AccX181 rho) := by
        rw [← hbit]
        unfold seg5AccX181
        linear_combination -r5356
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY182 rho = seg5AccY181 rho - Bool.toZMod bit * (seg5AccY181 rho - rho 5050) := by
      have hd : rho 5052 = Bool.toZMod bit * (rho 5050 - seg5AccY181 rho) := by
        rw [← hbit]
        unfold seg5AccY181
        linear_combination -r5357
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5042 * rho 5043 = rho 5053 := by linear_combination r5358
    have hd1 : rho 5042 * rho 5042 = rho 5054 := by linear_combination r5359
    have hd2 : rho 5043 * rho 5043 = rho 5055 := by linear_combination r5360
    have hd3 : rho 5056 * (rho 5043 * rho 5043 + rho 5042 * rho 5042 * (-1)) = 2 * (rho 5042 * rho 5043) := by
      rw [hd0, hd1, hd2]
      linear_combination r5361
    have hd4 : rho 5057 * (2 - (rho 5043 * rho 5043 + rho 5042 * rho 5042 * (-1))) = rho 5043 * rho 5043 - rho 5042 * rho 5042 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5362
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX181 rho : Seg5.F), (seg5AccY181 rho : Seg5.F)⟩
      ⟨(rho 5042 : Seg5.F), (rho 5043 : Seg5.F)⟩
      ⟨(rho 5049 : Seg5.F), (rho 5050 : Seg5.F)⟩
      ⟨(seg5AccX182 rho : Seg5.F), (seg5AccY182 rho : Seg5.F)⟩
      ⟨(rho 5056 : Seg5.F), (rho 5057 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung181

theorem seg5_rows182 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5363 rho ∧ Seg5.relationRow5364 rho ∧ Seg5.relationRow5365 rho ∧ Seg5.relationRow5366 rho ∧ Seg5.relationRow5367 rho ∧ Seg5.relationRow5368 rho ∧ Seg5.relationRow5369 rho ∧ Seg5.relationRow5370 rho ∧ Seg5.relationRow5371 rho ∧ Seg5.relationRow5372 rho ∧ Seg5.relationRow5373 rho ∧ Seg5.relationRow5374 rho ∧ Seg5.relationRow5375 rho ∧ Seg5.relationRow5376 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p67, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart67 at p67
  rcases p67 with ⟨_, _, _, r5363, r5364, r5365, r5366, r5367, r5368, r5369, r5370, r5371, r5372, r5373, r5374, r5375, r5376, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5363, r5364, r5365, r5366, r5367, r5368, r5369, r5370, r5371, r5372, r5373, r5374, r5375, r5376⟩

theorem seg5_rung182 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2597 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX182 rho : Seg5.F), (seg5AccY182 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5056 : Seg5.F), (rho 5057 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX182 rho : Seg5.F), (seg5AccY182 rho : Seg5.F)⟩
        ⟨(rho 5056 : Seg5.F), (rho 5057 : Seg5.F)⟩
        ⟨(seg5AccX183 rho : Seg5.F), (seg5AccY183 rho : Seg5.F)⟩
        ⟨(rho 5070 : Seg5.F), (rho 5071 : Seg5.F)⟩ := by
  obtain ⟨r5363, r5364, r5365, r5366, r5367, r5368, r5369, r5370, r5371, r5372, r5373, r5374, r5375, r5376⟩ := seg5_rows182 rho h
  unfold Seg5.relationRow5363 at r5363
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5363
  unfold Seg5.relationRow5364 at r5364
  unfold Seg5.relationRow5365 at r5365
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5365
  unfold Seg5.relationRow5366 at r5366
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5366
  unfold Seg5.relationRow5367 at r5367
  unfold Seg5.relationRow5368 at r5368
  unfold Seg5.relationRow5369 at r5369
  unfold Seg5.relationRow5370 at r5370
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5370
  unfold Seg5.relationRow5371 at r5371
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5371
  unfold Seg5.relationRow5372 at r5372
  unfold Seg5.relationRow5373 at r5373
  unfold Seg5.relationRow5374 at r5374
  unfold Seg5.relationRow5375 at r5375
  unfold Seg5.relationRow5376 at r5376
  have hrung182 (bit : Bool) (hbit : rho 2597 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX182 rho : Seg5.F), (seg5AccY182 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5056 : Seg5.F), (rho 5057 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX182 rho : Seg5.F), (seg5AccY182 rho : Seg5.F)⟩
        ⟨(rho 5056 : Seg5.F), (rho 5057 : Seg5.F)⟩
        ⟨(seg5AccX183 rho : Seg5.F), (seg5AccY183 rho : Seg5.F)⟩
        ⟨(rho 5070 : Seg5.F), (rho 5071 : Seg5.F)⟩ := by
    have hnextx : seg5AccX183 rho = seg5AccX182 rho + rho 5065 := by
      unfold seg5AccX183 seg5AccX182
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 32]
      ring
    have hnexty : seg5AccY183 rho = seg5AccY182 rho + rho 5066 := by
      unfold seg5AccY183 seg5AccY182
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 32]
      ring
    have hsum : seg5AccX182 rho + seg5AccY182 rho = rho 5058 := by
      unfold seg5AccX182 seg5AccY182
      linear_combination r5363
    have ha0 : (rho 5056 + rho 5057) * (seg5AccX182 rho + seg5AccY182 rho) = rho 5059 := by
      rw [hsum]
      linear_combination r5364
    have ha1 : rho 5057 * seg5AccX182 rho = rho 5060 := by
      unfold seg5AccX182
      linear_combination r5365
    have ha2 : rho 5056 * seg5AccY182 rho = rho 5061 := by
      unfold seg5AccY182
      linear_combination r5366
    have ha3 : 3021 * rho 5060 * rho 5061 = rho 5062 := by
      linear_combination r5367
    have ha4 : rho 5063 * (1 + rho 5062) = rho 5060 + rho 5061 := by
      linear_combination r5368
    have ha5 : rho 5064 * (1 - rho 5062) = rho 5059 - rho 5060 - rho 5061 := by
      linear_combination r5369
    have haddx :
        rho 5063 * (1 + 3021 * (rho 5057 * seg5AccX182 rho) * (rho 5056 * seg5AccY182 rho)) =
          rho 5057 * seg5AccX182 rho + rho 5056 * seg5AccY182 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5064 * (1 - 3021 * (rho 5057 * seg5AccX182 rho) * (rho 5056 * seg5AccY182 rho)) =
          (-1) * (rho 5057 * seg5AccX182 rho) - rho 5056 * seg5AccY182 rho +
            (seg5AccY182 rho - seg5AccX182 rho * (-1)) * (rho 5056 + rho 5057) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5064 * (1 - rho 5062) = rho 5059 - rho 5060 - rho 5061 := ha5
        _ = (-1) * rho 5060 - rho 5061 + (seg5AccY182 rho - seg5AccX182 rho * (-1)) * (rho 5056 + rho 5057) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX183 rho = seg5AccX182 rho - Bool.toZMod bit * (seg5AccX182 rho - rho 5063) := by
      have hd : rho 5065 = Bool.toZMod bit * (rho 5063 - seg5AccX182 rho) := by
        rw [← hbit]
        unfold seg5AccX182
        linear_combination -r5370
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY183 rho = seg5AccY182 rho - Bool.toZMod bit * (seg5AccY182 rho - rho 5064) := by
      have hd : rho 5066 = Bool.toZMod bit * (rho 5064 - seg5AccY182 rho) := by
        rw [← hbit]
        unfold seg5AccY182
        linear_combination -r5371
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5056 * rho 5057 = rho 5067 := by linear_combination r5372
    have hd1 : rho 5056 * rho 5056 = rho 5068 := by linear_combination r5373
    have hd2 : rho 5057 * rho 5057 = rho 5069 := by linear_combination r5374
    have hd3 : rho 5070 * (rho 5057 * rho 5057 + rho 5056 * rho 5056 * (-1)) = 2 * (rho 5056 * rho 5057) := by
      rw [hd0, hd1, hd2]
      linear_combination r5375
    have hd4 : rho 5071 * (2 - (rho 5057 * rho 5057 + rho 5056 * rho 5056 * (-1))) = rho 5057 * rho 5057 - rho 5056 * rho 5056 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5376
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX182 rho : Seg5.F), (seg5AccY182 rho : Seg5.F)⟩
      ⟨(rho 5056 : Seg5.F), (rho 5057 : Seg5.F)⟩
      ⟨(rho 5063 : Seg5.F), (rho 5064 : Seg5.F)⟩
      ⟨(seg5AccX183 rho : Seg5.F), (seg5AccY183 rho : Seg5.F)⟩
      ⟨(rho 5070 : Seg5.F), (rho 5071 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung182

theorem seg5_rows183 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5377 rho ∧ Seg5.relationRow5378 rho ∧ Seg5.relationRow5379 rho ∧ Seg5.relationRow5380 rho ∧ Seg5.relationRow5381 rho ∧ Seg5.relationRow5382 rho ∧ Seg5.relationRow5383 rho ∧ Seg5.relationRow5384 rho ∧ Seg5.relationRow5385 rho ∧ Seg5.relationRow5386 rho ∧ Seg5.relationRow5387 rho ∧ Seg5.relationRow5388 rho ∧ Seg5.relationRow5389 rho ∧ Seg5.relationRow5390 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p67, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5377, r5378, r5379, r5380, r5381, r5382, r5383, r5384, r5385, r5386, r5387, r5388, r5389, r5390, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5377, r5378, r5379, r5380, r5381, r5382, r5383, r5384, r5385, r5386, r5387, r5388, r5389, r5390⟩

theorem seg5_rung183 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2598 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX183 rho : Seg5.F), (seg5AccY183 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5070 : Seg5.F), (rho 5071 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX183 rho : Seg5.F), (seg5AccY183 rho : Seg5.F)⟩
        ⟨(rho 5070 : Seg5.F), (rho 5071 : Seg5.F)⟩
        ⟨(seg5AccX184 rho : Seg5.F), (seg5AccY184 rho : Seg5.F)⟩
        ⟨(rho 5084 : Seg5.F), (rho 5085 : Seg5.F)⟩ := by
  obtain ⟨r5377, r5378, r5379, r5380, r5381, r5382, r5383, r5384, r5385, r5386, r5387, r5388, r5389, r5390⟩ := seg5_rows183 rho h
  unfold Seg5.relationRow5377 at r5377
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5377
  unfold Seg5.relationRow5378 at r5378
  unfold Seg5.relationRow5379 at r5379
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5379
  unfold Seg5.relationRow5380 at r5380
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5380
  unfold Seg5.relationRow5381 at r5381
  unfold Seg5.relationRow5382 at r5382
  unfold Seg5.relationRow5383 at r5383
  unfold Seg5.relationRow5384 at r5384
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5384
  unfold Seg5.relationRow5385 at r5385
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5385
  unfold Seg5.relationRow5386 at r5386
  unfold Seg5.relationRow5387 at r5387
  unfold Seg5.relationRow5388 at r5388
  unfold Seg5.relationRow5389 at r5389
  unfold Seg5.relationRow5390 at r5390
  have hrung183 (bit : Bool) (hbit : rho 2598 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX183 rho : Seg5.F), (seg5AccY183 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5070 : Seg5.F), (rho 5071 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX183 rho : Seg5.F), (seg5AccY183 rho : Seg5.F)⟩
        ⟨(rho 5070 : Seg5.F), (rho 5071 : Seg5.F)⟩
        ⟨(seg5AccX184 rho : Seg5.F), (seg5AccY184 rho : Seg5.F)⟩
        ⟨(rho 5084 : Seg5.F), (rho 5085 : Seg5.F)⟩ := by
    have hnextx : seg5AccX184 rho = seg5AccX183 rho + rho 5079 := by
      unfold seg5AccX184 seg5AccX183
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 33]
      ring
    have hnexty : seg5AccY184 rho = seg5AccY183 rho + rho 5080 := by
      unfold seg5AccY184 seg5AccY183
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 33]
      ring
    have hsum : seg5AccX183 rho + seg5AccY183 rho = rho 5072 := by
      unfold seg5AccX183 seg5AccY183
      linear_combination r5377
    have ha0 : (rho 5070 + rho 5071) * (seg5AccX183 rho + seg5AccY183 rho) = rho 5073 := by
      rw [hsum]
      linear_combination r5378
    have ha1 : rho 5071 * seg5AccX183 rho = rho 5074 := by
      unfold seg5AccX183
      linear_combination r5379
    have ha2 : rho 5070 * seg5AccY183 rho = rho 5075 := by
      unfold seg5AccY183
      linear_combination r5380
    have ha3 : 3021 * rho 5074 * rho 5075 = rho 5076 := by
      linear_combination r5381
    have ha4 : rho 5077 * (1 + rho 5076) = rho 5074 + rho 5075 := by
      linear_combination r5382
    have ha5 : rho 5078 * (1 - rho 5076) = rho 5073 - rho 5074 - rho 5075 := by
      linear_combination r5383
    have haddx :
        rho 5077 * (1 + 3021 * (rho 5071 * seg5AccX183 rho) * (rho 5070 * seg5AccY183 rho)) =
          rho 5071 * seg5AccX183 rho + rho 5070 * seg5AccY183 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5078 * (1 - 3021 * (rho 5071 * seg5AccX183 rho) * (rho 5070 * seg5AccY183 rho)) =
          (-1) * (rho 5071 * seg5AccX183 rho) - rho 5070 * seg5AccY183 rho +
            (seg5AccY183 rho - seg5AccX183 rho * (-1)) * (rho 5070 + rho 5071) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5078 * (1 - rho 5076) = rho 5073 - rho 5074 - rho 5075 := ha5
        _ = (-1) * rho 5074 - rho 5075 + (seg5AccY183 rho - seg5AccX183 rho * (-1)) * (rho 5070 + rho 5071) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX184 rho = seg5AccX183 rho - Bool.toZMod bit * (seg5AccX183 rho - rho 5077) := by
      have hd : rho 5079 = Bool.toZMod bit * (rho 5077 - seg5AccX183 rho) := by
        rw [← hbit]
        unfold seg5AccX183
        linear_combination -r5384
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY184 rho = seg5AccY183 rho - Bool.toZMod bit * (seg5AccY183 rho - rho 5078) := by
      have hd : rho 5080 = Bool.toZMod bit * (rho 5078 - seg5AccY183 rho) := by
        rw [← hbit]
        unfold seg5AccY183
        linear_combination -r5385
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5070 * rho 5071 = rho 5081 := by linear_combination r5386
    have hd1 : rho 5070 * rho 5070 = rho 5082 := by linear_combination r5387
    have hd2 : rho 5071 * rho 5071 = rho 5083 := by linear_combination r5388
    have hd3 : rho 5084 * (rho 5071 * rho 5071 + rho 5070 * rho 5070 * (-1)) = 2 * (rho 5070 * rho 5071) := by
      rw [hd0, hd1, hd2]
      linear_combination r5389
    have hd4 : rho 5085 * (2 - (rho 5071 * rho 5071 + rho 5070 * rho 5070 * (-1))) = rho 5071 * rho 5071 - rho 5070 * rho 5070 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5390
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX183 rho : Seg5.F), (seg5AccY183 rho : Seg5.F)⟩
      ⟨(rho 5070 : Seg5.F), (rho 5071 : Seg5.F)⟩
      ⟨(rho 5077 : Seg5.F), (rho 5078 : Seg5.F)⟩
      ⟨(seg5AccX184 rho : Seg5.F), (seg5AccY184 rho : Seg5.F)⟩
      ⟨(rho 5084 : Seg5.F), (rho 5085 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung183

theorem seg5_rows184 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5391 rho ∧ Seg5.relationRow5392 rho ∧ Seg5.relationRow5393 rho ∧ Seg5.relationRow5394 rho ∧ Seg5.relationRow5395 rho ∧ Seg5.relationRow5396 rho ∧ Seg5.relationRow5397 rho ∧ Seg5.relationRow5398 rho ∧ Seg5.relationRow5399 rho ∧ Seg5.relationRow5400 rho ∧ Seg5.relationRow5401 rho ∧ Seg5.relationRow5402 rho ∧ Seg5.relationRow5403 rho ∧ Seg5.relationRow5404 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p67, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5391, r5392, r5393, r5394, r5395, r5396, r5397, r5398, r5399, r5400, r5401, r5402, r5403, r5404, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5391, r5392, r5393, r5394, r5395, r5396, r5397, r5398, r5399, r5400, r5401, r5402, r5403, r5404⟩

theorem seg5_rung184 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2599 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX184 rho : Seg5.F), (seg5AccY184 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5084 : Seg5.F), (rho 5085 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX184 rho : Seg5.F), (seg5AccY184 rho : Seg5.F)⟩
        ⟨(rho 5084 : Seg5.F), (rho 5085 : Seg5.F)⟩
        ⟨(seg5AccX185 rho : Seg5.F), (seg5AccY185 rho : Seg5.F)⟩
        ⟨(rho 5098 : Seg5.F), (rho 5099 : Seg5.F)⟩ := by
  obtain ⟨r5391, r5392, r5393, r5394, r5395, r5396, r5397, r5398, r5399, r5400, r5401, r5402, r5403, r5404⟩ := seg5_rows184 rho h
  unfold Seg5.relationRow5391 at r5391
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5391
  unfold Seg5.relationRow5392 at r5392
  unfold Seg5.relationRow5393 at r5393
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5393
  unfold Seg5.relationRow5394 at r5394
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5394
  unfold Seg5.relationRow5395 at r5395
  unfold Seg5.relationRow5396 at r5396
  unfold Seg5.relationRow5397 at r5397
  unfold Seg5.relationRow5398 at r5398
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5398
  unfold Seg5.relationRow5399 at r5399
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5399
  unfold Seg5.relationRow5400 at r5400
  unfold Seg5.relationRow5401 at r5401
  unfold Seg5.relationRow5402 at r5402
  unfold Seg5.relationRow5403 at r5403
  unfold Seg5.relationRow5404 at r5404
  have hrung184 (bit : Bool) (hbit : rho 2599 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX184 rho : Seg5.F), (seg5AccY184 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5084 : Seg5.F), (rho 5085 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX184 rho : Seg5.F), (seg5AccY184 rho : Seg5.F)⟩
        ⟨(rho 5084 : Seg5.F), (rho 5085 : Seg5.F)⟩
        ⟨(seg5AccX185 rho : Seg5.F), (seg5AccY185 rho : Seg5.F)⟩
        ⟨(rho 5098 : Seg5.F), (rho 5099 : Seg5.F)⟩ := by
    have hnextx : seg5AccX185 rho = seg5AccX184 rho + rho 5093 := by
      unfold seg5AccX185 seg5AccX184
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 34]
      ring
    have hnexty : seg5AccY185 rho = seg5AccY184 rho + rho 5094 := by
      unfold seg5AccY185 seg5AccY184
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 34]
      ring
    have hsum : seg5AccX184 rho + seg5AccY184 rho = rho 5086 := by
      unfold seg5AccX184 seg5AccY184
      linear_combination r5391
    have ha0 : (rho 5084 + rho 5085) * (seg5AccX184 rho + seg5AccY184 rho) = rho 5087 := by
      rw [hsum]
      linear_combination r5392
    have ha1 : rho 5085 * seg5AccX184 rho = rho 5088 := by
      unfold seg5AccX184
      linear_combination r5393
    have ha2 : rho 5084 * seg5AccY184 rho = rho 5089 := by
      unfold seg5AccY184
      linear_combination r5394
    have ha3 : 3021 * rho 5088 * rho 5089 = rho 5090 := by
      linear_combination r5395
    have ha4 : rho 5091 * (1 + rho 5090) = rho 5088 + rho 5089 := by
      linear_combination r5396
    have ha5 : rho 5092 * (1 - rho 5090) = rho 5087 - rho 5088 - rho 5089 := by
      linear_combination r5397
    have haddx :
        rho 5091 * (1 + 3021 * (rho 5085 * seg5AccX184 rho) * (rho 5084 * seg5AccY184 rho)) =
          rho 5085 * seg5AccX184 rho + rho 5084 * seg5AccY184 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5092 * (1 - 3021 * (rho 5085 * seg5AccX184 rho) * (rho 5084 * seg5AccY184 rho)) =
          (-1) * (rho 5085 * seg5AccX184 rho) - rho 5084 * seg5AccY184 rho +
            (seg5AccY184 rho - seg5AccX184 rho * (-1)) * (rho 5084 + rho 5085) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5092 * (1 - rho 5090) = rho 5087 - rho 5088 - rho 5089 := ha5
        _ = (-1) * rho 5088 - rho 5089 + (seg5AccY184 rho - seg5AccX184 rho * (-1)) * (rho 5084 + rho 5085) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX185 rho = seg5AccX184 rho - Bool.toZMod bit * (seg5AccX184 rho - rho 5091) := by
      have hd : rho 5093 = Bool.toZMod bit * (rho 5091 - seg5AccX184 rho) := by
        rw [← hbit]
        unfold seg5AccX184
        linear_combination -r5398
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY185 rho = seg5AccY184 rho - Bool.toZMod bit * (seg5AccY184 rho - rho 5092) := by
      have hd : rho 5094 = Bool.toZMod bit * (rho 5092 - seg5AccY184 rho) := by
        rw [← hbit]
        unfold seg5AccY184
        linear_combination -r5399
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5084 * rho 5085 = rho 5095 := by linear_combination r5400
    have hd1 : rho 5084 * rho 5084 = rho 5096 := by linear_combination r5401
    have hd2 : rho 5085 * rho 5085 = rho 5097 := by linear_combination r5402
    have hd3 : rho 5098 * (rho 5085 * rho 5085 + rho 5084 * rho 5084 * (-1)) = 2 * (rho 5084 * rho 5085) := by
      rw [hd0, hd1, hd2]
      linear_combination r5403
    have hd4 : rho 5099 * (2 - (rho 5085 * rho 5085 + rho 5084 * rho 5084 * (-1))) = rho 5085 * rho 5085 - rho 5084 * rho 5084 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5404
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX184 rho : Seg5.F), (seg5AccY184 rho : Seg5.F)⟩
      ⟨(rho 5084 : Seg5.F), (rho 5085 : Seg5.F)⟩
      ⟨(rho 5091 : Seg5.F), (rho 5092 : Seg5.F)⟩
      ⟨(seg5AccX185 rho : Seg5.F), (seg5AccY185 rho : Seg5.F)⟩
      ⟨(rho 5098 : Seg5.F), (rho 5099 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung184

theorem seg5_rows185 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5405 rho ∧ Seg5.relationRow5406 rho ∧ Seg5.relationRow5407 rho ∧ Seg5.relationRow5408 rho ∧ Seg5.relationRow5409 rho ∧ Seg5.relationRow5410 rho ∧ Seg5.relationRow5411 rho ∧ Seg5.relationRow5412 rho ∧ Seg5.relationRow5413 rho ∧ Seg5.relationRow5414 rho ∧ Seg5.relationRow5415 rho ∧ Seg5.relationRow5416 rho ∧ Seg5.relationRow5417 rho ∧ Seg5.relationRow5418 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p67, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5405, r5406, r5407, r5408, r5409, r5410, r5411, r5412, r5413, r5414, r5415, r5416, r5417, r5418, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5405, r5406, r5407, r5408, r5409, r5410, r5411, r5412, r5413, r5414, r5415, r5416, r5417, r5418⟩

theorem seg5_rung185 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2600 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX185 rho : Seg5.F), (seg5AccY185 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5098 : Seg5.F), (rho 5099 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX185 rho : Seg5.F), (seg5AccY185 rho : Seg5.F)⟩
        ⟨(rho 5098 : Seg5.F), (rho 5099 : Seg5.F)⟩
        ⟨(seg5AccX186 rho : Seg5.F), (seg5AccY186 rho : Seg5.F)⟩
        ⟨(rho 5112 : Seg5.F), (rho 5113 : Seg5.F)⟩ := by
  obtain ⟨r5405, r5406, r5407, r5408, r5409, r5410, r5411, r5412, r5413, r5414, r5415, r5416, r5417, r5418⟩ := seg5_rows185 rho h
  unfold Seg5.relationRow5405 at r5405
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5405
  unfold Seg5.relationRow5406 at r5406
  unfold Seg5.relationRow5407 at r5407
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5407
  unfold Seg5.relationRow5408 at r5408
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5408
  unfold Seg5.relationRow5409 at r5409
  unfold Seg5.relationRow5410 at r5410
  unfold Seg5.relationRow5411 at r5411
  unfold Seg5.relationRow5412 at r5412
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5412
  unfold Seg5.relationRow5413 at r5413
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5413
  unfold Seg5.relationRow5414 at r5414
  unfold Seg5.relationRow5415 at r5415
  unfold Seg5.relationRow5416 at r5416
  unfold Seg5.relationRow5417 at r5417
  unfold Seg5.relationRow5418 at r5418
  have hrung185 (bit : Bool) (hbit : rho 2600 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX185 rho : Seg5.F), (seg5AccY185 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5098 : Seg5.F), (rho 5099 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX185 rho : Seg5.F), (seg5AccY185 rho : Seg5.F)⟩
        ⟨(rho 5098 : Seg5.F), (rho 5099 : Seg5.F)⟩
        ⟨(seg5AccX186 rho : Seg5.F), (seg5AccY186 rho : Seg5.F)⟩
        ⟨(rho 5112 : Seg5.F), (rho 5113 : Seg5.F)⟩ := by
    have hnextx : seg5AccX186 rho = seg5AccX185 rho + rho 5107 := by
      unfold seg5AccX186 seg5AccX185
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 35]
      ring
    have hnexty : seg5AccY186 rho = seg5AccY185 rho + rho 5108 := by
      unfold seg5AccY186 seg5AccY185
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 35]
      ring
    have hsum : seg5AccX185 rho + seg5AccY185 rho = rho 5100 := by
      unfold seg5AccX185 seg5AccY185
      linear_combination r5405
    have ha0 : (rho 5098 + rho 5099) * (seg5AccX185 rho + seg5AccY185 rho) = rho 5101 := by
      rw [hsum]
      linear_combination r5406
    have ha1 : rho 5099 * seg5AccX185 rho = rho 5102 := by
      unfold seg5AccX185
      linear_combination r5407
    have ha2 : rho 5098 * seg5AccY185 rho = rho 5103 := by
      unfold seg5AccY185
      linear_combination r5408
    have ha3 : 3021 * rho 5102 * rho 5103 = rho 5104 := by
      linear_combination r5409
    have ha4 : rho 5105 * (1 + rho 5104) = rho 5102 + rho 5103 := by
      linear_combination r5410
    have ha5 : rho 5106 * (1 - rho 5104) = rho 5101 - rho 5102 - rho 5103 := by
      linear_combination r5411
    have haddx :
        rho 5105 * (1 + 3021 * (rho 5099 * seg5AccX185 rho) * (rho 5098 * seg5AccY185 rho)) =
          rho 5099 * seg5AccX185 rho + rho 5098 * seg5AccY185 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5106 * (1 - 3021 * (rho 5099 * seg5AccX185 rho) * (rho 5098 * seg5AccY185 rho)) =
          (-1) * (rho 5099 * seg5AccX185 rho) - rho 5098 * seg5AccY185 rho +
            (seg5AccY185 rho - seg5AccX185 rho * (-1)) * (rho 5098 + rho 5099) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5106 * (1 - rho 5104) = rho 5101 - rho 5102 - rho 5103 := ha5
        _ = (-1) * rho 5102 - rho 5103 + (seg5AccY185 rho - seg5AccX185 rho * (-1)) * (rho 5098 + rho 5099) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX186 rho = seg5AccX185 rho - Bool.toZMod bit * (seg5AccX185 rho - rho 5105) := by
      have hd : rho 5107 = Bool.toZMod bit * (rho 5105 - seg5AccX185 rho) := by
        rw [← hbit]
        unfold seg5AccX185
        linear_combination -r5412
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY186 rho = seg5AccY185 rho - Bool.toZMod bit * (seg5AccY185 rho - rho 5106) := by
      have hd : rho 5108 = Bool.toZMod bit * (rho 5106 - seg5AccY185 rho) := by
        rw [← hbit]
        unfold seg5AccY185
        linear_combination -r5413
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5098 * rho 5099 = rho 5109 := by linear_combination r5414
    have hd1 : rho 5098 * rho 5098 = rho 5110 := by linear_combination r5415
    have hd2 : rho 5099 * rho 5099 = rho 5111 := by linear_combination r5416
    have hd3 : rho 5112 * (rho 5099 * rho 5099 + rho 5098 * rho 5098 * (-1)) = 2 * (rho 5098 * rho 5099) := by
      rw [hd0, hd1, hd2]
      linear_combination r5417
    have hd4 : rho 5113 * (2 - (rho 5099 * rho 5099 + rho 5098 * rho 5098 * (-1))) = rho 5099 * rho 5099 - rho 5098 * rho 5098 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5418
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX185 rho : Seg5.F), (seg5AccY185 rho : Seg5.F)⟩
      ⟨(rho 5098 : Seg5.F), (rho 5099 : Seg5.F)⟩
      ⟨(rho 5105 : Seg5.F), (rho 5106 : Seg5.F)⟩
      ⟨(seg5AccX186 rho : Seg5.F), (seg5AccY186 rho : Seg5.F)⟩
      ⟨(rho 5112 : Seg5.F), (rho 5113 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung185

theorem seg5_rows186 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5419 rho ∧ Seg5.relationRow5420 rho ∧ Seg5.relationRow5421 rho ∧ Seg5.relationRow5422 rho ∧ Seg5.relationRow5423 rho ∧ Seg5.relationRow5424 rho ∧ Seg5.relationRow5425 rho ∧ Seg5.relationRow5426 rho ∧ Seg5.relationRow5427 rho ∧ Seg5.relationRow5428 rho ∧ Seg5.relationRow5429 rho ∧ Seg5.relationRow5430 rho ∧ Seg5.relationRow5431 rho ∧ Seg5.relationRow5432 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p67, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5419, r5420, r5421, r5422, r5423, r5424, r5425, r5426, r5427, r5428, r5429, r5430, r5431, r5432, _, _, _, _, _, _, _⟩
  exact ⟨r5419, r5420, r5421, r5422, r5423, r5424, r5425, r5426, r5427, r5428, r5429, r5430, r5431, r5432⟩

theorem seg5_rung186 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2601 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX186 rho : Seg5.F), (seg5AccY186 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5112 : Seg5.F), (rho 5113 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX186 rho : Seg5.F), (seg5AccY186 rho : Seg5.F)⟩
        ⟨(rho 5112 : Seg5.F), (rho 5113 : Seg5.F)⟩
        ⟨(seg5AccX187 rho : Seg5.F), (seg5AccY187 rho : Seg5.F)⟩
        ⟨(rho 5126 : Seg5.F), (rho 5127 : Seg5.F)⟩ := by
  obtain ⟨r5419, r5420, r5421, r5422, r5423, r5424, r5425, r5426, r5427, r5428, r5429, r5430, r5431, r5432⟩ := seg5_rows186 rho h
  unfold Seg5.relationRow5419 at r5419
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5419
  unfold Seg5.relationRow5420 at r5420
  unfold Seg5.relationRow5421 at r5421
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5421
  unfold Seg5.relationRow5422 at r5422
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5422
  unfold Seg5.relationRow5423 at r5423
  unfold Seg5.relationRow5424 at r5424
  unfold Seg5.relationRow5425 at r5425
  unfold Seg5.relationRow5426 at r5426
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5426
  unfold Seg5.relationRow5427 at r5427
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5427
  unfold Seg5.relationRow5428 at r5428
  unfold Seg5.relationRow5429 at r5429
  unfold Seg5.relationRow5430 at r5430
  unfold Seg5.relationRow5431 at r5431
  unfold Seg5.relationRow5432 at r5432
  have hrung186 (bit : Bool) (hbit : rho 2601 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX186 rho : Seg5.F), (seg5AccY186 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5112 : Seg5.F), (rho 5113 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX186 rho : Seg5.F), (seg5AccY186 rho : Seg5.F)⟩
        ⟨(rho 5112 : Seg5.F), (rho 5113 : Seg5.F)⟩
        ⟨(seg5AccX187 rho : Seg5.F), (seg5AccY187 rho : Seg5.F)⟩
        ⟨(rho 5126 : Seg5.F), (rho 5127 : Seg5.F)⟩ := by
    have hnextx : seg5AccX187 rho = seg5AccX186 rho + rho 5121 := by
      unfold seg5AccX187 seg5AccX186
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 36]
      ring
    have hnexty : seg5AccY187 rho = seg5AccY186 rho + rho 5122 := by
      unfold seg5AccY187 seg5AccY186
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 36]
      ring
    have hsum : seg5AccX186 rho + seg5AccY186 rho = rho 5114 := by
      unfold seg5AccX186 seg5AccY186
      linear_combination r5419
    have ha0 : (rho 5112 + rho 5113) * (seg5AccX186 rho + seg5AccY186 rho) = rho 5115 := by
      rw [hsum]
      linear_combination r5420
    have ha1 : rho 5113 * seg5AccX186 rho = rho 5116 := by
      unfold seg5AccX186
      linear_combination r5421
    have ha2 : rho 5112 * seg5AccY186 rho = rho 5117 := by
      unfold seg5AccY186
      linear_combination r5422
    have ha3 : 3021 * rho 5116 * rho 5117 = rho 5118 := by
      linear_combination r5423
    have ha4 : rho 5119 * (1 + rho 5118) = rho 5116 + rho 5117 := by
      linear_combination r5424
    have ha5 : rho 5120 * (1 - rho 5118) = rho 5115 - rho 5116 - rho 5117 := by
      linear_combination r5425
    have haddx :
        rho 5119 * (1 + 3021 * (rho 5113 * seg5AccX186 rho) * (rho 5112 * seg5AccY186 rho)) =
          rho 5113 * seg5AccX186 rho + rho 5112 * seg5AccY186 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5120 * (1 - 3021 * (rho 5113 * seg5AccX186 rho) * (rho 5112 * seg5AccY186 rho)) =
          (-1) * (rho 5113 * seg5AccX186 rho) - rho 5112 * seg5AccY186 rho +
            (seg5AccY186 rho - seg5AccX186 rho * (-1)) * (rho 5112 + rho 5113) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5120 * (1 - rho 5118) = rho 5115 - rho 5116 - rho 5117 := ha5
        _ = (-1) * rho 5116 - rho 5117 + (seg5AccY186 rho - seg5AccX186 rho * (-1)) * (rho 5112 + rho 5113) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX187 rho = seg5AccX186 rho - Bool.toZMod bit * (seg5AccX186 rho - rho 5119) := by
      have hd : rho 5121 = Bool.toZMod bit * (rho 5119 - seg5AccX186 rho) := by
        rw [← hbit]
        unfold seg5AccX186
        linear_combination -r5426
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY187 rho = seg5AccY186 rho - Bool.toZMod bit * (seg5AccY186 rho - rho 5120) := by
      have hd : rho 5122 = Bool.toZMod bit * (rho 5120 - seg5AccY186 rho) := by
        rw [← hbit]
        unfold seg5AccY186
        linear_combination -r5427
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5112 * rho 5113 = rho 5123 := by linear_combination r5428
    have hd1 : rho 5112 * rho 5112 = rho 5124 := by linear_combination r5429
    have hd2 : rho 5113 * rho 5113 = rho 5125 := by linear_combination r5430
    have hd3 : rho 5126 * (rho 5113 * rho 5113 + rho 5112 * rho 5112 * (-1)) = 2 * (rho 5112 * rho 5113) := by
      rw [hd0, hd1, hd2]
      linear_combination r5431
    have hd4 : rho 5127 * (2 - (rho 5113 * rho 5113 + rho 5112 * rho 5112 * (-1))) = rho 5113 * rho 5113 - rho 5112 * rho 5112 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5432
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX186 rho : Seg5.F), (seg5AccY186 rho : Seg5.F)⟩
      ⟨(rho 5112 : Seg5.F), (rho 5113 : Seg5.F)⟩
      ⟨(rho 5119 : Seg5.F), (rho 5120 : Seg5.F)⟩
      ⟨(seg5AccX187 rho : Seg5.F), (seg5AccY187 rho : Seg5.F)⟩
      ⟨(rho 5126 : Seg5.F), (rho 5127 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung186

theorem seg5_hstep_c16 (rho : Nat -> Seg5.F) (h : Seg5.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (2415 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 176 ≤ i → i < 187 →
      EdwardsBridge.onCurve (seg5LadderAccState rho i) →
      EdwardsBridge.onCurve (seg5LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg5LadderAccState rho i) (seg5LadderCurState rho i)
        (seg5LadderAccState rho (i + 1)) (seg5LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg5_rung176 rho h bits[176]! (hbitAt 176 (by omega)) hacc hcur
  · exact seg5_rung177 rho h bits[177]! (hbitAt 177 (by omega)) hacc hcur
  · exact seg5_rung178 rho h bits[178]! (hbitAt 178 (by omega)) hacc hcur
  · exact seg5_rung179 rho h bits[179]! (hbitAt 179 (by omega)) hacc hcur
  · exact seg5_rung180 rho h bits[180]! (hbitAt 180 (by omega)) hacc hcur
  · exact seg5_rung181 rho h bits[181]! (hbitAt 181 (by omega)) hacc hcur
  · exact seg5_rung182 rho h bits[182]! (hbitAt 182 (by omega)) hacc hcur
  · exact seg5_rung183 rho h bits[183]! (hbitAt 183 (by omega)) hacc hcur
  · exact seg5_rung184 rho h bits[184]! (hbitAt 184 (by omega)) hacc hcur
  · exact seg5_rung185 rho h bits[185]! (hbitAt 185 (by omega)) hacc hcur
  · exact seg5_rung186 rho h bits[186]! (hbitAt 186 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
