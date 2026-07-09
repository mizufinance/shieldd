import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48Out0_rows44 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5051 rho ∧ Seg48.relationRow5052 rho ∧ Seg48.relationRow5053 rho ∧ Seg48.relationRow5054 rho ∧ Seg48.relationRow5055 rho ∧ Seg48.relationRow5056 rho ∧ Seg48.relationRow5057 rho ∧ Seg48.relationRow5058 rho ∧ Seg48.relationRow5059 rho ∧ Seg48.relationRow5060 rho ∧ Seg48.relationRow5061 rho ∧ Seg48.relationRow5062 rho ∧ Seg48.relationRow5063 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p63, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart63 at p63

  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, r5051, r5052, r5053, r5054, r5055, r5056, r5057, r5058, r5059, r5060, r5061, r5062, r5063, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5051, r5052, r5053, r5054, r5055, r5056, r5057, r5058, r5059, r5060, r5061, r5062, r5063⟩

theorem seg48Out0_rung44 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37158 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX44 rho, seg48Out0AccY44 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37806, rho 37807⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX44 rho, seg48Out0AccY44 rho⟩ ⟨rho 37806, rho 37807⟩
        ⟨seg48Out0AccX45 rho, seg48Out0AccY45 rho⟩ ⟨rho 37819, rho 37820⟩ := by
  obtain ⟨r5051, r5052, r5053, r5054, r5055, r5056, r5057, r5058, r5059, r5060, r5061, r5062, r5063⟩ := seg48Out0_rows44 rho h
  unfold Seg48.relationRow5051 at r5051

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5051

  unfold Seg48.relationRow5052 at r5052

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5052

  unfold Seg48.relationRow5053 at r5053

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5053

  unfold Seg48.relationRow5054 at r5054

  unfold Seg48.relationRow5055 at r5055

  unfold Seg48.relationRow5056 at r5056

  unfold Seg48.relationRow5057 at r5057

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5057

  unfold Seg48.relationRow5058 at r5058

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5058

  unfold Seg48.relationRow5059 at r5059

  unfold Seg48.relationRow5060 at r5060

  unfold Seg48.relationRow5061 at r5061

  unfold Seg48.relationRow5062 at r5062

  unfold Seg48.relationRow5063 at r5063

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX45 rho = seg48Out0AccX44 rho + rho 37814 := by
    unfold seg48Out0AccX45 seg48Out0AccX44
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 44]

    ring

  have hnexty : seg48Out0AccY45 rho = seg48Out0AccY44 rho + rho 37815 := by
    unfold seg48Out0AccY45 seg48Out0AccY44
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 44]

    ring

  have ha0 : (rho 37806 + rho 37807) * (seg48Out0AccX44 rho + seg48Out0AccY44 rho) = rho 37808 := by
    unfold seg48Out0AccX44 seg48Out0AccY44
    linear_combination r5051
  have ha1 : rho 37807 * seg48Out0AccX44 rho = rho 37809 := by
    unfold seg48Out0AccX44
    linear_combination r5052
  have ha2 : rho 37806 * seg48Out0AccY44 rho = rho 37810 := by
    unfold seg48Out0AccY44
    linear_combination r5053
  have ha3 : 3021 * rho 37809 * rho 37810 = rho 37811 := by
    linear_combination r5054
  have ha4 : rho 37812 * (1 + rho 37811) = rho 37809 + rho 37810 := by
    linear_combination r5055
  have ha5 : rho 37813 * (1 - rho 37811) = rho 37808 - rho 37809 - rho 37810 := by
    linear_combination r5056
  have haddx :
      rho 37812 * (1 + 3021 * (rho 37807 * seg48Out0AccX44 rho) * (rho 37806 * seg48Out0AccY44 rho)) =
        rho 37807 * seg48Out0AccX44 rho + rho 37806 * seg48Out0AccY44 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37813 * (1 - 3021 * (rho 37807 * seg48Out0AccX44 rho) * (rho 37806 * seg48Out0AccY44 rho)) =
        (-1) * (rho 37807 * seg48Out0AccX44 rho) - rho 37806 * seg48Out0AccY44 rho +
          (seg48Out0AccY44 rho - seg48Out0AccX44 rho * (-1)) * (rho 37806 + rho 37807) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37813 * (1 - rho 37811) = rho 37808 - rho 37809 - rho 37810 := ha5
      _ = (-1) * rho 37809 - rho 37810 + (seg48Out0AccY44 rho - seg48Out0AccX44 rho * (-1)) *
          (rho 37806 + rho 37807) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX45 rho = seg48Out0AccX44 rho - Bool.toZMod bit * (seg48Out0AccX44 rho - rho 37812) := by
    have hd : rho 37814 = Bool.toZMod bit * (rho 37812 - seg48Out0AccX44 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX44
      linear_combination -r5057
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY45 rho = seg48Out0AccY44 rho - Bool.toZMod bit * (seg48Out0AccY44 rho - rho 37813) := by
    have hd : rho 37815 = Bool.toZMod bit * (rho 37813 - seg48Out0AccY44 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY44
      linear_combination -r5058
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37806 * rho 37807 = rho 37816 := by linear_combination r5059
  have hd1 : rho 37806 * rho 37806 = rho 37817 := by linear_combination r5060
  have hd2 : rho 37807 * rho 37807 = rho 37818 := by linear_combination r5061
  have hd3 : rho 37819 * (rho 37807 * rho 37807 + rho 37806 * rho 37806 * (-1)) =
      2 * (rho 37806 * rho 37807) := by
    rw [hd0, hd1, hd2]
    linear_combination r5062
  have hd4 : rho 37820 * (2 - (rho 37807 * rho 37807 + rho 37806 * rho 37806 * (-1))) =
      rho 37807 * rho 37807 - rho 37806 * rho 37806 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5063
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX44 rho, seg48Out0AccY44 rho⟩ ⟨rho 37806, rho 37807⟩
    ⟨rho 37812, rho 37813⟩ ⟨seg48Out0AccX45 rho, seg48Out0AccY45 rho⟩ ⟨rho 37819, rho 37820⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows45 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5064 rho ∧ Seg48.relationRow5065 rho ∧ Seg48.relationRow5066 rho ∧ Seg48.relationRow5067 rho ∧ Seg48.relationRow5068 rho ∧ Seg48.relationRow5069 rho ∧ Seg48.relationRow5070 rho ∧ Seg48.relationRow5071 rho ∧ Seg48.relationRow5072 rho ∧ Seg48.relationRow5073 rho ∧ Seg48.relationRow5074 rho ∧ Seg48.relationRow5075 rho ∧ Seg48.relationRow5076 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p63, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart63 at p63

  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5064, r5065, r5066, r5067, r5068, r5069, r5070, r5071, r5072, r5073, r5074, r5075, r5076, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5064, r5065, r5066, r5067, r5068, r5069, r5070, r5071, r5072, r5073, r5074, r5075, r5076⟩

theorem seg48Out0_rung45 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37159 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX45 rho, seg48Out0AccY45 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37819, rho 37820⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX45 rho, seg48Out0AccY45 rho⟩ ⟨rho 37819, rho 37820⟩
        ⟨seg48Out0AccX46 rho, seg48Out0AccY46 rho⟩ ⟨rho 37832, rho 37833⟩ := by
  obtain ⟨r5064, r5065, r5066, r5067, r5068, r5069, r5070, r5071, r5072, r5073, r5074, r5075, r5076⟩ := seg48Out0_rows45 rho h
  unfold Seg48.relationRow5064 at r5064

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5064

  unfold Seg48.relationRow5065 at r5065

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5065

  unfold Seg48.relationRow5066 at r5066

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5066

  unfold Seg48.relationRow5067 at r5067

  unfold Seg48.relationRow5068 at r5068

  unfold Seg48.relationRow5069 at r5069

  unfold Seg48.relationRow5070 at r5070

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5070

  unfold Seg48.relationRow5071 at r5071

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5071

  unfold Seg48.relationRow5072 at r5072

  unfold Seg48.relationRow5073 at r5073

  unfold Seg48.relationRow5074 at r5074

  unfold Seg48.relationRow5075 at r5075

  unfold Seg48.relationRow5076 at r5076

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX46 rho = seg48Out0AccX45 rho + rho 37827 := by
    unfold seg48Out0AccX46 seg48Out0AccX45
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 45]

    ring

  have hnexty : seg48Out0AccY46 rho = seg48Out0AccY45 rho + rho 37828 := by
    unfold seg48Out0AccY46 seg48Out0AccY45
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 45]

    ring

  have ha0 : (rho 37819 + rho 37820) * (seg48Out0AccX45 rho + seg48Out0AccY45 rho) = rho 37821 := by
    unfold seg48Out0AccX45 seg48Out0AccY45
    linear_combination r5064
  have ha1 : rho 37820 * seg48Out0AccX45 rho = rho 37822 := by
    unfold seg48Out0AccX45
    linear_combination r5065
  have ha2 : rho 37819 * seg48Out0AccY45 rho = rho 37823 := by
    unfold seg48Out0AccY45
    linear_combination r5066
  have ha3 : 3021 * rho 37822 * rho 37823 = rho 37824 := by
    linear_combination r5067
  have ha4 : rho 37825 * (1 + rho 37824) = rho 37822 + rho 37823 := by
    linear_combination r5068
  have ha5 : rho 37826 * (1 - rho 37824) = rho 37821 - rho 37822 - rho 37823 := by
    linear_combination r5069
  have haddx :
      rho 37825 * (1 + 3021 * (rho 37820 * seg48Out0AccX45 rho) * (rho 37819 * seg48Out0AccY45 rho)) =
        rho 37820 * seg48Out0AccX45 rho + rho 37819 * seg48Out0AccY45 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37826 * (1 - 3021 * (rho 37820 * seg48Out0AccX45 rho) * (rho 37819 * seg48Out0AccY45 rho)) =
        (-1) * (rho 37820 * seg48Out0AccX45 rho) - rho 37819 * seg48Out0AccY45 rho +
          (seg48Out0AccY45 rho - seg48Out0AccX45 rho * (-1)) * (rho 37819 + rho 37820) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37826 * (1 - rho 37824) = rho 37821 - rho 37822 - rho 37823 := ha5
      _ = (-1) * rho 37822 - rho 37823 + (seg48Out0AccY45 rho - seg48Out0AccX45 rho * (-1)) *
          (rho 37819 + rho 37820) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX46 rho = seg48Out0AccX45 rho - Bool.toZMod bit * (seg48Out0AccX45 rho - rho 37825) := by
    have hd : rho 37827 = Bool.toZMod bit * (rho 37825 - seg48Out0AccX45 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX45
      linear_combination -r5070
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY46 rho = seg48Out0AccY45 rho - Bool.toZMod bit * (seg48Out0AccY45 rho - rho 37826) := by
    have hd : rho 37828 = Bool.toZMod bit * (rho 37826 - seg48Out0AccY45 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY45
      linear_combination -r5071
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37819 * rho 37820 = rho 37829 := by linear_combination r5072
  have hd1 : rho 37819 * rho 37819 = rho 37830 := by linear_combination r5073
  have hd2 : rho 37820 * rho 37820 = rho 37831 := by linear_combination r5074
  have hd3 : rho 37832 * (rho 37820 * rho 37820 + rho 37819 * rho 37819 * (-1)) =
      2 * (rho 37819 * rho 37820) := by
    rw [hd0, hd1, hd2]
    linear_combination r5075
  have hd4 : rho 37833 * (2 - (rho 37820 * rho 37820 + rho 37819 * rho 37819 * (-1))) =
      rho 37820 * rho 37820 - rho 37819 * rho 37819 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5076
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX45 rho, seg48Out0AccY45 rho⟩ ⟨rho 37819, rho 37820⟩
    ⟨rho 37825, rho 37826⟩ ⟨seg48Out0AccX46 rho, seg48Out0AccY46 rho⟩ ⟨rho 37832, rho 37833⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows46 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5077 rho ∧ Seg48.relationRow5078 rho ∧ Seg48.relationRow5079 rho ∧ Seg48.relationRow5080 rho ∧ Seg48.relationRow5081 rho ∧ Seg48.relationRow5082 rho ∧ Seg48.relationRow5083 rho ∧ Seg48.relationRow5084 rho ∧ Seg48.relationRow5085 rho ∧ Seg48.relationRow5086 rho ∧ Seg48.relationRow5087 rho ∧ Seg48.relationRow5088 rho ∧ Seg48.relationRow5089 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p63, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart63 at p63

  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5077, r5078, r5079, r5080, r5081, r5082, r5083, r5084, r5085, r5086, r5087, r5088, r5089, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5077, r5078, r5079, r5080, r5081, r5082, r5083, r5084, r5085, r5086, r5087, r5088, r5089⟩

theorem seg48Out0_rung46 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37160 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX46 rho, seg48Out0AccY46 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37832, rho 37833⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX46 rho, seg48Out0AccY46 rho⟩ ⟨rho 37832, rho 37833⟩
        ⟨seg48Out0AccX47 rho, seg48Out0AccY47 rho⟩ ⟨rho 37845, rho 37846⟩ := by
  obtain ⟨r5077, r5078, r5079, r5080, r5081, r5082, r5083, r5084, r5085, r5086, r5087, r5088, r5089⟩ := seg48Out0_rows46 rho h
  unfold Seg48.relationRow5077 at r5077

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5077

  unfold Seg48.relationRow5078 at r5078

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5078

  unfold Seg48.relationRow5079 at r5079

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5079

  unfold Seg48.relationRow5080 at r5080

  unfold Seg48.relationRow5081 at r5081

  unfold Seg48.relationRow5082 at r5082

  unfold Seg48.relationRow5083 at r5083

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5083

  unfold Seg48.relationRow5084 at r5084

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5084

  unfold Seg48.relationRow5085 at r5085

  unfold Seg48.relationRow5086 at r5086

  unfold Seg48.relationRow5087 at r5087

  unfold Seg48.relationRow5088 at r5088

  unfold Seg48.relationRow5089 at r5089

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX47 rho = seg48Out0AccX46 rho + rho 37840 := by
    unfold seg48Out0AccX47 seg48Out0AccX46
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 46]

    ring

  have hnexty : seg48Out0AccY47 rho = seg48Out0AccY46 rho + rho 37841 := by
    unfold seg48Out0AccY47 seg48Out0AccY46
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 46]

    ring

  have ha0 : (rho 37832 + rho 37833) * (seg48Out0AccX46 rho + seg48Out0AccY46 rho) = rho 37834 := by
    unfold seg48Out0AccX46 seg48Out0AccY46
    linear_combination r5077
  have ha1 : rho 37833 * seg48Out0AccX46 rho = rho 37835 := by
    unfold seg48Out0AccX46
    linear_combination r5078
  have ha2 : rho 37832 * seg48Out0AccY46 rho = rho 37836 := by
    unfold seg48Out0AccY46
    linear_combination r5079
  have ha3 : 3021 * rho 37835 * rho 37836 = rho 37837 := by
    linear_combination r5080
  have ha4 : rho 37838 * (1 + rho 37837) = rho 37835 + rho 37836 := by
    linear_combination r5081
  have ha5 : rho 37839 * (1 - rho 37837) = rho 37834 - rho 37835 - rho 37836 := by
    linear_combination r5082
  have haddx :
      rho 37838 * (1 + 3021 * (rho 37833 * seg48Out0AccX46 rho) * (rho 37832 * seg48Out0AccY46 rho)) =
        rho 37833 * seg48Out0AccX46 rho + rho 37832 * seg48Out0AccY46 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37839 * (1 - 3021 * (rho 37833 * seg48Out0AccX46 rho) * (rho 37832 * seg48Out0AccY46 rho)) =
        (-1) * (rho 37833 * seg48Out0AccX46 rho) - rho 37832 * seg48Out0AccY46 rho +
          (seg48Out0AccY46 rho - seg48Out0AccX46 rho * (-1)) * (rho 37832 + rho 37833) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37839 * (1 - rho 37837) = rho 37834 - rho 37835 - rho 37836 := ha5
      _ = (-1) * rho 37835 - rho 37836 + (seg48Out0AccY46 rho - seg48Out0AccX46 rho * (-1)) *
          (rho 37832 + rho 37833) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX47 rho = seg48Out0AccX46 rho - Bool.toZMod bit * (seg48Out0AccX46 rho - rho 37838) := by
    have hd : rho 37840 = Bool.toZMod bit * (rho 37838 - seg48Out0AccX46 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX46
      linear_combination -r5083
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY47 rho = seg48Out0AccY46 rho - Bool.toZMod bit * (seg48Out0AccY46 rho - rho 37839) := by
    have hd : rho 37841 = Bool.toZMod bit * (rho 37839 - seg48Out0AccY46 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY46
      linear_combination -r5084
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37832 * rho 37833 = rho 37842 := by linear_combination r5085
  have hd1 : rho 37832 * rho 37832 = rho 37843 := by linear_combination r5086
  have hd2 : rho 37833 * rho 37833 = rho 37844 := by linear_combination r5087
  have hd3 : rho 37845 * (rho 37833 * rho 37833 + rho 37832 * rho 37832 * (-1)) =
      2 * (rho 37832 * rho 37833) := by
    rw [hd0, hd1, hd2]
    linear_combination r5088
  have hd4 : rho 37846 * (2 - (rho 37833 * rho 37833 + rho 37832 * rho 37832 * (-1))) =
      rho 37833 * rho 37833 - rho 37832 * rho 37832 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5089
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX46 rho, seg48Out0AccY46 rho⟩ ⟨rho 37832, rho 37833⟩
    ⟨rho 37838, rho 37839⟩ ⟨seg48Out0AccX47 rho, seg48Out0AccY47 rho⟩ ⟨rho 37845, rho 37846⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows47 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5090 rho ∧ Seg48.relationRow5091 rho ∧ Seg48.relationRow5092 rho ∧ Seg48.relationRow5093 rho ∧ Seg48.relationRow5094 rho ∧ Seg48.relationRow5095 rho ∧ Seg48.relationRow5096 rho ∧ Seg48.relationRow5097 rho ∧ Seg48.relationRow5098 rho ∧ Seg48.relationRow5099 rho ∧ Seg48.relationRow5100 rho ∧ Seg48.relationRow5101 rho ∧ Seg48.relationRow5102 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p63, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart63 at p63

  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5090, r5091, r5092, r5093, r5094, r5095, r5096, r5097, r5098, r5099, r5100, r5101, r5102, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5090, r5091, r5092, r5093, r5094, r5095, r5096, r5097, r5098, r5099, r5100, r5101, r5102⟩

theorem seg48Out0_rung47 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37161 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX47 rho, seg48Out0AccY47 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37845, rho 37846⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX47 rho, seg48Out0AccY47 rho⟩ ⟨rho 37845, rho 37846⟩
        ⟨seg48Out0AccX48 rho, seg48Out0AccY48 rho⟩ ⟨rho 37858, rho 37859⟩ := by
  obtain ⟨r5090, r5091, r5092, r5093, r5094, r5095, r5096, r5097, r5098, r5099, r5100, r5101, r5102⟩ := seg48Out0_rows47 rho h
  unfold Seg48.relationRow5090 at r5090

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5090

  unfold Seg48.relationRow5091 at r5091

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5091

  unfold Seg48.relationRow5092 at r5092

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5092

  unfold Seg48.relationRow5093 at r5093

  unfold Seg48.relationRow5094 at r5094

  unfold Seg48.relationRow5095 at r5095

  unfold Seg48.relationRow5096 at r5096

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5096

  unfold Seg48.relationRow5097 at r5097

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5097

  unfold Seg48.relationRow5098 at r5098

  unfold Seg48.relationRow5099 at r5099

  unfold Seg48.relationRow5100 at r5100

  unfold Seg48.relationRow5101 at r5101

  unfold Seg48.relationRow5102 at r5102

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX48 rho = seg48Out0AccX47 rho + rho 37853 := by
    unfold seg48Out0AccX48 seg48Out0AccX47
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 47]

    ring

  have hnexty : seg48Out0AccY48 rho = seg48Out0AccY47 rho + rho 37854 := by
    unfold seg48Out0AccY48 seg48Out0AccY47
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 47]

    ring

  have ha0 : (rho 37845 + rho 37846) * (seg48Out0AccX47 rho + seg48Out0AccY47 rho) = rho 37847 := by
    unfold seg48Out0AccX47 seg48Out0AccY47
    linear_combination r5090
  have ha1 : rho 37846 * seg48Out0AccX47 rho = rho 37848 := by
    unfold seg48Out0AccX47
    linear_combination r5091
  have ha2 : rho 37845 * seg48Out0AccY47 rho = rho 37849 := by
    unfold seg48Out0AccY47
    linear_combination r5092
  have ha3 : 3021 * rho 37848 * rho 37849 = rho 37850 := by
    linear_combination r5093
  have ha4 : rho 37851 * (1 + rho 37850) = rho 37848 + rho 37849 := by
    linear_combination r5094
  have ha5 : rho 37852 * (1 - rho 37850) = rho 37847 - rho 37848 - rho 37849 := by
    linear_combination r5095
  have haddx :
      rho 37851 * (1 + 3021 * (rho 37846 * seg48Out0AccX47 rho) * (rho 37845 * seg48Out0AccY47 rho)) =
        rho 37846 * seg48Out0AccX47 rho + rho 37845 * seg48Out0AccY47 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37852 * (1 - 3021 * (rho 37846 * seg48Out0AccX47 rho) * (rho 37845 * seg48Out0AccY47 rho)) =
        (-1) * (rho 37846 * seg48Out0AccX47 rho) - rho 37845 * seg48Out0AccY47 rho +
          (seg48Out0AccY47 rho - seg48Out0AccX47 rho * (-1)) * (rho 37845 + rho 37846) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37852 * (1 - rho 37850) = rho 37847 - rho 37848 - rho 37849 := ha5
      _ = (-1) * rho 37848 - rho 37849 + (seg48Out0AccY47 rho - seg48Out0AccX47 rho * (-1)) *
          (rho 37845 + rho 37846) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX48 rho = seg48Out0AccX47 rho - Bool.toZMod bit * (seg48Out0AccX47 rho - rho 37851) := by
    have hd : rho 37853 = Bool.toZMod bit * (rho 37851 - seg48Out0AccX47 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX47
      linear_combination -r5096
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY48 rho = seg48Out0AccY47 rho - Bool.toZMod bit * (seg48Out0AccY47 rho - rho 37852) := by
    have hd : rho 37854 = Bool.toZMod bit * (rho 37852 - seg48Out0AccY47 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY47
      linear_combination -r5097
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37845 * rho 37846 = rho 37855 := by linear_combination r5098
  have hd1 : rho 37845 * rho 37845 = rho 37856 := by linear_combination r5099
  have hd2 : rho 37846 * rho 37846 = rho 37857 := by linear_combination r5100
  have hd3 : rho 37858 * (rho 37846 * rho 37846 + rho 37845 * rho 37845 * (-1)) =
      2 * (rho 37845 * rho 37846) := by
    rw [hd0, hd1, hd2]
    linear_combination r5101
  have hd4 : rho 37859 * (2 - (rho 37846 * rho 37846 + rho 37845 * rho 37845 * (-1))) =
      rho 37846 * rho 37846 - rho 37845 * rho 37845 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5102
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX47 rho, seg48Out0AccY47 rho⟩ ⟨rho 37845, rho 37846⟩
    ⟨rho 37851, rho 37852⟩ ⟨seg48Out0AccX48 rho, seg48Out0AccY48 rho⟩ ⟨rho 37858, rho 37859⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows48 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5103 rho ∧ Seg48.relationRow5104 rho ∧ Seg48.relationRow5105 rho ∧ Seg48.relationRow5106 rho ∧ Seg48.relationRow5107 rho ∧ Seg48.relationRow5108 rho ∧ Seg48.relationRow5109 rho ∧ Seg48.relationRow5110 rho ∧ Seg48.relationRow5111 rho ∧ Seg48.relationRow5112 rho ∧ Seg48.relationRow5113 rho ∧ Seg48.relationRow5114 rho ∧ Seg48.relationRow5115 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p63, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart63 at p63

  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5103, r5104, r5105, r5106, r5107, r5108, r5109, r5110, r5111, r5112, r5113, r5114, r5115, _, _, _, _⟩

  exact ⟨r5103, r5104, r5105, r5106, r5107, r5108, r5109, r5110, r5111, r5112, r5113, r5114, r5115⟩

theorem seg48Out0_rung48 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37162 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX48 rho, seg48Out0AccY48 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37858, rho 37859⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX48 rho, seg48Out0AccY48 rho⟩ ⟨rho 37858, rho 37859⟩
        ⟨seg48Out0AccX49 rho, seg48Out0AccY49 rho⟩ ⟨rho 37871, rho 37872⟩ := by
  obtain ⟨r5103, r5104, r5105, r5106, r5107, r5108, r5109, r5110, r5111, r5112, r5113, r5114, r5115⟩ := seg48Out0_rows48 rho h
  unfold Seg48.relationRow5103 at r5103

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5103

  unfold Seg48.relationRow5104 at r5104

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5104

  unfold Seg48.relationRow5105 at r5105

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5105

  unfold Seg48.relationRow5106 at r5106

  unfold Seg48.relationRow5107 at r5107

  unfold Seg48.relationRow5108 at r5108

  unfold Seg48.relationRow5109 at r5109

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5109

  unfold Seg48.relationRow5110 at r5110

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5110

  unfold Seg48.relationRow5111 at r5111

  unfold Seg48.relationRow5112 at r5112

  unfold Seg48.relationRow5113 at r5113

  unfold Seg48.relationRow5114 at r5114

  unfold Seg48.relationRow5115 at r5115

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX49 rho = seg48Out0AccX48 rho + rho 37866 := by
    unfold seg48Out0AccX49 seg48Out0AccX48
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 48]

    ring

  have hnexty : seg48Out0AccY49 rho = seg48Out0AccY48 rho + rho 37867 := by
    unfold seg48Out0AccY49 seg48Out0AccY48
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 48]

    ring

  have ha0 : (rho 37858 + rho 37859) * (seg48Out0AccX48 rho + seg48Out0AccY48 rho) = rho 37860 := by
    unfold seg48Out0AccX48 seg48Out0AccY48
    linear_combination r5103
  have ha1 : rho 37859 * seg48Out0AccX48 rho = rho 37861 := by
    unfold seg48Out0AccX48
    linear_combination r5104
  have ha2 : rho 37858 * seg48Out0AccY48 rho = rho 37862 := by
    unfold seg48Out0AccY48
    linear_combination r5105
  have ha3 : 3021 * rho 37861 * rho 37862 = rho 37863 := by
    linear_combination r5106
  have ha4 : rho 37864 * (1 + rho 37863) = rho 37861 + rho 37862 := by
    linear_combination r5107
  have ha5 : rho 37865 * (1 - rho 37863) = rho 37860 - rho 37861 - rho 37862 := by
    linear_combination r5108
  have haddx :
      rho 37864 * (1 + 3021 * (rho 37859 * seg48Out0AccX48 rho) * (rho 37858 * seg48Out0AccY48 rho)) =
        rho 37859 * seg48Out0AccX48 rho + rho 37858 * seg48Out0AccY48 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37865 * (1 - 3021 * (rho 37859 * seg48Out0AccX48 rho) * (rho 37858 * seg48Out0AccY48 rho)) =
        (-1) * (rho 37859 * seg48Out0AccX48 rho) - rho 37858 * seg48Out0AccY48 rho +
          (seg48Out0AccY48 rho - seg48Out0AccX48 rho * (-1)) * (rho 37858 + rho 37859) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37865 * (1 - rho 37863) = rho 37860 - rho 37861 - rho 37862 := ha5
      _ = (-1) * rho 37861 - rho 37862 + (seg48Out0AccY48 rho - seg48Out0AccX48 rho * (-1)) *
          (rho 37858 + rho 37859) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX49 rho = seg48Out0AccX48 rho - Bool.toZMod bit * (seg48Out0AccX48 rho - rho 37864) := by
    have hd : rho 37866 = Bool.toZMod bit * (rho 37864 - seg48Out0AccX48 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX48
      linear_combination -r5109
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY49 rho = seg48Out0AccY48 rho - Bool.toZMod bit * (seg48Out0AccY48 rho - rho 37865) := by
    have hd : rho 37867 = Bool.toZMod bit * (rho 37865 - seg48Out0AccY48 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY48
      linear_combination -r5110
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37858 * rho 37859 = rho 37868 := by linear_combination r5111
  have hd1 : rho 37858 * rho 37858 = rho 37869 := by linear_combination r5112
  have hd2 : rho 37859 * rho 37859 = rho 37870 := by linear_combination r5113
  have hd3 : rho 37871 * (rho 37859 * rho 37859 + rho 37858 * rho 37858 * (-1)) =
      2 * (rho 37858 * rho 37859) := by
    rw [hd0, hd1, hd2]
    linear_combination r5114
  have hd4 : rho 37872 * (2 - (rho 37859 * rho 37859 + rho 37858 * rho 37858 * (-1))) =
      rho 37859 * rho 37859 - rho 37858 * rho 37858 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5115
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX48 rho, seg48Out0AccY48 rho⟩ ⟨rho 37858, rho 37859⟩
    ⟨rho 37864, rho 37865⟩ ⟨seg48Out0AccX49 rho, seg48Out0AccY49 rho⟩ ⟨rho 37871, rho 37872⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows49 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5116 rho ∧ Seg48.relationRow5117 rho ∧ Seg48.relationRow5118 rho ∧ Seg48.relationRow5119 rho ∧ Seg48.relationRow5120 rho ∧ Seg48.relationRow5121 rho ∧ Seg48.relationRow5122 rho ∧ Seg48.relationRow5123 rho ∧ Seg48.relationRow5124 rho ∧ Seg48.relationRow5125 rho ∧ Seg48.relationRow5126 rho ∧ Seg48.relationRow5127 rho ∧ Seg48.relationRow5128 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p63, p64, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart63 at p63

  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5116, r5117, r5118, r5119⟩

  unfold Seg48.relationPart64 at p64

  rcases p64 with ⟨r5120, r5121, r5122, r5123, r5124, r5125, r5126, r5127, r5128, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5116, r5117, r5118, r5119, r5120, r5121, r5122, r5123, r5124, r5125, r5126, r5127, r5128⟩

theorem seg48Out0_rung49 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37163 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX49 rho, seg48Out0AccY49 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37871, rho 37872⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX49 rho, seg48Out0AccY49 rho⟩ ⟨rho 37871, rho 37872⟩
        ⟨seg48Out0AccX50 rho, seg48Out0AccY50 rho⟩ ⟨rho 37884, rho 37885⟩ := by
  obtain ⟨r5116, r5117, r5118, r5119, r5120, r5121, r5122, r5123, r5124, r5125, r5126, r5127, r5128⟩ := seg48Out0_rows49 rho h
  unfold Seg48.relationRow5116 at r5116

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5116

  unfold Seg48.relationRow5117 at r5117

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5117

  unfold Seg48.relationRow5118 at r5118

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5118

  unfold Seg48.relationRow5119 at r5119

  unfold Seg48.relationRow5120 at r5120

  unfold Seg48.relationRow5121 at r5121

  unfold Seg48.relationRow5122 at r5122

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5122

  unfold Seg48.relationRow5123 at r5123

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5123

  unfold Seg48.relationRow5124 at r5124

  unfold Seg48.relationRow5125 at r5125

  unfold Seg48.relationRow5126 at r5126

  unfold Seg48.relationRow5127 at r5127

  unfold Seg48.relationRow5128 at r5128

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX50 rho = seg48Out0AccX49 rho + rho 37879 := by
    unfold seg48Out0AccX50 seg48Out0AccX49
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 49]

    ring

  have hnexty : seg48Out0AccY50 rho = seg48Out0AccY49 rho + rho 37880 := by
    unfold seg48Out0AccY50 seg48Out0AccY49
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 49]

    ring

  have ha0 : (rho 37871 + rho 37872) * (seg48Out0AccX49 rho + seg48Out0AccY49 rho) = rho 37873 := by
    unfold seg48Out0AccX49 seg48Out0AccY49
    linear_combination r5116
  have ha1 : rho 37872 * seg48Out0AccX49 rho = rho 37874 := by
    unfold seg48Out0AccX49
    linear_combination r5117
  have ha2 : rho 37871 * seg48Out0AccY49 rho = rho 37875 := by
    unfold seg48Out0AccY49
    linear_combination r5118
  have ha3 : 3021 * rho 37874 * rho 37875 = rho 37876 := by
    linear_combination r5119
  have ha4 : rho 37877 * (1 + rho 37876) = rho 37874 + rho 37875 := by
    linear_combination r5120
  have ha5 : rho 37878 * (1 - rho 37876) = rho 37873 - rho 37874 - rho 37875 := by
    linear_combination r5121
  have haddx :
      rho 37877 * (1 + 3021 * (rho 37872 * seg48Out0AccX49 rho) * (rho 37871 * seg48Out0AccY49 rho)) =
        rho 37872 * seg48Out0AccX49 rho + rho 37871 * seg48Out0AccY49 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37878 * (1 - 3021 * (rho 37872 * seg48Out0AccX49 rho) * (rho 37871 * seg48Out0AccY49 rho)) =
        (-1) * (rho 37872 * seg48Out0AccX49 rho) - rho 37871 * seg48Out0AccY49 rho +
          (seg48Out0AccY49 rho - seg48Out0AccX49 rho * (-1)) * (rho 37871 + rho 37872) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37878 * (1 - rho 37876) = rho 37873 - rho 37874 - rho 37875 := ha5
      _ = (-1) * rho 37874 - rho 37875 + (seg48Out0AccY49 rho - seg48Out0AccX49 rho * (-1)) *
          (rho 37871 + rho 37872) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX50 rho = seg48Out0AccX49 rho - Bool.toZMod bit * (seg48Out0AccX49 rho - rho 37877) := by
    have hd : rho 37879 = Bool.toZMod bit * (rho 37877 - seg48Out0AccX49 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX49
      linear_combination -r5122
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY50 rho = seg48Out0AccY49 rho - Bool.toZMod bit * (seg48Out0AccY49 rho - rho 37878) := by
    have hd : rho 37880 = Bool.toZMod bit * (rho 37878 - seg48Out0AccY49 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY49
      linear_combination -r5123
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37871 * rho 37872 = rho 37881 := by linear_combination r5124
  have hd1 : rho 37871 * rho 37871 = rho 37882 := by linear_combination r5125
  have hd2 : rho 37872 * rho 37872 = rho 37883 := by linear_combination r5126
  have hd3 : rho 37884 * (rho 37872 * rho 37872 + rho 37871 * rho 37871 * (-1)) =
      2 * (rho 37871 * rho 37872) := by
    rw [hd0, hd1, hd2]
    linear_combination r5127
  have hd4 : rho 37885 * (2 - (rho 37872 * rho 37872 + rho 37871 * rho 37871 * (-1))) =
      rho 37872 * rho 37872 - rho 37871 * rho 37871 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5128
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX49 rho, seg48Out0AccY49 rho⟩ ⟨rho 37871, rho 37872⟩
    ⟨rho 37877, rho 37878⟩ ⟨seg48Out0AccX50 rho, seg48Out0AccY50 rho⟩ ⟨rho 37884, rho 37885⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows50 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5129 rho ∧ Seg48.relationRow5130 rho ∧ Seg48.relationRow5131 rho ∧ Seg48.relationRow5132 rho ∧ Seg48.relationRow5133 rho ∧ Seg48.relationRow5134 rho ∧ Seg48.relationRow5135 rho ∧ Seg48.relationRow5136 rho ∧ Seg48.relationRow5137 rho ∧ Seg48.relationRow5138 rho ∧ Seg48.relationRow5139 rho ∧ Seg48.relationRow5140 rho ∧ Seg48.relationRow5141 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p64, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart64 at p64

  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, r5129, r5130, r5131, r5132, r5133, r5134, r5135, r5136, r5137, r5138, r5139, r5140, r5141, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5129, r5130, r5131, r5132, r5133, r5134, r5135, r5136, r5137, r5138, r5139, r5140, r5141⟩

theorem seg48Out0_rung50 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37164 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX50 rho, seg48Out0AccY50 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37884, rho 37885⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX50 rho, seg48Out0AccY50 rho⟩ ⟨rho 37884, rho 37885⟩
        ⟨seg48Out0AccX51 rho, seg48Out0AccY51 rho⟩ ⟨rho 37897, rho 37898⟩ := by
  obtain ⟨r5129, r5130, r5131, r5132, r5133, r5134, r5135, r5136, r5137, r5138, r5139, r5140, r5141⟩ := seg48Out0_rows50 rho h
  unfold Seg48.relationRow5129 at r5129

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5129

  unfold Seg48.relationRow5130 at r5130

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5130

  unfold Seg48.relationRow5131 at r5131

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5131

  unfold Seg48.relationRow5132 at r5132

  unfold Seg48.relationRow5133 at r5133

  unfold Seg48.relationRow5134 at r5134

  unfold Seg48.relationRow5135 at r5135

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5135

  unfold Seg48.relationRow5136 at r5136

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5136

  unfold Seg48.relationRow5137 at r5137

  unfold Seg48.relationRow5138 at r5138

  unfold Seg48.relationRow5139 at r5139

  unfold Seg48.relationRow5140 at r5140

  unfold Seg48.relationRow5141 at r5141

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX51 rho = seg48Out0AccX50 rho + rho 37892 := by
    unfold seg48Out0AccX51 seg48Out0AccX50
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 50]

    ring

  have hnexty : seg48Out0AccY51 rho = seg48Out0AccY50 rho + rho 37893 := by
    unfold seg48Out0AccY51 seg48Out0AccY50
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 50]

    ring

  have ha0 : (rho 37884 + rho 37885) * (seg48Out0AccX50 rho + seg48Out0AccY50 rho) = rho 37886 := by
    unfold seg48Out0AccX50 seg48Out0AccY50
    linear_combination r5129
  have ha1 : rho 37885 * seg48Out0AccX50 rho = rho 37887 := by
    unfold seg48Out0AccX50
    linear_combination r5130
  have ha2 : rho 37884 * seg48Out0AccY50 rho = rho 37888 := by
    unfold seg48Out0AccY50
    linear_combination r5131
  have ha3 : 3021 * rho 37887 * rho 37888 = rho 37889 := by
    linear_combination r5132
  have ha4 : rho 37890 * (1 + rho 37889) = rho 37887 + rho 37888 := by
    linear_combination r5133
  have ha5 : rho 37891 * (1 - rho 37889) = rho 37886 - rho 37887 - rho 37888 := by
    linear_combination r5134
  have haddx :
      rho 37890 * (1 + 3021 * (rho 37885 * seg48Out0AccX50 rho) * (rho 37884 * seg48Out0AccY50 rho)) =
        rho 37885 * seg48Out0AccX50 rho + rho 37884 * seg48Out0AccY50 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37891 * (1 - 3021 * (rho 37885 * seg48Out0AccX50 rho) * (rho 37884 * seg48Out0AccY50 rho)) =
        (-1) * (rho 37885 * seg48Out0AccX50 rho) - rho 37884 * seg48Out0AccY50 rho +
          (seg48Out0AccY50 rho - seg48Out0AccX50 rho * (-1)) * (rho 37884 + rho 37885) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37891 * (1 - rho 37889) = rho 37886 - rho 37887 - rho 37888 := ha5
      _ = (-1) * rho 37887 - rho 37888 + (seg48Out0AccY50 rho - seg48Out0AccX50 rho * (-1)) *
          (rho 37884 + rho 37885) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX51 rho = seg48Out0AccX50 rho - Bool.toZMod bit * (seg48Out0AccX50 rho - rho 37890) := by
    have hd : rho 37892 = Bool.toZMod bit * (rho 37890 - seg48Out0AccX50 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX50
      linear_combination -r5135
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY51 rho = seg48Out0AccY50 rho - Bool.toZMod bit * (seg48Out0AccY50 rho - rho 37891) := by
    have hd : rho 37893 = Bool.toZMod bit * (rho 37891 - seg48Out0AccY50 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY50
      linear_combination -r5136
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37884 * rho 37885 = rho 37894 := by linear_combination r5137
  have hd1 : rho 37884 * rho 37884 = rho 37895 := by linear_combination r5138
  have hd2 : rho 37885 * rho 37885 = rho 37896 := by linear_combination r5139
  have hd3 : rho 37897 * (rho 37885 * rho 37885 + rho 37884 * rho 37884 * (-1)) =
      2 * (rho 37884 * rho 37885) := by
    rw [hd0, hd1, hd2]
    linear_combination r5140
  have hd4 : rho 37898 * (2 - (rho 37885 * rho 37885 + rho 37884 * rho 37884 * (-1))) =
      rho 37885 * rho 37885 - rho 37884 * rho 37884 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5141
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX50 rho, seg48Out0AccY50 rho⟩ ⟨rho 37884, rho 37885⟩
    ⟨rho 37890, rho 37891⟩ ⟨seg48Out0AccX51 rho, seg48Out0AccY51 rho⟩ ⟨rho 37897, rho 37898⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows51 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5142 rho ∧ Seg48.relationRow5143 rho ∧ Seg48.relationRow5144 rho ∧ Seg48.relationRow5145 rho ∧ Seg48.relationRow5146 rho ∧ Seg48.relationRow5147 rho ∧ Seg48.relationRow5148 rho ∧ Seg48.relationRow5149 rho ∧ Seg48.relationRow5150 rho ∧ Seg48.relationRow5151 rho ∧ Seg48.relationRow5152 rho ∧ Seg48.relationRow5153 rho ∧ Seg48.relationRow5154 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p64, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart64 at p64

  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5142, r5143, r5144, r5145, r5146, r5147, r5148, r5149, r5150, r5151, r5152, r5153, r5154, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5142, r5143, r5144, r5145, r5146, r5147, r5148, r5149, r5150, r5151, r5152, r5153, r5154⟩

theorem seg48Out0_rung51 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37165 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX51 rho, seg48Out0AccY51 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37897, rho 37898⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX51 rho, seg48Out0AccY51 rho⟩ ⟨rho 37897, rho 37898⟩
        ⟨seg48Out0AccX52 rho, seg48Out0AccY52 rho⟩ ⟨rho 37910, rho 37911⟩ := by
  obtain ⟨r5142, r5143, r5144, r5145, r5146, r5147, r5148, r5149, r5150, r5151, r5152, r5153, r5154⟩ := seg48Out0_rows51 rho h
  unfold Seg48.relationRow5142 at r5142

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5142

  unfold Seg48.relationRow5143 at r5143

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5143

  unfold Seg48.relationRow5144 at r5144

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5144

  unfold Seg48.relationRow5145 at r5145

  unfold Seg48.relationRow5146 at r5146

  unfold Seg48.relationRow5147 at r5147

  unfold Seg48.relationRow5148 at r5148

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5148

  unfold Seg48.relationRow5149 at r5149

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5149

  unfold Seg48.relationRow5150 at r5150

  unfold Seg48.relationRow5151 at r5151

  unfold Seg48.relationRow5152 at r5152

  unfold Seg48.relationRow5153 at r5153

  unfold Seg48.relationRow5154 at r5154

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX52 rho = seg48Out0AccX51 rho + rho 37905 := by
    unfold seg48Out0AccX52 seg48Out0AccX51
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 51]

    ring

  have hnexty : seg48Out0AccY52 rho = seg48Out0AccY51 rho + rho 37906 := by
    unfold seg48Out0AccY52 seg48Out0AccY51
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 51]

    ring

  have ha0 : (rho 37897 + rho 37898) * (seg48Out0AccX51 rho + seg48Out0AccY51 rho) = rho 37899 := by
    unfold seg48Out0AccX51 seg48Out0AccY51
    linear_combination r5142
  have ha1 : rho 37898 * seg48Out0AccX51 rho = rho 37900 := by
    unfold seg48Out0AccX51
    linear_combination r5143
  have ha2 : rho 37897 * seg48Out0AccY51 rho = rho 37901 := by
    unfold seg48Out0AccY51
    linear_combination r5144
  have ha3 : 3021 * rho 37900 * rho 37901 = rho 37902 := by
    linear_combination r5145
  have ha4 : rho 37903 * (1 + rho 37902) = rho 37900 + rho 37901 := by
    linear_combination r5146
  have ha5 : rho 37904 * (1 - rho 37902) = rho 37899 - rho 37900 - rho 37901 := by
    linear_combination r5147
  have haddx :
      rho 37903 * (1 + 3021 * (rho 37898 * seg48Out0AccX51 rho) * (rho 37897 * seg48Out0AccY51 rho)) =
        rho 37898 * seg48Out0AccX51 rho + rho 37897 * seg48Out0AccY51 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37904 * (1 - 3021 * (rho 37898 * seg48Out0AccX51 rho) * (rho 37897 * seg48Out0AccY51 rho)) =
        (-1) * (rho 37898 * seg48Out0AccX51 rho) - rho 37897 * seg48Out0AccY51 rho +
          (seg48Out0AccY51 rho - seg48Out0AccX51 rho * (-1)) * (rho 37897 + rho 37898) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37904 * (1 - rho 37902) = rho 37899 - rho 37900 - rho 37901 := ha5
      _ = (-1) * rho 37900 - rho 37901 + (seg48Out0AccY51 rho - seg48Out0AccX51 rho * (-1)) *
          (rho 37897 + rho 37898) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX52 rho = seg48Out0AccX51 rho - Bool.toZMod bit * (seg48Out0AccX51 rho - rho 37903) := by
    have hd : rho 37905 = Bool.toZMod bit * (rho 37903 - seg48Out0AccX51 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX51
      linear_combination -r5148
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY52 rho = seg48Out0AccY51 rho - Bool.toZMod bit * (seg48Out0AccY51 rho - rho 37904) := by
    have hd : rho 37906 = Bool.toZMod bit * (rho 37904 - seg48Out0AccY51 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY51
      linear_combination -r5149
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37897 * rho 37898 = rho 37907 := by linear_combination r5150
  have hd1 : rho 37897 * rho 37897 = rho 37908 := by linear_combination r5151
  have hd2 : rho 37898 * rho 37898 = rho 37909 := by linear_combination r5152
  have hd3 : rho 37910 * (rho 37898 * rho 37898 + rho 37897 * rho 37897 * (-1)) =
      2 * (rho 37897 * rho 37898) := by
    rw [hd0, hd1, hd2]
    linear_combination r5153
  have hd4 : rho 37911 * (2 - (rho 37898 * rho 37898 + rho 37897 * rho 37897 * (-1))) =
      rho 37898 * rho 37898 - rho 37897 * rho 37897 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5154
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX51 rho, seg48Out0AccY51 rho⟩ ⟨rho 37897, rho 37898⟩
    ⟨rho 37903, rho 37904⟩ ⟨seg48Out0AccX52 rho, seg48Out0AccY52 rho⟩ ⟨rho 37910, rho 37911⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows52 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5155 rho ∧ Seg48.relationRow5156 rho ∧ Seg48.relationRow5157 rho ∧ Seg48.relationRow5158 rho ∧ Seg48.relationRow5159 rho ∧ Seg48.relationRow5160 rho ∧ Seg48.relationRow5161 rho ∧ Seg48.relationRow5162 rho ∧ Seg48.relationRow5163 rho ∧ Seg48.relationRow5164 rho ∧ Seg48.relationRow5165 rho ∧ Seg48.relationRow5166 rho ∧ Seg48.relationRow5167 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p64, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart64 at p64

  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5155, r5156, r5157, r5158, r5159, r5160, r5161, r5162, r5163, r5164, r5165, r5166, r5167, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5155, r5156, r5157, r5158, r5159, r5160, r5161, r5162, r5163, r5164, r5165, r5166, r5167⟩

theorem seg48Out0_rung52 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37166 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX52 rho, seg48Out0AccY52 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37910, rho 37911⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX52 rho, seg48Out0AccY52 rho⟩ ⟨rho 37910, rho 37911⟩
        ⟨seg48Out0AccX53 rho, seg48Out0AccY53 rho⟩ ⟨rho 37923, rho 37924⟩ := by
  obtain ⟨r5155, r5156, r5157, r5158, r5159, r5160, r5161, r5162, r5163, r5164, r5165, r5166, r5167⟩ := seg48Out0_rows52 rho h
  unfold Seg48.relationRow5155 at r5155

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5155

  unfold Seg48.relationRow5156 at r5156

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5156

  unfold Seg48.relationRow5157 at r5157

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5157

  unfold Seg48.relationRow5158 at r5158

  unfold Seg48.relationRow5159 at r5159

  unfold Seg48.relationRow5160 at r5160

  unfold Seg48.relationRow5161 at r5161

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5161

  unfold Seg48.relationRow5162 at r5162

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5162

  unfold Seg48.relationRow5163 at r5163

  unfold Seg48.relationRow5164 at r5164

  unfold Seg48.relationRow5165 at r5165

  unfold Seg48.relationRow5166 at r5166

  unfold Seg48.relationRow5167 at r5167

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX53 rho = seg48Out0AccX52 rho + rho 37918 := by
    unfold seg48Out0AccX53 seg48Out0AccX52
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 52]

    ring

  have hnexty : seg48Out0AccY53 rho = seg48Out0AccY52 rho + rho 37919 := by
    unfold seg48Out0AccY53 seg48Out0AccY52
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 52]

    ring

  have ha0 : (rho 37910 + rho 37911) * (seg48Out0AccX52 rho + seg48Out0AccY52 rho) = rho 37912 := by
    unfold seg48Out0AccX52 seg48Out0AccY52
    linear_combination r5155
  have ha1 : rho 37911 * seg48Out0AccX52 rho = rho 37913 := by
    unfold seg48Out0AccX52
    linear_combination r5156
  have ha2 : rho 37910 * seg48Out0AccY52 rho = rho 37914 := by
    unfold seg48Out0AccY52
    linear_combination r5157
  have ha3 : 3021 * rho 37913 * rho 37914 = rho 37915 := by
    linear_combination r5158
  have ha4 : rho 37916 * (1 + rho 37915) = rho 37913 + rho 37914 := by
    linear_combination r5159
  have ha5 : rho 37917 * (1 - rho 37915) = rho 37912 - rho 37913 - rho 37914 := by
    linear_combination r5160
  have haddx :
      rho 37916 * (1 + 3021 * (rho 37911 * seg48Out0AccX52 rho) * (rho 37910 * seg48Out0AccY52 rho)) =
        rho 37911 * seg48Out0AccX52 rho + rho 37910 * seg48Out0AccY52 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37917 * (1 - 3021 * (rho 37911 * seg48Out0AccX52 rho) * (rho 37910 * seg48Out0AccY52 rho)) =
        (-1) * (rho 37911 * seg48Out0AccX52 rho) - rho 37910 * seg48Out0AccY52 rho +
          (seg48Out0AccY52 rho - seg48Out0AccX52 rho * (-1)) * (rho 37910 + rho 37911) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37917 * (1 - rho 37915) = rho 37912 - rho 37913 - rho 37914 := ha5
      _ = (-1) * rho 37913 - rho 37914 + (seg48Out0AccY52 rho - seg48Out0AccX52 rho * (-1)) *
          (rho 37910 + rho 37911) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX53 rho = seg48Out0AccX52 rho - Bool.toZMod bit * (seg48Out0AccX52 rho - rho 37916) := by
    have hd : rho 37918 = Bool.toZMod bit * (rho 37916 - seg48Out0AccX52 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX52
      linear_combination -r5161
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY53 rho = seg48Out0AccY52 rho - Bool.toZMod bit * (seg48Out0AccY52 rho - rho 37917) := by
    have hd : rho 37919 = Bool.toZMod bit * (rho 37917 - seg48Out0AccY52 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY52
      linear_combination -r5162
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37910 * rho 37911 = rho 37920 := by linear_combination r5163
  have hd1 : rho 37910 * rho 37910 = rho 37921 := by linear_combination r5164
  have hd2 : rho 37911 * rho 37911 = rho 37922 := by linear_combination r5165
  have hd3 : rho 37923 * (rho 37911 * rho 37911 + rho 37910 * rho 37910 * (-1)) =
      2 * (rho 37910 * rho 37911) := by
    rw [hd0, hd1, hd2]
    linear_combination r5166
  have hd4 : rho 37924 * (2 - (rho 37911 * rho 37911 + rho 37910 * rho 37910 * (-1))) =
      rho 37911 * rho 37911 - rho 37910 * rho 37910 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5167
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX52 rho, seg48Out0AccY52 rho⟩ ⟨rho 37910, rho 37911⟩
    ⟨rho 37916, rho 37917⟩ ⟨seg48Out0AccX53 rho, seg48Out0AccY53 rho⟩ ⟨rho 37923, rho 37924⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows53 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5168 rho ∧ Seg48.relationRow5169 rho ∧ Seg48.relationRow5170 rho ∧ Seg48.relationRow5171 rho ∧ Seg48.relationRow5172 rho ∧ Seg48.relationRow5173 rho ∧ Seg48.relationRow5174 rho ∧ Seg48.relationRow5175 rho ∧ Seg48.relationRow5176 rho ∧ Seg48.relationRow5177 rho ∧ Seg48.relationRow5178 rho ∧ Seg48.relationRow5179 rho ∧ Seg48.relationRow5180 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p64, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart64 at p64

  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5168, r5169, r5170, r5171, r5172, r5173, r5174, r5175, r5176, r5177, r5178, r5179, r5180, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5168, r5169, r5170, r5171, r5172, r5173, r5174, r5175, r5176, r5177, r5178, r5179, r5180⟩

theorem seg48Out0_rung53 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37167 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX53 rho, seg48Out0AccY53 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37923, rho 37924⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX53 rho, seg48Out0AccY53 rho⟩ ⟨rho 37923, rho 37924⟩
        ⟨seg48Out0AccX54 rho, seg48Out0AccY54 rho⟩ ⟨rho 37936, rho 37937⟩ := by
  obtain ⟨r5168, r5169, r5170, r5171, r5172, r5173, r5174, r5175, r5176, r5177, r5178, r5179, r5180⟩ := seg48Out0_rows53 rho h
  unfold Seg48.relationRow5168 at r5168

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5168

  unfold Seg48.relationRow5169 at r5169

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5169

  unfold Seg48.relationRow5170 at r5170

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5170

  unfold Seg48.relationRow5171 at r5171

  unfold Seg48.relationRow5172 at r5172

  unfold Seg48.relationRow5173 at r5173

  unfold Seg48.relationRow5174 at r5174

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5174

  unfold Seg48.relationRow5175 at r5175

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5175

  unfold Seg48.relationRow5176 at r5176

  unfold Seg48.relationRow5177 at r5177

  unfold Seg48.relationRow5178 at r5178

  unfold Seg48.relationRow5179 at r5179

  unfold Seg48.relationRow5180 at r5180

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX54 rho = seg48Out0AccX53 rho + rho 37931 := by
    unfold seg48Out0AccX54 seg48Out0AccX53
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 53]

    ring

  have hnexty : seg48Out0AccY54 rho = seg48Out0AccY53 rho + rho 37932 := by
    unfold seg48Out0AccY54 seg48Out0AccY53
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 53]

    ring

  have ha0 : (rho 37923 + rho 37924) * (seg48Out0AccX53 rho + seg48Out0AccY53 rho) = rho 37925 := by
    unfold seg48Out0AccX53 seg48Out0AccY53
    linear_combination r5168
  have ha1 : rho 37924 * seg48Out0AccX53 rho = rho 37926 := by
    unfold seg48Out0AccX53
    linear_combination r5169
  have ha2 : rho 37923 * seg48Out0AccY53 rho = rho 37927 := by
    unfold seg48Out0AccY53
    linear_combination r5170
  have ha3 : 3021 * rho 37926 * rho 37927 = rho 37928 := by
    linear_combination r5171
  have ha4 : rho 37929 * (1 + rho 37928) = rho 37926 + rho 37927 := by
    linear_combination r5172
  have ha5 : rho 37930 * (1 - rho 37928) = rho 37925 - rho 37926 - rho 37927 := by
    linear_combination r5173
  have haddx :
      rho 37929 * (1 + 3021 * (rho 37924 * seg48Out0AccX53 rho) * (rho 37923 * seg48Out0AccY53 rho)) =
        rho 37924 * seg48Out0AccX53 rho + rho 37923 * seg48Out0AccY53 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37930 * (1 - 3021 * (rho 37924 * seg48Out0AccX53 rho) * (rho 37923 * seg48Out0AccY53 rho)) =
        (-1) * (rho 37924 * seg48Out0AccX53 rho) - rho 37923 * seg48Out0AccY53 rho +
          (seg48Out0AccY53 rho - seg48Out0AccX53 rho * (-1)) * (rho 37923 + rho 37924) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37930 * (1 - rho 37928) = rho 37925 - rho 37926 - rho 37927 := ha5
      _ = (-1) * rho 37926 - rho 37927 + (seg48Out0AccY53 rho - seg48Out0AccX53 rho * (-1)) *
          (rho 37923 + rho 37924) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX54 rho = seg48Out0AccX53 rho - Bool.toZMod bit * (seg48Out0AccX53 rho - rho 37929) := by
    have hd : rho 37931 = Bool.toZMod bit * (rho 37929 - seg48Out0AccX53 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX53
      linear_combination -r5174
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY54 rho = seg48Out0AccY53 rho - Bool.toZMod bit * (seg48Out0AccY53 rho - rho 37930) := by
    have hd : rho 37932 = Bool.toZMod bit * (rho 37930 - seg48Out0AccY53 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY53
      linear_combination -r5175
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37923 * rho 37924 = rho 37933 := by linear_combination r5176
  have hd1 : rho 37923 * rho 37923 = rho 37934 := by linear_combination r5177
  have hd2 : rho 37924 * rho 37924 = rho 37935 := by linear_combination r5178
  have hd3 : rho 37936 * (rho 37924 * rho 37924 + rho 37923 * rho 37923 * (-1)) =
      2 * (rho 37923 * rho 37924) := by
    rw [hd0, hd1, hd2]
    linear_combination r5179
  have hd4 : rho 37937 * (2 - (rho 37924 * rho 37924 + rho 37923 * rho 37923 * (-1))) =
      rho 37924 * rho 37924 - rho 37923 * rho 37923 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5180
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX53 rho, seg48Out0AccY53 rho⟩ ⟨rho 37923, rho 37924⟩
    ⟨rho 37929, rho 37930⟩ ⟨seg48Out0AccX54 rho, seg48Out0AccY54 rho⟩ ⟨rho 37936, rho 37937⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows54 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5181 rho ∧ Seg48.relationRow5182 rho ∧ Seg48.relationRow5183 rho ∧ Seg48.relationRow5184 rho ∧ Seg48.relationRow5185 rho ∧ Seg48.relationRow5186 rho ∧ Seg48.relationRow5187 rho ∧ Seg48.relationRow5188 rho ∧ Seg48.relationRow5189 rho ∧ Seg48.relationRow5190 rho ∧ Seg48.relationRow5191 rho ∧ Seg48.relationRow5192 rho ∧ Seg48.relationRow5193 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p64, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart64 at p64

  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5181, r5182, r5183, r5184, r5185, r5186, r5187, r5188, r5189, r5190, r5191, r5192, r5193, _, _, _, _, _, _⟩

  exact ⟨r5181, r5182, r5183, r5184, r5185, r5186, r5187, r5188, r5189, r5190, r5191, r5192, r5193⟩

theorem seg48Out0_rung54 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37168 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX54 rho, seg48Out0AccY54 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37936, rho 37937⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX54 rho, seg48Out0AccY54 rho⟩ ⟨rho 37936, rho 37937⟩
        ⟨seg48Out0AccX55 rho, seg48Out0AccY55 rho⟩ ⟨rho 37949, rho 37950⟩ := by
  obtain ⟨r5181, r5182, r5183, r5184, r5185, r5186, r5187, r5188, r5189, r5190, r5191, r5192, r5193⟩ := seg48Out0_rows54 rho h
  unfold Seg48.relationRow5181 at r5181

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5181

  unfold Seg48.relationRow5182 at r5182

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5182

  unfold Seg48.relationRow5183 at r5183

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5183

  unfold Seg48.relationRow5184 at r5184

  unfold Seg48.relationRow5185 at r5185

  unfold Seg48.relationRow5186 at r5186

  unfold Seg48.relationRow5187 at r5187

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5187

  unfold Seg48.relationRow5188 at r5188

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5188

  unfold Seg48.relationRow5189 at r5189

  unfold Seg48.relationRow5190 at r5190

  unfold Seg48.relationRow5191 at r5191

  unfold Seg48.relationRow5192 at r5192

  unfold Seg48.relationRow5193 at r5193

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX55 rho = seg48Out0AccX54 rho + rho 37944 := by
    unfold seg48Out0AccX55 seg48Out0AccX54
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 54]

    ring

  have hnexty : seg48Out0AccY55 rho = seg48Out0AccY54 rho + rho 37945 := by
    unfold seg48Out0AccY55 seg48Out0AccY54
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 54]

    ring

  have ha0 : (rho 37936 + rho 37937) * (seg48Out0AccX54 rho + seg48Out0AccY54 rho) = rho 37938 := by
    unfold seg48Out0AccX54 seg48Out0AccY54
    linear_combination r5181
  have ha1 : rho 37937 * seg48Out0AccX54 rho = rho 37939 := by
    unfold seg48Out0AccX54
    linear_combination r5182
  have ha2 : rho 37936 * seg48Out0AccY54 rho = rho 37940 := by
    unfold seg48Out0AccY54
    linear_combination r5183
  have ha3 : 3021 * rho 37939 * rho 37940 = rho 37941 := by
    linear_combination r5184
  have ha4 : rho 37942 * (1 + rho 37941) = rho 37939 + rho 37940 := by
    linear_combination r5185
  have ha5 : rho 37943 * (1 - rho 37941) = rho 37938 - rho 37939 - rho 37940 := by
    linear_combination r5186
  have haddx :
      rho 37942 * (1 + 3021 * (rho 37937 * seg48Out0AccX54 rho) * (rho 37936 * seg48Out0AccY54 rho)) =
        rho 37937 * seg48Out0AccX54 rho + rho 37936 * seg48Out0AccY54 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37943 * (1 - 3021 * (rho 37937 * seg48Out0AccX54 rho) * (rho 37936 * seg48Out0AccY54 rho)) =
        (-1) * (rho 37937 * seg48Out0AccX54 rho) - rho 37936 * seg48Out0AccY54 rho +
          (seg48Out0AccY54 rho - seg48Out0AccX54 rho * (-1)) * (rho 37936 + rho 37937) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37943 * (1 - rho 37941) = rho 37938 - rho 37939 - rho 37940 := ha5
      _ = (-1) * rho 37939 - rho 37940 + (seg48Out0AccY54 rho - seg48Out0AccX54 rho * (-1)) *
          (rho 37936 + rho 37937) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX55 rho = seg48Out0AccX54 rho - Bool.toZMod bit * (seg48Out0AccX54 rho - rho 37942) := by
    have hd : rho 37944 = Bool.toZMod bit * (rho 37942 - seg48Out0AccX54 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX54
      linear_combination -r5187
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY55 rho = seg48Out0AccY54 rho - Bool.toZMod bit * (seg48Out0AccY54 rho - rho 37943) := by
    have hd : rho 37945 = Bool.toZMod bit * (rho 37943 - seg48Out0AccY54 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY54
      linear_combination -r5188
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37936 * rho 37937 = rho 37946 := by linear_combination r5189
  have hd1 : rho 37936 * rho 37936 = rho 37947 := by linear_combination r5190
  have hd2 : rho 37937 * rho 37937 = rho 37948 := by linear_combination r5191
  have hd3 : rho 37949 * (rho 37937 * rho 37937 + rho 37936 * rho 37936 * (-1)) =
      2 * (rho 37936 * rho 37937) := by
    rw [hd0, hd1, hd2]
    linear_combination r5192
  have hd4 : rho 37950 * (2 - (rho 37937 * rho 37937 + rho 37936 * rho 37936 * (-1))) =
      rho 37937 * rho 37937 - rho 37936 * rho 37936 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5193
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX54 rho, seg48Out0AccY54 rho⟩ ⟨rho 37936, rho 37937⟩
    ⟨rho 37942, rho 37943⟩ ⟨seg48Out0AccX55 rho, seg48Out0AccY55 rho⟩ ⟨rho 37949, rho 37950⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_hstep_c4 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (37114 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 44 ≤ i → i < 55 →
      EdwardsBridge.onCurve (seg48Out0AccState rho i) →
      EdwardsBridge.onCurve (seg48Out0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg48Out0AccState rho i) (seg48Out0CurState rho i)
        (seg48Out0AccState rho (i + 1)) (seg48Out0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg48Out0_rung44 rho h bits[44]! (hbitAt 44 (by omega)) hacc hcur
  · exact seg48Out0_rung45 rho h bits[45]! (hbitAt 45 (by omega)) hacc hcur
  · exact seg48Out0_rung46 rho h bits[46]! (hbitAt 46 (by omega)) hacc hcur
  · exact seg48Out0_rung47 rho h bits[47]! (hbitAt 47 (by omega)) hacc hcur
  · exact seg48Out0_rung48 rho h bits[48]! (hbitAt 48 (by omega)) hacc hcur
  · exact seg48Out0_rung49 rho h bits[49]! (hbitAt 49 (by omega)) hacc hcur
  · exact seg48Out0_rung50 rho h bits[50]! (hbitAt 50 (by omega)) hacc hcur
  · exact seg48Out0_rung51 rho h bits[51]! (hbitAt 51 (by omega)) hacc hcur
  · exact seg48Out0_rung52 rho h bits[52]! (hbitAt 52 (by omega)) hacc hcur
  · exact seg48Out0_rung53 rho h bits[53]! (hbitAt 53 (by omega)) hacc hcur
  · exact seg48Out0_rung54 rho h bits[54]! (hbitAt 54 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
