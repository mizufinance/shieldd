import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg16_rows0 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow2971 rho ∧ Seg16.relationRow2972 rho ∧ Seg16.relationRow2973 rho ∧ Seg16.relationRow2974 rho ∧ Seg16.relationRow2975 rho ∧ Seg16.relationRow2976 rho ∧ Seg16.relationRow2977 rho := by
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
  exact ⟨r2971, r2972, r2973, r2974, r2975, r2976, r2977⟩

theorem seg16_rung0 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15292 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX0 rho : Seg16.F), (seg16AccY0 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17 : Seg16.F), (rho 18 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX0 rho : Seg16.F), (seg16AccY0 rho : Seg16.F)⟩
        ⟨(rho 17 : Seg16.F), (rho 18 : Seg16.F)⟩
        ⟨(seg16AccX1 rho : Seg16.F), (seg16AccY1 rho : Seg16.F)⟩
        ⟨(rho 15548 : Seg16.F), (rho 15549 : Seg16.F)⟩ := by
  obtain ⟨r2971, r2972, r2973, r2974, r2975, r2976, r2977⟩ := seg16_rows0 rho h
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
    have hnextx : seg16AccX1 rho = seg16AccX0 rho + rho 15543 := by
      unfold seg16AccX1 seg16AccX0
      ring
    have hnexty : seg16AccY1 rho = seg16AccY0 rho + rho 15544 := by
      unfold seg16AccY1 seg16AccY0
      ring
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
        rw [← hbit]
        unfold seg16AccX0
        linear_combination -r2971
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY1 rho = seg16AccY0 rho - Bool.toZMod bit * (seg16AccY0 rho - rho 18) := by
      have hd : rho 15544 = Bool.toZMod bit * (rho 18 - seg16AccY0 rho) := by
        rw [← hbit]
        unfold seg16AccY0
        linear_combination -r2972
      rw [hnexty]
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

theorem seg16_rows1 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow2978 rho ∧ Seg16.relationRow2979 rho ∧ Seg16.relationRow2980 rho ∧ Seg16.relationRow2981 rho ∧ Seg16.relationRow2982 rho ∧ Seg16.relationRow2983 rho ∧ Seg16.relationRow2984 rho ∧ Seg16.relationRow2985 rho ∧ Seg16.relationRow2986 rho ∧ Seg16.relationRow2987 rho ∧ Seg16.relationRow2988 rho ∧ Seg16.relationRow2989 rho ∧ Seg16.relationRow2990 rho := by
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
  exact ⟨r2978, r2979, r2980, r2981, r2982, r2983, r2984, r2985, r2986, r2987, r2988, r2989, r2990⟩

theorem seg16_rung1 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15293 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX1 rho : Seg16.F), (seg16AccY1 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15548 : Seg16.F), (rho 15549 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX1 rho : Seg16.F), (seg16AccY1 rho : Seg16.F)⟩
        ⟨(rho 15548 : Seg16.F), (rho 15549 : Seg16.F)⟩
        ⟨(seg16AccX2 rho : Seg16.F), (seg16AccY2 rho : Seg16.F)⟩
        ⟨(rho 15561 : Seg16.F), (rho 15562 : Seg16.F)⟩ := by
  obtain ⟨r2978, r2979, r2980, r2981, r2982, r2983, r2984, r2985, r2986, r2987, r2988, r2989, r2990⟩ := seg16_rows1 rho h
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
    have hnextx : seg16AccX2 rho = seg16AccX1 rho + rho 15556 := by
      unfold seg16AccX2 seg16AccX1
      ring
    have hnexty : seg16AccY2 rho = seg16AccY1 rho + rho 15557 := by
      unfold seg16AccY2 seg16AccY1
      ring
    have ha0 : (rho 15548 + rho 15549) * (seg16AccX1 rho + seg16AccY1 rho) = rho 15550 := by
      unfold seg16AccX1 seg16AccY1
      linear_combination r2978
    have ha1 : rho 15549 * seg16AccX1 rho = rho 15551 := by
      unfold seg16AccX1
      linear_combination r2979
    have ha2 : rho 15548 * seg16AccY1 rho = rho 15552 := by
      unfold seg16AccY1
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
        rw [← hbit]
        unfold seg16AccX1
        linear_combination -r2984
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY2 rho = seg16AccY1 rho - Bool.toZMod bit * (seg16AccY1 rho - rho 15555) := by
      have hd : rho 15557 = Bool.toZMod bit * (rho 15555 - seg16AccY1 rho) := by
        rw [← hbit]
        unfold seg16AccY1
        linear_combination -r2985
      rw [hnexty]
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

theorem seg16_rows2 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow2991 rho ∧ Seg16.relationRow2992 rho ∧ Seg16.relationRow2993 rho ∧ Seg16.relationRow2994 rho ∧ Seg16.relationRow2995 rho ∧ Seg16.relationRow2996 rho ∧ Seg16.relationRow2997 rho ∧ Seg16.relationRow2998 rho ∧ Seg16.relationRow2999 rho ∧ Seg16.relationRow3000 rho ∧ Seg16.relationRow3001 rho ∧ Seg16.relationRow3002 rho ∧ Seg16.relationRow3003 rho := by
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
  exact ⟨r2991, r2992, r2993, r2994, r2995, r2996, r2997, r2998, r2999, r3000, r3001, r3002, r3003⟩

theorem seg16_rung2 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15294 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX2 rho : Seg16.F), (seg16AccY2 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15561 : Seg16.F), (rho 15562 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX2 rho : Seg16.F), (seg16AccY2 rho : Seg16.F)⟩
        ⟨(rho 15561 : Seg16.F), (rho 15562 : Seg16.F)⟩
        ⟨(seg16AccX3 rho : Seg16.F), (seg16AccY3 rho : Seg16.F)⟩
        ⟨(rho 15574 : Seg16.F), (rho 15575 : Seg16.F)⟩ := by
  obtain ⟨r2991, r2992, r2993, r2994, r2995, r2996, r2997, r2998, r2999, r3000, r3001, r3002, r3003⟩ := seg16_rows2 rho h
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
    have hnextx : seg16AccX3 rho = seg16AccX2 rho + rho 15569 := by
      unfold seg16AccX3 seg16AccX2
      ring
    have hnexty : seg16AccY3 rho = seg16AccY2 rho + rho 15570 := by
      unfold seg16AccY3 seg16AccY2
      ring
    have ha0 : (rho 15561 + rho 15562) * (seg16AccX2 rho + seg16AccY2 rho) = rho 15563 := by
      unfold seg16AccX2 seg16AccY2
      linear_combination r2991
    have ha1 : rho 15562 * seg16AccX2 rho = rho 15564 := by
      unfold seg16AccX2
      linear_combination r2992
    have ha2 : rho 15561 * seg16AccY2 rho = rho 15565 := by
      unfold seg16AccY2
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
        rw [← hbit]
        unfold seg16AccX2
        linear_combination -r2997
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY3 rho = seg16AccY2 rho - Bool.toZMod bit * (seg16AccY2 rho - rho 15568) := by
      have hd : rho 15570 = Bool.toZMod bit * (rho 15568 - seg16AccY2 rho) := by
        rw [← hbit]
        unfold seg16AccY2
        linear_combination -r2998
      rw [hnexty]
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

theorem seg16_rows3 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3004 rho ∧ Seg16.relationRow3005 rho ∧ Seg16.relationRow3006 rho ∧ Seg16.relationRow3007 rho ∧ Seg16.relationRow3008 rho ∧ Seg16.relationRow3009 rho ∧ Seg16.relationRow3010 rho ∧ Seg16.relationRow3011 rho ∧ Seg16.relationRow3012 rho ∧ Seg16.relationRow3013 rho ∧ Seg16.relationRow3014 rho ∧ Seg16.relationRow3015 rho ∧ Seg16.relationRow3016 rho := by
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
  exact ⟨r3004, r3005, r3006, r3007, r3008, r3009, r3010, r3011, r3012, r3013, r3014, r3015, r3016⟩

theorem seg16_rung3 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15295 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX3 rho : Seg16.F), (seg16AccY3 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15574 : Seg16.F), (rho 15575 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX3 rho : Seg16.F), (seg16AccY3 rho : Seg16.F)⟩
        ⟨(rho 15574 : Seg16.F), (rho 15575 : Seg16.F)⟩
        ⟨(seg16AccX4 rho : Seg16.F), (seg16AccY4 rho : Seg16.F)⟩
        ⟨(rho 15587 : Seg16.F), (rho 15588 : Seg16.F)⟩ := by
  obtain ⟨r3004, r3005, r3006, r3007, r3008, r3009, r3010, r3011, r3012, r3013, r3014, r3015, r3016⟩ := seg16_rows3 rho h
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
    have hnextx : seg16AccX4 rho = seg16AccX3 rho + rho 15582 := by
      unfold seg16AccX4 seg16AccX3
      ring
    have hnexty : seg16AccY4 rho = seg16AccY3 rho + rho 15583 := by
      unfold seg16AccY4 seg16AccY3
      ring
    have ha0 : (rho 15574 + rho 15575) * (seg16AccX3 rho + seg16AccY3 rho) = rho 15576 := by
      unfold seg16AccX3 seg16AccY3
      linear_combination r3004
    have ha1 : rho 15575 * seg16AccX3 rho = rho 15577 := by
      unfold seg16AccX3
      linear_combination r3005
    have ha2 : rho 15574 * seg16AccY3 rho = rho 15578 := by
      unfold seg16AccY3
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
        rw [← hbit]
        unfold seg16AccX3
        linear_combination -r3010
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY4 rho = seg16AccY3 rho - Bool.toZMod bit * (seg16AccY3 rho - rho 15581) := by
      have hd : rho 15583 = Bool.toZMod bit * (rho 15581 - seg16AccY3 rho) := by
        rw [← hbit]
        unfold seg16AccY3
        linear_combination -r3011
      rw [hnexty]
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

theorem seg16_rows4 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3017 rho ∧ Seg16.relationRow3018 rho ∧ Seg16.relationRow3019 rho ∧ Seg16.relationRow3020 rho ∧ Seg16.relationRow3021 rho ∧ Seg16.relationRow3022 rho ∧ Seg16.relationRow3023 rho ∧ Seg16.relationRow3024 rho ∧ Seg16.relationRow3025 rho ∧ Seg16.relationRow3026 rho ∧ Seg16.relationRow3027 rho ∧ Seg16.relationRow3028 rho ∧ Seg16.relationRow3029 rho := by
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
  exact ⟨r3017, r3018, r3019, r3020, r3021, r3022, r3023, r3024, r3025, r3026, r3027, r3028, r3029⟩

theorem seg16_rung4 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15296 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX4 rho : Seg16.F), (seg16AccY4 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15587 : Seg16.F), (rho 15588 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX4 rho : Seg16.F), (seg16AccY4 rho : Seg16.F)⟩
        ⟨(rho 15587 : Seg16.F), (rho 15588 : Seg16.F)⟩
        ⟨(seg16AccX5 rho : Seg16.F), (seg16AccY5 rho : Seg16.F)⟩
        ⟨(rho 15600 : Seg16.F), (rho 15601 : Seg16.F)⟩ := by
  obtain ⟨r3017, r3018, r3019, r3020, r3021, r3022, r3023, r3024, r3025, r3026, r3027, r3028, r3029⟩ := seg16_rows4 rho h
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
    have hnextx : seg16AccX5 rho = seg16AccX4 rho + rho 15595 := by
      unfold seg16AccX5 seg16AccX4
      ring
    have hnexty : seg16AccY5 rho = seg16AccY4 rho + rho 15596 := by
      unfold seg16AccY5 seg16AccY4
      ring
    have ha0 : (rho 15587 + rho 15588) * (seg16AccX4 rho + seg16AccY4 rho) = rho 15589 := by
      unfold seg16AccX4 seg16AccY4
      linear_combination r3017
    have ha1 : rho 15588 * seg16AccX4 rho = rho 15590 := by
      unfold seg16AccX4
      linear_combination r3018
    have ha2 : rho 15587 * seg16AccY4 rho = rho 15591 := by
      unfold seg16AccY4
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
        rw [← hbit]
        unfold seg16AccX4
        linear_combination -r3023
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY5 rho = seg16AccY4 rho - Bool.toZMod bit * (seg16AccY4 rho - rho 15594) := by
      have hd : rho 15596 = Bool.toZMod bit * (rho 15594 - seg16AccY4 rho) := by
        rw [← hbit]
        unfold seg16AccY4
        linear_combination -r3024
      rw [hnexty]
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

theorem seg16_rows5 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3030 rho ∧ Seg16.relationRow3031 rho ∧ Seg16.relationRow3032 rho ∧ Seg16.relationRow3033 rho ∧ Seg16.relationRow3034 rho ∧ Seg16.relationRow3035 rho ∧ Seg16.relationRow3036 rho ∧ Seg16.relationRow3037 rho ∧ Seg16.relationRow3038 rho ∧ Seg16.relationRow3039 rho ∧ Seg16.relationRow3040 rho ∧ Seg16.relationRow3041 rho ∧ Seg16.relationRow3042 rho := by
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
  exact ⟨r3030, r3031, r3032, r3033, r3034, r3035, r3036, r3037, r3038, r3039, r3040, r3041, r3042⟩

theorem seg16_rung5 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15297 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX5 rho : Seg16.F), (seg16AccY5 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15600 : Seg16.F), (rho 15601 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX5 rho : Seg16.F), (seg16AccY5 rho : Seg16.F)⟩
        ⟨(rho 15600 : Seg16.F), (rho 15601 : Seg16.F)⟩
        ⟨(seg16AccX6 rho : Seg16.F), (seg16AccY6 rho : Seg16.F)⟩
        ⟨(rho 15613 : Seg16.F), (rho 15614 : Seg16.F)⟩ := by
  obtain ⟨r3030, r3031, r3032, r3033, r3034, r3035, r3036, r3037, r3038, r3039, r3040, r3041, r3042⟩ := seg16_rows5 rho h
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
    have hnextx : seg16AccX6 rho = seg16AccX5 rho + rho 15608 := by
      unfold seg16AccX6 seg16AccX5
      ring
    have hnexty : seg16AccY6 rho = seg16AccY5 rho + rho 15609 := by
      unfold seg16AccY6 seg16AccY5
      ring
    have ha0 : (rho 15600 + rho 15601) * (seg16AccX5 rho + seg16AccY5 rho) = rho 15602 := by
      unfold seg16AccX5 seg16AccY5
      linear_combination r3030
    have ha1 : rho 15601 * seg16AccX5 rho = rho 15603 := by
      unfold seg16AccX5
      linear_combination r3031
    have ha2 : rho 15600 * seg16AccY5 rho = rho 15604 := by
      unfold seg16AccY5
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
        rw [← hbit]
        unfold seg16AccX5
        linear_combination -r3036
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY6 rho = seg16AccY5 rho - Bool.toZMod bit * (seg16AccY5 rho - rho 15607) := by
      have hd : rho 15609 = Bool.toZMod bit * (rho 15607 - seg16AccY5 rho) := by
        rw [← hbit]
        unfold seg16AccY5
        linear_combination -r3037
      rw [hnexty]
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

theorem seg16_rows6 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3043 rho ∧ Seg16.relationRow3044 rho ∧ Seg16.relationRow3045 rho ∧ Seg16.relationRow3046 rho ∧ Seg16.relationRow3047 rho ∧ Seg16.relationRow3048 rho ∧ Seg16.relationRow3049 rho ∧ Seg16.relationRow3050 rho ∧ Seg16.relationRow3051 rho ∧ Seg16.relationRow3052 rho ∧ Seg16.relationRow3053 rho ∧ Seg16.relationRow3054 rho ∧ Seg16.relationRow3055 rho := by
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
  exact ⟨r3043, r3044, r3045, r3046, r3047, r3048, r3049, r3050, r3051, r3052, r3053, r3054, r3055⟩

theorem seg16_rung6 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15298 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX6 rho : Seg16.F), (seg16AccY6 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15613 : Seg16.F), (rho 15614 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX6 rho : Seg16.F), (seg16AccY6 rho : Seg16.F)⟩
        ⟨(rho 15613 : Seg16.F), (rho 15614 : Seg16.F)⟩
        ⟨(seg16AccX7 rho : Seg16.F), (seg16AccY7 rho : Seg16.F)⟩
        ⟨(rho 15626 : Seg16.F), (rho 15627 : Seg16.F)⟩ := by
  obtain ⟨r3043, r3044, r3045, r3046, r3047, r3048, r3049, r3050, r3051, r3052, r3053, r3054, r3055⟩ := seg16_rows6 rho h
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
    have hnextx : seg16AccX7 rho = seg16AccX6 rho + rho 15621 := by
      unfold seg16AccX7 seg16AccX6
      ring
    have hnexty : seg16AccY7 rho = seg16AccY6 rho + rho 15622 := by
      unfold seg16AccY7 seg16AccY6
      ring
    have ha0 : (rho 15613 + rho 15614) * (seg16AccX6 rho + seg16AccY6 rho) = rho 15615 := by
      unfold seg16AccX6 seg16AccY6
      linear_combination r3043
    have ha1 : rho 15614 * seg16AccX6 rho = rho 15616 := by
      unfold seg16AccX6
      linear_combination r3044
    have ha2 : rho 15613 * seg16AccY6 rho = rho 15617 := by
      unfold seg16AccY6
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
        rw [← hbit]
        unfold seg16AccX6
        linear_combination -r3049
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY7 rho = seg16AccY6 rho - Bool.toZMod bit * (seg16AccY6 rho - rho 15620) := by
      have hd : rho 15622 = Bool.toZMod bit * (rho 15620 - seg16AccY6 rho) := by
        rw [← hbit]
        unfold seg16AccY6
        linear_combination -r3050
      rw [hnexty]
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

theorem seg16_rows7 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3056 rho ∧ Seg16.relationRow3057 rho ∧ Seg16.relationRow3058 rho ∧ Seg16.relationRow3059 rho ∧ Seg16.relationRow3060 rho ∧ Seg16.relationRow3061 rho ∧ Seg16.relationRow3062 rho ∧ Seg16.relationRow3063 rho ∧ Seg16.relationRow3064 rho ∧ Seg16.relationRow3065 rho ∧ Seg16.relationRow3066 rho ∧ Seg16.relationRow3067 rho ∧ Seg16.relationRow3068 rho := by
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
  exact ⟨r3056, r3057, r3058, r3059, r3060, r3061, r3062, r3063, r3064, r3065, r3066, r3067, r3068⟩

theorem seg16_rung7 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15299 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX7 rho : Seg16.F), (seg16AccY7 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15626 : Seg16.F), (rho 15627 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX7 rho : Seg16.F), (seg16AccY7 rho : Seg16.F)⟩
        ⟨(rho 15626 : Seg16.F), (rho 15627 : Seg16.F)⟩
        ⟨(seg16AccX8 rho : Seg16.F), (seg16AccY8 rho : Seg16.F)⟩
        ⟨(rho 15639 : Seg16.F), (rho 15640 : Seg16.F)⟩ := by
  obtain ⟨r3056, r3057, r3058, r3059, r3060, r3061, r3062, r3063, r3064, r3065, r3066, r3067, r3068⟩ := seg16_rows7 rho h
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
    have hnextx : seg16AccX8 rho = seg16AccX7 rho + rho 15634 := by
      unfold seg16AccX8 seg16AccX7
      ring
    have hnexty : seg16AccY8 rho = seg16AccY7 rho + rho 15635 := by
      unfold seg16AccY8 seg16AccY7
      ring
    have ha0 : (rho 15626 + rho 15627) * (seg16AccX7 rho + seg16AccY7 rho) = rho 15628 := by
      unfold seg16AccX7 seg16AccY7
      linear_combination r3056
    have ha1 : rho 15627 * seg16AccX7 rho = rho 15629 := by
      unfold seg16AccX7
      linear_combination r3057
    have ha2 : rho 15626 * seg16AccY7 rho = rho 15630 := by
      unfold seg16AccY7
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
        rw [← hbit]
        unfold seg16AccX7
        linear_combination -r3062
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY8 rho = seg16AccY7 rho - Bool.toZMod bit * (seg16AccY7 rho - rho 15633) := by
      have hd : rho 15635 = Bool.toZMod bit * (rho 15633 - seg16AccY7 rho) := by
        rw [← hbit]
        unfold seg16AccY7
        linear_combination -r3063
      rw [hnexty]
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

theorem seg16_rows8 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3069 rho ∧ Seg16.relationRow3070 rho ∧ Seg16.relationRow3071 rho ∧ Seg16.relationRow3072 rho ∧ Seg16.relationRow3073 rho ∧ Seg16.relationRow3074 rho ∧ Seg16.relationRow3075 rho ∧ Seg16.relationRow3076 rho ∧ Seg16.relationRow3077 rho ∧ Seg16.relationRow3078 rho ∧ Seg16.relationRow3079 rho ∧ Seg16.relationRow3080 rho ∧ Seg16.relationRow3081 rho := by
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
  exact ⟨r3069, r3070, r3071, r3072, r3073, r3074, r3075, r3076, r3077, r3078, r3079, r3080, r3081⟩

theorem seg16_rung8 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15300 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX8 rho : Seg16.F), (seg16AccY8 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15639 : Seg16.F), (rho 15640 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX8 rho : Seg16.F), (seg16AccY8 rho : Seg16.F)⟩
        ⟨(rho 15639 : Seg16.F), (rho 15640 : Seg16.F)⟩
        ⟨(seg16AccX9 rho : Seg16.F), (seg16AccY9 rho : Seg16.F)⟩
        ⟨(rho 15652 : Seg16.F), (rho 15653 : Seg16.F)⟩ := by
  obtain ⟨r3069, r3070, r3071, r3072, r3073, r3074, r3075, r3076, r3077, r3078, r3079, r3080, r3081⟩ := seg16_rows8 rho h
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
    have hnextx : seg16AccX9 rho = seg16AccX8 rho + rho 15647 := by
      unfold seg16AccX9 seg16AccX8
      ring
    have hnexty : seg16AccY9 rho = seg16AccY8 rho + rho 15648 := by
      unfold seg16AccY9 seg16AccY8
      ring
    have ha0 : (rho 15639 + rho 15640) * (seg16AccX8 rho + seg16AccY8 rho) = rho 15641 := by
      unfold seg16AccX8 seg16AccY8
      linear_combination r3069
    have ha1 : rho 15640 * seg16AccX8 rho = rho 15642 := by
      unfold seg16AccX8
      linear_combination r3070
    have ha2 : rho 15639 * seg16AccY8 rho = rho 15643 := by
      unfold seg16AccY8
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
        rw [← hbit]
        unfold seg16AccX8
        linear_combination -r3075
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY9 rho = seg16AccY8 rho - Bool.toZMod bit * (seg16AccY8 rho - rho 15646) := by
      have hd : rho 15648 = Bool.toZMod bit * (rho 15646 - seg16AccY8 rho) := by
        rw [← hbit]
        unfold seg16AccY8
        linear_combination -r3076
      rw [hnexty]
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

theorem seg16_rows9 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3082 rho ∧ Seg16.relationRow3083 rho ∧ Seg16.relationRow3084 rho ∧ Seg16.relationRow3085 rho ∧ Seg16.relationRow3086 rho ∧ Seg16.relationRow3087 rho ∧ Seg16.relationRow3088 rho ∧ Seg16.relationRow3089 rho ∧ Seg16.relationRow3090 rho ∧ Seg16.relationRow3091 rho ∧ Seg16.relationRow3092 rho ∧ Seg16.relationRow3093 rho ∧ Seg16.relationRow3094 rho := by
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
  exact ⟨r3082, r3083, r3084, r3085, r3086, r3087, r3088, r3089, r3090, r3091, r3092, r3093, r3094⟩

theorem seg16_rung9 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15301 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX9 rho : Seg16.F), (seg16AccY9 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15652 : Seg16.F), (rho 15653 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX9 rho : Seg16.F), (seg16AccY9 rho : Seg16.F)⟩
        ⟨(rho 15652 : Seg16.F), (rho 15653 : Seg16.F)⟩
        ⟨(seg16AccX10 rho : Seg16.F), (seg16AccY10 rho : Seg16.F)⟩
        ⟨(rho 15665 : Seg16.F), (rho 15666 : Seg16.F)⟩ := by
  obtain ⟨r3082, r3083, r3084, r3085, r3086, r3087, r3088, r3089, r3090, r3091, r3092, r3093, r3094⟩ := seg16_rows9 rho h
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
    have hnextx : seg16AccX10 rho = seg16AccX9 rho + rho 15660 := by
      unfold seg16AccX10 seg16AccX9
      ring
    have hnexty : seg16AccY10 rho = seg16AccY9 rho + rho 15661 := by
      unfold seg16AccY10 seg16AccY9
      ring
    have ha0 : (rho 15652 + rho 15653) * (seg16AccX9 rho + seg16AccY9 rho) = rho 15654 := by
      unfold seg16AccX9 seg16AccY9
      linear_combination r3082
    have ha1 : rho 15653 * seg16AccX9 rho = rho 15655 := by
      unfold seg16AccX9
      linear_combination r3083
    have ha2 : rho 15652 * seg16AccY9 rho = rho 15656 := by
      unfold seg16AccY9
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
        rw [← hbit]
        unfold seg16AccX9
        linear_combination -r3088
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY10 rho = seg16AccY9 rho - Bool.toZMod bit * (seg16AccY9 rho - rho 15659) := by
      have hd : rho 15661 = Bool.toZMod bit * (rho 15659 - seg16AccY9 rho) := by
        rw [← hbit]
        unfold seg16AccY9
        linear_combination -r3089
      rw [hnexty]
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

theorem seg16_rows10 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3095 rho ∧ Seg16.relationRow3096 rho ∧ Seg16.relationRow3097 rho ∧ Seg16.relationRow3098 rho ∧ Seg16.relationRow3099 rho ∧ Seg16.relationRow3100 rho ∧ Seg16.relationRow3101 rho ∧ Seg16.relationRow3102 rho ∧ Seg16.relationRow3103 rho ∧ Seg16.relationRow3104 rho ∧ Seg16.relationRow3105 rho ∧ Seg16.relationRow3106 rho ∧ Seg16.relationRow3107 rho := by
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
  exact ⟨r3095, r3096, r3097, r3098, r3099, r3100, r3101, r3102, r3103, r3104, r3105, r3106, r3107⟩

theorem seg16_rung10 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15302 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX10 rho : Seg16.F), (seg16AccY10 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15665 : Seg16.F), (rho 15666 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX10 rho : Seg16.F), (seg16AccY10 rho : Seg16.F)⟩
        ⟨(rho 15665 : Seg16.F), (rho 15666 : Seg16.F)⟩
        ⟨(seg16AccX11 rho : Seg16.F), (seg16AccY11 rho : Seg16.F)⟩
        ⟨(rho 15678 : Seg16.F), (rho 15679 : Seg16.F)⟩ := by
  obtain ⟨r3095, r3096, r3097, r3098, r3099, r3100, r3101, r3102, r3103, r3104, r3105, r3106, r3107⟩ := seg16_rows10 rho h
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
    have hnextx : seg16AccX11 rho = seg16AccX10 rho + rho 15673 := by
      unfold seg16AccX11 seg16AccX10
      ring
    have hnexty : seg16AccY11 rho = seg16AccY10 rho + rho 15674 := by
      unfold seg16AccY11 seg16AccY10
      ring
    have ha0 : (rho 15665 + rho 15666) * (seg16AccX10 rho + seg16AccY10 rho) = rho 15667 := by
      unfold seg16AccX10 seg16AccY10
      linear_combination r3095
    have ha1 : rho 15666 * seg16AccX10 rho = rho 15668 := by
      unfold seg16AccX10
      linear_combination r3096
    have ha2 : rho 15665 * seg16AccY10 rho = rho 15669 := by
      unfold seg16AccY10
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
        rw [← hbit]
        unfold seg16AccX10
        linear_combination -r3101
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY11 rho = seg16AccY10 rho - Bool.toZMod bit * (seg16AccY10 rho - rho 15672) := by
      have hd : rho 15674 = Bool.toZMod bit * (rho 15672 - seg16AccY10 rho) := by
        rw [← hbit]
        unfold seg16AccY10
        linear_combination -r3102
      rw [hnexty]
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

theorem seg16_hstep_c0 (rho : Nat -> Seg16.F) (h : Seg16.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (15292 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 0 ≤ i → i < 11 →
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
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
