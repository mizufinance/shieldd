import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg34_rows198 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5587 rho ∧ Seg34.relationRow5588 rho ∧ Seg34.relationRow5589 rho ∧ Seg34.relationRow5590 rho ∧ Seg34.relationRow5591 rho ∧ Seg34.relationRow5592 rho ∧ Seg34.relationRow5593 rho ∧ Seg34.relationRow5594 rho ∧ Seg34.relationRow5595 rho ∧ Seg34.relationRow5596 rho ∧ Seg34.relationRow5597 rho ∧ Seg34.relationRow5598 rho ∧ Seg34.relationRow5599 rho ∧ Seg34.relationRow5600 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5587, r5588, r5589, r5590, r5591, r5592, r5593, r5594, r5595, r5596, r5597, r5598, r5599⟩
  unfold Seg34.relationPart70 at p70
  rcases p70 with ⟨r5600, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5587, r5588, r5589, r5590, r5591, r5592, r5593, r5594, r5595, r5596, r5597, r5598, r5599, r5600⟩

theorem seg34_rung198 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34190 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX198 rho : Seg34.F), (seg34AccY198 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36857 : Seg34.F), (rho 36858 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX198 rho : Seg34.F), (seg34AccY198 rho : Seg34.F)⟩
        ⟨(rho 36857 : Seg34.F), (rho 36858 : Seg34.F)⟩
        ⟨(seg34AccX199 rho : Seg34.F), (seg34AccY199 rho : Seg34.F)⟩
        ⟨(rho 36871 : Seg34.F), (rho 36872 : Seg34.F)⟩ := by
  obtain ⟨r5587, r5588, r5589, r5590, r5591, r5592, r5593, r5594, r5595, r5596, r5597, r5598, r5599, r5600⟩ := seg34_rows198 rho h
  unfold Seg34.relationRow5587 at r5587
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5587
  unfold Seg34.relationRow5588 at r5588
  unfold Seg34.relationRow5589 at r5589
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5589
  unfold Seg34.relationRow5590 at r5590
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5590
  unfold Seg34.relationRow5591 at r5591
  unfold Seg34.relationRow5592 at r5592
  unfold Seg34.relationRow5593 at r5593
  unfold Seg34.relationRow5594 at r5594
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5594
  unfold Seg34.relationRow5595 at r5595
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5595
  unfold Seg34.relationRow5596 at r5596
  unfold Seg34.relationRow5597 at r5597
  unfold Seg34.relationRow5598 at r5598
  unfold Seg34.relationRow5599 at r5599
  unfold Seg34.relationRow5600 at r5600
  have hrung198 (bit : Bool) (hbit : rho 34190 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX198 rho : Seg34.F), (seg34AccY198 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36857 : Seg34.F), (rho 36858 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX198 rho : Seg34.F), (seg34AccY198 rho : Seg34.F)⟩
        ⟨(rho 36857 : Seg34.F), (rho 36858 : Seg34.F)⟩
        ⟨(seg34AccX199 rho : Seg34.F), (seg34AccY199 rho : Seg34.F)⟩
        ⟨(rho 36871 : Seg34.F), (rho 36872 : Seg34.F)⟩ := by
    have hnextx : seg34AccX199 rho = seg34AccX198 rho + rho 36866 := by
      unfold seg34AccX199 seg34AccX198
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 48]
      ring
    have hnexty : seg34AccY199 rho = seg34AccY198 rho + rho 36867 := by
      unfold seg34AccY199 seg34AccY198
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 48]
      ring
    have hsum : seg34AccX198 rho + seg34AccY198 rho = rho 36859 := by
      unfold seg34AccX198 seg34AccY198
      linear_combination r5587
    have ha0 : (rho 36857 + rho 36858) * (seg34AccX198 rho + seg34AccY198 rho) = rho 36860 := by
      rw [hsum]
      linear_combination r5588
    have ha1 : rho 36858 * seg34AccX198 rho = rho 36861 := by
      unfold seg34AccX198
      linear_combination r5589
    have ha2 : rho 36857 * seg34AccY198 rho = rho 36862 := by
      unfold seg34AccY198
      linear_combination r5590
    have ha3 : 3021 * rho 36861 * rho 36862 = rho 36863 := by
      linear_combination r5591
    have ha4 : rho 36864 * (1 + rho 36863) = rho 36861 + rho 36862 := by
      linear_combination r5592
    have ha5 : rho 36865 * (1 - rho 36863) = rho 36860 - rho 36861 - rho 36862 := by
      linear_combination r5593
    have haddx :
        rho 36864 * (1 + 3021 * (rho 36858 * seg34AccX198 rho) * (rho 36857 * seg34AccY198 rho)) =
          rho 36858 * seg34AccX198 rho + rho 36857 * seg34AccY198 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36865 * (1 - 3021 * (rho 36858 * seg34AccX198 rho) * (rho 36857 * seg34AccY198 rho)) =
          (-1) * (rho 36858 * seg34AccX198 rho) - rho 36857 * seg34AccY198 rho +
            (seg34AccY198 rho - seg34AccX198 rho * (-1)) * (rho 36857 + rho 36858) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36865 * (1 - rho 36863) = rho 36860 - rho 36861 - rho 36862 := ha5
        _ = (-1) * rho 36861 - rho 36862 + (seg34AccY198 rho - seg34AccX198 rho * (-1)) * (rho 36857 + rho 36858) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX199 rho = seg34AccX198 rho - Bool.toZMod bit * (seg34AccX198 rho - rho 36864) := by
      have hd : rho 36866 = Bool.toZMod bit * (rho 36864 - seg34AccX198 rho) := by
        rw [← hbit]
        unfold seg34AccX198
        linear_combination -r5594
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY199 rho = seg34AccY198 rho - Bool.toZMod bit * (seg34AccY198 rho - rho 36865) := by
      have hd : rho 36867 = Bool.toZMod bit * (rho 36865 - seg34AccY198 rho) := by
        rw [← hbit]
        unfold seg34AccY198
        linear_combination -r5595
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36857 * rho 36858 = rho 36868 := by linear_combination r5596
    have hd1 : rho 36857 * rho 36857 = rho 36869 := by linear_combination r5597
    have hd2 : rho 36858 * rho 36858 = rho 36870 := by linear_combination r5598
    have hd3 : rho 36871 * (rho 36858 * rho 36858 + rho 36857 * rho 36857 * (-1)) = 2 * (rho 36857 * rho 36858) := by
      rw [hd0, hd1, hd2]
      linear_combination r5599
    have hd4 : rho 36872 * (2 - (rho 36858 * rho 36858 + rho 36857 * rho 36857 * (-1))) = rho 36858 * rho 36858 - rho 36857 * rho 36857 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5600
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX198 rho : Seg34.F), (seg34AccY198 rho : Seg34.F)⟩
      ⟨(rho 36857 : Seg34.F), (rho 36858 : Seg34.F)⟩
      ⟨(rho 36864 : Seg34.F), (rho 36865 : Seg34.F)⟩
      ⟨(seg34AccX199 rho : Seg34.F), (seg34AccY199 rho : Seg34.F)⟩
      ⟨(rho 36871 : Seg34.F), (rho 36872 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung198

theorem seg34_rows199 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5601 rho ∧ Seg34.relationRow5602 rho ∧ Seg34.relationRow5603 rho ∧ Seg34.relationRow5604 rho ∧ Seg34.relationRow5605 rho ∧ Seg34.relationRow5606 rho ∧ Seg34.relationRow5607 rho ∧ Seg34.relationRow5608 rho ∧ Seg34.relationRow5609 rho ∧ Seg34.relationRow5610 rho ∧ Seg34.relationRow5611 rho ∧ Seg34.relationRow5612 rho ∧ Seg34.relationRow5613 rho ∧ Seg34.relationRow5614 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart70 at p70
  rcases p70 with ⟨_, r5601, r5602, r5603, r5604, r5605, r5606, r5607, r5608, r5609, r5610, r5611, r5612, r5613, r5614, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5601, r5602, r5603, r5604, r5605, r5606, r5607, r5608, r5609, r5610, r5611, r5612, r5613, r5614⟩

theorem seg34_rung199 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34191 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX199 rho : Seg34.F), (seg34AccY199 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36871 : Seg34.F), (rho 36872 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX199 rho : Seg34.F), (seg34AccY199 rho : Seg34.F)⟩
        ⟨(rho 36871 : Seg34.F), (rho 36872 : Seg34.F)⟩
        ⟨(seg34AccX200 rho : Seg34.F), (seg34AccY200 rho : Seg34.F)⟩
        ⟨(rho 36885 : Seg34.F), (rho 36886 : Seg34.F)⟩ := by
  obtain ⟨r5601, r5602, r5603, r5604, r5605, r5606, r5607, r5608, r5609, r5610, r5611, r5612, r5613, r5614⟩ := seg34_rows199 rho h
  unfold Seg34.relationRow5601 at r5601
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5601
  unfold Seg34.relationRow5602 at r5602
  unfold Seg34.relationRow5603 at r5603
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5603
  unfold Seg34.relationRow5604 at r5604
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5604
  unfold Seg34.relationRow5605 at r5605
  unfold Seg34.relationRow5606 at r5606
  unfold Seg34.relationRow5607 at r5607
  unfold Seg34.relationRow5608 at r5608
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5608
  unfold Seg34.relationRow5609 at r5609
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5609
  unfold Seg34.relationRow5610 at r5610
  unfold Seg34.relationRow5611 at r5611
  unfold Seg34.relationRow5612 at r5612
  unfold Seg34.relationRow5613 at r5613
  unfold Seg34.relationRow5614 at r5614
  have hrung199 (bit : Bool) (hbit : rho 34191 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX199 rho : Seg34.F), (seg34AccY199 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36871 : Seg34.F), (rho 36872 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX199 rho : Seg34.F), (seg34AccY199 rho : Seg34.F)⟩
        ⟨(rho 36871 : Seg34.F), (rho 36872 : Seg34.F)⟩
        ⟨(seg34AccX200 rho : Seg34.F), (seg34AccY200 rho : Seg34.F)⟩
        ⟨(rho 36885 : Seg34.F), (rho 36886 : Seg34.F)⟩ := by
    have hnextx : seg34AccX200 rho = seg34AccX199 rho + rho 36880 := by
      unfold seg34AccX200 seg34AccX199
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 49]
      ring
    have hnexty : seg34AccY200 rho = seg34AccY199 rho + rho 36881 := by
      unfold seg34AccY200 seg34AccY199
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 49]
      ring
    have hsum : seg34AccX199 rho + seg34AccY199 rho = rho 36873 := by
      unfold seg34AccX199 seg34AccY199
      linear_combination r5601
    have ha0 : (rho 36871 + rho 36872) * (seg34AccX199 rho + seg34AccY199 rho) = rho 36874 := by
      rw [hsum]
      linear_combination r5602
    have ha1 : rho 36872 * seg34AccX199 rho = rho 36875 := by
      unfold seg34AccX199
      linear_combination r5603
    have ha2 : rho 36871 * seg34AccY199 rho = rho 36876 := by
      unfold seg34AccY199
      linear_combination r5604
    have ha3 : 3021 * rho 36875 * rho 36876 = rho 36877 := by
      linear_combination r5605
    have ha4 : rho 36878 * (1 + rho 36877) = rho 36875 + rho 36876 := by
      linear_combination r5606
    have ha5 : rho 36879 * (1 - rho 36877) = rho 36874 - rho 36875 - rho 36876 := by
      linear_combination r5607
    have haddx :
        rho 36878 * (1 + 3021 * (rho 36872 * seg34AccX199 rho) * (rho 36871 * seg34AccY199 rho)) =
          rho 36872 * seg34AccX199 rho + rho 36871 * seg34AccY199 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36879 * (1 - 3021 * (rho 36872 * seg34AccX199 rho) * (rho 36871 * seg34AccY199 rho)) =
          (-1) * (rho 36872 * seg34AccX199 rho) - rho 36871 * seg34AccY199 rho +
            (seg34AccY199 rho - seg34AccX199 rho * (-1)) * (rho 36871 + rho 36872) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36879 * (1 - rho 36877) = rho 36874 - rho 36875 - rho 36876 := ha5
        _ = (-1) * rho 36875 - rho 36876 + (seg34AccY199 rho - seg34AccX199 rho * (-1)) * (rho 36871 + rho 36872) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX200 rho = seg34AccX199 rho - Bool.toZMod bit * (seg34AccX199 rho - rho 36878) := by
      have hd : rho 36880 = Bool.toZMod bit * (rho 36878 - seg34AccX199 rho) := by
        rw [← hbit]
        unfold seg34AccX199
        linear_combination -r5608
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY200 rho = seg34AccY199 rho - Bool.toZMod bit * (seg34AccY199 rho - rho 36879) := by
      have hd : rho 36881 = Bool.toZMod bit * (rho 36879 - seg34AccY199 rho) := by
        rw [← hbit]
        unfold seg34AccY199
        linear_combination -r5609
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36871 * rho 36872 = rho 36882 := by linear_combination r5610
    have hd1 : rho 36871 * rho 36871 = rho 36883 := by linear_combination r5611
    have hd2 : rho 36872 * rho 36872 = rho 36884 := by linear_combination r5612
    have hd3 : rho 36885 * (rho 36872 * rho 36872 + rho 36871 * rho 36871 * (-1)) = 2 * (rho 36871 * rho 36872) := by
      rw [hd0, hd1, hd2]
      linear_combination r5613
    have hd4 : rho 36886 * (2 - (rho 36872 * rho 36872 + rho 36871 * rho 36871 * (-1))) = rho 36872 * rho 36872 - rho 36871 * rho 36871 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5614
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX199 rho : Seg34.F), (seg34AccY199 rho : Seg34.F)⟩
      ⟨(rho 36871 : Seg34.F), (rho 36872 : Seg34.F)⟩
      ⟨(rho 36878 : Seg34.F), (rho 36879 : Seg34.F)⟩
      ⟨(seg34AccX200 rho : Seg34.F), (seg34AccY200 rho : Seg34.F)⟩
      ⟨(rho 36885 : Seg34.F), (rho 36886 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung199

theorem seg34_rows200 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5615 rho ∧ Seg34.relationRow5616 rho ∧ Seg34.relationRow5617 rho ∧ Seg34.relationRow5618 rho ∧ Seg34.relationRow5619 rho ∧ Seg34.relationRow5620 rho ∧ Seg34.relationRow5621 rho ∧ Seg34.relationRow5622 rho ∧ Seg34.relationRow5623 rho ∧ Seg34.relationRow5624 rho ∧ Seg34.relationRow5625 rho ∧ Seg34.relationRow5626 rho ∧ Seg34.relationRow5627 rho ∧ Seg34.relationRow5628 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5615, r5616, r5617, r5618, r5619, r5620, r5621, r5622, r5623, r5624, r5625, r5626, r5627, r5628, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5615, r5616, r5617, r5618, r5619, r5620, r5621, r5622, r5623, r5624, r5625, r5626, r5627, r5628⟩

theorem seg34_rung200 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34192 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX200 rho : Seg34.F), (seg34AccY200 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36885 : Seg34.F), (rho 36886 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX200 rho : Seg34.F), (seg34AccY200 rho : Seg34.F)⟩
        ⟨(rho 36885 : Seg34.F), (rho 36886 : Seg34.F)⟩
        ⟨(seg34AccX201 rho : Seg34.F), (seg34AccY201 rho : Seg34.F)⟩
        ⟨(rho 36899 : Seg34.F), (rho 36900 : Seg34.F)⟩ := by
  obtain ⟨r5615, r5616, r5617, r5618, r5619, r5620, r5621, r5622, r5623, r5624, r5625, r5626, r5627, r5628⟩ := seg34_rows200 rho h
  unfold Seg34.relationRow5615 at r5615
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5615
  unfold Seg34.relationRow5616 at r5616
  unfold Seg34.relationRow5617 at r5617
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5617
  unfold Seg34.relationRow5618 at r5618
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5618
  unfold Seg34.relationRow5619 at r5619
  unfold Seg34.relationRow5620 at r5620
  unfold Seg34.relationRow5621 at r5621
  unfold Seg34.relationRow5622 at r5622
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5622
  unfold Seg34.relationRow5623 at r5623
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5623
  unfold Seg34.relationRow5624 at r5624
  unfold Seg34.relationRow5625 at r5625
  unfold Seg34.relationRow5626 at r5626
  unfold Seg34.relationRow5627 at r5627
  unfold Seg34.relationRow5628 at r5628
  have hrung200 (bit : Bool) (hbit : rho 34192 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX200 rho : Seg34.F), (seg34AccY200 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36885 : Seg34.F), (rho 36886 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX200 rho : Seg34.F), (seg34AccY200 rho : Seg34.F)⟩
        ⟨(rho 36885 : Seg34.F), (rho 36886 : Seg34.F)⟩
        ⟨(seg34AccX201 rho : Seg34.F), (seg34AccY201 rho : Seg34.F)⟩
        ⟨(rho 36899 : Seg34.F), (rho 36900 : Seg34.F)⟩ := by
    have hnextx : seg34AccX201 rho = seg34AccX200 rho + rho 36894 := by
      unfold seg34AccX201 seg34AccX200
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 50]
      ring
    have hnexty : seg34AccY201 rho = seg34AccY200 rho + rho 36895 := by
      unfold seg34AccY201 seg34AccY200
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 50]
      ring
    have hsum : seg34AccX200 rho + seg34AccY200 rho = rho 36887 := by
      unfold seg34AccX200 seg34AccY200
      linear_combination r5615
    have ha0 : (rho 36885 + rho 36886) * (seg34AccX200 rho + seg34AccY200 rho) = rho 36888 := by
      rw [hsum]
      linear_combination r5616
    have ha1 : rho 36886 * seg34AccX200 rho = rho 36889 := by
      unfold seg34AccX200
      linear_combination r5617
    have ha2 : rho 36885 * seg34AccY200 rho = rho 36890 := by
      unfold seg34AccY200
      linear_combination r5618
    have ha3 : 3021 * rho 36889 * rho 36890 = rho 36891 := by
      linear_combination r5619
    have ha4 : rho 36892 * (1 + rho 36891) = rho 36889 + rho 36890 := by
      linear_combination r5620
    have ha5 : rho 36893 * (1 - rho 36891) = rho 36888 - rho 36889 - rho 36890 := by
      linear_combination r5621
    have haddx :
        rho 36892 * (1 + 3021 * (rho 36886 * seg34AccX200 rho) * (rho 36885 * seg34AccY200 rho)) =
          rho 36886 * seg34AccX200 rho + rho 36885 * seg34AccY200 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36893 * (1 - 3021 * (rho 36886 * seg34AccX200 rho) * (rho 36885 * seg34AccY200 rho)) =
          (-1) * (rho 36886 * seg34AccX200 rho) - rho 36885 * seg34AccY200 rho +
            (seg34AccY200 rho - seg34AccX200 rho * (-1)) * (rho 36885 + rho 36886) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36893 * (1 - rho 36891) = rho 36888 - rho 36889 - rho 36890 := ha5
        _ = (-1) * rho 36889 - rho 36890 + (seg34AccY200 rho - seg34AccX200 rho * (-1)) * (rho 36885 + rho 36886) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX201 rho = seg34AccX200 rho - Bool.toZMod bit * (seg34AccX200 rho - rho 36892) := by
      have hd : rho 36894 = Bool.toZMod bit * (rho 36892 - seg34AccX200 rho) := by
        rw [← hbit]
        unfold seg34AccX200
        linear_combination -r5622
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY201 rho = seg34AccY200 rho - Bool.toZMod bit * (seg34AccY200 rho - rho 36893) := by
      have hd : rho 36895 = Bool.toZMod bit * (rho 36893 - seg34AccY200 rho) := by
        rw [← hbit]
        unfold seg34AccY200
        linear_combination -r5623
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36885 * rho 36886 = rho 36896 := by linear_combination r5624
    have hd1 : rho 36885 * rho 36885 = rho 36897 := by linear_combination r5625
    have hd2 : rho 36886 * rho 36886 = rho 36898 := by linear_combination r5626
    have hd3 : rho 36899 * (rho 36886 * rho 36886 + rho 36885 * rho 36885 * (-1)) = 2 * (rho 36885 * rho 36886) := by
      rw [hd0, hd1, hd2]
      linear_combination r5627
    have hd4 : rho 36900 * (2 - (rho 36886 * rho 36886 + rho 36885 * rho 36885 * (-1))) = rho 36886 * rho 36886 - rho 36885 * rho 36885 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5628
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX200 rho : Seg34.F), (seg34AccY200 rho : Seg34.F)⟩
      ⟨(rho 36885 : Seg34.F), (rho 36886 : Seg34.F)⟩
      ⟨(rho 36892 : Seg34.F), (rho 36893 : Seg34.F)⟩
      ⟨(seg34AccX201 rho : Seg34.F), (seg34AccY201 rho : Seg34.F)⟩
      ⟨(rho 36899 : Seg34.F), (rho 36900 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung200

theorem seg34_rows201 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5629 rho ∧ Seg34.relationRow5630 rho ∧ Seg34.relationRow5631 rho ∧ Seg34.relationRow5632 rho ∧ Seg34.relationRow5633 rho ∧ Seg34.relationRow5634 rho ∧ Seg34.relationRow5635 rho ∧ Seg34.relationRow5636 rho ∧ Seg34.relationRow5637 rho ∧ Seg34.relationRow5638 rho ∧ Seg34.relationRow5639 rho ∧ Seg34.relationRow5640 rho ∧ Seg34.relationRow5641 rho ∧ Seg34.relationRow5642 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5629, r5630, r5631, r5632, r5633, r5634, r5635, r5636, r5637, r5638, r5639, r5640, r5641, r5642, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5629, r5630, r5631, r5632, r5633, r5634, r5635, r5636, r5637, r5638, r5639, r5640, r5641, r5642⟩

theorem seg34_rung201 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34193 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX201 rho : Seg34.F), (seg34AccY201 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36899 : Seg34.F), (rho 36900 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX201 rho : Seg34.F), (seg34AccY201 rho : Seg34.F)⟩
        ⟨(rho 36899 : Seg34.F), (rho 36900 : Seg34.F)⟩
        ⟨(seg34AccX202 rho : Seg34.F), (seg34AccY202 rho : Seg34.F)⟩
        ⟨(rho 36913 : Seg34.F), (rho 36914 : Seg34.F)⟩ := by
  obtain ⟨r5629, r5630, r5631, r5632, r5633, r5634, r5635, r5636, r5637, r5638, r5639, r5640, r5641, r5642⟩ := seg34_rows201 rho h
  unfold Seg34.relationRow5629 at r5629
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5629
  unfold Seg34.relationRow5630 at r5630
  unfold Seg34.relationRow5631 at r5631
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5631
  unfold Seg34.relationRow5632 at r5632
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5632
  unfold Seg34.relationRow5633 at r5633
  unfold Seg34.relationRow5634 at r5634
  unfold Seg34.relationRow5635 at r5635
  unfold Seg34.relationRow5636 at r5636
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5636
  unfold Seg34.relationRow5637 at r5637
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5637
  unfold Seg34.relationRow5638 at r5638
  unfold Seg34.relationRow5639 at r5639
  unfold Seg34.relationRow5640 at r5640
  unfold Seg34.relationRow5641 at r5641
  unfold Seg34.relationRow5642 at r5642
  have hrung201 (bit : Bool) (hbit : rho 34193 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX201 rho : Seg34.F), (seg34AccY201 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36899 : Seg34.F), (rho 36900 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX201 rho : Seg34.F), (seg34AccY201 rho : Seg34.F)⟩
        ⟨(rho 36899 : Seg34.F), (rho 36900 : Seg34.F)⟩
        ⟨(seg34AccX202 rho : Seg34.F), (seg34AccY202 rho : Seg34.F)⟩
        ⟨(rho 36913 : Seg34.F), (rho 36914 : Seg34.F)⟩ := by
    have hnextx : seg34AccX202 rho = seg34AccX201 rho + rho 36908 := by
      unfold seg34AccX202 seg34AccX201
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 51]
      ring
    have hnexty : seg34AccY202 rho = seg34AccY201 rho + rho 36909 := by
      unfold seg34AccY202 seg34AccY201
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 51]
      ring
    have hsum : seg34AccX201 rho + seg34AccY201 rho = rho 36901 := by
      unfold seg34AccX201 seg34AccY201
      linear_combination r5629
    have ha0 : (rho 36899 + rho 36900) * (seg34AccX201 rho + seg34AccY201 rho) = rho 36902 := by
      rw [hsum]
      linear_combination r5630
    have ha1 : rho 36900 * seg34AccX201 rho = rho 36903 := by
      unfold seg34AccX201
      linear_combination r5631
    have ha2 : rho 36899 * seg34AccY201 rho = rho 36904 := by
      unfold seg34AccY201
      linear_combination r5632
    have ha3 : 3021 * rho 36903 * rho 36904 = rho 36905 := by
      linear_combination r5633
    have ha4 : rho 36906 * (1 + rho 36905) = rho 36903 + rho 36904 := by
      linear_combination r5634
    have ha5 : rho 36907 * (1 - rho 36905) = rho 36902 - rho 36903 - rho 36904 := by
      linear_combination r5635
    have haddx :
        rho 36906 * (1 + 3021 * (rho 36900 * seg34AccX201 rho) * (rho 36899 * seg34AccY201 rho)) =
          rho 36900 * seg34AccX201 rho + rho 36899 * seg34AccY201 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36907 * (1 - 3021 * (rho 36900 * seg34AccX201 rho) * (rho 36899 * seg34AccY201 rho)) =
          (-1) * (rho 36900 * seg34AccX201 rho) - rho 36899 * seg34AccY201 rho +
            (seg34AccY201 rho - seg34AccX201 rho * (-1)) * (rho 36899 + rho 36900) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36907 * (1 - rho 36905) = rho 36902 - rho 36903 - rho 36904 := ha5
        _ = (-1) * rho 36903 - rho 36904 + (seg34AccY201 rho - seg34AccX201 rho * (-1)) * (rho 36899 + rho 36900) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX202 rho = seg34AccX201 rho - Bool.toZMod bit * (seg34AccX201 rho - rho 36906) := by
      have hd : rho 36908 = Bool.toZMod bit * (rho 36906 - seg34AccX201 rho) := by
        rw [← hbit]
        unfold seg34AccX201
        linear_combination -r5636
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY202 rho = seg34AccY201 rho - Bool.toZMod bit * (seg34AccY201 rho - rho 36907) := by
      have hd : rho 36909 = Bool.toZMod bit * (rho 36907 - seg34AccY201 rho) := by
        rw [← hbit]
        unfold seg34AccY201
        linear_combination -r5637
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36899 * rho 36900 = rho 36910 := by linear_combination r5638
    have hd1 : rho 36899 * rho 36899 = rho 36911 := by linear_combination r5639
    have hd2 : rho 36900 * rho 36900 = rho 36912 := by linear_combination r5640
    have hd3 : rho 36913 * (rho 36900 * rho 36900 + rho 36899 * rho 36899 * (-1)) = 2 * (rho 36899 * rho 36900) := by
      rw [hd0, hd1, hd2]
      linear_combination r5641
    have hd4 : rho 36914 * (2 - (rho 36900 * rho 36900 + rho 36899 * rho 36899 * (-1))) = rho 36900 * rho 36900 - rho 36899 * rho 36899 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5642
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX201 rho : Seg34.F), (seg34AccY201 rho : Seg34.F)⟩
      ⟨(rho 36899 : Seg34.F), (rho 36900 : Seg34.F)⟩
      ⟨(rho 36906 : Seg34.F), (rho 36907 : Seg34.F)⟩
      ⟨(seg34AccX202 rho : Seg34.F), (seg34AccY202 rho : Seg34.F)⟩
      ⟨(rho 36913 : Seg34.F), (rho 36914 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung201

theorem seg34_rows202 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5643 rho ∧ Seg34.relationRow5644 rho ∧ Seg34.relationRow5645 rho ∧ Seg34.relationRow5646 rho ∧ Seg34.relationRow5647 rho ∧ Seg34.relationRow5648 rho ∧ Seg34.relationRow5649 rho ∧ Seg34.relationRow5650 rho ∧ Seg34.relationRow5651 rho ∧ Seg34.relationRow5652 rho ∧ Seg34.relationRow5653 rho ∧ Seg34.relationRow5654 rho ∧ Seg34.relationRow5655 rho ∧ Seg34.relationRow5656 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5643, r5644, r5645, r5646, r5647, r5648, r5649, r5650, r5651, r5652, r5653, r5654, r5655, r5656, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5643, r5644, r5645, r5646, r5647, r5648, r5649, r5650, r5651, r5652, r5653, r5654, r5655, r5656⟩

theorem seg34_rung202 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34194 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX202 rho : Seg34.F), (seg34AccY202 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36913 : Seg34.F), (rho 36914 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX202 rho : Seg34.F), (seg34AccY202 rho : Seg34.F)⟩
        ⟨(rho 36913 : Seg34.F), (rho 36914 : Seg34.F)⟩
        ⟨(seg34AccX203 rho : Seg34.F), (seg34AccY203 rho : Seg34.F)⟩
        ⟨(rho 36927 : Seg34.F), (rho 36928 : Seg34.F)⟩ := by
  obtain ⟨r5643, r5644, r5645, r5646, r5647, r5648, r5649, r5650, r5651, r5652, r5653, r5654, r5655, r5656⟩ := seg34_rows202 rho h
  unfold Seg34.relationRow5643 at r5643
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5643
  unfold Seg34.relationRow5644 at r5644
  unfold Seg34.relationRow5645 at r5645
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5645
  unfold Seg34.relationRow5646 at r5646
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5646
  unfold Seg34.relationRow5647 at r5647
  unfold Seg34.relationRow5648 at r5648
  unfold Seg34.relationRow5649 at r5649
  unfold Seg34.relationRow5650 at r5650
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5650
  unfold Seg34.relationRow5651 at r5651
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5651
  unfold Seg34.relationRow5652 at r5652
  unfold Seg34.relationRow5653 at r5653
  unfold Seg34.relationRow5654 at r5654
  unfold Seg34.relationRow5655 at r5655
  unfold Seg34.relationRow5656 at r5656
  have hrung202 (bit : Bool) (hbit : rho 34194 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX202 rho : Seg34.F), (seg34AccY202 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36913 : Seg34.F), (rho 36914 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX202 rho : Seg34.F), (seg34AccY202 rho : Seg34.F)⟩
        ⟨(rho 36913 : Seg34.F), (rho 36914 : Seg34.F)⟩
        ⟨(seg34AccX203 rho : Seg34.F), (seg34AccY203 rho : Seg34.F)⟩
        ⟨(rho 36927 : Seg34.F), (rho 36928 : Seg34.F)⟩ := by
    have hnextx : seg34AccX203 rho = seg34AccX202 rho + rho 36922 := by
      unfold seg34AccX203 seg34AccX202
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 52]
      ring
    have hnexty : seg34AccY203 rho = seg34AccY202 rho + rho 36923 := by
      unfold seg34AccY203 seg34AccY202
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 52]
      ring
    have hsum : seg34AccX202 rho + seg34AccY202 rho = rho 36915 := by
      unfold seg34AccX202 seg34AccY202
      linear_combination r5643
    have ha0 : (rho 36913 + rho 36914) * (seg34AccX202 rho + seg34AccY202 rho) = rho 36916 := by
      rw [hsum]
      linear_combination r5644
    have ha1 : rho 36914 * seg34AccX202 rho = rho 36917 := by
      unfold seg34AccX202
      linear_combination r5645
    have ha2 : rho 36913 * seg34AccY202 rho = rho 36918 := by
      unfold seg34AccY202
      linear_combination r5646
    have ha3 : 3021 * rho 36917 * rho 36918 = rho 36919 := by
      linear_combination r5647
    have ha4 : rho 36920 * (1 + rho 36919) = rho 36917 + rho 36918 := by
      linear_combination r5648
    have ha5 : rho 36921 * (1 - rho 36919) = rho 36916 - rho 36917 - rho 36918 := by
      linear_combination r5649
    have haddx :
        rho 36920 * (1 + 3021 * (rho 36914 * seg34AccX202 rho) * (rho 36913 * seg34AccY202 rho)) =
          rho 36914 * seg34AccX202 rho + rho 36913 * seg34AccY202 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36921 * (1 - 3021 * (rho 36914 * seg34AccX202 rho) * (rho 36913 * seg34AccY202 rho)) =
          (-1) * (rho 36914 * seg34AccX202 rho) - rho 36913 * seg34AccY202 rho +
            (seg34AccY202 rho - seg34AccX202 rho * (-1)) * (rho 36913 + rho 36914) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36921 * (1 - rho 36919) = rho 36916 - rho 36917 - rho 36918 := ha5
        _ = (-1) * rho 36917 - rho 36918 + (seg34AccY202 rho - seg34AccX202 rho * (-1)) * (rho 36913 + rho 36914) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX203 rho = seg34AccX202 rho - Bool.toZMod bit * (seg34AccX202 rho - rho 36920) := by
      have hd : rho 36922 = Bool.toZMod bit * (rho 36920 - seg34AccX202 rho) := by
        rw [← hbit]
        unfold seg34AccX202
        linear_combination -r5650
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY203 rho = seg34AccY202 rho - Bool.toZMod bit * (seg34AccY202 rho - rho 36921) := by
      have hd : rho 36923 = Bool.toZMod bit * (rho 36921 - seg34AccY202 rho) := by
        rw [← hbit]
        unfold seg34AccY202
        linear_combination -r5651
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36913 * rho 36914 = rho 36924 := by linear_combination r5652
    have hd1 : rho 36913 * rho 36913 = rho 36925 := by linear_combination r5653
    have hd2 : rho 36914 * rho 36914 = rho 36926 := by linear_combination r5654
    have hd3 : rho 36927 * (rho 36914 * rho 36914 + rho 36913 * rho 36913 * (-1)) = 2 * (rho 36913 * rho 36914) := by
      rw [hd0, hd1, hd2]
      linear_combination r5655
    have hd4 : rho 36928 * (2 - (rho 36914 * rho 36914 + rho 36913 * rho 36913 * (-1))) = rho 36914 * rho 36914 - rho 36913 * rho 36913 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5656
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX202 rho : Seg34.F), (seg34AccY202 rho : Seg34.F)⟩
      ⟨(rho 36913 : Seg34.F), (rho 36914 : Seg34.F)⟩
      ⟨(rho 36920 : Seg34.F), (rho 36921 : Seg34.F)⟩
      ⟨(seg34AccX203 rho : Seg34.F), (seg34AccY203 rho : Seg34.F)⟩
      ⟨(rho 36927 : Seg34.F), (rho 36928 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung202

theorem seg34_rows203 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5657 rho ∧ Seg34.relationRow5658 rho ∧ Seg34.relationRow5659 rho ∧ Seg34.relationRow5660 rho ∧ Seg34.relationRow5661 rho ∧ Seg34.relationRow5662 rho ∧ Seg34.relationRow5663 rho ∧ Seg34.relationRow5664 rho ∧ Seg34.relationRow5665 rho ∧ Seg34.relationRow5666 rho ∧ Seg34.relationRow5667 rho ∧ Seg34.relationRow5668 rho ∧ Seg34.relationRow5669 rho ∧ Seg34.relationRow5670 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5657, r5658, r5659, r5660, r5661, r5662, r5663, r5664, r5665, r5666, r5667, r5668, r5669, r5670, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5657, r5658, r5659, r5660, r5661, r5662, r5663, r5664, r5665, r5666, r5667, r5668, r5669, r5670⟩

theorem seg34_rung203 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34195 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX203 rho : Seg34.F), (seg34AccY203 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36927 : Seg34.F), (rho 36928 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX203 rho : Seg34.F), (seg34AccY203 rho : Seg34.F)⟩
        ⟨(rho 36927 : Seg34.F), (rho 36928 : Seg34.F)⟩
        ⟨(seg34AccX204 rho : Seg34.F), (seg34AccY204 rho : Seg34.F)⟩
        ⟨(rho 36941 : Seg34.F), (rho 36942 : Seg34.F)⟩ := by
  obtain ⟨r5657, r5658, r5659, r5660, r5661, r5662, r5663, r5664, r5665, r5666, r5667, r5668, r5669, r5670⟩ := seg34_rows203 rho h
  unfold Seg34.relationRow5657 at r5657
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5657
  unfold Seg34.relationRow5658 at r5658
  unfold Seg34.relationRow5659 at r5659
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5659
  unfold Seg34.relationRow5660 at r5660
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5660
  unfold Seg34.relationRow5661 at r5661
  unfold Seg34.relationRow5662 at r5662
  unfold Seg34.relationRow5663 at r5663
  unfold Seg34.relationRow5664 at r5664
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5664
  unfold Seg34.relationRow5665 at r5665
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5665
  unfold Seg34.relationRow5666 at r5666
  unfold Seg34.relationRow5667 at r5667
  unfold Seg34.relationRow5668 at r5668
  unfold Seg34.relationRow5669 at r5669
  unfold Seg34.relationRow5670 at r5670
  have hrung203 (bit : Bool) (hbit : rho 34195 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX203 rho : Seg34.F), (seg34AccY203 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36927 : Seg34.F), (rho 36928 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX203 rho : Seg34.F), (seg34AccY203 rho : Seg34.F)⟩
        ⟨(rho 36927 : Seg34.F), (rho 36928 : Seg34.F)⟩
        ⟨(seg34AccX204 rho : Seg34.F), (seg34AccY204 rho : Seg34.F)⟩
        ⟨(rho 36941 : Seg34.F), (rho 36942 : Seg34.F)⟩ := by
    have hnextx : seg34AccX204 rho = seg34AccX203 rho + rho 36936 := by
      unfold seg34AccX204 seg34AccX203
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 53]
      ring
    have hnexty : seg34AccY204 rho = seg34AccY203 rho + rho 36937 := by
      unfold seg34AccY204 seg34AccY203
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 53]
      ring
    have hsum : seg34AccX203 rho + seg34AccY203 rho = rho 36929 := by
      unfold seg34AccX203 seg34AccY203
      linear_combination r5657
    have ha0 : (rho 36927 + rho 36928) * (seg34AccX203 rho + seg34AccY203 rho) = rho 36930 := by
      rw [hsum]
      linear_combination r5658
    have ha1 : rho 36928 * seg34AccX203 rho = rho 36931 := by
      unfold seg34AccX203
      linear_combination r5659
    have ha2 : rho 36927 * seg34AccY203 rho = rho 36932 := by
      unfold seg34AccY203
      linear_combination r5660
    have ha3 : 3021 * rho 36931 * rho 36932 = rho 36933 := by
      linear_combination r5661
    have ha4 : rho 36934 * (1 + rho 36933) = rho 36931 + rho 36932 := by
      linear_combination r5662
    have ha5 : rho 36935 * (1 - rho 36933) = rho 36930 - rho 36931 - rho 36932 := by
      linear_combination r5663
    have haddx :
        rho 36934 * (1 + 3021 * (rho 36928 * seg34AccX203 rho) * (rho 36927 * seg34AccY203 rho)) =
          rho 36928 * seg34AccX203 rho + rho 36927 * seg34AccY203 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36935 * (1 - 3021 * (rho 36928 * seg34AccX203 rho) * (rho 36927 * seg34AccY203 rho)) =
          (-1) * (rho 36928 * seg34AccX203 rho) - rho 36927 * seg34AccY203 rho +
            (seg34AccY203 rho - seg34AccX203 rho * (-1)) * (rho 36927 + rho 36928) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36935 * (1 - rho 36933) = rho 36930 - rho 36931 - rho 36932 := ha5
        _ = (-1) * rho 36931 - rho 36932 + (seg34AccY203 rho - seg34AccX203 rho * (-1)) * (rho 36927 + rho 36928) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX204 rho = seg34AccX203 rho - Bool.toZMod bit * (seg34AccX203 rho - rho 36934) := by
      have hd : rho 36936 = Bool.toZMod bit * (rho 36934 - seg34AccX203 rho) := by
        rw [← hbit]
        unfold seg34AccX203
        linear_combination -r5664
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY204 rho = seg34AccY203 rho - Bool.toZMod bit * (seg34AccY203 rho - rho 36935) := by
      have hd : rho 36937 = Bool.toZMod bit * (rho 36935 - seg34AccY203 rho) := by
        rw [← hbit]
        unfold seg34AccY203
        linear_combination -r5665
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36927 * rho 36928 = rho 36938 := by linear_combination r5666
    have hd1 : rho 36927 * rho 36927 = rho 36939 := by linear_combination r5667
    have hd2 : rho 36928 * rho 36928 = rho 36940 := by linear_combination r5668
    have hd3 : rho 36941 * (rho 36928 * rho 36928 + rho 36927 * rho 36927 * (-1)) = 2 * (rho 36927 * rho 36928) := by
      rw [hd0, hd1, hd2]
      linear_combination r5669
    have hd4 : rho 36942 * (2 - (rho 36928 * rho 36928 + rho 36927 * rho 36927 * (-1))) = rho 36928 * rho 36928 - rho 36927 * rho 36927 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5670
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX203 rho : Seg34.F), (seg34AccY203 rho : Seg34.F)⟩
      ⟨(rho 36927 : Seg34.F), (rho 36928 : Seg34.F)⟩
      ⟨(rho 36934 : Seg34.F), (rho 36935 : Seg34.F)⟩
      ⟨(seg34AccX204 rho : Seg34.F), (seg34AccY204 rho : Seg34.F)⟩
      ⟨(rho 36941 : Seg34.F), (rho 36942 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung203

theorem seg34_rows204 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5671 rho ∧ Seg34.relationRow5672 rho ∧ Seg34.relationRow5673 rho ∧ Seg34.relationRow5674 rho ∧ Seg34.relationRow5675 rho ∧ Seg34.relationRow5676 rho ∧ Seg34.relationRow5677 rho ∧ Seg34.relationRow5678 rho ∧ Seg34.relationRow5679 rho ∧ Seg34.relationRow5680 rho ∧ Seg34.relationRow5681 rho ∧ Seg34.relationRow5682 rho ∧ Seg34.relationRow5683 rho ∧ Seg34.relationRow5684 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5671, r5672, r5673, r5674, r5675, r5676, r5677, r5678, r5679⟩
  unfold Seg34.relationPart71 at p71
  rcases p71 with ⟨r5680, r5681, r5682, r5683, r5684, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5671, r5672, r5673, r5674, r5675, r5676, r5677, r5678, r5679, r5680, r5681, r5682, r5683, r5684⟩

theorem seg34_rung204 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34196 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX204 rho : Seg34.F), (seg34AccY204 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36941 : Seg34.F), (rho 36942 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX204 rho : Seg34.F), (seg34AccY204 rho : Seg34.F)⟩
        ⟨(rho 36941 : Seg34.F), (rho 36942 : Seg34.F)⟩
        ⟨(seg34AccX205 rho : Seg34.F), (seg34AccY205 rho : Seg34.F)⟩
        ⟨(rho 36955 : Seg34.F), (rho 36956 : Seg34.F)⟩ := by
  obtain ⟨r5671, r5672, r5673, r5674, r5675, r5676, r5677, r5678, r5679, r5680, r5681, r5682, r5683, r5684⟩ := seg34_rows204 rho h
  unfold Seg34.relationRow5671 at r5671
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5671
  unfold Seg34.relationRow5672 at r5672
  unfold Seg34.relationRow5673 at r5673
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5673
  unfold Seg34.relationRow5674 at r5674
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5674
  unfold Seg34.relationRow5675 at r5675
  unfold Seg34.relationRow5676 at r5676
  unfold Seg34.relationRow5677 at r5677
  unfold Seg34.relationRow5678 at r5678
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5678
  unfold Seg34.relationRow5679 at r5679
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5679
  unfold Seg34.relationRow5680 at r5680
  unfold Seg34.relationRow5681 at r5681
  unfold Seg34.relationRow5682 at r5682
  unfold Seg34.relationRow5683 at r5683
  unfold Seg34.relationRow5684 at r5684
  have hrung204 (bit : Bool) (hbit : rho 34196 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX204 rho : Seg34.F), (seg34AccY204 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36941 : Seg34.F), (rho 36942 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX204 rho : Seg34.F), (seg34AccY204 rho : Seg34.F)⟩
        ⟨(rho 36941 : Seg34.F), (rho 36942 : Seg34.F)⟩
        ⟨(seg34AccX205 rho : Seg34.F), (seg34AccY205 rho : Seg34.F)⟩
        ⟨(rho 36955 : Seg34.F), (rho 36956 : Seg34.F)⟩ := by
    have hnextx : seg34AccX205 rho = seg34AccX204 rho + rho 36950 := by
      unfold seg34AccX205 seg34AccX204
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 54]
      ring
    have hnexty : seg34AccY205 rho = seg34AccY204 rho + rho 36951 := by
      unfold seg34AccY205 seg34AccY204
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 54]
      ring
    have hsum : seg34AccX204 rho + seg34AccY204 rho = rho 36943 := by
      unfold seg34AccX204 seg34AccY204
      linear_combination r5671
    have ha0 : (rho 36941 + rho 36942) * (seg34AccX204 rho + seg34AccY204 rho) = rho 36944 := by
      rw [hsum]
      linear_combination r5672
    have ha1 : rho 36942 * seg34AccX204 rho = rho 36945 := by
      unfold seg34AccX204
      linear_combination r5673
    have ha2 : rho 36941 * seg34AccY204 rho = rho 36946 := by
      unfold seg34AccY204
      linear_combination r5674
    have ha3 : 3021 * rho 36945 * rho 36946 = rho 36947 := by
      linear_combination r5675
    have ha4 : rho 36948 * (1 + rho 36947) = rho 36945 + rho 36946 := by
      linear_combination r5676
    have ha5 : rho 36949 * (1 - rho 36947) = rho 36944 - rho 36945 - rho 36946 := by
      linear_combination r5677
    have haddx :
        rho 36948 * (1 + 3021 * (rho 36942 * seg34AccX204 rho) * (rho 36941 * seg34AccY204 rho)) =
          rho 36942 * seg34AccX204 rho + rho 36941 * seg34AccY204 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36949 * (1 - 3021 * (rho 36942 * seg34AccX204 rho) * (rho 36941 * seg34AccY204 rho)) =
          (-1) * (rho 36942 * seg34AccX204 rho) - rho 36941 * seg34AccY204 rho +
            (seg34AccY204 rho - seg34AccX204 rho * (-1)) * (rho 36941 + rho 36942) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36949 * (1 - rho 36947) = rho 36944 - rho 36945 - rho 36946 := ha5
        _ = (-1) * rho 36945 - rho 36946 + (seg34AccY204 rho - seg34AccX204 rho * (-1)) * (rho 36941 + rho 36942) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX205 rho = seg34AccX204 rho - Bool.toZMod bit * (seg34AccX204 rho - rho 36948) := by
      have hd : rho 36950 = Bool.toZMod bit * (rho 36948 - seg34AccX204 rho) := by
        rw [← hbit]
        unfold seg34AccX204
        linear_combination -r5678
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY205 rho = seg34AccY204 rho - Bool.toZMod bit * (seg34AccY204 rho - rho 36949) := by
      have hd : rho 36951 = Bool.toZMod bit * (rho 36949 - seg34AccY204 rho) := by
        rw [← hbit]
        unfold seg34AccY204
        linear_combination -r5679
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36941 * rho 36942 = rho 36952 := by linear_combination r5680
    have hd1 : rho 36941 * rho 36941 = rho 36953 := by linear_combination r5681
    have hd2 : rho 36942 * rho 36942 = rho 36954 := by linear_combination r5682
    have hd3 : rho 36955 * (rho 36942 * rho 36942 + rho 36941 * rho 36941 * (-1)) = 2 * (rho 36941 * rho 36942) := by
      rw [hd0, hd1, hd2]
      linear_combination r5683
    have hd4 : rho 36956 * (2 - (rho 36942 * rho 36942 + rho 36941 * rho 36941 * (-1))) = rho 36942 * rho 36942 - rho 36941 * rho 36941 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5684
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX204 rho : Seg34.F), (seg34AccY204 rho : Seg34.F)⟩
      ⟨(rho 36941 : Seg34.F), (rho 36942 : Seg34.F)⟩
      ⟨(rho 36948 : Seg34.F), (rho 36949 : Seg34.F)⟩
      ⟨(seg34AccX205 rho : Seg34.F), (seg34AccY205 rho : Seg34.F)⟩
      ⟨(rho 36955 : Seg34.F), (rho 36956 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung204

theorem seg34_rows205 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5685 rho ∧ Seg34.relationRow5686 rho ∧ Seg34.relationRow5687 rho ∧ Seg34.relationRow5688 rho ∧ Seg34.relationRow5689 rho ∧ Seg34.relationRow5690 rho ∧ Seg34.relationRow5691 rho ∧ Seg34.relationRow5692 rho ∧ Seg34.relationRow5693 rho ∧ Seg34.relationRow5694 rho ∧ Seg34.relationRow5695 rho ∧ Seg34.relationRow5696 rho ∧ Seg34.relationRow5697 rho ∧ Seg34.relationRow5698 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, r5685, r5686, r5687, r5688, r5689, r5690, r5691, r5692, r5693, r5694, r5695, r5696, r5697, r5698, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5685, r5686, r5687, r5688, r5689, r5690, r5691, r5692, r5693, r5694, r5695, r5696, r5697, r5698⟩

theorem seg34_rung205 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34197 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX205 rho : Seg34.F), (seg34AccY205 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36955 : Seg34.F), (rho 36956 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX205 rho : Seg34.F), (seg34AccY205 rho : Seg34.F)⟩
        ⟨(rho 36955 : Seg34.F), (rho 36956 : Seg34.F)⟩
        ⟨(seg34AccX206 rho : Seg34.F), (seg34AccY206 rho : Seg34.F)⟩
        ⟨(rho 36969 : Seg34.F), (rho 36970 : Seg34.F)⟩ := by
  obtain ⟨r5685, r5686, r5687, r5688, r5689, r5690, r5691, r5692, r5693, r5694, r5695, r5696, r5697, r5698⟩ := seg34_rows205 rho h
  unfold Seg34.relationRow5685 at r5685
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5685
  unfold Seg34.relationRow5686 at r5686
  unfold Seg34.relationRow5687 at r5687
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5687
  unfold Seg34.relationRow5688 at r5688
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5688
  unfold Seg34.relationRow5689 at r5689
  unfold Seg34.relationRow5690 at r5690
  unfold Seg34.relationRow5691 at r5691
  unfold Seg34.relationRow5692 at r5692
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5692
  unfold Seg34.relationRow5693 at r5693
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5693
  unfold Seg34.relationRow5694 at r5694
  unfold Seg34.relationRow5695 at r5695
  unfold Seg34.relationRow5696 at r5696
  unfold Seg34.relationRow5697 at r5697
  unfold Seg34.relationRow5698 at r5698
  have hrung205 (bit : Bool) (hbit : rho 34197 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX205 rho : Seg34.F), (seg34AccY205 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36955 : Seg34.F), (rho 36956 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX205 rho : Seg34.F), (seg34AccY205 rho : Seg34.F)⟩
        ⟨(rho 36955 : Seg34.F), (rho 36956 : Seg34.F)⟩
        ⟨(seg34AccX206 rho : Seg34.F), (seg34AccY206 rho : Seg34.F)⟩
        ⟨(rho 36969 : Seg34.F), (rho 36970 : Seg34.F)⟩ := by
    have hnextx : seg34AccX206 rho = seg34AccX205 rho + rho 36964 := by
      unfold seg34AccX206 seg34AccX205
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 55]
      ring
    have hnexty : seg34AccY206 rho = seg34AccY205 rho + rho 36965 := by
      unfold seg34AccY206 seg34AccY205
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 55]
      ring
    have hsum : seg34AccX205 rho + seg34AccY205 rho = rho 36957 := by
      unfold seg34AccX205 seg34AccY205
      linear_combination r5685
    have ha0 : (rho 36955 + rho 36956) * (seg34AccX205 rho + seg34AccY205 rho) = rho 36958 := by
      rw [hsum]
      linear_combination r5686
    have ha1 : rho 36956 * seg34AccX205 rho = rho 36959 := by
      unfold seg34AccX205
      linear_combination r5687
    have ha2 : rho 36955 * seg34AccY205 rho = rho 36960 := by
      unfold seg34AccY205
      linear_combination r5688
    have ha3 : 3021 * rho 36959 * rho 36960 = rho 36961 := by
      linear_combination r5689
    have ha4 : rho 36962 * (1 + rho 36961) = rho 36959 + rho 36960 := by
      linear_combination r5690
    have ha5 : rho 36963 * (1 - rho 36961) = rho 36958 - rho 36959 - rho 36960 := by
      linear_combination r5691
    have haddx :
        rho 36962 * (1 + 3021 * (rho 36956 * seg34AccX205 rho) * (rho 36955 * seg34AccY205 rho)) =
          rho 36956 * seg34AccX205 rho + rho 36955 * seg34AccY205 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36963 * (1 - 3021 * (rho 36956 * seg34AccX205 rho) * (rho 36955 * seg34AccY205 rho)) =
          (-1) * (rho 36956 * seg34AccX205 rho) - rho 36955 * seg34AccY205 rho +
            (seg34AccY205 rho - seg34AccX205 rho * (-1)) * (rho 36955 + rho 36956) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36963 * (1 - rho 36961) = rho 36958 - rho 36959 - rho 36960 := ha5
        _ = (-1) * rho 36959 - rho 36960 + (seg34AccY205 rho - seg34AccX205 rho * (-1)) * (rho 36955 + rho 36956) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX206 rho = seg34AccX205 rho - Bool.toZMod bit * (seg34AccX205 rho - rho 36962) := by
      have hd : rho 36964 = Bool.toZMod bit * (rho 36962 - seg34AccX205 rho) := by
        rw [← hbit]
        unfold seg34AccX205
        linear_combination -r5692
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY206 rho = seg34AccY205 rho - Bool.toZMod bit * (seg34AccY205 rho - rho 36963) := by
      have hd : rho 36965 = Bool.toZMod bit * (rho 36963 - seg34AccY205 rho) := by
        rw [← hbit]
        unfold seg34AccY205
        linear_combination -r5693
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36955 * rho 36956 = rho 36966 := by linear_combination r5694
    have hd1 : rho 36955 * rho 36955 = rho 36967 := by linear_combination r5695
    have hd2 : rho 36956 * rho 36956 = rho 36968 := by linear_combination r5696
    have hd3 : rho 36969 * (rho 36956 * rho 36956 + rho 36955 * rho 36955 * (-1)) = 2 * (rho 36955 * rho 36956) := by
      rw [hd0, hd1, hd2]
      linear_combination r5697
    have hd4 : rho 36970 * (2 - (rho 36956 * rho 36956 + rho 36955 * rho 36955 * (-1))) = rho 36956 * rho 36956 - rho 36955 * rho 36955 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5698
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX205 rho : Seg34.F), (seg34AccY205 rho : Seg34.F)⟩
      ⟨(rho 36955 : Seg34.F), (rho 36956 : Seg34.F)⟩
      ⟨(rho 36962 : Seg34.F), (rho 36963 : Seg34.F)⟩
      ⟨(seg34AccX206 rho : Seg34.F), (seg34AccY206 rho : Seg34.F)⟩
      ⟨(rho 36969 : Seg34.F), (rho 36970 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung205

theorem seg34_rows206 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5699 rho ∧ Seg34.relationRow5700 rho ∧ Seg34.relationRow5701 rho ∧ Seg34.relationRow5702 rho ∧ Seg34.relationRow5703 rho ∧ Seg34.relationRow5704 rho ∧ Seg34.relationRow5705 rho ∧ Seg34.relationRow5706 rho ∧ Seg34.relationRow5707 rho ∧ Seg34.relationRow5708 rho ∧ Seg34.relationRow5709 rho ∧ Seg34.relationRow5710 rho ∧ Seg34.relationRow5711 rho ∧ Seg34.relationRow5712 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5699, r5700, r5701, r5702, r5703, r5704, r5705, r5706, r5707, r5708, r5709, r5710, r5711, r5712, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5699, r5700, r5701, r5702, r5703, r5704, r5705, r5706, r5707, r5708, r5709, r5710, r5711, r5712⟩

theorem seg34_rung206 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34198 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX206 rho : Seg34.F), (seg34AccY206 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36969 : Seg34.F), (rho 36970 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX206 rho : Seg34.F), (seg34AccY206 rho : Seg34.F)⟩
        ⟨(rho 36969 : Seg34.F), (rho 36970 : Seg34.F)⟩
        ⟨(seg34AccX207 rho : Seg34.F), (seg34AccY207 rho : Seg34.F)⟩
        ⟨(rho 36983 : Seg34.F), (rho 36984 : Seg34.F)⟩ := by
  obtain ⟨r5699, r5700, r5701, r5702, r5703, r5704, r5705, r5706, r5707, r5708, r5709, r5710, r5711, r5712⟩ := seg34_rows206 rho h
  unfold Seg34.relationRow5699 at r5699
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5699
  unfold Seg34.relationRow5700 at r5700
  unfold Seg34.relationRow5701 at r5701
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5701
  unfold Seg34.relationRow5702 at r5702
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5702
  unfold Seg34.relationRow5703 at r5703
  unfold Seg34.relationRow5704 at r5704
  unfold Seg34.relationRow5705 at r5705
  unfold Seg34.relationRow5706 at r5706
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5706
  unfold Seg34.relationRow5707 at r5707
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5707
  unfold Seg34.relationRow5708 at r5708
  unfold Seg34.relationRow5709 at r5709
  unfold Seg34.relationRow5710 at r5710
  unfold Seg34.relationRow5711 at r5711
  unfold Seg34.relationRow5712 at r5712
  have hrung206 (bit : Bool) (hbit : rho 34198 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX206 rho : Seg34.F), (seg34AccY206 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36969 : Seg34.F), (rho 36970 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX206 rho : Seg34.F), (seg34AccY206 rho : Seg34.F)⟩
        ⟨(rho 36969 : Seg34.F), (rho 36970 : Seg34.F)⟩
        ⟨(seg34AccX207 rho : Seg34.F), (seg34AccY207 rho : Seg34.F)⟩
        ⟨(rho 36983 : Seg34.F), (rho 36984 : Seg34.F)⟩ := by
    have hnextx : seg34AccX207 rho = seg34AccX206 rho + rho 36978 := by
      unfold seg34AccX207 seg34AccX206
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 56]
      ring
    have hnexty : seg34AccY207 rho = seg34AccY206 rho + rho 36979 := by
      unfold seg34AccY207 seg34AccY206
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 56]
      ring
    have hsum : seg34AccX206 rho + seg34AccY206 rho = rho 36971 := by
      unfold seg34AccX206 seg34AccY206
      linear_combination r5699
    have ha0 : (rho 36969 + rho 36970) * (seg34AccX206 rho + seg34AccY206 rho) = rho 36972 := by
      rw [hsum]
      linear_combination r5700
    have ha1 : rho 36970 * seg34AccX206 rho = rho 36973 := by
      unfold seg34AccX206
      linear_combination r5701
    have ha2 : rho 36969 * seg34AccY206 rho = rho 36974 := by
      unfold seg34AccY206
      linear_combination r5702
    have ha3 : 3021 * rho 36973 * rho 36974 = rho 36975 := by
      linear_combination r5703
    have ha4 : rho 36976 * (1 + rho 36975) = rho 36973 + rho 36974 := by
      linear_combination r5704
    have ha5 : rho 36977 * (1 - rho 36975) = rho 36972 - rho 36973 - rho 36974 := by
      linear_combination r5705
    have haddx :
        rho 36976 * (1 + 3021 * (rho 36970 * seg34AccX206 rho) * (rho 36969 * seg34AccY206 rho)) =
          rho 36970 * seg34AccX206 rho + rho 36969 * seg34AccY206 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36977 * (1 - 3021 * (rho 36970 * seg34AccX206 rho) * (rho 36969 * seg34AccY206 rho)) =
          (-1) * (rho 36970 * seg34AccX206 rho) - rho 36969 * seg34AccY206 rho +
            (seg34AccY206 rho - seg34AccX206 rho * (-1)) * (rho 36969 + rho 36970) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36977 * (1 - rho 36975) = rho 36972 - rho 36973 - rho 36974 := ha5
        _ = (-1) * rho 36973 - rho 36974 + (seg34AccY206 rho - seg34AccX206 rho * (-1)) * (rho 36969 + rho 36970) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX207 rho = seg34AccX206 rho - Bool.toZMod bit * (seg34AccX206 rho - rho 36976) := by
      have hd : rho 36978 = Bool.toZMod bit * (rho 36976 - seg34AccX206 rho) := by
        rw [← hbit]
        unfold seg34AccX206
        linear_combination -r5706
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY207 rho = seg34AccY206 rho - Bool.toZMod bit * (seg34AccY206 rho - rho 36977) := by
      have hd : rho 36979 = Bool.toZMod bit * (rho 36977 - seg34AccY206 rho) := by
        rw [← hbit]
        unfold seg34AccY206
        linear_combination -r5707
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36969 * rho 36970 = rho 36980 := by linear_combination r5708
    have hd1 : rho 36969 * rho 36969 = rho 36981 := by linear_combination r5709
    have hd2 : rho 36970 * rho 36970 = rho 36982 := by linear_combination r5710
    have hd3 : rho 36983 * (rho 36970 * rho 36970 + rho 36969 * rho 36969 * (-1)) = 2 * (rho 36969 * rho 36970) := by
      rw [hd0, hd1, hd2]
      linear_combination r5711
    have hd4 : rho 36984 * (2 - (rho 36970 * rho 36970 + rho 36969 * rho 36969 * (-1))) = rho 36970 * rho 36970 - rho 36969 * rho 36969 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5712
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX206 rho : Seg34.F), (seg34AccY206 rho : Seg34.F)⟩
      ⟨(rho 36969 : Seg34.F), (rho 36970 : Seg34.F)⟩
      ⟨(rho 36976 : Seg34.F), (rho 36977 : Seg34.F)⟩
      ⟨(seg34AccX207 rho : Seg34.F), (seg34AccY207 rho : Seg34.F)⟩
      ⟨(rho 36983 : Seg34.F), (rho 36984 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung206

theorem seg34_rows207 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5713 rho ∧ Seg34.relationRow5714 rho ∧ Seg34.relationRow5715 rho ∧ Seg34.relationRow5716 rho ∧ Seg34.relationRow5717 rho ∧ Seg34.relationRow5718 rho ∧ Seg34.relationRow5719 rho ∧ Seg34.relationRow5720 rho ∧ Seg34.relationRow5721 rho ∧ Seg34.relationRow5722 rho ∧ Seg34.relationRow5723 rho ∧ Seg34.relationRow5724 rho ∧ Seg34.relationRow5725 rho ∧ Seg34.relationRow5726 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5713, r5714, r5715, r5716, r5717, r5718, r5719, r5720, r5721, r5722, r5723, r5724, r5725, r5726, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5713, r5714, r5715, r5716, r5717, r5718, r5719, r5720, r5721, r5722, r5723, r5724, r5725, r5726⟩

theorem seg34_rung207 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34199 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX207 rho : Seg34.F), (seg34AccY207 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36983 : Seg34.F), (rho 36984 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX207 rho : Seg34.F), (seg34AccY207 rho : Seg34.F)⟩
        ⟨(rho 36983 : Seg34.F), (rho 36984 : Seg34.F)⟩
        ⟨(seg34AccX208 rho : Seg34.F), (seg34AccY208 rho : Seg34.F)⟩
        ⟨(rho 36997 : Seg34.F), (rho 36998 : Seg34.F)⟩ := by
  obtain ⟨r5713, r5714, r5715, r5716, r5717, r5718, r5719, r5720, r5721, r5722, r5723, r5724, r5725, r5726⟩ := seg34_rows207 rho h
  unfold Seg34.relationRow5713 at r5713
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5713
  unfold Seg34.relationRow5714 at r5714
  unfold Seg34.relationRow5715 at r5715
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5715
  unfold Seg34.relationRow5716 at r5716
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5716
  unfold Seg34.relationRow5717 at r5717
  unfold Seg34.relationRow5718 at r5718
  unfold Seg34.relationRow5719 at r5719
  unfold Seg34.relationRow5720 at r5720
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5720
  unfold Seg34.relationRow5721 at r5721
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5721
  unfold Seg34.relationRow5722 at r5722
  unfold Seg34.relationRow5723 at r5723
  unfold Seg34.relationRow5724 at r5724
  unfold Seg34.relationRow5725 at r5725
  unfold Seg34.relationRow5726 at r5726
  have hrung207 (bit : Bool) (hbit : rho 34199 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX207 rho : Seg34.F), (seg34AccY207 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36983 : Seg34.F), (rho 36984 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX207 rho : Seg34.F), (seg34AccY207 rho : Seg34.F)⟩
        ⟨(rho 36983 : Seg34.F), (rho 36984 : Seg34.F)⟩
        ⟨(seg34AccX208 rho : Seg34.F), (seg34AccY208 rho : Seg34.F)⟩
        ⟨(rho 36997 : Seg34.F), (rho 36998 : Seg34.F)⟩ := by
    have hnextx : seg34AccX208 rho = seg34AccX207 rho + rho 36992 := by
      unfold seg34AccX208 seg34AccX207
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 57]
      ring
    have hnexty : seg34AccY208 rho = seg34AccY207 rho + rho 36993 := by
      unfold seg34AccY208 seg34AccY207
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 57]
      ring
    have hsum : seg34AccX207 rho + seg34AccY207 rho = rho 36985 := by
      unfold seg34AccX207 seg34AccY207
      linear_combination r5713
    have ha0 : (rho 36983 + rho 36984) * (seg34AccX207 rho + seg34AccY207 rho) = rho 36986 := by
      rw [hsum]
      linear_combination r5714
    have ha1 : rho 36984 * seg34AccX207 rho = rho 36987 := by
      unfold seg34AccX207
      linear_combination r5715
    have ha2 : rho 36983 * seg34AccY207 rho = rho 36988 := by
      unfold seg34AccY207
      linear_combination r5716
    have ha3 : 3021 * rho 36987 * rho 36988 = rho 36989 := by
      linear_combination r5717
    have ha4 : rho 36990 * (1 + rho 36989) = rho 36987 + rho 36988 := by
      linear_combination r5718
    have ha5 : rho 36991 * (1 - rho 36989) = rho 36986 - rho 36987 - rho 36988 := by
      linear_combination r5719
    have haddx :
        rho 36990 * (1 + 3021 * (rho 36984 * seg34AccX207 rho) * (rho 36983 * seg34AccY207 rho)) =
          rho 36984 * seg34AccX207 rho + rho 36983 * seg34AccY207 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36991 * (1 - 3021 * (rho 36984 * seg34AccX207 rho) * (rho 36983 * seg34AccY207 rho)) =
          (-1) * (rho 36984 * seg34AccX207 rho) - rho 36983 * seg34AccY207 rho +
            (seg34AccY207 rho - seg34AccX207 rho * (-1)) * (rho 36983 + rho 36984) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36991 * (1 - rho 36989) = rho 36986 - rho 36987 - rho 36988 := ha5
        _ = (-1) * rho 36987 - rho 36988 + (seg34AccY207 rho - seg34AccX207 rho * (-1)) * (rho 36983 + rho 36984) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX208 rho = seg34AccX207 rho - Bool.toZMod bit * (seg34AccX207 rho - rho 36990) := by
      have hd : rho 36992 = Bool.toZMod bit * (rho 36990 - seg34AccX207 rho) := by
        rw [← hbit]
        unfold seg34AccX207
        linear_combination -r5720
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY208 rho = seg34AccY207 rho - Bool.toZMod bit * (seg34AccY207 rho - rho 36991) := by
      have hd : rho 36993 = Bool.toZMod bit * (rho 36991 - seg34AccY207 rho) := by
        rw [← hbit]
        unfold seg34AccY207
        linear_combination -r5721
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36983 * rho 36984 = rho 36994 := by linear_combination r5722
    have hd1 : rho 36983 * rho 36983 = rho 36995 := by linear_combination r5723
    have hd2 : rho 36984 * rho 36984 = rho 36996 := by linear_combination r5724
    have hd3 : rho 36997 * (rho 36984 * rho 36984 + rho 36983 * rho 36983 * (-1)) = 2 * (rho 36983 * rho 36984) := by
      rw [hd0, hd1, hd2]
      linear_combination r5725
    have hd4 : rho 36998 * (2 - (rho 36984 * rho 36984 + rho 36983 * rho 36983 * (-1))) = rho 36984 * rho 36984 - rho 36983 * rho 36983 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5726
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX207 rho : Seg34.F), (seg34AccY207 rho : Seg34.F)⟩
      ⟨(rho 36983 : Seg34.F), (rho 36984 : Seg34.F)⟩
      ⟨(rho 36990 : Seg34.F), (rho 36991 : Seg34.F)⟩
      ⟨(seg34AccX208 rho : Seg34.F), (seg34AccY208 rho : Seg34.F)⟩
      ⟨(rho 36997 : Seg34.F), (rho 36998 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung207

theorem seg34_rows208 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5727 rho ∧ Seg34.relationRow5728 rho ∧ Seg34.relationRow5729 rho ∧ Seg34.relationRow5730 rho ∧ Seg34.relationRow5731 rho ∧ Seg34.relationRow5732 rho ∧ Seg34.relationRow5733 rho ∧ Seg34.relationRow5734 rho ∧ Seg34.relationRow5735 rho ∧ Seg34.relationRow5736 rho ∧ Seg34.relationRow5737 rho ∧ Seg34.relationRow5738 rho ∧ Seg34.relationRow5739 rho ∧ Seg34.relationRow5740 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5727, r5728, r5729, r5730, r5731, r5732, r5733, r5734, r5735, r5736, r5737, r5738, r5739, r5740, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5727, r5728, r5729, r5730, r5731, r5732, r5733, r5734, r5735, r5736, r5737, r5738, r5739, r5740⟩

theorem seg34_rung208 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34200 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX208 rho : Seg34.F), (seg34AccY208 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36997 : Seg34.F), (rho 36998 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX208 rho : Seg34.F), (seg34AccY208 rho : Seg34.F)⟩
        ⟨(rho 36997 : Seg34.F), (rho 36998 : Seg34.F)⟩
        ⟨(seg34AccX209 rho : Seg34.F), (seg34AccY209 rho : Seg34.F)⟩
        ⟨(rho 37011 : Seg34.F), (rho 37012 : Seg34.F)⟩ := by
  obtain ⟨r5727, r5728, r5729, r5730, r5731, r5732, r5733, r5734, r5735, r5736, r5737, r5738, r5739, r5740⟩ := seg34_rows208 rho h
  unfold Seg34.relationRow5727 at r5727
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5727
  unfold Seg34.relationRow5728 at r5728
  unfold Seg34.relationRow5729 at r5729
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5729
  unfold Seg34.relationRow5730 at r5730
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5730
  unfold Seg34.relationRow5731 at r5731
  unfold Seg34.relationRow5732 at r5732
  unfold Seg34.relationRow5733 at r5733
  unfold Seg34.relationRow5734 at r5734
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5734
  unfold Seg34.relationRow5735 at r5735
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5735
  unfold Seg34.relationRow5736 at r5736
  unfold Seg34.relationRow5737 at r5737
  unfold Seg34.relationRow5738 at r5738
  unfold Seg34.relationRow5739 at r5739
  unfold Seg34.relationRow5740 at r5740
  have hrung208 (bit : Bool) (hbit : rho 34200 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX208 rho : Seg34.F), (seg34AccY208 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36997 : Seg34.F), (rho 36998 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX208 rho : Seg34.F), (seg34AccY208 rho : Seg34.F)⟩
        ⟨(rho 36997 : Seg34.F), (rho 36998 : Seg34.F)⟩
        ⟨(seg34AccX209 rho : Seg34.F), (seg34AccY209 rho : Seg34.F)⟩
        ⟨(rho 37011 : Seg34.F), (rho 37012 : Seg34.F)⟩ := by
    have hnextx : seg34AccX209 rho = seg34AccX208 rho + rho 37006 := by
      unfold seg34AccX209 seg34AccX208
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 58]
      ring
    have hnexty : seg34AccY209 rho = seg34AccY208 rho + rho 37007 := by
      unfold seg34AccY209 seg34AccY208
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 58]
      ring
    have hsum : seg34AccX208 rho + seg34AccY208 rho = rho 36999 := by
      unfold seg34AccX208 seg34AccY208
      linear_combination r5727
    have ha0 : (rho 36997 + rho 36998) * (seg34AccX208 rho + seg34AccY208 rho) = rho 37000 := by
      rw [hsum]
      linear_combination r5728
    have ha1 : rho 36998 * seg34AccX208 rho = rho 37001 := by
      unfold seg34AccX208
      linear_combination r5729
    have ha2 : rho 36997 * seg34AccY208 rho = rho 37002 := by
      unfold seg34AccY208
      linear_combination r5730
    have ha3 : 3021 * rho 37001 * rho 37002 = rho 37003 := by
      linear_combination r5731
    have ha4 : rho 37004 * (1 + rho 37003) = rho 37001 + rho 37002 := by
      linear_combination r5732
    have ha5 : rho 37005 * (1 - rho 37003) = rho 37000 - rho 37001 - rho 37002 := by
      linear_combination r5733
    have haddx :
        rho 37004 * (1 + 3021 * (rho 36998 * seg34AccX208 rho) * (rho 36997 * seg34AccY208 rho)) =
          rho 36998 * seg34AccX208 rho + rho 36997 * seg34AccY208 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37005 * (1 - 3021 * (rho 36998 * seg34AccX208 rho) * (rho 36997 * seg34AccY208 rho)) =
          (-1) * (rho 36998 * seg34AccX208 rho) - rho 36997 * seg34AccY208 rho +
            (seg34AccY208 rho - seg34AccX208 rho * (-1)) * (rho 36997 + rho 36998) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37005 * (1 - rho 37003) = rho 37000 - rho 37001 - rho 37002 := ha5
        _ = (-1) * rho 37001 - rho 37002 + (seg34AccY208 rho - seg34AccX208 rho * (-1)) * (rho 36997 + rho 36998) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX209 rho = seg34AccX208 rho - Bool.toZMod bit * (seg34AccX208 rho - rho 37004) := by
      have hd : rho 37006 = Bool.toZMod bit * (rho 37004 - seg34AccX208 rho) := by
        rw [← hbit]
        unfold seg34AccX208
        linear_combination -r5734
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY209 rho = seg34AccY208 rho - Bool.toZMod bit * (seg34AccY208 rho - rho 37005) := by
      have hd : rho 37007 = Bool.toZMod bit * (rho 37005 - seg34AccY208 rho) := by
        rw [← hbit]
        unfold seg34AccY208
        linear_combination -r5735
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36997 * rho 36998 = rho 37008 := by linear_combination r5736
    have hd1 : rho 36997 * rho 36997 = rho 37009 := by linear_combination r5737
    have hd2 : rho 36998 * rho 36998 = rho 37010 := by linear_combination r5738
    have hd3 : rho 37011 * (rho 36998 * rho 36998 + rho 36997 * rho 36997 * (-1)) = 2 * (rho 36997 * rho 36998) := by
      rw [hd0, hd1, hd2]
      linear_combination r5739
    have hd4 : rho 37012 * (2 - (rho 36998 * rho 36998 + rho 36997 * rho 36997 * (-1))) = rho 36998 * rho 36998 - rho 36997 * rho 36997 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5740
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX208 rho : Seg34.F), (seg34AccY208 rho : Seg34.F)⟩
      ⟨(rho 36997 : Seg34.F), (rho 36998 : Seg34.F)⟩
      ⟨(rho 37004 : Seg34.F), (rho 37005 : Seg34.F)⟩
      ⟨(seg34AccX209 rho : Seg34.F), (seg34AccY209 rho : Seg34.F)⟩
      ⟨(rho 37011 : Seg34.F), (rho 37012 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung208

theorem seg34_hstep_c18 (rho : Nat -> Seg34.F) (h : Seg34.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (33992 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 198 ≤ i → i < 209 →
      EdwardsBridge.onCurve (seg34LadderAccState rho i) →
      EdwardsBridge.onCurve (seg34LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg34LadderAccState rho i) (seg34LadderCurState rho i)
        (seg34LadderAccState rho (i + 1)) (seg34LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg34_rung198 rho h bits[198]! (hbitAt 198 (by omega)) hacc hcur
  · exact seg34_rung199 rho h bits[199]! (hbitAt 199 (by omega)) hacc hcur
  · exact seg34_rung200 rho h bits[200]! (hbitAt 200 (by omega)) hacc hcur
  · exact seg34_rung201 rho h bits[201]! (hbitAt 201 (by omega)) hacc hcur
  · exact seg34_rung202 rho h bits[202]! (hbitAt 202 (by omega)) hacc hcur
  · exact seg34_rung203 rho h bits[203]! (hbitAt 203 (by omega)) hacc hcur
  · exact seg34_rung204 rho h bits[204]! (hbitAt 204 (by omega)) hacc hcur
  · exact seg34_rung205 rho h bits[205]! (hbitAt 205 (by omega)) hacc hcur
  · exact seg34_rung206 rho h bits[206]! (hbitAt 206 (by omega)) hacc hcur
  · exact seg34_rung207 rho h bits[207]! (hbitAt 207 (by omega)) hacc hcur
  · exact seg34_rung208 rho h bits[208]! (hbitAt 208 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
