import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Out0_rows55 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5194 rho ∧ Seg52.relationRow5195 rho ∧ Seg52.relationRow5196 rho ∧ Seg52.relationRow5197 rho ∧ Seg52.relationRow5198 rho ∧ Seg52.relationRow5199 rho ∧ Seg52.relationRow5200 rho ∧ Seg52.relationRow5201 rho ∧ Seg52.relationRow5202 rho ∧ Seg52.relationRow5203 rho ∧ Seg52.relationRow5204 rho ∧ Seg52.relationRow5205 rho ∧ Seg52.relationRow5206 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p64, p65, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart64 at p64

  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5194, r5195, r5196, r5197, r5198, r5199⟩

  unfold Seg52.relationPart65 at p65

  rcases p65 with ⟨r5200, r5201, r5202, r5203, r5204, r5205, r5206, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5194, r5195, r5196, r5197, r5198, r5199, r5200, r5201, r5202, r5203, r5204, r5205, r5206⟩

theorem seg52Out0_rung55 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48801 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX55 rho, seg52Out0AccY55 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49581, rho 49582⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX55 rho, seg52Out0AccY55 rho⟩ ⟨rho 49581, rho 49582⟩
        ⟨seg52Out0AccX56 rho, seg52Out0AccY56 rho⟩ ⟨rho 49594, rho 49595⟩ := by
  obtain ⟨r5194, r5195, r5196, r5197, r5198, r5199, r5200, r5201, r5202, r5203, r5204, r5205, r5206⟩ := seg52Out0_rows55 rho h
  unfold Seg52.relationRow5194 at r5194

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5194

  unfold Seg52.relationRow5195 at r5195

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5195

  unfold Seg52.relationRow5196 at r5196

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5196

  unfold Seg52.relationRow5197 at r5197

  unfold Seg52.relationRow5198 at r5198

  unfold Seg52.relationRow5199 at r5199

  unfold Seg52.relationRow5200 at r5200

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5200

  unfold Seg52.relationRow5201 at r5201

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5201

  unfold Seg52.relationRow5202 at r5202

  unfold Seg52.relationRow5203 at r5203

  unfold Seg52.relationRow5204 at r5204

  unfold Seg52.relationRow5205 at r5205

  unfold Seg52.relationRow5206 at r5206

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX56 rho = seg52Out0AccX55 rho + rho 49589 := by
    unfold seg52Out0AccX56 seg52Out0AccX55
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 55]

    ring

  have hnexty : seg52Out0AccY56 rho = seg52Out0AccY55 rho + rho 49590 := by
    unfold seg52Out0AccY56 seg52Out0AccY55
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 55]

    ring

  have ha0 : (rho 49581 + rho 49582) * (seg52Out0AccX55 rho + seg52Out0AccY55 rho) = rho 49583 := by
    unfold seg52Out0AccX55 seg52Out0AccY55
    linear_combination r5194
  have ha1 : rho 49582 * seg52Out0AccX55 rho = rho 49584 := by
    unfold seg52Out0AccX55
    linear_combination r5195
  have ha2 : rho 49581 * seg52Out0AccY55 rho = rho 49585 := by
    unfold seg52Out0AccY55
    linear_combination r5196
  have ha3 : 3021 * rho 49584 * rho 49585 = rho 49586 := by
    linear_combination r5197
  have ha4 : rho 49587 * (1 + rho 49586) = rho 49584 + rho 49585 := by
    linear_combination r5198
  have ha5 : rho 49588 * (1 - rho 49586) = rho 49583 - rho 49584 - rho 49585 := by
    linear_combination r5199
  have haddx :
      rho 49587 * (1 + 3021 * (rho 49582 * seg52Out0AccX55 rho) * (rho 49581 * seg52Out0AccY55 rho)) =
        rho 49582 * seg52Out0AccX55 rho + rho 49581 * seg52Out0AccY55 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49588 * (1 - 3021 * (rho 49582 * seg52Out0AccX55 rho) * (rho 49581 * seg52Out0AccY55 rho)) =
        (-1) * (rho 49582 * seg52Out0AccX55 rho) - rho 49581 * seg52Out0AccY55 rho +
          (seg52Out0AccY55 rho - seg52Out0AccX55 rho * (-1)) * (rho 49581 + rho 49582) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49588 * (1 - rho 49586) = rho 49583 - rho 49584 - rho 49585 := ha5
      _ = (-1) * rho 49584 - rho 49585 + (seg52Out0AccY55 rho - seg52Out0AccX55 rho * (-1)) *
          (rho 49581 + rho 49582) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX56 rho = seg52Out0AccX55 rho - Bool.toZMod bit * (seg52Out0AccX55 rho - rho 49587) := by
    have hd : rho 49589 = Bool.toZMod bit * (rho 49587 - seg52Out0AccX55 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX55
      linear_combination -r5200
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY56 rho = seg52Out0AccY55 rho - Bool.toZMod bit * (seg52Out0AccY55 rho - rho 49588) := by
    have hd : rho 49590 = Bool.toZMod bit * (rho 49588 - seg52Out0AccY55 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY55
      linear_combination -r5201
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49581 * rho 49582 = rho 49591 := by linear_combination r5202
  have hd1 : rho 49581 * rho 49581 = rho 49592 := by linear_combination r5203
  have hd2 : rho 49582 * rho 49582 = rho 49593 := by linear_combination r5204
  have hd3 : rho 49594 * (rho 49582 * rho 49582 + rho 49581 * rho 49581 * (-1)) =
      2 * (rho 49581 * rho 49582) := by
    rw [hd0, hd1, hd2]
    linear_combination r5205
  have hd4 : rho 49595 * (2 - (rho 49582 * rho 49582 + rho 49581 * rho 49581 * (-1))) =
      rho 49582 * rho 49582 - rho 49581 * rho 49581 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5206
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX55 rho, seg52Out0AccY55 rho⟩ ⟨rho 49581, rho 49582⟩
    ⟨rho 49587, rho 49588⟩ ⟨seg52Out0AccX56 rho, seg52Out0AccY56 rho⟩ ⟨rho 49594, rho 49595⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows56 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5207 rho ∧ Seg52.relationRow5208 rho ∧ Seg52.relationRow5209 rho ∧ Seg52.relationRow5210 rho ∧ Seg52.relationRow5211 rho ∧ Seg52.relationRow5212 rho ∧ Seg52.relationRow5213 rho ∧ Seg52.relationRow5214 rho ∧ Seg52.relationRow5215 rho ∧ Seg52.relationRow5216 rho ∧ Seg52.relationRow5217 rho ∧ Seg52.relationRow5218 rho ∧ Seg52.relationRow5219 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p65, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart65 at p65

  rcases p65 with ⟨_, _, _, _, _, _, _, r5207, r5208, r5209, r5210, r5211, r5212, r5213, r5214, r5215, r5216, r5217, r5218, r5219, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5207, r5208, r5209, r5210, r5211, r5212, r5213, r5214, r5215, r5216, r5217, r5218, r5219⟩

theorem seg52Out0_rung56 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48802 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX56 rho, seg52Out0AccY56 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49594, rho 49595⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX56 rho, seg52Out0AccY56 rho⟩ ⟨rho 49594, rho 49595⟩
        ⟨seg52Out0AccX57 rho, seg52Out0AccY57 rho⟩ ⟨rho 49607, rho 49608⟩ := by
  obtain ⟨r5207, r5208, r5209, r5210, r5211, r5212, r5213, r5214, r5215, r5216, r5217, r5218, r5219⟩ := seg52Out0_rows56 rho h
  unfold Seg52.relationRow5207 at r5207

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5207

  unfold Seg52.relationRow5208 at r5208

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5208

  unfold Seg52.relationRow5209 at r5209

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5209

  unfold Seg52.relationRow5210 at r5210

  unfold Seg52.relationRow5211 at r5211

  unfold Seg52.relationRow5212 at r5212

  unfold Seg52.relationRow5213 at r5213

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5213

  unfold Seg52.relationRow5214 at r5214

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5214

  unfold Seg52.relationRow5215 at r5215

  unfold Seg52.relationRow5216 at r5216

  unfold Seg52.relationRow5217 at r5217

  unfold Seg52.relationRow5218 at r5218

  unfold Seg52.relationRow5219 at r5219

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX57 rho = seg52Out0AccX56 rho + rho 49602 := by
    unfold seg52Out0AccX57 seg52Out0AccX56
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 56]

    ring

  have hnexty : seg52Out0AccY57 rho = seg52Out0AccY56 rho + rho 49603 := by
    unfold seg52Out0AccY57 seg52Out0AccY56
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 56]

    ring

  have ha0 : (rho 49594 + rho 49595) * (seg52Out0AccX56 rho + seg52Out0AccY56 rho) = rho 49596 := by
    unfold seg52Out0AccX56 seg52Out0AccY56
    linear_combination r5207
  have ha1 : rho 49595 * seg52Out0AccX56 rho = rho 49597 := by
    unfold seg52Out0AccX56
    linear_combination r5208
  have ha2 : rho 49594 * seg52Out0AccY56 rho = rho 49598 := by
    unfold seg52Out0AccY56
    linear_combination r5209
  have ha3 : 3021 * rho 49597 * rho 49598 = rho 49599 := by
    linear_combination r5210
  have ha4 : rho 49600 * (1 + rho 49599) = rho 49597 + rho 49598 := by
    linear_combination r5211
  have ha5 : rho 49601 * (1 - rho 49599) = rho 49596 - rho 49597 - rho 49598 := by
    linear_combination r5212
  have haddx :
      rho 49600 * (1 + 3021 * (rho 49595 * seg52Out0AccX56 rho) * (rho 49594 * seg52Out0AccY56 rho)) =
        rho 49595 * seg52Out0AccX56 rho + rho 49594 * seg52Out0AccY56 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49601 * (1 - 3021 * (rho 49595 * seg52Out0AccX56 rho) * (rho 49594 * seg52Out0AccY56 rho)) =
        (-1) * (rho 49595 * seg52Out0AccX56 rho) - rho 49594 * seg52Out0AccY56 rho +
          (seg52Out0AccY56 rho - seg52Out0AccX56 rho * (-1)) * (rho 49594 + rho 49595) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49601 * (1 - rho 49599) = rho 49596 - rho 49597 - rho 49598 := ha5
      _ = (-1) * rho 49597 - rho 49598 + (seg52Out0AccY56 rho - seg52Out0AccX56 rho * (-1)) *
          (rho 49594 + rho 49595) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX57 rho = seg52Out0AccX56 rho - Bool.toZMod bit * (seg52Out0AccX56 rho - rho 49600) := by
    have hd : rho 49602 = Bool.toZMod bit * (rho 49600 - seg52Out0AccX56 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX56
      linear_combination -r5213
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY57 rho = seg52Out0AccY56 rho - Bool.toZMod bit * (seg52Out0AccY56 rho - rho 49601) := by
    have hd : rho 49603 = Bool.toZMod bit * (rho 49601 - seg52Out0AccY56 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY56
      linear_combination -r5214
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49594 * rho 49595 = rho 49604 := by linear_combination r5215
  have hd1 : rho 49594 * rho 49594 = rho 49605 := by linear_combination r5216
  have hd2 : rho 49595 * rho 49595 = rho 49606 := by linear_combination r5217
  have hd3 : rho 49607 * (rho 49595 * rho 49595 + rho 49594 * rho 49594 * (-1)) =
      2 * (rho 49594 * rho 49595) := by
    rw [hd0, hd1, hd2]
    linear_combination r5218
  have hd4 : rho 49608 * (2 - (rho 49595 * rho 49595 + rho 49594 * rho 49594 * (-1))) =
      rho 49595 * rho 49595 - rho 49594 * rho 49594 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5219
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX56 rho, seg52Out0AccY56 rho⟩ ⟨rho 49594, rho 49595⟩
    ⟨rho 49600, rho 49601⟩ ⟨seg52Out0AccX57 rho, seg52Out0AccY57 rho⟩ ⟨rho 49607, rho 49608⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows57 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5220 rho ∧ Seg52.relationRow5221 rho ∧ Seg52.relationRow5222 rho ∧ Seg52.relationRow5223 rho ∧ Seg52.relationRow5224 rho ∧ Seg52.relationRow5225 rho ∧ Seg52.relationRow5226 rho ∧ Seg52.relationRow5227 rho ∧ Seg52.relationRow5228 rho ∧ Seg52.relationRow5229 rho ∧ Seg52.relationRow5230 rho ∧ Seg52.relationRow5231 rho ∧ Seg52.relationRow5232 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p65, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart65 at p65

  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5220, r5221, r5222, r5223, r5224, r5225, r5226, r5227, r5228, r5229, r5230, r5231, r5232, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5220, r5221, r5222, r5223, r5224, r5225, r5226, r5227, r5228, r5229, r5230, r5231, r5232⟩

theorem seg52Out0_rung57 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48803 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX57 rho, seg52Out0AccY57 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49607, rho 49608⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX57 rho, seg52Out0AccY57 rho⟩ ⟨rho 49607, rho 49608⟩
        ⟨seg52Out0AccX58 rho, seg52Out0AccY58 rho⟩ ⟨rho 49620, rho 49621⟩ := by
  obtain ⟨r5220, r5221, r5222, r5223, r5224, r5225, r5226, r5227, r5228, r5229, r5230, r5231, r5232⟩ := seg52Out0_rows57 rho h
  unfold Seg52.relationRow5220 at r5220

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5220

  unfold Seg52.relationRow5221 at r5221

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5221

  unfold Seg52.relationRow5222 at r5222

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5222

  unfold Seg52.relationRow5223 at r5223

  unfold Seg52.relationRow5224 at r5224

  unfold Seg52.relationRow5225 at r5225

  unfold Seg52.relationRow5226 at r5226

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5226

  unfold Seg52.relationRow5227 at r5227

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5227

  unfold Seg52.relationRow5228 at r5228

  unfold Seg52.relationRow5229 at r5229

  unfold Seg52.relationRow5230 at r5230

  unfold Seg52.relationRow5231 at r5231

  unfold Seg52.relationRow5232 at r5232

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX58 rho = seg52Out0AccX57 rho + rho 49615 := by
    unfold seg52Out0AccX58 seg52Out0AccX57
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 57]

    ring

  have hnexty : seg52Out0AccY58 rho = seg52Out0AccY57 rho + rho 49616 := by
    unfold seg52Out0AccY58 seg52Out0AccY57
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 57]

    ring

  have ha0 : (rho 49607 + rho 49608) * (seg52Out0AccX57 rho + seg52Out0AccY57 rho) = rho 49609 := by
    unfold seg52Out0AccX57 seg52Out0AccY57
    linear_combination r5220
  have ha1 : rho 49608 * seg52Out0AccX57 rho = rho 49610 := by
    unfold seg52Out0AccX57
    linear_combination r5221
  have ha2 : rho 49607 * seg52Out0AccY57 rho = rho 49611 := by
    unfold seg52Out0AccY57
    linear_combination r5222
  have ha3 : 3021 * rho 49610 * rho 49611 = rho 49612 := by
    linear_combination r5223
  have ha4 : rho 49613 * (1 + rho 49612) = rho 49610 + rho 49611 := by
    linear_combination r5224
  have ha5 : rho 49614 * (1 - rho 49612) = rho 49609 - rho 49610 - rho 49611 := by
    linear_combination r5225
  have haddx :
      rho 49613 * (1 + 3021 * (rho 49608 * seg52Out0AccX57 rho) * (rho 49607 * seg52Out0AccY57 rho)) =
        rho 49608 * seg52Out0AccX57 rho + rho 49607 * seg52Out0AccY57 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49614 * (1 - 3021 * (rho 49608 * seg52Out0AccX57 rho) * (rho 49607 * seg52Out0AccY57 rho)) =
        (-1) * (rho 49608 * seg52Out0AccX57 rho) - rho 49607 * seg52Out0AccY57 rho +
          (seg52Out0AccY57 rho - seg52Out0AccX57 rho * (-1)) * (rho 49607 + rho 49608) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49614 * (1 - rho 49612) = rho 49609 - rho 49610 - rho 49611 := ha5
      _ = (-1) * rho 49610 - rho 49611 + (seg52Out0AccY57 rho - seg52Out0AccX57 rho * (-1)) *
          (rho 49607 + rho 49608) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX58 rho = seg52Out0AccX57 rho - Bool.toZMod bit * (seg52Out0AccX57 rho - rho 49613) := by
    have hd : rho 49615 = Bool.toZMod bit * (rho 49613 - seg52Out0AccX57 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX57
      linear_combination -r5226
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY58 rho = seg52Out0AccY57 rho - Bool.toZMod bit * (seg52Out0AccY57 rho - rho 49614) := by
    have hd : rho 49616 = Bool.toZMod bit * (rho 49614 - seg52Out0AccY57 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY57
      linear_combination -r5227
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49607 * rho 49608 = rho 49617 := by linear_combination r5228
  have hd1 : rho 49607 * rho 49607 = rho 49618 := by linear_combination r5229
  have hd2 : rho 49608 * rho 49608 = rho 49619 := by linear_combination r5230
  have hd3 : rho 49620 * (rho 49608 * rho 49608 + rho 49607 * rho 49607 * (-1)) =
      2 * (rho 49607 * rho 49608) := by
    rw [hd0, hd1, hd2]
    linear_combination r5231
  have hd4 : rho 49621 * (2 - (rho 49608 * rho 49608 + rho 49607 * rho 49607 * (-1))) =
      rho 49608 * rho 49608 - rho 49607 * rho 49607 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5232
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX57 rho, seg52Out0AccY57 rho⟩ ⟨rho 49607, rho 49608⟩
    ⟨rho 49613, rho 49614⟩ ⟨seg52Out0AccX58 rho, seg52Out0AccY58 rho⟩ ⟨rho 49620, rho 49621⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows58 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5233 rho ∧ Seg52.relationRow5234 rho ∧ Seg52.relationRow5235 rho ∧ Seg52.relationRow5236 rho ∧ Seg52.relationRow5237 rho ∧ Seg52.relationRow5238 rho ∧ Seg52.relationRow5239 rho ∧ Seg52.relationRow5240 rho ∧ Seg52.relationRow5241 rho ∧ Seg52.relationRow5242 rho ∧ Seg52.relationRow5243 rho ∧ Seg52.relationRow5244 rho ∧ Seg52.relationRow5245 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p65, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart65 at p65

  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5233, r5234, r5235, r5236, r5237, r5238, r5239, r5240, r5241, r5242, r5243, r5244, r5245, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5233, r5234, r5235, r5236, r5237, r5238, r5239, r5240, r5241, r5242, r5243, r5244, r5245⟩

theorem seg52Out0_rung58 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48804 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX58 rho, seg52Out0AccY58 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49620, rho 49621⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX58 rho, seg52Out0AccY58 rho⟩ ⟨rho 49620, rho 49621⟩
        ⟨seg52Out0AccX59 rho, seg52Out0AccY59 rho⟩ ⟨rho 49633, rho 49634⟩ := by
  obtain ⟨r5233, r5234, r5235, r5236, r5237, r5238, r5239, r5240, r5241, r5242, r5243, r5244, r5245⟩ := seg52Out0_rows58 rho h
  unfold Seg52.relationRow5233 at r5233

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5233

  unfold Seg52.relationRow5234 at r5234

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5234

  unfold Seg52.relationRow5235 at r5235

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5235

  unfold Seg52.relationRow5236 at r5236

  unfold Seg52.relationRow5237 at r5237

  unfold Seg52.relationRow5238 at r5238

  unfold Seg52.relationRow5239 at r5239

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5239

  unfold Seg52.relationRow5240 at r5240

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5240

  unfold Seg52.relationRow5241 at r5241

  unfold Seg52.relationRow5242 at r5242

  unfold Seg52.relationRow5243 at r5243

  unfold Seg52.relationRow5244 at r5244

  unfold Seg52.relationRow5245 at r5245

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX59 rho = seg52Out0AccX58 rho + rho 49628 := by
    unfold seg52Out0AccX59 seg52Out0AccX58
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 58]

    ring

  have hnexty : seg52Out0AccY59 rho = seg52Out0AccY58 rho + rho 49629 := by
    unfold seg52Out0AccY59 seg52Out0AccY58
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 58]

    ring

  have ha0 : (rho 49620 + rho 49621) * (seg52Out0AccX58 rho + seg52Out0AccY58 rho) = rho 49622 := by
    unfold seg52Out0AccX58 seg52Out0AccY58
    linear_combination r5233
  have ha1 : rho 49621 * seg52Out0AccX58 rho = rho 49623 := by
    unfold seg52Out0AccX58
    linear_combination r5234
  have ha2 : rho 49620 * seg52Out0AccY58 rho = rho 49624 := by
    unfold seg52Out0AccY58
    linear_combination r5235
  have ha3 : 3021 * rho 49623 * rho 49624 = rho 49625 := by
    linear_combination r5236
  have ha4 : rho 49626 * (1 + rho 49625) = rho 49623 + rho 49624 := by
    linear_combination r5237
  have ha5 : rho 49627 * (1 - rho 49625) = rho 49622 - rho 49623 - rho 49624 := by
    linear_combination r5238
  have haddx :
      rho 49626 * (1 + 3021 * (rho 49621 * seg52Out0AccX58 rho) * (rho 49620 * seg52Out0AccY58 rho)) =
        rho 49621 * seg52Out0AccX58 rho + rho 49620 * seg52Out0AccY58 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49627 * (1 - 3021 * (rho 49621 * seg52Out0AccX58 rho) * (rho 49620 * seg52Out0AccY58 rho)) =
        (-1) * (rho 49621 * seg52Out0AccX58 rho) - rho 49620 * seg52Out0AccY58 rho +
          (seg52Out0AccY58 rho - seg52Out0AccX58 rho * (-1)) * (rho 49620 + rho 49621) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49627 * (1 - rho 49625) = rho 49622 - rho 49623 - rho 49624 := ha5
      _ = (-1) * rho 49623 - rho 49624 + (seg52Out0AccY58 rho - seg52Out0AccX58 rho * (-1)) *
          (rho 49620 + rho 49621) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX59 rho = seg52Out0AccX58 rho - Bool.toZMod bit * (seg52Out0AccX58 rho - rho 49626) := by
    have hd : rho 49628 = Bool.toZMod bit * (rho 49626 - seg52Out0AccX58 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX58
      linear_combination -r5239
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY59 rho = seg52Out0AccY58 rho - Bool.toZMod bit * (seg52Out0AccY58 rho - rho 49627) := by
    have hd : rho 49629 = Bool.toZMod bit * (rho 49627 - seg52Out0AccY58 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY58
      linear_combination -r5240
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49620 * rho 49621 = rho 49630 := by linear_combination r5241
  have hd1 : rho 49620 * rho 49620 = rho 49631 := by linear_combination r5242
  have hd2 : rho 49621 * rho 49621 = rho 49632 := by linear_combination r5243
  have hd3 : rho 49633 * (rho 49621 * rho 49621 + rho 49620 * rho 49620 * (-1)) =
      2 * (rho 49620 * rho 49621) := by
    rw [hd0, hd1, hd2]
    linear_combination r5244
  have hd4 : rho 49634 * (2 - (rho 49621 * rho 49621 + rho 49620 * rho 49620 * (-1))) =
      rho 49621 * rho 49621 - rho 49620 * rho 49620 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5245
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX58 rho, seg52Out0AccY58 rho⟩ ⟨rho 49620, rho 49621⟩
    ⟨rho 49626, rho 49627⟩ ⟨seg52Out0AccX59 rho, seg52Out0AccY59 rho⟩ ⟨rho 49633, rho 49634⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows59 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5246 rho ∧ Seg52.relationRow5247 rho ∧ Seg52.relationRow5248 rho ∧ Seg52.relationRow5249 rho ∧ Seg52.relationRow5250 rho ∧ Seg52.relationRow5251 rho ∧ Seg52.relationRow5252 rho ∧ Seg52.relationRow5253 rho ∧ Seg52.relationRow5254 rho ∧ Seg52.relationRow5255 rho ∧ Seg52.relationRow5256 rho ∧ Seg52.relationRow5257 rho ∧ Seg52.relationRow5258 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p65, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart65 at p65

  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5246, r5247, r5248, r5249, r5250, r5251, r5252, r5253, r5254, r5255, r5256, r5257, r5258, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5246, r5247, r5248, r5249, r5250, r5251, r5252, r5253, r5254, r5255, r5256, r5257, r5258⟩

theorem seg52Out0_rung59 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48805 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX59 rho, seg52Out0AccY59 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49633, rho 49634⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX59 rho, seg52Out0AccY59 rho⟩ ⟨rho 49633, rho 49634⟩
        ⟨seg52Out0AccX60 rho, seg52Out0AccY60 rho⟩ ⟨rho 49646, rho 49647⟩ := by
  obtain ⟨r5246, r5247, r5248, r5249, r5250, r5251, r5252, r5253, r5254, r5255, r5256, r5257, r5258⟩ := seg52Out0_rows59 rho h
  unfold Seg52.relationRow5246 at r5246

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5246

  unfold Seg52.relationRow5247 at r5247

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5247

  unfold Seg52.relationRow5248 at r5248

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5248

  unfold Seg52.relationRow5249 at r5249

  unfold Seg52.relationRow5250 at r5250

  unfold Seg52.relationRow5251 at r5251

  unfold Seg52.relationRow5252 at r5252

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5252

  unfold Seg52.relationRow5253 at r5253

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5253

  unfold Seg52.relationRow5254 at r5254

  unfold Seg52.relationRow5255 at r5255

  unfold Seg52.relationRow5256 at r5256

  unfold Seg52.relationRow5257 at r5257

  unfold Seg52.relationRow5258 at r5258

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX60 rho = seg52Out0AccX59 rho + rho 49641 := by
    unfold seg52Out0AccX60 seg52Out0AccX59
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 59]

    ring

  have hnexty : seg52Out0AccY60 rho = seg52Out0AccY59 rho + rho 49642 := by
    unfold seg52Out0AccY60 seg52Out0AccY59
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 59]

    ring

  have ha0 : (rho 49633 + rho 49634) * (seg52Out0AccX59 rho + seg52Out0AccY59 rho) = rho 49635 := by
    unfold seg52Out0AccX59 seg52Out0AccY59
    linear_combination r5246
  have ha1 : rho 49634 * seg52Out0AccX59 rho = rho 49636 := by
    unfold seg52Out0AccX59
    linear_combination r5247
  have ha2 : rho 49633 * seg52Out0AccY59 rho = rho 49637 := by
    unfold seg52Out0AccY59
    linear_combination r5248
  have ha3 : 3021 * rho 49636 * rho 49637 = rho 49638 := by
    linear_combination r5249
  have ha4 : rho 49639 * (1 + rho 49638) = rho 49636 + rho 49637 := by
    linear_combination r5250
  have ha5 : rho 49640 * (1 - rho 49638) = rho 49635 - rho 49636 - rho 49637 := by
    linear_combination r5251
  have haddx :
      rho 49639 * (1 + 3021 * (rho 49634 * seg52Out0AccX59 rho) * (rho 49633 * seg52Out0AccY59 rho)) =
        rho 49634 * seg52Out0AccX59 rho + rho 49633 * seg52Out0AccY59 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49640 * (1 - 3021 * (rho 49634 * seg52Out0AccX59 rho) * (rho 49633 * seg52Out0AccY59 rho)) =
        (-1) * (rho 49634 * seg52Out0AccX59 rho) - rho 49633 * seg52Out0AccY59 rho +
          (seg52Out0AccY59 rho - seg52Out0AccX59 rho * (-1)) * (rho 49633 + rho 49634) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49640 * (1 - rho 49638) = rho 49635 - rho 49636 - rho 49637 := ha5
      _ = (-1) * rho 49636 - rho 49637 + (seg52Out0AccY59 rho - seg52Out0AccX59 rho * (-1)) *
          (rho 49633 + rho 49634) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX60 rho = seg52Out0AccX59 rho - Bool.toZMod bit * (seg52Out0AccX59 rho - rho 49639) := by
    have hd : rho 49641 = Bool.toZMod bit * (rho 49639 - seg52Out0AccX59 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX59
      linear_combination -r5252
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY60 rho = seg52Out0AccY59 rho - Bool.toZMod bit * (seg52Out0AccY59 rho - rho 49640) := by
    have hd : rho 49642 = Bool.toZMod bit * (rho 49640 - seg52Out0AccY59 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY59
      linear_combination -r5253
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49633 * rho 49634 = rho 49643 := by linear_combination r5254
  have hd1 : rho 49633 * rho 49633 = rho 49644 := by linear_combination r5255
  have hd2 : rho 49634 * rho 49634 = rho 49645 := by linear_combination r5256
  have hd3 : rho 49646 * (rho 49634 * rho 49634 + rho 49633 * rho 49633 * (-1)) =
      2 * (rho 49633 * rho 49634) := by
    rw [hd0, hd1, hd2]
    linear_combination r5257
  have hd4 : rho 49647 * (2 - (rho 49634 * rho 49634 + rho 49633 * rho 49633 * (-1))) =
      rho 49634 * rho 49634 - rho 49633 * rho 49633 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5258
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX59 rho, seg52Out0AccY59 rho⟩ ⟨rho 49633, rho 49634⟩
    ⟨rho 49639, rho 49640⟩ ⟨seg52Out0AccX60 rho, seg52Out0AccY60 rho⟩ ⟨rho 49646, rho 49647⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows60 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5259 rho ∧ Seg52.relationRow5260 rho ∧ Seg52.relationRow5261 rho ∧ Seg52.relationRow5262 rho ∧ Seg52.relationRow5263 rho ∧ Seg52.relationRow5264 rho ∧ Seg52.relationRow5265 rho ∧ Seg52.relationRow5266 rho ∧ Seg52.relationRow5267 rho ∧ Seg52.relationRow5268 rho ∧ Seg52.relationRow5269 rho ∧ Seg52.relationRow5270 rho ∧ Seg52.relationRow5271 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p65, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart65 at p65

  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5259, r5260, r5261, r5262, r5263, r5264, r5265, r5266, r5267, r5268, r5269, r5270, r5271, _, _, _, _, _, _, _, _⟩

  exact ⟨r5259, r5260, r5261, r5262, r5263, r5264, r5265, r5266, r5267, r5268, r5269, r5270, r5271⟩

theorem seg52Out0_rung60 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48806 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX60 rho, seg52Out0AccY60 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49646, rho 49647⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX60 rho, seg52Out0AccY60 rho⟩ ⟨rho 49646, rho 49647⟩
        ⟨seg52Out0AccX61 rho, seg52Out0AccY61 rho⟩ ⟨rho 49659, rho 49660⟩ := by
  obtain ⟨r5259, r5260, r5261, r5262, r5263, r5264, r5265, r5266, r5267, r5268, r5269, r5270, r5271⟩ := seg52Out0_rows60 rho h
  unfold Seg52.relationRow5259 at r5259

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5259

  unfold Seg52.relationRow5260 at r5260

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5260

  unfold Seg52.relationRow5261 at r5261

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5261

  unfold Seg52.relationRow5262 at r5262

  unfold Seg52.relationRow5263 at r5263

  unfold Seg52.relationRow5264 at r5264

  unfold Seg52.relationRow5265 at r5265

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5265

  unfold Seg52.relationRow5266 at r5266

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5266

  unfold Seg52.relationRow5267 at r5267

  unfold Seg52.relationRow5268 at r5268

  unfold Seg52.relationRow5269 at r5269

  unfold Seg52.relationRow5270 at r5270

  unfold Seg52.relationRow5271 at r5271

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX61 rho = seg52Out0AccX60 rho + rho 49654 := by
    unfold seg52Out0AccX61 seg52Out0AccX60
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 60]

    ring

  have hnexty : seg52Out0AccY61 rho = seg52Out0AccY60 rho + rho 49655 := by
    unfold seg52Out0AccY61 seg52Out0AccY60
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 60]

    ring

  have ha0 : (rho 49646 + rho 49647) * (seg52Out0AccX60 rho + seg52Out0AccY60 rho) = rho 49648 := by
    unfold seg52Out0AccX60 seg52Out0AccY60
    linear_combination r5259
  have ha1 : rho 49647 * seg52Out0AccX60 rho = rho 49649 := by
    unfold seg52Out0AccX60
    linear_combination r5260
  have ha2 : rho 49646 * seg52Out0AccY60 rho = rho 49650 := by
    unfold seg52Out0AccY60
    linear_combination r5261
  have ha3 : 3021 * rho 49649 * rho 49650 = rho 49651 := by
    linear_combination r5262
  have ha4 : rho 49652 * (1 + rho 49651) = rho 49649 + rho 49650 := by
    linear_combination r5263
  have ha5 : rho 49653 * (1 - rho 49651) = rho 49648 - rho 49649 - rho 49650 := by
    linear_combination r5264
  have haddx :
      rho 49652 * (1 + 3021 * (rho 49647 * seg52Out0AccX60 rho) * (rho 49646 * seg52Out0AccY60 rho)) =
        rho 49647 * seg52Out0AccX60 rho + rho 49646 * seg52Out0AccY60 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49653 * (1 - 3021 * (rho 49647 * seg52Out0AccX60 rho) * (rho 49646 * seg52Out0AccY60 rho)) =
        (-1) * (rho 49647 * seg52Out0AccX60 rho) - rho 49646 * seg52Out0AccY60 rho +
          (seg52Out0AccY60 rho - seg52Out0AccX60 rho * (-1)) * (rho 49646 + rho 49647) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49653 * (1 - rho 49651) = rho 49648 - rho 49649 - rho 49650 := ha5
      _ = (-1) * rho 49649 - rho 49650 + (seg52Out0AccY60 rho - seg52Out0AccX60 rho * (-1)) *
          (rho 49646 + rho 49647) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX61 rho = seg52Out0AccX60 rho - Bool.toZMod bit * (seg52Out0AccX60 rho - rho 49652) := by
    have hd : rho 49654 = Bool.toZMod bit * (rho 49652 - seg52Out0AccX60 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX60
      linear_combination -r5265
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY61 rho = seg52Out0AccY60 rho - Bool.toZMod bit * (seg52Out0AccY60 rho - rho 49653) := by
    have hd : rho 49655 = Bool.toZMod bit * (rho 49653 - seg52Out0AccY60 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY60
      linear_combination -r5266
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49646 * rho 49647 = rho 49656 := by linear_combination r5267
  have hd1 : rho 49646 * rho 49646 = rho 49657 := by linear_combination r5268
  have hd2 : rho 49647 * rho 49647 = rho 49658 := by linear_combination r5269
  have hd3 : rho 49659 * (rho 49647 * rho 49647 + rho 49646 * rho 49646 * (-1)) =
      2 * (rho 49646 * rho 49647) := by
    rw [hd0, hd1, hd2]
    linear_combination r5270
  have hd4 : rho 49660 * (2 - (rho 49647 * rho 49647 + rho 49646 * rho 49646 * (-1))) =
      rho 49647 * rho 49647 - rho 49646 * rho 49646 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5271
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX60 rho, seg52Out0AccY60 rho⟩ ⟨rho 49646, rho 49647⟩
    ⟨rho 49652, rho 49653⟩ ⟨seg52Out0AccX61 rho, seg52Out0AccY61 rho⟩ ⟨rho 49659, rho 49660⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows61 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5272 rho ∧ Seg52.relationRow5273 rho ∧ Seg52.relationRow5274 rho ∧ Seg52.relationRow5275 rho ∧ Seg52.relationRow5276 rho ∧ Seg52.relationRow5277 rho ∧ Seg52.relationRow5278 rho ∧ Seg52.relationRow5279 rho ∧ Seg52.relationRow5280 rho ∧ Seg52.relationRow5281 rho ∧ Seg52.relationRow5282 rho ∧ Seg52.relationRow5283 rho ∧ Seg52.relationRow5284 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p65, p66, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart65 at p65

  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5272, r5273, r5274, r5275, r5276, r5277, r5278, r5279⟩

  unfold Seg52.relationPart66 at p66

  rcases p66 with ⟨r5280, r5281, r5282, r5283, r5284, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5272, r5273, r5274, r5275, r5276, r5277, r5278, r5279, r5280, r5281, r5282, r5283, r5284⟩

theorem seg52Out0_rung61 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48807 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX61 rho, seg52Out0AccY61 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49659, rho 49660⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX61 rho, seg52Out0AccY61 rho⟩ ⟨rho 49659, rho 49660⟩
        ⟨seg52Out0AccX62 rho, seg52Out0AccY62 rho⟩ ⟨rho 49672, rho 49673⟩ := by
  obtain ⟨r5272, r5273, r5274, r5275, r5276, r5277, r5278, r5279, r5280, r5281, r5282, r5283, r5284⟩ := seg52Out0_rows61 rho h
  unfold Seg52.relationRow5272 at r5272

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5272

  unfold Seg52.relationRow5273 at r5273

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5273

  unfold Seg52.relationRow5274 at r5274

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5274

  unfold Seg52.relationRow5275 at r5275

  unfold Seg52.relationRow5276 at r5276

  unfold Seg52.relationRow5277 at r5277

  unfold Seg52.relationRow5278 at r5278

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5278

  unfold Seg52.relationRow5279 at r5279

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5279

  unfold Seg52.relationRow5280 at r5280

  unfold Seg52.relationRow5281 at r5281

  unfold Seg52.relationRow5282 at r5282

  unfold Seg52.relationRow5283 at r5283

  unfold Seg52.relationRow5284 at r5284

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX62 rho = seg52Out0AccX61 rho + rho 49667 := by
    unfold seg52Out0AccX62 seg52Out0AccX61
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 61]

    ring

  have hnexty : seg52Out0AccY62 rho = seg52Out0AccY61 rho + rho 49668 := by
    unfold seg52Out0AccY62 seg52Out0AccY61
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 61]

    ring

  have ha0 : (rho 49659 + rho 49660) * (seg52Out0AccX61 rho + seg52Out0AccY61 rho) = rho 49661 := by
    unfold seg52Out0AccX61 seg52Out0AccY61
    linear_combination r5272
  have ha1 : rho 49660 * seg52Out0AccX61 rho = rho 49662 := by
    unfold seg52Out0AccX61
    linear_combination r5273
  have ha2 : rho 49659 * seg52Out0AccY61 rho = rho 49663 := by
    unfold seg52Out0AccY61
    linear_combination r5274
  have ha3 : 3021 * rho 49662 * rho 49663 = rho 49664 := by
    linear_combination r5275
  have ha4 : rho 49665 * (1 + rho 49664) = rho 49662 + rho 49663 := by
    linear_combination r5276
  have ha5 : rho 49666 * (1 - rho 49664) = rho 49661 - rho 49662 - rho 49663 := by
    linear_combination r5277
  have haddx :
      rho 49665 * (1 + 3021 * (rho 49660 * seg52Out0AccX61 rho) * (rho 49659 * seg52Out0AccY61 rho)) =
        rho 49660 * seg52Out0AccX61 rho + rho 49659 * seg52Out0AccY61 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49666 * (1 - 3021 * (rho 49660 * seg52Out0AccX61 rho) * (rho 49659 * seg52Out0AccY61 rho)) =
        (-1) * (rho 49660 * seg52Out0AccX61 rho) - rho 49659 * seg52Out0AccY61 rho +
          (seg52Out0AccY61 rho - seg52Out0AccX61 rho * (-1)) * (rho 49659 + rho 49660) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49666 * (1 - rho 49664) = rho 49661 - rho 49662 - rho 49663 := ha5
      _ = (-1) * rho 49662 - rho 49663 + (seg52Out0AccY61 rho - seg52Out0AccX61 rho * (-1)) *
          (rho 49659 + rho 49660) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX62 rho = seg52Out0AccX61 rho - Bool.toZMod bit * (seg52Out0AccX61 rho - rho 49665) := by
    have hd : rho 49667 = Bool.toZMod bit * (rho 49665 - seg52Out0AccX61 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX61
      linear_combination -r5278
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY62 rho = seg52Out0AccY61 rho - Bool.toZMod bit * (seg52Out0AccY61 rho - rho 49666) := by
    have hd : rho 49668 = Bool.toZMod bit * (rho 49666 - seg52Out0AccY61 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY61
      linear_combination -r5279
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49659 * rho 49660 = rho 49669 := by linear_combination r5280
  have hd1 : rho 49659 * rho 49659 = rho 49670 := by linear_combination r5281
  have hd2 : rho 49660 * rho 49660 = rho 49671 := by linear_combination r5282
  have hd3 : rho 49672 * (rho 49660 * rho 49660 + rho 49659 * rho 49659 * (-1)) =
      2 * (rho 49659 * rho 49660) := by
    rw [hd0, hd1, hd2]
    linear_combination r5283
  have hd4 : rho 49673 * (2 - (rho 49660 * rho 49660 + rho 49659 * rho 49659 * (-1))) =
      rho 49660 * rho 49660 - rho 49659 * rho 49659 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5284
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX61 rho, seg52Out0AccY61 rho⟩ ⟨rho 49659, rho 49660⟩
    ⟨rho 49665, rho 49666⟩ ⟨seg52Out0AccX62 rho, seg52Out0AccY62 rho⟩ ⟨rho 49672, rho 49673⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows62 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5285 rho ∧ Seg52.relationRow5286 rho ∧ Seg52.relationRow5287 rho ∧ Seg52.relationRow5288 rho ∧ Seg52.relationRow5289 rho ∧ Seg52.relationRow5290 rho ∧ Seg52.relationRow5291 rho ∧ Seg52.relationRow5292 rho ∧ Seg52.relationRow5293 rho ∧ Seg52.relationRow5294 rho ∧ Seg52.relationRow5295 rho ∧ Seg52.relationRow5296 rho ∧ Seg52.relationRow5297 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p66, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart66 at p66

  rcases p66 with ⟨_, _, _, _, _, r5285, r5286, r5287, r5288, r5289, r5290, r5291, r5292, r5293, r5294, r5295, r5296, r5297, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5285, r5286, r5287, r5288, r5289, r5290, r5291, r5292, r5293, r5294, r5295, r5296, r5297⟩

theorem seg52Out0_rung62 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48808 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX62 rho, seg52Out0AccY62 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49672, rho 49673⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX62 rho, seg52Out0AccY62 rho⟩ ⟨rho 49672, rho 49673⟩
        ⟨seg52Out0AccX63 rho, seg52Out0AccY63 rho⟩ ⟨rho 49685, rho 49686⟩ := by
  obtain ⟨r5285, r5286, r5287, r5288, r5289, r5290, r5291, r5292, r5293, r5294, r5295, r5296, r5297⟩ := seg52Out0_rows62 rho h
  unfold Seg52.relationRow5285 at r5285

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5285

  unfold Seg52.relationRow5286 at r5286

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5286

  unfold Seg52.relationRow5287 at r5287

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5287

  unfold Seg52.relationRow5288 at r5288

  unfold Seg52.relationRow5289 at r5289

  unfold Seg52.relationRow5290 at r5290

  unfold Seg52.relationRow5291 at r5291

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5291

  unfold Seg52.relationRow5292 at r5292

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5292

  unfold Seg52.relationRow5293 at r5293

  unfold Seg52.relationRow5294 at r5294

  unfold Seg52.relationRow5295 at r5295

  unfold Seg52.relationRow5296 at r5296

  unfold Seg52.relationRow5297 at r5297

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX63 rho = seg52Out0AccX62 rho + rho 49680 := by
    unfold seg52Out0AccX63 seg52Out0AccX62
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 62]

    ring

  have hnexty : seg52Out0AccY63 rho = seg52Out0AccY62 rho + rho 49681 := by
    unfold seg52Out0AccY63 seg52Out0AccY62
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 62]

    ring

  have ha0 : (rho 49672 + rho 49673) * (seg52Out0AccX62 rho + seg52Out0AccY62 rho) = rho 49674 := by
    unfold seg52Out0AccX62 seg52Out0AccY62
    linear_combination r5285
  have ha1 : rho 49673 * seg52Out0AccX62 rho = rho 49675 := by
    unfold seg52Out0AccX62
    linear_combination r5286
  have ha2 : rho 49672 * seg52Out0AccY62 rho = rho 49676 := by
    unfold seg52Out0AccY62
    linear_combination r5287
  have ha3 : 3021 * rho 49675 * rho 49676 = rho 49677 := by
    linear_combination r5288
  have ha4 : rho 49678 * (1 + rho 49677) = rho 49675 + rho 49676 := by
    linear_combination r5289
  have ha5 : rho 49679 * (1 - rho 49677) = rho 49674 - rho 49675 - rho 49676 := by
    linear_combination r5290
  have haddx :
      rho 49678 * (1 + 3021 * (rho 49673 * seg52Out0AccX62 rho) * (rho 49672 * seg52Out0AccY62 rho)) =
        rho 49673 * seg52Out0AccX62 rho + rho 49672 * seg52Out0AccY62 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49679 * (1 - 3021 * (rho 49673 * seg52Out0AccX62 rho) * (rho 49672 * seg52Out0AccY62 rho)) =
        (-1) * (rho 49673 * seg52Out0AccX62 rho) - rho 49672 * seg52Out0AccY62 rho +
          (seg52Out0AccY62 rho - seg52Out0AccX62 rho * (-1)) * (rho 49672 + rho 49673) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49679 * (1 - rho 49677) = rho 49674 - rho 49675 - rho 49676 := ha5
      _ = (-1) * rho 49675 - rho 49676 + (seg52Out0AccY62 rho - seg52Out0AccX62 rho * (-1)) *
          (rho 49672 + rho 49673) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX63 rho = seg52Out0AccX62 rho - Bool.toZMod bit * (seg52Out0AccX62 rho - rho 49678) := by
    have hd : rho 49680 = Bool.toZMod bit * (rho 49678 - seg52Out0AccX62 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX62
      linear_combination -r5291
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY63 rho = seg52Out0AccY62 rho - Bool.toZMod bit * (seg52Out0AccY62 rho - rho 49679) := by
    have hd : rho 49681 = Bool.toZMod bit * (rho 49679 - seg52Out0AccY62 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY62
      linear_combination -r5292
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49672 * rho 49673 = rho 49682 := by linear_combination r5293
  have hd1 : rho 49672 * rho 49672 = rho 49683 := by linear_combination r5294
  have hd2 : rho 49673 * rho 49673 = rho 49684 := by linear_combination r5295
  have hd3 : rho 49685 * (rho 49673 * rho 49673 + rho 49672 * rho 49672 * (-1)) =
      2 * (rho 49672 * rho 49673) := by
    rw [hd0, hd1, hd2]
    linear_combination r5296
  have hd4 : rho 49686 * (2 - (rho 49673 * rho 49673 + rho 49672 * rho 49672 * (-1))) =
      rho 49673 * rho 49673 - rho 49672 * rho 49672 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5297
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX62 rho, seg52Out0AccY62 rho⟩ ⟨rho 49672, rho 49673⟩
    ⟨rho 49678, rho 49679⟩ ⟨seg52Out0AccX63 rho, seg52Out0AccY63 rho⟩ ⟨rho 49685, rho 49686⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows63 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5298 rho ∧ Seg52.relationRow5299 rho ∧ Seg52.relationRow5300 rho ∧ Seg52.relationRow5301 rho ∧ Seg52.relationRow5302 rho ∧ Seg52.relationRow5303 rho ∧ Seg52.relationRow5304 rho ∧ Seg52.relationRow5305 rho ∧ Seg52.relationRow5306 rho ∧ Seg52.relationRow5307 rho ∧ Seg52.relationRow5308 rho ∧ Seg52.relationRow5309 rho ∧ Seg52.relationRow5310 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p66, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart66 at p66

  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5298, r5299, r5300, r5301, r5302, r5303, r5304, r5305, r5306, r5307, r5308, r5309, r5310, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5298, r5299, r5300, r5301, r5302, r5303, r5304, r5305, r5306, r5307, r5308, r5309, r5310⟩

theorem seg52Out0_rung63 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48809 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX63 rho, seg52Out0AccY63 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49685, rho 49686⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX63 rho, seg52Out0AccY63 rho⟩ ⟨rho 49685, rho 49686⟩
        ⟨seg52Out0AccX64 rho, seg52Out0AccY64 rho⟩ ⟨rho 49698, rho 49699⟩ := by
  obtain ⟨r5298, r5299, r5300, r5301, r5302, r5303, r5304, r5305, r5306, r5307, r5308, r5309, r5310⟩ := seg52Out0_rows63 rho h
  unfold Seg52.relationRow5298 at r5298

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5298

  unfold Seg52.relationRow5299 at r5299

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5299

  unfold Seg52.relationRow5300 at r5300

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5300

  unfold Seg52.relationRow5301 at r5301

  unfold Seg52.relationRow5302 at r5302

  unfold Seg52.relationRow5303 at r5303

  unfold Seg52.relationRow5304 at r5304

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5304

  unfold Seg52.relationRow5305 at r5305

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5305

  unfold Seg52.relationRow5306 at r5306

  unfold Seg52.relationRow5307 at r5307

  unfold Seg52.relationRow5308 at r5308

  unfold Seg52.relationRow5309 at r5309

  unfold Seg52.relationRow5310 at r5310

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX64 rho = seg52Out0AccX63 rho + rho 49693 := by
    unfold seg52Out0AccX64 seg52Out0AccX63
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 63]

    ring

  have hnexty : seg52Out0AccY64 rho = seg52Out0AccY63 rho + rho 49694 := by
    unfold seg52Out0AccY64 seg52Out0AccY63
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 63]

    ring

  have ha0 : (rho 49685 + rho 49686) * (seg52Out0AccX63 rho + seg52Out0AccY63 rho) = rho 49687 := by
    unfold seg52Out0AccX63 seg52Out0AccY63
    linear_combination r5298
  have ha1 : rho 49686 * seg52Out0AccX63 rho = rho 49688 := by
    unfold seg52Out0AccX63
    linear_combination r5299
  have ha2 : rho 49685 * seg52Out0AccY63 rho = rho 49689 := by
    unfold seg52Out0AccY63
    linear_combination r5300
  have ha3 : 3021 * rho 49688 * rho 49689 = rho 49690 := by
    linear_combination r5301
  have ha4 : rho 49691 * (1 + rho 49690) = rho 49688 + rho 49689 := by
    linear_combination r5302
  have ha5 : rho 49692 * (1 - rho 49690) = rho 49687 - rho 49688 - rho 49689 := by
    linear_combination r5303
  have haddx :
      rho 49691 * (1 + 3021 * (rho 49686 * seg52Out0AccX63 rho) * (rho 49685 * seg52Out0AccY63 rho)) =
        rho 49686 * seg52Out0AccX63 rho + rho 49685 * seg52Out0AccY63 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49692 * (1 - 3021 * (rho 49686 * seg52Out0AccX63 rho) * (rho 49685 * seg52Out0AccY63 rho)) =
        (-1) * (rho 49686 * seg52Out0AccX63 rho) - rho 49685 * seg52Out0AccY63 rho +
          (seg52Out0AccY63 rho - seg52Out0AccX63 rho * (-1)) * (rho 49685 + rho 49686) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49692 * (1 - rho 49690) = rho 49687 - rho 49688 - rho 49689 := ha5
      _ = (-1) * rho 49688 - rho 49689 + (seg52Out0AccY63 rho - seg52Out0AccX63 rho * (-1)) *
          (rho 49685 + rho 49686) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX64 rho = seg52Out0AccX63 rho - Bool.toZMod bit * (seg52Out0AccX63 rho - rho 49691) := by
    have hd : rho 49693 = Bool.toZMod bit * (rho 49691 - seg52Out0AccX63 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX63
      linear_combination -r5304
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY64 rho = seg52Out0AccY63 rho - Bool.toZMod bit * (seg52Out0AccY63 rho - rho 49692) := by
    have hd : rho 49694 = Bool.toZMod bit * (rho 49692 - seg52Out0AccY63 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY63
      linear_combination -r5305
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49685 * rho 49686 = rho 49695 := by linear_combination r5306
  have hd1 : rho 49685 * rho 49685 = rho 49696 := by linear_combination r5307
  have hd2 : rho 49686 * rho 49686 = rho 49697 := by linear_combination r5308
  have hd3 : rho 49698 * (rho 49686 * rho 49686 + rho 49685 * rho 49685 * (-1)) =
      2 * (rho 49685 * rho 49686) := by
    rw [hd0, hd1, hd2]
    linear_combination r5309
  have hd4 : rho 49699 * (2 - (rho 49686 * rho 49686 + rho 49685 * rho 49685 * (-1))) =
      rho 49686 * rho 49686 - rho 49685 * rho 49685 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5310
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX63 rho, seg52Out0AccY63 rho⟩ ⟨rho 49685, rho 49686⟩
    ⟨rho 49691, rho 49692⟩ ⟨seg52Out0AccX64 rho, seg52Out0AccY64 rho⟩ ⟨rho 49698, rho 49699⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows64 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5311 rho ∧ Seg52.relationRow5312 rho ∧ Seg52.relationRow5313 rho ∧ Seg52.relationRow5314 rho ∧ Seg52.relationRow5315 rho ∧ Seg52.relationRow5316 rho ∧ Seg52.relationRow5317 rho ∧ Seg52.relationRow5318 rho ∧ Seg52.relationRow5319 rho ∧ Seg52.relationRow5320 rho ∧ Seg52.relationRow5321 rho ∧ Seg52.relationRow5322 rho ∧ Seg52.relationRow5323 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p66, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart66 at p66

  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5311, r5312, r5313, r5314, r5315, r5316, r5317, r5318, r5319, r5320, r5321, r5322, r5323, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5311, r5312, r5313, r5314, r5315, r5316, r5317, r5318, r5319, r5320, r5321, r5322, r5323⟩

theorem seg52Out0_rung64 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48810 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX64 rho, seg52Out0AccY64 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49698, rho 49699⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX64 rho, seg52Out0AccY64 rho⟩ ⟨rho 49698, rho 49699⟩
        ⟨seg52Out0AccX65 rho, seg52Out0AccY65 rho⟩ ⟨rho 49711, rho 49712⟩ := by
  obtain ⟨r5311, r5312, r5313, r5314, r5315, r5316, r5317, r5318, r5319, r5320, r5321, r5322, r5323⟩ := seg52Out0_rows64 rho h
  unfold Seg52.relationRow5311 at r5311

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5311

  unfold Seg52.relationRow5312 at r5312

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5312

  unfold Seg52.relationRow5313 at r5313

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5313

  unfold Seg52.relationRow5314 at r5314

  unfold Seg52.relationRow5315 at r5315

  unfold Seg52.relationRow5316 at r5316

  unfold Seg52.relationRow5317 at r5317

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5317

  unfold Seg52.relationRow5318 at r5318

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5318

  unfold Seg52.relationRow5319 at r5319

  unfold Seg52.relationRow5320 at r5320

  unfold Seg52.relationRow5321 at r5321

  unfold Seg52.relationRow5322 at r5322

  unfold Seg52.relationRow5323 at r5323

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX65 rho = seg52Out0AccX64 rho + rho 49706 := by
    unfold seg52Out0AccX65 seg52Out0AccX64
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 64]

    ring

  have hnexty : seg52Out0AccY65 rho = seg52Out0AccY64 rho + rho 49707 := by
    unfold seg52Out0AccY65 seg52Out0AccY64
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 64]

    ring

  have ha0 : (rho 49698 + rho 49699) * (seg52Out0AccX64 rho + seg52Out0AccY64 rho) = rho 49700 := by
    unfold seg52Out0AccX64 seg52Out0AccY64
    linear_combination r5311
  have ha1 : rho 49699 * seg52Out0AccX64 rho = rho 49701 := by
    unfold seg52Out0AccX64
    linear_combination r5312
  have ha2 : rho 49698 * seg52Out0AccY64 rho = rho 49702 := by
    unfold seg52Out0AccY64
    linear_combination r5313
  have ha3 : 3021 * rho 49701 * rho 49702 = rho 49703 := by
    linear_combination r5314
  have ha4 : rho 49704 * (1 + rho 49703) = rho 49701 + rho 49702 := by
    linear_combination r5315
  have ha5 : rho 49705 * (1 - rho 49703) = rho 49700 - rho 49701 - rho 49702 := by
    linear_combination r5316
  have haddx :
      rho 49704 * (1 + 3021 * (rho 49699 * seg52Out0AccX64 rho) * (rho 49698 * seg52Out0AccY64 rho)) =
        rho 49699 * seg52Out0AccX64 rho + rho 49698 * seg52Out0AccY64 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49705 * (1 - 3021 * (rho 49699 * seg52Out0AccX64 rho) * (rho 49698 * seg52Out0AccY64 rho)) =
        (-1) * (rho 49699 * seg52Out0AccX64 rho) - rho 49698 * seg52Out0AccY64 rho +
          (seg52Out0AccY64 rho - seg52Out0AccX64 rho * (-1)) * (rho 49698 + rho 49699) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49705 * (1 - rho 49703) = rho 49700 - rho 49701 - rho 49702 := ha5
      _ = (-1) * rho 49701 - rho 49702 + (seg52Out0AccY64 rho - seg52Out0AccX64 rho * (-1)) *
          (rho 49698 + rho 49699) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX65 rho = seg52Out0AccX64 rho - Bool.toZMod bit * (seg52Out0AccX64 rho - rho 49704) := by
    have hd : rho 49706 = Bool.toZMod bit * (rho 49704 - seg52Out0AccX64 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX64
      linear_combination -r5317
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY65 rho = seg52Out0AccY64 rho - Bool.toZMod bit * (seg52Out0AccY64 rho - rho 49705) := by
    have hd : rho 49707 = Bool.toZMod bit * (rho 49705 - seg52Out0AccY64 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY64
      linear_combination -r5318
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49698 * rho 49699 = rho 49708 := by linear_combination r5319
  have hd1 : rho 49698 * rho 49698 = rho 49709 := by linear_combination r5320
  have hd2 : rho 49699 * rho 49699 = rho 49710 := by linear_combination r5321
  have hd3 : rho 49711 * (rho 49699 * rho 49699 + rho 49698 * rho 49698 * (-1)) =
      2 * (rho 49698 * rho 49699) := by
    rw [hd0, hd1, hd2]
    linear_combination r5322
  have hd4 : rho 49712 * (2 - (rho 49699 * rho 49699 + rho 49698 * rho 49698 * (-1))) =
      rho 49699 * rho 49699 - rho 49698 * rho 49698 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5323
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX64 rho, seg52Out0AccY64 rho⟩ ⟨rho 49698, rho 49699⟩
    ⟨rho 49704, rho 49705⟩ ⟨seg52Out0AccX65 rho, seg52Out0AccY65 rho⟩ ⟨rho 49711, rho 49712⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows65 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5324 rho ∧ Seg52.relationRow5325 rho ∧ Seg52.relationRow5326 rho ∧ Seg52.relationRow5327 rho ∧ Seg52.relationRow5328 rho ∧ Seg52.relationRow5329 rho ∧ Seg52.relationRow5330 rho ∧ Seg52.relationRow5331 rho ∧ Seg52.relationRow5332 rho ∧ Seg52.relationRow5333 rho ∧ Seg52.relationRow5334 rho ∧ Seg52.relationRow5335 rho ∧ Seg52.relationRow5336 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p66, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart66 at p66

  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5324, r5325, r5326, r5327, r5328, r5329, r5330, r5331, r5332, r5333, r5334, r5335, r5336, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5324, r5325, r5326, r5327, r5328, r5329, r5330, r5331, r5332, r5333, r5334, r5335, r5336⟩

theorem seg52Out0_rung65 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48811 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX65 rho, seg52Out0AccY65 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49711, rho 49712⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX65 rho, seg52Out0AccY65 rho⟩ ⟨rho 49711, rho 49712⟩
        ⟨seg52Out0AccX66 rho, seg52Out0AccY66 rho⟩ ⟨rho 49724, rho 49725⟩ := by
  obtain ⟨r5324, r5325, r5326, r5327, r5328, r5329, r5330, r5331, r5332, r5333, r5334, r5335, r5336⟩ := seg52Out0_rows65 rho h
  unfold Seg52.relationRow5324 at r5324

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5324

  unfold Seg52.relationRow5325 at r5325

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5325

  unfold Seg52.relationRow5326 at r5326

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5326

  unfold Seg52.relationRow5327 at r5327

  unfold Seg52.relationRow5328 at r5328

  unfold Seg52.relationRow5329 at r5329

  unfold Seg52.relationRow5330 at r5330

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5330

  unfold Seg52.relationRow5331 at r5331

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5331

  unfold Seg52.relationRow5332 at r5332

  unfold Seg52.relationRow5333 at r5333

  unfold Seg52.relationRow5334 at r5334

  unfold Seg52.relationRow5335 at r5335

  unfold Seg52.relationRow5336 at r5336

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX66 rho = seg52Out0AccX65 rho + rho 49719 := by
    unfold seg52Out0AccX66 seg52Out0AccX65
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 65]

    ring

  have hnexty : seg52Out0AccY66 rho = seg52Out0AccY65 rho + rho 49720 := by
    unfold seg52Out0AccY66 seg52Out0AccY65
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 65]

    ring

  have ha0 : (rho 49711 + rho 49712) * (seg52Out0AccX65 rho + seg52Out0AccY65 rho) = rho 49713 := by
    unfold seg52Out0AccX65 seg52Out0AccY65
    linear_combination r5324
  have ha1 : rho 49712 * seg52Out0AccX65 rho = rho 49714 := by
    unfold seg52Out0AccX65
    linear_combination r5325
  have ha2 : rho 49711 * seg52Out0AccY65 rho = rho 49715 := by
    unfold seg52Out0AccY65
    linear_combination r5326
  have ha3 : 3021 * rho 49714 * rho 49715 = rho 49716 := by
    linear_combination r5327
  have ha4 : rho 49717 * (1 + rho 49716) = rho 49714 + rho 49715 := by
    linear_combination r5328
  have ha5 : rho 49718 * (1 - rho 49716) = rho 49713 - rho 49714 - rho 49715 := by
    linear_combination r5329
  have haddx :
      rho 49717 * (1 + 3021 * (rho 49712 * seg52Out0AccX65 rho) * (rho 49711 * seg52Out0AccY65 rho)) =
        rho 49712 * seg52Out0AccX65 rho + rho 49711 * seg52Out0AccY65 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49718 * (1 - 3021 * (rho 49712 * seg52Out0AccX65 rho) * (rho 49711 * seg52Out0AccY65 rho)) =
        (-1) * (rho 49712 * seg52Out0AccX65 rho) - rho 49711 * seg52Out0AccY65 rho +
          (seg52Out0AccY65 rho - seg52Out0AccX65 rho * (-1)) * (rho 49711 + rho 49712) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49718 * (1 - rho 49716) = rho 49713 - rho 49714 - rho 49715 := ha5
      _ = (-1) * rho 49714 - rho 49715 + (seg52Out0AccY65 rho - seg52Out0AccX65 rho * (-1)) *
          (rho 49711 + rho 49712) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX66 rho = seg52Out0AccX65 rho - Bool.toZMod bit * (seg52Out0AccX65 rho - rho 49717) := by
    have hd : rho 49719 = Bool.toZMod bit * (rho 49717 - seg52Out0AccX65 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX65
      linear_combination -r5330
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY66 rho = seg52Out0AccY65 rho - Bool.toZMod bit * (seg52Out0AccY65 rho - rho 49718) := by
    have hd : rho 49720 = Bool.toZMod bit * (rho 49718 - seg52Out0AccY65 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY65
      linear_combination -r5331
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49711 * rho 49712 = rho 49721 := by linear_combination r5332
  have hd1 : rho 49711 * rho 49711 = rho 49722 := by linear_combination r5333
  have hd2 : rho 49712 * rho 49712 = rho 49723 := by linear_combination r5334
  have hd3 : rho 49724 * (rho 49712 * rho 49712 + rho 49711 * rho 49711 * (-1)) =
      2 * (rho 49711 * rho 49712) := by
    rw [hd0, hd1, hd2]
    linear_combination r5335
  have hd4 : rho 49725 * (2 - (rho 49712 * rho 49712 + rho 49711 * rho 49711 * (-1))) =
      rho 49712 * rho 49712 - rho 49711 * rho 49711 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5336
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX65 rho, seg52Out0AccY65 rho⟩ ⟨rho 49711, rho 49712⟩
    ⟨rho 49717, rho 49718⟩ ⟨seg52Out0AccX66 rho, seg52Out0AccY66 rho⟩ ⟨rho 49724, rho 49725⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_hstep_c5 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (48746 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 55 ≤ i → i < 66 →
      EdwardsBridge.onCurve (seg52Out0AccState rho i) →
      EdwardsBridge.onCurve (seg52Out0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52Out0AccState rho i) (seg52Out0CurState rho i)
        (seg52Out0AccState rho (i + 1)) (seg52Out0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52Out0_rung55 rho h bits[55]! (hbitAt 55 (by omega)) hacc hcur
  · exact seg52Out0_rung56 rho h bits[56]! (hbitAt 56 (by omega)) hacc hcur
  · exact seg52Out0_rung57 rho h bits[57]! (hbitAt 57 (by omega)) hacc hcur
  · exact seg52Out0_rung58 rho h bits[58]! (hbitAt 58 (by omega)) hacc hcur
  · exact seg52Out0_rung59 rho h bits[59]! (hbitAt 59 (by omega)) hacc hcur
  · exact seg52Out0_rung60 rho h bits[60]! (hbitAt 60 (by omega)) hacc hcur
  · exact seg52Out0_rung61 rho h bits[61]! (hbitAt 61 (by omega)) hacc hcur
  · exact seg52Out0_rung62 rho h bits[62]! (hbitAt 62 (by omega)) hacc hcur
  · exact seg52Out0_rung63 rho h bits[63]! (hbitAt 63 (by omega)) hacc hcur
  · exact seg52Out0_rung64 rho h bits[64]! (hbitAt 64 (by omega)) hacc hcur
  · exact seg52Out0_rung65 rho h bits[65]! (hbitAt 65 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
