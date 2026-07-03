import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In0_rows99 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2826 rho ∧ Seg52.relationRow2827 rho ∧ Seg52.relationRow2828 rho ∧ Seg52.relationRow2829 rho ∧ Seg52.relationRow2830 rho ∧ Seg52.relationRow2831 rho ∧ Seg52.relationRow2832 rho ∧ Seg52.relationRow2833 rho ∧ Seg52.relationRow2834 rho ∧ Seg52.relationRow2835 rho ∧ Seg52.relationRow2836 rho ∧ Seg52.relationRow2837 rho ∧ Seg52.relationRow2838 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p35, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart35 at p35

  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2826, r2827, r2828, r2829, r2830, r2831, r2832, r2833, r2834, r2835, r2836, r2837, r2838, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2826, r2827, r2828, r2829, r2830, r2831, r2832, r2833, r2834, r2835, r2836, r2837, r2838⟩

theorem seg52In0_rung99 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45907 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX99 rho, seg52In0AccY99 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47215, rho 47216⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX99 rho, seg52In0AccY99 rho⟩ ⟨rho 47215, rho 47216⟩
        ⟨seg52In0AccX100 rho, seg52In0AccY100 rho⟩ ⟨rho 47228, rho 47229⟩ := by
  obtain ⟨r2826, r2827, r2828, r2829, r2830, r2831, r2832, r2833, r2834, r2835, r2836, r2837, r2838⟩ := seg52In0_rows99 rho h
  unfold Seg52.relationRow2826 at r2826

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2826

  unfold Seg52.relationRow2827 at r2827

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2827

  unfold Seg52.relationRow2828 at r2828

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2828

  unfold Seg52.relationRow2829 at r2829

  unfold Seg52.relationRow2830 at r2830

  unfold Seg52.relationRow2831 at r2831

  unfold Seg52.relationRow2832 at r2832

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2832

  unfold Seg52.relationRow2833 at r2833

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2833

  unfold Seg52.relationRow2834 at r2834

  unfold Seg52.relationRow2835 at r2835

  unfold Seg52.relationRow2836 at r2836

  unfold Seg52.relationRow2837 at r2837

  unfold Seg52.relationRow2838 at r2838

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX100 rho = seg52In0AccX99 rho + rho 47223 := by
    unfold seg52In0AccX100 seg52In0AccX99
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 99]

    ring

  have hnexty : seg52In0AccY100 rho = seg52In0AccY99 rho + rho 47224 := by
    unfold seg52In0AccY100 seg52In0AccY99
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 99]

    ring

  have ha0 : (rho 47215 + rho 47216) * (seg52In0AccX99 rho + seg52In0AccY99 rho) = rho 47217 := by
    unfold seg52In0AccX99 seg52In0AccY99
    linear_combination r2826
  have ha1 : rho 47216 * seg52In0AccX99 rho = rho 47218 := by
    unfold seg52In0AccX99
    linear_combination r2827
  have ha2 : rho 47215 * seg52In0AccY99 rho = rho 47219 := by
    unfold seg52In0AccY99
    linear_combination r2828
  have ha3 : 3021 * rho 47218 * rho 47219 = rho 47220 := by
    linear_combination r2829
  have ha4 : rho 47221 * (1 + rho 47220) = rho 47218 + rho 47219 := by
    linear_combination r2830
  have ha5 : rho 47222 * (1 - rho 47220) = rho 47217 - rho 47218 - rho 47219 := by
    linear_combination r2831
  have haddx :
      rho 47221 * (1 + 3021 * (rho 47216 * seg52In0AccX99 rho) * (rho 47215 * seg52In0AccY99 rho)) =
        rho 47216 * seg52In0AccX99 rho + rho 47215 * seg52In0AccY99 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47222 * (1 - 3021 * (rho 47216 * seg52In0AccX99 rho) * (rho 47215 * seg52In0AccY99 rho)) =
        (-1) * (rho 47216 * seg52In0AccX99 rho) - rho 47215 * seg52In0AccY99 rho +
          (seg52In0AccY99 rho - seg52In0AccX99 rho * (-1)) * (rho 47215 + rho 47216) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47222 * (1 - rho 47220) = rho 47217 - rho 47218 - rho 47219 := ha5
      _ = (-1) * rho 47218 - rho 47219 + (seg52In0AccY99 rho - seg52In0AccX99 rho * (-1)) *
          (rho 47215 + rho 47216) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX100 rho = seg52In0AccX99 rho - Bool.toZMod bit * (seg52In0AccX99 rho - rho 47221) := by
    have hd : rho 47223 = Bool.toZMod bit * (rho 47221 - seg52In0AccX99 rho) := by
      rw [← hbit]
      unfold seg52In0AccX99
      linear_combination -r2832
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY100 rho = seg52In0AccY99 rho - Bool.toZMod bit * (seg52In0AccY99 rho - rho 47222) := by
    have hd : rho 47224 = Bool.toZMod bit * (rho 47222 - seg52In0AccY99 rho) := by
      rw [← hbit]
      unfold seg52In0AccY99
      linear_combination -r2833
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47215 * rho 47216 = rho 47225 := by linear_combination r2834
  have hd1 : rho 47215 * rho 47215 = rho 47226 := by linear_combination r2835
  have hd2 : rho 47216 * rho 47216 = rho 47227 := by linear_combination r2836
  have hd3 : rho 47228 * (rho 47216 * rho 47216 + rho 47215 * rho 47215 * (-1)) =
      2 * (rho 47215 * rho 47216) := by
    rw [hd0, hd1, hd2]
    linear_combination r2837
  have hd4 : rho 47229 * (2 - (rho 47216 * rho 47216 + rho 47215 * rho 47215 * (-1))) =
      rho 47216 * rho 47216 - rho 47215 * rho 47215 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2838
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX99 rho, seg52In0AccY99 rho⟩ ⟨rho 47215, rho 47216⟩
    ⟨rho 47221, rho 47222⟩ ⟨seg52In0AccX100 rho, seg52In0AccY100 rho⟩ ⟨rho 47228, rho 47229⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows100 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2839 rho ∧ Seg52.relationRow2840 rho ∧ Seg52.relationRow2841 rho ∧ Seg52.relationRow2842 rho ∧ Seg52.relationRow2843 rho ∧ Seg52.relationRow2844 rho ∧ Seg52.relationRow2845 rho ∧ Seg52.relationRow2846 rho ∧ Seg52.relationRow2847 rho ∧ Seg52.relationRow2848 rho ∧ Seg52.relationRow2849 rho ∧ Seg52.relationRow2850 rho ∧ Seg52.relationRow2851 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p35, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart35 at p35

  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2839, r2840, r2841, r2842, r2843, r2844, r2845, r2846, r2847, r2848, r2849, r2850, r2851, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2839, r2840, r2841, r2842, r2843, r2844, r2845, r2846, r2847, r2848, r2849, r2850, r2851⟩

theorem seg52In0_rung100 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45908 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX100 rho, seg52In0AccY100 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47228, rho 47229⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX100 rho, seg52In0AccY100 rho⟩ ⟨rho 47228, rho 47229⟩
        ⟨seg52In0AccX101 rho, seg52In0AccY101 rho⟩ ⟨rho 47241, rho 47242⟩ := by
  obtain ⟨r2839, r2840, r2841, r2842, r2843, r2844, r2845, r2846, r2847, r2848, r2849, r2850, r2851⟩ := seg52In0_rows100 rho h
  unfold Seg52.relationRow2839 at r2839

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2839

  unfold Seg52.relationRow2840 at r2840

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2840

  unfold Seg52.relationRow2841 at r2841

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2841

  unfold Seg52.relationRow2842 at r2842

  unfold Seg52.relationRow2843 at r2843

  unfold Seg52.relationRow2844 at r2844

  unfold Seg52.relationRow2845 at r2845

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2845

  unfold Seg52.relationRow2846 at r2846

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2846

  unfold Seg52.relationRow2847 at r2847

  unfold Seg52.relationRow2848 at r2848

  unfold Seg52.relationRow2849 at r2849

  unfold Seg52.relationRow2850 at r2850

  unfold Seg52.relationRow2851 at r2851

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX101 rho = seg52In0AccX100 rho + rho 47236 := by
    unfold seg52In0AccX101 seg52In0AccX100
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 100]

    ring

  have hnexty : seg52In0AccY101 rho = seg52In0AccY100 rho + rho 47237 := by
    unfold seg52In0AccY101 seg52In0AccY100
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 100]

    ring

  have ha0 : (rho 47228 + rho 47229) * (seg52In0AccX100 rho + seg52In0AccY100 rho) = rho 47230 := by
    unfold seg52In0AccX100 seg52In0AccY100
    linear_combination r2839
  have ha1 : rho 47229 * seg52In0AccX100 rho = rho 47231 := by
    unfold seg52In0AccX100
    linear_combination r2840
  have ha2 : rho 47228 * seg52In0AccY100 rho = rho 47232 := by
    unfold seg52In0AccY100
    linear_combination r2841
  have ha3 : 3021 * rho 47231 * rho 47232 = rho 47233 := by
    linear_combination r2842
  have ha4 : rho 47234 * (1 + rho 47233) = rho 47231 + rho 47232 := by
    linear_combination r2843
  have ha5 : rho 47235 * (1 - rho 47233) = rho 47230 - rho 47231 - rho 47232 := by
    linear_combination r2844
  have haddx :
      rho 47234 * (1 + 3021 * (rho 47229 * seg52In0AccX100 rho) * (rho 47228 * seg52In0AccY100 rho)) =
        rho 47229 * seg52In0AccX100 rho + rho 47228 * seg52In0AccY100 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47235 * (1 - 3021 * (rho 47229 * seg52In0AccX100 rho) * (rho 47228 * seg52In0AccY100 rho)) =
        (-1) * (rho 47229 * seg52In0AccX100 rho) - rho 47228 * seg52In0AccY100 rho +
          (seg52In0AccY100 rho - seg52In0AccX100 rho * (-1)) * (rho 47228 + rho 47229) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47235 * (1 - rho 47233) = rho 47230 - rho 47231 - rho 47232 := ha5
      _ = (-1) * rho 47231 - rho 47232 + (seg52In0AccY100 rho - seg52In0AccX100 rho * (-1)) *
          (rho 47228 + rho 47229) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX101 rho = seg52In0AccX100 rho - Bool.toZMod bit * (seg52In0AccX100 rho - rho 47234) := by
    have hd : rho 47236 = Bool.toZMod bit * (rho 47234 - seg52In0AccX100 rho) := by
      rw [← hbit]
      unfold seg52In0AccX100
      linear_combination -r2845
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY101 rho = seg52In0AccY100 rho - Bool.toZMod bit * (seg52In0AccY100 rho - rho 47235) := by
    have hd : rho 47237 = Bool.toZMod bit * (rho 47235 - seg52In0AccY100 rho) := by
      rw [← hbit]
      unfold seg52In0AccY100
      linear_combination -r2846
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47228 * rho 47229 = rho 47238 := by linear_combination r2847
  have hd1 : rho 47228 * rho 47228 = rho 47239 := by linear_combination r2848
  have hd2 : rho 47229 * rho 47229 = rho 47240 := by linear_combination r2849
  have hd3 : rho 47241 * (rho 47229 * rho 47229 + rho 47228 * rho 47228 * (-1)) =
      2 * (rho 47228 * rho 47229) := by
    rw [hd0, hd1, hd2]
    linear_combination r2850
  have hd4 : rho 47242 * (2 - (rho 47229 * rho 47229 + rho 47228 * rho 47228 * (-1))) =
      rho 47229 * rho 47229 - rho 47228 * rho 47228 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2851
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX100 rho, seg52In0AccY100 rho⟩ ⟨rho 47228, rho 47229⟩
    ⟨rho 47234, rho 47235⟩ ⟨seg52In0AccX101 rho, seg52In0AccY101 rho⟩ ⟨rho 47241, rho 47242⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows101 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2852 rho ∧ Seg52.relationRow2853 rho ∧ Seg52.relationRow2854 rho ∧ Seg52.relationRow2855 rho ∧ Seg52.relationRow2856 rho ∧ Seg52.relationRow2857 rho ∧ Seg52.relationRow2858 rho ∧ Seg52.relationRow2859 rho ∧ Seg52.relationRow2860 rho ∧ Seg52.relationRow2861 rho ∧ Seg52.relationRow2862 rho ∧ Seg52.relationRow2863 rho ∧ Seg52.relationRow2864 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p35, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart35 at p35

  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2852, r2853, r2854, r2855, r2856, r2857, r2858, r2859, r2860, r2861, r2862, r2863, r2864, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2852, r2853, r2854, r2855, r2856, r2857, r2858, r2859, r2860, r2861, r2862, r2863, r2864⟩

theorem seg52In0_rung101 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45909 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX101 rho, seg52In0AccY101 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47241, rho 47242⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX101 rho, seg52In0AccY101 rho⟩ ⟨rho 47241, rho 47242⟩
        ⟨seg52In0AccX102 rho, seg52In0AccY102 rho⟩ ⟨rho 47254, rho 47255⟩ := by
  obtain ⟨r2852, r2853, r2854, r2855, r2856, r2857, r2858, r2859, r2860, r2861, r2862, r2863, r2864⟩ := seg52In0_rows101 rho h
  unfold Seg52.relationRow2852 at r2852

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2852

  unfold Seg52.relationRow2853 at r2853

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2853

  unfold Seg52.relationRow2854 at r2854

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2854

  unfold Seg52.relationRow2855 at r2855

  unfold Seg52.relationRow2856 at r2856

  unfold Seg52.relationRow2857 at r2857

  unfold Seg52.relationRow2858 at r2858

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2858

  unfold Seg52.relationRow2859 at r2859

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2859

  unfold Seg52.relationRow2860 at r2860

  unfold Seg52.relationRow2861 at r2861

  unfold Seg52.relationRow2862 at r2862

  unfold Seg52.relationRow2863 at r2863

  unfold Seg52.relationRow2864 at r2864

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX102 rho = seg52In0AccX101 rho + rho 47249 := by
    unfold seg52In0AccX102 seg52In0AccX101
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 101]

    ring

  have hnexty : seg52In0AccY102 rho = seg52In0AccY101 rho + rho 47250 := by
    unfold seg52In0AccY102 seg52In0AccY101
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 101]

    ring

  have ha0 : (rho 47241 + rho 47242) * (seg52In0AccX101 rho + seg52In0AccY101 rho) = rho 47243 := by
    unfold seg52In0AccX101 seg52In0AccY101
    linear_combination r2852
  have ha1 : rho 47242 * seg52In0AccX101 rho = rho 47244 := by
    unfold seg52In0AccX101
    linear_combination r2853
  have ha2 : rho 47241 * seg52In0AccY101 rho = rho 47245 := by
    unfold seg52In0AccY101
    linear_combination r2854
  have ha3 : 3021 * rho 47244 * rho 47245 = rho 47246 := by
    linear_combination r2855
  have ha4 : rho 47247 * (1 + rho 47246) = rho 47244 + rho 47245 := by
    linear_combination r2856
  have ha5 : rho 47248 * (1 - rho 47246) = rho 47243 - rho 47244 - rho 47245 := by
    linear_combination r2857
  have haddx :
      rho 47247 * (1 + 3021 * (rho 47242 * seg52In0AccX101 rho) * (rho 47241 * seg52In0AccY101 rho)) =
        rho 47242 * seg52In0AccX101 rho + rho 47241 * seg52In0AccY101 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47248 * (1 - 3021 * (rho 47242 * seg52In0AccX101 rho) * (rho 47241 * seg52In0AccY101 rho)) =
        (-1) * (rho 47242 * seg52In0AccX101 rho) - rho 47241 * seg52In0AccY101 rho +
          (seg52In0AccY101 rho - seg52In0AccX101 rho * (-1)) * (rho 47241 + rho 47242) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47248 * (1 - rho 47246) = rho 47243 - rho 47244 - rho 47245 := ha5
      _ = (-1) * rho 47244 - rho 47245 + (seg52In0AccY101 rho - seg52In0AccX101 rho * (-1)) *
          (rho 47241 + rho 47242) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX102 rho = seg52In0AccX101 rho - Bool.toZMod bit * (seg52In0AccX101 rho - rho 47247) := by
    have hd : rho 47249 = Bool.toZMod bit * (rho 47247 - seg52In0AccX101 rho) := by
      rw [← hbit]
      unfold seg52In0AccX101
      linear_combination -r2858
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY102 rho = seg52In0AccY101 rho - Bool.toZMod bit * (seg52In0AccY101 rho - rho 47248) := by
    have hd : rho 47250 = Bool.toZMod bit * (rho 47248 - seg52In0AccY101 rho) := by
      rw [← hbit]
      unfold seg52In0AccY101
      linear_combination -r2859
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47241 * rho 47242 = rho 47251 := by linear_combination r2860
  have hd1 : rho 47241 * rho 47241 = rho 47252 := by linear_combination r2861
  have hd2 : rho 47242 * rho 47242 = rho 47253 := by linear_combination r2862
  have hd3 : rho 47254 * (rho 47242 * rho 47242 + rho 47241 * rho 47241 * (-1)) =
      2 * (rho 47241 * rho 47242) := by
    rw [hd0, hd1, hd2]
    linear_combination r2863
  have hd4 : rho 47255 * (2 - (rho 47242 * rho 47242 + rho 47241 * rho 47241 * (-1))) =
      rho 47242 * rho 47242 - rho 47241 * rho 47241 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2864
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX101 rho, seg52In0AccY101 rho⟩ ⟨rho 47241, rho 47242⟩
    ⟨rho 47247, rho 47248⟩ ⟨seg52In0AccX102 rho, seg52In0AccY102 rho⟩ ⟨rho 47254, rho 47255⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows102 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2865 rho ∧ Seg52.relationRow2866 rho ∧ Seg52.relationRow2867 rho ∧ Seg52.relationRow2868 rho ∧ Seg52.relationRow2869 rho ∧ Seg52.relationRow2870 rho ∧ Seg52.relationRow2871 rho ∧ Seg52.relationRow2872 rho ∧ Seg52.relationRow2873 rho ∧ Seg52.relationRow2874 rho ∧ Seg52.relationRow2875 rho ∧ Seg52.relationRow2876 rho ∧ Seg52.relationRow2877 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p35, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart35 at p35

  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2865, r2866, r2867, r2868, r2869, r2870, r2871, r2872, r2873, r2874, r2875, r2876, r2877, _, _⟩

  exact ⟨r2865, r2866, r2867, r2868, r2869, r2870, r2871, r2872, r2873, r2874, r2875, r2876, r2877⟩

theorem seg52In0_rung102 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45910 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX102 rho, seg52In0AccY102 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47254, rho 47255⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX102 rho, seg52In0AccY102 rho⟩ ⟨rho 47254, rho 47255⟩
        ⟨seg52In0AccX103 rho, seg52In0AccY103 rho⟩ ⟨rho 47267, rho 47268⟩ := by
  obtain ⟨r2865, r2866, r2867, r2868, r2869, r2870, r2871, r2872, r2873, r2874, r2875, r2876, r2877⟩ := seg52In0_rows102 rho h
  unfold Seg52.relationRow2865 at r2865

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2865

  unfold Seg52.relationRow2866 at r2866

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2866

  unfold Seg52.relationRow2867 at r2867

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2867

  unfold Seg52.relationRow2868 at r2868

  unfold Seg52.relationRow2869 at r2869

  unfold Seg52.relationRow2870 at r2870

  unfold Seg52.relationRow2871 at r2871

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2871

  unfold Seg52.relationRow2872 at r2872

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2872

  unfold Seg52.relationRow2873 at r2873

  unfold Seg52.relationRow2874 at r2874

  unfold Seg52.relationRow2875 at r2875

  unfold Seg52.relationRow2876 at r2876

  unfold Seg52.relationRow2877 at r2877

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX103 rho = seg52In0AccX102 rho + rho 47262 := by
    unfold seg52In0AccX103 seg52In0AccX102
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 102]

    ring

  have hnexty : seg52In0AccY103 rho = seg52In0AccY102 rho + rho 47263 := by
    unfold seg52In0AccY103 seg52In0AccY102
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 102]

    ring

  have ha0 : (rho 47254 + rho 47255) * (seg52In0AccX102 rho + seg52In0AccY102 rho) = rho 47256 := by
    unfold seg52In0AccX102 seg52In0AccY102
    linear_combination r2865
  have ha1 : rho 47255 * seg52In0AccX102 rho = rho 47257 := by
    unfold seg52In0AccX102
    linear_combination r2866
  have ha2 : rho 47254 * seg52In0AccY102 rho = rho 47258 := by
    unfold seg52In0AccY102
    linear_combination r2867
  have ha3 : 3021 * rho 47257 * rho 47258 = rho 47259 := by
    linear_combination r2868
  have ha4 : rho 47260 * (1 + rho 47259) = rho 47257 + rho 47258 := by
    linear_combination r2869
  have ha5 : rho 47261 * (1 - rho 47259) = rho 47256 - rho 47257 - rho 47258 := by
    linear_combination r2870
  have haddx :
      rho 47260 * (1 + 3021 * (rho 47255 * seg52In0AccX102 rho) * (rho 47254 * seg52In0AccY102 rho)) =
        rho 47255 * seg52In0AccX102 rho + rho 47254 * seg52In0AccY102 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47261 * (1 - 3021 * (rho 47255 * seg52In0AccX102 rho) * (rho 47254 * seg52In0AccY102 rho)) =
        (-1) * (rho 47255 * seg52In0AccX102 rho) - rho 47254 * seg52In0AccY102 rho +
          (seg52In0AccY102 rho - seg52In0AccX102 rho * (-1)) * (rho 47254 + rho 47255) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47261 * (1 - rho 47259) = rho 47256 - rho 47257 - rho 47258 := ha5
      _ = (-1) * rho 47257 - rho 47258 + (seg52In0AccY102 rho - seg52In0AccX102 rho * (-1)) *
          (rho 47254 + rho 47255) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX103 rho = seg52In0AccX102 rho - Bool.toZMod bit * (seg52In0AccX102 rho - rho 47260) := by
    have hd : rho 47262 = Bool.toZMod bit * (rho 47260 - seg52In0AccX102 rho) := by
      rw [← hbit]
      unfold seg52In0AccX102
      linear_combination -r2871
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY103 rho = seg52In0AccY102 rho - Bool.toZMod bit * (seg52In0AccY102 rho - rho 47261) := by
    have hd : rho 47263 = Bool.toZMod bit * (rho 47261 - seg52In0AccY102 rho) := by
      rw [← hbit]
      unfold seg52In0AccY102
      linear_combination -r2872
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47254 * rho 47255 = rho 47264 := by linear_combination r2873
  have hd1 : rho 47254 * rho 47254 = rho 47265 := by linear_combination r2874
  have hd2 : rho 47255 * rho 47255 = rho 47266 := by linear_combination r2875
  have hd3 : rho 47267 * (rho 47255 * rho 47255 + rho 47254 * rho 47254 * (-1)) =
      2 * (rho 47254 * rho 47255) := by
    rw [hd0, hd1, hd2]
    linear_combination r2876
  have hd4 : rho 47268 * (2 - (rho 47255 * rho 47255 + rho 47254 * rho 47254 * (-1))) =
      rho 47255 * rho 47255 - rho 47254 * rho 47254 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2877
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX102 rho, seg52In0AccY102 rho⟩ ⟨rho 47254, rho 47255⟩
    ⟨rho 47260, rho 47261⟩ ⟨seg52In0AccX103 rho, seg52In0AccY103 rho⟩ ⟨rho 47267, rho 47268⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows103 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2878 rho ∧ Seg52.relationRow2879 rho ∧ Seg52.relationRow2880 rho ∧ Seg52.relationRow2881 rho ∧ Seg52.relationRow2882 rho ∧ Seg52.relationRow2883 rho ∧ Seg52.relationRow2884 rho ∧ Seg52.relationRow2885 rho ∧ Seg52.relationRow2886 rho ∧ Seg52.relationRow2887 rho ∧ Seg52.relationRow2888 rho ∧ Seg52.relationRow2889 rho ∧ Seg52.relationRow2890 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p35, p36, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart35 at p35

  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2878, r2879⟩

  unfold Seg52.relationPart36 at p36

  rcases p36 with ⟨r2880, r2881, r2882, r2883, r2884, r2885, r2886, r2887, r2888, r2889, r2890, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2878, r2879, r2880, r2881, r2882, r2883, r2884, r2885, r2886, r2887, r2888, r2889, r2890⟩

theorem seg52In0_rung103 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45911 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX103 rho, seg52In0AccY103 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47267, rho 47268⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX103 rho, seg52In0AccY103 rho⟩ ⟨rho 47267, rho 47268⟩
        ⟨seg52In0AccX104 rho, seg52In0AccY104 rho⟩ ⟨rho 47280, rho 47281⟩ := by
  obtain ⟨r2878, r2879, r2880, r2881, r2882, r2883, r2884, r2885, r2886, r2887, r2888, r2889, r2890⟩ := seg52In0_rows103 rho h
  unfold Seg52.relationRow2878 at r2878

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2878

  unfold Seg52.relationRow2879 at r2879

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2879

  unfold Seg52.relationRow2880 at r2880

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2880

  unfold Seg52.relationRow2881 at r2881

  unfold Seg52.relationRow2882 at r2882

  unfold Seg52.relationRow2883 at r2883

  unfold Seg52.relationRow2884 at r2884

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2884

  unfold Seg52.relationRow2885 at r2885

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2885

  unfold Seg52.relationRow2886 at r2886

  unfold Seg52.relationRow2887 at r2887

  unfold Seg52.relationRow2888 at r2888

  unfold Seg52.relationRow2889 at r2889

  unfold Seg52.relationRow2890 at r2890

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX104 rho = seg52In0AccX103 rho + rho 47275 := by
    unfold seg52In0AccX104 seg52In0AccX103
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 103]

    ring

  have hnexty : seg52In0AccY104 rho = seg52In0AccY103 rho + rho 47276 := by
    unfold seg52In0AccY104 seg52In0AccY103
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 103]

    ring

  have ha0 : (rho 47267 + rho 47268) * (seg52In0AccX103 rho + seg52In0AccY103 rho) = rho 47269 := by
    unfold seg52In0AccX103 seg52In0AccY103
    linear_combination r2878
  have ha1 : rho 47268 * seg52In0AccX103 rho = rho 47270 := by
    unfold seg52In0AccX103
    linear_combination r2879
  have ha2 : rho 47267 * seg52In0AccY103 rho = rho 47271 := by
    unfold seg52In0AccY103
    linear_combination r2880
  have ha3 : 3021 * rho 47270 * rho 47271 = rho 47272 := by
    linear_combination r2881
  have ha4 : rho 47273 * (1 + rho 47272) = rho 47270 + rho 47271 := by
    linear_combination r2882
  have ha5 : rho 47274 * (1 - rho 47272) = rho 47269 - rho 47270 - rho 47271 := by
    linear_combination r2883
  have haddx :
      rho 47273 * (1 + 3021 * (rho 47268 * seg52In0AccX103 rho) * (rho 47267 * seg52In0AccY103 rho)) =
        rho 47268 * seg52In0AccX103 rho + rho 47267 * seg52In0AccY103 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47274 * (1 - 3021 * (rho 47268 * seg52In0AccX103 rho) * (rho 47267 * seg52In0AccY103 rho)) =
        (-1) * (rho 47268 * seg52In0AccX103 rho) - rho 47267 * seg52In0AccY103 rho +
          (seg52In0AccY103 rho - seg52In0AccX103 rho * (-1)) * (rho 47267 + rho 47268) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47274 * (1 - rho 47272) = rho 47269 - rho 47270 - rho 47271 := ha5
      _ = (-1) * rho 47270 - rho 47271 + (seg52In0AccY103 rho - seg52In0AccX103 rho * (-1)) *
          (rho 47267 + rho 47268) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX104 rho = seg52In0AccX103 rho - Bool.toZMod bit * (seg52In0AccX103 rho - rho 47273) := by
    have hd : rho 47275 = Bool.toZMod bit * (rho 47273 - seg52In0AccX103 rho) := by
      rw [← hbit]
      unfold seg52In0AccX103
      linear_combination -r2884
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY104 rho = seg52In0AccY103 rho - Bool.toZMod bit * (seg52In0AccY103 rho - rho 47274) := by
    have hd : rho 47276 = Bool.toZMod bit * (rho 47274 - seg52In0AccY103 rho) := by
      rw [← hbit]
      unfold seg52In0AccY103
      linear_combination -r2885
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47267 * rho 47268 = rho 47277 := by linear_combination r2886
  have hd1 : rho 47267 * rho 47267 = rho 47278 := by linear_combination r2887
  have hd2 : rho 47268 * rho 47268 = rho 47279 := by linear_combination r2888
  have hd3 : rho 47280 * (rho 47268 * rho 47268 + rho 47267 * rho 47267 * (-1)) =
      2 * (rho 47267 * rho 47268) := by
    rw [hd0, hd1, hd2]
    linear_combination r2889
  have hd4 : rho 47281 * (2 - (rho 47268 * rho 47268 + rho 47267 * rho 47267 * (-1))) =
      rho 47268 * rho 47268 - rho 47267 * rho 47267 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2890
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX103 rho, seg52In0AccY103 rho⟩ ⟨rho 47267, rho 47268⟩
    ⟨rho 47273, rho 47274⟩ ⟨seg52In0AccX104 rho, seg52In0AccY104 rho⟩ ⟨rho 47280, rho 47281⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows104 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2891 rho ∧ Seg52.relationRow2892 rho ∧ Seg52.relationRow2893 rho ∧ Seg52.relationRow2894 rho ∧ Seg52.relationRow2895 rho ∧ Seg52.relationRow2896 rho ∧ Seg52.relationRow2897 rho ∧ Seg52.relationRow2898 rho ∧ Seg52.relationRow2899 rho ∧ Seg52.relationRow2900 rho ∧ Seg52.relationRow2901 rho ∧ Seg52.relationRow2902 rho ∧ Seg52.relationRow2903 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p36, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart36 at p36

  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, _, r2891, r2892, r2893, r2894, r2895, r2896, r2897, r2898, r2899, r2900, r2901, r2902, r2903, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2891, r2892, r2893, r2894, r2895, r2896, r2897, r2898, r2899, r2900, r2901, r2902, r2903⟩

theorem seg52In0_rung104 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45912 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX104 rho, seg52In0AccY104 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47280, rho 47281⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX104 rho, seg52In0AccY104 rho⟩ ⟨rho 47280, rho 47281⟩
        ⟨seg52In0AccX105 rho, seg52In0AccY105 rho⟩ ⟨rho 47293, rho 47294⟩ := by
  obtain ⟨r2891, r2892, r2893, r2894, r2895, r2896, r2897, r2898, r2899, r2900, r2901, r2902, r2903⟩ := seg52In0_rows104 rho h
  unfold Seg52.relationRow2891 at r2891

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2891

  unfold Seg52.relationRow2892 at r2892

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2892

  unfold Seg52.relationRow2893 at r2893

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2893

  unfold Seg52.relationRow2894 at r2894

  unfold Seg52.relationRow2895 at r2895

  unfold Seg52.relationRow2896 at r2896

  unfold Seg52.relationRow2897 at r2897

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2897

  unfold Seg52.relationRow2898 at r2898

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2898

  unfold Seg52.relationRow2899 at r2899

  unfold Seg52.relationRow2900 at r2900

  unfold Seg52.relationRow2901 at r2901

  unfold Seg52.relationRow2902 at r2902

  unfold Seg52.relationRow2903 at r2903

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX105 rho = seg52In0AccX104 rho + rho 47288 := by
    unfold seg52In0AccX105 seg52In0AccX104
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 104]

    ring

  have hnexty : seg52In0AccY105 rho = seg52In0AccY104 rho + rho 47289 := by
    unfold seg52In0AccY105 seg52In0AccY104
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 104]

    ring

  have ha0 : (rho 47280 + rho 47281) * (seg52In0AccX104 rho + seg52In0AccY104 rho) = rho 47282 := by
    unfold seg52In0AccX104 seg52In0AccY104
    linear_combination r2891
  have ha1 : rho 47281 * seg52In0AccX104 rho = rho 47283 := by
    unfold seg52In0AccX104
    linear_combination r2892
  have ha2 : rho 47280 * seg52In0AccY104 rho = rho 47284 := by
    unfold seg52In0AccY104
    linear_combination r2893
  have ha3 : 3021 * rho 47283 * rho 47284 = rho 47285 := by
    linear_combination r2894
  have ha4 : rho 47286 * (1 + rho 47285) = rho 47283 + rho 47284 := by
    linear_combination r2895
  have ha5 : rho 47287 * (1 - rho 47285) = rho 47282 - rho 47283 - rho 47284 := by
    linear_combination r2896
  have haddx :
      rho 47286 * (1 + 3021 * (rho 47281 * seg52In0AccX104 rho) * (rho 47280 * seg52In0AccY104 rho)) =
        rho 47281 * seg52In0AccX104 rho + rho 47280 * seg52In0AccY104 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47287 * (1 - 3021 * (rho 47281 * seg52In0AccX104 rho) * (rho 47280 * seg52In0AccY104 rho)) =
        (-1) * (rho 47281 * seg52In0AccX104 rho) - rho 47280 * seg52In0AccY104 rho +
          (seg52In0AccY104 rho - seg52In0AccX104 rho * (-1)) * (rho 47280 + rho 47281) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47287 * (1 - rho 47285) = rho 47282 - rho 47283 - rho 47284 := ha5
      _ = (-1) * rho 47283 - rho 47284 + (seg52In0AccY104 rho - seg52In0AccX104 rho * (-1)) *
          (rho 47280 + rho 47281) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX105 rho = seg52In0AccX104 rho - Bool.toZMod bit * (seg52In0AccX104 rho - rho 47286) := by
    have hd : rho 47288 = Bool.toZMod bit * (rho 47286 - seg52In0AccX104 rho) := by
      rw [← hbit]
      unfold seg52In0AccX104
      linear_combination -r2897
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY105 rho = seg52In0AccY104 rho - Bool.toZMod bit * (seg52In0AccY104 rho - rho 47287) := by
    have hd : rho 47289 = Bool.toZMod bit * (rho 47287 - seg52In0AccY104 rho) := by
      rw [← hbit]
      unfold seg52In0AccY104
      linear_combination -r2898
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47280 * rho 47281 = rho 47290 := by linear_combination r2899
  have hd1 : rho 47280 * rho 47280 = rho 47291 := by linear_combination r2900
  have hd2 : rho 47281 * rho 47281 = rho 47292 := by linear_combination r2901
  have hd3 : rho 47293 * (rho 47281 * rho 47281 + rho 47280 * rho 47280 * (-1)) =
      2 * (rho 47280 * rho 47281) := by
    rw [hd0, hd1, hd2]
    linear_combination r2902
  have hd4 : rho 47294 * (2 - (rho 47281 * rho 47281 + rho 47280 * rho 47280 * (-1))) =
      rho 47281 * rho 47281 - rho 47280 * rho 47280 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2903
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX104 rho, seg52In0AccY104 rho⟩ ⟨rho 47280, rho 47281⟩
    ⟨rho 47286, rho 47287⟩ ⟨seg52In0AccX105 rho, seg52In0AccY105 rho⟩ ⟨rho 47293, rho 47294⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows105 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2904 rho ∧ Seg52.relationRow2905 rho ∧ Seg52.relationRow2906 rho ∧ Seg52.relationRow2907 rho ∧ Seg52.relationRow2908 rho ∧ Seg52.relationRow2909 rho ∧ Seg52.relationRow2910 rho ∧ Seg52.relationRow2911 rho ∧ Seg52.relationRow2912 rho ∧ Seg52.relationRow2913 rho ∧ Seg52.relationRow2914 rho ∧ Seg52.relationRow2915 rho ∧ Seg52.relationRow2916 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p36, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart36 at p36

  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2904, r2905, r2906, r2907, r2908, r2909, r2910, r2911, r2912, r2913, r2914, r2915, r2916, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2904, r2905, r2906, r2907, r2908, r2909, r2910, r2911, r2912, r2913, r2914, r2915, r2916⟩

theorem seg52In0_rung105 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45913 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX105 rho, seg52In0AccY105 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47293, rho 47294⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX105 rho, seg52In0AccY105 rho⟩ ⟨rho 47293, rho 47294⟩
        ⟨seg52In0AccX106 rho, seg52In0AccY106 rho⟩ ⟨rho 47306, rho 47307⟩ := by
  obtain ⟨r2904, r2905, r2906, r2907, r2908, r2909, r2910, r2911, r2912, r2913, r2914, r2915, r2916⟩ := seg52In0_rows105 rho h
  unfold Seg52.relationRow2904 at r2904

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2904

  unfold Seg52.relationRow2905 at r2905

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2905

  unfold Seg52.relationRow2906 at r2906

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2906

  unfold Seg52.relationRow2907 at r2907

  unfold Seg52.relationRow2908 at r2908

  unfold Seg52.relationRow2909 at r2909

  unfold Seg52.relationRow2910 at r2910

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2910

  unfold Seg52.relationRow2911 at r2911

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2911

  unfold Seg52.relationRow2912 at r2912

  unfold Seg52.relationRow2913 at r2913

  unfold Seg52.relationRow2914 at r2914

  unfold Seg52.relationRow2915 at r2915

  unfold Seg52.relationRow2916 at r2916

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX106 rho = seg52In0AccX105 rho + rho 47301 := by
    unfold seg52In0AccX106 seg52In0AccX105
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 105]

    ring

  have hnexty : seg52In0AccY106 rho = seg52In0AccY105 rho + rho 47302 := by
    unfold seg52In0AccY106 seg52In0AccY105
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 105]

    ring

  have ha0 : (rho 47293 + rho 47294) * (seg52In0AccX105 rho + seg52In0AccY105 rho) = rho 47295 := by
    unfold seg52In0AccX105 seg52In0AccY105
    linear_combination r2904
  have ha1 : rho 47294 * seg52In0AccX105 rho = rho 47296 := by
    unfold seg52In0AccX105
    linear_combination r2905
  have ha2 : rho 47293 * seg52In0AccY105 rho = rho 47297 := by
    unfold seg52In0AccY105
    linear_combination r2906
  have ha3 : 3021 * rho 47296 * rho 47297 = rho 47298 := by
    linear_combination r2907
  have ha4 : rho 47299 * (1 + rho 47298) = rho 47296 + rho 47297 := by
    linear_combination r2908
  have ha5 : rho 47300 * (1 - rho 47298) = rho 47295 - rho 47296 - rho 47297 := by
    linear_combination r2909
  have haddx :
      rho 47299 * (1 + 3021 * (rho 47294 * seg52In0AccX105 rho) * (rho 47293 * seg52In0AccY105 rho)) =
        rho 47294 * seg52In0AccX105 rho + rho 47293 * seg52In0AccY105 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47300 * (1 - 3021 * (rho 47294 * seg52In0AccX105 rho) * (rho 47293 * seg52In0AccY105 rho)) =
        (-1) * (rho 47294 * seg52In0AccX105 rho) - rho 47293 * seg52In0AccY105 rho +
          (seg52In0AccY105 rho - seg52In0AccX105 rho * (-1)) * (rho 47293 + rho 47294) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47300 * (1 - rho 47298) = rho 47295 - rho 47296 - rho 47297 := ha5
      _ = (-1) * rho 47296 - rho 47297 + (seg52In0AccY105 rho - seg52In0AccX105 rho * (-1)) *
          (rho 47293 + rho 47294) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX106 rho = seg52In0AccX105 rho - Bool.toZMod bit * (seg52In0AccX105 rho - rho 47299) := by
    have hd : rho 47301 = Bool.toZMod bit * (rho 47299 - seg52In0AccX105 rho) := by
      rw [← hbit]
      unfold seg52In0AccX105
      linear_combination -r2910
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY106 rho = seg52In0AccY105 rho - Bool.toZMod bit * (seg52In0AccY105 rho - rho 47300) := by
    have hd : rho 47302 = Bool.toZMod bit * (rho 47300 - seg52In0AccY105 rho) := by
      rw [← hbit]
      unfold seg52In0AccY105
      linear_combination -r2911
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47293 * rho 47294 = rho 47303 := by linear_combination r2912
  have hd1 : rho 47293 * rho 47293 = rho 47304 := by linear_combination r2913
  have hd2 : rho 47294 * rho 47294 = rho 47305 := by linear_combination r2914
  have hd3 : rho 47306 * (rho 47294 * rho 47294 + rho 47293 * rho 47293 * (-1)) =
      2 * (rho 47293 * rho 47294) := by
    rw [hd0, hd1, hd2]
    linear_combination r2915
  have hd4 : rho 47307 * (2 - (rho 47294 * rho 47294 + rho 47293 * rho 47293 * (-1))) =
      rho 47294 * rho 47294 - rho 47293 * rho 47293 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2916
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX105 rho, seg52In0AccY105 rho⟩ ⟨rho 47293, rho 47294⟩
    ⟨rho 47299, rho 47300⟩ ⟨seg52In0AccX106 rho, seg52In0AccY106 rho⟩ ⟨rho 47306, rho 47307⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows106 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2917 rho ∧ Seg52.relationRow2918 rho ∧ Seg52.relationRow2919 rho ∧ Seg52.relationRow2920 rho ∧ Seg52.relationRow2921 rho ∧ Seg52.relationRow2922 rho ∧ Seg52.relationRow2923 rho ∧ Seg52.relationRow2924 rho ∧ Seg52.relationRow2925 rho ∧ Seg52.relationRow2926 rho ∧ Seg52.relationRow2927 rho ∧ Seg52.relationRow2928 rho ∧ Seg52.relationRow2929 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p36, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart36 at p36

  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2917, r2918, r2919, r2920, r2921, r2922, r2923, r2924, r2925, r2926, r2927, r2928, r2929, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2917, r2918, r2919, r2920, r2921, r2922, r2923, r2924, r2925, r2926, r2927, r2928, r2929⟩

theorem seg52In0_rung106 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45914 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX106 rho, seg52In0AccY106 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47306, rho 47307⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX106 rho, seg52In0AccY106 rho⟩ ⟨rho 47306, rho 47307⟩
        ⟨seg52In0AccX107 rho, seg52In0AccY107 rho⟩ ⟨rho 47319, rho 47320⟩ := by
  obtain ⟨r2917, r2918, r2919, r2920, r2921, r2922, r2923, r2924, r2925, r2926, r2927, r2928, r2929⟩ := seg52In0_rows106 rho h
  unfold Seg52.relationRow2917 at r2917

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2917

  unfold Seg52.relationRow2918 at r2918

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2918

  unfold Seg52.relationRow2919 at r2919

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2919

  unfold Seg52.relationRow2920 at r2920

  unfold Seg52.relationRow2921 at r2921

  unfold Seg52.relationRow2922 at r2922

  unfold Seg52.relationRow2923 at r2923

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2923

  unfold Seg52.relationRow2924 at r2924

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2924

  unfold Seg52.relationRow2925 at r2925

  unfold Seg52.relationRow2926 at r2926

  unfold Seg52.relationRow2927 at r2927

  unfold Seg52.relationRow2928 at r2928

  unfold Seg52.relationRow2929 at r2929

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX107 rho = seg52In0AccX106 rho + rho 47314 := by
    unfold seg52In0AccX107 seg52In0AccX106
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 106]

    ring

  have hnexty : seg52In0AccY107 rho = seg52In0AccY106 rho + rho 47315 := by
    unfold seg52In0AccY107 seg52In0AccY106
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 106]

    ring

  have ha0 : (rho 47306 + rho 47307) * (seg52In0AccX106 rho + seg52In0AccY106 rho) = rho 47308 := by
    unfold seg52In0AccX106 seg52In0AccY106
    linear_combination r2917
  have ha1 : rho 47307 * seg52In0AccX106 rho = rho 47309 := by
    unfold seg52In0AccX106
    linear_combination r2918
  have ha2 : rho 47306 * seg52In0AccY106 rho = rho 47310 := by
    unfold seg52In0AccY106
    linear_combination r2919
  have ha3 : 3021 * rho 47309 * rho 47310 = rho 47311 := by
    linear_combination r2920
  have ha4 : rho 47312 * (1 + rho 47311) = rho 47309 + rho 47310 := by
    linear_combination r2921
  have ha5 : rho 47313 * (1 - rho 47311) = rho 47308 - rho 47309 - rho 47310 := by
    linear_combination r2922
  have haddx :
      rho 47312 * (1 + 3021 * (rho 47307 * seg52In0AccX106 rho) * (rho 47306 * seg52In0AccY106 rho)) =
        rho 47307 * seg52In0AccX106 rho + rho 47306 * seg52In0AccY106 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47313 * (1 - 3021 * (rho 47307 * seg52In0AccX106 rho) * (rho 47306 * seg52In0AccY106 rho)) =
        (-1) * (rho 47307 * seg52In0AccX106 rho) - rho 47306 * seg52In0AccY106 rho +
          (seg52In0AccY106 rho - seg52In0AccX106 rho * (-1)) * (rho 47306 + rho 47307) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47313 * (1 - rho 47311) = rho 47308 - rho 47309 - rho 47310 := ha5
      _ = (-1) * rho 47309 - rho 47310 + (seg52In0AccY106 rho - seg52In0AccX106 rho * (-1)) *
          (rho 47306 + rho 47307) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX107 rho = seg52In0AccX106 rho - Bool.toZMod bit * (seg52In0AccX106 rho - rho 47312) := by
    have hd : rho 47314 = Bool.toZMod bit * (rho 47312 - seg52In0AccX106 rho) := by
      rw [← hbit]
      unfold seg52In0AccX106
      linear_combination -r2923
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY107 rho = seg52In0AccY106 rho - Bool.toZMod bit * (seg52In0AccY106 rho - rho 47313) := by
    have hd : rho 47315 = Bool.toZMod bit * (rho 47313 - seg52In0AccY106 rho) := by
      rw [← hbit]
      unfold seg52In0AccY106
      linear_combination -r2924
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47306 * rho 47307 = rho 47316 := by linear_combination r2925
  have hd1 : rho 47306 * rho 47306 = rho 47317 := by linear_combination r2926
  have hd2 : rho 47307 * rho 47307 = rho 47318 := by linear_combination r2927
  have hd3 : rho 47319 * (rho 47307 * rho 47307 + rho 47306 * rho 47306 * (-1)) =
      2 * (rho 47306 * rho 47307) := by
    rw [hd0, hd1, hd2]
    linear_combination r2928
  have hd4 : rho 47320 * (2 - (rho 47307 * rho 47307 + rho 47306 * rho 47306 * (-1))) =
      rho 47307 * rho 47307 - rho 47306 * rho 47306 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2929
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX106 rho, seg52In0AccY106 rho⟩ ⟨rho 47306, rho 47307⟩
    ⟨rho 47312, rho 47313⟩ ⟨seg52In0AccX107 rho, seg52In0AccY107 rho⟩ ⟨rho 47319, rho 47320⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows107 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2930 rho ∧ Seg52.relationRow2931 rho ∧ Seg52.relationRow2932 rho ∧ Seg52.relationRow2933 rho ∧ Seg52.relationRow2934 rho ∧ Seg52.relationRow2935 rho ∧ Seg52.relationRow2936 rho ∧ Seg52.relationRow2937 rho ∧ Seg52.relationRow2938 rho ∧ Seg52.relationRow2939 rho ∧ Seg52.relationRow2940 rho ∧ Seg52.relationRow2941 rho ∧ Seg52.relationRow2942 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p36, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart36 at p36

  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2930, r2931, r2932, r2933, r2934, r2935, r2936, r2937, r2938, r2939, r2940, r2941, r2942, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2930, r2931, r2932, r2933, r2934, r2935, r2936, r2937, r2938, r2939, r2940, r2941, r2942⟩

theorem seg52In0_rung107 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45915 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX107 rho, seg52In0AccY107 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47319, rho 47320⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX107 rho, seg52In0AccY107 rho⟩ ⟨rho 47319, rho 47320⟩
        ⟨seg52In0AccX108 rho, seg52In0AccY108 rho⟩ ⟨rho 47332, rho 47333⟩ := by
  obtain ⟨r2930, r2931, r2932, r2933, r2934, r2935, r2936, r2937, r2938, r2939, r2940, r2941, r2942⟩ := seg52In0_rows107 rho h
  unfold Seg52.relationRow2930 at r2930

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2930

  unfold Seg52.relationRow2931 at r2931

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2931

  unfold Seg52.relationRow2932 at r2932

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2932

  unfold Seg52.relationRow2933 at r2933

  unfold Seg52.relationRow2934 at r2934

  unfold Seg52.relationRow2935 at r2935

  unfold Seg52.relationRow2936 at r2936

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2936

  unfold Seg52.relationRow2937 at r2937

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2937

  unfold Seg52.relationRow2938 at r2938

  unfold Seg52.relationRow2939 at r2939

  unfold Seg52.relationRow2940 at r2940

  unfold Seg52.relationRow2941 at r2941

  unfold Seg52.relationRow2942 at r2942

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX108 rho = seg52In0AccX107 rho + rho 47327 := by
    unfold seg52In0AccX108 seg52In0AccX107
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 107]

    ring

  have hnexty : seg52In0AccY108 rho = seg52In0AccY107 rho + rho 47328 := by
    unfold seg52In0AccY108 seg52In0AccY107
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 107]

    ring

  have ha0 : (rho 47319 + rho 47320) * (seg52In0AccX107 rho + seg52In0AccY107 rho) = rho 47321 := by
    unfold seg52In0AccX107 seg52In0AccY107
    linear_combination r2930
  have ha1 : rho 47320 * seg52In0AccX107 rho = rho 47322 := by
    unfold seg52In0AccX107
    linear_combination r2931
  have ha2 : rho 47319 * seg52In0AccY107 rho = rho 47323 := by
    unfold seg52In0AccY107
    linear_combination r2932
  have ha3 : 3021 * rho 47322 * rho 47323 = rho 47324 := by
    linear_combination r2933
  have ha4 : rho 47325 * (1 + rho 47324) = rho 47322 + rho 47323 := by
    linear_combination r2934
  have ha5 : rho 47326 * (1 - rho 47324) = rho 47321 - rho 47322 - rho 47323 := by
    linear_combination r2935
  have haddx :
      rho 47325 * (1 + 3021 * (rho 47320 * seg52In0AccX107 rho) * (rho 47319 * seg52In0AccY107 rho)) =
        rho 47320 * seg52In0AccX107 rho + rho 47319 * seg52In0AccY107 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47326 * (1 - 3021 * (rho 47320 * seg52In0AccX107 rho) * (rho 47319 * seg52In0AccY107 rho)) =
        (-1) * (rho 47320 * seg52In0AccX107 rho) - rho 47319 * seg52In0AccY107 rho +
          (seg52In0AccY107 rho - seg52In0AccX107 rho * (-1)) * (rho 47319 + rho 47320) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47326 * (1 - rho 47324) = rho 47321 - rho 47322 - rho 47323 := ha5
      _ = (-1) * rho 47322 - rho 47323 + (seg52In0AccY107 rho - seg52In0AccX107 rho * (-1)) *
          (rho 47319 + rho 47320) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX108 rho = seg52In0AccX107 rho - Bool.toZMod bit * (seg52In0AccX107 rho - rho 47325) := by
    have hd : rho 47327 = Bool.toZMod bit * (rho 47325 - seg52In0AccX107 rho) := by
      rw [← hbit]
      unfold seg52In0AccX107
      linear_combination -r2936
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY108 rho = seg52In0AccY107 rho - Bool.toZMod bit * (seg52In0AccY107 rho - rho 47326) := by
    have hd : rho 47328 = Bool.toZMod bit * (rho 47326 - seg52In0AccY107 rho) := by
      rw [← hbit]
      unfold seg52In0AccY107
      linear_combination -r2937
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47319 * rho 47320 = rho 47329 := by linear_combination r2938
  have hd1 : rho 47319 * rho 47319 = rho 47330 := by linear_combination r2939
  have hd2 : rho 47320 * rho 47320 = rho 47331 := by linear_combination r2940
  have hd3 : rho 47332 * (rho 47320 * rho 47320 + rho 47319 * rho 47319 * (-1)) =
      2 * (rho 47319 * rho 47320) := by
    rw [hd0, hd1, hd2]
    linear_combination r2941
  have hd4 : rho 47333 * (2 - (rho 47320 * rho 47320 + rho 47319 * rho 47319 * (-1))) =
      rho 47320 * rho 47320 - rho 47319 * rho 47319 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2942
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX107 rho, seg52In0AccY107 rho⟩ ⟨rho 47319, rho 47320⟩
    ⟨rho 47325, rho 47326⟩ ⟨seg52In0AccX108 rho, seg52In0AccY108 rho⟩ ⟨rho 47332, rho 47333⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows108 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2943 rho ∧ Seg52.relationRow2944 rho ∧ Seg52.relationRow2945 rho ∧ Seg52.relationRow2946 rho ∧ Seg52.relationRow2947 rho ∧ Seg52.relationRow2948 rho ∧ Seg52.relationRow2949 rho ∧ Seg52.relationRow2950 rho ∧ Seg52.relationRow2951 rho ∧ Seg52.relationRow2952 rho ∧ Seg52.relationRow2953 rho ∧ Seg52.relationRow2954 rho ∧ Seg52.relationRow2955 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p36, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart36 at p36

  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2943, r2944, r2945, r2946, r2947, r2948, r2949, r2950, r2951, r2952, r2953, r2954, r2955, _, _, _, _⟩

  exact ⟨r2943, r2944, r2945, r2946, r2947, r2948, r2949, r2950, r2951, r2952, r2953, r2954, r2955⟩

theorem seg52In0_rung108 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45916 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX108 rho, seg52In0AccY108 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47332, rho 47333⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX108 rho, seg52In0AccY108 rho⟩ ⟨rho 47332, rho 47333⟩
        ⟨seg52In0AccX109 rho, seg52In0AccY109 rho⟩ ⟨rho 47345, rho 47346⟩ := by
  obtain ⟨r2943, r2944, r2945, r2946, r2947, r2948, r2949, r2950, r2951, r2952, r2953, r2954, r2955⟩ := seg52In0_rows108 rho h
  unfold Seg52.relationRow2943 at r2943

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2943

  unfold Seg52.relationRow2944 at r2944

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2944

  unfold Seg52.relationRow2945 at r2945

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2945

  unfold Seg52.relationRow2946 at r2946

  unfold Seg52.relationRow2947 at r2947

  unfold Seg52.relationRow2948 at r2948

  unfold Seg52.relationRow2949 at r2949

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2949

  unfold Seg52.relationRow2950 at r2950

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2950

  unfold Seg52.relationRow2951 at r2951

  unfold Seg52.relationRow2952 at r2952

  unfold Seg52.relationRow2953 at r2953

  unfold Seg52.relationRow2954 at r2954

  unfold Seg52.relationRow2955 at r2955

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX109 rho = seg52In0AccX108 rho + rho 47340 := by
    unfold seg52In0AccX109 seg52In0AccX108
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 108]

    ring

  have hnexty : seg52In0AccY109 rho = seg52In0AccY108 rho + rho 47341 := by
    unfold seg52In0AccY109 seg52In0AccY108
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 108]

    ring

  have ha0 : (rho 47332 + rho 47333) * (seg52In0AccX108 rho + seg52In0AccY108 rho) = rho 47334 := by
    unfold seg52In0AccX108 seg52In0AccY108
    linear_combination r2943
  have ha1 : rho 47333 * seg52In0AccX108 rho = rho 47335 := by
    unfold seg52In0AccX108
    linear_combination r2944
  have ha2 : rho 47332 * seg52In0AccY108 rho = rho 47336 := by
    unfold seg52In0AccY108
    linear_combination r2945
  have ha3 : 3021 * rho 47335 * rho 47336 = rho 47337 := by
    linear_combination r2946
  have ha4 : rho 47338 * (1 + rho 47337) = rho 47335 + rho 47336 := by
    linear_combination r2947
  have ha5 : rho 47339 * (1 - rho 47337) = rho 47334 - rho 47335 - rho 47336 := by
    linear_combination r2948
  have haddx :
      rho 47338 * (1 + 3021 * (rho 47333 * seg52In0AccX108 rho) * (rho 47332 * seg52In0AccY108 rho)) =
        rho 47333 * seg52In0AccX108 rho + rho 47332 * seg52In0AccY108 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47339 * (1 - 3021 * (rho 47333 * seg52In0AccX108 rho) * (rho 47332 * seg52In0AccY108 rho)) =
        (-1) * (rho 47333 * seg52In0AccX108 rho) - rho 47332 * seg52In0AccY108 rho +
          (seg52In0AccY108 rho - seg52In0AccX108 rho * (-1)) * (rho 47332 + rho 47333) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47339 * (1 - rho 47337) = rho 47334 - rho 47335 - rho 47336 := ha5
      _ = (-1) * rho 47335 - rho 47336 + (seg52In0AccY108 rho - seg52In0AccX108 rho * (-1)) *
          (rho 47332 + rho 47333) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX109 rho = seg52In0AccX108 rho - Bool.toZMod bit * (seg52In0AccX108 rho - rho 47338) := by
    have hd : rho 47340 = Bool.toZMod bit * (rho 47338 - seg52In0AccX108 rho) := by
      rw [← hbit]
      unfold seg52In0AccX108
      linear_combination -r2949
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY109 rho = seg52In0AccY108 rho - Bool.toZMod bit * (seg52In0AccY108 rho - rho 47339) := by
    have hd : rho 47341 = Bool.toZMod bit * (rho 47339 - seg52In0AccY108 rho) := by
      rw [← hbit]
      unfold seg52In0AccY108
      linear_combination -r2950
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47332 * rho 47333 = rho 47342 := by linear_combination r2951
  have hd1 : rho 47332 * rho 47332 = rho 47343 := by linear_combination r2952
  have hd2 : rho 47333 * rho 47333 = rho 47344 := by linear_combination r2953
  have hd3 : rho 47345 * (rho 47333 * rho 47333 + rho 47332 * rho 47332 * (-1)) =
      2 * (rho 47332 * rho 47333) := by
    rw [hd0, hd1, hd2]
    linear_combination r2954
  have hd4 : rho 47346 * (2 - (rho 47333 * rho 47333 + rho 47332 * rho 47332 * (-1))) =
      rho 47333 * rho 47333 - rho 47332 * rho 47332 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2955
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX108 rho, seg52In0AccY108 rho⟩ ⟨rho 47332, rho 47333⟩
    ⟨rho 47338, rho 47339⟩ ⟨seg52In0AccX109 rho, seg52In0AccY109 rho⟩ ⟨rho 47345, rho 47346⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows109 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2956 rho ∧ Seg52.relationRow2957 rho ∧ Seg52.relationRow2958 rho ∧ Seg52.relationRow2959 rho ∧ Seg52.relationRow2960 rho ∧ Seg52.relationRow2961 rho ∧ Seg52.relationRow2962 rho ∧ Seg52.relationRow2963 rho ∧ Seg52.relationRow2964 rho ∧ Seg52.relationRow2965 rho ∧ Seg52.relationRow2966 rho ∧ Seg52.relationRow2967 rho ∧ Seg52.relationRow2968 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p36, p37, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart36 at p36

  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2956, r2957, r2958, r2959⟩

  unfold Seg52.relationPart37 at p37

  rcases p37 with ⟨r2960, r2961, r2962, r2963, r2964, r2965, r2966, r2967, r2968, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2956, r2957, r2958, r2959, r2960, r2961, r2962, r2963, r2964, r2965, r2966, r2967, r2968⟩

theorem seg52In0_rung109 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45917 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX109 rho, seg52In0AccY109 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47345, rho 47346⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX109 rho, seg52In0AccY109 rho⟩ ⟨rho 47345, rho 47346⟩
        ⟨seg52In0AccX110 rho, seg52In0AccY110 rho⟩ ⟨rho 47358, rho 47359⟩ := by
  obtain ⟨r2956, r2957, r2958, r2959, r2960, r2961, r2962, r2963, r2964, r2965, r2966, r2967, r2968⟩ := seg52In0_rows109 rho h
  unfold Seg52.relationRow2956 at r2956

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2956

  unfold Seg52.relationRow2957 at r2957

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2957

  unfold Seg52.relationRow2958 at r2958

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2958

  unfold Seg52.relationRow2959 at r2959

  unfold Seg52.relationRow2960 at r2960

  unfold Seg52.relationRow2961 at r2961

  unfold Seg52.relationRow2962 at r2962

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2962

  unfold Seg52.relationRow2963 at r2963

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2963

  unfold Seg52.relationRow2964 at r2964

  unfold Seg52.relationRow2965 at r2965

  unfold Seg52.relationRow2966 at r2966

  unfold Seg52.relationRow2967 at r2967

  unfold Seg52.relationRow2968 at r2968

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX110 rho = seg52In0AccX109 rho + rho 47353 := by
    unfold seg52In0AccX110 seg52In0AccX109
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 109]

    ring

  have hnexty : seg52In0AccY110 rho = seg52In0AccY109 rho + rho 47354 := by
    unfold seg52In0AccY110 seg52In0AccY109
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 109]

    ring

  have ha0 : (rho 47345 + rho 47346) * (seg52In0AccX109 rho + seg52In0AccY109 rho) = rho 47347 := by
    unfold seg52In0AccX109 seg52In0AccY109
    linear_combination r2956
  have ha1 : rho 47346 * seg52In0AccX109 rho = rho 47348 := by
    unfold seg52In0AccX109
    linear_combination r2957
  have ha2 : rho 47345 * seg52In0AccY109 rho = rho 47349 := by
    unfold seg52In0AccY109
    linear_combination r2958
  have ha3 : 3021 * rho 47348 * rho 47349 = rho 47350 := by
    linear_combination r2959
  have ha4 : rho 47351 * (1 + rho 47350) = rho 47348 + rho 47349 := by
    linear_combination r2960
  have ha5 : rho 47352 * (1 - rho 47350) = rho 47347 - rho 47348 - rho 47349 := by
    linear_combination r2961
  have haddx :
      rho 47351 * (1 + 3021 * (rho 47346 * seg52In0AccX109 rho) * (rho 47345 * seg52In0AccY109 rho)) =
        rho 47346 * seg52In0AccX109 rho + rho 47345 * seg52In0AccY109 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47352 * (1 - 3021 * (rho 47346 * seg52In0AccX109 rho) * (rho 47345 * seg52In0AccY109 rho)) =
        (-1) * (rho 47346 * seg52In0AccX109 rho) - rho 47345 * seg52In0AccY109 rho +
          (seg52In0AccY109 rho - seg52In0AccX109 rho * (-1)) * (rho 47345 + rho 47346) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47352 * (1 - rho 47350) = rho 47347 - rho 47348 - rho 47349 := ha5
      _ = (-1) * rho 47348 - rho 47349 + (seg52In0AccY109 rho - seg52In0AccX109 rho * (-1)) *
          (rho 47345 + rho 47346) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX110 rho = seg52In0AccX109 rho - Bool.toZMod bit * (seg52In0AccX109 rho - rho 47351) := by
    have hd : rho 47353 = Bool.toZMod bit * (rho 47351 - seg52In0AccX109 rho) := by
      rw [← hbit]
      unfold seg52In0AccX109
      linear_combination -r2962
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY110 rho = seg52In0AccY109 rho - Bool.toZMod bit * (seg52In0AccY109 rho - rho 47352) := by
    have hd : rho 47354 = Bool.toZMod bit * (rho 47352 - seg52In0AccY109 rho) := by
      rw [← hbit]
      unfold seg52In0AccY109
      linear_combination -r2963
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47345 * rho 47346 = rho 47355 := by linear_combination r2964
  have hd1 : rho 47345 * rho 47345 = rho 47356 := by linear_combination r2965
  have hd2 : rho 47346 * rho 47346 = rho 47357 := by linear_combination r2966
  have hd3 : rho 47358 * (rho 47346 * rho 47346 + rho 47345 * rho 47345 * (-1)) =
      2 * (rho 47345 * rho 47346) := by
    rw [hd0, hd1, hd2]
    linear_combination r2967
  have hd4 : rho 47359 * (2 - (rho 47346 * rho 47346 + rho 47345 * rho 47345 * (-1))) =
      rho 47346 * rho 47346 - rho 47345 * rho 47345 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2968
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX109 rho, seg52In0AccY109 rho⟩ ⟨rho 47345, rho 47346⟩
    ⟨rho 47351, rho 47352⟩ ⟨seg52In0AccX110 rho, seg52In0AccY110 rho⟩ ⟨rho 47358, rho 47359⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_hstep_c9 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (45808 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 99 ≤ i → i < 110 →
      EdwardsBridge.onCurve (seg52In0AccState rho i) →
      EdwardsBridge.onCurve (seg52In0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In0AccState rho i) (seg52In0CurState rho i)
        (seg52In0AccState rho (i + 1)) (seg52In0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In0_rung99 rho h bits[99]! (hbitAt 99 (by omega)) hacc hcur
  · exact seg52In0_rung100 rho h bits[100]! (hbitAt 100 (by omega)) hacc hcur
  · exact seg52In0_rung101 rho h bits[101]! (hbitAt 101 (by omega)) hacc hcur
  · exact seg52In0_rung102 rho h bits[102]! (hbitAt 102 (by omega)) hacc hcur
  · exact seg52In0_rung103 rho h bits[103]! (hbitAt 103 (by omega)) hacc hcur
  · exact seg52In0_rung104 rho h bits[104]! (hbitAt 104 (by omega)) hacc hcur
  · exact seg52In0_rung105 rho h bits[105]! (hbitAt 105 (by omega)) hacc hcur
  · exact seg52In0_rung106 rho h bits[106]! (hbitAt 106 (by omega)) hacc hcur
  · exact seg52In0_rung107 rho h bits[107]! (hbitAt 107 (by omega)) hacc hcur
  · exact seg52In0_rung108 rho h bits[108]! (hbitAt 108 (by omega)) hacc hcur
  · exact seg52In0_rung109 rho h bits[109]! (hbitAt 109 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
