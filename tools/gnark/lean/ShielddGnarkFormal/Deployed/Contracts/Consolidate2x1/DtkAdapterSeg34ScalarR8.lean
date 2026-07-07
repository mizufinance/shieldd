import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg34_rows88 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4109 rho ∧ Seg34.relationRow4110 rho ∧ Seg34.relationRow4111 rho ∧ Seg34.relationRow4112 rho ∧ Seg34.relationRow4113 rho ∧ Seg34.relationRow4114 rho ∧ Seg34.relationRow4115 rho ∧ Seg34.relationRow4116 rho ∧ Seg34.relationRow4117 rho ∧ Seg34.relationRow4118 rho ∧ Seg34.relationRow4119 rho ∧ Seg34.relationRow4120 rho ∧ Seg34.relationRow4121 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4109, r4110, r4111, r4112, r4113, r4114, r4115, r4116, r4117, r4118, r4119, r4120, r4121, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4109, r4110, r4111, r4112, r4113, r4114, r4115, r4116, r4117, r4118, r4119, r4120, r4121⟩

theorem seg34_rung88 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34080 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX88 rho : Seg34.F), (seg34AccY88 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35379 : Seg34.F), (rho 35380 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX88 rho : Seg34.F), (seg34AccY88 rho : Seg34.F)⟩
        ⟨(rho 35379 : Seg34.F), (rho 35380 : Seg34.F)⟩
        ⟨(seg34AccX89 rho : Seg34.F), (seg34AccY89 rho : Seg34.F)⟩
        ⟨(rho 35392 : Seg34.F), (rho 35393 : Seg34.F)⟩ := by
  obtain ⟨r4109, r4110, r4111, r4112, r4113, r4114, r4115, r4116, r4117, r4118, r4119, r4120, r4121⟩ := seg34_rows88 rho h
  unfold Seg34.relationRow4109 at r4109
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4109
  unfold Seg34.relationRow4110 at r4110
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4110
  unfold Seg34.relationRow4111 at r4111
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4111
  unfold Seg34.relationRow4112 at r4112
  unfold Seg34.relationRow4113 at r4113
  unfold Seg34.relationRow4114 at r4114
  unfold Seg34.relationRow4115 at r4115
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4115
  unfold Seg34.relationRow4116 at r4116
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4116
  unfold Seg34.relationRow4117 at r4117
  unfold Seg34.relationRow4118 at r4118
  unfold Seg34.relationRow4119 at r4119
  unfold Seg34.relationRow4120 at r4120
  unfold Seg34.relationRow4121 at r4121
  have hrung88 (bit : Bool) (hbit : rho 34080 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX88 rho : Seg34.F), (seg34AccY88 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35379 : Seg34.F), (rho 35380 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX88 rho : Seg34.F), (seg34AccY88 rho : Seg34.F)⟩
        ⟨(rho 35379 : Seg34.F), (rho 35380 : Seg34.F)⟩
        ⟨(seg34AccX89 rho : Seg34.F), (seg34AccY89 rho : Seg34.F)⟩
        ⟨(rho 35392 : Seg34.F), (rho 35393 : Seg34.F)⟩ := by
    have hnextx : seg34AccX89 rho = seg34AccX88 rho + rho 35387 := by
      unfold seg34AccX89 seg34AccX88
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 88]
      ring
    have hnexty : seg34AccY89 rho = seg34AccY88 rho + rho 35388 := by
      unfold seg34AccY89 seg34AccY88
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 88]
      ring
    have ha0 : (rho 35379 + rho 35380) * (seg34AccX88 rho + seg34AccY88 rho) = rho 35381 := by
      unfold seg34AccX88 seg34AccY88
      linear_combination r4109
    have ha1 : rho 35380 * seg34AccX88 rho = rho 35382 := by
      unfold seg34AccX88
      linear_combination r4110
    have ha2 : rho 35379 * seg34AccY88 rho = rho 35383 := by
      unfold seg34AccY88
      linear_combination r4111
    have ha3 : 3021 * rho 35382 * rho 35383 = rho 35384 := by
      linear_combination r4112
    have ha4 : rho 35385 * (1 + rho 35384) = rho 35382 + rho 35383 := by
      linear_combination r4113
    have ha5 : rho 35386 * (1 - rho 35384) = rho 35381 - rho 35382 - rho 35383 := by
      linear_combination r4114
    have haddx :
        rho 35385 * (1 + 3021 * (rho 35380 * seg34AccX88 rho) * (rho 35379 * seg34AccY88 rho)) =
          rho 35380 * seg34AccX88 rho + rho 35379 * seg34AccY88 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35386 * (1 - 3021 * (rho 35380 * seg34AccX88 rho) * (rho 35379 * seg34AccY88 rho)) =
          (-1) * (rho 35380 * seg34AccX88 rho) - rho 35379 * seg34AccY88 rho +
            (seg34AccY88 rho - seg34AccX88 rho * (-1)) * (rho 35379 + rho 35380) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35386 * (1 - rho 35384) = rho 35381 - rho 35382 - rho 35383 := ha5
        _ = (-1) * rho 35382 - rho 35383 + (seg34AccY88 rho - seg34AccX88 rho * (-1)) * (rho 35379 + rho 35380) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX89 rho = seg34AccX88 rho - Bool.toZMod bit * (seg34AccX88 rho - rho 35385) := by
      have hd : rho 35387 = Bool.toZMod bit * (rho 35385 - seg34AccX88 rho) := by
        rw [← hbit]
        unfold seg34AccX88
        linear_combination -r4115
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY89 rho = seg34AccY88 rho - Bool.toZMod bit * (seg34AccY88 rho - rho 35386) := by
      have hd : rho 35388 = Bool.toZMod bit * (rho 35386 - seg34AccY88 rho) := by
        rw [← hbit]
        unfold seg34AccY88
        linear_combination -r4116
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35379 * rho 35380 = rho 35389 := by linear_combination r4117
    have hd1 : rho 35379 * rho 35379 = rho 35390 := by linear_combination r4118
    have hd2 : rho 35380 * rho 35380 = rho 35391 := by linear_combination r4119
    have hd3 : rho 35392 * (rho 35380 * rho 35380 + rho 35379 * rho 35379 * (-1)) = 2 * (rho 35379 * rho 35380) := by
      rw [hd0, hd1, hd2]
      linear_combination r4120
    have hd4 : rho 35393 * (2 - (rho 35380 * rho 35380 + rho 35379 * rho 35379 * (-1))) = rho 35380 * rho 35380 - rho 35379 * rho 35379 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4121
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX88 rho : Seg34.F), (seg34AccY88 rho : Seg34.F)⟩
      ⟨(rho 35379 : Seg34.F), (rho 35380 : Seg34.F)⟩
      ⟨(rho 35385 : Seg34.F), (rho 35386 : Seg34.F)⟩
      ⟨(seg34AccX89 rho : Seg34.F), (seg34AccY89 rho : Seg34.F)⟩
      ⟨(rho 35392 : Seg34.F), (rho 35393 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung88

theorem seg34_rows89 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4122 rho ∧ Seg34.relationRow4123 rho ∧ Seg34.relationRow4124 rho ∧ Seg34.relationRow4125 rho ∧ Seg34.relationRow4126 rho ∧ Seg34.relationRow4127 rho ∧ Seg34.relationRow4128 rho ∧ Seg34.relationRow4129 rho ∧ Seg34.relationRow4130 rho ∧ Seg34.relationRow4131 rho ∧ Seg34.relationRow4132 rho ∧ Seg34.relationRow4133 rho ∧ Seg34.relationRow4134 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4122, r4123, r4124, r4125, r4126, r4127, r4128, r4129, r4130, r4131, r4132, r4133, r4134, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4122, r4123, r4124, r4125, r4126, r4127, r4128, r4129, r4130, r4131, r4132, r4133, r4134⟩

theorem seg34_rung89 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34081 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX89 rho : Seg34.F), (seg34AccY89 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35392 : Seg34.F), (rho 35393 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX89 rho : Seg34.F), (seg34AccY89 rho : Seg34.F)⟩
        ⟨(rho 35392 : Seg34.F), (rho 35393 : Seg34.F)⟩
        ⟨(seg34AccX90 rho : Seg34.F), (seg34AccY90 rho : Seg34.F)⟩
        ⟨(rho 35405 : Seg34.F), (rho 35406 : Seg34.F)⟩ := by
  obtain ⟨r4122, r4123, r4124, r4125, r4126, r4127, r4128, r4129, r4130, r4131, r4132, r4133, r4134⟩ := seg34_rows89 rho h
  unfold Seg34.relationRow4122 at r4122
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4122
  unfold Seg34.relationRow4123 at r4123
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4123
  unfold Seg34.relationRow4124 at r4124
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4124
  unfold Seg34.relationRow4125 at r4125
  unfold Seg34.relationRow4126 at r4126
  unfold Seg34.relationRow4127 at r4127
  unfold Seg34.relationRow4128 at r4128
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4128
  unfold Seg34.relationRow4129 at r4129
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4129
  unfold Seg34.relationRow4130 at r4130
  unfold Seg34.relationRow4131 at r4131
  unfold Seg34.relationRow4132 at r4132
  unfold Seg34.relationRow4133 at r4133
  unfold Seg34.relationRow4134 at r4134
  have hrung89 (bit : Bool) (hbit : rho 34081 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX89 rho : Seg34.F), (seg34AccY89 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35392 : Seg34.F), (rho 35393 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX89 rho : Seg34.F), (seg34AccY89 rho : Seg34.F)⟩
        ⟨(rho 35392 : Seg34.F), (rho 35393 : Seg34.F)⟩
        ⟨(seg34AccX90 rho : Seg34.F), (seg34AccY90 rho : Seg34.F)⟩
        ⟨(rho 35405 : Seg34.F), (rho 35406 : Seg34.F)⟩ := by
    have hnextx : seg34AccX90 rho = seg34AccX89 rho + rho 35400 := by
      unfold seg34AccX90 seg34AccX89
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 89]
      ring
    have hnexty : seg34AccY90 rho = seg34AccY89 rho + rho 35401 := by
      unfold seg34AccY90 seg34AccY89
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 89]
      ring
    have ha0 : (rho 35392 + rho 35393) * (seg34AccX89 rho + seg34AccY89 rho) = rho 35394 := by
      unfold seg34AccX89 seg34AccY89
      linear_combination r4122
    have ha1 : rho 35393 * seg34AccX89 rho = rho 35395 := by
      unfold seg34AccX89
      linear_combination r4123
    have ha2 : rho 35392 * seg34AccY89 rho = rho 35396 := by
      unfold seg34AccY89
      linear_combination r4124
    have ha3 : 3021 * rho 35395 * rho 35396 = rho 35397 := by
      linear_combination r4125
    have ha4 : rho 35398 * (1 + rho 35397) = rho 35395 + rho 35396 := by
      linear_combination r4126
    have ha5 : rho 35399 * (1 - rho 35397) = rho 35394 - rho 35395 - rho 35396 := by
      linear_combination r4127
    have haddx :
        rho 35398 * (1 + 3021 * (rho 35393 * seg34AccX89 rho) * (rho 35392 * seg34AccY89 rho)) =
          rho 35393 * seg34AccX89 rho + rho 35392 * seg34AccY89 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35399 * (1 - 3021 * (rho 35393 * seg34AccX89 rho) * (rho 35392 * seg34AccY89 rho)) =
          (-1) * (rho 35393 * seg34AccX89 rho) - rho 35392 * seg34AccY89 rho +
            (seg34AccY89 rho - seg34AccX89 rho * (-1)) * (rho 35392 + rho 35393) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35399 * (1 - rho 35397) = rho 35394 - rho 35395 - rho 35396 := ha5
        _ = (-1) * rho 35395 - rho 35396 + (seg34AccY89 rho - seg34AccX89 rho * (-1)) * (rho 35392 + rho 35393) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX90 rho = seg34AccX89 rho - Bool.toZMod bit * (seg34AccX89 rho - rho 35398) := by
      have hd : rho 35400 = Bool.toZMod bit * (rho 35398 - seg34AccX89 rho) := by
        rw [← hbit]
        unfold seg34AccX89
        linear_combination -r4128
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY90 rho = seg34AccY89 rho - Bool.toZMod bit * (seg34AccY89 rho - rho 35399) := by
      have hd : rho 35401 = Bool.toZMod bit * (rho 35399 - seg34AccY89 rho) := by
        rw [← hbit]
        unfold seg34AccY89
        linear_combination -r4129
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35392 * rho 35393 = rho 35402 := by linear_combination r4130
    have hd1 : rho 35392 * rho 35392 = rho 35403 := by linear_combination r4131
    have hd2 : rho 35393 * rho 35393 = rho 35404 := by linear_combination r4132
    have hd3 : rho 35405 * (rho 35393 * rho 35393 + rho 35392 * rho 35392 * (-1)) = 2 * (rho 35392 * rho 35393) := by
      rw [hd0, hd1, hd2]
      linear_combination r4133
    have hd4 : rho 35406 * (2 - (rho 35393 * rho 35393 + rho 35392 * rho 35392 * (-1))) = rho 35393 * rho 35393 - rho 35392 * rho 35392 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4134
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX89 rho : Seg34.F), (seg34AccY89 rho : Seg34.F)⟩
      ⟨(rho 35392 : Seg34.F), (rho 35393 : Seg34.F)⟩
      ⟨(rho 35398 : Seg34.F), (rho 35399 : Seg34.F)⟩
      ⟨(seg34AccX90 rho : Seg34.F), (seg34AccY90 rho : Seg34.F)⟩
      ⟨(rho 35405 : Seg34.F), (rho 35406 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung89

theorem seg34_rows90 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4135 rho ∧ Seg34.relationRow4136 rho ∧ Seg34.relationRow4137 rho ∧ Seg34.relationRow4138 rho ∧ Seg34.relationRow4139 rho ∧ Seg34.relationRow4140 rho ∧ Seg34.relationRow4141 rho ∧ Seg34.relationRow4142 rho ∧ Seg34.relationRow4143 rho ∧ Seg34.relationRow4144 rho ∧ Seg34.relationRow4145 rho ∧ Seg34.relationRow4146 rho ∧ Seg34.relationRow4147 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4135, r4136, r4137, r4138, r4139, r4140, r4141, r4142, r4143, r4144, r4145, r4146, r4147, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4135, r4136, r4137, r4138, r4139, r4140, r4141, r4142, r4143, r4144, r4145, r4146, r4147⟩

theorem seg34_rung90 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34082 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX90 rho : Seg34.F), (seg34AccY90 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35405 : Seg34.F), (rho 35406 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX90 rho : Seg34.F), (seg34AccY90 rho : Seg34.F)⟩
        ⟨(rho 35405 : Seg34.F), (rho 35406 : Seg34.F)⟩
        ⟨(seg34AccX91 rho : Seg34.F), (seg34AccY91 rho : Seg34.F)⟩
        ⟨(rho 35418 : Seg34.F), (rho 35419 : Seg34.F)⟩ := by
  obtain ⟨r4135, r4136, r4137, r4138, r4139, r4140, r4141, r4142, r4143, r4144, r4145, r4146, r4147⟩ := seg34_rows90 rho h
  unfold Seg34.relationRow4135 at r4135
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4135
  unfold Seg34.relationRow4136 at r4136
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4136
  unfold Seg34.relationRow4137 at r4137
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4137
  unfold Seg34.relationRow4138 at r4138
  unfold Seg34.relationRow4139 at r4139
  unfold Seg34.relationRow4140 at r4140
  unfold Seg34.relationRow4141 at r4141
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4141
  unfold Seg34.relationRow4142 at r4142
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4142
  unfold Seg34.relationRow4143 at r4143
  unfold Seg34.relationRow4144 at r4144
  unfold Seg34.relationRow4145 at r4145
  unfold Seg34.relationRow4146 at r4146
  unfold Seg34.relationRow4147 at r4147
  have hrung90 (bit : Bool) (hbit : rho 34082 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX90 rho : Seg34.F), (seg34AccY90 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35405 : Seg34.F), (rho 35406 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX90 rho : Seg34.F), (seg34AccY90 rho : Seg34.F)⟩
        ⟨(rho 35405 : Seg34.F), (rho 35406 : Seg34.F)⟩
        ⟨(seg34AccX91 rho : Seg34.F), (seg34AccY91 rho : Seg34.F)⟩
        ⟨(rho 35418 : Seg34.F), (rho 35419 : Seg34.F)⟩ := by
    have hnextx : seg34AccX91 rho = seg34AccX90 rho + rho 35413 := by
      unfold seg34AccX91 seg34AccX90
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 90]
      ring
    have hnexty : seg34AccY91 rho = seg34AccY90 rho + rho 35414 := by
      unfold seg34AccY91 seg34AccY90
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 90]
      ring
    have ha0 : (rho 35405 + rho 35406) * (seg34AccX90 rho + seg34AccY90 rho) = rho 35407 := by
      unfold seg34AccX90 seg34AccY90
      linear_combination r4135
    have ha1 : rho 35406 * seg34AccX90 rho = rho 35408 := by
      unfold seg34AccX90
      linear_combination r4136
    have ha2 : rho 35405 * seg34AccY90 rho = rho 35409 := by
      unfold seg34AccY90
      linear_combination r4137
    have ha3 : 3021 * rho 35408 * rho 35409 = rho 35410 := by
      linear_combination r4138
    have ha4 : rho 35411 * (1 + rho 35410) = rho 35408 + rho 35409 := by
      linear_combination r4139
    have ha5 : rho 35412 * (1 - rho 35410) = rho 35407 - rho 35408 - rho 35409 := by
      linear_combination r4140
    have haddx :
        rho 35411 * (1 + 3021 * (rho 35406 * seg34AccX90 rho) * (rho 35405 * seg34AccY90 rho)) =
          rho 35406 * seg34AccX90 rho + rho 35405 * seg34AccY90 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35412 * (1 - 3021 * (rho 35406 * seg34AccX90 rho) * (rho 35405 * seg34AccY90 rho)) =
          (-1) * (rho 35406 * seg34AccX90 rho) - rho 35405 * seg34AccY90 rho +
            (seg34AccY90 rho - seg34AccX90 rho * (-1)) * (rho 35405 + rho 35406) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35412 * (1 - rho 35410) = rho 35407 - rho 35408 - rho 35409 := ha5
        _ = (-1) * rho 35408 - rho 35409 + (seg34AccY90 rho - seg34AccX90 rho * (-1)) * (rho 35405 + rho 35406) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX91 rho = seg34AccX90 rho - Bool.toZMod bit * (seg34AccX90 rho - rho 35411) := by
      have hd : rho 35413 = Bool.toZMod bit * (rho 35411 - seg34AccX90 rho) := by
        rw [← hbit]
        unfold seg34AccX90
        linear_combination -r4141
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY91 rho = seg34AccY90 rho - Bool.toZMod bit * (seg34AccY90 rho - rho 35412) := by
      have hd : rho 35414 = Bool.toZMod bit * (rho 35412 - seg34AccY90 rho) := by
        rw [← hbit]
        unfold seg34AccY90
        linear_combination -r4142
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35405 * rho 35406 = rho 35415 := by linear_combination r4143
    have hd1 : rho 35405 * rho 35405 = rho 35416 := by linear_combination r4144
    have hd2 : rho 35406 * rho 35406 = rho 35417 := by linear_combination r4145
    have hd3 : rho 35418 * (rho 35406 * rho 35406 + rho 35405 * rho 35405 * (-1)) = 2 * (rho 35405 * rho 35406) := by
      rw [hd0, hd1, hd2]
      linear_combination r4146
    have hd4 : rho 35419 * (2 - (rho 35406 * rho 35406 + rho 35405 * rho 35405 * (-1))) = rho 35406 * rho 35406 - rho 35405 * rho 35405 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4147
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX90 rho : Seg34.F), (seg34AccY90 rho : Seg34.F)⟩
      ⟨(rho 35405 : Seg34.F), (rho 35406 : Seg34.F)⟩
      ⟨(rho 35411 : Seg34.F), (rho 35412 : Seg34.F)⟩
      ⟨(seg34AccX91 rho : Seg34.F), (seg34AccY91 rho : Seg34.F)⟩
      ⟨(rho 35418 : Seg34.F), (rho 35419 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung90

theorem seg34_rows91 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4148 rho ∧ Seg34.relationRow4149 rho ∧ Seg34.relationRow4150 rho ∧ Seg34.relationRow4151 rho ∧ Seg34.relationRow4152 rho ∧ Seg34.relationRow4153 rho ∧ Seg34.relationRow4154 rho ∧ Seg34.relationRow4155 rho ∧ Seg34.relationRow4156 rho ∧ Seg34.relationRow4157 rho ∧ Seg34.relationRow4158 rho ∧ Seg34.relationRow4159 rho ∧ Seg34.relationRow4160 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4148, r4149, r4150, r4151, r4152, r4153, r4154, r4155, r4156, r4157, r4158, r4159⟩
  unfold Seg34.relationPart52 at p52
  rcases p52 with ⟨r4160, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4148, r4149, r4150, r4151, r4152, r4153, r4154, r4155, r4156, r4157, r4158, r4159, r4160⟩

theorem seg34_rung91 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34083 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX91 rho : Seg34.F), (seg34AccY91 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35418 : Seg34.F), (rho 35419 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX91 rho : Seg34.F), (seg34AccY91 rho : Seg34.F)⟩
        ⟨(rho 35418 : Seg34.F), (rho 35419 : Seg34.F)⟩
        ⟨(seg34AccX92 rho : Seg34.F), (seg34AccY92 rho : Seg34.F)⟩
        ⟨(rho 35431 : Seg34.F), (rho 35432 : Seg34.F)⟩ := by
  obtain ⟨r4148, r4149, r4150, r4151, r4152, r4153, r4154, r4155, r4156, r4157, r4158, r4159, r4160⟩ := seg34_rows91 rho h
  unfold Seg34.relationRow4148 at r4148
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4148
  unfold Seg34.relationRow4149 at r4149
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4149
  unfold Seg34.relationRow4150 at r4150
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4150
  unfold Seg34.relationRow4151 at r4151
  unfold Seg34.relationRow4152 at r4152
  unfold Seg34.relationRow4153 at r4153
  unfold Seg34.relationRow4154 at r4154
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4154
  unfold Seg34.relationRow4155 at r4155
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4155
  unfold Seg34.relationRow4156 at r4156
  unfold Seg34.relationRow4157 at r4157
  unfold Seg34.relationRow4158 at r4158
  unfold Seg34.relationRow4159 at r4159
  unfold Seg34.relationRow4160 at r4160
  have hrung91 (bit : Bool) (hbit : rho 34083 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX91 rho : Seg34.F), (seg34AccY91 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35418 : Seg34.F), (rho 35419 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX91 rho : Seg34.F), (seg34AccY91 rho : Seg34.F)⟩
        ⟨(rho 35418 : Seg34.F), (rho 35419 : Seg34.F)⟩
        ⟨(seg34AccX92 rho : Seg34.F), (seg34AccY92 rho : Seg34.F)⟩
        ⟨(rho 35431 : Seg34.F), (rho 35432 : Seg34.F)⟩ := by
    have hnextx : seg34AccX92 rho = seg34AccX91 rho + rho 35426 := by
      unfold seg34AccX92 seg34AccX91
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 91]
      ring
    have hnexty : seg34AccY92 rho = seg34AccY91 rho + rho 35427 := by
      unfold seg34AccY92 seg34AccY91
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 91]
      ring
    have ha0 : (rho 35418 + rho 35419) * (seg34AccX91 rho + seg34AccY91 rho) = rho 35420 := by
      unfold seg34AccX91 seg34AccY91
      linear_combination r4148
    have ha1 : rho 35419 * seg34AccX91 rho = rho 35421 := by
      unfold seg34AccX91
      linear_combination r4149
    have ha2 : rho 35418 * seg34AccY91 rho = rho 35422 := by
      unfold seg34AccY91
      linear_combination r4150
    have ha3 : 3021 * rho 35421 * rho 35422 = rho 35423 := by
      linear_combination r4151
    have ha4 : rho 35424 * (1 + rho 35423) = rho 35421 + rho 35422 := by
      linear_combination r4152
    have ha5 : rho 35425 * (1 - rho 35423) = rho 35420 - rho 35421 - rho 35422 := by
      linear_combination r4153
    have haddx :
        rho 35424 * (1 + 3021 * (rho 35419 * seg34AccX91 rho) * (rho 35418 * seg34AccY91 rho)) =
          rho 35419 * seg34AccX91 rho + rho 35418 * seg34AccY91 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35425 * (1 - 3021 * (rho 35419 * seg34AccX91 rho) * (rho 35418 * seg34AccY91 rho)) =
          (-1) * (rho 35419 * seg34AccX91 rho) - rho 35418 * seg34AccY91 rho +
            (seg34AccY91 rho - seg34AccX91 rho * (-1)) * (rho 35418 + rho 35419) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35425 * (1 - rho 35423) = rho 35420 - rho 35421 - rho 35422 := ha5
        _ = (-1) * rho 35421 - rho 35422 + (seg34AccY91 rho - seg34AccX91 rho * (-1)) * (rho 35418 + rho 35419) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX92 rho = seg34AccX91 rho - Bool.toZMod bit * (seg34AccX91 rho - rho 35424) := by
      have hd : rho 35426 = Bool.toZMod bit * (rho 35424 - seg34AccX91 rho) := by
        rw [← hbit]
        unfold seg34AccX91
        linear_combination -r4154
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY92 rho = seg34AccY91 rho - Bool.toZMod bit * (seg34AccY91 rho - rho 35425) := by
      have hd : rho 35427 = Bool.toZMod bit * (rho 35425 - seg34AccY91 rho) := by
        rw [← hbit]
        unfold seg34AccY91
        linear_combination -r4155
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35418 * rho 35419 = rho 35428 := by linear_combination r4156
    have hd1 : rho 35418 * rho 35418 = rho 35429 := by linear_combination r4157
    have hd2 : rho 35419 * rho 35419 = rho 35430 := by linear_combination r4158
    have hd3 : rho 35431 * (rho 35419 * rho 35419 + rho 35418 * rho 35418 * (-1)) = 2 * (rho 35418 * rho 35419) := by
      rw [hd0, hd1, hd2]
      linear_combination r4159
    have hd4 : rho 35432 * (2 - (rho 35419 * rho 35419 + rho 35418 * rho 35418 * (-1))) = rho 35419 * rho 35419 - rho 35418 * rho 35418 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4160
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX91 rho : Seg34.F), (seg34AccY91 rho : Seg34.F)⟩
      ⟨(rho 35418 : Seg34.F), (rho 35419 : Seg34.F)⟩
      ⟨(rho 35424 : Seg34.F), (rho 35425 : Seg34.F)⟩
      ⟨(seg34AccX92 rho : Seg34.F), (seg34AccY92 rho : Seg34.F)⟩
      ⟨(rho 35431 : Seg34.F), (rho 35432 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung91

theorem seg34_rows92 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4161 rho ∧ Seg34.relationRow4162 rho ∧ Seg34.relationRow4163 rho ∧ Seg34.relationRow4164 rho ∧ Seg34.relationRow4165 rho ∧ Seg34.relationRow4166 rho ∧ Seg34.relationRow4167 rho ∧ Seg34.relationRow4168 rho ∧ Seg34.relationRow4169 rho ∧ Seg34.relationRow4170 rho ∧ Seg34.relationRow4171 rho ∧ Seg34.relationRow4172 rho ∧ Seg34.relationRow4173 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart52 at p52
  rcases p52 with ⟨_, r4161, r4162, r4163, r4164, r4165, r4166, r4167, r4168, r4169, r4170, r4171, r4172, r4173, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4161, r4162, r4163, r4164, r4165, r4166, r4167, r4168, r4169, r4170, r4171, r4172, r4173⟩

theorem seg34_rung92 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34084 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX92 rho : Seg34.F), (seg34AccY92 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35431 : Seg34.F), (rho 35432 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX92 rho : Seg34.F), (seg34AccY92 rho : Seg34.F)⟩
        ⟨(rho 35431 : Seg34.F), (rho 35432 : Seg34.F)⟩
        ⟨(seg34AccX93 rho : Seg34.F), (seg34AccY93 rho : Seg34.F)⟩
        ⟨(rho 35444 : Seg34.F), (rho 35445 : Seg34.F)⟩ := by
  obtain ⟨r4161, r4162, r4163, r4164, r4165, r4166, r4167, r4168, r4169, r4170, r4171, r4172, r4173⟩ := seg34_rows92 rho h
  unfold Seg34.relationRow4161 at r4161
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4161
  unfold Seg34.relationRow4162 at r4162
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4162
  unfold Seg34.relationRow4163 at r4163
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4163
  unfold Seg34.relationRow4164 at r4164
  unfold Seg34.relationRow4165 at r4165
  unfold Seg34.relationRow4166 at r4166
  unfold Seg34.relationRow4167 at r4167
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4167
  unfold Seg34.relationRow4168 at r4168
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4168
  unfold Seg34.relationRow4169 at r4169
  unfold Seg34.relationRow4170 at r4170
  unfold Seg34.relationRow4171 at r4171
  unfold Seg34.relationRow4172 at r4172
  unfold Seg34.relationRow4173 at r4173
  have hrung92 (bit : Bool) (hbit : rho 34084 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX92 rho : Seg34.F), (seg34AccY92 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35431 : Seg34.F), (rho 35432 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX92 rho : Seg34.F), (seg34AccY92 rho : Seg34.F)⟩
        ⟨(rho 35431 : Seg34.F), (rho 35432 : Seg34.F)⟩
        ⟨(seg34AccX93 rho : Seg34.F), (seg34AccY93 rho : Seg34.F)⟩
        ⟨(rho 35444 : Seg34.F), (rho 35445 : Seg34.F)⟩ := by
    have hnextx : seg34AccX93 rho = seg34AccX92 rho + rho 35439 := by
      unfold seg34AccX93 seg34AccX92
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 92]
      ring
    have hnexty : seg34AccY93 rho = seg34AccY92 rho + rho 35440 := by
      unfold seg34AccY93 seg34AccY92
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 92]
      ring
    have ha0 : (rho 35431 + rho 35432) * (seg34AccX92 rho + seg34AccY92 rho) = rho 35433 := by
      unfold seg34AccX92 seg34AccY92
      linear_combination r4161
    have ha1 : rho 35432 * seg34AccX92 rho = rho 35434 := by
      unfold seg34AccX92
      linear_combination r4162
    have ha2 : rho 35431 * seg34AccY92 rho = rho 35435 := by
      unfold seg34AccY92
      linear_combination r4163
    have ha3 : 3021 * rho 35434 * rho 35435 = rho 35436 := by
      linear_combination r4164
    have ha4 : rho 35437 * (1 + rho 35436) = rho 35434 + rho 35435 := by
      linear_combination r4165
    have ha5 : rho 35438 * (1 - rho 35436) = rho 35433 - rho 35434 - rho 35435 := by
      linear_combination r4166
    have haddx :
        rho 35437 * (1 + 3021 * (rho 35432 * seg34AccX92 rho) * (rho 35431 * seg34AccY92 rho)) =
          rho 35432 * seg34AccX92 rho + rho 35431 * seg34AccY92 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35438 * (1 - 3021 * (rho 35432 * seg34AccX92 rho) * (rho 35431 * seg34AccY92 rho)) =
          (-1) * (rho 35432 * seg34AccX92 rho) - rho 35431 * seg34AccY92 rho +
            (seg34AccY92 rho - seg34AccX92 rho * (-1)) * (rho 35431 + rho 35432) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35438 * (1 - rho 35436) = rho 35433 - rho 35434 - rho 35435 := ha5
        _ = (-1) * rho 35434 - rho 35435 + (seg34AccY92 rho - seg34AccX92 rho * (-1)) * (rho 35431 + rho 35432) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX93 rho = seg34AccX92 rho - Bool.toZMod bit * (seg34AccX92 rho - rho 35437) := by
      have hd : rho 35439 = Bool.toZMod bit * (rho 35437 - seg34AccX92 rho) := by
        rw [← hbit]
        unfold seg34AccX92
        linear_combination -r4167
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY93 rho = seg34AccY92 rho - Bool.toZMod bit * (seg34AccY92 rho - rho 35438) := by
      have hd : rho 35440 = Bool.toZMod bit * (rho 35438 - seg34AccY92 rho) := by
        rw [← hbit]
        unfold seg34AccY92
        linear_combination -r4168
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35431 * rho 35432 = rho 35441 := by linear_combination r4169
    have hd1 : rho 35431 * rho 35431 = rho 35442 := by linear_combination r4170
    have hd2 : rho 35432 * rho 35432 = rho 35443 := by linear_combination r4171
    have hd3 : rho 35444 * (rho 35432 * rho 35432 + rho 35431 * rho 35431 * (-1)) = 2 * (rho 35431 * rho 35432) := by
      rw [hd0, hd1, hd2]
      linear_combination r4172
    have hd4 : rho 35445 * (2 - (rho 35432 * rho 35432 + rho 35431 * rho 35431 * (-1))) = rho 35432 * rho 35432 - rho 35431 * rho 35431 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4173
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX92 rho : Seg34.F), (seg34AccY92 rho : Seg34.F)⟩
      ⟨(rho 35431 : Seg34.F), (rho 35432 : Seg34.F)⟩
      ⟨(rho 35437 : Seg34.F), (rho 35438 : Seg34.F)⟩
      ⟨(seg34AccX93 rho : Seg34.F), (seg34AccY93 rho : Seg34.F)⟩
      ⟨(rho 35444 : Seg34.F), (rho 35445 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung92

theorem seg34_rows93 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4174 rho ∧ Seg34.relationRow4175 rho ∧ Seg34.relationRow4176 rho ∧ Seg34.relationRow4177 rho ∧ Seg34.relationRow4178 rho ∧ Seg34.relationRow4179 rho ∧ Seg34.relationRow4180 rho ∧ Seg34.relationRow4181 rho ∧ Seg34.relationRow4182 rho ∧ Seg34.relationRow4183 rho ∧ Seg34.relationRow4184 rho ∧ Seg34.relationRow4185 rho ∧ Seg34.relationRow4186 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r4174, r4175, r4176, r4177, r4178, r4179, r4180, r4181, r4182, r4183, r4184, r4185, r4186, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4174, r4175, r4176, r4177, r4178, r4179, r4180, r4181, r4182, r4183, r4184, r4185, r4186⟩

theorem seg34_rung93 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34085 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX93 rho : Seg34.F), (seg34AccY93 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35444 : Seg34.F), (rho 35445 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX93 rho : Seg34.F), (seg34AccY93 rho : Seg34.F)⟩
        ⟨(rho 35444 : Seg34.F), (rho 35445 : Seg34.F)⟩
        ⟨(seg34AccX94 rho : Seg34.F), (seg34AccY94 rho : Seg34.F)⟩
        ⟨(rho 35457 : Seg34.F), (rho 35458 : Seg34.F)⟩ := by
  obtain ⟨r4174, r4175, r4176, r4177, r4178, r4179, r4180, r4181, r4182, r4183, r4184, r4185, r4186⟩ := seg34_rows93 rho h
  unfold Seg34.relationRow4174 at r4174
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4174
  unfold Seg34.relationRow4175 at r4175
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4175
  unfold Seg34.relationRow4176 at r4176
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4176
  unfold Seg34.relationRow4177 at r4177
  unfold Seg34.relationRow4178 at r4178
  unfold Seg34.relationRow4179 at r4179
  unfold Seg34.relationRow4180 at r4180
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4180
  unfold Seg34.relationRow4181 at r4181
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4181
  unfold Seg34.relationRow4182 at r4182
  unfold Seg34.relationRow4183 at r4183
  unfold Seg34.relationRow4184 at r4184
  unfold Seg34.relationRow4185 at r4185
  unfold Seg34.relationRow4186 at r4186
  have hrung93 (bit : Bool) (hbit : rho 34085 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX93 rho : Seg34.F), (seg34AccY93 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35444 : Seg34.F), (rho 35445 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX93 rho : Seg34.F), (seg34AccY93 rho : Seg34.F)⟩
        ⟨(rho 35444 : Seg34.F), (rho 35445 : Seg34.F)⟩
        ⟨(seg34AccX94 rho : Seg34.F), (seg34AccY94 rho : Seg34.F)⟩
        ⟨(rho 35457 : Seg34.F), (rho 35458 : Seg34.F)⟩ := by
    have hnextx : seg34AccX94 rho = seg34AccX93 rho + rho 35452 := by
      unfold seg34AccX94 seg34AccX93
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 93]
      ring
    have hnexty : seg34AccY94 rho = seg34AccY93 rho + rho 35453 := by
      unfold seg34AccY94 seg34AccY93
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 93]
      ring
    have ha0 : (rho 35444 + rho 35445) * (seg34AccX93 rho + seg34AccY93 rho) = rho 35446 := by
      unfold seg34AccX93 seg34AccY93
      linear_combination r4174
    have ha1 : rho 35445 * seg34AccX93 rho = rho 35447 := by
      unfold seg34AccX93
      linear_combination r4175
    have ha2 : rho 35444 * seg34AccY93 rho = rho 35448 := by
      unfold seg34AccY93
      linear_combination r4176
    have ha3 : 3021 * rho 35447 * rho 35448 = rho 35449 := by
      linear_combination r4177
    have ha4 : rho 35450 * (1 + rho 35449) = rho 35447 + rho 35448 := by
      linear_combination r4178
    have ha5 : rho 35451 * (1 - rho 35449) = rho 35446 - rho 35447 - rho 35448 := by
      linear_combination r4179
    have haddx :
        rho 35450 * (1 + 3021 * (rho 35445 * seg34AccX93 rho) * (rho 35444 * seg34AccY93 rho)) =
          rho 35445 * seg34AccX93 rho + rho 35444 * seg34AccY93 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35451 * (1 - 3021 * (rho 35445 * seg34AccX93 rho) * (rho 35444 * seg34AccY93 rho)) =
          (-1) * (rho 35445 * seg34AccX93 rho) - rho 35444 * seg34AccY93 rho +
            (seg34AccY93 rho - seg34AccX93 rho * (-1)) * (rho 35444 + rho 35445) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35451 * (1 - rho 35449) = rho 35446 - rho 35447 - rho 35448 := ha5
        _ = (-1) * rho 35447 - rho 35448 + (seg34AccY93 rho - seg34AccX93 rho * (-1)) * (rho 35444 + rho 35445) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX94 rho = seg34AccX93 rho - Bool.toZMod bit * (seg34AccX93 rho - rho 35450) := by
      have hd : rho 35452 = Bool.toZMod bit * (rho 35450 - seg34AccX93 rho) := by
        rw [← hbit]
        unfold seg34AccX93
        linear_combination -r4180
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY94 rho = seg34AccY93 rho - Bool.toZMod bit * (seg34AccY93 rho - rho 35451) := by
      have hd : rho 35453 = Bool.toZMod bit * (rho 35451 - seg34AccY93 rho) := by
        rw [← hbit]
        unfold seg34AccY93
        linear_combination -r4181
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35444 * rho 35445 = rho 35454 := by linear_combination r4182
    have hd1 : rho 35444 * rho 35444 = rho 35455 := by linear_combination r4183
    have hd2 : rho 35445 * rho 35445 = rho 35456 := by linear_combination r4184
    have hd3 : rho 35457 * (rho 35445 * rho 35445 + rho 35444 * rho 35444 * (-1)) = 2 * (rho 35444 * rho 35445) := by
      rw [hd0, hd1, hd2]
      linear_combination r4185
    have hd4 : rho 35458 * (2 - (rho 35445 * rho 35445 + rho 35444 * rho 35444 * (-1))) = rho 35445 * rho 35445 - rho 35444 * rho 35444 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4186
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX93 rho : Seg34.F), (seg34AccY93 rho : Seg34.F)⟩
      ⟨(rho 35444 : Seg34.F), (rho 35445 : Seg34.F)⟩
      ⟨(rho 35450 : Seg34.F), (rho 35451 : Seg34.F)⟩
      ⟨(seg34AccX94 rho : Seg34.F), (seg34AccY94 rho : Seg34.F)⟩
      ⟨(rho 35457 : Seg34.F), (rho 35458 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung93

theorem seg34_rows94 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4187 rho ∧ Seg34.relationRow4188 rho ∧ Seg34.relationRow4189 rho ∧ Seg34.relationRow4190 rho ∧ Seg34.relationRow4191 rho ∧ Seg34.relationRow4192 rho ∧ Seg34.relationRow4193 rho ∧ Seg34.relationRow4194 rho ∧ Seg34.relationRow4195 rho ∧ Seg34.relationRow4196 rho ∧ Seg34.relationRow4197 rho ∧ Seg34.relationRow4198 rho ∧ Seg34.relationRow4199 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4187, r4188, r4189, r4190, r4191, r4192, r4193, r4194, r4195, r4196, r4197, r4198, r4199, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4187, r4188, r4189, r4190, r4191, r4192, r4193, r4194, r4195, r4196, r4197, r4198, r4199⟩

theorem seg34_rung94 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34086 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX94 rho : Seg34.F), (seg34AccY94 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35457 : Seg34.F), (rho 35458 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX94 rho : Seg34.F), (seg34AccY94 rho : Seg34.F)⟩
        ⟨(rho 35457 : Seg34.F), (rho 35458 : Seg34.F)⟩
        ⟨(seg34AccX95 rho : Seg34.F), (seg34AccY95 rho : Seg34.F)⟩
        ⟨(rho 35470 : Seg34.F), (rho 35471 : Seg34.F)⟩ := by
  obtain ⟨r4187, r4188, r4189, r4190, r4191, r4192, r4193, r4194, r4195, r4196, r4197, r4198, r4199⟩ := seg34_rows94 rho h
  unfold Seg34.relationRow4187 at r4187
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4187
  unfold Seg34.relationRow4188 at r4188
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4188
  unfold Seg34.relationRow4189 at r4189
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4189
  unfold Seg34.relationRow4190 at r4190
  unfold Seg34.relationRow4191 at r4191
  unfold Seg34.relationRow4192 at r4192
  unfold Seg34.relationRow4193 at r4193
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4193
  unfold Seg34.relationRow4194 at r4194
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4194
  unfold Seg34.relationRow4195 at r4195
  unfold Seg34.relationRow4196 at r4196
  unfold Seg34.relationRow4197 at r4197
  unfold Seg34.relationRow4198 at r4198
  unfold Seg34.relationRow4199 at r4199
  have hrung94 (bit : Bool) (hbit : rho 34086 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX94 rho : Seg34.F), (seg34AccY94 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35457 : Seg34.F), (rho 35458 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX94 rho : Seg34.F), (seg34AccY94 rho : Seg34.F)⟩
        ⟨(rho 35457 : Seg34.F), (rho 35458 : Seg34.F)⟩
        ⟨(seg34AccX95 rho : Seg34.F), (seg34AccY95 rho : Seg34.F)⟩
        ⟨(rho 35470 : Seg34.F), (rho 35471 : Seg34.F)⟩ := by
    have hnextx : seg34AccX95 rho = seg34AccX94 rho + rho 35465 := by
      unfold seg34AccX95 seg34AccX94
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 94]
      ring
    have hnexty : seg34AccY95 rho = seg34AccY94 rho + rho 35466 := by
      unfold seg34AccY95 seg34AccY94
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 94]
      ring
    have ha0 : (rho 35457 + rho 35458) * (seg34AccX94 rho + seg34AccY94 rho) = rho 35459 := by
      unfold seg34AccX94 seg34AccY94
      linear_combination r4187
    have ha1 : rho 35458 * seg34AccX94 rho = rho 35460 := by
      unfold seg34AccX94
      linear_combination r4188
    have ha2 : rho 35457 * seg34AccY94 rho = rho 35461 := by
      unfold seg34AccY94
      linear_combination r4189
    have ha3 : 3021 * rho 35460 * rho 35461 = rho 35462 := by
      linear_combination r4190
    have ha4 : rho 35463 * (1 + rho 35462) = rho 35460 + rho 35461 := by
      linear_combination r4191
    have ha5 : rho 35464 * (1 - rho 35462) = rho 35459 - rho 35460 - rho 35461 := by
      linear_combination r4192
    have haddx :
        rho 35463 * (1 + 3021 * (rho 35458 * seg34AccX94 rho) * (rho 35457 * seg34AccY94 rho)) =
          rho 35458 * seg34AccX94 rho + rho 35457 * seg34AccY94 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35464 * (1 - 3021 * (rho 35458 * seg34AccX94 rho) * (rho 35457 * seg34AccY94 rho)) =
          (-1) * (rho 35458 * seg34AccX94 rho) - rho 35457 * seg34AccY94 rho +
            (seg34AccY94 rho - seg34AccX94 rho * (-1)) * (rho 35457 + rho 35458) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35464 * (1 - rho 35462) = rho 35459 - rho 35460 - rho 35461 := ha5
        _ = (-1) * rho 35460 - rho 35461 + (seg34AccY94 rho - seg34AccX94 rho * (-1)) * (rho 35457 + rho 35458) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX95 rho = seg34AccX94 rho - Bool.toZMod bit * (seg34AccX94 rho - rho 35463) := by
      have hd : rho 35465 = Bool.toZMod bit * (rho 35463 - seg34AccX94 rho) := by
        rw [← hbit]
        unfold seg34AccX94
        linear_combination -r4193
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY95 rho = seg34AccY94 rho - Bool.toZMod bit * (seg34AccY94 rho - rho 35464) := by
      have hd : rho 35466 = Bool.toZMod bit * (rho 35464 - seg34AccY94 rho) := by
        rw [← hbit]
        unfold seg34AccY94
        linear_combination -r4194
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35457 * rho 35458 = rho 35467 := by linear_combination r4195
    have hd1 : rho 35457 * rho 35457 = rho 35468 := by linear_combination r4196
    have hd2 : rho 35458 * rho 35458 = rho 35469 := by linear_combination r4197
    have hd3 : rho 35470 * (rho 35458 * rho 35458 + rho 35457 * rho 35457 * (-1)) = 2 * (rho 35457 * rho 35458) := by
      rw [hd0, hd1, hd2]
      linear_combination r4198
    have hd4 : rho 35471 * (2 - (rho 35458 * rho 35458 + rho 35457 * rho 35457 * (-1))) = rho 35458 * rho 35458 - rho 35457 * rho 35457 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4199
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX94 rho : Seg34.F), (seg34AccY94 rho : Seg34.F)⟩
      ⟨(rho 35457 : Seg34.F), (rho 35458 : Seg34.F)⟩
      ⟨(rho 35463 : Seg34.F), (rho 35464 : Seg34.F)⟩
      ⟨(seg34AccX95 rho : Seg34.F), (seg34AccY95 rho : Seg34.F)⟩
      ⟨(rho 35470 : Seg34.F), (rho 35471 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung94

theorem seg34_rows95 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4200 rho ∧ Seg34.relationRow4201 rho ∧ Seg34.relationRow4202 rho ∧ Seg34.relationRow4203 rho ∧ Seg34.relationRow4204 rho ∧ Seg34.relationRow4205 rho ∧ Seg34.relationRow4206 rho ∧ Seg34.relationRow4207 rho ∧ Seg34.relationRow4208 rho ∧ Seg34.relationRow4209 rho ∧ Seg34.relationRow4210 rho ∧ Seg34.relationRow4211 rho ∧ Seg34.relationRow4212 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4200, r4201, r4202, r4203, r4204, r4205, r4206, r4207, r4208, r4209, r4210, r4211, r4212, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4200, r4201, r4202, r4203, r4204, r4205, r4206, r4207, r4208, r4209, r4210, r4211, r4212⟩

theorem seg34_rung95 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34087 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX95 rho : Seg34.F), (seg34AccY95 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35470 : Seg34.F), (rho 35471 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX95 rho : Seg34.F), (seg34AccY95 rho : Seg34.F)⟩
        ⟨(rho 35470 : Seg34.F), (rho 35471 : Seg34.F)⟩
        ⟨(seg34AccX96 rho : Seg34.F), (seg34AccY96 rho : Seg34.F)⟩
        ⟨(rho 35483 : Seg34.F), (rho 35484 : Seg34.F)⟩ := by
  obtain ⟨r4200, r4201, r4202, r4203, r4204, r4205, r4206, r4207, r4208, r4209, r4210, r4211, r4212⟩ := seg34_rows95 rho h
  unfold Seg34.relationRow4200 at r4200
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4200
  unfold Seg34.relationRow4201 at r4201
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4201
  unfold Seg34.relationRow4202 at r4202
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4202
  unfold Seg34.relationRow4203 at r4203
  unfold Seg34.relationRow4204 at r4204
  unfold Seg34.relationRow4205 at r4205
  unfold Seg34.relationRow4206 at r4206
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4206
  unfold Seg34.relationRow4207 at r4207
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4207
  unfold Seg34.relationRow4208 at r4208
  unfold Seg34.relationRow4209 at r4209
  unfold Seg34.relationRow4210 at r4210
  unfold Seg34.relationRow4211 at r4211
  unfold Seg34.relationRow4212 at r4212
  have hrung95 (bit : Bool) (hbit : rho 34087 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX95 rho : Seg34.F), (seg34AccY95 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35470 : Seg34.F), (rho 35471 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX95 rho : Seg34.F), (seg34AccY95 rho : Seg34.F)⟩
        ⟨(rho 35470 : Seg34.F), (rho 35471 : Seg34.F)⟩
        ⟨(seg34AccX96 rho : Seg34.F), (seg34AccY96 rho : Seg34.F)⟩
        ⟨(rho 35483 : Seg34.F), (rho 35484 : Seg34.F)⟩ := by
    have hnextx : seg34AccX96 rho = seg34AccX95 rho + rho 35478 := by
      unfold seg34AccX96 seg34AccX95
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 95]
      ring
    have hnexty : seg34AccY96 rho = seg34AccY95 rho + rho 35479 := by
      unfold seg34AccY96 seg34AccY95
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 95]
      ring
    have ha0 : (rho 35470 + rho 35471) * (seg34AccX95 rho + seg34AccY95 rho) = rho 35472 := by
      unfold seg34AccX95 seg34AccY95
      linear_combination r4200
    have ha1 : rho 35471 * seg34AccX95 rho = rho 35473 := by
      unfold seg34AccX95
      linear_combination r4201
    have ha2 : rho 35470 * seg34AccY95 rho = rho 35474 := by
      unfold seg34AccY95
      linear_combination r4202
    have ha3 : 3021 * rho 35473 * rho 35474 = rho 35475 := by
      linear_combination r4203
    have ha4 : rho 35476 * (1 + rho 35475) = rho 35473 + rho 35474 := by
      linear_combination r4204
    have ha5 : rho 35477 * (1 - rho 35475) = rho 35472 - rho 35473 - rho 35474 := by
      linear_combination r4205
    have haddx :
        rho 35476 * (1 + 3021 * (rho 35471 * seg34AccX95 rho) * (rho 35470 * seg34AccY95 rho)) =
          rho 35471 * seg34AccX95 rho + rho 35470 * seg34AccY95 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35477 * (1 - 3021 * (rho 35471 * seg34AccX95 rho) * (rho 35470 * seg34AccY95 rho)) =
          (-1) * (rho 35471 * seg34AccX95 rho) - rho 35470 * seg34AccY95 rho +
            (seg34AccY95 rho - seg34AccX95 rho * (-1)) * (rho 35470 + rho 35471) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35477 * (1 - rho 35475) = rho 35472 - rho 35473 - rho 35474 := ha5
        _ = (-1) * rho 35473 - rho 35474 + (seg34AccY95 rho - seg34AccX95 rho * (-1)) * (rho 35470 + rho 35471) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX96 rho = seg34AccX95 rho - Bool.toZMod bit * (seg34AccX95 rho - rho 35476) := by
      have hd : rho 35478 = Bool.toZMod bit * (rho 35476 - seg34AccX95 rho) := by
        rw [← hbit]
        unfold seg34AccX95
        linear_combination -r4206
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY96 rho = seg34AccY95 rho - Bool.toZMod bit * (seg34AccY95 rho - rho 35477) := by
      have hd : rho 35479 = Bool.toZMod bit * (rho 35477 - seg34AccY95 rho) := by
        rw [← hbit]
        unfold seg34AccY95
        linear_combination -r4207
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35470 * rho 35471 = rho 35480 := by linear_combination r4208
    have hd1 : rho 35470 * rho 35470 = rho 35481 := by linear_combination r4209
    have hd2 : rho 35471 * rho 35471 = rho 35482 := by linear_combination r4210
    have hd3 : rho 35483 * (rho 35471 * rho 35471 + rho 35470 * rho 35470 * (-1)) = 2 * (rho 35470 * rho 35471) := by
      rw [hd0, hd1, hd2]
      linear_combination r4211
    have hd4 : rho 35484 * (2 - (rho 35471 * rho 35471 + rho 35470 * rho 35470 * (-1))) = rho 35471 * rho 35471 - rho 35470 * rho 35470 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4212
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX95 rho : Seg34.F), (seg34AccY95 rho : Seg34.F)⟩
      ⟨(rho 35470 : Seg34.F), (rho 35471 : Seg34.F)⟩
      ⟨(rho 35476 : Seg34.F), (rho 35477 : Seg34.F)⟩
      ⟨(seg34AccX96 rho : Seg34.F), (seg34AccY96 rho : Seg34.F)⟩
      ⟨(rho 35483 : Seg34.F), (rho 35484 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung95

theorem seg34_rows96 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4213 rho ∧ Seg34.relationRow4214 rho ∧ Seg34.relationRow4215 rho ∧ Seg34.relationRow4216 rho ∧ Seg34.relationRow4217 rho ∧ Seg34.relationRow4218 rho ∧ Seg34.relationRow4219 rho ∧ Seg34.relationRow4220 rho ∧ Seg34.relationRow4221 rho ∧ Seg34.relationRow4222 rho ∧ Seg34.relationRow4223 rho ∧ Seg34.relationRow4224 rho ∧ Seg34.relationRow4225 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4213, r4214, r4215, r4216, r4217, r4218, r4219, r4220, r4221, r4222, r4223, r4224, r4225, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4213, r4214, r4215, r4216, r4217, r4218, r4219, r4220, r4221, r4222, r4223, r4224, r4225⟩

theorem seg34_rung96 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34088 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX96 rho : Seg34.F), (seg34AccY96 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35483 : Seg34.F), (rho 35484 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX96 rho : Seg34.F), (seg34AccY96 rho : Seg34.F)⟩
        ⟨(rho 35483 : Seg34.F), (rho 35484 : Seg34.F)⟩
        ⟨(seg34AccX97 rho : Seg34.F), (seg34AccY97 rho : Seg34.F)⟩
        ⟨(rho 35496 : Seg34.F), (rho 35497 : Seg34.F)⟩ := by
  obtain ⟨r4213, r4214, r4215, r4216, r4217, r4218, r4219, r4220, r4221, r4222, r4223, r4224, r4225⟩ := seg34_rows96 rho h
  unfold Seg34.relationRow4213 at r4213
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4213
  unfold Seg34.relationRow4214 at r4214
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4214
  unfold Seg34.relationRow4215 at r4215
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4215
  unfold Seg34.relationRow4216 at r4216
  unfold Seg34.relationRow4217 at r4217
  unfold Seg34.relationRow4218 at r4218
  unfold Seg34.relationRow4219 at r4219
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4219
  unfold Seg34.relationRow4220 at r4220
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4220
  unfold Seg34.relationRow4221 at r4221
  unfold Seg34.relationRow4222 at r4222
  unfold Seg34.relationRow4223 at r4223
  unfold Seg34.relationRow4224 at r4224
  unfold Seg34.relationRow4225 at r4225
  have hrung96 (bit : Bool) (hbit : rho 34088 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX96 rho : Seg34.F), (seg34AccY96 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35483 : Seg34.F), (rho 35484 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX96 rho : Seg34.F), (seg34AccY96 rho : Seg34.F)⟩
        ⟨(rho 35483 : Seg34.F), (rho 35484 : Seg34.F)⟩
        ⟨(seg34AccX97 rho : Seg34.F), (seg34AccY97 rho : Seg34.F)⟩
        ⟨(rho 35496 : Seg34.F), (rho 35497 : Seg34.F)⟩ := by
    have hnextx : seg34AccX97 rho = seg34AccX96 rho + rho 35491 := by
      unfold seg34AccX97 seg34AccX96
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 96]
      ring
    have hnexty : seg34AccY97 rho = seg34AccY96 rho + rho 35492 := by
      unfold seg34AccY97 seg34AccY96
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 96]
      ring
    have ha0 : (rho 35483 + rho 35484) * (seg34AccX96 rho + seg34AccY96 rho) = rho 35485 := by
      unfold seg34AccX96 seg34AccY96
      linear_combination r4213
    have ha1 : rho 35484 * seg34AccX96 rho = rho 35486 := by
      unfold seg34AccX96
      linear_combination r4214
    have ha2 : rho 35483 * seg34AccY96 rho = rho 35487 := by
      unfold seg34AccY96
      linear_combination r4215
    have ha3 : 3021 * rho 35486 * rho 35487 = rho 35488 := by
      linear_combination r4216
    have ha4 : rho 35489 * (1 + rho 35488) = rho 35486 + rho 35487 := by
      linear_combination r4217
    have ha5 : rho 35490 * (1 - rho 35488) = rho 35485 - rho 35486 - rho 35487 := by
      linear_combination r4218
    have haddx :
        rho 35489 * (1 + 3021 * (rho 35484 * seg34AccX96 rho) * (rho 35483 * seg34AccY96 rho)) =
          rho 35484 * seg34AccX96 rho + rho 35483 * seg34AccY96 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35490 * (1 - 3021 * (rho 35484 * seg34AccX96 rho) * (rho 35483 * seg34AccY96 rho)) =
          (-1) * (rho 35484 * seg34AccX96 rho) - rho 35483 * seg34AccY96 rho +
            (seg34AccY96 rho - seg34AccX96 rho * (-1)) * (rho 35483 + rho 35484) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35490 * (1 - rho 35488) = rho 35485 - rho 35486 - rho 35487 := ha5
        _ = (-1) * rho 35486 - rho 35487 + (seg34AccY96 rho - seg34AccX96 rho * (-1)) * (rho 35483 + rho 35484) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX97 rho = seg34AccX96 rho - Bool.toZMod bit * (seg34AccX96 rho - rho 35489) := by
      have hd : rho 35491 = Bool.toZMod bit * (rho 35489 - seg34AccX96 rho) := by
        rw [← hbit]
        unfold seg34AccX96
        linear_combination -r4219
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY97 rho = seg34AccY96 rho - Bool.toZMod bit * (seg34AccY96 rho - rho 35490) := by
      have hd : rho 35492 = Bool.toZMod bit * (rho 35490 - seg34AccY96 rho) := by
        rw [← hbit]
        unfold seg34AccY96
        linear_combination -r4220
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35483 * rho 35484 = rho 35493 := by linear_combination r4221
    have hd1 : rho 35483 * rho 35483 = rho 35494 := by linear_combination r4222
    have hd2 : rho 35484 * rho 35484 = rho 35495 := by linear_combination r4223
    have hd3 : rho 35496 * (rho 35484 * rho 35484 + rho 35483 * rho 35483 * (-1)) = 2 * (rho 35483 * rho 35484) := by
      rw [hd0, hd1, hd2]
      linear_combination r4224
    have hd4 : rho 35497 * (2 - (rho 35484 * rho 35484 + rho 35483 * rho 35483 * (-1))) = rho 35484 * rho 35484 - rho 35483 * rho 35483 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4225
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX96 rho : Seg34.F), (seg34AccY96 rho : Seg34.F)⟩
      ⟨(rho 35483 : Seg34.F), (rho 35484 : Seg34.F)⟩
      ⟨(rho 35489 : Seg34.F), (rho 35490 : Seg34.F)⟩
      ⟨(seg34AccX97 rho : Seg34.F), (seg34AccY97 rho : Seg34.F)⟩
      ⟨(rho 35496 : Seg34.F), (rho 35497 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung96

theorem seg34_rows97 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4226 rho ∧ Seg34.relationRow4227 rho ∧ Seg34.relationRow4228 rho ∧ Seg34.relationRow4229 rho ∧ Seg34.relationRow4230 rho ∧ Seg34.relationRow4231 rho ∧ Seg34.relationRow4232 rho ∧ Seg34.relationRow4233 rho ∧ Seg34.relationRow4234 rho ∧ Seg34.relationRow4235 rho ∧ Seg34.relationRow4236 rho ∧ Seg34.relationRow4237 rho ∧ Seg34.relationRow4238 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4226, r4227, r4228, r4229, r4230, r4231, r4232, r4233, r4234, r4235, r4236, r4237, r4238, _⟩
  exact ⟨r4226, r4227, r4228, r4229, r4230, r4231, r4232, r4233, r4234, r4235, r4236, r4237, r4238⟩

theorem seg34_rung97 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34089 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX97 rho : Seg34.F), (seg34AccY97 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35496 : Seg34.F), (rho 35497 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX97 rho : Seg34.F), (seg34AccY97 rho : Seg34.F)⟩
        ⟨(rho 35496 : Seg34.F), (rho 35497 : Seg34.F)⟩
        ⟨(seg34AccX98 rho : Seg34.F), (seg34AccY98 rho : Seg34.F)⟩
        ⟨(rho 35509 : Seg34.F), (rho 35510 : Seg34.F)⟩ := by
  obtain ⟨r4226, r4227, r4228, r4229, r4230, r4231, r4232, r4233, r4234, r4235, r4236, r4237, r4238⟩ := seg34_rows97 rho h
  unfold Seg34.relationRow4226 at r4226
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4226
  unfold Seg34.relationRow4227 at r4227
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4227
  unfold Seg34.relationRow4228 at r4228
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4228
  unfold Seg34.relationRow4229 at r4229
  unfold Seg34.relationRow4230 at r4230
  unfold Seg34.relationRow4231 at r4231
  unfold Seg34.relationRow4232 at r4232
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4232
  unfold Seg34.relationRow4233 at r4233
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4233
  unfold Seg34.relationRow4234 at r4234
  unfold Seg34.relationRow4235 at r4235
  unfold Seg34.relationRow4236 at r4236
  unfold Seg34.relationRow4237 at r4237
  unfold Seg34.relationRow4238 at r4238
  have hrung97 (bit : Bool) (hbit : rho 34089 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX97 rho : Seg34.F), (seg34AccY97 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35496 : Seg34.F), (rho 35497 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX97 rho : Seg34.F), (seg34AccY97 rho : Seg34.F)⟩
        ⟨(rho 35496 : Seg34.F), (rho 35497 : Seg34.F)⟩
        ⟨(seg34AccX98 rho : Seg34.F), (seg34AccY98 rho : Seg34.F)⟩
        ⟨(rho 35509 : Seg34.F), (rho 35510 : Seg34.F)⟩ := by
    have hnextx : seg34AccX98 rho = seg34AccX97 rho + rho 35504 := by
      unfold seg34AccX98 seg34AccX97
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 97]
      ring
    have hnexty : seg34AccY98 rho = seg34AccY97 rho + rho 35505 := by
      unfold seg34AccY98 seg34AccY97
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 97]
      ring
    have ha0 : (rho 35496 + rho 35497) * (seg34AccX97 rho + seg34AccY97 rho) = rho 35498 := by
      unfold seg34AccX97 seg34AccY97
      linear_combination r4226
    have ha1 : rho 35497 * seg34AccX97 rho = rho 35499 := by
      unfold seg34AccX97
      linear_combination r4227
    have ha2 : rho 35496 * seg34AccY97 rho = rho 35500 := by
      unfold seg34AccY97
      linear_combination r4228
    have ha3 : 3021 * rho 35499 * rho 35500 = rho 35501 := by
      linear_combination r4229
    have ha4 : rho 35502 * (1 + rho 35501) = rho 35499 + rho 35500 := by
      linear_combination r4230
    have ha5 : rho 35503 * (1 - rho 35501) = rho 35498 - rho 35499 - rho 35500 := by
      linear_combination r4231
    have haddx :
        rho 35502 * (1 + 3021 * (rho 35497 * seg34AccX97 rho) * (rho 35496 * seg34AccY97 rho)) =
          rho 35497 * seg34AccX97 rho + rho 35496 * seg34AccY97 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35503 * (1 - 3021 * (rho 35497 * seg34AccX97 rho) * (rho 35496 * seg34AccY97 rho)) =
          (-1) * (rho 35497 * seg34AccX97 rho) - rho 35496 * seg34AccY97 rho +
            (seg34AccY97 rho - seg34AccX97 rho * (-1)) * (rho 35496 + rho 35497) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35503 * (1 - rho 35501) = rho 35498 - rho 35499 - rho 35500 := ha5
        _ = (-1) * rho 35499 - rho 35500 + (seg34AccY97 rho - seg34AccX97 rho * (-1)) * (rho 35496 + rho 35497) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX98 rho = seg34AccX97 rho - Bool.toZMod bit * (seg34AccX97 rho - rho 35502) := by
      have hd : rho 35504 = Bool.toZMod bit * (rho 35502 - seg34AccX97 rho) := by
        rw [← hbit]
        unfold seg34AccX97
        linear_combination -r4232
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY98 rho = seg34AccY97 rho - Bool.toZMod bit * (seg34AccY97 rho - rho 35503) := by
      have hd : rho 35505 = Bool.toZMod bit * (rho 35503 - seg34AccY97 rho) := by
        rw [← hbit]
        unfold seg34AccY97
        linear_combination -r4233
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35496 * rho 35497 = rho 35506 := by linear_combination r4234
    have hd1 : rho 35496 * rho 35496 = rho 35507 := by linear_combination r4235
    have hd2 : rho 35497 * rho 35497 = rho 35508 := by linear_combination r4236
    have hd3 : rho 35509 * (rho 35497 * rho 35497 + rho 35496 * rho 35496 * (-1)) = 2 * (rho 35496 * rho 35497) := by
      rw [hd0, hd1, hd2]
      linear_combination r4237
    have hd4 : rho 35510 * (2 - (rho 35497 * rho 35497 + rho 35496 * rho 35496 * (-1))) = rho 35497 * rho 35497 - rho 35496 * rho 35496 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4238
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX97 rho : Seg34.F), (seg34AccY97 rho : Seg34.F)⟩
      ⟨(rho 35496 : Seg34.F), (rho 35497 : Seg34.F)⟩
      ⟨(rho 35502 : Seg34.F), (rho 35503 : Seg34.F)⟩
      ⟨(seg34AccX98 rho : Seg34.F), (seg34AccY98 rho : Seg34.F)⟩
      ⟨(rho 35509 : Seg34.F), (rho 35510 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung97

theorem seg34_rows98 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4239 rho ∧ Seg34.relationRow4240 rho ∧ Seg34.relationRow4241 rho ∧ Seg34.relationRow4242 rho ∧ Seg34.relationRow4243 rho ∧ Seg34.relationRow4244 rho ∧ Seg34.relationRow4245 rho ∧ Seg34.relationRow4246 rho ∧ Seg34.relationRow4247 rho ∧ Seg34.relationRow4248 rho ∧ Seg34.relationRow4249 rho ∧ Seg34.relationRow4250 rho ∧ Seg34.relationRow4251 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4239⟩
  unfold Seg34.relationPart53 at p53
  rcases p53 with ⟨r4240, r4241, r4242, r4243, r4244, r4245, r4246, r4247, r4248, r4249, r4250, r4251, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4239, r4240, r4241, r4242, r4243, r4244, r4245, r4246, r4247, r4248, r4249, r4250, r4251⟩

theorem seg34_rung98 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34090 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX98 rho : Seg34.F), (seg34AccY98 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35509 : Seg34.F), (rho 35510 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX98 rho : Seg34.F), (seg34AccY98 rho : Seg34.F)⟩
        ⟨(rho 35509 : Seg34.F), (rho 35510 : Seg34.F)⟩
        ⟨(seg34AccX99 rho : Seg34.F), (seg34AccY99 rho : Seg34.F)⟩
        ⟨(rho 35522 : Seg34.F), (rho 35523 : Seg34.F)⟩ := by
  obtain ⟨r4239, r4240, r4241, r4242, r4243, r4244, r4245, r4246, r4247, r4248, r4249, r4250, r4251⟩ := seg34_rows98 rho h
  unfold Seg34.relationRow4239 at r4239
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4239
  unfold Seg34.relationRow4240 at r4240
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4240
  unfold Seg34.relationRow4241 at r4241
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4241
  unfold Seg34.relationRow4242 at r4242
  unfold Seg34.relationRow4243 at r4243
  unfold Seg34.relationRow4244 at r4244
  unfold Seg34.relationRow4245 at r4245
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4245
  unfold Seg34.relationRow4246 at r4246
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4246
  unfold Seg34.relationRow4247 at r4247
  unfold Seg34.relationRow4248 at r4248
  unfold Seg34.relationRow4249 at r4249
  unfold Seg34.relationRow4250 at r4250
  unfold Seg34.relationRow4251 at r4251
  have hrung98 (bit : Bool) (hbit : rho 34090 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX98 rho : Seg34.F), (seg34AccY98 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35509 : Seg34.F), (rho 35510 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX98 rho : Seg34.F), (seg34AccY98 rho : Seg34.F)⟩
        ⟨(rho 35509 : Seg34.F), (rho 35510 : Seg34.F)⟩
        ⟨(seg34AccX99 rho : Seg34.F), (seg34AccY99 rho : Seg34.F)⟩
        ⟨(rho 35522 : Seg34.F), (rho 35523 : Seg34.F)⟩ := by
    have hnextx : seg34AccX99 rho = seg34AccX98 rho + rho 35517 := by
      unfold seg34AccX99 seg34AccX98
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 98]
      ring
    have hnexty : seg34AccY99 rho = seg34AccY98 rho + rho 35518 := by
      unfold seg34AccY99 seg34AccY98
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 98]
      ring
    have ha0 : (rho 35509 + rho 35510) * (seg34AccX98 rho + seg34AccY98 rho) = rho 35511 := by
      unfold seg34AccX98 seg34AccY98
      linear_combination r4239
    have ha1 : rho 35510 * seg34AccX98 rho = rho 35512 := by
      unfold seg34AccX98
      linear_combination r4240
    have ha2 : rho 35509 * seg34AccY98 rho = rho 35513 := by
      unfold seg34AccY98
      linear_combination r4241
    have ha3 : 3021 * rho 35512 * rho 35513 = rho 35514 := by
      linear_combination r4242
    have ha4 : rho 35515 * (1 + rho 35514) = rho 35512 + rho 35513 := by
      linear_combination r4243
    have ha5 : rho 35516 * (1 - rho 35514) = rho 35511 - rho 35512 - rho 35513 := by
      linear_combination r4244
    have haddx :
        rho 35515 * (1 + 3021 * (rho 35510 * seg34AccX98 rho) * (rho 35509 * seg34AccY98 rho)) =
          rho 35510 * seg34AccX98 rho + rho 35509 * seg34AccY98 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35516 * (1 - 3021 * (rho 35510 * seg34AccX98 rho) * (rho 35509 * seg34AccY98 rho)) =
          (-1) * (rho 35510 * seg34AccX98 rho) - rho 35509 * seg34AccY98 rho +
            (seg34AccY98 rho - seg34AccX98 rho * (-1)) * (rho 35509 + rho 35510) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35516 * (1 - rho 35514) = rho 35511 - rho 35512 - rho 35513 := ha5
        _ = (-1) * rho 35512 - rho 35513 + (seg34AccY98 rho - seg34AccX98 rho * (-1)) * (rho 35509 + rho 35510) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX99 rho = seg34AccX98 rho - Bool.toZMod bit * (seg34AccX98 rho - rho 35515) := by
      have hd : rho 35517 = Bool.toZMod bit * (rho 35515 - seg34AccX98 rho) := by
        rw [← hbit]
        unfold seg34AccX98
        linear_combination -r4245
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY99 rho = seg34AccY98 rho - Bool.toZMod bit * (seg34AccY98 rho - rho 35516) := by
      have hd : rho 35518 = Bool.toZMod bit * (rho 35516 - seg34AccY98 rho) := by
        rw [← hbit]
        unfold seg34AccY98
        linear_combination -r4246
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35509 * rho 35510 = rho 35519 := by linear_combination r4247
    have hd1 : rho 35509 * rho 35509 = rho 35520 := by linear_combination r4248
    have hd2 : rho 35510 * rho 35510 = rho 35521 := by linear_combination r4249
    have hd3 : rho 35522 * (rho 35510 * rho 35510 + rho 35509 * rho 35509 * (-1)) = 2 * (rho 35509 * rho 35510) := by
      rw [hd0, hd1, hd2]
      linear_combination r4250
    have hd4 : rho 35523 * (2 - (rho 35510 * rho 35510 + rho 35509 * rho 35509 * (-1))) = rho 35510 * rho 35510 - rho 35509 * rho 35509 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4251
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX98 rho : Seg34.F), (seg34AccY98 rho : Seg34.F)⟩
      ⟨(rho 35509 : Seg34.F), (rho 35510 : Seg34.F)⟩
      ⟨(rho 35515 : Seg34.F), (rho 35516 : Seg34.F)⟩
      ⟨(seg34AccX99 rho : Seg34.F), (seg34AccY99 rho : Seg34.F)⟩
      ⟨(rho 35522 : Seg34.F), (rho 35523 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung98

theorem seg34_hstep_c8 (rho : Nat -> Seg34.F) (h : Seg34.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (33992 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 88 ≤ i → i < 99 →
      EdwardsBridge.onCurve (seg34LadderAccState rho i) →
      EdwardsBridge.onCurve (seg34LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg34LadderAccState rho i) (seg34LadderCurState rho i)
        (seg34LadderAccState rho (i + 1)) (seg34LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg34_rung88 rho h bits[88]! (hbitAt 88 (by omega)) hacc hcur
  · exact seg34_rung89 rho h bits[89]! (hbitAt 89 (by omega)) hacc hcur
  · exact seg34_rung90 rho h bits[90]! (hbitAt 90 (by omega)) hacc hcur
  · exact seg34_rung91 rho h bits[91]! (hbitAt 91 (by omega)) hacc hcur
  · exact seg34_rung92 rho h bits[92]! (hbitAt 92 (by omega)) hacc hcur
  · exact seg34_rung93 rho h bits[93]! (hbitAt 93 (by omega)) hacc hcur
  · exact seg34_rung94 rho h bits[94]! (hbitAt 94 (by omega)) hacc hcur
  · exact seg34_rung95 rho h bits[95]! (hbitAt 95 (by omega)) hacc hcur
  · exact seg34_rung96 rho h bits[96]! (hbitAt 96 (by omega)) hacc hcur
  · exact seg34_rung97 rho h bits[97]! (hbitAt 97 (by omega)) hacc hcur
  · exact seg34_rung98 rho h bits[98]! (hbitAt 98 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
