import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg45_rows0 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow2971 rho ∧ Seg45.relationRow2972 rho ∧ Seg45.relationRow2973 rho ∧ Seg45.relationRow2974 rho ∧ Seg45.relationRow2975 rho ∧ Seg45.relationRow2976 rho ∧ Seg45.relationRow2977 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, r2971, r2972, r2973, r2974, r2975, r2976, r2977, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2971, r2972, r2973, r2974, r2975, r2976, r2977⟩

theorem seg45_rung0 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40948 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX0 rho : Seg45.F), (seg45AccY0 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 195 : Seg45.F), (rho 196 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX0 rho : Seg45.F), (seg45AccY0 rho : Seg45.F)⟩
        ⟨(rho 195 : Seg45.F), (rho 196 : Seg45.F)⟩
        ⟨(seg45AccX1 rho : Seg45.F), (seg45AccY1 rho : Seg45.F)⟩
        ⟨(rho 41204 : Seg45.F), (rho 41205 : Seg45.F)⟩ := by
  obtain ⟨r2971, r2972, r2973, r2974, r2975, r2976, r2977⟩ := seg45_rows0 rho h
  unfold Seg45.relationRow2971 at r2971
  unfold Seg45.relationRow2972 at r2972
  unfold Seg45.relationRow2973 at r2973
  unfold Seg45.relationRow2974 at r2974
  unfold Seg45.relationRow2975 at r2975
  unfold Seg45.relationRow2976 at r2976
  unfold Seg45.relationRow2977 at r2977
  have hrung0 (bit : Bool) (hbit : rho 40948 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX0 rho : Seg45.F), (seg45AccY0 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 195 : Seg45.F), (rho 196 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX0 rho : Seg45.F), (seg45AccY0 rho : Seg45.F)⟩
        ⟨(rho 195 : Seg45.F), (rho 196 : Seg45.F)⟩
        ⟨(seg45AccX1 rho : Seg45.F), (seg45AccY1 rho : Seg45.F)⟩
        ⟨(rho 41204 : Seg45.F), (rho 41205 : Seg45.F)⟩ := by
    have hnextx : seg45AccX1 rho = seg45AccX0 rho + rho 41199 := by
      unfold seg45AccX1 seg45AccX0
      ring
    have hnexty : seg45AccY1 rho = seg45AccY0 rho + rho 41200 := by
      unfold seg45AccY1 seg45AccY0
      ring
    have haddx :
        rho 195 * (1 + 3021 * (rho 196 * seg45AccX0 rho) * (rho 195 * seg45AccY0 rho)) =
          rho 196 * seg45AccX0 rho + rho 195 * seg45AccY0 rho := by
      unfold seg45AccX0 seg45AccY0
      ring
    have haddy :
        rho 196 * (1 - 3021 * (rho 196 * seg45AccX0 rho) * (rho 195 * seg45AccY0 rho)) =
          (-1) * (rho 196 * seg45AccX0 rho) - rho 195 * seg45AccY0 rho +
            (seg45AccY0 rho - seg45AccX0 rho * (-1)) * (rho 195 + rho 196) := by
      unfold seg45AccX0 seg45AccY0
      ring
    have hselx : seg45AccX1 rho = seg45AccX0 rho - Bool.toZMod bit * (seg45AccX0 rho - rho 195) := by
      have hd : rho 41199 = Bool.toZMod bit * (rho 195 - seg45AccX0 rho) := by
        rw [← hbit]
        unfold seg45AccX0
        linear_combination -r2971
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY1 rho = seg45AccY0 rho - Bool.toZMod bit * (seg45AccY0 rho - rho 196) := by
      have hd : rho 41200 = Bool.toZMod bit * (rho 196 - seg45AccY0 rho) := by
        rw [← hbit]
        unfold seg45AccY0
        linear_combination -r2972
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 195 * rho 196 = rho 41201 := by linear_combination r2973
    have hd1 : rho 195 * rho 195 = rho 41202 := by linear_combination r2974
    have hd2 : rho 196 * rho 196 = rho 41203 := by linear_combination r2975
    have hd3 : rho 41204 * (rho 196 * rho 196 + rho 195 * rho 195 * (-1)) = 2 * (rho 195 * rho 196) := by
      rw [hd0, hd1, hd2]
      linear_combination r2976
    have hd4 : rho 41205 * (2 - (rho 196 * rho 196 + rho 195 * rho 195 * (-1))) = rho 196 * rho 196 - rho 195 * rho 195 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2977
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX0 rho : Seg45.F), (seg45AccY0 rho : Seg45.F)⟩
      ⟨(rho 195 : Seg45.F), (rho 196 : Seg45.F)⟩
      ⟨(rho 195 : Seg45.F), (rho 196 : Seg45.F)⟩
      ⟨(seg45AccX1 rho : Seg45.F), (seg45AccY1 rho : Seg45.F)⟩
      ⟨(rho 41204 : Seg45.F), (rho 41205 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung0

theorem seg45_rows1 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow2978 rho ∧ Seg45.relationRow2979 rho ∧ Seg45.relationRow2980 rho ∧ Seg45.relationRow2981 rho ∧ Seg45.relationRow2982 rho ∧ Seg45.relationRow2983 rho ∧ Seg45.relationRow2984 rho ∧ Seg45.relationRow2985 rho ∧ Seg45.relationRow2986 rho ∧ Seg45.relationRow2987 rho ∧ Seg45.relationRow2988 rho ∧ Seg45.relationRow2989 rho ∧ Seg45.relationRow2990 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2978, r2979, r2980, r2981, r2982, r2983, r2984, r2985, r2986, r2987, r2988, r2989, r2990, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2978, r2979, r2980, r2981, r2982, r2983, r2984, r2985, r2986, r2987, r2988, r2989, r2990⟩

theorem seg45_rung1 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40949 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX1 rho : Seg45.F), (seg45AccY1 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41204 : Seg45.F), (rho 41205 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX1 rho : Seg45.F), (seg45AccY1 rho : Seg45.F)⟩
        ⟨(rho 41204 : Seg45.F), (rho 41205 : Seg45.F)⟩
        ⟨(seg45AccX2 rho : Seg45.F), (seg45AccY2 rho : Seg45.F)⟩
        ⟨(rho 41217 : Seg45.F), (rho 41218 : Seg45.F)⟩ := by
  obtain ⟨r2978, r2979, r2980, r2981, r2982, r2983, r2984, r2985, r2986, r2987, r2988, r2989, r2990⟩ := seg45_rows1 rho h
  unfold Seg45.relationRow2978 at r2978
  unfold Seg45.relationRow2979 at r2979
  unfold Seg45.relationRow2980 at r2980
  unfold Seg45.relationRow2981 at r2981
  unfold Seg45.relationRow2982 at r2982
  unfold Seg45.relationRow2983 at r2983
  unfold Seg45.relationRow2984 at r2984
  unfold Seg45.relationRow2985 at r2985
  unfold Seg45.relationRow2986 at r2986
  unfold Seg45.relationRow2987 at r2987
  unfold Seg45.relationRow2988 at r2988
  unfold Seg45.relationRow2989 at r2989
  unfold Seg45.relationRow2990 at r2990
  have hrung1 (bit : Bool) (hbit : rho 40949 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX1 rho : Seg45.F), (seg45AccY1 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41204 : Seg45.F), (rho 41205 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX1 rho : Seg45.F), (seg45AccY1 rho : Seg45.F)⟩
        ⟨(rho 41204 : Seg45.F), (rho 41205 : Seg45.F)⟩
        ⟨(seg45AccX2 rho : Seg45.F), (seg45AccY2 rho : Seg45.F)⟩
        ⟨(rho 41217 : Seg45.F), (rho 41218 : Seg45.F)⟩ := by
    have hnextx : seg45AccX2 rho = seg45AccX1 rho + rho 41212 := by
      unfold seg45AccX2 seg45AccX1
      ring
    have hnexty : seg45AccY2 rho = seg45AccY1 rho + rho 41213 := by
      unfold seg45AccY2 seg45AccY1
      ring
    have ha0 : (rho 41204 + rho 41205) * (seg45AccX1 rho + seg45AccY1 rho) = rho 41206 := by
      unfold seg45AccX1 seg45AccY1
      linear_combination r2978
    have ha1 : rho 41205 * seg45AccX1 rho = rho 41207 := by
      unfold seg45AccX1
      linear_combination r2979
    have ha2 : rho 41204 * seg45AccY1 rho = rho 41208 := by
      unfold seg45AccY1
      linear_combination r2980
    have ha3 : 3021 * rho 41207 * rho 41208 = rho 41209 := by
      linear_combination r2981
    have ha4 : rho 41210 * (1 + rho 41209) = rho 41207 + rho 41208 := by
      linear_combination r2982
    have ha5 : rho 41211 * (1 - rho 41209) = rho 41206 - rho 41207 - rho 41208 := by
      linear_combination r2983
    have haddx :
        rho 41210 * (1 + 3021 * (rho 41205 * seg45AccX1 rho) * (rho 41204 * seg45AccY1 rho)) =
          rho 41205 * seg45AccX1 rho + rho 41204 * seg45AccY1 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41211 * (1 - 3021 * (rho 41205 * seg45AccX1 rho) * (rho 41204 * seg45AccY1 rho)) =
          (-1) * (rho 41205 * seg45AccX1 rho) - rho 41204 * seg45AccY1 rho +
            (seg45AccY1 rho - seg45AccX1 rho * (-1)) * (rho 41204 + rho 41205) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41211 * (1 - rho 41209) = rho 41206 - rho 41207 - rho 41208 := ha5
        _ = (-1) * rho 41207 - rho 41208 + (seg45AccY1 rho - seg45AccX1 rho * (-1)) * (rho 41204 + rho 41205) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX2 rho = seg45AccX1 rho - Bool.toZMod bit * (seg45AccX1 rho - rho 41210) := by
      have hd : rho 41212 = Bool.toZMod bit * (rho 41210 - seg45AccX1 rho) := by
        rw [← hbit]
        unfold seg45AccX1
        linear_combination -r2984
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY2 rho = seg45AccY1 rho - Bool.toZMod bit * (seg45AccY1 rho - rho 41211) := by
      have hd : rho 41213 = Bool.toZMod bit * (rho 41211 - seg45AccY1 rho) := by
        rw [← hbit]
        unfold seg45AccY1
        linear_combination -r2985
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41204 * rho 41205 = rho 41214 := by linear_combination r2986
    have hd1 : rho 41204 * rho 41204 = rho 41215 := by linear_combination r2987
    have hd2 : rho 41205 * rho 41205 = rho 41216 := by linear_combination r2988
    have hd3 : rho 41217 * (rho 41205 * rho 41205 + rho 41204 * rho 41204 * (-1)) = 2 * (rho 41204 * rho 41205) := by
      rw [hd0, hd1, hd2]
      linear_combination r2989
    have hd4 : rho 41218 * (2 - (rho 41205 * rho 41205 + rho 41204 * rho 41204 * (-1))) = rho 41205 * rho 41205 - rho 41204 * rho 41204 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2990
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX1 rho : Seg45.F), (seg45AccY1 rho : Seg45.F)⟩
      ⟨(rho 41204 : Seg45.F), (rho 41205 : Seg45.F)⟩
      ⟨(rho 41210 : Seg45.F), (rho 41211 : Seg45.F)⟩
      ⟨(seg45AccX2 rho : Seg45.F), (seg45AccY2 rho : Seg45.F)⟩
      ⟨(rho 41217 : Seg45.F), (rho 41218 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung1

theorem seg45_rows2 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow2991 rho ∧ Seg45.relationRow2992 rho ∧ Seg45.relationRow2993 rho ∧ Seg45.relationRow2994 rho ∧ Seg45.relationRow2995 rho ∧ Seg45.relationRow2996 rho ∧ Seg45.relationRow2997 rho ∧ Seg45.relationRow2998 rho ∧ Seg45.relationRow2999 rho ∧ Seg45.relationRow3000 rho ∧ Seg45.relationRow3001 rho ∧ Seg45.relationRow3002 rho ∧ Seg45.relationRow3003 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2991, r2992, r2993, r2994, r2995, r2996, r2997, r2998, r2999, r3000, r3001, r3002, r3003, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2991, r2992, r2993, r2994, r2995, r2996, r2997, r2998, r2999, r3000, r3001, r3002, r3003⟩

theorem seg45_rung2 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40950 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX2 rho : Seg45.F), (seg45AccY2 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41217 : Seg45.F), (rho 41218 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX2 rho : Seg45.F), (seg45AccY2 rho : Seg45.F)⟩
        ⟨(rho 41217 : Seg45.F), (rho 41218 : Seg45.F)⟩
        ⟨(seg45AccX3 rho : Seg45.F), (seg45AccY3 rho : Seg45.F)⟩
        ⟨(rho 41230 : Seg45.F), (rho 41231 : Seg45.F)⟩ := by
  obtain ⟨r2991, r2992, r2993, r2994, r2995, r2996, r2997, r2998, r2999, r3000, r3001, r3002, r3003⟩ := seg45_rows2 rho h
  unfold Seg45.relationRow2991 at r2991
  unfold Seg45.relationRow2992 at r2992
  unfold Seg45.relationRow2993 at r2993
  unfold Seg45.relationRow2994 at r2994
  unfold Seg45.relationRow2995 at r2995
  unfold Seg45.relationRow2996 at r2996
  unfold Seg45.relationRow2997 at r2997
  unfold Seg45.relationRow2998 at r2998
  unfold Seg45.relationRow2999 at r2999
  unfold Seg45.relationRow3000 at r3000
  unfold Seg45.relationRow3001 at r3001
  unfold Seg45.relationRow3002 at r3002
  unfold Seg45.relationRow3003 at r3003
  have hrung2 (bit : Bool) (hbit : rho 40950 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX2 rho : Seg45.F), (seg45AccY2 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41217 : Seg45.F), (rho 41218 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX2 rho : Seg45.F), (seg45AccY2 rho : Seg45.F)⟩
        ⟨(rho 41217 : Seg45.F), (rho 41218 : Seg45.F)⟩
        ⟨(seg45AccX3 rho : Seg45.F), (seg45AccY3 rho : Seg45.F)⟩
        ⟨(rho 41230 : Seg45.F), (rho 41231 : Seg45.F)⟩ := by
    have hnextx : seg45AccX3 rho = seg45AccX2 rho + rho 41225 := by
      unfold seg45AccX3 seg45AccX2
      ring
    have hnexty : seg45AccY3 rho = seg45AccY2 rho + rho 41226 := by
      unfold seg45AccY3 seg45AccY2
      ring
    have ha0 : (rho 41217 + rho 41218) * (seg45AccX2 rho + seg45AccY2 rho) = rho 41219 := by
      unfold seg45AccX2 seg45AccY2
      linear_combination r2991
    have ha1 : rho 41218 * seg45AccX2 rho = rho 41220 := by
      unfold seg45AccX2
      linear_combination r2992
    have ha2 : rho 41217 * seg45AccY2 rho = rho 41221 := by
      unfold seg45AccY2
      linear_combination r2993
    have ha3 : 3021 * rho 41220 * rho 41221 = rho 41222 := by
      linear_combination r2994
    have ha4 : rho 41223 * (1 + rho 41222) = rho 41220 + rho 41221 := by
      linear_combination r2995
    have ha5 : rho 41224 * (1 - rho 41222) = rho 41219 - rho 41220 - rho 41221 := by
      linear_combination r2996
    have haddx :
        rho 41223 * (1 + 3021 * (rho 41218 * seg45AccX2 rho) * (rho 41217 * seg45AccY2 rho)) =
          rho 41218 * seg45AccX2 rho + rho 41217 * seg45AccY2 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41224 * (1 - 3021 * (rho 41218 * seg45AccX2 rho) * (rho 41217 * seg45AccY2 rho)) =
          (-1) * (rho 41218 * seg45AccX2 rho) - rho 41217 * seg45AccY2 rho +
            (seg45AccY2 rho - seg45AccX2 rho * (-1)) * (rho 41217 + rho 41218) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41224 * (1 - rho 41222) = rho 41219 - rho 41220 - rho 41221 := ha5
        _ = (-1) * rho 41220 - rho 41221 + (seg45AccY2 rho - seg45AccX2 rho * (-1)) * (rho 41217 + rho 41218) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX3 rho = seg45AccX2 rho - Bool.toZMod bit * (seg45AccX2 rho - rho 41223) := by
      have hd : rho 41225 = Bool.toZMod bit * (rho 41223 - seg45AccX2 rho) := by
        rw [← hbit]
        unfold seg45AccX2
        linear_combination -r2997
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY3 rho = seg45AccY2 rho - Bool.toZMod bit * (seg45AccY2 rho - rho 41224) := by
      have hd : rho 41226 = Bool.toZMod bit * (rho 41224 - seg45AccY2 rho) := by
        rw [← hbit]
        unfold seg45AccY2
        linear_combination -r2998
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41217 * rho 41218 = rho 41227 := by linear_combination r2999
    have hd1 : rho 41217 * rho 41217 = rho 41228 := by linear_combination r3000
    have hd2 : rho 41218 * rho 41218 = rho 41229 := by linear_combination r3001
    have hd3 : rho 41230 * (rho 41218 * rho 41218 + rho 41217 * rho 41217 * (-1)) = 2 * (rho 41217 * rho 41218) := by
      rw [hd0, hd1, hd2]
      linear_combination r3002
    have hd4 : rho 41231 * (2 - (rho 41218 * rho 41218 + rho 41217 * rho 41217 * (-1))) = rho 41218 * rho 41218 - rho 41217 * rho 41217 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3003
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX2 rho : Seg45.F), (seg45AccY2 rho : Seg45.F)⟩
      ⟨(rho 41217 : Seg45.F), (rho 41218 : Seg45.F)⟩
      ⟨(rho 41223 : Seg45.F), (rho 41224 : Seg45.F)⟩
      ⟨(seg45AccX3 rho : Seg45.F), (seg45AccY3 rho : Seg45.F)⟩
      ⟨(rho 41230 : Seg45.F), (rho 41231 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung2

theorem seg45_rows3 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3004 rho ∧ Seg45.relationRow3005 rho ∧ Seg45.relationRow3006 rho ∧ Seg45.relationRow3007 rho ∧ Seg45.relationRow3008 rho ∧ Seg45.relationRow3009 rho ∧ Seg45.relationRow3010 rho ∧ Seg45.relationRow3011 rho ∧ Seg45.relationRow3012 rho ∧ Seg45.relationRow3013 rho ∧ Seg45.relationRow3014 rho ∧ Seg45.relationRow3015 rho ∧ Seg45.relationRow3016 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3004, r3005, r3006, r3007, r3008, r3009, r3010, r3011, r3012, r3013, r3014, r3015, r3016, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3004, r3005, r3006, r3007, r3008, r3009, r3010, r3011, r3012, r3013, r3014, r3015, r3016⟩

theorem seg45_rung3 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40951 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX3 rho : Seg45.F), (seg45AccY3 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41230 : Seg45.F), (rho 41231 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX3 rho : Seg45.F), (seg45AccY3 rho : Seg45.F)⟩
        ⟨(rho 41230 : Seg45.F), (rho 41231 : Seg45.F)⟩
        ⟨(seg45AccX4 rho : Seg45.F), (seg45AccY4 rho : Seg45.F)⟩
        ⟨(rho 41243 : Seg45.F), (rho 41244 : Seg45.F)⟩ := by
  obtain ⟨r3004, r3005, r3006, r3007, r3008, r3009, r3010, r3011, r3012, r3013, r3014, r3015, r3016⟩ := seg45_rows3 rho h
  unfold Seg45.relationRow3004 at r3004
  unfold Seg45.relationRow3005 at r3005
  unfold Seg45.relationRow3006 at r3006
  unfold Seg45.relationRow3007 at r3007
  unfold Seg45.relationRow3008 at r3008
  unfold Seg45.relationRow3009 at r3009
  unfold Seg45.relationRow3010 at r3010
  unfold Seg45.relationRow3011 at r3011
  unfold Seg45.relationRow3012 at r3012
  unfold Seg45.relationRow3013 at r3013
  unfold Seg45.relationRow3014 at r3014
  unfold Seg45.relationRow3015 at r3015
  unfold Seg45.relationRow3016 at r3016
  have hrung3 (bit : Bool) (hbit : rho 40951 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX3 rho : Seg45.F), (seg45AccY3 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41230 : Seg45.F), (rho 41231 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX3 rho : Seg45.F), (seg45AccY3 rho : Seg45.F)⟩
        ⟨(rho 41230 : Seg45.F), (rho 41231 : Seg45.F)⟩
        ⟨(seg45AccX4 rho : Seg45.F), (seg45AccY4 rho : Seg45.F)⟩
        ⟨(rho 41243 : Seg45.F), (rho 41244 : Seg45.F)⟩ := by
    have hnextx : seg45AccX4 rho = seg45AccX3 rho + rho 41238 := by
      unfold seg45AccX4 seg45AccX3
      ring
    have hnexty : seg45AccY4 rho = seg45AccY3 rho + rho 41239 := by
      unfold seg45AccY4 seg45AccY3
      ring
    have ha0 : (rho 41230 + rho 41231) * (seg45AccX3 rho + seg45AccY3 rho) = rho 41232 := by
      unfold seg45AccX3 seg45AccY3
      linear_combination r3004
    have ha1 : rho 41231 * seg45AccX3 rho = rho 41233 := by
      unfold seg45AccX3
      linear_combination r3005
    have ha2 : rho 41230 * seg45AccY3 rho = rho 41234 := by
      unfold seg45AccY3
      linear_combination r3006
    have ha3 : 3021 * rho 41233 * rho 41234 = rho 41235 := by
      linear_combination r3007
    have ha4 : rho 41236 * (1 + rho 41235) = rho 41233 + rho 41234 := by
      linear_combination r3008
    have ha5 : rho 41237 * (1 - rho 41235) = rho 41232 - rho 41233 - rho 41234 := by
      linear_combination r3009
    have haddx :
        rho 41236 * (1 + 3021 * (rho 41231 * seg45AccX3 rho) * (rho 41230 * seg45AccY3 rho)) =
          rho 41231 * seg45AccX3 rho + rho 41230 * seg45AccY3 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41237 * (1 - 3021 * (rho 41231 * seg45AccX3 rho) * (rho 41230 * seg45AccY3 rho)) =
          (-1) * (rho 41231 * seg45AccX3 rho) - rho 41230 * seg45AccY3 rho +
            (seg45AccY3 rho - seg45AccX3 rho * (-1)) * (rho 41230 + rho 41231) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41237 * (1 - rho 41235) = rho 41232 - rho 41233 - rho 41234 := ha5
        _ = (-1) * rho 41233 - rho 41234 + (seg45AccY3 rho - seg45AccX3 rho * (-1)) * (rho 41230 + rho 41231) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX4 rho = seg45AccX3 rho - Bool.toZMod bit * (seg45AccX3 rho - rho 41236) := by
      have hd : rho 41238 = Bool.toZMod bit * (rho 41236 - seg45AccX3 rho) := by
        rw [← hbit]
        unfold seg45AccX3
        linear_combination -r3010
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY4 rho = seg45AccY3 rho - Bool.toZMod bit * (seg45AccY3 rho - rho 41237) := by
      have hd : rho 41239 = Bool.toZMod bit * (rho 41237 - seg45AccY3 rho) := by
        rw [← hbit]
        unfold seg45AccY3
        linear_combination -r3011
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41230 * rho 41231 = rho 41240 := by linear_combination r3012
    have hd1 : rho 41230 * rho 41230 = rho 41241 := by linear_combination r3013
    have hd2 : rho 41231 * rho 41231 = rho 41242 := by linear_combination r3014
    have hd3 : rho 41243 * (rho 41231 * rho 41231 + rho 41230 * rho 41230 * (-1)) = 2 * (rho 41230 * rho 41231) := by
      rw [hd0, hd1, hd2]
      linear_combination r3015
    have hd4 : rho 41244 * (2 - (rho 41231 * rho 41231 + rho 41230 * rho 41230 * (-1))) = rho 41231 * rho 41231 - rho 41230 * rho 41230 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3016
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX3 rho : Seg45.F), (seg45AccY3 rho : Seg45.F)⟩
      ⟨(rho 41230 : Seg45.F), (rho 41231 : Seg45.F)⟩
      ⟨(rho 41236 : Seg45.F), (rho 41237 : Seg45.F)⟩
      ⟨(seg45AccX4 rho : Seg45.F), (seg45AccY4 rho : Seg45.F)⟩
      ⟨(rho 41243 : Seg45.F), (rho 41244 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung3

theorem seg45_rows4 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3017 rho ∧ Seg45.relationRow3018 rho ∧ Seg45.relationRow3019 rho ∧ Seg45.relationRow3020 rho ∧ Seg45.relationRow3021 rho ∧ Seg45.relationRow3022 rho ∧ Seg45.relationRow3023 rho ∧ Seg45.relationRow3024 rho ∧ Seg45.relationRow3025 rho ∧ Seg45.relationRow3026 rho ∧ Seg45.relationRow3027 rho ∧ Seg45.relationRow3028 rho ∧ Seg45.relationRow3029 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3017, r3018, r3019, r3020, r3021, r3022, r3023, r3024, r3025, r3026, r3027, r3028, r3029, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3017, r3018, r3019, r3020, r3021, r3022, r3023, r3024, r3025, r3026, r3027, r3028, r3029⟩

theorem seg45_rung4 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40952 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX4 rho : Seg45.F), (seg45AccY4 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41243 : Seg45.F), (rho 41244 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX4 rho : Seg45.F), (seg45AccY4 rho : Seg45.F)⟩
        ⟨(rho 41243 : Seg45.F), (rho 41244 : Seg45.F)⟩
        ⟨(seg45AccX5 rho : Seg45.F), (seg45AccY5 rho : Seg45.F)⟩
        ⟨(rho 41256 : Seg45.F), (rho 41257 : Seg45.F)⟩ := by
  obtain ⟨r3017, r3018, r3019, r3020, r3021, r3022, r3023, r3024, r3025, r3026, r3027, r3028, r3029⟩ := seg45_rows4 rho h
  unfold Seg45.relationRow3017 at r3017
  unfold Seg45.relationRow3018 at r3018
  unfold Seg45.relationRow3019 at r3019
  unfold Seg45.relationRow3020 at r3020
  unfold Seg45.relationRow3021 at r3021
  unfold Seg45.relationRow3022 at r3022
  unfold Seg45.relationRow3023 at r3023
  unfold Seg45.relationRow3024 at r3024
  unfold Seg45.relationRow3025 at r3025
  unfold Seg45.relationRow3026 at r3026
  unfold Seg45.relationRow3027 at r3027
  unfold Seg45.relationRow3028 at r3028
  unfold Seg45.relationRow3029 at r3029
  have hrung4 (bit : Bool) (hbit : rho 40952 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX4 rho : Seg45.F), (seg45AccY4 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41243 : Seg45.F), (rho 41244 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX4 rho : Seg45.F), (seg45AccY4 rho : Seg45.F)⟩
        ⟨(rho 41243 : Seg45.F), (rho 41244 : Seg45.F)⟩
        ⟨(seg45AccX5 rho : Seg45.F), (seg45AccY5 rho : Seg45.F)⟩
        ⟨(rho 41256 : Seg45.F), (rho 41257 : Seg45.F)⟩ := by
    have hnextx : seg45AccX5 rho = seg45AccX4 rho + rho 41251 := by
      unfold seg45AccX5 seg45AccX4
      ring
    have hnexty : seg45AccY5 rho = seg45AccY4 rho + rho 41252 := by
      unfold seg45AccY5 seg45AccY4
      ring
    have ha0 : (rho 41243 + rho 41244) * (seg45AccX4 rho + seg45AccY4 rho) = rho 41245 := by
      unfold seg45AccX4 seg45AccY4
      linear_combination r3017
    have ha1 : rho 41244 * seg45AccX4 rho = rho 41246 := by
      unfold seg45AccX4
      linear_combination r3018
    have ha2 : rho 41243 * seg45AccY4 rho = rho 41247 := by
      unfold seg45AccY4
      linear_combination r3019
    have ha3 : 3021 * rho 41246 * rho 41247 = rho 41248 := by
      linear_combination r3020
    have ha4 : rho 41249 * (1 + rho 41248) = rho 41246 + rho 41247 := by
      linear_combination r3021
    have ha5 : rho 41250 * (1 - rho 41248) = rho 41245 - rho 41246 - rho 41247 := by
      linear_combination r3022
    have haddx :
        rho 41249 * (1 + 3021 * (rho 41244 * seg45AccX4 rho) * (rho 41243 * seg45AccY4 rho)) =
          rho 41244 * seg45AccX4 rho + rho 41243 * seg45AccY4 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41250 * (1 - 3021 * (rho 41244 * seg45AccX4 rho) * (rho 41243 * seg45AccY4 rho)) =
          (-1) * (rho 41244 * seg45AccX4 rho) - rho 41243 * seg45AccY4 rho +
            (seg45AccY4 rho - seg45AccX4 rho * (-1)) * (rho 41243 + rho 41244) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41250 * (1 - rho 41248) = rho 41245 - rho 41246 - rho 41247 := ha5
        _ = (-1) * rho 41246 - rho 41247 + (seg45AccY4 rho - seg45AccX4 rho * (-1)) * (rho 41243 + rho 41244) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX5 rho = seg45AccX4 rho - Bool.toZMod bit * (seg45AccX4 rho - rho 41249) := by
      have hd : rho 41251 = Bool.toZMod bit * (rho 41249 - seg45AccX4 rho) := by
        rw [← hbit]
        unfold seg45AccX4
        linear_combination -r3023
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY5 rho = seg45AccY4 rho - Bool.toZMod bit * (seg45AccY4 rho - rho 41250) := by
      have hd : rho 41252 = Bool.toZMod bit * (rho 41250 - seg45AccY4 rho) := by
        rw [← hbit]
        unfold seg45AccY4
        linear_combination -r3024
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41243 * rho 41244 = rho 41253 := by linear_combination r3025
    have hd1 : rho 41243 * rho 41243 = rho 41254 := by linear_combination r3026
    have hd2 : rho 41244 * rho 41244 = rho 41255 := by linear_combination r3027
    have hd3 : rho 41256 * (rho 41244 * rho 41244 + rho 41243 * rho 41243 * (-1)) = 2 * (rho 41243 * rho 41244) := by
      rw [hd0, hd1, hd2]
      linear_combination r3028
    have hd4 : rho 41257 * (2 - (rho 41244 * rho 41244 + rho 41243 * rho 41243 * (-1))) = rho 41244 * rho 41244 - rho 41243 * rho 41243 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3029
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX4 rho : Seg45.F), (seg45AccY4 rho : Seg45.F)⟩
      ⟨(rho 41243 : Seg45.F), (rho 41244 : Seg45.F)⟩
      ⟨(rho 41249 : Seg45.F), (rho 41250 : Seg45.F)⟩
      ⟨(seg45AccX5 rho : Seg45.F), (seg45AccY5 rho : Seg45.F)⟩
      ⟨(rho 41256 : Seg45.F), (rho 41257 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung4

theorem seg45_rows5 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3030 rho ∧ Seg45.relationRow3031 rho ∧ Seg45.relationRow3032 rho ∧ Seg45.relationRow3033 rho ∧ Seg45.relationRow3034 rho ∧ Seg45.relationRow3035 rho ∧ Seg45.relationRow3036 rho ∧ Seg45.relationRow3037 rho ∧ Seg45.relationRow3038 rho ∧ Seg45.relationRow3039 rho ∧ Seg45.relationRow3040 rho ∧ Seg45.relationRow3041 rho ∧ Seg45.relationRow3042 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3030, r3031, r3032, r3033, r3034, r3035, r3036, r3037, r3038, r3039⟩
  unfold Seg45.relationPart38 at p38
  rcases p38 with ⟨r3040, r3041, r3042, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3030, r3031, r3032, r3033, r3034, r3035, r3036, r3037, r3038, r3039, r3040, r3041, r3042⟩

theorem seg45_rung5 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40953 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX5 rho : Seg45.F), (seg45AccY5 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41256 : Seg45.F), (rho 41257 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX5 rho : Seg45.F), (seg45AccY5 rho : Seg45.F)⟩
        ⟨(rho 41256 : Seg45.F), (rho 41257 : Seg45.F)⟩
        ⟨(seg45AccX6 rho : Seg45.F), (seg45AccY6 rho : Seg45.F)⟩
        ⟨(rho 41269 : Seg45.F), (rho 41270 : Seg45.F)⟩ := by
  obtain ⟨r3030, r3031, r3032, r3033, r3034, r3035, r3036, r3037, r3038, r3039, r3040, r3041, r3042⟩ := seg45_rows5 rho h
  unfold Seg45.relationRow3030 at r3030
  unfold Seg45.relationRow3031 at r3031
  unfold Seg45.relationRow3032 at r3032
  unfold Seg45.relationRow3033 at r3033
  unfold Seg45.relationRow3034 at r3034
  unfold Seg45.relationRow3035 at r3035
  unfold Seg45.relationRow3036 at r3036
  unfold Seg45.relationRow3037 at r3037
  unfold Seg45.relationRow3038 at r3038
  unfold Seg45.relationRow3039 at r3039
  unfold Seg45.relationRow3040 at r3040
  unfold Seg45.relationRow3041 at r3041
  unfold Seg45.relationRow3042 at r3042
  have hrung5 (bit : Bool) (hbit : rho 40953 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX5 rho : Seg45.F), (seg45AccY5 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41256 : Seg45.F), (rho 41257 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX5 rho : Seg45.F), (seg45AccY5 rho : Seg45.F)⟩
        ⟨(rho 41256 : Seg45.F), (rho 41257 : Seg45.F)⟩
        ⟨(seg45AccX6 rho : Seg45.F), (seg45AccY6 rho : Seg45.F)⟩
        ⟨(rho 41269 : Seg45.F), (rho 41270 : Seg45.F)⟩ := by
    have hnextx : seg45AccX6 rho = seg45AccX5 rho + rho 41264 := by
      unfold seg45AccX6 seg45AccX5
      ring
    have hnexty : seg45AccY6 rho = seg45AccY5 rho + rho 41265 := by
      unfold seg45AccY6 seg45AccY5
      ring
    have ha0 : (rho 41256 + rho 41257) * (seg45AccX5 rho + seg45AccY5 rho) = rho 41258 := by
      unfold seg45AccX5 seg45AccY5
      linear_combination r3030
    have ha1 : rho 41257 * seg45AccX5 rho = rho 41259 := by
      unfold seg45AccX5
      linear_combination r3031
    have ha2 : rho 41256 * seg45AccY5 rho = rho 41260 := by
      unfold seg45AccY5
      linear_combination r3032
    have ha3 : 3021 * rho 41259 * rho 41260 = rho 41261 := by
      linear_combination r3033
    have ha4 : rho 41262 * (1 + rho 41261) = rho 41259 + rho 41260 := by
      linear_combination r3034
    have ha5 : rho 41263 * (1 - rho 41261) = rho 41258 - rho 41259 - rho 41260 := by
      linear_combination r3035
    have haddx :
        rho 41262 * (1 + 3021 * (rho 41257 * seg45AccX5 rho) * (rho 41256 * seg45AccY5 rho)) =
          rho 41257 * seg45AccX5 rho + rho 41256 * seg45AccY5 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41263 * (1 - 3021 * (rho 41257 * seg45AccX5 rho) * (rho 41256 * seg45AccY5 rho)) =
          (-1) * (rho 41257 * seg45AccX5 rho) - rho 41256 * seg45AccY5 rho +
            (seg45AccY5 rho - seg45AccX5 rho * (-1)) * (rho 41256 + rho 41257) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41263 * (1 - rho 41261) = rho 41258 - rho 41259 - rho 41260 := ha5
        _ = (-1) * rho 41259 - rho 41260 + (seg45AccY5 rho - seg45AccX5 rho * (-1)) * (rho 41256 + rho 41257) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX6 rho = seg45AccX5 rho - Bool.toZMod bit * (seg45AccX5 rho - rho 41262) := by
      have hd : rho 41264 = Bool.toZMod bit * (rho 41262 - seg45AccX5 rho) := by
        rw [← hbit]
        unfold seg45AccX5
        linear_combination -r3036
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY6 rho = seg45AccY5 rho - Bool.toZMod bit * (seg45AccY5 rho - rho 41263) := by
      have hd : rho 41265 = Bool.toZMod bit * (rho 41263 - seg45AccY5 rho) := by
        rw [← hbit]
        unfold seg45AccY5
        linear_combination -r3037
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41256 * rho 41257 = rho 41266 := by linear_combination r3038
    have hd1 : rho 41256 * rho 41256 = rho 41267 := by linear_combination r3039
    have hd2 : rho 41257 * rho 41257 = rho 41268 := by linear_combination r3040
    have hd3 : rho 41269 * (rho 41257 * rho 41257 + rho 41256 * rho 41256 * (-1)) = 2 * (rho 41256 * rho 41257) := by
      rw [hd0, hd1, hd2]
      linear_combination r3041
    have hd4 : rho 41270 * (2 - (rho 41257 * rho 41257 + rho 41256 * rho 41256 * (-1))) = rho 41257 * rho 41257 - rho 41256 * rho 41256 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3042
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX5 rho : Seg45.F), (seg45AccY5 rho : Seg45.F)⟩
      ⟨(rho 41256 : Seg45.F), (rho 41257 : Seg45.F)⟩
      ⟨(rho 41262 : Seg45.F), (rho 41263 : Seg45.F)⟩
      ⟨(seg45AccX6 rho : Seg45.F), (seg45AccY6 rho : Seg45.F)⟩
      ⟨(rho 41269 : Seg45.F), (rho 41270 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung5

theorem seg45_rows6 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3043 rho ∧ Seg45.relationRow3044 rho ∧ Seg45.relationRow3045 rho ∧ Seg45.relationRow3046 rho ∧ Seg45.relationRow3047 rho ∧ Seg45.relationRow3048 rho ∧ Seg45.relationRow3049 rho ∧ Seg45.relationRow3050 rho ∧ Seg45.relationRow3051 rho ∧ Seg45.relationRow3052 rho ∧ Seg45.relationRow3053 rho ∧ Seg45.relationRow3054 rho ∧ Seg45.relationRow3055 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart38 at p38
  rcases p38 with ⟨_, _, _, r3043, r3044, r3045, r3046, r3047, r3048, r3049, r3050, r3051, r3052, r3053, r3054, r3055, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3043, r3044, r3045, r3046, r3047, r3048, r3049, r3050, r3051, r3052, r3053, r3054, r3055⟩

theorem seg45_rung6 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40954 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX6 rho : Seg45.F), (seg45AccY6 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41269 : Seg45.F), (rho 41270 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX6 rho : Seg45.F), (seg45AccY6 rho : Seg45.F)⟩
        ⟨(rho 41269 : Seg45.F), (rho 41270 : Seg45.F)⟩
        ⟨(seg45AccX7 rho : Seg45.F), (seg45AccY7 rho : Seg45.F)⟩
        ⟨(rho 41282 : Seg45.F), (rho 41283 : Seg45.F)⟩ := by
  obtain ⟨r3043, r3044, r3045, r3046, r3047, r3048, r3049, r3050, r3051, r3052, r3053, r3054, r3055⟩ := seg45_rows6 rho h
  unfold Seg45.relationRow3043 at r3043
  unfold Seg45.relationRow3044 at r3044
  unfold Seg45.relationRow3045 at r3045
  unfold Seg45.relationRow3046 at r3046
  unfold Seg45.relationRow3047 at r3047
  unfold Seg45.relationRow3048 at r3048
  unfold Seg45.relationRow3049 at r3049
  unfold Seg45.relationRow3050 at r3050
  unfold Seg45.relationRow3051 at r3051
  unfold Seg45.relationRow3052 at r3052
  unfold Seg45.relationRow3053 at r3053
  unfold Seg45.relationRow3054 at r3054
  unfold Seg45.relationRow3055 at r3055
  have hrung6 (bit : Bool) (hbit : rho 40954 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX6 rho : Seg45.F), (seg45AccY6 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41269 : Seg45.F), (rho 41270 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX6 rho : Seg45.F), (seg45AccY6 rho : Seg45.F)⟩
        ⟨(rho 41269 : Seg45.F), (rho 41270 : Seg45.F)⟩
        ⟨(seg45AccX7 rho : Seg45.F), (seg45AccY7 rho : Seg45.F)⟩
        ⟨(rho 41282 : Seg45.F), (rho 41283 : Seg45.F)⟩ := by
    have hnextx : seg45AccX7 rho = seg45AccX6 rho + rho 41277 := by
      unfold seg45AccX7 seg45AccX6
      ring
    have hnexty : seg45AccY7 rho = seg45AccY6 rho + rho 41278 := by
      unfold seg45AccY7 seg45AccY6
      ring
    have ha0 : (rho 41269 + rho 41270) * (seg45AccX6 rho + seg45AccY6 rho) = rho 41271 := by
      unfold seg45AccX6 seg45AccY6
      linear_combination r3043
    have ha1 : rho 41270 * seg45AccX6 rho = rho 41272 := by
      unfold seg45AccX6
      linear_combination r3044
    have ha2 : rho 41269 * seg45AccY6 rho = rho 41273 := by
      unfold seg45AccY6
      linear_combination r3045
    have ha3 : 3021 * rho 41272 * rho 41273 = rho 41274 := by
      linear_combination r3046
    have ha4 : rho 41275 * (1 + rho 41274) = rho 41272 + rho 41273 := by
      linear_combination r3047
    have ha5 : rho 41276 * (1 - rho 41274) = rho 41271 - rho 41272 - rho 41273 := by
      linear_combination r3048
    have haddx :
        rho 41275 * (1 + 3021 * (rho 41270 * seg45AccX6 rho) * (rho 41269 * seg45AccY6 rho)) =
          rho 41270 * seg45AccX6 rho + rho 41269 * seg45AccY6 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41276 * (1 - 3021 * (rho 41270 * seg45AccX6 rho) * (rho 41269 * seg45AccY6 rho)) =
          (-1) * (rho 41270 * seg45AccX6 rho) - rho 41269 * seg45AccY6 rho +
            (seg45AccY6 rho - seg45AccX6 rho * (-1)) * (rho 41269 + rho 41270) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41276 * (1 - rho 41274) = rho 41271 - rho 41272 - rho 41273 := ha5
        _ = (-1) * rho 41272 - rho 41273 + (seg45AccY6 rho - seg45AccX6 rho * (-1)) * (rho 41269 + rho 41270) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX7 rho = seg45AccX6 rho - Bool.toZMod bit * (seg45AccX6 rho - rho 41275) := by
      have hd : rho 41277 = Bool.toZMod bit * (rho 41275 - seg45AccX6 rho) := by
        rw [← hbit]
        unfold seg45AccX6
        linear_combination -r3049
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY7 rho = seg45AccY6 rho - Bool.toZMod bit * (seg45AccY6 rho - rho 41276) := by
      have hd : rho 41278 = Bool.toZMod bit * (rho 41276 - seg45AccY6 rho) := by
        rw [← hbit]
        unfold seg45AccY6
        linear_combination -r3050
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41269 * rho 41270 = rho 41279 := by linear_combination r3051
    have hd1 : rho 41269 * rho 41269 = rho 41280 := by linear_combination r3052
    have hd2 : rho 41270 * rho 41270 = rho 41281 := by linear_combination r3053
    have hd3 : rho 41282 * (rho 41270 * rho 41270 + rho 41269 * rho 41269 * (-1)) = 2 * (rho 41269 * rho 41270) := by
      rw [hd0, hd1, hd2]
      linear_combination r3054
    have hd4 : rho 41283 * (2 - (rho 41270 * rho 41270 + rho 41269 * rho 41269 * (-1))) = rho 41270 * rho 41270 - rho 41269 * rho 41269 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3055
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX6 rho : Seg45.F), (seg45AccY6 rho : Seg45.F)⟩
      ⟨(rho 41269 : Seg45.F), (rho 41270 : Seg45.F)⟩
      ⟨(rho 41275 : Seg45.F), (rho 41276 : Seg45.F)⟩
      ⟨(seg45AccX7 rho : Seg45.F), (seg45AccY7 rho : Seg45.F)⟩
      ⟨(rho 41282 : Seg45.F), (rho 41283 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung6

theorem seg45_rows7 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3056 rho ∧ Seg45.relationRow3057 rho ∧ Seg45.relationRow3058 rho ∧ Seg45.relationRow3059 rho ∧ Seg45.relationRow3060 rho ∧ Seg45.relationRow3061 rho ∧ Seg45.relationRow3062 rho ∧ Seg45.relationRow3063 rho ∧ Seg45.relationRow3064 rho ∧ Seg45.relationRow3065 rho ∧ Seg45.relationRow3066 rho ∧ Seg45.relationRow3067 rho ∧ Seg45.relationRow3068 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3056, r3057, r3058, r3059, r3060, r3061, r3062, r3063, r3064, r3065, r3066, r3067, r3068, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3056, r3057, r3058, r3059, r3060, r3061, r3062, r3063, r3064, r3065, r3066, r3067, r3068⟩

theorem seg45_rung7 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40955 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX7 rho : Seg45.F), (seg45AccY7 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41282 : Seg45.F), (rho 41283 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX7 rho : Seg45.F), (seg45AccY7 rho : Seg45.F)⟩
        ⟨(rho 41282 : Seg45.F), (rho 41283 : Seg45.F)⟩
        ⟨(seg45AccX8 rho : Seg45.F), (seg45AccY8 rho : Seg45.F)⟩
        ⟨(rho 41295 : Seg45.F), (rho 41296 : Seg45.F)⟩ := by
  obtain ⟨r3056, r3057, r3058, r3059, r3060, r3061, r3062, r3063, r3064, r3065, r3066, r3067, r3068⟩ := seg45_rows7 rho h
  unfold Seg45.relationRow3056 at r3056
  unfold Seg45.relationRow3057 at r3057
  unfold Seg45.relationRow3058 at r3058
  unfold Seg45.relationRow3059 at r3059
  unfold Seg45.relationRow3060 at r3060
  unfold Seg45.relationRow3061 at r3061
  unfold Seg45.relationRow3062 at r3062
  unfold Seg45.relationRow3063 at r3063
  unfold Seg45.relationRow3064 at r3064
  unfold Seg45.relationRow3065 at r3065
  unfold Seg45.relationRow3066 at r3066
  unfold Seg45.relationRow3067 at r3067
  unfold Seg45.relationRow3068 at r3068
  have hrung7 (bit : Bool) (hbit : rho 40955 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX7 rho : Seg45.F), (seg45AccY7 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41282 : Seg45.F), (rho 41283 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX7 rho : Seg45.F), (seg45AccY7 rho : Seg45.F)⟩
        ⟨(rho 41282 : Seg45.F), (rho 41283 : Seg45.F)⟩
        ⟨(seg45AccX8 rho : Seg45.F), (seg45AccY8 rho : Seg45.F)⟩
        ⟨(rho 41295 : Seg45.F), (rho 41296 : Seg45.F)⟩ := by
    have hnextx : seg45AccX8 rho = seg45AccX7 rho + rho 41290 := by
      unfold seg45AccX8 seg45AccX7
      ring
    have hnexty : seg45AccY8 rho = seg45AccY7 rho + rho 41291 := by
      unfold seg45AccY8 seg45AccY7
      ring
    have ha0 : (rho 41282 + rho 41283) * (seg45AccX7 rho + seg45AccY7 rho) = rho 41284 := by
      unfold seg45AccX7 seg45AccY7
      linear_combination r3056
    have ha1 : rho 41283 * seg45AccX7 rho = rho 41285 := by
      unfold seg45AccX7
      linear_combination r3057
    have ha2 : rho 41282 * seg45AccY7 rho = rho 41286 := by
      unfold seg45AccY7
      linear_combination r3058
    have ha3 : 3021 * rho 41285 * rho 41286 = rho 41287 := by
      linear_combination r3059
    have ha4 : rho 41288 * (1 + rho 41287) = rho 41285 + rho 41286 := by
      linear_combination r3060
    have ha5 : rho 41289 * (1 - rho 41287) = rho 41284 - rho 41285 - rho 41286 := by
      linear_combination r3061
    have haddx :
        rho 41288 * (1 + 3021 * (rho 41283 * seg45AccX7 rho) * (rho 41282 * seg45AccY7 rho)) =
          rho 41283 * seg45AccX7 rho + rho 41282 * seg45AccY7 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41289 * (1 - 3021 * (rho 41283 * seg45AccX7 rho) * (rho 41282 * seg45AccY7 rho)) =
          (-1) * (rho 41283 * seg45AccX7 rho) - rho 41282 * seg45AccY7 rho +
            (seg45AccY7 rho - seg45AccX7 rho * (-1)) * (rho 41282 + rho 41283) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41289 * (1 - rho 41287) = rho 41284 - rho 41285 - rho 41286 := ha5
        _ = (-1) * rho 41285 - rho 41286 + (seg45AccY7 rho - seg45AccX7 rho * (-1)) * (rho 41282 + rho 41283) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX8 rho = seg45AccX7 rho - Bool.toZMod bit * (seg45AccX7 rho - rho 41288) := by
      have hd : rho 41290 = Bool.toZMod bit * (rho 41288 - seg45AccX7 rho) := by
        rw [← hbit]
        unfold seg45AccX7
        linear_combination -r3062
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY8 rho = seg45AccY7 rho - Bool.toZMod bit * (seg45AccY7 rho - rho 41289) := by
      have hd : rho 41291 = Bool.toZMod bit * (rho 41289 - seg45AccY7 rho) := by
        rw [← hbit]
        unfold seg45AccY7
        linear_combination -r3063
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41282 * rho 41283 = rho 41292 := by linear_combination r3064
    have hd1 : rho 41282 * rho 41282 = rho 41293 := by linear_combination r3065
    have hd2 : rho 41283 * rho 41283 = rho 41294 := by linear_combination r3066
    have hd3 : rho 41295 * (rho 41283 * rho 41283 + rho 41282 * rho 41282 * (-1)) = 2 * (rho 41282 * rho 41283) := by
      rw [hd0, hd1, hd2]
      linear_combination r3067
    have hd4 : rho 41296 * (2 - (rho 41283 * rho 41283 + rho 41282 * rho 41282 * (-1))) = rho 41283 * rho 41283 - rho 41282 * rho 41282 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3068
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX7 rho : Seg45.F), (seg45AccY7 rho : Seg45.F)⟩
      ⟨(rho 41282 : Seg45.F), (rho 41283 : Seg45.F)⟩
      ⟨(rho 41288 : Seg45.F), (rho 41289 : Seg45.F)⟩
      ⟨(seg45AccX8 rho : Seg45.F), (seg45AccY8 rho : Seg45.F)⟩
      ⟨(rho 41295 : Seg45.F), (rho 41296 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung7

theorem seg45_rows8 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3069 rho ∧ Seg45.relationRow3070 rho ∧ Seg45.relationRow3071 rho ∧ Seg45.relationRow3072 rho ∧ Seg45.relationRow3073 rho ∧ Seg45.relationRow3074 rho ∧ Seg45.relationRow3075 rho ∧ Seg45.relationRow3076 rho ∧ Seg45.relationRow3077 rho ∧ Seg45.relationRow3078 rho ∧ Seg45.relationRow3079 rho ∧ Seg45.relationRow3080 rho ∧ Seg45.relationRow3081 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3069, r3070, r3071, r3072, r3073, r3074, r3075, r3076, r3077, r3078, r3079, r3080, r3081, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3069, r3070, r3071, r3072, r3073, r3074, r3075, r3076, r3077, r3078, r3079, r3080, r3081⟩

theorem seg45_rung8 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40956 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX8 rho : Seg45.F), (seg45AccY8 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41295 : Seg45.F), (rho 41296 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX8 rho : Seg45.F), (seg45AccY8 rho : Seg45.F)⟩
        ⟨(rho 41295 : Seg45.F), (rho 41296 : Seg45.F)⟩
        ⟨(seg45AccX9 rho : Seg45.F), (seg45AccY9 rho : Seg45.F)⟩
        ⟨(rho 41308 : Seg45.F), (rho 41309 : Seg45.F)⟩ := by
  obtain ⟨r3069, r3070, r3071, r3072, r3073, r3074, r3075, r3076, r3077, r3078, r3079, r3080, r3081⟩ := seg45_rows8 rho h
  unfold Seg45.relationRow3069 at r3069
  unfold Seg45.relationRow3070 at r3070
  unfold Seg45.relationRow3071 at r3071
  unfold Seg45.relationRow3072 at r3072
  unfold Seg45.relationRow3073 at r3073
  unfold Seg45.relationRow3074 at r3074
  unfold Seg45.relationRow3075 at r3075
  unfold Seg45.relationRow3076 at r3076
  unfold Seg45.relationRow3077 at r3077
  unfold Seg45.relationRow3078 at r3078
  unfold Seg45.relationRow3079 at r3079
  unfold Seg45.relationRow3080 at r3080
  unfold Seg45.relationRow3081 at r3081
  have hrung8 (bit : Bool) (hbit : rho 40956 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX8 rho : Seg45.F), (seg45AccY8 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41295 : Seg45.F), (rho 41296 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX8 rho : Seg45.F), (seg45AccY8 rho : Seg45.F)⟩
        ⟨(rho 41295 : Seg45.F), (rho 41296 : Seg45.F)⟩
        ⟨(seg45AccX9 rho : Seg45.F), (seg45AccY9 rho : Seg45.F)⟩
        ⟨(rho 41308 : Seg45.F), (rho 41309 : Seg45.F)⟩ := by
    have hnextx : seg45AccX9 rho = seg45AccX8 rho + rho 41303 := by
      unfold seg45AccX9 seg45AccX8
      ring
    have hnexty : seg45AccY9 rho = seg45AccY8 rho + rho 41304 := by
      unfold seg45AccY9 seg45AccY8
      ring
    have ha0 : (rho 41295 + rho 41296) * (seg45AccX8 rho + seg45AccY8 rho) = rho 41297 := by
      unfold seg45AccX8 seg45AccY8
      linear_combination r3069
    have ha1 : rho 41296 * seg45AccX8 rho = rho 41298 := by
      unfold seg45AccX8
      linear_combination r3070
    have ha2 : rho 41295 * seg45AccY8 rho = rho 41299 := by
      unfold seg45AccY8
      linear_combination r3071
    have ha3 : 3021 * rho 41298 * rho 41299 = rho 41300 := by
      linear_combination r3072
    have ha4 : rho 41301 * (1 + rho 41300) = rho 41298 + rho 41299 := by
      linear_combination r3073
    have ha5 : rho 41302 * (1 - rho 41300) = rho 41297 - rho 41298 - rho 41299 := by
      linear_combination r3074
    have haddx :
        rho 41301 * (1 + 3021 * (rho 41296 * seg45AccX8 rho) * (rho 41295 * seg45AccY8 rho)) =
          rho 41296 * seg45AccX8 rho + rho 41295 * seg45AccY8 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41302 * (1 - 3021 * (rho 41296 * seg45AccX8 rho) * (rho 41295 * seg45AccY8 rho)) =
          (-1) * (rho 41296 * seg45AccX8 rho) - rho 41295 * seg45AccY8 rho +
            (seg45AccY8 rho - seg45AccX8 rho * (-1)) * (rho 41295 + rho 41296) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41302 * (1 - rho 41300) = rho 41297 - rho 41298 - rho 41299 := ha5
        _ = (-1) * rho 41298 - rho 41299 + (seg45AccY8 rho - seg45AccX8 rho * (-1)) * (rho 41295 + rho 41296) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX9 rho = seg45AccX8 rho - Bool.toZMod bit * (seg45AccX8 rho - rho 41301) := by
      have hd : rho 41303 = Bool.toZMod bit * (rho 41301 - seg45AccX8 rho) := by
        rw [← hbit]
        unfold seg45AccX8
        linear_combination -r3075
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY9 rho = seg45AccY8 rho - Bool.toZMod bit * (seg45AccY8 rho - rho 41302) := by
      have hd : rho 41304 = Bool.toZMod bit * (rho 41302 - seg45AccY8 rho) := by
        rw [← hbit]
        unfold seg45AccY8
        linear_combination -r3076
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41295 * rho 41296 = rho 41305 := by linear_combination r3077
    have hd1 : rho 41295 * rho 41295 = rho 41306 := by linear_combination r3078
    have hd2 : rho 41296 * rho 41296 = rho 41307 := by linear_combination r3079
    have hd3 : rho 41308 * (rho 41296 * rho 41296 + rho 41295 * rho 41295 * (-1)) = 2 * (rho 41295 * rho 41296) := by
      rw [hd0, hd1, hd2]
      linear_combination r3080
    have hd4 : rho 41309 * (2 - (rho 41296 * rho 41296 + rho 41295 * rho 41295 * (-1))) = rho 41296 * rho 41296 - rho 41295 * rho 41295 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3081
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX8 rho : Seg45.F), (seg45AccY8 rho : Seg45.F)⟩
      ⟨(rho 41295 : Seg45.F), (rho 41296 : Seg45.F)⟩
      ⟨(rho 41301 : Seg45.F), (rho 41302 : Seg45.F)⟩
      ⟨(seg45AccX9 rho : Seg45.F), (seg45AccY9 rho : Seg45.F)⟩
      ⟨(rho 41308 : Seg45.F), (rho 41309 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung8

theorem seg45_rows9 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3082 rho ∧ Seg45.relationRow3083 rho ∧ Seg45.relationRow3084 rho ∧ Seg45.relationRow3085 rho ∧ Seg45.relationRow3086 rho ∧ Seg45.relationRow3087 rho ∧ Seg45.relationRow3088 rho ∧ Seg45.relationRow3089 rho ∧ Seg45.relationRow3090 rho ∧ Seg45.relationRow3091 rho ∧ Seg45.relationRow3092 rho ∧ Seg45.relationRow3093 rho ∧ Seg45.relationRow3094 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3082, r3083, r3084, r3085, r3086, r3087, r3088, r3089, r3090, r3091, r3092, r3093, r3094, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3082, r3083, r3084, r3085, r3086, r3087, r3088, r3089, r3090, r3091, r3092, r3093, r3094⟩

theorem seg45_rung9 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40957 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX9 rho : Seg45.F), (seg45AccY9 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41308 : Seg45.F), (rho 41309 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX9 rho : Seg45.F), (seg45AccY9 rho : Seg45.F)⟩
        ⟨(rho 41308 : Seg45.F), (rho 41309 : Seg45.F)⟩
        ⟨(seg45AccX10 rho : Seg45.F), (seg45AccY10 rho : Seg45.F)⟩
        ⟨(rho 41321 : Seg45.F), (rho 41322 : Seg45.F)⟩ := by
  obtain ⟨r3082, r3083, r3084, r3085, r3086, r3087, r3088, r3089, r3090, r3091, r3092, r3093, r3094⟩ := seg45_rows9 rho h
  unfold Seg45.relationRow3082 at r3082
  unfold Seg45.relationRow3083 at r3083
  unfold Seg45.relationRow3084 at r3084
  unfold Seg45.relationRow3085 at r3085
  unfold Seg45.relationRow3086 at r3086
  unfold Seg45.relationRow3087 at r3087
  unfold Seg45.relationRow3088 at r3088
  unfold Seg45.relationRow3089 at r3089
  unfold Seg45.relationRow3090 at r3090
  unfold Seg45.relationRow3091 at r3091
  unfold Seg45.relationRow3092 at r3092
  unfold Seg45.relationRow3093 at r3093
  unfold Seg45.relationRow3094 at r3094
  have hrung9 (bit : Bool) (hbit : rho 40957 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX9 rho : Seg45.F), (seg45AccY9 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41308 : Seg45.F), (rho 41309 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX9 rho : Seg45.F), (seg45AccY9 rho : Seg45.F)⟩
        ⟨(rho 41308 : Seg45.F), (rho 41309 : Seg45.F)⟩
        ⟨(seg45AccX10 rho : Seg45.F), (seg45AccY10 rho : Seg45.F)⟩
        ⟨(rho 41321 : Seg45.F), (rho 41322 : Seg45.F)⟩ := by
    have hnextx : seg45AccX10 rho = seg45AccX9 rho + rho 41316 := by
      unfold seg45AccX10 seg45AccX9
      ring
    have hnexty : seg45AccY10 rho = seg45AccY9 rho + rho 41317 := by
      unfold seg45AccY10 seg45AccY9
      ring
    have ha0 : (rho 41308 + rho 41309) * (seg45AccX9 rho + seg45AccY9 rho) = rho 41310 := by
      unfold seg45AccX9 seg45AccY9
      linear_combination r3082
    have ha1 : rho 41309 * seg45AccX9 rho = rho 41311 := by
      unfold seg45AccX9
      linear_combination r3083
    have ha2 : rho 41308 * seg45AccY9 rho = rho 41312 := by
      unfold seg45AccY9
      linear_combination r3084
    have ha3 : 3021 * rho 41311 * rho 41312 = rho 41313 := by
      linear_combination r3085
    have ha4 : rho 41314 * (1 + rho 41313) = rho 41311 + rho 41312 := by
      linear_combination r3086
    have ha5 : rho 41315 * (1 - rho 41313) = rho 41310 - rho 41311 - rho 41312 := by
      linear_combination r3087
    have haddx :
        rho 41314 * (1 + 3021 * (rho 41309 * seg45AccX9 rho) * (rho 41308 * seg45AccY9 rho)) =
          rho 41309 * seg45AccX9 rho + rho 41308 * seg45AccY9 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41315 * (1 - 3021 * (rho 41309 * seg45AccX9 rho) * (rho 41308 * seg45AccY9 rho)) =
          (-1) * (rho 41309 * seg45AccX9 rho) - rho 41308 * seg45AccY9 rho +
            (seg45AccY9 rho - seg45AccX9 rho * (-1)) * (rho 41308 + rho 41309) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41315 * (1 - rho 41313) = rho 41310 - rho 41311 - rho 41312 := ha5
        _ = (-1) * rho 41311 - rho 41312 + (seg45AccY9 rho - seg45AccX9 rho * (-1)) * (rho 41308 + rho 41309) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX10 rho = seg45AccX9 rho - Bool.toZMod bit * (seg45AccX9 rho - rho 41314) := by
      have hd : rho 41316 = Bool.toZMod bit * (rho 41314 - seg45AccX9 rho) := by
        rw [← hbit]
        unfold seg45AccX9
        linear_combination -r3088
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY10 rho = seg45AccY9 rho - Bool.toZMod bit * (seg45AccY9 rho - rho 41315) := by
      have hd : rho 41317 = Bool.toZMod bit * (rho 41315 - seg45AccY9 rho) := by
        rw [← hbit]
        unfold seg45AccY9
        linear_combination -r3089
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41308 * rho 41309 = rho 41318 := by linear_combination r3090
    have hd1 : rho 41308 * rho 41308 = rho 41319 := by linear_combination r3091
    have hd2 : rho 41309 * rho 41309 = rho 41320 := by linear_combination r3092
    have hd3 : rho 41321 * (rho 41309 * rho 41309 + rho 41308 * rho 41308 * (-1)) = 2 * (rho 41308 * rho 41309) := by
      rw [hd0, hd1, hd2]
      linear_combination r3093
    have hd4 : rho 41322 * (2 - (rho 41309 * rho 41309 + rho 41308 * rho 41308 * (-1))) = rho 41309 * rho 41309 - rho 41308 * rho 41308 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3094
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX9 rho : Seg45.F), (seg45AccY9 rho : Seg45.F)⟩
      ⟨(rho 41308 : Seg45.F), (rho 41309 : Seg45.F)⟩
      ⟨(rho 41314 : Seg45.F), (rho 41315 : Seg45.F)⟩
      ⟨(seg45AccX10 rho : Seg45.F), (seg45AccY10 rho : Seg45.F)⟩
      ⟨(rho 41321 : Seg45.F), (rho 41322 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung9

theorem seg45_rows10 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3095 rho ∧ Seg45.relationRow3096 rho ∧ Seg45.relationRow3097 rho ∧ Seg45.relationRow3098 rho ∧ Seg45.relationRow3099 rho ∧ Seg45.relationRow3100 rho ∧ Seg45.relationRow3101 rho ∧ Seg45.relationRow3102 rho ∧ Seg45.relationRow3103 rho ∧ Seg45.relationRow3104 rho ∧ Seg45.relationRow3105 rho ∧ Seg45.relationRow3106 rho ∧ Seg45.relationRow3107 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3095, r3096, r3097, r3098, r3099, r3100, r3101, r3102, r3103, r3104, r3105, r3106, r3107, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3095, r3096, r3097, r3098, r3099, r3100, r3101, r3102, r3103, r3104, r3105, r3106, r3107⟩

theorem seg45_rung10 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40958 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX10 rho : Seg45.F), (seg45AccY10 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41321 : Seg45.F), (rho 41322 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX10 rho : Seg45.F), (seg45AccY10 rho : Seg45.F)⟩
        ⟨(rho 41321 : Seg45.F), (rho 41322 : Seg45.F)⟩
        ⟨(seg45AccX11 rho : Seg45.F), (seg45AccY11 rho : Seg45.F)⟩
        ⟨(rho 41334 : Seg45.F), (rho 41335 : Seg45.F)⟩ := by
  obtain ⟨r3095, r3096, r3097, r3098, r3099, r3100, r3101, r3102, r3103, r3104, r3105, r3106, r3107⟩ := seg45_rows10 rho h
  unfold Seg45.relationRow3095 at r3095
  unfold Seg45.relationRow3096 at r3096
  unfold Seg45.relationRow3097 at r3097
  unfold Seg45.relationRow3098 at r3098
  unfold Seg45.relationRow3099 at r3099
  unfold Seg45.relationRow3100 at r3100
  unfold Seg45.relationRow3101 at r3101
  unfold Seg45.relationRow3102 at r3102
  unfold Seg45.relationRow3103 at r3103
  unfold Seg45.relationRow3104 at r3104
  unfold Seg45.relationRow3105 at r3105
  unfold Seg45.relationRow3106 at r3106
  unfold Seg45.relationRow3107 at r3107
  have hrung10 (bit : Bool) (hbit : rho 40958 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX10 rho : Seg45.F), (seg45AccY10 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41321 : Seg45.F), (rho 41322 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX10 rho : Seg45.F), (seg45AccY10 rho : Seg45.F)⟩
        ⟨(rho 41321 : Seg45.F), (rho 41322 : Seg45.F)⟩
        ⟨(seg45AccX11 rho : Seg45.F), (seg45AccY11 rho : Seg45.F)⟩
        ⟨(rho 41334 : Seg45.F), (rho 41335 : Seg45.F)⟩ := by
    have hnextx : seg45AccX11 rho = seg45AccX10 rho + rho 41329 := by
      unfold seg45AccX11 seg45AccX10
      ring
    have hnexty : seg45AccY11 rho = seg45AccY10 rho + rho 41330 := by
      unfold seg45AccY11 seg45AccY10
      ring
    have ha0 : (rho 41321 + rho 41322) * (seg45AccX10 rho + seg45AccY10 rho) = rho 41323 := by
      unfold seg45AccX10 seg45AccY10
      linear_combination r3095
    have ha1 : rho 41322 * seg45AccX10 rho = rho 41324 := by
      unfold seg45AccX10
      linear_combination r3096
    have ha2 : rho 41321 * seg45AccY10 rho = rho 41325 := by
      unfold seg45AccY10
      linear_combination r3097
    have ha3 : 3021 * rho 41324 * rho 41325 = rho 41326 := by
      linear_combination r3098
    have ha4 : rho 41327 * (1 + rho 41326) = rho 41324 + rho 41325 := by
      linear_combination r3099
    have ha5 : rho 41328 * (1 - rho 41326) = rho 41323 - rho 41324 - rho 41325 := by
      linear_combination r3100
    have haddx :
        rho 41327 * (1 + 3021 * (rho 41322 * seg45AccX10 rho) * (rho 41321 * seg45AccY10 rho)) =
          rho 41322 * seg45AccX10 rho + rho 41321 * seg45AccY10 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41328 * (1 - 3021 * (rho 41322 * seg45AccX10 rho) * (rho 41321 * seg45AccY10 rho)) =
          (-1) * (rho 41322 * seg45AccX10 rho) - rho 41321 * seg45AccY10 rho +
            (seg45AccY10 rho - seg45AccX10 rho * (-1)) * (rho 41321 + rho 41322) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41328 * (1 - rho 41326) = rho 41323 - rho 41324 - rho 41325 := ha5
        _ = (-1) * rho 41324 - rho 41325 + (seg45AccY10 rho - seg45AccX10 rho * (-1)) * (rho 41321 + rho 41322) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX11 rho = seg45AccX10 rho - Bool.toZMod bit * (seg45AccX10 rho - rho 41327) := by
      have hd : rho 41329 = Bool.toZMod bit * (rho 41327 - seg45AccX10 rho) := by
        rw [← hbit]
        unfold seg45AccX10
        linear_combination -r3101
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY11 rho = seg45AccY10 rho - Bool.toZMod bit * (seg45AccY10 rho - rho 41328) := by
      have hd : rho 41330 = Bool.toZMod bit * (rho 41328 - seg45AccY10 rho) := by
        rw [← hbit]
        unfold seg45AccY10
        linear_combination -r3102
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41321 * rho 41322 = rho 41331 := by linear_combination r3103
    have hd1 : rho 41321 * rho 41321 = rho 41332 := by linear_combination r3104
    have hd2 : rho 41322 * rho 41322 = rho 41333 := by linear_combination r3105
    have hd3 : rho 41334 * (rho 41322 * rho 41322 + rho 41321 * rho 41321 * (-1)) = 2 * (rho 41321 * rho 41322) := by
      rw [hd0, hd1, hd2]
      linear_combination r3106
    have hd4 : rho 41335 * (2 - (rho 41322 * rho 41322 + rho 41321 * rho 41321 * (-1))) = rho 41322 * rho 41322 - rho 41321 * rho 41321 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3107
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX10 rho : Seg45.F), (seg45AccY10 rho : Seg45.F)⟩
      ⟨(rho 41321 : Seg45.F), (rho 41322 : Seg45.F)⟩
      ⟨(rho 41327 : Seg45.F), (rho 41328 : Seg45.F)⟩
      ⟨(seg45AccX11 rho : Seg45.F), (seg45AccY11 rho : Seg45.F)⟩
      ⟨(rho 41334 : Seg45.F), (rho 41335 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung10

theorem seg45_hstep_c0 (rho : Nat -> Seg45.F) (h : Seg45.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (40948 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 0 ≤ i → i < 11 →
      EdwardsBridge.onCurve (seg45LadderAccState rho i) →
      EdwardsBridge.onCurve (seg45LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg45LadderAccState rho i) (seg45LadderCurState rho i)
        (seg45LadderAccState rho (i + 1)) (seg45LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg45_rung0 rho h bits[0]! (hbitAt 0 (by omega)) hacc hcur
  · exact seg45_rung1 rho h bits[1]! (hbitAt 1 (by omega)) hacc hcur
  · exact seg45_rung2 rho h bits[2]! (hbitAt 2 (by omega)) hacc hcur
  · exact seg45_rung3 rho h bits[3]! (hbitAt 3 (by omega)) hacc hcur
  · exact seg45_rung4 rho h bits[4]! (hbitAt 4 (by omega)) hacc hcur
  · exact seg45_rung5 rho h bits[5]! (hbitAt 5 (by omega)) hacc hcur
  · exact seg45_rung6 rho h bits[6]! (hbitAt 6 (by omega)) hacc hcur
  · exact seg45_rung7 rho h bits[7]! (hbitAt 7 (by omega)) hacc hcur
  · exact seg45_rung8 rho h bits[8]! (hbitAt 8 (by omega)) hacc hcur
  · exact seg45_rung9 rho h bits[9]! (hbitAt 9 (by omega)) hacc hcur
  · exact seg45_rung10 rho h bits[10]! (hbitAt 10 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
