import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Out0_rows121 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6052 rho ∧ Seg52.relationRow6053 rho ∧ Seg52.relationRow6054 rho ∧ Seg52.relationRow6055 rho ∧ Seg52.relationRow6056 rho ∧ Seg52.relationRow6057 rho ∧ Seg52.relationRow6058 rho ∧ Seg52.relationRow6059 rho ∧ Seg52.relationRow6060 rho ∧ Seg52.relationRow6061 rho ∧ Seg52.relationRow6062 rho ∧ Seg52.relationRow6063 rho ∧ Seg52.relationRow6064 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart75 at p75

  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6052, r6053, r6054, r6055, r6056, r6057, r6058, r6059, r6060, r6061, r6062, r6063, r6064, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6052, r6053, r6054, r6055, r6056, r6057, r6058, r6059, r6060, r6061, r6062, r6063, r6064⟩

theorem seg52Out0_rung121 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48867 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX121 rho, seg52Out0AccY121 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50439, rho 50440⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX121 rho, seg52Out0AccY121 rho⟩ ⟨rho 50439, rho 50440⟩
        ⟨seg52Out0AccX122 rho, seg52Out0AccY122 rho⟩ ⟨rho 50452, rho 50453⟩ := by
  obtain ⟨r6052, r6053, r6054, r6055, r6056, r6057, r6058, r6059, r6060, r6061, r6062, r6063, r6064⟩ := seg52Out0_rows121 rho h
  unfold Seg52.relationRow6052 at r6052

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6052

  unfold Seg52.relationRow6053 at r6053

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6053

  unfold Seg52.relationRow6054 at r6054

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6054

  unfold Seg52.relationRow6055 at r6055

  unfold Seg52.relationRow6056 at r6056

  unfold Seg52.relationRow6057 at r6057

  unfold Seg52.relationRow6058 at r6058

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6058

  unfold Seg52.relationRow6059 at r6059

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6059

  unfold Seg52.relationRow6060 at r6060

  unfold Seg52.relationRow6061 at r6061

  unfold Seg52.relationRow6062 at r6062

  unfold Seg52.relationRow6063 at r6063

  unfold Seg52.relationRow6064 at r6064

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX122 rho = seg52Out0AccX121 rho + rho 50447 := by
    unfold seg52Out0AccX122 seg52Out0AccX121
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 121]

    ring

  have hnexty : seg52Out0AccY122 rho = seg52Out0AccY121 rho + rho 50448 := by
    unfold seg52Out0AccY122 seg52Out0AccY121
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 121]

    ring

  have ha0 : (rho 50439 + rho 50440) * (seg52Out0AccX121 rho + seg52Out0AccY121 rho) = rho 50441 := by
    unfold seg52Out0AccX121 seg52Out0AccY121
    linear_combination r6052
  have ha1 : rho 50440 * seg52Out0AccX121 rho = rho 50442 := by
    unfold seg52Out0AccX121
    linear_combination r6053
  have ha2 : rho 50439 * seg52Out0AccY121 rho = rho 50443 := by
    unfold seg52Out0AccY121
    linear_combination r6054
  have ha3 : 3021 * rho 50442 * rho 50443 = rho 50444 := by
    linear_combination r6055
  have ha4 : rho 50445 * (1 + rho 50444) = rho 50442 + rho 50443 := by
    linear_combination r6056
  have ha5 : rho 50446 * (1 - rho 50444) = rho 50441 - rho 50442 - rho 50443 := by
    linear_combination r6057
  have haddx :
      rho 50445 * (1 + 3021 * (rho 50440 * seg52Out0AccX121 rho) * (rho 50439 * seg52Out0AccY121 rho)) =
        rho 50440 * seg52Out0AccX121 rho + rho 50439 * seg52Out0AccY121 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50446 * (1 - 3021 * (rho 50440 * seg52Out0AccX121 rho) * (rho 50439 * seg52Out0AccY121 rho)) =
        (-1) * (rho 50440 * seg52Out0AccX121 rho) - rho 50439 * seg52Out0AccY121 rho +
          (seg52Out0AccY121 rho - seg52Out0AccX121 rho * (-1)) * (rho 50439 + rho 50440) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50446 * (1 - rho 50444) = rho 50441 - rho 50442 - rho 50443 := ha5
      _ = (-1) * rho 50442 - rho 50443 + (seg52Out0AccY121 rho - seg52Out0AccX121 rho * (-1)) *
          (rho 50439 + rho 50440) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX122 rho = seg52Out0AccX121 rho - Bool.toZMod bit * (seg52Out0AccX121 rho - rho 50445) := by
    have hd : rho 50447 = Bool.toZMod bit * (rho 50445 - seg52Out0AccX121 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX121
      linear_combination -r6058
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY122 rho = seg52Out0AccY121 rho - Bool.toZMod bit * (seg52Out0AccY121 rho - rho 50446) := by
    have hd : rho 50448 = Bool.toZMod bit * (rho 50446 - seg52Out0AccY121 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY121
      linear_combination -r6059
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50439 * rho 50440 = rho 50449 := by linear_combination r6060
  have hd1 : rho 50439 * rho 50439 = rho 50450 := by linear_combination r6061
  have hd2 : rho 50440 * rho 50440 = rho 50451 := by linear_combination r6062
  have hd3 : rho 50452 * (rho 50440 * rho 50440 + rho 50439 * rho 50439 * (-1)) =
      2 * (rho 50439 * rho 50440) := by
    rw [hd0, hd1, hd2]
    linear_combination r6063
  have hd4 : rho 50453 * (2 - (rho 50440 * rho 50440 + rho 50439 * rho 50439 * (-1))) =
      rho 50440 * rho 50440 - rho 50439 * rho 50439 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6064
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX121 rho, seg52Out0AccY121 rho⟩ ⟨rho 50439, rho 50440⟩
    ⟨rho 50445, rho 50446⟩ ⟨seg52Out0AccX122 rho, seg52Out0AccY122 rho⟩ ⟨rho 50452, rho 50453⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows122 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6065 rho ∧ Seg52.relationRow6066 rho ∧ Seg52.relationRow6067 rho ∧ Seg52.relationRow6068 rho ∧ Seg52.relationRow6069 rho ∧ Seg52.relationRow6070 rho ∧ Seg52.relationRow6071 rho ∧ Seg52.relationRow6072 rho ∧ Seg52.relationRow6073 rho ∧ Seg52.relationRow6074 rho ∧ Seg52.relationRow6075 rho ∧ Seg52.relationRow6076 rho ∧ Seg52.relationRow6077 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart75 at p75

  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6065, r6066, r6067, r6068, r6069, r6070, r6071, r6072, r6073, r6074, r6075, r6076, r6077, _, _⟩

  exact ⟨r6065, r6066, r6067, r6068, r6069, r6070, r6071, r6072, r6073, r6074, r6075, r6076, r6077⟩

theorem seg52Out0_rung122 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48868 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX122 rho, seg52Out0AccY122 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50452, rho 50453⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX122 rho, seg52Out0AccY122 rho⟩ ⟨rho 50452, rho 50453⟩
        ⟨seg52Out0AccX123 rho, seg52Out0AccY123 rho⟩ ⟨rho 50465, rho 50466⟩ := by
  obtain ⟨r6065, r6066, r6067, r6068, r6069, r6070, r6071, r6072, r6073, r6074, r6075, r6076, r6077⟩ := seg52Out0_rows122 rho h
  unfold Seg52.relationRow6065 at r6065

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6065

  unfold Seg52.relationRow6066 at r6066

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6066

  unfold Seg52.relationRow6067 at r6067

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6067

  unfold Seg52.relationRow6068 at r6068

  unfold Seg52.relationRow6069 at r6069

  unfold Seg52.relationRow6070 at r6070

  unfold Seg52.relationRow6071 at r6071

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6071

  unfold Seg52.relationRow6072 at r6072

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6072

  unfold Seg52.relationRow6073 at r6073

  unfold Seg52.relationRow6074 at r6074

  unfold Seg52.relationRow6075 at r6075

  unfold Seg52.relationRow6076 at r6076

  unfold Seg52.relationRow6077 at r6077

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX123 rho = seg52Out0AccX122 rho + rho 50460 := by
    unfold seg52Out0AccX123 seg52Out0AccX122
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 122]

    ring

  have hnexty : seg52Out0AccY123 rho = seg52Out0AccY122 rho + rho 50461 := by
    unfold seg52Out0AccY123 seg52Out0AccY122
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 122]

    ring

  have ha0 : (rho 50452 + rho 50453) * (seg52Out0AccX122 rho + seg52Out0AccY122 rho) = rho 50454 := by
    unfold seg52Out0AccX122 seg52Out0AccY122
    linear_combination r6065
  have ha1 : rho 50453 * seg52Out0AccX122 rho = rho 50455 := by
    unfold seg52Out0AccX122
    linear_combination r6066
  have ha2 : rho 50452 * seg52Out0AccY122 rho = rho 50456 := by
    unfold seg52Out0AccY122
    linear_combination r6067
  have ha3 : 3021 * rho 50455 * rho 50456 = rho 50457 := by
    linear_combination r6068
  have ha4 : rho 50458 * (1 + rho 50457) = rho 50455 + rho 50456 := by
    linear_combination r6069
  have ha5 : rho 50459 * (1 - rho 50457) = rho 50454 - rho 50455 - rho 50456 := by
    linear_combination r6070
  have haddx :
      rho 50458 * (1 + 3021 * (rho 50453 * seg52Out0AccX122 rho) * (rho 50452 * seg52Out0AccY122 rho)) =
        rho 50453 * seg52Out0AccX122 rho + rho 50452 * seg52Out0AccY122 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50459 * (1 - 3021 * (rho 50453 * seg52Out0AccX122 rho) * (rho 50452 * seg52Out0AccY122 rho)) =
        (-1) * (rho 50453 * seg52Out0AccX122 rho) - rho 50452 * seg52Out0AccY122 rho +
          (seg52Out0AccY122 rho - seg52Out0AccX122 rho * (-1)) * (rho 50452 + rho 50453) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50459 * (1 - rho 50457) = rho 50454 - rho 50455 - rho 50456 := ha5
      _ = (-1) * rho 50455 - rho 50456 + (seg52Out0AccY122 rho - seg52Out0AccX122 rho * (-1)) *
          (rho 50452 + rho 50453) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX123 rho = seg52Out0AccX122 rho - Bool.toZMod bit * (seg52Out0AccX122 rho - rho 50458) := by
    have hd : rho 50460 = Bool.toZMod bit * (rho 50458 - seg52Out0AccX122 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX122
      linear_combination -r6071
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY123 rho = seg52Out0AccY122 rho - Bool.toZMod bit * (seg52Out0AccY122 rho - rho 50459) := by
    have hd : rho 50461 = Bool.toZMod bit * (rho 50459 - seg52Out0AccY122 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY122
      linear_combination -r6072
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50452 * rho 50453 = rho 50462 := by linear_combination r6073
  have hd1 : rho 50452 * rho 50452 = rho 50463 := by linear_combination r6074
  have hd2 : rho 50453 * rho 50453 = rho 50464 := by linear_combination r6075
  have hd3 : rho 50465 * (rho 50453 * rho 50453 + rho 50452 * rho 50452 * (-1)) =
      2 * (rho 50452 * rho 50453) := by
    rw [hd0, hd1, hd2]
    linear_combination r6076
  have hd4 : rho 50466 * (2 - (rho 50453 * rho 50453 + rho 50452 * rho 50452 * (-1))) =
      rho 50453 * rho 50453 - rho 50452 * rho 50452 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6077
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX122 rho, seg52Out0AccY122 rho⟩ ⟨rho 50452, rho 50453⟩
    ⟨rho 50458, rho 50459⟩ ⟨seg52Out0AccX123 rho, seg52Out0AccY123 rho⟩ ⟨rho 50465, rho 50466⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows123 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6078 rho ∧ Seg52.relationRow6079 rho ∧ Seg52.relationRow6080 rho ∧ Seg52.relationRow6081 rho ∧ Seg52.relationRow6082 rho ∧ Seg52.relationRow6083 rho ∧ Seg52.relationRow6084 rho ∧ Seg52.relationRow6085 rho ∧ Seg52.relationRow6086 rho ∧ Seg52.relationRow6087 rho ∧ Seg52.relationRow6088 rho ∧ Seg52.relationRow6089 rho ∧ Seg52.relationRow6090 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart75 at p75

  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6078, r6079⟩

  unfold Seg52.relationPart76 at p76

  rcases p76 with ⟨r6080, r6081, r6082, r6083, r6084, r6085, r6086, r6087, r6088, r6089, r6090, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6078, r6079, r6080, r6081, r6082, r6083, r6084, r6085, r6086, r6087, r6088, r6089, r6090⟩

theorem seg52Out0_rung123 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48869 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX123 rho, seg52Out0AccY123 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50465, rho 50466⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX123 rho, seg52Out0AccY123 rho⟩ ⟨rho 50465, rho 50466⟩
        ⟨seg52Out0AccX124 rho, seg52Out0AccY124 rho⟩ ⟨rho 50478, rho 50479⟩ := by
  obtain ⟨r6078, r6079, r6080, r6081, r6082, r6083, r6084, r6085, r6086, r6087, r6088, r6089, r6090⟩ := seg52Out0_rows123 rho h
  unfold Seg52.relationRow6078 at r6078

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6078

  unfold Seg52.relationRow6079 at r6079

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6079

  unfold Seg52.relationRow6080 at r6080

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6080

  unfold Seg52.relationRow6081 at r6081

  unfold Seg52.relationRow6082 at r6082

  unfold Seg52.relationRow6083 at r6083

  unfold Seg52.relationRow6084 at r6084

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6084

  unfold Seg52.relationRow6085 at r6085

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6085

  unfold Seg52.relationRow6086 at r6086

  unfold Seg52.relationRow6087 at r6087

  unfold Seg52.relationRow6088 at r6088

  unfold Seg52.relationRow6089 at r6089

  unfold Seg52.relationRow6090 at r6090

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX124 rho = seg52Out0AccX123 rho + rho 50473 := by
    unfold seg52Out0AccX124 seg52Out0AccX123
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 123]

    ring

  have hnexty : seg52Out0AccY124 rho = seg52Out0AccY123 rho + rho 50474 := by
    unfold seg52Out0AccY124 seg52Out0AccY123
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 123]

    ring

  have ha0 : (rho 50465 + rho 50466) * (seg52Out0AccX123 rho + seg52Out0AccY123 rho) = rho 50467 := by
    unfold seg52Out0AccX123 seg52Out0AccY123
    linear_combination r6078
  have ha1 : rho 50466 * seg52Out0AccX123 rho = rho 50468 := by
    unfold seg52Out0AccX123
    linear_combination r6079
  have ha2 : rho 50465 * seg52Out0AccY123 rho = rho 50469 := by
    unfold seg52Out0AccY123
    linear_combination r6080
  have ha3 : 3021 * rho 50468 * rho 50469 = rho 50470 := by
    linear_combination r6081
  have ha4 : rho 50471 * (1 + rho 50470) = rho 50468 + rho 50469 := by
    linear_combination r6082
  have ha5 : rho 50472 * (1 - rho 50470) = rho 50467 - rho 50468 - rho 50469 := by
    linear_combination r6083
  have haddx :
      rho 50471 * (1 + 3021 * (rho 50466 * seg52Out0AccX123 rho) * (rho 50465 * seg52Out0AccY123 rho)) =
        rho 50466 * seg52Out0AccX123 rho + rho 50465 * seg52Out0AccY123 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50472 * (1 - 3021 * (rho 50466 * seg52Out0AccX123 rho) * (rho 50465 * seg52Out0AccY123 rho)) =
        (-1) * (rho 50466 * seg52Out0AccX123 rho) - rho 50465 * seg52Out0AccY123 rho +
          (seg52Out0AccY123 rho - seg52Out0AccX123 rho * (-1)) * (rho 50465 + rho 50466) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50472 * (1 - rho 50470) = rho 50467 - rho 50468 - rho 50469 := ha5
      _ = (-1) * rho 50468 - rho 50469 + (seg52Out0AccY123 rho - seg52Out0AccX123 rho * (-1)) *
          (rho 50465 + rho 50466) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX124 rho = seg52Out0AccX123 rho - Bool.toZMod bit * (seg52Out0AccX123 rho - rho 50471) := by
    have hd : rho 50473 = Bool.toZMod bit * (rho 50471 - seg52Out0AccX123 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX123
      linear_combination -r6084
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY124 rho = seg52Out0AccY123 rho - Bool.toZMod bit * (seg52Out0AccY123 rho - rho 50472) := by
    have hd : rho 50474 = Bool.toZMod bit * (rho 50472 - seg52Out0AccY123 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY123
      linear_combination -r6085
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50465 * rho 50466 = rho 50475 := by linear_combination r6086
  have hd1 : rho 50465 * rho 50465 = rho 50476 := by linear_combination r6087
  have hd2 : rho 50466 * rho 50466 = rho 50477 := by linear_combination r6088
  have hd3 : rho 50478 * (rho 50466 * rho 50466 + rho 50465 * rho 50465 * (-1)) =
      2 * (rho 50465 * rho 50466) := by
    rw [hd0, hd1, hd2]
    linear_combination r6089
  have hd4 : rho 50479 * (2 - (rho 50466 * rho 50466 + rho 50465 * rho 50465 * (-1))) =
      rho 50466 * rho 50466 - rho 50465 * rho 50465 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6090
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX123 rho, seg52Out0AccY123 rho⟩ ⟨rho 50465, rho 50466⟩
    ⟨rho 50471, rho 50472⟩ ⟨seg52Out0AccX124 rho, seg52Out0AccY124 rho⟩ ⟨rho 50478, rho 50479⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows124 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6091 rho ∧ Seg52.relationRow6092 rho ∧ Seg52.relationRow6093 rho ∧ Seg52.relationRow6094 rho ∧ Seg52.relationRow6095 rho ∧ Seg52.relationRow6096 rho ∧ Seg52.relationRow6097 rho ∧ Seg52.relationRow6098 rho ∧ Seg52.relationRow6099 rho ∧ Seg52.relationRow6100 rho ∧ Seg52.relationRow6101 rho ∧ Seg52.relationRow6102 rho ∧ Seg52.relationRow6103 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart76 at p76

  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, r6091, r6092, r6093, r6094, r6095, r6096, r6097, r6098, r6099, r6100, r6101, r6102, r6103, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6091, r6092, r6093, r6094, r6095, r6096, r6097, r6098, r6099, r6100, r6101, r6102, r6103⟩

theorem seg52Out0_rung124 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48870 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX124 rho, seg52Out0AccY124 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50478, rho 50479⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX124 rho, seg52Out0AccY124 rho⟩ ⟨rho 50478, rho 50479⟩
        ⟨seg52Out0AccX125 rho, seg52Out0AccY125 rho⟩ ⟨rho 50491, rho 50492⟩ := by
  obtain ⟨r6091, r6092, r6093, r6094, r6095, r6096, r6097, r6098, r6099, r6100, r6101, r6102, r6103⟩ := seg52Out0_rows124 rho h
  unfold Seg52.relationRow6091 at r6091

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6091

  unfold Seg52.relationRow6092 at r6092

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6092

  unfold Seg52.relationRow6093 at r6093

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6093

  unfold Seg52.relationRow6094 at r6094

  unfold Seg52.relationRow6095 at r6095

  unfold Seg52.relationRow6096 at r6096

  unfold Seg52.relationRow6097 at r6097

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6097

  unfold Seg52.relationRow6098 at r6098

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6098

  unfold Seg52.relationRow6099 at r6099

  unfold Seg52.relationRow6100 at r6100

  unfold Seg52.relationRow6101 at r6101

  unfold Seg52.relationRow6102 at r6102

  unfold Seg52.relationRow6103 at r6103

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX125 rho = seg52Out0AccX124 rho + rho 50486 := by
    unfold seg52Out0AccX125 seg52Out0AccX124
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 124]

    ring

  have hnexty : seg52Out0AccY125 rho = seg52Out0AccY124 rho + rho 50487 := by
    unfold seg52Out0AccY125 seg52Out0AccY124
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 124]

    ring

  have ha0 : (rho 50478 + rho 50479) * (seg52Out0AccX124 rho + seg52Out0AccY124 rho) = rho 50480 := by
    unfold seg52Out0AccX124 seg52Out0AccY124
    linear_combination r6091
  have ha1 : rho 50479 * seg52Out0AccX124 rho = rho 50481 := by
    unfold seg52Out0AccX124
    linear_combination r6092
  have ha2 : rho 50478 * seg52Out0AccY124 rho = rho 50482 := by
    unfold seg52Out0AccY124
    linear_combination r6093
  have ha3 : 3021 * rho 50481 * rho 50482 = rho 50483 := by
    linear_combination r6094
  have ha4 : rho 50484 * (1 + rho 50483) = rho 50481 + rho 50482 := by
    linear_combination r6095
  have ha5 : rho 50485 * (1 - rho 50483) = rho 50480 - rho 50481 - rho 50482 := by
    linear_combination r6096
  have haddx :
      rho 50484 * (1 + 3021 * (rho 50479 * seg52Out0AccX124 rho) * (rho 50478 * seg52Out0AccY124 rho)) =
        rho 50479 * seg52Out0AccX124 rho + rho 50478 * seg52Out0AccY124 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50485 * (1 - 3021 * (rho 50479 * seg52Out0AccX124 rho) * (rho 50478 * seg52Out0AccY124 rho)) =
        (-1) * (rho 50479 * seg52Out0AccX124 rho) - rho 50478 * seg52Out0AccY124 rho +
          (seg52Out0AccY124 rho - seg52Out0AccX124 rho * (-1)) * (rho 50478 + rho 50479) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50485 * (1 - rho 50483) = rho 50480 - rho 50481 - rho 50482 := ha5
      _ = (-1) * rho 50481 - rho 50482 + (seg52Out0AccY124 rho - seg52Out0AccX124 rho * (-1)) *
          (rho 50478 + rho 50479) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX125 rho = seg52Out0AccX124 rho - Bool.toZMod bit * (seg52Out0AccX124 rho - rho 50484) := by
    have hd : rho 50486 = Bool.toZMod bit * (rho 50484 - seg52Out0AccX124 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX124
      linear_combination -r6097
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY125 rho = seg52Out0AccY124 rho - Bool.toZMod bit * (seg52Out0AccY124 rho - rho 50485) := by
    have hd : rho 50487 = Bool.toZMod bit * (rho 50485 - seg52Out0AccY124 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY124
      linear_combination -r6098
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50478 * rho 50479 = rho 50488 := by linear_combination r6099
  have hd1 : rho 50478 * rho 50478 = rho 50489 := by linear_combination r6100
  have hd2 : rho 50479 * rho 50479 = rho 50490 := by linear_combination r6101
  have hd3 : rho 50491 * (rho 50479 * rho 50479 + rho 50478 * rho 50478 * (-1)) =
      2 * (rho 50478 * rho 50479) := by
    rw [hd0, hd1, hd2]
    linear_combination r6102
  have hd4 : rho 50492 * (2 - (rho 50479 * rho 50479 + rho 50478 * rho 50478 * (-1))) =
      rho 50479 * rho 50479 - rho 50478 * rho 50478 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6103
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX124 rho, seg52Out0AccY124 rho⟩ ⟨rho 50478, rho 50479⟩
    ⟨rho 50484, rho 50485⟩ ⟨seg52Out0AccX125 rho, seg52Out0AccY125 rho⟩ ⟨rho 50491, rho 50492⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows125 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6104 rho ∧ Seg52.relationRow6105 rho ∧ Seg52.relationRow6106 rho ∧ Seg52.relationRow6107 rho ∧ Seg52.relationRow6108 rho ∧ Seg52.relationRow6109 rho ∧ Seg52.relationRow6110 rho ∧ Seg52.relationRow6111 rho ∧ Seg52.relationRow6112 rho ∧ Seg52.relationRow6113 rho ∧ Seg52.relationRow6114 rho ∧ Seg52.relationRow6115 rho ∧ Seg52.relationRow6116 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart76 at p76

  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6104, r6105, r6106, r6107, r6108, r6109, r6110, r6111, r6112, r6113, r6114, r6115, r6116, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6104, r6105, r6106, r6107, r6108, r6109, r6110, r6111, r6112, r6113, r6114, r6115, r6116⟩

theorem seg52Out0_rung125 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48871 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX125 rho, seg52Out0AccY125 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50491, rho 50492⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX125 rho, seg52Out0AccY125 rho⟩ ⟨rho 50491, rho 50492⟩
        ⟨seg52Out0AccX126 rho, seg52Out0AccY126 rho⟩ ⟨rho 50504, rho 50505⟩ := by
  obtain ⟨r6104, r6105, r6106, r6107, r6108, r6109, r6110, r6111, r6112, r6113, r6114, r6115, r6116⟩ := seg52Out0_rows125 rho h
  unfold Seg52.relationRow6104 at r6104

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6104

  unfold Seg52.relationRow6105 at r6105

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6105

  unfold Seg52.relationRow6106 at r6106

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6106

  unfold Seg52.relationRow6107 at r6107

  unfold Seg52.relationRow6108 at r6108

  unfold Seg52.relationRow6109 at r6109

  unfold Seg52.relationRow6110 at r6110

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6110

  unfold Seg52.relationRow6111 at r6111

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6111

  unfold Seg52.relationRow6112 at r6112

  unfold Seg52.relationRow6113 at r6113

  unfold Seg52.relationRow6114 at r6114

  unfold Seg52.relationRow6115 at r6115

  unfold Seg52.relationRow6116 at r6116

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX126 rho = seg52Out0AccX125 rho + rho 50499 := by
    unfold seg52Out0AccX126 seg52Out0AccX125
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 125]

    ring

  have hnexty : seg52Out0AccY126 rho = seg52Out0AccY125 rho + rho 50500 := by
    unfold seg52Out0AccY126 seg52Out0AccY125
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 125]

    ring

  have ha0 : (rho 50491 + rho 50492) * (seg52Out0AccX125 rho + seg52Out0AccY125 rho) = rho 50493 := by
    unfold seg52Out0AccX125 seg52Out0AccY125
    linear_combination r6104
  have ha1 : rho 50492 * seg52Out0AccX125 rho = rho 50494 := by
    unfold seg52Out0AccX125
    linear_combination r6105
  have ha2 : rho 50491 * seg52Out0AccY125 rho = rho 50495 := by
    unfold seg52Out0AccY125
    linear_combination r6106
  have ha3 : 3021 * rho 50494 * rho 50495 = rho 50496 := by
    linear_combination r6107
  have ha4 : rho 50497 * (1 + rho 50496) = rho 50494 + rho 50495 := by
    linear_combination r6108
  have ha5 : rho 50498 * (1 - rho 50496) = rho 50493 - rho 50494 - rho 50495 := by
    linear_combination r6109
  have haddx :
      rho 50497 * (1 + 3021 * (rho 50492 * seg52Out0AccX125 rho) * (rho 50491 * seg52Out0AccY125 rho)) =
        rho 50492 * seg52Out0AccX125 rho + rho 50491 * seg52Out0AccY125 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50498 * (1 - 3021 * (rho 50492 * seg52Out0AccX125 rho) * (rho 50491 * seg52Out0AccY125 rho)) =
        (-1) * (rho 50492 * seg52Out0AccX125 rho) - rho 50491 * seg52Out0AccY125 rho +
          (seg52Out0AccY125 rho - seg52Out0AccX125 rho * (-1)) * (rho 50491 + rho 50492) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50498 * (1 - rho 50496) = rho 50493 - rho 50494 - rho 50495 := ha5
      _ = (-1) * rho 50494 - rho 50495 + (seg52Out0AccY125 rho - seg52Out0AccX125 rho * (-1)) *
          (rho 50491 + rho 50492) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX126 rho = seg52Out0AccX125 rho - Bool.toZMod bit * (seg52Out0AccX125 rho - rho 50497) := by
    have hd : rho 50499 = Bool.toZMod bit * (rho 50497 - seg52Out0AccX125 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX125
      linear_combination -r6110
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY126 rho = seg52Out0AccY125 rho - Bool.toZMod bit * (seg52Out0AccY125 rho - rho 50498) := by
    have hd : rho 50500 = Bool.toZMod bit * (rho 50498 - seg52Out0AccY125 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY125
      linear_combination -r6111
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50491 * rho 50492 = rho 50501 := by linear_combination r6112
  have hd1 : rho 50491 * rho 50491 = rho 50502 := by linear_combination r6113
  have hd2 : rho 50492 * rho 50492 = rho 50503 := by linear_combination r6114
  have hd3 : rho 50504 * (rho 50492 * rho 50492 + rho 50491 * rho 50491 * (-1)) =
      2 * (rho 50491 * rho 50492) := by
    rw [hd0, hd1, hd2]
    linear_combination r6115
  have hd4 : rho 50505 * (2 - (rho 50492 * rho 50492 + rho 50491 * rho 50491 * (-1))) =
      rho 50492 * rho 50492 - rho 50491 * rho 50491 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6116
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX125 rho, seg52Out0AccY125 rho⟩ ⟨rho 50491, rho 50492⟩
    ⟨rho 50497, rho 50498⟩ ⟨seg52Out0AccX126 rho, seg52Out0AccY126 rho⟩ ⟨rho 50504, rho 50505⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows126 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6117 rho ∧ Seg52.relationRow6118 rho ∧ Seg52.relationRow6119 rho ∧ Seg52.relationRow6120 rho ∧ Seg52.relationRow6121 rho ∧ Seg52.relationRow6122 rho ∧ Seg52.relationRow6123 rho ∧ Seg52.relationRow6124 rho ∧ Seg52.relationRow6125 rho ∧ Seg52.relationRow6126 rho ∧ Seg52.relationRow6127 rho ∧ Seg52.relationRow6128 rho ∧ Seg52.relationRow6129 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart76 at p76

  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6117, r6118, r6119, r6120, r6121, r6122, r6123, r6124, r6125, r6126, r6127, r6128, r6129, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6117, r6118, r6119, r6120, r6121, r6122, r6123, r6124, r6125, r6126, r6127, r6128, r6129⟩

theorem seg52Out0_rung126 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48872 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX126 rho, seg52Out0AccY126 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50504, rho 50505⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX126 rho, seg52Out0AccY126 rho⟩ ⟨rho 50504, rho 50505⟩
        ⟨seg52Out0AccX127 rho, seg52Out0AccY127 rho⟩ ⟨rho 50517, rho 50518⟩ := by
  obtain ⟨r6117, r6118, r6119, r6120, r6121, r6122, r6123, r6124, r6125, r6126, r6127, r6128, r6129⟩ := seg52Out0_rows126 rho h
  unfold Seg52.relationRow6117 at r6117

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6117

  unfold Seg52.relationRow6118 at r6118

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6118

  unfold Seg52.relationRow6119 at r6119

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6119

  unfold Seg52.relationRow6120 at r6120

  unfold Seg52.relationRow6121 at r6121

  unfold Seg52.relationRow6122 at r6122

  unfold Seg52.relationRow6123 at r6123

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6123

  unfold Seg52.relationRow6124 at r6124

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6124

  unfold Seg52.relationRow6125 at r6125

  unfold Seg52.relationRow6126 at r6126

  unfold Seg52.relationRow6127 at r6127

  unfold Seg52.relationRow6128 at r6128

  unfold Seg52.relationRow6129 at r6129

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX127 rho = seg52Out0AccX126 rho + rho 50512 := by
    unfold seg52Out0AccX127 seg52Out0AccX126
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 126]

    ring

  have hnexty : seg52Out0AccY127 rho = seg52Out0AccY126 rho + rho 50513 := by
    unfold seg52Out0AccY127 seg52Out0AccY126
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 126]

    ring

  have ha0 : (rho 50504 + rho 50505) * (seg52Out0AccX126 rho + seg52Out0AccY126 rho) = rho 50506 := by
    unfold seg52Out0AccX126 seg52Out0AccY126
    linear_combination r6117
  have ha1 : rho 50505 * seg52Out0AccX126 rho = rho 50507 := by
    unfold seg52Out0AccX126
    linear_combination r6118
  have ha2 : rho 50504 * seg52Out0AccY126 rho = rho 50508 := by
    unfold seg52Out0AccY126
    linear_combination r6119
  have ha3 : 3021 * rho 50507 * rho 50508 = rho 50509 := by
    linear_combination r6120
  have ha4 : rho 50510 * (1 + rho 50509) = rho 50507 + rho 50508 := by
    linear_combination r6121
  have ha5 : rho 50511 * (1 - rho 50509) = rho 50506 - rho 50507 - rho 50508 := by
    linear_combination r6122
  have haddx :
      rho 50510 * (1 + 3021 * (rho 50505 * seg52Out0AccX126 rho) * (rho 50504 * seg52Out0AccY126 rho)) =
        rho 50505 * seg52Out0AccX126 rho + rho 50504 * seg52Out0AccY126 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50511 * (1 - 3021 * (rho 50505 * seg52Out0AccX126 rho) * (rho 50504 * seg52Out0AccY126 rho)) =
        (-1) * (rho 50505 * seg52Out0AccX126 rho) - rho 50504 * seg52Out0AccY126 rho +
          (seg52Out0AccY126 rho - seg52Out0AccX126 rho * (-1)) * (rho 50504 + rho 50505) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50511 * (1 - rho 50509) = rho 50506 - rho 50507 - rho 50508 := ha5
      _ = (-1) * rho 50507 - rho 50508 + (seg52Out0AccY126 rho - seg52Out0AccX126 rho * (-1)) *
          (rho 50504 + rho 50505) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX127 rho = seg52Out0AccX126 rho - Bool.toZMod bit * (seg52Out0AccX126 rho - rho 50510) := by
    have hd : rho 50512 = Bool.toZMod bit * (rho 50510 - seg52Out0AccX126 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX126
      linear_combination -r6123
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY127 rho = seg52Out0AccY126 rho - Bool.toZMod bit * (seg52Out0AccY126 rho - rho 50511) := by
    have hd : rho 50513 = Bool.toZMod bit * (rho 50511 - seg52Out0AccY126 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY126
      linear_combination -r6124
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50504 * rho 50505 = rho 50514 := by linear_combination r6125
  have hd1 : rho 50504 * rho 50504 = rho 50515 := by linear_combination r6126
  have hd2 : rho 50505 * rho 50505 = rho 50516 := by linear_combination r6127
  have hd3 : rho 50517 * (rho 50505 * rho 50505 + rho 50504 * rho 50504 * (-1)) =
      2 * (rho 50504 * rho 50505) := by
    rw [hd0, hd1, hd2]
    linear_combination r6128
  have hd4 : rho 50518 * (2 - (rho 50505 * rho 50505 + rho 50504 * rho 50504 * (-1))) =
      rho 50505 * rho 50505 - rho 50504 * rho 50504 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6129
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX126 rho, seg52Out0AccY126 rho⟩ ⟨rho 50504, rho 50505⟩
    ⟨rho 50510, rho 50511⟩ ⟨seg52Out0AccX127 rho, seg52Out0AccY127 rho⟩ ⟨rho 50517, rho 50518⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows127 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6130 rho ∧ Seg52.relationRow6131 rho ∧ Seg52.relationRow6132 rho ∧ Seg52.relationRow6133 rho ∧ Seg52.relationRow6134 rho ∧ Seg52.relationRow6135 rho ∧ Seg52.relationRow6136 rho ∧ Seg52.relationRow6137 rho ∧ Seg52.relationRow6138 rho ∧ Seg52.relationRow6139 rho ∧ Seg52.relationRow6140 rho ∧ Seg52.relationRow6141 rho ∧ Seg52.relationRow6142 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart76 at p76

  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6130, r6131, r6132, r6133, r6134, r6135, r6136, r6137, r6138, r6139, r6140, r6141, r6142, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6130, r6131, r6132, r6133, r6134, r6135, r6136, r6137, r6138, r6139, r6140, r6141, r6142⟩

theorem seg52Out0_rung127 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48873 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX127 rho, seg52Out0AccY127 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50517, rho 50518⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX127 rho, seg52Out0AccY127 rho⟩ ⟨rho 50517, rho 50518⟩
        ⟨seg52Out0AccX128 rho, seg52Out0AccY128 rho⟩ ⟨rho 50530, rho 50531⟩ := by
  obtain ⟨r6130, r6131, r6132, r6133, r6134, r6135, r6136, r6137, r6138, r6139, r6140, r6141, r6142⟩ := seg52Out0_rows127 rho h
  unfold Seg52.relationRow6130 at r6130

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6130

  unfold Seg52.relationRow6131 at r6131

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6131

  unfold Seg52.relationRow6132 at r6132

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6132

  unfold Seg52.relationRow6133 at r6133

  unfold Seg52.relationRow6134 at r6134

  unfold Seg52.relationRow6135 at r6135

  unfold Seg52.relationRow6136 at r6136

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6136

  unfold Seg52.relationRow6137 at r6137

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6137

  unfold Seg52.relationRow6138 at r6138

  unfold Seg52.relationRow6139 at r6139

  unfold Seg52.relationRow6140 at r6140

  unfold Seg52.relationRow6141 at r6141

  unfold Seg52.relationRow6142 at r6142

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX128 rho = seg52Out0AccX127 rho + rho 50525 := by
    unfold seg52Out0AccX128 seg52Out0AccX127
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 127]

    ring

  have hnexty : seg52Out0AccY128 rho = seg52Out0AccY127 rho + rho 50526 := by
    unfold seg52Out0AccY128 seg52Out0AccY127
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 127]

    ring

  have ha0 : (rho 50517 + rho 50518) * (seg52Out0AccX127 rho + seg52Out0AccY127 rho) = rho 50519 := by
    unfold seg52Out0AccX127 seg52Out0AccY127
    linear_combination r6130
  have ha1 : rho 50518 * seg52Out0AccX127 rho = rho 50520 := by
    unfold seg52Out0AccX127
    linear_combination r6131
  have ha2 : rho 50517 * seg52Out0AccY127 rho = rho 50521 := by
    unfold seg52Out0AccY127
    linear_combination r6132
  have ha3 : 3021 * rho 50520 * rho 50521 = rho 50522 := by
    linear_combination r6133
  have ha4 : rho 50523 * (1 + rho 50522) = rho 50520 + rho 50521 := by
    linear_combination r6134
  have ha5 : rho 50524 * (1 - rho 50522) = rho 50519 - rho 50520 - rho 50521 := by
    linear_combination r6135
  have haddx :
      rho 50523 * (1 + 3021 * (rho 50518 * seg52Out0AccX127 rho) * (rho 50517 * seg52Out0AccY127 rho)) =
        rho 50518 * seg52Out0AccX127 rho + rho 50517 * seg52Out0AccY127 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50524 * (1 - 3021 * (rho 50518 * seg52Out0AccX127 rho) * (rho 50517 * seg52Out0AccY127 rho)) =
        (-1) * (rho 50518 * seg52Out0AccX127 rho) - rho 50517 * seg52Out0AccY127 rho +
          (seg52Out0AccY127 rho - seg52Out0AccX127 rho * (-1)) * (rho 50517 + rho 50518) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50524 * (1 - rho 50522) = rho 50519 - rho 50520 - rho 50521 := ha5
      _ = (-1) * rho 50520 - rho 50521 + (seg52Out0AccY127 rho - seg52Out0AccX127 rho * (-1)) *
          (rho 50517 + rho 50518) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX128 rho = seg52Out0AccX127 rho - Bool.toZMod bit * (seg52Out0AccX127 rho - rho 50523) := by
    have hd : rho 50525 = Bool.toZMod bit * (rho 50523 - seg52Out0AccX127 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX127
      linear_combination -r6136
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY128 rho = seg52Out0AccY127 rho - Bool.toZMod bit * (seg52Out0AccY127 rho - rho 50524) := by
    have hd : rho 50526 = Bool.toZMod bit * (rho 50524 - seg52Out0AccY127 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY127
      linear_combination -r6137
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50517 * rho 50518 = rho 50527 := by linear_combination r6138
  have hd1 : rho 50517 * rho 50517 = rho 50528 := by linear_combination r6139
  have hd2 : rho 50518 * rho 50518 = rho 50529 := by linear_combination r6140
  have hd3 : rho 50530 * (rho 50518 * rho 50518 + rho 50517 * rho 50517 * (-1)) =
      2 * (rho 50517 * rho 50518) := by
    rw [hd0, hd1, hd2]
    linear_combination r6141
  have hd4 : rho 50531 * (2 - (rho 50518 * rho 50518 + rho 50517 * rho 50517 * (-1))) =
      rho 50518 * rho 50518 - rho 50517 * rho 50517 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6142
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX127 rho, seg52Out0AccY127 rho⟩ ⟨rho 50517, rho 50518⟩
    ⟨rho 50523, rho 50524⟩ ⟨seg52Out0AccX128 rho, seg52Out0AccY128 rho⟩ ⟨rho 50530, rho 50531⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_hstep_c11 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (48746 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 121 ≤ i → i < 128 →
      EdwardsBridge.onCurve (seg52Out0AccState rho i) →
      EdwardsBridge.onCurve (seg52Out0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52Out0AccState rho i) (seg52Out0CurState rho i)
        (seg52Out0AccState rho (i + 1)) (seg52Out0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52Out0_rung121 rho h bits[121]! (hbitAt 121 (by omega)) hacc hcur
  · exact seg52Out0_rung122 rho h bits[122]! (hbitAt 122 (by omega)) hacc hcur
  · exact seg52Out0_rung123 rho h bits[123]! (hbitAt 123 (by omega)) hacc hcur
  · exact seg52Out0_rung124 rho h bits[124]! (hbitAt 124 (by omega)) hacc hcur
  · exact seg52Out0_rung125 rho h bits[125]! (hbitAt 125 (by omega)) hacc hcur
  · exact seg52Out0_rung126 rho h bits[126]! (hbitAt 126 (by omega)) hacc hcur
  · exact seg52Out0_rung127 rho h bits[127]! (hbitAt 127 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
