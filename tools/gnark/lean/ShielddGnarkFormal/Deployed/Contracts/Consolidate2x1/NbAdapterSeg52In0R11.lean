import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In0_rows121 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3112 rho ∧ Seg52.relationRow3113 rho ∧ Seg52.relationRow3114 rho ∧ Seg52.relationRow3115 rho ∧ Seg52.relationRow3116 rho ∧ Seg52.relationRow3117 rho ∧ Seg52.relationRow3118 rho ∧ Seg52.relationRow3119 rho ∧ Seg52.relationRow3120 rho ∧ Seg52.relationRow3121 rho ∧ Seg52.relationRow3122 rho ∧ Seg52.relationRow3123 rho ∧ Seg52.relationRow3124 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart38 at p38

  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3112, r3113, r3114, r3115, r3116, r3117, r3118, r3119⟩

  unfold Seg52.relationPart39 at p39

  rcases p39 with ⟨r3120, r3121, r3122, r3123, r3124, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3112, r3113, r3114, r3115, r3116, r3117, r3118, r3119, r3120, r3121, r3122, r3123, r3124⟩

theorem seg52In0_rung121 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45929 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX121 rho, seg52In0AccY121 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47501, rho 47502⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX121 rho, seg52In0AccY121 rho⟩ ⟨rho 47501, rho 47502⟩
        ⟨seg52In0AccX122 rho, seg52In0AccY122 rho⟩ ⟨rho 47514, rho 47515⟩ := by
  obtain ⟨r3112, r3113, r3114, r3115, r3116, r3117, r3118, r3119, r3120, r3121, r3122, r3123, r3124⟩ := seg52In0_rows121 rho h
  unfold Seg52.relationRow3112 at r3112

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3112

  unfold Seg52.relationRow3113 at r3113

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3113

  unfold Seg52.relationRow3114 at r3114

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3114

  unfold Seg52.relationRow3115 at r3115

  unfold Seg52.relationRow3116 at r3116

  unfold Seg52.relationRow3117 at r3117

  unfold Seg52.relationRow3118 at r3118

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3118

  unfold Seg52.relationRow3119 at r3119

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3119

  unfold Seg52.relationRow3120 at r3120

  unfold Seg52.relationRow3121 at r3121

  unfold Seg52.relationRow3122 at r3122

  unfold Seg52.relationRow3123 at r3123

  unfold Seg52.relationRow3124 at r3124

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX122 rho = seg52In0AccX121 rho + rho 47509 := by
    unfold seg52In0AccX122 seg52In0AccX121
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 121]

    ring

  have hnexty : seg52In0AccY122 rho = seg52In0AccY121 rho + rho 47510 := by
    unfold seg52In0AccY122 seg52In0AccY121
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 121]

    ring

  have ha0 : (rho 47501 + rho 47502) * (seg52In0AccX121 rho + seg52In0AccY121 rho) = rho 47503 := by
    unfold seg52In0AccX121 seg52In0AccY121
    linear_combination r3112
  have ha1 : rho 47502 * seg52In0AccX121 rho = rho 47504 := by
    unfold seg52In0AccX121
    linear_combination r3113
  have ha2 : rho 47501 * seg52In0AccY121 rho = rho 47505 := by
    unfold seg52In0AccY121
    linear_combination r3114
  have ha3 : 3021 * rho 47504 * rho 47505 = rho 47506 := by
    linear_combination r3115
  have ha4 : rho 47507 * (1 + rho 47506) = rho 47504 + rho 47505 := by
    linear_combination r3116
  have ha5 : rho 47508 * (1 - rho 47506) = rho 47503 - rho 47504 - rho 47505 := by
    linear_combination r3117
  have haddx :
      rho 47507 * (1 + 3021 * (rho 47502 * seg52In0AccX121 rho) * (rho 47501 * seg52In0AccY121 rho)) =
        rho 47502 * seg52In0AccX121 rho + rho 47501 * seg52In0AccY121 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47508 * (1 - 3021 * (rho 47502 * seg52In0AccX121 rho) * (rho 47501 * seg52In0AccY121 rho)) =
        (-1) * (rho 47502 * seg52In0AccX121 rho) - rho 47501 * seg52In0AccY121 rho +
          (seg52In0AccY121 rho - seg52In0AccX121 rho * (-1)) * (rho 47501 + rho 47502) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47508 * (1 - rho 47506) = rho 47503 - rho 47504 - rho 47505 := ha5
      _ = (-1) * rho 47504 - rho 47505 + (seg52In0AccY121 rho - seg52In0AccX121 rho * (-1)) *
          (rho 47501 + rho 47502) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX122 rho = seg52In0AccX121 rho - Bool.toZMod bit * (seg52In0AccX121 rho - rho 47507) := by
    have hd : rho 47509 = Bool.toZMod bit * (rho 47507 - seg52In0AccX121 rho) := by
      rw [← hbit]
      unfold seg52In0AccX121
      linear_combination -r3118
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY122 rho = seg52In0AccY121 rho - Bool.toZMod bit * (seg52In0AccY121 rho - rho 47508) := by
    have hd : rho 47510 = Bool.toZMod bit * (rho 47508 - seg52In0AccY121 rho) := by
      rw [← hbit]
      unfold seg52In0AccY121
      linear_combination -r3119
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47501 * rho 47502 = rho 47511 := by linear_combination r3120
  have hd1 : rho 47501 * rho 47501 = rho 47512 := by linear_combination r3121
  have hd2 : rho 47502 * rho 47502 = rho 47513 := by linear_combination r3122
  have hd3 : rho 47514 * (rho 47502 * rho 47502 + rho 47501 * rho 47501 * (-1)) =
      2 * (rho 47501 * rho 47502) := by
    rw [hd0, hd1, hd2]
    linear_combination r3123
  have hd4 : rho 47515 * (2 - (rho 47502 * rho 47502 + rho 47501 * rho 47501 * (-1))) =
      rho 47502 * rho 47502 - rho 47501 * rho 47501 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3124
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX121 rho, seg52In0AccY121 rho⟩ ⟨rho 47501, rho 47502⟩
    ⟨rho 47507, rho 47508⟩ ⟨seg52In0AccX122 rho, seg52In0AccY122 rho⟩ ⟨rho 47514, rho 47515⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows122 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3125 rho ∧ Seg52.relationRow3126 rho ∧ Seg52.relationRow3127 rho ∧ Seg52.relationRow3128 rho ∧ Seg52.relationRow3129 rho ∧ Seg52.relationRow3130 rho ∧ Seg52.relationRow3131 rho ∧ Seg52.relationRow3132 rho ∧ Seg52.relationRow3133 rho ∧ Seg52.relationRow3134 rho ∧ Seg52.relationRow3135 rho ∧ Seg52.relationRow3136 rho ∧ Seg52.relationRow3137 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart39 at p39

  rcases p39 with ⟨_, _, _, _, _, r3125, r3126, r3127, r3128, r3129, r3130, r3131, r3132, r3133, r3134, r3135, r3136, r3137, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3125, r3126, r3127, r3128, r3129, r3130, r3131, r3132, r3133, r3134, r3135, r3136, r3137⟩

theorem seg52In0_rung122 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45930 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX122 rho, seg52In0AccY122 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47514, rho 47515⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX122 rho, seg52In0AccY122 rho⟩ ⟨rho 47514, rho 47515⟩
        ⟨seg52In0AccX123 rho, seg52In0AccY123 rho⟩ ⟨rho 47527, rho 47528⟩ := by
  obtain ⟨r3125, r3126, r3127, r3128, r3129, r3130, r3131, r3132, r3133, r3134, r3135, r3136, r3137⟩ := seg52In0_rows122 rho h
  unfold Seg52.relationRow3125 at r3125

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3125

  unfold Seg52.relationRow3126 at r3126

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3126

  unfold Seg52.relationRow3127 at r3127

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3127

  unfold Seg52.relationRow3128 at r3128

  unfold Seg52.relationRow3129 at r3129

  unfold Seg52.relationRow3130 at r3130

  unfold Seg52.relationRow3131 at r3131

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3131

  unfold Seg52.relationRow3132 at r3132

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3132

  unfold Seg52.relationRow3133 at r3133

  unfold Seg52.relationRow3134 at r3134

  unfold Seg52.relationRow3135 at r3135

  unfold Seg52.relationRow3136 at r3136

  unfold Seg52.relationRow3137 at r3137

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX123 rho = seg52In0AccX122 rho + rho 47522 := by
    unfold seg52In0AccX123 seg52In0AccX122
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 122]

    ring

  have hnexty : seg52In0AccY123 rho = seg52In0AccY122 rho + rho 47523 := by
    unfold seg52In0AccY123 seg52In0AccY122
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 122]

    ring

  have ha0 : (rho 47514 + rho 47515) * (seg52In0AccX122 rho + seg52In0AccY122 rho) = rho 47516 := by
    unfold seg52In0AccX122 seg52In0AccY122
    linear_combination r3125
  have ha1 : rho 47515 * seg52In0AccX122 rho = rho 47517 := by
    unfold seg52In0AccX122
    linear_combination r3126
  have ha2 : rho 47514 * seg52In0AccY122 rho = rho 47518 := by
    unfold seg52In0AccY122
    linear_combination r3127
  have ha3 : 3021 * rho 47517 * rho 47518 = rho 47519 := by
    linear_combination r3128
  have ha4 : rho 47520 * (1 + rho 47519) = rho 47517 + rho 47518 := by
    linear_combination r3129
  have ha5 : rho 47521 * (1 - rho 47519) = rho 47516 - rho 47517 - rho 47518 := by
    linear_combination r3130
  have haddx :
      rho 47520 * (1 + 3021 * (rho 47515 * seg52In0AccX122 rho) * (rho 47514 * seg52In0AccY122 rho)) =
        rho 47515 * seg52In0AccX122 rho + rho 47514 * seg52In0AccY122 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47521 * (1 - 3021 * (rho 47515 * seg52In0AccX122 rho) * (rho 47514 * seg52In0AccY122 rho)) =
        (-1) * (rho 47515 * seg52In0AccX122 rho) - rho 47514 * seg52In0AccY122 rho +
          (seg52In0AccY122 rho - seg52In0AccX122 rho * (-1)) * (rho 47514 + rho 47515) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47521 * (1 - rho 47519) = rho 47516 - rho 47517 - rho 47518 := ha5
      _ = (-1) * rho 47517 - rho 47518 + (seg52In0AccY122 rho - seg52In0AccX122 rho * (-1)) *
          (rho 47514 + rho 47515) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX123 rho = seg52In0AccX122 rho - Bool.toZMod bit * (seg52In0AccX122 rho - rho 47520) := by
    have hd : rho 47522 = Bool.toZMod bit * (rho 47520 - seg52In0AccX122 rho) := by
      rw [← hbit]
      unfold seg52In0AccX122
      linear_combination -r3131
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY123 rho = seg52In0AccY122 rho - Bool.toZMod bit * (seg52In0AccY122 rho - rho 47521) := by
    have hd : rho 47523 = Bool.toZMod bit * (rho 47521 - seg52In0AccY122 rho) := by
      rw [← hbit]
      unfold seg52In0AccY122
      linear_combination -r3132
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47514 * rho 47515 = rho 47524 := by linear_combination r3133
  have hd1 : rho 47514 * rho 47514 = rho 47525 := by linear_combination r3134
  have hd2 : rho 47515 * rho 47515 = rho 47526 := by linear_combination r3135
  have hd3 : rho 47527 * (rho 47515 * rho 47515 + rho 47514 * rho 47514 * (-1)) =
      2 * (rho 47514 * rho 47515) := by
    rw [hd0, hd1, hd2]
    linear_combination r3136
  have hd4 : rho 47528 * (2 - (rho 47515 * rho 47515 + rho 47514 * rho 47514 * (-1))) =
      rho 47515 * rho 47515 - rho 47514 * rho 47514 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3137
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX122 rho, seg52In0AccY122 rho⟩ ⟨rho 47514, rho 47515⟩
    ⟨rho 47520, rho 47521⟩ ⟨seg52In0AccX123 rho, seg52In0AccY123 rho⟩ ⟨rho 47527, rho 47528⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows123 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3138 rho ∧ Seg52.relationRow3139 rho ∧ Seg52.relationRow3140 rho ∧ Seg52.relationRow3141 rho ∧ Seg52.relationRow3142 rho ∧ Seg52.relationRow3143 rho ∧ Seg52.relationRow3144 rho ∧ Seg52.relationRow3145 rho ∧ Seg52.relationRow3146 rho ∧ Seg52.relationRow3147 rho ∧ Seg52.relationRow3148 rho ∧ Seg52.relationRow3149 rho ∧ Seg52.relationRow3150 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart39 at p39

  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3138, r3139, r3140, r3141, r3142, r3143, r3144, r3145, r3146, r3147, r3148, r3149, r3150, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3138, r3139, r3140, r3141, r3142, r3143, r3144, r3145, r3146, r3147, r3148, r3149, r3150⟩

theorem seg52In0_rung123 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45931 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX123 rho, seg52In0AccY123 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47527, rho 47528⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX123 rho, seg52In0AccY123 rho⟩ ⟨rho 47527, rho 47528⟩
        ⟨seg52In0AccX124 rho, seg52In0AccY124 rho⟩ ⟨rho 47540, rho 47541⟩ := by
  obtain ⟨r3138, r3139, r3140, r3141, r3142, r3143, r3144, r3145, r3146, r3147, r3148, r3149, r3150⟩ := seg52In0_rows123 rho h
  unfold Seg52.relationRow3138 at r3138

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3138

  unfold Seg52.relationRow3139 at r3139

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3139

  unfold Seg52.relationRow3140 at r3140

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3140

  unfold Seg52.relationRow3141 at r3141

  unfold Seg52.relationRow3142 at r3142

  unfold Seg52.relationRow3143 at r3143

  unfold Seg52.relationRow3144 at r3144

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3144

  unfold Seg52.relationRow3145 at r3145

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3145

  unfold Seg52.relationRow3146 at r3146

  unfold Seg52.relationRow3147 at r3147

  unfold Seg52.relationRow3148 at r3148

  unfold Seg52.relationRow3149 at r3149

  unfold Seg52.relationRow3150 at r3150

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX124 rho = seg52In0AccX123 rho + rho 47535 := by
    unfold seg52In0AccX124 seg52In0AccX123
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 123]

    ring

  have hnexty : seg52In0AccY124 rho = seg52In0AccY123 rho + rho 47536 := by
    unfold seg52In0AccY124 seg52In0AccY123
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 123]

    ring

  have ha0 : (rho 47527 + rho 47528) * (seg52In0AccX123 rho + seg52In0AccY123 rho) = rho 47529 := by
    unfold seg52In0AccX123 seg52In0AccY123
    linear_combination r3138
  have ha1 : rho 47528 * seg52In0AccX123 rho = rho 47530 := by
    unfold seg52In0AccX123
    linear_combination r3139
  have ha2 : rho 47527 * seg52In0AccY123 rho = rho 47531 := by
    unfold seg52In0AccY123
    linear_combination r3140
  have ha3 : 3021 * rho 47530 * rho 47531 = rho 47532 := by
    linear_combination r3141
  have ha4 : rho 47533 * (1 + rho 47532) = rho 47530 + rho 47531 := by
    linear_combination r3142
  have ha5 : rho 47534 * (1 - rho 47532) = rho 47529 - rho 47530 - rho 47531 := by
    linear_combination r3143
  have haddx :
      rho 47533 * (1 + 3021 * (rho 47528 * seg52In0AccX123 rho) * (rho 47527 * seg52In0AccY123 rho)) =
        rho 47528 * seg52In0AccX123 rho + rho 47527 * seg52In0AccY123 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47534 * (1 - 3021 * (rho 47528 * seg52In0AccX123 rho) * (rho 47527 * seg52In0AccY123 rho)) =
        (-1) * (rho 47528 * seg52In0AccX123 rho) - rho 47527 * seg52In0AccY123 rho +
          (seg52In0AccY123 rho - seg52In0AccX123 rho * (-1)) * (rho 47527 + rho 47528) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47534 * (1 - rho 47532) = rho 47529 - rho 47530 - rho 47531 := ha5
      _ = (-1) * rho 47530 - rho 47531 + (seg52In0AccY123 rho - seg52In0AccX123 rho * (-1)) *
          (rho 47527 + rho 47528) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX124 rho = seg52In0AccX123 rho - Bool.toZMod bit * (seg52In0AccX123 rho - rho 47533) := by
    have hd : rho 47535 = Bool.toZMod bit * (rho 47533 - seg52In0AccX123 rho) := by
      rw [← hbit]
      unfold seg52In0AccX123
      linear_combination -r3144
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY124 rho = seg52In0AccY123 rho - Bool.toZMod bit * (seg52In0AccY123 rho - rho 47534) := by
    have hd : rho 47536 = Bool.toZMod bit * (rho 47534 - seg52In0AccY123 rho) := by
      rw [← hbit]
      unfold seg52In0AccY123
      linear_combination -r3145
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47527 * rho 47528 = rho 47537 := by linear_combination r3146
  have hd1 : rho 47527 * rho 47527 = rho 47538 := by linear_combination r3147
  have hd2 : rho 47528 * rho 47528 = rho 47539 := by linear_combination r3148
  have hd3 : rho 47540 * (rho 47528 * rho 47528 + rho 47527 * rho 47527 * (-1)) =
      2 * (rho 47527 * rho 47528) := by
    rw [hd0, hd1, hd2]
    linear_combination r3149
  have hd4 : rho 47541 * (2 - (rho 47528 * rho 47528 + rho 47527 * rho 47527 * (-1))) =
      rho 47528 * rho 47528 - rho 47527 * rho 47527 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3150
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX123 rho, seg52In0AccY123 rho⟩ ⟨rho 47527, rho 47528⟩
    ⟨rho 47533, rho 47534⟩ ⟨seg52In0AccX124 rho, seg52In0AccY124 rho⟩ ⟨rho 47540, rho 47541⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows124 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3151 rho ∧ Seg52.relationRow3152 rho ∧ Seg52.relationRow3153 rho ∧ Seg52.relationRow3154 rho ∧ Seg52.relationRow3155 rho ∧ Seg52.relationRow3156 rho ∧ Seg52.relationRow3157 rho ∧ Seg52.relationRow3158 rho ∧ Seg52.relationRow3159 rho ∧ Seg52.relationRow3160 rho ∧ Seg52.relationRow3161 rho ∧ Seg52.relationRow3162 rho ∧ Seg52.relationRow3163 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart39 at p39

  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3151, r3152, r3153, r3154, r3155, r3156, r3157, r3158, r3159, r3160, r3161, r3162, r3163, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3151, r3152, r3153, r3154, r3155, r3156, r3157, r3158, r3159, r3160, r3161, r3162, r3163⟩

theorem seg52In0_rung124 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45932 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX124 rho, seg52In0AccY124 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47540, rho 47541⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX124 rho, seg52In0AccY124 rho⟩ ⟨rho 47540, rho 47541⟩
        ⟨seg52In0AccX125 rho, seg52In0AccY125 rho⟩ ⟨rho 47553, rho 47554⟩ := by
  obtain ⟨r3151, r3152, r3153, r3154, r3155, r3156, r3157, r3158, r3159, r3160, r3161, r3162, r3163⟩ := seg52In0_rows124 rho h
  unfold Seg52.relationRow3151 at r3151

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3151

  unfold Seg52.relationRow3152 at r3152

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3152

  unfold Seg52.relationRow3153 at r3153

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3153

  unfold Seg52.relationRow3154 at r3154

  unfold Seg52.relationRow3155 at r3155

  unfold Seg52.relationRow3156 at r3156

  unfold Seg52.relationRow3157 at r3157

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3157

  unfold Seg52.relationRow3158 at r3158

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3158

  unfold Seg52.relationRow3159 at r3159

  unfold Seg52.relationRow3160 at r3160

  unfold Seg52.relationRow3161 at r3161

  unfold Seg52.relationRow3162 at r3162

  unfold Seg52.relationRow3163 at r3163

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX125 rho = seg52In0AccX124 rho + rho 47548 := by
    unfold seg52In0AccX125 seg52In0AccX124
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 124]

    ring

  have hnexty : seg52In0AccY125 rho = seg52In0AccY124 rho + rho 47549 := by
    unfold seg52In0AccY125 seg52In0AccY124
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 124]

    ring

  have ha0 : (rho 47540 + rho 47541) * (seg52In0AccX124 rho + seg52In0AccY124 rho) = rho 47542 := by
    unfold seg52In0AccX124 seg52In0AccY124
    linear_combination r3151
  have ha1 : rho 47541 * seg52In0AccX124 rho = rho 47543 := by
    unfold seg52In0AccX124
    linear_combination r3152
  have ha2 : rho 47540 * seg52In0AccY124 rho = rho 47544 := by
    unfold seg52In0AccY124
    linear_combination r3153
  have ha3 : 3021 * rho 47543 * rho 47544 = rho 47545 := by
    linear_combination r3154
  have ha4 : rho 47546 * (1 + rho 47545) = rho 47543 + rho 47544 := by
    linear_combination r3155
  have ha5 : rho 47547 * (1 - rho 47545) = rho 47542 - rho 47543 - rho 47544 := by
    linear_combination r3156
  have haddx :
      rho 47546 * (1 + 3021 * (rho 47541 * seg52In0AccX124 rho) * (rho 47540 * seg52In0AccY124 rho)) =
        rho 47541 * seg52In0AccX124 rho + rho 47540 * seg52In0AccY124 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47547 * (1 - 3021 * (rho 47541 * seg52In0AccX124 rho) * (rho 47540 * seg52In0AccY124 rho)) =
        (-1) * (rho 47541 * seg52In0AccX124 rho) - rho 47540 * seg52In0AccY124 rho +
          (seg52In0AccY124 rho - seg52In0AccX124 rho * (-1)) * (rho 47540 + rho 47541) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47547 * (1 - rho 47545) = rho 47542 - rho 47543 - rho 47544 := ha5
      _ = (-1) * rho 47543 - rho 47544 + (seg52In0AccY124 rho - seg52In0AccX124 rho * (-1)) *
          (rho 47540 + rho 47541) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX125 rho = seg52In0AccX124 rho - Bool.toZMod bit * (seg52In0AccX124 rho - rho 47546) := by
    have hd : rho 47548 = Bool.toZMod bit * (rho 47546 - seg52In0AccX124 rho) := by
      rw [← hbit]
      unfold seg52In0AccX124
      linear_combination -r3157
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY125 rho = seg52In0AccY124 rho - Bool.toZMod bit * (seg52In0AccY124 rho - rho 47547) := by
    have hd : rho 47549 = Bool.toZMod bit * (rho 47547 - seg52In0AccY124 rho) := by
      rw [← hbit]
      unfold seg52In0AccY124
      linear_combination -r3158
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47540 * rho 47541 = rho 47550 := by linear_combination r3159
  have hd1 : rho 47540 * rho 47540 = rho 47551 := by linear_combination r3160
  have hd2 : rho 47541 * rho 47541 = rho 47552 := by linear_combination r3161
  have hd3 : rho 47553 * (rho 47541 * rho 47541 + rho 47540 * rho 47540 * (-1)) =
      2 * (rho 47540 * rho 47541) := by
    rw [hd0, hd1, hd2]
    linear_combination r3162
  have hd4 : rho 47554 * (2 - (rho 47541 * rho 47541 + rho 47540 * rho 47540 * (-1))) =
      rho 47541 * rho 47541 - rho 47540 * rho 47540 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3163
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX124 rho, seg52In0AccY124 rho⟩ ⟨rho 47540, rho 47541⟩
    ⟨rho 47546, rho 47547⟩ ⟨seg52In0AccX125 rho, seg52In0AccY125 rho⟩ ⟨rho 47553, rho 47554⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows125 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3164 rho ∧ Seg52.relationRow3165 rho ∧ Seg52.relationRow3166 rho ∧ Seg52.relationRow3167 rho ∧ Seg52.relationRow3168 rho ∧ Seg52.relationRow3169 rho ∧ Seg52.relationRow3170 rho ∧ Seg52.relationRow3171 rho ∧ Seg52.relationRow3172 rho ∧ Seg52.relationRow3173 rho ∧ Seg52.relationRow3174 rho ∧ Seg52.relationRow3175 rho ∧ Seg52.relationRow3176 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart39 at p39

  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3164, r3165, r3166, r3167, r3168, r3169, r3170, r3171, r3172, r3173, r3174, r3175, r3176, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3164, r3165, r3166, r3167, r3168, r3169, r3170, r3171, r3172, r3173, r3174, r3175, r3176⟩

theorem seg52In0_rung125 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45933 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX125 rho, seg52In0AccY125 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47553, rho 47554⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX125 rho, seg52In0AccY125 rho⟩ ⟨rho 47553, rho 47554⟩
        ⟨seg52In0AccX126 rho, seg52In0AccY126 rho⟩ ⟨rho 47566, rho 47567⟩ := by
  obtain ⟨r3164, r3165, r3166, r3167, r3168, r3169, r3170, r3171, r3172, r3173, r3174, r3175, r3176⟩ := seg52In0_rows125 rho h
  unfold Seg52.relationRow3164 at r3164

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3164

  unfold Seg52.relationRow3165 at r3165

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3165

  unfold Seg52.relationRow3166 at r3166

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3166

  unfold Seg52.relationRow3167 at r3167

  unfold Seg52.relationRow3168 at r3168

  unfold Seg52.relationRow3169 at r3169

  unfold Seg52.relationRow3170 at r3170

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3170

  unfold Seg52.relationRow3171 at r3171

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3171

  unfold Seg52.relationRow3172 at r3172

  unfold Seg52.relationRow3173 at r3173

  unfold Seg52.relationRow3174 at r3174

  unfold Seg52.relationRow3175 at r3175

  unfold Seg52.relationRow3176 at r3176

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX126 rho = seg52In0AccX125 rho + rho 47561 := by
    unfold seg52In0AccX126 seg52In0AccX125
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 125]

    ring

  have hnexty : seg52In0AccY126 rho = seg52In0AccY125 rho + rho 47562 := by
    unfold seg52In0AccY126 seg52In0AccY125
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 125]

    ring

  have ha0 : (rho 47553 + rho 47554) * (seg52In0AccX125 rho + seg52In0AccY125 rho) = rho 47555 := by
    unfold seg52In0AccX125 seg52In0AccY125
    linear_combination r3164
  have ha1 : rho 47554 * seg52In0AccX125 rho = rho 47556 := by
    unfold seg52In0AccX125
    linear_combination r3165
  have ha2 : rho 47553 * seg52In0AccY125 rho = rho 47557 := by
    unfold seg52In0AccY125
    linear_combination r3166
  have ha3 : 3021 * rho 47556 * rho 47557 = rho 47558 := by
    linear_combination r3167
  have ha4 : rho 47559 * (1 + rho 47558) = rho 47556 + rho 47557 := by
    linear_combination r3168
  have ha5 : rho 47560 * (1 - rho 47558) = rho 47555 - rho 47556 - rho 47557 := by
    linear_combination r3169
  have haddx :
      rho 47559 * (1 + 3021 * (rho 47554 * seg52In0AccX125 rho) * (rho 47553 * seg52In0AccY125 rho)) =
        rho 47554 * seg52In0AccX125 rho + rho 47553 * seg52In0AccY125 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47560 * (1 - 3021 * (rho 47554 * seg52In0AccX125 rho) * (rho 47553 * seg52In0AccY125 rho)) =
        (-1) * (rho 47554 * seg52In0AccX125 rho) - rho 47553 * seg52In0AccY125 rho +
          (seg52In0AccY125 rho - seg52In0AccX125 rho * (-1)) * (rho 47553 + rho 47554) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47560 * (1 - rho 47558) = rho 47555 - rho 47556 - rho 47557 := ha5
      _ = (-1) * rho 47556 - rho 47557 + (seg52In0AccY125 rho - seg52In0AccX125 rho * (-1)) *
          (rho 47553 + rho 47554) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX126 rho = seg52In0AccX125 rho - Bool.toZMod bit * (seg52In0AccX125 rho - rho 47559) := by
    have hd : rho 47561 = Bool.toZMod bit * (rho 47559 - seg52In0AccX125 rho) := by
      rw [← hbit]
      unfold seg52In0AccX125
      linear_combination -r3170
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY126 rho = seg52In0AccY125 rho - Bool.toZMod bit * (seg52In0AccY125 rho - rho 47560) := by
    have hd : rho 47562 = Bool.toZMod bit * (rho 47560 - seg52In0AccY125 rho) := by
      rw [← hbit]
      unfold seg52In0AccY125
      linear_combination -r3171
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47553 * rho 47554 = rho 47563 := by linear_combination r3172
  have hd1 : rho 47553 * rho 47553 = rho 47564 := by linear_combination r3173
  have hd2 : rho 47554 * rho 47554 = rho 47565 := by linear_combination r3174
  have hd3 : rho 47566 * (rho 47554 * rho 47554 + rho 47553 * rho 47553 * (-1)) =
      2 * (rho 47553 * rho 47554) := by
    rw [hd0, hd1, hd2]
    linear_combination r3175
  have hd4 : rho 47567 * (2 - (rho 47554 * rho 47554 + rho 47553 * rho 47553 * (-1))) =
      rho 47554 * rho 47554 - rho 47553 * rho 47553 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3176
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX125 rho, seg52In0AccY125 rho⟩ ⟨rho 47553, rho 47554⟩
    ⟨rho 47559, rho 47560⟩ ⟨seg52In0AccX126 rho, seg52In0AccY126 rho⟩ ⟨rho 47566, rho 47567⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows126 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3177 rho ∧ Seg52.relationRow3178 rho ∧ Seg52.relationRow3179 rho ∧ Seg52.relationRow3180 rho ∧ Seg52.relationRow3181 rho ∧ Seg52.relationRow3182 rho ∧ Seg52.relationRow3183 rho ∧ Seg52.relationRow3184 rho ∧ Seg52.relationRow3185 rho ∧ Seg52.relationRow3186 rho ∧ Seg52.relationRow3187 rho ∧ Seg52.relationRow3188 rho ∧ Seg52.relationRow3189 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart39 at p39

  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3177, r3178, r3179, r3180, r3181, r3182, r3183, r3184, r3185, r3186, r3187, r3188, r3189, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3177, r3178, r3179, r3180, r3181, r3182, r3183, r3184, r3185, r3186, r3187, r3188, r3189⟩

theorem seg52In0_rung126 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45934 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX126 rho, seg52In0AccY126 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47566, rho 47567⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX126 rho, seg52In0AccY126 rho⟩ ⟨rho 47566, rho 47567⟩
        ⟨seg52In0AccX127 rho, seg52In0AccY127 rho⟩ ⟨rho 47579, rho 47580⟩ := by
  obtain ⟨r3177, r3178, r3179, r3180, r3181, r3182, r3183, r3184, r3185, r3186, r3187, r3188, r3189⟩ := seg52In0_rows126 rho h
  unfold Seg52.relationRow3177 at r3177

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3177

  unfold Seg52.relationRow3178 at r3178

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3178

  unfold Seg52.relationRow3179 at r3179

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3179

  unfold Seg52.relationRow3180 at r3180

  unfold Seg52.relationRow3181 at r3181

  unfold Seg52.relationRow3182 at r3182

  unfold Seg52.relationRow3183 at r3183

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3183

  unfold Seg52.relationRow3184 at r3184

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3184

  unfold Seg52.relationRow3185 at r3185

  unfold Seg52.relationRow3186 at r3186

  unfold Seg52.relationRow3187 at r3187

  unfold Seg52.relationRow3188 at r3188

  unfold Seg52.relationRow3189 at r3189

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX127 rho = seg52In0AccX126 rho + rho 47574 := by
    unfold seg52In0AccX127 seg52In0AccX126
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 126]

    ring

  have hnexty : seg52In0AccY127 rho = seg52In0AccY126 rho + rho 47575 := by
    unfold seg52In0AccY127 seg52In0AccY126
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 126]

    ring

  have ha0 : (rho 47566 + rho 47567) * (seg52In0AccX126 rho + seg52In0AccY126 rho) = rho 47568 := by
    unfold seg52In0AccX126 seg52In0AccY126
    linear_combination r3177
  have ha1 : rho 47567 * seg52In0AccX126 rho = rho 47569 := by
    unfold seg52In0AccX126
    linear_combination r3178
  have ha2 : rho 47566 * seg52In0AccY126 rho = rho 47570 := by
    unfold seg52In0AccY126
    linear_combination r3179
  have ha3 : 3021 * rho 47569 * rho 47570 = rho 47571 := by
    linear_combination r3180
  have ha4 : rho 47572 * (1 + rho 47571) = rho 47569 + rho 47570 := by
    linear_combination r3181
  have ha5 : rho 47573 * (1 - rho 47571) = rho 47568 - rho 47569 - rho 47570 := by
    linear_combination r3182
  have haddx :
      rho 47572 * (1 + 3021 * (rho 47567 * seg52In0AccX126 rho) * (rho 47566 * seg52In0AccY126 rho)) =
        rho 47567 * seg52In0AccX126 rho + rho 47566 * seg52In0AccY126 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47573 * (1 - 3021 * (rho 47567 * seg52In0AccX126 rho) * (rho 47566 * seg52In0AccY126 rho)) =
        (-1) * (rho 47567 * seg52In0AccX126 rho) - rho 47566 * seg52In0AccY126 rho +
          (seg52In0AccY126 rho - seg52In0AccX126 rho * (-1)) * (rho 47566 + rho 47567) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47573 * (1 - rho 47571) = rho 47568 - rho 47569 - rho 47570 := ha5
      _ = (-1) * rho 47569 - rho 47570 + (seg52In0AccY126 rho - seg52In0AccX126 rho * (-1)) *
          (rho 47566 + rho 47567) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX127 rho = seg52In0AccX126 rho - Bool.toZMod bit * (seg52In0AccX126 rho - rho 47572) := by
    have hd : rho 47574 = Bool.toZMod bit * (rho 47572 - seg52In0AccX126 rho) := by
      rw [← hbit]
      unfold seg52In0AccX126
      linear_combination -r3183
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY127 rho = seg52In0AccY126 rho - Bool.toZMod bit * (seg52In0AccY126 rho - rho 47573) := by
    have hd : rho 47575 = Bool.toZMod bit * (rho 47573 - seg52In0AccY126 rho) := by
      rw [← hbit]
      unfold seg52In0AccY126
      linear_combination -r3184
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47566 * rho 47567 = rho 47576 := by linear_combination r3185
  have hd1 : rho 47566 * rho 47566 = rho 47577 := by linear_combination r3186
  have hd2 : rho 47567 * rho 47567 = rho 47578 := by linear_combination r3187
  have hd3 : rho 47579 * (rho 47567 * rho 47567 + rho 47566 * rho 47566 * (-1)) =
      2 * (rho 47566 * rho 47567) := by
    rw [hd0, hd1, hd2]
    linear_combination r3188
  have hd4 : rho 47580 * (2 - (rho 47567 * rho 47567 + rho 47566 * rho 47566 * (-1))) =
      rho 47567 * rho 47567 - rho 47566 * rho 47566 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3189
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX126 rho, seg52In0AccY126 rho⟩ ⟨rho 47566, rho 47567⟩
    ⟨rho 47572, rho 47573⟩ ⟨seg52In0AccX127 rho, seg52In0AccY127 rho⟩ ⟨rho 47579, rho 47580⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows127 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3190 rho ∧ Seg52.relationRow3191 rho ∧ Seg52.relationRow3192 rho ∧ Seg52.relationRow3193 rho ∧ Seg52.relationRow3194 rho ∧ Seg52.relationRow3195 rho ∧ Seg52.relationRow3196 rho ∧ Seg52.relationRow3197 rho ∧ Seg52.relationRow3198 rho ∧ Seg52.relationRow3199 rho ∧ Seg52.relationRow3200 rho ∧ Seg52.relationRow3201 rho ∧ Seg52.relationRow3202 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart39 at p39

  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3190, r3191, r3192, r3193, r3194, r3195, r3196, r3197, r3198, r3199⟩

  unfold Seg52.relationPart40 at p40

  rcases p40 with ⟨r3200, r3201, r3202, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3190, r3191, r3192, r3193, r3194, r3195, r3196, r3197, r3198, r3199, r3200, r3201, r3202⟩

theorem seg52In0_rung127 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45935 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX127 rho, seg52In0AccY127 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47579, rho 47580⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX127 rho, seg52In0AccY127 rho⟩ ⟨rho 47579, rho 47580⟩
        ⟨seg52In0AccX128 rho, seg52In0AccY128 rho⟩ ⟨rho 47592, rho 47593⟩ := by
  obtain ⟨r3190, r3191, r3192, r3193, r3194, r3195, r3196, r3197, r3198, r3199, r3200, r3201, r3202⟩ := seg52In0_rows127 rho h
  unfold Seg52.relationRow3190 at r3190

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3190

  unfold Seg52.relationRow3191 at r3191

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3191

  unfold Seg52.relationRow3192 at r3192

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3192

  unfold Seg52.relationRow3193 at r3193

  unfold Seg52.relationRow3194 at r3194

  unfold Seg52.relationRow3195 at r3195

  unfold Seg52.relationRow3196 at r3196

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3196

  unfold Seg52.relationRow3197 at r3197

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3197

  unfold Seg52.relationRow3198 at r3198

  unfold Seg52.relationRow3199 at r3199

  unfold Seg52.relationRow3200 at r3200

  unfold Seg52.relationRow3201 at r3201

  unfold Seg52.relationRow3202 at r3202

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX128 rho = seg52In0AccX127 rho + rho 47587 := by
    unfold seg52In0AccX128 seg52In0AccX127
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 127]

    ring

  have hnexty : seg52In0AccY128 rho = seg52In0AccY127 rho + rho 47588 := by
    unfold seg52In0AccY128 seg52In0AccY127
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 127]

    ring

  have ha0 : (rho 47579 + rho 47580) * (seg52In0AccX127 rho + seg52In0AccY127 rho) = rho 47581 := by
    unfold seg52In0AccX127 seg52In0AccY127
    linear_combination r3190
  have ha1 : rho 47580 * seg52In0AccX127 rho = rho 47582 := by
    unfold seg52In0AccX127
    linear_combination r3191
  have ha2 : rho 47579 * seg52In0AccY127 rho = rho 47583 := by
    unfold seg52In0AccY127
    linear_combination r3192
  have ha3 : 3021 * rho 47582 * rho 47583 = rho 47584 := by
    linear_combination r3193
  have ha4 : rho 47585 * (1 + rho 47584) = rho 47582 + rho 47583 := by
    linear_combination r3194
  have ha5 : rho 47586 * (1 - rho 47584) = rho 47581 - rho 47582 - rho 47583 := by
    linear_combination r3195
  have haddx :
      rho 47585 * (1 + 3021 * (rho 47580 * seg52In0AccX127 rho) * (rho 47579 * seg52In0AccY127 rho)) =
        rho 47580 * seg52In0AccX127 rho + rho 47579 * seg52In0AccY127 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47586 * (1 - 3021 * (rho 47580 * seg52In0AccX127 rho) * (rho 47579 * seg52In0AccY127 rho)) =
        (-1) * (rho 47580 * seg52In0AccX127 rho) - rho 47579 * seg52In0AccY127 rho +
          (seg52In0AccY127 rho - seg52In0AccX127 rho * (-1)) * (rho 47579 + rho 47580) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47586 * (1 - rho 47584) = rho 47581 - rho 47582 - rho 47583 := ha5
      _ = (-1) * rho 47582 - rho 47583 + (seg52In0AccY127 rho - seg52In0AccX127 rho * (-1)) *
          (rho 47579 + rho 47580) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX128 rho = seg52In0AccX127 rho - Bool.toZMod bit * (seg52In0AccX127 rho - rho 47585) := by
    have hd : rho 47587 = Bool.toZMod bit * (rho 47585 - seg52In0AccX127 rho) := by
      rw [← hbit]
      unfold seg52In0AccX127
      linear_combination -r3196
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY128 rho = seg52In0AccY127 rho - Bool.toZMod bit * (seg52In0AccY127 rho - rho 47586) := by
    have hd : rho 47588 = Bool.toZMod bit * (rho 47586 - seg52In0AccY127 rho) := by
      rw [← hbit]
      unfold seg52In0AccY127
      linear_combination -r3197
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47579 * rho 47580 = rho 47589 := by linear_combination r3198
  have hd1 : rho 47579 * rho 47579 = rho 47590 := by linear_combination r3199
  have hd2 : rho 47580 * rho 47580 = rho 47591 := by linear_combination r3200
  have hd3 : rho 47592 * (rho 47580 * rho 47580 + rho 47579 * rho 47579 * (-1)) =
      2 * (rho 47579 * rho 47580) := by
    rw [hd0, hd1, hd2]
    linear_combination r3201
  have hd4 : rho 47593 * (2 - (rho 47580 * rho 47580 + rho 47579 * rho 47579 * (-1))) =
      rho 47580 * rho 47580 - rho 47579 * rho 47579 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3202
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX127 rho, seg52In0AccY127 rho⟩ ⟨rho 47579, rho 47580⟩
    ⟨rho 47585, rho 47586⟩ ⟨seg52In0AccX128 rho, seg52In0AccY128 rho⟩ ⟨rho 47592, rho 47593⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_hstep_c11 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (45808 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 121 ≤ i → i < 128 →
      EdwardsBridge.onCurve (seg52In0AccState rho i) →
      EdwardsBridge.onCurve (seg52In0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In0AccState rho i) (seg52In0CurState rho i)
        (seg52In0AccState rho (i + 1)) (seg52In0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In0_rung121 rho h bits[121]! (hbitAt 121 (by omega)) hacc hcur
  · exact seg52In0_rung122 rho h bits[122]! (hbitAt 122 (by omega)) hacc hcur
  · exact seg52In0_rung123 rho h bits[123]! (hbitAt 123 (by omega)) hacc hcur
  · exact seg52In0_rung124 rho h bits[124]! (hbitAt 124 (by omega)) hacc hcur
  · exact seg52In0_rung125 rho h bits[125]! (hbitAt 125 (by omega)) hacc hcur
  · exact seg52In0_rung126 rho h bits[126]! (hbitAt 126 (by omega)) hacc hcur
  · exact seg52In0_rung127 rho h bits[127]! (hbitAt 127 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
