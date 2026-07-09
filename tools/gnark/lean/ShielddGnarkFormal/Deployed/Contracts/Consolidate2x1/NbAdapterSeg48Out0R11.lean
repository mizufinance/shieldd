import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48Out0_rows121 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6052 rho ∧ Seg48.relationRow6053 rho ∧ Seg48.relationRow6054 rho ∧ Seg48.relationRow6055 rho ∧ Seg48.relationRow6056 rho ∧ Seg48.relationRow6057 rho ∧ Seg48.relationRow6058 rho ∧ Seg48.relationRow6059 rho ∧ Seg48.relationRow6060 rho ∧ Seg48.relationRow6061 rho ∧ Seg48.relationRow6062 rho ∧ Seg48.relationRow6063 rho ∧ Seg48.relationRow6064 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p75, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart75 at p75

  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6052, r6053, r6054, r6055, r6056, r6057, r6058, r6059, r6060, r6061, r6062, r6063, r6064, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6052, r6053, r6054, r6055, r6056, r6057, r6058, r6059, r6060, r6061, r6062, r6063, r6064⟩

theorem seg48Out0_rung121 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37235 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX121 rho, seg48Out0AccY121 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38807, rho 38808⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX121 rho, seg48Out0AccY121 rho⟩ ⟨rho 38807, rho 38808⟩
        ⟨seg48Out0AccX122 rho, seg48Out0AccY122 rho⟩ ⟨rho 38820, rho 38821⟩ := by
  obtain ⟨r6052, r6053, r6054, r6055, r6056, r6057, r6058, r6059, r6060, r6061, r6062, r6063, r6064⟩ := seg48Out0_rows121 rho h
  unfold Seg48.relationRow6052 at r6052

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6052

  unfold Seg48.relationRow6053 at r6053

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6053

  unfold Seg48.relationRow6054 at r6054

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6054

  unfold Seg48.relationRow6055 at r6055

  unfold Seg48.relationRow6056 at r6056

  unfold Seg48.relationRow6057 at r6057

  unfold Seg48.relationRow6058 at r6058

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6058

  unfold Seg48.relationRow6059 at r6059

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6059

  unfold Seg48.relationRow6060 at r6060

  unfold Seg48.relationRow6061 at r6061

  unfold Seg48.relationRow6062 at r6062

  unfold Seg48.relationRow6063 at r6063

  unfold Seg48.relationRow6064 at r6064

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX122 rho = seg48Out0AccX121 rho + rho 38815 := by
    unfold seg48Out0AccX122 seg48Out0AccX121
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 121]

    ring

  have hnexty : seg48Out0AccY122 rho = seg48Out0AccY121 rho + rho 38816 := by
    unfold seg48Out0AccY122 seg48Out0AccY121
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 121]

    ring

  have ha0 : (rho 38807 + rho 38808) * (seg48Out0AccX121 rho + seg48Out0AccY121 rho) = rho 38809 := by
    unfold seg48Out0AccX121 seg48Out0AccY121
    linear_combination r6052
  have ha1 : rho 38808 * seg48Out0AccX121 rho = rho 38810 := by
    unfold seg48Out0AccX121
    linear_combination r6053
  have ha2 : rho 38807 * seg48Out0AccY121 rho = rho 38811 := by
    unfold seg48Out0AccY121
    linear_combination r6054
  have ha3 : 3021 * rho 38810 * rho 38811 = rho 38812 := by
    linear_combination r6055
  have ha4 : rho 38813 * (1 + rho 38812) = rho 38810 + rho 38811 := by
    linear_combination r6056
  have ha5 : rho 38814 * (1 - rho 38812) = rho 38809 - rho 38810 - rho 38811 := by
    linear_combination r6057
  have haddx :
      rho 38813 * (1 + 3021 * (rho 38808 * seg48Out0AccX121 rho) * (rho 38807 * seg48Out0AccY121 rho)) =
        rho 38808 * seg48Out0AccX121 rho + rho 38807 * seg48Out0AccY121 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38814 * (1 - 3021 * (rho 38808 * seg48Out0AccX121 rho) * (rho 38807 * seg48Out0AccY121 rho)) =
        (-1) * (rho 38808 * seg48Out0AccX121 rho) - rho 38807 * seg48Out0AccY121 rho +
          (seg48Out0AccY121 rho - seg48Out0AccX121 rho * (-1)) * (rho 38807 + rho 38808) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38814 * (1 - rho 38812) = rho 38809 - rho 38810 - rho 38811 := ha5
      _ = (-1) * rho 38810 - rho 38811 + (seg48Out0AccY121 rho - seg48Out0AccX121 rho * (-1)) *
          (rho 38807 + rho 38808) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX122 rho = seg48Out0AccX121 rho - Bool.toZMod bit * (seg48Out0AccX121 rho - rho 38813) := by
    have hd : rho 38815 = Bool.toZMod bit * (rho 38813 - seg48Out0AccX121 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX121
      linear_combination -r6058
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY122 rho = seg48Out0AccY121 rho - Bool.toZMod bit * (seg48Out0AccY121 rho - rho 38814) := by
    have hd : rho 38816 = Bool.toZMod bit * (rho 38814 - seg48Out0AccY121 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY121
      linear_combination -r6059
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38807 * rho 38808 = rho 38817 := by linear_combination r6060
  have hd1 : rho 38807 * rho 38807 = rho 38818 := by linear_combination r6061
  have hd2 : rho 38808 * rho 38808 = rho 38819 := by linear_combination r6062
  have hd3 : rho 38820 * (rho 38808 * rho 38808 + rho 38807 * rho 38807 * (-1)) =
      2 * (rho 38807 * rho 38808) := by
    rw [hd0, hd1, hd2]
    linear_combination r6063
  have hd4 : rho 38821 * (2 - (rho 38808 * rho 38808 + rho 38807 * rho 38807 * (-1))) =
      rho 38808 * rho 38808 - rho 38807 * rho 38807 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6064
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX121 rho, seg48Out0AccY121 rho⟩ ⟨rho 38807, rho 38808⟩
    ⟨rho 38813, rho 38814⟩ ⟨seg48Out0AccX122 rho, seg48Out0AccY122 rho⟩ ⟨rho 38820, rho 38821⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows122 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6065 rho ∧ Seg48.relationRow6066 rho ∧ Seg48.relationRow6067 rho ∧ Seg48.relationRow6068 rho ∧ Seg48.relationRow6069 rho ∧ Seg48.relationRow6070 rho ∧ Seg48.relationRow6071 rho ∧ Seg48.relationRow6072 rho ∧ Seg48.relationRow6073 rho ∧ Seg48.relationRow6074 rho ∧ Seg48.relationRow6075 rho ∧ Seg48.relationRow6076 rho ∧ Seg48.relationRow6077 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p75, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart75 at p75

  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6065, r6066, r6067, r6068, r6069, r6070, r6071, r6072, r6073, r6074, r6075, r6076, r6077, _, _⟩

  exact ⟨r6065, r6066, r6067, r6068, r6069, r6070, r6071, r6072, r6073, r6074, r6075, r6076, r6077⟩

theorem seg48Out0_rung122 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37236 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX122 rho, seg48Out0AccY122 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38820, rho 38821⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX122 rho, seg48Out0AccY122 rho⟩ ⟨rho 38820, rho 38821⟩
        ⟨seg48Out0AccX123 rho, seg48Out0AccY123 rho⟩ ⟨rho 38833, rho 38834⟩ := by
  obtain ⟨r6065, r6066, r6067, r6068, r6069, r6070, r6071, r6072, r6073, r6074, r6075, r6076, r6077⟩ := seg48Out0_rows122 rho h
  unfold Seg48.relationRow6065 at r6065

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6065

  unfold Seg48.relationRow6066 at r6066

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6066

  unfold Seg48.relationRow6067 at r6067

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6067

  unfold Seg48.relationRow6068 at r6068

  unfold Seg48.relationRow6069 at r6069

  unfold Seg48.relationRow6070 at r6070

  unfold Seg48.relationRow6071 at r6071

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6071

  unfold Seg48.relationRow6072 at r6072

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6072

  unfold Seg48.relationRow6073 at r6073

  unfold Seg48.relationRow6074 at r6074

  unfold Seg48.relationRow6075 at r6075

  unfold Seg48.relationRow6076 at r6076

  unfold Seg48.relationRow6077 at r6077

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX123 rho = seg48Out0AccX122 rho + rho 38828 := by
    unfold seg48Out0AccX123 seg48Out0AccX122
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 122]

    ring

  have hnexty : seg48Out0AccY123 rho = seg48Out0AccY122 rho + rho 38829 := by
    unfold seg48Out0AccY123 seg48Out0AccY122
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 122]

    ring

  have ha0 : (rho 38820 + rho 38821) * (seg48Out0AccX122 rho + seg48Out0AccY122 rho) = rho 38822 := by
    unfold seg48Out0AccX122 seg48Out0AccY122
    linear_combination r6065
  have ha1 : rho 38821 * seg48Out0AccX122 rho = rho 38823 := by
    unfold seg48Out0AccX122
    linear_combination r6066
  have ha2 : rho 38820 * seg48Out0AccY122 rho = rho 38824 := by
    unfold seg48Out0AccY122
    linear_combination r6067
  have ha3 : 3021 * rho 38823 * rho 38824 = rho 38825 := by
    linear_combination r6068
  have ha4 : rho 38826 * (1 + rho 38825) = rho 38823 + rho 38824 := by
    linear_combination r6069
  have ha5 : rho 38827 * (1 - rho 38825) = rho 38822 - rho 38823 - rho 38824 := by
    linear_combination r6070
  have haddx :
      rho 38826 * (1 + 3021 * (rho 38821 * seg48Out0AccX122 rho) * (rho 38820 * seg48Out0AccY122 rho)) =
        rho 38821 * seg48Out0AccX122 rho + rho 38820 * seg48Out0AccY122 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38827 * (1 - 3021 * (rho 38821 * seg48Out0AccX122 rho) * (rho 38820 * seg48Out0AccY122 rho)) =
        (-1) * (rho 38821 * seg48Out0AccX122 rho) - rho 38820 * seg48Out0AccY122 rho +
          (seg48Out0AccY122 rho - seg48Out0AccX122 rho * (-1)) * (rho 38820 + rho 38821) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38827 * (1 - rho 38825) = rho 38822 - rho 38823 - rho 38824 := ha5
      _ = (-1) * rho 38823 - rho 38824 + (seg48Out0AccY122 rho - seg48Out0AccX122 rho * (-1)) *
          (rho 38820 + rho 38821) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX123 rho = seg48Out0AccX122 rho - Bool.toZMod bit * (seg48Out0AccX122 rho - rho 38826) := by
    have hd : rho 38828 = Bool.toZMod bit * (rho 38826 - seg48Out0AccX122 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX122
      linear_combination -r6071
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY123 rho = seg48Out0AccY122 rho - Bool.toZMod bit * (seg48Out0AccY122 rho - rho 38827) := by
    have hd : rho 38829 = Bool.toZMod bit * (rho 38827 - seg48Out0AccY122 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY122
      linear_combination -r6072
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38820 * rho 38821 = rho 38830 := by linear_combination r6073
  have hd1 : rho 38820 * rho 38820 = rho 38831 := by linear_combination r6074
  have hd2 : rho 38821 * rho 38821 = rho 38832 := by linear_combination r6075
  have hd3 : rho 38833 * (rho 38821 * rho 38821 + rho 38820 * rho 38820 * (-1)) =
      2 * (rho 38820 * rho 38821) := by
    rw [hd0, hd1, hd2]
    linear_combination r6076
  have hd4 : rho 38834 * (2 - (rho 38821 * rho 38821 + rho 38820 * rho 38820 * (-1))) =
      rho 38821 * rho 38821 - rho 38820 * rho 38820 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6077
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX122 rho, seg48Out0AccY122 rho⟩ ⟨rho 38820, rho 38821⟩
    ⟨rho 38826, rho 38827⟩ ⟨seg48Out0AccX123 rho, seg48Out0AccY123 rho⟩ ⟨rho 38833, rho 38834⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows123 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6078 rho ∧ Seg48.relationRow6079 rho ∧ Seg48.relationRow6080 rho ∧ Seg48.relationRow6081 rho ∧ Seg48.relationRow6082 rho ∧ Seg48.relationRow6083 rho ∧ Seg48.relationRow6084 rho ∧ Seg48.relationRow6085 rho ∧ Seg48.relationRow6086 rho ∧ Seg48.relationRow6087 rho ∧ Seg48.relationRow6088 rho ∧ Seg48.relationRow6089 rho ∧ Seg48.relationRow6090 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p75, p76, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart75 at p75

  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6078, r6079⟩

  unfold Seg48.relationPart76 at p76

  rcases p76 with ⟨r6080, r6081, r6082, r6083, r6084, r6085, r6086, r6087, r6088, r6089, r6090, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6078, r6079, r6080, r6081, r6082, r6083, r6084, r6085, r6086, r6087, r6088, r6089, r6090⟩

theorem seg48Out0_rung123 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37237 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX123 rho, seg48Out0AccY123 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38833, rho 38834⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX123 rho, seg48Out0AccY123 rho⟩ ⟨rho 38833, rho 38834⟩
        ⟨seg48Out0AccX124 rho, seg48Out0AccY124 rho⟩ ⟨rho 38846, rho 38847⟩ := by
  obtain ⟨r6078, r6079, r6080, r6081, r6082, r6083, r6084, r6085, r6086, r6087, r6088, r6089, r6090⟩ := seg48Out0_rows123 rho h
  unfold Seg48.relationRow6078 at r6078

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6078

  unfold Seg48.relationRow6079 at r6079

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6079

  unfold Seg48.relationRow6080 at r6080

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6080

  unfold Seg48.relationRow6081 at r6081

  unfold Seg48.relationRow6082 at r6082

  unfold Seg48.relationRow6083 at r6083

  unfold Seg48.relationRow6084 at r6084

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6084

  unfold Seg48.relationRow6085 at r6085

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6085

  unfold Seg48.relationRow6086 at r6086

  unfold Seg48.relationRow6087 at r6087

  unfold Seg48.relationRow6088 at r6088

  unfold Seg48.relationRow6089 at r6089

  unfold Seg48.relationRow6090 at r6090

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX124 rho = seg48Out0AccX123 rho + rho 38841 := by
    unfold seg48Out0AccX124 seg48Out0AccX123
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 123]

    ring

  have hnexty : seg48Out0AccY124 rho = seg48Out0AccY123 rho + rho 38842 := by
    unfold seg48Out0AccY124 seg48Out0AccY123
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 123]

    ring

  have ha0 : (rho 38833 + rho 38834) * (seg48Out0AccX123 rho + seg48Out0AccY123 rho) = rho 38835 := by
    unfold seg48Out0AccX123 seg48Out0AccY123
    linear_combination r6078
  have ha1 : rho 38834 * seg48Out0AccX123 rho = rho 38836 := by
    unfold seg48Out0AccX123
    linear_combination r6079
  have ha2 : rho 38833 * seg48Out0AccY123 rho = rho 38837 := by
    unfold seg48Out0AccY123
    linear_combination r6080
  have ha3 : 3021 * rho 38836 * rho 38837 = rho 38838 := by
    linear_combination r6081
  have ha4 : rho 38839 * (1 + rho 38838) = rho 38836 + rho 38837 := by
    linear_combination r6082
  have ha5 : rho 38840 * (1 - rho 38838) = rho 38835 - rho 38836 - rho 38837 := by
    linear_combination r6083
  have haddx :
      rho 38839 * (1 + 3021 * (rho 38834 * seg48Out0AccX123 rho) * (rho 38833 * seg48Out0AccY123 rho)) =
        rho 38834 * seg48Out0AccX123 rho + rho 38833 * seg48Out0AccY123 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38840 * (1 - 3021 * (rho 38834 * seg48Out0AccX123 rho) * (rho 38833 * seg48Out0AccY123 rho)) =
        (-1) * (rho 38834 * seg48Out0AccX123 rho) - rho 38833 * seg48Out0AccY123 rho +
          (seg48Out0AccY123 rho - seg48Out0AccX123 rho * (-1)) * (rho 38833 + rho 38834) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38840 * (1 - rho 38838) = rho 38835 - rho 38836 - rho 38837 := ha5
      _ = (-1) * rho 38836 - rho 38837 + (seg48Out0AccY123 rho - seg48Out0AccX123 rho * (-1)) *
          (rho 38833 + rho 38834) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX124 rho = seg48Out0AccX123 rho - Bool.toZMod bit * (seg48Out0AccX123 rho - rho 38839) := by
    have hd : rho 38841 = Bool.toZMod bit * (rho 38839 - seg48Out0AccX123 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX123
      linear_combination -r6084
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY124 rho = seg48Out0AccY123 rho - Bool.toZMod bit * (seg48Out0AccY123 rho - rho 38840) := by
    have hd : rho 38842 = Bool.toZMod bit * (rho 38840 - seg48Out0AccY123 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY123
      linear_combination -r6085
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38833 * rho 38834 = rho 38843 := by linear_combination r6086
  have hd1 : rho 38833 * rho 38833 = rho 38844 := by linear_combination r6087
  have hd2 : rho 38834 * rho 38834 = rho 38845 := by linear_combination r6088
  have hd3 : rho 38846 * (rho 38834 * rho 38834 + rho 38833 * rho 38833 * (-1)) =
      2 * (rho 38833 * rho 38834) := by
    rw [hd0, hd1, hd2]
    linear_combination r6089
  have hd4 : rho 38847 * (2 - (rho 38834 * rho 38834 + rho 38833 * rho 38833 * (-1))) =
      rho 38834 * rho 38834 - rho 38833 * rho 38833 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6090
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX123 rho, seg48Out0AccY123 rho⟩ ⟨rho 38833, rho 38834⟩
    ⟨rho 38839, rho 38840⟩ ⟨seg48Out0AccX124 rho, seg48Out0AccY124 rho⟩ ⟨rho 38846, rho 38847⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows124 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6091 rho ∧ Seg48.relationRow6092 rho ∧ Seg48.relationRow6093 rho ∧ Seg48.relationRow6094 rho ∧ Seg48.relationRow6095 rho ∧ Seg48.relationRow6096 rho ∧ Seg48.relationRow6097 rho ∧ Seg48.relationRow6098 rho ∧ Seg48.relationRow6099 rho ∧ Seg48.relationRow6100 rho ∧ Seg48.relationRow6101 rho ∧ Seg48.relationRow6102 rho ∧ Seg48.relationRow6103 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p76, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart76 at p76

  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, r6091, r6092, r6093, r6094, r6095, r6096, r6097, r6098, r6099, r6100, r6101, r6102, r6103, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6091, r6092, r6093, r6094, r6095, r6096, r6097, r6098, r6099, r6100, r6101, r6102, r6103⟩

theorem seg48Out0_rung124 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37238 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX124 rho, seg48Out0AccY124 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38846, rho 38847⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX124 rho, seg48Out0AccY124 rho⟩ ⟨rho 38846, rho 38847⟩
        ⟨seg48Out0AccX125 rho, seg48Out0AccY125 rho⟩ ⟨rho 38859, rho 38860⟩ := by
  obtain ⟨r6091, r6092, r6093, r6094, r6095, r6096, r6097, r6098, r6099, r6100, r6101, r6102, r6103⟩ := seg48Out0_rows124 rho h
  unfold Seg48.relationRow6091 at r6091

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6091

  unfold Seg48.relationRow6092 at r6092

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6092

  unfold Seg48.relationRow6093 at r6093

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6093

  unfold Seg48.relationRow6094 at r6094

  unfold Seg48.relationRow6095 at r6095

  unfold Seg48.relationRow6096 at r6096

  unfold Seg48.relationRow6097 at r6097

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6097

  unfold Seg48.relationRow6098 at r6098

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6098

  unfold Seg48.relationRow6099 at r6099

  unfold Seg48.relationRow6100 at r6100

  unfold Seg48.relationRow6101 at r6101

  unfold Seg48.relationRow6102 at r6102

  unfold Seg48.relationRow6103 at r6103

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX125 rho = seg48Out0AccX124 rho + rho 38854 := by
    unfold seg48Out0AccX125 seg48Out0AccX124
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 124]

    ring

  have hnexty : seg48Out0AccY125 rho = seg48Out0AccY124 rho + rho 38855 := by
    unfold seg48Out0AccY125 seg48Out0AccY124
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 124]

    ring

  have ha0 : (rho 38846 + rho 38847) * (seg48Out0AccX124 rho + seg48Out0AccY124 rho) = rho 38848 := by
    unfold seg48Out0AccX124 seg48Out0AccY124
    linear_combination r6091
  have ha1 : rho 38847 * seg48Out0AccX124 rho = rho 38849 := by
    unfold seg48Out0AccX124
    linear_combination r6092
  have ha2 : rho 38846 * seg48Out0AccY124 rho = rho 38850 := by
    unfold seg48Out0AccY124
    linear_combination r6093
  have ha3 : 3021 * rho 38849 * rho 38850 = rho 38851 := by
    linear_combination r6094
  have ha4 : rho 38852 * (1 + rho 38851) = rho 38849 + rho 38850 := by
    linear_combination r6095
  have ha5 : rho 38853 * (1 - rho 38851) = rho 38848 - rho 38849 - rho 38850 := by
    linear_combination r6096
  have haddx :
      rho 38852 * (1 + 3021 * (rho 38847 * seg48Out0AccX124 rho) * (rho 38846 * seg48Out0AccY124 rho)) =
        rho 38847 * seg48Out0AccX124 rho + rho 38846 * seg48Out0AccY124 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38853 * (1 - 3021 * (rho 38847 * seg48Out0AccX124 rho) * (rho 38846 * seg48Out0AccY124 rho)) =
        (-1) * (rho 38847 * seg48Out0AccX124 rho) - rho 38846 * seg48Out0AccY124 rho +
          (seg48Out0AccY124 rho - seg48Out0AccX124 rho * (-1)) * (rho 38846 + rho 38847) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38853 * (1 - rho 38851) = rho 38848 - rho 38849 - rho 38850 := ha5
      _ = (-1) * rho 38849 - rho 38850 + (seg48Out0AccY124 rho - seg48Out0AccX124 rho * (-1)) *
          (rho 38846 + rho 38847) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX125 rho = seg48Out0AccX124 rho - Bool.toZMod bit * (seg48Out0AccX124 rho - rho 38852) := by
    have hd : rho 38854 = Bool.toZMod bit * (rho 38852 - seg48Out0AccX124 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX124
      linear_combination -r6097
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY125 rho = seg48Out0AccY124 rho - Bool.toZMod bit * (seg48Out0AccY124 rho - rho 38853) := by
    have hd : rho 38855 = Bool.toZMod bit * (rho 38853 - seg48Out0AccY124 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY124
      linear_combination -r6098
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38846 * rho 38847 = rho 38856 := by linear_combination r6099
  have hd1 : rho 38846 * rho 38846 = rho 38857 := by linear_combination r6100
  have hd2 : rho 38847 * rho 38847 = rho 38858 := by linear_combination r6101
  have hd3 : rho 38859 * (rho 38847 * rho 38847 + rho 38846 * rho 38846 * (-1)) =
      2 * (rho 38846 * rho 38847) := by
    rw [hd0, hd1, hd2]
    linear_combination r6102
  have hd4 : rho 38860 * (2 - (rho 38847 * rho 38847 + rho 38846 * rho 38846 * (-1))) =
      rho 38847 * rho 38847 - rho 38846 * rho 38846 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6103
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX124 rho, seg48Out0AccY124 rho⟩ ⟨rho 38846, rho 38847⟩
    ⟨rho 38852, rho 38853⟩ ⟨seg48Out0AccX125 rho, seg48Out0AccY125 rho⟩ ⟨rho 38859, rho 38860⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows125 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6104 rho ∧ Seg48.relationRow6105 rho ∧ Seg48.relationRow6106 rho ∧ Seg48.relationRow6107 rho ∧ Seg48.relationRow6108 rho ∧ Seg48.relationRow6109 rho ∧ Seg48.relationRow6110 rho ∧ Seg48.relationRow6111 rho ∧ Seg48.relationRow6112 rho ∧ Seg48.relationRow6113 rho ∧ Seg48.relationRow6114 rho ∧ Seg48.relationRow6115 rho ∧ Seg48.relationRow6116 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p76, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart76 at p76

  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6104, r6105, r6106, r6107, r6108, r6109, r6110, r6111, r6112, r6113, r6114, r6115, r6116, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6104, r6105, r6106, r6107, r6108, r6109, r6110, r6111, r6112, r6113, r6114, r6115, r6116⟩

theorem seg48Out0_rung125 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37239 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX125 rho, seg48Out0AccY125 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38859, rho 38860⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX125 rho, seg48Out0AccY125 rho⟩ ⟨rho 38859, rho 38860⟩
        ⟨seg48Out0AccX126 rho, seg48Out0AccY126 rho⟩ ⟨rho 38872, rho 38873⟩ := by
  obtain ⟨r6104, r6105, r6106, r6107, r6108, r6109, r6110, r6111, r6112, r6113, r6114, r6115, r6116⟩ := seg48Out0_rows125 rho h
  unfold Seg48.relationRow6104 at r6104

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6104

  unfold Seg48.relationRow6105 at r6105

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6105

  unfold Seg48.relationRow6106 at r6106

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6106

  unfold Seg48.relationRow6107 at r6107

  unfold Seg48.relationRow6108 at r6108

  unfold Seg48.relationRow6109 at r6109

  unfold Seg48.relationRow6110 at r6110

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6110

  unfold Seg48.relationRow6111 at r6111

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6111

  unfold Seg48.relationRow6112 at r6112

  unfold Seg48.relationRow6113 at r6113

  unfold Seg48.relationRow6114 at r6114

  unfold Seg48.relationRow6115 at r6115

  unfold Seg48.relationRow6116 at r6116

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX126 rho = seg48Out0AccX125 rho + rho 38867 := by
    unfold seg48Out0AccX126 seg48Out0AccX125
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 125]

    ring

  have hnexty : seg48Out0AccY126 rho = seg48Out0AccY125 rho + rho 38868 := by
    unfold seg48Out0AccY126 seg48Out0AccY125
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 125]

    ring

  have ha0 : (rho 38859 + rho 38860) * (seg48Out0AccX125 rho + seg48Out0AccY125 rho) = rho 38861 := by
    unfold seg48Out0AccX125 seg48Out0AccY125
    linear_combination r6104
  have ha1 : rho 38860 * seg48Out0AccX125 rho = rho 38862 := by
    unfold seg48Out0AccX125
    linear_combination r6105
  have ha2 : rho 38859 * seg48Out0AccY125 rho = rho 38863 := by
    unfold seg48Out0AccY125
    linear_combination r6106
  have ha3 : 3021 * rho 38862 * rho 38863 = rho 38864 := by
    linear_combination r6107
  have ha4 : rho 38865 * (1 + rho 38864) = rho 38862 + rho 38863 := by
    linear_combination r6108
  have ha5 : rho 38866 * (1 - rho 38864) = rho 38861 - rho 38862 - rho 38863 := by
    linear_combination r6109
  have haddx :
      rho 38865 * (1 + 3021 * (rho 38860 * seg48Out0AccX125 rho) * (rho 38859 * seg48Out0AccY125 rho)) =
        rho 38860 * seg48Out0AccX125 rho + rho 38859 * seg48Out0AccY125 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38866 * (1 - 3021 * (rho 38860 * seg48Out0AccX125 rho) * (rho 38859 * seg48Out0AccY125 rho)) =
        (-1) * (rho 38860 * seg48Out0AccX125 rho) - rho 38859 * seg48Out0AccY125 rho +
          (seg48Out0AccY125 rho - seg48Out0AccX125 rho * (-1)) * (rho 38859 + rho 38860) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38866 * (1 - rho 38864) = rho 38861 - rho 38862 - rho 38863 := ha5
      _ = (-1) * rho 38862 - rho 38863 + (seg48Out0AccY125 rho - seg48Out0AccX125 rho * (-1)) *
          (rho 38859 + rho 38860) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX126 rho = seg48Out0AccX125 rho - Bool.toZMod bit * (seg48Out0AccX125 rho - rho 38865) := by
    have hd : rho 38867 = Bool.toZMod bit * (rho 38865 - seg48Out0AccX125 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX125
      linear_combination -r6110
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY126 rho = seg48Out0AccY125 rho - Bool.toZMod bit * (seg48Out0AccY125 rho - rho 38866) := by
    have hd : rho 38868 = Bool.toZMod bit * (rho 38866 - seg48Out0AccY125 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY125
      linear_combination -r6111
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38859 * rho 38860 = rho 38869 := by linear_combination r6112
  have hd1 : rho 38859 * rho 38859 = rho 38870 := by linear_combination r6113
  have hd2 : rho 38860 * rho 38860 = rho 38871 := by linear_combination r6114
  have hd3 : rho 38872 * (rho 38860 * rho 38860 + rho 38859 * rho 38859 * (-1)) =
      2 * (rho 38859 * rho 38860) := by
    rw [hd0, hd1, hd2]
    linear_combination r6115
  have hd4 : rho 38873 * (2 - (rho 38860 * rho 38860 + rho 38859 * rho 38859 * (-1))) =
      rho 38860 * rho 38860 - rho 38859 * rho 38859 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6116
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX125 rho, seg48Out0AccY125 rho⟩ ⟨rho 38859, rho 38860⟩
    ⟨rho 38865, rho 38866⟩ ⟨seg48Out0AccX126 rho, seg48Out0AccY126 rho⟩ ⟨rho 38872, rho 38873⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows126 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6117 rho ∧ Seg48.relationRow6118 rho ∧ Seg48.relationRow6119 rho ∧ Seg48.relationRow6120 rho ∧ Seg48.relationRow6121 rho ∧ Seg48.relationRow6122 rho ∧ Seg48.relationRow6123 rho ∧ Seg48.relationRow6124 rho ∧ Seg48.relationRow6125 rho ∧ Seg48.relationRow6126 rho ∧ Seg48.relationRow6127 rho ∧ Seg48.relationRow6128 rho ∧ Seg48.relationRow6129 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p76, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart76 at p76

  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6117, r6118, r6119, r6120, r6121, r6122, r6123, r6124, r6125, r6126, r6127, r6128, r6129, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6117, r6118, r6119, r6120, r6121, r6122, r6123, r6124, r6125, r6126, r6127, r6128, r6129⟩

theorem seg48Out0_rung126 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37240 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX126 rho, seg48Out0AccY126 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38872, rho 38873⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX126 rho, seg48Out0AccY126 rho⟩ ⟨rho 38872, rho 38873⟩
        ⟨seg48Out0AccX127 rho, seg48Out0AccY127 rho⟩ ⟨rho 38885, rho 38886⟩ := by
  obtain ⟨r6117, r6118, r6119, r6120, r6121, r6122, r6123, r6124, r6125, r6126, r6127, r6128, r6129⟩ := seg48Out0_rows126 rho h
  unfold Seg48.relationRow6117 at r6117

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6117

  unfold Seg48.relationRow6118 at r6118

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6118

  unfold Seg48.relationRow6119 at r6119

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6119

  unfold Seg48.relationRow6120 at r6120

  unfold Seg48.relationRow6121 at r6121

  unfold Seg48.relationRow6122 at r6122

  unfold Seg48.relationRow6123 at r6123

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6123

  unfold Seg48.relationRow6124 at r6124

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6124

  unfold Seg48.relationRow6125 at r6125

  unfold Seg48.relationRow6126 at r6126

  unfold Seg48.relationRow6127 at r6127

  unfold Seg48.relationRow6128 at r6128

  unfold Seg48.relationRow6129 at r6129

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX127 rho = seg48Out0AccX126 rho + rho 38880 := by
    unfold seg48Out0AccX127 seg48Out0AccX126
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 126]

    ring

  have hnexty : seg48Out0AccY127 rho = seg48Out0AccY126 rho + rho 38881 := by
    unfold seg48Out0AccY127 seg48Out0AccY126
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 126]

    ring

  have ha0 : (rho 38872 + rho 38873) * (seg48Out0AccX126 rho + seg48Out0AccY126 rho) = rho 38874 := by
    unfold seg48Out0AccX126 seg48Out0AccY126
    linear_combination r6117
  have ha1 : rho 38873 * seg48Out0AccX126 rho = rho 38875 := by
    unfold seg48Out0AccX126
    linear_combination r6118
  have ha2 : rho 38872 * seg48Out0AccY126 rho = rho 38876 := by
    unfold seg48Out0AccY126
    linear_combination r6119
  have ha3 : 3021 * rho 38875 * rho 38876 = rho 38877 := by
    linear_combination r6120
  have ha4 : rho 38878 * (1 + rho 38877) = rho 38875 + rho 38876 := by
    linear_combination r6121
  have ha5 : rho 38879 * (1 - rho 38877) = rho 38874 - rho 38875 - rho 38876 := by
    linear_combination r6122
  have haddx :
      rho 38878 * (1 + 3021 * (rho 38873 * seg48Out0AccX126 rho) * (rho 38872 * seg48Out0AccY126 rho)) =
        rho 38873 * seg48Out0AccX126 rho + rho 38872 * seg48Out0AccY126 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38879 * (1 - 3021 * (rho 38873 * seg48Out0AccX126 rho) * (rho 38872 * seg48Out0AccY126 rho)) =
        (-1) * (rho 38873 * seg48Out0AccX126 rho) - rho 38872 * seg48Out0AccY126 rho +
          (seg48Out0AccY126 rho - seg48Out0AccX126 rho * (-1)) * (rho 38872 + rho 38873) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38879 * (1 - rho 38877) = rho 38874 - rho 38875 - rho 38876 := ha5
      _ = (-1) * rho 38875 - rho 38876 + (seg48Out0AccY126 rho - seg48Out0AccX126 rho * (-1)) *
          (rho 38872 + rho 38873) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX127 rho = seg48Out0AccX126 rho - Bool.toZMod bit * (seg48Out0AccX126 rho - rho 38878) := by
    have hd : rho 38880 = Bool.toZMod bit * (rho 38878 - seg48Out0AccX126 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX126
      linear_combination -r6123
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY127 rho = seg48Out0AccY126 rho - Bool.toZMod bit * (seg48Out0AccY126 rho - rho 38879) := by
    have hd : rho 38881 = Bool.toZMod bit * (rho 38879 - seg48Out0AccY126 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY126
      linear_combination -r6124
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38872 * rho 38873 = rho 38882 := by linear_combination r6125
  have hd1 : rho 38872 * rho 38872 = rho 38883 := by linear_combination r6126
  have hd2 : rho 38873 * rho 38873 = rho 38884 := by linear_combination r6127
  have hd3 : rho 38885 * (rho 38873 * rho 38873 + rho 38872 * rho 38872 * (-1)) =
      2 * (rho 38872 * rho 38873) := by
    rw [hd0, hd1, hd2]
    linear_combination r6128
  have hd4 : rho 38886 * (2 - (rho 38873 * rho 38873 + rho 38872 * rho 38872 * (-1))) =
      rho 38873 * rho 38873 - rho 38872 * rho 38872 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6129
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX126 rho, seg48Out0AccY126 rho⟩ ⟨rho 38872, rho 38873⟩
    ⟨rho 38878, rho 38879⟩ ⟨seg48Out0AccX127 rho, seg48Out0AccY127 rho⟩ ⟨rho 38885, rho 38886⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows127 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6130 rho ∧ Seg48.relationRow6131 rho ∧ Seg48.relationRow6132 rho ∧ Seg48.relationRow6133 rho ∧ Seg48.relationRow6134 rho ∧ Seg48.relationRow6135 rho ∧ Seg48.relationRow6136 rho ∧ Seg48.relationRow6137 rho ∧ Seg48.relationRow6138 rho ∧ Seg48.relationRow6139 rho ∧ Seg48.relationRow6140 rho ∧ Seg48.relationRow6141 rho ∧ Seg48.relationRow6142 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p76, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart76 at p76

  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6130, r6131, r6132, r6133, r6134, r6135, r6136, r6137, r6138, r6139, r6140, r6141, r6142, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6130, r6131, r6132, r6133, r6134, r6135, r6136, r6137, r6138, r6139, r6140, r6141, r6142⟩

theorem seg48Out0_rung127 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37241 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX127 rho, seg48Out0AccY127 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38885, rho 38886⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX127 rho, seg48Out0AccY127 rho⟩ ⟨rho 38885, rho 38886⟩
        ⟨seg48Out0AccX128 rho, seg48Out0AccY128 rho⟩ ⟨rho 38898, rho 38899⟩ := by
  obtain ⟨r6130, r6131, r6132, r6133, r6134, r6135, r6136, r6137, r6138, r6139, r6140, r6141, r6142⟩ := seg48Out0_rows127 rho h
  unfold Seg48.relationRow6130 at r6130

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6130

  unfold Seg48.relationRow6131 at r6131

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6131

  unfold Seg48.relationRow6132 at r6132

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6132

  unfold Seg48.relationRow6133 at r6133

  unfold Seg48.relationRow6134 at r6134

  unfold Seg48.relationRow6135 at r6135

  unfold Seg48.relationRow6136 at r6136

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6136

  unfold Seg48.relationRow6137 at r6137

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6137

  unfold Seg48.relationRow6138 at r6138

  unfold Seg48.relationRow6139 at r6139

  unfold Seg48.relationRow6140 at r6140

  unfold Seg48.relationRow6141 at r6141

  unfold Seg48.relationRow6142 at r6142

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX128 rho = seg48Out0AccX127 rho + rho 38893 := by
    unfold seg48Out0AccX128 seg48Out0AccX127
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 127]

    ring

  have hnexty : seg48Out0AccY128 rho = seg48Out0AccY127 rho + rho 38894 := by
    unfold seg48Out0AccY128 seg48Out0AccY127
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 127]

    ring

  have ha0 : (rho 38885 + rho 38886) * (seg48Out0AccX127 rho + seg48Out0AccY127 rho) = rho 38887 := by
    unfold seg48Out0AccX127 seg48Out0AccY127
    linear_combination r6130
  have ha1 : rho 38886 * seg48Out0AccX127 rho = rho 38888 := by
    unfold seg48Out0AccX127
    linear_combination r6131
  have ha2 : rho 38885 * seg48Out0AccY127 rho = rho 38889 := by
    unfold seg48Out0AccY127
    linear_combination r6132
  have ha3 : 3021 * rho 38888 * rho 38889 = rho 38890 := by
    linear_combination r6133
  have ha4 : rho 38891 * (1 + rho 38890) = rho 38888 + rho 38889 := by
    linear_combination r6134
  have ha5 : rho 38892 * (1 - rho 38890) = rho 38887 - rho 38888 - rho 38889 := by
    linear_combination r6135
  have haddx :
      rho 38891 * (1 + 3021 * (rho 38886 * seg48Out0AccX127 rho) * (rho 38885 * seg48Out0AccY127 rho)) =
        rho 38886 * seg48Out0AccX127 rho + rho 38885 * seg48Out0AccY127 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38892 * (1 - 3021 * (rho 38886 * seg48Out0AccX127 rho) * (rho 38885 * seg48Out0AccY127 rho)) =
        (-1) * (rho 38886 * seg48Out0AccX127 rho) - rho 38885 * seg48Out0AccY127 rho +
          (seg48Out0AccY127 rho - seg48Out0AccX127 rho * (-1)) * (rho 38885 + rho 38886) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38892 * (1 - rho 38890) = rho 38887 - rho 38888 - rho 38889 := ha5
      _ = (-1) * rho 38888 - rho 38889 + (seg48Out0AccY127 rho - seg48Out0AccX127 rho * (-1)) *
          (rho 38885 + rho 38886) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX128 rho = seg48Out0AccX127 rho - Bool.toZMod bit * (seg48Out0AccX127 rho - rho 38891) := by
    have hd : rho 38893 = Bool.toZMod bit * (rho 38891 - seg48Out0AccX127 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX127
      linear_combination -r6136
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY128 rho = seg48Out0AccY127 rho - Bool.toZMod bit * (seg48Out0AccY127 rho - rho 38892) := by
    have hd : rho 38894 = Bool.toZMod bit * (rho 38892 - seg48Out0AccY127 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY127
      linear_combination -r6137
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38885 * rho 38886 = rho 38895 := by linear_combination r6138
  have hd1 : rho 38885 * rho 38885 = rho 38896 := by linear_combination r6139
  have hd2 : rho 38886 * rho 38886 = rho 38897 := by linear_combination r6140
  have hd3 : rho 38898 * (rho 38886 * rho 38886 + rho 38885 * rho 38885 * (-1)) =
      2 * (rho 38885 * rho 38886) := by
    rw [hd0, hd1, hd2]
    linear_combination r6141
  have hd4 : rho 38899 * (2 - (rho 38886 * rho 38886 + rho 38885 * rho 38885 * (-1))) =
      rho 38886 * rho 38886 - rho 38885 * rho 38885 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6142
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX127 rho, seg48Out0AccY127 rho⟩ ⟨rho 38885, rho 38886⟩
    ⟨rho 38891, rho 38892⟩ ⟨seg48Out0AccX128 rho, seg48Out0AccY128 rho⟩ ⟨rho 38898, rho 38899⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_hstep_c11 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (37114 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 121 ≤ i → i < 128 →
      EdwardsBridge.onCurve (seg48Out0AccState rho i) →
      EdwardsBridge.onCurve (seg48Out0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg48Out0AccState rho i) (seg48Out0CurState rho i)
        (seg48Out0AccState rho (i + 1)) (seg48Out0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg48Out0_rung121 rho h bits[121]! (hbitAt 121 (by omega)) hacc hcur
  · exact seg48Out0_rung122 rho h bits[122]! (hbitAt 122 (by omega)) hacc hcur
  · exact seg48Out0_rung123 rho h bits[123]! (hbitAt 123 (by omega)) hacc hcur
  · exact seg48Out0_rung124 rho h bits[124]! (hbitAt 124 (by omega)) hacc hcur
  · exact seg48Out0_rung125 rho h bits[125]! (hbitAt 125 (by omega)) hacc hcur
  · exact seg48Out0_rung126 rho h bits[126]! (hbitAt 126 (by omega)) hacc hcur
  · exact seg48Out0_rung127 rho h bits[127]! (hbitAt 127 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
