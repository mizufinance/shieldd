import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48Out0_rows22 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4765 rho ∧ Seg48.relationRow4766 rho ∧ Seg48.relationRow4767 rho ∧ Seg48.relationRow4768 rho ∧ Seg48.relationRow4769 rho ∧ Seg48.relationRow4770 rho ∧ Seg48.relationRow4771 rho ∧ Seg48.relationRow4772 rho ∧ Seg48.relationRow4773 rho ∧ Seg48.relationRow4774 rho ∧ Seg48.relationRow4775 rho ∧ Seg48.relationRow4776 rho ∧ Seg48.relationRow4777 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p59,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart59 at p59

  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4765, r4766, r4767, r4768, r4769, r4770, r4771, r4772, r4773, r4774, r4775, r4776, r4777, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4765, r4766, r4767, r4768, r4769, r4770, r4771, r4772, r4773, r4774, r4775, r4776, r4777⟩

theorem seg48Out0_rung22 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37136 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX22 rho, seg48Out0AccY22 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37520, rho 37521⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX22 rho, seg48Out0AccY22 rho⟩ ⟨rho 37520, rho 37521⟩
        ⟨seg48Out0AccX23 rho, seg48Out0AccY23 rho⟩ ⟨rho 37533, rho 37534⟩ := by
  obtain ⟨r4765, r4766, r4767, r4768, r4769, r4770, r4771, r4772, r4773, r4774, r4775, r4776, r4777⟩ := seg48Out0_rows22 rho h
  unfold Seg48.relationRow4765 at r4765

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4765

  unfold Seg48.relationRow4766 at r4766

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4766

  unfold Seg48.relationRow4767 at r4767

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4767

  unfold Seg48.relationRow4768 at r4768

  unfold Seg48.relationRow4769 at r4769

  unfold Seg48.relationRow4770 at r4770

  unfold Seg48.relationRow4771 at r4771

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4771

  unfold Seg48.relationRow4772 at r4772

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4772

  unfold Seg48.relationRow4773 at r4773

  unfold Seg48.relationRow4774 at r4774

  unfold Seg48.relationRow4775 at r4775

  unfold Seg48.relationRow4776 at r4776

  unfold Seg48.relationRow4777 at r4777

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX23 rho = seg48Out0AccX22 rho + rho 37528 := by
    unfold seg48Out0AccX23 seg48Out0AccX22
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 22]

    ring

  have hnexty : seg48Out0AccY23 rho = seg48Out0AccY22 rho + rho 37529 := by
    unfold seg48Out0AccY23 seg48Out0AccY22
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 22]

    ring

  have ha0 : (rho 37520 + rho 37521) * (seg48Out0AccX22 rho + seg48Out0AccY22 rho) = rho 37522 := by
    unfold seg48Out0AccX22 seg48Out0AccY22
    linear_combination r4765
  have ha1 : rho 37521 * seg48Out0AccX22 rho = rho 37523 := by
    unfold seg48Out0AccX22
    linear_combination r4766
  have ha2 : rho 37520 * seg48Out0AccY22 rho = rho 37524 := by
    unfold seg48Out0AccY22
    linear_combination r4767
  have ha3 : 3021 * rho 37523 * rho 37524 = rho 37525 := by
    linear_combination r4768
  have ha4 : rho 37526 * (1 + rho 37525) = rho 37523 + rho 37524 := by
    linear_combination r4769
  have ha5 : rho 37527 * (1 - rho 37525) = rho 37522 - rho 37523 - rho 37524 := by
    linear_combination r4770
  have haddx :
      rho 37526 * (1 + 3021 * (rho 37521 * seg48Out0AccX22 rho) * (rho 37520 * seg48Out0AccY22 rho)) =
        rho 37521 * seg48Out0AccX22 rho + rho 37520 * seg48Out0AccY22 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37527 * (1 - 3021 * (rho 37521 * seg48Out0AccX22 rho) * (rho 37520 * seg48Out0AccY22 rho)) =
        (-1) * (rho 37521 * seg48Out0AccX22 rho) - rho 37520 * seg48Out0AccY22 rho +
          (seg48Out0AccY22 rho - seg48Out0AccX22 rho * (-1)) * (rho 37520 + rho 37521) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37527 * (1 - rho 37525) = rho 37522 - rho 37523 - rho 37524 := ha5
      _ = (-1) * rho 37523 - rho 37524 + (seg48Out0AccY22 rho - seg48Out0AccX22 rho * (-1)) *
          (rho 37520 + rho 37521) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX23 rho = seg48Out0AccX22 rho - Bool.toZMod bit * (seg48Out0AccX22 rho - rho 37526) := by
    have hd : rho 37528 = Bool.toZMod bit * (rho 37526 - seg48Out0AccX22 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX22
      linear_combination -r4771
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY23 rho = seg48Out0AccY22 rho - Bool.toZMod bit * (seg48Out0AccY22 rho - rho 37527) := by
    have hd : rho 37529 = Bool.toZMod bit * (rho 37527 - seg48Out0AccY22 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY22
      linear_combination -r4772
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37520 * rho 37521 = rho 37530 := by linear_combination r4773
  have hd1 : rho 37520 * rho 37520 = rho 37531 := by linear_combination r4774
  have hd2 : rho 37521 * rho 37521 = rho 37532 := by linear_combination r4775
  have hd3 : rho 37533 * (rho 37521 * rho 37521 + rho 37520 * rho 37520 * (-1)) =
      2 * (rho 37520 * rho 37521) := by
    rw [hd0, hd1, hd2]
    linear_combination r4776
  have hd4 : rho 37534 * (2 - (rho 37521 * rho 37521 + rho 37520 * rho 37520 * (-1))) =
      rho 37521 * rho 37521 - rho 37520 * rho 37520 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4777
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX22 rho, seg48Out0AccY22 rho⟩ ⟨rho 37520, rho 37521⟩
    ⟨rho 37526, rho 37527⟩ ⟨seg48Out0AccX23 rho, seg48Out0AccY23 rho⟩ ⟨rho 37533, rho 37534⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows23 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4778 rho ∧ Seg48.relationRow4779 rho ∧ Seg48.relationRow4780 rho ∧ Seg48.relationRow4781 rho ∧ Seg48.relationRow4782 rho ∧ Seg48.relationRow4783 rho ∧ Seg48.relationRow4784 rho ∧ Seg48.relationRow4785 rho ∧ Seg48.relationRow4786 rho ∧ Seg48.relationRow4787 rho ∧ Seg48.relationRow4788 rho ∧ Seg48.relationRow4789 rho ∧ Seg48.relationRow4790 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p59,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart59 at p59

  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4778, r4779, r4780, r4781, r4782, r4783, r4784, r4785, r4786, r4787, r4788, r4789, r4790, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4778, r4779, r4780, r4781, r4782, r4783, r4784, r4785, r4786, r4787, r4788, r4789, r4790⟩

theorem seg48Out0_rung23 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37137 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX23 rho, seg48Out0AccY23 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37533, rho 37534⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX23 rho, seg48Out0AccY23 rho⟩ ⟨rho 37533, rho 37534⟩
        ⟨seg48Out0AccX24 rho, seg48Out0AccY24 rho⟩ ⟨rho 37546, rho 37547⟩ := by
  obtain ⟨r4778, r4779, r4780, r4781, r4782, r4783, r4784, r4785, r4786, r4787, r4788, r4789, r4790⟩ := seg48Out0_rows23 rho h
  unfold Seg48.relationRow4778 at r4778

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4778

  unfold Seg48.relationRow4779 at r4779

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4779

  unfold Seg48.relationRow4780 at r4780

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4780

  unfold Seg48.relationRow4781 at r4781

  unfold Seg48.relationRow4782 at r4782

  unfold Seg48.relationRow4783 at r4783

  unfold Seg48.relationRow4784 at r4784

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4784

  unfold Seg48.relationRow4785 at r4785

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4785

  unfold Seg48.relationRow4786 at r4786

  unfold Seg48.relationRow4787 at r4787

  unfold Seg48.relationRow4788 at r4788

  unfold Seg48.relationRow4789 at r4789

  unfold Seg48.relationRow4790 at r4790

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX24 rho = seg48Out0AccX23 rho + rho 37541 := by
    unfold seg48Out0AccX24 seg48Out0AccX23
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 23]

    ring

  have hnexty : seg48Out0AccY24 rho = seg48Out0AccY23 rho + rho 37542 := by
    unfold seg48Out0AccY24 seg48Out0AccY23
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 23]

    ring

  have ha0 : (rho 37533 + rho 37534) * (seg48Out0AccX23 rho + seg48Out0AccY23 rho) = rho 37535 := by
    unfold seg48Out0AccX23 seg48Out0AccY23
    linear_combination r4778
  have ha1 : rho 37534 * seg48Out0AccX23 rho = rho 37536 := by
    unfold seg48Out0AccX23
    linear_combination r4779
  have ha2 : rho 37533 * seg48Out0AccY23 rho = rho 37537 := by
    unfold seg48Out0AccY23
    linear_combination r4780
  have ha3 : 3021 * rho 37536 * rho 37537 = rho 37538 := by
    linear_combination r4781
  have ha4 : rho 37539 * (1 + rho 37538) = rho 37536 + rho 37537 := by
    linear_combination r4782
  have ha5 : rho 37540 * (1 - rho 37538) = rho 37535 - rho 37536 - rho 37537 := by
    linear_combination r4783
  have haddx :
      rho 37539 * (1 + 3021 * (rho 37534 * seg48Out0AccX23 rho) * (rho 37533 * seg48Out0AccY23 rho)) =
        rho 37534 * seg48Out0AccX23 rho + rho 37533 * seg48Out0AccY23 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37540 * (1 - 3021 * (rho 37534 * seg48Out0AccX23 rho) * (rho 37533 * seg48Out0AccY23 rho)) =
        (-1) * (rho 37534 * seg48Out0AccX23 rho) - rho 37533 * seg48Out0AccY23 rho +
          (seg48Out0AccY23 rho - seg48Out0AccX23 rho * (-1)) * (rho 37533 + rho 37534) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37540 * (1 - rho 37538) = rho 37535 - rho 37536 - rho 37537 := ha5
      _ = (-1) * rho 37536 - rho 37537 + (seg48Out0AccY23 rho - seg48Out0AccX23 rho * (-1)) *
          (rho 37533 + rho 37534) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX24 rho = seg48Out0AccX23 rho - Bool.toZMod bit * (seg48Out0AccX23 rho - rho 37539) := by
    have hd : rho 37541 = Bool.toZMod bit * (rho 37539 - seg48Out0AccX23 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX23
      linear_combination -r4784
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY24 rho = seg48Out0AccY23 rho - Bool.toZMod bit * (seg48Out0AccY23 rho - rho 37540) := by
    have hd : rho 37542 = Bool.toZMod bit * (rho 37540 - seg48Out0AccY23 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY23
      linear_combination -r4785
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37533 * rho 37534 = rho 37543 := by linear_combination r4786
  have hd1 : rho 37533 * rho 37533 = rho 37544 := by linear_combination r4787
  have hd2 : rho 37534 * rho 37534 = rho 37545 := by linear_combination r4788
  have hd3 : rho 37546 * (rho 37534 * rho 37534 + rho 37533 * rho 37533 * (-1)) =
      2 * (rho 37533 * rho 37534) := by
    rw [hd0, hd1, hd2]
    linear_combination r4789
  have hd4 : rho 37547 * (2 - (rho 37534 * rho 37534 + rho 37533 * rho 37533 * (-1))) =
      rho 37534 * rho 37534 - rho 37533 * rho 37533 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4790
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX23 rho, seg48Out0AccY23 rho⟩ ⟨rho 37533, rho 37534⟩
    ⟨rho 37539, rho 37540⟩ ⟨seg48Out0AccX24 rho, seg48Out0AccY24 rho⟩ ⟨rho 37546, rho 37547⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows24 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4791 rho ∧ Seg48.relationRow4792 rho ∧ Seg48.relationRow4793 rho ∧ Seg48.relationRow4794 rho ∧ Seg48.relationRow4795 rho ∧ Seg48.relationRow4796 rho ∧ Seg48.relationRow4797 rho ∧ Seg48.relationRow4798 rho ∧ Seg48.relationRow4799 rho ∧ Seg48.relationRow4800 rho ∧ Seg48.relationRow4801 rho ∧ Seg48.relationRow4802 rho ∧ Seg48.relationRow4803 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p59,

    p60, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart59 at p59

  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4791, r4792, r4793, r4794, r4795, r4796, r4797, r4798, r4799⟩

  unfold Seg48.relationPart60 at p60

  rcases p60 with ⟨r4800, r4801, r4802, r4803, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4791, r4792, r4793, r4794, r4795, r4796, r4797, r4798, r4799, r4800, r4801, r4802, r4803⟩

theorem seg48Out0_rung24 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37138 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX24 rho, seg48Out0AccY24 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37546, rho 37547⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX24 rho, seg48Out0AccY24 rho⟩ ⟨rho 37546, rho 37547⟩
        ⟨seg48Out0AccX25 rho, seg48Out0AccY25 rho⟩ ⟨rho 37559, rho 37560⟩ := by
  obtain ⟨r4791, r4792, r4793, r4794, r4795, r4796, r4797, r4798, r4799, r4800, r4801, r4802, r4803⟩ := seg48Out0_rows24 rho h
  unfold Seg48.relationRow4791 at r4791

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4791

  unfold Seg48.relationRow4792 at r4792

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4792

  unfold Seg48.relationRow4793 at r4793

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4793

  unfold Seg48.relationRow4794 at r4794

  unfold Seg48.relationRow4795 at r4795

  unfold Seg48.relationRow4796 at r4796

  unfold Seg48.relationRow4797 at r4797

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4797

  unfold Seg48.relationRow4798 at r4798

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4798

  unfold Seg48.relationRow4799 at r4799

  unfold Seg48.relationRow4800 at r4800

  unfold Seg48.relationRow4801 at r4801

  unfold Seg48.relationRow4802 at r4802

  unfold Seg48.relationRow4803 at r4803

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX25 rho = seg48Out0AccX24 rho + rho 37554 := by
    unfold seg48Out0AccX25 seg48Out0AccX24
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 24]

    ring

  have hnexty : seg48Out0AccY25 rho = seg48Out0AccY24 rho + rho 37555 := by
    unfold seg48Out0AccY25 seg48Out0AccY24
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 24]

    ring

  have ha0 : (rho 37546 + rho 37547) * (seg48Out0AccX24 rho + seg48Out0AccY24 rho) = rho 37548 := by
    unfold seg48Out0AccX24 seg48Out0AccY24
    linear_combination r4791
  have ha1 : rho 37547 * seg48Out0AccX24 rho = rho 37549 := by
    unfold seg48Out0AccX24
    linear_combination r4792
  have ha2 : rho 37546 * seg48Out0AccY24 rho = rho 37550 := by
    unfold seg48Out0AccY24
    linear_combination r4793
  have ha3 : 3021 * rho 37549 * rho 37550 = rho 37551 := by
    linear_combination r4794
  have ha4 : rho 37552 * (1 + rho 37551) = rho 37549 + rho 37550 := by
    linear_combination r4795
  have ha5 : rho 37553 * (1 - rho 37551) = rho 37548 - rho 37549 - rho 37550 := by
    linear_combination r4796
  have haddx :
      rho 37552 * (1 + 3021 * (rho 37547 * seg48Out0AccX24 rho) * (rho 37546 * seg48Out0AccY24 rho)) =
        rho 37547 * seg48Out0AccX24 rho + rho 37546 * seg48Out0AccY24 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37553 * (1 - 3021 * (rho 37547 * seg48Out0AccX24 rho) * (rho 37546 * seg48Out0AccY24 rho)) =
        (-1) * (rho 37547 * seg48Out0AccX24 rho) - rho 37546 * seg48Out0AccY24 rho +
          (seg48Out0AccY24 rho - seg48Out0AccX24 rho * (-1)) * (rho 37546 + rho 37547) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37553 * (1 - rho 37551) = rho 37548 - rho 37549 - rho 37550 := ha5
      _ = (-1) * rho 37549 - rho 37550 + (seg48Out0AccY24 rho - seg48Out0AccX24 rho * (-1)) *
          (rho 37546 + rho 37547) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX25 rho = seg48Out0AccX24 rho - Bool.toZMod bit * (seg48Out0AccX24 rho - rho 37552) := by
    have hd : rho 37554 = Bool.toZMod bit * (rho 37552 - seg48Out0AccX24 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX24
      linear_combination -r4797
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY25 rho = seg48Out0AccY24 rho - Bool.toZMod bit * (seg48Out0AccY24 rho - rho 37553) := by
    have hd : rho 37555 = Bool.toZMod bit * (rho 37553 - seg48Out0AccY24 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY24
      linear_combination -r4798
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37546 * rho 37547 = rho 37556 := by linear_combination r4799
  have hd1 : rho 37546 * rho 37546 = rho 37557 := by linear_combination r4800
  have hd2 : rho 37547 * rho 37547 = rho 37558 := by linear_combination r4801
  have hd3 : rho 37559 * (rho 37547 * rho 37547 + rho 37546 * rho 37546 * (-1)) =
      2 * (rho 37546 * rho 37547) := by
    rw [hd0, hd1, hd2]
    linear_combination r4802
  have hd4 : rho 37560 * (2 - (rho 37547 * rho 37547 + rho 37546 * rho 37546 * (-1))) =
      rho 37547 * rho 37547 - rho 37546 * rho 37546 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4803
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX24 rho, seg48Out0AccY24 rho⟩ ⟨rho 37546, rho 37547⟩
    ⟨rho 37552, rho 37553⟩ ⟨seg48Out0AccX25 rho, seg48Out0AccY25 rho⟩ ⟨rho 37559, rho 37560⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows25 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4804 rho ∧ Seg48.relationRow4805 rho ∧ Seg48.relationRow4806 rho ∧ Seg48.relationRow4807 rho ∧ Seg48.relationRow4808 rho ∧ Seg48.relationRow4809 rho ∧ Seg48.relationRow4810 rho ∧ Seg48.relationRow4811 rho ∧ Seg48.relationRow4812 rho ∧ Seg48.relationRow4813 rho ∧ Seg48.relationRow4814 rho ∧ Seg48.relationRow4815 rho ∧ Seg48.relationRow4816 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p60, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart60 at p60

  rcases p60 with ⟨_, _, _, _, r4804, r4805, r4806, r4807, r4808, r4809, r4810, r4811, r4812, r4813, r4814, r4815, r4816, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4804, r4805, r4806, r4807, r4808, r4809, r4810, r4811, r4812, r4813, r4814, r4815, r4816⟩

theorem seg48Out0_rung25 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37139 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX25 rho, seg48Out0AccY25 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37559, rho 37560⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX25 rho, seg48Out0AccY25 rho⟩ ⟨rho 37559, rho 37560⟩
        ⟨seg48Out0AccX26 rho, seg48Out0AccY26 rho⟩ ⟨rho 37572, rho 37573⟩ := by
  obtain ⟨r4804, r4805, r4806, r4807, r4808, r4809, r4810, r4811, r4812, r4813, r4814, r4815, r4816⟩ := seg48Out0_rows25 rho h
  unfold Seg48.relationRow4804 at r4804

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4804

  unfold Seg48.relationRow4805 at r4805

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4805

  unfold Seg48.relationRow4806 at r4806

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4806

  unfold Seg48.relationRow4807 at r4807

  unfold Seg48.relationRow4808 at r4808

  unfold Seg48.relationRow4809 at r4809

  unfold Seg48.relationRow4810 at r4810

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4810

  unfold Seg48.relationRow4811 at r4811

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4811

  unfold Seg48.relationRow4812 at r4812

  unfold Seg48.relationRow4813 at r4813

  unfold Seg48.relationRow4814 at r4814

  unfold Seg48.relationRow4815 at r4815

  unfold Seg48.relationRow4816 at r4816

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX26 rho = seg48Out0AccX25 rho + rho 37567 := by
    unfold seg48Out0AccX26 seg48Out0AccX25
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 25]

    ring

  have hnexty : seg48Out0AccY26 rho = seg48Out0AccY25 rho + rho 37568 := by
    unfold seg48Out0AccY26 seg48Out0AccY25
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 25]

    ring

  have ha0 : (rho 37559 + rho 37560) * (seg48Out0AccX25 rho + seg48Out0AccY25 rho) = rho 37561 := by
    unfold seg48Out0AccX25 seg48Out0AccY25
    linear_combination r4804
  have ha1 : rho 37560 * seg48Out0AccX25 rho = rho 37562 := by
    unfold seg48Out0AccX25
    linear_combination r4805
  have ha2 : rho 37559 * seg48Out0AccY25 rho = rho 37563 := by
    unfold seg48Out0AccY25
    linear_combination r4806
  have ha3 : 3021 * rho 37562 * rho 37563 = rho 37564 := by
    linear_combination r4807
  have ha4 : rho 37565 * (1 + rho 37564) = rho 37562 + rho 37563 := by
    linear_combination r4808
  have ha5 : rho 37566 * (1 - rho 37564) = rho 37561 - rho 37562 - rho 37563 := by
    linear_combination r4809
  have haddx :
      rho 37565 * (1 + 3021 * (rho 37560 * seg48Out0AccX25 rho) * (rho 37559 * seg48Out0AccY25 rho)) =
        rho 37560 * seg48Out0AccX25 rho + rho 37559 * seg48Out0AccY25 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37566 * (1 - 3021 * (rho 37560 * seg48Out0AccX25 rho) * (rho 37559 * seg48Out0AccY25 rho)) =
        (-1) * (rho 37560 * seg48Out0AccX25 rho) - rho 37559 * seg48Out0AccY25 rho +
          (seg48Out0AccY25 rho - seg48Out0AccX25 rho * (-1)) * (rho 37559 + rho 37560) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37566 * (1 - rho 37564) = rho 37561 - rho 37562 - rho 37563 := ha5
      _ = (-1) * rho 37562 - rho 37563 + (seg48Out0AccY25 rho - seg48Out0AccX25 rho * (-1)) *
          (rho 37559 + rho 37560) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX26 rho = seg48Out0AccX25 rho - Bool.toZMod bit * (seg48Out0AccX25 rho - rho 37565) := by
    have hd : rho 37567 = Bool.toZMod bit * (rho 37565 - seg48Out0AccX25 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX25
      linear_combination -r4810
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY26 rho = seg48Out0AccY25 rho - Bool.toZMod bit * (seg48Out0AccY25 rho - rho 37566) := by
    have hd : rho 37568 = Bool.toZMod bit * (rho 37566 - seg48Out0AccY25 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY25
      linear_combination -r4811
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37559 * rho 37560 = rho 37569 := by linear_combination r4812
  have hd1 : rho 37559 * rho 37559 = rho 37570 := by linear_combination r4813
  have hd2 : rho 37560 * rho 37560 = rho 37571 := by linear_combination r4814
  have hd3 : rho 37572 * (rho 37560 * rho 37560 + rho 37559 * rho 37559 * (-1)) =
      2 * (rho 37559 * rho 37560) := by
    rw [hd0, hd1, hd2]
    linear_combination r4815
  have hd4 : rho 37573 * (2 - (rho 37560 * rho 37560 + rho 37559 * rho 37559 * (-1))) =
      rho 37560 * rho 37560 - rho 37559 * rho 37559 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4816
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX25 rho, seg48Out0AccY25 rho⟩ ⟨rho 37559, rho 37560⟩
    ⟨rho 37565, rho 37566⟩ ⟨seg48Out0AccX26 rho, seg48Out0AccY26 rho⟩ ⟨rho 37572, rho 37573⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows26 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4817 rho ∧ Seg48.relationRow4818 rho ∧ Seg48.relationRow4819 rho ∧ Seg48.relationRow4820 rho ∧ Seg48.relationRow4821 rho ∧ Seg48.relationRow4822 rho ∧ Seg48.relationRow4823 rho ∧ Seg48.relationRow4824 rho ∧ Seg48.relationRow4825 rho ∧ Seg48.relationRow4826 rho ∧ Seg48.relationRow4827 rho ∧ Seg48.relationRow4828 rho ∧ Seg48.relationRow4829 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p60, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart60 at p60

  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4817, r4818, r4819, r4820, r4821, r4822, r4823, r4824, r4825, r4826, r4827, r4828, r4829, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4817, r4818, r4819, r4820, r4821, r4822, r4823, r4824, r4825, r4826, r4827, r4828, r4829⟩

theorem seg48Out0_rung26 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37140 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX26 rho, seg48Out0AccY26 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37572, rho 37573⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX26 rho, seg48Out0AccY26 rho⟩ ⟨rho 37572, rho 37573⟩
        ⟨seg48Out0AccX27 rho, seg48Out0AccY27 rho⟩ ⟨rho 37585, rho 37586⟩ := by
  obtain ⟨r4817, r4818, r4819, r4820, r4821, r4822, r4823, r4824, r4825, r4826, r4827, r4828, r4829⟩ := seg48Out0_rows26 rho h
  unfold Seg48.relationRow4817 at r4817

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4817

  unfold Seg48.relationRow4818 at r4818

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4818

  unfold Seg48.relationRow4819 at r4819

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4819

  unfold Seg48.relationRow4820 at r4820

  unfold Seg48.relationRow4821 at r4821

  unfold Seg48.relationRow4822 at r4822

  unfold Seg48.relationRow4823 at r4823

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4823

  unfold Seg48.relationRow4824 at r4824

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4824

  unfold Seg48.relationRow4825 at r4825

  unfold Seg48.relationRow4826 at r4826

  unfold Seg48.relationRow4827 at r4827

  unfold Seg48.relationRow4828 at r4828

  unfold Seg48.relationRow4829 at r4829

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX27 rho = seg48Out0AccX26 rho + rho 37580 := by
    unfold seg48Out0AccX27 seg48Out0AccX26
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 26]

    ring

  have hnexty : seg48Out0AccY27 rho = seg48Out0AccY26 rho + rho 37581 := by
    unfold seg48Out0AccY27 seg48Out0AccY26
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 26]

    ring

  have ha0 : (rho 37572 + rho 37573) * (seg48Out0AccX26 rho + seg48Out0AccY26 rho) = rho 37574 := by
    unfold seg48Out0AccX26 seg48Out0AccY26
    linear_combination r4817
  have ha1 : rho 37573 * seg48Out0AccX26 rho = rho 37575 := by
    unfold seg48Out0AccX26
    linear_combination r4818
  have ha2 : rho 37572 * seg48Out0AccY26 rho = rho 37576 := by
    unfold seg48Out0AccY26
    linear_combination r4819
  have ha3 : 3021 * rho 37575 * rho 37576 = rho 37577 := by
    linear_combination r4820
  have ha4 : rho 37578 * (1 + rho 37577) = rho 37575 + rho 37576 := by
    linear_combination r4821
  have ha5 : rho 37579 * (1 - rho 37577) = rho 37574 - rho 37575 - rho 37576 := by
    linear_combination r4822
  have haddx :
      rho 37578 * (1 + 3021 * (rho 37573 * seg48Out0AccX26 rho) * (rho 37572 * seg48Out0AccY26 rho)) =
        rho 37573 * seg48Out0AccX26 rho + rho 37572 * seg48Out0AccY26 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37579 * (1 - 3021 * (rho 37573 * seg48Out0AccX26 rho) * (rho 37572 * seg48Out0AccY26 rho)) =
        (-1) * (rho 37573 * seg48Out0AccX26 rho) - rho 37572 * seg48Out0AccY26 rho +
          (seg48Out0AccY26 rho - seg48Out0AccX26 rho * (-1)) * (rho 37572 + rho 37573) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37579 * (1 - rho 37577) = rho 37574 - rho 37575 - rho 37576 := ha5
      _ = (-1) * rho 37575 - rho 37576 + (seg48Out0AccY26 rho - seg48Out0AccX26 rho * (-1)) *
          (rho 37572 + rho 37573) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX27 rho = seg48Out0AccX26 rho - Bool.toZMod bit * (seg48Out0AccX26 rho - rho 37578) := by
    have hd : rho 37580 = Bool.toZMod bit * (rho 37578 - seg48Out0AccX26 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX26
      linear_combination -r4823
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY27 rho = seg48Out0AccY26 rho - Bool.toZMod bit * (seg48Out0AccY26 rho - rho 37579) := by
    have hd : rho 37581 = Bool.toZMod bit * (rho 37579 - seg48Out0AccY26 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY26
      linear_combination -r4824
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37572 * rho 37573 = rho 37582 := by linear_combination r4825
  have hd1 : rho 37572 * rho 37572 = rho 37583 := by linear_combination r4826
  have hd2 : rho 37573 * rho 37573 = rho 37584 := by linear_combination r4827
  have hd3 : rho 37585 * (rho 37573 * rho 37573 + rho 37572 * rho 37572 * (-1)) =
      2 * (rho 37572 * rho 37573) := by
    rw [hd0, hd1, hd2]
    linear_combination r4828
  have hd4 : rho 37586 * (2 - (rho 37573 * rho 37573 + rho 37572 * rho 37572 * (-1))) =
      rho 37573 * rho 37573 - rho 37572 * rho 37572 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4829
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX26 rho, seg48Out0AccY26 rho⟩ ⟨rho 37572, rho 37573⟩
    ⟨rho 37578, rho 37579⟩ ⟨seg48Out0AccX27 rho, seg48Out0AccY27 rho⟩ ⟨rho 37585, rho 37586⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows27 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4830 rho ∧ Seg48.relationRow4831 rho ∧ Seg48.relationRow4832 rho ∧ Seg48.relationRow4833 rho ∧ Seg48.relationRow4834 rho ∧ Seg48.relationRow4835 rho ∧ Seg48.relationRow4836 rho ∧ Seg48.relationRow4837 rho ∧ Seg48.relationRow4838 rho ∧ Seg48.relationRow4839 rho ∧ Seg48.relationRow4840 rho ∧ Seg48.relationRow4841 rho ∧ Seg48.relationRow4842 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p60, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart60 at p60

  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4830, r4831, r4832, r4833, r4834, r4835, r4836, r4837, r4838, r4839, r4840, r4841, r4842, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4830, r4831, r4832, r4833, r4834, r4835, r4836, r4837, r4838, r4839, r4840, r4841, r4842⟩

theorem seg48Out0_rung27 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37141 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX27 rho, seg48Out0AccY27 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37585, rho 37586⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX27 rho, seg48Out0AccY27 rho⟩ ⟨rho 37585, rho 37586⟩
        ⟨seg48Out0AccX28 rho, seg48Out0AccY28 rho⟩ ⟨rho 37598, rho 37599⟩ := by
  obtain ⟨r4830, r4831, r4832, r4833, r4834, r4835, r4836, r4837, r4838, r4839, r4840, r4841, r4842⟩ := seg48Out0_rows27 rho h
  unfold Seg48.relationRow4830 at r4830

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4830

  unfold Seg48.relationRow4831 at r4831

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4831

  unfold Seg48.relationRow4832 at r4832

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4832

  unfold Seg48.relationRow4833 at r4833

  unfold Seg48.relationRow4834 at r4834

  unfold Seg48.relationRow4835 at r4835

  unfold Seg48.relationRow4836 at r4836

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4836

  unfold Seg48.relationRow4837 at r4837

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4837

  unfold Seg48.relationRow4838 at r4838

  unfold Seg48.relationRow4839 at r4839

  unfold Seg48.relationRow4840 at r4840

  unfold Seg48.relationRow4841 at r4841

  unfold Seg48.relationRow4842 at r4842

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX28 rho = seg48Out0AccX27 rho + rho 37593 := by
    unfold seg48Out0AccX28 seg48Out0AccX27
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 27]

    ring

  have hnexty : seg48Out0AccY28 rho = seg48Out0AccY27 rho + rho 37594 := by
    unfold seg48Out0AccY28 seg48Out0AccY27
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 27]

    ring

  have ha0 : (rho 37585 + rho 37586) * (seg48Out0AccX27 rho + seg48Out0AccY27 rho) = rho 37587 := by
    unfold seg48Out0AccX27 seg48Out0AccY27
    linear_combination r4830
  have ha1 : rho 37586 * seg48Out0AccX27 rho = rho 37588 := by
    unfold seg48Out0AccX27
    linear_combination r4831
  have ha2 : rho 37585 * seg48Out0AccY27 rho = rho 37589 := by
    unfold seg48Out0AccY27
    linear_combination r4832
  have ha3 : 3021 * rho 37588 * rho 37589 = rho 37590 := by
    linear_combination r4833
  have ha4 : rho 37591 * (1 + rho 37590) = rho 37588 + rho 37589 := by
    linear_combination r4834
  have ha5 : rho 37592 * (1 - rho 37590) = rho 37587 - rho 37588 - rho 37589 := by
    linear_combination r4835
  have haddx :
      rho 37591 * (1 + 3021 * (rho 37586 * seg48Out0AccX27 rho) * (rho 37585 * seg48Out0AccY27 rho)) =
        rho 37586 * seg48Out0AccX27 rho + rho 37585 * seg48Out0AccY27 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37592 * (1 - 3021 * (rho 37586 * seg48Out0AccX27 rho) * (rho 37585 * seg48Out0AccY27 rho)) =
        (-1) * (rho 37586 * seg48Out0AccX27 rho) - rho 37585 * seg48Out0AccY27 rho +
          (seg48Out0AccY27 rho - seg48Out0AccX27 rho * (-1)) * (rho 37585 + rho 37586) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37592 * (1 - rho 37590) = rho 37587 - rho 37588 - rho 37589 := ha5
      _ = (-1) * rho 37588 - rho 37589 + (seg48Out0AccY27 rho - seg48Out0AccX27 rho * (-1)) *
          (rho 37585 + rho 37586) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX28 rho = seg48Out0AccX27 rho - Bool.toZMod bit * (seg48Out0AccX27 rho - rho 37591) := by
    have hd : rho 37593 = Bool.toZMod bit * (rho 37591 - seg48Out0AccX27 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX27
      linear_combination -r4836
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY28 rho = seg48Out0AccY27 rho - Bool.toZMod bit * (seg48Out0AccY27 rho - rho 37592) := by
    have hd : rho 37594 = Bool.toZMod bit * (rho 37592 - seg48Out0AccY27 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY27
      linear_combination -r4837
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37585 * rho 37586 = rho 37595 := by linear_combination r4838
  have hd1 : rho 37585 * rho 37585 = rho 37596 := by linear_combination r4839
  have hd2 : rho 37586 * rho 37586 = rho 37597 := by linear_combination r4840
  have hd3 : rho 37598 * (rho 37586 * rho 37586 + rho 37585 * rho 37585 * (-1)) =
      2 * (rho 37585 * rho 37586) := by
    rw [hd0, hd1, hd2]
    linear_combination r4841
  have hd4 : rho 37599 * (2 - (rho 37586 * rho 37586 + rho 37585 * rho 37585 * (-1))) =
      rho 37586 * rho 37586 - rho 37585 * rho 37585 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4842
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX27 rho, seg48Out0AccY27 rho⟩ ⟨rho 37585, rho 37586⟩
    ⟨rho 37591, rho 37592⟩ ⟨seg48Out0AccX28 rho, seg48Out0AccY28 rho⟩ ⟨rho 37598, rho 37599⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows28 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4843 rho ∧ Seg48.relationRow4844 rho ∧ Seg48.relationRow4845 rho ∧ Seg48.relationRow4846 rho ∧ Seg48.relationRow4847 rho ∧ Seg48.relationRow4848 rho ∧ Seg48.relationRow4849 rho ∧ Seg48.relationRow4850 rho ∧ Seg48.relationRow4851 rho ∧ Seg48.relationRow4852 rho ∧ Seg48.relationRow4853 rho ∧ Seg48.relationRow4854 rho ∧ Seg48.relationRow4855 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p60, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart60 at p60

  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4843, r4844, r4845, r4846, r4847, r4848, r4849, r4850, r4851, r4852, r4853, r4854, r4855, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4843, r4844, r4845, r4846, r4847, r4848, r4849, r4850, r4851, r4852, r4853, r4854, r4855⟩

theorem seg48Out0_rung28 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37142 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX28 rho, seg48Out0AccY28 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37598, rho 37599⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX28 rho, seg48Out0AccY28 rho⟩ ⟨rho 37598, rho 37599⟩
        ⟨seg48Out0AccX29 rho, seg48Out0AccY29 rho⟩ ⟨rho 37611, rho 37612⟩ := by
  obtain ⟨r4843, r4844, r4845, r4846, r4847, r4848, r4849, r4850, r4851, r4852, r4853, r4854, r4855⟩ := seg48Out0_rows28 rho h
  unfold Seg48.relationRow4843 at r4843

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4843

  unfold Seg48.relationRow4844 at r4844

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4844

  unfold Seg48.relationRow4845 at r4845

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4845

  unfold Seg48.relationRow4846 at r4846

  unfold Seg48.relationRow4847 at r4847

  unfold Seg48.relationRow4848 at r4848

  unfold Seg48.relationRow4849 at r4849

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4849

  unfold Seg48.relationRow4850 at r4850

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4850

  unfold Seg48.relationRow4851 at r4851

  unfold Seg48.relationRow4852 at r4852

  unfold Seg48.relationRow4853 at r4853

  unfold Seg48.relationRow4854 at r4854

  unfold Seg48.relationRow4855 at r4855

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX29 rho = seg48Out0AccX28 rho + rho 37606 := by
    unfold seg48Out0AccX29 seg48Out0AccX28
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 28]

    ring

  have hnexty : seg48Out0AccY29 rho = seg48Out0AccY28 rho + rho 37607 := by
    unfold seg48Out0AccY29 seg48Out0AccY28
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 28]

    ring

  have ha0 : (rho 37598 + rho 37599) * (seg48Out0AccX28 rho + seg48Out0AccY28 rho) = rho 37600 := by
    unfold seg48Out0AccX28 seg48Out0AccY28
    linear_combination r4843
  have ha1 : rho 37599 * seg48Out0AccX28 rho = rho 37601 := by
    unfold seg48Out0AccX28
    linear_combination r4844
  have ha2 : rho 37598 * seg48Out0AccY28 rho = rho 37602 := by
    unfold seg48Out0AccY28
    linear_combination r4845
  have ha3 : 3021 * rho 37601 * rho 37602 = rho 37603 := by
    linear_combination r4846
  have ha4 : rho 37604 * (1 + rho 37603) = rho 37601 + rho 37602 := by
    linear_combination r4847
  have ha5 : rho 37605 * (1 - rho 37603) = rho 37600 - rho 37601 - rho 37602 := by
    linear_combination r4848
  have haddx :
      rho 37604 * (1 + 3021 * (rho 37599 * seg48Out0AccX28 rho) * (rho 37598 * seg48Out0AccY28 rho)) =
        rho 37599 * seg48Out0AccX28 rho + rho 37598 * seg48Out0AccY28 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37605 * (1 - 3021 * (rho 37599 * seg48Out0AccX28 rho) * (rho 37598 * seg48Out0AccY28 rho)) =
        (-1) * (rho 37599 * seg48Out0AccX28 rho) - rho 37598 * seg48Out0AccY28 rho +
          (seg48Out0AccY28 rho - seg48Out0AccX28 rho * (-1)) * (rho 37598 + rho 37599) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37605 * (1 - rho 37603) = rho 37600 - rho 37601 - rho 37602 := ha5
      _ = (-1) * rho 37601 - rho 37602 + (seg48Out0AccY28 rho - seg48Out0AccX28 rho * (-1)) *
          (rho 37598 + rho 37599) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX29 rho = seg48Out0AccX28 rho - Bool.toZMod bit * (seg48Out0AccX28 rho - rho 37604) := by
    have hd : rho 37606 = Bool.toZMod bit * (rho 37604 - seg48Out0AccX28 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX28
      linear_combination -r4849
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY29 rho = seg48Out0AccY28 rho - Bool.toZMod bit * (seg48Out0AccY28 rho - rho 37605) := by
    have hd : rho 37607 = Bool.toZMod bit * (rho 37605 - seg48Out0AccY28 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY28
      linear_combination -r4850
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37598 * rho 37599 = rho 37608 := by linear_combination r4851
  have hd1 : rho 37598 * rho 37598 = rho 37609 := by linear_combination r4852
  have hd2 : rho 37599 * rho 37599 = rho 37610 := by linear_combination r4853
  have hd3 : rho 37611 * (rho 37599 * rho 37599 + rho 37598 * rho 37598 * (-1)) =
      2 * (rho 37598 * rho 37599) := by
    rw [hd0, hd1, hd2]
    linear_combination r4854
  have hd4 : rho 37612 * (2 - (rho 37599 * rho 37599 + rho 37598 * rho 37598 * (-1))) =
      rho 37599 * rho 37599 - rho 37598 * rho 37598 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4855
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX28 rho, seg48Out0AccY28 rho⟩ ⟨rho 37598, rho 37599⟩
    ⟨rho 37604, rho 37605⟩ ⟨seg48Out0AccX29 rho, seg48Out0AccY29 rho⟩ ⟨rho 37611, rho 37612⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows29 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4856 rho ∧ Seg48.relationRow4857 rho ∧ Seg48.relationRow4858 rho ∧ Seg48.relationRow4859 rho ∧ Seg48.relationRow4860 rho ∧ Seg48.relationRow4861 rho ∧ Seg48.relationRow4862 rho ∧ Seg48.relationRow4863 rho ∧ Seg48.relationRow4864 rho ∧ Seg48.relationRow4865 rho ∧ Seg48.relationRow4866 rho ∧ Seg48.relationRow4867 rho ∧ Seg48.relationRow4868 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p60, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart60 at p60

  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4856, r4857, r4858, r4859, r4860, r4861, r4862, r4863, r4864, r4865, r4866, r4867, r4868, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4856, r4857, r4858, r4859, r4860, r4861, r4862, r4863, r4864, r4865, r4866, r4867, r4868⟩

theorem seg48Out0_rung29 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37143 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX29 rho, seg48Out0AccY29 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37611, rho 37612⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX29 rho, seg48Out0AccY29 rho⟩ ⟨rho 37611, rho 37612⟩
        ⟨seg48Out0AccX30 rho, seg48Out0AccY30 rho⟩ ⟨rho 37624, rho 37625⟩ := by
  obtain ⟨r4856, r4857, r4858, r4859, r4860, r4861, r4862, r4863, r4864, r4865, r4866, r4867, r4868⟩ := seg48Out0_rows29 rho h
  unfold Seg48.relationRow4856 at r4856

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4856

  unfold Seg48.relationRow4857 at r4857

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4857

  unfold Seg48.relationRow4858 at r4858

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4858

  unfold Seg48.relationRow4859 at r4859

  unfold Seg48.relationRow4860 at r4860

  unfold Seg48.relationRow4861 at r4861

  unfold Seg48.relationRow4862 at r4862

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4862

  unfold Seg48.relationRow4863 at r4863

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4863

  unfold Seg48.relationRow4864 at r4864

  unfold Seg48.relationRow4865 at r4865

  unfold Seg48.relationRow4866 at r4866

  unfold Seg48.relationRow4867 at r4867

  unfold Seg48.relationRow4868 at r4868

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX30 rho = seg48Out0AccX29 rho + rho 37619 := by
    unfold seg48Out0AccX30 seg48Out0AccX29
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 29]

    ring

  have hnexty : seg48Out0AccY30 rho = seg48Out0AccY29 rho + rho 37620 := by
    unfold seg48Out0AccY30 seg48Out0AccY29
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 29]

    ring

  have ha0 : (rho 37611 + rho 37612) * (seg48Out0AccX29 rho + seg48Out0AccY29 rho) = rho 37613 := by
    unfold seg48Out0AccX29 seg48Out0AccY29
    linear_combination r4856
  have ha1 : rho 37612 * seg48Out0AccX29 rho = rho 37614 := by
    unfold seg48Out0AccX29
    linear_combination r4857
  have ha2 : rho 37611 * seg48Out0AccY29 rho = rho 37615 := by
    unfold seg48Out0AccY29
    linear_combination r4858
  have ha3 : 3021 * rho 37614 * rho 37615 = rho 37616 := by
    linear_combination r4859
  have ha4 : rho 37617 * (1 + rho 37616) = rho 37614 + rho 37615 := by
    linear_combination r4860
  have ha5 : rho 37618 * (1 - rho 37616) = rho 37613 - rho 37614 - rho 37615 := by
    linear_combination r4861
  have haddx :
      rho 37617 * (1 + 3021 * (rho 37612 * seg48Out0AccX29 rho) * (rho 37611 * seg48Out0AccY29 rho)) =
        rho 37612 * seg48Out0AccX29 rho + rho 37611 * seg48Out0AccY29 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37618 * (1 - 3021 * (rho 37612 * seg48Out0AccX29 rho) * (rho 37611 * seg48Out0AccY29 rho)) =
        (-1) * (rho 37612 * seg48Out0AccX29 rho) - rho 37611 * seg48Out0AccY29 rho +
          (seg48Out0AccY29 rho - seg48Out0AccX29 rho * (-1)) * (rho 37611 + rho 37612) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37618 * (1 - rho 37616) = rho 37613 - rho 37614 - rho 37615 := ha5
      _ = (-1) * rho 37614 - rho 37615 + (seg48Out0AccY29 rho - seg48Out0AccX29 rho * (-1)) *
          (rho 37611 + rho 37612) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX30 rho = seg48Out0AccX29 rho - Bool.toZMod bit * (seg48Out0AccX29 rho - rho 37617) := by
    have hd : rho 37619 = Bool.toZMod bit * (rho 37617 - seg48Out0AccX29 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX29
      linear_combination -r4862
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY30 rho = seg48Out0AccY29 rho - Bool.toZMod bit * (seg48Out0AccY29 rho - rho 37618) := by
    have hd : rho 37620 = Bool.toZMod bit * (rho 37618 - seg48Out0AccY29 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY29
      linear_combination -r4863
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37611 * rho 37612 = rho 37621 := by linear_combination r4864
  have hd1 : rho 37611 * rho 37611 = rho 37622 := by linear_combination r4865
  have hd2 : rho 37612 * rho 37612 = rho 37623 := by linear_combination r4866
  have hd3 : rho 37624 * (rho 37612 * rho 37612 + rho 37611 * rho 37611 * (-1)) =
      2 * (rho 37611 * rho 37612) := by
    rw [hd0, hd1, hd2]
    linear_combination r4867
  have hd4 : rho 37625 * (2 - (rho 37612 * rho 37612 + rho 37611 * rho 37611 * (-1))) =
      rho 37612 * rho 37612 - rho 37611 * rho 37611 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4868
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX29 rho, seg48Out0AccY29 rho⟩ ⟨rho 37611, rho 37612⟩
    ⟨rho 37617, rho 37618⟩ ⟨seg48Out0AccX30 rho, seg48Out0AccY30 rho⟩ ⟨rho 37624, rho 37625⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows30 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4869 rho ∧ Seg48.relationRow4870 rho ∧ Seg48.relationRow4871 rho ∧ Seg48.relationRow4872 rho ∧ Seg48.relationRow4873 rho ∧ Seg48.relationRow4874 rho ∧ Seg48.relationRow4875 rho ∧ Seg48.relationRow4876 rho ∧ Seg48.relationRow4877 rho ∧ Seg48.relationRow4878 rho ∧ Seg48.relationRow4879 rho ∧ Seg48.relationRow4880 rho ∧ Seg48.relationRow4881 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p60, p61, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart60 at p60

  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4869, r4870, r4871, r4872, r4873, r4874, r4875, r4876, r4877, r4878, r4879⟩

  unfold Seg48.relationPart61 at p61

  rcases p61 with ⟨r4880, r4881, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4869, r4870, r4871, r4872, r4873, r4874, r4875, r4876, r4877, r4878, r4879, r4880, r4881⟩

theorem seg48Out0_rung30 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37144 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX30 rho, seg48Out0AccY30 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37624, rho 37625⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX30 rho, seg48Out0AccY30 rho⟩ ⟨rho 37624, rho 37625⟩
        ⟨seg48Out0AccX31 rho, seg48Out0AccY31 rho⟩ ⟨rho 37637, rho 37638⟩ := by
  obtain ⟨r4869, r4870, r4871, r4872, r4873, r4874, r4875, r4876, r4877, r4878, r4879, r4880, r4881⟩ := seg48Out0_rows30 rho h
  unfold Seg48.relationRow4869 at r4869

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4869

  unfold Seg48.relationRow4870 at r4870

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4870

  unfold Seg48.relationRow4871 at r4871

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4871

  unfold Seg48.relationRow4872 at r4872

  unfold Seg48.relationRow4873 at r4873

  unfold Seg48.relationRow4874 at r4874

  unfold Seg48.relationRow4875 at r4875

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4875

  unfold Seg48.relationRow4876 at r4876

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4876

  unfold Seg48.relationRow4877 at r4877

  unfold Seg48.relationRow4878 at r4878

  unfold Seg48.relationRow4879 at r4879

  unfold Seg48.relationRow4880 at r4880

  unfold Seg48.relationRow4881 at r4881

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX31 rho = seg48Out0AccX30 rho + rho 37632 := by
    unfold seg48Out0AccX31 seg48Out0AccX30
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 30]

    ring

  have hnexty : seg48Out0AccY31 rho = seg48Out0AccY30 rho + rho 37633 := by
    unfold seg48Out0AccY31 seg48Out0AccY30
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 30]

    ring

  have ha0 : (rho 37624 + rho 37625) * (seg48Out0AccX30 rho + seg48Out0AccY30 rho) = rho 37626 := by
    unfold seg48Out0AccX30 seg48Out0AccY30
    linear_combination r4869
  have ha1 : rho 37625 * seg48Out0AccX30 rho = rho 37627 := by
    unfold seg48Out0AccX30
    linear_combination r4870
  have ha2 : rho 37624 * seg48Out0AccY30 rho = rho 37628 := by
    unfold seg48Out0AccY30
    linear_combination r4871
  have ha3 : 3021 * rho 37627 * rho 37628 = rho 37629 := by
    linear_combination r4872
  have ha4 : rho 37630 * (1 + rho 37629) = rho 37627 + rho 37628 := by
    linear_combination r4873
  have ha5 : rho 37631 * (1 - rho 37629) = rho 37626 - rho 37627 - rho 37628 := by
    linear_combination r4874
  have haddx :
      rho 37630 * (1 + 3021 * (rho 37625 * seg48Out0AccX30 rho) * (rho 37624 * seg48Out0AccY30 rho)) =
        rho 37625 * seg48Out0AccX30 rho + rho 37624 * seg48Out0AccY30 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37631 * (1 - 3021 * (rho 37625 * seg48Out0AccX30 rho) * (rho 37624 * seg48Out0AccY30 rho)) =
        (-1) * (rho 37625 * seg48Out0AccX30 rho) - rho 37624 * seg48Out0AccY30 rho +
          (seg48Out0AccY30 rho - seg48Out0AccX30 rho * (-1)) * (rho 37624 + rho 37625) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37631 * (1 - rho 37629) = rho 37626 - rho 37627 - rho 37628 := ha5
      _ = (-1) * rho 37627 - rho 37628 + (seg48Out0AccY30 rho - seg48Out0AccX30 rho * (-1)) *
          (rho 37624 + rho 37625) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX31 rho = seg48Out0AccX30 rho - Bool.toZMod bit * (seg48Out0AccX30 rho - rho 37630) := by
    have hd : rho 37632 = Bool.toZMod bit * (rho 37630 - seg48Out0AccX30 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX30
      linear_combination -r4875
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY31 rho = seg48Out0AccY30 rho - Bool.toZMod bit * (seg48Out0AccY30 rho - rho 37631) := by
    have hd : rho 37633 = Bool.toZMod bit * (rho 37631 - seg48Out0AccY30 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY30
      linear_combination -r4876
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37624 * rho 37625 = rho 37634 := by linear_combination r4877
  have hd1 : rho 37624 * rho 37624 = rho 37635 := by linear_combination r4878
  have hd2 : rho 37625 * rho 37625 = rho 37636 := by linear_combination r4879
  have hd3 : rho 37637 * (rho 37625 * rho 37625 + rho 37624 * rho 37624 * (-1)) =
      2 * (rho 37624 * rho 37625) := by
    rw [hd0, hd1, hd2]
    linear_combination r4880
  have hd4 : rho 37638 * (2 - (rho 37625 * rho 37625 + rho 37624 * rho 37624 * (-1))) =
      rho 37625 * rho 37625 - rho 37624 * rho 37624 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4881
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX30 rho, seg48Out0AccY30 rho⟩ ⟨rho 37624, rho 37625⟩
    ⟨rho 37630, rho 37631⟩ ⟨seg48Out0AccX31 rho, seg48Out0AccY31 rho⟩ ⟨rho 37637, rho 37638⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows31 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4882 rho ∧ Seg48.relationRow4883 rho ∧ Seg48.relationRow4884 rho ∧ Seg48.relationRow4885 rho ∧ Seg48.relationRow4886 rho ∧ Seg48.relationRow4887 rho ∧ Seg48.relationRow4888 rho ∧ Seg48.relationRow4889 rho ∧ Seg48.relationRow4890 rho ∧ Seg48.relationRow4891 rho ∧ Seg48.relationRow4892 rho ∧ Seg48.relationRow4893 rho ∧ Seg48.relationRow4894 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p61, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart61 at p61

  rcases p61 with ⟨_, _, r4882, r4883, r4884, r4885, r4886, r4887, r4888, r4889, r4890, r4891, r4892, r4893, r4894, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4882, r4883, r4884, r4885, r4886, r4887, r4888, r4889, r4890, r4891, r4892, r4893, r4894⟩

theorem seg48Out0_rung31 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37145 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX31 rho, seg48Out0AccY31 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37637, rho 37638⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX31 rho, seg48Out0AccY31 rho⟩ ⟨rho 37637, rho 37638⟩
        ⟨seg48Out0AccX32 rho, seg48Out0AccY32 rho⟩ ⟨rho 37650, rho 37651⟩ := by
  obtain ⟨r4882, r4883, r4884, r4885, r4886, r4887, r4888, r4889, r4890, r4891, r4892, r4893, r4894⟩ := seg48Out0_rows31 rho h
  unfold Seg48.relationRow4882 at r4882

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4882

  unfold Seg48.relationRow4883 at r4883

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4883

  unfold Seg48.relationRow4884 at r4884

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4884

  unfold Seg48.relationRow4885 at r4885

  unfold Seg48.relationRow4886 at r4886

  unfold Seg48.relationRow4887 at r4887

  unfold Seg48.relationRow4888 at r4888

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4888

  unfold Seg48.relationRow4889 at r4889

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4889

  unfold Seg48.relationRow4890 at r4890

  unfold Seg48.relationRow4891 at r4891

  unfold Seg48.relationRow4892 at r4892

  unfold Seg48.relationRow4893 at r4893

  unfold Seg48.relationRow4894 at r4894

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX32 rho = seg48Out0AccX31 rho + rho 37645 := by
    unfold seg48Out0AccX32 seg48Out0AccX31
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 31]

    ring

  have hnexty : seg48Out0AccY32 rho = seg48Out0AccY31 rho + rho 37646 := by
    unfold seg48Out0AccY32 seg48Out0AccY31
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 31]

    ring

  have ha0 : (rho 37637 + rho 37638) * (seg48Out0AccX31 rho + seg48Out0AccY31 rho) = rho 37639 := by
    unfold seg48Out0AccX31 seg48Out0AccY31
    linear_combination r4882
  have ha1 : rho 37638 * seg48Out0AccX31 rho = rho 37640 := by
    unfold seg48Out0AccX31
    linear_combination r4883
  have ha2 : rho 37637 * seg48Out0AccY31 rho = rho 37641 := by
    unfold seg48Out0AccY31
    linear_combination r4884
  have ha3 : 3021 * rho 37640 * rho 37641 = rho 37642 := by
    linear_combination r4885
  have ha4 : rho 37643 * (1 + rho 37642) = rho 37640 + rho 37641 := by
    linear_combination r4886
  have ha5 : rho 37644 * (1 - rho 37642) = rho 37639 - rho 37640 - rho 37641 := by
    linear_combination r4887
  have haddx :
      rho 37643 * (1 + 3021 * (rho 37638 * seg48Out0AccX31 rho) * (rho 37637 * seg48Out0AccY31 rho)) =
        rho 37638 * seg48Out0AccX31 rho + rho 37637 * seg48Out0AccY31 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37644 * (1 - 3021 * (rho 37638 * seg48Out0AccX31 rho) * (rho 37637 * seg48Out0AccY31 rho)) =
        (-1) * (rho 37638 * seg48Out0AccX31 rho) - rho 37637 * seg48Out0AccY31 rho +
          (seg48Out0AccY31 rho - seg48Out0AccX31 rho * (-1)) * (rho 37637 + rho 37638) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37644 * (1 - rho 37642) = rho 37639 - rho 37640 - rho 37641 := ha5
      _ = (-1) * rho 37640 - rho 37641 + (seg48Out0AccY31 rho - seg48Out0AccX31 rho * (-1)) *
          (rho 37637 + rho 37638) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX32 rho = seg48Out0AccX31 rho - Bool.toZMod bit * (seg48Out0AccX31 rho - rho 37643) := by
    have hd : rho 37645 = Bool.toZMod bit * (rho 37643 - seg48Out0AccX31 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX31
      linear_combination -r4888
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY32 rho = seg48Out0AccY31 rho - Bool.toZMod bit * (seg48Out0AccY31 rho - rho 37644) := by
    have hd : rho 37646 = Bool.toZMod bit * (rho 37644 - seg48Out0AccY31 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY31
      linear_combination -r4889
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37637 * rho 37638 = rho 37647 := by linear_combination r4890
  have hd1 : rho 37637 * rho 37637 = rho 37648 := by linear_combination r4891
  have hd2 : rho 37638 * rho 37638 = rho 37649 := by linear_combination r4892
  have hd3 : rho 37650 * (rho 37638 * rho 37638 + rho 37637 * rho 37637 * (-1)) =
      2 * (rho 37637 * rho 37638) := by
    rw [hd0, hd1, hd2]
    linear_combination r4893
  have hd4 : rho 37651 * (2 - (rho 37638 * rho 37638 + rho 37637 * rho 37637 * (-1))) =
      rho 37638 * rho 37638 - rho 37637 * rho 37637 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4894
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX31 rho, seg48Out0AccY31 rho⟩ ⟨rho 37637, rho 37638⟩
    ⟨rho 37643, rho 37644⟩ ⟨seg48Out0AccX32 rho, seg48Out0AccY32 rho⟩ ⟨rho 37650, rho 37651⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows32 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4895 rho ∧ Seg48.relationRow4896 rho ∧ Seg48.relationRow4897 rho ∧ Seg48.relationRow4898 rho ∧ Seg48.relationRow4899 rho ∧ Seg48.relationRow4900 rho ∧ Seg48.relationRow4901 rho ∧ Seg48.relationRow4902 rho ∧ Seg48.relationRow4903 rho ∧ Seg48.relationRow4904 rho ∧ Seg48.relationRow4905 rho ∧ Seg48.relationRow4906 rho ∧ Seg48.relationRow4907 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p61, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart61 at p61

  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4895, r4896, r4897, r4898, r4899, r4900, r4901, r4902, r4903, r4904, r4905, r4906, r4907, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4895, r4896, r4897, r4898, r4899, r4900, r4901, r4902, r4903, r4904, r4905, r4906, r4907⟩

theorem seg48Out0_rung32 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37146 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX32 rho, seg48Out0AccY32 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37650, rho 37651⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX32 rho, seg48Out0AccY32 rho⟩ ⟨rho 37650, rho 37651⟩
        ⟨seg48Out0AccX33 rho, seg48Out0AccY33 rho⟩ ⟨rho 37663, rho 37664⟩ := by
  obtain ⟨r4895, r4896, r4897, r4898, r4899, r4900, r4901, r4902, r4903, r4904, r4905, r4906, r4907⟩ := seg48Out0_rows32 rho h
  unfold Seg48.relationRow4895 at r4895

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4895

  unfold Seg48.relationRow4896 at r4896

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4896

  unfold Seg48.relationRow4897 at r4897

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4897

  unfold Seg48.relationRow4898 at r4898

  unfold Seg48.relationRow4899 at r4899

  unfold Seg48.relationRow4900 at r4900

  unfold Seg48.relationRow4901 at r4901

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4901

  unfold Seg48.relationRow4902 at r4902

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4902

  unfold Seg48.relationRow4903 at r4903

  unfold Seg48.relationRow4904 at r4904

  unfold Seg48.relationRow4905 at r4905

  unfold Seg48.relationRow4906 at r4906

  unfold Seg48.relationRow4907 at r4907

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX33 rho = seg48Out0AccX32 rho + rho 37658 := by
    unfold seg48Out0AccX33 seg48Out0AccX32
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 32]

    ring

  have hnexty : seg48Out0AccY33 rho = seg48Out0AccY32 rho + rho 37659 := by
    unfold seg48Out0AccY33 seg48Out0AccY32
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 32]

    ring

  have ha0 : (rho 37650 + rho 37651) * (seg48Out0AccX32 rho + seg48Out0AccY32 rho) = rho 37652 := by
    unfold seg48Out0AccX32 seg48Out0AccY32
    linear_combination r4895
  have ha1 : rho 37651 * seg48Out0AccX32 rho = rho 37653 := by
    unfold seg48Out0AccX32
    linear_combination r4896
  have ha2 : rho 37650 * seg48Out0AccY32 rho = rho 37654 := by
    unfold seg48Out0AccY32
    linear_combination r4897
  have ha3 : 3021 * rho 37653 * rho 37654 = rho 37655 := by
    linear_combination r4898
  have ha4 : rho 37656 * (1 + rho 37655) = rho 37653 + rho 37654 := by
    linear_combination r4899
  have ha5 : rho 37657 * (1 - rho 37655) = rho 37652 - rho 37653 - rho 37654 := by
    linear_combination r4900
  have haddx :
      rho 37656 * (1 + 3021 * (rho 37651 * seg48Out0AccX32 rho) * (rho 37650 * seg48Out0AccY32 rho)) =
        rho 37651 * seg48Out0AccX32 rho + rho 37650 * seg48Out0AccY32 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37657 * (1 - 3021 * (rho 37651 * seg48Out0AccX32 rho) * (rho 37650 * seg48Out0AccY32 rho)) =
        (-1) * (rho 37651 * seg48Out0AccX32 rho) - rho 37650 * seg48Out0AccY32 rho +
          (seg48Out0AccY32 rho - seg48Out0AccX32 rho * (-1)) * (rho 37650 + rho 37651) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37657 * (1 - rho 37655) = rho 37652 - rho 37653 - rho 37654 := ha5
      _ = (-1) * rho 37653 - rho 37654 + (seg48Out0AccY32 rho - seg48Out0AccX32 rho * (-1)) *
          (rho 37650 + rho 37651) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX33 rho = seg48Out0AccX32 rho - Bool.toZMod bit * (seg48Out0AccX32 rho - rho 37656) := by
    have hd : rho 37658 = Bool.toZMod bit * (rho 37656 - seg48Out0AccX32 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX32
      linear_combination -r4901
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY33 rho = seg48Out0AccY32 rho - Bool.toZMod bit * (seg48Out0AccY32 rho - rho 37657) := by
    have hd : rho 37659 = Bool.toZMod bit * (rho 37657 - seg48Out0AccY32 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY32
      linear_combination -r4902
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37650 * rho 37651 = rho 37660 := by linear_combination r4903
  have hd1 : rho 37650 * rho 37650 = rho 37661 := by linear_combination r4904
  have hd2 : rho 37651 * rho 37651 = rho 37662 := by linear_combination r4905
  have hd3 : rho 37663 * (rho 37651 * rho 37651 + rho 37650 * rho 37650 * (-1)) =
      2 * (rho 37650 * rho 37651) := by
    rw [hd0, hd1, hd2]
    linear_combination r4906
  have hd4 : rho 37664 * (2 - (rho 37651 * rho 37651 + rho 37650 * rho 37650 * (-1))) =
      rho 37651 * rho 37651 - rho 37650 * rho 37650 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4907
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX32 rho, seg48Out0AccY32 rho⟩ ⟨rho 37650, rho 37651⟩
    ⟨rho 37656, rho 37657⟩ ⟨seg48Out0AccX33 rho, seg48Out0AccY33 rho⟩ ⟨rho 37663, rho 37664⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_hstep_c2 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (37114 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 22 ≤ i → i < 33 →
      EdwardsBridge.onCurve (seg48Out0AccState rho i) →
      EdwardsBridge.onCurve (seg48Out0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg48Out0AccState rho i) (seg48Out0CurState rho i)
        (seg48Out0AccState rho (i + 1)) (seg48Out0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg48Out0_rung22 rho h bits[22]! (hbitAt 22 (by omega)) hacc hcur
  · exact seg48Out0_rung23 rho h bits[23]! (hbitAt 23 (by omega)) hacc hcur
  · exact seg48Out0_rung24 rho h bits[24]! (hbitAt 24 (by omega)) hacc hcur
  · exact seg48Out0_rung25 rho h bits[25]! (hbitAt 25 (by omega)) hacc hcur
  · exact seg48Out0_rung26 rho h bits[26]! (hbitAt 26 (by omega)) hacc hcur
  · exact seg48Out0_rung27 rho h bits[27]! (hbitAt 27 (by omega)) hacc hcur
  · exact seg48Out0_rung28 rho h bits[28]! (hbitAt 28 (by omega)) hacc hcur
  · exact seg48Out0_rung29 rho h bits[29]! (hbitAt 29 (by omega)) hacc hcur
  · exact seg48Out0_rung30 rho h bits[30]! (hbitAt 30 (by omega)) hacc hcur
  · exact seg48Out0_rung31 rho h bits[31]! (hbitAt 31 (by omega)) hacc hcur
  · exact seg48Out0_rung32 rho h bits[32]! (hbitAt 32 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
