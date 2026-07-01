import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg16_rung32 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15324 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX32 rho : Seg16.F), (seg16AccY32 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15951 : Seg16.F), (rho 15952 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX32 rho : Seg16.F), (seg16AccY32 rho : Seg16.F)⟩
        ⟨(rho 15951 : Seg16.F), (rho 15952 : Seg16.F)⟩
        ⟨(seg16AccX33 rho : Seg16.F), (seg16AccY33 rho : Seg16.F)⟩
        ⟨(rho 15964 : Seg16.F), (rho 15965 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3381, r3382, r3383, r3384, r3385, r3386, r3387, r3388, r3389, r3390, r3391, r3392, r3393, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3381 Seg16.relationLc196 Seg16.relationLc196Part0 Seg16.relationLc196Part1 Seg16.relationLc196Part2 at r3381
  unfold Seg16.relationRow3382 at r3382
  unfold Seg16.relationRow3383 Seg16.relationLc197 Seg16.relationLc197Part0 Seg16.relationLc197Part1 at r3383
  unfold Seg16.relationRow3384 at r3384
  unfold Seg16.relationRow3385 at r3385
  unfold Seg16.relationRow3386 at r3386
  unfold Seg16.relationRow3387 Seg16.relationLc198 Seg16.relationLc198Part0 Seg16.relationLc198Part1 at r3387
  unfold Seg16.relationRow3388 Seg16.relationLc199 Seg16.relationLc199Part0 Seg16.relationLc199Part1 at r3388
  unfold Seg16.relationRow3389 at r3389
  unfold Seg16.relationRow3390 at r3390
  unfold Seg16.relationRow3391 at r3391
  unfold Seg16.relationRow3392 at r3392
  unfold Seg16.relationRow3393 at r3393
  have hrung32 (bit : Bool) (hbit : rho 15324 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX32 rho : Seg16.F), (seg16AccY32 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15951 : Seg16.F), (rho 15952 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX32 rho : Seg16.F), (seg16AccY32 rho : Seg16.F)⟩
        ⟨(rho 15951 : Seg16.F), (rho 15952 : Seg16.F)⟩
        ⟨(seg16AccX33 rho : Seg16.F), (seg16AccY33 rho : Seg16.F)⟩
        ⟨(rho 15964 : Seg16.F), (rho 15965 : Seg16.F)⟩ := by
    have ha0 : (rho 15951 + rho 15952) * (seg16AccX32 rho + seg16AccY32 rho) = rho 15953 := by
      rw [seg16LadderFlatX32_eq, seg16LadderFlatY32_eq]
      unfold seg16LadderFlatX32 seg16LadderFlatY32
      linear_combination r3381
    have ha1 : rho 15952 * seg16AccX32 rho = rho 15954 := by
      rw [seg16LadderFlatX32_eq]
      unfold seg16LadderFlatX32
      linear_combination r3382
    have ha2 : rho 15951 * seg16AccY32 rho = rho 15955 := by
      rw [seg16LadderFlatY32_eq]
      unfold seg16LadderFlatY32
      linear_combination r3383
    have ha3 : 3021 * rho 15954 * rho 15955 = rho 15956 := by
      linear_combination r3384
    have ha4 : rho 15957 * (1 + rho 15956) = rho 15954 + rho 15955 := by
      linear_combination r3385
    have ha5 : rho 15958 * (1 - rho 15956) = rho 15953 - rho 15954 - rho 15955 := by
      linear_combination r3386
    have haddx :
        rho 15957 * (1 + 3021 * (rho 15952 * seg16AccX32 rho) * (rho 15951 * seg16AccY32 rho)) =
          rho 15952 * seg16AccX32 rho + rho 15951 * seg16AccY32 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15958 * (1 - 3021 * (rho 15952 * seg16AccX32 rho) * (rho 15951 * seg16AccY32 rho)) =
          (-1) * (rho 15952 * seg16AccX32 rho) - rho 15951 * seg16AccY32 rho +
            (seg16AccY32 rho - seg16AccX32 rho * (-1)) * (rho 15951 + rho 15952) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15958 * (1 - rho 15956) = rho 15953 - rho 15954 - rho 15955 := ha5
        _ = (-1) * rho 15954 - rho 15955 + (seg16AccY32 rho - seg16AccX32 rho * (-1)) * (rho 15951 + rho 15952) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX33 rho = seg16AccX32 rho - Bool.toZMod bit * (seg16AccX32 rho - rho 15957) := by
      have hd : rho 15959 = Bool.toZMod bit * (rho 15957 - seg16AccX32 rho) := by
        rw [← hbit, seg16LadderFlatX32_eq]
        unfold seg16LadderFlatX32
        linear_combination -r3387
      unfold seg16AccX33
      linear_combination hd
    have hsely : seg16AccY33 rho = seg16AccY32 rho - Bool.toZMod bit * (seg16AccY32 rho - rho 15958) := by
      have hd : rho 15960 = Bool.toZMod bit * (rho 15958 - seg16AccY32 rho) := by
        rw [← hbit, seg16LadderFlatY32_eq]
        unfold seg16LadderFlatY32
        linear_combination -r3388
      unfold seg16AccY33
      linear_combination hd
    have hd0 : rho 15951 * rho 15952 = rho 15961 := by linear_combination r3389
    have hd1 : rho 15951 * rho 15951 = rho 15962 := by linear_combination r3390
    have hd2 : rho 15952 * rho 15952 = rho 15963 := by linear_combination r3391
    have hd3 : rho 15964 * (rho 15952 * rho 15952 + rho 15951 * rho 15951 * (-1)) = 2 * (rho 15951 * rho 15952) := by
      rw [hd0, hd1, hd2]
      linear_combination r3392
    have hd4 : rho 15965 * (2 - (rho 15952 * rho 15952 + rho 15951 * rho 15951 * (-1))) = rho 15952 * rho 15952 - rho 15951 * rho 15951 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3393
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX32 rho : Seg16.F), (seg16AccY32 rho : Seg16.F)⟩
      ⟨(rho 15951 : Seg16.F), (rho 15952 : Seg16.F)⟩
      ⟨(rho 15957 : Seg16.F), (rho 15958 : Seg16.F)⟩
      ⟨(seg16AccX33 rho : Seg16.F), (seg16AccY33 rho : Seg16.F)⟩
      ⟨(rho 15964 : Seg16.F), (rho 15965 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung32

theorem seg16_rung33 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15325 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX33 rho : Seg16.F), (seg16AccY33 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15964 : Seg16.F), (rho 15965 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX33 rho : Seg16.F), (seg16AccY33 rho : Seg16.F)⟩
        ⟨(rho 15964 : Seg16.F), (rho 15965 : Seg16.F)⟩
        ⟨(seg16AccX34 rho : Seg16.F), (seg16AccY34 rho : Seg16.F)⟩
        ⟨(rho 15977 : Seg16.F), (rho 15978 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3394, r3395, r3396, r3397, r3398, r3399, r3400, r3401, r3402, r3403, r3404, r3405, r3406, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3394 Seg16.relationLc200 Seg16.relationLc200Part0 Seg16.relationLc200Part1 Seg16.relationLc200Part2 at r3394
  unfold Seg16.relationRow3395 Seg16.relationLc201 Seg16.relationLc201Part0 Seg16.relationLc201Part1 at r3395
  unfold Seg16.relationRow3396 Seg16.relationLc202 Seg16.relationLc202Part0 Seg16.relationLc202Part1 at r3396
  unfold Seg16.relationRow3397 at r3397
  unfold Seg16.relationRow3398 at r3398
  unfold Seg16.relationRow3399 at r3399
  unfold Seg16.relationRow3400 Seg16.relationLc203 Seg16.relationLc203Part0 Seg16.relationLc203Part1 at r3400
  unfold Seg16.relationRow3401 Seg16.relationLc204 Seg16.relationLc204Part0 Seg16.relationLc204Part1 at r3401
  unfold Seg16.relationRow3402 at r3402
  unfold Seg16.relationRow3403 at r3403
  unfold Seg16.relationRow3404 at r3404
  unfold Seg16.relationRow3405 at r3405
  unfold Seg16.relationRow3406 at r3406
  have hrung33 (bit : Bool) (hbit : rho 15325 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX33 rho : Seg16.F), (seg16AccY33 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15964 : Seg16.F), (rho 15965 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX33 rho : Seg16.F), (seg16AccY33 rho : Seg16.F)⟩
        ⟨(rho 15964 : Seg16.F), (rho 15965 : Seg16.F)⟩
        ⟨(seg16AccX34 rho : Seg16.F), (seg16AccY34 rho : Seg16.F)⟩
        ⟨(rho 15977 : Seg16.F), (rho 15978 : Seg16.F)⟩ := by
    have ha0 : (rho 15964 + rho 15965) * (seg16AccX33 rho + seg16AccY33 rho) = rho 15966 := by
      rw [seg16LadderFlatX33_eq, seg16LadderFlatY33_eq]
      unfold seg16LadderFlatX33 seg16LadderFlatY33
      linear_combination r3394
    have ha1 : rho 15965 * seg16AccX33 rho = rho 15967 := by
      rw [seg16LadderFlatX33_eq]
      unfold seg16LadderFlatX33
      linear_combination r3395
    have ha2 : rho 15964 * seg16AccY33 rho = rho 15968 := by
      rw [seg16LadderFlatY33_eq]
      unfold seg16LadderFlatY33
      linear_combination r3396
    have ha3 : 3021 * rho 15967 * rho 15968 = rho 15969 := by
      linear_combination r3397
    have ha4 : rho 15970 * (1 + rho 15969) = rho 15967 + rho 15968 := by
      linear_combination r3398
    have ha5 : rho 15971 * (1 - rho 15969) = rho 15966 - rho 15967 - rho 15968 := by
      linear_combination r3399
    have haddx :
        rho 15970 * (1 + 3021 * (rho 15965 * seg16AccX33 rho) * (rho 15964 * seg16AccY33 rho)) =
          rho 15965 * seg16AccX33 rho + rho 15964 * seg16AccY33 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15971 * (1 - 3021 * (rho 15965 * seg16AccX33 rho) * (rho 15964 * seg16AccY33 rho)) =
          (-1) * (rho 15965 * seg16AccX33 rho) - rho 15964 * seg16AccY33 rho +
            (seg16AccY33 rho - seg16AccX33 rho * (-1)) * (rho 15964 + rho 15965) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15971 * (1 - rho 15969) = rho 15966 - rho 15967 - rho 15968 := ha5
        _ = (-1) * rho 15967 - rho 15968 + (seg16AccY33 rho - seg16AccX33 rho * (-1)) * (rho 15964 + rho 15965) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX34 rho = seg16AccX33 rho - Bool.toZMod bit * (seg16AccX33 rho - rho 15970) := by
      have hd : rho 15972 = Bool.toZMod bit * (rho 15970 - seg16AccX33 rho) := by
        rw [← hbit, seg16LadderFlatX33_eq]
        unfold seg16LadderFlatX33
        linear_combination -r3400
      unfold seg16AccX34
      linear_combination hd
    have hsely : seg16AccY34 rho = seg16AccY33 rho - Bool.toZMod bit * (seg16AccY33 rho - rho 15971) := by
      have hd : rho 15973 = Bool.toZMod bit * (rho 15971 - seg16AccY33 rho) := by
        rw [← hbit, seg16LadderFlatY33_eq]
        unfold seg16LadderFlatY33
        linear_combination -r3401
      unfold seg16AccY34
      linear_combination hd
    have hd0 : rho 15964 * rho 15965 = rho 15974 := by linear_combination r3402
    have hd1 : rho 15964 * rho 15964 = rho 15975 := by linear_combination r3403
    have hd2 : rho 15965 * rho 15965 = rho 15976 := by linear_combination r3404
    have hd3 : rho 15977 * (rho 15965 * rho 15965 + rho 15964 * rho 15964 * (-1)) = 2 * (rho 15964 * rho 15965) := by
      rw [hd0, hd1, hd2]
      linear_combination r3405
    have hd4 : rho 15978 * (2 - (rho 15965 * rho 15965 + rho 15964 * rho 15964 * (-1))) = rho 15965 * rho 15965 - rho 15964 * rho 15964 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3406
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX33 rho : Seg16.F), (seg16AccY33 rho : Seg16.F)⟩
      ⟨(rho 15964 : Seg16.F), (rho 15965 : Seg16.F)⟩
      ⟨(rho 15970 : Seg16.F), (rho 15971 : Seg16.F)⟩
      ⟨(seg16AccX34 rho : Seg16.F), (seg16AccY34 rho : Seg16.F)⟩
      ⟨(rho 15977 : Seg16.F), (rho 15978 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung33

theorem seg16_rung34 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15326 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX34 rho : Seg16.F), (seg16AccY34 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15977 : Seg16.F), (rho 15978 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX34 rho : Seg16.F), (seg16AccY34 rho : Seg16.F)⟩
        ⟨(rho 15977 : Seg16.F), (rho 15978 : Seg16.F)⟩
        ⟨(seg16AccX35 rho : Seg16.F), (seg16AccY35 rho : Seg16.F)⟩
        ⟨(rho 15990 : Seg16.F), (rho 15991 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3407, r3408, r3409, r3410, r3411, r3412, r3413, r3414, r3415, r3416, r3417, r3418, r3419, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3407 Seg16.relationLc205 Seg16.relationLc205Part0 Seg16.relationLc205Part1 Seg16.relationLc205Part2 at r3407
  unfold Seg16.relationRow3408 Seg16.relationLc206 Seg16.relationLc206Part0 Seg16.relationLc206Part1 at r3408
  unfold Seg16.relationRow3409 Seg16.relationLc207 Seg16.relationLc207Part0 Seg16.relationLc207Part1 at r3409
  unfold Seg16.relationRow3410 at r3410
  unfold Seg16.relationRow3411 at r3411
  unfold Seg16.relationRow3412 at r3412
  unfold Seg16.relationRow3413 Seg16.relationLc208 Seg16.relationLc208Part0 Seg16.relationLc208Part1 at r3413
  unfold Seg16.relationRow3414 Seg16.relationLc209 Seg16.relationLc209Part0 Seg16.relationLc209Part1 at r3414
  unfold Seg16.relationRow3415 at r3415
  unfold Seg16.relationRow3416 at r3416
  unfold Seg16.relationRow3417 at r3417
  unfold Seg16.relationRow3418 at r3418
  unfold Seg16.relationRow3419 at r3419
  have hrung34 (bit : Bool) (hbit : rho 15326 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX34 rho : Seg16.F), (seg16AccY34 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15977 : Seg16.F), (rho 15978 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX34 rho : Seg16.F), (seg16AccY34 rho : Seg16.F)⟩
        ⟨(rho 15977 : Seg16.F), (rho 15978 : Seg16.F)⟩
        ⟨(seg16AccX35 rho : Seg16.F), (seg16AccY35 rho : Seg16.F)⟩
        ⟨(rho 15990 : Seg16.F), (rho 15991 : Seg16.F)⟩ := by
    have ha0 : (rho 15977 + rho 15978) * (seg16AccX34 rho + seg16AccY34 rho) = rho 15979 := by
      rw [seg16LadderFlatX34_eq, seg16LadderFlatY34_eq]
      unfold seg16LadderFlatX34 seg16LadderFlatY34
      linear_combination r3407
    have ha1 : rho 15978 * seg16AccX34 rho = rho 15980 := by
      rw [seg16LadderFlatX34_eq]
      unfold seg16LadderFlatX34
      linear_combination r3408
    have ha2 : rho 15977 * seg16AccY34 rho = rho 15981 := by
      rw [seg16LadderFlatY34_eq]
      unfold seg16LadderFlatY34
      linear_combination r3409
    have ha3 : 3021 * rho 15980 * rho 15981 = rho 15982 := by
      linear_combination r3410
    have ha4 : rho 15983 * (1 + rho 15982) = rho 15980 + rho 15981 := by
      linear_combination r3411
    have ha5 : rho 15984 * (1 - rho 15982) = rho 15979 - rho 15980 - rho 15981 := by
      linear_combination r3412
    have haddx :
        rho 15983 * (1 + 3021 * (rho 15978 * seg16AccX34 rho) * (rho 15977 * seg16AccY34 rho)) =
          rho 15978 * seg16AccX34 rho + rho 15977 * seg16AccY34 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15984 * (1 - 3021 * (rho 15978 * seg16AccX34 rho) * (rho 15977 * seg16AccY34 rho)) =
          (-1) * (rho 15978 * seg16AccX34 rho) - rho 15977 * seg16AccY34 rho +
            (seg16AccY34 rho - seg16AccX34 rho * (-1)) * (rho 15977 + rho 15978) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15984 * (1 - rho 15982) = rho 15979 - rho 15980 - rho 15981 := ha5
        _ = (-1) * rho 15980 - rho 15981 + (seg16AccY34 rho - seg16AccX34 rho * (-1)) * (rho 15977 + rho 15978) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX35 rho = seg16AccX34 rho - Bool.toZMod bit * (seg16AccX34 rho - rho 15983) := by
      have hd : rho 15985 = Bool.toZMod bit * (rho 15983 - seg16AccX34 rho) := by
        rw [← hbit, seg16LadderFlatX34_eq]
        unfold seg16LadderFlatX34
        linear_combination -r3413
      unfold seg16AccX35
      linear_combination hd
    have hsely : seg16AccY35 rho = seg16AccY34 rho - Bool.toZMod bit * (seg16AccY34 rho - rho 15984) := by
      have hd : rho 15986 = Bool.toZMod bit * (rho 15984 - seg16AccY34 rho) := by
        rw [← hbit, seg16LadderFlatY34_eq]
        unfold seg16LadderFlatY34
        linear_combination -r3414
      unfold seg16AccY35
      linear_combination hd
    have hd0 : rho 15977 * rho 15978 = rho 15987 := by linear_combination r3415
    have hd1 : rho 15977 * rho 15977 = rho 15988 := by linear_combination r3416
    have hd2 : rho 15978 * rho 15978 = rho 15989 := by linear_combination r3417
    have hd3 : rho 15990 * (rho 15978 * rho 15978 + rho 15977 * rho 15977 * (-1)) = 2 * (rho 15977 * rho 15978) := by
      rw [hd0, hd1, hd2]
      linear_combination r3418
    have hd4 : rho 15991 * (2 - (rho 15978 * rho 15978 + rho 15977 * rho 15977 * (-1))) = rho 15978 * rho 15978 - rho 15977 * rho 15977 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3419
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX34 rho : Seg16.F), (seg16AccY34 rho : Seg16.F)⟩
      ⟨(rho 15977 : Seg16.F), (rho 15978 : Seg16.F)⟩
      ⟨(rho 15983 : Seg16.F), (rho 15984 : Seg16.F)⟩
      ⟨(seg16AccX35 rho : Seg16.F), (seg16AccY35 rho : Seg16.F)⟩
      ⟨(rho 15990 : Seg16.F), (rho 15991 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung34

theorem seg16_rung35 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15327 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX35 rho : Seg16.F), (seg16AccY35 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15990 : Seg16.F), (rho 15991 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX35 rho : Seg16.F), (seg16AccY35 rho : Seg16.F)⟩
        ⟨(rho 15990 : Seg16.F), (rho 15991 : Seg16.F)⟩
        ⟨(seg16AccX36 rho : Seg16.F), (seg16AccY36 rho : Seg16.F)⟩
        ⟨(rho 16003 : Seg16.F), (rho 16004 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3420, r3421, r3422, r3423, r3424, r3425, r3426, r3427, r3428, r3429, r3430, r3431, r3432, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3420 Seg16.relationLc210 Seg16.relationLc210Part0 Seg16.relationLc210Part1 Seg16.relationLc210Part2 at r3420
  unfold Seg16.relationRow3421 Seg16.relationLc211 Seg16.relationLc211Part0 Seg16.relationLc211Part1 at r3421
  unfold Seg16.relationRow3422 Seg16.relationLc212 Seg16.relationLc212Part0 Seg16.relationLc212Part1 at r3422
  unfold Seg16.relationRow3423 at r3423
  unfold Seg16.relationRow3424 at r3424
  unfold Seg16.relationRow3425 at r3425
  unfold Seg16.relationRow3426 Seg16.relationLc213 Seg16.relationLc213Part0 Seg16.relationLc213Part1 at r3426
  unfold Seg16.relationRow3427 Seg16.relationLc214 Seg16.relationLc214Part0 Seg16.relationLc214Part1 at r3427
  unfold Seg16.relationRow3428 at r3428
  unfold Seg16.relationRow3429 at r3429
  unfold Seg16.relationRow3430 at r3430
  unfold Seg16.relationRow3431 at r3431
  unfold Seg16.relationRow3432 at r3432
  have hrung35 (bit : Bool) (hbit : rho 15327 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX35 rho : Seg16.F), (seg16AccY35 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15990 : Seg16.F), (rho 15991 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX35 rho : Seg16.F), (seg16AccY35 rho : Seg16.F)⟩
        ⟨(rho 15990 : Seg16.F), (rho 15991 : Seg16.F)⟩
        ⟨(seg16AccX36 rho : Seg16.F), (seg16AccY36 rho : Seg16.F)⟩
        ⟨(rho 16003 : Seg16.F), (rho 16004 : Seg16.F)⟩ := by
    have ha0 : (rho 15990 + rho 15991) * (seg16AccX35 rho + seg16AccY35 rho) = rho 15992 := by
      rw [seg16LadderFlatX35_eq, seg16LadderFlatY35_eq]
      unfold seg16LadderFlatX35 seg16LadderFlatY35
      linear_combination r3420
    have ha1 : rho 15991 * seg16AccX35 rho = rho 15993 := by
      rw [seg16LadderFlatX35_eq]
      unfold seg16LadderFlatX35
      linear_combination r3421
    have ha2 : rho 15990 * seg16AccY35 rho = rho 15994 := by
      rw [seg16LadderFlatY35_eq]
      unfold seg16LadderFlatY35
      linear_combination r3422
    have ha3 : 3021 * rho 15993 * rho 15994 = rho 15995 := by
      linear_combination r3423
    have ha4 : rho 15996 * (1 + rho 15995) = rho 15993 + rho 15994 := by
      linear_combination r3424
    have ha5 : rho 15997 * (1 - rho 15995) = rho 15992 - rho 15993 - rho 15994 := by
      linear_combination r3425
    have haddx :
        rho 15996 * (1 + 3021 * (rho 15991 * seg16AccX35 rho) * (rho 15990 * seg16AccY35 rho)) =
          rho 15991 * seg16AccX35 rho + rho 15990 * seg16AccY35 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15997 * (1 - 3021 * (rho 15991 * seg16AccX35 rho) * (rho 15990 * seg16AccY35 rho)) =
          (-1) * (rho 15991 * seg16AccX35 rho) - rho 15990 * seg16AccY35 rho +
            (seg16AccY35 rho - seg16AccX35 rho * (-1)) * (rho 15990 + rho 15991) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15997 * (1 - rho 15995) = rho 15992 - rho 15993 - rho 15994 := ha5
        _ = (-1) * rho 15993 - rho 15994 + (seg16AccY35 rho - seg16AccX35 rho * (-1)) * (rho 15990 + rho 15991) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX36 rho = seg16AccX35 rho - Bool.toZMod bit * (seg16AccX35 rho - rho 15996) := by
      have hd : rho 15998 = Bool.toZMod bit * (rho 15996 - seg16AccX35 rho) := by
        rw [← hbit, seg16LadderFlatX35_eq]
        unfold seg16LadderFlatX35
        linear_combination -r3426
      unfold seg16AccX36
      linear_combination hd
    have hsely : seg16AccY36 rho = seg16AccY35 rho - Bool.toZMod bit * (seg16AccY35 rho - rho 15997) := by
      have hd : rho 15999 = Bool.toZMod bit * (rho 15997 - seg16AccY35 rho) := by
        rw [← hbit, seg16LadderFlatY35_eq]
        unfold seg16LadderFlatY35
        linear_combination -r3427
      unfold seg16AccY36
      linear_combination hd
    have hd0 : rho 15990 * rho 15991 = rho 16000 := by linear_combination r3428
    have hd1 : rho 15990 * rho 15990 = rho 16001 := by linear_combination r3429
    have hd2 : rho 15991 * rho 15991 = rho 16002 := by linear_combination r3430
    have hd3 : rho 16003 * (rho 15991 * rho 15991 + rho 15990 * rho 15990 * (-1)) = 2 * (rho 15990 * rho 15991) := by
      rw [hd0, hd1, hd2]
      linear_combination r3431
    have hd4 : rho 16004 * (2 - (rho 15991 * rho 15991 + rho 15990 * rho 15990 * (-1))) = rho 15991 * rho 15991 - rho 15990 * rho 15990 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3432
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX35 rho : Seg16.F), (seg16AccY35 rho : Seg16.F)⟩
      ⟨(rho 15990 : Seg16.F), (rho 15991 : Seg16.F)⟩
      ⟨(rho 15996 : Seg16.F), (rho 15997 : Seg16.F)⟩
      ⟨(seg16AccX36 rho : Seg16.F), (seg16AccY36 rho : Seg16.F)⟩
      ⟨(rho 16003 : Seg16.F), (rho 16004 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung35

theorem seg16_rung36 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15328 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX36 rho : Seg16.F), (seg16AccY36 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16003 : Seg16.F), (rho 16004 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX36 rho : Seg16.F), (seg16AccY36 rho : Seg16.F)⟩
        ⟨(rho 16003 : Seg16.F), (rho 16004 : Seg16.F)⟩
        ⟨(seg16AccX37 rho : Seg16.F), (seg16AccY37 rho : Seg16.F)⟩
        ⟨(rho 16016 : Seg16.F), (rho 16017 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3433, r3434, r3435, r3436, r3437, r3438, r3439⟩
  unfold Seg16.relationPart43 at p43
  rcases p43 with ⟨r3440, r3441, r3442, r3443, r3444, r3445, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3433 Seg16.relationLc215 Seg16.relationLc215Part0 Seg16.relationLc215Part1 Seg16.relationLc215Part2 at r3433
  unfold Seg16.relationRow3434 Seg16.relationLc216 Seg16.relationLc216Part0 Seg16.relationLc216Part1 at r3434
  unfold Seg16.relationRow3435 Seg16.relationLc217 Seg16.relationLc217Part0 Seg16.relationLc217Part1 at r3435
  unfold Seg16.relationRow3436 at r3436
  unfold Seg16.relationRow3437 at r3437
  unfold Seg16.relationRow3438 at r3438
  unfold Seg16.relationRow3439 Seg16.relationLc218 Seg16.relationLc218Part0 Seg16.relationLc218Part1 at r3439
  unfold Seg16.relationRow3440 Seg16.relationLc219 Seg16.relationLc219Part0 Seg16.relationLc219Part1 at r3440
  unfold Seg16.relationRow3441 at r3441
  unfold Seg16.relationRow3442 at r3442
  unfold Seg16.relationRow3443 at r3443
  unfold Seg16.relationRow3444 at r3444
  unfold Seg16.relationRow3445 at r3445
  have hrung36 (bit : Bool) (hbit : rho 15328 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX36 rho : Seg16.F), (seg16AccY36 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16003 : Seg16.F), (rho 16004 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX36 rho : Seg16.F), (seg16AccY36 rho : Seg16.F)⟩
        ⟨(rho 16003 : Seg16.F), (rho 16004 : Seg16.F)⟩
        ⟨(seg16AccX37 rho : Seg16.F), (seg16AccY37 rho : Seg16.F)⟩
        ⟨(rho 16016 : Seg16.F), (rho 16017 : Seg16.F)⟩ := by
    have ha0 : (rho 16003 + rho 16004) * (seg16AccX36 rho + seg16AccY36 rho) = rho 16005 := by
      rw [seg16LadderFlatX36_eq, seg16LadderFlatY36_eq]
      unfold seg16LadderFlatX36 seg16LadderFlatY36
      linear_combination r3433
    have ha1 : rho 16004 * seg16AccX36 rho = rho 16006 := by
      rw [seg16LadderFlatX36_eq]
      unfold seg16LadderFlatX36
      linear_combination r3434
    have ha2 : rho 16003 * seg16AccY36 rho = rho 16007 := by
      rw [seg16LadderFlatY36_eq]
      unfold seg16LadderFlatY36
      linear_combination r3435
    have ha3 : 3021 * rho 16006 * rho 16007 = rho 16008 := by
      linear_combination r3436
    have ha4 : rho 16009 * (1 + rho 16008) = rho 16006 + rho 16007 := by
      linear_combination r3437
    have ha5 : rho 16010 * (1 - rho 16008) = rho 16005 - rho 16006 - rho 16007 := by
      linear_combination r3438
    have haddx :
        rho 16009 * (1 + 3021 * (rho 16004 * seg16AccX36 rho) * (rho 16003 * seg16AccY36 rho)) =
          rho 16004 * seg16AccX36 rho + rho 16003 * seg16AccY36 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16010 * (1 - 3021 * (rho 16004 * seg16AccX36 rho) * (rho 16003 * seg16AccY36 rho)) =
          (-1) * (rho 16004 * seg16AccX36 rho) - rho 16003 * seg16AccY36 rho +
            (seg16AccY36 rho - seg16AccX36 rho * (-1)) * (rho 16003 + rho 16004) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16010 * (1 - rho 16008) = rho 16005 - rho 16006 - rho 16007 := ha5
        _ = (-1) * rho 16006 - rho 16007 + (seg16AccY36 rho - seg16AccX36 rho * (-1)) * (rho 16003 + rho 16004) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX37 rho = seg16AccX36 rho - Bool.toZMod bit * (seg16AccX36 rho - rho 16009) := by
      have hd : rho 16011 = Bool.toZMod bit * (rho 16009 - seg16AccX36 rho) := by
        rw [← hbit, seg16LadderFlatX36_eq]
        unfold seg16LadderFlatX36
        linear_combination -r3439
      unfold seg16AccX37
      linear_combination hd
    have hsely : seg16AccY37 rho = seg16AccY36 rho - Bool.toZMod bit * (seg16AccY36 rho - rho 16010) := by
      have hd : rho 16012 = Bool.toZMod bit * (rho 16010 - seg16AccY36 rho) := by
        rw [← hbit, seg16LadderFlatY36_eq]
        unfold seg16LadderFlatY36
        linear_combination -r3440
      unfold seg16AccY37
      linear_combination hd
    have hd0 : rho 16003 * rho 16004 = rho 16013 := by linear_combination r3441
    have hd1 : rho 16003 * rho 16003 = rho 16014 := by linear_combination r3442
    have hd2 : rho 16004 * rho 16004 = rho 16015 := by linear_combination r3443
    have hd3 : rho 16016 * (rho 16004 * rho 16004 + rho 16003 * rho 16003 * (-1)) = 2 * (rho 16003 * rho 16004) := by
      rw [hd0, hd1, hd2]
      linear_combination r3444
    have hd4 : rho 16017 * (2 - (rho 16004 * rho 16004 + rho 16003 * rho 16003 * (-1))) = rho 16004 * rho 16004 - rho 16003 * rho 16003 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3445
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX36 rho : Seg16.F), (seg16AccY36 rho : Seg16.F)⟩
      ⟨(rho 16003 : Seg16.F), (rho 16004 : Seg16.F)⟩
      ⟨(rho 16009 : Seg16.F), (rho 16010 : Seg16.F)⟩
      ⟨(seg16AccX37 rho : Seg16.F), (seg16AccY37 rho : Seg16.F)⟩
      ⟨(rho 16016 : Seg16.F), (rho 16017 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung36

theorem seg16_rung37 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15329 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX37 rho : Seg16.F), (seg16AccY37 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16016 : Seg16.F), (rho 16017 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX37 rho : Seg16.F), (seg16AccY37 rho : Seg16.F)⟩
        ⟨(rho 16016 : Seg16.F), (rho 16017 : Seg16.F)⟩
        ⟨(seg16AccX38 rho : Seg16.F), (seg16AccY38 rho : Seg16.F)⟩
        ⟨(rho 16029 : Seg16.F), (rho 16030 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, r3446, r3447, r3448, r3449, r3450, r3451, r3452, r3453, r3454, r3455, r3456, r3457, r3458, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3446 Seg16.relationLc220 Seg16.relationLc220Part0 Seg16.relationLc220Part1 Seg16.relationLc220Part2 at r3446
  unfold Seg16.relationRow3447 Seg16.relationLc221 Seg16.relationLc221Part0 Seg16.relationLc221Part1 at r3447
  unfold Seg16.relationRow3448 Seg16.relationLc222 Seg16.relationLc222Part0 Seg16.relationLc222Part1 at r3448
  unfold Seg16.relationRow3449 at r3449
  unfold Seg16.relationRow3450 at r3450
  unfold Seg16.relationRow3451 at r3451
  unfold Seg16.relationRow3452 Seg16.relationLc223 Seg16.relationLc223Part0 Seg16.relationLc223Part1 at r3452
  unfold Seg16.relationRow3453 Seg16.relationLc224 Seg16.relationLc224Part0 Seg16.relationLc224Part1 at r3453
  unfold Seg16.relationRow3454 at r3454
  unfold Seg16.relationRow3455 at r3455
  unfold Seg16.relationRow3456 at r3456
  unfold Seg16.relationRow3457 at r3457
  unfold Seg16.relationRow3458 at r3458
  have hrung37 (bit : Bool) (hbit : rho 15329 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX37 rho : Seg16.F), (seg16AccY37 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16016 : Seg16.F), (rho 16017 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX37 rho : Seg16.F), (seg16AccY37 rho : Seg16.F)⟩
        ⟨(rho 16016 : Seg16.F), (rho 16017 : Seg16.F)⟩
        ⟨(seg16AccX38 rho : Seg16.F), (seg16AccY38 rho : Seg16.F)⟩
        ⟨(rho 16029 : Seg16.F), (rho 16030 : Seg16.F)⟩ := by
    have ha0 : (rho 16016 + rho 16017) * (seg16AccX37 rho + seg16AccY37 rho) = rho 16018 := by
      rw [seg16LadderFlatX37_eq, seg16LadderFlatY37_eq]
      unfold seg16LadderFlatX37 seg16LadderFlatY37
      linear_combination r3446
    have ha1 : rho 16017 * seg16AccX37 rho = rho 16019 := by
      rw [seg16LadderFlatX37_eq]
      unfold seg16LadderFlatX37
      linear_combination r3447
    have ha2 : rho 16016 * seg16AccY37 rho = rho 16020 := by
      rw [seg16LadderFlatY37_eq]
      unfold seg16LadderFlatY37
      linear_combination r3448
    have ha3 : 3021 * rho 16019 * rho 16020 = rho 16021 := by
      linear_combination r3449
    have ha4 : rho 16022 * (1 + rho 16021) = rho 16019 + rho 16020 := by
      linear_combination r3450
    have ha5 : rho 16023 * (1 - rho 16021) = rho 16018 - rho 16019 - rho 16020 := by
      linear_combination r3451
    have haddx :
        rho 16022 * (1 + 3021 * (rho 16017 * seg16AccX37 rho) * (rho 16016 * seg16AccY37 rho)) =
          rho 16017 * seg16AccX37 rho + rho 16016 * seg16AccY37 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16023 * (1 - 3021 * (rho 16017 * seg16AccX37 rho) * (rho 16016 * seg16AccY37 rho)) =
          (-1) * (rho 16017 * seg16AccX37 rho) - rho 16016 * seg16AccY37 rho +
            (seg16AccY37 rho - seg16AccX37 rho * (-1)) * (rho 16016 + rho 16017) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16023 * (1 - rho 16021) = rho 16018 - rho 16019 - rho 16020 := ha5
        _ = (-1) * rho 16019 - rho 16020 + (seg16AccY37 rho - seg16AccX37 rho * (-1)) * (rho 16016 + rho 16017) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX38 rho = seg16AccX37 rho - Bool.toZMod bit * (seg16AccX37 rho - rho 16022) := by
      have hd : rho 16024 = Bool.toZMod bit * (rho 16022 - seg16AccX37 rho) := by
        rw [← hbit, seg16LadderFlatX37_eq]
        unfold seg16LadderFlatX37
        linear_combination -r3452
      unfold seg16AccX38
      linear_combination hd
    have hsely : seg16AccY38 rho = seg16AccY37 rho - Bool.toZMod bit * (seg16AccY37 rho - rho 16023) := by
      have hd : rho 16025 = Bool.toZMod bit * (rho 16023 - seg16AccY37 rho) := by
        rw [← hbit, seg16LadderFlatY37_eq]
        unfold seg16LadderFlatY37
        linear_combination -r3453
      unfold seg16AccY38
      linear_combination hd
    have hd0 : rho 16016 * rho 16017 = rho 16026 := by linear_combination r3454
    have hd1 : rho 16016 * rho 16016 = rho 16027 := by linear_combination r3455
    have hd2 : rho 16017 * rho 16017 = rho 16028 := by linear_combination r3456
    have hd3 : rho 16029 * (rho 16017 * rho 16017 + rho 16016 * rho 16016 * (-1)) = 2 * (rho 16016 * rho 16017) := by
      rw [hd0, hd1, hd2]
      linear_combination r3457
    have hd4 : rho 16030 * (2 - (rho 16017 * rho 16017 + rho 16016 * rho 16016 * (-1))) = rho 16017 * rho 16017 - rho 16016 * rho 16016 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3458
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX37 rho : Seg16.F), (seg16AccY37 rho : Seg16.F)⟩
      ⟨(rho 16016 : Seg16.F), (rho 16017 : Seg16.F)⟩
      ⟨(rho 16022 : Seg16.F), (rho 16023 : Seg16.F)⟩
      ⟨(seg16AccX38 rho : Seg16.F), (seg16AccY38 rho : Seg16.F)⟩
      ⟨(rho 16029 : Seg16.F), (rho 16030 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung37

theorem seg16_rung38 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15330 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX38 rho : Seg16.F), (seg16AccY38 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16029 : Seg16.F), (rho 16030 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX38 rho : Seg16.F), (seg16AccY38 rho : Seg16.F)⟩
        ⟨(rho 16029 : Seg16.F), (rho 16030 : Seg16.F)⟩
        ⟨(seg16AccX39 rho : Seg16.F), (seg16AccY39 rho : Seg16.F)⟩
        ⟨(rho 16042 : Seg16.F), (rho 16043 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3459, r3460, r3461, r3462, r3463, r3464, r3465, r3466, r3467, r3468, r3469, r3470, r3471, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3459 Seg16.relationLc225 Seg16.relationLc225Part0 Seg16.relationLc225Part1 Seg16.relationLc225Part2 at r3459
  unfold Seg16.relationRow3460 Seg16.relationLc226 Seg16.relationLc226Part0 Seg16.relationLc226Part1 at r3460
  unfold Seg16.relationRow3461 Seg16.relationLc227 Seg16.relationLc227Part0 Seg16.relationLc227Part1 at r3461
  unfold Seg16.relationRow3462 at r3462
  unfold Seg16.relationRow3463 at r3463
  unfold Seg16.relationRow3464 at r3464
  unfold Seg16.relationRow3465 Seg16.relationLc228 Seg16.relationLc228Part0 Seg16.relationLc228Part1 at r3465
  unfold Seg16.relationRow3466 Seg16.relationLc229 Seg16.relationLc229Part0 Seg16.relationLc229Part1 at r3466
  unfold Seg16.relationRow3467 at r3467
  unfold Seg16.relationRow3468 at r3468
  unfold Seg16.relationRow3469 at r3469
  unfold Seg16.relationRow3470 at r3470
  unfold Seg16.relationRow3471 at r3471
  have hrung38 (bit : Bool) (hbit : rho 15330 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX38 rho : Seg16.F), (seg16AccY38 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16029 : Seg16.F), (rho 16030 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX38 rho : Seg16.F), (seg16AccY38 rho : Seg16.F)⟩
        ⟨(rho 16029 : Seg16.F), (rho 16030 : Seg16.F)⟩
        ⟨(seg16AccX39 rho : Seg16.F), (seg16AccY39 rho : Seg16.F)⟩
        ⟨(rho 16042 : Seg16.F), (rho 16043 : Seg16.F)⟩ := by
    have ha0 : (rho 16029 + rho 16030) * (seg16AccX38 rho + seg16AccY38 rho) = rho 16031 := by
      rw [seg16LadderFlatX38_eq, seg16LadderFlatY38_eq]
      unfold seg16LadderFlatX38 seg16LadderFlatY38
      linear_combination r3459
    have ha1 : rho 16030 * seg16AccX38 rho = rho 16032 := by
      rw [seg16LadderFlatX38_eq]
      unfold seg16LadderFlatX38
      linear_combination r3460
    have ha2 : rho 16029 * seg16AccY38 rho = rho 16033 := by
      rw [seg16LadderFlatY38_eq]
      unfold seg16LadderFlatY38
      linear_combination r3461
    have ha3 : 3021 * rho 16032 * rho 16033 = rho 16034 := by
      linear_combination r3462
    have ha4 : rho 16035 * (1 + rho 16034) = rho 16032 + rho 16033 := by
      linear_combination r3463
    have ha5 : rho 16036 * (1 - rho 16034) = rho 16031 - rho 16032 - rho 16033 := by
      linear_combination r3464
    have haddx :
        rho 16035 * (1 + 3021 * (rho 16030 * seg16AccX38 rho) * (rho 16029 * seg16AccY38 rho)) =
          rho 16030 * seg16AccX38 rho + rho 16029 * seg16AccY38 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16036 * (1 - 3021 * (rho 16030 * seg16AccX38 rho) * (rho 16029 * seg16AccY38 rho)) =
          (-1) * (rho 16030 * seg16AccX38 rho) - rho 16029 * seg16AccY38 rho +
            (seg16AccY38 rho - seg16AccX38 rho * (-1)) * (rho 16029 + rho 16030) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16036 * (1 - rho 16034) = rho 16031 - rho 16032 - rho 16033 := ha5
        _ = (-1) * rho 16032 - rho 16033 + (seg16AccY38 rho - seg16AccX38 rho * (-1)) * (rho 16029 + rho 16030) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX39 rho = seg16AccX38 rho - Bool.toZMod bit * (seg16AccX38 rho - rho 16035) := by
      have hd : rho 16037 = Bool.toZMod bit * (rho 16035 - seg16AccX38 rho) := by
        rw [← hbit, seg16LadderFlatX38_eq]
        unfold seg16LadderFlatX38
        linear_combination -r3465
      unfold seg16AccX39
      linear_combination hd
    have hsely : seg16AccY39 rho = seg16AccY38 rho - Bool.toZMod bit * (seg16AccY38 rho - rho 16036) := by
      have hd : rho 16038 = Bool.toZMod bit * (rho 16036 - seg16AccY38 rho) := by
        rw [← hbit, seg16LadderFlatY38_eq]
        unfold seg16LadderFlatY38
        linear_combination -r3466
      unfold seg16AccY39
      linear_combination hd
    have hd0 : rho 16029 * rho 16030 = rho 16039 := by linear_combination r3467
    have hd1 : rho 16029 * rho 16029 = rho 16040 := by linear_combination r3468
    have hd2 : rho 16030 * rho 16030 = rho 16041 := by linear_combination r3469
    have hd3 : rho 16042 * (rho 16030 * rho 16030 + rho 16029 * rho 16029 * (-1)) = 2 * (rho 16029 * rho 16030) := by
      rw [hd0, hd1, hd2]
      linear_combination r3470
    have hd4 : rho 16043 * (2 - (rho 16030 * rho 16030 + rho 16029 * rho 16029 * (-1))) = rho 16030 * rho 16030 - rho 16029 * rho 16029 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3471
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX38 rho : Seg16.F), (seg16AccY38 rho : Seg16.F)⟩
      ⟨(rho 16029 : Seg16.F), (rho 16030 : Seg16.F)⟩
      ⟨(rho 16035 : Seg16.F), (rho 16036 : Seg16.F)⟩
      ⟨(seg16AccX39 rho : Seg16.F), (seg16AccY39 rho : Seg16.F)⟩
      ⟨(rho 16042 : Seg16.F), (rho 16043 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung38

theorem seg16_rung39 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15331 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX39 rho : Seg16.F), (seg16AccY39 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16042 : Seg16.F), (rho 16043 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX39 rho : Seg16.F), (seg16AccY39 rho : Seg16.F)⟩
        ⟨(rho 16042 : Seg16.F), (rho 16043 : Seg16.F)⟩
        ⟨(seg16AccX40 rho : Seg16.F), (seg16AccY40 rho : Seg16.F)⟩
        ⟨(rho 16055 : Seg16.F), (rho 16056 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3472, r3473, r3474, r3475, r3476, r3477, r3478, r3479, r3480, r3481, r3482, r3483, r3484, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3472 Seg16.relationLc230 Seg16.relationLc230Part0 Seg16.relationLc230Part1 Seg16.relationLc230Part2 at r3472
  unfold Seg16.relationRow3473 Seg16.relationLc231 Seg16.relationLc231Part0 Seg16.relationLc231Part1 at r3473
  unfold Seg16.relationRow3474 Seg16.relationLc232 Seg16.relationLc232Part0 Seg16.relationLc232Part1 at r3474
  unfold Seg16.relationRow3475 at r3475
  unfold Seg16.relationRow3476 at r3476
  unfold Seg16.relationRow3477 at r3477
  unfold Seg16.relationRow3478 Seg16.relationLc233 Seg16.relationLc233Part0 Seg16.relationLc233Part1 at r3478
  unfold Seg16.relationRow3479 Seg16.relationLc234 Seg16.relationLc234Part0 Seg16.relationLc234Part1 at r3479
  unfold Seg16.relationRow3480 at r3480
  unfold Seg16.relationRow3481 at r3481
  unfold Seg16.relationRow3482 at r3482
  unfold Seg16.relationRow3483 at r3483
  unfold Seg16.relationRow3484 at r3484
  have hrung39 (bit : Bool) (hbit : rho 15331 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX39 rho : Seg16.F), (seg16AccY39 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16042 : Seg16.F), (rho 16043 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX39 rho : Seg16.F), (seg16AccY39 rho : Seg16.F)⟩
        ⟨(rho 16042 : Seg16.F), (rho 16043 : Seg16.F)⟩
        ⟨(seg16AccX40 rho : Seg16.F), (seg16AccY40 rho : Seg16.F)⟩
        ⟨(rho 16055 : Seg16.F), (rho 16056 : Seg16.F)⟩ := by
    have ha0 : (rho 16042 + rho 16043) * (seg16AccX39 rho + seg16AccY39 rho) = rho 16044 := by
      rw [seg16LadderFlatX39_eq, seg16LadderFlatY39_eq]
      unfold seg16LadderFlatX39 seg16LadderFlatY39
      linear_combination r3472
    have ha1 : rho 16043 * seg16AccX39 rho = rho 16045 := by
      rw [seg16LadderFlatX39_eq]
      unfold seg16LadderFlatX39
      linear_combination r3473
    have ha2 : rho 16042 * seg16AccY39 rho = rho 16046 := by
      rw [seg16LadderFlatY39_eq]
      unfold seg16LadderFlatY39
      linear_combination r3474
    have ha3 : 3021 * rho 16045 * rho 16046 = rho 16047 := by
      linear_combination r3475
    have ha4 : rho 16048 * (1 + rho 16047) = rho 16045 + rho 16046 := by
      linear_combination r3476
    have ha5 : rho 16049 * (1 - rho 16047) = rho 16044 - rho 16045 - rho 16046 := by
      linear_combination r3477
    have haddx :
        rho 16048 * (1 + 3021 * (rho 16043 * seg16AccX39 rho) * (rho 16042 * seg16AccY39 rho)) =
          rho 16043 * seg16AccX39 rho + rho 16042 * seg16AccY39 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16049 * (1 - 3021 * (rho 16043 * seg16AccX39 rho) * (rho 16042 * seg16AccY39 rho)) =
          (-1) * (rho 16043 * seg16AccX39 rho) - rho 16042 * seg16AccY39 rho +
            (seg16AccY39 rho - seg16AccX39 rho * (-1)) * (rho 16042 + rho 16043) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16049 * (1 - rho 16047) = rho 16044 - rho 16045 - rho 16046 := ha5
        _ = (-1) * rho 16045 - rho 16046 + (seg16AccY39 rho - seg16AccX39 rho * (-1)) * (rho 16042 + rho 16043) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX40 rho = seg16AccX39 rho - Bool.toZMod bit * (seg16AccX39 rho - rho 16048) := by
      have hd : rho 16050 = Bool.toZMod bit * (rho 16048 - seg16AccX39 rho) := by
        rw [← hbit, seg16LadderFlatX39_eq]
        unfold seg16LadderFlatX39
        linear_combination -r3478
      unfold seg16AccX40
      linear_combination hd
    have hsely : seg16AccY40 rho = seg16AccY39 rho - Bool.toZMod bit * (seg16AccY39 rho - rho 16049) := by
      have hd : rho 16051 = Bool.toZMod bit * (rho 16049 - seg16AccY39 rho) := by
        rw [← hbit, seg16LadderFlatY39_eq]
        unfold seg16LadderFlatY39
        linear_combination -r3479
      unfold seg16AccY40
      linear_combination hd
    have hd0 : rho 16042 * rho 16043 = rho 16052 := by linear_combination r3480
    have hd1 : rho 16042 * rho 16042 = rho 16053 := by linear_combination r3481
    have hd2 : rho 16043 * rho 16043 = rho 16054 := by linear_combination r3482
    have hd3 : rho 16055 * (rho 16043 * rho 16043 + rho 16042 * rho 16042 * (-1)) = 2 * (rho 16042 * rho 16043) := by
      rw [hd0, hd1, hd2]
      linear_combination r3483
    have hd4 : rho 16056 * (2 - (rho 16043 * rho 16043 + rho 16042 * rho 16042 * (-1))) = rho 16043 * rho 16043 - rho 16042 * rho 16042 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3484
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX39 rho : Seg16.F), (seg16AccY39 rho : Seg16.F)⟩
      ⟨(rho 16042 : Seg16.F), (rho 16043 : Seg16.F)⟩
      ⟨(rho 16048 : Seg16.F), (rho 16049 : Seg16.F)⟩
      ⟨(seg16AccX40 rho : Seg16.F), (seg16AccY40 rho : Seg16.F)⟩
      ⟨(rho 16055 : Seg16.F), (rho 16056 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung39

theorem seg16_rung40 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15332 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX40 rho : Seg16.F), (seg16AccY40 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16055 : Seg16.F), (rho 16056 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX40 rho : Seg16.F), (seg16AccY40 rho : Seg16.F)⟩
        ⟨(rho 16055 : Seg16.F), (rho 16056 : Seg16.F)⟩
        ⟨(seg16AccX41 rho : Seg16.F), (seg16AccY41 rho : Seg16.F)⟩
        ⟨(rho 16068 : Seg16.F), (rho 16069 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3485, r3486, r3487, r3488, r3489, r3490, r3491, r3492, r3493, r3494, r3495, r3496, r3497, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3485 Seg16.relationLc235 Seg16.relationLc235Part0 Seg16.relationLc235Part1 Seg16.relationLc235Part2 at r3485
  unfold Seg16.relationRow3486 Seg16.relationLc236 Seg16.relationLc236Part0 Seg16.relationLc236Part1 at r3486
  unfold Seg16.relationRow3487 Seg16.relationLc237 Seg16.relationLc237Part0 Seg16.relationLc237Part1 at r3487
  unfold Seg16.relationRow3488 at r3488
  unfold Seg16.relationRow3489 at r3489
  unfold Seg16.relationRow3490 at r3490
  unfold Seg16.relationRow3491 Seg16.relationLc238 Seg16.relationLc238Part0 Seg16.relationLc238Part1 at r3491
  unfold Seg16.relationRow3492 Seg16.relationLc239 Seg16.relationLc239Part0 Seg16.relationLc239Part1 at r3492
  unfold Seg16.relationRow3493 at r3493
  unfold Seg16.relationRow3494 at r3494
  unfold Seg16.relationRow3495 at r3495
  unfold Seg16.relationRow3496 at r3496
  unfold Seg16.relationRow3497 at r3497
  have hrung40 (bit : Bool) (hbit : rho 15332 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX40 rho : Seg16.F), (seg16AccY40 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16055 : Seg16.F), (rho 16056 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX40 rho : Seg16.F), (seg16AccY40 rho : Seg16.F)⟩
        ⟨(rho 16055 : Seg16.F), (rho 16056 : Seg16.F)⟩
        ⟨(seg16AccX41 rho : Seg16.F), (seg16AccY41 rho : Seg16.F)⟩
        ⟨(rho 16068 : Seg16.F), (rho 16069 : Seg16.F)⟩ := by
    have ha0 : (rho 16055 + rho 16056) * (seg16AccX40 rho + seg16AccY40 rho) = rho 16057 := by
      rw [seg16LadderFlatX40_eq, seg16LadderFlatY40_eq]
      unfold seg16LadderFlatX40 seg16LadderFlatY40
      linear_combination r3485
    have ha1 : rho 16056 * seg16AccX40 rho = rho 16058 := by
      rw [seg16LadderFlatX40_eq]
      unfold seg16LadderFlatX40
      linear_combination r3486
    have ha2 : rho 16055 * seg16AccY40 rho = rho 16059 := by
      rw [seg16LadderFlatY40_eq]
      unfold seg16LadderFlatY40
      linear_combination r3487
    have ha3 : 3021 * rho 16058 * rho 16059 = rho 16060 := by
      linear_combination r3488
    have ha4 : rho 16061 * (1 + rho 16060) = rho 16058 + rho 16059 := by
      linear_combination r3489
    have ha5 : rho 16062 * (1 - rho 16060) = rho 16057 - rho 16058 - rho 16059 := by
      linear_combination r3490
    have haddx :
        rho 16061 * (1 + 3021 * (rho 16056 * seg16AccX40 rho) * (rho 16055 * seg16AccY40 rho)) =
          rho 16056 * seg16AccX40 rho + rho 16055 * seg16AccY40 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16062 * (1 - 3021 * (rho 16056 * seg16AccX40 rho) * (rho 16055 * seg16AccY40 rho)) =
          (-1) * (rho 16056 * seg16AccX40 rho) - rho 16055 * seg16AccY40 rho +
            (seg16AccY40 rho - seg16AccX40 rho * (-1)) * (rho 16055 + rho 16056) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16062 * (1 - rho 16060) = rho 16057 - rho 16058 - rho 16059 := ha5
        _ = (-1) * rho 16058 - rho 16059 + (seg16AccY40 rho - seg16AccX40 rho * (-1)) * (rho 16055 + rho 16056) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX41 rho = seg16AccX40 rho - Bool.toZMod bit * (seg16AccX40 rho - rho 16061) := by
      have hd : rho 16063 = Bool.toZMod bit * (rho 16061 - seg16AccX40 rho) := by
        rw [← hbit, seg16LadderFlatX40_eq]
        unfold seg16LadderFlatX40
        linear_combination -r3491
      unfold seg16AccX41
      linear_combination hd
    have hsely : seg16AccY41 rho = seg16AccY40 rho - Bool.toZMod bit * (seg16AccY40 rho - rho 16062) := by
      have hd : rho 16064 = Bool.toZMod bit * (rho 16062 - seg16AccY40 rho) := by
        rw [← hbit, seg16LadderFlatY40_eq]
        unfold seg16LadderFlatY40
        linear_combination -r3492
      unfold seg16AccY41
      linear_combination hd
    have hd0 : rho 16055 * rho 16056 = rho 16065 := by linear_combination r3493
    have hd1 : rho 16055 * rho 16055 = rho 16066 := by linear_combination r3494
    have hd2 : rho 16056 * rho 16056 = rho 16067 := by linear_combination r3495
    have hd3 : rho 16068 * (rho 16056 * rho 16056 + rho 16055 * rho 16055 * (-1)) = 2 * (rho 16055 * rho 16056) := by
      rw [hd0, hd1, hd2]
      linear_combination r3496
    have hd4 : rho 16069 * (2 - (rho 16056 * rho 16056 + rho 16055 * rho 16055 * (-1))) = rho 16056 * rho 16056 - rho 16055 * rho 16055 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3497
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX40 rho : Seg16.F), (seg16AccY40 rho : Seg16.F)⟩
      ⟨(rho 16055 : Seg16.F), (rho 16056 : Seg16.F)⟩
      ⟨(rho 16061 : Seg16.F), (rho 16062 : Seg16.F)⟩
      ⟨(seg16AccX41 rho : Seg16.F), (seg16AccY41 rho : Seg16.F)⟩
      ⟨(rho 16068 : Seg16.F), (rho 16069 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung40

theorem seg16_rung41 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15333 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX41 rho : Seg16.F), (seg16AccY41 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16068 : Seg16.F), (rho 16069 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX41 rho : Seg16.F), (seg16AccY41 rho : Seg16.F)⟩
        ⟨(rho 16068 : Seg16.F), (rho 16069 : Seg16.F)⟩
        ⟨(seg16AccX42 rho : Seg16.F), (seg16AccY42 rho : Seg16.F)⟩
        ⟨(rho 16081 : Seg16.F), (rho 16082 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3498, r3499, r3500, r3501, r3502, r3503, r3504, r3505, r3506, r3507, r3508, r3509, r3510, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3498 Seg16.relationLc240 Seg16.relationLc240Part0 Seg16.relationLc240Part1 Seg16.relationLc240Part2 at r3498
  unfold Seg16.relationRow3499 Seg16.relationLc241 Seg16.relationLc241Part0 Seg16.relationLc241Part1 at r3499
  unfold Seg16.relationRow3500 Seg16.relationLc242 Seg16.relationLc242Part0 Seg16.relationLc242Part1 at r3500
  unfold Seg16.relationRow3501 at r3501
  unfold Seg16.relationRow3502 at r3502
  unfold Seg16.relationRow3503 at r3503
  unfold Seg16.relationRow3504 Seg16.relationLc243 Seg16.relationLc243Part0 Seg16.relationLc243Part1 at r3504
  unfold Seg16.relationRow3505 Seg16.relationLc244 Seg16.relationLc244Part0 Seg16.relationLc244Part1 at r3505
  unfold Seg16.relationRow3506 at r3506
  unfold Seg16.relationRow3507 at r3507
  unfold Seg16.relationRow3508 at r3508
  unfold Seg16.relationRow3509 at r3509
  unfold Seg16.relationRow3510 at r3510
  have hrung41 (bit : Bool) (hbit : rho 15333 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX41 rho : Seg16.F), (seg16AccY41 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16068 : Seg16.F), (rho 16069 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX41 rho : Seg16.F), (seg16AccY41 rho : Seg16.F)⟩
        ⟨(rho 16068 : Seg16.F), (rho 16069 : Seg16.F)⟩
        ⟨(seg16AccX42 rho : Seg16.F), (seg16AccY42 rho : Seg16.F)⟩
        ⟨(rho 16081 : Seg16.F), (rho 16082 : Seg16.F)⟩ := by
    have ha0 : (rho 16068 + rho 16069) * (seg16AccX41 rho + seg16AccY41 rho) = rho 16070 := by
      rw [seg16LadderFlatX41_eq, seg16LadderFlatY41_eq]
      unfold seg16LadderFlatX41 seg16LadderFlatY41
      linear_combination r3498
    have ha1 : rho 16069 * seg16AccX41 rho = rho 16071 := by
      rw [seg16LadderFlatX41_eq]
      unfold seg16LadderFlatX41
      linear_combination r3499
    have ha2 : rho 16068 * seg16AccY41 rho = rho 16072 := by
      rw [seg16LadderFlatY41_eq]
      unfold seg16LadderFlatY41
      linear_combination r3500
    have ha3 : 3021 * rho 16071 * rho 16072 = rho 16073 := by
      linear_combination r3501
    have ha4 : rho 16074 * (1 + rho 16073) = rho 16071 + rho 16072 := by
      linear_combination r3502
    have ha5 : rho 16075 * (1 - rho 16073) = rho 16070 - rho 16071 - rho 16072 := by
      linear_combination r3503
    have haddx :
        rho 16074 * (1 + 3021 * (rho 16069 * seg16AccX41 rho) * (rho 16068 * seg16AccY41 rho)) =
          rho 16069 * seg16AccX41 rho + rho 16068 * seg16AccY41 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16075 * (1 - 3021 * (rho 16069 * seg16AccX41 rho) * (rho 16068 * seg16AccY41 rho)) =
          (-1) * (rho 16069 * seg16AccX41 rho) - rho 16068 * seg16AccY41 rho +
            (seg16AccY41 rho - seg16AccX41 rho * (-1)) * (rho 16068 + rho 16069) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16075 * (1 - rho 16073) = rho 16070 - rho 16071 - rho 16072 := ha5
        _ = (-1) * rho 16071 - rho 16072 + (seg16AccY41 rho - seg16AccX41 rho * (-1)) * (rho 16068 + rho 16069) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX42 rho = seg16AccX41 rho - Bool.toZMod bit * (seg16AccX41 rho - rho 16074) := by
      have hd : rho 16076 = Bool.toZMod bit * (rho 16074 - seg16AccX41 rho) := by
        rw [← hbit, seg16LadderFlatX41_eq]
        unfold seg16LadderFlatX41
        linear_combination -r3504
      unfold seg16AccX42
      linear_combination hd
    have hsely : seg16AccY42 rho = seg16AccY41 rho - Bool.toZMod bit * (seg16AccY41 rho - rho 16075) := by
      have hd : rho 16077 = Bool.toZMod bit * (rho 16075 - seg16AccY41 rho) := by
        rw [← hbit, seg16LadderFlatY41_eq]
        unfold seg16LadderFlatY41
        linear_combination -r3505
      unfold seg16AccY42
      linear_combination hd
    have hd0 : rho 16068 * rho 16069 = rho 16078 := by linear_combination r3506
    have hd1 : rho 16068 * rho 16068 = rho 16079 := by linear_combination r3507
    have hd2 : rho 16069 * rho 16069 = rho 16080 := by linear_combination r3508
    have hd3 : rho 16081 * (rho 16069 * rho 16069 + rho 16068 * rho 16068 * (-1)) = 2 * (rho 16068 * rho 16069) := by
      rw [hd0, hd1, hd2]
      linear_combination r3509
    have hd4 : rho 16082 * (2 - (rho 16069 * rho 16069 + rho 16068 * rho 16068 * (-1))) = rho 16069 * rho 16069 - rho 16068 * rho 16068 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3510
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX41 rho : Seg16.F), (seg16AccY41 rho : Seg16.F)⟩
      ⟨(rho 16068 : Seg16.F), (rho 16069 : Seg16.F)⟩
      ⟨(rho 16074 : Seg16.F), (rho 16075 : Seg16.F)⟩
      ⟨(seg16AccX42 rho : Seg16.F), (seg16AccY42 rho : Seg16.F)⟩
      ⟨(rho 16081 : Seg16.F), (rho 16082 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung41

theorem seg16_rung42 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15334 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX42 rho : Seg16.F), (seg16AccY42 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16081 : Seg16.F), (rho 16082 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX42 rho : Seg16.F), (seg16AccY42 rho : Seg16.F)⟩
        ⟨(rho 16081 : Seg16.F), (rho 16082 : Seg16.F)⟩
        ⟨(seg16AccX43 rho : Seg16.F), (seg16AccY43 rho : Seg16.F)⟩
        ⟨(rho 16094 : Seg16.F), (rho 16095 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3511, r3512, r3513, r3514, r3515, r3516, r3517, r3518, r3519⟩
  unfold Seg16.relationPart44 at p44
  rcases p44 with ⟨r3520, r3521, r3522, r3523, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3511 Seg16.relationLc245 Seg16.relationLc245Part0 Seg16.relationLc245Part1 Seg16.relationLc245Part2 at r3511
  unfold Seg16.relationRow3512 Seg16.relationLc246 Seg16.relationLc246Part0 Seg16.relationLc246Part1 at r3512
  unfold Seg16.relationRow3513 Seg16.relationLc247 Seg16.relationLc247Part0 Seg16.relationLc247Part1 at r3513
  unfold Seg16.relationRow3514 at r3514
  unfold Seg16.relationRow3515 at r3515
  unfold Seg16.relationRow3516 at r3516
  unfold Seg16.relationRow3517 Seg16.relationLc248 Seg16.relationLc248Part0 Seg16.relationLc248Part1 at r3517
  unfold Seg16.relationRow3518 Seg16.relationLc249 Seg16.relationLc249Part0 Seg16.relationLc249Part1 at r3518
  unfold Seg16.relationRow3519 at r3519
  unfold Seg16.relationRow3520 at r3520
  unfold Seg16.relationRow3521 at r3521
  unfold Seg16.relationRow3522 at r3522
  unfold Seg16.relationRow3523 at r3523
  have hrung42 (bit : Bool) (hbit : rho 15334 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX42 rho : Seg16.F), (seg16AccY42 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16081 : Seg16.F), (rho 16082 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX42 rho : Seg16.F), (seg16AccY42 rho : Seg16.F)⟩
        ⟨(rho 16081 : Seg16.F), (rho 16082 : Seg16.F)⟩
        ⟨(seg16AccX43 rho : Seg16.F), (seg16AccY43 rho : Seg16.F)⟩
        ⟨(rho 16094 : Seg16.F), (rho 16095 : Seg16.F)⟩ := by
    have ha0 : (rho 16081 + rho 16082) * (seg16AccX42 rho + seg16AccY42 rho) = rho 16083 := by
      rw [seg16LadderFlatX42_eq, seg16LadderFlatY42_eq]
      unfold seg16LadderFlatX42 seg16LadderFlatY42
      linear_combination r3511
    have ha1 : rho 16082 * seg16AccX42 rho = rho 16084 := by
      rw [seg16LadderFlatX42_eq]
      unfold seg16LadderFlatX42
      linear_combination r3512
    have ha2 : rho 16081 * seg16AccY42 rho = rho 16085 := by
      rw [seg16LadderFlatY42_eq]
      unfold seg16LadderFlatY42
      linear_combination r3513
    have ha3 : 3021 * rho 16084 * rho 16085 = rho 16086 := by
      linear_combination r3514
    have ha4 : rho 16087 * (1 + rho 16086) = rho 16084 + rho 16085 := by
      linear_combination r3515
    have ha5 : rho 16088 * (1 - rho 16086) = rho 16083 - rho 16084 - rho 16085 := by
      linear_combination r3516
    have haddx :
        rho 16087 * (1 + 3021 * (rho 16082 * seg16AccX42 rho) * (rho 16081 * seg16AccY42 rho)) =
          rho 16082 * seg16AccX42 rho + rho 16081 * seg16AccY42 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16088 * (1 - 3021 * (rho 16082 * seg16AccX42 rho) * (rho 16081 * seg16AccY42 rho)) =
          (-1) * (rho 16082 * seg16AccX42 rho) - rho 16081 * seg16AccY42 rho +
            (seg16AccY42 rho - seg16AccX42 rho * (-1)) * (rho 16081 + rho 16082) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16088 * (1 - rho 16086) = rho 16083 - rho 16084 - rho 16085 := ha5
        _ = (-1) * rho 16084 - rho 16085 + (seg16AccY42 rho - seg16AccX42 rho * (-1)) * (rho 16081 + rho 16082) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX43 rho = seg16AccX42 rho - Bool.toZMod bit * (seg16AccX42 rho - rho 16087) := by
      have hd : rho 16089 = Bool.toZMod bit * (rho 16087 - seg16AccX42 rho) := by
        rw [← hbit, seg16LadderFlatX42_eq]
        unfold seg16LadderFlatX42
        linear_combination -r3517
      unfold seg16AccX43
      linear_combination hd
    have hsely : seg16AccY43 rho = seg16AccY42 rho - Bool.toZMod bit * (seg16AccY42 rho - rho 16088) := by
      have hd : rho 16090 = Bool.toZMod bit * (rho 16088 - seg16AccY42 rho) := by
        rw [← hbit, seg16LadderFlatY42_eq]
        unfold seg16LadderFlatY42
        linear_combination -r3518
      unfold seg16AccY43
      linear_combination hd
    have hd0 : rho 16081 * rho 16082 = rho 16091 := by linear_combination r3519
    have hd1 : rho 16081 * rho 16081 = rho 16092 := by linear_combination r3520
    have hd2 : rho 16082 * rho 16082 = rho 16093 := by linear_combination r3521
    have hd3 : rho 16094 * (rho 16082 * rho 16082 + rho 16081 * rho 16081 * (-1)) = 2 * (rho 16081 * rho 16082) := by
      rw [hd0, hd1, hd2]
      linear_combination r3522
    have hd4 : rho 16095 * (2 - (rho 16082 * rho 16082 + rho 16081 * rho 16081 * (-1))) = rho 16082 * rho 16082 - rho 16081 * rho 16081 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3523
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX42 rho : Seg16.F), (seg16AccY42 rho : Seg16.F)⟩
      ⟨(rho 16081 : Seg16.F), (rho 16082 : Seg16.F)⟩
      ⟨(rho 16087 : Seg16.F), (rho 16088 : Seg16.F)⟩
      ⟨(seg16AccX43 rho : Seg16.F), (seg16AccY43 rho : Seg16.F)⟩
      ⟨(rho 16094 : Seg16.F), (rho 16095 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung42

theorem seg16_rung43 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15335 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX43 rho : Seg16.F), (seg16AccY43 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16094 : Seg16.F), (rho 16095 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX43 rho : Seg16.F), (seg16AccY43 rho : Seg16.F)⟩
        ⟨(rho 16094 : Seg16.F), (rho 16095 : Seg16.F)⟩
        ⟨(seg16AccX44 rho : Seg16.F), (seg16AccY44 rho : Seg16.F)⟩
        ⟨(rho 16107 : Seg16.F), (rho 16108 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, r3524, r3525, r3526, r3527, r3528, r3529, r3530, r3531, r3532, r3533, r3534, r3535, r3536, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3524 Seg16.relationLc250 Seg16.relationLc250Part0 Seg16.relationLc250Part1 Seg16.relationLc250Part2 at r3524
  unfold Seg16.relationRow3525 Seg16.relationLc251 Seg16.relationLc251Part0 Seg16.relationLc251Part1 at r3525
  unfold Seg16.relationRow3526 Seg16.relationLc252 Seg16.relationLc252Part0 Seg16.relationLc252Part1 at r3526
  unfold Seg16.relationRow3527 at r3527
  unfold Seg16.relationRow3528 at r3528
  unfold Seg16.relationRow3529 at r3529
  unfold Seg16.relationRow3530 Seg16.relationLc253 Seg16.relationLc253Part0 Seg16.relationLc253Part1 at r3530
  unfold Seg16.relationRow3531 Seg16.relationLc254 Seg16.relationLc254Part0 Seg16.relationLc254Part1 at r3531
  unfold Seg16.relationRow3532 at r3532
  unfold Seg16.relationRow3533 at r3533
  unfold Seg16.relationRow3534 at r3534
  unfold Seg16.relationRow3535 at r3535
  unfold Seg16.relationRow3536 at r3536
  have hrung43 (bit : Bool) (hbit : rho 15335 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX43 rho : Seg16.F), (seg16AccY43 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16094 : Seg16.F), (rho 16095 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX43 rho : Seg16.F), (seg16AccY43 rho : Seg16.F)⟩
        ⟨(rho 16094 : Seg16.F), (rho 16095 : Seg16.F)⟩
        ⟨(seg16AccX44 rho : Seg16.F), (seg16AccY44 rho : Seg16.F)⟩
        ⟨(rho 16107 : Seg16.F), (rho 16108 : Seg16.F)⟩ := by
    have ha0 : (rho 16094 + rho 16095) * (seg16AccX43 rho + seg16AccY43 rho) = rho 16096 := by
      rw [seg16LadderFlatX43_eq, seg16LadderFlatY43_eq]
      unfold seg16LadderFlatX43 seg16LadderFlatY43
      linear_combination r3524
    have ha1 : rho 16095 * seg16AccX43 rho = rho 16097 := by
      rw [seg16LadderFlatX43_eq]
      unfold seg16LadderFlatX43
      linear_combination r3525
    have ha2 : rho 16094 * seg16AccY43 rho = rho 16098 := by
      rw [seg16LadderFlatY43_eq]
      unfold seg16LadderFlatY43
      linear_combination r3526
    have ha3 : 3021 * rho 16097 * rho 16098 = rho 16099 := by
      linear_combination r3527
    have ha4 : rho 16100 * (1 + rho 16099) = rho 16097 + rho 16098 := by
      linear_combination r3528
    have ha5 : rho 16101 * (1 - rho 16099) = rho 16096 - rho 16097 - rho 16098 := by
      linear_combination r3529
    have haddx :
        rho 16100 * (1 + 3021 * (rho 16095 * seg16AccX43 rho) * (rho 16094 * seg16AccY43 rho)) =
          rho 16095 * seg16AccX43 rho + rho 16094 * seg16AccY43 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16101 * (1 - 3021 * (rho 16095 * seg16AccX43 rho) * (rho 16094 * seg16AccY43 rho)) =
          (-1) * (rho 16095 * seg16AccX43 rho) - rho 16094 * seg16AccY43 rho +
            (seg16AccY43 rho - seg16AccX43 rho * (-1)) * (rho 16094 + rho 16095) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16101 * (1 - rho 16099) = rho 16096 - rho 16097 - rho 16098 := ha5
        _ = (-1) * rho 16097 - rho 16098 + (seg16AccY43 rho - seg16AccX43 rho * (-1)) * (rho 16094 + rho 16095) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX44 rho = seg16AccX43 rho - Bool.toZMod bit * (seg16AccX43 rho - rho 16100) := by
      have hd : rho 16102 = Bool.toZMod bit * (rho 16100 - seg16AccX43 rho) := by
        rw [← hbit, seg16LadderFlatX43_eq]
        unfold seg16LadderFlatX43
        linear_combination -r3530
      unfold seg16AccX44
      linear_combination hd
    have hsely : seg16AccY44 rho = seg16AccY43 rho - Bool.toZMod bit * (seg16AccY43 rho - rho 16101) := by
      have hd : rho 16103 = Bool.toZMod bit * (rho 16101 - seg16AccY43 rho) := by
        rw [← hbit, seg16LadderFlatY43_eq]
        unfold seg16LadderFlatY43
        linear_combination -r3531
      unfold seg16AccY44
      linear_combination hd
    have hd0 : rho 16094 * rho 16095 = rho 16104 := by linear_combination r3532
    have hd1 : rho 16094 * rho 16094 = rho 16105 := by linear_combination r3533
    have hd2 : rho 16095 * rho 16095 = rho 16106 := by linear_combination r3534
    have hd3 : rho 16107 * (rho 16095 * rho 16095 + rho 16094 * rho 16094 * (-1)) = 2 * (rho 16094 * rho 16095) := by
      rw [hd0, hd1, hd2]
      linear_combination r3535
    have hd4 : rho 16108 * (2 - (rho 16095 * rho 16095 + rho 16094 * rho 16094 * (-1))) = rho 16095 * rho 16095 - rho 16094 * rho 16094 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3536
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX43 rho : Seg16.F), (seg16AccY43 rho : Seg16.F)⟩
      ⟨(rho 16094 : Seg16.F), (rho 16095 : Seg16.F)⟩
      ⟨(rho 16100 : Seg16.F), (rho 16101 : Seg16.F)⟩
      ⟨(seg16AccX44 rho : Seg16.F), (seg16AccY44 rho : Seg16.F)⟩
      ⟨(rho 16107 : Seg16.F), (rho 16108 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung43

theorem seg16_rung44 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15336 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX44 rho : Seg16.F), (seg16AccY44 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16107 : Seg16.F), (rho 16108 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX44 rho : Seg16.F), (seg16AccY44 rho : Seg16.F)⟩
        ⟨(rho 16107 : Seg16.F), (rho 16108 : Seg16.F)⟩
        ⟨(seg16AccX45 rho : Seg16.F), (seg16AccY45 rho : Seg16.F)⟩
        ⟨(rho 16120 : Seg16.F), (rho 16121 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3537, r3538, r3539, r3540, r3541, r3542, r3543, r3544, r3545, r3546, r3547, r3548, r3549, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3537 Seg16.relationLc255 Seg16.relationLc255Part0 Seg16.relationLc255Part1 Seg16.relationLc255Part2 at r3537
  unfold Seg16.relationRow3538 Seg16.relationLc256 Seg16.relationLc256Part0 Seg16.relationLc256Part1 at r3538
  unfold Seg16.relationRow3539 Seg16.relationLc257 Seg16.relationLc257Part0 Seg16.relationLc257Part1 at r3539
  unfold Seg16.relationRow3540 at r3540
  unfold Seg16.relationRow3541 at r3541
  unfold Seg16.relationRow3542 at r3542
  unfold Seg16.relationRow3543 Seg16.relationLc258 Seg16.relationLc258Part0 Seg16.relationLc258Part1 at r3543
  unfold Seg16.relationRow3544 Seg16.relationLc259 Seg16.relationLc259Part0 Seg16.relationLc259Part1 at r3544
  unfold Seg16.relationRow3545 at r3545
  unfold Seg16.relationRow3546 at r3546
  unfold Seg16.relationRow3547 at r3547
  unfold Seg16.relationRow3548 at r3548
  unfold Seg16.relationRow3549 at r3549
  have hrung44 (bit : Bool) (hbit : rho 15336 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX44 rho : Seg16.F), (seg16AccY44 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16107 : Seg16.F), (rho 16108 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX44 rho : Seg16.F), (seg16AccY44 rho : Seg16.F)⟩
        ⟨(rho 16107 : Seg16.F), (rho 16108 : Seg16.F)⟩
        ⟨(seg16AccX45 rho : Seg16.F), (seg16AccY45 rho : Seg16.F)⟩
        ⟨(rho 16120 : Seg16.F), (rho 16121 : Seg16.F)⟩ := by
    have ha0 : (rho 16107 + rho 16108) * (seg16AccX44 rho + seg16AccY44 rho) = rho 16109 := by
      rw [seg16LadderFlatX44_eq, seg16LadderFlatY44_eq]
      unfold seg16LadderFlatX44 seg16LadderFlatY44
      linear_combination r3537
    have ha1 : rho 16108 * seg16AccX44 rho = rho 16110 := by
      rw [seg16LadderFlatX44_eq]
      unfold seg16LadderFlatX44
      linear_combination r3538
    have ha2 : rho 16107 * seg16AccY44 rho = rho 16111 := by
      rw [seg16LadderFlatY44_eq]
      unfold seg16LadderFlatY44
      linear_combination r3539
    have ha3 : 3021 * rho 16110 * rho 16111 = rho 16112 := by
      linear_combination r3540
    have ha4 : rho 16113 * (1 + rho 16112) = rho 16110 + rho 16111 := by
      linear_combination r3541
    have ha5 : rho 16114 * (1 - rho 16112) = rho 16109 - rho 16110 - rho 16111 := by
      linear_combination r3542
    have haddx :
        rho 16113 * (1 + 3021 * (rho 16108 * seg16AccX44 rho) * (rho 16107 * seg16AccY44 rho)) =
          rho 16108 * seg16AccX44 rho + rho 16107 * seg16AccY44 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16114 * (1 - 3021 * (rho 16108 * seg16AccX44 rho) * (rho 16107 * seg16AccY44 rho)) =
          (-1) * (rho 16108 * seg16AccX44 rho) - rho 16107 * seg16AccY44 rho +
            (seg16AccY44 rho - seg16AccX44 rho * (-1)) * (rho 16107 + rho 16108) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16114 * (1 - rho 16112) = rho 16109 - rho 16110 - rho 16111 := ha5
        _ = (-1) * rho 16110 - rho 16111 + (seg16AccY44 rho - seg16AccX44 rho * (-1)) * (rho 16107 + rho 16108) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX45 rho = seg16AccX44 rho - Bool.toZMod bit * (seg16AccX44 rho - rho 16113) := by
      have hd : rho 16115 = Bool.toZMod bit * (rho 16113 - seg16AccX44 rho) := by
        rw [← hbit, seg16LadderFlatX44_eq]
        unfold seg16LadderFlatX44
        linear_combination -r3543
      unfold seg16AccX45
      linear_combination hd
    have hsely : seg16AccY45 rho = seg16AccY44 rho - Bool.toZMod bit * (seg16AccY44 rho - rho 16114) := by
      have hd : rho 16116 = Bool.toZMod bit * (rho 16114 - seg16AccY44 rho) := by
        rw [← hbit, seg16LadderFlatY44_eq]
        unfold seg16LadderFlatY44
        linear_combination -r3544
      unfold seg16AccY45
      linear_combination hd
    have hd0 : rho 16107 * rho 16108 = rho 16117 := by linear_combination r3545
    have hd1 : rho 16107 * rho 16107 = rho 16118 := by linear_combination r3546
    have hd2 : rho 16108 * rho 16108 = rho 16119 := by linear_combination r3547
    have hd3 : rho 16120 * (rho 16108 * rho 16108 + rho 16107 * rho 16107 * (-1)) = 2 * (rho 16107 * rho 16108) := by
      rw [hd0, hd1, hd2]
      linear_combination r3548
    have hd4 : rho 16121 * (2 - (rho 16108 * rho 16108 + rho 16107 * rho 16107 * (-1))) = rho 16108 * rho 16108 - rho 16107 * rho 16107 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3549
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX44 rho : Seg16.F), (seg16AccY44 rho : Seg16.F)⟩
      ⟨(rho 16107 : Seg16.F), (rho 16108 : Seg16.F)⟩
      ⟨(rho 16113 : Seg16.F), (rho 16114 : Seg16.F)⟩
      ⟨(seg16AccX45 rho : Seg16.F), (seg16AccY45 rho : Seg16.F)⟩
      ⟨(rho 16120 : Seg16.F), (rho 16121 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung44

theorem seg16_rung45 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15337 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX45 rho : Seg16.F), (seg16AccY45 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16120 : Seg16.F), (rho 16121 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX45 rho : Seg16.F), (seg16AccY45 rho : Seg16.F)⟩
        ⟨(rho 16120 : Seg16.F), (rho 16121 : Seg16.F)⟩
        ⟨(seg16AccX46 rho : Seg16.F), (seg16AccY46 rho : Seg16.F)⟩
        ⟨(rho 16133 : Seg16.F), (rho 16134 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3550, r3551, r3552, r3553, r3554, r3555, r3556, r3557, r3558, r3559, r3560, r3561, r3562, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3550 Seg16.relationLc260 Seg16.relationLc260Part0 Seg16.relationLc260Part1 Seg16.relationLc260Part2 at r3550
  unfold Seg16.relationRow3551 Seg16.relationLc261 Seg16.relationLc261Part0 Seg16.relationLc261Part1 at r3551
  unfold Seg16.relationRow3552 Seg16.relationLc262 Seg16.relationLc262Part0 Seg16.relationLc262Part1 at r3552
  unfold Seg16.relationRow3553 at r3553
  unfold Seg16.relationRow3554 at r3554
  unfold Seg16.relationRow3555 at r3555
  unfold Seg16.relationRow3556 Seg16.relationLc263 Seg16.relationLc263Part0 Seg16.relationLc263Part1 at r3556
  unfold Seg16.relationRow3557 Seg16.relationLc264 Seg16.relationLc264Part0 Seg16.relationLc264Part1 at r3557
  unfold Seg16.relationRow3558 at r3558
  unfold Seg16.relationRow3559 at r3559
  unfold Seg16.relationRow3560 at r3560
  unfold Seg16.relationRow3561 at r3561
  unfold Seg16.relationRow3562 at r3562
  have hrung45 (bit : Bool) (hbit : rho 15337 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX45 rho : Seg16.F), (seg16AccY45 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16120 : Seg16.F), (rho 16121 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX45 rho : Seg16.F), (seg16AccY45 rho : Seg16.F)⟩
        ⟨(rho 16120 : Seg16.F), (rho 16121 : Seg16.F)⟩
        ⟨(seg16AccX46 rho : Seg16.F), (seg16AccY46 rho : Seg16.F)⟩
        ⟨(rho 16133 : Seg16.F), (rho 16134 : Seg16.F)⟩ := by
    have ha0 : (rho 16120 + rho 16121) * (seg16AccX45 rho + seg16AccY45 rho) = rho 16122 := by
      rw [seg16LadderFlatX45_eq, seg16LadderFlatY45_eq]
      unfold seg16LadderFlatX45 seg16LadderFlatY45
      linear_combination r3550
    have ha1 : rho 16121 * seg16AccX45 rho = rho 16123 := by
      rw [seg16LadderFlatX45_eq]
      unfold seg16LadderFlatX45
      linear_combination r3551
    have ha2 : rho 16120 * seg16AccY45 rho = rho 16124 := by
      rw [seg16LadderFlatY45_eq]
      unfold seg16LadderFlatY45
      linear_combination r3552
    have ha3 : 3021 * rho 16123 * rho 16124 = rho 16125 := by
      linear_combination r3553
    have ha4 : rho 16126 * (1 + rho 16125) = rho 16123 + rho 16124 := by
      linear_combination r3554
    have ha5 : rho 16127 * (1 - rho 16125) = rho 16122 - rho 16123 - rho 16124 := by
      linear_combination r3555
    have haddx :
        rho 16126 * (1 + 3021 * (rho 16121 * seg16AccX45 rho) * (rho 16120 * seg16AccY45 rho)) =
          rho 16121 * seg16AccX45 rho + rho 16120 * seg16AccY45 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16127 * (1 - 3021 * (rho 16121 * seg16AccX45 rho) * (rho 16120 * seg16AccY45 rho)) =
          (-1) * (rho 16121 * seg16AccX45 rho) - rho 16120 * seg16AccY45 rho +
            (seg16AccY45 rho - seg16AccX45 rho * (-1)) * (rho 16120 + rho 16121) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16127 * (1 - rho 16125) = rho 16122 - rho 16123 - rho 16124 := ha5
        _ = (-1) * rho 16123 - rho 16124 + (seg16AccY45 rho - seg16AccX45 rho * (-1)) * (rho 16120 + rho 16121) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX46 rho = seg16AccX45 rho - Bool.toZMod bit * (seg16AccX45 rho - rho 16126) := by
      have hd : rho 16128 = Bool.toZMod bit * (rho 16126 - seg16AccX45 rho) := by
        rw [← hbit, seg16LadderFlatX45_eq]
        unfold seg16LadderFlatX45
        linear_combination -r3556
      unfold seg16AccX46
      linear_combination hd
    have hsely : seg16AccY46 rho = seg16AccY45 rho - Bool.toZMod bit * (seg16AccY45 rho - rho 16127) := by
      have hd : rho 16129 = Bool.toZMod bit * (rho 16127 - seg16AccY45 rho) := by
        rw [← hbit, seg16LadderFlatY45_eq]
        unfold seg16LadderFlatY45
        linear_combination -r3557
      unfold seg16AccY46
      linear_combination hd
    have hd0 : rho 16120 * rho 16121 = rho 16130 := by linear_combination r3558
    have hd1 : rho 16120 * rho 16120 = rho 16131 := by linear_combination r3559
    have hd2 : rho 16121 * rho 16121 = rho 16132 := by linear_combination r3560
    have hd3 : rho 16133 * (rho 16121 * rho 16121 + rho 16120 * rho 16120 * (-1)) = 2 * (rho 16120 * rho 16121) := by
      rw [hd0, hd1, hd2]
      linear_combination r3561
    have hd4 : rho 16134 * (2 - (rho 16121 * rho 16121 + rho 16120 * rho 16120 * (-1))) = rho 16121 * rho 16121 - rho 16120 * rho 16120 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3562
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX45 rho : Seg16.F), (seg16AccY45 rho : Seg16.F)⟩
      ⟨(rho 16120 : Seg16.F), (rho 16121 : Seg16.F)⟩
      ⟨(rho 16126 : Seg16.F), (rho 16127 : Seg16.F)⟩
      ⟨(seg16AccX46 rho : Seg16.F), (seg16AccY46 rho : Seg16.F)⟩
      ⟨(rho 16133 : Seg16.F), (rho 16134 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung45

theorem seg16_rung46 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15338 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX46 rho : Seg16.F), (seg16AccY46 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16133 : Seg16.F), (rho 16134 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX46 rho : Seg16.F), (seg16AccY46 rho : Seg16.F)⟩
        ⟨(rho 16133 : Seg16.F), (rho 16134 : Seg16.F)⟩
        ⟨(seg16AccX47 rho : Seg16.F), (seg16AccY47 rho : Seg16.F)⟩
        ⟨(rho 16146 : Seg16.F), (rho 16147 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3563, r3564, r3565, r3566, r3567, r3568, r3569, r3570, r3571, r3572, r3573, r3574, r3575, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3563 Seg16.relationLc265 Seg16.relationLc265Part0 Seg16.relationLc265Part1 Seg16.relationLc265Part2 at r3563
  unfold Seg16.relationRow3564 Seg16.relationLc266 Seg16.relationLc266Part0 Seg16.relationLc266Part1 at r3564
  unfold Seg16.relationRow3565 Seg16.relationLc267 Seg16.relationLc267Part0 Seg16.relationLc267Part1 at r3565
  unfold Seg16.relationRow3566 at r3566
  unfold Seg16.relationRow3567 at r3567
  unfold Seg16.relationRow3568 at r3568
  unfold Seg16.relationRow3569 Seg16.relationLc268 Seg16.relationLc268Part0 Seg16.relationLc268Part1 at r3569
  unfold Seg16.relationRow3570 Seg16.relationLc269 Seg16.relationLc269Part0 Seg16.relationLc269Part1 at r3570
  unfold Seg16.relationRow3571 at r3571
  unfold Seg16.relationRow3572 at r3572
  unfold Seg16.relationRow3573 at r3573
  unfold Seg16.relationRow3574 at r3574
  unfold Seg16.relationRow3575 at r3575
  have hrung46 (bit : Bool) (hbit : rho 15338 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX46 rho : Seg16.F), (seg16AccY46 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16133 : Seg16.F), (rho 16134 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX46 rho : Seg16.F), (seg16AccY46 rho : Seg16.F)⟩
        ⟨(rho 16133 : Seg16.F), (rho 16134 : Seg16.F)⟩
        ⟨(seg16AccX47 rho : Seg16.F), (seg16AccY47 rho : Seg16.F)⟩
        ⟨(rho 16146 : Seg16.F), (rho 16147 : Seg16.F)⟩ := by
    have ha0 : (rho 16133 + rho 16134) * (seg16AccX46 rho + seg16AccY46 rho) = rho 16135 := by
      rw [seg16LadderFlatX46_eq, seg16LadderFlatY46_eq]
      unfold seg16LadderFlatX46 seg16LadderFlatY46
      linear_combination r3563
    have ha1 : rho 16134 * seg16AccX46 rho = rho 16136 := by
      rw [seg16LadderFlatX46_eq]
      unfold seg16LadderFlatX46
      linear_combination r3564
    have ha2 : rho 16133 * seg16AccY46 rho = rho 16137 := by
      rw [seg16LadderFlatY46_eq]
      unfold seg16LadderFlatY46
      linear_combination r3565
    have ha3 : 3021 * rho 16136 * rho 16137 = rho 16138 := by
      linear_combination r3566
    have ha4 : rho 16139 * (1 + rho 16138) = rho 16136 + rho 16137 := by
      linear_combination r3567
    have ha5 : rho 16140 * (1 - rho 16138) = rho 16135 - rho 16136 - rho 16137 := by
      linear_combination r3568
    have haddx :
        rho 16139 * (1 + 3021 * (rho 16134 * seg16AccX46 rho) * (rho 16133 * seg16AccY46 rho)) =
          rho 16134 * seg16AccX46 rho + rho 16133 * seg16AccY46 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16140 * (1 - 3021 * (rho 16134 * seg16AccX46 rho) * (rho 16133 * seg16AccY46 rho)) =
          (-1) * (rho 16134 * seg16AccX46 rho) - rho 16133 * seg16AccY46 rho +
            (seg16AccY46 rho - seg16AccX46 rho * (-1)) * (rho 16133 + rho 16134) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16140 * (1 - rho 16138) = rho 16135 - rho 16136 - rho 16137 := ha5
        _ = (-1) * rho 16136 - rho 16137 + (seg16AccY46 rho - seg16AccX46 rho * (-1)) * (rho 16133 + rho 16134) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX47 rho = seg16AccX46 rho - Bool.toZMod bit * (seg16AccX46 rho - rho 16139) := by
      have hd : rho 16141 = Bool.toZMod bit * (rho 16139 - seg16AccX46 rho) := by
        rw [← hbit, seg16LadderFlatX46_eq]
        unfold seg16LadderFlatX46
        linear_combination -r3569
      unfold seg16AccX47
      linear_combination hd
    have hsely : seg16AccY47 rho = seg16AccY46 rho - Bool.toZMod bit * (seg16AccY46 rho - rho 16140) := by
      have hd : rho 16142 = Bool.toZMod bit * (rho 16140 - seg16AccY46 rho) := by
        rw [← hbit, seg16LadderFlatY46_eq]
        unfold seg16LadderFlatY46
        linear_combination -r3570
      unfold seg16AccY47
      linear_combination hd
    have hd0 : rho 16133 * rho 16134 = rho 16143 := by linear_combination r3571
    have hd1 : rho 16133 * rho 16133 = rho 16144 := by linear_combination r3572
    have hd2 : rho 16134 * rho 16134 = rho 16145 := by linear_combination r3573
    have hd3 : rho 16146 * (rho 16134 * rho 16134 + rho 16133 * rho 16133 * (-1)) = 2 * (rho 16133 * rho 16134) := by
      rw [hd0, hd1, hd2]
      linear_combination r3574
    have hd4 : rho 16147 * (2 - (rho 16134 * rho 16134 + rho 16133 * rho 16133 * (-1))) = rho 16134 * rho 16134 - rho 16133 * rho 16133 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3575
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX46 rho : Seg16.F), (seg16AccY46 rho : Seg16.F)⟩
      ⟨(rho 16133 : Seg16.F), (rho 16134 : Seg16.F)⟩
      ⟨(rho 16139 : Seg16.F), (rho 16140 : Seg16.F)⟩
      ⟨(seg16AccX47 rho : Seg16.F), (seg16AccY47 rho : Seg16.F)⟩
      ⟨(rho 16146 : Seg16.F), (rho 16147 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung46

theorem seg16_rung47 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15339 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX47 rho : Seg16.F), (seg16AccY47 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16146 : Seg16.F), (rho 16147 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX47 rho : Seg16.F), (seg16AccY47 rho : Seg16.F)⟩
        ⟨(rho 16146 : Seg16.F), (rho 16147 : Seg16.F)⟩
        ⟨(seg16AccX48 rho : Seg16.F), (seg16AccY48 rho : Seg16.F)⟩
        ⟨(rho 16159 : Seg16.F), (rho 16160 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3576, r3577, r3578, r3579, r3580, r3581, r3582, r3583, r3584, r3585, r3586, r3587, r3588, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3576 Seg16.relationLc270 Seg16.relationLc270Part0 Seg16.relationLc270Part1 Seg16.relationLc270Part2 at r3576
  unfold Seg16.relationRow3577 Seg16.relationLc271 Seg16.relationLc271Part0 Seg16.relationLc271Part1 at r3577
  unfold Seg16.relationRow3578 Seg16.relationLc272 Seg16.relationLc272Part0 Seg16.relationLc272Part1 at r3578
  unfold Seg16.relationRow3579 at r3579
  unfold Seg16.relationRow3580 at r3580
  unfold Seg16.relationRow3581 at r3581
  unfold Seg16.relationRow3582 Seg16.relationLc273 Seg16.relationLc273Part0 Seg16.relationLc273Part1 at r3582
  unfold Seg16.relationRow3583 Seg16.relationLc274 Seg16.relationLc274Part0 Seg16.relationLc274Part1 at r3583
  unfold Seg16.relationRow3584 at r3584
  unfold Seg16.relationRow3585 at r3585
  unfold Seg16.relationRow3586 at r3586
  unfold Seg16.relationRow3587 at r3587
  unfold Seg16.relationRow3588 at r3588
  have hrung47 (bit : Bool) (hbit : rho 15339 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX47 rho : Seg16.F), (seg16AccY47 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16146 : Seg16.F), (rho 16147 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX47 rho : Seg16.F), (seg16AccY47 rho : Seg16.F)⟩
        ⟨(rho 16146 : Seg16.F), (rho 16147 : Seg16.F)⟩
        ⟨(seg16AccX48 rho : Seg16.F), (seg16AccY48 rho : Seg16.F)⟩
        ⟨(rho 16159 : Seg16.F), (rho 16160 : Seg16.F)⟩ := by
    have ha0 : (rho 16146 + rho 16147) * (seg16AccX47 rho + seg16AccY47 rho) = rho 16148 := by
      rw [seg16LadderFlatX47_eq, seg16LadderFlatY47_eq]
      unfold seg16LadderFlatX47 seg16LadderFlatY47
      linear_combination r3576
    have ha1 : rho 16147 * seg16AccX47 rho = rho 16149 := by
      rw [seg16LadderFlatX47_eq]
      unfold seg16LadderFlatX47
      linear_combination r3577
    have ha2 : rho 16146 * seg16AccY47 rho = rho 16150 := by
      rw [seg16LadderFlatY47_eq]
      unfold seg16LadderFlatY47
      linear_combination r3578
    have ha3 : 3021 * rho 16149 * rho 16150 = rho 16151 := by
      linear_combination r3579
    have ha4 : rho 16152 * (1 + rho 16151) = rho 16149 + rho 16150 := by
      linear_combination r3580
    have ha5 : rho 16153 * (1 - rho 16151) = rho 16148 - rho 16149 - rho 16150 := by
      linear_combination r3581
    have haddx :
        rho 16152 * (1 + 3021 * (rho 16147 * seg16AccX47 rho) * (rho 16146 * seg16AccY47 rho)) =
          rho 16147 * seg16AccX47 rho + rho 16146 * seg16AccY47 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16153 * (1 - 3021 * (rho 16147 * seg16AccX47 rho) * (rho 16146 * seg16AccY47 rho)) =
          (-1) * (rho 16147 * seg16AccX47 rho) - rho 16146 * seg16AccY47 rho +
            (seg16AccY47 rho - seg16AccX47 rho * (-1)) * (rho 16146 + rho 16147) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16153 * (1 - rho 16151) = rho 16148 - rho 16149 - rho 16150 := ha5
        _ = (-1) * rho 16149 - rho 16150 + (seg16AccY47 rho - seg16AccX47 rho * (-1)) * (rho 16146 + rho 16147) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX48 rho = seg16AccX47 rho - Bool.toZMod bit * (seg16AccX47 rho - rho 16152) := by
      have hd : rho 16154 = Bool.toZMod bit * (rho 16152 - seg16AccX47 rho) := by
        rw [← hbit, seg16LadderFlatX47_eq]
        unfold seg16LadderFlatX47
        linear_combination -r3582
      unfold seg16AccX48
      linear_combination hd
    have hsely : seg16AccY48 rho = seg16AccY47 rho - Bool.toZMod bit * (seg16AccY47 rho - rho 16153) := by
      have hd : rho 16155 = Bool.toZMod bit * (rho 16153 - seg16AccY47 rho) := by
        rw [← hbit, seg16LadderFlatY47_eq]
        unfold seg16LadderFlatY47
        linear_combination -r3583
      unfold seg16AccY48
      linear_combination hd
    have hd0 : rho 16146 * rho 16147 = rho 16156 := by linear_combination r3584
    have hd1 : rho 16146 * rho 16146 = rho 16157 := by linear_combination r3585
    have hd2 : rho 16147 * rho 16147 = rho 16158 := by linear_combination r3586
    have hd3 : rho 16159 * (rho 16147 * rho 16147 + rho 16146 * rho 16146 * (-1)) = 2 * (rho 16146 * rho 16147) := by
      rw [hd0, hd1, hd2]
      linear_combination r3587
    have hd4 : rho 16160 * (2 - (rho 16147 * rho 16147 + rho 16146 * rho 16146 * (-1))) = rho 16147 * rho 16147 - rho 16146 * rho 16146 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3588
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX47 rho : Seg16.F), (seg16AccY47 rho : Seg16.F)⟩
      ⟨(rho 16146 : Seg16.F), (rho 16147 : Seg16.F)⟩
      ⟨(rho 16152 : Seg16.F), (rho 16153 : Seg16.F)⟩
      ⟨(seg16AccX48 rho : Seg16.F), (seg16AccY48 rho : Seg16.F)⟩
      ⟨(rho 16159 : Seg16.F), (rho 16160 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung47

theorem seg16_rung48 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15340 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX48 rho : Seg16.F), (seg16AccY48 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16159 : Seg16.F), (rho 16160 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX48 rho : Seg16.F), (seg16AccY48 rho : Seg16.F)⟩
        ⟨(rho 16159 : Seg16.F), (rho 16160 : Seg16.F)⟩
        ⟨(seg16AccX49 rho : Seg16.F), (seg16AccY49 rho : Seg16.F)⟩
        ⟨(rho 16172 : Seg16.F), (rho 16173 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3589, r3590, r3591, r3592, r3593, r3594, r3595, r3596, r3597, r3598, r3599⟩
  unfold Seg16.relationPart45 at p45
  rcases p45 with ⟨r3600, r3601, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3589 Seg16.relationLc275 Seg16.relationLc275Part0 Seg16.relationLc275Part1 Seg16.relationLc275Part2 Seg16.relationLc275Part3 at r3589
  unfold Seg16.relationRow3590 Seg16.relationLc276 Seg16.relationLc276Part0 Seg16.relationLc276Part1 at r3590
  unfold Seg16.relationRow3591 Seg16.relationLc277 Seg16.relationLc277Part0 Seg16.relationLc277Part1 at r3591
  unfold Seg16.relationRow3592 at r3592
  unfold Seg16.relationRow3593 at r3593
  unfold Seg16.relationRow3594 at r3594
  unfold Seg16.relationRow3595 Seg16.relationLc278 Seg16.relationLc278Part0 Seg16.relationLc278Part1 at r3595
  unfold Seg16.relationRow3596 Seg16.relationLc279 Seg16.relationLc279Part0 Seg16.relationLc279Part1 at r3596
  unfold Seg16.relationRow3597 at r3597
  unfold Seg16.relationRow3598 at r3598
  unfold Seg16.relationRow3599 at r3599
  unfold Seg16.relationRow3600 at r3600
  unfold Seg16.relationRow3601 at r3601
  have hrung48 (bit : Bool) (hbit : rho 15340 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX48 rho : Seg16.F), (seg16AccY48 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16159 : Seg16.F), (rho 16160 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX48 rho : Seg16.F), (seg16AccY48 rho : Seg16.F)⟩
        ⟨(rho 16159 : Seg16.F), (rho 16160 : Seg16.F)⟩
        ⟨(seg16AccX49 rho : Seg16.F), (seg16AccY49 rho : Seg16.F)⟩
        ⟨(rho 16172 : Seg16.F), (rho 16173 : Seg16.F)⟩ := by
    have ha0 : (rho 16159 + rho 16160) * (seg16AccX48 rho + seg16AccY48 rho) = rho 16161 := by
      rw [seg16LadderFlatX48_eq, seg16LadderFlatY48_eq]
      unfold seg16LadderFlatX48 seg16LadderFlatY48
      linear_combination r3589
    have ha1 : rho 16160 * seg16AccX48 rho = rho 16162 := by
      rw [seg16LadderFlatX48_eq]
      unfold seg16LadderFlatX48
      linear_combination r3590
    have ha2 : rho 16159 * seg16AccY48 rho = rho 16163 := by
      rw [seg16LadderFlatY48_eq]
      unfold seg16LadderFlatY48
      linear_combination r3591
    have ha3 : 3021 * rho 16162 * rho 16163 = rho 16164 := by
      linear_combination r3592
    have ha4 : rho 16165 * (1 + rho 16164) = rho 16162 + rho 16163 := by
      linear_combination r3593
    have ha5 : rho 16166 * (1 - rho 16164) = rho 16161 - rho 16162 - rho 16163 := by
      linear_combination r3594
    have haddx :
        rho 16165 * (1 + 3021 * (rho 16160 * seg16AccX48 rho) * (rho 16159 * seg16AccY48 rho)) =
          rho 16160 * seg16AccX48 rho + rho 16159 * seg16AccY48 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16166 * (1 - 3021 * (rho 16160 * seg16AccX48 rho) * (rho 16159 * seg16AccY48 rho)) =
          (-1) * (rho 16160 * seg16AccX48 rho) - rho 16159 * seg16AccY48 rho +
            (seg16AccY48 rho - seg16AccX48 rho * (-1)) * (rho 16159 + rho 16160) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16166 * (1 - rho 16164) = rho 16161 - rho 16162 - rho 16163 := ha5
        _ = (-1) * rho 16162 - rho 16163 + (seg16AccY48 rho - seg16AccX48 rho * (-1)) * (rho 16159 + rho 16160) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX49 rho = seg16AccX48 rho - Bool.toZMod bit * (seg16AccX48 rho - rho 16165) := by
      have hd : rho 16167 = Bool.toZMod bit * (rho 16165 - seg16AccX48 rho) := by
        rw [← hbit, seg16LadderFlatX48_eq]
        unfold seg16LadderFlatX48
        linear_combination -r3595
      unfold seg16AccX49
      linear_combination hd
    have hsely : seg16AccY49 rho = seg16AccY48 rho - Bool.toZMod bit * (seg16AccY48 rho - rho 16166) := by
      have hd : rho 16168 = Bool.toZMod bit * (rho 16166 - seg16AccY48 rho) := by
        rw [← hbit, seg16LadderFlatY48_eq]
        unfold seg16LadderFlatY48
        linear_combination -r3596
      unfold seg16AccY49
      linear_combination hd
    have hd0 : rho 16159 * rho 16160 = rho 16169 := by linear_combination r3597
    have hd1 : rho 16159 * rho 16159 = rho 16170 := by linear_combination r3598
    have hd2 : rho 16160 * rho 16160 = rho 16171 := by linear_combination r3599
    have hd3 : rho 16172 * (rho 16160 * rho 16160 + rho 16159 * rho 16159 * (-1)) = 2 * (rho 16159 * rho 16160) := by
      rw [hd0, hd1, hd2]
      linear_combination r3600
    have hd4 : rho 16173 * (2 - (rho 16160 * rho 16160 + rho 16159 * rho 16159 * (-1))) = rho 16160 * rho 16160 - rho 16159 * rho 16159 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3601
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX48 rho : Seg16.F), (seg16AccY48 rho : Seg16.F)⟩
      ⟨(rho 16159 : Seg16.F), (rho 16160 : Seg16.F)⟩
      ⟨(rho 16165 : Seg16.F), (rho 16166 : Seg16.F)⟩
      ⟨(seg16AccX49 rho : Seg16.F), (seg16AccY49 rho : Seg16.F)⟩
      ⟨(rho 16172 : Seg16.F), (rho 16173 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung48

theorem seg16_rung49 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15341 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX49 rho : Seg16.F), (seg16AccY49 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16172 : Seg16.F), (rho 16173 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX49 rho : Seg16.F), (seg16AccY49 rho : Seg16.F)⟩
        ⟨(rho 16172 : Seg16.F), (rho 16173 : Seg16.F)⟩
        ⟨(seg16AccX50 rho : Seg16.F), (seg16AccY50 rho : Seg16.F)⟩
        ⟨(rho 16185 : Seg16.F), (rho 16186 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart45 at p45
  rcases p45 with ⟨_, _, r3602, r3603, r3604, r3605, r3606, r3607, r3608, r3609, r3610, r3611, r3612, r3613, r3614, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3602 Seg16.relationLc280 Seg16.relationLc280Part0 Seg16.relationLc280Part1 Seg16.relationLc280Part2 Seg16.relationLc280Part3 at r3602
  unfold Seg16.relationRow3603 Seg16.relationLc281 Seg16.relationLc281Part0 Seg16.relationLc281Part1 at r3603
  unfold Seg16.relationRow3604 Seg16.relationLc282 Seg16.relationLc282Part0 Seg16.relationLc282Part1 at r3604
  unfold Seg16.relationRow3605 at r3605
  unfold Seg16.relationRow3606 at r3606
  unfold Seg16.relationRow3607 at r3607
  unfold Seg16.relationRow3608 Seg16.relationLc283 Seg16.relationLc283Part0 Seg16.relationLc283Part1 at r3608
  unfold Seg16.relationRow3609 Seg16.relationLc284 Seg16.relationLc284Part0 Seg16.relationLc284Part1 at r3609
  unfold Seg16.relationRow3610 at r3610
  unfold Seg16.relationRow3611 at r3611
  unfold Seg16.relationRow3612 at r3612
  unfold Seg16.relationRow3613 at r3613
  unfold Seg16.relationRow3614 at r3614
  have hrung49 (bit : Bool) (hbit : rho 15341 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX49 rho : Seg16.F), (seg16AccY49 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16172 : Seg16.F), (rho 16173 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX49 rho : Seg16.F), (seg16AccY49 rho : Seg16.F)⟩
        ⟨(rho 16172 : Seg16.F), (rho 16173 : Seg16.F)⟩
        ⟨(seg16AccX50 rho : Seg16.F), (seg16AccY50 rho : Seg16.F)⟩
        ⟨(rho 16185 : Seg16.F), (rho 16186 : Seg16.F)⟩ := by
    have ha0 : (rho 16172 + rho 16173) * (seg16AccX49 rho + seg16AccY49 rho) = rho 16174 := by
      rw [seg16LadderFlatX49_eq, seg16LadderFlatY49_eq]
      unfold seg16LadderFlatX49 seg16LadderFlatY49
      linear_combination r3602
    have ha1 : rho 16173 * seg16AccX49 rho = rho 16175 := by
      rw [seg16LadderFlatX49_eq]
      unfold seg16LadderFlatX49
      linear_combination r3603
    have ha2 : rho 16172 * seg16AccY49 rho = rho 16176 := by
      rw [seg16LadderFlatY49_eq]
      unfold seg16LadderFlatY49
      linear_combination r3604
    have ha3 : 3021 * rho 16175 * rho 16176 = rho 16177 := by
      linear_combination r3605
    have ha4 : rho 16178 * (1 + rho 16177) = rho 16175 + rho 16176 := by
      linear_combination r3606
    have ha5 : rho 16179 * (1 - rho 16177) = rho 16174 - rho 16175 - rho 16176 := by
      linear_combination r3607
    have haddx :
        rho 16178 * (1 + 3021 * (rho 16173 * seg16AccX49 rho) * (rho 16172 * seg16AccY49 rho)) =
          rho 16173 * seg16AccX49 rho + rho 16172 * seg16AccY49 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16179 * (1 - 3021 * (rho 16173 * seg16AccX49 rho) * (rho 16172 * seg16AccY49 rho)) =
          (-1) * (rho 16173 * seg16AccX49 rho) - rho 16172 * seg16AccY49 rho +
            (seg16AccY49 rho - seg16AccX49 rho * (-1)) * (rho 16172 + rho 16173) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16179 * (1 - rho 16177) = rho 16174 - rho 16175 - rho 16176 := ha5
        _ = (-1) * rho 16175 - rho 16176 + (seg16AccY49 rho - seg16AccX49 rho * (-1)) * (rho 16172 + rho 16173) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX50 rho = seg16AccX49 rho - Bool.toZMod bit * (seg16AccX49 rho - rho 16178) := by
      have hd : rho 16180 = Bool.toZMod bit * (rho 16178 - seg16AccX49 rho) := by
        rw [← hbit, seg16LadderFlatX49_eq]
        unfold seg16LadderFlatX49
        linear_combination -r3608
      unfold seg16AccX50
      linear_combination hd
    have hsely : seg16AccY50 rho = seg16AccY49 rho - Bool.toZMod bit * (seg16AccY49 rho - rho 16179) := by
      have hd : rho 16181 = Bool.toZMod bit * (rho 16179 - seg16AccY49 rho) := by
        rw [← hbit, seg16LadderFlatY49_eq]
        unfold seg16LadderFlatY49
        linear_combination -r3609
      unfold seg16AccY50
      linear_combination hd
    have hd0 : rho 16172 * rho 16173 = rho 16182 := by linear_combination r3610
    have hd1 : rho 16172 * rho 16172 = rho 16183 := by linear_combination r3611
    have hd2 : rho 16173 * rho 16173 = rho 16184 := by linear_combination r3612
    have hd3 : rho 16185 * (rho 16173 * rho 16173 + rho 16172 * rho 16172 * (-1)) = 2 * (rho 16172 * rho 16173) := by
      rw [hd0, hd1, hd2]
      linear_combination r3613
    have hd4 : rho 16186 * (2 - (rho 16173 * rho 16173 + rho 16172 * rho 16172 * (-1))) = rho 16173 * rho 16173 - rho 16172 * rho 16172 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3614
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX49 rho : Seg16.F), (seg16AccY49 rho : Seg16.F)⟩
      ⟨(rho 16172 : Seg16.F), (rho 16173 : Seg16.F)⟩
      ⟨(rho 16178 : Seg16.F), (rho 16179 : Seg16.F)⟩
      ⟨(seg16AccX50 rho : Seg16.F), (seg16AccY50 rho : Seg16.F)⟩
      ⟨(rho 16185 : Seg16.F), (rho 16186 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung49

theorem seg16_rung50 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15342 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX50 rho : Seg16.F), (seg16AccY50 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16185 : Seg16.F), (rho 16186 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX50 rho : Seg16.F), (seg16AccY50 rho : Seg16.F)⟩
        ⟨(rho 16185 : Seg16.F), (rho 16186 : Seg16.F)⟩
        ⟨(seg16AccX51 rho : Seg16.F), (seg16AccY51 rho : Seg16.F)⟩
        ⟨(rho 16198 : Seg16.F), (rho 16199 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3615, r3616, r3617, r3618, r3619, r3620, r3621, r3622, r3623, r3624, r3625, r3626, r3627, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3615 Seg16.relationLc285 Seg16.relationLc285Part0 Seg16.relationLc285Part1 Seg16.relationLc285Part2 Seg16.relationLc285Part3 at r3615
  unfold Seg16.relationRow3616 Seg16.relationLc286 Seg16.relationLc286Part0 Seg16.relationLc286Part1 at r3616
  unfold Seg16.relationRow3617 Seg16.relationLc287 Seg16.relationLc287Part0 Seg16.relationLc287Part1 at r3617
  unfold Seg16.relationRow3618 at r3618
  unfold Seg16.relationRow3619 at r3619
  unfold Seg16.relationRow3620 at r3620
  unfold Seg16.relationRow3621 Seg16.relationLc288 Seg16.relationLc288Part0 Seg16.relationLc288Part1 at r3621
  unfold Seg16.relationRow3622 Seg16.relationLc289 Seg16.relationLc289Part0 Seg16.relationLc289Part1 at r3622
  unfold Seg16.relationRow3623 at r3623
  unfold Seg16.relationRow3624 at r3624
  unfold Seg16.relationRow3625 at r3625
  unfold Seg16.relationRow3626 at r3626
  unfold Seg16.relationRow3627 at r3627
  have hrung50 (bit : Bool) (hbit : rho 15342 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX50 rho : Seg16.F), (seg16AccY50 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16185 : Seg16.F), (rho 16186 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX50 rho : Seg16.F), (seg16AccY50 rho : Seg16.F)⟩
        ⟨(rho 16185 : Seg16.F), (rho 16186 : Seg16.F)⟩
        ⟨(seg16AccX51 rho : Seg16.F), (seg16AccY51 rho : Seg16.F)⟩
        ⟨(rho 16198 : Seg16.F), (rho 16199 : Seg16.F)⟩ := by
    have ha0 : (rho 16185 + rho 16186) * (seg16AccX50 rho + seg16AccY50 rho) = rho 16187 := by
      rw [seg16LadderFlatX50_eq, seg16LadderFlatY50_eq]
      unfold seg16LadderFlatX50 seg16LadderFlatY50
      linear_combination r3615
    have ha1 : rho 16186 * seg16AccX50 rho = rho 16188 := by
      rw [seg16LadderFlatX50_eq]
      unfold seg16LadderFlatX50
      linear_combination r3616
    have ha2 : rho 16185 * seg16AccY50 rho = rho 16189 := by
      rw [seg16LadderFlatY50_eq]
      unfold seg16LadderFlatY50
      linear_combination r3617
    have ha3 : 3021 * rho 16188 * rho 16189 = rho 16190 := by
      linear_combination r3618
    have ha4 : rho 16191 * (1 + rho 16190) = rho 16188 + rho 16189 := by
      linear_combination r3619
    have ha5 : rho 16192 * (1 - rho 16190) = rho 16187 - rho 16188 - rho 16189 := by
      linear_combination r3620
    have haddx :
        rho 16191 * (1 + 3021 * (rho 16186 * seg16AccX50 rho) * (rho 16185 * seg16AccY50 rho)) =
          rho 16186 * seg16AccX50 rho + rho 16185 * seg16AccY50 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16192 * (1 - 3021 * (rho 16186 * seg16AccX50 rho) * (rho 16185 * seg16AccY50 rho)) =
          (-1) * (rho 16186 * seg16AccX50 rho) - rho 16185 * seg16AccY50 rho +
            (seg16AccY50 rho - seg16AccX50 rho * (-1)) * (rho 16185 + rho 16186) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16192 * (1 - rho 16190) = rho 16187 - rho 16188 - rho 16189 := ha5
        _ = (-1) * rho 16188 - rho 16189 + (seg16AccY50 rho - seg16AccX50 rho * (-1)) * (rho 16185 + rho 16186) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX51 rho = seg16AccX50 rho - Bool.toZMod bit * (seg16AccX50 rho - rho 16191) := by
      have hd : rho 16193 = Bool.toZMod bit * (rho 16191 - seg16AccX50 rho) := by
        rw [← hbit, seg16LadderFlatX50_eq]
        unfold seg16LadderFlatX50
        linear_combination -r3621
      unfold seg16AccX51
      linear_combination hd
    have hsely : seg16AccY51 rho = seg16AccY50 rho - Bool.toZMod bit * (seg16AccY50 rho - rho 16192) := by
      have hd : rho 16194 = Bool.toZMod bit * (rho 16192 - seg16AccY50 rho) := by
        rw [← hbit, seg16LadderFlatY50_eq]
        unfold seg16LadderFlatY50
        linear_combination -r3622
      unfold seg16AccY51
      linear_combination hd
    have hd0 : rho 16185 * rho 16186 = rho 16195 := by linear_combination r3623
    have hd1 : rho 16185 * rho 16185 = rho 16196 := by linear_combination r3624
    have hd2 : rho 16186 * rho 16186 = rho 16197 := by linear_combination r3625
    have hd3 : rho 16198 * (rho 16186 * rho 16186 + rho 16185 * rho 16185 * (-1)) = 2 * (rho 16185 * rho 16186) := by
      rw [hd0, hd1, hd2]
      linear_combination r3626
    have hd4 : rho 16199 * (2 - (rho 16186 * rho 16186 + rho 16185 * rho 16185 * (-1))) = rho 16186 * rho 16186 - rho 16185 * rho 16185 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3627
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX50 rho : Seg16.F), (seg16AccY50 rho : Seg16.F)⟩
      ⟨(rho 16185 : Seg16.F), (rho 16186 : Seg16.F)⟩
      ⟨(rho 16191 : Seg16.F), (rho 16192 : Seg16.F)⟩
      ⟨(seg16AccX51 rho : Seg16.F), (seg16AccY51 rho : Seg16.F)⟩
      ⟨(rho 16198 : Seg16.F), (rho 16199 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung50

theorem seg16_rung51 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15343 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX51 rho : Seg16.F), (seg16AccY51 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16198 : Seg16.F), (rho 16199 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX51 rho : Seg16.F), (seg16AccY51 rho : Seg16.F)⟩
        ⟨(rho 16198 : Seg16.F), (rho 16199 : Seg16.F)⟩
        ⟨(seg16AccX52 rho : Seg16.F), (seg16AccY52 rho : Seg16.F)⟩
        ⟨(rho 16211 : Seg16.F), (rho 16212 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3628, r3629, r3630, r3631, r3632, r3633, r3634, r3635, r3636, r3637, r3638, r3639, r3640, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3628 Seg16.relationLc290 Seg16.relationLc290Part0 Seg16.relationLc290Part1 Seg16.relationLc290Part2 Seg16.relationLc290Part3 at r3628
  unfold Seg16.relationRow3629 Seg16.relationLc291 Seg16.relationLc291Part0 Seg16.relationLc291Part1 at r3629
  unfold Seg16.relationRow3630 Seg16.relationLc292 Seg16.relationLc292Part0 Seg16.relationLc292Part1 at r3630
  unfold Seg16.relationRow3631 at r3631
  unfold Seg16.relationRow3632 at r3632
  unfold Seg16.relationRow3633 at r3633
  unfold Seg16.relationRow3634 Seg16.relationLc293 Seg16.relationLc293Part0 Seg16.relationLc293Part1 at r3634
  unfold Seg16.relationRow3635 Seg16.relationLc294 Seg16.relationLc294Part0 Seg16.relationLc294Part1 at r3635
  unfold Seg16.relationRow3636 at r3636
  unfold Seg16.relationRow3637 at r3637
  unfold Seg16.relationRow3638 at r3638
  unfold Seg16.relationRow3639 at r3639
  unfold Seg16.relationRow3640 at r3640
  have hrung51 (bit : Bool) (hbit : rho 15343 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX51 rho : Seg16.F), (seg16AccY51 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16198 : Seg16.F), (rho 16199 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX51 rho : Seg16.F), (seg16AccY51 rho : Seg16.F)⟩
        ⟨(rho 16198 : Seg16.F), (rho 16199 : Seg16.F)⟩
        ⟨(seg16AccX52 rho : Seg16.F), (seg16AccY52 rho : Seg16.F)⟩
        ⟨(rho 16211 : Seg16.F), (rho 16212 : Seg16.F)⟩ := by
    have ha0 : (rho 16198 + rho 16199) * (seg16AccX51 rho + seg16AccY51 rho) = rho 16200 := by
      rw [seg16LadderFlatX51_eq, seg16LadderFlatY51_eq]
      unfold seg16LadderFlatX51 seg16LadderFlatY51
      linear_combination r3628
    have ha1 : rho 16199 * seg16AccX51 rho = rho 16201 := by
      rw [seg16LadderFlatX51_eq]
      unfold seg16LadderFlatX51
      linear_combination r3629
    have ha2 : rho 16198 * seg16AccY51 rho = rho 16202 := by
      rw [seg16LadderFlatY51_eq]
      unfold seg16LadderFlatY51
      linear_combination r3630
    have ha3 : 3021 * rho 16201 * rho 16202 = rho 16203 := by
      linear_combination r3631
    have ha4 : rho 16204 * (1 + rho 16203) = rho 16201 + rho 16202 := by
      linear_combination r3632
    have ha5 : rho 16205 * (1 - rho 16203) = rho 16200 - rho 16201 - rho 16202 := by
      linear_combination r3633
    have haddx :
        rho 16204 * (1 + 3021 * (rho 16199 * seg16AccX51 rho) * (rho 16198 * seg16AccY51 rho)) =
          rho 16199 * seg16AccX51 rho + rho 16198 * seg16AccY51 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16205 * (1 - 3021 * (rho 16199 * seg16AccX51 rho) * (rho 16198 * seg16AccY51 rho)) =
          (-1) * (rho 16199 * seg16AccX51 rho) - rho 16198 * seg16AccY51 rho +
            (seg16AccY51 rho - seg16AccX51 rho * (-1)) * (rho 16198 + rho 16199) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16205 * (1 - rho 16203) = rho 16200 - rho 16201 - rho 16202 := ha5
        _ = (-1) * rho 16201 - rho 16202 + (seg16AccY51 rho - seg16AccX51 rho * (-1)) * (rho 16198 + rho 16199) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX52 rho = seg16AccX51 rho - Bool.toZMod bit * (seg16AccX51 rho - rho 16204) := by
      have hd : rho 16206 = Bool.toZMod bit * (rho 16204 - seg16AccX51 rho) := by
        rw [← hbit, seg16LadderFlatX51_eq]
        unfold seg16LadderFlatX51
        linear_combination -r3634
      unfold seg16AccX52
      linear_combination hd
    have hsely : seg16AccY52 rho = seg16AccY51 rho - Bool.toZMod bit * (seg16AccY51 rho - rho 16205) := by
      have hd : rho 16207 = Bool.toZMod bit * (rho 16205 - seg16AccY51 rho) := by
        rw [← hbit, seg16LadderFlatY51_eq]
        unfold seg16LadderFlatY51
        linear_combination -r3635
      unfold seg16AccY52
      linear_combination hd
    have hd0 : rho 16198 * rho 16199 = rho 16208 := by linear_combination r3636
    have hd1 : rho 16198 * rho 16198 = rho 16209 := by linear_combination r3637
    have hd2 : rho 16199 * rho 16199 = rho 16210 := by linear_combination r3638
    have hd3 : rho 16211 * (rho 16199 * rho 16199 + rho 16198 * rho 16198 * (-1)) = 2 * (rho 16198 * rho 16199) := by
      rw [hd0, hd1, hd2]
      linear_combination r3639
    have hd4 : rho 16212 * (2 - (rho 16199 * rho 16199 + rho 16198 * rho 16198 * (-1))) = rho 16199 * rho 16199 - rho 16198 * rho 16198 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3640
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX51 rho : Seg16.F), (seg16AccY51 rho : Seg16.F)⟩
      ⟨(rho 16198 : Seg16.F), (rho 16199 : Seg16.F)⟩
      ⟨(rho 16204 : Seg16.F), (rho 16205 : Seg16.F)⟩
      ⟨(seg16AccX52 rho : Seg16.F), (seg16AccY52 rho : Seg16.F)⟩
      ⟨(rho 16211 : Seg16.F), (rho 16212 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung51

theorem seg16_rung52 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15344 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX52 rho : Seg16.F), (seg16AccY52 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16211 : Seg16.F), (rho 16212 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX52 rho : Seg16.F), (seg16AccY52 rho : Seg16.F)⟩
        ⟨(rho 16211 : Seg16.F), (rho 16212 : Seg16.F)⟩
        ⟨(seg16AccX53 rho : Seg16.F), (seg16AccY53 rho : Seg16.F)⟩
        ⟨(rho 16224 : Seg16.F), (rho 16225 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3641, r3642, r3643, r3644, r3645, r3646, r3647, r3648, r3649, r3650, r3651, r3652, r3653, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3641 Seg16.relationLc295 Seg16.relationLc295Part0 Seg16.relationLc295Part1 Seg16.relationLc295Part2 Seg16.relationLc295Part3 at r3641
  unfold Seg16.relationRow3642 Seg16.relationLc296 Seg16.relationLc296Part0 Seg16.relationLc296Part1 at r3642
  unfold Seg16.relationRow3643 Seg16.relationLc297 Seg16.relationLc297Part0 Seg16.relationLc297Part1 at r3643
  unfold Seg16.relationRow3644 at r3644
  unfold Seg16.relationRow3645 at r3645
  unfold Seg16.relationRow3646 at r3646
  unfold Seg16.relationRow3647 Seg16.relationLc298 Seg16.relationLc298Part0 Seg16.relationLc298Part1 at r3647
  unfold Seg16.relationRow3648 Seg16.relationLc299 Seg16.relationLc299Part0 Seg16.relationLc299Part1 at r3648
  unfold Seg16.relationRow3649 at r3649
  unfold Seg16.relationRow3650 at r3650
  unfold Seg16.relationRow3651 at r3651
  unfold Seg16.relationRow3652 at r3652
  unfold Seg16.relationRow3653 at r3653
  have hrung52 (bit : Bool) (hbit : rho 15344 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX52 rho : Seg16.F), (seg16AccY52 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16211 : Seg16.F), (rho 16212 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX52 rho : Seg16.F), (seg16AccY52 rho : Seg16.F)⟩
        ⟨(rho 16211 : Seg16.F), (rho 16212 : Seg16.F)⟩
        ⟨(seg16AccX53 rho : Seg16.F), (seg16AccY53 rho : Seg16.F)⟩
        ⟨(rho 16224 : Seg16.F), (rho 16225 : Seg16.F)⟩ := by
    have ha0 : (rho 16211 + rho 16212) * (seg16AccX52 rho + seg16AccY52 rho) = rho 16213 := by
      rw [seg16LadderFlatX52_eq, seg16LadderFlatY52_eq]
      unfold seg16LadderFlatX52 seg16LadderFlatY52
      linear_combination r3641
    have ha1 : rho 16212 * seg16AccX52 rho = rho 16214 := by
      rw [seg16LadderFlatX52_eq]
      unfold seg16LadderFlatX52
      linear_combination r3642
    have ha2 : rho 16211 * seg16AccY52 rho = rho 16215 := by
      rw [seg16LadderFlatY52_eq]
      unfold seg16LadderFlatY52
      linear_combination r3643
    have ha3 : 3021 * rho 16214 * rho 16215 = rho 16216 := by
      linear_combination r3644
    have ha4 : rho 16217 * (1 + rho 16216) = rho 16214 + rho 16215 := by
      linear_combination r3645
    have ha5 : rho 16218 * (1 - rho 16216) = rho 16213 - rho 16214 - rho 16215 := by
      linear_combination r3646
    have haddx :
        rho 16217 * (1 + 3021 * (rho 16212 * seg16AccX52 rho) * (rho 16211 * seg16AccY52 rho)) =
          rho 16212 * seg16AccX52 rho + rho 16211 * seg16AccY52 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16218 * (1 - 3021 * (rho 16212 * seg16AccX52 rho) * (rho 16211 * seg16AccY52 rho)) =
          (-1) * (rho 16212 * seg16AccX52 rho) - rho 16211 * seg16AccY52 rho +
            (seg16AccY52 rho - seg16AccX52 rho * (-1)) * (rho 16211 + rho 16212) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16218 * (1 - rho 16216) = rho 16213 - rho 16214 - rho 16215 := ha5
        _ = (-1) * rho 16214 - rho 16215 + (seg16AccY52 rho - seg16AccX52 rho * (-1)) * (rho 16211 + rho 16212) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX53 rho = seg16AccX52 rho - Bool.toZMod bit * (seg16AccX52 rho - rho 16217) := by
      have hd : rho 16219 = Bool.toZMod bit * (rho 16217 - seg16AccX52 rho) := by
        rw [← hbit, seg16LadderFlatX52_eq]
        unfold seg16LadderFlatX52
        linear_combination -r3647
      unfold seg16AccX53
      linear_combination hd
    have hsely : seg16AccY53 rho = seg16AccY52 rho - Bool.toZMod bit * (seg16AccY52 rho - rho 16218) := by
      have hd : rho 16220 = Bool.toZMod bit * (rho 16218 - seg16AccY52 rho) := by
        rw [← hbit, seg16LadderFlatY52_eq]
        unfold seg16LadderFlatY52
        linear_combination -r3648
      unfold seg16AccY53
      linear_combination hd
    have hd0 : rho 16211 * rho 16212 = rho 16221 := by linear_combination r3649
    have hd1 : rho 16211 * rho 16211 = rho 16222 := by linear_combination r3650
    have hd2 : rho 16212 * rho 16212 = rho 16223 := by linear_combination r3651
    have hd3 : rho 16224 * (rho 16212 * rho 16212 + rho 16211 * rho 16211 * (-1)) = 2 * (rho 16211 * rho 16212) := by
      rw [hd0, hd1, hd2]
      linear_combination r3652
    have hd4 : rho 16225 * (2 - (rho 16212 * rho 16212 + rho 16211 * rho 16211 * (-1))) = rho 16212 * rho 16212 - rho 16211 * rho 16211 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3653
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX52 rho : Seg16.F), (seg16AccY52 rho : Seg16.F)⟩
      ⟨(rho 16211 : Seg16.F), (rho 16212 : Seg16.F)⟩
      ⟨(rho 16217 : Seg16.F), (rho 16218 : Seg16.F)⟩
      ⟨(seg16AccX53 rho : Seg16.F), (seg16AccY53 rho : Seg16.F)⟩
      ⟨(rho 16224 : Seg16.F), (rho 16225 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung52

theorem seg16_rung53 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15345 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX53 rho : Seg16.F), (seg16AccY53 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16224 : Seg16.F), (rho 16225 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX53 rho : Seg16.F), (seg16AccY53 rho : Seg16.F)⟩
        ⟨(rho 16224 : Seg16.F), (rho 16225 : Seg16.F)⟩
        ⟨(seg16AccX54 rho : Seg16.F), (seg16AccY54 rho : Seg16.F)⟩
        ⟨(rho 16237 : Seg16.F), (rho 16238 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3654, r3655, r3656, r3657, r3658, r3659, r3660, r3661, r3662, r3663, r3664, r3665, r3666, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3654 Seg16.relationLc300 Seg16.relationLc300Part0 Seg16.relationLc300Part1 Seg16.relationLc300Part2 Seg16.relationLc300Part3 at r3654
  unfold Seg16.relationRow3655 Seg16.relationLc301 Seg16.relationLc301Part0 Seg16.relationLc301Part1 at r3655
  unfold Seg16.relationRow3656 Seg16.relationLc302 Seg16.relationLc302Part0 Seg16.relationLc302Part1 at r3656
  unfold Seg16.relationRow3657 at r3657
  unfold Seg16.relationRow3658 at r3658
  unfold Seg16.relationRow3659 at r3659
  unfold Seg16.relationRow3660 Seg16.relationLc303 Seg16.relationLc303Part0 Seg16.relationLc303Part1 at r3660
  unfold Seg16.relationRow3661 Seg16.relationLc304 Seg16.relationLc304Part0 Seg16.relationLc304Part1 at r3661
  unfold Seg16.relationRow3662 at r3662
  unfold Seg16.relationRow3663 at r3663
  unfold Seg16.relationRow3664 at r3664
  unfold Seg16.relationRow3665 at r3665
  unfold Seg16.relationRow3666 at r3666
  have hrung53 (bit : Bool) (hbit : rho 15345 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX53 rho : Seg16.F), (seg16AccY53 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16224 : Seg16.F), (rho 16225 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX53 rho : Seg16.F), (seg16AccY53 rho : Seg16.F)⟩
        ⟨(rho 16224 : Seg16.F), (rho 16225 : Seg16.F)⟩
        ⟨(seg16AccX54 rho : Seg16.F), (seg16AccY54 rho : Seg16.F)⟩
        ⟨(rho 16237 : Seg16.F), (rho 16238 : Seg16.F)⟩ := by
    have ha0 : (rho 16224 + rho 16225) * (seg16AccX53 rho + seg16AccY53 rho) = rho 16226 := by
      rw [seg16LadderFlatX53_eq, seg16LadderFlatY53_eq]
      unfold seg16LadderFlatX53 seg16LadderFlatY53
      linear_combination r3654
    have ha1 : rho 16225 * seg16AccX53 rho = rho 16227 := by
      rw [seg16LadderFlatX53_eq]
      unfold seg16LadderFlatX53
      linear_combination r3655
    have ha2 : rho 16224 * seg16AccY53 rho = rho 16228 := by
      rw [seg16LadderFlatY53_eq]
      unfold seg16LadderFlatY53
      linear_combination r3656
    have ha3 : 3021 * rho 16227 * rho 16228 = rho 16229 := by
      linear_combination r3657
    have ha4 : rho 16230 * (1 + rho 16229) = rho 16227 + rho 16228 := by
      linear_combination r3658
    have ha5 : rho 16231 * (1 - rho 16229) = rho 16226 - rho 16227 - rho 16228 := by
      linear_combination r3659
    have haddx :
        rho 16230 * (1 + 3021 * (rho 16225 * seg16AccX53 rho) * (rho 16224 * seg16AccY53 rho)) =
          rho 16225 * seg16AccX53 rho + rho 16224 * seg16AccY53 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16231 * (1 - 3021 * (rho 16225 * seg16AccX53 rho) * (rho 16224 * seg16AccY53 rho)) =
          (-1) * (rho 16225 * seg16AccX53 rho) - rho 16224 * seg16AccY53 rho +
            (seg16AccY53 rho - seg16AccX53 rho * (-1)) * (rho 16224 + rho 16225) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16231 * (1 - rho 16229) = rho 16226 - rho 16227 - rho 16228 := ha5
        _ = (-1) * rho 16227 - rho 16228 + (seg16AccY53 rho - seg16AccX53 rho * (-1)) * (rho 16224 + rho 16225) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX54 rho = seg16AccX53 rho - Bool.toZMod bit * (seg16AccX53 rho - rho 16230) := by
      have hd : rho 16232 = Bool.toZMod bit * (rho 16230 - seg16AccX53 rho) := by
        rw [← hbit, seg16LadderFlatX53_eq]
        unfold seg16LadderFlatX53
        linear_combination -r3660
      unfold seg16AccX54
      linear_combination hd
    have hsely : seg16AccY54 rho = seg16AccY53 rho - Bool.toZMod bit * (seg16AccY53 rho - rho 16231) := by
      have hd : rho 16233 = Bool.toZMod bit * (rho 16231 - seg16AccY53 rho) := by
        rw [← hbit, seg16LadderFlatY53_eq]
        unfold seg16LadderFlatY53
        linear_combination -r3661
      unfold seg16AccY54
      linear_combination hd
    have hd0 : rho 16224 * rho 16225 = rho 16234 := by linear_combination r3662
    have hd1 : rho 16224 * rho 16224 = rho 16235 := by linear_combination r3663
    have hd2 : rho 16225 * rho 16225 = rho 16236 := by linear_combination r3664
    have hd3 : rho 16237 * (rho 16225 * rho 16225 + rho 16224 * rho 16224 * (-1)) = 2 * (rho 16224 * rho 16225) := by
      rw [hd0, hd1, hd2]
      linear_combination r3665
    have hd4 : rho 16238 * (2 - (rho 16225 * rho 16225 + rho 16224 * rho 16224 * (-1))) = rho 16225 * rho 16225 - rho 16224 * rho 16224 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3666
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX53 rho : Seg16.F), (seg16AccY53 rho : Seg16.F)⟩
      ⟨(rho 16224 : Seg16.F), (rho 16225 : Seg16.F)⟩
      ⟨(rho 16230 : Seg16.F), (rho 16231 : Seg16.F)⟩
      ⟨(seg16AccX54 rho : Seg16.F), (seg16AccY54 rho : Seg16.F)⟩
      ⟨(rho 16237 : Seg16.F), (rho 16238 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung53

theorem seg16_rung54 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15346 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX54 rho : Seg16.F), (seg16AccY54 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16237 : Seg16.F), (rho 16238 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX54 rho : Seg16.F), (seg16AccY54 rho : Seg16.F)⟩
        ⟨(rho 16237 : Seg16.F), (rho 16238 : Seg16.F)⟩
        ⟨(seg16AccX55 rho : Seg16.F), (seg16AccY55 rho : Seg16.F)⟩
        ⟨(rho 16250 : Seg16.F), (rho 16251 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3667, r3668, r3669, r3670, r3671, r3672, r3673, r3674, r3675, r3676, r3677, r3678, r3679⟩
  unfold Seg16.relationRow3667 Seg16.relationLc305 Seg16.relationLc305Part0 Seg16.relationLc305Part1 Seg16.relationLc305Part2 Seg16.relationLc305Part3 at r3667
  unfold Seg16.relationRow3668 Seg16.relationLc306 Seg16.relationLc306Part0 Seg16.relationLc306Part1 at r3668
  unfold Seg16.relationRow3669 Seg16.relationLc307 Seg16.relationLc307Part0 Seg16.relationLc307Part1 at r3669
  unfold Seg16.relationRow3670 at r3670
  unfold Seg16.relationRow3671 at r3671
  unfold Seg16.relationRow3672 at r3672
  unfold Seg16.relationRow3673 Seg16.relationLc308 Seg16.relationLc308Part0 Seg16.relationLc308Part1 at r3673
  unfold Seg16.relationRow3674 Seg16.relationLc309 Seg16.relationLc309Part0 Seg16.relationLc309Part1 at r3674
  unfold Seg16.relationRow3675 at r3675
  unfold Seg16.relationRow3676 at r3676
  unfold Seg16.relationRow3677 at r3677
  unfold Seg16.relationRow3678 at r3678
  unfold Seg16.relationRow3679 at r3679
  have hrung54 (bit : Bool) (hbit : rho 15346 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX54 rho : Seg16.F), (seg16AccY54 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16237 : Seg16.F), (rho 16238 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX54 rho : Seg16.F), (seg16AccY54 rho : Seg16.F)⟩
        ⟨(rho 16237 : Seg16.F), (rho 16238 : Seg16.F)⟩
        ⟨(seg16AccX55 rho : Seg16.F), (seg16AccY55 rho : Seg16.F)⟩
        ⟨(rho 16250 : Seg16.F), (rho 16251 : Seg16.F)⟩ := by
    have ha0 : (rho 16237 + rho 16238) * (seg16AccX54 rho + seg16AccY54 rho) = rho 16239 := by
      rw [seg16LadderFlatX54_eq, seg16LadderFlatY54_eq]
      unfold seg16LadderFlatX54 seg16LadderFlatY54
      linear_combination r3667
    have ha1 : rho 16238 * seg16AccX54 rho = rho 16240 := by
      rw [seg16LadderFlatX54_eq]
      unfold seg16LadderFlatX54
      linear_combination r3668
    have ha2 : rho 16237 * seg16AccY54 rho = rho 16241 := by
      rw [seg16LadderFlatY54_eq]
      unfold seg16LadderFlatY54
      linear_combination r3669
    have ha3 : 3021 * rho 16240 * rho 16241 = rho 16242 := by
      linear_combination r3670
    have ha4 : rho 16243 * (1 + rho 16242) = rho 16240 + rho 16241 := by
      linear_combination r3671
    have ha5 : rho 16244 * (1 - rho 16242) = rho 16239 - rho 16240 - rho 16241 := by
      linear_combination r3672
    have haddx :
        rho 16243 * (1 + 3021 * (rho 16238 * seg16AccX54 rho) * (rho 16237 * seg16AccY54 rho)) =
          rho 16238 * seg16AccX54 rho + rho 16237 * seg16AccY54 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16244 * (1 - 3021 * (rho 16238 * seg16AccX54 rho) * (rho 16237 * seg16AccY54 rho)) =
          (-1) * (rho 16238 * seg16AccX54 rho) - rho 16237 * seg16AccY54 rho +
            (seg16AccY54 rho - seg16AccX54 rho * (-1)) * (rho 16237 + rho 16238) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16244 * (1 - rho 16242) = rho 16239 - rho 16240 - rho 16241 := ha5
        _ = (-1) * rho 16240 - rho 16241 + (seg16AccY54 rho - seg16AccX54 rho * (-1)) * (rho 16237 + rho 16238) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX55 rho = seg16AccX54 rho - Bool.toZMod bit * (seg16AccX54 rho - rho 16243) := by
      have hd : rho 16245 = Bool.toZMod bit * (rho 16243 - seg16AccX54 rho) := by
        rw [← hbit, seg16LadderFlatX54_eq]
        unfold seg16LadderFlatX54
        linear_combination -r3673
      unfold seg16AccX55
      linear_combination hd
    have hsely : seg16AccY55 rho = seg16AccY54 rho - Bool.toZMod bit * (seg16AccY54 rho - rho 16244) := by
      have hd : rho 16246 = Bool.toZMod bit * (rho 16244 - seg16AccY54 rho) := by
        rw [← hbit, seg16LadderFlatY54_eq]
        unfold seg16LadderFlatY54
        linear_combination -r3674
      unfold seg16AccY55
      linear_combination hd
    have hd0 : rho 16237 * rho 16238 = rho 16247 := by linear_combination r3675
    have hd1 : rho 16237 * rho 16237 = rho 16248 := by linear_combination r3676
    have hd2 : rho 16238 * rho 16238 = rho 16249 := by linear_combination r3677
    have hd3 : rho 16250 * (rho 16238 * rho 16238 + rho 16237 * rho 16237 * (-1)) = 2 * (rho 16237 * rho 16238) := by
      rw [hd0, hd1, hd2]
      linear_combination r3678
    have hd4 : rho 16251 * (2 - (rho 16238 * rho 16238 + rho 16237 * rho 16237 * (-1))) = rho 16238 * rho 16238 - rho 16237 * rho 16237 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3679
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX54 rho : Seg16.F), (seg16AccY54 rho : Seg16.F)⟩
      ⟨(rho 16237 : Seg16.F), (rho 16238 : Seg16.F)⟩
      ⟨(rho 16243 : Seg16.F), (rho 16244 : Seg16.F)⟩
      ⟨(seg16AccX55 rho : Seg16.F), (seg16AccY55 rho : Seg16.F)⟩
      ⟨(rho 16250 : Seg16.F), (rho 16251 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung54

theorem seg16_rung55 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15347 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX55 rho : Seg16.F), (seg16AccY55 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16250 : Seg16.F), (rho 16251 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX55 rho : Seg16.F), (seg16AccY55 rho : Seg16.F)⟩
        ⟨(rho 16250 : Seg16.F), (rho 16251 : Seg16.F)⟩
        ⟨(seg16AccX56 rho : Seg16.F), (seg16AccY56 rho : Seg16.F)⟩
        ⟨(rho 16263 : Seg16.F), (rho 16264 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart46 at p46
  rcases p46 with ⟨r3680, r3681, r3682, r3683, r3684, r3685, r3686, r3687, r3688, r3689, r3690, r3691, r3692, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3680 Seg16.relationLc310 Seg16.relationLc310Part0 Seg16.relationLc310Part1 Seg16.relationLc310Part2 Seg16.relationLc310Part3 at r3680
  unfold Seg16.relationRow3681 Seg16.relationLc311 Seg16.relationLc311Part0 Seg16.relationLc311Part1 at r3681
  unfold Seg16.relationRow3682 Seg16.relationLc312 Seg16.relationLc312Part0 Seg16.relationLc312Part1 at r3682
  unfold Seg16.relationRow3683 at r3683
  unfold Seg16.relationRow3684 at r3684
  unfold Seg16.relationRow3685 at r3685
  unfold Seg16.relationRow3686 Seg16.relationLc313 Seg16.relationLc313Part0 Seg16.relationLc313Part1 at r3686
  unfold Seg16.relationRow3687 Seg16.relationLc314 Seg16.relationLc314Part0 Seg16.relationLc314Part1 at r3687
  unfold Seg16.relationRow3688 at r3688
  unfold Seg16.relationRow3689 at r3689
  unfold Seg16.relationRow3690 at r3690
  unfold Seg16.relationRow3691 at r3691
  unfold Seg16.relationRow3692 at r3692
  have hrung55 (bit : Bool) (hbit : rho 15347 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX55 rho : Seg16.F), (seg16AccY55 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16250 : Seg16.F), (rho 16251 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX55 rho : Seg16.F), (seg16AccY55 rho : Seg16.F)⟩
        ⟨(rho 16250 : Seg16.F), (rho 16251 : Seg16.F)⟩
        ⟨(seg16AccX56 rho : Seg16.F), (seg16AccY56 rho : Seg16.F)⟩
        ⟨(rho 16263 : Seg16.F), (rho 16264 : Seg16.F)⟩ := by
    have ha0 : (rho 16250 + rho 16251) * (seg16AccX55 rho + seg16AccY55 rho) = rho 16252 := by
      rw [seg16LadderFlatX55_eq, seg16LadderFlatY55_eq]
      unfold seg16LadderFlatX55 seg16LadderFlatY55
      linear_combination r3680
    have ha1 : rho 16251 * seg16AccX55 rho = rho 16253 := by
      rw [seg16LadderFlatX55_eq]
      unfold seg16LadderFlatX55
      linear_combination r3681
    have ha2 : rho 16250 * seg16AccY55 rho = rho 16254 := by
      rw [seg16LadderFlatY55_eq]
      unfold seg16LadderFlatY55
      linear_combination r3682
    have ha3 : 3021 * rho 16253 * rho 16254 = rho 16255 := by
      linear_combination r3683
    have ha4 : rho 16256 * (1 + rho 16255) = rho 16253 + rho 16254 := by
      linear_combination r3684
    have ha5 : rho 16257 * (1 - rho 16255) = rho 16252 - rho 16253 - rho 16254 := by
      linear_combination r3685
    have haddx :
        rho 16256 * (1 + 3021 * (rho 16251 * seg16AccX55 rho) * (rho 16250 * seg16AccY55 rho)) =
          rho 16251 * seg16AccX55 rho + rho 16250 * seg16AccY55 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16257 * (1 - 3021 * (rho 16251 * seg16AccX55 rho) * (rho 16250 * seg16AccY55 rho)) =
          (-1) * (rho 16251 * seg16AccX55 rho) - rho 16250 * seg16AccY55 rho +
            (seg16AccY55 rho - seg16AccX55 rho * (-1)) * (rho 16250 + rho 16251) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16257 * (1 - rho 16255) = rho 16252 - rho 16253 - rho 16254 := ha5
        _ = (-1) * rho 16253 - rho 16254 + (seg16AccY55 rho - seg16AccX55 rho * (-1)) * (rho 16250 + rho 16251) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX56 rho = seg16AccX55 rho - Bool.toZMod bit * (seg16AccX55 rho - rho 16256) := by
      have hd : rho 16258 = Bool.toZMod bit * (rho 16256 - seg16AccX55 rho) := by
        rw [← hbit, seg16LadderFlatX55_eq]
        unfold seg16LadderFlatX55
        linear_combination -r3686
      unfold seg16AccX56
      linear_combination hd
    have hsely : seg16AccY56 rho = seg16AccY55 rho - Bool.toZMod bit * (seg16AccY55 rho - rho 16257) := by
      have hd : rho 16259 = Bool.toZMod bit * (rho 16257 - seg16AccY55 rho) := by
        rw [← hbit, seg16LadderFlatY55_eq]
        unfold seg16LadderFlatY55
        linear_combination -r3687
      unfold seg16AccY56
      linear_combination hd
    have hd0 : rho 16250 * rho 16251 = rho 16260 := by linear_combination r3688
    have hd1 : rho 16250 * rho 16250 = rho 16261 := by linear_combination r3689
    have hd2 : rho 16251 * rho 16251 = rho 16262 := by linear_combination r3690
    have hd3 : rho 16263 * (rho 16251 * rho 16251 + rho 16250 * rho 16250 * (-1)) = 2 * (rho 16250 * rho 16251) := by
      rw [hd0, hd1, hd2]
      linear_combination r3691
    have hd4 : rho 16264 * (2 - (rho 16251 * rho 16251 + rho 16250 * rho 16250 * (-1))) = rho 16251 * rho 16251 - rho 16250 * rho 16250 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3692
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX55 rho : Seg16.F), (seg16AccY55 rho : Seg16.F)⟩
      ⟨(rho 16250 : Seg16.F), (rho 16251 : Seg16.F)⟩
      ⟨(rho 16256 : Seg16.F), (rho 16257 : Seg16.F)⟩
      ⟨(seg16AccX56 rho : Seg16.F), (seg16AccY56 rho : Seg16.F)⟩
      ⟨(rho 16263 : Seg16.F), (rho 16264 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung55

theorem seg16_rung56 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15348 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX56 rho : Seg16.F), (seg16AccY56 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16263 : Seg16.F), (rho 16264 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX56 rho : Seg16.F), (seg16AccY56 rho : Seg16.F)⟩
        ⟨(rho 16263 : Seg16.F), (rho 16264 : Seg16.F)⟩
        ⟨(seg16AccX57 rho : Seg16.F), (seg16AccY57 rho : Seg16.F)⟩
        ⟨(rho 16276 : Seg16.F), (rho 16277 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r3693, r3694, r3695, r3696, r3697, r3698, r3699, r3700, r3701, r3702, r3703, r3704, r3705, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3693 Seg16.relationLc315 Seg16.relationLc315Part0 Seg16.relationLc315Part1 Seg16.relationLc315Part2 Seg16.relationLc315Part3 at r3693
  unfold Seg16.relationRow3694 Seg16.relationLc316 Seg16.relationLc316Part0 Seg16.relationLc316Part1 at r3694
  unfold Seg16.relationRow3695 Seg16.relationLc317 Seg16.relationLc317Part0 Seg16.relationLc317Part1 at r3695
  unfold Seg16.relationRow3696 at r3696
  unfold Seg16.relationRow3697 at r3697
  unfold Seg16.relationRow3698 at r3698
  unfold Seg16.relationRow3699 Seg16.relationLc318 Seg16.relationLc318Part0 Seg16.relationLc318Part1 at r3699
  unfold Seg16.relationRow3700 Seg16.relationLc319 Seg16.relationLc319Part0 Seg16.relationLc319Part1 at r3700
  unfold Seg16.relationRow3701 at r3701
  unfold Seg16.relationRow3702 at r3702
  unfold Seg16.relationRow3703 at r3703
  unfold Seg16.relationRow3704 at r3704
  unfold Seg16.relationRow3705 at r3705
  have hrung56 (bit : Bool) (hbit : rho 15348 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX56 rho : Seg16.F), (seg16AccY56 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16263 : Seg16.F), (rho 16264 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX56 rho : Seg16.F), (seg16AccY56 rho : Seg16.F)⟩
        ⟨(rho 16263 : Seg16.F), (rho 16264 : Seg16.F)⟩
        ⟨(seg16AccX57 rho : Seg16.F), (seg16AccY57 rho : Seg16.F)⟩
        ⟨(rho 16276 : Seg16.F), (rho 16277 : Seg16.F)⟩ := by
    have ha0 : (rho 16263 + rho 16264) * (seg16AccX56 rho + seg16AccY56 rho) = rho 16265 := by
      rw [seg16LadderFlatX56_eq, seg16LadderFlatY56_eq]
      unfold seg16LadderFlatX56 seg16LadderFlatY56
      linear_combination r3693
    have ha1 : rho 16264 * seg16AccX56 rho = rho 16266 := by
      rw [seg16LadderFlatX56_eq]
      unfold seg16LadderFlatX56
      linear_combination r3694
    have ha2 : rho 16263 * seg16AccY56 rho = rho 16267 := by
      rw [seg16LadderFlatY56_eq]
      unfold seg16LadderFlatY56
      linear_combination r3695
    have ha3 : 3021 * rho 16266 * rho 16267 = rho 16268 := by
      linear_combination r3696
    have ha4 : rho 16269 * (1 + rho 16268) = rho 16266 + rho 16267 := by
      linear_combination r3697
    have ha5 : rho 16270 * (1 - rho 16268) = rho 16265 - rho 16266 - rho 16267 := by
      linear_combination r3698
    have haddx :
        rho 16269 * (1 + 3021 * (rho 16264 * seg16AccX56 rho) * (rho 16263 * seg16AccY56 rho)) =
          rho 16264 * seg16AccX56 rho + rho 16263 * seg16AccY56 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16270 * (1 - 3021 * (rho 16264 * seg16AccX56 rho) * (rho 16263 * seg16AccY56 rho)) =
          (-1) * (rho 16264 * seg16AccX56 rho) - rho 16263 * seg16AccY56 rho +
            (seg16AccY56 rho - seg16AccX56 rho * (-1)) * (rho 16263 + rho 16264) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16270 * (1 - rho 16268) = rho 16265 - rho 16266 - rho 16267 := ha5
        _ = (-1) * rho 16266 - rho 16267 + (seg16AccY56 rho - seg16AccX56 rho * (-1)) * (rho 16263 + rho 16264) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX57 rho = seg16AccX56 rho - Bool.toZMod bit * (seg16AccX56 rho - rho 16269) := by
      have hd : rho 16271 = Bool.toZMod bit * (rho 16269 - seg16AccX56 rho) := by
        rw [← hbit, seg16LadderFlatX56_eq]
        unfold seg16LadderFlatX56
        linear_combination -r3699
      unfold seg16AccX57
      linear_combination hd
    have hsely : seg16AccY57 rho = seg16AccY56 rho - Bool.toZMod bit * (seg16AccY56 rho - rho 16270) := by
      have hd : rho 16272 = Bool.toZMod bit * (rho 16270 - seg16AccY56 rho) := by
        rw [← hbit, seg16LadderFlatY56_eq]
        unfold seg16LadderFlatY56
        linear_combination -r3700
      unfold seg16AccY57
      linear_combination hd
    have hd0 : rho 16263 * rho 16264 = rho 16273 := by linear_combination r3701
    have hd1 : rho 16263 * rho 16263 = rho 16274 := by linear_combination r3702
    have hd2 : rho 16264 * rho 16264 = rho 16275 := by linear_combination r3703
    have hd3 : rho 16276 * (rho 16264 * rho 16264 + rho 16263 * rho 16263 * (-1)) = 2 * (rho 16263 * rho 16264) := by
      rw [hd0, hd1, hd2]
      linear_combination r3704
    have hd4 : rho 16277 * (2 - (rho 16264 * rho 16264 + rho 16263 * rho 16263 * (-1))) = rho 16264 * rho 16264 - rho 16263 * rho 16263 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3705
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX56 rho : Seg16.F), (seg16AccY56 rho : Seg16.F)⟩
      ⟨(rho 16263 : Seg16.F), (rho 16264 : Seg16.F)⟩
      ⟨(rho 16269 : Seg16.F), (rho 16270 : Seg16.F)⟩
      ⟨(seg16AccX57 rho : Seg16.F), (seg16AccY57 rho : Seg16.F)⟩
      ⟨(rho 16276 : Seg16.F), (rho 16277 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung56

theorem seg16_rung57 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15349 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX57 rho : Seg16.F), (seg16AccY57 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16276 : Seg16.F), (rho 16277 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX57 rho : Seg16.F), (seg16AccY57 rho : Seg16.F)⟩
        ⟨(rho 16276 : Seg16.F), (rho 16277 : Seg16.F)⟩
        ⟨(seg16AccX58 rho : Seg16.F), (seg16AccY58 rho : Seg16.F)⟩
        ⟨(rho 16289 : Seg16.F), (rho 16290 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3706, r3707, r3708, r3709, r3710, r3711, r3712, r3713, r3714, r3715, r3716, r3717, r3718, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3706 Seg16.relationLc320 Seg16.relationLc320Part0 Seg16.relationLc320Part1 Seg16.relationLc320Part2 Seg16.relationLc320Part3 at r3706
  unfold Seg16.relationRow3707 Seg16.relationLc321 Seg16.relationLc321Part0 Seg16.relationLc321Part1 at r3707
  unfold Seg16.relationRow3708 Seg16.relationLc322 Seg16.relationLc322Part0 Seg16.relationLc322Part1 at r3708
  unfold Seg16.relationRow3709 at r3709
  unfold Seg16.relationRow3710 at r3710
  unfold Seg16.relationRow3711 at r3711
  unfold Seg16.relationRow3712 Seg16.relationLc323 Seg16.relationLc323Part0 Seg16.relationLc323Part1 at r3712
  unfold Seg16.relationRow3713 Seg16.relationLc324 Seg16.relationLc324Part0 Seg16.relationLc324Part1 at r3713
  unfold Seg16.relationRow3714 at r3714
  unfold Seg16.relationRow3715 at r3715
  unfold Seg16.relationRow3716 at r3716
  unfold Seg16.relationRow3717 at r3717
  unfold Seg16.relationRow3718 at r3718
  have hrung57 (bit : Bool) (hbit : rho 15349 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX57 rho : Seg16.F), (seg16AccY57 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16276 : Seg16.F), (rho 16277 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX57 rho : Seg16.F), (seg16AccY57 rho : Seg16.F)⟩
        ⟨(rho 16276 : Seg16.F), (rho 16277 : Seg16.F)⟩
        ⟨(seg16AccX58 rho : Seg16.F), (seg16AccY58 rho : Seg16.F)⟩
        ⟨(rho 16289 : Seg16.F), (rho 16290 : Seg16.F)⟩ := by
    have ha0 : (rho 16276 + rho 16277) * (seg16AccX57 rho + seg16AccY57 rho) = rho 16278 := by
      rw [seg16LadderFlatX57_eq, seg16LadderFlatY57_eq]
      unfold seg16LadderFlatX57 seg16LadderFlatY57
      linear_combination r3706
    have ha1 : rho 16277 * seg16AccX57 rho = rho 16279 := by
      rw [seg16LadderFlatX57_eq]
      unfold seg16LadderFlatX57
      linear_combination r3707
    have ha2 : rho 16276 * seg16AccY57 rho = rho 16280 := by
      rw [seg16LadderFlatY57_eq]
      unfold seg16LadderFlatY57
      linear_combination r3708
    have ha3 : 3021 * rho 16279 * rho 16280 = rho 16281 := by
      linear_combination r3709
    have ha4 : rho 16282 * (1 + rho 16281) = rho 16279 + rho 16280 := by
      linear_combination r3710
    have ha5 : rho 16283 * (1 - rho 16281) = rho 16278 - rho 16279 - rho 16280 := by
      linear_combination r3711
    have haddx :
        rho 16282 * (1 + 3021 * (rho 16277 * seg16AccX57 rho) * (rho 16276 * seg16AccY57 rho)) =
          rho 16277 * seg16AccX57 rho + rho 16276 * seg16AccY57 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16283 * (1 - 3021 * (rho 16277 * seg16AccX57 rho) * (rho 16276 * seg16AccY57 rho)) =
          (-1) * (rho 16277 * seg16AccX57 rho) - rho 16276 * seg16AccY57 rho +
            (seg16AccY57 rho - seg16AccX57 rho * (-1)) * (rho 16276 + rho 16277) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16283 * (1 - rho 16281) = rho 16278 - rho 16279 - rho 16280 := ha5
        _ = (-1) * rho 16279 - rho 16280 + (seg16AccY57 rho - seg16AccX57 rho * (-1)) * (rho 16276 + rho 16277) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX58 rho = seg16AccX57 rho - Bool.toZMod bit * (seg16AccX57 rho - rho 16282) := by
      have hd : rho 16284 = Bool.toZMod bit * (rho 16282 - seg16AccX57 rho) := by
        rw [← hbit, seg16LadderFlatX57_eq]
        unfold seg16LadderFlatX57
        linear_combination -r3712
      unfold seg16AccX58
      linear_combination hd
    have hsely : seg16AccY58 rho = seg16AccY57 rho - Bool.toZMod bit * (seg16AccY57 rho - rho 16283) := by
      have hd : rho 16285 = Bool.toZMod bit * (rho 16283 - seg16AccY57 rho) := by
        rw [← hbit, seg16LadderFlatY57_eq]
        unfold seg16LadderFlatY57
        linear_combination -r3713
      unfold seg16AccY58
      linear_combination hd
    have hd0 : rho 16276 * rho 16277 = rho 16286 := by linear_combination r3714
    have hd1 : rho 16276 * rho 16276 = rho 16287 := by linear_combination r3715
    have hd2 : rho 16277 * rho 16277 = rho 16288 := by linear_combination r3716
    have hd3 : rho 16289 * (rho 16277 * rho 16277 + rho 16276 * rho 16276 * (-1)) = 2 * (rho 16276 * rho 16277) := by
      rw [hd0, hd1, hd2]
      linear_combination r3717
    have hd4 : rho 16290 * (2 - (rho 16277 * rho 16277 + rho 16276 * rho 16276 * (-1))) = rho 16277 * rho 16277 - rho 16276 * rho 16276 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3718
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX57 rho : Seg16.F), (seg16AccY57 rho : Seg16.F)⟩
      ⟨(rho 16276 : Seg16.F), (rho 16277 : Seg16.F)⟩
      ⟨(rho 16282 : Seg16.F), (rho 16283 : Seg16.F)⟩
      ⟨(seg16AccX58 rho : Seg16.F), (seg16AccY58 rho : Seg16.F)⟩
      ⟨(rho 16289 : Seg16.F), (rho 16290 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung57

theorem seg16_rung58 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15350 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX58 rho : Seg16.F), (seg16AccY58 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16289 : Seg16.F), (rho 16290 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX58 rho : Seg16.F), (seg16AccY58 rho : Seg16.F)⟩
        ⟨(rho 16289 : Seg16.F), (rho 16290 : Seg16.F)⟩
        ⟨(seg16AccX59 rho : Seg16.F), (seg16AccY59 rho : Seg16.F)⟩
        ⟨(rho 16302 : Seg16.F), (rho 16303 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3719, r3720, r3721, r3722, r3723, r3724, r3725, r3726, r3727, r3728, r3729, r3730, r3731, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3719 Seg16.relationLc325 Seg16.relationLc325Part0 Seg16.relationLc325Part1 Seg16.relationLc325Part2 Seg16.relationLc325Part3 at r3719
  unfold Seg16.relationRow3720 Seg16.relationLc326 Seg16.relationLc326Part0 Seg16.relationLc326Part1 at r3720
  unfold Seg16.relationRow3721 Seg16.relationLc327 Seg16.relationLc327Part0 Seg16.relationLc327Part1 at r3721
  unfold Seg16.relationRow3722 at r3722
  unfold Seg16.relationRow3723 at r3723
  unfold Seg16.relationRow3724 at r3724
  unfold Seg16.relationRow3725 Seg16.relationLc328 Seg16.relationLc328Part0 Seg16.relationLc328Part1 at r3725
  unfold Seg16.relationRow3726 Seg16.relationLc329 Seg16.relationLc329Part0 Seg16.relationLc329Part1 at r3726
  unfold Seg16.relationRow3727 at r3727
  unfold Seg16.relationRow3728 at r3728
  unfold Seg16.relationRow3729 at r3729
  unfold Seg16.relationRow3730 at r3730
  unfold Seg16.relationRow3731 at r3731
  have hrung58 (bit : Bool) (hbit : rho 15350 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX58 rho : Seg16.F), (seg16AccY58 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16289 : Seg16.F), (rho 16290 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX58 rho : Seg16.F), (seg16AccY58 rho : Seg16.F)⟩
        ⟨(rho 16289 : Seg16.F), (rho 16290 : Seg16.F)⟩
        ⟨(seg16AccX59 rho : Seg16.F), (seg16AccY59 rho : Seg16.F)⟩
        ⟨(rho 16302 : Seg16.F), (rho 16303 : Seg16.F)⟩ := by
    have ha0 : (rho 16289 + rho 16290) * (seg16AccX58 rho + seg16AccY58 rho) = rho 16291 := by
      rw [seg16LadderFlatX58_eq, seg16LadderFlatY58_eq]
      unfold seg16LadderFlatX58 seg16LadderFlatY58
      linear_combination r3719
    have ha1 : rho 16290 * seg16AccX58 rho = rho 16292 := by
      rw [seg16LadderFlatX58_eq]
      unfold seg16LadderFlatX58
      linear_combination r3720
    have ha2 : rho 16289 * seg16AccY58 rho = rho 16293 := by
      rw [seg16LadderFlatY58_eq]
      unfold seg16LadderFlatY58
      linear_combination r3721
    have ha3 : 3021 * rho 16292 * rho 16293 = rho 16294 := by
      linear_combination r3722
    have ha4 : rho 16295 * (1 + rho 16294) = rho 16292 + rho 16293 := by
      linear_combination r3723
    have ha5 : rho 16296 * (1 - rho 16294) = rho 16291 - rho 16292 - rho 16293 := by
      linear_combination r3724
    have haddx :
        rho 16295 * (1 + 3021 * (rho 16290 * seg16AccX58 rho) * (rho 16289 * seg16AccY58 rho)) =
          rho 16290 * seg16AccX58 rho + rho 16289 * seg16AccY58 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16296 * (1 - 3021 * (rho 16290 * seg16AccX58 rho) * (rho 16289 * seg16AccY58 rho)) =
          (-1) * (rho 16290 * seg16AccX58 rho) - rho 16289 * seg16AccY58 rho +
            (seg16AccY58 rho - seg16AccX58 rho * (-1)) * (rho 16289 + rho 16290) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16296 * (1 - rho 16294) = rho 16291 - rho 16292 - rho 16293 := ha5
        _ = (-1) * rho 16292 - rho 16293 + (seg16AccY58 rho - seg16AccX58 rho * (-1)) * (rho 16289 + rho 16290) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX59 rho = seg16AccX58 rho - Bool.toZMod bit * (seg16AccX58 rho - rho 16295) := by
      have hd : rho 16297 = Bool.toZMod bit * (rho 16295 - seg16AccX58 rho) := by
        rw [← hbit, seg16LadderFlatX58_eq]
        unfold seg16LadderFlatX58
        linear_combination -r3725
      unfold seg16AccX59
      linear_combination hd
    have hsely : seg16AccY59 rho = seg16AccY58 rho - Bool.toZMod bit * (seg16AccY58 rho - rho 16296) := by
      have hd : rho 16298 = Bool.toZMod bit * (rho 16296 - seg16AccY58 rho) := by
        rw [← hbit, seg16LadderFlatY58_eq]
        unfold seg16LadderFlatY58
        linear_combination -r3726
      unfold seg16AccY59
      linear_combination hd
    have hd0 : rho 16289 * rho 16290 = rho 16299 := by linear_combination r3727
    have hd1 : rho 16289 * rho 16289 = rho 16300 := by linear_combination r3728
    have hd2 : rho 16290 * rho 16290 = rho 16301 := by linear_combination r3729
    have hd3 : rho 16302 * (rho 16290 * rho 16290 + rho 16289 * rho 16289 * (-1)) = 2 * (rho 16289 * rho 16290) := by
      rw [hd0, hd1, hd2]
      linear_combination r3730
    have hd4 : rho 16303 * (2 - (rho 16290 * rho 16290 + rho 16289 * rho 16289 * (-1))) = rho 16290 * rho 16290 - rho 16289 * rho 16289 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3731
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX58 rho : Seg16.F), (seg16AccY58 rho : Seg16.F)⟩
      ⟨(rho 16289 : Seg16.F), (rho 16290 : Seg16.F)⟩
      ⟨(rho 16295 : Seg16.F), (rho 16296 : Seg16.F)⟩
      ⟨(seg16AccX59 rho : Seg16.F), (seg16AccY59 rho : Seg16.F)⟩
      ⟨(rho 16302 : Seg16.F), (rho 16303 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung58

theorem seg16_rung59 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15351 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX59 rho : Seg16.F), (seg16AccY59 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16302 : Seg16.F), (rho 16303 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX59 rho : Seg16.F), (seg16AccY59 rho : Seg16.F)⟩
        ⟨(rho 16302 : Seg16.F), (rho 16303 : Seg16.F)⟩
        ⟨(seg16AccX60 rho : Seg16.F), (seg16AccY60 rho : Seg16.F)⟩
        ⟨(rho 16315 : Seg16.F), (rho 16316 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3732, r3733, r3734, r3735, r3736, r3737, r3738, r3739, r3740, r3741, r3742, r3743, r3744, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3732 Seg16.relationLc330 Seg16.relationLc330Part0 Seg16.relationLc330Part1 Seg16.relationLc330Part2 Seg16.relationLc330Part3 at r3732
  unfold Seg16.relationRow3733 Seg16.relationLc331 Seg16.relationLc331Part0 Seg16.relationLc331Part1 at r3733
  unfold Seg16.relationRow3734 Seg16.relationLc332 Seg16.relationLc332Part0 Seg16.relationLc332Part1 at r3734
  unfold Seg16.relationRow3735 at r3735
  unfold Seg16.relationRow3736 at r3736
  unfold Seg16.relationRow3737 at r3737
  unfold Seg16.relationRow3738 Seg16.relationLc333 Seg16.relationLc333Part0 Seg16.relationLc333Part1 at r3738
  unfold Seg16.relationRow3739 Seg16.relationLc334 Seg16.relationLc334Part0 Seg16.relationLc334Part1 at r3739
  unfold Seg16.relationRow3740 at r3740
  unfold Seg16.relationRow3741 at r3741
  unfold Seg16.relationRow3742 at r3742
  unfold Seg16.relationRow3743 at r3743
  unfold Seg16.relationRow3744 at r3744
  have hrung59 (bit : Bool) (hbit : rho 15351 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX59 rho : Seg16.F), (seg16AccY59 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16302 : Seg16.F), (rho 16303 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX59 rho : Seg16.F), (seg16AccY59 rho : Seg16.F)⟩
        ⟨(rho 16302 : Seg16.F), (rho 16303 : Seg16.F)⟩
        ⟨(seg16AccX60 rho : Seg16.F), (seg16AccY60 rho : Seg16.F)⟩
        ⟨(rho 16315 : Seg16.F), (rho 16316 : Seg16.F)⟩ := by
    have ha0 : (rho 16302 + rho 16303) * (seg16AccX59 rho + seg16AccY59 rho) = rho 16304 := by
      rw [seg16LadderFlatX59_eq, seg16LadderFlatY59_eq]
      unfold seg16LadderFlatX59 seg16LadderFlatY59
      linear_combination r3732
    have ha1 : rho 16303 * seg16AccX59 rho = rho 16305 := by
      rw [seg16LadderFlatX59_eq]
      unfold seg16LadderFlatX59
      linear_combination r3733
    have ha2 : rho 16302 * seg16AccY59 rho = rho 16306 := by
      rw [seg16LadderFlatY59_eq]
      unfold seg16LadderFlatY59
      linear_combination r3734
    have ha3 : 3021 * rho 16305 * rho 16306 = rho 16307 := by
      linear_combination r3735
    have ha4 : rho 16308 * (1 + rho 16307) = rho 16305 + rho 16306 := by
      linear_combination r3736
    have ha5 : rho 16309 * (1 - rho 16307) = rho 16304 - rho 16305 - rho 16306 := by
      linear_combination r3737
    have haddx :
        rho 16308 * (1 + 3021 * (rho 16303 * seg16AccX59 rho) * (rho 16302 * seg16AccY59 rho)) =
          rho 16303 * seg16AccX59 rho + rho 16302 * seg16AccY59 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16309 * (1 - 3021 * (rho 16303 * seg16AccX59 rho) * (rho 16302 * seg16AccY59 rho)) =
          (-1) * (rho 16303 * seg16AccX59 rho) - rho 16302 * seg16AccY59 rho +
            (seg16AccY59 rho - seg16AccX59 rho * (-1)) * (rho 16302 + rho 16303) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16309 * (1 - rho 16307) = rho 16304 - rho 16305 - rho 16306 := ha5
        _ = (-1) * rho 16305 - rho 16306 + (seg16AccY59 rho - seg16AccX59 rho * (-1)) * (rho 16302 + rho 16303) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX60 rho = seg16AccX59 rho - Bool.toZMod bit * (seg16AccX59 rho - rho 16308) := by
      have hd : rho 16310 = Bool.toZMod bit * (rho 16308 - seg16AccX59 rho) := by
        rw [← hbit, seg16LadderFlatX59_eq]
        unfold seg16LadderFlatX59
        linear_combination -r3738
      unfold seg16AccX60
      linear_combination hd
    have hsely : seg16AccY60 rho = seg16AccY59 rho - Bool.toZMod bit * (seg16AccY59 rho - rho 16309) := by
      have hd : rho 16311 = Bool.toZMod bit * (rho 16309 - seg16AccY59 rho) := by
        rw [← hbit, seg16LadderFlatY59_eq]
        unfold seg16LadderFlatY59
        linear_combination -r3739
      unfold seg16AccY60
      linear_combination hd
    have hd0 : rho 16302 * rho 16303 = rho 16312 := by linear_combination r3740
    have hd1 : rho 16302 * rho 16302 = rho 16313 := by linear_combination r3741
    have hd2 : rho 16303 * rho 16303 = rho 16314 := by linear_combination r3742
    have hd3 : rho 16315 * (rho 16303 * rho 16303 + rho 16302 * rho 16302 * (-1)) = 2 * (rho 16302 * rho 16303) := by
      rw [hd0, hd1, hd2]
      linear_combination r3743
    have hd4 : rho 16316 * (2 - (rho 16303 * rho 16303 + rho 16302 * rho 16302 * (-1))) = rho 16303 * rho 16303 - rho 16302 * rho 16302 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3744
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX59 rho : Seg16.F), (seg16AccY59 rho : Seg16.F)⟩
      ⟨(rho 16302 : Seg16.F), (rho 16303 : Seg16.F)⟩
      ⟨(rho 16308 : Seg16.F), (rho 16309 : Seg16.F)⟩
      ⟨(seg16AccX60 rho : Seg16.F), (seg16AccY60 rho : Seg16.F)⟩
      ⟨(rho 16315 : Seg16.F), (rho 16316 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung59

theorem seg16_rung60 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15352 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX60 rho : Seg16.F), (seg16AccY60 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16315 : Seg16.F), (rho 16316 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX60 rho : Seg16.F), (seg16AccY60 rho : Seg16.F)⟩
        ⟨(rho 16315 : Seg16.F), (rho 16316 : Seg16.F)⟩
        ⟨(seg16AccX61 rho : Seg16.F), (seg16AccY61 rho : Seg16.F)⟩
        ⟨(rho 16328 : Seg16.F), (rho 16329 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3745, r3746, r3747, r3748, r3749, r3750, r3751, r3752, r3753, r3754, r3755, r3756, r3757, _, _⟩
  unfold Seg16.relationRow3745 Seg16.relationLc335 Seg16.relationLc335Part0 Seg16.relationLc335Part1 Seg16.relationLc335Part2 Seg16.relationLc335Part3 at r3745
  unfold Seg16.relationRow3746 Seg16.relationLc336 Seg16.relationLc336Part0 Seg16.relationLc336Part1 at r3746
  unfold Seg16.relationRow3747 Seg16.relationLc337 Seg16.relationLc337Part0 Seg16.relationLc337Part1 at r3747
  unfold Seg16.relationRow3748 at r3748
  unfold Seg16.relationRow3749 at r3749
  unfold Seg16.relationRow3750 at r3750
  unfold Seg16.relationRow3751 Seg16.relationLc338 Seg16.relationLc338Part0 Seg16.relationLc338Part1 at r3751
  unfold Seg16.relationRow3752 Seg16.relationLc339 Seg16.relationLc339Part0 Seg16.relationLc339Part1 at r3752
  unfold Seg16.relationRow3753 at r3753
  unfold Seg16.relationRow3754 at r3754
  unfold Seg16.relationRow3755 at r3755
  unfold Seg16.relationRow3756 at r3756
  unfold Seg16.relationRow3757 at r3757
  have hrung60 (bit : Bool) (hbit : rho 15352 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX60 rho : Seg16.F), (seg16AccY60 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16315 : Seg16.F), (rho 16316 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX60 rho : Seg16.F), (seg16AccY60 rho : Seg16.F)⟩
        ⟨(rho 16315 : Seg16.F), (rho 16316 : Seg16.F)⟩
        ⟨(seg16AccX61 rho : Seg16.F), (seg16AccY61 rho : Seg16.F)⟩
        ⟨(rho 16328 : Seg16.F), (rho 16329 : Seg16.F)⟩ := by
    have ha0 : (rho 16315 + rho 16316) * (seg16AccX60 rho + seg16AccY60 rho) = rho 16317 := by
      rw [seg16LadderFlatX60_eq, seg16LadderFlatY60_eq]
      unfold seg16LadderFlatX60 seg16LadderFlatY60
      linear_combination r3745
    have ha1 : rho 16316 * seg16AccX60 rho = rho 16318 := by
      rw [seg16LadderFlatX60_eq]
      unfold seg16LadderFlatX60
      linear_combination r3746
    have ha2 : rho 16315 * seg16AccY60 rho = rho 16319 := by
      rw [seg16LadderFlatY60_eq]
      unfold seg16LadderFlatY60
      linear_combination r3747
    have ha3 : 3021 * rho 16318 * rho 16319 = rho 16320 := by
      linear_combination r3748
    have ha4 : rho 16321 * (1 + rho 16320) = rho 16318 + rho 16319 := by
      linear_combination r3749
    have ha5 : rho 16322 * (1 - rho 16320) = rho 16317 - rho 16318 - rho 16319 := by
      linear_combination r3750
    have haddx :
        rho 16321 * (1 + 3021 * (rho 16316 * seg16AccX60 rho) * (rho 16315 * seg16AccY60 rho)) =
          rho 16316 * seg16AccX60 rho + rho 16315 * seg16AccY60 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16322 * (1 - 3021 * (rho 16316 * seg16AccX60 rho) * (rho 16315 * seg16AccY60 rho)) =
          (-1) * (rho 16316 * seg16AccX60 rho) - rho 16315 * seg16AccY60 rho +
            (seg16AccY60 rho - seg16AccX60 rho * (-1)) * (rho 16315 + rho 16316) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16322 * (1 - rho 16320) = rho 16317 - rho 16318 - rho 16319 := ha5
        _ = (-1) * rho 16318 - rho 16319 + (seg16AccY60 rho - seg16AccX60 rho * (-1)) * (rho 16315 + rho 16316) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX61 rho = seg16AccX60 rho - Bool.toZMod bit * (seg16AccX60 rho - rho 16321) := by
      have hd : rho 16323 = Bool.toZMod bit * (rho 16321 - seg16AccX60 rho) := by
        rw [← hbit, seg16LadderFlatX60_eq]
        unfold seg16LadderFlatX60
        linear_combination -r3751
      unfold seg16AccX61
      linear_combination hd
    have hsely : seg16AccY61 rho = seg16AccY60 rho - Bool.toZMod bit * (seg16AccY60 rho - rho 16322) := by
      have hd : rho 16324 = Bool.toZMod bit * (rho 16322 - seg16AccY60 rho) := by
        rw [← hbit, seg16LadderFlatY60_eq]
        unfold seg16LadderFlatY60
        linear_combination -r3752
      unfold seg16AccY61
      linear_combination hd
    have hd0 : rho 16315 * rho 16316 = rho 16325 := by linear_combination r3753
    have hd1 : rho 16315 * rho 16315 = rho 16326 := by linear_combination r3754
    have hd2 : rho 16316 * rho 16316 = rho 16327 := by linear_combination r3755
    have hd3 : rho 16328 * (rho 16316 * rho 16316 + rho 16315 * rho 16315 * (-1)) = 2 * (rho 16315 * rho 16316) := by
      rw [hd0, hd1, hd2]
      linear_combination r3756
    have hd4 : rho 16329 * (2 - (rho 16316 * rho 16316 + rho 16315 * rho 16315 * (-1))) = rho 16316 * rho 16316 - rho 16315 * rho 16315 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3757
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX60 rho : Seg16.F), (seg16AccY60 rho : Seg16.F)⟩
      ⟨(rho 16315 : Seg16.F), (rho 16316 : Seg16.F)⟩
      ⟨(rho 16321 : Seg16.F), (rho 16322 : Seg16.F)⟩
      ⟨(seg16AccX61 rho : Seg16.F), (seg16AccY61 rho : Seg16.F)⟩
      ⟨(rho 16328 : Seg16.F), (rho 16329 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung60

theorem seg16_rung61 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15353 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX61 rho : Seg16.F), (seg16AccY61 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16328 : Seg16.F), (rho 16329 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX61 rho : Seg16.F), (seg16AccY61 rho : Seg16.F)⟩
        ⟨(rho 16328 : Seg16.F), (rho 16329 : Seg16.F)⟩
        ⟨(seg16AccX62 rho : Seg16.F), (seg16AccY62 rho : Seg16.F)⟩
        ⟨(rho 16341 : Seg16.F), (rho 16342 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3758, r3759⟩
  unfold Seg16.relationPart47 at p47
  rcases p47 with ⟨r3760, r3761, r3762, r3763, r3764, r3765, r3766, r3767, r3768, r3769, r3770, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3758 Seg16.relationLc340 Seg16.relationLc340Part0 Seg16.relationLc340Part1 Seg16.relationLc340Part2 Seg16.relationLc340Part3 at r3758
  unfold Seg16.relationRow3759 Seg16.relationLc341 Seg16.relationLc341Part0 Seg16.relationLc341Part1 at r3759
  unfold Seg16.relationRow3760 Seg16.relationLc342 Seg16.relationLc342Part0 Seg16.relationLc342Part1 at r3760
  unfold Seg16.relationRow3761 at r3761
  unfold Seg16.relationRow3762 at r3762
  unfold Seg16.relationRow3763 at r3763
  unfold Seg16.relationRow3764 Seg16.relationLc343 Seg16.relationLc343Part0 Seg16.relationLc343Part1 at r3764
  unfold Seg16.relationRow3765 Seg16.relationLc344 Seg16.relationLc344Part0 Seg16.relationLc344Part1 at r3765
  unfold Seg16.relationRow3766 at r3766
  unfold Seg16.relationRow3767 at r3767
  unfold Seg16.relationRow3768 at r3768
  unfold Seg16.relationRow3769 at r3769
  unfold Seg16.relationRow3770 at r3770
  have hrung61 (bit : Bool) (hbit : rho 15353 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX61 rho : Seg16.F), (seg16AccY61 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16328 : Seg16.F), (rho 16329 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX61 rho : Seg16.F), (seg16AccY61 rho : Seg16.F)⟩
        ⟨(rho 16328 : Seg16.F), (rho 16329 : Seg16.F)⟩
        ⟨(seg16AccX62 rho : Seg16.F), (seg16AccY62 rho : Seg16.F)⟩
        ⟨(rho 16341 : Seg16.F), (rho 16342 : Seg16.F)⟩ := by
    have ha0 : (rho 16328 + rho 16329) * (seg16AccX61 rho + seg16AccY61 rho) = rho 16330 := by
      rw [seg16LadderFlatX61_eq, seg16LadderFlatY61_eq]
      unfold seg16LadderFlatX61 seg16LadderFlatY61
      linear_combination r3758
    have ha1 : rho 16329 * seg16AccX61 rho = rho 16331 := by
      rw [seg16LadderFlatX61_eq]
      unfold seg16LadderFlatX61
      linear_combination r3759
    have ha2 : rho 16328 * seg16AccY61 rho = rho 16332 := by
      rw [seg16LadderFlatY61_eq]
      unfold seg16LadderFlatY61
      linear_combination r3760
    have ha3 : 3021 * rho 16331 * rho 16332 = rho 16333 := by
      linear_combination r3761
    have ha4 : rho 16334 * (1 + rho 16333) = rho 16331 + rho 16332 := by
      linear_combination r3762
    have ha5 : rho 16335 * (1 - rho 16333) = rho 16330 - rho 16331 - rho 16332 := by
      linear_combination r3763
    have haddx :
        rho 16334 * (1 + 3021 * (rho 16329 * seg16AccX61 rho) * (rho 16328 * seg16AccY61 rho)) =
          rho 16329 * seg16AccX61 rho + rho 16328 * seg16AccY61 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16335 * (1 - 3021 * (rho 16329 * seg16AccX61 rho) * (rho 16328 * seg16AccY61 rho)) =
          (-1) * (rho 16329 * seg16AccX61 rho) - rho 16328 * seg16AccY61 rho +
            (seg16AccY61 rho - seg16AccX61 rho * (-1)) * (rho 16328 + rho 16329) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16335 * (1 - rho 16333) = rho 16330 - rho 16331 - rho 16332 := ha5
        _ = (-1) * rho 16331 - rho 16332 + (seg16AccY61 rho - seg16AccX61 rho * (-1)) * (rho 16328 + rho 16329) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX62 rho = seg16AccX61 rho - Bool.toZMod bit * (seg16AccX61 rho - rho 16334) := by
      have hd : rho 16336 = Bool.toZMod bit * (rho 16334 - seg16AccX61 rho) := by
        rw [← hbit, seg16LadderFlatX61_eq]
        unfold seg16LadderFlatX61
        linear_combination -r3764
      unfold seg16AccX62
      linear_combination hd
    have hsely : seg16AccY62 rho = seg16AccY61 rho - Bool.toZMod bit * (seg16AccY61 rho - rho 16335) := by
      have hd : rho 16337 = Bool.toZMod bit * (rho 16335 - seg16AccY61 rho) := by
        rw [← hbit, seg16LadderFlatY61_eq]
        unfold seg16LadderFlatY61
        linear_combination -r3765
      unfold seg16AccY62
      linear_combination hd
    have hd0 : rho 16328 * rho 16329 = rho 16338 := by linear_combination r3766
    have hd1 : rho 16328 * rho 16328 = rho 16339 := by linear_combination r3767
    have hd2 : rho 16329 * rho 16329 = rho 16340 := by linear_combination r3768
    have hd3 : rho 16341 * (rho 16329 * rho 16329 + rho 16328 * rho 16328 * (-1)) = 2 * (rho 16328 * rho 16329) := by
      rw [hd0, hd1, hd2]
      linear_combination r3769
    have hd4 : rho 16342 * (2 - (rho 16329 * rho 16329 + rho 16328 * rho 16328 * (-1))) = rho 16329 * rho 16329 - rho 16328 * rho 16328 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3770
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX61 rho : Seg16.F), (seg16AccY61 rho : Seg16.F)⟩
      ⟨(rho 16328 : Seg16.F), (rho 16329 : Seg16.F)⟩
      ⟨(rho 16334 : Seg16.F), (rho 16335 : Seg16.F)⟩
      ⟨(seg16AccX62 rho : Seg16.F), (seg16AccY62 rho : Seg16.F)⟩
      ⟨(rho 16341 : Seg16.F), (rho 16342 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung61

theorem seg16_rung62 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15354 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX62 rho : Seg16.F), (seg16AccY62 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16341 : Seg16.F), (rho 16342 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX62 rho : Seg16.F), (seg16AccY62 rho : Seg16.F)⟩
        ⟨(rho 16341 : Seg16.F), (rho 16342 : Seg16.F)⟩
        ⟨(seg16AccX63 rho : Seg16.F), (seg16AccY63 rho : Seg16.F)⟩
        ⟨(rho 16354 : Seg16.F), (rho 16355 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, r3771, r3772, r3773, r3774, r3775, r3776, r3777, r3778, r3779, r3780, r3781, r3782, r3783, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3771 Seg16.relationLc345 Seg16.relationLc345Part0 Seg16.relationLc345Part1 Seg16.relationLc345Part2 Seg16.relationLc345Part3 at r3771
  unfold Seg16.relationRow3772 Seg16.relationLc346 Seg16.relationLc346Part0 Seg16.relationLc346Part1 at r3772
  unfold Seg16.relationRow3773 Seg16.relationLc347 Seg16.relationLc347Part0 Seg16.relationLc347Part1 at r3773
  unfold Seg16.relationRow3774 at r3774
  unfold Seg16.relationRow3775 at r3775
  unfold Seg16.relationRow3776 at r3776
  unfold Seg16.relationRow3777 Seg16.relationLc348 Seg16.relationLc348Part0 Seg16.relationLc348Part1 at r3777
  unfold Seg16.relationRow3778 Seg16.relationLc349 Seg16.relationLc349Part0 Seg16.relationLc349Part1 at r3778
  unfold Seg16.relationRow3779 at r3779
  unfold Seg16.relationRow3780 at r3780
  unfold Seg16.relationRow3781 at r3781
  unfold Seg16.relationRow3782 at r3782
  unfold Seg16.relationRow3783 at r3783
  have hrung62 (bit : Bool) (hbit : rho 15354 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX62 rho : Seg16.F), (seg16AccY62 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16341 : Seg16.F), (rho 16342 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX62 rho : Seg16.F), (seg16AccY62 rho : Seg16.F)⟩
        ⟨(rho 16341 : Seg16.F), (rho 16342 : Seg16.F)⟩
        ⟨(seg16AccX63 rho : Seg16.F), (seg16AccY63 rho : Seg16.F)⟩
        ⟨(rho 16354 : Seg16.F), (rho 16355 : Seg16.F)⟩ := by
    have ha0 : (rho 16341 + rho 16342) * (seg16AccX62 rho + seg16AccY62 rho) = rho 16343 := by
      rw [seg16LadderFlatX62_eq, seg16LadderFlatY62_eq]
      unfold seg16LadderFlatX62 seg16LadderFlatY62
      linear_combination r3771
    have ha1 : rho 16342 * seg16AccX62 rho = rho 16344 := by
      rw [seg16LadderFlatX62_eq]
      unfold seg16LadderFlatX62
      linear_combination r3772
    have ha2 : rho 16341 * seg16AccY62 rho = rho 16345 := by
      rw [seg16LadderFlatY62_eq]
      unfold seg16LadderFlatY62
      linear_combination r3773
    have ha3 : 3021 * rho 16344 * rho 16345 = rho 16346 := by
      linear_combination r3774
    have ha4 : rho 16347 * (1 + rho 16346) = rho 16344 + rho 16345 := by
      linear_combination r3775
    have ha5 : rho 16348 * (1 - rho 16346) = rho 16343 - rho 16344 - rho 16345 := by
      linear_combination r3776
    have haddx :
        rho 16347 * (1 + 3021 * (rho 16342 * seg16AccX62 rho) * (rho 16341 * seg16AccY62 rho)) =
          rho 16342 * seg16AccX62 rho + rho 16341 * seg16AccY62 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16348 * (1 - 3021 * (rho 16342 * seg16AccX62 rho) * (rho 16341 * seg16AccY62 rho)) =
          (-1) * (rho 16342 * seg16AccX62 rho) - rho 16341 * seg16AccY62 rho +
            (seg16AccY62 rho - seg16AccX62 rho * (-1)) * (rho 16341 + rho 16342) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16348 * (1 - rho 16346) = rho 16343 - rho 16344 - rho 16345 := ha5
        _ = (-1) * rho 16344 - rho 16345 + (seg16AccY62 rho - seg16AccX62 rho * (-1)) * (rho 16341 + rho 16342) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX63 rho = seg16AccX62 rho - Bool.toZMod bit * (seg16AccX62 rho - rho 16347) := by
      have hd : rho 16349 = Bool.toZMod bit * (rho 16347 - seg16AccX62 rho) := by
        rw [← hbit, seg16LadderFlatX62_eq]
        unfold seg16LadderFlatX62
        linear_combination -r3777
      unfold seg16AccX63
      linear_combination hd
    have hsely : seg16AccY63 rho = seg16AccY62 rho - Bool.toZMod bit * (seg16AccY62 rho - rho 16348) := by
      have hd : rho 16350 = Bool.toZMod bit * (rho 16348 - seg16AccY62 rho) := by
        rw [← hbit, seg16LadderFlatY62_eq]
        unfold seg16LadderFlatY62
        linear_combination -r3778
      unfold seg16AccY63
      linear_combination hd
    have hd0 : rho 16341 * rho 16342 = rho 16351 := by linear_combination r3779
    have hd1 : rho 16341 * rho 16341 = rho 16352 := by linear_combination r3780
    have hd2 : rho 16342 * rho 16342 = rho 16353 := by linear_combination r3781
    have hd3 : rho 16354 * (rho 16342 * rho 16342 + rho 16341 * rho 16341 * (-1)) = 2 * (rho 16341 * rho 16342) := by
      rw [hd0, hd1, hd2]
      linear_combination r3782
    have hd4 : rho 16355 * (2 - (rho 16342 * rho 16342 + rho 16341 * rho 16341 * (-1))) = rho 16342 * rho 16342 - rho 16341 * rho 16341 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3783
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX62 rho : Seg16.F), (seg16AccY62 rho : Seg16.F)⟩
      ⟨(rho 16341 : Seg16.F), (rho 16342 : Seg16.F)⟩
      ⟨(rho 16347 : Seg16.F), (rho 16348 : Seg16.F)⟩
      ⟨(seg16AccX63 rho : Seg16.F), (seg16AccY63 rho : Seg16.F)⟩
      ⟨(rho 16354 : Seg16.F), (rho 16355 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung62

theorem seg16_rung63 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15355 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX63 rho : Seg16.F), (seg16AccY63 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16354 : Seg16.F), (rho 16355 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX63 rho : Seg16.F), (seg16AccY63 rho : Seg16.F)⟩
        ⟨(rho 16354 : Seg16.F), (rho 16355 : Seg16.F)⟩
        ⟨(seg16AccX64 rho : Seg16.F), (seg16AccY64 rho : Seg16.F)⟩
        ⟨(rho 16367 : Seg16.F), (rho 16368 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3784, r3785, r3786, r3787, r3788, r3789, r3790, r3791, r3792, r3793, r3794, r3795, r3796, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3784 Seg16.relationLc350 Seg16.relationLc350Part0 Seg16.relationLc350Part1 Seg16.relationLc350Part2 Seg16.relationLc350Part3 at r3784
  unfold Seg16.relationRow3785 Seg16.relationLc351 Seg16.relationLc351Part0 Seg16.relationLc351Part1 at r3785
  unfold Seg16.relationRow3786 Seg16.relationLc352 Seg16.relationLc352Part0 Seg16.relationLc352Part1 at r3786
  unfold Seg16.relationRow3787 at r3787
  unfold Seg16.relationRow3788 at r3788
  unfold Seg16.relationRow3789 at r3789
  unfold Seg16.relationRow3790 Seg16.relationLc353 Seg16.relationLc353Part0 Seg16.relationLc353Part1 at r3790
  unfold Seg16.relationRow3791 Seg16.relationLc354 Seg16.relationLc354Part0 Seg16.relationLc354Part1 Seg16.relationLc354Part2 at r3791
  unfold Seg16.relationRow3792 at r3792
  unfold Seg16.relationRow3793 at r3793
  unfold Seg16.relationRow3794 at r3794
  unfold Seg16.relationRow3795 at r3795
  unfold Seg16.relationRow3796 at r3796
  have hrung63 (bit : Bool) (hbit : rho 15355 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX63 rho : Seg16.F), (seg16AccY63 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16354 : Seg16.F), (rho 16355 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX63 rho : Seg16.F), (seg16AccY63 rho : Seg16.F)⟩
        ⟨(rho 16354 : Seg16.F), (rho 16355 : Seg16.F)⟩
        ⟨(seg16AccX64 rho : Seg16.F), (seg16AccY64 rho : Seg16.F)⟩
        ⟨(rho 16367 : Seg16.F), (rho 16368 : Seg16.F)⟩ := by
    have ha0 : (rho 16354 + rho 16355) * (seg16AccX63 rho + seg16AccY63 rho) = rho 16356 := by
      rw [seg16LadderFlatX63_eq, seg16LadderFlatY63_eq]
      unfold seg16LadderFlatX63 seg16LadderFlatY63
      linear_combination r3784
    have ha1 : rho 16355 * seg16AccX63 rho = rho 16357 := by
      rw [seg16LadderFlatX63_eq]
      unfold seg16LadderFlatX63
      linear_combination r3785
    have ha2 : rho 16354 * seg16AccY63 rho = rho 16358 := by
      rw [seg16LadderFlatY63_eq]
      unfold seg16LadderFlatY63
      linear_combination r3786
    have ha3 : 3021 * rho 16357 * rho 16358 = rho 16359 := by
      linear_combination r3787
    have ha4 : rho 16360 * (1 + rho 16359) = rho 16357 + rho 16358 := by
      linear_combination r3788
    have ha5 : rho 16361 * (1 - rho 16359) = rho 16356 - rho 16357 - rho 16358 := by
      linear_combination r3789
    have haddx :
        rho 16360 * (1 + 3021 * (rho 16355 * seg16AccX63 rho) * (rho 16354 * seg16AccY63 rho)) =
          rho 16355 * seg16AccX63 rho + rho 16354 * seg16AccY63 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16361 * (1 - 3021 * (rho 16355 * seg16AccX63 rho) * (rho 16354 * seg16AccY63 rho)) =
          (-1) * (rho 16355 * seg16AccX63 rho) - rho 16354 * seg16AccY63 rho +
            (seg16AccY63 rho - seg16AccX63 rho * (-1)) * (rho 16354 + rho 16355) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16361 * (1 - rho 16359) = rho 16356 - rho 16357 - rho 16358 := ha5
        _ = (-1) * rho 16357 - rho 16358 + (seg16AccY63 rho - seg16AccX63 rho * (-1)) * (rho 16354 + rho 16355) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX64 rho = seg16AccX63 rho - Bool.toZMod bit * (seg16AccX63 rho - rho 16360) := by
      have hd : rho 16362 = Bool.toZMod bit * (rho 16360 - seg16AccX63 rho) := by
        rw [← hbit, seg16LadderFlatX63_eq]
        unfold seg16LadderFlatX63
        linear_combination -r3790
      unfold seg16AccX64
      linear_combination hd
    have hsely : seg16AccY64 rho = seg16AccY63 rho - Bool.toZMod bit * (seg16AccY63 rho - rho 16361) := by
      have hd : rho 16363 = Bool.toZMod bit * (rho 16361 - seg16AccY63 rho) := by
        rw [← hbit, seg16LadderFlatY63_eq]
        unfold seg16LadderFlatY63
        linear_combination -r3791
      unfold seg16AccY64
      linear_combination hd
    have hd0 : rho 16354 * rho 16355 = rho 16364 := by linear_combination r3792
    have hd1 : rho 16354 * rho 16354 = rho 16365 := by linear_combination r3793
    have hd2 : rho 16355 * rho 16355 = rho 16366 := by linear_combination r3794
    have hd3 : rho 16367 * (rho 16355 * rho 16355 + rho 16354 * rho 16354 * (-1)) = 2 * (rho 16354 * rho 16355) := by
      rw [hd0, hd1, hd2]
      linear_combination r3795
    have hd4 : rho 16368 * (2 - (rho 16355 * rho 16355 + rho 16354 * rho 16354 * (-1))) = rho 16355 * rho 16355 - rho 16354 * rho 16354 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3796
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX63 rho : Seg16.F), (seg16AccY63 rho : Seg16.F)⟩
      ⟨(rho 16354 : Seg16.F), (rho 16355 : Seg16.F)⟩
      ⟨(rho 16360 : Seg16.F), (rho 16361 : Seg16.F)⟩
      ⟨(seg16AccX64 rho : Seg16.F), (seg16AccY64 rho : Seg16.F)⟩
      ⟨(rho 16367 : Seg16.F), (rho 16368 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung63

theorem seg16_hstep_c1 (rho : Nat -> Seg16.F) (h : Seg16.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (15292 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 32 ≤ i → i < 64 →
      EdwardsBridge.onCurve (seg16LadderAccState rho i) →
      EdwardsBridge.onCurve (seg16LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg16LadderAccState rho i) (seg16LadderCurState rho i)
        (seg16LadderAccState rho (i + 1)) (seg16LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg16_rung32 rho h bits[32]! (hbitAt 32 (by omega)) hacc hcur
  · exact seg16_rung33 rho h bits[33]! (hbitAt 33 (by omega)) hacc hcur
  · exact seg16_rung34 rho h bits[34]! (hbitAt 34 (by omega)) hacc hcur
  · exact seg16_rung35 rho h bits[35]! (hbitAt 35 (by omega)) hacc hcur
  · exact seg16_rung36 rho h bits[36]! (hbitAt 36 (by omega)) hacc hcur
  · exact seg16_rung37 rho h bits[37]! (hbitAt 37 (by omega)) hacc hcur
  · exact seg16_rung38 rho h bits[38]! (hbitAt 38 (by omega)) hacc hcur
  · exact seg16_rung39 rho h bits[39]! (hbitAt 39 (by omega)) hacc hcur
  · exact seg16_rung40 rho h bits[40]! (hbitAt 40 (by omega)) hacc hcur
  · exact seg16_rung41 rho h bits[41]! (hbitAt 41 (by omega)) hacc hcur
  · exact seg16_rung42 rho h bits[42]! (hbitAt 42 (by omega)) hacc hcur
  · exact seg16_rung43 rho h bits[43]! (hbitAt 43 (by omega)) hacc hcur
  · exact seg16_rung44 rho h bits[44]! (hbitAt 44 (by omega)) hacc hcur
  · exact seg16_rung45 rho h bits[45]! (hbitAt 45 (by omega)) hacc hcur
  · exact seg16_rung46 rho h bits[46]! (hbitAt 46 (by omega)) hacc hcur
  · exact seg16_rung47 rho h bits[47]! (hbitAt 47 (by omega)) hacc hcur
  · exact seg16_rung48 rho h bits[48]! (hbitAt 48 (by omega)) hacc hcur
  · exact seg16_rung49 rho h bits[49]! (hbitAt 49 (by omega)) hacc hcur
  · exact seg16_rung50 rho h bits[50]! (hbitAt 50 (by omega)) hacc hcur
  · exact seg16_rung51 rho h bits[51]! (hbitAt 51 (by omega)) hacc hcur
  · exact seg16_rung52 rho h bits[52]! (hbitAt 52 (by omega)) hacc hcur
  · exact seg16_rung53 rho h bits[53]! (hbitAt 53 (by omega)) hacc hcur
  · exact seg16_rung54 rho h bits[54]! (hbitAt 54 (by omega)) hacc hcur
  · exact seg16_rung55 rho h bits[55]! (hbitAt 55 (by omega)) hacc hcur
  · exact seg16_rung56 rho h bits[56]! (hbitAt 56 (by omega)) hacc hcur
  · exact seg16_rung57 rho h bits[57]! (hbitAt 57 (by omega)) hacc hcur
  · exact seg16_rung58 rho h bits[58]! (hbitAt 58 (by omega)) hacc hcur
  · exact seg16_rung59 rho h bits[59]! (hbitAt 59 (by omega)) hacc hcur
  · exact seg16_rung60 rho h bits[60]! (hbitAt 60 (by omega)) hacc hcur
  · exact seg16_rung61 rho h bits[61]! (hbitAt 61 (by omega)) hacc hcur
  · exact seg16_rung62 rho h bits[62]! (hbitAt 62 (by omega)) hacc hcur
  · exact seg16_rung63 rho h bits[63]! (hbitAt 63 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
