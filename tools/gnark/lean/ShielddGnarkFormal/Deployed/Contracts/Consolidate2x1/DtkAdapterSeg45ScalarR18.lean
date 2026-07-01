import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg45_rows198 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5587 rho ∧ Seg45.relationRow5588 rho ∧ Seg45.relationRow5589 rho ∧ Seg45.relationRow5590 rho ∧ Seg45.relationRow5591 rho ∧ Seg45.relationRow5592 rho ∧ Seg45.relationRow5593 rho ∧ Seg45.relationRow5594 rho ∧ Seg45.relationRow5595 rho ∧ Seg45.relationRow5596 rho ∧ Seg45.relationRow5597 rho ∧ Seg45.relationRow5598 rho ∧ Seg45.relationRow5599 rho ∧ Seg45.relationRow5600 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5587, r5588, r5589, r5590, r5591, r5592, r5593, r5594, r5595, r5596, r5597, r5598, r5599⟩
  unfold Seg45.relationPart70 at p70
  rcases p70 with ⟨r5600, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5587, r5588, r5589, r5590, r5591, r5592, r5593, r5594, r5595, r5596, r5597, r5598, r5599, r5600⟩

theorem seg45_rung198 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41146 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX198 rho : Seg45.F), (seg45AccY198 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43813 : Seg45.F), (rho 43814 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX198 rho : Seg45.F), (seg45AccY198 rho : Seg45.F)⟩
        ⟨(rho 43813 : Seg45.F), (rho 43814 : Seg45.F)⟩
        ⟨(seg45AccX199 rho : Seg45.F), (seg45AccY199 rho : Seg45.F)⟩
        ⟨(rho 43827 : Seg45.F), (rho 43828 : Seg45.F)⟩ := by
  obtain ⟨r5587, r5588, r5589, r5590, r5591, r5592, r5593, r5594, r5595, r5596, r5597, r5598, r5599, r5600⟩ := seg45_rows198 rho h
  unfold Seg45.relationRow5587 at r5587
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5587
  unfold Seg45.relationRow5588 at r5588
  unfold Seg45.relationRow5589 at r5589
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5589
  unfold Seg45.relationRow5590 at r5590
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5590
  unfold Seg45.relationRow5591 at r5591
  unfold Seg45.relationRow5592 at r5592
  unfold Seg45.relationRow5593 at r5593
  unfold Seg45.relationRow5594 at r5594
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5594
  unfold Seg45.relationRow5595 at r5595
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5595
  unfold Seg45.relationRow5596 at r5596
  unfold Seg45.relationRow5597 at r5597
  unfold Seg45.relationRow5598 at r5598
  unfold Seg45.relationRow5599 at r5599
  unfold Seg45.relationRow5600 at r5600
  have hrung198 (bit : Bool) (hbit : rho 41146 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX198 rho : Seg45.F), (seg45AccY198 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43813 : Seg45.F), (rho 43814 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX198 rho : Seg45.F), (seg45AccY198 rho : Seg45.F)⟩
        ⟨(rho 43813 : Seg45.F), (rho 43814 : Seg45.F)⟩
        ⟨(seg45AccX199 rho : Seg45.F), (seg45AccY199 rho : Seg45.F)⟩
        ⟨(rho 43827 : Seg45.F), (rho 43828 : Seg45.F)⟩ := by
    have hnextx : seg45AccX199 rho = seg45AccX198 rho + rho 43822 := by
      unfold seg45AccX199 seg45AccX198
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 48]
      ring
    have hnexty : seg45AccY199 rho = seg45AccY198 rho + rho 43823 := by
      unfold seg45AccY199 seg45AccY198
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 48]
      ring
    have hsum : seg45AccX198 rho + seg45AccY198 rho = rho 43815 := by
      unfold seg45AccX198 seg45AccY198
      linear_combination r5587
    have ha0 : (rho 43813 + rho 43814) * (seg45AccX198 rho + seg45AccY198 rho) = rho 43816 := by
      rw [hsum]
      linear_combination r5588
    have ha1 : rho 43814 * seg45AccX198 rho = rho 43817 := by
      unfold seg45AccX198
      linear_combination r5589
    have ha2 : rho 43813 * seg45AccY198 rho = rho 43818 := by
      unfold seg45AccY198
      linear_combination r5590
    have ha3 : 3021 * rho 43817 * rho 43818 = rho 43819 := by
      linear_combination r5591
    have ha4 : rho 43820 * (1 + rho 43819) = rho 43817 + rho 43818 := by
      linear_combination r5592
    have ha5 : rho 43821 * (1 - rho 43819) = rho 43816 - rho 43817 - rho 43818 := by
      linear_combination r5593
    have haddx :
        rho 43820 * (1 + 3021 * (rho 43814 * seg45AccX198 rho) * (rho 43813 * seg45AccY198 rho)) =
          rho 43814 * seg45AccX198 rho + rho 43813 * seg45AccY198 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43821 * (1 - 3021 * (rho 43814 * seg45AccX198 rho) * (rho 43813 * seg45AccY198 rho)) =
          (-1) * (rho 43814 * seg45AccX198 rho) - rho 43813 * seg45AccY198 rho +
            (seg45AccY198 rho - seg45AccX198 rho * (-1)) * (rho 43813 + rho 43814) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43821 * (1 - rho 43819) = rho 43816 - rho 43817 - rho 43818 := ha5
        _ = (-1) * rho 43817 - rho 43818 + (seg45AccY198 rho - seg45AccX198 rho * (-1)) * (rho 43813 + rho 43814) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX199 rho = seg45AccX198 rho - Bool.toZMod bit * (seg45AccX198 rho - rho 43820) := by
      have hd : rho 43822 = Bool.toZMod bit * (rho 43820 - seg45AccX198 rho) := by
        rw [← hbit]
        unfold seg45AccX198
        linear_combination -r5594
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY199 rho = seg45AccY198 rho - Bool.toZMod bit * (seg45AccY198 rho - rho 43821) := by
      have hd : rho 43823 = Bool.toZMod bit * (rho 43821 - seg45AccY198 rho) := by
        rw [← hbit]
        unfold seg45AccY198
        linear_combination -r5595
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43813 * rho 43814 = rho 43824 := by linear_combination r5596
    have hd1 : rho 43813 * rho 43813 = rho 43825 := by linear_combination r5597
    have hd2 : rho 43814 * rho 43814 = rho 43826 := by linear_combination r5598
    have hd3 : rho 43827 * (rho 43814 * rho 43814 + rho 43813 * rho 43813 * (-1)) = 2 * (rho 43813 * rho 43814) := by
      rw [hd0, hd1, hd2]
      linear_combination r5599
    have hd4 : rho 43828 * (2 - (rho 43814 * rho 43814 + rho 43813 * rho 43813 * (-1))) = rho 43814 * rho 43814 - rho 43813 * rho 43813 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5600
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX198 rho : Seg45.F), (seg45AccY198 rho : Seg45.F)⟩
      ⟨(rho 43813 : Seg45.F), (rho 43814 : Seg45.F)⟩
      ⟨(rho 43820 : Seg45.F), (rho 43821 : Seg45.F)⟩
      ⟨(seg45AccX199 rho : Seg45.F), (seg45AccY199 rho : Seg45.F)⟩
      ⟨(rho 43827 : Seg45.F), (rho 43828 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung198

theorem seg45_rows199 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5601 rho ∧ Seg45.relationRow5602 rho ∧ Seg45.relationRow5603 rho ∧ Seg45.relationRow5604 rho ∧ Seg45.relationRow5605 rho ∧ Seg45.relationRow5606 rho ∧ Seg45.relationRow5607 rho ∧ Seg45.relationRow5608 rho ∧ Seg45.relationRow5609 rho ∧ Seg45.relationRow5610 rho ∧ Seg45.relationRow5611 rho ∧ Seg45.relationRow5612 rho ∧ Seg45.relationRow5613 rho ∧ Seg45.relationRow5614 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart70 at p70
  rcases p70 with ⟨_, r5601, r5602, r5603, r5604, r5605, r5606, r5607, r5608, r5609, r5610, r5611, r5612, r5613, r5614, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5601, r5602, r5603, r5604, r5605, r5606, r5607, r5608, r5609, r5610, r5611, r5612, r5613, r5614⟩

theorem seg45_rung199 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41147 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX199 rho : Seg45.F), (seg45AccY199 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43827 : Seg45.F), (rho 43828 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX199 rho : Seg45.F), (seg45AccY199 rho : Seg45.F)⟩
        ⟨(rho 43827 : Seg45.F), (rho 43828 : Seg45.F)⟩
        ⟨(seg45AccX200 rho : Seg45.F), (seg45AccY200 rho : Seg45.F)⟩
        ⟨(rho 43841 : Seg45.F), (rho 43842 : Seg45.F)⟩ := by
  obtain ⟨r5601, r5602, r5603, r5604, r5605, r5606, r5607, r5608, r5609, r5610, r5611, r5612, r5613, r5614⟩ := seg45_rows199 rho h
  unfold Seg45.relationRow5601 at r5601
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5601
  unfold Seg45.relationRow5602 at r5602
  unfold Seg45.relationRow5603 at r5603
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5603
  unfold Seg45.relationRow5604 at r5604
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5604
  unfold Seg45.relationRow5605 at r5605
  unfold Seg45.relationRow5606 at r5606
  unfold Seg45.relationRow5607 at r5607
  unfold Seg45.relationRow5608 at r5608
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5608
  unfold Seg45.relationRow5609 at r5609
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5609
  unfold Seg45.relationRow5610 at r5610
  unfold Seg45.relationRow5611 at r5611
  unfold Seg45.relationRow5612 at r5612
  unfold Seg45.relationRow5613 at r5613
  unfold Seg45.relationRow5614 at r5614
  have hrung199 (bit : Bool) (hbit : rho 41147 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX199 rho : Seg45.F), (seg45AccY199 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43827 : Seg45.F), (rho 43828 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX199 rho : Seg45.F), (seg45AccY199 rho : Seg45.F)⟩
        ⟨(rho 43827 : Seg45.F), (rho 43828 : Seg45.F)⟩
        ⟨(seg45AccX200 rho : Seg45.F), (seg45AccY200 rho : Seg45.F)⟩
        ⟨(rho 43841 : Seg45.F), (rho 43842 : Seg45.F)⟩ := by
    have hnextx : seg45AccX200 rho = seg45AccX199 rho + rho 43836 := by
      unfold seg45AccX200 seg45AccX199
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 49]
      ring
    have hnexty : seg45AccY200 rho = seg45AccY199 rho + rho 43837 := by
      unfold seg45AccY200 seg45AccY199
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 49]
      ring
    have hsum : seg45AccX199 rho + seg45AccY199 rho = rho 43829 := by
      unfold seg45AccX199 seg45AccY199
      linear_combination r5601
    have ha0 : (rho 43827 + rho 43828) * (seg45AccX199 rho + seg45AccY199 rho) = rho 43830 := by
      rw [hsum]
      linear_combination r5602
    have ha1 : rho 43828 * seg45AccX199 rho = rho 43831 := by
      unfold seg45AccX199
      linear_combination r5603
    have ha2 : rho 43827 * seg45AccY199 rho = rho 43832 := by
      unfold seg45AccY199
      linear_combination r5604
    have ha3 : 3021 * rho 43831 * rho 43832 = rho 43833 := by
      linear_combination r5605
    have ha4 : rho 43834 * (1 + rho 43833) = rho 43831 + rho 43832 := by
      linear_combination r5606
    have ha5 : rho 43835 * (1 - rho 43833) = rho 43830 - rho 43831 - rho 43832 := by
      linear_combination r5607
    have haddx :
        rho 43834 * (1 + 3021 * (rho 43828 * seg45AccX199 rho) * (rho 43827 * seg45AccY199 rho)) =
          rho 43828 * seg45AccX199 rho + rho 43827 * seg45AccY199 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43835 * (1 - 3021 * (rho 43828 * seg45AccX199 rho) * (rho 43827 * seg45AccY199 rho)) =
          (-1) * (rho 43828 * seg45AccX199 rho) - rho 43827 * seg45AccY199 rho +
            (seg45AccY199 rho - seg45AccX199 rho * (-1)) * (rho 43827 + rho 43828) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43835 * (1 - rho 43833) = rho 43830 - rho 43831 - rho 43832 := ha5
        _ = (-1) * rho 43831 - rho 43832 + (seg45AccY199 rho - seg45AccX199 rho * (-1)) * (rho 43827 + rho 43828) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX200 rho = seg45AccX199 rho - Bool.toZMod bit * (seg45AccX199 rho - rho 43834) := by
      have hd : rho 43836 = Bool.toZMod bit * (rho 43834 - seg45AccX199 rho) := by
        rw [← hbit]
        unfold seg45AccX199
        linear_combination -r5608
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY200 rho = seg45AccY199 rho - Bool.toZMod bit * (seg45AccY199 rho - rho 43835) := by
      have hd : rho 43837 = Bool.toZMod bit * (rho 43835 - seg45AccY199 rho) := by
        rw [← hbit]
        unfold seg45AccY199
        linear_combination -r5609
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43827 * rho 43828 = rho 43838 := by linear_combination r5610
    have hd1 : rho 43827 * rho 43827 = rho 43839 := by linear_combination r5611
    have hd2 : rho 43828 * rho 43828 = rho 43840 := by linear_combination r5612
    have hd3 : rho 43841 * (rho 43828 * rho 43828 + rho 43827 * rho 43827 * (-1)) = 2 * (rho 43827 * rho 43828) := by
      rw [hd0, hd1, hd2]
      linear_combination r5613
    have hd4 : rho 43842 * (2 - (rho 43828 * rho 43828 + rho 43827 * rho 43827 * (-1))) = rho 43828 * rho 43828 - rho 43827 * rho 43827 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5614
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX199 rho : Seg45.F), (seg45AccY199 rho : Seg45.F)⟩
      ⟨(rho 43827 : Seg45.F), (rho 43828 : Seg45.F)⟩
      ⟨(rho 43834 : Seg45.F), (rho 43835 : Seg45.F)⟩
      ⟨(seg45AccX200 rho : Seg45.F), (seg45AccY200 rho : Seg45.F)⟩
      ⟨(rho 43841 : Seg45.F), (rho 43842 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung199

theorem seg45_rows200 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5615 rho ∧ Seg45.relationRow5616 rho ∧ Seg45.relationRow5617 rho ∧ Seg45.relationRow5618 rho ∧ Seg45.relationRow5619 rho ∧ Seg45.relationRow5620 rho ∧ Seg45.relationRow5621 rho ∧ Seg45.relationRow5622 rho ∧ Seg45.relationRow5623 rho ∧ Seg45.relationRow5624 rho ∧ Seg45.relationRow5625 rho ∧ Seg45.relationRow5626 rho ∧ Seg45.relationRow5627 rho ∧ Seg45.relationRow5628 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5615, r5616, r5617, r5618, r5619, r5620, r5621, r5622, r5623, r5624, r5625, r5626, r5627, r5628, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5615, r5616, r5617, r5618, r5619, r5620, r5621, r5622, r5623, r5624, r5625, r5626, r5627, r5628⟩

theorem seg45_rung200 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41148 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX200 rho : Seg45.F), (seg45AccY200 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43841 : Seg45.F), (rho 43842 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX200 rho : Seg45.F), (seg45AccY200 rho : Seg45.F)⟩
        ⟨(rho 43841 : Seg45.F), (rho 43842 : Seg45.F)⟩
        ⟨(seg45AccX201 rho : Seg45.F), (seg45AccY201 rho : Seg45.F)⟩
        ⟨(rho 43855 : Seg45.F), (rho 43856 : Seg45.F)⟩ := by
  obtain ⟨r5615, r5616, r5617, r5618, r5619, r5620, r5621, r5622, r5623, r5624, r5625, r5626, r5627, r5628⟩ := seg45_rows200 rho h
  unfold Seg45.relationRow5615 at r5615
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5615
  unfold Seg45.relationRow5616 at r5616
  unfold Seg45.relationRow5617 at r5617
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5617
  unfold Seg45.relationRow5618 at r5618
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5618
  unfold Seg45.relationRow5619 at r5619
  unfold Seg45.relationRow5620 at r5620
  unfold Seg45.relationRow5621 at r5621
  unfold Seg45.relationRow5622 at r5622
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5622
  unfold Seg45.relationRow5623 at r5623
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5623
  unfold Seg45.relationRow5624 at r5624
  unfold Seg45.relationRow5625 at r5625
  unfold Seg45.relationRow5626 at r5626
  unfold Seg45.relationRow5627 at r5627
  unfold Seg45.relationRow5628 at r5628
  have hrung200 (bit : Bool) (hbit : rho 41148 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX200 rho : Seg45.F), (seg45AccY200 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43841 : Seg45.F), (rho 43842 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX200 rho : Seg45.F), (seg45AccY200 rho : Seg45.F)⟩
        ⟨(rho 43841 : Seg45.F), (rho 43842 : Seg45.F)⟩
        ⟨(seg45AccX201 rho : Seg45.F), (seg45AccY201 rho : Seg45.F)⟩
        ⟨(rho 43855 : Seg45.F), (rho 43856 : Seg45.F)⟩ := by
    have hnextx : seg45AccX201 rho = seg45AccX200 rho + rho 43850 := by
      unfold seg45AccX201 seg45AccX200
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 50]
      ring
    have hnexty : seg45AccY201 rho = seg45AccY200 rho + rho 43851 := by
      unfold seg45AccY201 seg45AccY200
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 50]
      ring
    have hsum : seg45AccX200 rho + seg45AccY200 rho = rho 43843 := by
      unfold seg45AccX200 seg45AccY200
      linear_combination r5615
    have ha0 : (rho 43841 + rho 43842) * (seg45AccX200 rho + seg45AccY200 rho) = rho 43844 := by
      rw [hsum]
      linear_combination r5616
    have ha1 : rho 43842 * seg45AccX200 rho = rho 43845 := by
      unfold seg45AccX200
      linear_combination r5617
    have ha2 : rho 43841 * seg45AccY200 rho = rho 43846 := by
      unfold seg45AccY200
      linear_combination r5618
    have ha3 : 3021 * rho 43845 * rho 43846 = rho 43847 := by
      linear_combination r5619
    have ha4 : rho 43848 * (1 + rho 43847) = rho 43845 + rho 43846 := by
      linear_combination r5620
    have ha5 : rho 43849 * (1 - rho 43847) = rho 43844 - rho 43845 - rho 43846 := by
      linear_combination r5621
    have haddx :
        rho 43848 * (1 + 3021 * (rho 43842 * seg45AccX200 rho) * (rho 43841 * seg45AccY200 rho)) =
          rho 43842 * seg45AccX200 rho + rho 43841 * seg45AccY200 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43849 * (1 - 3021 * (rho 43842 * seg45AccX200 rho) * (rho 43841 * seg45AccY200 rho)) =
          (-1) * (rho 43842 * seg45AccX200 rho) - rho 43841 * seg45AccY200 rho +
            (seg45AccY200 rho - seg45AccX200 rho * (-1)) * (rho 43841 + rho 43842) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43849 * (1 - rho 43847) = rho 43844 - rho 43845 - rho 43846 := ha5
        _ = (-1) * rho 43845 - rho 43846 + (seg45AccY200 rho - seg45AccX200 rho * (-1)) * (rho 43841 + rho 43842) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX201 rho = seg45AccX200 rho - Bool.toZMod bit * (seg45AccX200 rho - rho 43848) := by
      have hd : rho 43850 = Bool.toZMod bit * (rho 43848 - seg45AccX200 rho) := by
        rw [← hbit]
        unfold seg45AccX200
        linear_combination -r5622
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY201 rho = seg45AccY200 rho - Bool.toZMod bit * (seg45AccY200 rho - rho 43849) := by
      have hd : rho 43851 = Bool.toZMod bit * (rho 43849 - seg45AccY200 rho) := by
        rw [← hbit]
        unfold seg45AccY200
        linear_combination -r5623
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43841 * rho 43842 = rho 43852 := by linear_combination r5624
    have hd1 : rho 43841 * rho 43841 = rho 43853 := by linear_combination r5625
    have hd2 : rho 43842 * rho 43842 = rho 43854 := by linear_combination r5626
    have hd3 : rho 43855 * (rho 43842 * rho 43842 + rho 43841 * rho 43841 * (-1)) = 2 * (rho 43841 * rho 43842) := by
      rw [hd0, hd1, hd2]
      linear_combination r5627
    have hd4 : rho 43856 * (2 - (rho 43842 * rho 43842 + rho 43841 * rho 43841 * (-1))) = rho 43842 * rho 43842 - rho 43841 * rho 43841 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5628
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX200 rho : Seg45.F), (seg45AccY200 rho : Seg45.F)⟩
      ⟨(rho 43841 : Seg45.F), (rho 43842 : Seg45.F)⟩
      ⟨(rho 43848 : Seg45.F), (rho 43849 : Seg45.F)⟩
      ⟨(seg45AccX201 rho : Seg45.F), (seg45AccY201 rho : Seg45.F)⟩
      ⟨(rho 43855 : Seg45.F), (rho 43856 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung200

theorem seg45_rows201 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5629 rho ∧ Seg45.relationRow5630 rho ∧ Seg45.relationRow5631 rho ∧ Seg45.relationRow5632 rho ∧ Seg45.relationRow5633 rho ∧ Seg45.relationRow5634 rho ∧ Seg45.relationRow5635 rho ∧ Seg45.relationRow5636 rho ∧ Seg45.relationRow5637 rho ∧ Seg45.relationRow5638 rho ∧ Seg45.relationRow5639 rho ∧ Seg45.relationRow5640 rho ∧ Seg45.relationRow5641 rho ∧ Seg45.relationRow5642 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5629, r5630, r5631, r5632, r5633, r5634, r5635, r5636, r5637, r5638, r5639, r5640, r5641, r5642, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5629, r5630, r5631, r5632, r5633, r5634, r5635, r5636, r5637, r5638, r5639, r5640, r5641, r5642⟩

theorem seg45_rung201 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41149 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX201 rho : Seg45.F), (seg45AccY201 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43855 : Seg45.F), (rho 43856 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX201 rho : Seg45.F), (seg45AccY201 rho : Seg45.F)⟩
        ⟨(rho 43855 : Seg45.F), (rho 43856 : Seg45.F)⟩
        ⟨(seg45AccX202 rho : Seg45.F), (seg45AccY202 rho : Seg45.F)⟩
        ⟨(rho 43869 : Seg45.F), (rho 43870 : Seg45.F)⟩ := by
  obtain ⟨r5629, r5630, r5631, r5632, r5633, r5634, r5635, r5636, r5637, r5638, r5639, r5640, r5641, r5642⟩ := seg45_rows201 rho h
  unfold Seg45.relationRow5629 at r5629
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5629
  unfold Seg45.relationRow5630 at r5630
  unfold Seg45.relationRow5631 at r5631
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5631
  unfold Seg45.relationRow5632 at r5632
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5632
  unfold Seg45.relationRow5633 at r5633
  unfold Seg45.relationRow5634 at r5634
  unfold Seg45.relationRow5635 at r5635
  unfold Seg45.relationRow5636 at r5636
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5636
  unfold Seg45.relationRow5637 at r5637
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5637
  unfold Seg45.relationRow5638 at r5638
  unfold Seg45.relationRow5639 at r5639
  unfold Seg45.relationRow5640 at r5640
  unfold Seg45.relationRow5641 at r5641
  unfold Seg45.relationRow5642 at r5642
  have hrung201 (bit : Bool) (hbit : rho 41149 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX201 rho : Seg45.F), (seg45AccY201 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43855 : Seg45.F), (rho 43856 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX201 rho : Seg45.F), (seg45AccY201 rho : Seg45.F)⟩
        ⟨(rho 43855 : Seg45.F), (rho 43856 : Seg45.F)⟩
        ⟨(seg45AccX202 rho : Seg45.F), (seg45AccY202 rho : Seg45.F)⟩
        ⟨(rho 43869 : Seg45.F), (rho 43870 : Seg45.F)⟩ := by
    have hnextx : seg45AccX202 rho = seg45AccX201 rho + rho 43864 := by
      unfold seg45AccX202 seg45AccX201
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 51]
      ring
    have hnexty : seg45AccY202 rho = seg45AccY201 rho + rho 43865 := by
      unfold seg45AccY202 seg45AccY201
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 51]
      ring
    have hsum : seg45AccX201 rho + seg45AccY201 rho = rho 43857 := by
      unfold seg45AccX201 seg45AccY201
      linear_combination r5629
    have ha0 : (rho 43855 + rho 43856) * (seg45AccX201 rho + seg45AccY201 rho) = rho 43858 := by
      rw [hsum]
      linear_combination r5630
    have ha1 : rho 43856 * seg45AccX201 rho = rho 43859 := by
      unfold seg45AccX201
      linear_combination r5631
    have ha2 : rho 43855 * seg45AccY201 rho = rho 43860 := by
      unfold seg45AccY201
      linear_combination r5632
    have ha3 : 3021 * rho 43859 * rho 43860 = rho 43861 := by
      linear_combination r5633
    have ha4 : rho 43862 * (1 + rho 43861) = rho 43859 + rho 43860 := by
      linear_combination r5634
    have ha5 : rho 43863 * (1 - rho 43861) = rho 43858 - rho 43859 - rho 43860 := by
      linear_combination r5635
    have haddx :
        rho 43862 * (1 + 3021 * (rho 43856 * seg45AccX201 rho) * (rho 43855 * seg45AccY201 rho)) =
          rho 43856 * seg45AccX201 rho + rho 43855 * seg45AccY201 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43863 * (1 - 3021 * (rho 43856 * seg45AccX201 rho) * (rho 43855 * seg45AccY201 rho)) =
          (-1) * (rho 43856 * seg45AccX201 rho) - rho 43855 * seg45AccY201 rho +
            (seg45AccY201 rho - seg45AccX201 rho * (-1)) * (rho 43855 + rho 43856) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43863 * (1 - rho 43861) = rho 43858 - rho 43859 - rho 43860 := ha5
        _ = (-1) * rho 43859 - rho 43860 + (seg45AccY201 rho - seg45AccX201 rho * (-1)) * (rho 43855 + rho 43856) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX202 rho = seg45AccX201 rho - Bool.toZMod bit * (seg45AccX201 rho - rho 43862) := by
      have hd : rho 43864 = Bool.toZMod bit * (rho 43862 - seg45AccX201 rho) := by
        rw [← hbit]
        unfold seg45AccX201
        linear_combination -r5636
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY202 rho = seg45AccY201 rho - Bool.toZMod bit * (seg45AccY201 rho - rho 43863) := by
      have hd : rho 43865 = Bool.toZMod bit * (rho 43863 - seg45AccY201 rho) := by
        rw [← hbit]
        unfold seg45AccY201
        linear_combination -r5637
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43855 * rho 43856 = rho 43866 := by linear_combination r5638
    have hd1 : rho 43855 * rho 43855 = rho 43867 := by linear_combination r5639
    have hd2 : rho 43856 * rho 43856 = rho 43868 := by linear_combination r5640
    have hd3 : rho 43869 * (rho 43856 * rho 43856 + rho 43855 * rho 43855 * (-1)) = 2 * (rho 43855 * rho 43856) := by
      rw [hd0, hd1, hd2]
      linear_combination r5641
    have hd4 : rho 43870 * (2 - (rho 43856 * rho 43856 + rho 43855 * rho 43855 * (-1))) = rho 43856 * rho 43856 - rho 43855 * rho 43855 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5642
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX201 rho : Seg45.F), (seg45AccY201 rho : Seg45.F)⟩
      ⟨(rho 43855 : Seg45.F), (rho 43856 : Seg45.F)⟩
      ⟨(rho 43862 : Seg45.F), (rho 43863 : Seg45.F)⟩
      ⟨(seg45AccX202 rho : Seg45.F), (seg45AccY202 rho : Seg45.F)⟩
      ⟨(rho 43869 : Seg45.F), (rho 43870 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung201

theorem seg45_rows202 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5643 rho ∧ Seg45.relationRow5644 rho ∧ Seg45.relationRow5645 rho ∧ Seg45.relationRow5646 rho ∧ Seg45.relationRow5647 rho ∧ Seg45.relationRow5648 rho ∧ Seg45.relationRow5649 rho ∧ Seg45.relationRow5650 rho ∧ Seg45.relationRow5651 rho ∧ Seg45.relationRow5652 rho ∧ Seg45.relationRow5653 rho ∧ Seg45.relationRow5654 rho ∧ Seg45.relationRow5655 rho ∧ Seg45.relationRow5656 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5643, r5644, r5645, r5646, r5647, r5648, r5649, r5650, r5651, r5652, r5653, r5654, r5655, r5656, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5643, r5644, r5645, r5646, r5647, r5648, r5649, r5650, r5651, r5652, r5653, r5654, r5655, r5656⟩

theorem seg45_rung202 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41150 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX202 rho : Seg45.F), (seg45AccY202 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43869 : Seg45.F), (rho 43870 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX202 rho : Seg45.F), (seg45AccY202 rho : Seg45.F)⟩
        ⟨(rho 43869 : Seg45.F), (rho 43870 : Seg45.F)⟩
        ⟨(seg45AccX203 rho : Seg45.F), (seg45AccY203 rho : Seg45.F)⟩
        ⟨(rho 43883 : Seg45.F), (rho 43884 : Seg45.F)⟩ := by
  obtain ⟨r5643, r5644, r5645, r5646, r5647, r5648, r5649, r5650, r5651, r5652, r5653, r5654, r5655, r5656⟩ := seg45_rows202 rho h
  unfold Seg45.relationRow5643 at r5643
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5643
  unfold Seg45.relationRow5644 at r5644
  unfold Seg45.relationRow5645 at r5645
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5645
  unfold Seg45.relationRow5646 at r5646
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5646
  unfold Seg45.relationRow5647 at r5647
  unfold Seg45.relationRow5648 at r5648
  unfold Seg45.relationRow5649 at r5649
  unfold Seg45.relationRow5650 at r5650
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5650
  unfold Seg45.relationRow5651 at r5651
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5651
  unfold Seg45.relationRow5652 at r5652
  unfold Seg45.relationRow5653 at r5653
  unfold Seg45.relationRow5654 at r5654
  unfold Seg45.relationRow5655 at r5655
  unfold Seg45.relationRow5656 at r5656
  have hrung202 (bit : Bool) (hbit : rho 41150 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX202 rho : Seg45.F), (seg45AccY202 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43869 : Seg45.F), (rho 43870 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX202 rho : Seg45.F), (seg45AccY202 rho : Seg45.F)⟩
        ⟨(rho 43869 : Seg45.F), (rho 43870 : Seg45.F)⟩
        ⟨(seg45AccX203 rho : Seg45.F), (seg45AccY203 rho : Seg45.F)⟩
        ⟨(rho 43883 : Seg45.F), (rho 43884 : Seg45.F)⟩ := by
    have hnextx : seg45AccX203 rho = seg45AccX202 rho + rho 43878 := by
      unfold seg45AccX203 seg45AccX202
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 52]
      ring
    have hnexty : seg45AccY203 rho = seg45AccY202 rho + rho 43879 := by
      unfold seg45AccY203 seg45AccY202
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 52]
      ring
    have hsum : seg45AccX202 rho + seg45AccY202 rho = rho 43871 := by
      unfold seg45AccX202 seg45AccY202
      linear_combination r5643
    have ha0 : (rho 43869 + rho 43870) * (seg45AccX202 rho + seg45AccY202 rho) = rho 43872 := by
      rw [hsum]
      linear_combination r5644
    have ha1 : rho 43870 * seg45AccX202 rho = rho 43873 := by
      unfold seg45AccX202
      linear_combination r5645
    have ha2 : rho 43869 * seg45AccY202 rho = rho 43874 := by
      unfold seg45AccY202
      linear_combination r5646
    have ha3 : 3021 * rho 43873 * rho 43874 = rho 43875 := by
      linear_combination r5647
    have ha4 : rho 43876 * (1 + rho 43875) = rho 43873 + rho 43874 := by
      linear_combination r5648
    have ha5 : rho 43877 * (1 - rho 43875) = rho 43872 - rho 43873 - rho 43874 := by
      linear_combination r5649
    have haddx :
        rho 43876 * (1 + 3021 * (rho 43870 * seg45AccX202 rho) * (rho 43869 * seg45AccY202 rho)) =
          rho 43870 * seg45AccX202 rho + rho 43869 * seg45AccY202 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43877 * (1 - 3021 * (rho 43870 * seg45AccX202 rho) * (rho 43869 * seg45AccY202 rho)) =
          (-1) * (rho 43870 * seg45AccX202 rho) - rho 43869 * seg45AccY202 rho +
            (seg45AccY202 rho - seg45AccX202 rho * (-1)) * (rho 43869 + rho 43870) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43877 * (1 - rho 43875) = rho 43872 - rho 43873 - rho 43874 := ha5
        _ = (-1) * rho 43873 - rho 43874 + (seg45AccY202 rho - seg45AccX202 rho * (-1)) * (rho 43869 + rho 43870) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX203 rho = seg45AccX202 rho - Bool.toZMod bit * (seg45AccX202 rho - rho 43876) := by
      have hd : rho 43878 = Bool.toZMod bit * (rho 43876 - seg45AccX202 rho) := by
        rw [← hbit]
        unfold seg45AccX202
        linear_combination -r5650
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY203 rho = seg45AccY202 rho - Bool.toZMod bit * (seg45AccY202 rho - rho 43877) := by
      have hd : rho 43879 = Bool.toZMod bit * (rho 43877 - seg45AccY202 rho) := by
        rw [← hbit]
        unfold seg45AccY202
        linear_combination -r5651
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43869 * rho 43870 = rho 43880 := by linear_combination r5652
    have hd1 : rho 43869 * rho 43869 = rho 43881 := by linear_combination r5653
    have hd2 : rho 43870 * rho 43870 = rho 43882 := by linear_combination r5654
    have hd3 : rho 43883 * (rho 43870 * rho 43870 + rho 43869 * rho 43869 * (-1)) = 2 * (rho 43869 * rho 43870) := by
      rw [hd0, hd1, hd2]
      linear_combination r5655
    have hd4 : rho 43884 * (2 - (rho 43870 * rho 43870 + rho 43869 * rho 43869 * (-1))) = rho 43870 * rho 43870 - rho 43869 * rho 43869 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5656
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX202 rho : Seg45.F), (seg45AccY202 rho : Seg45.F)⟩
      ⟨(rho 43869 : Seg45.F), (rho 43870 : Seg45.F)⟩
      ⟨(rho 43876 : Seg45.F), (rho 43877 : Seg45.F)⟩
      ⟨(seg45AccX203 rho : Seg45.F), (seg45AccY203 rho : Seg45.F)⟩
      ⟨(rho 43883 : Seg45.F), (rho 43884 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung202

theorem seg45_rows203 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5657 rho ∧ Seg45.relationRow5658 rho ∧ Seg45.relationRow5659 rho ∧ Seg45.relationRow5660 rho ∧ Seg45.relationRow5661 rho ∧ Seg45.relationRow5662 rho ∧ Seg45.relationRow5663 rho ∧ Seg45.relationRow5664 rho ∧ Seg45.relationRow5665 rho ∧ Seg45.relationRow5666 rho ∧ Seg45.relationRow5667 rho ∧ Seg45.relationRow5668 rho ∧ Seg45.relationRow5669 rho ∧ Seg45.relationRow5670 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5657, r5658, r5659, r5660, r5661, r5662, r5663, r5664, r5665, r5666, r5667, r5668, r5669, r5670, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5657, r5658, r5659, r5660, r5661, r5662, r5663, r5664, r5665, r5666, r5667, r5668, r5669, r5670⟩

theorem seg45_rung203 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41151 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX203 rho : Seg45.F), (seg45AccY203 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43883 : Seg45.F), (rho 43884 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX203 rho : Seg45.F), (seg45AccY203 rho : Seg45.F)⟩
        ⟨(rho 43883 : Seg45.F), (rho 43884 : Seg45.F)⟩
        ⟨(seg45AccX204 rho : Seg45.F), (seg45AccY204 rho : Seg45.F)⟩
        ⟨(rho 43897 : Seg45.F), (rho 43898 : Seg45.F)⟩ := by
  obtain ⟨r5657, r5658, r5659, r5660, r5661, r5662, r5663, r5664, r5665, r5666, r5667, r5668, r5669, r5670⟩ := seg45_rows203 rho h
  unfold Seg45.relationRow5657 at r5657
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5657
  unfold Seg45.relationRow5658 at r5658
  unfold Seg45.relationRow5659 at r5659
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5659
  unfold Seg45.relationRow5660 at r5660
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5660
  unfold Seg45.relationRow5661 at r5661
  unfold Seg45.relationRow5662 at r5662
  unfold Seg45.relationRow5663 at r5663
  unfold Seg45.relationRow5664 at r5664
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5664
  unfold Seg45.relationRow5665 at r5665
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5665
  unfold Seg45.relationRow5666 at r5666
  unfold Seg45.relationRow5667 at r5667
  unfold Seg45.relationRow5668 at r5668
  unfold Seg45.relationRow5669 at r5669
  unfold Seg45.relationRow5670 at r5670
  have hrung203 (bit : Bool) (hbit : rho 41151 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX203 rho : Seg45.F), (seg45AccY203 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43883 : Seg45.F), (rho 43884 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX203 rho : Seg45.F), (seg45AccY203 rho : Seg45.F)⟩
        ⟨(rho 43883 : Seg45.F), (rho 43884 : Seg45.F)⟩
        ⟨(seg45AccX204 rho : Seg45.F), (seg45AccY204 rho : Seg45.F)⟩
        ⟨(rho 43897 : Seg45.F), (rho 43898 : Seg45.F)⟩ := by
    have hnextx : seg45AccX204 rho = seg45AccX203 rho + rho 43892 := by
      unfold seg45AccX204 seg45AccX203
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 53]
      ring
    have hnexty : seg45AccY204 rho = seg45AccY203 rho + rho 43893 := by
      unfold seg45AccY204 seg45AccY203
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 53]
      ring
    have hsum : seg45AccX203 rho + seg45AccY203 rho = rho 43885 := by
      unfold seg45AccX203 seg45AccY203
      linear_combination r5657
    have ha0 : (rho 43883 + rho 43884) * (seg45AccX203 rho + seg45AccY203 rho) = rho 43886 := by
      rw [hsum]
      linear_combination r5658
    have ha1 : rho 43884 * seg45AccX203 rho = rho 43887 := by
      unfold seg45AccX203
      linear_combination r5659
    have ha2 : rho 43883 * seg45AccY203 rho = rho 43888 := by
      unfold seg45AccY203
      linear_combination r5660
    have ha3 : 3021 * rho 43887 * rho 43888 = rho 43889 := by
      linear_combination r5661
    have ha4 : rho 43890 * (1 + rho 43889) = rho 43887 + rho 43888 := by
      linear_combination r5662
    have ha5 : rho 43891 * (1 - rho 43889) = rho 43886 - rho 43887 - rho 43888 := by
      linear_combination r5663
    have haddx :
        rho 43890 * (1 + 3021 * (rho 43884 * seg45AccX203 rho) * (rho 43883 * seg45AccY203 rho)) =
          rho 43884 * seg45AccX203 rho + rho 43883 * seg45AccY203 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43891 * (1 - 3021 * (rho 43884 * seg45AccX203 rho) * (rho 43883 * seg45AccY203 rho)) =
          (-1) * (rho 43884 * seg45AccX203 rho) - rho 43883 * seg45AccY203 rho +
            (seg45AccY203 rho - seg45AccX203 rho * (-1)) * (rho 43883 + rho 43884) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43891 * (1 - rho 43889) = rho 43886 - rho 43887 - rho 43888 := ha5
        _ = (-1) * rho 43887 - rho 43888 + (seg45AccY203 rho - seg45AccX203 rho * (-1)) * (rho 43883 + rho 43884) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX204 rho = seg45AccX203 rho - Bool.toZMod bit * (seg45AccX203 rho - rho 43890) := by
      have hd : rho 43892 = Bool.toZMod bit * (rho 43890 - seg45AccX203 rho) := by
        rw [← hbit]
        unfold seg45AccX203
        linear_combination -r5664
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY204 rho = seg45AccY203 rho - Bool.toZMod bit * (seg45AccY203 rho - rho 43891) := by
      have hd : rho 43893 = Bool.toZMod bit * (rho 43891 - seg45AccY203 rho) := by
        rw [← hbit]
        unfold seg45AccY203
        linear_combination -r5665
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43883 * rho 43884 = rho 43894 := by linear_combination r5666
    have hd1 : rho 43883 * rho 43883 = rho 43895 := by linear_combination r5667
    have hd2 : rho 43884 * rho 43884 = rho 43896 := by linear_combination r5668
    have hd3 : rho 43897 * (rho 43884 * rho 43884 + rho 43883 * rho 43883 * (-1)) = 2 * (rho 43883 * rho 43884) := by
      rw [hd0, hd1, hd2]
      linear_combination r5669
    have hd4 : rho 43898 * (2 - (rho 43884 * rho 43884 + rho 43883 * rho 43883 * (-1))) = rho 43884 * rho 43884 - rho 43883 * rho 43883 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5670
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX203 rho : Seg45.F), (seg45AccY203 rho : Seg45.F)⟩
      ⟨(rho 43883 : Seg45.F), (rho 43884 : Seg45.F)⟩
      ⟨(rho 43890 : Seg45.F), (rho 43891 : Seg45.F)⟩
      ⟨(seg45AccX204 rho : Seg45.F), (seg45AccY204 rho : Seg45.F)⟩
      ⟨(rho 43897 : Seg45.F), (rho 43898 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung203

theorem seg45_rows204 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5671 rho ∧ Seg45.relationRow5672 rho ∧ Seg45.relationRow5673 rho ∧ Seg45.relationRow5674 rho ∧ Seg45.relationRow5675 rho ∧ Seg45.relationRow5676 rho ∧ Seg45.relationRow5677 rho ∧ Seg45.relationRow5678 rho ∧ Seg45.relationRow5679 rho ∧ Seg45.relationRow5680 rho ∧ Seg45.relationRow5681 rho ∧ Seg45.relationRow5682 rho ∧ Seg45.relationRow5683 rho ∧ Seg45.relationRow5684 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5671, r5672, r5673, r5674, r5675, r5676, r5677, r5678, r5679⟩
  unfold Seg45.relationPart71 at p71
  rcases p71 with ⟨r5680, r5681, r5682, r5683, r5684, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5671, r5672, r5673, r5674, r5675, r5676, r5677, r5678, r5679, r5680, r5681, r5682, r5683, r5684⟩

theorem seg45_rung204 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41152 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX204 rho : Seg45.F), (seg45AccY204 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43897 : Seg45.F), (rho 43898 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX204 rho : Seg45.F), (seg45AccY204 rho : Seg45.F)⟩
        ⟨(rho 43897 : Seg45.F), (rho 43898 : Seg45.F)⟩
        ⟨(seg45AccX205 rho : Seg45.F), (seg45AccY205 rho : Seg45.F)⟩
        ⟨(rho 43911 : Seg45.F), (rho 43912 : Seg45.F)⟩ := by
  obtain ⟨r5671, r5672, r5673, r5674, r5675, r5676, r5677, r5678, r5679, r5680, r5681, r5682, r5683, r5684⟩ := seg45_rows204 rho h
  unfold Seg45.relationRow5671 at r5671
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5671
  unfold Seg45.relationRow5672 at r5672
  unfold Seg45.relationRow5673 at r5673
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5673
  unfold Seg45.relationRow5674 at r5674
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5674
  unfold Seg45.relationRow5675 at r5675
  unfold Seg45.relationRow5676 at r5676
  unfold Seg45.relationRow5677 at r5677
  unfold Seg45.relationRow5678 at r5678
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5678
  unfold Seg45.relationRow5679 at r5679
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5679
  unfold Seg45.relationRow5680 at r5680
  unfold Seg45.relationRow5681 at r5681
  unfold Seg45.relationRow5682 at r5682
  unfold Seg45.relationRow5683 at r5683
  unfold Seg45.relationRow5684 at r5684
  have hrung204 (bit : Bool) (hbit : rho 41152 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX204 rho : Seg45.F), (seg45AccY204 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43897 : Seg45.F), (rho 43898 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX204 rho : Seg45.F), (seg45AccY204 rho : Seg45.F)⟩
        ⟨(rho 43897 : Seg45.F), (rho 43898 : Seg45.F)⟩
        ⟨(seg45AccX205 rho : Seg45.F), (seg45AccY205 rho : Seg45.F)⟩
        ⟨(rho 43911 : Seg45.F), (rho 43912 : Seg45.F)⟩ := by
    have hnextx : seg45AccX205 rho = seg45AccX204 rho + rho 43906 := by
      unfold seg45AccX205 seg45AccX204
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 54]
      ring
    have hnexty : seg45AccY205 rho = seg45AccY204 rho + rho 43907 := by
      unfold seg45AccY205 seg45AccY204
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 54]
      ring
    have hsum : seg45AccX204 rho + seg45AccY204 rho = rho 43899 := by
      unfold seg45AccX204 seg45AccY204
      linear_combination r5671
    have ha0 : (rho 43897 + rho 43898) * (seg45AccX204 rho + seg45AccY204 rho) = rho 43900 := by
      rw [hsum]
      linear_combination r5672
    have ha1 : rho 43898 * seg45AccX204 rho = rho 43901 := by
      unfold seg45AccX204
      linear_combination r5673
    have ha2 : rho 43897 * seg45AccY204 rho = rho 43902 := by
      unfold seg45AccY204
      linear_combination r5674
    have ha3 : 3021 * rho 43901 * rho 43902 = rho 43903 := by
      linear_combination r5675
    have ha4 : rho 43904 * (1 + rho 43903) = rho 43901 + rho 43902 := by
      linear_combination r5676
    have ha5 : rho 43905 * (1 - rho 43903) = rho 43900 - rho 43901 - rho 43902 := by
      linear_combination r5677
    have haddx :
        rho 43904 * (1 + 3021 * (rho 43898 * seg45AccX204 rho) * (rho 43897 * seg45AccY204 rho)) =
          rho 43898 * seg45AccX204 rho + rho 43897 * seg45AccY204 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43905 * (1 - 3021 * (rho 43898 * seg45AccX204 rho) * (rho 43897 * seg45AccY204 rho)) =
          (-1) * (rho 43898 * seg45AccX204 rho) - rho 43897 * seg45AccY204 rho +
            (seg45AccY204 rho - seg45AccX204 rho * (-1)) * (rho 43897 + rho 43898) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43905 * (1 - rho 43903) = rho 43900 - rho 43901 - rho 43902 := ha5
        _ = (-1) * rho 43901 - rho 43902 + (seg45AccY204 rho - seg45AccX204 rho * (-1)) * (rho 43897 + rho 43898) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX205 rho = seg45AccX204 rho - Bool.toZMod bit * (seg45AccX204 rho - rho 43904) := by
      have hd : rho 43906 = Bool.toZMod bit * (rho 43904 - seg45AccX204 rho) := by
        rw [← hbit]
        unfold seg45AccX204
        linear_combination -r5678
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY205 rho = seg45AccY204 rho - Bool.toZMod bit * (seg45AccY204 rho - rho 43905) := by
      have hd : rho 43907 = Bool.toZMod bit * (rho 43905 - seg45AccY204 rho) := by
        rw [← hbit]
        unfold seg45AccY204
        linear_combination -r5679
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43897 * rho 43898 = rho 43908 := by linear_combination r5680
    have hd1 : rho 43897 * rho 43897 = rho 43909 := by linear_combination r5681
    have hd2 : rho 43898 * rho 43898 = rho 43910 := by linear_combination r5682
    have hd3 : rho 43911 * (rho 43898 * rho 43898 + rho 43897 * rho 43897 * (-1)) = 2 * (rho 43897 * rho 43898) := by
      rw [hd0, hd1, hd2]
      linear_combination r5683
    have hd4 : rho 43912 * (2 - (rho 43898 * rho 43898 + rho 43897 * rho 43897 * (-1))) = rho 43898 * rho 43898 - rho 43897 * rho 43897 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5684
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX204 rho : Seg45.F), (seg45AccY204 rho : Seg45.F)⟩
      ⟨(rho 43897 : Seg45.F), (rho 43898 : Seg45.F)⟩
      ⟨(rho 43904 : Seg45.F), (rho 43905 : Seg45.F)⟩
      ⟨(seg45AccX205 rho : Seg45.F), (seg45AccY205 rho : Seg45.F)⟩
      ⟨(rho 43911 : Seg45.F), (rho 43912 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung204

theorem seg45_rows205 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5685 rho ∧ Seg45.relationRow5686 rho ∧ Seg45.relationRow5687 rho ∧ Seg45.relationRow5688 rho ∧ Seg45.relationRow5689 rho ∧ Seg45.relationRow5690 rho ∧ Seg45.relationRow5691 rho ∧ Seg45.relationRow5692 rho ∧ Seg45.relationRow5693 rho ∧ Seg45.relationRow5694 rho ∧ Seg45.relationRow5695 rho ∧ Seg45.relationRow5696 rho ∧ Seg45.relationRow5697 rho ∧ Seg45.relationRow5698 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, r5685, r5686, r5687, r5688, r5689, r5690, r5691, r5692, r5693, r5694, r5695, r5696, r5697, r5698, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5685, r5686, r5687, r5688, r5689, r5690, r5691, r5692, r5693, r5694, r5695, r5696, r5697, r5698⟩

theorem seg45_rung205 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41153 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX205 rho : Seg45.F), (seg45AccY205 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43911 : Seg45.F), (rho 43912 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX205 rho : Seg45.F), (seg45AccY205 rho : Seg45.F)⟩
        ⟨(rho 43911 : Seg45.F), (rho 43912 : Seg45.F)⟩
        ⟨(seg45AccX206 rho : Seg45.F), (seg45AccY206 rho : Seg45.F)⟩
        ⟨(rho 43925 : Seg45.F), (rho 43926 : Seg45.F)⟩ := by
  obtain ⟨r5685, r5686, r5687, r5688, r5689, r5690, r5691, r5692, r5693, r5694, r5695, r5696, r5697, r5698⟩ := seg45_rows205 rho h
  unfold Seg45.relationRow5685 at r5685
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5685
  unfold Seg45.relationRow5686 at r5686
  unfold Seg45.relationRow5687 at r5687
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5687
  unfold Seg45.relationRow5688 at r5688
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5688
  unfold Seg45.relationRow5689 at r5689
  unfold Seg45.relationRow5690 at r5690
  unfold Seg45.relationRow5691 at r5691
  unfold Seg45.relationRow5692 at r5692
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5692
  unfold Seg45.relationRow5693 at r5693
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5693
  unfold Seg45.relationRow5694 at r5694
  unfold Seg45.relationRow5695 at r5695
  unfold Seg45.relationRow5696 at r5696
  unfold Seg45.relationRow5697 at r5697
  unfold Seg45.relationRow5698 at r5698
  have hrung205 (bit : Bool) (hbit : rho 41153 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX205 rho : Seg45.F), (seg45AccY205 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43911 : Seg45.F), (rho 43912 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX205 rho : Seg45.F), (seg45AccY205 rho : Seg45.F)⟩
        ⟨(rho 43911 : Seg45.F), (rho 43912 : Seg45.F)⟩
        ⟨(seg45AccX206 rho : Seg45.F), (seg45AccY206 rho : Seg45.F)⟩
        ⟨(rho 43925 : Seg45.F), (rho 43926 : Seg45.F)⟩ := by
    have hnextx : seg45AccX206 rho = seg45AccX205 rho + rho 43920 := by
      unfold seg45AccX206 seg45AccX205
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 55]
      ring
    have hnexty : seg45AccY206 rho = seg45AccY205 rho + rho 43921 := by
      unfold seg45AccY206 seg45AccY205
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 55]
      ring
    have hsum : seg45AccX205 rho + seg45AccY205 rho = rho 43913 := by
      unfold seg45AccX205 seg45AccY205
      linear_combination r5685
    have ha0 : (rho 43911 + rho 43912) * (seg45AccX205 rho + seg45AccY205 rho) = rho 43914 := by
      rw [hsum]
      linear_combination r5686
    have ha1 : rho 43912 * seg45AccX205 rho = rho 43915 := by
      unfold seg45AccX205
      linear_combination r5687
    have ha2 : rho 43911 * seg45AccY205 rho = rho 43916 := by
      unfold seg45AccY205
      linear_combination r5688
    have ha3 : 3021 * rho 43915 * rho 43916 = rho 43917 := by
      linear_combination r5689
    have ha4 : rho 43918 * (1 + rho 43917) = rho 43915 + rho 43916 := by
      linear_combination r5690
    have ha5 : rho 43919 * (1 - rho 43917) = rho 43914 - rho 43915 - rho 43916 := by
      linear_combination r5691
    have haddx :
        rho 43918 * (1 + 3021 * (rho 43912 * seg45AccX205 rho) * (rho 43911 * seg45AccY205 rho)) =
          rho 43912 * seg45AccX205 rho + rho 43911 * seg45AccY205 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43919 * (1 - 3021 * (rho 43912 * seg45AccX205 rho) * (rho 43911 * seg45AccY205 rho)) =
          (-1) * (rho 43912 * seg45AccX205 rho) - rho 43911 * seg45AccY205 rho +
            (seg45AccY205 rho - seg45AccX205 rho * (-1)) * (rho 43911 + rho 43912) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43919 * (1 - rho 43917) = rho 43914 - rho 43915 - rho 43916 := ha5
        _ = (-1) * rho 43915 - rho 43916 + (seg45AccY205 rho - seg45AccX205 rho * (-1)) * (rho 43911 + rho 43912) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX206 rho = seg45AccX205 rho - Bool.toZMod bit * (seg45AccX205 rho - rho 43918) := by
      have hd : rho 43920 = Bool.toZMod bit * (rho 43918 - seg45AccX205 rho) := by
        rw [← hbit]
        unfold seg45AccX205
        linear_combination -r5692
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY206 rho = seg45AccY205 rho - Bool.toZMod bit * (seg45AccY205 rho - rho 43919) := by
      have hd : rho 43921 = Bool.toZMod bit * (rho 43919 - seg45AccY205 rho) := by
        rw [← hbit]
        unfold seg45AccY205
        linear_combination -r5693
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43911 * rho 43912 = rho 43922 := by linear_combination r5694
    have hd1 : rho 43911 * rho 43911 = rho 43923 := by linear_combination r5695
    have hd2 : rho 43912 * rho 43912 = rho 43924 := by linear_combination r5696
    have hd3 : rho 43925 * (rho 43912 * rho 43912 + rho 43911 * rho 43911 * (-1)) = 2 * (rho 43911 * rho 43912) := by
      rw [hd0, hd1, hd2]
      linear_combination r5697
    have hd4 : rho 43926 * (2 - (rho 43912 * rho 43912 + rho 43911 * rho 43911 * (-1))) = rho 43912 * rho 43912 - rho 43911 * rho 43911 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5698
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX205 rho : Seg45.F), (seg45AccY205 rho : Seg45.F)⟩
      ⟨(rho 43911 : Seg45.F), (rho 43912 : Seg45.F)⟩
      ⟨(rho 43918 : Seg45.F), (rho 43919 : Seg45.F)⟩
      ⟨(seg45AccX206 rho : Seg45.F), (seg45AccY206 rho : Seg45.F)⟩
      ⟨(rho 43925 : Seg45.F), (rho 43926 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung205

theorem seg45_rows206 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5699 rho ∧ Seg45.relationRow5700 rho ∧ Seg45.relationRow5701 rho ∧ Seg45.relationRow5702 rho ∧ Seg45.relationRow5703 rho ∧ Seg45.relationRow5704 rho ∧ Seg45.relationRow5705 rho ∧ Seg45.relationRow5706 rho ∧ Seg45.relationRow5707 rho ∧ Seg45.relationRow5708 rho ∧ Seg45.relationRow5709 rho ∧ Seg45.relationRow5710 rho ∧ Seg45.relationRow5711 rho ∧ Seg45.relationRow5712 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5699, r5700, r5701, r5702, r5703, r5704, r5705, r5706, r5707, r5708, r5709, r5710, r5711, r5712, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5699, r5700, r5701, r5702, r5703, r5704, r5705, r5706, r5707, r5708, r5709, r5710, r5711, r5712⟩

theorem seg45_rung206 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41154 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX206 rho : Seg45.F), (seg45AccY206 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43925 : Seg45.F), (rho 43926 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX206 rho : Seg45.F), (seg45AccY206 rho : Seg45.F)⟩
        ⟨(rho 43925 : Seg45.F), (rho 43926 : Seg45.F)⟩
        ⟨(seg45AccX207 rho : Seg45.F), (seg45AccY207 rho : Seg45.F)⟩
        ⟨(rho 43939 : Seg45.F), (rho 43940 : Seg45.F)⟩ := by
  obtain ⟨r5699, r5700, r5701, r5702, r5703, r5704, r5705, r5706, r5707, r5708, r5709, r5710, r5711, r5712⟩ := seg45_rows206 rho h
  unfold Seg45.relationRow5699 at r5699
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5699
  unfold Seg45.relationRow5700 at r5700
  unfold Seg45.relationRow5701 at r5701
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5701
  unfold Seg45.relationRow5702 at r5702
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5702
  unfold Seg45.relationRow5703 at r5703
  unfold Seg45.relationRow5704 at r5704
  unfold Seg45.relationRow5705 at r5705
  unfold Seg45.relationRow5706 at r5706
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5706
  unfold Seg45.relationRow5707 at r5707
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5707
  unfold Seg45.relationRow5708 at r5708
  unfold Seg45.relationRow5709 at r5709
  unfold Seg45.relationRow5710 at r5710
  unfold Seg45.relationRow5711 at r5711
  unfold Seg45.relationRow5712 at r5712
  have hrung206 (bit : Bool) (hbit : rho 41154 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX206 rho : Seg45.F), (seg45AccY206 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43925 : Seg45.F), (rho 43926 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX206 rho : Seg45.F), (seg45AccY206 rho : Seg45.F)⟩
        ⟨(rho 43925 : Seg45.F), (rho 43926 : Seg45.F)⟩
        ⟨(seg45AccX207 rho : Seg45.F), (seg45AccY207 rho : Seg45.F)⟩
        ⟨(rho 43939 : Seg45.F), (rho 43940 : Seg45.F)⟩ := by
    have hnextx : seg45AccX207 rho = seg45AccX206 rho + rho 43934 := by
      unfold seg45AccX207 seg45AccX206
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 56]
      ring
    have hnexty : seg45AccY207 rho = seg45AccY206 rho + rho 43935 := by
      unfold seg45AccY207 seg45AccY206
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 56]
      ring
    have hsum : seg45AccX206 rho + seg45AccY206 rho = rho 43927 := by
      unfold seg45AccX206 seg45AccY206
      linear_combination r5699
    have ha0 : (rho 43925 + rho 43926) * (seg45AccX206 rho + seg45AccY206 rho) = rho 43928 := by
      rw [hsum]
      linear_combination r5700
    have ha1 : rho 43926 * seg45AccX206 rho = rho 43929 := by
      unfold seg45AccX206
      linear_combination r5701
    have ha2 : rho 43925 * seg45AccY206 rho = rho 43930 := by
      unfold seg45AccY206
      linear_combination r5702
    have ha3 : 3021 * rho 43929 * rho 43930 = rho 43931 := by
      linear_combination r5703
    have ha4 : rho 43932 * (1 + rho 43931) = rho 43929 + rho 43930 := by
      linear_combination r5704
    have ha5 : rho 43933 * (1 - rho 43931) = rho 43928 - rho 43929 - rho 43930 := by
      linear_combination r5705
    have haddx :
        rho 43932 * (1 + 3021 * (rho 43926 * seg45AccX206 rho) * (rho 43925 * seg45AccY206 rho)) =
          rho 43926 * seg45AccX206 rho + rho 43925 * seg45AccY206 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43933 * (1 - 3021 * (rho 43926 * seg45AccX206 rho) * (rho 43925 * seg45AccY206 rho)) =
          (-1) * (rho 43926 * seg45AccX206 rho) - rho 43925 * seg45AccY206 rho +
            (seg45AccY206 rho - seg45AccX206 rho * (-1)) * (rho 43925 + rho 43926) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43933 * (1 - rho 43931) = rho 43928 - rho 43929 - rho 43930 := ha5
        _ = (-1) * rho 43929 - rho 43930 + (seg45AccY206 rho - seg45AccX206 rho * (-1)) * (rho 43925 + rho 43926) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX207 rho = seg45AccX206 rho - Bool.toZMod bit * (seg45AccX206 rho - rho 43932) := by
      have hd : rho 43934 = Bool.toZMod bit * (rho 43932 - seg45AccX206 rho) := by
        rw [← hbit]
        unfold seg45AccX206
        linear_combination -r5706
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY207 rho = seg45AccY206 rho - Bool.toZMod bit * (seg45AccY206 rho - rho 43933) := by
      have hd : rho 43935 = Bool.toZMod bit * (rho 43933 - seg45AccY206 rho) := by
        rw [← hbit]
        unfold seg45AccY206
        linear_combination -r5707
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43925 * rho 43926 = rho 43936 := by linear_combination r5708
    have hd1 : rho 43925 * rho 43925 = rho 43937 := by linear_combination r5709
    have hd2 : rho 43926 * rho 43926 = rho 43938 := by linear_combination r5710
    have hd3 : rho 43939 * (rho 43926 * rho 43926 + rho 43925 * rho 43925 * (-1)) = 2 * (rho 43925 * rho 43926) := by
      rw [hd0, hd1, hd2]
      linear_combination r5711
    have hd4 : rho 43940 * (2 - (rho 43926 * rho 43926 + rho 43925 * rho 43925 * (-1))) = rho 43926 * rho 43926 - rho 43925 * rho 43925 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5712
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX206 rho : Seg45.F), (seg45AccY206 rho : Seg45.F)⟩
      ⟨(rho 43925 : Seg45.F), (rho 43926 : Seg45.F)⟩
      ⟨(rho 43932 : Seg45.F), (rho 43933 : Seg45.F)⟩
      ⟨(seg45AccX207 rho : Seg45.F), (seg45AccY207 rho : Seg45.F)⟩
      ⟨(rho 43939 : Seg45.F), (rho 43940 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung206

theorem seg45_rows207 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5713 rho ∧ Seg45.relationRow5714 rho ∧ Seg45.relationRow5715 rho ∧ Seg45.relationRow5716 rho ∧ Seg45.relationRow5717 rho ∧ Seg45.relationRow5718 rho ∧ Seg45.relationRow5719 rho ∧ Seg45.relationRow5720 rho ∧ Seg45.relationRow5721 rho ∧ Seg45.relationRow5722 rho ∧ Seg45.relationRow5723 rho ∧ Seg45.relationRow5724 rho ∧ Seg45.relationRow5725 rho ∧ Seg45.relationRow5726 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5713, r5714, r5715, r5716, r5717, r5718, r5719, r5720, r5721, r5722, r5723, r5724, r5725, r5726, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5713, r5714, r5715, r5716, r5717, r5718, r5719, r5720, r5721, r5722, r5723, r5724, r5725, r5726⟩

theorem seg45_rung207 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41155 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX207 rho : Seg45.F), (seg45AccY207 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43939 : Seg45.F), (rho 43940 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX207 rho : Seg45.F), (seg45AccY207 rho : Seg45.F)⟩
        ⟨(rho 43939 : Seg45.F), (rho 43940 : Seg45.F)⟩
        ⟨(seg45AccX208 rho : Seg45.F), (seg45AccY208 rho : Seg45.F)⟩
        ⟨(rho 43953 : Seg45.F), (rho 43954 : Seg45.F)⟩ := by
  obtain ⟨r5713, r5714, r5715, r5716, r5717, r5718, r5719, r5720, r5721, r5722, r5723, r5724, r5725, r5726⟩ := seg45_rows207 rho h
  unfold Seg45.relationRow5713 at r5713
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5713
  unfold Seg45.relationRow5714 at r5714
  unfold Seg45.relationRow5715 at r5715
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5715
  unfold Seg45.relationRow5716 at r5716
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5716
  unfold Seg45.relationRow5717 at r5717
  unfold Seg45.relationRow5718 at r5718
  unfold Seg45.relationRow5719 at r5719
  unfold Seg45.relationRow5720 at r5720
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5720
  unfold Seg45.relationRow5721 at r5721
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5721
  unfold Seg45.relationRow5722 at r5722
  unfold Seg45.relationRow5723 at r5723
  unfold Seg45.relationRow5724 at r5724
  unfold Seg45.relationRow5725 at r5725
  unfold Seg45.relationRow5726 at r5726
  have hrung207 (bit : Bool) (hbit : rho 41155 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX207 rho : Seg45.F), (seg45AccY207 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43939 : Seg45.F), (rho 43940 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX207 rho : Seg45.F), (seg45AccY207 rho : Seg45.F)⟩
        ⟨(rho 43939 : Seg45.F), (rho 43940 : Seg45.F)⟩
        ⟨(seg45AccX208 rho : Seg45.F), (seg45AccY208 rho : Seg45.F)⟩
        ⟨(rho 43953 : Seg45.F), (rho 43954 : Seg45.F)⟩ := by
    have hnextx : seg45AccX208 rho = seg45AccX207 rho + rho 43948 := by
      unfold seg45AccX208 seg45AccX207
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 57]
      ring
    have hnexty : seg45AccY208 rho = seg45AccY207 rho + rho 43949 := by
      unfold seg45AccY208 seg45AccY207
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 57]
      ring
    have hsum : seg45AccX207 rho + seg45AccY207 rho = rho 43941 := by
      unfold seg45AccX207 seg45AccY207
      linear_combination r5713
    have ha0 : (rho 43939 + rho 43940) * (seg45AccX207 rho + seg45AccY207 rho) = rho 43942 := by
      rw [hsum]
      linear_combination r5714
    have ha1 : rho 43940 * seg45AccX207 rho = rho 43943 := by
      unfold seg45AccX207
      linear_combination r5715
    have ha2 : rho 43939 * seg45AccY207 rho = rho 43944 := by
      unfold seg45AccY207
      linear_combination r5716
    have ha3 : 3021 * rho 43943 * rho 43944 = rho 43945 := by
      linear_combination r5717
    have ha4 : rho 43946 * (1 + rho 43945) = rho 43943 + rho 43944 := by
      linear_combination r5718
    have ha5 : rho 43947 * (1 - rho 43945) = rho 43942 - rho 43943 - rho 43944 := by
      linear_combination r5719
    have haddx :
        rho 43946 * (1 + 3021 * (rho 43940 * seg45AccX207 rho) * (rho 43939 * seg45AccY207 rho)) =
          rho 43940 * seg45AccX207 rho + rho 43939 * seg45AccY207 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43947 * (1 - 3021 * (rho 43940 * seg45AccX207 rho) * (rho 43939 * seg45AccY207 rho)) =
          (-1) * (rho 43940 * seg45AccX207 rho) - rho 43939 * seg45AccY207 rho +
            (seg45AccY207 rho - seg45AccX207 rho * (-1)) * (rho 43939 + rho 43940) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43947 * (1 - rho 43945) = rho 43942 - rho 43943 - rho 43944 := ha5
        _ = (-1) * rho 43943 - rho 43944 + (seg45AccY207 rho - seg45AccX207 rho * (-1)) * (rho 43939 + rho 43940) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX208 rho = seg45AccX207 rho - Bool.toZMod bit * (seg45AccX207 rho - rho 43946) := by
      have hd : rho 43948 = Bool.toZMod bit * (rho 43946 - seg45AccX207 rho) := by
        rw [← hbit]
        unfold seg45AccX207
        linear_combination -r5720
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY208 rho = seg45AccY207 rho - Bool.toZMod bit * (seg45AccY207 rho - rho 43947) := by
      have hd : rho 43949 = Bool.toZMod bit * (rho 43947 - seg45AccY207 rho) := by
        rw [← hbit]
        unfold seg45AccY207
        linear_combination -r5721
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43939 * rho 43940 = rho 43950 := by linear_combination r5722
    have hd1 : rho 43939 * rho 43939 = rho 43951 := by linear_combination r5723
    have hd2 : rho 43940 * rho 43940 = rho 43952 := by linear_combination r5724
    have hd3 : rho 43953 * (rho 43940 * rho 43940 + rho 43939 * rho 43939 * (-1)) = 2 * (rho 43939 * rho 43940) := by
      rw [hd0, hd1, hd2]
      linear_combination r5725
    have hd4 : rho 43954 * (2 - (rho 43940 * rho 43940 + rho 43939 * rho 43939 * (-1))) = rho 43940 * rho 43940 - rho 43939 * rho 43939 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5726
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX207 rho : Seg45.F), (seg45AccY207 rho : Seg45.F)⟩
      ⟨(rho 43939 : Seg45.F), (rho 43940 : Seg45.F)⟩
      ⟨(rho 43946 : Seg45.F), (rho 43947 : Seg45.F)⟩
      ⟨(seg45AccX208 rho : Seg45.F), (seg45AccY208 rho : Seg45.F)⟩
      ⟨(rho 43953 : Seg45.F), (rho 43954 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung207

theorem seg45_rows208 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5727 rho ∧ Seg45.relationRow5728 rho ∧ Seg45.relationRow5729 rho ∧ Seg45.relationRow5730 rho ∧ Seg45.relationRow5731 rho ∧ Seg45.relationRow5732 rho ∧ Seg45.relationRow5733 rho ∧ Seg45.relationRow5734 rho ∧ Seg45.relationRow5735 rho ∧ Seg45.relationRow5736 rho ∧ Seg45.relationRow5737 rho ∧ Seg45.relationRow5738 rho ∧ Seg45.relationRow5739 rho ∧ Seg45.relationRow5740 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5727, r5728, r5729, r5730, r5731, r5732, r5733, r5734, r5735, r5736, r5737, r5738, r5739, r5740, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5727, r5728, r5729, r5730, r5731, r5732, r5733, r5734, r5735, r5736, r5737, r5738, r5739, r5740⟩

theorem seg45_rung208 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41156 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX208 rho : Seg45.F), (seg45AccY208 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43953 : Seg45.F), (rho 43954 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX208 rho : Seg45.F), (seg45AccY208 rho : Seg45.F)⟩
        ⟨(rho 43953 : Seg45.F), (rho 43954 : Seg45.F)⟩
        ⟨(seg45AccX209 rho : Seg45.F), (seg45AccY209 rho : Seg45.F)⟩
        ⟨(rho 43967 : Seg45.F), (rho 43968 : Seg45.F)⟩ := by
  obtain ⟨r5727, r5728, r5729, r5730, r5731, r5732, r5733, r5734, r5735, r5736, r5737, r5738, r5739, r5740⟩ := seg45_rows208 rho h
  unfold Seg45.relationRow5727 at r5727
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5727
  unfold Seg45.relationRow5728 at r5728
  unfold Seg45.relationRow5729 at r5729
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5729
  unfold Seg45.relationRow5730 at r5730
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5730
  unfold Seg45.relationRow5731 at r5731
  unfold Seg45.relationRow5732 at r5732
  unfold Seg45.relationRow5733 at r5733
  unfold Seg45.relationRow5734 at r5734
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5734
  unfold Seg45.relationRow5735 at r5735
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5735
  unfold Seg45.relationRow5736 at r5736
  unfold Seg45.relationRow5737 at r5737
  unfold Seg45.relationRow5738 at r5738
  unfold Seg45.relationRow5739 at r5739
  unfold Seg45.relationRow5740 at r5740
  have hrung208 (bit : Bool) (hbit : rho 41156 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX208 rho : Seg45.F), (seg45AccY208 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43953 : Seg45.F), (rho 43954 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX208 rho : Seg45.F), (seg45AccY208 rho : Seg45.F)⟩
        ⟨(rho 43953 : Seg45.F), (rho 43954 : Seg45.F)⟩
        ⟨(seg45AccX209 rho : Seg45.F), (seg45AccY209 rho : Seg45.F)⟩
        ⟨(rho 43967 : Seg45.F), (rho 43968 : Seg45.F)⟩ := by
    have hnextx : seg45AccX209 rho = seg45AccX208 rho + rho 43962 := by
      unfold seg45AccX209 seg45AccX208
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 58]
      ring
    have hnexty : seg45AccY209 rho = seg45AccY208 rho + rho 43963 := by
      unfold seg45AccY209 seg45AccY208
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 58]
      ring
    have hsum : seg45AccX208 rho + seg45AccY208 rho = rho 43955 := by
      unfold seg45AccX208 seg45AccY208
      linear_combination r5727
    have ha0 : (rho 43953 + rho 43954) * (seg45AccX208 rho + seg45AccY208 rho) = rho 43956 := by
      rw [hsum]
      linear_combination r5728
    have ha1 : rho 43954 * seg45AccX208 rho = rho 43957 := by
      unfold seg45AccX208
      linear_combination r5729
    have ha2 : rho 43953 * seg45AccY208 rho = rho 43958 := by
      unfold seg45AccY208
      linear_combination r5730
    have ha3 : 3021 * rho 43957 * rho 43958 = rho 43959 := by
      linear_combination r5731
    have ha4 : rho 43960 * (1 + rho 43959) = rho 43957 + rho 43958 := by
      linear_combination r5732
    have ha5 : rho 43961 * (1 - rho 43959) = rho 43956 - rho 43957 - rho 43958 := by
      linear_combination r5733
    have haddx :
        rho 43960 * (1 + 3021 * (rho 43954 * seg45AccX208 rho) * (rho 43953 * seg45AccY208 rho)) =
          rho 43954 * seg45AccX208 rho + rho 43953 * seg45AccY208 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43961 * (1 - 3021 * (rho 43954 * seg45AccX208 rho) * (rho 43953 * seg45AccY208 rho)) =
          (-1) * (rho 43954 * seg45AccX208 rho) - rho 43953 * seg45AccY208 rho +
            (seg45AccY208 rho - seg45AccX208 rho * (-1)) * (rho 43953 + rho 43954) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43961 * (1 - rho 43959) = rho 43956 - rho 43957 - rho 43958 := ha5
        _ = (-1) * rho 43957 - rho 43958 + (seg45AccY208 rho - seg45AccX208 rho * (-1)) * (rho 43953 + rho 43954) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX209 rho = seg45AccX208 rho - Bool.toZMod bit * (seg45AccX208 rho - rho 43960) := by
      have hd : rho 43962 = Bool.toZMod bit * (rho 43960 - seg45AccX208 rho) := by
        rw [← hbit]
        unfold seg45AccX208
        linear_combination -r5734
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY209 rho = seg45AccY208 rho - Bool.toZMod bit * (seg45AccY208 rho - rho 43961) := by
      have hd : rho 43963 = Bool.toZMod bit * (rho 43961 - seg45AccY208 rho) := by
        rw [← hbit]
        unfold seg45AccY208
        linear_combination -r5735
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43953 * rho 43954 = rho 43964 := by linear_combination r5736
    have hd1 : rho 43953 * rho 43953 = rho 43965 := by linear_combination r5737
    have hd2 : rho 43954 * rho 43954 = rho 43966 := by linear_combination r5738
    have hd3 : rho 43967 * (rho 43954 * rho 43954 + rho 43953 * rho 43953 * (-1)) = 2 * (rho 43953 * rho 43954) := by
      rw [hd0, hd1, hd2]
      linear_combination r5739
    have hd4 : rho 43968 * (2 - (rho 43954 * rho 43954 + rho 43953 * rho 43953 * (-1))) = rho 43954 * rho 43954 - rho 43953 * rho 43953 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5740
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX208 rho : Seg45.F), (seg45AccY208 rho : Seg45.F)⟩
      ⟨(rho 43953 : Seg45.F), (rho 43954 : Seg45.F)⟩
      ⟨(rho 43960 : Seg45.F), (rho 43961 : Seg45.F)⟩
      ⟨(seg45AccX209 rho : Seg45.F), (seg45AccY209 rho : Seg45.F)⟩
      ⟨(rho 43967 : Seg45.F), (rho 43968 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung208

theorem seg45_hstep_c18 (rho : Nat -> Seg45.F) (h : Seg45.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (40948 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 198 ≤ i → i < 209 →
      EdwardsBridge.onCurve (seg45LadderAccState rho i) →
      EdwardsBridge.onCurve (seg45LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg45LadderAccState rho i) (seg45LadderCurState rho i)
        (seg45LadderAccState rho (i + 1)) (seg45LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg45_rung198 rho h bits[198]! (hbitAt 198 (by omega)) hacc hcur
  · exact seg45_rung199 rho h bits[199]! (hbitAt 199 (by omega)) hacc hcur
  · exact seg45_rung200 rho h bits[200]! (hbitAt 200 (by omega)) hacc hcur
  · exact seg45_rung201 rho h bits[201]! (hbitAt 201 (by omega)) hacc hcur
  · exact seg45_rung202 rho h bits[202]! (hbitAt 202 (by omega)) hacc hcur
  · exact seg45_rung203 rho h bits[203]! (hbitAt 203 (by omega)) hacc hcur
  · exact seg45_rung204 rho h bits[204]! (hbitAt 204 (by omega)) hacc hcur
  · exact seg45_rung205 rho h bits[205]! (hbitAt 205 (by omega)) hacc hcur
  · exact seg45_rung206 rho h bits[206]! (hbitAt 206 (by omega)) hacc hcur
  · exact seg45_rung207 rho h bits[207]! (hbitAt 207 (by omega)) hacc hcur
  · exact seg45_rung208 rho h bits[208]! (hbitAt 208 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
