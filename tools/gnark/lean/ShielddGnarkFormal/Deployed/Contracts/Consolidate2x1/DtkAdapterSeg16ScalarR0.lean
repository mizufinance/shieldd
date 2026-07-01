import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg16_rung0 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15292 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX0 rho : Seg16.F), (seg16AccY0 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17 : Seg16.F), (rho 18 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX0 rho : Seg16.F), (seg16AccY0 rho : Seg16.F)⟩
        ⟨(rho 17 : Seg16.F), (rho 18 : Seg16.F)⟩
        ⟨(seg16AccX1 rho : Seg16.F), (seg16AccY1 rho : Seg16.F)⟩
        ⟨(rho 15548 : Seg16.F), (rho 15549 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p37, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, r2971, r2972, r2973, r2974, r2975, r2976, r2977, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow2971 at r2971
  unfold Seg16.relationRow2972 at r2972
  unfold Seg16.relationRow2973 at r2973
  unfold Seg16.relationRow2974 at r2974
  unfold Seg16.relationRow2975 at r2975
  unfold Seg16.relationRow2976 at r2976
  unfold Seg16.relationRow2977 at r2977
  have hrung0 (bit : Bool) (hbit : rho 15292 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX0 rho : Seg16.F), (seg16AccY0 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17 : Seg16.F), (rho 18 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX0 rho : Seg16.F), (seg16AccY0 rho : Seg16.F)⟩
        ⟨(rho 17 : Seg16.F), (rho 18 : Seg16.F)⟩
        ⟨(seg16AccX1 rho : Seg16.F), (seg16AccY1 rho : Seg16.F)⟩
        ⟨(rho 15548 : Seg16.F), (rho 15549 : Seg16.F)⟩ := by
    have haddx :
        rho 17 * (1 + 3021 * (rho 18 * seg16AccX0 rho) * (rho 17 * seg16AccY0 rho)) =
          rho 18 * seg16AccX0 rho + rho 17 * seg16AccY0 rho := by
      unfold seg16AccX0 seg16AccY0
      ring
    have haddy :
        rho 18 * (1 - 3021 * (rho 18 * seg16AccX0 rho) * (rho 17 * seg16AccY0 rho)) =
          (-1) * (rho 18 * seg16AccX0 rho) - rho 17 * seg16AccY0 rho +
            (seg16AccY0 rho - seg16AccX0 rho * (-1)) * (rho 17 + rho 18) := by
      unfold seg16AccX0 seg16AccY0
      ring
    have hselx : seg16AccX1 rho = seg16AccX0 rho - Bool.toZMod bit * (seg16AccX0 rho - rho 17) := by
      have hd : rho 15543 = Bool.toZMod bit * (rho 17 - seg16AccX0 rho) := by
        rw [← hbit, seg16LadderFlatX0_eq]
        unfold seg16LadderFlatX0
        linear_combination -r2971
      unfold seg16AccX1
      linear_combination hd
    have hsely : seg16AccY1 rho = seg16AccY0 rho - Bool.toZMod bit * (seg16AccY0 rho - rho 18) := by
      have hd : rho 15544 = Bool.toZMod bit * (rho 18 - seg16AccY0 rho) := by
        rw [← hbit, seg16LadderFlatY0_eq]
        unfold seg16LadderFlatY0
        linear_combination -r2972
      unfold seg16AccY1
      linear_combination hd
    have hd0 : rho 17 * rho 18 = rho 15545 := by linear_combination r2973
    have hd1 : rho 17 * rho 17 = rho 15546 := by linear_combination r2974
    have hd2 : rho 18 * rho 18 = rho 15547 := by linear_combination r2975
    have hd3 : rho 15548 * (rho 18 * rho 18 + rho 17 * rho 17 * (-1)) = 2 * (rho 17 * rho 18) := by
      rw [hd0, hd1, hd2]
      linear_combination r2976
    have hd4 : rho 15549 * (2 - (rho 18 * rho 18 + rho 17 * rho 17 * (-1))) = rho 18 * rho 18 - rho 17 * rho 17 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2977
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX0 rho : Seg16.F), (seg16AccY0 rho : Seg16.F)⟩
      ⟨(rho 17 : Seg16.F), (rho 18 : Seg16.F)⟩
      ⟨(rho 17 : Seg16.F), (rho 18 : Seg16.F)⟩
      ⟨(seg16AccX1 rho : Seg16.F), (seg16AccY1 rho : Seg16.F)⟩
      ⟨(rho 15548 : Seg16.F), (rho 15549 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung0

theorem seg16_rung1 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15293 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX1 rho : Seg16.F), (seg16AccY1 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15548 : Seg16.F), (rho 15549 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX1 rho : Seg16.F), (seg16AccY1 rho : Seg16.F)⟩
        ⟨(rho 15548 : Seg16.F), (rho 15549 : Seg16.F)⟩
        ⟨(seg16AccX2 rho : Seg16.F), (seg16AccY2 rho : Seg16.F)⟩
        ⟨(rho 15561 : Seg16.F), (rho 15562 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p37, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2978, r2979, r2980, r2981, r2982, r2983, r2984, r2985, r2986, r2987, r2988, r2989, r2990, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow2978 at r2978
  unfold Seg16.relationRow2979 at r2979
  unfold Seg16.relationRow2980 at r2980
  unfold Seg16.relationRow2981 at r2981
  unfold Seg16.relationRow2982 at r2982
  unfold Seg16.relationRow2983 at r2983
  unfold Seg16.relationRow2984 at r2984
  unfold Seg16.relationRow2985 at r2985
  unfold Seg16.relationRow2986 at r2986
  unfold Seg16.relationRow2987 at r2987
  unfold Seg16.relationRow2988 at r2988
  unfold Seg16.relationRow2989 at r2989
  unfold Seg16.relationRow2990 at r2990
  have hrung1 (bit : Bool) (hbit : rho 15293 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX1 rho : Seg16.F), (seg16AccY1 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15548 : Seg16.F), (rho 15549 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX1 rho : Seg16.F), (seg16AccY1 rho : Seg16.F)⟩
        ⟨(rho 15548 : Seg16.F), (rho 15549 : Seg16.F)⟩
        ⟨(seg16AccX2 rho : Seg16.F), (seg16AccY2 rho : Seg16.F)⟩
        ⟨(rho 15561 : Seg16.F), (rho 15562 : Seg16.F)⟩ := by
    have ha0 : (rho 15548 + rho 15549) * (seg16AccX1 rho + seg16AccY1 rho) = rho 15550 := by
      rw [seg16LadderFlatX1_eq, seg16LadderFlatY1_eq]
      unfold seg16LadderFlatX1 seg16LadderFlatY1
      linear_combination r2978
    have ha1 : rho 15549 * seg16AccX1 rho = rho 15551 := by
      rw [seg16LadderFlatX1_eq]
      unfold seg16LadderFlatX1
      linear_combination r2979
    have ha2 : rho 15548 * seg16AccY1 rho = rho 15552 := by
      rw [seg16LadderFlatY1_eq]
      unfold seg16LadderFlatY1
      linear_combination r2980
    have ha3 : 3021 * rho 15551 * rho 15552 = rho 15553 := by
      linear_combination r2981
    have ha4 : rho 15554 * (1 + rho 15553) = rho 15551 + rho 15552 := by
      linear_combination r2982
    have ha5 : rho 15555 * (1 - rho 15553) = rho 15550 - rho 15551 - rho 15552 := by
      linear_combination r2983
    have haddx :
        rho 15554 * (1 + 3021 * (rho 15549 * seg16AccX1 rho) * (rho 15548 * seg16AccY1 rho)) =
          rho 15549 * seg16AccX1 rho + rho 15548 * seg16AccY1 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15555 * (1 - 3021 * (rho 15549 * seg16AccX1 rho) * (rho 15548 * seg16AccY1 rho)) =
          (-1) * (rho 15549 * seg16AccX1 rho) - rho 15548 * seg16AccY1 rho +
            (seg16AccY1 rho - seg16AccX1 rho * (-1)) * (rho 15548 + rho 15549) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15555 * (1 - rho 15553) = rho 15550 - rho 15551 - rho 15552 := ha5
        _ = (-1) * rho 15551 - rho 15552 + (seg16AccY1 rho - seg16AccX1 rho * (-1)) * (rho 15548 + rho 15549) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX2 rho = seg16AccX1 rho - Bool.toZMod bit * (seg16AccX1 rho - rho 15554) := by
      have hd : rho 15556 = Bool.toZMod bit * (rho 15554 - seg16AccX1 rho) := by
        rw [← hbit, seg16LadderFlatX1_eq]
        unfold seg16LadderFlatX1
        linear_combination -r2984
      unfold seg16AccX2
      linear_combination hd
    have hsely : seg16AccY2 rho = seg16AccY1 rho - Bool.toZMod bit * (seg16AccY1 rho - rho 15555) := by
      have hd : rho 15557 = Bool.toZMod bit * (rho 15555 - seg16AccY1 rho) := by
        rw [← hbit, seg16LadderFlatY1_eq]
        unfold seg16LadderFlatY1
        linear_combination -r2985
      unfold seg16AccY2
      linear_combination hd
    have hd0 : rho 15548 * rho 15549 = rho 15558 := by linear_combination r2986
    have hd1 : rho 15548 * rho 15548 = rho 15559 := by linear_combination r2987
    have hd2 : rho 15549 * rho 15549 = rho 15560 := by linear_combination r2988
    have hd3 : rho 15561 * (rho 15549 * rho 15549 + rho 15548 * rho 15548 * (-1)) = 2 * (rho 15548 * rho 15549) := by
      rw [hd0, hd1, hd2]
      linear_combination r2989
    have hd4 : rho 15562 * (2 - (rho 15549 * rho 15549 + rho 15548 * rho 15548 * (-1))) = rho 15549 * rho 15549 - rho 15548 * rho 15548 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2990
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX1 rho : Seg16.F), (seg16AccY1 rho : Seg16.F)⟩
      ⟨(rho 15548 : Seg16.F), (rho 15549 : Seg16.F)⟩
      ⟨(rho 15554 : Seg16.F), (rho 15555 : Seg16.F)⟩
      ⟨(seg16AccX2 rho : Seg16.F), (seg16AccY2 rho : Seg16.F)⟩
      ⟨(rho 15561 : Seg16.F), (rho 15562 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung1

theorem seg16_rung2 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15294 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX2 rho : Seg16.F), (seg16AccY2 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15561 : Seg16.F), (rho 15562 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX2 rho : Seg16.F), (seg16AccY2 rho : Seg16.F)⟩
        ⟨(rho 15561 : Seg16.F), (rho 15562 : Seg16.F)⟩
        ⟨(seg16AccX3 rho : Seg16.F), (seg16AccY3 rho : Seg16.F)⟩
        ⟨(rho 15574 : Seg16.F), (rho 15575 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p37, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2991, r2992, r2993, r2994, r2995, r2996, r2997, r2998, r2999, r3000, r3001, r3002, r3003, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow2991 at r2991
  unfold Seg16.relationRow2992 at r2992
  unfold Seg16.relationRow2993 at r2993
  unfold Seg16.relationRow2994 at r2994
  unfold Seg16.relationRow2995 at r2995
  unfold Seg16.relationRow2996 at r2996
  unfold Seg16.relationRow2997 at r2997
  unfold Seg16.relationRow2998 at r2998
  unfold Seg16.relationRow2999 at r2999
  unfold Seg16.relationRow3000 at r3000
  unfold Seg16.relationRow3001 at r3001
  unfold Seg16.relationRow3002 at r3002
  unfold Seg16.relationRow3003 at r3003
  have hrung2 (bit : Bool) (hbit : rho 15294 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX2 rho : Seg16.F), (seg16AccY2 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15561 : Seg16.F), (rho 15562 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX2 rho : Seg16.F), (seg16AccY2 rho : Seg16.F)⟩
        ⟨(rho 15561 : Seg16.F), (rho 15562 : Seg16.F)⟩
        ⟨(seg16AccX3 rho : Seg16.F), (seg16AccY3 rho : Seg16.F)⟩
        ⟨(rho 15574 : Seg16.F), (rho 15575 : Seg16.F)⟩ := by
    have ha0 : (rho 15561 + rho 15562) * (seg16AccX2 rho + seg16AccY2 rho) = rho 15563 := by
      rw [seg16LadderFlatX2_eq, seg16LadderFlatY2_eq]
      unfold seg16LadderFlatX2 seg16LadderFlatY2
      linear_combination r2991
    have ha1 : rho 15562 * seg16AccX2 rho = rho 15564 := by
      rw [seg16LadderFlatX2_eq]
      unfold seg16LadderFlatX2
      linear_combination r2992
    have ha2 : rho 15561 * seg16AccY2 rho = rho 15565 := by
      rw [seg16LadderFlatY2_eq]
      unfold seg16LadderFlatY2
      linear_combination r2993
    have ha3 : 3021 * rho 15564 * rho 15565 = rho 15566 := by
      linear_combination r2994
    have ha4 : rho 15567 * (1 + rho 15566) = rho 15564 + rho 15565 := by
      linear_combination r2995
    have ha5 : rho 15568 * (1 - rho 15566) = rho 15563 - rho 15564 - rho 15565 := by
      linear_combination r2996
    have haddx :
        rho 15567 * (1 + 3021 * (rho 15562 * seg16AccX2 rho) * (rho 15561 * seg16AccY2 rho)) =
          rho 15562 * seg16AccX2 rho + rho 15561 * seg16AccY2 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15568 * (1 - 3021 * (rho 15562 * seg16AccX2 rho) * (rho 15561 * seg16AccY2 rho)) =
          (-1) * (rho 15562 * seg16AccX2 rho) - rho 15561 * seg16AccY2 rho +
            (seg16AccY2 rho - seg16AccX2 rho * (-1)) * (rho 15561 + rho 15562) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15568 * (1 - rho 15566) = rho 15563 - rho 15564 - rho 15565 := ha5
        _ = (-1) * rho 15564 - rho 15565 + (seg16AccY2 rho - seg16AccX2 rho * (-1)) * (rho 15561 + rho 15562) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX3 rho = seg16AccX2 rho - Bool.toZMod bit * (seg16AccX2 rho - rho 15567) := by
      have hd : rho 15569 = Bool.toZMod bit * (rho 15567 - seg16AccX2 rho) := by
        rw [← hbit, seg16LadderFlatX2_eq]
        unfold seg16LadderFlatX2
        linear_combination -r2997
      unfold seg16AccX3
      linear_combination hd
    have hsely : seg16AccY3 rho = seg16AccY2 rho - Bool.toZMod bit * (seg16AccY2 rho - rho 15568) := by
      have hd : rho 15570 = Bool.toZMod bit * (rho 15568 - seg16AccY2 rho) := by
        rw [← hbit, seg16LadderFlatY2_eq]
        unfold seg16LadderFlatY2
        linear_combination -r2998
      unfold seg16AccY3
      linear_combination hd
    have hd0 : rho 15561 * rho 15562 = rho 15571 := by linear_combination r2999
    have hd1 : rho 15561 * rho 15561 = rho 15572 := by linear_combination r3000
    have hd2 : rho 15562 * rho 15562 = rho 15573 := by linear_combination r3001
    have hd3 : rho 15574 * (rho 15562 * rho 15562 + rho 15561 * rho 15561 * (-1)) = 2 * (rho 15561 * rho 15562) := by
      rw [hd0, hd1, hd2]
      linear_combination r3002
    have hd4 : rho 15575 * (2 - (rho 15562 * rho 15562 + rho 15561 * rho 15561 * (-1))) = rho 15562 * rho 15562 - rho 15561 * rho 15561 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3003
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX2 rho : Seg16.F), (seg16AccY2 rho : Seg16.F)⟩
      ⟨(rho 15561 : Seg16.F), (rho 15562 : Seg16.F)⟩
      ⟨(rho 15567 : Seg16.F), (rho 15568 : Seg16.F)⟩
      ⟨(seg16AccX3 rho : Seg16.F), (seg16AccY3 rho : Seg16.F)⟩
      ⟨(rho 15574 : Seg16.F), (rho 15575 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung2

theorem seg16_rung3 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15295 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX3 rho : Seg16.F), (seg16AccY3 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15574 : Seg16.F), (rho 15575 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX3 rho : Seg16.F), (seg16AccY3 rho : Seg16.F)⟩
        ⟨(rho 15574 : Seg16.F), (rho 15575 : Seg16.F)⟩
        ⟨(seg16AccX4 rho : Seg16.F), (seg16AccY4 rho : Seg16.F)⟩
        ⟨(rho 15587 : Seg16.F), (rho 15588 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p37, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3004, r3005, r3006, r3007, r3008, r3009, r3010, r3011, r3012, r3013, r3014, r3015, r3016, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3004 at r3004
  unfold Seg16.relationRow3005 at r3005
  unfold Seg16.relationRow3006 at r3006
  unfold Seg16.relationRow3007 at r3007
  unfold Seg16.relationRow3008 at r3008
  unfold Seg16.relationRow3009 at r3009
  unfold Seg16.relationRow3010 at r3010
  unfold Seg16.relationRow3011 at r3011
  unfold Seg16.relationRow3012 at r3012
  unfold Seg16.relationRow3013 at r3013
  unfold Seg16.relationRow3014 at r3014
  unfold Seg16.relationRow3015 at r3015
  unfold Seg16.relationRow3016 at r3016
  have hrung3 (bit : Bool) (hbit : rho 15295 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX3 rho : Seg16.F), (seg16AccY3 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15574 : Seg16.F), (rho 15575 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX3 rho : Seg16.F), (seg16AccY3 rho : Seg16.F)⟩
        ⟨(rho 15574 : Seg16.F), (rho 15575 : Seg16.F)⟩
        ⟨(seg16AccX4 rho : Seg16.F), (seg16AccY4 rho : Seg16.F)⟩
        ⟨(rho 15587 : Seg16.F), (rho 15588 : Seg16.F)⟩ := by
    have ha0 : (rho 15574 + rho 15575) * (seg16AccX3 rho + seg16AccY3 rho) = rho 15576 := by
      rw [seg16LadderFlatX3_eq, seg16LadderFlatY3_eq]
      unfold seg16LadderFlatX3 seg16LadderFlatY3
      linear_combination r3004
    have ha1 : rho 15575 * seg16AccX3 rho = rho 15577 := by
      rw [seg16LadderFlatX3_eq]
      unfold seg16LadderFlatX3
      linear_combination r3005
    have ha2 : rho 15574 * seg16AccY3 rho = rho 15578 := by
      rw [seg16LadderFlatY3_eq]
      unfold seg16LadderFlatY3
      linear_combination r3006
    have ha3 : 3021 * rho 15577 * rho 15578 = rho 15579 := by
      linear_combination r3007
    have ha4 : rho 15580 * (1 + rho 15579) = rho 15577 + rho 15578 := by
      linear_combination r3008
    have ha5 : rho 15581 * (1 - rho 15579) = rho 15576 - rho 15577 - rho 15578 := by
      linear_combination r3009
    have haddx :
        rho 15580 * (1 + 3021 * (rho 15575 * seg16AccX3 rho) * (rho 15574 * seg16AccY3 rho)) =
          rho 15575 * seg16AccX3 rho + rho 15574 * seg16AccY3 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15581 * (1 - 3021 * (rho 15575 * seg16AccX3 rho) * (rho 15574 * seg16AccY3 rho)) =
          (-1) * (rho 15575 * seg16AccX3 rho) - rho 15574 * seg16AccY3 rho +
            (seg16AccY3 rho - seg16AccX3 rho * (-1)) * (rho 15574 + rho 15575) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15581 * (1 - rho 15579) = rho 15576 - rho 15577 - rho 15578 := ha5
        _ = (-1) * rho 15577 - rho 15578 + (seg16AccY3 rho - seg16AccX3 rho * (-1)) * (rho 15574 + rho 15575) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX4 rho = seg16AccX3 rho - Bool.toZMod bit * (seg16AccX3 rho - rho 15580) := by
      have hd : rho 15582 = Bool.toZMod bit * (rho 15580 - seg16AccX3 rho) := by
        rw [← hbit, seg16LadderFlatX3_eq]
        unfold seg16LadderFlatX3
        linear_combination -r3010
      unfold seg16AccX4
      linear_combination hd
    have hsely : seg16AccY4 rho = seg16AccY3 rho - Bool.toZMod bit * (seg16AccY3 rho - rho 15581) := by
      have hd : rho 15583 = Bool.toZMod bit * (rho 15581 - seg16AccY3 rho) := by
        rw [← hbit, seg16LadderFlatY3_eq]
        unfold seg16LadderFlatY3
        linear_combination -r3011
      unfold seg16AccY4
      linear_combination hd
    have hd0 : rho 15574 * rho 15575 = rho 15584 := by linear_combination r3012
    have hd1 : rho 15574 * rho 15574 = rho 15585 := by linear_combination r3013
    have hd2 : rho 15575 * rho 15575 = rho 15586 := by linear_combination r3014
    have hd3 : rho 15587 * (rho 15575 * rho 15575 + rho 15574 * rho 15574 * (-1)) = 2 * (rho 15574 * rho 15575) := by
      rw [hd0, hd1, hd2]
      linear_combination r3015
    have hd4 : rho 15588 * (2 - (rho 15575 * rho 15575 + rho 15574 * rho 15574 * (-1))) = rho 15575 * rho 15575 - rho 15574 * rho 15574 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3016
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX3 rho : Seg16.F), (seg16AccY3 rho : Seg16.F)⟩
      ⟨(rho 15574 : Seg16.F), (rho 15575 : Seg16.F)⟩
      ⟨(rho 15580 : Seg16.F), (rho 15581 : Seg16.F)⟩
      ⟨(seg16AccX4 rho : Seg16.F), (seg16AccY4 rho : Seg16.F)⟩
      ⟨(rho 15587 : Seg16.F), (rho 15588 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung3

theorem seg16_rung4 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15296 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX4 rho : Seg16.F), (seg16AccY4 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15587 : Seg16.F), (rho 15588 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX4 rho : Seg16.F), (seg16AccY4 rho : Seg16.F)⟩
        ⟨(rho 15587 : Seg16.F), (rho 15588 : Seg16.F)⟩
        ⟨(seg16AccX5 rho : Seg16.F), (seg16AccY5 rho : Seg16.F)⟩
        ⟨(rho 15600 : Seg16.F), (rho 15601 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p37, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3017, r3018, r3019, r3020, r3021, r3022, r3023, r3024, r3025, r3026, r3027, r3028, r3029, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3017 at r3017
  unfold Seg16.relationRow3018 at r3018
  unfold Seg16.relationRow3019 at r3019
  unfold Seg16.relationRow3020 at r3020
  unfold Seg16.relationRow3021 at r3021
  unfold Seg16.relationRow3022 at r3022
  unfold Seg16.relationRow3023 at r3023
  unfold Seg16.relationRow3024 at r3024
  unfold Seg16.relationRow3025 at r3025
  unfold Seg16.relationRow3026 at r3026
  unfold Seg16.relationRow3027 at r3027
  unfold Seg16.relationRow3028 at r3028
  unfold Seg16.relationRow3029 at r3029
  have hrung4 (bit : Bool) (hbit : rho 15296 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX4 rho : Seg16.F), (seg16AccY4 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15587 : Seg16.F), (rho 15588 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX4 rho : Seg16.F), (seg16AccY4 rho : Seg16.F)⟩
        ⟨(rho 15587 : Seg16.F), (rho 15588 : Seg16.F)⟩
        ⟨(seg16AccX5 rho : Seg16.F), (seg16AccY5 rho : Seg16.F)⟩
        ⟨(rho 15600 : Seg16.F), (rho 15601 : Seg16.F)⟩ := by
    have ha0 : (rho 15587 + rho 15588) * (seg16AccX4 rho + seg16AccY4 rho) = rho 15589 := by
      rw [seg16LadderFlatX4_eq, seg16LadderFlatY4_eq]
      unfold seg16LadderFlatX4 seg16LadderFlatY4
      linear_combination r3017
    have ha1 : rho 15588 * seg16AccX4 rho = rho 15590 := by
      rw [seg16LadderFlatX4_eq]
      unfold seg16LadderFlatX4
      linear_combination r3018
    have ha2 : rho 15587 * seg16AccY4 rho = rho 15591 := by
      rw [seg16LadderFlatY4_eq]
      unfold seg16LadderFlatY4
      linear_combination r3019
    have ha3 : 3021 * rho 15590 * rho 15591 = rho 15592 := by
      linear_combination r3020
    have ha4 : rho 15593 * (1 + rho 15592) = rho 15590 + rho 15591 := by
      linear_combination r3021
    have ha5 : rho 15594 * (1 - rho 15592) = rho 15589 - rho 15590 - rho 15591 := by
      linear_combination r3022
    have haddx :
        rho 15593 * (1 + 3021 * (rho 15588 * seg16AccX4 rho) * (rho 15587 * seg16AccY4 rho)) =
          rho 15588 * seg16AccX4 rho + rho 15587 * seg16AccY4 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15594 * (1 - 3021 * (rho 15588 * seg16AccX4 rho) * (rho 15587 * seg16AccY4 rho)) =
          (-1) * (rho 15588 * seg16AccX4 rho) - rho 15587 * seg16AccY4 rho +
            (seg16AccY4 rho - seg16AccX4 rho * (-1)) * (rho 15587 + rho 15588) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15594 * (1 - rho 15592) = rho 15589 - rho 15590 - rho 15591 := ha5
        _ = (-1) * rho 15590 - rho 15591 + (seg16AccY4 rho - seg16AccX4 rho * (-1)) * (rho 15587 + rho 15588) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX5 rho = seg16AccX4 rho - Bool.toZMod bit * (seg16AccX4 rho - rho 15593) := by
      have hd : rho 15595 = Bool.toZMod bit * (rho 15593 - seg16AccX4 rho) := by
        rw [← hbit, seg16LadderFlatX4_eq]
        unfold seg16LadderFlatX4
        linear_combination -r3023
      unfold seg16AccX5
      linear_combination hd
    have hsely : seg16AccY5 rho = seg16AccY4 rho - Bool.toZMod bit * (seg16AccY4 rho - rho 15594) := by
      have hd : rho 15596 = Bool.toZMod bit * (rho 15594 - seg16AccY4 rho) := by
        rw [← hbit, seg16LadderFlatY4_eq]
        unfold seg16LadderFlatY4
        linear_combination -r3024
      unfold seg16AccY5
      linear_combination hd
    have hd0 : rho 15587 * rho 15588 = rho 15597 := by linear_combination r3025
    have hd1 : rho 15587 * rho 15587 = rho 15598 := by linear_combination r3026
    have hd2 : rho 15588 * rho 15588 = rho 15599 := by linear_combination r3027
    have hd3 : rho 15600 * (rho 15588 * rho 15588 + rho 15587 * rho 15587 * (-1)) = 2 * (rho 15587 * rho 15588) := by
      rw [hd0, hd1, hd2]
      linear_combination r3028
    have hd4 : rho 15601 * (2 - (rho 15588 * rho 15588 + rho 15587 * rho 15587 * (-1))) = rho 15588 * rho 15588 - rho 15587 * rho 15587 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3029
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX4 rho : Seg16.F), (seg16AccY4 rho : Seg16.F)⟩
      ⟨(rho 15587 : Seg16.F), (rho 15588 : Seg16.F)⟩
      ⟨(rho 15593 : Seg16.F), (rho 15594 : Seg16.F)⟩
      ⟨(seg16AccX5 rho : Seg16.F), (seg16AccY5 rho : Seg16.F)⟩
      ⟨(rho 15600 : Seg16.F), (rho 15601 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung4

theorem seg16_rung5 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15297 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX5 rho : Seg16.F), (seg16AccY5 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15600 : Seg16.F), (rho 15601 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX5 rho : Seg16.F), (seg16AccY5 rho : Seg16.F)⟩
        ⟨(rho 15600 : Seg16.F), (rho 15601 : Seg16.F)⟩
        ⟨(seg16AccX6 rho : Seg16.F), (seg16AccY6 rho : Seg16.F)⟩
        ⟨(rho 15613 : Seg16.F), (rho 15614 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p37, p38, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3030, r3031, r3032, r3033, r3034, r3035, r3036, r3037, r3038, r3039⟩
  unfold Seg16.relationPart38 at p38
  rcases p38 with ⟨r3040, r3041, r3042, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3030 at r3030
  unfold Seg16.relationRow3031 at r3031
  unfold Seg16.relationRow3032 at r3032
  unfold Seg16.relationRow3033 at r3033
  unfold Seg16.relationRow3034 at r3034
  unfold Seg16.relationRow3035 at r3035
  unfold Seg16.relationRow3036 at r3036
  unfold Seg16.relationRow3037 at r3037
  unfold Seg16.relationRow3038 at r3038
  unfold Seg16.relationRow3039 at r3039
  unfold Seg16.relationRow3040 at r3040
  unfold Seg16.relationRow3041 at r3041
  unfold Seg16.relationRow3042 at r3042
  have hrung5 (bit : Bool) (hbit : rho 15297 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX5 rho : Seg16.F), (seg16AccY5 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15600 : Seg16.F), (rho 15601 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX5 rho : Seg16.F), (seg16AccY5 rho : Seg16.F)⟩
        ⟨(rho 15600 : Seg16.F), (rho 15601 : Seg16.F)⟩
        ⟨(seg16AccX6 rho : Seg16.F), (seg16AccY6 rho : Seg16.F)⟩
        ⟨(rho 15613 : Seg16.F), (rho 15614 : Seg16.F)⟩ := by
    have ha0 : (rho 15600 + rho 15601) * (seg16AccX5 rho + seg16AccY5 rho) = rho 15602 := by
      rw [seg16LadderFlatX5_eq, seg16LadderFlatY5_eq]
      unfold seg16LadderFlatX5 seg16LadderFlatY5
      linear_combination r3030
    have ha1 : rho 15601 * seg16AccX5 rho = rho 15603 := by
      rw [seg16LadderFlatX5_eq]
      unfold seg16LadderFlatX5
      linear_combination r3031
    have ha2 : rho 15600 * seg16AccY5 rho = rho 15604 := by
      rw [seg16LadderFlatY5_eq]
      unfold seg16LadderFlatY5
      linear_combination r3032
    have ha3 : 3021 * rho 15603 * rho 15604 = rho 15605 := by
      linear_combination r3033
    have ha4 : rho 15606 * (1 + rho 15605) = rho 15603 + rho 15604 := by
      linear_combination r3034
    have ha5 : rho 15607 * (1 - rho 15605) = rho 15602 - rho 15603 - rho 15604 := by
      linear_combination r3035
    have haddx :
        rho 15606 * (1 + 3021 * (rho 15601 * seg16AccX5 rho) * (rho 15600 * seg16AccY5 rho)) =
          rho 15601 * seg16AccX5 rho + rho 15600 * seg16AccY5 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15607 * (1 - 3021 * (rho 15601 * seg16AccX5 rho) * (rho 15600 * seg16AccY5 rho)) =
          (-1) * (rho 15601 * seg16AccX5 rho) - rho 15600 * seg16AccY5 rho +
            (seg16AccY5 rho - seg16AccX5 rho * (-1)) * (rho 15600 + rho 15601) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15607 * (1 - rho 15605) = rho 15602 - rho 15603 - rho 15604 := ha5
        _ = (-1) * rho 15603 - rho 15604 + (seg16AccY5 rho - seg16AccX5 rho * (-1)) * (rho 15600 + rho 15601) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX6 rho = seg16AccX5 rho - Bool.toZMod bit * (seg16AccX5 rho - rho 15606) := by
      have hd : rho 15608 = Bool.toZMod bit * (rho 15606 - seg16AccX5 rho) := by
        rw [← hbit, seg16LadderFlatX5_eq]
        unfold seg16LadderFlatX5
        linear_combination -r3036
      unfold seg16AccX6
      linear_combination hd
    have hsely : seg16AccY6 rho = seg16AccY5 rho - Bool.toZMod bit * (seg16AccY5 rho - rho 15607) := by
      have hd : rho 15609 = Bool.toZMod bit * (rho 15607 - seg16AccY5 rho) := by
        rw [← hbit, seg16LadderFlatY5_eq]
        unfold seg16LadderFlatY5
        linear_combination -r3037
      unfold seg16AccY6
      linear_combination hd
    have hd0 : rho 15600 * rho 15601 = rho 15610 := by linear_combination r3038
    have hd1 : rho 15600 * rho 15600 = rho 15611 := by linear_combination r3039
    have hd2 : rho 15601 * rho 15601 = rho 15612 := by linear_combination r3040
    have hd3 : rho 15613 * (rho 15601 * rho 15601 + rho 15600 * rho 15600 * (-1)) = 2 * (rho 15600 * rho 15601) := by
      rw [hd0, hd1, hd2]
      linear_combination r3041
    have hd4 : rho 15614 * (2 - (rho 15601 * rho 15601 + rho 15600 * rho 15600 * (-1))) = rho 15601 * rho 15601 - rho 15600 * rho 15600 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3042
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX5 rho : Seg16.F), (seg16AccY5 rho : Seg16.F)⟩
      ⟨(rho 15600 : Seg16.F), (rho 15601 : Seg16.F)⟩
      ⟨(rho 15606 : Seg16.F), (rho 15607 : Seg16.F)⟩
      ⟨(seg16AccX6 rho : Seg16.F), (seg16AccY6 rho : Seg16.F)⟩
      ⟨(rho 15613 : Seg16.F), (rho 15614 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung5

theorem seg16_rung6 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15298 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX6 rho : Seg16.F), (seg16AccY6 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15613 : Seg16.F), (rho 15614 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX6 rho : Seg16.F), (seg16AccY6 rho : Seg16.F)⟩
        ⟨(rho 15613 : Seg16.F), (rho 15614 : Seg16.F)⟩
        ⟨(seg16AccX7 rho : Seg16.F), (seg16AccY7 rho : Seg16.F)⟩
        ⟨(rho 15626 : Seg16.F), (rho 15627 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p38, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart38 at p38
  rcases p38 with ⟨_, _, _, r3043, r3044, r3045, r3046, r3047, r3048, r3049, r3050, r3051, r3052, r3053, r3054, r3055, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3043 at r3043
  unfold Seg16.relationRow3044 at r3044
  unfold Seg16.relationRow3045 at r3045
  unfold Seg16.relationRow3046 at r3046
  unfold Seg16.relationRow3047 at r3047
  unfold Seg16.relationRow3048 at r3048
  unfold Seg16.relationRow3049 at r3049
  unfold Seg16.relationRow3050 at r3050
  unfold Seg16.relationRow3051 at r3051
  unfold Seg16.relationRow3052 at r3052
  unfold Seg16.relationRow3053 at r3053
  unfold Seg16.relationRow3054 at r3054
  unfold Seg16.relationRow3055 at r3055
  have hrung6 (bit : Bool) (hbit : rho 15298 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX6 rho : Seg16.F), (seg16AccY6 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15613 : Seg16.F), (rho 15614 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX6 rho : Seg16.F), (seg16AccY6 rho : Seg16.F)⟩
        ⟨(rho 15613 : Seg16.F), (rho 15614 : Seg16.F)⟩
        ⟨(seg16AccX7 rho : Seg16.F), (seg16AccY7 rho : Seg16.F)⟩
        ⟨(rho 15626 : Seg16.F), (rho 15627 : Seg16.F)⟩ := by
    have ha0 : (rho 15613 + rho 15614) * (seg16AccX6 rho + seg16AccY6 rho) = rho 15615 := by
      rw [seg16LadderFlatX6_eq, seg16LadderFlatY6_eq]
      unfold seg16LadderFlatX6 seg16LadderFlatY6
      linear_combination r3043
    have ha1 : rho 15614 * seg16AccX6 rho = rho 15616 := by
      rw [seg16LadderFlatX6_eq]
      unfold seg16LadderFlatX6
      linear_combination r3044
    have ha2 : rho 15613 * seg16AccY6 rho = rho 15617 := by
      rw [seg16LadderFlatY6_eq]
      unfold seg16LadderFlatY6
      linear_combination r3045
    have ha3 : 3021 * rho 15616 * rho 15617 = rho 15618 := by
      linear_combination r3046
    have ha4 : rho 15619 * (1 + rho 15618) = rho 15616 + rho 15617 := by
      linear_combination r3047
    have ha5 : rho 15620 * (1 - rho 15618) = rho 15615 - rho 15616 - rho 15617 := by
      linear_combination r3048
    have haddx :
        rho 15619 * (1 + 3021 * (rho 15614 * seg16AccX6 rho) * (rho 15613 * seg16AccY6 rho)) =
          rho 15614 * seg16AccX6 rho + rho 15613 * seg16AccY6 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15620 * (1 - 3021 * (rho 15614 * seg16AccX6 rho) * (rho 15613 * seg16AccY6 rho)) =
          (-1) * (rho 15614 * seg16AccX6 rho) - rho 15613 * seg16AccY6 rho +
            (seg16AccY6 rho - seg16AccX6 rho * (-1)) * (rho 15613 + rho 15614) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15620 * (1 - rho 15618) = rho 15615 - rho 15616 - rho 15617 := ha5
        _ = (-1) * rho 15616 - rho 15617 + (seg16AccY6 rho - seg16AccX6 rho * (-1)) * (rho 15613 + rho 15614) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX7 rho = seg16AccX6 rho - Bool.toZMod bit * (seg16AccX6 rho - rho 15619) := by
      have hd : rho 15621 = Bool.toZMod bit * (rho 15619 - seg16AccX6 rho) := by
        rw [← hbit, seg16LadderFlatX6_eq]
        unfold seg16LadderFlatX6
        linear_combination -r3049
      unfold seg16AccX7
      linear_combination hd
    have hsely : seg16AccY7 rho = seg16AccY6 rho - Bool.toZMod bit * (seg16AccY6 rho - rho 15620) := by
      have hd : rho 15622 = Bool.toZMod bit * (rho 15620 - seg16AccY6 rho) := by
        rw [← hbit, seg16LadderFlatY6_eq]
        unfold seg16LadderFlatY6
        linear_combination -r3050
      unfold seg16AccY7
      linear_combination hd
    have hd0 : rho 15613 * rho 15614 = rho 15623 := by linear_combination r3051
    have hd1 : rho 15613 * rho 15613 = rho 15624 := by linear_combination r3052
    have hd2 : rho 15614 * rho 15614 = rho 15625 := by linear_combination r3053
    have hd3 : rho 15626 * (rho 15614 * rho 15614 + rho 15613 * rho 15613 * (-1)) = 2 * (rho 15613 * rho 15614) := by
      rw [hd0, hd1, hd2]
      linear_combination r3054
    have hd4 : rho 15627 * (2 - (rho 15614 * rho 15614 + rho 15613 * rho 15613 * (-1))) = rho 15614 * rho 15614 - rho 15613 * rho 15613 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3055
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX6 rho : Seg16.F), (seg16AccY6 rho : Seg16.F)⟩
      ⟨(rho 15613 : Seg16.F), (rho 15614 : Seg16.F)⟩
      ⟨(rho 15619 : Seg16.F), (rho 15620 : Seg16.F)⟩
      ⟨(seg16AccX7 rho : Seg16.F), (seg16AccY7 rho : Seg16.F)⟩
      ⟨(rho 15626 : Seg16.F), (rho 15627 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung6

theorem seg16_rung7 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15299 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX7 rho : Seg16.F), (seg16AccY7 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15626 : Seg16.F), (rho 15627 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX7 rho : Seg16.F), (seg16AccY7 rho : Seg16.F)⟩
        ⟨(rho 15626 : Seg16.F), (rho 15627 : Seg16.F)⟩
        ⟨(seg16AccX8 rho : Seg16.F), (seg16AccY8 rho : Seg16.F)⟩
        ⟨(rho 15639 : Seg16.F), (rho 15640 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p38, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3056, r3057, r3058, r3059, r3060, r3061, r3062, r3063, r3064, r3065, r3066, r3067, r3068, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3056 at r3056
  unfold Seg16.relationRow3057 at r3057
  unfold Seg16.relationRow3058 at r3058
  unfold Seg16.relationRow3059 at r3059
  unfold Seg16.relationRow3060 at r3060
  unfold Seg16.relationRow3061 at r3061
  unfold Seg16.relationRow3062 at r3062
  unfold Seg16.relationRow3063 at r3063
  unfold Seg16.relationRow3064 at r3064
  unfold Seg16.relationRow3065 at r3065
  unfold Seg16.relationRow3066 at r3066
  unfold Seg16.relationRow3067 at r3067
  unfold Seg16.relationRow3068 at r3068
  have hrung7 (bit : Bool) (hbit : rho 15299 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX7 rho : Seg16.F), (seg16AccY7 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15626 : Seg16.F), (rho 15627 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX7 rho : Seg16.F), (seg16AccY7 rho : Seg16.F)⟩
        ⟨(rho 15626 : Seg16.F), (rho 15627 : Seg16.F)⟩
        ⟨(seg16AccX8 rho : Seg16.F), (seg16AccY8 rho : Seg16.F)⟩
        ⟨(rho 15639 : Seg16.F), (rho 15640 : Seg16.F)⟩ := by
    have ha0 : (rho 15626 + rho 15627) * (seg16AccX7 rho + seg16AccY7 rho) = rho 15628 := by
      rw [seg16LadderFlatX7_eq, seg16LadderFlatY7_eq]
      unfold seg16LadderFlatX7 seg16LadderFlatY7
      linear_combination r3056
    have ha1 : rho 15627 * seg16AccX7 rho = rho 15629 := by
      rw [seg16LadderFlatX7_eq]
      unfold seg16LadderFlatX7
      linear_combination r3057
    have ha2 : rho 15626 * seg16AccY7 rho = rho 15630 := by
      rw [seg16LadderFlatY7_eq]
      unfold seg16LadderFlatY7
      linear_combination r3058
    have ha3 : 3021 * rho 15629 * rho 15630 = rho 15631 := by
      linear_combination r3059
    have ha4 : rho 15632 * (1 + rho 15631) = rho 15629 + rho 15630 := by
      linear_combination r3060
    have ha5 : rho 15633 * (1 - rho 15631) = rho 15628 - rho 15629 - rho 15630 := by
      linear_combination r3061
    have haddx :
        rho 15632 * (1 + 3021 * (rho 15627 * seg16AccX7 rho) * (rho 15626 * seg16AccY7 rho)) =
          rho 15627 * seg16AccX7 rho + rho 15626 * seg16AccY7 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15633 * (1 - 3021 * (rho 15627 * seg16AccX7 rho) * (rho 15626 * seg16AccY7 rho)) =
          (-1) * (rho 15627 * seg16AccX7 rho) - rho 15626 * seg16AccY7 rho +
            (seg16AccY7 rho - seg16AccX7 rho * (-1)) * (rho 15626 + rho 15627) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15633 * (1 - rho 15631) = rho 15628 - rho 15629 - rho 15630 := ha5
        _ = (-1) * rho 15629 - rho 15630 + (seg16AccY7 rho - seg16AccX7 rho * (-1)) * (rho 15626 + rho 15627) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX8 rho = seg16AccX7 rho - Bool.toZMod bit * (seg16AccX7 rho - rho 15632) := by
      have hd : rho 15634 = Bool.toZMod bit * (rho 15632 - seg16AccX7 rho) := by
        rw [← hbit, seg16LadderFlatX7_eq]
        unfold seg16LadderFlatX7
        linear_combination -r3062
      unfold seg16AccX8
      linear_combination hd
    have hsely : seg16AccY8 rho = seg16AccY7 rho - Bool.toZMod bit * (seg16AccY7 rho - rho 15633) := by
      have hd : rho 15635 = Bool.toZMod bit * (rho 15633 - seg16AccY7 rho) := by
        rw [← hbit, seg16LadderFlatY7_eq]
        unfold seg16LadderFlatY7
        linear_combination -r3063
      unfold seg16AccY8
      linear_combination hd
    have hd0 : rho 15626 * rho 15627 = rho 15636 := by linear_combination r3064
    have hd1 : rho 15626 * rho 15626 = rho 15637 := by linear_combination r3065
    have hd2 : rho 15627 * rho 15627 = rho 15638 := by linear_combination r3066
    have hd3 : rho 15639 * (rho 15627 * rho 15627 + rho 15626 * rho 15626 * (-1)) = 2 * (rho 15626 * rho 15627) := by
      rw [hd0, hd1, hd2]
      linear_combination r3067
    have hd4 : rho 15640 * (2 - (rho 15627 * rho 15627 + rho 15626 * rho 15626 * (-1))) = rho 15627 * rho 15627 - rho 15626 * rho 15626 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3068
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX7 rho : Seg16.F), (seg16AccY7 rho : Seg16.F)⟩
      ⟨(rho 15626 : Seg16.F), (rho 15627 : Seg16.F)⟩
      ⟨(rho 15632 : Seg16.F), (rho 15633 : Seg16.F)⟩
      ⟨(seg16AccX8 rho : Seg16.F), (seg16AccY8 rho : Seg16.F)⟩
      ⟨(rho 15639 : Seg16.F), (rho 15640 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung7

theorem seg16_rung8 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15300 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX8 rho : Seg16.F), (seg16AccY8 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15639 : Seg16.F), (rho 15640 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX8 rho : Seg16.F), (seg16AccY8 rho : Seg16.F)⟩
        ⟨(rho 15639 : Seg16.F), (rho 15640 : Seg16.F)⟩
        ⟨(seg16AccX9 rho : Seg16.F), (seg16AccY9 rho : Seg16.F)⟩
        ⟨(rho 15652 : Seg16.F), (rho 15653 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p38, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3069, r3070, r3071, r3072, r3073, r3074, r3075, r3076, r3077, r3078, r3079, r3080, r3081, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3069 at r3069
  unfold Seg16.relationRow3070 at r3070
  unfold Seg16.relationRow3071 at r3071
  unfold Seg16.relationRow3072 at r3072
  unfold Seg16.relationRow3073 at r3073
  unfold Seg16.relationRow3074 at r3074
  unfold Seg16.relationRow3075 at r3075
  unfold Seg16.relationRow3076 at r3076
  unfold Seg16.relationRow3077 at r3077
  unfold Seg16.relationRow3078 at r3078
  unfold Seg16.relationRow3079 at r3079
  unfold Seg16.relationRow3080 at r3080
  unfold Seg16.relationRow3081 at r3081
  have hrung8 (bit : Bool) (hbit : rho 15300 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX8 rho : Seg16.F), (seg16AccY8 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15639 : Seg16.F), (rho 15640 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX8 rho : Seg16.F), (seg16AccY8 rho : Seg16.F)⟩
        ⟨(rho 15639 : Seg16.F), (rho 15640 : Seg16.F)⟩
        ⟨(seg16AccX9 rho : Seg16.F), (seg16AccY9 rho : Seg16.F)⟩
        ⟨(rho 15652 : Seg16.F), (rho 15653 : Seg16.F)⟩ := by
    have ha0 : (rho 15639 + rho 15640) * (seg16AccX8 rho + seg16AccY8 rho) = rho 15641 := by
      rw [seg16LadderFlatX8_eq, seg16LadderFlatY8_eq]
      unfold seg16LadderFlatX8 seg16LadderFlatY8
      linear_combination r3069
    have ha1 : rho 15640 * seg16AccX8 rho = rho 15642 := by
      rw [seg16LadderFlatX8_eq]
      unfold seg16LadderFlatX8
      linear_combination r3070
    have ha2 : rho 15639 * seg16AccY8 rho = rho 15643 := by
      rw [seg16LadderFlatY8_eq]
      unfold seg16LadderFlatY8
      linear_combination r3071
    have ha3 : 3021 * rho 15642 * rho 15643 = rho 15644 := by
      linear_combination r3072
    have ha4 : rho 15645 * (1 + rho 15644) = rho 15642 + rho 15643 := by
      linear_combination r3073
    have ha5 : rho 15646 * (1 - rho 15644) = rho 15641 - rho 15642 - rho 15643 := by
      linear_combination r3074
    have haddx :
        rho 15645 * (1 + 3021 * (rho 15640 * seg16AccX8 rho) * (rho 15639 * seg16AccY8 rho)) =
          rho 15640 * seg16AccX8 rho + rho 15639 * seg16AccY8 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15646 * (1 - 3021 * (rho 15640 * seg16AccX8 rho) * (rho 15639 * seg16AccY8 rho)) =
          (-1) * (rho 15640 * seg16AccX8 rho) - rho 15639 * seg16AccY8 rho +
            (seg16AccY8 rho - seg16AccX8 rho * (-1)) * (rho 15639 + rho 15640) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15646 * (1 - rho 15644) = rho 15641 - rho 15642 - rho 15643 := ha5
        _ = (-1) * rho 15642 - rho 15643 + (seg16AccY8 rho - seg16AccX8 rho * (-1)) * (rho 15639 + rho 15640) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX9 rho = seg16AccX8 rho - Bool.toZMod bit * (seg16AccX8 rho - rho 15645) := by
      have hd : rho 15647 = Bool.toZMod bit * (rho 15645 - seg16AccX8 rho) := by
        rw [← hbit, seg16LadderFlatX8_eq]
        unfold seg16LadderFlatX8
        linear_combination -r3075
      unfold seg16AccX9
      linear_combination hd
    have hsely : seg16AccY9 rho = seg16AccY8 rho - Bool.toZMod bit * (seg16AccY8 rho - rho 15646) := by
      have hd : rho 15648 = Bool.toZMod bit * (rho 15646 - seg16AccY8 rho) := by
        rw [← hbit, seg16LadderFlatY8_eq]
        unfold seg16LadderFlatY8
        linear_combination -r3076
      unfold seg16AccY9
      linear_combination hd
    have hd0 : rho 15639 * rho 15640 = rho 15649 := by linear_combination r3077
    have hd1 : rho 15639 * rho 15639 = rho 15650 := by linear_combination r3078
    have hd2 : rho 15640 * rho 15640 = rho 15651 := by linear_combination r3079
    have hd3 : rho 15652 * (rho 15640 * rho 15640 + rho 15639 * rho 15639 * (-1)) = 2 * (rho 15639 * rho 15640) := by
      rw [hd0, hd1, hd2]
      linear_combination r3080
    have hd4 : rho 15653 * (2 - (rho 15640 * rho 15640 + rho 15639 * rho 15639 * (-1))) = rho 15640 * rho 15640 - rho 15639 * rho 15639 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3081
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX8 rho : Seg16.F), (seg16AccY8 rho : Seg16.F)⟩
      ⟨(rho 15639 : Seg16.F), (rho 15640 : Seg16.F)⟩
      ⟨(rho 15645 : Seg16.F), (rho 15646 : Seg16.F)⟩
      ⟨(seg16AccX9 rho : Seg16.F), (seg16AccY9 rho : Seg16.F)⟩
      ⟨(rho 15652 : Seg16.F), (rho 15653 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung8

theorem seg16_rung9 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15301 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX9 rho : Seg16.F), (seg16AccY9 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15652 : Seg16.F), (rho 15653 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX9 rho : Seg16.F), (seg16AccY9 rho : Seg16.F)⟩
        ⟨(rho 15652 : Seg16.F), (rho 15653 : Seg16.F)⟩
        ⟨(seg16AccX10 rho : Seg16.F), (seg16AccY10 rho : Seg16.F)⟩
        ⟨(rho 15665 : Seg16.F), (rho 15666 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p38, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3082, r3083, r3084, r3085, r3086, r3087, r3088, r3089, r3090, r3091, r3092, r3093, r3094, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3082 at r3082
  unfold Seg16.relationRow3083 at r3083
  unfold Seg16.relationRow3084 at r3084
  unfold Seg16.relationRow3085 at r3085
  unfold Seg16.relationRow3086 at r3086
  unfold Seg16.relationRow3087 at r3087
  unfold Seg16.relationRow3088 at r3088
  unfold Seg16.relationRow3089 at r3089
  unfold Seg16.relationRow3090 at r3090
  unfold Seg16.relationRow3091 at r3091
  unfold Seg16.relationRow3092 at r3092
  unfold Seg16.relationRow3093 at r3093
  unfold Seg16.relationRow3094 at r3094
  have hrung9 (bit : Bool) (hbit : rho 15301 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX9 rho : Seg16.F), (seg16AccY9 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15652 : Seg16.F), (rho 15653 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX9 rho : Seg16.F), (seg16AccY9 rho : Seg16.F)⟩
        ⟨(rho 15652 : Seg16.F), (rho 15653 : Seg16.F)⟩
        ⟨(seg16AccX10 rho : Seg16.F), (seg16AccY10 rho : Seg16.F)⟩
        ⟨(rho 15665 : Seg16.F), (rho 15666 : Seg16.F)⟩ := by
    have ha0 : (rho 15652 + rho 15653) * (seg16AccX9 rho + seg16AccY9 rho) = rho 15654 := by
      rw [seg16LadderFlatX9_eq, seg16LadderFlatY9_eq]
      unfold seg16LadderFlatX9 seg16LadderFlatY9
      linear_combination r3082
    have ha1 : rho 15653 * seg16AccX9 rho = rho 15655 := by
      rw [seg16LadderFlatX9_eq]
      unfold seg16LadderFlatX9
      linear_combination r3083
    have ha2 : rho 15652 * seg16AccY9 rho = rho 15656 := by
      rw [seg16LadderFlatY9_eq]
      unfold seg16LadderFlatY9
      linear_combination r3084
    have ha3 : 3021 * rho 15655 * rho 15656 = rho 15657 := by
      linear_combination r3085
    have ha4 : rho 15658 * (1 + rho 15657) = rho 15655 + rho 15656 := by
      linear_combination r3086
    have ha5 : rho 15659 * (1 - rho 15657) = rho 15654 - rho 15655 - rho 15656 := by
      linear_combination r3087
    have haddx :
        rho 15658 * (1 + 3021 * (rho 15653 * seg16AccX9 rho) * (rho 15652 * seg16AccY9 rho)) =
          rho 15653 * seg16AccX9 rho + rho 15652 * seg16AccY9 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15659 * (1 - 3021 * (rho 15653 * seg16AccX9 rho) * (rho 15652 * seg16AccY9 rho)) =
          (-1) * (rho 15653 * seg16AccX9 rho) - rho 15652 * seg16AccY9 rho +
            (seg16AccY9 rho - seg16AccX9 rho * (-1)) * (rho 15652 + rho 15653) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15659 * (1 - rho 15657) = rho 15654 - rho 15655 - rho 15656 := ha5
        _ = (-1) * rho 15655 - rho 15656 + (seg16AccY9 rho - seg16AccX9 rho * (-1)) * (rho 15652 + rho 15653) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX10 rho = seg16AccX9 rho - Bool.toZMod bit * (seg16AccX9 rho - rho 15658) := by
      have hd : rho 15660 = Bool.toZMod bit * (rho 15658 - seg16AccX9 rho) := by
        rw [← hbit, seg16LadderFlatX9_eq]
        unfold seg16LadderFlatX9
        linear_combination -r3088
      unfold seg16AccX10
      linear_combination hd
    have hsely : seg16AccY10 rho = seg16AccY9 rho - Bool.toZMod bit * (seg16AccY9 rho - rho 15659) := by
      have hd : rho 15661 = Bool.toZMod bit * (rho 15659 - seg16AccY9 rho) := by
        rw [← hbit, seg16LadderFlatY9_eq]
        unfold seg16LadderFlatY9
        linear_combination -r3089
      unfold seg16AccY10
      linear_combination hd
    have hd0 : rho 15652 * rho 15653 = rho 15662 := by linear_combination r3090
    have hd1 : rho 15652 * rho 15652 = rho 15663 := by linear_combination r3091
    have hd2 : rho 15653 * rho 15653 = rho 15664 := by linear_combination r3092
    have hd3 : rho 15665 * (rho 15653 * rho 15653 + rho 15652 * rho 15652 * (-1)) = 2 * (rho 15652 * rho 15653) := by
      rw [hd0, hd1, hd2]
      linear_combination r3093
    have hd4 : rho 15666 * (2 - (rho 15653 * rho 15653 + rho 15652 * rho 15652 * (-1))) = rho 15653 * rho 15653 - rho 15652 * rho 15652 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3094
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX9 rho : Seg16.F), (seg16AccY9 rho : Seg16.F)⟩
      ⟨(rho 15652 : Seg16.F), (rho 15653 : Seg16.F)⟩
      ⟨(rho 15658 : Seg16.F), (rho 15659 : Seg16.F)⟩
      ⟨(seg16AccX10 rho : Seg16.F), (seg16AccY10 rho : Seg16.F)⟩
      ⟨(rho 15665 : Seg16.F), (rho 15666 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung9

theorem seg16_rung10 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15302 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX10 rho : Seg16.F), (seg16AccY10 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15665 : Seg16.F), (rho 15666 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX10 rho : Seg16.F), (seg16AccY10 rho : Seg16.F)⟩
        ⟨(rho 15665 : Seg16.F), (rho 15666 : Seg16.F)⟩
        ⟨(seg16AccX11 rho : Seg16.F), (seg16AccY11 rho : Seg16.F)⟩
        ⟨(rho 15678 : Seg16.F), (rho 15679 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p38, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3095, r3096, r3097, r3098, r3099, r3100, r3101, r3102, r3103, r3104, r3105, r3106, r3107, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3095 at r3095
  unfold Seg16.relationRow3096 at r3096
  unfold Seg16.relationRow3097 at r3097
  unfold Seg16.relationRow3098 at r3098
  unfold Seg16.relationRow3099 at r3099
  unfold Seg16.relationRow3100 at r3100
  unfold Seg16.relationRow3101 at r3101
  unfold Seg16.relationRow3102 at r3102
  unfold Seg16.relationRow3103 at r3103
  unfold Seg16.relationRow3104 at r3104
  unfold Seg16.relationRow3105 at r3105
  unfold Seg16.relationRow3106 at r3106
  unfold Seg16.relationRow3107 at r3107
  have hrung10 (bit : Bool) (hbit : rho 15302 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX10 rho : Seg16.F), (seg16AccY10 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15665 : Seg16.F), (rho 15666 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX10 rho : Seg16.F), (seg16AccY10 rho : Seg16.F)⟩
        ⟨(rho 15665 : Seg16.F), (rho 15666 : Seg16.F)⟩
        ⟨(seg16AccX11 rho : Seg16.F), (seg16AccY11 rho : Seg16.F)⟩
        ⟨(rho 15678 : Seg16.F), (rho 15679 : Seg16.F)⟩ := by
    have ha0 : (rho 15665 + rho 15666) * (seg16AccX10 rho + seg16AccY10 rho) = rho 15667 := by
      rw [seg16LadderFlatX10_eq, seg16LadderFlatY10_eq]
      unfold seg16LadderFlatX10 seg16LadderFlatY10
      linear_combination r3095
    have ha1 : rho 15666 * seg16AccX10 rho = rho 15668 := by
      rw [seg16LadderFlatX10_eq]
      unfold seg16LadderFlatX10
      linear_combination r3096
    have ha2 : rho 15665 * seg16AccY10 rho = rho 15669 := by
      rw [seg16LadderFlatY10_eq]
      unfold seg16LadderFlatY10
      linear_combination r3097
    have ha3 : 3021 * rho 15668 * rho 15669 = rho 15670 := by
      linear_combination r3098
    have ha4 : rho 15671 * (1 + rho 15670) = rho 15668 + rho 15669 := by
      linear_combination r3099
    have ha5 : rho 15672 * (1 - rho 15670) = rho 15667 - rho 15668 - rho 15669 := by
      linear_combination r3100
    have haddx :
        rho 15671 * (1 + 3021 * (rho 15666 * seg16AccX10 rho) * (rho 15665 * seg16AccY10 rho)) =
          rho 15666 * seg16AccX10 rho + rho 15665 * seg16AccY10 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15672 * (1 - 3021 * (rho 15666 * seg16AccX10 rho) * (rho 15665 * seg16AccY10 rho)) =
          (-1) * (rho 15666 * seg16AccX10 rho) - rho 15665 * seg16AccY10 rho +
            (seg16AccY10 rho - seg16AccX10 rho * (-1)) * (rho 15665 + rho 15666) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15672 * (1 - rho 15670) = rho 15667 - rho 15668 - rho 15669 := ha5
        _ = (-1) * rho 15668 - rho 15669 + (seg16AccY10 rho - seg16AccX10 rho * (-1)) * (rho 15665 + rho 15666) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX11 rho = seg16AccX10 rho - Bool.toZMod bit * (seg16AccX10 rho - rho 15671) := by
      have hd : rho 15673 = Bool.toZMod bit * (rho 15671 - seg16AccX10 rho) := by
        rw [← hbit, seg16LadderFlatX10_eq]
        unfold seg16LadderFlatX10
        linear_combination -r3101
      unfold seg16AccX11
      linear_combination hd
    have hsely : seg16AccY11 rho = seg16AccY10 rho - Bool.toZMod bit * (seg16AccY10 rho - rho 15672) := by
      have hd : rho 15674 = Bool.toZMod bit * (rho 15672 - seg16AccY10 rho) := by
        rw [← hbit, seg16LadderFlatY10_eq]
        unfold seg16LadderFlatY10
        linear_combination -r3102
      unfold seg16AccY11
      linear_combination hd
    have hd0 : rho 15665 * rho 15666 = rho 15675 := by linear_combination r3103
    have hd1 : rho 15665 * rho 15665 = rho 15676 := by linear_combination r3104
    have hd2 : rho 15666 * rho 15666 = rho 15677 := by linear_combination r3105
    have hd3 : rho 15678 * (rho 15666 * rho 15666 + rho 15665 * rho 15665 * (-1)) = 2 * (rho 15665 * rho 15666) := by
      rw [hd0, hd1, hd2]
      linear_combination r3106
    have hd4 : rho 15679 * (2 - (rho 15666 * rho 15666 + rho 15665 * rho 15665 * (-1))) = rho 15666 * rho 15666 - rho 15665 * rho 15665 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3107
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX10 rho : Seg16.F), (seg16AccY10 rho : Seg16.F)⟩
      ⟨(rho 15665 : Seg16.F), (rho 15666 : Seg16.F)⟩
      ⟨(rho 15671 : Seg16.F), (rho 15672 : Seg16.F)⟩
      ⟨(seg16AccX11 rho : Seg16.F), (seg16AccY11 rho : Seg16.F)⟩
      ⟨(rho 15678 : Seg16.F), (rho 15679 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung10

theorem seg16_rung11 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15303 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX11 rho : Seg16.F), (seg16AccY11 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15678 : Seg16.F), (rho 15679 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX11 rho : Seg16.F), (seg16AccY11 rho : Seg16.F)⟩
        ⟨(rho 15678 : Seg16.F), (rho 15679 : Seg16.F)⟩
        ⟨(seg16AccX12 rho : Seg16.F), (seg16AccY12 rho : Seg16.F)⟩
        ⟨(rho 15691 : Seg16.F), (rho 15692 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p38, p39,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3108, r3109, r3110, r3111, r3112, r3113, r3114, r3115, r3116, r3117, r3118, r3119⟩
  unfold Seg16.relationPart39 at p39
  rcases p39 with ⟨r3120, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3108 at r3108
  unfold Seg16.relationRow3109 at r3109
  unfold Seg16.relationRow3110 at r3110
  unfold Seg16.relationRow3111 at r3111
  unfold Seg16.relationRow3112 at r3112
  unfold Seg16.relationRow3113 at r3113
  unfold Seg16.relationRow3114 at r3114
  unfold Seg16.relationRow3115 at r3115
  unfold Seg16.relationRow3116 at r3116
  unfold Seg16.relationRow3117 at r3117
  unfold Seg16.relationRow3118 at r3118
  unfold Seg16.relationRow3119 at r3119
  unfold Seg16.relationRow3120 at r3120
  have hrung11 (bit : Bool) (hbit : rho 15303 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX11 rho : Seg16.F), (seg16AccY11 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15678 : Seg16.F), (rho 15679 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX11 rho : Seg16.F), (seg16AccY11 rho : Seg16.F)⟩
        ⟨(rho 15678 : Seg16.F), (rho 15679 : Seg16.F)⟩
        ⟨(seg16AccX12 rho : Seg16.F), (seg16AccY12 rho : Seg16.F)⟩
        ⟨(rho 15691 : Seg16.F), (rho 15692 : Seg16.F)⟩ := by
    have ha0 : (rho 15678 + rho 15679) * (seg16AccX11 rho + seg16AccY11 rho) = rho 15680 := by
      rw [seg16LadderFlatX11_eq, seg16LadderFlatY11_eq]
      unfold seg16LadderFlatX11 seg16LadderFlatY11
      linear_combination r3108
    have ha1 : rho 15679 * seg16AccX11 rho = rho 15681 := by
      rw [seg16LadderFlatX11_eq]
      unfold seg16LadderFlatX11
      linear_combination r3109
    have ha2 : rho 15678 * seg16AccY11 rho = rho 15682 := by
      rw [seg16LadderFlatY11_eq]
      unfold seg16LadderFlatY11
      linear_combination r3110
    have ha3 : 3021 * rho 15681 * rho 15682 = rho 15683 := by
      linear_combination r3111
    have ha4 : rho 15684 * (1 + rho 15683) = rho 15681 + rho 15682 := by
      linear_combination r3112
    have ha5 : rho 15685 * (1 - rho 15683) = rho 15680 - rho 15681 - rho 15682 := by
      linear_combination r3113
    have haddx :
        rho 15684 * (1 + 3021 * (rho 15679 * seg16AccX11 rho) * (rho 15678 * seg16AccY11 rho)) =
          rho 15679 * seg16AccX11 rho + rho 15678 * seg16AccY11 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15685 * (1 - 3021 * (rho 15679 * seg16AccX11 rho) * (rho 15678 * seg16AccY11 rho)) =
          (-1) * (rho 15679 * seg16AccX11 rho) - rho 15678 * seg16AccY11 rho +
            (seg16AccY11 rho - seg16AccX11 rho * (-1)) * (rho 15678 + rho 15679) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15685 * (1 - rho 15683) = rho 15680 - rho 15681 - rho 15682 := ha5
        _ = (-1) * rho 15681 - rho 15682 + (seg16AccY11 rho - seg16AccX11 rho * (-1)) * (rho 15678 + rho 15679) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX12 rho = seg16AccX11 rho - Bool.toZMod bit * (seg16AccX11 rho - rho 15684) := by
      have hd : rho 15686 = Bool.toZMod bit * (rho 15684 - seg16AccX11 rho) := by
        rw [← hbit, seg16LadderFlatX11_eq]
        unfold seg16LadderFlatX11
        linear_combination -r3114
      unfold seg16AccX12
      linear_combination hd
    have hsely : seg16AccY12 rho = seg16AccY11 rho - Bool.toZMod bit * (seg16AccY11 rho - rho 15685) := by
      have hd : rho 15687 = Bool.toZMod bit * (rho 15685 - seg16AccY11 rho) := by
        rw [← hbit, seg16LadderFlatY11_eq]
        unfold seg16LadderFlatY11
        linear_combination -r3115
      unfold seg16AccY12
      linear_combination hd
    have hd0 : rho 15678 * rho 15679 = rho 15688 := by linear_combination r3116
    have hd1 : rho 15678 * rho 15678 = rho 15689 := by linear_combination r3117
    have hd2 : rho 15679 * rho 15679 = rho 15690 := by linear_combination r3118
    have hd3 : rho 15691 * (rho 15679 * rho 15679 + rho 15678 * rho 15678 * (-1)) = 2 * (rho 15678 * rho 15679) := by
      rw [hd0, hd1, hd2]
      linear_combination r3119
    have hd4 : rho 15692 * (2 - (rho 15679 * rho 15679 + rho 15678 * rho 15678 * (-1))) = rho 15679 * rho 15679 - rho 15678 * rho 15678 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3120
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX11 rho : Seg16.F), (seg16AccY11 rho : Seg16.F)⟩
      ⟨(rho 15678 : Seg16.F), (rho 15679 : Seg16.F)⟩
      ⟨(rho 15684 : Seg16.F), (rho 15685 : Seg16.F)⟩
      ⟨(seg16AccX12 rho : Seg16.F), (seg16AccY12 rho : Seg16.F)⟩
      ⟨(rho 15691 : Seg16.F), (rho 15692 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung11

theorem seg16_rung12 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15304 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX12 rho : Seg16.F), (seg16AccY12 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15691 : Seg16.F), (rho 15692 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX12 rho : Seg16.F), (seg16AccY12 rho : Seg16.F)⟩
        ⟨(rho 15691 : Seg16.F), (rho 15692 : Seg16.F)⟩
        ⟨(seg16AccX13 rho : Seg16.F), (seg16AccY13 rho : Seg16.F)⟩
        ⟨(rho 15704 : Seg16.F), (rho 15705 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p39,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart39 at p39
  rcases p39 with ⟨_, r3121, r3122, r3123, r3124, r3125, r3126, r3127, r3128, r3129, r3130, r3131, r3132, r3133, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3121 at r3121
  unfold Seg16.relationRow3122 at r3122
  unfold Seg16.relationRow3123 at r3123
  unfold Seg16.relationRow3124 at r3124
  unfold Seg16.relationRow3125 at r3125
  unfold Seg16.relationRow3126 at r3126
  unfold Seg16.relationRow3127 at r3127
  unfold Seg16.relationRow3128 at r3128
  unfold Seg16.relationRow3129 at r3129
  unfold Seg16.relationRow3130 at r3130
  unfold Seg16.relationRow3131 at r3131
  unfold Seg16.relationRow3132 at r3132
  unfold Seg16.relationRow3133 at r3133
  have hrung12 (bit : Bool) (hbit : rho 15304 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX12 rho : Seg16.F), (seg16AccY12 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15691 : Seg16.F), (rho 15692 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX12 rho : Seg16.F), (seg16AccY12 rho : Seg16.F)⟩
        ⟨(rho 15691 : Seg16.F), (rho 15692 : Seg16.F)⟩
        ⟨(seg16AccX13 rho : Seg16.F), (seg16AccY13 rho : Seg16.F)⟩
        ⟨(rho 15704 : Seg16.F), (rho 15705 : Seg16.F)⟩ := by
    have ha0 : (rho 15691 + rho 15692) * (seg16AccX12 rho + seg16AccY12 rho) = rho 15693 := by
      rw [seg16LadderFlatX12_eq, seg16LadderFlatY12_eq]
      unfold seg16LadderFlatX12 seg16LadderFlatY12
      linear_combination r3121
    have ha1 : rho 15692 * seg16AccX12 rho = rho 15694 := by
      rw [seg16LadderFlatX12_eq]
      unfold seg16LadderFlatX12
      linear_combination r3122
    have ha2 : rho 15691 * seg16AccY12 rho = rho 15695 := by
      rw [seg16LadderFlatY12_eq]
      unfold seg16LadderFlatY12
      linear_combination r3123
    have ha3 : 3021 * rho 15694 * rho 15695 = rho 15696 := by
      linear_combination r3124
    have ha4 : rho 15697 * (1 + rho 15696) = rho 15694 + rho 15695 := by
      linear_combination r3125
    have ha5 : rho 15698 * (1 - rho 15696) = rho 15693 - rho 15694 - rho 15695 := by
      linear_combination r3126
    have haddx :
        rho 15697 * (1 + 3021 * (rho 15692 * seg16AccX12 rho) * (rho 15691 * seg16AccY12 rho)) =
          rho 15692 * seg16AccX12 rho + rho 15691 * seg16AccY12 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15698 * (1 - 3021 * (rho 15692 * seg16AccX12 rho) * (rho 15691 * seg16AccY12 rho)) =
          (-1) * (rho 15692 * seg16AccX12 rho) - rho 15691 * seg16AccY12 rho +
            (seg16AccY12 rho - seg16AccX12 rho * (-1)) * (rho 15691 + rho 15692) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15698 * (1 - rho 15696) = rho 15693 - rho 15694 - rho 15695 := ha5
        _ = (-1) * rho 15694 - rho 15695 + (seg16AccY12 rho - seg16AccX12 rho * (-1)) * (rho 15691 + rho 15692) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX13 rho = seg16AccX12 rho - Bool.toZMod bit * (seg16AccX12 rho - rho 15697) := by
      have hd : rho 15699 = Bool.toZMod bit * (rho 15697 - seg16AccX12 rho) := by
        rw [← hbit, seg16LadderFlatX12_eq]
        unfold seg16LadderFlatX12
        linear_combination -r3127
      unfold seg16AccX13
      linear_combination hd
    have hsely : seg16AccY13 rho = seg16AccY12 rho - Bool.toZMod bit * (seg16AccY12 rho - rho 15698) := by
      have hd : rho 15700 = Bool.toZMod bit * (rho 15698 - seg16AccY12 rho) := by
        rw [← hbit, seg16LadderFlatY12_eq]
        unfold seg16LadderFlatY12
        linear_combination -r3128
      unfold seg16AccY13
      linear_combination hd
    have hd0 : rho 15691 * rho 15692 = rho 15701 := by linear_combination r3129
    have hd1 : rho 15691 * rho 15691 = rho 15702 := by linear_combination r3130
    have hd2 : rho 15692 * rho 15692 = rho 15703 := by linear_combination r3131
    have hd3 : rho 15704 * (rho 15692 * rho 15692 + rho 15691 * rho 15691 * (-1)) = 2 * (rho 15691 * rho 15692) := by
      rw [hd0, hd1, hd2]
      linear_combination r3132
    have hd4 : rho 15705 * (2 - (rho 15692 * rho 15692 + rho 15691 * rho 15691 * (-1))) = rho 15692 * rho 15692 - rho 15691 * rho 15691 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3133
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX12 rho : Seg16.F), (seg16AccY12 rho : Seg16.F)⟩
      ⟨(rho 15691 : Seg16.F), (rho 15692 : Seg16.F)⟩
      ⟨(rho 15697 : Seg16.F), (rho 15698 : Seg16.F)⟩
      ⟨(seg16AccX13 rho : Seg16.F), (seg16AccY13 rho : Seg16.F)⟩
      ⟨(rho 15704 : Seg16.F), (rho 15705 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung12

theorem seg16_rung13 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15305 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX13 rho : Seg16.F), (seg16AccY13 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15704 : Seg16.F), (rho 15705 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX13 rho : Seg16.F), (seg16AccY13 rho : Seg16.F)⟩
        ⟨(rho 15704 : Seg16.F), (rho 15705 : Seg16.F)⟩
        ⟨(seg16AccX14 rho : Seg16.F), (seg16AccY14 rho : Seg16.F)⟩
        ⟨(rho 15717 : Seg16.F), (rho 15718 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p39,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r3134, r3135, r3136, r3137, r3138, r3139, r3140, r3141, r3142, r3143, r3144, r3145, r3146, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3134 at r3134
  unfold Seg16.relationRow3135 at r3135
  unfold Seg16.relationRow3136 at r3136
  unfold Seg16.relationRow3137 at r3137
  unfold Seg16.relationRow3138 at r3138
  unfold Seg16.relationRow3139 at r3139
  unfold Seg16.relationRow3140 at r3140
  unfold Seg16.relationRow3141 at r3141
  unfold Seg16.relationRow3142 at r3142
  unfold Seg16.relationRow3143 at r3143
  unfold Seg16.relationRow3144 at r3144
  unfold Seg16.relationRow3145 at r3145
  unfold Seg16.relationRow3146 at r3146
  have hrung13 (bit : Bool) (hbit : rho 15305 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX13 rho : Seg16.F), (seg16AccY13 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15704 : Seg16.F), (rho 15705 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX13 rho : Seg16.F), (seg16AccY13 rho : Seg16.F)⟩
        ⟨(rho 15704 : Seg16.F), (rho 15705 : Seg16.F)⟩
        ⟨(seg16AccX14 rho : Seg16.F), (seg16AccY14 rho : Seg16.F)⟩
        ⟨(rho 15717 : Seg16.F), (rho 15718 : Seg16.F)⟩ := by
    have ha0 : (rho 15704 + rho 15705) * (seg16AccX13 rho + seg16AccY13 rho) = rho 15706 := by
      rw [seg16LadderFlatX13_eq, seg16LadderFlatY13_eq]
      unfold seg16LadderFlatX13 seg16LadderFlatY13
      linear_combination r3134
    have ha1 : rho 15705 * seg16AccX13 rho = rho 15707 := by
      rw [seg16LadderFlatX13_eq]
      unfold seg16LadderFlatX13
      linear_combination r3135
    have ha2 : rho 15704 * seg16AccY13 rho = rho 15708 := by
      rw [seg16LadderFlatY13_eq]
      unfold seg16LadderFlatY13
      linear_combination r3136
    have ha3 : 3021 * rho 15707 * rho 15708 = rho 15709 := by
      linear_combination r3137
    have ha4 : rho 15710 * (1 + rho 15709) = rho 15707 + rho 15708 := by
      linear_combination r3138
    have ha5 : rho 15711 * (1 - rho 15709) = rho 15706 - rho 15707 - rho 15708 := by
      linear_combination r3139
    have haddx :
        rho 15710 * (1 + 3021 * (rho 15705 * seg16AccX13 rho) * (rho 15704 * seg16AccY13 rho)) =
          rho 15705 * seg16AccX13 rho + rho 15704 * seg16AccY13 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15711 * (1 - 3021 * (rho 15705 * seg16AccX13 rho) * (rho 15704 * seg16AccY13 rho)) =
          (-1) * (rho 15705 * seg16AccX13 rho) - rho 15704 * seg16AccY13 rho +
            (seg16AccY13 rho - seg16AccX13 rho * (-1)) * (rho 15704 + rho 15705) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15711 * (1 - rho 15709) = rho 15706 - rho 15707 - rho 15708 := ha5
        _ = (-1) * rho 15707 - rho 15708 + (seg16AccY13 rho - seg16AccX13 rho * (-1)) * (rho 15704 + rho 15705) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX14 rho = seg16AccX13 rho - Bool.toZMod bit * (seg16AccX13 rho - rho 15710) := by
      have hd : rho 15712 = Bool.toZMod bit * (rho 15710 - seg16AccX13 rho) := by
        rw [← hbit, seg16LadderFlatX13_eq]
        unfold seg16LadderFlatX13
        linear_combination -r3140
      unfold seg16AccX14
      linear_combination hd
    have hsely : seg16AccY14 rho = seg16AccY13 rho - Bool.toZMod bit * (seg16AccY13 rho - rho 15711) := by
      have hd : rho 15713 = Bool.toZMod bit * (rho 15711 - seg16AccY13 rho) := by
        rw [← hbit, seg16LadderFlatY13_eq]
        unfold seg16LadderFlatY13
        linear_combination -r3141
      unfold seg16AccY14
      linear_combination hd
    have hd0 : rho 15704 * rho 15705 = rho 15714 := by linear_combination r3142
    have hd1 : rho 15704 * rho 15704 = rho 15715 := by linear_combination r3143
    have hd2 : rho 15705 * rho 15705 = rho 15716 := by linear_combination r3144
    have hd3 : rho 15717 * (rho 15705 * rho 15705 + rho 15704 * rho 15704 * (-1)) = 2 * (rho 15704 * rho 15705) := by
      rw [hd0, hd1, hd2]
      linear_combination r3145
    have hd4 : rho 15718 * (2 - (rho 15705 * rho 15705 + rho 15704 * rho 15704 * (-1))) = rho 15705 * rho 15705 - rho 15704 * rho 15704 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3146
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX13 rho : Seg16.F), (seg16AccY13 rho : Seg16.F)⟩
      ⟨(rho 15704 : Seg16.F), (rho 15705 : Seg16.F)⟩
      ⟨(rho 15710 : Seg16.F), (rho 15711 : Seg16.F)⟩
      ⟨(seg16AccX14 rho : Seg16.F), (seg16AccY14 rho : Seg16.F)⟩
      ⟨(rho 15717 : Seg16.F), (rho 15718 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung13

theorem seg16_rung14 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15306 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX14 rho : Seg16.F), (seg16AccY14 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15717 : Seg16.F), (rho 15718 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX14 rho : Seg16.F), (seg16AccY14 rho : Seg16.F)⟩
        ⟨(rho 15717 : Seg16.F), (rho 15718 : Seg16.F)⟩
        ⟨(seg16AccX15 rho : Seg16.F), (seg16AccY15 rho : Seg16.F)⟩
        ⟨(rho 15730 : Seg16.F), (rho 15731 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p39,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3147, r3148, r3149, r3150, r3151, r3152, r3153, r3154, r3155, r3156, r3157, r3158, r3159, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3147 at r3147
  unfold Seg16.relationRow3148 at r3148
  unfold Seg16.relationRow3149 at r3149
  unfold Seg16.relationRow3150 at r3150
  unfold Seg16.relationRow3151 at r3151
  unfold Seg16.relationRow3152 at r3152
  unfold Seg16.relationRow3153 at r3153
  unfold Seg16.relationRow3154 at r3154
  unfold Seg16.relationRow3155 at r3155
  unfold Seg16.relationRow3156 at r3156
  unfold Seg16.relationRow3157 at r3157
  unfold Seg16.relationRow3158 at r3158
  unfold Seg16.relationRow3159 at r3159
  have hrung14 (bit : Bool) (hbit : rho 15306 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX14 rho : Seg16.F), (seg16AccY14 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15717 : Seg16.F), (rho 15718 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX14 rho : Seg16.F), (seg16AccY14 rho : Seg16.F)⟩
        ⟨(rho 15717 : Seg16.F), (rho 15718 : Seg16.F)⟩
        ⟨(seg16AccX15 rho : Seg16.F), (seg16AccY15 rho : Seg16.F)⟩
        ⟨(rho 15730 : Seg16.F), (rho 15731 : Seg16.F)⟩ := by
    have ha0 : (rho 15717 + rho 15718) * (seg16AccX14 rho + seg16AccY14 rho) = rho 15719 := by
      rw [seg16LadderFlatX14_eq, seg16LadderFlatY14_eq]
      unfold seg16LadderFlatX14 seg16LadderFlatY14
      linear_combination r3147
    have ha1 : rho 15718 * seg16AccX14 rho = rho 15720 := by
      rw [seg16LadderFlatX14_eq]
      unfold seg16LadderFlatX14
      linear_combination r3148
    have ha2 : rho 15717 * seg16AccY14 rho = rho 15721 := by
      rw [seg16LadderFlatY14_eq]
      unfold seg16LadderFlatY14
      linear_combination r3149
    have ha3 : 3021 * rho 15720 * rho 15721 = rho 15722 := by
      linear_combination r3150
    have ha4 : rho 15723 * (1 + rho 15722) = rho 15720 + rho 15721 := by
      linear_combination r3151
    have ha5 : rho 15724 * (1 - rho 15722) = rho 15719 - rho 15720 - rho 15721 := by
      linear_combination r3152
    have haddx :
        rho 15723 * (1 + 3021 * (rho 15718 * seg16AccX14 rho) * (rho 15717 * seg16AccY14 rho)) =
          rho 15718 * seg16AccX14 rho + rho 15717 * seg16AccY14 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15724 * (1 - 3021 * (rho 15718 * seg16AccX14 rho) * (rho 15717 * seg16AccY14 rho)) =
          (-1) * (rho 15718 * seg16AccX14 rho) - rho 15717 * seg16AccY14 rho +
            (seg16AccY14 rho - seg16AccX14 rho * (-1)) * (rho 15717 + rho 15718) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15724 * (1 - rho 15722) = rho 15719 - rho 15720 - rho 15721 := ha5
        _ = (-1) * rho 15720 - rho 15721 + (seg16AccY14 rho - seg16AccX14 rho * (-1)) * (rho 15717 + rho 15718) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX15 rho = seg16AccX14 rho - Bool.toZMod bit * (seg16AccX14 rho - rho 15723) := by
      have hd : rho 15725 = Bool.toZMod bit * (rho 15723 - seg16AccX14 rho) := by
        rw [← hbit, seg16LadderFlatX14_eq]
        unfold seg16LadderFlatX14
        linear_combination -r3153
      unfold seg16AccX15
      linear_combination hd
    have hsely : seg16AccY15 rho = seg16AccY14 rho - Bool.toZMod bit * (seg16AccY14 rho - rho 15724) := by
      have hd : rho 15726 = Bool.toZMod bit * (rho 15724 - seg16AccY14 rho) := by
        rw [← hbit, seg16LadderFlatY14_eq]
        unfold seg16LadderFlatY14
        linear_combination -r3154
      unfold seg16AccY15
      linear_combination hd
    have hd0 : rho 15717 * rho 15718 = rho 15727 := by linear_combination r3155
    have hd1 : rho 15717 * rho 15717 = rho 15728 := by linear_combination r3156
    have hd2 : rho 15718 * rho 15718 = rho 15729 := by linear_combination r3157
    have hd3 : rho 15730 * (rho 15718 * rho 15718 + rho 15717 * rho 15717 * (-1)) = 2 * (rho 15717 * rho 15718) := by
      rw [hd0, hd1, hd2]
      linear_combination r3158
    have hd4 : rho 15731 * (2 - (rho 15718 * rho 15718 + rho 15717 * rho 15717 * (-1))) = rho 15718 * rho 15718 - rho 15717 * rho 15717 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3159
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX14 rho : Seg16.F), (seg16AccY14 rho : Seg16.F)⟩
      ⟨(rho 15717 : Seg16.F), (rho 15718 : Seg16.F)⟩
      ⟨(rho 15723 : Seg16.F), (rho 15724 : Seg16.F)⟩
      ⟨(seg16AccX15 rho : Seg16.F), (seg16AccY15 rho : Seg16.F)⟩
      ⟨(rho 15730 : Seg16.F), (rho 15731 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung14

theorem seg16_rung15 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15307 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX15 rho : Seg16.F), (seg16AccY15 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15730 : Seg16.F), (rho 15731 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX15 rho : Seg16.F), (seg16AccY15 rho : Seg16.F)⟩
        ⟨(rho 15730 : Seg16.F), (rho 15731 : Seg16.F)⟩
        ⟨(seg16AccX16 rho : Seg16.F), (seg16AccY16 rho : Seg16.F)⟩
        ⟨(rho 15743 : Seg16.F), (rho 15744 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p39,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3160, r3161, r3162, r3163, r3164, r3165, r3166, r3167, r3168, r3169, r3170, r3171, r3172, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3160 at r3160
  unfold Seg16.relationRow3161 at r3161
  unfold Seg16.relationRow3162 at r3162
  unfold Seg16.relationRow3163 at r3163
  unfold Seg16.relationRow3164 at r3164
  unfold Seg16.relationRow3165 at r3165
  unfold Seg16.relationRow3166 at r3166
  unfold Seg16.relationRow3167 at r3167
  unfold Seg16.relationRow3168 at r3168
  unfold Seg16.relationRow3169 at r3169
  unfold Seg16.relationRow3170 at r3170
  unfold Seg16.relationRow3171 at r3171
  unfold Seg16.relationRow3172 at r3172
  have hrung15 (bit : Bool) (hbit : rho 15307 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX15 rho : Seg16.F), (seg16AccY15 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15730 : Seg16.F), (rho 15731 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX15 rho : Seg16.F), (seg16AccY15 rho : Seg16.F)⟩
        ⟨(rho 15730 : Seg16.F), (rho 15731 : Seg16.F)⟩
        ⟨(seg16AccX16 rho : Seg16.F), (seg16AccY16 rho : Seg16.F)⟩
        ⟨(rho 15743 : Seg16.F), (rho 15744 : Seg16.F)⟩ := by
    have ha0 : (rho 15730 + rho 15731) * (seg16AccX15 rho + seg16AccY15 rho) = rho 15732 := by
      rw [seg16LadderFlatX15_eq, seg16LadderFlatY15_eq]
      unfold seg16LadderFlatX15 seg16LadderFlatY15
      linear_combination r3160
    have ha1 : rho 15731 * seg16AccX15 rho = rho 15733 := by
      rw [seg16LadderFlatX15_eq]
      unfold seg16LadderFlatX15
      linear_combination r3161
    have ha2 : rho 15730 * seg16AccY15 rho = rho 15734 := by
      rw [seg16LadderFlatY15_eq]
      unfold seg16LadderFlatY15
      linear_combination r3162
    have ha3 : 3021 * rho 15733 * rho 15734 = rho 15735 := by
      linear_combination r3163
    have ha4 : rho 15736 * (1 + rho 15735) = rho 15733 + rho 15734 := by
      linear_combination r3164
    have ha5 : rho 15737 * (1 - rho 15735) = rho 15732 - rho 15733 - rho 15734 := by
      linear_combination r3165
    have haddx :
        rho 15736 * (1 + 3021 * (rho 15731 * seg16AccX15 rho) * (rho 15730 * seg16AccY15 rho)) =
          rho 15731 * seg16AccX15 rho + rho 15730 * seg16AccY15 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15737 * (1 - 3021 * (rho 15731 * seg16AccX15 rho) * (rho 15730 * seg16AccY15 rho)) =
          (-1) * (rho 15731 * seg16AccX15 rho) - rho 15730 * seg16AccY15 rho +
            (seg16AccY15 rho - seg16AccX15 rho * (-1)) * (rho 15730 + rho 15731) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15737 * (1 - rho 15735) = rho 15732 - rho 15733 - rho 15734 := ha5
        _ = (-1) * rho 15733 - rho 15734 + (seg16AccY15 rho - seg16AccX15 rho * (-1)) * (rho 15730 + rho 15731) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX16 rho = seg16AccX15 rho - Bool.toZMod bit * (seg16AccX15 rho - rho 15736) := by
      have hd : rho 15738 = Bool.toZMod bit * (rho 15736 - seg16AccX15 rho) := by
        rw [← hbit, seg16LadderFlatX15_eq]
        unfold seg16LadderFlatX15
        linear_combination -r3166
      unfold seg16AccX16
      linear_combination hd
    have hsely : seg16AccY16 rho = seg16AccY15 rho - Bool.toZMod bit * (seg16AccY15 rho - rho 15737) := by
      have hd : rho 15739 = Bool.toZMod bit * (rho 15737 - seg16AccY15 rho) := by
        rw [← hbit, seg16LadderFlatY15_eq]
        unfold seg16LadderFlatY15
        linear_combination -r3167
      unfold seg16AccY16
      linear_combination hd
    have hd0 : rho 15730 * rho 15731 = rho 15740 := by linear_combination r3168
    have hd1 : rho 15730 * rho 15730 = rho 15741 := by linear_combination r3169
    have hd2 : rho 15731 * rho 15731 = rho 15742 := by linear_combination r3170
    have hd3 : rho 15743 * (rho 15731 * rho 15731 + rho 15730 * rho 15730 * (-1)) = 2 * (rho 15730 * rho 15731) := by
      rw [hd0, hd1, hd2]
      linear_combination r3171
    have hd4 : rho 15744 * (2 - (rho 15731 * rho 15731 + rho 15730 * rho 15730 * (-1))) = rho 15731 * rho 15731 - rho 15730 * rho 15730 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3172
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX15 rho : Seg16.F), (seg16AccY15 rho : Seg16.F)⟩
      ⟨(rho 15730 : Seg16.F), (rho 15731 : Seg16.F)⟩
      ⟨(rho 15736 : Seg16.F), (rho 15737 : Seg16.F)⟩
      ⟨(seg16AccX16 rho : Seg16.F), (seg16AccY16 rho : Seg16.F)⟩
      ⟨(rho 15743 : Seg16.F), (rho 15744 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung15

theorem seg16_rung16 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15308 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX16 rho : Seg16.F), (seg16AccY16 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15743 : Seg16.F), (rho 15744 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX16 rho : Seg16.F), (seg16AccY16 rho : Seg16.F)⟩
        ⟨(rho 15743 : Seg16.F), (rho 15744 : Seg16.F)⟩
        ⟨(seg16AccX17 rho : Seg16.F), (seg16AccY17 rho : Seg16.F)⟩
        ⟨(rho 15756 : Seg16.F), (rho 15757 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p39,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3173, r3174, r3175, r3176, r3177, r3178, r3179, r3180, r3181, r3182, r3183, r3184, r3185, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3173 Seg16.relationLc179 Seg16.relationLc179Part0 Seg16.relationLc179Part1 at r3173
  unfold Seg16.relationRow3174 at r3174
  unfold Seg16.relationRow3175 at r3175
  unfold Seg16.relationRow3176 at r3176
  unfold Seg16.relationRow3177 at r3177
  unfold Seg16.relationRow3178 at r3178
  unfold Seg16.relationRow3179 at r3179
  unfold Seg16.relationRow3180 at r3180
  unfold Seg16.relationRow3181 at r3181
  unfold Seg16.relationRow3182 at r3182
  unfold Seg16.relationRow3183 at r3183
  unfold Seg16.relationRow3184 at r3184
  unfold Seg16.relationRow3185 at r3185
  have hrung16 (bit : Bool) (hbit : rho 15308 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX16 rho : Seg16.F), (seg16AccY16 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15743 : Seg16.F), (rho 15744 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX16 rho : Seg16.F), (seg16AccY16 rho : Seg16.F)⟩
        ⟨(rho 15743 : Seg16.F), (rho 15744 : Seg16.F)⟩
        ⟨(seg16AccX17 rho : Seg16.F), (seg16AccY17 rho : Seg16.F)⟩
        ⟨(rho 15756 : Seg16.F), (rho 15757 : Seg16.F)⟩ := by
    have ha0 : (rho 15743 + rho 15744) * (seg16AccX16 rho + seg16AccY16 rho) = rho 15745 := by
      rw [seg16LadderFlatX16_eq, seg16LadderFlatY16_eq]
      unfold seg16LadderFlatX16 seg16LadderFlatY16
      linear_combination r3173
    have ha1 : rho 15744 * seg16AccX16 rho = rho 15746 := by
      rw [seg16LadderFlatX16_eq]
      unfold seg16LadderFlatX16
      linear_combination r3174
    have ha2 : rho 15743 * seg16AccY16 rho = rho 15747 := by
      rw [seg16LadderFlatY16_eq]
      unfold seg16LadderFlatY16
      linear_combination r3175
    have ha3 : 3021 * rho 15746 * rho 15747 = rho 15748 := by
      linear_combination r3176
    have ha4 : rho 15749 * (1 + rho 15748) = rho 15746 + rho 15747 := by
      linear_combination r3177
    have ha5 : rho 15750 * (1 - rho 15748) = rho 15745 - rho 15746 - rho 15747 := by
      linear_combination r3178
    have haddx :
        rho 15749 * (1 + 3021 * (rho 15744 * seg16AccX16 rho) * (rho 15743 * seg16AccY16 rho)) =
          rho 15744 * seg16AccX16 rho + rho 15743 * seg16AccY16 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15750 * (1 - 3021 * (rho 15744 * seg16AccX16 rho) * (rho 15743 * seg16AccY16 rho)) =
          (-1) * (rho 15744 * seg16AccX16 rho) - rho 15743 * seg16AccY16 rho +
            (seg16AccY16 rho - seg16AccX16 rho * (-1)) * (rho 15743 + rho 15744) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15750 * (1 - rho 15748) = rho 15745 - rho 15746 - rho 15747 := ha5
        _ = (-1) * rho 15746 - rho 15747 + (seg16AccY16 rho - seg16AccX16 rho * (-1)) * (rho 15743 + rho 15744) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX17 rho = seg16AccX16 rho - Bool.toZMod bit * (seg16AccX16 rho - rho 15749) := by
      have hd : rho 15751 = Bool.toZMod bit * (rho 15749 - seg16AccX16 rho) := by
        rw [← hbit, seg16LadderFlatX16_eq]
        unfold seg16LadderFlatX16
        linear_combination -r3179
      unfold seg16AccX17
      linear_combination hd
    have hsely : seg16AccY17 rho = seg16AccY16 rho - Bool.toZMod bit * (seg16AccY16 rho - rho 15750) := by
      have hd : rho 15752 = Bool.toZMod bit * (rho 15750 - seg16AccY16 rho) := by
        rw [← hbit, seg16LadderFlatY16_eq]
        unfold seg16LadderFlatY16
        linear_combination -r3180
      unfold seg16AccY17
      linear_combination hd
    have hd0 : rho 15743 * rho 15744 = rho 15753 := by linear_combination r3181
    have hd1 : rho 15743 * rho 15743 = rho 15754 := by linear_combination r3182
    have hd2 : rho 15744 * rho 15744 = rho 15755 := by linear_combination r3183
    have hd3 : rho 15756 * (rho 15744 * rho 15744 + rho 15743 * rho 15743 * (-1)) = 2 * (rho 15743 * rho 15744) := by
      rw [hd0, hd1, hd2]
      linear_combination r3184
    have hd4 : rho 15757 * (2 - (rho 15744 * rho 15744 + rho 15743 * rho 15743 * (-1))) = rho 15744 * rho 15744 - rho 15743 * rho 15743 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3185
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX16 rho : Seg16.F), (seg16AccY16 rho : Seg16.F)⟩
      ⟨(rho 15743 : Seg16.F), (rho 15744 : Seg16.F)⟩
      ⟨(rho 15749 : Seg16.F), (rho 15750 : Seg16.F)⟩
      ⟨(seg16AccX17 rho : Seg16.F), (seg16AccY17 rho : Seg16.F)⟩
      ⟨(rho 15756 : Seg16.F), (rho 15757 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung16

theorem seg16_rung17 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15309 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX17 rho : Seg16.F), (seg16AccY17 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15756 : Seg16.F), (rho 15757 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX17 rho : Seg16.F), (seg16AccY17 rho : Seg16.F)⟩
        ⟨(rho 15756 : Seg16.F), (rho 15757 : Seg16.F)⟩
        ⟨(seg16AccX18 rho : Seg16.F), (seg16AccY18 rho : Seg16.F)⟩
        ⟨(rho 15769 : Seg16.F), (rho 15770 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p39,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3186, r3187, r3188, r3189, r3190, r3191, r3192, r3193, r3194, r3195, r3196, r3197, r3198, _⟩
  unfold Seg16.relationRow3186 Seg16.relationLc180 Seg16.relationLc180Part0 Seg16.relationLc180Part1 at r3186
  unfold Seg16.relationRow3187 at r3187
  unfold Seg16.relationRow3188 at r3188
  unfold Seg16.relationRow3189 at r3189
  unfold Seg16.relationRow3190 at r3190
  unfold Seg16.relationRow3191 at r3191
  unfold Seg16.relationRow3192 at r3192
  unfold Seg16.relationRow3193 at r3193
  unfold Seg16.relationRow3194 at r3194
  unfold Seg16.relationRow3195 at r3195
  unfold Seg16.relationRow3196 at r3196
  unfold Seg16.relationRow3197 at r3197
  unfold Seg16.relationRow3198 at r3198
  have hrung17 (bit : Bool) (hbit : rho 15309 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX17 rho : Seg16.F), (seg16AccY17 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15756 : Seg16.F), (rho 15757 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX17 rho : Seg16.F), (seg16AccY17 rho : Seg16.F)⟩
        ⟨(rho 15756 : Seg16.F), (rho 15757 : Seg16.F)⟩
        ⟨(seg16AccX18 rho : Seg16.F), (seg16AccY18 rho : Seg16.F)⟩
        ⟨(rho 15769 : Seg16.F), (rho 15770 : Seg16.F)⟩ := by
    have ha0 : (rho 15756 + rho 15757) * (seg16AccX17 rho + seg16AccY17 rho) = rho 15758 := by
      rw [seg16LadderFlatX17_eq, seg16LadderFlatY17_eq]
      unfold seg16LadderFlatX17 seg16LadderFlatY17
      linear_combination r3186
    have ha1 : rho 15757 * seg16AccX17 rho = rho 15759 := by
      rw [seg16LadderFlatX17_eq]
      unfold seg16LadderFlatX17
      linear_combination r3187
    have ha2 : rho 15756 * seg16AccY17 rho = rho 15760 := by
      rw [seg16LadderFlatY17_eq]
      unfold seg16LadderFlatY17
      linear_combination r3188
    have ha3 : 3021 * rho 15759 * rho 15760 = rho 15761 := by
      linear_combination r3189
    have ha4 : rho 15762 * (1 + rho 15761) = rho 15759 + rho 15760 := by
      linear_combination r3190
    have ha5 : rho 15763 * (1 - rho 15761) = rho 15758 - rho 15759 - rho 15760 := by
      linear_combination r3191
    have haddx :
        rho 15762 * (1 + 3021 * (rho 15757 * seg16AccX17 rho) * (rho 15756 * seg16AccY17 rho)) =
          rho 15757 * seg16AccX17 rho + rho 15756 * seg16AccY17 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15763 * (1 - 3021 * (rho 15757 * seg16AccX17 rho) * (rho 15756 * seg16AccY17 rho)) =
          (-1) * (rho 15757 * seg16AccX17 rho) - rho 15756 * seg16AccY17 rho +
            (seg16AccY17 rho - seg16AccX17 rho * (-1)) * (rho 15756 + rho 15757) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15763 * (1 - rho 15761) = rho 15758 - rho 15759 - rho 15760 := ha5
        _ = (-1) * rho 15759 - rho 15760 + (seg16AccY17 rho - seg16AccX17 rho * (-1)) * (rho 15756 + rho 15757) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX18 rho = seg16AccX17 rho - Bool.toZMod bit * (seg16AccX17 rho - rho 15762) := by
      have hd : rho 15764 = Bool.toZMod bit * (rho 15762 - seg16AccX17 rho) := by
        rw [← hbit, seg16LadderFlatX17_eq]
        unfold seg16LadderFlatX17
        linear_combination -r3192
      unfold seg16AccX18
      linear_combination hd
    have hsely : seg16AccY18 rho = seg16AccY17 rho - Bool.toZMod bit * (seg16AccY17 rho - rho 15763) := by
      have hd : rho 15765 = Bool.toZMod bit * (rho 15763 - seg16AccY17 rho) := by
        rw [← hbit, seg16LadderFlatY17_eq]
        unfold seg16LadderFlatY17
        linear_combination -r3193
      unfold seg16AccY18
      linear_combination hd
    have hd0 : rho 15756 * rho 15757 = rho 15766 := by linear_combination r3194
    have hd1 : rho 15756 * rho 15756 = rho 15767 := by linear_combination r3195
    have hd2 : rho 15757 * rho 15757 = rho 15768 := by linear_combination r3196
    have hd3 : rho 15769 * (rho 15757 * rho 15757 + rho 15756 * rho 15756 * (-1)) = 2 * (rho 15756 * rho 15757) := by
      rw [hd0, hd1, hd2]
      linear_combination r3197
    have hd4 : rho 15770 * (2 - (rho 15757 * rho 15757 + rho 15756 * rho 15756 * (-1))) = rho 15757 * rho 15757 - rho 15756 * rho 15756 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3198
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX17 rho : Seg16.F), (seg16AccY17 rho : Seg16.F)⟩
      ⟨(rho 15756 : Seg16.F), (rho 15757 : Seg16.F)⟩
      ⟨(rho 15762 : Seg16.F), (rho 15763 : Seg16.F)⟩
      ⟨(seg16AccX18 rho : Seg16.F), (seg16AccY18 rho : Seg16.F)⟩
      ⟨(rho 15769 : Seg16.F), (rho 15770 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung17

theorem seg16_rung18 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15310 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX18 rho : Seg16.F), (seg16AccY18 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15769 : Seg16.F), (rho 15770 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX18 rho : Seg16.F), (seg16AccY18 rho : Seg16.F)⟩
        ⟨(rho 15769 : Seg16.F), (rho 15770 : Seg16.F)⟩
        ⟨(seg16AccX19 rho : Seg16.F), (seg16AccY19 rho : Seg16.F)⟩
        ⟨(rho 15782 : Seg16.F), (rho 15783 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p39,
    p40, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3199⟩
  unfold Seg16.relationPart40 at p40
  rcases p40 with ⟨r3200, r3201, r3202, r3203, r3204, r3205, r3206, r3207, r3208, r3209, r3210, r3211, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3199 Seg16.relationLc181 Seg16.relationLc181Part0 Seg16.relationLc181Part1 at r3199
  unfold Seg16.relationRow3200 at r3200
  unfold Seg16.relationRow3201 at r3201
  unfold Seg16.relationRow3202 at r3202
  unfold Seg16.relationRow3203 at r3203
  unfold Seg16.relationRow3204 at r3204
  unfold Seg16.relationRow3205 at r3205
  unfold Seg16.relationRow3206 at r3206
  unfold Seg16.relationRow3207 at r3207
  unfold Seg16.relationRow3208 at r3208
  unfold Seg16.relationRow3209 at r3209
  unfold Seg16.relationRow3210 at r3210
  unfold Seg16.relationRow3211 at r3211
  have hrung18 (bit : Bool) (hbit : rho 15310 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX18 rho : Seg16.F), (seg16AccY18 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15769 : Seg16.F), (rho 15770 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX18 rho : Seg16.F), (seg16AccY18 rho : Seg16.F)⟩
        ⟨(rho 15769 : Seg16.F), (rho 15770 : Seg16.F)⟩
        ⟨(seg16AccX19 rho : Seg16.F), (seg16AccY19 rho : Seg16.F)⟩
        ⟨(rho 15782 : Seg16.F), (rho 15783 : Seg16.F)⟩ := by
    have ha0 : (rho 15769 + rho 15770) * (seg16AccX18 rho + seg16AccY18 rho) = rho 15771 := by
      rw [seg16LadderFlatX18_eq, seg16LadderFlatY18_eq]
      unfold seg16LadderFlatX18 seg16LadderFlatY18
      linear_combination r3199
    have ha1 : rho 15770 * seg16AccX18 rho = rho 15772 := by
      rw [seg16LadderFlatX18_eq]
      unfold seg16LadderFlatX18
      linear_combination r3200
    have ha2 : rho 15769 * seg16AccY18 rho = rho 15773 := by
      rw [seg16LadderFlatY18_eq]
      unfold seg16LadderFlatY18
      linear_combination r3201
    have ha3 : 3021 * rho 15772 * rho 15773 = rho 15774 := by
      linear_combination r3202
    have ha4 : rho 15775 * (1 + rho 15774) = rho 15772 + rho 15773 := by
      linear_combination r3203
    have ha5 : rho 15776 * (1 - rho 15774) = rho 15771 - rho 15772 - rho 15773 := by
      linear_combination r3204
    have haddx :
        rho 15775 * (1 + 3021 * (rho 15770 * seg16AccX18 rho) * (rho 15769 * seg16AccY18 rho)) =
          rho 15770 * seg16AccX18 rho + rho 15769 * seg16AccY18 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15776 * (1 - 3021 * (rho 15770 * seg16AccX18 rho) * (rho 15769 * seg16AccY18 rho)) =
          (-1) * (rho 15770 * seg16AccX18 rho) - rho 15769 * seg16AccY18 rho +
            (seg16AccY18 rho - seg16AccX18 rho * (-1)) * (rho 15769 + rho 15770) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15776 * (1 - rho 15774) = rho 15771 - rho 15772 - rho 15773 := ha5
        _ = (-1) * rho 15772 - rho 15773 + (seg16AccY18 rho - seg16AccX18 rho * (-1)) * (rho 15769 + rho 15770) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX19 rho = seg16AccX18 rho - Bool.toZMod bit * (seg16AccX18 rho - rho 15775) := by
      have hd : rho 15777 = Bool.toZMod bit * (rho 15775 - seg16AccX18 rho) := by
        rw [← hbit, seg16LadderFlatX18_eq]
        unfold seg16LadderFlatX18
        linear_combination -r3205
      unfold seg16AccX19
      linear_combination hd
    have hsely : seg16AccY19 rho = seg16AccY18 rho - Bool.toZMod bit * (seg16AccY18 rho - rho 15776) := by
      have hd : rho 15778 = Bool.toZMod bit * (rho 15776 - seg16AccY18 rho) := by
        rw [← hbit, seg16LadderFlatY18_eq]
        unfold seg16LadderFlatY18
        linear_combination -r3206
      unfold seg16AccY19
      linear_combination hd
    have hd0 : rho 15769 * rho 15770 = rho 15779 := by linear_combination r3207
    have hd1 : rho 15769 * rho 15769 = rho 15780 := by linear_combination r3208
    have hd2 : rho 15770 * rho 15770 = rho 15781 := by linear_combination r3209
    have hd3 : rho 15782 * (rho 15770 * rho 15770 + rho 15769 * rho 15769 * (-1)) = 2 * (rho 15769 * rho 15770) := by
      rw [hd0, hd1, hd2]
      linear_combination r3210
    have hd4 : rho 15783 * (2 - (rho 15770 * rho 15770 + rho 15769 * rho 15769 * (-1))) = rho 15770 * rho 15770 - rho 15769 * rho 15769 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3211
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX18 rho : Seg16.F), (seg16AccY18 rho : Seg16.F)⟩
      ⟨(rho 15769 : Seg16.F), (rho 15770 : Seg16.F)⟩
      ⟨(rho 15775 : Seg16.F), (rho 15776 : Seg16.F)⟩
      ⟨(seg16AccX19 rho : Seg16.F), (seg16AccY19 rho : Seg16.F)⟩
      ⟨(rho 15782 : Seg16.F), (rho 15783 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung18

theorem seg16_rung19 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15311 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX19 rho : Seg16.F), (seg16AccY19 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15782 : Seg16.F), (rho 15783 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX19 rho : Seg16.F), (seg16AccY19 rho : Seg16.F)⟩
        ⟨(rho 15782 : Seg16.F), (rho 15783 : Seg16.F)⟩
        ⟨(seg16AccX20 rho : Seg16.F), (seg16AccY20 rho : Seg16.F)⟩
        ⟨(rho 15795 : Seg16.F), (rho 15796 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p40, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r3212, r3213, r3214, r3215, r3216, r3217, r3218, r3219, r3220, r3221, r3222, r3223, r3224, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3212 Seg16.relationLc182 Seg16.relationLc182Part0 Seg16.relationLc182Part1 at r3212
  unfold Seg16.relationRow3213 at r3213
  unfold Seg16.relationRow3214 at r3214
  unfold Seg16.relationRow3215 at r3215
  unfold Seg16.relationRow3216 at r3216
  unfold Seg16.relationRow3217 at r3217
  unfold Seg16.relationRow3218 at r3218
  unfold Seg16.relationRow3219 at r3219
  unfold Seg16.relationRow3220 at r3220
  unfold Seg16.relationRow3221 at r3221
  unfold Seg16.relationRow3222 at r3222
  unfold Seg16.relationRow3223 at r3223
  unfold Seg16.relationRow3224 at r3224
  have hrung19 (bit : Bool) (hbit : rho 15311 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX19 rho : Seg16.F), (seg16AccY19 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15782 : Seg16.F), (rho 15783 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX19 rho : Seg16.F), (seg16AccY19 rho : Seg16.F)⟩
        ⟨(rho 15782 : Seg16.F), (rho 15783 : Seg16.F)⟩
        ⟨(seg16AccX20 rho : Seg16.F), (seg16AccY20 rho : Seg16.F)⟩
        ⟨(rho 15795 : Seg16.F), (rho 15796 : Seg16.F)⟩ := by
    have ha0 : (rho 15782 + rho 15783) * (seg16AccX19 rho + seg16AccY19 rho) = rho 15784 := by
      rw [seg16LadderFlatX19_eq, seg16LadderFlatY19_eq]
      unfold seg16LadderFlatX19 seg16LadderFlatY19
      linear_combination r3212
    have ha1 : rho 15783 * seg16AccX19 rho = rho 15785 := by
      rw [seg16LadderFlatX19_eq]
      unfold seg16LadderFlatX19
      linear_combination r3213
    have ha2 : rho 15782 * seg16AccY19 rho = rho 15786 := by
      rw [seg16LadderFlatY19_eq]
      unfold seg16LadderFlatY19
      linear_combination r3214
    have ha3 : 3021 * rho 15785 * rho 15786 = rho 15787 := by
      linear_combination r3215
    have ha4 : rho 15788 * (1 + rho 15787) = rho 15785 + rho 15786 := by
      linear_combination r3216
    have ha5 : rho 15789 * (1 - rho 15787) = rho 15784 - rho 15785 - rho 15786 := by
      linear_combination r3217
    have haddx :
        rho 15788 * (1 + 3021 * (rho 15783 * seg16AccX19 rho) * (rho 15782 * seg16AccY19 rho)) =
          rho 15783 * seg16AccX19 rho + rho 15782 * seg16AccY19 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15789 * (1 - 3021 * (rho 15783 * seg16AccX19 rho) * (rho 15782 * seg16AccY19 rho)) =
          (-1) * (rho 15783 * seg16AccX19 rho) - rho 15782 * seg16AccY19 rho +
            (seg16AccY19 rho - seg16AccX19 rho * (-1)) * (rho 15782 + rho 15783) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15789 * (1 - rho 15787) = rho 15784 - rho 15785 - rho 15786 := ha5
        _ = (-1) * rho 15785 - rho 15786 + (seg16AccY19 rho - seg16AccX19 rho * (-1)) * (rho 15782 + rho 15783) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX20 rho = seg16AccX19 rho - Bool.toZMod bit * (seg16AccX19 rho - rho 15788) := by
      have hd : rho 15790 = Bool.toZMod bit * (rho 15788 - seg16AccX19 rho) := by
        rw [← hbit, seg16LadderFlatX19_eq]
        unfold seg16LadderFlatX19
        linear_combination -r3218
      unfold seg16AccX20
      linear_combination hd
    have hsely : seg16AccY20 rho = seg16AccY19 rho - Bool.toZMod bit * (seg16AccY19 rho - rho 15789) := by
      have hd : rho 15791 = Bool.toZMod bit * (rho 15789 - seg16AccY19 rho) := by
        rw [← hbit, seg16LadderFlatY19_eq]
        unfold seg16LadderFlatY19
        linear_combination -r3219
      unfold seg16AccY20
      linear_combination hd
    have hd0 : rho 15782 * rho 15783 = rho 15792 := by linear_combination r3220
    have hd1 : rho 15782 * rho 15782 = rho 15793 := by linear_combination r3221
    have hd2 : rho 15783 * rho 15783 = rho 15794 := by linear_combination r3222
    have hd3 : rho 15795 * (rho 15783 * rho 15783 + rho 15782 * rho 15782 * (-1)) = 2 * (rho 15782 * rho 15783) := by
      rw [hd0, hd1, hd2]
      linear_combination r3223
    have hd4 : rho 15796 * (2 - (rho 15783 * rho 15783 + rho 15782 * rho 15782 * (-1))) = rho 15783 * rho 15783 - rho 15782 * rho 15782 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3224
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX19 rho : Seg16.F), (seg16AccY19 rho : Seg16.F)⟩
      ⟨(rho 15782 : Seg16.F), (rho 15783 : Seg16.F)⟩
      ⟨(rho 15788 : Seg16.F), (rho 15789 : Seg16.F)⟩
      ⟨(seg16AccX20 rho : Seg16.F), (seg16AccY20 rho : Seg16.F)⟩
      ⟨(rho 15795 : Seg16.F), (rho 15796 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung19

theorem seg16_rung20 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15312 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX20 rho : Seg16.F), (seg16AccY20 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15795 : Seg16.F), (rho 15796 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX20 rho : Seg16.F), (seg16AccY20 rho : Seg16.F)⟩
        ⟨(rho 15795 : Seg16.F), (rho 15796 : Seg16.F)⟩
        ⟨(seg16AccX21 rho : Seg16.F), (seg16AccY21 rho : Seg16.F)⟩
        ⟨(rho 15808 : Seg16.F), (rho 15809 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p40, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3225, r3226, r3227, r3228, r3229, r3230, r3231, r3232, r3233, r3234, r3235, r3236, r3237, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3225 Seg16.relationLc183 Seg16.relationLc183Part0 Seg16.relationLc183Part1 at r3225
  unfold Seg16.relationRow3226 at r3226
  unfold Seg16.relationRow3227 at r3227
  unfold Seg16.relationRow3228 at r3228
  unfold Seg16.relationRow3229 at r3229
  unfold Seg16.relationRow3230 at r3230
  unfold Seg16.relationRow3231 at r3231
  unfold Seg16.relationRow3232 at r3232
  unfold Seg16.relationRow3233 at r3233
  unfold Seg16.relationRow3234 at r3234
  unfold Seg16.relationRow3235 at r3235
  unfold Seg16.relationRow3236 at r3236
  unfold Seg16.relationRow3237 at r3237
  have hrung20 (bit : Bool) (hbit : rho 15312 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX20 rho : Seg16.F), (seg16AccY20 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15795 : Seg16.F), (rho 15796 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX20 rho : Seg16.F), (seg16AccY20 rho : Seg16.F)⟩
        ⟨(rho 15795 : Seg16.F), (rho 15796 : Seg16.F)⟩
        ⟨(seg16AccX21 rho : Seg16.F), (seg16AccY21 rho : Seg16.F)⟩
        ⟨(rho 15808 : Seg16.F), (rho 15809 : Seg16.F)⟩ := by
    have ha0 : (rho 15795 + rho 15796) * (seg16AccX20 rho + seg16AccY20 rho) = rho 15797 := by
      rw [seg16LadderFlatX20_eq, seg16LadderFlatY20_eq]
      unfold seg16LadderFlatX20 seg16LadderFlatY20
      linear_combination r3225
    have ha1 : rho 15796 * seg16AccX20 rho = rho 15798 := by
      rw [seg16LadderFlatX20_eq]
      unfold seg16LadderFlatX20
      linear_combination r3226
    have ha2 : rho 15795 * seg16AccY20 rho = rho 15799 := by
      rw [seg16LadderFlatY20_eq]
      unfold seg16LadderFlatY20
      linear_combination r3227
    have ha3 : 3021 * rho 15798 * rho 15799 = rho 15800 := by
      linear_combination r3228
    have ha4 : rho 15801 * (1 + rho 15800) = rho 15798 + rho 15799 := by
      linear_combination r3229
    have ha5 : rho 15802 * (1 - rho 15800) = rho 15797 - rho 15798 - rho 15799 := by
      linear_combination r3230
    have haddx :
        rho 15801 * (1 + 3021 * (rho 15796 * seg16AccX20 rho) * (rho 15795 * seg16AccY20 rho)) =
          rho 15796 * seg16AccX20 rho + rho 15795 * seg16AccY20 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15802 * (1 - 3021 * (rho 15796 * seg16AccX20 rho) * (rho 15795 * seg16AccY20 rho)) =
          (-1) * (rho 15796 * seg16AccX20 rho) - rho 15795 * seg16AccY20 rho +
            (seg16AccY20 rho - seg16AccX20 rho * (-1)) * (rho 15795 + rho 15796) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15802 * (1 - rho 15800) = rho 15797 - rho 15798 - rho 15799 := ha5
        _ = (-1) * rho 15798 - rho 15799 + (seg16AccY20 rho - seg16AccX20 rho * (-1)) * (rho 15795 + rho 15796) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX21 rho = seg16AccX20 rho - Bool.toZMod bit * (seg16AccX20 rho - rho 15801) := by
      have hd : rho 15803 = Bool.toZMod bit * (rho 15801 - seg16AccX20 rho) := by
        rw [← hbit, seg16LadderFlatX20_eq]
        unfold seg16LadderFlatX20
        linear_combination -r3231
      unfold seg16AccX21
      linear_combination hd
    have hsely : seg16AccY21 rho = seg16AccY20 rho - Bool.toZMod bit * (seg16AccY20 rho - rho 15802) := by
      have hd : rho 15804 = Bool.toZMod bit * (rho 15802 - seg16AccY20 rho) := by
        rw [← hbit, seg16LadderFlatY20_eq]
        unfold seg16LadderFlatY20
        linear_combination -r3232
      unfold seg16AccY21
      linear_combination hd
    have hd0 : rho 15795 * rho 15796 = rho 15805 := by linear_combination r3233
    have hd1 : rho 15795 * rho 15795 = rho 15806 := by linear_combination r3234
    have hd2 : rho 15796 * rho 15796 = rho 15807 := by linear_combination r3235
    have hd3 : rho 15808 * (rho 15796 * rho 15796 + rho 15795 * rho 15795 * (-1)) = 2 * (rho 15795 * rho 15796) := by
      rw [hd0, hd1, hd2]
      linear_combination r3236
    have hd4 : rho 15809 * (2 - (rho 15796 * rho 15796 + rho 15795 * rho 15795 * (-1))) = rho 15796 * rho 15796 - rho 15795 * rho 15795 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3237
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX20 rho : Seg16.F), (seg16AccY20 rho : Seg16.F)⟩
      ⟨(rho 15795 : Seg16.F), (rho 15796 : Seg16.F)⟩
      ⟨(rho 15801 : Seg16.F), (rho 15802 : Seg16.F)⟩
      ⟨(seg16AccX21 rho : Seg16.F), (seg16AccY21 rho : Seg16.F)⟩
      ⟨(rho 15808 : Seg16.F), (rho 15809 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung20

theorem seg16_rung21 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15313 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX21 rho : Seg16.F), (seg16AccY21 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15808 : Seg16.F), (rho 15809 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX21 rho : Seg16.F), (seg16AccY21 rho : Seg16.F)⟩
        ⟨(rho 15808 : Seg16.F), (rho 15809 : Seg16.F)⟩
        ⟨(seg16AccX22 rho : Seg16.F), (seg16AccY22 rho : Seg16.F)⟩
        ⟨(rho 15821 : Seg16.F), (rho 15822 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p40, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3238, r3239, r3240, r3241, r3242, r3243, r3244, r3245, r3246, r3247, r3248, r3249, r3250, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3238 Seg16.relationLc184 Seg16.relationLc184Part0 Seg16.relationLc184Part1 at r3238
  unfold Seg16.relationRow3239 at r3239
  unfold Seg16.relationRow3240 at r3240
  unfold Seg16.relationRow3241 at r3241
  unfold Seg16.relationRow3242 at r3242
  unfold Seg16.relationRow3243 at r3243
  unfold Seg16.relationRow3244 at r3244
  unfold Seg16.relationRow3245 at r3245
  unfold Seg16.relationRow3246 at r3246
  unfold Seg16.relationRow3247 at r3247
  unfold Seg16.relationRow3248 at r3248
  unfold Seg16.relationRow3249 at r3249
  unfold Seg16.relationRow3250 at r3250
  have hrung21 (bit : Bool) (hbit : rho 15313 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX21 rho : Seg16.F), (seg16AccY21 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15808 : Seg16.F), (rho 15809 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX21 rho : Seg16.F), (seg16AccY21 rho : Seg16.F)⟩
        ⟨(rho 15808 : Seg16.F), (rho 15809 : Seg16.F)⟩
        ⟨(seg16AccX22 rho : Seg16.F), (seg16AccY22 rho : Seg16.F)⟩
        ⟨(rho 15821 : Seg16.F), (rho 15822 : Seg16.F)⟩ := by
    have ha0 : (rho 15808 + rho 15809) * (seg16AccX21 rho + seg16AccY21 rho) = rho 15810 := by
      rw [seg16LadderFlatX21_eq, seg16LadderFlatY21_eq]
      unfold seg16LadderFlatX21 seg16LadderFlatY21
      linear_combination r3238
    have ha1 : rho 15809 * seg16AccX21 rho = rho 15811 := by
      rw [seg16LadderFlatX21_eq]
      unfold seg16LadderFlatX21
      linear_combination r3239
    have ha2 : rho 15808 * seg16AccY21 rho = rho 15812 := by
      rw [seg16LadderFlatY21_eq]
      unfold seg16LadderFlatY21
      linear_combination r3240
    have ha3 : 3021 * rho 15811 * rho 15812 = rho 15813 := by
      linear_combination r3241
    have ha4 : rho 15814 * (1 + rho 15813) = rho 15811 + rho 15812 := by
      linear_combination r3242
    have ha5 : rho 15815 * (1 - rho 15813) = rho 15810 - rho 15811 - rho 15812 := by
      linear_combination r3243
    have haddx :
        rho 15814 * (1 + 3021 * (rho 15809 * seg16AccX21 rho) * (rho 15808 * seg16AccY21 rho)) =
          rho 15809 * seg16AccX21 rho + rho 15808 * seg16AccY21 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15815 * (1 - 3021 * (rho 15809 * seg16AccX21 rho) * (rho 15808 * seg16AccY21 rho)) =
          (-1) * (rho 15809 * seg16AccX21 rho) - rho 15808 * seg16AccY21 rho +
            (seg16AccY21 rho - seg16AccX21 rho * (-1)) * (rho 15808 + rho 15809) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15815 * (1 - rho 15813) = rho 15810 - rho 15811 - rho 15812 := ha5
        _ = (-1) * rho 15811 - rho 15812 + (seg16AccY21 rho - seg16AccX21 rho * (-1)) * (rho 15808 + rho 15809) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX22 rho = seg16AccX21 rho - Bool.toZMod bit * (seg16AccX21 rho - rho 15814) := by
      have hd : rho 15816 = Bool.toZMod bit * (rho 15814 - seg16AccX21 rho) := by
        rw [← hbit, seg16LadderFlatX21_eq]
        unfold seg16LadderFlatX21
        linear_combination -r3244
      unfold seg16AccX22
      linear_combination hd
    have hsely : seg16AccY22 rho = seg16AccY21 rho - Bool.toZMod bit * (seg16AccY21 rho - rho 15815) := by
      have hd : rho 15817 = Bool.toZMod bit * (rho 15815 - seg16AccY21 rho) := by
        rw [← hbit, seg16LadderFlatY21_eq]
        unfold seg16LadderFlatY21
        linear_combination -r3245
      unfold seg16AccY22
      linear_combination hd
    have hd0 : rho 15808 * rho 15809 = rho 15818 := by linear_combination r3246
    have hd1 : rho 15808 * rho 15808 = rho 15819 := by linear_combination r3247
    have hd2 : rho 15809 * rho 15809 = rho 15820 := by linear_combination r3248
    have hd3 : rho 15821 * (rho 15809 * rho 15809 + rho 15808 * rho 15808 * (-1)) = 2 * (rho 15808 * rho 15809) := by
      rw [hd0, hd1, hd2]
      linear_combination r3249
    have hd4 : rho 15822 * (2 - (rho 15809 * rho 15809 + rho 15808 * rho 15808 * (-1))) = rho 15809 * rho 15809 - rho 15808 * rho 15808 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3250
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX21 rho : Seg16.F), (seg16AccY21 rho : Seg16.F)⟩
      ⟨(rho 15808 : Seg16.F), (rho 15809 : Seg16.F)⟩
      ⟨(rho 15814 : Seg16.F), (rho 15815 : Seg16.F)⟩
      ⟨(seg16AccX22 rho : Seg16.F), (seg16AccY22 rho : Seg16.F)⟩
      ⟨(rho 15821 : Seg16.F), (rho 15822 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung21

theorem seg16_rung22 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15314 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX22 rho : Seg16.F), (seg16AccY22 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15821 : Seg16.F), (rho 15822 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX22 rho : Seg16.F), (seg16AccY22 rho : Seg16.F)⟩
        ⟨(rho 15821 : Seg16.F), (rho 15822 : Seg16.F)⟩
        ⟨(seg16AccX23 rho : Seg16.F), (seg16AccY23 rho : Seg16.F)⟩
        ⟨(rho 15834 : Seg16.F), (rho 15835 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p40, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3251, r3252, r3253, r3254, r3255, r3256, r3257, r3258, r3259, r3260, r3261, r3262, r3263, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3251 Seg16.relationLc185 Seg16.relationLc185Part0 Seg16.relationLc185Part1 at r3251
  unfold Seg16.relationRow3252 at r3252
  unfold Seg16.relationRow3253 at r3253
  unfold Seg16.relationRow3254 at r3254
  unfold Seg16.relationRow3255 at r3255
  unfold Seg16.relationRow3256 at r3256
  unfold Seg16.relationRow3257 at r3257
  unfold Seg16.relationRow3258 at r3258
  unfold Seg16.relationRow3259 at r3259
  unfold Seg16.relationRow3260 at r3260
  unfold Seg16.relationRow3261 at r3261
  unfold Seg16.relationRow3262 at r3262
  unfold Seg16.relationRow3263 at r3263
  have hrung22 (bit : Bool) (hbit : rho 15314 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX22 rho : Seg16.F), (seg16AccY22 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15821 : Seg16.F), (rho 15822 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX22 rho : Seg16.F), (seg16AccY22 rho : Seg16.F)⟩
        ⟨(rho 15821 : Seg16.F), (rho 15822 : Seg16.F)⟩
        ⟨(seg16AccX23 rho : Seg16.F), (seg16AccY23 rho : Seg16.F)⟩
        ⟨(rho 15834 : Seg16.F), (rho 15835 : Seg16.F)⟩ := by
    have ha0 : (rho 15821 + rho 15822) * (seg16AccX22 rho + seg16AccY22 rho) = rho 15823 := by
      rw [seg16LadderFlatX22_eq, seg16LadderFlatY22_eq]
      unfold seg16LadderFlatX22 seg16LadderFlatY22
      linear_combination r3251
    have ha1 : rho 15822 * seg16AccX22 rho = rho 15824 := by
      rw [seg16LadderFlatX22_eq]
      unfold seg16LadderFlatX22
      linear_combination r3252
    have ha2 : rho 15821 * seg16AccY22 rho = rho 15825 := by
      rw [seg16LadderFlatY22_eq]
      unfold seg16LadderFlatY22
      linear_combination r3253
    have ha3 : 3021 * rho 15824 * rho 15825 = rho 15826 := by
      linear_combination r3254
    have ha4 : rho 15827 * (1 + rho 15826) = rho 15824 + rho 15825 := by
      linear_combination r3255
    have ha5 : rho 15828 * (1 - rho 15826) = rho 15823 - rho 15824 - rho 15825 := by
      linear_combination r3256
    have haddx :
        rho 15827 * (1 + 3021 * (rho 15822 * seg16AccX22 rho) * (rho 15821 * seg16AccY22 rho)) =
          rho 15822 * seg16AccX22 rho + rho 15821 * seg16AccY22 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15828 * (1 - 3021 * (rho 15822 * seg16AccX22 rho) * (rho 15821 * seg16AccY22 rho)) =
          (-1) * (rho 15822 * seg16AccX22 rho) - rho 15821 * seg16AccY22 rho +
            (seg16AccY22 rho - seg16AccX22 rho * (-1)) * (rho 15821 + rho 15822) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15828 * (1 - rho 15826) = rho 15823 - rho 15824 - rho 15825 := ha5
        _ = (-1) * rho 15824 - rho 15825 + (seg16AccY22 rho - seg16AccX22 rho * (-1)) * (rho 15821 + rho 15822) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX23 rho = seg16AccX22 rho - Bool.toZMod bit * (seg16AccX22 rho - rho 15827) := by
      have hd : rho 15829 = Bool.toZMod bit * (rho 15827 - seg16AccX22 rho) := by
        rw [← hbit, seg16LadderFlatX22_eq]
        unfold seg16LadderFlatX22
        linear_combination -r3257
      unfold seg16AccX23
      linear_combination hd
    have hsely : seg16AccY23 rho = seg16AccY22 rho - Bool.toZMod bit * (seg16AccY22 rho - rho 15828) := by
      have hd : rho 15830 = Bool.toZMod bit * (rho 15828 - seg16AccY22 rho) := by
        rw [← hbit, seg16LadderFlatY22_eq]
        unfold seg16LadderFlatY22
        linear_combination -r3258
      unfold seg16AccY23
      linear_combination hd
    have hd0 : rho 15821 * rho 15822 = rho 15831 := by linear_combination r3259
    have hd1 : rho 15821 * rho 15821 = rho 15832 := by linear_combination r3260
    have hd2 : rho 15822 * rho 15822 = rho 15833 := by linear_combination r3261
    have hd3 : rho 15834 * (rho 15822 * rho 15822 + rho 15821 * rho 15821 * (-1)) = 2 * (rho 15821 * rho 15822) := by
      rw [hd0, hd1, hd2]
      linear_combination r3262
    have hd4 : rho 15835 * (2 - (rho 15822 * rho 15822 + rho 15821 * rho 15821 * (-1))) = rho 15822 * rho 15822 - rho 15821 * rho 15821 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3263
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX22 rho : Seg16.F), (seg16AccY22 rho : Seg16.F)⟩
      ⟨(rho 15821 : Seg16.F), (rho 15822 : Seg16.F)⟩
      ⟨(rho 15827 : Seg16.F), (rho 15828 : Seg16.F)⟩
      ⟨(seg16AccX23 rho : Seg16.F), (seg16AccY23 rho : Seg16.F)⟩
      ⟨(rho 15834 : Seg16.F), (rho 15835 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung22

theorem seg16_rung23 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15315 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX23 rho : Seg16.F), (seg16AccY23 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15834 : Seg16.F), (rho 15835 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX23 rho : Seg16.F), (seg16AccY23 rho : Seg16.F)⟩
        ⟨(rho 15834 : Seg16.F), (rho 15835 : Seg16.F)⟩
        ⟨(seg16AccX24 rho : Seg16.F), (seg16AccY24 rho : Seg16.F)⟩
        ⟨(rho 15847 : Seg16.F), (rho 15848 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p40, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3264, r3265, r3266, r3267, r3268, r3269, r3270, r3271, r3272, r3273, r3274, r3275, r3276, _, _, _⟩
  unfold Seg16.relationRow3264 Seg16.relationLc186 Seg16.relationLc186Part0 Seg16.relationLc186Part1 at r3264
  unfold Seg16.relationRow3265 at r3265
  unfold Seg16.relationRow3266 at r3266
  unfold Seg16.relationRow3267 at r3267
  unfold Seg16.relationRow3268 at r3268
  unfold Seg16.relationRow3269 at r3269
  unfold Seg16.relationRow3270 at r3270
  unfold Seg16.relationRow3271 at r3271
  unfold Seg16.relationRow3272 at r3272
  unfold Seg16.relationRow3273 at r3273
  unfold Seg16.relationRow3274 at r3274
  unfold Seg16.relationRow3275 at r3275
  unfold Seg16.relationRow3276 at r3276
  have hrung23 (bit : Bool) (hbit : rho 15315 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX23 rho : Seg16.F), (seg16AccY23 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15834 : Seg16.F), (rho 15835 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX23 rho : Seg16.F), (seg16AccY23 rho : Seg16.F)⟩
        ⟨(rho 15834 : Seg16.F), (rho 15835 : Seg16.F)⟩
        ⟨(seg16AccX24 rho : Seg16.F), (seg16AccY24 rho : Seg16.F)⟩
        ⟨(rho 15847 : Seg16.F), (rho 15848 : Seg16.F)⟩ := by
    have ha0 : (rho 15834 + rho 15835) * (seg16AccX23 rho + seg16AccY23 rho) = rho 15836 := by
      rw [seg16LadderFlatX23_eq, seg16LadderFlatY23_eq]
      unfold seg16LadderFlatX23 seg16LadderFlatY23
      linear_combination r3264
    have ha1 : rho 15835 * seg16AccX23 rho = rho 15837 := by
      rw [seg16LadderFlatX23_eq]
      unfold seg16LadderFlatX23
      linear_combination r3265
    have ha2 : rho 15834 * seg16AccY23 rho = rho 15838 := by
      rw [seg16LadderFlatY23_eq]
      unfold seg16LadderFlatY23
      linear_combination r3266
    have ha3 : 3021 * rho 15837 * rho 15838 = rho 15839 := by
      linear_combination r3267
    have ha4 : rho 15840 * (1 + rho 15839) = rho 15837 + rho 15838 := by
      linear_combination r3268
    have ha5 : rho 15841 * (1 - rho 15839) = rho 15836 - rho 15837 - rho 15838 := by
      linear_combination r3269
    have haddx :
        rho 15840 * (1 + 3021 * (rho 15835 * seg16AccX23 rho) * (rho 15834 * seg16AccY23 rho)) =
          rho 15835 * seg16AccX23 rho + rho 15834 * seg16AccY23 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15841 * (1 - 3021 * (rho 15835 * seg16AccX23 rho) * (rho 15834 * seg16AccY23 rho)) =
          (-1) * (rho 15835 * seg16AccX23 rho) - rho 15834 * seg16AccY23 rho +
            (seg16AccY23 rho - seg16AccX23 rho * (-1)) * (rho 15834 + rho 15835) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15841 * (1 - rho 15839) = rho 15836 - rho 15837 - rho 15838 := ha5
        _ = (-1) * rho 15837 - rho 15838 + (seg16AccY23 rho - seg16AccX23 rho * (-1)) * (rho 15834 + rho 15835) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX24 rho = seg16AccX23 rho - Bool.toZMod bit * (seg16AccX23 rho - rho 15840) := by
      have hd : rho 15842 = Bool.toZMod bit * (rho 15840 - seg16AccX23 rho) := by
        rw [← hbit, seg16LadderFlatX23_eq]
        unfold seg16LadderFlatX23
        linear_combination -r3270
      unfold seg16AccX24
      linear_combination hd
    have hsely : seg16AccY24 rho = seg16AccY23 rho - Bool.toZMod bit * (seg16AccY23 rho - rho 15841) := by
      have hd : rho 15843 = Bool.toZMod bit * (rho 15841 - seg16AccY23 rho) := by
        rw [← hbit, seg16LadderFlatY23_eq]
        unfold seg16LadderFlatY23
        linear_combination -r3271
      unfold seg16AccY24
      linear_combination hd
    have hd0 : rho 15834 * rho 15835 = rho 15844 := by linear_combination r3272
    have hd1 : rho 15834 * rho 15834 = rho 15845 := by linear_combination r3273
    have hd2 : rho 15835 * rho 15835 = rho 15846 := by linear_combination r3274
    have hd3 : rho 15847 * (rho 15835 * rho 15835 + rho 15834 * rho 15834 * (-1)) = 2 * (rho 15834 * rho 15835) := by
      rw [hd0, hd1, hd2]
      linear_combination r3275
    have hd4 : rho 15848 * (2 - (rho 15835 * rho 15835 + rho 15834 * rho 15834 * (-1))) = rho 15835 * rho 15835 - rho 15834 * rho 15834 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3276
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX23 rho : Seg16.F), (seg16AccY23 rho : Seg16.F)⟩
      ⟨(rho 15834 : Seg16.F), (rho 15835 : Seg16.F)⟩
      ⟨(rho 15840 : Seg16.F), (rho 15841 : Seg16.F)⟩
      ⟨(seg16AccX24 rho : Seg16.F), (seg16AccY24 rho : Seg16.F)⟩
      ⟨(rho 15847 : Seg16.F), (rho 15848 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung23

theorem seg16_rung24 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15316 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX24 rho : Seg16.F), (seg16AccY24 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15847 : Seg16.F), (rho 15848 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX24 rho : Seg16.F), (seg16AccY24 rho : Seg16.F)⟩
        ⟨(rho 15847 : Seg16.F), (rho 15848 : Seg16.F)⟩
        ⟨(seg16AccX25 rho : Seg16.F), (seg16AccY25 rho : Seg16.F)⟩
        ⟨(rho 15860 : Seg16.F), (rho 15861 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p40, p41, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3277, r3278, r3279⟩
  unfold Seg16.relationPart41 at p41
  rcases p41 with ⟨r3280, r3281, r3282, r3283, r3284, r3285, r3286, r3287, r3288, r3289, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3277 Seg16.relationLc187 Seg16.relationLc187Part0 Seg16.relationLc187Part1 at r3277
  unfold Seg16.relationRow3278 at r3278
  unfold Seg16.relationRow3279 at r3279
  unfold Seg16.relationRow3280 at r3280
  unfold Seg16.relationRow3281 at r3281
  unfold Seg16.relationRow3282 at r3282
  unfold Seg16.relationRow3283 at r3283
  unfold Seg16.relationRow3284 at r3284
  unfold Seg16.relationRow3285 at r3285
  unfold Seg16.relationRow3286 at r3286
  unfold Seg16.relationRow3287 at r3287
  unfold Seg16.relationRow3288 at r3288
  unfold Seg16.relationRow3289 at r3289
  have hrung24 (bit : Bool) (hbit : rho 15316 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX24 rho : Seg16.F), (seg16AccY24 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15847 : Seg16.F), (rho 15848 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX24 rho : Seg16.F), (seg16AccY24 rho : Seg16.F)⟩
        ⟨(rho 15847 : Seg16.F), (rho 15848 : Seg16.F)⟩
        ⟨(seg16AccX25 rho : Seg16.F), (seg16AccY25 rho : Seg16.F)⟩
        ⟨(rho 15860 : Seg16.F), (rho 15861 : Seg16.F)⟩ := by
    have ha0 : (rho 15847 + rho 15848) * (seg16AccX24 rho + seg16AccY24 rho) = rho 15849 := by
      rw [seg16LadderFlatX24_eq, seg16LadderFlatY24_eq]
      unfold seg16LadderFlatX24 seg16LadderFlatY24
      linear_combination r3277
    have ha1 : rho 15848 * seg16AccX24 rho = rho 15850 := by
      rw [seg16LadderFlatX24_eq]
      unfold seg16LadderFlatX24
      linear_combination r3278
    have ha2 : rho 15847 * seg16AccY24 rho = rho 15851 := by
      rw [seg16LadderFlatY24_eq]
      unfold seg16LadderFlatY24
      linear_combination r3279
    have ha3 : 3021 * rho 15850 * rho 15851 = rho 15852 := by
      linear_combination r3280
    have ha4 : rho 15853 * (1 + rho 15852) = rho 15850 + rho 15851 := by
      linear_combination r3281
    have ha5 : rho 15854 * (1 - rho 15852) = rho 15849 - rho 15850 - rho 15851 := by
      linear_combination r3282
    have haddx :
        rho 15853 * (1 + 3021 * (rho 15848 * seg16AccX24 rho) * (rho 15847 * seg16AccY24 rho)) =
          rho 15848 * seg16AccX24 rho + rho 15847 * seg16AccY24 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15854 * (1 - 3021 * (rho 15848 * seg16AccX24 rho) * (rho 15847 * seg16AccY24 rho)) =
          (-1) * (rho 15848 * seg16AccX24 rho) - rho 15847 * seg16AccY24 rho +
            (seg16AccY24 rho - seg16AccX24 rho * (-1)) * (rho 15847 + rho 15848) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15854 * (1 - rho 15852) = rho 15849 - rho 15850 - rho 15851 := ha5
        _ = (-1) * rho 15850 - rho 15851 + (seg16AccY24 rho - seg16AccX24 rho * (-1)) * (rho 15847 + rho 15848) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX25 rho = seg16AccX24 rho - Bool.toZMod bit * (seg16AccX24 rho - rho 15853) := by
      have hd : rho 15855 = Bool.toZMod bit * (rho 15853 - seg16AccX24 rho) := by
        rw [← hbit, seg16LadderFlatX24_eq]
        unfold seg16LadderFlatX24
        linear_combination -r3283
      unfold seg16AccX25
      linear_combination hd
    have hsely : seg16AccY25 rho = seg16AccY24 rho - Bool.toZMod bit * (seg16AccY24 rho - rho 15854) := by
      have hd : rho 15856 = Bool.toZMod bit * (rho 15854 - seg16AccY24 rho) := by
        rw [← hbit, seg16LadderFlatY24_eq]
        unfold seg16LadderFlatY24
        linear_combination -r3284
      unfold seg16AccY25
      linear_combination hd
    have hd0 : rho 15847 * rho 15848 = rho 15857 := by linear_combination r3285
    have hd1 : rho 15847 * rho 15847 = rho 15858 := by linear_combination r3286
    have hd2 : rho 15848 * rho 15848 = rho 15859 := by linear_combination r3287
    have hd3 : rho 15860 * (rho 15848 * rho 15848 + rho 15847 * rho 15847 * (-1)) = 2 * (rho 15847 * rho 15848) := by
      rw [hd0, hd1, hd2]
      linear_combination r3288
    have hd4 : rho 15861 * (2 - (rho 15848 * rho 15848 + rho 15847 * rho 15847 * (-1))) = rho 15848 * rho 15848 - rho 15847 * rho 15847 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3289
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX24 rho : Seg16.F), (seg16AccY24 rho : Seg16.F)⟩
      ⟨(rho 15847 : Seg16.F), (rho 15848 : Seg16.F)⟩
      ⟨(rho 15853 : Seg16.F), (rho 15854 : Seg16.F)⟩
      ⟨(seg16AccX25 rho : Seg16.F), (seg16AccY25 rho : Seg16.F)⟩
      ⟨(rho 15860 : Seg16.F), (rho 15861 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung24

theorem seg16_rung25 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15317 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX25 rho : Seg16.F), (seg16AccY25 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15860 : Seg16.F), (rho 15861 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX25 rho : Seg16.F), (seg16AccY25 rho : Seg16.F)⟩
        ⟨(rho 15860 : Seg16.F), (rho 15861 : Seg16.F)⟩
        ⟨(seg16AccX26 rho : Seg16.F), (seg16AccY26 rho : Seg16.F)⟩
        ⟨(rho 15873 : Seg16.F), (rho 15874 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p41, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, r3290, r3291, r3292, r3293, r3294, r3295, r3296, r3297, r3298, r3299, r3300, r3301, r3302, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3290 Seg16.relationLc188 Seg16.relationLc188Part0 Seg16.relationLc188Part1 at r3290
  unfold Seg16.relationRow3291 at r3291
  unfold Seg16.relationRow3292 at r3292
  unfold Seg16.relationRow3293 at r3293
  unfold Seg16.relationRow3294 at r3294
  unfold Seg16.relationRow3295 at r3295
  unfold Seg16.relationRow3296 at r3296
  unfold Seg16.relationRow3297 at r3297
  unfold Seg16.relationRow3298 at r3298
  unfold Seg16.relationRow3299 at r3299
  unfold Seg16.relationRow3300 at r3300
  unfold Seg16.relationRow3301 at r3301
  unfold Seg16.relationRow3302 at r3302
  have hrung25 (bit : Bool) (hbit : rho 15317 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX25 rho : Seg16.F), (seg16AccY25 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15860 : Seg16.F), (rho 15861 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX25 rho : Seg16.F), (seg16AccY25 rho : Seg16.F)⟩
        ⟨(rho 15860 : Seg16.F), (rho 15861 : Seg16.F)⟩
        ⟨(seg16AccX26 rho : Seg16.F), (seg16AccY26 rho : Seg16.F)⟩
        ⟨(rho 15873 : Seg16.F), (rho 15874 : Seg16.F)⟩ := by
    have ha0 : (rho 15860 + rho 15861) * (seg16AccX25 rho + seg16AccY25 rho) = rho 15862 := by
      rw [seg16LadderFlatX25_eq, seg16LadderFlatY25_eq]
      unfold seg16LadderFlatX25 seg16LadderFlatY25
      linear_combination r3290
    have ha1 : rho 15861 * seg16AccX25 rho = rho 15863 := by
      rw [seg16LadderFlatX25_eq]
      unfold seg16LadderFlatX25
      linear_combination r3291
    have ha2 : rho 15860 * seg16AccY25 rho = rho 15864 := by
      rw [seg16LadderFlatY25_eq]
      unfold seg16LadderFlatY25
      linear_combination r3292
    have ha3 : 3021 * rho 15863 * rho 15864 = rho 15865 := by
      linear_combination r3293
    have ha4 : rho 15866 * (1 + rho 15865) = rho 15863 + rho 15864 := by
      linear_combination r3294
    have ha5 : rho 15867 * (1 - rho 15865) = rho 15862 - rho 15863 - rho 15864 := by
      linear_combination r3295
    have haddx :
        rho 15866 * (1 + 3021 * (rho 15861 * seg16AccX25 rho) * (rho 15860 * seg16AccY25 rho)) =
          rho 15861 * seg16AccX25 rho + rho 15860 * seg16AccY25 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15867 * (1 - 3021 * (rho 15861 * seg16AccX25 rho) * (rho 15860 * seg16AccY25 rho)) =
          (-1) * (rho 15861 * seg16AccX25 rho) - rho 15860 * seg16AccY25 rho +
            (seg16AccY25 rho - seg16AccX25 rho * (-1)) * (rho 15860 + rho 15861) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15867 * (1 - rho 15865) = rho 15862 - rho 15863 - rho 15864 := ha5
        _ = (-1) * rho 15863 - rho 15864 + (seg16AccY25 rho - seg16AccX25 rho * (-1)) * (rho 15860 + rho 15861) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX26 rho = seg16AccX25 rho - Bool.toZMod bit * (seg16AccX25 rho - rho 15866) := by
      have hd : rho 15868 = Bool.toZMod bit * (rho 15866 - seg16AccX25 rho) := by
        rw [← hbit, seg16LadderFlatX25_eq]
        unfold seg16LadderFlatX25
        linear_combination -r3296
      unfold seg16AccX26
      linear_combination hd
    have hsely : seg16AccY26 rho = seg16AccY25 rho - Bool.toZMod bit * (seg16AccY25 rho - rho 15867) := by
      have hd : rho 15869 = Bool.toZMod bit * (rho 15867 - seg16AccY25 rho) := by
        rw [← hbit, seg16LadderFlatY25_eq]
        unfold seg16LadderFlatY25
        linear_combination -r3297
      unfold seg16AccY26
      linear_combination hd
    have hd0 : rho 15860 * rho 15861 = rho 15870 := by linear_combination r3298
    have hd1 : rho 15860 * rho 15860 = rho 15871 := by linear_combination r3299
    have hd2 : rho 15861 * rho 15861 = rho 15872 := by linear_combination r3300
    have hd3 : rho 15873 * (rho 15861 * rho 15861 + rho 15860 * rho 15860 * (-1)) = 2 * (rho 15860 * rho 15861) := by
      rw [hd0, hd1, hd2]
      linear_combination r3301
    have hd4 : rho 15874 * (2 - (rho 15861 * rho 15861 + rho 15860 * rho 15860 * (-1))) = rho 15861 * rho 15861 - rho 15860 * rho 15860 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3302
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX25 rho : Seg16.F), (seg16AccY25 rho : Seg16.F)⟩
      ⟨(rho 15860 : Seg16.F), (rho 15861 : Seg16.F)⟩
      ⟨(rho 15866 : Seg16.F), (rho 15867 : Seg16.F)⟩
      ⟨(seg16AccX26 rho : Seg16.F), (seg16AccY26 rho : Seg16.F)⟩
      ⟨(rho 15873 : Seg16.F), (rho 15874 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung25

theorem seg16_rung26 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15318 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX26 rho : Seg16.F), (seg16AccY26 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15873 : Seg16.F), (rho 15874 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX26 rho : Seg16.F), (seg16AccY26 rho : Seg16.F)⟩
        ⟨(rho 15873 : Seg16.F), (rho 15874 : Seg16.F)⟩
        ⟨(seg16AccX27 rho : Seg16.F), (seg16AccY27 rho : Seg16.F)⟩
        ⟨(rho 15886 : Seg16.F), (rho 15887 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p41, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3303, r3304, r3305, r3306, r3307, r3308, r3309, r3310, r3311, r3312, r3313, r3314, r3315, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3303 Seg16.relationLc189 Seg16.relationLc189Part0 Seg16.relationLc189Part1 at r3303
  unfold Seg16.relationRow3304 at r3304
  unfold Seg16.relationRow3305 at r3305
  unfold Seg16.relationRow3306 at r3306
  unfold Seg16.relationRow3307 at r3307
  unfold Seg16.relationRow3308 at r3308
  unfold Seg16.relationRow3309 at r3309
  unfold Seg16.relationRow3310 at r3310
  unfold Seg16.relationRow3311 at r3311
  unfold Seg16.relationRow3312 at r3312
  unfold Seg16.relationRow3313 at r3313
  unfold Seg16.relationRow3314 at r3314
  unfold Seg16.relationRow3315 at r3315
  have hrung26 (bit : Bool) (hbit : rho 15318 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX26 rho : Seg16.F), (seg16AccY26 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15873 : Seg16.F), (rho 15874 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX26 rho : Seg16.F), (seg16AccY26 rho : Seg16.F)⟩
        ⟨(rho 15873 : Seg16.F), (rho 15874 : Seg16.F)⟩
        ⟨(seg16AccX27 rho : Seg16.F), (seg16AccY27 rho : Seg16.F)⟩
        ⟨(rho 15886 : Seg16.F), (rho 15887 : Seg16.F)⟩ := by
    have ha0 : (rho 15873 + rho 15874) * (seg16AccX26 rho + seg16AccY26 rho) = rho 15875 := by
      rw [seg16LadderFlatX26_eq, seg16LadderFlatY26_eq]
      unfold seg16LadderFlatX26 seg16LadderFlatY26
      linear_combination r3303
    have ha1 : rho 15874 * seg16AccX26 rho = rho 15876 := by
      rw [seg16LadderFlatX26_eq]
      unfold seg16LadderFlatX26
      linear_combination r3304
    have ha2 : rho 15873 * seg16AccY26 rho = rho 15877 := by
      rw [seg16LadderFlatY26_eq]
      unfold seg16LadderFlatY26
      linear_combination r3305
    have ha3 : 3021 * rho 15876 * rho 15877 = rho 15878 := by
      linear_combination r3306
    have ha4 : rho 15879 * (1 + rho 15878) = rho 15876 + rho 15877 := by
      linear_combination r3307
    have ha5 : rho 15880 * (1 - rho 15878) = rho 15875 - rho 15876 - rho 15877 := by
      linear_combination r3308
    have haddx :
        rho 15879 * (1 + 3021 * (rho 15874 * seg16AccX26 rho) * (rho 15873 * seg16AccY26 rho)) =
          rho 15874 * seg16AccX26 rho + rho 15873 * seg16AccY26 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15880 * (1 - 3021 * (rho 15874 * seg16AccX26 rho) * (rho 15873 * seg16AccY26 rho)) =
          (-1) * (rho 15874 * seg16AccX26 rho) - rho 15873 * seg16AccY26 rho +
            (seg16AccY26 rho - seg16AccX26 rho * (-1)) * (rho 15873 + rho 15874) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15880 * (1 - rho 15878) = rho 15875 - rho 15876 - rho 15877 := ha5
        _ = (-1) * rho 15876 - rho 15877 + (seg16AccY26 rho - seg16AccX26 rho * (-1)) * (rho 15873 + rho 15874) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX27 rho = seg16AccX26 rho - Bool.toZMod bit * (seg16AccX26 rho - rho 15879) := by
      have hd : rho 15881 = Bool.toZMod bit * (rho 15879 - seg16AccX26 rho) := by
        rw [← hbit, seg16LadderFlatX26_eq]
        unfold seg16LadderFlatX26
        linear_combination -r3309
      unfold seg16AccX27
      linear_combination hd
    have hsely : seg16AccY27 rho = seg16AccY26 rho - Bool.toZMod bit * (seg16AccY26 rho - rho 15880) := by
      have hd : rho 15882 = Bool.toZMod bit * (rho 15880 - seg16AccY26 rho) := by
        rw [← hbit, seg16LadderFlatY26_eq]
        unfold seg16LadderFlatY26
        linear_combination -r3310
      unfold seg16AccY27
      linear_combination hd
    have hd0 : rho 15873 * rho 15874 = rho 15883 := by linear_combination r3311
    have hd1 : rho 15873 * rho 15873 = rho 15884 := by linear_combination r3312
    have hd2 : rho 15874 * rho 15874 = rho 15885 := by linear_combination r3313
    have hd3 : rho 15886 * (rho 15874 * rho 15874 + rho 15873 * rho 15873 * (-1)) = 2 * (rho 15873 * rho 15874) := by
      rw [hd0, hd1, hd2]
      linear_combination r3314
    have hd4 : rho 15887 * (2 - (rho 15874 * rho 15874 + rho 15873 * rho 15873 * (-1))) = rho 15874 * rho 15874 - rho 15873 * rho 15873 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3315
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX26 rho : Seg16.F), (seg16AccY26 rho : Seg16.F)⟩
      ⟨(rho 15873 : Seg16.F), (rho 15874 : Seg16.F)⟩
      ⟨(rho 15879 : Seg16.F), (rho 15880 : Seg16.F)⟩
      ⟨(seg16AccX27 rho : Seg16.F), (seg16AccY27 rho : Seg16.F)⟩
      ⟨(rho 15886 : Seg16.F), (rho 15887 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung26

theorem seg16_rung27 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15319 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX27 rho : Seg16.F), (seg16AccY27 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15886 : Seg16.F), (rho 15887 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX27 rho : Seg16.F), (seg16AccY27 rho : Seg16.F)⟩
        ⟨(rho 15886 : Seg16.F), (rho 15887 : Seg16.F)⟩
        ⟨(seg16AccX28 rho : Seg16.F), (seg16AccY28 rho : Seg16.F)⟩
        ⟨(rho 15899 : Seg16.F), (rho 15900 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p41, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3316, r3317, r3318, r3319, r3320, r3321, r3322, r3323, r3324, r3325, r3326, r3327, r3328, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3316 Seg16.relationLc190 Seg16.relationLc190Part0 Seg16.relationLc190Part1 at r3316
  unfold Seg16.relationRow3317 at r3317
  unfold Seg16.relationRow3318 at r3318
  unfold Seg16.relationRow3319 at r3319
  unfold Seg16.relationRow3320 at r3320
  unfold Seg16.relationRow3321 at r3321
  unfold Seg16.relationRow3322 at r3322
  unfold Seg16.relationRow3323 at r3323
  unfold Seg16.relationRow3324 at r3324
  unfold Seg16.relationRow3325 at r3325
  unfold Seg16.relationRow3326 at r3326
  unfold Seg16.relationRow3327 at r3327
  unfold Seg16.relationRow3328 at r3328
  have hrung27 (bit : Bool) (hbit : rho 15319 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX27 rho : Seg16.F), (seg16AccY27 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15886 : Seg16.F), (rho 15887 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX27 rho : Seg16.F), (seg16AccY27 rho : Seg16.F)⟩
        ⟨(rho 15886 : Seg16.F), (rho 15887 : Seg16.F)⟩
        ⟨(seg16AccX28 rho : Seg16.F), (seg16AccY28 rho : Seg16.F)⟩
        ⟨(rho 15899 : Seg16.F), (rho 15900 : Seg16.F)⟩ := by
    have ha0 : (rho 15886 + rho 15887) * (seg16AccX27 rho + seg16AccY27 rho) = rho 15888 := by
      rw [seg16LadderFlatX27_eq, seg16LadderFlatY27_eq]
      unfold seg16LadderFlatX27 seg16LadderFlatY27
      linear_combination r3316
    have ha1 : rho 15887 * seg16AccX27 rho = rho 15889 := by
      rw [seg16LadderFlatX27_eq]
      unfold seg16LadderFlatX27
      linear_combination r3317
    have ha2 : rho 15886 * seg16AccY27 rho = rho 15890 := by
      rw [seg16LadderFlatY27_eq]
      unfold seg16LadderFlatY27
      linear_combination r3318
    have ha3 : 3021 * rho 15889 * rho 15890 = rho 15891 := by
      linear_combination r3319
    have ha4 : rho 15892 * (1 + rho 15891) = rho 15889 + rho 15890 := by
      linear_combination r3320
    have ha5 : rho 15893 * (1 - rho 15891) = rho 15888 - rho 15889 - rho 15890 := by
      linear_combination r3321
    have haddx :
        rho 15892 * (1 + 3021 * (rho 15887 * seg16AccX27 rho) * (rho 15886 * seg16AccY27 rho)) =
          rho 15887 * seg16AccX27 rho + rho 15886 * seg16AccY27 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15893 * (1 - 3021 * (rho 15887 * seg16AccX27 rho) * (rho 15886 * seg16AccY27 rho)) =
          (-1) * (rho 15887 * seg16AccX27 rho) - rho 15886 * seg16AccY27 rho +
            (seg16AccY27 rho - seg16AccX27 rho * (-1)) * (rho 15886 + rho 15887) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15893 * (1 - rho 15891) = rho 15888 - rho 15889 - rho 15890 := ha5
        _ = (-1) * rho 15889 - rho 15890 + (seg16AccY27 rho - seg16AccX27 rho * (-1)) * (rho 15886 + rho 15887) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX28 rho = seg16AccX27 rho - Bool.toZMod bit * (seg16AccX27 rho - rho 15892) := by
      have hd : rho 15894 = Bool.toZMod bit * (rho 15892 - seg16AccX27 rho) := by
        rw [← hbit, seg16LadderFlatX27_eq]
        unfold seg16LadderFlatX27
        linear_combination -r3322
      unfold seg16AccX28
      linear_combination hd
    have hsely : seg16AccY28 rho = seg16AccY27 rho - Bool.toZMod bit * (seg16AccY27 rho - rho 15893) := by
      have hd : rho 15895 = Bool.toZMod bit * (rho 15893 - seg16AccY27 rho) := by
        rw [← hbit, seg16LadderFlatY27_eq]
        unfold seg16LadderFlatY27
        linear_combination -r3323
      unfold seg16AccY28
      linear_combination hd
    have hd0 : rho 15886 * rho 15887 = rho 15896 := by linear_combination r3324
    have hd1 : rho 15886 * rho 15886 = rho 15897 := by linear_combination r3325
    have hd2 : rho 15887 * rho 15887 = rho 15898 := by linear_combination r3326
    have hd3 : rho 15899 * (rho 15887 * rho 15887 + rho 15886 * rho 15886 * (-1)) = 2 * (rho 15886 * rho 15887) := by
      rw [hd0, hd1, hd2]
      linear_combination r3327
    have hd4 : rho 15900 * (2 - (rho 15887 * rho 15887 + rho 15886 * rho 15886 * (-1))) = rho 15887 * rho 15887 - rho 15886 * rho 15886 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3328
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX27 rho : Seg16.F), (seg16AccY27 rho : Seg16.F)⟩
      ⟨(rho 15886 : Seg16.F), (rho 15887 : Seg16.F)⟩
      ⟨(rho 15892 : Seg16.F), (rho 15893 : Seg16.F)⟩
      ⟨(seg16AccX28 rho : Seg16.F), (seg16AccY28 rho : Seg16.F)⟩
      ⟨(rho 15899 : Seg16.F), (rho 15900 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung27

theorem seg16_rung28 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15320 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX28 rho : Seg16.F), (seg16AccY28 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15899 : Seg16.F), (rho 15900 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX28 rho : Seg16.F), (seg16AccY28 rho : Seg16.F)⟩
        ⟨(rho 15899 : Seg16.F), (rho 15900 : Seg16.F)⟩
        ⟨(seg16AccX29 rho : Seg16.F), (seg16AccY29 rho : Seg16.F)⟩
        ⟨(rho 15912 : Seg16.F), (rho 15913 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p41, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3329, r3330, r3331, r3332, r3333, r3334, r3335, r3336, r3337, r3338, r3339, r3340, r3341, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3329 Seg16.relationLc191 Seg16.relationLc191Part0 Seg16.relationLc191Part1 at r3329
  unfold Seg16.relationRow3330 at r3330
  unfold Seg16.relationRow3331 at r3331
  unfold Seg16.relationRow3332 at r3332
  unfold Seg16.relationRow3333 at r3333
  unfold Seg16.relationRow3334 at r3334
  unfold Seg16.relationRow3335 at r3335
  unfold Seg16.relationRow3336 at r3336
  unfold Seg16.relationRow3337 at r3337
  unfold Seg16.relationRow3338 at r3338
  unfold Seg16.relationRow3339 at r3339
  unfold Seg16.relationRow3340 at r3340
  unfold Seg16.relationRow3341 at r3341
  have hrung28 (bit : Bool) (hbit : rho 15320 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX28 rho : Seg16.F), (seg16AccY28 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15899 : Seg16.F), (rho 15900 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX28 rho : Seg16.F), (seg16AccY28 rho : Seg16.F)⟩
        ⟨(rho 15899 : Seg16.F), (rho 15900 : Seg16.F)⟩
        ⟨(seg16AccX29 rho : Seg16.F), (seg16AccY29 rho : Seg16.F)⟩
        ⟨(rho 15912 : Seg16.F), (rho 15913 : Seg16.F)⟩ := by
    have ha0 : (rho 15899 + rho 15900) * (seg16AccX28 rho + seg16AccY28 rho) = rho 15901 := by
      rw [seg16LadderFlatX28_eq, seg16LadderFlatY28_eq]
      unfold seg16LadderFlatX28 seg16LadderFlatY28
      linear_combination r3329
    have ha1 : rho 15900 * seg16AccX28 rho = rho 15902 := by
      rw [seg16LadderFlatX28_eq]
      unfold seg16LadderFlatX28
      linear_combination r3330
    have ha2 : rho 15899 * seg16AccY28 rho = rho 15903 := by
      rw [seg16LadderFlatY28_eq]
      unfold seg16LadderFlatY28
      linear_combination r3331
    have ha3 : 3021 * rho 15902 * rho 15903 = rho 15904 := by
      linear_combination r3332
    have ha4 : rho 15905 * (1 + rho 15904) = rho 15902 + rho 15903 := by
      linear_combination r3333
    have ha5 : rho 15906 * (1 - rho 15904) = rho 15901 - rho 15902 - rho 15903 := by
      linear_combination r3334
    have haddx :
        rho 15905 * (1 + 3021 * (rho 15900 * seg16AccX28 rho) * (rho 15899 * seg16AccY28 rho)) =
          rho 15900 * seg16AccX28 rho + rho 15899 * seg16AccY28 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15906 * (1 - 3021 * (rho 15900 * seg16AccX28 rho) * (rho 15899 * seg16AccY28 rho)) =
          (-1) * (rho 15900 * seg16AccX28 rho) - rho 15899 * seg16AccY28 rho +
            (seg16AccY28 rho - seg16AccX28 rho * (-1)) * (rho 15899 + rho 15900) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15906 * (1 - rho 15904) = rho 15901 - rho 15902 - rho 15903 := ha5
        _ = (-1) * rho 15902 - rho 15903 + (seg16AccY28 rho - seg16AccX28 rho * (-1)) * (rho 15899 + rho 15900) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX29 rho = seg16AccX28 rho - Bool.toZMod bit * (seg16AccX28 rho - rho 15905) := by
      have hd : rho 15907 = Bool.toZMod bit * (rho 15905 - seg16AccX28 rho) := by
        rw [← hbit, seg16LadderFlatX28_eq]
        unfold seg16LadderFlatX28
        linear_combination -r3335
      unfold seg16AccX29
      linear_combination hd
    have hsely : seg16AccY29 rho = seg16AccY28 rho - Bool.toZMod bit * (seg16AccY28 rho - rho 15906) := by
      have hd : rho 15908 = Bool.toZMod bit * (rho 15906 - seg16AccY28 rho) := by
        rw [← hbit, seg16LadderFlatY28_eq]
        unfold seg16LadderFlatY28
        linear_combination -r3336
      unfold seg16AccY29
      linear_combination hd
    have hd0 : rho 15899 * rho 15900 = rho 15909 := by linear_combination r3337
    have hd1 : rho 15899 * rho 15899 = rho 15910 := by linear_combination r3338
    have hd2 : rho 15900 * rho 15900 = rho 15911 := by linear_combination r3339
    have hd3 : rho 15912 * (rho 15900 * rho 15900 + rho 15899 * rho 15899 * (-1)) = 2 * (rho 15899 * rho 15900) := by
      rw [hd0, hd1, hd2]
      linear_combination r3340
    have hd4 : rho 15913 * (2 - (rho 15900 * rho 15900 + rho 15899 * rho 15899 * (-1))) = rho 15900 * rho 15900 - rho 15899 * rho 15899 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3341
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX28 rho : Seg16.F), (seg16AccY28 rho : Seg16.F)⟩
      ⟨(rho 15899 : Seg16.F), (rho 15900 : Seg16.F)⟩
      ⟨(rho 15905 : Seg16.F), (rho 15906 : Seg16.F)⟩
      ⟨(seg16AccX29 rho : Seg16.F), (seg16AccY29 rho : Seg16.F)⟩
      ⟨(rho 15912 : Seg16.F), (rho 15913 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung28

theorem seg16_rung29 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15321 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX29 rho : Seg16.F), (seg16AccY29 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15912 : Seg16.F), (rho 15913 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX29 rho : Seg16.F), (seg16AccY29 rho : Seg16.F)⟩
        ⟨(rho 15912 : Seg16.F), (rho 15913 : Seg16.F)⟩
        ⟨(seg16AccX30 rho : Seg16.F), (seg16AccY30 rho : Seg16.F)⟩
        ⟨(rho 15925 : Seg16.F), (rho 15926 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p41, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3342, r3343, r3344, r3345, r3346, r3347, r3348, r3349, r3350, r3351, r3352, r3353, r3354, _, _, _, _, _⟩
  unfold Seg16.relationRow3342 Seg16.relationLc192 Seg16.relationLc192Part0 Seg16.relationLc192Part1 at r3342
  unfold Seg16.relationRow3343 at r3343
  unfold Seg16.relationRow3344 at r3344
  unfold Seg16.relationRow3345 at r3345
  unfold Seg16.relationRow3346 at r3346
  unfold Seg16.relationRow3347 at r3347
  unfold Seg16.relationRow3348 at r3348
  unfold Seg16.relationRow3349 at r3349
  unfold Seg16.relationRow3350 at r3350
  unfold Seg16.relationRow3351 at r3351
  unfold Seg16.relationRow3352 at r3352
  unfold Seg16.relationRow3353 at r3353
  unfold Seg16.relationRow3354 at r3354
  have hrung29 (bit : Bool) (hbit : rho 15321 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX29 rho : Seg16.F), (seg16AccY29 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15912 : Seg16.F), (rho 15913 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX29 rho : Seg16.F), (seg16AccY29 rho : Seg16.F)⟩
        ⟨(rho 15912 : Seg16.F), (rho 15913 : Seg16.F)⟩
        ⟨(seg16AccX30 rho : Seg16.F), (seg16AccY30 rho : Seg16.F)⟩
        ⟨(rho 15925 : Seg16.F), (rho 15926 : Seg16.F)⟩ := by
    have ha0 : (rho 15912 + rho 15913) * (seg16AccX29 rho + seg16AccY29 rho) = rho 15914 := by
      rw [seg16LadderFlatX29_eq, seg16LadderFlatY29_eq]
      unfold seg16LadderFlatX29 seg16LadderFlatY29
      linear_combination r3342
    have ha1 : rho 15913 * seg16AccX29 rho = rho 15915 := by
      rw [seg16LadderFlatX29_eq]
      unfold seg16LadderFlatX29
      linear_combination r3343
    have ha2 : rho 15912 * seg16AccY29 rho = rho 15916 := by
      rw [seg16LadderFlatY29_eq]
      unfold seg16LadderFlatY29
      linear_combination r3344
    have ha3 : 3021 * rho 15915 * rho 15916 = rho 15917 := by
      linear_combination r3345
    have ha4 : rho 15918 * (1 + rho 15917) = rho 15915 + rho 15916 := by
      linear_combination r3346
    have ha5 : rho 15919 * (1 - rho 15917) = rho 15914 - rho 15915 - rho 15916 := by
      linear_combination r3347
    have haddx :
        rho 15918 * (1 + 3021 * (rho 15913 * seg16AccX29 rho) * (rho 15912 * seg16AccY29 rho)) =
          rho 15913 * seg16AccX29 rho + rho 15912 * seg16AccY29 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15919 * (1 - 3021 * (rho 15913 * seg16AccX29 rho) * (rho 15912 * seg16AccY29 rho)) =
          (-1) * (rho 15913 * seg16AccX29 rho) - rho 15912 * seg16AccY29 rho +
            (seg16AccY29 rho - seg16AccX29 rho * (-1)) * (rho 15912 + rho 15913) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15919 * (1 - rho 15917) = rho 15914 - rho 15915 - rho 15916 := ha5
        _ = (-1) * rho 15915 - rho 15916 + (seg16AccY29 rho - seg16AccX29 rho * (-1)) * (rho 15912 + rho 15913) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX30 rho = seg16AccX29 rho - Bool.toZMod bit * (seg16AccX29 rho - rho 15918) := by
      have hd : rho 15920 = Bool.toZMod bit * (rho 15918 - seg16AccX29 rho) := by
        rw [← hbit, seg16LadderFlatX29_eq]
        unfold seg16LadderFlatX29
        linear_combination -r3348
      unfold seg16AccX30
      linear_combination hd
    have hsely : seg16AccY30 rho = seg16AccY29 rho - Bool.toZMod bit * (seg16AccY29 rho - rho 15919) := by
      have hd : rho 15921 = Bool.toZMod bit * (rho 15919 - seg16AccY29 rho) := by
        rw [← hbit, seg16LadderFlatY29_eq]
        unfold seg16LadderFlatY29
        linear_combination -r3349
      unfold seg16AccY30
      linear_combination hd
    have hd0 : rho 15912 * rho 15913 = rho 15922 := by linear_combination r3350
    have hd1 : rho 15912 * rho 15912 = rho 15923 := by linear_combination r3351
    have hd2 : rho 15913 * rho 15913 = rho 15924 := by linear_combination r3352
    have hd3 : rho 15925 * (rho 15913 * rho 15913 + rho 15912 * rho 15912 * (-1)) = 2 * (rho 15912 * rho 15913) := by
      rw [hd0, hd1, hd2]
      linear_combination r3353
    have hd4 : rho 15926 * (2 - (rho 15913 * rho 15913 + rho 15912 * rho 15912 * (-1))) = rho 15913 * rho 15913 - rho 15912 * rho 15912 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3354
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX29 rho : Seg16.F), (seg16AccY29 rho : Seg16.F)⟩
      ⟨(rho 15912 : Seg16.F), (rho 15913 : Seg16.F)⟩
      ⟨(rho 15918 : Seg16.F), (rho 15919 : Seg16.F)⟩
      ⟨(seg16AccX30 rho : Seg16.F), (seg16AccY30 rho : Seg16.F)⟩
      ⟨(rho 15925 : Seg16.F), (rho 15926 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung29

theorem seg16_rung30 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15322 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX30 rho : Seg16.F), (seg16AccY30 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15925 : Seg16.F), (rho 15926 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX30 rho : Seg16.F), (seg16AccY30 rho : Seg16.F)⟩
        ⟨(rho 15925 : Seg16.F), (rho 15926 : Seg16.F)⟩
        ⟨(seg16AccX31 rho : Seg16.F), (seg16AccY31 rho : Seg16.F)⟩
        ⟨(rho 15938 : Seg16.F), (rho 15939 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p41, p42, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3355, r3356, r3357, r3358, r3359⟩
  unfold Seg16.relationPart42 at p42
  rcases p42 with ⟨r3360, r3361, r3362, r3363, r3364, r3365, r3366, r3367, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3355 Seg16.relationLc193 Seg16.relationLc193Part0 Seg16.relationLc193Part1 at r3355
  unfold Seg16.relationRow3356 at r3356
  unfold Seg16.relationRow3357 at r3357
  unfold Seg16.relationRow3358 at r3358
  unfold Seg16.relationRow3359 at r3359
  unfold Seg16.relationRow3360 at r3360
  unfold Seg16.relationRow3361 at r3361
  unfold Seg16.relationRow3362 at r3362
  unfold Seg16.relationRow3363 at r3363
  unfold Seg16.relationRow3364 at r3364
  unfold Seg16.relationRow3365 at r3365
  unfold Seg16.relationRow3366 at r3366
  unfold Seg16.relationRow3367 at r3367
  have hrung30 (bit : Bool) (hbit : rho 15322 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX30 rho : Seg16.F), (seg16AccY30 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15925 : Seg16.F), (rho 15926 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX30 rho : Seg16.F), (seg16AccY30 rho : Seg16.F)⟩
        ⟨(rho 15925 : Seg16.F), (rho 15926 : Seg16.F)⟩
        ⟨(seg16AccX31 rho : Seg16.F), (seg16AccY31 rho : Seg16.F)⟩
        ⟨(rho 15938 : Seg16.F), (rho 15939 : Seg16.F)⟩ := by
    have ha0 : (rho 15925 + rho 15926) * (seg16AccX30 rho + seg16AccY30 rho) = rho 15927 := by
      rw [seg16LadderFlatX30_eq, seg16LadderFlatY30_eq]
      unfold seg16LadderFlatX30 seg16LadderFlatY30
      linear_combination r3355
    have ha1 : rho 15926 * seg16AccX30 rho = rho 15928 := by
      rw [seg16LadderFlatX30_eq]
      unfold seg16LadderFlatX30
      linear_combination r3356
    have ha2 : rho 15925 * seg16AccY30 rho = rho 15929 := by
      rw [seg16LadderFlatY30_eq]
      unfold seg16LadderFlatY30
      linear_combination r3357
    have ha3 : 3021 * rho 15928 * rho 15929 = rho 15930 := by
      linear_combination r3358
    have ha4 : rho 15931 * (1 + rho 15930) = rho 15928 + rho 15929 := by
      linear_combination r3359
    have ha5 : rho 15932 * (1 - rho 15930) = rho 15927 - rho 15928 - rho 15929 := by
      linear_combination r3360
    have haddx :
        rho 15931 * (1 + 3021 * (rho 15926 * seg16AccX30 rho) * (rho 15925 * seg16AccY30 rho)) =
          rho 15926 * seg16AccX30 rho + rho 15925 * seg16AccY30 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15932 * (1 - 3021 * (rho 15926 * seg16AccX30 rho) * (rho 15925 * seg16AccY30 rho)) =
          (-1) * (rho 15926 * seg16AccX30 rho) - rho 15925 * seg16AccY30 rho +
            (seg16AccY30 rho - seg16AccX30 rho * (-1)) * (rho 15925 + rho 15926) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15932 * (1 - rho 15930) = rho 15927 - rho 15928 - rho 15929 := ha5
        _ = (-1) * rho 15928 - rho 15929 + (seg16AccY30 rho - seg16AccX30 rho * (-1)) * (rho 15925 + rho 15926) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX31 rho = seg16AccX30 rho - Bool.toZMod bit * (seg16AccX30 rho - rho 15931) := by
      have hd : rho 15933 = Bool.toZMod bit * (rho 15931 - seg16AccX30 rho) := by
        rw [← hbit, seg16LadderFlatX30_eq]
        unfold seg16LadderFlatX30
        linear_combination -r3361
      unfold seg16AccX31
      linear_combination hd
    have hsely : seg16AccY31 rho = seg16AccY30 rho - Bool.toZMod bit * (seg16AccY30 rho - rho 15932) := by
      have hd : rho 15934 = Bool.toZMod bit * (rho 15932 - seg16AccY30 rho) := by
        rw [← hbit, seg16LadderFlatY30_eq]
        unfold seg16LadderFlatY30
        linear_combination -r3362
      unfold seg16AccY31
      linear_combination hd
    have hd0 : rho 15925 * rho 15926 = rho 15935 := by linear_combination r3363
    have hd1 : rho 15925 * rho 15925 = rho 15936 := by linear_combination r3364
    have hd2 : rho 15926 * rho 15926 = rho 15937 := by linear_combination r3365
    have hd3 : rho 15938 * (rho 15926 * rho 15926 + rho 15925 * rho 15925 * (-1)) = 2 * (rho 15925 * rho 15926) := by
      rw [hd0, hd1, hd2]
      linear_combination r3366
    have hd4 : rho 15939 * (2 - (rho 15926 * rho 15926 + rho 15925 * rho 15925 * (-1))) = rho 15926 * rho 15926 - rho 15925 * rho 15925 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3367
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX30 rho : Seg16.F), (seg16AccY30 rho : Seg16.F)⟩
      ⟨(rho 15925 : Seg16.F), (rho 15926 : Seg16.F)⟩
      ⟨(rho 15931 : Seg16.F), (rho 15932 : Seg16.F)⟩
      ⟨(seg16AccX31 rho : Seg16.F), (seg16AccY31 rho : Seg16.F)⟩
      ⟨(rho 15938 : Seg16.F), (rho 15939 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung30

theorem seg16_rung31 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15323 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX31 rho : Seg16.F), (seg16AccY31 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15938 : Seg16.F), (rho 15939 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX31 rho : Seg16.F), (seg16AccY31 rho : Seg16.F)⟩
        ⟨(rho 15938 : Seg16.F), (rho 15939 : Seg16.F)⟩
        ⟨(seg16AccX32 rho : Seg16.F), (seg16AccY32 rho : Seg16.F)⟩
        ⟨(rho 15951 : Seg16.F), (rho 15952 : Seg16.F)⟩ := by
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
  rcases p42 with ⟨_, _, _, _, _, _, _, _, r3368, r3369, r3370, r3371, r3372, r3373, r3374, r3375, r3376, r3377, r3378, r3379, r3380, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3368 Seg16.relationLc194 Seg16.relationLc194Part0 Seg16.relationLc194Part1 at r3368
  unfold Seg16.relationRow3369 at r3369
  unfold Seg16.relationRow3370 at r3370
  unfold Seg16.relationRow3371 at r3371
  unfold Seg16.relationRow3372 at r3372
  unfold Seg16.relationRow3373 at r3373
  unfold Seg16.relationRow3374 at r3374
  unfold Seg16.relationRow3375 Seg16.relationLc195 Seg16.relationLc195Part0 Seg16.relationLc195Part1 at r3375
  unfold Seg16.relationRow3376 at r3376
  unfold Seg16.relationRow3377 at r3377
  unfold Seg16.relationRow3378 at r3378
  unfold Seg16.relationRow3379 at r3379
  unfold Seg16.relationRow3380 at r3380
  have hrung31 (bit : Bool) (hbit : rho 15323 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX31 rho : Seg16.F), (seg16AccY31 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15938 : Seg16.F), (rho 15939 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX31 rho : Seg16.F), (seg16AccY31 rho : Seg16.F)⟩
        ⟨(rho 15938 : Seg16.F), (rho 15939 : Seg16.F)⟩
        ⟨(seg16AccX32 rho : Seg16.F), (seg16AccY32 rho : Seg16.F)⟩
        ⟨(rho 15951 : Seg16.F), (rho 15952 : Seg16.F)⟩ := by
    have ha0 : (rho 15938 + rho 15939) * (seg16AccX31 rho + seg16AccY31 rho) = rho 15940 := by
      rw [seg16LadderFlatX31_eq, seg16LadderFlatY31_eq]
      unfold seg16LadderFlatX31 seg16LadderFlatY31
      linear_combination r3368
    have ha1 : rho 15939 * seg16AccX31 rho = rho 15941 := by
      rw [seg16LadderFlatX31_eq]
      unfold seg16LadderFlatX31
      linear_combination r3369
    have ha2 : rho 15938 * seg16AccY31 rho = rho 15942 := by
      rw [seg16LadderFlatY31_eq]
      unfold seg16LadderFlatY31
      linear_combination r3370
    have ha3 : 3021 * rho 15941 * rho 15942 = rho 15943 := by
      linear_combination r3371
    have ha4 : rho 15944 * (1 + rho 15943) = rho 15941 + rho 15942 := by
      linear_combination r3372
    have ha5 : rho 15945 * (1 - rho 15943) = rho 15940 - rho 15941 - rho 15942 := by
      linear_combination r3373
    have haddx :
        rho 15944 * (1 + 3021 * (rho 15939 * seg16AccX31 rho) * (rho 15938 * seg16AccY31 rho)) =
          rho 15939 * seg16AccX31 rho + rho 15938 * seg16AccY31 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15945 * (1 - 3021 * (rho 15939 * seg16AccX31 rho) * (rho 15938 * seg16AccY31 rho)) =
          (-1) * (rho 15939 * seg16AccX31 rho) - rho 15938 * seg16AccY31 rho +
            (seg16AccY31 rho - seg16AccX31 rho * (-1)) * (rho 15938 + rho 15939) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15945 * (1 - rho 15943) = rho 15940 - rho 15941 - rho 15942 := ha5
        _ = (-1) * rho 15941 - rho 15942 + (seg16AccY31 rho - seg16AccX31 rho * (-1)) * (rho 15938 + rho 15939) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX32 rho = seg16AccX31 rho - Bool.toZMod bit * (seg16AccX31 rho - rho 15944) := by
      have hd : rho 15946 = Bool.toZMod bit * (rho 15944 - seg16AccX31 rho) := by
        rw [← hbit, seg16LadderFlatX31_eq]
        unfold seg16LadderFlatX31
        linear_combination -r3374
      unfold seg16AccX32
      linear_combination hd
    have hsely : seg16AccY32 rho = seg16AccY31 rho - Bool.toZMod bit * (seg16AccY31 rho - rho 15945) := by
      have hd : rho 15947 = Bool.toZMod bit * (rho 15945 - seg16AccY31 rho) := by
        rw [← hbit, seg16LadderFlatY31_eq]
        unfold seg16LadderFlatY31
        linear_combination -r3375
      unfold seg16AccY32
      linear_combination hd
    have hd0 : rho 15938 * rho 15939 = rho 15948 := by linear_combination r3376
    have hd1 : rho 15938 * rho 15938 = rho 15949 := by linear_combination r3377
    have hd2 : rho 15939 * rho 15939 = rho 15950 := by linear_combination r3378
    have hd3 : rho 15951 * (rho 15939 * rho 15939 + rho 15938 * rho 15938 * (-1)) = 2 * (rho 15938 * rho 15939) := by
      rw [hd0, hd1, hd2]
      linear_combination r3379
    have hd4 : rho 15952 * (2 - (rho 15939 * rho 15939 + rho 15938 * rho 15938 * (-1))) = rho 15939 * rho 15939 - rho 15938 * rho 15938 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3380
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX31 rho : Seg16.F), (seg16AccY31 rho : Seg16.F)⟩
      ⟨(rho 15938 : Seg16.F), (rho 15939 : Seg16.F)⟩
      ⟨(rho 15944 : Seg16.F), (rho 15945 : Seg16.F)⟩
      ⟨(seg16AccX32 rho : Seg16.F), (seg16AccY32 rho : Seg16.F)⟩
      ⟨(rho 15951 : Seg16.F), (rho 15952 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung31

theorem seg16_hstep_c0 (rho : Nat -> Seg16.F) (h : Seg16.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (15292 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 0 ≤ i → i < 32 →
      EdwardsBridge.onCurve (seg16LadderAccState rho i) →
      EdwardsBridge.onCurve (seg16LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg16LadderAccState rho i) (seg16LadderCurState rho i)
        (seg16LadderAccState rho (i + 1)) (seg16LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg16_rung0 rho h bits[0]! (hbitAt 0 (by omega)) hacc hcur
  · exact seg16_rung1 rho h bits[1]! (hbitAt 1 (by omega)) hacc hcur
  · exact seg16_rung2 rho h bits[2]! (hbitAt 2 (by omega)) hacc hcur
  · exact seg16_rung3 rho h bits[3]! (hbitAt 3 (by omega)) hacc hcur
  · exact seg16_rung4 rho h bits[4]! (hbitAt 4 (by omega)) hacc hcur
  · exact seg16_rung5 rho h bits[5]! (hbitAt 5 (by omega)) hacc hcur
  · exact seg16_rung6 rho h bits[6]! (hbitAt 6 (by omega)) hacc hcur
  · exact seg16_rung7 rho h bits[7]! (hbitAt 7 (by omega)) hacc hcur
  · exact seg16_rung8 rho h bits[8]! (hbitAt 8 (by omega)) hacc hcur
  · exact seg16_rung9 rho h bits[9]! (hbitAt 9 (by omega)) hacc hcur
  · exact seg16_rung10 rho h bits[10]! (hbitAt 10 (by omega)) hacc hcur
  · exact seg16_rung11 rho h bits[11]! (hbitAt 11 (by omega)) hacc hcur
  · exact seg16_rung12 rho h bits[12]! (hbitAt 12 (by omega)) hacc hcur
  · exact seg16_rung13 rho h bits[13]! (hbitAt 13 (by omega)) hacc hcur
  · exact seg16_rung14 rho h bits[14]! (hbitAt 14 (by omega)) hacc hcur
  · exact seg16_rung15 rho h bits[15]! (hbitAt 15 (by omega)) hacc hcur
  · exact seg16_rung16 rho h bits[16]! (hbitAt 16 (by omega)) hacc hcur
  · exact seg16_rung17 rho h bits[17]! (hbitAt 17 (by omega)) hacc hcur
  · exact seg16_rung18 rho h bits[18]! (hbitAt 18 (by omega)) hacc hcur
  · exact seg16_rung19 rho h bits[19]! (hbitAt 19 (by omega)) hacc hcur
  · exact seg16_rung20 rho h bits[20]! (hbitAt 20 (by omega)) hacc hcur
  · exact seg16_rung21 rho h bits[21]! (hbitAt 21 (by omega)) hacc hcur
  · exact seg16_rung22 rho h bits[22]! (hbitAt 22 (by omega)) hacc hcur
  · exact seg16_rung23 rho h bits[23]! (hbitAt 23 (by omega)) hacc hcur
  · exact seg16_rung24 rho h bits[24]! (hbitAt 24 (by omega)) hacc hcur
  · exact seg16_rung25 rho h bits[25]! (hbitAt 25 (by omega)) hacc hcur
  · exact seg16_rung26 rho h bits[26]! (hbitAt 26 (by omega)) hacc hcur
  · exact seg16_rung27 rho h bits[27]! (hbitAt 27 (by omega)) hacc hcur
  · exact seg16_rung28 rho h bits[28]! (hbitAt 28 (by omega)) hacc hcur
  · exact seg16_rung29 rho h bits[29]! (hbitAt 29 (by omega)) hacc hcur
  · exact seg16_rung30 rho h bits[30]! (hbitAt 30 (by omega)) hacc hcur
  · exact seg16_rung31 rho h bits[31]! (hbitAt 31 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
