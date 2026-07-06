import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In1_rows88 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3830 rho ∧ Seg52.relationRow3831 rho ∧ Seg52.relationRow3832 rho ∧ Seg52.relationRow3833 rho ∧ Seg52.relationRow3834 rho ∧ Seg52.relationRow3835 rho ∧ Seg52.relationRow3836 rho ∧ Seg52.relationRow3837 rho ∧ Seg52.relationRow3838 rho ∧ Seg52.relationRow3839 rho ∧ Seg52.relationRow3840 rho ∧ Seg52.relationRow3841 rho ∧ Seg52.relationRow3842 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart47 at p47

  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3830, r3831, r3832, r3833, r3834, r3835, r3836, r3837, r3838, r3839⟩

  unfold Seg52.relationPart48 at p48

  rcases p48 with ⟨r3840, r3841, r3842, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3830, r3831, r3832, r3833, r3834, r3835, r3836, r3837, r3838, r3839, r3840, r3841, r3842⟩

theorem seg52In1_rung88 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47042 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX88 rho, seg52In1AccY88 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48218, rho 48219⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX88 rho, seg52In1AccY88 rho⟩ ⟨rho 48218, rho 48219⟩
        ⟨seg52In1AccX89 rho, seg52In1AccY89 rho⟩ ⟨rho 48231, rho 48232⟩ := by
  obtain ⟨r3830, r3831, r3832, r3833, r3834, r3835, r3836, r3837, r3838, r3839, r3840, r3841, r3842⟩ := seg52In1_rows88 rho h
  unfold Seg52.relationRow3830 at r3830

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3830

  unfold Seg52.relationRow3831 at r3831

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3831

  unfold Seg52.relationRow3832 at r3832

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3832

  unfold Seg52.relationRow3833 at r3833

  unfold Seg52.relationRow3834 at r3834

  unfold Seg52.relationRow3835 at r3835

  unfold Seg52.relationRow3836 at r3836

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3836

  unfold Seg52.relationRow3837 at r3837

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3837

  unfold Seg52.relationRow3838 at r3838

  unfold Seg52.relationRow3839 at r3839

  unfold Seg52.relationRow3840 at r3840

  unfold Seg52.relationRow3841 at r3841

  unfold Seg52.relationRow3842 at r3842

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX89 rho = seg52In1AccX88 rho + rho 48226 := by
    unfold seg52In1AccX89 seg52In1AccX88
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 88]

    ring

  have hnexty : seg52In1AccY89 rho = seg52In1AccY88 rho + rho 48227 := by
    unfold seg52In1AccY89 seg52In1AccY88
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 88]

    ring

  have ha0 : (rho 48218 + rho 48219) * (seg52In1AccX88 rho + seg52In1AccY88 rho) = rho 48220 := by
    unfold seg52In1AccX88 seg52In1AccY88
    linear_combination r3830
  have ha1 : rho 48219 * seg52In1AccX88 rho = rho 48221 := by
    unfold seg52In1AccX88
    linear_combination r3831
  have ha2 : rho 48218 * seg52In1AccY88 rho = rho 48222 := by
    unfold seg52In1AccY88
    linear_combination r3832
  have ha3 : 3021 * rho 48221 * rho 48222 = rho 48223 := by
    linear_combination r3833
  have ha4 : rho 48224 * (1 + rho 48223) = rho 48221 + rho 48222 := by
    linear_combination r3834
  have ha5 : rho 48225 * (1 - rho 48223) = rho 48220 - rho 48221 - rho 48222 := by
    linear_combination r3835
  have haddx :
      rho 48224 * (1 + 3021 * (rho 48219 * seg52In1AccX88 rho) * (rho 48218 * seg52In1AccY88 rho)) =
        rho 48219 * seg52In1AccX88 rho + rho 48218 * seg52In1AccY88 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48225 * (1 - 3021 * (rho 48219 * seg52In1AccX88 rho) * (rho 48218 * seg52In1AccY88 rho)) =
        (-1) * (rho 48219 * seg52In1AccX88 rho) - rho 48218 * seg52In1AccY88 rho +
          (seg52In1AccY88 rho - seg52In1AccX88 rho * (-1)) * (rho 48218 + rho 48219) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48225 * (1 - rho 48223) = rho 48220 - rho 48221 - rho 48222 := ha5
      _ = (-1) * rho 48221 - rho 48222 + (seg52In1AccY88 rho - seg52In1AccX88 rho * (-1)) *
          (rho 48218 + rho 48219) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX89 rho = seg52In1AccX88 rho - Bool.toZMod bit * (seg52In1AccX88 rho - rho 48224) := by
    have hd : rho 48226 = Bool.toZMod bit * (rho 48224 - seg52In1AccX88 rho) := by
      rw [← hbit]
      unfold seg52In1AccX88
      linear_combination -r3836
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY89 rho = seg52In1AccY88 rho - Bool.toZMod bit * (seg52In1AccY88 rho - rho 48225) := by
    have hd : rho 48227 = Bool.toZMod bit * (rho 48225 - seg52In1AccY88 rho) := by
      rw [← hbit]
      unfold seg52In1AccY88
      linear_combination -r3837
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48218 * rho 48219 = rho 48228 := by linear_combination r3838
  have hd1 : rho 48218 * rho 48218 = rho 48229 := by linear_combination r3839
  have hd2 : rho 48219 * rho 48219 = rho 48230 := by linear_combination r3840
  have hd3 : rho 48231 * (rho 48219 * rho 48219 + rho 48218 * rho 48218 * (-1)) =
      2 * (rho 48218 * rho 48219) := by
    rw [hd0, hd1, hd2]
    linear_combination r3841
  have hd4 : rho 48232 * (2 - (rho 48219 * rho 48219 + rho 48218 * rho 48218 * (-1))) =
      rho 48219 * rho 48219 - rho 48218 * rho 48218 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3842
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX88 rho, seg52In1AccY88 rho⟩ ⟨rho 48218, rho 48219⟩
    ⟨rho 48224, rho 48225⟩ ⟨seg52In1AccX89 rho, seg52In1AccY89 rho⟩ ⟨rho 48231, rho 48232⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows89 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3843 rho ∧ Seg52.relationRow3844 rho ∧ Seg52.relationRow3845 rho ∧ Seg52.relationRow3846 rho ∧ Seg52.relationRow3847 rho ∧ Seg52.relationRow3848 rho ∧ Seg52.relationRow3849 rho ∧ Seg52.relationRow3850 rho ∧ Seg52.relationRow3851 rho ∧ Seg52.relationRow3852 rho ∧ Seg52.relationRow3853 rho ∧ Seg52.relationRow3854 rho ∧ Seg52.relationRow3855 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart48 at p48

  rcases p48 with ⟨_, _, _, r3843, r3844, r3845, r3846, r3847, r3848, r3849, r3850, r3851, r3852, r3853, r3854, r3855, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3843, r3844, r3845, r3846, r3847, r3848, r3849, r3850, r3851, r3852, r3853, r3854, r3855⟩

theorem seg52In1_rung89 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47043 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX89 rho, seg52In1AccY89 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48231, rho 48232⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX89 rho, seg52In1AccY89 rho⟩ ⟨rho 48231, rho 48232⟩
        ⟨seg52In1AccX90 rho, seg52In1AccY90 rho⟩ ⟨rho 48244, rho 48245⟩ := by
  obtain ⟨r3843, r3844, r3845, r3846, r3847, r3848, r3849, r3850, r3851, r3852, r3853, r3854, r3855⟩ := seg52In1_rows89 rho h
  unfold Seg52.relationRow3843 at r3843

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3843

  unfold Seg52.relationRow3844 at r3844

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3844

  unfold Seg52.relationRow3845 at r3845

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3845

  unfold Seg52.relationRow3846 at r3846

  unfold Seg52.relationRow3847 at r3847

  unfold Seg52.relationRow3848 at r3848

  unfold Seg52.relationRow3849 at r3849

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3849

  unfold Seg52.relationRow3850 at r3850

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3850

  unfold Seg52.relationRow3851 at r3851

  unfold Seg52.relationRow3852 at r3852

  unfold Seg52.relationRow3853 at r3853

  unfold Seg52.relationRow3854 at r3854

  unfold Seg52.relationRow3855 at r3855

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX90 rho = seg52In1AccX89 rho + rho 48239 := by
    unfold seg52In1AccX90 seg52In1AccX89
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 89]

    ring

  have hnexty : seg52In1AccY90 rho = seg52In1AccY89 rho + rho 48240 := by
    unfold seg52In1AccY90 seg52In1AccY89
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 89]

    ring

  have ha0 : (rho 48231 + rho 48232) * (seg52In1AccX89 rho + seg52In1AccY89 rho) = rho 48233 := by
    unfold seg52In1AccX89 seg52In1AccY89
    linear_combination r3843
  have ha1 : rho 48232 * seg52In1AccX89 rho = rho 48234 := by
    unfold seg52In1AccX89
    linear_combination r3844
  have ha2 : rho 48231 * seg52In1AccY89 rho = rho 48235 := by
    unfold seg52In1AccY89
    linear_combination r3845
  have ha3 : 3021 * rho 48234 * rho 48235 = rho 48236 := by
    linear_combination r3846
  have ha4 : rho 48237 * (1 + rho 48236) = rho 48234 + rho 48235 := by
    linear_combination r3847
  have ha5 : rho 48238 * (1 - rho 48236) = rho 48233 - rho 48234 - rho 48235 := by
    linear_combination r3848
  have haddx :
      rho 48237 * (1 + 3021 * (rho 48232 * seg52In1AccX89 rho) * (rho 48231 * seg52In1AccY89 rho)) =
        rho 48232 * seg52In1AccX89 rho + rho 48231 * seg52In1AccY89 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48238 * (1 - 3021 * (rho 48232 * seg52In1AccX89 rho) * (rho 48231 * seg52In1AccY89 rho)) =
        (-1) * (rho 48232 * seg52In1AccX89 rho) - rho 48231 * seg52In1AccY89 rho +
          (seg52In1AccY89 rho - seg52In1AccX89 rho * (-1)) * (rho 48231 + rho 48232) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48238 * (1 - rho 48236) = rho 48233 - rho 48234 - rho 48235 := ha5
      _ = (-1) * rho 48234 - rho 48235 + (seg52In1AccY89 rho - seg52In1AccX89 rho * (-1)) *
          (rho 48231 + rho 48232) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX90 rho = seg52In1AccX89 rho - Bool.toZMod bit * (seg52In1AccX89 rho - rho 48237) := by
    have hd : rho 48239 = Bool.toZMod bit * (rho 48237 - seg52In1AccX89 rho) := by
      rw [← hbit]
      unfold seg52In1AccX89
      linear_combination -r3849
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY90 rho = seg52In1AccY89 rho - Bool.toZMod bit * (seg52In1AccY89 rho - rho 48238) := by
    have hd : rho 48240 = Bool.toZMod bit * (rho 48238 - seg52In1AccY89 rho) := by
      rw [← hbit]
      unfold seg52In1AccY89
      linear_combination -r3850
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48231 * rho 48232 = rho 48241 := by linear_combination r3851
  have hd1 : rho 48231 * rho 48231 = rho 48242 := by linear_combination r3852
  have hd2 : rho 48232 * rho 48232 = rho 48243 := by linear_combination r3853
  have hd3 : rho 48244 * (rho 48232 * rho 48232 + rho 48231 * rho 48231 * (-1)) =
      2 * (rho 48231 * rho 48232) := by
    rw [hd0, hd1, hd2]
    linear_combination r3854
  have hd4 : rho 48245 * (2 - (rho 48232 * rho 48232 + rho 48231 * rho 48231 * (-1))) =
      rho 48232 * rho 48232 - rho 48231 * rho 48231 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3855
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX89 rho, seg52In1AccY89 rho⟩ ⟨rho 48231, rho 48232⟩
    ⟨rho 48237, rho 48238⟩ ⟨seg52In1AccX90 rho, seg52In1AccY90 rho⟩ ⟨rho 48244, rho 48245⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows90 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3856 rho ∧ Seg52.relationRow3857 rho ∧ Seg52.relationRow3858 rho ∧ Seg52.relationRow3859 rho ∧ Seg52.relationRow3860 rho ∧ Seg52.relationRow3861 rho ∧ Seg52.relationRow3862 rho ∧ Seg52.relationRow3863 rho ∧ Seg52.relationRow3864 rho ∧ Seg52.relationRow3865 rho ∧ Seg52.relationRow3866 rho ∧ Seg52.relationRow3867 rho ∧ Seg52.relationRow3868 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart48 at p48

  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3856, r3857, r3858, r3859, r3860, r3861, r3862, r3863, r3864, r3865, r3866, r3867, r3868, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3856, r3857, r3858, r3859, r3860, r3861, r3862, r3863, r3864, r3865, r3866, r3867, r3868⟩

theorem seg52In1_rung90 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47044 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX90 rho, seg52In1AccY90 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48244, rho 48245⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX90 rho, seg52In1AccY90 rho⟩ ⟨rho 48244, rho 48245⟩
        ⟨seg52In1AccX91 rho, seg52In1AccY91 rho⟩ ⟨rho 48257, rho 48258⟩ := by
  obtain ⟨r3856, r3857, r3858, r3859, r3860, r3861, r3862, r3863, r3864, r3865, r3866, r3867, r3868⟩ := seg52In1_rows90 rho h
  unfold Seg52.relationRow3856 at r3856

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3856

  unfold Seg52.relationRow3857 at r3857

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3857

  unfold Seg52.relationRow3858 at r3858

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3858

  unfold Seg52.relationRow3859 at r3859

  unfold Seg52.relationRow3860 at r3860

  unfold Seg52.relationRow3861 at r3861

  unfold Seg52.relationRow3862 at r3862

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3862

  unfold Seg52.relationRow3863 at r3863

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3863

  unfold Seg52.relationRow3864 at r3864

  unfold Seg52.relationRow3865 at r3865

  unfold Seg52.relationRow3866 at r3866

  unfold Seg52.relationRow3867 at r3867

  unfold Seg52.relationRow3868 at r3868

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX91 rho = seg52In1AccX90 rho + rho 48252 := by
    unfold seg52In1AccX91 seg52In1AccX90
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 90]

    ring

  have hnexty : seg52In1AccY91 rho = seg52In1AccY90 rho + rho 48253 := by
    unfold seg52In1AccY91 seg52In1AccY90
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 90]

    ring

  have ha0 : (rho 48244 + rho 48245) * (seg52In1AccX90 rho + seg52In1AccY90 rho) = rho 48246 := by
    unfold seg52In1AccX90 seg52In1AccY90
    linear_combination r3856
  have ha1 : rho 48245 * seg52In1AccX90 rho = rho 48247 := by
    unfold seg52In1AccX90
    linear_combination r3857
  have ha2 : rho 48244 * seg52In1AccY90 rho = rho 48248 := by
    unfold seg52In1AccY90
    linear_combination r3858
  have ha3 : 3021 * rho 48247 * rho 48248 = rho 48249 := by
    linear_combination r3859
  have ha4 : rho 48250 * (1 + rho 48249) = rho 48247 + rho 48248 := by
    linear_combination r3860
  have ha5 : rho 48251 * (1 - rho 48249) = rho 48246 - rho 48247 - rho 48248 := by
    linear_combination r3861
  have haddx :
      rho 48250 * (1 + 3021 * (rho 48245 * seg52In1AccX90 rho) * (rho 48244 * seg52In1AccY90 rho)) =
        rho 48245 * seg52In1AccX90 rho + rho 48244 * seg52In1AccY90 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48251 * (1 - 3021 * (rho 48245 * seg52In1AccX90 rho) * (rho 48244 * seg52In1AccY90 rho)) =
        (-1) * (rho 48245 * seg52In1AccX90 rho) - rho 48244 * seg52In1AccY90 rho +
          (seg52In1AccY90 rho - seg52In1AccX90 rho * (-1)) * (rho 48244 + rho 48245) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48251 * (1 - rho 48249) = rho 48246 - rho 48247 - rho 48248 := ha5
      _ = (-1) * rho 48247 - rho 48248 + (seg52In1AccY90 rho - seg52In1AccX90 rho * (-1)) *
          (rho 48244 + rho 48245) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX91 rho = seg52In1AccX90 rho - Bool.toZMod bit * (seg52In1AccX90 rho - rho 48250) := by
    have hd : rho 48252 = Bool.toZMod bit * (rho 48250 - seg52In1AccX90 rho) := by
      rw [← hbit]
      unfold seg52In1AccX90
      linear_combination -r3862
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY91 rho = seg52In1AccY90 rho - Bool.toZMod bit * (seg52In1AccY90 rho - rho 48251) := by
    have hd : rho 48253 = Bool.toZMod bit * (rho 48251 - seg52In1AccY90 rho) := by
      rw [← hbit]
      unfold seg52In1AccY90
      linear_combination -r3863
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48244 * rho 48245 = rho 48254 := by linear_combination r3864
  have hd1 : rho 48244 * rho 48244 = rho 48255 := by linear_combination r3865
  have hd2 : rho 48245 * rho 48245 = rho 48256 := by linear_combination r3866
  have hd3 : rho 48257 * (rho 48245 * rho 48245 + rho 48244 * rho 48244 * (-1)) =
      2 * (rho 48244 * rho 48245) := by
    rw [hd0, hd1, hd2]
    linear_combination r3867
  have hd4 : rho 48258 * (2 - (rho 48245 * rho 48245 + rho 48244 * rho 48244 * (-1))) =
      rho 48245 * rho 48245 - rho 48244 * rho 48244 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3868
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX90 rho, seg52In1AccY90 rho⟩ ⟨rho 48244, rho 48245⟩
    ⟨rho 48250, rho 48251⟩ ⟨seg52In1AccX91 rho, seg52In1AccY91 rho⟩ ⟨rho 48257, rho 48258⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows91 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3869 rho ∧ Seg52.relationRow3870 rho ∧ Seg52.relationRow3871 rho ∧ Seg52.relationRow3872 rho ∧ Seg52.relationRow3873 rho ∧ Seg52.relationRow3874 rho ∧ Seg52.relationRow3875 rho ∧ Seg52.relationRow3876 rho ∧ Seg52.relationRow3877 rho ∧ Seg52.relationRow3878 rho ∧ Seg52.relationRow3879 rho ∧ Seg52.relationRow3880 rho ∧ Seg52.relationRow3881 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart48 at p48

  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3869, r3870, r3871, r3872, r3873, r3874, r3875, r3876, r3877, r3878, r3879, r3880, r3881, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3869, r3870, r3871, r3872, r3873, r3874, r3875, r3876, r3877, r3878, r3879, r3880, r3881⟩

theorem seg52In1_rung91 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47045 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX91 rho, seg52In1AccY91 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48257, rho 48258⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX91 rho, seg52In1AccY91 rho⟩ ⟨rho 48257, rho 48258⟩
        ⟨seg52In1AccX92 rho, seg52In1AccY92 rho⟩ ⟨rho 48270, rho 48271⟩ := by
  obtain ⟨r3869, r3870, r3871, r3872, r3873, r3874, r3875, r3876, r3877, r3878, r3879, r3880, r3881⟩ := seg52In1_rows91 rho h
  unfold Seg52.relationRow3869 at r3869

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3869

  unfold Seg52.relationRow3870 at r3870

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3870

  unfold Seg52.relationRow3871 at r3871

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3871

  unfold Seg52.relationRow3872 at r3872

  unfold Seg52.relationRow3873 at r3873

  unfold Seg52.relationRow3874 at r3874

  unfold Seg52.relationRow3875 at r3875

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3875

  unfold Seg52.relationRow3876 at r3876

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3876

  unfold Seg52.relationRow3877 at r3877

  unfold Seg52.relationRow3878 at r3878

  unfold Seg52.relationRow3879 at r3879

  unfold Seg52.relationRow3880 at r3880

  unfold Seg52.relationRow3881 at r3881

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX92 rho = seg52In1AccX91 rho + rho 48265 := by
    unfold seg52In1AccX92 seg52In1AccX91
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 91]

    ring

  have hnexty : seg52In1AccY92 rho = seg52In1AccY91 rho + rho 48266 := by
    unfold seg52In1AccY92 seg52In1AccY91
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 91]

    ring

  have ha0 : (rho 48257 + rho 48258) * (seg52In1AccX91 rho + seg52In1AccY91 rho) = rho 48259 := by
    unfold seg52In1AccX91 seg52In1AccY91
    linear_combination r3869
  have ha1 : rho 48258 * seg52In1AccX91 rho = rho 48260 := by
    unfold seg52In1AccX91
    linear_combination r3870
  have ha2 : rho 48257 * seg52In1AccY91 rho = rho 48261 := by
    unfold seg52In1AccY91
    linear_combination r3871
  have ha3 : 3021 * rho 48260 * rho 48261 = rho 48262 := by
    linear_combination r3872
  have ha4 : rho 48263 * (1 + rho 48262) = rho 48260 + rho 48261 := by
    linear_combination r3873
  have ha5 : rho 48264 * (1 - rho 48262) = rho 48259 - rho 48260 - rho 48261 := by
    linear_combination r3874
  have haddx :
      rho 48263 * (1 + 3021 * (rho 48258 * seg52In1AccX91 rho) * (rho 48257 * seg52In1AccY91 rho)) =
        rho 48258 * seg52In1AccX91 rho + rho 48257 * seg52In1AccY91 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48264 * (1 - 3021 * (rho 48258 * seg52In1AccX91 rho) * (rho 48257 * seg52In1AccY91 rho)) =
        (-1) * (rho 48258 * seg52In1AccX91 rho) - rho 48257 * seg52In1AccY91 rho +
          (seg52In1AccY91 rho - seg52In1AccX91 rho * (-1)) * (rho 48257 + rho 48258) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48264 * (1 - rho 48262) = rho 48259 - rho 48260 - rho 48261 := ha5
      _ = (-1) * rho 48260 - rho 48261 + (seg52In1AccY91 rho - seg52In1AccX91 rho * (-1)) *
          (rho 48257 + rho 48258) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX92 rho = seg52In1AccX91 rho - Bool.toZMod bit * (seg52In1AccX91 rho - rho 48263) := by
    have hd : rho 48265 = Bool.toZMod bit * (rho 48263 - seg52In1AccX91 rho) := by
      rw [← hbit]
      unfold seg52In1AccX91
      linear_combination -r3875
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY92 rho = seg52In1AccY91 rho - Bool.toZMod bit * (seg52In1AccY91 rho - rho 48264) := by
    have hd : rho 48266 = Bool.toZMod bit * (rho 48264 - seg52In1AccY91 rho) := by
      rw [← hbit]
      unfold seg52In1AccY91
      linear_combination -r3876
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48257 * rho 48258 = rho 48267 := by linear_combination r3877
  have hd1 : rho 48257 * rho 48257 = rho 48268 := by linear_combination r3878
  have hd2 : rho 48258 * rho 48258 = rho 48269 := by linear_combination r3879
  have hd3 : rho 48270 * (rho 48258 * rho 48258 + rho 48257 * rho 48257 * (-1)) =
      2 * (rho 48257 * rho 48258) := by
    rw [hd0, hd1, hd2]
    linear_combination r3880
  have hd4 : rho 48271 * (2 - (rho 48258 * rho 48258 + rho 48257 * rho 48257 * (-1))) =
      rho 48258 * rho 48258 - rho 48257 * rho 48257 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3881
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX91 rho, seg52In1AccY91 rho⟩ ⟨rho 48257, rho 48258⟩
    ⟨rho 48263, rho 48264⟩ ⟨seg52In1AccX92 rho, seg52In1AccY92 rho⟩ ⟨rho 48270, rho 48271⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows92 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3882 rho ∧ Seg52.relationRow3883 rho ∧ Seg52.relationRow3884 rho ∧ Seg52.relationRow3885 rho ∧ Seg52.relationRow3886 rho ∧ Seg52.relationRow3887 rho ∧ Seg52.relationRow3888 rho ∧ Seg52.relationRow3889 rho ∧ Seg52.relationRow3890 rho ∧ Seg52.relationRow3891 rho ∧ Seg52.relationRow3892 rho ∧ Seg52.relationRow3893 rho ∧ Seg52.relationRow3894 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart48 at p48

  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3882, r3883, r3884, r3885, r3886, r3887, r3888, r3889, r3890, r3891, r3892, r3893, r3894, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3882, r3883, r3884, r3885, r3886, r3887, r3888, r3889, r3890, r3891, r3892, r3893, r3894⟩

theorem seg52In1_rung92 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47046 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX92 rho, seg52In1AccY92 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48270, rho 48271⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX92 rho, seg52In1AccY92 rho⟩ ⟨rho 48270, rho 48271⟩
        ⟨seg52In1AccX93 rho, seg52In1AccY93 rho⟩ ⟨rho 48283, rho 48284⟩ := by
  obtain ⟨r3882, r3883, r3884, r3885, r3886, r3887, r3888, r3889, r3890, r3891, r3892, r3893, r3894⟩ := seg52In1_rows92 rho h
  unfold Seg52.relationRow3882 at r3882

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3882

  unfold Seg52.relationRow3883 at r3883

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3883

  unfold Seg52.relationRow3884 at r3884

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3884

  unfold Seg52.relationRow3885 at r3885

  unfold Seg52.relationRow3886 at r3886

  unfold Seg52.relationRow3887 at r3887

  unfold Seg52.relationRow3888 at r3888

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3888

  unfold Seg52.relationRow3889 at r3889

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3889

  unfold Seg52.relationRow3890 at r3890

  unfold Seg52.relationRow3891 at r3891

  unfold Seg52.relationRow3892 at r3892

  unfold Seg52.relationRow3893 at r3893

  unfold Seg52.relationRow3894 at r3894

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX93 rho = seg52In1AccX92 rho + rho 48278 := by
    unfold seg52In1AccX93 seg52In1AccX92
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 92]

    ring

  have hnexty : seg52In1AccY93 rho = seg52In1AccY92 rho + rho 48279 := by
    unfold seg52In1AccY93 seg52In1AccY92
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 92]

    ring

  have ha0 : (rho 48270 + rho 48271) * (seg52In1AccX92 rho + seg52In1AccY92 rho) = rho 48272 := by
    unfold seg52In1AccX92 seg52In1AccY92
    linear_combination r3882
  have ha1 : rho 48271 * seg52In1AccX92 rho = rho 48273 := by
    unfold seg52In1AccX92
    linear_combination r3883
  have ha2 : rho 48270 * seg52In1AccY92 rho = rho 48274 := by
    unfold seg52In1AccY92
    linear_combination r3884
  have ha3 : 3021 * rho 48273 * rho 48274 = rho 48275 := by
    linear_combination r3885
  have ha4 : rho 48276 * (1 + rho 48275) = rho 48273 + rho 48274 := by
    linear_combination r3886
  have ha5 : rho 48277 * (1 - rho 48275) = rho 48272 - rho 48273 - rho 48274 := by
    linear_combination r3887
  have haddx :
      rho 48276 * (1 + 3021 * (rho 48271 * seg52In1AccX92 rho) * (rho 48270 * seg52In1AccY92 rho)) =
        rho 48271 * seg52In1AccX92 rho + rho 48270 * seg52In1AccY92 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48277 * (1 - 3021 * (rho 48271 * seg52In1AccX92 rho) * (rho 48270 * seg52In1AccY92 rho)) =
        (-1) * (rho 48271 * seg52In1AccX92 rho) - rho 48270 * seg52In1AccY92 rho +
          (seg52In1AccY92 rho - seg52In1AccX92 rho * (-1)) * (rho 48270 + rho 48271) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48277 * (1 - rho 48275) = rho 48272 - rho 48273 - rho 48274 := ha5
      _ = (-1) * rho 48273 - rho 48274 + (seg52In1AccY92 rho - seg52In1AccX92 rho * (-1)) *
          (rho 48270 + rho 48271) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX93 rho = seg52In1AccX92 rho - Bool.toZMod bit * (seg52In1AccX92 rho - rho 48276) := by
    have hd : rho 48278 = Bool.toZMod bit * (rho 48276 - seg52In1AccX92 rho) := by
      rw [← hbit]
      unfold seg52In1AccX92
      linear_combination -r3888
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY93 rho = seg52In1AccY92 rho - Bool.toZMod bit * (seg52In1AccY92 rho - rho 48277) := by
    have hd : rho 48279 = Bool.toZMod bit * (rho 48277 - seg52In1AccY92 rho) := by
      rw [← hbit]
      unfold seg52In1AccY92
      linear_combination -r3889
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48270 * rho 48271 = rho 48280 := by linear_combination r3890
  have hd1 : rho 48270 * rho 48270 = rho 48281 := by linear_combination r3891
  have hd2 : rho 48271 * rho 48271 = rho 48282 := by linear_combination r3892
  have hd3 : rho 48283 * (rho 48271 * rho 48271 + rho 48270 * rho 48270 * (-1)) =
      2 * (rho 48270 * rho 48271) := by
    rw [hd0, hd1, hd2]
    linear_combination r3893
  have hd4 : rho 48284 * (2 - (rho 48271 * rho 48271 + rho 48270 * rho 48270 * (-1))) =
      rho 48271 * rho 48271 - rho 48270 * rho 48270 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3894
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX92 rho, seg52In1AccY92 rho⟩ ⟨rho 48270, rho 48271⟩
    ⟨rho 48276, rho 48277⟩ ⟨seg52In1AccX93 rho, seg52In1AccY93 rho⟩ ⟨rho 48283, rho 48284⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows93 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3895 rho ∧ Seg52.relationRow3896 rho ∧ Seg52.relationRow3897 rho ∧ Seg52.relationRow3898 rho ∧ Seg52.relationRow3899 rho ∧ Seg52.relationRow3900 rho ∧ Seg52.relationRow3901 rho ∧ Seg52.relationRow3902 rho ∧ Seg52.relationRow3903 rho ∧ Seg52.relationRow3904 rho ∧ Seg52.relationRow3905 rho ∧ Seg52.relationRow3906 rho ∧ Seg52.relationRow3907 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart48 at p48

  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3895, r3896, r3897, r3898, r3899, r3900, r3901, r3902, r3903, r3904, r3905, r3906, r3907, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3895, r3896, r3897, r3898, r3899, r3900, r3901, r3902, r3903, r3904, r3905, r3906, r3907⟩

theorem seg52In1_rung93 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47047 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX93 rho, seg52In1AccY93 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48283, rho 48284⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX93 rho, seg52In1AccY93 rho⟩ ⟨rho 48283, rho 48284⟩
        ⟨seg52In1AccX94 rho, seg52In1AccY94 rho⟩ ⟨rho 48296, rho 48297⟩ := by
  obtain ⟨r3895, r3896, r3897, r3898, r3899, r3900, r3901, r3902, r3903, r3904, r3905, r3906, r3907⟩ := seg52In1_rows93 rho h
  unfold Seg52.relationRow3895 at r3895

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3895

  unfold Seg52.relationRow3896 at r3896

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3896

  unfold Seg52.relationRow3897 at r3897

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3897

  unfold Seg52.relationRow3898 at r3898

  unfold Seg52.relationRow3899 at r3899

  unfold Seg52.relationRow3900 at r3900

  unfold Seg52.relationRow3901 at r3901

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3901

  unfold Seg52.relationRow3902 at r3902

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3902

  unfold Seg52.relationRow3903 at r3903

  unfold Seg52.relationRow3904 at r3904

  unfold Seg52.relationRow3905 at r3905

  unfold Seg52.relationRow3906 at r3906

  unfold Seg52.relationRow3907 at r3907

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX94 rho = seg52In1AccX93 rho + rho 48291 := by
    unfold seg52In1AccX94 seg52In1AccX93
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 93]

    ring

  have hnexty : seg52In1AccY94 rho = seg52In1AccY93 rho + rho 48292 := by
    unfold seg52In1AccY94 seg52In1AccY93
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 93]

    ring

  have ha0 : (rho 48283 + rho 48284) * (seg52In1AccX93 rho + seg52In1AccY93 rho) = rho 48285 := by
    unfold seg52In1AccX93 seg52In1AccY93
    linear_combination r3895
  have ha1 : rho 48284 * seg52In1AccX93 rho = rho 48286 := by
    unfold seg52In1AccX93
    linear_combination r3896
  have ha2 : rho 48283 * seg52In1AccY93 rho = rho 48287 := by
    unfold seg52In1AccY93
    linear_combination r3897
  have ha3 : 3021 * rho 48286 * rho 48287 = rho 48288 := by
    linear_combination r3898
  have ha4 : rho 48289 * (1 + rho 48288) = rho 48286 + rho 48287 := by
    linear_combination r3899
  have ha5 : rho 48290 * (1 - rho 48288) = rho 48285 - rho 48286 - rho 48287 := by
    linear_combination r3900
  have haddx :
      rho 48289 * (1 + 3021 * (rho 48284 * seg52In1AccX93 rho) * (rho 48283 * seg52In1AccY93 rho)) =
        rho 48284 * seg52In1AccX93 rho + rho 48283 * seg52In1AccY93 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48290 * (1 - 3021 * (rho 48284 * seg52In1AccX93 rho) * (rho 48283 * seg52In1AccY93 rho)) =
        (-1) * (rho 48284 * seg52In1AccX93 rho) - rho 48283 * seg52In1AccY93 rho +
          (seg52In1AccY93 rho - seg52In1AccX93 rho * (-1)) * (rho 48283 + rho 48284) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48290 * (1 - rho 48288) = rho 48285 - rho 48286 - rho 48287 := ha5
      _ = (-1) * rho 48286 - rho 48287 + (seg52In1AccY93 rho - seg52In1AccX93 rho * (-1)) *
          (rho 48283 + rho 48284) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX94 rho = seg52In1AccX93 rho - Bool.toZMod bit * (seg52In1AccX93 rho - rho 48289) := by
    have hd : rho 48291 = Bool.toZMod bit * (rho 48289 - seg52In1AccX93 rho) := by
      rw [← hbit]
      unfold seg52In1AccX93
      linear_combination -r3901
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY94 rho = seg52In1AccY93 rho - Bool.toZMod bit * (seg52In1AccY93 rho - rho 48290) := by
    have hd : rho 48292 = Bool.toZMod bit * (rho 48290 - seg52In1AccY93 rho) := by
      rw [← hbit]
      unfold seg52In1AccY93
      linear_combination -r3902
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48283 * rho 48284 = rho 48293 := by linear_combination r3903
  have hd1 : rho 48283 * rho 48283 = rho 48294 := by linear_combination r3904
  have hd2 : rho 48284 * rho 48284 = rho 48295 := by linear_combination r3905
  have hd3 : rho 48296 * (rho 48284 * rho 48284 + rho 48283 * rho 48283 * (-1)) =
      2 * (rho 48283 * rho 48284) := by
    rw [hd0, hd1, hd2]
    linear_combination r3906
  have hd4 : rho 48297 * (2 - (rho 48284 * rho 48284 + rho 48283 * rho 48283 * (-1))) =
      rho 48284 * rho 48284 - rho 48283 * rho 48283 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3907
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX93 rho, seg52In1AccY93 rho⟩ ⟨rho 48283, rho 48284⟩
    ⟨rho 48289, rho 48290⟩ ⟨seg52In1AccX94 rho, seg52In1AccY94 rho⟩ ⟨rho 48296, rho 48297⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows94 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3908 rho ∧ Seg52.relationRow3909 rho ∧ Seg52.relationRow3910 rho ∧ Seg52.relationRow3911 rho ∧ Seg52.relationRow3912 rho ∧ Seg52.relationRow3913 rho ∧ Seg52.relationRow3914 rho ∧ Seg52.relationRow3915 rho ∧ Seg52.relationRow3916 rho ∧ Seg52.relationRow3917 rho ∧ Seg52.relationRow3918 rho ∧ Seg52.relationRow3919 rho ∧ Seg52.relationRow3920 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart48 at p48

  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3908, r3909, r3910, r3911, r3912, r3913, r3914, r3915, r3916, r3917, r3918, r3919⟩

  unfold Seg52.relationPart49 at p49

  rcases p49 with ⟨r3920, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3908, r3909, r3910, r3911, r3912, r3913, r3914, r3915, r3916, r3917, r3918, r3919, r3920⟩

theorem seg52In1_rung94 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47048 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX94 rho, seg52In1AccY94 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48296, rho 48297⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX94 rho, seg52In1AccY94 rho⟩ ⟨rho 48296, rho 48297⟩
        ⟨seg52In1AccX95 rho, seg52In1AccY95 rho⟩ ⟨rho 48309, rho 48310⟩ := by
  obtain ⟨r3908, r3909, r3910, r3911, r3912, r3913, r3914, r3915, r3916, r3917, r3918, r3919, r3920⟩ := seg52In1_rows94 rho h
  unfold Seg52.relationRow3908 at r3908

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3908

  unfold Seg52.relationRow3909 at r3909

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3909

  unfold Seg52.relationRow3910 at r3910

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3910

  unfold Seg52.relationRow3911 at r3911

  unfold Seg52.relationRow3912 at r3912

  unfold Seg52.relationRow3913 at r3913

  unfold Seg52.relationRow3914 at r3914

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3914

  unfold Seg52.relationRow3915 at r3915

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3915

  unfold Seg52.relationRow3916 at r3916

  unfold Seg52.relationRow3917 at r3917

  unfold Seg52.relationRow3918 at r3918

  unfold Seg52.relationRow3919 at r3919

  unfold Seg52.relationRow3920 at r3920

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX95 rho = seg52In1AccX94 rho + rho 48304 := by
    unfold seg52In1AccX95 seg52In1AccX94
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 94]

    ring

  have hnexty : seg52In1AccY95 rho = seg52In1AccY94 rho + rho 48305 := by
    unfold seg52In1AccY95 seg52In1AccY94
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 94]

    ring

  have ha0 : (rho 48296 + rho 48297) * (seg52In1AccX94 rho + seg52In1AccY94 rho) = rho 48298 := by
    unfold seg52In1AccX94 seg52In1AccY94
    linear_combination r3908
  have ha1 : rho 48297 * seg52In1AccX94 rho = rho 48299 := by
    unfold seg52In1AccX94
    linear_combination r3909
  have ha2 : rho 48296 * seg52In1AccY94 rho = rho 48300 := by
    unfold seg52In1AccY94
    linear_combination r3910
  have ha3 : 3021 * rho 48299 * rho 48300 = rho 48301 := by
    linear_combination r3911
  have ha4 : rho 48302 * (1 + rho 48301) = rho 48299 + rho 48300 := by
    linear_combination r3912
  have ha5 : rho 48303 * (1 - rho 48301) = rho 48298 - rho 48299 - rho 48300 := by
    linear_combination r3913
  have haddx :
      rho 48302 * (1 + 3021 * (rho 48297 * seg52In1AccX94 rho) * (rho 48296 * seg52In1AccY94 rho)) =
        rho 48297 * seg52In1AccX94 rho + rho 48296 * seg52In1AccY94 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48303 * (1 - 3021 * (rho 48297 * seg52In1AccX94 rho) * (rho 48296 * seg52In1AccY94 rho)) =
        (-1) * (rho 48297 * seg52In1AccX94 rho) - rho 48296 * seg52In1AccY94 rho +
          (seg52In1AccY94 rho - seg52In1AccX94 rho * (-1)) * (rho 48296 + rho 48297) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48303 * (1 - rho 48301) = rho 48298 - rho 48299 - rho 48300 := ha5
      _ = (-1) * rho 48299 - rho 48300 + (seg52In1AccY94 rho - seg52In1AccX94 rho * (-1)) *
          (rho 48296 + rho 48297) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX95 rho = seg52In1AccX94 rho - Bool.toZMod bit * (seg52In1AccX94 rho - rho 48302) := by
    have hd : rho 48304 = Bool.toZMod bit * (rho 48302 - seg52In1AccX94 rho) := by
      rw [← hbit]
      unfold seg52In1AccX94
      linear_combination -r3914
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY95 rho = seg52In1AccY94 rho - Bool.toZMod bit * (seg52In1AccY94 rho - rho 48303) := by
    have hd : rho 48305 = Bool.toZMod bit * (rho 48303 - seg52In1AccY94 rho) := by
      rw [← hbit]
      unfold seg52In1AccY94
      linear_combination -r3915
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48296 * rho 48297 = rho 48306 := by linear_combination r3916
  have hd1 : rho 48296 * rho 48296 = rho 48307 := by linear_combination r3917
  have hd2 : rho 48297 * rho 48297 = rho 48308 := by linear_combination r3918
  have hd3 : rho 48309 * (rho 48297 * rho 48297 + rho 48296 * rho 48296 * (-1)) =
      2 * (rho 48296 * rho 48297) := by
    rw [hd0, hd1, hd2]
    linear_combination r3919
  have hd4 : rho 48310 * (2 - (rho 48297 * rho 48297 + rho 48296 * rho 48296 * (-1))) =
      rho 48297 * rho 48297 - rho 48296 * rho 48296 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3920
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX94 rho, seg52In1AccY94 rho⟩ ⟨rho 48296, rho 48297⟩
    ⟨rho 48302, rho 48303⟩ ⟨seg52In1AccX95 rho, seg52In1AccY95 rho⟩ ⟨rho 48309, rho 48310⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows95 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3921 rho ∧ Seg52.relationRow3922 rho ∧ Seg52.relationRow3923 rho ∧ Seg52.relationRow3924 rho ∧ Seg52.relationRow3925 rho ∧ Seg52.relationRow3926 rho ∧ Seg52.relationRow3927 rho ∧ Seg52.relationRow3928 rho ∧ Seg52.relationRow3929 rho ∧ Seg52.relationRow3930 rho ∧ Seg52.relationRow3931 rho ∧ Seg52.relationRow3932 rho ∧ Seg52.relationRow3933 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart49 at p49

  rcases p49 with ⟨_, r3921, r3922, r3923, r3924, r3925, r3926, r3927, r3928, r3929, r3930, r3931, r3932, r3933, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3921, r3922, r3923, r3924, r3925, r3926, r3927, r3928, r3929, r3930, r3931, r3932, r3933⟩

theorem seg52In1_rung95 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47049 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX95 rho, seg52In1AccY95 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48309, rho 48310⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX95 rho, seg52In1AccY95 rho⟩ ⟨rho 48309, rho 48310⟩
        ⟨seg52In1AccX96 rho, seg52In1AccY96 rho⟩ ⟨rho 48322, rho 48323⟩ := by
  obtain ⟨r3921, r3922, r3923, r3924, r3925, r3926, r3927, r3928, r3929, r3930, r3931, r3932, r3933⟩ := seg52In1_rows95 rho h
  unfold Seg52.relationRow3921 at r3921

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3921

  unfold Seg52.relationRow3922 at r3922

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3922

  unfold Seg52.relationRow3923 at r3923

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3923

  unfold Seg52.relationRow3924 at r3924

  unfold Seg52.relationRow3925 at r3925

  unfold Seg52.relationRow3926 at r3926

  unfold Seg52.relationRow3927 at r3927

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3927

  unfold Seg52.relationRow3928 at r3928

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3928

  unfold Seg52.relationRow3929 at r3929

  unfold Seg52.relationRow3930 at r3930

  unfold Seg52.relationRow3931 at r3931

  unfold Seg52.relationRow3932 at r3932

  unfold Seg52.relationRow3933 at r3933

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX96 rho = seg52In1AccX95 rho + rho 48317 := by
    unfold seg52In1AccX96 seg52In1AccX95
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 95]

    ring

  have hnexty : seg52In1AccY96 rho = seg52In1AccY95 rho + rho 48318 := by
    unfold seg52In1AccY96 seg52In1AccY95
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 95]

    ring

  have ha0 : (rho 48309 + rho 48310) * (seg52In1AccX95 rho + seg52In1AccY95 rho) = rho 48311 := by
    unfold seg52In1AccX95 seg52In1AccY95
    linear_combination r3921
  have ha1 : rho 48310 * seg52In1AccX95 rho = rho 48312 := by
    unfold seg52In1AccX95
    linear_combination r3922
  have ha2 : rho 48309 * seg52In1AccY95 rho = rho 48313 := by
    unfold seg52In1AccY95
    linear_combination r3923
  have ha3 : 3021 * rho 48312 * rho 48313 = rho 48314 := by
    linear_combination r3924
  have ha4 : rho 48315 * (1 + rho 48314) = rho 48312 + rho 48313 := by
    linear_combination r3925
  have ha5 : rho 48316 * (1 - rho 48314) = rho 48311 - rho 48312 - rho 48313 := by
    linear_combination r3926
  have haddx :
      rho 48315 * (1 + 3021 * (rho 48310 * seg52In1AccX95 rho) * (rho 48309 * seg52In1AccY95 rho)) =
        rho 48310 * seg52In1AccX95 rho + rho 48309 * seg52In1AccY95 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48316 * (1 - 3021 * (rho 48310 * seg52In1AccX95 rho) * (rho 48309 * seg52In1AccY95 rho)) =
        (-1) * (rho 48310 * seg52In1AccX95 rho) - rho 48309 * seg52In1AccY95 rho +
          (seg52In1AccY95 rho - seg52In1AccX95 rho * (-1)) * (rho 48309 + rho 48310) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48316 * (1 - rho 48314) = rho 48311 - rho 48312 - rho 48313 := ha5
      _ = (-1) * rho 48312 - rho 48313 + (seg52In1AccY95 rho - seg52In1AccX95 rho * (-1)) *
          (rho 48309 + rho 48310) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX96 rho = seg52In1AccX95 rho - Bool.toZMod bit * (seg52In1AccX95 rho - rho 48315) := by
    have hd : rho 48317 = Bool.toZMod bit * (rho 48315 - seg52In1AccX95 rho) := by
      rw [← hbit]
      unfold seg52In1AccX95
      linear_combination -r3927
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY96 rho = seg52In1AccY95 rho - Bool.toZMod bit * (seg52In1AccY95 rho - rho 48316) := by
    have hd : rho 48318 = Bool.toZMod bit * (rho 48316 - seg52In1AccY95 rho) := by
      rw [← hbit]
      unfold seg52In1AccY95
      linear_combination -r3928
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48309 * rho 48310 = rho 48319 := by linear_combination r3929
  have hd1 : rho 48309 * rho 48309 = rho 48320 := by linear_combination r3930
  have hd2 : rho 48310 * rho 48310 = rho 48321 := by linear_combination r3931
  have hd3 : rho 48322 * (rho 48310 * rho 48310 + rho 48309 * rho 48309 * (-1)) =
      2 * (rho 48309 * rho 48310) := by
    rw [hd0, hd1, hd2]
    linear_combination r3932
  have hd4 : rho 48323 * (2 - (rho 48310 * rho 48310 + rho 48309 * rho 48309 * (-1))) =
      rho 48310 * rho 48310 - rho 48309 * rho 48309 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3933
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX95 rho, seg52In1AccY95 rho⟩ ⟨rho 48309, rho 48310⟩
    ⟨rho 48315, rho 48316⟩ ⟨seg52In1AccX96 rho, seg52In1AccY96 rho⟩ ⟨rho 48322, rho 48323⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows96 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3934 rho ∧ Seg52.relationRow3935 rho ∧ Seg52.relationRow3936 rho ∧ Seg52.relationRow3937 rho ∧ Seg52.relationRow3938 rho ∧ Seg52.relationRow3939 rho ∧ Seg52.relationRow3940 rho ∧ Seg52.relationRow3941 rho ∧ Seg52.relationRow3942 rho ∧ Seg52.relationRow3943 rho ∧ Seg52.relationRow3944 rho ∧ Seg52.relationRow3945 rho ∧ Seg52.relationRow3946 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart49 at p49

  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r3934, r3935, r3936, r3937, r3938, r3939, r3940, r3941, r3942, r3943, r3944, r3945, r3946, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3934, r3935, r3936, r3937, r3938, r3939, r3940, r3941, r3942, r3943, r3944, r3945, r3946⟩

theorem seg52In1_rung96 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47050 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX96 rho, seg52In1AccY96 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48322, rho 48323⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX96 rho, seg52In1AccY96 rho⟩ ⟨rho 48322, rho 48323⟩
        ⟨seg52In1AccX97 rho, seg52In1AccY97 rho⟩ ⟨rho 48335, rho 48336⟩ := by
  obtain ⟨r3934, r3935, r3936, r3937, r3938, r3939, r3940, r3941, r3942, r3943, r3944, r3945, r3946⟩ := seg52In1_rows96 rho h
  unfold Seg52.relationRow3934 at r3934

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3934

  unfold Seg52.relationRow3935 at r3935

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3935

  unfold Seg52.relationRow3936 at r3936

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3936

  unfold Seg52.relationRow3937 at r3937

  unfold Seg52.relationRow3938 at r3938

  unfold Seg52.relationRow3939 at r3939

  unfold Seg52.relationRow3940 at r3940

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3940

  unfold Seg52.relationRow3941 at r3941

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3941

  unfold Seg52.relationRow3942 at r3942

  unfold Seg52.relationRow3943 at r3943

  unfold Seg52.relationRow3944 at r3944

  unfold Seg52.relationRow3945 at r3945

  unfold Seg52.relationRow3946 at r3946

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX97 rho = seg52In1AccX96 rho + rho 48330 := by
    unfold seg52In1AccX97 seg52In1AccX96
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 96]

    ring

  have hnexty : seg52In1AccY97 rho = seg52In1AccY96 rho + rho 48331 := by
    unfold seg52In1AccY97 seg52In1AccY96
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 96]

    ring

  have ha0 : (rho 48322 + rho 48323) * (seg52In1AccX96 rho + seg52In1AccY96 rho) = rho 48324 := by
    unfold seg52In1AccX96 seg52In1AccY96
    linear_combination r3934
  have ha1 : rho 48323 * seg52In1AccX96 rho = rho 48325 := by
    unfold seg52In1AccX96
    linear_combination r3935
  have ha2 : rho 48322 * seg52In1AccY96 rho = rho 48326 := by
    unfold seg52In1AccY96
    linear_combination r3936
  have ha3 : 3021 * rho 48325 * rho 48326 = rho 48327 := by
    linear_combination r3937
  have ha4 : rho 48328 * (1 + rho 48327) = rho 48325 + rho 48326 := by
    linear_combination r3938
  have ha5 : rho 48329 * (1 - rho 48327) = rho 48324 - rho 48325 - rho 48326 := by
    linear_combination r3939
  have haddx :
      rho 48328 * (1 + 3021 * (rho 48323 * seg52In1AccX96 rho) * (rho 48322 * seg52In1AccY96 rho)) =
        rho 48323 * seg52In1AccX96 rho + rho 48322 * seg52In1AccY96 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48329 * (1 - 3021 * (rho 48323 * seg52In1AccX96 rho) * (rho 48322 * seg52In1AccY96 rho)) =
        (-1) * (rho 48323 * seg52In1AccX96 rho) - rho 48322 * seg52In1AccY96 rho +
          (seg52In1AccY96 rho - seg52In1AccX96 rho * (-1)) * (rho 48322 + rho 48323) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48329 * (1 - rho 48327) = rho 48324 - rho 48325 - rho 48326 := ha5
      _ = (-1) * rho 48325 - rho 48326 + (seg52In1AccY96 rho - seg52In1AccX96 rho * (-1)) *
          (rho 48322 + rho 48323) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX97 rho = seg52In1AccX96 rho - Bool.toZMod bit * (seg52In1AccX96 rho - rho 48328) := by
    have hd : rho 48330 = Bool.toZMod bit * (rho 48328 - seg52In1AccX96 rho) := by
      rw [← hbit]
      unfold seg52In1AccX96
      linear_combination -r3940
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY97 rho = seg52In1AccY96 rho - Bool.toZMod bit * (seg52In1AccY96 rho - rho 48329) := by
    have hd : rho 48331 = Bool.toZMod bit * (rho 48329 - seg52In1AccY96 rho) := by
      rw [← hbit]
      unfold seg52In1AccY96
      linear_combination -r3941
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48322 * rho 48323 = rho 48332 := by linear_combination r3942
  have hd1 : rho 48322 * rho 48322 = rho 48333 := by linear_combination r3943
  have hd2 : rho 48323 * rho 48323 = rho 48334 := by linear_combination r3944
  have hd3 : rho 48335 * (rho 48323 * rho 48323 + rho 48322 * rho 48322 * (-1)) =
      2 * (rho 48322 * rho 48323) := by
    rw [hd0, hd1, hd2]
    linear_combination r3945
  have hd4 : rho 48336 * (2 - (rho 48323 * rho 48323 + rho 48322 * rho 48322 * (-1))) =
      rho 48323 * rho 48323 - rho 48322 * rho 48322 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3946
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX96 rho, seg52In1AccY96 rho⟩ ⟨rho 48322, rho 48323⟩
    ⟨rho 48328, rho 48329⟩ ⟨seg52In1AccX97 rho, seg52In1AccY97 rho⟩ ⟨rho 48335, rho 48336⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows97 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3947 rho ∧ Seg52.relationRow3948 rho ∧ Seg52.relationRow3949 rho ∧ Seg52.relationRow3950 rho ∧ Seg52.relationRow3951 rho ∧ Seg52.relationRow3952 rho ∧ Seg52.relationRow3953 rho ∧ Seg52.relationRow3954 rho ∧ Seg52.relationRow3955 rho ∧ Seg52.relationRow3956 rho ∧ Seg52.relationRow3957 rho ∧ Seg52.relationRow3958 rho ∧ Seg52.relationRow3959 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart49 at p49

  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3947, r3948, r3949, r3950, r3951, r3952, r3953, r3954, r3955, r3956, r3957, r3958, r3959, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3947, r3948, r3949, r3950, r3951, r3952, r3953, r3954, r3955, r3956, r3957, r3958, r3959⟩

theorem seg52In1_rung97 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47051 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX97 rho, seg52In1AccY97 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48335, rho 48336⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX97 rho, seg52In1AccY97 rho⟩ ⟨rho 48335, rho 48336⟩
        ⟨seg52In1AccX98 rho, seg52In1AccY98 rho⟩ ⟨rho 48348, rho 48349⟩ := by
  obtain ⟨r3947, r3948, r3949, r3950, r3951, r3952, r3953, r3954, r3955, r3956, r3957, r3958, r3959⟩ := seg52In1_rows97 rho h
  unfold Seg52.relationRow3947 at r3947

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3947

  unfold Seg52.relationRow3948 at r3948

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3948

  unfold Seg52.relationRow3949 at r3949

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3949

  unfold Seg52.relationRow3950 at r3950

  unfold Seg52.relationRow3951 at r3951

  unfold Seg52.relationRow3952 at r3952

  unfold Seg52.relationRow3953 at r3953

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3953

  unfold Seg52.relationRow3954 at r3954

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3954

  unfold Seg52.relationRow3955 at r3955

  unfold Seg52.relationRow3956 at r3956

  unfold Seg52.relationRow3957 at r3957

  unfold Seg52.relationRow3958 at r3958

  unfold Seg52.relationRow3959 at r3959

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX98 rho = seg52In1AccX97 rho + rho 48343 := by
    unfold seg52In1AccX98 seg52In1AccX97
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 97]

    ring

  have hnexty : seg52In1AccY98 rho = seg52In1AccY97 rho + rho 48344 := by
    unfold seg52In1AccY98 seg52In1AccY97
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 97]

    ring

  have ha0 : (rho 48335 + rho 48336) * (seg52In1AccX97 rho + seg52In1AccY97 rho) = rho 48337 := by
    unfold seg52In1AccX97 seg52In1AccY97
    linear_combination r3947
  have ha1 : rho 48336 * seg52In1AccX97 rho = rho 48338 := by
    unfold seg52In1AccX97
    linear_combination r3948
  have ha2 : rho 48335 * seg52In1AccY97 rho = rho 48339 := by
    unfold seg52In1AccY97
    linear_combination r3949
  have ha3 : 3021 * rho 48338 * rho 48339 = rho 48340 := by
    linear_combination r3950
  have ha4 : rho 48341 * (1 + rho 48340) = rho 48338 + rho 48339 := by
    linear_combination r3951
  have ha5 : rho 48342 * (1 - rho 48340) = rho 48337 - rho 48338 - rho 48339 := by
    linear_combination r3952
  have haddx :
      rho 48341 * (1 + 3021 * (rho 48336 * seg52In1AccX97 rho) * (rho 48335 * seg52In1AccY97 rho)) =
        rho 48336 * seg52In1AccX97 rho + rho 48335 * seg52In1AccY97 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48342 * (1 - 3021 * (rho 48336 * seg52In1AccX97 rho) * (rho 48335 * seg52In1AccY97 rho)) =
        (-1) * (rho 48336 * seg52In1AccX97 rho) - rho 48335 * seg52In1AccY97 rho +
          (seg52In1AccY97 rho - seg52In1AccX97 rho * (-1)) * (rho 48335 + rho 48336) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48342 * (1 - rho 48340) = rho 48337 - rho 48338 - rho 48339 := ha5
      _ = (-1) * rho 48338 - rho 48339 + (seg52In1AccY97 rho - seg52In1AccX97 rho * (-1)) *
          (rho 48335 + rho 48336) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX98 rho = seg52In1AccX97 rho - Bool.toZMod bit * (seg52In1AccX97 rho - rho 48341) := by
    have hd : rho 48343 = Bool.toZMod bit * (rho 48341 - seg52In1AccX97 rho) := by
      rw [← hbit]
      unfold seg52In1AccX97
      linear_combination -r3953
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY98 rho = seg52In1AccY97 rho - Bool.toZMod bit * (seg52In1AccY97 rho - rho 48342) := by
    have hd : rho 48344 = Bool.toZMod bit * (rho 48342 - seg52In1AccY97 rho) := by
      rw [← hbit]
      unfold seg52In1AccY97
      linear_combination -r3954
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48335 * rho 48336 = rho 48345 := by linear_combination r3955
  have hd1 : rho 48335 * rho 48335 = rho 48346 := by linear_combination r3956
  have hd2 : rho 48336 * rho 48336 = rho 48347 := by linear_combination r3957
  have hd3 : rho 48348 * (rho 48336 * rho 48336 + rho 48335 * rho 48335 * (-1)) =
      2 * (rho 48335 * rho 48336) := by
    rw [hd0, hd1, hd2]
    linear_combination r3958
  have hd4 : rho 48349 * (2 - (rho 48336 * rho 48336 + rho 48335 * rho 48335 * (-1))) =
      rho 48336 * rho 48336 - rho 48335 * rho 48335 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3959
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX97 rho, seg52In1AccY97 rho⟩ ⟨rho 48335, rho 48336⟩
    ⟨rho 48341, rho 48342⟩ ⟨seg52In1AccX98 rho, seg52In1AccY98 rho⟩ ⟨rho 48348, rho 48349⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows98 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3960 rho ∧ Seg52.relationRow3961 rho ∧ Seg52.relationRow3962 rho ∧ Seg52.relationRow3963 rho ∧ Seg52.relationRow3964 rho ∧ Seg52.relationRow3965 rho ∧ Seg52.relationRow3966 rho ∧ Seg52.relationRow3967 rho ∧ Seg52.relationRow3968 rho ∧ Seg52.relationRow3969 rho ∧ Seg52.relationRow3970 rho ∧ Seg52.relationRow3971 rho ∧ Seg52.relationRow3972 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart49 at p49

  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3960, r3961, r3962, r3963, r3964, r3965, r3966, r3967, r3968, r3969, r3970, r3971, r3972, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3960, r3961, r3962, r3963, r3964, r3965, r3966, r3967, r3968, r3969, r3970, r3971, r3972⟩

theorem seg52In1_rung98 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47052 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX98 rho, seg52In1AccY98 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48348, rho 48349⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX98 rho, seg52In1AccY98 rho⟩ ⟨rho 48348, rho 48349⟩
        ⟨seg52In1AccX99 rho, seg52In1AccY99 rho⟩ ⟨rho 48361, rho 48362⟩ := by
  obtain ⟨r3960, r3961, r3962, r3963, r3964, r3965, r3966, r3967, r3968, r3969, r3970, r3971, r3972⟩ := seg52In1_rows98 rho h
  unfold Seg52.relationRow3960 at r3960

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3960

  unfold Seg52.relationRow3961 at r3961

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3961

  unfold Seg52.relationRow3962 at r3962

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3962

  unfold Seg52.relationRow3963 at r3963

  unfold Seg52.relationRow3964 at r3964

  unfold Seg52.relationRow3965 at r3965

  unfold Seg52.relationRow3966 at r3966

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3966

  unfold Seg52.relationRow3967 at r3967

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3967

  unfold Seg52.relationRow3968 at r3968

  unfold Seg52.relationRow3969 at r3969

  unfold Seg52.relationRow3970 at r3970

  unfold Seg52.relationRow3971 at r3971

  unfold Seg52.relationRow3972 at r3972

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX99 rho = seg52In1AccX98 rho + rho 48356 := by
    unfold seg52In1AccX99 seg52In1AccX98
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 98]

    ring

  have hnexty : seg52In1AccY99 rho = seg52In1AccY98 rho + rho 48357 := by
    unfold seg52In1AccY99 seg52In1AccY98
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 98]

    ring

  have ha0 : (rho 48348 + rho 48349) * (seg52In1AccX98 rho + seg52In1AccY98 rho) = rho 48350 := by
    unfold seg52In1AccX98 seg52In1AccY98
    linear_combination r3960
  have ha1 : rho 48349 * seg52In1AccX98 rho = rho 48351 := by
    unfold seg52In1AccX98
    linear_combination r3961
  have ha2 : rho 48348 * seg52In1AccY98 rho = rho 48352 := by
    unfold seg52In1AccY98
    linear_combination r3962
  have ha3 : 3021 * rho 48351 * rho 48352 = rho 48353 := by
    linear_combination r3963
  have ha4 : rho 48354 * (1 + rho 48353) = rho 48351 + rho 48352 := by
    linear_combination r3964
  have ha5 : rho 48355 * (1 - rho 48353) = rho 48350 - rho 48351 - rho 48352 := by
    linear_combination r3965
  have haddx :
      rho 48354 * (1 + 3021 * (rho 48349 * seg52In1AccX98 rho) * (rho 48348 * seg52In1AccY98 rho)) =
        rho 48349 * seg52In1AccX98 rho + rho 48348 * seg52In1AccY98 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48355 * (1 - 3021 * (rho 48349 * seg52In1AccX98 rho) * (rho 48348 * seg52In1AccY98 rho)) =
        (-1) * (rho 48349 * seg52In1AccX98 rho) - rho 48348 * seg52In1AccY98 rho +
          (seg52In1AccY98 rho - seg52In1AccX98 rho * (-1)) * (rho 48348 + rho 48349) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48355 * (1 - rho 48353) = rho 48350 - rho 48351 - rho 48352 := ha5
      _ = (-1) * rho 48351 - rho 48352 + (seg52In1AccY98 rho - seg52In1AccX98 rho * (-1)) *
          (rho 48348 + rho 48349) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX99 rho = seg52In1AccX98 rho - Bool.toZMod bit * (seg52In1AccX98 rho - rho 48354) := by
    have hd : rho 48356 = Bool.toZMod bit * (rho 48354 - seg52In1AccX98 rho) := by
      rw [← hbit]
      unfold seg52In1AccX98
      linear_combination -r3966
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY99 rho = seg52In1AccY98 rho - Bool.toZMod bit * (seg52In1AccY98 rho - rho 48355) := by
    have hd : rho 48357 = Bool.toZMod bit * (rho 48355 - seg52In1AccY98 rho) := by
      rw [← hbit]
      unfold seg52In1AccY98
      linear_combination -r3967
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48348 * rho 48349 = rho 48358 := by linear_combination r3968
  have hd1 : rho 48348 * rho 48348 = rho 48359 := by linear_combination r3969
  have hd2 : rho 48349 * rho 48349 = rho 48360 := by linear_combination r3970
  have hd3 : rho 48361 * (rho 48349 * rho 48349 + rho 48348 * rho 48348 * (-1)) =
      2 * (rho 48348 * rho 48349) := by
    rw [hd0, hd1, hd2]
    linear_combination r3971
  have hd4 : rho 48362 * (2 - (rho 48349 * rho 48349 + rho 48348 * rho 48348 * (-1))) =
      rho 48349 * rho 48349 - rho 48348 * rho 48348 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3972
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX98 rho, seg52In1AccY98 rho⟩ ⟨rho 48348, rho 48349⟩
    ⟨rho 48354, rho 48355⟩ ⟨seg52In1AccX99 rho, seg52In1AccY99 rho⟩ ⟨rho 48361, rho 48362⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_hstep_c8 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (46954 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 88 ≤ i → i < 99 →
      EdwardsBridge.onCurve (seg52In1AccState rho i) →
      EdwardsBridge.onCurve (seg52In1CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In1AccState rho i) (seg52In1CurState rho i)
        (seg52In1AccState rho (i + 1)) (seg52In1CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In1_rung88 rho h bits[88]! (hbitAt 88 (by omega)) hacc hcur
  · exact seg52In1_rung89 rho h bits[89]! (hbitAt 89 (by omega)) hacc hcur
  · exact seg52In1_rung90 rho h bits[90]! (hbitAt 90 (by omega)) hacc hcur
  · exact seg52In1_rung91 rho h bits[91]! (hbitAt 91 (by omega)) hacc hcur
  · exact seg52In1_rung92 rho h bits[92]! (hbitAt 92 (by omega)) hacc hcur
  · exact seg52In1_rung93 rho h bits[93]! (hbitAt 93 (by omega)) hacc hcur
  · exact seg52In1_rung94 rho h bits[94]! (hbitAt 94 (by omega)) hacc hcur
  · exact seg52In1_rung95 rho h bits[95]! (hbitAt 95 (by omega)) hacc hcur
  · exact seg52In1_rung96 rho h bits[96]! (hbitAt 96 (by omega)) hacc hcur
  · exact seg52In1_rung97 rho h bits[97]! (hbitAt 97 (by omega)) hacc hcur
  · exact seg52In1_rung98 rho h bits[98]! (hbitAt 98 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
