import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In1_rows44 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3258 rho ∧ Seg52.relationRow3259 rho ∧ Seg52.relationRow3260 rho ∧ Seg52.relationRow3261 rho ∧ Seg52.relationRow3262 rho ∧ Seg52.relationRow3263 rho ∧ Seg52.relationRow3264 rho ∧ Seg52.relationRow3265 rho ∧ Seg52.relationRow3266 rho ∧ Seg52.relationRow3267 rho ∧ Seg52.relationRow3268 rho ∧ Seg52.relationRow3269 rho ∧ Seg52.relationRow3270 rho := by
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

  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3258, r3259, r3260, r3261, r3262, r3263, r3264, r3265, r3266, r3267, r3268, r3269, r3270, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3258, r3259, r3260, r3261, r3262, r3263, r3264, r3265, r3266, r3267, r3268, r3269, r3270⟩

theorem seg52In1_rung44 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46998 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX44 rho, seg52In1AccY44 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47646, rho 47647⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX44 rho, seg52In1AccY44 rho⟩ ⟨rho 47646, rho 47647⟩
        ⟨seg52In1AccX45 rho, seg52In1AccY45 rho⟩ ⟨rho 47659, rho 47660⟩ := by
  obtain ⟨r3258, r3259, r3260, r3261, r3262, r3263, r3264, r3265, r3266, r3267, r3268, r3269, r3270⟩ := seg52In1_rows44 rho h
  unfold Seg52.relationRow3258 at r3258

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3258

  unfold Seg52.relationRow3259 at r3259

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3259

  unfold Seg52.relationRow3260 at r3260

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3260

  unfold Seg52.relationRow3261 at r3261

  unfold Seg52.relationRow3262 at r3262

  unfold Seg52.relationRow3263 at r3263

  unfold Seg52.relationRow3264 at r3264

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3264

  unfold Seg52.relationRow3265 at r3265

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3265

  unfold Seg52.relationRow3266 at r3266

  unfold Seg52.relationRow3267 at r3267

  unfold Seg52.relationRow3268 at r3268

  unfold Seg52.relationRow3269 at r3269

  unfold Seg52.relationRow3270 at r3270

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX45 rho = seg52In1AccX44 rho + rho 47654 := by
    unfold seg52In1AccX45 seg52In1AccX44
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 44]

    ring

  have hnexty : seg52In1AccY45 rho = seg52In1AccY44 rho + rho 47655 := by
    unfold seg52In1AccY45 seg52In1AccY44
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 44]

    ring

  have ha0 : (rho 47646 + rho 47647) * (seg52In1AccX44 rho + seg52In1AccY44 rho) = rho 47648 := by
    unfold seg52In1AccX44 seg52In1AccY44
    linear_combination r3258
  have ha1 : rho 47647 * seg52In1AccX44 rho = rho 47649 := by
    unfold seg52In1AccX44
    linear_combination r3259
  have ha2 : rho 47646 * seg52In1AccY44 rho = rho 47650 := by
    unfold seg52In1AccY44
    linear_combination r3260
  have ha3 : 3021 * rho 47649 * rho 47650 = rho 47651 := by
    linear_combination r3261
  have ha4 : rho 47652 * (1 + rho 47651) = rho 47649 + rho 47650 := by
    linear_combination r3262
  have ha5 : rho 47653 * (1 - rho 47651) = rho 47648 - rho 47649 - rho 47650 := by
    linear_combination r3263
  have haddx :
      rho 47652 * (1 + 3021 * (rho 47647 * seg52In1AccX44 rho) * (rho 47646 * seg52In1AccY44 rho)) =
        rho 47647 * seg52In1AccX44 rho + rho 47646 * seg52In1AccY44 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47653 * (1 - 3021 * (rho 47647 * seg52In1AccX44 rho) * (rho 47646 * seg52In1AccY44 rho)) =
        (-1) * (rho 47647 * seg52In1AccX44 rho) - rho 47646 * seg52In1AccY44 rho +
          (seg52In1AccY44 rho - seg52In1AccX44 rho * (-1)) * (rho 47646 + rho 47647) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47653 * (1 - rho 47651) = rho 47648 - rho 47649 - rho 47650 := ha5
      _ = (-1) * rho 47649 - rho 47650 + (seg52In1AccY44 rho - seg52In1AccX44 rho * (-1)) *
          (rho 47646 + rho 47647) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX45 rho = seg52In1AccX44 rho - Bool.toZMod bit * (seg52In1AccX44 rho - rho 47652) := by
    have hd : rho 47654 = Bool.toZMod bit * (rho 47652 - seg52In1AccX44 rho) := by
      rw [← hbit]
      unfold seg52In1AccX44
      linear_combination -r3264
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY45 rho = seg52In1AccY44 rho - Bool.toZMod bit * (seg52In1AccY44 rho - rho 47653) := by
    have hd : rho 47655 = Bool.toZMod bit * (rho 47653 - seg52In1AccY44 rho) := by
      rw [← hbit]
      unfold seg52In1AccY44
      linear_combination -r3265
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47646 * rho 47647 = rho 47656 := by linear_combination r3266
  have hd1 : rho 47646 * rho 47646 = rho 47657 := by linear_combination r3267
  have hd2 : rho 47647 * rho 47647 = rho 47658 := by linear_combination r3268
  have hd3 : rho 47659 * (rho 47647 * rho 47647 + rho 47646 * rho 47646 * (-1)) =
      2 * (rho 47646 * rho 47647) := by
    rw [hd0, hd1, hd2]
    linear_combination r3269
  have hd4 : rho 47660 * (2 - (rho 47647 * rho 47647 + rho 47646 * rho 47646 * (-1))) =
      rho 47647 * rho 47647 - rho 47646 * rho 47646 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3270
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX44 rho, seg52In1AccY44 rho⟩ ⟨rho 47646, rho 47647⟩
    ⟨rho 47652, rho 47653⟩ ⟨seg52In1AccX45 rho, seg52In1AccY45 rho⟩ ⟨rho 47659, rho 47660⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows45 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3271 rho ∧ Seg52.relationRow3272 rho ∧ Seg52.relationRow3273 rho ∧ Seg52.relationRow3274 rho ∧ Seg52.relationRow3275 rho ∧ Seg52.relationRow3276 rho ∧ Seg52.relationRow3277 rho ∧ Seg52.relationRow3278 rho ∧ Seg52.relationRow3279 rho ∧ Seg52.relationRow3280 rho ∧ Seg52.relationRow3281 rho ∧ Seg52.relationRow3282 rho ∧ Seg52.relationRow3283 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart40 at p40

  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3271, r3272, r3273, r3274, r3275, r3276, r3277, r3278, r3279⟩

  unfold Seg52.relationPart41 at p41

  rcases p41 with ⟨r3280, r3281, r3282, r3283, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3271, r3272, r3273, r3274, r3275, r3276, r3277, r3278, r3279, r3280, r3281, r3282, r3283⟩

theorem seg52In1_rung45 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46999 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX45 rho, seg52In1AccY45 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47659, rho 47660⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX45 rho, seg52In1AccY45 rho⟩ ⟨rho 47659, rho 47660⟩
        ⟨seg52In1AccX46 rho, seg52In1AccY46 rho⟩ ⟨rho 47672, rho 47673⟩ := by
  obtain ⟨r3271, r3272, r3273, r3274, r3275, r3276, r3277, r3278, r3279, r3280, r3281, r3282, r3283⟩ := seg52In1_rows45 rho h
  unfold Seg52.relationRow3271 at r3271

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3271

  unfold Seg52.relationRow3272 at r3272

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3272

  unfold Seg52.relationRow3273 at r3273

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3273

  unfold Seg52.relationRow3274 at r3274

  unfold Seg52.relationRow3275 at r3275

  unfold Seg52.relationRow3276 at r3276

  unfold Seg52.relationRow3277 at r3277

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3277

  unfold Seg52.relationRow3278 at r3278

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3278

  unfold Seg52.relationRow3279 at r3279

  unfold Seg52.relationRow3280 at r3280

  unfold Seg52.relationRow3281 at r3281

  unfold Seg52.relationRow3282 at r3282

  unfold Seg52.relationRow3283 at r3283

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX46 rho = seg52In1AccX45 rho + rho 47667 := by
    unfold seg52In1AccX46 seg52In1AccX45
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 45]

    ring

  have hnexty : seg52In1AccY46 rho = seg52In1AccY45 rho + rho 47668 := by
    unfold seg52In1AccY46 seg52In1AccY45
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 45]

    ring

  have ha0 : (rho 47659 + rho 47660) * (seg52In1AccX45 rho + seg52In1AccY45 rho) = rho 47661 := by
    unfold seg52In1AccX45 seg52In1AccY45
    linear_combination r3271
  have ha1 : rho 47660 * seg52In1AccX45 rho = rho 47662 := by
    unfold seg52In1AccX45
    linear_combination r3272
  have ha2 : rho 47659 * seg52In1AccY45 rho = rho 47663 := by
    unfold seg52In1AccY45
    linear_combination r3273
  have ha3 : 3021 * rho 47662 * rho 47663 = rho 47664 := by
    linear_combination r3274
  have ha4 : rho 47665 * (1 + rho 47664) = rho 47662 + rho 47663 := by
    linear_combination r3275
  have ha5 : rho 47666 * (1 - rho 47664) = rho 47661 - rho 47662 - rho 47663 := by
    linear_combination r3276
  have haddx :
      rho 47665 * (1 + 3021 * (rho 47660 * seg52In1AccX45 rho) * (rho 47659 * seg52In1AccY45 rho)) =
        rho 47660 * seg52In1AccX45 rho + rho 47659 * seg52In1AccY45 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47666 * (1 - 3021 * (rho 47660 * seg52In1AccX45 rho) * (rho 47659 * seg52In1AccY45 rho)) =
        (-1) * (rho 47660 * seg52In1AccX45 rho) - rho 47659 * seg52In1AccY45 rho +
          (seg52In1AccY45 rho - seg52In1AccX45 rho * (-1)) * (rho 47659 + rho 47660) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47666 * (1 - rho 47664) = rho 47661 - rho 47662 - rho 47663 := ha5
      _ = (-1) * rho 47662 - rho 47663 + (seg52In1AccY45 rho - seg52In1AccX45 rho * (-1)) *
          (rho 47659 + rho 47660) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX46 rho = seg52In1AccX45 rho - Bool.toZMod bit * (seg52In1AccX45 rho - rho 47665) := by
    have hd : rho 47667 = Bool.toZMod bit * (rho 47665 - seg52In1AccX45 rho) := by
      rw [← hbit]
      unfold seg52In1AccX45
      linear_combination -r3277
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY46 rho = seg52In1AccY45 rho - Bool.toZMod bit * (seg52In1AccY45 rho - rho 47666) := by
    have hd : rho 47668 = Bool.toZMod bit * (rho 47666 - seg52In1AccY45 rho) := by
      rw [← hbit]
      unfold seg52In1AccY45
      linear_combination -r3278
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47659 * rho 47660 = rho 47669 := by linear_combination r3279
  have hd1 : rho 47659 * rho 47659 = rho 47670 := by linear_combination r3280
  have hd2 : rho 47660 * rho 47660 = rho 47671 := by linear_combination r3281
  have hd3 : rho 47672 * (rho 47660 * rho 47660 + rho 47659 * rho 47659 * (-1)) =
      2 * (rho 47659 * rho 47660) := by
    rw [hd0, hd1, hd2]
    linear_combination r3282
  have hd4 : rho 47673 * (2 - (rho 47660 * rho 47660 + rho 47659 * rho 47659 * (-1))) =
      rho 47660 * rho 47660 - rho 47659 * rho 47659 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3283
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX45 rho, seg52In1AccY45 rho⟩ ⟨rho 47659, rho 47660⟩
    ⟨rho 47665, rho 47666⟩ ⟨seg52In1AccX46 rho, seg52In1AccY46 rho⟩ ⟨rho 47672, rho 47673⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows46 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3284 rho ∧ Seg52.relationRow3285 rho ∧ Seg52.relationRow3286 rho ∧ Seg52.relationRow3287 rho ∧ Seg52.relationRow3288 rho ∧ Seg52.relationRow3289 rho ∧ Seg52.relationRow3290 rho ∧ Seg52.relationRow3291 rho ∧ Seg52.relationRow3292 rho ∧ Seg52.relationRow3293 rho ∧ Seg52.relationRow3294 rho ∧ Seg52.relationRow3295 rho ∧ Seg52.relationRow3296 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart41 at p41

  rcases p41 with ⟨_, _, _, _, r3284, r3285, r3286, r3287, r3288, r3289, r3290, r3291, r3292, r3293, r3294, r3295, r3296, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3284, r3285, r3286, r3287, r3288, r3289, r3290, r3291, r3292, r3293, r3294, r3295, r3296⟩

theorem seg52In1_rung46 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47000 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX46 rho, seg52In1AccY46 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47672, rho 47673⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX46 rho, seg52In1AccY46 rho⟩ ⟨rho 47672, rho 47673⟩
        ⟨seg52In1AccX47 rho, seg52In1AccY47 rho⟩ ⟨rho 47685, rho 47686⟩ := by
  obtain ⟨r3284, r3285, r3286, r3287, r3288, r3289, r3290, r3291, r3292, r3293, r3294, r3295, r3296⟩ := seg52In1_rows46 rho h
  unfold Seg52.relationRow3284 at r3284

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3284

  unfold Seg52.relationRow3285 at r3285

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3285

  unfold Seg52.relationRow3286 at r3286

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3286

  unfold Seg52.relationRow3287 at r3287

  unfold Seg52.relationRow3288 at r3288

  unfold Seg52.relationRow3289 at r3289

  unfold Seg52.relationRow3290 at r3290

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3290

  unfold Seg52.relationRow3291 at r3291

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3291

  unfold Seg52.relationRow3292 at r3292

  unfold Seg52.relationRow3293 at r3293

  unfold Seg52.relationRow3294 at r3294

  unfold Seg52.relationRow3295 at r3295

  unfold Seg52.relationRow3296 at r3296

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX47 rho = seg52In1AccX46 rho + rho 47680 := by
    unfold seg52In1AccX47 seg52In1AccX46
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 46]

    ring

  have hnexty : seg52In1AccY47 rho = seg52In1AccY46 rho + rho 47681 := by
    unfold seg52In1AccY47 seg52In1AccY46
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 46]

    ring

  have ha0 : (rho 47672 + rho 47673) * (seg52In1AccX46 rho + seg52In1AccY46 rho) = rho 47674 := by
    unfold seg52In1AccX46 seg52In1AccY46
    linear_combination r3284
  have ha1 : rho 47673 * seg52In1AccX46 rho = rho 47675 := by
    unfold seg52In1AccX46
    linear_combination r3285
  have ha2 : rho 47672 * seg52In1AccY46 rho = rho 47676 := by
    unfold seg52In1AccY46
    linear_combination r3286
  have ha3 : 3021 * rho 47675 * rho 47676 = rho 47677 := by
    linear_combination r3287
  have ha4 : rho 47678 * (1 + rho 47677) = rho 47675 + rho 47676 := by
    linear_combination r3288
  have ha5 : rho 47679 * (1 - rho 47677) = rho 47674 - rho 47675 - rho 47676 := by
    linear_combination r3289
  have haddx :
      rho 47678 * (1 + 3021 * (rho 47673 * seg52In1AccX46 rho) * (rho 47672 * seg52In1AccY46 rho)) =
        rho 47673 * seg52In1AccX46 rho + rho 47672 * seg52In1AccY46 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47679 * (1 - 3021 * (rho 47673 * seg52In1AccX46 rho) * (rho 47672 * seg52In1AccY46 rho)) =
        (-1) * (rho 47673 * seg52In1AccX46 rho) - rho 47672 * seg52In1AccY46 rho +
          (seg52In1AccY46 rho - seg52In1AccX46 rho * (-1)) * (rho 47672 + rho 47673) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47679 * (1 - rho 47677) = rho 47674 - rho 47675 - rho 47676 := ha5
      _ = (-1) * rho 47675 - rho 47676 + (seg52In1AccY46 rho - seg52In1AccX46 rho * (-1)) *
          (rho 47672 + rho 47673) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX47 rho = seg52In1AccX46 rho - Bool.toZMod bit * (seg52In1AccX46 rho - rho 47678) := by
    have hd : rho 47680 = Bool.toZMod bit * (rho 47678 - seg52In1AccX46 rho) := by
      rw [← hbit]
      unfold seg52In1AccX46
      linear_combination -r3290
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY47 rho = seg52In1AccY46 rho - Bool.toZMod bit * (seg52In1AccY46 rho - rho 47679) := by
    have hd : rho 47681 = Bool.toZMod bit * (rho 47679 - seg52In1AccY46 rho) := by
      rw [← hbit]
      unfold seg52In1AccY46
      linear_combination -r3291
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47672 * rho 47673 = rho 47682 := by linear_combination r3292
  have hd1 : rho 47672 * rho 47672 = rho 47683 := by linear_combination r3293
  have hd2 : rho 47673 * rho 47673 = rho 47684 := by linear_combination r3294
  have hd3 : rho 47685 * (rho 47673 * rho 47673 + rho 47672 * rho 47672 * (-1)) =
      2 * (rho 47672 * rho 47673) := by
    rw [hd0, hd1, hd2]
    linear_combination r3295
  have hd4 : rho 47686 * (2 - (rho 47673 * rho 47673 + rho 47672 * rho 47672 * (-1))) =
      rho 47673 * rho 47673 - rho 47672 * rho 47672 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3296
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX46 rho, seg52In1AccY46 rho⟩ ⟨rho 47672, rho 47673⟩
    ⟨rho 47678, rho 47679⟩ ⟨seg52In1AccX47 rho, seg52In1AccY47 rho⟩ ⟨rho 47685, rho 47686⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows47 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3297 rho ∧ Seg52.relationRow3298 rho ∧ Seg52.relationRow3299 rho ∧ Seg52.relationRow3300 rho ∧ Seg52.relationRow3301 rho ∧ Seg52.relationRow3302 rho ∧ Seg52.relationRow3303 rho ∧ Seg52.relationRow3304 rho ∧ Seg52.relationRow3305 rho ∧ Seg52.relationRow3306 rho ∧ Seg52.relationRow3307 rho ∧ Seg52.relationRow3308 rho ∧ Seg52.relationRow3309 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart41 at p41

  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3297, r3298, r3299, r3300, r3301, r3302, r3303, r3304, r3305, r3306, r3307, r3308, r3309, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3297, r3298, r3299, r3300, r3301, r3302, r3303, r3304, r3305, r3306, r3307, r3308, r3309⟩

theorem seg52In1_rung47 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47001 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX47 rho, seg52In1AccY47 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47685, rho 47686⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX47 rho, seg52In1AccY47 rho⟩ ⟨rho 47685, rho 47686⟩
        ⟨seg52In1AccX48 rho, seg52In1AccY48 rho⟩ ⟨rho 47698, rho 47699⟩ := by
  obtain ⟨r3297, r3298, r3299, r3300, r3301, r3302, r3303, r3304, r3305, r3306, r3307, r3308, r3309⟩ := seg52In1_rows47 rho h
  unfold Seg52.relationRow3297 at r3297

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3297

  unfold Seg52.relationRow3298 at r3298

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3298

  unfold Seg52.relationRow3299 at r3299

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3299

  unfold Seg52.relationRow3300 at r3300

  unfold Seg52.relationRow3301 at r3301

  unfold Seg52.relationRow3302 at r3302

  unfold Seg52.relationRow3303 at r3303

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3303

  unfold Seg52.relationRow3304 at r3304

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3304

  unfold Seg52.relationRow3305 at r3305

  unfold Seg52.relationRow3306 at r3306

  unfold Seg52.relationRow3307 at r3307

  unfold Seg52.relationRow3308 at r3308

  unfold Seg52.relationRow3309 at r3309

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX48 rho = seg52In1AccX47 rho + rho 47693 := by
    unfold seg52In1AccX48 seg52In1AccX47
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 47]

    ring

  have hnexty : seg52In1AccY48 rho = seg52In1AccY47 rho + rho 47694 := by
    unfold seg52In1AccY48 seg52In1AccY47
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 47]

    ring

  have ha0 : (rho 47685 + rho 47686) * (seg52In1AccX47 rho + seg52In1AccY47 rho) = rho 47687 := by
    unfold seg52In1AccX47 seg52In1AccY47
    linear_combination r3297
  have ha1 : rho 47686 * seg52In1AccX47 rho = rho 47688 := by
    unfold seg52In1AccX47
    linear_combination r3298
  have ha2 : rho 47685 * seg52In1AccY47 rho = rho 47689 := by
    unfold seg52In1AccY47
    linear_combination r3299
  have ha3 : 3021 * rho 47688 * rho 47689 = rho 47690 := by
    linear_combination r3300
  have ha4 : rho 47691 * (1 + rho 47690) = rho 47688 + rho 47689 := by
    linear_combination r3301
  have ha5 : rho 47692 * (1 - rho 47690) = rho 47687 - rho 47688 - rho 47689 := by
    linear_combination r3302
  have haddx :
      rho 47691 * (1 + 3021 * (rho 47686 * seg52In1AccX47 rho) * (rho 47685 * seg52In1AccY47 rho)) =
        rho 47686 * seg52In1AccX47 rho + rho 47685 * seg52In1AccY47 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47692 * (1 - 3021 * (rho 47686 * seg52In1AccX47 rho) * (rho 47685 * seg52In1AccY47 rho)) =
        (-1) * (rho 47686 * seg52In1AccX47 rho) - rho 47685 * seg52In1AccY47 rho +
          (seg52In1AccY47 rho - seg52In1AccX47 rho * (-1)) * (rho 47685 + rho 47686) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47692 * (1 - rho 47690) = rho 47687 - rho 47688 - rho 47689 := ha5
      _ = (-1) * rho 47688 - rho 47689 + (seg52In1AccY47 rho - seg52In1AccX47 rho * (-1)) *
          (rho 47685 + rho 47686) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX48 rho = seg52In1AccX47 rho - Bool.toZMod bit * (seg52In1AccX47 rho - rho 47691) := by
    have hd : rho 47693 = Bool.toZMod bit * (rho 47691 - seg52In1AccX47 rho) := by
      rw [← hbit]
      unfold seg52In1AccX47
      linear_combination -r3303
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY48 rho = seg52In1AccY47 rho - Bool.toZMod bit * (seg52In1AccY47 rho - rho 47692) := by
    have hd : rho 47694 = Bool.toZMod bit * (rho 47692 - seg52In1AccY47 rho) := by
      rw [← hbit]
      unfold seg52In1AccY47
      linear_combination -r3304
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47685 * rho 47686 = rho 47695 := by linear_combination r3305
  have hd1 : rho 47685 * rho 47685 = rho 47696 := by linear_combination r3306
  have hd2 : rho 47686 * rho 47686 = rho 47697 := by linear_combination r3307
  have hd3 : rho 47698 * (rho 47686 * rho 47686 + rho 47685 * rho 47685 * (-1)) =
      2 * (rho 47685 * rho 47686) := by
    rw [hd0, hd1, hd2]
    linear_combination r3308
  have hd4 : rho 47699 * (2 - (rho 47686 * rho 47686 + rho 47685 * rho 47685 * (-1))) =
      rho 47686 * rho 47686 - rho 47685 * rho 47685 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3309
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX47 rho, seg52In1AccY47 rho⟩ ⟨rho 47685, rho 47686⟩
    ⟨rho 47691, rho 47692⟩ ⟨seg52In1AccX48 rho, seg52In1AccY48 rho⟩ ⟨rho 47698, rho 47699⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows48 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3310 rho ∧ Seg52.relationRow3311 rho ∧ Seg52.relationRow3312 rho ∧ Seg52.relationRow3313 rho ∧ Seg52.relationRow3314 rho ∧ Seg52.relationRow3315 rho ∧ Seg52.relationRow3316 rho ∧ Seg52.relationRow3317 rho ∧ Seg52.relationRow3318 rho ∧ Seg52.relationRow3319 rho ∧ Seg52.relationRow3320 rho ∧ Seg52.relationRow3321 rho ∧ Seg52.relationRow3322 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart41 at p41

  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3310, r3311, r3312, r3313, r3314, r3315, r3316, r3317, r3318, r3319, r3320, r3321, r3322, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3310, r3311, r3312, r3313, r3314, r3315, r3316, r3317, r3318, r3319, r3320, r3321, r3322⟩

theorem seg52In1_rung48 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47002 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX48 rho, seg52In1AccY48 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47698, rho 47699⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX48 rho, seg52In1AccY48 rho⟩ ⟨rho 47698, rho 47699⟩
        ⟨seg52In1AccX49 rho, seg52In1AccY49 rho⟩ ⟨rho 47711, rho 47712⟩ := by
  obtain ⟨r3310, r3311, r3312, r3313, r3314, r3315, r3316, r3317, r3318, r3319, r3320, r3321, r3322⟩ := seg52In1_rows48 rho h
  unfold Seg52.relationRow3310 at r3310

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3310

  unfold Seg52.relationRow3311 at r3311

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3311

  unfold Seg52.relationRow3312 at r3312

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3312

  unfold Seg52.relationRow3313 at r3313

  unfold Seg52.relationRow3314 at r3314

  unfold Seg52.relationRow3315 at r3315

  unfold Seg52.relationRow3316 at r3316

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3316

  unfold Seg52.relationRow3317 at r3317

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3317

  unfold Seg52.relationRow3318 at r3318

  unfold Seg52.relationRow3319 at r3319

  unfold Seg52.relationRow3320 at r3320

  unfold Seg52.relationRow3321 at r3321

  unfold Seg52.relationRow3322 at r3322

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX49 rho = seg52In1AccX48 rho + rho 47706 := by
    unfold seg52In1AccX49 seg52In1AccX48
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 48]

    ring

  have hnexty : seg52In1AccY49 rho = seg52In1AccY48 rho + rho 47707 := by
    unfold seg52In1AccY49 seg52In1AccY48
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 48]

    ring

  have ha0 : (rho 47698 + rho 47699) * (seg52In1AccX48 rho + seg52In1AccY48 rho) = rho 47700 := by
    unfold seg52In1AccX48 seg52In1AccY48
    linear_combination r3310
  have ha1 : rho 47699 * seg52In1AccX48 rho = rho 47701 := by
    unfold seg52In1AccX48
    linear_combination r3311
  have ha2 : rho 47698 * seg52In1AccY48 rho = rho 47702 := by
    unfold seg52In1AccY48
    linear_combination r3312
  have ha3 : 3021 * rho 47701 * rho 47702 = rho 47703 := by
    linear_combination r3313
  have ha4 : rho 47704 * (1 + rho 47703) = rho 47701 + rho 47702 := by
    linear_combination r3314
  have ha5 : rho 47705 * (1 - rho 47703) = rho 47700 - rho 47701 - rho 47702 := by
    linear_combination r3315
  have haddx :
      rho 47704 * (1 + 3021 * (rho 47699 * seg52In1AccX48 rho) * (rho 47698 * seg52In1AccY48 rho)) =
        rho 47699 * seg52In1AccX48 rho + rho 47698 * seg52In1AccY48 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47705 * (1 - 3021 * (rho 47699 * seg52In1AccX48 rho) * (rho 47698 * seg52In1AccY48 rho)) =
        (-1) * (rho 47699 * seg52In1AccX48 rho) - rho 47698 * seg52In1AccY48 rho +
          (seg52In1AccY48 rho - seg52In1AccX48 rho * (-1)) * (rho 47698 + rho 47699) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47705 * (1 - rho 47703) = rho 47700 - rho 47701 - rho 47702 := ha5
      _ = (-1) * rho 47701 - rho 47702 + (seg52In1AccY48 rho - seg52In1AccX48 rho * (-1)) *
          (rho 47698 + rho 47699) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX49 rho = seg52In1AccX48 rho - Bool.toZMod bit * (seg52In1AccX48 rho - rho 47704) := by
    have hd : rho 47706 = Bool.toZMod bit * (rho 47704 - seg52In1AccX48 rho) := by
      rw [← hbit]
      unfold seg52In1AccX48
      linear_combination -r3316
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY49 rho = seg52In1AccY48 rho - Bool.toZMod bit * (seg52In1AccY48 rho - rho 47705) := by
    have hd : rho 47707 = Bool.toZMod bit * (rho 47705 - seg52In1AccY48 rho) := by
      rw [← hbit]
      unfold seg52In1AccY48
      linear_combination -r3317
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47698 * rho 47699 = rho 47708 := by linear_combination r3318
  have hd1 : rho 47698 * rho 47698 = rho 47709 := by linear_combination r3319
  have hd2 : rho 47699 * rho 47699 = rho 47710 := by linear_combination r3320
  have hd3 : rho 47711 * (rho 47699 * rho 47699 + rho 47698 * rho 47698 * (-1)) =
      2 * (rho 47698 * rho 47699) := by
    rw [hd0, hd1, hd2]
    linear_combination r3321
  have hd4 : rho 47712 * (2 - (rho 47699 * rho 47699 + rho 47698 * rho 47698 * (-1))) =
      rho 47699 * rho 47699 - rho 47698 * rho 47698 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3322
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX48 rho, seg52In1AccY48 rho⟩ ⟨rho 47698, rho 47699⟩
    ⟨rho 47704, rho 47705⟩ ⟨seg52In1AccX49 rho, seg52In1AccY49 rho⟩ ⟨rho 47711, rho 47712⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows49 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3323 rho ∧ Seg52.relationRow3324 rho ∧ Seg52.relationRow3325 rho ∧ Seg52.relationRow3326 rho ∧ Seg52.relationRow3327 rho ∧ Seg52.relationRow3328 rho ∧ Seg52.relationRow3329 rho ∧ Seg52.relationRow3330 rho ∧ Seg52.relationRow3331 rho ∧ Seg52.relationRow3332 rho ∧ Seg52.relationRow3333 rho ∧ Seg52.relationRow3334 rho ∧ Seg52.relationRow3335 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart41 at p41

  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3323, r3324, r3325, r3326, r3327, r3328, r3329, r3330, r3331, r3332, r3333, r3334, r3335, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3323, r3324, r3325, r3326, r3327, r3328, r3329, r3330, r3331, r3332, r3333, r3334, r3335⟩

theorem seg52In1_rung49 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47003 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX49 rho, seg52In1AccY49 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47711, rho 47712⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX49 rho, seg52In1AccY49 rho⟩ ⟨rho 47711, rho 47712⟩
        ⟨seg52In1AccX50 rho, seg52In1AccY50 rho⟩ ⟨rho 47724, rho 47725⟩ := by
  obtain ⟨r3323, r3324, r3325, r3326, r3327, r3328, r3329, r3330, r3331, r3332, r3333, r3334, r3335⟩ := seg52In1_rows49 rho h
  unfold Seg52.relationRow3323 at r3323

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3323

  unfold Seg52.relationRow3324 at r3324

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3324

  unfold Seg52.relationRow3325 at r3325

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3325

  unfold Seg52.relationRow3326 at r3326

  unfold Seg52.relationRow3327 at r3327

  unfold Seg52.relationRow3328 at r3328

  unfold Seg52.relationRow3329 at r3329

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3329

  unfold Seg52.relationRow3330 at r3330

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3330

  unfold Seg52.relationRow3331 at r3331

  unfold Seg52.relationRow3332 at r3332

  unfold Seg52.relationRow3333 at r3333

  unfold Seg52.relationRow3334 at r3334

  unfold Seg52.relationRow3335 at r3335

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX50 rho = seg52In1AccX49 rho + rho 47719 := by
    unfold seg52In1AccX50 seg52In1AccX49
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 49]

    ring

  have hnexty : seg52In1AccY50 rho = seg52In1AccY49 rho + rho 47720 := by
    unfold seg52In1AccY50 seg52In1AccY49
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 49]

    ring

  have ha0 : (rho 47711 + rho 47712) * (seg52In1AccX49 rho + seg52In1AccY49 rho) = rho 47713 := by
    unfold seg52In1AccX49 seg52In1AccY49
    linear_combination r3323
  have ha1 : rho 47712 * seg52In1AccX49 rho = rho 47714 := by
    unfold seg52In1AccX49
    linear_combination r3324
  have ha2 : rho 47711 * seg52In1AccY49 rho = rho 47715 := by
    unfold seg52In1AccY49
    linear_combination r3325
  have ha3 : 3021 * rho 47714 * rho 47715 = rho 47716 := by
    linear_combination r3326
  have ha4 : rho 47717 * (1 + rho 47716) = rho 47714 + rho 47715 := by
    linear_combination r3327
  have ha5 : rho 47718 * (1 - rho 47716) = rho 47713 - rho 47714 - rho 47715 := by
    linear_combination r3328
  have haddx :
      rho 47717 * (1 + 3021 * (rho 47712 * seg52In1AccX49 rho) * (rho 47711 * seg52In1AccY49 rho)) =
        rho 47712 * seg52In1AccX49 rho + rho 47711 * seg52In1AccY49 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47718 * (1 - 3021 * (rho 47712 * seg52In1AccX49 rho) * (rho 47711 * seg52In1AccY49 rho)) =
        (-1) * (rho 47712 * seg52In1AccX49 rho) - rho 47711 * seg52In1AccY49 rho +
          (seg52In1AccY49 rho - seg52In1AccX49 rho * (-1)) * (rho 47711 + rho 47712) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47718 * (1 - rho 47716) = rho 47713 - rho 47714 - rho 47715 := ha5
      _ = (-1) * rho 47714 - rho 47715 + (seg52In1AccY49 rho - seg52In1AccX49 rho * (-1)) *
          (rho 47711 + rho 47712) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX50 rho = seg52In1AccX49 rho - Bool.toZMod bit * (seg52In1AccX49 rho - rho 47717) := by
    have hd : rho 47719 = Bool.toZMod bit * (rho 47717 - seg52In1AccX49 rho) := by
      rw [← hbit]
      unfold seg52In1AccX49
      linear_combination -r3329
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY50 rho = seg52In1AccY49 rho - Bool.toZMod bit * (seg52In1AccY49 rho - rho 47718) := by
    have hd : rho 47720 = Bool.toZMod bit * (rho 47718 - seg52In1AccY49 rho) := by
      rw [← hbit]
      unfold seg52In1AccY49
      linear_combination -r3330
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47711 * rho 47712 = rho 47721 := by linear_combination r3331
  have hd1 : rho 47711 * rho 47711 = rho 47722 := by linear_combination r3332
  have hd2 : rho 47712 * rho 47712 = rho 47723 := by linear_combination r3333
  have hd3 : rho 47724 * (rho 47712 * rho 47712 + rho 47711 * rho 47711 * (-1)) =
      2 * (rho 47711 * rho 47712) := by
    rw [hd0, hd1, hd2]
    linear_combination r3334
  have hd4 : rho 47725 * (2 - (rho 47712 * rho 47712 + rho 47711 * rho 47711 * (-1))) =
      rho 47712 * rho 47712 - rho 47711 * rho 47711 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3335
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX49 rho, seg52In1AccY49 rho⟩ ⟨rho 47711, rho 47712⟩
    ⟨rho 47717, rho 47718⟩ ⟨seg52In1AccX50 rho, seg52In1AccY50 rho⟩ ⟨rho 47724, rho 47725⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows50 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3336 rho ∧ Seg52.relationRow3337 rho ∧ Seg52.relationRow3338 rho ∧ Seg52.relationRow3339 rho ∧ Seg52.relationRow3340 rho ∧ Seg52.relationRow3341 rho ∧ Seg52.relationRow3342 rho ∧ Seg52.relationRow3343 rho ∧ Seg52.relationRow3344 rho ∧ Seg52.relationRow3345 rho ∧ Seg52.relationRow3346 rho ∧ Seg52.relationRow3347 rho ∧ Seg52.relationRow3348 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart41 at p41

  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3336, r3337, r3338, r3339, r3340, r3341, r3342, r3343, r3344, r3345, r3346, r3347, r3348, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3336, r3337, r3338, r3339, r3340, r3341, r3342, r3343, r3344, r3345, r3346, r3347, r3348⟩

theorem seg52In1_rung50 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47004 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX50 rho, seg52In1AccY50 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47724, rho 47725⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX50 rho, seg52In1AccY50 rho⟩ ⟨rho 47724, rho 47725⟩
        ⟨seg52In1AccX51 rho, seg52In1AccY51 rho⟩ ⟨rho 47737, rho 47738⟩ := by
  obtain ⟨r3336, r3337, r3338, r3339, r3340, r3341, r3342, r3343, r3344, r3345, r3346, r3347, r3348⟩ := seg52In1_rows50 rho h
  unfold Seg52.relationRow3336 at r3336

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3336

  unfold Seg52.relationRow3337 at r3337

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3337

  unfold Seg52.relationRow3338 at r3338

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3338

  unfold Seg52.relationRow3339 at r3339

  unfold Seg52.relationRow3340 at r3340

  unfold Seg52.relationRow3341 at r3341

  unfold Seg52.relationRow3342 at r3342

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3342

  unfold Seg52.relationRow3343 at r3343

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3343

  unfold Seg52.relationRow3344 at r3344

  unfold Seg52.relationRow3345 at r3345

  unfold Seg52.relationRow3346 at r3346

  unfold Seg52.relationRow3347 at r3347

  unfold Seg52.relationRow3348 at r3348

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX51 rho = seg52In1AccX50 rho + rho 47732 := by
    unfold seg52In1AccX51 seg52In1AccX50
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 50]

    ring

  have hnexty : seg52In1AccY51 rho = seg52In1AccY50 rho + rho 47733 := by
    unfold seg52In1AccY51 seg52In1AccY50
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 50]

    ring

  have ha0 : (rho 47724 + rho 47725) * (seg52In1AccX50 rho + seg52In1AccY50 rho) = rho 47726 := by
    unfold seg52In1AccX50 seg52In1AccY50
    linear_combination r3336
  have ha1 : rho 47725 * seg52In1AccX50 rho = rho 47727 := by
    unfold seg52In1AccX50
    linear_combination r3337
  have ha2 : rho 47724 * seg52In1AccY50 rho = rho 47728 := by
    unfold seg52In1AccY50
    linear_combination r3338
  have ha3 : 3021 * rho 47727 * rho 47728 = rho 47729 := by
    linear_combination r3339
  have ha4 : rho 47730 * (1 + rho 47729) = rho 47727 + rho 47728 := by
    linear_combination r3340
  have ha5 : rho 47731 * (1 - rho 47729) = rho 47726 - rho 47727 - rho 47728 := by
    linear_combination r3341
  have haddx :
      rho 47730 * (1 + 3021 * (rho 47725 * seg52In1AccX50 rho) * (rho 47724 * seg52In1AccY50 rho)) =
        rho 47725 * seg52In1AccX50 rho + rho 47724 * seg52In1AccY50 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47731 * (1 - 3021 * (rho 47725 * seg52In1AccX50 rho) * (rho 47724 * seg52In1AccY50 rho)) =
        (-1) * (rho 47725 * seg52In1AccX50 rho) - rho 47724 * seg52In1AccY50 rho +
          (seg52In1AccY50 rho - seg52In1AccX50 rho * (-1)) * (rho 47724 + rho 47725) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47731 * (1 - rho 47729) = rho 47726 - rho 47727 - rho 47728 := ha5
      _ = (-1) * rho 47727 - rho 47728 + (seg52In1AccY50 rho - seg52In1AccX50 rho * (-1)) *
          (rho 47724 + rho 47725) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX51 rho = seg52In1AccX50 rho - Bool.toZMod bit * (seg52In1AccX50 rho - rho 47730) := by
    have hd : rho 47732 = Bool.toZMod bit * (rho 47730 - seg52In1AccX50 rho) := by
      rw [← hbit]
      unfold seg52In1AccX50
      linear_combination -r3342
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY51 rho = seg52In1AccY50 rho - Bool.toZMod bit * (seg52In1AccY50 rho - rho 47731) := by
    have hd : rho 47733 = Bool.toZMod bit * (rho 47731 - seg52In1AccY50 rho) := by
      rw [← hbit]
      unfold seg52In1AccY50
      linear_combination -r3343
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47724 * rho 47725 = rho 47734 := by linear_combination r3344
  have hd1 : rho 47724 * rho 47724 = rho 47735 := by linear_combination r3345
  have hd2 : rho 47725 * rho 47725 = rho 47736 := by linear_combination r3346
  have hd3 : rho 47737 * (rho 47725 * rho 47725 + rho 47724 * rho 47724 * (-1)) =
      2 * (rho 47724 * rho 47725) := by
    rw [hd0, hd1, hd2]
    linear_combination r3347
  have hd4 : rho 47738 * (2 - (rho 47725 * rho 47725 + rho 47724 * rho 47724 * (-1))) =
      rho 47725 * rho 47725 - rho 47724 * rho 47724 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3348
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX50 rho, seg52In1AccY50 rho⟩ ⟨rho 47724, rho 47725⟩
    ⟨rho 47730, rho 47731⟩ ⟨seg52In1AccX51 rho, seg52In1AccY51 rho⟩ ⟨rho 47737, rho 47738⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows51 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3349 rho ∧ Seg52.relationRow3350 rho ∧ Seg52.relationRow3351 rho ∧ Seg52.relationRow3352 rho ∧ Seg52.relationRow3353 rho ∧ Seg52.relationRow3354 rho ∧ Seg52.relationRow3355 rho ∧ Seg52.relationRow3356 rho ∧ Seg52.relationRow3357 rho ∧ Seg52.relationRow3358 rho ∧ Seg52.relationRow3359 rho ∧ Seg52.relationRow3360 rho ∧ Seg52.relationRow3361 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart41 at p41

  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3349, r3350, r3351, r3352, r3353, r3354, r3355, r3356, r3357, r3358, r3359⟩

  unfold Seg52.relationPart42 at p42

  rcases p42 with ⟨r3360, r3361, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3349, r3350, r3351, r3352, r3353, r3354, r3355, r3356, r3357, r3358, r3359, r3360, r3361⟩

theorem seg52In1_rung51 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47005 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX51 rho, seg52In1AccY51 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47737, rho 47738⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX51 rho, seg52In1AccY51 rho⟩ ⟨rho 47737, rho 47738⟩
        ⟨seg52In1AccX52 rho, seg52In1AccY52 rho⟩ ⟨rho 47750, rho 47751⟩ := by
  obtain ⟨r3349, r3350, r3351, r3352, r3353, r3354, r3355, r3356, r3357, r3358, r3359, r3360, r3361⟩ := seg52In1_rows51 rho h
  unfold Seg52.relationRow3349 at r3349

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3349

  unfold Seg52.relationRow3350 at r3350

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3350

  unfold Seg52.relationRow3351 at r3351

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3351

  unfold Seg52.relationRow3352 at r3352

  unfold Seg52.relationRow3353 at r3353

  unfold Seg52.relationRow3354 at r3354

  unfold Seg52.relationRow3355 at r3355

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3355

  unfold Seg52.relationRow3356 at r3356

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3356

  unfold Seg52.relationRow3357 at r3357

  unfold Seg52.relationRow3358 at r3358

  unfold Seg52.relationRow3359 at r3359

  unfold Seg52.relationRow3360 at r3360

  unfold Seg52.relationRow3361 at r3361

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX52 rho = seg52In1AccX51 rho + rho 47745 := by
    unfold seg52In1AccX52 seg52In1AccX51
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 51]

    ring

  have hnexty : seg52In1AccY52 rho = seg52In1AccY51 rho + rho 47746 := by
    unfold seg52In1AccY52 seg52In1AccY51
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 51]

    ring

  have ha0 : (rho 47737 + rho 47738) * (seg52In1AccX51 rho + seg52In1AccY51 rho) = rho 47739 := by
    unfold seg52In1AccX51 seg52In1AccY51
    linear_combination r3349
  have ha1 : rho 47738 * seg52In1AccX51 rho = rho 47740 := by
    unfold seg52In1AccX51
    linear_combination r3350
  have ha2 : rho 47737 * seg52In1AccY51 rho = rho 47741 := by
    unfold seg52In1AccY51
    linear_combination r3351
  have ha3 : 3021 * rho 47740 * rho 47741 = rho 47742 := by
    linear_combination r3352
  have ha4 : rho 47743 * (1 + rho 47742) = rho 47740 + rho 47741 := by
    linear_combination r3353
  have ha5 : rho 47744 * (1 - rho 47742) = rho 47739 - rho 47740 - rho 47741 := by
    linear_combination r3354
  have haddx :
      rho 47743 * (1 + 3021 * (rho 47738 * seg52In1AccX51 rho) * (rho 47737 * seg52In1AccY51 rho)) =
        rho 47738 * seg52In1AccX51 rho + rho 47737 * seg52In1AccY51 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47744 * (1 - 3021 * (rho 47738 * seg52In1AccX51 rho) * (rho 47737 * seg52In1AccY51 rho)) =
        (-1) * (rho 47738 * seg52In1AccX51 rho) - rho 47737 * seg52In1AccY51 rho +
          (seg52In1AccY51 rho - seg52In1AccX51 rho * (-1)) * (rho 47737 + rho 47738) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47744 * (1 - rho 47742) = rho 47739 - rho 47740 - rho 47741 := ha5
      _ = (-1) * rho 47740 - rho 47741 + (seg52In1AccY51 rho - seg52In1AccX51 rho * (-1)) *
          (rho 47737 + rho 47738) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX52 rho = seg52In1AccX51 rho - Bool.toZMod bit * (seg52In1AccX51 rho - rho 47743) := by
    have hd : rho 47745 = Bool.toZMod bit * (rho 47743 - seg52In1AccX51 rho) := by
      rw [← hbit]
      unfold seg52In1AccX51
      linear_combination -r3355
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY52 rho = seg52In1AccY51 rho - Bool.toZMod bit * (seg52In1AccY51 rho - rho 47744) := by
    have hd : rho 47746 = Bool.toZMod bit * (rho 47744 - seg52In1AccY51 rho) := by
      rw [← hbit]
      unfold seg52In1AccY51
      linear_combination -r3356
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47737 * rho 47738 = rho 47747 := by linear_combination r3357
  have hd1 : rho 47737 * rho 47737 = rho 47748 := by linear_combination r3358
  have hd2 : rho 47738 * rho 47738 = rho 47749 := by linear_combination r3359
  have hd3 : rho 47750 * (rho 47738 * rho 47738 + rho 47737 * rho 47737 * (-1)) =
      2 * (rho 47737 * rho 47738) := by
    rw [hd0, hd1, hd2]
    linear_combination r3360
  have hd4 : rho 47751 * (2 - (rho 47738 * rho 47738 + rho 47737 * rho 47737 * (-1))) =
      rho 47738 * rho 47738 - rho 47737 * rho 47737 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3361
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX51 rho, seg52In1AccY51 rho⟩ ⟨rho 47737, rho 47738⟩
    ⟨rho 47743, rho 47744⟩ ⟨seg52In1AccX52 rho, seg52In1AccY52 rho⟩ ⟨rho 47750, rho 47751⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows52 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3362 rho ∧ Seg52.relationRow3363 rho ∧ Seg52.relationRow3364 rho ∧ Seg52.relationRow3365 rho ∧ Seg52.relationRow3366 rho ∧ Seg52.relationRow3367 rho ∧ Seg52.relationRow3368 rho ∧ Seg52.relationRow3369 rho ∧ Seg52.relationRow3370 rho ∧ Seg52.relationRow3371 rho ∧ Seg52.relationRow3372 rho ∧ Seg52.relationRow3373 rho ∧ Seg52.relationRow3374 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart42 at p42

  rcases p42 with ⟨_, _, r3362, r3363, r3364, r3365, r3366, r3367, r3368, r3369, r3370, r3371, r3372, r3373, r3374, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3362, r3363, r3364, r3365, r3366, r3367, r3368, r3369, r3370, r3371, r3372, r3373, r3374⟩

theorem seg52In1_rung52 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47006 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX52 rho, seg52In1AccY52 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47750, rho 47751⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX52 rho, seg52In1AccY52 rho⟩ ⟨rho 47750, rho 47751⟩
        ⟨seg52In1AccX53 rho, seg52In1AccY53 rho⟩ ⟨rho 47763, rho 47764⟩ := by
  obtain ⟨r3362, r3363, r3364, r3365, r3366, r3367, r3368, r3369, r3370, r3371, r3372, r3373, r3374⟩ := seg52In1_rows52 rho h
  unfold Seg52.relationRow3362 at r3362

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3362

  unfold Seg52.relationRow3363 at r3363

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3363

  unfold Seg52.relationRow3364 at r3364

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3364

  unfold Seg52.relationRow3365 at r3365

  unfold Seg52.relationRow3366 at r3366

  unfold Seg52.relationRow3367 at r3367

  unfold Seg52.relationRow3368 at r3368

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3368

  unfold Seg52.relationRow3369 at r3369

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3369

  unfold Seg52.relationRow3370 at r3370

  unfold Seg52.relationRow3371 at r3371

  unfold Seg52.relationRow3372 at r3372

  unfold Seg52.relationRow3373 at r3373

  unfold Seg52.relationRow3374 at r3374

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX53 rho = seg52In1AccX52 rho + rho 47758 := by
    unfold seg52In1AccX53 seg52In1AccX52
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 52]

    ring

  have hnexty : seg52In1AccY53 rho = seg52In1AccY52 rho + rho 47759 := by
    unfold seg52In1AccY53 seg52In1AccY52
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 52]

    ring

  have ha0 : (rho 47750 + rho 47751) * (seg52In1AccX52 rho + seg52In1AccY52 rho) = rho 47752 := by
    unfold seg52In1AccX52 seg52In1AccY52
    linear_combination r3362
  have ha1 : rho 47751 * seg52In1AccX52 rho = rho 47753 := by
    unfold seg52In1AccX52
    linear_combination r3363
  have ha2 : rho 47750 * seg52In1AccY52 rho = rho 47754 := by
    unfold seg52In1AccY52
    linear_combination r3364
  have ha3 : 3021 * rho 47753 * rho 47754 = rho 47755 := by
    linear_combination r3365
  have ha4 : rho 47756 * (1 + rho 47755) = rho 47753 + rho 47754 := by
    linear_combination r3366
  have ha5 : rho 47757 * (1 - rho 47755) = rho 47752 - rho 47753 - rho 47754 := by
    linear_combination r3367
  have haddx :
      rho 47756 * (1 + 3021 * (rho 47751 * seg52In1AccX52 rho) * (rho 47750 * seg52In1AccY52 rho)) =
        rho 47751 * seg52In1AccX52 rho + rho 47750 * seg52In1AccY52 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47757 * (1 - 3021 * (rho 47751 * seg52In1AccX52 rho) * (rho 47750 * seg52In1AccY52 rho)) =
        (-1) * (rho 47751 * seg52In1AccX52 rho) - rho 47750 * seg52In1AccY52 rho +
          (seg52In1AccY52 rho - seg52In1AccX52 rho * (-1)) * (rho 47750 + rho 47751) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47757 * (1 - rho 47755) = rho 47752 - rho 47753 - rho 47754 := ha5
      _ = (-1) * rho 47753 - rho 47754 + (seg52In1AccY52 rho - seg52In1AccX52 rho * (-1)) *
          (rho 47750 + rho 47751) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX53 rho = seg52In1AccX52 rho - Bool.toZMod bit * (seg52In1AccX52 rho - rho 47756) := by
    have hd : rho 47758 = Bool.toZMod bit * (rho 47756 - seg52In1AccX52 rho) := by
      rw [← hbit]
      unfold seg52In1AccX52
      linear_combination -r3368
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY53 rho = seg52In1AccY52 rho - Bool.toZMod bit * (seg52In1AccY52 rho - rho 47757) := by
    have hd : rho 47759 = Bool.toZMod bit * (rho 47757 - seg52In1AccY52 rho) := by
      rw [← hbit]
      unfold seg52In1AccY52
      linear_combination -r3369
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47750 * rho 47751 = rho 47760 := by linear_combination r3370
  have hd1 : rho 47750 * rho 47750 = rho 47761 := by linear_combination r3371
  have hd2 : rho 47751 * rho 47751 = rho 47762 := by linear_combination r3372
  have hd3 : rho 47763 * (rho 47751 * rho 47751 + rho 47750 * rho 47750 * (-1)) =
      2 * (rho 47750 * rho 47751) := by
    rw [hd0, hd1, hd2]
    linear_combination r3373
  have hd4 : rho 47764 * (2 - (rho 47751 * rho 47751 + rho 47750 * rho 47750 * (-1))) =
      rho 47751 * rho 47751 - rho 47750 * rho 47750 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3374
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX52 rho, seg52In1AccY52 rho⟩ ⟨rho 47750, rho 47751⟩
    ⟨rho 47756, rho 47757⟩ ⟨seg52In1AccX53 rho, seg52In1AccY53 rho⟩ ⟨rho 47763, rho 47764⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows53 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3375 rho ∧ Seg52.relationRow3376 rho ∧ Seg52.relationRow3377 rho ∧ Seg52.relationRow3378 rho ∧ Seg52.relationRow3379 rho ∧ Seg52.relationRow3380 rho ∧ Seg52.relationRow3381 rho ∧ Seg52.relationRow3382 rho ∧ Seg52.relationRow3383 rho ∧ Seg52.relationRow3384 rho ∧ Seg52.relationRow3385 rho ∧ Seg52.relationRow3386 rho ∧ Seg52.relationRow3387 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart42 at p42

  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3375, r3376, r3377, r3378, r3379, r3380, r3381, r3382, r3383, r3384, r3385, r3386, r3387, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3375, r3376, r3377, r3378, r3379, r3380, r3381, r3382, r3383, r3384, r3385, r3386, r3387⟩

theorem seg52In1_rung53 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47007 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX53 rho, seg52In1AccY53 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47763, rho 47764⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX53 rho, seg52In1AccY53 rho⟩ ⟨rho 47763, rho 47764⟩
        ⟨seg52In1AccX54 rho, seg52In1AccY54 rho⟩ ⟨rho 47776, rho 47777⟩ := by
  obtain ⟨r3375, r3376, r3377, r3378, r3379, r3380, r3381, r3382, r3383, r3384, r3385, r3386, r3387⟩ := seg52In1_rows53 rho h
  unfold Seg52.relationRow3375 at r3375

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3375

  unfold Seg52.relationRow3376 at r3376

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3376

  unfold Seg52.relationRow3377 at r3377

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3377

  unfold Seg52.relationRow3378 at r3378

  unfold Seg52.relationRow3379 at r3379

  unfold Seg52.relationRow3380 at r3380

  unfold Seg52.relationRow3381 at r3381

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3381

  unfold Seg52.relationRow3382 at r3382

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3382

  unfold Seg52.relationRow3383 at r3383

  unfold Seg52.relationRow3384 at r3384

  unfold Seg52.relationRow3385 at r3385

  unfold Seg52.relationRow3386 at r3386

  unfold Seg52.relationRow3387 at r3387

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX54 rho = seg52In1AccX53 rho + rho 47771 := by
    unfold seg52In1AccX54 seg52In1AccX53
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 53]

    ring

  have hnexty : seg52In1AccY54 rho = seg52In1AccY53 rho + rho 47772 := by
    unfold seg52In1AccY54 seg52In1AccY53
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 53]

    ring

  have ha0 : (rho 47763 + rho 47764) * (seg52In1AccX53 rho + seg52In1AccY53 rho) = rho 47765 := by
    unfold seg52In1AccX53 seg52In1AccY53
    linear_combination r3375
  have ha1 : rho 47764 * seg52In1AccX53 rho = rho 47766 := by
    unfold seg52In1AccX53
    linear_combination r3376
  have ha2 : rho 47763 * seg52In1AccY53 rho = rho 47767 := by
    unfold seg52In1AccY53
    linear_combination r3377
  have ha3 : 3021 * rho 47766 * rho 47767 = rho 47768 := by
    linear_combination r3378
  have ha4 : rho 47769 * (1 + rho 47768) = rho 47766 + rho 47767 := by
    linear_combination r3379
  have ha5 : rho 47770 * (1 - rho 47768) = rho 47765 - rho 47766 - rho 47767 := by
    linear_combination r3380
  have haddx :
      rho 47769 * (1 + 3021 * (rho 47764 * seg52In1AccX53 rho) * (rho 47763 * seg52In1AccY53 rho)) =
        rho 47764 * seg52In1AccX53 rho + rho 47763 * seg52In1AccY53 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47770 * (1 - 3021 * (rho 47764 * seg52In1AccX53 rho) * (rho 47763 * seg52In1AccY53 rho)) =
        (-1) * (rho 47764 * seg52In1AccX53 rho) - rho 47763 * seg52In1AccY53 rho +
          (seg52In1AccY53 rho - seg52In1AccX53 rho * (-1)) * (rho 47763 + rho 47764) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47770 * (1 - rho 47768) = rho 47765 - rho 47766 - rho 47767 := ha5
      _ = (-1) * rho 47766 - rho 47767 + (seg52In1AccY53 rho - seg52In1AccX53 rho * (-1)) *
          (rho 47763 + rho 47764) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX54 rho = seg52In1AccX53 rho - Bool.toZMod bit * (seg52In1AccX53 rho - rho 47769) := by
    have hd : rho 47771 = Bool.toZMod bit * (rho 47769 - seg52In1AccX53 rho) := by
      rw [← hbit]
      unfold seg52In1AccX53
      linear_combination -r3381
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY54 rho = seg52In1AccY53 rho - Bool.toZMod bit * (seg52In1AccY53 rho - rho 47770) := by
    have hd : rho 47772 = Bool.toZMod bit * (rho 47770 - seg52In1AccY53 rho) := by
      rw [← hbit]
      unfold seg52In1AccY53
      linear_combination -r3382
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47763 * rho 47764 = rho 47773 := by linear_combination r3383
  have hd1 : rho 47763 * rho 47763 = rho 47774 := by linear_combination r3384
  have hd2 : rho 47764 * rho 47764 = rho 47775 := by linear_combination r3385
  have hd3 : rho 47776 * (rho 47764 * rho 47764 + rho 47763 * rho 47763 * (-1)) =
      2 * (rho 47763 * rho 47764) := by
    rw [hd0, hd1, hd2]
    linear_combination r3386
  have hd4 : rho 47777 * (2 - (rho 47764 * rho 47764 + rho 47763 * rho 47763 * (-1))) =
      rho 47764 * rho 47764 - rho 47763 * rho 47763 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3387
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX53 rho, seg52In1AccY53 rho⟩ ⟨rho 47763, rho 47764⟩
    ⟨rho 47769, rho 47770⟩ ⟨seg52In1AccX54 rho, seg52In1AccY54 rho⟩ ⟨rho 47776, rho 47777⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows54 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3388 rho ∧ Seg52.relationRow3389 rho ∧ Seg52.relationRow3390 rho ∧ Seg52.relationRow3391 rho ∧ Seg52.relationRow3392 rho ∧ Seg52.relationRow3393 rho ∧ Seg52.relationRow3394 rho ∧ Seg52.relationRow3395 rho ∧ Seg52.relationRow3396 rho ∧ Seg52.relationRow3397 rho ∧ Seg52.relationRow3398 rho ∧ Seg52.relationRow3399 rho ∧ Seg52.relationRow3400 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart42 at p42

  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3388, r3389, r3390, r3391, r3392, r3393, r3394, r3395, r3396, r3397, r3398, r3399, r3400, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3388, r3389, r3390, r3391, r3392, r3393, r3394, r3395, r3396, r3397, r3398, r3399, r3400⟩

theorem seg52In1_rung54 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47008 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX54 rho, seg52In1AccY54 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47776, rho 47777⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX54 rho, seg52In1AccY54 rho⟩ ⟨rho 47776, rho 47777⟩
        ⟨seg52In1AccX55 rho, seg52In1AccY55 rho⟩ ⟨rho 47789, rho 47790⟩ := by
  obtain ⟨r3388, r3389, r3390, r3391, r3392, r3393, r3394, r3395, r3396, r3397, r3398, r3399, r3400⟩ := seg52In1_rows54 rho h
  unfold Seg52.relationRow3388 at r3388

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3388

  unfold Seg52.relationRow3389 at r3389

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3389

  unfold Seg52.relationRow3390 at r3390

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3390

  unfold Seg52.relationRow3391 at r3391

  unfold Seg52.relationRow3392 at r3392

  unfold Seg52.relationRow3393 at r3393

  unfold Seg52.relationRow3394 at r3394

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3394

  unfold Seg52.relationRow3395 at r3395

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3395

  unfold Seg52.relationRow3396 at r3396

  unfold Seg52.relationRow3397 at r3397

  unfold Seg52.relationRow3398 at r3398

  unfold Seg52.relationRow3399 at r3399

  unfold Seg52.relationRow3400 at r3400

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX55 rho = seg52In1AccX54 rho + rho 47784 := by
    unfold seg52In1AccX55 seg52In1AccX54
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 54]

    ring

  have hnexty : seg52In1AccY55 rho = seg52In1AccY54 rho + rho 47785 := by
    unfold seg52In1AccY55 seg52In1AccY54
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 54]

    ring

  have ha0 : (rho 47776 + rho 47777) * (seg52In1AccX54 rho + seg52In1AccY54 rho) = rho 47778 := by
    unfold seg52In1AccX54 seg52In1AccY54
    linear_combination r3388
  have ha1 : rho 47777 * seg52In1AccX54 rho = rho 47779 := by
    unfold seg52In1AccX54
    linear_combination r3389
  have ha2 : rho 47776 * seg52In1AccY54 rho = rho 47780 := by
    unfold seg52In1AccY54
    linear_combination r3390
  have ha3 : 3021 * rho 47779 * rho 47780 = rho 47781 := by
    linear_combination r3391
  have ha4 : rho 47782 * (1 + rho 47781) = rho 47779 + rho 47780 := by
    linear_combination r3392
  have ha5 : rho 47783 * (1 - rho 47781) = rho 47778 - rho 47779 - rho 47780 := by
    linear_combination r3393
  have haddx :
      rho 47782 * (1 + 3021 * (rho 47777 * seg52In1AccX54 rho) * (rho 47776 * seg52In1AccY54 rho)) =
        rho 47777 * seg52In1AccX54 rho + rho 47776 * seg52In1AccY54 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47783 * (1 - 3021 * (rho 47777 * seg52In1AccX54 rho) * (rho 47776 * seg52In1AccY54 rho)) =
        (-1) * (rho 47777 * seg52In1AccX54 rho) - rho 47776 * seg52In1AccY54 rho +
          (seg52In1AccY54 rho - seg52In1AccX54 rho * (-1)) * (rho 47776 + rho 47777) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47783 * (1 - rho 47781) = rho 47778 - rho 47779 - rho 47780 := ha5
      _ = (-1) * rho 47779 - rho 47780 + (seg52In1AccY54 rho - seg52In1AccX54 rho * (-1)) *
          (rho 47776 + rho 47777) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX55 rho = seg52In1AccX54 rho - Bool.toZMod bit * (seg52In1AccX54 rho - rho 47782) := by
    have hd : rho 47784 = Bool.toZMod bit * (rho 47782 - seg52In1AccX54 rho) := by
      rw [← hbit]
      unfold seg52In1AccX54
      linear_combination -r3394
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY55 rho = seg52In1AccY54 rho - Bool.toZMod bit * (seg52In1AccY54 rho - rho 47783) := by
    have hd : rho 47785 = Bool.toZMod bit * (rho 47783 - seg52In1AccY54 rho) := by
      rw [← hbit]
      unfold seg52In1AccY54
      linear_combination -r3395
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47776 * rho 47777 = rho 47786 := by linear_combination r3396
  have hd1 : rho 47776 * rho 47776 = rho 47787 := by linear_combination r3397
  have hd2 : rho 47777 * rho 47777 = rho 47788 := by linear_combination r3398
  have hd3 : rho 47789 * (rho 47777 * rho 47777 + rho 47776 * rho 47776 * (-1)) =
      2 * (rho 47776 * rho 47777) := by
    rw [hd0, hd1, hd2]
    linear_combination r3399
  have hd4 : rho 47790 * (2 - (rho 47777 * rho 47777 + rho 47776 * rho 47776 * (-1))) =
      rho 47777 * rho 47777 - rho 47776 * rho 47776 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3400
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX54 rho, seg52In1AccY54 rho⟩ ⟨rho 47776, rho 47777⟩
    ⟨rho 47782, rho 47783⟩ ⟨seg52In1AccX55 rho, seg52In1AccY55 rho⟩ ⟨rho 47789, rho 47790⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_hstep_c4 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (46954 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 44 ≤ i → i < 55 →
      EdwardsBridge.onCurve (seg52In1AccState rho i) →
      EdwardsBridge.onCurve (seg52In1CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In1AccState rho i) (seg52In1CurState rho i)
        (seg52In1AccState rho (i + 1)) (seg52In1CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In1_rung44 rho h bits[44]! (hbitAt 44 (by omega)) hacc hcur
  · exact seg52In1_rung45 rho h bits[45]! (hbitAt 45 (by omega)) hacc hcur
  · exact seg52In1_rung46 rho h bits[46]! (hbitAt 46 (by omega)) hacc hcur
  · exact seg52In1_rung47 rho h bits[47]! (hbitAt 47 (by omega)) hacc hcur
  · exact seg52In1_rung48 rho h bits[48]! (hbitAt 48 (by omega)) hacc hcur
  · exact seg52In1_rung49 rho h bits[49]! (hbitAt 49 (by omega)) hacc hcur
  · exact seg52In1_rung50 rho h bits[50]! (hbitAt 50 (by omega)) hacc hcur
  · exact seg52In1_rung51 rho h bits[51]! (hbitAt 51 (by omega)) hacc hcur
  · exact seg52In1_rung52 rho h bits[52]! (hbitAt 52 (by omega)) hacc hcur
  · exact seg52In1_rung53 rho h bits[53]! (hbitAt 53 (by omega)) hacc hcur
  · exact seg52In1_rung54 rho h bits[54]! (hbitAt 54 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
