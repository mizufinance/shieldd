import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Out0_rows99 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5766 rho ∧ Seg52.relationRow5767 rho ∧ Seg52.relationRow5768 rho ∧ Seg52.relationRow5769 rho ∧ Seg52.relationRow5770 rho ∧ Seg52.relationRow5771 rho ∧ Seg52.relationRow5772 rho ∧ Seg52.relationRow5773 rho ∧ Seg52.relationRow5774 rho ∧ Seg52.relationRow5775 rho ∧ Seg52.relationRow5776 rho ∧ Seg52.relationRow5777 rho ∧ Seg52.relationRow5778 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p72, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart72 at p72

  rcases p72 with ⟨_, _, _, _, _, _, r5766, r5767, r5768, r5769, r5770, r5771, r5772, r5773, r5774, r5775, r5776, r5777, r5778, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5766, r5767, r5768, r5769, r5770, r5771, r5772, r5773, r5774, r5775, r5776, r5777, r5778⟩

theorem seg52Out0_rung99 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48845 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX99 rho, seg52Out0AccY99 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50153, rho 50154⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX99 rho, seg52Out0AccY99 rho⟩ ⟨rho 50153, rho 50154⟩
        ⟨seg52Out0AccX100 rho, seg52Out0AccY100 rho⟩ ⟨rho 50166, rho 50167⟩ := by
  obtain ⟨r5766, r5767, r5768, r5769, r5770, r5771, r5772, r5773, r5774, r5775, r5776, r5777, r5778⟩ := seg52Out0_rows99 rho h
  unfold Seg52.relationRow5766 at r5766

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5766

  unfold Seg52.relationRow5767 at r5767

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5767

  unfold Seg52.relationRow5768 at r5768

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5768

  unfold Seg52.relationRow5769 at r5769

  unfold Seg52.relationRow5770 at r5770

  unfold Seg52.relationRow5771 at r5771

  unfold Seg52.relationRow5772 at r5772

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5772

  unfold Seg52.relationRow5773 at r5773

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5773

  unfold Seg52.relationRow5774 at r5774

  unfold Seg52.relationRow5775 at r5775

  unfold Seg52.relationRow5776 at r5776

  unfold Seg52.relationRow5777 at r5777

  unfold Seg52.relationRow5778 at r5778

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX100 rho = seg52Out0AccX99 rho + rho 50161 := by
    unfold seg52Out0AccX100 seg52Out0AccX99
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 99]

    ring

  have hnexty : seg52Out0AccY100 rho = seg52Out0AccY99 rho + rho 50162 := by
    unfold seg52Out0AccY100 seg52Out0AccY99
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 99]

    ring

  have ha0 : (rho 50153 + rho 50154) * (seg52Out0AccX99 rho + seg52Out0AccY99 rho) = rho 50155 := by
    unfold seg52Out0AccX99 seg52Out0AccY99
    linear_combination r5766
  have ha1 : rho 50154 * seg52Out0AccX99 rho = rho 50156 := by
    unfold seg52Out0AccX99
    linear_combination r5767
  have ha2 : rho 50153 * seg52Out0AccY99 rho = rho 50157 := by
    unfold seg52Out0AccY99
    linear_combination r5768
  have ha3 : 3021 * rho 50156 * rho 50157 = rho 50158 := by
    linear_combination r5769
  have ha4 : rho 50159 * (1 + rho 50158) = rho 50156 + rho 50157 := by
    linear_combination r5770
  have ha5 : rho 50160 * (1 - rho 50158) = rho 50155 - rho 50156 - rho 50157 := by
    linear_combination r5771
  have haddx :
      rho 50159 * (1 + 3021 * (rho 50154 * seg52Out0AccX99 rho) * (rho 50153 * seg52Out0AccY99 rho)) =
        rho 50154 * seg52Out0AccX99 rho + rho 50153 * seg52Out0AccY99 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50160 * (1 - 3021 * (rho 50154 * seg52Out0AccX99 rho) * (rho 50153 * seg52Out0AccY99 rho)) =
        (-1) * (rho 50154 * seg52Out0AccX99 rho) - rho 50153 * seg52Out0AccY99 rho +
          (seg52Out0AccY99 rho - seg52Out0AccX99 rho * (-1)) * (rho 50153 + rho 50154) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50160 * (1 - rho 50158) = rho 50155 - rho 50156 - rho 50157 := ha5
      _ = (-1) * rho 50156 - rho 50157 + (seg52Out0AccY99 rho - seg52Out0AccX99 rho * (-1)) *
          (rho 50153 + rho 50154) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX100 rho = seg52Out0AccX99 rho - Bool.toZMod bit * (seg52Out0AccX99 rho - rho 50159) := by
    have hd : rho 50161 = Bool.toZMod bit * (rho 50159 - seg52Out0AccX99 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX99
      linear_combination -r5772
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY100 rho = seg52Out0AccY99 rho - Bool.toZMod bit * (seg52Out0AccY99 rho - rho 50160) := by
    have hd : rho 50162 = Bool.toZMod bit * (rho 50160 - seg52Out0AccY99 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY99
      linear_combination -r5773
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50153 * rho 50154 = rho 50163 := by linear_combination r5774
  have hd1 : rho 50153 * rho 50153 = rho 50164 := by linear_combination r5775
  have hd2 : rho 50154 * rho 50154 = rho 50165 := by linear_combination r5776
  have hd3 : rho 50166 * (rho 50154 * rho 50154 + rho 50153 * rho 50153 * (-1)) =
      2 * (rho 50153 * rho 50154) := by
    rw [hd0, hd1, hd2]
    linear_combination r5777
  have hd4 : rho 50167 * (2 - (rho 50154 * rho 50154 + rho 50153 * rho 50153 * (-1))) =
      rho 50154 * rho 50154 - rho 50153 * rho 50153 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5778
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX99 rho, seg52Out0AccY99 rho⟩ ⟨rho 50153, rho 50154⟩
    ⟨rho 50159, rho 50160⟩ ⟨seg52Out0AccX100 rho, seg52Out0AccY100 rho⟩ ⟨rho 50166, rho 50167⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows100 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5779 rho ∧ Seg52.relationRow5780 rho ∧ Seg52.relationRow5781 rho ∧ Seg52.relationRow5782 rho ∧ Seg52.relationRow5783 rho ∧ Seg52.relationRow5784 rho ∧ Seg52.relationRow5785 rho ∧ Seg52.relationRow5786 rho ∧ Seg52.relationRow5787 rho ∧ Seg52.relationRow5788 rho ∧ Seg52.relationRow5789 rho ∧ Seg52.relationRow5790 rho ∧ Seg52.relationRow5791 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p72, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart72 at p72

  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5779, r5780, r5781, r5782, r5783, r5784, r5785, r5786, r5787, r5788, r5789, r5790, r5791, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5779, r5780, r5781, r5782, r5783, r5784, r5785, r5786, r5787, r5788, r5789, r5790, r5791⟩

theorem seg52Out0_rung100 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48846 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX100 rho, seg52Out0AccY100 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50166, rho 50167⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX100 rho, seg52Out0AccY100 rho⟩ ⟨rho 50166, rho 50167⟩
        ⟨seg52Out0AccX101 rho, seg52Out0AccY101 rho⟩ ⟨rho 50179, rho 50180⟩ := by
  obtain ⟨r5779, r5780, r5781, r5782, r5783, r5784, r5785, r5786, r5787, r5788, r5789, r5790, r5791⟩ := seg52Out0_rows100 rho h
  unfold Seg52.relationRow5779 at r5779

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5779

  unfold Seg52.relationRow5780 at r5780

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5780

  unfold Seg52.relationRow5781 at r5781

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5781

  unfold Seg52.relationRow5782 at r5782

  unfold Seg52.relationRow5783 at r5783

  unfold Seg52.relationRow5784 at r5784

  unfold Seg52.relationRow5785 at r5785

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5785

  unfold Seg52.relationRow5786 at r5786

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5786

  unfold Seg52.relationRow5787 at r5787

  unfold Seg52.relationRow5788 at r5788

  unfold Seg52.relationRow5789 at r5789

  unfold Seg52.relationRow5790 at r5790

  unfold Seg52.relationRow5791 at r5791

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX101 rho = seg52Out0AccX100 rho + rho 50174 := by
    unfold seg52Out0AccX101 seg52Out0AccX100
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 100]

    ring

  have hnexty : seg52Out0AccY101 rho = seg52Out0AccY100 rho + rho 50175 := by
    unfold seg52Out0AccY101 seg52Out0AccY100
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 100]

    ring

  have ha0 : (rho 50166 + rho 50167) * (seg52Out0AccX100 rho + seg52Out0AccY100 rho) = rho 50168 := by
    unfold seg52Out0AccX100 seg52Out0AccY100
    linear_combination r5779
  have ha1 : rho 50167 * seg52Out0AccX100 rho = rho 50169 := by
    unfold seg52Out0AccX100
    linear_combination r5780
  have ha2 : rho 50166 * seg52Out0AccY100 rho = rho 50170 := by
    unfold seg52Out0AccY100
    linear_combination r5781
  have ha3 : 3021 * rho 50169 * rho 50170 = rho 50171 := by
    linear_combination r5782
  have ha4 : rho 50172 * (1 + rho 50171) = rho 50169 + rho 50170 := by
    linear_combination r5783
  have ha5 : rho 50173 * (1 - rho 50171) = rho 50168 - rho 50169 - rho 50170 := by
    linear_combination r5784
  have haddx :
      rho 50172 * (1 + 3021 * (rho 50167 * seg52Out0AccX100 rho) * (rho 50166 * seg52Out0AccY100 rho)) =
        rho 50167 * seg52Out0AccX100 rho + rho 50166 * seg52Out0AccY100 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50173 * (1 - 3021 * (rho 50167 * seg52Out0AccX100 rho) * (rho 50166 * seg52Out0AccY100 rho)) =
        (-1) * (rho 50167 * seg52Out0AccX100 rho) - rho 50166 * seg52Out0AccY100 rho +
          (seg52Out0AccY100 rho - seg52Out0AccX100 rho * (-1)) * (rho 50166 + rho 50167) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50173 * (1 - rho 50171) = rho 50168 - rho 50169 - rho 50170 := ha5
      _ = (-1) * rho 50169 - rho 50170 + (seg52Out0AccY100 rho - seg52Out0AccX100 rho * (-1)) *
          (rho 50166 + rho 50167) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX101 rho = seg52Out0AccX100 rho - Bool.toZMod bit * (seg52Out0AccX100 rho - rho 50172) := by
    have hd : rho 50174 = Bool.toZMod bit * (rho 50172 - seg52Out0AccX100 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX100
      linear_combination -r5785
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY101 rho = seg52Out0AccY100 rho - Bool.toZMod bit * (seg52Out0AccY100 rho - rho 50173) := by
    have hd : rho 50175 = Bool.toZMod bit * (rho 50173 - seg52Out0AccY100 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY100
      linear_combination -r5786
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50166 * rho 50167 = rho 50176 := by linear_combination r5787
  have hd1 : rho 50166 * rho 50166 = rho 50177 := by linear_combination r5788
  have hd2 : rho 50167 * rho 50167 = rho 50178 := by linear_combination r5789
  have hd3 : rho 50179 * (rho 50167 * rho 50167 + rho 50166 * rho 50166 * (-1)) =
      2 * (rho 50166 * rho 50167) := by
    rw [hd0, hd1, hd2]
    linear_combination r5790
  have hd4 : rho 50180 * (2 - (rho 50167 * rho 50167 + rho 50166 * rho 50166 * (-1))) =
      rho 50167 * rho 50167 - rho 50166 * rho 50166 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5791
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX100 rho, seg52Out0AccY100 rho⟩ ⟨rho 50166, rho 50167⟩
    ⟨rho 50172, rho 50173⟩ ⟨seg52Out0AccX101 rho, seg52Out0AccY101 rho⟩ ⟨rho 50179, rho 50180⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows101 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5792 rho ∧ Seg52.relationRow5793 rho ∧ Seg52.relationRow5794 rho ∧ Seg52.relationRow5795 rho ∧ Seg52.relationRow5796 rho ∧ Seg52.relationRow5797 rho ∧ Seg52.relationRow5798 rho ∧ Seg52.relationRow5799 rho ∧ Seg52.relationRow5800 rho ∧ Seg52.relationRow5801 rho ∧ Seg52.relationRow5802 rho ∧ Seg52.relationRow5803 rho ∧ Seg52.relationRow5804 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p72, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart72 at p72

  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5792, r5793, r5794, r5795, r5796, r5797, r5798, r5799, r5800, r5801, r5802, r5803, r5804, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5792, r5793, r5794, r5795, r5796, r5797, r5798, r5799, r5800, r5801, r5802, r5803, r5804⟩

theorem seg52Out0_rung101 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48847 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX101 rho, seg52Out0AccY101 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50179, rho 50180⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX101 rho, seg52Out0AccY101 rho⟩ ⟨rho 50179, rho 50180⟩
        ⟨seg52Out0AccX102 rho, seg52Out0AccY102 rho⟩ ⟨rho 50192, rho 50193⟩ := by
  obtain ⟨r5792, r5793, r5794, r5795, r5796, r5797, r5798, r5799, r5800, r5801, r5802, r5803, r5804⟩ := seg52Out0_rows101 rho h
  unfold Seg52.relationRow5792 at r5792

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5792

  unfold Seg52.relationRow5793 at r5793

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5793

  unfold Seg52.relationRow5794 at r5794

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5794

  unfold Seg52.relationRow5795 at r5795

  unfold Seg52.relationRow5796 at r5796

  unfold Seg52.relationRow5797 at r5797

  unfold Seg52.relationRow5798 at r5798

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5798

  unfold Seg52.relationRow5799 at r5799

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5799

  unfold Seg52.relationRow5800 at r5800

  unfold Seg52.relationRow5801 at r5801

  unfold Seg52.relationRow5802 at r5802

  unfold Seg52.relationRow5803 at r5803

  unfold Seg52.relationRow5804 at r5804

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX102 rho = seg52Out0AccX101 rho + rho 50187 := by
    unfold seg52Out0AccX102 seg52Out0AccX101
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 101]

    ring

  have hnexty : seg52Out0AccY102 rho = seg52Out0AccY101 rho + rho 50188 := by
    unfold seg52Out0AccY102 seg52Out0AccY101
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 101]

    ring

  have ha0 : (rho 50179 + rho 50180) * (seg52Out0AccX101 rho + seg52Out0AccY101 rho) = rho 50181 := by
    unfold seg52Out0AccX101 seg52Out0AccY101
    linear_combination r5792
  have ha1 : rho 50180 * seg52Out0AccX101 rho = rho 50182 := by
    unfold seg52Out0AccX101
    linear_combination r5793
  have ha2 : rho 50179 * seg52Out0AccY101 rho = rho 50183 := by
    unfold seg52Out0AccY101
    linear_combination r5794
  have ha3 : 3021 * rho 50182 * rho 50183 = rho 50184 := by
    linear_combination r5795
  have ha4 : rho 50185 * (1 + rho 50184) = rho 50182 + rho 50183 := by
    linear_combination r5796
  have ha5 : rho 50186 * (1 - rho 50184) = rho 50181 - rho 50182 - rho 50183 := by
    linear_combination r5797
  have haddx :
      rho 50185 * (1 + 3021 * (rho 50180 * seg52Out0AccX101 rho) * (rho 50179 * seg52Out0AccY101 rho)) =
        rho 50180 * seg52Out0AccX101 rho + rho 50179 * seg52Out0AccY101 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50186 * (1 - 3021 * (rho 50180 * seg52Out0AccX101 rho) * (rho 50179 * seg52Out0AccY101 rho)) =
        (-1) * (rho 50180 * seg52Out0AccX101 rho) - rho 50179 * seg52Out0AccY101 rho +
          (seg52Out0AccY101 rho - seg52Out0AccX101 rho * (-1)) * (rho 50179 + rho 50180) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50186 * (1 - rho 50184) = rho 50181 - rho 50182 - rho 50183 := ha5
      _ = (-1) * rho 50182 - rho 50183 + (seg52Out0AccY101 rho - seg52Out0AccX101 rho * (-1)) *
          (rho 50179 + rho 50180) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX102 rho = seg52Out0AccX101 rho - Bool.toZMod bit * (seg52Out0AccX101 rho - rho 50185) := by
    have hd : rho 50187 = Bool.toZMod bit * (rho 50185 - seg52Out0AccX101 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX101
      linear_combination -r5798
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY102 rho = seg52Out0AccY101 rho - Bool.toZMod bit * (seg52Out0AccY101 rho - rho 50186) := by
    have hd : rho 50188 = Bool.toZMod bit * (rho 50186 - seg52Out0AccY101 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY101
      linear_combination -r5799
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50179 * rho 50180 = rho 50189 := by linear_combination r5800
  have hd1 : rho 50179 * rho 50179 = rho 50190 := by linear_combination r5801
  have hd2 : rho 50180 * rho 50180 = rho 50191 := by linear_combination r5802
  have hd3 : rho 50192 * (rho 50180 * rho 50180 + rho 50179 * rho 50179 * (-1)) =
      2 * (rho 50179 * rho 50180) := by
    rw [hd0, hd1, hd2]
    linear_combination r5803
  have hd4 : rho 50193 * (2 - (rho 50180 * rho 50180 + rho 50179 * rho 50179 * (-1))) =
      rho 50180 * rho 50180 - rho 50179 * rho 50179 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5804
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX101 rho, seg52Out0AccY101 rho⟩ ⟨rho 50179, rho 50180⟩
    ⟨rho 50185, rho 50186⟩ ⟨seg52Out0AccX102 rho, seg52Out0AccY102 rho⟩ ⟨rho 50192, rho 50193⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows102 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5805 rho ∧ Seg52.relationRow5806 rho ∧ Seg52.relationRow5807 rho ∧ Seg52.relationRow5808 rho ∧ Seg52.relationRow5809 rho ∧ Seg52.relationRow5810 rho ∧ Seg52.relationRow5811 rho ∧ Seg52.relationRow5812 rho ∧ Seg52.relationRow5813 rho ∧ Seg52.relationRow5814 rho ∧ Seg52.relationRow5815 rho ∧ Seg52.relationRow5816 rho ∧ Seg52.relationRow5817 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p72, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart72 at p72

  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5805, r5806, r5807, r5808, r5809, r5810, r5811, r5812, r5813, r5814, r5815, r5816, r5817, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5805, r5806, r5807, r5808, r5809, r5810, r5811, r5812, r5813, r5814, r5815, r5816, r5817⟩

theorem seg52Out0_rung102 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48848 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX102 rho, seg52Out0AccY102 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50192, rho 50193⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX102 rho, seg52Out0AccY102 rho⟩ ⟨rho 50192, rho 50193⟩
        ⟨seg52Out0AccX103 rho, seg52Out0AccY103 rho⟩ ⟨rho 50205, rho 50206⟩ := by
  obtain ⟨r5805, r5806, r5807, r5808, r5809, r5810, r5811, r5812, r5813, r5814, r5815, r5816, r5817⟩ := seg52Out0_rows102 rho h
  unfold Seg52.relationRow5805 at r5805

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5805

  unfold Seg52.relationRow5806 at r5806

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5806

  unfold Seg52.relationRow5807 at r5807

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5807

  unfold Seg52.relationRow5808 at r5808

  unfold Seg52.relationRow5809 at r5809

  unfold Seg52.relationRow5810 at r5810

  unfold Seg52.relationRow5811 at r5811

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5811

  unfold Seg52.relationRow5812 at r5812

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5812

  unfold Seg52.relationRow5813 at r5813

  unfold Seg52.relationRow5814 at r5814

  unfold Seg52.relationRow5815 at r5815

  unfold Seg52.relationRow5816 at r5816

  unfold Seg52.relationRow5817 at r5817

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX103 rho = seg52Out0AccX102 rho + rho 50200 := by
    unfold seg52Out0AccX103 seg52Out0AccX102
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 102]

    ring

  have hnexty : seg52Out0AccY103 rho = seg52Out0AccY102 rho + rho 50201 := by
    unfold seg52Out0AccY103 seg52Out0AccY102
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 102]

    ring

  have ha0 : (rho 50192 + rho 50193) * (seg52Out0AccX102 rho + seg52Out0AccY102 rho) = rho 50194 := by
    unfold seg52Out0AccX102 seg52Out0AccY102
    linear_combination r5805
  have ha1 : rho 50193 * seg52Out0AccX102 rho = rho 50195 := by
    unfold seg52Out0AccX102
    linear_combination r5806
  have ha2 : rho 50192 * seg52Out0AccY102 rho = rho 50196 := by
    unfold seg52Out0AccY102
    linear_combination r5807
  have ha3 : 3021 * rho 50195 * rho 50196 = rho 50197 := by
    linear_combination r5808
  have ha4 : rho 50198 * (1 + rho 50197) = rho 50195 + rho 50196 := by
    linear_combination r5809
  have ha5 : rho 50199 * (1 - rho 50197) = rho 50194 - rho 50195 - rho 50196 := by
    linear_combination r5810
  have haddx :
      rho 50198 * (1 + 3021 * (rho 50193 * seg52Out0AccX102 rho) * (rho 50192 * seg52Out0AccY102 rho)) =
        rho 50193 * seg52Out0AccX102 rho + rho 50192 * seg52Out0AccY102 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50199 * (1 - 3021 * (rho 50193 * seg52Out0AccX102 rho) * (rho 50192 * seg52Out0AccY102 rho)) =
        (-1) * (rho 50193 * seg52Out0AccX102 rho) - rho 50192 * seg52Out0AccY102 rho +
          (seg52Out0AccY102 rho - seg52Out0AccX102 rho * (-1)) * (rho 50192 + rho 50193) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50199 * (1 - rho 50197) = rho 50194 - rho 50195 - rho 50196 := ha5
      _ = (-1) * rho 50195 - rho 50196 + (seg52Out0AccY102 rho - seg52Out0AccX102 rho * (-1)) *
          (rho 50192 + rho 50193) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX103 rho = seg52Out0AccX102 rho - Bool.toZMod bit * (seg52Out0AccX102 rho - rho 50198) := by
    have hd : rho 50200 = Bool.toZMod bit * (rho 50198 - seg52Out0AccX102 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX102
      linear_combination -r5811
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY103 rho = seg52Out0AccY102 rho - Bool.toZMod bit * (seg52Out0AccY102 rho - rho 50199) := by
    have hd : rho 50201 = Bool.toZMod bit * (rho 50199 - seg52Out0AccY102 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY102
      linear_combination -r5812
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50192 * rho 50193 = rho 50202 := by linear_combination r5813
  have hd1 : rho 50192 * rho 50192 = rho 50203 := by linear_combination r5814
  have hd2 : rho 50193 * rho 50193 = rho 50204 := by linear_combination r5815
  have hd3 : rho 50205 * (rho 50193 * rho 50193 + rho 50192 * rho 50192 * (-1)) =
      2 * (rho 50192 * rho 50193) := by
    rw [hd0, hd1, hd2]
    linear_combination r5816
  have hd4 : rho 50206 * (2 - (rho 50193 * rho 50193 + rho 50192 * rho 50192 * (-1))) =
      rho 50193 * rho 50193 - rho 50192 * rho 50192 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5817
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX102 rho, seg52Out0AccY102 rho⟩ ⟨rho 50192, rho 50193⟩
    ⟨rho 50198, rho 50199⟩ ⟨seg52Out0AccX103 rho, seg52Out0AccY103 rho⟩ ⟨rho 50205, rho 50206⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows103 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5818 rho ∧ Seg52.relationRow5819 rho ∧ Seg52.relationRow5820 rho ∧ Seg52.relationRow5821 rho ∧ Seg52.relationRow5822 rho ∧ Seg52.relationRow5823 rho ∧ Seg52.relationRow5824 rho ∧ Seg52.relationRow5825 rho ∧ Seg52.relationRow5826 rho ∧ Seg52.relationRow5827 rho ∧ Seg52.relationRow5828 rho ∧ Seg52.relationRow5829 rho ∧ Seg52.relationRow5830 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p72, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart72 at p72

  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5818, r5819, r5820, r5821, r5822, r5823, r5824, r5825, r5826, r5827, r5828, r5829, r5830, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5818, r5819, r5820, r5821, r5822, r5823, r5824, r5825, r5826, r5827, r5828, r5829, r5830⟩

theorem seg52Out0_rung103 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48849 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX103 rho, seg52Out0AccY103 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50205, rho 50206⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX103 rho, seg52Out0AccY103 rho⟩ ⟨rho 50205, rho 50206⟩
        ⟨seg52Out0AccX104 rho, seg52Out0AccY104 rho⟩ ⟨rho 50218, rho 50219⟩ := by
  obtain ⟨r5818, r5819, r5820, r5821, r5822, r5823, r5824, r5825, r5826, r5827, r5828, r5829, r5830⟩ := seg52Out0_rows103 rho h
  unfold Seg52.relationRow5818 at r5818

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5818

  unfold Seg52.relationRow5819 at r5819

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5819

  unfold Seg52.relationRow5820 at r5820

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5820

  unfold Seg52.relationRow5821 at r5821

  unfold Seg52.relationRow5822 at r5822

  unfold Seg52.relationRow5823 at r5823

  unfold Seg52.relationRow5824 at r5824

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5824

  unfold Seg52.relationRow5825 at r5825

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5825

  unfold Seg52.relationRow5826 at r5826

  unfold Seg52.relationRow5827 at r5827

  unfold Seg52.relationRow5828 at r5828

  unfold Seg52.relationRow5829 at r5829

  unfold Seg52.relationRow5830 at r5830

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX104 rho = seg52Out0AccX103 rho + rho 50213 := by
    unfold seg52Out0AccX104 seg52Out0AccX103
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 103]

    ring

  have hnexty : seg52Out0AccY104 rho = seg52Out0AccY103 rho + rho 50214 := by
    unfold seg52Out0AccY104 seg52Out0AccY103
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 103]

    ring

  have ha0 : (rho 50205 + rho 50206) * (seg52Out0AccX103 rho + seg52Out0AccY103 rho) = rho 50207 := by
    unfold seg52Out0AccX103 seg52Out0AccY103
    linear_combination r5818
  have ha1 : rho 50206 * seg52Out0AccX103 rho = rho 50208 := by
    unfold seg52Out0AccX103
    linear_combination r5819
  have ha2 : rho 50205 * seg52Out0AccY103 rho = rho 50209 := by
    unfold seg52Out0AccY103
    linear_combination r5820
  have ha3 : 3021 * rho 50208 * rho 50209 = rho 50210 := by
    linear_combination r5821
  have ha4 : rho 50211 * (1 + rho 50210) = rho 50208 + rho 50209 := by
    linear_combination r5822
  have ha5 : rho 50212 * (1 - rho 50210) = rho 50207 - rho 50208 - rho 50209 := by
    linear_combination r5823
  have haddx :
      rho 50211 * (1 + 3021 * (rho 50206 * seg52Out0AccX103 rho) * (rho 50205 * seg52Out0AccY103 rho)) =
        rho 50206 * seg52Out0AccX103 rho + rho 50205 * seg52Out0AccY103 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50212 * (1 - 3021 * (rho 50206 * seg52Out0AccX103 rho) * (rho 50205 * seg52Out0AccY103 rho)) =
        (-1) * (rho 50206 * seg52Out0AccX103 rho) - rho 50205 * seg52Out0AccY103 rho +
          (seg52Out0AccY103 rho - seg52Out0AccX103 rho * (-1)) * (rho 50205 + rho 50206) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50212 * (1 - rho 50210) = rho 50207 - rho 50208 - rho 50209 := ha5
      _ = (-1) * rho 50208 - rho 50209 + (seg52Out0AccY103 rho - seg52Out0AccX103 rho * (-1)) *
          (rho 50205 + rho 50206) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX104 rho = seg52Out0AccX103 rho - Bool.toZMod bit * (seg52Out0AccX103 rho - rho 50211) := by
    have hd : rho 50213 = Bool.toZMod bit * (rho 50211 - seg52Out0AccX103 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX103
      linear_combination -r5824
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY104 rho = seg52Out0AccY103 rho - Bool.toZMod bit * (seg52Out0AccY103 rho - rho 50212) := by
    have hd : rho 50214 = Bool.toZMod bit * (rho 50212 - seg52Out0AccY103 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY103
      linear_combination -r5825
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50205 * rho 50206 = rho 50215 := by linear_combination r5826
  have hd1 : rho 50205 * rho 50205 = rho 50216 := by linear_combination r5827
  have hd2 : rho 50206 * rho 50206 = rho 50217 := by linear_combination r5828
  have hd3 : rho 50218 * (rho 50206 * rho 50206 + rho 50205 * rho 50205 * (-1)) =
      2 * (rho 50205 * rho 50206) := by
    rw [hd0, hd1, hd2]
    linear_combination r5829
  have hd4 : rho 50219 * (2 - (rho 50206 * rho 50206 + rho 50205 * rho 50205 * (-1))) =
      rho 50206 * rho 50206 - rho 50205 * rho 50205 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5830
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX103 rho, seg52Out0AccY103 rho⟩ ⟨rho 50205, rho 50206⟩
    ⟨rho 50211, rho 50212⟩ ⟨seg52Out0AccX104 rho, seg52Out0AccY104 rho⟩ ⟨rho 50218, rho 50219⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows104 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5831 rho ∧ Seg52.relationRow5832 rho ∧ Seg52.relationRow5833 rho ∧ Seg52.relationRow5834 rho ∧ Seg52.relationRow5835 rho ∧ Seg52.relationRow5836 rho ∧ Seg52.relationRow5837 rho ∧ Seg52.relationRow5838 rho ∧ Seg52.relationRow5839 rho ∧ Seg52.relationRow5840 rho ∧ Seg52.relationRow5841 rho ∧ Seg52.relationRow5842 rho ∧ Seg52.relationRow5843 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p72, p73, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart72 at p72

  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5831, r5832, r5833, r5834, r5835, r5836, r5837, r5838, r5839⟩

  unfold Seg52.relationPart73 at p73

  rcases p73 with ⟨r5840, r5841, r5842, r5843, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5831, r5832, r5833, r5834, r5835, r5836, r5837, r5838, r5839, r5840, r5841, r5842, r5843⟩

theorem seg52Out0_rung104 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48850 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX104 rho, seg52Out0AccY104 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50218, rho 50219⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX104 rho, seg52Out0AccY104 rho⟩ ⟨rho 50218, rho 50219⟩
        ⟨seg52Out0AccX105 rho, seg52Out0AccY105 rho⟩ ⟨rho 50231, rho 50232⟩ := by
  obtain ⟨r5831, r5832, r5833, r5834, r5835, r5836, r5837, r5838, r5839, r5840, r5841, r5842, r5843⟩ := seg52Out0_rows104 rho h
  unfold Seg52.relationRow5831 at r5831

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5831

  unfold Seg52.relationRow5832 at r5832

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5832

  unfold Seg52.relationRow5833 at r5833

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5833

  unfold Seg52.relationRow5834 at r5834

  unfold Seg52.relationRow5835 at r5835

  unfold Seg52.relationRow5836 at r5836

  unfold Seg52.relationRow5837 at r5837

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5837

  unfold Seg52.relationRow5838 at r5838

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5838

  unfold Seg52.relationRow5839 at r5839

  unfold Seg52.relationRow5840 at r5840

  unfold Seg52.relationRow5841 at r5841

  unfold Seg52.relationRow5842 at r5842

  unfold Seg52.relationRow5843 at r5843

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX105 rho = seg52Out0AccX104 rho + rho 50226 := by
    unfold seg52Out0AccX105 seg52Out0AccX104
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 104]

    ring

  have hnexty : seg52Out0AccY105 rho = seg52Out0AccY104 rho + rho 50227 := by
    unfold seg52Out0AccY105 seg52Out0AccY104
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 104]

    ring

  have ha0 : (rho 50218 + rho 50219) * (seg52Out0AccX104 rho + seg52Out0AccY104 rho) = rho 50220 := by
    unfold seg52Out0AccX104 seg52Out0AccY104
    linear_combination r5831
  have ha1 : rho 50219 * seg52Out0AccX104 rho = rho 50221 := by
    unfold seg52Out0AccX104
    linear_combination r5832
  have ha2 : rho 50218 * seg52Out0AccY104 rho = rho 50222 := by
    unfold seg52Out0AccY104
    linear_combination r5833
  have ha3 : 3021 * rho 50221 * rho 50222 = rho 50223 := by
    linear_combination r5834
  have ha4 : rho 50224 * (1 + rho 50223) = rho 50221 + rho 50222 := by
    linear_combination r5835
  have ha5 : rho 50225 * (1 - rho 50223) = rho 50220 - rho 50221 - rho 50222 := by
    linear_combination r5836
  have haddx :
      rho 50224 * (1 + 3021 * (rho 50219 * seg52Out0AccX104 rho) * (rho 50218 * seg52Out0AccY104 rho)) =
        rho 50219 * seg52Out0AccX104 rho + rho 50218 * seg52Out0AccY104 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50225 * (1 - 3021 * (rho 50219 * seg52Out0AccX104 rho) * (rho 50218 * seg52Out0AccY104 rho)) =
        (-1) * (rho 50219 * seg52Out0AccX104 rho) - rho 50218 * seg52Out0AccY104 rho +
          (seg52Out0AccY104 rho - seg52Out0AccX104 rho * (-1)) * (rho 50218 + rho 50219) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50225 * (1 - rho 50223) = rho 50220 - rho 50221 - rho 50222 := ha5
      _ = (-1) * rho 50221 - rho 50222 + (seg52Out0AccY104 rho - seg52Out0AccX104 rho * (-1)) *
          (rho 50218 + rho 50219) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX105 rho = seg52Out0AccX104 rho - Bool.toZMod bit * (seg52Out0AccX104 rho - rho 50224) := by
    have hd : rho 50226 = Bool.toZMod bit * (rho 50224 - seg52Out0AccX104 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX104
      linear_combination -r5837
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY105 rho = seg52Out0AccY104 rho - Bool.toZMod bit * (seg52Out0AccY104 rho - rho 50225) := by
    have hd : rho 50227 = Bool.toZMod bit * (rho 50225 - seg52Out0AccY104 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY104
      linear_combination -r5838
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50218 * rho 50219 = rho 50228 := by linear_combination r5839
  have hd1 : rho 50218 * rho 50218 = rho 50229 := by linear_combination r5840
  have hd2 : rho 50219 * rho 50219 = rho 50230 := by linear_combination r5841
  have hd3 : rho 50231 * (rho 50219 * rho 50219 + rho 50218 * rho 50218 * (-1)) =
      2 * (rho 50218 * rho 50219) := by
    rw [hd0, hd1, hd2]
    linear_combination r5842
  have hd4 : rho 50232 * (2 - (rho 50219 * rho 50219 + rho 50218 * rho 50218 * (-1))) =
      rho 50219 * rho 50219 - rho 50218 * rho 50218 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5843
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX104 rho, seg52Out0AccY104 rho⟩ ⟨rho 50218, rho 50219⟩
    ⟨rho 50224, rho 50225⟩ ⟨seg52Out0AccX105 rho, seg52Out0AccY105 rho⟩ ⟨rho 50231, rho 50232⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows105 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5844 rho ∧ Seg52.relationRow5845 rho ∧ Seg52.relationRow5846 rho ∧ Seg52.relationRow5847 rho ∧ Seg52.relationRow5848 rho ∧ Seg52.relationRow5849 rho ∧ Seg52.relationRow5850 rho ∧ Seg52.relationRow5851 rho ∧ Seg52.relationRow5852 rho ∧ Seg52.relationRow5853 rho ∧ Seg52.relationRow5854 rho ∧ Seg52.relationRow5855 rho ∧ Seg52.relationRow5856 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p73, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart73 at p73

  rcases p73 with ⟨_, _, _, _, r5844, r5845, r5846, r5847, r5848, r5849, r5850, r5851, r5852, r5853, r5854, r5855, r5856, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5844, r5845, r5846, r5847, r5848, r5849, r5850, r5851, r5852, r5853, r5854, r5855, r5856⟩

theorem seg52Out0_rung105 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48851 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX105 rho, seg52Out0AccY105 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50231, rho 50232⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX105 rho, seg52Out0AccY105 rho⟩ ⟨rho 50231, rho 50232⟩
        ⟨seg52Out0AccX106 rho, seg52Out0AccY106 rho⟩ ⟨rho 50244, rho 50245⟩ := by
  obtain ⟨r5844, r5845, r5846, r5847, r5848, r5849, r5850, r5851, r5852, r5853, r5854, r5855, r5856⟩ := seg52Out0_rows105 rho h
  unfold Seg52.relationRow5844 at r5844

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5844

  unfold Seg52.relationRow5845 at r5845

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5845

  unfold Seg52.relationRow5846 at r5846

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5846

  unfold Seg52.relationRow5847 at r5847

  unfold Seg52.relationRow5848 at r5848

  unfold Seg52.relationRow5849 at r5849

  unfold Seg52.relationRow5850 at r5850

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5850

  unfold Seg52.relationRow5851 at r5851

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5851

  unfold Seg52.relationRow5852 at r5852

  unfold Seg52.relationRow5853 at r5853

  unfold Seg52.relationRow5854 at r5854

  unfold Seg52.relationRow5855 at r5855

  unfold Seg52.relationRow5856 at r5856

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX106 rho = seg52Out0AccX105 rho + rho 50239 := by
    unfold seg52Out0AccX106 seg52Out0AccX105
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 105]

    ring

  have hnexty : seg52Out0AccY106 rho = seg52Out0AccY105 rho + rho 50240 := by
    unfold seg52Out0AccY106 seg52Out0AccY105
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 105]

    ring

  have ha0 : (rho 50231 + rho 50232) * (seg52Out0AccX105 rho + seg52Out0AccY105 rho) = rho 50233 := by
    unfold seg52Out0AccX105 seg52Out0AccY105
    linear_combination r5844
  have ha1 : rho 50232 * seg52Out0AccX105 rho = rho 50234 := by
    unfold seg52Out0AccX105
    linear_combination r5845
  have ha2 : rho 50231 * seg52Out0AccY105 rho = rho 50235 := by
    unfold seg52Out0AccY105
    linear_combination r5846
  have ha3 : 3021 * rho 50234 * rho 50235 = rho 50236 := by
    linear_combination r5847
  have ha4 : rho 50237 * (1 + rho 50236) = rho 50234 + rho 50235 := by
    linear_combination r5848
  have ha5 : rho 50238 * (1 - rho 50236) = rho 50233 - rho 50234 - rho 50235 := by
    linear_combination r5849
  have haddx :
      rho 50237 * (1 + 3021 * (rho 50232 * seg52Out0AccX105 rho) * (rho 50231 * seg52Out0AccY105 rho)) =
        rho 50232 * seg52Out0AccX105 rho + rho 50231 * seg52Out0AccY105 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50238 * (1 - 3021 * (rho 50232 * seg52Out0AccX105 rho) * (rho 50231 * seg52Out0AccY105 rho)) =
        (-1) * (rho 50232 * seg52Out0AccX105 rho) - rho 50231 * seg52Out0AccY105 rho +
          (seg52Out0AccY105 rho - seg52Out0AccX105 rho * (-1)) * (rho 50231 + rho 50232) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50238 * (1 - rho 50236) = rho 50233 - rho 50234 - rho 50235 := ha5
      _ = (-1) * rho 50234 - rho 50235 + (seg52Out0AccY105 rho - seg52Out0AccX105 rho * (-1)) *
          (rho 50231 + rho 50232) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX106 rho = seg52Out0AccX105 rho - Bool.toZMod bit * (seg52Out0AccX105 rho - rho 50237) := by
    have hd : rho 50239 = Bool.toZMod bit * (rho 50237 - seg52Out0AccX105 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX105
      linear_combination -r5850
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY106 rho = seg52Out0AccY105 rho - Bool.toZMod bit * (seg52Out0AccY105 rho - rho 50238) := by
    have hd : rho 50240 = Bool.toZMod bit * (rho 50238 - seg52Out0AccY105 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY105
      linear_combination -r5851
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50231 * rho 50232 = rho 50241 := by linear_combination r5852
  have hd1 : rho 50231 * rho 50231 = rho 50242 := by linear_combination r5853
  have hd2 : rho 50232 * rho 50232 = rho 50243 := by linear_combination r5854
  have hd3 : rho 50244 * (rho 50232 * rho 50232 + rho 50231 * rho 50231 * (-1)) =
      2 * (rho 50231 * rho 50232) := by
    rw [hd0, hd1, hd2]
    linear_combination r5855
  have hd4 : rho 50245 * (2 - (rho 50232 * rho 50232 + rho 50231 * rho 50231 * (-1))) =
      rho 50232 * rho 50232 - rho 50231 * rho 50231 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5856
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX105 rho, seg52Out0AccY105 rho⟩ ⟨rho 50231, rho 50232⟩
    ⟨rho 50237, rho 50238⟩ ⟨seg52Out0AccX106 rho, seg52Out0AccY106 rho⟩ ⟨rho 50244, rho 50245⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows106 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5857 rho ∧ Seg52.relationRow5858 rho ∧ Seg52.relationRow5859 rho ∧ Seg52.relationRow5860 rho ∧ Seg52.relationRow5861 rho ∧ Seg52.relationRow5862 rho ∧ Seg52.relationRow5863 rho ∧ Seg52.relationRow5864 rho ∧ Seg52.relationRow5865 rho ∧ Seg52.relationRow5866 rho ∧ Seg52.relationRow5867 rho ∧ Seg52.relationRow5868 rho ∧ Seg52.relationRow5869 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p73, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart73 at p73

  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5857, r5858, r5859, r5860, r5861, r5862, r5863, r5864, r5865, r5866, r5867, r5868, r5869, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5857, r5858, r5859, r5860, r5861, r5862, r5863, r5864, r5865, r5866, r5867, r5868, r5869⟩

theorem seg52Out0_rung106 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48852 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX106 rho, seg52Out0AccY106 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50244, rho 50245⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX106 rho, seg52Out0AccY106 rho⟩ ⟨rho 50244, rho 50245⟩
        ⟨seg52Out0AccX107 rho, seg52Out0AccY107 rho⟩ ⟨rho 50257, rho 50258⟩ := by
  obtain ⟨r5857, r5858, r5859, r5860, r5861, r5862, r5863, r5864, r5865, r5866, r5867, r5868, r5869⟩ := seg52Out0_rows106 rho h
  unfold Seg52.relationRow5857 at r5857

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5857

  unfold Seg52.relationRow5858 at r5858

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5858

  unfold Seg52.relationRow5859 at r5859

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5859

  unfold Seg52.relationRow5860 at r5860

  unfold Seg52.relationRow5861 at r5861

  unfold Seg52.relationRow5862 at r5862

  unfold Seg52.relationRow5863 at r5863

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5863

  unfold Seg52.relationRow5864 at r5864

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5864

  unfold Seg52.relationRow5865 at r5865

  unfold Seg52.relationRow5866 at r5866

  unfold Seg52.relationRow5867 at r5867

  unfold Seg52.relationRow5868 at r5868

  unfold Seg52.relationRow5869 at r5869

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX107 rho = seg52Out0AccX106 rho + rho 50252 := by
    unfold seg52Out0AccX107 seg52Out0AccX106
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 106]

    ring

  have hnexty : seg52Out0AccY107 rho = seg52Out0AccY106 rho + rho 50253 := by
    unfold seg52Out0AccY107 seg52Out0AccY106
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 106]

    ring

  have ha0 : (rho 50244 + rho 50245) * (seg52Out0AccX106 rho + seg52Out0AccY106 rho) = rho 50246 := by
    unfold seg52Out0AccX106 seg52Out0AccY106
    linear_combination r5857
  have ha1 : rho 50245 * seg52Out0AccX106 rho = rho 50247 := by
    unfold seg52Out0AccX106
    linear_combination r5858
  have ha2 : rho 50244 * seg52Out0AccY106 rho = rho 50248 := by
    unfold seg52Out0AccY106
    linear_combination r5859
  have ha3 : 3021 * rho 50247 * rho 50248 = rho 50249 := by
    linear_combination r5860
  have ha4 : rho 50250 * (1 + rho 50249) = rho 50247 + rho 50248 := by
    linear_combination r5861
  have ha5 : rho 50251 * (1 - rho 50249) = rho 50246 - rho 50247 - rho 50248 := by
    linear_combination r5862
  have haddx :
      rho 50250 * (1 + 3021 * (rho 50245 * seg52Out0AccX106 rho) * (rho 50244 * seg52Out0AccY106 rho)) =
        rho 50245 * seg52Out0AccX106 rho + rho 50244 * seg52Out0AccY106 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50251 * (1 - 3021 * (rho 50245 * seg52Out0AccX106 rho) * (rho 50244 * seg52Out0AccY106 rho)) =
        (-1) * (rho 50245 * seg52Out0AccX106 rho) - rho 50244 * seg52Out0AccY106 rho +
          (seg52Out0AccY106 rho - seg52Out0AccX106 rho * (-1)) * (rho 50244 + rho 50245) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50251 * (1 - rho 50249) = rho 50246 - rho 50247 - rho 50248 := ha5
      _ = (-1) * rho 50247 - rho 50248 + (seg52Out0AccY106 rho - seg52Out0AccX106 rho * (-1)) *
          (rho 50244 + rho 50245) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX107 rho = seg52Out0AccX106 rho - Bool.toZMod bit * (seg52Out0AccX106 rho - rho 50250) := by
    have hd : rho 50252 = Bool.toZMod bit * (rho 50250 - seg52Out0AccX106 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX106
      linear_combination -r5863
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY107 rho = seg52Out0AccY106 rho - Bool.toZMod bit * (seg52Out0AccY106 rho - rho 50251) := by
    have hd : rho 50253 = Bool.toZMod bit * (rho 50251 - seg52Out0AccY106 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY106
      linear_combination -r5864
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50244 * rho 50245 = rho 50254 := by linear_combination r5865
  have hd1 : rho 50244 * rho 50244 = rho 50255 := by linear_combination r5866
  have hd2 : rho 50245 * rho 50245 = rho 50256 := by linear_combination r5867
  have hd3 : rho 50257 * (rho 50245 * rho 50245 + rho 50244 * rho 50244 * (-1)) =
      2 * (rho 50244 * rho 50245) := by
    rw [hd0, hd1, hd2]
    linear_combination r5868
  have hd4 : rho 50258 * (2 - (rho 50245 * rho 50245 + rho 50244 * rho 50244 * (-1))) =
      rho 50245 * rho 50245 - rho 50244 * rho 50244 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5869
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX106 rho, seg52Out0AccY106 rho⟩ ⟨rho 50244, rho 50245⟩
    ⟨rho 50250, rho 50251⟩ ⟨seg52Out0AccX107 rho, seg52Out0AccY107 rho⟩ ⟨rho 50257, rho 50258⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows107 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5870 rho ∧ Seg52.relationRow5871 rho ∧ Seg52.relationRow5872 rho ∧ Seg52.relationRow5873 rho ∧ Seg52.relationRow5874 rho ∧ Seg52.relationRow5875 rho ∧ Seg52.relationRow5876 rho ∧ Seg52.relationRow5877 rho ∧ Seg52.relationRow5878 rho ∧ Seg52.relationRow5879 rho ∧ Seg52.relationRow5880 rho ∧ Seg52.relationRow5881 rho ∧ Seg52.relationRow5882 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p73, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart73 at p73

  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5870, r5871, r5872, r5873, r5874, r5875, r5876, r5877, r5878, r5879, r5880, r5881, r5882, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5870, r5871, r5872, r5873, r5874, r5875, r5876, r5877, r5878, r5879, r5880, r5881, r5882⟩

theorem seg52Out0_rung107 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48853 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX107 rho, seg52Out0AccY107 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50257, rho 50258⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX107 rho, seg52Out0AccY107 rho⟩ ⟨rho 50257, rho 50258⟩
        ⟨seg52Out0AccX108 rho, seg52Out0AccY108 rho⟩ ⟨rho 50270, rho 50271⟩ := by
  obtain ⟨r5870, r5871, r5872, r5873, r5874, r5875, r5876, r5877, r5878, r5879, r5880, r5881, r5882⟩ := seg52Out0_rows107 rho h
  unfold Seg52.relationRow5870 at r5870

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5870

  unfold Seg52.relationRow5871 at r5871

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5871

  unfold Seg52.relationRow5872 at r5872

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5872

  unfold Seg52.relationRow5873 at r5873

  unfold Seg52.relationRow5874 at r5874

  unfold Seg52.relationRow5875 at r5875

  unfold Seg52.relationRow5876 at r5876

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5876

  unfold Seg52.relationRow5877 at r5877

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5877

  unfold Seg52.relationRow5878 at r5878

  unfold Seg52.relationRow5879 at r5879

  unfold Seg52.relationRow5880 at r5880

  unfold Seg52.relationRow5881 at r5881

  unfold Seg52.relationRow5882 at r5882

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX108 rho = seg52Out0AccX107 rho + rho 50265 := by
    unfold seg52Out0AccX108 seg52Out0AccX107
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 107]

    ring

  have hnexty : seg52Out0AccY108 rho = seg52Out0AccY107 rho + rho 50266 := by
    unfold seg52Out0AccY108 seg52Out0AccY107
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 107]

    ring

  have ha0 : (rho 50257 + rho 50258) * (seg52Out0AccX107 rho + seg52Out0AccY107 rho) = rho 50259 := by
    unfold seg52Out0AccX107 seg52Out0AccY107
    linear_combination r5870
  have ha1 : rho 50258 * seg52Out0AccX107 rho = rho 50260 := by
    unfold seg52Out0AccX107
    linear_combination r5871
  have ha2 : rho 50257 * seg52Out0AccY107 rho = rho 50261 := by
    unfold seg52Out0AccY107
    linear_combination r5872
  have ha3 : 3021 * rho 50260 * rho 50261 = rho 50262 := by
    linear_combination r5873
  have ha4 : rho 50263 * (1 + rho 50262) = rho 50260 + rho 50261 := by
    linear_combination r5874
  have ha5 : rho 50264 * (1 - rho 50262) = rho 50259 - rho 50260 - rho 50261 := by
    linear_combination r5875
  have haddx :
      rho 50263 * (1 + 3021 * (rho 50258 * seg52Out0AccX107 rho) * (rho 50257 * seg52Out0AccY107 rho)) =
        rho 50258 * seg52Out0AccX107 rho + rho 50257 * seg52Out0AccY107 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50264 * (1 - 3021 * (rho 50258 * seg52Out0AccX107 rho) * (rho 50257 * seg52Out0AccY107 rho)) =
        (-1) * (rho 50258 * seg52Out0AccX107 rho) - rho 50257 * seg52Out0AccY107 rho +
          (seg52Out0AccY107 rho - seg52Out0AccX107 rho * (-1)) * (rho 50257 + rho 50258) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50264 * (1 - rho 50262) = rho 50259 - rho 50260 - rho 50261 := ha5
      _ = (-1) * rho 50260 - rho 50261 + (seg52Out0AccY107 rho - seg52Out0AccX107 rho * (-1)) *
          (rho 50257 + rho 50258) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX108 rho = seg52Out0AccX107 rho - Bool.toZMod bit * (seg52Out0AccX107 rho - rho 50263) := by
    have hd : rho 50265 = Bool.toZMod bit * (rho 50263 - seg52Out0AccX107 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX107
      linear_combination -r5876
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY108 rho = seg52Out0AccY107 rho - Bool.toZMod bit * (seg52Out0AccY107 rho - rho 50264) := by
    have hd : rho 50266 = Bool.toZMod bit * (rho 50264 - seg52Out0AccY107 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY107
      linear_combination -r5877
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50257 * rho 50258 = rho 50267 := by linear_combination r5878
  have hd1 : rho 50257 * rho 50257 = rho 50268 := by linear_combination r5879
  have hd2 : rho 50258 * rho 50258 = rho 50269 := by linear_combination r5880
  have hd3 : rho 50270 * (rho 50258 * rho 50258 + rho 50257 * rho 50257 * (-1)) =
      2 * (rho 50257 * rho 50258) := by
    rw [hd0, hd1, hd2]
    linear_combination r5881
  have hd4 : rho 50271 * (2 - (rho 50258 * rho 50258 + rho 50257 * rho 50257 * (-1))) =
      rho 50258 * rho 50258 - rho 50257 * rho 50257 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5882
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX107 rho, seg52Out0AccY107 rho⟩ ⟨rho 50257, rho 50258⟩
    ⟨rho 50263, rho 50264⟩ ⟨seg52Out0AccX108 rho, seg52Out0AccY108 rho⟩ ⟨rho 50270, rho 50271⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows108 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5883 rho ∧ Seg52.relationRow5884 rho ∧ Seg52.relationRow5885 rho ∧ Seg52.relationRow5886 rho ∧ Seg52.relationRow5887 rho ∧ Seg52.relationRow5888 rho ∧ Seg52.relationRow5889 rho ∧ Seg52.relationRow5890 rho ∧ Seg52.relationRow5891 rho ∧ Seg52.relationRow5892 rho ∧ Seg52.relationRow5893 rho ∧ Seg52.relationRow5894 rho ∧ Seg52.relationRow5895 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p73, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart73 at p73

  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5883, r5884, r5885, r5886, r5887, r5888, r5889, r5890, r5891, r5892, r5893, r5894, r5895, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5883, r5884, r5885, r5886, r5887, r5888, r5889, r5890, r5891, r5892, r5893, r5894, r5895⟩

theorem seg52Out0_rung108 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48854 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX108 rho, seg52Out0AccY108 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50270, rho 50271⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX108 rho, seg52Out0AccY108 rho⟩ ⟨rho 50270, rho 50271⟩
        ⟨seg52Out0AccX109 rho, seg52Out0AccY109 rho⟩ ⟨rho 50283, rho 50284⟩ := by
  obtain ⟨r5883, r5884, r5885, r5886, r5887, r5888, r5889, r5890, r5891, r5892, r5893, r5894, r5895⟩ := seg52Out0_rows108 rho h
  unfold Seg52.relationRow5883 at r5883

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5883

  unfold Seg52.relationRow5884 at r5884

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5884

  unfold Seg52.relationRow5885 at r5885

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5885

  unfold Seg52.relationRow5886 at r5886

  unfold Seg52.relationRow5887 at r5887

  unfold Seg52.relationRow5888 at r5888

  unfold Seg52.relationRow5889 at r5889

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5889

  unfold Seg52.relationRow5890 at r5890

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5890

  unfold Seg52.relationRow5891 at r5891

  unfold Seg52.relationRow5892 at r5892

  unfold Seg52.relationRow5893 at r5893

  unfold Seg52.relationRow5894 at r5894

  unfold Seg52.relationRow5895 at r5895

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX109 rho = seg52Out0AccX108 rho + rho 50278 := by
    unfold seg52Out0AccX109 seg52Out0AccX108
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 108]

    ring

  have hnexty : seg52Out0AccY109 rho = seg52Out0AccY108 rho + rho 50279 := by
    unfold seg52Out0AccY109 seg52Out0AccY108
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 108]

    ring

  have ha0 : (rho 50270 + rho 50271) * (seg52Out0AccX108 rho + seg52Out0AccY108 rho) = rho 50272 := by
    unfold seg52Out0AccX108 seg52Out0AccY108
    linear_combination r5883
  have ha1 : rho 50271 * seg52Out0AccX108 rho = rho 50273 := by
    unfold seg52Out0AccX108
    linear_combination r5884
  have ha2 : rho 50270 * seg52Out0AccY108 rho = rho 50274 := by
    unfold seg52Out0AccY108
    linear_combination r5885
  have ha3 : 3021 * rho 50273 * rho 50274 = rho 50275 := by
    linear_combination r5886
  have ha4 : rho 50276 * (1 + rho 50275) = rho 50273 + rho 50274 := by
    linear_combination r5887
  have ha5 : rho 50277 * (1 - rho 50275) = rho 50272 - rho 50273 - rho 50274 := by
    linear_combination r5888
  have haddx :
      rho 50276 * (1 + 3021 * (rho 50271 * seg52Out0AccX108 rho) * (rho 50270 * seg52Out0AccY108 rho)) =
        rho 50271 * seg52Out0AccX108 rho + rho 50270 * seg52Out0AccY108 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50277 * (1 - 3021 * (rho 50271 * seg52Out0AccX108 rho) * (rho 50270 * seg52Out0AccY108 rho)) =
        (-1) * (rho 50271 * seg52Out0AccX108 rho) - rho 50270 * seg52Out0AccY108 rho +
          (seg52Out0AccY108 rho - seg52Out0AccX108 rho * (-1)) * (rho 50270 + rho 50271) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50277 * (1 - rho 50275) = rho 50272 - rho 50273 - rho 50274 := ha5
      _ = (-1) * rho 50273 - rho 50274 + (seg52Out0AccY108 rho - seg52Out0AccX108 rho * (-1)) *
          (rho 50270 + rho 50271) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX109 rho = seg52Out0AccX108 rho - Bool.toZMod bit * (seg52Out0AccX108 rho - rho 50276) := by
    have hd : rho 50278 = Bool.toZMod bit * (rho 50276 - seg52Out0AccX108 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX108
      linear_combination -r5889
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY109 rho = seg52Out0AccY108 rho - Bool.toZMod bit * (seg52Out0AccY108 rho - rho 50277) := by
    have hd : rho 50279 = Bool.toZMod bit * (rho 50277 - seg52Out0AccY108 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY108
      linear_combination -r5890
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50270 * rho 50271 = rho 50280 := by linear_combination r5891
  have hd1 : rho 50270 * rho 50270 = rho 50281 := by linear_combination r5892
  have hd2 : rho 50271 * rho 50271 = rho 50282 := by linear_combination r5893
  have hd3 : rho 50283 * (rho 50271 * rho 50271 + rho 50270 * rho 50270 * (-1)) =
      2 * (rho 50270 * rho 50271) := by
    rw [hd0, hd1, hd2]
    linear_combination r5894
  have hd4 : rho 50284 * (2 - (rho 50271 * rho 50271 + rho 50270 * rho 50270 * (-1))) =
      rho 50271 * rho 50271 - rho 50270 * rho 50270 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5895
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX108 rho, seg52Out0AccY108 rho⟩ ⟨rho 50270, rho 50271⟩
    ⟨rho 50276, rho 50277⟩ ⟨seg52Out0AccX109 rho, seg52Out0AccY109 rho⟩ ⟨rho 50283, rho 50284⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows109 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5896 rho ∧ Seg52.relationRow5897 rho ∧ Seg52.relationRow5898 rho ∧ Seg52.relationRow5899 rho ∧ Seg52.relationRow5900 rho ∧ Seg52.relationRow5901 rho ∧ Seg52.relationRow5902 rho ∧ Seg52.relationRow5903 rho ∧ Seg52.relationRow5904 rho ∧ Seg52.relationRow5905 rho ∧ Seg52.relationRow5906 rho ∧ Seg52.relationRow5907 rho ∧ Seg52.relationRow5908 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p73, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart73 at p73

  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5896, r5897, r5898, r5899, r5900, r5901, r5902, r5903, r5904, r5905, r5906, r5907, r5908, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5896, r5897, r5898, r5899, r5900, r5901, r5902, r5903, r5904, r5905, r5906, r5907, r5908⟩

theorem seg52Out0_rung109 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48855 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX109 rho, seg52Out0AccY109 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50283, rho 50284⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX109 rho, seg52Out0AccY109 rho⟩ ⟨rho 50283, rho 50284⟩
        ⟨seg52Out0AccX110 rho, seg52Out0AccY110 rho⟩ ⟨rho 50296, rho 50297⟩ := by
  obtain ⟨r5896, r5897, r5898, r5899, r5900, r5901, r5902, r5903, r5904, r5905, r5906, r5907, r5908⟩ := seg52Out0_rows109 rho h
  unfold Seg52.relationRow5896 at r5896

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5896

  unfold Seg52.relationRow5897 at r5897

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5897

  unfold Seg52.relationRow5898 at r5898

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5898

  unfold Seg52.relationRow5899 at r5899

  unfold Seg52.relationRow5900 at r5900

  unfold Seg52.relationRow5901 at r5901

  unfold Seg52.relationRow5902 at r5902

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5902

  unfold Seg52.relationRow5903 at r5903

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5903

  unfold Seg52.relationRow5904 at r5904

  unfold Seg52.relationRow5905 at r5905

  unfold Seg52.relationRow5906 at r5906

  unfold Seg52.relationRow5907 at r5907

  unfold Seg52.relationRow5908 at r5908

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX110 rho = seg52Out0AccX109 rho + rho 50291 := by
    unfold seg52Out0AccX110 seg52Out0AccX109
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 109]

    ring

  have hnexty : seg52Out0AccY110 rho = seg52Out0AccY109 rho + rho 50292 := by
    unfold seg52Out0AccY110 seg52Out0AccY109
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 109]

    ring

  have ha0 : (rho 50283 + rho 50284) * (seg52Out0AccX109 rho + seg52Out0AccY109 rho) = rho 50285 := by
    unfold seg52Out0AccX109 seg52Out0AccY109
    linear_combination r5896
  have ha1 : rho 50284 * seg52Out0AccX109 rho = rho 50286 := by
    unfold seg52Out0AccX109
    linear_combination r5897
  have ha2 : rho 50283 * seg52Out0AccY109 rho = rho 50287 := by
    unfold seg52Out0AccY109
    linear_combination r5898
  have ha3 : 3021 * rho 50286 * rho 50287 = rho 50288 := by
    linear_combination r5899
  have ha4 : rho 50289 * (1 + rho 50288) = rho 50286 + rho 50287 := by
    linear_combination r5900
  have ha5 : rho 50290 * (1 - rho 50288) = rho 50285 - rho 50286 - rho 50287 := by
    linear_combination r5901
  have haddx :
      rho 50289 * (1 + 3021 * (rho 50284 * seg52Out0AccX109 rho) * (rho 50283 * seg52Out0AccY109 rho)) =
        rho 50284 * seg52Out0AccX109 rho + rho 50283 * seg52Out0AccY109 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50290 * (1 - 3021 * (rho 50284 * seg52Out0AccX109 rho) * (rho 50283 * seg52Out0AccY109 rho)) =
        (-1) * (rho 50284 * seg52Out0AccX109 rho) - rho 50283 * seg52Out0AccY109 rho +
          (seg52Out0AccY109 rho - seg52Out0AccX109 rho * (-1)) * (rho 50283 + rho 50284) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50290 * (1 - rho 50288) = rho 50285 - rho 50286 - rho 50287 := ha5
      _ = (-1) * rho 50286 - rho 50287 + (seg52Out0AccY109 rho - seg52Out0AccX109 rho * (-1)) *
          (rho 50283 + rho 50284) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX110 rho = seg52Out0AccX109 rho - Bool.toZMod bit * (seg52Out0AccX109 rho - rho 50289) := by
    have hd : rho 50291 = Bool.toZMod bit * (rho 50289 - seg52Out0AccX109 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX109
      linear_combination -r5902
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY110 rho = seg52Out0AccY109 rho - Bool.toZMod bit * (seg52Out0AccY109 rho - rho 50290) := by
    have hd : rho 50292 = Bool.toZMod bit * (rho 50290 - seg52Out0AccY109 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY109
      linear_combination -r5903
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50283 * rho 50284 = rho 50293 := by linear_combination r5904
  have hd1 : rho 50283 * rho 50283 = rho 50294 := by linear_combination r5905
  have hd2 : rho 50284 * rho 50284 = rho 50295 := by linear_combination r5906
  have hd3 : rho 50296 * (rho 50284 * rho 50284 + rho 50283 * rho 50283 * (-1)) =
      2 * (rho 50283 * rho 50284) := by
    rw [hd0, hd1, hd2]
    linear_combination r5907
  have hd4 : rho 50297 * (2 - (rho 50284 * rho 50284 + rho 50283 * rho 50283 * (-1))) =
      rho 50284 * rho 50284 - rho 50283 * rho 50283 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5908
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX109 rho, seg52Out0AccY109 rho⟩ ⟨rho 50283, rho 50284⟩
    ⟨rho 50289, rho 50290⟩ ⟨seg52Out0AccX110 rho, seg52Out0AccY110 rho⟩ ⟨rho 50296, rho 50297⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_hstep_c9 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (48746 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 99 ≤ i → i < 110 →
      EdwardsBridge.onCurve (seg52Out0AccState rho i) →
      EdwardsBridge.onCurve (seg52Out0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52Out0AccState rho i) (seg52Out0CurState rho i)
        (seg52Out0AccState rho (i + 1)) (seg52Out0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52Out0_rung99 rho h bits[99]! (hbitAt 99 (by omega)) hacc hcur
  · exact seg52Out0_rung100 rho h bits[100]! (hbitAt 100 (by omega)) hacc hcur
  · exact seg52Out0_rung101 rho h bits[101]! (hbitAt 101 (by omega)) hacc hcur
  · exact seg52Out0_rung102 rho h bits[102]! (hbitAt 102 (by omega)) hacc hcur
  · exact seg52Out0_rung103 rho h bits[103]! (hbitAt 103 (by omega)) hacc hcur
  · exact seg52Out0_rung104 rho h bits[104]! (hbitAt 104 (by omega)) hacc hcur
  · exact seg52Out0_rung105 rho h bits[105]! (hbitAt 105 (by omega)) hacc hcur
  · exact seg52Out0_rung106 rho h bits[106]! (hbitAt 106 (by omega)) hacc hcur
  · exact seg52Out0_rung107 rho h bits[107]! (hbitAt 107 (by omega)) hacc hcur
  · exact seg52Out0_rung108 rho h bits[108]! (hbitAt 108 (by omega)) hacc hcur
  · exact seg52Out0_rung109 rho h bits[109]! (hbitAt 109 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
