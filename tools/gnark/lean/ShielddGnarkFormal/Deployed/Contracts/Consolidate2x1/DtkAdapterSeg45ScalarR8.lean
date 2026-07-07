import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg45_rows88 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4109 rho ∧ Seg45.relationRow4110 rho ∧ Seg45.relationRow4111 rho ∧ Seg45.relationRow4112 rho ∧ Seg45.relationRow4113 rho ∧ Seg45.relationRow4114 rho ∧ Seg45.relationRow4115 rho ∧ Seg45.relationRow4116 rho ∧ Seg45.relationRow4117 rho ∧ Seg45.relationRow4118 rho ∧ Seg45.relationRow4119 rho ∧ Seg45.relationRow4120 rho ∧ Seg45.relationRow4121 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4109, r4110, r4111, r4112, r4113, r4114, r4115, r4116, r4117, r4118, r4119, r4120, r4121, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4109, r4110, r4111, r4112, r4113, r4114, r4115, r4116, r4117, r4118, r4119, r4120, r4121⟩

theorem seg45_rung88 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41036 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX88 rho : Seg45.F), (seg45AccY88 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42335 : Seg45.F), (rho 42336 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX88 rho : Seg45.F), (seg45AccY88 rho : Seg45.F)⟩
        ⟨(rho 42335 : Seg45.F), (rho 42336 : Seg45.F)⟩
        ⟨(seg45AccX89 rho : Seg45.F), (seg45AccY89 rho : Seg45.F)⟩
        ⟨(rho 42348 : Seg45.F), (rho 42349 : Seg45.F)⟩ := by
  obtain ⟨r4109, r4110, r4111, r4112, r4113, r4114, r4115, r4116, r4117, r4118, r4119, r4120, r4121⟩ := seg45_rows88 rho h
  unfold Seg45.relationRow4109 at r4109
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4109
  unfold Seg45.relationRow4110 at r4110
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4110
  unfold Seg45.relationRow4111 at r4111
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4111
  unfold Seg45.relationRow4112 at r4112
  unfold Seg45.relationRow4113 at r4113
  unfold Seg45.relationRow4114 at r4114
  unfold Seg45.relationRow4115 at r4115
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4115
  unfold Seg45.relationRow4116 at r4116
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4116
  unfold Seg45.relationRow4117 at r4117
  unfold Seg45.relationRow4118 at r4118
  unfold Seg45.relationRow4119 at r4119
  unfold Seg45.relationRow4120 at r4120
  unfold Seg45.relationRow4121 at r4121
  have hrung88 (bit : Bool) (hbit : rho 41036 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX88 rho : Seg45.F), (seg45AccY88 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42335 : Seg45.F), (rho 42336 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX88 rho : Seg45.F), (seg45AccY88 rho : Seg45.F)⟩
        ⟨(rho 42335 : Seg45.F), (rho 42336 : Seg45.F)⟩
        ⟨(seg45AccX89 rho : Seg45.F), (seg45AccY89 rho : Seg45.F)⟩
        ⟨(rho 42348 : Seg45.F), (rho 42349 : Seg45.F)⟩ := by
    have hnextx : seg45AccX89 rho = seg45AccX88 rho + rho 42343 := by
      unfold seg45AccX89 seg45AccX88
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 88]
      ring
    have hnexty : seg45AccY89 rho = seg45AccY88 rho + rho 42344 := by
      unfold seg45AccY89 seg45AccY88
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 88]
      ring
    have ha0 : (rho 42335 + rho 42336) * (seg45AccX88 rho + seg45AccY88 rho) = rho 42337 := by
      unfold seg45AccX88 seg45AccY88
      linear_combination r4109
    have ha1 : rho 42336 * seg45AccX88 rho = rho 42338 := by
      unfold seg45AccX88
      linear_combination r4110
    have ha2 : rho 42335 * seg45AccY88 rho = rho 42339 := by
      unfold seg45AccY88
      linear_combination r4111
    have ha3 : 3021 * rho 42338 * rho 42339 = rho 42340 := by
      linear_combination r4112
    have ha4 : rho 42341 * (1 + rho 42340) = rho 42338 + rho 42339 := by
      linear_combination r4113
    have ha5 : rho 42342 * (1 - rho 42340) = rho 42337 - rho 42338 - rho 42339 := by
      linear_combination r4114
    have haddx :
        rho 42341 * (1 + 3021 * (rho 42336 * seg45AccX88 rho) * (rho 42335 * seg45AccY88 rho)) =
          rho 42336 * seg45AccX88 rho + rho 42335 * seg45AccY88 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42342 * (1 - 3021 * (rho 42336 * seg45AccX88 rho) * (rho 42335 * seg45AccY88 rho)) =
          (-1) * (rho 42336 * seg45AccX88 rho) - rho 42335 * seg45AccY88 rho +
            (seg45AccY88 rho - seg45AccX88 rho * (-1)) * (rho 42335 + rho 42336) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42342 * (1 - rho 42340) = rho 42337 - rho 42338 - rho 42339 := ha5
        _ = (-1) * rho 42338 - rho 42339 + (seg45AccY88 rho - seg45AccX88 rho * (-1)) * (rho 42335 + rho 42336) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX89 rho = seg45AccX88 rho - Bool.toZMod bit * (seg45AccX88 rho - rho 42341) := by
      have hd : rho 42343 = Bool.toZMod bit * (rho 42341 - seg45AccX88 rho) := by
        rw [← hbit]
        unfold seg45AccX88
        linear_combination -r4115
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY89 rho = seg45AccY88 rho - Bool.toZMod bit * (seg45AccY88 rho - rho 42342) := by
      have hd : rho 42344 = Bool.toZMod bit * (rho 42342 - seg45AccY88 rho) := by
        rw [← hbit]
        unfold seg45AccY88
        linear_combination -r4116
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42335 * rho 42336 = rho 42345 := by linear_combination r4117
    have hd1 : rho 42335 * rho 42335 = rho 42346 := by linear_combination r4118
    have hd2 : rho 42336 * rho 42336 = rho 42347 := by linear_combination r4119
    have hd3 : rho 42348 * (rho 42336 * rho 42336 + rho 42335 * rho 42335 * (-1)) = 2 * (rho 42335 * rho 42336) := by
      rw [hd0, hd1, hd2]
      linear_combination r4120
    have hd4 : rho 42349 * (2 - (rho 42336 * rho 42336 + rho 42335 * rho 42335 * (-1))) = rho 42336 * rho 42336 - rho 42335 * rho 42335 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4121
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX88 rho : Seg45.F), (seg45AccY88 rho : Seg45.F)⟩
      ⟨(rho 42335 : Seg45.F), (rho 42336 : Seg45.F)⟩
      ⟨(rho 42341 : Seg45.F), (rho 42342 : Seg45.F)⟩
      ⟨(seg45AccX89 rho : Seg45.F), (seg45AccY89 rho : Seg45.F)⟩
      ⟨(rho 42348 : Seg45.F), (rho 42349 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung88

theorem seg45_rows89 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4122 rho ∧ Seg45.relationRow4123 rho ∧ Seg45.relationRow4124 rho ∧ Seg45.relationRow4125 rho ∧ Seg45.relationRow4126 rho ∧ Seg45.relationRow4127 rho ∧ Seg45.relationRow4128 rho ∧ Seg45.relationRow4129 rho ∧ Seg45.relationRow4130 rho ∧ Seg45.relationRow4131 rho ∧ Seg45.relationRow4132 rho ∧ Seg45.relationRow4133 rho ∧ Seg45.relationRow4134 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4122, r4123, r4124, r4125, r4126, r4127, r4128, r4129, r4130, r4131, r4132, r4133, r4134, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4122, r4123, r4124, r4125, r4126, r4127, r4128, r4129, r4130, r4131, r4132, r4133, r4134⟩

theorem seg45_rung89 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41037 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX89 rho : Seg45.F), (seg45AccY89 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42348 : Seg45.F), (rho 42349 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX89 rho : Seg45.F), (seg45AccY89 rho : Seg45.F)⟩
        ⟨(rho 42348 : Seg45.F), (rho 42349 : Seg45.F)⟩
        ⟨(seg45AccX90 rho : Seg45.F), (seg45AccY90 rho : Seg45.F)⟩
        ⟨(rho 42361 : Seg45.F), (rho 42362 : Seg45.F)⟩ := by
  obtain ⟨r4122, r4123, r4124, r4125, r4126, r4127, r4128, r4129, r4130, r4131, r4132, r4133, r4134⟩ := seg45_rows89 rho h
  unfold Seg45.relationRow4122 at r4122
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4122
  unfold Seg45.relationRow4123 at r4123
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4123
  unfold Seg45.relationRow4124 at r4124
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4124
  unfold Seg45.relationRow4125 at r4125
  unfold Seg45.relationRow4126 at r4126
  unfold Seg45.relationRow4127 at r4127
  unfold Seg45.relationRow4128 at r4128
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4128
  unfold Seg45.relationRow4129 at r4129
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4129
  unfold Seg45.relationRow4130 at r4130
  unfold Seg45.relationRow4131 at r4131
  unfold Seg45.relationRow4132 at r4132
  unfold Seg45.relationRow4133 at r4133
  unfold Seg45.relationRow4134 at r4134
  have hrung89 (bit : Bool) (hbit : rho 41037 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX89 rho : Seg45.F), (seg45AccY89 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42348 : Seg45.F), (rho 42349 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX89 rho : Seg45.F), (seg45AccY89 rho : Seg45.F)⟩
        ⟨(rho 42348 : Seg45.F), (rho 42349 : Seg45.F)⟩
        ⟨(seg45AccX90 rho : Seg45.F), (seg45AccY90 rho : Seg45.F)⟩
        ⟨(rho 42361 : Seg45.F), (rho 42362 : Seg45.F)⟩ := by
    have hnextx : seg45AccX90 rho = seg45AccX89 rho + rho 42356 := by
      unfold seg45AccX90 seg45AccX89
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 89]
      ring
    have hnexty : seg45AccY90 rho = seg45AccY89 rho + rho 42357 := by
      unfold seg45AccY90 seg45AccY89
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 89]
      ring
    have ha0 : (rho 42348 + rho 42349) * (seg45AccX89 rho + seg45AccY89 rho) = rho 42350 := by
      unfold seg45AccX89 seg45AccY89
      linear_combination r4122
    have ha1 : rho 42349 * seg45AccX89 rho = rho 42351 := by
      unfold seg45AccX89
      linear_combination r4123
    have ha2 : rho 42348 * seg45AccY89 rho = rho 42352 := by
      unfold seg45AccY89
      linear_combination r4124
    have ha3 : 3021 * rho 42351 * rho 42352 = rho 42353 := by
      linear_combination r4125
    have ha4 : rho 42354 * (1 + rho 42353) = rho 42351 + rho 42352 := by
      linear_combination r4126
    have ha5 : rho 42355 * (1 - rho 42353) = rho 42350 - rho 42351 - rho 42352 := by
      linear_combination r4127
    have haddx :
        rho 42354 * (1 + 3021 * (rho 42349 * seg45AccX89 rho) * (rho 42348 * seg45AccY89 rho)) =
          rho 42349 * seg45AccX89 rho + rho 42348 * seg45AccY89 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42355 * (1 - 3021 * (rho 42349 * seg45AccX89 rho) * (rho 42348 * seg45AccY89 rho)) =
          (-1) * (rho 42349 * seg45AccX89 rho) - rho 42348 * seg45AccY89 rho +
            (seg45AccY89 rho - seg45AccX89 rho * (-1)) * (rho 42348 + rho 42349) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42355 * (1 - rho 42353) = rho 42350 - rho 42351 - rho 42352 := ha5
        _ = (-1) * rho 42351 - rho 42352 + (seg45AccY89 rho - seg45AccX89 rho * (-1)) * (rho 42348 + rho 42349) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX90 rho = seg45AccX89 rho - Bool.toZMod bit * (seg45AccX89 rho - rho 42354) := by
      have hd : rho 42356 = Bool.toZMod bit * (rho 42354 - seg45AccX89 rho) := by
        rw [← hbit]
        unfold seg45AccX89
        linear_combination -r4128
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY90 rho = seg45AccY89 rho - Bool.toZMod bit * (seg45AccY89 rho - rho 42355) := by
      have hd : rho 42357 = Bool.toZMod bit * (rho 42355 - seg45AccY89 rho) := by
        rw [← hbit]
        unfold seg45AccY89
        linear_combination -r4129
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42348 * rho 42349 = rho 42358 := by linear_combination r4130
    have hd1 : rho 42348 * rho 42348 = rho 42359 := by linear_combination r4131
    have hd2 : rho 42349 * rho 42349 = rho 42360 := by linear_combination r4132
    have hd3 : rho 42361 * (rho 42349 * rho 42349 + rho 42348 * rho 42348 * (-1)) = 2 * (rho 42348 * rho 42349) := by
      rw [hd0, hd1, hd2]
      linear_combination r4133
    have hd4 : rho 42362 * (2 - (rho 42349 * rho 42349 + rho 42348 * rho 42348 * (-1))) = rho 42349 * rho 42349 - rho 42348 * rho 42348 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4134
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX89 rho : Seg45.F), (seg45AccY89 rho : Seg45.F)⟩
      ⟨(rho 42348 : Seg45.F), (rho 42349 : Seg45.F)⟩
      ⟨(rho 42354 : Seg45.F), (rho 42355 : Seg45.F)⟩
      ⟨(seg45AccX90 rho : Seg45.F), (seg45AccY90 rho : Seg45.F)⟩
      ⟨(rho 42361 : Seg45.F), (rho 42362 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung89

theorem seg45_rows90 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4135 rho ∧ Seg45.relationRow4136 rho ∧ Seg45.relationRow4137 rho ∧ Seg45.relationRow4138 rho ∧ Seg45.relationRow4139 rho ∧ Seg45.relationRow4140 rho ∧ Seg45.relationRow4141 rho ∧ Seg45.relationRow4142 rho ∧ Seg45.relationRow4143 rho ∧ Seg45.relationRow4144 rho ∧ Seg45.relationRow4145 rho ∧ Seg45.relationRow4146 rho ∧ Seg45.relationRow4147 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4135, r4136, r4137, r4138, r4139, r4140, r4141, r4142, r4143, r4144, r4145, r4146, r4147, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4135, r4136, r4137, r4138, r4139, r4140, r4141, r4142, r4143, r4144, r4145, r4146, r4147⟩

theorem seg45_rung90 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41038 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX90 rho : Seg45.F), (seg45AccY90 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42361 : Seg45.F), (rho 42362 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX90 rho : Seg45.F), (seg45AccY90 rho : Seg45.F)⟩
        ⟨(rho 42361 : Seg45.F), (rho 42362 : Seg45.F)⟩
        ⟨(seg45AccX91 rho : Seg45.F), (seg45AccY91 rho : Seg45.F)⟩
        ⟨(rho 42374 : Seg45.F), (rho 42375 : Seg45.F)⟩ := by
  obtain ⟨r4135, r4136, r4137, r4138, r4139, r4140, r4141, r4142, r4143, r4144, r4145, r4146, r4147⟩ := seg45_rows90 rho h
  unfold Seg45.relationRow4135 at r4135
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4135
  unfold Seg45.relationRow4136 at r4136
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4136
  unfold Seg45.relationRow4137 at r4137
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4137
  unfold Seg45.relationRow4138 at r4138
  unfold Seg45.relationRow4139 at r4139
  unfold Seg45.relationRow4140 at r4140
  unfold Seg45.relationRow4141 at r4141
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4141
  unfold Seg45.relationRow4142 at r4142
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4142
  unfold Seg45.relationRow4143 at r4143
  unfold Seg45.relationRow4144 at r4144
  unfold Seg45.relationRow4145 at r4145
  unfold Seg45.relationRow4146 at r4146
  unfold Seg45.relationRow4147 at r4147
  have hrung90 (bit : Bool) (hbit : rho 41038 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX90 rho : Seg45.F), (seg45AccY90 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42361 : Seg45.F), (rho 42362 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX90 rho : Seg45.F), (seg45AccY90 rho : Seg45.F)⟩
        ⟨(rho 42361 : Seg45.F), (rho 42362 : Seg45.F)⟩
        ⟨(seg45AccX91 rho : Seg45.F), (seg45AccY91 rho : Seg45.F)⟩
        ⟨(rho 42374 : Seg45.F), (rho 42375 : Seg45.F)⟩ := by
    have hnextx : seg45AccX91 rho = seg45AccX90 rho + rho 42369 := by
      unfold seg45AccX91 seg45AccX90
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 90]
      ring
    have hnexty : seg45AccY91 rho = seg45AccY90 rho + rho 42370 := by
      unfold seg45AccY91 seg45AccY90
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 90]
      ring
    have ha0 : (rho 42361 + rho 42362) * (seg45AccX90 rho + seg45AccY90 rho) = rho 42363 := by
      unfold seg45AccX90 seg45AccY90
      linear_combination r4135
    have ha1 : rho 42362 * seg45AccX90 rho = rho 42364 := by
      unfold seg45AccX90
      linear_combination r4136
    have ha2 : rho 42361 * seg45AccY90 rho = rho 42365 := by
      unfold seg45AccY90
      linear_combination r4137
    have ha3 : 3021 * rho 42364 * rho 42365 = rho 42366 := by
      linear_combination r4138
    have ha4 : rho 42367 * (1 + rho 42366) = rho 42364 + rho 42365 := by
      linear_combination r4139
    have ha5 : rho 42368 * (1 - rho 42366) = rho 42363 - rho 42364 - rho 42365 := by
      linear_combination r4140
    have haddx :
        rho 42367 * (1 + 3021 * (rho 42362 * seg45AccX90 rho) * (rho 42361 * seg45AccY90 rho)) =
          rho 42362 * seg45AccX90 rho + rho 42361 * seg45AccY90 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42368 * (1 - 3021 * (rho 42362 * seg45AccX90 rho) * (rho 42361 * seg45AccY90 rho)) =
          (-1) * (rho 42362 * seg45AccX90 rho) - rho 42361 * seg45AccY90 rho +
            (seg45AccY90 rho - seg45AccX90 rho * (-1)) * (rho 42361 + rho 42362) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42368 * (1 - rho 42366) = rho 42363 - rho 42364 - rho 42365 := ha5
        _ = (-1) * rho 42364 - rho 42365 + (seg45AccY90 rho - seg45AccX90 rho * (-1)) * (rho 42361 + rho 42362) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX91 rho = seg45AccX90 rho - Bool.toZMod bit * (seg45AccX90 rho - rho 42367) := by
      have hd : rho 42369 = Bool.toZMod bit * (rho 42367 - seg45AccX90 rho) := by
        rw [← hbit]
        unfold seg45AccX90
        linear_combination -r4141
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY91 rho = seg45AccY90 rho - Bool.toZMod bit * (seg45AccY90 rho - rho 42368) := by
      have hd : rho 42370 = Bool.toZMod bit * (rho 42368 - seg45AccY90 rho) := by
        rw [← hbit]
        unfold seg45AccY90
        linear_combination -r4142
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42361 * rho 42362 = rho 42371 := by linear_combination r4143
    have hd1 : rho 42361 * rho 42361 = rho 42372 := by linear_combination r4144
    have hd2 : rho 42362 * rho 42362 = rho 42373 := by linear_combination r4145
    have hd3 : rho 42374 * (rho 42362 * rho 42362 + rho 42361 * rho 42361 * (-1)) = 2 * (rho 42361 * rho 42362) := by
      rw [hd0, hd1, hd2]
      linear_combination r4146
    have hd4 : rho 42375 * (2 - (rho 42362 * rho 42362 + rho 42361 * rho 42361 * (-1))) = rho 42362 * rho 42362 - rho 42361 * rho 42361 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4147
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX90 rho : Seg45.F), (seg45AccY90 rho : Seg45.F)⟩
      ⟨(rho 42361 : Seg45.F), (rho 42362 : Seg45.F)⟩
      ⟨(rho 42367 : Seg45.F), (rho 42368 : Seg45.F)⟩
      ⟨(seg45AccX91 rho : Seg45.F), (seg45AccY91 rho : Seg45.F)⟩
      ⟨(rho 42374 : Seg45.F), (rho 42375 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung90

theorem seg45_rows91 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4148 rho ∧ Seg45.relationRow4149 rho ∧ Seg45.relationRow4150 rho ∧ Seg45.relationRow4151 rho ∧ Seg45.relationRow4152 rho ∧ Seg45.relationRow4153 rho ∧ Seg45.relationRow4154 rho ∧ Seg45.relationRow4155 rho ∧ Seg45.relationRow4156 rho ∧ Seg45.relationRow4157 rho ∧ Seg45.relationRow4158 rho ∧ Seg45.relationRow4159 rho ∧ Seg45.relationRow4160 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4148, r4149, r4150, r4151, r4152, r4153, r4154, r4155, r4156, r4157, r4158, r4159⟩
  unfold Seg45.relationPart52 at p52
  rcases p52 with ⟨r4160, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4148, r4149, r4150, r4151, r4152, r4153, r4154, r4155, r4156, r4157, r4158, r4159, r4160⟩

theorem seg45_rung91 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41039 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX91 rho : Seg45.F), (seg45AccY91 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42374 : Seg45.F), (rho 42375 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX91 rho : Seg45.F), (seg45AccY91 rho : Seg45.F)⟩
        ⟨(rho 42374 : Seg45.F), (rho 42375 : Seg45.F)⟩
        ⟨(seg45AccX92 rho : Seg45.F), (seg45AccY92 rho : Seg45.F)⟩
        ⟨(rho 42387 : Seg45.F), (rho 42388 : Seg45.F)⟩ := by
  obtain ⟨r4148, r4149, r4150, r4151, r4152, r4153, r4154, r4155, r4156, r4157, r4158, r4159, r4160⟩ := seg45_rows91 rho h
  unfold Seg45.relationRow4148 at r4148
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4148
  unfold Seg45.relationRow4149 at r4149
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4149
  unfold Seg45.relationRow4150 at r4150
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4150
  unfold Seg45.relationRow4151 at r4151
  unfold Seg45.relationRow4152 at r4152
  unfold Seg45.relationRow4153 at r4153
  unfold Seg45.relationRow4154 at r4154
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4154
  unfold Seg45.relationRow4155 at r4155
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4155
  unfold Seg45.relationRow4156 at r4156
  unfold Seg45.relationRow4157 at r4157
  unfold Seg45.relationRow4158 at r4158
  unfold Seg45.relationRow4159 at r4159
  unfold Seg45.relationRow4160 at r4160
  have hrung91 (bit : Bool) (hbit : rho 41039 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX91 rho : Seg45.F), (seg45AccY91 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42374 : Seg45.F), (rho 42375 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX91 rho : Seg45.F), (seg45AccY91 rho : Seg45.F)⟩
        ⟨(rho 42374 : Seg45.F), (rho 42375 : Seg45.F)⟩
        ⟨(seg45AccX92 rho : Seg45.F), (seg45AccY92 rho : Seg45.F)⟩
        ⟨(rho 42387 : Seg45.F), (rho 42388 : Seg45.F)⟩ := by
    have hnextx : seg45AccX92 rho = seg45AccX91 rho + rho 42382 := by
      unfold seg45AccX92 seg45AccX91
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 91]
      ring
    have hnexty : seg45AccY92 rho = seg45AccY91 rho + rho 42383 := by
      unfold seg45AccY92 seg45AccY91
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 91]
      ring
    have ha0 : (rho 42374 + rho 42375) * (seg45AccX91 rho + seg45AccY91 rho) = rho 42376 := by
      unfold seg45AccX91 seg45AccY91
      linear_combination r4148
    have ha1 : rho 42375 * seg45AccX91 rho = rho 42377 := by
      unfold seg45AccX91
      linear_combination r4149
    have ha2 : rho 42374 * seg45AccY91 rho = rho 42378 := by
      unfold seg45AccY91
      linear_combination r4150
    have ha3 : 3021 * rho 42377 * rho 42378 = rho 42379 := by
      linear_combination r4151
    have ha4 : rho 42380 * (1 + rho 42379) = rho 42377 + rho 42378 := by
      linear_combination r4152
    have ha5 : rho 42381 * (1 - rho 42379) = rho 42376 - rho 42377 - rho 42378 := by
      linear_combination r4153
    have haddx :
        rho 42380 * (1 + 3021 * (rho 42375 * seg45AccX91 rho) * (rho 42374 * seg45AccY91 rho)) =
          rho 42375 * seg45AccX91 rho + rho 42374 * seg45AccY91 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42381 * (1 - 3021 * (rho 42375 * seg45AccX91 rho) * (rho 42374 * seg45AccY91 rho)) =
          (-1) * (rho 42375 * seg45AccX91 rho) - rho 42374 * seg45AccY91 rho +
            (seg45AccY91 rho - seg45AccX91 rho * (-1)) * (rho 42374 + rho 42375) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42381 * (1 - rho 42379) = rho 42376 - rho 42377 - rho 42378 := ha5
        _ = (-1) * rho 42377 - rho 42378 + (seg45AccY91 rho - seg45AccX91 rho * (-1)) * (rho 42374 + rho 42375) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX92 rho = seg45AccX91 rho - Bool.toZMod bit * (seg45AccX91 rho - rho 42380) := by
      have hd : rho 42382 = Bool.toZMod bit * (rho 42380 - seg45AccX91 rho) := by
        rw [← hbit]
        unfold seg45AccX91
        linear_combination -r4154
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY92 rho = seg45AccY91 rho - Bool.toZMod bit * (seg45AccY91 rho - rho 42381) := by
      have hd : rho 42383 = Bool.toZMod bit * (rho 42381 - seg45AccY91 rho) := by
        rw [← hbit]
        unfold seg45AccY91
        linear_combination -r4155
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42374 * rho 42375 = rho 42384 := by linear_combination r4156
    have hd1 : rho 42374 * rho 42374 = rho 42385 := by linear_combination r4157
    have hd2 : rho 42375 * rho 42375 = rho 42386 := by linear_combination r4158
    have hd3 : rho 42387 * (rho 42375 * rho 42375 + rho 42374 * rho 42374 * (-1)) = 2 * (rho 42374 * rho 42375) := by
      rw [hd0, hd1, hd2]
      linear_combination r4159
    have hd4 : rho 42388 * (2 - (rho 42375 * rho 42375 + rho 42374 * rho 42374 * (-1))) = rho 42375 * rho 42375 - rho 42374 * rho 42374 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4160
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX91 rho : Seg45.F), (seg45AccY91 rho : Seg45.F)⟩
      ⟨(rho 42374 : Seg45.F), (rho 42375 : Seg45.F)⟩
      ⟨(rho 42380 : Seg45.F), (rho 42381 : Seg45.F)⟩
      ⟨(seg45AccX92 rho : Seg45.F), (seg45AccY92 rho : Seg45.F)⟩
      ⟨(rho 42387 : Seg45.F), (rho 42388 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung91

theorem seg45_rows92 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4161 rho ∧ Seg45.relationRow4162 rho ∧ Seg45.relationRow4163 rho ∧ Seg45.relationRow4164 rho ∧ Seg45.relationRow4165 rho ∧ Seg45.relationRow4166 rho ∧ Seg45.relationRow4167 rho ∧ Seg45.relationRow4168 rho ∧ Seg45.relationRow4169 rho ∧ Seg45.relationRow4170 rho ∧ Seg45.relationRow4171 rho ∧ Seg45.relationRow4172 rho ∧ Seg45.relationRow4173 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart52 at p52
  rcases p52 with ⟨_, r4161, r4162, r4163, r4164, r4165, r4166, r4167, r4168, r4169, r4170, r4171, r4172, r4173, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4161, r4162, r4163, r4164, r4165, r4166, r4167, r4168, r4169, r4170, r4171, r4172, r4173⟩

theorem seg45_rung92 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41040 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX92 rho : Seg45.F), (seg45AccY92 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42387 : Seg45.F), (rho 42388 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX92 rho : Seg45.F), (seg45AccY92 rho : Seg45.F)⟩
        ⟨(rho 42387 : Seg45.F), (rho 42388 : Seg45.F)⟩
        ⟨(seg45AccX93 rho : Seg45.F), (seg45AccY93 rho : Seg45.F)⟩
        ⟨(rho 42400 : Seg45.F), (rho 42401 : Seg45.F)⟩ := by
  obtain ⟨r4161, r4162, r4163, r4164, r4165, r4166, r4167, r4168, r4169, r4170, r4171, r4172, r4173⟩ := seg45_rows92 rho h
  unfold Seg45.relationRow4161 at r4161
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4161
  unfold Seg45.relationRow4162 at r4162
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4162
  unfold Seg45.relationRow4163 at r4163
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4163
  unfold Seg45.relationRow4164 at r4164
  unfold Seg45.relationRow4165 at r4165
  unfold Seg45.relationRow4166 at r4166
  unfold Seg45.relationRow4167 at r4167
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4167
  unfold Seg45.relationRow4168 at r4168
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4168
  unfold Seg45.relationRow4169 at r4169
  unfold Seg45.relationRow4170 at r4170
  unfold Seg45.relationRow4171 at r4171
  unfold Seg45.relationRow4172 at r4172
  unfold Seg45.relationRow4173 at r4173
  have hrung92 (bit : Bool) (hbit : rho 41040 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX92 rho : Seg45.F), (seg45AccY92 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42387 : Seg45.F), (rho 42388 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX92 rho : Seg45.F), (seg45AccY92 rho : Seg45.F)⟩
        ⟨(rho 42387 : Seg45.F), (rho 42388 : Seg45.F)⟩
        ⟨(seg45AccX93 rho : Seg45.F), (seg45AccY93 rho : Seg45.F)⟩
        ⟨(rho 42400 : Seg45.F), (rho 42401 : Seg45.F)⟩ := by
    have hnextx : seg45AccX93 rho = seg45AccX92 rho + rho 42395 := by
      unfold seg45AccX93 seg45AccX92
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 92]
      ring
    have hnexty : seg45AccY93 rho = seg45AccY92 rho + rho 42396 := by
      unfold seg45AccY93 seg45AccY92
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 92]
      ring
    have ha0 : (rho 42387 + rho 42388) * (seg45AccX92 rho + seg45AccY92 rho) = rho 42389 := by
      unfold seg45AccX92 seg45AccY92
      linear_combination r4161
    have ha1 : rho 42388 * seg45AccX92 rho = rho 42390 := by
      unfold seg45AccX92
      linear_combination r4162
    have ha2 : rho 42387 * seg45AccY92 rho = rho 42391 := by
      unfold seg45AccY92
      linear_combination r4163
    have ha3 : 3021 * rho 42390 * rho 42391 = rho 42392 := by
      linear_combination r4164
    have ha4 : rho 42393 * (1 + rho 42392) = rho 42390 + rho 42391 := by
      linear_combination r4165
    have ha5 : rho 42394 * (1 - rho 42392) = rho 42389 - rho 42390 - rho 42391 := by
      linear_combination r4166
    have haddx :
        rho 42393 * (1 + 3021 * (rho 42388 * seg45AccX92 rho) * (rho 42387 * seg45AccY92 rho)) =
          rho 42388 * seg45AccX92 rho + rho 42387 * seg45AccY92 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42394 * (1 - 3021 * (rho 42388 * seg45AccX92 rho) * (rho 42387 * seg45AccY92 rho)) =
          (-1) * (rho 42388 * seg45AccX92 rho) - rho 42387 * seg45AccY92 rho +
            (seg45AccY92 rho - seg45AccX92 rho * (-1)) * (rho 42387 + rho 42388) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42394 * (1 - rho 42392) = rho 42389 - rho 42390 - rho 42391 := ha5
        _ = (-1) * rho 42390 - rho 42391 + (seg45AccY92 rho - seg45AccX92 rho * (-1)) * (rho 42387 + rho 42388) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX93 rho = seg45AccX92 rho - Bool.toZMod bit * (seg45AccX92 rho - rho 42393) := by
      have hd : rho 42395 = Bool.toZMod bit * (rho 42393 - seg45AccX92 rho) := by
        rw [← hbit]
        unfold seg45AccX92
        linear_combination -r4167
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY93 rho = seg45AccY92 rho - Bool.toZMod bit * (seg45AccY92 rho - rho 42394) := by
      have hd : rho 42396 = Bool.toZMod bit * (rho 42394 - seg45AccY92 rho) := by
        rw [← hbit]
        unfold seg45AccY92
        linear_combination -r4168
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42387 * rho 42388 = rho 42397 := by linear_combination r4169
    have hd1 : rho 42387 * rho 42387 = rho 42398 := by linear_combination r4170
    have hd2 : rho 42388 * rho 42388 = rho 42399 := by linear_combination r4171
    have hd3 : rho 42400 * (rho 42388 * rho 42388 + rho 42387 * rho 42387 * (-1)) = 2 * (rho 42387 * rho 42388) := by
      rw [hd0, hd1, hd2]
      linear_combination r4172
    have hd4 : rho 42401 * (2 - (rho 42388 * rho 42388 + rho 42387 * rho 42387 * (-1))) = rho 42388 * rho 42388 - rho 42387 * rho 42387 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4173
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX92 rho : Seg45.F), (seg45AccY92 rho : Seg45.F)⟩
      ⟨(rho 42387 : Seg45.F), (rho 42388 : Seg45.F)⟩
      ⟨(rho 42393 : Seg45.F), (rho 42394 : Seg45.F)⟩
      ⟨(seg45AccX93 rho : Seg45.F), (seg45AccY93 rho : Seg45.F)⟩
      ⟨(rho 42400 : Seg45.F), (rho 42401 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung92

theorem seg45_rows93 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4174 rho ∧ Seg45.relationRow4175 rho ∧ Seg45.relationRow4176 rho ∧ Seg45.relationRow4177 rho ∧ Seg45.relationRow4178 rho ∧ Seg45.relationRow4179 rho ∧ Seg45.relationRow4180 rho ∧ Seg45.relationRow4181 rho ∧ Seg45.relationRow4182 rho ∧ Seg45.relationRow4183 rho ∧ Seg45.relationRow4184 rho ∧ Seg45.relationRow4185 rho ∧ Seg45.relationRow4186 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r4174, r4175, r4176, r4177, r4178, r4179, r4180, r4181, r4182, r4183, r4184, r4185, r4186, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4174, r4175, r4176, r4177, r4178, r4179, r4180, r4181, r4182, r4183, r4184, r4185, r4186⟩

theorem seg45_rung93 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41041 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX93 rho : Seg45.F), (seg45AccY93 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42400 : Seg45.F), (rho 42401 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX93 rho : Seg45.F), (seg45AccY93 rho : Seg45.F)⟩
        ⟨(rho 42400 : Seg45.F), (rho 42401 : Seg45.F)⟩
        ⟨(seg45AccX94 rho : Seg45.F), (seg45AccY94 rho : Seg45.F)⟩
        ⟨(rho 42413 : Seg45.F), (rho 42414 : Seg45.F)⟩ := by
  obtain ⟨r4174, r4175, r4176, r4177, r4178, r4179, r4180, r4181, r4182, r4183, r4184, r4185, r4186⟩ := seg45_rows93 rho h
  unfold Seg45.relationRow4174 at r4174
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4174
  unfold Seg45.relationRow4175 at r4175
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4175
  unfold Seg45.relationRow4176 at r4176
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4176
  unfold Seg45.relationRow4177 at r4177
  unfold Seg45.relationRow4178 at r4178
  unfold Seg45.relationRow4179 at r4179
  unfold Seg45.relationRow4180 at r4180
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4180
  unfold Seg45.relationRow4181 at r4181
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4181
  unfold Seg45.relationRow4182 at r4182
  unfold Seg45.relationRow4183 at r4183
  unfold Seg45.relationRow4184 at r4184
  unfold Seg45.relationRow4185 at r4185
  unfold Seg45.relationRow4186 at r4186
  have hrung93 (bit : Bool) (hbit : rho 41041 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX93 rho : Seg45.F), (seg45AccY93 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42400 : Seg45.F), (rho 42401 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX93 rho : Seg45.F), (seg45AccY93 rho : Seg45.F)⟩
        ⟨(rho 42400 : Seg45.F), (rho 42401 : Seg45.F)⟩
        ⟨(seg45AccX94 rho : Seg45.F), (seg45AccY94 rho : Seg45.F)⟩
        ⟨(rho 42413 : Seg45.F), (rho 42414 : Seg45.F)⟩ := by
    have hnextx : seg45AccX94 rho = seg45AccX93 rho + rho 42408 := by
      unfold seg45AccX94 seg45AccX93
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 93]
      ring
    have hnexty : seg45AccY94 rho = seg45AccY93 rho + rho 42409 := by
      unfold seg45AccY94 seg45AccY93
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 93]
      ring
    have ha0 : (rho 42400 + rho 42401) * (seg45AccX93 rho + seg45AccY93 rho) = rho 42402 := by
      unfold seg45AccX93 seg45AccY93
      linear_combination r4174
    have ha1 : rho 42401 * seg45AccX93 rho = rho 42403 := by
      unfold seg45AccX93
      linear_combination r4175
    have ha2 : rho 42400 * seg45AccY93 rho = rho 42404 := by
      unfold seg45AccY93
      linear_combination r4176
    have ha3 : 3021 * rho 42403 * rho 42404 = rho 42405 := by
      linear_combination r4177
    have ha4 : rho 42406 * (1 + rho 42405) = rho 42403 + rho 42404 := by
      linear_combination r4178
    have ha5 : rho 42407 * (1 - rho 42405) = rho 42402 - rho 42403 - rho 42404 := by
      linear_combination r4179
    have haddx :
        rho 42406 * (1 + 3021 * (rho 42401 * seg45AccX93 rho) * (rho 42400 * seg45AccY93 rho)) =
          rho 42401 * seg45AccX93 rho + rho 42400 * seg45AccY93 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42407 * (1 - 3021 * (rho 42401 * seg45AccX93 rho) * (rho 42400 * seg45AccY93 rho)) =
          (-1) * (rho 42401 * seg45AccX93 rho) - rho 42400 * seg45AccY93 rho +
            (seg45AccY93 rho - seg45AccX93 rho * (-1)) * (rho 42400 + rho 42401) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42407 * (1 - rho 42405) = rho 42402 - rho 42403 - rho 42404 := ha5
        _ = (-1) * rho 42403 - rho 42404 + (seg45AccY93 rho - seg45AccX93 rho * (-1)) * (rho 42400 + rho 42401) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX94 rho = seg45AccX93 rho - Bool.toZMod bit * (seg45AccX93 rho - rho 42406) := by
      have hd : rho 42408 = Bool.toZMod bit * (rho 42406 - seg45AccX93 rho) := by
        rw [← hbit]
        unfold seg45AccX93
        linear_combination -r4180
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY94 rho = seg45AccY93 rho - Bool.toZMod bit * (seg45AccY93 rho - rho 42407) := by
      have hd : rho 42409 = Bool.toZMod bit * (rho 42407 - seg45AccY93 rho) := by
        rw [← hbit]
        unfold seg45AccY93
        linear_combination -r4181
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42400 * rho 42401 = rho 42410 := by linear_combination r4182
    have hd1 : rho 42400 * rho 42400 = rho 42411 := by linear_combination r4183
    have hd2 : rho 42401 * rho 42401 = rho 42412 := by linear_combination r4184
    have hd3 : rho 42413 * (rho 42401 * rho 42401 + rho 42400 * rho 42400 * (-1)) = 2 * (rho 42400 * rho 42401) := by
      rw [hd0, hd1, hd2]
      linear_combination r4185
    have hd4 : rho 42414 * (2 - (rho 42401 * rho 42401 + rho 42400 * rho 42400 * (-1))) = rho 42401 * rho 42401 - rho 42400 * rho 42400 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4186
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX93 rho : Seg45.F), (seg45AccY93 rho : Seg45.F)⟩
      ⟨(rho 42400 : Seg45.F), (rho 42401 : Seg45.F)⟩
      ⟨(rho 42406 : Seg45.F), (rho 42407 : Seg45.F)⟩
      ⟨(seg45AccX94 rho : Seg45.F), (seg45AccY94 rho : Seg45.F)⟩
      ⟨(rho 42413 : Seg45.F), (rho 42414 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung93

theorem seg45_rows94 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4187 rho ∧ Seg45.relationRow4188 rho ∧ Seg45.relationRow4189 rho ∧ Seg45.relationRow4190 rho ∧ Seg45.relationRow4191 rho ∧ Seg45.relationRow4192 rho ∧ Seg45.relationRow4193 rho ∧ Seg45.relationRow4194 rho ∧ Seg45.relationRow4195 rho ∧ Seg45.relationRow4196 rho ∧ Seg45.relationRow4197 rho ∧ Seg45.relationRow4198 rho ∧ Seg45.relationRow4199 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4187, r4188, r4189, r4190, r4191, r4192, r4193, r4194, r4195, r4196, r4197, r4198, r4199, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4187, r4188, r4189, r4190, r4191, r4192, r4193, r4194, r4195, r4196, r4197, r4198, r4199⟩

theorem seg45_rung94 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41042 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX94 rho : Seg45.F), (seg45AccY94 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42413 : Seg45.F), (rho 42414 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX94 rho : Seg45.F), (seg45AccY94 rho : Seg45.F)⟩
        ⟨(rho 42413 : Seg45.F), (rho 42414 : Seg45.F)⟩
        ⟨(seg45AccX95 rho : Seg45.F), (seg45AccY95 rho : Seg45.F)⟩
        ⟨(rho 42426 : Seg45.F), (rho 42427 : Seg45.F)⟩ := by
  obtain ⟨r4187, r4188, r4189, r4190, r4191, r4192, r4193, r4194, r4195, r4196, r4197, r4198, r4199⟩ := seg45_rows94 rho h
  unfold Seg45.relationRow4187 at r4187
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4187
  unfold Seg45.relationRow4188 at r4188
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4188
  unfold Seg45.relationRow4189 at r4189
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4189
  unfold Seg45.relationRow4190 at r4190
  unfold Seg45.relationRow4191 at r4191
  unfold Seg45.relationRow4192 at r4192
  unfold Seg45.relationRow4193 at r4193
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4193
  unfold Seg45.relationRow4194 at r4194
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4194
  unfold Seg45.relationRow4195 at r4195
  unfold Seg45.relationRow4196 at r4196
  unfold Seg45.relationRow4197 at r4197
  unfold Seg45.relationRow4198 at r4198
  unfold Seg45.relationRow4199 at r4199
  have hrung94 (bit : Bool) (hbit : rho 41042 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX94 rho : Seg45.F), (seg45AccY94 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42413 : Seg45.F), (rho 42414 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX94 rho : Seg45.F), (seg45AccY94 rho : Seg45.F)⟩
        ⟨(rho 42413 : Seg45.F), (rho 42414 : Seg45.F)⟩
        ⟨(seg45AccX95 rho : Seg45.F), (seg45AccY95 rho : Seg45.F)⟩
        ⟨(rho 42426 : Seg45.F), (rho 42427 : Seg45.F)⟩ := by
    have hnextx : seg45AccX95 rho = seg45AccX94 rho + rho 42421 := by
      unfold seg45AccX95 seg45AccX94
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 94]
      ring
    have hnexty : seg45AccY95 rho = seg45AccY94 rho + rho 42422 := by
      unfold seg45AccY95 seg45AccY94
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 94]
      ring
    have ha0 : (rho 42413 + rho 42414) * (seg45AccX94 rho + seg45AccY94 rho) = rho 42415 := by
      unfold seg45AccX94 seg45AccY94
      linear_combination r4187
    have ha1 : rho 42414 * seg45AccX94 rho = rho 42416 := by
      unfold seg45AccX94
      linear_combination r4188
    have ha2 : rho 42413 * seg45AccY94 rho = rho 42417 := by
      unfold seg45AccY94
      linear_combination r4189
    have ha3 : 3021 * rho 42416 * rho 42417 = rho 42418 := by
      linear_combination r4190
    have ha4 : rho 42419 * (1 + rho 42418) = rho 42416 + rho 42417 := by
      linear_combination r4191
    have ha5 : rho 42420 * (1 - rho 42418) = rho 42415 - rho 42416 - rho 42417 := by
      linear_combination r4192
    have haddx :
        rho 42419 * (1 + 3021 * (rho 42414 * seg45AccX94 rho) * (rho 42413 * seg45AccY94 rho)) =
          rho 42414 * seg45AccX94 rho + rho 42413 * seg45AccY94 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42420 * (1 - 3021 * (rho 42414 * seg45AccX94 rho) * (rho 42413 * seg45AccY94 rho)) =
          (-1) * (rho 42414 * seg45AccX94 rho) - rho 42413 * seg45AccY94 rho +
            (seg45AccY94 rho - seg45AccX94 rho * (-1)) * (rho 42413 + rho 42414) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42420 * (1 - rho 42418) = rho 42415 - rho 42416 - rho 42417 := ha5
        _ = (-1) * rho 42416 - rho 42417 + (seg45AccY94 rho - seg45AccX94 rho * (-1)) * (rho 42413 + rho 42414) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX95 rho = seg45AccX94 rho - Bool.toZMod bit * (seg45AccX94 rho - rho 42419) := by
      have hd : rho 42421 = Bool.toZMod bit * (rho 42419 - seg45AccX94 rho) := by
        rw [← hbit]
        unfold seg45AccX94
        linear_combination -r4193
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY95 rho = seg45AccY94 rho - Bool.toZMod bit * (seg45AccY94 rho - rho 42420) := by
      have hd : rho 42422 = Bool.toZMod bit * (rho 42420 - seg45AccY94 rho) := by
        rw [← hbit]
        unfold seg45AccY94
        linear_combination -r4194
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42413 * rho 42414 = rho 42423 := by linear_combination r4195
    have hd1 : rho 42413 * rho 42413 = rho 42424 := by linear_combination r4196
    have hd2 : rho 42414 * rho 42414 = rho 42425 := by linear_combination r4197
    have hd3 : rho 42426 * (rho 42414 * rho 42414 + rho 42413 * rho 42413 * (-1)) = 2 * (rho 42413 * rho 42414) := by
      rw [hd0, hd1, hd2]
      linear_combination r4198
    have hd4 : rho 42427 * (2 - (rho 42414 * rho 42414 + rho 42413 * rho 42413 * (-1))) = rho 42414 * rho 42414 - rho 42413 * rho 42413 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4199
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX94 rho : Seg45.F), (seg45AccY94 rho : Seg45.F)⟩
      ⟨(rho 42413 : Seg45.F), (rho 42414 : Seg45.F)⟩
      ⟨(rho 42419 : Seg45.F), (rho 42420 : Seg45.F)⟩
      ⟨(seg45AccX95 rho : Seg45.F), (seg45AccY95 rho : Seg45.F)⟩
      ⟨(rho 42426 : Seg45.F), (rho 42427 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung94

theorem seg45_rows95 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4200 rho ∧ Seg45.relationRow4201 rho ∧ Seg45.relationRow4202 rho ∧ Seg45.relationRow4203 rho ∧ Seg45.relationRow4204 rho ∧ Seg45.relationRow4205 rho ∧ Seg45.relationRow4206 rho ∧ Seg45.relationRow4207 rho ∧ Seg45.relationRow4208 rho ∧ Seg45.relationRow4209 rho ∧ Seg45.relationRow4210 rho ∧ Seg45.relationRow4211 rho ∧ Seg45.relationRow4212 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4200, r4201, r4202, r4203, r4204, r4205, r4206, r4207, r4208, r4209, r4210, r4211, r4212, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4200, r4201, r4202, r4203, r4204, r4205, r4206, r4207, r4208, r4209, r4210, r4211, r4212⟩

theorem seg45_rung95 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41043 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX95 rho : Seg45.F), (seg45AccY95 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42426 : Seg45.F), (rho 42427 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX95 rho : Seg45.F), (seg45AccY95 rho : Seg45.F)⟩
        ⟨(rho 42426 : Seg45.F), (rho 42427 : Seg45.F)⟩
        ⟨(seg45AccX96 rho : Seg45.F), (seg45AccY96 rho : Seg45.F)⟩
        ⟨(rho 42439 : Seg45.F), (rho 42440 : Seg45.F)⟩ := by
  obtain ⟨r4200, r4201, r4202, r4203, r4204, r4205, r4206, r4207, r4208, r4209, r4210, r4211, r4212⟩ := seg45_rows95 rho h
  unfold Seg45.relationRow4200 at r4200
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4200
  unfold Seg45.relationRow4201 at r4201
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4201
  unfold Seg45.relationRow4202 at r4202
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4202
  unfold Seg45.relationRow4203 at r4203
  unfold Seg45.relationRow4204 at r4204
  unfold Seg45.relationRow4205 at r4205
  unfold Seg45.relationRow4206 at r4206
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4206
  unfold Seg45.relationRow4207 at r4207
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4207
  unfold Seg45.relationRow4208 at r4208
  unfold Seg45.relationRow4209 at r4209
  unfold Seg45.relationRow4210 at r4210
  unfold Seg45.relationRow4211 at r4211
  unfold Seg45.relationRow4212 at r4212
  have hrung95 (bit : Bool) (hbit : rho 41043 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX95 rho : Seg45.F), (seg45AccY95 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42426 : Seg45.F), (rho 42427 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX95 rho : Seg45.F), (seg45AccY95 rho : Seg45.F)⟩
        ⟨(rho 42426 : Seg45.F), (rho 42427 : Seg45.F)⟩
        ⟨(seg45AccX96 rho : Seg45.F), (seg45AccY96 rho : Seg45.F)⟩
        ⟨(rho 42439 : Seg45.F), (rho 42440 : Seg45.F)⟩ := by
    have hnextx : seg45AccX96 rho = seg45AccX95 rho + rho 42434 := by
      unfold seg45AccX96 seg45AccX95
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 95]
      ring
    have hnexty : seg45AccY96 rho = seg45AccY95 rho + rho 42435 := by
      unfold seg45AccY96 seg45AccY95
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 95]
      ring
    have ha0 : (rho 42426 + rho 42427) * (seg45AccX95 rho + seg45AccY95 rho) = rho 42428 := by
      unfold seg45AccX95 seg45AccY95
      linear_combination r4200
    have ha1 : rho 42427 * seg45AccX95 rho = rho 42429 := by
      unfold seg45AccX95
      linear_combination r4201
    have ha2 : rho 42426 * seg45AccY95 rho = rho 42430 := by
      unfold seg45AccY95
      linear_combination r4202
    have ha3 : 3021 * rho 42429 * rho 42430 = rho 42431 := by
      linear_combination r4203
    have ha4 : rho 42432 * (1 + rho 42431) = rho 42429 + rho 42430 := by
      linear_combination r4204
    have ha5 : rho 42433 * (1 - rho 42431) = rho 42428 - rho 42429 - rho 42430 := by
      linear_combination r4205
    have haddx :
        rho 42432 * (1 + 3021 * (rho 42427 * seg45AccX95 rho) * (rho 42426 * seg45AccY95 rho)) =
          rho 42427 * seg45AccX95 rho + rho 42426 * seg45AccY95 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42433 * (1 - 3021 * (rho 42427 * seg45AccX95 rho) * (rho 42426 * seg45AccY95 rho)) =
          (-1) * (rho 42427 * seg45AccX95 rho) - rho 42426 * seg45AccY95 rho +
            (seg45AccY95 rho - seg45AccX95 rho * (-1)) * (rho 42426 + rho 42427) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42433 * (1 - rho 42431) = rho 42428 - rho 42429 - rho 42430 := ha5
        _ = (-1) * rho 42429 - rho 42430 + (seg45AccY95 rho - seg45AccX95 rho * (-1)) * (rho 42426 + rho 42427) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX96 rho = seg45AccX95 rho - Bool.toZMod bit * (seg45AccX95 rho - rho 42432) := by
      have hd : rho 42434 = Bool.toZMod bit * (rho 42432 - seg45AccX95 rho) := by
        rw [← hbit]
        unfold seg45AccX95
        linear_combination -r4206
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY96 rho = seg45AccY95 rho - Bool.toZMod bit * (seg45AccY95 rho - rho 42433) := by
      have hd : rho 42435 = Bool.toZMod bit * (rho 42433 - seg45AccY95 rho) := by
        rw [← hbit]
        unfold seg45AccY95
        linear_combination -r4207
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42426 * rho 42427 = rho 42436 := by linear_combination r4208
    have hd1 : rho 42426 * rho 42426 = rho 42437 := by linear_combination r4209
    have hd2 : rho 42427 * rho 42427 = rho 42438 := by linear_combination r4210
    have hd3 : rho 42439 * (rho 42427 * rho 42427 + rho 42426 * rho 42426 * (-1)) = 2 * (rho 42426 * rho 42427) := by
      rw [hd0, hd1, hd2]
      linear_combination r4211
    have hd4 : rho 42440 * (2 - (rho 42427 * rho 42427 + rho 42426 * rho 42426 * (-1))) = rho 42427 * rho 42427 - rho 42426 * rho 42426 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4212
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX95 rho : Seg45.F), (seg45AccY95 rho : Seg45.F)⟩
      ⟨(rho 42426 : Seg45.F), (rho 42427 : Seg45.F)⟩
      ⟨(rho 42432 : Seg45.F), (rho 42433 : Seg45.F)⟩
      ⟨(seg45AccX96 rho : Seg45.F), (seg45AccY96 rho : Seg45.F)⟩
      ⟨(rho 42439 : Seg45.F), (rho 42440 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung95

theorem seg45_rows96 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4213 rho ∧ Seg45.relationRow4214 rho ∧ Seg45.relationRow4215 rho ∧ Seg45.relationRow4216 rho ∧ Seg45.relationRow4217 rho ∧ Seg45.relationRow4218 rho ∧ Seg45.relationRow4219 rho ∧ Seg45.relationRow4220 rho ∧ Seg45.relationRow4221 rho ∧ Seg45.relationRow4222 rho ∧ Seg45.relationRow4223 rho ∧ Seg45.relationRow4224 rho ∧ Seg45.relationRow4225 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4213, r4214, r4215, r4216, r4217, r4218, r4219, r4220, r4221, r4222, r4223, r4224, r4225, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4213, r4214, r4215, r4216, r4217, r4218, r4219, r4220, r4221, r4222, r4223, r4224, r4225⟩

theorem seg45_rung96 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41044 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX96 rho : Seg45.F), (seg45AccY96 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42439 : Seg45.F), (rho 42440 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX96 rho : Seg45.F), (seg45AccY96 rho : Seg45.F)⟩
        ⟨(rho 42439 : Seg45.F), (rho 42440 : Seg45.F)⟩
        ⟨(seg45AccX97 rho : Seg45.F), (seg45AccY97 rho : Seg45.F)⟩
        ⟨(rho 42452 : Seg45.F), (rho 42453 : Seg45.F)⟩ := by
  obtain ⟨r4213, r4214, r4215, r4216, r4217, r4218, r4219, r4220, r4221, r4222, r4223, r4224, r4225⟩ := seg45_rows96 rho h
  unfold Seg45.relationRow4213 at r4213
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4213
  unfold Seg45.relationRow4214 at r4214
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4214
  unfold Seg45.relationRow4215 at r4215
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4215
  unfold Seg45.relationRow4216 at r4216
  unfold Seg45.relationRow4217 at r4217
  unfold Seg45.relationRow4218 at r4218
  unfold Seg45.relationRow4219 at r4219
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4219
  unfold Seg45.relationRow4220 at r4220
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4220
  unfold Seg45.relationRow4221 at r4221
  unfold Seg45.relationRow4222 at r4222
  unfold Seg45.relationRow4223 at r4223
  unfold Seg45.relationRow4224 at r4224
  unfold Seg45.relationRow4225 at r4225
  have hrung96 (bit : Bool) (hbit : rho 41044 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX96 rho : Seg45.F), (seg45AccY96 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42439 : Seg45.F), (rho 42440 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX96 rho : Seg45.F), (seg45AccY96 rho : Seg45.F)⟩
        ⟨(rho 42439 : Seg45.F), (rho 42440 : Seg45.F)⟩
        ⟨(seg45AccX97 rho : Seg45.F), (seg45AccY97 rho : Seg45.F)⟩
        ⟨(rho 42452 : Seg45.F), (rho 42453 : Seg45.F)⟩ := by
    have hnextx : seg45AccX97 rho = seg45AccX96 rho + rho 42447 := by
      unfold seg45AccX97 seg45AccX96
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 96]
      ring
    have hnexty : seg45AccY97 rho = seg45AccY96 rho + rho 42448 := by
      unfold seg45AccY97 seg45AccY96
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 96]
      ring
    have ha0 : (rho 42439 + rho 42440) * (seg45AccX96 rho + seg45AccY96 rho) = rho 42441 := by
      unfold seg45AccX96 seg45AccY96
      linear_combination r4213
    have ha1 : rho 42440 * seg45AccX96 rho = rho 42442 := by
      unfold seg45AccX96
      linear_combination r4214
    have ha2 : rho 42439 * seg45AccY96 rho = rho 42443 := by
      unfold seg45AccY96
      linear_combination r4215
    have ha3 : 3021 * rho 42442 * rho 42443 = rho 42444 := by
      linear_combination r4216
    have ha4 : rho 42445 * (1 + rho 42444) = rho 42442 + rho 42443 := by
      linear_combination r4217
    have ha5 : rho 42446 * (1 - rho 42444) = rho 42441 - rho 42442 - rho 42443 := by
      linear_combination r4218
    have haddx :
        rho 42445 * (1 + 3021 * (rho 42440 * seg45AccX96 rho) * (rho 42439 * seg45AccY96 rho)) =
          rho 42440 * seg45AccX96 rho + rho 42439 * seg45AccY96 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42446 * (1 - 3021 * (rho 42440 * seg45AccX96 rho) * (rho 42439 * seg45AccY96 rho)) =
          (-1) * (rho 42440 * seg45AccX96 rho) - rho 42439 * seg45AccY96 rho +
            (seg45AccY96 rho - seg45AccX96 rho * (-1)) * (rho 42439 + rho 42440) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42446 * (1 - rho 42444) = rho 42441 - rho 42442 - rho 42443 := ha5
        _ = (-1) * rho 42442 - rho 42443 + (seg45AccY96 rho - seg45AccX96 rho * (-1)) * (rho 42439 + rho 42440) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX97 rho = seg45AccX96 rho - Bool.toZMod bit * (seg45AccX96 rho - rho 42445) := by
      have hd : rho 42447 = Bool.toZMod bit * (rho 42445 - seg45AccX96 rho) := by
        rw [← hbit]
        unfold seg45AccX96
        linear_combination -r4219
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY97 rho = seg45AccY96 rho - Bool.toZMod bit * (seg45AccY96 rho - rho 42446) := by
      have hd : rho 42448 = Bool.toZMod bit * (rho 42446 - seg45AccY96 rho) := by
        rw [← hbit]
        unfold seg45AccY96
        linear_combination -r4220
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42439 * rho 42440 = rho 42449 := by linear_combination r4221
    have hd1 : rho 42439 * rho 42439 = rho 42450 := by linear_combination r4222
    have hd2 : rho 42440 * rho 42440 = rho 42451 := by linear_combination r4223
    have hd3 : rho 42452 * (rho 42440 * rho 42440 + rho 42439 * rho 42439 * (-1)) = 2 * (rho 42439 * rho 42440) := by
      rw [hd0, hd1, hd2]
      linear_combination r4224
    have hd4 : rho 42453 * (2 - (rho 42440 * rho 42440 + rho 42439 * rho 42439 * (-1))) = rho 42440 * rho 42440 - rho 42439 * rho 42439 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4225
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX96 rho : Seg45.F), (seg45AccY96 rho : Seg45.F)⟩
      ⟨(rho 42439 : Seg45.F), (rho 42440 : Seg45.F)⟩
      ⟨(rho 42445 : Seg45.F), (rho 42446 : Seg45.F)⟩
      ⟨(seg45AccX97 rho : Seg45.F), (seg45AccY97 rho : Seg45.F)⟩
      ⟨(rho 42452 : Seg45.F), (rho 42453 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung96

theorem seg45_rows97 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4226 rho ∧ Seg45.relationRow4227 rho ∧ Seg45.relationRow4228 rho ∧ Seg45.relationRow4229 rho ∧ Seg45.relationRow4230 rho ∧ Seg45.relationRow4231 rho ∧ Seg45.relationRow4232 rho ∧ Seg45.relationRow4233 rho ∧ Seg45.relationRow4234 rho ∧ Seg45.relationRow4235 rho ∧ Seg45.relationRow4236 rho ∧ Seg45.relationRow4237 rho ∧ Seg45.relationRow4238 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4226, r4227, r4228, r4229, r4230, r4231, r4232, r4233, r4234, r4235, r4236, r4237, r4238, _⟩
  exact ⟨r4226, r4227, r4228, r4229, r4230, r4231, r4232, r4233, r4234, r4235, r4236, r4237, r4238⟩

theorem seg45_rung97 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41045 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX97 rho : Seg45.F), (seg45AccY97 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42452 : Seg45.F), (rho 42453 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX97 rho : Seg45.F), (seg45AccY97 rho : Seg45.F)⟩
        ⟨(rho 42452 : Seg45.F), (rho 42453 : Seg45.F)⟩
        ⟨(seg45AccX98 rho : Seg45.F), (seg45AccY98 rho : Seg45.F)⟩
        ⟨(rho 42465 : Seg45.F), (rho 42466 : Seg45.F)⟩ := by
  obtain ⟨r4226, r4227, r4228, r4229, r4230, r4231, r4232, r4233, r4234, r4235, r4236, r4237, r4238⟩ := seg45_rows97 rho h
  unfold Seg45.relationRow4226 at r4226
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4226
  unfold Seg45.relationRow4227 at r4227
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4227
  unfold Seg45.relationRow4228 at r4228
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4228
  unfold Seg45.relationRow4229 at r4229
  unfold Seg45.relationRow4230 at r4230
  unfold Seg45.relationRow4231 at r4231
  unfold Seg45.relationRow4232 at r4232
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4232
  unfold Seg45.relationRow4233 at r4233
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4233
  unfold Seg45.relationRow4234 at r4234
  unfold Seg45.relationRow4235 at r4235
  unfold Seg45.relationRow4236 at r4236
  unfold Seg45.relationRow4237 at r4237
  unfold Seg45.relationRow4238 at r4238
  have hrung97 (bit : Bool) (hbit : rho 41045 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX97 rho : Seg45.F), (seg45AccY97 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42452 : Seg45.F), (rho 42453 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX97 rho : Seg45.F), (seg45AccY97 rho : Seg45.F)⟩
        ⟨(rho 42452 : Seg45.F), (rho 42453 : Seg45.F)⟩
        ⟨(seg45AccX98 rho : Seg45.F), (seg45AccY98 rho : Seg45.F)⟩
        ⟨(rho 42465 : Seg45.F), (rho 42466 : Seg45.F)⟩ := by
    have hnextx : seg45AccX98 rho = seg45AccX97 rho + rho 42460 := by
      unfold seg45AccX98 seg45AccX97
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 97]
      ring
    have hnexty : seg45AccY98 rho = seg45AccY97 rho + rho 42461 := by
      unfold seg45AccY98 seg45AccY97
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 97]
      ring
    have ha0 : (rho 42452 + rho 42453) * (seg45AccX97 rho + seg45AccY97 rho) = rho 42454 := by
      unfold seg45AccX97 seg45AccY97
      linear_combination r4226
    have ha1 : rho 42453 * seg45AccX97 rho = rho 42455 := by
      unfold seg45AccX97
      linear_combination r4227
    have ha2 : rho 42452 * seg45AccY97 rho = rho 42456 := by
      unfold seg45AccY97
      linear_combination r4228
    have ha3 : 3021 * rho 42455 * rho 42456 = rho 42457 := by
      linear_combination r4229
    have ha4 : rho 42458 * (1 + rho 42457) = rho 42455 + rho 42456 := by
      linear_combination r4230
    have ha5 : rho 42459 * (1 - rho 42457) = rho 42454 - rho 42455 - rho 42456 := by
      linear_combination r4231
    have haddx :
        rho 42458 * (1 + 3021 * (rho 42453 * seg45AccX97 rho) * (rho 42452 * seg45AccY97 rho)) =
          rho 42453 * seg45AccX97 rho + rho 42452 * seg45AccY97 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42459 * (1 - 3021 * (rho 42453 * seg45AccX97 rho) * (rho 42452 * seg45AccY97 rho)) =
          (-1) * (rho 42453 * seg45AccX97 rho) - rho 42452 * seg45AccY97 rho +
            (seg45AccY97 rho - seg45AccX97 rho * (-1)) * (rho 42452 + rho 42453) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42459 * (1 - rho 42457) = rho 42454 - rho 42455 - rho 42456 := ha5
        _ = (-1) * rho 42455 - rho 42456 + (seg45AccY97 rho - seg45AccX97 rho * (-1)) * (rho 42452 + rho 42453) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX98 rho = seg45AccX97 rho - Bool.toZMod bit * (seg45AccX97 rho - rho 42458) := by
      have hd : rho 42460 = Bool.toZMod bit * (rho 42458 - seg45AccX97 rho) := by
        rw [← hbit]
        unfold seg45AccX97
        linear_combination -r4232
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY98 rho = seg45AccY97 rho - Bool.toZMod bit * (seg45AccY97 rho - rho 42459) := by
      have hd : rho 42461 = Bool.toZMod bit * (rho 42459 - seg45AccY97 rho) := by
        rw [← hbit]
        unfold seg45AccY97
        linear_combination -r4233
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42452 * rho 42453 = rho 42462 := by linear_combination r4234
    have hd1 : rho 42452 * rho 42452 = rho 42463 := by linear_combination r4235
    have hd2 : rho 42453 * rho 42453 = rho 42464 := by linear_combination r4236
    have hd3 : rho 42465 * (rho 42453 * rho 42453 + rho 42452 * rho 42452 * (-1)) = 2 * (rho 42452 * rho 42453) := by
      rw [hd0, hd1, hd2]
      linear_combination r4237
    have hd4 : rho 42466 * (2 - (rho 42453 * rho 42453 + rho 42452 * rho 42452 * (-1))) = rho 42453 * rho 42453 - rho 42452 * rho 42452 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4238
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX97 rho : Seg45.F), (seg45AccY97 rho : Seg45.F)⟩
      ⟨(rho 42452 : Seg45.F), (rho 42453 : Seg45.F)⟩
      ⟨(rho 42458 : Seg45.F), (rho 42459 : Seg45.F)⟩
      ⟨(seg45AccX98 rho : Seg45.F), (seg45AccY98 rho : Seg45.F)⟩
      ⟨(rho 42465 : Seg45.F), (rho 42466 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung97

theorem seg45_rows98 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4239 rho ∧ Seg45.relationRow4240 rho ∧ Seg45.relationRow4241 rho ∧ Seg45.relationRow4242 rho ∧ Seg45.relationRow4243 rho ∧ Seg45.relationRow4244 rho ∧ Seg45.relationRow4245 rho ∧ Seg45.relationRow4246 rho ∧ Seg45.relationRow4247 rho ∧ Seg45.relationRow4248 rho ∧ Seg45.relationRow4249 rho ∧ Seg45.relationRow4250 rho ∧ Seg45.relationRow4251 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4239⟩
  unfold Seg45.relationPart53 at p53
  rcases p53 with ⟨r4240, r4241, r4242, r4243, r4244, r4245, r4246, r4247, r4248, r4249, r4250, r4251, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4239, r4240, r4241, r4242, r4243, r4244, r4245, r4246, r4247, r4248, r4249, r4250, r4251⟩

theorem seg45_rung98 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41046 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX98 rho : Seg45.F), (seg45AccY98 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42465 : Seg45.F), (rho 42466 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX98 rho : Seg45.F), (seg45AccY98 rho : Seg45.F)⟩
        ⟨(rho 42465 : Seg45.F), (rho 42466 : Seg45.F)⟩
        ⟨(seg45AccX99 rho : Seg45.F), (seg45AccY99 rho : Seg45.F)⟩
        ⟨(rho 42478 : Seg45.F), (rho 42479 : Seg45.F)⟩ := by
  obtain ⟨r4239, r4240, r4241, r4242, r4243, r4244, r4245, r4246, r4247, r4248, r4249, r4250, r4251⟩ := seg45_rows98 rho h
  unfold Seg45.relationRow4239 at r4239
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4239
  unfold Seg45.relationRow4240 at r4240
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4240
  unfold Seg45.relationRow4241 at r4241
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4241
  unfold Seg45.relationRow4242 at r4242
  unfold Seg45.relationRow4243 at r4243
  unfold Seg45.relationRow4244 at r4244
  unfold Seg45.relationRow4245 at r4245
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4245
  unfold Seg45.relationRow4246 at r4246
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4246
  unfold Seg45.relationRow4247 at r4247
  unfold Seg45.relationRow4248 at r4248
  unfold Seg45.relationRow4249 at r4249
  unfold Seg45.relationRow4250 at r4250
  unfold Seg45.relationRow4251 at r4251
  have hrung98 (bit : Bool) (hbit : rho 41046 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX98 rho : Seg45.F), (seg45AccY98 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42465 : Seg45.F), (rho 42466 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX98 rho : Seg45.F), (seg45AccY98 rho : Seg45.F)⟩
        ⟨(rho 42465 : Seg45.F), (rho 42466 : Seg45.F)⟩
        ⟨(seg45AccX99 rho : Seg45.F), (seg45AccY99 rho : Seg45.F)⟩
        ⟨(rho 42478 : Seg45.F), (rho 42479 : Seg45.F)⟩ := by
    have hnextx : seg45AccX99 rho = seg45AccX98 rho + rho 42473 := by
      unfold seg45AccX99 seg45AccX98
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 98]
      ring
    have hnexty : seg45AccY99 rho = seg45AccY98 rho + rho 42474 := by
      unfold seg45AccY99 seg45AccY98
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 98]
      ring
    have ha0 : (rho 42465 + rho 42466) * (seg45AccX98 rho + seg45AccY98 rho) = rho 42467 := by
      unfold seg45AccX98 seg45AccY98
      linear_combination r4239
    have ha1 : rho 42466 * seg45AccX98 rho = rho 42468 := by
      unfold seg45AccX98
      linear_combination r4240
    have ha2 : rho 42465 * seg45AccY98 rho = rho 42469 := by
      unfold seg45AccY98
      linear_combination r4241
    have ha3 : 3021 * rho 42468 * rho 42469 = rho 42470 := by
      linear_combination r4242
    have ha4 : rho 42471 * (1 + rho 42470) = rho 42468 + rho 42469 := by
      linear_combination r4243
    have ha5 : rho 42472 * (1 - rho 42470) = rho 42467 - rho 42468 - rho 42469 := by
      linear_combination r4244
    have haddx :
        rho 42471 * (1 + 3021 * (rho 42466 * seg45AccX98 rho) * (rho 42465 * seg45AccY98 rho)) =
          rho 42466 * seg45AccX98 rho + rho 42465 * seg45AccY98 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42472 * (1 - 3021 * (rho 42466 * seg45AccX98 rho) * (rho 42465 * seg45AccY98 rho)) =
          (-1) * (rho 42466 * seg45AccX98 rho) - rho 42465 * seg45AccY98 rho +
            (seg45AccY98 rho - seg45AccX98 rho * (-1)) * (rho 42465 + rho 42466) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42472 * (1 - rho 42470) = rho 42467 - rho 42468 - rho 42469 := ha5
        _ = (-1) * rho 42468 - rho 42469 + (seg45AccY98 rho - seg45AccX98 rho * (-1)) * (rho 42465 + rho 42466) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX99 rho = seg45AccX98 rho - Bool.toZMod bit * (seg45AccX98 rho - rho 42471) := by
      have hd : rho 42473 = Bool.toZMod bit * (rho 42471 - seg45AccX98 rho) := by
        rw [← hbit]
        unfold seg45AccX98
        linear_combination -r4245
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY99 rho = seg45AccY98 rho - Bool.toZMod bit * (seg45AccY98 rho - rho 42472) := by
      have hd : rho 42474 = Bool.toZMod bit * (rho 42472 - seg45AccY98 rho) := by
        rw [← hbit]
        unfold seg45AccY98
        linear_combination -r4246
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42465 * rho 42466 = rho 42475 := by linear_combination r4247
    have hd1 : rho 42465 * rho 42465 = rho 42476 := by linear_combination r4248
    have hd2 : rho 42466 * rho 42466 = rho 42477 := by linear_combination r4249
    have hd3 : rho 42478 * (rho 42466 * rho 42466 + rho 42465 * rho 42465 * (-1)) = 2 * (rho 42465 * rho 42466) := by
      rw [hd0, hd1, hd2]
      linear_combination r4250
    have hd4 : rho 42479 * (2 - (rho 42466 * rho 42466 + rho 42465 * rho 42465 * (-1))) = rho 42466 * rho 42466 - rho 42465 * rho 42465 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4251
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX98 rho : Seg45.F), (seg45AccY98 rho : Seg45.F)⟩
      ⟨(rho 42465 : Seg45.F), (rho 42466 : Seg45.F)⟩
      ⟨(rho 42471 : Seg45.F), (rho 42472 : Seg45.F)⟩
      ⟨(seg45AccX99 rho : Seg45.F), (seg45AccY99 rho : Seg45.F)⟩
      ⟨(rho 42478 : Seg45.F), (rho 42479 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung98

theorem seg45_hstep_c8 (rho : Nat -> Seg45.F) (h : Seg45.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (40948 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 88 ≤ i → i < 99 →
      EdwardsBridge.onCurve (seg45LadderAccState rho i) →
      EdwardsBridge.onCurve (seg45LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg45LadderAccState rho i) (seg45LadderCurState rho i)
        (seg45LadderAccState rho (i + 1)) (seg45LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg45_rung88 rho h bits[88]! (hbitAt 88 (by omega)) hacc hcur
  · exact seg45_rung89 rho h bits[89]! (hbitAt 89 (by omega)) hacc hcur
  · exact seg45_rung90 rho h bits[90]! (hbitAt 90 (by omega)) hacc hcur
  · exact seg45_rung91 rho h bits[91]! (hbitAt 91 (by omega)) hacc hcur
  · exact seg45_rung92 rho h bits[92]! (hbitAt 92 (by omega)) hacc hcur
  · exact seg45_rung93 rho h bits[93]! (hbitAt 93 (by omega)) hacc hcur
  · exact seg45_rung94 rho h bits[94]! (hbitAt 94 (by omega)) hacc hcur
  · exact seg45_rung95 rho h bits[95]! (hbitAt 95 (by omega)) hacc hcur
  · exact seg45_rung96 rho h bits[96]! (hbitAt 96 (by omega)) hacc hcur
  · exact seg45_rung97 rho h bits[97]! (hbitAt 97 (by omega)) hacc hcur
  · exact seg45_rung98 rho h bits[98]! (hbitAt 98 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
