import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In1_rows0 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3332 rho ∧ Seg52.relationRow3333 rho ∧ Seg52.relationRow3334 rho ∧ Seg52.relationRow3335 rho ∧ Seg52.relationRow3336 rho ∧ Seg52.relationRow3337 rho ∧ Seg52.relationRow3338 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart41 at p41

  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3332, r3333, r3334, r3335, r3336, r3337, r3338, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3332, r3333, r3334, r3335, r3336, r3337, r3338⟩

theorem seg52In1_rung0 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47594 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX0 rho, seg52In1AccY0 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45162, rho 45164⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX0 rho, seg52In1AccY0 rho⟩ ⟨rho 45162, rho 45164⟩
        ⟨seg52In1AccX1 rho, seg52In1AccY1 rho⟩ ⟨rho 47727, rho 47728⟩ := by
  obtain ⟨r3332, r3333, r3334, r3335, r3336, r3337, r3338⟩ := seg52In1_rows0 rho h
  unfold Seg52.relationRow3332 at r3332

  unfold Seg52.relationRow3333 at r3333

  unfold Seg52.relationRow3334 at r3334

  unfold Seg52.relationRow3335 at r3335

  unfold Seg52.relationRow3336 at r3336

  unfold Seg52.relationRow3337 at r3337

  unfold Seg52.relationRow3338 at r3338

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX1 rho = seg52In1AccX0 rho + rho 47722 := by
    unfold seg52In1AccX1 seg52In1AccX0
    ring

  have hnexty : seg52In1AccY1 rho = seg52In1AccY0 rho + rho 47723 := by
    unfold seg52In1AccY1 seg52In1AccY0
    ring

  have haddx :
      rho 45162 * (1 + 3021 * (rho 45164 * seg52In1AccX0 rho) * (rho 45162 * seg52In1AccY0 rho)) =
        rho 45164 * seg52In1AccX0 rho + rho 45162 * seg52In1AccY0 rho := by
    unfold seg52In1AccX0 seg52In1AccY0
    ring
  have haddy :
      rho 45164 * (1 - 3021 * (rho 45164 * seg52In1AccX0 rho) * (rho 45162 * seg52In1AccY0 rho)) =
        (-1) * (rho 45164 * seg52In1AccX0 rho) - rho 45162 * seg52In1AccY0 rho +
          (seg52In1AccY0 rho - seg52In1AccX0 rho * (-1)) * (rho 45162 + rho 45164) := by
    unfold seg52In1AccX0 seg52In1AccY0
    ring
  have hselx : seg52In1AccX1 rho = seg52In1AccX0 rho - Bool.toZMod bit * (seg52In1AccX0 rho - rho 45162) := by
    have hd : rho 47722 = Bool.toZMod bit * (rho 45162 - seg52In1AccX0 rho) := by
      rw [← hbit]
      unfold seg52In1AccX0
      linear_combination -r3332
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY1 rho = seg52In1AccY0 rho - Bool.toZMod bit * (seg52In1AccY0 rho - rho 45164) := by
    have hd : rho 47723 = Bool.toZMod bit * (rho 45164 - seg52In1AccY0 rho) := by
      rw [← hbit]
      unfold seg52In1AccY0
      linear_combination -r3333
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45162 * rho 45164 = rho 47724 := by linear_combination r3334
  have hd1 : rho 45162 * rho 45162 = rho 47725 := by linear_combination r3335
  have hd2 : rho 45164 * rho 45164 = rho 47726 := by linear_combination r3336
  have hd3 : rho 47727 * (rho 45164 * rho 45164 + rho 45162 * rho 45162 * (-1)) =
      2 * (rho 45162 * rho 45164) := by
    rw [hd0, hd1, hd2]
    linear_combination r3337
  have hd4 : rho 47728 * (2 - (rho 45164 * rho 45164 + rho 45162 * rho 45162 * (-1))) =
      rho 45164 * rho 45164 - rho 45162 * rho 45162 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3338
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX0 rho, seg52In1AccY0 rho⟩ ⟨rho 45162, rho 45164⟩
    ⟨rho 45162, rho 45164⟩ ⟨seg52In1AccX1 rho, seg52In1AccY1 rho⟩ ⟨rho 47727, rho 47728⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows1 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3339 rho ∧ Seg52.relationRow3340 rho ∧ Seg52.relationRow3341 rho ∧ Seg52.relationRow3342 rho ∧ Seg52.relationRow3343 rho ∧ Seg52.relationRow3344 rho ∧ Seg52.relationRow3345 rho ∧ Seg52.relationRow3346 rho ∧ Seg52.relationRow3347 rho ∧ Seg52.relationRow3348 rho ∧ Seg52.relationRow3349 rho ∧ Seg52.relationRow3350 rho ∧ Seg52.relationRow3351 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart41 at p41

  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3339, r3340, r3341, r3342, r3343, r3344, r3345, r3346, r3347, r3348, r3349, r3350, r3351, _, _, _, _, _, _, _, _⟩

  exact ⟨r3339, r3340, r3341, r3342, r3343, r3344, r3345, r3346, r3347, r3348, r3349, r3350, r3351⟩

theorem seg52In1_rung1 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47595 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX1 rho, seg52In1AccY1 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47727, rho 47728⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX1 rho, seg52In1AccY1 rho⟩ ⟨rho 47727, rho 47728⟩
        ⟨seg52In1AccX2 rho, seg52In1AccY2 rho⟩ ⟨rho 47740, rho 47741⟩ := by
  obtain ⟨r3339, r3340, r3341, r3342, r3343, r3344, r3345, r3346, r3347, r3348, r3349, r3350, r3351⟩ := seg52In1_rows1 rho h
  unfold Seg52.relationRow3339 at r3339

  unfold Seg52.relationRow3340 at r3340

  unfold Seg52.relationRow3341 at r3341

  unfold Seg52.relationRow3342 at r3342

  unfold Seg52.relationRow3343 at r3343

  unfold Seg52.relationRow3344 at r3344

  unfold Seg52.relationRow3345 at r3345

  unfold Seg52.relationRow3346 at r3346

  unfold Seg52.relationRow3347 at r3347

  unfold Seg52.relationRow3348 at r3348

  unfold Seg52.relationRow3349 at r3349

  unfold Seg52.relationRow3350 at r3350

  unfold Seg52.relationRow3351 at r3351

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX2 rho = seg52In1AccX1 rho + rho 47735 := by
    unfold seg52In1AccX2 seg52In1AccX1
    ring

  have hnexty : seg52In1AccY2 rho = seg52In1AccY1 rho + rho 47736 := by
    unfold seg52In1AccY2 seg52In1AccY1
    ring

  have ha0 : (rho 47727 + rho 47728) * (seg52In1AccX1 rho + seg52In1AccY1 rho) = rho 47729 := by
    unfold seg52In1AccX1 seg52In1AccY1
    linear_combination r3339
  have ha1 : rho 47728 * seg52In1AccX1 rho = rho 47730 := by
    unfold seg52In1AccX1
    linear_combination r3340
  have ha2 : rho 47727 * seg52In1AccY1 rho = rho 47731 := by
    unfold seg52In1AccY1
    linear_combination r3341
  have ha3 : 3021 * rho 47730 * rho 47731 = rho 47732 := by
    linear_combination r3342
  have ha4 : rho 47733 * (1 + rho 47732) = rho 47730 + rho 47731 := by
    linear_combination r3343
  have ha5 : rho 47734 * (1 - rho 47732) = rho 47729 - rho 47730 - rho 47731 := by
    linear_combination r3344
  have haddx :
      rho 47733 * (1 + 3021 * (rho 47728 * seg52In1AccX1 rho) * (rho 47727 * seg52In1AccY1 rho)) =
        rho 47728 * seg52In1AccX1 rho + rho 47727 * seg52In1AccY1 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47734 * (1 - 3021 * (rho 47728 * seg52In1AccX1 rho) * (rho 47727 * seg52In1AccY1 rho)) =
        (-1) * (rho 47728 * seg52In1AccX1 rho) - rho 47727 * seg52In1AccY1 rho +
          (seg52In1AccY1 rho - seg52In1AccX1 rho * (-1)) * (rho 47727 + rho 47728) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47734 * (1 - rho 47732) = rho 47729 - rho 47730 - rho 47731 := ha5
      _ = (-1) * rho 47730 - rho 47731 + (seg52In1AccY1 rho - seg52In1AccX1 rho * (-1)) *
          (rho 47727 + rho 47728) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX2 rho = seg52In1AccX1 rho - Bool.toZMod bit * (seg52In1AccX1 rho - rho 47733) := by
    have hd : rho 47735 = Bool.toZMod bit * (rho 47733 - seg52In1AccX1 rho) := by
      rw [← hbit]
      unfold seg52In1AccX1
      linear_combination -r3345
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY2 rho = seg52In1AccY1 rho - Bool.toZMod bit * (seg52In1AccY1 rho - rho 47734) := by
    have hd : rho 47736 = Bool.toZMod bit * (rho 47734 - seg52In1AccY1 rho) := by
      rw [← hbit]
      unfold seg52In1AccY1
      linear_combination -r3346
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47727 * rho 47728 = rho 47737 := by linear_combination r3347
  have hd1 : rho 47727 * rho 47727 = rho 47738 := by linear_combination r3348
  have hd2 : rho 47728 * rho 47728 = rho 47739 := by linear_combination r3349
  have hd3 : rho 47740 * (rho 47728 * rho 47728 + rho 47727 * rho 47727 * (-1)) =
      2 * (rho 47727 * rho 47728) := by
    rw [hd0, hd1, hd2]
    linear_combination r3350
  have hd4 : rho 47741 * (2 - (rho 47728 * rho 47728 + rho 47727 * rho 47727 * (-1))) =
      rho 47728 * rho 47728 - rho 47727 * rho 47727 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3351
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX1 rho, seg52In1AccY1 rho⟩ ⟨rho 47727, rho 47728⟩
    ⟨rho 47733, rho 47734⟩ ⟨seg52In1AccX2 rho, seg52In1AccY2 rho⟩ ⟨rho 47740, rho 47741⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows2 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3352 rho ∧ Seg52.relationRow3353 rho ∧ Seg52.relationRow3354 rho ∧ Seg52.relationRow3355 rho ∧ Seg52.relationRow3356 rho ∧ Seg52.relationRow3357 rho ∧ Seg52.relationRow3358 rho ∧ Seg52.relationRow3359 rho ∧ Seg52.relationRow3360 rho ∧ Seg52.relationRow3361 rho ∧ Seg52.relationRow3362 rho ∧ Seg52.relationRow3363 rho ∧ Seg52.relationRow3364 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart41 at p41

  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3352, r3353, r3354, r3355, r3356, r3357, r3358, r3359⟩

  unfold Seg52.relationPart42 at p42

  rcases p42 with ⟨r3360, r3361, r3362, r3363, r3364, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3352, r3353, r3354, r3355, r3356, r3357, r3358, r3359, r3360, r3361, r3362, r3363, r3364⟩

theorem seg52In1_rung2 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47596 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX2 rho, seg52In1AccY2 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47740, rho 47741⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX2 rho, seg52In1AccY2 rho⟩ ⟨rho 47740, rho 47741⟩
        ⟨seg52In1AccX3 rho, seg52In1AccY3 rho⟩ ⟨rho 47753, rho 47754⟩ := by
  obtain ⟨r3352, r3353, r3354, r3355, r3356, r3357, r3358, r3359, r3360, r3361, r3362, r3363, r3364⟩ := seg52In1_rows2 rho h
  unfold Seg52.relationRow3352 at r3352

  unfold Seg52.relationRow3353 at r3353

  unfold Seg52.relationRow3354 at r3354

  unfold Seg52.relationRow3355 at r3355

  unfold Seg52.relationRow3356 at r3356

  unfold Seg52.relationRow3357 at r3357

  unfold Seg52.relationRow3358 at r3358

  unfold Seg52.relationRow3359 at r3359

  unfold Seg52.relationRow3360 at r3360

  unfold Seg52.relationRow3361 at r3361

  unfold Seg52.relationRow3362 at r3362

  unfold Seg52.relationRow3363 at r3363

  unfold Seg52.relationRow3364 at r3364

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX3 rho = seg52In1AccX2 rho + rho 47748 := by
    unfold seg52In1AccX3 seg52In1AccX2
    ring

  have hnexty : seg52In1AccY3 rho = seg52In1AccY2 rho + rho 47749 := by
    unfold seg52In1AccY3 seg52In1AccY2
    ring

  have ha0 : (rho 47740 + rho 47741) * (seg52In1AccX2 rho + seg52In1AccY2 rho) = rho 47742 := by
    unfold seg52In1AccX2 seg52In1AccY2
    linear_combination r3352
  have ha1 : rho 47741 * seg52In1AccX2 rho = rho 47743 := by
    unfold seg52In1AccX2
    linear_combination r3353
  have ha2 : rho 47740 * seg52In1AccY2 rho = rho 47744 := by
    unfold seg52In1AccY2
    linear_combination r3354
  have ha3 : 3021 * rho 47743 * rho 47744 = rho 47745 := by
    linear_combination r3355
  have ha4 : rho 47746 * (1 + rho 47745) = rho 47743 + rho 47744 := by
    linear_combination r3356
  have ha5 : rho 47747 * (1 - rho 47745) = rho 47742 - rho 47743 - rho 47744 := by
    linear_combination r3357
  have haddx :
      rho 47746 * (1 + 3021 * (rho 47741 * seg52In1AccX2 rho) * (rho 47740 * seg52In1AccY2 rho)) =
        rho 47741 * seg52In1AccX2 rho + rho 47740 * seg52In1AccY2 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47747 * (1 - 3021 * (rho 47741 * seg52In1AccX2 rho) * (rho 47740 * seg52In1AccY2 rho)) =
        (-1) * (rho 47741 * seg52In1AccX2 rho) - rho 47740 * seg52In1AccY2 rho +
          (seg52In1AccY2 rho - seg52In1AccX2 rho * (-1)) * (rho 47740 + rho 47741) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47747 * (1 - rho 47745) = rho 47742 - rho 47743 - rho 47744 := ha5
      _ = (-1) * rho 47743 - rho 47744 + (seg52In1AccY2 rho - seg52In1AccX2 rho * (-1)) *
          (rho 47740 + rho 47741) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX3 rho = seg52In1AccX2 rho - Bool.toZMod bit * (seg52In1AccX2 rho - rho 47746) := by
    have hd : rho 47748 = Bool.toZMod bit * (rho 47746 - seg52In1AccX2 rho) := by
      rw [← hbit]
      unfold seg52In1AccX2
      linear_combination -r3358
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY3 rho = seg52In1AccY2 rho - Bool.toZMod bit * (seg52In1AccY2 rho - rho 47747) := by
    have hd : rho 47749 = Bool.toZMod bit * (rho 47747 - seg52In1AccY2 rho) := by
      rw [← hbit]
      unfold seg52In1AccY2
      linear_combination -r3359
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47740 * rho 47741 = rho 47750 := by linear_combination r3360
  have hd1 : rho 47740 * rho 47740 = rho 47751 := by linear_combination r3361
  have hd2 : rho 47741 * rho 47741 = rho 47752 := by linear_combination r3362
  have hd3 : rho 47753 * (rho 47741 * rho 47741 + rho 47740 * rho 47740 * (-1)) =
      2 * (rho 47740 * rho 47741) := by
    rw [hd0, hd1, hd2]
    linear_combination r3363
  have hd4 : rho 47754 * (2 - (rho 47741 * rho 47741 + rho 47740 * rho 47740 * (-1))) =
      rho 47741 * rho 47741 - rho 47740 * rho 47740 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3364
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX2 rho, seg52In1AccY2 rho⟩ ⟨rho 47740, rho 47741⟩
    ⟨rho 47746, rho 47747⟩ ⟨seg52In1AccX3 rho, seg52In1AccY3 rho⟩ ⟨rho 47753, rho 47754⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows3 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3365 rho ∧ Seg52.relationRow3366 rho ∧ Seg52.relationRow3367 rho ∧ Seg52.relationRow3368 rho ∧ Seg52.relationRow3369 rho ∧ Seg52.relationRow3370 rho ∧ Seg52.relationRow3371 rho ∧ Seg52.relationRow3372 rho ∧ Seg52.relationRow3373 rho ∧ Seg52.relationRow3374 rho ∧ Seg52.relationRow3375 rho ∧ Seg52.relationRow3376 rho ∧ Seg52.relationRow3377 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart42 at p42

  rcases p42 with ⟨_, _, _, _, _, r3365, r3366, r3367, r3368, r3369, r3370, r3371, r3372, r3373, r3374, r3375, r3376, r3377, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3365, r3366, r3367, r3368, r3369, r3370, r3371, r3372, r3373, r3374, r3375, r3376, r3377⟩

theorem seg52In1_rung3 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47597 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX3 rho, seg52In1AccY3 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47753, rho 47754⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX3 rho, seg52In1AccY3 rho⟩ ⟨rho 47753, rho 47754⟩
        ⟨seg52In1AccX4 rho, seg52In1AccY4 rho⟩ ⟨rho 47766, rho 47767⟩ := by
  obtain ⟨r3365, r3366, r3367, r3368, r3369, r3370, r3371, r3372, r3373, r3374, r3375, r3376, r3377⟩ := seg52In1_rows3 rho h
  unfold Seg52.relationRow3365 at r3365

  unfold Seg52.relationRow3366 at r3366

  unfold Seg52.relationRow3367 at r3367

  unfold Seg52.relationRow3368 at r3368

  unfold Seg52.relationRow3369 at r3369

  unfold Seg52.relationRow3370 at r3370

  unfold Seg52.relationRow3371 at r3371

  unfold Seg52.relationRow3372 at r3372

  unfold Seg52.relationRow3373 at r3373

  unfold Seg52.relationRow3374 at r3374

  unfold Seg52.relationRow3375 at r3375

  unfold Seg52.relationRow3376 at r3376

  unfold Seg52.relationRow3377 at r3377

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX4 rho = seg52In1AccX3 rho + rho 47761 := by
    unfold seg52In1AccX4 seg52In1AccX3
    ring

  have hnexty : seg52In1AccY4 rho = seg52In1AccY3 rho + rho 47762 := by
    unfold seg52In1AccY4 seg52In1AccY3
    ring

  have ha0 : (rho 47753 + rho 47754) * (seg52In1AccX3 rho + seg52In1AccY3 rho) = rho 47755 := by
    unfold seg52In1AccX3 seg52In1AccY3
    linear_combination r3365
  have ha1 : rho 47754 * seg52In1AccX3 rho = rho 47756 := by
    unfold seg52In1AccX3
    linear_combination r3366
  have ha2 : rho 47753 * seg52In1AccY3 rho = rho 47757 := by
    unfold seg52In1AccY3
    linear_combination r3367
  have ha3 : 3021 * rho 47756 * rho 47757 = rho 47758 := by
    linear_combination r3368
  have ha4 : rho 47759 * (1 + rho 47758) = rho 47756 + rho 47757 := by
    linear_combination r3369
  have ha5 : rho 47760 * (1 - rho 47758) = rho 47755 - rho 47756 - rho 47757 := by
    linear_combination r3370
  have haddx :
      rho 47759 * (1 + 3021 * (rho 47754 * seg52In1AccX3 rho) * (rho 47753 * seg52In1AccY3 rho)) =
        rho 47754 * seg52In1AccX3 rho + rho 47753 * seg52In1AccY3 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47760 * (1 - 3021 * (rho 47754 * seg52In1AccX3 rho) * (rho 47753 * seg52In1AccY3 rho)) =
        (-1) * (rho 47754 * seg52In1AccX3 rho) - rho 47753 * seg52In1AccY3 rho +
          (seg52In1AccY3 rho - seg52In1AccX3 rho * (-1)) * (rho 47753 + rho 47754) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47760 * (1 - rho 47758) = rho 47755 - rho 47756 - rho 47757 := ha5
      _ = (-1) * rho 47756 - rho 47757 + (seg52In1AccY3 rho - seg52In1AccX3 rho * (-1)) *
          (rho 47753 + rho 47754) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX4 rho = seg52In1AccX3 rho - Bool.toZMod bit * (seg52In1AccX3 rho - rho 47759) := by
    have hd : rho 47761 = Bool.toZMod bit * (rho 47759 - seg52In1AccX3 rho) := by
      rw [← hbit]
      unfold seg52In1AccX3
      linear_combination -r3371
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY4 rho = seg52In1AccY3 rho - Bool.toZMod bit * (seg52In1AccY3 rho - rho 47760) := by
    have hd : rho 47762 = Bool.toZMod bit * (rho 47760 - seg52In1AccY3 rho) := by
      rw [← hbit]
      unfold seg52In1AccY3
      linear_combination -r3372
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47753 * rho 47754 = rho 47763 := by linear_combination r3373
  have hd1 : rho 47753 * rho 47753 = rho 47764 := by linear_combination r3374
  have hd2 : rho 47754 * rho 47754 = rho 47765 := by linear_combination r3375
  have hd3 : rho 47766 * (rho 47754 * rho 47754 + rho 47753 * rho 47753 * (-1)) =
      2 * (rho 47753 * rho 47754) := by
    rw [hd0, hd1, hd2]
    linear_combination r3376
  have hd4 : rho 47767 * (2 - (rho 47754 * rho 47754 + rho 47753 * rho 47753 * (-1))) =
      rho 47754 * rho 47754 - rho 47753 * rho 47753 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3377
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX3 rho, seg52In1AccY3 rho⟩ ⟨rho 47753, rho 47754⟩
    ⟨rho 47759, rho 47760⟩ ⟨seg52In1AccX4 rho, seg52In1AccY4 rho⟩ ⟨rho 47766, rho 47767⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows4 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3378 rho ∧ Seg52.relationRow3379 rho ∧ Seg52.relationRow3380 rho ∧ Seg52.relationRow3381 rho ∧ Seg52.relationRow3382 rho ∧ Seg52.relationRow3383 rho ∧ Seg52.relationRow3384 rho ∧ Seg52.relationRow3385 rho ∧ Seg52.relationRow3386 rho ∧ Seg52.relationRow3387 rho ∧ Seg52.relationRow3388 rho ∧ Seg52.relationRow3389 rho ∧ Seg52.relationRow3390 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart42 at p42

  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3378, r3379, r3380, r3381, r3382, r3383, r3384, r3385, r3386, r3387, r3388, r3389, r3390, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3378, r3379, r3380, r3381, r3382, r3383, r3384, r3385, r3386, r3387, r3388, r3389, r3390⟩

theorem seg52In1_rung4 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47598 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX4 rho, seg52In1AccY4 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47766, rho 47767⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX4 rho, seg52In1AccY4 rho⟩ ⟨rho 47766, rho 47767⟩
        ⟨seg52In1AccX5 rho, seg52In1AccY5 rho⟩ ⟨rho 47779, rho 47780⟩ := by
  obtain ⟨r3378, r3379, r3380, r3381, r3382, r3383, r3384, r3385, r3386, r3387, r3388, r3389, r3390⟩ := seg52In1_rows4 rho h
  unfold Seg52.relationRow3378 at r3378

  unfold Seg52.relationRow3379 at r3379

  unfold Seg52.relationRow3380 at r3380

  unfold Seg52.relationRow3381 at r3381

  unfold Seg52.relationRow3382 at r3382

  unfold Seg52.relationRow3383 at r3383

  unfold Seg52.relationRow3384 at r3384

  unfold Seg52.relationRow3385 at r3385

  unfold Seg52.relationRow3386 at r3386

  unfold Seg52.relationRow3387 at r3387

  unfold Seg52.relationRow3388 at r3388

  unfold Seg52.relationRow3389 at r3389

  unfold Seg52.relationRow3390 at r3390

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX5 rho = seg52In1AccX4 rho + rho 47774 := by
    unfold seg52In1AccX5 seg52In1AccX4
    ring

  have hnexty : seg52In1AccY5 rho = seg52In1AccY4 rho + rho 47775 := by
    unfold seg52In1AccY5 seg52In1AccY4
    ring

  have ha0 : (rho 47766 + rho 47767) * (seg52In1AccX4 rho + seg52In1AccY4 rho) = rho 47768 := by
    unfold seg52In1AccX4 seg52In1AccY4
    linear_combination r3378
  have ha1 : rho 47767 * seg52In1AccX4 rho = rho 47769 := by
    unfold seg52In1AccX4
    linear_combination r3379
  have ha2 : rho 47766 * seg52In1AccY4 rho = rho 47770 := by
    unfold seg52In1AccY4
    linear_combination r3380
  have ha3 : 3021 * rho 47769 * rho 47770 = rho 47771 := by
    linear_combination r3381
  have ha4 : rho 47772 * (1 + rho 47771) = rho 47769 + rho 47770 := by
    linear_combination r3382
  have ha5 : rho 47773 * (1 - rho 47771) = rho 47768 - rho 47769 - rho 47770 := by
    linear_combination r3383
  have haddx :
      rho 47772 * (1 + 3021 * (rho 47767 * seg52In1AccX4 rho) * (rho 47766 * seg52In1AccY4 rho)) =
        rho 47767 * seg52In1AccX4 rho + rho 47766 * seg52In1AccY4 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47773 * (1 - 3021 * (rho 47767 * seg52In1AccX4 rho) * (rho 47766 * seg52In1AccY4 rho)) =
        (-1) * (rho 47767 * seg52In1AccX4 rho) - rho 47766 * seg52In1AccY4 rho +
          (seg52In1AccY4 rho - seg52In1AccX4 rho * (-1)) * (rho 47766 + rho 47767) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47773 * (1 - rho 47771) = rho 47768 - rho 47769 - rho 47770 := ha5
      _ = (-1) * rho 47769 - rho 47770 + (seg52In1AccY4 rho - seg52In1AccX4 rho * (-1)) *
          (rho 47766 + rho 47767) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX5 rho = seg52In1AccX4 rho - Bool.toZMod bit * (seg52In1AccX4 rho - rho 47772) := by
    have hd : rho 47774 = Bool.toZMod bit * (rho 47772 - seg52In1AccX4 rho) := by
      rw [← hbit]
      unfold seg52In1AccX4
      linear_combination -r3384
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY5 rho = seg52In1AccY4 rho - Bool.toZMod bit * (seg52In1AccY4 rho - rho 47773) := by
    have hd : rho 47775 = Bool.toZMod bit * (rho 47773 - seg52In1AccY4 rho) := by
      rw [← hbit]
      unfold seg52In1AccY4
      linear_combination -r3385
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47766 * rho 47767 = rho 47776 := by linear_combination r3386
  have hd1 : rho 47766 * rho 47766 = rho 47777 := by linear_combination r3387
  have hd2 : rho 47767 * rho 47767 = rho 47778 := by linear_combination r3388
  have hd3 : rho 47779 * (rho 47767 * rho 47767 + rho 47766 * rho 47766 * (-1)) =
      2 * (rho 47766 * rho 47767) := by
    rw [hd0, hd1, hd2]
    linear_combination r3389
  have hd4 : rho 47780 * (2 - (rho 47767 * rho 47767 + rho 47766 * rho 47766 * (-1))) =
      rho 47767 * rho 47767 - rho 47766 * rho 47766 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3390
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX4 rho, seg52In1AccY4 rho⟩ ⟨rho 47766, rho 47767⟩
    ⟨rho 47772, rho 47773⟩ ⟨seg52In1AccX5 rho, seg52In1AccY5 rho⟩ ⟨rho 47779, rho 47780⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows5 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3391 rho ∧ Seg52.relationRow3392 rho ∧ Seg52.relationRow3393 rho ∧ Seg52.relationRow3394 rho ∧ Seg52.relationRow3395 rho ∧ Seg52.relationRow3396 rho ∧ Seg52.relationRow3397 rho ∧ Seg52.relationRow3398 rho ∧ Seg52.relationRow3399 rho ∧ Seg52.relationRow3400 rho ∧ Seg52.relationRow3401 rho ∧ Seg52.relationRow3402 rho ∧ Seg52.relationRow3403 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart42 at p42

  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3391, r3392, r3393, r3394, r3395, r3396, r3397, r3398, r3399, r3400, r3401, r3402, r3403, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3391, r3392, r3393, r3394, r3395, r3396, r3397, r3398, r3399, r3400, r3401, r3402, r3403⟩

theorem seg52In1_rung5 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47599 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX5 rho, seg52In1AccY5 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47779, rho 47780⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX5 rho, seg52In1AccY5 rho⟩ ⟨rho 47779, rho 47780⟩
        ⟨seg52In1AccX6 rho, seg52In1AccY6 rho⟩ ⟨rho 47792, rho 47793⟩ := by
  obtain ⟨r3391, r3392, r3393, r3394, r3395, r3396, r3397, r3398, r3399, r3400, r3401, r3402, r3403⟩ := seg52In1_rows5 rho h
  unfold Seg52.relationRow3391 at r3391

  unfold Seg52.relationRow3392 at r3392

  unfold Seg52.relationRow3393 at r3393

  unfold Seg52.relationRow3394 at r3394

  unfold Seg52.relationRow3395 at r3395

  unfold Seg52.relationRow3396 at r3396

  unfold Seg52.relationRow3397 at r3397

  unfold Seg52.relationRow3398 at r3398

  unfold Seg52.relationRow3399 at r3399

  unfold Seg52.relationRow3400 at r3400

  unfold Seg52.relationRow3401 at r3401

  unfold Seg52.relationRow3402 at r3402

  unfold Seg52.relationRow3403 at r3403

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX6 rho = seg52In1AccX5 rho + rho 47787 := by
    unfold seg52In1AccX6 seg52In1AccX5
    ring

  have hnexty : seg52In1AccY6 rho = seg52In1AccY5 rho + rho 47788 := by
    unfold seg52In1AccY6 seg52In1AccY5
    ring

  have ha0 : (rho 47779 + rho 47780) * (seg52In1AccX5 rho + seg52In1AccY5 rho) = rho 47781 := by
    unfold seg52In1AccX5 seg52In1AccY5
    linear_combination r3391
  have ha1 : rho 47780 * seg52In1AccX5 rho = rho 47782 := by
    unfold seg52In1AccX5
    linear_combination r3392
  have ha2 : rho 47779 * seg52In1AccY5 rho = rho 47783 := by
    unfold seg52In1AccY5
    linear_combination r3393
  have ha3 : 3021 * rho 47782 * rho 47783 = rho 47784 := by
    linear_combination r3394
  have ha4 : rho 47785 * (1 + rho 47784) = rho 47782 + rho 47783 := by
    linear_combination r3395
  have ha5 : rho 47786 * (1 - rho 47784) = rho 47781 - rho 47782 - rho 47783 := by
    linear_combination r3396
  have haddx :
      rho 47785 * (1 + 3021 * (rho 47780 * seg52In1AccX5 rho) * (rho 47779 * seg52In1AccY5 rho)) =
        rho 47780 * seg52In1AccX5 rho + rho 47779 * seg52In1AccY5 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47786 * (1 - 3021 * (rho 47780 * seg52In1AccX5 rho) * (rho 47779 * seg52In1AccY5 rho)) =
        (-1) * (rho 47780 * seg52In1AccX5 rho) - rho 47779 * seg52In1AccY5 rho +
          (seg52In1AccY5 rho - seg52In1AccX5 rho * (-1)) * (rho 47779 + rho 47780) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47786 * (1 - rho 47784) = rho 47781 - rho 47782 - rho 47783 := ha5
      _ = (-1) * rho 47782 - rho 47783 + (seg52In1AccY5 rho - seg52In1AccX5 rho * (-1)) *
          (rho 47779 + rho 47780) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX6 rho = seg52In1AccX5 rho - Bool.toZMod bit * (seg52In1AccX5 rho - rho 47785) := by
    have hd : rho 47787 = Bool.toZMod bit * (rho 47785 - seg52In1AccX5 rho) := by
      rw [← hbit]
      unfold seg52In1AccX5
      linear_combination -r3397
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY6 rho = seg52In1AccY5 rho - Bool.toZMod bit * (seg52In1AccY5 rho - rho 47786) := by
    have hd : rho 47788 = Bool.toZMod bit * (rho 47786 - seg52In1AccY5 rho) := by
      rw [← hbit]
      unfold seg52In1AccY5
      linear_combination -r3398
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47779 * rho 47780 = rho 47789 := by linear_combination r3399
  have hd1 : rho 47779 * rho 47779 = rho 47790 := by linear_combination r3400
  have hd2 : rho 47780 * rho 47780 = rho 47791 := by linear_combination r3401
  have hd3 : rho 47792 * (rho 47780 * rho 47780 + rho 47779 * rho 47779 * (-1)) =
      2 * (rho 47779 * rho 47780) := by
    rw [hd0, hd1, hd2]
    linear_combination r3402
  have hd4 : rho 47793 * (2 - (rho 47780 * rho 47780 + rho 47779 * rho 47779 * (-1))) =
      rho 47780 * rho 47780 - rho 47779 * rho 47779 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3403
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX5 rho, seg52In1AccY5 rho⟩ ⟨rho 47779, rho 47780⟩
    ⟨rho 47785, rho 47786⟩ ⟨seg52In1AccX6 rho, seg52In1AccY6 rho⟩ ⟨rho 47792, rho 47793⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows6 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3404 rho ∧ Seg52.relationRow3405 rho ∧ Seg52.relationRow3406 rho ∧ Seg52.relationRow3407 rho ∧ Seg52.relationRow3408 rho ∧ Seg52.relationRow3409 rho ∧ Seg52.relationRow3410 rho ∧ Seg52.relationRow3411 rho ∧ Seg52.relationRow3412 rho ∧ Seg52.relationRow3413 rho ∧ Seg52.relationRow3414 rho ∧ Seg52.relationRow3415 rho ∧ Seg52.relationRow3416 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart42 at p42

  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3404, r3405, r3406, r3407, r3408, r3409, r3410, r3411, r3412, r3413, r3414, r3415, r3416, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3404, r3405, r3406, r3407, r3408, r3409, r3410, r3411, r3412, r3413, r3414, r3415, r3416⟩

theorem seg52In1_rung6 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47600 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX6 rho, seg52In1AccY6 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47792, rho 47793⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX6 rho, seg52In1AccY6 rho⟩ ⟨rho 47792, rho 47793⟩
        ⟨seg52In1AccX7 rho, seg52In1AccY7 rho⟩ ⟨rho 47805, rho 47806⟩ := by
  obtain ⟨r3404, r3405, r3406, r3407, r3408, r3409, r3410, r3411, r3412, r3413, r3414, r3415, r3416⟩ := seg52In1_rows6 rho h
  unfold Seg52.relationRow3404 at r3404

  unfold Seg52.relationRow3405 at r3405

  unfold Seg52.relationRow3406 at r3406

  unfold Seg52.relationRow3407 at r3407

  unfold Seg52.relationRow3408 at r3408

  unfold Seg52.relationRow3409 at r3409

  unfold Seg52.relationRow3410 at r3410

  unfold Seg52.relationRow3411 at r3411

  unfold Seg52.relationRow3412 at r3412

  unfold Seg52.relationRow3413 at r3413

  unfold Seg52.relationRow3414 at r3414

  unfold Seg52.relationRow3415 at r3415

  unfold Seg52.relationRow3416 at r3416

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX7 rho = seg52In1AccX6 rho + rho 47800 := by
    unfold seg52In1AccX7 seg52In1AccX6
    ring

  have hnexty : seg52In1AccY7 rho = seg52In1AccY6 rho + rho 47801 := by
    unfold seg52In1AccY7 seg52In1AccY6
    ring

  have ha0 : (rho 47792 + rho 47793) * (seg52In1AccX6 rho + seg52In1AccY6 rho) = rho 47794 := by
    unfold seg52In1AccX6 seg52In1AccY6
    linear_combination r3404
  have ha1 : rho 47793 * seg52In1AccX6 rho = rho 47795 := by
    unfold seg52In1AccX6
    linear_combination r3405
  have ha2 : rho 47792 * seg52In1AccY6 rho = rho 47796 := by
    unfold seg52In1AccY6
    linear_combination r3406
  have ha3 : 3021 * rho 47795 * rho 47796 = rho 47797 := by
    linear_combination r3407
  have ha4 : rho 47798 * (1 + rho 47797) = rho 47795 + rho 47796 := by
    linear_combination r3408
  have ha5 : rho 47799 * (1 - rho 47797) = rho 47794 - rho 47795 - rho 47796 := by
    linear_combination r3409
  have haddx :
      rho 47798 * (1 + 3021 * (rho 47793 * seg52In1AccX6 rho) * (rho 47792 * seg52In1AccY6 rho)) =
        rho 47793 * seg52In1AccX6 rho + rho 47792 * seg52In1AccY6 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47799 * (1 - 3021 * (rho 47793 * seg52In1AccX6 rho) * (rho 47792 * seg52In1AccY6 rho)) =
        (-1) * (rho 47793 * seg52In1AccX6 rho) - rho 47792 * seg52In1AccY6 rho +
          (seg52In1AccY6 rho - seg52In1AccX6 rho * (-1)) * (rho 47792 + rho 47793) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47799 * (1 - rho 47797) = rho 47794 - rho 47795 - rho 47796 := ha5
      _ = (-1) * rho 47795 - rho 47796 + (seg52In1AccY6 rho - seg52In1AccX6 rho * (-1)) *
          (rho 47792 + rho 47793) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX7 rho = seg52In1AccX6 rho - Bool.toZMod bit * (seg52In1AccX6 rho - rho 47798) := by
    have hd : rho 47800 = Bool.toZMod bit * (rho 47798 - seg52In1AccX6 rho) := by
      rw [← hbit]
      unfold seg52In1AccX6
      linear_combination -r3410
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY7 rho = seg52In1AccY6 rho - Bool.toZMod bit * (seg52In1AccY6 rho - rho 47799) := by
    have hd : rho 47801 = Bool.toZMod bit * (rho 47799 - seg52In1AccY6 rho) := by
      rw [← hbit]
      unfold seg52In1AccY6
      linear_combination -r3411
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47792 * rho 47793 = rho 47802 := by linear_combination r3412
  have hd1 : rho 47792 * rho 47792 = rho 47803 := by linear_combination r3413
  have hd2 : rho 47793 * rho 47793 = rho 47804 := by linear_combination r3414
  have hd3 : rho 47805 * (rho 47793 * rho 47793 + rho 47792 * rho 47792 * (-1)) =
      2 * (rho 47792 * rho 47793) := by
    rw [hd0, hd1, hd2]
    linear_combination r3415
  have hd4 : rho 47806 * (2 - (rho 47793 * rho 47793 + rho 47792 * rho 47792 * (-1))) =
      rho 47793 * rho 47793 - rho 47792 * rho 47792 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3416
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX6 rho, seg52In1AccY6 rho⟩ ⟨rho 47792, rho 47793⟩
    ⟨rho 47798, rho 47799⟩ ⟨seg52In1AccX7 rho, seg52In1AccY7 rho⟩ ⟨rho 47805, rho 47806⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows7 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3417 rho ∧ Seg52.relationRow3418 rho ∧ Seg52.relationRow3419 rho ∧ Seg52.relationRow3420 rho ∧ Seg52.relationRow3421 rho ∧ Seg52.relationRow3422 rho ∧ Seg52.relationRow3423 rho ∧ Seg52.relationRow3424 rho ∧ Seg52.relationRow3425 rho ∧ Seg52.relationRow3426 rho ∧ Seg52.relationRow3427 rho ∧ Seg52.relationRow3428 rho ∧ Seg52.relationRow3429 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart42 at p42

  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3417, r3418, r3419, r3420, r3421, r3422, r3423, r3424, r3425, r3426, r3427, r3428, r3429, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3417, r3418, r3419, r3420, r3421, r3422, r3423, r3424, r3425, r3426, r3427, r3428, r3429⟩

theorem seg52In1_rung7 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47601 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX7 rho, seg52In1AccY7 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47805, rho 47806⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX7 rho, seg52In1AccY7 rho⟩ ⟨rho 47805, rho 47806⟩
        ⟨seg52In1AccX8 rho, seg52In1AccY8 rho⟩ ⟨rho 47818, rho 47819⟩ := by
  obtain ⟨r3417, r3418, r3419, r3420, r3421, r3422, r3423, r3424, r3425, r3426, r3427, r3428, r3429⟩ := seg52In1_rows7 rho h
  unfold Seg52.relationRow3417 at r3417

  unfold Seg52.relationRow3418 at r3418

  unfold Seg52.relationRow3419 at r3419

  unfold Seg52.relationRow3420 at r3420

  unfold Seg52.relationRow3421 at r3421

  unfold Seg52.relationRow3422 at r3422

  unfold Seg52.relationRow3423 at r3423

  unfold Seg52.relationRow3424 at r3424

  unfold Seg52.relationRow3425 at r3425

  unfold Seg52.relationRow3426 at r3426

  unfold Seg52.relationRow3427 at r3427

  unfold Seg52.relationRow3428 at r3428

  unfold Seg52.relationRow3429 at r3429

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX8 rho = seg52In1AccX7 rho + rho 47813 := by
    unfold seg52In1AccX8 seg52In1AccX7
    ring

  have hnexty : seg52In1AccY8 rho = seg52In1AccY7 rho + rho 47814 := by
    unfold seg52In1AccY8 seg52In1AccY7
    ring

  have ha0 : (rho 47805 + rho 47806) * (seg52In1AccX7 rho + seg52In1AccY7 rho) = rho 47807 := by
    unfold seg52In1AccX7 seg52In1AccY7
    linear_combination r3417
  have ha1 : rho 47806 * seg52In1AccX7 rho = rho 47808 := by
    unfold seg52In1AccX7
    linear_combination r3418
  have ha2 : rho 47805 * seg52In1AccY7 rho = rho 47809 := by
    unfold seg52In1AccY7
    linear_combination r3419
  have ha3 : 3021 * rho 47808 * rho 47809 = rho 47810 := by
    linear_combination r3420
  have ha4 : rho 47811 * (1 + rho 47810) = rho 47808 + rho 47809 := by
    linear_combination r3421
  have ha5 : rho 47812 * (1 - rho 47810) = rho 47807 - rho 47808 - rho 47809 := by
    linear_combination r3422
  have haddx :
      rho 47811 * (1 + 3021 * (rho 47806 * seg52In1AccX7 rho) * (rho 47805 * seg52In1AccY7 rho)) =
        rho 47806 * seg52In1AccX7 rho + rho 47805 * seg52In1AccY7 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47812 * (1 - 3021 * (rho 47806 * seg52In1AccX7 rho) * (rho 47805 * seg52In1AccY7 rho)) =
        (-1) * (rho 47806 * seg52In1AccX7 rho) - rho 47805 * seg52In1AccY7 rho +
          (seg52In1AccY7 rho - seg52In1AccX7 rho * (-1)) * (rho 47805 + rho 47806) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47812 * (1 - rho 47810) = rho 47807 - rho 47808 - rho 47809 := ha5
      _ = (-1) * rho 47808 - rho 47809 + (seg52In1AccY7 rho - seg52In1AccX7 rho * (-1)) *
          (rho 47805 + rho 47806) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX8 rho = seg52In1AccX7 rho - Bool.toZMod bit * (seg52In1AccX7 rho - rho 47811) := by
    have hd : rho 47813 = Bool.toZMod bit * (rho 47811 - seg52In1AccX7 rho) := by
      rw [← hbit]
      unfold seg52In1AccX7
      linear_combination -r3423
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY8 rho = seg52In1AccY7 rho - Bool.toZMod bit * (seg52In1AccY7 rho - rho 47812) := by
    have hd : rho 47814 = Bool.toZMod bit * (rho 47812 - seg52In1AccY7 rho) := by
      rw [← hbit]
      unfold seg52In1AccY7
      linear_combination -r3424
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47805 * rho 47806 = rho 47815 := by linear_combination r3425
  have hd1 : rho 47805 * rho 47805 = rho 47816 := by linear_combination r3426
  have hd2 : rho 47806 * rho 47806 = rho 47817 := by linear_combination r3427
  have hd3 : rho 47818 * (rho 47806 * rho 47806 + rho 47805 * rho 47805 * (-1)) =
      2 * (rho 47805 * rho 47806) := by
    rw [hd0, hd1, hd2]
    linear_combination r3428
  have hd4 : rho 47819 * (2 - (rho 47806 * rho 47806 + rho 47805 * rho 47805 * (-1))) =
      rho 47806 * rho 47806 - rho 47805 * rho 47805 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3429
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX7 rho, seg52In1AccY7 rho⟩ ⟨rho 47805, rho 47806⟩
    ⟨rho 47811, rho 47812⟩ ⟨seg52In1AccX8 rho, seg52In1AccY8 rho⟩ ⟨rho 47818, rho 47819⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows8 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3430 rho ∧ Seg52.relationRow3431 rho ∧ Seg52.relationRow3432 rho ∧ Seg52.relationRow3433 rho ∧ Seg52.relationRow3434 rho ∧ Seg52.relationRow3435 rho ∧ Seg52.relationRow3436 rho ∧ Seg52.relationRow3437 rho ∧ Seg52.relationRow3438 rho ∧ Seg52.relationRow3439 rho ∧ Seg52.relationRow3440 rho ∧ Seg52.relationRow3441 rho ∧ Seg52.relationRow3442 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p42, p43, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart42 at p42

  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3430, r3431, r3432, r3433, r3434, r3435, r3436, r3437, r3438, r3439⟩

  unfold Seg52.relationPart43 at p43

  rcases p43 with ⟨r3440, r3441, r3442, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3430, r3431, r3432, r3433, r3434, r3435, r3436, r3437, r3438, r3439, r3440, r3441, r3442⟩

theorem seg52In1_rung8 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47602 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX8 rho, seg52In1AccY8 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47818, rho 47819⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX8 rho, seg52In1AccY8 rho⟩ ⟨rho 47818, rho 47819⟩
        ⟨seg52In1AccX9 rho, seg52In1AccY9 rho⟩ ⟨rho 47831, rho 47832⟩ := by
  obtain ⟨r3430, r3431, r3432, r3433, r3434, r3435, r3436, r3437, r3438, r3439, r3440, r3441, r3442⟩ := seg52In1_rows8 rho h
  unfold Seg52.relationRow3430 at r3430

  unfold Seg52.relationRow3431 at r3431

  unfold Seg52.relationRow3432 at r3432

  unfold Seg52.relationRow3433 at r3433

  unfold Seg52.relationRow3434 at r3434

  unfold Seg52.relationRow3435 at r3435

  unfold Seg52.relationRow3436 at r3436

  unfold Seg52.relationRow3437 at r3437

  unfold Seg52.relationRow3438 at r3438

  unfold Seg52.relationRow3439 at r3439

  unfold Seg52.relationRow3440 at r3440

  unfold Seg52.relationRow3441 at r3441

  unfold Seg52.relationRow3442 at r3442

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX9 rho = seg52In1AccX8 rho + rho 47826 := by
    unfold seg52In1AccX9 seg52In1AccX8
    ring

  have hnexty : seg52In1AccY9 rho = seg52In1AccY8 rho + rho 47827 := by
    unfold seg52In1AccY9 seg52In1AccY8
    ring

  have ha0 : (rho 47818 + rho 47819) * (seg52In1AccX8 rho + seg52In1AccY8 rho) = rho 47820 := by
    unfold seg52In1AccX8 seg52In1AccY8
    linear_combination r3430
  have ha1 : rho 47819 * seg52In1AccX8 rho = rho 47821 := by
    unfold seg52In1AccX8
    linear_combination r3431
  have ha2 : rho 47818 * seg52In1AccY8 rho = rho 47822 := by
    unfold seg52In1AccY8
    linear_combination r3432
  have ha3 : 3021 * rho 47821 * rho 47822 = rho 47823 := by
    linear_combination r3433
  have ha4 : rho 47824 * (1 + rho 47823) = rho 47821 + rho 47822 := by
    linear_combination r3434
  have ha5 : rho 47825 * (1 - rho 47823) = rho 47820 - rho 47821 - rho 47822 := by
    linear_combination r3435
  have haddx :
      rho 47824 * (1 + 3021 * (rho 47819 * seg52In1AccX8 rho) * (rho 47818 * seg52In1AccY8 rho)) =
        rho 47819 * seg52In1AccX8 rho + rho 47818 * seg52In1AccY8 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47825 * (1 - 3021 * (rho 47819 * seg52In1AccX8 rho) * (rho 47818 * seg52In1AccY8 rho)) =
        (-1) * (rho 47819 * seg52In1AccX8 rho) - rho 47818 * seg52In1AccY8 rho +
          (seg52In1AccY8 rho - seg52In1AccX8 rho * (-1)) * (rho 47818 + rho 47819) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47825 * (1 - rho 47823) = rho 47820 - rho 47821 - rho 47822 := ha5
      _ = (-1) * rho 47821 - rho 47822 + (seg52In1AccY8 rho - seg52In1AccX8 rho * (-1)) *
          (rho 47818 + rho 47819) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX9 rho = seg52In1AccX8 rho - Bool.toZMod bit * (seg52In1AccX8 rho - rho 47824) := by
    have hd : rho 47826 = Bool.toZMod bit * (rho 47824 - seg52In1AccX8 rho) := by
      rw [← hbit]
      unfold seg52In1AccX8
      linear_combination -r3436
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY9 rho = seg52In1AccY8 rho - Bool.toZMod bit * (seg52In1AccY8 rho - rho 47825) := by
    have hd : rho 47827 = Bool.toZMod bit * (rho 47825 - seg52In1AccY8 rho) := by
      rw [← hbit]
      unfold seg52In1AccY8
      linear_combination -r3437
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47818 * rho 47819 = rho 47828 := by linear_combination r3438
  have hd1 : rho 47818 * rho 47818 = rho 47829 := by linear_combination r3439
  have hd2 : rho 47819 * rho 47819 = rho 47830 := by linear_combination r3440
  have hd3 : rho 47831 * (rho 47819 * rho 47819 + rho 47818 * rho 47818 * (-1)) =
      2 * (rho 47818 * rho 47819) := by
    rw [hd0, hd1, hd2]
    linear_combination r3441
  have hd4 : rho 47832 * (2 - (rho 47819 * rho 47819 + rho 47818 * rho 47818 * (-1))) =
      rho 47819 * rho 47819 - rho 47818 * rho 47818 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3442
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX8 rho, seg52In1AccY8 rho⟩ ⟨rho 47818, rho 47819⟩
    ⟨rho 47824, rho 47825⟩ ⟨seg52In1AccX9 rho, seg52In1AccY9 rho⟩ ⟨rho 47831, rho 47832⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows9 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3443 rho ∧ Seg52.relationRow3444 rho ∧ Seg52.relationRow3445 rho ∧ Seg52.relationRow3446 rho ∧ Seg52.relationRow3447 rho ∧ Seg52.relationRow3448 rho ∧ Seg52.relationRow3449 rho ∧ Seg52.relationRow3450 rho ∧ Seg52.relationRow3451 rho ∧ Seg52.relationRow3452 rho ∧ Seg52.relationRow3453 rho ∧ Seg52.relationRow3454 rho ∧ Seg52.relationRow3455 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p43, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart43 at p43

  rcases p43 with ⟨_, _, _, r3443, r3444, r3445, r3446, r3447, r3448, r3449, r3450, r3451, r3452, r3453, r3454, r3455, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3443, r3444, r3445, r3446, r3447, r3448, r3449, r3450, r3451, r3452, r3453, r3454, r3455⟩

theorem seg52In1_rung9 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47603 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX9 rho, seg52In1AccY9 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47831, rho 47832⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX9 rho, seg52In1AccY9 rho⟩ ⟨rho 47831, rho 47832⟩
        ⟨seg52In1AccX10 rho, seg52In1AccY10 rho⟩ ⟨rho 47844, rho 47845⟩ := by
  obtain ⟨r3443, r3444, r3445, r3446, r3447, r3448, r3449, r3450, r3451, r3452, r3453, r3454, r3455⟩ := seg52In1_rows9 rho h
  unfold Seg52.relationRow3443 at r3443

  unfold Seg52.relationRow3444 at r3444

  unfold Seg52.relationRow3445 at r3445

  unfold Seg52.relationRow3446 at r3446

  unfold Seg52.relationRow3447 at r3447

  unfold Seg52.relationRow3448 at r3448

  unfold Seg52.relationRow3449 at r3449

  unfold Seg52.relationRow3450 at r3450

  unfold Seg52.relationRow3451 at r3451

  unfold Seg52.relationRow3452 at r3452

  unfold Seg52.relationRow3453 at r3453

  unfold Seg52.relationRow3454 at r3454

  unfold Seg52.relationRow3455 at r3455

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX10 rho = seg52In1AccX9 rho + rho 47839 := by
    unfold seg52In1AccX10 seg52In1AccX9
    ring

  have hnexty : seg52In1AccY10 rho = seg52In1AccY9 rho + rho 47840 := by
    unfold seg52In1AccY10 seg52In1AccY9
    ring

  have ha0 : (rho 47831 + rho 47832) * (seg52In1AccX9 rho + seg52In1AccY9 rho) = rho 47833 := by
    unfold seg52In1AccX9 seg52In1AccY9
    linear_combination r3443
  have ha1 : rho 47832 * seg52In1AccX9 rho = rho 47834 := by
    unfold seg52In1AccX9
    linear_combination r3444
  have ha2 : rho 47831 * seg52In1AccY9 rho = rho 47835 := by
    unfold seg52In1AccY9
    linear_combination r3445
  have ha3 : 3021 * rho 47834 * rho 47835 = rho 47836 := by
    linear_combination r3446
  have ha4 : rho 47837 * (1 + rho 47836) = rho 47834 + rho 47835 := by
    linear_combination r3447
  have ha5 : rho 47838 * (1 - rho 47836) = rho 47833 - rho 47834 - rho 47835 := by
    linear_combination r3448
  have haddx :
      rho 47837 * (1 + 3021 * (rho 47832 * seg52In1AccX9 rho) * (rho 47831 * seg52In1AccY9 rho)) =
        rho 47832 * seg52In1AccX9 rho + rho 47831 * seg52In1AccY9 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47838 * (1 - 3021 * (rho 47832 * seg52In1AccX9 rho) * (rho 47831 * seg52In1AccY9 rho)) =
        (-1) * (rho 47832 * seg52In1AccX9 rho) - rho 47831 * seg52In1AccY9 rho +
          (seg52In1AccY9 rho - seg52In1AccX9 rho * (-1)) * (rho 47831 + rho 47832) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47838 * (1 - rho 47836) = rho 47833 - rho 47834 - rho 47835 := ha5
      _ = (-1) * rho 47834 - rho 47835 + (seg52In1AccY9 rho - seg52In1AccX9 rho * (-1)) *
          (rho 47831 + rho 47832) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX10 rho = seg52In1AccX9 rho - Bool.toZMod bit * (seg52In1AccX9 rho - rho 47837) := by
    have hd : rho 47839 = Bool.toZMod bit * (rho 47837 - seg52In1AccX9 rho) := by
      rw [← hbit]
      unfold seg52In1AccX9
      linear_combination -r3449
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY10 rho = seg52In1AccY9 rho - Bool.toZMod bit * (seg52In1AccY9 rho - rho 47838) := by
    have hd : rho 47840 = Bool.toZMod bit * (rho 47838 - seg52In1AccY9 rho) := by
      rw [← hbit]
      unfold seg52In1AccY9
      linear_combination -r3450
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47831 * rho 47832 = rho 47841 := by linear_combination r3451
  have hd1 : rho 47831 * rho 47831 = rho 47842 := by linear_combination r3452
  have hd2 : rho 47832 * rho 47832 = rho 47843 := by linear_combination r3453
  have hd3 : rho 47844 * (rho 47832 * rho 47832 + rho 47831 * rho 47831 * (-1)) =
      2 * (rho 47831 * rho 47832) := by
    rw [hd0, hd1, hd2]
    linear_combination r3454
  have hd4 : rho 47845 * (2 - (rho 47832 * rho 47832 + rho 47831 * rho 47831 * (-1))) =
      rho 47832 * rho 47832 - rho 47831 * rho 47831 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3455
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX9 rho, seg52In1AccY9 rho⟩ ⟨rho 47831, rho 47832⟩
    ⟨rho 47837, rho 47838⟩ ⟨seg52In1AccX10 rho, seg52In1AccY10 rho⟩ ⟨rho 47844, rho 47845⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows10 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3456 rho ∧ Seg52.relationRow3457 rho ∧ Seg52.relationRow3458 rho ∧ Seg52.relationRow3459 rho ∧ Seg52.relationRow3460 rho ∧ Seg52.relationRow3461 rho ∧ Seg52.relationRow3462 rho ∧ Seg52.relationRow3463 rho ∧ Seg52.relationRow3464 rho ∧ Seg52.relationRow3465 rho ∧ Seg52.relationRow3466 rho ∧ Seg52.relationRow3467 rho ∧ Seg52.relationRow3468 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p43, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart43 at p43

  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3456, r3457, r3458, r3459, r3460, r3461, r3462, r3463, r3464, r3465, r3466, r3467, r3468, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3456, r3457, r3458, r3459, r3460, r3461, r3462, r3463, r3464, r3465, r3466, r3467, r3468⟩

theorem seg52In1_rung10 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47604 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX10 rho, seg52In1AccY10 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47844, rho 47845⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX10 rho, seg52In1AccY10 rho⟩ ⟨rho 47844, rho 47845⟩
        ⟨seg52In1AccX11 rho, seg52In1AccY11 rho⟩ ⟨rho 47857, rho 47858⟩ := by
  obtain ⟨r3456, r3457, r3458, r3459, r3460, r3461, r3462, r3463, r3464, r3465, r3466, r3467, r3468⟩ := seg52In1_rows10 rho h
  unfold Seg52.relationRow3456 at r3456

  unfold Seg52.relationRow3457 at r3457

  unfold Seg52.relationRow3458 at r3458

  unfold Seg52.relationRow3459 at r3459

  unfold Seg52.relationRow3460 at r3460

  unfold Seg52.relationRow3461 at r3461

  unfold Seg52.relationRow3462 at r3462

  unfold Seg52.relationRow3463 at r3463

  unfold Seg52.relationRow3464 at r3464

  unfold Seg52.relationRow3465 at r3465

  unfold Seg52.relationRow3466 at r3466

  unfold Seg52.relationRow3467 at r3467

  unfold Seg52.relationRow3468 at r3468

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX11 rho = seg52In1AccX10 rho + rho 47852 := by
    unfold seg52In1AccX11 seg52In1AccX10
    ring

  have hnexty : seg52In1AccY11 rho = seg52In1AccY10 rho + rho 47853 := by
    unfold seg52In1AccY11 seg52In1AccY10
    ring

  have ha0 : (rho 47844 + rho 47845) * (seg52In1AccX10 rho + seg52In1AccY10 rho) = rho 47846 := by
    unfold seg52In1AccX10 seg52In1AccY10
    linear_combination r3456
  have ha1 : rho 47845 * seg52In1AccX10 rho = rho 47847 := by
    unfold seg52In1AccX10
    linear_combination r3457
  have ha2 : rho 47844 * seg52In1AccY10 rho = rho 47848 := by
    unfold seg52In1AccY10
    linear_combination r3458
  have ha3 : 3021 * rho 47847 * rho 47848 = rho 47849 := by
    linear_combination r3459
  have ha4 : rho 47850 * (1 + rho 47849) = rho 47847 + rho 47848 := by
    linear_combination r3460
  have ha5 : rho 47851 * (1 - rho 47849) = rho 47846 - rho 47847 - rho 47848 := by
    linear_combination r3461
  have haddx :
      rho 47850 * (1 + 3021 * (rho 47845 * seg52In1AccX10 rho) * (rho 47844 * seg52In1AccY10 rho)) =
        rho 47845 * seg52In1AccX10 rho + rho 47844 * seg52In1AccY10 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47851 * (1 - 3021 * (rho 47845 * seg52In1AccX10 rho) * (rho 47844 * seg52In1AccY10 rho)) =
        (-1) * (rho 47845 * seg52In1AccX10 rho) - rho 47844 * seg52In1AccY10 rho +
          (seg52In1AccY10 rho - seg52In1AccX10 rho * (-1)) * (rho 47844 + rho 47845) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47851 * (1 - rho 47849) = rho 47846 - rho 47847 - rho 47848 := ha5
      _ = (-1) * rho 47847 - rho 47848 + (seg52In1AccY10 rho - seg52In1AccX10 rho * (-1)) *
          (rho 47844 + rho 47845) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX11 rho = seg52In1AccX10 rho - Bool.toZMod bit * (seg52In1AccX10 rho - rho 47850) := by
    have hd : rho 47852 = Bool.toZMod bit * (rho 47850 - seg52In1AccX10 rho) := by
      rw [← hbit]
      unfold seg52In1AccX10
      linear_combination -r3462
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY11 rho = seg52In1AccY10 rho - Bool.toZMod bit * (seg52In1AccY10 rho - rho 47851) := by
    have hd : rho 47853 = Bool.toZMod bit * (rho 47851 - seg52In1AccY10 rho) := by
      rw [← hbit]
      unfold seg52In1AccY10
      linear_combination -r3463
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47844 * rho 47845 = rho 47854 := by linear_combination r3464
  have hd1 : rho 47844 * rho 47844 = rho 47855 := by linear_combination r3465
  have hd2 : rho 47845 * rho 47845 = rho 47856 := by linear_combination r3466
  have hd3 : rho 47857 * (rho 47845 * rho 47845 + rho 47844 * rho 47844 * (-1)) =
      2 * (rho 47844 * rho 47845) := by
    rw [hd0, hd1, hd2]
    linear_combination r3467
  have hd4 : rho 47858 * (2 - (rho 47845 * rho 47845 + rho 47844 * rho 47844 * (-1))) =
      rho 47845 * rho 47845 - rho 47844 * rho 47844 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3468
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX10 rho, seg52In1AccY10 rho⟩ ⟨rho 47844, rho 47845⟩
    ⟨rho 47850, rho 47851⟩ ⟨seg52In1AccX11 rho, seg52In1AccY11 rho⟩ ⟨rho 47857, rho 47858⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_hstep_c0 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (47594 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 0 ≤ i → i < 11 →
      EdwardsBridge.onCurve (seg52In1AccState rho i) →
      EdwardsBridge.onCurve (seg52In1CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In1AccState rho i) (seg52In1CurState rho i)
        (seg52In1AccState rho (i + 1)) (seg52In1CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In1_rung0 rho h bits[0]! (hbitAt 0 (by omega)) hacc hcur
  · exact seg52In1_rung1 rho h bits[1]! (hbitAt 1 (by omega)) hacc hcur
  · exact seg52In1_rung2 rho h bits[2]! (hbitAt 2 (by omega)) hacc hcur
  · exact seg52In1_rung3 rho h bits[3]! (hbitAt 3 (by omega)) hacc hcur
  · exact seg52In1_rung4 rho h bits[4]! (hbitAt 4 (by omega)) hacc hcur
  · exact seg52In1_rung5 rho h bits[5]! (hbitAt 5 (by omega)) hacc hcur
  · exact seg52In1_rung6 rho h bits[6]! (hbitAt 6 (by omega)) hacc hcur
  · exact seg52In1_rung7 rho h bits[7]! (hbitAt 7 (by omega)) hacc hcur
  · exact seg52In1_rung8 rho h bits[8]! (hbitAt 8 (by omega)) hacc hcur
  · exact seg52In1_rung9 rho h bits[9]! (hbitAt 9 (by omega)) hacc hcur
  · exact seg52In1_rung10 rho h bits[10]! (hbitAt 10 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
