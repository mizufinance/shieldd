import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg45_rung32 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40980 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX32 rho : Seg45.F), (seg45AccY32 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41607 : Seg45.F), (rho 41608 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX32 rho : Seg45.F), (seg45AccY32 rho : Seg45.F)⟩
        ⟨(rho 41607 : Seg45.F), (rho 41608 : Seg45.F)⟩
        ⟨(seg45AccX33 rho : Seg45.F), (seg45AccY33 rho : Seg45.F)⟩
        ⟨(rho 41620 : Seg45.F), (rho 41621 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3381, r3382, r3383, r3384, r3385, r3386, r3387, r3388, r3389, r3390, r3391, r3392, r3393, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3381 Seg45.relationLc196 Seg45.relationLc196Part0 Seg45.relationLc196Part1 Seg45.relationLc196Part2 at r3381
  unfold Seg45.relationRow3382 at r3382
  unfold Seg45.relationRow3383 Seg45.relationLc197 Seg45.relationLc197Part0 Seg45.relationLc197Part1 at r3383
  unfold Seg45.relationRow3384 at r3384
  unfold Seg45.relationRow3385 at r3385
  unfold Seg45.relationRow3386 at r3386
  unfold Seg45.relationRow3387 Seg45.relationLc198 Seg45.relationLc198Part0 Seg45.relationLc198Part1 at r3387
  unfold Seg45.relationRow3388 Seg45.relationLc199 Seg45.relationLc199Part0 Seg45.relationLc199Part1 at r3388
  unfold Seg45.relationRow3389 at r3389
  unfold Seg45.relationRow3390 at r3390
  unfold Seg45.relationRow3391 at r3391
  unfold Seg45.relationRow3392 at r3392
  unfold Seg45.relationRow3393 at r3393
  have hrung32 (bit : Bool) (hbit : rho 40980 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX32 rho : Seg45.F), (seg45AccY32 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41607 : Seg45.F), (rho 41608 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX32 rho : Seg45.F), (seg45AccY32 rho : Seg45.F)⟩
        ⟨(rho 41607 : Seg45.F), (rho 41608 : Seg45.F)⟩
        ⟨(seg45AccX33 rho : Seg45.F), (seg45AccY33 rho : Seg45.F)⟩
        ⟨(rho 41620 : Seg45.F), (rho 41621 : Seg45.F)⟩ := by
    have ha0 : (rho 41607 + rho 41608) * (seg45AccX32 rho + seg45AccY32 rho) = rho 41609 := by
      rw [seg45LadderFlatX32_eq, seg45LadderFlatY32_eq]
      unfold seg45LadderFlatX32 seg45LadderFlatY32
      linear_combination r3381
    have ha1 : rho 41608 * seg45AccX32 rho = rho 41610 := by
      rw [seg45LadderFlatX32_eq]
      unfold seg45LadderFlatX32
      linear_combination r3382
    have ha2 : rho 41607 * seg45AccY32 rho = rho 41611 := by
      rw [seg45LadderFlatY32_eq]
      unfold seg45LadderFlatY32
      linear_combination r3383
    have ha3 : 3021 * rho 41610 * rho 41611 = rho 41612 := by
      linear_combination r3384
    have ha4 : rho 41613 * (1 + rho 41612) = rho 41610 + rho 41611 := by
      linear_combination r3385
    have ha5 : rho 41614 * (1 - rho 41612) = rho 41609 - rho 41610 - rho 41611 := by
      linear_combination r3386
    have haddx :
        rho 41613 * (1 + 3021 * (rho 41608 * seg45AccX32 rho) * (rho 41607 * seg45AccY32 rho)) =
          rho 41608 * seg45AccX32 rho + rho 41607 * seg45AccY32 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41614 * (1 - 3021 * (rho 41608 * seg45AccX32 rho) * (rho 41607 * seg45AccY32 rho)) =
          (-1) * (rho 41608 * seg45AccX32 rho) - rho 41607 * seg45AccY32 rho +
            (seg45AccY32 rho - seg45AccX32 rho * (-1)) * (rho 41607 + rho 41608) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41614 * (1 - rho 41612) = rho 41609 - rho 41610 - rho 41611 := ha5
        _ = (-1) * rho 41610 - rho 41611 + (seg45AccY32 rho - seg45AccX32 rho * (-1)) * (rho 41607 + rho 41608) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX33 rho = seg45AccX32 rho - Bool.toZMod bit * (seg45AccX32 rho - rho 41613) := by
      have hd : rho 41615 = Bool.toZMod bit * (rho 41613 - seg45AccX32 rho) := by
        rw [← hbit, seg45LadderFlatX32_eq]
        unfold seg45LadderFlatX32
        linear_combination -r3387
      unfold seg45AccX33
      linear_combination hd
    have hsely : seg45AccY33 rho = seg45AccY32 rho - Bool.toZMod bit * (seg45AccY32 rho - rho 41614) := by
      have hd : rho 41616 = Bool.toZMod bit * (rho 41614 - seg45AccY32 rho) := by
        rw [← hbit, seg45LadderFlatY32_eq]
        unfold seg45LadderFlatY32
        linear_combination -r3388
      unfold seg45AccY33
      linear_combination hd
    have hd0 : rho 41607 * rho 41608 = rho 41617 := by linear_combination r3389
    have hd1 : rho 41607 * rho 41607 = rho 41618 := by linear_combination r3390
    have hd2 : rho 41608 * rho 41608 = rho 41619 := by linear_combination r3391
    have hd3 : rho 41620 * (rho 41608 * rho 41608 + rho 41607 * rho 41607 * (-1)) = 2 * (rho 41607 * rho 41608) := by
      rw [hd0, hd1, hd2]
      linear_combination r3392
    have hd4 : rho 41621 * (2 - (rho 41608 * rho 41608 + rho 41607 * rho 41607 * (-1))) = rho 41608 * rho 41608 - rho 41607 * rho 41607 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3393
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX32 rho : Seg45.F), (seg45AccY32 rho : Seg45.F)⟩
      ⟨(rho 41607 : Seg45.F), (rho 41608 : Seg45.F)⟩
      ⟨(rho 41613 : Seg45.F), (rho 41614 : Seg45.F)⟩
      ⟨(seg45AccX33 rho : Seg45.F), (seg45AccY33 rho : Seg45.F)⟩
      ⟨(rho 41620 : Seg45.F), (rho 41621 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung32

theorem seg45_rung33 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40981 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX33 rho : Seg45.F), (seg45AccY33 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41620 : Seg45.F), (rho 41621 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX33 rho : Seg45.F), (seg45AccY33 rho : Seg45.F)⟩
        ⟨(rho 41620 : Seg45.F), (rho 41621 : Seg45.F)⟩
        ⟨(seg45AccX34 rho : Seg45.F), (seg45AccY34 rho : Seg45.F)⟩
        ⟨(rho 41633 : Seg45.F), (rho 41634 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3394, r3395, r3396, r3397, r3398, r3399, r3400, r3401, r3402, r3403, r3404, r3405, r3406, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3394 Seg45.relationLc200 Seg45.relationLc200Part0 Seg45.relationLc200Part1 Seg45.relationLc200Part2 at r3394
  unfold Seg45.relationRow3395 Seg45.relationLc201 Seg45.relationLc201Part0 Seg45.relationLc201Part1 at r3395
  unfold Seg45.relationRow3396 Seg45.relationLc202 Seg45.relationLc202Part0 Seg45.relationLc202Part1 at r3396
  unfold Seg45.relationRow3397 at r3397
  unfold Seg45.relationRow3398 at r3398
  unfold Seg45.relationRow3399 at r3399
  unfold Seg45.relationRow3400 Seg45.relationLc203 Seg45.relationLc203Part0 Seg45.relationLc203Part1 at r3400
  unfold Seg45.relationRow3401 Seg45.relationLc204 Seg45.relationLc204Part0 Seg45.relationLc204Part1 at r3401
  unfold Seg45.relationRow3402 at r3402
  unfold Seg45.relationRow3403 at r3403
  unfold Seg45.relationRow3404 at r3404
  unfold Seg45.relationRow3405 at r3405
  unfold Seg45.relationRow3406 at r3406
  have hrung33 (bit : Bool) (hbit : rho 40981 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX33 rho : Seg45.F), (seg45AccY33 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41620 : Seg45.F), (rho 41621 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX33 rho : Seg45.F), (seg45AccY33 rho : Seg45.F)⟩
        ⟨(rho 41620 : Seg45.F), (rho 41621 : Seg45.F)⟩
        ⟨(seg45AccX34 rho : Seg45.F), (seg45AccY34 rho : Seg45.F)⟩
        ⟨(rho 41633 : Seg45.F), (rho 41634 : Seg45.F)⟩ := by
    have ha0 : (rho 41620 + rho 41621) * (seg45AccX33 rho + seg45AccY33 rho) = rho 41622 := by
      rw [seg45LadderFlatX33_eq, seg45LadderFlatY33_eq]
      unfold seg45LadderFlatX33 seg45LadderFlatY33
      linear_combination r3394
    have ha1 : rho 41621 * seg45AccX33 rho = rho 41623 := by
      rw [seg45LadderFlatX33_eq]
      unfold seg45LadderFlatX33
      linear_combination r3395
    have ha2 : rho 41620 * seg45AccY33 rho = rho 41624 := by
      rw [seg45LadderFlatY33_eq]
      unfold seg45LadderFlatY33
      linear_combination r3396
    have ha3 : 3021 * rho 41623 * rho 41624 = rho 41625 := by
      linear_combination r3397
    have ha4 : rho 41626 * (1 + rho 41625) = rho 41623 + rho 41624 := by
      linear_combination r3398
    have ha5 : rho 41627 * (1 - rho 41625) = rho 41622 - rho 41623 - rho 41624 := by
      linear_combination r3399
    have haddx :
        rho 41626 * (1 + 3021 * (rho 41621 * seg45AccX33 rho) * (rho 41620 * seg45AccY33 rho)) =
          rho 41621 * seg45AccX33 rho + rho 41620 * seg45AccY33 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41627 * (1 - 3021 * (rho 41621 * seg45AccX33 rho) * (rho 41620 * seg45AccY33 rho)) =
          (-1) * (rho 41621 * seg45AccX33 rho) - rho 41620 * seg45AccY33 rho +
            (seg45AccY33 rho - seg45AccX33 rho * (-1)) * (rho 41620 + rho 41621) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41627 * (1 - rho 41625) = rho 41622 - rho 41623 - rho 41624 := ha5
        _ = (-1) * rho 41623 - rho 41624 + (seg45AccY33 rho - seg45AccX33 rho * (-1)) * (rho 41620 + rho 41621) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX34 rho = seg45AccX33 rho - Bool.toZMod bit * (seg45AccX33 rho - rho 41626) := by
      have hd : rho 41628 = Bool.toZMod bit * (rho 41626 - seg45AccX33 rho) := by
        rw [← hbit, seg45LadderFlatX33_eq]
        unfold seg45LadderFlatX33
        linear_combination -r3400
      unfold seg45AccX34
      linear_combination hd
    have hsely : seg45AccY34 rho = seg45AccY33 rho - Bool.toZMod bit * (seg45AccY33 rho - rho 41627) := by
      have hd : rho 41629 = Bool.toZMod bit * (rho 41627 - seg45AccY33 rho) := by
        rw [← hbit, seg45LadderFlatY33_eq]
        unfold seg45LadderFlatY33
        linear_combination -r3401
      unfold seg45AccY34
      linear_combination hd
    have hd0 : rho 41620 * rho 41621 = rho 41630 := by linear_combination r3402
    have hd1 : rho 41620 * rho 41620 = rho 41631 := by linear_combination r3403
    have hd2 : rho 41621 * rho 41621 = rho 41632 := by linear_combination r3404
    have hd3 : rho 41633 * (rho 41621 * rho 41621 + rho 41620 * rho 41620 * (-1)) = 2 * (rho 41620 * rho 41621) := by
      rw [hd0, hd1, hd2]
      linear_combination r3405
    have hd4 : rho 41634 * (2 - (rho 41621 * rho 41621 + rho 41620 * rho 41620 * (-1))) = rho 41621 * rho 41621 - rho 41620 * rho 41620 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3406
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX33 rho : Seg45.F), (seg45AccY33 rho : Seg45.F)⟩
      ⟨(rho 41620 : Seg45.F), (rho 41621 : Seg45.F)⟩
      ⟨(rho 41626 : Seg45.F), (rho 41627 : Seg45.F)⟩
      ⟨(seg45AccX34 rho : Seg45.F), (seg45AccY34 rho : Seg45.F)⟩
      ⟨(rho 41633 : Seg45.F), (rho 41634 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung33

theorem seg45_rung34 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40982 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX34 rho : Seg45.F), (seg45AccY34 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41633 : Seg45.F), (rho 41634 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX34 rho : Seg45.F), (seg45AccY34 rho : Seg45.F)⟩
        ⟨(rho 41633 : Seg45.F), (rho 41634 : Seg45.F)⟩
        ⟨(seg45AccX35 rho : Seg45.F), (seg45AccY35 rho : Seg45.F)⟩
        ⟨(rho 41646 : Seg45.F), (rho 41647 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3407, r3408, r3409, r3410, r3411, r3412, r3413, r3414, r3415, r3416, r3417, r3418, r3419, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3407 Seg45.relationLc205 Seg45.relationLc205Part0 Seg45.relationLc205Part1 Seg45.relationLc205Part2 at r3407
  unfold Seg45.relationRow3408 Seg45.relationLc206 Seg45.relationLc206Part0 Seg45.relationLc206Part1 at r3408
  unfold Seg45.relationRow3409 Seg45.relationLc207 Seg45.relationLc207Part0 Seg45.relationLc207Part1 at r3409
  unfold Seg45.relationRow3410 at r3410
  unfold Seg45.relationRow3411 at r3411
  unfold Seg45.relationRow3412 at r3412
  unfold Seg45.relationRow3413 Seg45.relationLc208 Seg45.relationLc208Part0 Seg45.relationLc208Part1 at r3413
  unfold Seg45.relationRow3414 Seg45.relationLc209 Seg45.relationLc209Part0 Seg45.relationLc209Part1 at r3414
  unfold Seg45.relationRow3415 at r3415
  unfold Seg45.relationRow3416 at r3416
  unfold Seg45.relationRow3417 at r3417
  unfold Seg45.relationRow3418 at r3418
  unfold Seg45.relationRow3419 at r3419
  have hrung34 (bit : Bool) (hbit : rho 40982 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX34 rho : Seg45.F), (seg45AccY34 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41633 : Seg45.F), (rho 41634 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX34 rho : Seg45.F), (seg45AccY34 rho : Seg45.F)⟩
        ⟨(rho 41633 : Seg45.F), (rho 41634 : Seg45.F)⟩
        ⟨(seg45AccX35 rho : Seg45.F), (seg45AccY35 rho : Seg45.F)⟩
        ⟨(rho 41646 : Seg45.F), (rho 41647 : Seg45.F)⟩ := by
    have ha0 : (rho 41633 + rho 41634) * (seg45AccX34 rho + seg45AccY34 rho) = rho 41635 := by
      rw [seg45LadderFlatX34_eq, seg45LadderFlatY34_eq]
      unfold seg45LadderFlatX34 seg45LadderFlatY34
      linear_combination r3407
    have ha1 : rho 41634 * seg45AccX34 rho = rho 41636 := by
      rw [seg45LadderFlatX34_eq]
      unfold seg45LadderFlatX34
      linear_combination r3408
    have ha2 : rho 41633 * seg45AccY34 rho = rho 41637 := by
      rw [seg45LadderFlatY34_eq]
      unfold seg45LadderFlatY34
      linear_combination r3409
    have ha3 : 3021 * rho 41636 * rho 41637 = rho 41638 := by
      linear_combination r3410
    have ha4 : rho 41639 * (1 + rho 41638) = rho 41636 + rho 41637 := by
      linear_combination r3411
    have ha5 : rho 41640 * (1 - rho 41638) = rho 41635 - rho 41636 - rho 41637 := by
      linear_combination r3412
    have haddx :
        rho 41639 * (1 + 3021 * (rho 41634 * seg45AccX34 rho) * (rho 41633 * seg45AccY34 rho)) =
          rho 41634 * seg45AccX34 rho + rho 41633 * seg45AccY34 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41640 * (1 - 3021 * (rho 41634 * seg45AccX34 rho) * (rho 41633 * seg45AccY34 rho)) =
          (-1) * (rho 41634 * seg45AccX34 rho) - rho 41633 * seg45AccY34 rho +
            (seg45AccY34 rho - seg45AccX34 rho * (-1)) * (rho 41633 + rho 41634) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41640 * (1 - rho 41638) = rho 41635 - rho 41636 - rho 41637 := ha5
        _ = (-1) * rho 41636 - rho 41637 + (seg45AccY34 rho - seg45AccX34 rho * (-1)) * (rho 41633 + rho 41634) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX35 rho = seg45AccX34 rho - Bool.toZMod bit * (seg45AccX34 rho - rho 41639) := by
      have hd : rho 41641 = Bool.toZMod bit * (rho 41639 - seg45AccX34 rho) := by
        rw [← hbit, seg45LadderFlatX34_eq]
        unfold seg45LadderFlatX34
        linear_combination -r3413
      unfold seg45AccX35
      linear_combination hd
    have hsely : seg45AccY35 rho = seg45AccY34 rho - Bool.toZMod bit * (seg45AccY34 rho - rho 41640) := by
      have hd : rho 41642 = Bool.toZMod bit * (rho 41640 - seg45AccY34 rho) := by
        rw [← hbit, seg45LadderFlatY34_eq]
        unfold seg45LadderFlatY34
        linear_combination -r3414
      unfold seg45AccY35
      linear_combination hd
    have hd0 : rho 41633 * rho 41634 = rho 41643 := by linear_combination r3415
    have hd1 : rho 41633 * rho 41633 = rho 41644 := by linear_combination r3416
    have hd2 : rho 41634 * rho 41634 = rho 41645 := by linear_combination r3417
    have hd3 : rho 41646 * (rho 41634 * rho 41634 + rho 41633 * rho 41633 * (-1)) = 2 * (rho 41633 * rho 41634) := by
      rw [hd0, hd1, hd2]
      linear_combination r3418
    have hd4 : rho 41647 * (2 - (rho 41634 * rho 41634 + rho 41633 * rho 41633 * (-1))) = rho 41634 * rho 41634 - rho 41633 * rho 41633 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3419
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX34 rho : Seg45.F), (seg45AccY34 rho : Seg45.F)⟩
      ⟨(rho 41633 : Seg45.F), (rho 41634 : Seg45.F)⟩
      ⟨(rho 41639 : Seg45.F), (rho 41640 : Seg45.F)⟩
      ⟨(seg45AccX35 rho : Seg45.F), (seg45AccY35 rho : Seg45.F)⟩
      ⟨(rho 41646 : Seg45.F), (rho 41647 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung34

theorem seg45_rung35 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40983 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX35 rho : Seg45.F), (seg45AccY35 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41646 : Seg45.F), (rho 41647 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX35 rho : Seg45.F), (seg45AccY35 rho : Seg45.F)⟩
        ⟨(rho 41646 : Seg45.F), (rho 41647 : Seg45.F)⟩
        ⟨(seg45AccX36 rho : Seg45.F), (seg45AccY36 rho : Seg45.F)⟩
        ⟨(rho 41659 : Seg45.F), (rho 41660 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3420, r3421, r3422, r3423, r3424, r3425, r3426, r3427, r3428, r3429, r3430, r3431, r3432, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3420 Seg45.relationLc210 Seg45.relationLc210Part0 Seg45.relationLc210Part1 Seg45.relationLc210Part2 at r3420
  unfold Seg45.relationRow3421 Seg45.relationLc211 Seg45.relationLc211Part0 Seg45.relationLc211Part1 at r3421
  unfold Seg45.relationRow3422 Seg45.relationLc212 Seg45.relationLc212Part0 Seg45.relationLc212Part1 at r3422
  unfold Seg45.relationRow3423 at r3423
  unfold Seg45.relationRow3424 at r3424
  unfold Seg45.relationRow3425 at r3425
  unfold Seg45.relationRow3426 Seg45.relationLc213 Seg45.relationLc213Part0 Seg45.relationLc213Part1 at r3426
  unfold Seg45.relationRow3427 Seg45.relationLc214 Seg45.relationLc214Part0 Seg45.relationLc214Part1 at r3427
  unfold Seg45.relationRow3428 at r3428
  unfold Seg45.relationRow3429 at r3429
  unfold Seg45.relationRow3430 at r3430
  unfold Seg45.relationRow3431 at r3431
  unfold Seg45.relationRow3432 at r3432
  have hrung35 (bit : Bool) (hbit : rho 40983 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX35 rho : Seg45.F), (seg45AccY35 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41646 : Seg45.F), (rho 41647 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX35 rho : Seg45.F), (seg45AccY35 rho : Seg45.F)⟩
        ⟨(rho 41646 : Seg45.F), (rho 41647 : Seg45.F)⟩
        ⟨(seg45AccX36 rho : Seg45.F), (seg45AccY36 rho : Seg45.F)⟩
        ⟨(rho 41659 : Seg45.F), (rho 41660 : Seg45.F)⟩ := by
    have ha0 : (rho 41646 + rho 41647) * (seg45AccX35 rho + seg45AccY35 rho) = rho 41648 := by
      rw [seg45LadderFlatX35_eq, seg45LadderFlatY35_eq]
      unfold seg45LadderFlatX35 seg45LadderFlatY35
      linear_combination r3420
    have ha1 : rho 41647 * seg45AccX35 rho = rho 41649 := by
      rw [seg45LadderFlatX35_eq]
      unfold seg45LadderFlatX35
      linear_combination r3421
    have ha2 : rho 41646 * seg45AccY35 rho = rho 41650 := by
      rw [seg45LadderFlatY35_eq]
      unfold seg45LadderFlatY35
      linear_combination r3422
    have ha3 : 3021 * rho 41649 * rho 41650 = rho 41651 := by
      linear_combination r3423
    have ha4 : rho 41652 * (1 + rho 41651) = rho 41649 + rho 41650 := by
      linear_combination r3424
    have ha5 : rho 41653 * (1 - rho 41651) = rho 41648 - rho 41649 - rho 41650 := by
      linear_combination r3425
    have haddx :
        rho 41652 * (1 + 3021 * (rho 41647 * seg45AccX35 rho) * (rho 41646 * seg45AccY35 rho)) =
          rho 41647 * seg45AccX35 rho + rho 41646 * seg45AccY35 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41653 * (1 - 3021 * (rho 41647 * seg45AccX35 rho) * (rho 41646 * seg45AccY35 rho)) =
          (-1) * (rho 41647 * seg45AccX35 rho) - rho 41646 * seg45AccY35 rho +
            (seg45AccY35 rho - seg45AccX35 rho * (-1)) * (rho 41646 + rho 41647) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41653 * (1 - rho 41651) = rho 41648 - rho 41649 - rho 41650 := ha5
        _ = (-1) * rho 41649 - rho 41650 + (seg45AccY35 rho - seg45AccX35 rho * (-1)) * (rho 41646 + rho 41647) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX36 rho = seg45AccX35 rho - Bool.toZMod bit * (seg45AccX35 rho - rho 41652) := by
      have hd : rho 41654 = Bool.toZMod bit * (rho 41652 - seg45AccX35 rho) := by
        rw [← hbit, seg45LadderFlatX35_eq]
        unfold seg45LadderFlatX35
        linear_combination -r3426
      unfold seg45AccX36
      linear_combination hd
    have hsely : seg45AccY36 rho = seg45AccY35 rho - Bool.toZMod bit * (seg45AccY35 rho - rho 41653) := by
      have hd : rho 41655 = Bool.toZMod bit * (rho 41653 - seg45AccY35 rho) := by
        rw [← hbit, seg45LadderFlatY35_eq]
        unfold seg45LadderFlatY35
        linear_combination -r3427
      unfold seg45AccY36
      linear_combination hd
    have hd0 : rho 41646 * rho 41647 = rho 41656 := by linear_combination r3428
    have hd1 : rho 41646 * rho 41646 = rho 41657 := by linear_combination r3429
    have hd2 : rho 41647 * rho 41647 = rho 41658 := by linear_combination r3430
    have hd3 : rho 41659 * (rho 41647 * rho 41647 + rho 41646 * rho 41646 * (-1)) = 2 * (rho 41646 * rho 41647) := by
      rw [hd0, hd1, hd2]
      linear_combination r3431
    have hd4 : rho 41660 * (2 - (rho 41647 * rho 41647 + rho 41646 * rho 41646 * (-1))) = rho 41647 * rho 41647 - rho 41646 * rho 41646 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3432
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX35 rho : Seg45.F), (seg45AccY35 rho : Seg45.F)⟩
      ⟨(rho 41646 : Seg45.F), (rho 41647 : Seg45.F)⟩
      ⟨(rho 41652 : Seg45.F), (rho 41653 : Seg45.F)⟩
      ⟨(seg45AccX36 rho : Seg45.F), (seg45AccY36 rho : Seg45.F)⟩
      ⟨(rho 41659 : Seg45.F), (rho 41660 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung35

theorem seg45_rung36 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40984 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX36 rho : Seg45.F), (seg45AccY36 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41659 : Seg45.F), (rho 41660 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX36 rho : Seg45.F), (seg45AccY36 rho : Seg45.F)⟩
        ⟨(rho 41659 : Seg45.F), (rho 41660 : Seg45.F)⟩
        ⟨(seg45AccX37 rho : Seg45.F), (seg45AccY37 rho : Seg45.F)⟩
        ⟨(rho 41672 : Seg45.F), (rho 41673 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3433, r3434, r3435, r3436, r3437, r3438, r3439⟩
  unfold Seg45.relationPart43 at p43
  rcases p43 with ⟨r3440, r3441, r3442, r3443, r3444, r3445, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3433 Seg45.relationLc215 Seg45.relationLc215Part0 Seg45.relationLc215Part1 Seg45.relationLc215Part2 at r3433
  unfold Seg45.relationRow3434 Seg45.relationLc216 Seg45.relationLc216Part0 Seg45.relationLc216Part1 at r3434
  unfold Seg45.relationRow3435 Seg45.relationLc217 Seg45.relationLc217Part0 Seg45.relationLc217Part1 at r3435
  unfold Seg45.relationRow3436 at r3436
  unfold Seg45.relationRow3437 at r3437
  unfold Seg45.relationRow3438 at r3438
  unfold Seg45.relationRow3439 Seg45.relationLc218 Seg45.relationLc218Part0 Seg45.relationLc218Part1 at r3439
  unfold Seg45.relationRow3440 Seg45.relationLc219 Seg45.relationLc219Part0 Seg45.relationLc219Part1 at r3440
  unfold Seg45.relationRow3441 at r3441
  unfold Seg45.relationRow3442 at r3442
  unfold Seg45.relationRow3443 at r3443
  unfold Seg45.relationRow3444 at r3444
  unfold Seg45.relationRow3445 at r3445
  have hrung36 (bit : Bool) (hbit : rho 40984 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX36 rho : Seg45.F), (seg45AccY36 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41659 : Seg45.F), (rho 41660 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX36 rho : Seg45.F), (seg45AccY36 rho : Seg45.F)⟩
        ⟨(rho 41659 : Seg45.F), (rho 41660 : Seg45.F)⟩
        ⟨(seg45AccX37 rho : Seg45.F), (seg45AccY37 rho : Seg45.F)⟩
        ⟨(rho 41672 : Seg45.F), (rho 41673 : Seg45.F)⟩ := by
    have ha0 : (rho 41659 + rho 41660) * (seg45AccX36 rho + seg45AccY36 rho) = rho 41661 := by
      rw [seg45LadderFlatX36_eq, seg45LadderFlatY36_eq]
      unfold seg45LadderFlatX36 seg45LadderFlatY36
      linear_combination r3433
    have ha1 : rho 41660 * seg45AccX36 rho = rho 41662 := by
      rw [seg45LadderFlatX36_eq]
      unfold seg45LadderFlatX36
      linear_combination r3434
    have ha2 : rho 41659 * seg45AccY36 rho = rho 41663 := by
      rw [seg45LadderFlatY36_eq]
      unfold seg45LadderFlatY36
      linear_combination r3435
    have ha3 : 3021 * rho 41662 * rho 41663 = rho 41664 := by
      linear_combination r3436
    have ha4 : rho 41665 * (1 + rho 41664) = rho 41662 + rho 41663 := by
      linear_combination r3437
    have ha5 : rho 41666 * (1 - rho 41664) = rho 41661 - rho 41662 - rho 41663 := by
      linear_combination r3438
    have haddx :
        rho 41665 * (1 + 3021 * (rho 41660 * seg45AccX36 rho) * (rho 41659 * seg45AccY36 rho)) =
          rho 41660 * seg45AccX36 rho + rho 41659 * seg45AccY36 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41666 * (1 - 3021 * (rho 41660 * seg45AccX36 rho) * (rho 41659 * seg45AccY36 rho)) =
          (-1) * (rho 41660 * seg45AccX36 rho) - rho 41659 * seg45AccY36 rho +
            (seg45AccY36 rho - seg45AccX36 rho * (-1)) * (rho 41659 + rho 41660) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41666 * (1 - rho 41664) = rho 41661 - rho 41662 - rho 41663 := ha5
        _ = (-1) * rho 41662 - rho 41663 + (seg45AccY36 rho - seg45AccX36 rho * (-1)) * (rho 41659 + rho 41660) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX37 rho = seg45AccX36 rho - Bool.toZMod bit * (seg45AccX36 rho - rho 41665) := by
      have hd : rho 41667 = Bool.toZMod bit * (rho 41665 - seg45AccX36 rho) := by
        rw [← hbit, seg45LadderFlatX36_eq]
        unfold seg45LadderFlatX36
        linear_combination -r3439
      unfold seg45AccX37
      linear_combination hd
    have hsely : seg45AccY37 rho = seg45AccY36 rho - Bool.toZMod bit * (seg45AccY36 rho - rho 41666) := by
      have hd : rho 41668 = Bool.toZMod bit * (rho 41666 - seg45AccY36 rho) := by
        rw [← hbit, seg45LadderFlatY36_eq]
        unfold seg45LadderFlatY36
        linear_combination -r3440
      unfold seg45AccY37
      linear_combination hd
    have hd0 : rho 41659 * rho 41660 = rho 41669 := by linear_combination r3441
    have hd1 : rho 41659 * rho 41659 = rho 41670 := by linear_combination r3442
    have hd2 : rho 41660 * rho 41660 = rho 41671 := by linear_combination r3443
    have hd3 : rho 41672 * (rho 41660 * rho 41660 + rho 41659 * rho 41659 * (-1)) = 2 * (rho 41659 * rho 41660) := by
      rw [hd0, hd1, hd2]
      linear_combination r3444
    have hd4 : rho 41673 * (2 - (rho 41660 * rho 41660 + rho 41659 * rho 41659 * (-1))) = rho 41660 * rho 41660 - rho 41659 * rho 41659 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3445
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX36 rho : Seg45.F), (seg45AccY36 rho : Seg45.F)⟩
      ⟨(rho 41659 : Seg45.F), (rho 41660 : Seg45.F)⟩
      ⟨(rho 41665 : Seg45.F), (rho 41666 : Seg45.F)⟩
      ⟨(seg45AccX37 rho : Seg45.F), (seg45AccY37 rho : Seg45.F)⟩
      ⟨(rho 41672 : Seg45.F), (rho 41673 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung36

theorem seg45_rung37 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40985 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX37 rho : Seg45.F), (seg45AccY37 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41672 : Seg45.F), (rho 41673 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX37 rho : Seg45.F), (seg45AccY37 rho : Seg45.F)⟩
        ⟨(rho 41672 : Seg45.F), (rho 41673 : Seg45.F)⟩
        ⟨(seg45AccX38 rho : Seg45.F), (seg45AccY38 rho : Seg45.F)⟩
        ⟨(rho 41685 : Seg45.F), (rho 41686 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, r3446, r3447, r3448, r3449, r3450, r3451, r3452, r3453, r3454, r3455, r3456, r3457, r3458, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3446 Seg45.relationLc220 Seg45.relationLc220Part0 Seg45.relationLc220Part1 Seg45.relationLc220Part2 at r3446
  unfold Seg45.relationRow3447 Seg45.relationLc221 Seg45.relationLc221Part0 Seg45.relationLc221Part1 at r3447
  unfold Seg45.relationRow3448 Seg45.relationLc222 Seg45.relationLc222Part0 Seg45.relationLc222Part1 at r3448
  unfold Seg45.relationRow3449 at r3449
  unfold Seg45.relationRow3450 at r3450
  unfold Seg45.relationRow3451 at r3451
  unfold Seg45.relationRow3452 Seg45.relationLc223 Seg45.relationLc223Part0 Seg45.relationLc223Part1 at r3452
  unfold Seg45.relationRow3453 Seg45.relationLc224 Seg45.relationLc224Part0 Seg45.relationLc224Part1 at r3453
  unfold Seg45.relationRow3454 at r3454
  unfold Seg45.relationRow3455 at r3455
  unfold Seg45.relationRow3456 at r3456
  unfold Seg45.relationRow3457 at r3457
  unfold Seg45.relationRow3458 at r3458
  have hrung37 (bit : Bool) (hbit : rho 40985 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX37 rho : Seg45.F), (seg45AccY37 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41672 : Seg45.F), (rho 41673 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX37 rho : Seg45.F), (seg45AccY37 rho : Seg45.F)⟩
        ⟨(rho 41672 : Seg45.F), (rho 41673 : Seg45.F)⟩
        ⟨(seg45AccX38 rho : Seg45.F), (seg45AccY38 rho : Seg45.F)⟩
        ⟨(rho 41685 : Seg45.F), (rho 41686 : Seg45.F)⟩ := by
    have ha0 : (rho 41672 + rho 41673) * (seg45AccX37 rho + seg45AccY37 rho) = rho 41674 := by
      rw [seg45LadderFlatX37_eq, seg45LadderFlatY37_eq]
      unfold seg45LadderFlatX37 seg45LadderFlatY37
      linear_combination r3446
    have ha1 : rho 41673 * seg45AccX37 rho = rho 41675 := by
      rw [seg45LadderFlatX37_eq]
      unfold seg45LadderFlatX37
      linear_combination r3447
    have ha2 : rho 41672 * seg45AccY37 rho = rho 41676 := by
      rw [seg45LadderFlatY37_eq]
      unfold seg45LadderFlatY37
      linear_combination r3448
    have ha3 : 3021 * rho 41675 * rho 41676 = rho 41677 := by
      linear_combination r3449
    have ha4 : rho 41678 * (1 + rho 41677) = rho 41675 + rho 41676 := by
      linear_combination r3450
    have ha5 : rho 41679 * (1 - rho 41677) = rho 41674 - rho 41675 - rho 41676 := by
      linear_combination r3451
    have haddx :
        rho 41678 * (1 + 3021 * (rho 41673 * seg45AccX37 rho) * (rho 41672 * seg45AccY37 rho)) =
          rho 41673 * seg45AccX37 rho + rho 41672 * seg45AccY37 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41679 * (1 - 3021 * (rho 41673 * seg45AccX37 rho) * (rho 41672 * seg45AccY37 rho)) =
          (-1) * (rho 41673 * seg45AccX37 rho) - rho 41672 * seg45AccY37 rho +
            (seg45AccY37 rho - seg45AccX37 rho * (-1)) * (rho 41672 + rho 41673) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41679 * (1 - rho 41677) = rho 41674 - rho 41675 - rho 41676 := ha5
        _ = (-1) * rho 41675 - rho 41676 + (seg45AccY37 rho - seg45AccX37 rho * (-1)) * (rho 41672 + rho 41673) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX38 rho = seg45AccX37 rho - Bool.toZMod bit * (seg45AccX37 rho - rho 41678) := by
      have hd : rho 41680 = Bool.toZMod bit * (rho 41678 - seg45AccX37 rho) := by
        rw [← hbit, seg45LadderFlatX37_eq]
        unfold seg45LadderFlatX37
        linear_combination -r3452
      unfold seg45AccX38
      linear_combination hd
    have hsely : seg45AccY38 rho = seg45AccY37 rho - Bool.toZMod bit * (seg45AccY37 rho - rho 41679) := by
      have hd : rho 41681 = Bool.toZMod bit * (rho 41679 - seg45AccY37 rho) := by
        rw [← hbit, seg45LadderFlatY37_eq]
        unfold seg45LadderFlatY37
        linear_combination -r3453
      unfold seg45AccY38
      linear_combination hd
    have hd0 : rho 41672 * rho 41673 = rho 41682 := by linear_combination r3454
    have hd1 : rho 41672 * rho 41672 = rho 41683 := by linear_combination r3455
    have hd2 : rho 41673 * rho 41673 = rho 41684 := by linear_combination r3456
    have hd3 : rho 41685 * (rho 41673 * rho 41673 + rho 41672 * rho 41672 * (-1)) = 2 * (rho 41672 * rho 41673) := by
      rw [hd0, hd1, hd2]
      linear_combination r3457
    have hd4 : rho 41686 * (2 - (rho 41673 * rho 41673 + rho 41672 * rho 41672 * (-1))) = rho 41673 * rho 41673 - rho 41672 * rho 41672 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3458
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX37 rho : Seg45.F), (seg45AccY37 rho : Seg45.F)⟩
      ⟨(rho 41672 : Seg45.F), (rho 41673 : Seg45.F)⟩
      ⟨(rho 41678 : Seg45.F), (rho 41679 : Seg45.F)⟩
      ⟨(seg45AccX38 rho : Seg45.F), (seg45AccY38 rho : Seg45.F)⟩
      ⟨(rho 41685 : Seg45.F), (rho 41686 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung37

theorem seg45_rung38 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40986 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX38 rho : Seg45.F), (seg45AccY38 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41685 : Seg45.F), (rho 41686 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX38 rho : Seg45.F), (seg45AccY38 rho : Seg45.F)⟩
        ⟨(rho 41685 : Seg45.F), (rho 41686 : Seg45.F)⟩
        ⟨(seg45AccX39 rho : Seg45.F), (seg45AccY39 rho : Seg45.F)⟩
        ⟨(rho 41698 : Seg45.F), (rho 41699 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3459, r3460, r3461, r3462, r3463, r3464, r3465, r3466, r3467, r3468, r3469, r3470, r3471, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3459 Seg45.relationLc225 Seg45.relationLc225Part0 Seg45.relationLc225Part1 Seg45.relationLc225Part2 at r3459
  unfold Seg45.relationRow3460 Seg45.relationLc226 Seg45.relationLc226Part0 Seg45.relationLc226Part1 at r3460
  unfold Seg45.relationRow3461 Seg45.relationLc227 Seg45.relationLc227Part0 Seg45.relationLc227Part1 at r3461
  unfold Seg45.relationRow3462 at r3462
  unfold Seg45.relationRow3463 at r3463
  unfold Seg45.relationRow3464 at r3464
  unfold Seg45.relationRow3465 Seg45.relationLc228 Seg45.relationLc228Part0 Seg45.relationLc228Part1 at r3465
  unfold Seg45.relationRow3466 Seg45.relationLc229 Seg45.relationLc229Part0 Seg45.relationLc229Part1 at r3466
  unfold Seg45.relationRow3467 at r3467
  unfold Seg45.relationRow3468 at r3468
  unfold Seg45.relationRow3469 at r3469
  unfold Seg45.relationRow3470 at r3470
  unfold Seg45.relationRow3471 at r3471
  have hrung38 (bit : Bool) (hbit : rho 40986 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX38 rho : Seg45.F), (seg45AccY38 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41685 : Seg45.F), (rho 41686 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX38 rho : Seg45.F), (seg45AccY38 rho : Seg45.F)⟩
        ⟨(rho 41685 : Seg45.F), (rho 41686 : Seg45.F)⟩
        ⟨(seg45AccX39 rho : Seg45.F), (seg45AccY39 rho : Seg45.F)⟩
        ⟨(rho 41698 : Seg45.F), (rho 41699 : Seg45.F)⟩ := by
    have ha0 : (rho 41685 + rho 41686) * (seg45AccX38 rho + seg45AccY38 rho) = rho 41687 := by
      rw [seg45LadderFlatX38_eq, seg45LadderFlatY38_eq]
      unfold seg45LadderFlatX38 seg45LadderFlatY38
      linear_combination r3459
    have ha1 : rho 41686 * seg45AccX38 rho = rho 41688 := by
      rw [seg45LadderFlatX38_eq]
      unfold seg45LadderFlatX38
      linear_combination r3460
    have ha2 : rho 41685 * seg45AccY38 rho = rho 41689 := by
      rw [seg45LadderFlatY38_eq]
      unfold seg45LadderFlatY38
      linear_combination r3461
    have ha3 : 3021 * rho 41688 * rho 41689 = rho 41690 := by
      linear_combination r3462
    have ha4 : rho 41691 * (1 + rho 41690) = rho 41688 + rho 41689 := by
      linear_combination r3463
    have ha5 : rho 41692 * (1 - rho 41690) = rho 41687 - rho 41688 - rho 41689 := by
      linear_combination r3464
    have haddx :
        rho 41691 * (1 + 3021 * (rho 41686 * seg45AccX38 rho) * (rho 41685 * seg45AccY38 rho)) =
          rho 41686 * seg45AccX38 rho + rho 41685 * seg45AccY38 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41692 * (1 - 3021 * (rho 41686 * seg45AccX38 rho) * (rho 41685 * seg45AccY38 rho)) =
          (-1) * (rho 41686 * seg45AccX38 rho) - rho 41685 * seg45AccY38 rho +
            (seg45AccY38 rho - seg45AccX38 rho * (-1)) * (rho 41685 + rho 41686) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41692 * (1 - rho 41690) = rho 41687 - rho 41688 - rho 41689 := ha5
        _ = (-1) * rho 41688 - rho 41689 + (seg45AccY38 rho - seg45AccX38 rho * (-1)) * (rho 41685 + rho 41686) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX39 rho = seg45AccX38 rho - Bool.toZMod bit * (seg45AccX38 rho - rho 41691) := by
      have hd : rho 41693 = Bool.toZMod bit * (rho 41691 - seg45AccX38 rho) := by
        rw [← hbit, seg45LadderFlatX38_eq]
        unfold seg45LadderFlatX38
        linear_combination -r3465
      unfold seg45AccX39
      linear_combination hd
    have hsely : seg45AccY39 rho = seg45AccY38 rho - Bool.toZMod bit * (seg45AccY38 rho - rho 41692) := by
      have hd : rho 41694 = Bool.toZMod bit * (rho 41692 - seg45AccY38 rho) := by
        rw [← hbit, seg45LadderFlatY38_eq]
        unfold seg45LadderFlatY38
        linear_combination -r3466
      unfold seg45AccY39
      linear_combination hd
    have hd0 : rho 41685 * rho 41686 = rho 41695 := by linear_combination r3467
    have hd1 : rho 41685 * rho 41685 = rho 41696 := by linear_combination r3468
    have hd2 : rho 41686 * rho 41686 = rho 41697 := by linear_combination r3469
    have hd3 : rho 41698 * (rho 41686 * rho 41686 + rho 41685 * rho 41685 * (-1)) = 2 * (rho 41685 * rho 41686) := by
      rw [hd0, hd1, hd2]
      linear_combination r3470
    have hd4 : rho 41699 * (2 - (rho 41686 * rho 41686 + rho 41685 * rho 41685 * (-1))) = rho 41686 * rho 41686 - rho 41685 * rho 41685 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3471
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX38 rho : Seg45.F), (seg45AccY38 rho : Seg45.F)⟩
      ⟨(rho 41685 : Seg45.F), (rho 41686 : Seg45.F)⟩
      ⟨(rho 41691 : Seg45.F), (rho 41692 : Seg45.F)⟩
      ⟨(seg45AccX39 rho : Seg45.F), (seg45AccY39 rho : Seg45.F)⟩
      ⟨(rho 41698 : Seg45.F), (rho 41699 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung38

theorem seg45_rung39 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40987 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX39 rho : Seg45.F), (seg45AccY39 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41698 : Seg45.F), (rho 41699 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX39 rho : Seg45.F), (seg45AccY39 rho : Seg45.F)⟩
        ⟨(rho 41698 : Seg45.F), (rho 41699 : Seg45.F)⟩
        ⟨(seg45AccX40 rho : Seg45.F), (seg45AccY40 rho : Seg45.F)⟩
        ⟨(rho 41711 : Seg45.F), (rho 41712 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3472, r3473, r3474, r3475, r3476, r3477, r3478, r3479, r3480, r3481, r3482, r3483, r3484, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3472 Seg45.relationLc230 Seg45.relationLc230Part0 Seg45.relationLc230Part1 Seg45.relationLc230Part2 at r3472
  unfold Seg45.relationRow3473 Seg45.relationLc231 Seg45.relationLc231Part0 Seg45.relationLc231Part1 at r3473
  unfold Seg45.relationRow3474 Seg45.relationLc232 Seg45.relationLc232Part0 Seg45.relationLc232Part1 at r3474
  unfold Seg45.relationRow3475 at r3475
  unfold Seg45.relationRow3476 at r3476
  unfold Seg45.relationRow3477 at r3477
  unfold Seg45.relationRow3478 Seg45.relationLc233 Seg45.relationLc233Part0 Seg45.relationLc233Part1 at r3478
  unfold Seg45.relationRow3479 Seg45.relationLc234 Seg45.relationLc234Part0 Seg45.relationLc234Part1 at r3479
  unfold Seg45.relationRow3480 at r3480
  unfold Seg45.relationRow3481 at r3481
  unfold Seg45.relationRow3482 at r3482
  unfold Seg45.relationRow3483 at r3483
  unfold Seg45.relationRow3484 at r3484
  have hrung39 (bit : Bool) (hbit : rho 40987 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX39 rho : Seg45.F), (seg45AccY39 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41698 : Seg45.F), (rho 41699 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX39 rho : Seg45.F), (seg45AccY39 rho : Seg45.F)⟩
        ⟨(rho 41698 : Seg45.F), (rho 41699 : Seg45.F)⟩
        ⟨(seg45AccX40 rho : Seg45.F), (seg45AccY40 rho : Seg45.F)⟩
        ⟨(rho 41711 : Seg45.F), (rho 41712 : Seg45.F)⟩ := by
    have ha0 : (rho 41698 + rho 41699) * (seg45AccX39 rho + seg45AccY39 rho) = rho 41700 := by
      rw [seg45LadderFlatX39_eq, seg45LadderFlatY39_eq]
      unfold seg45LadderFlatX39 seg45LadderFlatY39
      linear_combination r3472
    have ha1 : rho 41699 * seg45AccX39 rho = rho 41701 := by
      rw [seg45LadderFlatX39_eq]
      unfold seg45LadderFlatX39
      linear_combination r3473
    have ha2 : rho 41698 * seg45AccY39 rho = rho 41702 := by
      rw [seg45LadderFlatY39_eq]
      unfold seg45LadderFlatY39
      linear_combination r3474
    have ha3 : 3021 * rho 41701 * rho 41702 = rho 41703 := by
      linear_combination r3475
    have ha4 : rho 41704 * (1 + rho 41703) = rho 41701 + rho 41702 := by
      linear_combination r3476
    have ha5 : rho 41705 * (1 - rho 41703) = rho 41700 - rho 41701 - rho 41702 := by
      linear_combination r3477
    have haddx :
        rho 41704 * (1 + 3021 * (rho 41699 * seg45AccX39 rho) * (rho 41698 * seg45AccY39 rho)) =
          rho 41699 * seg45AccX39 rho + rho 41698 * seg45AccY39 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41705 * (1 - 3021 * (rho 41699 * seg45AccX39 rho) * (rho 41698 * seg45AccY39 rho)) =
          (-1) * (rho 41699 * seg45AccX39 rho) - rho 41698 * seg45AccY39 rho +
            (seg45AccY39 rho - seg45AccX39 rho * (-1)) * (rho 41698 + rho 41699) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41705 * (1 - rho 41703) = rho 41700 - rho 41701 - rho 41702 := ha5
        _ = (-1) * rho 41701 - rho 41702 + (seg45AccY39 rho - seg45AccX39 rho * (-1)) * (rho 41698 + rho 41699) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX40 rho = seg45AccX39 rho - Bool.toZMod bit * (seg45AccX39 rho - rho 41704) := by
      have hd : rho 41706 = Bool.toZMod bit * (rho 41704 - seg45AccX39 rho) := by
        rw [← hbit, seg45LadderFlatX39_eq]
        unfold seg45LadderFlatX39
        linear_combination -r3478
      unfold seg45AccX40
      linear_combination hd
    have hsely : seg45AccY40 rho = seg45AccY39 rho - Bool.toZMod bit * (seg45AccY39 rho - rho 41705) := by
      have hd : rho 41707 = Bool.toZMod bit * (rho 41705 - seg45AccY39 rho) := by
        rw [← hbit, seg45LadderFlatY39_eq]
        unfold seg45LadderFlatY39
        linear_combination -r3479
      unfold seg45AccY40
      linear_combination hd
    have hd0 : rho 41698 * rho 41699 = rho 41708 := by linear_combination r3480
    have hd1 : rho 41698 * rho 41698 = rho 41709 := by linear_combination r3481
    have hd2 : rho 41699 * rho 41699 = rho 41710 := by linear_combination r3482
    have hd3 : rho 41711 * (rho 41699 * rho 41699 + rho 41698 * rho 41698 * (-1)) = 2 * (rho 41698 * rho 41699) := by
      rw [hd0, hd1, hd2]
      linear_combination r3483
    have hd4 : rho 41712 * (2 - (rho 41699 * rho 41699 + rho 41698 * rho 41698 * (-1))) = rho 41699 * rho 41699 - rho 41698 * rho 41698 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3484
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX39 rho : Seg45.F), (seg45AccY39 rho : Seg45.F)⟩
      ⟨(rho 41698 : Seg45.F), (rho 41699 : Seg45.F)⟩
      ⟨(rho 41704 : Seg45.F), (rho 41705 : Seg45.F)⟩
      ⟨(seg45AccX40 rho : Seg45.F), (seg45AccY40 rho : Seg45.F)⟩
      ⟨(rho 41711 : Seg45.F), (rho 41712 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung39

theorem seg45_rung40 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40988 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX40 rho : Seg45.F), (seg45AccY40 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41711 : Seg45.F), (rho 41712 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX40 rho : Seg45.F), (seg45AccY40 rho : Seg45.F)⟩
        ⟨(rho 41711 : Seg45.F), (rho 41712 : Seg45.F)⟩
        ⟨(seg45AccX41 rho : Seg45.F), (seg45AccY41 rho : Seg45.F)⟩
        ⟨(rho 41724 : Seg45.F), (rho 41725 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3485, r3486, r3487, r3488, r3489, r3490, r3491, r3492, r3493, r3494, r3495, r3496, r3497, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3485 Seg45.relationLc235 Seg45.relationLc235Part0 Seg45.relationLc235Part1 Seg45.relationLc235Part2 at r3485
  unfold Seg45.relationRow3486 Seg45.relationLc236 Seg45.relationLc236Part0 Seg45.relationLc236Part1 at r3486
  unfold Seg45.relationRow3487 Seg45.relationLc237 Seg45.relationLc237Part0 Seg45.relationLc237Part1 at r3487
  unfold Seg45.relationRow3488 at r3488
  unfold Seg45.relationRow3489 at r3489
  unfold Seg45.relationRow3490 at r3490
  unfold Seg45.relationRow3491 Seg45.relationLc238 Seg45.relationLc238Part0 Seg45.relationLc238Part1 at r3491
  unfold Seg45.relationRow3492 Seg45.relationLc239 Seg45.relationLc239Part0 Seg45.relationLc239Part1 at r3492
  unfold Seg45.relationRow3493 at r3493
  unfold Seg45.relationRow3494 at r3494
  unfold Seg45.relationRow3495 at r3495
  unfold Seg45.relationRow3496 at r3496
  unfold Seg45.relationRow3497 at r3497
  have hrung40 (bit : Bool) (hbit : rho 40988 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX40 rho : Seg45.F), (seg45AccY40 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41711 : Seg45.F), (rho 41712 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX40 rho : Seg45.F), (seg45AccY40 rho : Seg45.F)⟩
        ⟨(rho 41711 : Seg45.F), (rho 41712 : Seg45.F)⟩
        ⟨(seg45AccX41 rho : Seg45.F), (seg45AccY41 rho : Seg45.F)⟩
        ⟨(rho 41724 : Seg45.F), (rho 41725 : Seg45.F)⟩ := by
    have ha0 : (rho 41711 + rho 41712) * (seg45AccX40 rho + seg45AccY40 rho) = rho 41713 := by
      rw [seg45LadderFlatX40_eq, seg45LadderFlatY40_eq]
      unfold seg45LadderFlatX40 seg45LadderFlatY40
      linear_combination r3485
    have ha1 : rho 41712 * seg45AccX40 rho = rho 41714 := by
      rw [seg45LadderFlatX40_eq]
      unfold seg45LadderFlatX40
      linear_combination r3486
    have ha2 : rho 41711 * seg45AccY40 rho = rho 41715 := by
      rw [seg45LadderFlatY40_eq]
      unfold seg45LadderFlatY40
      linear_combination r3487
    have ha3 : 3021 * rho 41714 * rho 41715 = rho 41716 := by
      linear_combination r3488
    have ha4 : rho 41717 * (1 + rho 41716) = rho 41714 + rho 41715 := by
      linear_combination r3489
    have ha5 : rho 41718 * (1 - rho 41716) = rho 41713 - rho 41714 - rho 41715 := by
      linear_combination r3490
    have haddx :
        rho 41717 * (1 + 3021 * (rho 41712 * seg45AccX40 rho) * (rho 41711 * seg45AccY40 rho)) =
          rho 41712 * seg45AccX40 rho + rho 41711 * seg45AccY40 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41718 * (1 - 3021 * (rho 41712 * seg45AccX40 rho) * (rho 41711 * seg45AccY40 rho)) =
          (-1) * (rho 41712 * seg45AccX40 rho) - rho 41711 * seg45AccY40 rho +
            (seg45AccY40 rho - seg45AccX40 rho * (-1)) * (rho 41711 + rho 41712) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41718 * (1 - rho 41716) = rho 41713 - rho 41714 - rho 41715 := ha5
        _ = (-1) * rho 41714 - rho 41715 + (seg45AccY40 rho - seg45AccX40 rho * (-1)) * (rho 41711 + rho 41712) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX41 rho = seg45AccX40 rho - Bool.toZMod bit * (seg45AccX40 rho - rho 41717) := by
      have hd : rho 41719 = Bool.toZMod bit * (rho 41717 - seg45AccX40 rho) := by
        rw [← hbit, seg45LadderFlatX40_eq]
        unfold seg45LadderFlatX40
        linear_combination -r3491
      unfold seg45AccX41
      linear_combination hd
    have hsely : seg45AccY41 rho = seg45AccY40 rho - Bool.toZMod bit * (seg45AccY40 rho - rho 41718) := by
      have hd : rho 41720 = Bool.toZMod bit * (rho 41718 - seg45AccY40 rho) := by
        rw [← hbit, seg45LadderFlatY40_eq]
        unfold seg45LadderFlatY40
        linear_combination -r3492
      unfold seg45AccY41
      linear_combination hd
    have hd0 : rho 41711 * rho 41712 = rho 41721 := by linear_combination r3493
    have hd1 : rho 41711 * rho 41711 = rho 41722 := by linear_combination r3494
    have hd2 : rho 41712 * rho 41712 = rho 41723 := by linear_combination r3495
    have hd3 : rho 41724 * (rho 41712 * rho 41712 + rho 41711 * rho 41711 * (-1)) = 2 * (rho 41711 * rho 41712) := by
      rw [hd0, hd1, hd2]
      linear_combination r3496
    have hd4 : rho 41725 * (2 - (rho 41712 * rho 41712 + rho 41711 * rho 41711 * (-1))) = rho 41712 * rho 41712 - rho 41711 * rho 41711 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3497
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX40 rho : Seg45.F), (seg45AccY40 rho : Seg45.F)⟩
      ⟨(rho 41711 : Seg45.F), (rho 41712 : Seg45.F)⟩
      ⟨(rho 41717 : Seg45.F), (rho 41718 : Seg45.F)⟩
      ⟨(seg45AccX41 rho : Seg45.F), (seg45AccY41 rho : Seg45.F)⟩
      ⟨(rho 41724 : Seg45.F), (rho 41725 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung40

theorem seg45_rung41 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40989 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX41 rho : Seg45.F), (seg45AccY41 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41724 : Seg45.F), (rho 41725 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX41 rho : Seg45.F), (seg45AccY41 rho : Seg45.F)⟩
        ⟨(rho 41724 : Seg45.F), (rho 41725 : Seg45.F)⟩
        ⟨(seg45AccX42 rho : Seg45.F), (seg45AccY42 rho : Seg45.F)⟩
        ⟨(rho 41737 : Seg45.F), (rho 41738 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3498, r3499, r3500, r3501, r3502, r3503, r3504, r3505, r3506, r3507, r3508, r3509, r3510, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3498 Seg45.relationLc240 Seg45.relationLc240Part0 Seg45.relationLc240Part1 Seg45.relationLc240Part2 at r3498
  unfold Seg45.relationRow3499 Seg45.relationLc241 Seg45.relationLc241Part0 Seg45.relationLc241Part1 at r3499
  unfold Seg45.relationRow3500 Seg45.relationLc242 Seg45.relationLc242Part0 Seg45.relationLc242Part1 at r3500
  unfold Seg45.relationRow3501 at r3501
  unfold Seg45.relationRow3502 at r3502
  unfold Seg45.relationRow3503 at r3503
  unfold Seg45.relationRow3504 Seg45.relationLc243 Seg45.relationLc243Part0 Seg45.relationLc243Part1 at r3504
  unfold Seg45.relationRow3505 Seg45.relationLc244 Seg45.relationLc244Part0 Seg45.relationLc244Part1 at r3505
  unfold Seg45.relationRow3506 at r3506
  unfold Seg45.relationRow3507 at r3507
  unfold Seg45.relationRow3508 at r3508
  unfold Seg45.relationRow3509 at r3509
  unfold Seg45.relationRow3510 at r3510
  have hrung41 (bit : Bool) (hbit : rho 40989 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX41 rho : Seg45.F), (seg45AccY41 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41724 : Seg45.F), (rho 41725 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX41 rho : Seg45.F), (seg45AccY41 rho : Seg45.F)⟩
        ⟨(rho 41724 : Seg45.F), (rho 41725 : Seg45.F)⟩
        ⟨(seg45AccX42 rho : Seg45.F), (seg45AccY42 rho : Seg45.F)⟩
        ⟨(rho 41737 : Seg45.F), (rho 41738 : Seg45.F)⟩ := by
    have ha0 : (rho 41724 + rho 41725) * (seg45AccX41 rho + seg45AccY41 rho) = rho 41726 := by
      rw [seg45LadderFlatX41_eq, seg45LadderFlatY41_eq]
      unfold seg45LadderFlatX41 seg45LadderFlatY41
      linear_combination r3498
    have ha1 : rho 41725 * seg45AccX41 rho = rho 41727 := by
      rw [seg45LadderFlatX41_eq]
      unfold seg45LadderFlatX41
      linear_combination r3499
    have ha2 : rho 41724 * seg45AccY41 rho = rho 41728 := by
      rw [seg45LadderFlatY41_eq]
      unfold seg45LadderFlatY41
      linear_combination r3500
    have ha3 : 3021 * rho 41727 * rho 41728 = rho 41729 := by
      linear_combination r3501
    have ha4 : rho 41730 * (1 + rho 41729) = rho 41727 + rho 41728 := by
      linear_combination r3502
    have ha5 : rho 41731 * (1 - rho 41729) = rho 41726 - rho 41727 - rho 41728 := by
      linear_combination r3503
    have haddx :
        rho 41730 * (1 + 3021 * (rho 41725 * seg45AccX41 rho) * (rho 41724 * seg45AccY41 rho)) =
          rho 41725 * seg45AccX41 rho + rho 41724 * seg45AccY41 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41731 * (1 - 3021 * (rho 41725 * seg45AccX41 rho) * (rho 41724 * seg45AccY41 rho)) =
          (-1) * (rho 41725 * seg45AccX41 rho) - rho 41724 * seg45AccY41 rho +
            (seg45AccY41 rho - seg45AccX41 rho * (-1)) * (rho 41724 + rho 41725) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41731 * (1 - rho 41729) = rho 41726 - rho 41727 - rho 41728 := ha5
        _ = (-1) * rho 41727 - rho 41728 + (seg45AccY41 rho - seg45AccX41 rho * (-1)) * (rho 41724 + rho 41725) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX42 rho = seg45AccX41 rho - Bool.toZMod bit * (seg45AccX41 rho - rho 41730) := by
      have hd : rho 41732 = Bool.toZMod bit * (rho 41730 - seg45AccX41 rho) := by
        rw [← hbit, seg45LadderFlatX41_eq]
        unfold seg45LadderFlatX41
        linear_combination -r3504
      unfold seg45AccX42
      linear_combination hd
    have hsely : seg45AccY42 rho = seg45AccY41 rho - Bool.toZMod bit * (seg45AccY41 rho - rho 41731) := by
      have hd : rho 41733 = Bool.toZMod bit * (rho 41731 - seg45AccY41 rho) := by
        rw [← hbit, seg45LadderFlatY41_eq]
        unfold seg45LadderFlatY41
        linear_combination -r3505
      unfold seg45AccY42
      linear_combination hd
    have hd0 : rho 41724 * rho 41725 = rho 41734 := by linear_combination r3506
    have hd1 : rho 41724 * rho 41724 = rho 41735 := by linear_combination r3507
    have hd2 : rho 41725 * rho 41725 = rho 41736 := by linear_combination r3508
    have hd3 : rho 41737 * (rho 41725 * rho 41725 + rho 41724 * rho 41724 * (-1)) = 2 * (rho 41724 * rho 41725) := by
      rw [hd0, hd1, hd2]
      linear_combination r3509
    have hd4 : rho 41738 * (2 - (rho 41725 * rho 41725 + rho 41724 * rho 41724 * (-1))) = rho 41725 * rho 41725 - rho 41724 * rho 41724 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3510
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX41 rho : Seg45.F), (seg45AccY41 rho : Seg45.F)⟩
      ⟨(rho 41724 : Seg45.F), (rho 41725 : Seg45.F)⟩
      ⟨(rho 41730 : Seg45.F), (rho 41731 : Seg45.F)⟩
      ⟨(seg45AccX42 rho : Seg45.F), (seg45AccY42 rho : Seg45.F)⟩
      ⟨(rho 41737 : Seg45.F), (rho 41738 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung41

theorem seg45_rung42 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40990 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX42 rho : Seg45.F), (seg45AccY42 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41737 : Seg45.F), (rho 41738 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX42 rho : Seg45.F), (seg45AccY42 rho : Seg45.F)⟩
        ⟨(rho 41737 : Seg45.F), (rho 41738 : Seg45.F)⟩
        ⟨(seg45AccX43 rho : Seg45.F), (seg45AccY43 rho : Seg45.F)⟩
        ⟨(rho 41750 : Seg45.F), (rho 41751 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3511, r3512, r3513, r3514, r3515, r3516, r3517, r3518, r3519⟩
  unfold Seg45.relationPart44 at p44
  rcases p44 with ⟨r3520, r3521, r3522, r3523, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3511 Seg45.relationLc245 Seg45.relationLc245Part0 Seg45.relationLc245Part1 Seg45.relationLc245Part2 at r3511
  unfold Seg45.relationRow3512 Seg45.relationLc246 Seg45.relationLc246Part0 Seg45.relationLc246Part1 at r3512
  unfold Seg45.relationRow3513 Seg45.relationLc247 Seg45.relationLc247Part0 Seg45.relationLc247Part1 at r3513
  unfold Seg45.relationRow3514 at r3514
  unfold Seg45.relationRow3515 at r3515
  unfold Seg45.relationRow3516 at r3516
  unfold Seg45.relationRow3517 Seg45.relationLc248 Seg45.relationLc248Part0 Seg45.relationLc248Part1 at r3517
  unfold Seg45.relationRow3518 Seg45.relationLc249 Seg45.relationLc249Part0 Seg45.relationLc249Part1 at r3518
  unfold Seg45.relationRow3519 at r3519
  unfold Seg45.relationRow3520 at r3520
  unfold Seg45.relationRow3521 at r3521
  unfold Seg45.relationRow3522 at r3522
  unfold Seg45.relationRow3523 at r3523
  have hrung42 (bit : Bool) (hbit : rho 40990 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX42 rho : Seg45.F), (seg45AccY42 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41737 : Seg45.F), (rho 41738 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX42 rho : Seg45.F), (seg45AccY42 rho : Seg45.F)⟩
        ⟨(rho 41737 : Seg45.F), (rho 41738 : Seg45.F)⟩
        ⟨(seg45AccX43 rho : Seg45.F), (seg45AccY43 rho : Seg45.F)⟩
        ⟨(rho 41750 : Seg45.F), (rho 41751 : Seg45.F)⟩ := by
    have ha0 : (rho 41737 + rho 41738) * (seg45AccX42 rho + seg45AccY42 rho) = rho 41739 := by
      rw [seg45LadderFlatX42_eq, seg45LadderFlatY42_eq]
      unfold seg45LadderFlatX42 seg45LadderFlatY42
      linear_combination r3511
    have ha1 : rho 41738 * seg45AccX42 rho = rho 41740 := by
      rw [seg45LadderFlatX42_eq]
      unfold seg45LadderFlatX42
      linear_combination r3512
    have ha2 : rho 41737 * seg45AccY42 rho = rho 41741 := by
      rw [seg45LadderFlatY42_eq]
      unfold seg45LadderFlatY42
      linear_combination r3513
    have ha3 : 3021 * rho 41740 * rho 41741 = rho 41742 := by
      linear_combination r3514
    have ha4 : rho 41743 * (1 + rho 41742) = rho 41740 + rho 41741 := by
      linear_combination r3515
    have ha5 : rho 41744 * (1 - rho 41742) = rho 41739 - rho 41740 - rho 41741 := by
      linear_combination r3516
    have haddx :
        rho 41743 * (1 + 3021 * (rho 41738 * seg45AccX42 rho) * (rho 41737 * seg45AccY42 rho)) =
          rho 41738 * seg45AccX42 rho + rho 41737 * seg45AccY42 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41744 * (1 - 3021 * (rho 41738 * seg45AccX42 rho) * (rho 41737 * seg45AccY42 rho)) =
          (-1) * (rho 41738 * seg45AccX42 rho) - rho 41737 * seg45AccY42 rho +
            (seg45AccY42 rho - seg45AccX42 rho * (-1)) * (rho 41737 + rho 41738) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41744 * (1 - rho 41742) = rho 41739 - rho 41740 - rho 41741 := ha5
        _ = (-1) * rho 41740 - rho 41741 + (seg45AccY42 rho - seg45AccX42 rho * (-1)) * (rho 41737 + rho 41738) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX43 rho = seg45AccX42 rho - Bool.toZMod bit * (seg45AccX42 rho - rho 41743) := by
      have hd : rho 41745 = Bool.toZMod bit * (rho 41743 - seg45AccX42 rho) := by
        rw [← hbit, seg45LadderFlatX42_eq]
        unfold seg45LadderFlatX42
        linear_combination -r3517
      unfold seg45AccX43
      linear_combination hd
    have hsely : seg45AccY43 rho = seg45AccY42 rho - Bool.toZMod bit * (seg45AccY42 rho - rho 41744) := by
      have hd : rho 41746 = Bool.toZMod bit * (rho 41744 - seg45AccY42 rho) := by
        rw [← hbit, seg45LadderFlatY42_eq]
        unfold seg45LadderFlatY42
        linear_combination -r3518
      unfold seg45AccY43
      linear_combination hd
    have hd0 : rho 41737 * rho 41738 = rho 41747 := by linear_combination r3519
    have hd1 : rho 41737 * rho 41737 = rho 41748 := by linear_combination r3520
    have hd2 : rho 41738 * rho 41738 = rho 41749 := by linear_combination r3521
    have hd3 : rho 41750 * (rho 41738 * rho 41738 + rho 41737 * rho 41737 * (-1)) = 2 * (rho 41737 * rho 41738) := by
      rw [hd0, hd1, hd2]
      linear_combination r3522
    have hd4 : rho 41751 * (2 - (rho 41738 * rho 41738 + rho 41737 * rho 41737 * (-1))) = rho 41738 * rho 41738 - rho 41737 * rho 41737 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3523
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX42 rho : Seg45.F), (seg45AccY42 rho : Seg45.F)⟩
      ⟨(rho 41737 : Seg45.F), (rho 41738 : Seg45.F)⟩
      ⟨(rho 41743 : Seg45.F), (rho 41744 : Seg45.F)⟩
      ⟨(seg45AccX43 rho : Seg45.F), (seg45AccY43 rho : Seg45.F)⟩
      ⟨(rho 41750 : Seg45.F), (rho 41751 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung42

theorem seg45_rung43 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40991 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX43 rho : Seg45.F), (seg45AccY43 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41750 : Seg45.F), (rho 41751 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX43 rho : Seg45.F), (seg45AccY43 rho : Seg45.F)⟩
        ⟨(rho 41750 : Seg45.F), (rho 41751 : Seg45.F)⟩
        ⟨(seg45AccX44 rho : Seg45.F), (seg45AccY44 rho : Seg45.F)⟩
        ⟨(rho 41763 : Seg45.F), (rho 41764 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, r3524, r3525, r3526, r3527, r3528, r3529, r3530, r3531, r3532, r3533, r3534, r3535, r3536, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3524 Seg45.relationLc250 Seg45.relationLc250Part0 Seg45.relationLc250Part1 Seg45.relationLc250Part2 at r3524
  unfold Seg45.relationRow3525 Seg45.relationLc251 Seg45.relationLc251Part0 Seg45.relationLc251Part1 at r3525
  unfold Seg45.relationRow3526 Seg45.relationLc252 Seg45.relationLc252Part0 Seg45.relationLc252Part1 at r3526
  unfold Seg45.relationRow3527 at r3527
  unfold Seg45.relationRow3528 at r3528
  unfold Seg45.relationRow3529 at r3529
  unfold Seg45.relationRow3530 Seg45.relationLc253 Seg45.relationLc253Part0 Seg45.relationLc253Part1 at r3530
  unfold Seg45.relationRow3531 Seg45.relationLc254 Seg45.relationLc254Part0 Seg45.relationLc254Part1 at r3531
  unfold Seg45.relationRow3532 at r3532
  unfold Seg45.relationRow3533 at r3533
  unfold Seg45.relationRow3534 at r3534
  unfold Seg45.relationRow3535 at r3535
  unfold Seg45.relationRow3536 at r3536
  have hrung43 (bit : Bool) (hbit : rho 40991 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX43 rho : Seg45.F), (seg45AccY43 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41750 : Seg45.F), (rho 41751 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX43 rho : Seg45.F), (seg45AccY43 rho : Seg45.F)⟩
        ⟨(rho 41750 : Seg45.F), (rho 41751 : Seg45.F)⟩
        ⟨(seg45AccX44 rho : Seg45.F), (seg45AccY44 rho : Seg45.F)⟩
        ⟨(rho 41763 : Seg45.F), (rho 41764 : Seg45.F)⟩ := by
    have ha0 : (rho 41750 + rho 41751) * (seg45AccX43 rho + seg45AccY43 rho) = rho 41752 := by
      rw [seg45LadderFlatX43_eq, seg45LadderFlatY43_eq]
      unfold seg45LadderFlatX43 seg45LadderFlatY43
      linear_combination r3524
    have ha1 : rho 41751 * seg45AccX43 rho = rho 41753 := by
      rw [seg45LadderFlatX43_eq]
      unfold seg45LadderFlatX43
      linear_combination r3525
    have ha2 : rho 41750 * seg45AccY43 rho = rho 41754 := by
      rw [seg45LadderFlatY43_eq]
      unfold seg45LadderFlatY43
      linear_combination r3526
    have ha3 : 3021 * rho 41753 * rho 41754 = rho 41755 := by
      linear_combination r3527
    have ha4 : rho 41756 * (1 + rho 41755) = rho 41753 + rho 41754 := by
      linear_combination r3528
    have ha5 : rho 41757 * (1 - rho 41755) = rho 41752 - rho 41753 - rho 41754 := by
      linear_combination r3529
    have haddx :
        rho 41756 * (1 + 3021 * (rho 41751 * seg45AccX43 rho) * (rho 41750 * seg45AccY43 rho)) =
          rho 41751 * seg45AccX43 rho + rho 41750 * seg45AccY43 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41757 * (1 - 3021 * (rho 41751 * seg45AccX43 rho) * (rho 41750 * seg45AccY43 rho)) =
          (-1) * (rho 41751 * seg45AccX43 rho) - rho 41750 * seg45AccY43 rho +
            (seg45AccY43 rho - seg45AccX43 rho * (-1)) * (rho 41750 + rho 41751) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41757 * (1 - rho 41755) = rho 41752 - rho 41753 - rho 41754 := ha5
        _ = (-1) * rho 41753 - rho 41754 + (seg45AccY43 rho - seg45AccX43 rho * (-1)) * (rho 41750 + rho 41751) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX44 rho = seg45AccX43 rho - Bool.toZMod bit * (seg45AccX43 rho - rho 41756) := by
      have hd : rho 41758 = Bool.toZMod bit * (rho 41756 - seg45AccX43 rho) := by
        rw [← hbit, seg45LadderFlatX43_eq]
        unfold seg45LadderFlatX43
        linear_combination -r3530
      unfold seg45AccX44
      linear_combination hd
    have hsely : seg45AccY44 rho = seg45AccY43 rho - Bool.toZMod bit * (seg45AccY43 rho - rho 41757) := by
      have hd : rho 41759 = Bool.toZMod bit * (rho 41757 - seg45AccY43 rho) := by
        rw [← hbit, seg45LadderFlatY43_eq]
        unfold seg45LadderFlatY43
        linear_combination -r3531
      unfold seg45AccY44
      linear_combination hd
    have hd0 : rho 41750 * rho 41751 = rho 41760 := by linear_combination r3532
    have hd1 : rho 41750 * rho 41750 = rho 41761 := by linear_combination r3533
    have hd2 : rho 41751 * rho 41751 = rho 41762 := by linear_combination r3534
    have hd3 : rho 41763 * (rho 41751 * rho 41751 + rho 41750 * rho 41750 * (-1)) = 2 * (rho 41750 * rho 41751) := by
      rw [hd0, hd1, hd2]
      linear_combination r3535
    have hd4 : rho 41764 * (2 - (rho 41751 * rho 41751 + rho 41750 * rho 41750 * (-1))) = rho 41751 * rho 41751 - rho 41750 * rho 41750 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3536
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX43 rho : Seg45.F), (seg45AccY43 rho : Seg45.F)⟩
      ⟨(rho 41750 : Seg45.F), (rho 41751 : Seg45.F)⟩
      ⟨(rho 41756 : Seg45.F), (rho 41757 : Seg45.F)⟩
      ⟨(seg45AccX44 rho : Seg45.F), (seg45AccY44 rho : Seg45.F)⟩
      ⟨(rho 41763 : Seg45.F), (rho 41764 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung43

theorem seg45_rung44 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40992 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX44 rho : Seg45.F), (seg45AccY44 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41763 : Seg45.F), (rho 41764 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX44 rho : Seg45.F), (seg45AccY44 rho : Seg45.F)⟩
        ⟨(rho 41763 : Seg45.F), (rho 41764 : Seg45.F)⟩
        ⟨(seg45AccX45 rho : Seg45.F), (seg45AccY45 rho : Seg45.F)⟩
        ⟨(rho 41776 : Seg45.F), (rho 41777 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3537, r3538, r3539, r3540, r3541, r3542, r3543, r3544, r3545, r3546, r3547, r3548, r3549, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3537 Seg45.relationLc255 Seg45.relationLc255Part0 Seg45.relationLc255Part1 Seg45.relationLc255Part2 at r3537
  unfold Seg45.relationRow3538 Seg45.relationLc256 Seg45.relationLc256Part0 Seg45.relationLc256Part1 at r3538
  unfold Seg45.relationRow3539 Seg45.relationLc257 Seg45.relationLc257Part0 Seg45.relationLc257Part1 at r3539
  unfold Seg45.relationRow3540 at r3540
  unfold Seg45.relationRow3541 at r3541
  unfold Seg45.relationRow3542 at r3542
  unfold Seg45.relationRow3543 Seg45.relationLc258 Seg45.relationLc258Part0 Seg45.relationLc258Part1 at r3543
  unfold Seg45.relationRow3544 Seg45.relationLc259 Seg45.relationLc259Part0 Seg45.relationLc259Part1 at r3544
  unfold Seg45.relationRow3545 at r3545
  unfold Seg45.relationRow3546 at r3546
  unfold Seg45.relationRow3547 at r3547
  unfold Seg45.relationRow3548 at r3548
  unfold Seg45.relationRow3549 at r3549
  have hrung44 (bit : Bool) (hbit : rho 40992 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX44 rho : Seg45.F), (seg45AccY44 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41763 : Seg45.F), (rho 41764 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX44 rho : Seg45.F), (seg45AccY44 rho : Seg45.F)⟩
        ⟨(rho 41763 : Seg45.F), (rho 41764 : Seg45.F)⟩
        ⟨(seg45AccX45 rho : Seg45.F), (seg45AccY45 rho : Seg45.F)⟩
        ⟨(rho 41776 : Seg45.F), (rho 41777 : Seg45.F)⟩ := by
    have ha0 : (rho 41763 + rho 41764) * (seg45AccX44 rho + seg45AccY44 rho) = rho 41765 := by
      rw [seg45LadderFlatX44_eq, seg45LadderFlatY44_eq]
      unfold seg45LadderFlatX44 seg45LadderFlatY44
      linear_combination r3537
    have ha1 : rho 41764 * seg45AccX44 rho = rho 41766 := by
      rw [seg45LadderFlatX44_eq]
      unfold seg45LadderFlatX44
      linear_combination r3538
    have ha2 : rho 41763 * seg45AccY44 rho = rho 41767 := by
      rw [seg45LadderFlatY44_eq]
      unfold seg45LadderFlatY44
      linear_combination r3539
    have ha3 : 3021 * rho 41766 * rho 41767 = rho 41768 := by
      linear_combination r3540
    have ha4 : rho 41769 * (1 + rho 41768) = rho 41766 + rho 41767 := by
      linear_combination r3541
    have ha5 : rho 41770 * (1 - rho 41768) = rho 41765 - rho 41766 - rho 41767 := by
      linear_combination r3542
    have haddx :
        rho 41769 * (1 + 3021 * (rho 41764 * seg45AccX44 rho) * (rho 41763 * seg45AccY44 rho)) =
          rho 41764 * seg45AccX44 rho + rho 41763 * seg45AccY44 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41770 * (1 - 3021 * (rho 41764 * seg45AccX44 rho) * (rho 41763 * seg45AccY44 rho)) =
          (-1) * (rho 41764 * seg45AccX44 rho) - rho 41763 * seg45AccY44 rho +
            (seg45AccY44 rho - seg45AccX44 rho * (-1)) * (rho 41763 + rho 41764) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41770 * (1 - rho 41768) = rho 41765 - rho 41766 - rho 41767 := ha5
        _ = (-1) * rho 41766 - rho 41767 + (seg45AccY44 rho - seg45AccX44 rho * (-1)) * (rho 41763 + rho 41764) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX45 rho = seg45AccX44 rho - Bool.toZMod bit * (seg45AccX44 rho - rho 41769) := by
      have hd : rho 41771 = Bool.toZMod bit * (rho 41769 - seg45AccX44 rho) := by
        rw [← hbit, seg45LadderFlatX44_eq]
        unfold seg45LadderFlatX44
        linear_combination -r3543
      unfold seg45AccX45
      linear_combination hd
    have hsely : seg45AccY45 rho = seg45AccY44 rho - Bool.toZMod bit * (seg45AccY44 rho - rho 41770) := by
      have hd : rho 41772 = Bool.toZMod bit * (rho 41770 - seg45AccY44 rho) := by
        rw [← hbit, seg45LadderFlatY44_eq]
        unfold seg45LadderFlatY44
        linear_combination -r3544
      unfold seg45AccY45
      linear_combination hd
    have hd0 : rho 41763 * rho 41764 = rho 41773 := by linear_combination r3545
    have hd1 : rho 41763 * rho 41763 = rho 41774 := by linear_combination r3546
    have hd2 : rho 41764 * rho 41764 = rho 41775 := by linear_combination r3547
    have hd3 : rho 41776 * (rho 41764 * rho 41764 + rho 41763 * rho 41763 * (-1)) = 2 * (rho 41763 * rho 41764) := by
      rw [hd0, hd1, hd2]
      linear_combination r3548
    have hd4 : rho 41777 * (2 - (rho 41764 * rho 41764 + rho 41763 * rho 41763 * (-1))) = rho 41764 * rho 41764 - rho 41763 * rho 41763 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3549
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX44 rho : Seg45.F), (seg45AccY44 rho : Seg45.F)⟩
      ⟨(rho 41763 : Seg45.F), (rho 41764 : Seg45.F)⟩
      ⟨(rho 41769 : Seg45.F), (rho 41770 : Seg45.F)⟩
      ⟨(seg45AccX45 rho : Seg45.F), (seg45AccY45 rho : Seg45.F)⟩
      ⟨(rho 41776 : Seg45.F), (rho 41777 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung44

theorem seg45_rung45 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40993 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX45 rho : Seg45.F), (seg45AccY45 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41776 : Seg45.F), (rho 41777 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX45 rho : Seg45.F), (seg45AccY45 rho : Seg45.F)⟩
        ⟨(rho 41776 : Seg45.F), (rho 41777 : Seg45.F)⟩
        ⟨(seg45AccX46 rho : Seg45.F), (seg45AccY46 rho : Seg45.F)⟩
        ⟨(rho 41789 : Seg45.F), (rho 41790 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3550, r3551, r3552, r3553, r3554, r3555, r3556, r3557, r3558, r3559, r3560, r3561, r3562, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3550 Seg45.relationLc260 Seg45.relationLc260Part0 Seg45.relationLc260Part1 Seg45.relationLc260Part2 at r3550
  unfold Seg45.relationRow3551 Seg45.relationLc261 Seg45.relationLc261Part0 Seg45.relationLc261Part1 at r3551
  unfold Seg45.relationRow3552 Seg45.relationLc262 Seg45.relationLc262Part0 Seg45.relationLc262Part1 at r3552
  unfold Seg45.relationRow3553 at r3553
  unfold Seg45.relationRow3554 at r3554
  unfold Seg45.relationRow3555 at r3555
  unfold Seg45.relationRow3556 Seg45.relationLc263 Seg45.relationLc263Part0 Seg45.relationLc263Part1 at r3556
  unfold Seg45.relationRow3557 Seg45.relationLc264 Seg45.relationLc264Part0 Seg45.relationLc264Part1 at r3557
  unfold Seg45.relationRow3558 at r3558
  unfold Seg45.relationRow3559 at r3559
  unfold Seg45.relationRow3560 at r3560
  unfold Seg45.relationRow3561 at r3561
  unfold Seg45.relationRow3562 at r3562
  have hrung45 (bit : Bool) (hbit : rho 40993 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX45 rho : Seg45.F), (seg45AccY45 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41776 : Seg45.F), (rho 41777 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX45 rho : Seg45.F), (seg45AccY45 rho : Seg45.F)⟩
        ⟨(rho 41776 : Seg45.F), (rho 41777 : Seg45.F)⟩
        ⟨(seg45AccX46 rho : Seg45.F), (seg45AccY46 rho : Seg45.F)⟩
        ⟨(rho 41789 : Seg45.F), (rho 41790 : Seg45.F)⟩ := by
    have ha0 : (rho 41776 + rho 41777) * (seg45AccX45 rho + seg45AccY45 rho) = rho 41778 := by
      rw [seg45LadderFlatX45_eq, seg45LadderFlatY45_eq]
      unfold seg45LadderFlatX45 seg45LadderFlatY45
      linear_combination r3550
    have ha1 : rho 41777 * seg45AccX45 rho = rho 41779 := by
      rw [seg45LadderFlatX45_eq]
      unfold seg45LadderFlatX45
      linear_combination r3551
    have ha2 : rho 41776 * seg45AccY45 rho = rho 41780 := by
      rw [seg45LadderFlatY45_eq]
      unfold seg45LadderFlatY45
      linear_combination r3552
    have ha3 : 3021 * rho 41779 * rho 41780 = rho 41781 := by
      linear_combination r3553
    have ha4 : rho 41782 * (1 + rho 41781) = rho 41779 + rho 41780 := by
      linear_combination r3554
    have ha5 : rho 41783 * (1 - rho 41781) = rho 41778 - rho 41779 - rho 41780 := by
      linear_combination r3555
    have haddx :
        rho 41782 * (1 + 3021 * (rho 41777 * seg45AccX45 rho) * (rho 41776 * seg45AccY45 rho)) =
          rho 41777 * seg45AccX45 rho + rho 41776 * seg45AccY45 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41783 * (1 - 3021 * (rho 41777 * seg45AccX45 rho) * (rho 41776 * seg45AccY45 rho)) =
          (-1) * (rho 41777 * seg45AccX45 rho) - rho 41776 * seg45AccY45 rho +
            (seg45AccY45 rho - seg45AccX45 rho * (-1)) * (rho 41776 + rho 41777) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41783 * (1 - rho 41781) = rho 41778 - rho 41779 - rho 41780 := ha5
        _ = (-1) * rho 41779 - rho 41780 + (seg45AccY45 rho - seg45AccX45 rho * (-1)) * (rho 41776 + rho 41777) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX46 rho = seg45AccX45 rho - Bool.toZMod bit * (seg45AccX45 rho - rho 41782) := by
      have hd : rho 41784 = Bool.toZMod bit * (rho 41782 - seg45AccX45 rho) := by
        rw [← hbit, seg45LadderFlatX45_eq]
        unfold seg45LadderFlatX45
        linear_combination -r3556
      unfold seg45AccX46
      linear_combination hd
    have hsely : seg45AccY46 rho = seg45AccY45 rho - Bool.toZMod bit * (seg45AccY45 rho - rho 41783) := by
      have hd : rho 41785 = Bool.toZMod bit * (rho 41783 - seg45AccY45 rho) := by
        rw [← hbit, seg45LadderFlatY45_eq]
        unfold seg45LadderFlatY45
        linear_combination -r3557
      unfold seg45AccY46
      linear_combination hd
    have hd0 : rho 41776 * rho 41777 = rho 41786 := by linear_combination r3558
    have hd1 : rho 41776 * rho 41776 = rho 41787 := by linear_combination r3559
    have hd2 : rho 41777 * rho 41777 = rho 41788 := by linear_combination r3560
    have hd3 : rho 41789 * (rho 41777 * rho 41777 + rho 41776 * rho 41776 * (-1)) = 2 * (rho 41776 * rho 41777) := by
      rw [hd0, hd1, hd2]
      linear_combination r3561
    have hd4 : rho 41790 * (2 - (rho 41777 * rho 41777 + rho 41776 * rho 41776 * (-1))) = rho 41777 * rho 41777 - rho 41776 * rho 41776 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3562
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX45 rho : Seg45.F), (seg45AccY45 rho : Seg45.F)⟩
      ⟨(rho 41776 : Seg45.F), (rho 41777 : Seg45.F)⟩
      ⟨(rho 41782 : Seg45.F), (rho 41783 : Seg45.F)⟩
      ⟨(seg45AccX46 rho : Seg45.F), (seg45AccY46 rho : Seg45.F)⟩
      ⟨(rho 41789 : Seg45.F), (rho 41790 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung45

theorem seg45_rung46 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40994 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX46 rho : Seg45.F), (seg45AccY46 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41789 : Seg45.F), (rho 41790 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX46 rho : Seg45.F), (seg45AccY46 rho : Seg45.F)⟩
        ⟨(rho 41789 : Seg45.F), (rho 41790 : Seg45.F)⟩
        ⟨(seg45AccX47 rho : Seg45.F), (seg45AccY47 rho : Seg45.F)⟩
        ⟨(rho 41802 : Seg45.F), (rho 41803 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3563, r3564, r3565, r3566, r3567, r3568, r3569, r3570, r3571, r3572, r3573, r3574, r3575, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3563 Seg45.relationLc265 Seg45.relationLc265Part0 Seg45.relationLc265Part1 Seg45.relationLc265Part2 at r3563
  unfold Seg45.relationRow3564 Seg45.relationLc266 Seg45.relationLc266Part0 Seg45.relationLc266Part1 at r3564
  unfold Seg45.relationRow3565 Seg45.relationLc267 Seg45.relationLc267Part0 Seg45.relationLc267Part1 at r3565
  unfold Seg45.relationRow3566 at r3566
  unfold Seg45.relationRow3567 at r3567
  unfold Seg45.relationRow3568 at r3568
  unfold Seg45.relationRow3569 Seg45.relationLc268 Seg45.relationLc268Part0 Seg45.relationLc268Part1 at r3569
  unfold Seg45.relationRow3570 Seg45.relationLc269 Seg45.relationLc269Part0 Seg45.relationLc269Part1 at r3570
  unfold Seg45.relationRow3571 at r3571
  unfold Seg45.relationRow3572 at r3572
  unfold Seg45.relationRow3573 at r3573
  unfold Seg45.relationRow3574 at r3574
  unfold Seg45.relationRow3575 at r3575
  have hrung46 (bit : Bool) (hbit : rho 40994 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX46 rho : Seg45.F), (seg45AccY46 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41789 : Seg45.F), (rho 41790 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX46 rho : Seg45.F), (seg45AccY46 rho : Seg45.F)⟩
        ⟨(rho 41789 : Seg45.F), (rho 41790 : Seg45.F)⟩
        ⟨(seg45AccX47 rho : Seg45.F), (seg45AccY47 rho : Seg45.F)⟩
        ⟨(rho 41802 : Seg45.F), (rho 41803 : Seg45.F)⟩ := by
    have ha0 : (rho 41789 + rho 41790) * (seg45AccX46 rho + seg45AccY46 rho) = rho 41791 := by
      rw [seg45LadderFlatX46_eq, seg45LadderFlatY46_eq]
      unfold seg45LadderFlatX46 seg45LadderFlatY46
      linear_combination r3563
    have ha1 : rho 41790 * seg45AccX46 rho = rho 41792 := by
      rw [seg45LadderFlatX46_eq]
      unfold seg45LadderFlatX46
      linear_combination r3564
    have ha2 : rho 41789 * seg45AccY46 rho = rho 41793 := by
      rw [seg45LadderFlatY46_eq]
      unfold seg45LadderFlatY46
      linear_combination r3565
    have ha3 : 3021 * rho 41792 * rho 41793 = rho 41794 := by
      linear_combination r3566
    have ha4 : rho 41795 * (1 + rho 41794) = rho 41792 + rho 41793 := by
      linear_combination r3567
    have ha5 : rho 41796 * (1 - rho 41794) = rho 41791 - rho 41792 - rho 41793 := by
      linear_combination r3568
    have haddx :
        rho 41795 * (1 + 3021 * (rho 41790 * seg45AccX46 rho) * (rho 41789 * seg45AccY46 rho)) =
          rho 41790 * seg45AccX46 rho + rho 41789 * seg45AccY46 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41796 * (1 - 3021 * (rho 41790 * seg45AccX46 rho) * (rho 41789 * seg45AccY46 rho)) =
          (-1) * (rho 41790 * seg45AccX46 rho) - rho 41789 * seg45AccY46 rho +
            (seg45AccY46 rho - seg45AccX46 rho * (-1)) * (rho 41789 + rho 41790) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41796 * (1 - rho 41794) = rho 41791 - rho 41792 - rho 41793 := ha5
        _ = (-1) * rho 41792 - rho 41793 + (seg45AccY46 rho - seg45AccX46 rho * (-1)) * (rho 41789 + rho 41790) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX47 rho = seg45AccX46 rho - Bool.toZMod bit * (seg45AccX46 rho - rho 41795) := by
      have hd : rho 41797 = Bool.toZMod bit * (rho 41795 - seg45AccX46 rho) := by
        rw [← hbit, seg45LadderFlatX46_eq]
        unfold seg45LadderFlatX46
        linear_combination -r3569
      unfold seg45AccX47
      linear_combination hd
    have hsely : seg45AccY47 rho = seg45AccY46 rho - Bool.toZMod bit * (seg45AccY46 rho - rho 41796) := by
      have hd : rho 41798 = Bool.toZMod bit * (rho 41796 - seg45AccY46 rho) := by
        rw [← hbit, seg45LadderFlatY46_eq]
        unfold seg45LadderFlatY46
        linear_combination -r3570
      unfold seg45AccY47
      linear_combination hd
    have hd0 : rho 41789 * rho 41790 = rho 41799 := by linear_combination r3571
    have hd1 : rho 41789 * rho 41789 = rho 41800 := by linear_combination r3572
    have hd2 : rho 41790 * rho 41790 = rho 41801 := by linear_combination r3573
    have hd3 : rho 41802 * (rho 41790 * rho 41790 + rho 41789 * rho 41789 * (-1)) = 2 * (rho 41789 * rho 41790) := by
      rw [hd0, hd1, hd2]
      linear_combination r3574
    have hd4 : rho 41803 * (2 - (rho 41790 * rho 41790 + rho 41789 * rho 41789 * (-1))) = rho 41790 * rho 41790 - rho 41789 * rho 41789 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3575
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX46 rho : Seg45.F), (seg45AccY46 rho : Seg45.F)⟩
      ⟨(rho 41789 : Seg45.F), (rho 41790 : Seg45.F)⟩
      ⟨(rho 41795 : Seg45.F), (rho 41796 : Seg45.F)⟩
      ⟨(seg45AccX47 rho : Seg45.F), (seg45AccY47 rho : Seg45.F)⟩
      ⟨(rho 41802 : Seg45.F), (rho 41803 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung46

theorem seg45_rung47 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40995 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX47 rho : Seg45.F), (seg45AccY47 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41802 : Seg45.F), (rho 41803 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX47 rho : Seg45.F), (seg45AccY47 rho : Seg45.F)⟩
        ⟨(rho 41802 : Seg45.F), (rho 41803 : Seg45.F)⟩
        ⟨(seg45AccX48 rho : Seg45.F), (seg45AccY48 rho : Seg45.F)⟩
        ⟨(rho 41815 : Seg45.F), (rho 41816 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3576, r3577, r3578, r3579, r3580, r3581, r3582, r3583, r3584, r3585, r3586, r3587, r3588, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3576 Seg45.relationLc270 Seg45.relationLc270Part0 Seg45.relationLc270Part1 Seg45.relationLc270Part2 at r3576
  unfold Seg45.relationRow3577 Seg45.relationLc271 Seg45.relationLc271Part0 Seg45.relationLc271Part1 at r3577
  unfold Seg45.relationRow3578 Seg45.relationLc272 Seg45.relationLc272Part0 Seg45.relationLc272Part1 at r3578
  unfold Seg45.relationRow3579 at r3579
  unfold Seg45.relationRow3580 at r3580
  unfold Seg45.relationRow3581 at r3581
  unfold Seg45.relationRow3582 Seg45.relationLc273 Seg45.relationLc273Part0 Seg45.relationLc273Part1 at r3582
  unfold Seg45.relationRow3583 Seg45.relationLc274 Seg45.relationLc274Part0 Seg45.relationLc274Part1 at r3583
  unfold Seg45.relationRow3584 at r3584
  unfold Seg45.relationRow3585 at r3585
  unfold Seg45.relationRow3586 at r3586
  unfold Seg45.relationRow3587 at r3587
  unfold Seg45.relationRow3588 at r3588
  have hrung47 (bit : Bool) (hbit : rho 40995 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX47 rho : Seg45.F), (seg45AccY47 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41802 : Seg45.F), (rho 41803 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX47 rho : Seg45.F), (seg45AccY47 rho : Seg45.F)⟩
        ⟨(rho 41802 : Seg45.F), (rho 41803 : Seg45.F)⟩
        ⟨(seg45AccX48 rho : Seg45.F), (seg45AccY48 rho : Seg45.F)⟩
        ⟨(rho 41815 : Seg45.F), (rho 41816 : Seg45.F)⟩ := by
    have ha0 : (rho 41802 + rho 41803) * (seg45AccX47 rho + seg45AccY47 rho) = rho 41804 := by
      rw [seg45LadderFlatX47_eq, seg45LadderFlatY47_eq]
      unfold seg45LadderFlatX47 seg45LadderFlatY47
      linear_combination r3576
    have ha1 : rho 41803 * seg45AccX47 rho = rho 41805 := by
      rw [seg45LadderFlatX47_eq]
      unfold seg45LadderFlatX47
      linear_combination r3577
    have ha2 : rho 41802 * seg45AccY47 rho = rho 41806 := by
      rw [seg45LadderFlatY47_eq]
      unfold seg45LadderFlatY47
      linear_combination r3578
    have ha3 : 3021 * rho 41805 * rho 41806 = rho 41807 := by
      linear_combination r3579
    have ha4 : rho 41808 * (1 + rho 41807) = rho 41805 + rho 41806 := by
      linear_combination r3580
    have ha5 : rho 41809 * (1 - rho 41807) = rho 41804 - rho 41805 - rho 41806 := by
      linear_combination r3581
    have haddx :
        rho 41808 * (1 + 3021 * (rho 41803 * seg45AccX47 rho) * (rho 41802 * seg45AccY47 rho)) =
          rho 41803 * seg45AccX47 rho + rho 41802 * seg45AccY47 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41809 * (1 - 3021 * (rho 41803 * seg45AccX47 rho) * (rho 41802 * seg45AccY47 rho)) =
          (-1) * (rho 41803 * seg45AccX47 rho) - rho 41802 * seg45AccY47 rho +
            (seg45AccY47 rho - seg45AccX47 rho * (-1)) * (rho 41802 + rho 41803) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41809 * (1 - rho 41807) = rho 41804 - rho 41805 - rho 41806 := ha5
        _ = (-1) * rho 41805 - rho 41806 + (seg45AccY47 rho - seg45AccX47 rho * (-1)) * (rho 41802 + rho 41803) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX48 rho = seg45AccX47 rho - Bool.toZMod bit * (seg45AccX47 rho - rho 41808) := by
      have hd : rho 41810 = Bool.toZMod bit * (rho 41808 - seg45AccX47 rho) := by
        rw [← hbit, seg45LadderFlatX47_eq]
        unfold seg45LadderFlatX47
        linear_combination -r3582
      unfold seg45AccX48
      linear_combination hd
    have hsely : seg45AccY48 rho = seg45AccY47 rho - Bool.toZMod bit * (seg45AccY47 rho - rho 41809) := by
      have hd : rho 41811 = Bool.toZMod bit * (rho 41809 - seg45AccY47 rho) := by
        rw [← hbit, seg45LadderFlatY47_eq]
        unfold seg45LadderFlatY47
        linear_combination -r3583
      unfold seg45AccY48
      linear_combination hd
    have hd0 : rho 41802 * rho 41803 = rho 41812 := by linear_combination r3584
    have hd1 : rho 41802 * rho 41802 = rho 41813 := by linear_combination r3585
    have hd2 : rho 41803 * rho 41803 = rho 41814 := by linear_combination r3586
    have hd3 : rho 41815 * (rho 41803 * rho 41803 + rho 41802 * rho 41802 * (-1)) = 2 * (rho 41802 * rho 41803) := by
      rw [hd0, hd1, hd2]
      linear_combination r3587
    have hd4 : rho 41816 * (2 - (rho 41803 * rho 41803 + rho 41802 * rho 41802 * (-1))) = rho 41803 * rho 41803 - rho 41802 * rho 41802 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3588
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX47 rho : Seg45.F), (seg45AccY47 rho : Seg45.F)⟩
      ⟨(rho 41802 : Seg45.F), (rho 41803 : Seg45.F)⟩
      ⟨(rho 41808 : Seg45.F), (rho 41809 : Seg45.F)⟩
      ⟨(seg45AccX48 rho : Seg45.F), (seg45AccY48 rho : Seg45.F)⟩
      ⟨(rho 41815 : Seg45.F), (rho 41816 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung47

theorem seg45_rung48 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40996 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX48 rho : Seg45.F), (seg45AccY48 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41815 : Seg45.F), (rho 41816 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX48 rho : Seg45.F), (seg45AccY48 rho : Seg45.F)⟩
        ⟨(rho 41815 : Seg45.F), (rho 41816 : Seg45.F)⟩
        ⟨(seg45AccX49 rho : Seg45.F), (seg45AccY49 rho : Seg45.F)⟩
        ⟨(rho 41828 : Seg45.F), (rho 41829 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3589, r3590, r3591, r3592, r3593, r3594, r3595, r3596, r3597, r3598, r3599⟩
  unfold Seg45.relationPart45 at p45
  rcases p45 with ⟨r3600, r3601, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3589 Seg45.relationLc275 Seg45.relationLc275Part0 Seg45.relationLc275Part1 Seg45.relationLc275Part2 Seg45.relationLc275Part3 at r3589
  unfold Seg45.relationRow3590 Seg45.relationLc276 Seg45.relationLc276Part0 Seg45.relationLc276Part1 at r3590
  unfold Seg45.relationRow3591 Seg45.relationLc277 Seg45.relationLc277Part0 Seg45.relationLc277Part1 at r3591
  unfold Seg45.relationRow3592 at r3592
  unfold Seg45.relationRow3593 at r3593
  unfold Seg45.relationRow3594 at r3594
  unfold Seg45.relationRow3595 Seg45.relationLc278 Seg45.relationLc278Part0 Seg45.relationLc278Part1 at r3595
  unfold Seg45.relationRow3596 Seg45.relationLc279 Seg45.relationLc279Part0 Seg45.relationLc279Part1 at r3596
  unfold Seg45.relationRow3597 at r3597
  unfold Seg45.relationRow3598 at r3598
  unfold Seg45.relationRow3599 at r3599
  unfold Seg45.relationRow3600 at r3600
  unfold Seg45.relationRow3601 at r3601
  have hrung48 (bit : Bool) (hbit : rho 40996 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX48 rho : Seg45.F), (seg45AccY48 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41815 : Seg45.F), (rho 41816 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX48 rho : Seg45.F), (seg45AccY48 rho : Seg45.F)⟩
        ⟨(rho 41815 : Seg45.F), (rho 41816 : Seg45.F)⟩
        ⟨(seg45AccX49 rho : Seg45.F), (seg45AccY49 rho : Seg45.F)⟩
        ⟨(rho 41828 : Seg45.F), (rho 41829 : Seg45.F)⟩ := by
    have ha0 : (rho 41815 + rho 41816) * (seg45AccX48 rho + seg45AccY48 rho) = rho 41817 := by
      rw [seg45LadderFlatX48_eq, seg45LadderFlatY48_eq]
      unfold seg45LadderFlatX48 seg45LadderFlatY48
      linear_combination r3589
    have ha1 : rho 41816 * seg45AccX48 rho = rho 41818 := by
      rw [seg45LadderFlatX48_eq]
      unfold seg45LadderFlatX48
      linear_combination r3590
    have ha2 : rho 41815 * seg45AccY48 rho = rho 41819 := by
      rw [seg45LadderFlatY48_eq]
      unfold seg45LadderFlatY48
      linear_combination r3591
    have ha3 : 3021 * rho 41818 * rho 41819 = rho 41820 := by
      linear_combination r3592
    have ha4 : rho 41821 * (1 + rho 41820) = rho 41818 + rho 41819 := by
      linear_combination r3593
    have ha5 : rho 41822 * (1 - rho 41820) = rho 41817 - rho 41818 - rho 41819 := by
      linear_combination r3594
    have haddx :
        rho 41821 * (1 + 3021 * (rho 41816 * seg45AccX48 rho) * (rho 41815 * seg45AccY48 rho)) =
          rho 41816 * seg45AccX48 rho + rho 41815 * seg45AccY48 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41822 * (1 - 3021 * (rho 41816 * seg45AccX48 rho) * (rho 41815 * seg45AccY48 rho)) =
          (-1) * (rho 41816 * seg45AccX48 rho) - rho 41815 * seg45AccY48 rho +
            (seg45AccY48 rho - seg45AccX48 rho * (-1)) * (rho 41815 + rho 41816) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41822 * (1 - rho 41820) = rho 41817 - rho 41818 - rho 41819 := ha5
        _ = (-1) * rho 41818 - rho 41819 + (seg45AccY48 rho - seg45AccX48 rho * (-1)) * (rho 41815 + rho 41816) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX49 rho = seg45AccX48 rho - Bool.toZMod bit * (seg45AccX48 rho - rho 41821) := by
      have hd : rho 41823 = Bool.toZMod bit * (rho 41821 - seg45AccX48 rho) := by
        rw [← hbit, seg45LadderFlatX48_eq]
        unfold seg45LadderFlatX48
        linear_combination -r3595
      unfold seg45AccX49
      linear_combination hd
    have hsely : seg45AccY49 rho = seg45AccY48 rho - Bool.toZMod bit * (seg45AccY48 rho - rho 41822) := by
      have hd : rho 41824 = Bool.toZMod bit * (rho 41822 - seg45AccY48 rho) := by
        rw [← hbit, seg45LadderFlatY48_eq]
        unfold seg45LadderFlatY48
        linear_combination -r3596
      unfold seg45AccY49
      linear_combination hd
    have hd0 : rho 41815 * rho 41816 = rho 41825 := by linear_combination r3597
    have hd1 : rho 41815 * rho 41815 = rho 41826 := by linear_combination r3598
    have hd2 : rho 41816 * rho 41816 = rho 41827 := by linear_combination r3599
    have hd3 : rho 41828 * (rho 41816 * rho 41816 + rho 41815 * rho 41815 * (-1)) = 2 * (rho 41815 * rho 41816) := by
      rw [hd0, hd1, hd2]
      linear_combination r3600
    have hd4 : rho 41829 * (2 - (rho 41816 * rho 41816 + rho 41815 * rho 41815 * (-1))) = rho 41816 * rho 41816 - rho 41815 * rho 41815 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3601
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX48 rho : Seg45.F), (seg45AccY48 rho : Seg45.F)⟩
      ⟨(rho 41815 : Seg45.F), (rho 41816 : Seg45.F)⟩
      ⟨(rho 41821 : Seg45.F), (rho 41822 : Seg45.F)⟩
      ⟨(seg45AccX49 rho : Seg45.F), (seg45AccY49 rho : Seg45.F)⟩
      ⟨(rho 41828 : Seg45.F), (rho 41829 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung48

theorem seg45_rung49 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40997 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX49 rho : Seg45.F), (seg45AccY49 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41828 : Seg45.F), (rho 41829 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX49 rho : Seg45.F), (seg45AccY49 rho : Seg45.F)⟩
        ⟨(rho 41828 : Seg45.F), (rho 41829 : Seg45.F)⟩
        ⟨(seg45AccX50 rho : Seg45.F), (seg45AccY50 rho : Seg45.F)⟩
        ⟨(rho 41841 : Seg45.F), (rho 41842 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart45 at p45
  rcases p45 with ⟨_, _, r3602, r3603, r3604, r3605, r3606, r3607, r3608, r3609, r3610, r3611, r3612, r3613, r3614, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3602 Seg45.relationLc280 Seg45.relationLc280Part0 Seg45.relationLc280Part1 Seg45.relationLc280Part2 Seg45.relationLc280Part3 at r3602
  unfold Seg45.relationRow3603 Seg45.relationLc281 Seg45.relationLc281Part0 Seg45.relationLc281Part1 at r3603
  unfold Seg45.relationRow3604 Seg45.relationLc282 Seg45.relationLc282Part0 Seg45.relationLc282Part1 at r3604
  unfold Seg45.relationRow3605 at r3605
  unfold Seg45.relationRow3606 at r3606
  unfold Seg45.relationRow3607 at r3607
  unfold Seg45.relationRow3608 Seg45.relationLc283 Seg45.relationLc283Part0 Seg45.relationLc283Part1 at r3608
  unfold Seg45.relationRow3609 Seg45.relationLc284 Seg45.relationLc284Part0 Seg45.relationLc284Part1 at r3609
  unfold Seg45.relationRow3610 at r3610
  unfold Seg45.relationRow3611 at r3611
  unfold Seg45.relationRow3612 at r3612
  unfold Seg45.relationRow3613 at r3613
  unfold Seg45.relationRow3614 at r3614
  have hrung49 (bit : Bool) (hbit : rho 40997 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX49 rho : Seg45.F), (seg45AccY49 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41828 : Seg45.F), (rho 41829 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX49 rho : Seg45.F), (seg45AccY49 rho : Seg45.F)⟩
        ⟨(rho 41828 : Seg45.F), (rho 41829 : Seg45.F)⟩
        ⟨(seg45AccX50 rho : Seg45.F), (seg45AccY50 rho : Seg45.F)⟩
        ⟨(rho 41841 : Seg45.F), (rho 41842 : Seg45.F)⟩ := by
    have ha0 : (rho 41828 + rho 41829) * (seg45AccX49 rho + seg45AccY49 rho) = rho 41830 := by
      rw [seg45LadderFlatX49_eq, seg45LadderFlatY49_eq]
      unfold seg45LadderFlatX49 seg45LadderFlatY49
      linear_combination r3602
    have ha1 : rho 41829 * seg45AccX49 rho = rho 41831 := by
      rw [seg45LadderFlatX49_eq]
      unfold seg45LadderFlatX49
      linear_combination r3603
    have ha2 : rho 41828 * seg45AccY49 rho = rho 41832 := by
      rw [seg45LadderFlatY49_eq]
      unfold seg45LadderFlatY49
      linear_combination r3604
    have ha3 : 3021 * rho 41831 * rho 41832 = rho 41833 := by
      linear_combination r3605
    have ha4 : rho 41834 * (1 + rho 41833) = rho 41831 + rho 41832 := by
      linear_combination r3606
    have ha5 : rho 41835 * (1 - rho 41833) = rho 41830 - rho 41831 - rho 41832 := by
      linear_combination r3607
    have haddx :
        rho 41834 * (1 + 3021 * (rho 41829 * seg45AccX49 rho) * (rho 41828 * seg45AccY49 rho)) =
          rho 41829 * seg45AccX49 rho + rho 41828 * seg45AccY49 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41835 * (1 - 3021 * (rho 41829 * seg45AccX49 rho) * (rho 41828 * seg45AccY49 rho)) =
          (-1) * (rho 41829 * seg45AccX49 rho) - rho 41828 * seg45AccY49 rho +
            (seg45AccY49 rho - seg45AccX49 rho * (-1)) * (rho 41828 + rho 41829) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41835 * (1 - rho 41833) = rho 41830 - rho 41831 - rho 41832 := ha5
        _ = (-1) * rho 41831 - rho 41832 + (seg45AccY49 rho - seg45AccX49 rho * (-1)) * (rho 41828 + rho 41829) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX50 rho = seg45AccX49 rho - Bool.toZMod bit * (seg45AccX49 rho - rho 41834) := by
      have hd : rho 41836 = Bool.toZMod bit * (rho 41834 - seg45AccX49 rho) := by
        rw [← hbit, seg45LadderFlatX49_eq]
        unfold seg45LadderFlatX49
        linear_combination -r3608
      unfold seg45AccX50
      linear_combination hd
    have hsely : seg45AccY50 rho = seg45AccY49 rho - Bool.toZMod bit * (seg45AccY49 rho - rho 41835) := by
      have hd : rho 41837 = Bool.toZMod bit * (rho 41835 - seg45AccY49 rho) := by
        rw [← hbit, seg45LadderFlatY49_eq]
        unfold seg45LadderFlatY49
        linear_combination -r3609
      unfold seg45AccY50
      linear_combination hd
    have hd0 : rho 41828 * rho 41829 = rho 41838 := by linear_combination r3610
    have hd1 : rho 41828 * rho 41828 = rho 41839 := by linear_combination r3611
    have hd2 : rho 41829 * rho 41829 = rho 41840 := by linear_combination r3612
    have hd3 : rho 41841 * (rho 41829 * rho 41829 + rho 41828 * rho 41828 * (-1)) = 2 * (rho 41828 * rho 41829) := by
      rw [hd0, hd1, hd2]
      linear_combination r3613
    have hd4 : rho 41842 * (2 - (rho 41829 * rho 41829 + rho 41828 * rho 41828 * (-1))) = rho 41829 * rho 41829 - rho 41828 * rho 41828 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3614
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX49 rho : Seg45.F), (seg45AccY49 rho : Seg45.F)⟩
      ⟨(rho 41828 : Seg45.F), (rho 41829 : Seg45.F)⟩
      ⟨(rho 41834 : Seg45.F), (rho 41835 : Seg45.F)⟩
      ⟨(seg45AccX50 rho : Seg45.F), (seg45AccY50 rho : Seg45.F)⟩
      ⟨(rho 41841 : Seg45.F), (rho 41842 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung49

theorem seg45_rung50 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40998 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX50 rho : Seg45.F), (seg45AccY50 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41841 : Seg45.F), (rho 41842 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX50 rho : Seg45.F), (seg45AccY50 rho : Seg45.F)⟩
        ⟨(rho 41841 : Seg45.F), (rho 41842 : Seg45.F)⟩
        ⟨(seg45AccX51 rho : Seg45.F), (seg45AccY51 rho : Seg45.F)⟩
        ⟨(rho 41854 : Seg45.F), (rho 41855 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3615, r3616, r3617, r3618, r3619, r3620, r3621, r3622, r3623, r3624, r3625, r3626, r3627, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3615 Seg45.relationLc285 Seg45.relationLc285Part0 Seg45.relationLc285Part1 Seg45.relationLc285Part2 Seg45.relationLc285Part3 at r3615
  unfold Seg45.relationRow3616 Seg45.relationLc286 Seg45.relationLc286Part0 Seg45.relationLc286Part1 at r3616
  unfold Seg45.relationRow3617 Seg45.relationLc287 Seg45.relationLc287Part0 Seg45.relationLc287Part1 at r3617
  unfold Seg45.relationRow3618 at r3618
  unfold Seg45.relationRow3619 at r3619
  unfold Seg45.relationRow3620 at r3620
  unfold Seg45.relationRow3621 Seg45.relationLc288 Seg45.relationLc288Part0 Seg45.relationLc288Part1 at r3621
  unfold Seg45.relationRow3622 Seg45.relationLc289 Seg45.relationLc289Part0 Seg45.relationLc289Part1 at r3622
  unfold Seg45.relationRow3623 at r3623
  unfold Seg45.relationRow3624 at r3624
  unfold Seg45.relationRow3625 at r3625
  unfold Seg45.relationRow3626 at r3626
  unfold Seg45.relationRow3627 at r3627
  have hrung50 (bit : Bool) (hbit : rho 40998 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX50 rho : Seg45.F), (seg45AccY50 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41841 : Seg45.F), (rho 41842 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX50 rho : Seg45.F), (seg45AccY50 rho : Seg45.F)⟩
        ⟨(rho 41841 : Seg45.F), (rho 41842 : Seg45.F)⟩
        ⟨(seg45AccX51 rho : Seg45.F), (seg45AccY51 rho : Seg45.F)⟩
        ⟨(rho 41854 : Seg45.F), (rho 41855 : Seg45.F)⟩ := by
    have ha0 : (rho 41841 + rho 41842) * (seg45AccX50 rho + seg45AccY50 rho) = rho 41843 := by
      rw [seg45LadderFlatX50_eq, seg45LadderFlatY50_eq]
      unfold seg45LadderFlatX50 seg45LadderFlatY50
      linear_combination r3615
    have ha1 : rho 41842 * seg45AccX50 rho = rho 41844 := by
      rw [seg45LadderFlatX50_eq]
      unfold seg45LadderFlatX50
      linear_combination r3616
    have ha2 : rho 41841 * seg45AccY50 rho = rho 41845 := by
      rw [seg45LadderFlatY50_eq]
      unfold seg45LadderFlatY50
      linear_combination r3617
    have ha3 : 3021 * rho 41844 * rho 41845 = rho 41846 := by
      linear_combination r3618
    have ha4 : rho 41847 * (1 + rho 41846) = rho 41844 + rho 41845 := by
      linear_combination r3619
    have ha5 : rho 41848 * (1 - rho 41846) = rho 41843 - rho 41844 - rho 41845 := by
      linear_combination r3620
    have haddx :
        rho 41847 * (1 + 3021 * (rho 41842 * seg45AccX50 rho) * (rho 41841 * seg45AccY50 rho)) =
          rho 41842 * seg45AccX50 rho + rho 41841 * seg45AccY50 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41848 * (1 - 3021 * (rho 41842 * seg45AccX50 rho) * (rho 41841 * seg45AccY50 rho)) =
          (-1) * (rho 41842 * seg45AccX50 rho) - rho 41841 * seg45AccY50 rho +
            (seg45AccY50 rho - seg45AccX50 rho * (-1)) * (rho 41841 + rho 41842) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41848 * (1 - rho 41846) = rho 41843 - rho 41844 - rho 41845 := ha5
        _ = (-1) * rho 41844 - rho 41845 + (seg45AccY50 rho - seg45AccX50 rho * (-1)) * (rho 41841 + rho 41842) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX51 rho = seg45AccX50 rho - Bool.toZMod bit * (seg45AccX50 rho - rho 41847) := by
      have hd : rho 41849 = Bool.toZMod bit * (rho 41847 - seg45AccX50 rho) := by
        rw [← hbit, seg45LadderFlatX50_eq]
        unfold seg45LadderFlatX50
        linear_combination -r3621
      unfold seg45AccX51
      linear_combination hd
    have hsely : seg45AccY51 rho = seg45AccY50 rho - Bool.toZMod bit * (seg45AccY50 rho - rho 41848) := by
      have hd : rho 41850 = Bool.toZMod bit * (rho 41848 - seg45AccY50 rho) := by
        rw [← hbit, seg45LadderFlatY50_eq]
        unfold seg45LadderFlatY50
        linear_combination -r3622
      unfold seg45AccY51
      linear_combination hd
    have hd0 : rho 41841 * rho 41842 = rho 41851 := by linear_combination r3623
    have hd1 : rho 41841 * rho 41841 = rho 41852 := by linear_combination r3624
    have hd2 : rho 41842 * rho 41842 = rho 41853 := by linear_combination r3625
    have hd3 : rho 41854 * (rho 41842 * rho 41842 + rho 41841 * rho 41841 * (-1)) = 2 * (rho 41841 * rho 41842) := by
      rw [hd0, hd1, hd2]
      linear_combination r3626
    have hd4 : rho 41855 * (2 - (rho 41842 * rho 41842 + rho 41841 * rho 41841 * (-1))) = rho 41842 * rho 41842 - rho 41841 * rho 41841 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3627
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX50 rho : Seg45.F), (seg45AccY50 rho : Seg45.F)⟩
      ⟨(rho 41841 : Seg45.F), (rho 41842 : Seg45.F)⟩
      ⟨(rho 41847 : Seg45.F), (rho 41848 : Seg45.F)⟩
      ⟨(seg45AccX51 rho : Seg45.F), (seg45AccY51 rho : Seg45.F)⟩
      ⟨(rho 41854 : Seg45.F), (rho 41855 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung50

theorem seg45_rung51 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40999 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX51 rho : Seg45.F), (seg45AccY51 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41854 : Seg45.F), (rho 41855 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX51 rho : Seg45.F), (seg45AccY51 rho : Seg45.F)⟩
        ⟨(rho 41854 : Seg45.F), (rho 41855 : Seg45.F)⟩
        ⟨(seg45AccX52 rho : Seg45.F), (seg45AccY52 rho : Seg45.F)⟩
        ⟨(rho 41867 : Seg45.F), (rho 41868 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3628, r3629, r3630, r3631, r3632, r3633, r3634, r3635, r3636, r3637, r3638, r3639, r3640, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3628 Seg45.relationLc290 Seg45.relationLc290Part0 Seg45.relationLc290Part1 Seg45.relationLc290Part2 Seg45.relationLc290Part3 at r3628
  unfold Seg45.relationRow3629 Seg45.relationLc291 Seg45.relationLc291Part0 Seg45.relationLc291Part1 at r3629
  unfold Seg45.relationRow3630 Seg45.relationLc292 Seg45.relationLc292Part0 Seg45.relationLc292Part1 at r3630
  unfold Seg45.relationRow3631 at r3631
  unfold Seg45.relationRow3632 at r3632
  unfold Seg45.relationRow3633 at r3633
  unfold Seg45.relationRow3634 Seg45.relationLc293 Seg45.relationLc293Part0 Seg45.relationLc293Part1 at r3634
  unfold Seg45.relationRow3635 Seg45.relationLc294 Seg45.relationLc294Part0 Seg45.relationLc294Part1 at r3635
  unfold Seg45.relationRow3636 at r3636
  unfold Seg45.relationRow3637 at r3637
  unfold Seg45.relationRow3638 at r3638
  unfold Seg45.relationRow3639 at r3639
  unfold Seg45.relationRow3640 at r3640
  have hrung51 (bit : Bool) (hbit : rho 40999 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX51 rho : Seg45.F), (seg45AccY51 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41854 : Seg45.F), (rho 41855 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX51 rho : Seg45.F), (seg45AccY51 rho : Seg45.F)⟩
        ⟨(rho 41854 : Seg45.F), (rho 41855 : Seg45.F)⟩
        ⟨(seg45AccX52 rho : Seg45.F), (seg45AccY52 rho : Seg45.F)⟩
        ⟨(rho 41867 : Seg45.F), (rho 41868 : Seg45.F)⟩ := by
    have ha0 : (rho 41854 + rho 41855) * (seg45AccX51 rho + seg45AccY51 rho) = rho 41856 := by
      rw [seg45LadderFlatX51_eq, seg45LadderFlatY51_eq]
      unfold seg45LadderFlatX51 seg45LadderFlatY51
      linear_combination r3628
    have ha1 : rho 41855 * seg45AccX51 rho = rho 41857 := by
      rw [seg45LadderFlatX51_eq]
      unfold seg45LadderFlatX51
      linear_combination r3629
    have ha2 : rho 41854 * seg45AccY51 rho = rho 41858 := by
      rw [seg45LadderFlatY51_eq]
      unfold seg45LadderFlatY51
      linear_combination r3630
    have ha3 : 3021 * rho 41857 * rho 41858 = rho 41859 := by
      linear_combination r3631
    have ha4 : rho 41860 * (1 + rho 41859) = rho 41857 + rho 41858 := by
      linear_combination r3632
    have ha5 : rho 41861 * (1 - rho 41859) = rho 41856 - rho 41857 - rho 41858 := by
      linear_combination r3633
    have haddx :
        rho 41860 * (1 + 3021 * (rho 41855 * seg45AccX51 rho) * (rho 41854 * seg45AccY51 rho)) =
          rho 41855 * seg45AccX51 rho + rho 41854 * seg45AccY51 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41861 * (1 - 3021 * (rho 41855 * seg45AccX51 rho) * (rho 41854 * seg45AccY51 rho)) =
          (-1) * (rho 41855 * seg45AccX51 rho) - rho 41854 * seg45AccY51 rho +
            (seg45AccY51 rho - seg45AccX51 rho * (-1)) * (rho 41854 + rho 41855) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41861 * (1 - rho 41859) = rho 41856 - rho 41857 - rho 41858 := ha5
        _ = (-1) * rho 41857 - rho 41858 + (seg45AccY51 rho - seg45AccX51 rho * (-1)) * (rho 41854 + rho 41855) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX52 rho = seg45AccX51 rho - Bool.toZMod bit * (seg45AccX51 rho - rho 41860) := by
      have hd : rho 41862 = Bool.toZMod bit * (rho 41860 - seg45AccX51 rho) := by
        rw [← hbit, seg45LadderFlatX51_eq]
        unfold seg45LadderFlatX51
        linear_combination -r3634
      unfold seg45AccX52
      linear_combination hd
    have hsely : seg45AccY52 rho = seg45AccY51 rho - Bool.toZMod bit * (seg45AccY51 rho - rho 41861) := by
      have hd : rho 41863 = Bool.toZMod bit * (rho 41861 - seg45AccY51 rho) := by
        rw [← hbit, seg45LadderFlatY51_eq]
        unfold seg45LadderFlatY51
        linear_combination -r3635
      unfold seg45AccY52
      linear_combination hd
    have hd0 : rho 41854 * rho 41855 = rho 41864 := by linear_combination r3636
    have hd1 : rho 41854 * rho 41854 = rho 41865 := by linear_combination r3637
    have hd2 : rho 41855 * rho 41855 = rho 41866 := by linear_combination r3638
    have hd3 : rho 41867 * (rho 41855 * rho 41855 + rho 41854 * rho 41854 * (-1)) = 2 * (rho 41854 * rho 41855) := by
      rw [hd0, hd1, hd2]
      linear_combination r3639
    have hd4 : rho 41868 * (2 - (rho 41855 * rho 41855 + rho 41854 * rho 41854 * (-1))) = rho 41855 * rho 41855 - rho 41854 * rho 41854 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3640
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX51 rho : Seg45.F), (seg45AccY51 rho : Seg45.F)⟩
      ⟨(rho 41854 : Seg45.F), (rho 41855 : Seg45.F)⟩
      ⟨(rho 41860 : Seg45.F), (rho 41861 : Seg45.F)⟩
      ⟨(seg45AccX52 rho : Seg45.F), (seg45AccY52 rho : Seg45.F)⟩
      ⟨(rho 41867 : Seg45.F), (rho 41868 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung51

theorem seg45_rung52 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41000 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX52 rho : Seg45.F), (seg45AccY52 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41867 : Seg45.F), (rho 41868 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX52 rho : Seg45.F), (seg45AccY52 rho : Seg45.F)⟩
        ⟨(rho 41867 : Seg45.F), (rho 41868 : Seg45.F)⟩
        ⟨(seg45AccX53 rho : Seg45.F), (seg45AccY53 rho : Seg45.F)⟩
        ⟨(rho 41880 : Seg45.F), (rho 41881 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3641, r3642, r3643, r3644, r3645, r3646, r3647, r3648, r3649, r3650, r3651, r3652, r3653, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3641 Seg45.relationLc295 Seg45.relationLc295Part0 Seg45.relationLc295Part1 Seg45.relationLc295Part2 Seg45.relationLc295Part3 at r3641
  unfold Seg45.relationRow3642 Seg45.relationLc296 Seg45.relationLc296Part0 Seg45.relationLc296Part1 at r3642
  unfold Seg45.relationRow3643 Seg45.relationLc297 Seg45.relationLc297Part0 Seg45.relationLc297Part1 at r3643
  unfold Seg45.relationRow3644 at r3644
  unfold Seg45.relationRow3645 at r3645
  unfold Seg45.relationRow3646 at r3646
  unfold Seg45.relationRow3647 Seg45.relationLc298 Seg45.relationLc298Part0 Seg45.relationLc298Part1 at r3647
  unfold Seg45.relationRow3648 Seg45.relationLc299 Seg45.relationLc299Part0 Seg45.relationLc299Part1 at r3648
  unfold Seg45.relationRow3649 at r3649
  unfold Seg45.relationRow3650 at r3650
  unfold Seg45.relationRow3651 at r3651
  unfold Seg45.relationRow3652 at r3652
  unfold Seg45.relationRow3653 at r3653
  have hrung52 (bit : Bool) (hbit : rho 41000 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX52 rho : Seg45.F), (seg45AccY52 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41867 : Seg45.F), (rho 41868 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX52 rho : Seg45.F), (seg45AccY52 rho : Seg45.F)⟩
        ⟨(rho 41867 : Seg45.F), (rho 41868 : Seg45.F)⟩
        ⟨(seg45AccX53 rho : Seg45.F), (seg45AccY53 rho : Seg45.F)⟩
        ⟨(rho 41880 : Seg45.F), (rho 41881 : Seg45.F)⟩ := by
    have ha0 : (rho 41867 + rho 41868) * (seg45AccX52 rho + seg45AccY52 rho) = rho 41869 := by
      rw [seg45LadderFlatX52_eq, seg45LadderFlatY52_eq]
      unfold seg45LadderFlatX52 seg45LadderFlatY52
      linear_combination r3641
    have ha1 : rho 41868 * seg45AccX52 rho = rho 41870 := by
      rw [seg45LadderFlatX52_eq]
      unfold seg45LadderFlatX52
      linear_combination r3642
    have ha2 : rho 41867 * seg45AccY52 rho = rho 41871 := by
      rw [seg45LadderFlatY52_eq]
      unfold seg45LadderFlatY52
      linear_combination r3643
    have ha3 : 3021 * rho 41870 * rho 41871 = rho 41872 := by
      linear_combination r3644
    have ha4 : rho 41873 * (1 + rho 41872) = rho 41870 + rho 41871 := by
      linear_combination r3645
    have ha5 : rho 41874 * (1 - rho 41872) = rho 41869 - rho 41870 - rho 41871 := by
      linear_combination r3646
    have haddx :
        rho 41873 * (1 + 3021 * (rho 41868 * seg45AccX52 rho) * (rho 41867 * seg45AccY52 rho)) =
          rho 41868 * seg45AccX52 rho + rho 41867 * seg45AccY52 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41874 * (1 - 3021 * (rho 41868 * seg45AccX52 rho) * (rho 41867 * seg45AccY52 rho)) =
          (-1) * (rho 41868 * seg45AccX52 rho) - rho 41867 * seg45AccY52 rho +
            (seg45AccY52 rho - seg45AccX52 rho * (-1)) * (rho 41867 + rho 41868) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41874 * (1 - rho 41872) = rho 41869 - rho 41870 - rho 41871 := ha5
        _ = (-1) * rho 41870 - rho 41871 + (seg45AccY52 rho - seg45AccX52 rho * (-1)) * (rho 41867 + rho 41868) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX53 rho = seg45AccX52 rho - Bool.toZMod bit * (seg45AccX52 rho - rho 41873) := by
      have hd : rho 41875 = Bool.toZMod bit * (rho 41873 - seg45AccX52 rho) := by
        rw [← hbit, seg45LadderFlatX52_eq]
        unfold seg45LadderFlatX52
        linear_combination -r3647
      unfold seg45AccX53
      linear_combination hd
    have hsely : seg45AccY53 rho = seg45AccY52 rho - Bool.toZMod bit * (seg45AccY52 rho - rho 41874) := by
      have hd : rho 41876 = Bool.toZMod bit * (rho 41874 - seg45AccY52 rho) := by
        rw [← hbit, seg45LadderFlatY52_eq]
        unfold seg45LadderFlatY52
        linear_combination -r3648
      unfold seg45AccY53
      linear_combination hd
    have hd0 : rho 41867 * rho 41868 = rho 41877 := by linear_combination r3649
    have hd1 : rho 41867 * rho 41867 = rho 41878 := by linear_combination r3650
    have hd2 : rho 41868 * rho 41868 = rho 41879 := by linear_combination r3651
    have hd3 : rho 41880 * (rho 41868 * rho 41868 + rho 41867 * rho 41867 * (-1)) = 2 * (rho 41867 * rho 41868) := by
      rw [hd0, hd1, hd2]
      linear_combination r3652
    have hd4 : rho 41881 * (2 - (rho 41868 * rho 41868 + rho 41867 * rho 41867 * (-1))) = rho 41868 * rho 41868 - rho 41867 * rho 41867 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3653
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX52 rho : Seg45.F), (seg45AccY52 rho : Seg45.F)⟩
      ⟨(rho 41867 : Seg45.F), (rho 41868 : Seg45.F)⟩
      ⟨(rho 41873 : Seg45.F), (rho 41874 : Seg45.F)⟩
      ⟨(seg45AccX53 rho : Seg45.F), (seg45AccY53 rho : Seg45.F)⟩
      ⟨(rho 41880 : Seg45.F), (rho 41881 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung52

theorem seg45_rung53 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41001 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX53 rho : Seg45.F), (seg45AccY53 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41880 : Seg45.F), (rho 41881 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX53 rho : Seg45.F), (seg45AccY53 rho : Seg45.F)⟩
        ⟨(rho 41880 : Seg45.F), (rho 41881 : Seg45.F)⟩
        ⟨(seg45AccX54 rho : Seg45.F), (seg45AccY54 rho : Seg45.F)⟩
        ⟨(rho 41893 : Seg45.F), (rho 41894 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3654, r3655, r3656, r3657, r3658, r3659, r3660, r3661, r3662, r3663, r3664, r3665, r3666, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3654 Seg45.relationLc300 Seg45.relationLc300Part0 Seg45.relationLc300Part1 Seg45.relationLc300Part2 Seg45.relationLc300Part3 at r3654
  unfold Seg45.relationRow3655 Seg45.relationLc301 Seg45.relationLc301Part0 Seg45.relationLc301Part1 at r3655
  unfold Seg45.relationRow3656 Seg45.relationLc302 Seg45.relationLc302Part0 Seg45.relationLc302Part1 at r3656
  unfold Seg45.relationRow3657 at r3657
  unfold Seg45.relationRow3658 at r3658
  unfold Seg45.relationRow3659 at r3659
  unfold Seg45.relationRow3660 Seg45.relationLc303 Seg45.relationLc303Part0 Seg45.relationLc303Part1 at r3660
  unfold Seg45.relationRow3661 Seg45.relationLc304 Seg45.relationLc304Part0 Seg45.relationLc304Part1 at r3661
  unfold Seg45.relationRow3662 at r3662
  unfold Seg45.relationRow3663 at r3663
  unfold Seg45.relationRow3664 at r3664
  unfold Seg45.relationRow3665 at r3665
  unfold Seg45.relationRow3666 at r3666
  have hrung53 (bit : Bool) (hbit : rho 41001 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX53 rho : Seg45.F), (seg45AccY53 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41880 : Seg45.F), (rho 41881 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX53 rho : Seg45.F), (seg45AccY53 rho : Seg45.F)⟩
        ⟨(rho 41880 : Seg45.F), (rho 41881 : Seg45.F)⟩
        ⟨(seg45AccX54 rho : Seg45.F), (seg45AccY54 rho : Seg45.F)⟩
        ⟨(rho 41893 : Seg45.F), (rho 41894 : Seg45.F)⟩ := by
    have ha0 : (rho 41880 + rho 41881) * (seg45AccX53 rho + seg45AccY53 rho) = rho 41882 := by
      rw [seg45LadderFlatX53_eq, seg45LadderFlatY53_eq]
      unfold seg45LadderFlatX53 seg45LadderFlatY53
      linear_combination r3654
    have ha1 : rho 41881 * seg45AccX53 rho = rho 41883 := by
      rw [seg45LadderFlatX53_eq]
      unfold seg45LadderFlatX53
      linear_combination r3655
    have ha2 : rho 41880 * seg45AccY53 rho = rho 41884 := by
      rw [seg45LadderFlatY53_eq]
      unfold seg45LadderFlatY53
      linear_combination r3656
    have ha3 : 3021 * rho 41883 * rho 41884 = rho 41885 := by
      linear_combination r3657
    have ha4 : rho 41886 * (1 + rho 41885) = rho 41883 + rho 41884 := by
      linear_combination r3658
    have ha5 : rho 41887 * (1 - rho 41885) = rho 41882 - rho 41883 - rho 41884 := by
      linear_combination r3659
    have haddx :
        rho 41886 * (1 + 3021 * (rho 41881 * seg45AccX53 rho) * (rho 41880 * seg45AccY53 rho)) =
          rho 41881 * seg45AccX53 rho + rho 41880 * seg45AccY53 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41887 * (1 - 3021 * (rho 41881 * seg45AccX53 rho) * (rho 41880 * seg45AccY53 rho)) =
          (-1) * (rho 41881 * seg45AccX53 rho) - rho 41880 * seg45AccY53 rho +
            (seg45AccY53 rho - seg45AccX53 rho * (-1)) * (rho 41880 + rho 41881) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41887 * (1 - rho 41885) = rho 41882 - rho 41883 - rho 41884 := ha5
        _ = (-1) * rho 41883 - rho 41884 + (seg45AccY53 rho - seg45AccX53 rho * (-1)) * (rho 41880 + rho 41881) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX54 rho = seg45AccX53 rho - Bool.toZMod bit * (seg45AccX53 rho - rho 41886) := by
      have hd : rho 41888 = Bool.toZMod bit * (rho 41886 - seg45AccX53 rho) := by
        rw [← hbit, seg45LadderFlatX53_eq]
        unfold seg45LadderFlatX53
        linear_combination -r3660
      unfold seg45AccX54
      linear_combination hd
    have hsely : seg45AccY54 rho = seg45AccY53 rho - Bool.toZMod bit * (seg45AccY53 rho - rho 41887) := by
      have hd : rho 41889 = Bool.toZMod bit * (rho 41887 - seg45AccY53 rho) := by
        rw [← hbit, seg45LadderFlatY53_eq]
        unfold seg45LadderFlatY53
        linear_combination -r3661
      unfold seg45AccY54
      linear_combination hd
    have hd0 : rho 41880 * rho 41881 = rho 41890 := by linear_combination r3662
    have hd1 : rho 41880 * rho 41880 = rho 41891 := by linear_combination r3663
    have hd2 : rho 41881 * rho 41881 = rho 41892 := by linear_combination r3664
    have hd3 : rho 41893 * (rho 41881 * rho 41881 + rho 41880 * rho 41880 * (-1)) = 2 * (rho 41880 * rho 41881) := by
      rw [hd0, hd1, hd2]
      linear_combination r3665
    have hd4 : rho 41894 * (2 - (rho 41881 * rho 41881 + rho 41880 * rho 41880 * (-1))) = rho 41881 * rho 41881 - rho 41880 * rho 41880 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3666
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX53 rho : Seg45.F), (seg45AccY53 rho : Seg45.F)⟩
      ⟨(rho 41880 : Seg45.F), (rho 41881 : Seg45.F)⟩
      ⟨(rho 41886 : Seg45.F), (rho 41887 : Seg45.F)⟩
      ⟨(seg45AccX54 rho : Seg45.F), (seg45AccY54 rho : Seg45.F)⟩
      ⟨(rho 41893 : Seg45.F), (rho 41894 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung53

theorem seg45_rung54 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41002 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX54 rho : Seg45.F), (seg45AccY54 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41893 : Seg45.F), (rho 41894 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX54 rho : Seg45.F), (seg45AccY54 rho : Seg45.F)⟩
        ⟨(rho 41893 : Seg45.F), (rho 41894 : Seg45.F)⟩
        ⟨(seg45AccX55 rho : Seg45.F), (seg45AccY55 rho : Seg45.F)⟩
        ⟨(rho 41906 : Seg45.F), (rho 41907 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3667, r3668, r3669, r3670, r3671, r3672, r3673, r3674, r3675, r3676, r3677, r3678, r3679⟩
  unfold Seg45.relationRow3667 Seg45.relationLc305 Seg45.relationLc305Part0 Seg45.relationLc305Part1 Seg45.relationLc305Part2 Seg45.relationLc305Part3 at r3667
  unfold Seg45.relationRow3668 Seg45.relationLc306 Seg45.relationLc306Part0 Seg45.relationLc306Part1 at r3668
  unfold Seg45.relationRow3669 Seg45.relationLc307 Seg45.relationLc307Part0 Seg45.relationLc307Part1 at r3669
  unfold Seg45.relationRow3670 at r3670
  unfold Seg45.relationRow3671 at r3671
  unfold Seg45.relationRow3672 at r3672
  unfold Seg45.relationRow3673 Seg45.relationLc308 Seg45.relationLc308Part0 Seg45.relationLc308Part1 at r3673
  unfold Seg45.relationRow3674 Seg45.relationLc309 Seg45.relationLc309Part0 Seg45.relationLc309Part1 at r3674
  unfold Seg45.relationRow3675 at r3675
  unfold Seg45.relationRow3676 at r3676
  unfold Seg45.relationRow3677 at r3677
  unfold Seg45.relationRow3678 at r3678
  unfold Seg45.relationRow3679 at r3679
  have hrung54 (bit : Bool) (hbit : rho 41002 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX54 rho : Seg45.F), (seg45AccY54 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41893 : Seg45.F), (rho 41894 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX54 rho : Seg45.F), (seg45AccY54 rho : Seg45.F)⟩
        ⟨(rho 41893 : Seg45.F), (rho 41894 : Seg45.F)⟩
        ⟨(seg45AccX55 rho : Seg45.F), (seg45AccY55 rho : Seg45.F)⟩
        ⟨(rho 41906 : Seg45.F), (rho 41907 : Seg45.F)⟩ := by
    have ha0 : (rho 41893 + rho 41894) * (seg45AccX54 rho + seg45AccY54 rho) = rho 41895 := by
      rw [seg45LadderFlatX54_eq, seg45LadderFlatY54_eq]
      unfold seg45LadderFlatX54 seg45LadderFlatY54
      linear_combination r3667
    have ha1 : rho 41894 * seg45AccX54 rho = rho 41896 := by
      rw [seg45LadderFlatX54_eq]
      unfold seg45LadderFlatX54
      linear_combination r3668
    have ha2 : rho 41893 * seg45AccY54 rho = rho 41897 := by
      rw [seg45LadderFlatY54_eq]
      unfold seg45LadderFlatY54
      linear_combination r3669
    have ha3 : 3021 * rho 41896 * rho 41897 = rho 41898 := by
      linear_combination r3670
    have ha4 : rho 41899 * (1 + rho 41898) = rho 41896 + rho 41897 := by
      linear_combination r3671
    have ha5 : rho 41900 * (1 - rho 41898) = rho 41895 - rho 41896 - rho 41897 := by
      linear_combination r3672
    have haddx :
        rho 41899 * (1 + 3021 * (rho 41894 * seg45AccX54 rho) * (rho 41893 * seg45AccY54 rho)) =
          rho 41894 * seg45AccX54 rho + rho 41893 * seg45AccY54 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41900 * (1 - 3021 * (rho 41894 * seg45AccX54 rho) * (rho 41893 * seg45AccY54 rho)) =
          (-1) * (rho 41894 * seg45AccX54 rho) - rho 41893 * seg45AccY54 rho +
            (seg45AccY54 rho - seg45AccX54 rho * (-1)) * (rho 41893 + rho 41894) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41900 * (1 - rho 41898) = rho 41895 - rho 41896 - rho 41897 := ha5
        _ = (-1) * rho 41896 - rho 41897 + (seg45AccY54 rho - seg45AccX54 rho * (-1)) * (rho 41893 + rho 41894) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX55 rho = seg45AccX54 rho - Bool.toZMod bit * (seg45AccX54 rho - rho 41899) := by
      have hd : rho 41901 = Bool.toZMod bit * (rho 41899 - seg45AccX54 rho) := by
        rw [← hbit, seg45LadderFlatX54_eq]
        unfold seg45LadderFlatX54
        linear_combination -r3673
      unfold seg45AccX55
      linear_combination hd
    have hsely : seg45AccY55 rho = seg45AccY54 rho - Bool.toZMod bit * (seg45AccY54 rho - rho 41900) := by
      have hd : rho 41902 = Bool.toZMod bit * (rho 41900 - seg45AccY54 rho) := by
        rw [← hbit, seg45LadderFlatY54_eq]
        unfold seg45LadderFlatY54
        linear_combination -r3674
      unfold seg45AccY55
      linear_combination hd
    have hd0 : rho 41893 * rho 41894 = rho 41903 := by linear_combination r3675
    have hd1 : rho 41893 * rho 41893 = rho 41904 := by linear_combination r3676
    have hd2 : rho 41894 * rho 41894 = rho 41905 := by linear_combination r3677
    have hd3 : rho 41906 * (rho 41894 * rho 41894 + rho 41893 * rho 41893 * (-1)) = 2 * (rho 41893 * rho 41894) := by
      rw [hd0, hd1, hd2]
      linear_combination r3678
    have hd4 : rho 41907 * (2 - (rho 41894 * rho 41894 + rho 41893 * rho 41893 * (-1))) = rho 41894 * rho 41894 - rho 41893 * rho 41893 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3679
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX54 rho : Seg45.F), (seg45AccY54 rho : Seg45.F)⟩
      ⟨(rho 41893 : Seg45.F), (rho 41894 : Seg45.F)⟩
      ⟨(rho 41899 : Seg45.F), (rho 41900 : Seg45.F)⟩
      ⟨(seg45AccX55 rho : Seg45.F), (seg45AccY55 rho : Seg45.F)⟩
      ⟨(rho 41906 : Seg45.F), (rho 41907 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung54

theorem seg45_rung55 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41003 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX55 rho : Seg45.F), (seg45AccY55 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41906 : Seg45.F), (rho 41907 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX55 rho : Seg45.F), (seg45AccY55 rho : Seg45.F)⟩
        ⟨(rho 41906 : Seg45.F), (rho 41907 : Seg45.F)⟩
        ⟨(seg45AccX56 rho : Seg45.F), (seg45AccY56 rho : Seg45.F)⟩
        ⟨(rho 41919 : Seg45.F), (rho 41920 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart46 at p46
  rcases p46 with ⟨r3680, r3681, r3682, r3683, r3684, r3685, r3686, r3687, r3688, r3689, r3690, r3691, r3692, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3680 Seg45.relationLc310 Seg45.relationLc310Part0 Seg45.relationLc310Part1 Seg45.relationLc310Part2 Seg45.relationLc310Part3 at r3680
  unfold Seg45.relationRow3681 Seg45.relationLc311 Seg45.relationLc311Part0 Seg45.relationLc311Part1 at r3681
  unfold Seg45.relationRow3682 Seg45.relationLc312 Seg45.relationLc312Part0 Seg45.relationLc312Part1 at r3682
  unfold Seg45.relationRow3683 at r3683
  unfold Seg45.relationRow3684 at r3684
  unfold Seg45.relationRow3685 at r3685
  unfold Seg45.relationRow3686 Seg45.relationLc313 Seg45.relationLc313Part0 Seg45.relationLc313Part1 at r3686
  unfold Seg45.relationRow3687 Seg45.relationLc314 Seg45.relationLc314Part0 Seg45.relationLc314Part1 at r3687
  unfold Seg45.relationRow3688 at r3688
  unfold Seg45.relationRow3689 at r3689
  unfold Seg45.relationRow3690 at r3690
  unfold Seg45.relationRow3691 at r3691
  unfold Seg45.relationRow3692 at r3692
  have hrung55 (bit : Bool) (hbit : rho 41003 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX55 rho : Seg45.F), (seg45AccY55 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41906 : Seg45.F), (rho 41907 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX55 rho : Seg45.F), (seg45AccY55 rho : Seg45.F)⟩
        ⟨(rho 41906 : Seg45.F), (rho 41907 : Seg45.F)⟩
        ⟨(seg45AccX56 rho : Seg45.F), (seg45AccY56 rho : Seg45.F)⟩
        ⟨(rho 41919 : Seg45.F), (rho 41920 : Seg45.F)⟩ := by
    have ha0 : (rho 41906 + rho 41907) * (seg45AccX55 rho + seg45AccY55 rho) = rho 41908 := by
      rw [seg45LadderFlatX55_eq, seg45LadderFlatY55_eq]
      unfold seg45LadderFlatX55 seg45LadderFlatY55
      linear_combination r3680
    have ha1 : rho 41907 * seg45AccX55 rho = rho 41909 := by
      rw [seg45LadderFlatX55_eq]
      unfold seg45LadderFlatX55
      linear_combination r3681
    have ha2 : rho 41906 * seg45AccY55 rho = rho 41910 := by
      rw [seg45LadderFlatY55_eq]
      unfold seg45LadderFlatY55
      linear_combination r3682
    have ha3 : 3021 * rho 41909 * rho 41910 = rho 41911 := by
      linear_combination r3683
    have ha4 : rho 41912 * (1 + rho 41911) = rho 41909 + rho 41910 := by
      linear_combination r3684
    have ha5 : rho 41913 * (1 - rho 41911) = rho 41908 - rho 41909 - rho 41910 := by
      linear_combination r3685
    have haddx :
        rho 41912 * (1 + 3021 * (rho 41907 * seg45AccX55 rho) * (rho 41906 * seg45AccY55 rho)) =
          rho 41907 * seg45AccX55 rho + rho 41906 * seg45AccY55 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41913 * (1 - 3021 * (rho 41907 * seg45AccX55 rho) * (rho 41906 * seg45AccY55 rho)) =
          (-1) * (rho 41907 * seg45AccX55 rho) - rho 41906 * seg45AccY55 rho +
            (seg45AccY55 rho - seg45AccX55 rho * (-1)) * (rho 41906 + rho 41907) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41913 * (1 - rho 41911) = rho 41908 - rho 41909 - rho 41910 := ha5
        _ = (-1) * rho 41909 - rho 41910 + (seg45AccY55 rho - seg45AccX55 rho * (-1)) * (rho 41906 + rho 41907) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX56 rho = seg45AccX55 rho - Bool.toZMod bit * (seg45AccX55 rho - rho 41912) := by
      have hd : rho 41914 = Bool.toZMod bit * (rho 41912 - seg45AccX55 rho) := by
        rw [← hbit, seg45LadderFlatX55_eq]
        unfold seg45LadderFlatX55
        linear_combination -r3686
      unfold seg45AccX56
      linear_combination hd
    have hsely : seg45AccY56 rho = seg45AccY55 rho - Bool.toZMod bit * (seg45AccY55 rho - rho 41913) := by
      have hd : rho 41915 = Bool.toZMod bit * (rho 41913 - seg45AccY55 rho) := by
        rw [← hbit, seg45LadderFlatY55_eq]
        unfold seg45LadderFlatY55
        linear_combination -r3687
      unfold seg45AccY56
      linear_combination hd
    have hd0 : rho 41906 * rho 41907 = rho 41916 := by linear_combination r3688
    have hd1 : rho 41906 * rho 41906 = rho 41917 := by linear_combination r3689
    have hd2 : rho 41907 * rho 41907 = rho 41918 := by linear_combination r3690
    have hd3 : rho 41919 * (rho 41907 * rho 41907 + rho 41906 * rho 41906 * (-1)) = 2 * (rho 41906 * rho 41907) := by
      rw [hd0, hd1, hd2]
      linear_combination r3691
    have hd4 : rho 41920 * (2 - (rho 41907 * rho 41907 + rho 41906 * rho 41906 * (-1))) = rho 41907 * rho 41907 - rho 41906 * rho 41906 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3692
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX55 rho : Seg45.F), (seg45AccY55 rho : Seg45.F)⟩
      ⟨(rho 41906 : Seg45.F), (rho 41907 : Seg45.F)⟩
      ⟨(rho 41912 : Seg45.F), (rho 41913 : Seg45.F)⟩
      ⟨(seg45AccX56 rho : Seg45.F), (seg45AccY56 rho : Seg45.F)⟩
      ⟨(rho 41919 : Seg45.F), (rho 41920 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung55

theorem seg45_rung56 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41004 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX56 rho : Seg45.F), (seg45AccY56 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41919 : Seg45.F), (rho 41920 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX56 rho : Seg45.F), (seg45AccY56 rho : Seg45.F)⟩
        ⟨(rho 41919 : Seg45.F), (rho 41920 : Seg45.F)⟩
        ⟨(seg45AccX57 rho : Seg45.F), (seg45AccY57 rho : Seg45.F)⟩
        ⟨(rho 41932 : Seg45.F), (rho 41933 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r3693, r3694, r3695, r3696, r3697, r3698, r3699, r3700, r3701, r3702, r3703, r3704, r3705, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3693 Seg45.relationLc315 Seg45.relationLc315Part0 Seg45.relationLc315Part1 Seg45.relationLc315Part2 Seg45.relationLc315Part3 at r3693
  unfold Seg45.relationRow3694 Seg45.relationLc316 Seg45.relationLc316Part0 Seg45.relationLc316Part1 at r3694
  unfold Seg45.relationRow3695 Seg45.relationLc317 Seg45.relationLc317Part0 Seg45.relationLc317Part1 at r3695
  unfold Seg45.relationRow3696 at r3696
  unfold Seg45.relationRow3697 at r3697
  unfold Seg45.relationRow3698 at r3698
  unfold Seg45.relationRow3699 Seg45.relationLc318 Seg45.relationLc318Part0 Seg45.relationLc318Part1 at r3699
  unfold Seg45.relationRow3700 Seg45.relationLc319 Seg45.relationLc319Part0 Seg45.relationLc319Part1 at r3700
  unfold Seg45.relationRow3701 at r3701
  unfold Seg45.relationRow3702 at r3702
  unfold Seg45.relationRow3703 at r3703
  unfold Seg45.relationRow3704 at r3704
  unfold Seg45.relationRow3705 at r3705
  have hrung56 (bit : Bool) (hbit : rho 41004 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX56 rho : Seg45.F), (seg45AccY56 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41919 : Seg45.F), (rho 41920 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX56 rho : Seg45.F), (seg45AccY56 rho : Seg45.F)⟩
        ⟨(rho 41919 : Seg45.F), (rho 41920 : Seg45.F)⟩
        ⟨(seg45AccX57 rho : Seg45.F), (seg45AccY57 rho : Seg45.F)⟩
        ⟨(rho 41932 : Seg45.F), (rho 41933 : Seg45.F)⟩ := by
    have ha0 : (rho 41919 + rho 41920) * (seg45AccX56 rho + seg45AccY56 rho) = rho 41921 := by
      rw [seg45LadderFlatX56_eq, seg45LadderFlatY56_eq]
      unfold seg45LadderFlatX56 seg45LadderFlatY56
      linear_combination r3693
    have ha1 : rho 41920 * seg45AccX56 rho = rho 41922 := by
      rw [seg45LadderFlatX56_eq]
      unfold seg45LadderFlatX56
      linear_combination r3694
    have ha2 : rho 41919 * seg45AccY56 rho = rho 41923 := by
      rw [seg45LadderFlatY56_eq]
      unfold seg45LadderFlatY56
      linear_combination r3695
    have ha3 : 3021 * rho 41922 * rho 41923 = rho 41924 := by
      linear_combination r3696
    have ha4 : rho 41925 * (1 + rho 41924) = rho 41922 + rho 41923 := by
      linear_combination r3697
    have ha5 : rho 41926 * (1 - rho 41924) = rho 41921 - rho 41922 - rho 41923 := by
      linear_combination r3698
    have haddx :
        rho 41925 * (1 + 3021 * (rho 41920 * seg45AccX56 rho) * (rho 41919 * seg45AccY56 rho)) =
          rho 41920 * seg45AccX56 rho + rho 41919 * seg45AccY56 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41926 * (1 - 3021 * (rho 41920 * seg45AccX56 rho) * (rho 41919 * seg45AccY56 rho)) =
          (-1) * (rho 41920 * seg45AccX56 rho) - rho 41919 * seg45AccY56 rho +
            (seg45AccY56 rho - seg45AccX56 rho * (-1)) * (rho 41919 + rho 41920) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41926 * (1 - rho 41924) = rho 41921 - rho 41922 - rho 41923 := ha5
        _ = (-1) * rho 41922 - rho 41923 + (seg45AccY56 rho - seg45AccX56 rho * (-1)) * (rho 41919 + rho 41920) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX57 rho = seg45AccX56 rho - Bool.toZMod bit * (seg45AccX56 rho - rho 41925) := by
      have hd : rho 41927 = Bool.toZMod bit * (rho 41925 - seg45AccX56 rho) := by
        rw [← hbit, seg45LadderFlatX56_eq]
        unfold seg45LadderFlatX56
        linear_combination -r3699
      unfold seg45AccX57
      linear_combination hd
    have hsely : seg45AccY57 rho = seg45AccY56 rho - Bool.toZMod bit * (seg45AccY56 rho - rho 41926) := by
      have hd : rho 41928 = Bool.toZMod bit * (rho 41926 - seg45AccY56 rho) := by
        rw [← hbit, seg45LadderFlatY56_eq]
        unfold seg45LadderFlatY56
        linear_combination -r3700
      unfold seg45AccY57
      linear_combination hd
    have hd0 : rho 41919 * rho 41920 = rho 41929 := by linear_combination r3701
    have hd1 : rho 41919 * rho 41919 = rho 41930 := by linear_combination r3702
    have hd2 : rho 41920 * rho 41920 = rho 41931 := by linear_combination r3703
    have hd3 : rho 41932 * (rho 41920 * rho 41920 + rho 41919 * rho 41919 * (-1)) = 2 * (rho 41919 * rho 41920) := by
      rw [hd0, hd1, hd2]
      linear_combination r3704
    have hd4 : rho 41933 * (2 - (rho 41920 * rho 41920 + rho 41919 * rho 41919 * (-1))) = rho 41920 * rho 41920 - rho 41919 * rho 41919 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3705
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX56 rho : Seg45.F), (seg45AccY56 rho : Seg45.F)⟩
      ⟨(rho 41919 : Seg45.F), (rho 41920 : Seg45.F)⟩
      ⟨(rho 41925 : Seg45.F), (rho 41926 : Seg45.F)⟩
      ⟨(seg45AccX57 rho : Seg45.F), (seg45AccY57 rho : Seg45.F)⟩
      ⟨(rho 41932 : Seg45.F), (rho 41933 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung56

theorem seg45_rung57 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41005 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX57 rho : Seg45.F), (seg45AccY57 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41932 : Seg45.F), (rho 41933 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX57 rho : Seg45.F), (seg45AccY57 rho : Seg45.F)⟩
        ⟨(rho 41932 : Seg45.F), (rho 41933 : Seg45.F)⟩
        ⟨(seg45AccX58 rho : Seg45.F), (seg45AccY58 rho : Seg45.F)⟩
        ⟨(rho 41945 : Seg45.F), (rho 41946 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3706, r3707, r3708, r3709, r3710, r3711, r3712, r3713, r3714, r3715, r3716, r3717, r3718, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3706 Seg45.relationLc320 Seg45.relationLc320Part0 Seg45.relationLc320Part1 Seg45.relationLc320Part2 Seg45.relationLc320Part3 at r3706
  unfold Seg45.relationRow3707 Seg45.relationLc321 Seg45.relationLc321Part0 Seg45.relationLc321Part1 at r3707
  unfold Seg45.relationRow3708 Seg45.relationLc322 Seg45.relationLc322Part0 Seg45.relationLc322Part1 at r3708
  unfold Seg45.relationRow3709 at r3709
  unfold Seg45.relationRow3710 at r3710
  unfold Seg45.relationRow3711 at r3711
  unfold Seg45.relationRow3712 Seg45.relationLc323 Seg45.relationLc323Part0 Seg45.relationLc323Part1 at r3712
  unfold Seg45.relationRow3713 Seg45.relationLc324 Seg45.relationLc324Part0 Seg45.relationLc324Part1 at r3713
  unfold Seg45.relationRow3714 at r3714
  unfold Seg45.relationRow3715 at r3715
  unfold Seg45.relationRow3716 at r3716
  unfold Seg45.relationRow3717 at r3717
  unfold Seg45.relationRow3718 at r3718
  have hrung57 (bit : Bool) (hbit : rho 41005 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX57 rho : Seg45.F), (seg45AccY57 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41932 : Seg45.F), (rho 41933 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX57 rho : Seg45.F), (seg45AccY57 rho : Seg45.F)⟩
        ⟨(rho 41932 : Seg45.F), (rho 41933 : Seg45.F)⟩
        ⟨(seg45AccX58 rho : Seg45.F), (seg45AccY58 rho : Seg45.F)⟩
        ⟨(rho 41945 : Seg45.F), (rho 41946 : Seg45.F)⟩ := by
    have ha0 : (rho 41932 + rho 41933) * (seg45AccX57 rho + seg45AccY57 rho) = rho 41934 := by
      rw [seg45LadderFlatX57_eq, seg45LadderFlatY57_eq]
      unfold seg45LadderFlatX57 seg45LadderFlatY57
      linear_combination r3706
    have ha1 : rho 41933 * seg45AccX57 rho = rho 41935 := by
      rw [seg45LadderFlatX57_eq]
      unfold seg45LadderFlatX57
      linear_combination r3707
    have ha2 : rho 41932 * seg45AccY57 rho = rho 41936 := by
      rw [seg45LadderFlatY57_eq]
      unfold seg45LadderFlatY57
      linear_combination r3708
    have ha3 : 3021 * rho 41935 * rho 41936 = rho 41937 := by
      linear_combination r3709
    have ha4 : rho 41938 * (1 + rho 41937) = rho 41935 + rho 41936 := by
      linear_combination r3710
    have ha5 : rho 41939 * (1 - rho 41937) = rho 41934 - rho 41935 - rho 41936 := by
      linear_combination r3711
    have haddx :
        rho 41938 * (1 + 3021 * (rho 41933 * seg45AccX57 rho) * (rho 41932 * seg45AccY57 rho)) =
          rho 41933 * seg45AccX57 rho + rho 41932 * seg45AccY57 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41939 * (1 - 3021 * (rho 41933 * seg45AccX57 rho) * (rho 41932 * seg45AccY57 rho)) =
          (-1) * (rho 41933 * seg45AccX57 rho) - rho 41932 * seg45AccY57 rho +
            (seg45AccY57 rho - seg45AccX57 rho * (-1)) * (rho 41932 + rho 41933) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41939 * (1 - rho 41937) = rho 41934 - rho 41935 - rho 41936 := ha5
        _ = (-1) * rho 41935 - rho 41936 + (seg45AccY57 rho - seg45AccX57 rho * (-1)) * (rho 41932 + rho 41933) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX58 rho = seg45AccX57 rho - Bool.toZMod bit * (seg45AccX57 rho - rho 41938) := by
      have hd : rho 41940 = Bool.toZMod bit * (rho 41938 - seg45AccX57 rho) := by
        rw [← hbit, seg45LadderFlatX57_eq]
        unfold seg45LadderFlatX57
        linear_combination -r3712
      unfold seg45AccX58
      linear_combination hd
    have hsely : seg45AccY58 rho = seg45AccY57 rho - Bool.toZMod bit * (seg45AccY57 rho - rho 41939) := by
      have hd : rho 41941 = Bool.toZMod bit * (rho 41939 - seg45AccY57 rho) := by
        rw [← hbit, seg45LadderFlatY57_eq]
        unfold seg45LadderFlatY57
        linear_combination -r3713
      unfold seg45AccY58
      linear_combination hd
    have hd0 : rho 41932 * rho 41933 = rho 41942 := by linear_combination r3714
    have hd1 : rho 41932 * rho 41932 = rho 41943 := by linear_combination r3715
    have hd2 : rho 41933 * rho 41933 = rho 41944 := by linear_combination r3716
    have hd3 : rho 41945 * (rho 41933 * rho 41933 + rho 41932 * rho 41932 * (-1)) = 2 * (rho 41932 * rho 41933) := by
      rw [hd0, hd1, hd2]
      linear_combination r3717
    have hd4 : rho 41946 * (2 - (rho 41933 * rho 41933 + rho 41932 * rho 41932 * (-1))) = rho 41933 * rho 41933 - rho 41932 * rho 41932 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3718
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX57 rho : Seg45.F), (seg45AccY57 rho : Seg45.F)⟩
      ⟨(rho 41932 : Seg45.F), (rho 41933 : Seg45.F)⟩
      ⟨(rho 41938 : Seg45.F), (rho 41939 : Seg45.F)⟩
      ⟨(seg45AccX58 rho : Seg45.F), (seg45AccY58 rho : Seg45.F)⟩
      ⟨(rho 41945 : Seg45.F), (rho 41946 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung57

theorem seg45_rung58 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41006 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX58 rho : Seg45.F), (seg45AccY58 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41945 : Seg45.F), (rho 41946 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX58 rho : Seg45.F), (seg45AccY58 rho : Seg45.F)⟩
        ⟨(rho 41945 : Seg45.F), (rho 41946 : Seg45.F)⟩
        ⟨(seg45AccX59 rho : Seg45.F), (seg45AccY59 rho : Seg45.F)⟩
        ⟨(rho 41958 : Seg45.F), (rho 41959 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3719, r3720, r3721, r3722, r3723, r3724, r3725, r3726, r3727, r3728, r3729, r3730, r3731, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3719 Seg45.relationLc325 Seg45.relationLc325Part0 Seg45.relationLc325Part1 Seg45.relationLc325Part2 Seg45.relationLc325Part3 at r3719
  unfold Seg45.relationRow3720 Seg45.relationLc326 Seg45.relationLc326Part0 Seg45.relationLc326Part1 at r3720
  unfold Seg45.relationRow3721 Seg45.relationLc327 Seg45.relationLc327Part0 Seg45.relationLc327Part1 at r3721
  unfold Seg45.relationRow3722 at r3722
  unfold Seg45.relationRow3723 at r3723
  unfold Seg45.relationRow3724 at r3724
  unfold Seg45.relationRow3725 Seg45.relationLc328 Seg45.relationLc328Part0 Seg45.relationLc328Part1 at r3725
  unfold Seg45.relationRow3726 Seg45.relationLc329 Seg45.relationLc329Part0 Seg45.relationLc329Part1 at r3726
  unfold Seg45.relationRow3727 at r3727
  unfold Seg45.relationRow3728 at r3728
  unfold Seg45.relationRow3729 at r3729
  unfold Seg45.relationRow3730 at r3730
  unfold Seg45.relationRow3731 at r3731
  have hrung58 (bit : Bool) (hbit : rho 41006 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX58 rho : Seg45.F), (seg45AccY58 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41945 : Seg45.F), (rho 41946 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX58 rho : Seg45.F), (seg45AccY58 rho : Seg45.F)⟩
        ⟨(rho 41945 : Seg45.F), (rho 41946 : Seg45.F)⟩
        ⟨(seg45AccX59 rho : Seg45.F), (seg45AccY59 rho : Seg45.F)⟩
        ⟨(rho 41958 : Seg45.F), (rho 41959 : Seg45.F)⟩ := by
    have ha0 : (rho 41945 + rho 41946) * (seg45AccX58 rho + seg45AccY58 rho) = rho 41947 := by
      rw [seg45LadderFlatX58_eq, seg45LadderFlatY58_eq]
      unfold seg45LadderFlatX58 seg45LadderFlatY58
      linear_combination r3719
    have ha1 : rho 41946 * seg45AccX58 rho = rho 41948 := by
      rw [seg45LadderFlatX58_eq]
      unfold seg45LadderFlatX58
      linear_combination r3720
    have ha2 : rho 41945 * seg45AccY58 rho = rho 41949 := by
      rw [seg45LadderFlatY58_eq]
      unfold seg45LadderFlatY58
      linear_combination r3721
    have ha3 : 3021 * rho 41948 * rho 41949 = rho 41950 := by
      linear_combination r3722
    have ha4 : rho 41951 * (1 + rho 41950) = rho 41948 + rho 41949 := by
      linear_combination r3723
    have ha5 : rho 41952 * (1 - rho 41950) = rho 41947 - rho 41948 - rho 41949 := by
      linear_combination r3724
    have haddx :
        rho 41951 * (1 + 3021 * (rho 41946 * seg45AccX58 rho) * (rho 41945 * seg45AccY58 rho)) =
          rho 41946 * seg45AccX58 rho + rho 41945 * seg45AccY58 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41952 * (1 - 3021 * (rho 41946 * seg45AccX58 rho) * (rho 41945 * seg45AccY58 rho)) =
          (-1) * (rho 41946 * seg45AccX58 rho) - rho 41945 * seg45AccY58 rho +
            (seg45AccY58 rho - seg45AccX58 rho * (-1)) * (rho 41945 + rho 41946) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41952 * (1 - rho 41950) = rho 41947 - rho 41948 - rho 41949 := ha5
        _ = (-1) * rho 41948 - rho 41949 + (seg45AccY58 rho - seg45AccX58 rho * (-1)) * (rho 41945 + rho 41946) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX59 rho = seg45AccX58 rho - Bool.toZMod bit * (seg45AccX58 rho - rho 41951) := by
      have hd : rho 41953 = Bool.toZMod bit * (rho 41951 - seg45AccX58 rho) := by
        rw [← hbit, seg45LadderFlatX58_eq]
        unfold seg45LadderFlatX58
        linear_combination -r3725
      unfold seg45AccX59
      linear_combination hd
    have hsely : seg45AccY59 rho = seg45AccY58 rho - Bool.toZMod bit * (seg45AccY58 rho - rho 41952) := by
      have hd : rho 41954 = Bool.toZMod bit * (rho 41952 - seg45AccY58 rho) := by
        rw [← hbit, seg45LadderFlatY58_eq]
        unfold seg45LadderFlatY58
        linear_combination -r3726
      unfold seg45AccY59
      linear_combination hd
    have hd0 : rho 41945 * rho 41946 = rho 41955 := by linear_combination r3727
    have hd1 : rho 41945 * rho 41945 = rho 41956 := by linear_combination r3728
    have hd2 : rho 41946 * rho 41946 = rho 41957 := by linear_combination r3729
    have hd3 : rho 41958 * (rho 41946 * rho 41946 + rho 41945 * rho 41945 * (-1)) = 2 * (rho 41945 * rho 41946) := by
      rw [hd0, hd1, hd2]
      linear_combination r3730
    have hd4 : rho 41959 * (2 - (rho 41946 * rho 41946 + rho 41945 * rho 41945 * (-1))) = rho 41946 * rho 41946 - rho 41945 * rho 41945 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3731
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX58 rho : Seg45.F), (seg45AccY58 rho : Seg45.F)⟩
      ⟨(rho 41945 : Seg45.F), (rho 41946 : Seg45.F)⟩
      ⟨(rho 41951 : Seg45.F), (rho 41952 : Seg45.F)⟩
      ⟨(seg45AccX59 rho : Seg45.F), (seg45AccY59 rho : Seg45.F)⟩
      ⟨(rho 41958 : Seg45.F), (rho 41959 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung58

theorem seg45_rung59 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41007 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX59 rho : Seg45.F), (seg45AccY59 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41958 : Seg45.F), (rho 41959 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX59 rho : Seg45.F), (seg45AccY59 rho : Seg45.F)⟩
        ⟨(rho 41958 : Seg45.F), (rho 41959 : Seg45.F)⟩
        ⟨(seg45AccX60 rho : Seg45.F), (seg45AccY60 rho : Seg45.F)⟩
        ⟨(rho 41971 : Seg45.F), (rho 41972 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3732, r3733, r3734, r3735, r3736, r3737, r3738, r3739, r3740, r3741, r3742, r3743, r3744, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3732 Seg45.relationLc330 Seg45.relationLc330Part0 Seg45.relationLc330Part1 Seg45.relationLc330Part2 Seg45.relationLc330Part3 at r3732
  unfold Seg45.relationRow3733 Seg45.relationLc331 Seg45.relationLc331Part0 Seg45.relationLc331Part1 at r3733
  unfold Seg45.relationRow3734 Seg45.relationLc332 Seg45.relationLc332Part0 Seg45.relationLc332Part1 at r3734
  unfold Seg45.relationRow3735 at r3735
  unfold Seg45.relationRow3736 at r3736
  unfold Seg45.relationRow3737 at r3737
  unfold Seg45.relationRow3738 Seg45.relationLc333 Seg45.relationLc333Part0 Seg45.relationLc333Part1 at r3738
  unfold Seg45.relationRow3739 Seg45.relationLc334 Seg45.relationLc334Part0 Seg45.relationLc334Part1 at r3739
  unfold Seg45.relationRow3740 at r3740
  unfold Seg45.relationRow3741 at r3741
  unfold Seg45.relationRow3742 at r3742
  unfold Seg45.relationRow3743 at r3743
  unfold Seg45.relationRow3744 at r3744
  have hrung59 (bit : Bool) (hbit : rho 41007 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX59 rho : Seg45.F), (seg45AccY59 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41958 : Seg45.F), (rho 41959 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX59 rho : Seg45.F), (seg45AccY59 rho : Seg45.F)⟩
        ⟨(rho 41958 : Seg45.F), (rho 41959 : Seg45.F)⟩
        ⟨(seg45AccX60 rho : Seg45.F), (seg45AccY60 rho : Seg45.F)⟩
        ⟨(rho 41971 : Seg45.F), (rho 41972 : Seg45.F)⟩ := by
    have ha0 : (rho 41958 + rho 41959) * (seg45AccX59 rho + seg45AccY59 rho) = rho 41960 := by
      rw [seg45LadderFlatX59_eq, seg45LadderFlatY59_eq]
      unfold seg45LadderFlatX59 seg45LadderFlatY59
      linear_combination r3732
    have ha1 : rho 41959 * seg45AccX59 rho = rho 41961 := by
      rw [seg45LadderFlatX59_eq]
      unfold seg45LadderFlatX59
      linear_combination r3733
    have ha2 : rho 41958 * seg45AccY59 rho = rho 41962 := by
      rw [seg45LadderFlatY59_eq]
      unfold seg45LadderFlatY59
      linear_combination r3734
    have ha3 : 3021 * rho 41961 * rho 41962 = rho 41963 := by
      linear_combination r3735
    have ha4 : rho 41964 * (1 + rho 41963) = rho 41961 + rho 41962 := by
      linear_combination r3736
    have ha5 : rho 41965 * (1 - rho 41963) = rho 41960 - rho 41961 - rho 41962 := by
      linear_combination r3737
    have haddx :
        rho 41964 * (1 + 3021 * (rho 41959 * seg45AccX59 rho) * (rho 41958 * seg45AccY59 rho)) =
          rho 41959 * seg45AccX59 rho + rho 41958 * seg45AccY59 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41965 * (1 - 3021 * (rho 41959 * seg45AccX59 rho) * (rho 41958 * seg45AccY59 rho)) =
          (-1) * (rho 41959 * seg45AccX59 rho) - rho 41958 * seg45AccY59 rho +
            (seg45AccY59 rho - seg45AccX59 rho * (-1)) * (rho 41958 + rho 41959) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41965 * (1 - rho 41963) = rho 41960 - rho 41961 - rho 41962 := ha5
        _ = (-1) * rho 41961 - rho 41962 + (seg45AccY59 rho - seg45AccX59 rho * (-1)) * (rho 41958 + rho 41959) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX60 rho = seg45AccX59 rho - Bool.toZMod bit * (seg45AccX59 rho - rho 41964) := by
      have hd : rho 41966 = Bool.toZMod bit * (rho 41964 - seg45AccX59 rho) := by
        rw [← hbit, seg45LadderFlatX59_eq]
        unfold seg45LadderFlatX59
        linear_combination -r3738
      unfold seg45AccX60
      linear_combination hd
    have hsely : seg45AccY60 rho = seg45AccY59 rho - Bool.toZMod bit * (seg45AccY59 rho - rho 41965) := by
      have hd : rho 41967 = Bool.toZMod bit * (rho 41965 - seg45AccY59 rho) := by
        rw [← hbit, seg45LadderFlatY59_eq]
        unfold seg45LadderFlatY59
        linear_combination -r3739
      unfold seg45AccY60
      linear_combination hd
    have hd0 : rho 41958 * rho 41959 = rho 41968 := by linear_combination r3740
    have hd1 : rho 41958 * rho 41958 = rho 41969 := by linear_combination r3741
    have hd2 : rho 41959 * rho 41959 = rho 41970 := by linear_combination r3742
    have hd3 : rho 41971 * (rho 41959 * rho 41959 + rho 41958 * rho 41958 * (-1)) = 2 * (rho 41958 * rho 41959) := by
      rw [hd0, hd1, hd2]
      linear_combination r3743
    have hd4 : rho 41972 * (2 - (rho 41959 * rho 41959 + rho 41958 * rho 41958 * (-1))) = rho 41959 * rho 41959 - rho 41958 * rho 41958 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3744
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX59 rho : Seg45.F), (seg45AccY59 rho : Seg45.F)⟩
      ⟨(rho 41958 : Seg45.F), (rho 41959 : Seg45.F)⟩
      ⟨(rho 41964 : Seg45.F), (rho 41965 : Seg45.F)⟩
      ⟨(seg45AccX60 rho : Seg45.F), (seg45AccY60 rho : Seg45.F)⟩
      ⟨(rho 41971 : Seg45.F), (rho 41972 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung59

theorem seg45_rung60 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41008 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX60 rho : Seg45.F), (seg45AccY60 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41971 : Seg45.F), (rho 41972 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX60 rho : Seg45.F), (seg45AccY60 rho : Seg45.F)⟩
        ⟨(rho 41971 : Seg45.F), (rho 41972 : Seg45.F)⟩
        ⟨(seg45AccX61 rho : Seg45.F), (seg45AccY61 rho : Seg45.F)⟩
        ⟨(rho 41984 : Seg45.F), (rho 41985 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3745, r3746, r3747, r3748, r3749, r3750, r3751, r3752, r3753, r3754, r3755, r3756, r3757, _, _⟩
  unfold Seg45.relationRow3745 Seg45.relationLc335 Seg45.relationLc335Part0 Seg45.relationLc335Part1 Seg45.relationLc335Part2 Seg45.relationLc335Part3 at r3745
  unfold Seg45.relationRow3746 Seg45.relationLc336 Seg45.relationLc336Part0 Seg45.relationLc336Part1 at r3746
  unfold Seg45.relationRow3747 Seg45.relationLc337 Seg45.relationLc337Part0 Seg45.relationLc337Part1 at r3747
  unfold Seg45.relationRow3748 at r3748
  unfold Seg45.relationRow3749 at r3749
  unfold Seg45.relationRow3750 at r3750
  unfold Seg45.relationRow3751 Seg45.relationLc338 Seg45.relationLc338Part0 Seg45.relationLc338Part1 at r3751
  unfold Seg45.relationRow3752 Seg45.relationLc339 Seg45.relationLc339Part0 Seg45.relationLc339Part1 at r3752
  unfold Seg45.relationRow3753 at r3753
  unfold Seg45.relationRow3754 at r3754
  unfold Seg45.relationRow3755 at r3755
  unfold Seg45.relationRow3756 at r3756
  unfold Seg45.relationRow3757 at r3757
  have hrung60 (bit : Bool) (hbit : rho 41008 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX60 rho : Seg45.F), (seg45AccY60 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41971 : Seg45.F), (rho 41972 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX60 rho : Seg45.F), (seg45AccY60 rho : Seg45.F)⟩
        ⟨(rho 41971 : Seg45.F), (rho 41972 : Seg45.F)⟩
        ⟨(seg45AccX61 rho : Seg45.F), (seg45AccY61 rho : Seg45.F)⟩
        ⟨(rho 41984 : Seg45.F), (rho 41985 : Seg45.F)⟩ := by
    have ha0 : (rho 41971 + rho 41972) * (seg45AccX60 rho + seg45AccY60 rho) = rho 41973 := by
      rw [seg45LadderFlatX60_eq, seg45LadderFlatY60_eq]
      unfold seg45LadderFlatX60 seg45LadderFlatY60
      linear_combination r3745
    have ha1 : rho 41972 * seg45AccX60 rho = rho 41974 := by
      rw [seg45LadderFlatX60_eq]
      unfold seg45LadderFlatX60
      linear_combination r3746
    have ha2 : rho 41971 * seg45AccY60 rho = rho 41975 := by
      rw [seg45LadderFlatY60_eq]
      unfold seg45LadderFlatY60
      linear_combination r3747
    have ha3 : 3021 * rho 41974 * rho 41975 = rho 41976 := by
      linear_combination r3748
    have ha4 : rho 41977 * (1 + rho 41976) = rho 41974 + rho 41975 := by
      linear_combination r3749
    have ha5 : rho 41978 * (1 - rho 41976) = rho 41973 - rho 41974 - rho 41975 := by
      linear_combination r3750
    have haddx :
        rho 41977 * (1 + 3021 * (rho 41972 * seg45AccX60 rho) * (rho 41971 * seg45AccY60 rho)) =
          rho 41972 * seg45AccX60 rho + rho 41971 * seg45AccY60 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41978 * (1 - 3021 * (rho 41972 * seg45AccX60 rho) * (rho 41971 * seg45AccY60 rho)) =
          (-1) * (rho 41972 * seg45AccX60 rho) - rho 41971 * seg45AccY60 rho +
            (seg45AccY60 rho - seg45AccX60 rho * (-1)) * (rho 41971 + rho 41972) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41978 * (1 - rho 41976) = rho 41973 - rho 41974 - rho 41975 := ha5
        _ = (-1) * rho 41974 - rho 41975 + (seg45AccY60 rho - seg45AccX60 rho * (-1)) * (rho 41971 + rho 41972) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX61 rho = seg45AccX60 rho - Bool.toZMod bit * (seg45AccX60 rho - rho 41977) := by
      have hd : rho 41979 = Bool.toZMod bit * (rho 41977 - seg45AccX60 rho) := by
        rw [← hbit, seg45LadderFlatX60_eq]
        unfold seg45LadderFlatX60
        linear_combination -r3751
      unfold seg45AccX61
      linear_combination hd
    have hsely : seg45AccY61 rho = seg45AccY60 rho - Bool.toZMod bit * (seg45AccY60 rho - rho 41978) := by
      have hd : rho 41980 = Bool.toZMod bit * (rho 41978 - seg45AccY60 rho) := by
        rw [← hbit, seg45LadderFlatY60_eq]
        unfold seg45LadderFlatY60
        linear_combination -r3752
      unfold seg45AccY61
      linear_combination hd
    have hd0 : rho 41971 * rho 41972 = rho 41981 := by linear_combination r3753
    have hd1 : rho 41971 * rho 41971 = rho 41982 := by linear_combination r3754
    have hd2 : rho 41972 * rho 41972 = rho 41983 := by linear_combination r3755
    have hd3 : rho 41984 * (rho 41972 * rho 41972 + rho 41971 * rho 41971 * (-1)) = 2 * (rho 41971 * rho 41972) := by
      rw [hd0, hd1, hd2]
      linear_combination r3756
    have hd4 : rho 41985 * (2 - (rho 41972 * rho 41972 + rho 41971 * rho 41971 * (-1))) = rho 41972 * rho 41972 - rho 41971 * rho 41971 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3757
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX60 rho : Seg45.F), (seg45AccY60 rho : Seg45.F)⟩
      ⟨(rho 41971 : Seg45.F), (rho 41972 : Seg45.F)⟩
      ⟨(rho 41977 : Seg45.F), (rho 41978 : Seg45.F)⟩
      ⟨(seg45AccX61 rho : Seg45.F), (seg45AccY61 rho : Seg45.F)⟩
      ⟨(rho 41984 : Seg45.F), (rho 41985 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung60

theorem seg45_rung61 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41009 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX61 rho : Seg45.F), (seg45AccY61 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41984 : Seg45.F), (rho 41985 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX61 rho : Seg45.F), (seg45AccY61 rho : Seg45.F)⟩
        ⟨(rho 41984 : Seg45.F), (rho 41985 : Seg45.F)⟩
        ⟨(seg45AccX62 rho : Seg45.F), (seg45AccY62 rho : Seg45.F)⟩
        ⟨(rho 41997 : Seg45.F), (rho 41998 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3758, r3759⟩
  unfold Seg45.relationPart47 at p47
  rcases p47 with ⟨r3760, r3761, r3762, r3763, r3764, r3765, r3766, r3767, r3768, r3769, r3770, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3758 Seg45.relationLc340 Seg45.relationLc340Part0 Seg45.relationLc340Part1 Seg45.relationLc340Part2 Seg45.relationLc340Part3 at r3758
  unfold Seg45.relationRow3759 Seg45.relationLc341 Seg45.relationLc341Part0 Seg45.relationLc341Part1 at r3759
  unfold Seg45.relationRow3760 Seg45.relationLc342 Seg45.relationLc342Part0 Seg45.relationLc342Part1 at r3760
  unfold Seg45.relationRow3761 at r3761
  unfold Seg45.relationRow3762 at r3762
  unfold Seg45.relationRow3763 at r3763
  unfold Seg45.relationRow3764 Seg45.relationLc343 Seg45.relationLc343Part0 Seg45.relationLc343Part1 at r3764
  unfold Seg45.relationRow3765 Seg45.relationLc344 Seg45.relationLc344Part0 Seg45.relationLc344Part1 at r3765
  unfold Seg45.relationRow3766 at r3766
  unfold Seg45.relationRow3767 at r3767
  unfold Seg45.relationRow3768 at r3768
  unfold Seg45.relationRow3769 at r3769
  unfold Seg45.relationRow3770 at r3770
  have hrung61 (bit : Bool) (hbit : rho 41009 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX61 rho : Seg45.F), (seg45AccY61 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41984 : Seg45.F), (rho 41985 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX61 rho : Seg45.F), (seg45AccY61 rho : Seg45.F)⟩
        ⟨(rho 41984 : Seg45.F), (rho 41985 : Seg45.F)⟩
        ⟨(seg45AccX62 rho : Seg45.F), (seg45AccY62 rho : Seg45.F)⟩
        ⟨(rho 41997 : Seg45.F), (rho 41998 : Seg45.F)⟩ := by
    have ha0 : (rho 41984 + rho 41985) * (seg45AccX61 rho + seg45AccY61 rho) = rho 41986 := by
      rw [seg45LadderFlatX61_eq, seg45LadderFlatY61_eq]
      unfold seg45LadderFlatX61 seg45LadderFlatY61
      linear_combination r3758
    have ha1 : rho 41985 * seg45AccX61 rho = rho 41987 := by
      rw [seg45LadderFlatX61_eq]
      unfold seg45LadderFlatX61
      linear_combination r3759
    have ha2 : rho 41984 * seg45AccY61 rho = rho 41988 := by
      rw [seg45LadderFlatY61_eq]
      unfold seg45LadderFlatY61
      linear_combination r3760
    have ha3 : 3021 * rho 41987 * rho 41988 = rho 41989 := by
      linear_combination r3761
    have ha4 : rho 41990 * (1 + rho 41989) = rho 41987 + rho 41988 := by
      linear_combination r3762
    have ha5 : rho 41991 * (1 - rho 41989) = rho 41986 - rho 41987 - rho 41988 := by
      linear_combination r3763
    have haddx :
        rho 41990 * (1 + 3021 * (rho 41985 * seg45AccX61 rho) * (rho 41984 * seg45AccY61 rho)) =
          rho 41985 * seg45AccX61 rho + rho 41984 * seg45AccY61 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41991 * (1 - 3021 * (rho 41985 * seg45AccX61 rho) * (rho 41984 * seg45AccY61 rho)) =
          (-1) * (rho 41985 * seg45AccX61 rho) - rho 41984 * seg45AccY61 rho +
            (seg45AccY61 rho - seg45AccX61 rho * (-1)) * (rho 41984 + rho 41985) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41991 * (1 - rho 41989) = rho 41986 - rho 41987 - rho 41988 := ha5
        _ = (-1) * rho 41987 - rho 41988 + (seg45AccY61 rho - seg45AccX61 rho * (-1)) * (rho 41984 + rho 41985) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX62 rho = seg45AccX61 rho - Bool.toZMod bit * (seg45AccX61 rho - rho 41990) := by
      have hd : rho 41992 = Bool.toZMod bit * (rho 41990 - seg45AccX61 rho) := by
        rw [← hbit, seg45LadderFlatX61_eq]
        unfold seg45LadderFlatX61
        linear_combination -r3764
      unfold seg45AccX62
      linear_combination hd
    have hsely : seg45AccY62 rho = seg45AccY61 rho - Bool.toZMod bit * (seg45AccY61 rho - rho 41991) := by
      have hd : rho 41993 = Bool.toZMod bit * (rho 41991 - seg45AccY61 rho) := by
        rw [← hbit, seg45LadderFlatY61_eq]
        unfold seg45LadderFlatY61
        linear_combination -r3765
      unfold seg45AccY62
      linear_combination hd
    have hd0 : rho 41984 * rho 41985 = rho 41994 := by linear_combination r3766
    have hd1 : rho 41984 * rho 41984 = rho 41995 := by linear_combination r3767
    have hd2 : rho 41985 * rho 41985 = rho 41996 := by linear_combination r3768
    have hd3 : rho 41997 * (rho 41985 * rho 41985 + rho 41984 * rho 41984 * (-1)) = 2 * (rho 41984 * rho 41985) := by
      rw [hd0, hd1, hd2]
      linear_combination r3769
    have hd4 : rho 41998 * (2 - (rho 41985 * rho 41985 + rho 41984 * rho 41984 * (-1))) = rho 41985 * rho 41985 - rho 41984 * rho 41984 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3770
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX61 rho : Seg45.F), (seg45AccY61 rho : Seg45.F)⟩
      ⟨(rho 41984 : Seg45.F), (rho 41985 : Seg45.F)⟩
      ⟨(rho 41990 : Seg45.F), (rho 41991 : Seg45.F)⟩
      ⟨(seg45AccX62 rho : Seg45.F), (seg45AccY62 rho : Seg45.F)⟩
      ⟨(rho 41997 : Seg45.F), (rho 41998 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung61

theorem seg45_rung62 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41010 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX62 rho : Seg45.F), (seg45AccY62 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41997 : Seg45.F), (rho 41998 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX62 rho : Seg45.F), (seg45AccY62 rho : Seg45.F)⟩
        ⟨(rho 41997 : Seg45.F), (rho 41998 : Seg45.F)⟩
        ⟨(seg45AccX63 rho : Seg45.F), (seg45AccY63 rho : Seg45.F)⟩
        ⟨(rho 42010 : Seg45.F), (rho 42011 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, r3771, r3772, r3773, r3774, r3775, r3776, r3777, r3778, r3779, r3780, r3781, r3782, r3783, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3771 Seg45.relationLc345 Seg45.relationLc345Part0 Seg45.relationLc345Part1 Seg45.relationLc345Part2 Seg45.relationLc345Part3 at r3771
  unfold Seg45.relationRow3772 Seg45.relationLc346 Seg45.relationLc346Part0 Seg45.relationLc346Part1 at r3772
  unfold Seg45.relationRow3773 Seg45.relationLc347 Seg45.relationLc347Part0 Seg45.relationLc347Part1 at r3773
  unfold Seg45.relationRow3774 at r3774
  unfold Seg45.relationRow3775 at r3775
  unfold Seg45.relationRow3776 at r3776
  unfold Seg45.relationRow3777 Seg45.relationLc348 Seg45.relationLc348Part0 Seg45.relationLc348Part1 at r3777
  unfold Seg45.relationRow3778 Seg45.relationLc349 Seg45.relationLc349Part0 Seg45.relationLc349Part1 at r3778
  unfold Seg45.relationRow3779 at r3779
  unfold Seg45.relationRow3780 at r3780
  unfold Seg45.relationRow3781 at r3781
  unfold Seg45.relationRow3782 at r3782
  unfold Seg45.relationRow3783 at r3783
  have hrung62 (bit : Bool) (hbit : rho 41010 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX62 rho : Seg45.F), (seg45AccY62 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41997 : Seg45.F), (rho 41998 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX62 rho : Seg45.F), (seg45AccY62 rho : Seg45.F)⟩
        ⟨(rho 41997 : Seg45.F), (rho 41998 : Seg45.F)⟩
        ⟨(seg45AccX63 rho : Seg45.F), (seg45AccY63 rho : Seg45.F)⟩
        ⟨(rho 42010 : Seg45.F), (rho 42011 : Seg45.F)⟩ := by
    have ha0 : (rho 41997 + rho 41998) * (seg45AccX62 rho + seg45AccY62 rho) = rho 41999 := by
      rw [seg45LadderFlatX62_eq, seg45LadderFlatY62_eq]
      unfold seg45LadderFlatX62 seg45LadderFlatY62
      linear_combination r3771
    have ha1 : rho 41998 * seg45AccX62 rho = rho 42000 := by
      rw [seg45LadderFlatX62_eq]
      unfold seg45LadderFlatX62
      linear_combination r3772
    have ha2 : rho 41997 * seg45AccY62 rho = rho 42001 := by
      rw [seg45LadderFlatY62_eq]
      unfold seg45LadderFlatY62
      linear_combination r3773
    have ha3 : 3021 * rho 42000 * rho 42001 = rho 42002 := by
      linear_combination r3774
    have ha4 : rho 42003 * (1 + rho 42002) = rho 42000 + rho 42001 := by
      linear_combination r3775
    have ha5 : rho 42004 * (1 - rho 42002) = rho 41999 - rho 42000 - rho 42001 := by
      linear_combination r3776
    have haddx :
        rho 42003 * (1 + 3021 * (rho 41998 * seg45AccX62 rho) * (rho 41997 * seg45AccY62 rho)) =
          rho 41998 * seg45AccX62 rho + rho 41997 * seg45AccY62 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42004 * (1 - 3021 * (rho 41998 * seg45AccX62 rho) * (rho 41997 * seg45AccY62 rho)) =
          (-1) * (rho 41998 * seg45AccX62 rho) - rho 41997 * seg45AccY62 rho +
            (seg45AccY62 rho - seg45AccX62 rho * (-1)) * (rho 41997 + rho 41998) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42004 * (1 - rho 42002) = rho 41999 - rho 42000 - rho 42001 := ha5
        _ = (-1) * rho 42000 - rho 42001 + (seg45AccY62 rho - seg45AccX62 rho * (-1)) * (rho 41997 + rho 41998) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX63 rho = seg45AccX62 rho - Bool.toZMod bit * (seg45AccX62 rho - rho 42003) := by
      have hd : rho 42005 = Bool.toZMod bit * (rho 42003 - seg45AccX62 rho) := by
        rw [← hbit, seg45LadderFlatX62_eq]
        unfold seg45LadderFlatX62
        linear_combination -r3777
      unfold seg45AccX63
      linear_combination hd
    have hsely : seg45AccY63 rho = seg45AccY62 rho - Bool.toZMod bit * (seg45AccY62 rho - rho 42004) := by
      have hd : rho 42006 = Bool.toZMod bit * (rho 42004 - seg45AccY62 rho) := by
        rw [← hbit, seg45LadderFlatY62_eq]
        unfold seg45LadderFlatY62
        linear_combination -r3778
      unfold seg45AccY63
      linear_combination hd
    have hd0 : rho 41997 * rho 41998 = rho 42007 := by linear_combination r3779
    have hd1 : rho 41997 * rho 41997 = rho 42008 := by linear_combination r3780
    have hd2 : rho 41998 * rho 41998 = rho 42009 := by linear_combination r3781
    have hd3 : rho 42010 * (rho 41998 * rho 41998 + rho 41997 * rho 41997 * (-1)) = 2 * (rho 41997 * rho 41998) := by
      rw [hd0, hd1, hd2]
      linear_combination r3782
    have hd4 : rho 42011 * (2 - (rho 41998 * rho 41998 + rho 41997 * rho 41997 * (-1))) = rho 41998 * rho 41998 - rho 41997 * rho 41997 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3783
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX62 rho : Seg45.F), (seg45AccY62 rho : Seg45.F)⟩
      ⟨(rho 41997 : Seg45.F), (rho 41998 : Seg45.F)⟩
      ⟨(rho 42003 : Seg45.F), (rho 42004 : Seg45.F)⟩
      ⟨(seg45AccX63 rho : Seg45.F), (seg45AccY63 rho : Seg45.F)⟩
      ⟨(rho 42010 : Seg45.F), (rho 42011 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung62

theorem seg45_rung63 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41011 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX63 rho : Seg45.F), (seg45AccY63 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42010 : Seg45.F), (rho 42011 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX63 rho : Seg45.F), (seg45AccY63 rho : Seg45.F)⟩
        ⟨(rho 42010 : Seg45.F), (rho 42011 : Seg45.F)⟩
        ⟨(seg45AccX64 rho : Seg45.F), (seg45AccY64 rho : Seg45.F)⟩
        ⟨(rho 42023 : Seg45.F), (rho 42024 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3784, r3785, r3786, r3787, r3788, r3789, r3790, r3791, r3792, r3793, r3794, r3795, r3796, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3784 Seg45.relationLc350 Seg45.relationLc350Part0 Seg45.relationLc350Part1 Seg45.relationLc350Part2 Seg45.relationLc350Part3 at r3784
  unfold Seg45.relationRow3785 Seg45.relationLc351 Seg45.relationLc351Part0 Seg45.relationLc351Part1 at r3785
  unfold Seg45.relationRow3786 Seg45.relationLc352 Seg45.relationLc352Part0 Seg45.relationLc352Part1 at r3786
  unfold Seg45.relationRow3787 at r3787
  unfold Seg45.relationRow3788 at r3788
  unfold Seg45.relationRow3789 at r3789
  unfold Seg45.relationRow3790 Seg45.relationLc353 Seg45.relationLc353Part0 Seg45.relationLc353Part1 at r3790
  unfold Seg45.relationRow3791 Seg45.relationLc354 Seg45.relationLc354Part0 Seg45.relationLc354Part1 Seg45.relationLc354Part2 at r3791
  unfold Seg45.relationRow3792 at r3792
  unfold Seg45.relationRow3793 at r3793
  unfold Seg45.relationRow3794 at r3794
  unfold Seg45.relationRow3795 at r3795
  unfold Seg45.relationRow3796 at r3796
  have hrung63 (bit : Bool) (hbit : rho 41011 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX63 rho : Seg45.F), (seg45AccY63 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42010 : Seg45.F), (rho 42011 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX63 rho : Seg45.F), (seg45AccY63 rho : Seg45.F)⟩
        ⟨(rho 42010 : Seg45.F), (rho 42011 : Seg45.F)⟩
        ⟨(seg45AccX64 rho : Seg45.F), (seg45AccY64 rho : Seg45.F)⟩
        ⟨(rho 42023 : Seg45.F), (rho 42024 : Seg45.F)⟩ := by
    have ha0 : (rho 42010 + rho 42011) * (seg45AccX63 rho + seg45AccY63 rho) = rho 42012 := by
      rw [seg45LadderFlatX63_eq, seg45LadderFlatY63_eq]
      unfold seg45LadderFlatX63 seg45LadderFlatY63
      linear_combination r3784
    have ha1 : rho 42011 * seg45AccX63 rho = rho 42013 := by
      rw [seg45LadderFlatX63_eq]
      unfold seg45LadderFlatX63
      linear_combination r3785
    have ha2 : rho 42010 * seg45AccY63 rho = rho 42014 := by
      rw [seg45LadderFlatY63_eq]
      unfold seg45LadderFlatY63
      linear_combination r3786
    have ha3 : 3021 * rho 42013 * rho 42014 = rho 42015 := by
      linear_combination r3787
    have ha4 : rho 42016 * (1 + rho 42015) = rho 42013 + rho 42014 := by
      linear_combination r3788
    have ha5 : rho 42017 * (1 - rho 42015) = rho 42012 - rho 42013 - rho 42014 := by
      linear_combination r3789
    have haddx :
        rho 42016 * (1 + 3021 * (rho 42011 * seg45AccX63 rho) * (rho 42010 * seg45AccY63 rho)) =
          rho 42011 * seg45AccX63 rho + rho 42010 * seg45AccY63 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42017 * (1 - 3021 * (rho 42011 * seg45AccX63 rho) * (rho 42010 * seg45AccY63 rho)) =
          (-1) * (rho 42011 * seg45AccX63 rho) - rho 42010 * seg45AccY63 rho +
            (seg45AccY63 rho - seg45AccX63 rho * (-1)) * (rho 42010 + rho 42011) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42017 * (1 - rho 42015) = rho 42012 - rho 42013 - rho 42014 := ha5
        _ = (-1) * rho 42013 - rho 42014 + (seg45AccY63 rho - seg45AccX63 rho * (-1)) * (rho 42010 + rho 42011) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX64 rho = seg45AccX63 rho - Bool.toZMod bit * (seg45AccX63 rho - rho 42016) := by
      have hd : rho 42018 = Bool.toZMod bit * (rho 42016 - seg45AccX63 rho) := by
        rw [← hbit, seg45LadderFlatX63_eq]
        unfold seg45LadderFlatX63
        linear_combination -r3790
      unfold seg45AccX64
      linear_combination hd
    have hsely : seg45AccY64 rho = seg45AccY63 rho - Bool.toZMod bit * (seg45AccY63 rho - rho 42017) := by
      have hd : rho 42019 = Bool.toZMod bit * (rho 42017 - seg45AccY63 rho) := by
        rw [← hbit, seg45LadderFlatY63_eq]
        unfold seg45LadderFlatY63
        linear_combination -r3791
      unfold seg45AccY64
      linear_combination hd
    have hd0 : rho 42010 * rho 42011 = rho 42020 := by linear_combination r3792
    have hd1 : rho 42010 * rho 42010 = rho 42021 := by linear_combination r3793
    have hd2 : rho 42011 * rho 42011 = rho 42022 := by linear_combination r3794
    have hd3 : rho 42023 * (rho 42011 * rho 42011 + rho 42010 * rho 42010 * (-1)) = 2 * (rho 42010 * rho 42011) := by
      rw [hd0, hd1, hd2]
      linear_combination r3795
    have hd4 : rho 42024 * (2 - (rho 42011 * rho 42011 + rho 42010 * rho 42010 * (-1))) = rho 42011 * rho 42011 - rho 42010 * rho 42010 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3796
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX63 rho : Seg45.F), (seg45AccY63 rho : Seg45.F)⟩
      ⟨(rho 42010 : Seg45.F), (rho 42011 : Seg45.F)⟩
      ⟨(rho 42016 : Seg45.F), (rho 42017 : Seg45.F)⟩
      ⟨(seg45AccX64 rho : Seg45.F), (seg45AccY64 rho : Seg45.F)⟩
      ⟨(rho 42023 : Seg45.F), (rho 42024 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung63

theorem seg45_hstep_c1 (rho : Nat -> Seg45.F) (h : Seg45.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (40948 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 32 ≤ i → i < 64 →
      EdwardsBridge.onCurve (seg45LadderAccState rho i) →
      EdwardsBridge.onCurve (seg45LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg45LadderAccState rho i) (seg45LadderCurState rho i)
        (seg45LadderAccState rho (i + 1)) (seg45LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg45_rung32 rho h bits[32]! (hbitAt 32 (by omega)) hacc hcur
  · exact seg45_rung33 rho h bits[33]! (hbitAt 33 (by omega)) hacc hcur
  · exact seg45_rung34 rho h bits[34]! (hbitAt 34 (by omega)) hacc hcur
  · exact seg45_rung35 rho h bits[35]! (hbitAt 35 (by omega)) hacc hcur
  · exact seg45_rung36 rho h bits[36]! (hbitAt 36 (by omega)) hacc hcur
  · exact seg45_rung37 rho h bits[37]! (hbitAt 37 (by omega)) hacc hcur
  · exact seg45_rung38 rho h bits[38]! (hbitAt 38 (by omega)) hacc hcur
  · exact seg45_rung39 rho h bits[39]! (hbitAt 39 (by omega)) hacc hcur
  · exact seg45_rung40 rho h bits[40]! (hbitAt 40 (by omega)) hacc hcur
  · exact seg45_rung41 rho h bits[41]! (hbitAt 41 (by omega)) hacc hcur
  · exact seg45_rung42 rho h bits[42]! (hbitAt 42 (by omega)) hacc hcur
  · exact seg45_rung43 rho h bits[43]! (hbitAt 43 (by omega)) hacc hcur
  · exact seg45_rung44 rho h bits[44]! (hbitAt 44 (by omega)) hacc hcur
  · exact seg45_rung45 rho h bits[45]! (hbitAt 45 (by omega)) hacc hcur
  · exact seg45_rung46 rho h bits[46]! (hbitAt 46 (by omega)) hacc hcur
  · exact seg45_rung47 rho h bits[47]! (hbitAt 47 (by omega)) hacc hcur
  · exact seg45_rung48 rho h bits[48]! (hbitAt 48 (by omega)) hacc hcur
  · exact seg45_rung49 rho h bits[49]! (hbitAt 49 (by omega)) hacc hcur
  · exact seg45_rung50 rho h bits[50]! (hbitAt 50 (by omega)) hacc hcur
  · exact seg45_rung51 rho h bits[51]! (hbitAt 51 (by omega)) hacc hcur
  · exact seg45_rung52 rho h bits[52]! (hbitAt 52 (by omega)) hacc hcur
  · exact seg45_rung53 rho h bits[53]! (hbitAt 53 (by omega)) hacc hcur
  · exact seg45_rung54 rho h bits[54]! (hbitAt 54 (by omega)) hacc hcur
  · exact seg45_rung55 rho h bits[55]! (hbitAt 55 (by omega)) hacc hcur
  · exact seg45_rung56 rho h bits[56]! (hbitAt 56 (by omega)) hacc hcur
  · exact seg45_rung57 rho h bits[57]! (hbitAt 57 (by omega)) hacc hcur
  · exact seg45_rung58 rho h bits[58]! (hbitAt 58 (by omega)) hacc hcur
  · exact seg45_rung59 rho h bits[59]! (hbitAt 59 (by omega)) hacc hcur
  · exact seg45_rung60 rho h bits[60]! (hbitAt 60 (by omega)) hacc hcur
  · exact seg45_rung61 rho h bits[61]! (hbitAt 61 (by omega)) hacc hcur
  · exact seg45_rung62 rho h bits[62]! (hbitAt 62 (by omega)) hacc hcur
  · exact seg45_rung63 rho h bits[63]! (hbitAt 63 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
