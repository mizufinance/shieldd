import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In1_rows66 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4184 rho ∧ Seg52.relationRow4185 rho ∧ Seg52.relationRow4186 rho ∧ Seg52.relationRow4187 rho ∧ Seg52.relationRow4188 rho ∧ Seg52.relationRow4189 rho ∧ Seg52.relationRow4190 rho ∧ Seg52.relationRow4191 rho ∧ Seg52.relationRow4192 rho ∧ Seg52.relationRow4193 rho ∧ Seg52.relationRow4194 rho ∧ Seg52.relationRow4195 rho ∧ Seg52.relationRow4196 rho := by
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

  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4184, r4185, r4186, r4187, r4188, r4189, r4190, r4191, r4192, r4193, r4194, r4195, r4196, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4184, r4185, r4186, r4187, r4188, r4189, r4190, r4191, r4192, r4193, r4194, r4195, r4196⟩

theorem seg52In1_rung66 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47660 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX66 rho, seg52In1AccY66 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48572, rho 48573⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX66 rho, seg52In1AccY66 rho⟩ ⟨rho 48572, rho 48573⟩
        ⟨seg52In1AccX67 rho, seg52In1AccY67 rho⟩ ⟨rho 48585, rho 48586⟩ := by
  obtain ⟨r4184, r4185, r4186, r4187, r4188, r4189, r4190, r4191, r4192, r4193, r4194, r4195, r4196⟩ := seg52In1_rows66 rho h
  unfold Seg52.relationRow4184 at r4184

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4184

  unfold Seg52.relationRow4185 at r4185

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4185

  unfold Seg52.relationRow4186 at r4186

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4186

  unfold Seg52.relationRow4187 at r4187

  unfold Seg52.relationRow4188 at r4188

  unfold Seg52.relationRow4189 at r4189

  unfold Seg52.relationRow4190 at r4190

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4190

  unfold Seg52.relationRow4191 at r4191

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4191

  unfold Seg52.relationRow4192 at r4192

  unfold Seg52.relationRow4193 at r4193

  unfold Seg52.relationRow4194 at r4194

  unfold Seg52.relationRow4195 at r4195

  unfold Seg52.relationRow4196 at r4196

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX67 rho = seg52In1AccX66 rho + rho 48580 := by
    unfold seg52In1AccX67 seg52In1AccX66
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 66]

    ring

  have hnexty : seg52In1AccY67 rho = seg52In1AccY66 rho + rho 48581 := by
    unfold seg52In1AccY67 seg52In1AccY66
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 66]

    ring

  have ha0 : (rho 48572 + rho 48573) * (seg52In1AccX66 rho + seg52In1AccY66 rho) = rho 48574 := by
    unfold seg52In1AccX66 seg52In1AccY66
    linear_combination r4184
  have ha1 : rho 48573 * seg52In1AccX66 rho = rho 48575 := by
    unfold seg52In1AccX66
    linear_combination r4185
  have ha2 : rho 48572 * seg52In1AccY66 rho = rho 48576 := by
    unfold seg52In1AccY66
    linear_combination r4186
  have ha3 : 3021 * rho 48575 * rho 48576 = rho 48577 := by
    linear_combination r4187
  have ha4 : rho 48578 * (1 + rho 48577) = rho 48575 + rho 48576 := by
    linear_combination r4188
  have ha5 : rho 48579 * (1 - rho 48577) = rho 48574 - rho 48575 - rho 48576 := by
    linear_combination r4189
  have haddx :
      rho 48578 * (1 + 3021 * (rho 48573 * seg52In1AccX66 rho) * (rho 48572 * seg52In1AccY66 rho)) =
        rho 48573 * seg52In1AccX66 rho + rho 48572 * seg52In1AccY66 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48579 * (1 - 3021 * (rho 48573 * seg52In1AccX66 rho) * (rho 48572 * seg52In1AccY66 rho)) =
        (-1) * (rho 48573 * seg52In1AccX66 rho) - rho 48572 * seg52In1AccY66 rho +
          (seg52In1AccY66 rho - seg52In1AccX66 rho * (-1)) * (rho 48572 + rho 48573) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48579 * (1 - rho 48577) = rho 48574 - rho 48575 - rho 48576 := ha5
      _ = (-1) * rho 48575 - rho 48576 + (seg52In1AccY66 rho - seg52In1AccX66 rho * (-1)) *
          (rho 48572 + rho 48573) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX67 rho = seg52In1AccX66 rho - Bool.toZMod bit * (seg52In1AccX66 rho - rho 48578) := by
    have hd : rho 48580 = Bool.toZMod bit * (rho 48578 - seg52In1AccX66 rho) := by
      rw [← hbit]
      unfold seg52In1AccX66
      linear_combination -r4190
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY67 rho = seg52In1AccY66 rho - Bool.toZMod bit * (seg52In1AccY66 rho - rho 48579) := by
    have hd : rho 48581 = Bool.toZMod bit * (rho 48579 - seg52In1AccY66 rho) := by
      rw [← hbit]
      unfold seg52In1AccY66
      linear_combination -r4191
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48572 * rho 48573 = rho 48582 := by linear_combination r4192
  have hd1 : rho 48572 * rho 48572 = rho 48583 := by linear_combination r4193
  have hd2 : rho 48573 * rho 48573 = rho 48584 := by linear_combination r4194
  have hd3 : rho 48585 * (rho 48573 * rho 48573 + rho 48572 * rho 48572 * (-1)) =
      2 * (rho 48572 * rho 48573) := by
    rw [hd0, hd1, hd2]
    linear_combination r4195
  have hd4 : rho 48586 * (2 - (rho 48573 * rho 48573 + rho 48572 * rho 48572 * (-1))) =
      rho 48573 * rho 48573 - rho 48572 * rho 48572 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4196
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX66 rho, seg52In1AccY66 rho⟩ ⟨rho 48572, rho 48573⟩
    ⟨rho 48578, rho 48579⟩ ⟨seg52In1AccX67 rho, seg52In1AccY67 rho⟩ ⟨rho 48585, rho 48586⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows67 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4197 rho ∧ Seg52.relationRow4198 rho ∧ Seg52.relationRow4199 rho ∧ Seg52.relationRow4200 rho ∧ Seg52.relationRow4201 rho ∧ Seg52.relationRow4202 rho ∧ Seg52.relationRow4203 rho ∧ Seg52.relationRow4204 rho ∧ Seg52.relationRow4205 rho ∧ Seg52.relationRow4206 rho ∧ Seg52.relationRow4207 rho ∧ Seg52.relationRow4208 rho ∧ Seg52.relationRow4209 rho := by
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

  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4197, r4198, r4199, r4200, r4201, r4202, r4203, r4204, r4205, r4206, r4207, r4208, r4209, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4197, r4198, r4199, r4200, r4201, r4202, r4203, r4204, r4205, r4206, r4207, r4208, r4209⟩

theorem seg52In1_rung67 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47661 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX67 rho, seg52In1AccY67 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48585, rho 48586⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX67 rho, seg52In1AccY67 rho⟩ ⟨rho 48585, rho 48586⟩
        ⟨seg52In1AccX68 rho, seg52In1AccY68 rho⟩ ⟨rho 48598, rho 48599⟩ := by
  obtain ⟨r4197, r4198, r4199, r4200, r4201, r4202, r4203, r4204, r4205, r4206, r4207, r4208, r4209⟩ := seg52In1_rows67 rho h
  unfold Seg52.relationRow4197 at r4197

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4197

  unfold Seg52.relationRow4198 at r4198

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4198

  unfold Seg52.relationRow4199 at r4199

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4199

  unfold Seg52.relationRow4200 at r4200

  unfold Seg52.relationRow4201 at r4201

  unfold Seg52.relationRow4202 at r4202

  unfold Seg52.relationRow4203 at r4203

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4203

  unfold Seg52.relationRow4204 at r4204

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4204

  unfold Seg52.relationRow4205 at r4205

  unfold Seg52.relationRow4206 at r4206

  unfold Seg52.relationRow4207 at r4207

  unfold Seg52.relationRow4208 at r4208

  unfold Seg52.relationRow4209 at r4209

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX68 rho = seg52In1AccX67 rho + rho 48593 := by
    unfold seg52In1AccX68 seg52In1AccX67
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 67]

    ring

  have hnexty : seg52In1AccY68 rho = seg52In1AccY67 rho + rho 48594 := by
    unfold seg52In1AccY68 seg52In1AccY67
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 67]

    ring

  have ha0 : (rho 48585 + rho 48586) * (seg52In1AccX67 rho + seg52In1AccY67 rho) = rho 48587 := by
    unfold seg52In1AccX67 seg52In1AccY67
    linear_combination r4197
  have ha1 : rho 48586 * seg52In1AccX67 rho = rho 48588 := by
    unfold seg52In1AccX67
    linear_combination r4198
  have ha2 : rho 48585 * seg52In1AccY67 rho = rho 48589 := by
    unfold seg52In1AccY67
    linear_combination r4199
  have ha3 : 3021 * rho 48588 * rho 48589 = rho 48590 := by
    linear_combination r4200
  have ha4 : rho 48591 * (1 + rho 48590) = rho 48588 + rho 48589 := by
    linear_combination r4201
  have ha5 : rho 48592 * (1 - rho 48590) = rho 48587 - rho 48588 - rho 48589 := by
    linear_combination r4202
  have haddx :
      rho 48591 * (1 + 3021 * (rho 48586 * seg52In1AccX67 rho) * (rho 48585 * seg52In1AccY67 rho)) =
        rho 48586 * seg52In1AccX67 rho + rho 48585 * seg52In1AccY67 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48592 * (1 - 3021 * (rho 48586 * seg52In1AccX67 rho) * (rho 48585 * seg52In1AccY67 rho)) =
        (-1) * (rho 48586 * seg52In1AccX67 rho) - rho 48585 * seg52In1AccY67 rho +
          (seg52In1AccY67 rho - seg52In1AccX67 rho * (-1)) * (rho 48585 + rho 48586) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48592 * (1 - rho 48590) = rho 48587 - rho 48588 - rho 48589 := ha5
      _ = (-1) * rho 48588 - rho 48589 + (seg52In1AccY67 rho - seg52In1AccX67 rho * (-1)) *
          (rho 48585 + rho 48586) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX68 rho = seg52In1AccX67 rho - Bool.toZMod bit * (seg52In1AccX67 rho - rho 48591) := by
    have hd : rho 48593 = Bool.toZMod bit * (rho 48591 - seg52In1AccX67 rho) := by
      rw [← hbit]
      unfold seg52In1AccX67
      linear_combination -r4203
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY68 rho = seg52In1AccY67 rho - Bool.toZMod bit * (seg52In1AccY67 rho - rho 48592) := by
    have hd : rho 48594 = Bool.toZMod bit * (rho 48592 - seg52In1AccY67 rho) := by
      rw [← hbit]
      unfold seg52In1AccY67
      linear_combination -r4204
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48585 * rho 48586 = rho 48595 := by linear_combination r4205
  have hd1 : rho 48585 * rho 48585 = rho 48596 := by linear_combination r4206
  have hd2 : rho 48586 * rho 48586 = rho 48597 := by linear_combination r4207
  have hd3 : rho 48598 * (rho 48586 * rho 48586 + rho 48585 * rho 48585 * (-1)) =
      2 * (rho 48585 * rho 48586) := by
    rw [hd0, hd1, hd2]
    linear_combination r4208
  have hd4 : rho 48599 * (2 - (rho 48586 * rho 48586 + rho 48585 * rho 48585 * (-1))) =
      rho 48586 * rho 48586 - rho 48585 * rho 48585 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4209
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX67 rho, seg52In1AccY67 rho⟩ ⟨rho 48585, rho 48586⟩
    ⟨rho 48591, rho 48592⟩ ⟨seg52In1AccX68 rho, seg52In1AccY68 rho⟩ ⟨rho 48598, rho 48599⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows68 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4210 rho ∧ Seg52.relationRow4211 rho ∧ Seg52.relationRow4212 rho ∧ Seg52.relationRow4213 rho ∧ Seg52.relationRow4214 rho ∧ Seg52.relationRow4215 rho ∧ Seg52.relationRow4216 rho ∧ Seg52.relationRow4217 rho ∧ Seg52.relationRow4218 rho ∧ Seg52.relationRow4219 rho ∧ Seg52.relationRow4220 rho ∧ Seg52.relationRow4221 rho ∧ Seg52.relationRow4222 rho := by
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

  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4210, r4211, r4212, r4213, r4214, r4215, r4216, r4217, r4218, r4219, r4220, r4221, r4222, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4210, r4211, r4212, r4213, r4214, r4215, r4216, r4217, r4218, r4219, r4220, r4221, r4222⟩

theorem seg52In1_rung68 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47662 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX68 rho, seg52In1AccY68 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48598, rho 48599⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX68 rho, seg52In1AccY68 rho⟩ ⟨rho 48598, rho 48599⟩
        ⟨seg52In1AccX69 rho, seg52In1AccY69 rho⟩ ⟨rho 48611, rho 48612⟩ := by
  obtain ⟨r4210, r4211, r4212, r4213, r4214, r4215, r4216, r4217, r4218, r4219, r4220, r4221, r4222⟩ := seg52In1_rows68 rho h
  unfold Seg52.relationRow4210 at r4210

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4210

  unfold Seg52.relationRow4211 at r4211

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4211

  unfold Seg52.relationRow4212 at r4212

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4212

  unfold Seg52.relationRow4213 at r4213

  unfold Seg52.relationRow4214 at r4214

  unfold Seg52.relationRow4215 at r4215

  unfold Seg52.relationRow4216 at r4216

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4216

  unfold Seg52.relationRow4217 at r4217

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4217

  unfold Seg52.relationRow4218 at r4218

  unfold Seg52.relationRow4219 at r4219

  unfold Seg52.relationRow4220 at r4220

  unfold Seg52.relationRow4221 at r4221

  unfold Seg52.relationRow4222 at r4222

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX69 rho = seg52In1AccX68 rho + rho 48606 := by
    unfold seg52In1AccX69 seg52In1AccX68
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 68]

    ring

  have hnexty : seg52In1AccY69 rho = seg52In1AccY68 rho + rho 48607 := by
    unfold seg52In1AccY69 seg52In1AccY68
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 68]

    ring

  have ha0 : (rho 48598 + rho 48599) * (seg52In1AccX68 rho + seg52In1AccY68 rho) = rho 48600 := by
    unfold seg52In1AccX68 seg52In1AccY68
    linear_combination r4210
  have ha1 : rho 48599 * seg52In1AccX68 rho = rho 48601 := by
    unfold seg52In1AccX68
    linear_combination r4211
  have ha2 : rho 48598 * seg52In1AccY68 rho = rho 48602 := by
    unfold seg52In1AccY68
    linear_combination r4212
  have ha3 : 3021 * rho 48601 * rho 48602 = rho 48603 := by
    linear_combination r4213
  have ha4 : rho 48604 * (1 + rho 48603) = rho 48601 + rho 48602 := by
    linear_combination r4214
  have ha5 : rho 48605 * (1 - rho 48603) = rho 48600 - rho 48601 - rho 48602 := by
    linear_combination r4215
  have haddx :
      rho 48604 * (1 + 3021 * (rho 48599 * seg52In1AccX68 rho) * (rho 48598 * seg52In1AccY68 rho)) =
        rho 48599 * seg52In1AccX68 rho + rho 48598 * seg52In1AccY68 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48605 * (1 - 3021 * (rho 48599 * seg52In1AccX68 rho) * (rho 48598 * seg52In1AccY68 rho)) =
        (-1) * (rho 48599 * seg52In1AccX68 rho) - rho 48598 * seg52In1AccY68 rho +
          (seg52In1AccY68 rho - seg52In1AccX68 rho * (-1)) * (rho 48598 + rho 48599) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48605 * (1 - rho 48603) = rho 48600 - rho 48601 - rho 48602 := ha5
      _ = (-1) * rho 48601 - rho 48602 + (seg52In1AccY68 rho - seg52In1AccX68 rho * (-1)) *
          (rho 48598 + rho 48599) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX69 rho = seg52In1AccX68 rho - Bool.toZMod bit * (seg52In1AccX68 rho - rho 48604) := by
    have hd : rho 48606 = Bool.toZMod bit * (rho 48604 - seg52In1AccX68 rho) := by
      rw [← hbit]
      unfold seg52In1AccX68
      linear_combination -r4216
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY69 rho = seg52In1AccY68 rho - Bool.toZMod bit * (seg52In1AccY68 rho - rho 48605) := by
    have hd : rho 48607 = Bool.toZMod bit * (rho 48605 - seg52In1AccY68 rho) := by
      rw [← hbit]
      unfold seg52In1AccY68
      linear_combination -r4217
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48598 * rho 48599 = rho 48608 := by linear_combination r4218
  have hd1 : rho 48598 * rho 48598 = rho 48609 := by linear_combination r4219
  have hd2 : rho 48599 * rho 48599 = rho 48610 := by linear_combination r4220
  have hd3 : rho 48611 * (rho 48599 * rho 48599 + rho 48598 * rho 48598 * (-1)) =
      2 * (rho 48598 * rho 48599) := by
    rw [hd0, hd1, hd2]
    linear_combination r4221
  have hd4 : rho 48612 * (2 - (rho 48599 * rho 48599 + rho 48598 * rho 48598 * (-1))) =
      rho 48599 * rho 48599 - rho 48598 * rho 48598 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4222
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX68 rho, seg52In1AccY68 rho⟩ ⟨rho 48598, rho 48599⟩
    ⟨rho 48604, rho 48605⟩ ⟨seg52In1AccX69 rho, seg52In1AccY69 rho⟩ ⟨rho 48611, rho 48612⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows69 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4223 rho ∧ Seg52.relationRow4224 rho ∧ Seg52.relationRow4225 rho ∧ Seg52.relationRow4226 rho ∧ Seg52.relationRow4227 rho ∧ Seg52.relationRow4228 rho ∧ Seg52.relationRow4229 rho ∧ Seg52.relationRow4230 rho ∧ Seg52.relationRow4231 rho ∧ Seg52.relationRow4232 rho ∧ Seg52.relationRow4233 rho ∧ Seg52.relationRow4234 rho ∧ Seg52.relationRow4235 rho := by
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

  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4223, r4224, r4225, r4226, r4227, r4228, r4229, r4230, r4231, r4232, r4233, r4234, r4235, _, _, _, _⟩

  exact ⟨r4223, r4224, r4225, r4226, r4227, r4228, r4229, r4230, r4231, r4232, r4233, r4234, r4235⟩

theorem seg52In1_rung69 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47663 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX69 rho, seg52In1AccY69 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48611, rho 48612⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX69 rho, seg52In1AccY69 rho⟩ ⟨rho 48611, rho 48612⟩
        ⟨seg52In1AccX70 rho, seg52In1AccY70 rho⟩ ⟨rho 48624, rho 48625⟩ := by
  obtain ⟨r4223, r4224, r4225, r4226, r4227, r4228, r4229, r4230, r4231, r4232, r4233, r4234, r4235⟩ := seg52In1_rows69 rho h
  unfold Seg52.relationRow4223 at r4223

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4223

  unfold Seg52.relationRow4224 at r4224

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4224

  unfold Seg52.relationRow4225 at r4225

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4225

  unfold Seg52.relationRow4226 at r4226

  unfold Seg52.relationRow4227 at r4227

  unfold Seg52.relationRow4228 at r4228

  unfold Seg52.relationRow4229 at r4229

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4229

  unfold Seg52.relationRow4230 at r4230

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4230

  unfold Seg52.relationRow4231 at r4231

  unfold Seg52.relationRow4232 at r4232

  unfold Seg52.relationRow4233 at r4233

  unfold Seg52.relationRow4234 at r4234

  unfold Seg52.relationRow4235 at r4235

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX70 rho = seg52In1AccX69 rho + rho 48619 := by
    unfold seg52In1AccX70 seg52In1AccX69
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 69]

    ring

  have hnexty : seg52In1AccY70 rho = seg52In1AccY69 rho + rho 48620 := by
    unfold seg52In1AccY70 seg52In1AccY69
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 69]

    ring

  have ha0 : (rho 48611 + rho 48612) * (seg52In1AccX69 rho + seg52In1AccY69 rho) = rho 48613 := by
    unfold seg52In1AccX69 seg52In1AccY69
    linear_combination r4223
  have ha1 : rho 48612 * seg52In1AccX69 rho = rho 48614 := by
    unfold seg52In1AccX69
    linear_combination r4224
  have ha2 : rho 48611 * seg52In1AccY69 rho = rho 48615 := by
    unfold seg52In1AccY69
    linear_combination r4225
  have ha3 : 3021 * rho 48614 * rho 48615 = rho 48616 := by
    linear_combination r4226
  have ha4 : rho 48617 * (1 + rho 48616) = rho 48614 + rho 48615 := by
    linear_combination r4227
  have ha5 : rho 48618 * (1 - rho 48616) = rho 48613 - rho 48614 - rho 48615 := by
    linear_combination r4228
  have haddx :
      rho 48617 * (1 + 3021 * (rho 48612 * seg52In1AccX69 rho) * (rho 48611 * seg52In1AccY69 rho)) =
        rho 48612 * seg52In1AccX69 rho + rho 48611 * seg52In1AccY69 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48618 * (1 - 3021 * (rho 48612 * seg52In1AccX69 rho) * (rho 48611 * seg52In1AccY69 rho)) =
        (-1) * (rho 48612 * seg52In1AccX69 rho) - rho 48611 * seg52In1AccY69 rho +
          (seg52In1AccY69 rho - seg52In1AccX69 rho * (-1)) * (rho 48611 + rho 48612) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48618 * (1 - rho 48616) = rho 48613 - rho 48614 - rho 48615 := ha5
      _ = (-1) * rho 48614 - rho 48615 + (seg52In1AccY69 rho - seg52In1AccX69 rho * (-1)) *
          (rho 48611 + rho 48612) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX70 rho = seg52In1AccX69 rho - Bool.toZMod bit * (seg52In1AccX69 rho - rho 48617) := by
    have hd : rho 48619 = Bool.toZMod bit * (rho 48617 - seg52In1AccX69 rho) := by
      rw [← hbit]
      unfold seg52In1AccX69
      linear_combination -r4229
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY70 rho = seg52In1AccY69 rho - Bool.toZMod bit * (seg52In1AccY69 rho - rho 48618) := by
    have hd : rho 48620 = Bool.toZMod bit * (rho 48618 - seg52In1AccY69 rho) := by
      rw [← hbit]
      unfold seg52In1AccY69
      linear_combination -r4230
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48611 * rho 48612 = rho 48621 := by linear_combination r4231
  have hd1 : rho 48611 * rho 48611 = rho 48622 := by linear_combination r4232
  have hd2 : rho 48612 * rho 48612 = rho 48623 := by linear_combination r4233
  have hd3 : rho 48624 * (rho 48612 * rho 48612 + rho 48611 * rho 48611 * (-1)) =
      2 * (rho 48611 * rho 48612) := by
    rw [hd0, hd1, hd2]
    linear_combination r4234
  have hd4 : rho 48625 * (2 - (rho 48612 * rho 48612 + rho 48611 * rho 48611 * (-1))) =
      rho 48612 * rho 48612 - rho 48611 * rho 48611 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4235
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX69 rho, seg52In1AccY69 rho⟩ ⟨rho 48611, rho 48612⟩
    ⟨rho 48617, rho 48618⟩ ⟨seg52In1AccX70 rho, seg52In1AccY70 rho⟩ ⟨rho 48624, rho 48625⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows70 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4236 rho ∧ Seg52.relationRow4237 rho ∧ Seg52.relationRow4238 rho ∧ Seg52.relationRow4239 rho ∧ Seg52.relationRow4240 rho ∧ Seg52.relationRow4241 rho ∧ Seg52.relationRow4242 rho ∧ Seg52.relationRow4243 rho ∧ Seg52.relationRow4244 rho ∧ Seg52.relationRow4245 rho ∧ Seg52.relationRow4246 rho ∧ Seg52.relationRow4247 rho ∧ Seg52.relationRow4248 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart52 at p52

  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4236, r4237, r4238, r4239⟩

  unfold Seg52.relationPart53 at p53

  rcases p53 with ⟨r4240, r4241, r4242, r4243, r4244, r4245, r4246, r4247, r4248, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4236, r4237, r4238, r4239, r4240, r4241, r4242, r4243, r4244, r4245, r4246, r4247, r4248⟩

theorem seg52In1_rung70 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47664 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX70 rho, seg52In1AccY70 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48624, rho 48625⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX70 rho, seg52In1AccY70 rho⟩ ⟨rho 48624, rho 48625⟩
        ⟨seg52In1AccX71 rho, seg52In1AccY71 rho⟩ ⟨rho 48637, rho 48638⟩ := by
  obtain ⟨r4236, r4237, r4238, r4239, r4240, r4241, r4242, r4243, r4244, r4245, r4246, r4247, r4248⟩ := seg52In1_rows70 rho h
  unfold Seg52.relationRow4236 at r4236

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4236

  unfold Seg52.relationRow4237 at r4237

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4237

  unfold Seg52.relationRow4238 at r4238

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4238

  unfold Seg52.relationRow4239 at r4239

  unfold Seg52.relationRow4240 at r4240

  unfold Seg52.relationRow4241 at r4241

  unfold Seg52.relationRow4242 at r4242

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4242

  unfold Seg52.relationRow4243 at r4243

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4243

  unfold Seg52.relationRow4244 at r4244

  unfold Seg52.relationRow4245 at r4245

  unfold Seg52.relationRow4246 at r4246

  unfold Seg52.relationRow4247 at r4247

  unfold Seg52.relationRow4248 at r4248

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX71 rho = seg52In1AccX70 rho + rho 48632 := by
    unfold seg52In1AccX71 seg52In1AccX70
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 70]

    ring

  have hnexty : seg52In1AccY71 rho = seg52In1AccY70 rho + rho 48633 := by
    unfold seg52In1AccY71 seg52In1AccY70
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 70]

    ring

  have ha0 : (rho 48624 + rho 48625) * (seg52In1AccX70 rho + seg52In1AccY70 rho) = rho 48626 := by
    unfold seg52In1AccX70 seg52In1AccY70
    linear_combination r4236
  have ha1 : rho 48625 * seg52In1AccX70 rho = rho 48627 := by
    unfold seg52In1AccX70
    linear_combination r4237
  have ha2 : rho 48624 * seg52In1AccY70 rho = rho 48628 := by
    unfold seg52In1AccY70
    linear_combination r4238
  have ha3 : 3021 * rho 48627 * rho 48628 = rho 48629 := by
    linear_combination r4239
  have ha4 : rho 48630 * (1 + rho 48629) = rho 48627 + rho 48628 := by
    linear_combination r4240
  have ha5 : rho 48631 * (1 - rho 48629) = rho 48626 - rho 48627 - rho 48628 := by
    linear_combination r4241
  have haddx :
      rho 48630 * (1 + 3021 * (rho 48625 * seg52In1AccX70 rho) * (rho 48624 * seg52In1AccY70 rho)) =
        rho 48625 * seg52In1AccX70 rho + rho 48624 * seg52In1AccY70 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48631 * (1 - 3021 * (rho 48625 * seg52In1AccX70 rho) * (rho 48624 * seg52In1AccY70 rho)) =
        (-1) * (rho 48625 * seg52In1AccX70 rho) - rho 48624 * seg52In1AccY70 rho +
          (seg52In1AccY70 rho - seg52In1AccX70 rho * (-1)) * (rho 48624 + rho 48625) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48631 * (1 - rho 48629) = rho 48626 - rho 48627 - rho 48628 := ha5
      _ = (-1) * rho 48627 - rho 48628 + (seg52In1AccY70 rho - seg52In1AccX70 rho * (-1)) *
          (rho 48624 + rho 48625) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX71 rho = seg52In1AccX70 rho - Bool.toZMod bit * (seg52In1AccX70 rho - rho 48630) := by
    have hd : rho 48632 = Bool.toZMod bit * (rho 48630 - seg52In1AccX70 rho) := by
      rw [← hbit]
      unfold seg52In1AccX70
      linear_combination -r4242
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY71 rho = seg52In1AccY70 rho - Bool.toZMod bit * (seg52In1AccY70 rho - rho 48631) := by
    have hd : rho 48633 = Bool.toZMod bit * (rho 48631 - seg52In1AccY70 rho) := by
      rw [← hbit]
      unfold seg52In1AccY70
      linear_combination -r4243
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48624 * rho 48625 = rho 48634 := by linear_combination r4244
  have hd1 : rho 48624 * rho 48624 = rho 48635 := by linear_combination r4245
  have hd2 : rho 48625 * rho 48625 = rho 48636 := by linear_combination r4246
  have hd3 : rho 48637 * (rho 48625 * rho 48625 + rho 48624 * rho 48624 * (-1)) =
      2 * (rho 48624 * rho 48625) := by
    rw [hd0, hd1, hd2]
    linear_combination r4247
  have hd4 : rho 48638 * (2 - (rho 48625 * rho 48625 + rho 48624 * rho 48624 * (-1))) =
      rho 48625 * rho 48625 - rho 48624 * rho 48624 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4248
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX70 rho, seg52In1AccY70 rho⟩ ⟨rho 48624, rho 48625⟩
    ⟨rho 48630, rho 48631⟩ ⟨seg52In1AccX71 rho, seg52In1AccY71 rho⟩ ⟨rho 48637, rho 48638⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows71 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4249 rho ∧ Seg52.relationRow4250 rho ∧ Seg52.relationRow4251 rho ∧ Seg52.relationRow4252 rho ∧ Seg52.relationRow4253 rho ∧ Seg52.relationRow4254 rho ∧ Seg52.relationRow4255 rho ∧ Seg52.relationRow4256 rho ∧ Seg52.relationRow4257 rho ∧ Seg52.relationRow4258 rho ∧ Seg52.relationRow4259 rho ∧ Seg52.relationRow4260 rho ∧ Seg52.relationRow4261 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart53 at p53

  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, r4249, r4250, r4251, r4252, r4253, r4254, r4255, r4256, r4257, r4258, r4259, r4260, r4261, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4249, r4250, r4251, r4252, r4253, r4254, r4255, r4256, r4257, r4258, r4259, r4260, r4261⟩

theorem seg52In1_rung71 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47665 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX71 rho, seg52In1AccY71 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48637, rho 48638⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX71 rho, seg52In1AccY71 rho⟩ ⟨rho 48637, rho 48638⟩
        ⟨seg52In1AccX72 rho, seg52In1AccY72 rho⟩ ⟨rho 48650, rho 48651⟩ := by
  obtain ⟨r4249, r4250, r4251, r4252, r4253, r4254, r4255, r4256, r4257, r4258, r4259, r4260, r4261⟩ := seg52In1_rows71 rho h
  unfold Seg52.relationRow4249 at r4249

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4249

  unfold Seg52.relationRow4250 at r4250

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4250

  unfold Seg52.relationRow4251 at r4251

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4251

  unfold Seg52.relationRow4252 at r4252

  unfold Seg52.relationRow4253 at r4253

  unfold Seg52.relationRow4254 at r4254

  unfold Seg52.relationRow4255 at r4255

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4255

  unfold Seg52.relationRow4256 at r4256

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4256

  unfold Seg52.relationRow4257 at r4257

  unfold Seg52.relationRow4258 at r4258

  unfold Seg52.relationRow4259 at r4259

  unfold Seg52.relationRow4260 at r4260

  unfold Seg52.relationRow4261 at r4261

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX72 rho = seg52In1AccX71 rho + rho 48645 := by
    unfold seg52In1AccX72 seg52In1AccX71
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 71]

    ring

  have hnexty : seg52In1AccY72 rho = seg52In1AccY71 rho + rho 48646 := by
    unfold seg52In1AccY72 seg52In1AccY71
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 71]

    ring

  have ha0 : (rho 48637 + rho 48638) * (seg52In1AccX71 rho + seg52In1AccY71 rho) = rho 48639 := by
    unfold seg52In1AccX71 seg52In1AccY71
    linear_combination r4249
  have ha1 : rho 48638 * seg52In1AccX71 rho = rho 48640 := by
    unfold seg52In1AccX71
    linear_combination r4250
  have ha2 : rho 48637 * seg52In1AccY71 rho = rho 48641 := by
    unfold seg52In1AccY71
    linear_combination r4251
  have ha3 : 3021 * rho 48640 * rho 48641 = rho 48642 := by
    linear_combination r4252
  have ha4 : rho 48643 * (1 + rho 48642) = rho 48640 + rho 48641 := by
    linear_combination r4253
  have ha5 : rho 48644 * (1 - rho 48642) = rho 48639 - rho 48640 - rho 48641 := by
    linear_combination r4254
  have haddx :
      rho 48643 * (1 + 3021 * (rho 48638 * seg52In1AccX71 rho) * (rho 48637 * seg52In1AccY71 rho)) =
        rho 48638 * seg52In1AccX71 rho + rho 48637 * seg52In1AccY71 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48644 * (1 - 3021 * (rho 48638 * seg52In1AccX71 rho) * (rho 48637 * seg52In1AccY71 rho)) =
        (-1) * (rho 48638 * seg52In1AccX71 rho) - rho 48637 * seg52In1AccY71 rho +
          (seg52In1AccY71 rho - seg52In1AccX71 rho * (-1)) * (rho 48637 + rho 48638) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48644 * (1 - rho 48642) = rho 48639 - rho 48640 - rho 48641 := ha5
      _ = (-1) * rho 48640 - rho 48641 + (seg52In1AccY71 rho - seg52In1AccX71 rho * (-1)) *
          (rho 48637 + rho 48638) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX72 rho = seg52In1AccX71 rho - Bool.toZMod bit * (seg52In1AccX71 rho - rho 48643) := by
    have hd : rho 48645 = Bool.toZMod bit * (rho 48643 - seg52In1AccX71 rho) := by
      rw [← hbit]
      unfold seg52In1AccX71
      linear_combination -r4255
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY72 rho = seg52In1AccY71 rho - Bool.toZMod bit * (seg52In1AccY71 rho - rho 48644) := by
    have hd : rho 48646 = Bool.toZMod bit * (rho 48644 - seg52In1AccY71 rho) := by
      rw [← hbit]
      unfold seg52In1AccY71
      linear_combination -r4256
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48637 * rho 48638 = rho 48647 := by linear_combination r4257
  have hd1 : rho 48637 * rho 48637 = rho 48648 := by linear_combination r4258
  have hd2 : rho 48638 * rho 48638 = rho 48649 := by linear_combination r4259
  have hd3 : rho 48650 * (rho 48638 * rho 48638 + rho 48637 * rho 48637 * (-1)) =
      2 * (rho 48637 * rho 48638) := by
    rw [hd0, hd1, hd2]
    linear_combination r4260
  have hd4 : rho 48651 * (2 - (rho 48638 * rho 48638 + rho 48637 * rho 48637 * (-1))) =
      rho 48638 * rho 48638 - rho 48637 * rho 48637 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4261
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX71 rho, seg52In1AccY71 rho⟩ ⟨rho 48637, rho 48638⟩
    ⟨rho 48643, rho 48644⟩ ⟨seg52In1AccX72 rho, seg52In1AccY72 rho⟩ ⟨rho 48650, rho 48651⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows72 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4262 rho ∧ Seg52.relationRow4263 rho ∧ Seg52.relationRow4264 rho ∧ Seg52.relationRow4265 rho ∧ Seg52.relationRow4266 rho ∧ Seg52.relationRow4267 rho ∧ Seg52.relationRow4268 rho ∧ Seg52.relationRow4269 rho ∧ Seg52.relationRow4270 rho ∧ Seg52.relationRow4271 rho ∧ Seg52.relationRow4272 rho ∧ Seg52.relationRow4273 rho ∧ Seg52.relationRow4274 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart53 at p53

  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4262, r4263, r4264, r4265, r4266, r4267, r4268, r4269, r4270, r4271, r4272, r4273, r4274, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4262, r4263, r4264, r4265, r4266, r4267, r4268, r4269, r4270, r4271, r4272, r4273, r4274⟩

theorem seg52In1_rung72 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47666 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX72 rho, seg52In1AccY72 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48650, rho 48651⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX72 rho, seg52In1AccY72 rho⟩ ⟨rho 48650, rho 48651⟩
        ⟨seg52In1AccX73 rho, seg52In1AccY73 rho⟩ ⟨rho 48663, rho 48664⟩ := by
  obtain ⟨r4262, r4263, r4264, r4265, r4266, r4267, r4268, r4269, r4270, r4271, r4272, r4273, r4274⟩ := seg52In1_rows72 rho h
  unfold Seg52.relationRow4262 at r4262

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4262

  unfold Seg52.relationRow4263 at r4263

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4263

  unfold Seg52.relationRow4264 at r4264

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4264

  unfold Seg52.relationRow4265 at r4265

  unfold Seg52.relationRow4266 at r4266

  unfold Seg52.relationRow4267 at r4267

  unfold Seg52.relationRow4268 at r4268

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4268

  unfold Seg52.relationRow4269 at r4269

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4269

  unfold Seg52.relationRow4270 at r4270

  unfold Seg52.relationRow4271 at r4271

  unfold Seg52.relationRow4272 at r4272

  unfold Seg52.relationRow4273 at r4273

  unfold Seg52.relationRow4274 at r4274

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX73 rho = seg52In1AccX72 rho + rho 48658 := by
    unfold seg52In1AccX73 seg52In1AccX72
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 72]

    ring

  have hnexty : seg52In1AccY73 rho = seg52In1AccY72 rho + rho 48659 := by
    unfold seg52In1AccY73 seg52In1AccY72
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 72]

    ring

  have ha0 : (rho 48650 + rho 48651) * (seg52In1AccX72 rho + seg52In1AccY72 rho) = rho 48652 := by
    unfold seg52In1AccX72 seg52In1AccY72
    linear_combination r4262
  have ha1 : rho 48651 * seg52In1AccX72 rho = rho 48653 := by
    unfold seg52In1AccX72
    linear_combination r4263
  have ha2 : rho 48650 * seg52In1AccY72 rho = rho 48654 := by
    unfold seg52In1AccY72
    linear_combination r4264
  have ha3 : 3021 * rho 48653 * rho 48654 = rho 48655 := by
    linear_combination r4265
  have ha4 : rho 48656 * (1 + rho 48655) = rho 48653 + rho 48654 := by
    linear_combination r4266
  have ha5 : rho 48657 * (1 - rho 48655) = rho 48652 - rho 48653 - rho 48654 := by
    linear_combination r4267
  have haddx :
      rho 48656 * (1 + 3021 * (rho 48651 * seg52In1AccX72 rho) * (rho 48650 * seg52In1AccY72 rho)) =
        rho 48651 * seg52In1AccX72 rho + rho 48650 * seg52In1AccY72 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48657 * (1 - 3021 * (rho 48651 * seg52In1AccX72 rho) * (rho 48650 * seg52In1AccY72 rho)) =
        (-1) * (rho 48651 * seg52In1AccX72 rho) - rho 48650 * seg52In1AccY72 rho +
          (seg52In1AccY72 rho - seg52In1AccX72 rho * (-1)) * (rho 48650 + rho 48651) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48657 * (1 - rho 48655) = rho 48652 - rho 48653 - rho 48654 := ha5
      _ = (-1) * rho 48653 - rho 48654 + (seg52In1AccY72 rho - seg52In1AccX72 rho * (-1)) *
          (rho 48650 + rho 48651) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX73 rho = seg52In1AccX72 rho - Bool.toZMod bit * (seg52In1AccX72 rho - rho 48656) := by
    have hd : rho 48658 = Bool.toZMod bit * (rho 48656 - seg52In1AccX72 rho) := by
      rw [← hbit]
      unfold seg52In1AccX72
      linear_combination -r4268
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY73 rho = seg52In1AccY72 rho - Bool.toZMod bit * (seg52In1AccY72 rho - rho 48657) := by
    have hd : rho 48659 = Bool.toZMod bit * (rho 48657 - seg52In1AccY72 rho) := by
      rw [← hbit]
      unfold seg52In1AccY72
      linear_combination -r4269
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48650 * rho 48651 = rho 48660 := by linear_combination r4270
  have hd1 : rho 48650 * rho 48650 = rho 48661 := by linear_combination r4271
  have hd2 : rho 48651 * rho 48651 = rho 48662 := by linear_combination r4272
  have hd3 : rho 48663 * (rho 48651 * rho 48651 + rho 48650 * rho 48650 * (-1)) =
      2 * (rho 48650 * rho 48651) := by
    rw [hd0, hd1, hd2]
    linear_combination r4273
  have hd4 : rho 48664 * (2 - (rho 48651 * rho 48651 + rho 48650 * rho 48650 * (-1))) =
      rho 48651 * rho 48651 - rho 48650 * rho 48650 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4274
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX72 rho, seg52In1AccY72 rho⟩ ⟨rho 48650, rho 48651⟩
    ⟨rho 48656, rho 48657⟩ ⟨seg52In1AccX73 rho, seg52In1AccY73 rho⟩ ⟨rho 48663, rho 48664⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows73 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4275 rho ∧ Seg52.relationRow4276 rho ∧ Seg52.relationRow4277 rho ∧ Seg52.relationRow4278 rho ∧ Seg52.relationRow4279 rho ∧ Seg52.relationRow4280 rho ∧ Seg52.relationRow4281 rho ∧ Seg52.relationRow4282 rho ∧ Seg52.relationRow4283 rho ∧ Seg52.relationRow4284 rho ∧ Seg52.relationRow4285 rho ∧ Seg52.relationRow4286 rho ∧ Seg52.relationRow4287 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart53 at p53

  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4275, r4276, r4277, r4278, r4279, r4280, r4281, r4282, r4283, r4284, r4285, r4286, r4287, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4275, r4276, r4277, r4278, r4279, r4280, r4281, r4282, r4283, r4284, r4285, r4286, r4287⟩

theorem seg52In1_rung73 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47667 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX73 rho, seg52In1AccY73 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48663, rho 48664⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX73 rho, seg52In1AccY73 rho⟩ ⟨rho 48663, rho 48664⟩
        ⟨seg52In1AccX74 rho, seg52In1AccY74 rho⟩ ⟨rho 48676, rho 48677⟩ := by
  obtain ⟨r4275, r4276, r4277, r4278, r4279, r4280, r4281, r4282, r4283, r4284, r4285, r4286, r4287⟩ := seg52In1_rows73 rho h
  unfold Seg52.relationRow4275 at r4275

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4275

  unfold Seg52.relationRow4276 at r4276

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4276

  unfold Seg52.relationRow4277 at r4277

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4277

  unfold Seg52.relationRow4278 at r4278

  unfold Seg52.relationRow4279 at r4279

  unfold Seg52.relationRow4280 at r4280

  unfold Seg52.relationRow4281 at r4281

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4281

  unfold Seg52.relationRow4282 at r4282

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4282

  unfold Seg52.relationRow4283 at r4283

  unfold Seg52.relationRow4284 at r4284

  unfold Seg52.relationRow4285 at r4285

  unfold Seg52.relationRow4286 at r4286

  unfold Seg52.relationRow4287 at r4287

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX74 rho = seg52In1AccX73 rho + rho 48671 := by
    unfold seg52In1AccX74 seg52In1AccX73
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 73]

    ring

  have hnexty : seg52In1AccY74 rho = seg52In1AccY73 rho + rho 48672 := by
    unfold seg52In1AccY74 seg52In1AccY73
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 73]

    ring

  have ha0 : (rho 48663 + rho 48664) * (seg52In1AccX73 rho + seg52In1AccY73 rho) = rho 48665 := by
    unfold seg52In1AccX73 seg52In1AccY73
    linear_combination r4275
  have ha1 : rho 48664 * seg52In1AccX73 rho = rho 48666 := by
    unfold seg52In1AccX73
    linear_combination r4276
  have ha2 : rho 48663 * seg52In1AccY73 rho = rho 48667 := by
    unfold seg52In1AccY73
    linear_combination r4277
  have ha3 : 3021 * rho 48666 * rho 48667 = rho 48668 := by
    linear_combination r4278
  have ha4 : rho 48669 * (1 + rho 48668) = rho 48666 + rho 48667 := by
    linear_combination r4279
  have ha5 : rho 48670 * (1 - rho 48668) = rho 48665 - rho 48666 - rho 48667 := by
    linear_combination r4280
  have haddx :
      rho 48669 * (1 + 3021 * (rho 48664 * seg52In1AccX73 rho) * (rho 48663 * seg52In1AccY73 rho)) =
        rho 48664 * seg52In1AccX73 rho + rho 48663 * seg52In1AccY73 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48670 * (1 - 3021 * (rho 48664 * seg52In1AccX73 rho) * (rho 48663 * seg52In1AccY73 rho)) =
        (-1) * (rho 48664 * seg52In1AccX73 rho) - rho 48663 * seg52In1AccY73 rho +
          (seg52In1AccY73 rho - seg52In1AccX73 rho * (-1)) * (rho 48663 + rho 48664) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48670 * (1 - rho 48668) = rho 48665 - rho 48666 - rho 48667 := ha5
      _ = (-1) * rho 48666 - rho 48667 + (seg52In1AccY73 rho - seg52In1AccX73 rho * (-1)) *
          (rho 48663 + rho 48664) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX74 rho = seg52In1AccX73 rho - Bool.toZMod bit * (seg52In1AccX73 rho - rho 48669) := by
    have hd : rho 48671 = Bool.toZMod bit * (rho 48669 - seg52In1AccX73 rho) := by
      rw [← hbit]
      unfold seg52In1AccX73
      linear_combination -r4281
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY74 rho = seg52In1AccY73 rho - Bool.toZMod bit * (seg52In1AccY73 rho - rho 48670) := by
    have hd : rho 48672 = Bool.toZMod bit * (rho 48670 - seg52In1AccY73 rho) := by
      rw [← hbit]
      unfold seg52In1AccY73
      linear_combination -r4282
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48663 * rho 48664 = rho 48673 := by linear_combination r4283
  have hd1 : rho 48663 * rho 48663 = rho 48674 := by linear_combination r4284
  have hd2 : rho 48664 * rho 48664 = rho 48675 := by linear_combination r4285
  have hd3 : rho 48676 * (rho 48664 * rho 48664 + rho 48663 * rho 48663 * (-1)) =
      2 * (rho 48663 * rho 48664) := by
    rw [hd0, hd1, hd2]
    linear_combination r4286
  have hd4 : rho 48677 * (2 - (rho 48664 * rho 48664 + rho 48663 * rho 48663 * (-1))) =
      rho 48664 * rho 48664 - rho 48663 * rho 48663 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4287
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX73 rho, seg52In1AccY73 rho⟩ ⟨rho 48663, rho 48664⟩
    ⟨rho 48669, rho 48670⟩ ⟨seg52In1AccX74 rho, seg52In1AccY74 rho⟩ ⟨rho 48676, rho 48677⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows74 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4288 rho ∧ Seg52.relationRow4289 rho ∧ Seg52.relationRow4290 rho ∧ Seg52.relationRow4291 rho ∧ Seg52.relationRow4292 rho ∧ Seg52.relationRow4293 rho ∧ Seg52.relationRow4294 rho ∧ Seg52.relationRow4295 rho ∧ Seg52.relationRow4296 rho ∧ Seg52.relationRow4297 rho ∧ Seg52.relationRow4298 rho ∧ Seg52.relationRow4299 rho ∧ Seg52.relationRow4300 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart53 at p53

  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4288, r4289, r4290, r4291, r4292, r4293, r4294, r4295, r4296, r4297, r4298, r4299, r4300, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4288, r4289, r4290, r4291, r4292, r4293, r4294, r4295, r4296, r4297, r4298, r4299, r4300⟩

theorem seg52In1_rung74 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47668 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX74 rho, seg52In1AccY74 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48676, rho 48677⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX74 rho, seg52In1AccY74 rho⟩ ⟨rho 48676, rho 48677⟩
        ⟨seg52In1AccX75 rho, seg52In1AccY75 rho⟩ ⟨rho 48689, rho 48690⟩ := by
  obtain ⟨r4288, r4289, r4290, r4291, r4292, r4293, r4294, r4295, r4296, r4297, r4298, r4299, r4300⟩ := seg52In1_rows74 rho h
  unfold Seg52.relationRow4288 at r4288

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4288

  unfold Seg52.relationRow4289 at r4289

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4289

  unfold Seg52.relationRow4290 at r4290

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4290

  unfold Seg52.relationRow4291 at r4291

  unfold Seg52.relationRow4292 at r4292

  unfold Seg52.relationRow4293 at r4293

  unfold Seg52.relationRow4294 at r4294

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4294

  unfold Seg52.relationRow4295 at r4295

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4295

  unfold Seg52.relationRow4296 at r4296

  unfold Seg52.relationRow4297 at r4297

  unfold Seg52.relationRow4298 at r4298

  unfold Seg52.relationRow4299 at r4299

  unfold Seg52.relationRow4300 at r4300

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX75 rho = seg52In1AccX74 rho + rho 48684 := by
    unfold seg52In1AccX75 seg52In1AccX74
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 74]

    ring

  have hnexty : seg52In1AccY75 rho = seg52In1AccY74 rho + rho 48685 := by
    unfold seg52In1AccY75 seg52In1AccY74
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 74]

    ring

  have ha0 : (rho 48676 + rho 48677) * (seg52In1AccX74 rho + seg52In1AccY74 rho) = rho 48678 := by
    unfold seg52In1AccX74 seg52In1AccY74
    linear_combination r4288
  have ha1 : rho 48677 * seg52In1AccX74 rho = rho 48679 := by
    unfold seg52In1AccX74
    linear_combination r4289
  have ha2 : rho 48676 * seg52In1AccY74 rho = rho 48680 := by
    unfold seg52In1AccY74
    linear_combination r4290
  have ha3 : 3021 * rho 48679 * rho 48680 = rho 48681 := by
    linear_combination r4291
  have ha4 : rho 48682 * (1 + rho 48681) = rho 48679 + rho 48680 := by
    linear_combination r4292
  have ha5 : rho 48683 * (1 - rho 48681) = rho 48678 - rho 48679 - rho 48680 := by
    linear_combination r4293
  have haddx :
      rho 48682 * (1 + 3021 * (rho 48677 * seg52In1AccX74 rho) * (rho 48676 * seg52In1AccY74 rho)) =
        rho 48677 * seg52In1AccX74 rho + rho 48676 * seg52In1AccY74 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48683 * (1 - 3021 * (rho 48677 * seg52In1AccX74 rho) * (rho 48676 * seg52In1AccY74 rho)) =
        (-1) * (rho 48677 * seg52In1AccX74 rho) - rho 48676 * seg52In1AccY74 rho +
          (seg52In1AccY74 rho - seg52In1AccX74 rho * (-1)) * (rho 48676 + rho 48677) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48683 * (1 - rho 48681) = rho 48678 - rho 48679 - rho 48680 := ha5
      _ = (-1) * rho 48679 - rho 48680 + (seg52In1AccY74 rho - seg52In1AccX74 rho * (-1)) *
          (rho 48676 + rho 48677) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX75 rho = seg52In1AccX74 rho - Bool.toZMod bit * (seg52In1AccX74 rho - rho 48682) := by
    have hd : rho 48684 = Bool.toZMod bit * (rho 48682 - seg52In1AccX74 rho) := by
      rw [← hbit]
      unfold seg52In1AccX74
      linear_combination -r4294
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY75 rho = seg52In1AccY74 rho - Bool.toZMod bit * (seg52In1AccY74 rho - rho 48683) := by
    have hd : rho 48685 = Bool.toZMod bit * (rho 48683 - seg52In1AccY74 rho) := by
      rw [← hbit]
      unfold seg52In1AccY74
      linear_combination -r4295
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48676 * rho 48677 = rho 48686 := by linear_combination r4296
  have hd1 : rho 48676 * rho 48676 = rho 48687 := by linear_combination r4297
  have hd2 : rho 48677 * rho 48677 = rho 48688 := by linear_combination r4298
  have hd3 : rho 48689 * (rho 48677 * rho 48677 + rho 48676 * rho 48676 * (-1)) =
      2 * (rho 48676 * rho 48677) := by
    rw [hd0, hd1, hd2]
    linear_combination r4299
  have hd4 : rho 48690 * (2 - (rho 48677 * rho 48677 + rho 48676 * rho 48676 * (-1))) =
      rho 48677 * rho 48677 - rho 48676 * rho 48676 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4300
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX74 rho, seg52In1AccY74 rho⟩ ⟨rho 48676, rho 48677⟩
    ⟨rho 48682, rho 48683⟩ ⟨seg52In1AccX75 rho, seg52In1AccY75 rho⟩ ⟨rho 48689, rho 48690⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows75 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4301 rho ∧ Seg52.relationRow4302 rho ∧ Seg52.relationRow4303 rho ∧ Seg52.relationRow4304 rho ∧ Seg52.relationRow4305 rho ∧ Seg52.relationRow4306 rho ∧ Seg52.relationRow4307 rho ∧ Seg52.relationRow4308 rho ∧ Seg52.relationRow4309 rho ∧ Seg52.relationRow4310 rho ∧ Seg52.relationRow4311 rho ∧ Seg52.relationRow4312 rho ∧ Seg52.relationRow4313 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart53 at p53

  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4301, r4302, r4303, r4304, r4305, r4306, r4307, r4308, r4309, r4310, r4311, r4312, r4313, _, _, _, _, _, _⟩

  exact ⟨r4301, r4302, r4303, r4304, r4305, r4306, r4307, r4308, r4309, r4310, r4311, r4312, r4313⟩

theorem seg52In1_rung75 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47669 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX75 rho, seg52In1AccY75 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48689, rho 48690⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX75 rho, seg52In1AccY75 rho⟩ ⟨rho 48689, rho 48690⟩
        ⟨seg52In1AccX76 rho, seg52In1AccY76 rho⟩ ⟨rho 48702, rho 48703⟩ := by
  obtain ⟨r4301, r4302, r4303, r4304, r4305, r4306, r4307, r4308, r4309, r4310, r4311, r4312, r4313⟩ := seg52In1_rows75 rho h
  unfold Seg52.relationRow4301 at r4301

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4301

  unfold Seg52.relationRow4302 at r4302

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4302

  unfold Seg52.relationRow4303 at r4303

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4303

  unfold Seg52.relationRow4304 at r4304

  unfold Seg52.relationRow4305 at r4305

  unfold Seg52.relationRow4306 at r4306

  unfold Seg52.relationRow4307 at r4307

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4307

  unfold Seg52.relationRow4308 at r4308

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4308

  unfold Seg52.relationRow4309 at r4309

  unfold Seg52.relationRow4310 at r4310

  unfold Seg52.relationRow4311 at r4311

  unfold Seg52.relationRow4312 at r4312

  unfold Seg52.relationRow4313 at r4313

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX76 rho = seg52In1AccX75 rho + rho 48697 := by
    unfold seg52In1AccX76 seg52In1AccX75
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 75]

    ring

  have hnexty : seg52In1AccY76 rho = seg52In1AccY75 rho + rho 48698 := by
    unfold seg52In1AccY76 seg52In1AccY75
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 75]

    ring

  have ha0 : (rho 48689 + rho 48690) * (seg52In1AccX75 rho + seg52In1AccY75 rho) = rho 48691 := by
    unfold seg52In1AccX75 seg52In1AccY75
    linear_combination r4301
  have ha1 : rho 48690 * seg52In1AccX75 rho = rho 48692 := by
    unfold seg52In1AccX75
    linear_combination r4302
  have ha2 : rho 48689 * seg52In1AccY75 rho = rho 48693 := by
    unfold seg52In1AccY75
    linear_combination r4303
  have ha3 : 3021 * rho 48692 * rho 48693 = rho 48694 := by
    linear_combination r4304
  have ha4 : rho 48695 * (1 + rho 48694) = rho 48692 + rho 48693 := by
    linear_combination r4305
  have ha5 : rho 48696 * (1 - rho 48694) = rho 48691 - rho 48692 - rho 48693 := by
    linear_combination r4306
  have haddx :
      rho 48695 * (1 + 3021 * (rho 48690 * seg52In1AccX75 rho) * (rho 48689 * seg52In1AccY75 rho)) =
        rho 48690 * seg52In1AccX75 rho + rho 48689 * seg52In1AccY75 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48696 * (1 - 3021 * (rho 48690 * seg52In1AccX75 rho) * (rho 48689 * seg52In1AccY75 rho)) =
        (-1) * (rho 48690 * seg52In1AccX75 rho) - rho 48689 * seg52In1AccY75 rho +
          (seg52In1AccY75 rho - seg52In1AccX75 rho * (-1)) * (rho 48689 + rho 48690) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48696 * (1 - rho 48694) = rho 48691 - rho 48692 - rho 48693 := ha5
      _ = (-1) * rho 48692 - rho 48693 + (seg52In1AccY75 rho - seg52In1AccX75 rho * (-1)) *
          (rho 48689 + rho 48690) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX76 rho = seg52In1AccX75 rho - Bool.toZMod bit * (seg52In1AccX75 rho - rho 48695) := by
    have hd : rho 48697 = Bool.toZMod bit * (rho 48695 - seg52In1AccX75 rho) := by
      rw [← hbit]
      unfold seg52In1AccX75
      linear_combination -r4307
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY76 rho = seg52In1AccY75 rho - Bool.toZMod bit * (seg52In1AccY75 rho - rho 48696) := by
    have hd : rho 48698 = Bool.toZMod bit * (rho 48696 - seg52In1AccY75 rho) := by
      rw [← hbit]
      unfold seg52In1AccY75
      linear_combination -r4308
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48689 * rho 48690 = rho 48699 := by linear_combination r4309
  have hd1 : rho 48689 * rho 48689 = rho 48700 := by linear_combination r4310
  have hd2 : rho 48690 * rho 48690 = rho 48701 := by linear_combination r4311
  have hd3 : rho 48702 * (rho 48690 * rho 48690 + rho 48689 * rho 48689 * (-1)) =
      2 * (rho 48689 * rho 48690) := by
    rw [hd0, hd1, hd2]
    linear_combination r4312
  have hd4 : rho 48703 * (2 - (rho 48690 * rho 48690 + rho 48689 * rho 48689 * (-1))) =
      rho 48690 * rho 48690 - rho 48689 * rho 48689 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4313
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX75 rho, seg52In1AccY75 rho⟩ ⟨rho 48689, rho 48690⟩
    ⟨rho 48695, rho 48696⟩ ⟨seg52In1AccX76 rho, seg52In1AccY76 rho⟩ ⟨rho 48702, rho 48703⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows76 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4314 rho ∧ Seg52.relationRow4315 rho ∧ Seg52.relationRow4316 rho ∧ Seg52.relationRow4317 rho ∧ Seg52.relationRow4318 rho ∧ Seg52.relationRow4319 rho ∧ Seg52.relationRow4320 rho ∧ Seg52.relationRow4321 rho ∧ Seg52.relationRow4322 rho ∧ Seg52.relationRow4323 rho ∧ Seg52.relationRow4324 rho ∧ Seg52.relationRow4325 rho ∧ Seg52.relationRow4326 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p53, p54, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart53 at p53

  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4314, r4315, r4316, r4317, r4318, r4319⟩

  unfold Seg52.relationPart54 at p54

  rcases p54 with ⟨r4320, r4321, r4322, r4323, r4324, r4325, r4326, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4314, r4315, r4316, r4317, r4318, r4319, r4320, r4321, r4322, r4323, r4324, r4325, r4326⟩

theorem seg52In1_rung76 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47670 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX76 rho, seg52In1AccY76 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48702, rho 48703⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX76 rho, seg52In1AccY76 rho⟩ ⟨rho 48702, rho 48703⟩
        ⟨seg52In1AccX77 rho, seg52In1AccY77 rho⟩ ⟨rho 48715, rho 48716⟩ := by
  obtain ⟨r4314, r4315, r4316, r4317, r4318, r4319, r4320, r4321, r4322, r4323, r4324, r4325, r4326⟩ := seg52In1_rows76 rho h
  unfold Seg52.relationRow4314 at r4314

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4314

  unfold Seg52.relationRow4315 at r4315

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4315

  unfold Seg52.relationRow4316 at r4316

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4316

  unfold Seg52.relationRow4317 at r4317

  unfold Seg52.relationRow4318 at r4318

  unfold Seg52.relationRow4319 at r4319

  unfold Seg52.relationRow4320 at r4320

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4320

  unfold Seg52.relationRow4321 at r4321

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4321

  unfold Seg52.relationRow4322 at r4322

  unfold Seg52.relationRow4323 at r4323

  unfold Seg52.relationRow4324 at r4324

  unfold Seg52.relationRow4325 at r4325

  unfold Seg52.relationRow4326 at r4326

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX77 rho = seg52In1AccX76 rho + rho 48710 := by
    unfold seg52In1AccX77 seg52In1AccX76
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 76]

    ring

  have hnexty : seg52In1AccY77 rho = seg52In1AccY76 rho + rho 48711 := by
    unfold seg52In1AccY77 seg52In1AccY76
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 76]

    ring

  have ha0 : (rho 48702 + rho 48703) * (seg52In1AccX76 rho + seg52In1AccY76 rho) = rho 48704 := by
    unfold seg52In1AccX76 seg52In1AccY76
    linear_combination r4314
  have ha1 : rho 48703 * seg52In1AccX76 rho = rho 48705 := by
    unfold seg52In1AccX76
    linear_combination r4315
  have ha2 : rho 48702 * seg52In1AccY76 rho = rho 48706 := by
    unfold seg52In1AccY76
    linear_combination r4316
  have ha3 : 3021 * rho 48705 * rho 48706 = rho 48707 := by
    linear_combination r4317
  have ha4 : rho 48708 * (1 + rho 48707) = rho 48705 + rho 48706 := by
    linear_combination r4318
  have ha5 : rho 48709 * (1 - rho 48707) = rho 48704 - rho 48705 - rho 48706 := by
    linear_combination r4319
  have haddx :
      rho 48708 * (1 + 3021 * (rho 48703 * seg52In1AccX76 rho) * (rho 48702 * seg52In1AccY76 rho)) =
        rho 48703 * seg52In1AccX76 rho + rho 48702 * seg52In1AccY76 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48709 * (1 - 3021 * (rho 48703 * seg52In1AccX76 rho) * (rho 48702 * seg52In1AccY76 rho)) =
        (-1) * (rho 48703 * seg52In1AccX76 rho) - rho 48702 * seg52In1AccY76 rho +
          (seg52In1AccY76 rho - seg52In1AccX76 rho * (-1)) * (rho 48702 + rho 48703) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48709 * (1 - rho 48707) = rho 48704 - rho 48705 - rho 48706 := ha5
      _ = (-1) * rho 48705 - rho 48706 + (seg52In1AccY76 rho - seg52In1AccX76 rho * (-1)) *
          (rho 48702 + rho 48703) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX77 rho = seg52In1AccX76 rho - Bool.toZMod bit * (seg52In1AccX76 rho - rho 48708) := by
    have hd : rho 48710 = Bool.toZMod bit * (rho 48708 - seg52In1AccX76 rho) := by
      rw [← hbit]
      unfold seg52In1AccX76
      linear_combination -r4320
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY77 rho = seg52In1AccY76 rho - Bool.toZMod bit * (seg52In1AccY76 rho - rho 48709) := by
    have hd : rho 48711 = Bool.toZMod bit * (rho 48709 - seg52In1AccY76 rho) := by
      rw [← hbit]
      unfold seg52In1AccY76
      linear_combination -r4321
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48702 * rho 48703 = rho 48712 := by linear_combination r4322
  have hd1 : rho 48702 * rho 48702 = rho 48713 := by linear_combination r4323
  have hd2 : rho 48703 * rho 48703 = rho 48714 := by linear_combination r4324
  have hd3 : rho 48715 * (rho 48703 * rho 48703 + rho 48702 * rho 48702 * (-1)) =
      2 * (rho 48702 * rho 48703) := by
    rw [hd0, hd1, hd2]
    linear_combination r4325
  have hd4 : rho 48716 * (2 - (rho 48703 * rho 48703 + rho 48702 * rho 48702 * (-1))) =
      rho 48703 * rho 48703 - rho 48702 * rho 48702 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4326
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX76 rho, seg52In1AccY76 rho⟩ ⟨rho 48702, rho 48703⟩
    ⟨rho 48708, rho 48709⟩ ⟨seg52In1AccX77 rho, seg52In1AccY77 rho⟩ ⟨rho 48715, rho 48716⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_hstep_c6 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (47594 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 66 ≤ i → i < 77 →
      EdwardsBridge.onCurve (seg52In1AccState rho i) →
      EdwardsBridge.onCurve (seg52In1CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In1AccState rho i) (seg52In1CurState rho i)
        (seg52In1AccState rho (i + 1)) (seg52In1CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In1_rung66 rho h bits[66]! (hbitAt 66 (by omega)) hacc hcur
  · exact seg52In1_rung67 rho h bits[67]! (hbitAt 67 (by omega)) hacc hcur
  · exact seg52In1_rung68 rho h bits[68]! (hbitAt 68 (by omega)) hacc hcur
  · exact seg52In1_rung69 rho h bits[69]! (hbitAt 69 (by omega)) hacc hcur
  · exact seg52In1_rung70 rho h bits[70]! (hbitAt 70 (by omega)) hacc hcur
  · exact seg52In1_rung71 rho h bits[71]! (hbitAt 71 (by omega)) hacc hcur
  · exact seg52In1_rung72 rho h bits[72]! (hbitAt 72 (by omega)) hacc hcur
  · exact seg52In1_rung73 rho h bits[73]! (hbitAt 73 (by omega)) hacc hcur
  · exact seg52In1_rung74 rho h bits[74]! (hbitAt 74 (by omega)) hacc hcur
  · exact seg52In1_rung75 rho h bits[75]! (hbitAt 75 (by omega)) hacc hcur
  · exact seg52In1_rung76 rho h bits[76]! (hbitAt 76 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
