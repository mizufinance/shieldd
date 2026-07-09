import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg5_rows198 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5587 rho ∧ Seg5.relationRow5588 rho ∧ Seg5.relationRow5589 rho ∧ Seg5.relationRow5590 rho ∧ Seg5.relationRow5591 rho ∧ Seg5.relationRow5592 rho ∧ Seg5.relationRow5593 rho ∧ Seg5.relationRow5594 rho ∧ Seg5.relationRow5595 rho ∧ Seg5.relationRow5596 rho ∧ Seg5.relationRow5597 rho ∧ Seg5.relationRow5598 rho ∧ Seg5.relationRow5599 rho ∧ Seg5.relationRow5600 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p69,
    p70, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5587, r5588, r5589, r5590, r5591, r5592, r5593, r5594, r5595, r5596, r5597, r5598, r5599⟩
  unfold Seg5.relationPart70 at p70
  rcases p70 with ⟨r5600, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5587, r5588, r5589, r5590, r5591, r5592, r5593, r5594, r5595, r5596, r5597, r5598, r5599, r5600⟩

theorem seg5_rung198 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2613 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX198 rho : Seg5.F), (seg5AccY198 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5280 : Seg5.F), (rho 5281 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX198 rho : Seg5.F), (seg5AccY198 rho : Seg5.F)⟩
        ⟨(rho 5280 : Seg5.F), (rho 5281 : Seg5.F)⟩
        ⟨(seg5AccX199 rho : Seg5.F), (seg5AccY199 rho : Seg5.F)⟩
        ⟨(rho 5294 : Seg5.F), (rho 5295 : Seg5.F)⟩ := by
  obtain ⟨r5587, r5588, r5589, r5590, r5591, r5592, r5593, r5594, r5595, r5596, r5597, r5598, r5599, r5600⟩ := seg5_rows198 rho h
  unfold Seg5.relationRow5587 at r5587
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5587
  unfold Seg5.relationRow5588 at r5588
  unfold Seg5.relationRow5589 at r5589
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5589
  unfold Seg5.relationRow5590 at r5590
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5590
  unfold Seg5.relationRow5591 at r5591
  unfold Seg5.relationRow5592 at r5592
  unfold Seg5.relationRow5593 at r5593
  unfold Seg5.relationRow5594 at r5594
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5594
  unfold Seg5.relationRow5595 at r5595
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5595
  unfold Seg5.relationRow5596 at r5596
  unfold Seg5.relationRow5597 at r5597
  unfold Seg5.relationRow5598 at r5598
  unfold Seg5.relationRow5599 at r5599
  unfold Seg5.relationRow5600 at r5600
  have hrung198 (bit : Bool) (hbit : rho 2613 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX198 rho : Seg5.F), (seg5AccY198 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5280 : Seg5.F), (rho 5281 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX198 rho : Seg5.F), (seg5AccY198 rho : Seg5.F)⟩
        ⟨(rho 5280 : Seg5.F), (rho 5281 : Seg5.F)⟩
        ⟨(seg5AccX199 rho : Seg5.F), (seg5AccY199 rho : Seg5.F)⟩
        ⟨(rho 5294 : Seg5.F), (rho 5295 : Seg5.F)⟩ := by
    have hnextx : seg5AccX199 rho = seg5AccX198 rho + rho 5289 := by
      unfold seg5AccX199 seg5AccX198
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 48]
      ring
    have hnexty : seg5AccY199 rho = seg5AccY198 rho + rho 5290 := by
      unfold seg5AccY199 seg5AccY198
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 48]
      ring
    have hsum : seg5AccX198 rho + seg5AccY198 rho = rho 5282 := by
      unfold seg5AccX198 seg5AccY198
      linear_combination r5587
    have ha0 : (rho 5280 + rho 5281) * (seg5AccX198 rho + seg5AccY198 rho) = rho 5283 := by
      rw [hsum]
      linear_combination r5588
    have ha1 : rho 5281 * seg5AccX198 rho = rho 5284 := by
      unfold seg5AccX198
      linear_combination r5589
    have ha2 : rho 5280 * seg5AccY198 rho = rho 5285 := by
      unfold seg5AccY198
      linear_combination r5590
    have ha3 : 3021 * rho 5284 * rho 5285 = rho 5286 := by
      linear_combination r5591
    have ha4 : rho 5287 * (1 + rho 5286) = rho 5284 + rho 5285 := by
      linear_combination r5592
    have ha5 : rho 5288 * (1 - rho 5286) = rho 5283 - rho 5284 - rho 5285 := by
      linear_combination r5593
    have haddx :
        rho 5287 * (1 + 3021 * (rho 5281 * seg5AccX198 rho) * (rho 5280 * seg5AccY198 rho)) =
          rho 5281 * seg5AccX198 rho + rho 5280 * seg5AccY198 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5288 * (1 - 3021 * (rho 5281 * seg5AccX198 rho) * (rho 5280 * seg5AccY198 rho)) =
          (-1) * (rho 5281 * seg5AccX198 rho) - rho 5280 * seg5AccY198 rho +
            (seg5AccY198 rho - seg5AccX198 rho * (-1)) * (rho 5280 + rho 5281) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5288 * (1 - rho 5286) = rho 5283 - rho 5284 - rho 5285 := ha5
        _ = (-1) * rho 5284 - rho 5285 + (seg5AccY198 rho - seg5AccX198 rho * (-1)) * (rho 5280 + rho 5281) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX199 rho = seg5AccX198 rho - Bool.toZMod bit * (seg5AccX198 rho - rho 5287) := by
      have hd : rho 5289 = Bool.toZMod bit * (rho 5287 - seg5AccX198 rho) := by
        rw [← hbit]
        unfold seg5AccX198
        linear_combination -r5594
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY199 rho = seg5AccY198 rho - Bool.toZMod bit * (seg5AccY198 rho - rho 5288) := by
      have hd : rho 5290 = Bool.toZMod bit * (rho 5288 - seg5AccY198 rho) := by
        rw [← hbit]
        unfold seg5AccY198
        linear_combination -r5595
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5280 * rho 5281 = rho 5291 := by linear_combination r5596
    have hd1 : rho 5280 * rho 5280 = rho 5292 := by linear_combination r5597
    have hd2 : rho 5281 * rho 5281 = rho 5293 := by linear_combination r5598
    have hd3 : rho 5294 * (rho 5281 * rho 5281 + rho 5280 * rho 5280 * (-1)) = 2 * (rho 5280 * rho 5281) := by
      rw [hd0, hd1, hd2]
      linear_combination r5599
    have hd4 : rho 5295 * (2 - (rho 5281 * rho 5281 + rho 5280 * rho 5280 * (-1))) = rho 5281 * rho 5281 - rho 5280 * rho 5280 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5600
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX198 rho : Seg5.F), (seg5AccY198 rho : Seg5.F)⟩
      ⟨(rho 5280 : Seg5.F), (rho 5281 : Seg5.F)⟩
      ⟨(rho 5287 : Seg5.F), (rho 5288 : Seg5.F)⟩
      ⟨(seg5AccX199 rho : Seg5.F), (seg5AccY199 rho : Seg5.F)⟩
      ⟨(rho 5294 : Seg5.F), (rho 5295 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung198

theorem seg5_rows199 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5601 rho ∧ Seg5.relationRow5602 rho ∧ Seg5.relationRow5603 rho ∧ Seg5.relationRow5604 rho ∧ Seg5.relationRow5605 rho ∧ Seg5.relationRow5606 rho ∧ Seg5.relationRow5607 rho ∧ Seg5.relationRow5608 rho ∧ Seg5.relationRow5609 rho ∧ Seg5.relationRow5610 rho ∧ Seg5.relationRow5611 rho ∧ Seg5.relationRow5612 rho ∧ Seg5.relationRow5613 rho ∧ Seg5.relationRow5614 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p70, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart70 at p70
  rcases p70 with ⟨_, r5601, r5602, r5603, r5604, r5605, r5606, r5607, r5608, r5609, r5610, r5611, r5612, r5613, r5614, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5601, r5602, r5603, r5604, r5605, r5606, r5607, r5608, r5609, r5610, r5611, r5612, r5613, r5614⟩

theorem seg5_rung199 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2614 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX199 rho : Seg5.F), (seg5AccY199 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5294 : Seg5.F), (rho 5295 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX199 rho : Seg5.F), (seg5AccY199 rho : Seg5.F)⟩
        ⟨(rho 5294 : Seg5.F), (rho 5295 : Seg5.F)⟩
        ⟨(seg5AccX200 rho : Seg5.F), (seg5AccY200 rho : Seg5.F)⟩
        ⟨(rho 5308 : Seg5.F), (rho 5309 : Seg5.F)⟩ := by
  obtain ⟨r5601, r5602, r5603, r5604, r5605, r5606, r5607, r5608, r5609, r5610, r5611, r5612, r5613, r5614⟩ := seg5_rows199 rho h
  unfold Seg5.relationRow5601 at r5601
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5601
  unfold Seg5.relationRow5602 at r5602
  unfold Seg5.relationRow5603 at r5603
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5603
  unfold Seg5.relationRow5604 at r5604
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5604
  unfold Seg5.relationRow5605 at r5605
  unfold Seg5.relationRow5606 at r5606
  unfold Seg5.relationRow5607 at r5607
  unfold Seg5.relationRow5608 at r5608
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5608
  unfold Seg5.relationRow5609 at r5609
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5609
  unfold Seg5.relationRow5610 at r5610
  unfold Seg5.relationRow5611 at r5611
  unfold Seg5.relationRow5612 at r5612
  unfold Seg5.relationRow5613 at r5613
  unfold Seg5.relationRow5614 at r5614
  have hrung199 (bit : Bool) (hbit : rho 2614 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX199 rho : Seg5.F), (seg5AccY199 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5294 : Seg5.F), (rho 5295 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX199 rho : Seg5.F), (seg5AccY199 rho : Seg5.F)⟩
        ⟨(rho 5294 : Seg5.F), (rho 5295 : Seg5.F)⟩
        ⟨(seg5AccX200 rho : Seg5.F), (seg5AccY200 rho : Seg5.F)⟩
        ⟨(rho 5308 : Seg5.F), (rho 5309 : Seg5.F)⟩ := by
    have hnextx : seg5AccX200 rho = seg5AccX199 rho + rho 5303 := by
      unfold seg5AccX200 seg5AccX199
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 49]
      ring
    have hnexty : seg5AccY200 rho = seg5AccY199 rho + rho 5304 := by
      unfold seg5AccY200 seg5AccY199
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 49]
      ring
    have hsum : seg5AccX199 rho + seg5AccY199 rho = rho 5296 := by
      unfold seg5AccX199 seg5AccY199
      linear_combination r5601
    have ha0 : (rho 5294 + rho 5295) * (seg5AccX199 rho + seg5AccY199 rho) = rho 5297 := by
      rw [hsum]
      linear_combination r5602
    have ha1 : rho 5295 * seg5AccX199 rho = rho 5298 := by
      unfold seg5AccX199
      linear_combination r5603
    have ha2 : rho 5294 * seg5AccY199 rho = rho 5299 := by
      unfold seg5AccY199
      linear_combination r5604
    have ha3 : 3021 * rho 5298 * rho 5299 = rho 5300 := by
      linear_combination r5605
    have ha4 : rho 5301 * (1 + rho 5300) = rho 5298 + rho 5299 := by
      linear_combination r5606
    have ha5 : rho 5302 * (1 - rho 5300) = rho 5297 - rho 5298 - rho 5299 := by
      linear_combination r5607
    have haddx :
        rho 5301 * (1 + 3021 * (rho 5295 * seg5AccX199 rho) * (rho 5294 * seg5AccY199 rho)) =
          rho 5295 * seg5AccX199 rho + rho 5294 * seg5AccY199 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5302 * (1 - 3021 * (rho 5295 * seg5AccX199 rho) * (rho 5294 * seg5AccY199 rho)) =
          (-1) * (rho 5295 * seg5AccX199 rho) - rho 5294 * seg5AccY199 rho +
            (seg5AccY199 rho - seg5AccX199 rho * (-1)) * (rho 5294 + rho 5295) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5302 * (1 - rho 5300) = rho 5297 - rho 5298 - rho 5299 := ha5
        _ = (-1) * rho 5298 - rho 5299 + (seg5AccY199 rho - seg5AccX199 rho * (-1)) * (rho 5294 + rho 5295) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX200 rho = seg5AccX199 rho - Bool.toZMod bit * (seg5AccX199 rho - rho 5301) := by
      have hd : rho 5303 = Bool.toZMod bit * (rho 5301 - seg5AccX199 rho) := by
        rw [← hbit]
        unfold seg5AccX199
        linear_combination -r5608
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY200 rho = seg5AccY199 rho - Bool.toZMod bit * (seg5AccY199 rho - rho 5302) := by
      have hd : rho 5304 = Bool.toZMod bit * (rho 5302 - seg5AccY199 rho) := by
        rw [← hbit]
        unfold seg5AccY199
        linear_combination -r5609
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5294 * rho 5295 = rho 5305 := by linear_combination r5610
    have hd1 : rho 5294 * rho 5294 = rho 5306 := by linear_combination r5611
    have hd2 : rho 5295 * rho 5295 = rho 5307 := by linear_combination r5612
    have hd3 : rho 5308 * (rho 5295 * rho 5295 + rho 5294 * rho 5294 * (-1)) = 2 * (rho 5294 * rho 5295) := by
      rw [hd0, hd1, hd2]
      linear_combination r5613
    have hd4 : rho 5309 * (2 - (rho 5295 * rho 5295 + rho 5294 * rho 5294 * (-1))) = rho 5295 * rho 5295 - rho 5294 * rho 5294 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5614
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX199 rho : Seg5.F), (seg5AccY199 rho : Seg5.F)⟩
      ⟨(rho 5294 : Seg5.F), (rho 5295 : Seg5.F)⟩
      ⟨(rho 5301 : Seg5.F), (rho 5302 : Seg5.F)⟩
      ⟨(seg5AccX200 rho : Seg5.F), (seg5AccY200 rho : Seg5.F)⟩
      ⟨(rho 5308 : Seg5.F), (rho 5309 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung199

theorem seg5_rows200 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5615 rho ∧ Seg5.relationRow5616 rho ∧ Seg5.relationRow5617 rho ∧ Seg5.relationRow5618 rho ∧ Seg5.relationRow5619 rho ∧ Seg5.relationRow5620 rho ∧ Seg5.relationRow5621 rho ∧ Seg5.relationRow5622 rho ∧ Seg5.relationRow5623 rho ∧ Seg5.relationRow5624 rho ∧ Seg5.relationRow5625 rho ∧ Seg5.relationRow5626 rho ∧ Seg5.relationRow5627 rho ∧ Seg5.relationRow5628 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p70, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5615, r5616, r5617, r5618, r5619, r5620, r5621, r5622, r5623, r5624, r5625, r5626, r5627, r5628, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5615, r5616, r5617, r5618, r5619, r5620, r5621, r5622, r5623, r5624, r5625, r5626, r5627, r5628⟩

theorem seg5_rung200 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2615 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX200 rho : Seg5.F), (seg5AccY200 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5308 : Seg5.F), (rho 5309 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX200 rho : Seg5.F), (seg5AccY200 rho : Seg5.F)⟩
        ⟨(rho 5308 : Seg5.F), (rho 5309 : Seg5.F)⟩
        ⟨(seg5AccX201 rho : Seg5.F), (seg5AccY201 rho : Seg5.F)⟩
        ⟨(rho 5322 : Seg5.F), (rho 5323 : Seg5.F)⟩ := by
  obtain ⟨r5615, r5616, r5617, r5618, r5619, r5620, r5621, r5622, r5623, r5624, r5625, r5626, r5627, r5628⟩ := seg5_rows200 rho h
  unfold Seg5.relationRow5615 at r5615
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5615
  unfold Seg5.relationRow5616 at r5616
  unfold Seg5.relationRow5617 at r5617
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5617
  unfold Seg5.relationRow5618 at r5618
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5618
  unfold Seg5.relationRow5619 at r5619
  unfold Seg5.relationRow5620 at r5620
  unfold Seg5.relationRow5621 at r5621
  unfold Seg5.relationRow5622 at r5622
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5622
  unfold Seg5.relationRow5623 at r5623
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5623
  unfold Seg5.relationRow5624 at r5624
  unfold Seg5.relationRow5625 at r5625
  unfold Seg5.relationRow5626 at r5626
  unfold Seg5.relationRow5627 at r5627
  unfold Seg5.relationRow5628 at r5628
  have hrung200 (bit : Bool) (hbit : rho 2615 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX200 rho : Seg5.F), (seg5AccY200 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5308 : Seg5.F), (rho 5309 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX200 rho : Seg5.F), (seg5AccY200 rho : Seg5.F)⟩
        ⟨(rho 5308 : Seg5.F), (rho 5309 : Seg5.F)⟩
        ⟨(seg5AccX201 rho : Seg5.F), (seg5AccY201 rho : Seg5.F)⟩
        ⟨(rho 5322 : Seg5.F), (rho 5323 : Seg5.F)⟩ := by
    have hnextx : seg5AccX201 rho = seg5AccX200 rho + rho 5317 := by
      unfold seg5AccX201 seg5AccX200
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 50]
      ring
    have hnexty : seg5AccY201 rho = seg5AccY200 rho + rho 5318 := by
      unfold seg5AccY201 seg5AccY200
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 50]
      ring
    have hsum : seg5AccX200 rho + seg5AccY200 rho = rho 5310 := by
      unfold seg5AccX200 seg5AccY200
      linear_combination r5615
    have ha0 : (rho 5308 + rho 5309) * (seg5AccX200 rho + seg5AccY200 rho) = rho 5311 := by
      rw [hsum]
      linear_combination r5616
    have ha1 : rho 5309 * seg5AccX200 rho = rho 5312 := by
      unfold seg5AccX200
      linear_combination r5617
    have ha2 : rho 5308 * seg5AccY200 rho = rho 5313 := by
      unfold seg5AccY200
      linear_combination r5618
    have ha3 : 3021 * rho 5312 * rho 5313 = rho 5314 := by
      linear_combination r5619
    have ha4 : rho 5315 * (1 + rho 5314) = rho 5312 + rho 5313 := by
      linear_combination r5620
    have ha5 : rho 5316 * (1 - rho 5314) = rho 5311 - rho 5312 - rho 5313 := by
      linear_combination r5621
    have haddx :
        rho 5315 * (1 + 3021 * (rho 5309 * seg5AccX200 rho) * (rho 5308 * seg5AccY200 rho)) =
          rho 5309 * seg5AccX200 rho + rho 5308 * seg5AccY200 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5316 * (1 - 3021 * (rho 5309 * seg5AccX200 rho) * (rho 5308 * seg5AccY200 rho)) =
          (-1) * (rho 5309 * seg5AccX200 rho) - rho 5308 * seg5AccY200 rho +
            (seg5AccY200 rho - seg5AccX200 rho * (-1)) * (rho 5308 + rho 5309) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5316 * (1 - rho 5314) = rho 5311 - rho 5312 - rho 5313 := ha5
        _ = (-1) * rho 5312 - rho 5313 + (seg5AccY200 rho - seg5AccX200 rho * (-1)) * (rho 5308 + rho 5309) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX201 rho = seg5AccX200 rho - Bool.toZMod bit * (seg5AccX200 rho - rho 5315) := by
      have hd : rho 5317 = Bool.toZMod bit * (rho 5315 - seg5AccX200 rho) := by
        rw [← hbit]
        unfold seg5AccX200
        linear_combination -r5622
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY201 rho = seg5AccY200 rho - Bool.toZMod bit * (seg5AccY200 rho - rho 5316) := by
      have hd : rho 5318 = Bool.toZMod bit * (rho 5316 - seg5AccY200 rho) := by
        rw [← hbit]
        unfold seg5AccY200
        linear_combination -r5623
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5308 * rho 5309 = rho 5319 := by linear_combination r5624
    have hd1 : rho 5308 * rho 5308 = rho 5320 := by linear_combination r5625
    have hd2 : rho 5309 * rho 5309 = rho 5321 := by linear_combination r5626
    have hd3 : rho 5322 * (rho 5309 * rho 5309 + rho 5308 * rho 5308 * (-1)) = 2 * (rho 5308 * rho 5309) := by
      rw [hd0, hd1, hd2]
      linear_combination r5627
    have hd4 : rho 5323 * (2 - (rho 5309 * rho 5309 + rho 5308 * rho 5308 * (-1))) = rho 5309 * rho 5309 - rho 5308 * rho 5308 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5628
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX200 rho : Seg5.F), (seg5AccY200 rho : Seg5.F)⟩
      ⟨(rho 5308 : Seg5.F), (rho 5309 : Seg5.F)⟩
      ⟨(rho 5315 : Seg5.F), (rho 5316 : Seg5.F)⟩
      ⟨(seg5AccX201 rho : Seg5.F), (seg5AccY201 rho : Seg5.F)⟩
      ⟨(rho 5322 : Seg5.F), (rho 5323 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung200

theorem seg5_rows201 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5629 rho ∧ Seg5.relationRow5630 rho ∧ Seg5.relationRow5631 rho ∧ Seg5.relationRow5632 rho ∧ Seg5.relationRow5633 rho ∧ Seg5.relationRow5634 rho ∧ Seg5.relationRow5635 rho ∧ Seg5.relationRow5636 rho ∧ Seg5.relationRow5637 rho ∧ Seg5.relationRow5638 rho ∧ Seg5.relationRow5639 rho ∧ Seg5.relationRow5640 rho ∧ Seg5.relationRow5641 rho ∧ Seg5.relationRow5642 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p70, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5629, r5630, r5631, r5632, r5633, r5634, r5635, r5636, r5637, r5638, r5639, r5640, r5641, r5642, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5629, r5630, r5631, r5632, r5633, r5634, r5635, r5636, r5637, r5638, r5639, r5640, r5641, r5642⟩

theorem seg5_rung201 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2616 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX201 rho : Seg5.F), (seg5AccY201 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5322 : Seg5.F), (rho 5323 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX201 rho : Seg5.F), (seg5AccY201 rho : Seg5.F)⟩
        ⟨(rho 5322 : Seg5.F), (rho 5323 : Seg5.F)⟩
        ⟨(seg5AccX202 rho : Seg5.F), (seg5AccY202 rho : Seg5.F)⟩
        ⟨(rho 5336 : Seg5.F), (rho 5337 : Seg5.F)⟩ := by
  obtain ⟨r5629, r5630, r5631, r5632, r5633, r5634, r5635, r5636, r5637, r5638, r5639, r5640, r5641, r5642⟩ := seg5_rows201 rho h
  unfold Seg5.relationRow5629 at r5629
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5629
  unfold Seg5.relationRow5630 at r5630
  unfold Seg5.relationRow5631 at r5631
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5631
  unfold Seg5.relationRow5632 at r5632
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5632
  unfold Seg5.relationRow5633 at r5633
  unfold Seg5.relationRow5634 at r5634
  unfold Seg5.relationRow5635 at r5635
  unfold Seg5.relationRow5636 at r5636
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5636
  unfold Seg5.relationRow5637 at r5637
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5637
  unfold Seg5.relationRow5638 at r5638
  unfold Seg5.relationRow5639 at r5639
  unfold Seg5.relationRow5640 at r5640
  unfold Seg5.relationRow5641 at r5641
  unfold Seg5.relationRow5642 at r5642
  have hrung201 (bit : Bool) (hbit : rho 2616 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX201 rho : Seg5.F), (seg5AccY201 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5322 : Seg5.F), (rho 5323 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX201 rho : Seg5.F), (seg5AccY201 rho : Seg5.F)⟩
        ⟨(rho 5322 : Seg5.F), (rho 5323 : Seg5.F)⟩
        ⟨(seg5AccX202 rho : Seg5.F), (seg5AccY202 rho : Seg5.F)⟩
        ⟨(rho 5336 : Seg5.F), (rho 5337 : Seg5.F)⟩ := by
    have hnextx : seg5AccX202 rho = seg5AccX201 rho + rho 5331 := by
      unfold seg5AccX202 seg5AccX201
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 51]
      ring
    have hnexty : seg5AccY202 rho = seg5AccY201 rho + rho 5332 := by
      unfold seg5AccY202 seg5AccY201
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 51]
      ring
    have hsum : seg5AccX201 rho + seg5AccY201 rho = rho 5324 := by
      unfold seg5AccX201 seg5AccY201
      linear_combination r5629
    have ha0 : (rho 5322 + rho 5323) * (seg5AccX201 rho + seg5AccY201 rho) = rho 5325 := by
      rw [hsum]
      linear_combination r5630
    have ha1 : rho 5323 * seg5AccX201 rho = rho 5326 := by
      unfold seg5AccX201
      linear_combination r5631
    have ha2 : rho 5322 * seg5AccY201 rho = rho 5327 := by
      unfold seg5AccY201
      linear_combination r5632
    have ha3 : 3021 * rho 5326 * rho 5327 = rho 5328 := by
      linear_combination r5633
    have ha4 : rho 5329 * (1 + rho 5328) = rho 5326 + rho 5327 := by
      linear_combination r5634
    have ha5 : rho 5330 * (1 - rho 5328) = rho 5325 - rho 5326 - rho 5327 := by
      linear_combination r5635
    have haddx :
        rho 5329 * (1 + 3021 * (rho 5323 * seg5AccX201 rho) * (rho 5322 * seg5AccY201 rho)) =
          rho 5323 * seg5AccX201 rho + rho 5322 * seg5AccY201 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5330 * (1 - 3021 * (rho 5323 * seg5AccX201 rho) * (rho 5322 * seg5AccY201 rho)) =
          (-1) * (rho 5323 * seg5AccX201 rho) - rho 5322 * seg5AccY201 rho +
            (seg5AccY201 rho - seg5AccX201 rho * (-1)) * (rho 5322 + rho 5323) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5330 * (1 - rho 5328) = rho 5325 - rho 5326 - rho 5327 := ha5
        _ = (-1) * rho 5326 - rho 5327 + (seg5AccY201 rho - seg5AccX201 rho * (-1)) * (rho 5322 + rho 5323) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX202 rho = seg5AccX201 rho - Bool.toZMod bit * (seg5AccX201 rho - rho 5329) := by
      have hd : rho 5331 = Bool.toZMod bit * (rho 5329 - seg5AccX201 rho) := by
        rw [← hbit]
        unfold seg5AccX201
        linear_combination -r5636
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY202 rho = seg5AccY201 rho - Bool.toZMod bit * (seg5AccY201 rho - rho 5330) := by
      have hd : rho 5332 = Bool.toZMod bit * (rho 5330 - seg5AccY201 rho) := by
        rw [← hbit]
        unfold seg5AccY201
        linear_combination -r5637
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5322 * rho 5323 = rho 5333 := by linear_combination r5638
    have hd1 : rho 5322 * rho 5322 = rho 5334 := by linear_combination r5639
    have hd2 : rho 5323 * rho 5323 = rho 5335 := by linear_combination r5640
    have hd3 : rho 5336 * (rho 5323 * rho 5323 + rho 5322 * rho 5322 * (-1)) = 2 * (rho 5322 * rho 5323) := by
      rw [hd0, hd1, hd2]
      linear_combination r5641
    have hd4 : rho 5337 * (2 - (rho 5323 * rho 5323 + rho 5322 * rho 5322 * (-1))) = rho 5323 * rho 5323 - rho 5322 * rho 5322 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5642
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX201 rho : Seg5.F), (seg5AccY201 rho : Seg5.F)⟩
      ⟨(rho 5322 : Seg5.F), (rho 5323 : Seg5.F)⟩
      ⟨(rho 5329 : Seg5.F), (rho 5330 : Seg5.F)⟩
      ⟨(seg5AccX202 rho : Seg5.F), (seg5AccY202 rho : Seg5.F)⟩
      ⟨(rho 5336 : Seg5.F), (rho 5337 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung201

theorem seg5_rows202 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5643 rho ∧ Seg5.relationRow5644 rho ∧ Seg5.relationRow5645 rho ∧ Seg5.relationRow5646 rho ∧ Seg5.relationRow5647 rho ∧ Seg5.relationRow5648 rho ∧ Seg5.relationRow5649 rho ∧ Seg5.relationRow5650 rho ∧ Seg5.relationRow5651 rho ∧ Seg5.relationRow5652 rho ∧ Seg5.relationRow5653 rho ∧ Seg5.relationRow5654 rho ∧ Seg5.relationRow5655 rho ∧ Seg5.relationRow5656 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p70, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5643, r5644, r5645, r5646, r5647, r5648, r5649, r5650, r5651, r5652, r5653, r5654, r5655, r5656, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5643, r5644, r5645, r5646, r5647, r5648, r5649, r5650, r5651, r5652, r5653, r5654, r5655, r5656⟩

theorem seg5_rung202 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2617 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX202 rho : Seg5.F), (seg5AccY202 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5336 : Seg5.F), (rho 5337 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX202 rho : Seg5.F), (seg5AccY202 rho : Seg5.F)⟩
        ⟨(rho 5336 : Seg5.F), (rho 5337 : Seg5.F)⟩
        ⟨(seg5AccX203 rho : Seg5.F), (seg5AccY203 rho : Seg5.F)⟩
        ⟨(rho 5350 : Seg5.F), (rho 5351 : Seg5.F)⟩ := by
  obtain ⟨r5643, r5644, r5645, r5646, r5647, r5648, r5649, r5650, r5651, r5652, r5653, r5654, r5655, r5656⟩ := seg5_rows202 rho h
  unfold Seg5.relationRow5643 at r5643
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5643
  unfold Seg5.relationRow5644 at r5644
  unfold Seg5.relationRow5645 at r5645
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5645
  unfold Seg5.relationRow5646 at r5646
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5646
  unfold Seg5.relationRow5647 at r5647
  unfold Seg5.relationRow5648 at r5648
  unfold Seg5.relationRow5649 at r5649
  unfold Seg5.relationRow5650 at r5650
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5650
  unfold Seg5.relationRow5651 at r5651
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5651
  unfold Seg5.relationRow5652 at r5652
  unfold Seg5.relationRow5653 at r5653
  unfold Seg5.relationRow5654 at r5654
  unfold Seg5.relationRow5655 at r5655
  unfold Seg5.relationRow5656 at r5656
  have hrung202 (bit : Bool) (hbit : rho 2617 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX202 rho : Seg5.F), (seg5AccY202 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5336 : Seg5.F), (rho 5337 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX202 rho : Seg5.F), (seg5AccY202 rho : Seg5.F)⟩
        ⟨(rho 5336 : Seg5.F), (rho 5337 : Seg5.F)⟩
        ⟨(seg5AccX203 rho : Seg5.F), (seg5AccY203 rho : Seg5.F)⟩
        ⟨(rho 5350 : Seg5.F), (rho 5351 : Seg5.F)⟩ := by
    have hnextx : seg5AccX203 rho = seg5AccX202 rho + rho 5345 := by
      unfold seg5AccX203 seg5AccX202
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 52]
      ring
    have hnexty : seg5AccY203 rho = seg5AccY202 rho + rho 5346 := by
      unfold seg5AccY203 seg5AccY202
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 52]
      ring
    have hsum : seg5AccX202 rho + seg5AccY202 rho = rho 5338 := by
      unfold seg5AccX202 seg5AccY202
      linear_combination r5643
    have ha0 : (rho 5336 + rho 5337) * (seg5AccX202 rho + seg5AccY202 rho) = rho 5339 := by
      rw [hsum]
      linear_combination r5644
    have ha1 : rho 5337 * seg5AccX202 rho = rho 5340 := by
      unfold seg5AccX202
      linear_combination r5645
    have ha2 : rho 5336 * seg5AccY202 rho = rho 5341 := by
      unfold seg5AccY202
      linear_combination r5646
    have ha3 : 3021 * rho 5340 * rho 5341 = rho 5342 := by
      linear_combination r5647
    have ha4 : rho 5343 * (1 + rho 5342) = rho 5340 + rho 5341 := by
      linear_combination r5648
    have ha5 : rho 5344 * (1 - rho 5342) = rho 5339 - rho 5340 - rho 5341 := by
      linear_combination r5649
    have haddx :
        rho 5343 * (1 + 3021 * (rho 5337 * seg5AccX202 rho) * (rho 5336 * seg5AccY202 rho)) =
          rho 5337 * seg5AccX202 rho + rho 5336 * seg5AccY202 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5344 * (1 - 3021 * (rho 5337 * seg5AccX202 rho) * (rho 5336 * seg5AccY202 rho)) =
          (-1) * (rho 5337 * seg5AccX202 rho) - rho 5336 * seg5AccY202 rho +
            (seg5AccY202 rho - seg5AccX202 rho * (-1)) * (rho 5336 + rho 5337) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5344 * (1 - rho 5342) = rho 5339 - rho 5340 - rho 5341 := ha5
        _ = (-1) * rho 5340 - rho 5341 + (seg5AccY202 rho - seg5AccX202 rho * (-1)) * (rho 5336 + rho 5337) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX203 rho = seg5AccX202 rho - Bool.toZMod bit * (seg5AccX202 rho - rho 5343) := by
      have hd : rho 5345 = Bool.toZMod bit * (rho 5343 - seg5AccX202 rho) := by
        rw [← hbit]
        unfold seg5AccX202
        linear_combination -r5650
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY203 rho = seg5AccY202 rho - Bool.toZMod bit * (seg5AccY202 rho - rho 5344) := by
      have hd : rho 5346 = Bool.toZMod bit * (rho 5344 - seg5AccY202 rho) := by
        rw [← hbit]
        unfold seg5AccY202
        linear_combination -r5651
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5336 * rho 5337 = rho 5347 := by linear_combination r5652
    have hd1 : rho 5336 * rho 5336 = rho 5348 := by linear_combination r5653
    have hd2 : rho 5337 * rho 5337 = rho 5349 := by linear_combination r5654
    have hd3 : rho 5350 * (rho 5337 * rho 5337 + rho 5336 * rho 5336 * (-1)) = 2 * (rho 5336 * rho 5337) := by
      rw [hd0, hd1, hd2]
      linear_combination r5655
    have hd4 : rho 5351 * (2 - (rho 5337 * rho 5337 + rho 5336 * rho 5336 * (-1))) = rho 5337 * rho 5337 - rho 5336 * rho 5336 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5656
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX202 rho : Seg5.F), (seg5AccY202 rho : Seg5.F)⟩
      ⟨(rho 5336 : Seg5.F), (rho 5337 : Seg5.F)⟩
      ⟨(rho 5343 : Seg5.F), (rho 5344 : Seg5.F)⟩
      ⟨(seg5AccX203 rho : Seg5.F), (seg5AccY203 rho : Seg5.F)⟩
      ⟨(rho 5350 : Seg5.F), (rho 5351 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung202

theorem seg5_rows203 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5657 rho ∧ Seg5.relationRow5658 rho ∧ Seg5.relationRow5659 rho ∧ Seg5.relationRow5660 rho ∧ Seg5.relationRow5661 rho ∧ Seg5.relationRow5662 rho ∧ Seg5.relationRow5663 rho ∧ Seg5.relationRow5664 rho ∧ Seg5.relationRow5665 rho ∧ Seg5.relationRow5666 rho ∧ Seg5.relationRow5667 rho ∧ Seg5.relationRow5668 rho ∧ Seg5.relationRow5669 rho ∧ Seg5.relationRow5670 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p70, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5657, r5658, r5659, r5660, r5661, r5662, r5663, r5664, r5665, r5666, r5667, r5668, r5669, r5670, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5657, r5658, r5659, r5660, r5661, r5662, r5663, r5664, r5665, r5666, r5667, r5668, r5669, r5670⟩

theorem seg5_rung203 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2618 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX203 rho : Seg5.F), (seg5AccY203 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5350 : Seg5.F), (rho 5351 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX203 rho : Seg5.F), (seg5AccY203 rho : Seg5.F)⟩
        ⟨(rho 5350 : Seg5.F), (rho 5351 : Seg5.F)⟩
        ⟨(seg5AccX204 rho : Seg5.F), (seg5AccY204 rho : Seg5.F)⟩
        ⟨(rho 5364 : Seg5.F), (rho 5365 : Seg5.F)⟩ := by
  obtain ⟨r5657, r5658, r5659, r5660, r5661, r5662, r5663, r5664, r5665, r5666, r5667, r5668, r5669, r5670⟩ := seg5_rows203 rho h
  unfold Seg5.relationRow5657 at r5657
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5657
  unfold Seg5.relationRow5658 at r5658
  unfold Seg5.relationRow5659 at r5659
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5659
  unfold Seg5.relationRow5660 at r5660
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5660
  unfold Seg5.relationRow5661 at r5661
  unfold Seg5.relationRow5662 at r5662
  unfold Seg5.relationRow5663 at r5663
  unfold Seg5.relationRow5664 at r5664
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5664
  unfold Seg5.relationRow5665 at r5665
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5665
  unfold Seg5.relationRow5666 at r5666
  unfold Seg5.relationRow5667 at r5667
  unfold Seg5.relationRow5668 at r5668
  unfold Seg5.relationRow5669 at r5669
  unfold Seg5.relationRow5670 at r5670
  have hrung203 (bit : Bool) (hbit : rho 2618 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX203 rho : Seg5.F), (seg5AccY203 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5350 : Seg5.F), (rho 5351 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX203 rho : Seg5.F), (seg5AccY203 rho : Seg5.F)⟩
        ⟨(rho 5350 : Seg5.F), (rho 5351 : Seg5.F)⟩
        ⟨(seg5AccX204 rho : Seg5.F), (seg5AccY204 rho : Seg5.F)⟩
        ⟨(rho 5364 : Seg5.F), (rho 5365 : Seg5.F)⟩ := by
    have hnextx : seg5AccX204 rho = seg5AccX203 rho + rho 5359 := by
      unfold seg5AccX204 seg5AccX203
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 53]
      ring
    have hnexty : seg5AccY204 rho = seg5AccY203 rho + rho 5360 := by
      unfold seg5AccY204 seg5AccY203
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 53]
      ring
    have hsum : seg5AccX203 rho + seg5AccY203 rho = rho 5352 := by
      unfold seg5AccX203 seg5AccY203
      linear_combination r5657
    have ha0 : (rho 5350 + rho 5351) * (seg5AccX203 rho + seg5AccY203 rho) = rho 5353 := by
      rw [hsum]
      linear_combination r5658
    have ha1 : rho 5351 * seg5AccX203 rho = rho 5354 := by
      unfold seg5AccX203
      linear_combination r5659
    have ha2 : rho 5350 * seg5AccY203 rho = rho 5355 := by
      unfold seg5AccY203
      linear_combination r5660
    have ha3 : 3021 * rho 5354 * rho 5355 = rho 5356 := by
      linear_combination r5661
    have ha4 : rho 5357 * (1 + rho 5356) = rho 5354 + rho 5355 := by
      linear_combination r5662
    have ha5 : rho 5358 * (1 - rho 5356) = rho 5353 - rho 5354 - rho 5355 := by
      linear_combination r5663
    have haddx :
        rho 5357 * (1 + 3021 * (rho 5351 * seg5AccX203 rho) * (rho 5350 * seg5AccY203 rho)) =
          rho 5351 * seg5AccX203 rho + rho 5350 * seg5AccY203 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5358 * (1 - 3021 * (rho 5351 * seg5AccX203 rho) * (rho 5350 * seg5AccY203 rho)) =
          (-1) * (rho 5351 * seg5AccX203 rho) - rho 5350 * seg5AccY203 rho +
            (seg5AccY203 rho - seg5AccX203 rho * (-1)) * (rho 5350 + rho 5351) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5358 * (1 - rho 5356) = rho 5353 - rho 5354 - rho 5355 := ha5
        _ = (-1) * rho 5354 - rho 5355 + (seg5AccY203 rho - seg5AccX203 rho * (-1)) * (rho 5350 + rho 5351) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX204 rho = seg5AccX203 rho - Bool.toZMod bit * (seg5AccX203 rho - rho 5357) := by
      have hd : rho 5359 = Bool.toZMod bit * (rho 5357 - seg5AccX203 rho) := by
        rw [← hbit]
        unfold seg5AccX203
        linear_combination -r5664
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY204 rho = seg5AccY203 rho - Bool.toZMod bit * (seg5AccY203 rho - rho 5358) := by
      have hd : rho 5360 = Bool.toZMod bit * (rho 5358 - seg5AccY203 rho) := by
        rw [← hbit]
        unfold seg5AccY203
        linear_combination -r5665
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5350 * rho 5351 = rho 5361 := by linear_combination r5666
    have hd1 : rho 5350 * rho 5350 = rho 5362 := by linear_combination r5667
    have hd2 : rho 5351 * rho 5351 = rho 5363 := by linear_combination r5668
    have hd3 : rho 5364 * (rho 5351 * rho 5351 + rho 5350 * rho 5350 * (-1)) = 2 * (rho 5350 * rho 5351) := by
      rw [hd0, hd1, hd2]
      linear_combination r5669
    have hd4 : rho 5365 * (2 - (rho 5351 * rho 5351 + rho 5350 * rho 5350 * (-1))) = rho 5351 * rho 5351 - rho 5350 * rho 5350 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5670
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX203 rho : Seg5.F), (seg5AccY203 rho : Seg5.F)⟩
      ⟨(rho 5350 : Seg5.F), (rho 5351 : Seg5.F)⟩
      ⟨(rho 5357 : Seg5.F), (rho 5358 : Seg5.F)⟩
      ⟨(seg5AccX204 rho : Seg5.F), (seg5AccY204 rho : Seg5.F)⟩
      ⟨(rho 5364 : Seg5.F), (rho 5365 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung203

theorem seg5_rows204 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5671 rho ∧ Seg5.relationRow5672 rho ∧ Seg5.relationRow5673 rho ∧ Seg5.relationRow5674 rho ∧ Seg5.relationRow5675 rho ∧ Seg5.relationRow5676 rho ∧ Seg5.relationRow5677 rho ∧ Seg5.relationRow5678 rho ∧ Seg5.relationRow5679 rho ∧ Seg5.relationRow5680 rho ∧ Seg5.relationRow5681 rho ∧ Seg5.relationRow5682 rho ∧ Seg5.relationRow5683 rho ∧ Seg5.relationRow5684 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p70, p71, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5671, r5672, r5673, r5674, r5675, r5676, r5677, r5678, r5679⟩
  unfold Seg5.relationPart71 at p71
  rcases p71 with ⟨r5680, r5681, r5682, r5683, r5684, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5671, r5672, r5673, r5674, r5675, r5676, r5677, r5678, r5679, r5680, r5681, r5682, r5683, r5684⟩

theorem seg5_rung204 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2619 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX204 rho : Seg5.F), (seg5AccY204 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5364 : Seg5.F), (rho 5365 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX204 rho : Seg5.F), (seg5AccY204 rho : Seg5.F)⟩
        ⟨(rho 5364 : Seg5.F), (rho 5365 : Seg5.F)⟩
        ⟨(seg5AccX205 rho : Seg5.F), (seg5AccY205 rho : Seg5.F)⟩
        ⟨(rho 5378 : Seg5.F), (rho 5379 : Seg5.F)⟩ := by
  obtain ⟨r5671, r5672, r5673, r5674, r5675, r5676, r5677, r5678, r5679, r5680, r5681, r5682, r5683, r5684⟩ := seg5_rows204 rho h
  unfold Seg5.relationRow5671 at r5671
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5671
  unfold Seg5.relationRow5672 at r5672
  unfold Seg5.relationRow5673 at r5673
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5673
  unfold Seg5.relationRow5674 at r5674
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5674
  unfold Seg5.relationRow5675 at r5675
  unfold Seg5.relationRow5676 at r5676
  unfold Seg5.relationRow5677 at r5677
  unfold Seg5.relationRow5678 at r5678
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5678
  unfold Seg5.relationRow5679 at r5679
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5679
  unfold Seg5.relationRow5680 at r5680
  unfold Seg5.relationRow5681 at r5681
  unfold Seg5.relationRow5682 at r5682
  unfold Seg5.relationRow5683 at r5683
  unfold Seg5.relationRow5684 at r5684
  have hrung204 (bit : Bool) (hbit : rho 2619 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX204 rho : Seg5.F), (seg5AccY204 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5364 : Seg5.F), (rho 5365 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX204 rho : Seg5.F), (seg5AccY204 rho : Seg5.F)⟩
        ⟨(rho 5364 : Seg5.F), (rho 5365 : Seg5.F)⟩
        ⟨(seg5AccX205 rho : Seg5.F), (seg5AccY205 rho : Seg5.F)⟩
        ⟨(rho 5378 : Seg5.F), (rho 5379 : Seg5.F)⟩ := by
    have hnextx : seg5AccX205 rho = seg5AccX204 rho + rho 5373 := by
      unfold seg5AccX205 seg5AccX204
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 54]
      ring
    have hnexty : seg5AccY205 rho = seg5AccY204 rho + rho 5374 := by
      unfold seg5AccY205 seg5AccY204
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 54]
      ring
    have hsum : seg5AccX204 rho + seg5AccY204 rho = rho 5366 := by
      unfold seg5AccX204 seg5AccY204
      linear_combination r5671
    have ha0 : (rho 5364 + rho 5365) * (seg5AccX204 rho + seg5AccY204 rho) = rho 5367 := by
      rw [hsum]
      linear_combination r5672
    have ha1 : rho 5365 * seg5AccX204 rho = rho 5368 := by
      unfold seg5AccX204
      linear_combination r5673
    have ha2 : rho 5364 * seg5AccY204 rho = rho 5369 := by
      unfold seg5AccY204
      linear_combination r5674
    have ha3 : 3021 * rho 5368 * rho 5369 = rho 5370 := by
      linear_combination r5675
    have ha4 : rho 5371 * (1 + rho 5370) = rho 5368 + rho 5369 := by
      linear_combination r5676
    have ha5 : rho 5372 * (1 - rho 5370) = rho 5367 - rho 5368 - rho 5369 := by
      linear_combination r5677
    have haddx :
        rho 5371 * (1 + 3021 * (rho 5365 * seg5AccX204 rho) * (rho 5364 * seg5AccY204 rho)) =
          rho 5365 * seg5AccX204 rho + rho 5364 * seg5AccY204 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5372 * (1 - 3021 * (rho 5365 * seg5AccX204 rho) * (rho 5364 * seg5AccY204 rho)) =
          (-1) * (rho 5365 * seg5AccX204 rho) - rho 5364 * seg5AccY204 rho +
            (seg5AccY204 rho - seg5AccX204 rho * (-1)) * (rho 5364 + rho 5365) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5372 * (1 - rho 5370) = rho 5367 - rho 5368 - rho 5369 := ha5
        _ = (-1) * rho 5368 - rho 5369 + (seg5AccY204 rho - seg5AccX204 rho * (-1)) * (rho 5364 + rho 5365) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX205 rho = seg5AccX204 rho - Bool.toZMod bit * (seg5AccX204 rho - rho 5371) := by
      have hd : rho 5373 = Bool.toZMod bit * (rho 5371 - seg5AccX204 rho) := by
        rw [← hbit]
        unfold seg5AccX204
        linear_combination -r5678
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY205 rho = seg5AccY204 rho - Bool.toZMod bit * (seg5AccY204 rho - rho 5372) := by
      have hd : rho 5374 = Bool.toZMod bit * (rho 5372 - seg5AccY204 rho) := by
        rw [← hbit]
        unfold seg5AccY204
        linear_combination -r5679
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5364 * rho 5365 = rho 5375 := by linear_combination r5680
    have hd1 : rho 5364 * rho 5364 = rho 5376 := by linear_combination r5681
    have hd2 : rho 5365 * rho 5365 = rho 5377 := by linear_combination r5682
    have hd3 : rho 5378 * (rho 5365 * rho 5365 + rho 5364 * rho 5364 * (-1)) = 2 * (rho 5364 * rho 5365) := by
      rw [hd0, hd1, hd2]
      linear_combination r5683
    have hd4 : rho 5379 * (2 - (rho 5365 * rho 5365 + rho 5364 * rho 5364 * (-1))) = rho 5365 * rho 5365 - rho 5364 * rho 5364 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5684
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX204 rho : Seg5.F), (seg5AccY204 rho : Seg5.F)⟩
      ⟨(rho 5364 : Seg5.F), (rho 5365 : Seg5.F)⟩
      ⟨(rho 5371 : Seg5.F), (rho 5372 : Seg5.F)⟩
      ⟨(seg5AccX205 rho : Seg5.F), (seg5AccY205 rho : Seg5.F)⟩
      ⟨(rho 5378 : Seg5.F), (rho 5379 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung204

theorem seg5_rows205 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5685 rho ∧ Seg5.relationRow5686 rho ∧ Seg5.relationRow5687 rho ∧ Seg5.relationRow5688 rho ∧ Seg5.relationRow5689 rho ∧ Seg5.relationRow5690 rho ∧ Seg5.relationRow5691 rho ∧ Seg5.relationRow5692 rho ∧ Seg5.relationRow5693 rho ∧ Seg5.relationRow5694 rho ∧ Seg5.relationRow5695 rho ∧ Seg5.relationRow5696 rho ∧ Seg5.relationRow5697 rho ∧ Seg5.relationRow5698 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p71, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, r5685, r5686, r5687, r5688, r5689, r5690, r5691, r5692, r5693, r5694, r5695, r5696, r5697, r5698, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5685, r5686, r5687, r5688, r5689, r5690, r5691, r5692, r5693, r5694, r5695, r5696, r5697, r5698⟩

theorem seg5_rung205 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2620 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX205 rho : Seg5.F), (seg5AccY205 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5378 : Seg5.F), (rho 5379 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX205 rho : Seg5.F), (seg5AccY205 rho : Seg5.F)⟩
        ⟨(rho 5378 : Seg5.F), (rho 5379 : Seg5.F)⟩
        ⟨(seg5AccX206 rho : Seg5.F), (seg5AccY206 rho : Seg5.F)⟩
        ⟨(rho 5392 : Seg5.F), (rho 5393 : Seg5.F)⟩ := by
  obtain ⟨r5685, r5686, r5687, r5688, r5689, r5690, r5691, r5692, r5693, r5694, r5695, r5696, r5697, r5698⟩ := seg5_rows205 rho h
  unfold Seg5.relationRow5685 at r5685
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5685
  unfold Seg5.relationRow5686 at r5686
  unfold Seg5.relationRow5687 at r5687
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5687
  unfold Seg5.relationRow5688 at r5688
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5688
  unfold Seg5.relationRow5689 at r5689
  unfold Seg5.relationRow5690 at r5690
  unfold Seg5.relationRow5691 at r5691
  unfold Seg5.relationRow5692 at r5692
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5692
  unfold Seg5.relationRow5693 at r5693
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5693
  unfold Seg5.relationRow5694 at r5694
  unfold Seg5.relationRow5695 at r5695
  unfold Seg5.relationRow5696 at r5696
  unfold Seg5.relationRow5697 at r5697
  unfold Seg5.relationRow5698 at r5698
  have hrung205 (bit : Bool) (hbit : rho 2620 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX205 rho : Seg5.F), (seg5AccY205 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5378 : Seg5.F), (rho 5379 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX205 rho : Seg5.F), (seg5AccY205 rho : Seg5.F)⟩
        ⟨(rho 5378 : Seg5.F), (rho 5379 : Seg5.F)⟩
        ⟨(seg5AccX206 rho : Seg5.F), (seg5AccY206 rho : Seg5.F)⟩
        ⟨(rho 5392 : Seg5.F), (rho 5393 : Seg5.F)⟩ := by
    have hnextx : seg5AccX206 rho = seg5AccX205 rho + rho 5387 := by
      unfold seg5AccX206 seg5AccX205
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 55]
      ring
    have hnexty : seg5AccY206 rho = seg5AccY205 rho + rho 5388 := by
      unfold seg5AccY206 seg5AccY205
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 55]
      ring
    have hsum : seg5AccX205 rho + seg5AccY205 rho = rho 5380 := by
      unfold seg5AccX205 seg5AccY205
      linear_combination r5685
    have ha0 : (rho 5378 + rho 5379) * (seg5AccX205 rho + seg5AccY205 rho) = rho 5381 := by
      rw [hsum]
      linear_combination r5686
    have ha1 : rho 5379 * seg5AccX205 rho = rho 5382 := by
      unfold seg5AccX205
      linear_combination r5687
    have ha2 : rho 5378 * seg5AccY205 rho = rho 5383 := by
      unfold seg5AccY205
      linear_combination r5688
    have ha3 : 3021 * rho 5382 * rho 5383 = rho 5384 := by
      linear_combination r5689
    have ha4 : rho 5385 * (1 + rho 5384) = rho 5382 + rho 5383 := by
      linear_combination r5690
    have ha5 : rho 5386 * (1 - rho 5384) = rho 5381 - rho 5382 - rho 5383 := by
      linear_combination r5691
    have haddx :
        rho 5385 * (1 + 3021 * (rho 5379 * seg5AccX205 rho) * (rho 5378 * seg5AccY205 rho)) =
          rho 5379 * seg5AccX205 rho + rho 5378 * seg5AccY205 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5386 * (1 - 3021 * (rho 5379 * seg5AccX205 rho) * (rho 5378 * seg5AccY205 rho)) =
          (-1) * (rho 5379 * seg5AccX205 rho) - rho 5378 * seg5AccY205 rho +
            (seg5AccY205 rho - seg5AccX205 rho * (-1)) * (rho 5378 + rho 5379) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5386 * (1 - rho 5384) = rho 5381 - rho 5382 - rho 5383 := ha5
        _ = (-1) * rho 5382 - rho 5383 + (seg5AccY205 rho - seg5AccX205 rho * (-1)) * (rho 5378 + rho 5379) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX206 rho = seg5AccX205 rho - Bool.toZMod bit * (seg5AccX205 rho - rho 5385) := by
      have hd : rho 5387 = Bool.toZMod bit * (rho 5385 - seg5AccX205 rho) := by
        rw [← hbit]
        unfold seg5AccX205
        linear_combination -r5692
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY206 rho = seg5AccY205 rho - Bool.toZMod bit * (seg5AccY205 rho - rho 5386) := by
      have hd : rho 5388 = Bool.toZMod bit * (rho 5386 - seg5AccY205 rho) := by
        rw [← hbit]
        unfold seg5AccY205
        linear_combination -r5693
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5378 * rho 5379 = rho 5389 := by linear_combination r5694
    have hd1 : rho 5378 * rho 5378 = rho 5390 := by linear_combination r5695
    have hd2 : rho 5379 * rho 5379 = rho 5391 := by linear_combination r5696
    have hd3 : rho 5392 * (rho 5379 * rho 5379 + rho 5378 * rho 5378 * (-1)) = 2 * (rho 5378 * rho 5379) := by
      rw [hd0, hd1, hd2]
      linear_combination r5697
    have hd4 : rho 5393 * (2 - (rho 5379 * rho 5379 + rho 5378 * rho 5378 * (-1))) = rho 5379 * rho 5379 - rho 5378 * rho 5378 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5698
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX205 rho : Seg5.F), (seg5AccY205 rho : Seg5.F)⟩
      ⟨(rho 5378 : Seg5.F), (rho 5379 : Seg5.F)⟩
      ⟨(rho 5385 : Seg5.F), (rho 5386 : Seg5.F)⟩
      ⟨(seg5AccX206 rho : Seg5.F), (seg5AccY206 rho : Seg5.F)⟩
      ⟨(rho 5392 : Seg5.F), (rho 5393 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung205

theorem seg5_rows206 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5699 rho ∧ Seg5.relationRow5700 rho ∧ Seg5.relationRow5701 rho ∧ Seg5.relationRow5702 rho ∧ Seg5.relationRow5703 rho ∧ Seg5.relationRow5704 rho ∧ Seg5.relationRow5705 rho ∧ Seg5.relationRow5706 rho ∧ Seg5.relationRow5707 rho ∧ Seg5.relationRow5708 rho ∧ Seg5.relationRow5709 rho ∧ Seg5.relationRow5710 rho ∧ Seg5.relationRow5711 rho ∧ Seg5.relationRow5712 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p71, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5699, r5700, r5701, r5702, r5703, r5704, r5705, r5706, r5707, r5708, r5709, r5710, r5711, r5712, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5699, r5700, r5701, r5702, r5703, r5704, r5705, r5706, r5707, r5708, r5709, r5710, r5711, r5712⟩

theorem seg5_rung206 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2621 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX206 rho : Seg5.F), (seg5AccY206 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5392 : Seg5.F), (rho 5393 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX206 rho : Seg5.F), (seg5AccY206 rho : Seg5.F)⟩
        ⟨(rho 5392 : Seg5.F), (rho 5393 : Seg5.F)⟩
        ⟨(seg5AccX207 rho : Seg5.F), (seg5AccY207 rho : Seg5.F)⟩
        ⟨(rho 5406 : Seg5.F), (rho 5407 : Seg5.F)⟩ := by
  obtain ⟨r5699, r5700, r5701, r5702, r5703, r5704, r5705, r5706, r5707, r5708, r5709, r5710, r5711, r5712⟩ := seg5_rows206 rho h
  unfold Seg5.relationRow5699 at r5699
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5699
  unfold Seg5.relationRow5700 at r5700
  unfold Seg5.relationRow5701 at r5701
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5701
  unfold Seg5.relationRow5702 at r5702
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5702
  unfold Seg5.relationRow5703 at r5703
  unfold Seg5.relationRow5704 at r5704
  unfold Seg5.relationRow5705 at r5705
  unfold Seg5.relationRow5706 at r5706
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5706
  unfold Seg5.relationRow5707 at r5707
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5707
  unfold Seg5.relationRow5708 at r5708
  unfold Seg5.relationRow5709 at r5709
  unfold Seg5.relationRow5710 at r5710
  unfold Seg5.relationRow5711 at r5711
  unfold Seg5.relationRow5712 at r5712
  have hrung206 (bit : Bool) (hbit : rho 2621 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX206 rho : Seg5.F), (seg5AccY206 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5392 : Seg5.F), (rho 5393 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX206 rho : Seg5.F), (seg5AccY206 rho : Seg5.F)⟩
        ⟨(rho 5392 : Seg5.F), (rho 5393 : Seg5.F)⟩
        ⟨(seg5AccX207 rho : Seg5.F), (seg5AccY207 rho : Seg5.F)⟩
        ⟨(rho 5406 : Seg5.F), (rho 5407 : Seg5.F)⟩ := by
    have hnextx : seg5AccX207 rho = seg5AccX206 rho + rho 5401 := by
      unfold seg5AccX207 seg5AccX206
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 56]
      ring
    have hnexty : seg5AccY207 rho = seg5AccY206 rho + rho 5402 := by
      unfold seg5AccY207 seg5AccY206
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 56]
      ring
    have hsum : seg5AccX206 rho + seg5AccY206 rho = rho 5394 := by
      unfold seg5AccX206 seg5AccY206
      linear_combination r5699
    have ha0 : (rho 5392 + rho 5393) * (seg5AccX206 rho + seg5AccY206 rho) = rho 5395 := by
      rw [hsum]
      linear_combination r5700
    have ha1 : rho 5393 * seg5AccX206 rho = rho 5396 := by
      unfold seg5AccX206
      linear_combination r5701
    have ha2 : rho 5392 * seg5AccY206 rho = rho 5397 := by
      unfold seg5AccY206
      linear_combination r5702
    have ha3 : 3021 * rho 5396 * rho 5397 = rho 5398 := by
      linear_combination r5703
    have ha4 : rho 5399 * (1 + rho 5398) = rho 5396 + rho 5397 := by
      linear_combination r5704
    have ha5 : rho 5400 * (1 - rho 5398) = rho 5395 - rho 5396 - rho 5397 := by
      linear_combination r5705
    have haddx :
        rho 5399 * (1 + 3021 * (rho 5393 * seg5AccX206 rho) * (rho 5392 * seg5AccY206 rho)) =
          rho 5393 * seg5AccX206 rho + rho 5392 * seg5AccY206 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5400 * (1 - 3021 * (rho 5393 * seg5AccX206 rho) * (rho 5392 * seg5AccY206 rho)) =
          (-1) * (rho 5393 * seg5AccX206 rho) - rho 5392 * seg5AccY206 rho +
            (seg5AccY206 rho - seg5AccX206 rho * (-1)) * (rho 5392 + rho 5393) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5400 * (1 - rho 5398) = rho 5395 - rho 5396 - rho 5397 := ha5
        _ = (-1) * rho 5396 - rho 5397 + (seg5AccY206 rho - seg5AccX206 rho * (-1)) * (rho 5392 + rho 5393) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX207 rho = seg5AccX206 rho - Bool.toZMod bit * (seg5AccX206 rho - rho 5399) := by
      have hd : rho 5401 = Bool.toZMod bit * (rho 5399 - seg5AccX206 rho) := by
        rw [← hbit]
        unfold seg5AccX206
        linear_combination -r5706
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY207 rho = seg5AccY206 rho - Bool.toZMod bit * (seg5AccY206 rho - rho 5400) := by
      have hd : rho 5402 = Bool.toZMod bit * (rho 5400 - seg5AccY206 rho) := by
        rw [← hbit]
        unfold seg5AccY206
        linear_combination -r5707
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5392 * rho 5393 = rho 5403 := by linear_combination r5708
    have hd1 : rho 5392 * rho 5392 = rho 5404 := by linear_combination r5709
    have hd2 : rho 5393 * rho 5393 = rho 5405 := by linear_combination r5710
    have hd3 : rho 5406 * (rho 5393 * rho 5393 + rho 5392 * rho 5392 * (-1)) = 2 * (rho 5392 * rho 5393) := by
      rw [hd0, hd1, hd2]
      linear_combination r5711
    have hd4 : rho 5407 * (2 - (rho 5393 * rho 5393 + rho 5392 * rho 5392 * (-1))) = rho 5393 * rho 5393 - rho 5392 * rho 5392 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5712
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX206 rho : Seg5.F), (seg5AccY206 rho : Seg5.F)⟩
      ⟨(rho 5392 : Seg5.F), (rho 5393 : Seg5.F)⟩
      ⟨(rho 5399 : Seg5.F), (rho 5400 : Seg5.F)⟩
      ⟨(seg5AccX207 rho : Seg5.F), (seg5AccY207 rho : Seg5.F)⟩
      ⟨(rho 5406 : Seg5.F), (rho 5407 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung206

theorem seg5_rows207 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5713 rho ∧ Seg5.relationRow5714 rho ∧ Seg5.relationRow5715 rho ∧ Seg5.relationRow5716 rho ∧ Seg5.relationRow5717 rho ∧ Seg5.relationRow5718 rho ∧ Seg5.relationRow5719 rho ∧ Seg5.relationRow5720 rho ∧ Seg5.relationRow5721 rho ∧ Seg5.relationRow5722 rho ∧ Seg5.relationRow5723 rho ∧ Seg5.relationRow5724 rho ∧ Seg5.relationRow5725 rho ∧ Seg5.relationRow5726 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p71, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5713, r5714, r5715, r5716, r5717, r5718, r5719, r5720, r5721, r5722, r5723, r5724, r5725, r5726, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5713, r5714, r5715, r5716, r5717, r5718, r5719, r5720, r5721, r5722, r5723, r5724, r5725, r5726⟩

theorem seg5_rung207 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2622 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX207 rho : Seg5.F), (seg5AccY207 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5406 : Seg5.F), (rho 5407 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX207 rho : Seg5.F), (seg5AccY207 rho : Seg5.F)⟩
        ⟨(rho 5406 : Seg5.F), (rho 5407 : Seg5.F)⟩
        ⟨(seg5AccX208 rho : Seg5.F), (seg5AccY208 rho : Seg5.F)⟩
        ⟨(rho 5420 : Seg5.F), (rho 5421 : Seg5.F)⟩ := by
  obtain ⟨r5713, r5714, r5715, r5716, r5717, r5718, r5719, r5720, r5721, r5722, r5723, r5724, r5725, r5726⟩ := seg5_rows207 rho h
  unfold Seg5.relationRow5713 at r5713
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5713
  unfold Seg5.relationRow5714 at r5714
  unfold Seg5.relationRow5715 at r5715
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5715
  unfold Seg5.relationRow5716 at r5716
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5716
  unfold Seg5.relationRow5717 at r5717
  unfold Seg5.relationRow5718 at r5718
  unfold Seg5.relationRow5719 at r5719
  unfold Seg5.relationRow5720 at r5720
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5720
  unfold Seg5.relationRow5721 at r5721
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5721
  unfold Seg5.relationRow5722 at r5722
  unfold Seg5.relationRow5723 at r5723
  unfold Seg5.relationRow5724 at r5724
  unfold Seg5.relationRow5725 at r5725
  unfold Seg5.relationRow5726 at r5726
  have hrung207 (bit : Bool) (hbit : rho 2622 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX207 rho : Seg5.F), (seg5AccY207 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5406 : Seg5.F), (rho 5407 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX207 rho : Seg5.F), (seg5AccY207 rho : Seg5.F)⟩
        ⟨(rho 5406 : Seg5.F), (rho 5407 : Seg5.F)⟩
        ⟨(seg5AccX208 rho : Seg5.F), (seg5AccY208 rho : Seg5.F)⟩
        ⟨(rho 5420 : Seg5.F), (rho 5421 : Seg5.F)⟩ := by
    have hnextx : seg5AccX208 rho = seg5AccX207 rho + rho 5415 := by
      unfold seg5AccX208 seg5AccX207
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 57]
      ring
    have hnexty : seg5AccY208 rho = seg5AccY207 rho + rho 5416 := by
      unfold seg5AccY208 seg5AccY207
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 57]
      ring
    have hsum : seg5AccX207 rho + seg5AccY207 rho = rho 5408 := by
      unfold seg5AccX207 seg5AccY207
      linear_combination r5713
    have ha0 : (rho 5406 + rho 5407) * (seg5AccX207 rho + seg5AccY207 rho) = rho 5409 := by
      rw [hsum]
      linear_combination r5714
    have ha1 : rho 5407 * seg5AccX207 rho = rho 5410 := by
      unfold seg5AccX207
      linear_combination r5715
    have ha2 : rho 5406 * seg5AccY207 rho = rho 5411 := by
      unfold seg5AccY207
      linear_combination r5716
    have ha3 : 3021 * rho 5410 * rho 5411 = rho 5412 := by
      linear_combination r5717
    have ha4 : rho 5413 * (1 + rho 5412) = rho 5410 + rho 5411 := by
      linear_combination r5718
    have ha5 : rho 5414 * (1 - rho 5412) = rho 5409 - rho 5410 - rho 5411 := by
      linear_combination r5719
    have haddx :
        rho 5413 * (1 + 3021 * (rho 5407 * seg5AccX207 rho) * (rho 5406 * seg5AccY207 rho)) =
          rho 5407 * seg5AccX207 rho + rho 5406 * seg5AccY207 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5414 * (1 - 3021 * (rho 5407 * seg5AccX207 rho) * (rho 5406 * seg5AccY207 rho)) =
          (-1) * (rho 5407 * seg5AccX207 rho) - rho 5406 * seg5AccY207 rho +
            (seg5AccY207 rho - seg5AccX207 rho * (-1)) * (rho 5406 + rho 5407) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5414 * (1 - rho 5412) = rho 5409 - rho 5410 - rho 5411 := ha5
        _ = (-1) * rho 5410 - rho 5411 + (seg5AccY207 rho - seg5AccX207 rho * (-1)) * (rho 5406 + rho 5407) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX208 rho = seg5AccX207 rho - Bool.toZMod bit * (seg5AccX207 rho - rho 5413) := by
      have hd : rho 5415 = Bool.toZMod bit * (rho 5413 - seg5AccX207 rho) := by
        rw [← hbit]
        unfold seg5AccX207
        linear_combination -r5720
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY208 rho = seg5AccY207 rho - Bool.toZMod bit * (seg5AccY207 rho - rho 5414) := by
      have hd : rho 5416 = Bool.toZMod bit * (rho 5414 - seg5AccY207 rho) := by
        rw [← hbit]
        unfold seg5AccY207
        linear_combination -r5721
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5406 * rho 5407 = rho 5417 := by linear_combination r5722
    have hd1 : rho 5406 * rho 5406 = rho 5418 := by linear_combination r5723
    have hd2 : rho 5407 * rho 5407 = rho 5419 := by linear_combination r5724
    have hd3 : rho 5420 * (rho 5407 * rho 5407 + rho 5406 * rho 5406 * (-1)) = 2 * (rho 5406 * rho 5407) := by
      rw [hd0, hd1, hd2]
      linear_combination r5725
    have hd4 : rho 5421 * (2 - (rho 5407 * rho 5407 + rho 5406 * rho 5406 * (-1))) = rho 5407 * rho 5407 - rho 5406 * rho 5406 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5726
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX207 rho : Seg5.F), (seg5AccY207 rho : Seg5.F)⟩
      ⟨(rho 5406 : Seg5.F), (rho 5407 : Seg5.F)⟩
      ⟨(rho 5413 : Seg5.F), (rho 5414 : Seg5.F)⟩
      ⟨(seg5AccX208 rho : Seg5.F), (seg5AccY208 rho : Seg5.F)⟩
      ⟨(rho 5420 : Seg5.F), (rho 5421 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung207

theorem seg5_rows208 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5727 rho ∧ Seg5.relationRow5728 rho ∧ Seg5.relationRow5729 rho ∧ Seg5.relationRow5730 rho ∧ Seg5.relationRow5731 rho ∧ Seg5.relationRow5732 rho ∧ Seg5.relationRow5733 rho ∧ Seg5.relationRow5734 rho ∧ Seg5.relationRow5735 rho ∧ Seg5.relationRow5736 rho ∧ Seg5.relationRow5737 rho ∧ Seg5.relationRow5738 rho ∧ Seg5.relationRow5739 rho ∧ Seg5.relationRow5740 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p71, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5727, r5728, r5729, r5730, r5731, r5732, r5733, r5734, r5735, r5736, r5737, r5738, r5739, r5740, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5727, r5728, r5729, r5730, r5731, r5732, r5733, r5734, r5735, r5736, r5737, r5738, r5739, r5740⟩

theorem seg5_rung208 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2623 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX208 rho : Seg5.F), (seg5AccY208 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5420 : Seg5.F), (rho 5421 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX208 rho : Seg5.F), (seg5AccY208 rho : Seg5.F)⟩
        ⟨(rho 5420 : Seg5.F), (rho 5421 : Seg5.F)⟩
        ⟨(seg5AccX209 rho : Seg5.F), (seg5AccY209 rho : Seg5.F)⟩
        ⟨(rho 5434 : Seg5.F), (rho 5435 : Seg5.F)⟩ := by
  obtain ⟨r5727, r5728, r5729, r5730, r5731, r5732, r5733, r5734, r5735, r5736, r5737, r5738, r5739, r5740⟩ := seg5_rows208 rho h
  unfold Seg5.relationRow5727 at r5727
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5727
  unfold Seg5.relationRow5728 at r5728
  unfold Seg5.relationRow5729 at r5729
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5729
  unfold Seg5.relationRow5730 at r5730
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5730
  unfold Seg5.relationRow5731 at r5731
  unfold Seg5.relationRow5732 at r5732
  unfold Seg5.relationRow5733 at r5733
  unfold Seg5.relationRow5734 at r5734
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5734
  unfold Seg5.relationRow5735 at r5735
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5735
  unfold Seg5.relationRow5736 at r5736
  unfold Seg5.relationRow5737 at r5737
  unfold Seg5.relationRow5738 at r5738
  unfold Seg5.relationRow5739 at r5739
  unfold Seg5.relationRow5740 at r5740
  have hrung208 (bit : Bool) (hbit : rho 2623 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX208 rho : Seg5.F), (seg5AccY208 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5420 : Seg5.F), (rho 5421 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX208 rho : Seg5.F), (seg5AccY208 rho : Seg5.F)⟩
        ⟨(rho 5420 : Seg5.F), (rho 5421 : Seg5.F)⟩
        ⟨(seg5AccX209 rho : Seg5.F), (seg5AccY209 rho : Seg5.F)⟩
        ⟨(rho 5434 : Seg5.F), (rho 5435 : Seg5.F)⟩ := by
    have hnextx : seg5AccX209 rho = seg5AccX208 rho + rho 5429 := by
      unfold seg5AccX209 seg5AccX208
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 58]
      ring
    have hnexty : seg5AccY209 rho = seg5AccY208 rho + rho 5430 := by
      unfold seg5AccY209 seg5AccY208
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 58]
      ring
    have hsum : seg5AccX208 rho + seg5AccY208 rho = rho 5422 := by
      unfold seg5AccX208 seg5AccY208
      linear_combination r5727
    have ha0 : (rho 5420 + rho 5421) * (seg5AccX208 rho + seg5AccY208 rho) = rho 5423 := by
      rw [hsum]
      linear_combination r5728
    have ha1 : rho 5421 * seg5AccX208 rho = rho 5424 := by
      unfold seg5AccX208
      linear_combination r5729
    have ha2 : rho 5420 * seg5AccY208 rho = rho 5425 := by
      unfold seg5AccY208
      linear_combination r5730
    have ha3 : 3021 * rho 5424 * rho 5425 = rho 5426 := by
      linear_combination r5731
    have ha4 : rho 5427 * (1 + rho 5426) = rho 5424 + rho 5425 := by
      linear_combination r5732
    have ha5 : rho 5428 * (1 - rho 5426) = rho 5423 - rho 5424 - rho 5425 := by
      linear_combination r5733
    have haddx :
        rho 5427 * (1 + 3021 * (rho 5421 * seg5AccX208 rho) * (rho 5420 * seg5AccY208 rho)) =
          rho 5421 * seg5AccX208 rho + rho 5420 * seg5AccY208 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5428 * (1 - 3021 * (rho 5421 * seg5AccX208 rho) * (rho 5420 * seg5AccY208 rho)) =
          (-1) * (rho 5421 * seg5AccX208 rho) - rho 5420 * seg5AccY208 rho +
            (seg5AccY208 rho - seg5AccX208 rho * (-1)) * (rho 5420 + rho 5421) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5428 * (1 - rho 5426) = rho 5423 - rho 5424 - rho 5425 := ha5
        _ = (-1) * rho 5424 - rho 5425 + (seg5AccY208 rho - seg5AccX208 rho * (-1)) * (rho 5420 + rho 5421) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX209 rho = seg5AccX208 rho - Bool.toZMod bit * (seg5AccX208 rho - rho 5427) := by
      have hd : rho 5429 = Bool.toZMod bit * (rho 5427 - seg5AccX208 rho) := by
        rw [← hbit]
        unfold seg5AccX208
        linear_combination -r5734
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY209 rho = seg5AccY208 rho - Bool.toZMod bit * (seg5AccY208 rho - rho 5428) := by
      have hd : rho 5430 = Bool.toZMod bit * (rho 5428 - seg5AccY208 rho) := by
        rw [← hbit]
        unfold seg5AccY208
        linear_combination -r5735
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5420 * rho 5421 = rho 5431 := by linear_combination r5736
    have hd1 : rho 5420 * rho 5420 = rho 5432 := by linear_combination r5737
    have hd2 : rho 5421 * rho 5421 = rho 5433 := by linear_combination r5738
    have hd3 : rho 5434 * (rho 5421 * rho 5421 + rho 5420 * rho 5420 * (-1)) = 2 * (rho 5420 * rho 5421) := by
      rw [hd0, hd1, hd2]
      linear_combination r5739
    have hd4 : rho 5435 * (2 - (rho 5421 * rho 5421 + rho 5420 * rho 5420 * (-1))) = rho 5421 * rho 5421 - rho 5420 * rho 5420 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5740
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX208 rho : Seg5.F), (seg5AccY208 rho : Seg5.F)⟩
      ⟨(rho 5420 : Seg5.F), (rho 5421 : Seg5.F)⟩
      ⟨(rho 5427 : Seg5.F), (rho 5428 : Seg5.F)⟩
      ⟨(seg5AccX209 rho : Seg5.F), (seg5AccY209 rho : Seg5.F)⟩
      ⟨(rho 5434 : Seg5.F), (rho 5435 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung208

theorem seg5_hstep_c18 (rho : Nat -> Seg5.F) (h : Seg5.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (2415 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 198 ≤ i → i < 209 →
      EdwardsBridge.onCurve (seg5LadderAccState rho i) →
      EdwardsBridge.onCurve (seg5LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg5LadderAccState rho i) (seg5LadderCurState rho i)
        (seg5LadderAccState rho (i + 1)) (seg5LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg5_rung198 rho h bits[198]! (hbitAt 198 (by omega)) hacc hcur
  · exact seg5_rung199 rho h bits[199]! (hbitAt 199 (by omega)) hacc hcur
  · exact seg5_rung200 rho h bits[200]! (hbitAt 200 (by omega)) hacc hcur
  · exact seg5_rung201 rho h bits[201]! (hbitAt 201 (by omega)) hacc hcur
  · exact seg5_rung202 rho h bits[202]! (hbitAt 202 (by omega)) hacc hcur
  · exact seg5_rung203 rho h bits[203]! (hbitAt 203 (by omega)) hacc hcur
  · exact seg5_rung204 rho h bits[204]! (hbitAt 204 (by omega)) hacc hcur
  · exact seg5_rung205 rho h bits[205]! (hbitAt 205 (by omega)) hacc hcur
  · exact seg5_rung206 rho h bits[206]! (hbitAt 206 (by omega)) hacc hcur
  · exact seg5_rung207 rho h bits[207]! (hbitAt 207 (by omega)) hacc hcur
  · exact seg5_rung208 rho h bits[208]! (hbitAt 208 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
