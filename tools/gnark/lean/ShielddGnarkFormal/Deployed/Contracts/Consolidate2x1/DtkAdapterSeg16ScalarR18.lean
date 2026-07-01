import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg16_rows198 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5587 rho ∧ Seg16.relationRow5588 rho ∧ Seg16.relationRow5589 rho ∧ Seg16.relationRow5590 rho ∧ Seg16.relationRow5591 rho ∧ Seg16.relationRow5592 rho ∧ Seg16.relationRow5593 rho ∧ Seg16.relationRow5594 rho ∧ Seg16.relationRow5595 rho ∧ Seg16.relationRow5596 rho ∧ Seg16.relationRow5597 rho ∧ Seg16.relationRow5598 rho ∧ Seg16.relationRow5599 rho ∧ Seg16.relationRow5600 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5587, r5588, r5589, r5590, r5591, r5592, r5593, r5594, r5595, r5596, r5597, r5598, r5599⟩
  unfold Seg16.relationPart70 at p70
  rcases p70 with ⟨r5600, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5587, r5588, r5589, r5590, r5591, r5592, r5593, r5594, r5595, r5596, r5597, r5598, r5599, r5600⟩

theorem seg16_rung198 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15490 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX198 rho : Seg16.F), (seg16AccY198 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18157 : Seg16.F), (rho 18158 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX198 rho : Seg16.F), (seg16AccY198 rho : Seg16.F)⟩
        ⟨(rho 18157 : Seg16.F), (rho 18158 : Seg16.F)⟩
        ⟨(seg16AccX199 rho : Seg16.F), (seg16AccY199 rho : Seg16.F)⟩
        ⟨(rho 18171 : Seg16.F), (rho 18172 : Seg16.F)⟩ := by
  obtain ⟨r5587, r5588, r5589, r5590, r5591, r5592, r5593, r5594, r5595, r5596, r5597, r5598, r5599, r5600⟩ := seg16_rows198 rho h
  unfold Seg16.relationRow5587 at r5587
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5587
  unfold Seg16.relationRow5588 at r5588
  unfold Seg16.relationRow5589 at r5589
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5589
  unfold Seg16.relationRow5590 at r5590
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5590
  unfold Seg16.relationRow5591 at r5591
  unfold Seg16.relationRow5592 at r5592
  unfold Seg16.relationRow5593 at r5593
  unfold Seg16.relationRow5594 at r5594
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5594
  unfold Seg16.relationRow5595 at r5595
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5595
  unfold Seg16.relationRow5596 at r5596
  unfold Seg16.relationRow5597 at r5597
  unfold Seg16.relationRow5598 at r5598
  unfold Seg16.relationRow5599 at r5599
  unfold Seg16.relationRow5600 at r5600
  have hrung198 (bit : Bool) (hbit : rho 15490 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX198 rho : Seg16.F), (seg16AccY198 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18157 : Seg16.F), (rho 18158 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX198 rho : Seg16.F), (seg16AccY198 rho : Seg16.F)⟩
        ⟨(rho 18157 : Seg16.F), (rho 18158 : Seg16.F)⟩
        ⟨(seg16AccX199 rho : Seg16.F), (seg16AccY199 rho : Seg16.F)⟩
        ⟨(rho 18171 : Seg16.F), (rho 18172 : Seg16.F)⟩ := by
    have hnextx : seg16AccX199 rho = seg16AccX198 rho + rho 18166 := by
      unfold seg16AccX199 seg16AccX198
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 48]
      ring
    have hnexty : seg16AccY199 rho = seg16AccY198 rho + rho 18167 := by
      unfold seg16AccY199 seg16AccY198
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 48]
      ring
    have hsum : seg16AccX198 rho + seg16AccY198 rho = rho 18159 := by
      unfold seg16AccX198 seg16AccY198
      linear_combination r5587
    have ha0 : (rho 18157 + rho 18158) * (seg16AccX198 rho + seg16AccY198 rho) = rho 18160 := by
      rw [hsum]
      linear_combination r5588
    have ha1 : rho 18158 * seg16AccX198 rho = rho 18161 := by
      unfold seg16AccX198
      linear_combination r5589
    have ha2 : rho 18157 * seg16AccY198 rho = rho 18162 := by
      unfold seg16AccY198
      linear_combination r5590
    have ha3 : 3021 * rho 18161 * rho 18162 = rho 18163 := by
      linear_combination r5591
    have ha4 : rho 18164 * (1 + rho 18163) = rho 18161 + rho 18162 := by
      linear_combination r5592
    have ha5 : rho 18165 * (1 - rho 18163) = rho 18160 - rho 18161 - rho 18162 := by
      linear_combination r5593
    have haddx :
        rho 18164 * (1 + 3021 * (rho 18158 * seg16AccX198 rho) * (rho 18157 * seg16AccY198 rho)) =
          rho 18158 * seg16AccX198 rho + rho 18157 * seg16AccY198 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18165 * (1 - 3021 * (rho 18158 * seg16AccX198 rho) * (rho 18157 * seg16AccY198 rho)) =
          (-1) * (rho 18158 * seg16AccX198 rho) - rho 18157 * seg16AccY198 rho +
            (seg16AccY198 rho - seg16AccX198 rho * (-1)) * (rho 18157 + rho 18158) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18165 * (1 - rho 18163) = rho 18160 - rho 18161 - rho 18162 := ha5
        _ = (-1) * rho 18161 - rho 18162 + (seg16AccY198 rho - seg16AccX198 rho * (-1)) * (rho 18157 + rho 18158) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX199 rho = seg16AccX198 rho - Bool.toZMod bit * (seg16AccX198 rho - rho 18164) := by
      have hd : rho 18166 = Bool.toZMod bit * (rho 18164 - seg16AccX198 rho) := by
        rw [← hbit]
        unfold seg16AccX198
        linear_combination -r5594
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY199 rho = seg16AccY198 rho - Bool.toZMod bit * (seg16AccY198 rho - rho 18165) := by
      have hd : rho 18167 = Bool.toZMod bit * (rho 18165 - seg16AccY198 rho) := by
        rw [← hbit]
        unfold seg16AccY198
        linear_combination -r5595
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18157 * rho 18158 = rho 18168 := by linear_combination r5596
    have hd1 : rho 18157 * rho 18157 = rho 18169 := by linear_combination r5597
    have hd2 : rho 18158 * rho 18158 = rho 18170 := by linear_combination r5598
    have hd3 : rho 18171 * (rho 18158 * rho 18158 + rho 18157 * rho 18157 * (-1)) = 2 * (rho 18157 * rho 18158) := by
      rw [hd0, hd1, hd2]
      linear_combination r5599
    have hd4 : rho 18172 * (2 - (rho 18158 * rho 18158 + rho 18157 * rho 18157 * (-1))) = rho 18158 * rho 18158 - rho 18157 * rho 18157 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5600
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX198 rho : Seg16.F), (seg16AccY198 rho : Seg16.F)⟩
      ⟨(rho 18157 : Seg16.F), (rho 18158 : Seg16.F)⟩
      ⟨(rho 18164 : Seg16.F), (rho 18165 : Seg16.F)⟩
      ⟨(seg16AccX199 rho : Seg16.F), (seg16AccY199 rho : Seg16.F)⟩
      ⟨(rho 18171 : Seg16.F), (rho 18172 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung198

theorem seg16_rows199 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5601 rho ∧ Seg16.relationRow5602 rho ∧ Seg16.relationRow5603 rho ∧ Seg16.relationRow5604 rho ∧ Seg16.relationRow5605 rho ∧ Seg16.relationRow5606 rho ∧ Seg16.relationRow5607 rho ∧ Seg16.relationRow5608 rho ∧ Seg16.relationRow5609 rho ∧ Seg16.relationRow5610 rho ∧ Seg16.relationRow5611 rho ∧ Seg16.relationRow5612 rho ∧ Seg16.relationRow5613 rho ∧ Seg16.relationRow5614 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart70 at p70
  rcases p70 with ⟨_, r5601, r5602, r5603, r5604, r5605, r5606, r5607, r5608, r5609, r5610, r5611, r5612, r5613, r5614, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5601, r5602, r5603, r5604, r5605, r5606, r5607, r5608, r5609, r5610, r5611, r5612, r5613, r5614⟩

theorem seg16_rung199 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15491 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX199 rho : Seg16.F), (seg16AccY199 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18171 : Seg16.F), (rho 18172 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX199 rho : Seg16.F), (seg16AccY199 rho : Seg16.F)⟩
        ⟨(rho 18171 : Seg16.F), (rho 18172 : Seg16.F)⟩
        ⟨(seg16AccX200 rho : Seg16.F), (seg16AccY200 rho : Seg16.F)⟩
        ⟨(rho 18185 : Seg16.F), (rho 18186 : Seg16.F)⟩ := by
  obtain ⟨r5601, r5602, r5603, r5604, r5605, r5606, r5607, r5608, r5609, r5610, r5611, r5612, r5613, r5614⟩ := seg16_rows199 rho h
  unfold Seg16.relationRow5601 at r5601
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5601
  unfold Seg16.relationRow5602 at r5602
  unfold Seg16.relationRow5603 at r5603
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5603
  unfold Seg16.relationRow5604 at r5604
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5604
  unfold Seg16.relationRow5605 at r5605
  unfold Seg16.relationRow5606 at r5606
  unfold Seg16.relationRow5607 at r5607
  unfold Seg16.relationRow5608 at r5608
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5608
  unfold Seg16.relationRow5609 at r5609
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5609
  unfold Seg16.relationRow5610 at r5610
  unfold Seg16.relationRow5611 at r5611
  unfold Seg16.relationRow5612 at r5612
  unfold Seg16.relationRow5613 at r5613
  unfold Seg16.relationRow5614 at r5614
  have hrung199 (bit : Bool) (hbit : rho 15491 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX199 rho : Seg16.F), (seg16AccY199 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18171 : Seg16.F), (rho 18172 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX199 rho : Seg16.F), (seg16AccY199 rho : Seg16.F)⟩
        ⟨(rho 18171 : Seg16.F), (rho 18172 : Seg16.F)⟩
        ⟨(seg16AccX200 rho : Seg16.F), (seg16AccY200 rho : Seg16.F)⟩
        ⟨(rho 18185 : Seg16.F), (rho 18186 : Seg16.F)⟩ := by
    have hnextx : seg16AccX200 rho = seg16AccX199 rho + rho 18180 := by
      unfold seg16AccX200 seg16AccX199
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 49]
      ring
    have hnexty : seg16AccY200 rho = seg16AccY199 rho + rho 18181 := by
      unfold seg16AccY200 seg16AccY199
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 49]
      ring
    have hsum : seg16AccX199 rho + seg16AccY199 rho = rho 18173 := by
      unfold seg16AccX199 seg16AccY199
      linear_combination r5601
    have ha0 : (rho 18171 + rho 18172) * (seg16AccX199 rho + seg16AccY199 rho) = rho 18174 := by
      rw [hsum]
      linear_combination r5602
    have ha1 : rho 18172 * seg16AccX199 rho = rho 18175 := by
      unfold seg16AccX199
      linear_combination r5603
    have ha2 : rho 18171 * seg16AccY199 rho = rho 18176 := by
      unfold seg16AccY199
      linear_combination r5604
    have ha3 : 3021 * rho 18175 * rho 18176 = rho 18177 := by
      linear_combination r5605
    have ha4 : rho 18178 * (1 + rho 18177) = rho 18175 + rho 18176 := by
      linear_combination r5606
    have ha5 : rho 18179 * (1 - rho 18177) = rho 18174 - rho 18175 - rho 18176 := by
      linear_combination r5607
    have haddx :
        rho 18178 * (1 + 3021 * (rho 18172 * seg16AccX199 rho) * (rho 18171 * seg16AccY199 rho)) =
          rho 18172 * seg16AccX199 rho + rho 18171 * seg16AccY199 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18179 * (1 - 3021 * (rho 18172 * seg16AccX199 rho) * (rho 18171 * seg16AccY199 rho)) =
          (-1) * (rho 18172 * seg16AccX199 rho) - rho 18171 * seg16AccY199 rho +
            (seg16AccY199 rho - seg16AccX199 rho * (-1)) * (rho 18171 + rho 18172) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18179 * (1 - rho 18177) = rho 18174 - rho 18175 - rho 18176 := ha5
        _ = (-1) * rho 18175 - rho 18176 + (seg16AccY199 rho - seg16AccX199 rho * (-1)) * (rho 18171 + rho 18172) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX200 rho = seg16AccX199 rho - Bool.toZMod bit * (seg16AccX199 rho - rho 18178) := by
      have hd : rho 18180 = Bool.toZMod bit * (rho 18178 - seg16AccX199 rho) := by
        rw [← hbit]
        unfold seg16AccX199
        linear_combination -r5608
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY200 rho = seg16AccY199 rho - Bool.toZMod bit * (seg16AccY199 rho - rho 18179) := by
      have hd : rho 18181 = Bool.toZMod bit * (rho 18179 - seg16AccY199 rho) := by
        rw [← hbit]
        unfold seg16AccY199
        linear_combination -r5609
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18171 * rho 18172 = rho 18182 := by linear_combination r5610
    have hd1 : rho 18171 * rho 18171 = rho 18183 := by linear_combination r5611
    have hd2 : rho 18172 * rho 18172 = rho 18184 := by linear_combination r5612
    have hd3 : rho 18185 * (rho 18172 * rho 18172 + rho 18171 * rho 18171 * (-1)) = 2 * (rho 18171 * rho 18172) := by
      rw [hd0, hd1, hd2]
      linear_combination r5613
    have hd4 : rho 18186 * (2 - (rho 18172 * rho 18172 + rho 18171 * rho 18171 * (-1))) = rho 18172 * rho 18172 - rho 18171 * rho 18171 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5614
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX199 rho : Seg16.F), (seg16AccY199 rho : Seg16.F)⟩
      ⟨(rho 18171 : Seg16.F), (rho 18172 : Seg16.F)⟩
      ⟨(rho 18178 : Seg16.F), (rho 18179 : Seg16.F)⟩
      ⟨(seg16AccX200 rho : Seg16.F), (seg16AccY200 rho : Seg16.F)⟩
      ⟨(rho 18185 : Seg16.F), (rho 18186 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung199

theorem seg16_rows200 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5615 rho ∧ Seg16.relationRow5616 rho ∧ Seg16.relationRow5617 rho ∧ Seg16.relationRow5618 rho ∧ Seg16.relationRow5619 rho ∧ Seg16.relationRow5620 rho ∧ Seg16.relationRow5621 rho ∧ Seg16.relationRow5622 rho ∧ Seg16.relationRow5623 rho ∧ Seg16.relationRow5624 rho ∧ Seg16.relationRow5625 rho ∧ Seg16.relationRow5626 rho ∧ Seg16.relationRow5627 rho ∧ Seg16.relationRow5628 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5615, r5616, r5617, r5618, r5619, r5620, r5621, r5622, r5623, r5624, r5625, r5626, r5627, r5628, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5615, r5616, r5617, r5618, r5619, r5620, r5621, r5622, r5623, r5624, r5625, r5626, r5627, r5628⟩

theorem seg16_rung200 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15492 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX200 rho : Seg16.F), (seg16AccY200 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18185 : Seg16.F), (rho 18186 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX200 rho : Seg16.F), (seg16AccY200 rho : Seg16.F)⟩
        ⟨(rho 18185 : Seg16.F), (rho 18186 : Seg16.F)⟩
        ⟨(seg16AccX201 rho : Seg16.F), (seg16AccY201 rho : Seg16.F)⟩
        ⟨(rho 18199 : Seg16.F), (rho 18200 : Seg16.F)⟩ := by
  obtain ⟨r5615, r5616, r5617, r5618, r5619, r5620, r5621, r5622, r5623, r5624, r5625, r5626, r5627, r5628⟩ := seg16_rows200 rho h
  unfold Seg16.relationRow5615 at r5615
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5615
  unfold Seg16.relationRow5616 at r5616
  unfold Seg16.relationRow5617 at r5617
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5617
  unfold Seg16.relationRow5618 at r5618
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5618
  unfold Seg16.relationRow5619 at r5619
  unfold Seg16.relationRow5620 at r5620
  unfold Seg16.relationRow5621 at r5621
  unfold Seg16.relationRow5622 at r5622
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5622
  unfold Seg16.relationRow5623 at r5623
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5623
  unfold Seg16.relationRow5624 at r5624
  unfold Seg16.relationRow5625 at r5625
  unfold Seg16.relationRow5626 at r5626
  unfold Seg16.relationRow5627 at r5627
  unfold Seg16.relationRow5628 at r5628
  have hrung200 (bit : Bool) (hbit : rho 15492 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX200 rho : Seg16.F), (seg16AccY200 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18185 : Seg16.F), (rho 18186 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX200 rho : Seg16.F), (seg16AccY200 rho : Seg16.F)⟩
        ⟨(rho 18185 : Seg16.F), (rho 18186 : Seg16.F)⟩
        ⟨(seg16AccX201 rho : Seg16.F), (seg16AccY201 rho : Seg16.F)⟩
        ⟨(rho 18199 : Seg16.F), (rho 18200 : Seg16.F)⟩ := by
    have hnextx : seg16AccX201 rho = seg16AccX200 rho + rho 18194 := by
      unfold seg16AccX201 seg16AccX200
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 50]
      ring
    have hnexty : seg16AccY201 rho = seg16AccY200 rho + rho 18195 := by
      unfold seg16AccY201 seg16AccY200
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 50]
      ring
    have hsum : seg16AccX200 rho + seg16AccY200 rho = rho 18187 := by
      unfold seg16AccX200 seg16AccY200
      linear_combination r5615
    have ha0 : (rho 18185 + rho 18186) * (seg16AccX200 rho + seg16AccY200 rho) = rho 18188 := by
      rw [hsum]
      linear_combination r5616
    have ha1 : rho 18186 * seg16AccX200 rho = rho 18189 := by
      unfold seg16AccX200
      linear_combination r5617
    have ha2 : rho 18185 * seg16AccY200 rho = rho 18190 := by
      unfold seg16AccY200
      linear_combination r5618
    have ha3 : 3021 * rho 18189 * rho 18190 = rho 18191 := by
      linear_combination r5619
    have ha4 : rho 18192 * (1 + rho 18191) = rho 18189 + rho 18190 := by
      linear_combination r5620
    have ha5 : rho 18193 * (1 - rho 18191) = rho 18188 - rho 18189 - rho 18190 := by
      linear_combination r5621
    have haddx :
        rho 18192 * (1 + 3021 * (rho 18186 * seg16AccX200 rho) * (rho 18185 * seg16AccY200 rho)) =
          rho 18186 * seg16AccX200 rho + rho 18185 * seg16AccY200 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18193 * (1 - 3021 * (rho 18186 * seg16AccX200 rho) * (rho 18185 * seg16AccY200 rho)) =
          (-1) * (rho 18186 * seg16AccX200 rho) - rho 18185 * seg16AccY200 rho +
            (seg16AccY200 rho - seg16AccX200 rho * (-1)) * (rho 18185 + rho 18186) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18193 * (1 - rho 18191) = rho 18188 - rho 18189 - rho 18190 := ha5
        _ = (-1) * rho 18189 - rho 18190 + (seg16AccY200 rho - seg16AccX200 rho * (-1)) * (rho 18185 + rho 18186) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX201 rho = seg16AccX200 rho - Bool.toZMod bit * (seg16AccX200 rho - rho 18192) := by
      have hd : rho 18194 = Bool.toZMod bit * (rho 18192 - seg16AccX200 rho) := by
        rw [← hbit]
        unfold seg16AccX200
        linear_combination -r5622
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY201 rho = seg16AccY200 rho - Bool.toZMod bit * (seg16AccY200 rho - rho 18193) := by
      have hd : rho 18195 = Bool.toZMod bit * (rho 18193 - seg16AccY200 rho) := by
        rw [← hbit]
        unfold seg16AccY200
        linear_combination -r5623
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18185 * rho 18186 = rho 18196 := by linear_combination r5624
    have hd1 : rho 18185 * rho 18185 = rho 18197 := by linear_combination r5625
    have hd2 : rho 18186 * rho 18186 = rho 18198 := by linear_combination r5626
    have hd3 : rho 18199 * (rho 18186 * rho 18186 + rho 18185 * rho 18185 * (-1)) = 2 * (rho 18185 * rho 18186) := by
      rw [hd0, hd1, hd2]
      linear_combination r5627
    have hd4 : rho 18200 * (2 - (rho 18186 * rho 18186 + rho 18185 * rho 18185 * (-1))) = rho 18186 * rho 18186 - rho 18185 * rho 18185 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5628
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX200 rho : Seg16.F), (seg16AccY200 rho : Seg16.F)⟩
      ⟨(rho 18185 : Seg16.F), (rho 18186 : Seg16.F)⟩
      ⟨(rho 18192 : Seg16.F), (rho 18193 : Seg16.F)⟩
      ⟨(seg16AccX201 rho : Seg16.F), (seg16AccY201 rho : Seg16.F)⟩
      ⟨(rho 18199 : Seg16.F), (rho 18200 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung200

theorem seg16_rows201 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5629 rho ∧ Seg16.relationRow5630 rho ∧ Seg16.relationRow5631 rho ∧ Seg16.relationRow5632 rho ∧ Seg16.relationRow5633 rho ∧ Seg16.relationRow5634 rho ∧ Seg16.relationRow5635 rho ∧ Seg16.relationRow5636 rho ∧ Seg16.relationRow5637 rho ∧ Seg16.relationRow5638 rho ∧ Seg16.relationRow5639 rho ∧ Seg16.relationRow5640 rho ∧ Seg16.relationRow5641 rho ∧ Seg16.relationRow5642 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5629, r5630, r5631, r5632, r5633, r5634, r5635, r5636, r5637, r5638, r5639, r5640, r5641, r5642, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5629, r5630, r5631, r5632, r5633, r5634, r5635, r5636, r5637, r5638, r5639, r5640, r5641, r5642⟩

theorem seg16_rung201 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15493 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX201 rho : Seg16.F), (seg16AccY201 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18199 : Seg16.F), (rho 18200 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX201 rho : Seg16.F), (seg16AccY201 rho : Seg16.F)⟩
        ⟨(rho 18199 : Seg16.F), (rho 18200 : Seg16.F)⟩
        ⟨(seg16AccX202 rho : Seg16.F), (seg16AccY202 rho : Seg16.F)⟩
        ⟨(rho 18213 : Seg16.F), (rho 18214 : Seg16.F)⟩ := by
  obtain ⟨r5629, r5630, r5631, r5632, r5633, r5634, r5635, r5636, r5637, r5638, r5639, r5640, r5641, r5642⟩ := seg16_rows201 rho h
  unfold Seg16.relationRow5629 at r5629
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5629
  unfold Seg16.relationRow5630 at r5630
  unfold Seg16.relationRow5631 at r5631
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5631
  unfold Seg16.relationRow5632 at r5632
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5632
  unfold Seg16.relationRow5633 at r5633
  unfold Seg16.relationRow5634 at r5634
  unfold Seg16.relationRow5635 at r5635
  unfold Seg16.relationRow5636 at r5636
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5636
  unfold Seg16.relationRow5637 at r5637
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5637
  unfold Seg16.relationRow5638 at r5638
  unfold Seg16.relationRow5639 at r5639
  unfold Seg16.relationRow5640 at r5640
  unfold Seg16.relationRow5641 at r5641
  unfold Seg16.relationRow5642 at r5642
  have hrung201 (bit : Bool) (hbit : rho 15493 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX201 rho : Seg16.F), (seg16AccY201 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18199 : Seg16.F), (rho 18200 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX201 rho : Seg16.F), (seg16AccY201 rho : Seg16.F)⟩
        ⟨(rho 18199 : Seg16.F), (rho 18200 : Seg16.F)⟩
        ⟨(seg16AccX202 rho : Seg16.F), (seg16AccY202 rho : Seg16.F)⟩
        ⟨(rho 18213 : Seg16.F), (rho 18214 : Seg16.F)⟩ := by
    have hnextx : seg16AccX202 rho = seg16AccX201 rho + rho 18208 := by
      unfold seg16AccX202 seg16AccX201
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 51]
      ring
    have hnexty : seg16AccY202 rho = seg16AccY201 rho + rho 18209 := by
      unfold seg16AccY202 seg16AccY201
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 51]
      ring
    have hsum : seg16AccX201 rho + seg16AccY201 rho = rho 18201 := by
      unfold seg16AccX201 seg16AccY201
      linear_combination r5629
    have ha0 : (rho 18199 + rho 18200) * (seg16AccX201 rho + seg16AccY201 rho) = rho 18202 := by
      rw [hsum]
      linear_combination r5630
    have ha1 : rho 18200 * seg16AccX201 rho = rho 18203 := by
      unfold seg16AccX201
      linear_combination r5631
    have ha2 : rho 18199 * seg16AccY201 rho = rho 18204 := by
      unfold seg16AccY201
      linear_combination r5632
    have ha3 : 3021 * rho 18203 * rho 18204 = rho 18205 := by
      linear_combination r5633
    have ha4 : rho 18206 * (1 + rho 18205) = rho 18203 + rho 18204 := by
      linear_combination r5634
    have ha5 : rho 18207 * (1 - rho 18205) = rho 18202 - rho 18203 - rho 18204 := by
      linear_combination r5635
    have haddx :
        rho 18206 * (1 + 3021 * (rho 18200 * seg16AccX201 rho) * (rho 18199 * seg16AccY201 rho)) =
          rho 18200 * seg16AccX201 rho + rho 18199 * seg16AccY201 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18207 * (1 - 3021 * (rho 18200 * seg16AccX201 rho) * (rho 18199 * seg16AccY201 rho)) =
          (-1) * (rho 18200 * seg16AccX201 rho) - rho 18199 * seg16AccY201 rho +
            (seg16AccY201 rho - seg16AccX201 rho * (-1)) * (rho 18199 + rho 18200) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18207 * (1 - rho 18205) = rho 18202 - rho 18203 - rho 18204 := ha5
        _ = (-1) * rho 18203 - rho 18204 + (seg16AccY201 rho - seg16AccX201 rho * (-1)) * (rho 18199 + rho 18200) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX202 rho = seg16AccX201 rho - Bool.toZMod bit * (seg16AccX201 rho - rho 18206) := by
      have hd : rho 18208 = Bool.toZMod bit * (rho 18206 - seg16AccX201 rho) := by
        rw [← hbit]
        unfold seg16AccX201
        linear_combination -r5636
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY202 rho = seg16AccY201 rho - Bool.toZMod bit * (seg16AccY201 rho - rho 18207) := by
      have hd : rho 18209 = Bool.toZMod bit * (rho 18207 - seg16AccY201 rho) := by
        rw [← hbit]
        unfold seg16AccY201
        linear_combination -r5637
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18199 * rho 18200 = rho 18210 := by linear_combination r5638
    have hd1 : rho 18199 * rho 18199 = rho 18211 := by linear_combination r5639
    have hd2 : rho 18200 * rho 18200 = rho 18212 := by linear_combination r5640
    have hd3 : rho 18213 * (rho 18200 * rho 18200 + rho 18199 * rho 18199 * (-1)) = 2 * (rho 18199 * rho 18200) := by
      rw [hd0, hd1, hd2]
      linear_combination r5641
    have hd4 : rho 18214 * (2 - (rho 18200 * rho 18200 + rho 18199 * rho 18199 * (-1))) = rho 18200 * rho 18200 - rho 18199 * rho 18199 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5642
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX201 rho : Seg16.F), (seg16AccY201 rho : Seg16.F)⟩
      ⟨(rho 18199 : Seg16.F), (rho 18200 : Seg16.F)⟩
      ⟨(rho 18206 : Seg16.F), (rho 18207 : Seg16.F)⟩
      ⟨(seg16AccX202 rho : Seg16.F), (seg16AccY202 rho : Seg16.F)⟩
      ⟨(rho 18213 : Seg16.F), (rho 18214 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung201

theorem seg16_rows202 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5643 rho ∧ Seg16.relationRow5644 rho ∧ Seg16.relationRow5645 rho ∧ Seg16.relationRow5646 rho ∧ Seg16.relationRow5647 rho ∧ Seg16.relationRow5648 rho ∧ Seg16.relationRow5649 rho ∧ Seg16.relationRow5650 rho ∧ Seg16.relationRow5651 rho ∧ Seg16.relationRow5652 rho ∧ Seg16.relationRow5653 rho ∧ Seg16.relationRow5654 rho ∧ Seg16.relationRow5655 rho ∧ Seg16.relationRow5656 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5643, r5644, r5645, r5646, r5647, r5648, r5649, r5650, r5651, r5652, r5653, r5654, r5655, r5656, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5643, r5644, r5645, r5646, r5647, r5648, r5649, r5650, r5651, r5652, r5653, r5654, r5655, r5656⟩

theorem seg16_rung202 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15494 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX202 rho : Seg16.F), (seg16AccY202 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18213 : Seg16.F), (rho 18214 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX202 rho : Seg16.F), (seg16AccY202 rho : Seg16.F)⟩
        ⟨(rho 18213 : Seg16.F), (rho 18214 : Seg16.F)⟩
        ⟨(seg16AccX203 rho : Seg16.F), (seg16AccY203 rho : Seg16.F)⟩
        ⟨(rho 18227 : Seg16.F), (rho 18228 : Seg16.F)⟩ := by
  obtain ⟨r5643, r5644, r5645, r5646, r5647, r5648, r5649, r5650, r5651, r5652, r5653, r5654, r5655, r5656⟩ := seg16_rows202 rho h
  unfold Seg16.relationRow5643 at r5643
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5643
  unfold Seg16.relationRow5644 at r5644
  unfold Seg16.relationRow5645 at r5645
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5645
  unfold Seg16.relationRow5646 at r5646
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5646
  unfold Seg16.relationRow5647 at r5647
  unfold Seg16.relationRow5648 at r5648
  unfold Seg16.relationRow5649 at r5649
  unfold Seg16.relationRow5650 at r5650
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5650
  unfold Seg16.relationRow5651 at r5651
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5651
  unfold Seg16.relationRow5652 at r5652
  unfold Seg16.relationRow5653 at r5653
  unfold Seg16.relationRow5654 at r5654
  unfold Seg16.relationRow5655 at r5655
  unfold Seg16.relationRow5656 at r5656
  have hrung202 (bit : Bool) (hbit : rho 15494 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX202 rho : Seg16.F), (seg16AccY202 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18213 : Seg16.F), (rho 18214 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX202 rho : Seg16.F), (seg16AccY202 rho : Seg16.F)⟩
        ⟨(rho 18213 : Seg16.F), (rho 18214 : Seg16.F)⟩
        ⟨(seg16AccX203 rho : Seg16.F), (seg16AccY203 rho : Seg16.F)⟩
        ⟨(rho 18227 : Seg16.F), (rho 18228 : Seg16.F)⟩ := by
    have hnextx : seg16AccX203 rho = seg16AccX202 rho + rho 18222 := by
      unfold seg16AccX203 seg16AccX202
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 52]
      ring
    have hnexty : seg16AccY203 rho = seg16AccY202 rho + rho 18223 := by
      unfold seg16AccY203 seg16AccY202
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 52]
      ring
    have hsum : seg16AccX202 rho + seg16AccY202 rho = rho 18215 := by
      unfold seg16AccX202 seg16AccY202
      linear_combination r5643
    have ha0 : (rho 18213 + rho 18214) * (seg16AccX202 rho + seg16AccY202 rho) = rho 18216 := by
      rw [hsum]
      linear_combination r5644
    have ha1 : rho 18214 * seg16AccX202 rho = rho 18217 := by
      unfold seg16AccX202
      linear_combination r5645
    have ha2 : rho 18213 * seg16AccY202 rho = rho 18218 := by
      unfold seg16AccY202
      linear_combination r5646
    have ha3 : 3021 * rho 18217 * rho 18218 = rho 18219 := by
      linear_combination r5647
    have ha4 : rho 18220 * (1 + rho 18219) = rho 18217 + rho 18218 := by
      linear_combination r5648
    have ha5 : rho 18221 * (1 - rho 18219) = rho 18216 - rho 18217 - rho 18218 := by
      linear_combination r5649
    have haddx :
        rho 18220 * (1 + 3021 * (rho 18214 * seg16AccX202 rho) * (rho 18213 * seg16AccY202 rho)) =
          rho 18214 * seg16AccX202 rho + rho 18213 * seg16AccY202 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18221 * (1 - 3021 * (rho 18214 * seg16AccX202 rho) * (rho 18213 * seg16AccY202 rho)) =
          (-1) * (rho 18214 * seg16AccX202 rho) - rho 18213 * seg16AccY202 rho +
            (seg16AccY202 rho - seg16AccX202 rho * (-1)) * (rho 18213 + rho 18214) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18221 * (1 - rho 18219) = rho 18216 - rho 18217 - rho 18218 := ha5
        _ = (-1) * rho 18217 - rho 18218 + (seg16AccY202 rho - seg16AccX202 rho * (-1)) * (rho 18213 + rho 18214) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX203 rho = seg16AccX202 rho - Bool.toZMod bit * (seg16AccX202 rho - rho 18220) := by
      have hd : rho 18222 = Bool.toZMod bit * (rho 18220 - seg16AccX202 rho) := by
        rw [← hbit]
        unfold seg16AccX202
        linear_combination -r5650
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY203 rho = seg16AccY202 rho - Bool.toZMod bit * (seg16AccY202 rho - rho 18221) := by
      have hd : rho 18223 = Bool.toZMod bit * (rho 18221 - seg16AccY202 rho) := by
        rw [← hbit]
        unfold seg16AccY202
        linear_combination -r5651
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18213 * rho 18214 = rho 18224 := by linear_combination r5652
    have hd1 : rho 18213 * rho 18213 = rho 18225 := by linear_combination r5653
    have hd2 : rho 18214 * rho 18214 = rho 18226 := by linear_combination r5654
    have hd3 : rho 18227 * (rho 18214 * rho 18214 + rho 18213 * rho 18213 * (-1)) = 2 * (rho 18213 * rho 18214) := by
      rw [hd0, hd1, hd2]
      linear_combination r5655
    have hd4 : rho 18228 * (2 - (rho 18214 * rho 18214 + rho 18213 * rho 18213 * (-1))) = rho 18214 * rho 18214 - rho 18213 * rho 18213 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5656
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX202 rho : Seg16.F), (seg16AccY202 rho : Seg16.F)⟩
      ⟨(rho 18213 : Seg16.F), (rho 18214 : Seg16.F)⟩
      ⟨(rho 18220 : Seg16.F), (rho 18221 : Seg16.F)⟩
      ⟨(seg16AccX203 rho : Seg16.F), (seg16AccY203 rho : Seg16.F)⟩
      ⟨(rho 18227 : Seg16.F), (rho 18228 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung202

theorem seg16_rows203 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5657 rho ∧ Seg16.relationRow5658 rho ∧ Seg16.relationRow5659 rho ∧ Seg16.relationRow5660 rho ∧ Seg16.relationRow5661 rho ∧ Seg16.relationRow5662 rho ∧ Seg16.relationRow5663 rho ∧ Seg16.relationRow5664 rho ∧ Seg16.relationRow5665 rho ∧ Seg16.relationRow5666 rho ∧ Seg16.relationRow5667 rho ∧ Seg16.relationRow5668 rho ∧ Seg16.relationRow5669 rho ∧ Seg16.relationRow5670 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5657, r5658, r5659, r5660, r5661, r5662, r5663, r5664, r5665, r5666, r5667, r5668, r5669, r5670, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5657, r5658, r5659, r5660, r5661, r5662, r5663, r5664, r5665, r5666, r5667, r5668, r5669, r5670⟩

theorem seg16_rung203 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15495 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX203 rho : Seg16.F), (seg16AccY203 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18227 : Seg16.F), (rho 18228 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX203 rho : Seg16.F), (seg16AccY203 rho : Seg16.F)⟩
        ⟨(rho 18227 : Seg16.F), (rho 18228 : Seg16.F)⟩
        ⟨(seg16AccX204 rho : Seg16.F), (seg16AccY204 rho : Seg16.F)⟩
        ⟨(rho 18241 : Seg16.F), (rho 18242 : Seg16.F)⟩ := by
  obtain ⟨r5657, r5658, r5659, r5660, r5661, r5662, r5663, r5664, r5665, r5666, r5667, r5668, r5669, r5670⟩ := seg16_rows203 rho h
  unfold Seg16.relationRow5657 at r5657
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5657
  unfold Seg16.relationRow5658 at r5658
  unfold Seg16.relationRow5659 at r5659
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5659
  unfold Seg16.relationRow5660 at r5660
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5660
  unfold Seg16.relationRow5661 at r5661
  unfold Seg16.relationRow5662 at r5662
  unfold Seg16.relationRow5663 at r5663
  unfold Seg16.relationRow5664 at r5664
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5664
  unfold Seg16.relationRow5665 at r5665
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5665
  unfold Seg16.relationRow5666 at r5666
  unfold Seg16.relationRow5667 at r5667
  unfold Seg16.relationRow5668 at r5668
  unfold Seg16.relationRow5669 at r5669
  unfold Seg16.relationRow5670 at r5670
  have hrung203 (bit : Bool) (hbit : rho 15495 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX203 rho : Seg16.F), (seg16AccY203 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18227 : Seg16.F), (rho 18228 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX203 rho : Seg16.F), (seg16AccY203 rho : Seg16.F)⟩
        ⟨(rho 18227 : Seg16.F), (rho 18228 : Seg16.F)⟩
        ⟨(seg16AccX204 rho : Seg16.F), (seg16AccY204 rho : Seg16.F)⟩
        ⟨(rho 18241 : Seg16.F), (rho 18242 : Seg16.F)⟩ := by
    have hnextx : seg16AccX204 rho = seg16AccX203 rho + rho 18236 := by
      unfold seg16AccX204 seg16AccX203
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 53]
      ring
    have hnexty : seg16AccY204 rho = seg16AccY203 rho + rho 18237 := by
      unfold seg16AccY204 seg16AccY203
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 53]
      ring
    have hsum : seg16AccX203 rho + seg16AccY203 rho = rho 18229 := by
      unfold seg16AccX203 seg16AccY203
      linear_combination r5657
    have ha0 : (rho 18227 + rho 18228) * (seg16AccX203 rho + seg16AccY203 rho) = rho 18230 := by
      rw [hsum]
      linear_combination r5658
    have ha1 : rho 18228 * seg16AccX203 rho = rho 18231 := by
      unfold seg16AccX203
      linear_combination r5659
    have ha2 : rho 18227 * seg16AccY203 rho = rho 18232 := by
      unfold seg16AccY203
      linear_combination r5660
    have ha3 : 3021 * rho 18231 * rho 18232 = rho 18233 := by
      linear_combination r5661
    have ha4 : rho 18234 * (1 + rho 18233) = rho 18231 + rho 18232 := by
      linear_combination r5662
    have ha5 : rho 18235 * (1 - rho 18233) = rho 18230 - rho 18231 - rho 18232 := by
      linear_combination r5663
    have haddx :
        rho 18234 * (1 + 3021 * (rho 18228 * seg16AccX203 rho) * (rho 18227 * seg16AccY203 rho)) =
          rho 18228 * seg16AccX203 rho + rho 18227 * seg16AccY203 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18235 * (1 - 3021 * (rho 18228 * seg16AccX203 rho) * (rho 18227 * seg16AccY203 rho)) =
          (-1) * (rho 18228 * seg16AccX203 rho) - rho 18227 * seg16AccY203 rho +
            (seg16AccY203 rho - seg16AccX203 rho * (-1)) * (rho 18227 + rho 18228) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18235 * (1 - rho 18233) = rho 18230 - rho 18231 - rho 18232 := ha5
        _ = (-1) * rho 18231 - rho 18232 + (seg16AccY203 rho - seg16AccX203 rho * (-1)) * (rho 18227 + rho 18228) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX204 rho = seg16AccX203 rho - Bool.toZMod bit * (seg16AccX203 rho - rho 18234) := by
      have hd : rho 18236 = Bool.toZMod bit * (rho 18234 - seg16AccX203 rho) := by
        rw [← hbit]
        unfold seg16AccX203
        linear_combination -r5664
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY204 rho = seg16AccY203 rho - Bool.toZMod bit * (seg16AccY203 rho - rho 18235) := by
      have hd : rho 18237 = Bool.toZMod bit * (rho 18235 - seg16AccY203 rho) := by
        rw [← hbit]
        unfold seg16AccY203
        linear_combination -r5665
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18227 * rho 18228 = rho 18238 := by linear_combination r5666
    have hd1 : rho 18227 * rho 18227 = rho 18239 := by linear_combination r5667
    have hd2 : rho 18228 * rho 18228 = rho 18240 := by linear_combination r5668
    have hd3 : rho 18241 * (rho 18228 * rho 18228 + rho 18227 * rho 18227 * (-1)) = 2 * (rho 18227 * rho 18228) := by
      rw [hd0, hd1, hd2]
      linear_combination r5669
    have hd4 : rho 18242 * (2 - (rho 18228 * rho 18228 + rho 18227 * rho 18227 * (-1))) = rho 18228 * rho 18228 - rho 18227 * rho 18227 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5670
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX203 rho : Seg16.F), (seg16AccY203 rho : Seg16.F)⟩
      ⟨(rho 18227 : Seg16.F), (rho 18228 : Seg16.F)⟩
      ⟨(rho 18234 : Seg16.F), (rho 18235 : Seg16.F)⟩
      ⟨(seg16AccX204 rho : Seg16.F), (seg16AccY204 rho : Seg16.F)⟩
      ⟨(rho 18241 : Seg16.F), (rho 18242 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung203

theorem seg16_rows204 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5671 rho ∧ Seg16.relationRow5672 rho ∧ Seg16.relationRow5673 rho ∧ Seg16.relationRow5674 rho ∧ Seg16.relationRow5675 rho ∧ Seg16.relationRow5676 rho ∧ Seg16.relationRow5677 rho ∧ Seg16.relationRow5678 rho ∧ Seg16.relationRow5679 rho ∧ Seg16.relationRow5680 rho ∧ Seg16.relationRow5681 rho ∧ Seg16.relationRow5682 rho ∧ Seg16.relationRow5683 rho ∧ Seg16.relationRow5684 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5671, r5672, r5673, r5674, r5675, r5676, r5677, r5678, r5679⟩
  unfold Seg16.relationPart71 at p71
  rcases p71 with ⟨r5680, r5681, r5682, r5683, r5684, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5671, r5672, r5673, r5674, r5675, r5676, r5677, r5678, r5679, r5680, r5681, r5682, r5683, r5684⟩

theorem seg16_rung204 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15496 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX204 rho : Seg16.F), (seg16AccY204 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18241 : Seg16.F), (rho 18242 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX204 rho : Seg16.F), (seg16AccY204 rho : Seg16.F)⟩
        ⟨(rho 18241 : Seg16.F), (rho 18242 : Seg16.F)⟩
        ⟨(seg16AccX205 rho : Seg16.F), (seg16AccY205 rho : Seg16.F)⟩
        ⟨(rho 18255 : Seg16.F), (rho 18256 : Seg16.F)⟩ := by
  obtain ⟨r5671, r5672, r5673, r5674, r5675, r5676, r5677, r5678, r5679, r5680, r5681, r5682, r5683, r5684⟩ := seg16_rows204 rho h
  unfold Seg16.relationRow5671 at r5671
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5671
  unfold Seg16.relationRow5672 at r5672
  unfold Seg16.relationRow5673 at r5673
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5673
  unfold Seg16.relationRow5674 at r5674
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5674
  unfold Seg16.relationRow5675 at r5675
  unfold Seg16.relationRow5676 at r5676
  unfold Seg16.relationRow5677 at r5677
  unfold Seg16.relationRow5678 at r5678
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5678
  unfold Seg16.relationRow5679 at r5679
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5679
  unfold Seg16.relationRow5680 at r5680
  unfold Seg16.relationRow5681 at r5681
  unfold Seg16.relationRow5682 at r5682
  unfold Seg16.relationRow5683 at r5683
  unfold Seg16.relationRow5684 at r5684
  have hrung204 (bit : Bool) (hbit : rho 15496 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX204 rho : Seg16.F), (seg16AccY204 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18241 : Seg16.F), (rho 18242 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX204 rho : Seg16.F), (seg16AccY204 rho : Seg16.F)⟩
        ⟨(rho 18241 : Seg16.F), (rho 18242 : Seg16.F)⟩
        ⟨(seg16AccX205 rho : Seg16.F), (seg16AccY205 rho : Seg16.F)⟩
        ⟨(rho 18255 : Seg16.F), (rho 18256 : Seg16.F)⟩ := by
    have hnextx : seg16AccX205 rho = seg16AccX204 rho + rho 18250 := by
      unfold seg16AccX205 seg16AccX204
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 54]
      ring
    have hnexty : seg16AccY205 rho = seg16AccY204 rho + rho 18251 := by
      unfold seg16AccY205 seg16AccY204
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 54]
      ring
    have hsum : seg16AccX204 rho + seg16AccY204 rho = rho 18243 := by
      unfold seg16AccX204 seg16AccY204
      linear_combination r5671
    have ha0 : (rho 18241 + rho 18242) * (seg16AccX204 rho + seg16AccY204 rho) = rho 18244 := by
      rw [hsum]
      linear_combination r5672
    have ha1 : rho 18242 * seg16AccX204 rho = rho 18245 := by
      unfold seg16AccX204
      linear_combination r5673
    have ha2 : rho 18241 * seg16AccY204 rho = rho 18246 := by
      unfold seg16AccY204
      linear_combination r5674
    have ha3 : 3021 * rho 18245 * rho 18246 = rho 18247 := by
      linear_combination r5675
    have ha4 : rho 18248 * (1 + rho 18247) = rho 18245 + rho 18246 := by
      linear_combination r5676
    have ha5 : rho 18249 * (1 - rho 18247) = rho 18244 - rho 18245 - rho 18246 := by
      linear_combination r5677
    have haddx :
        rho 18248 * (1 + 3021 * (rho 18242 * seg16AccX204 rho) * (rho 18241 * seg16AccY204 rho)) =
          rho 18242 * seg16AccX204 rho + rho 18241 * seg16AccY204 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18249 * (1 - 3021 * (rho 18242 * seg16AccX204 rho) * (rho 18241 * seg16AccY204 rho)) =
          (-1) * (rho 18242 * seg16AccX204 rho) - rho 18241 * seg16AccY204 rho +
            (seg16AccY204 rho - seg16AccX204 rho * (-1)) * (rho 18241 + rho 18242) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18249 * (1 - rho 18247) = rho 18244 - rho 18245 - rho 18246 := ha5
        _ = (-1) * rho 18245 - rho 18246 + (seg16AccY204 rho - seg16AccX204 rho * (-1)) * (rho 18241 + rho 18242) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX205 rho = seg16AccX204 rho - Bool.toZMod bit * (seg16AccX204 rho - rho 18248) := by
      have hd : rho 18250 = Bool.toZMod bit * (rho 18248 - seg16AccX204 rho) := by
        rw [← hbit]
        unfold seg16AccX204
        linear_combination -r5678
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY205 rho = seg16AccY204 rho - Bool.toZMod bit * (seg16AccY204 rho - rho 18249) := by
      have hd : rho 18251 = Bool.toZMod bit * (rho 18249 - seg16AccY204 rho) := by
        rw [← hbit]
        unfold seg16AccY204
        linear_combination -r5679
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18241 * rho 18242 = rho 18252 := by linear_combination r5680
    have hd1 : rho 18241 * rho 18241 = rho 18253 := by linear_combination r5681
    have hd2 : rho 18242 * rho 18242 = rho 18254 := by linear_combination r5682
    have hd3 : rho 18255 * (rho 18242 * rho 18242 + rho 18241 * rho 18241 * (-1)) = 2 * (rho 18241 * rho 18242) := by
      rw [hd0, hd1, hd2]
      linear_combination r5683
    have hd4 : rho 18256 * (2 - (rho 18242 * rho 18242 + rho 18241 * rho 18241 * (-1))) = rho 18242 * rho 18242 - rho 18241 * rho 18241 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5684
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX204 rho : Seg16.F), (seg16AccY204 rho : Seg16.F)⟩
      ⟨(rho 18241 : Seg16.F), (rho 18242 : Seg16.F)⟩
      ⟨(rho 18248 : Seg16.F), (rho 18249 : Seg16.F)⟩
      ⟨(seg16AccX205 rho : Seg16.F), (seg16AccY205 rho : Seg16.F)⟩
      ⟨(rho 18255 : Seg16.F), (rho 18256 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung204

theorem seg16_rows205 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5685 rho ∧ Seg16.relationRow5686 rho ∧ Seg16.relationRow5687 rho ∧ Seg16.relationRow5688 rho ∧ Seg16.relationRow5689 rho ∧ Seg16.relationRow5690 rho ∧ Seg16.relationRow5691 rho ∧ Seg16.relationRow5692 rho ∧ Seg16.relationRow5693 rho ∧ Seg16.relationRow5694 rho ∧ Seg16.relationRow5695 rho ∧ Seg16.relationRow5696 rho ∧ Seg16.relationRow5697 rho ∧ Seg16.relationRow5698 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, r5685, r5686, r5687, r5688, r5689, r5690, r5691, r5692, r5693, r5694, r5695, r5696, r5697, r5698, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5685, r5686, r5687, r5688, r5689, r5690, r5691, r5692, r5693, r5694, r5695, r5696, r5697, r5698⟩

theorem seg16_rung205 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15497 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX205 rho : Seg16.F), (seg16AccY205 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18255 : Seg16.F), (rho 18256 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX205 rho : Seg16.F), (seg16AccY205 rho : Seg16.F)⟩
        ⟨(rho 18255 : Seg16.F), (rho 18256 : Seg16.F)⟩
        ⟨(seg16AccX206 rho : Seg16.F), (seg16AccY206 rho : Seg16.F)⟩
        ⟨(rho 18269 : Seg16.F), (rho 18270 : Seg16.F)⟩ := by
  obtain ⟨r5685, r5686, r5687, r5688, r5689, r5690, r5691, r5692, r5693, r5694, r5695, r5696, r5697, r5698⟩ := seg16_rows205 rho h
  unfold Seg16.relationRow5685 at r5685
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5685
  unfold Seg16.relationRow5686 at r5686
  unfold Seg16.relationRow5687 at r5687
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5687
  unfold Seg16.relationRow5688 at r5688
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5688
  unfold Seg16.relationRow5689 at r5689
  unfold Seg16.relationRow5690 at r5690
  unfold Seg16.relationRow5691 at r5691
  unfold Seg16.relationRow5692 at r5692
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5692
  unfold Seg16.relationRow5693 at r5693
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5693
  unfold Seg16.relationRow5694 at r5694
  unfold Seg16.relationRow5695 at r5695
  unfold Seg16.relationRow5696 at r5696
  unfold Seg16.relationRow5697 at r5697
  unfold Seg16.relationRow5698 at r5698
  have hrung205 (bit : Bool) (hbit : rho 15497 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX205 rho : Seg16.F), (seg16AccY205 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18255 : Seg16.F), (rho 18256 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX205 rho : Seg16.F), (seg16AccY205 rho : Seg16.F)⟩
        ⟨(rho 18255 : Seg16.F), (rho 18256 : Seg16.F)⟩
        ⟨(seg16AccX206 rho : Seg16.F), (seg16AccY206 rho : Seg16.F)⟩
        ⟨(rho 18269 : Seg16.F), (rho 18270 : Seg16.F)⟩ := by
    have hnextx : seg16AccX206 rho = seg16AccX205 rho + rho 18264 := by
      unfold seg16AccX206 seg16AccX205
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 55]
      ring
    have hnexty : seg16AccY206 rho = seg16AccY205 rho + rho 18265 := by
      unfold seg16AccY206 seg16AccY205
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 55]
      ring
    have hsum : seg16AccX205 rho + seg16AccY205 rho = rho 18257 := by
      unfold seg16AccX205 seg16AccY205
      linear_combination r5685
    have ha0 : (rho 18255 + rho 18256) * (seg16AccX205 rho + seg16AccY205 rho) = rho 18258 := by
      rw [hsum]
      linear_combination r5686
    have ha1 : rho 18256 * seg16AccX205 rho = rho 18259 := by
      unfold seg16AccX205
      linear_combination r5687
    have ha2 : rho 18255 * seg16AccY205 rho = rho 18260 := by
      unfold seg16AccY205
      linear_combination r5688
    have ha3 : 3021 * rho 18259 * rho 18260 = rho 18261 := by
      linear_combination r5689
    have ha4 : rho 18262 * (1 + rho 18261) = rho 18259 + rho 18260 := by
      linear_combination r5690
    have ha5 : rho 18263 * (1 - rho 18261) = rho 18258 - rho 18259 - rho 18260 := by
      linear_combination r5691
    have haddx :
        rho 18262 * (1 + 3021 * (rho 18256 * seg16AccX205 rho) * (rho 18255 * seg16AccY205 rho)) =
          rho 18256 * seg16AccX205 rho + rho 18255 * seg16AccY205 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18263 * (1 - 3021 * (rho 18256 * seg16AccX205 rho) * (rho 18255 * seg16AccY205 rho)) =
          (-1) * (rho 18256 * seg16AccX205 rho) - rho 18255 * seg16AccY205 rho +
            (seg16AccY205 rho - seg16AccX205 rho * (-1)) * (rho 18255 + rho 18256) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18263 * (1 - rho 18261) = rho 18258 - rho 18259 - rho 18260 := ha5
        _ = (-1) * rho 18259 - rho 18260 + (seg16AccY205 rho - seg16AccX205 rho * (-1)) * (rho 18255 + rho 18256) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX206 rho = seg16AccX205 rho - Bool.toZMod bit * (seg16AccX205 rho - rho 18262) := by
      have hd : rho 18264 = Bool.toZMod bit * (rho 18262 - seg16AccX205 rho) := by
        rw [← hbit]
        unfold seg16AccX205
        linear_combination -r5692
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY206 rho = seg16AccY205 rho - Bool.toZMod bit * (seg16AccY205 rho - rho 18263) := by
      have hd : rho 18265 = Bool.toZMod bit * (rho 18263 - seg16AccY205 rho) := by
        rw [← hbit]
        unfold seg16AccY205
        linear_combination -r5693
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18255 * rho 18256 = rho 18266 := by linear_combination r5694
    have hd1 : rho 18255 * rho 18255 = rho 18267 := by linear_combination r5695
    have hd2 : rho 18256 * rho 18256 = rho 18268 := by linear_combination r5696
    have hd3 : rho 18269 * (rho 18256 * rho 18256 + rho 18255 * rho 18255 * (-1)) = 2 * (rho 18255 * rho 18256) := by
      rw [hd0, hd1, hd2]
      linear_combination r5697
    have hd4 : rho 18270 * (2 - (rho 18256 * rho 18256 + rho 18255 * rho 18255 * (-1))) = rho 18256 * rho 18256 - rho 18255 * rho 18255 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5698
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX205 rho : Seg16.F), (seg16AccY205 rho : Seg16.F)⟩
      ⟨(rho 18255 : Seg16.F), (rho 18256 : Seg16.F)⟩
      ⟨(rho 18262 : Seg16.F), (rho 18263 : Seg16.F)⟩
      ⟨(seg16AccX206 rho : Seg16.F), (seg16AccY206 rho : Seg16.F)⟩
      ⟨(rho 18269 : Seg16.F), (rho 18270 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung205

theorem seg16_rows206 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5699 rho ∧ Seg16.relationRow5700 rho ∧ Seg16.relationRow5701 rho ∧ Seg16.relationRow5702 rho ∧ Seg16.relationRow5703 rho ∧ Seg16.relationRow5704 rho ∧ Seg16.relationRow5705 rho ∧ Seg16.relationRow5706 rho ∧ Seg16.relationRow5707 rho ∧ Seg16.relationRow5708 rho ∧ Seg16.relationRow5709 rho ∧ Seg16.relationRow5710 rho ∧ Seg16.relationRow5711 rho ∧ Seg16.relationRow5712 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5699, r5700, r5701, r5702, r5703, r5704, r5705, r5706, r5707, r5708, r5709, r5710, r5711, r5712, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5699, r5700, r5701, r5702, r5703, r5704, r5705, r5706, r5707, r5708, r5709, r5710, r5711, r5712⟩

theorem seg16_rung206 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15498 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX206 rho : Seg16.F), (seg16AccY206 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18269 : Seg16.F), (rho 18270 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX206 rho : Seg16.F), (seg16AccY206 rho : Seg16.F)⟩
        ⟨(rho 18269 : Seg16.F), (rho 18270 : Seg16.F)⟩
        ⟨(seg16AccX207 rho : Seg16.F), (seg16AccY207 rho : Seg16.F)⟩
        ⟨(rho 18283 : Seg16.F), (rho 18284 : Seg16.F)⟩ := by
  obtain ⟨r5699, r5700, r5701, r5702, r5703, r5704, r5705, r5706, r5707, r5708, r5709, r5710, r5711, r5712⟩ := seg16_rows206 rho h
  unfold Seg16.relationRow5699 at r5699
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5699
  unfold Seg16.relationRow5700 at r5700
  unfold Seg16.relationRow5701 at r5701
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5701
  unfold Seg16.relationRow5702 at r5702
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5702
  unfold Seg16.relationRow5703 at r5703
  unfold Seg16.relationRow5704 at r5704
  unfold Seg16.relationRow5705 at r5705
  unfold Seg16.relationRow5706 at r5706
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5706
  unfold Seg16.relationRow5707 at r5707
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5707
  unfold Seg16.relationRow5708 at r5708
  unfold Seg16.relationRow5709 at r5709
  unfold Seg16.relationRow5710 at r5710
  unfold Seg16.relationRow5711 at r5711
  unfold Seg16.relationRow5712 at r5712
  have hrung206 (bit : Bool) (hbit : rho 15498 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX206 rho : Seg16.F), (seg16AccY206 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18269 : Seg16.F), (rho 18270 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX206 rho : Seg16.F), (seg16AccY206 rho : Seg16.F)⟩
        ⟨(rho 18269 : Seg16.F), (rho 18270 : Seg16.F)⟩
        ⟨(seg16AccX207 rho : Seg16.F), (seg16AccY207 rho : Seg16.F)⟩
        ⟨(rho 18283 : Seg16.F), (rho 18284 : Seg16.F)⟩ := by
    have hnextx : seg16AccX207 rho = seg16AccX206 rho + rho 18278 := by
      unfold seg16AccX207 seg16AccX206
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 56]
      ring
    have hnexty : seg16AccY207 rho = seg16AccY206 rho + rho 18279 := by
      unfold seg16AccY207 seg16AccY206
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 56]
      ring
    have hsum : seg16AccX206 rho + seg16AccY206 rho = rho 18271 := by
      unfold seg16AccX206 seg16AccY206
      linear_combination r5699
    have ha0 : (rho 18269 + rho 18270) * (seg16AccX206 rho + seg16AccY206 rho) = rho 18272 := by
      rw [hsum]
      linear_combination r5700
    have ha1 : rho 18270 * seg16AccX206 rho = rho 18273 := by
      unfold seg16AccX206
      linear_combination r5701
    have ha2 : rho 18269 * seg16AccY206 rho = rho 18274 := by
      unfold seg16AccY206
      linear_combination r5702
    have ha3 : 3021 * rho 18273 * rho 18274 = rho 18275 := by
      linear_combination r5703
    have ha4 : rho 18276 * (1 + rho 18275) = rho 18273 + rho 18274 := by
      linear_combination r5704
    have ha5 : rho 18277 * (1 - rho 18275) = rho 18272 - rho 18273 - rho 18274 := by
      linear_combination r5705
    have haddx :
        rho 18276 * (1 + 3021 * (rho 18270 * seg16AccX206 rho) * (rho 18269 * seg16AccY206 rho)) =
          rho 18270 * seg16AccX206 rho + rho 18269 * seg16AccY206 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18277 * (1 - 3021 * (rho 18270 * seg16AccX206 rho) * (rho 18269 * seg16AccY206 rho)) =
          (-1) * (rho 18270 * seg16AccX206 rho) - rho 18269 * seg16AccY206 rho +
            (seg16AccY206 rho - seg16AccX206 rho * (-1)) * (rho 18269 + rho 18270) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18277 * (1 - rho 18275) = rho 18272 - rho 18273 - rho 18274 := ha5
        _ = (-1) * rho 18273 - rho 18274 + (seg16AccY206 rho - seg16AccX206 rho * (-1)) * (rho 18269 + rho 18270) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX207 rho = seg16AccX206 rho - Bool.toZMod bit * (seg16AccX206 rho - rho 18276) := by
      have hd : rho 18278 = Bool.toZMod bit * (rho 18276 - seg16AccX206 rho) := by
        rw [← hbit]
        unfold seg16AccX206
        linear_combination -r5706
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY207 rho = seg16AccY206 rho - Bool.toZMod bit * (seg16AccY206 rho - rho 18277) := by
      have hd : rho 18279 = Bool.toZMod bit * (rho 18277 - seg16AccY206 rho) := by
        rw [← hbit]
        unfold seg16AccY206
        linear_combination -r5707
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18269 * rho 18270 = rho 18280 := by linear_combination r5708
    have hd1 : rho 18269 * rho 18269 = rho 18281 := by linear_combination r5709
    have hd2 : rho 18270 * rho 18270 = rho 18282 := by linear_combination r5710
    have hd3 : rho 18283 * (rho 18270 * rho 18270 + rho 18269 * rho 18269 * (-1)) = 2 * (rho 18269 * rho 18270) := by
      rw [hd0, hd1, hd2]
      linear_combination r5711
    have hd4 : rho 18284 * (2 - (rho 18270 * rho 18270 + rho 18269 * rho 18269 * (-1))) = rho 18270 * rho 18270 - rho 18269 * rho 18269 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5712
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX206 rho : Seg16.F), (seg16AccY206 rho : Seg16.F)⟩
      ⟨(rho 18269 : Seg16.F), (rho 18270 : Seg16.F)⟩
      ⟨(rho 18276 : Seg16.F), (rho 18277 : Seg16.F)⟩
      ⟨(seg16AccX207 rho : Seg16.F), (seg16AccY207 rho : Seg16.F)⟩
      ⟨(rho 18283 : Seg16.F), (rho 18284 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung206

theorem seg16_rows207 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5713 rho ∧ Seg16.relationRow5714 rho ∧ Seg16.relationRow5715 rho ∧ Seg16.relationRow5716 rho ∧ Seg16.relationRow5717 rho ∧ Seg16.relationRow5718 rho ∧ Seg16.relationRow5719 rho ∧ Seg16.relationRow5720 rho ∧ Seg16.relationRow5721 rho ∧ Seg16.relationRow5722 rho ∧ Seg16.relationRow5723 rho ∧ Seg16.relationRow5724 rho ∧ Seg16.relationRow5725 rho ∧ Seg16.relationRow5726 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5713, r5714, r5715, r5716, r5717, r5718, r5719, r5720, r5721, r5722, r5723, r5724, r5725, r5726, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5713, r5714, r5715, r5716, r5717, r5718, r5719, r5720, r5721, r5722, r5723, r5724, r5725, r5726⟩

theorem seg16_rung207 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15499 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX207 rho : Seg16.F), (seg16AccY207 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18283 : Seg16.F), (rho 18284 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX207 rho : Seg16.F), (seg16AccY207 rho : Seg16.F)⟩
        ⟨(rho 18283 : Seg16.F), (rho 18284 : Seg16.F)⟩
        ⟨(seg16AccX208 rho : Seg16.F), (seg16AccY208 rho : Seg16.F)⟩
        ⟨(rho 18297 : Seg16.F), (rho 18298 : Seg16.F)⟩ := by
  obtain ⟨r5713, r5714, r5715, r5716, r5717, r5718, r5719, r5720, r5721, r5722, r5723, r5724, r5725, r5726⟩ := seg16_rows207 rho h
  unfold Seg16.relationRow5713 at r5713
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5713
  unfold Seg16.relationRow5714 at r5714
  unfold Seg16.relationRow5715 at r5715
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5715
  unfold Seg16.relationRow5716 at r5716
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5716
  unfold Seg16.relationRow5717 at r5717
  unfold Seg16.relationRow5718 at r5718
  unfold Seg16.relationRow5719 at r5719
  unfold Seg16.relationRow5720 at r5720
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5720
  unfold Seg16.relationRow5721 at r5721
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5721
  unfold Seg16.relationRow5722 at r5722
  unfold Seg16.relationRow5723 at r5723
  unfold Seg16.relationRow5724 at r5724
  unfold Seg16.relationRow5725 at r5725
  unfold Seg16.relationRow5726 at r5726
  have hrung207 (bit : Bool) (hbit : rho 15499 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX207 rho : Seg16.F), (seg16AccY207 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18283 : Seg16.F), (rho 18284 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX207 rho : Seg16.F), (seg16AccY207 rho : Seg16.F)⟩
        ⟨(rho 18283 : Seg16.F), (rho 18284 : Seg16.F)⟩
        ⟨(seg16AccX208 rho : Seg16.F), (seg16AccY208 rho : Seg16.F)⟩
        ⟨(rho 18297 : Seg16.F), (rho 18298 : Seg16.F)⟩ := by
    have hnextx : seg16AccX208 rho = seg16AccX207 rho + rho 18292 := by
      unfold seg16AccX208 seg16AccX207
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 57]
      ring
    have hnexty : seg16AccY208 rho = seg16AccY207 rho + rho 18293 := by
      unfold seg16AccY208 seg16AccY207
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 57]
      ring
    have hsum : seg16AccX207 rho + seg16AccY207 rho = rho 18285 := by
      unfold seg16AccX207 seg16AccY207
      linear_combination r5713
    have ha0 : (rho 18283 + rho 18284) * (seg16AccX207 rho + seg16AccY207 rho) = rho 18286 := by
      rw [hsum]
      linear_combination r5714
    have ha1 : rho 18284 * seg16AccX207 rho = rho 18287 := by
      unfold seg16AccX207
      linear_combination r5715
    have ha2 : rho 18283 * seg16AccY207 rho = rho 18288 := by
      unfold seg16AccY207
      linear_combination r5716
    have ha3 : 3021 * rho 18287 * rho 18288 = rho 18289 := by
      linear_combination r5717
    have ha4 : rho 18290 * (1 + rho 18289) = rho 18287 + rho 18288 := by
      linear_combination r5718
    have ha5 : rho 18291 * (1 - rho 18289) = rho 18286 - rho 18287 - rho 18288 := by
      linear_combination r5719
    have haddx :
        rho 18290 * (1 + 3021 * (rho 18284 * seg16AccX207 rho) * (rho 18283 * seg16AccY207 rho)) =
          rho 18284 * seg16AccX207 rho + rho 18283 * seg16AccY207 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18291 * (1 - 3021 * (rho 18284 * seg16AccX207 rho) * (rho 18283 * seg16AccY207 rho)) =
          (-1) * (rho 18284 * seg16AccX207 rho) - rho 18283 * seg16AccY207 rho +
            (seg16AccY207 rho - seg16AccX207 rho * (-1)) * (rho 18283 + rho 18284) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18291 * (1 - rho 18289) = rho 18286 - rho 18287 - rho 18288 := ha5
        _ = (-1) * rho 18287 - rho 18288 + (seg16AccY207 rho - seg16AccX207 rho * (-1)) * (rho 18283 + rho 18284) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX208 rho = seg16AccX207 rho - Bool.toZMod bit * (seg16AccX207 rho - rho 18290) := by
      have hd : rho 18292 = Bool.toZMod bit * (rho 18290 - seg16AccX207 rho) := by
        rw [← hbit]
        unfold seg16AccX207
        linear_combination -r5720
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY208 rho = seg16AccY207 rho - Bool.toZMod bit * (seg16AccY207 rho - rho 18291) := by
      have hd : rho 18293 = Bool.toZMod bit * (rho 18291 - seg16AccY207 rho) := by
        rw [← hbit]
        unfold seg16AccY207
        linear_combination -r5721
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18283 * rho 18284 = rho 18294 := by linear_combination r5722
    have hd1 : rho 18283 * rho 18283 = rho 18295 := by linear_combination r5723
    have hd2 : rho 18284 * rho 18284 = rho 18296 := by linear_combination r5724
    have hd3 : rho 18297 * (rho 18284 * rho 18284 + rho 18283 * rho 18283 * (-1)) = 2 * (rho 18283 * rho 18284) := by
      rw [hd0, hd1, hd2]
      linear_combination r5725
    have hd4 : rho 18298 * (2 - (rho 18284 * rho 18284 + rho 18283 * rho 18283 * (-1))) = rho 18284 * rho 18284 - rho 18283 * rho 18283 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5726
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX207 rho : Seg16.F), (seg16AccY207 rho : Seg16.F)⟩
      ⟨(rho 18283 : Seg16.F), (rho 18284 : Seg16.F)⟩
      ⟨(rho 18290 : Seg16.F), (rho 18291 : Seg16.F)⟩
      ⟨(seg16AccX208 rho : Seg16.F), (seg16AccY208 rho : Seg16.F)⟩
      ⟨(rho 18297 : Seg16.F), (rho 18298 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung207

theorem seg16_rows208 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5727 rho ∧ Seg16.relationRow5728 rho ∧ Seg16.relationRow5729 rho ∧ Seg16.relationRow5730 rho ∧ Seg16.relationRow5731 rho ∧ Seg16.relationRow5732 rho ∧ Seg16.relationRow5733 rho ∧ Seg16.relationRow5734 rho ∧ Seg16.relationRow5735 rho ∧ Seg16.relationRow5736 rho ∧ Seg16.relationRow5737 rho ∧ Seg16.relationRow5738 rho ∧ Seg16.relationRow5739 rho ∧ Seg16.relationRow5740 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5727, r5728, r5729, r5730, r5731, r5732, r5733, r5734, r5735, r5736, r5737, r5738, r5739, r5740, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5727, r5728, r5729, r5730, r5731, r5732, r5733, r5734, r5735, r5736, r5737, r5738, r5739, r5740⟩

theorem seg16_rung208 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15500 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX208 rho : Seg16.F), (seg16AccY208 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18297 : Seg16.F), (rho 18298 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX208 rho : Seg16.F), (seg16AccY208 rho : Seg16.F)⟩
        ⟨(rho 18297 : Seg16.F), (rho 18298 : Seg16.F)⟩
        ⟨(seg16AccX209 rho : Seg16.F), (seg16AccY209 rho : Seg16.F)⟩
        ⟨(rho 18311 : Seg16.F), (rho 18312 : Seg16.F)⟩ := by
  obtain ⟨r5727, r5728, r5729, r5730, r5731, r5732, r5733, r5734, r5735, r5736, r5737, r5738, r5739, r5740⟩ := seg16_rows208 rho h
  unfold Seg16.relationRow5727 at r5727
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5727
  unfold Seg16.relationRow5728 at r5728
  unfold Seg16.relationRow5729 at r5729
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5729
  unfold Seg16.relationRow5730 at r5730
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5730
  unfold Seg16.relationRow5731 at r5731
  unfold Seg16.relationRow5732 at r5732
  unfold Seg16.relationRow5733 at r5733
  unfold Seg16.relationRow5734 at r5734
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5734
  unfold Seg16.relationRow5735 at r5735
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5735
  unfold Seg16.relationRow5736 at r5736
  unfold Seg16.relationRow5737 at r5737
  unfold Seg16.relationRow5738 at r5738
  unfold Seg16.relationRow5739 at r5739
  unfold Seg16.relationRow5740 at r5740
  have hrung208 (bit : Bool) (hbit : rho 15500 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX208 rho : Seg16.F), (seg16AccY208 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18297 : Seg16.F), (rho 18298 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX208 rho : Seg16.F), (seg16AccY208 rho : Seg16.F)⟩
        ⟨(rho 18297 : Seg16.F), (rho 18298 : Seg16.F)⟩
        ⟨(seg16AccX209 rho : Seg16.F), (seg16AccY209 rho : Seg16.F)⟩
        ⟨(rho 18311 : Seg16.F), (rho 18312 : Seg16.F)⟩ := by
    have hnextx : seg16AccX209 rho = seg16AccX208 rho + rho 18306 := by
      unfold seg16AccX209 seg16AccX208
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 58]
      ring
    have hnexty : seg16AccY209 rho = seg16AccY208 rho + rho 18307 := by
      unfold seg16AccY209 seg16AccY208
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 58]
      ring
    have hsum : seg16AccX208 rho + seg16AccY208 rho = rho 18299 := by
      unfold seg16AccX208 seg16AccY208
      linear_combination r5727
    have ha0 : (rho 18297 + rho 18298) * (seg16AccX208 rho + seg16AccY208 rho) = rho 18300 := by
      rw [hsum]
      linear_combination r5728
    have ha1 : rho 18298 * seg16AccX208 rho = rho 18301 := by
      unfold seg16AccX208
      linear_combination r5729
    have ha2 : rho 18297 * seg16AccY208 rho = rho 18302 := by
      unfold seg16AccY208
      linear_combination r5730
    have ha3 : 3021 * rho 18301 * rho 18302 = rho 18303 := by
      linear_combination r5731
    have ha4 : rho 18304 * (1 + rho 18303) = rho 18301 + rho 18302 := by
      linear_combination r5732
    have ha5 : rho 18305 * (1 - rho 18303) = rho 18300 - rho 18301 - rho 18302 := by
      linear_combination r5733
    have haddx :
        rho 18304 * (1 + 3021 * (rho 18298 * seg16AccX208 rho) * (rho 18297 * seg16AccY208 rho)) =
          rho 18298 * seg16AccX208 rho + rho 18297 * seg16AccY208 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18305 * (1 - 3021 * (rho 18298 * seg16AccX208 rho) * (rho 18297 * seg16AccY208 rho)) =
          (-1) * (rho 18298 * seg16AccX208 rho) - rho 18297 * seg16AccY208 rho +
            (seg16AccY208 rho - seg16AccX208 rho * (-1)) * (rho 18297 + rho 18298) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18305 * (1 - rho 18303) = rho 18300 - rho 18301 - rho 18302 := ha5
        _ = (-1) * rho 18301 - rho 18302 + (seg16AccY208 rho - seg16AccX208 rho * (-1)) * (rho 18297 + rho 18298) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX209 rho = seg16AccX208 rho - Bool.toZMod bit * (seg16AccX208 rho - rho 18304) := by
      have hd : rho 18306 = Bool.toZMod bit * (rho 18304 - seg16AccX208 rho) := by
        rw [← hbit]
        unfold seg16AccX208
        linear_combination -r5734
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY209 rho = seg16AccY208 rho - Bool.toZMod bit * (seg16AccY208 rho - rho 18305) := by
      have hd : rho 18307 = Bool.toZMod bit * (rho 18305 - seg16AccY208 rho) := by
        rw [← hbit]
        unfold seg16AccY208
        linear_combination -r5735
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18297 * rho 18298 = rho 18308 := by linear_combination r5736
    have hd1 : rho 18297 * rho 18297 = rho 18309 := by linear_combination r5737
    have hd2 : rho 18298 * rho 18298 = rho 18310 := by linear_combination r5738
    have hd3 : rho 18311 * (rho 18298 * rho 18298 + rho 18297 * rho 18297 * (-1)) = 2 * (rho 18297 * rho 18298) := by
      rw [hd0, hd1, hd2]
      linear_combination r5739
    have hd4 : rho 18312 * (2 - (rho 18298 * rho 18298 + rho 18297 * rho 18297 * (-1))) = rho 18298 * rho 18298 - rho 18297 * rho 18297 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5740
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX208 rho : Seg16.F), (seg16AccY208 rho : Seg16.F)⟩
      ⟨(rho 18297 : Seg16.F), (rho 18298 : Seg16.F)⟩
      ⟨(rho 18304 : Seg16.F), (rho 18305 : Seg16.F)⟩
      ⟨(seg16AccX209 rho : Seg16.F), (seg16AccY209 rho : Seg16.F)⟩
      ⟨(rho 18311 : Seg16.F), (rho 18312 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung208

theorem seg16_hstep_c18 (rho : Nat -> Seg16.F) (h : Seg16.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (15292 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 198 ≤ i → i < 209 →
      EdwardsBridge.onCurve (seg16LadderAccState rho i) →
      EdwardsBridge.onCurve (seg16LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg16LadderAccState rho i) (seg16LadderCurState rho i)
        (seg16LadderAccState rho (i + 1)) (seg16LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg16_rung198 rho h bits[198]! (hbitAt 198 (by omega)) hacc hcur
  · exact seg16_rung199 rho h bits[199]! (hbitAt 199 (by omega)) hacc hcur
  · exact seg16_rung200 rho h bits[200]! (hbitAt 200 (by omega)) hacc hcur
  · exact seg16_rung201 rho h bits[201]! (hbitAt 201 (by omega)) hacc hcur
  · exact seg16_rung202 rho h bits[202]! (hbitAt 202 (by omega)) hacc hcur
  · exact seg16_rung203 rho h bits[203]! (hbitAt 203 (by omega)) hacc hcur
  · exact seg16_rung204 rho h bits[204]! (hbitAt 204 (by omega)) hacc hcur
  · exact seg16_rung205 rho h bits[205]! (hbitAt 205 (by omega)) hacc hcur
  · exact seg16_rung206 rho h bits[206]! (hbitAt 206 (by omega)) hacc hcur
  · exact seg16_rung207 rho h bits[207]! (hbitAt 207 (by omega)) hacc hcur
  · exact seg16_rung208 rho h bits[208]! (hbitAt 208 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
