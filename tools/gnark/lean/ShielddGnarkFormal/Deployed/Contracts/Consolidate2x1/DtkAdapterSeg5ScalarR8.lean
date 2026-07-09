import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg5_rows88 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4109 rho ∧ Seg5.relationRow4110 rho ∧ Seg5.relationRow4111 rho ∧ Seg5.relationRow4112 rho ∧ Seg5.relationRow4113 rho ∧ Seg5.relationRow4114 rho ∧ Seg5.relationRow4115 rho ∧ Seg5.relationRow4116 rho ∧ Seg5.relationRow4117 rho ∧ Seg5.relationRow4118 rho ∧ Seg5.relationRow4119 rho ∧ Seg5.relationRow4120 rho ∧ Seg5.relationRow4121 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p51, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4109, r4110, r4111, r4112, r4113, r4114, r4115, r4116, r4117, r4118, r4119, r4120, r4121, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4109, r4110, r4111, r4112, r4113, r4114, r4115, r4116, r4117, r4118, r4119, r4120, r4121⟩

theorem seg5_rung88 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2503 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX88 rho : Seg5.F), (seg5AccY88 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3802 : Seg5.F), (rho 3803 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX88 rho : Seg5.F), (seg5AccY88 rho : Seg5.F)⟩
        ⟨(rho 3802 : Seg5.F), (rho 3803 : Seg5.F)⟩
        ⟨(seg5AccX89 rho : Seg5.F), (seg5AccY89 rho : Seg5.F)⟩
        ⟨(rho 3815 : Seg5.F), (rho 3816 : Seg5.F)⟩ := by
  obtain ⟨r4109, r4110, r4111, r4112, r4113, r4114, r4115, r4116, r4117, r4118, r4119, r4120, r4121⟩ := seg5_rows88 rho h
  unfold Seg5.relationRow4109 at r4109
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4109
  unfold Seg5.relationRow4110 at r4110
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4110
  unfold Seg5.relationRow4111 at r4111
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4111
  unfold Seg5.relationRow4112 at r4112
  unfold Seg5.relationRow4113 at r4113
  unfold Seg5.relationRow4114 at r4114
  unfold Seg5.relationRow4115 at r4115
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4115
  unfold Seg5.relationRow4116 at r4116
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4116
  unfold Seg5.relationRow4117 at r4117
  unfold Seg5.relationRow4118 at r4118
  unfold Seg5.relationRow4119 at r4119
  unfold Seg5.relationRow4120 at r4120
  unfold Seg5.relationRow4121 at r4121
  have hrung88 (bit : Bool) (hbit : rho 2503 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX88 rho : Seg5.F), (seg5AccY88 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3802 : Seg5.F), (rho 3803 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX88 rho : Seg5.F), (seg5AccY88 rho : Seg5.F)⟩
        ⟨(rho 3802 : Seg5.F), (rho 3803 : Seg5.F)⟩
        ⟨(seg5AccX89 rho : Seg5.F), (seg5AccY89 rho : Seg5.F)⟩
        ⟨(rho 3815 : Seg5.F), (rho 3816 : Seg5.F)⟩ := by
    have hnextx : seg5AccX89 rho = seg5AccX88 rho + rho 3810 := by
      unfold seg5AccX89 seg5AccX88
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 88]
      ring
    have hnexty : seg5AccY89 rho = seg5AccY88 rho + rho 3811 := by
      unfold seg5AccY89 seg5AccY88
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 88]
      ring
    have ha0 : (rho 3802 + rho 3803) * (seg5AccX88 rho + seg5AccY88 rho) = rho 3804 := by
      unfold seg5AccX88 seg5AccY88
      linear_combination r4109
    have ha1 : rho 3803 * seg5AccX88 rho = rho 3805 := by
      unfold seg5AccX88
      linear_combination r4110
    have ha2 : rho 3802 * seg5AccY88 rho = rho 3806 := by
      unfold seg5AccY88
      linear_combination r4111
    have ha3 : 3021 * rho 3805 * rho 3806 = rho 3807 := by
      linear_combination r4112
    have ha4 : rho 3808 * (1 + rho 3807) = rho 3805 + rho 3806 := by
      linear_combination r4113
    have ha5 : rho 3809 * (1 - rho 3807) = rho 3804 - rho 3805 - rho 3806 := by
      linear_combination r4114
    have haddx :
        rho 3808 * (1 + 3021 * (rho 3803 * seg5AccX88 rho) * (rho 3802 * seg5AccY88 rho)) =
          rho 3803 * seg5AccX88 rho + rho 3802 * seg5AccY88 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3809 * (1 - 3021 * (rho 3803 * seg5AccX88 rho) * (rho 3802 * seg5AccY88 rho)) =
          (-1) * (rho 3803 * seg5AccX88 rho) - rho 3802 * seg5AccY88 rho +
            (seg5AccY88 rho - seg5AccX88 rho * (-1)) * (rho 3802 + rho 3803) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3809 * (1 - rho 3807) = rho 3804 - rho 3805 - rho 3806 := ha5
        _ = (-1) * rho 3805 - rho 3806 + (seg5AccY88 rho - seg5AccX88 rho * (-1)) * (rho 3802 + rho 3803) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX89 rho = seg5AccX88 rho - Bool.toZMod bit * (seg5AccX88 rho - rho 3808) := by
      have hd : rho 3810 = Bool.toZMod bit * (rho 3808 - seg5AccX88 rho) := by
        rw [← hbit]
        unfold seg5AccX88
        linear_combination -r4115
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY89 rho = seg5AccY88 rho - Bool.toZMod bit * (seg5AccY88 rho - rho 3809) := by
      have hd : rho 3811 = Bool.toZMod bit * (rho 3809 - seg5AccY88 rho) := by
        rw [← hbit]
        unfold seg5AccY88
        linear_combination -r4116
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3802 * rho 3803 = rho 3812 := by linear_combination r4117
    have hd1 : rho 3802 * rho 3802 = rho 3813 := by linear_combination r4118
    have hd2 : rho 3803 * rho 3803 = rho 3814 := by linear_combination r4119
    have hd3 : rho 3815 * (rho 3803 * rho 3803 + rho 3802 * rho 3802 * (-1)) = 2 * (rho 3802 * rho 3803) := by
      rw [hd0, hd1, hd2]
      linear_combination r4120
    have hd4 : rho 3816 * (2 - (rho 3803 * rho 3803 + rho 3802 * rho 3802 * (-1))) = rho 3803 * rho 3803 - rho 3802 * rho 3802 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4121
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX88 rho : Seg5.F), (seg5AccY88 rho : Seg5.F)⟩
      ⟨(rho 3802 : Seg5.F), (rho 3803 : Seg5.F)⟩
      ⟨(rho 3808 : Seg5.F), (rho 3809 : Seg5.F)⟩
      ⟨(seg5AccX89 rho : Seg5.F), (seg5AccY89 rho : Seg5.F)⟩
      ⟨(rho 3815 : Seg5.F), (rho 3816 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung88

theorem seg5_rows89 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4122 rho ∧ Seg5.relationRow4123 rho ∧ Seg5.relationRow4124 rho ∧ Seg5.relationRow4125 rho ∧ Seg5.relationRow4126 rho ∧ Seg5.relationRow4127 rho ∧ Seg5.relationRow4128 rho ∧ Seg5.relationRow4129 rho ∧ Seg5.relationRow4130 rho ∧ Seg5.relationRow4131 rho ∧ Seg5.relationRow4132 rho ∧ Seg5.relationRow4133 rho ∧ Seg5.relationRow4134 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p51, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4122, r4123, r4124, r4125, r4126, r4127, r4128, r4129, r4130, r4131, r4132, r4133, r4134, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4122, r4123, r4124, r4125, r4126, r4127, r4128, r4129, r4130, r4131, r4132, r4133, r4134⟩

theorem seg5_rung89 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2504 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX89 rho : Seg5.F), (seg5AccY89 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3815 : Seg5.F), (rho 3816 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX89 rho : Seg5.F), (seg5AccY89 rho : Seg5.F)⟩
        ⟨(rho 3815 : Seg5.F), (rho 3816 : Seg5.F)⟩
        ⟨(seg5AccX90 rho : Seg5.F), (seg5AccY90 rho : Seg5.F)⟩
        ⟨(rho 3828 : Seg5.F), (rho 3829 : Seg5.F)⟩ := by
  obtain ⟨r4122, r4123, r4124, r4125, r4126, r4127, r4128, r4129, r4130, r4131, r4132, r4133, r4134⟩ := seg5_rows89 rho h
  unfold Seg5.relationRow4122 at r4122
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4122
  unfold Seg5.relationRow4123 at r4123
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4123
  unfold Seg5.relationRow4124 at r4124
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4124
  unfold Seg5.relationRow4125 at r4125
  unfold Seg5.relationRow4126 at r4126
  unfold Seg5.relationRow4127 at r4127
  unfold Seg5.relationRow4128 at r4128
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4128
  unfold Seg5.relationRow4129 at r4129
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4129
  unfold Seg5.relationRow4130 at r4130
  unfold Seg5.relationRow4131 at r4131
  unfold Seg5.relationRow4132 at r4132
  unfold Seg5.relationRow4133 at r4133
  unfold Seg5.relationRow4134 at r4134
  have hrung89 (bit : Bool) (hbit : rho 2504 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX89 rho : Seg5.F), (seg5AccY89 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3815 : Seg5.F), (rho 3816 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX89 rho : Seg5.F), (seg5AccY89 rho : Seg5.F)⟩
        ⟨(rho 3815 : Seg5.F), (rho 3816 : Seg5.F)⟩
        ⟨(seg5AccX90 rho : Seg5.F), (seg5AccY90 rho : Seg5.F)⟩
        ⟨(rho 3828 : Seg5.F), (rho 3829 : Seg5.F)⟩ := by
    have hnextx : seg5AccX90 rho = seg5AccX89 rho + rho 3823 := by
      unfold seg5AccX90 seg5AccX89
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 89]
      ring
    have hnexty : seg5AccY90 rho = seg5AccY89 rho + rho 3824 := by
      unfold seg5AccY90 seg5AccY89
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 89]
      ring
    have ha0 : (rho 3815 + rho 3816) * (seg5AccX89 rho + seg5AccY89 rho) = rho 3817 := by
      unfold seg5AccX89 seg5AccY89
      linear_combination r4122
    have ha1 : rho 3816 * seg5AccX89 rho = rho 3818 := by
      unfold seg5AccX89
      linear_combination r4123
    have ha2 : rho 3815 * seg5AccY89 rho = rho 3819 := by
      unfold seg5AccY89
      linear_combination r4124
    have ha3 : 3021 * rho 3818 * rho 3819 = rho 3820 := by
      linear_combination r4125
    have ha4 : rho 3821 * (1 + rho 3820) = rho 3818 + rho 3819 := by
      linear_combination r4126
    have ha5 : rho 3822 * (1 - rho 3820) = rho 3817 - rho 3818 - rho 3819 := by
      linear_combination r4127
    have haddx :
        rho 3821 * (1 + 3021 * (rho 3816 * seg5AccX89 rho) * (rho 3815 * seg5AccY89 rho)) =
          rho 3816 * seg5AccX89 rho + rho 3815 * seg5AccY89 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3822 * (1 - 3021 * (rho 3816 * seg5AccX89 rho) * (rho 3815 * seg5AccY89 rho)) =
          (-1) * (rho 3816 * seg5AccX89 rho) - rho 3815 * seg5AccY89 rho +
            (seg5AccY89 rho - seg5AccX89 rho * (-1)) * (rho 3815 + rho 3816) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3822 * (1 - rho 3820) = rho 3817 - rho 3818 - rho 3819 := ha5
        _ = (-1) * rho 3818 - rho 3819 + (seg5AccY89 rho - seg5AccX89 rho * (-1)) * (rho 3815 + rho 3816) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX90 rho = seg5AccX89 rho - Bool.toZMod bit * (seg5AccX89 rho - rho 3821) := by
      have hd : rho 3823 = Bool.toZMod bit * (rho 3821 - seg5AccX89 rho) := by
        rw [← hbit]
        unfold seg5AccX89
        linear_combination -r4128
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY90 rho = seg5AccY89 rho - Bool.toZMod bit * (seg5AccY89 rho - rho 3822) := by
      have hd : rho 3824 = Bool.toZMod bit * (rho 3822 - seg5AccY89 rho) := by
        rw [← hbit]
        unfold seg5AccY89
        linear_combination -r4129
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3815 * rho 3816 = rho 3825 := by linear_combination r4130
    have hd1 : rho 3815 * rho 3815 = rho 3826 := by linear_combination r4131
    have hd2 : rho 3816 * rho 3816 = rho 3827 := by linear_combination r4132
    have hd3 : rho 3828 * (rho 3816 * rho 3816 + rho 3815 * rho 3815 * (-1)) = 2 * (rho 3815 * rho 3816) := by
      rw [hd0, hd1, hd2]
      linear_combination r4133
    have hd4 : rho 3829 * (2 - (rho 3816 * rho 3816 + rho 3815 * rho 3815 * (-1))) = rho 3816 * rho 3816 - rho 3815 * rho 3815 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4134
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX89 rho : Seg5.F), (seg5AccY89 rho : Seg5.F)⟩
      ⟨(rho 3815 : Seg5.F), (rho 3816 : Seg5.F)⟩
      ⟨(rho 3821 : Seg5.F), (rho 3822 : Seg5.F)⟩
      ⟨(seg5AccX90 rho : Seg5.F), (seg5AccY90 rho : Seg5.F)⟩
      ⟨(rho 3828 : Seg5.F), (rho 3829 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung89

theorem seg5_rows90 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4135 rho ∧ Seg5.relationRow4136 rho ∧ Seg5.relationRow4137 rho ∧ Seg5.relationRow4138 rho ∧ Seg5.relationRow4139 rho ∧ Seg5.relationRow4140 rho ∧ Seg5.relationRow4141 rho ∧ Seg5.relationRow4142 rho ∧ Seg5.relationRow4143 rho ∧ Seg5.relationRow4144 rho ∧ Seg5.relationRow4145 rho ∧ Seg5.relationRow4146 rho ∧ Seg5.relationRow4147 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p51, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4135, r4136, r4137, r4138, r4139, r4140, r4141, r4142, r4143, r4144, r4145, r4146, r4147, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4135, r4136, r4137, r4138, r4139, r4140, r4141, r4142, r4143, r4144, r4145, r4146, r4147⟩

theorem seg5_rung90 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2505 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX90 rho : Seg5.F), (seg5AccY90 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3828 : Seg5.F), (rho 3829 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX90 rho : Seg5.F), (seg5AccY90 rho : Seg5.F)⟩
        ⟨(rho 3828 : Seg5.F), (rho 3829 : Seg5.F)⟩
        ⟨(seg5AccX91 rho : Seg5.F), (seg5AccY91 rho : Seg5.F)⟩
        ⟨(rho 3841 : Seg5.F), (rho 3842 : Seg5.F)⟩ := by
  obtain ⟨r4135, r4136, r4137, r4138, r4139, r4140, r4141, r4142, r4143, r4144, r4145, r4146, r4147⟩ := seg5_rows90 rho h
  unfold Seg5.relationRow4135 at r4135
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4135
  unfold Seg5.relationRow4136 at r4136
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4136
  unfold Seg5.relationRow4137 at r4137
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4137
  unfold Seg5.relationRow4138 at r4138
  unfold Seg5.relationRow4139 at r4139
  unfold Seg5.relationRow4140 at r4140
  unfold Seg5.relationRow4141 at r4141
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4141
  unfold Seg5.relationRow4142 at r4142
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4142
  unfold Seg5.relationRow4143 at r4143
  unfold Seg5.relationRow4144 at r4144
  unfold Seg5.relationRow4145 at r4145
  unfold Seg5.relationRow4146 at r4146
  unfold Seg5.relationRow4147 at r4147
  have hrung90 (bit : Bool) (hbit : rho 2505 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX90 rho : Seg5.F), (seg5AccY90 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3828 : Seg5.F), (rho 3829 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX90 rho : Seg5.F), (seg5AccY90 rho : Seg5.F)⟩
        ⟨(rho 3828 : Seg5.F), (rho 3829 : Seg5.F)⟩
        ⟨(seg5AccX91 rho : Seg5.F), (seg5AccY91 rho : Seg5.F)⟩
        ⟨(rho 3841 : Seg5.F), (rho 3842 : Seg5.F)⟩ := by
    have hnextx : seg5AccX91 rho = seg5AccX90 rho + rho 3836 := by
      unfold seg5AccX91 seg5AccX90
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 90]
      ring
    have hnexty : seg5AccY91 rho = seg5AccY90 rho + rho 3837 := by
      unfold seg5AccY91 seg5AccY90
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 90]
      ring
    have ha0 : (rho 3828 + rho 3829) * (seg5AccX90 rho + seg5AccY90 rho) = rho 3830 := by
      unfold seg5AccX90 seg5AccY90
      linear_combination r4135
    have ha1 : rho 3829 * seg5AccX90 rho = rho 3831 := by
      unfold seg5AccX90
      linear_combination r4136
    have ha2 : rho 3828 * seg5AccY90 rho = rho 3832 := by
      unfold seg5AccY90
      linear_combination r4137
    have ha3 : 3021 * rho 3831 * rho 3832 = rho 3833 := by
      linear_combination r4138
    have ha4 : rho 3834 * (1 + rho 3833) = rho 3831 + rho 3832 := by
      linear_combination r4139
    have ha5 : rho 3835 * (1 - rho 3833) = rho 3830 - rho 3831 - rho 3832 := by
      linear_combination r4140
    have haddx :
        rho 3834 * (1 + 3021 * (rho 3829 * seg5AccX90 rho) * (rho 3828 * seg5AccY90 rho)) =
          rho 3829 * seg5AccX90 rho + rho 3828 * seg5AccY90 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3835 * (1 - 3021 * (rho 3829 * seg5AccX90 rho) * (rho 3828 * seg5AccY90 rho)) =
          (-1) * (rho 3829 * seg5AccX90 rho) - rho 3828 * seg5AccY90 rho +
            (seg5AccY90 rho - seg5AccX90 rho * (-1)) * (rho 3828 + rho 3829) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3835 * (1 - rho 3833) = rho 3830 - rho 3831 - rho 3832 := ha5
        _ = (-1) * rho 3831 - rho 3832 + (seg5AccY90 rho - seg5AccX90 rho * (-1)) * (rho 3828 + rho 3829) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX91 rho = seg5AccX90 rho - Bool.toZMod bit * (seg5AccX90 rho - rho 3834) := by
      have hd : rho 3836 = Bool.toZMod bit * (rho 3834 - seg5AccX90 rho) := by
        rw [← hbit]
        unfold seg5AccX90
        linear_combination -r4141
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY91 rho = seg5AccY90 rho - Bool.toZMod bit * (seg5AccY90 rho - rho 3835) := by
      have hd : rho 3837 = Bool.toZMod bit * (rho 3835 - seg5AccY90 rho) := by
        rw [← hbit]
        unfold seg5AccY90
        linear_combination -r4142
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3828 * rho 3829 = rho 3838 := by linear_combination r4143
    have hd1 : rho 3828 * rho 3828 = rho 3839 := by linear_combination r4144
    have hd2 : rho 3829 * rho 3829 = rho 3840 := by linear_combination r4145
    have hd3 : rho 3841 * (rho 3829 * rho 3829 + rho 3828 * rho 3828 * (-1)) = 2 * (rho 3828 * rho 3829) := by
      rw [hd0, hd1, hd2]
      linear_combination r4146
    have hd4 : rho 3842 * (2 - (rho 3829 * rho 3829 + rho 3828 * rho 3828 * (-1))) = rho 3829 * rho 3829 - rho 3828 * rho 3828 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4147
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX90 rho : Seg5.F), (seg5AccY90 rho : Seg5.F)⟩
      ⟨(rho 3828 : Seg5.F), (rho 3829 : Seg5.F)⟩
      ⟨(rho 3834 : Seg5.F), (rho 3835 : Seg5.F)⟩
      ⟨(seg5AccX91 rho : Seg5.F), (seg5AccY91 rho : Seg5.F)⟩
      ⟨(rho 3841 : Seg5.F), (rho 3842 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung90

theorem seg5_rows91 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4148 rho ∧ Seg5.relationRow4149 rho ∧ Seg5.relationRow4150 rho ∧ Seg5.relationRow4151 rho ∧ Seg5.relationRow4152 rho ∧ Seg5.relationRow4153 rho ∧ Seg5.relationRow4154 rho ∧ Seg5.relationRow4155 rho ∧ Seg5.relationRow4156 rho ∧ Seg5.relationRow4157 rho ∧ Seg5.relationRow4158 rho ∧ Seg5.relationRow4159 rho ∧ Seg5.relationRow4160 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p51, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4148, r4149, r4150, r4151, r4152, r4153, r4154, r4155, r4156, r4157, r4158, r4159⟩
  unfold Seg5.relationPart52 at p52
  rcases p52 with ⟨r4160, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4148, r4149, r4150, r4151, r4152, r4153, r4154, r4155, r4156, r4157, r4158, r4159, r4160⟩

theorem seg5_rung91 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2506 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX91 rho : Seg5.F), (seg5AccY91 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3841 : Seg5.F), (rho 3842 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX91 rho : Seg5.F), (seg5AccY91 rho : Seg5.F)⟩
        ⟨(rho 3841 : Seg5.F), (rho 3842 : Seg5.F)⟩
        ⟨(seg5AccX92 rho : Seg5.F), (seg5AccY92 rho : Seg5.F)⟩
        ⟨(rho 3854 : Seg5.F), (rho 3855 : Seg5.F)⟩ := by
  obtain ⟨r4148, r4149, r4150, r4151, r4152, r4153, r4154, r4155, r4156, r4157, r4158, r4159, r4160⟩ := seg5_rows91 rho h
  unfold Seg5.relationRow4148 at r4148
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4148
  unfold Seg5.relationRow4149 at r4149
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4149
  unfold Seg5.relationRow4150 at r4150
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4150
  unfold Seg5.relationRow4151 at r4151
  unfold Seg5.relationRow4152 at r4152
  unfold Seg5.relationRow4153 at r4153
  unfold Seg5.relationRow4154 at r4154
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4154
  unfold Seg5.relationRow4155 at r4155
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4155
  unfold Seg5.relationRow4156 at r4156
  unfold Seg5.relationRow4157 at r4157
  unfold Seg5.relationRow4158 at r4158
  unfold Seg5.relationRow4159 at r4159
  unfold Seg5.relationRow4160 at r4160
  have hrung91 (bit : Bool) (hbit : rho 2506 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX91 rho : Seg5.F), (seg5AccY91 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3841 : Seg5.F), (rho 3842 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX91 rho : Seg5.F), (seg5AccY91 rho : Seg5.F)⟩
        ⟨(rho 3841 : Seg5.F), (rho 3842 : Seg5.F)⟩
        ⟨(seg5AccX92 rho : Seg5.F), (seg5AccY92 rho : Seg5.F)⟩
        ⟨(rho 3854 : Seg5.F), (rho 3855 : Seg5.F)⟩ := by
    have hnextx : seg5AccX92 rho = seg5AccX91 rho + rho 3849 := by
      unfold seg5AccX92 seg5AccX91
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 91]
      ring
    have hnexty : seg5AccY92 rho = seg5AccY91 rho + rho 3850 := by
      unfold seg5AccY92 seg5AccY91
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 91]
      ring
    have ha0 : (rho 3841 + rho 3842) * (seg5AccX91 rho + seg5AccY91 rho) = rho 3843 := by
      unfold seg5AccX91 seg5AccY91
      linear_combination r4148
    have ha1 : rho 3842 * seg5AccX91 rho = rho 3844 := by
      unfold seg5AccX91
      linear_combination r4149
    have ha2 : rho 3841 * seg5AccY91 rho = rho 3845 := by
      unfold seg5AccY91
      linear_combination r4150
    have ha3 : 3021 * rho 3844 * rho 3845 = rho 3846 := by
      linear_combination r4151
    have ha4 : rho 3847 * (1 + rho 3846) = rho 3844 + rho 3845 := by
      linear_combination r4152
    have ha5 : rho 3848 * (1 - rho 3846) = rho 3843 - rho 3844 - rho 3845 := by
      linear_combination r4153
    have haddx :
        rho 3847 * (1 + 3021 * (rho 3842 * seg5AccX91 rho) * (rho 3841 * seg5AccY91 rho)) =
          rho 3842 * seg5AccX91 rho + rho 3841 * seg5AccY91 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3848 * (1 - 3021 * (rho 3842 * seg5AccX91 rho) * (rho 3841 * seg5AccY91 rho)) =
          (-1) * (rho 3842 * seg5AccX91 rho) - rho 3841 * seg5AccY91 rho +
            (seg5AccY91 rho - seg5AccX91 rho * (-1)) * (rho 3841 + rho 3842) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3848 * (1 - rho 3846) = rho 3843 - rho 3844 - rho 3845 := ha5
        _ = (-1) * rho 3844 - rho 3845 + (seg5AccY91 rho - seg5AccX91 rho * (-1)) * (rho 3841 + rho 3842) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX92 rho = seg5AccX91 rho - Bool.toZMod bit * (seg5AccX91 rho - rho 3847) := by
      have hd : rho 3849 = Bool.toZMod bit * (rho 3847 - seg5AccX91 rho) := by
        rw [← hbit]
        unfold seg5AccX91
        linear_combination -r4154
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY92 rho = seg5AccY91 rho - Bool.toZMod bit * (seg5AccY91 rho - rho 3848) := by
      have hd : rho 3850 = Bool.toZMod bit * (rho 3848 - seg5AccY91 rho) := by
        rw [← hbit]
        unfold seg5AccY91
        linear_combination -r4155
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3841 * rho 3842 = rho 3851 := by linear_combination r4156
    have hd1 : rho 3841 * rho 3841 = rho 3852 := by linear_combination r4157
    have hd2 : rho 3842 * rho 3842 = rho 3853 := by linear_combination r4158
    have hd3 : rho 3854 * (rho 3842 * rho 3842 + rho 3841 * rho 3841 * (-1)) = 2 * (rho 3841 * rho 3842) := by
      rw [hd0, hd1, hd2]
      linear_combination r4159
    have hd4 : rho 3855 * (2 - (rho 3842 * rho 3842 + rho 3841 * rho 3841 * (-1))) = rho 3842 * rho 3842 - rho 3841 * rho 3841 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4160
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX91 rho : Seg5.F), (seg5AccY91 rho : Seg5.F)⟩
      ⟨(rho 3841 : Seg5.F), (rho 3842 : Seg5.F)⟩
      ⟨(rho 3847 : Seg5.F), (rho 3848 : Seg5.F)⟩
      ⟨(seg5AccX92 rho : Seg5.F), (seg5AccY92 rho : Seg5.F)⟩
      ⟨(rho 3854 : Seg5.F), (rho 3855 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung91

theorem seg5_rows92 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4161 rho ∧ Seg5.relationRow4162 rho ∧ Seg5.relationRow4163 rho ∧ Seg5.relationRow4164 rho ∧ Seg5.relationRow4165 rho ∧ Seg5.relationRow4166 rho ∧ Seg5.relationRow4167 rho ∧ Seg5.relationRow4168 rho ∧ Seg5.relationRow4169 rho ∧ Seg5.relationRow4170 rho ∧ Seg5.relationRow4171 rho ∧ Seg5.relationRow4172 rho ∧ Seg5.relationRow4173 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart52 at p52
  rcases p52 with ⟨_, r4161, r4162, r4163, r4164, r4165, r4166, r4167, r4168, r4169, r4170, r4171, r4172, r4173, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4161, r4162, r4163, r4164, r4165, r4166, r4167, r4168, r4169, r4170, r4171, r4172, r4173⟩

theorem seg5_rung92 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2507 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX92 rho : Seg5.F), (seg5AccY92 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3854 : Seg5.F), (rho 3855 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX92 rho : Seg5.F), (seg5AccY92 rho : Seg5.F)⟩
        ⟨(rho 3854 : Seg5.F), (rho 3855 : Seg5.F)⟩
        ⟨(seg5AccX93 rho : Seg5.F), (seg5AccY93 rho : Seg5.F)⟩
        ⟨(rho 3867 : Seg5.F), (rho 3868 : Seg5.F)⟩ := by
  obtain ⟨r4161, r4162, r4163, r4164, r4165, r4166, r4167, r4168, r4169, r4170, r4171, r4172, r4173⟩ := seg5_rows92 rho h
  unfold Seg5.relationRow4161 at r4161
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4161
  unfold Seg5.relationRow4162 at r4162
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4162
  unfold Seg5.relationRow4163 at r4163
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4163
  unfold Seg5.relationRow4164 at r4164
  unfold Seg5.relationRow4165 at r4165
  unfold Seg5.relationRow4166 at r4166
  unfold Seg5.relationRow4167 at r4167
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4167
  unfold Seg5.relationRow4168 at r4168
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4168
  unfold Seg5.relationRow4169 at r4169
  unfold Seg5.relationRow4170 at r4170
  unfold Seg5.relationRow4171 at r4171
  unfold Seg5.relationRow4172 at r4172
  unfold Seg5.relationRow4173 at r4173
  have hrung92 (bit : Bool) (hbit : rho 2507 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX92 rho : Seg5.F), (seg5AccY92 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3854 : Seg5.F), (rho 3855 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX92 rho : Seg5.F), (seg5AccY92 rho : Seg5.F)⟩
        ⟨(rho 3854 : Seg5.F), (rho 3855 : Seg5.F)⟩
        ⟨(seg5AccX93 rho : Seg5.F), (seg5AccY93 rho : Seg5.F)⟩
        ⟨(rho 3867 : Seg5.F), (rho 3868 : Seg5.F)⟩ := by
    have hnextx : seg5AccX93 rho = seg5AccX92 rho + rho 3862 := by
      unfold seg5AccX93 seg5AccX92
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 92]
      ring
    have hnexty : seg5AccY93 rho = seg5AccY92 rho + rho 3863 := by
      unfold seg5AccY93 seg5AccY92
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 92]
      ring
    have ha0 : (rho 3854 + rho 3855) * (seg5AccX92 rho + seg5AccY92 rho) = rho 3856 := by
      unfold seg5AccX92 seg5AccY92
      linear_combination r4161
    have ha1 : rho 3855 * seg5AccX92 rho = rho 3857 := by
      unfold seg5AccX92
      linear_combination r4162
    have ha2 : rho 3854 * seg5AccY92 rho = rho 3858 := by
      unfold seg5AccY92
      linear_combination r4163
    have ha3 : 3021 * rho 3857 * rho 3858 = rho 3859 := by
      linear_combination r4164
    have ha4 : rho 3860 * (1 + rho 3859) = rho 3857 + rho 3858 := by
      linear_combination r4165
    have ha5 : rho 3861 * (1 - rho 3859) = rho 3856 - rho 3857 - rho 3858 := by
      linear_combination r4166
    have haddx :
        rho 3860 * (1 + 3021 * (rho 3855 * seg5AccX92 rho) * (rho 3854 * seg5AccY92 rho)) =
          rho 3855 * seg5AccX92 rho + rho 3854 * seg5AccY92 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3861 * (1 - 3021 * (rho 3855 * seg5AccX92 rho) * (rho 3854 * seg5AccY92 rho)) =
          (-1) * (rho 3855 * seg5AccX92 rho) - rho 3854 * seg5AccY92 rho +
            (seg5AccY92 rho - seg5AccX92 rho * (-1)) * (rho 3854 + rho 3855) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3861 * (1 - rho 3859) = rho 3856 - rho 3857 - rho 3858 := ha5
        _ = (-1) * rho 3857 - rho 3858 + (seg5AccY92 rho - seg5AccX92 rho * (-1)) * (rho 3854 + rho 3855) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX93 rho = seg5AccX92 rho - Bool.toZMod bit * (seg5AccX92 rho - rho 3860) := by
      have hd : rho 3862 = Bool.toZMod bit * (rho 3860 - seg5AccX92 rho) := by
        rw [← hbit]
        unfold seg5AccX92
        linear_combination -r4167
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY93 rho = seg5AccY92 rho - Bool.toZMod bit * (seg5AccY92 rho - rho 3861) := by
      have hd : rho 3863 = Bool.toZMod bit * (rho 3861 - seg5AccY92 rho) := by
        rw [← hbit]
        unfold seg5AccY92
        linear_combination -r4168
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3854 * rho 3855 = rho 3864 := by linear_combination r4169
    have hd1 : rho 3854 * rho 3854 = rho 3865 := by linear_combination r4170
    have hd2 : rho 3855 * rho 3855 = rho 3866 := by linear_combination r4171
    have hd3 : rho 3867 * (rho 3855 * rho 3855 + rho 3854 * rho 3854 * (-1)) = 2 * (rho 3854 * rho 3855) := by
      rw [hd0, hd1, hd2]
      linear_combination r4172
    have hd4 : rho 3868 * (2 - (rho 3855 * rho 3855 + rho 3854 * rho 3854 * (-1))) = rho 3855 * rho 3855 - rho 3854 * rho 3854 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4173
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX92 rho : Seg5.F), (seg5AccY92 rho : Seg5.F)⟩
      ⟨(rho 3854 : Seg5.F), (rho 3855 : Seg5.F)⟩
      ⟨(rho 3860 : Seg5.F), (rho 3861 : Seg5.F)⟩
      ⟨(seg5AccX93 rho : Seg5.F), (seg5AccY93 rho : Seg5.F)⟩
      ⟨(rho 3867 : Seg5.F), (rho 3868 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung92

theorem seg5_rows93 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4174 rho ∧ Seg5.relationRow4175 rho ∧ Seg5.relationRow4176 rho ∧ Seg5.relationRow4177 rho ∧ Seg5.relationRow4178 rho ∧ Seg5.relationRow4179 rho ∧ Seg5.relationRow4180 rho ∧ Seg5.relationRow4181 rho ∧ Seg5.relationRow4182 rho ∧ Seg5.relationRow4183 rho ∧ Seg5.relationRow4184 rho ∧ Seg5.relationRow4185 rho ∧ Seg5.relationRow4186 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r4174, r4175, r4176, r4177, r4178, r4179, r4180, r4181, r4182, r4183, r4184, r4185, r4186, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4174, r4175, r4176, r4177, r4178, r4179, r4180, r4181, r4182, r4183, r4184, r4185, r4186⟩

theorem seg5_rung93 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2508 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX93 rho : Seg5.F), (seg5AccY93 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3867 : Seg5.F), (rho 3868 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX93 rho : Seg5.F), (seg5AccY93 rho : Seg5.F)⟩
        ⟨(rho 3867 : Seg5.F), (rho 3868 : Seg5.F)⟩
        ⟨(seg5AccX94 rho : Seg5.F), (seg5AccY94 rho : Seg5.F)⟩
        ⟨(rho 3880 : Seg5.F), (rho 3881 : Seg5.F)⟩ := by
  obtain ⟨r4174, r4175, r4176, r4177, r4178, r4179, r4180, r4181, r4182, r4183, r4184, r4185, r4186⟩ := seg5_rows93 rho h
  unfold Seg5.relationRow4174 at r4174
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4174
  unfold Seg5.relationRow4175 at r4175
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4175
  unfold Seg5.relationRow4176 at r4176
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4176
  unfold Seg5.relationRow4177 at r4177
  unfold Seg5.relationRow4178 at r4178
  unfold Seg5.relationRow4179 at r4179
  unfold Seg5.relationRow4180 at r4180
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4180
  unfold Seg5.relationRow4181 at r4181
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4181
  unfold Seg5.relationRow4182 at r4182
  unfold Seg5.relationRow4183 at r4183
  unfold Seg5.relationRow4184 at r4184
  unfold Seg5.relationRow4185 at r4185
  unfold Seg5.relationRow4186 at r4186
  have hrung93 (bit : Bool) (hbit : rho 2508 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX93 rho : Seg5.F), (seg5AccY93 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3867 : Seg5.F), (rho 3868 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX93 rho : Seg5.F), (seg5AccY93 rho : Seg5.F)⟩
        ⟨(rho 3867 : Seg5.F), (rho 3868 : Seg5.F)⟩
        ⟨(seg5AccX94 rho : Seg5.F), (seg5AccY94 rho : Seg5.F)⟩
        ⟨(rho 3880 : Seg5.F), (rho 3881 : Seg5.F)⟩ := by
    have hnextx : seg5AccX94 rho = seg5AccX93 rho + rho 3875 := by
      unfold seg5AccX94 seg5AccX93
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 93]
      ring
    have hnexty : seg5AccY94 rho = seg5AccY93 rho + rho 3876 := by
      unfold seg5AccY94 seg5AccY93
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 93]
      ring
    have ha0 : (rho 3867 + rho 3868) * (seg5AccX93 rho + seg5AccY93 rho) = rho 3869 := by
      unfold seg5AccX93 seg5AccY93
      linear_combination r4174
    have ha1 : rho 3868 * seg5AccX93 rho = rho 3870 := by
      unfold seg5AccX93
      linear_combination r4175
    have ha2 : rho 3867 * seg5AccY93 rho = rho 3871 := by
      unfold seg5AccY93
      linear_combination r4176
    have ha3 : 3021 * rho 3870 * rho 3871 = rho 3872 := by
      linear_combination r4177
    have ha4 : rho 3873 * (1 + rho 3872) = rho 3870 + rho 3871 := by
      linear_combination r4178
    have ha5 : rho 3874 * (1 - rho 3872) = rho 3869 - rho 3870 - rho 3871 := by
      linear_combination r4179
    have haddx :
        rho 3873 * (1 + 3021 * (rho 3868 * seg5AccX93 rho) * (rho 3867 * seg5AccY93 rho)) =
          rho 3868 * seg5AccX93 rho + rho 3867 * seg5AccY93 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3874 * (1 - 3021 * (rho 3868 * seg5AccX93 rho) * (rho 3867 * seg5AccY93 rho)) =
          (-1) * (rho 3868 * seg5AccX93 rho) - rho 3867 * seg5AccY93 rho +
            (seg5AccY93 rho - seg5AccX93 rho * (-1)) * (rho 3867 + rho 3868) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3874 * (1 - rho 3872) = rho 3869 - rho 3870 - rho 3871 := ha5
        _ = (-1) * rho 3870 - rho 3871 + (seg5AccY93 rho - seg5AccX93 rho * (-1)) * (rho 3867 + rho 3868) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX94 rho = seg5AccX93 rho - Bool.toZMod bit * (seg5AccX93 rho - rho 3873) := by
      have hd : rho 3875 = Bool.toZMod bit * (rho 3873 - seg5AccX93 rho) := by
        rw [← hbit]
        unfold seg5AccX93
        linear_combination -r4180
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY94 rho = seg5AccY93 rho - Bool.toZMod bit * (seg5AccY93 rho - rho 3874) := by
      have hd : rho 3876 = Bool.toZMod bit * (rho 3874 - seg5AccY93 rho) := by
        rw [← hbit]
        unfold seg5AccY93
        linear_combination -r4181
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3867 * rho 3868 = rho 3877 := by linear_combination r4182
    have hd1 : rho 3867 * rho 3867 = rho 3878 := by linear_combination r4183
    have hd2 : rho 3868 * rho 3868 = rho 3879 := by linear_combination r4184
    have hd3 : rho 3880 * (rho 3868 * rho 3868 + rho 3867 * rho 3867 * (-1)) = 2 * (rho 3867 * rho 3868) := by
      rw [hd0, hd1, hd2]
      linear_combination r4185
    have hd4 : rho 3881 * (2 - (rho 3868 * rho 3868 + rho 3867 * rho 3867 * (-1))) = rho 3868 * rho 3868 - rho 3867 * rho 3867 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4186
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX93 rho : Seg5.F), (seg5AccY93 rho : Seg5.F)⟩
      ⟨(rho 3867 : Seg5.F), (rho 3868 : Seg5.F)⟩
      ⟨(rho 3873 : Seg5.F), (rho 3874 : Seg5.F)⟩
      ⟨(seg5AccX94 rho : Seg5.F), (seg5AccY94 rho : Seg5.F)⟩
      ⟨(rho 3880 : Seg5.F), (rho 3881 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung93

theorem seg5_rows94 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4187 rho ∧ Seg5.relationRow4188 rho ∧ Seg5.relationRow4189 rho ∧ Seg5.relationRow4190 rho ∧ Seg5.relationRow4191 rho ∧ Seg5.relationRow4192 rho ∧ Seg5.relationRow4193 rho ∧ Seg5.relationRow4194 rho ∧ Seg5.relationRow4195 rho ∧ Seg5.relationRow4196 rho ∧ Seg5.relationRow4197 rho ∧ Seg5.relationRow4198 rho ∧ Seg5.relationRow4199 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4187, r4188, r4189, r4190, r4191, r4192, r4193, r4194, r4195, r4196, r4197, r4198, r4199, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4187, r4188, r4189, r4190, r4191, r4192, r4193, r4194, r4195, r4196, r4197, r4198, r4199⟩

theorem seg5_rung94 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2509 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX94 rho : Seg5.F), (seg5AccY94 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3880 : Seg5.F), (rho 3881 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX94 rho : Seg5.F), (seg5AccY94 rho : Seg5.F)⟩
        ⟨(rho 3880 : Seg5.F), (rho 3881 : Seg5.F)⟩
        ⟨(seg5AccX95 rho : Seg5.F), (seg5AccY95 rho : Seg5.F)⟩
        ⟨(rho 3893 : Seg5.F), (rho 3894 : Seg5.F)⟩ := by
  obtain ⟨r4187, r4188, r4189, r4190, r4191, r4192, r4193, r4194, r4195, r4196, r4197, r4198, r4199⟩ := seg5_rows94 rho h
  unfold Seg5.relationRow4187 at r4187
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4187
  unfold Seg5.relationRow4188 at r4188
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4188
  unfold Seg5.relationRow4189 at r4189
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4189
  unfold Seg5.relationRow4190 at r4190
  unfold Seg5.relationRow4191 at r4191
  unfold Seg5.relationRow4192 at r4192
  unfold Seg5.relationRow4193 at r4193
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4193
  unfold Seg5.relationRow4194 at r4194
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4194
  unfold Seg5.relationRow4195 at r4195
  unfold Seg5.relationRow4196 at r4196
  unfold Seg5.relationRow4197 at r4197
  unfold Seg5.relationRow4198 at r4198
  unfold Seg5.relationRow4199 at r4199
  have hrung94 (bit : Bool) (hbit : rho 2509 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX94 rho : Seg5.F), (seg5AccY94 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3880 : Seg5.F), (rho 3881 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX94 rho : Seg5.F), (seg5AccY94 rho : Seg5.F)⟩
        ⟨(rho 3880 : Seg5.F), (rho 3881 : Seg5.F)⟩
        ⟨(seg5AccX95 rho : Seg5.F), (seg5AccY95 rho : Seg5.F)⟩
        ⟨(rho 3893 : Seg5.F), (rho 3894 : Seg5.F)⟩ := by
    have hnextx : seg5AccX95 rho = seg5AccX94 rho + rho 3888 := by
      unfold seg5AccX95 seg5AccX94
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 94]
      ring
    have hnexty : seg5AccY95 rho = seg5AccY94 rho + rho 3889 := by
      unfold seg5AccY95 seg5AccY94
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 94]
      ring
    have ha0 : (rho 3880 + rho 3881) * (seg5AccX94 rho + seg5AccY94 rho) = rho 3882 := by
      unfold seg5AccX94 seg5AccY94
      linear_combination r4187
    have ha1 : rho 3881 * seg5AccX94 rho = rho 3883 := by
      unfold seg5AccX94
      linear_combination r4188
    have ha2 : rho 3880 * seg5AccY94 rho = rho 3884 := by
      unfold seg5AccY94
      linear_combination r4189
    have ha3 : 3021 * rho 3883 * rho 3884 = rho 3885 := by
      linear_combination r4190
    have ha4 : rho 3886 * (1 + rho 3885) = rho 3883 + rho 3884 := by
      linear_combination r4191
    have ha5 : rho 3887 * (1 - rho 3885) = rho 3882 - rho 3883 - rho 3884 := by
      linear_combination r4192
    have haddx :
        rho 3886 * (1 + 3021 * (rho 3881 * seg5AccX94 rho) * (rho 3880 * seg5AccY94 rho)) =
          rho 3881 * seg5AccX94 rho + rho 3880 * seg5AccY94 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3887 * (1 - 3021 * (rho 3881 * seg5AccX94 rho) * (rho 3880 * seg5AccY94 rho)) =
          (-1) * (rho 3881 * seg5AccX94 rho) - rho 3880 * seg5AccY94 rho +
            (seg5AccY94 rho - seg5AccX94 rho * (-1)) * (rho 3880 + rho 3881) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3887 * (1 - rho 3885) = rho 3882 - rho 3883 - rho 3884 := ha5
        _ = (-1) * rho 3883 - rho 3884 + (seg5AccY94 rho - seg5AccX94 rho * (-1)) * (rho 3880 + rho 3881) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX95 rho = seg5AccX94 rho - Bool.toZMod bit * (seg5AccX94 rho - rho 3886) := by
      have hd : rho 3888 = Bool.toZMod bit * (rho 3886 - seg5AccX94 rho) := by
        rw [← hbit]
        unfold seg5AccX94
        linear_combination -r4193
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY95 rho = seg5AccY94 rho - Bool.toZMod bit * (seg5AccY94 rho - rho 3887) := by
      have hd : rho 3889 = Bool.toZMod bit * (rho 3887 - seg5AccY94 rho) := by
        rw [← hbit]
        unfold seg5AccY94
        linear_combination -r4194
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3880 * rho 3881 = rho 3890 := by linear_combination r4195
    have hd1 : rho 3880 * rho 3880 = rho 3891 := by linear_combination r4196
    have hd2 : rho 3881 * rho 3881 = rho 3892 := by linear_combination r4197
    have hd3 : rho 3893 * (rho 3881 * rho 3881 + rho 3880 * rho 3880 * (-1)) = 2 * (rho 3880 * rho 3881) := by
      rw [hd0, hd1, hd2]
      linear_combination r4198
    have hd4 : rho 3894 * (2 - (rho 3881 * rho 3881 + rho 3880 * rho 3880 * (-1))) = rho 3881 * rho 3881 - rho 3880 * rho 3880 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4199
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX94 rho : Seg5.F), (seg5AccY94 rho : Seg5.F)⟩
      ⟨(rho 3880 : Seg5.F), (rho 3881 : Seg5.F)⟩
      ⟨(rho 3886 : Seg5.F), (rho 3887 : Seg5.F)⟩
      ⟨(seg5AccX95 rho : Seg5.F), (seg5AccY95 rho : Seg5.F)⟩
      ⟨(rho 3893 : Seg5.F), (rho 3894 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung94

theorem seg5_rows95 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4200 rho ∧ Seg5.relationRow4201 rho ∧ Seg5.relationRow4202 rho ∧ Seg5.relationRow4203 rho ∧ Seg5.relationRow4204 rho ∧ Seg5.relationRow4205 rho ∧ Seg5.relationRow4206 rho ∧ Seg5.relationRow4207 rho ∧ Seg5.relationRow4208 rho ∧ Seg5.relationRow4209 rho ∧ Seg5.relationRow4210 rho ∧ Seg5.relationRow4211 rho ∧ Seg5.relationRow4212 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4200, r4201, r4202, r4203, r4204, r4205, r4206, r4207, r4208, r4209, r4210, r4211, r4212, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4200, r4201, r4202, r4203, r4204, r4205, r4206, r4207, r4208, r4209, r4210, r4211, r4212⟩

theorem seg5_rung95 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2510 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX95 rho : Seg5.F), (seg5AccY95 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3893 : Seg5.F), (rho 3894 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX95 rho : Seg5.F), (seg5AccY95 rho : Seg5.F)⟩
        ⟨(rho 3893 : Seg5.F), (rho 3894 : Seg5.F)⟩
        ⟨(seg5AccX96 rho : Seg5.F), (seg5AccY96 rho : Seg5.F)⟩
        ⟨(rho 3906 : Seg5.F), (rho 3907 : Seg5.F)⟩ := by
  obtain ⟨r4200, r4201, r4202, r4203, r4204, r4205, r4206, r4207, r4208, r4209, r4210, r4211, r4212⟩ := seg5_rows95 rho h
  unfold Seg5.relationRow4200 at r4200
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4200
  unfold Seg5.relationRow4201 at r4201
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4201
  unfold Seg5.relationRow4202 at r4202
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4202
  unfold Seg5.relationRow4203 at r4203
  unfold Seg5.relationRow4204 at r4204
  unfold Seg5.relationRow4205 at r4205
  unfold Seg5.relationRow4206 at r4206
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4206
  unfold Seg5.relationRow4207 at r4207
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4207
  unfold Seg5.relationRow4208 at r4208
  unfold Seg5.relationRow4209 at r4209
  unfold Seg5.relationRow4210 at r4210
  unfold Seg5.relationRow4211 at r4211
  unfold Seg5.relationRow4212 at r4212
  have hrung95 (bit : Bool) (hbit : rho 2510 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX95 rho : Seg5.F), (seg5AccY95 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3893 : Seg5.F), (rho 3894 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX95 rho : Seg5.F), (seg5AccY95 rho : Seg5.F)⟩
        ⟨(rho 3893 : Seg5.F), (rho 3894 : Seg5.F)⟩
        ⟨(seg5AccX96 rho : Seg5.F), (seg5AccY96 rho : Seg5.F)⟩
        ⟨(rho 3906 : Seg5.F), (rho 3907 : Seg5.F)⟩ := by
    have hnextx : seg5AccX96 rho = seg5AccX95 rho + rho 3901 := by
      unfold seg5AccX96 seg5AccX95
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 95]
      ring
    have hnexty : seg5AccY96 rho = seg5AccY95 rho + rho 3902 := by
      unfold seg5AccY96 seg5AccY95
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 95]
      ring
    have ha0 : (rho 3893 + rho 3894) * (seg5AccX95 rho + seg5AccY95 rho) = rho 3895 := by
      unfold seg5AccX95 seg5AccY95
      linear_combination r4200
    have ha1 : rho 3894 * seg5AccX95 rho = rho 3896 := by
      unfold seg5AccX95
      linear_combination r4201
    have ha2 : rho 3893 * seg5AccY95 rho = rho 3897 := by
      unfold seg5AccY95
      linear_combination r4202
    have ha3 : 3021 * rho 3896 * rho 3897 = rho 3898 := by
      linear_combination r4203
    have ha4 : rho 3899 * (1 + rho 3898) = rho 3896 + rho 3897 := by
      linear_combination r4204
    have ha5 : rho 3900 * (1 - rho 3898) = rho 3895 - rho 3896 - rho 3897 := by
      linear_combination r4205
    have haddx :
        rho 3899 * (1 + 3021 * (rho 3894 * seg5AccX95 rho) * (rho 3893 * seg5AccY95 rho)) =
          rho 3894 * seg5AccX95 rho + rho 3893 * seg5AccY95 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3900 * (1 - 3021 * (rho 3894 * seg5AccX95 rho) * (rho 3893 * seg5AccY95 rho)) =
          (-1) * (rho 3894 * seg5AccX95 rho) - rho 3893 * seg5AccY95 rho +
            (seg5AccY95 rho - seg5AccX95 rho * (-1)) * (rho 3893 + rho 3894) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3900 * (1 - rho 3898) = rho 3895 - rho 3896 - rho 3897 := ha5
        _ = (-1) * rho 3896 - rho 3897 + (seg5AccY95 rho - seg5AccX95 rho * (-1)) * (rho 3893 + rho 3894) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX96 rho = seg5AccX95 rho - Bool.toZMod bit * (seg5AccX95 rho - rho 3899) := by
      have hd : rho 3901 = Bool.toZMod bit * (rho 3899 - seg5AccX95 rho) := by
        rw [← hbit]
        unfold seg5AccX95
        linear_combination -r4206
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY96 rho = seg5AccY95 rho - Bool.toZMod bit * (seg5AccY95 rho - rho 3900) := by
      have hd : rho 3902 = Bool.toZMod bit * (rho 3900 - seg5AccY95 rho) := by
        rw [← hbit]
        unfold seg5AccY95
        linear_combination -r4207
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3893 * rho 3894 = rho 3903 := by linear_combination r4208
    have hd1 : rho 3893 * rho 3893 = rho 3904 := by linear_combination r4209
    have hd2 : rho 3894 * rho 3894 = rho 3905 := by linear_combination r4210
    have hd3 : rho 3906 * (rho 3894 * rho 3894 + rho 3893 * rho 3893 * (-1)) = 2 * (rho 3893 * rho 3894) := by
      rw [hd0, hd1, hd2]
      linear_combination r4211
    have hd4 : rho 3907 * (2 - (rho 3894 * rho 3894 + rho 3893 * rho 3893 * (-1))) = rho 3894 * rho 3894 - rho 3893 * rho 3893 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4212
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX95 rho : Seg5.F), (seg5AccY95 rho : Seg5.F)⟩
      ⟨(rho 3893 : Seg5.F), (rho 3894 : Seg5.F)⟩
      ⟨(rho 3899 : Seg5.F), (rho 3900 : Seg5.F)⟩
      ⟨(seg5AccX96 rho : Seg5.F), (seg5AccY96 rho : Seg5.F)⟩
      ⟨(rho 3906 : Seg5.F), (rho 3907 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung95

theorem seg5_rows96 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4213 rho ∧ Seg5.relationRow4214 rho ∧ Seg5.relationRow4215 rho ∧ Seg5.relationRow4216 rho ∧ Seg5.relationRow4217 rho ∧ Seg5.relationRow4218 rho ∧ Seg5.relationRow4219 rho ∧ Seg5.relationRow4220 rho ∧ Seg5.relationRow4221 rho ∧ Seg5.relationRow4222 rho ∧ Seg5.relationRow4223 rho ∧ Seg5.relationRow4224 rho ∧ Seg5.relationRow4225 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4213, r4214, r4215, r4216, r4217, r4218, r4219, r4220, r4221, r4222, r4223, r4224, r4225, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4213, r4214, r4215, r4216, r4217, r4218, r4219, r4220, r4221, r4222, r4223, r4224, r4225⟩

theorem seg5_rung96 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2511 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX96 rho : Seg5.F), (seg5AccY96 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3906 : Seg5.F), (rho 3907 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX96 rho : Seg5.F), (seg5AccY96 rho : Seg5.F)⟩
        ⟨(rho 3906 : Seg5.F), (rho 3907 : Seg5.F)⟩
        ⟨(seg5AccX97 rho : Seg5.F), (seg5AccY97 rho : Seg5.F)⟩
        ⟨(rho 3919 : Seg5.F), (rho 3920 : Seg5.F)⟩ := by
  obtain ⟨r4213, r4214, r4215, r4216, r4217, r4218, r4219, r4220, r4221, r4222, r4223, r4224, r4225⟩ := seg5_rows96 rho h
  unfold Seg5.relationRow4213 at r4213
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4213
  unfold Seg5.relationRow4214 at r4214
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4214
  unfold Seg5.relationRow4215 at r4215
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4215
  unfold Seg5.relationRow4216 at r4216
  unfold Seg5.relationRow4217 at r4217
  unfold Seg5.relationRow4218 at r4218
  unfold Seg5.relationRow4219 at r4219
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4219
  unfold Seg5.relationRow4220 at r4220
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4220
  unfold Seg5.relationRow4221 at r4221
  unfold Seg5.relationRow4222 at r4222
  unfold Seg5.relationRow4223 at r4223
  unfold Seg5.relationRow4224 at r4224
  unfold Seg5.relationRow4225 at r4225
  have hrung96 (bit : Bool) (hbit : rho 2511 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX96 rho : Seg5.F), (seg5AccY96 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3906 : Seg5.F), (rho 3907 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX96 rho : Seg5.F), (seg5AccY96 rho : Seg5.F)⟩
        ⟨(rho 3906 : Seg5.F), (rho 3907 : Seg5.F)⟩
        ⟨(seg5AccX97 rho : Seg5.F), (seg5AccY97 rho : Seg5.F)⟩
        ⟨(rho 3919 : Seg5.F), (rho 3920 : Seg5.F)⟩ := by
    have hnextx : seg5AccX97 rho = seg5AccX96 rho + rho 3914 := by
      unfold seg5AccX97 seg5AccX96
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 96]
      ring
    have hnexty : seg5AccY97 rho = seg5AccY96 rho + rho 3915 := by
      unfold seg5AccY97 seg5AccY96
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 96]
      ring
    have ha0 : (rho 3906 + rho 3907) * (seg5AccX96 rho + seg5AccY96 rho) = rho 3908 := by
      unfold seg5AccX96 seg5AccY96
      linear_combination r4213
    have ha1 : rho 3907 * seg5AccX96 rho = rho 3909 := by
      unfold seg5AccX96
      linear_combination r4214
    have ha2 : rho 3906 * seg5AccY96 rho = rho 3910 := by
      unfold seg5AccY96
      linear_combination r4215
    have ha3 : 3021 * rho 3909 * rho 3910 = rho 3911 := by
      linear_combination r4216
    have ha4 : rho 3912 * (1 + rho 3911) = rho 3909 + rho 3910 := by
      linear_combination r4217
    have ha5 : rho 3913 * (1 - rho 3911) = rho 3908 - rho 3909 - rho 3910 := by
      linear_combination r4218
    have haddx :
        rho 3912 * (1 + 3021 * (rho 3907 * seg5AccX96 rho) * (rho 3906 * seg5AccY96 rho)) =
          rho 3907 * seg5AccX96 rho + rho 3906 * seg5AccY96 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3913 * (1 - 3021 * (rho 3907 * seg5AccX96 rho) * (rho 3906 * seg5AccY96 rho)) =
          (-1) * (rho 3907 * seg5AccX96 rho) - rho 3906 * seg5AccY96 rho +
            (seg5AccY96 rho - seg5AccX96 rho * (-1)) * (rho 3906 + rho 3907) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3913 * (1 - rho 3911) = rho 3908 - rho 3909 - rho 3910 := ha5
        _ = (-1) * rho 3909 - rho 3910 + (seg5AccY96 rho - seg5AccX96 rho * (-1)) * (rho 3906 + rho 3907) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX97 rho = seg5AccX96 rho - Bool.toZMod bit * (seg5AccX96 rho - rho 3912) := by
      have hd : rho 3914 = Bool.toZMod bit * (rho 3912 - seg5AccX96 rho) := by
        rw [← hbit]
        unfold seg5AccX96
        linear_combination -r4219
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY97 rho = seg5AccY96 rho - Bool.toZMod bit * (seg5AccY96 rho - rho 3913) := by
      have hd : rho 3915 = Bool.toZMod bit * (rho 3913 - seg5AccY96 rho) := by
        rw [← hbit]
        unfold seg5AccY96
        linear_combination -r4220
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3906 * rho 3907 = rho 3916 := by linear_combination r4221
    have hd1 : rho 3906 * rho 3906 = rho 3917 := by linear_combination r4222
    have hd2 : rho 3907 * rho 3907 = rho 3918 := by linear_combination r4223
    have hd3 : rho 3919 * (rho 3907 * rho 3907 + rho 3906 * rho 3906 * (-1)) = 2 * (rho 3906 * rho 3907) := by
      rw [hd0, hd1, hd2]
      linear_combination r4224
    have hd4 : rho 3920 * (2 - (rho 3907 * rho 3907 + rho 3906 * rho 3906 * (-1))) = rho 3907 * rho 3907 - rho 3906 * rho 3906 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4225
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX96 rho : Seg5.F), (seg5AccY96 rho : Seg5.F)⟩
      ⟨(rho 3906 : Seg5.F), (rho 3907 : Seg5.F)⟩
      ⟨(rho 3912 : Seg5.F), (rho 3913 : Seg5.F)⟩
      ⟨(seg5AccX97 rho : Seg5.F), (seg5AccY97 rho : Seg5.F)⟩
      ⟨(rho 3919 : Seg5.F), (rho 3920 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung96

theorem seg5_rows97 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4226 rho ∧ Seg5.relationRow4227 rho ∧ Seg5.relationRow4228 rho ∧ Seg5.relationRow4229 rho ∧ Seg5.relationRow4230 rho ∧ Seg5.relationRow4231 rho ∧ Seg5.relationRow4232 rho ∧ Seg5.relationRow4233 rho ∧ Seg5.relationRow4234 rho ∧ Seg5.relationRow4235 rho ∧ Seg5.relationRow4236 rho ∧ Seg5.relationRow4237 rho ∧ Seg5.relationRow4238 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4226, r4227, r4228, r4229, r4230, r4231, r4232, r4233, r4234, r4235, r4236, r4237, r4238, _⟩
  exact ⟨r4226, r4227, r4228, r4229, r4230, r4231, r4232, r4233, r4234, r4235, r4236, r4237, r4238⟩

theorem seg5_rung97 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2512 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX97 rho : Seg5.F), (seg5AccY97 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3919 : Seg5.F), (rho 3920 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX97 rho : Seg5.F), (seg5AccY97 rho : Seg5.F)⟩
        ⟨(rho 3919 : Seg5.F), (rho 3920 : Seg5.F)⟩
        ⟨(seg5AccX98 rho : Seg5.F), (seg5AccY98 rho : Seg5.F)⟩
        ⟨(rho 3932 : Seg5.F), (rho 3933 : Seg5.F)⟩ := by
  obtain ⟨r4226, r4227, r4228, r4229, r4230, r4231, r4232, r4233, r4234, r4235, r4236, r4237, r4238⟩ := seg5_rows97 rho h
  unfold Seg5.relationRow4226 at r4226
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4226
  unfold Seg5.relationRow4227 at r4227
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4227
  unfold Seg5.relationRow4228 at r4228
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4228
  unfold Seg5.relationRow4229 at r4229
  unfold Seg5.relationRow4230 at r4230
  unfold Seg5.relationRow4231 at r4231
  unfold Seg5.relationRow4232 at r4232
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4232
  unfold Seg5.relationRow4233 at r4233
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4233
  unfold Seg5.relationRow4234 at r4234
  unfold Seg5.relationRow4235 at r4235
  unfold Seg5.relationRow4236 at r4236
  unfold Seg5.relationRow4237 at r4237
  unfold Seg5.relationRow4238 at r4238
  have hrung97 (bit : Bool) (hbit : rho 2512 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX97 rho : Seg5.F), (seg5AccY97 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3919 : Seg5.F), (rho 3920 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX97 rho : Seg5.F), (seg5AccY97 rho : Seg5.F)⟩
        ⟨(rho 3919 : Seg5.F), (rho 3920 : Seg5.F)⟩
        ⟨(seg5AccX98 rho : Seg5.F), (seg5AccY98 rho : Seg5.F)⟩
        ⟨(rho 3932 : Seg5.F), (rho 3933 : Seg5.F)⟩ := by
    have hnextx : seg5AccX98 rho = seg5AccX97 rho + rho 3927 := by
      unfold seg5AccX98 seg5AccX97
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 97]
      ring
    have hnexty : seg5AccY98 rho = seg5AccY97 rho + rho 3928 := by
      unfold seg5AccY98 seg5AccY97
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 97]
      ring
    have ha0 : (rho 3919 + rho 3920) * (seg5AccX97 rho + seg5AccY97 rho) = rho 3921 := by
      unfold seg5AccX97 seg5AccY97
      linear_combination r4226
    have ha1 : rho 3920 * seg5AccX97 rho = rho 3922 := by
      unfold seg5AccX97
      linear_combination r4227
    have ha2 : rho 3919 * seg5AccY97 rho = rho 3923 := by
      unfold seg5AccY97
      linear_combination r4228
    have ha3 : 3021 * rho 3922 * rho 3923 = rho 3924 := by
      linear_combination r4229
    have ha4 : rho 3925 * (1 + rho 3924) = rho 3922 + rho 3923 := by
      linear_combination r4230
    have ha5 : rho 3926 * (1 - rho 3924) = rho 3921 - rho 3922 - rho 3923 := by
      linear_combination r4231
    have haddx :
        rho 3925 * (1 + 3021 * (rho 3920 * seg5AccX97 rho) * (rho 3919 * seg5AccY97 rho)) =
          rho 3920 * seg5AccX97 rho + rho 3919 * seg5AccY97 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3926 * (1 - 3021 * (rho 3920 * seg5AccX97 rho) * (rho 3919 * seg5AccY97 rho)) =
          (-1) * (rho 3920 * seg5AccX97 rho) - rho 3919 * seg5AccY97 rho +
            (seg5AccY97 rho - seg5AccX97 rho * (-1)) * (rho 3919 + rho 3920) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3926 * (1 - rho 3924) = rho 3921 - rho 3922 - rho 3923 := ha5
        _ = (-1) * rho 3922 - rho 3923 + (seg5AccY97 rho - seg5AccX97 rho * (-1)) * (rho 3919 + rho 3920) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX98 rho = seg5AccX97 rho - Bool.toZMod bit * (seg5AccX97 rho - rho 3925) := by
      have hd : rho 3927 = Bool.toZMod bit * (rho 3925 - seg5AccX97 rho) := by
        rw [← hbit]
        unfold seg5AccX97
        linear_combination -r4232
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY98 rho = seg5AccY97 rho - Bool.toZMod bit * (seg5AccY97 rho - rho 3926) := by
      have hd : rho 3928 = Bool.toZMod bit * (rho 3926 - seg5AccY97 rho) := by
        rw [← hbit]
        unfold seg5AccY97
        linear_combination -r4233
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3919 * rho 3920 = rho 3929 := by linear_combination r4234
    have hd1 : rho 3919 * rho 3919 = rho 3930 := by linear_combination r4235
    have hd2 : rho 3920 * rho 3920 = rho 3931 := by linear_combination r4236
    have hd3 : rho 3932 * (rho 3920 * rho 3920 + rho 3919 * rho 3919 * (-1)) = 2 * (rho 3919 * rho 3920) := by
      rw [hd0, hd1, hd2]
      linear_combination r4237
    have hd4 : rho 3933 * (2 - (rho 3920 * rho 3920 + rho 3919 * rho 3919 * (-1))) = rho 3920 * rho 3920 - rho 3919 * rho 3919 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4238
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX97 rho : Seg5.F), (seg5AccY97 rho : Seg5.F)⟩
      ⟨(rho 3919 : Seg5.F), (rho 3920 : Seg5.F)⟩
      ⟨(rho 3925 : Seg5.F), (rho 3926 : Seg5.F)⟩
      ⟨(seg5AccX98 rho : Seg5.F), (seg5AccY98 rho : Seg5.F)⟩
      ⟨(rho 3932 : Seg5.F), (rho 3933 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung97

theorem seg5_rows98 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4239 rho ∧ Seg5.relationRow4240 rho ∧ Seg5.relationRow4241 rho ∧ Seg5.relationRow4242 rho ∧ Seg5.relationRow4243 rho ∧ Seg5.relationRow4244 rho ∧ Seg5.relationRow4245 rho ∧ Seg5.relationRow4246 rho ∧ Seg5.relationRow4247 rho ∧ Seg5.relationRow4248 rho ∧ Seg5.relationRow4249 rho ∧ Seg5.relationRow4250 rho ∧ Seg5.relationRow4251 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4239⟩
  unfold Seg5.relationPart53 at p53
  rcases p53 with ⟨r4240, r4241, r4242, r4243, r4244, r4245, r4246, r4247, r4248, r4249, r4250, r4251, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4239, r4240, r4241, r4242, r4243, r4244, r4245, r4246, r4247, r4248, r4249, r4250, r4251⟩

theorem seg5_rung98 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2513 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX98 rho : Seg5.F), (seg5AccY98 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3932 : Seg5.F), (rho 3933 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX98 rho : Seg5.F), (seg5AccY98 rho : Seg5.F)⟩
        ⟨(rho 3932 : Seg5.F), (rho 3933 : Seg5.F)⟩
        ⟨(seg5AccX99 rho : Seg5.F), (seg5AccY99 rho : Seg5.F)⟩
        ⟨(rho 3945 : Seg5.F), (rho 3946 : Seg5.F)⟩ := by
  obtain ⟨r4239, r4240, r4241, r4242, r4243, r4244, r4245, r4246, r4247, r4248, r4249, r4250, r4251⟩ := seg5_rows98 rho h
  unfold Seg5.relationRow4239 at r4239
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4239
  unfold Seg5.relationRow4240 at r4240
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4240
  unfold Seg5.relationRow4241 at r4241
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4241
  unfold Seg5.relationRow4242 at r4242
  unfold Seg5.relationRow4243 at r4243
  unfold Seg5.relationRow4244 at r4244
  unfold Seg5.relationRow4245 at r4245
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4245
  unfold Seg5.relationRow4246 at r4246
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4246
  unfold Seg5.relationRow4247 at r4247
  unfold Seg5.relationRow4248 at r4248
  unfold Seg5.relationRow4249 at r4249
  unfold Seg5.relationRow4250 at r4250
  unfold Seg5.relationRow4251 at r4251
  have hrung98 (bit : Bool) (hbit : rho 2513 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX98 rho : Seg5.F), (seg5AccY98 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3932 : Seg5.F), (rho 3933 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX98 rho : Seg5.F), (seg5AccY98 rho : Seg5.F)⟩
        ⟨(rho 3932 : Seg5.F), (rho 3933 : Seg5.F)⟩
        ⟨(seg5AccX99 rho : Seg5.F), (seg5AccY99 rho : Seg5.F)⟩
        ⟨(rho 3945 : Seg5.F), (rho 3946 : Seg5.F)⟩ := by
    have hnextx : seg5AccX99 rho = seg5AccX98 rho + rho 3940 := by
      unfold seg5AccX99 seg5AccX98
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 98]
      ring
    have hnexty : seg5AccY99 rho = seg5AccY98 rho + rho 3941 := by
      unfold seg5AccY99 seg5AccY98
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 98]
      ring
    have ha0 : (rho 3932 + rho 3933) * (seg5AccX98 rho + seg5AccY98 rho) = rho 3934 := by
      unfold seg5AccX98 seg5AccY98
      linear_combination r4239
    have ha1 : rho 3933 * seg5AccX98 rho = rho 3935 := by
      unfold seg5AccX98
      linear_combination r4240
    have ha2 : rho 3932 * seg5AccY98 rho = rho 3936 := by
      unfold seg5AccY98
      linear_combination r4241
    have ha3 : 3021 * rho 3935 * rho 3936 = rho 3937 := by
      linear_combination r4242
    have ha4 : rho 3938 * (1 + rho 3937) = rho 3935 + rho 3936 := by
      linear_combination r4243
    have ha5 : rho 3939 * (1 - rho 3937) = rho 3934 - rho 3935 - rho 3936 := by
      linear_combination r4244
    have haddx :
        rho 3938 * (1 + 3021 * (rho 3933 * seg5AccX98 rho) * (rho 3932 * seg5AccY98 rho)) =
          rho 3933 * seg5AccX98 rho + rho 3932 * seg5AccY98 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3939 * (1 - 3021 * (rho 3933 * seg5AccX98 rho) * (rho 3932 * seg5AccY98 rho)) =
          (-1) * (rho 3933 * seg5AccX98 rho) - rho 3932 * seg5AccY98 rho +
            (seg5AccY98 rho - seg5AccX98 rho * (-1)) * (rho 3932 + rho 3933) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3939 * (1 - rho 3937) = rho 3934 - rho 3935 - rho 3936 := ha5
        _ = (-1) * rho 3935 - rho 3936 + (seg5AccY98 rho - seg5AccX98 rho * (-1)) * (rho 3932 + rho 3933) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX99 rho = seg5AccX98 rho - Bool.toZMod bit * (seg5AccX98 rho - rho 3938) := by
      have hd : rho 3940 = Bool.toZMod bit * (rho 3938 - seg5AccX98 rho) := by
        rw [← hbit]
        unfold seg5AccX98
        linear_combination -r4245
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY99 rho = seg5AccY98 rho - Bool.toZMod bit * (seg5AccY98 rho - rho 3939) := by
      have hd : rho 3941 = Bool.toZMod bit * (rho 3939 - seg5AccY98 rho) := by
        rw [← hbit]
        unfold seg5AccY98
        linear_combination -r4246
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3932 * rho 3933 = rho 3942 := by linear_combination r4247
    have hd1 : rho 3932 * rho 3932 = rho 3943 := by linear_combination r4248
    have hd2 : rho 3933 * rho 3933 = rho 3944 := by linear_combination r4249
    have hd3 : rho 3945 * (rho 3933 * rho 3933 + rho 3932 * rho 3932 * (-1)) = 2 * (rho 3932 * rho 3933) := by
      rw [hd0, hd1, hd2]
      linear_combination r4250
    have hd4 : rho 3946 * (2 - (rho 3933 * rho 3933 + rho 3932 * rho 3932 * (-1))) = rho 3933 * rho 3933 - rho 3932 * rho 3932 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4251
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX98 rho : Seg5.F), (seg5AccY98 rho : Seg5.F)⟩
      ⟨(rho 3932 : Seg5.F), (rho 3933 : Seg5.F)⟩
      ⟨(rho 3938 : Seg5.F), (rho 3939 : Seg5.F)⟩
      ⟨(seg5AccX99 rho : Seg5.F), (seg5AccY99 rho : Seg5.F)⟩
      ⟨(rho 3945 : Seg5.F), (rho 3946 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung98

theorem seg5_hstep_c8 (rho : Nat -> Seg5.F) (h : Seg5.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (2415 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 88 ≤ i → i < 99 →
      EdwardsBridge.onCurve (seg5LadderAccState rho i) →
      EdwardsBridge.onCurve (seg5LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg5LadderAccState rho i) (seg5LadderCurState rho i)
        (seg5LadderAccState rho (i + 1)) (seg5LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg5_rung88 rho h bits[88]! (hbitAt 88 (by omega)) hacc hcur
  · exact seg5_rung89 rho h bits[89]! (hbitAt 89 (by omega)) hacc hcur
  · exact seg5_rung90 rho h bits[90]! (hbitAt 90 (by omega)) hacc hcur
  · exact seg5_rung91 rho h bits[91]! (hbitAt 91 (by omega)) hacc hcur
  · exact seg5_rung92 rho h bits[92]! (hbitAt 92 (by omega)) hacc hcur
  · exact seg5_rung93 rho h bits[93]! (hbitAt 93 (by omega)) hacc hcur
  · exact seg5_rung94 rho h bits[94]! (hbitAt 94 (by omega)) hacc hcur
  · exact seg5_rung95 rho h bits[95]! (hbitAt 95 (by omega)) hacc hcur
  · exact seg5_rung96 rho h bits[96]! (hbitAt 96 (by omega)) hacc hcur
  · exact seg5_rung97 rho h bits[97]! (hbitAt 97 (by omega)) hacc hcur
  · exact seg5_rung98 rho h bits[98]! (hbitAt 98 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
