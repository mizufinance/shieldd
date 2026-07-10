import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48Out0_rows55 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5194 rho ∧ Seg48.relationRow5195 rho ∧ Seg48.relationRow5196 rho ∧ Seg48.relationRow5197 rho ∧ Seg48.relationRow5198 rho ∧ Seg48.relationRow5199 rho ∧ Seg48.relationRow5200 rho ∧ Seg48.relationRow5201 rho ∧ Seg48.relationRow5202 rho ∧ Seg48.relationRow5203 rho ∧ Seg48.relationRow5204 rho ∧ Seg48.relationRow5205 rho ∧ Seg48.relationRow5206 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart64 at p64

  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5194, r5195, r5196, r5197, r5198, r5199⟩

  unfold Seg48.relationPart65 at p65

  rcases p65 with ⟨r5200, r5201, r5202, r5203, r5204, r5205, r5206, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5194, r5195, r5196, r5197, r5198, r5199, r5200, r5201, r5202, r5203, r5204, r5205, r5206⟩

theorem seg48Out0_rung55 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37169 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX55 rho, seg48Out0AccY55 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37949, rho 37950⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX55 rho, seg48Out0AccY55 rho⟩ ⟨rho 37949, rho 37950⟩
        ⟨seg48Out0AccX56 rho, seg48Out0AccY56 rho⟩ ⟨rho 37962, rho 37963⟩ := by
  obtain ⟨r5194, r5195, r5196, r5197, r5198, r5199, r5200, r5201, r5202, r5203, r5204, r5205, r5206⟩ := seg48Out0_rows55 rho h
  unfold Seg48.relationRow5194 at r5194

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5194

  unfold Seg48.relationRow5195 at r5195

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5195

  unfold Seg48.relationRow5196 at r5196

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5196

  unfold Seg48.relationRow5197 at r5197

  unfold Seg48.relationRow5198 at r5198

  unfold Seg48.relationRow5199 at r5199

  unfold Seg48.relationRow5200 at r5200

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5200

  unfold Seg48.relationRow5201 at r5201

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5201

  unfold Seg48.relationRow5202 at r5202

  unfold Seg48.relationRow5203 at r5203

  unfold Seg48.relationRow5204 at r5204

  unfold Seg48.relationRow5205 at r5205

  unfold Seg48.relationRow5206 at r5206

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX56 rho = seg48Out0AccX55 rho + rho 37957 := by
    unfold seg48Out0AccX56 seg48Out0AccX55
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 55]

    ring

  have hnexty : seg48Out0AccY56 rho = seg48Out0AccY55 rho + rho 37958 := by
    unfold seg48Out0AccY56 seg48Out0AccY55
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 55]

    ring

  have ha0 : (rho 37949 + rho 37950) * (seg48Out0AccX55 rho + seg48Out0AccY55 rho) = rho 37951 := by
    unfold seg48Out0AccX55 seg48Out0AccY55
    linear_combination r5194
  have ha1 : rho 37950 * seg48Out0AccX55 rho = rho 37952 := by
    unfold seg48Out0AccX55
    linear_combination r5195
  have ha2 : rho 37949 * seg48Out0AccY55 rho = rho 37953 := by
    unfold seg48Out0AccY55
    linear_combination r5196
  have ha3 : 3021 * rho 37952 * rho 37953 = rho 37954 := by
    linear_combination r5197
  have ha4 : rho 37955 * (1 + rho 37954) = rho 37952 + rho 37953 := by
    linear_combination r5198
  have ha5 : rho 37956 * (1 - rho 37954) = rho 37951 - rho 37952 - rho 37953 := by
    linear_combination r5199
  have haddx :
      rho 37955 * (1 + 3021 * (rho 37950 * seg48Out0AccX55 rho) * (rho 37949 * seg48Out0AccY55 rho)) =
        rho 37950 * seg48Out0AccX55 rho + rho 37949 * seg48Out0AccY55 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37956 * (1 - 3021 * (rho 37950 * seg48Out0AccX55 rho) * (rho 37949 * seg48Out0AccY55 rho)) =
        (-1) * (rho 37950 * seg48Out0AccX55 rho) - rho 37949 * seg48Out0AccY55 rho +
          (seg48Out0AccY55 rho - seg48Out0AccX55 rho * (-1)) * (rho 37949 + rho 37950) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37956 * (1 - rho 37954) = rho 37951 - rho 37952 - rho 37953 := ha5
      _ = (-1) * rho 37952 - rho 37953 + (seg48Out0AccY55 rho - seg48Out0AccX55 rho * (-1)) *
          (rho 37949 + rho 37950) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX56 rho = seg48Out0AccX55 rho - Bool.toZMod bit * (seg48Out0AccX55 rho - rho 37955) := by
    have hd : rho 37957 = Bool.toZMod bit * (rho 37955 - seg48Out0AccX55 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX55
      linear_combination -r5200
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY56 rho = seg48Out0AccY55 rho - Bool.toZMod bit * (seg48Out0AccY55 rho - rho 37956) := by
    have hd : rho 37958 = Bool.toZMod bit * (rho 37956 - seg48Out0AccY55 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY55
      linear_combination -r5201
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37949 * rho 37950 = rho 37959 := by linear_combination r5202
  have hd1 : rho 37949 * rho 37949 = rho 37960 := by linear_combination r5203
  have hd2 : rho 37950 * rho 37950 = rho 37961 := by linear_combination r5204
  have hd3 : rho 37962 * (rho 37950 * rho 37950 + rho 37949 * rho 37949 * (-1)) =
      2 * (rho 37949 * rho 37950) := by
    rw [hd0, hd1, hd2]
    linear_combination r5205
  have hd4 : rho 37963 * (2 - (rho 37950 * rho 37950 + rho 37949 * rho 37949 * (-1))) =
      rho 37950 * rho 37950 - rho 37949 * rho 37949 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5206
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX55 rho, seg48Out0AccY55 rho⟩ ⟨rho 37949, rho 37950⟩
    ⟨rho 37955, rho 37956⟩ ⟨seg48Out0AccX56 rho, seg48Out0AccY56 rho⟩ ⟨rho 37962, rho 37963⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows56 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5207 rho ∧ Seg48.relationRow5208 rho ∧ Seg48.relationRow5209 rho ∧ Seg48.relationRow5210 rho ∧ Seg48.relationRow5211 rho ∧ Seg48.relationRow5212 rho ∧ Seg48.relationRow5213 rho ∧ Seg48.relationRow5214 rho ∧ Seg48.relationRow5215 rho ∧ Seg48.relationRow5216 rho ∧ Seg48.relationRow5217 rho ∧ Seg48.relationRow5218 rho ∧ Seg48.relationRow5219 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart65 at p65

  rcases p65 with ⟨_, _, _, _, _, _, _, r5207, r5208, r5209, r5210, r5211, r5212, r5213, r5214, r5215, r5216, r5217, r5218, r5219, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5207, r5208, r5209, r5210, r5211, r5212, r5213, r5214, r5215, r5216, r5217, r5218, r5219⟩

theorem seg48Out0_rung56 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37170 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX56 rho, seg48Out0AccY56 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37962, rho 37963⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX56 rho, seg48Out0AccY56 rho⟩ ⟨rho 37962, rho 37963⟩
        ⟨seg48Out0AccX57 rho, seg48Out0AccY57 rho⟩ ⟨rho 37975, rho 37976⟩ := by
  obtain ⟨r5207, r5208, r5209, r5210, r5211, r5212, r5213, r5214, r5215, r5216, r5217, r5218, r5219⟩ := seg48Out0_rows56 rho h
  unfold Seg48.relationRow5207 at r5207

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5207

  unfold Seg48.relationRow5208 at r5208

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5208

  unfold Seg48.relationRow5209 at r5209

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5209

  unfold Seg48.relationRow5210 at r5210

  unfold Seg48.relationRow5211 at r5211

  unfold Seg48.relationRow5212 at r5212

  unfold Seg48.relationRow5213 at r5213

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5213

  unfold Seg48.relationRow5214 at r5214

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5214

  unfold Seg48.relationRow5215 at r5215

  unfold Seg48.relationRow5216 at r5216

  unfold Seg48.relationRow5217 at r5217

  unfold Seg48.relationRow5218 at r5218

  unfold Seg48.relationRow5219 at r5219

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX57 rho = seg48Out0AccX56 rho + rho 37970 := by
    unfold seg48Out0AccX57 seg48Out0AccX56
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 56]

    ring

  have hnexty : seg48Out0AccY57 rho = seg48Out0AccY56 rho + rho 37971 := by
    unfold seg48Out0AccY57 seg48Out0AccY56
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 56]

    ring

  have ha0 : (rho 37962 + rho 37963) * (seg48Out0AccX56 rho + seg48Out0AccY56 rho) = rho 37964 := by
    unfold seg48Out0AccX56 seg48Out0AccY56
    linear_combination r5207
  have ha1 : rho 37963 * seg48Out0AccX56 rho = rho 37965 := by
    unfold seg48Out0AccX56
    linear_combination r5208
  have ha2 : rho 37962 * seg48Out0AccY56 rho = rho 37966 := by
    unfold seg48Out0AccY56
    linear_combination r5209
  have ha3 : 3021 * rho 37965 * rho 37966 = rho 37967 := by
    linear_combination r5210
  have ha4 : rho 37968 * (1 + rho 37967) = rho 37965 + rho 37966 := by
    linear_combination r5211
  have ha5 : rho 37969 * (1 - rho 37967) = rho 37964 - rho 37965 - rho 37966 := by
    linear_combination r5212
  have haddx :
      rho 37968 * (1 + 3021 * (rho 37963 * seg48Out0AccX56 rho) * (rho 37962 * seg48Out0AccY56 rho)) =
        rho 37963 * seg48Out0AccX56 rho + rho 37962 * seg48Out0AccY56 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37969 * (1 - 3021 * (rho 37963 * seg48Out0AccX56 rho) * (rho 37962 * seg48Out0AccY56 rho)) =
        (-1) * (rho 37963 * seg48Out0AccX56 rho) - rho 37962 * seg48Out0AccY56 rho +
          (seg48Out0AccY56 rho - seg48Out0AccX56 rho * (-1)) * (rho 37962 + rho 37963) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37969 * (1 - rho 37967) = rho 37964 - rho 37965 - rho 37966 := ha5
      _ = (-1) * rho 37965 - rho 37966 + (seg48Out0AccY56 rho - seg48Out0AccX56 rho * (-1)) *
          (rho 37962 + rho 37963) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX57 rho = seg48Out0AccX56 rho - Bool.toZMod bit * (seg48Out0AccX56 rho - rho 37968) := by
    have hd : rho 37970 = Bool.toZMod bit * (rho 37968 - seg48Out0AccX56 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX56
      linear_combination -r5213
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY57 rho = seg48Out0AccY56 rho - Bool.toZMod bit * (seg48Out0AccY56 rho - rho 37969) := by
    have hd : rho 37971 = Bool.toZMod bit * (rho 37969 - seg48Out0AccY56 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY56
      linear_combination -r5214
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37962 * rho 37963 = rho 37972 := by linear_combination r5215
  have hd1 : rho 37962 * rho 37962 = rho 37973 := by linear_combination r5216
  have hd2 : rho 37963 * rho 37963 = rho 37974 := by linear_combination r5217
  have hd3 : rho 37975 * (rho 37963 * rho 37963 + rho 37962 * rho 37962 * (-1)) =
      2 * (rho 37962 * rho 37963) := by
    rw [hd0, hd1, hd2]
    linear_combination r5218
  have hd4 : rho 37976 * (2 - (rho 37963 * rho 37963 + rho 37962 * rho 37962 * (-1))) =
      rho 37963 * rho 37963 - rho 37962 * rho 37962 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5219
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX56 rho, seg48Out0AccY56 rho⟩ ⟨rho 37962, rho 37963⟩
    ⟨rho 37968, rho 37969⟩ ⟨seg48Out0AccX57 rho, seg48Out0AccY57 rho⟩ ⟨rho 37975, rho 37976⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows57 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5220 rho ∧ Seg48.relationRow5221 rho ∧ Seg48.relationRow5222 rho ∧ Seg48.relationRow5223 rho ∧ Seg48.relationRow5224 rho ∧ Seg48.relationRow5225 rho ∧ Seg48.relationRow5226 rho ∧ Seg48.relationRow5227 rho ∧ Seg48.relationRow5228 rho ∧ Seg48.relationRow5229 rho ∧ Seg48.relationRow5230 rho ∧ Seg48.relationRow5231 rho ∧ Seg48.relationRow5232 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart65 at p65

  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5220, r5221, r5222, r5223, r5224, r5225, r5226, r5227, r5228, r5229, r5230, r5231, r5232, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5220, r5221, r5222, r5223, r5224, r5225, r5226, r5227, r5228, r5229, r5230, r5231, r5232⟩

theorem seg48Out0_rung57 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37171 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX57 rho, seg48Out0AccY57 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37975, rho 37976⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX57 rho, seg48Out0AccY57 rho⟩ ⟨rho 37975, rho 37976⟩
        ⟨seg48Out0AccX58 rho, seg48Out0AccY58 rho⟩ ⟨rho 37988, rho 37989⟩ := by
  obtain ⟨r5220, r5221, r5222, r5223, r5224, r5225, r5226, r5227, r5228, r5229, r5230, r5231, r5232⟩ := seg48Out0_rows57 rho h
  unfold Seg48.relationRow5220 at r5220

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5220

  unfold Seg48.relationRow5221 at r5221

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5221

  unfold Seg48.relationRow5222 at r5222

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5222

  unfold Seg48.relationRow5223 at r5223

  unfold Seg48.relationRow5224 at r5224

  unfold Seg48.relationRow5225 at r5225

  unfold Seg48.relationRow5226 at r5226

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5226

  unfold Seg48.relationRow5227 at r5227

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5227

  unfold Seg48.relationRow5228 at r5228

  unfold Seg48.relationRow5229 at r5229

  unfold Seg48.relationRow5230 at r5230

  unfold Seg48.relationRow5231 at r5231

  unfold Seg48.relationRow5232 at r5232

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX58 rho = seg48Out0AccX57 rho + rho 37983 := by
    unfold seg48Out0AccX58 seg48Out0AccX57
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 57]

    ring

  have hnexty : seg48Out0AccY58 rho = seg48Out0AccY57 rho + rho 37984 := by
    unfold seg48Out0AccY58 seg48Out0AccY57
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 57]

    ring

  have ha0 : (rho 37975 + rho 37976) * (seg48Out0AccX57 rho + seg48Out0AccY57 rho) = rho 37977 := by
    unfold seg48Out0AccX57 seg48Out0AccY57
    linear_combination r5220
  have ha1 : rho 37976 * seg48Out0AccX57 rho = rho 37978 := by
    unfold seg48Out0AccX57
    linear_combination r5221
  have ha2 : rho 37975 * seg48Out0AccY57 rho = rho 37979 := by
    unfold seg48Out0AccY57
    linear_combination r5222
  have ha3 : 3021 * rho 37978 * rho 37979 = rho 37980 := by
    linear_combination r5223
  have ha4 : rho 37981 * (1 + rho 37980) = rho 37978 + rho 37979 := by
    linear_combination r5224
  have ha5 : rho 37982 * (1 - rho 37980) = rho 37977 - rho 37978 - rho 37979 := by
    linear_combination r5225
  have haddx :
      rho 37981 * (1 + 3021 * (rho 37976 * seg48Out0AccX57 rho) * (rho 37975 * seg48Out0AccY57 rho)) =
        rho 37976 * seg48Out0AccX57 rho + rho 37975 * seg48Out0AccY57 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37982 * (1 - 3021 * (rho 37976 * seg48Out0AccX57 rho) * (rho 37975 * seg48Out0AccY57 rho)) =
        (-1) * (rho 37976 * seg48Out0AccX57 rho) - rho 37975 * seg48Out0AccY57 rho +
          (seg48Out0AccY57 rho - seg48Out0AccX57 rho * (-1)) * (rho 37975 + rho 37976) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37982 * (1 - rho 37980) = rho 37977 - rho 37978 - rho 37979 := ha5
      _ = (-1) * rho 37978 - rho 37979 + (seg48Out0AccY57 rho - seg48Out0AccX57 rho * (-1)) *
          (rho 37975 + rho 37976) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX58 rho = seg48Out0AccX57 rho - Bool.toZMod bit * (seg48Out0AccX57 rho - rho 37981) := by
    have hd : rho 37983 = Bool.toZMod bit * (rho 37981 - seg48Out0AccX57 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX57
      linear_combination -r5226
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY58 rho = seg48Out0AccY57 rho - Bool.toZMod bit * (seg48Out0AccY57 rho - rho 37982) := by
    have hd : rho 37984 = Bool.toZMod bit * (rho 37982 - seg48Out0AccY57 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY57
      linear_combination -r5227
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37975 * rho 37976 = rho 37985 := by linear_combination r5228
  have hd1 : rho 37975 * rho 37975 = rho 37986 := by linear_combination r5229
  have hd2 : rho 37976 * rho 37976 = rho 37987 := by linear_combination r5230
  have hd3 : rho 37988 * (rho 37976 * rho 37976 + rho 37975 * rho 37975 * (-1)) =
      2 * (rho 37975 * rho 37976) := by
    rw [hd0, hd1, hd2]
    linear_combination r5231
  have hd4 : rho 37989 * (2 - (rho 37976 * rho 37976 + rho 37975 * rho 37975 * (-1))) =
      rho 37976 * rho 37976 - rho 37975 * rho 37975 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5232
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX57 rho, seg48Out0AccY57 rho⟩ ⟨rho 37975, rho 37976⟩
    ⟨rho 37981, rho 37982⟩ ⟨seg48Out0AccX58 rho, seg48Out0AccY58 rho⟩ ⟨rho 37988, rho 37989⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows58 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5233 rho ∧ Seg48.relationRow5234 rho ∧ Seg48.relationRow5235 rho ∧ Seg48.relationRow5236 rho ∧ Seg48.relationRow5237 rho ∧ Seg48.relationRow5238 rho ∧ Seg48.relationRow5239 rho ∧ Seg48.relationRow5240 rho ∧ Seg48.relationRow5241 rho ∧ Seg48.relationRow5242 rho ∧ Seg48.relationRow5243 rho ∧ Seg48.relationRow5244 rho ∧ Seg48.relationRow5245 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart65 at p65

  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5233, r5234, r5235, r5236, r5237, r5238, r5239, r5240, r5241, r5242, r5243, r5244, r5245, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5233, r5234, r5235, r5236, r5237, r5238, r5239, r5240, r5241, r5242, r5243, r5244, r5245⟩

theorem seg48Out0_rung58 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37172 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX58 rho, seg48Out0AccY58 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37988, rho 37989⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX58 rho, seg48Out0AccY58 rho⟩ ⟨rho 37988, rho 37989⟩
        ⟨seg48Out0AccX59 rho, seg48Out0AccY59 rho⟩ ⟨rho 38001, rho 38002⟩ := by
  obtain ⟨r5233, r5234, r5235, r5236, r5237, r5238, r5239, r5240, r5241, r5242, r5243, r5244, r5245⟩ := seg48Out0_rows58 rho h
  unfold Seg48.relationRow5233 at r5233

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5233

  unfold Seg48.relationRow5234 at r5234

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5234

  unfold Seg48.relationRow5235 at r5235

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5235

  unfold Seg48.relationRow5236 at r5236

  unfold Seg48.relationRow5237 at r5237

  unfold Seg48.relationRow5238 at r5238

  unfold Seg48.relationRow5239 at r5239

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5239

  unfold Seg48.relationRow5240 at r5240

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5240

  unfold Seg48.relationRow5241 at r5241

  unfold Seg48.relationRow5242 at r5242

  unfold Seg48.relationRow5243 at r5243

  unfold Seg48.relationRow5244 at r5244

  unfold Seg48.relationRow5245 at r5245

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX59 rho = seg48Out0AccX58 rho + rho 37996 := by
    unfold seg48Out0AccX59 seg48Out0AccX58
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 58]

    ring

  have hnexty : seg48Out0AccY59 rho = seg48Out0AccY58 rho + rho 37997 := by
    unfold seg48Out0AccY59 seg48Out0AccY58
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 58]

    ring

  have ha0 : (rho 37988 + rho 37989) * (seg48Out0AccX58 rho + seg48Out0AccY58 rho) = rho 37990 := by
    unfold seg48Out0AccX58 seg48Out0AccY58
    linear_combination r5233
  have ha1 : rho 37989 * seg48Out0AccX58 rho = rho 37991 := by
    unfold seg48Out0AccX58
    linear_combination r5234
  have ha2 : rho 37988 * seg48Out0AccY58 rho = rho 37992 := by
    unfold seg48Out0AccY58
    linear_combination r5235
  have ha3 : 3021 * rho 37991 * rho 37992 = rho 37993 := by
    linear_combination r5236
  have ha4 : rho 37994 * (1 + rho 37993) = rho 37991 + rho 37992 := by
    linear_combination r5237
  have ha5 : rho 37995 * (1 - rho 37993) = rho 37990 - rho 37991 - rho 37992 := by
    linear_combination r5238
  have haddx :
      rho 37994 * (1 + 3021 * (rho 37989 * seg48Out0AccX58 rho) * (rho 37988 * seg48Out0AccY58 rho)) =
        rho 37989 * seg48Out0AccX58 rho + rho 37988 * seg48Out0AccY58 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37995 * (1 - 3021 * (rho 37989 * seg48Out0AccX58 rho) * (rho 37988 * seg48Out0AccY58 rho)) =
        (-1) * (rho 37989 * seg48Out0AccX58 rho) - rho 37988 * seg48Out0AccY58 rho +
          (seg48Out0AccY58 rho - seg48Out0AccX58 rho * (-1)) * (rho 37988 + rho 37989) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37995 * (1 - rho 37993) = rho 37990 - rho 37991 - rho 37992 := ha5
      _ = (-1) * rho 37991 - rho 37992 + (seg48Out0AccY58 rho - seg48Out0AccX58 rho * (-1)) *
          (rho 37988 + rho 37989) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX59 rho = seg48Out0AccX58 rho - Bool.toZMod bit * (seg48Out0AccX58 rho - rho 37994) := by
    have hd : rho 37996 = Bool.toZMod bit * (rho 37994 - seg48Out0AccX58 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX58
      linear_combination -r5239
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY59 rho = seg48Out0AccY58 rho - Bool.toZMod bit * (seg48Out0AccY58 rho - rho 37995) := by
    have hd : rho 37997 = Bool.toZMod bit * (rho 37995 - seg48Out0AccY58 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY58
      linear_combination -r5240
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37988 * rho 37989 = rho 37998 := by linear_combination r5241
  have hd1 : rho 37988 * rho 37988 = rho 37999 := by linear_combination r5242
  have hd2 : rho 37989 * rho 37989 = rho 38000 := by linear_combination r5243
  have hd3 : rho 38001 * (rho 37989 * rho 37989 + rho 37988 * rho 37988 * (-1)) =
      2 * (rho 37988 * rho 37989) := by
    rw [hd0, hd1, hd2]
    linear_combination r5244
  have hd4 : rho 38002 * (2 - (rho 37989 * rho 37989 + rho 37988 * rho 37988 * (-1))) =
      rho 37989 * rho 37989 - rho 37988 * rho 37988 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5245
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX58 rho, seg48Out0AccY58 rho⟩ ⟨rho 37988, rho 37989⟩
    ⟨rho 37994, rho 37995⟩ ⟨seg48Out0AccX59 rho, seg48Out0AccY59 rho⟩ ⟨rho 38001, rho 38002⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows59 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5246 rho ∧ Seg48.relationRow5247 rho ∧ Seg48.relationRow5248 rho ∧ Seg48.relationRow5249 rho ∧ Seg48.relationRow5250 rho ∧ Seg48.relationRow5251 rho ∧ Seg48.relationRow5252 rho ∧ Seg48.relationRow5253 rho ∧ Seg48.relationRow5254 rho ∧ Seg48.relationRow5255 rho ∧ Seg48.relationRow5256 rho ∧ Seg48.relationRow5257 rho ∧ Seg48.relationRow5258 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart65 at p65

  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5246, r5247, r5248, r5249, r5250, r5251, r5252, r5253, r5254, r5255, r5256, r5257, r5258, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5246, r5247, r5248, r5249, r5250, r5251, r5252, r5253, r5254, r5255, r5256, r5257, r5258⟩

theorem seg48Out0_rung59 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37173 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX59 rho, seg48Out0AccY59 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38001, rho 38002⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX59 rho, seg48Out0AccY59 rho⟩ ⟨rho 38001, rho 38002⟩
        ⟨seg48Out0AccX60 rho, seg48Out0AccY60 rho⟩ ⟨rho 38014, rho 38015⟩ := by
  obtain ⟨r5246, r5247, r5248, r5249, r5250, r5251, r5252, r5253, r5254, r5255, r5256, r5257, r5258⟩ := seg48Out0_rows59 rho h
  unfold Seg48.relationRow5246 at r5246

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5246

  unfold Seg48.relationRow5247 at r5247

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5247

  unfold Seg48.relationRow5248 at r5248

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5248

  unfold Seg48.relationRow5249 at r5249

  unfold Seg48.relationRow5250 at r5250

  unfold Seg48.relationRow5251 at r5251

  unfold Seg48.relationRow5252 at r5252

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5252

  unfold Seg48.relationRow5253 at r5253

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5253

  unfold Seg48.relationRow5254 at r5254

  unfold Seg48.relationRow5255 at r5255

  unfold Seg48.relationRow5256 at r5256

  unfold Seg48.relationRow5257 at r5257

  unfold Seg48.relationRow5258 at r5258

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX60 rho = seg48Out0AccX59 rho + rho 38009 := by
    unfold seg48Out0AccX60 seg48Out0AccX59
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 59]

    ring

  have hnexty : seg48Out0AccY60 rho = seg48Out0AccY59 rho + rho 38010 := by
    unfold seg48Out0AccY60 seg48Out0AccY59
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 59]

    ring

  have ha0 : (rho 38001 + rho 38002) * (seg48Out0AccX59 rho + seg48Out0AccY59 rho) = rho 38003 := by
    unfold seg48Out0AccX59 seg48Out0AccY59
    linear_combination r5246
  have ha1 : rho 38002 * seg48Out0AccX59 rho = rho 38004 := by
    unfold seg48Out0AccX59
    linear_combination r5247
  have ha2 : rho 38001 * seg48Out0AccY59 rho = rho 38005 := by
    unfold seg48Out0AccY59
    linear_combination r5248
  have ha3 : 3021 * rho 38004 * rho 38005 = rho 38006 := by
    linear_combination r5249
  have ha4 : rho 38007 * (1 + rho 38006) = rho 38004 + rho 38005 := by
    linear_combination r5250
  have ha5 : rho 38008 * (1 - rho 38006) = rho 38003 - rho 38004 - rho 38005 := by
    linear_combination r5251
  have haddx :
      rho 38007 * (1 + 3021 * (rho 38002 * seg48Out0AccX59 rho) * (rho 38001 * seg48Out0AccY59 rho)) =
        rho 38002 * seg48Out0AccX59 rho + rho 38001 * seg48Out0AccY59 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38008 * (1 - 3021 * (rho 38002 * seg48Out0AccX59 rho) * (rho 38001 * seg48Out0AccY59 rho)) =
        (-1) * (rho 38002 * seg48Out0AccX59 rho) - rho 38001 * seg48Out0AccY59 rho +
          (seg48Out0AccY59 rho - seg48Out0AccX59 rho * (-1)) * (rho 38001 + rho 38002) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38008 * (1 - rho 38006) = rho 38003 - rho 38004 - rho 38005 := ha5
      _ = (-1) * rho 38004 - rho 38005 + (seg48Out0AccY59 rho - seg48Out0AccX59 rho * (-1)) *
          (rho 38001 + rho 38002) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX60 rho = seg48Out0AccX59 rho - Bool.toZMod bit * (seg48Out0AccX59 rho - rho 38007) := by
    have hd : rho 38009 = Bool.toZMod bit * (rho 38007 - seg48Out0AccX59 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX59
      linear_combination -r5252
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY60 rho = seg48Out0AccY59 rho - Bool.toZMod bit * (seg48Out0AccY59 rho - rho 38008) := by
    have hd : rho 38010 = Bool.toZMod bit * (rho 38008 - seg48Out0AccY59 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY59
      linear_combination -r5253
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38001 * rho 38002 = rho 38011 := by linear_combination r5254
  have hd1 : rho 38001 * rho 38001 = rho 38012 := by linear_combination r5255
  have hd2 : rho 38002 * rho 38002 = rho 38013 := by linear_combination r5256
  have hd3 : rho 38014 * (rho 38002 * rho 38002 + rho 38001 * rho 38001 * (-1)) =
      2 * (rho 38001 * rho 38002) := by
    rw [hd0, hd1, hd2]
    linear_combination r5257
  have hd4 : rho 38015 * (2 - (rho 38002 * rho 38002 + rho 38001 * rho 38001 * (-1))) =
      rho 38002 * rho 38002 - rho 38001 * rho 38001 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5258
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX59 rho, seg48Out0AccY59 rho⟩ ⟨rho 38001, rho 38002⟩
    ⟨rho 38007, rho 38008⟩ ⟨seg48Out0AccX60 rho, seg48Out0AccY60 rho⟩ ⟨rho 38014, rho 38015⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows60 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5259 rho ∧ Seg48.relationRow5260 rho ∧ Seg48.relationRow5261 rho ∧ Seg48.relationRow5262 rho ∧ Seg48.relationRow5263 rho ∧ Seg48.relationRow5264 rho ∧ Seg48.relationRow5265 rho ∧ Seg48.relationRow5266 rho ∧ Seg48.relationRow5267 rho ∧ Seg48.relationRow5268 rho ∧ Seg48.relationRow5269 rho ∧ Seg48.relationRow5270 rho ∧ Seg48.relationRow5271 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart65 at p65

  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5259, r5260, r5261, r5262, r5263, r5264, r5265, r5266, r5267, r5268, r5269, r5270, r5271, _, _, _, _, _, _, _, _⟩

  exact ⟨r5259, r5260, r5261, r5262, r5263, r5264, r5265, r5266, r5267, r5268, r5269, r5270, r5271⟩

theorem seg48Out0_rung60 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37174 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX60 rho, seg48Out0AccY60 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38014, rho 38015⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX60 rho, seg48Out0AccY60 rho⟩ ⟨rho 38014, rho 38015⟩
        ⟨seg48Out0AccX61 rho, seg48Out0AccY61 rho⟩ ⟨rho 38027, rho 38028⟩ := by
  obtain ⟨r5259, r5260, r5261, r5262, r5263, r5264, r5265, r5266, r5267, r5268, r5269, r5270, r5271⟩ := seg48Out0_rows60 rho h
  unfold Seg48.relationRow5259 at r5259

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5259

  unfold Seg48.relationRow5260 at r5260

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5260

  unfold Seg48.relationRow5261 at r5261

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5261

  unfold Seg48.relationRow5262 at r5262

  unfold Seg48.relationRow5263 at r5263

  unfold Seg48.relationRow5264 at r5264

  unfold Seg48.relationRow5265 at r5265

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5265

  unfold Seg48.relationRow5266 at r5266

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5266

  unfold Seg48.relationRow5267 at r5267

  unfold Seg48.relationRow5268 at r5268

  unfold Seg48.relationRow5269 at r5269

  unfold Seg48.relationRow5270 at r5270

  unfold Seg48.relationRow5271 at r5271

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX61 rho = seg48Out0AccX60 rho + rho 38022 := by
    unfold seg48Out0AccX61 seg48Out0AccX60
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 60]

    ring

  have hnexty : seg48Out0AccY61 rho = seg48Out0AccY60 rho + rho 38023 := by
    unfold seg48Out0AccY61 seg48Out0AccY60
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 60]

    ring

  have ha0 : (rho 38014 + rho 38015) * (seg48Out0AccX60 rho + seg48Out0AccY60 rho) = rho 38016 := by
    unfold seg48Out0AccX60 seg48Out0AccY60
    linear_combination r5259
  have ha1 : rho 38015 * seg48Out0AccX60 rho = rho 38017 := by
    unfold seg48Out0AccX60
    linear_combination r5260
  have ha2 : rho 38014 * seg48Out0AccY60 rho = rho 38018 := by
    unfold seg48Out0AccY60
    linear_combination r5261
  have ha3 : 3021 * rho 38017 * rho 38018 = rho 38019 := by
    linear_combination r5262
  have ha4 : rho 38020 * (1 + rho 38019) = rho 38017 + rho 38018 := by
    linear_combination r5263
  have ha5 : rho 38021 * (1 - rho 38019) = rho 38016 - rho 38017 - rho 38018 := by
    linear_combination r5264
  have haddx :
      rho 38020 * (1 + 3021 * (rho 38015 * seg48Out0AccX60 rho) * (rho 38014 * seg48Out0AccY60 rho)) =
        rho 38015 * seg48Out0AccX60 rho + rho 38014 * seg48Out0AccY60 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38021 * (1 - 3021 * (rho 38015 * seg48Out0AccX60 rho) * (rho 38014 * seg48Out0AccY60 rho)) =
        (-1) * (rho 38015 * seg48Out0AccX60 rho) - rho 38014 * seg48Out0AccY60 rho +
          (seg48Out0AccY60 rho - seg48Out0AccX60 rho * (-1)) * (rho 38014 + rho 38015) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38021 * (1 - rho 38019) = rho 38016 - rho 38017 - rho 38018 := ha5
      _ = (-1) * rho 38017 - rho 38018 + (seg48Out0AccY60 rho - seg48Out0AccX60 rho * (-1)) *
          (rho 38014 + rho 38015) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX61 rho = seg48Out0AccX60 rho - Bool.toZMod bit * (seg48Out0AccX60 rho - rho 38020) := by
    have hd : rho 38022 = Bool.toZMod bit * (rho 38020 - seg48Out0AccX60 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX60
      linear_combination -r5265
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY61 rho = seg48Out0AccY60 rho - Bool.toZMod bit * (seg48Out0AccY60 rho - rho 38021) := by
    have hd : rho 38023 = Bool.toZMod bit * (rho 38021 - seg48Out0AccY60 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY60
      linear_combination -r5266
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38014 * rho 38015 = rho 38024 := by linear_combination r5267
  have hd1 : rho 38014 * rho 38014 = rho 38025 := by linear_combination r5268
  have hd2 : rho 38015 * rho 38015 = rho 38026 := by linear_combination r5269
  have hd3 : rho 38027 * (rho 38015 * rho 38015 + rho 38014 * rho 38014 * (-1)) =
      2 * (rho 38014 * rho 38015) := by
    rw [hd0, hd1, hd2]
    linear_combination r5270
  have hd4 : rho 38028 * (2 - (rho 38015 * rho 38015 + rho 38014 * rho 38014 * (-1))) =
      rho 38015 * rho 38015 - rho 38014 * rho 38014 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5271
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX60 rho, seg48Out0AccY60 rho⟩ ⟨rho 38014, rho 38015⟩
    ⟨rho 38020, rho 38021⟩ ⟨seg48Out0AccX61 rho, seg48Out0AccY61 rho⟩ ⟨rho 38027, rho 38028⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows61 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5272 rho ∧ Seg48.relationRow5273 rho ∧ Seg48.relationRow5274 rho ∧ Seg48.relationRow5275 rho ∧ Seg48.relationRow5276 rho ∧ Seg48.relationRow5277 rho ∧ Seg48.relationRow5278 rho ∧ Seg48.relationRow5279 rho ∧ Seg48.relationRow5280 rho ∧ Seg48.relationRow5281 rho ∧ Seg48.relationRow5282 rho ∧ Seg48.relationRow5283 rho ∧ Seg48.relationRow5284 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart65 at p65

  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5272, r5273, r5274, r5275, r5276, r5277, r5278, r5279⟩

  unfold Seg48.relationPart66 at p66

  rcases p66 with ⟨r5280, r5281, r5282, r5283, r5284, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5272, r5273, r5274, r5275, r5276, r5277, r5278, r5279, r5280, r5281, r5282, r5283, r5284⟩

theorem seg48Out0_rung61 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37175 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX61 rho, seg48Out0AccY61 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38027, rho 38028⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX61 rho, seg48Out0AccY61 rho⟩ ⟨rho 38027, rho 38028⟩
        ⟨seg48Out0AccX62 rho, seg48Out0AccY62 rho⟩ ⟨rho 38040, rho 38041⟩ := by
  obtain ⟨r5272, r5273, r5274, r5275, r5276, r5277, r5278, r5279, r5280, r5281, r5282, r5283, r5284⟩ := seg48Out0_rows61 rho h
  unfold Seg48.relationRow5272 at r5272

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5272

  unfold Seg48.relationRow5273 at r5273

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5273

  unfold Seg48.relationRow5274 at r5274

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5274

  unfold Seg48.relationRow5275 at r5275

  unfold Seg48.relationRow5276 at r5276

  unfold Seg48.relationRow5277 at r5277

  unfold Seg48.relationRow5278 at r5278

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5278

  unfold Seg48.relationRow5279 at r5279

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5279

  unfold Seg48.relationRow5280 at r5280

  unfold Seg48.relationRow5281 at r5281

  unfold Seg48.relationRow5282 at r5282

  unfold Seg48.relationRow5283 at r5283

  unfold Seg48.relationRow5284 at r5284

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX62 rho = seg48Out0AccX61 rho + rho 38035 := by
    unfold seg48Out0AccX62 seg48Out0AccX61
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 61]

    ring

  have hnexty : seg48Out0AccY62 rho = seg48Out0AccY61 rho + rho 38036 := by
    unfold seg48Out0AccY62 seg48Out0AccY61
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 61]

    ring

  have ha0 : (rho 38027 + rho 38028) * (seg48Out0AccX61 rho + seg48Out0AccY61 rho) = rho 38029 := by
    unfold seg48Out0AccX61 seg48Out0AccY61
    linear_combination r5272
  have ha1 : rho 38028 * seg48Out0AccX61 rho = rho 38030 := by
    unfold seg48Out0AccX61
    linear_combination r5273
  have ha2 : rho 38027 * seg48Out0AccY61 rho = rho 38031 := by
    unfold seg48Out0AccY61
    linear_combination r5274
  have ha3 : 3021 * rho 38030 * rho 38031 = rho 38032 := by
    linear_combination r5275
  have ha4 : rho 38033 * (1 + rho 38032) = rho 38030 + rho 38031 := by
    linear_combination r5276
  have ha5 : rho 38034 * (1 - rho 38032) = rho 38029 - rho 38030 - rho 38031 := by
    linear_combination r5277
  have haddx :
      rho 38033 * (1 + 3021 * (rho 38028 * seg48Out0AccX61 rho) * (rho 38027 * seg48Out0AccY61 rho)) =
        rho 38028 * seg48Out0AccX61 rho + rho 38027 * seg48Out0AccY61 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38034 * (1 - 3021 * (rho 38028 * seg48Out0AccX61 rho) * (rho 38027 * seg48Out0AccY61 rho)) =
        (-1) * (rho 38028 * seg48Out0AccX61 rho) - rho 38027 * seg48Out0AccY61 rho +
          (seg48Out0AccY61 rho - seg48Out0AccX61 rho * (-1)) * (rho 38027 + rho 38028) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38034 * (1 - rho 38032) = rho 38029 - rho 38030 - rho 38031 := ha5
      _ = (-1) * rho 38030 - rho 38031 + (seg48Out0AccY61 rho - seg48Out0AccX61 rho * (-1)) *
          (rho 38027 + rho 38028) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX62 rho = seg48Out0AccX61 rho - Bool.toZMod bit * (seg48Out0AccX61 rho - rho 38033) := by
    have hd : rho 38035 = Bool.toZMod bit * (rho 38033 - seg48Out0AccX61 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX61
      linear_combination -r5278
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY62 rho = seg48Out0AccY61 rho - Bool.toZMod bit * (seg48Out0AccY61 rho - rho 38034) := by
    have hd : rho 38036 = Bool.toZMod bit * (rho 38034 - seg48Out0AccY61 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY61
      linear_combination -r5279
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38027 * rho 38028 = rho 38037 := by linear_combination r5280
  have hd1 : rho 38027 * rho 38027 = rho 38038 := by linear_combination r5281
  have hd2 : rho 38028 * rho 38028 = rho 38039 := by linear_combination r5282
  have hd3 : rho 38040 * (rho 38028 * rho 38028 + rho 38027 * rho 38027 * (-1)) =
      2 * (rho 38027 * rho 38028) := by
    rw [hd0, hd1, hd2]
    linear_combination r5283
  have hd4 : rho 38041 * (2 - (rho 38028 * rho 38028 + rho 38027 * rho 38027 * (-1))) =
      rho 38028 * rho 38028 - rho 38027 * rho 38027 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5284
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX61 rho, seg48Out0AccY61 rho⟩ ⟨rho 38027, rho 38028⟩
    ⟨rho 38033, rho 38034⟩ ⟨seg48Out0AccX62 rho, seg48Out0AccY62 rho⟩ ⟨rho 38040, rho 38041⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows62 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5285 rho ∧ Seg48.relationRow5286 rho ∧ Seg48.relationRow5287 rho ∧ Seg48.relationRow5288 rho ∧ Seg48.relationRow5289 rho ∧ Seg48.relationRow5290 rho ∧ Seg48.relationRow5291 rho ∧ Seg48.relationRow5292 rho ∧ Seg48.relationRow5293 rho ∧ Seg48.relationRow5294 rho ∧ Seg48.relationRow5295 rho ∧ Seg48.relationRow5296 rho ∧ Seg48.relationRow5297 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart66 at p66

  rcases p66 with ⟨_, _, _, _, _, r5285, r5286, r5287, r5288, r5289, r5290, r5291, r5292, r5293, r5294, r5295, r5296, r5297, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5285, r5286, r5287, r5288, r5289, r5290, r5291, r5292, r5293, r5294, r5295, r5296, r5297⟩

theorem seg48Out0_rung62 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37176 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX62 rho, seg48Out0AccY62 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38040, rho 38041⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX62 rho, seg48Out0AccY62 rho⟩ ⟨rho 38040, rho 38041⟩
        ⟨seg48Out0AccX63 rho, seg48Out0AccY63 rho⟩ ⟨rho 38053, rho 38054⟩ := by
  obtain ⟨r5285, r5286, r5287, r5288, r5289, r5290, r5291, r5292, r5293, r5294, r5295, r5296, r5297⟩ := seg48Out0_rows62 rho h
  unfold Seg48.relationRow5285 at r5285

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5285

  unfold Seg48.relationRow5286 at r5286

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5286

  unfold Seg48.relationRow5287 at r5287

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5287

  unfold Seg48.relationRow5288 at r5288

  unfold Seg48.relationRow5289 at r5289

  unfold Seg48.relationRow5290 at r5290

  unfold Seg48.relationRow5291 at r5291

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5291

  unfold Seg48.relationRow5292 at r5292

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5292

  unfold Seg48.relationRow5293 at r5293

  unfold Seg48.relationRow5294 at r5294

  unfold Seg48.relationRow5295 at r5295

  unfold Seg48.relationRow5296 at r5296

  unfold Seg48.relationRow5297 at r5297

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX63 rho = seg48Out0AccX62 rho + rho 38048 := by
    unfold seg48Out0AccX63 seg48Out0AccX62
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 62]

    ring

  have hnexty : seg48Out0AccY63 rho = seg48Out0AccY62 rho + rho 38049 := by
    unfold seg48Out0AccY63 seg48Out0AccY62
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 62]

    ring

  have ha0 : (rho 38040 + rho 38041) * (seg48Out0AccX62 rho + seg48Out0AccY62 rho) = rho 38042 := by
    unfold seg48Out0AccX62 seg48Out0AccY62
    linear_combination r5285
  have ha1 : rho 38041 * seg48Out0AccX62 rho = rho 38043 := by
    unfold seg48Out0AccX62
    linear_combination r5286
  have ha2 : rho 38040 * seg48Out0AccY62 rho = rho 38044 := by
    unfold seg48Out0AccY62
    linear_combination r5287
  have ha3 : 3021 * rho 38043 * rho 38044 = rho 38045 := by
    linear_combination r5288
  have ha4 : rho 38046 * (1 + rho 38045) = rho 38043 + rho 38044 := by
    linear_combination r5289
  have ha5 : rho 38047 * (1 - rho 38045) = rho 38042 - rho 38043 - rho 38044 := by
    linear_combination r5290
  have haddx :
      rho 38046 * (1 + 3021 * (rho 38041 * seg48Out0AccX62 rho) * (rho 38040 * seg48Out0AccY62 rho)) =
        rho 38041 * seg48Out0AccX62 rho + rho 38040 * seg48Out0AccY62 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38047 * (1 - 3021 * (rho 38041 * seg48Out0AccX62 rho) * (rho 38040 * seg48Out0AccY62 rho)) =
        (-1) * (rho 38041 * seg48Out0AccX62 rho) - rho 38040 * seg48Out0AccY62 rho +
          (seg48Out0AccY62 rho - seg48Out0AccX62 rho * (-1)) * (rho 38040 + rho 38041) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38047 * (1 - rho 38045) = rho 38042 - rho 38043 - rho 38044 := ha5
      _ = (-1) * rho 38043 - rho 38044 + (seg48Out0AccY62 rho - seg48Out0AccX62 rho * (-1)) *
          (rho 38040 + rho 38041) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX63 rho = seg48Out0AccX62 rho - Bool.toZMod bit * (seg48Out0AccX62 rho - rho 38046) := by
    have hd : rho 38048 = Bool.toZMod bit * (rho 38046 - seg48Out0AccX62 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX62
      linear_combination -r5291
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY63 rho = seg48Out0AccY62 rho - Bool.toZMod bit * (seg48Out0AccY62 rho - rho 38047) := by
    have hd : rho 38049 = Bool.toZMod bit * (rho 38047 - seg48Out0AccY62 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY62
      linear_combination -r5292
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38040 * rho 38041 = rho 38050 := by linear_combination r5293
  have hd1 : rho 38040 * rho 38040 = rho 38051 := by linear_combination r5294
  have hd2 : rho 38041 * rho 38041 = rho 38052 := by linear_combination r5295
  have hd3 : rho 38053 * (rho 38041 * rho 38041 + rho 38040 * rho 38040 * (-1)) =
      2 * (rho 38040 * rho 38041) := by
    rw [hd0, hd1, hd2]
    linear_combination r5296
  have hd4 : rho 38054 * (2 - (rho 38041 * rho 38041 + rho 38040 * rho 38040 * (-1))) =
      rho 38041 * rho 38041 - rho 38040 * rho 38040 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5297
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX62 rho, seg48Out0AccY62 rho⟩ ⟨rho 38040, rho 38041⟩
    ⟨rho 38046, rho 38047⟩ ⟨seg48Out0AccX63 rho, seg48Out0AccY63 rho⟩ ⟨rho 38053, rho 38054⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows63 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5298 rho ∧ Seg48.relationRow5299 rho ∧ Seg48.relationRow5300 rho ∧ Seg48.relationRow5301 rho ∧ Seg48.relationRow5302 rho ∧ Seg48.relationRow5303 rho ∧ Seg48.relationRow5304 rho ∧ Seg48.relationRow5305 rho ∧ Seg48.relationRow5306 rho ∧ Seg48.relationRow5307 rho ∧ Seg48.relationRow5308 rho ∧ Seg48.relationRow5309 rho ∧ Seg48.relationRow5310 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart66 at p66

  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5298, r5299, r5300, r5301, r5302, r5303, r5304, r5305, r5306, r5307, r5308, r5309, r5310, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5298, r5299, r5300, r5301, r5302, r5303, r5304, r5305, r5306, r5307, r5308, r5309, r5310⟩

theorem seg48Out0_rung63 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37177 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX63 rho, seg48Out0AccY63 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38053, rho 38054⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX63 rho, seg48Out0AccY63 rho⟩ ⟨rho 38053, rho 38054⟩
        ⟨seg48Out0AccX64 rho, seg48Out0AccY64 rho⟩ ⟨rho 38066, rho 38067⟩ := by
  obtain ⟨r5298, r5299, r5300, r5301, r5302, r5303, r5304, r5305, r5306, r5307, r5308, r5309, r5310⟩ := seg48Out0_rows63 rho h
  unfold Seg48.relationRow5298 at r5298

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5298

  unfold Seg48.relationRow5299 at r5299

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5299

  unfold Seg48.relationRow5300 at r5300

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5300

  unfold Seg48.relationRow5301 at r5301

  unfold Seg48.relationRow5302 at r5302

  unfold Seg48.relationRow5303 at r5303

  unfold Seg48.relationRow5304 at r5304

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5304

  unfold Seg48.relationRow5305 at r5305

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5305

  unfold Seg48.relationRow5306 at r5306

  unfold Seg48.relationRow5307 at r5307

  unfold Seg48.relationRow5308 at r5308

  unfold Seg48.relationRow5309 at r5309

  unfold Seg48.relationRow5310 at r5310

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX64 rho = seg48Out0AccX63 rho + rho 38061 := by
    unfold seg48Out0AccX64 seg48Out0AccX63
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 63]

    ring

  have hnexty : seg48Out0AccY64 rho = seg48Out0AccY63 rho + rho 38062 := by
    unfold seg48Out0AccY64 seg48Out0AccY63
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 63]

    ring

  have ha0 : (rho 38053 + rho 38054) * (seg48Out0AccX63 rho + seg48Out0AccY63 rho) = rho 38055 := by
    unfold seg48Out0AccX63 seg48Out0AccY63
    linear_combination r5298
  have ha1 : rho 38054 * seg48Out0AccX63 rho = rho 38056 := by
    unfold seg48Out0AccX63
    linear_combination r5299
  have ha2 : rho 38053 * seg48Out0AccY63 rho = rho 38057 := by
    unfold seg48Out0AccY63
    linear_combination r5300
  have ha3 : 3021 * rho 38056 * rho 38057 = rho 38058 := by
    linear_combination r5301
  have ha4 : rho 38059 * (1 + rho 38058) = rho 38056 + rho 38057 := by
    linear_combination r5302
  have ha5 : rho 38060 * (1 - rho 38058) = rho 38055 - rho 38056 - rho 38057 := by
    linear_combination r5303
  have haddx :
      rho 38059 * (1 + 3021 * (rho 38054 * seg48Out0AccX63 rho) * (rho 38053 * seg48Out0AccY63 rho)) =
        rho 38054 * seg48Out0AccX63 rho + rho 38053 * seg48Out0AccY63 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38060 * (1 - 3021 * (rho 38054 * seg48Out0AccX63 rho) * (rho 38053 * seg48Out0AccY63 rho)) =
        (-1) * (rho 38054 * seg48Out0AccX63 rho) - rho 38053 * seg48Out0AccY63 rho +
          (seg48Out0AccY63 rho - seg48Out0AccX63 rho * (-1)) * (rho 38053 + rho 38054) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38060 * (1 - rho 38058) = rho 38055 - rho 38056 - rho 38057 := ha5
      _ = (-1) * rho 38056 - rho 38057 + (seg48Out0AccY63 rho - seg48Out0AccX63 rho * (-1)) *
          (rho 38053 + rho 38054) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX64 rho = seg48Out0AccX63 rho - Bool.toZMod bit * (seg48Out0AccX63 rho - rho 38059) := by
    have hd : rho 38061 = Bool.toZMod bit * (rho 38059 - seg48Out0AccX63 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX63
      linear_combination -r5304
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY64 rho = seg48Out0AccY63 rho - Bool.toZMod bit * (seg48Out0AccY63 rho - rho 38060) := by
    have hd : rho 38062 = Bool.toZMod bit * (rho 38060 - seg48Out0AccY63 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY63
      linear_combination -r5305
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38053 * rho 38054 = rho 38063 := by linear_combination r5306
  have hd1 : rho 38053 * rho 38053 = rho 38064 := by linear_combination r5307
  have hd2 : rho 38054 * rho 38054 = rho 38065 := by linear_combination r5308
  have hd3 : rho 38066 * (rho 38054 * rho 38054 + rho 38053 * rho 38053 * (-1)) =
      2 * (rho 38053 * rho 38054) := by
    rw [hd0, hd1, hd2]
    linear_combination r5309
  have hd4 : rho 38067 * (2 - (rho 38054 * rho 38054 + rho 38053 * rho 38053 * (-1))) =
      rho 38054 * rho 38054 - rho 38053 * rho 38053 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5310
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX63 rho, seg48Out0AccY63 rho⟩ ⟨rho 38053, rho 38054⟩
    ⟨rho 38059, rho 38060⟩ ⟨seg48Out0AccX64 rho, seg48Out0AccY64 rho⟩ ⟨rho 38066, rho 38067⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows64 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5311 rho ∧ Seg48.relationRow5312 rho ∧ Seg48.relationRow5313 rho ∧ Seg48.relationRow5314 rho ∧ Seg48.relationRow5315 rho ∧ Seg48.relationRow5316 rho ∧ Seg48.relationRow5317 rho ∧ Seg48.relationRow5318 rho ∧ Seg48.relationRow5319 rho ∧ Seg48.relationRow5320 rho ∧ Seg48.relationRow5321 rho ∧ Seg48.relationRow5322 rho ∧ Seg48.relationRow5323 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart66 at p66

  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5311, r5312, r5313, r5314, r5315, r5316, r5317, r5318, r5319, r5320, r5321, r5322, r5323, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5311, r5312, r5313, r5314, r5315, r5316, r5317, r5318, r5319, r5320, r5321, r5322, r5323⟩

theorem seg48Out0_rung64 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37178 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX64 rho, seg48Out0AccY64 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38066, rho 38067⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX64 rho, seg48Out0AccY64 rho⟩ ⟨rho 38066, rho 38067⟩
        ⟨seg48Out0AccX65 rho, seg48Out0AccY65 rho⟩ ⟨rho 38079, rho 38080⟩ := by
  obtain ⟨r5311, r5312, r5313, r5314, r5315, r5316, r5317, r5318, r5319, r5320, r5321, r5322, r5323⟩ := seg48Out0_rows64 rho h
  unfold Seg48.relationRow5311 at r5311

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5311

  unfold Seg48.relationRow5312 at r5312

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5312

  unfold Seg48.relationRow5313 at r5313

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5313

  unfold Seg48.relationRow5314 at r5314

  unfold Seg48.relationRow5315 at r5315

  unfold Seg48.relationRow5316 at r5316

  unfold Seg48.relationRow5317 at r5317

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5317

  unfold Seg48.relationRow5318 at r5318

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5318

  unfold Seg48.relationRow5319 at r5319

  unfold Seg48.relationRow5320 at r5320

  unfold Seg48.relationRow5321 at r5321

  unfold Seg48.relationRow5322 at r5322

  unfold Seg48.relationRow5323 at r5323

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX65 rho = seg48Out0AccX64 rho + rho 38074 := by
    unfold seg48Out0AccX65 seg48Out0AccX64
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 64]

    ring

  have hnexty : seg48Out0AccY65 rho = seg48Out0AccY64 rho + rho 38075 := by
    unfold seg48Out0AccY65 seg48Out0AccY64
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 64]

    ring

  have ha0 : (rho 38066 + rho 38067) * (seg48Out0AccX64 rho + seg48Out0AccY64 rho) = rho 38068 := by
    unfold seg48Out0AccX64 seg48Out0AccY64
    linear_combination r5311
  have ha1 : rho 38067 * seg48Out0AccX64 rho = rho 38069 := by
    unfold seg48Out0AccX64
    linear_combination r5312
  have ha2 : rho 38066 * seg48Out0AccY64 rho = rho 38070 := by
    unfold seg48Out0AccY64
    linear_combination r5313
  have ha3 : 3021 * rho 38069 * rho 38070 = rho 38071 := by
    linear_combination r5314
  have ha4 : rho 38072 * (1 + rho 38071) = rho 38069 + rho 38070 := by
    linear_combination r5315
  have ha5 : rho 38073 * (1 - rho 38071) = rho 38068 - rho 38069 - rho 38070 := by
    linear_combination r5316
  have haddx :
      rho 38072 * (1 + 3021 * (rho 38067 * seg48Out0AccX64 rho) * (rho 38066 * seg48Out0AccY64 rho)) =
        rho 38067 * seg48Out0AccX64 rho + rho 38066 * seg48Out0AccY64 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38073 * (1 - 3021 * (rho 38067 * seg48Out0AccX64 rho) * (rho 38066 * seg48Out0AccY64 rho)) =
        (-1) * (rho 38067 * seg48Out0AccX64 rho) - rho 38066 * seg48Out0AccY64 rho +
          (seg48Out0AccY64 rho - seg48Out0AccX64 rho * (-1)) * (rho 38066 + rho 38067) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38073 * (1 - rho 38071) = rho 38068 - rho 38069 - rho 38070 := ha5
      _ = (-1) * rho 38069 - rho 38070 + (seg48Out0AccY64 rho - seg48Out0AccX64 rho * (-1)) *
          (rho 38066 + rho 38067) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX65 rho = seg48Out0AccX64 rho - Bool.toZMod bit * (seg48Out0AccX64 rho - rho 38072) := by
    have hd : rho 38074 = Bool.toZMod bit * (rho 38072 - seg48Out0AccX64 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX64
      linear_combination -r5317
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY65 rho = seg48Out0AccY64 rho - Bool.toZMod bit * (seg48Out0AccY64 rho - rho 38073) := by
    have hd : rho 38075 = Bool.toZMod bit * (rho 38073 - seg48Out0AccY64 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY64
      linear_combination -r5318
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38066 * rho 38067 = rho 38076 := by linear_combination r5319
  have hd1 : rho 38066 * rho 38066 = rho 38077 := by linear_combination r5320
  have hd2 : rho 38067 * rho 38067 = rho 38078 := by linear_combination r5321
  have hd3 : rho 38079 * (rho 38067 * rho 38067 + rho 38066 * rho 38066 * (-1)) =
      2 * (rho 38066 * rho 38067) := by
    rw [hd0, hd1, hd2]
    linear_combination r5322
  have hd4 : rho 38080 * (2 - (rho 38067 * rho 38067 + rho 38066 * rho 38066 * (-1))) =
      rho 38067 * rho 38067 - rho 38066 * rho 38066 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5323
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX64 rho, seg48Out0AccY64 rho⟩ ⟨rho 38066, rho 38067⟩
    ⟨rho 38072, rho 38073⟩ ⟨seg48Out0AccX65 rho, seg48Out0AccY65 rho⟩ ⟨rho 38079, rho 38080⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows65 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5324 rho ∧ Seg48.relationRow5325 rho ∧ Seg48.relationRow5326 rho ∧ Seg48.relationRow5327 rho ∧ Seg48.relationRow5328 rho ∧ Seg48.relationRow5329 rho ∧ Seg48.relationRow5330 rho ∧ Seg48.relationRow5331 rho ∧ Seg48.relationRow5332 rho ∧ Seg48.relationRow5333 rho ∧ Seg48.relationRow5334 rho ∧ Seg48.relationRow5335 rho ∧ Seg48.relationRow5336 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart66 at p66

  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5324, r5325, r5326, r5327, r5328, r5329, r5330, r5331, r5332, r5333, r5334, r5335, r5336, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5324, r5325, r5326, r5327, r5328, r5329, r5330, r5331, r5332, r5333, r5334, r5335, r5336⟩

theorem seg48Out0_rung65 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37179 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX65 rho, seg48Out0AccY65 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38079, rho 38080⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX65 rho, seg48Out0AccY65 rho⟩ ⟨rho 38079, rho 38080⟩
        ⟨seg48Out0AccX66 rho, seg48Out0AccY66 rho⟩ ⟨rho 38092, rho 38093⟩ := by
  obtain ⟨r5324, r5325, r5326, r5327, r5328, r5329, r5330, r5331, r5332, r5333, r5334, r5335, r5336⟩ := seg48Out0_rows65 rho h
  unfold Seg48.relationRow5324 at r5324

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5324

  unfold Seg48.relationRow5325 at r5325

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5325

  unfold Seg48.relationRow5326 at r5326

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5326

  unfold Seg48.relationRow5327 at r5327

  unfold Seg48.relationRow5328 at r5328

  unfold Seg48.relationRow5329 at r5329

  unfold Seg48.relationRow5330 at r5330

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5330

  unfold Seg48.relationRow5331 at r5331

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5331

  unfold Seg48.relationRow5332 at r5332

  unfold Seg48.relationRow5333 at r5333

  unfold Seg48.relationRow5334 at r5334

  unfold Seg48.relationRow5335 at r5335

  unfold Seg48.relationRow5336 at r5336

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX66 rho = seg48Out0AccX65 rho + rho 38087 := by
    unfold seg48Out0AccX66 seg48Out0AccX65
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 65]

    ring

  have hnexty : seg48Out0AccY66 rho = seg48Out0AccY65 rho + rho 38088 := by
    unfold seg48Out0AccY66 seg48Out0AccY65
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 65]

    ring

  have ha0 : (rho 38079 + rho 38080) * (seg48Out0AccX65 rho + seg48Out0AccY65 rho) = rho 38081 := by
    unfold seg48Out0AccX65 seg48Out0AccY65
    linear_combination r5324
  have ha1 : rho 38080 * seg48Out0AccX65 rho = rho 38082 := by
    unfold seg48Out0AccX65
    linear_combination r5325
  have ha2 : rho 38079 * seg48Out0AccY65 rho = rho 38083 := by
    unfold seg48Out0AccY65
    linear_combination r5326
  have ha3 : 3021 * rho 38082 * rho 38083 = rho 38084 := by
    linear_combination r5327
  have ha4 : rho 38085 * (1 + rho 38084) = rho 38082 + rho 38083 := by
    linear_combination r5328
  have ha5 : rho 38086 * (1 - rho 38084) = rho 38081 - rho 38082 - rho 38083 := by
    linear_combination r5329
  have haddx :
      rho 38085 * (1 + 3021 * (rho 38080 * seg48Out0AccX65 rho) * (rho 38079 * seg48Out0AccY65 rho)) =
        rho 38080 * seg48Out0AccX65 rho + rho 38079 * seg48Out0AccY65 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38086 * (1 - 3021 * (rho 38080 * seg48Out0AccX65 rho) * (rho 38079 * seg48Out0AccY65 rho)) =
        (-1) * (rho 38080 * seg48Out0AccX65 rho) - rho 38079 * seg48Out0AccY65 rho +
          (seg48Out0AccY65 rho - seg48Out0AccX65 rho * (-1)) * (rho 38079 + rho 38080) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38086 * (1 - rho 38084) = rho 38081 - rho 38082 - rho 38083 := ha5
      _ = (-1) * rho 38082 - rho 38083 + (seg48Out0AccY65 rho - seg48Out0AccX65 rho * (-1)) *
          (rho 38079 + rho 38080) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX66 rho = seg48Out0AccX65 rho - Bool.toZMod bit * (seg48Out0AccX65 rho - rho 38085) := by
    have hd : rho 38087 = Bool.toZMod bit * (rho 38085 - seg48Out0AccX65 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX65
      linear_combination -r5330
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY66 rho = seg48Out0AccY65 rho - Bool.toZMod bit * (seg48Out0AccY65 rho - rho 38086) := by
    have hd : rho 38088 = Bool.toZMod bit * (rho 38086 - seg48Out0AccY65 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY65
      linear_combination -r5331
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38079 * rho 38080 = rho 38089 := by linear_combination r5332
  have hd1 : rho 38079 * rho 38079 = rho 38090 := by linear_combination r5333
  have hd2 : rho 38080 * rho 38080 = rho 38091 := by linear_combination r5334
  have hd3 : rho 38092 * (rho 38080 * rho 38080 + rho 38079 * rho 38079 * (-1)) =
      2 * (rho 38079 * rho 38080) := by
    rw [hd0, hd1, hd2]
    linear_combination r5335
  have hd4 : rho 38093 * (2 - (rho 38080 * rho 38080 + rho 38079 * rho 38079 * (-1))) =
      rho 38080 * rho 38080 - rho 38079 * rho 38079 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5336
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX65 rho, seg48Out0AccY65 rho⟩ ⟨rho 38079, rho 38080⟩
    ⟨rho 38085, rho 38086⟩ ⟨seg48Out0AccX66 rho, seg48Out0AccY66 rho⟩ ⟨rho 38092, rho 38093⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_hstep_c5 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (37114 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 55 ≤ i → i < 66 →
      EdwardsBridge.onCurve (seg48Out0AccState rho i) →
      EdwardsBridge.onCurve (seg48Out0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg48Out0AccState rho i) (seg48Out0CurState rho i)
        (seg48Out0AccState rho (i + 1)) (seg48Out0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg48Out0_rung55 rho h bits[55]! (hbitAt 55 (by omega)) hacc hcur
  · exact seg48Out0_rung56 rho h bits[56]! (hbitAt 56 (by omega)) hacc hcur
  · exact seg48Out0_rung57 rho h bits[57]! (hbitAt 57 (by omega)) hacc hcur
  · exact seg48Out0_rung58 rho h bits[58]! (hbitAt 58 (by omega)) hacc hcur
  · exact seg48Out0_rung59 rho h bits[59]! (hbitAt 59 (by omega)) hacc hcur
  · exact seg48Out0_rung60 rho h bits[60]! (hbitAt 60 (by omega)) hacc hcur
  · exact seg48Out0_rung61 rho h bits[61]! (hbitAt 61 (by omega)) hacc hcur
  · exact seg48Out0_rung62 rho h bits[62]! (hbitAt 62 (by omega)) hacc hcur
  · exact seg48Out0_rung63 rho h bits[63]! (hbitAt 63 (by omega)) hacc hcur
  · exact seg48Out0_rung64 rho h bits[64]! (hbitAt 64 (by omega)) hacc hcur
  · exact seg48Out0_rung65 rho h bits[65]! (hbitAt 65 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
