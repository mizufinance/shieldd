import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48In1_rows88 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3830 rho ∧ Seg48.relationRow3831 rho ∧ Seg48.relationRow3832 rho ∧ Seg48.relationRow3833 rho ∧ Seg48.relationRow3834 rho ∧ Seg48.relationRow3835 rho ∧ Seg48.relationRow3836 rho ∧ Seg48.relationRow3837 rho ∧ Seg48.relationRow3838 rho ∧ Seg48.relationRow3839 rho ∧ Seg48.relationRow3840 rho ∧ Seg48.relationRow3841 rho ∧ Seg48.relationRow3842 rho := by
  unfold Seg48.relation at h

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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart47 at p47

  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3830, r3831, r3832, r3833, r3834, r3835, r3836, r3837, r3838, r3839⟩

  unfold Seg48.relationPart48 at p48

  rcases p48 with ⟨r3840, r3841, r3842, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3830, r3831, r3832, r3833, r3834, r3835, r3836, r3837, r3838, r3839, r3840, r3841, r3842⟩

theorem seg48In1_rung88 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35410 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX88 rho, seg48In1AccY88 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36586, rho 36587⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX88 rho, seg48In1AccY88 rho⟩ ⟨rho 36586, rho 36587⟩
        ⟨seg48In1AccX89 rho, seg48In1AccY89 rho⟩ ⟨rho 36599, rho 36600⟩ := by
  obtain ⟨r3830, r3831, r3832, r3833, r3834, r3835, r3836, r3837, r3838, r3839, r3840, r3841, r3842⟩ := seg48In1_rows88 rho h
  unfold Seg48.relationRow3830 at r3830

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3830

  unfold Seg48.relationRow3831 at r3831

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3831

  unfold Seg48.relationRow3832 at r3832

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3832

  unfold Seg48.relationRow3833 at r3833

  unfold Seg48.relationRow3834 at r3834

  unfold Seg48.relationRow3835 at r3835

  unfold Seg48.relationRow3836 at r3836

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3836

  unfold Seg48.relationRow3837 at r3837

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3837

  unfold Seg48.relationRow3838 at r3838

  unfold Seg48.relationRow3839 at r3839

  unfold Seg48.relationRow3840 at r3840

  unfold Seg48.relationRow3841 at r3841

  unfold Seg48.relationRow3842 at r3842

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX89 rho = seg48In1AccX88 rho + rho 36594 := by
    unfold seg48In1AccX89 seg48In1AccX88
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 88]

    ring

  have hnexty : seg48In1AccY89 rho = seg48In1AccY88 rho + rho 36595 := by
    unfold seg48In1AccY89 seg48In1AccY88
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 88]

    ring

  have ha0 : (rho 36586 + rho 36587) * (seg48In1AccX88 rho + seg48In1AccY88 rho) = rho 36588 := by
    unfold seg48In1AccX88 seg48In1AccY88
    linear_combination r3830
  have ha1 : rho 36587 * seg48In1AccX88 rho = rho 36589 := by
    unfold seg48In1AccX88
    linear_combination r3831
  have ha2 : rho 36586 * seg48In1AccY88 rho = rho 36590 := by
    unfold seg48In1AccY88
    linear_combination r3832
  have ha3 : 3021 * rho 36589 * rho 36590 = rho 36591 := by
    linear_combination r3833
  have ha4 : rho 36592 * (1 + rho 36591) = rho 36589 + rho 36590 := by
    linear_combination r3834
  have ha5 : rho 36593 * (1 - rho 36591) = rho 36588 - rho 36589 - rho 36590 := by
    linear_combination r3835
  have haddx :
      rho 36592 * (1 + 3021 * (rho 36587 * seg48In1AccX88 rho) * (rho 36586 * seg48In1AccY88 rho)) =
        rho 36587 * seg48In1AccX88 rho + rho 36586 * seg48In1AccY88 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36593 * (1 - 3021 * (rho 36587 * seg48In1AccX88 rho) * (rho 36586 * seg48In1AccY88 rho)) =
        (-1) * (rho 36587 * seg48In1AccX88 rho) - rho 36586 * seg48In1AccY88 rho +
          (seg48In1AccY88 rho - seg48In1AccX88 rho * (-1)) * (rho 36586 + rho 36587) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36593 * (1 - rho 36591) = rho 36588 - rho 36589 - rho 36590 := ha5
      _ = (-1) * rho 36589 - rho 36590 + (seg48In1AccY88 rho - seg48In1AccX88 rho * (-1)) *
          (rho 36586 + rho 36587) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX89 rho = seg48In1AccX88 rho - Bool.toZMod bit * (seg48In1AccX88 rho - rho 36592) := by
    have hd : rho 36594 = Bool.toZMod bit * (rho 36592 - seg48In1AccX88 rho) := by
      rw [← hbit]
      unfold seg48In1AccX88
      linear_combination -r3836
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY89 rho = seg48In1AccY88 rho - Bool.toZMod bit * (seg48In1AccY88 rho - rho 36593) := by
    have hd : rho 36595 = Bool.toZMod bit * (rho 36593 - seg48In1AccY88 rho) := by
      rw [← hbit]
      unfold seg48In1AccY88
      linear_combination -r3837
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36586 * rho 36587 = rho 36596 := by linear_combination r3838
  have hd1 : rho 36586 * rho 36586 = rho 36597 := by linear_combination r3839
  have hd2 : rho 36587 * rho 36587 = rho 36598 := by linear_combination r3840
  have hd3 : rho 36599 * (rho 36587 * rho 36587 + rho 36586 * rho 36586 * (-1)) =
      2 * (rho 36586 * rho 36587) := by
    rw [hd0, hd1, hd2]
    linear_combination r3841
  have hd4 : rho 36600 * (2 - (rho 36587 * rho 36587 + rho 36586 * rho 36586 * (-1))) =
      rho 36587 * rho 36587 - rho 36586 * rho 36586 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3842
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX88 rho, seg48In1AccY88 rho⟩ ⟨rho 36586, rho 36587⟩
    ⟨rho 36592, rho 36593⟩ ⟨seg48In1AccX89 rho, seg48In1AccY89 rho⟩ ⟨rho 36599, rho 36600⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows89 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3843 rho ∧ Seg48.relationRow3844 rho ∧ Seg48.relationRow3845 rho ∧ Seg48.relationRow3846 rho ∧ Seg48.relationRow3847 rho ∧ Seg48.relationRow3848 rho ∧ Seg48.relationRow3849 rho ∧ Seg48.relationRow3850 rho ∧ Seg48.relationRow3851 rho ∧ Seg48.relationRow3852 rho ∧ Seg48.relationRow3853 rho ∧ Seg48.relationRow3854 rho ∧ Seg48.relationRow3855 rho := by
  unfold Seg48.relation at h

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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart48 at p48

  rcases p48 with ⟨_, _, _, r3843, r3844, r3845, r3846, r3847, r3848, r3849, r3850, r3851, r3852, r3853, r3854, r3855, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3843, r3844, r3845, r3846, r3847, r3848, r3849, r3850, r3851, r3852, r3853, r3854, r3855⟩

theorem seg48In1_rung89 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35411 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX89 rho, seg48In1AccY89 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36599, rho 36600⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX89 rho, seg48In1AccY89 rho⟩ ⟨rho 36599, rho 36600⟩
        ⟨seg48In1AccX90 rho, seg48In1AccY90 rho⟩ ⟨rho 36612, rho 36613⟩ := by
  obtain ⟨r3843, r3844, r3845, r3846, r3847, r3848, r3849, r3850, r3851, r3852, r3853, r3854, r3855⟩ := seg48In1_rows89 rho h
  unfold Seg48.relationRow3843 at r3843

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3843

  unfold Seg48.relationRow3844 at r3844

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3844

  unfold Seg48.relationRow3845 at r3845

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3845

  unfold Seg48.relationRow3846 at r3846

  unfold Seg48.relationRow3847 at r3847

  unfold Seg48.relationRow3848 at r3848

  unfold Seg48.relationRow3849 at r3849

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3849

  unfold Seg48.relationRow3850 at r3850

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3850

  unfold Seg48.relationRow3851 at r3851

  unfold Seg48.relationRow3852 at r3852

  unfold Seg48.relationRow3853 at r3853

  unfold Seg48.relationRow3854 at r3854

  unfold Seg48.relationRow3855 at r3855

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX90 rho = seg48In1AccX89 rho + rho 36607 := by
    unfold seg48In1AccX90 seg48In1AccX89
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 89]

    ring

  have hnexty : seg48In1AccY90 rho = seg48In1AccY89 rho + rho 36608 := by
    unfold seg48In1AccY90 seg48In1AccY89
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 89]

    ring

  have ha0 : (rho 36599 + rho 36600) * (seg48In1AccX89 rho + seg48In1AccY89 rho) = rho 36601 := by
    unfold seg48In1AccX89 seg48In1AccY89
    linear_combination r3843
  have ha1 : rho 36600 * seg48In1AccX89 rho = rho 36602 := by
    unfold seg48In1AccX89
    linear_combination r3844
  have ha2 : rho 36599 * seg48In1AccY89 rho = rho 36603 := by
    unfold seg48In1AccY89
    linear_combination r3845
  have ha3 : 3021 * rho 36602 * rho 36603 = rho 36604 := by
    linear_combination r3846
  have ha4 : rho 36605 * (1 + rho 36604) = rho 36602 + rho 36603 := by
    linear_combination r3847
  have ha5 : rho 36606 * (1 - rho 36604) = rho 36601 - rho 36602 - rho 36603 := by
    linear_combination r3848
  have haddx :
      rho 36605 * (1 + 3021 * (rho 36600 * seg48In1AccX89 rho) * (rho 36599 * seg48In1AccY89 rho)) =
        rho 36600 * seg48In1AccX89 rho + rho 36599 * seg48In1AccY89 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36606 * (1 - 3021 * (rho 36600 * seg48In1AccX89 rho) * (rho 36599 * seg48In1AccY89 rho)) =
        (-1) * (rho 36600 * seg48In1AccX89 rho) - rho 36599 * seg48In1AccY89 rho +
          (seg48In1AccY89 rho - seg48In1AccX89 rho * (-1)) * (rho 36599 + rho 36600) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36606 * (1 - rho 36604) = rho 36601 - rho 36602 - rho 36603 := ha5
      _ = (-1) * rho 36602 - rho 36603 + (seg48In1AccY89 rho - seg48In1AccX89 rho * (-1)) *
          (rho 36599 + rho 36600) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX90 rho = seg48In1AccX89 rho - Bool.toZMod bit * (seg48In1AccX89 rho - rho 36605) := by
    have hd : rho 36607 = Bool.toZMod bit * (rho 36605 - seg48In1AccX89 rho) := by
      rw [← hbit]
      unfold seg48In1AccX89
      linear_combination -r3849
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY90 rho = seg48In1AccY89 rho - Bool.toZMod bit * (seg48In1AccY89 rho - rho 36606) := by
    have hd : rho 36608 = Bool.toZMod bit * (rho 36606 - seg48In1AccY89 rho) := by
      rw [← hbit]
      unfold seg48In1AccY89
      linear_combination -r3850
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36599 * rho 36600 = rho 36609 := by linear_combination r3851
  have hd1 : rho 36599 * rho 36599 = rho 36610 := by linear_combination r3852
  have hd2 : rho 36600 * rho 36600 = rho 36611 := by linear_combination r3853
  have hd3 : rho 36612 * (rho 36600 * rho 36600 + rho 36599 * rho 36599 * (-1)) =
      2 * (rho 36599 * rho 36600) := by
    rw [hd0, hd1, hd2]
    linear_combination r3854
  have hd4 : rho 36613 * (2 - (rho 36600 * rho 36600 + rho 36599 * rho 36599 * (-1))) =
      rho 36600 * rho 36600 - rho 36599 * rho 36599 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3855
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX89 rho, seg48In1AccY89 rho⟩ ⟨rho 36599, rho 36600⟩
    ⟨rho 36605, rho 36606⟩ ⟨seg48In1AccX90 rho, seg48In1AccY90 rho⟩ ⟨rho 36612, rho 36613⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows90 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3856 rho ∧ Seg48.relationRow3857 rho ∧ Seg48.relationRow3858 rho ∧ Seg48.relationRow3859 rho ∧ Seg48.relationRow3860 rho ∧ Seg48.relationRow3861 rho ∧ Seg48.relationRow3862 rho ∧ Seg48.relationRow3863 rho ∧ Seg48.relationRow3864 rho ∧ Seg48.relationRow3865 rho ∧ Seg48.relationRow3866 rho ∧ Seg48.relationRow3867 rho ∧ Seg48.relationRow3868 rho := by
  unfold Seg48.relation at h

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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart48 at p48

  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3856, r3857, r3858, r3859, r3860, r3861, r3862, r3863, r3864, r3865, r3866, r3867, r3868, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3856, r3857, r3858, r3859, r3860, r3861, r3862, r3863, r3864, r3865, r3866, r3867, r3868⟩

theorem seg48In1_rung90 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35412 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX90 rho, seg48In1AccY90 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36612, rho 36613⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX90 rho, seg48In1AccY90 rho⟩ ⟨rho 36612, rho 36613⟩
        ⟨seg48In1AccX91 rho, seg48In1AccY91 rho⟩ ⟨rho 36625, rho 36626⟩ := by
  obtain ⟨r3856, r3857, r3858, r3859, r3860, r3861, r3862, r3863, r3864, r3865, r3866, r3867, r3868⟩ := seg48In1_rows90 rho h
  unfold Seg48.relationRow3856 at r3856

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3856

  unfold Seg48.relationRow3857 at r3857

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3857

  unfold Seg48.relationRow3858 at r3858

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3858

  unfold Seg48.relationRow3859 at r3859

  unfold Seg48.relationRow3860 at r3860

  unfold Seg48.relationRow3861 at r3861

  unfold Seg48.relationRow3862 at r3862

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3862

  unfold Seg48.relationRow3863 at r3863

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3863

  unfold Seg48.relationRow3864 at r3864

  unfold Seg48.relationRow3865 at r3865

  unfold Seg48.relationRow3866 at r3866

  unfold Seg48.relationRow3867 at r3867

  unfold Seg48.relationRow3868 at r3868

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX91 rho = seg48In1AccX90 rho + rho 36620 := by
    unfold seg48In1AccX91 seg48In1AccX90
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 90]

    ring

  have hnexty : seg48In1AccY91 rho = seg48In1AccY90 rho + rho 36621 := by
    unfold seg48In1AccY91 seg48In1AccY90
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 90]

    ring

  have ha0 : (rho 36612 + rho 36613) * (seg48In1AccX90 rho + seg48In1AccY90 rho) = rho 36614 := by
    unfold seg48In1AccX90 seg48In1AccY90
    linear_combination r3856
  have ha1 : rho 36613 * seg48In1AccX90 rho = rho 36615 := by
    unfold seg48In1AccX90
    linear_combination r3857
  have ha2 : rho 36612 * seg48In1AccY90 rho = rho 36616 := by
    unfold seg48In1AccY90
    linear_combination r3858
  have ha3 : 3021 * rho 36615 * rho 36616 = rho 36617 := by
    linear_combination r3859
  have ha4 : rho 36618 * (1 + rho 36617) = rho 36615 + rho 36616 := by
    linear_combination r3860
  have ha5 : rho 36619 * (1 - rho 36617) = rho 36614 - rho 36615 - rho 36616 := by
    linear_combination r3861
  have haddx :
      rho 36618 * (1 + 3021 * (rho 36613 * seg48In1AccX90 rho) * (rho 36612 * seg48In1AccY90 rho)) =
        rho 36613 * seg48In1AccX90 rho + rho 36612 * seg48In1AccY90 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36619 * (1 - 3021 * (rho 36613 * seg48In1AccX90 rho) * (rho 36612 * seg48In1AccY90 rho)) =
        (-1) * (rho 36613 * seg48In1AccX90 rho) - rho 36612 * seg48In1AccY90 rho +
          (seg48In1AccY90 rho - seg48In1AccX90 rho * (-1)) * (rho 36612 + rho 36613) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36619 * (1 - rho 36617) = rho 36614 - rho 36615 - rho 36616 := ha5
      _ = (-1) * rho 36615 - rho 36616 + (seg48In1AccY90 rho - seg48In1AccX90 rho * (-1)) *
          (rho 36612 + rho 36613) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX91 rho = seg48In1AccX90 rho - Bool.toZMod bit * (seg48In1AccX90 rho - rho 36618) := by
    have hd : rho 36620 = Bool.toZMod bit * (rho 36618 - seg48In1AccX90 rho) := by
      rw [← hbit]
      unfold seg48In1AccX90
      linear_combination -r3862
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY91 rho = seg48In1AccY90 rho - Bool.toZMod bit * (seg48In1AccY90 rho - rho 36619) := by
    have hd : rho 36621 = Bool.toZMod bit * (rho 36619 - seg48In1AccY90 rho) := by
      rw [← hbit]
      unfold seg48In1AccY90
      linear_combination -r3863
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36612 * rho 36613 = rho 36622 := by linear_combination r3864
  have hd1 : rho 36612 * rho 36612 = rho 36623 := by linear_combination r3865
  have hd2 : rho 36613 * rho 36613 = rho 36624 := by linear_combination r3866
  have hd3 : rho 36625 * (rho 36613 * rho 36613 + rho 36612 * rho 36612 * (-1)) =
      2 * (rho 36612 * rho 36613) := by
    rw [hd0, hd1, hd2]
    linear_combination r3867
  have hd4 : rho 36626 * (2 - (rho 36613 * rho 36613 + rho 36612 * rho 36612 * (-1))) =
      rho 36613 * rho 36613 - rho 36612 * rho 36612 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3868
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX90 rho, seg48In1AccY90 rho⟩ ⟨rho 36612, rho 36613⟩
    ⟨rho 36618, rho 36619⟩ ⟨seg48In1AccX91 rho, seg48In1AccY91 rho⟩ ⟨rho 36625, rho 36626⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows91 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3869 rho ∧ Seg48.relationRow3870 rho ∧ Seg48.relationRow3871 rho ∧ Seg48.relationRow3872 rho ∧ Seg48.relationRow3873 rho ∧ Seg48.relationRow3874 rho ∧ Seg48.relationRow3875 rho ∧ Seg48.relationRow3876 rho ∧ Seg48.relationRow3877 rho ∧ Seg48.relationRow3878 rho ∧ Seg48.relationRow3879 rho ∧ Seg48.relationRow3880 rho ∧ Seg48.relationRow3881 rho := by
  unfold Seg48.relation at h

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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart48 at p48

  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3869, r3870, r3871, r3872, r3873, r3874, r3875, r3876, r3877, r3878, r3879, r3880, r3881, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3869, r3870, r3871, r3872, r3873, r3874, r3875, r3876, r3877, r3878, r3879, r3880, r3881⟩

theorem seg48In1_rung91 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35413 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX91 rho, seg48In1AccY91 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36625, rho 36626⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX91 rho, seg48In1AccY91 rho⟩ ⟨rho 36625, rho 36626⟩
        ⟨seg48In1AccX92 rho, seg48In1AccY92 rho⟩ ⟨rho 36638, rho 36639⟩ := by
  obtain ⟨r3869, r3870, r3871, r3872, r3873, r3874, r3875, r3876, r3877, r3878, r3879, r3880, r3881⟩ := seg48In1_rows91 rho h
  unfold Seg48.relationRow3869 at r3869

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3869

  unfold Seg48.relationRow3870 at r3870

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3870

  unfold Seg48.relationRow3871 at r3871

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3871

  unfold Seg48.relationRow3872 at r3872

  unfold Seg48.relationRow3873 at r3873

  unfold Seg48.relationRow3874 at r3874

  unfold Seg48.relationRow3875 at r3875

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3875

  unfold Seg48.relationRow3876 at r3876

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3876

  unfold Seg48.relationRow3877 at r3877

  unfold Seg48.relationRow3878 at r3878

  unfold Seg48.relationRow3879 at r3879

  unfold Seg48.relationRow3880 at r3880

  unfold Seg48.relationRow3881 at r3881

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX92 rho = seg48In1AccX91 rho + rho 36633 := by
    unfold seg48In1AccX92 seg48In1AccX91
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 91]

    ring

  have hnexty : seg48In1AccY92 rho = seg48In1AccY91 rho + rho 36634 := by
    unfold seg48In1AccY92 seg48In1AccY91
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 91]

    ring

  have ha0 : (rho 36625 + rho 36626) * (seg48In1AccX91 rho + seg48In1AccY91 rho) = rho 36627 := by
    unfold seg48In1AccX91 seg48In1AccY91
    linear_combination r3869
  have ha1 : rho 36626 * seg48In1AccX91 rho = rho 36628 := by
    unfold seg48In1AccX91
    linear_combination r3870
  have ha2 : rho 36625 * seg48In1AccY91 rho = rho 36629 := by
    unfold seg48In1AccY91
    linear_combination r3871
  have ha3 : 3021 * rho 36628 * rho 36629 = rho 36630 := by
    linear_combination r3872
  have ha4 : rho 36631 * (1 + rho 36630) = rho 36628 + rho 36629 := by
    linear_combination r3873
  have ha5 : rho 36632 * (1 - rho 36630) = rho 36627 - rho 36628 - rho 36629 := by
    linear_combination r3874
  have haddx :
      rho 36631 * (1 + 3021 * (rho 36626 * seg48In1AccX91 rho) * (rho 36625 * seg48In1AccY91 rho)) =
        rho 36626 * seg48In1AccX91 rho + rho 36625 * seg48In1AccY91 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36632 * (1 - 3021 * (rho 36626 * seg48In1AccX91 rho) * (rho 36625 * seg48In1AccY91 rho)) =
        (-1) * (rho 36626 * seg48In1AccX91 rho) - rho 36625 * seg48In1AccY91 rho +
          (seg48In1AccY91 rho - seg48In1AccX91 rho * (-1)) * (rho 36625 + rho 36626) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36632 * (1 - rho 36630) = rho 36627 - rho 36628 - rho 36629 := ha5
      _ = (-1) * rho 36628 - rho 36629 + (seg48In1AccY91 rho - seg48In1AccX91 rho * (-1)) *
          (rho 36625 + rho 36626) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX92 rho = seg48In1AccX91 rho - Bool.toZMod bit * (seg48In1AccX91 rho - rho 36631) := by
    have hd : rho 36633 = Bool.toZMod bit * (rho 36631 - seg48In1AccX91 rho) := by
      rw [← hbit]
      unfold seg48In1AccX91
      linear_combination -r3875
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY92 rho = seg48In1AccY91 rho - Bool.toZMod bit * (seg48In1AccY91 rho - rho 36632) := by
    have hd : rho 36634 = Bool.toZMod bit * (rho 36632 - seg48In1AccY91 rho) := by
      rw [← hbit]
      unfold seg48In1AccY91
      linear_combination -r3876
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36625 * rho 36626 = rho 36635 := by linear_combination r3877
  have hd1 : rho 36625 * rho 36625 = rho 36636 := by linear_combination r3878
  have hd2 : rho 36626 * rho 36626 = rho 36637 := by linear_combination r3879
  have hd3 : rho 36638 * (rho 36626 * rho 36626 + rho 36625 * rho 36625 * (-1)) =
      2 * (rho 36625 * rho 36626) := by
    rw [hd0, hd1, hd2]
    linear_combination r3880
  have hd4 : rho 36639 * (2 - (rho 36626 * rho 36626 + rho 36625 * rho 36625 * (-1))) =
      rho 36626 * rho 36626 - rho 36625 * rho 36625 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3881
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX91 rho, seg48In1AccY91 rho⟩ ⟨rho 36625, rho 36626⟩
    ⟨rho 36631, rho 36632⟩ ⟨seg48In1AccX92 rho, seg48In1AccY92 rho⟩ ⟨rho 36638, rho 36639⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows92 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3882 rho ∧ Seg48.relationRow3883 rho ∧ Seg48.relationRow3884 rho ∧ Seg48.relationRow3885 rho ∧ Seg48.relationRow3886 rho ∧ Seg48.relationRow3887 rho ∧ Seg48.relationRow3888 rho ∧ Seg48.relationRow3889 rho ∧ Seg48.relationRow3890 rho ∧ Seg48.relationRow3891 rho ∧ Seg48.relationRow3892 rho ∧ Seg48.relationRow3893 rho ∧ Seg48.relationRow3894 rho := by
  unfold Seg48.relation at h

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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart48 at p48

  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3882, r3883, r3884, r3885, r3886, r3887, r3888, r3889, r3890, r3891, r3892, r3893, r3894, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3882, r3883, r3884, r3885, r3886, r3887, r3888, r3889, r3890, r3891, r3892, r3893, r3894⟩

theorem seg48In1_rung92 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35414 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX92 rho, seg48In1AccY92 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36638, rho 36639⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX92 rho, seg48In1AccY92 rho⟩ ⟨rho 36638, rho 36639⟩
        ⟨seg48In1AccX93 rho, seg48In1AccY93 rho⟩ ⟨rho 36651, rho 36652⟩ := by
  obtain ⟨r3882, r3883, r3884, r3885, r3886, r3887, r3888, r3889, r3890, r3891, r3892, r3893, r3894⟩ := seg48In1_rows92 rho h
  unfold Seg48.relationRow3882 at r3882

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3882

  unfold Seg48.relationRow3883 at r3883

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3883

  unfold Seg48.relationRow3884 at r3884

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3884

  unfold Seg48.relationRow3885 at r3885

  unfold Seg48.relationRow3886 at r3886

  unfold Seg48.relationRow3887 at r3887

  unfold Seg48.relationRow3888 at r3888

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3888

  unfold Seg48.relationRow3889 at r3889

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3889

  unfold Seg48.relationRow3890 at r3890

  unfold Seg48.relationRow3891 at r3891

  unfold Seg48.relationRow3892 at r3892

  unfold Seg48.relationRow3893 at r3893

  unfold Seg48.relationRow3894 at r3894

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX93 rho = seg48In1AccX92 rho + rho 36646 := by
    unfold seg48In1AccX93 seg48In1AccX92
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 92]

    ring

  have hnexty : seg48In1AccY93 rho = seg48In1AccY92 rho + rho 36647 := by
    unfold seg48In1AccY93 seg48In1AccY92
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 92]

    ring

  have ha0 : (rho 36638 + rho 36639) * (seg48In1AccX92 rho + seg48In1AccY92 rho) = rho 36640 := by
    unfold seg48In1AccX92 seg48In1AccY92
    linear_combination r3882
  have ha1 : rho 36639 * seg48In1AccX92 rho = rho 36641 := by
    unfold seg48In1AccX92
    linear_combination r3883
  have ha2 : rho 36638 * seg48In1AccY92 rho = rho 36642 := by
    unfold seg48In1AccY92
    linear_combination r3884
  have ha3 : 3021 * rho 36641 * rho 36642 = rho 36643 := by
    linear_combination r3885
  have ha4 : rho 36644 * (1 + rho 36643) = rho 36641 + rho 36642 := by
    linear_combination r3886
  have ha5 : rho 36645 * (1 - rho 36643) = rho 36640 - rho 36641 - rho 36642 := by
    linear_combination r3887
  have haddx :
      rho 36644 * (1 + 3021 * (rho 36639 * seg48In1AccX92 rho) * (rho 36638 * seg48In1AccY92 rho)) =
        rho 36639 * seg48In1AccX92 rho + rho 36638 * seg48In1AccY92 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36645 * (1 - 3021 * (rho 36639 * seg48In1AccX92 rho) * (rho 36638 * seg48In1AccY92 rho)) =
        (-1) * (rho 36639 * seg48In1AccX92 rho) - rho 36638 * seg48In1AccY92 rho +
          (seg48In1AccY92 rho - seg48In1AccX92 rho * (-1)) * (rho 36638 + rho 36639) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36645 * (1 - rho 36643) = rho 36640 - rho 36641 - rho 36642 := ha5
      _ = (-1) * rho 36641 - rho 36642 + (seg48In1AccY92 rho - seg48In1AccX92 rho * (-1)) *
          (rho 36638 + rho 36639) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX93 rho = seg48In1AccX92 rho - Bool.toZMod bit * (seg48In1AccX92 rho - rho 36644) := by
    have hd : rho 36646 = Bool.toZMod bit * (rho 36644 - seg48In1AccX92 rho) := by
      rw [← hbit]
      unfold seg48In1AccX92
      linear_combination -r3888
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY93 rho = seg48In1AccY92 rho - Bool.toZMod bit * (seg48In1AccY92 rho - rho 36645) := by
    have hd : rho 36647 = Bool.toZMod bit * (rho 36645 - seg48In1AccY92 rho) := by
      rw [← hbit]
      unfold seg48In1AccY92
      linear_combination -r3889
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36638 * rho 36639 = rho 36648 := by linear_combination r3890
  have hd1 : rho 36638 * rho 36638 = rho 36649 := by linear_combination r3891
  have hd2 : rho 36639 * rho 36639 = rho 36650 := by linear_combination r3892
  have hd3 : rho 36651 * (rho 36639 * rho 36639 + rho 36638 * rho 36638 * (-1)) =
      2 * (rho 36638 * rho 36639) := by
    rw [hd0, hd1, hd2]
    linear_combination r3893
  have hd4 : rho 36652 * (2 - (rho 36639 * rho 36639 + rho 36638 * rho 36638 * (-1))) =
      rho 36639 * rho 36639 - rho 36638 * rho 36638 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3894
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX92 rho, seg48In1AccY92 rho⟩ ⟨rho 36638, rho 36639⟩
    ⟨rho 36644, rho 36645⟩ ⟨seg48In1AccX93 rho, seg48In1AccY93 rho⟩ ⟨rho 36651, rho 36652⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows93 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3895 rho ∧ Seg48.relationRow3896 rho ∧ Seg48.relationRow3897 rho ∧ Seg48.relationRow3898 rho ∧ Seg48.relationRow3899 rho ∧ Seg48.relationRow3900 rho ∧ Seg48.relationRow3901 rho ∧ Seg48.relationRow3902 rho ∧ Seg48.relationRow3903 rho ∧ Seg48.relationRow3904 rho ∧ Seg48.relationRow3905 rho ∧ Seg48.relationRow3906 rho ∧ Seg48.relationRow3907 rho := by
  unfold Seg48.relation at h

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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart48 at p48

  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3895, r3896, r3897, r3898, r3899, r3900, r3901, r3902, r3903, r3904, r3905, r3906, r3907, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3895, r3896, r3897, r3898, r3899, r3900, r3901, r3902, r3903, r3904, r3905, r3906, r3907⟩

theorem seg48In1_rung93 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35415 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX93 rho, seg48In1AccY93 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36651, rho 36652⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX93 rho, seg48In1AccY93 rho⟩ ⟨rho 36651, rho 36652⟩
        ⟨seg48In1AccX94 rho, seg48In1AccY94 rho⟩ ⟨rho 36664, rho 36665⟩ := by
  obtain ⟨r3895, r3896, r3897, r3898, r3899, r3900, r3901, r3902, r3903, r3904, r3905, r3906, r3907⟩ := seg48In1_rows93 rho h
  unfold Seg48.relationRow3895 at r3895

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3895

  unfold Seg48.relationRow3896 at r3896

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3896

  unfold Seg48.relationRow3897 at r3897

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3897

  unfold Seg48.relationRow3898 at r3898

  unfold Seg48.relationRow3899 at r3899

  unfold Seg48.relationRow3900 at r3900

  unfold Seg48.relationRow3901 at r3901

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3901

  unfold Seg48.relationRow3902 at r3902

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3902

  unfold Seg48.relationRow3903 at r3903

  unfold Seg48.relationRow3904 at r3904

  unfold Seg48.relationRow3905 at r3905

  unfold Seg48.relationRow3906 at r3906

  unfold Seg48.relationRow3907 at r3907

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX94 rho = seg48In1AccX93 rho + rho 36659 := by
    unfold seg48In1AccX94 seg48In1AccX93
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 93]

    ring

  have hnexty : seg48In1AccY94 rho = seg48In1AccY93 rho + rho 36660 := by
    unfold seg48In1AccY94 seg48In1AccY93
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 93]

    ring

  have ha0 : (rho 36651 + rho 36652) * (seg48In1AccX93 rho + seg48In1AccY93 rho) = rho 36653 := by
    unfold seg48In1AccX93 seg48In1AccY93
    linear_combination r3895
  have ha1 : rho 36652 * seg48In1AccX93 rho = rho 36654 := by
    unfold seg48In1AccX93
    linear_combination r3896
  have ha2 : rho 36651 * seg48In1AccY93 rho = rho 36655 := by
    unfold seg48In1AccY93
    linear_combination r3897
  have ha3 : 3021 * rho 36654 * rho 36655 = rho 36656 := by
    linear_combination r3898
  have ha4 : rho 36657 * (1 + rho 36656) = rho 36654 + rho 36655 := by
    linear_combination r3899
  have ha5 : rho 36658 * (1 - rho 36656) = rho 36653 - rho 36654 - rho 36655 := by
    linear_combination r3900
  have haddx :
      rho 36657 * (1 + 3021 * (rho 36652 * seg48In1AccX93 rho) * (rho 36651 * seg48In1AccY93 rho)) =
        rho 36652 * seg48In1AccX93 rho + rho 36651 * seg48In1AccY93 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36658 * (1 - 3021 * (rho 36652 * seg48In1AccX93 rho) * (rho 36651 * seg48In1AccY93 rho)) =
        (-1) * (rho 36652 * seg48In1AccX93 rho) - rho 36651 * seg48In1AccY93 rho +
          (seg48In1AccY93 rho - seg48In1AccX93 rho * (-1)) * (rho 36651 + rho 36652) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36658 * (1 - rho 36656) = rho 36653 - rho 36654 - rho 36655 := ha5
      _ = (-1) * rho 36654 - rho 36655 + (seg48In1AccY93 rho - seg48In1AccX93 rho * (-1)) *
          (rho 36651 + rho 36652) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX94 rho = seg48In1AccX93 rho - Bool.toZMod bit * (seg48In1AccX93 rho - rho 36657) := by
    have hd : rho 36659 = Bool.toZMod bit * (rho 36657 - seg48In1AccX93 rho) := by
      rw [← hbit]
      unfold seg48In1AccX93
      linear_combination -r3901
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY94 rho = seg48In1AccY93 rho - Bool.toZMod bit * (seg48In1AccY93 rho - rho 36658) := by
    have hd : rho 36660 = Bool.toZMod bit * (rho 36658 - seg48In1AccY93 rho) := by
      rw [← hbit]
      unfold seg48In1AccY93
      linear_combination -r3902
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36651 * rho 36652 = rho 36661 := by linear_combination r3903
  have hd1 : rho 36651 * rho 36651 = rho 36662 := by linear_combination r3904
  have hd2 : rho 36652 * rho 36652 = rho 36663 := by linear_combination r3905
  have hd3 : rho 36664 * (rho 36652 * rho 36652 + rho 36651 * rho 36651 * (-1)) =
      2 * (rho 36651 * rho 36652) := by
    rw [hd0, hd1, hd2]
    linear_combination r3906
  have hd4 : rho 36665 * (2 - (rho 36652 * rho 36652 + rho 36651 * rho 36651 * (-1))) =
      rho 36652 * rho 36652 - rho 36651 * rho 36651 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3907
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX93 rho, seg48In1AccY93 rho⟩ ⟨rho 36651, rho 36652⟩
    ⟨rho 36657, rho 36658⟩ ⟨seg48In1AccX94 rho, seg48In1AccY94 rho⟩ ⟨rho 36664, rho 36665⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows94 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3908 rho ∧ Seg48.relationRow3909 rho ∧ Seg48.relationRow3910 rho ∧ Seg48.relationRow3911 rho ∧ Seg48.relationRow3912 rho ∧ Seg48.relationRow3913 rho ∧ Seg48.relationRow3914 rho ∧ Seg48.relationRow3915 rho ∧ Seg48.relationRow3916 rho ∧ Seg48.relationRow3917 rho ∧ Seg48.relationRow3918 rho ∧ Seg48.relationRow3919 rho ∧ Seg48.relationRow3920 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p48, p49,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart48 at p48

  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3908, r3909, r3910, r3911, r3912, r3913, r3914, r3915, r3916, r3917, r3918, r3919⟩

  unfold Seg48.relationPart49 at p49

  rcases p49 with ⟨r3920, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3908, r3909, r3910, r3911, r3912, r3913, r3914, r3915, r3916, r3917, r3918, r3919, r3920⟩

theorem seg48In1_rung94 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35416 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX94 rho, seg48In1AccY94 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36664, rho 36665⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX94 rho, seg48In1AccY94 rho⟩ ⟨rho 36664, rho 36665⟩
        ⟨seg48In1AccX95 rho, seg48In1AccY95 rho⟩ ⟨rho 36677, rho 36678⟩ := by
  obtain ⟨r3908, r3909, r3910, r3911, r3912, r3913, r3914, r3915, r3916, r3917, r3918, r3919, r3920⟩ := seg48In1_rows94 rho h
  unfold Seg48.relationRow3908 at r3908

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3908

  unfold Seg48.relationRow3909 at r3909

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3909

  unfold Seg48.relationRow3910 at r3910

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3910

  unfold Seg48.relationRow3911 at r3911

  unfold Seg48.relationRow3912 at r3912

  unfold Seg48.relationRow3913 at r3913

  unfold Seg48.relationRow3914 at r3914

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3914

  unfold Seg48.relationRow3915 at r3915

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3915

  unfold Seg48.relationRow3916 at r3916

  unfold Seg48.relationRow3917 at r3917

  unfold Seg48.relationRow3918 at r3918

  unfold Seg48.relationRow3919 at r3919

  unfold Seg48.relationRow3920 at r3920

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX95 rho = seg48In1AccX94 rho + rho 36672 := by
    unfold seg48In1AccX95 seg48In1AccX94
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 94]

    ring

  have hnexty : seg48In1AccY95 rho = seg48In1AccY94 rho + rho 36673 := by
    unfold seg48In1AccY95 seg48In1AccY94
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 94]

    ring

  have ha0 : (rho 36664 + rho 36665) * (seg48In1AccX94 rho + seg48In1AccY94 rho) = rho 36666 := by
    unfold seg48In1AccX94 seg48In1AccY94
    linear_combination r3908
  have ha1 : rho 36665 * seg48In1AccX94 rho = rho 36667 := by
    unfold seg48In1AccX94
    linear_combination r3909
  have ha2 : rho 36664 * seg48In1AccY94 rho = rho 36668 := by
    unfold seg48In1AccY94
    linear_combination r3910
  have ha3 : 3021 * rho 36667 * rho 36668 = rho 36669 := by
    linear_combination r3911
  have ha4 : rho 36670 * (1 + rho 36669) = rho 36667 + rho 36668 := by
    linear_combination r3912
  have ha5 : rho 36671 * (1 - rho 36669) = rho 36666 - rho 36667 - rho 36668 := by
    linear_combination r3913
  have haddx :
      rho 36670 * (1 + 3021 * (rho 36665 * seg48In1AccX94 rho) * (rho 36664 * seg48In1AccY94 rho)) =
        rho 36665 * seg48In1AccX94 rho + rho 36664 * seg48In1AccY94 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36671 * (1 - 3021 * (rho 36665 * seg48In1AccX94 rho) * (rho 36664 * seg48In1AccY94 rho)) =
        (-1) * (rho 36665 * seg48In1AccX94 rho) - rho 36664 * seg48In1AccY94 rho +
          (seg48In1AccY94 rho - seg48In1AccX94 rho * (-1)) * (rho 36664 + rho 36665) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36671 * (1 - rho 36669) = rho 36666 - rho 36667 - rho 36668 := ha5
      _ = (-1) * rho 36667 - rho 36668 + (seg48In1AccY94 rho - seg48In1AccX94 rho * (-1)) *
          (rho 36664 + rho 36665) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX95 rho = seg48In1AccX94 rho - Bool.toZMod bit * (seg48In1AccX94 rho - rho 36670) := by
    have hd : rho 36672 = Bool.toZMod bit * (rho 36670 - seg48In1AccX94 rho) := by
      rw [← hbit]
      unfold seg48In1AccX94
      linear_combination -r3914
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY95 rho = seg48In1AccY94 rho - Bool.toZMod bit * (seg48In1AccY94 rho - rho 36671) := by
    have hd : rho 36673 = Bool.toZMod bit * (rho 36671 - seg48In1AccY94 rho) := by
      rw [← hbit]
      unfold seg48In1AccY94
      linear_combination -r3915
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36664 * rho 36665 = rho 36674 := by linear_combination r3916
  have hd1 : rho 36664 * rho 36664 = rho 36675 := by linear_combination r3917
  have hd2 : rho 36665 * rho 36665 = rho 36676 := by linear_combination r3918
  have hd3 : rho 36677 * (rho 36665 * rho 36665 + rho 36664 * rho 36664 * (-1)) =
      2 * (rho 36664 * rho 36665) := by
    rw [hd0, hd1, hd2]
    linear_combination r3919
  have hd4 : rho 36678 * (2 - (rho 36665 * rho 36665 + rho 36664 * rho 36664 * (-1))) =
      rho 36665 * rho 36665 - rho 36664 * rho 36664 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3920
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX94 rho, seg48In1AccY94 rho⟩ ⟨rho 36664, rho 36665⟩
    ⟨rho 36670, rho 36671⟩ ⟨seg48In1AccX95 rho, seg48In1AccY95 rho⟩ ⟨rho 36677, rho 36678⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows95 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3921 rho ∧ Seg48.relationRow3922 rho ∧ Seg48.relationRow3923 rho ∧ Seg48.relationRow3924 rho ∧ Seg48.relationRow3925 rho ∧ Seg48.relationRow3926 rho ∧ Seg48.relationRow3927 rho ∧ Seg48.relationRow3928 rho ∧ Seg48.relationRow3929 rho ∧ Seg48.relationRow3930 rho ∧ Seg48.relationRow3931 rho ∧ Seg48.relationRow3932 rho ∧ Seg48.relationRow3933 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p49,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart49 at p49

  rcases p49 with ⟨_, r3921, r3922, r3923, r3924, r3925, r3926, r3927, r3928, r3929, r3930, r3931, r3932, r3933, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3921, r3922, r3923, r3924, r3925, r3926, r3927, r3928, r3929, r3930, r3931, r3932, r3933⟩

theorem seg48In1_rung95 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35417 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX95 rho, seg48In1AccY95 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36677, rho 36678⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX95 rho, seg48In1AccY95 rho⟩ ⟨rho 36677, rho 36678⟩
        ⟨seg48In1AccX96 rho, seg48In1AccY96 rho⟩ ⟨rho 36690, rho 36691⟩ := by
  obtain ⟨r3921, r3922, r3923, r3924, r3925, r3926, r3927, r3928, r3929, r3930, r3931, r3932, r3933⟩ := seg48In1_rows95 rho h
  unfold Seg48.relationRow3921 at r3921

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3921

  unfold Seg48.relationRow3922 at r3922

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3922

  unfold Seg48.relationRow3923 at r3923

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3923

  unfold Seg48.relationRow3924 at r3924

  unfold Seg48.relationRow3925 at r3925

  unfold Seg48.relationRow3926 at r3926

  unfold Seg48.relationRow3927 at r3927

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3927

  unfold Seg48.relationRow3928 at r3928

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3928

  unfold Seg48.relationRow3929 at r3929

  unfold Seg48.relationRow3930 at r3930

  unfold Seg48.relationRow3931 at r3931

  unfold Seg48.relationRow3932 at r3932

  unfold Seg48.relationRow3933 at r3933

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX96 rho = seg48In1AccX95 rho + rho 36685 := by
    unfold seg48In1AccX96 seg48In1AccX95
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 95]

    ring

  have hnexty : seg48In1AccY96 rho = seg48In1AccY95 rho + rho 36686 := by
    unfold seg48In1AccY96 seg48In1AccY95
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 95]

    ring

  have ha0 : (rho 36677 + rho 36678) * (seg48In1AccX95 rho + seg48In1AccY95 rho) = rho 36679 := by
    unfold seg48In1AccX95 seg48In1AccY95
    linear_combination r3921
  have ha1 : rho 36678 * seg48In1AccX95 rho = rho 36680 := by
    unfold seg48In1AccX95
    linear_combination r3922
  have ha2 : rho 36677 * seg48In1AccY95 rho = rho 36681 := by
    unfold seg48In1AccY95
    linear_combination r3923
  have ha3 : 3021 * rho 36680 * rho 36681 = rho 36682 := by
    linear_combination r3924
  have ha4 : rho 36683 * (1 + rho 36682) = rho 36680 + rho 36681 := by
    linear_combination r3925
  have ha5 : rho 36684 * (1 - rho 36682) = rho 36679 - rho 36680 - rho 36681 := by
    linear_combination r3926
  have haddx :
      rho 36683 * (1 + 3021 * (rho 36678 * seg48In1AccX95 rho) * (rho 36677 * seg48In1AccY95 rho)) =
        rho 36678 * seg48In1AccX95 rho + rho 36677 * seg48In1AccY95 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36684 * (1 - 3021 * (rho 36678 * seg48In1AccX95 rho) * (rho 36677 * seg48In1AccY95 rho)) =
        (-1) * (rho 36678 * seg48In1AccX95 rho) - rho 36677 * seg48In1AccY95 rho +
          (seg48In1AccY95 rho - seg48In1AccX95 rho * (-1)) * (rho 36677 + rho 36678) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36684 * (1 - rho 36682) = rho 36679 - rho 36680 - rho 36681 := ha5
      _ = (-1) * rho 36680 - rho 36681 + (seg48In1AccY95 rho - seg48In1AccX95 rho * (-1)) *
          (rho 36677 + rho 36678) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX96 rho = seg48In1AccX95 rho - Bool.toZMod bit * (seg48In1AccX95 rho - rho 36683) := by
    have hd : rho 36685 = Bool.toZMod bit * (rho 36683 - seg48In1AccX95 rho) := by
      rw [← hbit]
      unfold seg48In1AccX95
      linear_combination -r3927
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY96 rho = seg48In1AccY95 rho - Bool.toZMod bit * (seg48In1AccY95 rho - rho 36684) := by
    have hd : rho 36686 = Bool.toZMod bit * (rho 36684 - seg48In1AccY95 rho) := by
      rw [← hbit]
      unfold seg48In1AccY95
      linear_combination -r3928
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36677 * rho 36678 = rho 36687 := by linear_combination r3929
  have hd1 : rho 36677 * rho 36677 = rho 36688 := by linear_combination r3930
  have hd2 : rho 36678 * rho 36678 = rho 36689 := by linear_combination r3931
  have hd3 : rho 36690 * (rho 36678 * rho 36678 + rho 36677 * rho 36677 * (-1)) =
      2 * (rho 36677 * rho 36678) := by
    rw [hd0, hd1, hd2]
    linear_combination r3932
  have hd4 : rho 36691 * (2 - (rho 36678 * rho 36678 + rho 36677 * rho 36677 * (-1))) =
      rho 36678 * rho 36678 - rho 36677 * rho 36677 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3933
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX95 rho, seg48In1AccY95 rho⟩ ⟨rho 36677, rho 36678⟩
    ⟨rho 36683, rho 36684⟩ ⟨seg48In1AccX96 rho, seg48In1AccY96 rho⟩ ⟨rho 36690, rho 36691⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows96 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3934 rho ∧ Seg48.relationRow3935 rho ∧ Seg48.relationRow3936 rho ∧ Seg48.relationRow3937 rho ∧ Seg48.relationRow3938 rho ∧ Seg48.relationRow3939 rho ∧ Seg48.relationRow3940 rho ∧ Seg48.relationRow3941 rho ∧ Seg48.relationRow3942 rho ∧ Seg48.relationRow3943 rho ∧ Seg48.relationRow3944 rho ∧ Seg48.relationRow3945 rho ∧ Seg48.relationRow3946 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p49,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart49 at p49

  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r3934, r3935, r3936, r3937, r3938, r3939, r3940, r3941, r3942, r3943, r3944, r3945, r3946, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3934, r3935, r3936, r3937, r3938, r3939, r3940, r3941, r3942, r3943, r3944, r3945, r3946⟩

theorem seg48In1_rung96 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35418 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX96 rho, seg48In1AccY96 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36690, rho 36691⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX96 rho, seg48In1AccY96 rho⟩ ⟨rho 36690, rho 36691⟩
        ⟨seg48In1AccX97 rho, seg48In1AccY97 rho⟩ ⟨rho 36703, rho 36704⟩ := by
  obtain ⟨r3934, r3935, r3936, r3937, r3938, r3939, r3940, r3941, r3942, r3943, r3944, r3945, r3946⟩ := seg48In1_rows96 rho h
  unfold Seg48.relationRow3934 at r3934

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3934

  unfold Seg48.relationRow3935 at r3935

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3935

  unfold Seg48.relationRow3936 at r3936

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3936

  unfold Seg48.relationRow3937 at r3937

  unfold Seg48.relationRow3938 at r3938

  unfold Seg48.relationRow3939 at r3939

  unfold Seg48.relationRow3940 at r3940

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3940

  unfold Seg48.relationRow3941 at r3941

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3941

  unfold Seg48.relationRow3942 at r3942

  unfold Seg48.relationRow3943 at r3943

  unfold Seg48.relationRow3944 at r3944

  unfold Seg48.relationRow3945 at r3945

  unfold Seg48.relationRow3946 at r3946

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX97 rho = seg48In1AccX96 rho + rho 36698 := by
    unfold seg48In1AccX97 seg48In1AccX96
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 96]

    ring

  have hnexty : seg48In1AccY97 rho = seg48In1AccY96 rho + rho 36699 := by
    unfold seg48In1AccY97 seg48In1AccY96
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 96]

    ring

  have ha0 : (rho 36690 + rho 36691) * (seg48In1AccX96 rho + seg48In1AccY96 rho) = rho 36692 := by
    unfold seg48In1AccX96 seg48In1AccY96
    linear_combination r3934
  have ha1 : rho 36691 * seg48In1AccX96 rho = rho 36693 := by
    unfold seg48In1AccX96
    linear_combination r3935
  have ha2 : rho 36690 * seg48In1AccY96 rho = rho 36694 := by
    unfold seg48In1AccY96
    linear_combination r3936
  have ha3 : 3021 * rho 36693 * rho 36694 = rho 36695 := by
    linear_combination r3937
  have ha4 : rho 36696 * (1 + rho 36695) = rho 36693 + rho 36694 := by
    linear_combination r3938
  have ha5 : rho 36697 * (1 - rho 36695) = rho 36692 - rho 36693 - rho 36694 := by
    linear_combination r3939
  have haddx :
      rho 36696 * (1 + 3021 * (rho 36691 * seg48In1AccX96 rho) * (rho 36690 * seg48In1AccY96 rho)) =
        rho 36691 * seg48In1AccX96 rho + rho 36690 * seg48In1AccY96 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36697 * (1 - 3021 * (rho 36691 * seg48In1AccX96 rho) * (rho 36690 * seg48In1AccY96 rho)) =
        (-1) * (rho 36691 * seg48In1AccX96 rho) - rho 36690 * seg48In1AccY96 rho +
          (seg48In1AccY96 rho - seg48In1AccX96 rho * (-1)) * (rho 36690 + rho 36691) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36697 * (1 - rho 36695) = rho 36692 - rho 36693 - rho 36694 := ha5
      _ = (-1) * rho 36693 - rho 36694 + (seg48In1AccY96 rho - seg48In1AccX96 rho * (-1)) *
          (rho 36690 + rho 36691) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX97 rho = seg48In1AccX96 rho - Bool.toZMod bit * (seg48In1AccX96 rho - rho 36696) := by
    have hd : rho 36698 = Bool.toZMod bit * (rho 36696 - seg48In1AccX96 rho) := by
      rw [← hbit]
      unfold seg48In1AccX96
      linear_combination -r3940
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY97 rho = seg48In1AccY96 rho - Bool.toZMod bit * (seg48In1AccY96 rho - rho 36697) := by
    have hd : rho 36699 = Bool.toZMod bit * (rho 36697 - seg48In1AccY96 rho) := by
      rw [← hbit]
      unfold seg48In1AccY96
      linear_combination -r3941
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36690 * rho 36691 = rho 36700 := by linear_combination r3942
  have hd1 : rho 36690 * rho 36690 = rho 36701 := by linear_combination r3943
  have hd2 : rho 36691 * rho 36691 = rho 36702 := by linear_combination r3944
  have hd3 : rho 36703 * (rho 36691 * rho 36691 + rho 36690 * rho 36690 * (-1)) =
      2 * (rho 36690 * rho 36691) := by
    rw [hd0, hd1, hd2]
    linear_combination r3945
  have hd4 : rho 36704 * (2 - (rho 36691 * rho 36691 + rho 36690 * rho 36690 * (-1))) =
      rho 36691 * rho 36691 - rho 36690 * rho 36690 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3946
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX96 rho, seg48In1AccY96 rho⟩ ⟨rho 36690, rho 36691⟩
    ⟨rho 36696, rho 36697⟩ ⟨seg48In1AccX97 rho, seg48In1AccY97 rho⟩ ⟨rho 36703, rho 36704⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows97 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3947 rho ∧ Seg48.relationRow3948 rho ∧ Seg48.relationRow3949 rho ∧ Seg48.relationRow3950 rho ∧ Seg48.relationRow3951 rho ∧ Seg48.relationRow3952 rho ∧ Seg48.relationRow3953 rho ∧ Seg48.relationRow3954 rho ∧ Seg48.relationRow3955 rho ∧ Seg48.relationRow3956 rho ∧ Seg48.relationRow3957 rho ∧ Seg48.relationRow3958 rho ∧ Seg48.relationRow3959 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p49,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart49 at p49

  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3947, r3948, r3949, r3950, r3951, r3952, r3953, r3954, r3955, r3956, r3957, r3958, r3959, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3947, r3948, r3949, r3950, r3951, r3952, r3953, r3954, r3955, r3956, r3957, r3958, r3959⟩

theorem seg48In1_rung97 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35419 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX97 rho, seg48In1AccY97 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36703, rho 36704⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX97 rho, seg48In1AccY97 rho⟩ ⟨rho 36703, rho 36704⟩
        ⟨seg48In1AccX98 rho, seg48In1AccY98 rho⟩ ⟨rho 36716, rho 36717⟩ := by
  obtain ⟨r3947, r3948, r3949, r3950, r3951, r3952, r3953, r3954, r3955, r3956, r3957, r3958, r3959⟩ := seg48In1_rows97 rho h
  unfold Seg48.relationRow3947 at r3947

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3947

  unfold Seg48.relationRow3948 at r3948

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3948

  unfold Seg48.relationRow3949 at r3949

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3949

  unfold Seg48.relationRow3950 at r3950

  unfold Seg48.relationRow3951 at r3951

  unfold Seg48.relationRow3952 at r3952

  unfold Seg48.relationRow3953 at r3953

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3953

  unfold Seg48.relationRow3954 at r3954

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3954

  unfold Seg48.relationRow3955 at r3955

  unfold Seg48.relationRow3956 at r3956

  unfold Seg48.relationRow3957 at r3957

  unfold Seg48.relationRow3958 at r3958

  unfold Seg48.relationRow3959 at r3959

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX98 rho = seg48In1AccX97 rho + rho 36711 := by
    unfold seg48In1AccX98 seg48In1AccX97
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 97]

    ring

  have hnexty : seg48In1AccY98 rho = seg48In1AccY97 rho + rho 36712 := by
    unfold seg48In1AccY98 seg48In1AccY97
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 97]

    ring

  have ha0 : (rho 36703 + rho 36704) * (seg48In1AccX97 rho + seg48In1AccY97 rho) = rho 36705 := by
    unfold seg48In1AccX97 seg48In1AccY97
    linear_combination r3947
  have ha1 : rho 36704 * seg48In1AccX97 rho = rho 36706 := by
    unfold seg48In1AccX97
    linear_combination r3948
  have ha2 : rho 36703 * seg48In1AccY97 rho = rho 36707 := by
    unfold seg48In1AccY97
    linear_combination r3949
  have ha3 : 3021 * rho 36706 * rho 36707 = rho 36708 := by
    linear_combination r3950
  have ha4 : rho 36709 * (1 + rho 36708) = rho 36706 + rho 36707 := by
    linear_combination r3951
  have ha5 : rho 36710 * (1 - rho 36708) = rho 36705 - rho 36706 - rho 36707 := by
    linear_combination r3952
  have haddx :
      rho 36709 * (1 + 3021 * (rho 36704 * seg48In1AccX97 rho) * (rho 36703 * seg48In1AccY97 rho)) =
        rho 36704 * seg48In1AccX97 rho + rho 36703 * seg48In1AccY97 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36710 * (1 - 3021 * (rho 36704 * seg48In1AccX97 rho) * (rho 36703 * seg48In1AccY97 rho)) =
        (-1) * (rho 36704 * seg48In1AccX97 rho) - rho 36703 * seg48In1AccY97 rho +
          (seg48In1AccY97 rho - seg48In1AccX97 rho * (-1)) * (rho 36703 + rho 36704) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36710 * (1 - rho 36708) = rho 36705 - rho 36706 - rho 36707 := ha5
      _ = (-1) * rho 36706 - rho 36707 + (seg48In1AccY97 rho - seg48In1AccX97 rho * (-1)) *
          (rho 36703 + rho 36704) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX98 rho = seg48In1AccX97 rho - Bool.toZMod bit * (seg48In1AccX97 rho - rho 36709) := by
    have hd : rho 36711 = Bool.toZMod bit * (rho 36709 - seg48In1AccX97 rho) := by
      rw [← hbit]
      unfold seg48In1AccX97
      linear_combination -r3953
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY98 rho = seg48In1AccY97 rho - Bool.toZMod bit * (seg48In1AccY97 rho - rho 36710) := by
    have hd : rho 36712 = Bool.toZMod bit * (rho 36710 - seg48In1AccY97 rho) := by
      rw [← hbit]
      unfold seg48In1AccY97
      linear_combination -r3954
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36703 * rho 36704 = rho 36713 := by linear_combination r3955
  have hd1 : rho 36703 * rho 36703 = rho 36714 := by linear_combination r3956
  have hd2 : rho 36704 * rho 36704 = rho 36715 := by linear_combination r3957
  have hd3 : rho 36716 * (rho 36704 * rho 36704 + rho 36703 * rho 36703 * (-1)) =
      2 * (rho 36703 * rho 36704) := by
    rw [hd0, hd1, hd2]
    linear_combination r3958
  have hd4 : rho 36717 * (2 - (rho 36704 * rho 36704 + rho 36703 * rho 36703 * (-1))) =
      rho 36704 * rho 36704 - rho 36703 * rho 36703 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3959
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX97 rho, seg48In1AccY97 rho⟩ ⟨rho 36703, rho 36704⟩
    ⟨rho 36709, rho 36710⟩ ⟨seg48In1AccX98 rho, seg48In1AccY98 rho⟩ ⟨rho 36716, rho 36717⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows98 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3960 rho ∧ Seg48.relationRow3961 rho ∧ Seg48.relationRow3962 rho ∧ Seg48.relationRow3963 rho ∧ Seg48.relationRow3964 rho ∧ Seg48.relationRow3965 rho ∧ Seg48.relationRow3966 rho ∧ Seg48.relationRow3967 rho ∧ Seg48.relationRow3968 rho ∧ Seg48.relationRow3969 rho ∧ Seg48.relationRow3970 rho ∧ Seg48.relationRow3971 rho ∧ Seg48.relationRow3972 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p49,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart49 at p49

  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3960, r3961, r3962, r3963, r3964, r3965, r3966, r3967, r3968, r3969, r3970, r3971, r3972, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3960, r3961, r3962, r3963, r3964, r3965, r3966, r3967, r3968, r3969, r3970, r3971, r3972⟩

theorem seg48In1_rung98 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35420 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX98 rho, seg48In1AccY98 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36716, rho 36717⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX98 rho, seg48In1AccY98 rho⟩ ⟨rho 36716, rho 36717⟩
        ⟨seg48In1AccX99 rho, seg48In1AccY99 rho⟩ ⟨rho 36729, rho 36730⟩ := by
  obtain ⟨r3960, r3961, r3962, r3963, r3964, r3965, r3966, r3967, r3968, r3969, r3970, r3971, r3972⟩ := seg48In1_rows98 rho h
  unfold Seg48.relationRow3960 at r3960

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3960

  unfold Seg48.relationRow3961 at r3961

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3961

  unfold Seg48.relationRow3962 at r3962

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3962

  unfold Seg48.relationRow3963 at r3963

  unfold Seg48.relationRow3964 at r3964

  unfold Seg48.relationRow3965 at r3965

  unfold Seg48.relationRow3966 at r3966

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3966

  unfold Seg48.relationRow3967 at r3967

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3967

  unfold Seg48.relationRow3968 at r3968

  unfold Seg48.relationRow3969 at r3969

  unfold Seg48.relationRow3970 at r3970

  unfold Seg48.relationRow3971 at r3971

  unfold Seg48.relationRow3972 at r3972

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX99 rho = seg48In1AccX98 rho + rho 36724 := by
    unfold seg48In1AccX99 seg48In1AccX98
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 98]

    ring

  have hnexty : seg48In1AccY99 rho = seg48In1AccY98 rho + rho 36725 := by
    unfold seg48In1AccY99 seg48In1AccY98
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 98]

    ring

  have ha0 : (rho 36716 + rho 36717) * (seg48In1AccX98 rho + seg48In1AccY98 rho) = rho 36718 := by
    unfold seg48In1AccX98 seg48In1AccY98
    linear_combination r3960
  have ha1 : rho 36717 * seg48In1AccX98 rho = rho 36719 := by
    unfold seg48In1AccX98
    linear_combination r3961
  have ha2 : rho 36716 * seg48In1AccY98 rho = rho 36720 := by
    unfold seg48In1AccY98
    linear_combination r3962
  have ha3 : 3021 * rho 36719 * rho 36720 = rho 36721 := by
    linear_combination r3963
  have ha4 : rho 36722 * (1 + rho 36721) = rho 36719 + rho 36720 := by
    linear_combination r3964
  have ha5 : rho 36723 * (1 - rho 36721) = rho 36718 - rho 36719 - rho 36720 := by
    linear_combination r3965
  have haddx :
      rho 36722 * (1 + 3021 * (rho 36717 * seg48In1AccX98 rho) * (rho 36716 * seg48In1AccY98 rho)) =
        rho 36717 * seg48In1AccX98 rho + rho 36716 * seg48In1AccY98 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36723 * (1 - 3021 * (rho 36717 * seg48In1AccX98 rho) * (rho 36716 * seg48In1AccY98 rho)) =
        (-1) * (rho 36717 * seg48In1AccX98 rho) - rho 36716 * seg48In1AccY98 rho +
          (seg48In1AccY98 rho - seg48In1AccX98 rho * (-1)) * (rho 36716 + rho 36717) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36723 * (1 - rho 36721) = rho 36718 - rho 36719 - rho 36720 := ha5
      _ = (-1) * rho 36719 - rho 36720 + (seg48In1AccY98 rho - seg48In1AccX98 rho * (-1)) *
          (rho 36716 + rho 36717) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX99 rho = seg48In1AccX98 rho - Bool.toZMod bit * (seg48In1AccX98 rho - rho 36722) := by
    have hd : rho 36724 = Bool.toZMod bit * (rho 36722 - seg48In1AccX98 rho) := by
      rw [← hbit]
      unfold seg48In1AccX98
      linear_combination -r3966
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY99 rho = seg48In1AccY98 rho - Bool.toZMod bit * (seg48In1AccY98 rho - rho 36723) := by
    have hd : rho 36725 = Bool.toZMod bit * (rho 36723 - seg48In1AccY98 rho) := by
      rw [← hbit]
      unfold seg48In1AccY98
      linear_combination -r3967
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36716 * rho 36717 = rho 36726 := by linear_combination r3968
  have hd1 : rho 36716 * rho 36716 = rho 36727 := by linear_combination r3969
  have hd2 : rho 36717 * rho 36717 = rho 36728 := by linear_combination r3970
  have hd3 : rho 36729 * (rho 36717 * rho 36717 + rho 36716 * rho 36716 * (-1)) =
      2 * (rho 36716 * rho 36717) := by
    rw [hd0, hd1, hd2]
    linear_combination r3971
  have hd4 : rho 36730 * (2 - (rho 36717 * rho 36717 + rho 36716 * rho 36716 * (-1))) =
      rho 36717 * rho 36717 - rho 36716 * rho 36716 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3972
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX98 rho, seg48In1AccY98 rho⟩ ⟨rho 36716, rho 36717⟩
    ⟨rho 36722, rho 36723⟩ ⟨seg48In1AccX99 rho, seg48In1AccY99 rho⟩ ⟨rho 36729, rho 36730⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_hstep_c8 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (35322 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 88 ≤ i → i < 99 →
      EdwardsBridge.onCurve (seg48In1AccState rho i) →
      EdwardsBridge.onCurve (seg48In1CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg48In1AccState rho i) (seg48In1CurState rho i)
        (seg48In1AccState rho (i + 1)) (seg48In1CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg48In1_rung88 rho h bits[88]! (hbitAt 88 (by omega)) hacc hcur
  · exact seg48In1_rung89 rho h bits[89]! (hbitAt 89 (by omega)) hacc hcur
  · exact seg48In1_rung90 rho h bits[90]! (hbitAt 90 (by omega)) hacc hcur
  · exact seg48In1_rung91 rho h bits[91]! (hbitAt 91 (by omega)) hacc hcur
  · exact seg48In1_rung92 rho h bits[92]! (hbitAt 92 (by omega)) hacc hcur
  · exact seg48In1_rung93 rho h bits[93]! (hbitAt 93 (by omega)) hacc hcur
  · exact seg48In1_rung94 rho h bits[94]! (hbitAt 94 (by omega)) hacc hcur
  · exact seg48In1_rung95 rho h bits[95]! (hbitAt 95 (by omega)) hacc hcur
  · exact seg48In1_rung96 rho h bits[96]! (hbitAt 96 (by omega)) hacc hcur
  · exact seg48In1_rung97 rho h bits[97]! (hbitAt 97 (by omega)) hacc hcur
  · exact seg48In1_rung98 rho h bits[98]! (hbitAt 98 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
