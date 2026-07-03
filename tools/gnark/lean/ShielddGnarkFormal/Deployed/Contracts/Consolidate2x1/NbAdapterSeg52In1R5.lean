import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In1_rows55 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4041 rho ∧ Seg52.relationRow4042 rho ∧ Seg52.relationRow4043 rho ∧ Seg52.relationRow4044 rho ∧ Seg52.relationRow4045 rho ∧ Seg52.relationRow4046 rho ∧ Seg52.relationRow4047 rho ∧ Seg52.relationRow4048 rho ∧ Seg52.relationRow4049 rho ∧ Seg52.relationRow4050 rho ∧ Seg52.relationRow4051 rho ∧ Seg52.relationRow4052 rho ∧ Seg52.relationRow4053 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p50, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart50 at p50

  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4041, r4042, r4043, r4044, r4045, r4046, r4047, r4048, r4049, r4050, r4051, r4052, r4053, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4041, r4042, r4043, r4044, r4045, r4046, r4047, r4048, r4049, r4050, r4051, r4052, r4053⟩

theorem seg52In1_rung55 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47649 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX55 rho, seg52In1AccY55 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48429, rho 48430⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX55 rho, seg52In1AccY55 rho⟩ ⟨rho 48429, rho 48430⟩
        ⟨seg52In1AccX56 rho, seg52In1AccY56 rho⟩ ⟨rho 48442, rho 48443⟩ := by
  obtain ⟨r4041, r4042, r4043, r4044, r4045, r4046, r4047, r4048, r4049, r4050, r4051, r4052, r4053⟩ := seg52In1_rows55 rho h
  unfold Seg52.relationRow4041 at r4041

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4041

  unfold Seg52.relationRow4042 at r4042

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4042

  unfold Seg52.relationRow4043 at r4043

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4043

  unfold Seg52.relationRow4044 at r4044

  unfold Seg52.relationRow4045 at r4045

  unfold Seg52.relationRow4046 at r4046

  unfold Seg52.relationRow4047 at r4047

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4047

  unfold Seg52.relationRow4048 at r4048

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4048

  unfold Seg52.relationRow4049 at r4049

  unfold Seg52.relationRow4050 at r4050

  unfold Seg52.relationRow4051 at r4051

  unfold Seg52.relationRow4052 at r4052

  unfold Seg52.relationRow4053 at r4053

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX56 rho = seg52In1AccX55 rho + rho 48437 := by
    unfold seg52In1AccX56 seg52In1AccX55
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 55]

    ring

  have hnexty : seg52In1AccY56 rho = seg52In1AccY55 rho + rho 48438 := by
    unfold seg52In1AccY56 seg52In1AccY55
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 55]

    ring

  have ha0 : (rho 48429 + rho 48430) * (seg52In1AccX55 rho + seg52In1AccY55 rho) = rho 48431 := by
    unfold seg52In1AccX55 seg52In1AccY55
    linear_combination r4041
  have ha1 : rho 48430 * seg52In1AccX55 rho = rho 48432 := by
    unfold seg52In1AccX55
    linear_combination r4042
  have ha2 : rho 48429 * seg52In1AccY55 rho = rho 48433 := by
    unfold seg52In1AccY55
    linear_combination r4043
  have ha3 : 3021 * rho 48432 * rho 48433 = rho 48434 := by
    linear_combination r4044
  have ha4 : rho 48435 * (1 + rho 48434) = rho 48432 + rho 48433 := by
    linear_combination r4045
  have ha5 : rho 48436 * (1 - rho 48434) = rho 48431 - rho 48432 - rho 48433 := by
    linear_combination r4046
  have haddx :
      rho 48435 * (1 + 3021 * (rho 48430 * seg52In1AccX55 rho) * (rho 48429 * seg52In1AccY55 rho)) =
        rho 48430 * seg52In1AccX55 rho + rho 48429 * seg52In1AccY55 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48436 * (1 - 3021 * (rho 48430 * seg52In1AccX55 rho) * (rho 48429 * seg52In1AccY55 rho)) =
        (-1) * (rho 48430 * seg52In1AccX55 rho) - rho 48429 * seg52In1AccY55 rho +
          (seg52In1AccY55 rho - seg52In1AccX55 rho * (-1)) * (rho 48429 + rho 48430) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48436 * (1 - rho 48434) = rho 48431 - rho 48432 - rho 48433 := ha5
      _ = (-1) * rho 48432 - rho 48433 + (seg52In1AccY55 rho - seg52In1AccX55 rho * (-1)) *
          (rho 48429 + rho 48430) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX56 rho = seg52In1AccX55 rho - Bool.toZMod bit * (seg52In1AccX55 rho - rho 48435) := by
    have hd : rho 48437 = Bool.toZMod bit * (rho 48435 - seg52In1AccX55 rho) := by
      rw [← hbit]
      unfold seg52In1AccX55
      linear_combination -r4047
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY56 rho = seg52In1AccY55 rho - Bool.toZMod bit * (seg52In1AccY55 rho - rho 48436) := by
    have hd : rho 48438 = Bool.toZMod bit * (rho 48436 - seg52In1AccY55 rho) := by
      rw [← hbit]
      unfold seg52In1AccY55
      linear_combination -r4048
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48429 * rho 48430 = rho 48439 := by linear_combination r4049
  have hd1 : rho 48429 * rho 48429 = rho 48440 := by linear_combination r4050
  have hd2 : rho 48430 * rho 48430 = rho 48441 := by linear_combination r4051
  have hd3 : rho 48442 * (rho 48430 * rho 48430 + rho 48429 * rho 48429 * (-1)) =
      2 * (rho 48429 * rho 48430) := by
    rw [hd0, hd1, hd2]
    linear_combination r4052
  have hd4 : rho 48443 * (2 - (rho 48430 * rho 48430 + rho 48429 * rho 48429 * (-1))) =
      rho 48430 * rho 48430 - rho 48429 * rho 48429 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4053
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX55 rho, seg52In1AccY55 rho⟩ ⟨rho 48429, rho 48430⟩
    ⟨rho 48435, rho 48436⟩ ⟨seg52In1AccX56 rho, seg52In1AccY56 rho⟩ ⟨rho 48442, rho 48443⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows56 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4054 rho ∧ Seg52.relationRow4055 rho ∧ Seg52.relationRow4056 rho ∧ Seg52.relationRow4057 rho ∧ Seg52.relationRow4058 rho ∧ Seg52.relationRow4059 rho ∧ Seg52.relationRow4060 rho ∧ Seg52.relationRow4061 rho ∧ Seg52.relationRow4062 rho ∧ Seg52.relationRow4063 rho ∧ Seg52.relationRow4064 rho ∧ Seg52.relationRow4065 rho ∧ Seg52.relationRow4066 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p50, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart50 at p50

  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4054, r4055, r4056, r4057, r4058, r4059, r4060, r4061, r4062, r4063, r4064, r4065, r4066, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4054, r4055, r4056, r4057, r4058, r4059, r4060, r4061, r4062, r4063, r4064, r4065, r4066⟩

theorem seg52In1_rung56 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47650 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX56 rho, seg52In1AccY56 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48442, rho 48443⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX56 rho, seg52In1AccY56 rho⟩ ⟨rho 48442, rho 48443⟩
        ⟨seg52In1AccX57 rho, seg52In1AccY57 rho⟩ ⟨rho 48455, rho 48456⟩ := by
  obtain ⟨r4054, r4055, r4056, r4057, r4058, r4059, r4060, r4061, r4062, r4063, r4064, r4065, r4066⟩ := seg52In1_rows56 rho h
  unfold Seg52.relationRow4054 at r4054

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4054

  unfold Seg52.relationRow4055 at r4055

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4055

  unfold Seg52.relationRow4056 at r4056

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4056

  unfold Seg52.relationRow4057 at r4057

  unfold Seg52.relationRow4058 at r4058

  unfold Seg52.relationRow4059 at r4059

  unfold Seg52.relationRow4060 at r4060

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4060

  unfold Seg52.relationRow4061 at r4061

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4061

  unfold Seg52.relationRow4062 at r4062

  unfold Seg52.relationRow4063 at r4063

  unfold Seg52.relationRow4064 at r4064

  unfold Seg52.relationRow4065 at r4065

  unfold Seg52.relationRow4066 at r4066

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX57 rho = seg52In1AccX56 rho + rho 48450 := by
    unfold seg52In1AccX57 seg52In1AccX56
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 56]

    ring

  have hnexty : seg52In1AccY57 rho = seg52In1AccY56 rho + rho 48451 := by
    unfold seg52In1AccY57 seg52In1AccY56
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 56]

    ring

  have ha0 : (rho 48442 + rho 48443) * (seg52In1AccX56 rho + seg52In1AccY56 rho) = rho 48444 := by
    unfold seg52In1AccX56 seg52In1AccY56
    linear_combination r4054
  have ha1 : rho 48443 * seg52In1AccX56 rho = rho 48445 := by
    unfold seg52In1AccX56
    linear_combination r4055
  have ha2 : rho 48442 * seg52In1AccY56 rho = rho 48446 := by
    unfold seg52In1AccY56
    linear_combination r4056
  have ha3 : 3021 * rho 48445 * rho 48446 = rho 48447 := by
    linear_combination r4057
  have ha4 : rho 48448 * (1 + rho 48447) = rho 48445 + rho 48446 := by
    linear_combination r4058
  have ha5 : rho 48449 * (1 - rho 48447) = rho 48444 - rho 48445 - rho 48446 := by
    linear_combination r4059
  have haddx :
      rho 48448 * (1 + 3021 * (rho 48443 * seg52In1AccX56 rho) * (rho 48442 * seg52In1AccY56 rho)) =
        rho 48443 * seg52In1AccX56 rho + rho 48442 * seg52In1AccY56 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48449 * (1 - 3021 * (rho 48443 * seg52In1AccX56 rho) * (rho 48442 * seg52In1AccY56 rho)) =
        (-1) * (rho 48443 * seg52In1AccX56 rho) - rho 48442 * seg52In1AccY56 rho +
          (seg52In1AccY56 rho - seg52In1AccX56 rho * (-1)) * (rho 48442 + rho 48443) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48449 * (1 - rho 48447) = rho 48444 - rho 48445 - rho 48446 := ha5
      _ = (-1) * rho 48445 - rho 48446 + (seg52In1AccY56 rho - seg52In1AccX56 rho * (-1)) *
          (rho 48442 + rho 48443) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX57 rho = seg52In1AccX56 rho - Bool.toZMod bit * (seg52In1AccX56 rho - rho 48448) := by
    have hd : rho 48450 = Bool.toZMod bit * (rho 48448 - seg52In1AccX56 rho) := by
      rw [← hbit]
      unfold seg52In1AccX56
      linear_combination -r4060
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY57 rho = seg52In1AccY56 rho - Bool.toZMod bit * (seg52In1AccY56 rho - rho 48449) := by
    have hd : rho 48451 = Bool.toZMod bit * (rho 48449 - seg52In1AccY56 rho) := by
      rw [← hbit]
      unfold seg52In1AccY56
      linear_combination -r4061
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48442 * rho 48443 = rho 48452 := by linear_combination r4062
  have hd1 : rho 48442 * rho 48442 = rho 48453 := by linear_combination r4063
  have hd2 : rho 48443 * rho 48443 = rho 48454 := by linear_combination r4064
  have hd3 : rho 48455 * (rho 48443 * rho 48443 + rho 48442 * rho 48442 * (-1)) =
      2 * (rho 48442 * rho 48443) := by
    rw [hd0, hd1, hd2]
    linear_combination r4065
  have hd4 : rho 48456 * (2 - (rho 48443 * rho 48443 + rho 48442 * rho 48442 * (-1))) =
      rho 48443 * rho 48443 - rho 48442 * rho 48442 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4066
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX56 rho, seg52In1AccY56 rho⟩ ⟨rho 48442, rho 48443⟩
    ⟨rho 48448, rho 48449⟩ ⟨seg52In1AccX57 rho, seg52In1AccY57 rho⟩ ⟨rho 48455, rho 48456⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows57 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4067 rho ∧ Seg52.relationRow4068 rho ∧ Seg52.relationRow4069 rho ∧ Seg52.relationRow4070 rho ∧ Seg52.relationRow4071 rho ∧ Seg52.relationRow4072 rho ∧ Seg52.relationRow4073 rho ∧ Seg52.relationRow4074 rho ∧ Seg52.relationRow4075 rho ∧ Seg52.relationRow4076 rho ∧ Seg52.relationRow4077 rho ∧ Seg52.relationRow4078 rho ∧ Seg52.relationRow4079 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p50, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart50 at p50

  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4067, r4068, r4069, r4070, r4071, r4072, r4073, r4074, r4075, r4076, r4077, r4078, r4079⟩

  exact ⟨r4067, r4068, r4069, r4070, r4071, r4072, r4073, r4074, r4075, r4076, r4077, r4078, r4079⟩

theorem seg52In1_rung57 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47651 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX57 rho, seg52In1AccY57 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48455, rho 48456⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX57 rho, seg52In1AccY57 rho⟩ ⟨rho 48455, rho 48456⟩
        ⟨seg52In1AccX58 rho, seg52In1AccY58 rho⟩ ⟨rho 48468, rho 48469⟩ := by
  obtain ⟨r4067, r4068, r4069, r4070, r4071, r4072, r4073, r4074, r4075, r4076, r4077, r4078, r4079⟩ := seg52In1_rows57 rho h
  unfold Seg52.relationRow4067 at r4067

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4067

  unfold Seg52.relationRow4068 at r4068

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4068

  unfold Seg52.relationRow4069 at r4069

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4069

  unfold Seg52.relationRow4070 at r4070

  unfold Seg52.relationRow4071 at r4071

  unfold Seg52.relationRow4072 at r4072

  unfold Seg52.relationRow4073 at r4073

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4073

  unfold Seg52.relationRow4074 at r4074

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4074

  unfold Seg52.relationRow4075 at r4075

  unfold Seg52.relationRow4076 at r4076

  unfold Seg52.relationRow4077 at r4077

  unfold Seg52.relationRow4078 at r4078

  unfold Seg52.relationRow4079 at r4079

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX58 rho = seg52In1AccX57 rho + rho 48463 := by
    unfold seg52In1AccX58 seg52In1AccX57
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 57]

    ring

  have hnexty : seg52In1AccY58 rho = seg52In1AccY57 rho + rho 48464 := by
    unfold seg52In1AccY58 seg52In1AccY57
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 57]

    ring

  have ha0 : (rho 48455 + rho 48456) * (seg52In1AccX57 rho + seg52In1AccY57 rho) = rho 48457 := by
    unfold seg52In1AccX57 seg52In1AccY57
    linear_combination r4067
  have ha1 : rho 48456 * seg52In1AccX57 rho = rho 48458 := by
    unfold seg52In1AccX57
    linear_combination r4068
  have ha2 : rho 48455 * seg52In1AccY57 rho = rho 48459 := by
    unfold seg52In1AccY57
    linear_combination r4069
  have ha3 : 3021 * rho 48458 * rho 48459 = rho 48460 := by
    linear_combination r4070
  have ha4 : rho 48461 * (1 + rho 48460) = rho 48458 + rho 48459 := by
    linear_combination r4071
  have ha5 : rho 48462 * (1 - rho 48460) = rho 48457 - rho 48458 - rho 48459 := by
    linear_combination r4072
  have haddx :
      rho 48461 * (1 + 3021 * (rho 48456 * seg52In1AccX57 rho) * (rho 48455 * seg52In1AccY57 rho)) =
        rho 48456 * seg52In1AccX57 rho + rho 48455 * seg52In1AccY57 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48462 * (1 - 3021 * (rho 48456 * seg52In1AccX57 rho) * (rho 48455 * seg52In1AccY57 rho)) =
        (-1) * (rho 48456 * seg52In1AccX57 rho) - rho 48455 * seg52In1AccY57 rho +
          (seg52In1AccY57 rho - seg52In1AccX57 rho * (-1)) * (rho 48455 + rho 48456) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48462 * (1 - rho 48460) = rho 48457 - rho 48458 - rho 48459 := ha5
      _ = (-1) * rho 48458 - rho 48459 + (seg52In1AccY57 rho - seg52In1AccX57 rho * (-1)) *
          (rho 48455 + rho 48456) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX58 rho = seg52In1AccX57 rho - Bool.toZMod bit * (seg52In1AccX57 rho - rho 48461) := by
    have hd : rho 48463 = Bool.toZMod bit * (rho 48461 - seg52In1AccX57 rho) := by
      rw [← hbit]
      unfold seg52In1AccX57
      linear_combination -r4073
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY58 rho = seg52In1AccY57 rho - Bool.toZMod bit * (seg52In1AccY57 rho - rho 48462) := by
    have hd : rho 48464 = Bool.toZMod bit * (rho 48462 - seg52In1AccY57 rho) := by
      rw [← hbit]
      unfold seg52In1AccY57
      linear_combination -r4074
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48455 * rho 48456 = rho 48465 := by linear_combination r4075
  have hd1 : rho 48455 * rho 48455 = rho 48466 := by linear_combination r4076
  have hd2 : rho 48456 * rho 48456 = rho 48467 := by linear_combination r4077
  have hd3 : rho 48468 * (rho 48456 * rho 48456 + rho 48455 * rho 48455 * (-1)) =
      2 * (rho 48455 * rho 48456) := by
    rw [hd0, hd1, hd2]
    linear_combination r4078
  have hd4 : rho 48469 * (2 - (rho 48456 * rho 48456 + rho 48455 * rho 48455 * (-1))) =
      rho 48456 * rho 48456 - rho 48455 * rho 48455 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4079
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX57 rho, seg52In1AccY57 rho⟩ ⟨rho 48455, rho 48456⟩
    ⟨rho 48461, rho 48462⟩ ⟨seg52In1AccX58 rho, seg52In1AccY58 rho⟩ ⟨rho 48468, rho 48469⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows58 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4080 rho ∧ Seg52.relationRow4081 rho ∧ Seg52.relationRow4082 rho ∧ Seg52.relationRow4083 rho ∧ Seg52.relationRow4084 rho ∧ Seg52.relationRow4085 rho ∧ Seg52.relationRow4086 rho ∧ Seg52.relationRow4087 rho ∧ Seg52.relationRow4088 rho ∧ Seg52.relationRow4089 rho ∧ Seg52.relationRow4090 rho ∧ Seg52.relationRow4091 rho ∧ Seg52.relationRow4092 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p51, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart51 at p51

  rcases p51 with ⟨r4080, r4081, r4082, r4083, r4084, r4085, r4086, r4087, r4088, r4089, r4090, r4091, r4092, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4080, r4081, r4082, r4083, r4084, r4085, r4086, r4087, r4088, r4089, r4090, r4091, r4092⟩

theorem seg52In1_rung58 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47652 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX58 rho, seg52In1AccY58 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48468, rho 48469⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX58 rho, seg52In1AccY58 rho⟩ ⟨rho 48468, rho 48469⟩
        ⟨seg52In1AccX59 rho, seg52In1AccY59 rho⟩ ⟨rho 48481, rho 48482⟩ := by
  obtain ⟨r4080, r4081, r4082, r4083, r4084, r4085, r4086, r4087, r4088, r4089, r4090, r4091, r4092⟩ := seg52In1_rows58 rho h
  unfold Seg52.relationRow4080 at r4080

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4080

  unfold Seg52.relationRow4081 at r4081

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4081

  unfold Seg52.relationRow4082 at r4082

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4082

  unfold Seg52.relationRow4083 at r4083

  unfold Seg52.relationRow4084 at r4084

  unfold Seg52.relationRow4085 at r4085

  unfold Seg52.relationRow4086 at r4086

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4086

  unfold Seg52.relationRow4087 at r4087

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4087

  unfold Seg52.relationRow4088 at r4088

  unfold Seg52.relationRow4089 at r4089

  unfold Seg52.relationRow4090 at r4090

  unfold Seg52.relationRow4091 at r4091

  unfold Seg52.relationRow4092 at r4092

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX59 rho = seg52In1AccX58 rho + rho 48476 := by
    unfold seg52In1AccX59 seg52In1AccX58
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 58]

    ring

  have hnexty : seg52In1AccY59 rho = seg52In1AccY58 rho + rho 48477 := by
    unfold seg52In1AccY59 seg52In1AccY58
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 58]

    ring

  have ha0 : (rho 48468 + rho 48469) * (seg52In1AccX58 rho + seg52In1AccY58 rho) = rho 48470 := by
    unfold seg52In1AccX58 seg52In1AccY58
    linear_combination r4080
  have ha1 : rho 48469 * seg52In1AccX58 rho = rho 48471 := by
    unfold seg52In1AccX58
    linear_combination r4081
  have ha2 : rho 48468 * seg52In1AccY58 rho = rho 48472 := by
    unfold seg52In1AccY58
    linear_combination r4082
  have ha3 : 3021 * rho 48471 * rho 48472 = rho 48473 := by
    linear_combination r4083
  have ha4 : rho 48474 * (1 + rho 48473) = rho 48471 + rho 48472 := by
    linear_combination r4084
  have ha5 : rho 48475 * (1 - rho 48473) = rho 48470 - rho 48471 - rho 48472 := by
    linear_combination r4085
  have haddx :
      rho 48474 * (1 + 3021 * (rho 48469 * seg52In1AccX58 rho) * (rho 48468 * seg52In1AccY58 rho)) =
        rho 48469 * seg52In1AccX58 rho + rho 48468 * seg52In1AccY58 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48475 * (1 - 3021 * (rho 48469 * seg52In1AccX58 rho) * (rho 48468 * seg52In1AccY58 rho)) =
        (-1) * (rho 48469 * seg52In1AccX58 rho) - rho 48468 * seg52In1AccY58 rho +
          (seg52In1AccY58 rho - seg52In1AccX58 rho * (-1)) * (rho 48468 + rho 48469) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48475 * (1 - rho 48473) = rho 48470 - rho 48471 - rho 48472 := ha5
      _ = (-1) * rho 48471 - rho 48472 + (seg52In1AccY58 rho - seg52In1AccX58 rho * (-1)) *
          (rho 48468 + rho 48469) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX59 rho = seg52In1AccX58 rho - Bool.toZMod bit * (seg52In1AccX58 rho - rho 48474) := by
    have hd : rho 48476 = Bool.toZMod bit * (rho 48474 - seg52In1AccX58 rho) := by
      rw [← hbit]
      unfold seg52In1AccX58
      linear_combination -r4086
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY59 rho = seg52In1AccY58 rho - Bool.toZMod bit * (seg52In1AccY58 rho - rho 48475) := by
    have hd : rho 48477 = Bool.toZMod bit * (rho 48475 - seg52In1AccY58 rho) := by
      rw [← hbit]
      unfold seg52In1AccY58
      linear_combination -r4087
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48468 * rho 48469 = rho 48478 := by linear_combination r4088
  have hd1 : rho 48468 * rho 48468 = rho 48479 := by linear_combination r4089
  have hd2 : rho 48469 * rho 48469 = rho 48480 := by linear_combination r4090
  have hd3 : rho 48481 * (rho 48469 * rho 48469 + rho 48468 * rho 48468 * (-1)) =
      2 * (rho 48468 * rho 48469) := by
    rw [hd0, hd1, hd2]
    linear_combination r4091
  have hd4 : rho 48482 * (2 - (rho 48469 * rho 48469 + rho 48468 * rho 48468 * (-1))) =
      rho 48469 * rho 48469 - rho 48468 * rho 48468 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4092
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX58 rho, seg52In1AccY58 rho⟩ ⟨rho 48468, rho 48469⟩
    ⟨rho 48474, rho 48475⟩ ⟨seg52In1AccX59 rho, seg52In1AccY59 rho⟩ ⟨rho 48481, rho 48482⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows59 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4093 rho ∧ Seg52.relationRow4094 rho ∧ Seg52.relationRow4095 rho ∧ Seg52.relationRow4096 rho ∧ Seg52.relationRow4097 rho ∧ Seg52.relationRow4098 rho ∧ Seg52.relationRow4099 rho ∧ Seg52.relationRow4100 rho ∧ Seg52.relationRow4101 rho ∧ Seg52.relationRow4102 rho ∧ Seg52.relationRow4103 rho ∧ Seg52.relationRow4104 rho ∧ Seg52.relationRow4105 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p51, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart51 at p51

  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r4093, r4094, r4095, r4096, r4097, r4098, r4099, r4100, r4101, r4102, r4103, r4104, r4105, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4093, r4094, r4095, r4096, r4097, r4098, r4099, r4100, r4101, r4102, r4103, r4104, r4105⟩

theorem seg52In1_rung59 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47653 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX59 rho, seg52In1AccY59 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48481, rho 48482⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX59 rho, seg52In1AccY59 rho⟩ ⟨rho 48481, rho 48482⟩
        ⟨seg52In1AccX60 rho, seg52In1AccY60 rho⟩ ⟨rho 48494, rho 48495⟩ := by
  obtain ⟨r4093, r4094, r4095, r4096, r4097, r4098, r4099, r4100, r4101, r4102, r4103, r4104, r4105⟩ := seg52In1_rows59 rho h
  unfold Seg52.relationRow4093 at r4093

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4093

  unfold Seg52.relationRow4094 at r4094

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4094

  unfold Seg52.relationRow4095 at r4095

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4095

  unfold Seg52.relationRow4096 at r4096

  unfold Seg52.relationRow4097 at r4097

  unfold Seg52.relationRow4098 at r4098

  unfold Seg52.relationRow4099 at r4099

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4099

  unfold Seg52.relationRow4100 at r4100

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4100

  unfold Seg52.relationRow4101 at r4101

  unfold Seg52.relationRow4102 at r4102

  unfold Seg52.relationRow4103 at r4103

  unfold Seg52.relationRow4104 at r4104

  unfold Seg52.relationRow4105 at r4105

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX60 rho = seg52In1AccX59 rho + rho 48489 := by
    unfold seg52In1AccX60 seg52In1AccX59
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 59]

    ring

  have hnexty : seg52In1AccY60 rho = seg52In1AccY59 rho + rho 48490 := by
    unfold seg52In1AccY60 seg52In1AccY59
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 59]

    ring

  have ha0 : (rho 48481 + rho 48482) * (seg52In1AccX59 rho + seg52In1AccY59 rho) = rho 48483 := by
    unfold seg52In1AccX59 seg52In1AccY59
    linear_combination r4093
  have ha1 : rho 48482 * seg52In1AccX59 rho = rho 48484 := by
    unfold seg52In1AccX59
    linear_combination r4094
  have ha2 : rho 48481 * seg52In1AccY59 rho = rho 48485 := by
    unfold seg52In1AccY59
    linear_combination r4095
  have ha3 : 3021 * rho 48484 * rho 48485 = rho 48486 := by
    linear_combination r4096
  have ha4 : rho 48487 * (1 + rho 48486) = rho 48484 + rho 48485 := by
    linear_combination r4097
  have ha5 : rho 48488 * (1 - rho 48486) = rho 48483 - rho 48484 - rho 48485 := by
    linear_combination r4098
  have haddx :
      rho 48487 * (1 + 3021 * (rho 48482 * seg52In1AccX59 rho) * (rho 48481 * seg52In1AccY59 rho)) =
        rho 48482 * seg52In1AccX59 rho + rho 48481 * seg52In1AccY59 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48488 * (1 - 3021 * (rho 48482 * seg52In1AccX59 rho) * (rho 48481 * seg52In1AccY59 rho)) =
        (-1) * (rho 48482 * seg52In1AccX59 rho) - rho 48481 * seg52In1AccY59 rho +
          (seg52In1AccY59 rho - seg52In1AccX59 rho * (-1)) * (rho 48481 + rho 48482) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48488 * (1 - rho 48486) = rho 48483 - rho 48484 - rho 48485 := ha5
      _ = (-1) * rho 48484 - rho 48485 + (seg52In1AccY59 rho - seg52In1AccX59 rho * (-1)) *
          (rho 48481 + rho 48482) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX60 rho = seg52In1AccX59 rho - Bool.toZMod bit * (seg52In1AccX59 rho - rho 48487) := by
    have hd : rho 48489 = Bool.toZMod bit * (rho 48487 - seg52In1AccX59 rho) := by
      rw [← hbit]
      unfold seg52In1AccX59
      linear_combination -r4099
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY60 rho = seg52In1AccY59 rho - Bool.toZMod bit * (seg52In1AccY59 rho - rho 48488) := by
    have hd : rho 48490 = Bool.toZMod bit * (rho 48488 - seg52In1AccY59 rho) := by
      rw [← hbit]
      unfold seg52In1AccY59
      linear_combination -r4100
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48481 * rho 48482 = rho 48491 := by linear_combination r4101
  have hd1 : rho 48481 * rho 48481 = rho 48492 := by linear_combination r4102
  have hd2 : rho 48482 * rho 48482 = rho 48493 := by linear_combination r4103
  have hd3 : rho 48494 * (rho 48482 * rho 48482 + rho 48481 * rho 48481 * (-1)) =
      2 * (rho 48481 * rho 48482) := by
    rw [hd0, hd1, hd2]
    linear_combination r4104
  have hd4 : rho 48495 * (2 - (rho 48482 * rho 48482 + rho 48481 * rho 48481 * (-1))) =
      rho 48482 * rho 48482 - rho 48481 * rho 48481 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4105
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX59 rho, seg52In1AccY59 rho⟩ ⟨rho 48481, rho 48482⟩
    ⟨rho 48487, rho 48488⟩ ⟨seg52In1AccX60 rho, seg52In1AccY60 rho⟩ ⟨rho 48494, rho 48495⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows60 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4106 rho ∧ Seg52.relationRow4107 rho ∧ Seg52.relationRow4108 rho ∧ Seg52.relationRow4109 rho ∧ Seg52.relationRow4110 rho ∧ Seg52.relationRow4111 rho ∧ Seg52.relationRow4112 rho ∧ Seg52.relationRow4113 rho ∧ Seg52.relationRow4114 rho ∧ Seg52.relationRow4115 rho ∧ Seg52.relationRow4116 rho ∧ Seg52.relationRow4117 rho ∧ Seg52.relationRow4118 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p51, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart51 at p51

  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4106, r4107, r4108, r4109, r4110, r4111, r4112, r4113, r4114, r4115, r4116, r4117, r4118, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4106, r4107, r4108, r4109, r4110, r4111, r4112, r4113, r4114, r4115, r4116, r4117, r4118⟩

theorem seg52In1_rung60 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47654 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX60 rho, seg52In1AccY60 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48494, rho 48495⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX60 rho, seg52In1AccY60 rho⟩ ⟨rho 48494, rho 48495⟩
        ⟨seg52In1AccX61 rho, seg52In1AccY61 rho⟩ ⟨rho 48507, rho 48508⟩ := by
  obtain ⟨r4106, r4107, r4108, r4109, r4110, r4111, r4112, r4113, r4114, r4115, r4116, r4117, r4118⟩ := seg52In1_rows60 rho h
  unfold Seg52.relationRow4106 at r4106

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4106

  unfold Seg52.relationRow4107 at r4107

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4107

  unfold Seg52.relationRow4108 at r4108

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4108

  unfold Seg52.relationRow4109 at r4109

  unfold Seg52.relationRow4110 at r4110

  unfold Seg52.relationRow4111 at r4111

  unfold Seg52.relationRow4112 at r4112

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4112

  unfold Seg52.relationRow4113 at r4113

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4113

  unfold Seg52.relationRow4114 at r4114

  unfold Seg52.relationRow4115 at r4115

  unfold Seg52.relationRow4116 at r4116

  unfold Seg52.relationRow4117 at r4117

  unfold Seg52.relationRow4118 at r4118

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX61 rho = seg52In1AccX60 rho + rho 48502 := by
    unfold seg52In1AccX61 seg52In1AccX60
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 60]

    ring

  have hnexty : seg52In1AccY61 rho = seg52In1AccY60 rho + rho 48503 := by
    unfold seg52In1AccY61 seg52In1AccY60
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 60]

    ring

  have ha0 : (rho 48494 + rho 48495) * (seg52In1AccX60 rho + seg52In1AccY60 rho) = rho 48496 := by
    unfold seg52In1AccX60 seg52In1AccY60
    linear_combination r4106
  have ha1 : rho 48495 * seg52In1AccX60 rho = rho 48497 := by
    unfold seg52In1AccX60
    linear_combination r4107
  have ha2 : rho 48494 * seg52In1AccY60 rho = rho 48498 := by
    unfold seg52In1AccY60
    linear_combination r4108
  have ha3 : 3021 * rho 48497 * rho 48498 = rho 48499 := by
    linear_combination r4109
  have ha4 : rho 48500 * (1 + rho 48499) = rho 48497 + rho 48498 := by
    linear_combination r4110
  have ha5 : rho 48501 * (1 - rho 48499) = rho 48496 - rho 48497 - rho 48498 := by
    linear_combination r4111
  have haddx :
      rho 48500 * (1 + 3021 * (rho 48495 * seg52In1AccX60 rho) * (rho 48494 * seg52In1AccY60 rho)) =
        rho 48495 * seg52In1AccX60 rho + rho 48494 * seg52In1AccY60 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48501 * (1 - 3021 * (rho 48495 * seg52In1AccX60 rho) * (rho 48494 * seg52In1AccY60 rho)) =
        (-1) * (rho 48495 * seg52In1AccX60 rho) - rho 48494 * seg52In1AccY60 rho +
          (seg52In1AccY60 rho - seg52In1AccX60 rho * (-1)) * (rho 48494 + rho 48495) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48501 * (1 - rho 48499) = rho 48496 - rho 48497 - rho 48498 := ha5
      _ = (-1) * rho 48497 - rho 48498 + (seg52In1AccY60 rho - seg52In1AccX60 rho * (-1)) *
          (rho 48494 + rho 48495) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX61 rho = seg52In1AccX60 rho - Bool.toZMod bit * (seg52In1AccX60 rho - rho 48500) := by
    have hd : rho 48502 = Bool.toZMod bit * (rho 48500 - seg52In1AccX60 rho) := by
      rw [← hbit]
      unfold seg52In1AccX60
      linear_combination -r4112
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY61 rho = seg52In1AccY60 rho - Bool.toZMod bit * (seg52In1AccY60 rho - rho 48501) := by
    have hd : rho 48503 = Bool.toZMod bit * (rho 48501 - seg52In1AccY60 rho) := by
      rw [← hbit]
      unfold seg52In1AccY60
      linear_combination -r4113
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48494 * rho 48495 = rho 48504 := by linear_combination r4114
  have hd1 : rho 48494 * rho 48494 = rho 48505 := by linear_combination r4115
  have hd2 : rho 48495 * rho 48495 = rho 48506 := by linear_combination r4116
  have hd3 : rho 48507 * (rho 48495 * rho 48495 + rho 48494 * rho 48494 * (-1)) =
      2 * (rho 48494 * rho 48495) := by
    rw [hd0, hd1, hd2]
    linear_combination r4117
  have hd4 : rho 48508 * (2 - (rho 48495 * rho 48495 + rho 48494 * rho 48494 * (-1))) =
      rho 48495 * rho 48495 - rho 48494 * rho 48494 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4118
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX60 rho, seg52In1AccY60 rho⟩ ⟨rho 48494, rho 48495⟩
    ⟨rho 48500, rho 48501⟩ ⟨seg52In1AccX61 rho, seg52In1AccY61 rho⟩ ⟨rho 48507, rho 48508⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows61 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4119 rho ∧ Seg52.relationRow4120 rho ∧ Seg52.relationRow4121 rho ∧ Seg52.relationRow4122 rho ∧ Seg52.relationRow4123 rho ∧ Seg52.relationRow4124 rho ∧ Seg52.relationRow4125 rho ∧ Seg52.relationRow4126 rho ∧ Seg52.relationRow4127 rho ∧ Seg52.relationRow4128 rho ∧ Seg52.relationRow4129 rho ∧ Seg52.relationRow4130 rho ∧ Seg52.relationRow4131 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p51, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart51 at p51

  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4119, r4120, r4121, r4122, r4123, r4124, r4125, r4126, r4127, r4128, r4129, r4130, r4131, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4119, r4120, r4121, r4122, r4123, r4124, r4125, r4126, r4127, r4128, r4129, r4130, r4131⟩

theorem seg52In1_rung61 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47655 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX61 rho, seg52In1AccY61 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48507, rho 48508⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX61 rho, seg52In1AccY61 rho⟩ ⟨rho 48507, rho 48508⟩
        ⟨seg52In1AccX62 rho, seg52In1AccY62 rho⟩ ⟨rho 48520, rho 48521⟩ := by
  obtain ⟨r4119, r4120, r4121, r4122, r4123, r4124, r4125, r4126, r4127, r4128, r4129, r4130, r4131⟩ := seg52In1_rows61 rho h
  unfold Seg52.relationRow4119 at r4119

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4119

  unfold Seg52.relationRow4120 at r4120

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4120

  unfold Seg52.relationRow4121 at r4121

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4121

  unfold Seg52.relationRow4122 at r4122

  unfold Seg52.relationRow4123 at r4123

  unfold Seg52.relationRow4124 at r4124

  unfold Seg52.relationRow4125 at r4125

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4125

  unfold Seg52.relationRow4126 at r4126

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4126

  unfold Seg52.relationRow4127 at r4127

  unfold Seg52.relationRow4128 at r4128

  unfold Seg52.relationRow4129 at r4129

  unfold Seg52.relationRow4130 at r4130

  unfold Seg52.relationRow4131 at r4131

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX62 rho = seg52In1AccX61 rho + rho 48515 := by
    unfold seg52In1AccX62 seg52In1AccX61
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 61]

    ring

  have hnexty : seg52In1AccY62 rho = seg52In1AccY61 rho + rho 48516 := by
    unfold seg52In1AccY62 seg52In1AccY61
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 61]

    ring

  have ha0 : (rho 48507 + rho 48508) * (seg52In1AccX61 rho + seg52In1AccY61 rho) = rho 48509 := by
    unfold seg52In1AccX61 seg52In1AccY61
    linear_combination r4119
  have ha1 : rho 48508 * seg52In1AccX61 rho = rho 48510 := by
    unfold seg52In1AccX61
    linear_combination r4120
  have ha2 : rho 48507 * seg52In1AccY61 rho = rho 48511 := by
    unfold seg52In1AccY61
    linear_combination r4121
  have ha3 : 3021 * rho 48510 * rho 48511 = rho 48512 := by
    linear_combination r4122
  have ha4 : rho 48513 * (1 + rho 48512) = rho 48510 + rho 48511 := by
    linear_combination r4123
  have ha5 : rho 48514 * (1 - rho 48512) = rho 48509 - rho 48510 - rho 48511 := by
    linear_combination r4124
  have haddx :
      rho 48513 * (1 + 3021 * (rho 48508 * seg52In1AccX61 rho) * (rho 48507 * seg52In1AccY61 rho)) =
        rho 48508 * seg52In1AccX61 rho + rho 48507 * seg52In1AccY61 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48514 * (1 - 3021 * (rho 48508 * seg52In1AccX61 rho) * (rho 48507 * seg52In1AccY61 rho)) =
        (-1) * (rho 48508 * seg52In1AccX61 rho) - rho 48507 * seg52In1AccY61 rho +
          (seg52In1AccY61 rho - seg52In1AccX61 rho * (-1)) * (rho 48507 + rho 48508) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48514 * (1 - rho 48512) = rho 48509 - rho 48510 - rho 48511 := ha5
      _ = (-1) * rho 48510 - rho 48511 + (seg52In1AccY61 rho - seg52In1AccX61 rho * (-1)) *
          (rho 48507 + rho 48508) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX62 rho = seg52In1AccX61 rho - Bool.toZMod bit * (seg52In1AccX61 rho - rho 48513) := by
    have hd : rho 48515 = Bool.toZMod bit * (rho 48513 - seg52In1AccX61 rho) := by
      rw [← hbit]
      unfold seg52In1AccX61
      linear_combination -r4125
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY62 rho = seg52In1AccY61 rho - Bool.toZMod bit * (seg52In1AccY61 rho - rho 48514) := by
    have hd : rho 48516 = Bool.toZMod bit * (rho 48514 - seg52In1AccY61 rho) := by
      rw [← hbit]
      unfold seg52In1AccY61
      linear_combination -r4126
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48507 * rho 48508 = rho 48517 := by linear_combination r4127
  have hd1 : rho 48507 * rho 48507 = rho 48518 := by linear_combination r4128
  have hd2 : rho 48508 * rho 48508 = rho 48519 := by linear_combination r4129
  have hd3 : rho 48520 * (rho 48508 * rho 48508 + rho 48507 * rho 48507 * (-1)) =
      2 * (rho 48507 * rho 48508) := by
    rw [hd0, hd1, hd2]
    linear_combination r4130
  have hd4 : rho 48521 * (2 - (rho 48508 * rho 48508 + rho 48507 * rho 48507 * (-1))) =
      rho 48508 * rho 48508 - rho 48507 * rho 48507 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4131
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX61 rho, seg52In1AccY61 rho⟩ ⟨rho 48507, rho 48508⟩
    ⟨rho 48513, rho 48514⟩ ⟨seg52In1AccX62 rho, seg52In1AccY62 rho⟩ ⟨rho 48520, rho 48521⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows62 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4132 rho ∧ Seg52.relationRow4133 rho ∧ Seg52.relationRow4134 rho ∧ Seg52.relationRow4135 rho ∧ Seg52.relationRow4136 rho ∧ Seg52.relationRow4137 rho ∧ Seg52.relationRow4138 rho ∧ Seg52.relationRow4139 rho ∧ Seg52.relationRow4140 rho ∧ Seg52.relationRow4141 rho ∧ Seg52.relationRow4142 rho ∧ Seg52.relationRow4143 rho ∧ Seg52.relationRow4144 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p51, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart51 at p51

  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4132, r4133, r4134, r4135, r4136, r4137, r4138, r4139, r4140, r4141, r4142, r4143, r4144, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4132, r4133, r4134, r4135, r4136, r4137, r4138, r4139, r4140, r4141, r4142, r4143, r4144⟩

theorem seg52In1_rung62 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47656 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX62 rho, seg52In1AccY62 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48520, rho 48521⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX62 rho, seg52In1AccY62 rho⟩ ⟨rho 48520, rho 48521⟩
        ⟨seg52In1AccX63 rho, seg52In1AccY63 rho⟩ ⟨rho 48533, rho 48534⟩ := by
  obtain ⟨r4132, r4133, r4134, r4135, r4136, r4137, r4138, r4139, r4140, r4141, r4142, r4143, r4144⟩ := seg52In1_rows62 rho h
  unfold Seg52.relationRow4132 at r4132

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4132

  unfold Seg52.relationRow4133 at r4133

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4133

  unfold Seg52.relationRow4134 at r4134

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4134

  unfold Seg52.relationRow4135 at r4135

  unfold Seg52.relationRow4136 at r4136

  unfold Seg52.relationRow4137 at r4137

  unfold Seg52.relationRow4138 at r4138

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4138

  unfold Seg52.relationRow4139 at r4139

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4139

  unfold Seg52.relationRow4140 at r4140

  unfold Seg52.relationRow4141 at r4141

  unfold Seg52.relationRow4142 at r4142

  unfold Seg52.relationRow4143 at r4143

  unfold Seg52.relationRow4144 at r4144

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX63 rho = seg52In1AccX62 rho + rho 48528 := by
    unfold seg52In1AccX63 seg52In1AccX62
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 62]

    ring

  have hnexty : seg52In1AccY63 rho = seg52In1AccY62 rho + rho 48529 := by
    unfold seg52In1AccY63 seg52In1AccY62
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 62]

    ring

  have ha0 : (rho 48520 + rho 48521) * (seg52In1AccX62 rho + seg52In1AccY62 rho) = rho 48522 := by
    unfold seg52In1AccX62 seg52In1AccY62
    linear_combination r4132
  have ha1 : rho 48521 * seg52In1AccX62 rho = rho 48523 := by
    unfold seg52In1AccX62
    linear_combination r4133
  have ha2 : rho 48520 * seg52In1AccY62 rho = rho 48524 := by
    unfold seg52In1AccY62
    linear_combination r4134
  have ha3 : 3021 * rho 48523 * rho 48524 = rho 48525 := by
    linear_combination r4135
  have ha4 : rho 48526 * (1 + rho 48525) = rho 48523 + rho 48524 := by
    linear_combination r4136
  have ha5 : rho 48527 * (1 - rho 48525) = rho 48522 - rho 48523 - rho 48524 := by
    linear_combination r4137
  have haddx :
      rho 48526 * (1 + 3021 * (rho 48521 * seg52In1AccX62 rho) * (rho 48520 * seg52In1AccY62 rho)) =
        rho 48521 * seg52In1AccX62 rho + rho 48520 * seg52In1AccY62 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48527 * (1 - 3021 * (rho 48521 * seg52In1AccX62 rho) * (rho 48520 * seg52In1AccY62 rho)) =
        (-1) * (rho 48521 * seg52In1AccX62 rho) - rho 48520 * seg52In1AccY62 rho +
          (seg52In1AccY62 rho - seg52In1AccX62 rho * (-1)) * (rho 48520 + rho 48521) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48527 * (1 - rho 48525) = rho 48522 - rho 48523 - rho 48524 := ha5
      _ = (-1) * rho 48523 - rho 48524 + (seg52In1AccY62 rho - seg52In1AccX62 rho * (-1)) *
          (rho 48520 + rho 48521) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX63 rho = seg52In1AccX62 rho - Bool.toZMod bit * (seg52In1AccX62 rho - rho 48526) := by
    have hd : rho 48528 = Bool.toZMod bit * (rho 48526 - seg52In1AccX62 rho) := by
      rw [← hbit]
      unfold seg52In1AccX62
      linear_combination -r4138
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY63 rho = seg52In1AccY62 rho - Bool.toZMod bit * (seg52In1AccY62 rho - rho 48527) := by
    have hd : rho 48529 = Bool.toZMod bit * (rho 48527 - seg52In1AccY62 rho) := by
      rw [← hbit]
      unfold seg52In1AccY62
      linear_combination -r4139
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48520 * rho 48521 = rho 48530 := by linear_combination r4140
  have hd1 : rho 48520 * rho 48520 = rho 48531 := by linear_combination r4141
  have hd2 : rho 48521 * rho 48521 = rho 48532 := by linear_combination r4142
  have hd3 : rho 48533 * (rho 48521 * rho 48521 + rho 48520 * rho 48520 * (-1)) =
      2 * (rho 48520 * rho 48521) := by
    rw [hd0, hd1, hd2]
    linear_combination r4143
  have hd4 : rho 48534 * (2 - (rho 48521 * rho 48521 + rho 48520 * rho 48520 * (-1))) =
      rho 48521 * rho 48521 - rho 48520 * rho 48520 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4144
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX62 rho, seg52In1AccY62 rho⟩ ⟨rho 48520, rho 48521⟩
    ⟨rho 48526, rho 48527⟩ ⟨seg52In1AccX63 rho, seg52In1AccY63 rho⟩ ⟨rho 48533, rho 48534⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows63 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4145 rho ∧ Seg52.relationRow4146 rho ∧ Seg52.relationRow4147 rho ∧ Seg52.relationRow4148 rho ∧ Seg52.relationRow4149 rho ∧ Seg52.relationRow4150 rho ∧ Seg52.relationRow4151 rho ∧ Seg52.relationRow4152 rho ∧ Seg52.relationRow4153 rho ∧ Seg52.relationRow4154 rho ∧ Seg52.relationRow4155 rho ∧ Seg52.relationRow4156 rho ∧ Seg52.relationRow4157 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p51, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart51 at p51

  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4145, r4146, r4147, r4148, r4149, r4150, r4151, r4152, r4153, r4154, r4155, r4156, r4157, _, _⟩

  exact ⟨r4145, r4146, r4147, r4148, r4149, r4150, r4151, r4152, r4153, r4154, r4155, r4156, r4157⟩

theorem seg52In1_rung63 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47657 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX63 rho, seg52In1AccY63 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48533, rho 48534⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX63 rho, seg52In1AccY63 rho⟩ ⟨rho 48533, rho 48534⟩
        ⟨seg52In1AccX64 rho, seg52In1AccY64 rho⟩ ⟨rho 48546, rho 48547⟩ := by
  obtain ⟨r4145, r4146, r4147, r4148, r4149, r4150, r4151, r4152, r4153, r4154, r4155, r4156, r4157⟩ := seg52In1_rows63 rho h
  unfold Seg52.relationRow4145 at r4145

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4145

  unfold Seg52.relationRow4146 at r4146

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4146

  unfold Seg52.relationRow4147 at r4147

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4147

  unfold Seg52.relationRow4148 at r4148

  unfold Seg52.relationRow4149 at r4149

  unfold Seg52.relationRow4150 at r4150

  unfold Seg52.relationRow4151 at r4151

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4151

  unfold Seg52.relationRow4152 at r4152

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4152

  unfold Seg52.relationRow4153 at r4153

  unfold Seg52.relationRow4154 at r4154

  unfold Seg52.relationRow4155 at r4155

  unfold Seg52.relationRow4156 at r4156

  unfold Seg52.relationRow4157 at r4157

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX64 rho = seg52In1AccX63 rho + rho 48541 := by
    unfold seg52In1AccX64 seg52In1AccX63
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 63]

    ring

  have hnexty : seg52In1AccY64 rho = seg52In1AccY63 rho + rho 48542 := by
    unfold seg52In1AccY64 seg52In1AccY63
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 63]

    ring

  have ha0 : (rho 48533 + rho 48534) * (seg52In1AccX63 rho + seg52In1AccY63 rho) = rho 48535 := by
    unfold seg52In1AccX63 seg52In1AccY63
    linear_combination r4145
  have ha1 : rho 48534 * seg52In1AccX63 rho = rho 48536 := by
    unfold seg52In1AccX63
    linear_combination r4146
  have ha2 : rho 48533 * seg52In1AccY63 rho = rho 48537 := by
    unfold seg52In1AccY63
    linear_combination r4147
  have ha3 : 3021 * rho 48536 * rho 48537 = rho 48538 := by
    linear_combination r4148
  have ha4 : rho 48539 * (1 + rho 48538) = rho 48536 + rho 48537 := by
    linear_combination r4149
  have ha5 : rho 48540 * (1 - rho 48538) = rho 48535 - rho 48536 - rho 48537 := by
    linear_combination r4150
  have haddx :
      rho 48539 * (1 + 3021 * (rho 48534 * seg52In1AccX63 rho) * (rho 48533 * seg52In1AccY63 rho)) =
        rho 48534 * seg52In1AccX63 rho + rho 48533 * seg52In1AccY63 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48540 * (1 - 3021 * (rho 48534 * seg52In1AccX63 rho) * (rho 48533 * seg52In1AccY63 rho)) =
        (-1) * (rho 48534 * seg52In1AccX63 rho) - rho 48533 * seg52In1AccY63 rho +
          (seg52In1AccY63 rho - seg52In1AccX63 rho * (-1)) * (rho 48533 + rho 48534) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48540 * (1 - rho 48538) = rho 48535 - rho 48536 - rho 48537 := ha5
      _ = (-1) * rho 48536 - rho 48537 + (seg52In1AccY63 rho - seg52In1AccX63 rho * (-1)) *
          (rho 48533 + rho 48534) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX64 rho = seg52In1AccX63 rho - Bool.toZMod bit * (seg52In1AccX63 rho - rho 48539) := by
    have hd : rho 48541 = Bool.toZMod bit * (rho 48539 - seg52In1AccX63 rho) := by
      rw [← hbit]
      unfold seg52In1AccX63
      linear_combination -r4151
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY64 rho = seg52In1AccY63 rho - Bool.toZMod bit * (seg52In1AccY63 rho - rho 48540) := by
    have hd : rho 48542 = Bool.toZMod bit * (rho 48540 - seg52In1AccY63 rho) := by
      rw [← hbit]
      unfold seg52In1AccY63
      linear_combination -r4152
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48533 * rho 48534 = rho 48543 := by linear_combination r4153
  have hd1 : rho 48533 * rho 48533 = rho 48544 := by linear_combination r4154
  have hd2 : rho 48534 * rho 48534 = rho 48545 := by linear_combination r4155
  have hd3 : rho 48546 * (rho 48534 * rho 48534 + rho 48533 * rho 48533 * (-1)) =
      2 * (rho 48533 * rho 48534) := by
    rw [hd0, hd1, hd2]
    linear_combination r4156
  have hd4 : rho 48547 * (2 - (rho 48534 * rho 48534 + rho 48533 * rho 48533 * (-1))) =
      rho 48534 * rho 48534 - rho 48533 * rho 48533 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4157
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX63 rho, seg52In1AccY63 rho⟩ ⟨rho 48533, rho 48534⟩
    ⟨rho 48539, rho 48540⟩ ⟨seg52In1AccX64 rho, seg52In1AccY64 rho⟩ ⟨rho 48546, rho 48547⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows64 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4158 rho ∧ Seg52.relationRow4159 rho ∧ Seg52.relationRow4160 rho ∧ Seg52.relationRow4161 rho ∧ Seg52.relationRow4162 rho ∧ Seg52.relationRow4163 rho ∧ Seg52.relationRow4164 rho ∧ Seg52.relationRow4165 rho ∧ Seg52.relationRow4166 rho ∧ Seg52.relationRow4167 rho ∧ Seg52.relationRow4168 rho ∧ Seg52.relationRow4169 rho ∧ Seg52.relationRow4170 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p51, p52, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart51 at p51

  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4158, r4159⟩

  unfold Seg52.relationPart52 at p52

  rcases p52 with ⟨r4160, r4161, r4162, r4163, r4164, r4165, r4166, r4167, r4168, r4169, r4170, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4158, r4159, r4160, r4161, r4162, r4163, r4164, r4165, r4166, r4167, r4168, r4169, r4170⟩

theorem seg52In1_rung64 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47658 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX64 rho, seg52In1AccY64 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48546, rho 48547⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX64 rho, seg52In1AccY64 rho⟩ ⟨rho 48546, rho 48547⟩
        ⟨seg52In1AccX65 rho, seg52In1AccY65 rho⟩ ⟨rho 48559, rho 48560⟩ := by
  obtain ⟨r4158, r4159, r4160, r4161, r4162, r4163, r4164, r4165, r4166, r4167, r4168, r4169, r4170⟩ := seg52In1_rows64 rho h
  unfold Seg52.relationRow4158 at r4158

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4158

  unfold Seg52.relationRow4159 at r4159

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4159

  unfold Seg52.relationRow4160 at r4160

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4160

  unfold Seg52.relationRow4161 at r4161

  unfold Seg52.relationRow4162 at r4162

  unfold Seg52.relationRow4163 at r4163

  unfold Seg52.relationRow4164 at r4164

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4164

  unfold Seg52.relationRow4165 at r4165

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4165

  unfold Seg52.relationRow4166 at r4166

  unfold Seg52.relationRow4167 at r4167

  unfold Seg52.relationRow4168 at r4168

  unfold Seg52.relationRow4169 at r4169

  unfold Seg52.relationRow4170 at r4170

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX65 rho = seg52In1AccX64 rho + rho 48554 := by
    unfold seg52In1AccX65 seg52In1AccX64
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 64]

    ring

  have hnexty : seg52In1AccY65 rho = seg52In1AccY64 rho + rho 48555 := by
    unfold seg52In1AccY65 seg52In1AccY64
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 64]

    ring

  have ha0 : (rho 48546 + rho 48547) * (seg52In1AccX64 rho + seg52In1AccY64 rho) = rho 48548 := by
    unfold seg52In1AccX64 seg52In1AccY64
    linear_combination r4158
  have ha1 : rho 48547 * seg52In1AccX64 rho = rho 48549 := by
    unfold seg52In1AccX64
    linear_combination r4159
  have ha2 : rho 48546 * seg52In1AccY64 rho = rho 48550 := by
    unfold seg52In1AccY64
    linear_combination r4160
  have ha3 : 3021 * rho 48549 * rho 48550 = rho 48551 := by
    linear_combination r4161
  have ha4 : rho 48552 * (1 + rho 48551) = rho 48549 + rho 48550 := by
    linear_combination r4162
  have ha5 : rho 48553 * (1 - rho 48551) = rho 48548 - rho 48549 - rho 48550 := by
    linear_combination r4163
  have haddx :
      rho 48552 * (1 + 3021 * (rho 48547 * seg52In1AccX64 rho) * (rho 48546 * seg52In1AccY64 rho)) =
        rho 48547 * seg52In1AccX64 rho + rho 48546 * seg52In1AccY64 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48553 * (1 - 3021 * (rho 48547 * seg52In1AccX64 rho) * (rho 48546 * seg52In1AccY64 rho)) =
        (-1) * (rho 48547 * seg52In1AccX64 rho) - rho 48546 * seg52In1AccY64 rho +
          (seg52In1AccY64 rho - seg52In1AccX64 rho * (-1)) * (rho 48546 + rho 48547) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48553 * (1 - rho 48551) = rho 48548 - rho 48549 - rho 48550 := ha5
      _ = (-1) * rho 48549 - rho 48550 + (seg52In1AccY64 rho - seg52In1AccX64 rho * (-1)) *
          (rho 48546 + rho 48547) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX65 rho = seg52In1AccX64 rho - Bool.toZMod bit * (seg52In1AccX64 rho - rho 48552) := by
    have hd : rho 48554 = Bool.toZMod bit * (rho 48552 - seg52In1AccX64 rho) := by
      rw [← hbit]
      unfold seg52In1AccX64
      linear_combination -r4164
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY65 rho = seg52In1AccY64 rho - Bool.toZMod bit * (seg52In1AccY64 rho - rho 48553) := by
    have hd : rho 48555 = Bool.toZMod bit * (rho 48553 - seg52In1AccY64 rho) := by
      rw [← hbit]
      unfold seg52In1AccY64
      linear_combination -r4165
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48546 * rho 48547 = rho 48556 := by linear_combination r4166
  have hd1 : rho 48546 * rho 48546 = rho 48557 := by linear_combination r4167
  have hd2 : rho 48547 * rho 48547 = rho 48558 := by linear_combination r4168
  have hd3 : rho 48559 * (rho 48547 * rho 48547 + rho 48546 * rho 48546 * (-1)) =
      2 * (rho 48546 * rho 48547) := by
    rw [hd0, hd1, hd2]
    linear_combination r4169
  have hd4 : rho 48560 * (2 - (rho 48547 * rho 48547 + rho 48546 * rho 48546 * (-1))) =
      rho 48547 * rho 48547 - rho 48546 * rho 48546 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4170
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX64 rho, seg52In1AccY64 rho⟩ ⟨rho 48546, rho 48547⟩
    ⟨rho 48552, rho 48553⟩ ⟨seg52In1AccX65 rho, seg52In1AccY65 rho⟩ ⟨rho 48559, rho 48560⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows65 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4171 rho ∧ Seg52.relationRow4172 rho ∧ Seg52.relationRow4173 rho ∧ Seg52.relationRow4174 rho ∧ Seg52.relationRow4175 rho ∧ Seg52.relationRow4176 rho ∧ Seg52.relationRow4177 rho ∧ Seg52.relationRow4178 rho ∧ Seg52.relationRow4179 rho ∧ Seg52.relationRow4180 rho ∧ Seg52.relationRow4181 rho ∧ Seg52.relationRow4182 rho ∧ Seg52.relationRow4183 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p52, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart52 at p52

  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, r4171, r4172, r4173, r4174, r4175, r4176, r4177, r4178, r4179, r4180, r4181, r4182, r4183, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4171, r4172, r4173, r4174, r4175, r4176, r4177, r4178, r4179, r4180, r4181, r4182, r4183⟩

theorem seg52In1_rung65 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47659 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX65 rho, seg52In1AccY65 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48559, rho 48560⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX65 rho, seg52In1AccY65 rho⟩ ⟨rho 48559, rho 48560⟩
        ⟨seg52In1AccX66 rho, seg52In1AccY66 rho⟩ ⟨rho 48572, rho 48573⟩ := by
  obtain ⟨r4171, r4172, r4173, r4174, r4175, r4176, r4177, r4178, r4179, r4180, r4181, r4182, r4183⟩ := seg52In1_rows65 rho h
  unfold Seg52.relationRow4171 at r4171

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4171

  unfold Seg52.relationRow4172 at r4172

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4172

  unfold Seg52.relationRow4173 at r4173

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4173

  unfold Seg52.relationRow4174 at r4174

  unfold Seg52.relationRow4175 at r4175

  unfold Seg52.relationRow4176 at r4176

  unfold Seg52.relationRow4177 at r4177

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4177

  unfold Seg52.relationRow4178 at r4178

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4178

  unfold Seg52.relationRow4179 at r4179

  unfold Seg52.relationRow4180 at r4180

  unfold Seg52.relationRow4181 at r4181

  unfold Seg52.relationRow4182 at r4182

  unfold Seg52.relationRow4183 at r4183

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX66 rho = seg52In1AccX65 rho + rho 48567 := by
    unfold seg52In1AccX66 seg52In1AccX65
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 65]

    ring

  have hnexty : seg52In1AccY66 rho = seg52In1AccY65 rho + rho 48568 := by
    unfold seg52In1AccY66 seg52In1AccY65
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 65]

    ring

  have ha0 : (rho 48559 + rho 48560) * (seg52In1AccX65 rho + seg52In1AccY65 rho) = rho 48561 := by
    unfold seg52In1AccX65 seg52In1AccY65
    linear_combination r4171
  have ha1 : rho 48560 * seg52In1AccX65 rho = rho 48562 := by
    unfold seg52In1AccX65
    linear_combination r4172
  have ha2 : rho 48559 * seg52In1AccY65 rho = rho 48563 := by
    unfold seg52In1AccY65
    linear_combination r4173
  have ha3 : 3021 * rho 48562 * rho 48563 = rho 48564 := by
    linear_combination r4174
  have ha4 : rho 48565 * (1 + rho 48564) = rho 48562 + rho 48563 := by
    linear_combination r4175
  have ha5 : rho 48566 * (1 - rho 48564) = rho 48561 - rho 48562 - rho 48563 := by
    linear_combination r4176
  have haddx :
      rho 48565 * (1 + 3021 * (rho 48560 * seg52In1AccX65 rho) * (rho 48559 * seg52In1AccY65 rho)) =
        rho 48560 * seg52In1AccX65 rho + rho 48559 * seg52In1AccY65 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48566 * (1 - 3021 * (rho 48560 * seg52In1AccX65 rho) * (rho 48559 * seg52In1AccY65 rho)) =
        (-1) * (rho 48560 * seg52In1AccX65 rho) - rho 48559 * seg52In1AccY65 rho +
          (seg52In1AccY65 rho - seg52In1AccX65 rho * (-1)) * (rho 48559 + rho 48560) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48566 * (1 - rho 48564) = rho 48561 - rho 48562 - rho 48563 := ha5
      _ = (-1) * rho 48562 - rho 48563 + (seg52In1AccY65 rho - seg52In1AccX65 rho * (-1)) *
          (rho 48559 + rho 48560) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX66 rho = seg52In1AccX65 rho - Bool.toZMod bit * (seg52In1AccX65 rho - rho 48565) := by
    have hd : rho 48567 = Bool.toZMod bit * (rho 48565 - seg52In1AccX65 rho) := by
      rw [← hbit]
      unfold seg52In1AccX65
      linear_combination -r4177
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY66 rho = seg52In1AccY65 rho - Bool.toZMod bit * (seg52In1AccY65 rho - rho 48566) := by
    have hd : rho 48568 = Bool.toZMod bit * (rho 48566 - seg52In1AccY65 rho) := by
      rw [← hbit]
      unfold seg52In1AccY65
      linear_combination -r4178
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48559 * rho 48560 = rho 48569 := by linear_combination r4179
  have hd1 : rho 48559 * rho 48559 = rho 48570 := by linear_combination r4180
  have hd2 : rho 48560 * rho 48560 = rho 48571 := by linear_combination r4181
  have hd3 : rho 48572 * (rho 48560 * rho 48560 + rho 48559 * rho 48559 * (-1)) =
      2 * (rho 48559 * rho 48560) := by
    rw [hd0, hd1, hd2]
    linear_combination r4182
  have hd4 : rho 48573 * (2 - (rho 48560 * rho 48560 + rho 48559 * rho 48559 * (-1))) =
      rho 48560 * rho 48560 - rho 48559 * rho 48559 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4183
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX65 rho, seg52In1AccY65 rho⟩ ⟨rho 48559, rho 48560⟩
    ⟨rho 48565, rho 48566⟩ ⟨seg52In1AccX66 rho, seg52In1AccY66 rho⟩ ⟨rho 48572, rho 48573⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_hstep_c5 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (47594 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 55 ≤ i → i < 66 →
      EdwardsBridge.onCurve (seg52In1AccState rho i) →
      EdwardsBridge.onCurve (seg52In1CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In1AccState rho i) (seg52In1CurState rho i)
        (seg52In1AccState rho (i + 1)) (seg52In1CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In1_rung55 rho h bits[55]! (hbitAt 55 (by omega)) hacc hcur
  · exact seg52In1_rung56 rho h bits[56]! (hbitAt 56 (by omega)) hacc hcur
  · exact seg52In1_rung57 rho h bits[57]! (hbitAt 57 (by omega)) hacc hcur
  · exact seg52In1_rung58 rho h bits[58]! (hbitAt 58 (by omega)) hacc hcur
  · exact seg52In1_rung59 rho h bits[59]! (hbitAt 59 (by omega)) hacc hcur
  · exact seg52In1_rung60 rho h bits[60]! (hbitAt 60 (by omega)) hacc hcur
  · exact seg52In1_rung61 rho h bits[61]! (hbitAt 61 (by omega)) hacc hcur
  · exact seg52In1_rung62 rho h bits[62]! (hbitAt 62 (by omega)) hacc hcur
  · exact seg52In1_rung63 rho h bits[63]! (hbitAt 63 (by omega)) hacc hcur
  · exact seg52In1_rung64 rho h bits[64]! (hbitAt 64 (by omega)) hacc hcur
  · exact seg52In1_rung65 rho h bits[65]! (hbitAt 65 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
