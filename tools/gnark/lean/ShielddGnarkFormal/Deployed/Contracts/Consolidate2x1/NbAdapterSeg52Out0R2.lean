import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Out0_rows22 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4765 rho ∧ Seg52.relationRow4766 rho ∧ Seg52.relationRow4767 rho ∧ Seg52.relationRow4768 rho ∧ Seg52.relationRow4769 rho ∧ Seg52.relationRow4770 rho ∧ Seg52.relationRow4771 rho ∧ Seg52.relationRow4772 rho ∧ Seg52.relationRow4773 rho ∧ Seg52.relationRow4774 rho ∧ Seg52.relationRow4775 rho ∧ Seg52.relationRow4776 rho ∧ Seg52.relationRow4777 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart59 at p59

  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4765, r4766, r4767, r4768, r4769, r4770, r4771, r4772, r4773, r4774, r4775, r4776, r4777, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4765, r4766, r4767, r4768, r4769, r4770, r4771, r4772, r4773, r4774, r4775, r4776, r4777⟩

theorem seg52Out0_rung22 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48768 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX22 rho, seg52Out0AccY22 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49152, rho 49153⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX22 rho, seg52Out0AccY22 rho⟩ ⟨rho 49152, rho 49153⟩
        ⟨seg52Out0AccX23 rho, seg52Out0AccY23 rho⟩ ⟨rho 49165, rho 49166⟩ := by
  obtain ⟨r4765, r4766, r4767, r4768, r4769, r4770, r4771, r4772, r4773, r4774, r4775, r4776, r4777⟩ := seg52Out0_rows22 rho h
  unfold Seg52.relationRow4765 at r4765

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4765

  unfold Seg52.relationRow4766 at r4766

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4766

  unfold Seg52.relationRow4767 at r4767

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4767

  unfold Seg52.relationRow4768 at r4768

  unfold Seg52.relationRow4769 at r4769

  unfold Seg52.relationRow4770 at r4770

  unfold Seg52.relationRow4771 at r4771

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4771

  unfold Seg52.relationRow4772 at r4772

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4772

  unfold Seg52.relationRow4773 at r4773

  unfold Seg52.relationRow4774 at r4774

  unfold Seg52.relationRow4775 at r4775

  unfold Seg52.relationRow4776 at r4776

  unfold Seg52.relationRow4777 at r4777

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX23 rho = seg52Out0AccX22 rho + rho 49160 := by
    unfold seg52Out0AccX23 seg52Out0AccX22
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 22]

    ring

  have hnexty : seg52Out0AccY23 rho = seg52Out0AccY22 rho + rho 49161 := by
    unfold seg52Out0AccY23 seg52Out0AccY22
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 22]

    ring

  have ha0 : (rho 49152 + rho 49153) * (seg52Out0AccX22 rho + seg52Out0AccY22 rho) = rho 49154 := by
    unfold seg52Out0AccX22 seg52Out0AccY22
    linear_combination r4765
  have ha1 : rho 49153 * seg52Out0AccX22 rho = rho 49155 := by
    unfold seg52Out0AccX22
    linear_combination r4766
  have ha2 : rho 49152 * seg52Out0AccY22 rho = rho 49156 := by
    unfold seg52Out0AccY22
    linear_combination r4767
  have ha3 : 3021 * rho 49155 * rho 49156 = rho 49157 := by
    linear_combination r4768
  have ha4 : rho 49158 * (1 + rho 49157) = rho 49155 + rho 49156 := by
    linear_combination r4769
  have ha5 : rho 49159 * (1 - rho 49157) = rho 49154 - rho 49155 - rho 49156 := by
    linear_combination r4770
  have haddx :
      rho 49158 * (1 + 3021 * (rho 49153 * seg52Out0AccX22 rho) * (rho 49152 * seg52Out0AccY22 rho)) =
        rho 49153 * seg52Out0AccX22 rho + rho 49152 * seg52Out0AccY22 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49159 * (1 - 3021 * (rho 49153 * seg52Out0AccX22 rho) * (rho 49152 * seg52Out0AccY22 rho)) =
        (-1) * (rho 49153 * seg52Out0AccX22 rho) - rho 49152 * seg52Out0AccY22 rho +
          (seg52Out0AccY22 rho - seg52Out0AccX22 rho * (-1)) * (rho 49152 + rho 49153) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49159 * (1 - rho 49157) = rho 49154 - rho 49155 - rho 49156 := ha5
      _ = (-1) * rho 49155 - rho 49156 + (seg52Out0AccY22 rho - seg52Out0AccX22 rho * (-1)) *
          (rho 49152 + rho 49153) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX23 rho = seg52Out0AccX22 rho - Bool.toZMod bit * (seg52Out0AccX22 rho - rho 49158) := by
    have hd : rho 49160 = Bool.toZMod bit * (rho 49158 - seg52Out0AccX22 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX22
      linear_combination -r4771
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY23 rho = seg52Out0AccY22 rho - Bool.toZMod bit * (seg52Out0AccY22 rho - rho 49159) := by
    have hd : rho 49161 = Bool.toZMod bit * (rho 49159 - seg52Out0AccY22 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY22
      linear_combination -r4772
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49152 * rho 49153 = rho 49162 := by linear_combination r4773
  have hd1 : rho 49152 * rho 49152 = rho 49163 := by linear_combination r4774
  have hd2 : rho 49153 * rho 49153 = rho 49164 := by linear_combination r4775
  have hd3 : rho 49165 * (rho 49153 * rho 49153 + rho 49152 * rho 49152 * (-1)) =
      2 * (rho 49152 * rho 49153) := by
    rw [hd0, hd1, hd2]
    linear_combination r4776
  have hd4 : rho 49166 * (2 - (rho 49153 * rho 49153 + rho 49152 * rho 49152 * (-1))) =
      rho 49153 * rho 49153 - rho 49152 * rho 49152 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4777
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX22 rho, seg52Out0AccY22 rho⟩ ⟨rho 49152, rho 49153⟩
    ⟨rho 49158, rho 49159⟩ ⟨seg52Out0AccX23 rho, seg52Out0AccY23 rho⟩ ⟨rho 49165, rho 49166⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows23 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4778 rho ∧ Seg52.relationRow4779 rho ∧ Seg52.relationRow4780 rho ∧ Seg52.relationRow4781 rho ∧ Seg52.relationRow4782 rho ∧ Seg52.relationRow4783 rho ∧ Seg52.relationRow4784 rho ∧ Seg52.relationRow4785 rho ∧ Seg52.relationRow4786 rho ∧ Seg52.relationRow4787 rho ∧ Seg52.relationRow4788 rho ∧ Seg52.relationRow4789 rho ∧ Seg52.relationRow4790 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart59 at p59

  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4778, r4779, r4780, r4781, r4782, r4783, r4784, r4785, r4786, r4787, r4788, r4789, r4790, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4778, r4779, r4780, r4781, r4782, r4783, r4784, r4785, r4786, r4787, r4788, r4789, r4790⟩

theorem seg52Out0_rung23 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48769 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX23 rho, seg52Out0AccY23 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49165, rho 49166⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX23 rho, seg52Out0AccY23 rho⟩ ⟨rho 49165, rho 49166⟩
        ⟨seg52Out0AccX24 rho, seg52Out0AccY24 rho⟩ ⟨rho 49178, rho 49179⟩ := by
  obtain ⟨r4778, r4779, r4780, r4781, r4782, r4783, r4784, r4785, r4786, r4787, r4788, r4789, r4790⟩ := seg52Out0_rows23 rho h
  unfold Seg52.relationRow4778 at r4778

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4778

  unfold Seg52.relationRow4779 at r4779

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4779

  unfold Seg52.relationRow4780 at r4780

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4780

  unfold Seg52.relationRow4781 at r4781

  unfold Seg52.relationRow4782 at r4782

  unfold Seg52.relationRow4783 at r4783

  unfold Seg52.relationRow4784 at r4784

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4784

  unfold Seg52.relationRow4785 at r4785

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4785

  unfold Seg52.relationRow4786 at r4786

  unfold Seg52.relationRow4787 at r4787

  unfold Seg52.relationRow4788 at r4788

  unfold Seg52.relationRow4789 at r4789

  unfold Seg52.relationRow4790 at r4790

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX24 rho = seg52Out0AccX23 rho + rho 49173 := by
    unfold seg52Out0AccX24 seg52Out0AccX23
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 23]

    ring

  have hnexty : seg52Out0AccY24 rho = seg52Out0AccY23 rho + rho 49174 := by
    unfold seg52Out0AccY24 seg52Out0AccY23
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 23]

    ring

  have ha0 : (rho 49165 + rho 49166) * (seg52Out0AccX23 rho + seg52Out0AccY23 rho) = rho 49167 := by
    unfold seg52Out0AccX23 seg52Out0AccY23
    linear_combination r4778
  have ha1 : rho 49166 * seg52Out0AccX23 rho = rho 49168 := by
    unfold seg52Out0AccX23
    linear_combination r4779
  have ha2 : rho 49165 * seg52Out0AccY23 rho = rho 49169 := by
    unfold seg52Out0AccY23
    linear_combination r4780
  have ha3 : 3021 * rho 49168 * rho 49169 = rho 49170 := by
    linear_combination r4781
  have ha4 : rho 49171 * (1 + rho 49170) = rho 49168 + rho 49169 := by
    linear_combination r4782
  have ha5 : rho 49172 * (1 - rho 49170) = rho 49167 - rho 49168 - rho 49169 := by
    linear_combination r4783
  have haddx :
      rho 49171 * (1 + 3021 * (rho 49166 * seg52Out0AccX23 rho) * (rho 49165 * seg52Out0AccY23 rho)) =
        rho 49166 * seg52Out0AccX23 rho + rho 49165 * seg52Out0AccY23 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49172 * (1 - 3021 * (rho 49166 * seg52Out0AccX23 rho) * (rho 49165 * seg52Out0AccY23 rho)) =
        (-1) * (rho 49166 * seg52Out0AccX23 rho) - rho 49165 * seg52Out0AccY23 rho +
          (seg52Out0AccY23 rho - seg52Out0AccX23 rho * (-1)) * (rho 49165 + rho 49166) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49172 * (1 - rho 49170) = rho 49167 - rho 49168 - rho 49169 := ha5
      _ = (-1) * rho 49168 - rho 49169 + (seg52Out0AccY23 rho - seg52Out0AccX23 rho * (-1)) *
          (rho 49165 + rho 49166) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX24 rho = seg52Out0AccX23 rho - Bool.toZMod bit * (seg52Out0AccX23 rho - rho 49171) := by
    have hd : rho 49173 = Bool.toZMod bit * (rho 49171 - seg52Out0AccX23 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX23
      linear_combination -r4784
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY24 rho = seg52Out0AccY23 rho - Bool.toZMod bit * (seg52Out0AccY23 rho - rho 49172) := by
    have hd : rho 49174 = Bool.toZMod bit * (rho 49172 - seg52Out0AccY23 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY23
      linear_combination -r4785
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49165 * rho 49166 = rho 49175 := by linear_combination r4786
  have hd1 : rho 49165 * rho 49165 = rho 49176 := by linear_combination r4787
  have hd2 : rho 49166 * rho 49166 = rho 49177 := by linear_combination r4788
  have hd3 : rho 49178 * (rho 49166 * rho 49166 + rho 49165 * rho 49165 * (-1)) =
      2 * (rho 49165 * rho 49166) := by
    rw [hd0, hd1, hd2]
    linear_combination r4789
  have hd4 : rho 49179 * (2 - (rho 49166 * rho 49166 + rho 49165 * rho 49165 * (-1))) =
      rho 49166 * rho 49166 - rho 49165 * rho 49165 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4790
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX23 rho, seg52Out0AccY23 rho⟩ ⟨rho 49165, rho 49166⟩
    ⟨rho 49171, rho 49172⟩ ⟨seg52Out0AccX24 rho, seg52Out0AccY24 rho⟩ ⟨rho 49178, rho 49179⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows24 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4791 rho ∧ Seg52.relationRow4792 rho ∧ Seg52.relationRow4793 rho ∧ Seg52.relationRow4794 rho ∧ Seg52.relationRow4795 rho ∧ Seg52.relationRow4796 rho ∧ Seg52.relationRow4797 rho ∧ Seg52.relationRow4798 rho ∧ Seg52.relationRow4799 rho ∧ Seg52.relationRow4800 rho ∧ Seg52.relationRow4801 rho ∧ Seg52.relationRow4802 rho ∧ Seg52.relationRow4803 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart59 at p59

  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4791, r4792, r4793, r4794, r4795, r4796, r4797, r4798, r4799⟩

  unfold Seg52.relationPart60 at p60

  rcases p60 with ⟨r4800, r4801, r4802, r4803, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4791, r4792, r4793, r4794, r4795, r4796, r4797, r4798, r4799, r4800, r4801, r4802, r4803⟩

theorem seg52Out0_rung24 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48770 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX24 rho, seg52Out0AccY24 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49178, rho 49179⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX24 rho, seg52Out0AccY24 rho⟩ ⟨rho 49178, rho 49179⟩
        ⟨seg52Out0AccX25 rho, seg52Out0AccY25 rho⟩ ⟨rho 49191, rho 49192⟩ := by
  obtain ⟨r4791, r4792, r4793, r4794, r4795, r4796, r4797, r4798, r4799, r4800, r4801, r4802, r4803⟩ := seg52Out0_rows24 rho h
  unfold Seg52.relationRow4791 at r4791

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4791

  unfold Seg52.relationRow4792 at r4792

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4792

  unfold Seg52.relationRow4793 at r4793

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4793

  unfold Seg52.relationRow4794 at r4794

  unfold Seg52.relationRow4795 at r4795

  unfold Seg52.relationRow4796 at r4796

  unfold Seg52.relationRow4797 at r4797

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4797

  unfold Seg52.relationRow4798 at r4798

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4798

  unfold Seg52.relationRow4799 at r4799

  unfold Seg52.relationRow4800 at r4800

  unfold Seg52.relationRow4801 at r4801

  unfold Seg52.relationRow4802 at r4802

  unfold Seg52.relationRow4803 at r4803

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX25 rho = seg52Out0AccX24 rho + rho 49186 := by
    unfold seg52Out0AccX25 seg52Out0AccX24
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 24]

    ring

  have hnexty : seg52Out0AccY25 rho = seg52Out0AccY24 rho + rho 49187 := by
    unfold seg52Out0AccY25 seg52Out0AccY24
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 24]

    ring

  have ha0 : (rho 49178 + rho 49179) * (seg52Out0AccX24 rho + seg52Out0AccY24 rho) = rho 49180 := by
    unfold seg52Out0AccX24 seg52Out0AccY24
    linear_combination r4791
  have ha1 : rho 49179 * seg52Out0AccX24 rho = rho 49181 := by
    unfold seg52Out0AccX24
    linear_combination r4792
  have ha2 : rho 49178 * seg52Out0AccY24 rho = rho 49182 := by
    unfold seg52Out0AccY24
    linear_combination r4793
  have ha3 : 3021 * rho 49181 * rho 49182 = rho 49183 := by
    linear_combination r4794
  have ha4 : rho 49184 * (1 + rho 49183) = rho 49181 + rho 49182 := by
    linear_combination r4795
  have ha5 : rho 49185 * (1 - rho 49183) = rho 49180 - rho 49181 - rho 49182 := by
    linear_combination r4796
  have haddx :
      rho 49184 * (1 + 3021 * (rho 49179 * seg52Out0AccX24 rho) * (rho 49178 * seg52Out0AccY24 rho)) =
        rho 49179 * seg52Out0AccX24 rho + rho 49178 * seg52Out0AccY24 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49185 * (1 - 3021 * (rho 49179 * seg52Out0AccX24 rho) * (rho 49178 * seg52Out0AccY24 rho)) =
        (-1) * (rho 49179 * seg52Out0AccX24 rho) - rho 49178 * seg52Out0AccY24 rho +
          (seg52Out0AccY24 rho - seg52Out0AccX24 rho * (-1)) * (rho 49178 + rho 49179) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49185 * (1 - rho 49183) = rho 49180 - rho 49181 - rho 49182 := ha5
      _ = (-1) * rho 49181 - rho 49182 + (seg52Out0AccY24 rho - seg52Out0AccX24 rho * (-1)) *
          (rho 49178 + rho 49179) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX25 rho = seg52Out0AccX24 rho - Bool.toZMod bit * (seg52Out0AccX24 rho - rho 49184) := by
    have hd : rho 49186 = Bool.toZMod bit * (rho 49184 - seg52Out0AccX24 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX24
      linear_combination -r4797
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY25 rho = seg52Out0AccY24 rho - Bool.toZMod bit * (seg52Out0AccY24 rho - rho 49185) := by
    have hd : rho 49187 = Bool.toZMod bit * (rho 49185 - seg52Out0AccY24 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY24
      linear_combination -r4798
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49178 * rho 49179 = rho 49188 := by linear_combination r4799
  have hd1 : rho 49178 * rho 49178 = rho 49189 := by linear_combination r4800
  have hd2 : rho 49179 * rho 49179 = rho 49190 := by linear_combination r4801
  have hd3 : rho 49191 * (rho 49179 * rho 49179 + rho 49178 * rho 49178 * (-1)) =
      2 * (rho 49178 * rho 49179) := by
    rw [hd0, hd1, hd2]
    linear_combination r4802
  have hd4 : rho 49192 * (2 - (rho 49179 * rho 49179 + rho 49178 * rho 49178 * (-1))) =
      rho 49179 * rho 49179 - rho 49178 * rho 49178 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4803
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX24 rho, seg52Out0AccY24 rho⟩ ⟨rho 49178, rho 49179⟩
    ⟨rho 49184, rho 49185⟩ ⟨seg52Out0AccX25 rho, seg52Out0AccY25 rho⟩ ⟨rho 49191, rho 49192⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows25 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4804 rho ∧ Seg52.relationRow4805 rho ∧ Seg52.relationRow4806 rho ∧ Seg52.relationRow4807 rho ∧ Seg52.relationRow4808 rho ∧ Seg52.relationRow4809 rho ∧ Seg52.relationRow4810 rho ∧ Seg52.relationRow4811 rho ∧ Seg52.relationRow4812 rho ∧ Seg52.relationRow4813 rho ∧ Seg52.relationRow4814 rho ∧ Seg52.relationRow4815 rho ∧ Seg52.relationRow4816 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart60 at p60

  rcases p60 with ⟨_, _, _, _, r4804, r4805, r4806, r4807, r4808, r4809, r4810, r4811, r4812, r4813, r4814, r4815, r4816, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4804, r4805, r4806, r4807, r4808, r4809, r4810, r4811, r4812, r4813, r4814, r4815, r4816⟩

theorem seg52Out0_rung25 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48771 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX25 rho, seg52Out0AccY25 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49191, rho 49192⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX25 rho, seg52Out0AccY25 rho⟩ ⟨rho 49191, rho 49192⟩
        ⟨seg52Out0AccX26 rho, seg52Out0AccY26 rho⟩ ⟨rho 49204, rho 49205⟩ := by
  obtain ⟨r4804, r4805, r4806, r4807, r4808, r4809, r4810, r4811, r4812, r4813, r4814, r4815, r4816⟩ := seg52Out0_rows25 rho h
  unfold Seg52.relationRow4804 at r4804

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4804

  unfold Seg52.relationRow4805 at r4805

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4805

  unfold Seg52.relationRow4806 at r4806

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4806

  unfold Seg52.relationRow4807 at r4807

  unfold Seg52.relationRow4808 at r4808

  unfold Seg52.relationRow4809 at r4809

  unfold Seg52.relationRow4810 at r4810

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4810

  unfold Seg52.relationRow4811 at r4811

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4811

  unfold Seg52.relationRow4812 at r4812

  unfold Seg52.relationRow4813 at r4813

  unfold Seg52.relationRow4814 at r4814

  unfold Seg52.relationRow4815 at r4815

  unfold Seg52.relationRow4816 at r4816

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX26 rho = seg52Out0AccX25 rho + rho 49199 := by
    unfold seg52Out0AccX26 seg52Out0AccX25
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 25]

    ring

  have hnexty : seg52Out0AccY26 rho = seg52Out0AccY25 rho + rho 49200 := by
    unfold seg52Out0AccY26 seg52Out0AccY25
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 25]

    ring

  have ha0 : (rho 49191 + rho 49192) * (seg52Out0AccX25 rho + seg52Out0AccY25 rho) = rho 49193 := by
    unfold seg52Out0AccX25 seg52Out0AccY25
    linear_combination r4804
  have ha1 : rho 49192 * seg52Out0AccX25 rho = rho 49194 := by
    unfold seg52Out0AccX25
    linear_combination r4805
  have ha2 : rho 49191 * seg52Out0AccY25 rho = rho 49195 := by
    unfold seg52Out0AccY25
    linear_combination r4806
  have ha3 : 3021 * rho 49194 * rho 49195 = rho 49196 := by
    linear_combination r4807
  have ha4 : rho 49197 * (1 + rho 49196) = rho 49194 + rho 49195 := by
    linear_combination r4808
  have ha5 : rho 49198 * (1 - rho 49196) = rho 49193 - rho 49194 - rho 49195 := by
    linear_combination r4809
  have haddx :
      rho 49197 * (1 + 3021 * (rho 49192 * seg52Out0AccX25 rho) * (rho 49191 * seg52Out0AccY25 rho)) =
        rho 49192 * seg52Out0AccX25 rho + rho 49191 * seg52Out0AccY25 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49198 * (1 - 3021 * (rho 49192 * seg52Out0AccX25 rho) * (rho 49191 * seg52Out0AccY25 rho)) =
        (-1) * (rho 49192 * seg52Out0AccX25 rho) - rho 49191 * seg52Out0AccY25 rho +
          (seg52Out0AccY25 rho - seg52Out0AccX25 rho * (-1)) * (rho 49191 + rho 49192) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49198 * (1 - rho 49196) = rho 49193 - rho 49194 - rho 49195 := ha5
      _ = (-1) * rho 49194 - rho 49195 + (seg52Out0AccY25 rho - seg52Out0AccX25 rho * (-1)) *
          (rho 49191 + rho 49192) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX26 rho = seg52Out0AccX25 rho - Bool.toZMod bit * (seg52Out0AccX25 rho - rho 49197) := by
    have hd : rho 49199 = Bool.toZMod bit * (rho 49197 - seg52Out0AccX25 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX25
      linear_combination -r4810
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY26 rho = seg52Out0AccY25 rho - Bool.toZMod bit * (seg52Out0AccY25 rho - rho 49198) := by
    have hd : rho 49200 = Bool.toZMod bit * (rho 49198 - seg52Out0AccY25 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY25
      linear_combination -r4811
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49191 * rho 49192 = rho 49201 := by linear_combination r4812
  have hd1 : rho 49191 * rho 49191 = rho 49202 := by linear_combination r4813
  have hd2 : rho 49192 * rho 49192 = rho 49203 := by linear_combination r4814
  have hd3 : rho 49204 * (rho 49192 * rho 49192 + rho 49191 * rho 49191 * (-1)) =
      2 * (rho 49191 * rho 49192) := by
    rw [hd0, hd1, hd2]
    linear_combination r4815
  have hd4 : rho 49205 * (2 - (rho 49192 * rho 49192 + rho 49191 * rho 49191 * (-1))) =
      rho 49192 * rho 49192 - rho 49191 * rho 49191 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4816
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX25 rho, seg52Out0AccY25 rho⟩ ⟨rho 49191, rho 49192⟩
    ⟨rho 49197, rho 49198⟩ ⟨seg52Out0AccX26 rho, seg52Out0AccY26 rho⟩ ⟨rho 49204, rho 49205⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows26 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4817 rho ∧ Seg52.relationRow4818 rho ∧ Seg52.relationRow4819 rho ∧ Seg52.relationRow4820 rho ∧ Seg52.relationRow4821 rho ∧ Seg52.relationRow4822 rho ∧ Seg52.relationRow4823 rho ∧ Seg52.relationRow4824 rho ∧ Seg52.relationRow4825 rho ∧ Seg52.relationRow4826 rho ∧ Seg52.relationRow4827 rho ∧ Seg52.relationRow4828 rho ∧ Seg52.relationRow4829 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart60 at p60

  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4817, r4818, r4819, r4820, r4821, r4822, r4823, r4824, r4825, r4826, r4827, r4828, r4829, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4817, r4818, r4819, r4820, r4821, r4822, r4823, r4824, r4825, r4826, r4827, r4828, r4829⟩

theorem seg52Out0_rung26 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48772 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX26 rho, seg52Out0AccY26 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49204, rho 49205⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX26 rho, seg52Out0AccY26 rho⟩ ⟨rho 49204, rho 49205⟩
        ⟨seg52Out0AccX27 rho, seg52Out0AccY27 rho⟩ ⟨rho 49217, rho 49218⟩ := by
  obtain ⟨r4817, r4818, r4819, r4820, r4821, r4822, r4823, r4824, r4825, r4826, r4827, r4828, r4829⟩ := seg52Out0_rows26 rho h
  unfold Seg52.relationRow4817 at r4817

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4817

  unfold Seg52.relationRow4818 at r4818

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4818

  unfold Seg52.relationRow4819 at r4819

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4819

  unfold Seg52.relationRow4820 at r4820

  unfold Seg52.relationRow4821 at r4821

  unfold Seg52.relationRow4822 at r4822

  unfold Seg52.relationRow4823 at r4823

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4823

  unfold Seg52.relationRow4824 at r4824

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4824

  unfold Seg52.relationRow4825 at r4825

  unfold Seg52.relationRow4826 at r4826

  unfold Seg52.relationRow4827 at r4827

  unfold Seg52.relationRow4828 at r4828

  unfold Seg52.relationRow4829 at r4829

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX27 rho = seg52Out0AccX26 rho + rho 49212 := by
    unfold seg52Out0AccX27 seg52Out0AccX26
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 26]

    ring

  have hnexty : seg52Out0AccY27 rho = seg52Out0AccY26 rho + rho 49213 := by
    unfold seg52Out0AccY27 seg52Out0AccY26
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 26]

    ring

  have ha0 : (rho 49204 + rho 49205) * (seg52Out0AccX26 rho + seg52Out0AccY26 rho) = rho 49206 := by
    unfold seg52Out0AccX26 seg52Out0AccY26
    linear_combination r4817
  have ha1 : rho 49205 * seg52Out0AccX26 rho = rho 49207 := by
    unfold seg52Out0AccX26
    linear_combination r4818
  have ha2 : rho 49204 * seg52Out0AccY26 rho = rho 49208 := by
    unfold seg52Out0AccY26
    linear_combination r4819
  have ha3 : 3021 * rho 49207 * rho 49208 = rho 49209 := by
    linear_combination r4820
  have ha4 : rho 49210 * (1 + rho 49209) = rho 49207 + rho 49208 := by
    linear_combination r4821
  have ha5 : rho 49211 * (1 - rho 49209) = rho 49206 - rho 49207 - rho 49208 := by
    linear_combination r4822
  have haddx :
      rho 49210 * (1 + 3021 * (rho 49205 * seg52Out0AccX26 rho) * (rho 49204 * seg52Out0AccY26 rho)) =
        rho 49205 * seg52Out0AccX26 rho + rho 49204 * seg52Out0AccY26 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49211 * (1 - 3021 * (rho 49205 * seg52Out0AccX26 rho) * (rho 49204 * seg52Out0AccY26 rho)) =
        (-1) * (rho 49205 * seg52Out0AccX26 rho) - rho 49204 * seg52Out0AccY26 rho +
          (seg52Out0AccY26 rho - seg52Out0AccX26 rho * (-1)) * (rho 49204 + rho 49205) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49211 * (1 - rho 49209) = rho 49206 - rho 49207 - rho 49208 := ha5
      _ = (-1) * rho 49207 - rho 49208 + (seg52Out0AccY26 rho - seg52Out0AccX26 rho * (-1)) *
          (rho 49204 + rho 49205) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX27 rho = seg52Out0AccX26 rho - Bool.toZMod bit * (seg52Out0AccX26 rho - rho 49210) := by
    have hd : rho 49212 = Bool.toZMod bit * (rho 49210 - seg52Out0AccX26 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX26
      linear_combination -r4823
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY27 rho = seg52Out0AccY26 rho - Bool.toZMod bit * (seg52Out0AccY26 rho - rho 49211) := by
    have hd : rho 49213 = Bool.toZMod bit * (rho 49211 - seg52Out0AccY26 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY26
      linear_combination -r4824
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49204 * rho 49205 = rho 49214 := by linear_combination r4825
  have hd1 : rho 49204 * rho 49204 = rho 49215 := by linear_combination r4826
  have hd2 : rho 49205 * rho 49205 = rho 49216 := by linear_combination r4827
  have hd3 : rho 49217 * (rho 49205 * rho 49205 + rho 49204 * rho 49204 * (-1)) =
      2 * (rho 49204 * rho 49205) := by
    rw [hd0, hd1, hd2]
    linear_combination r4828
  have hd4 : rho 49218 * (2 - (rho 49205 * rho 49205 + rho 49204 * rho 49204 * (-1))) =
      rho 49205 * rho 49205 - rho 49204 * rho 49204 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4829
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX26 rho, seg52Out0AccY26 rho⟩ ⟨rho 49204, rho 49205⟩
    ⟨rho 49210, rho 49211⟩ ⟨seg52Out0AccX27 rho, seg52Out0AccY27 rho⟩ ⟨rho 49217, rho 49218⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows27 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4830 rho ∧ Seg52.relationRow4831 rho ∧ Seg52.relationRow4832 rho ∧ Seg52.relationRow4833 rho ∧ Seg52.relationRow4834 rho ∧ Seg52.relationRow4835 rho ∧ Seg52.relationRow4836 rho ∧ Seg52.relationRow4837 rho ∧ Seg52.relationRow4838 rho ∧ Seg52.relationRow4839 rho ∧ Seg52.relationRow4840 rho ∧ Seg52.relationRow4841 rho ∧ Seg52.relationRow4842 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart60 at p60

  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4830, r4831, r4832, r4833, r4834, r4835, r4836, r4837, r4838, r4839, r4840, r4841, r4842, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4830, r4831, r4832, r4833, r4834, r4835, r4836, r4837, r4838, r4839, r4840, r4841, r4842⟩

theorem seg52Out0_rung27 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48773 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX27 rho, seg52Out0AccY27 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49217, rho 49218⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX27 rho, seg52Out0AccY27 rho⟩ ⟨rho 49217, rho 49218⟩
        ⟨seg52Out0AccX28 rho, seg52Out0AccY28 rho⟩ ⟨rho 49230, rho 49231⟩ := by
  obtain ⟨r4830, r4831, r4832, r4833, r4834, r4835, r4836, r4837, r4838, r4839, r4840, r4841, r4842⟩ := seg52Out0_rows27 rho h
  unfold Seg52.relationRow4830 at r4830

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4830

  unfold Seg52.relationRow4831 at r4831

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4831

  unfold Seg52.relationRow4832 at r4832

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4832

  unfold Seg52.relationRow4833 at r4833

  unfold Seg52.relationRow4834 at r4834

  unfold Seg52.relationRow4835 at r4835

  unfold Seg52.relationRow4836 at r4836

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4836

  unfold Seg52.relationRow4837 at r4837

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4837

  unfold Seg52.relationRow4838 at r4838

  unfold Seg52.relationRow4839 at r4839

  unfold Seg52.relationRow4840 at r4840

  unfold Seg52.relationRow4841 at r4841

  unfold Seg52.relationRow4842 at r4842

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX28 rho = seg52Out0AccX27 rho + rho 49225 := by
    unfold seg52Out0AccX28 seg52Out0AccX27
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 27]

    ring

  have hnexty : seg52Out0AccY28 rho = seg52Out0AccY27 rho + rho 49226 := by
    unfold seg52Out0AccY28 seg52Out0AccY27
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 27]

    ring

  have ha0 : (rho 49217 + rho 49218) * (seg52Out0AccX27 rho + seg52Out0AccY27 rho) = rho 49219 := by
    unfold seg52Out0AccX27 seg52Out0AccY27
    linear_combination r4830
  have ha1 : rho 49218 * seg52Out0AccX27 rho = rho 49220 := by
    unfold seg52Out0AccX27
    linear_combination r4831
  have ha2 : rho 49217 * seg52Out0AccY27 rho = rho 49221 := by
    unfold seg52Out0AccY27
    linear_combination r4832
  have ha3 : 3021 * rho 49220 * rho 49221 = rho 49222 := by
    linear_combination r4833
  have ha4 : rho 49223 * (1 + rho 49222) = rho 49220 + rho 49221 := by
    linear_combination r4834
  have ha5 : rho 49224 * (1 - rho 49222) = rho 49219 - rho 49220 - rho 49221 := by
    linear_combination r4835
  have haddx :
      rho 49223 * (1 + 3021 * (rho 49218 * seg52Out0AccX27 rho) * (rho 49217 * seg52Out0AccY27 rho)) =
        rho 49218 * seg52Out0AccX27 rho + rho 49217 * seg52Out0AccY27 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49224 * (1 - 3021 * (rho 49218 * seg52Out0AccX27 rho) * (rho 49217 * seg52Out0AccY27 rho)) =
        (-1) * (rho 49218 * seg52Out0AccX27 rho) - rho 49217 * seg52Out0AccY27 rho +
          (seg52Out0AccY27 rho - seg52Out0AccX27 rho * (-1)) * (rho 49217 + rho 49218) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49224 * (1 - rho 49222) = rho 49219 - rho 49220 - rho 49221 := ha5
      _ = (-1) * rho 49220 - rho 49221 + (seg52Out0AccY27 rho - seg52Out0AccX27 rho * (-1)) *
          (rho 49217 + rho 49218) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX28 rho = seg52Out0AccX27 rho - Bool.toZMod bit * (seg52Out0AccX27 rho - rho 49223) := by
    have hd : rho 49225 = Bool.toZMod bit * (rho 49223 - seg52Out0AccX27 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX27
      linear_combination -r4836
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY28 rho = seg52Out0AccY27 rho - Bool.toZMod bit * (seg52Out0AccY27 rho - rho 49224) := by
    have hd : rho 49226 = Bool.toZMod bit * (rho 49224 - seg52Out0AccY27 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY27
      linear_combination -r4837
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49217 * rho 49218 = rho 49227 := by linear_combination r4838
  have hd1 : rho 49217 * rho 49217 = rho 49228 := by linear_combination r4839
  have hd2 : rho 49218 * rho 49218 = rho 49229 := by linear_combination r4840
  have hd3 : rho 49230 * (rho 49218 * rho 49218 + rho 49217 * rho 49217 * (-1)) =
      2 * (rho 49217 * rho 49218) := by
    rw [hd0, hd1, hd2]
    linear_combination r4841
  have hd4 : rho 49231 * (2 - (rho 49218 * rho 49218 + rho 49217 * rho 49217 * (-1))) =
      rho 49218 * rho 49218 - rho 49217 * rho 49217 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4842
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX27 rho, seg52Out0AccY27 rho⟩ ⟨rho 49217, rho 49218⟩
    ⟨rho 49223, rho 49224⟩ ⟨seg52Out0AccX28 rho, seg52Out0AccY28 rho⟩ ⟨rho 49230, rho 49231⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows28 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4843 rho ∧ Seg52.relationRow4844 rho ∧ Seg52.relationRow4845 rho ∧ Seg52.relationRow4846 rho ∧ Seg52.relationRow4847 rho ∧ Seg52.relationRow4848 rho ∧ Seg52.relationRow4849 rho ∧ Seg52.relationRow4850 rho ∧ Seg52.relationRow4851 rho ∧ Seg52.relationRow4852 rho ∧ Seg52.relationRow4853 rho ∧ Seg52.relationRow4854 rho ∧ Seg52.relationRow4855 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart60 at p60

  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4843, r4844, r4845, r4846, r4847, r4848, r4849, r4850, r4851, r4852, r4853, r4854, r4855, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4843, r4844, r4845, r4846, r4847, r4848, r4849, r4850, r4851, r4852, r4853, r4854, r4855⟩

theorem seg52Out0_rung28 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48774 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX28 rho, seg52Out0AccY28 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49230, rho 49231⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX28 rho, seg52Out0AccY28 rho⟩ ⟨rho 49230, rho 49231⟩
        ⟨seg52Out0AccX29 rho, seg52Out0AccY29 rho⟩ ⟨rho 49243, rho 49244⟩ := by
  obtain ⟨r4843, r4844, r4845, r4846, r4847, r4848, r4849, r4850, r4851, r4852, r4853, r4854, r4855⟩ := seg52Out0_rows28 rho h
  unfold Seg52.relationRow4843 at r4843

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4843

  unfold Seg52.relationRow4844 at r4844

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4844

  unfold Seg52.relationRow4845 at r4845

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4845

  unfold Seg52.relationRow4846 at r4846

  unfold Seg52.relationRow4847 at r4847

  unfold Seg52.relationRow4848 at r4848

  unfold Seg52.relationRow4849 at r4849

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4849

  unfold Seg52.relationRow4850 at r4850

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4850

  unfold Seg52.relationRow4851 at r4851

  unfold Seg52.relationRow4852 at r4852

  unfold Seg52.relationRow4853 at r4853

  unfold Seg52.relationRow4854 at r4854

  unfold Seg52.relationRow4855 at r4855

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX29 rho = seg52Out0AccX28 rho + rho 49238 := by
    unfold seg52Out0AccX29 seg52Out0AccX28
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 28]

    ring

  have hnexty : seg52Out0AccY29 rho = seg52Out0AccY28 rho + rho 49239 := by
    unfold seg52Out0AccY29 seg52Out0AccY28
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 28]

    ring

  have ha0 : (rho 49230 + rho 49231) * (seg52Out0AccX28 rho + seg52Out0AccY28 rho) = rho 49232 := by
    unfold seg52Out0AccX28 seg52Out0AccY28
    linear_combination r4843
  have ha1 : rho 49231 * seg52Out0AccX28 rho = rho 49233 := by
    unfold seg52Out0AccX28
    linear_combination r4844
  have ha2 : rho 49230 * seg52Out0AccY28 rho = rho 49234 := by
    unfold seg52Out0AccY28
    linear_combination r4845
  have ha3 : 3021 * rho 49233 * rho 49234 = rho 49235 := by
    linear_combination r4846
  have ha4 : rho 49236 * (1 + rho 49235) = rho 49233 + rho 49234 := by
    linear_combination r4847
  have ha5 : rho 49237 * (1 - rho 49235) = rho 49232 - rho 49233 - rho 49234 := by
    linear_combination r4848
  have haddx :
      rho 49236 * (1 + 3021 * (rho 49231 * seg52Out0AccX28 rho) * (rho 49230 * seg52Out0AccY28 rho)) =
        rho 49231 * seg52Out0AccX28 rho + rho 49230 * seg52Out0AccY28 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49237 * (1 - 3021 * (rho 49231 * seg52Out0AccX28 rho) * (rho 49230 * seg52Out0AccY28 rho)) =
        (-1) * (rho 49231 * seg52Out0AccX28 rho) - rho 49230 * seg52Out0AccY28 rho +
          (seg52Out0AccY28 rho - seg52Out0AccX28 rho * (-1)) * (rho 49230 + rho 49231) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49237 * (1 - rho 49235) = rho 49232 - rho 49233 - rho 49234 := ha5
      _ = (-1) * rho 49233 - rho 49234 + (seg52Out0AccY28 rho - seg52Out0AccX28 rho * (-1)) *
          (rho 49230 + rho 49231) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX29 rho = seg52Out0AccX28 rho - Bool.toZMod bit * (seg52Out0AccX28 rho - rho 49236) := by
    have hd : rho 49238 = Bool.toZMod bit * (rho 49236 - seg52Out0AccX28 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX28
      linear_combination -r4849
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY29 rho = seg52Out0AccY28 rho - Bool.toZMod bit * (seg52Out0AccY28 rho - rho 49237) := by
    have hd : rho 49239 = Bool.toZMod bit * (rho 49237 - seg52Out0AccY28 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY28
      linear_combination -r4850
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49230 * rho 49231 = rho 49240 := by linear_combination r4851
  have hd1 : rho 49230 * rho 49230 = rho 49241 := by linear_combination r4852
  have hd2 : rho 49231 * rho 49231 = rho 49242 := by linear_combination r4853
  have hd3 : rho 49243 * (rho 49231 * rho 49231 + rho 49230 * rho 49230 * (-1)) =
      2 * (rho 49230 * rho 49231) := by
    rw [hd0, hd1, hd2]
    linear_combination r4854
  have hd4 : rho 49244 * (2 - (rho 49231 * rho 49231 + rho 49230 * rho 49230 * (-1))) =
      rho 49231 * rho 49231 - rho 49230 * rho 49230 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4855
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX28 rho, seg52Out0AccY28 rho⟩ ⟨rho 49230, rho 49231⟩
    ⟨rho 49236, rho 49237⟩ ⟨seg52Out0AccX29 rho, seg52Out0AccY29 rho⟩ ⟨rho 49243, rho 49244⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows29 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4856 rho ∧ Seg52.relationRow4857 rho ∧ Seg52.relationRow4858 rho ∧ Seg52.relationRow4859 rho ∧ Seg52.relationRow4860 rho ∧ Seg52.relationRow4861 rho ∧ Seg52.relationRow4862 rho ∧ Seg52.relationRow4863 rho ∧ Seg52.relationRow4864 rho ∧ Seg52.relationRow4865 rho ∧ Seg52.relationRow4866 rho ∧ Seg52.relationRow4867 rho ∧ Seg52.relationRow4868 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart60 at p60

  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4856, r4857, r4858, r4859, r4860, r4861, r4862, r4863, r4864, r4865, r4866, r4867, r4868, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4856, r4857, r4858, r4859, r4860, r4861, r4862, r4863, r4864, r4865, r4866, r4867, r4868⟩

theorem seg52Out0_rung29 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48775 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX29 rho, seg52Out0AccY29 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49243, rho 49244⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX29 rho, seg52Out0AccY29 rho⟩ ⟨rho 49243, rho 49244⟩
        ⟨seg52Out0AccX30 rho, seg52Out0AccY30 rho⟩ ⟨rho 49256, rho 49257⟩ := by
  obtain ⟨r4856, r4857, r4858, r4859, r4860, r4861, r4862, r4863, r4864, r4865, r4866, r4867, r4868⟩ := seg52Out0_rows29 rho h
  unfold Seg52.relationRow4856 at r4856

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4856

  unfold Seg52.relationRow4857 at r4857

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4857

  unfold Seg52.relationRow4858 at r4858

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4858

  unfold Seg52.relationRow4859 at r4859

  unfold Seg52.relationRow4860 at r4860

  unfold Seg52.relationRow4861 at r4861

  unfold Seg52.relationRow4862 at r4862

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4862

  unfold Seg52.relationRow4863 at r4863

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4863

  unfold Seg52.relationRow4864 at r4864

  unfold Seg52.relationRow4865 at r4865

  unfold Seg52.relationRow4866 at r4866

  unfold Seg52.relationRow4867 at r4867

  unfold Seg52.relationRow4868 at r4868

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX30 rho = seg52Out0AccX29 rho + rho 49251 := by
    unfold seg52Out0AccX30 seg52Out0AccX29
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 29]

    ring

  have hnexty : seg52Out0AccY30 rho = seg52Out0AccY29 rho + rho 49252 := by
    unfold seg52Out0AccY30 seg52Out0AccY29
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 29]

    ring

  have ha0 : (rho 49243 + rho 49244) * (seg52Out0AccX29 rho + seg52Out0AccY29 rho) = rho 49245 := by
    unfold seg52Out0AccX29 seg52Out0AccY29
    linear_combination r4856
  have ha1 : rho 49244 * seg52Out0AccX29 rho = rho 49246 := by
    unfold seg52Out0AccX29
    linear_combination r4857
  have ha2 : rho 49243 * seg52Out0AccY29 rho = rho 49247 := by
    unfold seg52Out0AccY29
    linear_combination r4858
  have ha3 : 3021 * rho 49246 * rho 49247 = rho 49248 := by
    linear_combination r4859
  have ha4 : rho 49249 * (1 + rho 49248) = rho 49246 + rho 49247 := by
    linear_combination r4860
  have ha5 : rho 49250 * (1 - rho 49248) = rho 49245 - rho 49246 - rho 49247 := by
    linear_combination r4861
  have haddx :
      rho 49249 * (1 + 3021 * (rho 49244 * seg52Out0AccX29 rho) * (rho 49243 * seg52Out0AccY29 rho)) =
        rho 49244 * seg52Out0AccX29 rho + rho 49243 * seg52Out0AccY29 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49250 * (1 - 3021 * (rho 49244 * seg52Out0AccX29 rho) * (rho 49243 * seg52Out0AccY29 rho)) =
        (-1) * (rho 49244 * seg52Out0AccX29 rho) - rho 49243 * seg52Out0AccY29 rho +
          (seg52Out0AccY29 rho - seg52Out0AccX29 rho * (-1)) * (rho 49243 + rho 49244) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49250 * (1 - rho 49248) = rho 49245 - rho 49246 - rho 49247 := ha5
      _ = (-1) * rho 49246 - rho 49247 + (seg52Out0AccY29 rho - seg52Out0AccX29 rho * (-1)) *
          (rho 49243 + rho 49244) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX30 rho = seg52Out0AccX29 rho - Bool.toZMod bit * (seg52Out0AccX29 rho - rho 49249) := by
    have hd : rho 49251 = Bool.toZMod bit * (rho 49249 - seg52Out0AccX29 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX29
      linear_combination -r4862
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY30 rho = seg52Out0AccY29 rho - Bool.toZMod bit * (seg52Out0AccY29 rho - rho 49250) := by
    have hd : rho 49252 = Bool.toZMod bit * (rho 49250 - seg52Out0AccY29 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY29
      linear_combination -r4863
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49243 * rho 49244 = rho 49253 := by linear_combination r4864
  have hd1 : rho 49243 * rho 49243 = rho 49254 := by linear_combination r4865
  have hd2 : rho 49244 * rho 49244 = rho 49255 := by linear_combination r4866
  have hd3 : rho 49256 * (rho 49244 * rho 49244 + rho 49243 * rho 49243 * (-1)) =
      2 * (rho 49243 * rho 49244) := by
    rw [hd0, hd1, hd2]
    linear_combination r4867
  have hd4 : rho 49257 * (2 - (rho 49244 * rho 49244 + rho 49243 * rho 49243 * (-1))) =
      rho 49244 * rho 49244 - rho 49243 * rho 49243 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4868
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX29 rho, seg52Out0AccY29 rho⟩ ⟨rho 49243, rho 49244⟩
    ⟨rho 49249, rho 49250⟩ ⟨seg52Out0AccX30 rho, seg52Out0AccY30 rho⟩ ⟨rho 49256, rho 49257⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows30 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4869 rho ∧ Seg52.relationRow4870 rho ∧ Seg52.relationRow4871 rho ∧ Seg52.relationRow4872 rho ∧ Seg52.relationRow4873 rho ∧ Seg52.relationRow4874 rho ∧ Seg52.relationRow4875 rho ∧ Seg52.relationRow4876 rho ∧ Seg52.relationRow4877 rho ∧ Seg52.relationRow4878 rho ∧ Seg52.relationRow4879 rho ∧ Seg52.relationRow4880 rho ∧ Seg52.relationRow4881 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart60 at p60

  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4869, r4870, r4871, r4872, r4873, r4874, r4875, r4876, r4877, r4878, r4879⟩

  unfold Seg52.relationPart61 at p61

  rcases p61 with ⟨r4880, r4881, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4869, r4870, r4871, r4872, r4873, r4874, r4875, r4876, r4877, r4878, r4879, r4880, r4881⟩

theorem seg52Out0_rung30 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48776 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX30 rho, seg52Out0AccY30 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49256, rho 49257⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX30 rho, seg52Out0AccY30 rho⟩ ⟨rho 49256, rho 49257⟩
        ⟨seg52Out0AccX31 rho, seg52Out0AccY31 rho⟩ ⟨rho 49269, rho 49270⟩ := by
  obtain ⟨r4869, r4870, r4871, r4872, r4873, r4874, r4875, r4876, r4877, r4878, r4879, r4880, r4881⟩ := seg52Out0_rows30 rho h
  unfold Seg52.relationRow4869 at r4869

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4869

  unfold Seg52.relationRow4870 at r4870

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4870

  unfold Seg52.relationRow4871 at r4871

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4871

  unfold Seg52.relationRow4872 at r4872

  unfold Seg52.relationRow4873 at r4873

  unfold Seg52.relationRow4874 at r4874

  unfold Seg52.relationRow4875 at r4875

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4875

  unfold Seg52.relationRow4876 at r4876

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4876

  unfold Seg52.relationRow4877 at r4877

  unfold Seg52.relationRow4878 at r4878

  unfold Seg52.relationRow4879 at r4879

  unfold Seg52.relationRow4880 at r4880

  unfold Seg52.relationRow4881 at r4881

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX31 rho = seg52Out0AccX30 rho + rho 49264 := by
    unfold seg52Out0AccX31 seg52Out0AccX30
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 30]

    ring

  have hnexty : seg52Out0AccY31 rho = seg52Out0AccY30 rho + rho 49265 := by
    unfold seg52Out0AccY31 seg52Out0AccY30
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 30]

    ring

  have ha0 : (rho 49256 + rho 49257) * (seg52Out0AccX30 rho + seg52Out0AccY30 rho) = rho 49258 := by
    unfold seg52Out0AccX30 seg52Out0AccY30
    linear_combination r4869
  have ha1 : rho 49257 * seg52Out0AccX30 rho = rho 49259 := by
    unfold seg52Out0AccX30
    linear_combination r4870
  have ha2 : rho 49256 * seg52Out0AccY30 rho = rho 49260 := by
    unfold seg52Out0AccY30
    linear_combination r4871
  have ha3 : 3021 * rho 49259 * rho 49260 = rho 49261 := by
    linear_combination r4872
  have ha4 : rho 49262 * (1 + rho 49261) = rho 49259 + rho 49260 := by
    linear_combination r4873
  have ha5 : rho 49263 * (1 - rho 49261) = rho 49258 - rho 49259 - rho 49260 := by
    linear_combination r4874
  have haddx :
      rho 49262 * (1 + 3021 * (rho 49257 * seg52Out0AccX30 rho) * (rho 49256 * seg52Out0AccY30 rho)) =
        rho 49257 * seg52Out0AccX30 rho + rho 49256 * seg52Out0AccY30 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49263 * (1 - 3021 * (rho 49257 * seg52Out0AccX30 rho) * (rho 49256 * seg52Out0AccY30 rho)) =
        (-1) * (rho 49257 * seg52Out0AccX30 rho) - rho 49256 * seg52Out0AccY30 rho +
          (seg52Out0AccY30 rho - seg52Out0AccX30 rho * (-1)) * (rho 49256 + rho 49257) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49263 * (1 - rho 49261) = rho 49258 - rho 49259 - rho 49260 := ha5
      _ = (-1) * rho 49259 - rho 49260 + (seg52Out0AccY30 rho - seg52Out0AccX30 rho * (-1)) *
          (rho 49256 + rho 49257) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX31 rho = seg52Out0AccX30 rho - Bool.toZMod bit * (seg52Out0AccX30 rho - rho 49262) := by
    have hd : rho 49264 = Bool.toZMod bit * (rho 49262 - seg52Out0AccX30 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX30
      linear_combination -r4875
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY31 rho = seg52Out0AccY30 rho - Bool.toZMod bit * (seg52Out0AccY30 rho - rho 49263) := by
    have hd : rho 49265 = Bool.toZMod bit * (rho 49263 - seg52Out0AccY30 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY30
      linear_combination -r4876
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49256 * rho 49257 = rho 49266 := by linear_combination r4877
  have hd1 : rho 49256 * rho 49256 = rho 49267 := by linear_combination r4878
  have hd2 : rho 49257 * rho 49257 = rho 49268 := by linear_combination r4879
  have hd3 : rho 49269 * (rho 49257 * rho 49257 + rho 49256 * rho 49256 * (-1)) =
      2 * (rho 49256 * rho 49257) := by
    rw [hd0, hd1, hd2]
    linear_combination r4880
  have hd4 : rho 49270 * (2 - (rho 49257 * rho 49257 + rho 49256 * rho 49256 * (-1))) =
      rho 49257 * rho 49257 - rho 49256 * rho 49256 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4881
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX30 rho, seg52Out0AccY30 rho⟩ ⟨rho 49256, rho 49257⟩
    ⟨rho 49262, rho 49263⟩ ⟨seg52Out0AccX31 rho, seg52Out0AccY31 rho⟩ ⟨rho 49269, rho 49270⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows31 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4882 rho ∧ Seg52.relationRow4883 rho ∧ Seg52.relationRow4884 rho ∧ Seg52.relationRow4885 rho ∧ Seg52.relationRow4886 rho ∧ Seg52.relationRow4887 rho ∧ Seg52.relationRow4888 rho ∧ Seg52.relationRow4889 rho ∧ Seg52.relationRow4890 rho ∧ Seg52.relationRow4891 rho ∧ Seg52.relationRow4892 rho ∧ Seg52.relationRow4893 rho ∧ Seg52.relationRow4894 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart61 at p61

  rcases p61 with ⟨_, _, r4882, r4883, r4884, r4885, r4886, r4887, r4888, r4889, r4890, r4891, r4892, r4893, r4894, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4882, r4883, r4884, r4885, r4886, r4887, r4888, r4889, r4890, r4891, r4892, r4893, r4894⟩

theorem seg52Out0_rung31 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48777 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX31 rho, seg52Out0AccY31 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49269, rho 49270⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX31 rho, seg52Out0AccY31 rho⟩ ⟨rho 49269, rho 49270⟩
        ⟨seg52Out0AccX32 rho, seg52Out0AccY32 rho⟩ ⟨rho 49282, rho 49283⟩ := by
  obtain ⟨r4882, r4883, r4884, r4885, r4886, r4887, r4888, r4889, r4890, r4891, r4892, r4893, r4894⟩ := seg52Out0_rows31 rho h
  unfold Seg52.relationRow4882 at r4882

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4882

  unfold Seg52.relationRow4883 at r4883

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4883

  unfold Seg52.relationRow4884 at r4884

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4884

  unfold Seg52.relationRow4885 at r4885

  unfold Seg52.relationRow4886 at r4886

  unfold Seg52.relationRow4887 at r4887

  unfold Seg52.relationRow4888 at r4888

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4888

  unfold Seg52.relationRow4889 at r4889

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4889

  unfold Seg52.relationRow4890 at r4890

  unfold Seg52.relationRow4891 at r4891

  unfold Seg52.relationRow4892 at r4892

  unfold Seg52.relationRow4893 at r4893

  unfold Seg52.relationRow4894 at r4894

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX32 rho = seg52Out0AccX31 rho + rho 49277 := by
    unfold seg52Out0AccX32 seg52Out0AccX31
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 31]

    ring

  have hnexty : seg52Out0AccY32 rho = seg52Out0AccY31 rho + rho 49278 := by
    unfold seg52Out0AccY32 seg52Out0AccY31
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 31]

    ring

  have ha0 : (rho 49269 + rho 49270) * (seg52Out0AccX31 rho + seg52Out0AccY31 rho) = rho 49271 := by
    unfold seg52Out0AccX31 seg52Out0AccY31
    linear_combination r4882
  have ha1 : rho 49270 * seg52Out0AccX31 rho = rho 49272 := by
    unfold seg52Out0AccX31
    linear_combination r4883
  have ha2 : rho 49269 * seg52Out0AccY31 rho = rho 49273 := by
    unfold seg52Out0AccY31
    linear_combination r4884
  have ha3 : 3021 * rho 49272 * rho 49273 = rho 49274 := by
    linear_combination r4885
  have ha4 : rho 49275 * (1 + rho 49274) = rho 49272 + rho 49273 := by
    linear_combination r4886
  have ha5 : rho 49276 * (1 - rho 49274) = rho 49271 - rho 49272 - rho 49273 := by
    linear_combination r4887
  have haddx :
      rho 49275 * (1 + 3021 * (rho 49270 * seg52Out0AccX31 rho) * (rho 49269 * seg52Out0AccY31 rho)) =
        rho 49270 * seg52Out0AccX31 rho + rho 49269 * seg52Out0AccY31 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49276 * (1 - 3021 * (rho 49270 * seg52Out0AccX31 rho) * (rho 49269 * seg52Out0AccY31 rho)) =
        (-1) * (rho 49270 * seg52Out0AccX31 rho) - rho 49269 * seg52Out0AccY31 rho +
          (seg52Out0AccY31 rho - seg52Out0AccX31 rho * (-1)) * (rho 49269 + rho 49270) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49276 * (1 - rho 49274) = rho 49271 - rho 49272 - rho 49273 := ha5
      _ = (-1) * rho 49272 - rho 49273 + (seg52Out0AccY31 rho - seg52Out0AccX31 rho * (-1)) *
          (rho 49269 + rho 49270) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX32 rho = seg52Out0AccX31 rho - Bool.toZMod bit * (seg52Out0AccX31 rho - rho 49275) := by
    have hd : rho 49277 = Bool.toZMod bit * (rho 49275 - seg52Out0AccX31 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX31
      linear_combination -r4888
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY32 rho = seg52Out0AccY31 rho - Bool.toZMod bit * (seg52Out0AccY31 rho - rho 49276) := by
    have hd : rho 49278 = Bool.toZMod bit * (rho 49276 - seg52Out0AccY31 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY31
      linear_combination -r4889
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49269 * rho 49270 = rho 49279 := by linear_combination r4890
  have hd1 : rho 49269 * rho 49269 = rho 49280 := by linear_combination r4891
  have hd2 : rho 49270 * rho 49270 = rho 49281 := by linear_combination r4892
  have hd3 : rho 49282 * (rho 49270 * rho 49270 + rho 49269 * rho 49269 * (-1)) =
      2 * (rho 49269 * rho 49270) := by
    rw [hd0, hd1, hd2]
    linear_combination r4893
  have hd4 : rho 49283 * (2 - (rho 49270 * rho 49270 + rho 49269 * rho 49269 * (-1))) =
      rho 49270 * rho 49270 - rho 49269 * rho 49269 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4894
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX31 rho, seg52Out0AccY31 rho⟩ ⟨rho 49269, rho 49270⟩
    ⟨rho 49275, rho 49276⟩ ⟨seg52Out0AccX32 rho, seg52Out0AccY32 rho⟩ ⟨rho 49282, rho 49283⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows32 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4895 rho ∧ Seg52.relationRow4896 rho ∧ Seg52.relationRow4897 rho ∧ Seg52.relationRow4898 rho ∧ Seg52.relationRow4899 rho ∧ Seg52.relationRow4900 rho ∧ Seg52.relationRow4901 rho ∧ Seg52.relationRow4902 rho ∧ Seg52.relationRow4903 rho ∧ Seg52.relationRow4904 rho ∧ Seg52.relationRow4905 rho ∧ Seg52.relationRow4906 rho ∧ Seg52.relationRow4907 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart61 at p61

  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4895, r4896, r4897, r4898, r4899, r4900, r4901, r4902, r4903, r4904, r4905, r4906, r4907, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4895, r4896, r4897, r4898, r4899, r4900, r4901, r4902, r4903, r4904, r4905, r4906, r4907⟩

theorem seg52Out0_rung32 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48778 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX32 rho, seg52Out0AccY32 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49282, rho 49283⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX32 rho, seg52Out0AccY32 rho⟩ ⟨rho 49282, rho 49283⟩
        ⟨seg52Out0AccX33 rho, seg52Out0AccY33 rho⟩ ⟨rho 49295, rho 49296⟩ := by
  obtain ⟨r4895, r4896, r4897, r4898, r4899, r4900, r4901, r4902, r4903, r4904, r4905, r4906, r4907⟩ := seg52Out0_rows32 rho h
  unfold Seg52.relationRow4895 at r4895

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4895

  unfold Seg52.relationRow4896 at r4896

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4896

  unfold Seg52.relationRow4897 at r4897

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4897

  unfold Seg52.relationRow4898 at r4898

  unfold Seg52.relationRow4899 at r4899

  unfold Seg52.relationRow4900 at r4900

  unfold Seg52.relationRow4901 at r4901

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4901

  unfold Seg52.relationRow4902 at r4902

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4902

  unfold Seg52.relationRow4903 at r4903

  unfold Seg52.relationRow4904 at r4904

  unfold Seg52.relationRow4905 at r4905

  unfold Seg52.relationRow4906 at r4906

  unfold Seg52.relationRow4907 at r4907

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX33 rho = seg52Out0AccX32 rho + rho 49290 := by
    unfold seg52Out0AccX33 seg52Out0AccX32
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 32]

    ring

  have hnexty : seg52Out0AccY33 rho = seg52Out0AccY32 rho + rho 49291 := by
    unfold seg52Out0AccY33 seg52Out0AccY32
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 32]

    ring

  have ha0 : (rho 49282 + rho 49283) * (seg52Out0AccX32 rho + seg52Out0AccY32 rho) = rho 49284 := by
    unfold seg52Out0AccX32 seg52Out0AccY32
    linear_combination r4895
  have ha1 : rho 49283 * seg52Out0AccX32 rho = rho 49285 := by
    unfold seg52Out0AccX32
    linear_combination r4896
  have ha2 : rho 49282 * seg52Out0AccY32 rho = rho 49286 := by
    unfold seg52Out0AccY32
    linear_combination r4897
  have ha3 : 3021 * rho 49285 * rho 49286 = rho 49287 := by
    linear_combination r4898
  have ha4 : rho 49288 * (1 + rho 49287) = rho 49285 + rho 49286 := by
    linear_combination r4899
  have ha5 : rho 49289 * (1 - rho 49287) = rho 49284 - rho 49285 - rho 49286 := by
    linear_combination r4900
  have haddx :
      rho 49288 * (1 + 3021 * (rho 49283 * seg52Out0AccX32 rho) * (rho 49282 * seg52Out0AccY32 rho)) =
        rho 49283 * seg52Out0AccX32 rho + rho 49282 * seg52Out0AccY32 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49289 * (1 - 3021 * (rho 49283 * seg52Out0AccX32 rho) * (rho 49282 * seg52Out0AccY32 rho)) =
        (-1) * (rho 49283 * seg52Out0AccX32 rho) - rho 49282 * seg52Out0AccY32 rho +
          (seg52Out0AccY32 rho - seg52Out0AccX32 rho * (-1)) * (rho 49282 + rho 49283) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49289 * (1 - rho 49287) = rho 49284 - rho 49285 - rho 49286 := ha5
      _ = (-1) * rho 49285 - rho 49286 + (seg52Out0AccY32 rho - seg52Out0AccX32 rho * (-1)) *
          (rho 49282 + rho 49283) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX33 rho = seg52Out0AccX32 rho - Bool.toZMod bit * (seg52Out0AccX32 rho - rho 49288) := by
    have hd : rho 49290 = Bool.toZMod bit * (rho 49288 - seg52Out0AccX32 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX32
      linear_combination -r4901
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY33 rho = seg52Out0AccY32 rho - Bool.toZMod bit * (seg52Out0AccY32 rho - rho 49289) := by
    have hd : rho 49291 = Bool.toZMod bit * (rho 49289 - seg52Out0AccY32 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY32
      linear_combination -r4902
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49282 * rho 49283 = rho 49292 := by linear_combination r4903
  have hd1 : rho 49282 * rho 49282 = rho 49293 := by linear_combination r4904
  have hd2 : rho 49283 * rho 49283 = rho 49294 := by linear_combination r4905
  have hd3 : rho 49295 * (rho 49283 * rho 49283 + rho 49282 * rho 49282 * (-1)) =
      2 * (rho 49282 * rho 49283) := by
    rw [hd0, hd1, hd2]
    linear_combination r4906
  have hd4 : rho 49296 * (2 - (rho 49283 * rho 49283 + rho 49282 * rho 49282 * (-1))) =
      rho 49283 * rho 49283 - rho 49282 * rho 49282 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4907
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX32 rho, seg52Out0AccY32 rho⟩ ⟨rho 49282, rho 49283⟩
    ⟨rho 49288, rho 49289⟩ ⟨seg52Out0AccX33 rho, seg52Out0AccY33 rho⟩ ⟨rho 49295, rho 49296⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_hstep_c2 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (48746 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 22 ≤ i → i < 33 →
      EdwardsBridge.onCurve (seg52Out0AccState rho i) →
      EdwardsBridge.onCurve (seg52Out0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52Out0AccState rho i) (seg52Out0CurState rho i)
        (seg52Out0AccState rho (i + 1)) (seg52Out0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52Out0_rung22 rho h bits[22]! (hbitAt 22 (by omega)) hacc hcur
  · exact seg52Out0_rung23 rho h bits[23]! (hbitAt 23 (by omega)) hacc hcur
  · exact seg52Out0_rung24 rho h bits[24]! (hbitAt 24 (by omega)) hacc hcur
  · exact seg52Out0_rung25 rho h bits[25]! (hbitAt 25 (by omega)) hacc hcur
  · exact seg52Out0_rung26 rho h bits[26]! (hbitAt 26 (by omega)) hacc hcur
  · exact seg52Out0_rung27 rho h bits[27]! (hbitAt 27 (by omega)) hacc hcur
  · exact seg52Out0_rung28 rho h bits[28]! (hbitAt 28 (by omega)) hacc hcur
  · exact seg52Out0_rung29 rho h bits[29]! (hbitAt 29 (by omega)) hacc hcur
  · exact seg52Out0_rung30 rho h bits[30]! (hbitAt 30 (by omega)) hacc hcur
  · exact seg52Out0_rung31 rho h bits[31]! (hbitAt 31 (by omega)) hacc hcur
  · exact seg52Out0_rung32 rho h bits[32]! (hbitAt 32 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
