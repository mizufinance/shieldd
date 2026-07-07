import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In1_rows11 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2829 rho ∧ Seg52.relationRow2830 rho ∧ Seg52.relationRow2831 rho ∧ Seg52.relationRow2832 rho ∧ Seg52.relationRow2833 rho ∧ Seg52.relationRow2834 rho ∧ Seg52.relationRow2835 rho ∧ Seg52.relationRow2836 rho ∧ Seg52.relationRow2837 rho ∧ Seg52.relationRow2838 rho ∧ Seg52.relationRow2839 rho ∧ Seg52.relationRow2840 rho ∧ Seg52.relationRow2841 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart35 at p35

  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2829, r2830, r2831, r2832, r2833, r2834, r2835, r2836, r2837, r2838, r2839, r2840, r2841, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2829, r2830, r2831, r2832, r2833, r2834, r2835, r2836, r2837, r2838, r2839, r2840, r2841⟩

theorem seg52In1_rung11 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46965 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX11 rho, seg52In1AccY11 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47217, rho 47218⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX11 rho, seg52In1AccY11 rho⟩ ⟨rho 47217, rho 47218⟩
        ⟨seg52In1AccX12 rho, seg52In1AccY12 rho⟩ ⟨rho 47230, rho 47231⟩ := by
  obtain ⟨r2829, r2830, r2831, r2832, r2833, r2834, r2835, r2836, r2837, r2838, r2839, r2840, r2841⟩ := seg52In1_rows11 rho h
  unfold Seg52.relationRow2829 at r2829

  unfold Seg52.relationRow2830 at r2830

  unfold Seg52.relationRow2831 at r2831

  unfold Seg52.relationRow2832 at r2832

  unfold Seg52.relationRow2833 at r2833

  unfold Seg52.relationRow2834 at r2834

  unfold Seg52.relationRow2835 at r2835

  unfold Seg52.relationRow2836 at r2836

  unfold Seg52.relationRow2837 at r2837

  unfold Seg52.relationRow2838 at r2838

  unfold Seg52.relationRow2839 at r2839

  unfold Seg52.relationRow2840 at r2840

  unfold Seg52.relationRow2841 at r2841

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX12 rho = seg52In1AccX11 rho + rho 47225 := by
    unfold seg52In1AccX12 seg52In1AccX11
    ring

  have hnexty : seg52In1AccY12 rho = seg52In1AccY11 rho + rho 47226 := by
    unfold seg52In1AccY12 seg52In1AccY11
    ring

  have ha0 : (rho 47217 + rho 47218) * (seg52In1AccX11 rho + seg52In1AccY11 rho) = rho 47219 := by
    unfold seg52In1AccX11 seg52In1AccY11
    linear_combination r2829
  have ha1 : rho 47218 * seg52In1AccX11 rho = rho 47220 := by
    unfold seg52In1AccX11
    linear_combination r2830
  have ha2 : rho 47217 * seg52In1AccY11 rho = rho 47221 := by
    unfold seg52In1AccY11
    linear_combination r2831
  have ha3 : 3021 * rho 47220 * rho 47221 = rho 47222 := by
    linear_combination r2832
  have ha4 : rho 47223 * (1 + rho 47222) = rho 47220 + rho 47221 := by
    linear_combination r2833
  have ha5 : rho 47224 * (1 - rho 47222) = rho 47219 - rho 47220 - rho 47221 := by
    linear_combination r2834
  have haddx :
      rho 47223 * (1 + 3021 * (rho 47218 * seg52In1AccX11 rho) * (rho 47217 * seg52In1AccY11 rho)) =
        rho 47218 * seg52In1AccX11 rho + rho 47217 * seg52In1AccY11 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47224 * (1 - 3021 * (rho 47218 * seg52In1AccX11 rho) * (rho 47217 * seg52In1AccY11 rho)) =
        (-1) * (rho 47218 * seg52In1AccX11 rho) - rho 47217 * seg52In1AccY11 rho +
          (seg52In1AccY11 rho - seg52In1AccX11 rho * (-1)) * (rho 47217 + rho 47218) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47224 * (1 - rho 47222) = rho 47219 - rho 47220 - rho 47221 := ha5
      _ = (-1) * rho 47220 - rho 47221 + (seg52In1AccY11 rho - seg52In1AccX11 rho * (-1)) *
          (rho 47217 + rho 47218) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX12 rho = seg52In1AccX11 rho - Bool.toZMod bit * (seg52In1AccX11 rho - rho 47223) := by
    have hd : rho 47225 = Bool.toZMod bit * (rho 47223 - seg52In1AccX11 rho) := by
      rw [← hbit]
      unfold seg52In1AccX11
      linear_combination -r2835
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY12 rho = seg52In1AccY11 rho - Bool.toZMod bit * (seg52In1AccY11 rho - rho 47224) := by
    have hd : rho 47226 = Bool.toZMod bit * (rho 47224 - seg52In1AccY11 rho) := by
      rw [← hbit]
      unfold seg52In1AccY11
      linear_combination -r2836
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47217 * rho 47218 = rho 47227 := by linear_combination r2837
  have hd1 : rho 47217 * rho 47217 = rho 47228 := by linear_combination r2838
  have hd2 : rho 47218 * rho 47218 = rho 47229 := by linear_combination r2839
  have hd3 : rho 47230 * (rho 47218 * rho 47218 + rho 47217 * rho 47217 * (-1)) =
      2 * (rho 47217 * rho 47218) := by
    rw [hd0, hd1, hd2]
    linear_combination r2840
  have hd4 : rho 47231 * (2 - (rho 47218 * rho 47218 + rho 47217 * rho 47217 * (-1))) =
      rho 47218 * rho 47218 - rho 47217 * rho 47217 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2841
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX11 rho, seg52In1AccY11 rho⟩ ⟨rho 47217, rho 47218⟩
    ⟨rho 47223, rho 47224⟩ ⟨seg52In1AccX12 rho, seg52In1AccY12 rho⟩ ⟨rho 47230, rho 47231⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows12 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2842 rho ∧ Seg52.relationRow2843 rho ∧ Seg52.relationRow2844 rho ∧ Seg52.relationRow2845 rho ∧ Seg52.relationRow2846 rho ∧ Seg52.relationRow2847 rho ∧ Seg52.relationRow2848 rho ∧ Seg52.relationRow2849 rho ∧ Seg52.relationRow2850 rho ∧ Seg52.relationRow2851 rho ∧ Seg52.relationRow2852 rho ∧ Seg52.relationRow2853 rho ∧ Seg52.relationRow2854 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart35 at p35

  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2842, r2843, r2844, r2845, r2846, r2847, r2848, r2849, r2850, r2851, r2852, r2853, r2854, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2842, r2843, r2844, r2845, r2846, r2847, r2848, r2849, r2850, r2851, r2852, r2853, r2854⟩

theorem seg52In1_rung12 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46966 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX12 rho, seg52In1AccY12 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47230, rho 47231⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX12 rho, seg52In1AccY12 rho⟩ ⟨rho 47230, rho 47231⟩
        ⟨seg52In1AccX13 rho, seg52In1AccY13 rho⟩ ⟨rho 47243, rho 47244⟩ := by
  obtain ⟨r2842, r2843, r2844, r2845, r2846, r2847, r2848, r2849, r2850, r2851, r2852, r2853, r2854⟩ := seg52In1_rows12 rho h
  unfold Seg52.relationRow2842 at r2842

  unfold Seg52.relationRow2843 at r2843

  unfold Seg52.relationRow2844 at r2844

  unfold Seg52.relationRow2845 at r2845

  unfold Seg52.relationRow2846 at r2846

  unfold Seg52.relationRow2847 at r2847

  unfold Seg52.relationRow2848 at r2848

  unfold Seg52.relationRow2849 at r2849

  unfold Seg52.relationRow2850 at r2850

  unfold Seg52.relationRow2851 at r2851

  unfold Seg52.relationRow2852 at r2852

  unfold Seg52.relationRow2853 at r2853

  unfold Seg52.relationRow2854 at r2854

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX13 rho = seg52In1AccX12 rho + rho 47238 := by
    unfold seg52In1AccX13 seg52In1AccX12
    ring

  have hnexty : seg52In1AccY13 rho = seg52In1AccY12 rho + rho 47239 := by
    unfold seg52In1AccY13 seg52In1AccY12
    ring

  have ha0 : (rho 47230 + rho 47231) * (seg52In1AccX12 rho + seg52In1AccY12 rho) = rho 47232 := by
    unfold seg52In1AccX12 seg52In1AccY12
    linear_combination r2842
  have ha1 : rho 47231 * seg52In1AccX12 rho = rho 47233 := by
    unfold seg52In1AccX12
    linear_combination r2843
  have ha2 : rho 47230 * seg52In1AccY12 rho = rho 47234 := by
    unfold seg52In1AccY12
    linear_combination r2844
  have ha3 : 3021 * rho 47233 * rho 47234 = rho 47235 := by
    linear_combination r2845
  have ha4 : rho 47236 * (1 + rho 47235) = rho 47233 + rho 47234 := by
    linear_combination r2846
  have ha5 : rho 47237 * (1 - rho 47235) = rho 47232 - rho 47233 - rho 47234 := by
    linear_combination r2847
  have haddx :
      rho 47236 * (1 + 3021 * (rho 47231 * seg52In1AccX12 rho) * (rho 47230 * seg52In1AccY12 rho)) =
        rho 47231 * seg52In1AccX12 rho + rho 47230 * seg52In1AccY12 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47237 * (1 - 3021 * (rho 47231 * seg52In1AccX12 rho) * (rho 47230 * seg52In1AccY12 rho)) =
        (-1) * (rho 47231 * seg52In1AccX12 rho) - rho 47230 * seg52In1AccY12 rho +
          (seg52In1AccY12 rho - seg52In1AccX12 rho * (-1)) * (rho 47230 + rho 47231) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47237 * (1 - rho 47235) = rho 47232 - rho 47233 - rho 47234 := ha5
      _ = (-1) * rho 47233 - rho 47234 + (seg52In1AccY12 rho - seg52In1AccX12 rho * (-1)) *
          (rho 47230 + rho 47231) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX13 rho = seg52In1AccX12 rho - Bool.toZMod bit * (seg52In1AccX12 rho - rho 47236) := by
    have hd : rho 47238 = Bool.toZMod bit * (rho 47236 - seg52In1AccX12 rho) := by
      rw [← hbit]
      unfold seg52In1AccX12
      linear_combination -r2848
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY13 rho = seg52In1AccY12 rho - Bool.toZMod bit * (seg52In1AccY12 rho - rho 47237) := by
    have hd : rho 47239 = Bool.toZMod bit * (rho 47237 - seg52In1AccY12 rho) := by
      rw [← hbit]
      unfold seg52In1AccY12
      linear_combination -r2849
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47230 * rho 47231 = rho 47240 := by linear_combination r2850
  have hd1 : rho 47230 * rho 47230 = rho 47241 := by linear_combination r2851
  have hd2 : rho 47231 * rho 47231 = rho 47242 := by linear_combination r2852
  have hd3 : rho 47243 * (rho 47231 * rho 47231 + rho 47230 * rho 47230 * (-1)) =
      2 * (rho 47230 * rho 47231) := by
    rw [hd0, hd1, hd2]
    linear_combination r2853
  have hd4 : rho 47244 * (2 - (rho 47231 * rho 47231 + rho 47230 * rho 47230 * (-1))) =
      rho 47231 * rho 47231 - rho 47230 * rho 47230 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2854
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX12 rho, seg52In1AccY12 rho⟩ ⟨rho 47230, rho 47231⟩
    ⟨rho 47236, rho 47237⟩ ⟨seg52In1AccX13 rho, seg52In1AccY13 rho⟩ ⟨rho 47243, rho 47244⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows13 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2855 rho ∧ Seg52.relationRow2856 rho ∧ Seg52.relationRow2857 rho ∧ Seg52.relationRow2858 rho ∧ Seg52.relationRow2859 rho ∧ Seg52.relationRow2860 rho ∧ Seg52.relationRow2861 rho ∧ Seg52.relationRow2862 rho ∧ Seg52.relationRow2863 rho ∧ Seg52.relationRow2864 rho ∧ Seg52.relationRow2865 rho ∧ Seg52.relationRow2866 rho ∧ Seg52.relationRow2867 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart35 at p35

  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2855, r2856, r2857, r2858, r2859, r2860, r2861, r2862, r2863, r2864, r2865, r2866, r2867, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2855, r2856, r2857, r2858, r2859, r2860, r2861, r2862, r2863, r2864, r2865, r2866, r2867⟩

theorem seg52In1_rung13 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46967 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX13 rho, seg52In1AccY13 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47243, rho 47244⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX13 rho, seg52In1AccY13 rho⟩ ⟨rho 47243, rho 47244⟩
        ⟨seg52In1AccX14 rho, seg52In1AccY14 rho⟩ ⟨rho 47256, rho 47257⟩ := by
  obtain ⟨r2855, r2856, r2857, r2858, r2859, r2860, r2861, r2862, r2863, r2864, r2865, r2866, r2867⟩ := seg52In1_rows13 rho h
  unfold Seg52.relationRow2855 at r2855

  unfold Seg52.relationRow2856 at r2856

  unfold Seg52.relationRow2857 at r2857

  unfold Seg52.relationRow2858 at r2858

  unfold Seg52.relationRow2859 at r2859

  unfold Seg52.relationRow2860 at r2860

  unfold Seg52.relationRow2861 at r2861

  unfold Seg52.relationRow2862 at r2862

  unfold Seg52.relationRow2863 at r2863

  unfold Seg52.relationRow2864 at r2864

  unfold Seg52.relationRow2865 at r2865

  unfold Seg52.relationRow2866 at r2866

  unfold Seg52.relationRow2867 at r2867

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX14 rho = seg52In1AccX13 rho + rho 47251 := by
    unfold seg52In1AccX14 seg52In1AccX13
    ring

  have hnexty : seg52In1AccY14 rho = seg52In1AccY13 rho + rho 47252 := by
    unfold seg52In1AccY14 seg52In1AccY13
    ring

  have ha0 : (rho 47243 + rho 47244) * (seg52In1AccX13 rho + seg52In1AccY13 rho) = rho 47245 := by
    unfold seg52In1AccX13 seg52In1AccY13
    linear_combination r2855
  have ha1 : rho 47244 * seg52In1AccX13 rho = rho 47246 := by
    unfold seg52In1AccX13
    linear_combination r2856
  have ha2 : rho 47243 * seg52In1AccY13 rho = rho 47247 := by
    unfold seg52In1AccY13
    linear_combination r2857
  have ha3 : 3021 * rho 47246 * rho 47247 = rho 47248 := by
    linear_combination r2858
  have ha4 : rho 47249 * (1 + rho 47248) = rho 47246 + rho 47247 := by
    linear_combination r2859
  have ha5 : rho 47250 * (1 - rho 47248) = rho 47245 - rho 47246 - rho 47247 := by
    linear_combination r2860
  have haddx :
      rho 47249 * (1 + 3021 * (rho 47244 * seg52In1AccX13 rho) * (rho 47243 * seg52In1AccY13 rho)) =
        rho 47244 * seg52In1AccX13 rho + rho 47243 * seg52In1AccY13 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47250 * (1 - 3021 * (rho 47244 * seg52In1AccX13 rho) * (rho 47243 * seg52In1AccY13 rho)) =
        (-1) * (rho 47244 * seg52In1AccX13 rho) - rho 47243 * seg52In1AccY13 rho +
          (seg52In1AccY13 rho - seg52In1AccX13 rho * (-1)) * (rho 47243 + rho 47244) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47250 * (1 - rho 47248) = rho 47245 - rho 47246 - rho 47247 := ha5
      _ = (-1) * rho 47246 - rho 47247 + (seg52In1AccY13 rho - seg52In1AccX13 rho * (-1)) *
          (rho 47243 + rho 47244) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX14 rho = seg52In1AccX13 rho - Bool.toZMod bit * (seg52In1AccX13 rho - rho 47249) := by
    have hd : rho 47251 = Bool.toZMod bit * (rho 47249 - seg52In1AccX13 rho) := by
      rw [← hbit]
      unfold seg52In1AccX13
      linear_combination -r2861
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY14 rho = seg52In1AccY13 rho - Bool.toZMod bit * (seg52In1AccY13 rho - rho 47250) := by
    have hd : rho 47252 = Bool.toZMod bit * (rho 47250 - seg52In1AccY13 rho) := by
      rw [← hbit]
      unfold seg52In1AccY13
      linear_combination -r2862
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47243 * rho 47244 = rho 47253 := by linear_combination r2863
  have hd1 : rho 47243 * rho 47243 = rho 47254 := by linear_combination r2864
  have hd2 : rho 47244 * rho 47244 = rho 47255 := by linear_combination r2865
  have hd3 : rho 47256 * (rho 47244 * rho 47244 + rho 47243 * rho 47243 * (-1)) =
      2 * (rho 47243 * rho 47244) := by
    rw [hd0, hd1, hd2]
    linear_combination r2866
  have hd4 : rho 47257 * (2 - (rho 47244 * rho 47244 + rho 47243 * rho 47243 * (-1))) =
      rho 47244 * rho 47244 - rho 47243 * rho 47243 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2867
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX13 rho, seg52In1AccY13 rho⟩ ⟨rho 47243, rho 47244⟩
    ⟨rho 47249, rho 47250⟩ ⟨seg52In1AccX14 rho, seg52In1AccY14 rho⟩ ⟨rho 47256, rho 47257⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows14 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2868 rho ∧ Seg52.relationRow2869 rho ∧ Seg52.relationRow2870 rho ∧ Seg52.relationRow2871 rho ∧ Seg52.relationRow2872 rho ∧ Seg52.relationRow2873 rho ∧ Seg52.relationRow2874 rho ∧ Seg52.relationRow2875 rho ∧ Seg52.relationRow2876 rho ∧ Seg52.relationRow2877 rho ∧ Seg52.relationRow2878 rho ∧ Seg52.relationRow2879 rho ∧ Seg52.relationRow2880 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart35 at p35

  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2868, r2869, r2870, r2871, r2872, r2873, r2874, r2875, r2876, r2877, r2878, r2879⟩

  unfold Seg52.relationPart36 at p36

  rcases p36 with ⟨r2880, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2868, r2869, r2870, r2871, r2872, r2873, r2874, r2875, r2876, r2877, r2878, r2879, r2880⟩

theorem seg52In1_rung14 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46968 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX14 rho, seg52In1AccY14 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47256, rho 47257⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX14 rho, seg52In1AccY14 rho⟩ ⟨rho 47256, rho 47257⟩
        ⟨seg52In1AccX15 rho, seg52In1AccY15 rho⟩ ⟨rho 47269, rho 47270⟩ := by
  obtain ⟨r2868, r2869, r2870, r2871, r2872, r2873, r2874, r2875, r2876, r2877, r2878, r2879, r2880⟩ := seg52In1_rows14 rho h
  unfold Seg52.relationRow2868 at r2868

  unfold Seg52.relationRow2869 at r2869

  unfold Seg52.relationRow2870 at r2870

  unfold Seg52.relationRow2871 at r2871

  unfold Seg52.relationRow2872 at r2872

  unfold Seg52.relationRow2873 at r2873

  unfold Seg52.relationRow2874 at r2874

  unfold Seg52.relationRow2875 at r2875

  unfold Seg52.relationRow2876 at r2876

  unfold Seg52.relationRow2877 at r2877

  unfold Seg52.relationRow2878 at r2878

  unfold Seg52.relationRow2879 at r2879

  unfold Seg52.relationRow2880 at r2880

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX15 rho = seg52In1AccX14 rho + rho 47264 := by
    unfold seg52In1AccX15 seg52In1AccX14
    ring

  have hnexty : seg52In1AccY15 rho = seg52In1AccY14 rho + rho 47265 := by
    unfold seg52In1AccY15 seg52In1AccY14
    ring

  have ha0 : (rho 47256 + rho 47257) * (seg52In1AccX14 rho + seg52In1AccY14 rho) = rho 47258 := by
    unfold seg52In1AccX14 seg52In1AccY14
    linear_combination r2868
  have ha1 : rho 47257 * seg52In1AccX14 rho = rho 47259 := by
    unfold seg52In1AccX14
    linear_combination r2869
  have ha2 : rho 47256 * seg52In1AccY14 rho = rho 47260 := by
    unfold seg52In1AccY14
    linear_combination r2870
  have ha3 : 3021 * rho 47259 * rho 47260 = rho 47261 := by
    linear_combination r2871
  have ha4 : rho 47262 * (1 + rho 47261) = rho 47259 + rho 47260 := by
    linear_combination r2872
  have ha5 : rho 47263 * (1 - rho 47261) = rho 47258 - rho 47259 - rho 47260 := by
    linear_combination r2873
  have haddx :
      rho 47262 * (1 + 3021 * (rho 47257 * seg52In1AccX14 rho) * (rho 47256 * seg52In1AccY14 rho)) =
        rho 47257 * seg52In1AccX14 rho + rho 47256 * seg52In1AccY14 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47263 * (1 - 3021 * (rho 47257 * seg52In1AccX14 rho) * (rho 47256 * seg52In1AccY14 rho)) =
        (-1) * (rho 47257 * seg52In1AccX14 rho) - rho 47256 * seg52In1AccY14 rho +
          (seg52In1AccY14 rho - seg52In1AccX14 rho * (-1)) * (rho 47256 + rho 47257) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47263 * (1 - rho 47261) = rho 47258 - rho 47259 - rho 47260 := ha5
      _ = (-1) * rho 47259 - rho 47260 + (seg52In1AccY14 rho - seg52In1AccX14 rho * (-1)) *
          (rho 47256 + rho 47257) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX15 rho = seg52In1AccX14 rho - Bool.toZMod bit * (seg52In1AccX14 rho - rho 47262) := by
    have hd : rho 47264 = Bool.toZMod bit * (rho 47262 - seg52In1AccX14 rho) := by
      rw [← hbit]
      unfold seg52In1AccX14
      linear_combination -r2874
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY15 rho = seg52In1AccY14 rho - Bool.toZMod bit * (seg52In1AccY14 rho - rho 47263) := by
    have hd : rho 47265 = Bool.toZMod bit * (rho 47263 - seg52In1AccY14 rho) := by
      rw [← hbit]
      unfold seg52In1AccY14
      linear_combination -r2875
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47256 * rho 47257 = rho 47266 := by linear_combination r2876
  have hd1 : rho 47256 * rho 47256 = rho 47267 := by linear_combination r2877
  have hd2 : rho 47257 * rho 47257 = rho 47268 := by linear_combination r2878
  have hd3 : rho 47269 * (rho 47257 * rho 47257 + rho 47256 * rho 47256 * (-1)) =
      2 * (rho 47256 * rho 47257) := by
    rw [hd0, hd1, hd2]
    linear_combination r2879
  have hd4 : rho 47270 * (2 - (rho 47257 * rho 47257 + rho 47256 * rho 47256 * (-1))) =
      rho 47257 * rho 47257 - rho 47256 * rho 47256 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2880
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX14 rho, seg52In1AccY14 rho⟩ ⟨rho 47256, rho 47257⟩
    ⟨rho 47262, rho 47263⟩ ⟨seg52In1AccX15 rho, seg52In1AccY15 rho⟩ ⟨rho 47269, rho 47270⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows15 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2881 rho ∧ Seg52.relationRow2882 rho ∧ Seg52.relationRow2883 rho ∧ Seg52.relationRow2884 rho ∧ Seg52.relationRow2885 rho ∧ Seg52.relationRow2886 rho ∧ Seg52.relationRow2887 rho ∧ Seg52.relationRow2888 rho ∧ Seg52.relationRow2889 rho ∧ Seg52.relationRow2890 rho ∧ Seg52.relationRow2891 rho ∧ Seg52.relationRow2892 rho ∧ Seg52.relationRow2893 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart36 at p36

  rcases p36 with ⟨_, r2881, r2882, r2883, r2884, r2885, r2886, r2887, r2888, r2889, r2890, r2891, r2892, r2893, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2881, r2882, r2883, r2884, r2885, r2886, r2887, r2888, r2889, r2890, r2891, r2892, r2893⟩

theorem seg52In1_rung15 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46969 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX15 rho, seg52In1AccY15 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47269, rho 47270⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX15 rho, seg52In1AccY15 rho⟩ ⟨rho 47269, rho 47270⟩
        ⟨seg52In1AccX16 rho, seg52In1AccY16 rho⟩ ⟨rho 47282, rho 47283⟩ := by
  obtain ⟨r2881, r2882, r2883, r2884, r2885, r2886, r2887, r2888, r2889, r2890, r2891, r2892, r2893⟩ := seg52In1_rows15 rho h
  unfold Seg52.relationRow2881 at r2881

  unfold Seg52.relationRow2882 at r2882

  unfold Seg52.relationRow2883 at r2883

  unfold Seg52.relationRow2884 at r2884

  unfold Seg52.relationRow2885 at r2885

  unfold Seg52.relationRow2886 at r2886

  unfold Seg52.relationRow2887 at r2887

  unfold Seg52.relationRow2888 at r2888

  unfold Seg52.relationRow2889 at r2889

  unfold Seg52.relationRow2890 at r2890

  unfold Seg52.relationRow2891 at r2891

  unfold Seg52.relationRow2892 at r2892

  unfold Seg52.relationRow2893 at r2893

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX16 rho = seg52In1AccX15 rho + rho 47277 := by
    unfold seg52In1AccX16 seg52In1AccX15
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 47082 13]

    ring

  have hnexty : seg52In1AccY16 rho = seg52In1AccY15 rho + rho 47278 := by
    unfold seg52In1AccY16 seg52In1AccY15
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 47083 13]

    ring

  have ha0 : (rho 47269 + rho 47270) * (seg52In1AccX15 rho + seg52In1AccY15 rho) = rho 47271 := by
    unfold seg52In1AccX15 seg52In1AccY15
    linear_combination r2881
  have ha1 : rho 47270 * seg52In1AccX15 rho = rho 47272 := by
    unfold seg52In1AccX15
    linear_combination r2882
  have ha2 : rho 47269 * seg52In1AccY15 rho = rho 47273 := by
    unfold seg52In1AccY15
    linear_combination r2883
  have ha3 : 3021 * rho 47272 * rho 47273 = rho 47274 := by
    linear_combination r2884
  have ha4 : rho 47275 * (1 + rho 47274) = rho 47272 + rho 47273 := by
    linear_combination r2885
  have ha5 : rho 47276 * (1 - rho 47274) = rho 47271 - rho 47272 - rho 47273 := by
    linear_combination r2886
  have haddx :
      rho 47275 * (1 + 3021 * (rho 47270 * seg52In1AccX15 rho) * (rho 47269 * seg52In1AccY15 rho)) =
        rho 47270 * seg52In1AccX15 rho + rho 47269 * seg52In1AccY15 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47276 * (1 - 3021 * (rho 47270 * seg52In1AccX15 rho) * (rho 47269 * seg52In1AccY15 rho)) =
        (-1) * (rho 47270 * seg52In1AccX15 rho) - rho 47269 * seg52In1AccY15 rho +
          (seg52In1AccY15 rho - seg52In1AccX15 rho * (-1)) * (rho 47269 + rho 47270) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47276 * (1 - rho 47274) = rho 47271 - rho 47272 - rho 47273 := ha5
      _ = (-1) * rho 47272 - rho 47273 + (seg52In1AccY15 rho - seg52In1AccX15 rho * (-1)) *
          (rho 47269 + rho 47270) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX16 rho = seg52In1AccX15 rho - Bool.toZMod bit * (seg52In1AccX15 rho - rho 47275) := by
    have hd : rho 47277 = Bool.toZMod bit * (rho 47275 - seg52In1AccX15 rho) := by
      rw [← hbit]
      unfold seg52In1AccX15
      linear_combination -r2887
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY16 rho = seg52In1AccY15 rho - Bool.toZMod bit * (seg52In1AccY15 rho - rho 47276) := by
    have hd : rho 47278 = Bool.toZMod bit * (rho 47276 - seg52In1AccY15 rho) := by
      rw [← hbit]
      unfold seg52In1AccY15
      linear_combination -r2888
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47269 * rho 47270 = rho 47279 := by linear_combination r2889
  have hd1 : rho 47269 * rho 47269 = rho 47280 := by linear_combination r2890
  have hd2 : rho 47270 * rho 47270 = rho 47281 := by linear_combination r2891
  have hd3 : rho 47282 * (rho 47270 * rho 47270 + rho 47269 * rho 47269 * (-1)) =
      2 * (rho 47269 * rho 47270) := by
    rw [hd0, hd1, hd2]
    linear_combination r2892
  have hd4 : rho 47283 * (2 - (rho 47270 * rho 47270 + rho 47269 * rho 47269 * (-1))) =
      rho 47270 * rho 47270 - rho 47269 * rho 47269 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2893
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX15 rho, seg52In1AccY15 rho⟩ ⟨rho 47269, rho 47270⟩
    ⟨rho 47275, rho 47276⟩ ⟨seg52In1AccX16 rho, seg52In1AccY16 rho⟩ ⟨rho 47282, rho 47283⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows16 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2894 rho ∧ Seg52.relationRow2895 rho ∧ Seg52.relationRow2896 rho ∧ Seg52.relationRow2897 rho ∧ Seg52.relationRow2898 rho ∧ Seg52.relationRow2899 rho ∧ Seg52.relationRow2900 rho ∧ Seg52.relationRow2901 rho ∧ Seg52.relationRow2902 rho ∧ Seg52.relationRow2903 rho ∧ Seg52.relationRow2904 rho ∧ Seg52.relationRow2905 rho ∧ Seg52.relationRow2906 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart36 at p36

  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r2894, r2895, r2896, r2897, r2898, r2899, r2900, r2901, r2902, r2903, r2904, r2905, r2906, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2894, r2895, r2896, r2897, r2898, r2899, r2900, r2901, r2902, r2903, r2904, r2905, r2906⟩

theorem seg52In1_rung16 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46970 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX16 rho, seg52In1AccY16 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47282, rho 47283⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX16 rho, seg52In1AccY16 rho⟩ ⟨rho 47282, rho 47283⟩
        ⟨seg52In1AccX17 rho, seg52In1AccY17 rho⟩ ⟨rho 47295, rho 47296⟩ := by
  obtain ⟨r2894, r2895, r2896, r2897, r2898, r2899, r2900, r2901, r2902, r2903, r2904, r2905, r2906⟩ := seg52In1_rows16 rho h
  unfold Seg52.relationRow2894 at r2894

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2894

  unfold Seg52.relationRow2895 at r2895

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2895

  unfold Seg52.relationRow2896 at r2896

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2896

  unfold Seg52.relationRow2897 at r2897

  unfold Seg52.relationRow2898 at r2898

  unfold Seg52.relationRow2899 at r2899

  unfold Seg52.relationRow2900 at r2900

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2900

  unfold Seg52.relationRow2901 at r2901

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2901

  unfold Seg52.relationRow2902 at r2902

  unfold Seg52.relationRow2903 at r2903

  unfold Seg52.relationRow2904 at r2904

  unfold Seg52.relationRow2905 at r2905

  unfold Seg52.relationRow2906 at r2906

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX17 rho = seg52In1AccX16 rho + rho 47290 := by
    unfold seg52In1AccX17 seg52In1AccX16
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 16]

    ring

  have hnexty : seg52In1AccY17 rho = seg52In1AccY16 rho + rho 47291 := by
    unfold seg52In1AccY17 seg52In1AccY16
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 16]

    ring

  have ha0 : (rho 47282 + rho 47283) * (seg52In1AccX16 rho + seg52In1AccY16 rho) = rho 47284 := by
    unfold seg52In1AccX16 seg52In1AccY16
    linear_combination r2894
  have ha1 : rho 47283 * seg52In1AccX16 rho = rho 47285 := by
    unfold seg52In1AccX16
    linear_combination r2895
  have ha2 : rho 47282 * seg52In1AccY16 rho = rho 47286 := by
    unfold seg52In1AccY16
    linear_combination r2896
  have ha3 : 3021 * rho 47285 * rho 47286 = rho 47287 := by
    linear_combination r2897
  have ha4 : rho 47288 * (1 + rho 47287) = rho 47285 + rho 47286 := by
    linear_combination r2898
  have ha5 : rho 47289 * (1 - rho 47287) = rho 47284 - rho 47285 - rho 47286 := by
    linear_combination r2899
  have haddx :
      rho 47288 * (1 + 3021 * (rho 47283 * seg52In1AccX16 rho) * (rho 47282 * seg52In1AccY16 rho)) =
        rho 47283 * seg52In1AccX16 rho + rho 47282 * seg52In1AccY16 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47289 * (1 - 3021 * (rho 47283 * seg52In1AccX16 rho) * (rho 47282 * seg52In1AccY16 rho)) =
        (-1) * (rho 47283 * seg52In1AccX16 rho) - rho 47282 * seg52In1AccY16 rho +
          (seg52In1AccY16 rho - seg52In1AccX16 rho * (-1)) * (rho 47282 + rho 47283) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47289 * (1 - rho 47287) = rho 47284 - rho 47285 - rho 47286 := ha5
      _ = (-1) * rho 47285 - rho 47286 + (seg52In1AccY16 rho - seg52In1AccX16 rho * (-1)) *
          (rho 47282 + rho 47283) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX17 rho = seg52In1AccX16 rho - Bool.toZMod bit * (seg52In1AccX16 rho - rho 47288) := by
    have hd : rho 47290 = Bool.toZMod bit * (rho 47288 - seg52In1AccX16 rho) := by
      rw [← hbit]
      unfold seg52In1AccX16
      linear_combination -r2900
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY17 rho = seg52In1AccY16 rho - Bool.toZMod bit * (seg52In1AccY16 rho - rho 47289) := by
    have hd : rho 47291 = Bool.toZMod bit * (rho 47289 - seg52In1AccY16 rho) := by
      rw [← hbit]
      unfold seg52In1AccY16
      linear_combination -r2901
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47282 * rho 47283 = rho 47292 := by linear_combination r2902
  have hd1 : rho 47282 * rho 47282 = rho 47293 := by linear_combination r2903
  have hd2 : rho 47283 * rho 47283 = rho 47294 := by linear_combination r2904
  have hd3 : rho 47295 * (rho 47283 * rho 47283 + rho 47282 * rho 47282 * (-1)) =
      2 * (rho 47282 * rho 47283) := by
    rw [hd0, hd1, hd2]
    linear_combination r2905
  have hd4 : rho 47296 * (2 - (rho 47283 * rho 47283 + rho 47282 * rho 47282 * (-1))) =
      rho 47283 * rho 47283 - rho 47282 * rho 47282 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2906
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX16 rho, seg52In1AccY16 rho⟩ ⟨rho 47282, rho 47283⟩
    ⟨rho 47288, rho 47289⟩ ⟨seg52In1AccX17 rho, seg52In1AccY17 rho⟩ ⟨rho 47295, rho 47296⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows17 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2907 rho ∧ Seg52.relationRow2908 rho ∧ Seg52.relationRow2909 rho ∧ Seg52.relationRow2910 rho ∧ Seg52.relationRow2911 rho ∧ Seg52.relationRow2912 rho ∧ Seg52.relationRow2913 rho ∧ Seg52.relationRow2914 rho ∧ Seg52.relationRow2915 rho ∧ Seg52.relationRow2916 rho ∧ Seg52.relationRow2917 rho ∧ Seg52.relationRow2918 rho ∧ Seg52.relationRow2919 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart36 at p36

  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2907, r2908, r2909, r2910, r2911, r2912, r2913, r2914, r2915, r2916, r2917, r2918, r2919, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2907, r2908, r2909, r2910, r2911, r2912, r2913, r2914, r2915, r2916, r2917, r2918, r2919⟩

theorem seg52In1_rung17 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46971 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX17 rho, seg52In1AccY17 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47295, rho 47296⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX17 rho, seg52In1AccY17 rho⟩ ⟨rho 47295, rho 47296⟩
        ⟨seg52In1AccX18 rho, seg52In1AccY18 rho⟩ ⟨rho 47308, rho 47309⟩ := by
  obtain ⟨r2907, r2908, r2909, r2910, r2911, r2912, r2913, r2914, r2915, r2916, r2917, r2918, r2919⟩ := seg52In1_rows17 rho h
  unfold Seg52.relationRow2907 at r2907

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2907

  unfold Seg52.relationRow2908 at r2908

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2908

  unfold Seg52.relationRow2909 at r2909

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2909

  unfold Seg52.relationRow2910 at r2910

  unfold Seg52.relationRow2911 at r2911

  unfold Seg52.relationRow2912 at r2912

  unfold Seg52.relationRow2913 at r2913

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2913

  unfold Seg52.relationRow2914 at r2914

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2914

  unfold Seg52.relationRow2915 at r2915

  unfold Seg52.relationRow2916 at r2916

  unfold Seg52.relationRow2917 at r2917

  unfold Seg52.relationRow2918 at r2918

  unfold Seg52.relationRow2919 at r2919

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX18 rho = seg52In1AccX17 rho + rho 47303 := by
    unfold seg52In1AccX18 seg52In1AccX17
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 17]

    ring

  have hnexty : seg52In1AccY18 rho = seg52In1AccY17 rho + rho 47304 := by
    unfold seg52In1AccY18 seg52In1AccY17
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 17]

    ring

  have ha0 : (rho 47295 + rho 47296) * (seg52In1AccX17 rho + seg52In1AccY17 rho) = rho 47297 := by
    unfold seg52In1AccX17 seg52In1AccY17
    linear_combination r2907
  have ha1 : rho 47296 * seg52In1AccX17 rho = rho 47298 := by
    unfold seg52In1AccX17
    linear_combination r2908
  have ha2 : rho 47295 * seg52In1AccY17 rho = rho 47299 := by
    unfold seg52In1AccY17
    linear_combination r2909
  have ha3 : 3021 * rho 47298 * rho 47299 = rho 47300 := by
    linear_combination r2910
  have ha4 : rho 47301 * (1 + rho 47300) = rho 47298 + rho 47299 := by
    linear_combination r2911
  have ha5 : rho 47302 * (1 - rho 47300) = rho 47297 - rho 47298 - rho 47299 := by
    linear_combination r2912
  have haddx :
      rho 47301 * (1 + 3021 * (rho 47296 * seg52In1AccX17 rho) * (rho 47295 * seg52In1AccY17 rho)) =
        rho 47296 * seg52In1AccX17 rho + rho 47295 * seg52In1AccY17 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47302 * (1 - 3021 * (rho 47296 * seg52In1AccX17 rho) * (rho 47295 * seg52In1AccY17 rho)) =
        (-1) * (rho 47296 * seg52In1AccX17 rho) - rho 47295 * seg52In1AccY17 rho +
          (seg52In1AccY17 rho - seg52In1AccX17 rho * (-1)) * (rho 47295 + rho 47296) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47302 * (1 - rho 47300) = rho 47297 - rho 47298 - rho 47299 := ha5
      _ = (-1) * rho 47298 - rho 47299 + (seg52In1AccY17 rho - seg52In1AccX17 rho * (-1)) *
          (rho 47295 + rho 47296) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX18 rho = seg52In1AccX17 rho - Bool.toZMod bit * (seg52In1AccX17 rho - rho 47301) := by
    have hd : rho 47303 = Bool.toZMod bit * (rho 47301 - seg52In1AccX17 rho) := by
      rw [← hbit]
      unfold seg52In1AccX17
      linear_combination -r2913
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY18 rho = seg52In1AccY17 rho - Bool.toZMod bit * (seg52In1AccY17 rho - rho 47302) := by
    have hd : rho 47304 = Bool.toZMod bit * (rho 47302 - seg52In1AccY17 rho) := by
      rw [← hbit]
      unfold seg52In1AccY17
      linear_combination -r2914
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47295 * rho 47296 = rho 47305 := by linear_combination r2915
  have hd1 : rho 47295 * rho 47295 = rho 47306 := by linear_combination r2916
  have hd2 : rho 47296 * rho 47296 = rho 47307 := by linear_combination r2917
  have hd3 : rho 47308 * (rho 47296 * rho 47296 + rho 47295 * rho 47295 * (-1)) =
      2 * (rho 47295 * rho 47296) := by
    rw [hd0, hd1, hd2]
    linear_combination r2918
  have hd4 : rho 47309 * (2 - (rho 47296 * rho 47296 + rho 47295 * rho 47295 * (-1))) =
      rho 47296 * rho 47296 - rho 47295 * rho 47295 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2919
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX17 rho, seg52In1AccY17 rho⟩ ⟨rho 47295, rho 47296⟩
    ⟨rho 47301, rho 47302⟩ ⟨seg52In1AccX18 rho, seg52In1AccY18 rho⟩ ⟨rho 47308, rho 47309⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows18 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2920 rho ∧ Seg52.relationRow2921 rho ∧ Seg52.relationRow2922 rho ∧ Seg52.relationRow2923 rho ∧ Seg52.relationRow2924 rho ∧ Seg52.relationRow2925 rho ∧ Seg52.relationRow2926 rho ∧ Seg52.relationRow2927 rho ∧ Seg52.relationRow2928 rho ∧ Seg52.relationRow2929 rho ∧ Seg52.relationRow2930 rho ∧ Seg52.relationRow2931 rho ∧ Seg52.relationRow2932 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart36 at p36

  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2920, r2921, r2922, r2923, r2924, r2925, r2926, r2927, r2928, r2929, r2930, r2931, r2932, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2920, r2921, r2922, r2923, r2924, r2925, r2926, r2927, r2928, r2929, r2930, r2931, r2932⟩

theorem seg52In1_rung18 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46972 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX18 rho, seg52In1AccY18 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47308, rho 47309⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX18 rho, seg52In1AccY18 rho⟩ ⟨rho 47308, rho 47309⟩
        ⟨seg52In1AccX19 rho, seg52In1AccY19 rho⟩ ⟨rho 47321, rho 47322⟩ := by
  obtain ⟨r2920, r2921, r2922, r2923, r2924, r2925, r2926, r2927, r2928, r2929, r2930, r2931, r2932⟩ := seg52In1_rows18 rho h
  unfold Seg52.relationRow2920 at r2920

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2920

  unfold Seg52.relationRow2921 at r2921

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2921

  unfold Seg52.relationRow2922 at r2922

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2922

  unfold Seg52.relationRow2923 at r2923

  unfold Seg52.relationRow2924 at r2924

  unfold Seg52.relationRow2925 at r2925

  unfold Seg52.relationRow2926 at r2926

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2926

  unfold Seg52.relationRow2927 at r2927

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2927

  unfold Seg52.relationRow2928 at r2928

  unfold Seg52.relationRow2929 at r2929

  unfold Seg52.relationRow2930 at r2930

  unfold Seg52.relationRow2931 at r2931

  unfold Seg52.relationRow2932 at r2932

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX19 rho = seg52In1AccX18 rho + rho 47316 := by
    unfold seg52In1AccX19 seg52In1AccX18
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 18]

    ring

  have hnexty : seg52In1AccY19 rho = seg52In1AccY18 rho + rho 47317 := by
    unfold seg52In1AccY19 seg52In1AccY18
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 18]

    ring

  have ha0 : (rho 47308 + rho 47309) * (seg52In1AccX18 rho + seg52In1AccY18 rho) = rho 47310 := by
    unfold seg52In1AccX18 seg52In1AccY18
    linear_combination r2920
  have ha1 : rho 47309 * seg52In1AccX18 rho = rho 47311 := by
    unfold seg52In1AccX18
    linear_combination r2921
  have ha2 : rho 47308 * seg52In1AccY18 rho = rho 47312 := by
    unfold seg52In1AccY18
    linear_combination r2922
  have ha3 : 3021 * rho 47311 * rho 47312 = rho 47313 := by
    linear_combination r2923
  have ha4 : rho 47314 * (1 + rho 47313) = rho 47311 + rho 47312 := by
    linear_combination r2924
  have ha5 : rho 47315 * (1 - rho 47313) = rho 47310 - rho 47311 - rho 47312 := by
    linear_combination r2925
  have haddx :
      rho 47314 * (1 + 3021 * (rho 47309 * seg52In1AccX18 rho) * (rho 47308 * seg52In1AccY18 rho)) =
        rho 47309 * seg52In1AccX18 rho + rho 47308 * seg52In1AccY18 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47315 * (1 - 3021 * (rho 47309 * seg52In1AccX18 rho) * (rho 47308 * seg52In1AccY18 rho)) =
        (-1) * (rho 47309 * seg52In1AccX18 rho) - rho 47308 * seg52In1AccY18 rho +
          (seg52In1AccY18 rho - seg52In1AccX18 rho * (-1)) * (rho 47308 + rho 47309) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47315 * (1 - rho 47313) = rho 47310 - rho 47311 - rho 47312 := ha5
      _ = (-1) * rho 47311 - rho 47312 + (seg52In1AccY18 rho - seg52In1AccX18 rho * (-1)) *
          (rho 47308 + rho 47309) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX19 rho = seg52In1AccX18 rho - Bool.toZMod bit * (seg52In1AccX18 rho - rho 47314) := by
    have hd : rho 47316 = Bool.toZMod bit * (rho 47314 - seg52In1AccX18 rho) := by
      rw [← hbit]
      unfold seg52In1AccX18
      linear_combination -r2926
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY19 rho = seg52In1AccY18 rho - Bool.toZMod bit * (seg52In1AccY18 rho - rho 47315) := by
    have hd : rho 47317 = Bool.toZMod bit * (rho 47315 - seg52In1AccY18 rho) := by
      rw [← hbit]
      unfold seg52In1AccY18
      linear_combination -r2927
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47308 * rho 47309 = rho 47318 := by linear_combination r2928
  have hd1 : rho 47308 * rho 47308 = rho 47319 := by linear_combination r2929
  have hd2 : rho 47309 * rho 47309 = rho 47320 := by linear_combination r2930
  have hd3 : rho 47321 * (rho 47309 * rho 47309 + rho 47308 * rho 47308 * (-1)) =
      2 * (rho 47308 * rho 47309) := by
    rw [hd0, hd1, hd2]
    linear_combination r2931
  have hd4 : rho 47322 * (2 - (rho 47309 * rho 47309 + rho 47308 * rho 47308 * (-1))) =
      rho 47309 * rho 47309 - rho 47308 * rho 47308 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2932
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX18 rho, seg52In1AccY18 rho⟩ ⟨rho 47308, rho 47309⟩
    ⟨rho 47314, rho 47315⟩ ⟨seg52In1AccX19 rho, seg52In1AccY19 rho⟩ ⟨rho 47321, rho 47322⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows19 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2933 rho ∧ Seg52.relationRow2934 rho ∧ Seg52.relationRow2935 rho ∧ Seg52.relationRow2936 rho ∧ Seg52.relationRow2937 rho ∧ Seg52.relationRow2938 rho ∧ Seg52.relationRow2939 rho ∧ Seg52.relationRow2940 rho ∧ Seg52.relationRow2941 rho ∧ Seg52.relationRow2942 rho ∧ Seg52.relationRow2943 rho ∧ Seg52.relationRow2944 rho ∧ Seg52.relationRow2945 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart36 at p36

  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2933, r2934, r2935, r2936, r2937, r2938, r2939, r2940, r2941, r2942, r2943, r2944, r2945, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2933, r2934, r2935, r2936, r2937, r2938, r2939, r2940, r2941, r2942, r2943, r2944, r2945⟩

theorem seg52In1_rung19 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46973 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX19 rho, seg52In1AccY19 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47321, rho 47322⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX19 rho, seg52In1AccY19 rho⟩ ⟨rho 47321, rho 47322⟩
        ⟨seg52In1AccX20 rho, seg52In1AccY20 rho⟩ ⟨rho 47334, rho 47335⟩ := by
  obtain ⟨r2933, r2934, r2935, r2936, r2937, r2938, r2939, r2940, r2941, r2942, r2943, r2944, r2945⟩ := seg52In1_rows19 rho h
  unfold Seg52.relationRow2933 at r2933

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2933

  unfold Seg52.relationRow2934 at r2934

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2934

  unfold Seg52.relationRow2935 at r2935

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2935

  unfold Seg52.relationRow2936 at r2936

  unfold Seg52.relationRow2937 at r2937

  unfold Seg52.relationRow2938 at r2938

  unfold Seg52.relationRow2939 at r2939

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2939

  unfold Seg52.relationRow2940 at r2940

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2940

  unfold Seg52.relationRow2941 at r2941

  unfold Seg52.relationRow2942 at r2942

  unfold Seg52.relationRow2943 at r2943

  unfold Seg52.relationRow2944 at r2944

  unfold Seg52.relationRow2945 at r2945

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX20 rho = seg52In1AccX19 rho + rho 47329 := by
    unfold seg52In1AccX20 seg52In1AccX19
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 19]

    ring

  have hnexty : seg52In1AccY20 rho = seg52In1AccY19 rho + rho 47330 := by
    unfold seg52In1AccY20 seg52In1AccY19
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 19]

    ring

  have ha0 : (rho 47321 + rho 47322) * (seg52In1AccX19 rho + seg52In1AccY19 rho) = rho 47323 := by
    unfold seg52In1AccX19 seg52In1AccY19
    linear_combination r2933
  have ha1 : rho 47322 * seg52In1AccX19 rho = rho 47324 := by
    unfold seg52In1AccX19
    linear_combination r2934
  have ha2 : rho 47321 * seg52In1AccY19 rho = rho 47325 := by
    unfold seg52In1AccY19
    linear_combination r2935
  have ha3 : 3021 * rho 47324 * rho 47325 = rho 47326 := by
    linear_combination r2936
  have ha4 : rho 47327 * (1 + rho 47326) = rho 47324 + rho 47325 := by
    linear_combination r2937
  have ha5 : rho 47328 * (1 - rho 47326) = rho 47323 - rho 47324 - rho 47325 := by
    linear_combination r2938
  have haddx :
      rho 47327 * (1 + 3021 * (rho 47322 * seg52In1AccX19 rho) * (rho 47321 * seg52In1AccY19 rho)) =
        rho 47322 * seg52In1AccX19 rho + rho 47321 * seg52In1AccY19 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47328 * (1 - 3021 * (rho 47322 * seg52In1AccX19 rho) * (rho 47321 * seg52In1AccY19 rho)) =
        (-1) * (rho 47322 * seg52In1AccX19 rho) - rho 47321 * seg52In1AccY19 rho +
          (seg52In1AccY19 rho - seg52In1AccX19 rho * (-1)) * (rho 47321 + rho 47322) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47328 * (1 - rho 47326) = rho 47323 - rho 47324 - rho 47325 := ha5
      _ = (-1) * rho 47324 - rho 47325 + (seg52In1AccY19 rho - seg52In1AccX19 rho * (-1)) *
          (rho 47321 + rho 47322) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX20 rho = seg52In1AccX19 rho - Bool.toZMod bit * (seg52In1AccX19 rho - rho 47327) := by
    have hd : rho 47329 = Bool.toZMod bit * (rho 47327 - seg52In1AccX19 rho) := by
      rw [← hbit]
      unfold seg52In1AccX19
      linear_combination -r2939
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY20 rho = seg52In1AccY19 rho - Bool.toZMod bit * (seg52In1AccY19 rho - rho 47328) := by
    have hd : rho 47330 = Bool.toZMod bit * (rho 47328 - seg52In1AccY19 rho) := by
      rw [← hbit]
      unfold seg52In1AccY19
      linear_combination -r2940
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47321 * rho 47322 = rho 47331 := by linear_combination r2941
  have hd1 : rho 47321 * rho 47321 = rho 47332 := by linear_combination r2942
  have hd2 : rho 47322 * rho 47322 = rho 47333 := by linear_combination r2943
  have hd3 : rho 47334 * (rho 47322 * rho 47322 + rho 47321 * rho 47321 * (-1)) =
      2 * (rho 47321 * rho 47322) := by
    rw [hd0, hd1, hd2]
    linear_combination r2944
  have hd4 : rho 47335 * (2 - (rho 47322 * rho 47322 + rho 47321 * rho 47321 * (-1))) =
      rho 47322 * rho 47322 - rho 47321 * rho 47321 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2945
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX19 rho, seg52In1AccY19 rho⟩ ⟨rho 47321, rho 47322⟩
    ⟨rho 47327, rho 47328⟩ ⟨seg52In1AccX20 rho, seg52In1AccY20 rho⟩ ⟨rho 47334, rho 47335⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows20 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2946 rho ∧ Seg52.relationRow2947 rho ∧ Seg52.relationRow2948 rho ∧ Seg52.relationRow2949 rho ∧ Seg52.relationRow2950 rho ∧ Seg52.relationRow2951 rho ∧ Seg52.relationRow2952 rho ∧ Seg52.relationRow2953 rho ∧ Seg52.relationRow2954 rho ∧ Seg52.relationRow2955 rho ∧ Seg52.relationRow2956 rho ∧ Seg52.relationRow2957 rho ∧ Seg52.relationRow2958 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart36 at p36

  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2946, r2947, r2948, r2949, r2950, r2951, r2952, r2953, r2954, r2955, r2956, r2957, r2958, _⟩

  exact ⟨r2946, r2947, r2948, r2949, r2950, r2951, r2952, r2953, r2954, r2955, r2956, r2957, r2958⟩

theorem seg52In1_rung20 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46974 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX20 rho, seg52In1AccY20 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47334, rho 47335⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX20 rho, seg52In1AccY20 rho⟩ ⟨rho 47334, rho 47335⟩
        ⟨seg52In1AccX21 rho, seg52In1AccY21 rho⟩ ⟨rho 47347, rho 47348⟩ := by
  obtain ⟨r2946, r2947, r2948, r2949, r2950, r2951, r2952, r2953, r2954, r2955, r2956, r2957, r2958⟩ := seg52In1_rows20 rho h
  unfold Seg52.relationRow2946 at r2946

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2946

  unfold Seg52.relationRow2947 at r2947

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2947

  unfold Seg52.relationRow2948 at r2948

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2948

  unfold Seg52.relationRow2949 at r2949

  unfold Seg52.relationRow2950 at r2950

  unfold Seg52.relationRow2951 at r2951

  unfold Seg52.relationRow2952 at r2952

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2952

  unfold Seg52.relationRow2953 at r2953

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2953

  unfold Seg52.relationRow2954 at r2954

  unfold Seg52.relationRow2955 at r2955

  unfold Seg52.relationRow2956 at r2956

  unfold Seg52.relationRow2957 at r2957

  unfold Seg52.relationRow2958 at r2958

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX21 rho = seg52In1AccX20 rho + rho 47342 := by
    unfold seg52In1AccX21 seg52In1AccX20
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 20]

    ring

  have hnexty : seg52In1AccY21 rho = seg52In1AccY20 rho + rho 47343 := by
    unfold seg52In1AccY21 seg52In1AccY20
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 20]

    ring

  have ha0 : (rho 47334 + rho 47335) * (seg52In1AccX20 rho + seg52In1AccY20 rho) = rho 47336 := by
    unfold seg52In1AccX20 seg52In1AccY20
    linear_combination r2946
  have ha1 : rho 47335 * seg52In1AccX20 rho = rho 47337 := by
    unfold seg52In1AccX20
    linear_combination r2947
  have ha2 : rho 47334 * seg52In1AccY20 rho = rho 47338 := by
    unfold seg52In1AccY20
    linear_combination r2948
  have ha3 : 3021 * rho 47337 * rho 47338 = rho 47339 := by
    linear_combination r2949
  have ha4 : rho 47340 * (1 + rho 47339) = rho 47337 + rho 47338 := by
    linear_combination r2950
  have ha5 : rho 47341 * (1 - rho 47339) = rho 47336 - rho 47337 - rho 47338 := by
    linear_combination r2951
  have haddx :
      rho 47340 * (1 + 3021 * (rho 47335 * seg52In1AccX20 rho) * (rho 47334 * seg52In1AccY20 rho)) =
        rho 47335 * seg52In1AccX20 rho + rho 47334 * seg52In1AccY20 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47341 * (1 - 3021 * (rho 47335 * seg52In1AccX20 rho) * (rho 47334 * seg52In1AccY20 rho)) =
        (-1) * (rho 47335 * seg52In1AccX20 rho) - rho 47334 * seg52In1AccY20 rho +
          (seg52In1AccY20 rho - seg52In1AccX20 rho * (-1)) * (rho 47334 + rho 47335) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47341 * (1 - rho 47339) = rho 47336 - rho 47337 - rho 47338 := ha5
      _ = (-1) * rho 47337 - rho 47338 + (seg52In1AccY20 rho - seg52In1AccX20 rho * (-1)) *
          (rho 47334 + rho 47335) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX21 rho = seg52In1AccX20 rho - Bool.toZMod bit * (seg52In1AccX20 rho - rho 47340) := by
    have hd : rho 47342 = Bool.toZMod bit * (rho 47340 - seg52In1AccX20 rho) := by
      rw [← hbit]
      unfold seg52In1AccX20
      linear_combination -r2952
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY21 rho = seg52In1AccY20 rho - Bool.toZMod bit * (seg52In1AccY20 rho - rho 47341) := by
    have hd : rho 47343 = Bool.toZMod bit * (rho 47341 - seg52In1AccY20 rho) := by
      rw [← hbit]
      unfold seg52In1AccY20
      linear_combination -r2953
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47334 * rho 47335 = rho 47344 := by linear_combination r2954
  have hd1 : rho 47334 * rho 47334 = rho 47345 := by linear_combination r2955
  have hd2 : rho 47335 * rho 47335 = rho 47346 := by linear_combination r2956
  have hd3 : rho 47347 * (rho 47335 * rho 47335 + rho 47334 * rho 47334 * (-1)) =
      2 * (rho 47334 * rho 47335) := by
    rw [hd0, hd1, hd2]
    linear_combination r2957
  have hd4 : rho 47348 * (2 - (rho 47335 * rho 47335 + rho 47334 * rho 47334 * (-1))) =
      rho 47335 * rho 47335 - rho 47334 * rho 47334 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2958
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX20 rho, seg52In1AccY20 rho⟩ ⟨rho 47334, rho 47335⟩
    ⟨rho 47340, rho 47341⟩ ⟨seg52In1AccX21 rho, seg52In1AccY21 rho⟩ ⟨rho 47347, rho 47348⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows21 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2959 rho ∧ Seg52.relationRow2960 rho ∧ Seg52.relationRow2961 rho ∧ Seg52.relationRow2962 rho ∧ Seg52.relationRow2963 rho ∧ Seg52.relationRow2964 rho ∧ Seg52.relationRow2965 rho ∧ Seg52.relationRow2966 rho ∧ Seg52.relationRow2967 rho ∧ Seg52.relationRow2968 rho ∧ Seg52.relationRow2969 rho ∧ Seg52.relationRow2970 rho ∧ Seg52.relationRow2971 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart36 at p36

  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2959⟩

  unfold Seg52.relationPart37 at p37

  rcases p37 with ⟨r2960, r2961, r2962, r2963, r2964, r2965, r2966, r2967, r2968, r2969, r2970, r2971, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2959, r2960, r2961, r2962, r2963, r2964, r2965, r2966, r2967, r2968, r2969, r2970, r2971⟩

theorem seg52In1_rung21 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46975 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX21 rho, seg52In1AccY21 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47347, rho 47348⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX21 rho, seg52In1AccY21 rho⟩ ⟨rho 47347, rho 47348⟩
        ⟨seg52In1AccX22 rho, seg52In1AccY22 rho⟩ ⟨rho 47360, rho 47361⟩ := by
  obtain ⟨r2959, r2960, r2961, r2962, r2963, r2964, r2965, r2966, r2967, r2968, r2969, r2970, r2971⟩ := seg52In1_rows21 rho h
  unfold Seg52.relationRow2959 at r2959

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2959

  unfold Seg52.relationRow2960 at r2960

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2960

  unfold Seg52.relationRow2961 at r2961

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2961

  unfold Seg52.relationRow2962 at r2962

  unfold Seg52.relationRow2963 at r2963

  unfold Seg52.relationRow2964 at r2964

  unfold Seg52.relationRow2965 at r2965

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2965

  unfold Seg52.relationRow2966 at r2966

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2966

  unfold Seg52.relationRow2967 at r2967

  unfold Seg52.relationRow2968 at r2968

  unfold Seg52.relationRow2969 at r2969

  unfold Seg52.relationRow2970 at r2970

  unfold Seg52.relationRow2971 at r2971

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX22 rho = seg52In1AccX21 rho + rho 47355 := by
    unfold seg52In1AccX22 seg52In1AccX21
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 21]

    ring

  have hnexty : seg52In1AccY22 rho = seg52In1AccY21 rho + rho 47356 := by
    unfold seg52In1AccY22 seg52In1AccY21
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 21]

    ring

  have ha0 : (rho 47347 + rho 47348) * (seg52In1AccX21 rho + seg52In1AccY21 rho) = rho 47349 := by
    unfold seg52In1AccX21 seg52In1AccY21
    linear_combination r2959
  have ha1 : rho 47348 * seg52In1AccX21 rho = rho 47350 := by
    unfold seg52In1AccX21
    linear_combination r2960
  have ha2 : rho 47347 * seg52In1AccY21 rho = rho 47351 := by
    unfold seg52In1AccY21
    linear_combination r2961
  have ha3 : 3021 * rho 47350 * rho 47351 = rho 47352 := by
    linear_combination r2962
  have ha4 : rho 47353 * (1 + rho 47352) = rho 47350 + rho 47351 := by
    linear_combination r2963
  have ha5 : rho 47354 * (1 - rho 47352) = rho 47349 - rho 47350 - rho 47351 := by
    linear_combination r2964
  have haddx :
      rho 47353 * (1 + 3021 * (rho 47348 * seg52In1AccX21 rho) * (rho 47347 * seg52In1AccY21 rho)) =
        rho 47348 * seg52In1AccX21 rho + rho 47347 * seg52In1AccY21 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47354 * (1 - 3021 * (rho 47348 * seg52In1AccX21 rho) * (rho 47347 * seg52In1AccY21 rho)) =
        (-1) * (rho 47348 * seg52In1AccX21 rho) - rho 47347 * seg52In1AccY21 rho +
          (seg52In1AccY21 rho - seg52In1AccX21 rho * (-1)) * (rho 47347 + rho 47348) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47354 * (1 - rho 47352) = rho 47349 - rho 47350 - rho 47351 := ha5
      _ = (-1) * rho 47350 - rho 47351 + (seg52In1AccY21 rho - seg52In1AccX21 rho * (-1)) *
          (rho 47347 + rho 47348) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX22 rho = seg52In1AccX21 rho - Bool.toZMod bit * (seg52In1AccX21 rho - rho 47353) := by
    have hd : rho 47355 = Bool.toZMod bit * (rho 47353 - seg52In1AccX21 rho) := by
      rw [← hbit]
      unfold seg52In1AccX21
      linear_combination -r2965
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY22 rho = seg52In1AccY21 rho - Bool.toZMod bit * (seg52In1AccY21 rho - rho 47354) := by
    have hd : rho 47356 = Bool.toZMod bit * (rho 47354 - seg52In1AccY21 rho) := by
      rw [← hbit]
      unfold seg52In1AccY21
      linear_combination -r2966
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47347 * rho 47348 = rho 47357 := by linear_combination r2967
  have hd1 : rho 47347 * rho 47347 = rho 47358 := by linear_combination r2968
  have hd2 : rho 47348 * rho 47348 = rho 47359 := by linear_combination r2969
  have hd3 : rho 47360 * (rho 47348 * rho 47348 + rho 47347 * rho 47347 * (-1)) =
      2 * (rho 47347 * rho 47348) := by
    rw [hd0, hd1, hd2]
    linear_combination r2970
  have hd4 : rho 47361 * (2 - (rho 47348 * rho 47348 + rho 47347 * rho 47347 * (-1))) =
      rho 47348 * rho 47348 - rho 47347 * rho 47347 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2971
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX21 rho, seg52In1AccY21 rho⟩ ⟨rho 47347, rho 47348⟩
    ⟨rho 47353, rho 47354⟩ ⟨seg52In1AccX22 rho, seg52In1AccY22 rho⟩ ⟨rho 47360, rho 47361⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_hstep_c1 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (46954 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 11 ≤ i → i < 22 →
      EdwardsBridge.onCurve (seg52In1AccState rho i) →
      EdwardsBridge.onCurve (seg52In1CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In1AccState rho i) (seg52In1CurState rho i)
        (seg52In1AccState rho (i + 1)) (seg52In1CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In1_rung11 rho h bits[11]! (hbitAt 11 (by omega)) hacc hcur
  · exact seg52In1_rung12 rho h bits[12]! (hbitAt 12 (by omega)) hacc hcur
  · exact seg52In1_rung13 rho h bits[13]! (hbitAt 13 (by omega)) hacc hcur
  · exact seg52In1_rung14 rho h bits[14]! (hbitAt 14 (by omega)) hacc hcur
  · exact seg52In1_rung15 rho h bits[15]! (hbitAt 15 (by omega)) hacc hcur
  · exact seg52In1_rung16 rho h bits[16]! (hbitAt 16 (by omega)) hacc hcur
  · exact seg52In1_rung17 rho h bits[17]! (hbitAt 17 (by omega)) hacc hcur
  · exact seg52In1_rung18 rho h bits[18]! (hbitAt 18 (by omega)) hacc hcur
  · exact seg52In1_rung19 rho h bits[19]! (hbitAt 19 (by omega)) hacc hcur
  · exact seg52In1_rung20 rho h bits[20]! (hbitAt 20 (by omega)) hacc hcur
  · exact seg52In1_rung21 rho h bits[21]! (hbitAt 21 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
