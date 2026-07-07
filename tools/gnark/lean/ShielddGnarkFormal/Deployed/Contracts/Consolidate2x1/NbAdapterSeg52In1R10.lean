import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In1_rows110 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4116 rho ∧ Seg52.relationRow4117 rho ∧ Seg52.relationRow4118 rho ∧ Seg52.relationRow4119 rho ∧ Seg52.relationRow4120 rho ∧ Seg52.relationRow4121 rho ∧ Seg52.relationRow4122 rho ∧ Seg52.relationRow4123 rho ∧ Seg52.relationRow4124 rho ∧ Seg52.relationRow4125 rho ∧ Seg52.relationRow4126 rho ∧ Seg52.relationRow4127 rho ∧ Seg52.relationRow4128 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart51 at p51

  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4116, r4117, r4118, r4119, r4120, r4121, r4122, r4123, r4124, r4125, r4126, r4127, r4128, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4116, r4117, r4118, r4119, r4120, r4121, r4122, r4123, r4124, r4125, r4126, r4127, r4128⟩

theorem seg52In1_rung110 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47064 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX110 rho, seg52In1AccY110 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48504, rho 48505⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX110 rho, seg52In1AccY110 rho⟩ ⟨rho 48504, rho 48505⟩
        ⟨seg52In1AccX111 rho, seg52In1AccY111 rho⟩ ⟨rho 48517, rho 48518⟩ := by
  obtain ⟨r4116, r4117, r4118, r4119, r4120, r4121, r4122, r4123, r4124, r4125, r4126, r4127, r4128⟩ := seg52In1_rows110 rho h
  unfold Seg52.relationRow4116 at r4116

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4116

  unfold Seg52.relationRow4117 at r4117

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4117

  unfold Seg52.relationRow4118 at r4118

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4118

  unfold Seg52.relationRow4119 at r4119

  unfold Seg52.relationRow4120 at r4120

  unfold Seg52.relationRow4121 at r4121

  unfold Seg52.relationRow4122 at r4122

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4122

  unfold Seg52.relationRow4123 at r4123

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4123

  unfold Seg52.relationRow4124 at r4124

  unfold Seg52.relationRow4125 at r4125

  unfold Seg52.relationRow4126 at r4126

  unfold Seg52.relationRow4127 at r4127

  unfold Seg52.relationRow4128 at r4128

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX111 rho = seg52In1AccX110 rho + rho 48512 := by
    unfold seg52In1AccX111 seg52In1AccX110
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 110]

    ring

  have hnexty : seg52In1AccY111 rho = seg52In1AccY110 rho + rho 48513 := by
    unfold seg52In1AccY111 seg52In1AccY110
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 110]

    ring

  have ha0 : (rho 48504 + rho 48505) * (seg52In1AccX110 rho + seg52In1AccY110 rho) = rho 48506 := by
    unfold seg52In1AccX110 seg52In1AccY110
    linear_combination r4116
  have ha1 : rho 48505 * seg52In1AccX110 rho = rho 48507 := by
    unfold seg52In1AccX110
    linear_combination r4117
  have ha2 : rho 48504 * seg52In1AccY110 rho = rho 48508 := by
    unfold seg52In1AccY110
    linear_combination r4118
  have ha3 : 3021 * rho 48507 * rho 48508 = rho 48509 := by
    linear_combination r4119
  have ha4 : rho 48510 * (1 + rho 48509) = rho 48507 + rho 48508 := by
    linear_combination r4120
  have ha5 : rho 48511 * (1 - rho 48509) = rho 48506 - rho 48507 - rho 48508 := by
    linear_combination r4121
  have haddx :
      rho 48510 * (1 + 3021 * (rho 48505 * seg52In1AccX110 rho) * (rho 48504 * seg52In1AccY110 rho)) =
        rho 48505 * seg52In1AccX110 rho + rho 48504 * seg52In1AccY110 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48511 * (1 - 3021 * (rho 48505 * seg52In1AccX110 rho) * (rho 48504 * seg52In1AccY110 rho)) =
        (-1) * (rho 48505 * seg52In1AccX110 rho) - rho 48504 * seg52In1AccY110 rho +
          (seg52In1AccY110 rho - seg52In1AccX110 rho * (-1)) * (rho 48504 + rho 48505) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48511 * (1 - rho 48509) = rho 48506 - rho 48507 - rho 48508 := ha5
      _ = (-1) * rho 48507 - rho 48508 + (seg52In1AccY110 rho - seg52In1AccX110 rho * (-1)) *
          (rho 48504 + rho 48505) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX111 rho = seg52In1AccX110 rho - Bool.toZMod bit * (seg52In1AccX110 rho - rho 48510) := by
    have hd : rho 48512 = Bool.toZMod bit * (rho 48510 - seg52In1AccX110 rho) := by
      rw [← hbit]
      unfold seg52In1AccX110
      linear_combination -r4122
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY111 rho = seg52In1AccY110 rho - Bool.toZMod bit * (seg52In1AccY110 rho - rho 48511) := by
    have hd : rho 48513 = Bool.toZMod bit * (rho 48511 - seg52In1AccY110 rho) := by
      rw [← hbit]
      unfold seg52In1AccY110
      linear_combination -r4123
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48504 * rho 48505 = rho 48514 := by linear_combination r4124
  have hd1 : rho 48504 * rho 48504 = rho 48515 := by linear_combination r4125
  have hd2 : rho 48505 * rho 48505 = rho 48516 := by linear_combination r4126
  have hd3 : rho 48517 * (rho 48505 * rho 48505 + rho 48504 * rho 48504 * (-1)) =
      2 * (rho 48504 * rho 48505) := by
    rw [hd0, hd1, hd2]
    linear_combination r4127
  have hd4 : rho 48518 * (2 - (rho 48505 * rho 48505 + rho 48504 * rho 48504 * (-1))) =
      rho 48505 * rho 48505 - rho 48504 * rho 48504 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4128
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX110 rho, seg52In1AccY110 rho⟩ ⟨rho 48504, rho 48505⟩
    ⟨rho 48510, rho 48511⟩ ⟨seg52In1AccX111 rho, seg52In1AccY111 rho⟩ ⟨rho 48517, rho 48518⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows111 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4129 rho ∧ Seg52.relationRow4130 rho ∧ Seg52.relationRow4131 rho ∧ Seg52.relationRow4132 rho ∧ Seg52.relationRow4133 rho ∧ Seg52.relationRow4134 rho ∧ Seg52.relationRow4135 rho ∧ Seg52.relationRow4136 rho ∧ Seg52.relationRow4137 rho ∧ Seg52.relationRow4138 rho ∧ Seg52.relationRow4139 rho ∧ Seg52.relationRow4140 rho ∧ Seg52.relationRow4141 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart51 at p51

  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4129, r4130, r4131, r4132, r4133, r4134, r4135, r4136, r4137, r4138, r4139, r4140, r4141, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4129, r4130, r4131, r4132, r4133, r4134, r4135, r4136, r4137, r4138, r4139, r4140, r4141⟩

theorem seg52In1_rung111 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47065 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX111 rho, seg52In1AccY111 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48517, rho 48518⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX111 rho, seg52In1AccY111 rho⟩ ⟨rho 48517, rho 48518⟩
        ⟨seg52In1AccX112 rho, seg52In1AccY112 rho⟩ ⟨rho 48530, rho 48531⟩ := by
  obtain ⟨r4129, r4130, r4131, r4132, r4133, r4134, r4135, r4136, r4137, r4138, r4139, r4140, r4141⟩ := seg52In1_rows111 rho h
  unfold Seg52.relationRow4129 at r4129

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4129

  unfold Seg52.relationRow4130 at r4130

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4130

  unfold Seg52.relationRow4131 at r4131

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4131

  unfold Seg52.relationRow4132 at r4132

  unfold Seg52.relationRow4133 at r4133

  unfold Seg52.relationRow4134 at r4134

  unfold Seg52.relationRow4135 at r4135

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4135

  unfold Seg52.relationRow4136 at r4136

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4136

  unfold Seg52.relationRow4137 at r4137

  unfold Seg52.relationRow4138 at r4138

  unfold Seg52.relationRow4139 at r4139

  unfold Seg52.relationRow4140 at r4140

  unfold Seg52.relationRow4141 at r4141

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX112 rho = seg52In1AccX111 rho + rho 48525 := by
    unfold seg52In1AccX112 seg52In1AccX111
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 111]

    ring

  have hnexty : seg52In1AccY112 rho = seg52In1AccY111 rho + rho 48526 := by
    unfold seg52In1AccY112 seg52In1AccY111
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 111]

    ring

  have ha0 : (rho 48517 + rho 48518) * (seg52In1AccX111 rho + seg52In1AccY111 rho) = rho 48519 := by
    unfold seg52In1AccX111 seg52In1AccY111
    linear_combination r4129
  have ha1 : rho 48518 * seg52In1AccX111 rho = rho 48520 := by
    unfold seg52In1AccX111
    linear_combination r4130
  have ha2 : rho 48517 * seg52In1AccY111 rho = rho 48521 := by
    unfold seg52In1AccY111
    linear_combination r4131
  have ha3 : 3021 * rho 48520 * rho 48521 = rho 48522 := by
    linear_combination r4132
  have ha4 : rho 48523 * (1 + rho 48522) = rho 48520 + rho 48521 := by
    linear_combination r4133
  have ha5 : rho 48524 * (1 - rho 48522) = rho 48519 - rho 48520 - rho 48521 := by
    linear_combination r4134
  have haddx :
      rho 48523 * (1 + 3021 * (rho 48518 * seg52In1AccX111 rho) * (rho 48517 * seg52In1AccY111 rho)) =
        rho 48518 * seg52In1AccX111 rho + rho 48517 * seg52In1AccY111 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48524 * (1 - 3021 * (rho 48518 * seg52In1AccX111 rho) * (rho 48517 * seg52In1AccY111 rho)) =
        (-1) * (rho 48518 * seg52In1AccX111 rho) - rho 48517 * seg52In1AccY111 rho +
          (seg52In1AccY111 rho - seg52In1AccX111 rho * (-1)) * (rho 48517 + rho 48518) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48524 * (1 - rho 48522) = rho 48519 - rho 48520 - rho 48521 := ha5
      _ = (-1) * rho 48520 - rho 48521 + (seg52In1AccY111 rho - seg52In1AccX111 rho * (-1)) *
          (rho 48517 + rho 48518) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX112 rho = seg52In1AccX111 rho - Bool.toZMod bit * (seg52In1AccX111 rho - rho 48523) := by
    have hd : rho 48525 = Bool.toZMod bit * (rho 48523 - seg52In1AccX111 rho) := by
      rw [← hbit]
      unfold seg52In1AccX111
      linear_combination -r4135
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY112 rho = seg52In1AccY111 rho - Bool.toZMod bit * (seg52In1AccY111 rho - rho 48524) := by
    have hd : rho 48526 = Bool.toZMod bit * (rho 48524 - seg52In1AccY111 rho) := by
      rw [← hbit]
      unfold seg52In1AccY111
      linear_combination -r4136
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48517 * rho 48518 = rho 48527 := by linear_combination r4137
  have hd1 : rho 48517 * rho 48517 = rho 48528 := by linear_combination r4138
  have hd2 : rho 48518 * rho 48518 = rho 48529 := by linear_combination r4139
  have hd3 : rho 48530 * (rho 48518 * rho 48518 + rho 48517 * rho 48517 * (-1)) =
      2 * (rho 48517 * rho 48518) := by
    rw [hd0, hd1, hd2]
    linear_combination r4140
  have hd4 : rho 48531 * (2 - (rho 48518 * rho 48518 + rho 48517 * rho 48517 * (-1))) =
      rho 48518 * rho 48518 - rho 48517 * rho 48517 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4141
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX111 rho, seg52In1AccY111 rho⟩ ⟨rho 48517, rho 48518⟩
    ⟨rho 48523, rho 48524⟩ ⟨seg52In1AccX112 rho, seg52In1AccY112 rho⟩ ⟨rho 48530, rho 48531⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows112 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4142 rho ∧ Seg52.relationRow4143 rho ∧ Seg52.relationRow4144 rho ∧ Seg52.relationRow4145 rho ∧ Seg52.relationRow4146 rho ∧ Seg52.relationRow4147 rho ∧ Seg52.relationRow4148 rho ∧ Seg52.relationRow4149 rho ∧ Seg52.relationRow4150 rho ∧ Seg52.relationRow4151 rho ∧ Seg52.relationRow4152 rho ∧ Seg52.relationRow4153 rho ∧ Seg52.relationRow4154 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart51 at p51

  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4142, r4143, r4144, r4145, r4146, r4147, r4148, r4149, r4150, r4151, r4152, r4153, r4154, _, _, _, _, _⟩

  exact ⟨r4142, r4143, r4144, r4145, r4146, r4147, r4148, r4149, r4150, r4151, r4152, r4153, r4154⟩

theorem seg52In1_rung112 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47066 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX112 rho, seg52In1AccY112 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48530, rho 48531⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX112 rho, seg52In1AccY112 rho⟩ ⟨rho 48530, rho 48531⟩
        ⟨seg52In1AccX113 rho, seg52In1AccY113 rho⟩ ⟨rho 48543, rho 48544⟩ := by
  obtain ⟨r4142, r4143, r4144, r4145, r4146, r4147, r4148, r4149, r4150, r4151, r4152, r4153, r4154⟩ := seg52In1_rows112 rho h
  unfold Seg52.relationRow4142 at r4142

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4142

  unfold Seg52.relationRow4143 at r4143

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4143

  unfold Seg52.relationRow4144 at r4144

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4144

  unfold Seg52.relationRow4145 at r4145

  unfold Seg52.relationRow4146 at r4146

  unfold Seg52.relationRow4147 at r4147

  unfold Seg52.relationRow4148 at r4148

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4148

  unfold Seg52.relationRow4149 at r4149

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4149

  unfold Seg52.relationRow4150 at r4150

  unfold Seg52.relationRow4151 at r4151

  unfold Seg52.relationRow4152 at r4152

  unfold Seg52.relationRow4153 at r4153

  unfold Seg52.relationRow4154 at r4154

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX113 rho = seg52In1AccX112 rho + rho 48538 := by
    unfold seg52In1AccX113 seg52In1AccX112
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 112]

    ring

  have hnexty : seg52In1AccY113 rho = seg52In1AccY112 rho + rho 48539 := by
    unfold seg52In1AccY113 seg52In1AccY112
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 112]

    ring

  have ha0 : (rho 48530 + rho 48531) * (seg52In1AccX112 rho + seg52In1AccY112 rho) = rho 48532 := by
    unfold seg52In1AccX112 seg52In1AccY112
    linear_combination r4142
  have ha1 : rho 48531 * seg52In1AccX112 rho = rho 48533 := by
    unfold seg52In1AccX112
    linear_combination r4143
  have ha2 : rho 48530 * seg52In1AccY112 rho = rho 48534 := by
    unfold seg52In1AccY112
    linear_combination r4144
  have ha3 : 3021 * rho 48533 * rho 48534 = rho 48535 := by
    linear_combination r4145
  have ha4 : rho 48536 * (1 + rho 48535) = rho 48533 + rho 48534 := by
    linear_combination r4146
  have ha5 : rho 48537 * (1 - rho 48535) = rho 48532 - rho 48533 - rho 48534 := by
    linear_combination r4147
  have haddx :
      rho 48536 * (1 + 3021 * (rho 48531 * seg52In1AccX112 rho) * (rho 48530 * seg52In1AccY112 rho)) =
        rho 48531 * seg52In1AccX112 rho + rho 48530 * seg52In1AccY112 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48537 * (1 - 3021 * (rho 48531 * seg52In1AccX112 rho) * (rho 48530 * seg52In1AccY112 rho)) =
        (-1) * (rho 48531 * seg52In1AccX112 rho) - rho 48530 * seg52In1AccY112 rho +
          (seg52In1AccY112 rho - seg52In1AccX112 rho * (-1)) * (rho 48530 + rho 48531) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48537 * (1 - rho 48535) = rho 48532 - rho 48533 - rho 48534 := ha5
      _ = (-1) * rho 48533 - rho 48534 + (seg52In1AccY112 rho - seg52In1AccX112 rho * (-1)) *
          (rho 48530 + rho 48531) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX113 rho = seg52In1AccX112 rho - Bool.toZMod bit * (seg52In1AccX112 rho - rho 48536) := by
    have hd : rho 48538 = Bool.toZMod bit * (rho 48536 - seg52In1AccX112 rho) := by
      rw [← hbit]
      unfold seg52In1AccX112
      linear_combination -r4148
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY113 rho = seg52In1AccY112 rho - Bool.toZMod bit * (seg52In1AccY112 rho - rho 48537) := by
    have hd : rho 48539 = Bool.toZMod bit * (rho 48537 - seg52In1AccY112 rho) := by
      rw [← hbit]
      unfold seg52In1AccY112
      linear_combination -r4149
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48530 * rho 48531 = rho 48540 := by linear_combination r4150
  have hd1 : rho 48530 * rho 48530 = rho 48541 := by linear_combination r4151
  have hd2 : rho 48531 * rho 48531 = rho 48542 := by linear_combination r4152
  have hd3 : rho 48543 * (rho 48531 * rho 48531 + rho 48530 * rho 48530 * (-1)) =
      2 * (rho 48530 * rho 48531) := by
    rw [hd0, hd1, hd2]
    linear_combination r4153
  have hd4 : rho 48544 * (2 - (rho 48531 * rho 48531 + rho 48530 * rho 48530 * (-1))) =
      rho 48531 * rho 48531 - rho 48530 * rho 48530 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4154
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX112 rho, seg52In1AccY112 rho⟩ ⟨rho 48530, rho 48531⟩
    ⟨rho 48536, rho 48537⟩ ⟨seg52In1AccX113 rho, seg52In1AccY113 rho⟩ ⟨rho 48543, rho 48544⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows113 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4155 rho ∧ Seg52.relationRow4156 rho ∧ Seg52.relationRow4157 rho ∧ Seg52.relationRow4158 rho ∧ Seg52.relationRow4159 rho ∧ Seg52.relationRow4160 rho ∧ Seg52.relationRow4161 rho ∧ Seg52.relationRow4162 rho ∧ Seg52.relationRow4163 rho ∧ Seg52.relationRow4164 rho ∧ Seg52.relationRow4165 rho ∧ Seg52.relationRow4166 rho ∧ Seg52.relationRow4167 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart51 at p51

  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4155, r4156, r4157, r4158, r4159⟩

  unfold Seg52.relationPart52 at p52

  rcases p52 with ⟨r4160, r4161, r4162, r4163, r4164, r4165, r4166, r4167, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4155, r4156, r4157, r4158, r4159, r4160, r4161, r4162, r4163, r4164, r4165, r4166, r4167⟩

theorem seg52In1_rung113 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47067 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX113 rho, seg52In1AccY113 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48543, rho 48544⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX113 rho, seg52In1AccY113 rho⟩ ⟨rho 48543, rho 48544⟩
        ⟨seg52In1AccX114 rho, seg52In1AccY114 rho⟩ ⟨rho 48556, rho 48557⟩ := by
  obtain ⟨r4155, r4156, r4157, r4158, r4159, r4160, r4161, r4162, r4163, r4164, r4165, r4166, r4167⟩ := seg52In1_rows113 rho h
  unfold Seg52.relationRow4155 at r4155

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4155

  unfold Seg52.relationRow4156 at r4156

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4156

  unfold Seg52.relationRow4157 at r4157

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4157

  unfold Seg52.relationRow4158 at r4158

  unfold Seg52.relationRow4159 at r4159

  unfold Seg52.relationRow4160 at r4160

  unfold Seg52.relationRow4161 at r4161

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4161

  unfold Seg52.relationRow4162 at r4162

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4162

  unfold Seg52.relationRow4163 at r4163

  unfold Seg52.relationRow4164 at r4164

  unfold Seg52.relationRow4165 at r4165

  unfold Seg52.relationRow4166 at r4166

  unfold Seg52.relationRow4167 at r4167

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX114 rho = seg52In1AccX113 rho + rho 48551 := by
    unfold seg52In1AccX114 seg52In1AccX113
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 113]

    ring

  have hnexty : seg52In1AccY114 rho = seg52In1AccY113 rho + rho 48552 := by
    unfold seg52In1AccY114 seg52In1AccY113
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 113]

    ring

  have ha0 : (rho 48543 + rho 48544) * (seg52In1AccX113 rho + seg52In1AccY113 rho) = rho 48545 := by
    unfold seg52In1AccX113 seg52In1AccY113
    linear_combination r4155
  have ha1 : rho 48544 * seg52In1AccX113 rho = rho 48546 := by
    unfold seg52In1AccX113
    linear_combination r4156
  have ha2 : rho 48543 * seg52In1AccY113 rho = rho 48547 := by
    unfold seg52In1AccY113
    linear_combination r4157
  have ha3 : 3021 * rho 48546 * rho 48547 = rho 48548 := by
    linear_combination r4158
  have ha4 : rho 48549 * (1 + rho 48548) = rho 48546 + rho 48547 := by
    linear_combination r4159
  have ha5 : rho 48550 * (1 - rho 48548) = rho 48545 - rho 48546 - rho 48547 := by
    linear_combination r4160
  have haddx :
      rho 48549 * (1 + 3021 * (rho 48544 * seg52In1AccX113 rho) * (rho 48543 * seg52In1AccY113 rho)) =
        rho 48544 * seg52In1AccX113 rho + rho 48543 * seg52In1AccY113 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48550 * (1 - 3021 * (rho 48544 * seg52In1AccX113 rho) * (rho 48543 * seg52In1AccY113 rho)) =
        (-1) * (rho 48544 * seg52In1AccX113 rho) - rho 48543 * seg52In1AccY113 rho +
          (seg52In1AccY113 rho - seg52In1AccX113 rho * (-1)) * (rho 48543 + rho 48544) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48550 * (1 - rho 48548) = rho 48545 - rho 48546 - rho 48547 := ha5
      _ = (-1) * rho 48546 - rho 48547 + (seg52In1AccY113 rho - seg52In1AccX113 rho * (-1)) *
          (rho 48543 + rho 48544) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX114 rho = seg52In1AccX113 rho - Bool.toZMod bit * (seg52In1AccX113 rho - rho 48549) := by
    have hd : rho 48551 = Bool.toZMod bit * (rho 48549 - seg52In1AccX113 rho) := by
      rw [← hbit]
      unfold seg52In1AccX113
      linear_combination -r4161
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY114 rho = seg52In1AccY113 rho - Bool.toZMod bit * (seg52In1AccY113 rho - rho 48550) := by
    have hd : rho 48552 = Bool.toZMod bit * (rho 48550 - seg52In1AccY113 rho) := by
      rw [← hbit]
      unfold seg52In1AccY113
      linear_combination -r4162
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48543 * rho 48544 = rho 48553 := by linear_combination r4163
  have hd1 : rho 48543 * rho 48543 = rho 48554 := by linear_combination r4164
  have hd2 : rho 48544 * rho 48544 = rho 48555 := by linear_combination r4165
  have hd3 : rho 48556 * (rho 48544 * rho 48544 + rho 48543 * rho 48543 * (-1)) =
      2 * (rho 48543 * rho 48544) := by
    rw [hd0, hd1, hd2]
    linear_combination r4166
  have hd4 : rho 48557 * (2 - (rho 48544 * rho 48544 + rho 48543 * rho 48543 * (-1))) =
      rho 48544 * rho 48544 - rho 48543 * rho 48543 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4167
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX113 rho, seg52In1AccY113 rho⟩ ⟨rho 48543, rho 48544⟩
    ⟨rho 48549, rho 48550⟩ ⟨seg52In1AccX114 rho, seg52In1AccY114 rho⟩ ⟨rho 48556, rho 48557⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows114 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4168 rho ∧ Seg52.relationRow4169 rho ∧ Seg52.relationRow4170 rho ∧ Seg52.relationRow4171 rho ∧ Seg52.relationRow4172 rho ∧ Seg52.relationRow4173 rho ∧ Seg52.relationRow4174 rho ∧ Seg52.relationRow4175 rho ∧ Seg52.relationRow4176 rho ∧ Seg52.relationRow4177 rho ∧ Seg52.relationRow4178 rho ∧ Seg52.relationRow4179 rho ∧ Seg52.relationRow4180 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart52 at p52

  rcases p52 with ⟨_, _, _, _, _, _, _, _, r4168, r4169, r4170, r4171, r4172, r4173, r4174, r4175, r4176, r4177, r4178, r4179, r4180, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4168, r4169, r4170, r4171, r4172, r4173, r4174, r4175, r4176, r4177, r4178, r4179, r4180⟩

theorem seg52In1_rung114 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47068 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX114 rho, seg52In1AccY114 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48556, rho 48557⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX114 rho, seg52In1AccY114 rho⟩ ⟨rho 48556, rho 48557⟩
        ⟨seg52In1AccX115 rho, seg52In1AccY115 rho⟩ ⟨rho 48569, rho 48570⟩ := by
  obtain ⟨r4168, r4169, r4170, r4171, r4172, r4173, r4174, r4175, r4176, r4177, r4178, r4179, r4180⟩ := seg52In1_rows114 rho h
  unfold Seg52.relationRow4168 at r4168

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4168

  unfold Seg52.relationRow4169 at r4169

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4169

  unfold Seg52.relationRow4170 at r4170

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4170

  unfold Seg52.relationRow4171 at r4171

  unfold Seg52.relationRow4172 at r4172

  unfold Seg52.relationRow4173 at r4173

  unfold Seg52.relationRow4174 at r4174

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4174

  unfold Seg52.relationRow4175 at r4175

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4175

  unfold Seg52.relationRow4176 at r4176

  unfold Seg52.relationRow4177 at r4177

  unfold Seg52.relationRow4178 at r4178

  unfold Seg52.relationRow4179 at r4179

  unfold Seg52.relationRow4180 at r4180

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX115 rho = seg52In1AccX114 rho + rho 48564 := by
    unfold seg52In1AccX115 seg52In1AccX114
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 114]

    ring

  have hnexty : seg52In1AccY115 rho = seg52In1AccY114 rho + rho 48565 := by
    unfold seg52In1AccY115 seg52In1AccY114
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 114]

    ring

  have ha0 : (rho 48556 + rho 48557) * (seg52In1AccX114 rho + seg52In1AccY114 rho) = rho 48558 := by
    unfold seg52In1AccX114 seg52In1AccY114
    linear_combination r4168
  have ha1 : rho 48557 * seg52In1AccX114 rho = rho 48559 := by
    unfold seg52In1AccX114
    linear_combination r4169
  have ha2 : rho 48556 * seg52In1AccY114 rho = rho 48560 := by
    unfold seg52In1AccY114
    linear_combination r4170
  have ha3 : 3021 * rho 48559 * rho 48560 = rho 48561 := by
    linear_combination r4171
  have ha4 : rho 48562 * (1 + rho 48561) = rho 48559 + rho 48560 := by
    linear_combination r4172
  have ha5 : rho 48563 * (1 - rho 48561) = rho 48558 - rho 48559 - rho 48560 := by
    linear_combination r4173
  have haddx :
      rho 48562 * (1 + 3021 * (rho 48557 * seg52In1AccX114 rho) * (rho 48556 * seg52In1AccY114 rho)) =
        rho 48557 * seg52In1AccX114 rho + rho 48556 * seg52In1AccY114 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48563 * (1 - 3021 * (rho 48557 * seg52In1AccX114 rho) * (rho 48556 * seg52In1AccY114 rho)) =
        (-1) * (rho 48557 * seg52In1AccX114 rho) - rho 48556 * seg52In1AccY114 rho +
          (seg52In1AccY114 rho - seg52In1AccX114 rho * (-1)) * (rho 48556 + rho 48557) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48563 * (1 - rho 48561) = rho 48558 - rho 48559 - rho 48560 := ha5
      _ = (-1) * rho 48559 - rho 48560 + (seg52In1AccY114 rho - seg52In1AccX114 rho * (-1)) *
          (rho 48556 + rho 48557) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX115 rho = seg52In1AccX114 rho - Bool.toZMod bit * (seg52In1AccX114 rho - rho 48562) := by
    have hd : rho 48564 = Bool.toZMod bit * (rho 48562 - seg52In1AccX114 rho) := by
      rw [← hbit]
      unfold seg52In1AccX114
      linear_combination -r4174
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY115 rho = seg52In1AccY114 rho - Bool.toZMod bit * (seg52In1AccY114 rho - rho 48563) := by
    have hd : rho 48565 = Bool.toZMod bit * (rho 48563 - seg52In1AccY114 rho) := by
      rw [← hbit]
      unfold seg52In1AccY114
      linear_combination -r4175
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48556 * rho 48557 = rho 48566 := by linear_combination r4176
  have hd1 : rho 48556 * rho 48556 = rho 48567 := by linear_combination r4177
  have hd2 : rho 48557 * rho 48557 = rho 48568 := by linear_combination r4178
  have hd3 : rho 48569 * (rho 48557 * rho 48557 + rho 48556 * rho 48556 * (-1)) =
      2 * (rho 48556 * rho 48557) := by
    rw [hd0, hd1, hd2]
    linear_combination r4179
  have hd4 : rho 48570 * (2 - (rho 48557 * rho 48557 + rho 48556 * rho 48556 * (-1))) =
      rho 48557 * rho 48557 - rho 48556 * rho 48556 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4180
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX114 rho, seg52In1AccY114 rho⟩ ⟨rho 48556, rho 48557⟩
    ⟨rho 48562, rho 48563⟩ ⟨seg52In1AccX115 rho, seg52In1AccY115 rho⟩ ⟨rho 48569, rho 48570⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows115 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4181 rho ∧ Seg52.relationRow4182 rho ∧ Seg52.relationRow4183 rho ∧ Seg52.relationRow4184 rho ∧ Seg52.relationRow4185 rho ∧ Seg52.relationRow4186 rho ∧ Seg52.relationRow4187 rho ∧ Seg52.relationRow4188 rho ∧ Seg52.relationRow4189 rho ∧ Seg52.relationRow4190 rho ∧ Seg52.relationRow4191 rho ∧ Seg52.relationRow4192 rho ∧ Seg52.relationRow4193 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart52 at p52

  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4181, r4182, r4183, r4184, r4185, r4186, r4187, r4188, r4189, r4190, r4191, r4192, r4193, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4181, r4182, r4183, r4184, r4185, r4186, r4187, r4188, r4189, r4190, r4191, r4192, r4193⟩

theorem seg52In1_rung115 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47069 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX115 rho, seg52In1AccY115 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48569, rho 48570⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX115 rho, seg52In1AccY115 rho⟩ ⟨rho 48569, rho 48570⟩
        ⟨seg52In1AccX116 rho, seg52In1AccY116 rho⟩ ⟨rho 48582, rho 48583⟩ := by
  obtain ⟨r4181, r4182, r4183, r4184, r4185, r4186, r4187, r4188, r4189, r4190, r4191, r4192, r4193⟩ := seg52In1_rows115 rho h
  unfold Seg52.relationRow4181 at r4181

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4181

  unfold Seg52.relationRow4182 at r4182

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4182

  unfold Seg52.relationRow4183 at r4183

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4183

  unfold Seg52.relationRow4184 at r4184

  unfold Seg52.relationRow4185 at r4185

  unfold Seg52.relationRow4186 at r4186

  unfold Seg52.relationRow4187 at r4187

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4187

  unfold Seg52.relationRow4188 at r4188

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4188

  unfold Seg52.relationRow4189 at r4189

  unfold Seg52.relationRow4190 at r4190

  unfold Seg52.relationRow4191 at r4191

  unfold Seg52.relationRow4192 at r4192

  unfold Seg52.relationRow4193 at r4193

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX116 rho = seg52In1AccX115 rho + rho 48577 := by
    unfold seg52In1AccX116 seg52In1AccX115
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 115]

    ring

  have hnexty : seg52In1AccY116 rho = seg52In1AccY115 rho + rho 48578 := by
    unfold seg52In1AccY116 seg52In1AccY115
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 115]

    ring

  have ha0 : (rho 48569 + rho 48570) * (seg52In1AccX115 rho + seg52In1AccY115 rho) = rho 48571 := by
    unfold seg52In1AccX115 seg52In1AccY115
    linear_combination r4181
  have ha1 : rho 48570 * seg52In1AccX115 rho = rho 48572 := by
    unfold seg52In1AccX115
    linear_combination r4182
  have ha2 : rho 48569 * seg52In1AccY115 rho = rho 48573 := by
    unfold seg52In1AccY115
    linear_combination r4183
  have ha3 : 3021 * rho 48572 * rho 48573 = rho 48574 := by
    linear_combination r4184
  have ha4 : rho 48575 * (1 + rho 48574) = rho 48572 + rho 48573 := by
    linear_combination r4185
  have ha5 : rho 48576 * (1 - rho 48574) = rho 48571 - rho 48572 - rho 48573 := by
    linear_combination r4186
  have haddx :
      rho 48575 * (1 + 3021 * (rho 48570 * seg52In1AccX115 rho) * (rho 48569 * seg52In1AccY115 rho)) =
        rho 48570 * seg52In1AccX115 rho + rho 48569 * seg52In1AccY115 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48576 * (1 - 3021 * (rho 48570 * seg52In1AccX115 rho) * (rho 48569 * seg52In1AccY115 rho)) =
        (-1) * (rho 48570 * seg52In1AccX115 rho) - rho 48569 * seg52In1AccY115 rho +
          (seg52In1AccY115 rho - seg52In1AccX115 rho * (-1)) * (rho 48569 + rho 48570) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48576 * (1 - rho 48574) = rho 48571 - rho 48572 - rho 48573 := ha5
      _ = (-1) * rho 48572 - rho 48573 + (seg52In1AccY115 rho - seg52In1AccX115 rho * (-1)) *
          (rho 48569 + rho 48570) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX116 rho = seg52In1AccX115 rho - Bool.toZMod bit * (seg52In1AccX115 rho - rho 48575) := by
    have hd : rho 48577 = Bool.toZMod bit * (rho 48575 - seg52In1AccX115 rho) := by
      rw [← hbit]
      unfold seg52In1AccX115
      linear_combination -r4187
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY116 rho = seg52In1AccY115 rho - Bool.toZMod bit * (seg52In1AccY115 rho - rho 48576) := by
    have hd : rho 48578 = Bool.toZMod bit * (rho 48576 - seg52In1AccY115 rho) := by
      rw [← hbit]
      unfold seg52In1AccY115
      linear_combination -r4188
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48569 * rho 48570 = rho 48579 := by linear_combination r4189
  have hd1 : rho 48569 * rho 48569 = rho 48580 := by linear_combination r4190
  have hd2 : rho 48570 * rho 48570 = rho 48581 := by linear_combination r4191
  have hd3 : rho 48582 * (rho 48570 * rho 48570 + rho 48569 * rho 48569 * (-1)) =
      2 * (rho 48569 * rho 48570) := by
    rw [hd0, hd1, hd2]
    linear_combination r4192
  have hd4 : rho 48583 * (2 - (rho 48570 * rho 48570 + rho 48569 * rho 48569 * (-1))) =
      rho 48570 * rho 48570 - rho 48569 * rho 48569 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4193
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX115 rho, seg52In1AccY115 rho⟩ ⟨rho 48569, rho 48570⟩
    ⟨rho 48575, rho 48576⟩ ⟨seg52In1AccX116 rho, seg52In1AccY116 rho⟩ ⟨rho 48582, rho 48583⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows116 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4194 rho ∧ Seg52.relationRow4195 rho ∧ Seg52.relationRow4196 rho ∧ Seg52.relationRow4197 rho ∧ Seg52.relationRow4198 rho ∧ Seg52.relationRow4199 rho ∧ Seg52.relationRow4200 rho ∧ Seg52.relationRow4201 rho ∧ Seg52.relationRow4202 rho ∧ Seg52.relationRow4203 rho ∧ Seg52.relationRow4204 rho ∧ Seg52.relationRow4205 rho ∧ Seg52.relationRow4206 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart52 at p52

  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4194, r4195, r4196, r4197, r4198, r4199, r4200, r4201, r4202, r4203, r4204, r4205, r4206, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4194, r4195, r4196, r4197, r4198, r4199, r4200, r4201, r4202, r4203, r4204, r4205, r4206⟩

theorem seg52In1_rung116 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47070 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX116 rho, seg52In1AccY116 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48582, rho 48583⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX116 rho, seg52In1AccY116 rho⟩ ⟨rho 48582, rho 48583⟩
        ⟨seg52In1AccX117 rho, seg52In1AccY117 rho⟩ ⟨rho 48595, rho 48596⟩ := by
  obtain ⟨r4194, r4195, r4196, r4197, r4198, r4199, r4200, r4201, r4202, r4203, r4204, r4205, r4206⟩ := seg52In1_rows116 rho h
  unfold Seg52.relationRow4194 at r4194

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4194

  unfold Seg52.relationRow4195 at r4195

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4195

  unfold Seg52.relationRow4196 at r4196

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4196

  unfold Seg52.relationRow4197 at r4197

  unfold Seg52.relationRow4198 at r4198

  unfold Seg52.relationRow4199 at r4199

  unfold Seg52.relationRow4200 at r4200

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4200

  unfold Seg52.relationRow4201 at r4201

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4201

  unfold Seg52.relationRow4202 at r4202

  unfold Seg52.relationRow4203 at r4203

  unfold Seg52.relationRow4204 at r4204

  unfold Seg52.relationRow4205 at r4205

  unfold Seg52.relationRow4206 at r4206

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX117 rho = seg52In1AccX116 rho + rho 48590 := by
    unfold seg52In1AccX117 seg52In1AccX116
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 116]

    ring

  have hnexty : seg52In1AccY117 rho = seg52In1AccY116 rho + rho 48591 := by
    unfold seg52In1AccY117 seg52In1AccY116
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 116]

    ring

  have ha0 : (rho 48582 + rho 48583) * (seg52In1AccX116 rho + seg52In1AccY116 rho) = rho 48584 := by
    unfold seg52In1AccX116 seg52In1AccY116
    linear_combination r4194
  have ha1 : rho 48583 * seg52In1AccX116 rho = rho 48585 := by
    unfold seg52In1AccX116
    linear_combination r4195
  have ha2 : rho 48582 * seg52In1AccY116 rho = rho 48586 := by
    unfold seg52In1AccY116
    linear_combination r4196
  have ha3 : 3021 * rho 48585 * rho 48586 = rho 48587 := by
    linear_combination r4197
  have ha4 : rho 48588 * (1 + rho 48587) = rho 48585 + rho 48586 := by
    linear_combination r4198
  have ha5 : rho 48589 * (1 - rho 48587) = rho 48584 - rho 48585 - rho 48586 := by
    linear_combination r4199
  have haddx :
      rho 48588 * (1 + 3021 * (rho 48583 * seg52In1AccX116 rho) * (rho 48582 * seg52In1AccY116 rho)) =
        rho 48583 * seg52In1AccX116 rho + rho 48582 * seg52In1AccY116 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48589 * (1 - 3021 * (rho 48583 * seg52In1AccX116 rho) * (rho 48582 * seg52In1AccY116 rho)) =
        (-1) * (rho 48583 * seg52In1AccX116 rho) - rho 48582 * seg52In1AccY116 rho +
          (seg52In1AccY116 rho - seg52In1AccX116 rho * (-1)) * (rho 48582 + rho 48583) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48589 * (1 - rho 48587) = rho 48584 - rho 48585 - rho 48586 := ha5
      _ = (-1) * rho 48585 - rho 48586 + (seg52In1AccY116 rho - seg52In1AccX116 rho * (-1)) *
          (rho 48582 + rho 48583) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX117 rho = seg52In1AccX116 rho - Bool.toZMod bit * (seg52In1AccX116 rho - rho 48588) := by
    have hd : rho 48590 = Bool.toZMod bit * (rho 48588 - seg52In1AccX116 rho) := by
      rw [← hbit]
      unfold seg52In1AccX116
      linear_combination -r4200
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY117 rho = seg52In1AccY116 rho - Bool.toZMod bit * (seg52In1AccY116 rho - rho 48589) := by
    have hd : rho 48591 = Bool.toZMod bit * (rho 48589 - seg52In1AccY116 rho) := by
      rw [← hbit]
      unfold seg52In1AccY116
      linear_combination -r4201
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48582 * rho 48583 = rho 48592 := by linear_combination r4202
  have hd1 : rho 48582 * rho 48582 = rho 48593 := by linear_combination r4203
  have hd2 : rho 48583 * rho 48583 = rho 48594 := by linear_combination r4204
  have hd3 : rho 48595 * (rho 48583 * rho 48583 + rho 48582 * rho 48582 * (-1)) =
      2 * (rho 48582 * rho 48583) := by
    rw [hd0, hd1, hd2]
    linear_combination r4205
  have hd4 : rho 48596 * (2 - (rho 48583 * rho 48583 + rho 48582 * rho 48582 * (-1))) =
      rho 48583 * rho 48583 - rho 48582 * rho 48582 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4206
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX116 rho, seg52In1AccY116 rho⟩ ⟨rho 48582, rho 48583⟩
    ⟨rho 48588, rho 48589⟩ ⟨seg52In1AccX117 rho, seg52In1AccY117 rho⟩ ⟨rho 48595, rho 48596⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows117 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4207 rho ∧ Seg52.relationRow4208 rho ∧ Seg52.relationRow4209 rho ∧ Seg52.relationRow4210 rho ∧ Seg52.relationRow4211 rho ∧ Seg52.relationRow4212 rho ∧ Seg52.relationRow4213 rho ∧ Seg52.relationRow4214 rho ∧ Seg52.relationRow4215 rho ∧ Seg52.relationRow4216 rho ∧ Seg52.relationRow4217 rho ∧ Seg52.relationRow4218 rho ∧ Seg52.relationRow4219 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart52 at p52

  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4207, r4208, r4209, r4210, r4211, r4212, r4213, r4214, r4215, r4216, r4217, r4218, r4219, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4207, r4208, r4209, r4210, r4211, r4212, r4213, r4214, r4215, r4216, r4217, r4218, r4219⟩

theorem seg52In1_rung117 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47071 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX117 rho, seg52In1AccY117 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48595, rho 48596⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX117 rho, seg52In1AccY117 rho⟩ ⟨rho 48595, rho 48596⟩
        ⟨seg52In1AccX118 rho, seg52In1AccY118 rho⟩ ⟨rho 48608, rho 48609⟩ := by
  obtain ⟨r4207, r4208, r4209, r4210, r4211, r4212, r4213, r4214, r4215, r4216, r4217, r4218, r4219⟩ := seg52In1_rows117 rho h
  unfold Seg52.relationRow4207 at r4207

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4207

  unfold Seg52.relationRow4208 at r4208

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4208

  unfold Seg52.relationRow4209 at r4209

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4209

  unfold Seg52.relationRow4210 at r4210

  unfold Seg52.relationRow4211 at r4211

  unfold Seg52.relationRow4212 at r4212

  unfold Seg52.relationRow4213 at r4213

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4213

  unfold Seg52.relationRow4214 at r4214

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4214

  unfold Seg52.relationRow4215 at r4215

  unfold Seg52.relationRow4216 at r4216

  unfold Seg52.relationRow4217 at r4217

  unfold Seg52.relationRow4218 at r4218

  unfold Seg52.relationRow4219 at r4219

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX118 rho = seg52In1AccX117 rho + rho 48603 := by
    unfold seg52In1AccX118 seg52In1AccX117
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 117]

    ring

  have hnexty : seg52In1AccY118 rho = seg52In1AccY117 rho + rho 48604 := by
    unfold seg52In1AccY118 seg52In1AccY117
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 117]

    ring

  have ha0 : (rho 48595 + rho 48596) * (seg52In1AccX117 rho + seg52In1AccY117 rho) = rho 48597 := by
    unfold seg52In1AccX117 seg52In1AccY117
    linear_combination r4207
  have ha1 : rho 48596 * seg52In1AccX117 rho = rho 48598 := by
    unfold seg52In1AccX117
    linear_combination r4208
  have ha2 : rho 48595 * seg52In1AccY117 rho = rho 48599 := by
    unfold seg52In1AccY117
    linear_combination r4209
  have ha3 : 3021 * rho 48598 * rho 48599 = rho 48600 := by
    linear_combination r4210
  have ha4 : rho 48601 * (1 + rho 48600) = rho 48598 + rho 48599 := by
    linear_combination r4211
  have ha5 : rho 48602 * (1 - rho 48600) = rho 48597 - rho 48598 - rho 48599 := by
    linear_combination r4212
  have haddx :
      rho 48601 * (1 + 3021 * (rho 48596 * seg52In1AccX117 rho) * (rho 48595 * seg52In1AccY117 rho)) =
        rho 48596 * seg52In1AccX117 rho + rho 48595 * seg52In1AccY117 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48602 * (1 - 3021 * (rho 48596 * seg52In1AccX117 rho) * (rho 48595 * seg52In1AccY117 rho)) =
        (-1) * (rho 48596 * seg52In1AccX117 rho) - rho 48595 * seg52In1AccY117 rho +
          (seg52In1AccY117 rho - seg52In1AccX117 rho * (-1)) * (rho 48595 + rho 48596) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48602 * (1 - rho 48600) = rho 48597 - rho 48598 - rho 48599 := ha5
      _ = (-1) * rho 48598 - rho 48599 + (seg52In1AccY117 rho - seg52In1AccX117 rho * (-1)) *
          (rho 48595 + rho 48596) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX118 rho = seg52In1AccX117 rho - Bool.toZMod bit * (seg52In1AccX117 rho - rho 48601) := by
    have hd : rho 48603 = Bool.toZMod bit * (rho 48601 - seg52In1AccX117 rho) := by
      rw [← hbit]
      unfold seg52In1AccX117
      linear_combination -r4213
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY118 rho = seg52In1AccY117 rho - Bool.toZMod bit * (seg52In1AccY117 rho - rho 48602) := by
    have hd : rho 48604 = Bool.toZMod bit * (rho 48602 - seg52In1AccY117 rho) := by
      rw [← hbit]
      unfold seg52In1AccY117
      linear_combination -r4214
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48595 * rho 48596 = rho 48605 := by linear_combination r4215
  have hd1 : rho 48595 * rho 48595 = rho 48606 := by linear_combination r4216
  have hd2 : rho 48596 * rho 48596 = rho 48607 := by linear_combination r4217
  have hd3 : rho 48608 * (rho 48596 * rho 48596 + rho 48595 * rho 48595 * (-1)) =
      2 * (rho 48595 * rho 48596) := by
    rw [hd0, hd1, hd2]
    linear_combination r4218
  have hd4 : rho 48609 * (2 - (rho 48596 * rho 48596 + rho 48595 * rho 48595 * (-1))) =
      rho 48596 * rho 48596 - rho 48595 * rho 48595 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4219
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX117 rho, seg52In1AccY117 rho⟩ ⟨rho 48595, rho 48596⟩
    ⟨rho 48601, rho 48602⟩ ⟨seg52In1AccX118 rho, seg52In1AccY118 rho⟩ ⟨rho 48608, rho 48609⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows118 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4220 rho ∧ Seg52.relationRow4221 rho ∧ Seg52.relationRow4222 rho ∧ Seg52.relationRow4223 rho ∧ Seg52.relationRow4224 rho ∧ Seg52.relationRow4225 rho ∧ Seg52.relationRow4226 rho ∧ Seg52.relationRow4227 rho ∧ Seg52.relationRow4228 rho ∧ Seg52.relationRow4229 rho ∧ Seg52.relationRow4230 rho ∧ Seg52.relationRow4231 rho ∧ Seg52.relationRow4232 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart52 at p52

  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4220, r4221, r4222, r4223, r4224, r4225, r4226, r4227, r4228, r4229, r4230, r4231, r4232, _, _, _, _, _, _, _⟩

  exact ⟨r4220, r4221, r4222, r4223, r4224, r4225, r4226, r4227, r4228, r4229, r4230, r4231, r4232⟩

theorem seg52In1_rung118 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47072 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX118 rho, seg52In1AccY118 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48608, rho 48609⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX118 rho, seg52In1AccY118 rho⟩ ⟨rho 48608, rho 48609⟩
        ⟨seg52In1AccX119 rho, seg52In1AccY119 rho⟩ ⟨rho 48621, rho 48622⟩ := by
  obtain ⟨r4220, r4221, r4222, r4223, r4224, r4225, r4226, r4227, r4228, r4229, r4230, r4231, r4232⟩ := seg52In1_rows118 rho h
  unfold Seg52.relationRow4220 at r4220

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4220

  unfold Seg52.relationRow4221 at r4221

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4221

  unfold Seg52.relationRow4222 at r4222

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4222

  unfold Seg52.relationRow4223 at r4223

  unfold Seg52.relationRow4224 at r4224

  unfold Seg52.relationRow4225 at r4225

  unfold Seg52.relationRow4226 at r4226

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4226

  unfold Seg52.relationRow4227 at r4227

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4227

  unfold Seg52.relationRow4228 at r4228

  unfold Seg52.relationRow4229 at r4229

  unfold Seg52.relationRow4230 at r4230

  unfold Seg52.relationRow4231 at r4231

  unfold Seg52.relationRow4232 at r4232

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX119 rho = seg52In1AccX118 rho + rho 48616 := by
    unfold seg52In1AccX119 seg52In1AccX118
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 118]

    ring

  have hnexty : seg52In1AccY119 rho = seg52In1AccY118 rho + rho 48617 := by
    unfold seg52In1AccY119 seg52In1AccY118
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 118]

    ring

  have ha0 : (rho 48608 + rho 48609) * (seg52In1AccX118 rho + seg52In1AccY118 rho) = rho 48610 := by
    unfold seg52In1AccX118 seg52In1AccY118
    linear_combination r4220
  have ha1 : rho 48609 * seg52In1AccX118 rho = rho 48611 := by
    unfold seg52In1AccX118
    linear_combination r4221
  have ha2 : rho 48608 * seg52In1AccY118 rho = rho 48612 := by
    unfold seg52In1AccY118
    linear_combination r4222
  have ha3 : 3021 * rho 48611 * rho 48612 = rho 48613 := by
    linear_combination r4223
  have ha4 : rho 48614 * (1 + rho 48613) = rho 48611 + rho 48612 := by
    linear_combination r4224
  have ha5 : rho 48615 * (1 - rho 48613) = rho 48610 - rho 48611 - rho 48612 := by
    linear_combination r4225
  have haddx :
      rho 48614 * (1 + 3021 * (rho 48609 * seg52In1AccX118 rho) * (rho 48608 * seg52In1AccY118 rho)) =
        rho 48609 * seg52In1AccX118 rho + rho 48608 * seg52In1AccY118 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48615 * (1 - 3021 * (rho 48609 * seg52In1AccX118 rho) * (rho 48608 * seg52In1AccY118 rho)) =
        (-1) * (rho 48609 * seg52In1AccX118 rho) - rho 48608 * seg52In1AccY118 rho +
          (seg52In1AccY118 rho - seg52In1AccX118 rho * (-1)) * (rho 48608 + rho 48609) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48615 * (1 - rho 48613) = rho 48610 - rho 48611 - rho 48612 := ha5
      _ = (-1) * rho 48611 - rho 48612 + (seg52In1AccY118 rho - seg52In1AccX118 rho * (-1)) *
          (rho 48608 + rho 48609) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX119 rho = seg52In1AccX118 rho - Bool.toZMod bit * (seg52In1AccX118 rho - rho 48614) := by
    have hd : rho 48616 = Bool.toZMod bit * (rho 48614 - seg52In1AccX118 rho) := by
      rw [← hbit]
      unfold seg52In1AccX118
      linear_combination -r4226
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY119 rho = seg52In1AccY118 rho - Bool.toZMod bit * (seg52In1AccY118 rho - rho 48615) := by
    have hd : rho 48617 = Bool.toZMod bit * (rho 48615 - seg52In1AccY118 rho) := by
      rw [← hbit]
      unfold seg52In1AccY118
      linear_combination -r4227
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48608 * rho 48609 = rho 48618 := by linear_combination r4228
  have hd1 : rho 48608 * rho 48608 = rho 48619 := by linear_combination r4229
  have hd2 : rho 48609 * rho 48609 = rho 48620 := by linear_combination r4230
  have hd3 : rho 48621 * (rho 48609 * rho 48609 + rho 48608 * rho 48608 * (-1)) =
      2 * (rho 48608 * rho 48609) := by
    rw [hd0, hd1, hd2]
    linear_combination r4231
  have hd4 : rho 48622 * (2 - (rho 48609 * rho 48609 + rho 48608 * rho 48608 * (-1))) =
      rho 48609 * rho 48609 - rho 48608 * rho 48608 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4232
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX118 rho, seg52In1AccY118 rho⟩ ⟨rho 48608, rho 48609⟩
    ⟨rho 48614, rho 48615⟩ ⟨seg52In1AccX119 rho, seg52In1AccY119 rho⟩ ⟨rho 48621, rho 48622⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows119 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4233 rho ∧ Seg52.relationRow4234 rho ∧ Seg52.relationRow4235 rho ∧ Seg52.relationRow4236 rho ∧ Seg52.relationRow4237 rho ∧ Seg52.relationRow4238 rho ∧ Seg52.relationRow4239 rho ∧ Seg52.relationRow4240 rho ∧ Seg52.relationRow4241 rho ∧ Seg52.relationRow4242 rho ∧ Seg52.relationRow4243 rho ∧ Seg52.relationRow4244 rho ∧ Seg52.relationRow4245 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p52, p53, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart52 at p52

  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4233, r4234, r4235, r4236, r4237, r4238, r4239⟩

  unfold Seg52.relationPart53 at p53

  rcases p53 with ⟨r4240, r4241, r4242, r4243, r4244, r4245, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4233, r4234, r4235, r4236, r4237, r4238, r4239, r4240, r4241, r4242, r4243, r4244, r4245⟩

theorem seg52In1_rung119 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47073 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX119 rho, seg52In1AccY119 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48621, rho 48622⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX119 rho, seg52In1AccY119 rho⟩ ⟨rho 48621, rho 48622⟩
        ⟨seg52In1AccX120 rho, seg52In1AccY120 rho⟩ ⟨rho 48634, rho 48635⟩ := by
  obtain ⟨r4233, r4234, r4235, r4236, r4237, r4238, r4239, r4240, r4241, r4242, r4243, r4244, r4245⟩ := seg52In1_rows119 rho h
  unfold Seg52.relationRow4233 at r4233

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4233

  unfold Seg52.relationRow4234 at r4234

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4234

  unfold Seg52.relationRow4235 at r4235

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4235

  unfold Seg52.relationRow4236 at r4236

  unfold Seg52.relationRow4237 at r4237

  unfold Seg52.relationRow4238 at r4238

  unfold Seg52.relationRow4239 at r4239

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4239

  unfold Seg52.relationRow4240 at r4240

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4240

  unfold Seg52.relationRow4241 at r4241

  unfold Seg52.relationRow4242 at r4242

  unfold Seg52.relationRow4243 at r4243

  unfold Seg52.relationRow4244 at r4244

  unfold Seg52.relationRow4245 at r4245

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX120 rho = seg52In1AccX119 rho + rho 48629 := by
    unfold seg52In1AccX120 seg52In1AccX119
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 119]

    ring

  have hnexty : seg52In1AccY120 rho = seg52In1AccY119 rho + rho 48630 := by
    unfold seg52In1AccY120 seg52In1AccY119
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 119]

    ring

  have ha0 : (rho 48621 + rho 48622) * (seg52In1AccX119 rho + seg52In1AccY119 rho) = rho 48623 := by
    unfold seg52In1AccX119 seg52In1AccY119
    linear_combination r4233
  have ha1 : rho 48622 * seg52In1AccX119 rho = rho 48624 := by
    unfold seg52In1AccX119
    linear_combination r4234
  have ha2 : rho 48621 * seg52In1AccY119 rho = rho 48625 := by
    unfold seg52In1AccY119
    linear_combination r4235
  have ha3 : 3021 * rho 48624 * rho 48625 = rho 48626 := by
    linear_combination r4236
  have ha4 : rho 48627 * (1 + rho 48626) = rho 48624 + rho 48625 := by
    linear_combination r4237
  have ha5 : rho 48628 * (1 - rho 48626) = rho 48623 - rho 48624 - rho 48625 := by
    linear_combination r4238
  have haddx :
      rho 48627 * (1 + 3021 * (rho 48622 * seg52In1AccX119 rho) * (rho 48621 * seg52In1AccY119 rho)) =
        rho 48622 * seg52In1AccX119 rho + rho 48621 * seg52In1AccY119 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48628 * (1 - 3021 * (rho 48622 * seg52In1AccX119 rho) * (rho 48621 * seg52In1AccY119 rho)) =
        (-1) * (rho 48622 * seg52In1AccX119 rho) - rho 48621 * seg52In1AccY119 rho +
          (seg52In1AccY119 rho - seg52In1AccX119 rho * (-1)) * (rho 48621 + rho 48622) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48628 * (1 - rho 48626) = rho 48623 - rho 48624 - rho 48625 := ha5
      _ = (-1) * rho 48624 - rho 48625 + (seg52In1AccY119 rho - seg52In1AccX119 rho * (-1)) *
          (rho 48621 + rho 48622) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX120 rho = seg52In1AccX119 rho - Bool.toZMod bit * (seg52In1AccX119 rho - rho 48627) := by
    have hd : rho 48629 = Bool.toZMod bit * (rho 48627 - seg52In1AccX119 rho) := by
      rw [← hbit]
      unfold seg52In1AccX119
      linear_combination -r4239
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY120 rho = seg52In1AccY119 rho - Bool.toZMod bit * (seg52In1AccY119 rho - rho 48628) := by
    have hd : rho 48630 = Bool.toZMod bit * (rho 48628 - seg52In1AccY119 rho) := by
      rw [← hbit]
      unfold seg52In1AccY119
      linear_combination -r4240
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48621 * rho 48622 = rho 48631 := by linear_combination r4241
  have hd1 : rho 48621 * rho 48621 = rho 48632 := by linear_combination r4242
  have hd2 : rho 48622 * rho 48622 = rho 48633 := by linear_combination r4243
  have hd3 : rho 48634 * (rho 48622 * rho 48622 + rho 48621 * rho 48621 * (-1)) =
      2 * (rho 48621 * rho 48622) := by
    rw [hd0, hd1, hd2]
    linear_combination r4244
  have hd4 : rho 48635 * (2 - (rho 48622 * rho 48622 + rho 48621 * rho 48621 * (-1))) =
      rho 48622 * rho 48622 - rho 48621 * rho 48621 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4245
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX119 rho, seg52In1AccY119 rho⟩ ⟨rho 48621, rho 48622⟩
    ⟨rho 48627, rho 48628⟩ ⟨seg52In1AccX120 rho, seg52In1AccY120 rho⟩ ⟨rho 48634, rho 48635⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows120 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4246 rho ∧ Seg52.relationRow4247 rho ∧ Seg52.relationRow4248 rho ∧ Seg52.relationRow4249 rho ∧ Seg52.relationRow4250 rho ∧ Seg52.relationRow4251 rho ∧ Seg52.relationRow4252 rho ∧ Seg52.relationRow4253 rho ∧ Seg52.relationRow4254 rho ∧ Seg52.relationRow4255 rho ∧ Seg52.relationRow4256 rho ∧ Seg52.relationRow4257 rho ∧ Seg52.relationRow4258 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p53, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart53 at p53

  rcases p53 with ⟨_, _, _, _, _, _, r4246, r4247, r4248, r4249, r4250, r4251, r4252, r4253, r4254, r4255, r4256, r4257, r4258, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4246, r4247, r4248, r4249, r4250, r4251, r4252, r4253, r4254, r4255, r4256, r4257, r4258⟩

theorem seg52In1_rung120 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47074 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX120 rho, seg52In1AccY120 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48634, rho 48635⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX120 rho, seg52In1AccY120 rho⟩ ⟨rho 48634, rho 48635⟩
        ⟨seg52In1AccX121 rho, seg52In1AccY121 rho⟩ ⟨rho 48647, rho 48648⟩ := by
  obtain ⟨r4246, r4247, r4248, r4249, r4250, r4251, r4252, r4253, r4254, r4255, r4256, r4257, r4258⟩ := seg52In1_rows120 rho h
  unfold Seg52.relationRow4246 at r4246

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4246

  unfold Seg52.relationRow4247 at r4247

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4247

  unfold Seg52.relationRow4248 at r4248

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4248

  unfold Seg52.relationRow4249 at r4249

  unfold Seg52.relationRow4250 at r4250

  unfold Seg52.relationRow4251 at r4251

  unfold Seg52.relationRow4252 at r4252

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4252

  unfold Seg52.relationRow4253 at r4253

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4253

  unfold Seg52.relationRow4254 at r4254

  unfold Seg52.relationRow4255 at r4255

  unfold Seg52.relationRow4256 at r4256

  unfold Seg52.relationRow4257 at r4257

  unfold Seg52.relationRow4258 at r4258

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX121 rho = seg52In1AccX120 rho + rho 48642 := by
    unfold seg52In1AccX121 seg52In1AccX120
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 120]

    ring

  have hnexty : seg52In1AccY121 rho = seg52In1AccY120 rho + rho 48643 := by
    unfold seg52In1AccY121 seg52In1AccY120
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 120]

    ring

  have ha0 : (rho 48634 + rho 48635) * (seg52In1AccX120 rho + seg52In1AccY120 rho) = rho 48636 := by
    unfold seg52In1AccX120 seg52In1AccY120
    linear_combination r4246
  have ha1 : rho 48635 * seg52In1AccX120 rho = rho 48637 := by
    unfold seg52In1AccX120
    linear_combination r4247
  have ha2 : rho 48634 * seg52In1AccY120 rho = rho 48638 := by
    unfold seg52In1AccY120
    linear_combination r4248
  have ha3 : 3021 * rho 48637 * rho 48638 = rho 48639 := by
    linear_combination r4249
  have ha4 : rho 48640 * (1 + rho 48639) = rho 48637 + rho 48638 := by
    linear_combination r4250
  have ha5 : rho 48641 * (1 - rho 48639) = rho 48636 - rho 48637 - rho 48638 := by
    linear_combination r4251
  have haddx :
      rho 48640 * (1 + 3021 * (rho 48635 * seg52In1AccX120 rho) * (rho 48634 * seg52In1AccY120 rho)) =
        rho 48635 * seg52In1AccX120 rho + rho 48634 * seg52In1AccY120 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48641 * (1 - 3021 * (rho 48635 * seg52In1AccX120 rho) * (rho 48634 * seg52In1AccY120 rho)) =
        (-1) * (rho 48635 * seg52In1AccX120 rho) - rho 48634 * seg52In1AccY120 rho +
          (seg52In1AccY120 rho - seg52In1AccX120 rho * (-1)) * (rho 48634 + rho 48635) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48641 * (1 - rho 48639) = rho 48636 - rho 48637 - rho 48638 := ha5
      _ = (-1) * rho 48637 - rho 48638 + (seg52In1AccY120 rho - seg52In1AccX120 rho * (-1)) *
          (rho 48634 + rho 48635) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX121 rho = seg52In1AccX120 rho - Bool.toZMod bit * (seg52In1AccX120 rho - rho 48640) := by
    have hd : rho 48642 = Bool.toZMod bit * (rho 48640 - seg52In1AccX120 rho) := by
      rw [← hbit]
      unfold seg52In1AccX120
      linear_combination -r4252
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY121 rho = seg52In1AccY120 rho - Bool.toZMod bit * (seg52In1AccY120 rho - rho 48641) := by
    have hd : rho 48643 = Bool.toZMod bit * (rho 48641 - seg52In1AccY120 rho) := by
      rw [← hbit]
      unfold seg52In1AccY120
      linear_combination -r4253
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48634 * rho 48635 = rho 48644 := by linear_combination r4254
  have hd1 : rho 48634 * rho 48634 = rho 48645 := by linear_combination r4255
  have hd2 : rho 48635 * rho 48635 = rho 48646 := by linear_combination r4256
  have hd3 : rho 48647 * (rho 48635 * rho 48635 + rho 48634 * rho 48634 * (-1)) =
      2 * (rho 48634 * rho 48635) := by
    rw [hd0, hd1, hd2]
    linear_combination r4257
  have hd4 : rho 48648 * (2 - (rho 48635 * rho 48635 + rho 48634 * rho 48634 * (-1))) =
      rho 48635 * rho 48635 - rho 48634 * rho 48634 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4258
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX120 rho, seg52In1AccY120 rho⟩ ⟨rho 48634, rho 48635⟩
    ⟨rho 48640, rho 48641⟩ ⟨seg52In1AccX121 rho, seg52In1AccY121 rho⟩ ⟨rho 48647, rho 48648⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_hstep_c10 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (46954 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 110 ≤ i → i < 121 →
      EdwardsBridge.onCurve (seg52In1AccState rho i) →
      EdwardsBridge.onCurve (seg52In1CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In1AccState rho i) (seg52In1CurState rho i)
        (seg52In1AccState rho (i + 1)) (seg52In1CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In1_rung110 rho h bits[110]! (hbitAt 110 (by omega)) hacc hcur
  · exact seg52In1_rung111 rho h bits[111]! (hbitAt 111 (by omega)) hacc hcur
  · exact seg52In1_rung112 rho h bits[112]! (hbitAt 112 (by omega)) hacc hcur
  · exact seg52In1_rung113 rho h bits[113]! (hbitAt 113 (by omega)) hacc hcur
  · exact seg52In1_rung114 rho h bits[114]! (hbitAt 114 (by omega)) hacc hcur
  · exact seg52In1_rung115 rho h bits[115]! (hbitAt 115 (by omega)) hacc hcur
  · exact seg52In1_rung116 rho h bits[116]! (hbitAt 116 (by omega)) hacc hcur
  · exact seg52In1_rung117 rho h bits[117]! (hbitAt 117 (by omega)) hacc hcur
  · exact seg52In1_rung118 rho h bits[118]! (hbitAt 118 (by omega)) hacc hcur
  · exact seg52In1_rung119 rho h bits[119]! (hbitAt 119 (by omega)) hacc hcur
  · exact seg52In1_rung120 rho h bits[120]! (hbitAt 120 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
