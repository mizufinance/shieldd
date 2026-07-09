import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg5_rows0 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow2971 rho ∧ Seg5.relationRow2972 rho ∧ Seg5.relationRow2973 rho ∧ Seg5.relationRow2974 rho ∧ Seg5.relationRow2975 rho ∧ Seg5.relationRow2976 rho ∧ Seg5.relationRow2977 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, r2971, r2972, r2973, r2974, r2975, r2976, r2977, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2971, r2972, r2973, r2974, r2975, r2976, r2977⟩

theorem seg5_rung0 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2415 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX0 rho : Seg5.F), (seg5AccY0 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17 : Seg5.F), (rho 18 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX0 rho : Seg5.F), (seg5AccY0 rho : Seg5.F)⟩
        ⟨(rho 17 : Seg5.F), (rho 18 : Seg5.F)⟩
        ⟨(seg5AccX1 rho : Seg5.F), (seg5AccY1 rho : Seg5.F)⟩
        ⟨(rho 2671 : Seg5.F), (rho 2672 : Seg5.F)⟩ := by
  obtain ⟨r2971, r2972, r2973, r2974, r2975, r2976, r2977⟩ := seg5_rows0 rho h
  unfold Seg5.relationRow2971 at r2971
  unfold Seg5.relationRow2972 at r2972
  unfold Seg5.relationRow2973 at r2973
  unfold Seg5.relationRow2974 at r2974
  unfold Seg5.relationRow2975 at r2975
  unfold Seg5.relationRow2976 at r2976
  unfold Seg5.relationRow2977 at r2977
  have hrung0 (bit : Bool) (hbit : rho 2415 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX0 rho : Seg5.F), (seg5AccY0 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17 : Seg5.F), (rho 18 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX0 rho : Seg5.F), (seg5AccY0 rho : Seg5.F)⟩
        ⟨(rho 17 : Seg5.F), (rho 18 : Seg5.F)⟩
        ⟨(seg5AccX1 rho : Seg5.F), (seg5AccY1 rho : Seg5.F)⟩
        ⟨(rho 2671 : Seg5.F), (rho 2672 : Seg5.F)⟩ := by
    have hnextx : seg5AccX1 rho = seg5AccX0 rho + rho 2666 := by
      unfold seg5AccX1 seg5AccX0
      ring
    have hnexty : seg5AccY1 rho = seg5AccY0 rho + rho 2667 := by
      unfold seg5AccY1 seg5AccY0
      ring
    have haddx :
        rho 17 * (1 + 3021 * (rho 18 * seg5AccX0 rho) * (rho 17 * seg5AccY0 rho)) =
          rho 18 * seg5AccX0 rho + rho 17 * seg5AccY0 rho := by
      unfold seg5AccX0 seg5AccY0
      ring
    have haddy :
        rho 18 * (1 - 3021 * (rho 18 * seg5AccX0 rho) * (rho 17 * seg5AccY0 rho)) =
          (-1) * (rho 18 * seg5AccX0 rho) - rho 17 * seg5AccY0 rho +
            (seg5AccY0 rho - seg5AccX0 rho * (-1)) * (rho 17 + rho 18) := by
      unfold seg5AccX0 seg5AccY0
      ring
    have hselx : seg5AccX1 rho = seg5AccX0 rho - Bool.toZMod bit * (seg5AccX0 rho - rho 17) := by
      have hd : rho 2666 = Bool.toZMod bit * (rho 17 - seg5AccX0 rho) := by
        rw [← hbit]
        unfold seg5AccX0
        linear_combination -r2971
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY1 rho = seg5AccY0 rho - Bool.toZMod bit * (seg5AccY0 rho - rho 18) := by
      have hd : rho 2667 = Bool.toZMod bit * (rho 18 - seg5AccY0 rho) := by
        rw [← hbit]
        unfold seg5AccY0
        linear_combination -r2972
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17 * rho 18 = rho 2668 := by linear_combination r2973
    have hd1 : rho 17 * rho 17 = rho 2669 := by linear_combination r2974
    have hd2 : rho 18 * rho 18 = rho 2670 := by linear_combination r2975
    have hd3 : rho 2671 * (rho 18 * rho 18 + rho 17 * rho 17 * (-1)) = 2 * (rho 17 * rho 18) := by
      rw [hd0, hd1, hd2]
      linear_combination r2976
    have hd4 : rho 2672 * (2 - (rho 18 * rho 18 + rho 17 * rho 17 * (-1))) = rho 18 * rho 18 - rho 17 * rho 17 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2977
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX0 rho : Seg5.F), (seg5AccY0 rho : Seg5.F)⟩
      ⟨(rho 17 : Seg5.F), (rho 18 : Seg5.F)⟩
      ⟨(rho 17 : Seg5.F), (rho 18 : Seg5.F)⟩
      ⟨(seg5AccX1 rho : Seg5.F), (seg5AccY1 rho : Seg5.F)⟩
      ⟨(rho 2671 : Seg5.F), (rho 2672 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung0

theorem seg5_rows1 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow2978 rho ∧ Seg5.relationRow2979 rho ∧ Seg5.relationRow2980 rho ∧ Seg5.relationRow2981 rho ∧ Seg5.relationRow2982 rho ∧ Seg5.relationRow2983 rho ∧ Seg5.relationRow2984 rho ∧ Seg5.relationRow2985 rho ∧ Seg5.relationRow2986 rho ∧ Seg5.relationRow2987 rho ∧ Seg5.relationRow2988 rho ∧ Seg5.relationRow2989 rho ∧ Seg5.relationRow2990 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2978, r2979, r2980, r2981, r2982, r2983, r2984, r2985, r2986, r2987, r2988, r2989, r2990, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2978, r2979, r2980, r2981, r2982, r2983, r2984, r2985, r2986, r2987, r2988, r2989, r2990⟩

theorem seg5_rung1 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2416 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX1 rho : Seg5.F), (seg5AccY1 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2671 : Seg5.F), (rho 2672 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX1 rho : Seg5.F), (seg5AccY1 rho : Seg5.F)⟩
        ⟨(rho 2671 : Seg5.F), (rho 2672 : Seg5.F)⟩
        ⟨(seg5AccX2 rho : Seg5.F), (seg5AccY2 rho : Seg5.F)⟩
        ⟨(rho 2684 : Seg5.F), (rho 2685 : Seg5.F)⟩ := by
  obtain ⟨r2978, r2979, r2980, r2981, r2982, r2983, r2984, r2985, r2986, r2987, r2988, r2989, r2990⟩ := seg5_rows1 rho h
  unfold Seg5.relationRow2978 at r2978
  unfold Seg5.relationRow2979 at r2979
  unfold Seg5.relationRow2980 at r2980
  unfold Seg5.relationRow2981 at r2981
  unfold Seg5.relationRow2982 at r2982
  unfold Seg5.relationRow2983 at r2983
  unfold Seg5.relationRow2984 at r2984
  unfold Seg5.relationRow2985 at r2985
  unfold Seg5.relationRow2986 at r2986
  unfold Seg5.relationRow2987 at r2987
  unfold Seg5.relationRow2988 at r2988
  unfold Seg5.relationRow2989 at r2989
  unfold Seg5.relationRow2990 at r2990
  have hrung1 (bit : Bool) (hbit : rho 2416 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX1 rho : Seg5.F), (seg5AccY1 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2671 : Seg5.F), (rho 2672 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX1 rho : Seg5.F), (seg5AccY1 rho : Seg5.F)⟩
        ⟨(rho 2671 : Seg5.F), (rho 2672 : Seg5.F)⟩
        ⟨(seg5AccX2 rho : Seg5.F), (seg5AccY2 rho : Seg5.F)⟩
        ⟨(rho 2684 : Seg5.F), (rho 2685 : Seg5.F)⟩ := by
    have hnextx : seg5AccX2 rho = seg5AccX1 rho + rho 2679 := by
      unfold seg5AccX2 seg5AccX1
      ring
    have hnexty : seg5AccY2 rho = seg5AccY1 rho + rho 2680 := by
      unfold seg5AccY2 seg5AccY1
      ring
    have ha0 : (rho 2671 + rho 2672) * (seg5AccX1 rho + seg5AccY1 rho) = rho 2673 := by
      unfold seg5AccX1 seg5AccY1
      linear_combination r2978
    have ha1 : rho 2672 * seg5AccX1 rho = rho 2674 := by
      unfold seg5AccX1
      linear_combination r2979
    have ha2 : rho 2671 * seg5AccY1 rho = rho 2675 := by
      unfold seg5AccY1
      linear_combination r2980
    have ha3 : 3021 * rho 2674 * rho 2675 = rho 2676 := by
      linear_combination r2981
    have ha4 : rho 2677 * (1 + rho 2676) = rho 2674 + rho 2675 := by
      linear_combination r2982
    have ha5 : rho 2678 * (1 - rho 2676) = rho 2673 - rho 2674 - rho 2675 := by
      linear_combination r2983
    have haddx :
        rho 2677 * (1 + 3021 * (rho 2672 * seg5AccX1 rho) * (rho 2671 * seg5AccY1 rho)) =
          rho 2672 * seg5AccX1 rho + rho 2671 * seg5AccY1 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2678 * (1 - 3021 * (rho 2672 * seg5AccX1 rho) * (rho 2671 * seg5AccY1 rho)) =
          (-1) * (rho 2672 * seg5AccX1 rho) - rho 2671 * seg5AccY1 rho +
            (seg5AccY1 rho - seg5AccX1 rho * (-1)) * (rho 2671 + rho 2672) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2678 * (1 - rho 2676) = rho 2673 - rho 2674 - rho 2675 := ha5
        _ = (-1) * rho 2674 - rho 2675 + (seg5AccY1 rho - seg5AccX1 rho * (-1)) * (rho 2671 + rho 2672) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX2 rho = seg5AccX1 rho - Bool.toZMod bit * (seg5AccX1 rho - rho 2677) := by
      have hd : rho 2679 = Bool.toZMod bit * (rho 2677 - seg5AccX1 rho) := by
        rw [← hbit]
        unfold seg5AccX1
        linear_combination -r2984
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY2 rho = seg5AccY1 rho - Bool.toZMod bit * (seg5AccY1 rho - rho 2678) := by
      have hd : rho 2680 = Bool.toZMod bit * (rho 2678 - seg5AccY1 rho) := by
        rw [← hbit]
        unfold seg5AccY1
        linear_combination -r2985
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2671 * rho 2672 = rho 2681 := by linear_combination r2986
    have hd1 : rho 2671 * rho 2671 = rho 2682 := by linear_combination r2987
    have hd2 : rho 2672 * rho 2672 = rho 2683 := by linear_combination r2988
    have hd3 : rho 2684 * (rho 2672 * rho 2672 + rho 2671 * rho 2671 * (-1)) = 2 * (rho 2671 * rho 2672) := by
      rw [hd0, hd1, hd2]
      linear_combination r2989
    have hd4 : rho 2685 * (2 - (rho 2672 * rho 2672 + rho 2671 * rho 2671 * (-1))) = rho 2672 * rho 2672 - rho 2671 * rho 2671 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2990
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX1 rho : Seg5.F), (seg5AccY1 rho : Seg5.F)⟩
      ⟨(rho 2671 : Seg5.F), (rho 2672 : Seg5.F)⟩
      ⟨(rho 2677 : Seg5.F), (rho 2678 : Seg5.F)⟩
      ⟨(seg5AccX2 rho : Seg5.F), (seg5AccY2 rho : Seg5.F)⟩
      ⟨(rho 2684 : Seg5.F), (rho 2685 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung1

theorem seg5_rows2 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow2991 rho ∧ Seg5.relationRow2992 rho ∧ Seg5.relationRow2993 rho ∧ Seg5.relationRow2994 rho ∧ Seg5.relationRow2995 rho ∧ Seg5.relationRow2996 rho ∧ Seg5.relationRow2997 rho ∧ Seg5.relationRow2998 rho ∧ Seg5.relationRow2999 rho ∧ Seg5.relationRow3000 rho ∧ Seg5.relationRow3001 rho ∧ Seg5.relationRow3002 rho ∧ Seg5.relationRow3003 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2991, r2992, r2993, r2994, r2995, r2996, r2997, r2998, r2999, r3000, r3001, r3002, r3003, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2991, r2992, r2993, r2994, r2995, r2996, r2997, r2998, r2999, r3000, r3001, r3002, r3003⟩

theorem seg5_rung2 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2417 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX2 rho : Seg5.F), (seg5AccY2 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2684 : Seg5.F), (rho 2685 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX2 rho : Seg5.F), (seg5AccY2 rho : Seg5.F)⟩
        ⟨(rho 2684 : Seg5.F), (rho 2685 : Seg5.F)⟩
        ⟨(seg5AccX3 rho : Seg5.F), (seg5AccY3 rho : Seg5.F)⟩
        ⟨(rho 2697 : Seg5.F), (rho 2698 : Seg5.F)⟩ := by
  obtain ⟨r2991, r2992, r2993, r2994, r2995, r2996, r2997, r2998, r2999, r3000, r3001, r3002, r3003⟩ := seg5_rows2 rho h
  unfold Seg5.relationRow2991 at r2991
  unfold Seg5.relationRow2992 at r2992
  unfold Seg5.relationRow2993 at r2993
  unfold Seg5.relationRow2994 at r2994
  unfold Seg5.relationRow2995 at r2995
  unfold Seg5.relationRow2996 at r2996
  unfold Seg5.relationRow2997 at r2997
  unfold Seg5.relationRow2998 at r2998
  unfold Seg5.relationRow2999 at r2999
  unfold Seg5.relationRow3000 at r3000
  unfold Seg5.relationRow3001 at r3001
  unfold Seg5.relationRow3002 at r3002
  unfold Seg5.relationRow3003 at r3003
  have hrung2 (bit : Bool) (hbit : rho 2417 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX2 rho : Seg5.F), (seg5AccY2 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2684 : Seg5.F), (rho 2685 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX2 rho : Seg5.F), (seg5AccY2 rho : Seg5.F)⟩
        ⟨(rho 2684 : Seg5.F), (rho 2685 : Seg5.F)⟩
        ⟨(seg5AccX3 rho : Seg5.F), (seg5AccY3 rho : Seg5.F)⟩
        ⟨(rho 2697 : Seg5.F), (rho 2698 : Seg5.F)⟩ := by
    have hnextx : seg5AccX3 rho = seg5AccX2 rho + rho 2692 := by
      unfold seg5AccX3 seg5AccX2
      ring
    have hnexty : seg5AccY3 rho = seg5AccY2 rho + rho 2693 := by
      unfold seg5AccY3 seg5AccY2
      ring
    have ha0 : (rho 2684 + rho 2685) * (seg5AccX2 rho + seg5AccY2 rho) = rho 2686 := by
      unfold seg5AccX2 seg5AccY2
      linear_combination r2991
    have ha1 : rho 2685 * seg5AccX2 rho = rho 2687 := by
      unfold seg5AccX2
      linear_combination r2992
    have ha2 : rho 2684 * seg5AccY2 rho = rho 2688 := by
      unfold seg5AccY2
      linear_combination r2993
    have ha3 : 3021 * rho 2687 * rho 2688 = rho 2689 := by
      linear_combination r2994
    have ha4 : rho 2690 * (1 + rho 2689) = rho 2687 + rho 2688 := by
      linear_combination r2995
    have ha5 : rho 2691 * (1 - rho 2689) = rho 2686 - rho 2687 - rho 2688 := by
      linear_combination r2996
    have haddx :
        rho 2690 * (1 + 3021 * (rho 2685 * seg5AccX2 rho) * (rho 2684 * seg5AccY2 rho)) =
          rho 2685 * seg5AccX2 rho + rho 2684 * seg5AccY2 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2691 * (1 - 3021 * (rho 2685 * seg5AccX2 rho) * (rho 2684 * seg5AccY2 rho)) =
          (-1) * (rho 2685 * seg5AccX2 rho) - rho 2684 * seg5AccY2 rho +
            (seg5AccY2 rho - seg5AccX2 rho * (-1)) * (rho 2684 + rho 2685) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2691 * (1 - rho 2689) = rho 2686 - rho 2687 - rho 2688 := ha5
        _ = (-1) * rho 2687 - rho 2688 + (seg5AccY2 rho - seg5AccX2 rho * (-1)) * (rho 2684 + rho 2685) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX3 rho = seg5AccX2 rho - Bool.toZMod bit * (seg5AccX2 rho - rho 2690) := by
      have hd : rho 2692 = Bool.toZMod bit * (rho 2690 - seg5AccX2 rho) := by
        rw [← hbit]
        unfold seg5AccX2
        linear_combination -r2997
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY3 rho = seg5AccY2 rho - Bool.toZMod bit * (seg5AccY2 rho - rho 2691) := by
      have hd : rho 2693 = Bool.toZMod bit * (rho 2691 - seg5AccY2 rho) := by
        rw [← hbit]
        unfold seg5AccY2
        linear_combination -r2998
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2684 * rho 2685 = rho 2694 := by linear_combination r2999
    have hd1 : rho 2684 * rho 2684 = rho 2695 := by linear_combination r3000
    have hd2 : rho 2685 * rho 2685 = rho 2696 := by linear_combination r3001
    have hd3 : rho 2697 * (rho 2685 * rho 2685 + rho 2684 * rho 2684 * (-1)) = 2 * (rho 2684 * rho 2685) := by
      rw [hd0, hd1, hd2]
      linear_combination r3002
    have hd4 : rho 2698 * (2 - (rho 2685 * rho 2685 + rho 2684 * rho 2684 * (-1))) = rho 2685 * rho 2685 - rho 2684 * rho 2684 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3003
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX2 rho : Seg5.F), (seg5AccY2 rho : Seg5.F)⟩
      ⟨(rho 2684 : Seg5.F), (rho 2685 : Seg5.F)⟩
      ⟨(rho 2690 : Seg5.F), (rho 2691 : Seg5.F)⟩
      ⟨(seg5AccX3 rho : Seg5.F), (seg5AccY3 rho : Seg5.F)⟩
      ⟨(rho 2697 : Seg5.F), (rho 2698 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung2

theorem seg5_rows3 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3004 rho ∧ Seg5.relationRow3005 rho ∧ Seg5.relationRow3006 rho ∧ Seg5.relationRow3007 rho ∧ Seg5.relationRow3008 rho ∧ Seg5.relationRow3009 rho ∧ Seg5.relationRow3010 rho ∧ Seg5.relationRow3011 rho ∧ Seg5.relationRow3012 rho ∧ Seg5.relationRow3013 rho ∧ Seg5.relationRow3014 rho ∧ Seg5.relationRow3015 rho ∧ Seg5.relationRow3016 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3004, r3005, r3006, r3007, r3008, r3009, r3010, r3011, r3012, r3013, r3014, r3015, r3016, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3004, r3005, r3006, r3007, r3008, r3009, r3010, r3011, r3012, r3013, r3014, r3015, r3016⟩

theorem seg5_rung3 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2418 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX3 rho : Seg5.F), (seg5AccY3 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2697 : Seg5.F), (rho 2698 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX3 rho : Seg5.F), (seg5AccY3 rho : Seg5.F)⟩
        ⟨(rho 2697 : Seg5.F), (rho 2698 : Seg5.F)⟩
        ⟨(seg5AccX4 rho : Seg5.F), (seg5AccY4 rho : Seg5.F)⟩
        ⟨(rho 2710 : Seg5.F), (rho 2711 : Seg5.F)⟩ := by
  obtain ⟨r3004, r3005, r3006, r3007, r3008, r3009, r3010, r3011, r3012, r3013, r3014, r3015, r3016⟩ := seg5_rows3 rho h
  unfold Seg5.relationRow3004 at r3004
  unfold Seg5.relationRow3005 at r3005
  unfold Seg5.relationRow3006 at r3006
  unfold Seg5.relationRow3007 at r3007
  unfold Seg5.relationRow3008 at r3008
  unfold Seg5.relationRow3009 at r3009
  unfold Seg5.relationRow3010 at r3010
  unfold Seg5.relationRow3011 at r3011
  unfold Seg5.relationRow3012 at r3012
  unfold Seg5.relationRow3013 at r3013
  unfold Seg5.relationRow3014 at r3014
  unfold Seg5.relationRow3015 at r3015
  unfold Seg5.relationRow3016 at r3016
  have hrung3 (bit : Bool) (hbit : rho 2418 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX3 rho : Seg5.F), (seg5AccY3 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2697 : Seg5.F), (rho 2698 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX3 rho : Seg5.F), (seg5AccY3 rho : Seg5.F)⟩
        ⟨(rho 2697 : Seg5.F), (rho 2698 : Seg5.F)⟩
        ⟨(seg5AccX4 rho : Seg5.F), (seg5AccY4 rho : Seg5.F)⟩
        ⟨(rho 2710 : Seg5.F), (rho 2711 : Seg5.F)⟩ := by
    have hnextx : seg5AccX4 rho = seg5AccX3 rho + rho 2705 := by
      unfold seg5AccX4 seg5AccX3
      ring
    have hnexty : seg5AccY4 rho = seg5AccY3 rho + rho 2706 := by
      unfold seg5AccY4 seg5AccY3
      ring
    have ha0 : (rho 2697 + rho 2698) * (seg5AccX3 rho + seg5AccY3 rho) = rho 2699 := by
      unfold seg5AccX3 seg5AccY3
      linear_combination r3004
    have ha1 : rho 2698 * seg5AccX3 rho = rho 2700 := by
      unfold seg5AccX3
      linear_combination r3005
    have ha2 : rho 2697 * seg5AccY3 rho = rho 2701 := by
      unfold seg5AccY3
      linear_combination r3006
    have ha3 : 3021 * rho 2700 * rho 2701 = rho 2702 := by
      linear_combination r3007
    have ha4 : rho 2703 * (1 + rho 2702) = rho 2700 + rho 2701 := by
      linear_combination r3008
    have ha5 : rho 2704 * (1 - rho 2702) = rho 2699 - rho 2700 - rho 2701 := by
      linear_combination r3009
    have haddx :
        rho 2703 * (1 + 3021 * (rho 2698 * seg5AccX3 rho) * (rho 2697 * seg5AccY3 rho)) =
          rho 2698 * seg5AccX3 rho + rho 2697 * seg5AccY3 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2704 * (1 - 3021 * (rho 2698 * seg5AccX3 rho) * (rho 2697 * seg5AccY3 rho)) =
          (-1) * (rho 2698 * seg5AccX3 rho) - rho 2697 * seg5AccY3 rho +
            (seg5AccY3 rho - seg5AccX3 rho * (-1)) * (rho 2697 + rho 2698) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2704 * (1 - rho 2702) = rho 2699 - rho 2700 - rho 2701 := ha5
        _ = (-1) * rho 2700 - rho 2701 + (seg5AccY3 rho - seg5AccX3 rho * (-1)) * (rho 2697 + rho 2698) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX4 rho = seg5AccX3 rho - Bool.toZMod bit * (seg5AccX3 rho - rho 2703) := by
      have hd : rho 2705 = Bool.toZMod bit * (rho 2703 - seg5AccX3 rho) := by
        rw [← hbit]
        unfold seg5AccX3
        linear_combination -r3010
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY4 rho = seg5AccY3 rho - Bool.toZMod bit * (seg5AccY3 rho - rho 2704) := by
      have hd : rho 2706 = Bool.toZMod bit * (rho 2704 - seg5AccY3 rho) := by
        rw [← hbit]
        unfold seg5AccY3
        linear_combination -r3011
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2697 * rho 2698 = rho 2707 := by linear_combination r3012
    have hd1 : rho 2697 * rho 2697 = rho 2708 := by linear_combination r3013
    have hd2 : rho 2698 * rho 2698 = rho 2709 := by linear_combination r3014
    have hd3 : rho 2710 * (rho 2698 * rho 2698 + rho 2697 * rho 2697 * (-1)) = 2 * (rho 2697 * rho 2698) := by
      rw [hd0, hd1, hd2]
      linear_combination r3015
    have hd4 : rho 2711 * (2 - (rho 2698 * rho 2698 + rho 2697 * rho 2697 * (-1))) = rho 2698 * rho 2698 - rho 2697 * rho 2697 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3016
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX3 rho : Seg5.F), (seg5AccY3 rho : Seg5.F)⟩
      ⟨(rho 2697 : Seg5.F), (rho 2698 : Seg5.F)⟩
      ⟨(rho 2703 : Seg5.F), (rho 2704 : Seg5.F)⟩
      ⟨(seg5AccX4 rho : Seg5.F), (seg5AccY4 rho : Seg5.F)⟩
      ⟨(rho 2710 : Seg5.F), (rho 2711 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung3

theorem seg5_rows4 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3017 rho ∧ Seg5.relationRow3018 rho ∧ Seg5.relationRow3019 rho ∧ Seg5.relationRow3020 rho ∧ Seg5.relationRow3021 rho ∧ Seg5.relationRow3022 rho ∧ Seg5.relationRow3023 rho ∧ Seg5.relationRow3024 rho ∧ Seg5.relationRow3025 rho ∧ Seg5.relationRow3026 rho ∧ Seg5.relationRow3027 rho ∧ Seg5.relationRow3028 rho ∧ Seg5.relationRow3029 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3017, r3018, r3019, r3020, r3021, r3022, r3023, r3024, r3025, r3026, r3027, r3028, r3029, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3017, r3018, r3019, r3020, r3021, r3022, r3023, r3024, r3025, r3026, r3027, r3028, r3029⟩

theorem seg5_rung4 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2419 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX4 rho : Seg5.F), (seg5AccY4 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2710 : Seg5.F), (rho 2711 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX4 rho : Seg5.F), (seg5AccY4 rho : Seg5.F)⟩
        ⟨(rho 2710 : Seg5.F), (rho 2711 : Seg5.F)⟩
        ⟨(seg5AccX5 rho : Seg5.F), (seg5AccY5 rho : Seg5.F)⟩
        ⟨(rho 2723 : Seg5.F), (rho 2724 : Seg5.F)⟩ := by
  obtain ⟨r3017, r3018, r3019, r3020, r3021, r3022, r3023, r3024, r3025, r3026, r3027, r3028, r3029⟩ := seg5_rows4 rho h
  unfold Seg5.relationRow3017 at r3017
  unfold Seg5.relationRow3018 at r3018
  unfold Seg5.relationRow3019 at r3019
  unfold Seg5.relationRow3020 at r3020
  unfold Seg5.relationRow3021 at r3021
  unfold Seg5.relationRow3022 at r3022
  unfold Seg5.relationRow3023 at r3023
  unfold Seg5.relationRow3024 at r3024
  unfold Seg5.relationRow3025 at r3025
  unfold Seg5.relationRow3026 at r3026
  unfold Seg5.relationRow3027 at r3027
  unfold Seg5.relationRow3028 at r3028
  unfold Seg5.relationRow3029 at r3029
  have hrung4 (bit : Bool) (hbit : rho 2419 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX4 rho : Seg5.F), (seg5AccY4 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2710 : Seg5.F), (rho 2711 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX4 rho : Seg5.F), (seg5AccY4 rho : Seg5.F)⟩
        ⟨(rho 2710 : Seg5.F), (rho 2711 : Seg5.F)⟩
        ⟨(seg5AccX5 rho : Seg5.F), (seg5AccY5 rho : Seg5.F)⟩
        ⟨(rho 2723 : Seg5.F), (rho 2724 : Seg5.F)⟩ := by
    have hnextx : seg5AccX5 rho = seg5AccX4 rho + rho 2718 := by
      unfold seg5AccX5 seg5AccX4
      ring
    have hnexty : seg5AccY5 rho = seg5AccY4 rho + rho 2719 := by
      unfold seg5AccY5 seg5AccY4
      ring
    have ha0 : (rho 2710 + rho 2711) * (seg5AccX4 rho + seg5AccY4 rho) = rho 2712 := by
      unfold seg5AccX4 seg5AccY4
      linear_combination r3017
    have ha1 : rho 2711 * seg5AccX4 rho = rho 2713 := by
      unfold seg5AccX4
      linear_combination r3018
    have ha2 : rho 2710 * seg5AccY4 rho = rho 2714 := by
      unfold seg5AccY4
      linear_combination r3019
    have ha3 : 3021 * rho 2713 * rho 2714 = rho 2715 := by
      linear_combination r3020
    have ha4 : rho 2716 * (1 + rho 2715) = rho 2713 + rho 2714 := by
      linear_combination r3021
    have ha5 : rho 2717 * (1 - rho 2715) = rho 2712 - rho 2713 - rho 2714 := by
      linear_combination r3022
    have haddx :
        rho 2716 * (1 + 3021 * (rho 2711 * seg5AccX4 rho) * (rho 2710 * seg5AccY4 rho)) =
          rho 2711 * seg5AccX4 rho + rho 2710 * seg5AccY4 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2717 * (1 - 3021 * (rho 2711 * seg5AccX4 rho) * (rho 2710 * seg5AccY4 rho)) =
          (-1) * (rho 2711 * seg5AccX4 rho) - rho 2710 * seg5AccY4 rho +
            (seg5AccY4 rho - seg5AccX4 rho * (-1)) * (rho 2710 + rho 2711) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2717 * (1 - rho 2715) = rho 2712 - rho 2713 - rho 2714 := ha5
        _ = (-1) * rho 2713 - rho 2714 + (seg5AccY4 rho - seg5AccX4 rho * (-1)) * (rho 2710 + rho 2711) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX5 rho = seg5AccX4 rho - Bool.toZMod bit * (seg5AccX4 rho - rho 2716) := by
      have hd : rho 2718 = Bool.toZMod bit * (rho 2716 - seg5AccX4 rho) := by
        rw [← hbit]
        unfold seg5AccX4
        linear_combination -r3023
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY5 rho = seg5AccY4 rho - Bool.toZMod bit * (seg5AccY4 rho - rho 2717) := by
      have hd : rho 2719 = Bool.toZMod bit * (rho 2717 - seg5AccY4 rho) := by
        rw [← hbit]
        unfold seg5AccY4
        linear_combination -r3024
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2710 * rho 2711 = rho 2720 := by linear_combination r3025
    have hd1 : rho 2710 * rho 2710 = rho 2721 := by linear_combination r3026
    have hd2 : rho 2711 * rho 2711 = rho 2722 := by linear_combination r3027
    have hd3 : rho 2723 * (rho 2711 * rho 2711 + rho 2710 * rho 2710 * (-1)) = 2 * (rho 2710 * rho 2711) := by
      rw [hd0, hd1, hd2]
      linear_combination r3028
    have hd4 : rho 2724 * (2 - (rho 2711 * rho 2711 + rho 2710 * rho 2710 * (-1))) = rho 2711 * rho 2711 - rho 2710 * rho 2710 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3029
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX4 rho : Seg5.F), (seg5AccY4 rho : Seg5.F)⟩
      ⟨(rho 2710 : Seg5.F), (rho 2711 : Seg5.F)⟩
      ⟨(rho 2716 : Seg5.F), (rho 2717 : Seg5.F)⟩
      ⟨(seg5AccX5 rho : Seg5.F), (seg5AccY5 rho : Seg5.F)⟩
      ⟨(rho 2723 : Seg5.F), (rho 2724 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung4

theorem seg5_rows5 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3030 rho ∧ Seg5.relationRow3031 rho ∧ Seg5.relationRow3032 rho ∧ Seg5.relationRow3033 rho ∧ Seg5.relationRow3034 rho ∧ Seg5.relationRow3035 rho ∧ Seg5.relationRow3036 rho ∧ Seg5.relationRow3037 rho ∧ Seg5.relationRow3038 rho ∧ Seg5.relationRow3039 rho ∧ Seg5.relationRow3040 rho ∧ Seg5.relationRow3041 rho ∧ Seg5.relationRow3042 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3030, r3031, r3032, r3033, r3034, r3035, r3036, r3037, r3038, r3039⟩
  unfold Seg5.relationPart38 at p38
  rcases p38 with ⟨r3040, r3041, r3042, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3030, r3031, r3032, r3033, r3034, r3035, r3036, r3037, r3038, r3039, r3040, r3041, r3042⟩

theorem seg5_rung5 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2420 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX5 rho : Seg5.F), (seg5AccY5 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2723 : Seg5.F), (rho 2724 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX5 rho : Seg5.F), (seg5AccY5 rho : Seg5.F)⟩
        ⟨(rho 2723 : Seg5.F), (rho 2724 : Seg5.F)⟩
        ⟨(seg5AccX6 rho : Seg5.F), (seg5AccY6 rho : Seg5.F)⟩
        ⟨(rho 2736 : Seg5.F), (rho 2737 : Seg5.F)⟩ := by
  obtain ⟨r3030, r3031, r3032, r3033, r3034, r3035, r3036, r3037, r3038, r3039, r3040, r3041, r3042⟩ := seg5_rows5 rho h
  unfold Seg5.relationRow3030 at r3030
  unfold Seg5.relationRow3031 at r3031
  unfold Seg5.relationRow3032 at r3032
  unfold Seg5.relationRow3033 at r3033
  unfold Seg5.relationRow3034 at r3034
  unfold Seg5.relationRow3035 at r3035
  unfold Seg5.relationRow3036 at r3036
  unfold Seg5.relationRow3037 at r3037
  unfold Seg5.relationRow3038 at r3038
  unfold Seg5.relationRow3039 at r3039
  unfold Seg5.relationRow3040 at r3040
  unfold Seg5.relationRow3041 at r3041
  unfold Seg5.relationRow3042 at r3042
  have hrung5 (bit : Bool) (hbit : rho 2420 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX5 rho : Seg5.F), (seg5AccY5 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2723 : Seg5.F), (rho 2724 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX5 rho : Seg5.F), (seg5AccY5 rho : Seg5.F)⟩
        ⟨(rho 2723 : Seg5.F), (rho 2724 : Seg5.F)⟩
        ⟨(seg5AccX6 rho : Seg5.F), (seg5AccY6 rho : Seg5.F)⟩
        ⟨(rho 2736 : Seg5.F), (rho 2737 : Seg5.F)⟩ := by
    have hnextx : seg5AccX6 rho = seg5AccX5 rho + rho 2731 := by
      unfold seg5AccX6 seg5AccX5
      ring
    have hnexty : seg5AccY6 rho = seg5AccY5 rho + rho 2732 := by
      unfold seg5AccY6 seg5AccY5
      ring
    have ha0 : (rho 2723 + rho 2724) * (seg5AccX5 rho + seg5AccY5 rho) = rho 2725 := by
      unfold seg5AccX5 seg5AccY5
      linear_combination r3030
    have ha1 : rho 2724 * seg5AccX5 rho = rho 2726 := by
      unfold seg5AccX5
      linear_combination r3031
    have ha2 : rho 2723 * seg5AccY5 rho = rho 2727 := by
      unfold seg5AccY5
      linear_combination r3032
    have ha3 : 3021 * rho 2726 * rho 2727 = rho 2728 := by
      linear_combination r3033
    have ha4 : rho 2729 * (1 + rho 2728) = rho 2726 + rho 2727 := by
      linear_combination r3034
    have ha5 : rho 2730 * (1 - rho 2728) = rho 2725 - rho 2726 - rho 2727 := by
      linear_combination r3035
    have haddx :
        rho 2729 * (1 + 3021 * (rho 2724 * seg5AccX5 rho) * (rho 2723 * seg5AccY5 rho)) =
          rho 2724 * seg5AccX5 rho + rho 2723 * seg5AccY5 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2730 * (1 - 3021 * (rho 2724 * seg5AccX5 rho) * (rho 2723 * seg5AccY5 rho)) =
          (-1) * (rho 2724 * seg5AccX5 rho) - rho 2723 * seg5AccY5 rho +
            (seg5AccY5 rho - seg5AccX5 rho * (-1)) * (rho 2723 + rho 2724) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2730 * (1 - rho 2728) = rho 2725 - rho 2726 - rho 2727 := ha5
        _ = (-1) * rho 2726 - rho 2727 + (seg5AccY5 rho - seg5AccX5 rho * (-1)) * (rho 2723 + rho 2724) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX6 rho = seg5AccX5 rho - Bool.toZMod bit * (seg5AccX5 rho - rho 2729) := by
      have hd : rho 2731 = Bool.toZMod bit * (rho 2729 - seg5AccX5 rho) := by
        rw [← hbit]
        unfold seg5AccX5
        linear_combination -r3036
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY6 rho = seg5AccY5 rho - Bool.toZMod bit * (seg5AccY5 rho - rho 2730) := by
      have hd : rho 2732 = Bool.toZMod bit * (rho 2730 - seg5AccY5 rho) := by
        rw [← hbit]
        unfold seg5AccY5
        linear_combination -r3037
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2723 * rho 2724 = rho 2733 := by linear_combination r3038
    have hd1 : rho 2723 * rho 2723 = rho 2734 := by linear_combination r3039
    have hd2 : rho 2724 * rho 2724 = rho 2735 := by linear_combination r3040
    have hd3 : rho 2736 * (rho 2724 * rho 2724 + rho 2723 * rho 2723 * (-1)) = 2 * (rho 2723 * rho 2724) := by
      rw [hd0, hd1, hd2]
      linear_combination r3041
    have hd4 : rho 2737 * (2 - (rho 2724 * rho 2724 + rho 2723 * rho 2723 * (-1))) = rho 2724 * rho 2724 - rho 2723 * rho 2723 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3042
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX5 rho : Seg5.F), (seg5AccY5 rho : Seg5.F)⟩
      ⟨(rho 2723 : Seg5.F), (rho 2724 : Seg5.F)⟩
      ⟨(rho 2729 : Seg5.F), (rho 2730 : Seg5.F)⟩
      ⟨(seg5AccX6 rho : Seg5.F), (seg5AccY6 rho : Seg5.F)⟩
      ⟨(rho 2736 : Seg5.F), (rho 2737 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung5

theorem seg5_rows6 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3043 rho ∧ Seg5.relationRow3044 rho ∧ Seg5.relationRow3045 rho ∧ Seg5.relationRow3046 rho ∧ Seg5.relationRow3047 rho ∧ Seg5.relationRow3048 rho ∧ Seg5.relationRow3049 rho ∧ Seg5.relationRow3050 rho ∧ Seg5.relationRow3051 rho ∧ Seg5.relationRow3052 rho ∧ Seg5.relationRow3053 rho ∧ Seg5.relationRow3054 rho ∧ Seg5.relationRow3055 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart38 at p38
  rcases p38 with ⟨_, _, _, r3043, r3044, r3045, r3046, r3047, r3048, r3049, r3050, r3051, r3052, r3053, r3054, r3055, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3043, r3044, r3045, r3046, r3047, r3048, r3049, r3050, r3051, r3052, r3053, r3054, r3055⟩

theorem seg5_rung6 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2421 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX6 rho : Seg5.F), (seg5AccY6 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2736 : Seg5.F), (rho 2737 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX6 rho : Seg5.F), (seg5AccY6 rho : Seg5.F)⟩
        ⟨(rho 2736 : Seg5.F), (rho 2737 : Seg5.F)⟩
        ⟨(seg5AccX7 rho : Seg5.F), (seg5AccY7 rho : Seg5.F)⟩
        ⟨(rho 2749 : Seg5.F), (rho 2750 : Seg5.F)⟩ := by
  obtain ⟨r3043, r3044, r3045, r3046, r3047, r3048, r3049, r3050, r3051, r3052, r3053, r3054, r3055⟩ := seg5_rows6 rho h
  unfold Seg5.relationRow3043 at r3043
  unfold Seg5.relationRow3044 at r3044
  unfold Seg5.relationRow3045 at r3045
  unfold Seg5.relationRow3046 at r3046
  unfold Seg5.relationRow3047 at r3047
  unfold Seg5.relationRow3048 at r3048
  unfold Seg5.relationRow3049 at r3049
  unfold Seg5.relationRow3050 at r3050
  unfold Seg5.relationRow3051 at r3051
  unfold Seg5.relationRow3052 at r3052
  unfold Seg5.relationRow3053 at r3053
  unfold Seg5.relationRow3054 at r3054
  unfold Seg5.relationRow3055 at r3055
  have hrung6 (bit : Bool) (hbit : rho 2421 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX6 rho : Seg5.F), (seg5AccY6 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2736 : Seg5.F), (rho 2737 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX6 rho : Seg5.F), (seg5AccY6 rho : Seg5.F)⟩
        ⟨(rho 2736 : Seg5.F), (rho 2737 : Seg5.F)⟩
        ⟨(seg5AccX7 rho : Seg5.F), (seg5AccY7 rho : Seg5.F)⟩
        ⟨(rho 2749 : Seg5.F), (rho 2750 : Seg5.F)⟩ := by
    have hnextx : seg5AccX7 rho = seg5AccX6 rho + rho 2744 := by
      unfold seg5AccX7 seg5AccX6
      ring
    have hnexty : seg5AccY7 rho = seg5AccY6 rho + rho 2745 := by
      unfold seg5AccY7 seg5AccY6
      ring
    have ha0 : (rho 2736 + rho 2737) * (seg5AccX6 rho + seg5AccY6 rho) = rho 2738 := by
      unfold seg5AccX6 seg5AccY6
      linear_combination r3043
    have ha1 : rho 2737 * seg5AccX6 rho = rho 2739 := by
      unfold seg5AccX6
      linear_combination r3044
    have ha2 : rho 2736 * seg5AccY6 rho = rho 2740 := by
      unfold seg5AccY6
      linear_combination r3045
    have ha3 : 3021 * rho 2739 * rho 2740 = rho 2741 := by
      linear_combination r3046
    have ha4 : rho 2742 * (1 + rho 2741) = rho 2739 + rho 2740 := by
      linear_combination r3047
    have ha5 : rho 2743 * (1 - rho 2741) = rho 2738 - rho 2739 - rho 2740 := by
      linear_combination r3048
    have haddx :
        rho 2742 * (1 + 3021 * (rho 2737 * seg5AccX6 rho) * (rho 2736 * seg5AccY6 rho)) =
          rho 2737 * seg5AccX6 rho + rho 2736 * seg5AccY6 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2743 * (1 - 3021 * (rho 2737 * seg5AccX6 rho) * (rho 2736 * seg5AccY6 rho)) =
          (-1) * (rho 2737 * seg5AccX6 rho) - rho 2736 * seg5AccY6 rho +
            (seg5AccY6 rho - seg5AccX6 rho * (-1)) * (rho 2736 + rho 2737) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2743 * (1 - rho 2741) = rho 2738 - rho 2739 - rho 2740 := ha5
        _ = (-1) * rho 2739 - rho 2740 + (seg5AccY6 rho - seg5AccX6 rho * (-1)) * (rho 2736 + rho 2737) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX7 rho = seg5AccX6 rho - Bool.toZMod bit * (seg5AccX6 rho - rho 2742) := by
      have hd : rho 2744 = Bool.toZMod bit * (rho 2742 - seg5AccX6 rho) := by
        rw [← hbit]
        unfold seg5AccX6
        linear_combination -r3049
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY7 rho = seg5AccY6 rho - Bool.toZMod bit * (seg5AccY6 rho - rho 2743) := by
      have hd : rho 2745 = Bool.toZMod bit * (rho 2743 - seg5AccY6 rho) := by
        rw [← hbit]
        unfold seg5AccY6
        linear_combination -r3050
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2736 * rho 2737 = rho 2746 := by linear_combination r3051
    have hd1 : rho 2736 * rho 2736 = rho 2747 := by linear_combination r3052
    have hd2 : rho 2737 * rho 2737 = rho 2748 := by linear_combination r3053
    have hd3 : rho 2749 * (rho 2737 * rho 2737 + rho 2736 * rho 2736 * (-1)) = 2 * (rho 2736 * rho 2737) := by
      rw [hd0, hd1, hd2]
      linear_combination r3054
    have hd4 : rho 2750 * (2 - (rho 2737 * rho 2737 + rho 2736 * rho 2736 * (-1))) = rho 2737 * rho 2737 - rho 2736 * rho 2736 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3055
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX6 rho : Seg5.F), (seg5AccY6 rho : Seg5.F)⟩
      ⟨(rho 2736 : Seg5.F), (rho 2737 : Seg5.F)⟩
      ⟨(rho 2742 : Seg5.F), (rho 2743 : Seg5.F)⟩
      ⟨(seg5AccX7 rho : Seg5.F), (seg5AccY7 rho : Seg5.F)⟩
      ⟨(rho 2749 : Seg5.F), (rho 2750 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung6

theorem seg5_rows7 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3056 rho ∧ Seg5.relationRow3057 rho ∧ Seg5.relationRow3058 rho ∧ Seg5.relationRow3059 rho ∧ Seg5.relationRow3060 rho ∧ Seg5.relationRow3061 rho ∧ Seg5.relationRow3062 rho ∧ Seg5.relationRow3063 rho ∧ Seg5.relationRow3064 rho ∧ Seg5.relationRow3065 rho ∧ Seg5.relationRow3066 rho ∧ Seg5.relationRow3067 rho ∧ Seg5.relationRow3068 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3056, r3057, r3058, r3059, r3060, r3061, r3062, r3063, r3064, r3065, r3066, r3067, r3068, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3056, r3057, r3058, r3059, r3060, r3061, r3062, r3063, r3064, r3065, r3066, r3067, r3068⟩

theorem seg5_rung7 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2422 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX7 rho : Seg5.F), (seg5AccY7 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2749 : Seg5.F), (rho 2750 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX7 rho : Seg5.F), (seg5AccY7 rho : Seg5.F)⟩
        ⟨(rho 2749 : Seg5.F), (rho 2750 : Seg5.F)⟩
        ⟨(seg5AccX8 rho : Seg5.F), (seg5AccY8 rho : Seg5.F)⟩
        ⟨(rho 2762 : Seg5.F), (rho 2763 : Seg5.F)⟩ := by
  obtain ⟨r3056, r3057, r3058, r3059, r3060, r3061, r3062, r3063, r3064, r3065, r3066, r3067, r3068⟩ := seg5_rows7 rho h
  unfold Seg5.relationRow3056 at r3056
  unfold Seg5.relationRow3057 at r3057
  unfold Seg5.relationRow3058 at r3058
  unfold Seg5.relationRow3059 at r3059
  unfold Seg5.relationRow3060 at r3060
  unfold Seg5.relationRow3061 at r3061
  unfold Seg5.relationRow3062 at r3062
  unfold Seg5.relationRow3063 at r3063
  unfold Seg5.relationRow3064 at r3064
  unfold Seg5.relationRow3065 at r3065
  unfold Seg5.relationRow3066 at r3066
  unfold Seg5.relationRow3067 at r3067
  unfold Seg5.relationRow3068 at r3068
  have hrung7 (bit : Bool) (hbit : rho 2422 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX7 rho : Seg5.F), (seg5AccY7 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2749 : Seg5.F), (rho 2750 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX7 rho : Seg5.F), (seg5AccY7 rho : Seg5.F)⟩
        ⟨(rho 2749 : Seg5.F), (rho 2750 : Seg5.F)⟩
        ⟨(seg5AccX8 rho : Seg5.F), (seg5AccY8 rho : Seg5.F)⟩
        ⟨(rho 2762 : Seg5.F), (rho 2763 : Seg5.F)⟩ := by
    have hnextx : seg5AccX8 rho = seg5AccX7 rho + rho 2757 := by
      unfold seg5AccX8 seg5AccX7
      ring
    have hnexty : seg5AccY8 rho = seg5AccY7 rho + rho 2758 := by
      unfold seg5AccY8 seg5AccY7
      ring
    have ha0 : (rho 2749 + rho 2750) * (seg5AccX7 rho + seg5AccY7 rho) = rho 2751 := by
      unfold seg5AccX7 seg5AccY7
      linear_combination r3056
    have ha1 : rho 2750 * seg5AccX7 rho = rho 2752 := by
      unfold seg5AccX7
      linear_combination r3057
    have ha2 : rho 2749 * seg5AccY7 rho = rho 2753 := by
      unfold seg5AccY7
      linear_combination r3058
    have ha3 : 3021 * rho 2752 * rho 2753 = rho 2754 := by
      linear_combination r3059
    have ha4 : rho 2755 * (1 + rho 2754) = rho 2752 + rho 2753 := by
      linear_combination r3060
    have ha5 : rho 2756 * (1 - rho 2754) = rho 2751 - rho 2752 - rho 2753 := by
      linear_combination r3061
    have haddx :
        rho 2755 * (1 + 3021 * (rho 2750 * seg5AccX7 rho) * (rho 2749 * seg5AccY7 rho)) =
          rho 2750 * seg5AccX7 rho + rho 2749 * seg5AccY7 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2756 * (1 - 3021 * (rho 2750 * seg5AccX7 rho) * (rho 2749 * seg5AccY7 rho)) =
          (-1) * (rho 2750 * seg5AccX7 rho) - rho 2749 * seg5AccY7 rho +
            (seg5AccY7 rho - seg5AccX7 rho * (-1)) * (rho 2749 + rho 2750) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2756 * (1 - rho 2754) = rho 2751 - rho 2752 - rho 2753 := ha5
        _ = (-1) * rho 2752 - rho 2753 + (seg5AccY7 rho - seg5AccX7 rho * (-1)) * (rho 2749 + rho 2750) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX8 rho = seg5AccX7 rho - Bool.toZMod bit * (seg5AccX7 rho - rho 2755) := by
      have hd : rho 2757 = Bool.toZMod bit * (rho 2755 - seg5AccX7 rho) := by
        rw [← hbit]
        unfold seg5AccX7
        linear_combination -r3062
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY8 rho = seg5AccY7 rho - Bool.toZMod bit * (seg5AccY7 rho - rho 2756) := by
      have hd : rho 2758 = Bool.toZMod bit * (rho 2756 - seg5AccY7 rho) := by
        rw [← hbit]
        unfold seg5AccY7
        linear_combination -r3063
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2749 * rho 2750 = rho 2759 := by linear_combination r3064
    have hd1 : rho 2749 * rho 2749 = rho 2760 := by linear_combination r3065
    have hd2 : rho 2750 * rho 2750 = rho 2761 := by linear_combination r3066
    have hd3 : rho 2762 * (rho 2750 * rho 2750 + rho 2749 * rho 2749 * (-1)) = 2 * (rho 2749 * rho 2750) := by
      rw [hd0, hd1, hd2]
      linear_combination r3067
    have hd4 : rho 2763 * (2 - (rho 2750 * rho 2750 + rho 2749 * rho 2749 * (-1))) = rho 2750 * rho 2750 - rho 2749 * rho 2749 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3068
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX7 rho : Seg5.F), (seg5AccY7 rho : Seg5.F)⟩
      ⟨(rho 2749 : Seg5.F), (rho 2750 : Seg5.F)⟩
      ⟨(rho 2755 : Seg5.F), (rho 2756 : Seg5.F)⟩
      ⟨(seg5AccX8 rho : Seg5.F), (seg5AccY8 rho : Seg5.F)⟩
      ⟨(rho 2762 : Seg5.F), (rho 2763 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung7

theorem seg5_rows8 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3069 rho ∧ Seg5.relationRow3070 rho ∧ Seg5.relationRow3071 rho ∧ Seg5.relationRow3072 rho ∧ Seg5.relationRow3073 rho ∧ Seg5.relationRow3074 rho ∧ Seg5.relationRow3075 rho ∧ Seg5.relationRow3076 rho ∧ Seg5.relationRow3077 rho ∧ Seg5.relationRow3078 rho ∧ Seg5.relationRow3079 rho ∧ Seg5.relationRow3080 rho ∧ Seg5.relationRow3081 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3069, r3070, r3071, r3072, r3073, r3074, r3075, r3076, r3077, r3078, r3079, r3080, r3081, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3069, r3070, r3071, r3072, r3073, r3074, r3075, r3076, r3077, r3078, r3079, r3080, r3081⟩

theorem seg5_rung8 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2423 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX8 rho : Seg5.F), (seg5AccY8 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2762 : Seg5.F), (rho 2763 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX8 rho : Seg5.F), (seg5AccY8 rho : Seg5.F)⟩
        ⟨(rho 2762 : Seg5.F), (rho 2763 : Seg5.F)⟩
        ⟨(seg5AccX9 rho : Seg5.F), (seg5AccY9 rho : Seg5.F)⟩
        ⟨(rho 2775 : Seg5.F), (rho 2776 : Seg5.F)⟩ := by
  obtain ⟨r3069, r3070, r3071, r3072, r3073, r3074, r3075, r3076, r3077, r3078, r3079, r3080, r3081⟩ := seg5_rows8 rho h
  unfold Seg5.relationRow3069 at r3069
  unfold Seg5.relationRow3070 at r3070
  unfold Seg5.relationRow3071 at r3071
  unfold Seg5.relationRow3072 at r3072
  unfold Seg5.relationRow3073 at r3073
  unfold Seg5.relationRow3074 at r3074
  unfold Seg5.relationRow3075 at r3075
  unfold Seg5.relationRow3076 at r3076
  unfold Seg5.relationRow3077 at r3077
  unfold Seg5.relationRow3078 at r3078
  unfold Seg5.relationRow3079 at r3079
  unfold Seg5.relationRow3080 at r3080
  unfold Seg5.relationRow3081 at r3081
  have hrung8 (bit : Bool) (hbit : rho 2423 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX8 rho : Seg5.F), (seg5AccY8 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2762 : Seg5.F), (rho 2763 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX8 rho : Seg5.F), (seg5AccY8 rho : Seg5.F)⟩
        ⟨(rho 2762 : Seg5.F), (rho 2763 : Seg5.F)⟩
        ⟨(seg5AccX9 rho : Seg5.F), (seg5AccY9 rho : Seg5.F)⟩
        ⟨(rho 2775 : Seg5.F), (rho 2776 : Seg5.F)⟩ := by
    have hnextx : seg5AccX9 rho = seg5AccX8 rho + rho 2770 := by
      unfold seg5AccX9 seg5AccX8
      ring
    have hnexty : seg5AccY9 rho = seg5AccY8 rho + rho 2771 := by
      unfold seg5AccY9 seg5AccY8
      ring
    have ha0 : (rho 2762 + rho 2763) * (seg5AccX8 rho + seg5AccY8 rho) = rho 2764 := by
      unfold seg5AccX8 seg5AccY8
      linear_combination r3069
    have ha1 : rho 2763 * seg5AccX8 rho = rho 2765 := by
      unfold seg5AccX8
      linear_combination r3070
    have ha2 : rho 2762 * seg5AccY8 rho = rho 2766 := by
      unfold seg5AccY8
      linear_combination r3071
    have ha3 : 3021 * rho 2765 * rho 2766 = rho 2767 := by
      linear_combination r3072
    have ha4 : rho 2768 * (1 + rho 2767) = rho 2765 + rho 2766 := by
      linear_combination r3073
    have ha5 : rho 2769 * (1 - rho 2767) = rho 2764 - rho 2765 - rho 2766 := by
      linear_combination r3074
    have haddx :
        rho 2768 * (1 + 3021 * (rho 2763 * seg5AccX8 rho) * (rho 2762 * seg5AccY8 rho)) =
          rho 2763 * seg5AccX8 rho + rho 2762 * seg5AccY8 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2769 * (1 - 3021 * (rho 2763 * seg5AccX8 rho) * (rho 2762 * seg5AccY8 rho)) =
          (-1) * (rho 2763 * seg5AccX8 rho) - rho 2762 * seg5AccY8 rho +
            (seg5AccY8 rho - seg5AccX8 rho * (-1)) * (rho 2762 + rho 2763) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2769 * (1 - rho 2767) = rho 2764 - rho 2765 - rho 2766 := ha5
        _ = (-1) * rho 2765 - rho 2766 + (seg5AccY8 rho - seg5AccX8 rho * (-1)) * (rho 2762 + rho 2763) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX9 rho = seg5AccX8 rho - Bool.toZMod bit * (seg5AccX8 rho - rho 2768) := by
      have hd : rho 2770 = Bool.toZMod bit * (rho 2768 - seg5AccX8 rho) := by
        rw [← hbit]
        unfold seg5AccX8
        linear_combination -r3075
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY9 rho = seg5AccY8 rho - Bool.toZMod bit * (seg5AccY8 rho - rho 2769) := by
      have hd : rho 2771 = Bool.toZMod bit * (rho 2769 - seg5AccY8 rho) := by
        rw [← hbit]
        unfold seg5AccY8
        linear_combination -r3076
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2762 * rho 2763 = rho 2772 := by linear_combination r3077
    have hd1 : rho 2762 * rho 2762 = rho 2773 := by linear_combination r3078
    have hd2 : rho 2763 * rho 2763 = rho 2774 := by linear_combination r3079
    have hd3 : rho 2775 * (rho 2763 * rho 2763 + rho 2762 * rho 2762 * (-1)) = 2 * (rho 2762 * rho 2763) := by
      rw [hd0, hd1, hd2]
      linear_combination r3080
    have hd4 : rho 2776 * (2 - (rho 2763 * rho 2763 + rho 2762 * rho 2762 * (-1))) = rho 2763 * rho 2763 - rho 2762 * rho 2762 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3081
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX8 rho : Seg5.F), (seg5AccY8 rho : Seg5.F)⟩
      ⟨(rho 2762 : Seg5.F), (rho 2763 : Seg5.F)⟩
      ⟨(rho 2768 : Seg5.F), (rho 2769 : Seg5.F)⟩
      ⟨(seg5AccX9 rho : Seg5.F), (seg5AccY9 rho : Seg5.F)⟩
      ⟨(rho 2775 : Seg5.F), (rho 2776 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung8

theorem seg5_rows9 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3082 rho ∧ Seg5.relationRow3083 rho ∧ Seg5.relationRow3084 rho ∧ Seg5.relationRow3085 rho ∧ Seg5.relationRow3086 rho ∧ Seg5.relationRow3087 rho ∧ Seg5.relationRow3088 rho ∧ Seg5.relationRow3089 rho ∧ Seg5.relationRow3090 rho ∧ Seg5.relationRow3091 rho ∧ Seg5.relationRow3092 rho ∧ Seg5.relationRow3093 rho ∧ Seg5.relationRow3094 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3082, r3083, r3084, r3085, r3086, r3087, r3088, r3089, r3090, r3091, r3092, r3093, r3094, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3082, r3083, r3084, r3085, r3086, r3087, r3088, r3089, r3090, r3091, r3092, r3093, r3094⟩

theorem seg5_rung9 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2424 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX9 rho : Seg5.F), (seg5AccY9 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2775 : Seg5.F), (rho 2776 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX9 rho : Seg5.F), (seg5AccY9 rho : Seg5.F)⟩
        ⟨(rho 2775 : Seg5.F), (rho 2776 : Seg5.F)⟩
        ⟨(seg5AccX10 rho : Seg5.F), (seg5AccY10 rho : Seg5.F)⟩
        ⟨(rho 2788 : Seg5.F), (rho 2789 : Seg5.F)⟩ := by
  obtain ⟨r3082, r3083, r3084, r3085, r3086, r3087, r3088, r3089, r3090, r3091, r3092, r3093, r3094⟩ := seg5_rows9 rho h
  unfold Seg5.relationRow3082 at r3082
  unfold Seg5.relationRow3083 at r3083
  unfold Seg5.relationRow3084 at r3084
  unfold Seg5.relationRow3085 at r3085
  unfold Seg5.relationRow3086 at r3086
  unfold Seg5.relationRow3087 at r3087
  unfold Seg5.relationRow3088 at r3088
  unfold Seg5.relationRow3089 at r3089
  unfold Seg5.relationRow3090 at r3090
  unfold Seg5.relationRow3091 at r3091
  unfold Seg5.relationRow3092 at r3092
  unfold Seg5.relationRow3093 at r3093
  unfold Seg5.relationRow3094 at r3094
  have hrung9 (bit : Bool) (hbit : rho 2424 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX9 rho : Seg5.F), (seg5AccY9 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2775 : Seg5.F), (rho 2776 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX9 rho : Seg5.F), (seg5AccY9 rho : Seg5.F)⟩
        ⟨(rho 2775 : Seg5.F), (rho 2776 : Seg5.F)⟩
        ⟨(seg5AccX10 rho : Seg5.F), (seg5AccY10 rho : Seg5.F)⟩
        ⟨(rho 2788 : Seg5.F), (rho 2789 : Seg5.F)⟩ := by
    have hnextx : seg5AccX10 rho = seg5AccX9 rho + rho 2783 := by
      unfold seg5AccX10 seg5AccX9
      ring
    have hnexty : seg5AccY10 rho = seg5AccY9 rho + rho 2784 := by
      unfold seg5AccY10 seg5AccY9
      ring
    have ha0 : (rho 2775 + rho 2776) * (seg5AccX9 rho + seg5AccY9 rho) = rho 2777 := by
      unfold seg5AccX9 seg5AccY9
      linear_combination r3082
    have ha1 : rho 2776 * seg5AccX9 rho = rho 2778 := by
      unfold seg5AccX9
      linear_combination r3083
    have ha2 : rho 2775 * seg5AccY9 rho = rho 2779 := by
      unfold seg5AccY9
      linear_combination r3084
    have ha3 : 3021 * rho 2778 * rho 2779 = rho 2780 := by
      linear_combination r3085
    have ha4 : rho 2781 * (1 + rho 2780) = rho 2778 + rho 2779 := by
      linear_combination r3086
    have ha5 : rho 2782 * (1 - rho 2780) = rho 2777 - rho 2778 - rho 2779 := by
      linear_combination r3087
    have haddx :
        rho 2781 * (1 + 3021 * (rho 2776 * seg5AccX9 rho) * (rho 2775 * seg5AccY9 rho)) =
          rho 2776 * seg5AccX9 rho + rho 2775 * seg5AccY9 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2782 * (1 - 3021 * (rho 2776 * seg5AccX9 rho) * (rho 2775 * seg5AccY9 rho)) =
          (-1) * (rho 2776 * seg5AccX9 rho) - rho 2775 * seg5AccY9 rho +
            (seg5AccY9 rho - seg5AccX9 rho * (-1)) * (rho 2775 + rho 2776) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2782 * (1 - rho 2780) = rho 2777 - rho 2778 - rho 2779 := ha5
        _ = (-1) * rho 2778 - rho 2779 + (seg5AccY9 rho - seg5AccX9 rho * (-1)) * (rho 2775 + rho 2776) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX10 rho = seg5AccX9 rho - Bool.toZMod bit * (seg5AccX9 rho - rho 2781) := by
      have hd : rho 2783 = Bool.toZMod bit * (rho 2781 - seg5AccX9 rho) := by
        rw [← hbit]
        unfold seg5AccX9
        linear_combination -r3088
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY10 rho = seg5AccY9 rho - Bool.toZMod bit * (seg5AccY9 rho - rho 2782) := by
      have hd : rho 2784 = Bool.toZMod bit * (rho 2782 - seg5AccY9 rho) := by
        rw [← hbit]
        unfold seg5AccY9
        linear_combination -r3089
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2775 * rho 2776 = rho 2785 := by linear_combination r3090
    have hd1 : rho 2775 * rho 2775 = rho 2786 := by linear_combination r3091
    have hd2 : rho 2776 * rho 2776 = rho 2787 := by linear_combination r3092
    have hd3 : rho 2788 * (rho 2776 * rho 2776 + rho 2775 * rho 2775 * (-1)) = 2 * (rho 2775 * rho 2776) := by
      rw [hd0, hd1, hd2]
      linear_combination r3093
    have hd4 : rho 2789 * (2 - (rho 2776 * rho 2776 + rho 2775 * rho 2775 * (-1))) = rho 2776 * rho 2776 - rho 2775 * rho 2775 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3094
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX9 rho : Seg5.F), (seg5AccY9 rho : Seg5.F)⟩
      ⟨(rho 2775 : Seg5.F), (rho 2776 : Seg5.F)⟩
      ⟨(rho 2781 : Seg5.F), (rho 2782 : Seg5.F)⟩
      ⟨(seg5AccX10 rho : Seg5.F), (seg5AccY10 rho : Seg5.F)⟩
      ⟨(rho 2788 : Seg5.F), (rho 2789 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung9

theorem seg5_rows10 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3095 rho ∧ Seg5.relationRow3096 rho ∧ Seg5.relationRow3097 rho ∧ Seg5.relationRow3098 rho ∧ Seg5.relationRow3099 rho ∧ Seg5.relationRow3100 rho ∧ Seg5.relationRow3101 rho ∧ Seg5.relationRow3102 rho ∧ Seg5.relationRow3103 rho ∧ Seg5.relationRow3104 rho ∧ Seg5.relationRow3105 rho ∧ Seg5.relationRow3106 rho ∧ Seg5.relationRow3107 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3095, r3096, r3097, r3098, r3099, r3100, r3101, r3102, r3103, r3104, r3105, r3106, r3107, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3095, r3096, r3097, r3098, r3099, r3100, r3101, r3102, r3103, r3104, r3105, r3106, r3107⟩

theorem seg5_rung10 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2425 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX10 rho : Seg5.F), (seg5AccY10 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2788 : Seg5.F), (rho 2789 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX10 rho : Seg5.F), (seg5AccY10 rho : Seg5.F)⟩
        ⟨(rho 2788 : Seg5.F), (rho 2789 : Seg5.F)⟩
        ⟨(seg5AccX11 rho : Seg5.F), (seg5AccY11 rho : Seg5.F)⟩
        ⟨(rho 2801 : Seg5.F), (rho 2802 : Seg5.F)⟩ := by
  obtain ⟨r3095, r3096, r3097, r3098, r3099, r3100, r3101, r3102, r3103, r3104, r3105, r3106, r3107⟩ := seg5_rows10 rho h
  unfold Seg5.relationRow3095 at r3095
  unfold Seg5.relationRow3096 at r3096
  unfold Seg5.relationRow3097 at r3097
  unfold Seg5.relationRow3098 at r3098
  unfold Seg5.relationRow3099 at r3099
  unfold Seg5.relationRow3100 at r3100
  unfold Seg5.relationRow3101 at r3101
  unfold Seg5.relationRow3102 at r3102
  unfold Seg5.relationRow3103 at r3103
  unfold Seg5.relationRow3104 at r3104
  unfold Seg5.relationRow3105 at r3105
  unfold Seg5.relationRow3106 at r3106
  unfold Seg5.relationRow3107 at r3107
  have hrung10 (bit : Bool) (hbit : rho 2425 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX10 rho : Seg5.F), (seg5AccY10 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2788 : Seg5.F), (rho 2789 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX10 rho : Seg5.F), (seg5AccY10 rho : Seg5.F)⟩
        ⟨(rho 2788 : Seg5.F), (rho 2789 : Seg5.F)⟩
        ⟨(seg5AccX11 rho : Seg5.F), (seg5AccY11 rho : Seg5.F)⟩
        ⟨(rho 2801 : Seg5.F), (rho 2802 : Seg5.F)⟩ := by
    have hnextx : seg5AccX11 rho = seg5AccX10 rho + rho 2796 := by
      unfold seg5AccX11 seg5AccX10
      ring
    have hnexty : seg5AccY11 rho = seg5AccY10 rho + rho 2797 := by
      unfold seg5AccY11 seg5AccY10
      ring
    have ha0 : (rho 2788 + rho 2789) * (seg5AccX10 rho + seg5AccY10 rho) = rho 2790 := by
      unfold seg5AccX10 seg5AccY10
      linear_combination r3095
    have ha1 : rho 2789 * seg5AccX10 rho = rho 2791 := by
      unfold seg5AccX10
      linear_combination r3096
    have ha2 : rho 2788 * seg5AccY10 rho = rho 2792 := by
      unfold seg5AccY10
      linear_combination r3097
    have ha3 : 3021 * rho 2791 * rho 2792 = rho 2793 := by
      linear_combination r3098
    have ha4 : rho 2794 * (1 + rho 2793) = rho 2791 + rho 2792 := by
      linear_combination r3099
    have ha5 : rho 2795 * (1 - rho 2793) = rho 2790 - rho 2791 - rho 2792 := by
      linear_combination r3100
    have haddx :
        rho 2794 * (1 + 3021 * (rho 2789 * seg5AccX10 rho) * (rho 2788 * seg5AccY10 rho)) =
          rho 2789 * seg5AccX10 rho + rho 2788 * seg5AccY10 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2795 * (1 - 3021 * (rho 2789 * seg5AccX10 rho) * (rho 2788 * seg5AccY10 rho)) =
          (-1) * (rho 2789 * seg5AccX10 rho) - rho 2788 * seg5AccY10 rho +
            (seg5AccY10 rho - seg5AccX10 rho * (-1)) * (rho 2788 + rho 2789) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2795 * (1 - rho 2793) = rho 2790 - rho 2791 - rho 2792 := ha5
        _ = (-1) * rho 2791 - rho 2792 + (seg5AccY10 rho - seg5AccX10 rho * (-1)) * (rho 2788 + rho 2789) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX11 rho = seg5AccX10 rho - Bool.toZMod bit * (seg5AccX10 rho - rho 2794) := by
      have hd : rho 2796 = Bool.toZMod bit * (rho 2794 - seg5AccX10 rho) := by
        rw [← hbit]
        unfold seg5AccX10
        linear_combination -r3101
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY11 rho = seg5AccY10 rho - Bool.toZMod bit * (seg5AccY10 rho - rho 2795) := by
      have hd : rho 2797 = Bool.toZMod bit * (rho 2795 - seg5AccY10 rho) := by
        rw [← hbit]
        unfold seg5AccY10
        linear_combination -r3102
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2788 * rho 2789 = rho 2798 := by linear_combination r3103
    have hd1 : rho 2788 * rho 2788 = rho 2799 := by linear_combination r3104
    have hd2 : rho 2789 * rho 2789 = rho 2800 := by linear_combination r3105
    have hd3 : rho 2801 * (rho 2789 * rho 2789 + rho 2788 * rho 2788 * (-1)) = 2 * (rho 2788 * rho 2789) := by
      rw [hd0, hd1, hd2]
      linear_combination r3106
    have hd4 : rho 2802 * (2 - (rho 2789 * rho 2789 + rho 2788 * rho 2788 * (-1))) = rho 2789 * rho 2789 - rho 2788 * rho 2788 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3107
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX10 rho : Seg5.F), (seg5AccY10 rho : Seg5.F)⟩
      ⟨(rho 2788 : Seg5.F), (rho 2789 : Seg5.F)⟩
      ⟨(rho 2794 : Seg5.F), (rho 2795 : Seg5.F)⟩
      ⟨(seg5AccX11 rho : Seg5.F), (seg5AccY11 rho : Seg5.F)⟩
      ⟨(rho 2801 : Seg5.F), (rho 2802 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung10

theorem seg5_hstep_c0 (rho : Nat -> Seg5.F) (h : Seg5.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (2415 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 0 ≤ i → i < 11 →
      EdwardsBridge.onCurve (seg5LadderAccState rho i) →
      EdwardsBridge.onCurve (seg5LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg5LadderAccState rho i) (seg5LadderCurState rho i)
        (seg5LadderAccState rho (i + 1)) (seg5LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg5_rung0 rho h bits[0]! (hbitAt 0 (by omega)) hacc hcur
  · exact seg5_rung1 rho h bits[1]! (hbitAt 1 (by omega)) hacc hcur
  · exact seg5_rung2 rho h bits[2]! (hbitAt 2 (by omega)) hacc hcur
  · exact seg5_rung3 rho h bits[3]! (hbitAt 3 (by omega)) hacc hcur
  · exact seg5_rung4 rho h bits[4]! (hbitAt 4 (by omega)) hacc hcur
  · exact seg5_rung5 rho h bits[5]! (hbitAt 5 (by omega)) hacc hcur
  · exact seg5_rung6 rho h bits[6]! (hbitAt 6 (by omega)) hacc hcur
  · exact seg5_rung7 rho h bits[7]! (hbitAt 7 (by omega)) hacc hcur
  · exact seg5_rung8 rho h bits[8]! (hbitAt 8 (by omega)) hacc hcur
  · exact seg5_rung9 rho h bits[9]! (hbitAt 9 (by omega)) hacc hcur
  · exact seg5_rung10 rho h bits[10]! (hbitAt 10 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
