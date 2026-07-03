import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In1_rows33 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3755 rho ∧ Seg52.relationRow3756 rho ∧ Seg52.relationRow3757 rho ∧ Seg52.relationRow3758 rho ∧ Seg52.relationRow3759 rho ∧ Seg52.relationRow3760 rho ∧ Seg52.relationRow3761 rho ∧ Seg52.relationRow3762 rho ∧ Seg52.relationRow3763 rho ∧ Seg52.relationRow3764 rho ∧ Seg52.relationRow3765 rho ∧ Seg52.relationRow3766 rho ∧ Seg52.relationRow3767 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p46, p47, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart46 at p46

  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3755, r3756, r3757, r3758, r3759⟩

  unfold Seg52.relationPart47 at p47

  rcases p47 with ⟨r3760, r3761, r3762, r3763, r3764, r3765, r3766, r3767, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3755, r3756, r3757, r3758, r3759, r3760, r3761, r3762, r3763, r3764, r3765, r3766, r3767⟩

theorem seg52In1_rung33 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47627 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX33 rho, seg52In1AccY33 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48143, rho 48144⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX33 rho, seg52In1AccY33 rho⟩ ⟨rho 48143, rho 48144⟩
        ⟨seg52In1AccX34 rho, seg52In1AccY34 rho⟩ ⟨rho 48156, rho 48157⟩ := by
  obtain ⟨r3755, r3756, r3757, r3758, r3759, r3760, r3761, r3762, r3763, r3764, r3765, r3766, r3767⟩ := seg52In1_rows33 rho h
  unfold Seg52.relationRow3755 at r3755

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3755

  unfold Seg52.relationRow3756 at r3756

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3756

  unfold Seg52.relationRow3757 at r3757

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3757

  unfold Seg52.relationRow3758 at r3758

  unfold Seg52.relationRow3759 at r3759

  unfold Seg52.relationRow3760 at r3760

  unfold Seg52.relationRow3761 at r3761

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3761

  unfold Seg52.relationRow3762 at r3762

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3762

  unfold Seg52.relationRow3763 at r3763

  unfold Seg52.relationRow3764 at r3764

  unfold Seg52.relationRow3765 at r3765

  unfold Seg52.relationRow3766 at r3766

  unfold Seg52.relationRow3767 at r3767

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX34 rho = seg52In1AccX33 rho + rho 48151 := by
    unfold seg52In1AccX34 seg52In1AccX33
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 33]

    ring

  have hnexty : seg52In1AccY34 rho = seg52In1AccY33 rho + rho 48152 := by
    unfold seg52In1AccY34 seg52In1AccY33
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 33]

    ring

  have ha0 : (rho 48143 + rho 48144) * (seg52In1AccX33 rho + seg52In1AccY33 rho) = rho 48145 := by
    unfold seg52In1AccX33 seg52In1AccY33
    linear_combination r3755
  have ha1 : rho 48144 * seg52In1AccX33 rho = rho 48146 := by
    unfold seg52In1AccX33
    linear_combination r3756
  have ha2 : rho 48143 * seg52In1AccY33 rho = rho 48147 := by
    unfold seg52In1AccY33
    linear_combination r3757
  have ha3 : 3021 * rho 48146 * rho 48147 = rho 48148 := by
    linear_combination r3758
  have ha4 : rho 48149 * (1 + rho 48148) = rho 48146 + rho 48147 := by
    linear_combination r3759
  have ha5 : rho 48150 * (1 - rho 48148) = rho 48145 - rho 48146 - rho 48147 := by
    linear_combination r3760
  have haddx :
      rho 48149 * (1 + 3021 * (rho 48144 * seg52In1AccX33 rho) * (rho 48143 * seg52In1AccY33 rho)) =
        rho 48144 * seg52In1AccX33 rho + rho 48143 * seg52In1AccY33 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48150 * (1 - 3021 * (rho 48144 * seg52In1AccX33 rho) * (rho 48143 * seg52In1AccY33 rho)) =
        (-1) * (rho 48144 * seg52In1AccX33 rho) - rho 48143 * seg52In1AccY33 rho +
          (seg52In1AccY33 rho - seg52In1AccX33 rho * (-1)) * (rho 48143 + rho 48144) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48150 * (1 - rho 48148) = rho 48145 - rho 48146 - rho 48147 := ha5
      _ = (-1) * rho 48146 - rho 48147 + (seg52In1AccY33 rho - seg52In1AccX33 rho * (-1)) *
          (rho 48143 + rho 48144) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX34 rho = seg52In1AccX33 rho - Bool.toZMod bit * (seg52In1AccX33 rho - rho 48149) := by
    have hd : rho 48151 = Bool.toZMod bit * (rho 48149 - seg52In1AccX33 rho) := by
      rw [← hbit]
      unfold seg52In1AccX33
      linear_combination -r3761
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY34 rho = seg52In1AccY33 rho - Bool.toZMod bit * (seg52In1AccY33 rho - rho 48150) := by
    have hd : rho 48152 = Bool.toZMod bit * (rho 48150 - seg52In1AccY33 rho) := by
      rw [← hbit]
      unfold seg52In1AccY33
      linear_combination -r3762
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48143 * rho 48144 = rho 48153 := by linear_combination r3763
  have hd1 : rho 48143 * rho 48143 = rho 48154 := by linear_combination r3764
  have hd2 : rho 48144 * rho 48144 = rho 48155 := by linear_combination r3765
  have hd3 : rho 48156 * (rho 48144 * rho 48144 + rho 48143 * rho 48143 * (-1)) =
      2 * (rho 48143 * rho 48144) := by
    rw [hd0, hd1, hd2]
    linear_combination r3766
  have hd4 : rho 48157 * (2 - (rho 48144 * rho 48144 + rho 48143 * rho 48143 * (-1))) =
      rho 48144 * rho 48144 - rho 48143 * rho 48143 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3767
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX33 rho, seg52In1AccY33 rho⟩ ⟨rho 48143, rho 48144⟩
    ⟨rho 48149, rho 48150⟩ ⟨seg52In1AccX34 rho, seg52In1AccY34 rho⟩ ⟨rho 48156, rho 48157⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows34 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3768 rho ∧ Seg52.relationRow3769 rho ∧ Seg52.relationRow3770 rho ∧ Seg52.relationRow3771 rho ∧ Seg52.relationRow3772 rho ∧ Seg52.relationRow3773 rho ∧ Seg52.relationRow3774 rho ∧ Seg52.relationRow3775 rho ∧ Seg52.relationRow3776 rho ∧ Seg52.relationRow3777 rho ∧ Seg52.relationRow3778 rho ∧ Seg52.relationRow3779 rho ∧ Seg52.relationRow3780 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p47, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart47 at p47

  rcases p47 with ⟨_, _, _, _, _, _, _, _, r3768, r3769, r3770, r3771, r3772, r3773, r3774, r3775, r3776, r3777, r3778, r3779, r3780, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3768, r3769, r3770, r3771, r3772, r3773, r3774, r3775, r3776, r3777, r3778, r3779, r3780⟩

theorem seg52In1_rung34 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47628 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX34 rho, seg52In1AccY34 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48156, rho 48157⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX34 rho, seg52In1AccY34 rho⟩ ⟨rho 48156, rho 48157⟩
        ⟨seg52In1AccX35 rho, seg52In1AccY35 rho⟩ ⟨rho 48169, rho 48170⟩ := by
  obtain ⟨r3768, r3769, r3770, r3771, r3772, r3773, r3774, r3775, r3776, r3777, r3778, r3779, r3780⟩ := seg52In1_rows34 rho h
  unfold Seg52.relationRow3768 at r3768

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3768

  unfold Seg52.relationRow3769 at r3769

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3769

  unfold Seg52.relationRow3770 at r3770

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3770

  unfold Seg52.relationRow3771 at r3771

  unfold Seg52.relationRow3772 at r3772

  unfold Seg52.relationRow3773 at r3773

  unfold Seg52.relationRow3774 at r3774

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3774

  unfold Seg52.relationRow3775 at r3775

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3775

  unfold Seg52.relationRow3776 at r3776

  unfold Seg52.relationRow3777 at r3777

  unfold Seg52.relationRow3778 at r3778

  unfold Seg52.relationRow3779 at r3779

  unfold Seg52.relationRow3780 at r3780

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX35 rho = seg52In1AccX34 rho + rho 48164 := by
    unfold seg52In1AccX35 seg52In1AccX34
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 34]

    ring

  have hnexty : seg52In1AccY35 rho = seg52In1AccY34 rho + rho 48165 := by
    unfold seg52In1AccY35 seg52In1AccY34
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 34]

    ring

  have ha0 : (rho 48156 + rho 48157) * (seg52In1AccX34 rho + seg52In1AccY34 rho) = rho 48158 := by
    unfold seg52In1AccX34 seg52In1AccY34
    linear_combination r3768
  have ha1 : rho 48157 * seg52In1AccX34 rho = rho 48159 := by
    unfold seg52In1AccX34
    linear_combination r3769
  have ha2 : rho 48156 * seg52In1AccY34 rho = rho 48160 := by
    unfold seg52In1AccY34
    linear_combination r3770
  have ha3 : 3021 * rho 48159 * rho 48160 = rho 48161 := by
    linear_combination r3771
  have ha4 : rho 48162 * (1 + rho 48161) = rho 48159 + rho 48160 := by
    linear_combination r3772
  have ha5 : rho 48163 * (1 - rho 48161) = rho 48158 - rho 48159 - rho 48160 := by
    linear_combination r3773
  have haddx :
      rho 48162 * (1 + 3021 * (rho 48157 * seg52In1AccX34 rho) * (rho 48156 * seg52In1AccY34 rho)) =
        rho 48157 * seg52In1AccX34 rho + rho 48156 * seg52In1AccY34 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48163 * (1 - 3021 * (rho 48157 * seg52In1AccX34 rho) * (rho 48156 * seg52In1AccY34 rho)) =
        (-1) * (rho 48157 * seg52In1AccX34 rho) - rho 48156 * seg52In1AccY34 rho +
          (seg52In1AccY34 rho - seg52In1AccX34 rho * (-1)) * (rho 48156 + rho 48157) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48163 * (1 - rho 48161) = rho 48158 - rho 48159 - rho 48160 := ha5
      _ = (-1) * rho 48159 - rho 48160 + (seg52In1AccY34 rho - seg52In1AccX34 rho * (-1)) *
          (rho 48156 + rho 48157) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX35 rho = seg52In1AccX34 rho - Bool.toZMod bit * (seg52In1AccX34 rho - rho 48162) := by
    have hd : rho 48164 = Bool.toZMod bit * (rho 48162 - seg52In1AccX34 rho) := by
      rw [← hbit]
      unfold seg52In1AccX34
      linear_combination -r3774
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY35 rho = seg52In1AccY34 rho - Bool.toZMod bit * (seg52In1AccY34 rho - rho 48163) := by
    have hd : rho 48165 = Bool.toZMod bit * (rho 48163 - seg52In1AccY34 rho) := by
      rw [← hbit]
      unfold seg52In1AccY34
      linear_combination -r3775
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48156 * rho 48157 = rho 48166 := by linear_combination r3776
  have hd1 : rho 48156 * rho 48156 = rho 48167 := by linear_combination r3777
  have hd2 : rho 48157 * rho 48157 = rho 48168 := by linear_combination r3778
  have hd3 : rho 48169 * (rho 48157 * rho 48157 + rho 48156 * rho 48156 * (-1)) =
      2 * (rho 48156 * rho 48157) := by
    rw [hd0, hd1, hd2]
    linear_combination r3779
  have hd4 : rho 48170 * (2 - (rho 48157 * rho 48157 + rho 48156 * rho 48156 * (-1))) =
      rho 48157 * rho 48157 - rho 48156 * rho 48156 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3780
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX34 rho, seg52In1AccY34 rho⟩ ⟨rho 48156, rho 48157⟩
    ⟨rho 48162, rho 48163⟩ ⟨seg52In1AccX35 rho, seg52In1AccY35 rho⟩ ⟨rho 48169, rho 48170⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows35 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3781 rho ∧ Seg52.relationRow3782 rho ∧ Seg52.relationRow3783 rho ∧ Seg52.relationRow3784 rho ∧ Seg52.relationRow3785 rho ∧ Seg52.relationRow3786 rho ∧ Seg52.relationRow3787 rho ∧ Seg52.relationRow3788 rho ∧ Seg52.relationRow3789 rho ∧ Seg52.relationRow3790 rho ∧ Seg52.relationRow3791 rho ∧ Seg52.relationRow3792 rho ∧ Seg52.relationRow3793 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p47, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart47 at p47

  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3781, r3782, r3783, r3784, r3785, r3786, r3787, r3788, r3789, r3790, r3791, r3792, r3793, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3781, r3782, r3783, r3784, r3785, r3786, r3787, r3788, r3789, r3790, r3791, r3792, r3793⟩

theorem seg52In1_rung35 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47629 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX35 rho, seg52In1AccY35 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48169, rho 48170⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX35 rho, seg52In1AccY35 rho⟩ ⟨rho 48169, rho 48170⟩
        ⟨seg52In1AccX36 rho, seg52In1AccY36 rho⟩ ⟨rho 48182, rho 48183⟩ := by
  obtain ⟨r3781, r3782, r3783, r3784, r3785, r3786, r3787, r3788, r3789, r3790, r3791, r3792, r3793⟩ := seg52In1_rows35 rho h
  unfold Seg52.relationRow3781 at r3781

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3781

  unfold Seg52.relationRow3782 at r3782

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3782

  unfold Seg52.relationRow3783 at r3783

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3783

  unfold Seg52.relationRow3784 at r3784

  unfold Seg52.relationRow3785 at r3785

  unfold Seg52.relationRow3786 at r3786

  unfold Seg52.relationRow3787 at r3787

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3787

  unfold Seg52.relationRow3788 at r3788

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3788

  unfold Seg52.relationRow3789 at r3789

  unfold Seg52.relationRow3790 at r3790

  unfold Seg52.relationRow3791 at r3791

  unfold Seg52.relationRow3792 at r3792

  unfold Seg52.relationRow3793 at r3793

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX36 rho = seg52In1AccX35 rho + rho 48177 := by
    unfold seg52In1AccX36 seg52In1AccX35
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 35]

    ring

  have hnexty : seg52In1AccY36 rho = seg52In1AccY35 rho + rho 48178 := by
    unfold seg52In1AccY36 seg52In1AccY35
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 35]

    ring

  have ha0 : (rho 48169 + rho 48170) * (seg52In1AccX35 rho + seg52In1AccY35 rho) = rho 48171 := by
    unfold seg52In1AccX35 seg52In1AccY35
    linear_combination r3781
  have ha1 : rho 48170 * seg52In1AccX35 rho = rho 48172 := by
    unfold seg52In1AccX35
    linear_combination r3782
  have ha2 : rho 48169 * seg52In1AccY35 rho = rho 48173 := by
    unfold seg52In1AccY35
    linear_combination r3783
  have ha3 : 3021 * rho 48172 * rho 48173 = rho 48174 := by
    linear_combination r3784
  have ha4 : rho 48175 * (1 + rho 48174) = rho 48172 + rho 48173 := by
    linear_combination r3785
  have ha5 : rho 48176 * (1 - rho 48174) = rho 48171 - rho 48172 - rho 48173 := by
    linear_combination r3786
  have haddx :
      rho 48175 * (1 + 3021 * (rho 48170 * seg52In1AccX35 rho) * (rho 48169 * seg52In1AccY35 rho)) =
        rho 48170 * seg52In1AccX35 rho + rho 48169 * seg52In1AccY35 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48176 * (1 - 3021 * (rho 48170 * seg52In1AccX35 rho) * (rho 48169 * seg52In1AccY35 rho)) =
        (-1) * (rho 48170 * seg52In1AccX35 rho) - rho 48169 * seg52In1AccY35 rho +
          (seg52In1AccY35 rho - seg52In1AccX35 rho * (-1)) * (rho 48169 + rho 48170) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48176 * (1 - rho 48174) = rho 48171 - rho 48172 - rho 48173 := ha5
      _ = (-1) * rho 48172 - rho 48173 + (seg52In1AccY35 rho - seg52In1AccX35 rho * (-1)) *
          (rho 48169 + rho 48170) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX36 rho = seg52In1AccX35 rho - Bool.toZMod bit * (seg52In1AccX35 rho - rho 48175) := by
    have hd : rho 48177 = Bool.toZMod bit * (rho 48175 - seg52In1AccX35 rho) := by
      rw [← hbit]
      unfold seg52In1AccX35
      linear_combination -r3787
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY36 rho = seg52In1AccY35 rho - Bool.toZMod bit * (seg52In1AccY35 rho - rho 48176) := by
    have hd : rho 48178 = Bool.toZMod bit * (rho 48176 - seg52In1AccY35 rho) := by
      rw [← hbit]
      unfold seg52In1AccY35
      linear_combination -r3788
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48169 * rho 48170 = rho 48179 := by linear_combination r3789
  have hd1 : rho 48169 * rho 48169 = rho 48180 := by linear_combination r3790
  have hd2 : rho 48170 * rho 48170 = rho 48181 := by linear_combination r3791
  have hd3 : rho 48182 * (rho 48170 * rho 48170 + rho 48169 * rho 48169 * (-1)) =
      2 * (rho 48169 * rho 48170) := by
    rw [hd0, hd1, hd2]
    linear_combination r3792
  have hd4 : rho 48183 * (2 - (rho 48170 * rho 48170 + rho 48169 * rho 48169 * (-1))) =
      rho 48170 * rho 48170 - rho 48169 * rho 48169 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3793
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX35 rho, seg52In1AccY35 rho⟩ ⟨rho 48169, rho 48170⟩
    ⟨rho 48175, rho 48176⟩ ⟨seg52In1AccX36 rho, seg52In1AccY36 rho⟩ ⟨rho 48182, rho 48183⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows36 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3794 rho ∧ Seg52.relationRow3795 rho ∧ Seg52.relationRow3796 rho ∧ Seg52.relationRow3797 rho ∧ Seg52.relationRow3798 rho ∧ Seg52.relationRow3799 rho ∧ Seg52.relationRow3800 rho ∧ Seg52.relationRow3801 rho ∧ Seg52.relationRow3802 rho ∧ Seg52.relationRow3803 rho ∧ Seg52.relationRow3804 rho ∧ Seg52.relationRow3805 rho ∧ Seg52.relationRow3806 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p47, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart47 at p47

  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3794, r3795, r3796, r3797, r3798, r3799, r3800, r3801, r3802, r3803, r3804, r3805, r3806, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3794, r3795, r3796, r3797, r3798, r3799, r3800, r3801, r3802, r3803, r3804, r3805, r3806⟩

theorem seg52In1_rung36 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47630 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX36 rho, seg52In1AccY36 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48182, rho 48183⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX36 rho, seg52In1AccY36 rho⟩ ⟨rho 48182, rho 48183⟩
        ⟨seg52In1AccX37 rho, seg52In1AccY37 rho⟩ ⟨rho 48195, rho 48196⟩ := by
  obtain ⟨r3794, r3795, r3796, r3797, r3798, r3799, r3800, r3801, r3802, r3803, r3804, r3805, r3806⟩ := seg52In1_rows36 rho h
  unfold Seg52.relationRow3794 at r3794

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3794

  unfold Seg52.relationRow3795 at r3795

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3795

  unfold Seg52.relationRow3796 at r3796

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3796

  unfold Seg52.relationRow3797 at r3797

  unfold Seg52.relationRow3798 at r3798

  unfold Seg52.relationRow3799 at r3799

  unfold Seg52.relationRow3800 at r3800

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3800

  unfold Seg52.relationRow3801 at r3801

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3801

  unfold Seg52.relationRow3802 at r3802

  unfold Seg52.relationRow3803 at r3803

  unfold Seg52.relationRow3804 at r3804

  unfold Seg52.relationRow3805 at r3805

  unfold Seg52.relationRow3806 at r3806

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX37 rho = seg52In1AccX36 rho + rho 48190 := by
    unfold seg52In1AccX37 seg52In1AccX36
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 36]

    ring

  have hnexty : seg52In1AccY37 rho = seg52In1AccY36 rho + rho 48191 := by
    unfold seg52In1AccY37 seg52In1AccY36
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 36]

    ring

  have ha0 : (rho 48182 + rho 48183) * (seg52In1AccX36 rho + seg52In1AccY36 rho) = rho 48184 := by
    unfold seg52In1AccX36 seg52In1AccY36
    linear_combination r3794
  have ha1 : rho 48183 * seg52In1AccX36 rho = rho 48185 := by
    unfold seg52In1AccX36
    linear_combination r3795
  have ha2 : rho 48182 * seg52In1AccY36 rho = rho 48186 := by
    unfold seg52In1AccY36
    linear_combination r3796
  have ha3 : 3021 * rho 48185 * rho 48186 = rho 48187 := by
    linear_combination r3797
  have ha4 : rho 48188 * (1 + rho 48187) = rho 48185 + rho 48186 := by
    linear_combination r3798
  have ha5 : rho 48189 * (1 - rho 48187) = rho 48184 - rho 48185 - rho 48186 := by
    linear_combination r3799
  have haddx :
      rho 48188 * (1 + 3021 * (rho 48183 * seg52In1AccX36 rho) * (rho 48182 * seg52In1AccY36 rho)) =
        rho 48183 * seg52In1AccX36 rho + rho 48182 * seg52In1AccY36 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48189 * (1 - 3021 * (rho 48183 * seg52In1AccX36 rho) * (rho 48182 * seg52In1AccY36 rho)) =
        (-1) * (rho 48183 * seg52In1AccX36 rho) - rho 48182 * seg52In1AccY36 rho +
          (seg52In1AccY36 rho - seg52In1AccX36 rho * (-1)) * (rho 48182 + rho 48183) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48189 * (1 - rho 48187) = rho 48184 - rho 48185 - rho 48186 := ha5
      _ = (-1) * rho 48185 - rho 48186 + (seg52In1AccY36 rho - seg52In1AccX36 rho * (-1)) *
          (rho 48182 + rho 48183) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX37 rho = seg52In1AccX36 rho - Bool.toZMod bit * (seg52In1AccX36 rho - rho 48188) := by
    have hd : rho 48190 = Bool.toZMod bit * (rho 48188 - seg52In1AccX36 rho) := by
      rw [← hbit]
      unfold seg52In1AccX36
      linear_combination -r3800
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY37 rho = seg52In1AccY36 rho - Bool.toZMod bit * (seg52In1AccY36 rho - rho 48189) := by
    have hd : rho 48191 = Bool.toZMod bit * (rho 48189 - seg52In1AccY36 rho) := by
      rw [← hbit]
      unfold seg52In1AccY36
      linear_combination -r3801
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48182 * rho 48183 = rho 48192 := by linear_combination r3802
  have hd1 : rho 48182 * rho 48182 = rho 48193 := by linear_combination r3803
  have hd2 : rho 48183 * rho 48183 = rho 48194 := by linear_combination r3804
  have hd3 : rho 48195 * (rho 48183 * rho 48183 + rho 48182 * rho 48182 * (-1)) =
      2 * (rho 48182 * rho 48183) := by
    rw [hd0, hd1, hd2]
    linear_combination r3805
  have hd4 : rho 48196 * (2 - (rho 48183 * rho 48183 + rho 48182 * rho 48182 * (-1))) =
      rho 48183 * rho 48183 - rho 48182 * rho 48182 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3806
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX36 rho, seg52In1AccY36 rho⟩ ⟨rho 48182, rho 48183⟩
    ⟨rho 48188, rho 48189⟩ ⟨seg52In1AccX37 rho, seg52In1AccY37 rho⟩ ⟨rho 48195, rho 48196⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows37 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3807 rho ∧ Seg52.relationRow3808 rho ∧ Seg52.relationRow3809 rho ∧ Seg52.relationRow3810 rho ∧ Seg52.relationRow3811 rho ∧ Seg52.relationRow3812 rho ∧ Seg52.relationRow3813 rho ∧ Seg52.relationRow3814 rho ∧ Seg52.relationRow3815 rho ∧ Seg52.relationRow3816 rho ∧ Seg52.relationRow3817 rho ∧ Seg52.relationRow3818 rho ∧ Seg52.relationRow3819 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p47, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart47 at p47

  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3807, r3808, r3809, r3810, r3811, r3812, r3813, r3814, r3815, r3816, r3817, r3818, r3819, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3807, r3808, r3809, r3810, r3811, r3812, r3813, r3814, r3815, r3816, r3817, r3818, r3819⟩

theorem seg52In1_rung37 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47631 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX37 rho, seg52In1AccY37 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48195, rho 48196⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX37 rho, seg52In1AccY37 rho⟩ ⟨rho 48195, rho 48196⟩
        ⟨seg52In1AccX38 rho, seg52In1AccY38 rho⟩ ⟨rho 48208, rho 48209⟩ := by
  obtain ⟨r3807, r3808, r3809, r3810, r3811, r3812, r3813, r3814, r3815, r3816, r3817, r3818, r3819⟩ := seg52In1_rows37 rho h
  unfold Seg52.relationRow3807 at r3807

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3807

  unfold Seg52.relationRow3808 at r3808

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3808

  unfold Seg52.relationRow3809 at r3809

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3809

  unfold Seg52.relationRow3810 at r3810

  unfold Seg52.relationRow3811 at r3811

  unfold Seg52.relationRow3812 at r3812

  unfold Seg52.relationRow3813 at r3813

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3813

  unfold Seg52.relationRow3814 at r3814

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3814

  unfold Seg52.relationRow3815 at r3815

  unfold Seg52.relationRow3816 at r3816

  unfold Seg52.relationRow3817 at r3817

  unfold Seg52.relationRow3818 at r3818

  unfold Seg52.relationRow3819 at r3819

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX38 rho = seg52In1AccX37 rho + rho 48203 := by
    unfold seg52In1AccX38 seg52In1AccX37
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 37]

    ring

  have hnexty : seg52In1AccY38 rho = seg52In1AccY37 rho + rho 48204 := by
    unfold seg52In1AccY38 seg52In1AccY37
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 37]

    ring

  have ha0 : (rho 48195 + rho 48196) * (seg52In1AccX37 rho + seg52In1AccY37 rho) = rho 48197 := by
    unfold seg52In1AccX37 seg52In1AccY37
    linear_combination r3807
  have ha1 : rho 48196 * seg52In1AccX37 rho = rho 48198 := by
    unfold seg52In1AccX37
    linear_combination r3808
  have ha2 : rho 48195 * seg52In1AccY37 rho = rho 48199 := by
    unfold seg52In1AccY37
    linear_combination r3809
  have ha3 : 3021 * rho 48198 * rho 48199 = rho 48200 := by
    linear_combination r3810
  have ha4 : rho 48201 * (1 + rho 48200) = rho 48198 + rho 48199 := by
    linear_combination r3811
  have ha5 : rho 48202 * (1 - rho 48200) = rho 48197 - rho 48198 - rho 48199 := by
    linear_combination r3812
  have haddx :
      rho 48201 * (1 + 3021 * (rho 48196 * seg52In1AccX37 rho) * (rho 48195 * seg52In1AccY37 rho)) =
        rho 48196 * seg52In1AccX37 rho + rho 48195 * seg52In1AccY37 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48202 * (1 - 3021 * (rho 48196 * seg52In1AccX37 rho) * (rho 48195 * seg52In1AccY37 rho)) =
        (-1) * (rho 48196 * seg52In1AccX37 rho) - rho 48195 * seg52In1AccY37 rho +
          (seg52In1AccY37 rho - seg52In1AccX37 rho * (-1)) * (rho 48195 + rho 48196) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48202 * (1 - rho 48200) = rho 48197 - rho 48198 - rho 48199 := ha5
      _ = (-1) * rho 48198 - rho 48199 + (seg52In1AccY37 rho - seg52In1AccX37 rho * (-1)) *
          (rho 48195 + rho 48196) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX38 rho = seg52In1AccX37 rho - Bool.toZMod bit * (seg52In1AccX37 rho - rho 48201) := by
    have hd : rho 48203 = Bool.toZMod bit * (rho 48201 - seg52In1AccX37 rho) := by
      rw [← hbit]
      unfold seg52In1AccX37
      linear_combination -r3813
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY38 rho = seg52In1AccY37 rho - Bool.toZMod bit * (seg52In1AccY37 rho - rho 48202) := by
    have hd : rho 48204 = Bool.toZMod bit * (rho 48202 - seg52In1AccY37 rho) := by
      rw [← hbit]
      unfold seg52In1AccY37
      linear_combination -r3814
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48195 * rho 48196 = rho 48205 := by linear_combination r3815
  have hd1 : rho 48195 * rho 48195 = rho 48206 := by linear_combination r3816
  have hd2 : rho 48196 * rho 48196 = rho 48207 := by linear_combination r3817
  have hd3 : rho 48208 * (rho 48196 * rho 48196 + rho 48195 * rho 48195 * (-1)) =
      2 * (rho 48195 * rho 48196) := by
    rw [hd0, hd1, hd2]
    linear_combination r3818
  have hd4 : rho 48209 * (2 - (rho 48196 * rho 48196 + rho 48195 * rho 48195 * (-1))) =
      rho 48196 * rho 48196 - rho 48195 * rho 48195 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3819
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX37 rho, seg52In1AccY37 rho⟩ ⟨rho 48195, rho 48196⟩
    ⟨rho 48201, rho 48202⟩ ⟨seg52In1AccX38 rho, seg52In1AccY38 rho⟩ ⟨rho 48208, rho 48209⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows38 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3820 rho ∧ Seg52.relationRow3821 rho ∧ Seg52.relationRow3822 rho ∧ Seg52.relationRow3823 rho ∧ Seg52.relationRow3824 rho ∧ Seg52.relationRow3825 rho ∧ Seg52.relationRow3826 rho ∧ Seg52.relationRow3827 rho ∧ Seg52.relationRow3828 rho ∧ Seg52.relationRow3829 rho ∧ Seg52.relationRow3830 rho ∧ Seg52.relationRow3831 rho ∧ Seg52.relationRow3832 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p47, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart47 at p47

  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3820, r3821, r3822, r3823, r3824, r3825, r3826, r3827, r3828, r3829, r3830, r3831, r3832, _, _, _, _, _, _, _⟩

  exact ⟨r3820, r3821, r3822, r3823, r3824, r3825, r3826, r3827, r3828, r3829, r3830, r3831, r3832⟩

theorem seg52In1_rung38 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47632 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX38 rho, seg52In1AccY38 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48208, rho 48209⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX38 rho, seg52In1AccY38 rho⟩ ⟨rho 48208, rho 48209⟩
        ⟨seg52In1AccX39 rho, seg52In1AccY39 rho⟩ ⟨rho 48221, rho 48222⟩ := by
  obtain ⟨r3820, r3821, r3822, r3823, r3824, r3825, r3826, r3827, r3828, r3829, r3830, r3831, r3832⟩ := seg52In1_rows38 rho h
  unfold Seg52.relationRow3820 at r3820

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3820

  unfold Seg52.relationRow3821 at r3821

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3821

  unfold Seg52.relationRow3822 at r3822

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3822

  unfold Seg52.relationRow3823 at r3823

  unfold Seg52.relationRow3824 at r3824

  unfold Seg52.relationRow3825 at r3825

  unfold Seg52.relationRow3826 at r3826

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3826

  unfold Seg52.relationRow3827 at r3827

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3827

  unfold Seg52.relationRow3828 at r3828

  unfold Seg52.relationRow3829 at r3829

  unfold Seg52.relationRow3830 at r3830

  unfold Seg52.relationRow3831 at r3831

  unfold Seg52.relationRow3832 at r3832

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX39 rho = seg52In1AccX38 rho + rho 48216 := by
    unfold seg52In1AccX39 seg52In1AccX38
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 38]

    ring

  have hnexty : seg52In1AccY39 rho = seg52In1AccY38 rho + rho 48217 := by
    unfold seg52In1AccY39 seg52In1AccY38
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 38]

    ring

  have ha0 : (rho 48208 + rho 48209) * (seg52In1AccX38 rho + seg52In1AccY38 rho) = rho 48210 := by
    unfold seg52In1AccX38 seg52In1AccY38
    linear_combination r3820
  have ha1 : rho 48209 * seg52In1AccX38 rho = rho 48211 := by
    unfold seg52In1AccX38
    linear_combination r3821
  have ha2 : rho 48208 * seg52In1AccY38 rho = rho 48212 := by
    unfold seg52In1AccY38
    linear_combination r3822
  have ha3 : 3021 * rho 48211 * rho 48212 = rho 48213 := by
    linear_combination r3823
  have ha4 : rho 48214 * (1 + rho 48213) = rho 48211 + rho 48212 := by
    linear_combination r3824
  have ha5 : rho 48215 * (1 - rho 48213) = rho 48210 - rho 48211 - rho 48212 := by
    linear_combination r3825
  have haddx :
      rho 48214 * (1 + 3021 * (rho 48209 * seg52In1AccX38 rho) * (rho 48208 * seg52In1AccY38 rho)) =
        rho 48209 * seg52In1AccX38 rho + rho 48208 * seg52In1AccY38 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48215 * (1 - 3021 * (rho 48209 * seg52In1AccX38 rho) * (rho 48208 * seg52In1AccY38 rho)) =
        (-1) * (rho 48209 * seg52In1AccX38 rho) - rho 48208 * seg52In1AccY38 rho +
          (seg52In1AccY38 rho - seg52In1AccX38 rho * (-1)) * (rho 48208 + rho 48209) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48215 * (1 - rho 48213) = rho 48210 - rho 48211 - rho 48212 := ha5
      _ = (-1) * rho 48211 - rho 48212 + (seg52In1AccY38 rho - seg52In1AccX38 rho * (-1)) *
          (rho 48208 + rho 48209) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX39 rho = seg52In1AccX38 rho - Bool.toZMod bit * (seg52In1AccX38 rho - rho 48214) := by
    have hd : rho 48216 = Bool.toZMod bit * (rho 48214 - seg52In1AccX38 rho) := by
      rw [← hbit]
      unfold seg52In1AccX38
      linear_combination -r3826
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY39 rho = seg52In1AccY38 rho - Bool.toZMod bit * (seg52In1AccY38 rho - rho 48215) := by
    have hd : rho 48217 = Bool.toZMod bit * (rho 48215 - seg52In1AccY38 rho) := by
      rw [← hbit]
      unfold seg52In1AccY38
      linear_combination -r3827
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48208 * rho 48209 = rho 48218 := by linear_combination r3828
  have hd1 : rho 48208 * rho 48208 = rho 48219 := by linear_combination r3829
  have hd2 : rho 48209 * rho 48209 = rho 48220 := by linear_combination r3830
  have hd3 : rho 48221 * (rho 48209 * rho 48209 + rho 48208 * rho 48208 * (-1)) =
      2 * (rho 48208 * rho 48209) := by
    rw [hd0, hd1, hd2]
    linear_combination r3831
  have hd4 : rho 48222 * (2 - (rho 48209 * rho 48209 + rho 48208 * rho 48208 * (-1))) =
      rho 48209 * rho 48209 - rho 48208 * rho 48208 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3832
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX38 rho, seg52In1AccY38 rho⟩ ⟨rho 48208, rho 48209⟩
    ⟨rho 48214, rho 48215⟩ ⟨seg52In1AccX39 rho, seg52In1AccY39 rho⟩ ⟨rho 48221, rho 48222⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows39 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3833 rho ∧ Seg52.relationRow3834 rho ∧ Seg52.relationRow3835 rho ∧ Seg52.relationRow3836 rho ∧ Seg52.relationRow3837 rho ∧ Seg52.relationRow3838 rho ∧ Seg52.relationRow3839 rho ∧ Seg52.relationRow3840 rho ∧ Seg52.relationRow3841 rho ∧ Seg52.relationRow3842 rho ∧ Seg52.relationRow3843 rho ∧ Seg52.relationRow3844 rho ∧ Seg52.relationRow3845 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p47, p48, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart47 at p47

  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3833, r3834, r3835, r3836, r3837, r3838, r3839⟩

  unfold Seg52.relationPart48 at p48

  rcases p48 with ⟨r3840, r3841, r3842, r3843, r3844, r3845, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3833, r3834, r3835, r3836, r3837, r3838, r3839, r3840, r3841, r3842, r3843, r3844, r3845⟩

theorem seg52In1_rung39 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47633 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX39 rho, seg52In1AccY39 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48221, rho 48222⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX39 rho, seg52In1AccY39 rho⟩ ⟨rho 48221, rho 48222⟩
        ⟨seg52In1AccX40 rho, seg52In1AccY40 rho⟩ ⟨rho 48234, rho 48235⟩ := by
  obtain ⟨r3833, r3834, r3835, r3836, r3837, r3838, r3839, r3840, r3841, r3842, r3843, r3844, r3845⟩ := seg52In1_rows39 rho h
  unfold Seg52.relationRow3833 at r3833

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3833

  unfold Seg52.relationRow3834 at r3834

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3834

  unfold Seg52.relationRow3835 at r3835

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3835

  unfold Seg52.relationRow3836 at r3836

  unfold Seg52.relationRow3837 at r3837

  unfold Seg52.relationRow3838 at r3838

  unfold Seg52.relationRow3839 at r3839

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3839

  unfold Seg52.relationRow3840 at r3840

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3840

  unfold Seg52.relationRow3841 at r3841

  unfold Seg52.relationRow3842 at r3842

  unfold Seg52.relationRow3843 at r3843

  unfold Seg52.relationRow3844 at r3844

  unfold Seg52.relationRow3845 at r3845

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX40 rho = seg52In1AccX39 rho + rho 48229 := by
    unfold seg52In1AccX40 seg52In1AccX39
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 39]

    ring

  have hnexty : seg52In1AccY40 rho = seg52In1AccY39 rho + rho 48230 := by
    unfold seg52In1AccY40 seg52In1AccY39
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 39]

    ring

  have ha0 : (rho 48221 + rho 48222) * (seg52In1AccX39 rho + seg52In1AccY39 rho) = rho 48223 := by
    unfold seg52In1AccX39 seg52In1AccY39
    linear_combination r3833
  have ha1 : rho 48222 * seg52In1AccX39 rho = rho 48224 := by
    unfold seg52In1AccX39
    linear_combination r3834
  have ha2 : rho 48221 * seg52In1AccY39 rho = rho 48225 := by
    unfold seg52In1AccY39
    linear_combination r3835
  have ha3 : 3021 * rho 48224 * rho 48225 = rho 48226 := by
    linear_combination r3836
  have ha4 : rho 48227 * (1 + rho 48226) = rho 48224 + rho 48225 := by
    linear_combination r3837
  have ha5 : rho 48228 * (1 - rho 48226) = rho 48223 - rho 48224 - rho 48225 := by
    linear_combination r3838
  have haddx :
      rho 48227 * (1 + 3021 * (rho 48222 * seg52In1AccX39 rho) * (rho 48221 * seg52In1AccY39 rho)) =
        rho 48222 * seg52In1AccX39 rho + rho 48221 * seg52In1AccY39 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48228 * (1 - 3021 * (rho 48222 * seg52In1AccX39 rho) * (rho 48221 * seg52In1AccY39 rho)) =
        (-1) * (rho 48222 * seg52In1AccX39 rho) - rho 48221 * seg52In1AccY39 rho +
          (seg52In1AccY39 rho - seg52In1AccX39 rho * (-1)) * (rho 48221 + rho 48222) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48228 * (1 - rho 48226) = rho 48223 - rho 48224 - rho 48225 := ha5
      _ = (-1) * rho 48224 - rho 48225 + (seg52In1AccY39 rho - seg52In1AccX39 rho * (-1)) *
          (rho 48221 + rho 48222) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX40 rho = seg52In1AccX39 rho - Bool.toZMod bit * (seg52In1AccX39 rho - rho 48227) := by
    have hd : rho 48229 = Bool.toZMod bit * (rho 48227 - seg52In1AccX39 rho) := by
      rw [← hbit]
      unfold seg52In1AccX39
      linear_combination -r3839
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY40 rho = seg52In1AccY39 rho - Bool.toZMod bit * (seg52In1AccY39 rho - rho 48228) := by
    have hd : rho 48230 = Bool.toZMod bit * (rho 48228 - seg52In1AccY39 rho) := by
      rw [← hbit]
      unfold seg52In1AccY39
      linear_combination -r3840
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48221 * rho 48222 = rho 48231 := by linear_combination r3841
  have hd1 : rho 48221 * rho 48221 = rho 48232 := by linear_combination r3842
  have hd2 : rho 48222 * rho 48222 = rho 48233 := by linear_combination r3843
  have hd3 : rho 48234 * (rho 48222 * rho 48222 + rho 48221 * rho 48221 * (-1)) =
      2 * (rho 48221 * rho 48222) := by
    rw [hd0, hd1, hd2]
    linear_combination r3844
  have hd4 : rho 48235 * (2 - (rho 48222 * rho 48222 + rho 48221 * rho 48221 * (-1))) =
      rho 48222 * rho 48222 - rho 48221 * rho 48221 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3845
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX39 rho, seg52In1AccY39 rho⟩ ⟨rho 48221, rho 48222⟩
    ⟨rho 48227, rho 48228⟩ ⟨seg52In1AccX40 rho, seg52In1AccY40 rho⟩ ⟨rho 48234, rho 48235⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows40 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3846 rho ∧ Seg52.relationRow3847 rho ∧ Seg52.relationRow3848 rho ∧ Seg52.relationRow3849 rho ∧ Seg52.relationRow3850 rho ∧ Seg52.relationRow3851 rho ∧ Seg52.relationRow3852 rho ∧ Seg52.relationRow3853 rho ∧ Seg52.relationRow3854 rho ∧ Seg52.relationRow3855 rho ∧ Seg52.relationRow3856 rho ∧ Seg52.relationRow3857 rho ∧ Seg52.relationRow3858 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p48, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart48 at p48

  rcases p48 with ⟨_, _, _, _, _, _, r3846, r3847, r3848, r3849, r3850, r3851, r3852, r3853, r3854, r3855, r3856, r3857, r3858, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3846, r3847, r3848, r3849, r3850, r3851, r3852, r3853, r3854, r3855, r3856, r3857, r3858⟩

theorem seg52In1_rung40 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47634 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX40 rho, seg52In1AccY40 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48234, rho 48235⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX40 rho, seg52In1AccY40 rho⟩ ⟨rho 48234, rho 48235⟩
        ⟨seg52In1AccX41 rho, seg52In1AccY41 rho⟩ ⟨rho 48247, rho 48248⟩ := by
  obtain ⟨r3846, r3847, r3848, r3849, r3850, r3851, r3852, r3853, r3854, r3855, r3856, r3857, r3858⟩ := seg52In1_rows40 rho h
  unfold Seg52.relationRow3846 at r3846

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3846

  unfold Seg52.relationRow3847 at r3847

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3847

  unfold Seg52.relationRow3848 at r3848

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3848

  unfold Seg52.relationRow3849 at r3849

  unfold Seg52.relationRow3850 at r3850

  unfold Seg52.relationRow3851 at r3851

  unfold Seg52.relationRow3852 at r3852

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3852

  unfold Seg52.relationRow3853 at r3853

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3853

  unfold Seg52.relationRow3854 at r3854

  unfold Seg52.relationRow3855 at r3855

  unfold Seg52.relationRow3856 at r3856

  unfold Seg52.relationRow3857 at r3857

  unfold Seg52.relationRow3858 at r3858

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX41 rho = seg52In1AccX40 rho + rho 48242 := by
    unfold seg52In1AccX41 seg52In1AccX40
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 40]

    ring

  have hnexty : seg52In1AccY41 rho = seg52In1AccY40 rho + rho 48243 := by
    unfold seg52In1AccY41 seg52In1AccY40
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 40]

    ring

  have ha0 : (rho 48234 + rho 48235) * (seg52In1AccX40 rho + seg52In1AccY40 rho) = rho 48236 := by
    unfold seg52In1AccX40 seg52In1AccY40
    linear_combination r3846
  have ha1 : rho 48235 * seg52In1AccX40 rho = rho 48237 := by
    unfold seg52In1AccX40
    linear_combination r3847
  have ha2 : rho 48234 * seg52In1AccY40 rho = rho 48238 := by
    unfold seg52In1AccY40
    linear_combination r3848
  have ha3 : 3021 * rho 48237 * rho 48238 = rho 48239 := by
    linear_combination r3849
  have ha4 : rho 48240 * (1 + rho 48239) = rho 48237 + rho 48238 := by
    linear_combination r3850
  have ha5 : rho 48241 * (1 - rho 48239) = rho 48236 - rho 48237 - rho 48238 := by
    linear_combination r3851
  have haddx :
      rho 48240 * (1 + 3021 * (rho 48235 * seg52In1AccX40 rho) * (rho 48234 * seg52In1AccY40 rho)) =
        rho 48235 * seg52In1AccX40 rho + rho 48234 * seg52In1AccY40 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48241 * (1 - 3021 * (rho 48235 * seg52In1AccX40 rho) * (rho 48234 * seg52In1AccY40 rho)) =
        (-1) * (rho 48235 * seg52In1AccX40 rho) - rho 48234 * seg52In1AccY40 rho +
          (seg52In1AccY40 rho - seg52In1AccX40 rho * (-1)) * (rho 48234 + rho 48235) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48241 * (1 - rho 48239) = rho 48236 - rho 48237 - rho 48238 := ha5
      _ = (-1) * rho 48237 - rho 48238 + (seg52In1AccY40 rho - seg52In1AccX40 rho * (-1)) *
          (rho 48234 + rho 48235) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX41 rho = seg52In1AccX40 rho - Bool.toZMod bit * (seg52In1AccX40 rho - rho 48240) := by
    have hd : rho 48242 = Bool.toZMod bit * (rho 48240 - seg52In1AccX40 rho) := by
      rw [← hbit]
      unfold seg52In1AccX40
      linear_combination -r3852
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY41 rho = seg52In1AccY40 rho - Bool.toZMod bit * (seg52In1AccY40 rho - rho 48241) := by
    have hd : rho 48243 = Bool.toZMod bit * (rho 48241 - seg52In1AccY40 rho) := by
      rw [← hbit]
      unfold seg52In1AccY40
      linear_combination -r3853
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48234 * rho 48235 = rho 48244 := by linear_combination r3854
  have hd1 : rho 48234 * rho 48234 = rho 48245 := by linear_combination r3855
  have hd2 : rho 48235 * rho 48235 = rho 48246 := by linear_combination r3856
  have hd3 : rho 48247 * (rho 48235 * rho 48235 + rho 48234 * rho 48234 * (-1)) =
      2 * (rho 48234 * rho 48235) := by
    rw [hd0, hd1, hd2]
    linear_combination r3857
  have hd4 : rho 48248 * (2 - (rho 48235 * rho 48235 + rho 48234 * rho 48234 * (-1))) =
      rho 48235 * rho 48235 - rho 48234 * rho 48234 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3858
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX40 rho, seg52In1AccY40 rho⟩ ⟨rho 48234, rho 48235⟩
    ⟨rho 48240, rho 48241⟩ ⟨seg52In1AccX41 rho, seg52In1AccY41 rho⟩ ⟨rho 48247, rho 48248⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows41 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3859 rho ∧ Seg52.relationRow3860 rho ∧ Seg52.relationRow3861 rho ∧ Seg52.relationRow3862 rho ∧ Seg52.relationRow3863 rho ∧ Seg52.relationRow3864 rho ∧ Seg52.relationRow3865 rho ∧ Seg52.relationRow3866 rho ∧ Seg52.relationRow3867 rho ∧ Seg52.relationRow3868 rho ∧ Seg52.relationRow3869 rho ∧ Seg52.relationRow3870 rho ∧ Seg52.relationRow3871 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p48, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart48 at p48

  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3859, r3860, r3861, r3862, r3863, r3864, r3865, r3866, r3867, r3868, r3869, r3870, r3871, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3859, r3860, r3861, r3862, r3863, r3864, r3865, r3866, r3867, r3868, r3869, r3870, r3871⟩

theorem seg52In1_rung41 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47635 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX41 rho, seg52In1AccY41 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48247, rho 48248⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX41 rho, seg52In1AccY41 rho⟩ ⟨rho 48247, rho 48248⟩
        ⟨seg52In1AccX42 rho, seg52In1AccY42 rho⟩ ⟨rho 48260, rho 48261⟩ := by
  obtain ⟨r3859, r3860, r3861, r3862, r3863, r3864, r3865, r3866, r3867, r3868, r3869, r3870, r3871⟩ := seg52In1_rows41 rho h
  unfold Seg52.relationRow3859 at r3859

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3859

  unfold Seg52.relationRow3860 at r3860

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3860

  unfold Seg52.relationRow3861 at r3861

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3861

  unfold Seg52.relationRow3862 at r3862

  unfold Seg52.relationRow3863 at r3863

  unfold Seg52.relationRow3864 at r3864

  unfold Seg52.relationRow3865 at r3865

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3865

  unfold Seg52.relationRow3866 at r3866

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3866

  unfold Seg52.relationRow3867 at r3867

  unfold Seg52.relationRow3868 at r3868

  unfold Seg52.relationRow3869 at r3869

  unfold Seg52.relationRow3870 at r3870

  unfold Seg52.relationRow3871 at r3871

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX42 rho = seg52In1AccX41 rho + rho 48255 := by
    unfold seg52In1AccX42 seg52In1AccX41
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 41]

    ring

  have hnexty : seg52In1AccY42 rho = seg52In1AccY41 rho + rho 48256 := by
    unfold seg52In1AccY42 seg52In1AccY41
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 41]

    ring

  have ha0 : (rho 48247 + rho 48248) * (seg52In1AccX41 rho + seg52In1AccY41 rho) = rho 48249 := by
    unfold seg52In1AccX41 seg52In1AccY41
    linear_combination r3859
  have ha1 : rho 48248 * seg52In1AccX41 rho = rho 48250 := by
    unfold seg52In1AccX41
    linear_combination r3860
  have ha2 : rho 48247 * seg52In1AccY41 rho = rho 48251 := by
    unfold seg52In1AccY41
    linear_combination r3861
  have ha3 : 3021 * rho 48250 * rho 48251 = rho 48252 := by
    linear_combination r3862
  have ha4 : rho 48253 * (1 + rho 48252) = rho 48250 + rho 48251 := by
    linear_combination r3863
  have ha5 : rho 48254 * (1 - rho 48252) = rho 48249 - rho 48250 - rho 48251 := by
    linear_combination r3864
  have haddx :
      rho 48253 * (1 + 3021 * (rho 48248 * seg52In1AccX41 rho) * (rho 48247 * seg52In1AccY41 rho)) =
        rho 48248 * seg52In1AccX41 rho + rho 48247 * seg52In1AccY41 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48254 * (1 - 3021 * (rho 48248 * seg52In1AccX41 rho) * (rho 48247 * seg52In1AccY41 rho)) =
        (-1) * (rho 48248 * seg52In1AccX41 rho) - rho 48247 * seg52In1AccY41 rho +
          (seg52In1AccY41 rho - seg52In1AccX41 rho * (-1)) * (rho 48247 + rho 48248) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48254 * (1 - rho 48252) = rho 48249 - rho 48250 - rho 48251 := ha5
      _ = (-1) * rho 48250 - rho 48251 + (seg52In1AccY41 rho - seg52In1AccX41 rho * (-1)) *
          (rho 48247 + rho 48248) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX42 rho = seg52In1AccX41 rho - Bool.toZMod bit * (seg52In1AccX41 rho - rho 48253) := by
    have hd : rho 48255 = Bool.toZMod bit * (rho 48253 - seg52In1AccX41 rho) := by
      rw [← hbit]
      unfold seg52In1AccX41
      linear_combination -r3865
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY42 rho = seg52In1AccY41 rho - Bool.toZMod bit * (seg52In1AccY41 rho - rho 48254) := by
    have hd : rho 48256 = Bool.toZMod bit * (rho 48254 - seg52In1AccY41 rho) := by
      rw [← hbit]
      unfold seg52In1AccY41
      linear_combination -r3866
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48247 * rho 48248 = rho 48257 := by linear_combination r3867
  have hd1 : rho 48247 * rho 48247 = rho 48258 := by linear_combination r3868
  have hd2 : rho 48248 * rho 48248 = rho 48259 := by linear_combination r3869
  have hd3 : rho 48260 * (rho 48248 * rho 48248 + rho 48247 * rho 48247 * (-1)) =
      2 * (rho 48247 * rho 48248) := by
    rw [hd0, hd1, hd2]
    linear_combination r3870
  have hd4 : rho 48261 * (2 - (rho 48248 * rho 48248 + rho 48247 * rho 48247 * (-1))) =
      rho 48248 * rho 48248 - rho 48247 * rho 48247 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3871
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX41 rho, seg52In1AccY41 rho⟩ ⟨rho 48247, rho 48248⟩
    ⟨rho 48253, rho 48254⟩ ⟨seg52In1AccX42 rho, seg52In1AccY42 rho⟩ ⟨rho 48260, rho 48261⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows42 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3872 rho ∧ Seg52.relationRow3873 rho ∧ Seg52.relationRow3874 rho ∧ Seg52.relationRow3875 rho ∧ Seg52.relationRow3876 rho ∧ Seg52.relationRow3877 rho ∧ Seg52.relationRow3878 rho ∧ Seg52.relationRow3879 rho ∧ Seg52.relationRow3880 rho ∧ Seg52.relationRow3881 rho ∧ Seg52.relationRow3882 rho ∧ Seg52.relationRow3883 rho ∧ Seg52.relationRow3884 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p48, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart48 at p48

  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3872, r3873, r3874, r3875, r3876, r3877, r3878, r3879, r3880, r3881, r3882, r3883, r3884, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3872, r3873, r3874, r3875, r3876, r3877, r3878, r3879, r3880, r3881, r3882, r3883, r3884⟩

theorem seg52In1_rung42 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47636 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX42 rho, seg52In1AccY42 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48260, rho 48261⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX42 rho, seg52In1AccY42 rho⟩ ⟨rho 48260, rho 48261⟩
        ⟨seg52In1AccX43 rho, seg52In1AccY43 rho⟩ ⟨rho 48273, rho 48274⟩ := by
  obtain ⟨r3872, r3873, r3874, r3875, r3876, r3877, r3878, r3879, r3880, r3881, r3882, r3883, r3884⟩ := seg52In1_rows42 rho h
  unfold Seg52.relationRow3872 at r3872

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3872

  unfold Seg52.relationRow3873 at r3873

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3873

  unfold Seg52.relationRow3874 at r3874

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3874

  unfold Seg52.relationRow3875 at r3875

  unfold Seg52.relationRow3876 at r3876

  unfold Seg52.relationRow3877 at r3877

  unfold Seg52.relationRow3878 at r3878

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3878

  unfold Seg52.relationRow3879 at r3879

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3879

  unfold Seg52.relationRow3880 at r3880

  unfold Seg52.relationRow3881 at r3881

  unfold Seg52.relationRow3882 at r3882

  unfold Seg52.relationRow3883 at r3883

  unfold Seg52.relationRow3884 at r3884

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX43 rho = seg52In1AccX42 rho + rho 48268 := by
    unfold seg52In1AccX43 seg52In1AccX42
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 42]

    ring

  have hnexty : seg52In1AccY43 rho = seg52In1AccY42 rho + rho 48269 := by
    unfold seg52In1AccY43 seg52In1AccY42
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 42]

    ring

  have ha0 : (rho 48260 + rho 48261) * (seg52In1AccX42 rho + seg52In1AccY42 rho) = rho 48262 := by
    unfold seg52In1AccX42 seg52In1AccY42
    linear_combination r3872
  have ha1 : rho 48261 * seg52In1AccX42 rho = rho 48263 := by
    unfold seg52In1AccX42
    linear_combination r3873
  have ha2 : rho 48260 * seg52In1AccY42 rho = rho 48264 := by
    unfold seg52In1AccY42
    linear_combination r3874
  have ha3 : 3021 * rho 48263 * rho 48264 = rho 48265 := by
    linear_combination r3875
  have ha4 : rho 48266 * (1 + rho 48265) = rho 48263 + rho 48264 := by
    linear_combination r3876
  have ha5 : rho 48267 * (1 - rho 48265) = rho 48262 - rho 48263 - rho 48264 := by
    linear_combination r3877
  have haddx :
      rho 48266 * (1 + 3021 * (rho 48261 * seg52In1AccX42 rho) * (rho 48260 * seg52In1AccY42 rho)) =
        rho 48261 * seg52In1AccX42 rho + rho 48260 * seg52In1AccY42 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48267 * (1 - 3021 * (rho 48261 * seg52In1AccX42 rho) * (rho 48260 * seg52In1AccY42 rho)) =
        (-1) * (rho 48261 * seg52In1AccX42 rho) - rho 48260 * seg52In1AccY42 rho +
          (seg52In1AccY42 rho - seg52In1AccX42 rho * (-1)) * (rho 48260 + rho 48261) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48267 * (1 - rho 48265) = rho 48262 - rho 48263 - rho 48264 := ha5
      _ = (-1) * rho 48263 - rho 48264 + (seg52In1AccY42 rho - seg52In1AccX42 rho * (-1)) *
          (rho 48260 + rho 48261) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX43 rho = seg52In1AccX42 rho - Bool.toZMod bit * (seg52In1AccX42 rho - rho 48266) := by
    have hd : rho 48268 = Bool.toZMod bit * (rho 48266 - seg52In1AccX42 rho) := by
      rw [← hbit]
      unfold seg52In1AccX42
      linear_combination -r3878
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY43 rho = seg52In1AccY42 rho - Bool.toZMod bit * (seg52In1AccY42 rho - rho 48267) := by
    have hd : rho 48269 = Bool.toZMod bit * (rho 48267 - seg52In1AccY42 rho) := by
      rw [← hbit]
      unfold seg52In1AccY42
      linear_combination -r3879
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48260 * rho 48261 = rho 48270 := by linear_combination r3880
  have hd1 : rho 48260 * rho 48260 = rho 48271 := by linear_combination r3881
  have hd2 : rho 48261 * rho 48261 = rho 48272 := by linear_combination r3882
  have hd3 : rho 48273 * (rho 48261 * rho 48261 + rho 48260 * rho 48260 * (-1)) =
      2 * (rho 48260 * rho 48261) := by
    rw [hd0, hd1, hd2]
    linear_combination r3883
  have hd4 : rho 48274 * (2 - (rho 48261 * rho 48261 + rho 48260 * rho 48260 * (-1))) =
      rho 48261 * rho 48261 - rho 48260 * rho 48260 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3884
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX42 rho, seg52In1AccY42 rho⟩ ⟨rho 48260, rho 48261⟩
    ⟨rho 48266, rho 48267⟩ ⟨seg52In1AccX43 rho, seg52In1AccY43 rho⟩ ⟨rho 48273, rho 48274⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows43 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3885 rho ∧ Seg52.relationRow3886 rho ∧ Seg52.relationRow3887 rho ∧ Seg52.relationRow3888 rho ∧ Seg52.relationRow3889 rho ∧ Seg52.relationRow3890 rho ∧ Seg52.relationRow3891 rho ∧ Seg52.relationRow3892 rho ∧ Seg52.relationRow3893 rho ∧ Seg52.relationRow3894 rho ∧ Seg52.relationRow3895 rho ∧ Seg52.relationRow3896 rho ∧ Seg52.relationRow3897 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p48, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart48 at p48

  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3885, r3886, r3887, r3888, r3889, r3890, r3891, r3892, r3893, r3894, r3895, r3896, r3897, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3885, r3886, r3887, r3888, r3889, r3890, r3891, r3892, r3893, r3894, r3895, r3896, r3897⟩

theorem seg52In1_rung43 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47637 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX43 rho, seg52In1AccY43 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48273, rho 48274⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX43 rho, seg52In1AccY43 rho⟩ ⟨rho 48273, rho 48274⟩
        ⟨seg52In1AccX44 rho, seg52In1AccY44 rho⟩ ⟨rho 48286, rho 48287⟩ := by
  obtain ⟨r3885, r3886, r3887, r3888, r3889, r3890, r3891, r3892, r3893, r3894, r3895, r3896, r3897⟩ := seg52In1_rows43 rho h
  unfold Seg52.relationRow3885 at r3885

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3885

  unfold Seg52.relationRow3886 at r3886

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3886

  unfold Seg52.relationRow3887 at r3887

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3887

  unfold Seg52.relationRow3888 at r3888

  unfold Seg52.relationRow3889 at r3889

  unfold Seg52.relationRow3890 at r3890

  unfold Seg52.relationRow3891 at r3891

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3891

  unfold Seg52.relationRow3892 at r3892

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3892

  unfold Seg52.relationRow3893 at r3893

  unfold Seg52.relationRow3894 at r3894

  unfold Seg52.relationRow3895 at r3895

  unfold Seg52.relationRow3896 at r3896

  unfold Seg52.relationRow3897 at r3897

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX44 rho = seg52In1AccX43 rho + rho 48281 := by
    unfold seg52In1AccX44 seg52In1AccX43
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 43]

    ring

  have hnexty : seg52In1AccY44 rho = seg52In1AccY43 rho + rho 48282 := by
    unfold seg52In1AccY44 seg52In1AccY43
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 43]

    ring

  have ha0 : (rho 48273 + rho 48274) * (seg52In1AccX43 rho + seg52In1AccY43 rho) = rho 48275 := by
    unfold seg52In1AccX43 seg52In1AccY43
    linear_combination r3885
  have ha1 : rho 48274 * seg52In1AccX43 rho = rho 48276 := by
    unfold seg52In1AccX43
    linear_combination r3886
  have ha2 : rho 48273 * seg52In1AccY43 rho = rho 48277 := by
    unfold seg52In1AccY43
    linear_combination r3887
  have ha3 : 3021 * rho 48276 * rho 48277 = rho 48278 := by
    linear_combination r3888
  have ha4 : rho 48279 * (1 + rho 48278) = rho 48276 + rho 48277 := by
    linear_combination r3889
  have ha5 : rho 48280 * (1 - rho 48278) = rho 48275 - rho 48276 - rho 48277 := by
    linear_combination r3890
  have haddx :
      rho 48279 * (1 + 3021 * (rho 48274 * seg52In1AccX43 rho) * (rho 48273 * seg52In1AccY43 rho)) =
        rho 48274 * seg52In1AccX43 rho + rho 48273 * seg52In1AccY43 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48280 * (1 - 3021 * (rho 48274 * seg52In1AccX43 rho) * (rho 48273 * seg52In1AccY43 rho)) =
        (-1) * (rho 48274 * seg52In1AccX43 rho) - rho 48273 * seg52In1AccY43 rho +
          (seg52In1AccY43 rho - seg52In1AccX43 rho * (-1)) * (rho 48273 + rho 48274) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48280 * (1 - rho 48278) = rho 48275 - rho 48276 - rho 48277 := ha5
      _ = (-1) * rho 48276 - rho 48277 + (seg52In1AccY43 rho - seg52In1AccX43 rho * (-1)) *
          (rho 48273 + rho 48274) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX44 rho = seg52In1AccX43 rho - Bool.toZMod bit * (seg52In1AccX43 rho - rho 48279) := by
    have hd : rho 48281 = Bool.toZMod bit * (rho 48279 - seg52In1AccX43 rho) := by
      rw [← hbit]
      unfold seg52In1AccX43
      linear_combination -r3891
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY44 rho = seg52In1AccY43 rho - Bool.toZMod bit * (seg52In1AccY43 rho - rho 48280) := by
    have hd : rho 48282 = Bool.toZMod bit * (rho 48280 - seg52In1AccY43 rho) := by
      rw [← hbit]
      unfold seg52In1AccY43
      linear_combination -r3892
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48273 * rho 48274 = rho 48283 := by linear_combination r3893
  have hd1 : rho 48273 * rho 48273 = rho 48284 := by linear_combination r3894
  have hd2 : rho 48274 * rho 48274 = rho 48285 := by linear_combination r3895
  have hd3 : rho 48286 * (rho 48274 * rho 48274 + rho 48273 * rho 48273 * (-1)) =
      2 * (rho 48273 * rho 48274) := by
    rw [hd0, hd1, hd2]
    linear_combination r3896
  have hd4 : rho 48287 * (2 - (rho 48274 * rho 48274 + rho 48273 * rho 48273 * (-1))) =
      rho 48274 * rho 48274 - rho 48273 * rho 48273 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3897
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX43 rho, seg52In1AccY43 rho⟩ ⟨rho 48273, rho 48274⟩
    ⟨rho 48279, rho 48280⟩ ⟨seg52In1AccX44 rho, seg52In1AccY44 rho⟩ ⟨rho 48286, rho 48287⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_hstep_c3 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (47594 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 33 ≤ i → i < 44 →
      EdwardsBridge.onCurve (seg52In1AccState rho i) →
      EdwardsBridge.onCurve (seg52In1CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In1AccState rho i) (seg52In1CurState rho i)
        (seg52In1AccState rho (i + 1)) (seg52In1CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In1_rung33 rho h bits[33]! (hbitAt 33 (by omega)) hacc hcur
  · exact seg52In1_rung34 rho h bits[34]! (hbitAt 34 (by omega)) hacc hcur
  · exact seg52In1_rung35 rho h bits[35]! (hbitAt 35 (by omega)) hacc hcur
  · exact seg52In1_rung36 rho h bits[36]! (hbitAt 36 (by omega)) hacc hcur
  · exact seg52In1_rung37 rho h bits[37]! (hbitAt 37 (by omega)) hacc hcur
  · exact seg52In1_rung38 rho h bits[38]! (hbitAt 38 (by omega)) hacc hcur
  · exact seg52In1_rung39 rho h bits[39]! (hbitAt 39 (by omega)) hacc hcur
  · exact seg52In1_rung40 rho h bits[40]! (hbitAt 40 (by omega)) hacc hcur
  · exact seg52In1_rung41 rho h bits[41]! (hbitAt 41 (by omega)) hacc hcur
  · exact seg52In1_rung42 rho h bits[42]! (hbitAt 42 (by omega)) hacc hcur
  · exact seg52In1_rung43 rho h bits[43]! (hbitAt 43 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
