import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In1_rows33 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3115 rho ∧ Seg52.relationRow3116 rho ∧ Seg52.relationRow3117 rho ∧ Seg52.relationRow3118 rho ∧ Seg52.relationRow3119 rho ∧ Seg52.relationRow3120 rho ∧ Seg52.relationRow3121 rho ∧ Seg52.relationRow3122 rho ∧ Seg52.relationRow3123 rho ∧ Seg52.relationRow3124 rho ∧ Seg52.relationRow3125 rho ∧ Seg52.relationRow3126 rho ∧ Seg52.relationRow3127 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p38, p39,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart38 at p38

  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3115, r3116, r3117, r3118, r3119⟩

  unfold Seg52.relationPart39 at p39

  rcases p39 with ⟨r3120, r3121, r3122, r3123, r3124, r3125, r3126, r3127, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3115, r3116, r3117, r3118, r3119, r3120, r3121, r3122, r3123, r3124, r3125, r3126, r3127⟩

theorem seg52In1_rung33 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46987 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX33 rho, seg52In1AccY33 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47503, rho 47504⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX33 rho, seg52In1AccY33 rho⟩ ⟨rho 47503, rho 47504⟩
        ⟨seg52In1AccX34 rho, seg52In1AccY34 rho⟩ ⟨rho 47516, rho 47517⟩ := by
  obtain ⟨r3115, r3116, r3117, r3118, r3119, r3120, r3121, r3122, r3123, r3124, r3125, r3126, r3127⟩ := seg52In1_rows33 rho h
  unfold Seg52.relationRow3115 at r3115

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3115

  unfold Seg52.relationRow3116 at r3116

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3116

  unfold Seg52.relationRow3117 at r3117

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3117

  unfold Seg52.relationRow3118 at r3118

  unfold Seg52.relationRow3119 at r3119

  unfold Seg52.relationRow3120 at r3120

  unfold Seg52.relationRow3121 at r3121

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3121

  unfold Seg52.relationRow3122 at r3122

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3122

  unfold Seg52.relationRow3123 at r3123

  unfold Seg52.relationRow3124 at r3124

  unfold Seg52.relationRow3125 at r3125

  unfold Seg52.relationRow3126 at r3126

  unfold Seg52.relationRow3127 at r3127

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX34 rho = seg52In1AccX33 rho + rho 47511 := by
    unfold seg52In1AccX34 seg52In1AccX33
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 33]

    ring

  have hnexty : seg52In1AccY34 rho = seg52In1AccY33 rho + rho 47512 := by
    unfold seg52In1AccY34 seg52In1AccY33
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 33]

    ring

  have ha0 : (rho 47503 + rho 47504) * (seg52In1AccX33 rho + seg52In1AccY33 rho) = rho 47505 := by
    unfold seg52In1AccX33 seg52In1AccY33
    linear_combination r3115
  have ha1 : rho 47504 * seg52In1AccX33 rho = rho 47506 := by
    unfold seg52In1AccX33
    linear_combination r3116
  have ha2 : rho 47503 * seg52In1AccY33 rho = rho 47507 := by
    unfold seg52In1AccY33
    linear_combination r3117
  have ha3 : 3021 * rho 47506 * rho 47507 = rho 47508 := by
    linear_combination r3118
  have ha4 : rho 47509 * (1 + rho 47508) = rho 47506 + rho 47507 := by
    linear_combination r3119
  have ha5 : rho 47510 * (1 - rho 47508) = rho 47505 - rho 47506 - rho 47507 := by
    linear_combination r3120
  have haddx :
      rho 47509 * (1 + 3021 * (rho 47504 * seg52In1AccX33 rho) * (rho 47503 * seg52In1AccY33 rho)) =
        rho 47504 * seg52In1AccX33 rho + rho 47503 * seg52In1AccY33 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47510 * (1 - 3021 * (rho 47504 * seg52In1AccX33 rho) * (rho 47503 * seg52In1AccY33 rho)) =
        (-1) * (rho 47504 * seg52In1AccX33 rho) - rho 47503 * seg52In1AccY33 rho +
          (seg52In1AccY33 rho - seg52In1AccX33 rho * (-1)) * (rho 47503 + rho 47504) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47510 * (1 - rho 47508) = rho 47505 - rho 47506 - rho 47507 := ha5
      _ = (-1) * rho 47506 - rho 47507 + (seg52In1AccY33 rho - seg52In1AccX33 rho * (-1)) *
          (rho 47503 + rho 47504) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX34 rho = seg52In1AccX33 rho - Bool.toZMod bit * (seg52In1AccX33 rho - rho 47509) := by
    have hd : rho 47511 = Bool.toZMod bit * (rho 47509 - seg52In1AccX33 rho) := by
      rw [← hbit]
      unfold seg52In1AccX33
      linear_combination -r3121
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY34 rho = seg52In1AccY33 rho - Bool.toZMod bit * (seg52In1AccY33 rho - rho 47510) := by
    have hd : rho 47512 = Bool.toZMod bit * (rho 47510 - seg52In1AccY33 rho) := by
      rw [← hbit]
      unfold seg52In1AccY33
      linear_combination -r3122
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47503 * rho 47504 = rho 47513 := by linear_combination r3123
  have hd1 : rho 47503 * rho 47503 = rho 47514 := by linear_combination r3124
  have hd2 : rho 47504 * rho 47504 = rho 47515 := by linear_combination r3125
  have hd3 : rho 47516 * (rho 47504 * rho 47504 + rho 47503 * rho 47503 * (-1)) =
      2 * (rho 47503 * rho 47504) := by
    rw [hd0, hd1, hd2]
    linear_combination r3126
  have hd4 : rho 47517 * (2 - (rho 47504 * rho 47504 + rho 47503 * rho 47503 * (-1))) =
      rho 47504 * rho 47504 - rho 47503 * rho 47503 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3127
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX33 rho, seg52In1AccY33 rho⟩ ⟨rho 47503, rho 47504⟩
    ⟨rho 47509, rho 47510⟩ ⟨seg52In1AccX34 rho, seg52In1AccY34 rho⟩ ⟨rho 47516, rho 47517⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows34 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3128 rho ∧ Seg52.relationRow3129 rho ∧ Seg52.relationRow3130 rho ∧ Seg52.relationRow3131 rho ∧ Seg52.relationRow3132 rho ∧ Seg52.relationRow3133 rho ∧ Seg52.relationRow3134 rho ∧ Seg52.relationRow3135 rho ∧ Seg52.relationRow3136 rho ∧ Seg52.relationRow3137 rho ∧ Seg52.relationRow3138 rho ∧ Seg52.relationRow3139 rho ∧ Seg52.relationRow3140 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p39,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart39 at p39

  rcases p39 with ⟨_, _, _, _, _, _, _, _, r3128, r3129, r3130, r3131, r3132, r3133, r3134, r3135, r3136, r3137, r3138, r3139, r3140, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3128, r3129, r3130, r3131, r3132, r3133, r3134, r3135, r3136, r3137, r3138, r3139, r3140⟩

theorem seg52In1_rung34 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46988 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX34 rho, seg52In1AccY34 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47516, rho 47517⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX34 rho, seg52In1AccY34 rho⟩ ⟨rho 47516, rho 47517⟩
        ⟨seg52In1AccX35 rho, seg52In1AccY35 rho⟩ ⟨rho 47529, rho 47530⟩ := by
  obtain ⟨r3128, r3129, r3130, r3131, r3132, r3133, r3134, r3135, r3136, r3137, r3138, r3139, r3140⟩ := seg52In1_rows34 rho h
  unfold Seg52.relationRow3128 at r3128

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3128

  unfold Seg52.relationRow3129 at r3129

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3129

  unfold Seg52.relationRow3130 at r3130

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3130

  unfold Seg52.relationRow3131 at r3131

  unfold Seg52.relationRow3132 at r3132

  unfold Seg52.relationRow3133 at r3133

  unfold Seg52.relationRow3134 at r3134

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3134

  unfold Seg52.relationRow3135 at r3135

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3135

  unfold Seg52.relationRow3136 at r3136

  unfold Seg52.relationRow3137 at r3137

  unfold Seg52.relationRow3138 at r3138

  unfold Seg52.relationRow3139 at r3139

  unfold Seg52.relationRow3140 at r3140

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX35 rho = seg52In1AccX34 rho + rho 47524 := by
    unfold seg52In1AccX35 seg52In1AccX34
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 34]

    ring

  have hnexty : seg52In1AccY35 rho = seg52In1AccY34 rho + rho 47525 := by
    unfold seg52In1AccY35 seg52In1AccY34
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 34]

    ring

  have ha0 : (rho 47516 + rho 47517) * (seg52In1AccX34 rho + seg52In1AccY34 rho) = rho 47518 := by
    unfold seg52In1AccX34 seg52In1AccY34
    linear_combination r3128
  have ha1 : rho 47517 * seg52In1AccX34 rho = rho 47519 := by
    unfold seg52In1AccX34
    linear_combination r3129
  have ha2 : rho 47516 * seg52In1AccY34 rho = rho 47520 := by
    unfold seg52In1AccY34
    linear_combination r3130
  have ha3 : 3021 * rho 47519 * rho 47520 = rho 47521 := by
    linear_combination r3131
  have ha4 : rho 47522 * (1 + rho 47521) = rho 47519 + rho 47520 := by
    linear_combination r3132
  have ha5 : rho 47523 * (1 - rho 47521) = rho 47518 - rho 47519 - rho 47520 := by
    linear_combination r3133
  have haddx :
      rho 47522 * (1 + 3021 * (rho 47517 * seg52In1AccX34 rho) * (rho 47516 * seg52In1AccY34 rho)) =
        rho 47517 * seg52In1AccX34 rho + rho 47516 * seg52In1AccY34 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47523 * (1 - 3021 * (rho 47517 * seg52In1AccX34 rho) * (rho 47516 * seg52In1AccY34 rho)) =
        (-1) * (rho 47517 * seg52In1AccX34 rho) - rho 47516 * seg52In1AccY34 rho +
          (seg52In1AccY34 rho - seg52In1AccX34 rho * (-1)) * (rho 47516 + rho 47517) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47523 * (1 - rho 47521) = rho 47518 - rho 47519 - rho 47520 := ha5
      _ = (-1) * rho 47519 - rho 47520 + (seg52In1AccY34 rho - seg52In1AccX34 rho * (-1)) *
          (rho 47516 + rho 47517) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX35 rho = seg52In1AccX34 rho - Bool.toZMod bit * (seg52In1AccX34 rho - rho 47522) := by
    have hd : rho 47524 = Bool.toZMod bit * (rho 47522 - seg52In1AccX34 rho) := by
      rw [← hbit]
      unfold seg52In1AccX34
      linear_combination -r3134
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY35 rho = seg52In1AccY34 rho - Bool.toZMod bit * (seg52In1AccY34 rho - rho 47523) := by
    have hd : rho 47525 = Bool.toZMod bit * (rho 47523 - seg52In1AccY34 rho) := by
      rw [← hbit]
      unfold seg52In1AccY34
      linear_combination -r3135
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47516 * rho 47517 = rho 47526 := by linear_combination r3136
  have hd1 : rho 47516 * rho 47516 = rho 47527 := by linear_combination r3137
  have hd2 : rho 47517 * rho 47517 = rho 47528 := by linear_combination r3138
  have hd3 : rho 47529 * (rho 47517 * rho 47517 + rho 47516 * rho 47516 * (-1)) =
      2 * (rho 47516 * rho 47517) := by
    rw [hd0, hd1, hd2]
    linear_combination r3139
  have hd4 : rho 47530 * (2 - (rho 47517 * rho 47517 + rho 47516 * rho 47516 * (-1))) =
      rho 47517 * rho 47517 - rho 47516 * rho 47516 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3140
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX34 rho, seg52In1AccY34 rho⟩ ⟨rho 47516, rho 47517⟩
    ⟨rho 47522, rho 47523⟩ ⟨seg52In1AccX35 rho, seg52In1AccY35 rho⟩ ⟨rho 47529, rho 47530⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows35 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3141 rho ∧ Seg52.relationRow3142 rho ∧ Seg52.relationRow3143 rho ∧ Seg52.relationRow3144 rho ∧ Seg52.relationRow3145 rho ∧ Seg52.relationRow3146 rho ∧ Seg52.relationRow3147 rho ∧ Seg52.relationRow3148 rho ∧ Seg52.relationRow3149 rho ∧ Seg52.relationRow3150 rho ∧ Seg52.relationRow3151 rho ∧ Seg52.relationRow3152 rho ∧ Seg52.relationRow3153 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p39,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart39 at p39

  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3141, r3142, r3143, r3144, r3145, r3146, r3147, r3148, r3149, r3150, r3151, r3152, r3153, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3141, r3142, r3143, r3144, r3145, r3146, r3147, r3148, r3149, r3150, r3151, r3152, r3153⟩

theorem seg52In1_rung35 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46989 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX35 rho, seg52In1AccY35 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47529, rho 47530⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX35 rho, seg52In1AccY35 rho⟩ ⟨rho 47529, rho 47530⟩
        ⟨seg52In1AccX36 rho, seg52In1AccY36 rho⟩ ⟨rho 47542, rho 47543⟩ := by
  obtain ⟨r3141, r3142, r3143, r3144, r3145, r3146, r3147, r3148, r3149, r3150, r3151, r3152, r3153⟩ := seg52In1_rows35 rho h
  unfold Seg52.relationRow3141 at r3141

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3141

  unfold Seg52.relationRow3142 at r3142

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3142

  unfold Seg52.relationRow3143 at r3143

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3143

  unfold Seg52.relationRow3144 at r3144

  unfold Seg52.relationRow3145 at r3145

  unfold Seg52.relationRow3146 at r3146

  unfold Seg52.relationRow3147 at r3147

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3147

  unfold Seg52.relationRow3148 at r3148

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3148

  unfold Seg52.relationRow3149 at r3149

  unfold Seg52.relationRow3150 at r3150

  unfold Seg52.relationRow3151 at r3151

  unfold Seg52.relationRow3152 at r3152

  unfold Seg52.relationRow3153 at r3153

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX36 rho = seg52In1AccX35 rho + rho 47537 := by
    unfold seg52In1AccX36 seg52In1AccX35
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 35]

    ring

  have hnexty : seg52In1AccY36 rho = seg52In1AccY35 rho + rho 47538 := by
    unfold seg52In1AccY36 seg52In1AccY35
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 35]

    ring

  have ha0 : (rho 47529 + rho 47530) * (seg52In1AccX35 rho + seg52In1AccY35 rho) = rho 47531 := by
    unfold seg52In1AccX35 seg52In1AccY35
    linear_combination r3141
  have ha1 : rho 47530 * seg52In1AccX35 rho = rho 47532 := by
    unfold seg52In1AccX35
    linear_combination r3142
  have ha2 : rho 47529 * seg52In1AccY35 rho = rho 47533 := by
    unfold seg52In1AccY35
    linear_combination r3143
  have ha3 : 3021 * rho 47532 * rho 47533 = rho 47534 := by
    linear_combination r3144
  have ha4 : rho 47535 * (1 + rho 47534) = rho 47532 + rho 47533 := by
    linear_combination r3145
  have ha5 : rho 47536 * (1 - rho 47534) = rho 47531 - rho 47532 - rho 47533 := by
    linear_combination r3146
  have haddx :
      rho 47535 * (1 + 3021 * (rho 47530 * seg52In1AccX35 rho) * (rho 47529 * seg52In1AccY35 rho)) =
        rho 47530 * seg52In1AccX35 rho + rho 47529 * seg52In1AccY35 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47536 * (1 - 3021 * (rho 47530 * seg52In1AccX35 rho) * (rho 47529 * seg52In1AccY35 rho)) =
        (-1) * (rho 47530 * seg52In1AccX35 rho) - rho 47529 * seg52In1AccY35 rho +
          (seg52In1AccY35 rho - seg52In1AccX35 rho * (-1)) * (rho 47529 + rho 47530) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47536 * (1 - rho 47534) = rho 47531 - rho 47532 - rho 47533 := ha5
      _ = (-1) * rho 47532 - rho 47533 + (seg52In1AccY35 rho - seg52In1AccX35 rho * (-1)) *
          (rho 47529 + rho 47530) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX36 rho = seg52In1AccX35 rho - Bool.toZMod bit * (seg52In1AccX35 rho - rho 47535) := by
    have hd : rho 47537 = Bool.toZMod bit * (rho 47535 - seg52In1AccX35 rho) := by
      rw [← hbit]
      unfold seg52In1AccX35
      linear_combination -r3147
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY36 rho = seg52In1AccY35 rho - Bool.toZMod bit * (seg52In1AccY35 rho - rho 47536) := by
    have hd : rho 47538 = Bool.toZMod bit * (rho 47536 - seg52In1AccY35 rho) := by
      rw [← hbit]
      unfold seg52In1AccY35
      linear_combination -r3148
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47529 * rho 47530 = rho 47539 := by linear_combination r3149
  have hd1 : rho 47529 * rho 47529 = rho 47540 := by linear_combination r3150
  have hd2 : rho 47530 * rho 47530 = rho 47541 := by linear_combination r3151
  have hd3 : rho 47542 * (rho 47530 * rho 47530 + rho 47529 * rho 47529 * (-1)) =
      2 * (rho 47529 * rho 47530) := by
    rw [hd0, hd1, hd2]
    linear_combination r3152
  have hd4 : rho 47543 * (2 - (rho 47530 * rho 47530 + rho 47529 * rho 47529 * (-1))) =
      rho 47530 * rho 47530 - rho 47529 * rho 47529 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3153
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX35 rho, seg52In1AccY35 rho⟩ ⟨rho 47529, rho 47530⟩
    ⟨rho 47535, rho 47536⟩ ⟨seg52In1AccX36 rho, seg52In1AccY36 rho⟩ ⟨rho 47542, rho 47543⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows36 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3154 rho ∧ Seg52.relationRow3155 rho ∧ Seg52.relationRow3156 rho ∧ Seg52.relationRow3157 rho ∧ Seg52.relationRow3158 rho ∧ Seg52.relationRow3159 rho ∧ Seg52.relationRow3160 rho ∧ Seg52.relationRow3161 rho ∧ Seg52.relationRow3162 rho ∧ Seg52.relationRow3163 rho ∧ Seg52.relationRow3164 rho ∧ Seg52.relationRow3165 rho ∧ Seg52.relationRow3166 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p39,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart39 at p39

  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3154, r3155, r3156, r3157, r3158, r3159, r3160, r3161, r3162, r3163, r3164, r3165, r3166, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3154, r3155, r3156, r3157, r3158, r3159, r3160, r3161, r3162, r3163, r3164, r3165, r3166⟩

theorem seg52In1_rung36 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46990 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX36 rho, seg52In1AccY36 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47542, rho 47543⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX36 rho, seg52In1AccY36 rho⟩ ⟨rho 47542, rho 47543⟩
        ⟨seg52In1AccX37 rho, seg52In1AccY37 rho⟩ ⟨rho 47555, rho 47556⟩ := by
  obtain ⟨r3154, r3155, r3156, r3157, r3158, r3159, r3160, r3161, r3162, r3163, r3164, r3165, r3166⟩ := seg52In1_rows36 rho h
  unfold Seg52.relationRow3154 at r3154

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3154

  unfold Seg52.relationRow3155 at r3155

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3155

  unfold Seg52.relationRow3156 at r3156

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3156

  unfold Seg52.relationRow3157 at r3157

  unfold Seg52.relationRow3158 at r3158

  unfold Seg52.relationRow3159 at r3159

  unfold Seg52.relationRow3160 at r3160

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3160

  unfold Seg52.relationRow3161 at r3161

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3161

  unfold Seg52.relationRow3162 at r3162

  unfold Seg52.relationRow3163 at r3163

  unfold Seg52.relationRow3164 at r3164

  unfold Seg52.relationRow3165 at r3165

  unfold Seg52.relationRow3166 at r3166

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX37 rho = seg52In1AccX36 rho + rho 47550 := by
    unfold seg52In1AccX37 seg52In1AccX36
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 36]

    ring

  have hnexty : seg52In1AccY37 rho = seg52In1AccY36 rho + rho 47551 := by
    unfold seg52In1AccY37 seg52In1AccY36
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 36]

    ring

  have ha0 : (rho 47542 + rho 47543) * (seg52In1AccX36 rho + seg52In1AccY36 rho) = rho 47544 := by
    unfold seg52In1AccX36 seg52In1AccY36
    linear_combination r3154
  have ha1 : rho 47543 * seg52In1AccX36 rho = rho 47545 := by
    unfold seg52In1AccX36
    linear_combination r3155
  have ha2 : rho 47542 * seg52In1AccY36 rho = rho 47546 := by
    unfold seg52In1AccY36
    linear_combination r3156
  have ha3 : 3021 * rho 47545 * rho 47546 = rho 47547 := by
    linear_combination r3157
  have ha4 : rho 47548 * (1 + rho 47547) = rho 47545 + rho 47546 := by
    linear_combination r3158
  have ha5 : rho 47549 * (1 - rho 47547) = rho 47544 - rho 47545 - rho 47546 := by
    linear_combination r3159
  have haddx :
      rho 47548 * (1 + 3021 * (rho 47543 * seg52In1AccX36 rho) * (rho 47542 * seg52In1AccY36 rho)) =
        rho 47543 * seg52In1AccX36 rho + rho 47542 * seg52In1AccY36 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47549 * (1 - 3021 * (rho 47543 * seg52In1AccX36 rho) * (rho 47542 * seg52In1AccY36 rho)) =
        (-1) * (rho 47543 * seg52In1AccX36 rho) - rho 47542 * seg52In1AccY36 rho +
          (seg52In1AccY36 rho - seg52In1AccX36 rho * (-1)) * (rho 47542 + rho 47543) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47549 * (1 - rho 47547) = rho 47544 - rho 47545 - rho 47546 := ha5
      _ = (-1) * rho 47545 - rho 47546 + (seg52In1AccY36 rho - seg52In1AccX36 rho * (-1)) *
          (rho 47542 + rho 47543) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX37 rho = seg52In1AccX36 rho - Bool.toZMod bit * (seg52In1AccX36 rho - rho 47548) := by
    have hd : rho 47550 = Bool.toZMod bit * (rho 47548 - seg52In1AccX36 rho) := by
      rw [← hbit]
      unfold seg52In1AccX36
      linear_combination -r3160
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY37 rho = seg52In1AccY36 rho - Bool.toZMod bit * (seg52In1AccY36 rho - rho 47549) := by
    have hd : rho 47551 = Bool.toZMod bit * (rho 47549 - seg52In1AccY36 rho) := by
      rw [← hbit]
      unfold seg52In1AccY36
      linear_combination -r3161
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47542 * rho 47543 = rho 47552 := by linear_combination r3162
  have hd1 : rho 47542 * rho 47542 = rho 47553 := by linear_combination r3163
  have hd2 : rho 47543 * rho 47543 = rho 47554 := by linear_combination r3164
  have hd3 : rho 47555 * (rho 47543 * rho 47543 + rho 47542 * rho 47542 * (-1)) =
      2 * (rho 47542 * rho 47543) := by
    rw [hd0, hd1, hd2]
    linear_combination r3165
  have hd4 : rho 47556 * (2 - (rho 47543 * rho 47543 + rho 47542 * rho 47542 * (-1))) =
      rho 47543 * rho 47543 - rho 47542 * rho 47542 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3166
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX36 rho, seg52In1AccY36 rho⟩ ⟨rho 47542, rho 47543⟩
    ⟨rho 47548, rho 47549⟩ ⟨seg52In1AccX37 rho, seg52In1AccY37 rho⟩ ⟨rho 47555, rho 47556⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows37 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3167 rho ∧ Seg52.relationRow3168 rho ∧ Seg52.relationRow3169 rho ∧ Seg52.relationRow3170 rho ∧ Seg52.relationRow3171 rho ∧ Seg52.relationRow3172 rho ∧ Seg52.relationRow3173 rho ∧ Seg52.relationRow3174 rho ∧ Seg52.relationRow3175 rho ∧ Seg52.relationRow3176 rho ∧ Seg52.relationRow3177 rho ∧ Seg52.relationRow3178 rho ∧ Seg52.relationRow3179 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p39,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart39 at p39

  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3167, r3168, r3169, r3170, r3171, r3172, r3173, r3174, r3175, r3176, r3177, r3178, r3179, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3167, r3168, r3169, r3170, r3171, r3172, r3173, r3174, r3175, r3176, r3177, r3178, r3179⟩

theorem seg52In1_rung37 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46991 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX37 rho, seg52In1AccY37 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47555, rho 47556⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX37 rho, seg52In1AccY37 rho⟩ ⟨rho 47555, rho 47556⟩
        ⟨seg52In1AccX38 rho, seg52In1AccY38 rho⟩ ⟨rho 47568, rho 47569⟩ := by
  obtain ⟨r3167, r3168, r3169, r3170, r3171, r3172, r3173, r3174, r3175, r3176, r3177, r3178, r3179⟩ := seg52In1_rows37 rho h
  unfold Seg52.relationRow3167 at r3167

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3167

  unfold Seg52.relationRow3168 at r3168

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3168

  unfold Seg52.relationRow3169 at r3169

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3169

  unfold Seg52.relationRow3170 at r3170

  unfold Seg52.relationRow3171 at r3171

  unfold Seg52.relationRow3172 at r3172

  unfold Seg52.relationRow3173 at r3173

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3173

  unfold Seg52.relationRow3174 at r3174

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3174

  unfold Seg52.relationRow3175 at r3175

  unfold Seg52.relationRow3176 at r3176

  unfold Seg52.relationRow3177 at r3177

  unfold Seg52.relationRow3178 at r3178

  unfold Seg52.relationRow3179 at r3179

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX38 rho = seg52In1AccX37 rho + rho 47563 := by
    unfold seg52In1AccX38 seg52In1AccX37
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 37]

    ring

  have hnexty : seg52In1AccY38 rho = seg52In1AccY37 rho + rho 47564 := by
    unfold seg52In1AccY38 seg52In1AccY37
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 37]

    ring

  have ha0 : (rho 47555 + rho 47556) * (seg52In1AccX37 rho + seg52In1AccY37 rho) = rho 47557 := by
    unfold seg52In1AccX37 seg52In1AccY37
    linear_combination r3167
  have ha1 : rho 47556 * seg52In1AccX37 rho = rho 47558 := by
    unfold seg52In1AccX37
    linear_combination r3168
  have ha2 : rho 47555 * seg52In1AccY37 rho = rho 47559 := by
    unfold seg52In1AccY37
    linear_combination r3169
  have ha3 : 3021 * rho 47558 * rho 47559 = rho 47560 := by
    linear_combination r3170
  have ha4 : rho 47561 * (1 + rho 47560) = rho 47558 + rho 47559 := by
    linear_combination r3171
  have ha5 : rho 47562 * (1 - rho 47560) = rho 47557 - rho 47558 - rho 47559 := by
    linear_combination r3172
  have haddx :
      rho 47561 * (1 + 3021 * (rho 47556 * seg52In1AccX37 rho) * (rho 47555 * seg52In1AccY37 rho)) =
        rho 47556 * seg52In1AccX37 rho + rho 47555 * seg52In1AccY37 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47562 * (1 - 3021 * (rho 47556 * seg52In1AccX37 rho) * (rho 47555 * seg52In1AccY37 rho)) =
        (-1) * (rho 47556 * seg52In1AccX37 rho) - rho 47555 * seg52In1AccY37 rho +
          (seg52In1AccY37 rho - seg52In1AccX37 rho * (-1)) * (rho 47555 + rho 47556) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47562 * (1 - rho 47560) = rho 47557 - rho 47558 - rho 47559 := ha5
      _ = (-1) * rho 47558 - rho 47559 + (seg52In1AccY37 rho - seg52In1AccX37 rho * (-1)) *
          (rho 47555 + rho 47556) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX38 rho = seg52In1AccX37 rho - Bool.toZMod bit * (seg52In1AccX37 rho - rho 47561) := by
    have hd : rho 47563 = Bool.toZMod bit * (rho 47561 - seg52In1AccX37 rho) := by
      rw [← hbit]
      unfold seg52In1AccX37
      linear_combination -r3173
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY38 rho = seg52In1AccY37 rho - Bool.toZMod bit * (seg52In1AccY37 rho - rho 47562) := by
    have hd : rho 47564 = Bool.toZMod bit * (rho 47562 - seg52In1AccY37 rho) := by
      rw [← hbit]
      unfold seg52In1AccY37
      linear_combination -r3174
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47555 * rho 47556 = rho 47565 := by linear_combination r3175
  have hd1 : rho 47555 * rho 47555 = rho 47566 := by linear_combination r3176
  have hd2 : rho 47556 * rho 47556 = rho 47567 := by linear_combination r3177
  have hd3 : rho 47568 * (rho 47556 * rho 47556 + rho 47555 * rho 47555 * (-1)) =
      2 * (rho 47555 * rho 47556) := by
    rw [hd0, hd1, hd2]
    linear_combination r3178
  have hd4 : rho 47569 * (2 - (rho 47556 * rho 47556 + rho 47555 * rho 47555 * (-1))) =
      rho 47556 * rho 47556 - rho 47555 * rho 47555 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3179
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX37 rho, seg52In1AccY37 rho⟩ ⟨rho 47555, rho 47556⟩
    ⟨rho 47561, rho 47562⟩ ⟨seg52In1AccX38 rho, seg52In1AccY38 rho⟩ ⟨rho 47568, rho 47569⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows38 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3180 rho ∧ Seg52.relationRow3181 rho ∧ Seg52.relationRow3182 rho ∧ Seg52.relationRow3183 rho ∧ Seg52.relationRow3184 rho ∧ Seg52.relationRow3185 rho ∧ Seg52.relationRow3186 rho ∧ Seg52.relationRow3187 rho ∧ Seg52.relationRow3188 rho ∧ Seg52.relationRow3189 rho ∧ Seg52.relationRow3190 rho ∧ Seg52.relationRow3191 rho ∧ Seg52.relationRow3192 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p39,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart39 at p39

  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3180, r3181, r3182, r3183, r3184, r3185, r3186, r3187, r3188, r3189, r3190, r3191, r3192, _, _, _, _, _, _, _⟩

  exact ⟨r3180, r3181, r3182, r3183, r3184, r3185, r3186, r3187, r3188, r3189, r3190, r3191, r3192⟩

theorem seg52In1_rung38 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46992 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX38 rho, seg52In1AccY38 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47568, rho 47569⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX38 rho, seg52In1AccY38 rho⟩ ⟨rho 47568, rho 47569⟩
        ⟨seg52In1AccX39 rho, seg52In1AccY39 rho⟩ ⟨rho 47581, rho 47582⟩ := by
  obtain ⟨r3180, r3181, r3182, r3183, r3184, r3185, r3186, r3187, r3188, r3189, r3190, r3191, r3192⟩ := seg52In1_rows38 rho h
  unfold Seg52.relationRow3180 at r3180

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3180

  unfold Seg52.relationRow3181 at r3181

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3181

  unfold Seg52.relationRow3182 at r3182

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3182

  unfold Seg52.relationRow3183 at r3183

  unfold Seg52.relationRow3184 at r3184

  unfold Seg52.relationRow3185 at r3185

  unfold Seg52.relationRow3186 at r3186

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3186

  unfold Seg52.relationRow3187 at r3187

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3187

  unfold Seg52.relationRow3188 at r3188

  unfold Seg52.relationRow3189 at r3189

  unfold Seg52.relationRow3190 at r3190

  unfold Seg52.relationRow3191 at r3191

  unfold Seg52.relationRow3192 at r3192

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX39 rho = seg52In1AccX38 rho + rho 47576 := by
    unfold seg52In1AccX39 seg52In1AccX38
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 38]

    ring

  have hnexty : seg52In1AccY39 rho = seg52In1AccY38 rho + rho 47577 := by
    unfold seg52In1AccY39 seg52In1AccY38
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 38]

    ring

  have ha0 : (rho 47568 + rho 47569) * (seg52In1AccX38 rho + seg52In1AccY38 rho) = rho 47570 := by
    unfold seg52In1AccX38 seg52In1AccY38
    linear_combination r3180
  have ha1 : rho 47569 * seg52In1AccX38 rho = rho 47571 := by
    unfold seg52In1AccX38
    linear_combination r3181
  have ha2 : rho 47568 * seg52In1AccY38 rho = rho 47572 := by
    unfold seg52In1AccY38
    linear_combination r3182
  have ha3 : 3021 * rho 47571 * rho 47572 = rho 47573 := by
    linear_combination r3183
  have ha4 : rho 47574 * (1 + rho 47573) = rho 47571 + rho 47572 := by
    linear_combination r3184
  have ha5 : rho 47575 * (1 - rho 47573) = rho 47570 - rho 47571 - rho 47572 := by
    linear_combination r3185
  have haddx :
      rho 47574 * (1 + 3021 * (rho 47569 * seg52In1AccX38 rho) * (rho 47568 * seg52In1AccY38 rho)) =
        rho 47569 * seg52In1AccX38 rho + rho 47568 * seg52In1AccY38 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47575 * (1 - 3021 * (rho 47569 * seg52In1AccX38 rho) * (rho 47568 * seg52In1AccY38 rho)) =
        (-1) * (rho 47569 * seg52In1AccX38 rho) - rho 47568 * seg52In1AccY38 rho +
          (seg52In1AccY38 rho - seg52In1AccX38 rho * (-1)) * (rho 47568 + rho 47569) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47575 * (1 - rho 47573) = rho 47570 - rho 47571 - rho 47572 := ha5
      _ = (-1) * rho 47571 - rho 47572 + (seg52In1AccY38 rho - seg52In1AccX38 rho * (-1)) *
          (rho 47568 + rho 47569) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX39 rho = seg52In1AccX38 rho - Bool.toZMod bit * (seg52In1AccX38 rho - rho 47574) := by
    have hd : rho 47576 = Bool.toZMod bit * (rho 47574 - seg52In1AccX38 rho) := by
      rw [← hbit]
      unfold seg52In1AccX38
      linear_combination -r3186
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY39 rho = seg52In1AccY38 rho - Bool.toZMod bit * (seg52In1AccY38 rho - rho 47575) := by
    have hd : rho 47577 = Bool.toZMod bit * (rho 47575 - seg52In1AccY38 rho) := by
      rw [← hbit]
      unfold seg52In1AccY38
      linear_combination -r3187
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47568 * rho 47569 = rho 47578 := by linear_combination r3188
  have hd1 : rho 47568 * rho 47568 = rho 47579 := by linear_combination r3189
  have hd2 : rho 47569 * rho 47569 = rho 47580 := by linear_combination r3190
  have hd3 : rho 47581 * (rho 47569 * rho 47569 + rho 47568 * rho 47568 * (-1)) =
      2 * (rho 47568 * rho 47569) := by
    rw [hd0, hd1, hd2]
    linear_combination r3191
  have hd4 : rho 47582 * (2 - (rho 47569 * rho 47569 + rho 47568 * rho 47568 * (-1))) =
      rho 47569 * rho 47569 - rho 47568 * rho 47568 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3192
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX38 rho, seg52In1AccY38 rho⟩ ⟨rho 47568, rho 47569⟩
    ⟨rho 47574, rho 47575⟩ ⟨seg52In1AccX39 rho, seg52In1AccY39 rho⟩ ⟨rho 47581, rho 47582⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows39 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3193 rho ∧ Seg52.relationRow3194 rho ∧ Seg52.relationRow3195 rho ∧ Seg52.relationRow3196 rho ∧ Seg52.relationRow3197 rho ∧ Seg52.relationRow3198 rho ∧ Seg52.relationRow3199 rho ∧ Seg52.relationRow3200 rho ∧ Seg52.relationRow3201 rho ∧ Seg52.relationRow3202 rho ∧ Seg52.relationRow3203 rho ∧ Seg52.relationRow3204 rho ∧ Seg52.relationRow3205 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p39,

    p40, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart39 at p39

  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3193, r3194, r3195, r3196, r3197, r3198, r3199⟩

  unfold Seg52.relationPart40 at p40

  rcases p40 with ⟨r3200, r3201, r3202, r3203, r3204, r3205, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3193, r3194, r3195, r3196, r3197, r3198, r3199, r3200, r3201, r3202, r3203, r3204, r3205⟩

theorem seg52In1_rung39 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46993 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX39 rho, seg52In1AccY39 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47581, rho 47582⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX39 rho, seg52In1AccY39 rho⟩ ⟨rho 47581, rho 47582⟩
        ⟨seg52In1AccX40 rho, seg52In1AccY40 rho⟩ ⟨rho 47594, rho 47595⟩ := by
  obtain ⟨r3193, r3194, r3195, r3196, r3197, r3198, r3199, r3200, r3201, r3202, r3203, r3204, r3205⟩ := seg52In1_rows39 rho h
  unfold Seg52.relationRow3193 at r3193

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3193

  unfold Seg52.relationRow3194 at r3194

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3194

  unfold Seg52.relationRow3195 at r3195

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3195

  unfold Seg52.relationRow3196 at r3196

  unfold Seg52.relationRow3197 at r3197

  unfold Seg52.relationRow3198 at r3198

  unfold Seg52.relationRow3199 at r3199

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3199

  unfold Seg52.relationRow3200 at r3200

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3200

  unfold Seg52.relationRow3201 at r3201

  unfold Seg52.relationRow3202 at r3202

  unfold Seg52.relationRow3203 at r3203

  unfold Seg52.relationRow3204 at r3204

  unfold Seg52.relationRow3205 at r3205

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX40 rho = seg52In1AccX39 rho + rho 47589 := by
    unfold seg52In1AccX40 seg52In1AccX39
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 39]

    ring

  have hnexty : seg52In1AccY40 rho = seg52In1AccY39 rho + rho 47590 := by
    unfold seg52In1AccY40 seg52In1AccY39
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 39]

    ring

  have ha0 : (rho 47581 + rho 47582) * (seg52In1AccX39 rho + seg52In1AccY39 rho) = rho 47583 := by
    unfold seg52In1AccX39 seg52In1AccY39
    linear_combination r3193
  have ha1 : rho 47582 * seg52In1AccX39 rho = rho 47584 := by
    unfold seg52In1AccX39
    linear_combination r3194
  have ha2 : rho 47581 * seg52In1AccY39 rho = rho 47585 := by
    unfold seg52In1AccY39
    linear_combination r3195
  have ha3 : 3021 * rho 47584 * rho 47585 = rho 47586 := by
    linear_combination r3196
  have ha4 : rho 47587 * (1 + rho 47586) = rho 47584 + rho 47585 := by
    linear_combination r3197
  have ha5 : rho 47588 * (1 - rho 47586) = rho 47583 - rho 47584 - rho 47585 := by
    linear_combination r3198
  have haddx :
      rho 47587 * (1 + 3021 * (rho 47582 * seg52In1AccX39 rho) * (rho 47581 * seg52In1AccY39 rho)) =
        rho 47582 * seg52In1AccX39 rho + rho 47581 * seg52In1AccY39 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47588 * (1 - 3021 * (rho 47582 * seg52In1AccX39 rho) * (rho 47581 * seg52In1AccY39 rho)) =
        (-1) * (rho 47582 * seg52In1AccX39 rho) - rho 47581 * seg52In1AccY39 rho +
          (seg52In1AccY39 rho - seg52In1AccX39 rho * (-1)) * (rho 47581 + rho 47582) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47588 * (1 - rho 47586) = rho 47583 - rho 47584 - rho 47585 := ha5
      _ = (-1) * rho 47584 - rho 47585 + (seg52In1AccY39 rho - seg52In1AccX39 rho * (-1)) *
          (rho 47581 + rho 47582) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX40 rho = seg52In1AccX39 rho - Bool.toZMod bit * (seg52In1AccX39 rho - rho 47587) := by
    have hd : rho 47589 = Bool.toZMod bit * (rho 47587 - seg52In1AccX39 rho) := by
      rw [← hbit]
      unfold seg52In1AccX39
      linear_combination -r3199
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY40 rho = seg52In1AccY39 rho - Bool.toZMod bit * (seg52In1AccY39 rho - rho 47588) := by
    have hd : rho 47590 = Bool.toZMod bit * (rho 47588 - seg52In1AccY39 rho) := by
      rw [← hbit]
      unfold seg52In1AccY39
      linear_combination -r3200
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47581 * rho 47582 = rho 47591 := by linear_combination r3201
  have hd1 : rho 47581 * rho 47581 = rho 47592 := by linear_combination r3202
  have hd2 : rho 47582 * rho 47582 = rho 47593 := by linear_combination r3203
  have hd3 : rho 47594 * (rho 47582 * rho 47582 + rho 47581 * rho 47581 * (-1)) =
      2 * (rho 47581 * rho 47582) := by
    rw [hd0, hd1, hd2]
    linear_combination r3204
  have hd4 : rho 47595 * (2 - (rho 47582 * rho 47582 + rho 47581 * rho 47581 * (-1))) =
      rho 47582 * rho 47582 - rho 47581 * rho 47581 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3205
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX39 rho, seg52In1AccY39 rho⟩ ⟨rho 47581, rho 47582⟩
    ⟨rho 47587, rho 47588⟩ ⟨seg52In1AccX40 rho, seg52In1AccY40 rho⟩ ⟨rho 47594, rho 47595⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows40 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3206 rho ∧ Seg52.relationRow3207 rho ∧ Seg52.relationRow3208 rho ∧ Seg52.relationRow3209 rho ∧ Seg52.relationRow3210 rho ∧ Seg52.relationRow3211 rho ∧ Seg52.relationRow3212 rho ∧ Seg52.relationRow3213 rho ∧ Seg52.relationRow3214 rho ∧ Seg52.relationRow3215 rho ∧ Seg52.relationRow3216 rho ∧ Seg52.relationRow3217 rho ∧ Seg52.relationRow3218 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p40, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart40 at p40

  rcases p40 with ⟨_, _, _, _, _, _, r3206, r3207, r3208, r3209, r3210, r3211, r3212, r3213, r3214, r3215, r3216, r3217, r3218, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3206, r3207, r3208, r3209, r3210, r3211, r3212, r3213, r3214, r3215, r3216, r3217, r3218⟩

theorem seg52In1_rung40 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46994 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX40 rho, seg52In1AccY40 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47594, rho 47595⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX40 rho, seg52In1AccY40 rho⟩ ⟨rho 47594, rho 47595⟩
        ⟨seg52In1AccX41 rho, seg52In1AccY41 rho⟩ ⟨rho 47607, rho 47608⟩ := by
  obtain ⟨r3206, r3207, r3208, r3209, r3210, r3211, r3212, r3213, r3214, r3215, r3216, r3217, r3218⟩ := seg52In1_rows40 rho h
  unfold Seg52.relationRow3206 at r3206

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3206

  unfold Seg52.relationRow3207 at r3207

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3207

  unfold Seg52.relationRow3208 at r3208

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3208

  unfold Seg52.relationRow3209 at r3209

  unfold Seg52.relationRow3210 at r3210

  unfold Seg52.relationRow3211 at r3211

  unfold Seg52.relationRow3212 at r3212

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3212

  unfold Seg52.relationRow3213 at r3213

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3213

  unfold Seg52.relationRow3214 at r3214

  unfold Seg52.relationRow3215 at r3215

  unfold Seg52.relationRow3216 at r3216

  unfold Seg52.relationRow3217 at r3217

  unfold Seg52.relationRow3218 at r3218

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX41 rho = seg52In1AccX40 rho + rho 47602 := by
    unfold seg52In1AccX41 seg52In1AccX40
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 40]

    ring

  have hnexty : seg52In1AccY41 rho = seg52In1AccY40 rho + rho 47603 := by
    unfold seg52In1AccY41 seg52In1AccY40
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 40]

    ring

  have ha0 : (rho 47594 + rho 47595) * (seg52In1AccX40 rho + seg52In1AccY40 rho) = rho 47596 := by
    unfold seg52In1AccX40 seg52In1AccY40
    linear_combination r3206
  have ha1 : rho 47595 * seg52In1AccX40 rho = rho 47597 := by
    unfold seg52In1AccX40
    linear_combination r3207
  have ha2 : rho 47594 * seg52In1AccY40 rho = rho 47598 := by
    unfold seg52In1AccY40
    linear_combination r3208
  have ha3 : 3021 * rho 47597 * rho 47598 = rho 47599 := by
    linear_combination r3209
  have ha4 : rho 47600 * (1 + rho 47599) = rho 47597 + rho 47598 := by
    linear_combination r3210
  have ha5 : rho 47601 * (1 - rho 47599) = rho 47596 - rho 47597 - rho 47598 := by
    linear_combination r3211
  have haddx :
      rho 47600 * (1 + 3021 * (rho 47595 * seg52In1AccX40 rho) * (rho 47594 * seg52In1AccY40 rho)) =
        rho 47595 * seg52In1AccX40 rho + rho 47594 * seg52In1AccY40 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47601 * (1 - 3021 * (rho 47595 * seg52In1AccX40 rho) * (rho 47594 * seg52In1AccY40 rho)) =
        (-1) * (rho 47595 * seg52In1AccX40 rho) - rho 47594 * seg52In1AccY40 rho +
          (seg52In1AccY40 rho - seg52In1AccX40 rho * (-1)) * (rho 47594 + rho 47595) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47601 * (1 - rho 47599) = rho 47596 - rho 47597 - rho 47598 := ha5
      _ = (-1) * rho 47597 - rho 47598 + (seg52In1AccY40 rho - seg52In1AccX40 rho * (-1)) *
          (rho 47594 + rho 47595) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX41 rho = seg52In1AccX40 rho - Bool.toZMod bit * (seg52In1AccX40 rho - rho 47600) := by
    have hd : rho 47602 = Bool.toZMod bit * (rho 47600 - seg52In1AccX40 rho) := by
      rw [← hbit]
      unfold seg52In1AccX40
      linear_combination -r3212
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY41 rho = seg52In1AccY40 rho - Bool.toZMod bit * (seg52In1AccY40 rho - rho 47601) := by
    have hd : rho 47603 = Bool.toZMod bit * (rho 47601 - seg52In1AccY40 rho) := by
      rw [← hbit]
      unfold seg52In1AccY40
      linear_combination -r3213
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47594 * rho 47595 = rho 47604 := by linear_combination r3214
  have hd1 : rho 47594 * rho 47594 = rho 47605 := by linear_combination r3215
  have hd2 : rho 47595 * rho 47595 = rho 47606 := by linear_combination r3216
  have hd3 : rho 47607 * (rho 47595 * rho 47595 + rho 47594 * rho 47594 * (-1)) =
      2 * (rho 47594 * rho 47595) := by
    rw [hd0, hd1, hd2]
    linear_combination r3217
  have hd4 : rho 47608 * (2 - (rho 47595 * rho 47595 + rho 47594 * rho 47594 * (-1))) =
      rho 47595 * rho 47595 - rho 47594 * rho 47594 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3218
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX40 rho, seg52In1AccY40 rho⟩ ⟨rho 47594, rho 47595⟩
    ⟨rho 47600, rho 47601⟩ ⟨seg52In1AccX41 rho, seg52In1AccY41 rho⟩ ⟨rho 47607, rho 47608⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows41 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3219 rho ∧ Seg52.relationRow3220 rho ∧ Seg52.relationRow3221 rho ∧ Seg52.relationRow3222 rho ∧ Seg52.relationRow3223 rho ∧ Seg52.relationRow3224 rho ∧ Seg52.relationRow3225 rho ∧ Seg52.relationRow3226 rho ∧ Seg52.relationRow3227 rho ∧ Seg52.relationRow3228 rho ∧ Seg52.relationRow3229 rho ∧ Seg52.relationRow3230 rho ∧ Seg52.relationRow3231 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p40, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart40 at p40

  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3219, r3220, r3221, r3222, r3223, r3224, r3225, r3226, r3227, r3228, r3229, r3230, r3231, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3219, r3220, r3221, r3222, r3223, r3224, r3225, r3226, r3227, r3228, r3229, r3230, r3231⟩

theorem seg52In1_rung41 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46995 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX41 rho, seg52In1AccY41 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47607, rho 47608⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX41 rho, seg52In1AccY41 rho⟩ ⟨rho 47607, rho 47608⟩
        ⟨seg52In1AccX42 rho, seg52In1AccY42 rho⟩ ⟨rho 47620, rho 47621⟩ := by
  obtain ⟨r3219, r3220, r3221, r3222, r3223, r3224, r3225, r3226, r3227, r3228, r3229, r3230, r3231⟩ := seg52In1_rows41 rho h
  unfold Seg52.relationRow3219 at r3219

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3219

  unfold Seg52.relationRow3220 at r3220

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3220

  unfold Seg52.relationRow3221 at r3221

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3221

  unfold Seg52.relationRow3222 at r3222

  unfold Seg52.relationRow3223 at r3223

  unfold Seg52.relationRow3224 at r3224

  unfold Seg52.relationRow3225 at r3225

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3225

  unfold Seg52.relationRow3226 at r3226

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3226

  unfold Seg52.relationRow3227 at r3227

  unfold Seg52.relationRow3228 at r3228

  unfold Seg52.relationRow3229 at r3229

  unfold Seg52.relationRow3230 at r3230

  unfold Seg52.relationRow3231 at r3231

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX42 rho = seg52In1AccX41 rho + rho 47615 := by
    unfold seg52In1AccX42 seg52In1AccX41
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 41]

    ring

  have hnexty : seg52In1AccY42 rho = seg52In1AccY41 rho + rho 47616 := by
    unfold seg52In1AccY42 seg52In1AccY41
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 41]

    ring

  have ha0 : (rho 47607 + rho 47608) * (seg52In1AccX41 rho + seg52In1AccY41 rho) = rho 47609 := by
    unfold seg52In1AccX41 seg52In1AccY41
    linear_combination r3219
  have ha1 : rho 47608 * seg52In1AccX41 rho = rho 47610 := by
    unfold seg52In1AccX41
    linear_combination r3220
  have ha2 : rho 47607 * seg52In1AccY41 rho = rho 47611 := by
    unfold seg52In1AccY41
    linear_combination r3221
  have ha3 : 3021 * rho 47610 * rho 47611 = rho 47612 := by
    linear_combination r3222
  have ha4 : rho 47613 * (1 + rho 47612) = rho 47610 + rho 47611 := by
    linear_combination r3223
  have ha5 : rho 47614 * (1 - rho 47612) = rho 47609 - rho 47610 - rho 47611 := by
    linear_combination r3224
  have haddx :
      rho 47613 * (1 + 3021 * (rho 47608 * seg52In1AccX41 rho) * (rho 47607 * seg52In1AccY41 rho)) =
        rho 47608 * seg52In1AccX41 rho + rho 47607 * seg52In1AccY41 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47614 * (1 - 3021 * (rho 47608 * seg52In1AccX41 rho) * (rho 47607 * seg52In1AccY41 rho)) =
        (-1) * (rho 47608 * seg52In1AccX41 rho) - rho 47607 * seg52In1AccY41 rho +
          (seg52In1AccY41 rho - seg52In1AccX41 rho * (-1)) * (rho 47607 + rho 47608) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47614 * (1 - rho 47612) = rho 47609 - rho 47610 - rho 47611 := ha5
      _ = (-1) * rho 47610 - rho 47611 + (seg52In1AccY41 rho - seg52In1AccX41 rho * (-1)) *
          (rho 47607 + rho 47608) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX42 rho = seg52In1AccX41 rho - Bool.toZMod bit * (seg52In1AccX41 rho - rho 47613) := by
    have hd : rho 47615 = Bool.toZMod bit * (rho 47613 - seg52In1AccX41 rho) := by
      rw [← hbit]
      unfold seg52In1AccX41
      linear_combination -r3225
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY42 rho = seg52In1AccY41 rho - Bool.toZMod bit * (seg52In1AccY41 rho - rho 47614) := by
    have hd : rho 47616 = Bool.toZMod bit * (rho 47614 - seg52In1AccY41 rho) := by
      rw [← hbit]
      unfold seg52In1AccY41
      linear_combination -r3226
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47607 * rho 47608 = rho 47617 := by linear_combination r3227
  have hd1 : rho 47607 * rho 47607 = rho 47618 := by linear_combination r3228
  have hd2 : rho 47608 * rho 47608 = rho 47619 := by linear_combination r3229
  have hd3 : rho 47620 * (rho 47608 * rho 47608 + rho 47607 * rho 47607 * (-1)) =
      2 * (rho 47607 * rho 47608) := by
    rw [hd0, hd1, hd2]
    linear_combination r3230
  have hd4 : rho 47621 * (2 - (rho 47608 * rho 47608 + rho 47607 * rho 47607 * (-1))) =
      rho 47608 * rho 47608 - rho 47607 * rho 47607 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3231
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX41 rho, seg52In1AccY41 rho⟩ ⟨rho 47607, rho 47608⟩
    ⟨rho 47613, rho 47614⟩ ⟨seg52In1AccX42 rho, seg52In1AccY42 rho⟩ ⟨rho 47620, rho 47621⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows42 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3232 rho ∧ Seg52.relationRow3233 rho ∧ Seg52.relationRow3234 rho ∧ Seg52.relationRow3235 rho ∧ Seg52.relationRow3236 rho ∧ Seg52.relationRow3237 rho ∧ Seg52.relationRow3238 rho ∧ Seg52.relationRow3239 rho ∧ Seg52.relationRow3240 rho ∧ Seg52.relationRow3241 rho ∧ Seg52.relationRow3242 rho ∧ Seg52.relationRow3243 rho ∧ Seg52.relationRow3244 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p40, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart40 at p40

  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3232, r3233, r3234, r3235, r3236, r3237, r3238, r3239, r3240, r3241, r3242, r3243, r3244, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3232, r3233, r3234, r3235, r3236, r3237, r3238, r3239, r3240, r3241, r3242, r3243, r3244⟩

theorem seg52In1_rung42 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46996 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX42 rho, seg52In1AccY42 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47620, rho 47621⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX42 rho, seg52In1AccY42 rho⟩ ⟨rho 47620, rho 47621⟩
        ⟨seg52In1AccX43 rho, seg52In1AccY43 rho⟩ ⟨rho 47633, rho 47634⟩ := by
  obtain ⟨r3232, r3233, r3234, r3235, r3236, r3237, r3238, r3239, r3240, r3241, r3242, r3243, r3244⟩ := seg52In1_rows42 rho h
  unfold Seg52.relationRow3232 at r3232

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3232

  unfold Seg52.relationRow3233 at r3233

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3233

  unfold Seg52.relationRow3234 at r3234

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3234

  unfold Seg52.relationRow3235 at r3235

  unfold Seg52.relationRow3236 at r3236

  unfold Seg52.relationRow3237 at r3237

  unfold Seg52.relationRow3238 at r3238

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3238

  unfold Seg52.relationRow3239 at r3239

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3239

  unfold Seg52.relationRow3240 at r3240

  unfold Seg52.relationRow3241 at r3241

  unfold Seg52.relationRow3242 at r3242

  unfold Seg52.relationRow3243 at r3243

  unfold Seg52.relationRow3244 at r3244

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX43 rho = seg52In1AccX42 rho + rho 47628 := by
    unfold seg52In1AccX43 seg52In1AccX42
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 42]

    ring

  have hnexty : seg52In1AccY43 rho = seg52In1AccY42 rho + rho 47629 := by
    unfold seg52In1AccY43 seg52In1AccY42
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 42]

    ring

  have ha0 : (rho 47620 + rho 47621) * (seg52In1AccX42 rho + seg52In1AccY42 rho) = rho 47622 := by
    unfold seg52In1AccX42 seg52In1AccY42
    linear_combination r3232
  have ha1 : rho 47621 * seg52In1AccX42 rho = rho 47623 := by
    unfold seg52In1AccX42
    linear_combination r3233
  have ha2 : rho 47620 * seg52In1AccY42 rho = rho 47624 := by
    unfold seg52In1AccY42
    linear_combination r3234
  have ha3 : 3021 * rho 47623 * rho 47624 = rho 47625 := by
    linear_combination r3235
  have ha4 : rho 47626 * (1 + rho 47625) = rho 47623 + rho 47624 := by
    linear_combination r3236
  have ha5 : rho 47627 * (1 - rho 47625) = rho 47622 - rho 47623 - rho 47624 := by
    linear_combination r3237
  have haddx :
      rho 47626 * (1 + 3021 * (rho 47621 * seg52In1AccX42 rho) * (rho 47620 * seg52In1AccY42 rho)) =
        rho 47621 * seg52In1AccX42 rho + rho 47620 * seg52In1AccY42 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47627 * (1 - 3021 * (rho 47621 * seg52In1AccX42 rho) * (rho 47620 * seg52In1AccY42 rho)) =
        (-1) * (rho 47621 * seg52In1AccX42 rho) - rho 47620 * seg52In1AccY42 rho +
          (seg52In1AccY42 rho - seg52In1AccX42 rho * (-1)) * (rho 47620 + rho 47621) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47627 * (1 - rho 47625) = rho 47622 - rho 47623 - rho 47624 := ha5
      _ = (-1) * rho 47623 - rho 47624 + (seg52In1AccY42 rho - seg52In1AccX42 rho * (-1)) *
          (rho 47620 + rho 47621) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX43 rho = seg52In1AccX42 rho - Bool.toZMod bit * (seg52In1AccX42 rho - rho 47626) := by
    have hd : rho 47628 = Bool.toZMod bit * (rho 47626 - seg52In1AccX42 rho) := by
      rw [← hbit]
      unfold seg52In1AccX42
      linear_combination -r3238
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY43 rho = seg52In1AccY42 rho - Bool.toZMod bit * (seg52In1AccY42 rho - rho 47627) := by
    have hd : rho 47629 = Bool.toZMod bit * (rho 47627 - seg52In1AccY42 rho) := by
      rw [← hbit]
      unfold seg52In1AccY42
      linear_combination -r3239
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47620 * rho 47621 = rho 47630 := by linear_combination r3240
  have hd1 : rho 47620 * rho 47620 = rho 47631 := by linear_combination r3241
  have hd2 : rho 47621 * rho 47621 = rho 47632 := by linear_combination r3242
  have hd3 : rho 47633 * (rho 47621 * rho 47621 + rho 47620 * rho 47620 * (-1)) =
      2 * (rho 47620 * rho 47621) := by
    rw [hd0, hd1, hd2]
    linear_combination r3243
  have hd4 : rho 47634 * (2 - (rho 47621 * rho 47621 + rho 47620 * rho 47620 * (-1))) =
      rho 47621 * rho 47621 - rho 47620 * rho 47620 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3244
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX42 rho, seg52In1AccY42 rho⟩ ⟨rho 47620, rho 47621⟩
    ⟨rho 47626, rho 47627⟩ ⟨seg52In1AccX43 rho, seg52In1AccY43 rho⟩ ⟨rho 47633, rho 47634⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows43 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3245 rho ∧ Seg52.relationRow3246 rho ∧ Seg52.relationRow3247 rho ∧ Seg52.relationRow3248 rho ∧ Seg52.relationRow3249 rho ∧ Seg52.relationRow3250 rho ∧ Seg52.relationRow3251 rho ∧ Seg52.relationRow3252 rho ∧ Seg52.relationRow3253 rho ∧ Seg52.relationRow3254 rho ∧ Seg52.relationRow3255 rho ∧ Seg52.relationRow3256 rho ∧ Seg52.relationRow3257 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p40, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart40 at p40

  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3245, r3246, r3247, r3248, r3249, r3250, r3251, r3252, r3253, r3254, r3255, r3256, r3257, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3245, r3246, r3247, r3248, r3249, r3250, r3251, r3252, r3253, r3254, r3255, r3256, r3257⟩

theorem seg52In1_rung43 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46997 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX43 rho, seg52In1AccY43 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47633, rho 47634⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX43 rho, seg52In1AccY43 rho⟩ ⟨rho 47633, rho 47634⟩
        ⟨seg52In1AccX44 rho, seg52In1AccY44 rho⟩ ⟨rho 47646, rho 47647⟩ := by
  obtain ⟨r3245, r3246, r3247, r3248, r3249, r3250, r3251, r3252, r3253, r3254, r3255, r3256, r3257⟩ := seg52In1_rows43 rho h
  unfold Seg52.relationRow3245 at r3245

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3245

  unfold Seg52.relationRow3246 at r3246

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3246

  unfold Seg52.relationRow3247 at r3247

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3247

  unfold Seg52.relationRow3248 at r3248

  unfold Seg52.relationRow3249 at r3249

  unfold Seg52.relationRow3250 at r3250

  unfold Seg52.relationRow3251 at r3251

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3251

  unfold Seg52.relationRow3252 at r3252

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3252

  unfold Seg52.relationRow3253 at r3253

  unfold Seg52.relationRow3254 at r3254

  unfold Seg52.relationRow3255 at r3255

  unfold Seg52.relationRow3256 at r3256

  unfold Seg52.relationRow3257 at r3257

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX44 rho = seg52In1AccX43 rho + rho 47641 := by
    unfold seg52In1AccX44 seg52In1AccX43
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 43]

    ring

  have hnexty : seg52In1AccY44 rho = seg52In1AccY43 rho + rho 47642 := by
    unfold seg52In1AccY44 seg52In1AccY43
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 43]

    ring

  have ha0 : (rho 47633 + rho 47634) * (seg52In1AccX43 rho + seg52In1AccY43 rho) = rho 47635 := by
    unfold seg52In1AccX43 seg52In1AccY43
    linear_combination r3245
  have ha1 : rho 47634 * seg52In1AccX43 rho = rho 47636 := by
    unfold seg52In1AccX43
    linear_combination r3246
  have ha2 : rho 47633 * seg52In1AccY43 rho = rho 47637 := by
    unfold seg52In1AccY43
    linear_combination r3247
  have ha3 : 3021 * rho 47636 * rho 47637 = rho 47638 := by
    linear_combination r3248
  have ha4 : rho 47639 * (1 + rho 47638) = rho 47636 + rho 47637 := by
    linear_combination r3249
  have ha5 : rho 47640 * (1 - rho 47638) = rho 47635 - rho 47636 - rho 47637 := by
    linear_combination r3250
  have haddx :
      rho 47639 * (1 + 3021 * (rho 47634 * seg52In1AccX43 rho) * (rho 47633 * seg52In1AccY43 rho)) =
        rho 47634 * seg52In1AccX43 rho + rho 47633 * seg52In1AccY43 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47640 * (1 - 3021 * (rho 47634 * seg52In1AccX43 rho) * (rho 47633 * seg52In1AccY43 rho)) =
        (-1) * (rho 47634 * seg52In1AccX43 rho) - rho 47633 * seg52In1AccY43 rho +
          (seg52In1AccY43 rho - seg52In1AccX43 rho * (-1)) * (rho 47633 + rho 47634) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47640 * (1 - rho 47638) = rho 47635 - rho 47636 - rho 47637 := ha5
      _ = (-1) * rho 47636 - rho 47637 + (seg52In1AccY43 rho - seg52In1AccX43 rho * (-1)) *
          (rho 47633 + rho 47634) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX44 rho = seg52In1AccX43 rho - Bool.toZMod bit * (seg52In1AccX43 rho - rho 47639) := by
    have hd : rho 47641 = Bool.toZMod bit * (rho 47639 - seg52In1AccX43 rho) := by
      rw [← hbit]
      unfold seg52In1AccX43
      linear_combination -r3251
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY44 rho = seg52In1AccY43 rho - Bool.toZMod bit * (seg52In1AccY43 rho - rho 47640) := by
    have hd : rho 47642 = Bool.toZMod bit * (rho 47640 - seg52In1AccY43 rho) := by
      rw [← hbit]
      unfold seg52In1AccY43
      linear_combination -r3252
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47633 * rho 47634 = rho 47643 := by linear_combination r3253
  have hd1 : rho 47633 * rho 47633 = rho 47644 := by linear_combination r3254
  have hd2 : rho 47634 * rho 47634 = rho 47645 := by linear_combination r3255
  have hd3 : rho 47646 * (rho 47634 * rho 47634 + rho 47633 * rho 47633 * (-1)) =
      2 * (rho 47633 * rho 47634) := by
    rw [hd0, hd1, hd2]
    linear_combination r3256
  have hd4 : rho 47647 * (2 - (rho 47634 * rho 47634 + rho 47633 * rho 47633 * (-1))) =
      rho 47634 * rho 47634 - rho 47633 * rho 47633 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3257
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX43 rho, seg52In1AccY43 rho⟩ ⟨rho 47633, rho 47634⟩
    ⟨rho 47639, rho 47640⟩ ⟨seg52In1AccX44 rho, seg52In1AccY44 rho⟩ ⟨rho 47646, rho 47647⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_hstep_c3 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (46954 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 33 ≤ i → i < 44 →
      EdwardsBridge.onCurve (seg52In1AccState rho i) →
      EdwardsBridge.onCurve (seg52In1CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In1AccState rho i) (seg52In1CurState rho i)
        (seg52In1AccState rho (i + 1)) (seg52In1CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In1_rung33 rho h bits[33]! (hbitAt 33 (by omega)) hacc hcur
  · exact seg52In1_rung34 rho h bits[34]! (hbitAt 34 (by omega)) hacc hcur
  · exact seg52In1_rung35 rho h bits[35]! (hbitAt 35 (by omega)) hacc hcur
  · exact seg52In1_rung36 rho h bits[36]! (hbitAt 36 (by omega)) hacc hcur
  · exact seg52In1_rung37 rho h bits[37]! (hbitAt 37 (by omega)) hacc hcur
  · exact seg52In1_rung38 rho h bits[38]! (hbitAt 38 (by omega)) hacc hcur
  · exact seg52In1_rung39 rho h bits[39]! (hbitAt 39 (by omega)) hacc hcur
  · exact seg52In1_rung40 rho h bits[40]! (hbitAt 40 (by omega)) hacc hcur
  · exact seg52In1_rung41 rho h bits[41]! (hbitAt 41 (by omega)) hacc hcur
  · exact seg52In1_rung42 rho h bits[42]! (hbitAt 42 (by omega)) hacc hcur
  · exact seg52In1_rung43 rho h bits[43]! (hbitAt 43 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
