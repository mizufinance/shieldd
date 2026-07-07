import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg34_rows176 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5279 rho ∧ Seg34.relationRow5280 rho ∧ Seg34.relationRow5281 rho ∧ Seg34.relationRow5282 rho ∧ Seg34.relationRow5283 rho ∧ Seg34.relationRow5284 rho ∧ Seg34.relationRow5285 rho ∧ Seg34.relationRow5286 rho ∧ Seg34.relationRow5287 rho ∧ Seg34.relationRow5288 rho ∧ Seg34.relationRow5289 rho ∧ Seg34.relationRow5290 rho ∧ Seg34.relationRow5291 rho ∧ Seg34.relationRow5292 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5279⟩
  unfold Seg34.relationPart66 at p66
  rcases p66 with ⟨r5280, r5281, r5282, r5283, r5284, r5285, r5286, r5287, r5288, r5289, r5290, r5291, r5292, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5279, r5280, r5281, r5282, r5283, r5284, r5285, r5286, r5287, r5288, r5289, r5290, r5291, r5292⟩

theorem seg34_rung176 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34168 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX176 rho : Seg34.F), (seg34AccY176 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36549 : Seg34.F), (rho 36550 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX176 rho : Seg34.F), (seg34AccY176 rho : Seg34.F)⟩
        ⟨(rho 36549 : Seg34.F), (rho 36550 : Seg34.F)⟩
        ⟨(seg34AccX177 rho : Seg34.F), (seg34AccY177 rho : Seg34.F)⟩
        ⟨(rho 36563 : Seg34.F), (rho 36564 : Seg34.F)⟩ := by
  obtain ⟨r5279, r5280, r5281, r5282, r5283, r5284, r5285, r5286, r5287, r5288, r5289, r5290, r5291, r5292⟩ := seg34_rows176 rho h
  unfold Seg34.relationRow5279 at r5279
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5279
  unfold Seg34.relationRow5280 at r5280
  unfold Seg34.relationRow5281 at r5281
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5281
  unfold Seg34.relationRow5282 at r5282
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5282
  unfold Seg34.relationRow5283 at r5283
  unfold Seg34.relationRow5284 at r5284
  unfold Seg34.relationRow5285 at r5285
  unfold Seg34.relationRow5286 at r5286
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5286
  unfold Seg34.relationRow5287 at r5287
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5287
  unfold Seg34.relationRow5288 at r5288
  unfold Seg34.relationRow5289 at r5289
  unfold Seg34.relationRow5290 at r5290
  unfold Seg34.relationRow5291 at r5291
  unfold Seg34.relationRow5292 at r5292
  have hrung176 (bit : Bool) (hbit : rho 34168 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX176 rho : Seg34.F), (seg34AccY176 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36549 : Seg34.F), (rho 36550 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX176 rho : Seg34.F), (seg34AccY176 rho : Seg34.F)⟩
        ⟨(rho 36549 : Seg34.F), (rho 36550 : Seg34.F)⟩
        ⟨(seg34AccX177 rho : Seg34.F), (seg34AccY177 rho : Seg34.F)⟩
        ⟨(rho 36563 : Seg34.F), (rho 36564 : Seg34.F)⟩ := by
    have hnextx : seg34AccX177 rho = seg34AccX176 rho + rho 36558 := by
      unfold seg34AccX177 seg34AccX176
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 26]
      ring
    have hnexty : seg34AccY177 rho = seg34AccY176 rho + rho 36559 := by
      unfold seg34AccY177 seg34AccY176
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 26]
      ring
    have hsum : seg34AccX176 rho + seg34AccY176 rho = rho 36551 := by
      unfold seg34AccX176 seg34AccY176
      linear_combination r5279
    have ha0 : (rho 36549 + rho 36550) * (seg34AccX176 rho + seg34AccY176 rho) = rho 36552 := by
      rw [hsum]
      linear_combination r5280
    have ha1 : rho 36550 * seg34AccX176 rho = rho 36553 := by
      unfold seg34AccX176
      linear_combination r5281
    have ha2 : rho 36549 * seg34AccY176 rho = rho 36554 := by
      unfold seg34AccY176
      linear_combination r5282
    have ha3 : 3021 * rho 36553 * rho 36554 = rho 36555 := by
      linear_combination r5283
    have ha4 : rho 36556 * (1 + rho 36555) = rho 36553 + rho 36554 := by
      linear_combination r5284
    have ha5 : rho 36557 * (1 - rho 36555) = rho 36552 - rho 36553 - rho 36554 := by
      linear_combination r5285
    have haddx :
        rho 36556 * (1 + 3021 * (rho 36550 * seg34AccX176 rho) * (rho 36549 * seg34AccY176 rho)) =
          rho 36550 * seg34AccX176 rho + rho 36549 * seg34AccY176 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36557 * (1 - 3021 * (rho 36550 * seg34AccX176 rho) * (rho 36549 * seg34AccY176 rho)) =
          (-1) * (rho 36550 * seg34AccX176 rho) - rho 36549 * seg34AccY176 rho +
            (seg34AccY176 rho - seg34AccX176 rho * (-1)) * (rho 36549 + rho 36550) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36557 * (1 - rho 36555) = rho 36552 - rho 36553 - rho 36554 := ha5
        _ = (-1) * rho 36553 - rho 36554 + (seg34AccY176 rho - seg34AccX176 rho * (-1)) * (rho 36549 + rho 36550) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX177 rho = seg34AccX176 rho - Bool.toZMod bit * (seg34AccX176 rho - rho 36556) := by
      have hd : rho 36558 = Bool.toZMod bit * (rho 36556 - seg34AccX176 rho) := by
        rw [← hbit]
        unfold seg34AccX176
        linear_combination -r5286
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY177 rho = seg34AccY176 rho - Bool.toZMod bit * (seg34AccY176 rho - rho 36557) := by
      have hd : rho 36559 = Bool.toZMod bit * (rho 36557 - seg34AccY176 rho) := by
        rw [← hbit]
        unfold seg34AccY176
        linear_combination -r5287
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36549 * rho 36550 = rho 36560 := by linear_combination r5288
    have hd1 : rho 36549 * rho 36549 = rho 36561 := by linear_combination r5289
    have hd2 : rho 36550 * rho 36550 = rho 36562 := by linear_combination r5290
    have hd3 : rho 36563 * (rho 36550 * rho 36550 + rho 36549 * rho 36549 * (-1)) = 2 * (rho 36549 * rho 36550) := by
      rw [hd0, hd1, hd2]
      linear_combination r5291
    have hd4 : rho 36564 * (2 - (rho 36550 * rho 36550 + rho 36549 * rho 36549 * (-1))) = rho 36550 * rho 36550 - rho 36549 * rho 36549 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5292
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX176 rho : Seg34.F), (seg34AccY176 rho : Seg34.F)⟩
      ⟨(rho 36549 : Seg34.F), (rho 36550 : Seg34.F)⟩
      ⟨(rho 36556 : Seg34.F), (rho 36557 : Seg34.F)⟩
      ⟨(seg34AccX177 rho : Seg34.F), (seg34AccY177 rho : Seg34.F)⟩
      ⟨(rho 36563 : Seg34.F), (rho 36564 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung176

theorem seg34_rows177 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5293 rho ∧ Seg34.relationRow5294 rho ∧ Seg34.relationRow5295 rho ∧ Seg34.relationRow5296 rho ∧ Seg34.relationRow5297 rho ∧ Seg34.relationRow5298 rho ∧ Seg34.relationRow5299 rho ∧ Seg34.relationRow5300 rho ∧ Seg34.relationRow5301 rho ∧ Seg34.relationRow5302 rho ∧ Seg34.relationRow5303 rho ∧ Seg34.relationRow5304 rho ∧ Seg34.relationRow5305 rho ∧ Seg34.relationRow5306 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r5293, r5294, r5295, r5296, r5297, r5298, r5299, r5300, r5301, r5302, r5303, r5304, r5305, r5306, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5293, r5294, r5295, r5296, r5297, r5298, r5299, r5300, r5301, r5302, r5303, r5304, r5305, r5306⟩

theorem seg34_rung177 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34169 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX177 rho : Seg34.F), (seg34AccY177 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36563 : Seg34.F), (rho 36564 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX177 rho : Seg34.F), (seg34AccY177 rho : Seg34.F)⟩
        ⟨(rho 36563 : Seg34.F), (rho 36564 : Seg34.F)⟩
        ⟨(seg34AccX178 rho : Seg34.F), (seg34AccY178 rho : Seg34.F)⟩
        ⟨(rho 36577 : Seg34.F), (rho 36578 : Seg34.F)⟩ := by
  obtain ⟨r5293, r5294, r5295, r5296, r5297, r5298, r5299, r5300, r5301, r5302, r5303, r5304, r5305, r5306⟩ := seg34_rows177 rho h
  unfold Seg34.relationRow5293 at r5293
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5293
  unfold Seg34.relationRow5294 at r5294
  unfold Seg34.relationRow5295 at r5295
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5295
  unfold Seg34.relationRow5296 at r5296
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5296
  unfold Seg34.relationRow5297 at r5297
  unfold Seg34.relationRow5298 at r5298
  unfold Seg34.relationRow5299 at r5299
  unfold Seg34.relationRow5300 at r5300
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5300
  unfold Seg34.relationRow5301 at r5301
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5301
  unfold Seg34.relationRow5302 at r5302
  unfold Seg34.relationRow5303 at r5303
  unfold Seg34.relationRow5304 at r5304
  unfold Seg34.relationRow5305 at r5305
  unfold Seg34.relationRow5306 at r5306
  have hrung177 (bit : Bool) (hbit : rho 34169 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX177 rho : Seg34.F), (seg34AccY177 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36563 : Seg34.F), (rho 36564 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX177 rho : Seg34.F), (seg34AccY177 rho : Seg34.F)⟩
        ⟨(rho 36563 : Seg34.F), (rho 36564 : Seg34.F)⟩
        ⟨(seg34AccX178 rho : Seg34.F), (seg34AccY178 rho : Seg34.F)⟩
        ⟨(rho 36577 : Seg34.F), (rho 36578 : Seg34.F)⟩ := by
    have hnextx : seg34AccX178 rho = seg34AccX177 rho + rho 36572 := by
      unfold seg34AccX178 seg34AccX177
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 27]
      ring
    have hnexty : seg34AccY178 rho = seg34AccY177 rho + rho 36573 := by
      unfold seg34AccY178 seg34AccY177
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 27]
      ring
    have hsum : seg34AccX177 rho + seg34AccY177 rho = rho 36565 := by
      unfold seg34AccX177 seg34AccY177
      linear_combination r5293
    have ha0 : (rho 36563 + rho 36564) * (seg34AccX177 rho + seg34AccY177 rho) = rho 36566 := by
      rw [hsum]
      linear_combination r5294
    have ha1 : rho 36564 * seg34AccX177 rho = rho 36567 := by
      unfold seg34AccX177
      linear_combination r5295
    have ha2 : rho 36563 * seg34AccY177 rho = rho 36568 := by
      unfold seg34AccY177
      linear_combination r5296
    have ha3 : 3021 * rho 36567 * rho 36568 = rho 36569 := by
      linear_combination r5297
    have ha4 : rho 36570 * (1 + rho 36569) = rho 36567 + rho 36568 := by
      linear_combination r5298
    have ha5 : rho 36571 * (1 - rho 36569) = rho 36566 - rho 36567 - rho 36568 := by
      linear_combination r5299
    have haddx :
        rho 36570 * (1 + 3021 * (rho 36564 * seg34AccX177 rho) * (rho 36563 * seg34AccY177 rho)) =
          rho 36564 * seg34AccX177 rho + rho 36563 * seg34AccY177 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36571 * (1 - 3021 * (rho 36564 * seg34AccX177 rho) * (rho 36563 * seg34AccY177 rho)) =
          (-1) * (rho 36564 * seg34AccX177 rho) - rho 36563 * seg34AccY177 rho +
            (seg34AccY177 rho - seg34AccX177 rho * (-1)) * (rho 36563 + rho 36564) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36571 * (1 - rho 36569) = rho 36566 - rho 36567 - rho 36568 := ha5
        _ = (-1) * rho 36567 - rho 36568 + (seg34AccY177 rho - seg34AccX177 rho * (-1)) * (rho 36563 + rho 36564) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX178 rho = seg34AccX177 rho - Bool.toZMod bit * (seg34AccX177 rho - rho 36570) := by
      have hd : rho 36572 = Bool.toZMod bit * (rho 36570 - seg34AccX177 rho) := by
        rw [← hbit]
        unfold seg34AccX177
        linear_combination -r5300
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY178 rho = seg34AccY177 rho - Bool.toZMod bit * (seg34AccY177 rho - rho 36571) := by
      have hd : rho 36573 = Bool.toZMod bit * (rho 36571 - seg34AccY177 rho) := by
        rw [← hbit]
        unfold seg34AccY177
        linear_combination -r5301
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36563 * rho 36564 = rho 36574 := by linear_combination r5302
    have hd1 : rho 36563 * rho 36563 = rho 36575 := by linear_combination r5303
    have hd2 : rho 36564 * rho 36564 = rho 36576 := by linear_combination r5304
    have hd3 : rho 36577 * (rho 36564 * rho 36564 + rho 36563 * rho 36563 * (-1)) = 2 * (rho 36563 * rho 36564) := by
      rw [hd0, hd1, hd2]
      linear_combination r5305
    have hd4 : rho 36578 * (2 - (rho 36564 * rho 36564 + rho 36563 * rho 36563 * (-1))) = rho 36564 * rho 36564 - rho 36563 * rho 36563 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5306
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX177 rho : Seg34.F), (seg34AccY177 rho : Seg34.F)⟩
      ⟨(rho 36563 : Seg34.F), (rho 36564 : Seg34.F)⟩
      ⟨(rho 36570 : Seg34.F), (rho 36571 : Seg34.F)⟩
      ⟨(seg34AccX178 rho : Seg34.F), (seg34AccY178 rho : Seg34.F)⟩
      ⟨(rho 36577 : Seg34.F), (rho 36578 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung177

theorem seg34_rows178 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5307 rho ∧ Seg34.relationRow5308 rho ∧ Seg34.relationRow5309 rho ∧ Seg34.relationRow5310 rho ∧ Seg34.relationRow5311 rho ∧ Seg34.relationRow5312 rho ∧ Seg34.relationRow5313 rho ∧ Seg34.relationRow5314 rho ∧ Seg34.relationRow5315 rho ∧ Seg34.relationRow5316 rho ∧ Seg34.relationRow5317 rho ∧ Seg34.relationRow5318 rho ∧ Seg34.relationRow5319 rho ∧ Seg34.relationRow5320 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5307, r5308, r5309, r5310, r5311, r5312, r5313, r5314, r5315, r5316, r5317, r5318, r5319, r5320, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5307, r5308, r5309, r5310, r5311, r5312, r5313, r5314, r5315, r5316, r5317, r5318, r5319, r5320⟩

theorem seg34_rung178 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34170 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX178 rho : Seg34.F), (seg34AccY178 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36577 : Seg34.F), (rho 36578 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX178 rho : Seg34.F), (seg34AccY178 rho : Seg34.F)⟩
        ⟨(rho 36577 : Seg34.F), (rho 36578 : Seg34.F)⟩
        ⟨(seg34AccX179 rho : Seg34.F), (seg34AccY179 rho : Seg34.F)⟩
        ⟨(rho 36591 : Seg34.F), (rho 36592 : Seg34.F)⟩ := by
  obtain ⟨r5307, r5308, r5309, r5310, r5311, r5312, r5313, r5314, r5315, r5316, r5317, r5318, r5319, r5320⟩ := seg34_rows178 rho h
  unfold Seg34.relationRow5307 at r5307
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5307
  unfold Seg34.relationRow5308 at r5308
  unfold Seg34.relationRow5309 at r5309
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5309
  unfold Seg34.relationRow5310 at r5310
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5310
  unfold Seg34.relationRow5311 at r5311
  unfold Seg34.relationRow5312 at r5312
  unfold Seg34.relationRow5313 at r5313
  unfold Seg34.relationRow5314 at r5314
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5314
  unfold Seg34.relationRow5315 at r5315
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5315
  unfold Seg34.relationRow5316 at r5316
  unfold Seg34.relationRow5317 at r5317
  unfold Seg34.relationRow5318 at r5318
  unfold Seg34.relationRow5319 at r5319
  unfold Seg34.relationRow5320 at r5320
  have hrung178 (bit : Bool) (hbit : rho 34170 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX178 rho : Seg34.F), (seg34AccY178 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36577 : Seg34.F), (rho 36578 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX178 rho : Seg34.F), (seg34AccY178 rho : Seg34.F)⟩
        ⟨(rho 36577 : Seg34.F), (rho 36578 : Seg34.F)⟩
        ⟨(seg34AccX179 rho : Seg34.F), (seg34AccY179 rho : Seg34.F)⟩
        ⟨(rho 36591 : Seg34.F), (rho 36592 : Seg34.F)⟩ := by
    have hnextx : seg34AccX179 rho = seg34AccX178 rho + rho 36586 := by
      unfold seg34AccX179 seg34AccX178
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 28]
      ring
    have hnexty : seg34AccY179 rho = seg34AccY178 rho + rho 36587 := by
      unfold seg34AccY179 seg34AccY178
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 28]
      ring
    have hsum : seg34AccX178 rho + seg34AccY178 rho = rho 36579 := by
      unfold seg34AccX178 seg34AccY178
      linear_combination r5307
    have ha0 : (rho 36577 + rho 36578) * (seg34AccX178 rho + seg34AccY178 rho) = rho 36580 := by
      rw [hsum]
      linear_combination r5308
    have ha1 : rho 36578 * seg34AccX178 rho = rho 36581 := by
      unfold seg34AccX178
      linear_combination r5309
    have ha2 : rho 36577 * seg34AccY178 rho = rho 36582 := by
      unfold seg34AccY178
      linear_combination r5310
    have ha3 : 3021 * rho 36581 * rho 36582 = rho 36583 := by
      linear_combination r5311
    have ha4 : rho 36584 * (1 + rho 36583) = rho 36581 + rho 36582 := by
      linear_combination r5312
    have ha5 : rho 36585 * (1 - rho 36583) = rho 36580 - rho 36581 - rho 36582 := by
      linear_combination r5313
    have haddx :
        rho 36584 * (1 + 3021 * (rho 36578 * seg34AccX178 rho) * (rho 36577 * seg34AccY178 rho)) =
          rho 36578 * seg34AccX178 rho + rho 36577 * seg34AccY178 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36585 * (1 - 3021 * (rho 36578 * seg34AccX178 rho) * (rho 36577 * seg34AccY178 rho)) =
          (-1) * (rho 36578 * seg34AccX178 rho) - rho 36577 * seg34AccY178 rho +
            (seg34AccY178 rho - seg34AccX178 rho * (-1)) * (rho 36577 + rho 36578) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36585 * (1 - rho 36583) = rho 36580 - rho 36581 - rho 36582 := ha5
        _ = (-1) * rho 36581 - rho 36582 + (seg34AccY178 rho - seg34AccX178 rho * (-1)) * (rho 36577 + rho 36578) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX179 rho = seg34AccX178 rho - Bool.toZMod bit * (seg34AccX178 rho - rho 36584) := by
      have hd : rho 36586 = Bool.toZMod bit * (rho 36584 - seg34AccX178 rho) := by
        rw [← hbit]
        unfold seg34AccX178
        linear_combination -r5314
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY179 rho = seg34AccY178 rho - Bool.toZMod bit * (seg34AccY178 rho - rho 36585) := by
      have hd : rho 36587 = Bool.toZMod bit * (rho 36585 - seg34AccY178 rho) := by
        rw [← hbit]
        unfold seg34AccY178
        linear_combination -r5315
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36577 * rho 36578 = rho 36588 := by linear_combination r5316
    have hd1 : rho 36577 * rho 36577 = rho 36589 := by linear_combination r5317
    have hd2 : rho 36578 * rho 36578 = rho 36590 := by linear_combination r5318
    have hd3 : rho 36591 * (rho 36578 * rho 36578 + rho 36577 * rho 36577 * (-1)) = 2 * (rho 36577 * rho 36578) := by
      rw [hd0, hd1, hd2]
      linear_combination r5319
    have hd4 : rho 36592 * (2 - (rho 36578 * rho 36578 + rho 36577 * rho 36577 * (-1))) = rho 36578 * rho 36578 - rho 36577 * rho 36577 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5320
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX178 rho : Seg34.F), (seg34AccY178 rho : Seg34.F)⟩
      ⟨(rho 36577 : Seg34.F), (rho 36578 : Seg34.F)⟩
      ⟨(rho 36584 : Seg34.F), (rho 36585 : Seg34.F)⟩
      ⟨(seg34AccX179 rho : Seg34.F), (seg34AccY179 rho : Seg34.F)⟩
      ⟨(rho 36591 : Seg34.F), (rho 36592 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung178

theorem seg34_rows179 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5321 rho ∧ Seg34.relationRow5322 rho ∧ Seg34.relationRow5323 rho ∧ Seg34.relationRow5324 rho ∧ Seg34.relationRow5325 rho ∧ Seg34.relationRow5326 rho ∧ Seg34.relationRow5327 rho ∧ Seg34.relationRow5328 rho ∧ Seg34.relationRow5329 rho ∧ Seg34.relationRow5330 rho ∧ Seg34.relationRow5331 rho ∧ Seg34.relationRow5332 rho ∧ Seg34.relationRow5333 rho ∧ Seg34.relationRow5334 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5321, r5322, r5323, r5324, r5325, r5326, r5327, r5328, r5329, r5330, r5331, r5332, r5333, r5334, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5321, r5322, r5323, r5324, r5325, r5326, r5327, r5328, r5329, r5330, r5331, r5332, r5333, r5334⟩

theorem seg34_rung179 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34171 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX179 rho : Seg34.F), (seg34AccY179 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36591 : Seg34.F), (rho 36592 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX179 rho : Seg34.F), (seg34AccY179 rho : Seg34.F)⟩
        ⟨(rho 36591 : Seg34.F), (rho 36592 : Seg34.F)⟩
        ⟨(seg34AccX180 rho : Seg34.F), (seg34AccY180 rho : Seg34.F)⟩
        ⟨(rho 36605 : Seg34.F), (rho 36606 : Seg34.F)⟩ := by
  obtain ⟨r5321, r5322, r5323, r5324, r5325, r5326, r5327, r5328, r5329, r5330, r5331, r5332, r5333, r5334⟩ := seg34_rows179 rho h
  unfold Seg34.relationRow5321 at r5321
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5321
  unfold Seg34.relationRow5322 at r5322
  unfold Seg34.relationRow5323 at r5323
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5323
  unfold Seg34.relationRow5324 at r5324
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5324
  unfold Seg34.relationRow5325 at r5325
  unfold Seg34.relationRow5326 at r5326
  unfold Seg34.relationRow5327 at r5327
  unfold Seg34.relationRow5328 at r5328
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5328
  unfold Seg34.relationRow5329 at r5329
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5329
  unfold Seg34.relationRow5330 at r5330
  unfold Seg34.relationRow5331 at r5331
  unfold Seg34.relationRow5332 at r5332
  unfold Seg34.relationRow5333 at r5333
  unfold Seg34.relationRow5334 at r5334
  have hrung179 (bit : Bool) (hbit : rho 34171 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX179 rho : Seg34.F), (seg34AccY179 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36591 : Seg34.F), (rho 36592 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX179 rho : Seg34.F), (seg34AccY179 rho : Seg34.F)⟩
        ⟨(rho 36591 : Seg34.F), (rho 36592 : Seg34.F)⟩
        ⟨(seg34AccX180 rho : Seg34.F), (seg34AccY180 rho : Seg34.F)⟩
        ⟨(rho 36605 : Seg34.F), (rho 36606 : Seg34.F)⟩ := by
    have hnextx : seg34AccX180 rho = seg34AccX179 rho + rho 36600 := by
      unfold seg34AccX180 seg34AccX179
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 29]
      ring
    have hnexty : seg34AccY180 rho = seg34AccY179 rho + rho 36601 := by
      unfold seg34AccY180 seg34AccY179
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 29]
      ring
    have hsum : seg34AccX179 rho + seg34AccY179 rho = rho 36593 := by
      unfold seg34AccX179 seg34AccY179
      linear_combination r5321
    have ha0 : (rho 36591 + rho 36592) * (seg34AccX179 rho + seg34AccY179 rho) = rho 36594 := by
      rw [hsum]
      linear_combination r5322
    have ha1 : rho 36592 * seg34AccX179 rho = rho 36595 := by
      unfold seg34AccX179
      linear_combination r5323
    have ha2 : rho 36591 * seg34AccY179 rho = rho 36596 := by
      unfold seg34AccY179
      linear_combination r5324
    have ha3 : 3021 * rho 36595 * rho 36596 = rho 36597 := by
      linear_combination r5325
    have ha4 : rho 36598 * (1 + rho 36597) = rho 36595 + rho 36596 := by
      linear_combination r5326
    have ha5 : rho 36599 * (1 - rho 36597) = rho 36594 - rho 36595 - rho 36596 := by
      linear_combination r5327
    have haddx :
        rho 36598 * (1 + 3021 * (rho 36592 * seg34AccX179 rho) * (rho 36591 * seg34AccY179 rho)) =
          rho 36592 * seg34AccX179 rho + rho 36591 * seg34AccY179 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36599 * (1 - 3021 * (rho 36592 * seg34AccX179 rho) * (rho 36591 * seg34AccY179 rho)) =
          (-1) * (rho 36592 * seg34AccX179 rho) - rho 36591 * seg34AccY179 rho +
            (seg34AccY179 rho - seg34AccX179 rho * (-1)) * (rho 36591 + rho 36592) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36599 * (1 - rho 36597) = rho 36594 - rho 36595 - rho 36596 := ha5
        _ = (-1) * rho 36595 - rho 36596 + (seg34AccY179 rho - seg34AccX179 rho * (-1)) * (rho 36591 + rho 36592) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX180 rho = seg34AccX179 rho - Bool.toZMod bit * (seg34AccX179 rho - rho 36598) := by
      have hd : rho 36600 = Bool.toZMod bit * (rho 36598 - seg34AccX179 rho) := by
        rw [← hbit]
        unfold seg34AccX179
        linear_combination -r5328
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY180 rho = seg34AccY179 rho - Bool.toZMod bit * (seg34AccY179 rho - rho 36599) := by
      have hd : rho 36601 = Bool.toZMod bit * (rho 36599 - seg34AccY179 rho) := by
        rw [← hbit]
        unfold seg34AccY179
        linear_combination -r5329
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36591 * rho 36592 = rho 36602 := by linear_combination r5330
    have hd1 : rho 36591 * rho 36591 = rho 36603 := by linear_combination r5331
    have hd2 : rho 36592 * rho 36592 = rho 36604 := by linear_combination r5332
    have hd3 : rho 36605 * (rho 36592 * rho 36592 + rho 36591 * rho 36591 * (-1)) = 2 * (rho 36591 * rho 36592) := by
      rw [hd0, hd1, hd2]
      linear_combination r5333
    have hd4 : rho 36606 * (2 - (rho 36592 * rho 36592 + rho 36591 * rho 36591 * (-1))) = rho 36592 * rho 36592 - rho 36591 * rho 36591 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5334
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX179 rho : Seg34.F), (seg34AccY179 rho : Seg34.F)⟩
      ⟨(rho 36591 : Seg34.F), (rho 36592 : Seg34.F)⟩
      ⟨(rho 36598 : Seg34.F), (rho 36599 : Seg34.F)⟩
      ⟨(seg34AccX180 rho : Seg34.F), (seg34AccY180 rho : Seg34.F)⟩
      ⟨(rho 36605 : Seg34.F), (rho 36606 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung179

theorem seg34_rows180 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5335 rho ∧ Seg34.relationRow5336 rho ∧ Seg34.relationRow5337 rho ∧ Seg34.relationRow5338 rho ∧ Seg34.relationRow5339 rho ∧ Seg34.relationRow5340 rho ∧ Seg34.relationRow5341 rho ∧ Seg34.relationRow5342 rho ∧ Seg34.relationRow5343 rho ∧ Seg34.relationRow5344 rho ∧ Seg34.relationRow5345 rho ∧ Seg34.relationRow5346 rho ∧ Seg34.relationRow5347 rho ∧ Seg34.relationRow5348 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5335, r5336, r5337, r5338, r5339, r5340, r5341, r5342, r5343, r5344, r5345, r5346, r5347, r5348, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5335, r5336, r5337, r5338, r5339, r5340, r5341, r5342, r5343, r5344, r5345, r5346, r5347, r5348⟩

theorem seg34_rung180 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34172 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX180 rho : Seg34.F), (seg34AccY180 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36605 : Seg34.F), (rho 36606 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX180 rho : Seg34.F), (seg34AccY180 rho : Seg34.F)⟩
        ⟨(rho 36605 : Seg34.F), (rho 36606 : Seg34.F)⟩
        ⟨(seg34AccX181 rho : Seg34.F), (seg34AccY181 rho : Seg34.F)⟩
        ⟨(rho 36619 : Seg34.F), (rho 36620 : Seg34.F)⟩ := by
  obtain ⟨r5335, r5336, r5337, r5338, r5339, r5340, r5341, r5342, r5343, r5344, r5345, r5346, r5347, r5348⟩ := seg34_rows180 rho h
  unfold Seg34.relationRow5335 at r5335
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5335
  unfold Seg34.relationRow5336 at r5336
  unfold Seg34.relationRow5337 at r5337
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5337
  unfold Seg34.relationRow5338 at r5338
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5338
  unfold Seg34.relationRow5339 at r5339
  unfold Seg34.relationRow5340 at r5340
  unfold Seg34.relationRow5341 at r5341
  unfold Seg34.relationRow5342 at r5342
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5342
  unfold Seg34.relationRow5343 at r5343
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5343
  unfold Seg34.relationRow5344 at r5344
  unfold Seg34.relationRow5345 at r5345
  unfold Seg34.relationRow5346 at r5346
  unfold Seg34.relationRow5347 at r5347
  unfold Seg34.relationRow5348 at r5348
  have hrung180 (bit : Bool) (hbit : rho 34172 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX180 rho : Seg34.F), (seg34AccY180 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36605 : Seg34.F), (rho 36606 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX180 rho : Seg34.F), (seg34AccY180 rho : Seg34.F)⟩
        ⟨(rho 36605 : Seg34.F), (rho 36606 : Seg34.F)⟩
        ⟨(seg34AccX181 rho : Seg34.F), (seg34AccY181 rho : Seg34.F)⟩
        ⟨(rho 36619 : Seg34.F), (rho 36620 : Seg34.F)⟩ := by
    have hnextx : seg34AccX181 rho = seg34AccX180 rho + rho 36614 := by
      unfold seg34AccX181 seg34AccX180
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 30]
      ring
    have hnexty : seg34AccY181 rho = seg34AccY180 rho + rho 36615 := by
      unfold seg34AccY181 seg34AccY180
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 30]
      ring
    have hsum : seg34AccX180 rho + seg34AccY180 rho = rho 36607 := by
      unfold seg34AccX180 seg34AccY180
      linear_combination r5335
    have ha0 : (rho 36605 + rho 36606) * (seg34AccX180 rho + seg34AccY180 rho) = rho 36608 := by
      rw [hsum]
      linear_combination r5336
    have ha1 : rho 36606 * seg34AccX180 rho = rho 36609 := by
      unfold seg34AccX180
      linear_combination r5337
    have ha2 : rho 36605 * seg34AccY180 rho = rho 36610 := by
      unfold seg34AccY180
      linear_combination r5338
    have ha3 : 3021 * rho 36609 * rho 36610 = rho 36611 := by
      linear_combination r5339
    have ha4 : rho 36612 * (1 + rho 36611) = rho 36609 + rho 36610 := by
      linear_combination r5340
    have ha5 : rho 36613 * (1 - rho 36611) = rho 36608 - rho 36609 - rho 36610 := by
      linear_combination r5341
    have haddx :
        rho 36612 * (1 + 3021 * (rho 36606 * seg34AccX180 rho) * (rho 36605 * seg34AccY180 rho)) =
          rho 36606 * seg34AccX180 rho + rho 36605 * seg34AccY180 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36613 * (1 - 3021 * (rho 36606 * seg34AccX180 rho) * (rho 36605 * seg34AccY180 rho)) =
          (-1) * (rho 36606 * seg34AccX180 rho) - rho 36605 * seg34AccY180 rho +
            (seg34AccY180 rho - seg34AccX180 rho * (-1)) * (rho 36605 + rho 36606) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36613 * (1 - rho 36611) = rho 36608 - rho 36609 - rho 36610 := ha5
        _ = (-1) * rho 36609 - rho 36610 + (seg34AccY180 rho - seg34AccX180 rho * (-1)) * (rho 36605 + rho 36606) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX181 rho = seg34AccX180 rho - Bool.toZMod bit * (seg34AccX180 rho - rho 36612) := by
      have hd : rho 36614 = Bool.toZMod bit * (rho 36612 - seg34AccX180 rho) := by
        rw [← hbit]
        unfold seg34AccX180
        linear_combination -r5342
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY181 rho = seg34AccY180 rho - Bool.toZMod bit * (seg34AccY180 rho - rho 36613) := by
      have hd : rho 36615 = Bool.toZMod bit * (rho 36613 - seg34AccY180 rho) := by
        rw [← hbit]
        unfold seg34AccY180
        linear_combination -r5343
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36605 * rho 36606 = rho 36616 := by linear_combination r5344
    have hd1 : rho 36605 * rho 36605 = rho 36617 := by linear_combination r5345
    have hd2 : rho 36606 * rho 36606 = rho 36618 := by linear_combination r5346
    have hd3 : rho 36619 * (rho 36606 * rho 36606 + rho 36605 * rho 36605 * (-1)) = 2 * (rho 36605 * rho 36606) := by
      rw [hd0, hd1, hd2]
      linear_combination r5347
    have hd4 : rho 36620 * (2 - (rho 36606 * rho 36606 + rho 36605 * rho 36605 * (-1))) = rho 36606 * rho 36606 - rho 36605 * rho 36605 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5348
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX180 rho : Seg34.F), (seg34AccY180 rho : Seg34.F)⟩
      ⟨(rho 36605 : Seg34.F), (rho 36606 : Seg34.F)⟩
      ⟨(rho 36612 : Seg34.F), (rho 36613 : Seg34.F)⟩
      ⟨(seg34AccX181 rho : Seg34.F), (seg34AccY181 rho : Seg34.F)⟩
      ⟨(rho 36619 : Seg34.F), (rho 36620 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung180

theorem seg34_rows181 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5349 rho ∧ Seg34.relationRow5350 rho ∧ Seg34.relationRow5351 rho ∧ Seg34.relationRow5352 rho ∧ Seg34.relationRow5353 rho ∧ Seg34.relationRow5354 rho ∧ Seg34.relationRow5355 rho ∧ Seg34.relationRow5356 rho ∧ Seg34.relationRow5357 rho ∧ Seg34.relationRow5358 rho ∧ Seg34.relationRow5359 rho ∧ Seg34.relationRow5360 rho ∧ Seg34.relationRow5361 rho ∧ Seg34.relationRow5362 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5349, r5350, r5351, r5352, r5353, r5354, r5355, r5356, r5357, r5358, r5359⟩
  unfold Seg34.relationPart67 at p67
  rcases p67 with ⟨r5360, r5361, r5362, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5349, r5350, r5351, r5352, r5353, r5354, r5355, r5356, r5357, r5358, r5359, r5360, r5361, r5362⟩

theorem seg34_rung181 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34173 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX181 rho : Seg34.F), (seg34AccY181 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36619 : Seg34.F), (rho 36620 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX181 rho : Seg34.F), (seg34AccY181 rho : Seg34.F)⟩
        ⟨(rho 36619 : Seg34.F), (rho 36620 : Seg34.F)⟩
        ⟨(seg34AccX182 rho : Seg34.F), (seg34AccY182 rho : Seg34.F)⟩
        ⟨(rho 36633 : Seg34.F), (rho 36634 : Seg34.F)⟩ := by
  obtain ⟨r5349, r5350, r5351, r5352, r5353, r5354, r5355, r5356, r5357, r5358, r5359, r5360, r5361, r5362⟩ := seg34_rows181 rho h
  unfold Seg34.relationRow5349 at r5349
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5349
  unfold Seg34.relationRow5350 at r5350
  unfold Seg34.relationRow5351 at r5351
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5351
  unfold Seg34.relationRow5352 at r5352
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5352
  unfold Seg34.relationRow5353 at r5353
  unfold Seg34.relationRow5354 at r5354
  unfold Seg34.relationRow5355 at r5355
  unfold Seg34.relationRow5356 at r5356
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5356
  unfold Seg34.relationRow5357 at r5357
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5357
  unfold Seg34.relationRow5358 at r5358
  unfold Seg34.relationRow5359 at r5359
  unfold Seg34.relationRow5360 at r5360
  unfold Seg34.relationRow5361 at r5361
  unfold Seg34.relationRow5362 at r5362
  have hrung181 (bit : Bool) (hbit : rho 34173 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX181 rho : Seg34.F), (seg34AccY181 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36619 : Seg34.F), (rho 36620 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX181 rho : Seg34.F), (seg34AccY181 rho : Seg34.F)⟩
        ⟨(rho 36619 : Seg34.F), (rho 36620 : Seg34.F)⟩
        ⟨(seg34AccX182 rho : Seg34.F), (seg34AccY182 rho : Seg34.F)⟩
        ⟨(rho 36633 : Seg34.F), (rho 36634 : Seg34.F)⟩ := by
    have hnextx : seg34AccX182 rho = seg34AccX181 rho + rho 36628 := by
      unfold seg34AccX182 seg34AccX181
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 31]
      ring
    have hnexty : seg34AccY182 rho = seg34AccY181 rho + rho 36629 := by
      unfold seg34AccY182 seg34AccY181
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 31]
      ring
    have hsum : seg34AccX181 rho + seg34AccY181 rho = rho 36621 := by
      unfold seg34AccX181 seg34AccY181
      linear_combination r5349
    have ha0 : (rho 36619 + rho 36620) * (seg34AccX181 rho + seg34AccY181 rho) = rho 36622 := by
      rw [hsum]
      linear_combination r5350
    have ha1 : rho 36620 * seg34AccX181 rho = rho 36623 := by
      unfold seg34AccX181
      linear_combination r5351
    have ha2 : rho 36619 * seg34AccY181 rho = rho 36624 := by
      unfold seg34AccY181
      linear_combination r5352
    have ha3 : 3021 * rho 36623 * rho 36624 = rho 36625 := by
      linear_combination r5353
    have ha4 : rho 36626 * (1 + rho 36625) = rho 36623 + rho 36624 := by
      linear_combination r5354
    have ha5 : rho 36627 * (1 - rho 36625) = rho 36622 - rho 36623 - rho 36624 := by
      linear_combination r5355
    have haddx :
        rho 36626 * (1 + 3021 * (rho 36620 * seg34AccX181 rho) * (rho 36619 * seg34AccY181 rho)) =
          rho 36620 * seg34AccX181 rho + rho 36619 * seg34AccY181 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36627 * (1 - 3021 * (rho 36620 * seg34AccX181 rho) * (rho 36619 * seg34AccY181 rho)) =
          (-1) * (rho 36620 * seg34AccX181 rho) - rho 36619 * seg34AccY181 rho +
            (seg34AccY181 rho - seg34AccX181 rho * (-1)) * (rho 36619 + rho 36620) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36627 * (1 - rho 36625) = rho 36622 - rho 36623 - rho 36624 := ha5
        _ = (-1) * rho 36623 - rho 36624 + (seg34AccY181 rho - seg34AccX181 rho * (-1)) * (rho 36619 + rho 36620) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX182 rho = seg34AccX181 rho - Bool.toZMod bit * (seg34AccX181 rho - rho 36626) := by
      have hd : rho 36628 = Bool.toZMod bit * (rho 36626 - seg34AccX181 rho) := by
        rw [← hbit]
        unfold seg34AccX181
        linear_combination -r5356
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY182 rho = seg34AccY181 rho - Bool.toZMod bit * (seg34AccY181 rho - rho 36627) := by
      have hd : rho 36629 = Bool.toZMod bit * (rho 36627 - seg34AccY181 rho) := by
        rw [← hbit]
        unfold seg34AccY181
        linear_combination -r5357
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36619 * rho 36620 = rho 36630 := by linear_combination r5358
    have hd1 : rho 36619 * rho 36619 = rho 36631 := by linear_combination r5359
    have hd2 : rho 36620 * rho 36620 = rho 36632 := by linear_combination r5360
    have hd3 : rho 36633 * (rho 36620 * rho 36620 + rho 36619 * rho 36619 * (-1)) = 2 * (rho 36619 * rho 36620) := by
      rw [hd0, hd1, hd2]
      linear_combination r5361
    have hd4 : rho 36634 * (2 - (rho 36620 * rho 36620 + rho 36619 * rho 36619 * (-1))) = rho 36620 * rho 36620 - rho 36619 * rho 36619 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5362
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX181 rho : Seg34.F), (seg34AccY181 rho : Seg34.F)⟩
      ⟨(rho 36619 : Seg34.F), (rho 36620 : Seg34.F)⟩
      ⟨(rho 36626 : Seg34.F), (rho 36627 : Seg34.F)⟩
      ⟨(seg34AccX182 rho : Seg34.F), (seg34AccY182 rho : Seg34.F)⟩
      ⟨(rho 36633 : Seg34.F), (rho 36634 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung181

theorem seg34_rows182 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5363 rho ∧ Seg34.relationRow5364 rho ∧ Seg34.relationRow5365 rho ∧ Seg34.relationRow5366 rho ∧ Seg34.relationRow5367 rho ∧ Seg34.relationRow5368 rho ∧ Seg34.relationRow5369 rho ∧ Seg34.relationRow5370 rho ∧ Seg34.relationRow5371 rho ∧ Seg34.relationRow5372 rho ∧ Seg34.relationRow5373 rho ∧ Seg34.relationRow5374 rho ∧ Seg34.relationRow5375 rho ∧ Seg34.relationRow5376 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart67 at p67
  rcases p67 with ⟨_, _, _, r5363, r5364, r5365, r5366, r5367, r5368, r5369, r5370, r5371, r5372, r5373, r5374, r5375, r5376, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5363, r5364, r5365, r5366, r5367, r5368, r5369, r5370, r5371, r5372, r5373, r5374, r5375, r5376⟩

theorem seg34_rung182 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34174 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX182 rho : Seg34.F), (seg34AccY182 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36633 : Seg34.F), (rho 36634 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX182 rho : Seg34.F), (seg34AccY182 rho : Seg34.F)⟩
        ⟨(rho 36633 : Seg34.F), (rho 36634 : Seg34.F)⟩
        ⟨(seg34AccX183 rho : Seg34.F), (seg34AccY183 rho : Seg34.F)⟩
        ⟨(rho 36647 : Seg34.F), (rho 36648 : Seg34.F)⟩ := by
  obtain ⟨r5363, r5364, r5365, r5366, r5367, r5368, r5369, r5370, r5371, r5372, r5373, r5374, r5375, r5376⟩ := seg34_rows182 rho h
  unfold Seg34.relationRow5363 at r5363
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5363
  unfold Seg34.relationRow5364 at r5364
  unfold Seg34.relationRow5365 at r5365
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5365
  unfold Seg34.relationRow5366 at r5366
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5366
  unfold Seg34.relationRow5367 at r5367
  unfold Seg34.relationRow5368 at r5368
  unfold Seg34.relationRow5369 at r5369
  unfold Seg34.relationRow5370 at r5370
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5370
  unfold Seg34.relationRow5371 at r5371
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5371
  unfold Seg34.relationRow5372 at r5372
  unfold Seg34.relationRow5373 at r5373
  unfold Seg34.relationRow5374 at r5374
  unfold Seg34.relationRow5375 at r5375
  unfold Seg34.relationRow5376 at r5376
  have hrung182 (bit : Bool) (hbit : rho 34174 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX182 rho : Seg34.F), (seg34AccY182 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36633 : Seg34.F), (rho 36634 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX182 rho : Seg34.F), (seg34AccY182 rho : Seg34.F)⟩
        ⟨(rho 36633 : Seg34.F), (rho 36634 : Seg34.F)⟩
        ⟨(seg34AccX183 rho : Seg34.F), (seg34AccY183 rho : Seg34.F)⟩
        ⟨(rho 36647 : Seg34.F), (rho 36648 : Seg34.F)⟩ := by
    have hnextx : seg34AccX183 rho = seg34AccX182 rho + rho 36642 := by
      unfold seg34AccX183 seg34AccX182
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 32]
      ring
    have hnexty : seg34AccY183 rho = seg34AccY182 rho + rho 36643 := by
      unfold seg34AccY183 seg34AccY182
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 32]
      ring
    have hsum : seg34AccX182 rho + seg34AccY182 rho = rho 36635 := by
      unfold seg34AccX182 seg34AccY182
      linear_combination r5363
    have ha0 : (rho 36633 + rho 36634) * (seg34AccX182 rho + seg34AccY182 rho) = rho 36636 := by
      rw [hsum]
      linear_combination r5364
    have ha1 : rho 36634 * seg34AccX182 rho = rho 36637 := by
      unfold seg34AccX182
      linear_combination r5365
    have ha2 : rho 36633 * seg34AccY182 rho = rho 36638 := by
      unfold seg34AccY182
      linear_combination r5366
    have ha3 : 3021 * rho 36637 * rho 36638 = rho 36639 := by
      linear_combination r5367
    have ha4 : rho 36640 * (1 + rho 36639) = rho 36637 + rho 36638 := by
      linear_combination r5368
    have ha5 : rho 36641 * (1 - rho 36639) = rho 36636 - rho 36637 - rho 36638 := by
      linear_combination r5369
    have haddx :
        rho 36640 * (1 + 3021 * (rho 36634 * seg34AccX182 rho) * (rho 36633 * seg34AccY182 rho)) =
          rho 36634 * seg34AccX182 rho + rho 36633 * seg34AccY182 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36641 * (1 - 3021 * (rho 36634 * seg34AccX182 rho) * (rho 36633 * seg34AccY182 rho)) =
          (-1) * (rho 36634 * seg34AccX182 rho) - rho 36633 * seg34AccY182 rho +
            (seg34AccY182 rho - seg34AccX182 rho * (-1)) * (rho 36633 + rho 36634) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36641 * (1 - rho 36639) = rho 36636 - rho 36637 - rho 36638 := ha5
        _ = (-1) * rho 36637 - rho 36638 + (seg34AccY182 rho - seg34AccX182 rho * (-1)) * (rho 36633 + rho 36634) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX183 rho = seg34AccX182 rho - Bool.toZMod bit * (seg34AccX182 rho - rho 36640) := by
      have hd : rho 36642 = Bool.toZMod bit * (rho 36640 - seg34AccX182 rho) := by
        rw [← hbit]
        unfold seg34AccX182
        linear_combination -r5370
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY183 rho = seg34AccY182 rho - Bool.toZMod bit * (seg34AccY182 rho - rho 36641) := by
      have hd : rho 36643 = Bool.toZMod bit * (rho 36641 - seg34AccY182 rho) := by
        rw [← hbit]
        unfold seg34AccY182
        linear_combination -r5371
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36633 * rho 36634 = rho 36644 := by linear_combination r5372
    have hd1 : rho 36633 * rho 36633 = rho 36645 := by linear_combination r5373
    have hd2 : rho 36634 * rho 36634 = rho 36646 := by linear_combination r5374
    have hd3 : rho 36647 * (rho 36634 * rho 36634 + rho 36633 * rho 36633 * (-1)) = 2 * (rho 36633 * rho 36634) := by
      rw [hd0, hd1, hd2]
      linear_combination r5375
    have hd4 : rho 36648 * (2 - (rho 36634 * rho 36634 + rho 36633 * rho 36633 * (-1))) = rho 36634 * rho 36634 - rho 36633 * rho 36633 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5376
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX182 rho : Seg34.F), (seg34AccY182 rho : Seg34.F)⟩
      ⟨(rho 36633 : Seg34.F), (rho 36634 : Seg34.F)⟩
      ⟨(rho 36640 : Seg34.F), (rho 36641 : Seg34.F)⟩
      ⟨(seg34AccX183 rho : Seg34.F), (seg34AccY183 rho : Seg34.F)⟩
      ⟨(rho 36647 : Seg34.F), (rho 36648 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung182

theorem seg34_rows183 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5377 rho ∧ Seg34.relationRow5378 rho ∧ Seg34.relationRow5379 rho ∧ Seg34.relationRow5380 rho ∧ Seg34.relationRow5381 rho ∧ Seg34.relationRow5382 rho ∧ Seg34.relationRow5383 rho ∧ Seg34.relationRow5384 rho ∧ Seg34.relationRow5385 rho ∧ Seg34.relationRow5386 rho ∧ Seg34.relationRow5387 rho ∧ Seg34.relationRow5388 rho ∧ Seg34.relationRow5389 rho ∧ Seg34.relationRow5390 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5377, r5378, r5379, r5380, r5381, r5382, r5383, r5384, r5385, r5386, r5387, r5388, r5389, r5390, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5377, r5378, r5379, r5380, r5381, r5382, r5383, r5384, r5385, r5386, r5387, r5388, r5389, r5390⟩

theorem seg34_rung183 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34175 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX183 rho : Seg34.F), (seg34AccY183 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36647 : Seg34.F), (rho 36648 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX183 rho : Seg34.F), (seg34AccY183 rho : Seg34.F)⟩
        ⟨(rho 36647 : Seg34.F), (rho 36648 : Seg34.F)⟩
        ⟨(seg34AccX184 rho : Seg34.F), (seg34AccY184 rho : Seg34.F)⟩
        ⟨(rho 36661 : Seg34.F), (rho 36662 : Seg34.F)⟩ := by
  obtain ⟨r5377, r5378, r5379, r5380, r5381, r5382, r5383, r5384, r5385, r5386, r5387, r5388, r5389, r5390⟩ := seg34_rows183 rho h
  unfold Seg34.relationRow5377 at r5377
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5377
  unfold Seg34.relationRow5378 at r5378
  unfold Seg34.relationRow5379 at r5379
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5379
  unfold Seg34.relationRow5380 at r5380
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5380
  unfold Seg34.relationRow5381 at r5381
  unfold Seg34.relationRow5382 at r5382
  unfold Seg34.relationRow5383 at r5383
  unfold Seg34.relationRow5384 at r5384
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5384
  unfold Seg34.relationRow5385 at r5385
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5385
  unfold Seg34.relationRow5386 at r5386
  unfold Seg34.relationRow5387 at r5387
  unfold Seg34.relationRow5388 at r5388
  unfold Seg34.relationRow5389 at r5389
  unfold Seg34.relationRow5390 at r5390
  have hrung183 (bit : Bool) (hbit : rho 34175 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX183 rho : Seg34.F), (seg34AccY183 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36647 : Seg34.F), (rho 36648 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX183 rho : Seg34.F), (seg34AccY183 rho : Seg34.F)⟩
        ⟨(rho 36647 : Seg34.F), (rho 36648 : Seg34.F)⟩
        ⟨(seg34AccX184 rho : Seg34.F), (seg34AccY184 rho : Seg34.F)⟩
        ⟨(rho 36661 : Seg34.F), (rho 36662 : Seg34.F)⟩ := by
    have hnextx : seg34AccX184 rho = seg34AccX183 rho + rho 36656 := by
      unfold seg34AccX184 seg34AccX183
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 33]
      ring
    have hnexty : seg34AccY184 rho = seg34AccY183 rho + rho 36657 := by
      unfold seg34AccY184 seg34AccY183
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 33]
      ring
    have hsum : seg34AccX183 rho + seg34AccY183 rho = rho 36649 := by
      unfold seg34AccX183 seg34AccY183
      linear_combination r5377
    have ha0 : (rho 36647 + rho 36648) * (seg34AccX183 rho + seg34AccY183 rho) = rho 36650 := by
      rw [hsum]
      linear_combination r5378
    have ha1 : rho 36648 * seg34AccX183 rho = rho 36651 := by
      unfold seg34AccX183
      linear_combination r5379
    have ha2 : rho 36647 * seg34AccY183 rho = rho 36652 := by
      unfold seg34AccY183
      linear_combination r5380
    have ha3 : 3021 * rho 36651 * rho 36652 = rho 36653 := by
      linear_combination r5381
    have ha4 : rho 36654 * (1 + rho 36653) = rho 36651 + rho 36652 := by
      linear_combination r5382
    have ha5 : rho 36655 * (1 - rho 36653) = rho 36650 - rho 36651 - rho 36652 := by
      linear_combination r5383
    have haddx :
        rho 36654 * (1 + 3021 * (rho 36648 * seg34AccX183 rho) * (rho 36647 * seg34AccY183 rho)) =
          rho 36648 * seg34AccX183 rho + rho 36647 * seg34AccY183 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36655 * (1 - 3021 * (rho 36648 * seg34AccX183 rho) * (rho 36647 * seg34AccY183 rho)) =
          (-1) * (rho 36648 * seg34AccX183 rho) - rho 36647 * seg34AccY183 rho +
            (seg34AccY183 rho - seg34AccX183 rho * (-1)) * (rho 36647 + rho 36648) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36655 * (1 - rho 36653) = rho 36650 - rho 36651 - rho 36652 := ha5
        _ = (-1) * rho 36651 - rho 36652 + (seg34AccY183 rho - seg34AccX183 rho * (-1)) * (rho 36647 + rho 36648) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX184 rho = seg34AccX183 rho - Bool.toZMod bit * (seg34AccX183 rho - rho 36654) := by
      have hd : rho 36656 = Bool.toZMod bit * (rho 36654 - seg34AccX183 rho) := by
        rw [← hbit]
        unfold seg34AccX183
        linear_combination -r5384
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY184 rho = seg34AccY183 rho - Bool.toZMod bit * (seg34AccY183 rho - rho 36655) := by
      have hd : rho 36657 = Bool.toZMod bit * (rho 36655 - seg34AccY183 rho) := by
        rw [← hbit]
        unfold seg34AccY183
        linear_combination -r5385
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36647 * rho 36648 = rho 36658 := by linear_combination r5386
    have hd1 : rho 36647 * rho 36647 = rho 36659 := by linear_combination r5387
    have hd2 : rho 36648 * rho 36648 = rho 36660 := by linear_combination r5388
    have hd3 : rho 36661 * (rho 36648 * rho 36648 + rho 36647 * rho 36647 * (-1)) = 2 * (rho 36647 * rho 36648) := by
      rw [hd0, hd1, hd2]
      linear_combination r5389
    have hd4 : rho 36662 * (2 - (rho 36648 * rho 36648 + rho 36647 * rho 36647 * (-1))) = rho 36648 * rho 36648 - rho 36647 * rho 36647 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5390
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX183 rho : Seg34.F), (seg34AccY183 rho : Seg34.F)⟩
      ⟨(rho 36647 : Seg34.F), (rho 36648 : Seg34.F)⟩
      ⟨(rho 36654 : Seg34.F), (rho 36655 : Seg34.F)⟩
      ⟨(seg34AccX184 rho : Seg34.F), (seg34AccY184 rho : Seg34.F)⟩
      ⟨(rho 36661 : Seg34.F), (rho 36662 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung183

theorem seg34_rows184 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5391 rho ∧ Seg34.relationRow5392 rho ∧ Seg34.relationRow5393 rho ∧ Seg34.relationRow5394 rho ∧ Seg34.relationRow5395 rho ∧ Seg34.relationRow5396 rho ∧ Seg34.relationRow5397 rho ∧ Seg34.relationRow5398 rho ∧ Seg34.relationRow5399 rho ∧ Seg34.relationRow5400 rho ∧ Seg34.relationRow5401 rho ∧ Seg34.relationRow5402 rho ∧ Seg34.relationRow5403 rho ∧ Seg34.relationRow5404 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5391, r5392, r5393, r5394, r5395, r5396, r5397, r5398, r5399, r5400, r5401, r5402, r5403, r5404, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5391, r5392, r5393, r5394, r5395, r5396, r5397, r5398, r5399, r5400, r5401, r5402, r5403, r5404⟩

theorem seg34_rung184 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34176 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX184 rho : Seg34.F), (seg34AccY184 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36661 : Seg34.F), (rho 36662 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX184 rho : Seg34.F), (seg34AccY184 rho : Seg34.F)⟩
        ⟨(rho 36661 : Seg34.F), (rho 36662 : Seg34.F)⟩
        ⟨(seg34AccX185 rho : Seg34.F), (seg34AccY185 rho : Seg34.F)⟩
        ⟨(rho 36675 : Seg34.F), (rho 36676 : Seg34.F)⟩ := by
  obtain ⟨r5391, r5392, r5393, r5394, r5395, r5396, r5397, r5398, r5399, r5400, r5401, r5402, r5403, r5404⟩ := seg34_rows184 rho h
  unfold Seg34.relationRow5391 at r5391
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5391
  unfold Seg34.relationRow5392 at r5392
  unfold Seg34.relationRow5393 at r5393
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5393
  unfold Seg34.relationRow5394 at r5394
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5394
  unfold Seg34.relationRow5395 at r5395
  unfold Seg34.relationRow5396 at r5396
  unfold Seg34.relationRow5397 at r5397
  unfold Seg34.relationRow5398 at r5398
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5398
  unfold Seg34.relationRow5399 at r5399
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5399
  unfold Seg34.relationRow5400 at r5400
  unfold Seg34.relationRow5401 at r5401
  unfold Seg34.relationRow5402 at r5402
  unfold Seg34.relationRow5403 at r5403
  unfold Seg34.relationRow5404 at r5404
  have hrung184 (bit : Bool) (hbit : rho 34176 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX184 rho : Seg34.F), (seg34AccY184 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36661 : Seg34.F), (rho 36662 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX184 rho : Seg34.F), (seg34AccY184 rho : Seg34.F)⟩
        ⟨(rho 36661 : Seg34.F), (rho 36662 : Seg34.F)⟩
        ⟨(seg34AccX185 rho : Seg34.F), (seg34AccY185 rho : Seg34.F)⟩
        ⟨(rho 36675 : Seg34.F), (rho 36676 : Seg34.F)⟩ := by
    have hnextx : seg34AccX185 rho = seg34AccX184 rho + rho 36670 := by
      unfold seg34AccX185 seg34AccX184
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 34]
      ring
    have hnexty : seg34AccY185 rho = seg34AccY184 rho + rho 36671 := by
      unfold seg34AccY185 seg34AccY184
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 34]
      ring
    have hsum : seg34AccX184 rho + seg34AccY184 rho = rho 36663 := by
      unfold seg34AccX184 seg34AccY184
      linear_combination r5391
    have ha0 : (rho 36661 + rho 36662) * (seg34AccX184 rho + seg34AccY184 rho) = rho 36664 := by
      rw [hsum]
      linear_combination r5392
    have ha1 : rho 36662 * seg34AccX184 rho = rho 36665 := by
      unfold seg34AccX184
      linear_combination r5393
    have ha2 : rho 36661 * seg34AccY184 rho = rho 36666 := by
      unfold seg34AccY184
      linear_combination r5394
    have ha3 : 3021 * rho 36665 * rho 36666 = rho 36667 := by
      linear_combination r5395
    have ha4 : rho 36668 * (1 + rho 36667) = rho 36665 + rho 36666 := by
      linear_combination r5396
    have ha5 : rho 36669 * (1 - rho 36667) = rho 36664 - rho 36665 - rho 36666 := by
      linear_combination r5397
    have haddx :
        rho 36668 * (1 + 3021 * (rho 36662 * seg34AccX184 rho) * (rho 36661 * seg34AccY184 rho)) =
          rho 36662 * seg34AccX184 rho + rho 36661 * seg34AccY184 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36669 * (1 - 3021 * (rho 36662 * seg34AccX184 rho) * (rho 36661 * seg34AccY184 rho)) =
          (-1) * (rho 36662 * seg34AccX184 rho) - rho 36661 * seg34AccY184 rho +
            (seg34AccY184 rho - seg34AccX184 rho * (-1)) * (rho 36661 + rho 36662) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36669 * (1 - rho 36667) = rho 36664 - rho 36665 - rho 36666 := ha5
        _ = (-1) * rho 36665 - rho 36666 + (seg34AccY184 rho - seg34AccX184 rho * (-1)) * (rho 36661 + rho 36662) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX185 rho = seg34AccX184 rho - Bool.toZMod bit * (seg34AccX184 rho - rho 36668) := by
      have hd : rho 36670 = Bool.toZMod bit * (rho 36668 - seg34AccX184 rho) := by
        rw [← hbit]
        unfold seg34AccX184
        linear_combination -r5398
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY185 rho = seg34AccY184 rho - Bool.toZMod bit * (seg34AccY184 rho - rho 36669) := by
      have hd : rho 36671 = Bool.toZMod bit * (rho 36669 - seg34AccY184 rho) := by
        rw [← hbit]
        unfold seg34AccY184
        linear_combination -r5399
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36661 * rho 36662 = rho 36672 := by linear_combination r5400
    have hd1 : rho 36661 * rho 36661 = rho 36673 := by linear_combination r5401
    have hd2 : rho 36662 * rho 36662 = rho 36674 := by linear_combination r5402
    have hd3 : rho 36675 * (rho 36662 * rho 36662 + rho 36661 * rho 36661 * (-1)) = 2 * (rho 36661 * rho 36662) := by
      rw [hd0, hd1, hd2]
      linear_combination r5403
    have hd4 : rho 36676 * (2 - (rho 36662 * rho 36662 + rho 36661 * rho 36661 * (-1))) = rho 36662 * rho 36662 - rho 36661 * rho 36661 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5404
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX184 rho : Seg34.F), (seg34AccY184 rho : Seg34.F)⟩
      ⟨(rho 36661 : Seg34.F), (rho 36662 : Seg34.F)⟩
      ⟨(rho 36668 : Seg34.F), (rho 36669 : Seg34.F)⟩
      ⟨(seg34AccX185 rho : Seg34.F), (seg34AccY185 rho : Seg34.F)⟩
      ⟨(rho 36675 : Seg34.F), (rho 36676 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung184

theorem seg34_rows185 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5405 rho ∧ Seg34.relationRow5406 rho ∧ Seg34.relationRow5407 rho ∧ Seg34.relationRow5408 rho ∧ Seg34.relationRow5409 rho ∧ Seg34.relationRow5410 rho ∧ Seg34.relationRow5411 rho ∧ Seg34.relationRow5412 rho ∧ Seg34.relationRow5413 rho ∧ Seg34.relationRow5414 rho ∧ Seg34.relationRow5415 rho ∧ Seg34.relationRow5416 rho ∧ Seg34.relationRow5417 rho ∧ Seg34.relationRow5418 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5405, r5406, r5407, r5408, r5409, r5410, r5411, r5412, r5413, r5414, r5415, r5416, r5417, r5418, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5405, r5406, r5407, r5408, r5409, r5410, r5411, r5412, r5413, r5414, r5415, r5416, r5417, r5418⟩

theorem seg34_rung185 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34177 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX185 rho : Seg34.F), (seg34AccY185 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36675 : Seg34.F), (rho 36676 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX185 rho : Seg34.F), (seg34AccY185 rho : Seg34.F)⟩
        ⟨(rho 36675 : Seg34.F), (rho 36676 : Seg34.F)⟩
        ⟨(seg34AccX186 rho : Seg34.F), (seg34AccY186 rho : Seg34.F)⟩
        ⟨(rho 36689 : Seg34.F), (rho 36690 : Seg34.F)⟩ := by
  obtain ⟨r5405, r5406, r5407, r5408, r5409, r5410, r5411, r5412, r5413, r5414, r5415, r5416, r5417, r5418⟩ := seg34_rows185 rho h
  unfold Seg34.relationRow5405 at r5405
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5405
  unfold Seg34.relationRow5406 at r5406
  unfold Seg34.relationRow5407 at r5407
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5407
  unfold Seg34.relationRow5408 at r5408
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5408
  unfold Seg34.relationRow5409 at r5409
  unfold Seg34.relationRow5410 at r5410
  unfold Seg34.relationRow5411 at r5411
  unfold Seg34.relationRow5412 at r5412
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5412
  unfold Seg34.relationRow5413 at r5413
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5413
  unfold Seg34.relationRow5414 at r5414
  unfold Seg34.relationRow5415 at r5415
  unfold Seg34.relationRow5416 at r5416
  unfold Seg34.relationRow5417 at r5417
  unfold Seg34.relationRow5418 at r5418
  have hrung185 (bit : Bool) (hbit : rho 34177 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX185 rho : Seg34.F), (seg34AccY185 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36675 : Seg34.F), (rho 36676 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX185 rho : Seg34.F), (seg34AccY185 rho : Seg34.F)⟩
        ⟨(rho 36675 : Seg34.F), (rho 36676 : Seg34.F)⟩
        ⟨(seg34AccX186 rho : Seg34.F), (seg34AccY186 rho : Seg34.F)⟩
        ⟨(rho 36689 : Seg34.F), (rho 36690 : Seg34.F)⟩ := by
    have hnextx : seg34AccX186 rho = seg34AccX185 rho + rho 36684 := by
      unfold seg34AccX186 seg34AccX185
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 35]
      ring
    have hnexty : seg34AccY186 rho = seg34AccY185 rho + rho 36685 := by
      unfold seg34AccY186 seg34AccY185
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 35]
      ring
    have hsum : seg34AccX185 rho + seg34AccY185 rho = rho 36677 := by
      unfold seg34AccX185 seg34AccY185
      linear_combination r5405
    have ha0 : (rho 36675 + rho 36676) * (seg34AccX185 rho + seg34AccY185 rho) = rho 36678 := by
      rw [hsum]
      linear_combination r5406
    have ha1 : rho 36676 * seg34AccX185 rho = rho 36679 := by
      unfold seg34AccX185
      linear_combination r5407
    have ha2 : rho 36675 * seg34AccY185 rho = rho 36680 := by
      unfold seg34AccY185
      linear_combination r5408
    have ha3 : 3021 * rho 36679 * rho 36680 = rho 36681 := by
      linear_combination r5409
    have ha4 : rho 36682 * (1 + rho 36681) = rho 36679 + rho 36680 := by
      linear_combination r5410
    have ha5 : rho 36683 * (1 - rho 36681) = rho 36678 - rho 36679 - rho 36680 := by
      linear_combination r5411
    have haddx :
        rho 36682 * (1 + 3021 * (rho 36676 * seg34AccX185 rho) * (rho 36675 * seg34AccY185 rho)) =
          rho 36676 * seg34AccX185 rho + rho 36675 * seg34AccY185 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36683 * (1 - 3021 * (rho 36676 * seg34AccX185 rho) * (rho 36675 * seg34AccY185 rho)) =
          (-1) * (rho 36676 * seg34AccX185 rho) - rho 36675 * seg34AccY185 rho +
            (seg34AccY185 rho - seg34AccX185 rho * (-1)) * (rho 36675 + rho 36676) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36683 * (1 - rho 36681) = rho 36678 - rho 36679 - rho 36680 := ha5
        _ = (-1) * rho 36679 - rho 36680 + (seg34AccY185 rho - seg34AccX185 rho * (-1)) * (rho 36675 + rho 36676) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX186 rho = seg34AccX185 rho - Bool.toZMod bit * (seg34AccX185 rho - rho 36682) := by
      have hd : rho 36684 = Bool.toZMod bit * (rho 36682 - seg34AccX185 rho) := by
        rw [← hbit]
        unfold seg34AccX185
        linear_combination -r5412
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY186 rho = seg34AccY185 rho - Bool.toZMod bit * (seg34AccY185 rho - rho 36683) := by
      have hd : rho 36685 = Bool.toZMod bit * (rho 36683 - seg34AccY185 rho) := by
        rw [← hbit]
        unfold seg34AccY185
        linear_combination -r5413
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36675 * rho 36676 = rho 36686 := by linear_combination r5414
    have hd1 : rho 36675 * rho 36675 = rho 36687 := by linear_combination r5415
    have hd2 : rho 36676 * rho 36676 = rho 36688 := by linear_combination r5416
    have hd3 : rho 36689 * (rho 36676 * rho 36676 + rho 36675 * rho 36675 * (-1)) = 2 * (rho 36675 * rho 36676) := by
      rw [hd0, hd1, hd2]
      linear_combination r5417
    have hd4 : rho 36690 * (2 - (rho 36676 * rho 36676 + rho 36675 * rho 36675 * (-1))) = rho 36676 * rho 36676 - rho 36675 * rho 36675 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5418
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX185 rho : Seg34.F), (seg34AccY185 rho : Seg34.F)⟩
      ⟨(rho 36675 : Seg34.F), (rho 36676 : Seg34.F)⟩
      ⟨(rho 36682 : Seg34.F), (rho 36683 : Seg34.F)⟩
      ⟨(seg34AccX186 rho : Seg34.F), (seg34AccY186 rho : Seg34.F)⟩
      ⟨(rho 36689 : Seg34.F), (rho 36690 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung185

theorem seg34_rows186 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5419 rho ∧ Seg34.relationRow5420 rho ∧ Seg34.relationRow5421 rho ∧ Seg34.relationRow5422 rho ∧ Seg34.relationRow5423 rho ∧ Seg34.relationRow5424 rho ∧ Seg34.relationRow5425 rho ∧ Seg34.relationRow5426 rho ∧ Seg34.relationRow5427 rho ∧ Seg34.relationRow5428 rho ∧ Seg34.relationRow5429 rho ∧ Seg34.relationRow5430 rho ∧ Seg34.relationRow5431 rho ∧ Seg34.relationRow5432 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5419, r5420, r5421, r5422, r5423, r5424, r5425, r5426, r5427, r5428, r5429, r5430, r5431, r5432, _, _, _, _, _, _, _⟩
  exact ⟨r5419, r5420, r5421, r5422, r5423, r5424, r5425, r5426, r5427, r5428, r5429, r5430, r5431, r5432⟩

theorem seg34_rung186 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34178 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX186 rho : Seg34.F), (seg34AccY186 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36689 : Seg34.F), (rho 36690 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX186 rho : Seg34.F), (seg34AccY186 rho : Seg34.F)⟩
        ⟨(rho 36689 : Seg34.F), (rho 36690 : Seg34.F)⟩
        ⟨(seg34AccX187 rho : Seg34.F), (seg34AccY187 rho : Seg34.F)⟩
        ⟨(rho 36703 : Seg34.F), (rho 36704 : Seg34.F)⟩ := by
  obtain ⟨r5419, r5420, r5421, r5422, r5423, r5424, r5425, r5426, r5427, r5428, r5429, r5430, r5431, r5432⟩ := seg34_rows186 rho h
  unfold Seg34.relationRow5419 at r5419
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5419
  unfold Seg34.relationRow5420 at r5420
  unfold Seg34.relationRow5421 at r5421
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5421
  unfold Seg34.relationRow5422 at r5422
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5422
  unfold Seg34.relationRow5423 at r5423
  unfold Seg34.relationRow5424 at r5424
  unfold Seg34.relationRow5425 at r5425
  unfold Seg34.relationRow5426 at r5426
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5426
  unfold Seg34.relationRow5427 at r5427
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5427
  unfold Seg34.relationRow5428 at r5428
  unfold Seg34.relationRow5429 at r5429
  unfold Seg34.relationRow5430 at r5430
  unfold Seg34.relationRow5431 at r5431
  unfold Seg34.relationRow5432 at r5432
  have hrung186 (bit : Bool) (hbit : rho 34178 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX186 rho : Seg34.F), (seg34AccY186 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36689 : Seg34.F), (rho 36690 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX186 rho : Seg34.F), (seg34AccY186 rho : Seg34.F)⟩
        ⟨(rho 36689 : Seg34.F), (rho 36690 : Seg34.F)⟩
        ⟨(seg34AccX187 rho : Seg34.F), (seg34AccY187 rho : Seg34.F)⟩
        ⟨(rho 36703 : Seg34.F), (rho 36704 : Seg34.F)⟩ := by
    have hnextx : seg34AccX187 rho = seg34AccX186 rho + rho 36698 := by
      unfold seg34AccX187 seg34AccX186
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 36]
      ring
    have hnexty : seg34AccY187 rho = seg34AccY186 rho + rho 36699 := by
      unfold seg34AccY187 seg34AccY186
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 36]
      ring
    have hsum : seg34AccX186 rho + seg34AccY186 rho = rho 36691 := by
      unfold seg34AccX186 seg34AccY186
      linear_combination r5419
    have ha0 : (rho 36689 + rho 36690) * (seg34AccX186 rho + seg34AccY186 rho) = rho 36692 := by
      rw [hsum]
      linear_combination r5420
    have ha1 : rho 36690 * seg34AccX186 rho = rho 36693 := by
      unfold seg34AccX186
      linear_combination r5421
    have ha2 : rho 36689 * seg34AccY186 rho = rho 36694 := by
      unfold seg34AccY186
      linear_combination r5422
    have ha3 : 3021 * rho 36693 * rho 36694 = rho 36695 := by
      linear_combination r5423
    have ha4 : rho 36696 * (1 + rho 36695) = rho 36693 + rho 36694 := by
      linear_combination r5424
    have ha5 : rho 36697 * (1 - rho 36695) = rho 36692 - rho 36693 - rho 36694 := by
      linear_combination r5425
    have haddx :
        rho 36696 * (1 + 3021 * (rho 36690 * seg34AccX186 rho) * (rho 36689 * seg34AccY186 rho)) =
          rho 36690 * seg34AccX186 rho + rho 36689 * seg34AccY186 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36697 * (1 - 3021 * (rho 36690 * seg34AccX186 rho) * (rho 36689 * seg34AccY186 rho)) =
          (-1) * (rho 36690 * seg34AccX186 rho) - rho 36689 * seg34AccY186 rho +
            (seg34AccY186 rho - seg34AccX186 rho * (-1)) * (rho 36689 + rho 36690) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36697 * (1 - rho 36695) = rho 36692 - rho 36693 - rho 36694 := ha5
        _ = (-1) * rho 36693 - rho 36694 + (seg34AccY186 rho - seg34AccX186 rho * (-1)) * (rho 36689 + rho 36690) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX187 rho = seg34AccX186 rho - Bool.toZMod bit * (seg34AccX186 rho - rho 36696) := by
      have hd : rho 36698 = Bool.toZMod bit * (rho 36696 - seg34AccX186 rho) := by
        rw [← hbit]
        unfold seg34AccX186
        linear_combination -r5426
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY187 rho = seg34AccY186 rho - Bool.toZMod bit * (seg34AccY186 rho - rho 36697) := by
      have hd : rho 36699 = Bool.toZMod bit * (rho 36697 - seg34AccY186 rho) := by
        rw [← hbit]
        unfold seg34AccY186
        linear_combination -r5427
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36689 * rho 36690 = rho 36700 := by linear_combination r5428
    have hd1 : rho 36689 * rho 36689 = rho 36701 := by linear_combination r5429
    have hd2 : rho 36690 * rho 36690 = rho 36702 := by linear_combination r5430
    have hd3 : rho 36703 * (rho 36690 * rho 36690 + rho 36689 * rho 36689 * (-1)) = 2 * (rho 36689 * rho 36690) := by
      rw [hd0, hd1, hd2]
      linear_combination r5431
    have hd4 : rho 36704 * (2 - (rho 36690 * rho 36690 + rho 36689 * rho 36689 * (-1))) = rho 36690 * rho 36690 - rho 36689 * rho 36689 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5432
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX186 rho : Seg34.F), (seg34AccY186 rho : Seg34.F)⟩
      ⟨(rho 36689 : Seg34.F), (rho 36690 : Seg34.F)⟩
      ⟨(rho 36696 : Seg34.F), (rho 36697 : Seg34.F)⟩
      ⟨(seg34AccX187 rho : Seg34.F), (seg34AccY187 rho : Seg34.F)⟩
      ⟨(rho 36703 : Seg34.F), (rho 36704 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung186

theorem seg34_hstep_c16 (rho : Nat -> Seg34.F) (h : Seg34.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (33992 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 176 ≤ i → i < 187 →
      EdwardsBridge.onCurve (seg34LadderAccState rho i) →
      EdwardsBridge.onCurve (seg34LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg34LadderAccState rho i) (seg34LadderCurState rho i)
        (seg34LadderAccState rho (i + 1)) (seg34LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg34_rung176 rho h bits[176]! (hbitAt 176 (by omega)) hacc hcur
  · exact seg34_rung177 rho h bits[177]! (hbitAt 177 (by omega)) hacc hcur
  · exact seg34_rung178 rho h bits[178]! (hbitAt 178 (by omega)) hacc hcur
  · exact seg34_rung179 rho h bits[179]! (hbitAt 179 (by omega)) hacc hcur
  · exact seg34_rung180 rho h bits[180]! (hbitAt 180 (by omega)) hacc hcur
  · exact seg34_rung181 rho h bits[181]! (hbitAt 181 (by omega)) hacc hcur
  · exact seg34_rung182 rho h bits[182]! (hbitAt 182 (by omega)) hacc hcur
  · exact seg34_rung183 rho h bits[183]! (hbitAt 183 (by omega)) hacc hcur
  · exact seg34_rung184 rho h bits[184]! (hbitAt 184 (by omega)) hacc hcur
  · exact seg34_rung185 rho h bits[185]! (hbitAt 185 (by omega)) hacc hcur
  · exact seg34_rung186 rho h bits[186]! (hbitAt 186 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
