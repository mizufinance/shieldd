import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg45_rows176 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5279 rho ∧ Seg45.relationRow5280 rho ∧ Seg45.relationRow5281 rho ∧ Seg45.relationRow5282 rho ∧ Seg45.relationRow5283 rho ∧ Seg45.relationRow5284 rho ∧ Seg45.relationRow5285 rho ∧ Seg45.relationRow5286 rho ∧ Seg45.relationRow5287 rho ∧ Seg45.relationRow5288 rho ∧ Seg45.relationRow5289 rho ∧ Seg45.relationRow5290 rho ∧ Seg45.relationRow5291 rho ∧ Seg45.relationRow5292 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5279⟩
  unfold Seg45.relationPart66 at p66
  rcases p66 with ⟨r5280, r5281, r5282, r5283, r5284, r5285, r5286, r5287, r5288, r5289, r5290, r5291, r5292, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5279, r5280, r5281, r5282, r5283, r5284, r5285, r5286, r5287, r5288, r5289, r5290, r5291, r5292⟩

theorem seg45_rung176 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41124 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX176 rho : Seg45.F), (seg45AccY176 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43505 : Seg45.F), (rho 43506 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX176 rho : Seg45.F), (seg45AccY176 rho : Seg45.F)⟩
        ⟨(rho 43505 : Seg45.F), (rho 43506 : Seg45.F)⟩
        ⟨(seg45AccX177 rho : Seg45.F), (seg45AccY177 rho : Seg45.F)⟩
        ⟨(rho 43519 : Seg45.F), (rho 43520 : Seg45.F)⟩ := by
  obtain ⟨r5279, r5280, r5281, r5282, r5283, r5284, r5285, r5286, r5287, r5288, r5289, r5290, r5291, r5292⟩ := seg45_rows176 rho h
  unfold Seg45.relationRow5279 at r5279
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5279
  unfold Seg45.relationRow5280 at r5280
  unfold Seg45.relationRow5281 at r5281
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5281
  unfold Seg45.relationRow5282 at r5282
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5282
  unfold Seg45.relationRow5283 at r5283
  unfold Seg45.relationRow5284 at r5284
  unfold Seg45.relationRow5285 at r5285
  unfold Seg45.relationRow5286 at r5286
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5286
  unfold Seg45.relationRow5287 at r5287
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5287
  unfold Seg45.relationRow5288 at r5288
  unfold Seg45.relationRow5289 at r5289
  unfold Seg45.relationRow5290 at r5290
  unfold Seg45.relationRow5291 at r5291
  unfold Seg45.relationRow5292 at r5292
  have hrung176 (bit : Bool) (hbit : rho 41124 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX176 rho : Seg45.F), (seg45AccY176 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43505 : Seg45.F), (rho 43506 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX176 rho : Seg45.F), (seg45AccY176 rho : Seg45.F)⟩
        ⟨(rho 43505 : Seg45.F), (rho 43506 : Seg45.F)⟩
        ⟨(seg45AccX177 rho : Seg45.F), (seg45AccY177 rho : Seg45.F)⟩
        ⟨(rho 43519 : Seg45.F), (rho 43520 : Seg45.F)⟩ := by
    have hnextx : seg45AccX177 rho = seg45AccX176 rho + rho 43514 := by
      unfold seg45AccX177 seg45AccX176
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 26]
      ring
    have hnexty : seg45AccY177 rho = seg45AccY176 rho + rho 43515 := by
      unfold seg45AccY177 seg45AccY176
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 26]
      ring
    have hsum : seg45AccX176 rho + seg45AccY176 rho = rho 43507 := by
      unfold seg45AccX176 seg45AccY176
      linear_combination r5279
    have ha0 : (rho 43505 + rho 43506) * (seg45AccX176 rho + seg45AccY176 rho) = rho 43508 := by
      rw [hsum]
      linear_combination r5280
    have ha1 : rho 43506 * seg45AccX176 rho = rho 43509 := by
      unfold seg45AccX176
      linear_combination r5281
    have ha2 : rho 43505 * seg45AccY176 rho = rho 43510 := by
      unfold seg45AccY176
      linear_combination r5282
    have ha3 : 3021 * rho 43509 * rho 43510 = rho 43511 := by
      linear_combination r5283
    have ha4 : rho 43512 * (1 + rho 43511) = rho 43509 + rho 43510 := by
      linear_combination r5284
    have ha5 : rho 43513 * (1 - rho 43511) = rho 43508 - rho 43509 - rho 43510 := by
      linear_combination r5285
    have haddx :
        rho 43512 * (1 + 3021 * (rho 43506 * seg45AccX176 rho) * (rho 43505 * seg45AccY176 rho)) =
          rho 43506 * seg45AccX176 rho + rho 43505 * seg45AccY176 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43513 * (1 - 3021 * (rho 43506 * seg45AccX176 rho) * (rho 43505 * seg45AccY176 rho)) =
          (-1) * (rho 43506 * seg45AccX176 rho) - rho 43505 * seg45AccY176 rho +
            (seg45AccY176 rho - seg45AccX176 rho * (-1)) * (rho 43505 + rho 43506) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43513 * (1 - rho 43511) = rho 43508 - rho 43509 - rho 43510 := ha5
        _ = (-1) * rho 43509 - rho 43510 + (seg45AccY176 rho - seg45AccX176 rho * (-1)) * (rho 43505 + rho 43506) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX177 rho = seg45AccX176 rho - Bool.toZMod bit * (seg45AccX176 rho - rho 43512) := by
      have hd : rho 43514 = Bool.toZMod bit * (rho 43512 - seg45AccX176 rho) := by
        rw [← hbit]
        unfold seg45AccX176
        linear_combination -r5286
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY177 rho = seg45AccY176 rho - Bool.toZMod bit * (seg45AccY176 rho - rho 43513) := by
      have hd : rho 43515 = Bool.toZMod bit * (rho 43513 - seg45AccY176 rho) := by
        rw [← hbit]
        unfold seg45AccY176
        linear_combination -r5287
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43505 * rho 43506 = rho 43516 := by linear_combination r5288
    have hd1 : rho 43505 * rho 43505 = rho 43517 := by linear_combination r5289
    have hd2 : rho 43506 * rho 43506 = rho 43518 := by linear_combination r5290
    have hd3 : rho 43519 * (rho 43506 * rho 43506 + rho 43505 * rho 43505 * (-1)) = 2 * (rho 43505 * rho 43506) := by
      rw [hd0, hd1, hd2]
      linear_combination r5291
    have hd4 : rho 43520 * (2 - (rho 43506 * rho 43506 + rho 43505 * rho 43505 * (-1))) = rho 43506 * rho 43506 - rho 43505 * rho 43505 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5292
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX176 rho : Seg45.F), (seg45AccY176 rho : Seg45.F)⟩
      ⟨(rho 43505 : Seg45.F), (rho 43506 : Seg45.F)⟩
      ⟨(rho 43512 : Seg45.F), (rho 43513 : Seg45.F)⟩
      ⟨(seg45AccX177 rho : Seg45.F), (seg45AccY177 rho : Seg45.F)⟩
      ⟨(rho 43519 : Seg45.F), (rho 43520 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung176

theorem seg45_rows177 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5293 rho ∧ Seg45.relationRow5294 rho ∧ Seg45.relationRow5295 rho ∧ Seg45.relationRow5296 rho ∧ Seg45.relationRow5297 rho ∧ Seg45.relationRow5298 rho ∧ Seg45.relationRow5299 rho ∧ Seg45.relationRow5300 rho ∧ Seg45.relationRow5301 rho ∧ Seg45.relationRow5302 rho ∧ Seg45.relationRow5303 rho ∧ Seg45.relationRow5304 rho ∧ Seg45.relationRow5305 rho ∧ Seg45.relationRow5306 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r5293, r5294, r5295, r5296, r5297, r5298, r5299, r5300, r5301, r5302, r5303, r5304, r5305, r5306, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5293, r5294, r5295, r5296, r5297, r5298, r5299, r5300, r5301, r5302, r5303, r5304, r5305, r5306⟩

theorem seg45_rung177 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41125 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX177 rho : Seg45.F), (seg45AccY177 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43519 : Seg45.F), (rho 43520 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX177 rho : Seg45.F), (seg45AccY177 rho : Seg45.F)⟩
        ⟨(rho 43519 : Seg45.F), (rho 43520 : Seg45.F)⟩
        ⟨(seg45AccX178 rho : Seg45.F), (seg45AccY178 rho : Seg45.F)⟩
        ⟨(rho 43533 : Seg45.F), (rho 43534 : Seg45.F)⟩ := by
  obtain ⟨r5293, r5294, r5295, r5296, r5297, r5298, r5299, r5300, r5301, r5302, r5303, r5304, r5305, r5306⟩ := seg45_rows177 rho h
  unfold Seg45.relationRow5293 at r5293
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5293
  unfold Seg45.relationRow5294 at r5294
  unfold Seg45.relationRow5295 at r5295
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5295
  unfold Seg45.relationRow5296 at r5296
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5296
  unfold Seg45.relationRow5297 at r5297
  unfold Seg45.relationRow5298 at r5298
  unfold Seg45.relationRow5299 at r5299
  unfold Seg45.relationRow5300 at r5300
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5300
  unfold Seg45.relationRow5301 at r5301
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5301
  unfold Seg45.relationRow5302 at r5302
  unfold Seg45.relationRow5303 at r5303
  unfold Seg45.relationRow5304 at r5304
  unfold Seg45.relationRow5305 at r5305
  unfold Seg45.relationRow5306 at r5306
  have hrung177 (bit : Bool) (hbit : rho 41125 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX177 rho : Seg45.F), (seg45AccY177 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43519 : Seg45.F), (rho 43520 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX177 rho : Seg45.F), (seg45AccY177 rho : Seg45.F)⟩
        ⟨(rho 43519 : Seg45.F), (rho 43520 : Seg45.F)⟩
        ⟨(seg45AccX178 rho : Seg45.F), (seg45AccY178 rho : Seg45.F)⟩
        ⟨(rho 43533 : Seg45.F), (rho 43534 : Seg45.F)⟩ := by
    have hnextx : seg45AccX178 rho = seg45AccX177 rho + rho 43528 := by
      unfold seg45AccX178 seg45AccX177
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 27]
      ring
    have hnexty : seg45AccY178 rho = seg45AccY177 rho + rho 43529 := by
      unfold seg45AccY178 seg45AccY177
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 27]
      ring
    have hsum : seg45AccX177 rho + seg45AccY177 rho = rho 43521 := by
      unfold seg45AccX177 seg45AccY177
      linear_combination r5293
    have ha0 : (rho 43519 + rho 43520) * (seg45AccX177 rho + seg45AccY177 rho) = rho 43522 := by
      rw [hsum]
      linear_combination r5294
    have ha1 : rho 43520 * seg45AccX177 rho = rho 43523 := by
      unfold seg45AccX177
      linear_combination r5295
    have ha2 : rho 43519 * seg45AccY177 rho = rho 43524 := by
      unfold seg45AccY177
      linear_combination r5296
    have ha3 : 3021 * rho 43523 * rho 43524 = rho 43525 := by
      linear_combination r5297
    have ha4 : rho 43526 * (1 + rho 43525) = rho 43523 + rho 43524 := by
      linear_combination r5298
    have ha5 : rho 43527 * (1 - rho 43525) = rho 43522 - rho 43523 - rho 43524 := by
      linear_combination r5299
    have haddx :
        rho 43526 * (1 + 3021 * (rho 43520 * seg45AccX177 rho) * (rho 43519 * seg45AccY177 rho)) =
          rho 43520 * seg45AccX177 rho + rho 43519 * seg45AccY177 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43527 * (1 - 3021 * (rho 43520 * seg45AccX177 rho) * (rho 43519 * seg45AccY177 rho)) =
          (-1) * (rho 43520 * seg45AccX177 rho) - rho 43519 * seg45AccY177 rho +
            (seg45AccY177 rho - seg45AccX177 rho * (-1)) * (rho 43519 + rho 43520) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43527 * (1 - rho 43525) = rho 43522 - rho 43523 - rho 43524 := ha5
        _ = (-1) * rho 43523 - rho 43524 + (seg45AccY177 rho - seg45AccX177 rho * (-1)) * (rho 43519 + rho 43520) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX178 rho = seg45AccX177 rho - Bool.toZMod bit * (seg45AccX177 rho - rho 43526) := by
      have hd : rho 43528 = Bool.toZMod bit * (rho 43526 - seg45AccX177 rho) := by
        rw [← hbit]
        unfold seg45AccX177
        linear_combination -r5300
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY178 rho = seg45AccY177 rho - Bool.toZMod bit * (seg45AccY177 rho - rho 43527) := by
      have hd : rho 43529 = Bool.toZMod bit * (rho 43527 - seg45AccY177 rho) := by
        rw [← hbit]
        unfold seg45AccY177
        linear_combination -r5301
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43519 * rho 43520 = rho 43530 := by linear_combination r5302
    have hd1 : rho 43519 * rho 43519 = rho 43531 := by linear_combination r5303
    have hd2 : rho 43520 * rho 43520 = rho 43532 := by linear_combination r5304
    have hd3 : rho 43533 * (rho 43520 * rho 43520 + rho 43519 * rho 43519 * (-1)) = 2 * (rho 43519 * rho 43520) := by
      rw [hd0, hd1, hd2]
      linear_combination r5305
    have hd4 : rho 43534 * (2 - (rho 43520 * rho 43520 + rho 43519 * rho 43519 * (-1))) = rho 43520 * rho 43520 - rho 43519 * rho 43519 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5306
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX177 rho : Seg45.F), (seg45AccY177 rho : Seg45.F)⟩
      ⟨(rho 43519 : Seg45.F), (rho 43520 : Seg45.F)⟩
      ⟨(rho 43526 : Seg45.F), (rho 43527 : Seg45.F)⟩
      ⟨(seg45AccX178 rho : Seg45.F), (seg45AccY178 rho : Seg45.F)⟩
      ⟨(rho 43533 : Seg45.F), (rho 43534 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung177

theorem seg45_rows178 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5307 rho ∧ Seg45.relationRow5308 rho ∧ Seg45.relationRow5309 rho ∧ Seg45.relationRow5310 rho ∧ Seg45.relationRow5311 rho ∧ Seg45.relationRow5312 rho ∧ Seg45.relationRow5313 rho ∧ Seg45.relationRow5314 rho ∧ Seg45.relationRow5315 rho ∧ Seg45.relationRow5316 rho ∧ Seg45.relationRow5317 rho ∧ Seg45.relationRow5318 rho ∧ Seg45.relationRow5319 rho ∧ Seg45.relationRow5320 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5307, r5308, r5309, r5310, r5311, r5312, r5313, r5314, r5315, r5316, r5317, r5318, r5319, r5320, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5307, r5308, r5309, r5310, r5311, r5312, r5313, r5314, r5315, r5316, r5317, r5318, r5319, r5320⟩

theorem seg45_rung178 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41126 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX178 rho : Seg45.F), (seg45AccY178 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43533 : Seg45.F), (rho 43534 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX178 rho : Seg45.F), (seg45AccY178 rho : Seg45.F)⟩
        ⟨(rho 43533 : Seg45.F), (rho 43534 : Seg45.F)⟩
        ⟨(seg45AccX179 rho : Seg45.F), (seg45AccY179 rho : Seg45.F)⟩
        ⟨(rho 43547 : Seg45.F), (rho 43548 : Seg45.F)⟩ := by
  obtain ⟨r5307, r5308, r5309, r5310, r5311, r5312, r5313, r5314, r5315, r5316, r5317, r5318, r5319, r5320⟩ := seg45_rows178 rho h
  unfold Seg45.relationRow5307 at r5307
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5307
  unfold Seg45.relationRow5308 at r5308
  unfold Seg45.relationRow5309 at r5309
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5309
  unfold Seg45.relationRow5310 at r5310
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5310
  unfold Seg45.relationRow5311 at r5311
  unfold Seg45.relationRow5312 at r5312
  unfold Seg45.relationRow5313 at r5313
  unfold Seg45.relationRow5314 at r5314
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5314
  unfold Seg45.relationRow5315 at r5315
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5315
  unfold Seg45.relationRow5316 at r5316
  unfold Seg45.relationRow5317 at r5317
  unfold Seg45.relationRow5318 at r5318
  unfold Seg45.relationRow5319 at r5319
  unfold Seg45.relationRow5320 at r5320
  have hrung178 (bit : Bool) (hbit : rho 41126 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX178 rho : Seg45.F), (seg45AccY178 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43533 : Seg45.F), (rho 43534 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX178 rho : Seg45.F), (seg45AccY178 rho : Seg45.F)⟩
        ⟨(rho 43533 : Seg45.F), (rho 43534 : Seg45.F)⟩
        ⟨(seg45AccX179 rho : Seg45.F), (seg45AccY179 rho : Seg45.F)⟩
        ⟨(rho 43547 : Seg45.F), (rho 43548 : Seg45.F)⟩ := by
    have hnextx : seg45AccX179 rho = seg45AccX178 rho + rho 43542 := by
      unfold seg45AccX179 seg45AccX178
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 28]
      ring
    have hnexty : seg45AccY179 rho = seg45AccY178 rho + rho 43543 := by
      unfold seg45AccY179 seg45AccY178
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 28]
      ring
    have hsum : seg45AccX178 rho + seg45AccY178 rho = rho 43535 := by
      unfold seg45AccX178 seg45AccY178
      linear_combination r5307
    have ha0 : (rho 43533 + rho 43534) * (seg45AccX178 rho + seg45AccY178 rho) = rho 43536 := by
      rw [hsum]
      linear_combination r5308
    have ha1 : rho 43534 * seg45AccX178 rho = rho 43537 := by
      unfold seg45AccX178
      linear_combination r5309
    have ha2 : rho 43533 * seg45AccY178 rho = rho 43538 := by
      unfold seg45AccY178
      linear_combination r5310
    have ha3 : 3021 * rho 43537 * rho 43538 = rho 43539 := by
      linear_combination r5311
    have ha4 : rho 43540 * (1 + rho 43539) = rho 43537 + rho 43538 := by
      linear_combination r5312
    have ha5 : rho 43541 * (1 - rho 43539) = rho 43536 - rho 43537 - rho 43538 := by
      linear_combination r5313
    have haddx :
        rho 43540 * (1 + 3021 * (rho 43534 * seg45AccX178 rho) * (rho 43533 * seg45AccY178 rho)) =
          rho 43534 * seg45AccX178 rho + rho 43533 * seg45AccY178 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43541 * (1 - 3021 * (rho 43534 * seg45AccX178 rho) * (rho 43533 * seg45AccY178 rho)) =
          (-1) * (rho 43534 * seg45AccX178 rho) - rho 43533 * seg45AccY178 rho +
            (seg45AccY178 rho - seg45AccX178 rho * (-1)) * (rho 43533 + rho 43534) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43541 * (1 - rho 43539) = rho 43536 - rho 43537 - rho 43538 := ha5
        _ = (-1) * rho 43537 - rho 43538 + (seg45AccY178 rho - seg45AccX178 rho * (-1)) * (rho 43533 + rho 43534) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX179 rho = seg45AccX178 rho - Bool.toZMod bit * (seg45AccX178 rho - rho 43540) := by
      have hd : rho 43542 = Bool.toZMod bit * (rho 43540 - seg45AccX178 rho) := by
        rw [← hbit]
        unfold seg45AccX178
        linear_combination -r5314
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY179 rho = seg45AccY178 rho - Bool.toZMod bit * (seg45AccY178 rho - rho 43541) := by
      have hd : rho 43543 = Bool.toZMod bit * (rho 43541 - seg45AccY178 rho) := by
        rw [← hbit]
        unfold seg45AccY178
        linear_combination -r5315
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43533 * rho 43534 = rho 43544 := by linear_combination r5316
    have hd1 : rho 43533 * rho 43533 = rho 43545 := by linear_combination r5317
    have hd2 : rho 43534 * rho 43534 = rho 43546 := by linear_combination r5318
    have hd3 : rho 43547 * (rho 43534 * rho 43534 + rho 43533 * rho 43533 * (-1)) = 2 * (rho 43533 * rho 43534) := by
      rw [hd0, hd1, hd2]
      linear_combination r5319
    have hd4 : rho 43548 * (2 - (rho 43534 * rho 43534 + rho 43533 * rho 43533 * (-1))) = rho 43534 * rho 43534 - rho 43533 * rho 43533 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5320
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX178 rho : Seg45.F), (seg45AccY178 rho : Seg45.F)⟩
      ⟨(rho 43533 : Seg45.F), (rho 43534 : Seg45.F)⟩
      ⟨(rho 43540 : Seg45.F), (rho 43541 : Seg45.F)⟩
      ⟨(seg45AccX179 rho : Seg45.F), (seg45AccY179 rho : Seg45.F)⟩
      ⟨(rho 43547 : Seg45.F), (rho 43548 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung178

theorem seg45_rows179 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5321 rho ∧ Seg45.relationRow5322 rho ∧ Seg45.relationRow5323 rho ∧ Seg45.relationRow5324 rho ∧ Seg45.relationRow5325 rho ∧ Seg45.relationRow5326 rho ∧ Seg45.relationRow5327 rho ∧ Seg45.relationRow5328 rho ∧ Seg45.relationRow5329 rho ∧ Seg45.relationRow5330 rho ∧ Seg45.relationRow5331 rho ∧ Seg45.relationRow5332 rho ∧ Seg45.relationRow5333 rho ∧ Seg45.relationRow5334 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5321, r5322, r5323, r5324, r5325, r5326, r5327, r5328, r5329, r5330, r5331, r5332, r5333, r5334, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5321, r5322, r5323, r5324, r5325, r5326, r5327, r5328, r5329, r5330, r5331, r5332, r5333, r5334⟩

theorem seg45_rung179 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41127 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX179 rho : Seg45.F), (seg45AccY179 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43547 : Seg45.F), (rho 43548 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX179 rho : Seg45.F), (seg45AccY179 rho : Seg45.F)⟩
        ⟨(rho 43547 : Seg45.F), (rho 43548 : Seg45.F)⟩
        ⟨(seg45AccX180 rho : Seg45.F), (seg45AccY180 rho : Seg45.F)⟩
        ⟨(rho 43561 : Seg45.F), (rho 43562 : Seg45.F)⟩ := by
  obtain ⟨r5321, r5322, r5323, r5324, r5325, r5326, r5327, r5328, r5329, r5330, r5331, r5332, r5333, r5334⟩ := seg45_rows179 rho h
  unfold Seg45.relationRow5321 at r5321
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5321
  unfold Seg45.relationRow5322 at r5322
  unfold Seg45.relationRow5323 at r5323
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5323
  unfold Seg45.relationRow5324 at r5324
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5324
  unfold Seg45.relationRow5325 at r5325
  unfold Seg45.relationRow5326 at r5326
  unfold Seg45.relationRow5327 at r5327
  unfold Seg45.relationRow5328 at r5328
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5328
  unfold Seg45.relationRow5329 at r5329
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5329
  unfold Seg45.relationRow5330 at r5330
  unfold Seg45.relationRow5331 at r5331
  unfold Seg45.relationRow5332 at r5332
  unfold Seg45.relationRow5333 at r5333
  unfold Seg45.relationRow5334 at r5334
  have hrung179 (bit : Bool) (hbit : rho 41127 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX179 rho : Seg45.F), (seg45AccY179 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43547 : Seg45.F), (rho 43548 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX179 rho : Seg45.F), (seg45AccY179 rho : Seg45.F)⟩
        ⟨(rho 43547 : Seg45.F), (rho 43548 : Seg45.F)⟩
        ⟨(seg45AccX180 rho : Seg45.F), (seg45AccY180 rho : Seg45.F)⟩
        ⟨(rho 43561 : Seg45.F), (rho 43562 : Seg45.F)⟩ := by
    have hnextx : seg45AccX180 rho = seg45AccX179 rho + rho 43556 := by
      unfold seg45AccX180 seg45AccX179
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 29]
      ring
    have hnexty : seg45AccY180 rho = seg45AccY179 rho + rho 43557 := by
      unfold seg45AccY180 seg45AccY179
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 29]
      ring
    have hsum : seg45AccX179 rho + seg45AccY179 rho = rho 43549 := by
      unfold seg45AccX179 seg45AccY179
      linear_combination r5321
    have ha0 : (rho 43547 + rho 43548) * (seg45AccX179 rho + seg45AccY179 rho) = rho 43550 := by
      rw [hsum]
      linear_combination r5322
    have ha1 : rho 43548 * seg45AccX179 rho = rho 43551 := by
      unfold seg45AccX179
      linear_combination r5323
    have ha2 : rho 43547 * seg45AccY179 rho = rho 43552 := by
      unfold seg45AccY179
      linear_combination r5324
    have ha3 : 3021 * rho 43551 * rho 43552 = rho 43553 := by
      linear_combination r5325
    have ha4 : rho 43554 * (1 + rho 43553) = rho 43551 + rho 43552 := by
      linear_combination r5326
    have ha5 : rho 43555 * (1 - rho 43553) = rho 43550 - rho 43551 - rho 43552 := by
      linear_combination r5327
    have haddx :
        rho 43554 * (1 + 3021 * (rho 43548 * seg45AccX179 rho) * (rho 43547 * seg45AccY179 rho)) =
          rho 43548 * seg45AccX179 rho + rho 43547 * seg45AccY179 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43555 * (1 - 3021 * (rho 43548 * seg45AccX179 rho) * (rho 43547 * seg45AccY179 rho)) =
          (-1) * (rho 43548 * seg45AccX179 rho) - rho 43547 * seg45AccY179 rho +
            (seg45AccY179 rho - seg45AccX179 rho * (-1)) * (rho 43547 + rho 43548) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43555 * (1 - rho 43553) = rho 43550 - rho 43551 - rho 43552 := ha5
        _ = (-1) * rho 43551 - rho 43552 + (seg45AccY179 rho - seg45AccX179 rho * (-1)) * (rho 43547 + rho 43548) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX180 rho = seg45AccX179 rho - Bool.toZMod bit * (seg45AccX179 rho - rho 43554) := by
      have hd : rho 43556 = Bool.toZMod bit * (rho 43554 - seg45AccX179 rho) := by
        rw [← hbit]
        unfold seg45AccX179
        linear_combination -r5328
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY180 rho = seg45AccY179 rho - Bool.toZMod bit * (seg45AccY179 rho - rho 43555) := by
      have hd : rho 43557 = Bool.toZMod bit * (rho 43555 - seg45AccY179 rho) := by
        rw [← hbit]
        unfold seg45AccY179
        linear_combination -r5329
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43547 * rho 43548 = rho 43558 := by linear_combination r5330
    have hd1 : rho 43547 * rho 43547 = rho 43559 := by linear_combination r5331
    have hd2 : rho 43548 * rho 43548 = rho 43560 := by linear_combination r5332
    have hd3 : rho 43561 * (rho 43548 * rho 43548 + rho 43547 * rho 43547 * (-1)) = 2 * (rho 43547 * rho 43548) := by
      rw [hd0, hd1, hd2]
      linear_combination r5333
    have hd4 : rho 43562 * (2 - (rho 43548 * rho 43548 + rho 43547 * rho 43547 * (-1))) = rho 43548 * rho 43548 - rho 43547 * rho 43547 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5334
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX179 rho : Seg45.F), (seg45AccY179 rho : Seg45.F)⟩
      ⟨(rho 43547 : Seg45.F), (rho 43548 : Seg45.F)⟩
      ⟨(rho 43554 : Seg45.F), (rho 43555 : Seg45.F)⟩
      ⟨(seg45AccX180 rho : Seg45.F), (seg45AccY180 rho : Seg45.F)⟩
      ⟨(rho 43561 : Seg45.F), (rho 43562 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung179

theorem seg45_rows180 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5335 rho ∧ Seg45.relationRow5336 rho ∧ Seg45.relationRow5337 rho ∧ Seg45.relationRow5338 rho ∧ Seg45.relationRow5339 rho ∧ Seg45.relationRow5340 rho ∧ Seg45.relationRow5341 rho ∧ Seg45.relationRow5342 rho ∧ Seg45.relationRow5343 rho ∧ Seg45.relationRow5344 rho ∧ Seg45.relationRow5345 rho ∧ Seg45.relationRow5346 rho ∧ Seg45.relationRow5347 rho ∧ Seg45.relationRow5348 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5335, r5336, r5337, r5338, r5339, r5340, r5341, r5342, r5343, r5344, r5345, r5346, r5347, r5348, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5335, r5336, r5337, r5338, r5339, r5340, r5341, r5342, r5343, r5344, r5345, r5346, r5347, r5348⟩

theorem seg45_rung180 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41128 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX180 rho : Seg45.F), (seg45AccY180 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43561 : Seg45.F), (rho 43562 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX180 rho : Seg45.F), (seg45AccY180 rho : Seg45.F)⟩
        ⟨(rho 43561 : Seg45.F), (rho 43562 : Seg45.F)⟩
        ⟨(seg45AccX181 rho : Seg45.F), (seg45AccY181 rho : Seg45.F)⟩
        ⟨(rho 43575 : Seg45.F), (rho 43576 : Seg45.F)⟩ := by
  obtain ⟨r5335, r5336, r5337, r5338, r5339, r5340, r5341, r5342, r5343, r5344, r5345, r5346, r5347, r5348⟩ := seg45_rows180 rho h
  unfold Seg45.relationRow5335 at r5335
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5335
  unfold Seg45.relationRow5336 at r5336
  unfold Seg45.relationRow5337 at r5337
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5337
  unfold Seg45.relationRow5338 at r5338
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5338
  unfold Seg45.relationRow5339 at r5339
  unfold Seg45.relationRow5340 at r5340
  unfold Seg45.relationRow5341 at r5341
  unfold Seg45.relationRow5342 at r5342
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5342
  unfold Seg45.relationRow5343 at r5343
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5343
  unfold Seg45.relationRow5344 at r5344
  unfold Seg45.relationRow5345 at r5345
  unfold Seg45.relationRow5346 at r5346
  unfold Seg45.relationRow5347 at r5347
  unfold Seg45.relationRow5348 at r5348
  have hrung180 (bit : Bool) (hbit : rho 41128 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX180 rho : Seg45.F), (seg45AccY180 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43561 : Seg45.F), (rho 43562 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX180 rho : Seg45.F), (seg45AccY180 rho : Seg45.F)⟩
        ⟨(rho 43561 : Seg45.F), (rho 43562 : Seg45.F)⟩
        ⟨(seg45AccX181 rho : Seg45.F), (seg45AccY181 rho : Seg45.F)⟩
        ⟨(rho 43575 : Seg45.F), (rho 43576 : Seg45.F)⟩ := by
    have hnextx : seg45AccX181 rho = seg45AccX180 rho + rho 43570 := by
      unfold seg45AccX181 seg45AccX180
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 30]
      ring
    have hnexty : seg45AccY181 rho = seg45AccY180 rho + rho 43571 := by
      unfold seg45AccY181 seg45AccY180
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 30]
      ring
    have hsum : seg45AccX180 rho + seg45AccY180 rho = rho 43563 := by
      unfold seg45AccX180 seg45AccY180
      linear_combination r5335
    have ha0 : (rho 43561 + rho 43562) * (seg45AccX180 rho + seg45AccY180 rho) = rho 43564 := by
      rw [hsum]
      linear_combination r5336
    have ha1 : rho 43562 * seg45AccX180 rho = rho 43565 := by
      unfold seg45AccX180
      linear_combination r5337
    have ha2 : rho 43561 * seg45AccY180 rho = rho 43566 := by
      unfold seg45AccY180
      linear_combination r5338
    have ha3 : 3021 * rho 43565 * rho 43566 = rho 43567 := by
      linear_combination r5339
    have ha4 : rho 43568 * (1 + rho 43567) = rho 43565 + rho 43566 := by
      linear_combination r5340
    have ha5 : rho 43569 * (1 - rho 43567) = rho 43564 - rho 43565 - rho 43566 := by
      linear_combination r5341
    have haddx :
        rho 43568 * (1 + 3021 * (rho 43562 * seg45AccX180 rho) * (rho 43561 * seg45AccY180 rho)) =
          rho 43562 * seg45AccX180 rho + rho 43561 * seg45AccY180 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43569 * (1 - 3021 * (rho 43562 * seg45AccX180 rho) * (rho 43561 * seg45AccY180 rho)) =
          (-1) * (rho 43562 * seg45AccX180 rho) - rho 43561 * seg45AccY180 rho +
            (seg45AccY180 rho - seg45AccX180 rho * (-1)) * (rho 43561 + rho 43562) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43569 * (1 - rho 43567) = rho 43564 - rho 43565 - rho 43566 := ha5
        _ = (-1) * rho 43565 - rho 43566 + (seg45AccY180 rho - seg45AccX180 rho * (-1)) * (rho 43561 + rho 43562) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX181 rho = seg45AccX180 rho - Bool.toZMod bit * (seg45AccX180 rho - rho 43568) := by
      have hd : rho 43570 = Bool.toZMod bit * (rho 43568 - seg45AccX180 rho) := by
        rw [← hbit]
        unfold seg45AccX180
        linear_combination -r5342
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY181 rho = seg45AccY180 rho - Bool.toZMod bit * (seg45AccY180 rho - rho 43569) := by
      have hd : rho 43571 = Bool.toZMod bit * (rho 43569 - seg45AccY180 rho) := by
        rw [← hbit]
        unfold seg45AccY180
        linear_combination -r5343
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43561 * rho 43562 = rho 43572 := by linear_combination r5344
    have hd1 : rho 43561 * rho 43561 = rho 43573 := by linear_combination r5345
    have hd2 : rho 43562 * rho 43562 = rho 43574 := by linear_combination r5346
    have hd3 : rho 43575 * (rho 43562 * rho 43562 + rho 43561 * rho 43561 * (-1)) = 2 * (rho 43561 * rho 43562) := by
      rw [hd0, hd1, hd2]
      linear_combination r5347
    have hd4 : rho 43576 * (2 - (rho 43562 * rho 43562 + rho 43561 * rho 43561 * (-1))) = rho 43562 * rho 43562 - rho 43561 * rho 43561 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5348
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX180 rho : Seg45.F), (seg45AccY180 rho : Seg45.F)⟩
      ⟨(rho 43561 : Seg45.F), (rho 43562 : Seg45.F)⟩
      ⟨(rho 43568 : Seg45.F), (rho 43569 : Seg45.F)⟩
      ⟨(seg45AccX181 rho : Seg45.F), (seg45AccY181 rho : Seg45.F)⟩
      ⟨(rho 43575 : Seg45.F), (rho 43576 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung180

theorem seg45_rows181 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5349 rho ∧ Seg45.relationRow5350 rho ∧ Seg45.relationRow5351 rho ∧ Seg45.relationRow5352 rho ∧ Seg45.relationRow5353 rho ∧ Seg45.relationRow5354 rho ∧ Seg45.relationRow5355 rho ∧ Seg45.relationRow5356 rho ∧ Seg45.relationRow5357 rho ∧ Seg45.relationRow5358 rho ∧ Seg45.relationRow5359 rho ∧ Seg45.relationRow5360 rho ∧ Seg45.relationRow5361 rho ∧ Seg45.relationRow5362 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5349, r5350, r5351, r5352, r5353, r5354, r5355, r5356, r5357, r5358, r5359⟩
  unfold Seg45.relationPart67 at p67
  rcases p67 with ⟨r5360, r5361, r5362, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5349, r5350, r5351, r5352, r5353, r5354, r5355, r5356, r5357, r5358, r5359, r5360, r5361, r5362⟩

theorem seg45_rung181 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41129 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX181 rho : Seg45.F), (seg45AccY181 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43575 : Seg45.F), (rho 43576 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX181 rho : Seg45.F), (seg45AccY181 rho : Seg45.F)⟩
        ⟨(rho 43575 : Seg45.F), (rho 43576 : Seg45.F)⟩
        ⟨(seg45AccX182 rho : Seg45.F), (seg45AccY182 rho : Seg45.F)⟩
        ⟨(rho 43589 : Seg45.F), (rho 43590 : Seg45.F)⟩ := by
  obtain ⟨r5349, r5350, r5351, r5352, r5353, r5354, r5355, r5356, r5357, r5358, r5359, r5360, r5361, r5362⟩ := seg45_rows181 rho h
  unfold Seg45.relationRow5349 at r5349
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5349
  unfold Seg45.relationRow5350 at r5350
  unfold Seg45.relationRow5351 at r5351
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5351
  unfold Seg45.relationRow5352 at r5352
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5352
  unfold Seg45.relationRow5353 at r5353
  unfold Seg45.relationRow5354 at r5354
  unfold Seg45.relationRow5355 at r5355
  unfold Seg45.relationRow5356 at r5356
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5356
  unfold Seg45.relationRow5357 at r5357
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5357
  unfold Seg45.relationRow5358 at r5358
  unfold Seg45.relationRow5359 at r5359
  unfold Seg45.relationRow5360 at r5360
  unfold Seg45.relationRow5361 at r5361
  unfold Seg45.relationRow5362 at r5362
  have hrung181 (bit : Bool) (hbit : rho 41129 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX181 rho : Seg45.F), (seg45AccY181 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43575 : Seg45.F), (rho 43576 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX181 rho : Seg45.F), (seg45AccY181 rho : Seg45.F)⟩
        ⟨(rho 43575 : Seg45.F), (rho 43576 : Seg45.F)⟩
        ⟨(seg45AccX182 rho : Seg45.F), (seg45AccY182 rho : Seg45.F)⟩
        ⟨(rho 43589 : Seg45.F), (rho 43590 : Seg45.F)⟩ := by
    have hnextx : seg45AccX182 rho = seg45AccX181 rho + rho 43584 := by
      unfold seg45AccX182 seg45AccX181
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 31]
      ring
    have hnexty : seg45AccY182 rho = seg45AccY181 rho + rho 43585 := by
      unfold seg45AccY182 seg45AccY181
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 31]
      ring
    have hsum : seg45AccX181 rho + seg45AccY181 rho = rho 43577 := by
      unfold seg45AccX181 seg45AccY181
      linear_combination r5349
    have ha0 : (rho 43575 + rho 43576) * (seg45AccX181 rho + seg45AccY181 rho) = rho 43578 := by
      rw [hsum]
      linear_combination r5350
    have ha1 : rho 43576 * seg45AccX181 rho = rho 43579 := by
      unfold seg45AccX181
      linear_combination r5351
    have ha2 : rho 43575 * seg45AccY181 rho = rho 43580 := by
      unfold seg45AccY181
      linear_combination r5352
    have ha3 : 3021 * rho 43579 * rho 43580 = rho 43581 := by
      linear_combination r5353
    have ha4 : rho 43582 * (1 + rho 43581) = rho 43579 + rho 43580 := by
      linear_combination r5354
    have ha5 : rho 43583 * (1 - rho 43581) = rho 43578 - rho 43579 - rho 43580 := by
      linear_combination r5355
    have haddx :
        rho 43582 * (1 + 3021 * (rho 43576 * seg45AccX181 rho) * (rho 43575 * seg45AccY181 rho)) =
          rho 43576 * seg45AccX181 rho + rho 43575 * seg45AccY181 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43583 * (1 - 3021 * (rho 43576 * seg45AccX181 rho) * (rho 43575 * seg45AccY181 rho)) =
          (-1) * (rho 43576 * seg45AccX181 rho) - rho 43575 * seg45AccY181 rho +
            (seg45AccY181 rho - seg45AccX181 rho * (-1)) * (rho 43575 + rho 43576) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43583 * (1 - rho 43581) = rho 43578 - rho 43579 - rho 43580 := ha5
        _ = (-1) * rho 43579 - rho 43580 + (seg45AccY181 rho - seg45AccX181 rho * (-1)) * (rho 43575 + rho 43576) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX182 rho = seg45AccX181 rho - Bool.toZMod bit * (seg45AccX181 rho - rho 43582) := by
      have hd : rho 43584 = Bool.toZMod bit * (rho 43582 - seg45AccX181 rho) := by
        rw [← hbit]
        unfold seg45AccX181
        linear_combination -r5356
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY182 rho = seg45AccY181 rho - Bool.toZMod bit * (seg45AccY181 rho - rho 43583) := by
      have hd : rho 43585 = Bool.toZMod bit * (rho 43583 - seg45AccY181 rho) := by
        rw [← hbit]
        unfold seg45AccY181
        linear_combination -r5357
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43575 * rho 43576 = rho 43586 := by linear_combination r5358
    have hd1 : rho 43575 * rho 43575 = rho 43587 := by linear_combination r5359
    have hd2 : rho 43576 * rho 43576 = rho 43588 := by linear_combination r5360
    have hd3 : rho 43589 * (rho 43576 * rho 43576 + rho 43575 * rho 43575 * (-1)) = 2 * (rho 43575 * rho 43576) := by
      rw [hd0, hd1, hd2]
      linear_combination r5361
    have hd4 : rho 43590 * (2 - (rho 43576 * rho 43576 + rho 43575 * rho 43575 * (-1))) = rho 43576 * rho 43576 - rho 43575 * rho 43575 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5362
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX181 rho : Seg45.F), (seg45AccY181 rho : Seg45.F)⟩
      ⟨(rho 43575 : Seg45.F), (rho 43576 : Seg45.F)⟩
      ⟨(rho 43582 : Seg45.F), (rho 43583 : Seg45.F)⟩
      ⟨(seg45AccX182 rho : Seg45.F), (seg45AccY182 rho : Seg45.F)⟩
      ⟨(rho 43589 : Seg45.F), (rho 43590 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung181

theorem seg45_rows182 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5363 rho ∧ Seg45.relationRow5364 rho ∧ Seg45.relationRow5365 rho ∧ Seg45.relationRow5366 rho ∧ Seg45.relationRow5367 rho ∧ Seg45.relationRow5368 rho ∧ Seg45.relationRow5369 rho ∧ Seg45.relationRow5370 rho ∧ Seg45.relationRow5371 rho ∧ Seg45.relationRow5372 rho ∧ Seg45.relationRow5373 rho ∧ Seg45.relationRow5374 rho ∧ Seg45.relationRow5375 rho ∧ Seg45.relationRow5376 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart67 at p67
  rcases p67 with ⟨_, _, _, r5363, r5364, r5365, r5366, r5367, r5368, r5369, r5370, r5371, r5372, r5373, r5374, r5375, r5376, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5363, r5364, r5365, r5366, r5367, r5368, r5369, r5370, r5371, r5372, r5373, r5374, r5375, r5376⟩

theorem seg45_rung182 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41130 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX182 rho : Seg45.F), (seg45AccY182 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43589 : Seg45.F), (rho 43590 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX182 rho : Seg45.F), (seg45AccY182 rho : Seg45.F)⟩
        ⟨(rho 43589 : Seg45.F), (rho 43590 : Seg45.F)⟩
        ⟨(seg45AccX183 rho : Seg45.F), (seg45AccY183 rho : Seg45.F)⟩
        ⟨(rho 43603 : Seg45.F), (rho 43604 : Seg45.F)⟩ := by
  obtain ⟨r5363, r5364, r5365, r5366, r5367, r5368, r5369, r5370, r5371, r5372, r5373, r5374, r5375, r5376⟩ := seg45_rows182 rho h
  unfold Seg45.relationRow5363 at r5363
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5363
  unfold Seg45.relationRow5364 at r5364
  unfold Seg45.relationRow5365 at r5365
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5365
  unfold Seg45.relationRow5366 at r5366
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5366
  unfold Seg45.relationRow5367 at r5367
  unfold Seg45.relationRow5368 at r5368
  unfold Seg45.relationRow5369 at r5369
  unfold Seg45.relationRow5370 at r5370
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5370
  unfold Seg45.relationRow5371 at r5371
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5371
  unfold Seg45.relationRow5372 at r5372
  unfold Seg45.relationRow5373 at r5373
  unfold Seg45.relationRow5374 at r5374
  unfold Seg45.relationRow5375 at r5375
  unfold Seg45.relationRow5376 at r5376
  have hrung182 (bit : Bool) (hbit : rho 41130 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX182 rho : Seg45.F), (seg45AccY182 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43589 : Seg45.F), (rho 43590 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX182 rho : Seg45.F), (seg45AccY182 rho : Seg45.F)⟩
        ⟨(rho 43589 : Seg45.F), (rho 43590 : Seg45.F)⟩
        ⟨(seg45AccX183 rho : Seg45.F), (seg45AccY183 rho : Seg45.F)⟩
        ⟨(rho 43603 : Seg45.F), (rho 43604 : Seg45.F)⟩ := by
    have hnextx : seg45AccX183 rho = seg45AccX182 rho + rho 43598 := by
      unfold seg45AccX183 seg45AccX182
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 32]
      ring
    have hnexty : seg45AccY183 rho = seg45AccY182 rho + rho 43599 := by
      unfold seg45AccY183 seg45AccY182
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 32]
      ring
    have hsum : seg45AccX182 rho + seg45AccY182 rho = rho 43591 := by
      unfold seg45AccX182 seg45AccY182
      linear_combination r5363
    have ha0 : (rho 43589 + rho 43590) * (seg45AccX182 rho + seg45AccY182 rho) = rho 43592 := by
      rw [hsum]
      linear_combination r5364
    have ha1 : rho 43590 * seg45AccX182 rho = rho 43593 := by
      unfold seg45AccX182
      linear_combination r5365
    have ha2 : rho 43589 * seg45AccY182 rho = rho 43594 := by
      unfold seg45AccY182
      linear_combination r5366
    have ha3 : 3021 * rho 43593 * rho 43594 = rho 43595 := by
      linear_combination r5367
    have ha4 : rho 43596 * (1 + rho 43595) = rho 43593 + rho 43594 := by
      linear_combination r5368
    have ha5 : rho 43597 * (1 - rho 43595) = rho 43592 - rho 43593 - rho 43594 := by
      linear_combination r5369
    have haddx :
        rho 43596 * (1 + 3021 * (rho 43590 * seg45AccX182 rho) * (rho 43589 * seg45AccY182 rho)) =
          rho 43590 * seg45AccX182 rho + rho 43589 * seg45AccY182 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43597 * (1 - 3021 * (rho 43590 * seg45AccX182 rho) * (rho 43589 * seg45AccY182 rho)) =
          (-1) * (rho 43590 * seg45AccX182 rho) - rho 43589 * seg45AccY182 rho +
            (seg45AccY182 rho - seg45AccX182 rho * (-1)) * (rho 43589 + rho 43590) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43597 * (1 - rho 43595) = rho 43592 - rho 43593 - rho 43594 := ha5
        _ = (-1) * rho 43593 - rho 43594 + (seg45AccY182 rho - seg45AccX182 rho * (-1)) * (rho 43589 + rho 43590) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX183 rho = seg45AccX182 rho - Bool.toZMod bit * (seg45AccX182 rho - rho 43596) := by
      have hd : rho 43598 = Bool.toZMod bit * (rho 43596 - seg45AccX182 rho) := by
        rw [← hbit]
        unfold seg45AccX182
        linear_combination -r5370
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY183 rho = seg45AccY182 rho - Bool.toZMod bit * (seg45AccY182 rho - rho 43597) := by
      have hd : rho 43599 = Bool.toZMod bit * (rho 43597 - seg45AccY182 rho) := by
        rw [← hbit]
        unfold seg45AccY182
        linear_combination -r5371
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43589 * rho 43590 = rho 43600 := by linear_combination r5372
    have hd1 : rho 43589 * rho 43589 = rho 43601 := by linear_combination r5373
    have hd2 : rho 43590 * rho 43590 = rho 43602 := by linear_combination r5374
    have hd3 : rho 43603 * (rho 43590 * rho 43590 + rho 43589 * rho 43589 * (-1)) = 2 * (rho 43589 * rho 43590) := by
      rw [hd0, hd1, hd2]
      linear_combination r5375
    have hd4 : rho 43604 * (2 - (rho 43590 * rho 43590 + rho 43589 * rho 43589 * (-1))) = rho 43590 * rho 43590 - rho 43589 * rho 43589 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5376
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX182 rho : Seg45.F), (seg45AccY182 rho : Seg45.F)⟩
      ⟨(rho 43589 : Seg45.F), (rho 43590 : Seg45.F)⟩
      ⟨(rho 43596 : Seg45.F), (rho 43597 : Seg45.F)⟩
      ⟨(seg45AccX183 rho : Seg45.F), (seg45AccY183 rho : Seg45.F)⟩
      ⟨(rho 43603 : Seg45.F), (rho 43604 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung182

theorem seg45_rows183 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5377 rho ∧ Seg45.relationRow5378 rho ∧ Seg45.relationRow5379 rho ∧ Seg45.relationRow5380 rho ∧ Seg45.relationRow5381 rho ∧ Seg45.relationRow5382 rho ∧ Seg45.relationRow5383 rho ∧ Seg45.relationRow5384 rho ∧ Seg45.relationRow5385 rho ∧ Seg45.relationRow5386 rho ∧ Seg45.relationRow5387 rho ∧ Seg45.relationRow5388 rho ∧ Seg45.relationRow5389 rho ∧ Seg45.relationRow5390 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5377, r5378, r5379, r5380, r5381, r5382, r5383, r5384, r5385, r5386, r5387, r5388, r5389, r5390, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5377, r5378, r5379, r5380, r5381, r5382, r5383, r5384, r5385, r5386, r5387, r5388, r5389, r5390⟩

theorem seg45_rung183 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41131 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX183 rho : Seg45.F), (seg45AccY183 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43603 : Seg45.F), (rho 43604 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX183 rho : Seg45.F), (seg45AccY183 rho : Seg45.F)⟩
        ⟨(rho 43603 : Seg45.F), (rho 43604 : Seg45.F)⟩
        ⟨(seg45AccX184 rho : Seg45.F), (seg45AccY184 rho : Seg45.F)⟩
        ⟨(rho 43617 : Seg45.F), (rho 43618 : Seg45.F)⟩ := by
  obtain ⟨r5377, r5378, r5379, r5380, r5381, r5382, r5383, r5384, r5385, r5386, r5387, r5388, r5389, r5390⟩ := seg45_rows183 rho h
  unfold Seg45.relationRow5377 at r5377
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5377
  unfold Seg45.relationRow5378 at r5378
  unfold Seg45.relationRow5379 at r5379
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5379
  unfold Seg45.relationRow5380 at r5380
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5380
  unfold Seg45.relationRow5381 at r5381
  unfold Seg45.relationRow5382 at r5382
  unfold Seg45.relationRow5383 at r5383
  unfold Seg45.relationRow5384 at r5384
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5384
  unfold Seg45.relationRow5385 at r5385
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5385
  unfold Seg45.relationRow5386 at r5386
  unfold Seg45.relationRow5387 at r5387
  unfold Seg45.relationRow5388 at r5388
  unfold Seg45.relationRow5389 at r5389
  unfold Seg45.relationRow5390 at r5390
  have hrung183 (bit : Bool) (hbit : rho 41131 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX183 rho : Seg45.F), (seg45AccY183 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43603 : Seg45.F), (rho 43604 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX183 rho : Seg45.F), (seg45AccY183 rho : Seg45.F)⟩
        ⟨(rho 43603 : Seg45.F), (rho 43604 : Seg45.F)⟩
        ⟨(seg45AccX184 rho : Seg45.F), (seg45AccY184 rho : Seg45.F)⟩
        ⟨(rho 43617 : Seg45.F), (rho 43618 : Seg45.F)⟩ := by
    have hnextx : seg45AccX184 rho = seg45AccX183 rho + rho 43612 := by
      unfold seg45AccX184 seg45AccX183
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 33]
      ring
    have hnexty : seg45AccY184 rho = seg45AccY183 rho + rho 43613 := by
      unfold seg45AccY184 seg45AccY183
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 33]
      ring
    have hsum : seg45AccX183 rho + seg45AccY183 rho = rho 43605 := by
      unfold seg45AccX183 seg45AccY183
      linear_combination r5377
    have ha0 : (rho 43603 + rho 43604) * (seg45AccX183 rho + seg45AccY183 rho) = rho 43606 := by
      rw [hsum]
      linear_combination r5378
    have ha1 : rho 43604 * seg45AccX183 rho = rho 43607 := by
      unfold seg45AccX183
      linear_combination r5379
    have ha2 : rho 43603 * seg45AccY183 rho = rho 43608 := by
      unfold seg45AccY183
      linear_combination r5380
    have ha3 : 3021 * rho 43607 * rho 43608 = rho 43609 := by
      linear_combination r5381
    have ha4 : rho 43610 * (1 + rho 43609) = rho 43607 + rho 43608 := by
      linear_combination r5382
    have ha5 : rho 43611 * (1 - rho 43609) = rho 43606 - rho 43607 - rho 43608 := by
      linear_combination r5383
    have haddx :
        rho 43610 * (1 + 3021 * (rho 43604 * seg45AccX183 rho) * (rho 43603 * seg45AccY183 rho)) =
          rho 43604 * seg45AccX183 rho + rho 43603 * seg45AccY183 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43611 * (1 - 3021 * (rho 43604 * seg45AccX183 rho) * (rho 43603 * seg45AccY183 rho)) =
          (-1) * (rho 43604 * seg45AccX183 rho) - rho 43603 * seg45AccY183 rho +
            (seg45AccY183 rho - seg45AccX183 rho * (-1)) * (rho 43603 + rho 43604) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43611 * (1 - rho 43609) = rho 43606 - rho 43607 - rho 43608 := ha5
        _ = (-1) * rho 43607 - rho 43608 + (seg45AccY183 rho - seg45AccX183 rho * (-1)) * (rho 43603 + rho 43604) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX184 rho = seg45AccX183 rho - Bool.toZMod bit * (seg45AccX183 rho - rho 43610) := by
      have hd : rho 43612 = Bool.toZMod bit * (rho 43610 - seg45AccX183 rho) := by
        rw [← hbit]
        unfold seg45AccX183
        linear_combination -r5384
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY184 rho = seg45AccY183 rho - Bool.toZMod bit * (seg45AccY183 rho - rho 43611) := by
      have hd : rho 43613 = Bool.toZMod bit * (rho 43611 - seg45AccY183 rho) := by
        rw [← hbit]
        unfold seg45AccY183
        linear_combination -r5385
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43603 * rho 43604 = rho 43614 := by linear_combination r5386
    have hd1 : rho 43603 * rho 43603 = rho 43615 := by linear_combination r5387
    have hd2 : rho 43604 * rho 43604 = rho 43616 := by linear_combination r5388
    have hd3 : rho 43617 * (rho 43604 * rho 43604 + rho 43603 * rho 43603 * (-1)) = 2 * (rho 43603 * rho 43604) := by
      rw [hd0, hd1, hd2]
      linear_combination r5389
    have hd4 : rho 43618 * (2 - (rho 43604 * rho 43604 + rho 43603 * rho 43603 * (-1))) = rho 43604 * rho 43604 - rho 43603 * rho 43603 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5390
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX183 rho : Seg45.F), (seg45AccY183 rho : Seg45.F)⟩
      ⟨(rho 43603 : Seg45.F), (rho 43604 : Seg45.F)⟩
      ⟨(rho 43610 : Seg45.F), (rho 43611 : Seg45.F)⟩
      ⟨(seg45AccX184 rho : Seg45.F), (seg45AccY184 rho : Seg45.F)⟩
      ⟨(rho 43617 : Seg45.F), (rho 43618 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung183

theorem seg45_rows184 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5391 rho ∧ Seg45.relationRow5392 rho ∧ Seg45.relationRow5393 rho ∧ Seg45.relationRow5394 rho ∧ Seg45.relationRow5395 rho ∧ Seg45.relationRow5396 rho ∧ Seg45.relationRow5397 rho ∧ Seg45.relationRow5398 rho ∧ Seg45.relationRow5399 rho ∧ Seg45.relationRow5400 rho ∧ Seg45.relationRow5401 rho ∧ Seg45.relationRow5402 rho ∧ Seg45.relationRow5403 rho ∧ Seg45.relationRow5404 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5391, r5392, r5393, r5394, r5395, r5396, r5397, r5398, r5399, r5400, r5401, r5402, r5403, r5404, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5391, r5392, r5393, r5394, r5395, r5396, r5397, r5398, r5399, r5400, r5401, r5402, r5403, r5404⟩

theorem seg45_rung184 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41132 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX184 rho : Seg45.F), (seg45AccY184 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43617 : Seg45.F), (rho 43618 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX184 rho : Seg45.F), (seg45AccY184 rho : Seg45.F)⟩
        ⟨(rho 43617 : Seg45.F), (rho 43618 : Seg45.F)⟩
        ⟨(seg45AccX185 rho : Seg45.F), (seg45AccY185 rho : Seg45.F)⟩
        ⟨(rho 43631 : Seg45.F), (rho 43632 : Seg45.F)⟩ := by
  obtain ⟨r5391, r5392, r5393, r5394, r5395, r5396, r5397, r5398, r5399, r5400, r5401, r5402, r5403, r5404⟩ := seg45_rows184 rho h
  unfold Seg45.relationRow5391 at r5391
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5391
  unfold Seg45.relationRow5392 at r5392
  unfold Seg45.relationRow5393 at r5393
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5393
  unfold Seg45.relationRow5394 at r5394
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5394
  unfold Seg45.relationRow5395 at r5395
  unfold Seg45.relationRow5396 at r5396
  unfold Seg45.relationRow5397 at r5397
  unfold Seg45.relationRow5398 at r5398
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5398
  unfold Seg45.relationRow5399 at r5399
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5399
  unfold Seg45.relationRow5400 at r5400
  unfold Seg45.relationRow5401 at r5401
  unfold Seg45.relationRow5402 at r5402
  unfold Seg45.relationRow5403 at r5403
  unfold Seg45.relationRow5404 at r5404
  have hrung184 (bit : Bool) (hbit : rho 41132 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX184 rho : Seg45.F), (seg45AccY184 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43617 : Seg45.F), (rho 43618 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX184 rho : Seg45.F), (seg45AccY184 rho : Seg45.F)⟩
        ⟨(rho 43617 : Seg45.F), (rho 43618 : Seg45.F)⟩
        ⟨(seg45AccX185 rho : Seg45.F), (seg45AccY185 rho : Seg45.F)⟩
        ⟨(rho 43631 : Seg45.F), (rho 43632 : Seg45.F)⟩ := by
    have hnextx : seg45AccX185 rho = seg45AccX184 rho + rho 43626 := by
      unfold seg45AccX185 seg45AccX184
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 34]
      ring
    have hnexty : seg45AccY185 rho = seg45AccY184 rho + rho 43627 := by
      unfold seg45AccY185 seg45AccY184
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 34]
      ring
    have hsum : seg45AccX184 rho + seg45AccY184 rho = rho 43619 := by
      unfold seg45AccX184 seg45AccY184
      linear_combination r5391
    have ha0 : (rho 43617 + rho 43618) * (seg45AccX184 rho + seg45AccY184 rho) = rho 43620 := by
      rw [hsum]
      linear_combination r5392
    have ha1 : rho 43618 * seg45AccX184 rho = rho 43621 := by
      unfold seg45AccX184
      linear_combination r5393
    have ha2 : rho 43617 * seg45AccY184 rho = rho 43622 := by
      unfold seg45AccY184
      linear_combination r5394
    have ha3 : 3021 * rho 43621 * rho 43622 = rho 43623 := by
      linear_combination r5395
    have ha4 : rho 43624 * (1 + rho 43623) = rho 43621 + rho 43622 := by
      linear_combination r5396
    have ha5 : rho 43625 * (1 - rho 43623) = rho 43620 - rho 43621 - rho 43622 := by
      linear_combination r5397
    have haddx :
        rho 43624 * (1 + 3021 * (rho 43618 * seg45AccX184 rho) * (rho 43617 * seg45AccY184 rho)) =
          rho 43618 * seg45AccX184 rho + rho 43617 * seg45AccY184 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43625 * (1 - 3021 * (rho 43618 * seg45AccX184 rho) * (rho 43617 * seg45AccY184 rho)) =
          (-1) * (rho 43618 * seg45AccX184 rho) - rho 43617 * seg45AccY184 rho +
            (seg45AccY184 rho - seg45AccX184 rho * (-1)) * (rho 43617 + rho 43618) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43625 * (1 - rho 43623) = rho 43620 - rho 43621 - rho 43622 := ha5
        _ = (-1) * rho 43621 - rho 43622 + (seg45AccY184 rho - seg45AccX184 rho * (-1)) * (rho 43617 + rho 43618) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX185 rho = seg45AccX184 rho - Bool.toZMod bit * (seg45AccX184 rho - rho 43624) := by
      have hd : rho 43626 = Bool.toZMod bit * (rho 43624 - seg45AccX184 rho) := by
        rw [← hbit]
        unfold seg45AccX184
        linear_combination -r5398
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY185 rho = seg45AccY184 rho - Bool.toZMod bit * (seg45AccY184 rho - rho 43625) := by
      have hd : rho 43627 = Bool.toZMod bit * (rho 43625 - seg45AccY184 rho) := by
        rw [← hbit]
        unfold seg45AccY184
        linear_combination -r5399
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43617 * rho 43618 = rho 43628 := by linear_combination r5400
    have hd1 : rho 43617 * rho 43617 = rho 43629 := by linear_combination r5401
    have hd2 : rho 43618 * rho 43618 = rho 43630 := by linear_combination r5402
    have hd3 : rho 43631 * (rho 43618 * rho 43618 + rho 43617 * rho 43617 * (-1)) = 2 * (rho 43617 * rho 43618) := by
      rw [hd0, hd1, hd2]
      linear_combination r5403
    have hd4 : rho 43632 * (2 - (rho 43618 * rho 43618 + rho 43617 * rho 43617 * (-1))) = rho 43618 * rho 43618 - rho 43617 * rho 43617 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5404
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX184 rho : Seg45.F), (seg45AccY184 rho : Seg45.F)⟩
      ⟨(rho 43617 : Seg45.F), (rho 43618 : Seg45.F)⟩
      ⟨(rho 43624 : Seg45.F), (rho 43625 : Seg45.F)⟩
      ⟨(seg45AccX185 rho : Seg45.F), (seg45AccY185 rho : Seg45.F)⟩
      ⟨(rho 43631 : Seg45.F), (rho 43632 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung184

theorem seg45_rows185 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5405 rho ∧ Seg45.relationRow5406 rho ∧ Seg45.relationRow5407 rho ∧ Seg45.relationRow5408 rho ∧ Seg45.relationRow5409 rho ∧ Seg45.relationRow5410 rho ∧ Seg45.relationRow5411 rho ∧ Seg45.relationRow5412 rho ∧ Seg45.relationRow5413 rho ∧ Seg45.relationRow5414 rho ∧ Seg45.relationRow5415 rho ∧ Seg45.relationRow5416 rho ∧ Seg45.relationRow5417 rho ∧ Seg45.relationRow5418 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5405, r5406, r5407, r5408, r5409, r5410, r5411, r5412, r5413, r5414, r5415, r5416, r5417, r5418, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5405, r5406, r5407, r5408, r5409, r5410, r5411, r5412, r5413, r5414, r5415, r5416, r5417, r5418⟩

theorem seg45_rung185 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41133 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX185 rho : Seg45.F), (seg45AccY185 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43631 : Seg45.F), (rho 43632 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX185 rho : Seg45.F), (seg45AccY185 rho : Seg45.F)⟩
        ⟨(rho 43631 : Seg45.F), (rho 43632 : Seg45.F)⟩
        ⟨(seg45AccX186 rho : Seg45.F), (seg45AccY186 rho : Seg45.F)⟩
        ⟨(rho 43645 : Seg45.F), (rho 43646 : Seg45.F)⟩ := by
  obtain ⟨r5405, r5406, r5407, r5408, r5409, r5410, r5411, r5412, r5413, r5414, r5415, r5416, r5417, r5418⟩ := seg45_rows185 rho h
  unfold Seg45.relationRow5405 at r5405
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5405
  unfold Seg45.relationRow5406 at r5406
  unfold Seg45.relationRow5407 at r5407
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5407
  unfold Seg45.relationRow5408 at r5408
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5408
  unfold Seg45.relationRow5409 at r5409
  unfold Seg45.relationRow5410 at r5410
  unfold Seg45.relationRow5411 at r5411
  unfold Seg45.relationRow5412 at r5412
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5412
  unfold Seg45.relationRow5413 at r5413
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5413
  unfold Seg45.relationRow5414 at r5414
  unfold Seg45.relationRow5415 at r5415
  unfold Seg45.relationRow5416 at r5416
  unfold Seg45.relationRow5417 at r5417
  unfold Seg45.relationRow5418 at r5418
  have hrung185 (bit : Bool) (hbit : rho 41133 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX185 rho : Seg45.F), (seg45AccY185 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43631 : Seg45.F), (rho 43632 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX185 rho : Seg45.F), (seg45AccY185 rho : Seg45.F)⟩
        ⟨(rho 43631 : Seg45.F), (rho 43632 : Seg45.F)⟩
        ⟨(seg45AccX186 rho : Seg45.F), (seg45AccY186 rho : Seg45.F)⟩
        ⟨(rho 43645 : Seg45.F), (rho 43646 : Seg45.F)⟩ := by
    have hnextx : seg45AccX186 rho = seg45AccX185 rho + rho 43640 := by
      unfold seg45AccX186 seg45AccX185
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 35]
      ring
    have hnexty : seg45AccY186 rho = seg45AccY185 rho + rho 43641 := by
      unfold seg45AccY186 seg45AccY185
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 35]
      ring
    have hsum : seg45AccX185 rho + seg45AccY185 rho = rho 43633 := by
      unfold seg45AccX185 seg45AccY185
      linear_combination r5405
    have ha0 : (rho 43631 + rho 43632) * (seg45AccX185 rho + seg45AccY185 rho) = rho 43634 := by
      rw [hsum]
      linear_combination r5406
    have ha1 : rho 43632 * seg45AccX185 rho = rho 43635 := by
      unfold seg45AccX185
      linear_combination r5407
    have ha2 : rho 43631 * seg45AccY185 rho = rho 43636 := by
      unfold seg45AccY185
      linear_combination r5408
    have ha3 : 3021 * rho 43635 * rho 43636 = rho 43637 := by
      linear_combination r5409
    have ha4 : rho 43638 * (1 + rho 43637) = rho 43635 + rho 43636 := by
      linear_combination r5410
    have ha5 : rho 43639 * (1 - rho 43637) = rho 43634 - rho 43635 - rho 43636 := by
      linear_combination r5411
    have haddx :
        rho 43638 * (1 + 3021 * (rho 43632 * seg45AccX185 rho) * (rho 43631 * seg45AccY185 rho)) =
          rho 43632 * seg45AccX185 rho + rho 43631 * seg45AccY185 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43639 * (1 - 3021 * (rho 43632 * seg45AccX185 rho) * (rho 43631 * seg45AccY185 rho)) =
          (-1) * (rho 43632 * seg45AccX185 rho) - rho 43631 * seg45AccY185 rho +
            (seg45AccY185 rho - seg45AccX185 rho * (-1)) * (rho 43631 + rho 43632) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43639 * (1 - rho 43637) = rho 43634 - rho 43635 - rho 43636 := ha5
        _ = (-1) * rho 43635 - rho 43636 + (seg45AccY185 rho - seg45AccX185 rho * (-1)) * (rho 43631 + rho 43632) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX186 rho = seg45AccX185 rho - Bool.toZMod bit * (seg45AccX185 rho - rho 43638) := by
      have hd : rho 43640 = Bool.toZMod bit * (rho 43638 - seg45AccX185 rho) := by
        rw [← hbit]
        unfold seg45AccX185
        linear_combination -r5412
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY186 rho = seg45AccY185 rho - Bool.toZMod bit * (seg45AccY185 rho - rho 43639) := by
      have hd : rho 43641 = Bool.toZMod bit * (rho 43639 - seg45AccY185 rho) := by
        rw [← hbit]
        unfold seg45AccY185
        linear_combination -r5413
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43631 * rho 43632 = rho 43642 := by linear_combination r5414
    have hd1 : rho 43631 * rho 43631 = rho 43643 := by linear_combination r5415
    have hd2 : rho 43632 * rho 43632 = rho 43644 := by linear_combination r5416
    have hd3 : rho 43645 * (rho 43632 * rho 43632 + rho 43631 * rho 43631 * (-1)) = 2 * (rho 43631 * rho 43632) := by
      rw [hd0, hd1, hd2]
      linear_combination r5417
    have hd4 : rho 43646 * (2 - (rho 43632 * rho 43632 + rho 43631 * rho 43631 * (-1))) = rho 43632 * rho 43632 - rho 43631 * rho 43631 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5418
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX185 rho : Seg45.F), (seg45AccY185 rho : Seg45.F)⟩
      ⟨(rho 43631 : Seg45.F), (rho 43632 : Seg45.F)⟩
      ⟨(rho 43638 : Seg45.F), (rho 43639 : Seg45.F)⟩
      ⟨(seg45AccX186 rho : Seg45.F), (seg45AccY186 rho : Seg45.F)⟩
      ⟨(rho 43645 : Seg45.F), (rho 43646 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung185

theorem seg45_rows186 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5419 rho ∧ Seg45.relationRow5420 rho ∧ Seg45.relationRow5421 rho ∧ Seg45.relationRow5422 rho ∧ Seg45.relationRow5423 rho ∧ Seg45.relationRow5424 rho ∧ Seg45.relationRow5425 rho ∧ Seg45.relationRow5426 rho ∧ Seg45.relationRow5427 rho ∧ Seg45.relationRow5428 rho ∧ Seg45.relationRow5429 rho ∧ Seg45.relationRow5430 rho ∧ Seg45.relationRow5431 rho ∧ Seg45.relationRow5432 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5419, r5420, r5421, r5422, r5423, r5424, r5425, r5426, r5427, r5428, r5429, r5430, r5431, r5432, _, _, _, _, _, _, _⟩
  exact ⟨r5419, r5420, r5421, r5422, r5423, r5424, r5425, r5426, r5427, r5428, r5429, r5430, r5431, r5432⟩

theorem seg45_rung186 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41134 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX186 rho : Seg45.F), (seg45AccY186 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43645 : Seg45.F), (rho 43646 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX186 rho : Seg45.F), (seg45AccY186 rho : Seg45.F)⟩
        ⟨(rho 43645 : Seg45.F), (rho 43646 : Seg45.F)⟩
        ⟨(seg45AccX187 rho : Seg45.F), (seg45AccY187 rho : Seg45.F)⟩
        ⟨(rho 43659 : Seg45.F), (rho 43660 : Seg45.F)⟩ := by
  obtain ⟨r5419, r5420, r5421, r5422, r5423, r5424, r5425, r5426, r5427, r5428, r5429, r5430, r5431, r5432⟩ := seg45_rows186 rho h
  unfold Seg45.relationRow5419 at r5419
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5419
  unfold Seg45.relationRow5420 at r5420
  unfold Seg45.relationRow5421 at r5421
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5421
  unfold Seg45.relationRow5422 at r5422
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5422
  unfold Seg45.relationRow5423 at r5423
  unfold Seg45.relationRow5424 at r5424
  unfold Seg45.relationRow5425 at r5425
  unfold Seg45.relationRow5426 at r5426
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5426
  unfold Seg45.relationRow5427 at r5427
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5427
  unfold Seg45.relationRow5428 at r5428
  unfold Seg45.relationRow5429 at r5429
  unfold Seg45.relationRow5430 at r5430
  unfold Seg45.relationRow5431 at r5431
  unfold Seg45.relationRow5432 at r5432
  have hrung186 (bit : Bool) (hbit : rho 41134 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX186 rho : Seg45.F), (seg45AccY186 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43645 : Seg45.F), (rho 43646 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX186 rho : Seg45.F), (seg45AccY186 rho : Seg45.F)⟩
        ⟨(rho 43645 : Seg45.F), (rho 43646 : Seg45.F)⟩
        ⟨(seg45AccX187 rho : Seg45.F), (seg45AccY187 rho : Seg45.F)⟩
        ⟨(rho 43659 : Seg45.F), (rho 43660 : Seg45.F)⟩ := by
    have hnextx : seg45AccX187 rho = seg45AccX186 rho + rho 43654 := by
      unfold seg45AccX187 seg45AccX186
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 36]
      ring
    have hnexty : seg45AccY187 rho = seg45AccY186 rho + rho 43655 := by
      unfold seg45AccY187 seg45AccY186
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 36]
      ring
    have hsum : seg45AccX186 rho + seg45AccY186 rho = rho 43647 := by
      unfold seg45AccX186 seg45AccY186
      linear_combination r5419
    have ha0 : (rho 43645 + rho 43646) * (seg45AccX186 rho + seg45AccY186 rho) = rho 43648 := by
      rw [hsum]
      linear_combination r5420
    have ha1 : rho 43646 * seg45AccX186 rho = rho 43649 := by
      unfold seg45AccX186
      linear_combination r5421
    have ha2 : rho 43645 * seg45AccY186 rho = rho 43650 := by
      unfold seg45AccY186
      linear_combination r5422
    have ha3 : 3021 * rho 43649 * rho 43650 = rho 43651 := by
      linear_combination r5423
    have ha4 : rho 43652 * (1 + rho 43651) = rho 43649 + rho 43650 := by
      linear_combination r5424
    have ha5 : rho 43653 * (1 - rho 43651) = rho 43648 - rho 43649 - rho 43650 := by
      linear_combination r5425
    have haddx :
        rho 43652 * (1 + 3021 * (rho 43646 * seg45AccX186 rho) * (rho 43645 * seg45AccY186 rho)) =
          rho 43646 * seg45AccX186 rho + rho 43645 * seg45AccY186 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43653 * (1 - 3021 * (rho 43646 * seg45AccX186 rho) * (rho 43645 * seg45AccY186 rho)) =
          (-1) * (rho 43646 * seg45AccX186 rho) - rho 43645 * seg45AccY186 rho +
            (seg45AccY186 rho - seg45AccX186 rho * (-1)) * (rho 43645 + rho 43646) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43653 * (1 - rho 43651) = rho 43648 - rho 43649 - rho 43650 := ha5
        _ = (-1) * rho 43649 - rho 43650 + (seg45AccY186 rho - seg45AccX186 rho * (-1)) * (rho 43645 + rho 43646) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX187 rho = seg45AccX186 rho - Bool.toZMod bit * (seg45AccX186 rho - rho 43652) := by
      have hd : rho 43654 = Bool.toZMod bit * (rho 43652 - seg45AccX186 rho) := by
        rw [← hbit]
        unfold seg45AccX186
        linear_combination -r5426
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY187 rho = seg45AccY186 rho - Bool.toZMod bit * (seg45AccY186 rho - rho 43653) := by
      have hd : rho 43655 = Bool.toZMod bit * (rho 43653 - seg45AccY186 rho) := by
        rw [← hbit]
        unfold seg45AccY186
        linear_combination -r5427
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43645 * rho 43646 = rho 43656 := by linear_combination r5428
    have hd1 : rho 43645 * rho 43645 = rho 43657 := by linear_combination r5429
    have hd2 : rho 43646 * rho 43646 = rho 43658 := by linear_combination r5430
    have hd3 : rho 43659 * (rho 43646 * rho 43646 + rho 43645 * rho 43645 * (-1)) = 2 * (rho 43645 * rho 43646) := by
      rw [hd0, hd1, hd2]
      linear_combination r5431
    have hd4 : rho 43660 * (2 - (rho 43646 * rho 43646 + rho 43645 * rho 43645 * (-1))) = rho 43646 * rho 43646 - rho 43645 * rho 43645 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5432
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX186 rho : Seg45.F), (seg45AccY186 rho : Seg45.F)⟩
      ⟨(rho 43645 : Seg45.F), (rho 43646 : Seg45.F)⟩
      ⟨(rho 43652 : Seg45.F), (rho 43653 : Seg45.F)⟩
      ⟨(seg45AccX187 rho : Seg45.F), (seg45AccY187 rho : Seg45.F)⟩
      ⟨(rho 43659 : Seg45.F), (rho 43660 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung186

theorem seg45_hstep_c16 (rho : Nat -> Seg45.F) (h : Seg45.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (40948 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 176 ≤ i → i < 187 →
      EdwardsBridge.onCurve (seg45LadderAccState rho i) →
      EdwardsBridge.onCurve (seg45LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg45LadderAccState rho i) (seg45LadderCurState rho i)
        (seg45LadderAccState rho (i + 1)) (seg45LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg45_rung176 rho h bits[176]! (hbitAt 176 (by omega)) hacc hcur
  · exact seg45_rung177 rho h bits[177]! (hbitAt 177 (by omega)) hacc hcur
  · exact seg45_rung178 rho h bits[178]! (hbitAt 178 (by omega)) hacc hcur
  · exact seg45_rung179 rho h bits[179]! (hbitAt 179 (by omega)) hacc hcur
  · exact seg45_rung180 rho h bits[180]! (hbitAt 180 (by omega)) hacc hcur
  · exact seg45_rung181 rho h bits[181]! (hbitAt 181 (by omega)) hacc hcur
  · exact seg45_rung182 rho h bits[182]! (hbitAt 182 (by omega)) hacc hcur
  · exact seg45_rung183 rho h bits[183]! (hbitAt 183 (by omega)) hacc hcur
  · exact seg45_rung184 rho h bits[184]! (hbitAt 184 (by omega)) hacc hcur
  · exact seg45_rung185 rho h bits[185]! (hbitAt 185 (by omega)) hacc hcur
  · exact seg45_rung186 rho h bits[186]! (hbitAt 186 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
