import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Out0_rows44 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5051 rho ∧ Seg52.relationRow5052 rho ∧ Seg52.relationRow5053 rho ∧ Seg52.relationRow5054 rho ∧ Seg52.relationRow5055 rho ∧ Seg52.relationRow5056 rho ∧ Seg52.relationRow5057 rho ∧ Seg52.relationRow5058 rho ∧ Seg52.relationRow5059 rho ∧ Seg52.relationRow5060 rho ∧ Seg52.relationRow5061 rho ∧ Seg52.relationRow5062 rho ∧ Seg52.relationRow5063 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart63 at p63

  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, r5051, r5052, r5053, r5054, r5055, r5056, r5057, r5058, r5059, r5060, r5061, r5062, r5063, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5051, r5052, r5053, r5054, r5055, r5056, r5057, r5058, r5059, r5060, r5061, r5062, r5063⟩

theorem seg52Out0_rung44 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48790 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX44 rho, seg52Out0AccY44 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49438, rho 49439⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX44 rho, seg52Out0AccY44 rho⟩ ⟨rho 49438, rho 49439⟩
        ⟨seg52Out0AccX45 rho, seg52Out0AccY45 rho⟩ ⟨rho 49451, rho 49452⟩ := by
  obtain ⟨r5051, r5052, r5053, r5054, r5055, r5056, r5057, r5058, r5059, r5060, r5061, r5062, r5063⟩ := seg52Out0_rows44 rho h
  unfold Seg52.relationRow5051 at r5051

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5051

  unfold Seg52.relationRow5052 at r5052

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5052

  unfold Seg52.relationRow5053 at r5053

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5053

  unfold Seg52.relationRow5054 at r5054

  unfold Seg52.relationRow5055 at r5055

  unfold Seg52.relationRow5056 at r5056

  unfold Seg52.relationRow5057 at r5057

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5057

  unfold Seg52.relationRow5058 at r5058

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5058

  unfold Seg52.relationRow5059 at r5059

  unfold Seg52.relationRow5060 at r5060

  unfold Seg52.relationRow5061 at r5061

  unfold Seg52.relationRow5062 at r5062

  unfold Seg52.relationRow5063 at r5063

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX45 rho = seg52Out0AccX44 rho + rho 49446 := by
    unfold seg52Out0AccX45 seg52Out0AccX44
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 44]

    ring

  have hnexty : seg52Out0AccY45 rho = seg52Out0AccY44 rho + rho 49447 := by
    unfold seg52Out0AccY45 seg52Out0AccY44
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 44]

    ring

  have ha0 : (rho 49438 + rho 49439) * (seg52Out0AccX44 rho + seg52Out0AccY44 rho) = rho 49440 := by
    unfold seg52Out0AccX44 seg52Out0AccY44
    linear_combination r5051
  have ha1 : rho 49439 * seg52Out0AccX44 rho = rho 49441 := by
    unfold seg52Out0AccX44
    linear_combination r5052
  have ha2 : rho 49438 * seg52Out0AccY44 rho = rho 49442 := by
    unfold seg52Out0AccY44
    linear_combination r5053
  have ha3 : 3021 * rho 49441 * rho 49442 = rho 49443 := by
    linear_combination r5054
  have ha4 : rho 49444 * (1 + rho 49443) = rho 49441 + rho 49442 := by
    linear_combination r5055
  have ha5 : rho 49445 * (1 - rho 49443) = rho 49440 - rho 49441 - rho 49442 := by
    linear_combination r5056
  have haddx :
      rho 49444 * (1 + 3021 * (rho 49439 * seg52Out0AccX44 rho) * (rho 49438 * seg52Out0AccY44 rho)) =
        rho 49439 * seg52Out0AccX44 rho + rho 49438 * seg52Out0AccY44 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49445 * (1 - 3021 * (rho 49439 * seg52Out0AccX44 rho) * (rho 49438 * seg52Out0AccY44 rho)) =
        (-1) * (rho 49439 * seg52Out0AccX44 rho) - rho 49438 * seg52Out0AccY44 rho +
          (seg52Out0AccY44 rho - seg52Out0AccX44 rho * (-1)) * (rho 49438 + rho 49439) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49445 * (1 - rho 49443) = rho 49440 - rho 49441 - rho 49442 := ha5
      _ = (-1) * rho 49441 - rho 49442 + (seg52Out0AccY44 rho - seg52Out0AccX44 rho * (-1)) *
          (rho 49438 + rho 49439) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX45 rho = seg52Out0AccX44 rho - Bool.toZMod bit * (seg52Out0AccX44 rho - rho 49444) := by
    have hd : rho 49446 = Bool.toZMod bit * (rho 49444 - seg52Out0AccX44 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX44
      linear_combination -r5057
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY45 rho = seg52Out0AccY44 rho - Bool.toZMod bit * (seg52Out0AccY44 rho - rho 49445) := by
    have hd : rho 49447 = Bool.toZMod bit * (rho 49445 - seg52Out0AccY44 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY44
      linear_combination -r5058
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49438 * rho 49439 = rho 49448 := by linear_combination r5059
  have hd1 : rho 49438 * rho 49438 = rho 49449 := by linear_combination r5060
  have hd2 : rho 49439 * rho 49439 = rho 49450 := by linear_combination r5061
  have hd3 : rho 49451 * (rho 49439 * rho 49439 + rho 49438 * rho 49438 * (-1)) =
      2 * (rho 49438 * rho 49439) := by
    rw [hd0, hd1, hd2]
    linear_combination r5062
  have hd4 : rho 49452 * (2 - (rho 49439 * rho 49439 + rho 49438 * rho 49438 * (-1))) =
      rho 49439 * rho 49439 - rho 49438 * rho 49438 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5063
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX44 rho, seg52Out0AccY44 rho⟩ ⟨rho 49438, rho 49439⟩
    ⟨rho 49444, rho 49445⟩ ⟨seg52Out0AccX45 rho, seg52Out0AccY45 rho⟩ ⟨rho 49451, rho 49452⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows45 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5064 rho ∧ Seg52.relationRow5065 rho ∧ Seg52.relationRow5066 rho ∧ Seg52.relationRow5067 rho ∧ Seg52.relationRow5068 rho ∧ Seg52.relationRow5069 rho ∧ Seg52.relationRow5070 rho ∧ Seg52.relationRow5071 rho ∧ Seg52.relationRow5072 rho ∧ Seg52.relationRow5073 rho ∧ Seg52.relationRow5074 rho ∧ Seg52.relationRow5075 rho ∧ Seg52.relationRow5076 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart63 at p63

  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5064, r5065, r5066, r5067, r5068, r5069, r5070, r5071, r5072, r5073, r5074, r5075, r5076, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5064, r5065, r5066, r5067, r5068, r5069, r5070, r5071, r5072, r5073, r5074, r5075, r5076⟩

theorem seg52Out0_rung45 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48791 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX45 rho, seg52Out0AccY45 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49451, rho 49452⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX45 rho, seg52Out0AccY45 rho⟩ ⟨rho 49451, rho 49452⟩
        ⟨seg52Out0AccX46 rho, seg52Out0AccY46 rho⟩ ⟨rho 49464, rho 49465⟩ := by
  obtain ⟨r5064, r5065, r5066, r5067, r5068, r5069, r5070, r5071, r5072, r5073, r5074, r5075, r5076⟩ := seg52Out0_rows45 rho h
  unfold Seg52.relationRow5064 at r5064

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5064

  unfold Seg52.relationRow5065 at r5065

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5065

  unfold Seg52.relationRow5066 at r5066

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5066

  unfold Seg52.relationRow5067 at r5067

  unfold Seg52.relationRow5068 at r5068

  unfold Seg52.relationRow5069 at r5069

  unfold Seg52.relationRow5070 at r5070

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5070

  unfold Seg52.relationRow5071 at r5071

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5071

  unfold Seg52.relationRow5072 at r5072

  unfold Seg52.relationRow5073 at r5073

  unfold Seg52.relationRow5074 at r5074

  unfold Seg52.relationRow5075 at r5075

  unfold Seg52.relationRow5076 at r5076

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX46 rho = seg52Out0AccX45 rho + rho 49459 := by
    unfold seg52Out0AccX46 seg52Out0AccX45
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 45]

    ring

  have hnexty : seg52Out0AccY46 rho = seg52Out0AccY45 rho + rho 49460 := by
    unfold seg52Out0AccY46 seg52Out0AccY45
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 45]

    ring

  have ha0 : (rho 49451 + rho 49452) * (seg52Out0AccX45 rho + seg52Out0AccY45 rho) = rho 49453 := by
    unfold seg52Out0AccX45 seg52Out0AccY45
    linear_combination r5064
  have ha1 : rho 49452 * seg52Out0AccX45 rho = rho 49454 := by
    unfold seg52Out0AccX45
    linear_combination r5065
  have ha2 : rho 49451 * seg52Out0AccY45 rho = rho 49455 := by
    unfold seg52Out0AccY45
    linear_combination r5066
  have ha3 : 3021 * rho 49454 * rho 49455 = rho 49456 := by
    linear_combination r5067
  have ha4 : rho 49457 * (1 + rho 49456) = rho 49454 + rho 49455 := by
    linear_combination r5068
  have ha5 : rho 49458 * (1 - rho 49456) = rho 49453 - rho 49454 - rho 49455 := by
    linear_combination r5069
  have haddx :
      rho 49457 * (1 + 3021 * (rho 49452 * seg52Out0AccX45 rho) * (rho 49451 * seg52Out0AccY45 rho)) =
        rho 49452 * seg52Out0AccX45 rho + rho 49451 * seg52Out0AccY45 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49458 * (1 - 3021 * (rho 49452 * seg52Out0AccX45 rho) * (rho 49451 * seg52Out0AccY45 rho)) =
        (-1) * (rho 49452 * seg52Out0AccX45 rho) - rho 49451 * seg52Out0AccY45 rho +
          (seg52Out0AccY45 rho - seg52Out0AccX45 rho * (-1)) * (rho 49451 + rho 49452) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49458 * (1 - rho 49456) = rho 49453 - rho 49454 - rho 49455 := ha5
      _ = (-1) * rho 49454 - rho 49455 + (seg52Out0AccY45 rho - seg52Out0AccX45 rho * (-1)) *
          (rho 49451 + rho 49452) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX46 rho = seg52Out0AccX45 rho - Bool.toZMod bit * (seg52Out0AccX45 rho - rho 49457) := by
    have hd : rho 49459 = Bool.toZMod bit * (rho 49457 - seg52Out0AccX45 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX45
      linear_combination -r5070
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY46 rho = seg52Out0AccY45 rho - Bool.toZMod bit * (seg52Out0AccY45 rho - rho 49458) := by
    have hd : rho 49460 = Bool.toZMod bit * (rho 49458 - seg52Out0AccY45 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY45
      linear_combination -r5071
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49451 * rho 49452 = rho 49461 := by linear_combination r5072
  have hd1 : rho 49451 * rho 49451 = rho 49462 := by linear_combination r5073
  have hd2 : rho 49452 * rho 49452 = rho 49463 := by linear_combination r5074
  have hd3 : rho 49464 * (rho 49452 * rho 49452 + rho 49451 * rho 49451 * (-1)) =
      2 * (rho 49451 * rho 49452) := by
    rw [hd0, hd1, hd2]
    linear_combination r5075
  have hd4 : rho 49465 * (2 - (rho 49452 * rho 49452 + rho 49451 * rho 49451 * (-1))) =
      rho 49452 * rho 49452 - rho 49451 * rho 49451 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5076
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX45 rho, seg52Out0AccY45 rho⟩ ⟨rho 49451, rho 49452⟩
    ⟨rho 49457, rho 49458⟩ ⟨seg52Out0AccX46 rho, seg52Out0AccY46 rho⟩ ⟨rho 49464, rho 49465⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows46 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5077 rho ∧ Seg52.relationRow5078 rho ∧ Seg52.relationRow5079 rho ∧ Seg52.relationRow5080 rho ∧ Seg52.relationRow5081 rho ∧ Seg52.relationRow5082 rho ∧ Seg52.relationRow5083 rho ∧ Seg52.relationRow5084 rho ∧ Seg52.relationRow5085 rho ∧ Seg52.relationRow5086 rho ∧ Seg52.relationRow5087 rho ∧ Seg52.relationRow5088 rho ∧ Seg52.relationRow5089 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart63 at p63

  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5077, r5078, r5079, r5080, r5081, r5082, r5083, r5084, r5085, r5086, r5087, r5088, r5089, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5077, r5078, r5079, r5080, r5081, r5082, r5083, r5084, r5085, r5086, r5087, r5088, r5089⟩

theorem seg52Out0_rung46 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48792 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX46 rho, seg52Out0AccY46 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49464, rho 49465⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX46 rho, seg52Out0AccY46 rho⟩ ⟨rho 49464, rho 49465⟩
        ⟨seg52Out0AccX47 rho, seg52Out0AccY47 rho⟩ ⟨rho 49477, rho 49478⟩ := by
  obtain ⟨r5077, r5078, r5079, r5080, r5081, r5082, r5083, r5084, r5085, r5086, r5087, r5088, r5089⟩ := seg52Out0_rows46 rho h
  unfold Seg52.relationRow5077 at r5077

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5077

  unfold Seg52.relationRow5078 at r5078

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5078

  unfold Seg52.relationRow5079 at r5079

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5079

  unfold Seg52.relationRow5080 at r5080

  unfold Seg52.relationRow5081 at r5081

  unfold Seg52.relationRow5082 at r5082

  unfold Seg52.relationRow5083 at r5083

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5083

  unfold Seg52.relationRow5084 at r5084

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5084

  unfold Seg52.relationRow5085 at r5085

  unfold Seg52.relationRow5086 at r5086

  unfold Seg52.relationRow5087 at r5087

  unfold Seg52.relationRow5088 at r5088

  unfold Seg52.relationRow5089 at r5089

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX47 rho = seg52Out0AccX46 rho + rho 49472 := by
    unfold seg52Out0AccX47 seg52Out0AccX46
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 46]

    ring

  have hnexty : seg52Out0AccY47 rho = seg52Out0AccY46 rho + rho 49473 := by
    unfold seg52Out0AccY47 seg52Out0AccY46
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 46]

    ring

  have ha0 : (rho 49464 + rho 49465) * (seg52Out0AccX46 rho + seg52Out0AccY46 rho) = rho 49466 := by
    unfold seg52Out0AccX46 seg52Out0AccY46
    linear_combination r5077
  have ha1 : rho 49465 * seg52Out0AccX46 rho = rho 49467 := by
    unfold seg52Out0AccX46
    linear_combination r5078
  have ha2 : rho 49464 * seg52Out0AccY46 rho = rho 49468 := by
    unfold seg52Out0AccY46
    linear_combination r5079
  have ha3 : 3021 * rho 49467 * rho 49468 = rho 49469 := by
    linear_combination r5080
  have ha4 : rho 49470 * (1 + rho 49469) = rho 49467 + rho 49468 := by
    linear_combination r5081
  have ha5 : rho 49471 * (1 - rho 49469) = rho 49466 - rho 49467 - rho 49468 := by
    linear_combination r5082
  have haddx :
      rho 49470 * (1 + 3021 * (rho 49465 * seg52Out0AccX46 rho) * (rho 49464 * seg52Out0AccY46 rho)) =
        rho 49465 * seg52Out0AccX46 rho + rho 49464 * seg52Out0AccY46 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49471 * (1 - 3021 * (rho 49465 * seg52Out0AccX46 rho) * (rho 49464 * seg52Out0AccY46 rho)) =
        (-1) * (rho 49465 * seg52Out0AccX46 rho) - rho 49464 * seg52Out0AccY46 rho +
          (seg52Out0AccY46 rho - seg52Out0AccX46 rho * (-1)) * (rho 49464 + rho 49465) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49471 * (1 - rho 49469) = rho 49466 - rho 49467 - rho 49468 := ha5
      _ = (-1) * rho 49467 - rho 49468 + (seg52Out0AccY46 rho - seg52Out0AccX46 rho * (-1)) *
          (rho 49464 + rho 49465) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX47 rho = seg52Out0AccX46 rho - Bool.toZMod bit * (seg52Out0AccX46 rho - rho 49470) := by
    have hd : rho 49472 = Bool.toZMod bit * (rho 49470 - seg52Out0AccX46 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX46
      linear_combination -r5083
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY47 rho = seg52Out0AccY46 rho - Bool.toZMod bit * (seg52Out0AccY46 rho - rho 49471) := by
    have hd : rho 49473 = Bool.toZMod bit * (rho 49471 - seg52Out0AccY46 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY46
      linear_combination -r5084
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49464 * rho 49465 = rho 49474 := by linear_combination r5085
  have hd1 : rho 49464 * rho 49464 = rho 49475 := by linear_combination r5086
  have hd2 : rho 49465 * rho 49465 = rho 49476 := by linear_combination r5087
  have hd3 : rho 49477 * (rho 49465 * rho 49465 + rho 49464 * rho 49464 * (-1)) =
      2 * (rho 49464 * rho 49465) := by
    rw [hd0, hd1, hd2]
    linear_combination r5088
  have hd4 : rho 49478 * (2 - (rho 49465 * rho 49465 + rho 49464 * rho 49464 * (-1))) =
      rho 49465 * rho 49465 - rho 49464 * rho 49464 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5089
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX46 rho, seg52Out0AccY46 rho⟩ ⟨rho 49464, rho 49465⟩
    ⟨rho 49470, rho 49471⟩ ⟨seg52Out0AccX47 rho, seg52Out0AccY47 rho⟩ ⟨rho 49477, rho 49478⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows47 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5090 rho ∧ Seg52.relationRow5091 rho ∧ Seg52.relationRow5092 rho ∧ Seg52.relationRow5093 rho ∧ Seg52.relationRow5094 rho ∧ Seg52.relationRow5095 rho ∧ Seg52.relationRow5096 rho ∧ Seg52.relationRow5097 rho ∧ Seg52.relationRow5098 rho ∧ Seg52.relationRow5099 rho ∧ Seg52.relationRow5100 rho ∧ Seg52.relationRow5101 rho ∧ Seg52.relationRow5102 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart63 at p63

  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5090, r5091, r5092, r5093, r5094, r5095, r5096, r5097, r5098, r5099, r5100, r5101, r5102, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5090, r5091, r5092, r5093, r5094, r5095, r5096, r5097, r5098, r5099, r5100, r5101, r5102⟩

theorem seg52Out0_rung47 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48793 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX47 rho, seg52Out0AccY47 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49477, rho 49478⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX47 rho, seg52Out0AccY47 rho⟩ ⟨rho 49477, rho 49478⟩
        ⟨seg52Out0AccX48 rho, seg52Out0AccY48 rho⟩ ⟨rho 49490, rho 49491⟩ := by
  obtain ⟨r5090, r5091, r5092, r5093, r5094, r5095, r5096, r5097, r5098, r5099, r5100, r5101, r5102⟩ := seg52Out0_rows47 rho h
  unfold Seg52.relationRow5090 at r5090

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5090

  unfold Seg52.relationRow5091 at r5091

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5091

  unfold Seg52.relationRow5092 at r5092

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5092

  unfold Seg52.relationRow5093 at r5093

  unfold Seg52.relationRow5094 at r5094

  unfold Seg52.relationRow5095 at r5095

  unfold Seg52.relationRow5096 at r5096

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5096

  unfold Seg52.relationRow5097 at r5097

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5097

  unfold Seg52.relationRow5098 at r5098

  unfold Seg52.relationRow5099 at r5099

  unfold Seg52.relationRow5100 at r5100

  unfold Seg52.relationRow5101 at r5101

  unfold Seg52.relationRow5102 at r5102

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX48 rho = seg52Out0AccX47 rho + rho 49485 := by
    unfold seg52Out0AccX48 seg52Out0AccX47
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 47]

    ring

  have hnexty : seg52Out0AccY48 rho = seg52Out0AccY47 rho + rho 49486 := by
    unfold seg52Out0AccY48 seg52Out0AccY47
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 47]

    ring

  have ha0 : (rho 49477 + rho 49478) * (seg52Out0AccX47 rho + seg52Out0AccY47 rho) = rho 49479 := by
    unfold seg52Out0AccX47 seg52Out0AccY47
    linear_combination r5090
  have ha1 : rho 49478 * seg52Out0AccX47 rho = rho 49480 := by
    unfold seg52Out0AccX47
    linear_combination r5091
  have ha2 : rho 49477 * seg52Out0AccY47 rho = rho 49481 := by
    unfold seg52Out0AccY47
    linear_combination r5092
  have ha3 : 3021 * rho 49480 * rho 49481 = rho 49482 := by
    linear_combination r5093
  have ha4 : rho 49483 * (1 + rho 49482) = rho 49480 + rho 49481 := by
    linear_combination r5094
  have ha5 : rho 49484 * (1 - rho 49482) = rho 49479 - rho 49480 - rho 49481 := by
    linear_combination r5095
  have haddx :
      rho 49483 * (1 + 3021 * (rho 49478 * seg52Out0AccX47 rho) * (rho 49477 * seg52Out0AccY47 rho)) =
        rho 49478 * seg52Out0AccX47 rho + rho 49477 * seg52Out0AccY47 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49484 * (1 - 3021 * (rho 49478 * seg52Out0AccX47 rho) * (rho 49477 * seg52Out0AccY47 rho)) =
        (-1) * (rho 49478 * seg52Out0AccX47 rho) - rho 49477 * seg52Out0AccY47 rho +
          (seg52Out0AccY47 rho - seg52Out0AccX47 rho * (-1)) * (rho 49477 + rho 49478) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49484 * (1 - rho 49482) = rho 49479 - rho 49480 - rho 49481 := ha5
      _ = (-1) * rho 49480 - rho 49481 + (seg52Out0AccY47 rho - seg52Out0AccX47 rho * (-1)) *
          (rho 49477 + rho 49478) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX48 rho = seg52Out0AccX47 rho - Bool.toZMod bit * (seg52Out0AccX47 rho - rho 49483) := by
    have hd : rho 49485 = Bool.toZMod bit * (rho 49483 - seg52Out0AccX47 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX47
      linear_combination -r5096
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY48 rho = seg52Out0AccY47 rho - Bool.toZMod bit * (seg52Out0AccY47 rho - rho 49484) := by
    have hd : rho 49486 = Bool.toZMod bit * (rho 49484 - seg52Out0AccY47 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY47
      linear_combination -r5097
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49477 * rho 49478 = rho 49487 := by linear_combination r5098
  have hd1 : rho 49477 * rho 49477 = rho 49488 := by linear_combination r5099
  have hd2 : rho 49478 * rho 49478 = rho 49489 := by linear_combination r5100
  have hd3 : rho 49490 * (rho 49478 * rho 49478 + rho 49477 * rho 49477 * (-1)) =
      2 * (rho 49477 * rho 49478) := by
    rw [hd0, hd1, hd2]
    linear_combination r5101
  have hd4 : rho 49491 * (2 - (rho 49478 * rho 49478 + rho 49477 * rho 49477 * (-1))) =
      rho 49478 * rho 49478 - rho 49477 * rho 49477 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5102
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX47 rho, seg52Out0AccY47 rho⟩ ⟨rho 49477, rho 49478⟩
    ⟨rho 49483, rho 49484⟩ ⟨seg52Out0AccX48 rho, seg52Out0AccY48 rho⟩ ⟨rho 49490, rho 49491⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows48 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5103 rho ∧ Seg52.relationRow5104 rho ∧ Seg52.relationRow5105 rho ∧ Seg52.relationRow5106 rho ∧ Seg52.relationRow5107 rho ∧ Seg52.relationRow5108 rho ∧ Seg52.relationRow5109 rho ∧ Seg52.relationRow5110 rho ∧ Seg52.relationRow5111 rho ∧ Seg52.relationRow5112 rho ∧ Seg52.relationRow5113 rho ∧ Seg52.relationRow5114 rho ∧ Seg52.relationRow5115 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart63 at p63

  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5103, r5104, r5105, r5106, r5107, r5108, r5109, r5110, r5111, r5112, r5113, r5114, r5115, _, _, _, _⟩

  exact ⟨r5103, r5104, r5105, r5106, r5107, r5108, r5109, r5110, r5111, r5112, r5113, r5114, r5115⟩

theorem seg52Out0_rung48 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48794 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX48 rho, seg52Out0AccY48 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49490, rho 49491⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX48 rho, seg52Out0AccY48 rho⟩ ⟨rho 49490, rho 49491⟩
        ⟨seg52Out0AccX49 rho, seg52Out0AccY49 rho⟩ ⟨rho 49503, rho 49504⟩ := by
  obtain ⟨r5103, r5104, r5105, r5106, r5107, r5108, r5109, r5110, r5111, r5112, r5113, r5114, r5115⟩ := seg52Out0_rows48 rho h
  unfold Seg52.relationRow5103 at r5103

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5103

  unfold Seg52.relationRow5104 at r5104

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5104

  unfold Seg52.relationRow5105 at r5105

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5105

  unfold Seg52.relationRow5106 at r5106

  unfold Seg52.relationRow5107 at r5107

  unfold Seg52.relationRow5108 at r5108

  unfold Seg52.relationRow5109 at r5109

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5109

  unfold Seg52.relationRow5110 at r5110

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5110

  unfold Seg52.relationRow5111 at r5111

  unfold Seg52.relationRow5112 at r5112

  unfold Seg52.relationRow5113 at r5113

  unfold Seg52.relationRow5114 at r5114

  unfold Seg52.relationRow5115 at r5115

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX49 rho = seg52Out0AccX48 rho + rho 49498 := by
    unfold seg52Out0AccX49 seg52Out0AccX48
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 48]

    ring

  have hnexty : seg52Out0AccY49 rho = seg52Out0AccY48 rho + rho 49499 := by
    unfold seg52Out0AccY49 seg52Out0AccY48
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 48]

    ring

  have ha0 : (rho 49490 + rho 49491) * (seg52Out0AccX48 rho + seg52Out0AccY48 rho) = rho 49492 := by
    unfold seg52Out0AccX48 seg52Out0AccY48
    linear_combination r5103
  have ha1 : rho 49491 * seg52Out0AccX48 rho = rho 49493 := by
    unfold seg52Out0AccX48
    linear_combination r5104
  have ha2 : rho 49490 * seg52Out0AccY48 rho = rho 49494 := by
    unfold seg52Out0AccY48
    linear_combination r5105
  have ha3 : 3021 * rho 49493 * rho 49494 = rho 49495 := by
    linear_combination r5106
  have ha4 : rho 49496 * (1 + rho 49495) = rho 49493 + rho 49494 := by
    linear_combination r5107
  have ha5 : rho 49497 * (1 - rho 49495) = rho 49492 - rho 49493 - rho 49494 := by
    linear_combination r5108
  have haddx :
      rho 49496 * (1 + 3021 * (rho 49491 * seg52Out0AccX48 rho) * (rho 49490 * seg52Out0AccY48 rho)) =
        rho 49491 * seg52Out0AccX48 rho + rho 49490 * seg52Out0AccY48 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49497 * (1 - 3021 * (rho 49491 * seg52Out0AccX48 rho) * (rho 49490 * seg52Out0AccY48 rho)) =
        (-1) * (rho 49491 * seg52Out0AccX48 rho) - rho 49490 * seg52Out0AccY48 rho +
          (seg52Out0AccY48 rho - seg52Out0AccX48 rho * (-1)) * (rho 49490 + rho 49491) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49497 * (1 - rho 49495) = rho 49492 - rho 49493 - rho 49494 := ha5
      _ = (-1) * rho 49493 - rho 49494 + (seg52Out0AccY48 rho - seg52Out0AccX48 rho * (-1)) *
          (rho 49490 + rho 49491) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX49 rho = seg52Out0AccX48 rho - Bool.toZMod bit * (seg52Out0AccX48 rho - rho 49496) := by
    have hd : rho 49498 = Bool.toZMod bit * (rho 49496 - seg52Out0AccX48 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX48
      linear_combination -r5109
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY49 rho = seg52Out0AccY48 rho - Bool.toZMod bit * (seg52Out0AccY48 rho - rho 49497) := by
    have hd : rho 49499 = Bool.toZMod bit * (rho 49497 - seg52Out0AccY48 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY48
      linear_combination -r5110
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49490 * rho 49491 = rho 49500 := by linear_combination r5111
  have hd1 : rho 49490 * rho 49490 = rho 49501 := by linear_combination r5112
  have hd2 : rho 49491 * rho 49491 = rho 49502 := by linear_combination r5113
  have hd3 : rho 49503 * (rho 49491 * rho 49491 + rho 49490 * rho 49490 * (-1)) =
      2 * (rho 49490 * rho 49491) := by
    rw [hd0, hd1, hd2]
    linear_combination r5114
  have hd4 : rho 49504 * (2 - (rho 49491 * rho 49491 + rho 49490 * rho 49490 * (-1))) =
      rho 49491 * rho 49491 - rho 49490 * rho 49490 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5115
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX48 rho, seg52Out0AccY48 rho⟩ ⟨rho 49490, rho 49491⟩
    ⟨rho 49496, rho 49497⟩ ⟨seg52Out0AccX49 rho, seg52Out0AccY49 rho⟩ ⟨rho 49503, rho 49504⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows49 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5116 rho ∧ Seg52.relationRow5117 rho ∧ Seg52.relationRow5118 rho ∧ Seg52.relationRow5119 rho ∧ Seg52.relationRow5120 rho ∧ Seg52.relationRow5121 rho ∧ Seg52.relationRow5122 rho ∧ Seg52.relationRow5123 rho ∧ Seg52.relationRow5124 rho ∧ Seg52.relationRow5125 rho ∧ Seg52.relationRow5126 rho ∧ Seg52.relationRow5127 rho ∧ Seg52.relationRow5128 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart63 at p63

  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5116, r5117, r5118, r5119⟩

  unfold Seg52.relationPart64 at p64

  rcases p64 with ⟨r5120, r5121, r5122, r5123, r5124, r5125, r5126, r5127, r5128, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5116, r5117, r5118, r5119, r5120, r5121, r5122, r5123, r5124, r5125, r5126, r5127, r5128⟩

theorem seg52Out0_rung49 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48795 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX49 rho, seg52Out0AccY49 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49503, rho 49504⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX49 rho, seg52Out0AccY49 rho⟩ ⟨rho 49503, rho 49504⟩
        ⟨seg52Out0AccX50 rho, seg52Out0AccY50 rho⟩ ⟨rho 49516, rho 49517⟩ := by
  obtain ⟨r5116, r5117, r5118, r5119, r5120, r5121, r5122, r5123, r5124, r5125, r5126, r5127, r5128⟩ := seg52Out0_rows49 rho h
  unfold Seg52.relationRow5116 at r5116

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5116

  unfold Seg52.relationRow5117 at r5117

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5117

  unfold Seg52.relationRow5118 at r5118

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5118

  unfold Seg52.relationRow5119 at r5119

  unfold Seg52.relationRow5120 at r5120

  unfold Seg52.relationRow5121 at r5121

  unfold Seg52.relationRow5122 at r5122

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5122

  unfold Seg52.relationRow5123 at r5123

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5123

  unfold Seg52.relationRow5124 at r5124

  unfold Seg52.relationRow5125 at r5125

  unfold Seg52.relationRow5126 at r5126

  unfold Seg52.relationRow5127 at r5127

  unfold Seg52.relationRow5128 at r5128

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX50 rho = seg52Out0AccX49 rho + rho 49511 := by
    unfold seg52Out0AccX50 seg52Out0AccX49
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 49]

    ring

  have hnexty : seg52Out0AccY50 rho = seg52Out0AccY49 rho + rho 49512 := by
    unfold seg52Out0AccY50 seg52Out0AccY49
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 49]

    ring

  have ha0 : (rho 49503 + rho 49504) * (seg52Out0AccX49 rho + seg52Out0AccY49 rho) = rho 49505 := by
    unfold seg52Out0AccX49 seg52Out0AccY49
    linear_combination r5116
  have ha1 : rho 49504 * seg52Out0AccX49 rho = rho 49506 := by
    unfold seg52Out0AccX49
    linear_combination r5117
  have ha2 : rho 49503 * seg52Out0AccY49 rho = rho 49507 := by
    unfold seg52Out0AccY49
    linear_combination r5118
  have ha3 : 3021 * rho 49506 * rho 49507 = rho 49508 := by
    linear_combination r5119
  have ha4 : rho 49509 * (1 + rho 49508) = rho 49506 + rho 49507 := by
    linear_combination r5120
  have ha5 : rho 49510 * (1 - rho 49508) = rho 49505 - rho 49506 - rho 49507 := by
    linear_combination r5121
  have haddx :
      rho 49509 * (1 + 3021 * (rho 49504 * seg52Out0AccX49 rho) * (rho 49503 * seg52Out0AccY49 rho)) =
        rho 49504 * seg52Out0AccX49 rho + rho 49503 * seg52Out0AccY49 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49510 * (1 - 3021 * (rho 49504 * seg52Out0AccX49 rho) * (rho 49503 * seg52Out0AccY49 rho)) =
        (-1) * (rho 49504 * seg52Out0AccX49 rho) - rho 49503 * seg52Out0AccY49 rho +
          (seg52Out0AccY49 rho - seg52Out0AccX49 rho * (-1)) * (rho 49503 + rho 49504) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49510 * (1 - rho 49508) = rho 49505 - rho 49506 - rho 49507 := ha5
      _ = (-1) * rho 49506 - rho 49507 + (seg52Out0AccY49 rho - seg52Out0AccX49 rho * (-1)) *
          (rho 49503 + rho 49504) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX50 rho = seg52Out0AccX49 rho - Bool.toZMod bit * (seg52Out0AccX49 rho - rho 49509) := by
    have hd : rho 49511 = Bool.toZMod bit * (rho 49509 - seg52Out0AccX49 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX49
      linear_combination -r5122
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY50 rho = seg52Out0AccY49 rho - Bool.toZMod bit * (seg52Out0AccY49 rho - rho 49510) := by
    have hd : rho 49512 = Bool.toZMod bit * (rho 49510 - seg52Out0AccY49 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY49
      linear_combination -r5123
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49503 * rho 49504 = rho 49513 := by linear_combination r5124
  have hd1 : rho 49503 * rho 49503 = rho 49514 := by linear_combination r5125
  have hd2 : rho 49504 * rho 49504 = rho 49515 := by linear_combination r5126
  have hd3 : rho 49516 * (rho 49504 * rho 49504 + rho 49503 * rho 49503 * (-1)) =
      2 * (rho 49503 * rho 49504) := by
    rw [hd0, hd1, hd2]
    linear_combination r5127
  have hd4 : rho 49517 * (2 - (rho 49504 * rho 49504 + rho 49503 * rho 49503 * (-1))) =
      rho 49504 * rho 49504 - rho 49503 * rho 49503 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5128
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX49 rho, seg52Out0AccY49 rho⟩ ⟨rho 49503, rho 49504⟩
    ⟨rho 49509, rho 49510⟩ ⟨seg52Out0AccX50 rho, seg52Out0AccY50 rho⟩ ⟨rho 49516, rho 49517⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows50 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5129 rho ∧ Seg52.relationRow5130 rho ∧ Seg52.relationRow5131 rho ∧ Seg52.relationRow5132 rho ∧ Seg52.relationRow5133 rho ∧ Seg52.relationRow5134 rho ∧ Seg52.relationRow5135 rho ∧ Seg52.relationRow5136 rho ∧ Seg52.relationRow5137 rho ∧ Seg52.relationRow5138 rho ∧ Seg52.relationRow5139 rho ∧ Seg52.relationRow5140 rho ∧ Seg52.relationRow5141 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart64 at p64

  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, r5129, r5130, r5131, r5132, r5133, r5134, r5135, r5136, r5137, r5138, r5139, r5140, r5141, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5129, r5130, r5131, r5132, r5133, r5134, r5135, r5136, r5137, r5138, r5139, r5140, r5141⟩

theorem seg52Out0_rung50 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48796 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX50 rho, seg52Out0AccY50 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49516, rho 49517⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX50 rho, seg52Out0AccY50 rho⟩ ⟨rho 49516, rho 49517⟩
        ⟨seg52Out0AccX51 rho, seg52Out0AccY51 rho⟩ ⟨rho 49529, rho 49530⟩ := by
  obtain ⟨r5129, r5130, r5131, r5132, r5133, r5134, r5135, r5136, r5137, r5138, r5139, r5140, r5141⟩ := seg52Out0_rows50 rho h
  unfold Seg52.relationRow5129 at r5129

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5129

  unfold Seg52.relationRow5130 at r5130

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5130

  unfold Seg52.relationRow5131 at r5131

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5131

  unfold Seg52.relationRow5132 at r5132

  unfold Seg52.relationRow5133 at r5133

  unfold Seg52.relationRow5134 at r5134

  unfold Seg52.relationRow5135 at r5135

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5135

  unfold Seg52.relationRow5136 at r5136

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5136

  unfold Seg52.relationRow5137 at r5137

  unfold Seg52.relationRow5138 at r5138

  unfold Seg52.relationRow5139 at r5139

  unfold Seg52.relationRow5140 at r5140

  unfold Seg52.relationRow5141 at r5141

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX51 rho = seg52Out0AccX50 rho + rho 49524 := by
    unfold seg52Out0AccX51 seg52Out0AccX50
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 50]

    ring

  have hnexty : seg52Out0AccY51 rho = seg52Out0AccY50 rho + rho 49525 := by
    unfold seg52Out0AccY51 seg52Out0AccY50
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 50]

    ring

  have ha0 : (rho 49516 + rho 49517) * (seg52Out0AccX50 rho + seg52Out0AccY50 rho) = rho 49518 := by
    unfold seg52Out0AccX50 seg52Out0AccY50
    linear_combination r5129
  have ha1 : rho 49517 * seg52Out0AccX50 rho = rho 49519 := by
    unfold seg52Out0AccX50
    linear_combination r5130
  have ha2 : rho 49516 * seg52Out0AccY50 rho = rho 49520 := by
    unfold seg52Out0AccY50
    linear_combination r5131
  have ha3 : 3021 * rho 49519 * rho 49520 = rho 49521 := by
    linear_combination r5132
  have ha4 : rho 49522 * (1 + rho 49521) = rho 49519 + rho 49520 := by
    linear_combination r5133
  have ha5 : rho 49523 * (1 - rho 49521) = rho 49518 - rho 49519 - rho 49520 := by
    linear_combination r5134
  have haddx :
      rho 49522 * (1 + 3021 * (rho 49517 * seg52Out0AccX50 rho) * (rho 49516 * seg52Out0AccY50 rho)) =
        rho 49517 * seg52Out0AccX50 rho + rho 49516 * seg52Out0AccY50 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49523 * (1 - 3021 * (rho 49517 * seg52Out0AccX50 rho) * (rho 49516 * seg52Out0AccY50 rho)) =
        (-1) * (rho 49517 * seg52Out0AccX50 rho) - rho 49516 * seg52Out0AccY50 rho +
          (seg52Out0AccY50 rho - seg52Out0AccX50 rho * (-1)) * (rho 49516 + rho 49517) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49523 * (1 - rho 49521) = rho 49518 - rho 49519 - rho 49520 := ha5
      _ = (-1) * rho 49519 - rho 49520 + (seg52Out0AccY50 rho - seg52Out0AccX50 rho * (-1)) *
          (rho 49516 + rho 49517) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX51 rho = seg52Out0AccX50 rho - Bool.toZMod bit * (seg52Out0AccX50 rho - rho 49522) := by
    have hd : rho 49524 = Bool.toZMod bit * (rho 49522 - seg52Out0AccX50 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX50
      linear_combination -r5135
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY51 rho = seg52Out0AccY50 rho - Bool.toZMod bit * (seg52Out0AccY50 rho - rho 49523) := by
    have hd : rho 49525 = Bool.toZMod bit * (rho 49523 - seg52Out0AccY50 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY50
      linear_combination -r5136
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49516 * rho 49517 = rho 49526 := by linear_combination r5137
  have hd1 : rho 49516 * rho 49516 = rho 49527 := by linear_combination r5138
  have hd2 : rho 49517 * rho 49517 = rho 49528 := by linear_combination r5139
  have hd3 : rho 49529 * (rho 49517 * rho 49517 + rho 49516 * rho 49516 * (-1)) =
      2 * (rho 49516 * rho 49517) := by
    rw [hd0, hd1, hd2]
    linear_combination r5140
  have hd4 : rho 49530 * (2 - (rho 49517 * rho 49517 + rho 49516 * rho 49516 * (-1))) =
      rho 49517 * rho 49517 - rho 49516 * rho 49516 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5141
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX50 rho, seg52Out0AccY50 rho⟩ ⟨rho 49516, rho 49517⟩
    ⟨rho 49522, rho 49523⟩ ⟨seg52Out0AccX51 rho, seg52Out0AccY51 rho⟩ ⟨rho 49529, rho 49530⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows51 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5142 rho ∧ Seg52.relationRow5143 rho ∧ Seg52.relationRow5144 rho ∧ Seg52.relationRow5145 rho ∧ Seg52.relationRow5146 rho ∧ Seg52.relationRow5147 rho ∧ Seg52.relationRow5148 rho ∧ Seg52.relationRow5149 rho ∧ Seg52.relationRow5150 rho ∧ Seg52.relationRow5151 rho ∧ Seg52.relationRow5152 rho ∧ Seg52.relationRow5153 rho ∧ Seg52.relationRow5154 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart64 at p64

  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5142, r5143, r5144, r5145, r5146, r5147, r5148, r5149, r5150, r5151, r5152, r5153, r5154, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5142, r5143, r5144, r5145, r5146, r5147, r5148, r5149, r5150, r5151, r5152, r5153, r5154⟩

theorem seg52Out0_rung51 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48797 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX51 rho, seg52Out0AccY51 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49529, rho 49530⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX51 rho, seg52Out0AccY51 rho⟩ ⟨rho 49529, rho 49530⟩
        ⟨seg52Out0AccX52 rho, seg52Out0AccY52 rho⟩ ⟨rho 49542, rho 49543⟩ := by
  obtain ⟨r5142, r5143, r5144, r5145, r5146, r5147, r5148, r5149, r5150, r5151, r5152, r5153, r5154⟩ := seg52Out0_rows51 rho h
  unfold Seg52.relationRow5142 at r5142

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5142

  unfold Seg52.relationRow5143 at r5143

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5143

  unfold Seg52.relationRow5144 at r5144

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5144

  unfold Seg52.relationRow5145 at r5145

  unfold Seg52.relationRow5146 at r5146

  unfold Seg52.relationRow5147 at r5147

  unfold Seg52.relationRow5148 at r5148

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5148

  unfold Seg52.relationRow5149 at r5149

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5149

  unfold Seg52.relationRow5150 at r5150

  unfold Seg52.relationRow5151 at r5151

  unfold Seg52.relationRow5152 at r5152

  unfold Seg52.relationRow5153 at r5153

  unfold Seg52.relationRow5154 at r5154

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX52 rho = seg52Out0AccX51 rho + rho 49537 := by
    unfold seg52Out0AccX52 seg52Out0AccX51
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 51]

    ring

  have hnexty : seg52Out0AccY52 rho = seg52Out0AccY51 rho + rho 49538 := by
    unfold seg52Out0AccY52 seg52Out0AccY51
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 51]

    ring

  have ha0 : (rho 49529 + rho 49530) * (seg52Out0AccX51 rho + seg52Out0AccY51 rho) = rho 49531 := by
    unfold seg52Out0AccX51 seg52Out0AccY51
    linear_combination r5142
  have ha1 : rho 49530 * seg52Out0AccX51 rho = rho 49532 := by
    unfold seg52Out0AccX51
    linear_combination r5143
  have ha2 : rho 49529 * seg52Out0AccY51 rho = rho 49533 := by
    unfold seg52Out0AccY51
    linear_combination r5144
  have ha3 : 3021 * rho 49532 * rho 49533 = rho 49534 := by
    linear_combination r5145
  have ha4 : rho 49535 * (1 + rho 49534) = rho 49532 + rho 49533 := by
    linear_combination r5146
  have ha5 : rho 49536 * (1 - rho 49534) = rho 49531 - rho 49532 - rho 49533 := by
    linear_combination r5147
  have haddx :
      rho 49535 * (1 + 3021 * (rho 49530 * seg52Out0AccX51 rho) * (rho 49529 * seg52Out0AccY51 rho)) =
        rho 49530 * seg52Out0AccX51 rho + rho 49529 * seg52Out0AccY51 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49536 * (1 - 3021 * (rho 49530 * seg52Out0AccX51 rho) * (rho 49529 * seg52Out0AccY51 rho)) =
        (-1) * (rho 49530 * seg52Out0AccX51 rho) - rho 49529 * seg52Out0AccY51 rho +
          (seg52Out0AccY51 rho - seg52Out0AccX51 rho * (-1)) * (rho 49529 + rho 49530) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49536 * (1 - rho 49534) = rho 49531 - rho 49532 - rho 49533 := ha5
      _ = (-1) * rho 49532 - rho 49533 + (seg52Out0AccY51 rho - seg52Out0AccX51 rho * (-1)) *
          (rho 49529 + rho 49530) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX52 rho = seg52Out0AccX51 rho - Bool.toZMod bit * (seg52Out0AccX51 rho - rho 49535) := by
    have hd : rho 49537 = Bool.toZMod bit * (rho 49535 - seg52Out0AccX51 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX51
      linear_combination -r5148
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY52 rho = seg52Out0AccY51 rho - Bool.toZMod bit * (seg52Out0AccY51 rho - rho 49536) := by
    have hd : rho 49538 = Bool.toZMod bit * (rho 49536 - seg52Out0AccY51 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY51
      linear_combination -r5149
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49529 * rho 49530 = rho 49539 := by linear_combination r5150
  have hd1 : rho 49529 * rho 49529 = rho 49540 := by linear_combination r5151
  have hd2 : rho 49530 * rho 49530 = rho 49541 := by linear_combination r5152
  have hd3 : rho 49542 * (rho 49530 * rho 49530 + rho 49529 * rho 49529 * (-1)) =
      2 * (rho 49529 * rho 49530) := by
    rw [hd0, hd1, hd2]
    linear_combination r5153
  have hd4 : rho 49543 * (2 - (rho 49530 * rho 49530 + rho 49529 * rho 49529 * (-1))) =
      rho 49530 * rho 49530 - rho 49529 * rho 49529 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5154
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX51 rho, seg52Out0AccY51 rho⟩ ⟨rho 49529, rho 49530⟩
    ⟨rho 49535, rho 49536⟩ ⟨seg52Out0AccX52 rho, seg52Out0AccY52 rho⟩ ⟨rho 49542, rho 49543⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows52 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5155 rho ∧ Seg52.relationRow5156 rho ∧ Seg52.relationRow5157 rho ∧ Seg52.relationRow5158 rho ∧ Seg52.relationRow5159 rho ∧ Seg52.relationRow5160 rho ∧ Seg52.relationRow5161 rho ∧ Seg52.relationRow5162 rho ∧ Seg52.relationRow5163 rho ∧ Seg52.relationRow5164 rho ∧ Seg52.relationRow5165 rho ∧ Seg52.relationRow5166 rho ∧ Seg52.relationRow5167 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart64 at p64

  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5155, r5156, r5157, r5158, r5159, r5160, r5161, r5162, r5163, r5164, r5165, r5166, r5167, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5155, r5156, r5157, r5158, r5159, r5160, r5161, r5162, r5163, r5164, r5165, r5166, r5167⟩

theorem seg52Out0_rung52 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48798 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX52 rho, seg52Out0AccY52 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49542, rho 49543⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX52 rho, seg52Out0AccY52 rho⟩ ⟨rho 49542, rho 49543⟩
        ⟨seg52Out0AccX53 rho, seg52Out0AccY53 rho⟩ ⟨rho 49555, rho 49556⟩ := by
  obtain ⟨r5155, r5156, r5157, r5158, r5159, r5160, r5161, r5162, r5163, r5164, r5165, r5166, r5167⟩ := seg52Out0_rows52 rho h
  unfold Seg52.relationRow5155 at r5155

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5155

  unfold Seg52.relationRow5156 at r5156

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5156

  unfold Seg52.relationRow5157 at r5157

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5157

  unfold Seg52.relationRow5158 at r5158

  unfold Seg52.relationRow5159 at r5159

  unfold Seg52.relationRow5160 at r5160

  unfold Seg52.relationRow5161 at r5161

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5161

  unfold Seg52.relationRow5162 at r5162

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5162

  unfold Seg52.relationRow5163 at r5163

  unfold Seg52.relationRow5164 at r5164

  unfold Seg52.relationRow5165 at r5165

  unfold Seg52.relationRow5166 at r5166

  unfold Seg52.relationRow5167 at r5167

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX53 rho = seg52Out0AccX52 rho + rho 49550 := by
    unfold seg52Out0AccX53 seg52Out0AccX52
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 52]

    ring

  have hnexty : seg52Out0AccY53 rho = seg52Out0AccY52 rho + rho 49551 := by
    unfold seg52Out0AccY53 seg52Out0AccY52
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 52]

    ring

  have ha0 : (rho 49542 + rho 49543) * (seg52Out0AccX52 rho + seg52Out0AccY52 rho) = rho 49544 := by
    unfold seg52Out0AccX52 seg52Out0AccY52
    linear_combination r5155
  have ha1 : rho 49543 * seg52Out0AccX52 rho = rho 49545 := by
    unfold seg52Out0AccX52
    linear_combination r5156
  have ha2 : rho 49542 * seg52Out0AccY52 rho = rho 49546 := by
    unfold seg52Out0AccY52
    linear_combination r5157
  have ha3 : 3021 * rho 49545 * rho 49546 = rho 49547 := by
    linear_combination r5158
  have ha4 : rho 49548 * (1 + rho 49547) = rho 49545 + rho 49546 := by
    linear_combination r5159
  have ha5 : rho 49549 * (1 - rho 49547) = rho 49544 - rho 49545 - rho 49546 := by
    linear_combination r5160
  have haddx :
      rho 49548 * (1 + 3021 * (rho 49543 * seg52Out0AccX52 rho) * (rho 49542 * seg52Out0AccY52 rho)) =
        rho 49543 * seg52Out0AccX52 rho + rho 49542 * seg52Out0AccY52 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49549 * (1 - 3021 * (rho 49543 * seg52Out0AccX52 rho) * (rho 49542 * seg52Out0AccY52 rho)) =
        (-1) * (rho 49543 * seg52Out0AccX52 rho) - rho 49542 * seg52Out0AccY52 rho +
          (seg52Out0AccY52 rho - seg52Out0AccX52 rho * (-1)) * (rho 49542 + rho 49543) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49549 * (1 - rho 49547) = rho 49544 - rho 49545 - rho 49546 := ha5
      _ = (-1) * rho 49545 - rho 49546 + (seg52Out0AccY52 rho - seg52Out0AccX52 rho * (-1)) *
          (rho 49542 + rho 49543) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX53 rho = seg52Out0AccX52 rho - Bool.toZMod bit * (seg52Out0AccX52 rho - rho 49548) := by
    have hd : rho 49550 = Bool.toZMod bit * (rho 49548 - seg52Out0AccX52 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX52
      linear_combination -r5161
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY53 rho = seg52Out0AccY52 rho - Bool.toZMod bit * (seg52Out0AccY52 rho - rho 49549) := by
    have hd : rho 49551 = Bool.toZMod bit * (rho 49549 - seg52Out0AccY52 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY52
      linear_combination -r5162
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49542 * rho 49543 = rho 49552 := by linear_combination r5163
  have hd1 : rho 49542 * rho 49542 = rho 49553 := by linear_combination r5164
  have hd2 : rho 49543 * rho 49543 = rho 49554 := by linear_combination r5165
  have hd3 : rho 49555 * (rho 49543 * rho 49543 + rho 49542 * rho 49542 * (-1)) =
      2 * (rho 49542 * rho 49543) := by
    rw [hd0, hd1, hd2]
    linear_combination r5166
  have hd4 : rho 49556 * (2 - (rho 49543 * rho 49543 + rho 49542 * rho 49542 * (-1))) =
      rho 49543 * rho 49543 - rho 49542 * rho 49542 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5167
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX52 rho, seg52Out0AccY52 rho⟩ ⟨rho 49542, rho 49543⟩
    ⟨rho 49548, rho 49549⟩ ⟨seg52Out0AccX53 rho, seg52Out0AccY53 rho⟩ ⟨rho 49555, rho 49556⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows53 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5168 rho ∧ Seg52.relationRow5169 rho ∧ Seg52.relationRow5170 rho ∧ Seg52.relationRow5171 rho ∧ Seg52.relationRow5172 rho ∧ Seg52.relationRow5173 rho ∧ Seg52.relationRow5174 rho ∧ Seg52.relationRow5175 rho ∧ Seg52.relationRow5176 rho ∧ Seg52.relationRow5177 rho ∧ Seg52.relationRow5178 rho ∧ Seg52.relationRow5179 rho ∧ Seg52.relationRow5180 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart64 at p64

  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5168, r5169, r5170, r5171, r5172, r5173, r5174, r5175, r5176, r5177, r5178, r5179, r5180, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5168, r5169, r5170, r5171, r5172, r5173, r5174, r5175, r5176, r5177, r5178, r5179, r5180⟩

theorem seg52Out0_rung53 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48799 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX53 rho, seg52Out0AccY53 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49555, rho 49556⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX53 rho, seg52Out0AccY53 rho⟩ ⟨rho 49555, rho 49556⟩
        ⟨seg52Out0AccX54 rho, seg52Out0AccY54 rho⟩ ⟨rho 49568, rho 49569⟩ := by
  obtain ⟨r5168, r5169, r5170, r5171, r5172, r5173, r5174, r5175, r5176, r5177, r5178, r5179, r5180⟩ := seg52Out0_rows53 rho h
  unfold Seg52.relationRow5168 at r5168

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5168

  unfold Seg52.relationRow5169 at r5169

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5169

  unfold Seg52.relationRow5170 at r5170

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5170

  unfold Seg52.relationRow5171 at r5171

  unfold Seg52.relationRow5172 at r5172

  unfold Seg52.relationRow5173 at r5173

  unfold Seg52.relationRow5174 at r5174

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5174

  unfold Seg52.relationRow5175 at r5175

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5175

  unfold Seg52.relationRow5176 at r5176

  unfold Seg52.relationRow5177 at r5177

  unfold Seg52.relationRow5178 at r5178

  unfold Seg52.relationRow5179 at r5179

  unfold Seg52.relationRow5180 at r5180

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX54 rho = seg52Out0AccX53 rho + rho 49563 := by
    unfold seg52Out0AccX54 seg52Out0AccX53
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 53]

    ring

  have hnexty : seg52Out0AccY54 rho = seg52Out0AccY53 rho + rho 49564 := by
    unfold seg52Out0AccY54 seg52Out0AccY53
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 53]

    ring

  have ha0 : (rho 49555 + rho 49556) * (seg52Out0AccX53 rho + seg52Out0AccY53 rho) = rho 49557 := by
    unfold seg52Out0AccX53 seg52Out0AccY53
    linear_combination r5168
  have ha1 : rho 49556 * seg52Out0AccX53 rho = rho 49558 := by
    unfold seg52Out0AccX53
    linear_combination r5169
  have ha2 : rho 49555 * seg52Out0AccY53 rho = rho 49559 := by
    unfold seg52Out0AccY53
    linear_combination r5170
  have ha3 : 3021 * rho 49558 * rho 49559 = rho 49560 := by
    linear_combination r5171
  have ha4 : rho 49561 * (1 + rho 49560) = rho 49558 + rho 49559 := by
    linear_combination r5172
  have ha5 : rho 49562 * (1 - rho 49560) = rho 49557 - rho 49558 - rho 49559 := by
    linear_combination r5173
  have haddx :
      rho 49561 * (1 + 3021 * (rho 49556 * seg52Out0AccX53 rho) * (rho 49555 * seg52Out0AccY53 rho)) =
        rho 49556 * seg52Out0AccX53 rho + rho 49555 * seg52Out0AccY53 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49562 * (1 - 3021 * (rho 49556 * seg52Out0AccX53 rho) * (rho 49555 * seg52Out0AccY53 rho)) =
        (-1) * (rho 49556 * seg52Out0AccX53 rho) - rho 49555 * seg52Out0AccY53 rho +
          (seg52Out0AccY53 rho - seg52Out0AccX53 rho * (-1)) * (rho 49555 + rho 49556) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49562 * (1 - rho 49560) = rho 49557 - rho 49558 - rho 49559 := ha5
      _ = (-1) * rho 49558 - rho 49559 + (seg52Out0AccY53 rho - seg52Out0AccX53 rho * (-1)) *
          (rho 49555 + rho 49556) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX54 rho = seg52Out0AccX53 rho - Bool.toZMod bit * (seg52Out0AccX53 rho - rho 49561) := by
    have hd : rho 49563 = Bool.toZMod bit * (rho 49561 - seg52Out0AccX53 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX53
      linear_combination -r5174
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY54 rho = seg52Out0AccY53 rho - Bool.toZMod bit * (seg52Out0AccY53 rho - rho 49562) := by
    have hd : rho 49564 = Bool.toZMod bit * (rho 49562 - seg52Out0AccY53 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY53
      linear_combination -r5175
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49555 * rho 49556 = rho 49565 := by linear_combination r5176
  have hd1 : rho 49555 * rho 49555 = rho 49566 := by linear_combination r5177
  have hd2 : rho 49556 * rho 49556 = rho 49567 := by linear_combination r5178
  have hd3 : rho 49568 * (rho 49556 * rho 49556 + rho 49555 * rho 49555 * (-1)) =
      2 * (rho 49555 * rho 49556) := by
    rw [hd0, hd1, hd2]
    linear_combination r5179
  have hd4 : rho 49569 * (2 - (rho 49556 * rho 49556 + rho 49555 * rho 49555 * (-1))) =
      rho 49556 * rho 49556 - rho 49555 * rho 49555 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5180
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX53 rho, seg52Out0AccY53 rho⟩ ⟨rho 49555, rho 49556⟩
    ⟨rho 49561, rho 49562⟩ ⟨seg52Out0AccX54 rho, seg52Out0AccY54 rho⟩ ⟨rho 49568, rho 49569⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows54 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5181 rho ∧ Seg52.relationRow5182 rho ∧ Seg52.relationRow5183 rho ∧ Seg52.relationRow5184 rho ∧ Seg52.relationRow5185 rho ∧ Seg52.relationRow5186 rho ∧ Seg52.relationRow5187 rho ∧ Seg52.relationRow5188 rho ∧ Seg52.relationRow5189 rho ∧ Seg52.relationRow5190 rho ∧ Seg52.relationRow5191 rho ∧ Seg52.relationRow5192 rho ∧ Seg52.relationRow5193 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart64 at p64

  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5181, r5182, r5183, r5184, r5185, r5186, r5187, r5188, r5189, r5190, r5191, r5192, r5193, _, _, _, _, _, _⟩

  exact ⟨r5181, r5182, r5183, r5184, r5185, r5186, r5187, r5188, r5189, r5190, r5191, r5192, r5193⟩

theorem seg52Out0_rung54 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48800 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX54 rho, seg52Out0AccY54 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49568, rho 49569⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX54 rho, seg52Out0AccY54 rho⟩ ⟨rho 49568, rho 49569⟩
        ⟨seg52Out0AccX55 rho, seg52Out0AccY55 rho⟩ ⟨rho 49581, rho 49582⟩ := by
  obtain ⟨r5181, r5182, r5183, r5184, r5185, r5186, r5187, r5188, r5189, r5190, r5191, r5192, r5193⟩ := seg52Out0_rows54 rho h
  unfold Seg52.relationRow5181 at r5181

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5181

  unfold Seg52.relationRow5182 at r5182

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5182

  unfold Seg52.relationRow5183 at r5183

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5183

  unfold Seg52.relationRow5184 at r5184

  unfold Seg52.relationRow5185 at r5185

  unfold Seg52.relationRow5186 at r5186

  unfold Seg52.relationRow5187 at r5187

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5187

  unfold Seg52.relationRow5188 at r5188

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5188

  unfold Seg52.relationRow5189 at r5189

  unfold Seg52.relationRow5190 at r5190

  unfold Seg52.relationRow5191 at r5191

  unfold Seg52.relationRow5192 at r5192

  unfold Seg52.relationRow5193 at r5193

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX55 rho = seg52Out0AccX54 rho + rho 49576 := by
    unfold seg52Out0AccX55 seg52Out0AccX54
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 54]

    ring

  have hnexty : seg52Out0AccY55 rho = seg52Out0AccY54 rho + rho 49577 := by
    unfold seg52Out0AccY55 seg52Out0AccY54
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 54]

    ring

  have ha0 : (rho 49568 + rho 49569) * (seg52Out0AccX54 rho + seg52Out0AccY54 rho) = rho 49570 := by
    unfold seg52Out0AccX54 seg52Out0AccY54
    linear_combination r5181
  have ha1 : rho 49569 * seg52Out0AccX54 rho = rho 49571 := by
    unfold seg52Out0AccX54
    linear_combination r5182
  have ha2 : rho 49568 * seg52Out0AccY54 rho = rho 49572 := by
    unfold seg52Out0AccY54
    linear_combination r5183
  have ha3 : 3021 * rho 49571 * rho 49572 = rho 49573 := by
    linear_combination r5184
  have ha4 : rho 49574 * (1 + rho 49573) = rho 49571 + rho 49572 := by
    linear_combination r5185
  have ha5 : rho 49575 * (1 - rho 49573) = rho 49570 - rho 49571 - rho 49572 := by
    linear_combination r5186
  have haddx :
      rho 49574 * (1 + 3021 * (rho 49569 * seg52Out0AccX54 rho) * (rho 49568 * seg52Out0AccY54 rho)) =
        rho 49569 * seg52Out0AccX54 rho + rho 49568 * seg52Out0AccY54 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49575 * (1 - 3021 * (rho 49569 * seg52Out0AccX54 rho) * (rho 49568 * seg52Out0AccY54 rho)) =
        (-1) * (rho 49569 * seg52Out0AccX54 rho) - rho 49568 * seg52Out0AccY54 rho +
          (seg52Out0AccY54 rho - seg52Out0AccX54 rho * (-1)) * (rho 49568 + rho 49569) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49575 * (1 - rho 49573) = rho 49570 - rho 49571 - rho 49572 := ha5
      _ = (-1) * rho 49571 - rho 49572 + (seg52Out0AccY54 rho - seg52Out0AccX54 rho * (-1)) *
          (rho 49568 + rho 49569) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX55 rho = seg52Out0AccX54 rho - Bool.toZMod bit * (seg52Out0AccX54 rho - rho 49574) := by
    have hd : rho 49576 = Bool.toZMod bit * (rho 49574 - seg52Out0AccX54 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX54
      linear_combination -r5187
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY55 rho = seg52Out0AccY54 rho - Bool.toZMod bit * (seg52Out0AccY54 rho - rho 49575) := by
    have hd : rho 49577 = Bool.toZMod bit * (rho 49575 - seg52Out0AccY54 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY54
      linear_combination -r5188
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49568 * rho 49569 = rho 49578 := by linear_combination r5189
  have hd1 : rho 49568 * rho 49568 = rho 49579 := by linear_combination r5190
  have hd2 : rho 49569 * rho 49569 = rho 49580 := by linear_combination r5191
  have hd3 : rho 49581 * (rho 49569 * rho 49569 + rho 49568 * rho 49568 * (-1)) =
      2 * (rho 49568 * rho 49569) := by
    rw [hd0, hd1, hd2]
    linear_combination r5192
  have hd4 : rho 49582 * (2 - (rho 49569 * rho 49569 + rho 49568 * rho 49568 * (-1))) =
      rho 49569 * rho 49569 - rho 49568 * rho 49568 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5193
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX54 rho, seg52Out0AccY54 rho⟩ ⟨rho 49568, rho 49569⟩
    ⟨rho 49574, rho 49575⟩ ⟨seg52Out0AccX55 rho, seg52Out0AccY55 rho⟩ ⟨rho 49581, rho 49582⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_hstep_c4 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (48746 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 44 ≤ i → i < 55 →
      EdwardsBridge.onCurve (seg52Out0AccState rho i) →
      EdwardsBridge.onCurve (seg52Out0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52Out0AccState rho i) (seg52Out0CurState rho i)
        (seg52Out0AccState rho (i + 1)) (seg52Out0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52Out0_rung44 rho h bits[44]! (hbitAt 44 (by omega)) hacc hcur
  · exact seg52Out0_rung45 rho h bits[45]! (hbitAt 45 (by omega)) hacc hcur
  · exact seg52Out0_rung46 rho h bits[46]! (hbitAt 46 (by omega)) hacc hcur
  · exact seg52Out0_rung47 rho h bits[47]! (hbitAt 47 (by omega)) hacc hcur
  · exact seg52Out0_rung48 rho h bits[48]! (hbitAt 48 (by omega)) hacc hcur
  · exact seg52Out0_rung49 rho h bits[49]! (hbitAt 49 (by omega)) hacc hcur
  · exact seg52Out0_rung50 rho h bits[50]! (hbitAt 50 (by omega)) hacc hcur
  · exact seg52Out0_rung51 rho h bits[51]! (hbitAt 51 (by omega)) hacc hcur
  · exact seg52Out0_rung52 rho h bits[52]! (hbitAt 52 (by omega)) hacc hcur
  · exact seg52Out0_rung53 rho h bits[53]! (hbitAt 53 (by omega)) hacc hcur
  · exact seg52Out0_rung54 rho h bits[54]! (hbitAt 54 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
