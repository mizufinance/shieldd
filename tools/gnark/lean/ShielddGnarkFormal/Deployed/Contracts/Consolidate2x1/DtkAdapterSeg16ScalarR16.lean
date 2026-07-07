import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg16_rows176 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5279 rho ∧ Seg16.relationRow5280 rho ∧ Seg16.relationRow5281 rho ∧ Seg16.relationRow5282 rho ∧ Seg16.relationRow5283 rho ∧ Seg16.relationRow5284 rho ∧ Seg16.relationRow5285 rho ∧ Seg16.relationRow5286 rho ∧ Seg16.relationRow5287 rho ∧ Seg16.relationRow5288 rho ∧ Seg16.relationRow5289 rho ∧ Seg16.relationRow5290 rho ∧ Seg16.relationRow5291 rho ∧ Seg16.relationRow5292 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5279⟩
  unfold Seg16.relationPart66 at p66
  rcases p66 with ⟨r5280, r5281, r5282, r5283, r5284, r5285, r5286, r5287, r5288, r5289, r5290, r5291, r5292, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5279, r5280, r5281, r5282, r5283, r5284, r5285, r5286, r5287, r5288, r5289, r5290, r5291, r5292⟩

theorem seg16_rung176 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15468 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX176 rho : Seg16.F), (seg16AccY176 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17849 : Seg16.F), (rho 17850 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX176 rho : Seg16.F), (seg16AccY176 rho : Seg16.F)⟩
        ⟨(rho 17849 : Seg16.F), (rho 17850 : Seg16.F)⟩
        ⟨(seg16AccX177 rho : Seg16.F), (seg16AccY177 rho : Seg16.F)⟩
        ⟨(rho 17863 : Seg16.F), (rho 17864 : Seg16.F)⟩ := by
  obtain ⟨r5279, r5280, r5281, r5282, r5283, r5284, r5285, r5286, r5287, r5288, r5289, r5290, r5291, r5292⟩ := seg16_rows176 rho h
  unfold Seg16.relationRow5279 at r5279
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5279
  unfold Seg16.relationRow5280 at r5280
  unfold Seg16.relationRow5281 at r5281
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5281
  unfold Seg16.relationRow5282 at r5282
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5282
  unfold Seg16.relationRow5283 at r5283
  unfold Seg16.relationRow5284 at r5284
  unfold Seg16.relationRow5285 at r5285
  unfold Seg16.relationRow5286 at r5286
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5286
  unfold Seg16.relationRow5287 at r5287
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5287
  unfold Seg16.relationRow5288 at r5288
  unfold Seg16.relationRow5289 at r5289
  unfold Seg16.relationRow5290 at r5290
  unfold Seg16.relationRow5291 at r5291
  unfold Seg16.relationRow5292 at r5292
  have hrung176 (bit : Bool) (hbit : rho 15468 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX176 rho : Seg16.F), (seg16AccY176 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17849 : Seg16.F), (rho 17850 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX176 rho : Seg16.F), (seg16AccY176 rho : Seg16.F)⟩
        ⟨(rho 17849 : Seg16.F), (rho 17850 : Seg16.F)⟩
        ⟨(seg16AccX177 rho : Seg16.F), (seg16AccY177 rho : Seg16.F)⟩
        ⟨(rho 17863 : Seg16.F), (rho 17864 : Seg16.F)⟩ := by
    have hnextx : seg16AccX177 rho = seg16AccX176 rho + rho 17858 := by
      unfold seg16AccX177 seg16AccX176
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 26]
      ring
    have hnexty : seg16AccY177 rho = seg16AccY176 rho + rho 17859 := by
      unfold seg16AccY177 seg16AccY176
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 26]
      ring
    have hsum : seg16AccX176 rho + seg16AccY176 rho = rho 17851 := by
      unfold seg16AccX176 seg16AccY176
      linear_combination r5279
    have ha0 : (rho 17849 + rho 17850) * (seg16AccX176 rho + seg16AccY176 rho) = rho 17852 := by
      rw [hsum]
      linear_combination r5280
    have ha1 : rho 17850 * seg16AccX176 rho = rho 17853 := by
      unfold seg16AccX176
      linear_combination r5281
    have ha2 : rho 17849 * seg16AccY176 rho = rho 17854 := by
      unfold seg16AccY176
      linear_combination r5282
    have ha3 : 3021 * rho 17853 * rho 17854 = rho 17855 := by
      linear_combination r5283
    have ha4 : rho 17856 * (1 + rho 17855) = rho 17853 + rho 17854 := by
      linear_combination r5284
    have ha5 : rho 17857 * (1 - rho 17855) = rho 17852 - rho 17853 - rho 17854 := by
      linear_combination r5285
    have haddx :
        rho 17856 * (1 + 3021 * (rho 17850 * seg16AccX176 rho) * (rho 17849 * seg16AccY176 rho)) =
          rho 17850 * seg16AccX176 rho + rho 17849 * seg16AccY176 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17857 * (1 - 3021 * (rho 17850 * seg16AccX176 rho) * (rho 17849 * seg16AccY176 rho)) =
          (-1) * (rho 17850 * seg16AccX176 rho) - rho 17849 * seg16AccY176 rho +
            (seg16AccY176 rho - seg16AccX176 rho * (-1)) * (rho 17849 + rho 17850) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17857 * (1 - rho 17855) = rho 17852 - rho 17853 - rho 17854 := ha5
        _ = (-1) * rho 17853 - rho 17854 + (seg16AccY176 rho - seg16AccX176 rho * (-1)) * (rho 17849 + rho 17850) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX177 rho = seg16AccX176 rho - Bool.toZMod bit * (seg16AccX176 rho - rho 17856) := by
      have hd : rho 17858 = Bool.toZMod bit * (rho 17856 - seg16AccX176 rho) := by
        rw [← hbit]
        unfold seg16AccX176
        linear_combination -r5286
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY177 rho = seg16AccY176 rho - Bool.toZMod bit * (seg16AccY176 rho - rho 17857) := by
      have hd : rho 17859 = Bool.toZMod bit * (rho 17857 - seg16AccY176 rho) := by
        rw [← hbit]
        unfold seg16AccY176
        linear_combination -r5287
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17849 * rho 17850 = rho 17860 := by linear_combination r5288
    have hd1 : rho 17849 * rho 17849 = rho 17861 := by linear_combination r5289
    have hd2 : rho 17850 * rho 17850 = rho 17862 := by linear_combination r5290
    have hd3 : rho 17863 * (rho 17850 * rho 17850 + rho 17849 * rho 17849 * (-1)) = 2 * (rho 17849 * rho 17850) := by
      rw [hd0, hd1, hd2]
      linear_combination r5291
    have hd4 : rho 17864 * (2 - (rho 17850 * rho 17850 + rho 17849 * rho 17849 * (-1))) = rho 17850 * rho 17850 - rho 17849 * rho 17849 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5292
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX176 rho : Seg16.F), (seg16AccY176 rho : Seg16.F)⟩
      ⟨(rho 17849 : Seg16.F), (rho 17850 : Seg16.F)⟩
      ⟨(rho 17856 : Seg16.F), (rho 17857 : Seg16.F)⟩
      ⟨(seg16AccX177 rho : Seg16.F), (seg16AccY177 rho : Seg16.F)⟩
      ⟨(rho 17863 : Seg16.F), (rho 17864 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung176

theorem seg16_rows177 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5293 rho ∧ Seg16.relationRow5294 rho ∧ Seg16.relationRow5295 rho ∧ Seg16.relationRow5296 rho ∧ Seg16.relationRow5297 rho ∧ Seg16.relationRow5298 rho ∧ Seg16.relationRow5299 rho ∧ Seg16.relationRow5300 rho ∧ Seg16.relationRow5301 rho ∧ Seg16.relationRow5302 rho ∧ Seg16.relationRow5303 rho ∧ Seg16.relationRow5304 rho ∧ Seg16.relationRow5305 rho ∧ Seg16.relationRow5306 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r5293, r5294, r5295, r5296, r5297, r5298, r5299, r5300, r5301, r5302, r5303, r5304, r5305, r5306, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5293, r5294, r5295, r5296, r5297, r5298, r5299, r5300, r5301, r5302, r5303, r5304, r5305, r5306⟩

theorem seg16_rung177 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15469 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX177 rho : Seg16.F), (seg16AccY177 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17863 : Seg16.F), (rho 17864 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX177 rho : Seg16.F), (seg16AccY177 rho : Seg16.F)⟩
        ⟨(rho 17863 : Seg16.F), (rho 17864 : Seg16.F)⟩
        ⟨(seg16AccX178 rho : Seg16.F), (seg16AccY178 rho : Seg16.F)⟩
        ⟨(rho 17877 : Seg16.F), (rho 17878 : Seg16.F)⟩ := by
  obtain ⟨r5293, r5294, r5295, r5296, r5297, r5298, r5299, r5300, r5301, r5302, r5303, r5304, r5305, r5306⟩ := seg16_rows177 rho h
  unfold Seg16.relationRow5293 at r5293
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5293
  unfold Seg16.relationRow5294 at r5294
  unfold Seg16.relationRow5295 at r5295
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5295
  unfold Seg16.relationRow5296 at r5296
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5296
  unfold Seg16.relationRow5297 at r5297
  unfold Seg16.relationRow5298 at r5298
  unfold Seg16.relationRow5299 at r5299
  unfold Seg16.relationRow5300 at r5300
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5300
  unfold Seg16.relationRow5301 at r5301
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5301
  unfold Seg16.relationRow5302 at r5302
  unfold Seg16.relationRow5303 at r5303
  unfold Seg16.relationRow5304 at r5304
  unfold Seg16.relationRow5305 at r5305
  unfold Seg16.relationRow5306 at r5306
  have hrung177 (bit : Bool) (hbit : rho 15469 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX177 rho : Seg16.F), (seg16AccY177 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17863 : Seg16.F), (rho 17864 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX177 rho : Seg16.F), (seg16AccY177 rho : Seg16.F)⟩
        ⟨(rho 17863 : Seg16.F), (rho 17864 : Seg16.F)⟩
        ⟨(seg16AccX178 rho : Seg16.F), (seg16AccY178 rho : Seg16.F)⟩
        ⟨(rho 17877 : Seg16.F), (rho 17878 : Seg16.F)⟩ := by
    have hnextx : seg16AccX178 rho = seg16AccX177 rho + rho 17872 := by
      unfold seg16AccX178 seg16AccX177
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 27]
      ring
    have hnexty : seg16AccY178 rho = seg16AccY177 rho + rho 17873 := by
      unfold seg16AccY178 seg16AccY177
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 27]
      ring
    have hsum : seg16AccX177 rho + seg16AccY177 rho = rho 17865 := by
      unfold seg16AccX177 seg16AccY177
      linear_combination r5293
    have ha0 : (rho 17863 + rho 17864) * (seg16AccX177 rho + seg16AccY177 rho) = rho 17866 := by
      rw [hsum]
      linear_combination r5294
    have ha1 : rho 17864 * seg16AccX177 rho = rho 17867 := by
      unfold seg16AccX177
      linear_combination r5295
    have ha2 : rho 17863 * seg16AccY177 rho = rho 17868 := by
      unfold seg16AccY177
      linear_combination r5296
    have ha3 : 3021 * rho 17867 * rho 17868 = rho 17869 := by
      linear_combination r5297
    have ha4 : rho 17870 * (1 + rho 17869) = rho 17867 + rho 17868 := by
      linear_combination r5298
    have ha5 : rho 17871 * (1 - rho 17869) = rho 17866 - rho 17867 - rho 17868 := by
      linear_combination r5299
    have haddx :
        rho 17870 * (1 + 3021 * (rho 17864 * seg16AccX177 rho) * (rho 17863 * seg16AccY177 rho)) =
          rho 17864 * seg16AccX177 rho + rho 17863 * seg16AccY177 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17871 * (1 - 3021 * (rho 17864 * seg16AccX177 rho) * (rho 17863 * seg16AccY177 rho)) =
          (-1) * (rho 17864 * seg16AccX177 rho) - rho 17863 * seg16AccY177 rho +
            (seg16AccY177 rho - seg16AccX177 rho * (-1)) * (rho 17863 + rho 17864) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17871 * (1 - rho 17869) = rho 17866 - rho 17867 - rho 17868 := ha5
        _ = (-1) * rho 17867 - rho 17868 + (seg16AccY177 rho - seg16AccX177 rho * (-1)) * (rho 17863 + rho 17864) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX178 rho = seg16AccX177 rho - Bool.toZMod bit * (seg16AccX177 rho - rho 17870) := by
      have hd : rho 17872 = Bool.toZMod bit * (rho 17870 - seg16AccX177 rho) := by
        rw [← hbit]
        unfold seg16AccX177
        linear_combination -r5300
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY178 rho = seg16AccY177 rho - Bool.toZMod bit * (seg16AccY177 rho - rho 17871) := by
      have hd : rho 17873 = Bool.toZMod bit * (rho 17871 - seg16AccY177 rho) := by
        rw [← hbit]
        unfold seg16AccY177
        linear_combination -r5301
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17863 * rho 17864 = rho 17874 := by linear_combination r5302
    have hd1 : rho 17863 * rho 17863 = rho 17875 := by linear_combination r5303
    have hd2 : rho 17864 * rho 17864 = rho 17876 := by linear_combination r5304
    have hd3 : rho 17877 * (rho 17864 * rho 17864 + rho 17863 * rho 17863 * (-1)) = 2 * (rho 17863 * rho 17864) := by
      rw [hd0, hd1, hd2]
      linear_combination r5305
    have hd4 : rho 17878 * (2 - (rho 17864 * rho 17864 + rho 17863 * rho 17863 * (-1))) = rho 17864 * rho 17864 - rho 17863 * rho 17863 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5306
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX177 rho : Seg16.F), (seg16AccY177 rho : Seg16.F)⟩
      ⟨(rho 17863 : Seg16.F), (rho 17864 : Seg16.F)⟩
      ⟨(rho 17870 : Seg16.F), (rho 17871 : Seg16.F)⟩
      ⟨(seg16AccX178 rho : Seg16.F), (seg16AccY178 rho : Seg16.F)⟩
      ⟨(rho 17877 : Seg16.F), (rho 17878 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung177

theorem seg16_rows178 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5307 rho ∧ Seg16.relationRow5308 rho ∧ Seg16.relationRow5309 rho ∧ Seg16.relationRow5310 rho ∧ Seg16.relationRow5311 rho ∧ Seg16.relationRow5312 rho ∧ Seg16.relationRow5313 rho ∧ Seg16.relationRow5314 rho ∧ Seg16.relationRow5315 rho ∧ Seg16.relationRow5316 rho ∧ Seg16.relationRow5317 rho ∧ Seg16.relationRow5318 rho ∧ Seg16.relationRow5319 rho ∧ Seg16.relationRow5320 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5307, r5308, r5309, r5310, r5311, r5312, r5313, r5314, r5315, r5316, r5317, r5318, r5319, r5320, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5307, r5308, r5309, r5310, r5311, r5312, r5313, r5314, r5315, r5316, r5317, r5318, r5319, r5320⟩

theorem seg16_rung178 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15470 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX178 rho : Seg16.F), (seg16AccY178 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17877 : Seg16.F), (rho 17878 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX178 rho : Seg16.F), (seg16AccY178 rho : Seg16.F)⟩
        ⟨(rho 17877 : Seg16.F), (rho 17878 : Seg16.F)⟩
        ⟨(seg16AccX179 rho : Seg16.F), (seg16AccY179 rho : Seg16.F)⟩
        ⟨(rho 17891 : Seg16.F), (rho 17892 : Seg16.F)⟩ := by
  obtain ⟨r5307, r5308, r5309, r5310, r5311, r5312, r5313, r5314, r5315, r5316, r5317, r5318, r5319, r5320⟩ := seg16_rows178 rho h
  unfold Seg16.relationRow5307 at r5307
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5307
  unfold Seg16.relationRow5308 at r5308
  unfold Seg16.relationRow5309 at r5309
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5309
  unfold Seg16.relationRow5310 at r5310
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5310
  unfold Seg16.relationRow5311 at r5311
  unfold Seg16.relationRow5312 at r5312
  unfold Seg16.relationRow5313 at r5313
  unfold Seg16.relationRow5314 at r5314
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5314
  unfold Seg16.relationRow5315 at r5315
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5315
  unfold Seg16.relationRow5316 at r5316
  unfold Seg16.relationRow5317 at r5317
  unfold Seg16.relationRow5318 at r5318
  unfold Seg16.relationRow5319 at r5319
  unfold Seg16.relationRow5320 at r5320
  have hrung178 (bit : Bool) (hbit : rho 15470 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX178 rho : Seg16.F), (seg16AccY178 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17877 : Seg16.F), (rho 17878 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX178 rho : Seg16.F), (seg16AccY178 rho : Seg16.F)⟩
        ⟨(rho 17877 : Seg16.F), (rho 17878 : Seg16.F)⟩
        ⟨(seg16AccX179 rho : Seg16.F), (seg16AccY179 rho : Seg16.F)⟩
        ⟨(rho 17891 : Seg16.F), (rho 17892 : Seg16.F)⟩ := by
    have hnextx : seg16AccX179 rho = seg16AccX178 rho + rho 17886 := by
      unfold seg16AccX179 seg16AccX178
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 28]
      ring
    have hnexty : seg16AccY179 rho = seg16AccY178 rho + rho 17887 := by
      unfold seg16AccY179 seg16AccY178
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 28]
      ring
    have hsum : seg16AccX178 rho + seg16AccY178 rho = rho 17879 := by
      unfold seg16AccX178 seg16AccY178
      linear_combination r5307
    have ha0 : (rho 17877 + rho 17878) * (seg16AccX178 rho + seg16AccY178 rho) = rho 17880 := by
      rw [hsum]
      linear_combination r5308
    have ha1 : rho 17878 * seg16AccX178 rho = rho 17881 := by
      unfold seg16AccX178
      linear_combination r5309
    have ha2 : rho 17877 * seg16AccY178 rho = rho 17882 := by
      unfold seg16AccY178
      linear_combination r5310
    have ha3 : 3021 * rho 17881 * rho 17882 = rho 17883 := by
      linear_combination r5311
    have ha4 : rho 17884 * (1 + rho 17883) = rho 17881 + rho 17882 := by
      linear_combination r5312
    have ha5 : rho 17885 * (1 - rho 17883) = rho 17880 - rho 17881 - rho 17882 := by
      linear_combination r5313
    have haddx :
        rho 17884 * (1 + 3021 * (rho 17878 * seg16AccX178 rho) * (rho 17877 * seg16AccY178 rho)) =
          rho 17878 * seg16AccX178 rho + rho 17877 * seg16AccY178 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17885 * (1 - 3021 * (rho 17878 * seg16AccX178 rho) * (rho 17877 * seg16AccY178 rho)) =
          (-1) * (rho 17878 * seg16AccX178 rho) - rho 17877 * seg16AccY178 rho +
            (seg16AccY178 rho - seg16AccX178 rho * (-1)) * (rho 17877 + rho 17878) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17885 * (1 - rho 17883) = rho 17880 - rho 17881 - rho 17882 := ha5
        _ = (-1) * rho 17881 - rho 17882 + (seg16AccY178 rho - seg16AccX178 rho * (-1)) * (rho 17877 + rho 17878) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX179 rho = seg16AccX178 rho - Bool.toZMod bit * (seg16AccX178 rho - rho 17884) := by
      have hd : rho 17886 = Bool.toZMod bit * (rho 17884 - seg16AccX178 rho) := by
        rw [← hbit]
        unfold seg16AccX178
        linear_combination -r5314
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY179 rho = seg16AccY178 rho - Bool.toZMod bit * (seg16AccY178 rho - rho 17885) := by
      have hd : rho 17887 = Bool.toZMod bit * (rho 17885 - seg16AccY178 rho) := by
        rw [← hbit]
        unfold seg16AccY178
        linear_combination -r5315
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17877 * rho 17878 = rho 17888 := by linear_combination r5316
    have hd1 : rho 17877 * rho 17877 = rho 17889 := by linear_combination r5317
    have hd2 : rho 17878 * rho 17878 = rho 17890 := by linear_combination r5318
    have hd3 : rho 17891 * (rho 17878 * rho 17878 + rho 17877 * rho 17877 * (-1)) = 2 * (rho 17877 * rho 17878) := by
      rw [hd0, hd1, hd2]
      linear_combination r5319
    have hd4 : rho 17892 * (2 - (rho 17878 * rho 17878 + rho 17877 * rho 17877 * (-1))) = rho 17878 * rho 17878 - rho 17877 * rho 17877 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5320
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX178 rho : Seg16.F), (seg16AccY178 rho : Seg16.F)⟩
      ⟨(rho 17877 : Seg16.F), (rho 17878 : Seg16.F)⟩
      ⟨(rho 17884 : Seg16.F), (rho 17885 : Seg16.F)⟩
      ⟨(seg16AccX179 rho : Seg16.F), (seg16AccY179 rho : Seg16.F)⟩
      ⟨(rho 17891 : Seg16.F), (rho 17892 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung178

theorem seg16_rows179 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5321 rho ∧ Seg16.relationRow5322 rho ∧ Seg16.relationRow5323 rho ∧ Seg16.relationRow5324 rho ∧ Seg16.relationRow5325 rho ∧ Seg16.relationRow5326 rho ∧ Seg16.relationRow5327 rho ∧ Seg16.relationRow5328 rho ∧ Seg16.relationRow5329 rho ∧ Seg16.relationRow5330 rho ∧ Seg16.relationRow5331 rho ∧ Seg16.relationRow5332 rho ∧ Seg16.relationRow5333 rho ∧ Seg16.relationRow5334 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5321, r5322, r5323, r5324, r5325, r5326, r5327, r5328, r5329, r5330, r5331, r5332, r5333, r5334, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5321, r5322, r5323, r5324, r5325, r5326, r5327, r5328, r5329, r5330, r5331, r5332, r5333, r5334⟩

theorem seg16_rung179 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15471 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX179 rho : Seg16.F), (seg16AccY179 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17891 : Seg16.F), (rho 17892 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX179 rho : Seg16.F), (seg16AccY179 rho : Seg16.F)⟩
        ⟨(rho 17891 : Seg16.F), (rho 17892 : Seg16.F)⟩
        ⟨(seg16AccX180 rho : Seg16.F), (seg16AccY180 rho : Seg16.F)⟩
        ⟨(rho 17905 : Seg16.F), (rho 17906 : Seg16.F)⟩ := by
  obtain ⟨r5321, r5322, r5323, r5324, r5325, r5326, r5327, r5328, r5329, r5330, r5331, r5332, r5333, r5334⟩ := seg16_rows179 rho h
  unfold Seg16.relationRow5321 at r5321
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5321
  unfold Seg16.relationRow5322 at r5322
  unfold Seg16.relationRow5323 at r5323
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5323
  unfold Seg16.relationRow5324 at r5324
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5324
  unfold Seg16.relationRow5325 at r5325
  unfold Seg16.relationRow5326 at r5326
  unfold Seg16.relationRow5327 at r5327
  unfold Seg16.relationRow5328 at r5328
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5328
  unfold Seg16.relationRow5329 at r5329
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5329
  unfold Seg16.relationRow5330 at r5330
  unfold Seg16.relationRow5331 at r5331
  unfold Seg16.relationRow5332 at r5332
  unfold Seg16.relationRow5333 at r5333
  unfold Seg16.relationRow5334 at r5334
  have hrung179 (bit : Bool) (hbit : rho 15471 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX179 rho : Seg16.F), (seg16AccY179 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17891 : Seg16.F), (rho 17892 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX179 rho : Seg16.F), (seg16AccY179 rho : Seg16.F)⟩
        ⟨(rho 17891 : Seg16.F), (rho 17892 : Seg16.F)⟩
        ⟨(seg16AccX180 rho : Seg16.F), (seg16AccY180 rho : Seg16.F)⟩
        ⟨(rho 17905 : Seg16.F), (rho 17906 : Seg16.F)⟩ := by
    have hnextx : seg16AccX180 rho = seg16AccX179 rho + rho 17900 := by
      unfold seg16AccX180 seg16AccX179
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 29]
      ring
    have hnexty : seg16AccY180 rho = seg16AccY179 rho + rho 17901 := by
      unfold seg16AccY180 seg16AccY179
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 29]
      ring
    have hsum : seg16AccX179 rho + seg16AccY179 rho = rho 17893 := by
      unfold seg16AccX179 seg16AccY179
      linear_combination r5321
    have ha0 : (rho 17891 + rho 17892) * (seg16AccX179 rho + seg16AccY179 rho) = rho 17894 := by
      rw [hsum]
      linear_combination r5322
    have ha1 : rho 17892 * seg16AccX179 rho = rho 17895 := by
      unfold seg16AccX179
      linear_combination r5323
    have ha2 : rho 17891 * seg16AccY179 rho = rho 17896 := by
      unfold seg16AccY179
      linear_combination r5324
    have ha3 : 3021 * rho 17895 * rho 17896 = rho 17897 := by
      linear_combination r5325
    have ha4 : rho 17898 * (1 + rho 17897) = rho 17895 + rho 17896 := by
      linear_combination r5326
    have ha5 : rho 17899 * (1 - rho 17897) = rho 17894 - rho 17895 - rho 17896 := by
      linear_combination r5327
    have haddx :
        rho 17898 * (1 + 3021 * (rho 17892 * seg16AccX179 rho) * (rho 17891 * seg16AccY179 rho)) =
          rho 17892 * seg16AccX179 rho + rho 17891 * seg16AccY179 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17899 * (1 - 3021 * (rho 17892 * seg16AccX179 rho) * (rho 17891 * seg16AccY179 rho)) =
          (-1) * (rho 17892 * seg16AccX179 rho) - rho 17891 * seg16AccY179 rho +
            (seg16AccY179 rho - seg16AccX179 rho * (-1)) * (rho 17891 + rho 17892) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17899 * (1 - rho 17897) = rho 17894 - rho 17895 - rho 17896 := ha5
        _ = (-1) * rho 17895 - rho 17896 + (seg16AccY179 rho - seg16AccX179 rho * (-1)) * (rho 17891 + rho 17892) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX180 rho = seg16AccX179 rho - Bool.toZMod bit * (seg16AccX179 rho - rho 17898) := by
      have hd : rho 17900 = Bool.toZMod bit * (rho 17898 - seg16AccX179 rho) := by
        rw [← hbit]
        unfold seg16AccX179
        linear_combination -r5328
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY180 rho = seg16AccY179 rho - Bool.toZMod bit * (seg16AccY179 rho - rho 17899) := by
      have hd : rho 17901 = Bool.toZMod bit * (rho 17899 - seg16AccY179 rho) := by
        rw [← hbit]
        unfold seg16AccY179
        linear_combination -r5329
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17891 * rho 17892 = rho 17902 := by linear_combination r5330
    have hd1 : rho 17891 * rho 17891 = rho 17903 := by linear_combination r5331
    have hd2 : rho 17892 * rho 17892 = rho 17904 := by linear_combination r5332
    have hd3 : rho 17905 * (rho 17892 * rho 17892 + rho 17891 * rho 17891 * (-1)) = 2 * (rho 17891 * rho 17892) := by
      rw [hd0, hd1, hd2]
      linear_combination r5333
    have hd4 : rho 17906 * (2 - (rho 17892 * rho 17892 + rho 17891 * rho 17891 * (-1))) = rho 17892 * rho 17892 - rho 17891 * rho 17891 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5334
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX179 rho : Seg16.F), (seg16AccY179 rho : Seg16.F)⟩
      ⟨(rho 17891 : Seg16.F), (rho 17892 : Seg16.F)⟩
      ⟨(rho 17898 : Seg16.F), (rho 17899 : Seg16.F)⟩
      ⟨(seg16AccX180 rho : Seg16.F), (seg16AccY180 rho : Seg16.F)⟩
      ⟨(rho 17905 : Seg16.F), (rho 17906 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung179

theorem seg16_rows180 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5335 rho ∧ Seg16.relationRow5336 rho ∧ Seg16.relationRow5337 rho ∧ Seg16.relationRow5338 rho ∧ Seg16.relationRow5339 rho ∧ Seg16.relationRow5340 rho ∧ Seg16.relationRow5341 rho ∧ Seg16.relationRow5342 rho ∧ Seg16.relationRow5343 rho ∧ Seg16.relationRow5344 rho ∧ Seg16.relationRow5345 rho ∧ Seg16.relationRow5346 rho ∧ Seg16.relationRow5347 rho ∧ Seg16.relationRow5348 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5335, r5336, r5337, r5338, r5339, r5340, r5341, r5342, r5343, r5344, r5345, r5346, r5347, r5348, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5335, r5336, r5337, r5338, r5339, r5340, r5341, r5342, r5343, r5344, r5345, r5346, r5347, r5348⟩

theorem seg16_rung180 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15472 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX180 rho : Seg16.F), (seg16AccY180 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17905 : Seg16.F), (rho 17906 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX180 rho : Seg16.F), (seg16AccY180 rho : Seg16.F)⟩
        ⟨(rho 17905 : Seg16.F), (rho 17906 : Seg16.F)⟩
        ⟨(seg16AccX181 rho : Seg16.F), (seg16AccY181 rho : Seg16.F)⟩
        ⟨(rho 17919 : Seg16.F), (rho 17920 : Seg16.F)⟩ := by
  obtain ⟨r5335, r5336, r5337, r5338, r5339, r5340, r5341, r5342, r5343, r5344, r5345, r5346, r5347, r5348⟩ := seg16_rows180 rho h
  unfold Seg16.relationRow5335 at r5335
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5335
  unfold Seg16.relationRow5336 at r5336
  unfold Seg16.relationRow5337 at r5337
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5337
  unfold Seg16.relationRow5338 at r5338
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5338
  unfold Seg16.relationRow5339 at r5339
  unfold Seg16.relationRow5340 at r5340
  unfold Seg16.relationRow5341 at r5341
  unfold Seg16.relationRow5342 at r5342
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5342
  unfold Seg16.relationRow5343 at r5343
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5343
  unfold Seg16.relationRow5344 at r5344
  unfold Seg16.relationRow5345 at r5345
  unfold Seg16.relationRow5346 at r5346
  unfold Seg16.relationRow5347 at r5347
  unfold Seg16.relationRow5348 at r5348
  have hrung180 (bit : Bool) (hbit : rho 15472 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX180 rho : Seg16.F), (seg16AccY180 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17905 : Seg16.F), (rho 17906 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX180 rho : Seg16.F), (seg16AccY180 rho : Seg16.F)⟩
        ⟨(rho 17905 : Seg16.F), (rho 17906 : Seg16.F)⟩
        ⟨(seg16AccX181 rho : Seg16.F), (seg16AccY181 rho : Seg16.F)⟩
        ⟨(rho 17919 : Seg16.F), (rho 17920 : Seg16.F)⟩ := by
    have hnextx : seg16AccX181 rho = seg16AccX180 rho + rho 17914 := by
      unfold seg16AccX181 seg16AccX180
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 30]
      ring
    have hnexty : seg16AccY181 rho = seg16AccY180 rho + rho 17915 := by
      unfold seg16AccY181 seg16AccY180
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 30]
      ring
    have hsum : seg16AccX180 rho + seg16AccY180 rho = rho 17907 := by
      unfold seg16AccX180 seg16AccY180
      linear_combination r5335
    have ha0 : (rho 17905 + rho 17906) * (seg16AccX180 rho + seg16AccY180 rho) = rho 17908 := by
      rw [hsum]
      linear_combination r5336
    have ha1 : rho 17906 * seg16AccX180 rho = rho 17909 := by
      unfold seg16AccX180
      linear_combination r5337
    have ha2 : rho 17905 * seg16AccY180 rho = rho 17910 := by
      unfold seg16AccY180
      linear_combination r5338
    have ha3 : 3021 * rho 17909 * rho 17910 = rho 17911 := by
      linear_combination r5339
    have ha4 : rho 17912 * (1 + rho 17911) = rho 17909 + rho 17910 := by
      linear_combination r5340
    have ha5 : rho 17913 * (1 - rho 17911) = rho 17908 - rho 17909 - rho 17910 := by
      linear_combination r5341
    have haddx :
        rho 17912 * (1 + 3021 * (rho 17906 * seg16AccX180 rho) * (rho 17905 * seg16AccY180 rho)) =
          rho 17906 * seg16AccX180 rho + rho 17905 * seg16AccY180 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17913 * (1 - 3021 * (rho 17906 * seg16AccX180 rho) * (rho 17905 * seg16AccY180 rho)) =
          (-1) * (rho 17906 * seg16AccX180 rho) - rho 17905 * seg16AccY180 rho +
            (seg16AccY180 rho - seg16AccX180 rho * (-1)) * (rho 17905 + rho 17906) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17913 * (1 - rho 17911) = rho 17908 - rho 17909 - rho 17910 := ha5
        _ = (-1) * rho 17909 - rho 17910 + (seg16AccY180 rho - seg16AccX180 rho * (-1)) * (rho 17905 + rho 17906) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX181 rho = seg16AccX180 rho - Bool.toZMod bit * (seg16AccX180 rho - rho 17912) := by
      have hd : rho 17914 = Bool.toZMod bit * (rho 17912 - seg16AccX180 rho) := by
        rw [← hbit]
        unfold seg16AccX180
        linear_combination -r5342
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY181 rho = seg16AccY180 rho - Bool.toZMod bit * (seg16AccY180 rho - rho 17913) := by
      have hd : rho 17915 = Bool.toZMod bit * (rho 17913 - seg16AccY180 rho) := by
        rw [← hbit]
        unfold seg16AccY180
        linear_combination -r5343
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17905 * rho 17906 = rho 17916 := by linear_combination r5344
    have hd1 : rho 17905 * rho 17905 = rho 17917 := by linear_combination r5345
    have hd2 : rho 17906 * rho 17906 = rho 17918 := by linear_combination r5346
    have hd3 : rho 17919 * (rho 17906 * rho 17906 + rho 17905 * rho 17905 * (-1)) = 2 * (rho 17905 * rho 17906) := by
      rw [hd0, hd1, hd2]
      linear_combination r5347
    have hd4 : rho 17920 * (2 - (rho 17906 * rho 17906 + rho 17905 * rho 17905 * (-1))) = rho 17906 * rho 17906 - rho 17905 * rho 17905 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5348
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX180 rho : Seg16.F), (seg16AccY180 rho : Seg16.F)⟩
      ⟨(rho 17905 : Seg16.F), (rho 17906 : Seg16.F)⟩
      ⟨(rho 17912 : Seg16.F), (rho 17913 : Seg16.F)⟩
      ⟨(seg16AccX181 rho : Seg16.F), (seg16AccY181 rho : Seg16.F)⟩
      ⟨(rho 17919 : Seg16.F), (rho 17920 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung180

theorem seg16_rows181 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5349 rho ∧ Seg16.relationRow5350 rho ∧ Seg16.relationRow5351 rho ∧ Seg16.relationRow5352 rho ∧ Seg16.relationRow5353 rho ∧ Seg16.relationRow5354 rho ∧ Seg16.relationRow5355 rho ∧ Seg16.relationRow5356 rho ∧ Seg16.relationRow5357 rho ∧ Seg16.relationRow5358 rho ∧ Seg16.relationRow5359 rho ∧ Seg16.relationRow5360 rho ∧ Seg16.relationRow5361 rho ∧ Seg16.relationRow5362 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5349, r5350, r5351, r5352, r5353, r5354, r5355, r5356, r5357, r5358, r5359⟩
  unfold Seg16.relationPart67 at p67
  rcases p67 with ⟨r5360, r5361, r5362, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5349, r5350, r5351, r5352, r5353, r5354, r5355, r5356, r5357, r5358, r5359, r5360, r5361, r5362⟩

theorem seg16_rung181 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15473 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX181 rho : Seg16.F), (seg16AccY181 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17919 : Seg16.F), (rho 17920 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX181 rho : Seg16.F), (seg16AccY181 rho : Seg16.F)⟩
        ⟨(rho 17919 : Seg16.F), (rho 17920 : Seg16.F)⟩
        ⟨(seg16AccX182 rho : Seg16.F), (seg16AccY182 rho : Seg16.F)⟩
        ⟨(rho 17933 : Seg16.F), (rho 17934 : Seg16.F)⟩ := by
  obtain ⟨r5349, r5350, r5351, r5352, r5353, r5354, r5355, r5356, r5357, r5358, r5359, r5360, r5361, r5362⟩ := seg16_rows181 rho h
  unfold Seg16.relationRow5349 at r5349
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5349
  unfold Seg16.relationRow5350 at r5350
  unfold Seg16.relationRow5351 at r5351
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5351
  unfold Seg16.relationRow5352 at r5352
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5352
  unfold Seg16.relationRow5353 at r5353
  unfold Seg16.relationRow5354 at r5354
  unfold Seg16.relationRow5355 at r5355
  unfold Seg16.relationRow5356 at r5356
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5356
  unfold Seg16.relationRow5357 at r5357
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5357
  unfold Seg16.relationRow5358 at r5358
  unfold Seg16.relationRow5359 at r5359
  unfold Seg16.relationRow5360 at r5360
  unfold Seg16.relationRow5361 at r5361
  unfold Seg16.relationRow5362 at r5362
  have hrung181 (bit : Bool) (hbit : rho 15473 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX181 rho : Seg16.F), (seg16AccY181 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17919 : Seg16.F), (rho 17920 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX181 rho : Seg16.F), (seg16AccY181 rho : Seg16.F)⟩
        ⟨(rho 17919 : Seg16.F), (rho 17920 : Seg16.F)⟩
        ⟨(seg16AccX182 rho : Seg16.F), (seg16AccY182 rho : Seg16.F)⟩
        ⟨(rho 17933 : Seg16.F), (rho 17934 : Seg16.F)⟩ := by
    have hnextx : seg16AccX182 rho = seg16AccX181 rho + rho 17928 := by
      unfold seg16AccX182 seg16AccX181
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 31]
      ring
    have hnexty : seg16AccY182 rho = seg16AccY181 rho + rho 17929 := by
      unfold seg16AccY182 seg16AccY181
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 31]
      ring
    have hsum : seg16AccX181 rho + seg16AccY181 rho = rho 17921 := by
      unfold seg16AccX181 seg16AccY181
      linear_combination r5349
    have ha0 : (rho 17919 + rho 17920) * (seg16AccX181 rho + seg16AccY181 rho) = rho 17922 := by
      rw [hsum]
      linear_combination r5350
    have ha1 : rho 17920 * seg16AccX181 rho = rho 17923 := by
      unfold seg16AccX181
      linear_combination r5351
    have ha2 : rho 17919 * seg16AccY181 rho = rho 17924 := by
      unfold seg16AccY181
      linear_combination r5352
    have ha3 : 3021 * rho 17923 * rho 17924 = rho 17925 := by
      linear_combination r5353
    have ha4 : rho 17926 * (1 + rho 17925) = rho 17923 + rho 17924 := by
      linear_combination r5354
    have ha5 : rho 17927 * (1 - rho 17925) = rho 17922 - rho 17923 - rho 17924 := by
      linear_combination r5355
    have haddx :
        rho 17926 * (1 + 3021 * (rho 17920 * seg16AccX181 rho) * (rho 17919 * seg16AccY181 rho)) =
          rho 17920 * seg16AccX181 rho + rho 17919 * seg16AccY181 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17927 * (1 - 3021 * (rho 17920 * seg16AccX181 rho) * (rho 17919 * seg16AccY181 rho)) =
          (-1) * (rho 17920 * seg16AccX181 rho) - rho 17919 * seg16AccY181 rho +
            (seg16AccY181 rho - seg16AccX181 rho * (-1)) * (rho 17919 + rho 17920) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17927 * (1 - rho 17925) = rho 17922 - rho 17923 - rho 17924 := ha5
        _ = (-1) * rho 17923 - rho 17924 + (seg16AccY181 rho - seg16AccX181 rho * (-1)) * (rho 17919 + rho 17920) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX182 rho = seg16AccX181 rho - Bool.toZMod bit * (seg16AccX181 rho - rho 17926) := by
      have hd : rho 17928 = Bool.toZMod bit * (rho 17926 - seg16AccX181 rho) := by
        rw [← hbit]
        unfold seg16AccX181
        linear_combination -r5356
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY182 rho = seg16AccY181 rho - Bool.toZMod bit * (seg16AccY181 rho - rho 17927) := by
      have hd : rho 17929 = Bool.toZMod bit * (rho 17927 - seg16AccY181 rho) := by
        rw [← hbit]
        unfold seg16AccY181
        linear_combination -r5357
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17919 * rho 17920 = rho 17930 := by linear_combination r5358
    have hd1 : rho 17919 * rho 17919 = rho 17931 := by linear_combination r5359
    have hd2 : rho 17920 * rho 17920 = rho 17932 := by linear_combination r5360
    have hd3 : rho 17933 * (rho 17920 * rho 17920 + rho 17919 * rho 17919 * (-1)) = 2 * (rho 17919 * rho 17920) := by
      rw [hd0, hd1, hd2]
      linear_combination r5361
    have hd4 : rho 17934 * (2 - (rho 17920 * rho 17920 + rho 17919 * rho 17919 * (-1))) = rho 17920 * rho 17920 - rho 17919 * rho 17919 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5362
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX181 rho : Seg16.F), (seg16AccY181 rho : Seg16.F)⟩
      ⟨(rho 17919 : Seg16.F), (rho 17920 : Seg16.F)⟩
      ⟨(rho 17926 : Seg16.F), (rho 17927 : Seg16.F)⟩
      ⟨(seg16AccX182 rho : Seg16.F), (seg16AccY182 rho : Seg16.F)⟩
      ⟨(rho 17933 : Seg16.F), (rho 17934 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung181

theorem seg16_rows182 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5363 rho ∧ Seg16.relationRow5364 rho ∧ Seg16.relationRow5365 rho ∧ Seg16.relationRow5366 rho ∧ Seg16.relationRow5367 rho ∧ Seg16.relationRow5368 rho ∧ Seg16.relationRow5369 rho ∧ Seg16.relationRow5370 rho ∧ Seg16.relationRow5371 rho ∧ Seg16.relationRow5372 rho ∧ Seg16.relationRow5373 rho ∧ Seg16.relationRow5374 rho ∧ Seg16.relationRow5375 rho ∧ Seg16.relationRow5376 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart67 at p67
  rcases p67 with ⟨_, _, _, r5363, r5364, r5365, r5366, r5367, r5368, r5369, r5370, r5371, r5372, r5373, r5374, r5375, r5376, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5363, r5364, r5365, r5366, r5367, r5368, r5369, r5370, r5371, r5372, r5373, r5374, r5375, r5376⟩

theorem seg16_rung182 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15474 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX182 rho : Seg16.F), (seg16AccY182 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17933 : Seg16.F), (rho 17934 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX182 rho : Seg16.F), (seg16AccY182 rho : Seg16.F)⟩
        ⟨(rho 17933 : Seg16.F), (rho 17934 : Seg16.F)⟩
        ⟨(seg16AccX183 rho : Seg16.F), (seg16AccY183 rho : Seg16.F)⟩
        ⟨(rho 17947 : Seg16.F), (rho 17948 : Seg16.F)⟩ := by
  obtain ⟨r5363, r5364, r5365, r5366, r5367, r5368, r5369, r5370, r5371, r5372, r5373, r5374, r5375, r5376⟩ := seg16_rows182 rho h
  unfold Seg16.relationRow5363 at r5363
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5363
  unfold Seg16.relationRow5364 at r5364
  unfold Seg16.relationRow5365 at r5365
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5365
  unfold Seg16.relationRow5366 at r5366
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5366
  unfold Seg16.relationRow5367 at r5367
  unfold Seg16.relationRow5368 at r5368
  unfold Seg16.relationRow5369 at r5369
  unfold Seg16.relationRow5370 at r5370
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5370
  unfold Seg16.relationRow5371 at r5371
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5371
  unfold Seg16.relationRow5372 at r5372
  unfold Seg16.relationRow5373 at r5373
  unfold Seg16.relationRow5374 at r5374
  unfold Seg16.relationRow5375 at r5375
  unfold Seg16.relationRow5376 at r5376
  have hrung182 (bit : Bool) (hbit : rho 15474 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX182 rho : Seg16.F), (seg16AccY182 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17933 : Seg16.F), (rho 17934 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX182 rho : Seg16.F), (seg16AccY182 rho : Seg16.F)⟩
        ⟨(rho 17933 : Seg16.F), (rho 17934 : Seg16.F)⟩
        ⟨(seg16AccX183 rho : Seg16.F), (seg16AccY183 rho : Seg16.F)⟩
        ⟨(rho 17947 : Seg16.F), (rho 17948 : Seg16.F)⟩ := by
    have hnextx : seg16AccX183 rho = seg16AccX182 rho + rho 17942 := by
      unfold seg16AccX183 seg16AccX182
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 32]
      ring
    have hnexty : seg16AccY183 rho = seg16AccY182 rho + rho 17943 := by
      unfold seg16AccY183 seg16AccY182
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 32]
      ring
    have hsum : seg16AccX182 rho + seg16AccY182 rho = rho 17935 := by
      unfold seg16AccX182 seg16AccY182
      linear_combination r5363
    have ha0 : (rho 17933 + rho 17934) * (seg16AccX182 rho + seg16AccY182 rho) = rho 17936 := by
      rw [hsum]
      linear_combination r5364
    have ha1 : rho 17934 * seg16AccX182 rho = rho 17937 := by
      unfold seg16AccX182
      linear_combination r5365
    have ha2 : rho 17933 * seg16AccY182 rho = rho 17938 := by
      unfold seg16AccY182
      linear_combination r5366
    have ha3 : 3021 * rho 17937 * rho 17938 = rho 17939 := by
      linear_combination r5367
    have ha4 : rho 17940 * (1 + rho 17939) = rho 17937 + rho 17938 := by
      linear_combination r5368
    have ha5 : rho 17941 * (1 - rho 17939) = rho 17936 - rho 17937 - rho 17938 := by
      linear_combination r5369
    have haddx :
        rho 17940 * (1 + 3021 * (rho 17934 * seg16AccX182 rho) * (rho 17933 * seg16AccY182 rho)) =
          rho 17934 * seg16AccX182 rho + rho 17933 * seg16AccY182 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17941 * (1 - 3021 * (rho 17934 * seg16AccX182 rho) * (rho 17933 * seg16AccY182 rho)) =
          (-1) * (rho 17934 * seg16AccX182 rho) - rho 17933 * seg16AccY182 rho +
            (seg16AccY182 rho - seg16AccX182 rho * (-1)) * (rho 17933 + rho 17934) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17941 * (1 - rho 17939) = rho 17936 - rho 17937 - rho 17938 := ha5
        _ = (-1) * rho 17937 - rho 17938 + (seg16AccY182 rho - seg16AccX182 rho * (-1)) * (rho 17933 + rho 17934) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX183 rho = seg16AccX182 rho - Bool.toZMod bit * (seg16AccX182 rho - rho 17940) := by
      have hd : rho 17942 = Bool.toZMod bit * (rho 17940 - seg16AccX182 rho) := by
        rw [← hbit]
        unfold seg16AccX182
        linear_combination -r5370
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY183 rho = seg16AccY182 rho - Bool.toZMod bit * (seg16AccY182 rho - rho 17941) := by
      have hd : rho 17943 = Bool.toZMod bit * (rho 17941 - seg16AccY182 rho) := by
        rw [← hbit]
        unfold seg16AccY182
        linear_combination -r5371
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17933 * rho 17934 = rho 17944 := by linear_combination r5372
    have hd1 : rho 17933 * rho 17933 = rho 17945 := by linear_combination r5373
    have hd2 : rho 17934 * rho 17934 = rho 17946 := by linear_combination r5374
    have hd3 : rho 17947 * (rho 17934 * rho 17934 + rho 17933 * rho 17933 * (-1)) = 2 * (rho 17933 * rho 17934) := by
      rw [hd0, hd1, hd2]
      linear_combination r5375
    have hd4 : rho 17948 * (2 - (rho 17934 * rho 17934 + rho 17933 * rho 17933 * (-1))) = rho 17934 * rho 17934 - rho 17933 * rho 17933 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5376
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX182 rho : Seg16.F), (seg16AccY182 rho : Seg16.F)⟩
      ⟨(rho 17933 : Seg16.F), (rho 17934 : Seg16.F)⟩
      ⟨(rho 17940 : Seg16.F), (rho 17941 : Seg16.F)⟩
      ⟨(seg16AccX183 rho : Seg16.F), (seg16AccY183 rho : Seg16.F)⟩
      ⟨(rho 17947 : Seg16.F), (rho 17948 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung182

theorem seg16_rows183 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5377 rho ∧ Seg16.relationRow5378 rho ∧ Seg16.relationRow5379 rho ∧ Seg16.relationRow5380 rho ∧ Seg16.relationRow5381 rho ∧ Seg16.relationRow5382 rho ∧ Seg16.relationRow5383 rho ∧ Seg16.relationRow5384 rho ∧ Seg16.relationRow5385 rho ∧ Seg16.relationRow5386 rho ∧ Seg16.relationRow5387 rho ∧ Seg16.relationRow5388 rho ∧ Seg16.relationRow5389 rho ∧ Seg16.relationRow5390 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5377, r5378, r5379, r5380, r5381, r5382, r5383, r5384, r5385, r5386, r5387, r5388, r5389, r5390, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5377, r5378, r5379, r5380, r5381, r5382, r5383, r5384, r5385, r5386, r5387, r5388, r5389, r5390⟩

theorem seg16_rung183 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15475 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX183 rho : Seg16.F), (seg16AccY183 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17947 : Seg16.F), (rho 17948 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX183 rho : Seg16.F), (seg16AccY183 rho : Seg16.F)⟩
        ⟨(rho 17947 : Seg16.F), (rho 17948 : Seg16.F)⟩
        ⟨(seg16AccX184 rho : Seg16.F), (seg16AccY184 rho : Seg16.F)⟩
        ⟨(rho 17961 : Seg16.F), (rho 17962 : Seg16.F)⟩ := by
  obtain ⟨r5377, r5378, r5379, r5380, r5381, r5382, r5383, r5384, r5385, r5386, r5387, r5388, r5389, r5390⟩ := seg16_rows183 rho h
  unfold Seg16.relationRow5377 at r5377
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5377
  unfold Seg16.relationRow5378 at r5378
  unfold Seg16.relationRow5379 at r5379
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5379
  unfold Seg16.relationRow5380 at r5380
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5380
  unfold Seg16.relationRow5381 at r5381
  unfold Seg16.relationRow5382 at r5382
  unfold Seg16.relationRow5383 at r5383
  unfold Seg16.relationRow5384 at r5384
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5384
  unfold Seg16.relationRow5385 at r5385
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5385
  unfold Seg16.relationRow5386 at r5386
  unfold Seg16.relationRow5387 at r5387
  unfold Seg16.relationRow5388 at r5388
  unfold Seg16.relationRow5389 at r5389
  unfold Seg16.relationRow5390 at r5390
  have hrung183 (bit : Bool) (hbit : rho 15475 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX183 rho : Seg16.F), (seg16AccY183 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17947 : Seg16.F), (rho 17948 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX183 rho : Seg16.F), (seg16AccY183 rho : Seg16.F)⟩
        ⟨(rho 17947 : Seg16.F), (rho 17948 : Seg16.F)⟩
        ⟨(seg16AccX184 rho : Seg16.F), (seg16AccY184 rho : Seg16.F)⟩
        ⟨(rho 17961 : Seg16.F), (rho 17962 : Seg16.F)⟩ := by
    have hnextx : seg16AccX184 rho = seg16AccX183 rho + rho 17956 := by
      unfold seg16AccX184 seg16AccX183
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 33]
      ring
    have hnexty : seg16AccY184 rho = seg16AccY183 rho + rho 17957 := by
      unfold seg16AccY184 seg16AccY183
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 33]
      ring
    have hsum : seg16AccX183 rho + seg16AccY183 rho = rho 17949 := by
      unfold seg16AccX183 seg16AccY183
      linear_combination r5377
    have ha0 : (rho 17947 + rho 17948) * (seg16AccX183 rho + seg16AccY183 rho) = rho 17950 := by
      rw [hsum]
      linear_combination r5378
    have ha1 : rho 17948 * seg16AccX183 rho = rho 17951 := by
      unfold seg16AccX183
      linear_combination r5379
    have ha2 : rho 17947 * seg16AccY183 rho = rho 17952 := by
      unfold seg16AccY183
      linear_combination r5380
    have ha3 : 3021 * rho 17951 * rho 17952 = rho 17953 := by
      linear_combination r5381
    have ha4 : rho 17954 * (1 + rho 17953) = rho 17951 + rho 17952 := by
      linear_combination r5382
    have ha5 : rho 17955 * (1 - rho 17953) = rho 17950 - rho 17951 - rho 17952 := by
      linear_combination r5383
    have haddx :
        rho 17954 * (1 + 3021 * (rho 17948 * seg16AccX183 rho) * (rho 17947 * seg16AccY183 rho)) =
          rho 17948 * seg16AccX183 rho + rho 17947 * seg16AccY183 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17955 * (1 - 3021 * (rho 17948 * seg16AccX183 rho) * (rho 17947 * seg16AccY183 rho)) =
          (-1) * (rho 17948 * seg16AccX183 rho) - rho 17947 * seg16AccY183 rho +
            (seg16AccY183 rho - seg16AccX183 rho * (-1)) * (rho 17947 + rho 17948) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17955 * (1 - rho 17953) = rho 17950 - rho 17951 - rho 17952 := ha5
        _ = (-1) * rho 17951 - rho 17952 + (seg16AccY183 rho - seg16AccX183 rho * (-1)) * (rho 17947 + rho 17948) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX184 rho = seg16AccX183 rho - Bool.toZMod bit * (seg16AccX183 rho - rho 17954) := by
      have hd : rho 17956 = Bool.toZMod bit * (rho 17954 - seg16AccX183 rho) := by
        rw [← hbit]
        unfold seg16AccX183
        linear_combination -r5384
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY184 rho = seg16AccY183 rho - Bool.toZMod bit * (seg16AccY183 rho - rho 17955) := by
      have hd : rho 17957 = Bool.toZMod bit * (rho 17955 - seg16AccY183 rho) := by
        rw [← hbit]
        unfold seg16AccY183
        linear_combination -r5385
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17947 * rho 17948 = rho 17958 := by linear_combination r5386
    have hd1 : rho 17947 * rho 17947 = rho 17959 := by linear_combination r5387
    have hd2 : rho 17948 * rho 17948 = rho 17960 := by linear_combination r5388
    have hd3 : rho 17961 * (rho 17948 * rho 17948 + rho 17947 * rho 17947 * (-1)) = 2 * (rho 17947 * rho 17948) := by
      rw [hd0, hd1, hd2]
      linear_combination r5389
    have hd4 : rho 17962 * (2 - (rho 17948 * rho 17948 + rho 17947 * rho 17947 * (-1))) = rho 17948 * rho 17948 - rho 17947 * rho 17947 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5390
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX183 rho : Seg16.F), (seg16AccY183 rho : Seg16.F)⟩
      ⟨(rho 17947 : Seg16.F), (rho 17948 : Seg16.F)⟩
      ⟨(rho 17954 : Seg16.F), (rho 17955 : Seg16.F)⟩
      ⟨(seg16AccX184 rho : Seg16.F), (seg16AccY184 rho : Seg16.F)⟩
      ⟨(rho 17961 : Seg16.F), (rho 17962 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung183

theorem seg16_rows184 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5391 rho ∧ Seg16.relationRow5392 rho ∧ Seg16.relationRow5393 rho ∧ Seg16.relationRow5394 rho ∧ Seg16.relationRow5395 rho ∧ Seg16.relationRow5396 rho ∧ Seg16.relationRow5397 rho ∧ Seg16.relationRow5398 rho ∧ Seg16.relationRow5399 rho ∧ Seg16.relationRow5400 rho ∧ Seg16.relationRow5401 rho ∧ Seg16.relationRow5402 rho ∧ Seg16.relationRow5403 rho ∧ Seg16.relationRow5404 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5391, r5392, r5393, r5394, r5395, r5396, r5397, r5398, r5399, r5400, r5401, r5402, r5403, r5404, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5391, r5392, r5393, r5394, r5395, r5396, r5397, r5398, r5399, r5400, r5401, r5402, r5403, r5404⟩

theorem seg16_rung184 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15476 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX184 rho : Seg16.F), (seg16AccY184 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17961 : Seg16.F), (rho 17962 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX184 rho : Seg16.F), (seg16AccY184 rho : Seg16.F)⟩
        ⟨(rho 17961 : Seg16.F), (rho 17962 : Seg16.F)⟩
        ⟨(seg16AccX185 rho : Seg16.F), (seg16AccY185 rho : Seg16.F)⟩
        ⟨(rho 17975 : Seg16.F), (rho 17976 : Seg16.F)⟩ := by
  obtain ⟨r5391, r5392, r5393, r5394, r5395, r5396, r5397, r5398, r5399, r5400, r5401, r5402, r5403, r5404⟩ := seg16_rows184 rho h
  unfold Seg16.relationRow5391 at r5391
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5391
  unfold Seg16.relationRow5392 at r5392
  unfold Seg16.relationRow5393 at r5393
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5393
  unfold Seg16.relationRow5394 at r5394
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5394
  unfold Seg16.relationRow5395 at r5395
  unfold Seg16.relationRow5396 at r5396
  unfold Seg16.relationRow5397 at r5397
  unfold Seg16.relationRow5398 at r5398
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5398
  unfold Seg16.relationRow5399 at r5399
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5399
  unfold Seg16.relationRow5400 at r5400
  unfold Seg16.relationRow5401 at r5401
  unfold Seg16.relationRow5402 at r5402
  unfold Seg16.relationRow5403 at r5403
  unfold Seg16.relationRow5404 at r5404
  have hrung184 (bit : Bool) (hbit : rho 15476 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX184 rho : Seg16.F), (seg16AccY184 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17961 : Seg16.F), (rho 17962 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX184 rho : Seg16.F), (seg16AccY184 rho : Seg16.F)⟩
        ⟨(rho 17961 : Seg16.F), (rho 17962 : Seg16.F)⟩
        ⟨(seg16AccX185 rho : Seg16.F), (seg16AccY185 rho : Seg16.F)⟩
        ⟨(rho 17975 : Seg16.F), (rho 17976 : Seg16.F)⟩ := by
    have hnextx : seg16AccX185 rho = seg16AccX184 rho + rho 17970 := by
      unfold seg16AccX185 seg16AccX184
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 34]
      ring
    have hnexty : seg16AccY185 rho = seg16AccY184 rho + rho 17971 := by
      unfold seg16AccY185 seg16AccY184
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 34]
      ring
    have hsum : seg16AccX184 rho + seg16AccY184 rho = rho 17963 := by
      unfold seg16AccX184 seg16AccY184
      linear_combination r5391
    have ha0 : (rho 17961 + rho 17962) * (seg16AccX184 rho + seg16AccY184 rho) = rho 17964 := by
      rw [hsum]
      linear_combination r5392
    have ha1 : rho 17962 * seg16AccX184 rho = rho 17965 := by
      unfold seg16AccX184
      linear_combination r5393
    have ha2 : rho 17961 * seg16AccY184 rho = rho 17966 := by
      unfold seg16AccY184
      linear_combination r5394
    have ha3 : 3021 * rho 17965 * rho 17966 = rho 17967 := by
      linear_combination r5395
    have ha4 : rho 17968 * (1 + rho 17967) = rho 17965 + rho 17966 := by
      linear_combination r5396
    have ha5 : rho 17969 * (1 - rho 17967) = rho 17964 - rho 17965 - rho 17966 := by
      linear_combination r5397
    have haddx :
        rho 17968 * (1 + 3021 * (rho 17962 * seg16AccX184 rho) * (rho 17961 * seg16AccY184 rho)) =
          rho 17962 * seg16AccX184 rho + rho 17961 * seg16AccY184 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17969 * (1 - 3021 * (rho 17962 * seg16AccX184 rho) * (rho 17961 * seg16AccY184 rho)) =
          (-1) * (rho 17962 * seg16AccX184 rho) - rho 17961 * seg16AccY184 rho +
            (seg16AccY184 rho - seg16AccX184 rho * (-1)) * (rho 17961 + rho 17962) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17969 * (1 - rho 17967) = rho 17964 - rho 17965 - rho 17966 := ha5
        _ = (-1) * rho 17965 - rho 17966 + (seg16AccY184 rho - seg16AccX184 rho * (-1)) * (rho 17961 + rho 17962) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX185 rho = seg16AccX184 rho - Bool.toZMod bit * (seg16AccX184 rho - rho 17968) := by
      have hd : rho 17970 = Bool.toZMod bit * (rho 17968 - seg16AccX184 rho) := by
        rw [← hbit]
        unfold seg16AccX184
        linear_combination -r5398
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY185 rho = seg16AccY184 rho - Bool.toZMod bit * (seg16AccY184 rho - rho 17969) := by
      have hd : rho 17971 = Bool.toZMod bit * (rho 17969 - seg16AccY184 rho) := by
        rw [← hbit]
        unfold seg16AccY184
        linear_combination -r5399
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17961 * rho 17962 = rho 17972 := by linear_combination r5400
    have hd1 : rho 17961 * rho 17961 = rho 17973 := by linear_combination r5401
    have hd2 : rho 17962 * rho 17962 = rho 17974 := by linear_combination r5402
    have hd3 : rho 17975 * (rho 17962 * rho 17962 + rho 17961 * rho 17961 * (-1)) = 2 * (rho 17961 * rho 17962) := by
      rw [hd0, hd1, hd2]
      linear_combination r5403
    have hd4 : rho 17976 * (2 - (rho 17962 * rho 17962 + rho 17961 * rho 17961 * (-1))) = rho 17962 * rho 17962 - rho 17961 * rho 17961 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5404
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX184 rho : Seg16.F), (seg16AccY184 rho : Seg16.F)⟩
      ⟨(rho 17961 : Seg16.F), (rho 17962 : Seg16.F)⟩
      ⟨(rho 17968 : Seg16.F), (rho 17969 : Seg16.F)⟩
      ⟨(seg16AccX185 rho : Seg16.F), (seg16AccY185 rho : Seg16.F)⟩
      ⟨(rho 17975 : Seg16.F), (rho 17976 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung184

theorem seg16_rows185 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5405 rho ∧ Seg16.relationRow5406 rho ∧ Seg16.relationRow5407 rho ∧ Seg16.relationRow5408 rho ∧ Seg16.relationRow5409 rho ∧ Seg16.relationRow5410 rho ∧ Seg16.relationRow5411 rho ∧ Seg16.relationRow5412 rho ∧ Seg16.relationRow5413 rho ∧ Seg16.relationRow5414 rho ∧ Seg16.relationRow5415 rho ∧ Seg16.relationRow5416 rho ∧ Seg16.relationRow5417 rho ∧ Seg16.relationRow5418 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5405, r5406, r5407, r5408, r5409, r5410, r5411, r5412, r5413, r5414, r5415, r5416, r5417, r5418, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5405, r5406, r5407, r5408, r5409, r5410, r5411, r5412, r5413, r5414, r5415, r5416, r5417, r5418⟩

theorem seg16_rung185 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15477 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX185 rho : Seg16.F), (seg16AccY185 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17975 : Seg16.F), (rho 17976 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX185 rho : Seg16.F), (seg16AccY185 rho : Seg16.F)⟩
        ⟨(rho 17975 : Seg16.F), (rho 17976 : Seg16.F)⟩
        ⟨(seg16AccX186 rho : Seg16.F), (seg16AccY186 rho : Seg16.F)⟩
        ⟨(rho 17989 : Seg16.F), (rho 17990 : Seg16.F)⟩ := by
  obtain ⟨r5405, r5406, r5407, r5408, r5409, r5410, r5411, r5412, r5413, r5414, r5415, r5416, r5417, r5418⟩ := seg16_rows185 rho h
  unfold Seg16.relationRow5405 at r5405
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5405
  unfold Seg16.relationRow5406 at r5406
  unfold Seg16.relationRow5407 at r5407
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5407
  unfold Seg16.relationRow5408 at r5408
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5408
  unfold Seg16.relationRow5409 at r5409
  unfold Seg16.relationRow5410 at r5410
  unfold Seg16.relationRow5411 at r5411
  unfold Seg16.relationRow5412 at r5412
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5412
  unfold Seg16.relationRow5413 at r5413
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5413
  unfold Seg16.relationRow5414 at r5414
  unfold Seg16.relationRow5415 at r5415
  unfold Seg16.relationRow5416 at r5416
  unfold Seg16.relationRow5417 at r5417
  unfold Seg16.relationRow5418 at r5418
  have hrung185 (bit : Bool) (hbit : rho 15477 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX185 rho : Seg16.F), (seg16AccY185 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17975 : Seg16.F), (rho 17976 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX185 rho : Seg16.F), (seg16AccY185 rho : Seg16.F)⟩
        ⟨(rho 17975 : Seg16.F), (rho 17976 : Seg16.F)⟩
        ⟨(seg16AccX186 rho : Seg16.F), (seg16AccY186 rho : Seg16.F)⟩
        ⟨(rho 17989 : Seg16.F), (rho 17990 : Seg16.F)⟩ := by
    have hnextx : seg16AccX186 rho = seg16AccX185 rho + rho 17984 := by
      unfold seg16AccX186 seg16AccX185
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 35]
      ring
    have hnexty : seg16AccY186 rho = seg16AccY185 rho + rho 17985 := by
      unfold seg16AccY186 seg16AccY185
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 35]
      ring
    have hsum : seg16AccX185 rho + seg16AccY185 rho = rho 17977 := by
      unfold seg16AccX185 seg16AccY185
      linear_combination r5405
    have ha0 : (rho 17975 + rho 17976) * (seg16AccX185 rho + seg16AccY185 rho) = rho 17978 := by
      rw [hsum]
      linear_combination r5406
    have ha1 : rho 17976 * seg16AccX185 rho = rho 17979 := by
      unfold seg16AccX185
      linear_combination r5407
    have ha2 : rho 17975 * seg16AccY185 rho = rho 17980 := by
      unfold seg16AccY185
      linear_combination r5408
    have ha3 : 3021 * rho 17979 * rho 17980 = rho 17981 := by
      linear_combination r5409
    have ha4 : rho 17982 * (1 + rho 17981) = rho 17979 + rho 17980 := by
      linear_combination r5410
    have ha5 : rho 17983 * (1 - rho 17981) = rho 17978 - rho 17979 - rho 17980 := by
      linear_combination r5411
    have haddx :
        rho 17982 * (1 + 3021 * (rho 17976 * seg16AccX185 rho) * (rho 17975 * seg16AccY185 rho)) =
          rho 17976 * seg16AccX185 rho + rho 17975 * seg16AccY185 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17983 * (1 - 3021 * (rho 17976 * seg16AccX185 rho) * (rho 17975 * seg16AccY185 rho)) =
          (-1) * (rho 17976 * seg16AccX185 rho) - rho 17975 * seg16AccY185 rho +
            (seg16AccY185 rho - seg16AccX185 rho * (-1)) * (rho 17975 + rho 17976) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17983 * (1 - rho 17981) = rho 17978 - rho 17979 - rho 17980 := ha5
        _ = (-1) * rho 17979 - rho 17980 + (seg16AccY185 rho - seg16AccX185 rho * (-1)) * (rho 17975 + rho 17976) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX186 rho = seg16AccX185 rho - Bool.toZMod bit * (seg16AccX185 rho - rho 17982) := by
      have hd : rho 17984 = Bool.toZMod bit * (rho 17982 - seg16AccX185 rho) := by
        rw [← hbit]
        unfold seg16AccX185
        linear_combination -r5412
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY186 rho = seg16AccY185 rho - Bool.toZMod bit * (seg16AccY185 rho - rho 17983) := by
      have hd : rho 17985 = Bool.toZMod bit * (rho 17983 - seg16AccY185 rho) := by
        rw [← hbit]
        unfold seg16AccY185
        linear_combination -r5413
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17975 * rho 17976 = rho 17986 := by linear_combination r5414
    have hd1 : rho 17975 * rho 17975 = rho 17987 := by linear_combination r5415
    have hd2 : rho 17976 * rho 17976 = rho 17988 := by linear_combination r5416
    have hd3 : rho 17989 * (rho 17976 * rho 17976 + rho 17975 * rho 17975 * (-1)) = 2 * (rho 17975 * rho 17976) := by
      rw [hd0, hd1, hd2]
      linear_combination r5417
    have hd4 : rho 17990 * (2 - (rho 17976 * rho 17976 + rho 17975 * rho 17975 * (-1))) = rho 17976 * rho 17976 - rho 17975 * rho 17975 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5418
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX185 rho : Seg16.F), (seg16AccY185 rho : Seg16.F)⟩
      ⟨(rho 17975 : Seg16.F), (rho 17976 : Seg16.F)⟩
      ⟨(rho 17982 : Seg16.F), (rho 17983 : Seg16.F)⟩
      ⟨(seg16AccX186 rho : Seg16.F), (seg16AccY186 rho : Seg16.F)⟩
      ⟨(rho 17989 : Seg16.F), (rho 17990 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung185

theorem seg16_rows186 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5419 rho ∧ Seg16.relationRow5420 rho ∧ Seg16.relationRow5421 rho ∧ Seg16.relationRow5422 rho ∧ Seg16.relationRow5423 rho ∧ Seg16.relationRow5424 rho ∧ Seg16.relationRow5425 rho ∧ Seg16.relationRow5426 rho ∧ Seg16.relationRow5427 rho ∧ Seg16.relationRow5428 rho ∧ Seg16.relationRow5429 rho ∧ Seg16.relationRow5430 rho ∧ Seg16.relationRow5431 rho ∧ Seg16.relationRow5432 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5419, r5420, r5421, r5422, r5423, r5424, r5425, r5426, r5427, r5428, r5429, r5430, r5431, r5432, _, _, _, _, _, _, _⟩
  exact ⟨r5419, r5420, r5421, r5422, r5423, r5424, r5425, r5426, r5427, r5428, r5429, r5430, r5431, r5432⟩

theorem seg16_rung186 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15478 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX186 rho : Seg16.F), (seg16AccY186 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17989 : Seg16.F), (rho 17990 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX186 rho : Seg16.F), (seg16AccY186 rho : Seg16.F)⟩
        ⟨(rho 17989 : Seg16.F), (rho 17990 : Seg16.F)⟩
        ⟨(seg16AccX187 rho : Seg16.F), (seg16AccY187 rho : Seg16.F)⟩
        ⟨(rho 18003 : Seg16.F), (rho 18004 : Seg16.F)⟩ := by
  obtain ⟨r5419, r5420, r5421, r5422, r5423, r5424, r5425, r5426, r5427, r5428, r5429, r5430, r5431, r5432⟩ := seg16_rows186 rho h
  unfold Seg16.relationRow5419 at r5419
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5419
  unfold Seg16.relationRow5420 at r5420
  unfold Seg16.relationRow5421 at r5421
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5421
  unfold Seg16.relationRow5422 at r5422
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5422
  unfold Seg16.relationRow5423 at r5423
  unfold Seg16.relationRow5424 at r5424
  unfold Seg16.relationRow5425 at r5425
  unfold Seg16.relationRow5426 at r5426
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5426
  unfold Seg16.relationRow5427 at r5427
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5427
  unfold Seg16.relationRow5428 at r5428
  unfold Seg16.relationRow5429 at r5429
  unfold Seg16.relationRow5430 at r5430
  unfold Seg16.relationRow5431 at r5431
  unfold Seg16.relationRow5432 at r5432
  have hrung186 (bit : Bool) (hbit : rho 15478 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX186 rho : Seg16.F), (seg16AccY186 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17989 : Seg16.F), (rho 17990 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX186 rho : Seg16.F), (seg16AccY186 rho : Seg16.F)⟩
        ⟨(rho 17989 : Seg16.F), (rho 17990 : Seg16.F)⟩
        ⟨(seg16AccX187 rho : Seg16.F), (seg16AccY187 rho : Seg16.F)⟩
        ⟨(rho 18003 : Seg16.F), (rho 18004 : Seg16.F)⟩ := by
    have hnextx : seg16AccX187 rho = seg16AccX186 rho + rho 17998 := by
      unfold seg16AccX187 seg16AccX186
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 36]
      ring
    have hnexty : seg16AccY187 rho = seg16AccY186 rho + rho 17999 := by
      unfold seg16AccY187 seg16AccY186
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 36]
      ring
    have hsum : seg16AccX186 rho + seg16AccY186 rho = rho 17991 := by
      unfold seg16AccX186 seg16AccY186
      linear_combination r5419
    have ha0 : (rho 17989 + rho 17990) * (seg16AccX186 rho + seg16AccY186 rho) = rho 17992 := by
      rw [hsum]
      linear_combination r5420
    have ha1 : rho 17990 * seg16AccX186 rho = rho 17993 := by
      unfold seg16AccX186
      linear_combination r5421
    have ha2 : rho 17989 * seg16AccY186 rho = rho 17994 := by
      unfold seg16AccY186
      linear_combination r5422
    have ha3 : 3021 * rho 17993 * rho 17994 = rho 17995 := by
      linear_combination r5423
    have ha4 : rho 17996 * (1 + rho 17995) = rho 17993 + rho 17994 := by
      linear_combination r5424
    have ha5 : rho 17997 * (1 - rho 17995) = rho 17992 - rho 17993 - rho 17994 := by
      linear_combination r5425
    have haddx :
        rho 17996 * (1 + 3021 * (rho 17990 * seg16AccX186 rho) * (rho 17989 * seg16AccY186 rho)) =
          rho 17990 * seg16AccX186 rho + rho 17989 * seg16AccY186 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17997 * (1 - 3021 * (rho 17990 * seg16AccX186 rho) * (rho 17989 * seg16AccY186 rho)) =
          (-1) * (rho 17990 * seg16AccX186 rho) - rho 17989 * seg16AccY186 rho +
            (seg16AccY186 rho - seg16AccX186 rho * (-1)) * (rho 17989 + rho 17990) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17997 * (1 - rho 17995) = rho 17992 - rho 17993 - rho 17994 := ha5
        _ = (-1) * rho 17993 - rho 17994 + (seg16AccY186 rho - seg16AccX186 rho * (-1)) * (rho 17989 + rho 17990) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX187 rho = seg16AccX186 rho - Bool.toZMod bit * (seg16AccX186 rho - rho 17996) := by
      have hd : rho 17998 = Bool.toZMod bit * (rho 17996 - seg16AccX186 rho) := by
        rw [← hbit]
        unfold seg16AccX186
        linear_combination -r5426
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY187 rho = seg16AccY186 rho - Bool.toZMod bit * (seg16AccY186 rho - rho 17997) := by
      have hd : rho 17999 = Bool.toZMod bit * (rho 17997 - seg16AccY186 rho) := by
        rw [← hbit]
        unfold seg16AccY186
        linear_combination -r5427
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17989 * rho 17990 = rho 18000 := by linear_combination r5428
    have hd1 : rho 17989 * rho 17989 = rho 18001 := by linear_combination r5429
    have hd2 : rho 17990 * rho 17990 = rho 18002 := by linear_combination r5430
    have hd3 : rho 18003 * (rho 17990 * rho 17990 + rho 17989 * rho 17989 * (-1)) = 2 * (rho 17989 * rho 17990) := by
      rw [hd0, hd1, hd2]
      linear_combination r5431
    have hd4 : rho 18004 * (2 - (rho 17990 * rho 17990 + rho 17989 * rho 17989 * (-1))) = rho 17990 * rho 17990 - rho 17989 * rho 17989 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5432
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX186 rho : Seg16.F), (seg16AccY186 rho : Seg16.F)⟩
      ⟨(rho 17989 : Seg16.F), (rho 17990 : Seg16.F)⟩
      ⟨(rho 17996 : Seg16.F), (rho 17997 : Seg16.F)⟩
      ⟨(seg16AccX187 rho : Seg16.F), (seg16AccY187 rho : Seg16.F)⟩
      ⟨(rho 18003 : Seg16.F), (rho 18004 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung186

theorem seg16_hstep_c16 (rho : Nat -> Seg16.F) (h : Seg16.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (15292 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 176 ≤ i → i < 187 →
      EdwardsBridge.onCurve (seg16LadderAccState rho i) →
      EdwardsBridge.onCurve (seg16LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg16LadderAccState rho i) (seg16LadderCurState rho i)
        (seg16LadderAccState rho (i + 1)) (seg16LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg16_rung176 rho h bits[176]! (hbitAt 176 (by omega)) hacc hcur
  · exact seg16_rung177 rho h bits[177]! (hbitAt 177 (by omega)) hacc hcur
  · exact seg16_rung178 rho h bits[178]! (hbitAt 178 (by omega)) hacc hcur
  · exact seg16_rung179 rho h bits[179]! (hbitAt 179 (by omega)) hacc hcur
  · exact seg16_rung180 rho h bits[180]! (hbitAt 180 (by omega)) hacc hcur
  · exact seg16_rung181 rho h bits[181]! (hbitAt 181 (by omega)) hacc hcur
  · exact seg16_rung182 rho h bits[182]! (hbitAt 182 (by omega)) hacc hcur
  · exact seg16_rung183 rho h bits[183]! (hbitAt 183 (by omega)) hacc hcur
  · exact seg16_rung184 rho h bits[184]! (hbitAt 184 (by omega)) hacc hcur
  · exact seg16_rung185 rho h bits[185]! (hbitAt 185 (by omega)) hacc hcur
  · exact seg16_rung186 rho h bits[186]! (hbitAt 186 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
