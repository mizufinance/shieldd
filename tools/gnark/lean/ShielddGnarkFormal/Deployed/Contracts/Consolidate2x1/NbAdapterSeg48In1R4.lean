import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48In1_rows44 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3258 rho ∧ Seg48.relationRow3259 rho ∧ Seg48.relationRow3260 rho ∧ Seg48.relationRow3261 rho ∧ Seg48.relationRow3262 rho ∧ Seg48.relationRow3263 rho ∧ Seg48.relationRow3264 rho ∧ Seg48.relationRow3265 rho ∧ Seg48.relationRow3266 rho ∧ Seg48.relationRow3267 rho ∧ Seg48.relationRow3268 rho ∧ Seg48.relationRow3269 rho ∧ Seg48.relationRow3270 rho := by
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

  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3258, r3259, r3260, r3261, r3262, r3263, r3264, r3265, r3266, r3267, r3268, r3269, r3270, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3258, r3259, r3260, r3261, r3262, r3263, r3264, r3265, r3266, r3267, r3268, r3269, r3270⟩

theorem seg48In1_rung44 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35366 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX44 rho, seg48In1AccY44 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36014, rho 36015⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX44 rho, seg48In1AccY44 rho⟩ ⟨rho 36014, rho 36015⟩
        ⟨seg48In1AccX45 rho, seg48In1AccY45 rho⟩ ⟨rho 36027, rho 36028⟩ := by
  obtain ⟨r3258, r3259, r3260, r3261, r3262, r3263, r3264, r3265, r3266, r3267, r3268, r3269, r3270⟩ := seg48In1_rows44 rho h
  unfold Seg48.relationRow3258 at r3258

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3258

  unfold Seg48.relationRow3259 at r3259

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3259

  unfold Seg48.relationRow3260 at r3260

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3260

  unfold Seg48.relationRow3261 at r3261

  unfold Seg48.relationRow3262 at r3262

  unfold Seg48.relationRow3263 at r3263

  unfold Seg48.relationRow3264 at r3264

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3264

  unfold Seg48.relationRow3265 at r3265

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3265

  unfold Seg48.relationRow3266 at r3266

  unfold Seg48.relationRow3267 at r3267

  unfold Seg48.relationRow3268 at r3268

  unfold Seg48.relationRow3269 at r3269

  unfold Seg48.relationRow3270 at r3270

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX45 rho = seg48In1AccX44 rho + rho 36022 := by
    unfold seg48In1AccX45 seg48In1AccX44
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 44]

    ring

  have hnexty : seg48In1AccY45 rho = seg48In1AccY44 rho + rho 36023 := by
    unfold seg48In1AccY45 seg48In1AccY44
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 44]

    ring

  have ha0 : (rho 36014 + rho 36015) * (seg48In1AccX44 rho + seg48In1AccY44 rho) = rho 36016 := by
    unfold seg48In1AccX44 seg48In1AccY44
    linear_combination r3258
  have ha1 : rho 36015 * seg48In1AccX44 rho = rho 36017 := by
    unfold seg48In1AccX44
    linear_combination r3259
  have ha2 : rho 36014 * seg48In1AccY44 rho = rho 36018 := by
    unfold seg48In1AccY44
    linear_combination r3260
  have ha3 : 3021 * rho 36017 * rho 36018 = rho 36019 := by
    linear_combination r3261
  have ha4 : rho 36020 * (1 + rho 36019) = rho 36017 + rho 36018 := by
    linear_combination r3262
  have ha5 : rho 36021 * (1 - rho 36019) = rho 36016 - rho 36017 - rho 36018 := by
    linear_combination r3263
  have haddx :
      rho 36020 * (1 + 3021 * (rho 36015 * seg48In1AccX44 rho) * (rho 36014 * seg48In1AccY44 rho)) =
        rho 36015 * seg48In1AccX44 rho + rho 36014 * seg48In1AccY44 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36021 * (1 - 3021 * (rho 36015 * seg48In1AccX44 rho) * (rho 36014 * seg48In1AccY44 rho)) =
        (-1) * (rho 36015 * seg48In1AccX44 rho) - rho 36014 * seg48In1AccY44 rho +
          (seg48In1AccY44 rho - seg48In1AccX44 rho * (-1)) * (rho 36014 + rho 36015) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36021 * (1 - rho 36019) = rho 36016 - rho 36017 - rho 36018 := ha5
      _ = (-1) * rho 36017 - rho 36018 + (seg48In1AccY44 rho - seg48In1AccX44 rho * (-1)) *
          (rho 36014 + rho 36015) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX45 rho = seg48In1AccX44 rho - Bool.toZMod bit * (seg48In1AccX44 rho - rho 36020) := by
    have hd : rho 36022 = Bool.toZMod bit * (rho 36020 - seg48In1AccX44 rho) := by
      rw [← hbit]
      unfold seg48In1AccX44
      linear_combination -r3264
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY45 rho = seg48In1AccY44 rho - Bool.toZMod bit * (seg48In1AccY44 rho - rho 36021) := by
    have hd : rho 36023 = Bool.toZMod bit * (rho 36021 - seg48In1AccY44 rho) := by
      rw [← hbit]
      unfold seg48In1AccY44
      linear_combination -r3265
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36014 * rho 36015 = rho 36024 := by linear_combination r3266
  have hd1 : rho 36014 * rho 36014 = rho 36025 := by linear_combination r3267
  have hd2 : rho 36015 * rho 36015 = rho 36026 := by linear_combination r3268
  have hd3 : rho 36027 * (rho 36015 * rho 36015 + rho 36014 * rho 36014 * (-1)) =
      2 * (rho 36014 * rho 36015) := by
    rw [hd0, hd1, hd2]
    linear_combination r3269
  have hd4 : rho 36028 * (2 - (rho 36015 * rho 36015 + rho 36014 * rho 36014 * (-1))) =
      rho 36015 * rho 36015 - rho 36014 * rho 36014 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3270
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX44 rho, seg48In1AccY44 rho⟩ ⟨rho 36014, rho 36015⟩
    ⟨rho 36020, rho 36021⟩ ⟨seg48In1AccX45 rho, seg48In1AccY45 rho⟩ ⟨rho 36027, rho 36028⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows45 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3271 rho ∧ Seg48.relationRow3272 rho ∧ Seg48.relationRow3273 rho ∧ Seg48.relationRow3274 rho ∧ Seg48.relationRow3275 rho ∧ Seg48.relationRow3276 rho ∧ Seg48.relationRow3277 rho ∧ Seg48.relationRow3278 rho ∧ Seg48.relationRow3279 rho ∧ Seg48.relationRow3280 rho ∧ Seg48.relationRow3281 rho ∧ Seg48.relationRow3282 rho ∧ Seg48.relationRow3283 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p40, p41, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart40 at p40

  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3271, r3272, r3273, r3274, r3275, r3276, r3277, r3278, r3279⟩

  unfold Seg48.relationPart41 at p41

  rcases p41 with ⟨r3280, r3281, r3282, r3283, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3271, r3272, r3273, r3274, r3275, r3276, r3277, r3278, r3279, r3280, r3281, r3282, r3283⟩

theorem seg48In1_rung45 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35367 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX45 rho, seg48In1AccY45 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36027, rho 36028⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX45 rho, seg48In1AccY45 rho⟩ ⟨rho 36027, rho 36028⟩
        ⟨seg48In1AccX46 rho, seg48In1AccY46 rho⟩ ⟨rho 36040, rho 36041⟩ := by
  obtain ⟨r3271, r3272, r3273, r3274, r3275, r3276, r3277, r3278, r3279, r3280, r3281, r3282, r3283⟩ := seg48In1_rows45 rho h
  unfold Seg48.relationRow3271 at r3271

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3271

  unfold Seg48.relationRow3272 at r3272

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3272

  unfold Seg48.relationRow3273 at r3273

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3273

  unfold Seg48.relationRow3274 at r3274

  unfold Seg48.relationRow3275 at r3275

  unfold Seg48.relationRow3276 at r3276

  unfold Seg48.relationRow3277 at r3277

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3277

  unfold Seg48.relationRow3278 at r3278

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3278

  unfold Seg48.relationRow3279 at r3279

  unfold Seg48.relationRow3280 at r3280

  unfold Seg48.relationRow3281 at r3281

  unfold Seg48.relationRow3282 at r3282

  unfold Seg48.relationRow3283 at r3283

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX46 rho = seg48In1AccX45 rho + rho 36035 := by
    unfold seg48In1AccX46 seg48In1AccX45
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 45]

    ring

  have hnexty : seg48In1AccY46 rho = seg48In1AccY45 rho + rho 36036 := by
    unfold seg48In1AccY46 seg48In1AccY45
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 45]

    ring

  have ha0 : (rho 36027 + rho 36028) * (seg48In1AccX45 rho + seg48In1AccY45 rho) = rho 36029 := by
    unfold seg48In1AccX45 seg48In1AccY45
    linear_combination r3271
  have ha1 : rho 36028 * seg48In1AccX45 rho = rho 36030 := by
    unfold seg48In1AccX45
    linear_combination r3272
  have ha2 : rho 36027 * seg48In1AccY45 rho = rho 36031 := by
    unfold seg48In1AccY45
    linear_combination r3273
  have ha3 : 3021 * rho 36030 * rho 36031 = rho 36032 := by
    linear_combination r3274
  have ha4 : rho 36033 * (1 + rho 36032) = rho 36030 + rho 36031 := by
    linear_combination r3275
  have ha5 : rho 36034 * (1 - rho 36032) = rho 36029 - rho 36030 - rho 36031 := by
    linear_combination r3276
  have haddx :
      rho 36033 * (1 + 3021 * (rho 36028 * seg48In1AccX45 rho) * (rho 36027 * seg48In1AccY45 rho)) =
        rho 36028 * seg48In1AccX45 rho + rho 36027 * seg48In1AccY45 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36034 * (1 - 3021 * (rho 36028 * seg48In1AccX45 rho) * (rho 36027 * seg48In1AccY45 rho)) =
        (-1) * (rho 36028 * seg48In1AccX45 rho) - rho 36027 * seg48In1AccY45 rho +
          (seg48In1AccY45 rho - seg48In1AccX45 rho * (-1)) * (rho 36027 + rho 36028) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36034 * (1 - rho 36032) = rho 36029 - rho 36030 - rho 36031 := ha5
      _ = (-1) * rho 36030 - rho 36031 + (seg48In1AccY45 rho - seg48In1AccX45 rho * (-1)) *
          (rho 36027 + rho 36028) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX46 rho = seg48In1AccX45 rho - Bool.toZMod bit * (seg48In1AccX45 rho - rho 36033) := by
    have hd : rho 36035 = Bool.toZMod bit * (rho 36033 - seg48In1AccX45 rho) := by
      rw [← hbit]
      unfold seg48In1AccX45
      linear_combination -r3277
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY46 rho = seg48In1AccY45 rho - Bool.toZMod bit * (seg48In1AccY45 rho - rho 36034) := by
    have hd : rho 36036 = Bool.toZMod bit * (rho 36034 - seg48In1AccY45 rho) := by
      rw [← hbit]
      unfold seg48In1AccY45
      linear_combination -r3278
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36027 * rho 36028 = rho 36037 := by linear_combination r3279
  have hd1 : rho 36027 * rho 36027 = rho 36038 := by linear_combination r3280
  have hd2 : rho 36028 * rho 36028 = rho 36039 := by linear_combination r3281
  have hd3 : rho 36040 * (rho 36028 * rho 36028 + rho 36027 * rho 36027 * (-1)) =
      2 * (rho 36027 * rho 36028) := by
    rw [hd0, hd1, hd2]
    linear_combination r3282
  have hd4 : rho 36041 * (2 - (rho 36028 * rho 36028 + rho 36027 * rho 36027 * (-1))) =
      rho 36028 * rho 36028 - rho 36027 * rho 36027 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3283
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX45 rho, seg48In1AccY45 rho⟩ ⟨rho 36027, rho 36028⟩
    ⟨rho 36033, rho 36034⟩ ⟨seg48In1AccX46 rho, seg48In1AccY46 rho⟩ ⟨rho 36040, rho 36041⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows46 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3284 rho ∧ Seg48.relationRow3285 rho ∧ Seg48.relationRow3286 rho ∧ Seg48.relationRow3287 rho ∧ Seg48.relationRow3288 rho ∧ Seg48.relationRow3289 rho ∧ Seg48.relationRow3290 rho ∧ Seg48.relationRow3291 rho ∧ Seg48.relationRow3292 rho ∧ Seg48.relationRow3293 rho ∧ Seg48.relationRow3294 rho ∧ Seg48.relationRow3295 rho ∧ Seg48.relationRow3296 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p41, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart41 at p41

  rcases p41 with ⟨_, _, _, _, r3284, r3285, r3286, r3287, r3288, r3289, r3290, r3291, r3292, r3293, r3294, r3295, r3296, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3284, r3285, r3286, r3287, r3288, r3289, r3290, r3291, r3292, r3293, r3294, r3295, r3296⟩

theorem seg48In1_rung46 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35368 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX46 rho, seg48In1AccY46 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36040, rho 36041⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX46 rho, seg48In1AccY46 rho⟩ ⟨rho 36040, rho 36041⟩
        ⟨seg48In1AccX47 rho, seg48In1AccY47 rho⟩ ⟨rho 36053, rho 36054⟩ := by
  obtain ⟨r3284, r3285, r3286, r3287, r3288, r3289, r3290, r3291, r3292, r3293, r3294, r3295, r3296⟩ := seg48In1_rows46 rho h
  unfold Seg48.relationRow3284 at r3284

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3284

  unfold Seg48.relationRow3285 at r3285

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3285

  unfold Seg48.relationRow3286 at r3286

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3286

  unfold Seg48.relationRow3287 at r3287

  unfold Seg48.relationRow3288 at r3288

  unfold Seg48.relationRow3289 at r3289

  unfold Seg48.relationRow3290 at r3290

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3290

  unfold Seg48.relationRow3291 at r3291

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3291

  unfold Seg48.relationRow3292 at r3292

  unfold Seg48.relationRow3293 at r3293

  unfold Seg48.relationRow3294 at r3294

  unfold Seg48.relationRow3295 at r3295

  unfold Seg48.relationRow3296 at r3296

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX47 rho = seg48In1AccX46 rho + rho 36048 := by
    unfold seg48In1AccX47 seg48In1AccX46
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 46]

    ring

  have hnexty : seg48In1AccY47 rho = seg48In1AccY46 rho + rho 36049 := by
    unfold seg48In1AccY47 seg48In1AccY46
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 46]

    ring

  have ha0 : (rho 36040 + rho 36041) * (seg48In1AccX46 rho + seg48In1AccY46 rho) = rho 36042 := by
    unfold seg48In1AccX46 seg48In1AccY46
    linear_combination r3284
  have ha1 : rho 36041 * seg48In1AccX46 rho = rho 36043 := by
    unfold seg48In1AccX46
    linear_combination r3285
  have ha2 : rho 36040 * seg48In1AccY46 rho = rho 36044 := by
    unfold seg48In1AccY46
    linear_combination r3286
  have ha3 : 3021 * rho 36043 * rho 36044 = rho 36045 := by
    linear_combination r3287
  have ha4 : rho 36046 * (1 + rho 36045) = rho 36043 + rho 36044 := by
    linear_combination r3288
  have ha5 : rho 36047 * (1 - rho 36045) = rho 36042 - rho 36043 - rho 36044 := by
    linear_combination r3289
  have haddx :
      rho 36046 * (1 + 3021 * (rho 36041 * seg48In1AccX46 rho) * (rho 36040 * seg48In1AccY46 rho)) =
        rho 36041 * seg48In1AccX46 rho + rho 36040 * seg48In1AccY46 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36047 * (1 - 3021 * (rho 36041 * seg48In1AccX46 rho) * (rho 36040 * seg48In1AccY46 rho)) =
        (-1) * (rho 36041 * seg48In1AccX46 rho) - rho 36040 * seg48In1AccY46 rho +
          (seg48In1AccY46 rho - seg48In1AccX46 rho * (-1)) * (rho 36040 + rho 36041) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36047 * (1 - rho 36045) = rho 36042 - rho 36043 - rho 36044 := ha5
      _ = (-1) * rho 36043 - rho 36044 + (seg48In1AccY46 rho - seg48In1AccX46 rho * (-1)) *
          (rho 36040 + rho 36041) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX47 rho = seg48In1AccX46 rho - Bool.toZMod bit * (seg48In1AccX46 rho - rho 36046) := by
    have hd : rho 36048 = Bool.toZMod bit * (rho 36046 - seg48In1AccX46 rho) := by
      rw [← hbit]
      unfold seg48In1AccX46
      linear_combination -r3290
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY47 rho = seg48In1AccY46 rho - Bool.toZMod bit * (seg48In1AccY46 rho - rho 36047) := by
    have hd : rho 36049 = Bool.toZMod bit * (rho 36047 - seg48In1AccY46 rho) := by
      rw [← hbit]
      unfold seg48In1AccY46
      linear_combination -r3291
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36040 * rho 36041 = rho 36050 := by linear_combination r3292
  have hd1 : rho 36040 * rho 36040 = rho 36051 := by linear_combination r3293
  have hd2 : rho 36041 * rho 36041 = rho 36052 := by linear_combination r3294
  have hd3 : rho 36053 * (rho 36041 * rho 36041 + rho 36040 * rho 36040 * (-1)) =
      2 * (rho 36040 * rho 36041) := by
    rw [hd0, hd1, hd2]
    linear_combination r3295
  have hd4 : rho 36054 * (2 - (rho 36041 * rho 36041 + rho 36040 * rho 36040 * (-1))) =
      rho 36041 * rho 36041 - rho 36040 * rho 36040 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3296
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX46 rho, seg48In1AccY46 rho⟩ ⟨rho 36040, rho 36041⟩
    ⟨rho 36046, rho 36047⟩ ⟨seg48In1AccX47 rho, seg48In1AccY47 rho⟩ ⟨rho 36053, rho 36054⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows47 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3297 rho ∧ Seg48.relationRow3298 rho ∧ Seg48.relationRow3299 rho ∧ Seg48.relationRow3300 rho ∧ Seg48.relationRow3301 rho ∧ Seg48.relationRow3302 rho ∧ Seg48.relationRow3303 rho ∧ Seg48.relationRow3304 rho ∧ Seg48.relationRow3305 rho ∧ Seg48.relationRow3306 rho ∧ Seg48.relationRow3307 rho ∧ Seg48.relationRow3308 rho ∧ Seg48.relationRow3309 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p41, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart41 at p41

  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3297, r3298, r3299, r3300, r3301, r3302, r3303, r3304, r3305, r3306, r3307, r3308, r3309, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3297, r3298, r3299, r3300, r3301, r3302, r3303, r3304, r3305, r3306, r3307, r3308, r3309⟩

theorem seg48In1_rung47 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35369 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX47 rho, seg48In1AccY47 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36053, rho 36054⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX47 rho, seg48In1AccY47 rho⟩ ⟨rho 36053, rho 36054⟩
        ⟨seg48In1AccX48 rho, seg48In1AccY48 rho⟩ ⟨rho 36066, rho 36067⟩ := by
  obtain ⟨r3297, r3298, r3299, r3300, r3301, r3302, r3303, r3304, r3305, r3306, r3307, r3308, r3309⟩ := seg48In1_rows47 rho h
  unfold Seg48.relationRow3297 at r3297

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3297

  unfold Seg48.relationRow3298 at r3298

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3298

  unfold Seg48.relationRow3299 at r3299

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3299

  unfold Seg48.relationRow3300 at r3300

  unfold Seg48.relationRow3301 at r3301

  unfold Seg48.relationRow3302 at r3302

  unfold Seg48.relationRow3303 at r3303

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3303

  unfold Seg48.relationRow3304 at r3304

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3304

  unfold Seg48.relationRow3305 at r3305

  unfold Seg48.relationRow3306 at r3306

  unfold Seg48.relationRow3307 at r3307

  unfold Seg48.relationRow3308 at r3308

  unfold Seg48.relationRow3309 at r3309

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX48 rho = seg48In1AccX47 rho + rho 36061 := by
    unfold seg48In1AccX48 seg48In1AccX47
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 47]

    ring

  have hnexty : seg48In1AccY48 rho = seg48In1AccY47 rho + rho 36062 := by
    unfold seg48In1AccY48 seg48In1AccY47
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 47]

    ring

  have ha0 : (rho 36053 + rho 36054) * (seg48In1AccX47 rho + seg48In1AccY47 rho) = rho 36055 := by
    unfold seg48In1AccX47 seg48In1AccY47
    linear_combination r3297
  have ha1 : rho 36054 * seg48In1AccX47 rho = rho 36056 := by
    unfold seg48In1AccX47
    linear_combination r3298
  have ha2 : rho 36053 * seg48In1AccY47 rho = rho 36057 := by
    unfold seg48In1AccY47
    linear_combination r3299
  have ha3 : 3021 * rho 36056 * rho 36057 = rho 36058 := by
    linear_combination r3300
  have ha4 : rho 36059 * (1 + rho 36058) = rho 36056 + rho 36057 := by
    linear_combination r3301
  have ha5 : rho 36060 * (1 - rho 36058) = rho 36055 - rho 36056 - rho 36057 := by
    linear_combination r3302
  have haddx :
      rho 36059 * (1 + 3021 * (rho 36054 * seg48In1AccX47 rho) * (rho 36053 * seg48In1AccY47 rho)) =
        rho 36054 * seg48In1AccX47 rho + rho 36053 * seg48In1AccY47 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36060 * (1 - 3021 * (rho 36054 * seg48In1AccX47 rho) * (rho 36053 * seg48In1AccY47 rho)) =
        (-1) * (rho 36054 * seg48In1AccX47 rho) - rho 36053 * seg48In1AccY47 rho +
          (seg48In1AccY47 rho - seg48In1AccX47 rho * (-1)) * (rho 36053 + rho 36054) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36060 * (1 - rho 36058) = rho 36055 - rho 36056 - rho 36057 := ha5
      _ = (-1) * rho 36056 - rho 36057 + (seg48In1AccY47 rho - seg48In1AccX47 rho * (-1)) *
          (rho 36053 + rho 36054) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX48 rho = seg48In1AccX47 rho - Bool.toZMod bit * (seg48In1AccX47 rho - rho 36059) := by
    have hd : rho 36061 = Bool.toZMod bit * (rho 36059 - seg48In1AccX47 rho) := by
      rw [← hbit]
      unfold seg48In1AccX47
      linear_combination -r3303
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY48 rho = seg48In1AccY47 rho - Bool.toZMod bit * (seg48In1AccY47 rho - rho 36060) := by
    have hd : rho 36062 = Bool.toZMod bit * (rho 36060 - seg48In1AccY47 rho) := by
      rw [← hbit]
      unfold seg48In1AccY47
      linear_combination -r3304
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36053 * rho 36054 = rho 36063 := by linear_combination r3305
  have hd1 : rho 36053 * rho 36053 = rho 36064 := by linear_combination r3306
  have hd2 : rho 36054 * rho 36054 = rho 36065 := by linear_combination r3307
  have hd3 : rho 36066 * (rho 36054 * rho 36054 + rho 36053 * rho 36053 * (-1)) =
      2 * (rho 36053 * rho 36054) := by
    rw [hd0, hd1, hd2]
    linear_combination r3308
  have hd4 : rho 36067 * (2 - (rho 36054 * rho 36054 + rho 36053 * rho 36053 * (-1))) =
      rho 36054 * rho 36054 - rho 36053 * rho 36053 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3309
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX47 rho, seg48In1AccY47 rho⟩ ⟨rho 36053, rho 36054⟩
    ⟨rho 36059, rho 36060⟩ ⟨seg48In1AccX48 rho, seg48In1AccY48 rho⟩ ⟨rho 36066, rho 36067⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows48 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3310 rho ∧ Seg48.relationRow3311 rho ∧ Seg48.relationRow3312 rho ∧ Seg48.relationRow3313 rho ∧ Seg48.relationRow3314 rho ∧ Seg48.relationRow3315 rho ∧ Seg48.relationRow3316 rho ∧ Seg48.relationRow3317 rho ∧ Seg48.relationRow3318 rho ∧ Seg48.relationRow3319 rho ∧ Seg48.relationRow3320 rho ∧ Seg48.relationRow3321 rho ∧ Seg48.relationRow3322 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p41, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart41 at p41

  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3310, r3311, r3312, r3313, r3314, r3315, r3316, r3317, r3318, r3319, r3320, r3321, r3322, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3310, r3311, r3312, r3313, r3314, r3315, r3316, r3317, r3318, r3319, r3320, r3321, r3322⟩

theorem seg48In1_rung48 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35370 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX48 rho, seg48In1AccY48 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36066, rho 36067⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX48 rho, seg48In1AccY48 rho⟩ ⟨rho 36066, rho 36067⟩
        ⟨seg48In1AccX49 rho, seg48In1AccY49 rho⟩ ⟨rho 36079, rho 36080⟩ := by
  obtain ⟨r3310, r3311, r3312, r3313, r3314, r3315, r3316, r3317, r3318, r3319, r3320, r3321, r3322⟩ := seg48In1_rows48 rho h
  unfold Seg48.relationRow3310 at r3310

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3310

  unfold Seg48.relationRow3311 at r3311

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3311

  unfold Seg48.relationRow3312 at r3312

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3312

  unfold Seg48.relationRow3313 at r3313

  unfold Seg48.relationRow3314 at r3314

  unfold Seg48.relationRow3315 at r3315

  unfold Seg48.relationRow3316 at r3316

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3316

  unfold Seg48.relationRow3317 at r3317

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3317

  unfold Seg48.relationRow3318 at r3318

  unfold Seg48.relationRow3319 at r3319

  unfold Seg48.relationRow3320 at r3320

  unfold Seg48.relationRow3321 at r3321

  unfold Seg48.relationRow3322 at r3322

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX49 rho = seg48In1AccX48 rho + rho 36074 := by
    unfold seg48In1AccX49 seg48In1AccX48
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 48]

    ring

  have hnexty : seg48In1AccY49 rho = seg48In1AccY48 rho + rho 36075 := by
    unfold seg48In1AccY49 seg48In1AccY48
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 48]

    ring

  have ha0 : (rho 36066 + rho 36067) * (seg48In1AccX48 rho + seg48In1AccY48 rho) = rho 36068 := by
    unfold seg48In1AccX48 seg48In1AccY48
    linear_combination r3310
  have ha1 : rho 36067 * seg48In1AccX48 rho = rho 36069 := by
    unfold seg48In1AccX48
    linear_combination r3311
  have ha2 : rho 36066 * seg48In1AccY48 rho = rho 36070 := by
    unfold seg48In1AccY48
    linear_combination r3312
  have ha3 : 3021 * rho 36069 * rho 36070 = rho 36071 := by
    linear_combination r3313
  have ha4 : rho 36072 * (1 + rho 36071) = rho 36069 + rho 36070 := by
    linear_combination r3314
  have ha5 : rho 36073 * (1 - rho 36071) = rho 36068 - rho 36069 - rho 36070 := by
    linear_combination r3315
  have haddx :
      rho 36072 * (1 + 3021 * (rho 36067 * seg48In1AccX48 rho) * (rho 36066 * seg48In1AccY48 rho)) =
        rho 36067 * seg48In1AccX48 rho + rho 36066 * seg48In1AccY48 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36073 * (1 - 3021 * (rho 36067 * seg48In1AccX48 rho) * (rho 36066 * seg48In1AccY48 rho)) =
        (-1) * (rho 36067 * seg48In1AccX48 rho) - rho 36066 * seg48In1AccY48 rho +
          (seg48In1AccY48 rho - seg48In1AccX48 rho * (-1)) * (rho 36066 + rho 36067) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36073 * (1 - rho 36071) = rho 36068 - rho 36069 - rho 36070 := ha5
      _ = (-1) * rho 36069 - rho 36070 + (seg48In1AccY48 rho - seg48In1AccX48 rho * (-1)) *
          (rho 36066 + rho 36067) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX49 rho = seg48In1AccX48 rho - Bool.toZMod bit * (seg48In1AccX48 rho - rho 36072) := by
    have hd : rho 36074 = Bool.toZMod bit * (rho 36072 - seg48In1AccX48 rho) := by
      rw [← hbit]
      unfold seg48In1AccX48
      linear_combination -r3316
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY49 rho = seg48In1AccY48 rho - Bool.toZMod bit * (seg48In1AccY48 rho - rho 36073) := by
    have hd : rho 36075 = Bool.toZMod bit * (rho 36073 - seg48In1AccY48 rho) := by
      rw [← hbit]
      unfold seg48In1AccY48
      linear_combination -r3317
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36066 * rho 36067 = rho 36076 := by linear_combination r3318
  have hd1 : rho 36066 * rho 36066 = rho 36077 := by linear_combination r3319
  have hd2 : rho 36067 * rho 36067 = rho 36078 := by linear_combination r3320
  have hd3 : rho 36079 * (rho 36067 * rho 36067 + rho 36066 * rho 36066 * (-1)) =
      2 * (rho 36066 * rho 36067) := by
    rw [hd0, hd1, hd2]
    linear_combination r3321
  have hd4 : rho 36080 * (2 - (rho 36067 * rho 36067 + rho 36066 * rho 36066 * (-1))) =
      rho 36067 * rho 36067 - rho 36066 * rho 36066 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3322
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX48 rho, seg48In1AccY48 rho⟩ ⟨rho 36066, rho 36067⟩
    ⟨rho 36072, rho 36073⟩ ⟨seg48In1AccX49 rho, seg48In1AccY49 rho⟩ ⟨rho 36079, rho 36080⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows49 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3323 rho ∧ Seg48.relationRow3324 rho ∧ Seg48.relationRow3325 rho ∧ Seg48.relationRow3326 rho ∧ Seg48.relationRow3327 rho ∧ Seg48.relationRow3328 rho ∧ Seg48.relationRow3329 rho ∧ Seg48.relationRow3330 rho ∧ Seg48.relationRow3331 rho ∧ Seg48.relationRow3332 rho ∧ Seg48.relationRow3333 rho ∧ Seg48.relationRow3334 rho ∧ Seg48.relationRow3335 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p41, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart41 at p41

  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3323, r3324, r3325, r3326, r3327, r3328, r3329, r3330, r3331, r3332, r3333, r3334, r3335, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3323, r3324, r3325, r3326, r3327, r3328, r3329, r3330, r3331, r3332, r3333, r3334, r3335⟩

theorem seg48In1_rung49 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35371 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX49 rho, seg48In1AccY49 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36079, rho 36080⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX49 rho, seg48In1AccY49 rho⟩ ⟨rho 36079, rho 36080⟩
        ⟨seg48In1AccX50 rho, seg48In1AccY50 rho⟩ ⟨rho 36092, rho 36093⟩ := by
  obtain ⟨r3323, r3324, r3325, r3326, r3327, r3328, r3329, r3330, r3331, r3332, r3333, r3334, r3335⟩ := seg48In1_rows49 rho h
  unfold Seg48.relationRow3323 at r3323

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3323

  unfold Seg48.relationRow3324 at r3324

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3324

  unfold Seg48.relationRow3325 at r3325

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3325

  unfold Seg48.relationRow3326 at r3326

  unfold Seg48.relationRow3327 at r3327

  unfold Seg48.relationRow3328 at r3328

  unfold Seg48.relationRow3329 at r3329

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3329

  unfold Seg48.relationRow3330 at r3330

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3330

  unfold Seg48.relationRow3331 at r3331

  unfold Seg48.relationRow3332 at r3332

  unfold Seg48.relationRow3333 at r3333

  unfold Seg48.relationRow3334 at r3334

  unfold Seg48.relationRow3335 at r3335

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX50 rho = seg48In1AccX49 rho + rho 36087 := by
    unfold seg48In1AccX50 seg48In1AccX49
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 49]

    ring

  have hnexty : seg48In1AccY50 rho = seg48In1AccY49 rho + rho 36088 := by
    unfold seg48In1AccY50 seg48In1AccY49
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 49]

    ring

  have ha0 : (rho 36079 + rho 36080) * (seg48In1AccX49 rho + seg48In1AccY49 rho) = rho 36081 := by
    unfold seg48In1AccX49 seg48In1AccY49
    linear_combination r3323
  have ha1 : rho 36080 * seg48In1AccX49 rho = rho 36082 := by
    unfold seg48In1AccX49
    linear_combination r3324
  have ha2 : rho 36079 * seg48In1AccY49 rho = rho 36083 := by
    unfold seg48In1AccY49
    linear_combination r3325
  have ha3 : 3021 * rho 36082 * rho 36083 = rho 36084 := by
    linear_combination r3326
  have ha4 : rho 36085 * (1 + rho 36084) = rho 36082 + rho 36083 := by
    linear_combination r3327
  have ha5 : rho 36086 * (1 - rho 36084) = rho 36081 - rho 36082 - rho 36083 := by
    linear_combination r3328
  have haddx :
      rho 36085 * (1 + 3021 * (rho 36080 * seg48In1AccX49 rho) * (rho 36079 * seg48In1AccY49 rho)) =
        rho 36080 * seg48In1AccX49 rho + rho 36079 * seg48In1AccY49 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36086 * (1 - 3021 * (rho 36080 * seg48In1AccX49 rho) * (rho 36079 * seg48In1AccY49 rho)) =
        (-1) * (rho 36080 * seg48In1AccX49 rho) - rho 36079 * seg48In1AccY49 rho +
          (seg48In1AccY49 rho - seg48In1AccX49 rho * (-1)) * (rho 36079 + rho 36080) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36086 * (1 - rho 36084) = rho 36081 - rho 36082 - rho 36083 := ha5
      _ = (-1) * rho 36082 - rho 36083 + (seg48In1AccY49 rho - seg48In1AccX49 rho * (-1)) *
          (rho 36079 + rho 36080) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX50 rho = seg48In1AccX49 rho - Bool.toZMod bit * (seg48In1AccX49 rho - rho 36085) := by
    have hd : rho 36087 = Bool.toZMod bit * (rho 36085 - seg48In1AccX49 rho) := by
      rw [← hbit]
      unfold seg48In1AccX49
      linear_combination -r3329
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY50 rho = seg48In1AccY49 rho - Bool.toZMod bit * (seg48In1AccY49 rho - rho 36086) := by
    have hd : rho 36088 = Bool.toZMod bit * (rho 36086 - seg48In1AccY49 rho) := by
      rw [← hbit]
      unfold seg48In1AccY49
      linear_combination -r3330
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36079 * rho 36080 = rho 36089 := by linear_combination r3331
  have hd1 : rho 36079 * rho 36079 = rho 36090 := by linear_combination r3332
  have hd2 : rho 36080 * rho 36080 = rho 36091 := by linear_combination r3333
  have hd3 : rho 36092 * (rho 36080 * rho 36080 + rho 36079 * rho 36079 * (-1)) =
      2 * (rho 36079 * rho 36080) := by
    rw [hd0, hd1, hd2]
    linear_combination r3334
  have hd4 : rho 36093 * (2 - (rho 36080 * rho 36080 + rho 36079 * rho 36079 * (-1))) =
      rho 36080 * rho 36080 - rho 36079 * rho 36079 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3335
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX49 rho, seg48In1AccY49 rho⟩ ⟨rho 36079, rho 36080⟩
    ⟨rho 36085, rho 36086⟩ ⟨seg48In1AccX50 rho, seg48In1AccY50 rho⟩ ⟨rho 36092, rho 36093⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows50 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3336 rho ∧ Seg48.relationRow3337 rho ∧ Seg48.relationRow3338 rho ∧ Seg48.relationRow3339 rho ∧ Seg48.relationRow3340 rho ∧ Seg48.relationRow3341 rho ∧ Seg48.relationRow3342 rho ∧ Seg48.relationRow3343 rho ∧ Seg48.relationRow3344 rho ∧ Seg48.relationRow3345 rho ∧ Seg48.relationRow3346 rho ∧ Seg48.relationRow3347 rho ∧ Seg48.relationRow3348 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p41, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart41 at p41

  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3336, r3337, r3338, r3339, r3340, r3341, r3342, r3343, r3344, r3345, r3346, r3347, r3348, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3336, r3337, r3338, r3339, r3340, r3341, r3342, r3343, r3344, r3345, r3346, r3347, r3348⟩

theorem seg48In1_rung50 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35372 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX50 rho, seg48In1AccY50 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36092, rho 36093⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX50 rho, seg48In1AccY50 rho⟩ ⟨rho 36092, rho 36093⟩
        ⟨seg48In1AccX51 rho, seg48In1AccY51 rho⟩ ⟨rho 36105, rho 36106⟩ := by
  obtain ⟨r3336, r3337, r3338, r3339, r3340, r3341, r3342, r3343, r3344, r3345, r3346, r3347, r3348⟩ := seg48In1_rows50 rho h
  unfold Seg48.relationRow3336 at r3336

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3336

  unfold Seg48.relationRow3337 at r3337

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3337

  unfold Seg48.relationRow3338 at r3338

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3338

  unfold Seg48.relationRow3339 at r3339

  unfold Seg48.relationRow3340 at r3340

  unfold Seg48.relationRow3341 at r3341

  unfold Seg48.relationRow3342 at r3342

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3342

  unfold Seg48.relationRow3343 at r3343

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3343

  unfold Seg48.relationRow3344 at r3344

  unfold Seg48.relationRow3345 at r3345

  unfold Seg48.relationRow3346 at r3346

  unfold Seg48.relationRow3347 at r3347

  unfold Seg48.relationRow3348 at r3348

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX51 rho = seg48In1AccX50 rho + rho 36100 := by
    unfold seg48In1AccX51 seg48In1AccX50
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 50]

    ring

  have hnexty : seg48In1AccY51 rho = seg48In1AccY50 rho + rho 36101 := by
    unfold seg48In1AccY51 seg48In1AccY50
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 50]

    ring

  have ha0 : (rho 36092 + rho 36093) * (seg48In1AccX50 rho + seg48In1AccY50 rho) = rho 36094 := by
    unfold seg48In1AccX50 seg48In1AccY50
    linear_combination r3336
  have ha1 : rho 36093 * seg48In1AccX50 rho = rho 36095 := by
    unfold seg48In1AccX50
    linear_combination r3337
  have ha2 : rho 36092 * seg48In1AccY50 rho = rho 36096 := by
    unfold seg48In1AccY50
    linear_combination r3338
  have ha3 : 3021 * rho 36095 * rho 36096 = rho 36097 := by
    linear_combination r3339
  have ha4 : rho 36098 * (1 + rho 36097) = rho 36095 + rho 36096 := by
    linear_combination r3340
  have ha5 : rho 36099 * (1 - rho 36097) = rho 36094 - rho 36095 - rho 36096 := by
    linear_combination r3341
  have haddx :
      rho 36098 * (1 + 3021 * (rho 36093 * seg48In1AccX50 rho) * (rho 36092 * seg48In1AccY50 rho)) =
        rho 36093 * seg48In1AccX50 rho + rho 36092 * seg48In1AccY50 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36099 * (1 - 3021 * (rho 36093 * seg48In1AccX50 rho) * (rho 36092 * seg48In1AccY50 rho)) =
        (-1) * (rho 36093 * seg48In1AccX50 rho) - rho 36092 * seg48In1AccY50 rho +
          (seg48In1AccY50 rho - seg48In1AccX50 rho * (-1)) * (rho 36092 + rho 36093) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36099 * (1 - rho 36097) = rho 36094 - rho 36095 - rho 36096 := ha5
      _ = (-1) * rho 36095 - rho 36096 + (seg48In1AccY50 rho - seg48In1AccX50 rho * (-1)) *
          (rho 36092 + rho 36093) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX51 rho = seg48In1AccX50 rho - Bool.toZMod bit * (seg48In1AccX50 rho - rho 36098) := by
    have hd : rho 36100 = Bool.toZMod bit * (rho 36098 - seg48In1AccX50 rho) := by
      rw [← hbit]
      unfold seg48In1AccX50
      linear_combination -r3342
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY51 rho = seg48In1AccY50 rho - Bool.toZMod bit * (seg48In1AccY50 rho - rho 36099) := by
    have hd : rho 36101 = Bool.toZMod bit * (rho 36099 - seg48In1AccY50 rho) := by
      rw [← hbit]
      unfold seg48In1AccY50
      linear_combination -r3343
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36092 * rho 36093 = rho 36102 := by linear_combination r3344
  have hd1 : rho 36092 * rho 36092 = rho 36103 := by linear_combination r3345
  have hd2 : rho 36093 * rho 36093 = rho 36104 := by linear_combination r3346
  have hd3 : rho 36105 * (rho 36093 * rho 36093 + rho 36092 * rho 36092 * (-1)) =
      2 * (rho 36092 * rho 36093) := by
    rw [hd0, hd1, hd2]
    linear_combination r3347
  have hd4 : rho 36106 * (2 - (rho 36093 * rho 36093 + rho 36092 * rho 36092 * (-1))) =
      rho 36093 * rho 36093 - rho 36092 * rho 36092 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3348
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX50 rho, seg48In1AccY50 rho⟩ ⟨rho 36092, rho 36093⟩
    ⟨rho 36098, rho 36099⟩ ⟨seg48In1AccX51 rho, seg48In1AccY51 rho⟩ ⟨rho 36105, rho 36106⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows51 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3349 rho ∧ Seg48.relationRow3350 rho ∧ Seg48.relationRow3351 rho ∧ Seg48.relationRow3352 rho ∧ Seg48.relationRow3353 rho ∧ Seg48.relationRow3354 rho ∧ Seg48.relationRow3355 rho ∧ Seg48.relationRow3356 rho ∧ Seg48.relationRow3357 rho ∧ Seg48.relationRow3358 rho ∧ Seg48.relationRow3359 rho ∧ Seg48.relationRow3360 rho ∧ Seg48.relationRow3361 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p41, p42, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart41 at p41

  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3349, r3350, r3351, r3352, r3353, r3354, r3355, r3356, r3357, r3358, r3359⟩

  unfold Seg48.relationPart42 at p42

  rcases p42 with ⟨r3360, r3361, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3349, r3350, r3351, r3352, r3353, r3354, r3355, r3356, r3357, r3358, r3359, r3360, r3361⟩

theorem seg48In1_rung51 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35373 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX51 rho, seg48In1AccY51 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36105, rho 36106⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX51 rho, seg48In1AccY51 rho⟩ ⟨rho 36105, rho 36106⟩
        ⟨seg48In1AccX52 rho, seg48In1AccY52 rho⟩ ⟨rho 36118, rho 36119⟩ := by
  obtain ⟨r3349, r3350, r3351, r3352, r3353, r3354, r3355, r3356, r3357, r3358, r3359, r3360, r3361⟩ := seg48In1_rows51 rho h
  unfold Seg48.relationRow3349 at r3349

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3349

  unfold Seg48.relationRow3350 at r3350

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3350

  unfold Seg48.relationRow3351 at r3351

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3351

  unfold Seg48.relationRow3352 at r3352

  unfold Seg48.relationRow3353 at r3353

  unfold Seg48.relationRow3354 at r3354

  unfold Seg48.relationRow3355 at r3355

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3355

  unfold Seg48.relationRow3356 at r3356

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3356

  unfold Seg48.relationRow3357 at r3357

  unfold Seg48.relationRow3358 at r3358

  unfold Seg48.relationRow3359 at r3359

  unfold Seg48.relationRow3360 at r3360

  unfold Seg48.relationRow3361 at r3361

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX52 rho = seg48In1AccX51 rho + rho 36113 := by
    unfold seg48In1AccX52 seg48In1AccX51
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 51]

    ring

  have hnexty : seg48In1AccY52 rho = seg48In1AccY51 rho + rho 36114 := by
    unfold seg48In1AccY52 seg48In1AccY51
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 51]

    ring

  have ha0 : (rho 36105 + rho 36106) * (seg48In1AccX51 rho + seg48In1AccY51 rho) = rho 36107 := by
    unfold seg48In1AccX51 seg48In1AccY51
    linear_combination r3349
  have ha1 : rho 36106 * seg48In1AccX51 rho = rho 36108 := by
    unfold seg48In1AccX51
    linear_combination r3350
  have ha2 : rho 36105 * seg48In1AccY51 rho = rho 36109 := by
    unfold seg48In1AccY51
    linear_combination r3351
  have ha3 : 3021 * rho 36108 * rho 36109 = rho 36110 := by
    linear_combination r3352
  have ha4 : rho 36111 * (1 + rho 36110) = rho 36108 + rho 36109 := by
    linear_combination r3353
  have ha5 : rho 36112 * (1 - rho 36110) = rho 36107 - rho 36108 - rho 36109 := by
    linear_combination r3354
  have haddx :
      rho 36111 * (1 + 3021 * (rho 36106 * seg48In1AccX51 rho) * (rho 36105 * seg48In1AccY51 rho)) =
        rho 36106 * seg48In1AccX51 rho + rho 36105 * seg48In1AccY51 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36112 * (1 - 3021 * (rho 36106 * seg48In1AccX51 rho) * (rho 36105 * seg48In1AccY51 rho)) =
        (-1) * (rho 36106 * seg48In1AccX51 rho) - rho 36105 * seg48In1AccY51 rho +
          (seg48In1AccY51 rho - seg48In1AccX51 rho * (-1)) * (rho 36105 + rho 36106) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36112 * (1 - rho 36110) = rho 36107 - rho 36108 - rho 36109 := ha5
      _ = (-1) * rho 36108 - rho 36109 + (seg48In1AccY51 rho - seg48In1AccX51 rho * (-1)) *
          (rho 36105 + rho 36106) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX52 rho = seg48In1AccX51 rho - Bool.toZMod bit * (seg48In1AccX51 rho - rho 36111) := by
    have hd : rho 36113 = Bool.toZMod bit * (rho 36111 - seg48In1AccX51 rho) := by
      rw [← hbit]
      unfold seg48In1AccX51
      linear_combination -r3355
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY52 rho = seg48In1AccY51 rho - Bool.toZMod bit * (seg48In1AccY51 rho - rho 36112) := by
    have hd : rho 36114 = Bool.toZMod bit * (rho 36112 - seg48In1AccY51 rho) := by
      rw [← hbit]
      unfold seg48In1AccY51
      linear_combination -r3356
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36105 * rho 36106 = rho 36115 := by linear_combination r3357
  have hd1 : rho 36105 * rho 36105 = rho 36116 := by linear_combination r3358
  have hd2 : rho 36106 * rho 36106 = rho 36117 := by linear_combination r3359
  have hd3 : rho 36118 * (rho 36106 * rho 36106 + rho 36105 * rho 36105 * (-1)) =
      2 * (rho 36105 * rho 36106) := by
    rw [hd0, hd1, hd2]
    linear_combination r3360
  have hd4 : rho 36119 * (2 - (rho 36106 * rho 36106 + rho 36105 * rho 36105 * (-1))) =
      rho 36106 * rho 36106 - rho 36105 * rho 36105 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3361
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX51 rho, seg48In1AccY51 rho⟩ ⟨rho 36105, rho 36106⟩
    ⟨rho 36111, rho 36112⟩ ⟨seg48In1AccX52 rho, seg48In1AccY52 rho⟩ ⟨rho 36118, rho 36119⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows52 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3362 rho ∧ Seg48.relationRow3363 rho ∧ Seg48.relationRow3364 rho ∧ Seg48.relationRow3365 rho ∧ Seg48.relationRow3366 rho ∧ Seg48.relationRow3367 rho ∧ Seg48.relationRow3368 rho ∧ Seg48.relationRow3369 rho ∧ Seg48.relationRow3370 rho ∧ Seg48.relationRow3371 rho ∧ Seg48.relationRow3372 rho ∧ Seg48.relationRow3373 rho ∧ Seg48.relationRow3374 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p42, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart42 at p42

  rcases p42 with ⟨_, _, r3362, r3363, r3364, r3365, r3366, r3367, r3368, r3369, r3370, r3371, r3372, r3373, r3374, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3362, r3363, r3364, r3365, r3366, r3367, r3368, r3369, r3370, r3371, r3372, r3373, r3374⟩

theorem seg48In1_rung52 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35374 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX52 rho, seg48In1AccY52 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36118, rho 36119⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX52 rho, seg48In1AccY52 rho⟩ ⟨rho 36118, rho 36119⟩
        ⟨seg48In1AccX53 rho, seg48In1AccY53 rho⟩ ⟨rho 36131, rho 36132⟩ := by
  obtain ⟨r3362, r3363, r3364, r3365, r3366, r3367, r3368, r3369, r3370, r3371, r3372, r3373, r3374⟩ := seg48In1_rows52 rho h
  unfold Seg48.relationRow3362 at r3362

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3362

  unfold Seg48.relationRow3363 at r3363

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3363

  unfold Seg48.relationRow3364 at r3364

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3364

  unfold Seg48.relationRow3365 at r3365

  unfold Seg48.relationRow3366 at r3366

  unfold Seg48.relationRow3367 at r3367

  unfold Seg48.relationRow3368 at r3368

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3368

  unfold Seg48.relationRow3369 at r3369

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3369

  unfold Seg48.relationRow3370 at r3370

  unfold Seg48.relationRow3371 at r3371

  unfold Seg48.relationRow3372 at r3372

  unfold Seg48.relationRow3373 at r3373

  unfold Seg48.relationRow3374 at r3374

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX53 rho = seg48In1AccX52 rho + rho 36126 := by
    unfold seg48In1AccX53 seg48In1AccX52
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 52]

    ring

  have hnexty : seg48In1AccY53 rho = seg48In1AccY52 rho + rho 36127 := by
    unfold seg48In1AccY53 seg48In1AccY52
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 52]

    ring

  have ha0 : (rho 36118 + rho 36119) * (seg48In1AccX52 rho + seg48In1AccY52 rho) = rho 36120 := by
    unfold seg48In1AccX52 seg48In1AccY52
    linear_combination r3362
  have ha1 : rho 36119 * seg48In1AccX52 rho = rho 36121 := by
    unfold seg48In1AccX52
    linear_combination r3363
  have ha2 : rho 36118 * seg48In1AccY52 rho = rho 36122 := by
    unfold seg48In1AccY52
    linear_combination r3364
  have ha3 : 3021 * rho 36121 * rho 36122 = rho 36123 := by
    linear_combination r3365
  have ha4 : rho 36124 * (1 + rho 36123) = rho 36121 + rho 36122 := by
    linear_combination r3366
  have ha5 : rho 36125 * (1 - rho 36123) = rho 36120 - rho 36121 - rho 36122 := by
    linear_combination r3367
  have haddx :
      rho 36124 * (1 + 3021 * (rho 36119 * seg48In1AccX52 rho) * (rho 36118 * seg48In1AccY52 rho)) =
        rho 36119 * seg48In1AccX52 rho + rho 36118 * seg48In1AccY52 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36125 * (1 - 3021 * (rho 36119 * seg48In1AccX52 rho) * (rho 36118 * seg48In1AccY52 rho)) =
        (-1) * (rho 36119 * seg48In1AccX52 rho) - rho 36118 * seg48In1AccY52 rho +
          (seg48In1AccY52 rho - seg48In1AccX52 rho * (-1)) * (rho 36118 + rho 36119) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36125 * (1 - rho 36123) = rho 36120 - rho 36121 - rho 36122 := ha5
      _ = (-1) * rho 36121 - rho 36122 + (seg48In1AccY52 rho - seg48In1AccX52 rho * (-1)) *
          (rho 36118 + rho 36119) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX53 rho = seg48In1AccX52 rho - Bool.toZMod bit * (seg48In1AccX52 rho - rho 36124) := by
    have hd : rho 36126 = Bool.toZMod bit * (rho 36124 - seg48In1AccX52 rho) := by
      rw [← hbit]
      unfold seg48In1AccX52
      linear_combination -r3368
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY53 rho = seg48In1AccY52 rho - Bool.toZMod bit * (seg48In1AccY52 rho - rho 36125) := by
    have hd : rho 36127 = Bool.toZMod bit * (rho 36125 - seg48In1AccY52 rho) := by
      rw [← hbit]
      unfold seg48In1AccY52
      linear_combination -r3369
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36118 * rho 36119 = rho 36128 := by linear_combination r3370
  have hd1 : rho 36118 * rho 36118 = rho 36129 := by linear_combination r3371
  have hd2 : rho 36119 * rho 36119 = rho 36130 := by linear_combination r3372
  have hd3 : rho 36131 * (rho 36119 * rho 36119 + rho 36118 * rho 36118 * (-1)) =
      2 * (rho 36118 * rho 36119) := by
    rw [hd0, hd1, hd2]
    linear_combination r3373
  have hd4 : rho 36132 * (2 - (rho 36119 * rho 36119 + rho 36118 * rho 36118 * (-1))) =
      rho 36119 * rho 36119 - rho 36118 * rho 36118 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3374
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX52 rho, seg48In1AccY52 rho⟩ ⟨rho 36118, rho 36119⟩
    ⟨rho 36124, rho 36125⟩ ⟨seg48In1AccX53 rho, seg48In1AccY53 rho⟩ ⟨rho 36131, rho 36132⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows53 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3375 rho ∧ Seg48.relationRow3376 rho ∧ Seg48.relationRow3377 rho ∧ Seg48.relationRow3378 rho ∧ Seg48.relationRow3379 rho ∧ Seg48.relationRow3380 rho ∧ Seg48.relationRow3381 rho ∧ Seg48.relationRow3382 rho ∧ Seg48.relationRow3383 rho ∧ Seg48.relationRow3384 rho ∧ Seg48.relationRow3385 rho ∧ Seg48.relationRow3386 rho ∧ Seg48.relationRow3387 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p42, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart42 at p42

  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3375, r3376, r3377, r3378, r3379, r3380, r3381, r3382, r3383, r3384, r3385, r3386, r3387, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3375, r3376, r3377, r3378, r3379, r3380, r3381, r3382, r3383, r3384, r3385, r3386, r3387⟩

theorem seg48In1_rung53 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35375 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX53 rho, seg48In1AccY53 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36131, rho 36132⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX53 rho, seg48In1AccY53 rho⟩ ⟨rho 36131, rho 36132⟩
        ⟨seg48In1AccX54 rho, seg48In1AccY54 rho⟩ ⟨rho 36144, rho 36145⟩ := by
  obtain ⟨r3375, r3376, r3377, r3378, r3379, r3380, r3381, r3382, r3383, r3384, r3385, r3386, r3387⟩ := seg48In1_rows53 rho h
  unfold Seg48.relationRow3375 at r3375

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3375

  unfold Seg48.relationRow3376 at r3376

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3376

  unfold Seg48.relationRow3377 at r3377

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3377

  unfold Seg48.relationRow3378 at r3378

  unfold Seg48.relationRow3379 at r3379

  unfold Seg48.relationRow3380 at r3380

  unfold Seg48.relationRow3381 at r3381

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3381

  unfold Seg48.relationRow3382 at r3382

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3382

  unfold Seg48.relationRow3383 at r3383

  unfold Seg48.relationRow3384 at r3384

  unfold Seg48.relationRow3385 at r3385

  unfold Seg48.relationRow3386 at r3386

  unfold Seg48.relationRow3387 at r3387

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX54 rho = seg48In1AccX53 rho + rho 36139 := by
    unfold seg48In1AccX54 seg48In1AccX53
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 53]

    ring

  have hnexty : seg48In1AccY54 rho = seg48In1AccY53 rho + rho 36140 := by
    unfold seg48In1AccY54 seg48In1AccY53
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 53]

    ring

  have ha0 : (rho 36131 + rho 36132) * (seg48In1AccX53 rho + seg48In1AccY53 rho) = rho 36133 := by
    unfold seg48In1AccX53 seg48In1AccY53
    linear_combination r3375
  have ha1 : rho 36132 * seg48In1AccX53 rho = rho 36134 := by
    unfold seg48In1AccX53
    linear_combination r3376
  have ha2 : rho 36131 * seg48In1AccY53 rho = rho 36135 := by
    unfold seg48In1AccY53
    linear_combination r3377
  have ha3 : 3021 * rho 36134 * rho 36135 = rho 36136 := by
    linear_combination r3378
  have ha4 : rho 36137 * (1 + rho 36136) = rho 36134 + rho 36135 := by
    linear_combination r3379
  have ha5 : rho 36138 * (1 - rho 36136) = rho 36133 - rho 36134 - rho 36135 := by
    linear_combination r3380
  have haddx :
      rho 36137 * (1 + 3021 * (rho 36132 * seg48In1AccX53 rho) * (rho 36131 * seg48In1AccY53 rho)) =
        rho 36132 * seg48In1AccX53 rho + rho 36131 * seg48In1AccY53 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36138 * (1 - 3021 * (rho 36132 * seg48In1AccX53 rho) * (rho 36131 * seg48In1AccY53 rho)) =
        (-1) * (rho 36132 * seg48In1AccX53 rho) - rho 36131 * seg48In1AccY53 rho +
          (seg48In1AccY53 rho - seg48In1AccX53 rho * (-1)) * (rho 36131 + rho 36132) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36138 * (1 - rho 36136) = rho 36133 - rho 36134 - rho 36135 := ha5
      _ = (-1) * rho 36134 - rho 36135 + (seg48In1AccY53 rho - seg48In1AccX53 rho * (-1)) *
          (rho 36131 + rho 36132) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX54 rho = seg48In1AccX53 rho - Bool.toZMod bit * (seg48In1AccX53 rho - rho 36137) := by
    have hd : rho 36139 = Bool.toZMod bit * (rho 36137 - seg48In1AccX53 rho) := by
      rw [← hbit]
      unfold seg48In1AccX53
      linear_combination -r3381
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY54 rho = seg48In1AccY53 rho - Bool.toZMod bit * (seg48In1AccY53 rho - rho 36138) := by
    have hd : rho 36140 = Bool.toZMod bit * (rho 36138 - seg48In1AccY53 rho) := by
      rw [← hbit]
      unfold seg48In1AccY53
      linear_combination -r3382
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36131 * rho 36132 = rho 36141 := by linear_combination r3383
  have hd1 : rho 36131 * rho 36131 = rho 36142 := by linear_combination r3384
  have hd2 : rho 36132 * rho 36132 = rho 36143 := by linear_combination r3385
  have hd3 : rho 36144 * (rho 36132 * rho 36132 + rho 36131 * rho 36131 * (-1)) =
      2 * (rho 36131 * rho 36132) := by
    rw [hd0, hd1, hd2]
    linear_combination r3386
  have hd4 : rho 36145 * (2 - (rho 36132 * rho 36132 + rho 36131 * rho 36131 * (-1))) =
      rho 36132 * rho 36132 - rho 36131 * rho 36131 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3387
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX53 rho, seg48In1AccY53 rho⟩ ⟨rho 36131, rho 36132⟩
    ⟨rho 36137, rho 36138⟩ ⟨seg48In1AccX54 rho, seg48In1AccY54 rho⟩ ⟨rho 36144, rho 36145⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows54 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3388 rho ∧ Seg48.relationRow3389 rho ∧ Seg48.relationRow3390 rho ∧ Seg48.relationRow3391 rho ∧ Seg48.relationRow3392 rho ∧ Seg48.relationRow3393 rho ∧ Seg48.relationRow3394 rho ∧ Seg48.relationRow3395 rho ∧ Seg48.relationRow3396 rho ∧ Seg48.relationRow3397 rho ∧ Seg48.relationRow3398 rho ∧ Seg48.relationRow3399 rho ∧ Seg48.relationRow3400 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p42, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart42 at p42

  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3388, r3389, r3390, r3391, r3392, r3393, r3394, r3395, r3396, r3397, r3398, r3399, r3400, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3388, r3389, r3390, r3391, r3392, r3393, r3394, r3395, r3396, r3397, r3398, r3399, r3400⟩

theorem seg48In1_rung54 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35376 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX54 rho, seg48In1AccY54 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36144, rho 36145⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX54 rho, seg48In1AccY54 rho⟩ ⟨rho 36144, rho 36145⟩
        ⟨seg48In1AccX55 rho, seg48In1AccY55 rho⟩ ⟨rho 36157, rho 36158⟩ := by
  obtain ⟨r3388, r3389, r3390, r3391, r3392, r3393, r3394, r3395, r3396, r3397, r3398, r3399, r3400⟩ := seg48In1_rows54 rho h
  unfold Seg48.relationRow3388 at r3388

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3388

  unfold Seg48.relationRow3389 at r3389

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3389

  unfold Seg48.relationRow3390 at r3390

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3390

  unfold Seg48.relationRow3391 at r3391

  unfold Seg48.relationRow3392 at r3392

  unfold Seg48.relationRow3393 at r3393

  unfold Seg48.relationRow3394 at r3394

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3394

  unfold Seg48.relationRow3395 at r3395

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3395

  unfold Seg48.relationRow3396 at r3396

  unfold Seg48.relationRow3397 at r3397

  unfold Seg48.relationRow3398 at r3398

  unfold Seg48.relationRow3399 at r3399

  unfold Seg48.relationRow3400 at r3400

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX55 rho = seg48In1AccX54 rho + rho 36152 := by
    unfold seg48In1AccX55 seg48In1AccX54
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 54]

    ring

  have hnexty : seg48In1AccY55 rho = seg48In1AccY54 rho + rho 36153 := by
    unfold seg48In1AccY55 seg48In1AccY54
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 54]

    ring

  have ha0 : (rho 36144 + rho 36145) * (seg48In1AccX54 rho + seg48In1AccY54 rho) = rho 36146 := by
    unfold seg48In1AccX54 seg48In1AccY54
    linear_combination r3388
  have ha1 : rho 36145 * seg48In1AccX54 rho = rho 36147 := by
    unfold seg48In1AccX54
    linear_combination r3389
  have ha2 : rho 36144 * seg48In1AccY54 rho = rho 36148 := by
    unfold seg48In1AccY54
    linear_combination r3390
  have ha3 : 3021 * rho 36147 * rho 36148 = rho 36149 := by
    linear_combination r3391
  have ha4 : rho 36150 * (1 + rho 36149) = rho 36147 + rho 36148 := by
    linear_combination r3392
  have ha5 : rho 36151 * (1 - rho 36149) = rho 36146 - rho 36147 - rho 36148 := by
    linear_combination r3393
  have haddx :
      rho 36150 * (1 + 3021 * (rho 36145 * seg48In1AccX54 rho) * (rho 36144 * seg48In1AccY54 rho)) =
        rho 36145 * seg48In1AccX54 rho + rho 36144 * seg48In1AccY54 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36151 * (1 - 3021 * (rho 36145 * seg48In1AccX54 rho) * (rho 36144 * seg48In1AccY54 rho)) =
        (-1) * (rho 36145 * seg48In1AccX54 rho) - rho 36144 * seg48In1AccY54 rho +
          (seg48In1AccY54 rho - seg48In1AccX54 rho * (-1)) * (rho 36144 + rho 36145) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36151 * (1 - rho 36149) = rho 36146 - rho 36147 - rho 36148 := ha5
      _ = (-1) * rho 36147 - rho 36148 + (seg48In1AccY54 rho - seg48In1AccX54 rho * (-1)) *
          (rho 36144 + rho 36145) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX55 rho = seg48In1AccX54 rho - Bool.toZMod bit * (seg48In1AccX54 rho - rho 36150) := by
    have hd : rho 36152 = Bool.toZMod bit * (rho 36150 - seg48In1AccX54 rho) := by
      rw [← hbit]
      unfold seg48In1AccX54
      linear_combination -r3394
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY55 rho = seg48In1AccY54 rho - Bool.toZMod bit * (seg48In1AccY54 rho - rho 36151) := by
    have hd : rho 36153 = Bool.toZMod bit * (rho 36151 - seg48In1AccY54 rho) := by
      rw [← hbit]
      unfold seg48In1AccY54
      linear_combination -r3395
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36144 * rho 36145 = rho 36154 := by linear_combination r3396
  have hd1 : rho 36144 * rho 36144 = rho 36155 := by linear_combination r3397
  have hd2 : rho 36145 * rho 36145 = rho 36156 := by linear_combination r3398
  have hd3 : rho 36157 * (rho 36145 * rho 36145 + rho 36144 * rho 36144 * (-1)) =
      2 * (rho 36144 * rho 36145) := by
    rw [hd0, hd1, hd2]
    linear_combination r3399
  have hd4 : rho 36158 * (2 - (rho 36145 * rho 36145 + rho 36144 * rho 36144 * (-1))) =
      rho 36145 * rho 36145 - rho 36144 * rho 36144 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3400
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX54 rho, seg48In1AccY54 rho⟩ ⟨rho 36144, rho 36145⟩
    ⟨rho 36150, rho 36151⟩ ⟨seg48In1AccX55 rho, seg48In1AccY55 rho⟩ ⟨rho 36157, rho 36158⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_hstep_c4 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (35322 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 44 ≤ i → i < 55 →
      EdwardsBridge.onCurve (seg48In1AccState rho i) →
      EdwardsBridge.onCurve (seg48In1CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg48In1AccState rho i) (seg48In1CurState rho i)
        (seg48In1AccState rho (i + 1)) (seg48In1CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg48In1_rung44 rho h bits[44]! (hbitAt 44 (by omega)) hacc hcur
  · exact seg48In1_rung45 rho h bits[45]! (hbitAt 45 (by omega)) hacc hcur
  · exact seg48In1_rung46 rho h bits[46]! (hbitAt 46 (by omega)) hacc hcur
  · exact seg48In1_rung47 rho h bits[47]! (hbitAt 47 (by omega)) hacc hcur
  · exact seg48In1_rung48 rho h bits[48]! (hbitAt 48 (by omega)) hacc hcur
  · exact seg48In1_rung49 rho h bits[49]! (hbitAt 49 (by omega)) hacc hcur
  · exact seg48In1_rung50 rho h bits[50]! (hbitAt 50 (by omega)) hacc hcur
  · exact seg48In1_rung51 rho h bits[51]! (hbitAt 51 (by omega)) hacc hcur
  · exact seg48In1_rung52 rho h bits[52]! (hbitAt 52 (by omega)) hacc hcur
  · exact seg48In1_rung53 rho h bits[53]! (hbitAt 53 (by omega)) hacc hcur
  · exact seg48In1_rung54 rho h bits[54]! (hbitAt 54 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
