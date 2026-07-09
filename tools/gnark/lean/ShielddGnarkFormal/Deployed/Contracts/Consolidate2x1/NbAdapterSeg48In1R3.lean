import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48In1_rows33 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3115 rho ∧ Seg48.relationRow3116 rho ∧ Seg48.relationRow3117 rho ∧ Seg48.relationRow3118 rho ∧ Seg48.relationRow3119 rho ∧ Seg48.relationRow3120 rho ∧ Seg48.relationRow3121 rho ∧ Seg48.relationRow3122 rho ∧ Seg48.relationRow3123 rho ∧ Seg48.relationRow3124 rho ∧ Seg48.relationRow3125 rho ∧ Seg48.relationRow3126 rho ∧ Seg48.relationRow3127 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart38 at p38

  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3115, r3116, r3117, r3118, r3119⟩

  unfold Seg48.relationPart39 at p39

  rcases p39 with ⟨r3120, r3121, r3122, r3123, r3124, r3125, r3126, r3127, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3115, r3116, r3117, r3118, r3119, r3120, r3121, r3122, r3123, r3124, r3125, r3126, r3127⟩

theorem seg48In1_rung33 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35355 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX33 rho, seg48In1AccY33 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35871, rho 35872⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX33 rho, seg48In1AccY33 rho⟩ ⟨rho 35871, rho 35872⟩
        ⟨seg48In1AccX34 rho, seg48In1AccY34 rho⟩ ⟨rho 35884, rho 35885⟩ := by
  obtain ⟨r3115, r3116, r3117, r3118, r3119, r3120, r3121, r3122, r3123, r3124, r3125, r3126, r3127⟩ := seg48In1_rows33 rho h
  unfold Seg48.relationRow3115 at r3115

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3115

  unfold Seg48.relationRow3116 at r3116

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3116

  unfold Seg48.relationRow3117 at r3117

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3117

  unfold Seg48.relationRow3118 at r3118

  unfold Seg48.relationRow3119 at r3119

  unfold Seg48.relationRow3120 at r3120

  unfold Seg48.relationRow3121 at r3121

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3121

  unfold Seg48.relationRow3122 at r3122

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3122

  unfold Seg48.relationRow3123 at r3123

  unfold Seg48.relationRow3124 at r3124

  unfold Seg48.relationRow3125 at r3125

  unfold Seg48.relationRow3126 at r3126

  unfold Seg48.relationRow3127 at r3127

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX34 rho = seg48In1AccX33 rho + rho 35879 := by
    unfold seg48In1AccX34 seg48In1AccX33
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 33]

    ring

  have hnexty : seg48In1AccY34 rho = seg48In1AccY33 rho + rho 35880 := by
    unfold seg48In1AccY34 seg48In1AccY33
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 33]

    ring

  have ha0 : (rho 35871 + rho 35872) * (seg48In1AccX33 rho + seg48In1AccY33 rho) = rho 35873 := by
    unfold seg48In1AccX33 seg48In1AccY33
    linear_combination r3115
  have ha1 : rho 35872 * seg48In1AccX33 rho = rho 35874 := by
    unfold seg48In1AccX33
    linear_combination r3116
  have ha2 : rho 35871 * seg48In1AccY33 rho = rho 35875 := by
    unfold seg48In1AccY33
    linear_combination r3117
  have ha3 : 3021 * rho 35874 * rho 35875 = rho 35876 := by
    linear_combination r3118
  have ha4 : rho 35877 * (1 + rho 35876) = rho 35874 + rho 35875 := by
    linear_combination r3119
  have ha5 : rho 35878 * (1 - rho 35876) = rho 35873 - rho 35874 - rho 35875 := by
    linear_combination r3120
  have haddx :
      rho 35877 * (1 + 3021 * (rho 35872 * seg48In1AccX33 rho) * (rho 35871 * seg48In1AccY33 rho)) =
        rho 35872 * seg48In1AccX33 rho + rho 35871 * seg48In1AccY33 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35878 * (1 - 3021 * (rho 35872 * seg48In1AccX33 rho) * (rho 35871 * seg48In1AccY33 rho)) =
        (-1) * (rho 35872 * seg48In1AccX33 rho) - rho 35871 * seg48In1AccY33 rho +
          (seg48In1AccY33 rho - seg48In1AccX33 rho * (-1)) * (rho 35871 + rho 35872) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35878 * (1 - rho 35876) = rho 35873 - rho 35874 - rho 35875 := ha5
      _ = (-1) * rho 35874 - rho 35875 + (seg48In1AccY33 rho - seg48In1AccX33 rho * (-1)) *
          (rho 35871 + rho 35872) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX34 rho = seg48In1AccX33 rho - Bool.toZMod bit * (seg48In1AccX33 rho - rho 35877) := by
    have hd : rho 35879 = Bool.toZMod bit * (rho 35877 - seg48In1AccX33 rho) := by
      rw [← hbit]
      unfold seg48In1AccX33
      linear_combination -r3121
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY34 rho = seg48In1AccY33 rho - Bool.toZMod bit * (seg48In1AccY33 rho - rho 35878) := by
    have hd : rho 35880 = Bool.toZMod bit * (rho 35878 - seg48In1AccY33 rho) := by
      rw [← hbit]
      unfold seg48In1AccY33
      linear_combination -r3122
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35871 * rho 35872 = rho 35881 := by linear_combination r3123
  have hd1 : rho 35871 * rho 35871 = rho 35882 := by linear_combination r3124
  have hd2 : rho 35872 * rho 35872 = rho 35883 := by linear_combination r3125
  have hd3 : rho 35884 * (rho 35872 * rho 35872 + rho 35871 * rho 35871 * (-1)) =
      2 * (rho 35871 * rho 35872) := by
    rw [hd0, hd1, hd2]
    linear_combination r3126
  have hd4 : rho 35885 * (2 - (rho 35872 * rho 35872 + rho 35871 * rho 35871 * (-1))) =
      rho 35872 * rho 35872 - rho 35871 * rho 35871 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3127
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX33 rho, seg48In1AccY33 rho⟩ ⟨rho 35871, rho 35872⟩
    ⟨rho 35877, rho 35878⟩ ⟨seg48In1AccX34 rho, seg48In1AccY34 rho⟩ ⟨rho 35884, rho 35885⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows34 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3128 rho ∧ Seg48.relationRow3129 rho ∧ Seg48.relationRow3130 rho ∧ Seg48.relationRow3131 rho ∧ Seg48.relationRow3132 rho ∧ Seg48.relationRow3133 rho ∧ Seg48.relationRow3134 rho ∧ Seg48.relationRow3135 rho ∧ Seg48.relationRow3136 rho ∧ Seg48.relationRow3137 rho ∧ Seg48.relationRow3138 rho ∧ Seg48.relationRow3139 rho ∧ Seg48.relationRow3140 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart39 at p39

  rcases p39 with ⟨_, _, _, _, _, _, _, _, r3128, r3129, r3130, r3131, r3132, r3133, r3134, r3135, r3136, r3137, r3138, r3139, r3140, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3128, r3129, r3130, r3131, r3132, r3133, r3134, r3135, r3136, r3137, r3138, r3139, r3140⟩

theorem seg48In1_rung34 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35356 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX34 rho, seg48In1AccY34 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35884, rho 35885⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX34 rho, seg48In1AccY34 rho⟩ ⟨rho 35884, rho 35885⟩
        ⟨seg48In1AccX35 rho, seg48In1AccY35 rho⟩ ⟨rho 35897, rho 35898⟩ := by
  obtain ⟨r3128, r3129, r3130, r3131, r3132, r3133, r3134, r3135, r3136, r3137, r3138, r3139, r3140⟩ := seg48In1_rows34 rho h
  unfold Seg48.relationRow3128 at r3128

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3128

  unfold Seg48.relationRow3129 at r3129

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3129

  unfold Seg48.relationRow3130 at r3130

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3130

  unfold Seg48.relationRow3131 at r3131

  unfold Seg48.relationRow3132 at r3132

  unfold Seg48.relationRow3133 at r3133

  unfold Seg48.relationRow3134 at r3134

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3134

  unfold Seg48.relationRow3135 at r3135

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3135

  unfold Seg48.relationRow3136 at r3136

  unfold Seg48.relationRow3137 at r3137

  unfold Seg48.relationRow3138 at r3138

  unfold Seg48.relationRow3139 at r3139

  unfold Seg48.relationRow3140 at r3140

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX35 rho = seg48In1AccX34 rho + rho 35892 := by
    unfold seg48In1AccX35 seg48In1AccX34
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 34]

    ring

  have hnexty : seg48In1AccY35 rho = seg48In1AccY34 rho + rho 35893 := by
    unfold seg48In1AccY35 seg48In1AccY34
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 34]

    ring

  have ha0 : (rho 35884 + rho 35885) * (seg48In1AccX34 rho + seg48In1AccY34 rho) = rho 35886 := by
    unfold seg48In1AccX34 seg48In1AccY34
    linear_combination r3128
  have ha1 : rho 35885 * seg48In1AccX34 rho = rho 35887 := by
    unfold seg48In1AccX34
    linear_combination r3129
  have ha2 : rho 35884 * seg48In1AccY34 rho = rho 35888 := by
    unfold seg48In1AccY34
    linear_combination r3130
  have ha3 : 3021 * rho 35887 * rho 35888 = rho 35889 := by
    linear_combination r3131
  have ha4 : rho 35890 * (1 + rho 35889) = rho 35887 + rho 35888 := by
    linear_combination r3132
  have ha5 : rho 35891 * (1 - rho 35889) = rho 35886 - rho 35887 - rho 35888 := by
    linear_combination r3133
  have haddx :
      rho 35890 * (1 + 3021 * (rho 35885 * seg48In1AccX34 rho) * (rho 35884 * seg48In1AccY34 rho)) =
        rho 35885 * seg48In1AccX34 rho + rho 35884 * seg48In1AccY34 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35891 * (1 - 3021 * (rho 35885 * seg48In1AccX34 rho) * (rho 35884 * seg48In1AccY34 rho)) =
        (-1) * (rho 35885 * seg48In1AccX34 rho) - rho 35884 * seg48In1AccY34 rho +
          (seg48In1AccY34 rho - seg48In1AccX34 rho * (-1)) * (rho 35884 + rho 35885) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35891 * (1 - rho 35889) = rho 35886 - rho 35887 - rho 35888 := ha5
      _ = (-1) * rho 35887 - rho 35888 + (seg48In1AccY34 rho - seg48In1AccX34 rho * (-1)) *
          (rho 35884 + rho 35885) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX35 rho = seg48In1AccX34 rho - Bool.toZMod bit * (seg48In1AccX34 rho - rho 35890) := by
    have hd : rho 35892 = Bool.toZMod bit * (rho 35890 - seg48In1AccX34 rho) := by
      rw [← hbit]
      unfold seg48In1AccX34
      linear_combination -r3134
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY35 rho = seg48In1AccY34 rho - Bool.toZMod bit * (seg48In1AccY34 rho - rho 35891) := by
    have hd : rho 35893 = Bool.toZMod bit * (rho 35891 - seg48In1AccY34 rho) := by
      rw [← hbit]
      unfold seg48In1AccY34
      linear_combination -r3135
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35884 * rho 35885 = rho 35894 := by linear_combination r3136
  have hd1 : rho 35884 * rho 35884 = rho 35895 := by linear_combination r3137
  have hd2 : rho 35885 * rho 35885 = rho 35896 := by linear_combination r3138
  have hd3 : rho 35897 * (rho 35885 * rho 35885 + rho 35884 * rho 35884 * (-1)) =
      2 * (rho 35884 * rho 35885) := by
    rw [hd0, hd1, hd2]
    linear_combination r3139
  have hd4 : rho 35898 * (2 - (rho 35885 * rho 35885 + rho 35884 * rho 35884 * (-1))) =
      rho 35885 * rho 35885 - rho 35884 * rho 35884 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3140
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX34 rho, seg48In1AccY34 rho⟩ ⟨rho 35884, rho 35885⟩
    ⟨rho 35890, rho 35891⟩ ⟨seg48In1AccX35 rho, seg48In1AccY35 rho⟩ ⟨rho 35897, rho 35898⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows35 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3141 rho ∧ Seg48.relationRow3142 rho ∧ Seg48.relationRow3143 rho ∧ Seg48.relationRow3144 rho ∧ Seg48.relationRow3145 rho ∧ Seg48.relationRow3146 rho ∧ Seg48.relationRow3147 rho ∧ Seg48.relationRow3148 rho ∧ Seg48.relationRow3149 rho ∧ Seg48.relationRow3150 rho ∧ Seg48.relationRow3151 rho ∧ Seg48.relationRow3152 rho ∧ Seg48.relationRow3153 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart39 at p39

  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3141, r3142, r3143, r3144, r3145, r3146, r3147, r3148, r3149, r3150, r3151, r3152, r3153, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3141, r3142, r3143, r3144, r3145, r3146, r3147, r3148, r3149, r3150, r3151, r3152, r3153⟩

theorem seg48In1_rung35 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35357 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX35 rho, seg48In1AccY35 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35897, rho 35898⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX35 rho, seg48In1AccY35 rho⟩ ⟨rho 35897, rho 35898⟩
        ⟨seg48In1AccX36 rho, seg48In1AccY36 rho⟩ ⟨rho 35910, rho 35911⟩ := by
  obtain ⟨r3141, r3142, r3143, r3144, r3145, r3146, r3147, r3148, r3149, r3150, r3151, r3152, r3153⟩ := seg48In1_rows35 rho h
  unfold Seg48.relationRow3141 at r3141

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3141

  unfold Seg48.relationRow3142 at r3142

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3142

  unfold Seg48.relationRow3143 at r3143

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3143

  unfold Seg48.relationRow3144 at r3144

  unfold Seg48.relationRow3145 at r3145

  unfold Seg48.relationRow3146 at r3146

  unfold Seg48.relationRow3147 at r3147

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3147

  unfold Seg48.relationRow3148 at r3148

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3148

  unfold Seg48.relationRow3149 at r3149

  unfold Seg48.relationRow3150 at r3150

  unfold Seg48.relationRow3151 at r3151

  unfold Seg48.relationRow3152 at r3152

  unfold Seg48.relationRow3153 at r3153

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX36 rho = seg48In1AccX35 rho + rho 35905 := by
    unfold seg48In1AccX36 seg48In1AccX35
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 35]

    ring

  have hnexty : seg48In1AccY36 rho = seg48In1AccY35 rho + rho 35906 := by
    unfold seg48In1AccY36 seg48In1AccY35
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 35]

    ring

  have ha0 : (rho 35897 + rho 35898) * (seg48In1AccX35 rho + seg48In1AccY35 rho) = rho 35899 := by
    unfold seg48In1AccX35 seg48In1AccY35
    linear_combination r3141
  have ha1 : rho 35898 * seg48In1AccX35 rho = rho 35900 := by
    unfold seg48In1AccX35
    linear_combination r3142
  have ha2 : rho 35897 * seg48In1AccY35 rho = rho 35901 := by
    unfold seg48In1AccY35
    linear_combination r3143
  have ha3 : 3021 * rho 35900 * rho 35901 = rho 35902 := by
    linear_combination r3144
  have ha4 : rho 35903 * (1 + rho 35902) = rho 35900 + rho 35901 := by
    linear_combination r3145
  have ha5 : rho 35904 * (1 - rho 35902) = rho 35899 - rho 35900 - rho 35901 := by
    linear_combination r3146
  have haddx :
      rho 35903 * (1 + 3021 * (rho 35898 * seg48In1AccX35 rho) * (rho 35897 * seg48In1AccY35 rho)) =
        rho 35898 * seg48In1AccX35 rho + rho 35897 * seg48In1AccY35 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35904 * (1 - 3021 * (rho 35898 * seg48In1AccX35 rho) * (rho 35897 * seg48In1AccY35 rho)) =
        (-1) * (rho 35898 * seg48In1AccX35 rho) - rho 35897 * seg48In1AccY35 rho +
          (seg48In1AccY35 rho - seg48In1AccX35 rho * (-1)) * (rho 35897 + rho 35898) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35904 * (1 - rho 35902) = rho 35899 - rho 35900 - rho 35901 := ha5
      _ = (-1) * rho 35900 - rho 35901 + (seg48In1AccY35 rho - seg48In1AccX35 rho * (-1)) *
          (rho 35897 + rho 35898) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX36 rho = seg48In1AccX35 rho - Bool.toZMod bit * (seg48In1AccX35 rho - rho 35903) := by
    have hd : rho 35905 = Bool.toZMod bit * (rho 35903 - seg48In1AccX35 rho) := by
      rw [← hbit]
      unfold seg48In1AccX35
      linear_combination -r3147
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY36 rho = seg48In1AccY35 rho - Bool.toZMod bit * (seg48In1AccY35 rho - rho 35904) := by
    have hd : rho 35906 = Bool.toZMod bit * (rho 35904 - seg48In1AccY35 rho) := by
      rw [← hbit]
      unfold seg48In1AccY35
      linear_combination -r3148
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35897 * rho 35898 = rho 35907 := by linear_combination r3149
  have hd1 : rho 35897 * rho 35897 = rho 35908 := by linear_combination r3150
  have hd2 : rho 35898 * rho 35898 = rho 35909 := by linear_combination r3151
  have hd3 : rho 35910 * (rho 35898 * rho 35898 + rho 35897 * rho 35897 * (-1)) =
      2 * (rho 35897 * rho 35898) := by
    rw [hd0, hd1, hd2]
    linear_combination r3152
  have hd4 : rho 35911 * (2 - (rho 35898 * rho 35898 + rho 35897 * rho 35897 * (-1))) =
      rho 35898 * rho 35898 - rho 35897 * rho 35897 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3153
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX35 rho, seg48In1AccY35 rho⟩ ⟨rho 35897, rho 35898⟩
    ⟨rho 35903, rho 35904⟩ ⟨seg48In1AccX36 rho, seg48In1AccY36 rho⟩ ⟨rho 35910, rho 35911⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows36 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3154 rho ∧ Seg48.relationRow3155 rho ∧ Seg48.relationRow3156 rho ∧ Seg48.relationRow3157 rho ∧ Seg48.relationRow3158 rho ∧ Seg48.relationRow3159 rho ∧ Seg48.relationRow3160 rho ∧ Seg48.relationRow3161 rho ∧ Seg48.relationRow3162 rho ∧ Seg48.relationRow3163 rho ∧ Seg48.relationRow3164 rho ∧ Seg48.relationRow3165 rho ∧ Seg48.relationRow3166 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart39 at p39

  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3154, r3155, r3156, r3157, r3158, r3159, r3160, r3161, r3162, r3163, r3164, r3165, r3166, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3154, r3155, r3156, r3157, r3158, r3159, r3160, r3161, r3162, r3163, r3164, r3165, r3166⟩

theorem seg48In1_rung36 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35358 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX36 rho, seg48In1AccY36 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35910, rho 35911⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX36 rho, seg48In1AccY36 rho⟩ ⟨rho 35910, rho 35911⟩
        ⟨seg48In1AccX37 rho, seg48In1AccY37 rho⟩ ⟨rho 35923, rho 35924⟩ := by
  obtain ⟨r3154, r3155, r3156, r3157, r3158, r3159, r3160, r3161, r3162, r3163, r3164, r3165, r3166⟩ := seg48In1_rows36 rho h
  unfold Seg48.relationRow3154 at r3154

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3154

  unfold Seg48.relationRow3155 at r3155

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3155

  unfold Seg48.relationRow3156 at r3156

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3156

  unfold Seg48.relationRow3157 at r3157

  unfold Seg48.relationRow3158 at r3158

  unfold Seg48.relationRow3159 at r3159

  unfold Seg48.relationRow3160 at r3160

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3160

  unfold Seg48.relationRow3161 at r3161

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3161

  unfold Seg48.relationRow3162 at r3162

  unfold Seg48.relationRow3163 at r3163

  unfold Seg48.relationRow3164 at r3164

  unfold Seg48.relationRow3165 at r3165

  unfold Seg48.relationRow3166 at r3166

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX37 rho = seg48In1AccX36 rho + rho 35918 := by
    unfold seg48In1AccX37 seg48In1AccX36
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 36]

    ring

  have hnexty : seg48In1AccY37 rho = seg48In1AccY36 rho + rho 35919 := by
    unfold seg48In1AccY37 seg48In1AccY36
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 36]

    ring

  have ha0 : (rho 35910 + rho 35911) * (seg48In1AccX36 rho + seg48In1AccY36 rho) = rho 35912 := by
    unfold seg48In1AccX36 seg48In1AccY36
    linear_combination r3154
  have ha1 : rho 35911 * seg48In1AccX36 rho = rho 35913 := by
    unfold seg48In1AccX36
    linear_combination r3155
  have ha2 : rho 35910 * seg48In1AccY36 rho = rho 35914 := by
    unfold seg48In1AccY36
    linear_combination r3156
  have ha3 : 3021 * rho 35913 * rho 35914 = rho 35915 := by
    linear_combination r3157
  have ha4 : rho 35916 * (1 + rho 35915) = rho 35913 + rho 35914 := by
    linear_combination r3158
  have ha5 : rho 35917 * (1 - rho 35915) = rho 35912 - rho 35913 - rho 35914 := by
    linear_combination r3159
  have haddx :
      rho 35916 * (1 + 3021 * (rho 35911 * seg48In1AccX36 rho) * (rho 35910 * seg48In1AccY36 rho)) =
        rho 35911 * seg48In1AccX36 rho + rho 35910 * seg48In1AccY36 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35917 * (1 - 3021 * (rho 35911 * seg48In1AccX36 rho) * (rho 35910 * seg48In1AccY36 rho)) =
        (-1) * (rho 35911 * seg48In1AccX36 rho) - rho 35910 * seg48In1AccY36 rho +
          (seg48In1AccY36 rho - seg48In1AccX36 rho * (-1)) * (rho 35910 + rho 35911) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35917 * (1 - rho 35915) = rho 35912 - rho 35913 - rho 35914 := ha5
      _ = (-1) * rho 35913 - rho 35914 + (seg48In1AccY36 rho - seg48In1AccX36 rho * (-1)) *
          (rho 35910 + rho 35911) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX37 rho = seg48In1AccX36 rho - Bool.toZMod bit * (seg48In1AccX36 rho - rho 35916) := by
    have hd : rho 35918 = Bool.toZMod bit * (rho 35916 - seg48In1AccX36 rho) := by
      rw [← hbit]
      unfold seg48In1AccX36
      linear_combination -r3160
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY37 rho = seg48In1AccY36 rho - Bool.toZMod bit * (seg48In1AccY36 rho - rho 35917) := by
    have hd : rho 35919 = Bool.toZMod bit * (rho 35917 - seg48In1AccY36 rho) := by
      rw [← hbit]
      unfold seg48In1AccY36
      linear_combination -r3161
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35910 * rho 35911 = rho 35920 := by linear_combination r3162
  have hd1 : rho 35910 * rho 35910 = rho 35921 := by linear_combination r3163
  have hd2 : rho 35911 * rho 35911 = rho 35922 := by linear_combination r3164
  have hd3 : rho 35923 * (rho 35911 * rho 35911 + rho 35910 * rho 35910 * (-1)) =
      2 * (rho 35910 * rho 35911) := by
    rw [hd0, hd1, hd2]
    linear_combination r3165
  have hd4 : rho 35924 * (2 - (rho 35911 * rho 35911 + rho 35910 * rho 35910 * (-1))) =
      rho 35911 * rho 35911 - rho 35910 * rho 35910 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3166
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX36 rho, seg48In1AccY36 rho⟩ ⟨rho 35910, rho 35911⟩
    ⟨rho 35916, rho 35917⟩ ⟨seg48In1AccX37 rho, seg48In1AccY37 rho⟩ ⟨rho 35923, rho 35924⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows37 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3167 rho ∧ Seg48.relationRow3168 rho ∧ Seg48.relationRow3169 rho ∧ Seg48.relationRow3170 rho ∧ Seg48.relationRow3171 rho ∧ Seg48.relationRow3172 rho ∧ Seg48.relationRow3173 rho ∧ Seg48.relationRow3174 rho ∧ Seg48.relationRow3175 rho ∧ Seg48.relationRow3176 rho ∧ Seg48.relationRow3177 rho ∧ Seg48.relationRow3178 rho ∧ Seg48.relationRow3179 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart39 at p39

  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3167, r3168, r3169, r3170, r3171, r3172, r3173, r3174, r3175, r3176, r3177, r3178, r3179, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3167, r3168, r3169, r3170, r3171, r3172, r3173, r3174, r3175, r3176, r3177, r3178, r3179⟩

theorem seg48In1_rung37 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35359 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX37 rho, seg48In1AccY37 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35923, rho 35924⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX37 rho, seg48In1AccY37 rho⟩ ⟨rho 35923, rho 35924⟩
        ⟨seg48In1AccX38 rho, seg48In1AccY38 rho⟩ ⟨rho 35936, rho 35937⟩ := by
  obtain ⟨r3167, r3168, r3169, r3170, r3171, r3172, r3173, r3174, r3175, r3176, r3177, r3178, r3179⟩ := seg48In1_rows37 rho h
  unfold Seg48.relationRow3167 at r3167

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3167

  unfold Seg48.relationRow3168 at r3168

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3168

  unfold Seg48.relationRow3169 at r3169

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3169

  unfold Seg48.relationRow3170 at r3170

  unfold Seg48.relationRow3171 at r3171

  unfold Seg48.relationRow3172 at r3172

  unfold Seg48.relationRow3173 at r3173

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3173

  unfold Seg48.relationRow3174 at r3174

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3174

  unfold Seg48.relationRow3175 at r3175

  unfold Seg48.relationRow3176 at r3176

  unfold Seg48.relationRow3177 at r3177

  unfold Seg48.relationRow3178 at r3178

  unfold Seg48.relationRow3179 at r3179

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX38 rho = seg48In1AccX37 rho + rho 35931 := by
    unfold seg48In1AccX38 seg48In1AccX37
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 37]

    ring

  have hnexty : seg48In1AccY38 rho = seg48In1AccY37 rho + rho 35932 := by
    unfold seg48In1AccY38 seg48In1AccY37
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 37]

    ring

  have ha0 : (rho 35923 + rho 35924) * (seg48In1AccX37 rho + seg48In1AccY37 rho) = rho 35925 := by
    unfold seg48In1AccX37 seg48In1AccY37
    linear_combination r3167
  have ha1 : rho 35924 * seg48In1AccX37 rho = rho 35926 := by
    unfold seg48In1AccX37
    linear_combination r3168
  have ha2 : rho 35923 * seg48In1AccY37 rho = rho 35927 := by
    unfold seg48In1AccY37
    linear_combination r3169
  have ha3 : 3021 * rho 35926 * rho 35927 = rho 35928 := by
    linear_combination r3170
  have ha4 : rho 35929 * (1 + rho 35928) = rho 35926 + rho 35927 := by
    linear_combination r3171
  have ha5 : rho 35930 * (1 - rho 35928) = rho 35925 - rho 35926 - rho 35927 := by
    linear_combination r3172
  have haddx :
      rho 35929 * (1 + 3021 * (rho 35924 * seg48In1AccX37 rho) * (rho 35923 * seg48In1AccY37 rho)) =
        rho 35924 * seg48In1AccX37 rho + rho 35923 * seg48In1AccY37 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35930 * (1 - 3021 * (rho 35924 * seg48In1AccX37 rho) * (rho 35923 * seg48In1AccY37 rho)) =
        (-1) * (rho 35924 * seg48In1AccX37 rho) - rho 35923 * seg48In1AccY37 rho +
          (seg48In1AccY37 rho - seg48In1AccX37 rho * (-1)) * (rho 35923 + rho 35924) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35930 * (1 - rho 35928) = rho 35925 - rho 35926 - rho 35927 := ha5
      _ = (-1) * rho 35926 - rho 35927 + (seg48In1AccY37 rho - seg48In1AccX37 rho * (-1)) *
          (rho 35923 + rho 35924) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX38 rho = seg48In1AccX37 rho - Bool.toZMod bit * (seg48In1AccX37 rho - rho 35929) := by
    have hd : rho 35931 = Bool.toZMod bit * (rho 35929 - seg48In1AccX37 rho) := by
      rw [← hbit]
      unfold seg48In1AccX37
      linear_combination -r3173
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY38 rho = seg48In1AccY37 rho - Bool.toZMod bit * (seg48In1AccY37 rho - rho 35930) := by
    have hd : rho 35932 = Bool.toZMod bit * (rho 35930 - seg48In1AccY37 rho) := by
      rw [← hbit]
      unfold seg48In1AccY37
      linear_combination -r3174
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35923 * rho 35924 = rho 35933 := by linear_combination r3175
  have hd1 : rho 35923 * rho 35923 = rho 35934 := by linear_combination r3176
  have hd2 : rho 35924 * rho 35924 = rho 35935 := by linear_combination r3177
  have hd3 : rho 35936 * (rho 35924 * rho 35924 + rho 35923 * rho 35923 * (-1)) =
      2 * (rho 35923 * rho 35924) := by
    rw [hd0, hd1, hd2]
    linear_combination r3178
  have hd4 : rho 35937 * (2 - (rho 35924 * rho 35924 + rho 35923 * rho 35923 * (-1))) =
      rho 35924 * rho 35924 - rho 35923 * rho 35923 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3179
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX37 rho, seg48In1AccY37 rho⟩ ⟨rho 35923, rho 35924⟩
    ⟨rho 35929, rho 35930⟩ ⟨seg48In1AccX38 rho, seg48In1AccY38 rho⟩ ⟨rho 35936, rho 35937⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows38 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3180 rho ∧ Seg48.relationRow3181 rho ∧ Seg48.relationRow3182 rho ∧ Seg48.relationRow3183 rho ∧ Seg48.relationRow3184 rho ∧ Seg48.relationRow3185 rho ∧ Seg48.relationRow3186 rho ∧ Seg48.relationRow3187 rho ∧ Seg48.relationRow3188 rho ∧ Seg48.relationRow3189 rho ∧ Seg48.relationRow3190 rho ∧ Seg48.relationRow3191 rho ∧ Seg48.relationRow3192 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart39 at p39

  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3180, r3181, r3182, r3183, r3184, r3185, r3186, r3187, r3188, r3189, r3190, r3191, r3192, _, _, _, _, _, _, _⟩

  exact ⟨r3180, r3181, r3182, r3183, r3184, r3185, r3186, r3187, r3188, r3189, r3190, r3191, r3192⟩

theorem seg48In1_rung38 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35360 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX38 rho, seg48In1AccY38 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35936, rho 35937⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX38 rho, seg48In1AccY38 rho⟩ ⟨rho 35936, rho 35937⟩
        ⟨seg48In1AccX39 rho, seg48In1AccY39 rho⟩ ⟨rho 35949, rho 35950⟩ := by
  obtain ⟨r3180, r3181, r3182, r3183, r3184, r3185, r3186, r3187, r3188, r3189, r3190, r3191, r3192⟩ := seg48In1_rows38 rho h
  unfold Seg48.relationRow3180 at r3180

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3180

  unfold Seg48.relationRow3181 at r3181

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3181

  unfold Seg48.relationRow3182 at r3182

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3182

  unfold Seg48.relationRow3183 at r3183

  unfold Seg48.relationRow3184 at r3184

  unfold Seg48.relationRow3185 at r3185

  unfold Seg48.relationRow3186 at r3186

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3186

  unfold Seg48.relationRow3187 at r3187

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3187

  unfold Seg48.relationRow3188 at r3188

  unfold Seg48.relationRow3189 at r3189

  unfold Seg48.relationRow3190 at r3190

  unfold Seg48.relationRow3191 at r3191

  unfold Seg48.relationRow3192 at r3192

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX39 rho = seg48In1AccX38 rho + rho 35944 := by
    unfold seg48In1AccX39 seg48In1AccX38
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 38]

    ring

  have hnexty : seg48In1AccY39 rho = seg48In1AccY38 rho + rho 35945 := by
    unfold seg48In1AccY39 seg48In1AccY38
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 38]

    ring

  have ha0 : (rho 35936 + rho 35937) * (seg48In1AccX38 rho + seg48In1AccY38 rho) = rho 35938 := by
    unfold seg48In1AccX38 seg48In1AccY38
    linear_combination r3180
  have ha1 : rho 35937 * seg48In1AccX38 rho = rho 35939 := by
    unfold seg48In1AccX38
    linear_combination r3181
  have ha2 : rho 35936 * seg48In1AccY38 rho = rho 35940 := by
    unfold seg48In1AccY38
    linear_combination r3182
  have ha3 : 3021 * rho 35939 * rho 35940 = rho 35941 := by
    linear_combination r3183
  have ha4 : rho 35942 * (1 + rho 35941) = rho 35939 + rho 35940 := by
    linear_combination r3184
  have ha5 : rho 35943 * (1 - rho 35941) = rho 35938 - rho 35939 - rho 35940 := by
    linear_combination r3185
  have haddx :
      rho 35942 * (1 + 3021 * (rho 35937 * seg48In1AccX38 rho) * (rho 35936 * seg48In1AccY38 rho)) =
        rho 35937 * seg48In1AccX38 rho + rho 35936 * seg48In1AccY38 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35943 * (1 - 3021 * (rho 35937 * seg48In1AccX38 rho) * (rho 35936 * seg48In1AccY38 rho)) =
        (-1) * (rho 35937 * seg48In1AccX38 rho) - rho 35936 * seg48In1AccY38 rho +
          (seg48In1AccY38 rho - seg48In1AccX38 rho * (-1)) * (rho 35936 + rho 35937) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35943 * (1 - rho 35941) = rho 35938 - rho 35939 - rho 35940 := ha5
      _ = (-1) * rho 35939 - rho 35940 + (seg48In1AccY38 rho - seg48In1AccX38 rho * (-1)) *
          (rho 35936 + rho 35937) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX39 rho = seg48In1AccX38 rho - Bool.toZMod bit * (seg48In1AccX38 rho - rho 35942) := by
    have hd : rho 35944 = Bool.toZMod bit * (rho 35942 - seg48In1AccX38 rho) := by
      rw [← hbit]
      unfold seg48In1AccX38
      linear_combination -r3186
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY39 rho = seg48In1AccY38 rho - Bool.toZMod bit * (seg48In1AccY38 rho - rho 35943) := by
    have hd : rho 35945 = Bool.toZMod bit * (rho 35943 - seg48In1AccY38 rho) := by
      rw [← hbit]
      unfold seg48In1AccY38
      linear_combination -r3187
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35936 * rho 35937 = rho 35946 := by linear_combination r3188
  have hd1 : rho 35936 * rho 35936 = rho 35947 := by linear_combination r3189
  have hd2 : rho 35937 * rho 35937 = rho 35948 := by linear_combination r3190
  have hd3 : rho 35949 * (rho 35937 * rho 35937 + rho 35936 * rho 35936 * (-1)) =
      2 * (rho 35936 * rho 35937) := by
    rw [hd0, hd1, hd2]
    linear_combination r3191
  have hd4 : rho 35950 * (2 - (rho 35937 * rho 35937 + rho 35936 * rho 35936 * (-1))) =
      rho 35937 * rho 35937 - rho 35936 * rho 35936 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3192
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX38 rho, seg48In1AccY38 rho⟩ ⟨rho 35936, rho 35937⟩
    ⟨rho 35942, rho 35943⟩ ⟨seg48In1AccX39 rho, seg48In1AccY39 rho⟩ ⟨rho 35949, rho 35950⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows39 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3193 rho ∧ Seg48.relationRow3194 rho ∧ Seg48.relationRow3195 rho ∧ Seg48.relationRow3196 rho ∧ Seg48.relationRow3197 rho ∧ Seg48.relationRow3198 rho ∧ Seg48.relationRow3199 rho ∧ Seg48.relationRow3200 rho ∧ Seg48.relationRow3201 rho ∧ Seg48.relationRow3202 rho ∧ Seg48.relationRow3203 rho ∧ Seg48.relationRow3204 rho ∧ Seg48.relationRow3205 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart39 at p39

  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3193, r3194, r3195, r3196, r3197, r3198, r3199⟩

  unfold Seg48.relationPart40 at p40

  rcases p40 with ⟨r3200, r3201, r3202, r3203, r3204, r3205, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3193, r3194, r3195, r3196, r3197, r3198, r3199, r3200, r3201, r3202, r3203, r3204, r3205⟩

theorem seg48In1_rung39 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35361 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX39 rho, seg48In1AccY39 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35949, rho 35950⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX39 rho, seg48In1AccY39 rho⟩ ⟨rho 35949, rho 35950⟩
        ⟨seg48In1AccX40 rho, seg48In1AccY40 rho⟩ ⟨rho 35962, rho 35963⟩ := by
  obtain ⟨r3193, r3194, r3195, r3196, r3197, r3198, r3199, r3200, r3201, r3202, r3203, r3204, r3205⟩ := seg48In1_rows39 rho h
  unfold Seg48.relationRow3193 at r3193

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3193

  unfold Seg48.relationRow3194 at r3194

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3194

  unfold Seg48.relationRow3195 at r3195

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3195

  unfold Seg48.relationRow3196 at r3196

  unfold Seg48.relationRow3197 at r3197

  unfold Seg48.relationRow3198 at r3198

  unfold Seg48.relationRow3199 at r3199

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3199

  unfold Seg48.relationRow3200 at r3200

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3200

  unfold Seg48.relationRow3201 at r3201

  unfold Seg48.relationRow3202 at r3202

  unfold Seg48.relationRow3203 at r3203

  unfold Seg48.relationRow3204 at r3204

  unfold Seg48.relationRow3205 at r3205

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX40 rho = seg48In1AccX39 rho + rho 35957 := by
    unfold seg48In1AccX40 seg48In1AccX39
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 39]

    ring

  have hnexty : seg48In1AccY40 rho = seg48In1AccY39 rho + rho 35958 := by
    unfold seg48In1AccY40 seg48In1AccY39
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 39]

    ring

  have ha0 : (rho 35949 + rho 35950) * (seg48In1AccX39 rho + seg48In1AccY39 rho) = rho 35951 := by
    unfold seg48In1AccX39 seg48In1AccY39
    linear_combination r3193
  have ha1 : rho 35950 * seg48In1AccX39 rho = rho 35952 := by
    unfold seg48In1AccX39
    linear_combination r3194
  have ha2 : rho 35949 * seg48In1AccY39 rho = rho 35953 := by
    unfold seg48In1AccY39
    linear_combination r3195
  have ha3 : 3021 * rho 35952 * rho 35953 = rho 35954 := by
    linear_combination r3196
  have ha4 : rho 35955 * (1 + rho 35954) = rho 35952 + rho 35953 := by
    linear_combination r3197
  have ha5 : rho 35956 * (1 - rho 35954) = rho 35951 - rho 35952 - rho 35953 := by
    linear_combination r3198
  have haddx :
      rho 35955 * (1 + 3021 * (rho 35950 * seg48In1AccX39 rho) * (rho 35949 * seg48In1AccY39 rho)) =
        rho 35950 * seg48In1AccX39 rho + rho 35949 * seg48In1AccY39 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35956 * (1 - 3021 * (rho 35950 * seg48In1AccX39 rho) * (rho 35949 * seg48In1AccY39 rho)) =
        (-1) * (rho 35950 * seg48In1AccX39 rho) - rho 35949 * seg48In1AccY39 rho +
          (seg48In1AccY39 rho - seg48In1AccX39 rho * (-1)) * (rho 35949 + rho 35950) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35956 * (1 - rho 35954) = rho 35951 - rho 35952 - rho 35953 := ha5
      _ = (-1) * rho 35952 - rho 35953 + (seg48In1AccY39 rho - seg48In1AccX39 rho * (-1)) *
          (rho 35949 + rho 35950) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX40 rho = seg48In1AccX39 rho - Bool.toZMod bit * (seg48In1AccX39 rho - rho 35955) := by
    have hd : rho 35957 = Bool.toZMod bit * (rho 35955 - seg48In1AccX39 rho) := by
      rw [← hbit]
      unfold seg48In1AccX39
      linear_combination -r3199
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY40 rho = seg48In1AccY39 rho - Bool.toZMod bit * (seg48In1AccY39 rho - rho 35956) := by
    have hd : rho 35958 = Bool.toZMod bit * (rho 35956 - seg48In1AccY39 rho) := by
      rw [← hbit]
      unfold seg48In1AccY39
      linear_combination -r3200
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35949 * rho 35950 = rho 35959 := by linear_combination r3201
  have hd1 : rho 35949 * rho 35949 = rho 35960 := by linear_combination r3202
  have hd2 : rho 35950 * rho 35950 = rho 35961 := by linear_combination r3203
  have hd3 : rho 35962 * (rho 35950 * rho 35950 + rho 35949 * rho 35949 * (-1)) =
      2 * (rho 35949 * rho 35950) := by
    rw [hd0, hd1, hd2]
    linear_combination r3204
  have hd4 : rho 35963 * (2 - (rho 35950 * rho 35950 + rho 35949 * rho 35949 * (-1))) =
      rho 35950 * rho 35950 - rho 35949 * rho 35949 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3205
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX39 rho, seg48In1AccY39 rho⟩ ⟨rho 35949, rho 35950⟩
    ⟨rho 35955, rho 35956⟩ ⟨seg48In1AccX40 rho, seg48In1AccY40 rho⟩ ⟨rho 35962, rho 35963⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows40 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3206 rho ∧ Seg48.relationRow3207 rho ∧ Seg48.relationRow3208 rho ∧ Seg48.relationRow3209 rho ∧ Seg48.relationRow3210 rho ∧ Seg48.relationRow3211 rho ∧ Seg48.relationRow3212 rho ∧ Seg48.relationRow3213 rho ∧ Seg48.relationRow3214 rho ∧ Seg48.relationRow3215 rho ∧ Seg48.relationRow3216 rho ∧ Seg48.relationRow3217 rho ∧ Seg48.relationRow3218 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart40 at p40

  rcases p40 with ⟨_, _, _, _, _, _, r3206, r3207, r3208, r3209, r3210, r3211, r3212, r3213, r3214, r3215, r3216, r3217, r3218, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3206, r3207, r3208, r3209, r3210, r3211, r3212, r3213, r3214, r3215, r3216, r3217, r3218⟩

theorem seg48In1_rung40 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35362 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX40 rho, seg48In1AccY40 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35962, rho 35963⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX40 rho, seg48In1AccY40 rho⟩ ⟨rho 35962, rho 35963⟩
        ⟨seg48In1AccX41 rho, seg48In1AccY41 rho⟩ ⟨rho 35975, rho 35976⟩ := by
  obtain ⟨r3206, r3207, r3208, r3209, r3210, r3211, r3212, r3213, r3214, r3215, r3216, r3217, r3218⟩ := seg48In1_rows40 rho h
  unfold Seg48.relationRow3206 at r3206

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3206

  unfold Seg48.relationRow3207 at r3207

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3207

  unfold Seg48.relationRow3208 at r3208

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3208

  unfold Seg48.relationRow3209 at r3209

  unfold Seg48.relationRow3210 at r3210

  unfold Seg48.relationRow3211 at r3211

  unfold Seg48.relationRow3212 at r3212

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3212

  unfold Seg48.relationRow3213 at r3213

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3213

  unfold Seg48.relationRow3214 at r3214

  unfold Seg48.relationRow3215 at r3215

  unfold Seg48.relationRow3216 at r3216

  unfold Seg48.relationRow3217 at r3217

  unfold Seg48.relationRow3218 at r3218

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX41 rho = seg48In1AccX40 rho + rho 35970 := by
    unfold seg48In1AccX41 seg48In1AccX40
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 40]

    ring

  have hnexty : seg48In1AccY41 rho = seg48In1AccY40 rho + rho 35971 := by
    unfold seg48In1AccY41 seg48In1AccY40
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 40]

    ring

  have ha0 : (rho 35962 + rho 35963) * (seg48In1AccX40 rho + seg48In1AccY40 rho) = rho 35964 := by
    unfold seg48In1AccX40 seg48In1AccY40
    linear_combination r3206
  have ha1 : rho 35963 * seg48In1AccX40 rho = rho 35965 := by
    unfold seg48In1AccX40
    linear_combination r3207
  have ha2 : rho 35962 * seg48In1AccY40 rho = rho 35966 := by
    unfold seg48In1AccY40
    linear_combination r3208
  have ha3 : 3021 * rho 35965 * rho 35966 = rho 35967 := by
    linear_combination r3209
  have ha4 : rho 35968 * (1 + rho 35967) = rho 35965 + rho 35966 := by
    linear_combination r3210
  have ha5 : rho 35969 * (1 - rho 35967) = rho 35964 - rho 35965 - rho 35966 := by
    linear_combination r3211
  have haddx :
      rho 35968 * (1 + 3021 * (rho 35963 * seg48In1AccX40 rho) * (rho 35962 * seg48In1AccY40 rho)) =
        rho 35963 * seg48In1AccX40 rho + rho 35962 * seg48In1AccY40 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35969 * (1 - 3021 * (rho 35963 * seg48In1AccX40 rho) * (rho 35962 * seg48In1AccY40 rho)) =
        (-1) * (rho 35963 * seg48In1AccX40 rho) - rho 35962 * seg48In1AccY40 rho +
          (seg48In1AccY40 rho - seg48In1AccX40 rho * (-1)) * (rho 35962 + rho 35963) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35969 * (1 - rho 35967) = rho 35964 - rho 35965 - rho 35966 := ha5
      _ = (-1) * rho 35965 - rho 35966 + (seg48In1AccY40 rho - seg48In1AccX40 rho * (-1)) *
          (rho 35962 + rho 35963) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX41 rho = seg48In1AccX40 rho - Bool.toZMod bit * (seg48In1AccX40 rho - rho 35968) := by
    have hd : rho 35970 = Bool.toZMod bit * (rho 35968 - seg48In1AccX40 rho) := by
      rw [← hbit]
      unfold seg48In1AccX40
      linear_combination -r3212
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY41 rho = seg48In1AccY40 rho - Bool.toZMod bit * (seg48In1AccY40 rho - rho 35969) := by
    have hd : rho 35971 = Bool.toZMod bit * (rho 35969 - seg48In1AccY40 rho) := by
      rw [← hbit]
      unfold seg48In1AccY40
      linear_combination -r3213
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35962 * rho 35963 = rho 35972 := by linear_combination r3214
  have hd1 : rho 35962 * rho 35962 = rho 35973 := by linear_combination r3215
  have hd2 : rho 35963 * rho 35963 = rho 35974 := by linear_combination r3216
  have hd3 : rho 35975 * (rho 35963 * rho 35963 + rho 35962 * rho 35962 * (-1)) =
      2 * (rho 35962 * rho 35963) := by
    rw [hd0, hd1, hd2]
    linear_combination r3217
  have hd4 : rho 35976 * (2 - (rho 35963 * rho 35963 + rho 35962 * rho 35962 * (-1))) =
      rho 35963 * rho 35963 - rho 35962 * rho 35962 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3218
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX40 rho, seg48In1AccY40 rho⟩ ⟨rho 35962, rho 35963⟩
    ⟨rho 35968, rho 35969⟩ ⟨seg48In1AccX41 rho, seg48In1AccY41 rho⟩ ⟨rho 35975, rho 35976⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows41 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3219 rho ∧ Seg48.relationRow3220 rho ∧ Seg48.relationRow3221 rho ∧ Seg48.relationRow3222 rho ∧ Seg48.relationRow3223 rho ∧ Seg48.relationRow3224 rho ∧ Seg48.relationRow3225 rho ∧ Seg48.relationRow3226 rho ∧ Seg48.relationRow3227 rho ∧ Seg48.relationRow3228 rho ∧ Seg48.relationRow3229 rho ∧ Seg48.relationRow3230 rho ∧ Seg48.relationRow3231 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart40 at p40

  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3219, r3220, r3221, r3222, r3223, r3224, r3225, r3226, r3227, r3228, r3229, r3230, r3231, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3219, r3220, r3221, r3222, r3223, r3224, r3225, r3226, r3227, r3228, r3229, r3230, r3231⟩

theorem seg48In1_rung41 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35363 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX41 rho, seg48In1AccY41 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35975, rho 35976⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX41 rho, seg48In1AccY41 rho⟩ ⟨rho 35975, rho 35976⟩
        ⟨seg48In1AccX42 rho, seg48In1AccY42 rho⟩ ⟨rho 35988, rho 35989⟩ := by
  obtain ⟨r3219, r3220, r3221, r3222, r3223, r3224, r3225, r3226, r3227, r3228, r3229, r3230, r3231⟩ := seg48In1_rows41 rho h
  unfold Seg48.relationRow3219 at r3219

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3219

  unfold Seg48.relationRow3220 at r3220

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3220

  unfold Seg48.relationRow3221 at r3221

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3221

  unfold Seg48.relationRow3222 at r3222

  unfold Seg48.relationRow3223 at r3223

  unfold Seg48.relationRow3224 at r3224

  unfold Seg48.relationRow3225 at r3225

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3225

  unfold Seg48.relationRow3226 at r3226

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3226

  unfold Seg48.relationRow3227 at r3227

  unfold Seg48.relationRow3228 at r3228

  unfold Seg48.relationRow3229 at r3229

  unfold Seg48.relationRow3230 at r3230

  unfold Seg48.relationRow3231 at r3231

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX42 rho = seg48In1AccX41 rho + rho 35983 := by
    unfold seg48In1AccX42 seg48In1AccX41
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 41]

    ring

  have hnexty : seg48In1AccY42 rho = seg48In1AccY41 rho + rho 35984 := by
    unfold seg48In1AccY42 seg48In1AccY41
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 41]

    ring

  have ha0 : (rho 35975 + rho 35976) * (seg48In1AccX41 rho + seg48In1AccY41 rho) = rho 35977 := by
    unfold seg48In1AccX41 seg48In1AccY41
    linear_combination r3219
  have ha1 : rho 35976 * seg48In1AccX41 rho = rho 35978 := by
    unfold seg48In1AccX41
    linear_combination r3220
  have ha2 : rho 35975 * seg48In1AccY41 rho = rho 35979 := by
    unfold seg48In1AccY41
    linear_combination r3221
  have ha3 : 3021 * rho 35978 * rho 35979 = rho 35980 := by
    linear_combination r3222
  have ha4 : rho 35981 * (1 + rho 35980) = rho 35978 + rho 35979 := by
    linear_combination r3223
  have ha5 : rho 35982 * (1 - rho 35980) = rho 35977 - rho 35978 - rho 35979 := by
    linear_combination r3224
  have haddx :
      rho 35981 * (1 + 3021 * (rho 35976 * seg48In1AccX41 rho) * (rho 35975 * seg48In1AccY41 rho)) =
        rho 35976 * seg48In1AccX41 rho + rho 35975 * seg48In1AccY41 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35982 * (1 - 3021 * (rho 35976 * seg48In1AccX41 rho) * (rho 35975 * seg48In1AccY41 rho)) =
        (-1) * (rho 35976 * seg48In1AccX41 rho) - rho 35975 * seg48In1AccY41 rho +
          (seg48In1AccY41 rho - seg48In1AccX41 rho * (-1)) * (rho 35975 + rho 35976) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35982 * (1 - rho 35980) = rho 35977 - rho 35978 - rho 35979 := ha5
      _ = (-1) * rho 35978 - rho 35979 + (seg48In1AccY41 rho - seg48In1AccX41 rho * (-1)) *
          (rho 35975 + rho 35976) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX42 rho = seg48In1AccX41 rho - Bool.toZMod bit * (seg48In1AccX41 rho - rho 35981) := by
    have hd : rho 35983 = Bool.toZMod bit * (rho 35981 - seg48In1AccX41 rho) := by
      rw [← hbit]
      unfold seg48In1AccX41
      linear_combination -r3225
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY42 rho = seg48In1AccY41 rho - Bool.toZMod bit * (seg48In1AccY41 rho - rho 35982) := by
    have hd : rho 35984 = Bool.toZMod bit * (rho 35982 - seg48In1AccY41 rho) := by
      rw [← hbit]
      unfold seg48In1AccY41
      linear_combination -r3226
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35975 * rho 35976 = rho 35985 := by linear_combination r3227
  have hd1 : rho 35975 * rho 35975 = rho 35986 := by linear_combination r3228
  have hd2 : rho 35976 * rho 35976 = rho 35987 := by linear_combination r3229
  have hd3 : rho 35988 * (rho 35976 * rho 35976 + rho 35975 * rho 35975 * (-1)) =
      2 * (rho 35975 * rho 35976) := by
    rw [hd0, hd1, hd2]
    linear_combination r3230
  have hd4 : rho 35989 * (2 - (rho 35976 * rho 35976 + rho 35975 * rho 35975 * (-1))) =
      rho 35976 * rho 35976 - rho 35975 * rho 35975 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3231
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX41 rho, seg48In1AccY41 rho⟩ ⟨rho 35975, rho 35976⟩
    ⟨rho 35981, rho 35982⟩ ⟨seg48In1AccX42 rho, seg48In1AccY42 rho⟩ ⟨rho 35988, rho 35989⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows42 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3232 rho ∧ Seg48.relationRow3233 rho ∧ Seg48.relationRow3234 rho ∧ Seg48.relationRow3235 rho ∧ Seg48.relationRow3236 rho ∧ Seg48.relationRow3237 rho ∧ Seg48.relationRow3238 rho ∧ Seg48.relationRow3239 rho ∧ Seg48.relationRow3240 rho ∧ Seg48.relationRow3241 rho ∧ Seg48.relationRow3242 rho ∧ Seg48.relationRow3243 rho ∧ Seg48.relationRow3244 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart40 at p40

  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3232, r3233, r3234, r3235, r3236, r3237, r3238, r3239, r3240, r3241, r3242, r3243, r3244, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3232, r3233, r3234, r3235, r3236, r3237, r3238, r3239, r3240, r3241, r3242, r3243, r3244⟩

theorem seg48In1_rung42 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35364 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX42 rho, seg48In1AccY42 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35988, rho 35989⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX42 rho, seg48In1AccY42 rho⟩ ⟨rho 35988, rho 35989⟩
        ⟨seg48In1AccX43 rho, seg48In1AccY43 rho⟩ ⟨rho 36001, rho 36002⟩ := by
  obtain ⟨r3232, r3233, r3234, r3235, r3236, r3237, r3238, r3239, r3240, r3241, r3242, r3243, r3244⟩ := seg48In1_rows42 rho h
  unfold Seg48.relationRow3232 at r3232

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3232

  unfold Seg48.relationRow3233 at r3233

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3233

  unfold Seg48.relationRow3234 at r3234

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3234

  unfold Seg48.relationRow3235 at r3235

  unfold Seg48.relationRow3236 at r3236

  unfold Seg48.relationRow3237 at r3237

  unfold Seg48.relationRow3238 at r3238

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3238

  unfold Seg48.relationRow3239 at r3239

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3239

  unfold Seg48.relationRow3240 at r3240

  unfold Seg48.relationRow3241 at r3241

  unfold Seg48.relationRow3242 at r3242

  unfold Seg48.relationRow3243 at r3243

  unfold Seg48.relationRow3244 at r3244

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX43 rho = seg48In1AccX42 rho + rho 35996 := by
    unfold seg48In1AccX43 seg48In1AccX42
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 42]

    ring

  have hnexty : seg48In1AccY43 rho = seg48In1AccY42 rho + rho 35997 := by
    unfold seg48In1AccY43 seg48In1AccY42
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 42]

    ring

  have ha0 : (rho 35988 + rho 35989) * (seg48In1AccX42 rho + seg48In1AccY42 rho) = rho 35990 := by
    unfold seg48In1AccX42 seg48In1AccY42
    linear_combination r3232
  have ha1 : rho 35989 * seg48In1AccX42 rho = rho 35991 := by
    unfold seg48In1AccX42
    linear_combination r3233
  have ha2 : rho 35988 * seg48In1AccY42 rho = rho 35992 := by
    unfold seg48In1AccY42
    linear_combination r3234
  have ha3 : 3021 * rho 35991 * rho 35992 = rho 35993 := by
    linear_combination r3235
  have ha4 : rho 35994 * (1 + rho 35993) = rho 35991 + rho 35992 := by
    linear_combination r3236
  have ha5 : rho 35995 * (1 - rho 35993) = rho 35990 - rho 35991 - rho 35992 := by
    linear_combination r3237
  have haddx :
      rho 35994 * (1 + 3021 * (rho 35989 * seg48In1AccX42 rho) * (rho 35988 * seg48In1AccY42 rho)) =
        rho 35989 * seg48In1AccX42 rho + rho 35988 * seg48In1AccY42 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35995 * (1 - 3021 * (rho 35989 * seg48In1AccX42 rho) * (rho 35988 * seg48In1AccY42 rho)) =
        (-1) * (rho 35989 * seg48In1AccX42 rho) - rho 35988 * seg48In1AccY42 rho +
          (seg48In1AccY42 rho - seg48In1AccX42 rho * (-1)) * (rho 35988 + rho 35989) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35995 * (1 - rho 35993) = rho 35990 - rho 35991 - rho 35992 := ha5
      _ = (-1) * rho 35991 - rho 35992 + (seg48In1AccY42 rho - seg48In1AccX42 rho * (-1)) *
          (rho 35988 + rho 35989) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX43 rho = seg48In1AccX42 rho - Bool.toZMod bit * (seg48In1AccX42 rho - rho 35994) := by
    have hd : rho 35996 = Bool.toZMod bit * (rho 35994 - seg48In1AccX42 rho) := by
      rw [← hbit]
      unfold seg48In1AccX42
      linear_combination -r3238
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY43 rho = seg48In1AccY42 rho - Bool.toZMod bit * (seg48In1AccY42 rho - rho 35995) := by
    have hd : rho 35997 = Bool.toZMod bit * (rho 35995 - seg48In1AccY42 rho) := by
      rw [← hbit]
      unfold seg48In1AccY42
      linear_combination -r3239
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35988 * rho 35989 = rho 35998 := by linear_combination r3240
  have hd1 : rho 35988 * rho 35988 = rho 35999 := by linear_combination r3241
  have hd2 : rho 35989 * rho 35989 = rho 36000 := by linear_combination r3242
  have hd3 : rho 36001 * (rho 35989 * rho 35989 + rho 35988 * rho 35988 * (-1)) =
      2 * (rho 35988 * rho 35989) := by
    rw [hd0, hd1, hd2]
    linear_combination r3243
  have hd4 : rho 36002 * (2 - (rho 35989 * rho 35989 + rho 35988 * rho 35988 * (-1))) =
      rho 35989 * rho 35989 - rho 35988 * rho 35988 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3244
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX42 rho, seg48In1AccY42 rho⟩ ⟨rho 35988, rho 35989⟩
    ⟨rho 35994, rho 35995⟩ ⟨seg48In1AccX43 rho, seg48In1AccY43 rho⟩ ⟨rho 36001, rho 36002⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows43 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3245 rho ∧ Seg48.relationRow3246 rho ∧ Seg48.relationRow3247 rho ∧ Seg48.relationRow3248 rho ∧ Seg48.relationRow3249 rho ∧ Seg48.relationRow3250 rho ∧ Seg48.relationRow3251 rho ∧ Seg48.relationRow3252 rho ∧ Seg48.relationRow3253 rho ∧ Seg48.relationRow3254 rho ∧ Seg48.relationRow3255 rho ∧ Seg48.relationRow3256 rho ∧ Seg48.relationRow3257 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart40 at p40

  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3245, r3246, r3247, r3248, r3249, r3250, r3251, r3252, r3253, r3254, r3255, r3256, r3257, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3245, r3246, r3247, r3248, r3249, r3250, r3251, r3252, r3253, r3254, r3255, r3256, r3257⟩

theorem seg48In1_rung43 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35365 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX43 rho, seg48In1AccY43 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36001, rho 36002⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX43 rho, seg48In1AccY43 rho⟩ ⟨rho 36001, rho 36002⟩
        ⟨seg48In1AccX44 rho, seg48In1AccY44 rho⟩ ⟨rho 36014, rho 36015⟩ := by
  obtain ⟨r3245, r3246, r3247, r3248, r3249, r3250, r3251, r3252, r3253, r3254, r3255, r3256, r3257⟩ := seg48In1_rows43 rho h
  unfold Seg48.relationRow3245 at r3245

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3245

  unfold Seg48.relationRow3246 at r3246

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3246

  unfold Seg48.relationRow3247 at r3247

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3247

  unfold Seg48.relationRow3248 at r3248

  unfold Seg48.relationRow3249 at r3249

  unfold Seg48.relationRow3250 at r3250

  unfold Seg48.relationRow3251 at r3251

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3251

  unfold Seg48.relationRow3252 at r3252

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3252

  unfold Seg48.relationRow3253 at r3253

  unfold Seg48.relationRow3254 at r3254

  unfold Seg48.relationRow3255 at r3255

  unfold Seg48.relationRow3256 at r3256

  unfold Seg48.relationRow3257 at r3257

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX44 rho = seg48In1AccX43 rho + rho 36009 := by
    unfold seg48In1AccX44 seg48In1AccX43
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 43]

    ring

  have hnexty : seg48In1AccY44 rho = seg48In1AccY43 rho + rho 36010 := by
    unfold seg48In1AccY44 seg48In1AccY43
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 43]

    ring

  have ha0 : (rho 36001 + rho 36002) * (seg48In1AccX43 rho + seg48In1AccY43 rho) = rho 36003 := by
    unfold seg48In1AccX43 seg48In1AccY43
    linear_combination r3245
  have ha1 : rho 36002 * seg48In1AccX43 rho = rho 36004 := by
    unfold seg48In1AccX43
    linear_combination r3246
  have ha2 : rho 36001 * seg48In1AccY43 rho = rho 36005 := by
    unfold seg48In1AccY43
    linear_combination r3247
  have ha3 : 3021 * rho 36004 * rho 36005 = rho 36006 := by
    linear_combination r3248
  have ha4 : rho 36007 * (1 + rho 36006) = rho 36004 + rho 36005 := by
    linear_combination r3249
  have ha5 : rho 36008 * (1 - rho 36006) = rho 36003 - rho 36004 - rho 36005 := by
    linear_combination r3250
  have haddx :
      rho 36007 * (1 + 3021 * (rho 36002 * seg48In1AccX43 rho) * (rho 36001 * seg48In1AccY43 rho)) =
        rho 36002 * seg48In1AccX43 rho + rho 36001 * seg48In1AccY43 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36008 * (1 - 3021 * (rho 36002 * seg48In1AccX43 rho) * (rho 36001 * seg48In1AccY43 rho)) =
        (-1) * (rho 36002 * seg48In1AccX43 rho) - rho 36001 * seg48In1AccY43 rho +
          (seg48In1AccY43 rho - seg48In1AccX43 rho * (-1)) * (rho 36001 + rho 36002) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36008 * (1 - rho 36006) = rho 36003 - rho 36004 - rho 36005 := ha5
      _ = (-1) * rho 36004 - rho 36005 + (seg48In1AccY43 rho - seg48In1AccX43 rho * (-1)) *
          (rho 36001 + rho 36002) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX44 rho = seg48In1AccX43 rho - Bool.toZMod bit * (seg48In1AccX43 rho - rho 36007) := by
    have hd : rho 36009 = Bool.toZMod bit * (rho 36007 - seg48In1AccX43 rho) := by
      rw [← hbit]
      unfold seg48In1AccX43
      linear_combination -r3251
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY44 rho = seg48In1AccY43 rho - Bool.toZMod bit * (seg48In1AccY43 rho - rho 36008) := by
    have hd : rho 36010 = Bool.toZMod bit * (rho 36008 - seg48In1AccY43 rho) := by
      rw [← hbit]
      unfold seg48In1AccY43
      linear_combination -r3252
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36001 * rho 36002 = rho 36011 := by linear_combination r3253
  have hd1 : rho 36001 * rho 36001 = rho 36012 := by linear_combination r3254
  have hd2 : rho 36002 * rho 36002 = rho 36013 := by linear_combination r3255
  have hd3 : rho 36014 * (rho 36002 * rho 36002 + rho 36001 * rho 36001 * (-1)) =
      2 * (rho 36001 * rho 36002) := by
    rw [hd0, hd1, hd2]
    linear_combination r3256
  have hd4 : rho 36015 * (2 - (rho 36002 * rho 36002 + rho 36001 * rho 36001 * (-1))) =
      rho 36002 * rho 36002 - rho 36001 * rho 36001 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3257
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX43 rho, seg48In1AccY43 rho⟩ ⟨rho 36001, rho 36002⟩
    ⟨rho 36007, rho 36008⟩ ⟨seg48In1AccX44 rho, seg48In1AccY44 rho⟩ ⟨rho 36014, rho 36015⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_hstep_c3 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (35322 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 33 ≤ i → i < 44 →
      EdwardsBridge.onCurve (seg48In1AccState rho i) →
      EdwardsBridge.onCurve (seg48In1CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg48In1AccState rho i) (seg48In1CurState rho i)
        (seg48In1AccState rho (i + 1)) (seg48In1CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg48In1_rung33 rho h bits[33]! (hbitAt 33 (by omega)) hacc hcur
  · exact seg48In1_rung34 rho h bits[34]! (hbitAt 34 (by omega)) hacc hcur
  · exact seg48In1_rung35 rho h bits[35]! (hbitAt 35 (by omega)) hacc hcur
  · exact seg48In1_rung36 rho h bits[36]! (hbitAt 36 (by omega)) hacc hcur
  · exact seg48In1_rung37 rho h bits[37]! (hbitAt 37 (by omega)) hacc hcur
  · exact seg48In1_rung38 rho h bits[38]! (hbitAt 38 (by omega)) hacc hcur
  · exact seg48In1_rung39 rho h bits[39]! (hbitAt 39 (by omega)) hacc hcur
  · exact seg48In1_rung40 rho h bits[40]! (hbitAt 40 (by omega)) hacc hcur
  · exact seg48In1_rung41 rho h bits[41]! (hbitAt 41 (by omega)) hacc hcur
  · exact seg48In1_rung42 rho h bits[42]! (hbitAt 42 (by omega)) hacc hcur
  · exact seg48In1_rung43 rho h bits[43]! (hbitAt 43 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
