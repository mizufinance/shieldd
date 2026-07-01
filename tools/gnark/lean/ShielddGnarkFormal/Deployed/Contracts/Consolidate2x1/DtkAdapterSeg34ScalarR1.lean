import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg34_rung32 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34024 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX32 rho : Seg34.F), (seg34AccY32 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34651 : Seg34.F), (rho 34652 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX32 rho : Seg34.F), (seg34AccY32 rho : Seg34.F)⟩
        ⟨(rho 34651 : Seg34.F), (rho 34652 : Seg34.F)⟩
        ⟨(seg34AccX33 rho : Seg34.F), (seg34AccY33 rho : Seg34.F)⟩
        ⟨(rho 34664 : Seg34.F), (rho 34665 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p42, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3381, r3382, r3383, r3384, r3385, r3386, r3387, r3388, r3389, r3390, r3391, r3392, r3393, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3381 Seg34.relationLc196 Seg34.relationLc196Part0 Seg34.relationLc196Part1 Seg34.relationLc196Part2 at r3381
  unfold Seg34.relationRow3382 at r3382
  unfold Seg34.relationRow3383 Seg34.relationLc197 Seg34.relationLc197Part0 Seg34.relationLc197Part1 at r3383
  unfold Seg34.relationRow3384 at r3384
  unfold Seg34.relationRow3385 at r3385
  unfold Seg34.relationRow3386 at r3386
  unfold Seg34.relationRow3387 Seg34.relationLc198 Seg34.relationLc198Part0 Seg34.relationLc198Part1 at r3387
  unfold Seg34.relationRow3388 Seg34.relationLc199 Seg34.relationLc199Part0 Seg34.relationLc199Part1 at r3388
  unfold Seg34.relationRow3389 at r3389
  unfold Seg34.relationRow3390 at r3390
  unfold Seg34.relationRow3391 at r3391
  unfold Seg34.relationRow3392 at r3392
  unfold Seg34.relationRow3393 at r3393
  have hrung32 (bit : Bool) (hbit : rho 34024 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX32 rho : Seg34.F), (seg34AccY32 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34651 : Seg34.F), (rho 34652 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX32 rho : Seg34.F), (seg34AccY32 rho : Seg34.F)⟩
        ⟨(rho 34651 : Seg34.F), (rho 34652 : Seg34.F)⟩
        ⟨(seg34AccX33 rho : Seg34.F), (seg34AccY33 rho : Seg34.F)⟩
        ⟨(rho 34664 : Seg34.F), (rho 34665 : Seg34.F)⟩ := by
    have ha0 : (rho 34651 + rho 34652) * (seg34AccX32 rho + seg34AccY32 rho) = rho 34653 := by
      rw [seg34LadderFlatX32_eq, seg34LadderFlatY32_eq]
      unfold seg34LadderFlatX32 seg34LadderFlatY32
      linear_combination r3381
    have ha1 : rho 34652 * seg34AccX32 rho = rho 34654 := by
      rw [seg34LadderFlatX32_eq]
      unfold seg34LadderFlatX32
      linear_combination r3382
    have ha2 : rho 34651 * seg34AccY32 rho = rho 34655 := by
      rw [seg34LadderFlatY32_eq]
      unfold seg34LadderFlatY32
      linear_combination r3383
    have ha3 : 3021 * rho 34654 * rho 34655 = rho 34656 := by
      linear_combination r3384
    have ha4 : rho 34657 * (1 + rho 34656) = rho 34654 + rho 34655 := by
      linear_combination r3385
    have ha5 : rho 34658 * (1 - rho 34656) = rho 34653 - rho 34654 - rho 34655 := by
      linear_combination r3386
    have haddx :
        rho 34657 * (1 + 3021 * (rho 34652 * seg34AccX32 rho) * (rho 34651 * seg34AccY32 rho)) =
          rho 34652 * seg34AccX32 rho + rho 34651 * seg34AccY32 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34658 * (1 - 3021 * (rho 34652 * seg34AccX32 rho) * (rho 34651 * seg34AccY32 rho)) =
          (-1) * (rho 34652 * seg34AccX32 rho) - rho 34651 * seg34AccY32 rho +
            (seg34AccY32 rho - seg34AccX32 rho * (-1)) * (rho 34651 + rho 34652) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34658 * (1 - rho 34656) = rho 34653 - rho 34654 - rho 34655 := ha5
        _ = (-1) * rho 34654 - rho 34655 + (seg34AccY32 rho - seg34AccX32 rho * (-1)) * (rho 34651 + rho 34652) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX33 rho = seg34AccX32 rho - Bool.toZMod bit * (seg34AccX32 rho - rho 34657) := by
      have hd : rho 34659 = Bool.toZMod bit * (rho 34657 - seg34AccX32 rho) := by
        rw [← hbit, seg34LadderFlatX32_eq]
        unfold seg34LadderFlatX32
        linear_combination -r3387
      unfold seg34AccX33
      linear_combination hd
    have hsely : seg34AccY33 rho = seg34AccY32 rho - Bool.toZMod bit * (seg34AccY32 rho - rho 34658) := by
      have hd : rho 34660 = Bool.toZMod bit * (rho 34658 - seg34AccY32 rho) := by
        rw [← hbit, seg34LadderFlatY32_eq]
        unfold seg34LadderFlatY32
        linear_combination -r3388
      unfold seg34AccY33
      linear_combination hd
    have hd0 : rho 34651 * rho 34652 = rho 34661 := by linear_combination r3389
    have hd1 : rho 34651 * rho 34651 = rho 34662 := by linear_combination r3390
    have hd2 : rho 34652 * rho 34652 = rho 34663 := by linear_combination r3391
    have hd3 : rho 34664 * (rho 34652 * rho 34652 + rho 34651 * rho 34651 * (-1)) = 2 * (rho 34651 * rho 34652) := by
      rw [hd0, hd1, hd2]
      linear_combination r3392
    have hd4 : rho 34665 * (2 - (rho 34652 * rho 34652 + rho 34651 * rho 34651 * (-1))) = rho 34652 * rho 34652 - rho 34651 * rho 34651 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3393
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX32 rho : Seg34.F), (seg34AccY32 rho : Seg34.F)⟩
      ⟨(rho 34651 : Seg34.F), (rho 34652 : Seg34.F)⟩
      ⟨(rho 34657 : Seg34.F), (rho 34658 : Seg34.F)⟩
      ⟨(seg34AccX33 rho : Seg34.F), (seg34AccY33 rho : Seg34.F)⟩
      ⟨(rho 34664 : Seg34.F), (rho 34665 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung32

theorem seg34_rung33 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34025 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX33 rho : Seg34.F), (seg34AccY33 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34664 : Seg34.F), (rho 34665 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX33 rho : Seg34.F), (seg34AccY33 rho : Seg34.F)⟩
        ⟨(rho 34664 : Seg34.F), (rho 34665 : Seg34.F)⟩
        ⟨(seg34AccX34 rho : Seg34.F), (seg34AccY34 rho : Seg34.F)⟩
        ⟨(rho 34677 : Seg34.F), (rho 34678 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p42, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3394, r3395, r3396, r3397, r3398, r3399, r3400, r3401, r3402, r3403, r3404, r3405, r3406, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3394 Seg34.relationLc200 Seg34.relationLc200Part0 Seg34.relationLc200Part1 Seg34.relationLc200Part2 at r3394
  unfold Seg34.relationRow3395 Seg34.relationLc201 Seg34.relationLc201Part0 Seg34.relationLc201Part1 at r3395
  unfold Seg34.relationRow3396 Seg34.relationLc202 Seg34.relationLc202Part0 Seg34.relationLc202Part1 at r3396
  unfold Seg34.relationRow3397 at r3397
  unfold Seg34.relationRow3398 at r3398
  unfold Seg34.relationRow3399 at r3399
  unfold Seg34.relationRow3400 Seg34.relationLc203 Seg34.relationLc203Part0 Seg34.relationLc203Part1 at r3400
  unfold Seg34.relationRow3401 Seg34.relationLc204 Seg34.relationLc204Part0 Seg34.relationLc204Part1 at r3401
  unfold Seg34.relationRow3402 at r3402
  unfold Seg34.relationRow3403 at r3403
  unfold Seg34.relationRow3404 at r3404
  unfold Seg34.relationRow3405 at r3405
  unfold Seg34.relationRow3406 at r3406
  have hrung33 (bit : Bool) (hbit : rho 34025 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX33 rho : Seg34.F), (seg34AccY33 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34664 : Seg34.F), (rho 34665 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX33 rho : Seg34.F), (seg34AccY33 rho : Seg34.F)⟩
        ⟨(rho 34664 : Seg34.F), (rho 34665 : Seg34.F)⟩
        ⟨(seg34AccX34 rho : Seg34.F), (seg34AccY34 rho : Seg34.F)⟩
        ⟨(rho 34677 : Seg34.F), (rho 34678 : Seg34.F)⟩ := by
    have ha0 : (rho 34664 + rho 34665) * (seg34AccX33 rho + seg34AccY33 rho) = rho 34666 := by
      rw [seg34LadderFlatX33_eq, seg34LadderFlatY33_eq]
      unfold seg34LadderFlatX33 seg34LadderFlatY33
      linear_combination r3394
    have ha1 : rho 34665 * seg34AccX33 rho = rho 34667 := by
      rw [seg34LadderFlatX33_eq]
      unfold seg34LadderFlatX33
      linear_combination r3395
    have ha2 : rho 34664 * seg34AccY33 rho = rho 34668 := by
      rw [seg34LadderFlatY33_eq]
      unfold seg34LadderFlatY33
      linear_combination r3396
    have ha3 : 3021 * rho 34667 * rho 34668 = rho 34669 := by
      linear_combination r3397
    have ha4 : rho 34670 * (1 + rho 34669) = rho 34667 + rho 34668 := by
      linear_combination r3398
    have ha5 : rho 34671 * (1 - rho 34669) = rho 34666 - rho 34667 - rho 34668 := by
      linear_combination r3399
    have haddx :
        rho 34670 * (1 + 3021 * (rho 34665 * seg34AccX33 rho) * (rho 34664 * seg34AccY33 rho)) =
          rho 34665 * seg34AccX33 rho + rho 34664 * seg34AccY33 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34671 * (1 - 3021 * (rho 34665 * seg34AccX33 rho) * (rho 34664 * seg34AccY33 rho)) =
          (-1) * (rho 34665 * seg34AccX33 rho) - rho 34664 * seg34AccY33 rho +
            (seg34AccY33 rho - seg34AccX33 rho * (-1)) * (rho 34664 + rho 34665) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34671 * (1 - rho 34669) = rho 34666 - rho 34667 - rho 34668 := ha5
        _ = (-1) * rho 34667 - rho 34668 + (seg34AccY33 rho - seg34AccX33 rho * (-1)) * (rho 34664 + rho 34665) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX34 rho = seg34AccX33 rho - Bool.toZMod bit * (seg34AccX33 rho - rho 34670) := by
      have hd : rho 34672 = Bool.toZMod bit * (rho 34670 - seg34AccX33 rho) := by
        rw [← hbit, seg34LadderFlatX33_eq]
        unfold seg34LadderFlatX33
        linear_combination -r3400
      unfold seg34AccX34
      linear_combination hd
    have hsely : seg34AccY34 rho = seg34AccY33 rho - Bool.toZMod bit * (seg34AccY33 rho - rho 34671) := by
      have hd : rho 34673 = Bool.toZMod bit * (rho 34671 - seg34AccY33 rho) := by
        rw [← hbit, seg34LadderFlatY33_eq]
        unfold seg34LadderFlatY33
        linear_combination -r3401
      unfold seg34AccY34
      linear_combination hd
    have hd0 : rho 34664 * rho 34665 = rho 34674 := by linear_combination r3402
    have hd1 : rho 34664 * rho 34664 = rho 34675 := by linear_combination r3403
    have hd2 : rho 34665 * rho 34665 = rho 34676 := by linear_combination r3404
    have hd3 : rho 34677 * (rho 34665 * rho 34665 + rho 34664 * rho 34664 * (-1)) = 2 * (rho 34664 * rho 34665) := by
      rw [hd0, hd1, hd2]
      linear_combination r3405
    have hd4 : rho 34678 * (2 - (rho 34665 * rho 34665 + rho 34664 * rho 34664 * (-1))) = rho 34665 * rho 34665 - rho 34664 * rho 34664 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3406
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX33 rho : Seg34.F), (seg34AccY33 rho : Seg34.F)⟩
      ⟨(rho 34664 : Seg34.F), (rho 34665 : Seg34.F)⟩
      ⟨(rho 34670 : Seg34.F), (rho 34671 : Seg34.F)⟩
      ⟨(seg34AccX34 rho : Seg34.F), (seg34AccY34 rho : Seg34.F)⟩
      ⟨(rho 34677 : Seg34.F), (rho 34678 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung33

theorem seg34_rung34 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34026 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX34 rho : Seg34.F), (seg34AccY34 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34677 : Seg34.F), (rho 34678 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX34 rho : Seg34.F), (seg34AccY34 rho : Seg34.F)⟩
        ⟨(rho 34677 : Seg34.F), (rho 34678 : Seg34.F)⟩
        ⟨(seg34AccX35 rho : Seg34.F), (seg34AccY35 rho : Seg34.F)⟩
        ⟨(rho 34690 : Seg34.F), (rho 34691 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p42, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3407, r3408, r3409, r3410, r3411, r3412, r3413, r3414, r3415, r3416, r3417, r3418, r3419, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3407 Seg34.relationLc205 Seg34.relationLc205Part0 Seg34.relationLc205Part1 Seg34.relationLc205Part2 at r3407
  unfold Seg34.relationRow3408 Seg34.relationLc206 Seg34.relationLc206Part0 Seg34.relationLc206Part1 at r3408
  unfold Seg34.relationRow3409 Seg34.relationLc207 Seg34.relationLc207Part0 Seg34.relationLc207Part1 at r3409
  unfold Seg34.relationRow3410 at r3410
  unfold Seg34.relationRow3411 at r3411
  unfold Seg34.relationRow3412 at r3412
  unfold Seg34.relationRow3413 Seg34.relationLc208 Seg34.relationLc208Part0 Seg34.relationLc208Part1 at r3413
  unfold Seg34.relationRow3414 Seg34.relationLc209 Seg34.relationLc209Part0 Seg34.relationLc209Part1 at r3414
  unfold Seg34.relationRow3415 at r3415
  unfold Seg34.relationRow3416 at r3416
  unfold Seg34.relationRow3417 at r3417
  unfold Seg34.relationRow3418 at r3418
  unfold Seg34.relationRow3419 at r3419
  have hrung34 (bit : Bool) (hbit : rho 34026 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX34 rho : Seg34.F), (seg34AccY34 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34677 : Seg34.F), (rho 34678 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX34 rho : Seg34.F), (seg34AccY34 rho : Seg34.F)⟩
        ⟨(rho 34677 : Seg34.F), (rho 34678 : Seg34.F)⟩
        ⟨(seg34AccX35 rho : Seg34.F), (seg34AccY35 rho : Seg34.F)⟩
        ⟨(rho 34690 : Seg34.F), (rho 34691 : Seg34.F)⟩ := by
    have ha0 : (rho 34677 + rho 34678) * (seg34AccX34 rho + seg34AccY34 rho) = rho 34679 := by
      rw [seg34LadderFlatX34_eq, seg34LadderFlatY34_eq]
      unfold seg34LadderFlatX34 seg34LadderFlatY34
      linear_combination r3407
    have ha1 : rho 34678 * seg34AccX34 rho = rho 34680 := by
      rw [seg34LadderFlatX34_eq]
      unfold seg34LadderFlatX34
      linear_combination r3408
    have ha2 : rho 34677 * seg34AccY34 rho = rho 34681 := by
      rw [seg34LadderFlatY34_eq]
      unfold seg34LadderFlatY34
      linear_combination r3409
    have ha3 : 3021 * rho 34680 * rho 34681 = rho 34682 := by
      linear_combination r3410
    have ha4 : rho 34683 * (1 + rho 34682) = rho 34680 + rho 34681 := by
      linear_combination r3411
    have ha5 : rho 34684 * (1 - rho 34682) = rho 34679 - rho 34680 - rho 34681 := by
      linear_combination r3412
    have haddx :
        rho 34683 * (1 + 3021 * (rho 34678 * seg34AccX34 rho) * (rho 34677 * seg34AccY34 rho)) =
          rho 34678 * seg34AccX34 rho + rho 34677 * seg34AccY34 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34684 * (1 - 3021 * (rho 34678 * seg34AccX34 rho) * (rho 34677 * seg34AccY34 rho)) =
          (-1) * (rho 34678 * seg34AccX34 rho) - rho 34677 * seg34AccY34 rho +
            (seg34AccY34 rho - seg34AccX34 rho * (-1)) * (rho 34677 + rho 34678) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34684 * (1 - rho 34682) = rho 34679 - rho 34680 - rho 34681 := ha5
        _ = (-1) * rho 34680 - rho 34681 + (seg34AccY34 rho - seg34AccX34 rho * (-1)) * (rho 34677 + rho 34678) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX35 rho = seg34AccX34 rho - Bool.toZMod bit * (seg34AccX34 rho - rho 34683) := by
      have hd : rho 34685 = Bool.toZMod bit * (rho 34683 - seg34AccX34 rho) := by
        rw [← hbit, seg34LadderFlatX34_eq]
        unfold seg34LadderFlatX34
        linear_combination -r3413
      unfold seg34AccX35
      linear_combination hd
    have hsely : seg34AccY35 rho = seg34AccY34 rho - Bool.toZMod bit * (seg34AccY34 rho - rho 34684) := by
      have hd : rho 34686 = Bool.toZMod bit * (rho 34684 - seg34AccY34 rho) := by
        rw [← hbit, seg34LadderFlatY34_eq]
        unfold seg34LadderFlatY34
        linear_combination -r3414
      unfold seg34AccY35
      linear_combination hd
    have hd0 : rho 34677 * rho 34678 = rho 34687 := by linear_combination r3415
    have hd1 : rho 34677 * rho 34677 = rho 34688 := by linear_combination r3416
    have hd2 : rho 34678 * rho 34678 = rho 34689 := by linear_combination r3417
    have hd3 : rho 34690 * (rho 34678 * rho 34678 + rho 34677 * rho 34677 * (-1)) = 2 * (rho 34677 * rho 34678) := by
      rw [hd0, hd1, hd2]
      linear_combination r3418
    have hd4 : rho 34691 * (2 - (rho 34678 * rho 34678 + rho 34677 * rho 34677 * (-1))) = rho 34678 * rho 34678 - rho 34677 * rho 34677 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3419
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX34 rho : Seg34.F), (seg34AccY34 rho : Seg34.F)⟩
      ⟨(rho 34677 : Seg34.F), (rho 34678 : Seg34.F)⟩
      ⟨(rho 34683 : Seg34.F), (rho 34684 : Seg34.F)⟩
      ⟨(seg34AccX35 rho : Seg34.F), (seg34AccY35 rho : Seg34.F)⟩
      ⟨(rho 34690 : Seg34.F), (rho 34691 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung34

theorem seg34_rung35 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34027 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX35 rho : Seg34.F), (seg34AccY35 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34690 : Seg34.F), (rho 34691 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX35 rho : Seg34.F), (seg34AccY35 rho : Seg34.F)⟩
        ⟨(rho 34690 : Seg34.F), (rho 34691 : Seg34.F)⟩
        ⟨(seg34AccX36 rho : Seg34.F), (seg34AccY36 rho : Seg34.F)⟩
        ⟨(rho 34703 : Seg34.F), (rho 34704 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p42, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3420, r3421, r3422, r3423, r3424, r3425, r3426, r3427, r3428, r3429, r3430, r3431, r3432, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3420 Seg34.relationLc210 Seg34.relationLc210Part0 Seg34.relationLc210Part1 Seg34.relationLc210Part2 at r3420
  unfold Seg34.relationRow3421 Seg34.relationLc211 Seg34.relationLc211Part0 Seg34.relationLc211Part1 at r3421
  unfold Seg34.relationRow3422 Seg34.relationLc212 Seg34.relationLc212Part0 Seg34.relationLc212Part1 at r3422
  unfold Seg34.relationRow3423 at r3423
  unfold Seg34.relationRow3424 at r3424
  unfold Seg34.relationRow3425 at r3425
  unfold Seg34.relationRow3426 Seg34.relationLc213 Seg34.relationLc213Part0 Seg34.relationLc213Part1 at r3426
  unfold Seg34.relationRow3427 Seg34.relationLc214 Seg34.relationLc214Part0 Seg34.relationLc214Part1 at r3427
  unfold Seg34.relationRow3428 at r3428
  unfold Seg34.relationRow3429 at r3429
  unfold Seg34.relationRow3430 at r3430
  unfold Seg34.relationRow3431 at r3431
  unfold Seg34.relationRow3432 at r3432
  have hrung35 (bit : Bool) (hbit : rho 34027 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX35 rho : Seg34.F), (seg34AccY35 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34690 : Seg34.F), (rho 34691 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX35 rho : Seg34.F), (seg34AccY35 rho : Seg34.F)⟩
        ⟨(rho 34690 : Seg34.F), (rho 34691 : Seg34.F)⟩
        ⟨(seg34AccX36 rho : Seg34.F), (seg34AccY36 rho : Seg34.F)⟩
        ⟨(rho 34703 : Seg34.F), (rho 34704 : Seg34.F)⟩ := by
    have ha0 : (rho 34690 + rho 34691) * (seg34AccX35 rho + seg34AccY35 rho) = rho 34692 := by
      rw [seg34LadderFlatX35_eq, seg34LadderFlatY35_eq]
      unfold seg34LadderFlatX35 seg34LadderFlatY35
      linear_combination r3420
    have ha1 : rho 34691 * seg34AccX35 rho = rho 34693 := by
      rw [seg34LadderFlatX35_eq]
      unfold seg34LadderFlatX35
      linear_combination r3421
    have ha2 : rho 34690 * seg34AccY35 rho = rho 34694 := by
      rw [seg34LadderFlatY35_eq]
      unfold seg34LadderFlatY35
      linear_combination r3422
    have ha3 : 3021 * rho 34693 * rho 34694 = rho 34695 := by
      linear_combination r3423
    have ha4 : rho 34696 * (1 + rho 34695) = rho 34693 + rho 34694 := by
      linear_combination r3424
    have ha5 : rho 34697 * (1 - rho 34695) = rho 34692 - rho 34693 - rho 34694 := by
      linear_combination r3425
    have haddx :
        rho 34696 * (1 + 3021 * (rho 34691 * seg34AccX35 rho) * (rho 34690 * seg34AccY35 rho)) =
          rho 34691 * seg34AccX35 rho + rho 34690 * seg34AccY35 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34697 * (1 - 3021 * (rho 34691 * seg34AccX35 rho) * (rho 34690 * seg34AccY35 rho)) =
          (-1) * (rho 34691 * seg34AccX35 rho) - rho 34690 * seg34AccY35 rho +
            (seg34AccY35 rho - seg34AccX35 rho * (-1)) * (rho 34690 + rho 34691) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34697 * (1 - rho 34695) = rho 34692 - rho 34693 - rho 34694 := ha5
        _ = (-1) * rho 34693 - rho 34694 + (seg34AccY35 rho - seg34AccX35 rho * (-1)) * (rho 34690 + rho 34691) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX36 rho = seg34AccX35 rho - Bool.toZMod bit * (seg34AccX35 rho - rho 34696) := by
      have hd : rho 34698 = Bool.toZMod bit * (rho 34696 - seg34AccX35 rho) := by
        rw [← hbit, seg34LadderFlatX35_eq]
        unfold seg34LadderFlatX35
        linear_combination -r3426
      unfold seg34AccX36
      linear_combination hd
    have hsely : seg34AccY36 rho = seg34AccY35 rho - Bool.toZMod bit * (seg34AccY35 rho - rho 34697) := by
      have hd : rho 34699 = Bool.toZMod bit * (rho 34697 - seg34AccY35 rho) := by
        rw [← hbit, seg34LadderFlatY35_eq]
        unfold seg34LadderFlatY35
        linear_combination -r3427
      unfold seg34AccY36
      linear_combination hd
    have hd0 : rho 34690 * rho 34691 = rho 34700 := by linear_combination r3428
    have hd1 : rho 34690 * rho 34690 = rho 34701 := by linear_combination r3429
    have hd2 : rho 34691 * rho 34691 = rho 34702 := by linear_combination r3430
    have hd3 : rho 34703 * (rho 34691 * rho 34691 + rho 34690 * rho 34690 * (-1)) = 2 * (rho 34690 * rho 34691) := by
      rw [hd0, hd1, hd2]
      linear_combination r3431
    have hd4 : rho 34704 * (2 - (rho 34691 * rho 34691 + rho 34690 * rho 34690 * (-1))) = rho 34691 * rho 34691 - rho 34690 * rho 34690 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3432
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX35 rho : Seg34.F), (seg34AccY35 rho : Seg34.F)⟩
      ⟨(rho 34690 : Seg34.F), (rho 34691 : Seg34.F)⟩
      ⟨(rho 34696 : Seg34.F), (rho 34697 : Seg34.F)⟩
      ⟨(seg34AccX36 rho : Seg34.F), (seg34AccY36 rho : Seg34.F)⟩
      ⟨(rho 34703 : Seg34.F), (rho 34704 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung35

theorem seg34_rung36 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34028 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX36 rho : Seg34.F), (seg34AccY36 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34703 : Seg34.F), (rho 34704 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX36 rho : Seg34.F), (seg34AccY36 rho : Seg34.F)⟩
        ⟨(rho 34703 : Seg34.F), (rho 34704 : Seg34.F)⟩
        ⟨(seg34AccX37 rho : Seg34.F), (seg34AccY37 rho : Seg34.F)⟩
        ⟨(rho 34716 : Seg34.F), (rho 34717 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p42, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3433, r3434, r3435, r3436, r3437, r3438, r3439⟩
  unfold Seg34.relationPart43 at p43
  rcases p43 with ⟨r3440, r3441, r3442, r3443, r3444, r3445, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3433 Seg34.relationLc215 Seg34.relationLc215Part0 Seg34.relationLc215Part1 Seg34.relationLc215Part2 at r3433
  unfold Seg34.relationRow3434 Seg34.relationLc216 Seg34.relationLc216Part0 Seg34.relationLc216Part1 at r3434
  unfold Seg34.relationRow3435 Seg34.relationLc217 Seg34.relationLc217Part0 Seg34.relationLc217Part1 at r3435
  unfold Seg34.relationRow3436 at r3436
  unfold Seg34.relationRow3437 at r3437
  unfold Seg34.relationRow3438 at r3438
  unfold Seg34.relationRow3439 Seg34.relationLc218 Seg34.relationLc218Part0 Seg34.relationLc218Part1 at r3439
  unfold Seg34.relationRow3440 Seg34.relationLc219 Seg34.relationLc219Part0 Seg34.relationLc219Part1 at r3440
  unfold Seg34.relationRow3441 at r3441
  unfold Seg34.relationRow3442 at r3442
  unfold Seg34.relationRow3443 at r3443
  unfold Seg34.relationRow3444 at r3444
  unfold Seg34.relationRow3445 at r3445
  have hrung36 (bit : Bool) (hbit : rho 34028 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX36 rho : Seg34.F), (seg34AccY36 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34703 : Seg34.F), (rho 34704 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX36 rho : Seg34.F), (seg34AccY36 rho : Seg34.F)⟩
        ⟨(rho 34703 : Seg34.F), (rho 34704 : Seg34.F)⟩
        ⟨(seg34AccX37 rho : Seg34.F), (seg34AccY37 rho : Seg34.F)⟩
        ⟨(rho 34716 : Seg34.F), (rho 34717 : Seg34.F)⟩ := by
    have ha0 : (rho 34703 + rho 34704) * (seg34AccX36 rho + seg34AccY36 rho) = rho 34705 := by
      rw [seg34LadderFlatX36_eq, seg34LadderFlatY36_eq]
      unfold seg34LadderFlatX36 seg34LadderFlatY36
      linear_combination r3433
    have ha1 : rho 34704 * seg34AccX36 rho = rho 34706 := by
      rw [seg34LadderFlatX36_eq]
      unfold seg34LadderFlatX36
      linear_combination r3434
    have ha2 : rho 34703 * seg34AccY36 rho = rho 34707 := by
      rw [seg34LadderFlatY36_eq]
      unfold seg34LadderFlatY36
      linear_combination r3435
    have ha3 : 3021 * rho 34706 * rho 34707 = rho 34708 := by
      linear_combination r3436
    have ha4 : rho 34709 * (1 + rho 34708) = rho 34706 + rho 34707 := by
      linear_combination r3437
    have ha5 : rho 34710 * (1 - rho 34708) = rho 34705 - rho 34706 - rho 34707 := by
      linear_combination r3438
    have haddx :
        rho 34709 * (1 + 3021 * (rho 34704 * seg34AccX36 rho) * (rho 34703 * seg34AccY36 rho)) =
          rho 34704 * seg34AccX36 rho + rho 34703 * seg34AccY36 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34710 * (1 - 3021 * (rho 34704 * seg34AccX36 rho) * (rho 34703 * seg34AccY36 rho)) =
          (-1) * (rho 34704 * seg34AccX36 rho) - rho 34703 * seg34AccY36 rho +
            (seg34AccY36 rho - seg34AccX36 rho * (-1)) * (rho 34703 + rho 34704) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34710 * (1 - rho 34708) = rho 34705 - rho 34706 - rho 34707 := ha5
        _ = (-1) * rho 34706 - rho 34707 + (seg34AccY36 rho - seg34AccX36 rho * (-1)) * (rho 34703 + rho 34704) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX37 rho = seg34AccX36 rho - Bool.toZMod bit * (seg34AccX36 rho - rho 34709) := by
      have hd : rho 34711 = Bool.toZMod bit * (rho 34709 - seg34AccX36 rho) := by
        rw [← hbit, seg34LadderFlatX36_eq]
        unfold seg34LadderFlatX36
        linear_combination -r3439
      unfold seg34AccX37
      linear_combination hd
    have hsely : seg34AccY37 rho = seg34AccY36 rho - Bool.toZMod bit * (seg34AccY36 rho - rho 34710) := by
      have hd : rho 34712 = Bool.toZMod bit * (rho 34710 - seg34AccY36 rho) := by
        rw [← hbit, seg34LadderFlatY36_eq]
        unfold seg34LadderFlatY36
        linear_combination -r3440
      unfold seg34AccY37
      linear_combination hd
    have hd0 : rho 34703 * rho 34704 = rho 34713 := by linear_combination r3441
    have hd1 : rho 34703 * rho 34703 = rho 34714 := by linear_combination r3442
    have hd2 : rho 34704 * rho 34704 = rho 34715 := by linear_combination r3443
    have hd3 : rho 34716 * (rho 34704 * rho 34704 + rho 34703 * rho 34703 * (-1)) = 2 * (rho 34703 * rho 34704) := by
      rw [hd0, hd1, hd2]
      linear_combination r3444
    have hd4 : rho 34717 * (2 - (rho 34704 * rho 34704 + rho 34703 * rho 34703 * (-1))) = rho 34704 * rho 34704 - rho 34703 * rho 34703 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3445
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX36 rho : Seg34.F), (seg34AccY36 rho : Seg34.F)⟩
      ⟨(rho 34703 : Seg34.F), (rho 34704 : Seg34.F)⟩
      ⟨(rho 34709 : Seg34.F), (rho 34710 : Seg34.F)⟩
      ⟨(seg34AccX37 rho : Seg34.F), (seg34AccY37 rho : Seg34.F)⟩
      ⟨(rho 34716 : Seg34.F), (rho 34717 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung36

theorem seg34_rung37 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34029 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX37 rho : Seg34.F), (seg34AccY37 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34716 : Seg34.F), (rho 34717 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX37 rho : Seg34.F), (seg34AccY37 rho : Seg34.F)⟩
        ⟨(rho 34716 : Seg34.F), (rho 34717 : Seg34.F)⟩
        ⟨(seg34AccX38 rho : Seg34.F), (seg34AccY38 rho : Seg34.F)⟩
        ⟨(rho 34729 : Seg34.F), (rho 34730 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, r3446, r3447, r3448, r3449, r3450, r3451, r3452, r3453, r3454, r3455, r3456, r3457, r3458, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3446 Seg34.relationLc220 Seg34.relationLc220Part0 Seg34.relationLc220Part1 Seg34.relationLc220Part2 at r3446
  unfold Seg34.relationRow3447 Seg34.relationLc221 Seg34.relationLc221Part0 Seg34.relationLc221Part1 at r3447
  unfold Seg34.relationRow3448 Seg34.relationLc222 Seg34.relationLc222Part0 Seg34.relationLc222Part1 at r3448
  unfold Seg34.relationRow3449 at r3449
  unfold Seg34.relationRow3450 at r3450
  unfold Seg34.relationRow3451 at r3451
  unfold Seg34.relationRow3452 Seg34.relationLc223 Seg34.relationLc223Part0 Seg34.relationLc223Part1 at r3452
  unfold Seg34.relationRow3453 Seg34.relationLc224 Seg34.relationLc224Part0 Seg34.relationLc224Part1 at r3453
  unfold Seg34.relationRow3454 at r3454
  unfold Seg34.relationRow3455 at r3455
  unfold Seg34.relationRow3456 at r3456
  unfold Seg34.relationRow3457 at r3457
  unfold Seg34.relationRow3458 at r3458
  have hrung37 (bit : Bool) (hbit : rho 34029 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX37 rho : Seg34.F), (seg34AccY37 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34716 : Seg34.F), (rho 34717 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX37 rho : Seg34.F), (seg34AccY37 rho : Seg34.F)⟩
        ⟨(rho 34716 : Seg34.F), (rho 34717 : Seg34.F)⟩
        ⟨(seg34AccX38 rho : Seg34.F), (seg34AccY38 rho : Seg34.F)⟩
        ⟨(rho 34729 : Seg34.F), (rho 34730 : Seg34.F)⟩ := by
    have ha0 : (rho 34716 + rho 34717) * (seg34AccX37 rho + seg34AccY37 rho) = rho 34718 := by
      rw [seg34LadderFlatX37_eq, seg34LadderFlatY37_eq]
      unfold seg34LadderFlatX37 seg34LadderFlatY37
      linear_combination r3446
    have ha1 : rho 34717 * seg34AccX37 rho = rho 34719 := by
      rw [seg34LadderFlatX37_eq]
      unfold seg34LadderFlatX37
      linear_combination r3447
    have ha2 : rho 34716 * seg34AccY37 rho = rho 34720 := by
      rw [seg34LadderFlatY37_eq]
      unfold seg34LadderFlatY37
      linear_combination r3448
    have ha3 : 3021 * rho 34719 * rho 34720 = rho 34721 := by
      linear_combination r3449
    have ha4 : rho 34722 * (1 + rho 34721) = rho 34719 + rho 34720 := by
      linear_combination r3450
    have ha5 : rho 34723 * (1 - rho 34721) = rho 34718 - rho 34719 - rho 34720 := by
      linear_combination r3451
    have haddx :
        rho 34722 * (1 + 3021 * (rho 34717 * seg34AccX37 rho) * (rho 34716 * seg34AccY37 rho)) =
          rho 34717 * seg34AccX37 rho + rho 34716 * seg34AccY37 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34723 * (1 - 3021 * (rho 34717 * seg34AccX37 rho) * (rho 34716 * seg34AccY37 rho)) =
          (-1) * (rho 34717 * seg34AccX37 rho) - rho 34716 * seg34AccY37 rho +
            (seg34AccY37 rho - seg34AccX37 rho * (-1)) * (rho 34716 + rho 34717) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34723 * (1 - rho 34721) = rho 34718 - rho 34719 - rho 34720 := ha5
        _ = (-1) * rho 34719 - rho 34720 + (seg34AccY37 rho - seg34AccX37 rho * (-1)) * (rho 34716 + rho 34717) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX38 rho = seg34AccX37 rho - Bool.toZMod bit * (seg34AccX37 rho - rho 34722) := by
      have hd : rho 34724 = Bool.toZMod bit * (rho 34722 - seg34AccX37 rho) := by
        rw [← hbit, seg34LadderFlatX37_eq]
        unfold seg34LadderFlatX37
        linear_combination -r3452
      unfold seg34AccX38
      linear_combination hd
    have hsely : seg34AccY38 rho = seg34AccY37 rho - Bool.toZMod bit * (seg34AccY37 rho - rho 34723) := by
      have hd : rho 34725 = Bool.toZMod bit * (rho 34723 - seg34AccY37 rho) := by
        rw [← hbit, seg34LadderFlatY37_eq]
        unfold seg34LadderFlatY37
        linear_combination -r3453
      unfold seg34AccY38
      linear_combination hd
    have hd0 : rho 34716 * rho 34717 = rho 34726 := by linear_combination r3454
    have hd1 : rho 34716 * rho 34716 = rho 34727 := by linear_combination r3455
    have hd2 : rho 34717 * rho 34717 = rho 34728 := by linear_combination r3456
    have hd3 : rho 34729 * (rho 34717 * rho 34717 + rho 34716 * rho 34716 * (-1)) = 2 * (rho 34716 * rho 34717) := by
      rw [hd0, hd1, hd2]
      linear_combination r3457
    have hd4 : rho 34730 * (2 - (rho 34717 * rho 34717 + rho 34716 * rho 34716 * (-1))) = rho 34717 * rho 34717 - rho 34716 * rho 34716 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3458
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX37 rho : Seg34.F), (seg34AccY37 rho : Seg34.F)⟩
      ⟨(rho 34716 : Seg34.F), (rho 34717 : Seg34.F)⟩
      ⟨(rho 34722 : Seg34.F), (rho 34723 : Seg34.F)⟩
      ⟨(seg34AccX38 rho : Seg34.F), (seg34AccY38 rho : Seg34.F)⟩
      ⟨(rho 34729 : Seg34.F), (rho 34730 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung37

theorem seg34_rung38 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34030 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX38 rho : Seg34.F), (seg34AccY38 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34729 : Seg34.F), (rho 34730 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX38 rho : Seg34.F), (seg34AccY38 rho : Seg34.F)⟩
        ⟨(rho 34729 : Seg34.F), (rho 34730 : Seg34.F)⟩
        ⟨(seg34AccX39 rho : Seg34.F), (seg34AccY39 rho : Seg34.F)⟩
        ⟨(rho 34742 : Seg34.F), (rho 34743 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3459, r3460, r3461, r3462, r3463, r3464, r3465, r3466, r3467, r3468, r3469, r3470, r3471, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3459 Seg34.relationLc225 Seg34.relationLc225Part0 Seg34.relationLc225Part1 Seg34.relationLc225Part2 at r3459
  unfold Seg34.relationRow3460 Seg34.relationLc226 Seg34.relationLc226Part0 Seg34.relationLc226Part1 at r3460
  unfold Seg34.relationRow3461 Seg34.relationLc227 Seg34.relationLc227Part0 Seg34.relationLc227Part1 at r3461
  unfold Seg34.relationRow3462 at r3462
  unfold Seg34.relationRow3463 at r3463
  unfold Seg34.relationRow3464 at r3464
  unfold Seg34.relationRow3465 Seg34.relationLc228 Seg34.relationLc228Part0 Seg34.relationLc228Part1 at r3465
  unfold Seg34.relationRow3466 Seg34.relationLc229 Seg34.relationLc229Part0 Seg34.relationLc229Part1 at r3466
  unfold Seg34.relationRow3467 at r3467
  unfold Seg34.relationRow3468 at r3468
  unfold Seg34.relationRow3469 at r3469
  unfold Seg34.relationRow3470 at r3470
  unfold Seg34.relationRow3471 at r3471
  have hrung38 (bit : Bool) (hbit : rho 34030 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX38 rho : Seg34.F), (seg34AccY38 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34729 : Seg34.F), (rho 34730 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX38 rho : Seg34.F), (seg34AccY38 rho : Seg34.F)⟩
        ⟨(rho 34729 : Seg34.F), (rho 34730 : Seg34.F)⟩
        ⟨(seg34AccX39 rho : Seg34.F), (seg34AccY39 rho : Seg34.F)⟩
        ⟨(rho 34742 : Seg34.F), (rho 34743 : Seg34.F)⟩ := by
    have ha0 : (rho 34729 + rho 34730) * (seg34AccX38 rho + seg34AccY38 rho) = rho 34731 := by
      rw [seg34LadderFlatX38_eq, seg34LadderFlatY38_eq]
      unfold seg34LadderFlatX38 seg34LadderFlatY38
      linear_combination r3459
    have ha1 : rho 34730 * seg34AccX38 rho = rho 34732 := by
      rw [seg34LadderFlatX38_eq]
      unfold seg34LadderFlatX38
      linear_combination r3460
    have ha2 : rho 34729 * seg34AccY38 rho = rho 34733 := by
      rw [seg34LadderFlatY38_eq]
      unfold seg34LadderFlatY38
      linear_combination r3461
    have ha3 : 3021 * rho 34732 * rho 34733 = rho 34734 := by
      linear_combination r3462
    have ha4 : rho 34735 * (1 + rho 34734) = rho 34732 + rho 34733 := by
      linear_combination r3463
    have ha5 : rho 34736 * (1 - rho 34734) = rho 34731 - rho 34732 - rho 34733 := by
      linear_combination r3464
    have haddx :
        rho 34735 * (1 + 3021 * (rho 34730 * seg34AccX38 rho) * (rho 34729 * seg34AccY38 rho)) =
          rho 34730 * seg34AccX38 rho + rho 34729 * seg34AccY38 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34736 * (1 - 3021 * (rho 34730 * seg34AccX38 rho) * (rho 34729 * seg34AccY38 rho)) =
          (-1) * (rho 34730 * seg34AccX38 rho) - rho 34729 * seg34AccY38 rho +
            (seg34AccY38 rho - seg34AccX38 rho * (-1)) * (rho 34729 + rho 34730) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34736 * (1 - rho 34734) = rho 34731 - rho 34732 - rho 34733 := ha5
        _ = (-1) * rho 34732 - rho 34733 + (seg34AccY38 rho - seg34AccX38 rho * (-1)) * (rho 34729 + rho 34730) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX39 rho = seg34AccX38 rho - Bool.toZMod bit * (seg34AccX38 rho - rho 34735) := by
      have hd : rho 34737 = Bool.toZMod bit * (rho 34735 - seg34AccX38 rho) := by
        rw [← hbit, seg34LadderFlatX38_eq]
        unfold seg34LadderFlatX38
        linear_combination -r3465
      unfold seg34AccX39
      linear_combination hd
    have hsely : seg34AccY39 rho = seg34AccY38 rho - Bool.toZMod bit * (seg34AccY38 rho - rho 34736) := by
      have hd : rho 34738 = Bool.toZMod bit * (rho 34736 - seg34AccY38 rho) := by
        rw [← hbit, seg34LadderFlatY38_eq]
        unfold seg34LadderFlatY38
        linear_combination -r3466
      unfold seg34AccY39
      linear_combination hd
    have hd0 : rho 34729 * rho 34730 = rho 34739 := by linear_combination r3467
    have hd1 : rho 34729 * rho 34729 = rho 34740 := by linear_combination r3468
    have hd2 : rho 34730 * rho 34730 = rho 34741 := by linear_combination r3469
    have hd3 : rho 34742 * (rho 34730 * rho 34730 + rho 34729 * rho 34729 * (-1)) = 2 * (rho 34729 * rho 34730) := by
      rw [hd0, hd1, hd2]
      linear_combination r3470
    have hd4 : rho 34743 * (2 - (rho 34730 * rho 34730 + rho 34729 * rho 34729 * (-1))) = rho 34730 * rho 34730 - rho 34729 * rho 34729 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3471
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX38 rho : Seg34.F), (seg34AccY38 rho : Seg34.F)⟩
      ⟨(rho 34729 : Seg34.F), (rho 34730 : Seg34.F)⟩
      ⟨(rho 34735 : Seg34.F), (rho 34736 : Seg34.F)⟩
      ⟨(seg34AccX39 rho : Seg34.F), (seg34AccY39 rho : Seg34.F)⟩
      ⟨(rho 34742 : Seg34.F), (rho 34743 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung38

theorem seg34_rung39 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34031 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX39 rho : Seg34.F), (seg34AccY39 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34742 : Seg34.F), (rho 34743 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX39 rho : Seg34.F), (seg34AccY39 rho : Seg34.F)⟩
        ⟨(rho 34742 : Seg34.F), (rho 34743 : Seg34.F)⟩
        ⟨(seg34AccX40 rho : Seg34.F), (seg34AccY40 rho : Seg34.F)⟩
        ⟨(rho 34755 : Seg34.F), (rho 34756 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3472, r3473, r3474, r3475, r3476, r3477, r3478, r3479, r3480, r3481, r3482, r3483, r3484, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3472 Seg34.relationLc230 Seg34.relationLc230Part0 Seg34.relationLc230Part1 Seg34.relationLc230Part2 at r3472
  unfold Seg34.relationRow3473 Seg34.relationLc231 Seg34.relationLc231Part0 Seg34.relationLc231Part1 at r3473
  unfold Seg34.relationRow3474 Seg34.relationLc232 Seg34.relationLc232Part0 Seg34.relationLc232Part1 at r3474
  unfold Seg34.relationRow3475 at r3475
  unfold Seg34.relationRow3476 at r3476
  unfold Seg34.relationRow3477 at r3477
  unfold Seg34.relationRow3478 Seg34.relationLc233 Seg34.relationLc233Part0 Seg34.relationLc233Part1 at r3478
  unfold Seg34.relationRow3479 Seg34.relationLc234 Seg34.relationLc234Part0 Seg34.relationLc234Part1 at r3479
  unfold Seg34.relationRow3480 at r3480
  unfold Seg34.relationRow3481 at r3481
  unfold Seg34.relationRow3482 at r3482
  unfold Seg34.relationRow3483 at r3483
  unfold Seg34.relationRow3484 at r3484
  have hrung39 (bit : Bool) (hbit : rho 34031 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX39 rho : Seg34.F), (seg34AccY39 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34742 : Seg34.F), (rho 34743 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX39 rho : Seg34.F), (seg34AccY39 rho : Seg34.F)⟩
        ⟨(rho 34742 : Seg34.F), (rho 34743 : Seg34.F)⟩
        ⟨(seg34AccX40 rho : Seg34.F), (seg34AccY40 rho : Seg34.F)⟩
        ⟨(rho 34755 : Seg34.F), (rho 34756 : Seg34.F)⟩ := by
    have ha0 : (rho 34742 + rho 34743) * (seg34AccX39 rho + seg34AccY39 rho) = rho 34744 := by
      rw [seg34LadderFlatX39_eq, seg34LadderFlatY39_eq]
      unfold seg34LadderFlatX39 seg34LadderFlatY39
      linear_combination r3472
    have ha1 : rho 34743 * seg34AccX39 rho = rho 34745 := by
      rw [seg34LadderFlatX39_eq]
      unfold seg34LadderFlatX39
      linear_combination r3473
    have ha2 : rho 34742 * seg34AccY39 rho = rho 34746 := by
      rw [seg34LadderFlatY39_eq]
      unfold seg34LadderFlatY39
      linear_combination r3474
    have ha3 : 3021 * rho 34745 * rho 34746 = rho 34747 := by
      linear_combination r3475
    have ha4 : rho 34748 * (1 + rho 34747) = rho 34745 + rho 34746 := by
      linear_combination r3476
    have ha5 : rho 34749 * (1 - rho 34747) = rho 34744 - rho 34745 - rho 34746 := by
      linear_combination r3477
    have haddx :
        rho 34748 * (1 + 3021 * (rho 34743 * seg34AccX39 rho) * (rho 34742 * seg34AccY39 rho)) =
          rho 34743 * seg34AccX39 rho + rho 34742 * seg34AccY39 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34749 * (1 - 3021 * (rho 34743 * seg34AccX39 rho) * (rho 34742 * seg34AccY39 rho)) =
          (-1) * (rho 34743 * seg34AccX39 rho) - rho 34742 * seg34AccY39 rho +
            (seg34AccY39 rho - seg34AccX39 rho * (-1)) * (rho 34742 + rho 34743) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34749 * (1 - rho 34747) = rho 34744 - rho 34745 - rho 34746 := ha5
        _ = (-1) * rho 34745 - rho 34746 + (seg34AccY39 rho - seg34AccX39 rho * (-1)) * (rho 34742 + rho 34743) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX40 rho = seg34AccX39 rho - Bool.toZMod bit * (seg34AccX39 rho - rho 34748) := by
      have hd : rho 34750 = Bool.toZMod bit * (rho 34748 - seg34AccX39 rho) := by
        rw [← hbit, seg34LadderFlatX39_eq]
        unfold seg34LadderFlatX39
        linear_combination -r3478
      unfold seg34AccX40
      linear_combination hd
    have hsely : seg34AccY40 rho = seg34AccY39 rho - Bool.toZMod bit * (seg34AccY39 rho - rho 34749) := by
      have hd : rho 34751 = Bool.toZMod bit * (rho 34749 - seg34AccY39 rho) := by
        rw [← hbit, seg34LadderFlatY39_eq]
        unfold seg34LadderFlatY39
        linear_combination -r3479
      unfold seg34AccY40
      linear_combination hd
    have hd0 : rho 34742 * rho 34743 = rho 34752 := by linear_combination r3480
    have hd1 : rho 34742 * rho 34742 = rho 34753 := by linear_combination r3481
    have hd2 : rho 34743 * rho 34743 = rho 34754 := by linear_combination r3482
    have hd3 : rho 34755 * (rho 34743 * rho 34743 + rho 34742 * rho 34742 * (-1)) = 2 * (rho 34742 * rho 34743) := by
      rw [hd0, hd1, hd2]
      linear_combination r3483
    have hd4 : rho 34756 * (2 - (rho 34743 * rho 34743 + rho 34742 * rho 34742 * (-1))) = rho 34743 * rho 34743 - rho 34742 * rho 34742 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3484
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX39 rho : Seg34.F), (seg34AccY39 rho : Seg34.F)⟩
      ⟨(rho 34742 : Seg34.F), (rho 34743 : Seg34.F)⟩
      ⟨(rho 34748 : Seg34.F), (rho 34749 : Seg34.F)⟩
      ⟨(seg34AccX40 rho : Seg34.F), (seg34AccY40 rho : Seg34.F)⟩
      ⟨(rho 34755 : Seg34.F), (rho 34756 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung39

theorem seg34_rung40 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34032 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX40 rho : Seg34.F), (seg34AccY40 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34755 : Seg34.F), (rho 34756 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX40 rho : Seg34.F), (seg34AccY40 rho : Seg34.F)⟩
        ⟨(rho 34755 : Seg34.F), (rho 34756 : Seg34.F)⟩
        ⟨(seg34AccX41 rho : Seg34.F), (seg34AccY41 rho : Seg34.F)⟩
        ⟨(rho 34768 : Seg34.F), (rho 34769 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3485, r3486, r3487, r3488, r3489, r3490, r3491, r3492, r3493, r3494, r3495, r3496, r3497, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3485 Seg34.relationLc235 Seg34.relationLc235Part0 Seg34.relationLc235Part1 Seg34.relationLc235Part2 at r3485
  unfold Seg34.relationRow3486 Seg34.relationLc236 Seg34.relationLc236Part0 Seg34.relationLc236Part1 at r3486
  unfold Seg34.relationRow3487 Seg34.relationLc237 Seg34.relationLc237Part0 Seg34.relationLc237Part1 at r3487
  unfold Seg34.relationRow3488 at r3488
  unfold Seg34.relationRow3489 at r3489
  unfold Seg34.relationRow3490 at r3490
  unfold Seg34.relationRow3491 Seg34.relationLc238 Seg34.relationLc238Part0 Seg34.relationLc238Part1 at r3491
  unfold Seg34.relationRow3492 Seg34.relationLc239 Seg34.relationLc239Part0 Seg34.relationLc239Part1 at r3492
  unfold Seg34.relationRow3493 at r3493
  unfold Seg34.relationRow3494 at r3494
  unfold Seg34.relationRow3495 at r3495
  unfold Seg34.relationRow3496 at r3496
  unfold Seg34.relationRow3497 at r3497
  have hrung40 (bit : Bool) (hbit : rho 34032 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX40 rho : Seg34.F), (seg34AccY40 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34755 : Seg34.F), (rho 34756 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX40 rho : Seg34.F), (seg34AccY40 rho : Seg34.F)⟩
        ⟨(rho 34755 : Seg34.F), (rho 34756 : Seg34.F)⟩
        ⟨(seg34AccX41 rho : Seg34.F), (seg34AccY41 rho : Seg34.F)⟩
        ⟨(rho 34768 : Seg34.F), (rho 34769 : Seg34.F)⟩ := by
    have ha0 : (rho 34755 + rho 34756) * (seg34AccX40 rho + seg34AccY40 rho) = rho 34757 := by
      rw [seg34LadderFlatX40_eq, seg34LadderFlatY40_eq]
      unfold seg34LadderFlatX40 seg34LadderFlatY40
      linear_combination r3485
    have ha1 : rho 34756 * seg34AccX40 rho = rho 34758 := by
      rw [seg34LadderFlatX40_eq]
      unfold seg34LadderFlatX40
      linear_combination r3486
    have ha2 : rho 34755 * seg34AccY40 rho = rho 34759 := by
      rw [seg34LadderFlatY40_eq]
      unfold seg34LadderFlatY40
      linear_combination r3487
    have ha3 : 3021 * rho 34758 * rho 34759 = rho 34760 := by
      linear_combination r3488
    have ha4 : rho 34761 * (1 + rho 34760) = rho 34758 + rho 34759 := by
      linear_combination r3489
    have ha5 : rho 34762 * (1 - rho 34760) = rho 34757 - rho 34758 - rho 34759 := by
      linear_combination r3490
    have haddx :
        rho 34761 * (1 + 3021 * (rho 34756 * seg34AccX40 rho) * (rho 34755 * seg34AccY40 rho)) =
          rho 34756 * seg34AccX40 rho + rho 34755 * seg34AccY40 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34762 * (1 - 3021 * (rho 34756 * seg34AccX40 rho) * (rho 34755 * seg34AccY40 rho)) =
          (-1) * (rho 34756 * seg34AccX40 rho) - rho 34755 * seg34AccY40 rho +
            (seg34AccY40 rho - seg34AccX40 rho * (-1)) * (rho 34755 + rho 34756) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34762 * (1 - rho 34760) = rho 34757 - rho 34758 - rho 34759 := ha5
        _ = (-1) * rho 34758 - rho 34759 + (seg34AccY40 rho - seg34AccX40 rho * (-1)) * (rho 34755 + rho 34756) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX41 rho = seg34AccX40 rho - Bool.toZMod bit * (seg34AccX40 rho - rho 34761) := by
      have hd : rho 34763 = Bool.toZMod bit * (rho 34761 - seg34AccX40 rho) := by
        rw [← hbit, seg34LadderFlatX40_eq]
        unfold seg34LadderFlatX40
        linear_combination -r3491
      unfold seg34AccX41
      linear_combination hd
    have hsely : seg34AccY41 rho = seg34AccY40 rho - Bool.toZMod bit * (seg34AccY40 rho - rho 34762) := by
      have hd : rho 34764 = Bool.toZMod bit * (rho 34762 - seg34AccY40 rho) := by
        rw [← hbit, seg34LadderFlatY40_eq]
        unfold seg34LadderFlatY40
        linear_combination -r3492
      unfold seg34AccY41
      linear_combination hd
    have hd0 : rho 34755 * rho 34756 = rho 34765 := by linear_combination r3493
    have hd1 : rho 34755 * rho 34755 = rho 34766 := by linear_combination r3494
    have hd2 : rho 34756 * rho 34756 = rho 34767 := by linear_combination r3495
    have hd3 : rho 34768 * (rho 34756 * rho 34756 + rho 34755 * rho 34755 * (-1)) = 2 * (rho 34755 * rho 34756) := by
      rw [hd0, hd1, hd2]
      linear_combination r3496
    have hd4 : rho 34769 * (2 - (rho 34756 * rho 34756 + rho 34755 * rho 34755 * (-1))) = rho 34756 * rho 34756 - rho 34755 * rho 34755 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3497
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX40 rho : Seg34.F), (seg34AccY40 rho : Seg34.F)⟩
      ⟨(rho 34755 : Seg34.F), (rho 34756 : Seg34.F)⟩
      ⟨(rho 34761 : Seg34.F), (rho 34762 : Seg34.F)⟩
      ⟨(seg34AccX41 rho : Seg34.F), (seg34AccY41 rho : Seg34.F)⟩
      ⟨(rho 34768 : Seg34.F), (rho 34769 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung40

theorem seg34_rung41 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34033 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX41 rho : Seg34.F), (seg34AccY41 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34768 : Seg34.F), (rho 34769 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX41 rho : Seg34.F), (seg34AccY41 rho : Seg34.F)⟩
        ⟨(rho 34768 : Seg34.F), (rho 34769 : Seg34.F)⟩
        ⟨(seg34AccX42 rho : Seg34.F), (seg34AccY42 rho : Seg34.F)⟩
        ⟨(rho 34781 : Seg34.F), (rho 34782 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3498, r3499, r3500, r3501, r3502, r3503, r3504, r3505, r3506, r3507, r3508, r3509, r3510, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3498 Seg34.relationLc240 Seg34.relationLc240Part0 Seg34.relationLc240Part1 Seg34.relationLc240Part2 at r3498
  unfold Seg34.relationRow3499 Seg34.relationLc241 Seg34.relationLc241Part0 Seg34.relationLc241Part1 at r3499
  unfold Seg34.relationRow3500 Seg34.relationLc242 Seg34.relationLc242Part0 Seg34.relationLc242Part1 at r3500
  unfold Seg34.relationRow3501 at r3501
  unfold Seg34.relationRow3502 at r3502
  unfold Seg34.relationRow3503 at r3503
  unfold Seg34.relationRow3504 Seg34.relationLc243 Seg34.relationLc243Part0 Seg34.relationLc243Part1 at r3504
  unfold Seg34.relationRow3505 Seg34.relationLc244 Seg34.relationLc244Part0 Seg34.relationLc244Part1 at r3505
  unfold Seg34.relationRow3506 at r3506
  unfold Seg34.relationRow3507 at r3507
  unfold Seg34.relationRow3508 at r3508
  unfold Seg34.relationRow3509 at r3509
  unfold Seg34.relationRow3510 at r3510
  have hrung41 (bit : Bool) (hbit : rho 34033 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX41 rho : Seg34.F), (seg34AccY41 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34768 : Seg34.F), (rho 34769 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX41 rho : Seg34.F), (seg34AccY41 rho : Seg34.F)⟩
        ⟨(rho 34768 : Seg34.F), (rho 34769 : Seg34.F)⟩
        ⟨(seg34AccX42 rho : Seg34.F), (seg34AccY42 rho : Seg34.F)⟩
        ⟨(rho 34781 : Seg34.F), (rho 34782 : Seg34.F)⟩ := by
    have ha0 : (rho 34768 + rho 34769) * (seg34AccX41 rho + seg34AccY41 rho) = rho 34770 := by
      rw [seg34LadderFlatX41_eq, seg34LadderFlatY41_eq]
      unfold seg34LadderFlatX41 seg34LadderFlatY41
      linear_combination r3498
    have ha1 : rho 34769 * seg34AccX41 rho = rho 34771 := by
      rw [seg34LadderFlatX41_eq]
      unfold seg34LadderFlatX41
      linear_combination r3499
    have ha2 : rho 34768 * seg34AccY41 rho = rho 34772 := by
      rw [seg34LadderFlatY41_eq]
      unfold seg34LadderFlatY41
      linear_combination r3500
    have ha3 : 3021 * rho 34771 * rho 34772 = rho 34773 := by
      linear_combination r3501
    have ha4 : rho 34774 * (1 + rho 34773) = rho 34771 + rho 34772 := by
      linear_combination r3502
    have ha5 : rho 34775 * (1 - rho 34773) = rho 34770 - rho 34771 - rho 34772 := by
      linear_combination r3503
    have haddx :
        rho 34774 * (1 + 3021 * (rho 34769 * seg34AccX41 rho) * (rho 34768 * seg34AccY41 rho)) =
          rho 34769 * seg34AccX41 rho + rho 34768 * seg34AccY41 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34775 * (1 - 3021 * (rho 34769 * seg34AccX41 rho) * (rho 34768 * seg34AccY41 rho)) =
          (-1) * (rho 34769 * seg34AccX41 rho) - rho 34768 * seg34AccY41 rho +
            (seg34AccY41 rho - seg34AccX41 rho * (-1)) * (rho 34768 + rho 34769) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34775 * (1 - rho 34773) = rho 34770 - rho 34771 - rho 34772 := ha5
        _ = (-1) * rho 34771 - rho 34772 + (seg34AccY41 rho - seg34AccX41 rho * (-1)) * (rho 34768 + rho 34769) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX42 rho = seg34AccX41 rho - Bool.toZMod bit * (seg34AccX41 rho - rho 34774) := by
      have hd : rho 34776 = Bool.toZMod bit * (rho 34774 - seg34AccX41 rho) := by
        rw [← hbit, seg34LadderFlatX41_eq]
        unfold seg34LadderFlatX41
        linear_combination -r3504
      unfold seg34AccX42
      linear_combination hd
    have hsely : seg34AccY42 rho = seg34AccY41 rho - Bool.toZMod bit * (seg34AccY41 rho - rho 34775) := by
      have hd : rho 34777 = Bool.toZMod bit * (rho 34775 - seg34AccY41 rho) := by
        rw [← hbit, seg34LadderFlatY41_eq]
        unfold seg34LadderFlatY41
        linear_combination -r3505
      unfold seg34AccY42
      linear_combination hd
    have hd0 : rho 34768 * rho 34769 = rho 34778 := by linear_combination r3506
    have hd1 : rho 34768 * rho 34768 = rho 34779 := by linear_combination r3507
    have hd2 : rho 34769 * rho 34769 = rho 34780 := by linear_combination r3508
    have hd3 : rho 34781 * (rho 34769 * rho 34769 + rho 34768 * rho 34768 * (-1)) = 2 * (rho 34768 * rho 34769) := by
      rw [hd0, hd1, hd2]
      linear_combination r3509
    have hd4 : rho 34782 * (2 - (rho 34769 * rho 34769 + rho 34768 * rho 34768 * (-1))) = rho 34769 * rho 34769 - rho 34768 * rho 34768 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3510
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX41 rho : Seg34.F), (seg34AccY41 rho : Seg34.F)⟩
      ⟨(rho 34768 : Seg34.F), (rho 34769 : Seg34.F)⟩
      ⟨(rho 34774 : Seg34.F), (rho 34775 : Seg34.F)⟩
      ⟨(seg34AccX42 rho : Seg34.F), (seg34AccY42 rho : Seg34.F)⟩
      ⟨(rho 34781 : Seg34.F), (rho 34782 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung41

theorem seg34_rung42 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34034 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX42 rho : Seg34.F), (seg34AccY42 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34781 : Seg34.F), (rho 34782 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX42 rho : Seg34.F), (seg34AccY42 rho : Seg34.F)⟩
        ⟨(rho 34781 : Seg34.F), (rho 34782 : Seg34.F)⟩
        ⟨(seg34AccX43 rho : Seg34.F), (seg34AccY43 rho : Seg34.F)⟩
        ⟨(rho 34794 : Seg34.F), (rho 34795 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, p44, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3511, r3512, r3513, r3514, r3515, r3516, r3517, r3518, r3519⟩
  unfold Seg34.relationPart44 at p44
  rcases p44 with ⟨r3520, r3521, r3522, r3523, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3511 Seg34.relationLc245 Seg34.relationLc245Part0 Seg34.relationLc245Part1 Seg34.relationLc245Part2 at r3511
  unfold Seg34.relationRow3512 Seg34.relationLc246 Seg34.relationLc246Part0 Seg34.relationLc246Part1 at r3512
  unfold Seg34.relationRow3513 Seg34.relationLc247 Seg34.relationLc247Part0 Seg34.relationLc247Part1 at r3513
  unfold Seg34.relationRow3514 at r3514
  unfold Seg34.relationRow3515 at r3515
  unfold Seg34.relationRow3516 at r3516
  unfold Seg34.relationRow3517 Seg34.relationLc248 Seg34.relationLc248Part0 Seg34.relationLc248Part1 at r3517
  unfold Seg34.relationRow3518 Seg34.relationLc249 Seg34.relationLc249Part0 Seg34.relationLc249Part1 at r3518
  unfold Seg34.relationRow3519 at r3519
  unfold Seg34.relationRow3520 at r3520
  unfold Seg34.relationRow3521 at r3521
  unfold Seg34.relationRow3522 at r3522
  unfold Seg34.relationRow3523 at r3523
  have hrung42 (bit : Bool) (hbit : rho 34034 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX42 rho : Seg34.F), (seg34AccY42 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34781 : Seg34.F), (rho 34782 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX42 rho : Seg34.F), (seg34AccY42 rho : Seg34.F)⟩
        ⟨(rho 34781 : Seg34.F), (rho 34782 : Seg34.F)⟩
        ⟨(seg34AccX43 rho : Seg34.F), (seg34AccY43 rho : Seg34.F)⟩
        ⟨(rho 34794 : Seg34.F), (rho 34795 : Seg34.F)⟩ := by
    have ha0 : (rho 34781 + rho 34782) * (seg34AccX42 rho + seg34AccY42 rho) = rho 34783 := by
      rw [seg34LadderFlatX42_eq, seg34LadderFlatY42_eq]
      unfold seg34LadderFlatX42 seg34LadderFlatY42
      linear_combination r3511
    have ha1 : rho 34782 * seg34AccX42 rho = rho 34784 := by
      rw [seg34LadderFlatX42_eq]
      unfold seg34LadderFlatX42
      linear_combination r3512
    have ha2 : rho 34781 * seg34AccY42 rho = rho 34785 := by
      rw [seg34LadderFlatY42_eq]
      unfold seg34LadderFlatY42
      linear_combination r3513
    have ha3 : 3021 * rho 34784 * rho 34785 = rho 34786 := by
      linear_combination r3514
    have ha4 : rho 34787 * (1 + rho 34786) = rho 34784 + rho 34785 := by
      linear_combination r3515
    have ha5 : rho 34788 * (1 - rho 34786) = rho 34783 - rho 34784 - rho 34785 := by
      linear_combination r3516
    have haddx :
        rho 34787 * (1 + 3021 * (rho 34782 * seg34AccX42 rho) * (rho 34781 * seg34AccY42 rho)) =
          rho 34782 * seg34AccX42 rho + rho 34781 * seg34AccY42 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34788 * (1 - 3021 * (rho 34782 * seg34AccX42 rho) * (rho 34781 * seg34AccY42 rho)) =
          (-1) * (rho 34782 * seg34AccX42 rho) - rho 34781 * seg34AccY42 rho +
            (seg34AccY42 rho - seg34AccX42 rho * (-1)) * (rho 34781 + rho 34782) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34788 * (1 - rho 34786) = rho 34783 - rho 34784 - rho 34785 := ha5
        _ = (-1) * rho 34784 - rho 34785 + (seg34AccY42 rho - seg34AccX42 rho * (-1)) * (rho 34781 + rho 34782) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX43 rho = seg34AccX42 rho - Bool.toZMod bit * (seg34AccX42 rho - rho 34787) := by
      have hd : rho 34789 = Bool.toZMod bit * (rho 34787 - seg34AccX42 rho) := by
        rw [← hbit, seg34LadderFlatX42_eq]
        unfold seg34LadderFlatX42
        linear_combination -r3517
      unfold seg34AccX43
      linear_combination hd
    have hsely : seg34AccY43 rho = seg34AccY42 rho - Bool.toZMod bit * (seg34AccY42 rho - rho 34788) := by
      have hd : rho 34790 = Bool.toZMod bit * (rho 34788 - seg34AccY42 rho) := by
        rw [← hbit, seg34LadderFlatY42_eq]
        unfold seg34LadderFlatY42
        linear_combination -r3518
      unfold seg34AccY43
      linear_combination hd
    have hd0 : rho 34781 * rho 34782 = rho 34791 := by linear_combination r3519
    have hd1 : rho 34781 * rho 34781 = rho 34792 := by linear_combination r3520
    have hd2 : rho 34782 * rho 34782 = rho 34793 := by linear_combination r3521
    have hd3 : rho 34794 * (rho 34782 * rho 34782 + rho 34781 * rho 34781 * (-1)) = 2 * (rho 34781 * rho 34782) := by
      rw [hd0, hd1, hd2]
      linear_combination r3522
    have hd4 : rho 34795 * (2 - (rho 34782 * rho 34782 + rho 34781 * rho 34781 * (-1))) = rho 34782 * rho 34782 - rho 34781 * rho 34781 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3523
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX42 rho : Seg34.F), (seg34AccY42 rho : Seg34.F)⟩
      ⟨(rho 34781 : Seg34.F), (rho 34782 : Seg34.F)⟩
      ⟨(rho 34787 : Seg34.F), (rho 34788 : Seg34.F)⟩
      ⟨(seg34AccX43 rho : Seg34.F), (seg34AccY43 rho : Seg34.F)⟩
      ⟨(rho 34794 : Seg34.F), (rho 34795 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung42

theorem seg34_rung43 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34035 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX43 rho : Seg34.F), (seg34AccY43 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34794 : Seg34.F), (rho 34795 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX43 rho : Seg34.F), (seg34AccY43 rho : Seg34.F)⟩
        ⟨(rho 34794 : Seg34.F), (rho 34795 : Seg34.F)⟩
        ⟨(seg34AccX44 rho : Seg34.F), (seg34AccY44 rho : Seg34.F)⟩
        ⟨(rho 34807 : Seg34.F), (rho 34808 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p44, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, r3524, r3525, r3526, r3527, r3528, r3529, r3530, r3531, r3532, r3533, r3534, r3535, r3536, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3524 Seg34.relationLc250 Seg34.relationLc250Part0 Seg34.relationLc250Part1 Seg34.relationLc250Part2 at r3524
  unfold Seg34.relationRow3525 Seg34.relationLc251 Seg34.relationLc251Part0 Seg34.relationLc251Part1 at r3525
  unfold Seg34.relationRow3526 Seg34.relationLc252 Seg34.relationLc252Part0 Seg34.relationLc252Part1 at r3526
  unfold Seg34.relationRow3527 at r3527
  unfold Seg34.relationRow3528 at r3528
  unfold Seg34.relationRow3529 at r3529
  unfold Seg34.relationRow3530 Seg34.relationLc253 Seg34.relationLc253Part0 Seg34.relationLc253Part1 at r3530
  unfold Seg34.relationRow3531 Seg34.relationLc254 Seg34.relationLc254Part0 Seg34.relationLc254Part1 at r3531
  unfold Seg34.relationRow3532 at r3532
  unfold Seg34.relationRow3533 at r3533
  unfold Seg34.relationRow3534 at r3534
  unfold Seg34.relationRow3535 at r3535
  unfold Seg34.relationRow3536 at r3536
  have hrung43 (bit : Bool) (hbit : rho 34035 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX43 rho : Seg34.F), (seg34AccY43 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34794 : Seg34.F), (rho 34795 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX43 rho : Seg34.F), (seg34AccY43 rho : Seg34.F)⟩
        ⟨(rho 34794 : Seg34.F), (rho 34795 : Seg34.F)⟩
        ⟨(seg34AccX44 rho : Seg34.F), (seg34AccY44 rho : Seg34.F)⟩
        ⟨(rho 34807 : Seg34.F), (rho 34808 : Seg34.F)⟩ := by
    have ha0 : (rho 34794 + rho 34795) * (seg34AccX43 rho + seg34AccY43 rho) = rho 34796 := by
      rw [seg34LadderFlatX43_eq, seg34LadderFlatY43_eq]
      unfold seg34LadderFlatX43 seg34LadderFlatY43
      linear_combination r3524
    have ha1 : rho 34795 * seg34AccX43 rho = rho 34797 := by
      rw [seg34LadderFlatX43_eq]
      unfold seg34LadderFlatX43
      linear_combination r3525
    have ha2 : rho 34794 * seg34AccY43 rho = rho 34798 := by
      rw [seg34LadderFlatY43_eq]
      unfold seg34LadderFlatY43
      linear_combination r3526
    have ha3 : 3021 * rho 34797 * rho 34798 = rho 34799 := by
      linear_combination r3527
    have ha4 : rho 34800 * (1 + rho 34799) = rho 34797 + rho 34798 := by
      linear_combination r3528
    have ha5 : rho 34801 * (1 - rho 34799) = rho 34796 - rho 34797 - rho 34798 := by
      linear_combination r3529
    have haddx :
        rho 34800 * (1 + 3021 * (rho 34795 * seg34AccX43 rho) * (rho 34794 * seg34AccY43 rho)) =
          rho 34795 * seg34AccX43 rho + rho 34794 * seg34AccY43 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34801 * (1 - 3021 * (rho 34795 * seg34AccX43 rho) * (rho 34794 * seg34AccY43 rho)) =
          (-1) * (rho 34795 * seg34AccX43 rho) - rho 34794 * seg34AccY43 rho +
            (seg34AccY43 rho - seg34AccX43 rho * (-1)) * (rho 34794 + rho 34795) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34801 * (1 - rho 34799) = rho 34796 - rho 34797 - rho 34798 := ha5
        _ = (-1) * rho 34797 - rho 34798 + (seg34AccY43 rho - seg34AccX43 rho * (-1)) * (rho 34794 + rho 34795) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX44 rho = seg34AccX43 rho - Bool.toZMod bit * (seg34AccX43 rho - rho 34800) := by
      have hd : rho 34802 = Bool.toZMod bit * (rho 34800 - seg34AccX43 rho) := by
        rw [← hbit, seg34LadderFlatX43_eq]
        unfold seg34LadderFlatX43
        linear_combination -r3530
      unfold seg34AccX44
      linear_combination hd
    have hsely : seg34AccY44 rho = seg34AccY43 rho - Bool.toZMod bit * (seg34AccY43 rho - rho 34801) := by
      have hd : rho 34803 = Bool.toZMod bit * (rho 34801 - seg34AccY43 rho) := by
        rw [← hbit, seg34LadderFlatY43_eq]
        unfold seg34LadderFlatY43
        linear_combination -r3531
      unfold seg34AccY44
      linear_combination hd
    have hd0 : rho 34794 * rho 34795 = rho 34804 := by linear_combination r3532
    have hd1 : rho 34794 * rho 34794 = rho 34805 := by linear_combination r3533
    have hd2 : rho 34795 * rho 34795 = rho 34806 := by linear_combination r3534
    have hd3 : rho 34807 * (rho 34795 * rho 34795 + rho 34794 * rho 34794 * (-1)) = 2 * (rho 34794 * rho 34795) := by
      rw [hd0, hd1, hd2]
      linear_combination r3535
    have hd4 : rho 34808 * (2 - (rho 34795 * rho 34795 + rho 34794 * rho 34794 * (-1))) = rho 34795 * rho 34795 - rho 34794 * rho 34794 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3536
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX43 rho : Seg34.F), (seg34AccY43 rho : Seg34.F)⟩
      ⟨(rho 34794 : Seg34.F), (rho 34795 : Seg34.F)⟩
      ⟨(rho 34800 : Seg34.F), (rho 34801 : Seg34.F)⟩
      ⟨(seg34AccX44 rho : Seg34.F), (seg34AccY44 rho : Seg34.F)⟩
      ⟨(rho 34807 : Seg34.F), (rho 34808 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung43

theorem seg34_rung44 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34036 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX44 rho : Seg34.F), (seg34AccY44 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34807 : Seg34.F), (rho 34808 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX44 rho : Seg34.F), (seg34AccY44 rho : Seg34.F)⟩
        ⟨(rho 34807 : Seg34.F), (rho 34808 : Seg34.F)⟩
        ⟨(seg34AccX45 rho : Seg34.F), (seg34AccY45 rho : Seg34.F)⟩
        ⟨(rho 34820 : Seg34.F), (rho 34821 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p44, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3537, r3538, r3539, r3540, r3541, r3542, r3543, r3544, r3545, r3546, r3547, r3548, r3549, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3537 Seg34.relationLc255 Seg34.relationLc255Part0 Seg34.relationLc255Part1 Seg34.relationLc255Part2 at r3537
  unfold Seg34.relationRow3538 Seg34.relationLc256 Seg34.relationLc256Part0 Seg34.relationLc256Part1 at r3538
  unfold Seg34.relationRow3539 Seg34.relationLc257 Seg34.relationLc257Part0 Seg34.relationLc257Part1 at r3539
  unfold Seg34.relationRow3540 at r3540
  unfold Seg34.relationRow3541 at r3541
  unfold Seg34.relationRow3542 at r3542
  unfold Seg34.relationRow3543 Seg34.relationLc258 Seg34.relationLc258Part0 Seg34.relationLc258Part1 at r3543
  unfold Seg34.relationRow3544 Seg34.relationLc259 Seg34.relationLc259Part0 Seg34.relationLc259Part1 at r3544
  unfold Seg34.relationRow3545 at r3545
  unfold Seg34.relationRow3546 at r3546
  unfold Seg34.relationRow3547 at r3547
  unfold Seg34.relationRow3548 at r3548
  unfold Seg34.relationRow3549 at r3549
  have hrung44 (bit : Bool) (hbit : rho 34036 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX44 rho : Seg34.F), (seg34AccY44 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34807 : Seg34.F), (rho 34808 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX44 rho : Seg34.F), (seg34AccY44 rho : Seg34.F)⟩
        ⟨(rho 34807 : Seg34.F), (rho 34808 : Seg34.F)⟩
        ⟨(seg34AccX45 rho : Seg34.F), (seg34AccY45 rho : Seg34.F)⟩
        ⟨(rho 34820 : Seg34.F), (rho 34821 : Seg34.F)⟩ := by
    have ha0 : (rho 34807 + rho 34808) * (seg34AccX44 rho + seg34AccY44 rho) = rho 34809 := by
      rw [seg34LadderFlatX44_eq, seg34LadderFlatY44_eq]
      unfold seg34LadderFlatX44 seg34LadderFlatY44
      linear_combination r3537
    have ha1 : rho 34808 * seg34AccX44 rho = rho 34810 := by
      rw [seg34LadderFlatX44_eq]
      unfold seg34LadderFlatX44
      linear_combination r3538
    have ha2 : rho 34807 * seg34AccY44 rho = rho 34811 := by
      rw [seg34LadderFlatY44_eq]
      unfold seg34LadderFlatY44
      linear_combination r3539
    have ha3 : 3021 * rho 34810 * rho 34811 = rho 34812 := by
      linear_combination r3540
    have ha4 : rho 34813 * (1 + rho 34812) = rho 34810 + rho 34811 := by
      linear_combination r3541
    have ha5 : rho 34814 * (1 - rho 34812) = rho 34809 - rho 34810 - rho 34811 := by
      linear_combination r3542
    have haddx :
        rho 34813 * (1 + 3021 * (rho 34808 * seg34AccX44 rho) * (rho 34807 * seg34AccY44 rho)) =
          rho 34808 * seg34AccX44 rho + rho 34807 * seg34AccY44 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34814 * (1 - 3021 * (rho 34808 * seg34AccX44 rho) * (rho 34807 * seg34AccY44 rho)) =
          (-1) * (rho 34808 * seg34AccX44 rho) - rho 34807 * seg34AccY44 rho +
            (seg34AccY44 rho - seg34AccX44 rho * (-1)) * (rho 34807 + rho 34808) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34814 * (1 - rho 34812) = rho 34809 - rho 34810 - rho 34811 := ha5
        _ = (-1) * rho 34810 - rho 34811 + (seg34AccY44 rho - seg34AccX44 rho * (-1)) * (rho 34807 + rho 34808) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX45 rho = seg34AccX44 rho - Bool.toZMod bit * (seg34AccX44 rho - rho 34813) := by
      have hd : rho 34815 = Bool.toZMod bit * (rho 34813 - seg34AccX44 rho) := by
        rw [← hbit, seg34LadderFlatX44_eq]
        unfold seg34LadderFlatX44
        linear_combination -r3543
      unfold seg34AccX45
      linear_combination hd
    have hsely : seg34AccY45 rho = seg34AccY44 rho - Bool.toZMod bit * (seg34AccY44 rho - rho 34814) := by
      have hd : rho 34816 = Bool.toZMod bit * (rho 34814 - seg34AccY44 rho) := by
        rw [← hbit, seg34LadderFlatY44_eq]
        unfold seg34LadderFlatY44
        linear_combination -r3544
      unfold seg34AccY45
      linear_combination hd
    have hd0 : rho 34807 * rho 34808 = rho 34817 := by linear_combination r3545
    have hd1 : rho 34807 * rho 34807 = rho 34818 := by linear_combination r3546
    have hd2 : rho 34808 * rho 34808 = rho 34819 := by linear_combination r3547
    have hd3 : rho 34820 * (rho 34808 * rho 34808 + rho 34807 * rho 34807 * (-1)) = 2 * (rho 34807 * rho 34808) := by
      rw [hd0, hd1, hd2]
      linear_combination r3548
    have hd4 : rho 34821 * (2 - (rho 34808 * rho 34808 + rho 34807 * rho 34807 * (-1))) = rho 34808 * rho 34808 - rho 34807 * rho 34807 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3549
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX44 rho : Seg34.F), (seg34AccY44 rho : Seg34.F)⟩
      ⟨(rho 34807 : Seg34.F), (rho 34808 : Seg34.F)⟩
      ⟨(rho 34813 : Seg34.F), (rho 34814 : Seg34.F)⟩
      ⟨(seg34AccX45 rho : Seg34.F), (seg34AccY45 rho : Seg34.F)⟩
      ⟨(rho 34820 : Seg34.F), (rho 34821 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung44

theorem seg34_rung45 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34037 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX45 rho : Seg34.F), (seg34AccY45 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34820 : Seg34.F), (rho 34821 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX45 rho : Seg34.F), (seg34AccY45 rho : Seg34.F)⟩
        ⟨(rho 34820 : Seg34.F), (rho 34821 : Seg34.F)⟩
        ⟨(seg34AccX46 rho : Seg34.F), (seg34AccY46 rho : Seg34.F)⟩
        ⟨(rho 34833 : Seg34.F), (rho 34834 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p44, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3550, r3551, r3552, r3553, r3554, r3555, r3556, r3557, r3558, r3559, r3560, r3561, r3562, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3550 Seg34.relationLc260 Seg34.relationLc260Part0 Seg34.relationLc260Part1 Seg34.relationLc260Part2 at r3550
  unfold Seg34.relationRow3551 Seg34.relationLc261 Seg34.relationLc261Part0 Seg34.relationLc261Part1 at r3551
  unfold Seg34.relationRow3552 Seg34.relationLc262 Seg34.relationLc262Part0 Seg34.relationLc262Part1 at r3552
  unfold Seg34.relationRow3553 at r3553
  unfold Seg34.relationRow3554 at r3554
  unfold Seg34.relationRow3555 at r3555
  unfold Seg34.relationRow3556 Seg34.relationLc263 Seg34.relationLc263Part0 Seg34.relationLc263Part1 at r3556
  unfold Seg34.relationRow3557 Seg34.relationLc264 Seg34.relationLc264Part0 Seg34.relationLc264Part1 at r3557
  unfold Seg34.relationRow3558 at r3558
  unfold Seg34.relationRow3559 at r3559
  unfold Seg34.relationRow3560 at r3560
  unfold Seg34.relationRow3561 at r3561
  unfold Seg34.relationRow3562 at r3562
  have hrung45 (bit : Bool) (hbit : rho 34037 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX45 rho : Seg34.F), (seg34AccY45 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34820 : Seg34.F), (rho 34821 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX45 rho : Seg34.F), (seg34AccY45 rho : Seg34.F)⟩
        ⟨(rho 34820 : Seg34.F), (rho 34821 : Seg34.F)⟩
        ⟨(seg34AccX46 rho : Seg34.F), (seg34AccY46 rho : Seg34.F)⟩
        ⟨(rho 34833 : Seg34.F), (rho 34834 : Seg34.F)⟩ := by
    have ha0 : (rho 34820 + rho 34821) * (seg34AccX45 rho + seg34AccY45 rho) = rho 34822 := by
      rw [seg34LadderFlatX45_eq, seg34LadderFlatY45_eq]
      unfold seg34LadderFlatX45 seg34LadderFlatY45
      linear_combination r3550
    have ha1 : rho 34821 * seg34AccX45 rho = rho 34823 := by
      rw [seg34LadderFlatX45_eq]
      unfold seg34LadderFlatX45
      linear_combination r3551
    have ha2 : rho 34820 * seg34AccY45 rho = rho 34824 := by
      rw [seg34LadderFlatY45_eq]
      unfold seg34LadderFlatY45
      linear_combination r3552
    have ha3 : 3021 * rho 34823 * rho 34824 = rho 34825 := by
      linear_combination r3553
    have ha4 : rho 34826 * (1 + rho 34825) = rho 34823 + rho 34824 := by
      linear_combination r3554
    have ha5 : rho 34827 * (1 - rho 34825) = rho 34822 - rho 34823 - rho 34824 := by
      linear_combination r3555
    have haddx :
        rho 34826 * (1 + 3021 * (rho 34821 * seg34AccX45 rho) * (rho 34820 * seg34AccY45 rho)) =
          rho 34821 * seg34AccX45 rho + rho 34820 * seg34AccY45 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34827 * (1 - 3021 * (rho 34821 * seg34AccX45 rho) * (rho 34820 * seg34AccY45 rho)) =
          (-1) * (rho 34821 * seg34AccX45 rho) - rho 34820 * seg34AccY45 rho +
            (seg34AccY45 rho - seg34AccX45 rho * (-1)) * (rho 34820 + rho 34821) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34827 * (1 - rho 34825) = rho 34822 - rho 34823 - rho 34824 := ha5
        _ = (-1) * rho 34823 - rho 34824 + (seg34AccY45 rho - seg34AccX45 rho * (-1)) * (rho 34820 + rho 34821) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX46 rho = seg34AccX45 rho - Bool.toZMod bit * (seg34AccX45 rho - rho 34826) := by
      have hd : rho 34828 = Bool.toZMod bit * (rho 34826 - seg34AccX45 rho) := by
        rw [← hbit, seg34LadderFlatX45_eq]
        unfold seg34LadderFlatX45
        linear_combination -r3556
      unfold seg34AccX46
      linear_combination hd
    have hsely : seg34AccY46 rho = seg34AccY45 rho - Bool.toZMod bit * (seg34AccY45 rho - rho 34827) := by
      have hd : rho 34829 = Bool.toZMod bit * (rho 34827 - seg34AccY45 rho) := by
        rw [← hbit, seg34LadderFlatY45_eq]
        unfold seg34LadderFlatY45
        linear_combination -r3557
      unfold seg34AccY46
      linear_combination hd
    have hd0 : rho 34820 * rho 34821 = rho 34830 := by linear_combination r3558
    have hd1 : rho 34820 * rho 34820 = rho 34831 := by linear_combination r3559
    have hd2 : rho 34821 * rho 34821 = rho 34832 := by linear_combination r3560
    have hd3 : rho 34833 * (rho 34821 * rho 34821 + rho 34820 * rho 34820 * (-1)) = 2 * (rho 34820 * rho 34821) := by
      rw [hd0, hd1, hd2]
      linear_combination r3561
    have hd4 : rho 34834 * (2 - (rho 34821 * rho 34821 + rho 34820 * rho 34820 * (-1))) = rho 34821 * rho 34821 - rho 34820 * rho 34820 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3562
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX45 rho : Seg34.F), (seg34AccY45 rho : Seg34.F)⟩
      ⟨(rho 34820 : Seg34.F), (rho 34821 : Seg34.F)⟩
      ⟨(rho 34826 : Seg34.F), (rho 34827 : Seg34.F)⟩
      ⟨(seg34AccX46 rho : Seg34.F), (seg34AccY46 rho : Seg34.F)⟩
      ⟨(rho 34833 : Seg34.F), (rho 34834 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung45

theorem seg34_rung46 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34038 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX46 rho : Seg34.F), (seg34AccY46 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34833 : Seg34.F), (rho 34834 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX46 rho : Seg34.F), (seg34AccY46 rho : Seg34.F)⟩
        ⟨(rho 34833 : Seg34.F), (rho 34834 : Seg34.F)⟩
        ⟨(seg34AccX47 rho : Seg34.F), (seg34AccY47 rho : Seg34.F)⟩
        ⟨(rho 34846 : Seg34.F), (rho 34847 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p44, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3563, r3564, r3565, r3566, r3567, r3568, r3569, r3570, r3571, r3572, r3573, r3574, r3575, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3563 Seg34.relationLc265 Seg34.relationLc265Part0 Seg34.relationLc265Part1 Seg34.relationLc265Part2 at r3563
  unfold Seg34.relationRow3564 Seg34.relationLc266 Seg34.relationLc266Part0 Seg34.relationLc266Part1 at r3564
  unfold Seg34.relationRow3565 Seg34.relationLc267 Seg34.relationLc267Part0 Seg34.relationLc267Part1 at r3565
  unfold Seg34.relationRow3566 at r3566
  unfold Seg34.relationRow3567 at r3567
  unfold Seg34.relationRow3568 at r3568
  unfold Seg34.relationRow3569 Seg34.relationLc268 Seg34.relationLc268Part0 Seg34.relationLc268Part1 at r3569
  unfold Seg34.relationRow3570 Seg34.relationLc269 Seg34.relationLc269Part0 Seg34.relationLc269Part1 at r3570
  unfold Seg34.relationRow3571 at r3571
  unfold Seg34.relationRow3572 at r3572
  unfold Seg34.relationRow3573 at r3573
  unfold Seg34.relationRow3574 at r3574
  unfold Seg34.relationRow3575 at r3575
  have hrung46 (bit : Bool) (hbit : rho 34038 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX46 rho : Seg34.F), (seg34AccY46 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34833 : Seg34.F), (rho 34834 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX46 rho : Seg34.F), (seg34AccY46 rho : Seg34.F)⟩
        ⟨(rho 34833 : Seg34.F), (rho 34834 : Seg34.F)⟩
        ⟨(seg34AccX47 rho : Seg34.F), (seg34AccY47 rho : Seg34.F)⟩
        ⟨(rho 34846 : Seg34.F), (rho 34847 : Seg34.F)⟩ := by
    have ha0 : (rho 34833 + rho 34834) * (seg34AccX46 rho + seg34AccY46 rho) = rho 34835 := by
      rw [seg34LadderFlatX46_eq, seg34LadderFlatY46_eq]
      unfold seg34LadderFlatX46 seg34LadderFlatY46
      linear_combination r3563
    have ha1 : rho 34834 * seg34AccX46 rho = rho 34836 := by
      rw [seg34LadderFlatX46_eq]
      unfold seg34LadderFlatX46
      linear_combination r3564
    have ha2 : rho 34833 * seg34AccY46 rho = rho 34837 := by
      rw [seg34LadderFlatY46_eq]
      unfold seg34LadderFlatY46
      linear_combination r3565
    have ha3 : 3021 * rho 34836 * rho 34837 = rho 34838 := by
      linear_combination r3566
    have ha4 : rho 34839 * (1 + rho 34838) = rho 34836 + rho 34837 := by
      linear_combination r3567
    have ha5 : rho 34840 * (1 - rho 34838) = rho 34835 - rho 34836 - rho 34837 := by
      linear_combination r3568
    have haddx :
        rho 34839 * (1 + 3021 * (rho 34834 * seg34AccX46 rho) * (rho 34833 * seg34AccY46 rho)) =
          rho 34834 * seg34AccX46 rho + rho 34833 * seg34AccY46 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34840 * (1 - 3021 * (rho 34834 * seg34AccX46 rho) * (rho 34833 * seg34AccY46 rho)) =
          (-1) * (rho 34834 * seg34AccX46 rho) - rho 34833 * seg34AccY46 rho +
            (seg34AccY46 rho - seg34AccX46 rho * (-1)) * (rho 34833 + rho 34834) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34840 * (1 - rho 34838) = rho 34835 - rho 34836 - rho 34837 := ha5
        _ = (-1) * rho 34836 - rho 34837 + (seg34AccY46 rho - seg34AccX46 rho * (-1)) * (rho 34833 + rho 34834) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX47 rho = seg34AccX46 rho - Bool.toZMod bit * (seg34AccX46 rho - rho 34839) := by
      have hd : rho 34841 = Bool.toZMod bit * (rho 34839 - seg34AccX46 rho) := by
        rw [← hbit, seg34LadderFlatX46_eq]
        unfold seg34LadderFlatX46
        linear_combination -r3569
      unfold seg34AccX47
      linear_combination hd
    have hsely : seg34AccY47 rho = seg34AccY46 rho - Bool.toZMod bit * (seg34AccY46 rho - rho 34840) := by
      have hd : rho 34842 = Bool.toZMod bit * (rho 34840 - seg34AccY46 rho) := by
        rw [← hbit, seg34LadderFlatY46_eq]
        unfold seg34LadderFlatY46
        linear_combination -r3570
      unfold seg34AccY47
      linear_combination hd
    have hd0 : rho 34833 * rho 34834 = rho 34843 := by linear_combination r3571
    have hd1 : rho 34833 * rho 34833 = rho 34844 := by linear_combination r3572
    have hd2 : rho 34834 * rho 34834 = rho 34845 := by linear_combination r3573
    have hd3 : rho 34846 * (rho 34834 * rho 34834 + rho 34833 * rho 34833 * (-1)) = 2 * (rho 34833 * rho 34834) := by
      rw [hd0, hd1, hd2]
      linear_combination r3574
    have hd4 : rho 34847 * (2 - (rho 34834 * rho 34834 + rho 34833 * rho 34833 * (-1))) = rho 34834 * rho 34834 - rho 34833 * rho 34833 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3575
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX46 rho : Seg34.F), (seg34AccY46 rho : Seg34.F)⟩
      ⟨(rho 34833 : Seg34.F), (rho 34834 : Seg34.F)⟩
      ⟨(rho 34839 : Seg34.F), (rho 34840 : Seg34.F)⟩
      ⟨(seg34AccX47 rho : Seg34.F), (seg34AccY47 rho : Seg34.F)⟩
      ⟨(rho 34846 : Seg34.F), (rho 34847 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung46

theorem seg34_rung47 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34039 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX47 rho : Seg34.F), (seg34AccY47 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34846 : Seg34.F), (rho 34847 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX47 rho : Seg34.F), (seg34AccY47 rho : Seg34.F)⟩
        ⟨(rho 34846 : Seg34.F), (rho 34847 : Seg34.F)⟩
        ⟨(seg34AccX48 rho : Seg34.F), (seg34AccY48 rho : Seg34.F)⟩
        ⟨(rho 34859 : Seg34.F), (rho 34860 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p44, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3576, r3577, r3578, r3579, r3580, r3581, r3582, r3583, r3584, r3585, r3586, r3587, r3588, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3576 Seg34.relationLc270 Seg34.relationLc270Part0 Seg34.relationLc270Part1 Seg34.relationLc270Part2 at r3576
  unfold Seg34.relationRow3577 Seg34.relationLc271 Seg34.relationLc271Part0 Seg34.relationLc271Part1 at r3577
  unfold Seg34.relationRow3578 Seg34.relationLc272 Seg34.relationLc272Part0 Seg34.relationLc272Part1 at r3578
  unfold Seg34.relationRow3579 at r3579
  unfold Seg34.relationRow3580 at r3580
  unfold Seg34.relationRow3581 at r3581
  unfold Seg34.relationRow3582 Seg34.relationLc273 Seg34.relationLc273Part0 Seg34.relationLc273Part1 at r3582
  unfold Seg34.relationRow3583 Seg34.relationLc274 Seg34.relationLc274Part0 Seg34.relationLc274Part1 at r3583
  unfold Seg34.relationRow3584 at r3584
  unfold Seg34.relationRow3585 at r3585
  unfold Seg34.relationRow3586 at r3586
  unfold Seg34.relationRow3587 at r3587
  unfold Seg34.relationRow3588 at r3588
  have hrung47 (bit : Bool) (hbit : rho 34039 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX47 rho : Seg34.F), (seg34AccY47 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34846 : Seg34.F), (rho 34847 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX47 rho : Seg34.F), (seg34AccY47 rho : Seg34.F)⟩
        ⟨(rho 34846 : Seg34.F), (rho 34847 : Seg34.F)⟩
        ⟨(seg34AccX48 rho : Seg34.F), (seg34AccY48 rho : Seg34.F)⟩
        ⟨(rho 34859 : Seg34.F), (rho 34860 : Seg34.F)⟩ := by
    have ha0 : (rho 34846 + rho 34847) * (seg34AccX47 rho + seg34AccY47 rho) = rho 34848 := by
      rw [seg34LadderFlatX47_eq, seg34LadderFlatY47_eq]
      unfold seg34LadderFlatX47 seg34LadderFlatY47
      linear_combination r3576
    have ha1 : rho 34847 * seg34AccX47 rho = rho 34849 := by
      rw [seg34LadderFlatX47_eq]
      unfold seg34LadderFlatX47
      linear_combination r3577
    have ha2 : rho 34846 * seg34AccY47 rho = rho 34850 := by
      rw [seg34LadderFlatY47_eq]
      unfold seg34LadderFlatY47
      linear_combination r3578
    have ha3 : 3021 * rho 34849 * rho 34850 = rho 34851 := by
      linear_combination r3579
    have ha4 : rho 34852 * (1 + rho 34851) = rho 34849 + rho 34850 := by
      linear_combination r3580
    have ha5 : rho 34853 * (1 - rho 34851) = rho 34848 - rho 34849 - rho 34850 := by
      linear_combination r3581
    have haddx :
        rho 34852 * (1 + 3021 * (rho 34847 * seg34AccX47 rho) * (rho 34846 * seg34AccY47 rho)) =
          rho 34847 * seg34AccX47 rho + rho 34846 * seg34AccY47 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34853 * (1 - 3021 * (rho 34847 * seg34AccX47 rho) * (rho 34846 * seg34AccY47 rho)) =
          (-1) * (rho 34847 * seg34AccX47 rho) - rho 34846 * seg34AccY47 rho +
            (seg34AccY47 rho - seg34AccX47 rho * (-1)) * (rho 34846 + rho 34847) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34853 * (1 - rho 34851) = rho 34848 - rho 34849 - rho 34850 := ha5
        _ = (-1) * rho 34849 - rho 34850 + (seg34AccY47 rho - seg34AccX47 rho * (-1)) * (rho 34846 + rho 34847) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX48 rho = seg34AccX47 rho - Bool.toZMod bit * (seg34AccX47 rho - rho 34852) := by
      have hd : rho 34854 = Bool.toZMod bit * (rho 34852 - seg34AccX47 rho) := by
        rw [← hbit, seg34LadderFlatX47_eq]
        unfold seg34LadderFlatX47
        linear_combination -r3582
      unfold seg34AccX48
      linear_combination hd
    have hsely : seg34AccY48 rho = seg34AccY47 rho - Bool.toZMod bit * (seg34AccY47 rho - rho 34853) := by
      have hd : rho 34855 = Bool.toZMod bit * (rho 34853 - seg34AccY47 rho) := by
        rw [← hbit, seg34LadderFlatY47_eq]
        unfold seg34LadderFlatY47
        linear_combination -r3583
      unfold seg34AccY48
      linear_combination hd
    have hd0 : rho 34846 * rho 34847 = rho 34856 := by linear_combination r3584
    have hd1 : rho 34846 * rho 34846 = rho 34857 := by linear_combination r3585
    have hd2 : rho 34847 * rho 34847 = rho 34858 := by linear_combination r3586
    have hd3 : rho 34859 * (rho 34847 * rho 34847 + rho 34846 * rho 34846 * (-1)) = 2 * (rho 34846 * rho 34847) := by
      rw [hd0, hd1, hd2]
      linear_combination r3587
    have hd4 : rho 34860 * (2 - (rho 34847 * rho 34847 + rho 34846 * rho 34846 * (-1))) = rho 34847 * rho 34847 - rho 34846 * rho 34846 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3588
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX47 rho : Seg34.F), (seg34AccY47 rho : Seg34.F)⟩
      ⟨(rho 34846 : Seg34.F), (rho 34847 : Seg34.F)⟩
      ⟨(rho 34852 : Seg34.F), (rho 34853 : Seg34.F)⟩
      ⟨(seg34AccX48 rho : Seg34.F), (seg34AccY48 rho : Seg34.F)⟩
      ⟨(rho 34859 : Seg34.F), (rho 34860 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung47

theorem seg34_rung48 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34040 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX48 rho : Seg34.F), (seg34AccY48 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34859 : Seg34.F), (rho 34860 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX48 rho : Seg34.F), (seg34AccY48 rho : Seg34.F)⟩
        ⟨(rho 34859 : Seg34.F), (rho 34860 : Seg34.F)⟩
        ⟨(seg34AccX49 rho : Seg34.F), (seg34AccY49 rho : Seg34.F)⟩
        ⟨(rho 34872 : Seg34.F), (rho 34873 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p44, p45, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3589, r3590, r3591, r3592, r3593, r3594, r3595, r3596, r3597, r3598, r3599⟩
  unfold Seg34.relationPart45 at p45
  rcases p45 with ⟨r3600, r3601, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3589 Seg34.relationLc275 Seg34.relationLc275Part0 Seg34.relationLc275Part1 Seg34.relationLc275Part2 Seg34.relationLc275Part3 at r3589
  unfold Seg34.relationRow3590 Seg34.relationLc276 Seg34.relationLc276Part0 Seg34.relationLc276Part1 at r3590
  unfold Seg34.relationRow3591 Seg34.relationLc277 Seg34.relationLc277Part0 Seg34.relationLc277Part1 at r3591
  unfold Seg34.relationRow3592 at r3592
  unfold Seg34.relationRow3593 at r3593
  unfold Seg34.relationRow3594 at r3594
  unfold Seg34.relationRow3595 Seg34.relationLc278 Seg34.relationLc278Part0 Seg34.relationLc278Part1 at r3595
  unfold Seg34.relationRow3596 Seg34.relationLc279 Seg34.relationLc279Part0 Seg34.relationLc279Part1 at r3596
  unfold Seg34.relationRow3597 at r3597
  unfold Seg34.relationRow3598 at r3598
  unfold Seg34.relationRow3599 at r3599
  unfold Seg34.relationRow3600 at r3600
  unfold Seg34.relationRow3601 at r3601
  have hrung48 (bit : Bool) (hbit : rho 34040 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX48 rho : Seg34.F), (seg34AccY48 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34859 : Seg34.F), (rho 34860 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX48 rho : Seg34.F), (seg34AccY48 rho : Seg34.F)⟩
        ⟨(rho 34859 : Seg34.F), (rho 34860 : Seg34.F)⟩
        ⟨(seg34AccX49 rho : Seg34.F), (seg34AccY49 rho : Seg34.F)⟩
        ⟨(rho 34872 : Seg34.F), (rho 34873 : Seg34.F)⟩ := by
    have ha0 : (rho 34859 + rho 34860) * (seg34AccX48 rho + seg34AccY48 rho) = rho 34861 := by
      rw [seg34LadderFlatX48_eq, seg34LadderFlatY48_eq]
      unfold seg34LadderFlatX48 seg34LadderFlatY48
      linear_combination r3589
    have ha1 : rho 34860 * seg34AccX48 rho = rho 34862 := by
      rw [seg34LadderFlatX48_eq]
      unfold seg34LadderFlatX48
      linear_combination r3590
    have ha2 : rho 34859 * seg34AccY48 rho = rho 34863 := by
      rw [seg34LadderFlatY48_eq]
      unfold seg34LadderFlatY48
      linear_combination r3591
    have ha3 : 3021 * rho 34862 * rho 34863 = rho 34864 := by
      linear_combination r3592
    have ha4 : rho 34865 * (1 + rho 34864) = rho 34862 + rho 34863 := by
      linear_combination r3593
    have ha5 : rho 34866 * (1 - rho 34864) = rho 34861 - rho 34862 - rho 34863 := by
      linear_combination r3594
    have haddx :
        rho 34865 * (1 + 3021 * (rho 34860 * seg34AccX48 rho) * (rho 34859 * seg34AccY48 rho)) =
          rho 34860 * seg34AccX48 rho + rho 34859 * seg34AccY48 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34866 * (1 - 3021 * (rho 34860 * seg34AccX48 rho) * (rho 34859 * seg34AccY48 rho)) =
          (-1) * (rho 34860 * seg34AccX48 rho) - rho 34859 * seg34AccY48 rho +
            (seg34AccY48 rho - seg34AccX48 rho * (-1)) * (rho 34859 + rho 34860) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34866 * (1 - rho 34864) = rho 34861 - rho 34862 - rho 34863 := ha5
        _ = (-1) * rho 34862 - rho 34863 + (seg34AccY48 rho - seg34AccX48 rho * (-1)) * (rho 34859 + rho 34860) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX49 rho = seg34AccX48 rho - Bool.toZMod bit * (seg34AccX48 rho - rho 34865) := by
      have hd : rho 34867 = Bool.toZMod bit * (rho 34865 - seg34AccX48 rho) := by
        rw [← hbit, seg34LadderFlatX48_eq]
        unfold seg34LadderFlatX48
        linear_combination -r3595
      unfold seg34AccX49
      linear_combination hd
    have hsely : seg34AccY49 rho = seg34AccY48 rho - Bool.toZMod bit * (seg34AccY48 rho - rho 34866) := by
      have hd : rho 34868 = Bool.toZMod bit * (rho 34866 - seg34AccY48 rho) := by
        rw [← hbit, seg34LadderFlatY48_eq]
        unfold seg34LadderFlatY48
        linear_combination -r3596
      unfold seg34AccY49
      linear_combination hd
    have hd0 : rho 34859 * rho 34860 = rho 34869 := by linear_combination r3597
    have hd1 : rho 34859 * rho 34859 = rho 34870 := by linear_combination r3598
    have hd2 : rho 34860 * rho 34860 = rho 34871 := by linear_combination r3599
    have hd3 : rho 34872 * (rho 34860 * rho 34860 + rho 34859 * rho 34859 * (-1)) = 2 * (rho 34859 * rho 34860) := by
      rw [hd0, hd1, hd2]
      linear_combination r3600
    have hd4 : rho 34873 * (2 - (rho 34860 * rho 34860 + rho 34859 * rho 34859 * (-1))) = rho 34860 * rho 34860 - rho 34859 * rho 34859 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3601
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX48 rho : Seg34.F), (seg34AccY48 rho : Seg34.F)⟩
      ⟨(rho 34859 : Seg34.F), (rho 34860 : Seg34.F)⟩
      ⟨(rho 34865 : Seg34.F), (rho 34866 : Seg34.F)⟩
      ⟨(seg34AccX49 rho : Seg34.F), (seg34AccY49 rho : Seg34.F)⟩
      ⟨(rho 34872 : Seg34.F), (rho 34873 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung48

theorem seg34_rung49 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34041 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX49 rho : Seg34.F), (seg34AccY49 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34872 : Seg34.F), (rho 34873 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX49 rho : Seg34.F), (seg34AccY49 rho : Seg34.F)⟩
        ⟨(rho 34872 : Seg34.F), (rho 34873 : Seg34.F)⟩
        ⟨(seg34AccX50 rho : Seg34.F), (seg34AccY50 rho : Seg34.F)⟩
        ⟨(rho 34885 : Seg34.F), (rho 34886 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p45, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart45 at p45
  rcases p45 with ⟨_, _, r3602, r3603, r3604, r3605, r3606, r3607, r3608, r3609, r3610, r3611, r3612, r3613, r3614, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3602 Seg34.relationLc280 Seg34.relationLc280Part0 Seg34.relationLc280Part1 Seg34.relationLc280Part2 Seg34.relationLc280Part3 at r3602
  unfold Seg34.relationRow3603 Seg34.relationLc281 Seg34.relationLc281Part0 Seg34.relationLc281Part1 at r3603
  unfold Seg34.relationRow3604 Seg34.relationLc282 Seg34.relationLc282Part0 Seg34.relationLc282Part1 at r3604
  unfold Seg34.relationRow3605 at r3605
  unfold Seg34.relationRow3606 at r3606
  unfold Seg34.relationRow3607 at r3607
  unfold Seg34.relationRow3608 Seg34.relationLc283 Seg34.relationLc283Part0 Seg34.relationLc283Part1 at r3608
  unfold Seg34.relationRow3609 Seg34.relationLc284 Seg34.relationLc284Part0 Seg34.relationLc284Part1 at r3609
  unfold Seg34.relationRow3610 at r3610
  unfold Seg34.relationRow3611 at r3611
  unfold Seg34.relationRow3612 at r3612
  unfold Seg34.relationRow3613 at r3613
  unfold Seg34.relationRow3614 at r3614
  have hrung49 (bit : Bool) (hbit : rho 34041 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX49 rho : Seg34.F), (seg34AccY49 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34872 : Seg34.F), (rho 34873 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX49 rho : Seg34.F), (seg34AccY49 rho : Seg34.F)⟩
        ⟨(rho 34872 : Seg34.F), (rho 34873 : Seg34.F)⟩
        ⟨(seg34AccX50 rho : Seg34.F), (seg34AccY50 rho : Seg34.F)⟩
        ⟨(rho 34885 : Seg34.F), (rho 34886 : Seg34.F)⟩ := by
    have ha0 : (rho 34872 + rho 34873) * (seg34AccX49 rho + seg34AccY49 rho) = rho 34874 := by
      rw [seg34LadderFlatX49_eq, seg34LadderFlatY49_eq]
      unfold seg34LadderFlatX49 seg34LadderFlatY49
      linear_combination r3602
    have ha1 : rho 34873 * seg34AccX49 rho = rho 34875 := by
      rw [seg34LadderFlatX49_eq]
      unfold seg34LadderFlatX49
      linear_combination r3603
    have ha2 : rho 34872 * seg34AccY49 rho = rho 34876 := by
      rw [seg34LadderFlatY49_eq]
      unfold seg34LadderFlatY49
      linear_combination r3604
    have ha3 : 3021 * rho 34875 * rho 34876 = rho 34877 := by
      linear_combination r3605
    have ha4 : rho 34878 * (1 + rho 34877) = rho 34875 + rho 34876 := by
      linear_combination r3606
    have ha5 : rho 34879 * (1 - rho 34877) = rho 34874 - rho 34875 - rho 34876 := by
      linear_combination r3607
    have haddx :
        rho 34878 * (1 + 3021 * (rho 34873 * seg34AccX49 rho) * (rho 34872 * seg34AccY49 rho)) =
          rho 34873 * seg34AccX49 rho + rho 34872 * seg34AccY49 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34879 * (1 - 3021 * (rho 34873 * seg34AccX49 rho) * (rho 34872 * seg34AccY49 rho)) =
          (-1) * (rho 34873 * seg34AccX49 rho) - rho 34872 * seg34AccY49 rho +
            (seg34AccY49 rho - seg34AccX49 rho * (-1)) * (rho 34872 + rho 34873) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34879 * (1 - rho 34877) = rho 34874 - rho 34875 - rho 34876 := ha5
        _ = (-1) * rho 34875 - rho 34876 + (seg34AccY49 rho - seg34AccX49 rho * (-1)) * (rho 34872 + rho 34873) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX50 rho = seg34AccX49 rho - Bool.toZMod bit * (seg34AccX49 rho - rho 34878) := by
      have hd : rho 34880 = Bool.toZMod bit * (rho 34878 - seg34AccX49 rho) := by
        rw [← hbit, seg34LadderFlatX49_eq]
        unfold seg34LadderFlatX49
        linear_combination -r3608
      unfold seg34AccX50
      linear_combination hd
    have hsely : seg34AccY50 rho = seg34AccY49 rho - Bool.toZMod bit * (seg34AccY49 rho - rho 34879) := by
      have hd : rho 34881 = Bool.toZMod bit * (rho 34879 - seg34AccY49 rho) := by
        rw [← hbit, seg34LadderFlatY49_eq]
        unfold seg34LadderFlatY49
        linear_combination -r3609
      unfold seg34AccY50
      linear_combination hd
    have hd0 : rho 34872 * rho 34873 = rho 34882 := by linear_combination r3610
    have hd1 : rho 34872 * rho 34872 = rho 34883 := by linear_combination r3611
    have hd2 : rho 34873 * rho 34873 = rho 34884 := by linear_combination r3612
    have hd3 : rho 34885 * (rho 34873 * rho 34873 + rho 34872 * rho 34872 * (-1)) = 2 * (rho 34872 * rho 34873) := by
      rw [hd0, hd1, hd2]
      linear_combination r3613
    have hd4 : rho 34886 * (2 - (rho 34873 * rho 34873 + rho 34872 * rho 34872 * (-1))) = rho 34873 * rho 34873 - rho 34872 * rho 34872 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3614
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX49 rho : Seg34.F), (seg34AccY49 rho : Seg34.F)⟩
      ⟨(rho 34872 : Seg34.F), (rho 34873 : Seg34.F)⟩
      ⟨(rho 34878 : Seg34.F), (rho 34879 : Seg34.F)⟩
      ⟨(seg34AccX50 rho : Seg34.F), (seg34AccY50 rho : Seg34.F)⟩
      ⟨(rho 34885 : Seg34.F), (rho 34886 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung49

theorem seg34_rung50 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34042 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX50 rho : Seg34.F), (seg34AccY50 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34885 : Seg34.F), (rho 34886 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX50 rho : Seg34.F), (seg34AccY50 rho : Seg34.F)⟩
        ⟨(rho 34885 : Seg34.F), (rho 34886 : Seg34.F)⟩
        ⟨(seg34AccX51 rho : Seg34.F), (seg34AccY51 rho : Seg34.F)⟩
        ⟨(rho 34898 : Seg34.F), (rho 34899 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p45, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3615, r3616, r3617, r3618, r3619, r3620, r3621, r3622, r3623, r3624, r3625, r3626, r3627, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3615 Seg34.relationLc285 Seg34.relationLc285Part0 Seg34.relationLc285Part1 Seg34.relationLc285Part2 Seg34.relationLc285Part3 at r3615
  unfold Seg34.relationRow3616 Seg34.relationLc286 Seg34.relationLc286Part0 Seg34.relationLc286Part1 at r3616
  unfold Seg34.relationRow3617 Seg34.relationLc287 Seg34.relationLc287Part0 Seg34.relationLc287Part1 at r3617
  unfold Seg34.relationRow3618 at r3618
  unfold Seg34.relationRow3619 at r3619
  unfold Seg34.relationRow3620 at r3620
  unfold Seg34.relationRow3621 Seg34.relationLc288 Seg34.relationLc288Part0 Seg34.relationLc288Part1 at r3621
  unfold Seg34.relationRow3622 Seg34.relationLc289 Seg34.relationLc289Part0 Seg34.relationLc289Part1 at r3622
  unfold Seg34.relationRow3623 at r3623
  unfold Seg34.relationRow3624 at r3624
  unfold Seg34.relationRow3625 at r3625
  unfold Seg34.relationRow3626 at r3626
  unfold Seg34.relationRow3627 at r3627
  have hrung50 (bit : Bool) (hbit : rho 34042 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX50 rho : Seg34.F), (seg34AccY50 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34885 : Seg34.F), (rho 34886 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX50 rho : Seg34.F), (seg34AccY50 rho : Seg34.F)⟩
        ⟨(rho 34885 : Seg34.F), (rho 34886 : Seg34.F)⟩
        ⟨(seg34AccX51 rho : Seg34.F), (seg34AccY51 rho : Seg34.F)⟩
        ⟨(rho 34898 : Seg34.F), (rho 34899 : Seg34.F)⟩ := by
    have ha0 : (rho 34885 + rho 34886) * (seg34AccX50 rho + seg34AccY50 rho) = rho 34887 := by
      rw [seg34LadderFlatX50_eq, seg34LadderFlatY50_eq]
      unfold seg34LadderFlatX50 seg34LadderFlatY50
      linear_combination r3615
    have ha1 : rho 34886 * seg34AccX50 rho = rho 34888 := by
      rw [seg34LadderFlatX50_eq]
      unfold seg34LadderFlatX50
      linear_combination r3616
    have ha2 : rho 34885 * seg34AccY50 rho = rho 34889 := by
      rw [seg34LadderFlatY50_eq]
      unfold seg34LadderFlatY50
      linear_combination r3617
    have ha3 : 3021 * rho 34888 * rho 34889 = rho 34890 := by
      linear_combination r3618
    have ha4 : rho 34891 * (1 + rho 34890) = rho 34888 + rho 34889 := by
      linear_combination r3619
    have ha5 : rho 34892 * (1 - rho 34890) = rho 34887 - rho 34888 - rho 34889 := by
      linear_combination r3620
    have haddx :
        rho 34891 * (1 + 3021 * (rho 34886 * seg34AccX50 rho) * (rho 34885 * seg34AccY50 rho)) =
          rho 34886 * seg34AccX50 rho + rho 34885 * seg34AccY50 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34892 * (1 - 3021 * (rho 34886 * seg34AccX50 rho) * (rho 34885 * seg34AccY50 rho)) =
          (-1) * (rho 34886 * seg34AccX50 rho) - rho 34885 * seg34AccY50 rho +
            (seg34AccY50 rho - seg34AccX50 rho * (-1)) * (rho 34885 + rho 34886) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34892 * (1 - rho 34890) = rho 34887 - rho 34888 - rho 34889 := ha5
        _ = (-1) * rho 34888 - rho 34889 + (seg34AccY50 rho - seg34AccX50 rho * (-1)) * (rho 34885 + rho 34886) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX51 rho = seg34AccX50 rho - Bool.toZMod bit * (seg34AccX50 rho - rho 34891) := by
      have hd : rho 34893 = Bool.toZMod bit * (rho 34891 - seg34AccX50 rho) := by
        rw [← hbit, seg34LadderFlatX50_eq]
        unfold seg34LadderFlatX50
        linear_combination -r3621
      unfold seg34AccX51
      linear_combination hd
    have hsely : seg34AccY51 rho = seg34AccY50 rho - Bool.toZMod bit * (seg34AccY50 rho - rho 34892) := by
      have hd : rho 34894 = Bool.toZMod bit * (rho 34892 - seg34AccY50 rho) := by
        rw [← hbit, seg34LadderFlatY50_eq]
        unfold seg34LadderFlatY50
        linear_combination -r3622
      unfold seg34AccY51
      linear_combination hd
    have hd0 : rho 34885 * rho 34886 = rho 34895 := by linear_combination r3623
    have hd1 : rho 34885 * rho 34885 = rho 34896 := by linear_combination r3624
    have hd2 : rho 34886 * rho 34886 = rho 34897 := by linear_combination r3625
    have hd3 : rho 34898 * (rho 34886 * rho 34886 + rho 34885 * rho 34885 * (-1)) = 2 * (rho 34885 * rho 34886) := by
      rw [hd0, hd1, hd2]
      linear_combination r3626
    have hd4 : rho 34899 * (2 - (rho 34886 * rho 34886 + rho 34885 * rho 34885 * (-1))) = rho 34886 * rho 34886 - rho 34885 * rho 34885 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3627
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX50 rho : Seg34.F), (seg34AccY50 rho : Seg34.F)⟩
      ⟨(rho 34885 : Seg34.F), (rho 34886 : Seg34.F)⟩
      ⟨(rho 34891 : Seg34.F), (rho 34892 : Seg34.F)⟩
      ⟨(seg34AccX51 rho : Seg34.F), (seg34AccY51 rho : Seg34.F)⟩
      ⟨(rho 34898 : Seg34.F), (rho 34899 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung50

theorem seg34_rung51 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34043 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX51 rho : Seg34.F), (seg34AccY51 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34898 : Seg34.F), (rho 34899 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX51 rho : Seg34.F), (seg34AccY51 rho : Seg34.F)⟩
        ⟨(rho 34898 : Seg34.F), (rho 34899 : Seg34.F)⟩
        ⟨(seg34AccX52 rho : Seg34.F), (seg34AccY52 rho : Seg34.F)⟩
        ⟨(rho 34911 : Seg34.F), (rho 34912 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p45, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3628, r3629, r3630, r3631, r3632, r3633, r3634, r3635, r3636, r3637, r3638, r3639, r3640, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3628 Seg34.relationLc290 Seg34.relationLc290Part0 Seg34.relationLc290Part1 Seg34.relationLc290Part2 Seg34.relationLc290Part3 at r3628
  unfold Seg34.relationRow3629 Seg34.relationLc291 Seg34.relationLc291Part0 Seg34.relationLc291Part1 at r3629
  unfold Seg34.relationRow3630 Seg34.relationLc292 Seg34.relationLc292Part0 Seg34.relationLc292Part1 at r3630
  unfold Seg34.relationRow3631 at r3631
  unfold Seg34.relationRow3632 at r3632
  unfold Seg34.relationRow3633 at r3633
  unfold Seg34.relationRow3634 Seg34.relationLc293 Seg34.relationLc293Part0 Seg34.relationLc293Part1 at r3634
  unfold Seg34.relationRow3635 Seg34.relationLc294 Seg34.relationLc294Part0 Seg34.relationLc294Part1 at r3635
  unfold Seg34.relationRow3636 at r3636
  unfold Seg34.relationRow3637 at r3637
  unfold Seg34.relationRow3638 at r3638
  unfold Seg34.relationRow3639 at r3639
  unfold Seg34.relationRow3640 at r3640
  have hrung51 (bit : Bool) (hbit : rho 34043 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX51 rho : Seg34.F), (seg34AccY51 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34898 : Seg34.F), (rho 34899 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX51 rho : Seg34.F), (seg34AccY51 rho : Seg34.F)⟩
        ⟨(rho 34898 : Seg34.F), (rho 34899 : Seg34.F)⟩
        ⟨(seg34AccX52 rho : Seg34.F), (seg34AccY52 rho : Seg34.F)⟩
        ⟨(rho 34911 : Seg34.F), (rho 34912 : Seg34.F)⟩ := by
    have ha0 : (rho 34898 + rho 34899) * (seg34AccX51 rho + seg34AccY51 rho) = rho 34900 := by
      rw [seg34LadderFlatX51_eq, seg34LadderFlatY51_eq]
      unfold seg34LadderFlatX51 seg34LadderFlatY51
      linear_combination r3628
    have ha1 : rho 34899 * seg34AccX51 rho = rho 34901 := by
      rw [seg34LadderFlatX51_eq]
      unfold seg34LadderFlatX51
      linear_combination r3629
    have ha2 : rho 34898 * seg34AccY51 rho = rho 34902 := by
      rw [seg34LadderFlatY51_eq]
      unfold seg34LadderFlatY51
      linear_combination r3630
    have ha3 : 3021 * rho 34901 * rho 34902 = rho 34903 := by
      linear_combination r3631
    have ha4 : rho 34904 * (1 + rho 34903) = rho 34901 + rho 34902 := by
      linear_combination r3632
    have ha5 : rho 34905 * (1 - rho 34903) = rho 34900 - rho 34901 - rho 34902 := by
      linear_combination r3633
    have haddx :
        rho 34904 * (1 + 3021 * (rho 34899 * seg34AccX51 rho) * (rho 34898 * seg34AccY51 rho)) =
          rho 34899 * seg34AccX51 rho + rho 34898 * seg34AccY51 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34905 * (1 - 3021 * (rho 34899 * seg34AccX51 rho) * (rho 34898 * seg34AccY51 rho)) =
          (-1) * (rho 34899 * seg34AccX51 rho) - rho 34898 * seg34AccY51 rho +
            (seg34AccY51 rho - seg34AccX51 rho * (-1)) * (rho 34898 + rho 34899) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34905 * (1 - rho 34903) = rho 34900 - rho 34901 - rho 34902 := ha5
        _ = (-1) * rho 34901 - rho 34902 + (seg34AccY51 rho - seg34AccX51 rho * (-1)) * (rho 34898 + rho 34899) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX52 rho = seg34AccX51 rho - Bool.toZMod bit * (seg34AccX51 rho - rho 34904) := by
      have hd : rho 34906 = Bool.toZMod bit * (rho 34904 - seg34AccX51 rho) := by
        rw [← hbit, seg34LadderFlatX51_eq]
        unfold seg34LadderFlatX51
        linear_combination -r3634
      unfold seg34AccX52
      linear_combination hd
    have hsely : seg34AccY52 rho = seg34AccY51 rho - Bool.toZMod bit * (seg34AccY51 rho - rho 34905) := by
      have hd : rho 34907 = Bool.toZMod bit * (rho 34905 - seg34AccY51 rho) := by
        rw [← hbit, seg34LadderFlatY51_eq]
        unfold seg34LadderFlatY51
        linear_combination -r3635
      unfold seg34AccY52
      linear_combination hd
    have hd0 : rho 34898 * rho 34899 = rho 34908 := by linear_combination r3636
    have hd1 : rho 34898 * rho 34898 = rho 34909 := by linear_combination r3637
    have hd2 : rho 34899 * rho 34899 = rho 34910 := by linear_combination r3638
    have hd3 : rho 34911 * (rho 34899 * rho 34899 + rho 34898 * rho 34898 * (-1)) = 2 * (rho 34898 * rho 34899) := by
      rw [hd0, hd1, hd2]
      linear_combination r3639
    have hd4 : rho 34912 * (2 - (rho 34899 * rho 34899 + rho 34898 * rho 34898 * (-1))) = rho 34899 * rho 34899 - rho 34898 * rho 34898 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3640
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX51 rho : Seg34.F), (seg34AccY51 rho : Seg34.F)⟩
      ⟨(rho 34898 : Seg34.F), (rho 34899 : Seg34.F)⟩
      ⟨(rho 34904 : Seg34.F), (rho 34905 : Seg34.F)⟩
      ⟨(seg34AccX52 rho : Seg34.F), (seg34AccY52 rho : Seg34.F)⟩
      ⟨(rho 34911 : Seg34.F), (rho 34912 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung51

theorem seg34_rung52 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34044 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX52 rho : Seg34.F), (seg34AccY52 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34911 : Seg34.F), (rho 34912 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX52 rho : Seg34.F), (seg34AccY52 rho : Seg34.F)⟩
        ⟨(rho 34911 : Seg34.F), (rho 34912 : Seg34.F)⟩
        ⟨(seg34AccX53 rho : Seg34.F), (seg34AccY53 rho : Seg34.F)⟩
        ⟨(rho 34924 : Seg34.F), (rho 34925 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p45, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3641, r3642, r3643, r3644, r3645, r3646, r3647, r3648, r3649, r3650, r3651, r3652, r3653, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3641 Seg34.relationLc295 Seg34.relationLc295Part0 Seg34.relationLc295Part1 Seg34.relationLc295Part2 Seg34.relationLc295Part3 at r3641
  unfold Seg34.relationRow3642 Seg34.relationLc296 Seg34.relationLc296Part0 Seg34.relationLc296Part1 at r3642
  unfold Seg34.relationRow3643 Seg34.relationLc297 Seg34.relationLc297Part0 Seg34.relationLc297Part1 at r3643
  unfold Seg34.relationRow3644 at r3644
  unfold Seg34.relationRow3645 at r3645
  unfold Seg34.relationRow3646 at r3646
  unfold Seg34.relationRow3647 Seg34.relationLc298 Seg34.relationLc298Part0 Seg34.relationLc298Part1 at r3647
  unfold Seg34.relationRow3648 Seg34.relationLc299 Seg34.relationLc299Part0 Seg34.relationLc299Part1 at r3648
  unfold Seg34.relationRow3649 at r3649
  unfold Seg34.relationRow3650 at r3650
  unfold Seg34.relationRow3651 at r3651
  unfold Seg34.relationRow3652 at r3652
  unfold Seg34.relationRow3653 at r3653
  have hrung52 (bit : Bool) (hbit : rho 34044 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX52 rho : Seg34.F), (seg34AccY52 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34911 : Seg34.F), (rho 34912 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX52 rho : Seg34.F), (seg34AccY52 rho : Seg34.F)⟩
        ⟨(rho 34911 : Seg34.F), (rho 34912 : Seg34.F)⟩
        ⟨(seg34AccX53 rho : Seg34.F), (seg34AccY53 rho : Seg34.F)⟩
        ⟨(rho 34924 : Seg34.F), (rho 34925 : Seg34.F)⟩ := by
    have ha0 : (rho 34911 + rho 34912) * (seg34AccX52 rho + seg34AccY52 rho) = rho 34913 := by
      rw [seg34LadderFlatX52_eq, seg34LadderFlatY52_eq]
      unfold seg34LadderFlatX52 seg34LadderFlatY52
      linear_combination r3641
    have ha1 : rho 34912 * seg34AccX52 rho = rho 34914 := by
      rw [seg34LadderFlatX52_eq]
      unfold seg34LadderFlatX52
      linear_combination r3642
    have ha2 : rho 34911 * seg34AccY52 rho = rho 34915 := by
      rw [seg34LadderFlatY52_eq]
      unfold seg34LadderFlatY52
      linear_combination r3643
    have ha3 : 3021 * rho 34914 * rho 34915 = rho 34916 := by
      linear_combination r3644
    have ha4 : rho 34917 * (1 + rho 34916) = rho 34914 + rho 34915 := by
      linear_combination r3645
    have ha5 : rho 34918 * (1 - rho 34916) = rho 34913 - rho 34914 - rho 34915 := by
      linear_combination r3646
    have haddx :
        rho 34917 * (1 + 3021 * (rho 34912 * seg34AccX52 rho) * (rho 34911 * seg34AccY52 rho)) =
          rho 34912 * seg34AccX52 rho + rho 34911 * seg34AccY52 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34918 * (1 - 3021 * (rho 34912 * seg34AccX52 rho) * (rho 34911 * seg34AccY52 rho)) =
          (-1) * (rho 34912 * seg34AccX52 rho) - rho 34911 * seg34AccY52 rho +
            (seg34AccY52 rho - seg34AccX52 rho * (-1)) * (rho 34911 + rho 34912) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34918 * (1 - rho 34916) = rho 34913 - rho 34914 - rho 34915 := ha5
        _ = (-1) * rho 34914 - rho 34915 + (seg34AccY52 rho - seg34AccX52 rho * (-1)) * (rho 34911 + rho 34912) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX53 rho = seg34AccX52 rho - Bool.toZMod bit * (seg34AccX52 rho - rho 34917) := by
      have hd : rho 34919 = Bool.toZMod bit * (rho 34917 - seg34AccX52 rho) := by
        rw [← hbit, seg34LadderFlatX52_eq]
        unfold seg34LadderFlatX52
        linear_combination -r3647
      unfold seg34AccX53
      linear_combination hd
    have hsely : seg34AccY53 rho = seg34AccY52 rho - Bool.toZMod bit * (seg34AccY52 rho - rho 34918) := by
      have hd : rho 34920 = Bool.toZMod bit * (rho 34918 - seg34AccY52 rho) := by
        rw [← hbit, seg34LadderFlatY52_eq]
        unfold seg34LadderFlatY52
        linear_combination -r3648
      unfold seg34AccY53
      linear_combination hd
    have hd0 : rho 34911 * rho 34912 = rho 34921 := by linear_combination r3649
    have hd1 : rho 34911 * rho 34911 = rho 34922 := by linear_combination r3650
    have hd2 : rho 34912 * rho 34912 = rho 34923 := by linear_combination r3651
    have hd3 : rho 34924 * (rho 34912 * rho 34912 + rho 34911 * rho 34911 * (-1)) = 2 * (rho 34911 * rho 34912) := by
      rw [hd0, hd1, hd2]
      linear_combination r3652
    have hd4 : rho 34925 * (2 - (rho 34912 * rho 34912 + rho 34911 * rho 34911 * (-1))) = rho 34912 * rho 34912 - rho 34911 * rho 34911 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3653
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX52 rho : Seg34.F), (seg34AccY52 rho : Seg34.F)⟩
      ⟨(rho 34911 : Seg34.F), (rho 34912 : Seg34.F)⟩
      ⟨(rho 34917 : Seg34.F), (rho 34918 : Seg34.F)⟩
      ⟨(seg34AccX53 rho : Seg34.F), (seg34AccY53 rho : Seg34.F)⟩
      ⟨(rho 34924 : Seg34.F), (rho 34925 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung52

theorem seg34_rung53 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34045 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX53 rho : Seg34.F), (seg34AccY53 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34924 : Seg34.F), (rho 34925 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX53 rho : Seg34.F), (seg34AccY53 rho : Seg34.F)⟩
        ⟨(rho 34924 : Seg34.F), (rho 34925 : Seg34.F)⟩
        ⟨(seg34AccX54 rho : Seg34.F), (seg34AccY54 rho : Seg34.F)⟩
        ⟨(rho 34937 : Seg34.F), (rho 34938 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p45, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3654, r3655, r3656, r3657, r3658, r3659, r3660, r3661, r3662, r3663, r3664, r3665, r3666, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3654 Seg34.relationLc300 Seg34.relationLc300Part0 Seg34.relationLc300Part1 Seg34.relationLc300Part2 Seg34.relationLc300Part3 at r3654
  unfold Seg34.relationRow3655 Seg34.relationLc301 Seg34.relationLc301Part0 Seg34.relationLc301Part1 at r3655
  unfold Seg34.relationRow3656 Seg34.relationLc302 Seg34.relationLc302Part0 Seg34.relationLc302Part1 at r3656
  unfold Seg34.relationRow3657 at r3657
  unfold Seg34.relationRow3658 at r3658
  unfold Seg34.relationRow3659 at r3659
  unfold Seg34.relationRow3660 Seg34.relationLc303 Seg34.relationLc303Part0 Seg34.relationLc303Part1 at r3660
  unfold Seg34.relationRow3661 Seg34.relationLc304 Seg34.relationLc304Part0 Seg34.relationLc304Part1 at r3661
  unfold Seg34.relationRow3662 at r3662
  unfold Seg34.relationRow3663 at r3663
  unfold Seg34.relationRow3664 at r3664
  unfold Seg34.relationRow3665 at r3665
  unfold Seg34.relationRow3666 at r3666
  have hrung53 (bit : Bool) (hbit : rho 34045 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX53 rho : Seg34.F), (seg34AccY53 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34924 : Seg34.F), (rho 34925 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX53 rho : Seg34.F), (seg34AccY53 rho : Seg34.F)⟩
        ⟨(rho 34924 : Seg34.F), (rho 34925 : Seg34.F)⟩
        ⟨(seg34AccX54 rho : Seg34.F), (seg34AccY54 rho : Seg34.F)⟩
        ⟨(rho 34937 : Seg34.F), (rho 34938 : Seg34.F)⟩ := by
    have ha0 : (rho 34924 + rho 34925) * (seg34AccX53 rho + seg34AccY53 rho) = rho 34926 := by
      rw [seg34LadderFlatX53_eq, seg34LadderFlatY53_eq]
      unfold seg34LadderFlatX53 seg34LadderFlatY53
      linear_combination r3654
    have ha1 : rho 34925 * seg34AccX53 rho = rho 34927 := by
      rw [seg34LadderFlatX53_eq]
      unfold seg34LadderFlatX53
      linear_combination r3655
    have ha2 : rho 34924 * seg34AccY53 rho = rho 34928 := by
      rw [seg34LadderFlatY53_eq]
      unfold seg34LadderFlatY53
      linear_combination r3656
    have ha3 : 3021 * rho 34927 * rho 34928 = rho 34929 := by
      linear_combination r3657
    have ha4 : rho 34930 * (1 + rho 34929) = rho 34927 + rho 34928 := by
      linear_combination r3658
    have ha5 : rho 34931 * (1 - rho 34929) = rho 34926 - rho 34927 - rho 34928 := by
      linear_combination r3659
    have haddx :
        rho 34930 * (1 + 3021 * (rho 34925 * seg34AccX53 rho) * (rho 34924 * seg34AccY53 rho)) =
          rho 34925 * seg34AccX53 rho + rho 34924 * seg34AccY53 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34931 * (1 - 3021 * (rho 34925 * seg34AccX53 rho) * (rho 34924 * seg34AccY53 rho)) =
          (-1) * (rho 34925 * seg34AccX53 rho) - rho 34924 * seg34AccY53 rho +
            (seg34AccY53 rho - seg34AccX53 rho * (-1)) * (rho 34924 + rho 34925) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34931 * (1 - rho 34929) = rho 34926 - rho 34927 - rho 34928 := ha5
        _ = (-1) * rho 34927 - rho 34928 + (seg34AccY53 rho - seg34AccX53 rho * (-1)) * (rho 34924 + rho 34925) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX54 rho = seg34AccX53 rho - Bool.toZMod bit * (seg34AccX53 rho - rho 34930) := by
      have hd : rho 34932 = Bool.toZMod bit * (rho 34930 - seg34AccX53 rho) := by
        rw [← hbit, seg34LadderFlatX53_eq]
        unfold seg34LadderFlatX53
        linear_combination -r3660
      unfold seg34AccX54
      linear_combination hd
    have hsely : seg34AccY54 rho = seg34AccY53 rho - Bool.toZMod bit * (seg34AccY53 rho - rho 34931) := by
      have hd : rho 34933 = Bool.toZMod bit * (rho 34931 - seg34AccY53 rho) := by
        rw [← hbit, seg34LadderFlatY53_eq]
        unfold seg34LadderFlatY53
        linear_combination -r3661
      unfold seg34AccY54
      linear_combination hd
    have hd0 : rho 34924 * rho 34925 = rho 34934 := by linear_combination r3662
    have hd1 : rho 34924 * rho 34924 = rho 34935 := by linear_combination r3663
    have hd2 : rho 34925 * rho 34925 = rho 34936 := by linear_combination r3664
    have hd3 : rho 34937 * (rho 34925 * rho 34925 + rho 34924 * rho 34924 * (-1)) = 2 * (rho 34924 * rho 34925) := by
      rw [hd0, hd1, hd2]
      linear_combination r3665
    have hd4 : rho 34938 * (2 - (rho 34925 * rho 34925 + rho 34924 * rho 34924 * (-1))) = rho 34925 * rho 34925 - rho 34924 * rho 34924 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3666
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX53 rho : Seg34.F), (seg34AccY53 rho : Seg34.F)⟩
      ⟨(rho 34924 : Seg34.F), (rho 34925 : Seg34.F)⟩
      ⟨(rho 34930 : Seg34.F), (rho 34931 : Seg34.F)⟩
      ⟨(seg34AccX54 rho : Seg34.F), (seg34AccY54 rho : Seg34.F)⟩
      ⟨(rho 34937 : Seg34.F), (rho 34938 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung53

theorem seg34_rung54 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34046 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX54 rho : Seg34.F), (seg34AccY54 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34937 : Seg34.F), (rho 34938 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX54 rho : Seg34.F), (seg34AccY54 rho : Seg34.F)⟩
        ⟨(rho 34937 : Seg34.F), (rho 34938 : Seg34.F)⟩
        ⟨(seg34AccX55 rho : Seg34.F), (seg34AccY55 rho : Seg34.F)⟩
        ⟨(rho 34950 : Seg34.F), (rho 34951 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p45, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3667, r3668, r3669, r3670, r3671, r3672, r3673, r3674, r3675, r3676, r3677, r3678, r3679⟩
  unfold Seg34.relationRow3667 Seg34.relationLc305 Seg34.relationLc305Part0 Seg34.relationLc305Part1 Seg34.relationLc305Part2 Seg34.relationLc305Part3 at r3667
  unfold Seg34.relationRow3668 Seg34.relationLc306 Seg34.relationLc306Part0 Seg34.relationLc306Part1 at r3668
  unfold Seg34.relationRow3669 Seg34.relationLc307 Seg34.relationLc307Part0 Seg34.relationLc307Part1 at r3669
  unfold Seg34.relationRow3670 at r3670
  unfold Seg34.relationRow3671 at r3671
  unfold Seg34.relationRow3672 at r3672
  unfold Seg34.relationRow3673 Seg34.relationLc308 Seg34.relationLc308Part0 Seg34.relationLc308Part1 at r3673
  unfold Seg34.relationRow3674 Seg34.relationLc309 Seg34.relationLc309Part0 Seg34.relationLc309Part1 at r3674
  unfold Seg34.relationRow3675 at r3675
  unfold Seg34.relationRow3676 at r3676
  unfold Seg34.relationRow3677 at r3677
  unfold Seg34.relationRow3678 at r3678
  unfold Seg34.relationRow3679 at r3679
  have hrung54 (bit : Bool) (hbit : rho 34046 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX54 rho : Seg34.F), (seg34AccY54 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34937 : Seg34.F), (rho 34938 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX54 rho : Seg34.F), (seg34AccY54 rho : Seg34.F)⟩
        ⟨(rho 34937 : Seg34.F), (rho 34938 : Seg34.F)⟩
        ⟨(seg34AccX55 rho : Seg34.F), (seg34AccY55 rho : Seg34.F)⟩
        ⟨(rho 34950 : Seg34.F), (rho 34951 : Seg34.F)⟩ := by
    have ha0 : (rho 34937 + rho 34938) * (seg34AccX54 rho + seg34AccY54 rho) = rho 34939 := by
      rw [seg34LadderFlatX54_eq, seg34LadderFlatY54_eq]
      unfold seg34LadderFlatX54 seg34LadderFlatY54
      linear_combination r3667
    have ha1 : rho 34938 * seg34AccX54 rho = rho 34940 := by
      rw [seg34LadderFlatX54_eq]
      unfold seg34LadderFlatX54
      linear_combination r3668
    have ha2 : rho 34937 * seg34AccY54 rho = rho 34941 := by
      rw [seg34LadderFlatY54_eq]
      unfold seg34LadderFlatY54
      linear_combination r3669
    have ha3 : 3021 * rho 34940 * rho 34941 = rho 34942 := by
      linear_combination r3670
    have ha4 : rho 34943 * (1 + rho 34942) = rho 34940 + rho 34941 := by
      linear_combination r3671
    have ha5 : rho 34944 * (1 - rho 34942) = rho 34939 - rho 34940 - rho 34941 := by
      linear_combination r3672
    have haddx :
        rho 34943 * (1 + 3021 * (rho 34938 * seg34AccX54 rho) * (rho 34937 * seg34AccY54 rho)) =
          rho 34938 * seg34AccX54 rho + rho 34937 * seg34AccY54 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34944 * (1 - 3021 * (rho 34938 * seg34AccX54 rho) * (rho 34937 * seg34AccY54 rho)) =
          (-1) * (rho 34938 * seg34AccX54 rho) - rho 34937 * seg34AccY54 rho +
            (seg34AccY54 rho - seg34AccX54 rho * (-1)) * (rho 34937 + rho 34938) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34944 * (1 - rho 34942) = rho 34939 - rho 34940 - rho 34941 := ha5
        _ = (-1) * rho 34940 - rho 34941 + (seg34AccY54 rho - seg34AccX54 rho * (-1)) * (rho 34937 + rho 34938) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX55 rho = seg34AccX54 rho - Bool.toZMod bit * (seg34AccX54 rho - rho 34943) := by
      have hd : rho 34945 = Bool.toZMod bit * (rho 34943 - seg34AccX54 rho) := by
        rw [← hbit, seg34LadderFlatX54_eq]
        unfold seg34LadderFlatX54
        linear_combination -r3673
      unfold seg34AccX55
      linear_combination hd
    have hsely : seg34AccY55 rho = seg34AccY54 rho - Bool.toZMod bit * (seg34AccY54 rho - rho 34944) := by
      have hd : rho 34946 = Bool.toZMod bit * (rho 34944 - seg34AccY54 rho) := by
        rw [← hbit, seg34LadderFlatY54_eq]
        unfold seg34LadderFlatY54
        linear_combination -r3674
      unfold seg34AccY55
      linear_combination hd
    have hd0 : rho 34937 * rho 34938 = rho 34947 := by linear_combination r3675
    have hd1 : rho 34937 * rho 34937 = rho 34948 := by linear_combination r3676
    have hd2 : rho 34938 * rho 34938 = rho 34949 := by linear_combination r3677
    have hd3 : rho 34950 * (rho 34938 * rho 34938 + rho 34937 * rho 34937 * (-1)) = 2 * (rho 34937 * rho 34938) := by
      rw [hd0, hd1, hd2]
      linear_combination r3678
    have hd4 : rho 34951 * (2 - (rho 34938 * rho 34938 + rho 34937 * rho 34937 * (-1))) = rho 34938 * rho 34938 - rho 34937 * rho 34937 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3679
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX54 rho : Seg34.F), (seg34AccY54 rho : Seg34.F)⟩
      ⟨(rho 34937 : Seg34.F), (rho 34938 : Seg34.F)⟩
      ⟨(rho 34943 : Seg34.F), (rho 34944 : Seg34.F)⟩
      ⟨(seg34AccX55 rho : Seg34.F), (seg34AccY55 rho : Seg34.F)⟩
      ⟨(rho 34950 : Seg34.F), (rho 34951 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung54

theorem seg34_rung55 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34047 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX55 rho : Seg34.F), (seg34AccY55 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34950 : Seg34.F), (rho 34951 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX55 rho : Seg34.F), (seg34AccY55 rho : Seg34.F)⟩
        ⟨(rho 34950 : Seg34.F), (rho 34951 : Seg34.F)⟩
        ⟨(seg34AccX56 rho : Seg34.F), (seg34AccY56 rho : Seg34.F)⟩
        ⟨(rho 34963 : Seg34.F), (rho 34964 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p46, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart46 at p46
  rcases p46 with ⟨r3680, r3681, r3682, r3683, r3684, r3685, r3686, r3687, r3688, r3689, r3690, r3691, r3692, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3680 Seg34.relationLc310 Seg34.relationLc310Part0 Seg34.relationLc310Part1 Seg34.relationLc310Part2 Seg34.relationLc310Part3 at r3680
  unfold Seg34.relationRow3681 Seg34.relationLc311 Seg34.relationLc311Part0 Seg34.relationLc311Part1 at r3681
  unfold Seg34.relationRow3682 Seg34.relationLc312 Seg34.relationLc312Part0 Seg34.relationLc312Part1 at r3682
  unfold Seg34.relationRow3683 at r3683
  unfold Seg34.relationRow3684 at r3684
  unfold Seg34.relationRow3685 at r3685
  unfold Seg34.relationRow3686 Seg34.relationLc313 Seg34.relationLc313Part0 Seg34.relationLc313Part1 at r3686
  unfold Seg34.relationRow3687 Seg34.relationLc314 Seg34.relationLc314Part0 Seg34.relationLc314Part1 at r3687
  unfold Seg34.relationRow3688 at r3688
  unfold Seg34.relationRow3689 at r3689
  unfold Seg34.relationRow3690 at r3690
  unfold Seg34.relationRow3691 at r3691
  unfold Seg34.relationRow3692 at r3692
  have hrung55 (bit : Bool) (hbit : rho 34047 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX55 rho : Seg34.F), (seg34AccY55 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34950 : Seg34.F), (rho 34951 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX55 rho : Seg34.F), (seg34AccY55 rho : Seg34.F)⟩
        ⟨(rho 34950 : Seg34.F), (rho 34951 : Seg34.F)⟩
        ⟨(seg34AccX56 rho : Seg34.F), (seg34AccY56 rho : Seg34.F)⟩
        ⟨(rho 34963 : Seg34.F), (rho 34964 : Seg34.F)⟩ := by
    have ha0 : (rho 34950 + rho 34951) * (seg34AccX55 rho + seg34AccY55 rho) = rho 34952 := by
      rw [seg34LadderFlatX55_eq, seg34LadderFlatY55_eq]
      unfold seg34LadderFlatX55 seg34LadderFlatY55
      linear_combination r3680
    have ha1 : rho 34951 * seg34AccX55 rho = rho 34953 := by
      rw [seg34LadderFlatX55_eq]
      unfold seg34LadderFlatX55
      linear_combination r3681
    have ha2 : rho 34950 * seg34AccY55 rho = rho 34954 := by
      rw [seg34LadderFlatY55_eq]
      unfold seg34LadderFlatY55
      linear_combination r3682
    have ha3 : 3021 * rho 34953 * rho 34954 = rho 34955 := by
      linear_combination r3683
    have ha4 : rho 34956 * (1 + rho 34955) = rho 34953 + rho 34954 := by
      linear_combination r3684
    have ha5 : rho 34957 * (1 - rho 34955) = rho 34952 - rho 34953 - rho 34954 := by
      linear_combination r3685
    have haddx :
        rho 34956 * (1 + 3021 * (rho 34951 * seg34AccX55 rho) * (rho 34950 * seg34AccY55 rho)) =
          rho 34951 * seg34AccX55 rho + rho 34950 * seg34AccY55 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34957 * (1 - 3021 * (rho 34951 * seg34AccX55 rho) * (rho 34950 * seg34AccY55 rho)) =
          (-1) * (rho 34951 * seg34AccX55 rho) - rho 34950 * seg34AccY55 rho +
            (seg34AccY55 rho - seg34AccX55 rho * (-1)) * (rho 34950 + rho 34951) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34957 * (1 - rho 34955) = rho 34952 - rho 34953 - rho 34954 := ha5
        _ = (-1) * rho 34953 - rho 34954 + (seg34AccY55 rho - seg34AccX55 rho * (-1)) * (rho 34950 + rho 34951) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX56 rho = seg34AccX55 rho - Bool.toZMod bit * (seg34AccX55 rho - rho 34956) := by
      have hd : rho 34958 = Bool.toZMod bit * (rho 34956 - seg34AccX55 rho) := by
        rw [← hbit, seg34LadderFlatX55_eq]
        unfold seg34LadderFlatX55
        linear_combination -r3686
      unfold seg34AccX56
      linear_combination hd
    have hsely : seg34AccY56 rho = seg34AccY55 rho - Bool.toZMod bit * (seg34AccY55 rho - rho 34957) := by
      have hd : rho 34959 = Bool.toZMod bit * (rho 34957 - seg34AccY55 rho) := by
        rw [← hbit, seg34LadderFlatY55_eq]
        unfold seg34LadderFlatY55
        linear_combination -r3687
      unfold seg34AccY56
      linear_combination hd
    have hd0 : rho 34950 * rho 34951 = rho 34960 := by linear_combination r3688
    have hd1 : rho 34950 * rho 34950 = rho 34961 := by linear_combination r3689
    have hd2 : rho 34951 * rho 34951 = rho 34962 := by linear_combination r3690
    have hd3 : rho 34963 * (rho 34951 * rho 34951 + rho 34950 * rho 34950 * (-1)) = 2 * (rho 34950 * rho 34951) := by
      rw [hd0, hd1, hd2]
      linear_combination r3691
    have hd4 : rho 34964 * (2 - (rho 34951 * rho 34951 + rho 34950 * rho 34950 * (-1))) = rho 34951 * rho 34951 - rho 34950 * rho 34950 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3692
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX55 rho : Seg34.F), (seg34AccY55 rho : Seg34.F)⟩
      ⟨(rho 34950 : Seg34.F), (rho 34951 : Seg34.F)⟩
      ⟨(rho 34956 : Seg34.F), (rho 34957 : Seg34.F)⟩
      ⟨(seg34AccX56 rho : Seg34.F), (seg34AccY56 rho : Seg34.F)⟩
      ⟨(rho 34963 : Seg34.F), (rho 34964 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung55

theorem seg34_rung56 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34048 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX56 rho : Seg34.F), (seg34AccY56 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34963 : Seg34.F), (rho 34964 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX56 rho : Seg34.F), (seg34AccY56 rho : Seg34.F)⟩
        ⟨(rho 34963 : Seg34.F), (rho 34964 : Seg34.F)⟩
        ⟨(seg34AccX57 rho : Seg34.F), (seg34AccY57 rho : Seg34.F)⟩
        ⟨(rho 34976 : Seg34.F), (rho 34977 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p46, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r3693, r3694, r3695, r3696, r3697, r3698, r3699, r3700, r3701, r3702, r3703, r3704, r3705, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3693 Seg34.relationLc315 Seg34.relationLc315Part0 Seg34.relationLc315Part1 Seg34.relationLc315Part2 Seg34.relationLc315Part3 at r3693
  unfold Seg34.relationRow3694 Seg34.relationLc316 Seg34.relationLc316Part0 Seg34.relationLc316Part1 at r3694
  unfold Seg34.relationRow3695 Seg34.relationLc317 Seg34.relationLc317Part0 Seg34.relationLc317Part1 at r3695
  unfold Seg34.relationRow3696 at r3696
  unfold Seg34.relationRow3697 at r3697
  unfold Seg34.relationRow3698 at r3698
  unfold Seg34.relationRow3699 Seg34.relationLc318 Seg34.relationLc318Part0 Seg34.relationLc318Part1 at r3699
  unfold Seg34.relationRow3700 Seg34.relationLc319 Seg34.relationLc319Part0 Seg34.relationLc319Part1 at r3700
  unfold Seg34.relationRow3701 at r3701
  unfold Seg34.relationRow3702 at r3702
  unfold Seg34.relationRow3703 at r3703
  unfold Seg34.relationRow3704 at r3704
  unfold Seg34.relationRow3705 at r3705
  have hrung56 (bit : Bool) (hbit : rho 34048 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX56 rho : Seg34.F), (seg34AccY56 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34963 : Seg34.F), (rho 34964 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX56 rho : Seg34.F), (seg34AccY56 rho : Seg34.F)⟩
        ⟨(rho 34963 : Seg34.F), (rho 34964 : Seg34.F)⟩
        ⟨(seg34AccX57 rho : Seg34.F), (seg34AccY57 rho : Seg34.F)⟩
        ⟨(rho 34976 : Seg34.F), (rho 34977 : Seg34.F)⟩ := by
    have ha0 : (rho 34963 + rho 34964) * (seg34AccX56 rho + seg34AccY56 rho) = rho 34965 := by
      rw [seg34LadderFlatX56_eq, seg34LadderFlatY56_eq]
      unfold seg34LadderFlatX56 seg34LadderFlatY56
      linear_combination r3693
    have ha1 : rho 34964 * seg34AccX56 rho = rho 34966 := by
      rw [seg34LadderFlatX56_eq]
      unfold seg34LadderFlatX56
      linear_combination r3694
    have ha2 : rho 34963 * seg34AccY56 rho = rho 34967 := by
      rw [seg34LadderFlatY56_eq]
      unfold seg34LadderFlatY56
      linear_combination r3695
    have ha3 : 3021 * rho 34966 * rho 34967 = rho 34968 := by
      linear_combination r3696
    have ha4 : rho 34969 * (1 + rho 34968) = rho 34966 + rho 34967 := by
      linear_combination r3697
    have ha5 : rho 34970 * (1 - rho 34968) = rho 34965 - rho 34966 - rho 34967 := by
      linear_combination r3698
    have haddx :
        rho 34969 * (1 + 3021 * (rho 34964 * seg34AccX56 rho) * (rho 34963 * seg34AccY56 rho)) =
          rho 34964 * seg34AccX56 rho + rho 34963 * seg34AccY56 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34970 * (1 - 3021 * (rho 34964 * seg34AccX56 rho) * (rho 34963 * seg34AccY56 rho)) =
          (-1) * (rho 34964 * seg34AccX56 rho) - rho 34963 * seg34AccY56 rho +
            (seg34AccY56 rho - seg34AccX56 rho * (-1)) * (rho 34963 + rho 34964) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34970 * (1 - rho 34968) = rho 34965 - rho 34966 - rho 34967 := ha5
        _ = (-1) * rho 34966 - rho 34967 + (seg34AccY56 rho - seg34AccX56 rho * (-1)) * (rho 34963 + rho 34964) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX57 rho = seg34AccX56 rho - Bool.toZMod bit * (seg34AccX56 rho - rho 34969) := by
      have hd : rho 34971 = Bool.toZMod bit * (rho 34969 - seg34AccX56 rho) := by
        rw [← hbit, seg34LadderFlatX56_eq]
        unfold seg34LadderFlatX56
        linear_combination -r3699
      unfold seg34AccX57
      linear_combination hd
    have hsely : seg34AccY57 rho = seg34AccY56 rho - Bool.toZMod bit * (seg34AccY56 rho - rho 34970) := by
      have hd : rho 34972 = Bool.toZMod bit * (rho 34970 - seg34AccY56 rho) := by
        rw [← hbit, seg34LadderFlatY56_eq]
        unfold seg34LadderFlatY56
        linear_combination -r3700
      unfold seg34AccY57
      linear_combination hd
    have hd0 : rho 34963 * rho 34964 = rho 34973 := by linear_combination r3701
    have hd1 : rho 34963 * rho 34963 = rho 34974 := by linear_combination r3702
    have hd2 : rho 34964 * rho 34964 = rho 34975 := by linear_combination r3703
    have hd3 : rho 34976 * (rho 34964 * rho 34964 + rho 34963 * rho 34963 * (-1)) = 2 * (rho 34963 * rho 34964) := by
      rw [hd0, hd1, hd2]
      linear_combination r3704
    have hd4 : rho 34977 * (2 - (rho 34964 * rho 34964 + rho 34963 * rho 34963 * (-1))) = rho 34964 * rho 34964 - rho 34963 * rho 34963 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3705
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX56 rho : Seg34.F), (seg34AccY56 rho : Seg34.F)⟩
      ⟨(rho 34963 : Seg34.F), (rho 34964 : Seg34.F)⟩
      ⟨(rho 34969 : Seg34.F), (rho 34970 : Seg34.F)⟩
      ⟨(seg34AccX57 rho : Seg34.F), (seg34AccY57 rho : Seg34.F)⟩
      ⟨(rho 34976 : Seg34.F), (rho 34977 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung56

theorem seg34_rung57 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34049 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX57 rho : Seg34.F), (seg34AccY57 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34976 : Seg34.F), (rho 34977 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX57 rho : Seg34.F), (seg34AccY57 rho : Seg34.F)⟩
        ⟨(rho 34976 : Seg34.F), (rho 34977 : Seg34.F)⟩
        ⟨(seg34AccX58 rho : Seg34.F), (seg34AccY58 rho : Seg34.F)⟩
        ⟨(rho 34989 : Seg34.F), (rho 34990 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p46, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3706, r3707, r3708, r3709, r3710, r3711, r3712, r3713, r3714, r3715, r3716, r3717, r3718, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3706 Seg34.relationLc320 Seg34.relationLc320Part0 Seg34.relationLc320Part1 Seg34.relationLc320Part2 Seg34.relationLc320Part3 at r3706
  unfold Seg34.relationRow3707 Seg34.relationLc321 Seg34.relationLc321Part0 Seg34.relationLc321Part1 at r3707
  unfold Seg34.relationRow3708 Seg34.relationLc322 Seg34.relationLc322Part0 Seg34.relationLc322Part1 at r3708
  unfold Seg34.relationRow3709 at r3709
  unfold Seg34.relationRow3710 at r3710
  unfold Seg34.relationRow3711 at r3711
  unfold Seg34.relationRow3712 Seg34.relationLc323 Seg34.relationLc323Part0 Seg34.relationLc323Part1 at r3712
  unfold Seg34.relationRow3713 Seg34.relationLc324 Seg34.relationLc324Part0 Seg34.relationLc324Part1 at r3713
  unfold Seg34.relationRow3714 at r3714
  unfold Seg34.relationRow3715 at r3715
  unfold Seg34.relationRow3716 at r3716
  unfold Seg34.relationRow3717 at r3717
  unfold Seg34.relationRow3718 at r3718
  have hrung57 (bit : Bool) (hbit : rho 34049 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX57 rho : Seg34.F), (seg34AccY57 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34976 : Seg34.F), (rho 34977 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX57 rho : Seg34.F), (seg34AccY57 rho : Seg34.F)⟩
        ⟨(rho 34976 : Seg34.F), (rho 34977 : Seg34.F)⟩
        ⟨(seg34AccX58 rho : Seg34.F), (seg34AccY58 rho : Seg34.F)⟩
        ⟨(rho 34989 : Seg34.F), (rho 34990 : Seg34.F)⟩ := by
    have ha0 : (rho 34976 + rho 34977) * (seg34AccX57 rho + seg34AccY57 rho) = rho 34978 := by
      rw [seg34LadderFlatX57_eq, seg34LadderFlatY57_eq]
      unfold seg34LadderFlatX57 seg34LadderFlatY57
      linear_combination r3706
    have ha1 : rho 34977 * seg34AccX57 rho = rho 34979 := by
      rw [seg34LadderFlatX57_eq]
      unfold seg34LadderFlatX57
      linear_combination r3707
    have ha2 : rho 34976 * seg34AccY57 rho = rho 34980 := by
      rw [seg34LadderFlatY57_eq]
      unfold seg34LadderFlatY57
      linear_combination r3708
    have ha3 : 3021 * rho 34979 * rho 34980 = rho 34981 := by
      linear_combination r3709
    have ha4 : rho 34982 * (1 + rho 34981) = rho 34979 + rho 34980 := by
      linear_combination r3710
    have ha5 : rho 34983 * (1 - rho 34981) = rho 34978 - rho 34979 - rho 34980 := by
      linear_combination r3711
    have haddx :
        rho 34982 * (1 + 3021 * (rho 34977 * seg34AccX57 rho) * (rho 34976 * seg34AccY57 rho)) =
          rho 34977 * seg34AccX57 rho + rho 34976 * seg34AccY57 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34983 * (1 - 3021 * (rho 34977 * seg34AccX57 rho) * (rho 34976 * seg34AccY57 rho)) =
          (-1) * (rho 34977 * seg34AccX57 rho) - rho 34976 * seg34AccY57 rho +
            (seg34AccY57 rho - seg34AccX57 rho * (-1)) * (rho 34976 + rho 34977) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34983 * (1 - rho 34981) = rho 34978 - rho 34979 - rho 34980 := ha5
        _ = (-1) * rho 34979 - rho 34980 + (seg34AccY57 rho - seg34AccX57 rho * (-1)) * (rho 34976 + rho 34977) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX58 rho = seg34AccX57 rho - Bool.toZMod bit * (seg34AccX57 rho - rho 34982) := by
      have hd : rho 34984 = Bool.toZMod bit * (rho 34982 - seg34AccX57 rho) := by
        rw [← hbit, seg34LadderFlatX57_eq]
        unfold seg34LadderFlatX57
        linear_combination -r3712
      unfold seg34AccX58
      linear_combination hd
    have hsely : seg34AccY58 rho = seg34AccY57 rho - Bool.toZMod bit * (seg34AccY57 rho - rho 34983) := by
      have hd : rho 34985 = Bool.toZMod bit * (rho 34983 - seg34AccY57 rho) := by
        rw [← hbit, seg34LadderFlatY57_eq]
        unfold seg34LadderFlatY57
        linear_combination -r3713
      unfold seg34AccY58
      linear_combination hd
    have hd0 : rho 34976 * rho 34977 = rho 34986 := by linear_combination r3714
    have hd1 : rho 34976 * rho 34976 = rho 34987 := by linear_combination r3715
    have hd2 : rho 34977 * rho 34977 = rho 34988 := by linear_combination r3716
    have hd3 : rho 34989 * (rho 34977 * rho 34977 + rho 34976 * rho 34976 * (-1)) = 2 * (rho 34976 * rho 34977) := by
      rw [hd0, hd1, hd2]
      linear_combination r3717
    have hd4 : rho 34990 * (2 - (rho 34977 * rho 34977 + rho 34976 * rho 34976 * (-1))) = rho 34977 * rho 34977 - rho 34976 * rho 34976 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3718
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX57 rho : Seg34.F), (seg34AccY57 rho : Seg34.F)⟩
      ⟨(rho 34976 : Seg34.F), (rho 34977 : Seg34.F)⟩
      ⟨(rho 34982 : Seg34.F), (rho 34983 : Seg34.F)⟩
      ⟨(seg34AccX58 rho : Seg34.F), (seg34AccY58 rho : Seg34.F)⟩
      ⟨(rho 34989 : Seg34.F), (rho 34990 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung57

theorem seg34_rung58 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34050 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX58 rho : Seg34.F), (seg34AccY58 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34989 : Seg34.F), (rho 34990 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX58 rho : Seg34.F), (seg34AccY58 rho : Seg34.F)⟩
        ⟨(rho 34989 : Seg34.F), (rho 34990 : Seg34.F)⟩
        ⟨(seg34AccX59 rho : Seg34.F), (seg34AccY59 rho : Seg34.F)⟩
        ⟨(rho 35002 : Seg34.F), (rho 35003 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p46, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3719, r3720, r3721, r3722, r3723, r3724, r3725, r3726, r3727, r3728, r3729, r3730, r3731, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3719 Seg34.relationLc325 Seg34.relationLc325Part0 Seg34.relationLc325Part1 Seg34.relationLc325Part2 Seg34.relationLc325Part3 at r3719
  unfold Seg34.relationRow3720 Seg34.relationLc326 Seg34.relationLc326Part0 Seg34.relationLc326Part1 at r3720
  unfold Seg34.relationRow3721 Seg34.relationLc327 Seg34.relationLc327Part0 Seg34.relationLc327Part1 at r3721
  unfold Seg34.relationRow3722 at r3722
  unfold Seg34.relationRow3723 at r3723
  unfold Seg34.relationRow3724 at r3724
  unfold Seg34.relationRow3725 Seg34.relationLc328 Seg34.relationLc328Part0 Seg34.relationLc328Part1 at r3725
  unfold Seg34.relationRow3726 Seg34.relationLc329 Seg34.relationLc329Part0 Seg34.relationLc329Part1 at r3726
  unfold Seg34.relationRow3727 at r3727
  unfold Seg34.relationRow3728 at r3728
  unfold Seg34.relationRow3729 at r3729
  unfold Seg34.relationRow3730 at r3730
  unfold Seg34.relationRow3731 at r3731
  have hrung58 (bit : Bool) (hbit : rho 34050 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX58 rho : Seg34.F), (seg34AccY58 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34989 : Seg34.F), (rho 34990 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX58 rho : Seg34.F), (seg34AccY58 rho : Seg34.F)⟩
        ⟨(rho 34989 : Seg34.F), (rho 34990 : Seg34.F)⟩
        ⟨(seg34AccX59 rho : Seg34.F), (seg34AccY59 rho : Seg34.F)⟩
        ⟨(rho 35002 : Seg34.F), (rho 35003 : Seg34.F)⟩ := by
    have ha0 : (rho 34989 + rho 34990) * (seg34AccX58 rho + seg34AccY58 rho) = rho 34991 := by
      rw [seg34LadderFlatX58_eq, seg34LadderFlatY58_eq]
      unfold seg34LadderFlatX58 seg34LadderFlatY58
      linear_combination r3719
    have ha1 : rho 34990 * seg34AccX58 rho = rho 34992 := by
      rw [seg34LadderFlatX58_eq]
      unfold seg34LadderFlatX58
      linear_combination r3720
    have ha2 : rho 34989 * seg34AccY58 rho = rho 34993 := by
      rw [seg34LadderFlatY58_eq]
      unfold seg34LadderFlatY58
      linear_combination r3721
    have ha3 : 3021 * rho 34992 * rho 34993 = rho 34994 := by
      linear_combination r3722
    have ha4 : rho 34995 * (1 + rho 34994) = rho 34992 + rho 34993 := by
      linear_combination r3723
    have ha5 : rho 34996 * (1 - rho 34994) = rho 34991 - rho 34992 - rho 34993 := by
      linear_combination r3724
    have haddx :
        rho 34995 * (1 + 3021 * (rho 34990 * seg34AccX58 rho) * (rho 34989 * seg34AccY58 rho)) =
          rho 34990 * seg34AccX58 rho + rho 34989 * seg34AccY58 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34996 * (1 - 3021 * (rho 34990 * seg34AccX58 rho) * (rho 34989 * seg34AccY58 rho)) =
          (-1) * (rho 34990 * seg34AccX58 rho) - rho 34989 * seg34AccY58 rho +
            (seg34AccY58 rho - seg34AccX58 rho * (-1)) * (rho 34989 + rho 34990) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34996 * (1 - rho 34994) = rho 34991 - rho 34992 - rho 34993 := ha5
        _ = (-1) * rho 34992 - rho 34993 + (seg34AccY58 rho - seg34AccX58 rho * (-1)) * (rho 34989 + rho 34990) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX59 rho = seg34AccX58 rho - Bool.toZMod bit * (seg34AccX58 rho - rho 34995) := by
      have hd : rho 34997 = Bool.toZMod bit * (rho 34995 - seg34AccX58 rho) := by
        rw [← hbit, seg34LadderFlatX58_eq]
        unfold seg34LadderFlatX58
        linear_combination -r3725
      unfold seg34AccX59
      linear_combination hd
    have hsely : seg34AccY59 rho = seg34AccY58 rho - Bool.toZMod bit * (seg34AccY58 rho - rho 34996) := by
      have hd : rho 34998 = Bool.toZMod bit * (rho 34996 - seg34AccY58 rho) := by
        rw [← hbit, seg34LadderFlatY58_eq]
        unfold seg34LadderFlatY58
        linear_combination -r3726
      unfold seg34AccY59
      linear_combination hd
    have hd0 : rho 34989 * rho 34990 = rho 34999 := by linear_combination r3727
    have hd1 : rho 34989 * rho 34989 = rho 35000 := by linear_combination r3728
    have hd2 : rho 34990 * rho 34990 = rho 35001 := by linear_combination r3729
    have hd3 : rho 35002 * (rho 34990 * rho 34990 + rho 34989 * rho 34989 * (-1)) = 2 * (rho 34989 * rho 34990) := by
      rw [hd0, hd1, hd2]
      linear_combination r3730
    have hd4 : rho 35003 * (2 - (rho 34990 * rho 34990 + rho 34989 * rho 34989 * (-1))) = rho 34990 * rho 34990 - rho 34989 * rho 34989 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3731
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX58 rho : Seg34.F), (seg34AccY58 rho : Seg34.F)⟩
      ⟨(rho 34989 : Seg34.F), (rho 34990 : Seg34.F)⟩
      ⟨(rho 34995 : Seg34.F), (rho 34996 : Seg34.F)⟩
      ⟨(seg34AccX59 rho : Seg34.F), (seg34AccY59 rho : Seg34.F)⟩
      ⟨(rho 35002 : Seg34.F), (rho 35003 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung58

theorem seg34_rung59 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34051 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX59 rho : Seg34.F), (seg34AccY59 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35002 : Seg34.F), (rho 35003 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX59 rho : Seg34.F), (seg34AccY59 rho : Seg34.F)⟩
        ⟨(rho 35002 : Seg34.F), (rho 35003 : Seg34.F)⟩
        ⟨(seg34AccX60 rho : Seg34.F), (seg34AccY60 rho : Seg34.F)⟩
        ⟨(rho 35015 : Seg34.F), (rho 35016 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p46, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3732, r3733, r3734, r3735, r3736, r3737, r3738, r3739, r3740, r3741, r3742, r3743, r3744, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3732 Seg34.relationLc330 Seg34.relationLc330Part0 Seg34.relationLc330Part1 Seg34.relationLc330Part2 Seg34.relationLc330Part3 at r3732
  unfold Seg34.relationRow3733 Seg34.relationLc331 Seg34.relationLc331Part0 Seg34.relationLc331Part1 at r3733
  unfold Seg34.relationRow3734 Seg34.relationLc332 Seg34.relationLc332Part0 Seg34.relationLc332Part1 at r3734
  unfold Seg34.relationRow3735 at r3735
  unfold Seg34.relationRow3736 at r3736
  unfold Seg34.relationRow3737 at r3737
  unfold Seg34.relationRow3738 Seg34.relationLc333 Seg34.relationLc333Part0 Seg34.relationLc333Part1 at r3738
  unfold Seg34.relationRow3739 Seg34.relationLc334 Seg34.relationLc334Part0 Seg34.relationLc334Part1 at r3739
  unfold Seg34.relationRow3740 at r3740
  unfold Seg34.relationRow3741 at r3741
  unfold Seg34.relationRow3742 at r3742
  unfold Seg34.relationRow3743 at r3743
  unfold Seg34.relationRow3744 at r3744
  have hrung59 (bit : Bool) (hbit : rho 34051 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX59 rho : Seg34.F), (seg34AccY59 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35002 : Seg34.F), (rho 35003 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX59 rho : Seg34.F), (seg34AccY59 rho : Seg34.F)⟩
        ⟨(rho 35002 : Seg34.F), (rho 35003 : Seg34.F)⟩
        ⟨(seg34AccX60 rho : Seg34.F), (seg34AccY60 rho : Seg34.F)⟩
        ⟨(rho 35015 : Seg34.F), (rho 35016 : Seg34.F)⟩ := by
    have ha0 : (rho 35002 + rho 35003) * (seg34AccX59 rho + seg34AccY59 rho) = rho 35004 := by
      rw [seg34LadderFlatX59_eq, seg34LadderFlatY59_eq]
      unfold seg34LadderFlatX59 seg34LadderFlatY59
      linear_combination r3732
    have ha1 : rho 35003 * seg34AccX59 rho = rho 35005 := by
      rw [seg34LadderFlatX59_eq]
      unfold seg34LadderFlatX59
      linear_combination r3733
    have ha2 : rho 35002 * seg34AccY59 rho = rho 35006 := by
      rw [seg34LadderFlatY59_eq]
      unfold seg34LadderFlatY59
      linear_combination r3734
    have ha3 : 3021 * rho 35005 * rho 35006 = rho 35007 := by
      linear_combination r3735
    have ha4 : rho 35008 * (1 + rho 35007) = rho 35005 + rho 35006 := by
      linear_combination r3736
    have ha5 : rho 35009 * (1 - rho 35007) = rho 35004 - rho 35005 - rho 35006 := by
      linear_combination r3737
    have haddx :
        rho 35008 * (1 + 3021 * (rho 35003 * seg34AccX59 rho) * (rho 35002 * seg34AccY59 rho)) =
          rho 35003 * seg34AccX59 rho + rho 35002 * seg34AccY59 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35009 * (1 - 3021 * (rho 35003 * seg34AccX59 rho) * (rho 35002 * seg34AccY59 rho)) =
          (-1) * (rho 35003 * seg34AccX59 rho) - rho 35002 * seg34AccY59 rho +
            (seg34AccY59 rho - seg34AccX59 rho * (-1)) * (rho 35002 + rho 35003) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35009 * (1 - rho 35007) = rho 35004 - rho 35005 - rho 35006 := ha5
        _ = (-1) * rho 35005 - rho 35006 + (seg34AccY59 rho - seg34AccX59 rho * (-1)) * (rho 35002 + rho 35003) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX60 rho = seg34AccX59 rho - Bool.toZMod bit * (seg34AccX59 rho - rho 35008) := by
      have hd : rho 35010 = Bool.toZMod bit * (rho 35008 - seg34AccX59 rho) := by
        rw [← hbit, seg34LadderFlatX59_eq]
        unfold seg34LadderFlatX59
        linear_combination -r3738
      unfold seg34AccX60
      linear_combination hd
    have hsely : seg34AccY60 rho = seg34AccY59 rho - Bool.toZMod bit * (seg34AccY59 rho - rho 35009) := by
      have hd : rho 35011 = Bool.toZMod bit * (rho 35009 - seg34AccY59 rho) := by
        rw [← hbit, seg34LadderFlatY59_eq]
        unfold seg34LadderFlatY59
        linear_combination -r3739
      unfold seg34AccY60
      linear_combination hd
    have hd0 : rho 35002 * rho 35003 = rho 35012 := by linear_combination r3740
    have hd1 : rho 35002 * rho 35002 = rho 35013 := by linear_combination r3741
    have hd2 : rho 35003 * rho 35003 = rho 35014 := by linear_combination r3742
    have hd3 : rho 35015 * (rho 35003 * rho 35003 + rho 35002 * rho 35002 * (-1)) = 2 * (rho 35002 * rho 35003) := by
      rw [hd0, hd1, hd2]
      linear_combination r3743
    have hd4 : rho 35016 * (2 - (rho 35003 * rho 35003 + rho 35002 * rho 35002 * (-1))) = rho 35003 * rho 35003 - rho 35002 * rho 35002 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3744
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX59 rho : Seg34.F), (seg34AccY59 rho : Seg34.F)⟩
      ⟨(rho 35002 : Seg34.F), (rho 35003 : Seg34.F)⟩
      ⟨(rho 35008 : Seg34.F), (rho 35009 : Seg34.F)⟩
      ⟨(seg34AccX60 rho : Seg34.F), (seg34AccY60 rho : Seg34.F)⟩
      ⟨(rho 35015 : Seg34.F), (rho 35016 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung59

theorem seg34_rung60 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34052 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX60 rho : Seg34.F), (seg34AccY60 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35015 : Seg34.F), (rho 35016 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX60 rho : Seg34.F), (seg34AccY60 rho : Seg34.F)⟩
        ⟨(rho 35015 : Seg34.F), (rho 35016 : Seg34.F)⟩
        ⟨(seg34AccX61 rho : Seg34.F), (seg34AccY61 rho : Seg34.F)⟩
        ⟨(rho 35028 : Seg34.F), (rho 35029 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p46, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3745, r3746, r3747, r3748, r3749, r3750, r3751, r3752, r3753, r3754, r3755, r3756, r3757, _, _⟩
  unfold Seg34.relationRow3745 Seg34.relationLc335 Seg34.relationLc335Part0 Seg34.relationLc335Part1 Seg34.relationLc335Part2 Seg34.relationLc335Part3 at r3745
  unfold Seg34.relationRow3746 Seg34.relationLc336 Seg34.relationLc336Part0 Seg34.relationLc336Part1 at r3746
  unfold Seg34.relationRow3747 Seg34.relationLc337 Seg34.relationLc337Part0 Seg34.relationLc337Part1 at r3747
  unfold Seg34.relationRow3748 at r3748
  unfold Seg34.relationRow3749 at r3749
  unfold Seg34.relationRow3750 at r3750
  unfold Seg34.relationRow3751 Seg34.relationLc338 Seg34.relationLc338Part0 Seg34.relationLc338Part1 at r3751
  unfold Seg34.relationRow3752 Seg34.relationLc339 Seg34.relationLc339Part0 Seg34.relationLc339Part1 at r3752
  unfold Seg34.relationRow3753 at r3753
  unfold Seg34.relationRow3754 at r3754
  unfold Seg34.relationRow3755 at r3755
  unfold Seg34.relationRow3756 at r3756
  unfold Seg34.relationRow3757 at r3757
  have hrung60 (bit : Bool) (hbit : rho 34052 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX60 rho : Seg34.F), (seg34AccY60 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35015 : Seg34.F), (rho 35016 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX60 rho : Seg34.F), (seg34AccY60 rho : Seg34.F)⟩
        ⟨(rho 35015 : Seg34.F), (rho 35016 : Seg34.F)⟩
        ⟨(seg34AccX61 rho : Seg34.F), (seg34AccY61 rho : Seg34.F)⟩
        ⟨(rho 35028 : Seg34.F), (rho 35029 : Seg34.F)⟩ := by
    have ha0 : (rho 35015 + rho 35016) * (seg34AccX60 rho + seg34AccY60 rho) = rho 35017 := by
      rw [seg34LadderFlatX60_eq, seg34LadderFlatY60_eq]
      unfold seg34LadderFlatX60 seg34LadderFlatY60
      linear_combination r3745
    have ha1 : rho 35016 * seg34AccX60 rho = rho 35018 := by
      rw [seg34LadderFlatX60_eq]
      unfold seg34LadderFlatX60
      linear_combination r3746
    have ha2 : rho 35015 * seg34AccY60 rho = rho 35019 := by
      rw [seg34LadderFlatY60_eq]
      unfold seg34LadderFlatY60
      linear_combination r3747
    have ha3 : 3021 * rho 35018 * rho 35019 = rho 35020 := by
      linear_combination r3748
    have ha4 : rho 35021 * (1 + rho 35020) = rho 35018 + rho 35019 := by
      linear_combination r3749
    have ha5 : rho 35022 * (1 - rho 35020) = rho 35017 - rho 35018 - rho 35019 := by
      linear_combination r3750
    have haddx :
        rho 35021 * (1 + 3021 * (rho 35016 * seg34AccX60 rho) * (rho 35015 * seg34AccY60 rho)) =
          rho 35016 * seg34AccX60 rho + rho 35015 * seg34AccY60 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35022 * (1 - 3021 * (rho 35016 * seg34AccX60 rho) * (rho 35015 * seg34AccY60 rho)) =
          (-1) * (rho 35016 * seg34AccX60 rho) - rho 35015 * seg34AccY60 rho +
            (seg34AccY60 rho - seg34AccX60 rho * (-1)) * (rho 35015 + rho 35016) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35022 * (1 - rho 35020) = rho 35017 - rho 35018 - rho 35019 := ha5
        _ = (-1) * rho 35018 - rho 35019 + (seg34AccY60 rho - seg34AccX60 rho * (-1)) * (rho 35015 + rho 35016) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX61 rho = seg34AccX60 rho - Bool.toZMod bit * (seg34AccX60 rho - rho 35021) := by
      have hd : rho 35023 = Bool.toZMod bit * (rho 35021 - seg34AccX60 rho) := by
        rw [← hbit, seg34LadderFlatX60_eq]
        unfold seg34LadderFlatX60
        linear_combination -r3751
      unfold seg34AccX61
      linear_combination hd
    have hsely : seg34AccY61 rho = seg34AccY60 rho - Bool.toZMod bit * (seg34AccY60 rho - rho 35022) := by
      have hd : rho 35024 = Bool.toZMod bit * (rho 35022 - seg34AccY60 rho) := by
        rw [← hbit, seg34LadderFlatY60_eq]
        unfold seg34LadderFlatY60
        linear_combination -r3752
      unfold seg34AccY61
      linear_combination hd
    have hd0 : rho 35015 * rho 35016 = rho 35025 := by linear_combination r3753
    have hd1 : rho 35015 * rho 35015 = rho 35026 := by linear_combination r3754
    have hd2 : rho 35016 * rho 35016 = rho 35027 := by linear_combination r3755
    have hd3 : rho 35028 * (rho 35016 * rho 35016 + rho 35015 * rho 35015 * (-1)) = 2 * (rho 35015 * rho 35016) := by
      rw [hd0, hd1, hd2]
      linear_combination r3756
    have hd4 : rho 35029 * (2 - (rho 35016 * rho 35016 + rho 35015 * rho 35015 * (-1))) = rho 35016 * rho 35016 - rho 35015 * rho 35015 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3757
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX60 rho : Seg34.F), (seg34AccY60 rho : Seg34.F)⟩
      ⟨(rho 35015 : Seg34.F), (rho 35016 : Seg34.F)⟩
      ⟨(rho 35021 : Seg34.F), (rho 35022 : Seg34.F)⟩
      ⟨(seg34AccX61 rho : Seg34.F), (seg34AccY61 rho : Seg34.F)⟩
      ⟨(rho 35028 : Seg34.F), (rho 35029 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung60

theorem seg34_rung61 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34053 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX61 rho : Seg34.F), (seg34AccY61 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35028 : Seg34.F), (rho 35029 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX61 rho : Seg34.F), (seg34AccY61 rho : Seg34.F)⟩
        ⟨(rho 35028 : Seg34.F), (rho 35029 : Seg34.F)⟩
        ⟨(seg34AccX62 rho : Seg34.F), (seg34AccY62 rho : Seg34.F)⟩
        ⟨(rho 35041 : Seg34.F), (rho 35042 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p46, p47, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3758, r3759⟩
  unfold Seg34.relationPart47 at p47
  rcases p47 with ⟨r3760, r3761, r3762, r3763, r3764, r3765, r3766, r3767, r3768, r3769, r3770, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3758 Seg34.relationLc340 Seg34.relationLc340Part0 Seg34.relationLc340Part1 Seg34.relationLc340Part2 Seg34.relationLc340Part3 at r3758
  unfold Seg34.relationRow3759 Seg34.relationLc341 Seg34.relationLc341Part0 Seg34.relationLc341Part1 at r3759
  unfold Seg34.relationRow3760 Seg34.relationLc342 Seg34.relationLc342Part0 Seg34.relationLc342Part1 at r3760
  unfold Seg34.relationRow3761 at r3761
  unfold Seg34.relationRow3762 at r3762
  unfold Seg34.relationRow3763 at r3763
  unfold Seg34.relationRow3764 Seg34.relationLc343 Seg34.relationLc343Part0 Seg34.relationLc343Part1 at r3764
  unfold Seg34.relationRow3765 Seg34.relationLc344 Seg34.relationLc344Part0 Seg34.relationLc344Part1 at r3765
  unfold Seg34.relationRow3766 at r3766
  unfold Seg34.relationRow3767 at r3767
  unfold Seg34.relationRow3768 at r3768
  unfold Seg34.relationRow3769 at r3769
  unfold Seg34.relationRow3770 at r3770
  have hrung61 (bit : Bool) (hbit : rho 34053 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX61 rho : Seg34.F), (seg34AccY61 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35028 : Seg34.F), (rho 35029 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX61 rho : Seg34.F), (seg34AccY61 rho : Seg34.F)⟩
        ⟨(rho 35028 : Seg34.F), (rho 35029 : Seg34.F)⟩
        ⟨(seg34AccX62 rho : Seg34.F), (seg34AccY62 rho : Seg34.F)⟩
        ⟨(rho 35041 : Seg34.F), (rho 35042 : Seg34.F)⟩ := by
    have ha0 : (rho 35028 + rho 35029) * (seg34AccX61 rho + seg34AccY61 rho) = rho 35030 := by
      rw [seg34LadderFlatX61_eq, seg34LadderFlatY61_eq]
      unfold seg34LadderFlatX61 seg34LadderFlatY61
      linear_combination r3758
    have ha1 : rho 35029 * seg34AccX61 rho = rho 35031 := by
      rw [seg34LadderFlatX61_eq]
      unfold seg34LadderFlatX61
      linear_combination r3759
    have ha2 : rho 35028 * seg34AccY61 rho = rho 35032 := by
      rw [seg34LadderFlatY61_eq]
      unfold seg34LadderFlatY61
      linear_combination r3760
    have ha3 : 3021 * rho 35031 * rho 35032 = rho 35033 := by
      linear_combination r3761
    have ha4 : rho 35034 * (1 + rho 35033) = rho 35031 + rho 35032 := by
      linear_combination r3762
    have ha5 : rho 35035 * (1 - rho 35033) = rho 35030 - rho 35031 - rho 35032 := by
      linear_combination r3763
    have haddx :
        rho 35034 * (1 + 3021 * (rho 35029 * seg34AccX61 rho) * (rho 35028 * seg34AccY61 rho)) =
          rho 35029 * seg34AccX61 rho + rho 35028 * seg34AccY61 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35035 * (1 - 3021 * (rho 35029 * seg34AccX61 rho) * (rho 35028 * seg34AccY61 rho)) =
          (-1) * (rho 35029 * seg34AccX61 rho) - rho 35028 * seg34AccY61 rho +
            (seg34AccY61 rho - seg34AccX61 rho * (-1)) * (rho 35028 + rho 35029) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35035 * (1 - rho 35033) = rho 35030 - rho 35031 - rho 35032 := ha5
        _ = (-1) * rho 35031 - rho 35032 + (seg34AccY61 rho - seg34AccX61 rho * (-1)) * (rho 35028 + rho 35029) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX62 rho = seg34AccX61 rho - Bool.toZMod bit * (seg34AccX61 rho - rho 35034) := by
      have hd : rho 35036 = Bool.toZMod bit * (rho 35034 - seg34AccX61 rho) := by
        rw [← hbit, seg34LadderFlatX61_eq]
        unfold seg34LadderFlatX61
        linear_combination -r3764
      unfold seg34AccX62
      linear_combination hd
    have hsely : seg34AccY62 rho = seg34AccY61 rho - Bool.toZMod bit * (seg34AccY61 rho - rho 35035) := by
      have hd : rho 35037 = Bool.toZMod bit * (rho 35035 - seg34AccY61 rho) := by
        rw [← hbit, seg34LadderFlatY61_eq]
        unfold seg34LadderFlatY61
        linear_combination -r3765
      unfold seg34AccY62
      linear_combination hd
    have hd0 : rho 35028 * rho 35029 = rho 35038 := by linear_combination r3766
    have hd1 : rho 35028 * rho 35028 = rho 35039 := by linear_combination r3767
    have hd2 : rho 35029 * rho 35029 = rho 35040 := by linear_combination r3768
    have hd3 : rho 35041 * (rho 35029 * rho 35029 + rho 35028 * rho 35028 * (-1)) = 2 * (rho 35028 * rho 35029) := by
      rw [hd0, hd1, hd2]
      linear_combination r3769
    have hd4 : rho 35042 * (2 - (rho 35029 * rho 35029 + rho 35028 * rho 35028 * (-1))) = rho 35029 * rho 35029 - rho 35028 * rho 35028 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3770
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX61 rho : Seg34.F), (seg34AccY61 rho : Seg34.F)⟩
      ⟨(rho 35028 : Seg34.F), (rho 35029 : Seg34.F)⟩
      ⟨(rho 35034 : Seg34.F), (rho 35035 : Seg34.F)⟩
      ⟨(seg34AccX62 rho : Seg34.F), (seg34AccY62 rho : Seg34.F)⟩
      ⟨(rho 35041 : Seg34.F), (rho 35042 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung61

theorem seg34_rung62 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34054 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX62 rho : Seg34.F), (seg34AccY62 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35041 : Seg34.F), (rho 35042 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX62 rho : Seg34.F), (seg34AccY62 rho : Seg34.F)⟩
        ⟨(rho 35041 : Seg34.F), (rho 35042 : Seg34.F)⟩
        ⟨(seg34AccX63 rho : Seg34.F), (seg34AccY63 rho : Seg34.F)⟩
        ⟨(rho 35054 : Seg34.F), (rho 35055 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p47, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, r3771, r3772, r3773, r3774, r3775, r3776, r3777, r3778, r3779, r3780, r3781, r3782, r3783, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3771 Seg34.relationLc345 Seg34.relationLc345Part0 Seg34.relationLc345Part1 Seg34.relationLc345Part2 Seg34.relationLc345Part3 at r3771
  unfold Seg34.relationRow3772 Seg34.relationLc346 Seg34.relationLc346Part0 Seg34.relationLc346Part1 at r3772
  unfold Seg34.relationRow3773 Seg34.relationLc347 Seg34.relationLc347Part0 Seg34.relationLc347Part1 at r3773
  unfold Seg34.relationRow3774 at r3774
  unfold Seg34.relationRow3775 at r3775
  unfold Seg34.relationRow3776 at r3776
  unfold Seg34.relationRow3777 Seg34.relationLc348 Seg34.relationLc348Part0 Seg34.relationLc348Part1 at r3777
  unfold Seg34.relationRow3778 Seg34.relationLc349 Seg34.relationLc349Part0 Seg34.relationLc349Part1 at r3778
  unfold Seg34.relationRow3779 at r3779
  unfold Seg34.relationRow3780 at r3780
  unfold Seg34.relationRow3781 at r3781
  unfold Seg34.relationRow3782 at r3782
  unfold Seg34.relationRow3783 at r3783
  have hrung62 (bit : Bool) (hbit : rho 34054 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX62 rho : Seg34.F), (seg34AccY62 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35041 : Seg34.F), (rho 35042 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX62 rho : Seg34.F), (seg34AccY62 rho : Seg34.F)⟩
        ⟨(rho 35041 : Seg34.F), (rho 35042 : Seg34.F)⟩
        ⟨(seg34AccX63 rho : Seg34.F), (seg34AccY63 rho : Seg34.F)⟩
        ⟨(rho 35054 : Seg34.F), (rho 35055 : Seg34.F)⟩ := by
    have ha0 : (rho 35041 + rho 35042) * (seg34AccX62 rho + seg34AccY62 rho) = rho 35043 := by
      rw [seg34LadderFlatX62_eq, seg34LadderFlatY62_eq]
      unfold seg34LadderFlatX62 seg34LadderFlatY62
      linear_combination r3771
    have ha1 : rho 35042 * seg34AccX62 rho = rho 35044 := by
      rw [seg34LadderFlatX62_eq]
      unfold seg34LadderFlatX62
      linear_combination r3772
    have ha2 : rho 35041 * seg34AccY62 rho = rho 35045 := by
      rw [seg34LadderFlatY62_eq]
      unfold seg34LadderFlatY62
      linear_combination r3773
    have ha3 : 3021 * rho 35044 * rho 35045 = rho 35046 := by
      linear_combination r3774
    have ha4 : rho 35047 * (1 + rho 35046) = rho 35044 + rho 35045 := by
      linear_combination r3775
    have ha5 : rho 35048 * (1 - rho 35046) = rho 35043 - rho 35044 - rho 35045 := by
      linear_combination r3776
    have haddx :
        rho 35047 * (1 + 3021 * (rho 35042 * seg34AccX62 rho) * (rho 35041 * seg34AccY62 rho)) =
          rho 35042 * seg34AccX62 rho + rho 35041 * seg34AccY62 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35048 * (1 - 3021 * (rho 35042 * seg34AccX62 rho) * (rho 35041 * seg34AccY62 rho)) =
          (-1) * (rho 35042 * seg34AccX62 rho) - rho 35041 * seg34AccY62 rho +
            (seg34AccY62 rho - seg34AccX62 rho * (-1)) * (rho 35041 + rho 35042) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35048 * (1 - rho 35046) = rho 35043 - rho 35044 - rho 35045 := ha5
        _ = (-1) * rho 35044 - rho 35045 + (seg34AccY62 rho - seg34AccX62 rho * (-1)) * (rho 35041 + rho 35042) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX63 rho = seg34AccX62 rho - Bool.toZMod bit * (seg34AccX62 rho - rho 35047) := by
      have hd : rho 35049 = Bool.toZMod bit * (rho 35047 - seg34AccX62 rho) := by
        rw [← hbit, seg34LadderFlatX62_eq]
        unfold seg34LadderFlatX62
        linear_combination -r3777
      unfold seg34AccX63
      linear_combination hd
    have hsely : seg34AccY63 rho = seg34AccY62 rho - Bool.toZMod bit * (seg34AccY62 rho - rho 35048) := by
      have hd : rho 35050 = Bool.toZMod bit * (rho 35048 - seg34AccY62 rho) := by
        rw [← hbit, seg34LadderFlatY62_eq]
        unfold seg34LadderFlatY62
        linear_combination -r3778
      unfold seg34AccY63
      linear_combination hd
    have hd0 : rho 35041 * rho 35042 = rho 35051 := by linear_combination r3779
    have hd1 : rho 35041 * rho 35041 = rho 35052 := by linear_combination r3780
    have hd2 : rho 35042 * rho 35042 = rho 35053 := by linear_combination r3781
    have hd3 : rho 35054 * (rho 35042 * rho 35042 + rho 35041 * rho 35041 * (-1)) = 2 * (rho 35041 * rho 35042) := by
      rw [hd0, hd1, hd2]
      linear_combination r3782
    have hd4 : rho 35055 * (2 - (rho 35042 * rho 35042 + rho 35041 * rho 35041 * (-1))) = rho 35042 * rho 35042 - rho 35041 * rho 35041 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3783
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX62 rho : Seg34.F), (seg34AccY62 rho : Seg34.F)⟩
      ⟨(rho 35041 : Seg34.F), (rho 35042 : Seg34.F)⟩
      ⟨(rho 35047 : Seg34.F), (rho 35048 : Seg34.F)⟩
      ⟨(seg34AccX63 rho : Seg34.F), (seg34AccY63 rho : Seg34.F)⟩
      ⟨(rho 35054 : Seg34.F), (rho 35055 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung62

theorem seg34_rung63 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34055 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX63 rho : Seg34.F), (seg34AccY63 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35054 : Seg34.F), (rho 35055 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX63 rho : Seg34.F), (seg34AccY63 rho : Seg34.F)⟩
        ⟨(rho 35054 : Seg34.F), (rho 35055 : Seg34.F)⟩
        ⟨(seg34AccX64 rho : Seg34.F), (seg34AccY64 rho : Seg34.F)⟩
        ⟨(rho 35067 : Seg34.F), (rho 35068 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p47, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3784, r3785, r3786, r3787, r3788, r3789, r3790, r3791, r3792, r3793, r3794, r3795, r3796, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3784 Seg34.relationLc350 Seg34.relationLc350Part0 Seg34.relationLc350Part1 Seg34.relationLc350Part2 Seg34.relationLc350Part3 at r3784
  unfold Seg34.relationRow3785 Seg34.relationLc351 Seg34.relationLc351Part0 Seg34.relationLc351Part1 at r3785
  unfold Seg34.relationRow3786 Seg34.relationLc352 Seg34.relationLc352Part0 Seg34.relationLc352Part1 at r3786
  unfold Seg34.relationRow3787 at r3787
  unfold Seg34.relationRow3788 at r3788
  unfold Seg34.relationRow3789 at r3789
  unfold Seg34.relationRow3790 Seg34.relationLc353 Seg34.relationLc353Part0 Seg34.relationLc353Part1 at r3790
  unfold Seg34.relationRow3791 Seg34.relationLc354 Seg34.relationLc354Part0 Seg34.relationLc354Part1 Seg34.relationLc354Part2 at r3791
  unfold Seg34.relationRow3792 at r3792
  unfold Seg34.relationRow3793 at r3793
  unfold Seg34.relationRow3794 at r3794
  unfold Seg34.relationRow3795 at r3795
  unfold Seg34.relationRow3796 at r3796
  have hrung63 (bit : Bool) (hbit : rho 34055 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX63 rho : Seg34.F), (seg34AccY63 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35054 : Seg34.F), (rho 35055 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX63 rho : Seg34.F), (seg34AccY63 rho : Seg34.F)⟩
        ⟨(rho 35054 : Seg34.F), (rho 35055 : Seg34.F)⟩
        ⟨(seg34AccX64 rho : Seg34.F), (seg34AccY64 rho : Seg34.F)⟩
        ⟨(rho 35067 : Seg34.F), (rho 35068 : Seg34.F)⟩ := by
    have ha0 : (rho 35054 + rho 35055) * (seg34AccX63 rho + seg34AccY63 rho) = rho 35056 := by
      rw [seg34LadderFlatX63_eq, seg34LadderFlatY63_eq]
      unfold seg34LadderFlatX63 seg34LadderFlatY63
      linear_combination r3784
    have ha1 : rho 35055 * seg34AccX63 rho = rho 35057 := by
      rw [seg34LadderFlatX63_eq]
      unfold seg34LadderFlatX63
      linear_combination r3785
    have ha2 : rho 35054 * seg34AccY63 rho = rho 35058 := by
      rw [seg34LadderFlatY63_eq]
      unfold seg34LadderFlatY63
      linear_combination r3786
    have ha3 : 3021 * rho 35057 * rho 35058 = rho 35059 := by
      linear_combination r3787
    have ha4 : rho 35060 * (1 + rho 35059) = rho 35057 + rho 35058 := by
      linear_combination r3788
    have ha5 : rho 35061 * (1 - rho 35059) = rho 35056 - rho 35057 - rho 35058 := by
      linear_combination r3789
    have haddx :
        rho 35060 * (1 + 3021 * (rho 35055 * seg34AccX63 rho) * (rho 35054 * seg34AccY63 rho)) =
          rho 35055 * seg34AccX63 rho + rho 35054 * seg34AccY63 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35061 * (1 - 3021 * (rho 35055 * seg34AccX63 rho) * (rho 35054 * seg34AccY63 rho)) =
          (-1) * (rho 35055 * seg34AccX63 rho) - rho 35054 * seg34AccY63 rho +
            (seg34AccY63 rho - seg34AccX63 rho * (-1)) * (rho 35054 + rho 35055) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35061 * (1 - rho 35059) = rho 35056 - rho 35057 - rho 35058 := ha5
        _ = (-1) * rho 35057 - rho 35058 + (seg34AccY63 rho - seg34AccX63 rho * (-1)) * (rho 35054 + rho 35055) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX64 rho = seg34AccX63 rho - Bool.toZMod bit * (seg34AccX63 rho - rho 35060) := by
      have hd : rho 35062 = Bool.toZMod bit * (rho 35060 - seg34AccX63 rho) := by
        rw [← hbit, seg34LadderFlatX63_eq]
        unfold seg34LadderFlatX63
        linear_combination -r3790
      unfold seg34AccX64
      linear_combination hd
    have hsely : seg34AccY64 rho = seg34AccY63 rho - Bool.toZMod bit * (seg34AccY63 rho - rho 35061) := by
      have hd : rho 35063 = Bool.toZMod bit * (rho 35061 - seg34AccY63 rho) := by
        rw [← hbit, seg34LadderFlatY63_eq]
        unfold seg34LadderFlatY63
        linear_combination -r3791
      unfold seg34AccY64
      linear_combination hd
    have hd0 : rho 35054 * rho 35055 = rho 35064 := by linear_combination r3792
    have hd1 : rho 35054 * rho 35054 = rho 35065 := by linear_combination r3793
    have hd2 : rho 35055 * rho 35055 = rho 35066 := by linear_combination r3794
    have hd3 : rho 35067 * (rho 35055 * rho 35055 + rho 35054 * rho 35054 * (-1)) = 2 * (rho 35054 * rho 35055) := by
      rw [hd0, hd1, hd2]
      linear_combination r3795
    have hd4 : rho 35068 * (2 - (rho 35055 * rho 35055 + rho 35054 * rho 35054 * (-1))) = rho 35055 * rho 35055 - rho 35054 * rho 35054 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3796
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX63 rho : Seg34.F), (seg34AccY63 rho : Seg34.F)⟩
      ⟨(rho 35054 : Seg34.F), (rho 35055 : Seg34.F)⟩
      ⟨(rho 35060 : Seg34.F), (rho 35061 : Seg34.F)⟩
      ⟨(seg34AccX64 rho : Seg34.F), (seg34AccY64 rho : Seg34.F)⟩
      ⟨(rho 35067 : Seg34.F), (rho 35068 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung63

theorem seg34_hstep_c1 (rho : Nat -> Seg34.F) (h : Seg34.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (33992 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 32 ≤ i → i < 64 →
      EdwardsBridge.onCurve (seg34LadderAccState rho i) →
      EdwardsBridge.onCurve (seg34LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg34LadderAccState rho i) (seg34LadderCurState rho i)
        (seg34LadderAccState rho (i + 1)) (seg34LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg34_rung32 rho h bits[32]! (hbitAt 32 (by omega)) hacc hcur
  · exact seg34_rung33 rho h bits[33]! (hbitAt 33 (by omega)) hacc hcur
  · exact seg34_rung34 rho h bits[34]! (hbitAt 34 (by omega)) hacc hcur
  · exact seg34_rung35 rho h bits[35]! (hbitAt 35 (by omega)) hacc hcur
  · exact seg34_rung36 rho h bits[36]! (hbitAt 36 (by omega)) hacc hcur
  · exact seg34_rung37 rho h bits[37]! (hbitAt 37 (by omega)) hacc hcur
  · exact seg34_rung38 rho h bits[38]! (hbitAt 38 (by omega)) hacc hcur
  · exact seg34_rung39 rho h bits[39]! (hbitAt 39 (by omega)) hacc hcur
  · exact seg34_rung40 rho h bits[40]! (hbitAt 40 (by omega)) hacc hcur
  · exact seg34_rung41 rho h bits[41]! (hbitAt 41 (by omega)) hacc hcur
  · exact seg34_rung42 rho h bits[42]! (hbitAt 42 (by omega)) hacc hcur
  · exact seg34_rung43 rho h bits[43]! (hbitAt 43 (by omega)) hacc hcur
  · exact seg34_rung44 rho h bits[44]! (hbitAt 44 (by omega)) hacc hcur
  · exact seg34_rung45 rho h bits[45]! (hbitAt 45 (by omega)) hacc hcur
  · exact seg34_rung46 rho h bits[46]! (hbitAt 46 (by omega)) hacc hcur
  · exact seg34_rung47 rho h bits[47]! (hbitAt 47 (by omega)) hacc hcur
  · exact seg34_rung48 rho h bits[48]! (hbitAt 48 (by omega)) hacc hcur
  · exact seg34_rung49 rho h bits[49]! (hbitAt 49 (by omega)) hacc hcur
  · exact seg34_rung50 rho h bits[50]! (hbitAt 50 (by omega)) hacc hcur
  · exact seg34_rung51 rho h bits[51]! (hbitAt 51 (by omega)) hacc hcur
  · exact seg34_rung52 rho h bits[52]! (hbitAt 52 (by omega)) hacc hcur
  · exact seg34_rung53 rho h bits[53]! (hbitAt 53 (by omega)) hacc hcur
  · exact seg34_rung54 rho h bits[54]! (hbitAt 54 (by omega)) hacc hcur
  · exact seg34_rung55 rho h bits[55]! (hbitAt 55 (by omega)) hacc hcur
  · exact seg34_rung56 rho h bits[56]! (hbitAt 56 (by omega)) hacc hcur
  · exact seg34_rung57 rho h bits[57]! (hbitAt 57 (by omega)) hacc hcur
  · exact seg34_rung58 rho h bits[58]! (hbitAt 58 (by omega)) hacc hcur
  · exact seg34_rung59 rho h bits[59]! (hbitAt 59 (by omega)) hacc hcur
  · exact seg34_rung60 rho h bits[60]! (hbitAt 60 (by omega)) hacc hcur
  · exact seg34_rung61 rho h bits[61]! (hbitAt 61 (by omega)) hacc hcur
  · exact seg34_rung62 rho h bits[62]! (hbitAt 62 (by omega)) hacc hcur
  · exact seg34_rung63 rho h bits[63]! (hbitAt 63 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
