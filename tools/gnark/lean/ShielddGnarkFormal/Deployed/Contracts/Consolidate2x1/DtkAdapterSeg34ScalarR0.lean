import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg34_rung0 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 33992 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX0 rho : Seg34.F), (seg34AccY0 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 107 : Seg34.F), (rho 108 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX0 rho : Seg34.F), (seg34AccY0 rho : Seg34.F)⟩
        ⟨(rho 107 : Seg34.F), (rho 108 : Seg34.F)⟩
        ⟨(seg34AccX1 rho : Seg34.F), (seg34AccY1 rho : Seg34.F)⟩
        ⟨(rho 34248 : Seg34.F), (rho 34249 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, r2971, r2972, r2973, r2974, r2975, r2976, r2977, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow2971 at r2971
  unfold Seg34.relationRow2972 at r2972
  unfold Seg34.relationRow2973 at r2973
  unfold Seg34.relationRow2974 at r2974
  unfold Seg34.relationRow2975 at r2975
  unfold Seg34.relationRow2976 at r2976
  unfold Seg34.relationRow2977 at r2977
  have hrung0 (bit : Bool) (hbit : rho 33992 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX0 rho : Seg34.F), (seg34AccY0 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 107 : Seg34.F), (rho 108 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX0 rho : Seg34.F), (seg34AccY0 rho : Seg34.F)⟩
        ⟨(rho 107 : Seg34.F), (rho 108 : Seg34.F)⟩
        ⟨(seg34AccX1 rho : Seg34.F), (seg34AccY1 rho : Seg34.F)⟩
        ⟨(rho 34248 : Seg34.F), (rho 34249 : Seg34.F)⟩ := by
    have haddx :
        rho 107 * (1 + 3021 * (rho 108 * seg34AccX0 rho) * (rho 107 * seg34AccY0 rho)) =
          rho 108 * seg34AccX0 rho + rho 107 * seg34AccY0 rho := by
      unfold seg34AccX0 seg34AccY0
      ring
    have haddy :
        rho 108 * (1 - 3021 * (rho 108 * seg34AccX0 rho) * (rho 107 * seg34AccY0 rho)) =
          (-1) * (rho 108 * seg34AccX0 rho) - rho 107 * seg34AccY0 rho +
            (seg34AccY0 rho - seg34AccX0 rho * (-1)) * (rho 107 + rho 108) := by
      unfold seg34AccX0 seg34AccY0
      ring
    have hselx : seg34AccX1 rho = seg34AccX0 rho - Bool.toZMod bit * (seg34AccX0 rho - rho 107) := by
      have hd : rho 34243 = Bool.toZMod bit * (rho 107 - seg34AccX0 rho) := by
        rw [← hbit, seg34LadderFlatX0_eq]
        unfold seg34LadderFlatX0
        linear_combination -r2971
      unfold seg34AccX1
      linear_combination hd
    have hsely : seg34AccY1 rho = seg34AccY0 rho - Bool.toZMod bit * (seg34AccY0 rho - rho 108) := by
      have hd : rho 34244 = Bool.toZMod bit * (rho 108 - seg34AccY0 rho) := by
        rw [← hbit, seg34LadderFlatY0_eq]
        unfold seg34LadderFlatY0
        linear_combination -r2972
      unfold seg34AccY1
      linear_combination hd
    have hd0 : rho 107 * rho 108 = rho 34245 := by linear_combination r2973
    have hd1 : rho 107 * rho 107 = rho 34246 := by linear_combination r2974
    have hd2 : rho 108 * rho 108 = rho 34247 := by linear_combination r2975
    have hd3 : rho 34248 * (rho 108 * rho 108 + rho 107 * rho 107 * (-1)) = 2 * (rho 107 * rho 108) := by
      rw [hd0, hd1, hd2]
      linear_combination r2976
    have hd4 : rho 34249 * (2 - (rho 108 * rho 108 + rho 107 * rho 107 * (-1))) = rho 108 * rho 108 - rho 107 * rho 107 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2977
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX0 rho : Seg34.F), (seg34AccY0 rho : Seg34.F)⟩
      ⟨(rho 107 : Seg34.F), (rho 108 : Seg34.F)⟩
      ⟨(rho 107 : Seg34.F), (rho 108 : Seg34.F)⟩
      ⟨(seg34AccX1 rho : Seg34.F), (seg34AccY1 rho : Seg34.F)⟩
      ⟨(rho 34248 : Seg34.F), (rho 34249 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung0

theorem seg34_rung1 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 33993 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX1 rho : Seg34.F), (seg34AccY1 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34248 : Seg34.F), (rho 34249 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX1 rho : Seg34.F), (seg34AccY1 rho : Seg34.F)⟩
        ⟨(rho 34248 : Seg34.F), (rho 34249 : Seg34.F)⟩
        ⟨(seg34AccX2 rho : Seg34.F), (seg34AccY2 rho : Seg34.F)⟩
        ⟨(rho 34261 : Seg34.F), (rho 34262 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2978, r2979, r2980, r2981, r2982, r2983, r2984, r2985, r2986, r2987, r2988, r2989, r2990, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow2978 at r2978
  unfold Seg34.relationRow2979 at r2979
  unfold Seg34.relationRow2980 at r2980
  unfold Seg34.relationRow2981 at r2981
  unfold Seg34.relationRow2982 at r2982
  unfold Seg34.relationRow2983 at r2983
  unfold Seg34.relationRow2984 at r2984
  unfold Seg34.relationRow2985 at r2985
  unfold Seg34.relationRow2986 at r2986
  unfold Seg34.relationRow2987 at r2987
  unfold Seg34.relationRow2988 at r2988
  unfold Seg34.relationRow2989 at r2989
  unfold Seg34.relationRow2990 at r2990
  have hrung1 (bit : Bool) (hbit : rho 33993 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX1 rho : Seg34.F), (seg34AccY1 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34248 : Seg34.F), (rho 34249 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX1 rho : Seg34.F), (seg34AccY1 rho : Seg34.F)⟩
        ⟨(rho 34248 : Seg34.F), (rho 34249 : Seg34.F)⟩
        ⟨(seg34AccX2 rho : Seg34.F), (seg34AccY2 rho : Seg34.F)⟩
        ⟨(rho 34261 : Seg34.F), (rho 34262 : Seg34.F)⟩ := by
    have ha0 : (rho 34248 + rho 34249) * (seg34AccX1 rho + seg34AccY1 rho) = rho 34250 := by
      rw [seg34LadderFlatX1_eq, seg34LadderFlatY1_eq]
      unfold seg34LadderFlatX1 seg34LadderFlatY1
      linear_combination r2978
    have ha1 : rho 34249 * seg34AccX1 rho = rho 34251 := by
      rw [seg34LadderFlatX1_eq]
      unfold seg34LadderFlatX1
      linear_combination r2979
    have ha2 : rho 34248 * seg34AccY1 rho = rho 34252 := by
      rw [seg34LadderFlatY1_eq]
      unfold seg34LadderFlatY1
      linear_combination r2980
    have ha3 : 3021 * rho 34251 * rho 34252 = rho 34253 := by
      linear_combination r2981
    have ha4 : rho 34254 * (1 + rho 34253) = rho 34251 + rho 34252 := by
      linear_combination r2982
    have ha5 : rho 34255 * (1 - rho 34253) = rho 34250 - rho 34251 - rho 34252 := by
      linear_combination r2983
    have haddx :
        rho 34254 * (1 + 3021 * (rho 34249 * seg34AccX1 rho) * (rho 34248 * seg34AccY1 rho)) =
          rho 34249 * seg34AccX1 rho + rho 34248 * seg34AccY1 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34255 * (1 - 3021 * (rho 34249 * seg34AccX1 rho) * (rho 34248 * seg34AccY1 rho)) =
          (-1) * (rho 34249 * seg34AccX1 rho) - rho 34248 * seg34AccY1 rho +
            (seg34AccY1 rho - seg34AccX1 rho * (-1)) * (rho 34248 + rho 34249) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34255 * (1 - rho 34253) = rho 34250 - rho 34251 - rho 34252 := ha5
        _ = (-1) * rho 34251 - rho 34252 + (seg34AccY1 rho - seg34AccX1 rho * (-1)) * (rho 34248 + rho 34249) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX2 rho = seg34AccX1 rho - Bool.toZMod bit * (seg34AccX1 rho - rho 34254) := by
      have hd : rho 34256 = Bool.toZMod bit * (rho 34254 - seg34AccX1 rho) := by
        rw [← hbit, seg34LadderFlatX1_eq]
        unfold seg34LadderFlatX1
        linear_combination -r2984
      unfold seg34AccX2
      linear_combination hd
    have hsely : seg34AccY2 rho = seg34AccY1 rho - Bool.toZMod bit * (seg34AccY1 rho - rho 34255) := by
      have hd : rho 34257 = Bool.toZMod bit * (rho 34255 - seg34AccY1 rho) := by
        rw [← hbit, seg34LadderFlatY1_eq]
        unfold seg34LadderFlatY1
        linear_combination -r2985
      unfold seg34AccY2
      linear_combination hd
    have hd0 : rho 34248 * rho 34249 = rho 34258 := by linear_combination r2986
    have hd1 : rho 34248 * rho 34248 = rho 34259 := by linear_combination r2987
    have hd2 : rho 34249 * rho 34249 = rho 34260 := by linear_combination r2988
    have hd3 : rho 34261 * (rho 34249 * rho 34249 + rho 34248 * rho 34248 * (-1)) = 2 * (rho 34248 * rho 34249) := by
      rw [hd0, hd1, hd2]
      linear_combination r2989
    have hd4 : rho 34262 * (2 - (rho 34249 * rho 34249 + rho 34248 * rho 34248 * (-1))) = rho 34249 * rho 34249 - rho 34248 * rho 34248 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2990
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX1 rho : Seg34.F), (seg34AccY1 rho : Seg34.F)⟩
      ⟨(rho 34248 : Seg34.F), (rho 34249 : Seg34.F)⟩
      ⟨(rho 34254 : Seg34.F), (rho 34255 : Seg34.F)⟩
      ⟨(seg34AccX2 rho : Seg34.F), (seg34AccY2 rho : Seg34.F)⟩
      ⟨(rho 34261 : Seg34.F), (rho 34262 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung1

theorem seg34_rung2 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 33994 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX2 rho : Seg34.F), (seg34AccY2 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34261 : Seg34.F), (rho 34262 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX2 rho : Seg34.F), (seg34AccY2 rho : Seg34.F)⟩
        ⟨(rho 34261 : Seg34.F), (rho 34262 : Seg34.F)⟩
        ⟨(seg34AccX3 rho : Seg34.F), (seg34AccY3 rho : Seg34.F)⟩
        ⟨(rho 34274 : Seg34.F), (rho 34275 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2991, r2992, r2993, r2994, r2995, r2996, r2997, r2998, r2999, r3000, r3001, r3002, r3003, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow2991 at r2991
  unfold Seg34.relationRow2992 at r2992
  unfold Seg34.relationRow2993 at r2993
  unfold Seg34.relationRow2994 at r2994
  unfold Seg34.relationRow2995 at r2995
  unfold Seg34.relationRow2996 at r2996
  unfold Seg34.relationRow2997 at r2997
  unfold Seg34.relationRow2998 at r2998
  unfold Seg34.relationRow2999 at r2999
  unfold Seg34.relationRow3000 at r3000
  unfold Seg34.relationRow3001 at r3001
  unfold Seg34.relationRow3002 at r3002
  unfold Seg34.relationRow3003 at r3003
  have hrung2 (bit : Bool) (hbit : rho 33994 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX2 rho : Seg34.F), (seg34AccY2 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34261 : Seg34.F), (rho 34262 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX2 rho : Seg34.F), (seg34AccY2 rho : Seg34.F)⟩
        ⟨(rho 34261 : Seg34.F), (rho 34262 : Seg34.F)⟩
        ⟨(seg34AccX3 rho : Seg34.F), (seg34AccY3 rho : Seg34.F)⟩
        ⟨(rho 34274 : Seg34.F), (rho 34275 : Seg34.F)⟩ := by
    have ha0 : (rho 34261 + rho 34262) * (seg34AccX2 rho + seg34AccY2 rho) = rho 34263 := by
      rw [seg34LadderFlatX2_eq, seg34LadderFlatY2_eq]
      unfold seg34LadderFlatX2 seg34LadderFlatY2
      linear_combination r2991
    have ha1 : rho 34262 * seg34AccX2 rho = rho 34264 := by
      rw [seg34LadderFlatX2_eq]
      unfold seg34LadderFlatX2
      linear_combination r2992
    have ha2 : rho 34261 * seg34AccY2 rho = rho 34265 := by
      rw [seg34LadderFlatY2_eq]
      unfold seg34LadderFlatY2
      linear_combination r2993
    have ha3 : 3021 * rho 34264 * rho 34265 = rho 34266 := by
      linear_combination r2994
    have ha4 : rho 34267 * (1 + rho 34266) = rho 34264 + rho 34265 := by
      linear_combination r2995
    have ha5 : rho 34268 * (1 - rho 34266) = rho 34263 - rho 34264 - rho 34265 := by
      linear_combination r2996
    have haddx :
        rho 34267 * (1 + 3021 * (rho 34262 * seg34AccX2 rho) * (rho 34261 * seg34AccY2 rho)) =
          rho 34262 * seg34AccX2 rho + rho 34261 * seg34AccY2 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34268 * (1 - 3021 * (rho 34262 * seg34AccX2 rho) * (rho 34261 * seg34AccY2 rho)) =
          (-1) * (rho 34262 * seg34AccX2 rho) - rho 34261 * seg34AccY2 rho +
            (seg34AccY2 rho - seg34AccX2 rho * (-1)) * (rho 34261 + rho 34262) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34268 * (1 - rho 34266) = rho 34263 - rho 34264 - rho 34265 := ha5
        _ = (-1) * rho 34264 - rho 34265 + (seg34AccY2 rho - seg34AccX2 rho * (-1)) * (rho 34261 + rho 34262) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX3 rho = seg34AccX2 rho - Bool.toZMod bit * (seg34AccX2 rho - rho 34267) := by
      have hd : rho 34269 = Bool.toZMod bit * (rho 34267 - seg34AccX2 rho) := by
        rw [← hbit, seg34LadderFlatX2_eq]
        unfold seg34LadderFlatX2
        linear_combination -r2997
      unfold seg34AccX3
      linear_combination hd
    have hsely : seg34AccY3 rho = seg34AccY2 rho - Bool.toZMod bit * (seg34AccY2 rho - rho 34268) := by
      have hd : rho 34270 = Bool.toZMod bit * (rho 34268 - seg34AccY2 rho) := by
        rw [← hbit, seg34LadderFlatY2_eq]
        unfold seg34LadderFlatY2
        linear_combination -r2998
      unfold seg34AccY3
      linear_combination hd
    have hd0 : rho 34261 * rho 34262 = rho 34271 := by linear_combination r2999
    have hd1 : rho 34261 * rho 34261 = rho 34272 := by linear_combination r3000
    have hd2 : rho 34262 * rho 34262 = rho 34273 := by linear_combination r3001
    have hd3 : rho 34274 * (rho 34262 * rho 34262 + rho 34261 * rho 34261 * (-1)) = 2 * (rho 34261 * rho 34262) := by
      rw [hd0, hd1, hd2]
      linear_combination r3002
    have hd4 : rho 34275 * (2 - (rho 34262 * rho 34262 + rho 34261 * rho 34261 * (-1))) = rho 34262 * rho 34262 - rho 34261 * rho 34261 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3003
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX2 rho : Seg34.F), (seg34AccY2 rho : Seg34.F)⟩
      ⟨(rho 34261 : Seg34.F), (rho 34262 : Seg34.F)⟩
      ⟨(rho 34267 : Seg34.F), (rho 34268 : Seg34.F)⟩
      ⟨(seg34AccX3 rho : Seg34.F), (seg34AccY3 rho : Seg34.F)⟩
      ⟨(rho 34274 : Seg34.F), (rho 34275 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung2

theorem seg34_rung3 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 33995 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX3 rho : Seg34.F), (seg34AccY3 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34274 : Seg34.F), (rho 34275 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX3 rho : Seg34.F), (seg34AccY3 rho : Seg34.F)⟩
        ⟨(rho 34274 : Seg34.F), (rho 34275 : Seg34.F)⟩
        ⟨(seg34AccX4 rho : Seg34.F), (seg34AccY4 rho : Seg34.F)⟩
        ⟨(rho 34287 : Seg34.F), (rho 34288 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3004, r3005, r3006, r3007, r3008, r3009, r3010, r3011, r3012, r3013, r3014, r3015, r3016, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3004 at r3004
  unfold Seg34.relationRow3005 at r3005
  unfold Seg34.relationRow3006 at r3006
  unfold Seg34.relationRow3007 at r3007
  unfold Seg34.relationRow3008 at r3008
  unfold Seg34.relationRow3009 at r3009
  unfold Seg34.relationRow3010 at r3010
  unfold Seg34.relationRow3011 at r3011
  unfold Seg34.relationRow3012 at r3012
  unfold Seg34.relationRow3013 at r3013
  unfold Seg34.relationRow3014 at r3014
  unfold Seg34.relationRow3015 at r3015
  unfold Seg34.relationRow3016 at r3016
  have hrung3 (bit : Bool) (hbit : rho 33995 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX3 rho : Seg34.F), (seg34AccY3 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34274 : Seg34.F), (rho 34275 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX3 rho : Seg34.F), (seg34AccY3 rho : Seg34.F)⟩
        ⟨(rho 34274 : Seg34.F), (rho 34275 : Seg34.F)⟩
        ⟨(seg34AccX4 rho : Seg34.F), (seg34AccY4 rho : Seg34.F)⟩
        ⟨(rho 34287 : Seg34.F), (rho 34288 : Seg34.F)⟩ := by
    have ha0 : (rho 34274 + rho 34275) * (seg34AccX3 rho + seg34AccY3 rho) = rho 34276 := by
      rw [seg34LadderFlatX3_eq, seg34LadderFlatY3_eq]
      unfold seg34LadderFlatX3 seg34LadderFlatY3
      linear_combination r3004
    have ha1 : rho 34275 * seg34AccX3 rho = rho 34277 := by
      rw [seg34LadderFlatX3_eq]
      unfold seg34LadderFlatX3
      linear_combination r3005
    have ha2 : rho 34274 * seg34AccY3 rho = rho 34278 := by
      rw [seg34LadderFlatY3_eq]
      unfold seg34LadderFlatY3
      linear_combination r3006
    have ha3 : 3021 * rho 34277 * rho 34278 = rho 34279 := by
      linear_combination r3007
    have ha4 : rho 34280 * (1 + rho 34279) = rho 34277 + rho 34278 := by
      linear_combination r3008
    have ha5 : rho 34281 * (1 - rho 34279) = rho 34276 - rho 34277 - rho 34278 := by
      linear_combination r3009
    have haddx :
        rho 34280 * (1 + 3021 * (rho 34275 * seg34AccX3 rho) * (rho 34274 * seg34AccY3 rho)) =
          rho 34275 * seg34AccX3 rho + rho 34274 * seg34AccY3 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34281 * (1 - 3021 * (rho 34275 * seg34AccX3 rho) * (rho 34274 * seg34AccY3 rho)) =
          (-1) * (rho 34275 * seg34AccX3 rho) - rho 34274 * seg34AccY3 rho +
            (seg34AccY3 rho - seg34AccX3 rho * (-1)) * (rho 34274 + rho 34275) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34281 * (1 - rho 34279) = rho 34276 - rho 34277 - rho 34278 := ha5
        _ = (-1) * rho 34277 - rho 34278 + (seg34AccY3 rho - seg34AccX3 rho * (-1)) * (rho 34274 + rho 34275) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX4 rho = seg34AccX3 rho - Bool.toZMod bit * (seg34AccX3 rho - rho 34280) := by
      have hd : rho 34282 = Bool.toZMod bit * (rho 34280 - seg34AccX3 rho) := by
        rw [← hbit, seg34LadderFlatX3_eq]
        unfold seg34LadderFlatX3
        linear_combination -r3010
      unfold seg34AccX4
      linear_combination hd
    have hsely : seg34AccY4 rho = seg34AccY3 rho - Bool.toZMod bit * (seg34AccY3 rho - rho 34281) := by
      have hd : rho 34283 = Bool.toZMod bit * (rho 34281 - seg34AccY3 rho) := by
        rw [← hbit, seg34LadderFlatY3_eq]
        unfold seg34LadderFlatY3
        linear_combination -r3011
      unfold seg34AccY4
      linear_combination hd
    have hd0 : rho 34274 * rho 34275 = rho 34284 := by linear_combination r3012
    have hd1 : rho 34274 * rho 34274 = rho 34285 := by linear_combination r3013
    have hd2 : rho 34275 * rho 34275 = rho 34286 := by linear_combination r3014
    have hd3 : rho 34287 * (rho 34275 * rho 34275 + rho 34274 * rho 34274 * (-1)) = 2 * (rho 34274 * rho 34275) := by
      rw [hd0, hd1, hd2]
      linear_combination r3015
    have hd4 : rho 34288 * (2 - (rho 34275 * rho 34275 + rho 34274 * rho 34274 * (-1))) = rho 34275 * rho 34275 - rho 34274 * rho 34274 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3016
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX3 rho : Seg34.F), (seg34AccY3 rho : Seg34.F)⟩
      ⟨(rho 34274 : Seg34.F), (rho 34275 : Seg34.F)⟩
      ⟨(rho 34280 : Seg34.F), (rho 34281 : Seg34.F)⟩
      ⟨(seg34AccX4 rho : Seg34.F), (seg34AccY4 rho : Seg34.F)⟩
      ⟨(rho 34287 : Seg34.F), (rho 34288 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung3

theorem seg34_rung4 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 33996 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX4 rho : Seg34.F), (seg34AccY4 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34287 : Seg34.F), (rho 34288 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX4 rho : Seg34.F), (seg34AccY4 rho : Seg34.F)⟩
        ⟨(rho 34287 : Seg34.F), (rho 34288 : Seg34.F)⟩
        ⟨(seg34AccX5 rho : Seg34.F), (seg34AccY5 rho : Seg34.F)⟩
        ⟨(rho 34300 : Seg34.F), (rho 34301 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3017, r3018, r3019, r3020, r3021, r3022, r3023, r3024, r3025, r3026, r3027, r3028, r3029, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3017 at r3017
  unfold Seg34.relationRow3018 at r3018
  unfold Seg34.relationRow3019 at r3019
  unfold Seg34.relationRow3020 at r3020
  unfold Seg34.relationRow3021 at r3021
  unfold Seg34.relationRow3022 at r3022
  unfold Seg34.relationRow3023 at r3023
  unfold Seg34.relationRow3024 at r3024
  unfold Seg34.relationRow3025 at r3025
  unfold Seg34.relationRow3026 at r3026
  unfold Seg34.relationRow3027 at r3027
  unfold Seg34.relationRow3028 at r3028
  unfold Seg34.relationRow3029 at r3029
  have hrung4 (bit : Bool) (hbit : rho 33996 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX4 rho : Seg34.F), (seg34AccY4 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34287 : Seg34.F), (rho 34288 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX4 rho : Seg34.F), (seg34AccY4 rho : Seg34.F)⟩
        ⟨(rho 34287 : Seg34.F), (rho 34288 : Seg34.F)⟩
        ⟨(seg34AccX5 rho : Seg34.F), (seg34AccY5 rho : Seg34.F)⟩
        ⟨(rho 34300 : Seg34.F), (rho 34301 : Seg34.F)⟩ := by
    have ha0 : (rho 34287 + rho 34288) * (seg34AccX4 rho + seg34AccY4 rho) = rho 34289 := by
      rw [seg34LadderFlatX4_eq, seg34LadderFlatY4_eq]
      unfold seg34LadderFlatX4 seg34LadderFlatY4
      linear_combination r3017
    have ha1 : rho 34288 * seg34AccX4 rho = rho 34290 := by
      rw [seg34LadderFlatX4_eq]
      unfold seg34LadderFlatX4
      linear_combination r3018
    have ha2 : rho 34287 * seg34AccY4 rho = rho 34291 := by
      rw [seg34LadderFlatY4_eq]
      unfold seg34LadderFlatY4
      linear_combination r3019
    have ha3 : 3021 * rho 34290 * rho 34291 = rho 34292 := by
      linear_combination r3020
    have ha4 : rho 34293 * (1 + rho 34292) = rho 34290 + rho 34291 := by
      linear_combination r3021
    have ha5 : rho 34294 * (1 - rho 34292) = rho 34289 - rho 34290 - rho 34291 := by
      linear_combination r3022
    have haddx :
        rho 34293 * (1 + 3021 * (rho 34288 * seg34AccX4 rho) * (rho 34287 * seg34AccY4 rho)) =
          rho 34288 * seg34AccX4 rho + rho 34287 * seg34AccY4 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34294 * (1 - 3021 * (rho 34288 * seg34AccX4 rho) * (rho 34287 * seg34AccY4 rho)) =
          (-1) * (rho 34288 * seg34AccX4 rho) - rho 34287 * seg34AccY4 rho +
            (seg34AccY4 rho - seg34AccX4 rho * (-1)) * (rho 34287 + rho 34288) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34294 * (1 - rho 34292) = rho 34289 - rho 34290 - rho 34291 := ha5
        _ = (-1) * rho 34290 - rho 34291 + (seg34AccY4 rho - seg34AccX4 rho * (-1)) * (rho 34287 + rho 34288) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX5 rho = seg34AccX4 rho - Bool.toZMod bit * (seg34AccX4 rho - rho 34293) := by
      have hd : rho 34295 = Bool.toZMod bit * (rho 34293 - seg34AccX4 rho) := by
        rw [← hbit, seg34LadderFlatX4_eq]
        unfold seg34LadderFlatX4
        linear_combination -r3023
      unfold seg34AccX5
      linear_combination hd
    have hsely : seg34AccY5 rho = seg34AccY4 rho - Bool.toZMod bit * (seg34AccY4 rho - rho 34294) := by
      have hd : rho 34296 = Bool.toZMod bit * (rho 34294 - seg34AccY4 rho) := by
        rw [← hbit, seg34LadderFlatY4_eq]
        unfold seg34LadderFlatY4
        linear_combination -r3024
      unfold seg34AccY5
      linear_combination hd
    have hd0 : rho 34287 * rho 34288 = rho 34297 := by linear_combination r3025
    have hd1 : rho 34287 * rho 34287 = rho 34298 := by linear_combination r3026
    have hd2 : rho 34288 * rho 34288 = rho 34299 := by linear_combination r3027
    have hd3 : rho 34300 * (rho 34288 * rho 34288 + rho 34287 * rho 34287 * (-1)) = 2 * (rho 34287 * rho 34288) := by
      rw [hd0, hd1, hd2]
      linear_combination r3028
    have hd4 : rho 34301 * (2 - (rho 34288 * rho 34288 + rho 34287 * rho 34287 * (-1))) = rho 34288 * rho 34288 - rho 34287 * rho 34287 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3029
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX4 rho : Seg34.F), (seg34AccY4 rho : Seg34.F)⟩
      ⟨(rho 34287 : Seg34.F), (rho 34288 : Seg34.F)⟩
      ⟨(rho 34293 : Seg34.F), (rho 34294 : Seg34.F)⟩
      ⟨(seg34AccX5 rho : Seg34.F), (seg34AccY5 rho : Seg34.F)⟩
      ⟨(rho 34300 : Seg34.F), (rho 34301 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung4

theorem seg34_rung5 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 33997 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX5 rho : Seg34.F), (seg34AccY5 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34300 : Seg34.F), (rho 34301 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX5 rho : Seg34.F), (seg34AccY5 rho : Seg34.F)⟩
        ⟨(rho 34300 : Seg34.F), (rho 34301 : Seg34.F)⟩
        ⟨(seg34AccX6 rho : Seg34.F), (seg34AccY6 rho : Seg34.F)⟩
        ⟨(rho 34313 : Seg34.F), (rho 34314 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3030, r3031, r3032, r3033, r3034, r3035, r3036, r3037, r3038, r3039⟩
  unfold Seg34.relationPart38 at p38
  rcases p38 with ⟨r3040, r3041, r3042, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3030 at r3030
  unfold Seg34.relationRow3031 at r3031
  unfold Seg34.relationRow3032 at r3032
  unfold Seg34.relationRow3033 at r3033
  unfold Seg34.relationRow3034 at r3034
  unfold Seg34.relationRow3035 at r3035
  unfold Seg34.relationRow3036 at r3036
  unfold Seg34.relationRow3037 at r3037
  unfold Seg34.relationRow3038 at r3038
  unfold Seg34.relationRow3039 at r3039
  unfold Seg34.relationRow3040 at r3040
  unfold Seg34.relationRow3041 at r3041
  unfold Seg34.relationRow3042 at r3042
  have hrung5 (bit : Bool) (hbit : rho 33997 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX5 rho : Seg34.F), (seg34AccY5 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34300 : Seg34.F), (rho 34301 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX5 rho : Seg34.F), (seg34AccY5 rho : Seg34.F)⟩
        ⟨(rho 34300 : Seg34.F), (rho 34301 : Seg34.F)⟩
        ⟨(seg34AccX6 rho : Seg34.F), (seg34AccY6 rho : Seg34.F)⟩
        ⟨(rho 34313 : Seg34.F), (rho 34314 : Seg34.F)⟩ := by
    have ha0 : (rho 34300 + rho 34301) * (seg34AccX5 rho + seg34AccY5 rho) = rho 34302 := by
      rw [seg34LadderFlatX5_eq, seg34LadderFlatY5_eq]
      unfold seg34LadderFlatX5 seg34LadderFlatY5
      linear_combination r3030
    have ha1 : rho 34301 * seg34AccX5 rho = rho 34303 := by
      rw [seg34LadderFlatX5_eq]
      unfold seg34LadderFlatX5
      linear_combination r3031
    have ha2 : rho 34300 * seg34AccY5 rho = rho 34304 := by
      rw [seg34LadderFlatY5_eq]
      unfold seg34LadderFlatY5
      linear_combination r3032
    have ha3 : 3021 * rho 34303 * rho 34304 = rho 34305 := by
      linear_combination r3033
    have ha4 : rho 34306 * (1 + rho 34305) = rho 34303 + rho 34304 := by
      linear_combination r3034
    have ha5 : rho 34307 * (1 - rho 34305) = rho 34302 - rho 34303 - rho 34304 := by
      linear_combination r3035
    have haddx :
        rho 34306 * (1 + 3021 * (rho 34301 * seg34AccX5 rho) * (rho 34300 * seg34AccY5 rho)) =
          rho 34301 * seg34AccX5 rho + rho 34300 * seg34AccY5 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34307 * (1 - 3021 * (rho 34301 * seg34AccX5 rho) * (rho 34300 * seg34AccY5 rho)) =
          (-1) * (rho 34301 * seg34AccX5 rho) - rho 34300 * seg34AccY5 rho +
            (seg34AccY5 rho - seg34AccX5 rho * (-1)) * (rho 34300 + rho 34301) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34307 * (1 - rho 34305) = rho 34302 - rho 34303 - rho 34304 := ha5
        _ = (-1) * rho 34303 - rho 34304 + (seg34AccY5 rho - seg34AccX5 rho * (-1)) * (rho 34300 + rho 34301) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX6 rho = seg34AccX5 rho - Bool.toZMod bit * (seg34AccX5 rho - rho 34306) := by
      have hd : rho 34308 = Bool.toZMod bit * (rho 34306 - seg34AccX5 rho) := by
        rw [← hbit, seg34LadderFlatX5_eq]
        unfold seg34LadderFlatX5
        linear_combination -r3036
      unfold seg34AccX6
      linear_combination hd
    have hsely : seg34AccY6 rho = seg34AccY5 rho - Bool.toZMod bit * (seg34AccY5 rho - rho 34307) := by
      have hd : rho 34309 = Bool.toZMod bit * (rho 34307 - seg34AccY5 rho) := by
        rw [← hbit, seg34LadderFlatY5_eq]
        unfold seg34LadderFlatY5
        linear_combination -r3037
      unfold seg34AccY6
      linear_combination hd
    have hd0 : rho 34300 * rho 34301 = rho 34310 := by linear_combination r3038
    have hd1 : rho 34300 * rho 34300 = rho 34311 := by linear_combination r3039
    have hd2 : rho 34301 * rho 34301 = rho 34312 := by linear_combination r3040
    have hd3 : rho 34313 * (rho 34301 * rho 34301 + rho 34300 * rho 34300 * (-1)) = 2 * (rho 34300 * rho 34301) := by
      rw [hd0, hd1, hd2]
      linear_combination r3041
    have hd4 : rho 34314 * (2 - (rho 34301 * rho 34301 + rho 34300 * rho 34300 * (-1))) = rho 34301 * rho 34301 - rho 34300 * rho 34300 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3042
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX5 rho : Seg34.F), (seg34AccY5 rho : Seg34.F)⟩
      ⟨(rho 34300 : Seg34.F), (rho 34301 : Seg34.F)⟩
      ⟨(rho 34306 : Seg34.F), (rho 34307 : Seg34.F)⟩
      ⟨(seg34AccX6 rho : Seg34.F), (seg34AccY6 rho : Seg34.F)⟩
      ⟨(rho 34313 : Seg34.F), (rho 34314 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung5

theorem seg34_rung6 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 33998 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX6 rho : Seg34.F), (seg34AccY6 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34313 : Seg34.F), (rho 34314 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX6 rho : Seg34.F), (seg34AccY6 rho : Seg34.F)⟩
        ⟨(rho 34313 : Seg34.F), (rho 34314 : Seg34.F)⟩
        ⟨(seg34AccX7 rho : Seg34.F), (seg34AccY7 rho : Seg34.F)⟩
        ⟨(rho 34326 : Seg34.F), (rho 34327 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart38 at p38
  rcases p38 with ⟨_, _, _, r3043, r3044, r3045, r3046, r3047, r3048, r3049, r3050, r3051, r3052, r3053, r3054, r3055, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3043 at r3043
  unfold Seg34.relationRow3044 at r3044
  unfold Seg34.relationRow3045 at r3045
  unfold Seg34.relationRow3046 at r3046
  unfold Seg34.relationRow3047 at r3047
  unfold Seg34.relationRow3048 at r3048
  unfold Seg34.relationRow3049 at r3049
  unfold Seg34.relationRow3050 at r3050
  unfold Seg34.relationRow3051 at r3051
  unfold Seg34.relationRow3052 at r3052
  unfold Seg34.relationRow3053 at r3053
  unfold Seg34.relationRow3054 at r3054
  unfold Seg34.relationRow3055 at r3055
  have hrung6 (bit : Bool) (hbit : rho 33998 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX6 rho : Seg34.F), (seg34AccY6 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34313 : Seg34.F), (rho 34314 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX6 rho : Seg34.F), (seg34AccY6 rho : Seg34.F)⟩
        ⟨(rho 34313 : Seg34.F), (rho 34314 : Seg34.F)⟩
        ⟨(seg34AccX7 rho : Seg34.F), (seg34AccY7 rho : Seg34.F)⟩
        ⟨(rho 34326 : Seg34.F), (rho 34327 : Seg34.F)⟩ := by
    have ha0 : (rho 34313 + rho 34314) * (seg34AccX6 rho + seg34AccY6 rho) = rho 34315 := by
      rw [seg34LadderFlatX6_eq, seg34LadderFlatY6_eq]
      unfold seg34LadderFlatX6 seg34LadderFlatY6
      linear_combination r3043
    have ha1 : rho 34314 * seg34AccX6 rho = rho 34316 := by
      rw [seg34LadderFlatX6_eq]
      unfold seg34LadderFlatX6
      linear_combination r3044
    have ha2 : rho 34313 * seg34AccY6 rho = rho 34317 := by
      rw [seg34LadderFlatY6_eq]
      unfold seg34LadderFlatY6
      linear_combination r3045
    have ha3 : 3021 * rho 34316 * rho 34317 = rho 34318 := by
      linear_combination r3046
    have ha4 : rho 34319 * (1 + rho 34318) = rho 34316 + rho 34317 := by
      linear_combination r3047
    have ha5 : rho 34320 * (1 - rho 34318) = rho 34315 - rho 34316 - rho 34317 := by
      linear_combination r3048
    have haddx :
        rho 34319 * (1 + 3021 * (rho 34314 * seg34AccX6 rho) * (rho 34313 * seg34AccY6 rho)) =
          rho 34314 * seg34AccX6 rho + rho 34313 * seg34AccY6 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34320 * (1 - 3021 * (rho 34314 * seg34AccX6 rho) * (rho 34313 * seg34AccY6 rho)) =
          (-1) * (rho 34314 * seg34AccX6 rho) - rho 34313 * seg34AccY6 rho +
            (seg34AccY6 rho - seg34AccX6 rho * (-1)) * (rho 34313 + rho 34314) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34320 * (1 - rho 34318) = rho 34315 - rho 34316 - rho 34317 := ha5
        _ = (-1) * rho 34316 - rho 34317 + (seg34AccY6 rho - seg34AccX6 rho * (-1)) * (rho 34313 + rho 34314) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX7 rho = seg34AccX6 rho - Bool.toZMod bit * (seg34AccX6 rho - rho 34319) := by
      have hd : rho 34321 = Bool.toZMod bit * (rho 34319 - seg34AccX6 rho) := by
        rw [← hbit, seg34LadderFlatX6_eq]
        unfold seg34LadderFlatX6
        linear_combination -r3049
      unfold seg34AccX7
      linear_combination hd
    have hsely : seg34AccY7 rho = seg34AccY6 rho - Bool.toZMod bit * (seg34AccY6 rho - rho 34320) := by
      have hd : rho 34322 = Bool.toZMod bit * (rho 34320 - seg34AccY6 rho) := by
        rw [← hbit, seg34LadderFlatY6_eq]
        unfold seg34LadderFlatY6
        linear_combination -r3050
      unfold seg34AccY7
      linear_combination hd
    have hd0 : rho 34313 * rho 34314 = rho 34323 := by linear_combination r3051
    have hd1 : rho 34313 * rho 34313 = rho 34324 := by linear_combination r3052
    have hd2 : rho 34314 * rho 34314 = rho 34325 := by linear_combination r3053
    have hd3 : rho 34326 * (rho 34314 * rho 34314 + rho 34313 * rho 34313 * (-1)) = 2 * (rho 34313 * rho 34314) := by
      rw [hd0, hd1, hd2]
      linear_combination r3054
    have hd4 : rho 34327 * (2 - (rho 34314 * rho 34314 + rho 34313 * rho 34313 * (-1))) = rho 34314 * rho 34314 - rho 34313 * rho 34313 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3055
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX6 rho : Seg34.F), (seg34AccY6 rho : Seg34.F)⟩
      ⟨(rho 34313 : Seg34.F), (rho 34314 : Seg34.F)⟩
      ⟨(rho 34319 : Seg34.F), (rho 34320 : Seg34.F)⟩
      ⟨(seg34AccX7 rho : Seg34.F), (seg34AccY7 rho : Seg34.F)⟩
      ⟨(rho 34326 : Seg34.F), (rho 34327 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung6

theorem seg34_rung7 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 33999 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX7 rho : Seg34.F), (seg34AccY7 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34326 : Seg34.F), (rho 34327 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX7 rho : Seg34.F), (seg34AccY7 rho : Seg34.F)⟩
        ⟨(rho 34326 : Seg34.F), (rho 34327 : Seg34.F)⟩
        ⟨(seg34AccX8 rho : Seg34.F), (seg34AccY8 rho : Seg34.F)⟩
        ⟨(rho 34339 : Seg34.F), (rho 34340 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3056, r3057, r3058, r3059, r3060, r3061, r3062, r3063, r3064, r3065, r3066, r3067, r3068, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3056 at r3056
  unfold Seg34.relationRow3057 at r3057
  unfold Seg34.relationRow3058 at r3058
  unfold Seg34.relationRow3059 at r3059
  unfold Seg34.relationRow3060 at r3060
  unfold Seg34.relationRow3061 at r3061
  unfold Seg34.relationRow3062 at r3062
  unfold Seg34.relationRow3063 at r3063
  unfold Seg34.relationRow3064 at r3064
  unfold Seg34.relationRow3065 at r3065
  unfold Seg34.relationRow3066 at r3066
  unfold Seg34.relationRow3067 at r3067
  unfold Seg34.relationRow3068 at r3068
  have hrung7 (bit : Bool) (hbit : rho 33999 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX7 rho : Seg34.F), (seg34AccY7 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34326 : Seg34.F), (rho 34327 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX7 rho : Seg34.F), (seg34AccY7 rho : Seg34.F)⟩
        ⟨(rho 34326 : Seg34.F), (rho 34327 : Seg34.F)⟩
        ⟨(seg34AccX8 rho : Seg34.F), (seg34AccY8 rho : Seg34.F)⟩
        ⟨(rho 34339 : Seg34.F), (rho 34340 : Seg34.F)⟩ := by
    have ha0 : (rho 34326 + rho 34327) * (seg34AccX7 rho + seg34AccY7 rho) = rho 34328 := by
      rw [seg34LadderFlatX7_eq, seg34LadderFlatY7_eq]
      unfold seg34LadderFlatX7 seg34LadderFlatY7
      linear_combination r3056
    have ha1 : rho 34327 * seg34AccX7 rho = rho 34329 := by
      rw [seg34LadderFlatX7_eq]
      unfold seg34LadderFlatX7
      linear_combination r3057
    have ha2 : rho 34326 * seg34AccY7 rho = rho 34330 := by
      rw [seg34LadderFlatY7_eq]
      unfold seg34LadderFlatY7
      linear_combination r3058
    have ha3 : 3021 * rho 34329 * rho 34330 = rho 34331 := by
      linear_combination r3059
    have ha4 : rho 34332 * (1 + rho 34331) = rho 34329 + rho 34330 := by
      linear_combination r3060
    have ha5 : rho 34333 * (1 - rho 34331) = rho 34328 - rho 34329 - rho 34330 := by
      linear_combination r3061
    have haddx :
        rho 34332 * (1 + 3021 * (rho 34327 * seg34AccX7 rho) * (rho 34326 * seg34AccY7 rho)) =
          rho 34327 * seg34AccX7 rho + rho 34326 * seg34AccY7 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34333 * (1 - 3021 * (rho 34327 * seg34AccX7 rho) * (rho 34326 * seg34AccY7 rho)) =
          (-1) * (rho 34327 * seg34AccX7 rho) - rho 34326 * seg34AccY7 rho +
            (seg34AccY7 rho - seg34AccX7 rho * (-1)) * (rho 34326 + rho 34327) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34333 * (1 - rho 34331) = rho 34328 - rho 34329 - rho 34330 := ha5
        _ = (-1) * rho 34329 - rho 34330 + (seg34AccY7 rho - seg34AccX7 rho * (-1)) * (rho 34326 + rho 34327) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX8 rho = seg34AccX7 rho - Bool.toZMod bit * (seg34AccX7 rho - rho 34332) := by
      have hd : rho 34334 = Bool.toZMod bit * (rho 34332 - seg34AccX7 rho) := by
        rw [← hbit, seg34LadderFlatX7_eq]
        unfold seg34LadderFlatX7
        linear_combination -r3062
      unfold seg34AccX8
      linear_combination hd
    have hsely : seg34AccY8 rho = seg34AccY7 rho - Bool.toZMod bit * (seg34AccY7 rho - rho 34333) := by
      have hd : rho 34335 = Bool.toZMod bit * (rho 34333 - seg34AccY7 rho) := by
        rw [← hbit, seg34LadderFlatY7_eq]
        unfold seg34LadderFlatY7
        linear_combination -r3063
      unfold seg34AccY8
      linear_combination hd
    have hd0 : rho 34326 * rho 34327 = rho 34336 := by linear_combination r3064
    have hd1 : rho 34326 * rho 34326 = rho 34337 := by linear_combination r3065
    have hd2 : rho 34327 * rho 34327 = rho 34338 := by linear_combination r3066
    have hd3 : rho 34339 * (rho 34327 * rho 34327 + rho 34326 * rho 34326 * (-1)) = 2 * (rho 34326 * rho 34327) := by
      rw [hd0, hd1, hd2]
      linear_combination r3067
    have hd4 : rho 34340 * (2 - (rho 34327 * rho 34327 + rho 34326 * rho 34326 * (-1))) = rho 34327 * rho 34327 - rho 34326 * rho 34326 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3068
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX7 rho : Seg34.F), (seg34AccY7 rho : Seg34.F)⟩
      ⟨(rho 34326 : Seg34.F), (rho 34327 : Seg34.F)⟩
      ⟨(rho 34332 : Seg34.F), (rho 34333 : Seg34.F)⟩
      ⟨(seg34AccX8 rho : Seg34.F), (seg34AccY8 rho : Seg34.F)⟩
      ⟨(rho 34339 : Seg34.F), (rho 34340 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung7

theorem seg34_rung8 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34000 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX8 rho : Seg34.F), (seg34AccY8 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34339 : Seg34.F), (rho 34340 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX8 rho : Seg34.F), (seg34AccY8 rho : Seg34.F)⟩
        ⟨(rho 34339 : Seg34.F), (rho 34340 : Seg34.F)⟩
        ⟨(seg34AccX9 rho : Seg34.F), (seg34AccY9 rho : Seg34.F)⟩
        ⟨(rho 34352 : Seg34.F), (rho 34353 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3069, r3070, r3071, r3072, r3073, r3074, r3075, r3076, r3077, r3078, r3079, r3080, r3081, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3069 at r3069
  unfold Seg34.relationRow3070 at r3070
  unfold Seg34.relationRow3071 at r3071
  unfold Seg34.relationRow3072 at r3072
  unfold Seg34.relationRow3073 at r3073
  unfold Seg34.relationRow3074 at r3074
  unfold Seg34.relationRow3075 at r3075
  unfold Seg34.relationRow3076 at r3076
  unfold Seg34.relationRow3077 at r3077
  unfold Seg34.relationRow3078 at r3078
  unfold Seg34.relationRow3079 at r3079
  unfold Seg34.relationRow3080 at r3080
  unfold Seg34.relationRow3081 at r3081
  have hrung8 (bit : Bool) (hbit : rho 34000 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX8 rho : Seg34.F), (seg34AccY8 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34339 : Seg34.F), (rho 34340 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX8 rho : Seg34.F), (seg34AccY8 rho : Seg34.F)⟩
        ⟨(rho 34339 : Seg34.F), (rho 34340 : Seg34.F)⟩
        ⟨(seg34AccX9 rho : Seg34.F), (seg34AccY9 rho : Seg34.F)⟩
        ⟨(rho 34352 : Seg34.F), (rho 34353 : Seg34.F)⟩ := by
    have ha0 : (rho 34339 + rho 34340) * (seg34AccX8 rho + seg34AccY8 rho) = rho 34341 := by
      rw [seg34LadderFlatX8_eq, seg34LadderFlatY8_eq]
      unfold seg34LadderFlatX8 seg34LadderFlatY8
      linear_combination r3069
    have ha1 : rho 34340 * seg34AccX8 rho = rho 34342 := by
      rw [seg34LadderFlatX8_eq]
      unfold seg34LadderFlatX8
      linear_combination r3070
    have ha2 : rho 34339 * seg34AccY8 rho = rho 34343 := by
      rw [seg34LadderFlatY8_eq]
      unfold seg34LadderFlatY8
      linear_combination r3071
    have ha3 : 3021 * rho 34342 * rho 34343 = rho 34344 := by
      linear_combination r3072
    have ha4 : rho 34345 * (1 + rho 34344) = rho 34342 + rho 34343 := by
      linear_combination r3073
    have ha5 : rho 34346 * (1 - rho 34344) = rho 34341 - rho 34342 - rho 34343 := by
      linear_combination r3074
    have haddx :
        rho 34345 * (1 + 3021 * (rho 34340 * seg34AccX8 rho) * (rho 34339 * seg34AccY8 rho)) =
          rho 34340 * seg34AccX8 rho + rho 34339 * seg34AccY8 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34346 * (1 - 3021 * (rho 34340 * seg34AccX8 rho) * (rho 34339 * seg34AccY8 rho)) =
          (-1) * (rho 34340 * seg34AccX8 rho) - rho 34339 * seg34AccY8 rho +
            (seg34AccY8 rho - seg34AccX8 rho * (-1)) * (rho 34339 + rho 34340) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34346 * (1 - rho 34344) = rho 34341 - rho 34342 - rho 34343 := ha5
        _ = (-1) * rho 34342 - rho 34343 + (seg34AccY8 rho - seg34AccX8 rho * (-1)) * (rho 34339 + rho 34340) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX9 rho = seg34AccX8 rho - Bool.toZMod bit * (seg34AccX8 rho - rho 34345) := by
      have hd : rho 34347 = Bool.toZMod bit * (rho 34345 - seg34AccX8 rho) := by
        rw [← hbit, seg34LadderFlatX8_eq]
        unfold seg34LadderFlatX8
        linear_combination -r3075
      unfold seg34AccX9
      linear_combination hd
    have hsely : seg34AccY9 rho = seg34AccY8 rho - Bool.toZMod bit * (seg34AccY8 rho - rho 34346) := by
      have hd : rho 34348 = Bool.toZMod bit * (rho 34346 - seg34AccY8 rho) := by
        rw [← hbit, seg34LadderFlatY8_eq]
        unfold seg34LadderFlatY8
        linear_combination -r3076
      unfold seg34AccY9
      linear_combination hd
    have hd0 : rho 34339 * rho 34340 = rho 34349 := by linear_combination r3077
    have hd1 : rho 34339 * rho 34339 = rho 34350 := by linear_combination r3078
    have hd2 : rho 34340 * rho 34340 = rho 34351 := by linear_combination r3079
    have hd3 : rho 34352 * (rho 34340 * rho 34340 + rho 34339 * rho 34339 * (-1)) = 2 * (rho 34339 * rho 34340) := by
      rw [hd0, hd1, hd2]
      linear_combination r3080
    have hd4 : rho 34353 * (2 - (rho 34340 * rho 34340 + rho 34339 * rho 34339 * (-1))) = rho 34340 * rho 34340 - rho 34339 * rho 34339 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3081
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX8 rho : Seg34.F), (seg34AccY8 rho : Seg34.F)⟩
      ⟨(rho 34339 : Seg34.F), (rho 34340 : Seg34.F)⟩
      ⟨(rho 34345 : Seg34.F), (rho 34346 : Seg34.F)⟩
      ⟨(seg34AccX9 rho : Seg34.F), (seg34AccY9 rho : Seg34.F)⟩
      ⟨(rho 34352 : Seg34.F), (rho 34353 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung8

theorem seg34_rung9 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34001 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX9 rho : Seg34.F), (seg34AccY9 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34352 : Seg34.F), (rho 34353 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX9 rho : Seg34.F), (seg34AccY9 rho : Seg34.F)⟩
        ⟨(rho 34352 : Seg34.F), (rho 34353 : Seg34.F)⟩
        ⟨(seg34AccX10 rho : Seg34.F), (seg34AccY10 rho : Seg34.F)⟩
        ⟨(rho 34365 : Seg34.F), (rho 34366 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3082, r3083, r3084, r3085, r3086, r3087, r3088, r3089, r3090, r3091, r3092, r3093, r3094, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3082 at r3082
  unfold Seg34.relationRow3083 at r3083
  unfold Seg34.relationRow3084 at r3084
  unfold Seg34.relationRow3085 at r3085
  unfold Seg34.relationRow3086 at r3086
  unfold Seg34.relationRow3087 at r3087
  unfold Seg34.relationRow3088 at r3088
  unfold Seg34.relationRow3089 at r3089
  unfold Seg34.relationRow3090 at r3090
  unfold Seg34.relationRow3091 at r3091
  unfold Seg34.relationRow3092 at r3092
  unfold Seg34.relationRow3093 at r3093
  unfold Seg34.relationRow3094 at r3094
  have hrung9 (bit : Bool) (hbit : rho 34001 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX9 rho : Seg34.F), (seg34AccY9 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34352 : Seg34.F), (rho 34353 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX9 rho : Seg34.F), (seg34AccY9 rho : Seg34.F)⟩
        ⟨(rho 34352 : Seg34.F), (rho 34353 : Seg34.F)⟩
        ⟨(seg34AccX10 rho : Seg34.F), (seg34AccY10 rho : Seg34.F)⟩
        ⟨(rho 34365 : Seg34.F), (rho 34366 : Seg34.F)⟩ := by
    have ha0 : (rho 34352 + rho 34353) * (seg34AccX9 rho + seg34AccY9 rho) = rho 34354 := by
      rw [seg34LadderFlatX9_eq, seg34LadderFlatY9_eq]
      unfold seg34LadderFlatX9 seg34LadderFlatY9
      linear_combination r3082
    have ha1 : rho 34353 * seg34AccX9 rho = rho 34355 := by
      rw [seg34LadderFlatX9_eq]
      unfold seg34LadderFlatX9
      linear_combination r3083
    have ha2 : rho 34352 * seg34AccY9 rho = rho 34356 := by
      rw [seg34LadderFlatY9_eq]
      unfold seg34LadderFlatY9
      linear_combination r3084
    have ha3 : 3021 * rho 34355 * rho 34356 = rho 34357 := by
      linear_combination r3085
    have ha4 : rho 34358 * (1 + rho 34357) = rho 34355 + rho 34356 := by
      linear_combination r3086
    have ha5 : rho 34359 * (1 - rho 34357) = rho 34354 - rho 34355 - rho 34356 := by
      linear_combination r3087
    have haddx :
        rho 34358 * (1 + 3021 * (rho 34353 * seg34AccX9 rho) * (rho 34352 * seg34AccY9 rho)) =
          rho 34353 * seg34AccX9 rho + rho 34352 * seg34AccY9 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34359 * (1 - 3021 * (rho 34353 * seg34AccX9 rho) * (rho 34352 * seg34AccY9 rho)) =
          (-1) * (rho 34353 * seg34AccX9 rho) - rho 34352 * seg34AccY9 rho +
            (seg34AccY9 rho - seg34AccX9 rho * (-1)) * (rho 34352 + rho 34353) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34359 * (1 - rho 34357) = rho 34354 - rho 34355 - rho 34356 := ha5
        _ = (-1) * rho 34355 - rho 34356 + (seg34AccY9 rho - seg34AccX9 rho * (-1)) * (rho 34352 + rho 34353) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX10 rho = seg34AccX9 rho - Bool.toZMod bit * (seg34AccX9 rho - rho 34358) := by
      have hd : rho 34360 = Bool.toZMod bit * (rho 34358 - seg34AccX9 rho) := by
        rw [← hbit, seg34LadderFlatX9_eq]
        unfold seg34LadderFlatX9
        linear_combination -r3088
      unfold seg34AccX10
      linear_combination hd
    have hsely : seg34AccY10 rho = seg34AccY9 rho - Bool.toZMod bit * (seg34AccY9 rho - rho 34359) := by
      have hd : rho 34361 = Bool.toZMod bit * (rho 34359 - seg34AccY9 rho) := by
        rw [← hbit, seg34LadderFlatY9_eq]
        unfold seg34LadderFlatY9
        linear_combination -r3089
      unfold seg34AccY10
      linear_combination hd
    have hd0 : rho 34352 * rho 34353 = rho 34362 := by linear_combination r3090
    have hd1 : rho 34352 * rho 34352 = rho 34363 := by linear_combination r3091
    have hd2 : rho 34353 * rho 34353 = rho 34364 := by linear_combination r3092
    have hd3 : rho 34365 * (rho 34353 * rho 34353 + rho 34352 * rho 34352 * (-1)) = 2 * (rho 34352 * rho 34353) := by
      rw [hd0, hd1, hd2]
      linear_combination r3093
    have hd4 : rho 34366 * (2 - (rho 34353 * rho 34353 + rho 34352 * rho 34352 * (-1))) = rho 34353 * rho 34353 - rho 34352 * rho 34352 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3094
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX9 rho : Seg34.F), (seg34AccY9 rho : Seg34.F)⟩
      ⟨(rho 34352 : Seg34.F), (rho 34353 : Seg34.F)⟩
      ⟨(rho 34358 : Seg34.F), (rho 34359 : Seg34.F)⟩
      ⟨(seg34AccX10 rho : Seg34.F), (seg34AccY10 rho : Seg34.F)⟩
      ⟨(rho 34365 : Seg34.F), (rho 34366 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung9

theorem seg34_rung10 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34002 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX10 rho : Seg34.F), (seg34AccY10 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34365 : Seg34.F), (rho 34366 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX10 rho : Seg34.F), (seg34AccY10 rho : Seg34.F)⟩
        ⟨(rho 34365 : Seg34.F), (rho 34366 : Seg34.F)⟩
        ⟨(seg34AccX11 rho : Seg34.F), (seg34AccY11 rho : Seg34.F)⟩
        ⟨(rho 34378 : Seg34.F), (rho 34379 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3095, r3096, r3097, r3098, r3099, r3100, r3101, r3102, r3103, r3104, r3105, r3106, r3107, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3095 at r3095
  unfold Seg34.relationRow3096 at r3096
  unfold Seg34.relationRow3097 at r3097
  unfold Seg34.relationRow3098 at r3098
  unfold Seg34.relationRow3099 at r3099
  unfold Seg34.relationRow3100 at r3100
  unfold Seg34.relationRow3101 at r3101
  unfold Seg34.relationRow3102 at r3102
  unfold Seg34.relationRow3103 at r3103
  unfold Seg34.relationRow3104 at r3104
  unfold Seg34.relationRow3105 at r3105
  unfold Seg34.relationRow3106 at r3106
  unfold Seg34.relationRow3107 at r3107
  have hrung10 (bit : Bool) (hbit : rho 34002 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX10 rho : Seg34.F), (seg34AccY10 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34365 : Seg34.F), (rho 34366 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX10 rho : Seg34.F), (seg34AccY10 rho : Seg34.F)⟩
        ⟨(rho 34365 : Seg34.F), (rho 34366 : Seg34.F)⟩
        ⟨(seg34AccX11 rho : Seg34.F), (seg34AccY11 rho : Seg34.F)⟩
        ⟨(rho 34378 : Seg34.F), (rho 34379 : Seg34.F)⟩ := by
    have ha0 : (rho 34365 + rho 34366) * (seg34AccX10 rho + seg34AccY10 rho) = rho 34367 := by
      rw [seg34LadderFlatX10_eq, seg34LadderFlatY10_eq]
      unfold seg34LadderFlatX10 seg34LadderFlatY10
      linear_combination r3095
    have ha1 : rho 34366 * seg34AccX10 rho = rho 34368 := by
      rw [seg34LadderFlatX10_eq]
      unfold seg34LadderFlatX10
      linear_combination r3096
    have ha2 : rho 34365 * seg34AccY10 rho = rho 34369 := by
      rw [seg34LadderFlatY10_eq]
      unfold seg34LadderFlatY10
      linear_combination r3097
    have ha3 : 3021 * rho 34368 * rho 34369 = rho 34370 := by
      linear_combination r3098
    have ha4 : rho 34371 * (1 + rho 34370) = rho 34368 + rho 34369 := by
      linear_combination r3099
    have ha5 : rho 34372 * (1 - rho 34370) = rho 34367 - rho 34368 - rho 34369 := by
      linear_combination r3100
    have haddx :
        rho 34371 * (1 + 3021 * (rho 34366 * seg34AccX10 rho) * (rho 34365 * seg34AccY10 rho)) =
          rho 34366 * seg34AccX10 rho + rho 34365 * seg34AccY10 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34372 * (1 - 3021 * (rho 34366 * seg34AccX10 rho) * (rho 34365 * seg34AccY10 rho)) =
          (-1) * (rho 34366 * seg34AccX10 rho) - rho 34365 * seg34AccY10 rho +
            (seg34AccY10 rho - seg34AccX10 rho * (-1)) * (rho 34365 + rho 34366) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34372 * (1 - rho 34370) = rho 34367 - rho 34368 - rho 34369 := ha5
        _ = (-1) * rho 34368 - rho 34369 + (seg34AccY10 rho - seg34AccX10 rho * (-1)) * (rho 34365 + rho 34366) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX11 rho = seg34AccX10 rho - Bool.toZMod bit * (seg34AccX10 rho - rho 34371) := by
      have hd : rho 34373 = Bool.toZMod bit * (rho 34371 - seg34AccX10 rho) := by
        rw [← hbit, seg34LadderFlatX10_eq]
        unfold seg34LadderFlatX10
        linear_combination -r3101
      unfold seg34AccX11
      linear_combination hd
    have hsely : seg34AccY11 rho = seg34AccY10 rho - Bool.toZMod bit * (seg34AccY10 rho - rho 34372) := by
      have hd : rho 34374 = Bool.toZMod bit * (rho 34372 - seg34AccY10 rho) := by
        rw [← hbit, seg34LadderFlatY10_eq]
        unfold seg34LadderFlatY10
        linear_combination -r3102
      unfold seg34AccY11
      linear_combination hd
    have hd0 : rho 34365 * rho 34366 = rho 34375 := by linear_combination r3103
    have hd1 : rho 34365 * rho 34365 = rho 34376 := by linear_combination r3104
    have hd2 : rho 34366 * rho 34366 = rho 34377 := by linear_combination r3105
    have hd3 : rho 34378 * (rho 34366 * rho 34366 + rho 34365 * rho 34365 * (-1)) = 2 * (rho 34365 * rho 34366) := by
      rw [hd0, hd1, hd2]
      linear_combination r3106
    have hd4 : rho 34379 * (2 - (rho 34366 * rho 34366 + rho 34365 * rho 34365 * (-1))) = rho 34366 * rho 34366 - rho 34365 * rho 34365 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3107
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX10 rho : Seg34.F), (seg34AccY10 rho : Seg34.F)⟩
      ⟨(rho 34365 : Seg34.F), (rho 34366 : Seg34.F)⟩
      ⟨(rho 34371 : Seg34.F), (rho 34372 : Seg34.F)⟩
      ⟨(seg34AccX11 rho : Seg34.F), (seg34AccY11 rho : Seg34.F)⟩
      ⟨(rho 34378 : Seg34.F), (rho 34379 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung10

theorem seg34_rung11 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34003 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX11 rho : Seg34.F), (seg34AccY11 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34378 : Seg34.F), (rho 34379 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX11 rho : Seg34.F), (seg34AccY11 rho : Seg34.F)⟩
        ⟨(rho 34378 : Seg34.F), (rho 34379 : Seg34.F)⟩
        ⟨(seg34AccX12 rho : Seg34.F), (seg34AccY12 rho : Seg34.F)⟩
        ⟨(rho 34391 : Seg34.F), (rho 34392 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3108, r3109, r3110, r3111, r3112, r3113, r3114, r3115, r3116, r3117, r3118, r3119⟩
  unfold Seg34.relationPart39 at p39
  rcases p39 with ⟨r3120, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3108 at r3108
  unfold Seg34.relationRow3109 at r3109
  unfold Seg34.relationRow3110 at r3110
  unfold Seg34.relationRow3111 at r3111
  unfold Seg34.relationRow3112 at r3112
  unfold Seg34.relationRow3113 at r3113
  unfold Seg34.relationRow3114 at r3114
  unfold Seg34.relationRow3115 at r3115
  unfold Seg34.relationRow3116 at r3116
  unfold Seg34.relationRow3117 at r3117
  unfold Seg34.relationRow3118 at r3118
  unfold Seg34.relationRow3119 at r3119
  unfold Seg34.relationRow3120 at r3120
  have hrung11 (bit : Bool) (hbit : rho 34003 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX11 rho : Seg34.F), (seg34AccY11 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34378 : Seg34.F), (rho 34379 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX11 rho : Seg34.F), (seg34AccY11 rho : Seg34.F)⟩
        ⟨(rho 34378 : Seg34.F), (rho 34379 : Seg34.F)⟩
        ⟨(seg34AccX12 rho : Seg34.F), (seg34AccY12 rho : Seg34.F)⟩
        ⟨(rho 34391 : Seg34.F), (rho 34392 : Seg34.F)⟩ := by
    have ha0 : (rho 34378 + rho 34379) * (seg34AccX11 rho + seg34AccY11 rho) = rho 34380 := by
      rw [seg34LadderFlatX11_eq, seg34LadderFlatY11_eq]
      unfold seg34LadderFlatX11 seg34LadderFlatY11
      linear_combination r3108
    have ha1 : rho 34379 * seg34AccX11 rho = rho 34381 := by
      rw [seg34LadderFlatX11_eq]
      unfold seg34LadderFlatX11
      linear_combination r3109
    have ha2 : rho 34378 * seg34AccY11 rho = rho 34382 := by
      rw [seg34LadderFlatY11_eq]
      unfold seg34LadderFlatY11
      linear_combination r3110
    have ha3 : 3021 * rho 34381 * rho 34382 = rho 34383 := by
      linear_combination r3111
    have ha4 : rho 34384 * (1 + rho 34383) = rho 34381 + rho 34382 := by
      linear_combination r3112
    have ha5 : rho 34385 * (1 - rho 34383) = rho 34380 - rho 34381 - rho 34382 := by
      linear_combination r3113
    have haddx :
        rho 34384 * (1 + 3021 * (rho 34379 * seg34AccX11 rho) * (rho 34378 * seg34AccY11 rho)) =
          rho 34379 * seg34AccX11 rho + rho 34378 * seg34AccY11 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34385 * (1 - 3021 * (rho 34379 * seg34AccX11 rho) * (rho 34378 * seg34AccY11 rho)) =
          (-1) * (rho 34379 * seg34AccX11 rho) - rho 34378 * seg34AccY11 rho +
            (seg34AccY11 rho - seg34AccX11 rho * (-1)) * (rho 34378 + rho 34379) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34385 * (1 - rho 34383) = rho 34380 - rho 34381 - rho 34382 := ha5
        _ = (-1) * rho 34381 - rho 34382 + (seg34AccY11 rho - seg34AccX11 rho * (-1)) * (rho 34378 + rho 34379) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX12 rho = seg34AccX11 rho - Bool.toZMod bit * (seg34AccX11 rho - rho 34384) := by
      have hd : rho 34386 = Bool.toZMod bit * (rho 34384 - seg34AccX11 rho) := by
        rw [← hbit, seg34LadderFlatX11_eq]
        unfold seg34LadderFlatX11
        linear_combination -r3114
      unfold seg34AccX12
      linear_combination hd
    have hsely : seg34AccY12 rho = seg34AccY11 rho - Bool.toZMod bit * (seg34AccY11 rho - rho 34385) := by
      have hd : rho 34387 = Bool.toZMod bit * (rho 34385 - seg34AccY11 rho) := by
        rw [← hbit, seg34LadderFlatY11_eq]
        unfold seg34LadderFlatY11
        linear_combination -r3115
      unfold seg34AccY12
      linear_combination hd
    have hd0 : rho 34378 * rho 34379 = rho 34388 := by linear_combination r3116
    have hd1 : rho 34378 * rho 34378 = rho 34389 := by linear_combination r3117
    have hd2 : rho 34379 * rho 34379 = rho 34390 := by linear_combination r3118
    have hd3 : rho 34391 * (rho 34379 * rho 34379 + rho 34378 * rho 34378 * (-1)) = 2 * (rho 34378 * rho 34379) := by
      rw [hd0, hd1, hd2]
      linear_combination r3119
    have hd4 : rho 34392 * (2 - (rho 34379 * rho 34379 + rho 34378 * rho 34378 * (-1))) = rho 34379 * rho 34379 - rho 34378 * rho 34378 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3120
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX11 rho : Seg34.F), (seg34AccY11 rho : Seg34.F)⟩
      ⟨(rho 34378 : Seg34.F), (rho 34379 : Seg34.F)⟩
      ⟨(rho 34384 : Seg34.F), (rho 34385 : Seg34.F)⟩
      ⟨(seg34AccX12 rho : Seg34.F), (seg34AccY12 rho : Seg34.F)⟩
      ⟨(rho 34391 : Seg34.F), (rho 34392 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung11

theorem seg34_rung12 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34004 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX12 rho : Seg34.F), (seg34AccY12 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34391 : Seg34.F), (rho 34392 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX12 rho : Seg34.F), (seg34AccY12 rho : Seg34.F)⟩
        ⟨(rho 34391 : Seg34.F), (rho 34392 : Seg34.F)⟩
        ⟨(seg34AccX13 rho : Seg34.F), (seg34AccY13 rho : Seg34.F)⟩
        ⟨(rho 34404 : Seg34.F), (rho 34405 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart39 at p39
  rcases p39 with ⟨_, r3121, r3122, r3123, r3124, r3125, r3126, r3127, r3128, r3129, r3130, r3131, r3132, r3133, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3121 at r3121
  unfold Seg34.relationRow3122 at r3122
  unfold Seg34.relationRow3123 at r3123
  unfold Seg34.relationRow3124 at r3124
  unfold Seg34.relationRow3125 at r3125
  unfold Seg34.relationRow3126 at r3126
  unfold Seg34.relationRow3127 at r3127
  unfold Seg34.relationRow3128 at r3128
  unfold Seg34.relationRow3129 at r3129
  unfold Seg34.relationRow3130 at r3130
  unfold Seg34.relationRow3131 at r3131
  unfold Seg34.relationRow3132 at r3132
  unfold Seg34.relationRow3133 at r3133
  have hrung12 (bit : Bool) (hbit : rho 34004 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX12 rho : Seg34.F), (seg34AccY12 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34391 : Seg34.F), (rho 34392 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX12 rho : Seg34.F), (seg34AccY12 rho : Seg34.F)⟩
        ⟨(rho 34391 : Seg34.F), (rho 34392 : Seg34.F)⟩
        ⟨(seg34AccX13 rho : Seg34.F), (seg34AccY13 rho : Seg34.F)⟩
        ⟨(rho 34404 : Seg34.F), (rho 34405 : Seg34.F)⟩ := by
    have ha0 : (rho 34391 + rho 34392) * (seg34AccX12 rho + seg34AccY12 rho) = rho 34393 := by
      rw [seg34LadderFlatX12_eq, seg34LadderFlatY12_eq]
      unfold seg34LadderFlatX12 seg34LadderFlatY12
      linear_combination r3121
    have ha1 : rho 34392 * seg34AccX12 rho = rho 34394 := by
      rw [seg34LadderFlatX12_eq]
      unfold seg34LadderFlatX12
      linear_combination r3122
    have ha2 : rho 34391 * seg34AccY12 rho = rho 34395 := by
      rw [seg34LadderFlatY12_eq]
      unfold seg34LadderFlatY12
      linear_combination r3123
    have ha3 : 3021 * rho 34394 * rho 34395 = rho 34396 := by
      linear_combination r3124
    have ha4 : rho 34397 * (1 + rho 34396) = rho 34394 + rho 34395 := by
      linear_combination r3125
    have ha5 : rho 34398 * (1 - rho 34396) = rho 34393 - rho 34394 - rho 34395 := by
      linear_combination r3126
    have haddx :
        rho 34397 * (1 + 3021 * (rho 34392 * seg34AccX12 rho) * (rho 34391 * seg34AccY12 rho)) =
          rho 34392 * seg34AccX12 rho + rho 34391 * seg34AccY12 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34398 * (1 - 3021 * (rho 34392 * seg34AccX12 rho) * (rho 34391 * seg34AccY12 rho)) =
          (-1) * (rho 34392 * seg34AccX12 rho) - rho 34391 * seg34AccY12 rho +
            (seg34AccY12 rho - seg34AccX12 rho * (-1)) * (rho 34391 + rho 34392) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34398 * (1 - rho 34396) = rho 34393 - rho 34394 - rho 34395 := ha5
        _ = (-1) * rho 34394 - rho 34395 + (seg34AccY12 rho - seg34AccX12 rho * (-1)) * (rho 34391 + rho 34392) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX13 rho = seg34AccX12 rho - Bool.toZMod bit * (seg34AccX12 rho - rho 34397) := by
      have hd : rho 34399 = Bool.toZMod bit * (rho 34397 - seg34AccX12 rho) := by
        rw [← hbit, seg34LadderFlatX12_eq]
        unfold seg34LadderFlatX12
        linear_combination -r3127
      unfold seg34AccX13
      linear_combination hd
    have hsely : seg34AccY13 rho = seg34AccY12 rho - Bool.toZMod bit * (seg34AccY12 rho - rho 34398) := by
      have hd : rho 34400 = Bool.toZMod bit * (rho 34398 - seg34AccY12 rho) := by
        rw [← hbit, seg34LadderFlatY12_eq]
        unfold seg34LadderFlatY12
        linear_combination -r3128
      unfold seg34AccY13
      linear_combination hd
    have hd0 : rho 34391 * rho 34392 = rho 34401 := by linear_combination r3129
    have hd1 : rho 34391 * rho 34391 = rho 34402 := by linear_combination r3130
    have hd2 : rho 34392 * rho 34392 = rho 34403 := by linear_combination r3131
    have hd3 : rho 34404 * (rho 34392 * rho 34392 + rho 34391 * rho 34391 * (-1)) = 2 * (rho 34391 * rho 34392) := by
      rw [hd0, hd1, hd2]
      linear_combination r3132
    have hd4 : rho 34405 * (2 - (rho 34392 * rho 34392 + rho 34391 * rho 34391 * (-1))) = rho 34392 * rho 34392 - rho 34391 * rho 34391 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3133
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX12 rho : Seg34.F), (seg34AccY12 rho : Seg34.F)⟩
      ⟨(rho 34391 : Seg34.F), (rho 34392 : Seg34.F)⟩
      ⟨(rho 34397 : Seg34.F), (rho 34398 : Seg34.F)⟩
      ⟨(seg34AccX13 rho : Seg34.F), (seg34AccY13 rho : Seg34.F)⟩
      ⟨(rho 34404 : Seg34.F), (rho 34405 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung12

theorem seg34_rung13 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34005 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX13 rho : Seg34.F), (seg34AccY13 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34404 : Seg34.F), (rho 34405 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX13 rho : Seg34.F), (seg34AccY13 rho : Seg34.F)⟩
        ⟨(rho 34404 : Seg34.F), (rho 34405 : Seg34.F)⟩
        ⟨(seg34AccX14 rho : Seg34.F), (seg34AccY14 rho : Seg34.F)⟩
        ⟨(rho 34417 : Seg34.F), (rho 34418 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r3134, r3135, r3136, r3137, r3138, r3139, r3140, r3141, r3142, r3143, r3144, r3145, r3146, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3134 at r3134
  unfold Seg34.relationRow3135 at r3135
  unfold Seg34.relationRow3136 at r3136
  unfold Seg34.relationRow3137 at r3137
  unfold Seg34.relationRow3138 at r3138
  unfold Seg34.relationRow3139 at r3139
  unfold Seg34.relationRow3140 at r3140
  unfold Seg34.relationRow3141 at r3141
  unfold Seg34.relationRow3142 at r3142
  unfold Seg34.relationRow3143 at r3143
  unfold Seg34.relationRow3144 at r3144
  unfold Seg34.relationRow3145 at r3145
  unfold Seg34.relationRow3146 at r3146
  have hrung13 (bit : Bool) (hbit : rho 34005 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX13 rho : Seg34.F), (seg34AccY13 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34404 : Seg34.F), (rho 34405 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX13 rho : Seg34.F), (seg34AccY13 rho : Seg34.F)⟩
        ⟨(rho 34404 : Seg34.F), (rho 34405 : Seg34.F)⟩
        ⟨(seg34AccX14 rho : Seg34.F), (seg34AccY14 rho : Seg34.F)⟩
        ⟨(rho 34417 : Seg34.F), (rho 34418 : Seg34.F)⟩ := by
    have ha0 : (rho 34404 + rho 34405) * (seg34AccX13 rho + seg34AccY13 rho) = rho 34406 := by
      rw [seg34LadderFlatX13_eq, seg34LadderFlatY13_eq]
      unfold seg34LadderFlatX13 seg34LadderFlatY13
      linear_combination r3134
    have ha1 : rho 34405 * seg34AccX13 rho = rho 34407 := by
      rw [seg34LadderFlatX13_eq]
      unfold seg34LadderFlatX13
      linear_combination r3135
    have ha2 : rho 34404 * seg34AccY13 rho = rho 34408 := by
      rw [seg34LadderFlatY13_eq]
      unfold seg34LadderFlatY13
      linear_combination r3136
    have ha3 : 3021 * rho 34407 * rho 34408 = rho 34409 := by
      linear_combination r3137
    have ha4 : rho 34410 * (1 + rho 34409) = rho 34407 + rho 34408 := by
      linear_combination r3138
    have ha5 : rho 34411 * (1 - rho 34409) = rho 34406 - rho 34407 - rho 34408 := by
      linear_combination r3139
    have haddx :
        rho 34410 * (1 + 3021 * (rho 34405 * seg34AccX13 rho) * (rho 34404 * seg34AccY13 rho)) =
          rho 34405 * seg34AccX13 rho + rho 34404 * seg34AccY13 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34411 * (1 - 3021 * (rho 34405 * seg34AccX13 rho) * (rho 34404 * seg34AccY13 rho)) =
          (-1) * (rho 34405 * seg34AccX13 rho) - rho 34404 * seg34AccY13 rho +
            (seg34AccY13 rho - seg34AccX13 rho * (-1)) * (rho 34404 + rho 34405) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34411 * (1 - rho 34409) = rho 34406 - rho 34407 - rho 34408 := ha5
        _ = (-1) * rho 34407 - rho 34408 + (seg34AccY13 rho - seg34AccX13 rho * (-1)) * (rho 34404 + rho 34405) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX14 rho = seg34AccX13 rho - Bool.toZMod bit * (seg34AccX13 rho - rho 34410) := by
      have hd : rho 34412 = Bool.toZMod bit * (rho 34410 - seg34AccX13 rho) := by
        rw [← hbit, seg34LadderFlatX13_eq]
        unfold seg34LadderFlatX13
        linear_combination -r3140
      unfold seg34AccX14
      linear_combination hd
    have hsely : seg34AccY14 rho = seg34AccY13 rho - Bool.toZMod bit * (seg34AccY13 rho - rho 34411) := by
      have hd : rho 34413 = Bool.toZMod bit * (rho 34411 - seg34AccY13 rho) := by
        rw [← hbit, seg34LadderFlatY13_eq]
        unfold seg34LadderFlatY13
        linear_combination -r3141
      unfold seg34AccY14
      linear_combination hd
    have hd0 : rho 34404 * rho 34405 = rho 34414 := by linear_combination r3142
    have hd1 : rho 34404 * rho 34404 = rho 34415 := by linear_combination r3143
    have hd2 : rho 34405 * rho 34405 = rho 34416 := by linear_combination r3144
    have hd3 : rho 34417 * (rho 34405 * rho 34405 + rho 34404 * rho 34404 * (-1)) = 2 * (rho 34404 * rho 34405) := by
      rw [hd0, hd1, hd2]
      linear_combination r3145
    have hd4 : rho 34418 * (2 - (rho 34405 * rho 34405 + rho 34404 * rho 34404 * (-1))) = rho 34405 * rho 34405 - rho 34404 * rho 34404 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3146
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX13 rho : Seg34.F), (seg34AccY13 rho : Seg34.F)⟩
      ⟨(rho 34404 : Seg34.F), (rho 34405 : Seg34.F)⟩
      ⟨(rho 34410 : Seg34.F), (rho 34411 : Seg34.F)⟩
      ⟨(seg34AccX14 rho : Seg34.F), (seg34AccY14 rho : Seg34.F)⟩
      ⟨(rho 34417 : Seg34.F), (rho 34418 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung13

theorem seg34_rung14 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34006 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX14 rho : Seg34.F), (seg34AccY14 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34417 : Seg34.F), (rho 34418 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX14 rho : Seg34.F), (seg34AccY14 rho : Seg34.F)⟩
        ⟨(rho 34417 : Seg34.F), (rho 34418 : Seg34.F)⟩
        ⟨(seg34AccX15 rho : Seg34.F), (seg34AccY15 rho : Seg34.F)⟩
        ⟨(rho 34430 : Seg34.F), (rho 34431 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3147, r3148, r3149, r3150, r3151, r3152, r3153, r3154, r3155, r3156, r3157, r3158, r3159, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3147 at r3147
  unfold Seg34.relationRow3148 at r3148
  unfold Seg34.relationRow3149 at r3149
  unfold Seg34.relationRow3150 at r3150
  unfold Seg34.relationRow3151 at r3151
  unfold Seg34.relationRow3152 at r3152
  unfold Seg34.relationRow3153 at r3153
  unfold Seg34.relationRow3154 at r3154
  unfold Seg34.relationRow3155 at r3155
  unfold Seg34.relationRow3156 at r3156
  unfold Seg34.relationRow3157 at r3157
  unfold Seg34.relationRow3158 at r3158
  unfold Seg34.relationRow3159 at r3159
  have hrung14 (bit : Bool) (hbit : rho 34006 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX14 rho : Seg34.F), (seg34AccY14 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34417 : Seg34.F), (rho 34418 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX14 rho : Seg34.F), (seg34AccY14 rho : Seg34.F)⟩
        ⟨(rho 34417 : Seg34.F), (rho 34418 : Seg34.F)⟩
        ⟨(seg34AccX15 rho : Seg34.F), (seg34AccY15 rho : Seg34.F)⟩
        ⟨(rho 34430 : Seg34.F), (rho 34431 : Seg34.F)⟩ := by
    have ha0 : (rho 34417 + rho 34418) * (seg34AccX14 rho + seg34AccY14 rho) = rho 34419 := by
      rw [seg34LadderFlatX14_eq, seg34LadderFlatY14_eq]
      unfold seg34LadderFlatX14 seg34LadderFlatY14
      linear_combination r3147
    have ha1 : rho 34418 * seg34AccX14 rho = rho 34420 := by
      rw [seg34LadderFlatX14_eq]
      unfold seg34LadderFlatX14
      linear_combination r3148
    have ha2 : rho 34417 * seg34AccY14 rho = rho 34421 := by
      rw [seg34LadderFlatY14_eq]
      unfold seg34LadderFlatY14
      linear_combination r3149
    have ha3 : 3021 * rho 34420 * rho 34421 = rho 34422 := by
      linear_combination r3150
    have ha4 : rho 34423 * (1 + rho 34422) = rho 34420 + rho 34421 := by
      linear_combination r3151
    have ha5 : rho 34424 * (1 - rho 34422) = rho 34419 - rho 34420 - rho 34421 := by
      linear_combination r3152
    have haddx :
        rho 34423 * (1 + 3021 * (rho 34418 * seg34AccX14 rho) * (rho 34417 * seg34AccY14 rho)) =
          rho 34418 * seg34AccX14 rho + rho 34417 * seg34AccY14 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34424 * (1 - 3021 * (rho 34418 * seg34AccX14 rho) * (rho 34417 * seg34AccY14 rho)) =
          (-1) * (rho 34418 * seg34AccX14 rho) - rho 34417 * seg34AccY14 rho +
            (seg34AccY14 rho - seg34AccX14 rho * (-1)) * (rho 34417 + rho 34418) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34424 * (1 - rho 34422) = rho 34419 - rho 34420 - rho 34421 := ha5
        _ = (-1) * rho 34420 - rho 34421 + (seg34AccY14 rho - seg34AccX14 rho * (-1)) * (rho 34417 + rho 34418) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX15 rho = seg34AccX14 rho - Bool.toZMod bit * (seg34AccX14 rho - rho 34423) := by
      have hd : rho 34425 = Bool.toZMod bit * (rho 34423 - seg34AccX14 rho) := by
        rw [← hbit, seg34LadderFlatX14_eq]
        unfold seg34LadderFlatX14
        linear_combination -r3153
      unfold seg34AccX15
      linear_combination hd
    have hsely : seg34AccY15 rho = seg34AccY14 rho - Bool.toZMod bit * (seg34AccY14 rho - rho 34424) := by
      have hd : rho 34426 = Bool.toZMod bit * (rho 34424 - seg34AccY14 rho) := by
        rw [← hbit, seg34LadderFlatY14_eq]
        unfold seg34LadderFlatY14
        linear_combination -r3154
      unfold seg34AccY15
      linear_combination hd
    have hd0 : rho 34417 * rho 34418 = rho 34427 := by linear_combination r3155
    have hd1 : rho 34417 * rho 34417 = rho 34428 := by linear_combination r3156
    have hd2 : rho 34418 * rho 34418 = rho 34429 := by linear_combination r3157
    have hd3 : rho 34430 * (rho 34418 * rho 34418 + rho 34417 * rho 34417 * (-1)) = 2 * (rho 34417 * rho 34418) := by
      rw [hd0, hd1, hd2]
      linear_combination r3158
    have hd4 : rho 34431 * (2 - (rho 34418 * rho 34418 + rho 34417 * rho 34417 * (-1))) = rho 34418 * rho 34418 - rho 34417 * rho 34417 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3159
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX14 rho : Seg34.F), (seg34AccY14 rho : Seg34.F)⟩
      ⟨(rho 34417 : Seg34.F), (rho 34418 : Seg34.F)⟩
      ⟨(rho 34423 : Seg34.F), (rho 34424 : Seg34.F)⟩
      ⟨(seg34AccX15 rho : Seg34.F), (seg34AccY15 rho : Seg34.F)⟩
      ⟨(rho 34430 : Seg34.F), (rho 34431 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung14

theorem seg34_rung15 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34007 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX15 rho : Seg34.F), (seg34AccY15 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34430 : Seg34.F), (rho 34431 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX15 rho : Seg34.F), (seg34AccY15 rho : Seg34.F)⟩
        ⟨(rho 34430 : Seg34.F), (rho 34431 : Seg34.F)⟩
        ⟨(seg34AccX16 rho : Seg34.F), (seg34AccY16 rho : Seg34.F)⟩
        ⟨(rho 34443 : Seg34.F), (rho 34444 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3160, r3161, r3162, r3163, r3164, r3165, r3166, r3167, r3168, r3169, r3170, r3171, r3172, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3160 at r3160
  unfold Seg34.relationRow3161 at r3161
  unfold Seg34.relationRow3162 at r3162
  unfold Seg34.relationRow3163 at r3163
  unfold Seg34.relationRow3164 at r3164
  unfold Seg34.relationRow3165 at r3165
  unfold Seg34.relationRow3166 at r3166
  unfold Seg34.relationRow3167 at r3167
  unfold Seg34.relationRow3168 at r3168
  unfold Seg34.relationRow3169 at r3169
  unfold Seg34.relationRow3170 at r3170
  unfold Seg34.relationRow3171 at r3171
  unfold Seg34.relationRow3172 at r3172
  have hrung15 (bit : Bool) (hbit : rho 34007 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX15 rho : Seg34.F), (seg34AccY15 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34430 : Seg34.F), (rho 34431 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX15 rho : Seg34.F), (seg34AccY15 rho : Seg34.F)⟩
        ⟨(rho 34430 : Seg34.F), (rho 34431 : Seg34.F)⟩
        ⟨(seg34AccX16 rho : Seg34.F), (seg34AccY16 rho : Seg34.F)⟩
        ⟨(rho 34443 : Seg34.F), (rho 34444 : Seg34.F)⟩ := by
    have ha0 : (rho 34430 + rho 34431) * (seg34AccX15 rho + seg34AccY15 rho) = rho 34432 := by
      rw [seg34LadderFlatX15_eq, seg34LadderFlatY15_eq]
      unfold seg34LadderFlatX15 seg34LadderFlatY15
      linear_combination r3160
    have ha1 : rho 34431 * seg34AccX15 rho = rho 34433 := by
      rw [seg34LadderFlatX15_eq]
      unfold seg34LadderFlatX15
      linear_combination r3161
    have ha2 : rho 34430 * seg34AccY15 rho = rho 34434 := by
      rw [seg34LadderFlatY15_eq]
      unfold seg34LadderFlatY15
      linear_combination r3162
    have ha3 : 3021 * rho 34433 * rho 34434 = rho 34435 := by
      linear_combination r3163
    have ha4 : rho 34436 * (1 + rho 34435) = rho 34433 + rho 34434 := by
      linear_combination r3164
    have ha5 : rho 34437 * (1 - rho 34435) = rho 34432 - rho 34433 - rho 34434 := by
      linear_combination r3165
    have haddx :
        rho 34436 * (1 + 3021 * (rho 34431 * seg34AccX15 rho) * (rho 34430 * seg34AccY15 rho)) =
          rho 34431 * seg34AccX15 rho + rho 34430 * seg34AccY15 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34437 * (1 - 3021 * (rho 34431 * seg34AccX15 rho) * (rho 34430 * seg34AccY15 rho)) =
          (-1) * (rho 34431 * seg34AccX15 rho) - rho 34430 * seg34AccY15 rho +
            (seg34AccY15 rho - seg34AccX15 rho * (-1)) * (rho 34430 + rho 34431) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34437 * (1 - rho 34435) = rho 34432 - rho 34433 - rho 34434 := ha5
        _ = (-1) * rho 34433 - rho 34434 + (seg34AccY15 rho - seg34AccX15 rho * (-1)) * (rho 34430 + rho 34431) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX16 rho = seg34AccX15 rho - Bool.toZMod bit * (seg34AccX15 rho - rho 34436) := by
      have hd : rho 34438 = Bool.toZMod bit * (rho 34436 - seg34AccX15 rho) := by
        rw [← hbit, seg34LadderFlatX15_eq]
        unfold seg34LadderFlatX15
        linear_combination -r3166
      unfold seg34AccX16
      linear_combination hd
    have hsely : seg34AccY16 rho = seg34AccY15 rho - Bool.toZMod bit * (seg34AccY15 rho - rho 34437) := by
      have hd : rho 34439 = Bool.toZMod bit * (rho 34437 - seg34AccY15 rho) := by
        rw [← hbit, seg34LadderFlatY15_eq]
        unfold seg34LadderFlatY15
        linear_combination -r3167
      unfold seg34AccY16
      linear_combination hd
    have hd0 : rho 34430 * rho 34431 = rho 34440 := by linear_combination r3168
    have hd1 : rho 34430 * rho 34430 = rho 34441 := by linear_combination r3169
    have hd2 : rho 34431 * rho 34431 = rho 34442 := by linear_combination r3170
    have hd3 : rho 34443 * (rho 34431 * rho 34431 + rho 34430 * rho 34430 * (-1)) = 2 * (rho 34430 * rho 34431) := by
      rw [hd0, hd1, hd2]
      linear_combination r3171
    have hd4 : rho 34444 * (2 - (rho 34431 * rho 34431 + rho 34430 * rho 34430 * (-1))) = rho 34431 * rho 34431 - rho 34430 * rho 34430 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3172
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX15 rho : Seg34.F), (seg34AccY15 rho : Seg34.F)⟩
      ⟨(rho 34430 : Seg34.F), (rho 34431 : Seg34.F)⟩
      ⟨(rho 34436 : Seg34.F), (rho 34437 : Seg34.F)⟩
      ⟨(seg34AccX16 rho : Seg34.F), (seg34AccY16 rho : Seg34.F)⟩
      ⟨(rho 34443 : Seg34.F), (rho 34444 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung15

theorem seg34_rung16 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34008 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX16 rho : Seg34.F), (seg34AccY16 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34443 : Seg34.F), (rho 34444 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX16 rho : Seg34.F), (seg34AccY16 rho : Seg34.F)⟩
        ⟨(rho 34443 : Seg34.F), (rho 34444 : Seg34.F)⟩
        ⟨(seg34AccX17 rho : Seg34.F), (seg34AccY17 rho : Seg34.F)⟩
        ⟨(rho 34456 : Seg34.F), (rho 34457 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3173, r3174, r3175, r3176, r3177, r3178, r3179, r3180, r3181, r3182, r3183, r3184, r3185, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3173 Seg34.relationLc179 Seg34.relationLc179Part0 Seg34.relationLc179Part1 at r3173
  unfold Seg34.relationRow3174 at r3174
  unfold Seg34.relationRow3175 at r3175
  unfold Seg34.relationRow3176 at r3176
  unfold Seg34.relationRow3177 at r3177
  unfold Seg34.relationRow3178 at r3178
  unfold Seg34.relationRow3179 at r3179
  unfold Seg34.relationRow3180 at r3180
  unfold Seg34.relationRow3181 at r3181
  unfold Seg34.relationRow3182 at r3182
  unfold Seg34.relationRow3183 at r3183
  unfold Seg34.relationRow3184 at r3184
  unfold Seg34.relationRow3185 at r3185
  have hrung16 (bit : Bool) (hbit : rho 34008 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX16 rho : Seg34.F), (seg34AccY16 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34443 : Seg34.F), (rho 34444 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX16 rho : Seg34.F), (seg34AccY16 rho : Seg34.F)⟩
        ⟨(rho 34443 : Seg34.F), (rho 34444 : Seg34.F)⟩
        ⟨(seg34AccX17 rho : Seg34.F), (seg34AccY17 rho : Seg34.F)⟩
        ⟨(rho 34456 : Seg34.F), (rho 34457 : Seg34.F)⟩ := by
    have ha0 : (rho 34443 + rho 34444) * (seg34AccX16 rho + seg34AccY16 rho) = rho 34445 := by
      rw [seg34LadderFlatX16_eq, seg34LadderFlatY16_eq]
      unfold seg34LadderFlatX16 seg34LadderFlatY16
      linear_combination r3173
    have ha1 : rho 34444 * seg34AccX16 rho = rho 34446 := by
      rw [seg34LadderFlatX16_eq]
      unfold seg34LadderFlatX16
      linear_combination r3174
    have ha2 : rho 34443 * seg34AccY16 rho = rho 34447 := by
      rw [seg34LadderFlatY16_eq]
      unfold seg34LadderFlatY16
      linear_combination r3175
    have ha3 : 3021 * rho 34446 * rho 34447 = rho 34448 := by
      linear_combination r3176
    have ha4 : rho 34449 * (1 + rho 34448) = rho 34446 + rho 34447 := by
      linear_combination r3177
    have ha5 : rho 34450 * (1 - rho 34448) = rho 34445 - rho 34446 - rho 34447 := by
      linear_combination r3178
    have haddx :
        rho 34449 * (1 + 3021 * (rho 34444 * seg34AccX16 rho) * (rho 34443 * seg34AccY16 rho)) =
          rho 34444 * seg34AccX16 rho + rho 34443 * seg34AccY16 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34450 * (1 - 3021 * (rho 34444 * seg34AccX16 rho) * (rho 34443 * seg34AccY16 rho)) =
          (-1) * (rho 34444 * seg34AccX16 rho) - rho 34443 * seg34AccY16 rho +
            (seg34AccY16 rho - seg34AccX16 rho * (-1)) * (rho 34443 + rho 34444) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34450 * (1 - rho 34448) = rho 34445 - rho 34446 - rho 34447 := ha5
        _ = (-1) * rho 34446 - rho 34447 + (seg34AccY16 rho - seg34AccX16 rho * (-1)) * (rho 34443 + rho 34444) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX17 rho = seg34AccX16 rho - Bool.toZMod bit * (seg34AccX16 rho - rho 34449) := by
      have hd : rho 34451 = Bool.toZMod bit * (rho 34449 - seg34AccX16 rho) := by
        rw [← hbit, seg34LadderFlatX16_eq]
        unfold seg34LadderFlatX16
        linear_combination -r3179
      unfold seg34AccX17
      linear_combination hd
    have hsely : seg34AccY17 rho = seg34AccY16 rho - Bool.toZMod bit * (seg34AccY16 rho - rho 34450) := by
      have hd : rho 34452 = Bool.toZMod bit * (rho 34450 - seg34AccY16 rho) := by
        rw [← hbit, seg34LadderFlatY16_eq]
        unfold seg34LadderFlatY16
        linear_combination -r3180
      unfold seg34AccY17
      linear_combination hd
    have hd0 : rho 34443 * rho 34444 = rho 34453 := by linear_combination r3181
    have hd1 : rho 34443 * rho 34443 = rho 34454 := by linear_combination r3182
    have hd2 : rho 34444 * rho 34444 = rho 34455 := by linear_combination r3183
    have hd3 : rho 34456 * (rho 34444 * rho 34444 + rho 34443 * rho 34443 * (-1)) = 2 * (rho 34443 * rho 34444) := by
      rw [hd0, hd1, hd2]
      linear_combination r3184
    have hd4 : rho 34457 * (2 - (rho 34444 * rho 34444 + rho 34443 * rho 34443 * (-1))) = rho 34444 * rho 34444 - rho 34443 * rho 34443 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3185
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX16 rho : Seg34.F), (seg34AccY16 rho : Seg34.F)⟩
      ⟨(rho 34443 : Seg34.F), (rho 34444 : Seg34.F)⟩
      ⟨(rho 34449 : Seg34.F), (rho 34450 : Seg34.F)⟩
      ⟨(seg34AccX17 rho : Seg34.F), (seg34AccY17 rho : Seg34.F)⟩
      ⟨(rho 34456 : Seg34.F), (rho 34457 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung16

theorem seg34_rung17 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34009 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX17 rho : Seg34.F), (seg34AccY17 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34456 : Seg34.F), (rho 34457 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX17 rho : Seg34.F), (seg34AccY17 rho : Seg34.F)⟩
        ⟨(rho 34456 : Seg34.F), (rho 34457 : Seg34.F)⟩
        ⟨(seg34AccX18 rho : Seg34.F), (seg34AccY18 rho : Seg34.F)⟩
        ⟨(rho 34469 : Seg34.F), (rho 34470 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3186, r3187, r3188, r3189, r3190, r3191, r3192, r3193, r3194, r3195, r3196, r3197, r3198, _⟩
  unfold Seg34.relationRow3186 Seg34.relationLc180 Seg34.relationLc180Part0 Seg34.relationLc180Part1 at r3186
  unfold Seg34.relationRow3187 at r3187
  unfold Seg34.relationRow3188 at r3188
  unfold Seg34.relationRow3189 at r3189
  unfold Seg34.relationRow3190 at r3190
  unfold Seg34.relationRow3191 at r3191
  unfold Seg34.relationRow3192 at r3192
  unfold Seg34.relationRow3193 at r3193
  unfold Seg34.relationRow3194 at r3194
  unfold Seg34.relationRow3195 at r3195
  unfold Seg34.relationRow3196 at r3196
  unfold Seg34.relationRow3197 at r3197
  unfold Seg34.relationRow3198 at r3198
  have hrung17 (bit : Bool) (hbit : rho 34009 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX17 rho : Seg34.F), (seg34AccY17 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34456 : Seg34.F), (rho 34457 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX17 rho : Seg34.F), (seg34AccY17 rho : Seg34.F)⟩
        ⟨(rho 34456 : Seg34.F), (rho 34457 : Seg34.F)⟩
        ⟨(seg34AccX18 rho : Seg34.F), (seg34AccY18 rho : Seg34.F)⟩
        ⟨(rho 34469 : Seg34.F), (rho 34470 : Seg34.F)⟩ := by
    have ha0 : (rho 34456 + rho 34457) * (seg34AccX17 rho + seg34AccY17 rho) = rho 34458 := by
      rw [seg34LadderFlatX17_eq, seg34LadderFlatY17_eq]
      unfold seg34LadderFlatX17 seg34LadderFlatY17
      linear_combination r3186
    have ha1 : rho 34457 * seg34AccX17 rho = rho 34459 := by
      rw [seg34LadderFlatX17_eq]
      unfold seg34LadderFlatX17
      linear_combination r3187
    have ha2 : rho 34456 * seg34AccY17 rho = rho 34460 := by
      rw [seg34LadderFlatY17_eq]
      unfold seg34LadderFlatY17
      linear_combination r3188
    have ha3 : 3021 * rho 34459 * rho 34460 = rho 34461 := by
      linear_combination r3189
    have ha4 : rho 34462 * (1 + rho 34461) = rho 34459 + rho 34460 := by
      linear_combination r3190
    have ha5 : rho 34463 * (1 - rho 34461) = rho 34458 - rho 34459 - rho 34460 := by
      linear_combination r3191
    have haddx :
        rho 34462 * (1 + 3021 * (rho 34457 * seg34AccX17 rho) * (rho 34456 * seg34AccY17 rho)) =
          rho 34457 * seg34AccX17 rho + rho 34456 * seg34AccY17 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34463 * (1 - 3021 * (rho 34457 * seg34AccX17 rho) * (rho 34456 * seg34AccY17 rho)) =
          (-1) * (rho 34457 * seg34AccX17 rho) - rho 34456 * seg34AccY17 rho +
            (seg34AccY17 rho - seg34AccX17 rho * (-1)) * (rho 34456 + rho 34457) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34463 * (1 - rho 34461) = rho 34458 - rho 34459 - rho 34460 := ha5
        _ = (-1) * rho 34459 - rho 34460 + (seg34AccY17 rho - seg34AccX17 rho * (-1)) * (rho 34456 + rho 34457) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX18 rho = seg34AccX17 rho - Bool.toZMod bit * (seg34AccX17 rho - rho 34462) := by
      have hd : rho 34464 = Bool.toZMod bit * (rho 34462 - seg34AccX17 rho) := by
        rw [← hbit, seg34LadderFlatX17_eq]
        unfold seg34LadderFlatX17
        linear_combination -r3192
      unfold seg34AccX18
      linear_combination hd
    have hsely : seg34AccY18 rho = seg34AccY17 rho - Bool.toZMod bit * (seg34AccY17 rho - rho 34463) := by
      have hd : rho 34465 = Bool.toZMod bit * (rho 34463 - seg34AccY17 rho) := by
        rw [← hbit, seg34LadderFlatY17_eq]
        unfold seg34LadderFlatY17
        linear_combination -r3193
      unfold seg34AccY18
      linear_combination hd
    have hd0 : rho 34456 * rho 34457 = rho 34466 := by linear_combination r3194
    have hd1 : rho 34456 * rho 34456 = rho 34467 := by linear_combination r3195
    have hd2 : rho 34457 * rho 34457 = rho 34468 := by linear_combination r3196
    have hd3 : rho 34469 * (rho 34457 * rho 34457 + rho 34456 * rho 34456 * (-1)) = 2 * (rho 34456 * rho 34457) := by
      rw [hd0, hd1, hd2]
      linear_combination r3197
    have hd4 : rho 34470 * (2 - (rho 34457 * rho 34457 + rho 34456 * rho 34456 * (-1))) = rho 34457 * rho 34457 - rho 34456 * rho 34456 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3198
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX17 rho : Seg34.F), (seg34AccY17 rho : Seg34.F)⟩
      ⟨(rho 34456 : Seg34.F), (rho 34457 : Seg34.F)⟩
      ⟨(rho 34462 : Seg34.F), (rho 34463 : Seg34.F)⟩
      ⟨(seg34AccX18 rho : Seg34.F), (seg34AccY18 rho : Seg34.F)⟩
      ⟨(rho 34469 : Seg34.F), (rho 34470 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung17

theorem seg34_rung18 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34010 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX18 rho : Seg34.F), (seg34AccY18 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34469 : Seg34.F), (rho 34470 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX18 rho : Seg34.F), (seg34AccY18 rho : Seg34.F)⟩
        ⟨(rho 34469 : Seg34.F), (rho 34470 : Seg34.F)⟩
        ⟨(seg34AccX19 rho : Seg34.F), (seg34AccY19 rho : Seg34.F)⟩
        ⟨(rho 34482 : Seg34.F), (rho 34483 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3199⟩
  unfold Seg34.relationPart40 at p40
  rcases p40 with ⟨r3200, r3201, r3202, r3203, r3204, r3205, r3206, r3207, r3208, r3209, r3210, r3211, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3199 Seg34.relationLc181 Seg34.relationLc181Part0 Seg34.relationLc181Part1 at r3199
  unfold Seg34.relationRow3200 at r3200
  unfold Seg34.relationRow3201 at r3201
  unfold Seg34.relationRow3202 at r3202
  unfold Seg34.relationRow3203 at r3203
  unfold Seg34.relationRow3204 at r3204
  unfold Seg34.relationRow3205 at r3205
  unfold Seg34.relationRow3206 at r3206
  unfold Seg34.relationRow3207 at r3207
  unfold Seg34.relationRow3208 at r3208
  unfold Seg34.relationRow3209 at r3209
  unfold Seg34.relationRow3210 at r3210
  unfold Seg34.relationRow3211 at r3211
  have hrung18 (bit : Bool) (hbit : rho 34010 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX18 rho : Seg34.F), (seg34AccY18 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34469 : Seg34.F), (rho 34470 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX18 rho : Seg34.F), (seg34AccY18 rho : Seg34.F)⟩
        ⟨(rho 34469 : Seg34.F), (rho 34470 : Seg34.F)⟩
        ⟨(seg34AccX19 rho : Seg34.F), (seg34AccY19 rho : Seg34.F)⟩
        ⟨(rho 34482 : Seg34.F), (rho 34483 : Seg34.F)⟩ := by
    have ha0 : (rho 34469 + rho 34470) * (seg34AccX18 rho + seg34AccY18 rho) = rho 34471 := by
      rw [seg34LadderFlatX18_eq, seg34LadderFlatY18_eq]
      unfold seg34LadderFlatX18 seg34LadderFlatY18
      linear_combination r3199
    have ha1 : rho 34470 * seg34AccX18 rho = rho 34472 := by
      rw [seg34LadderFlatX18_eq]
      unfold seg34LadderFlatX18
      linear_combination r3200
    have ha2 : rho 34469 * seg34AccY18 rho = rho 34473 := by
      rw [seg34LadderFlatY18_eq]
      unfold seg34LadderFlatY18
      linear_combination r3201
    have ha3 : 3021 * rho 34472 * rho 34473 = rho 34474 := by
      linear_combination r3202
    have ha4 : rho 34475 * (1 + rho 34474) = rho 34472 + rho 34473 := by
      linear_combination r3203
    have ha5 : rho 34476 * (1 - rho 34474) = rho 34471 - rho 34472 - rho 34473 := by
      linear_combination r3204
    have haddx :
        rho 34475 * (1 + 3021 * (rho 34470 * seg34AccX18 rho) * (rho 34469 * seg34AccY18 rho)) =
          rho 34470 * seg34AccX18 rho + rho 34469 * seg34AccY18 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34476 * (1 - 3021 * (rho 34470 * seg34AccX18 rho) * (rho 34469 * seg34AccY18 rho)) =
          (-1) * (rho 34470 * seg34AccX18 rho) - rho 34469 * seg34AccY18 rho +
            (seg34AccY18 rho - seg34AccX18 rho * (-1)) * (rho 34469 + rho 34470) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34476 * (1 - rho 34474) = rho 34471 - rho 34472 - rho 34473 := ha5
        _ = (-1) * rho 34472 - rho 34473 + (seg34AccY18 rho - seg34AccX18 rho * (-1)) * (rho 34469 + rho 34470) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX19 rho = seg34AccX18 rho - Bool.toZMod bit * (seg34AccX18 rho - rho 34475) := by
      have hd : rho 34477 = Bool.toZMod bit * (rho 34475 - seg34AccX18 rho) := by
        rw [← hbit, seg34LadderFlatX18_eq]
        unfold seg34LadderFlatX18
        linear_combination -r3205
      unfold seg34AccX19
      linear_combination hd
    have hsely : seg34AccY19 rho = seg34AccY18 rho - Bool.toZMod bit * (seg34AccY18 rho - rho 34476) := by
      have hd : rho 34478 = Bool.toZMod bit * (rho 34476 - seg34AccY18 rho) := by
        rw [← hbit, seg34LadderFlatY18_eq]
        unfold seg34LadderFlatY18
        linear_combination -r3206
      unfold seg34AccY19
      linear_combination hd
    have hd0 : rho 34469 * rho 34470 = rho 34479 := by linear_combination r3207
    have hd1 : rho 34469 * rho 34469 = rho 34480 := by linear_combination r3208
    have hd2 : rho 34470 * rho 34470 = rho 34481 := by linear_combination r3209
    have hd3 : rho 34482 * (rho 34470 * rho 34470 + rho 34469 * rho 34469 * (-1)) = 2 * (rho 34469 * rho 34470) := by
      rw [hd0, hd1, hd2]
      linear_combination r3210
    have hd4 : rho 34483 * (2 - (rho 34470 * rho 34470 + rho 34469 * rho 34469 * (-1))) = rho 34470 * rho 34470 - rho 34469 * rho 34469 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3211
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX18 rho : Seg34.F), (seg34AccY18 rho : Seg34.F)⟩
      ⟨(rho 34469 : Seg34.F), (rho 34470 : Seg34.F)⟩
      ⟨(rho 34475 : Seg34.F), (rho 34476 : Seg34.F)⟩
      ⟨(seg34AccX19 rho : Seg34.F), (seg34AccY19 rho : Seg34.F)⟩
      ⟨(rho 34482 : Seg34.F), (rho 34483 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung18

theorem seg34_rung19 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34011 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX19 rho : Seg34.F), (seg34AccY19 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34482 : Seg34.F), (rho 34483 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX19 rho : Seg34.F), (seg34AccY19 rho : Seg34.F)⟩
        ⟨(rho 34482 : Seg34.F), (rho 34483 : Seg34.F)⟩
        ⟨(seg34AccX20 rho : Seg34.F), (seg34AccY20 rho : Seg34.F)⟩
        ⟨(rho 34495 : Seg34.F), (rho 34496 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r3212, r3213, r3214, r3215, r3216, r3217, r3218, r3219, r3220, r3221, r3222, r3223, r3224, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3212 Seg34.relationLc182 Seg34.relationLc182Part0 Seg34.relationLc182Part1 at r3212
  unfold Seg34.relationRow3213 at r3213
  unfold Seg34.relationRow3214 at r3214
  unfold Seg34.relationRow3215 at r3215
  unfold Seg34.relationRow3216 at r3216
  unfold Seg34.relationRow3217 at r3217
  unfold Seg34.relationRow3218 at r3218
  unfold Seg34.relationRow3219 at r3219
  unfold Seg34.relationRow3220 at r3220
  unfold Seg34.relationRow3221 at r3221
  unfold Seg34.relationRow3222 at r3222
  unfold Seg34.relationRow3223 at r3223
  unfold Seg34.relationRow3224 at r3224
  have hrung19 (bit : Bool) (hbit : rho 34011 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX19 rho : Seg34.F), (seg34AccY19 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34482 : Seg34.F), (rho 34483 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX19 rho : Seg34.F), (seg34AccY19 rho : Seg34.F)⟩
        ⟨(rho 34482 : Seg34.F), (rho 34483 : Seg34.F)⟩
        ⟨(seg34AccX20 rho : Seg34.F), (seg34AccY20 rho : Seg34.F)⟩
        ⟨(rho 34495 : Seg34.F), (rho 34496 : Seg34.F)⟩ := by
    have ha0 : (rho 34482 + rho 34483) * (seg34AccX19 rho + seg34AccY19 rho) = rho 34484 := by
      rw [seg34LadderFlatX19_eq, seg34LadderFlatY19_eq]
      unfold seg34LadderFlatX19 seg34LadderFlatY19
      linear_combination r3212
    have ha1 : rho 34483 * seg34AccX19 rho = rho 34485 := by
      rw [seg34LadderFlatX19_eq]
      unfold seg34LadderFlatX19
      linear_combination r3213
    have ha2 : rho 34482 * seg34AccY19 rho = rho 34486 := by
      rw [seg34LadderFlatY19_eq]
      unfold seg34LadderFlatY19
      linear_combination r3214
    have ha3 : 3021 * rho 34485 * rho 34486 = rho 34487 := by
      linear_combination r3215
    have ha4 : rho 34488 * (1 + rho 34487) = rho 34485 + rho 34486 := by
      linear_combination r3216
    have ha5 : rho 34489 * (1 - rho 34487) = rho 34484 - rho 34485 - rho 34486 := by
      linear_combination r3217
    have haddx :
        rho 34488 * (1 + 3021 * (rho 34483 * seg34AccX19 rho) * (rho 34482 * seg34AccY19 rho)) =
          rho 34483 * seg34AccX19 rho + rho 34482 * seg34AccY19 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34489 * (1 - 3021 * (rho 34483 * seg34AccX19 rho) * (rho 34482 * seg34AccY19 rho)) =
          (-1) * (rho 34483 * seg34AccX19 rho) - rho 34482 * seg34AccY19 rho +
            (seg34AccY19 rho - seg34AccX19 rho * (-1)) * (rho 34482 + rho 34483) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34489 * (1 - rho 34487) = rho 34484 - rho 34485 - rho 34486 := ha5
        _ = (-1) * rho 34485 - rho 34486 + (seg34AccY19 rho - seg34AccX19 rho * (-1)) * (rho 34482 + rho 34483) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX20 rho = seg34AccX19 rho - Bool.toZMod bit * (seg34AccX19 rho - rho 34488) := by
      have hd : rho 34490 = Bool.toZMod bit * (rho 34488 - seg34AccX19 rho) := by
        rw [← hbit, seg34LadderFlatX19_eq]
        unfold seg34LadderFlatX19
        linear_combination -r3218
      unfold seg34AccX20
      linear_combination hd
    have hsely : seg34AccY20 rho = seg34AccY19 rho - Bool.toZMod bit * (seg34AccY19 rho - rho 34489) := by
      have hd : rho 34491 = Bool.toZMod bit * (rho 34489 - seg34AccY19 rho) := by
        rw [← hbit, seg34LadderFlatY19_eq]
        unfold seg34LadderFlatY19
        linear_combination -r3219
      unfold seg34AccY20
      linear_combination hd
    have hd0 : rho 34482 * rho 34483 = rho 34492 := by linear_combination r3220
    have hd1 : rho 34482 * rho 34482 = rho 34493 := by linear_combination r3221
    have hd2 : rho 34483 * rho 34483 = rho 34494 := by linear_combination r3222
    have hd3 : rho 34495 * (rho 34483 * rho 34483 + rho 34482 * rho 34482 * (-1)) = 2 * (rho 34482 * rho 34483) := by
      rw [hd0, hd1, hd2]
      linear_combination r3223
    have hd4 : rho 34496 * (2 - (rho 34483 * rho 34483 + rho 34482 * rho 34482 * (-1))) = rho 34483 * rho 34483 - rho 34482 * rho 34482 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3224
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX19 rho : Seg34.F), (seg34AccY19 rho : Seg34.F)⟩
      ⟨(rho 34482 : Seg34.F), (rho 34483 : Seg34.F)⟩
      ⟨(rho 34488 : Seg34.F), (rho 34489 : Seg34.F)⟩
      ⟨(seg34AccX20 rho : Seg34.F), (seg34AccY20 rho : Seg34.F)⟩
      ⟨(rho 34495 : Seg34.F), (rho 34496 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung19

theorem seg34_rung20 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34012 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX20 rho : Seg34.F), (seg34AccY20 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34495 : Seg34.F), (rho 34496 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX20 rho : Seg34.F), (seg34AccY20 rho : Seg34.F)⟩
        ⟨(rho 34495 : Seg34.F), (rho 34496 : Seg34.F)⟩
        ⟨(seg34AccX21 rho : Seg34.F), (seg34AccY21 rho : Seg34.F)⟩
        ⟨(rho 34508 : Seg34.F), (rho 34509 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3225, r3226, r3227, r3228, r3229, r3230, r3231, r3232, r3233, r3234, r3235, r3236, r3237, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3225 Seg34.relationLc183 Seg34.relationLc183Part0 Seg34.relationLc183Part1 at r3225
  unfold Seg34.relationRow3226 at r3226
  unfold Seg34.relationRow3227 at r3227
  unfold Seg34.relationRow3228 at r3228
  unfold Seg34.relationRow3229 at r3229
  unfold Seg34.relationRow3230 at r3230
  unfold Seg34.relationRow3231 at r3231
  unfold Seg34.relationRow3232 at r3232
  unfold Seg34.relationRow3233 at r3233
  unfold Seg34.relationRow3234 at r3234
  unfold Seg34.relationRow3235 at r3235
  unfold Seg34.relationRow3236 at r3236
  unfold Seg34.relationRow3237 at r3237
  have hrung20 (bit : Bool) (hbit : rho 34012 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX20 rho : Seg34.F), (seg34AccY20 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34495 : Seg34.F), (rho 34496 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX20 rho : Seg34.F), (seg34AccY20 rho : Seg34.F)⟩
        ⟨(rho 34495 : Seg34.F), (rho 34496 : Seg34.F)⟩
        ⟨(seg34AccX21 rho : Seg34.F), (seg34AccY21 rho : Seg34.F)⟩
        ⟨(rho 34508 : Seg34.F), (rho 34509 : Seg34.F)⟩ := by
    have ha0 : (rho 34495 + rho 34496) * (seg34AccX20 rho + seg34AccY20 rho) = rho 34497 := by
      rw [seg34LadderFlatX20_eq, seg34LadderFlatY20_eq]
      unfold seg34LadderFlatX20 seg34LadderFlatY20
      linear_combination r3225
    have ha1 : rho 34496 * seg34AccX20 rho = rho 34498 := by
      rw [seg34LadderFlatX20_eq]
      unfold seg34LadderFlatX20
      linear_combination r3226
    have ha2 : rho 34495 * seg34AccY20 rho = rho 34499 := by
      rw [seg34LadderFlatY20_eq]
      unfold seg34LadderFlatY20
      linear_combination r3227
    have ha3 : 3021 * rho 34498 * rho 34499 = rho 34500 := by
      linear_combination r3228
    have ha4 : rho 34501 * (1 + rho 34500) = rho 34498 + rho 34499 := by
      linear_combination r3229
    have ha5 : rho 34502 * (1 - rho 34500) = rho 34497 - rho 34498 - rho 34499 := by
      linear_combination r3230
    have haddx :
        rho 34501 * (1 + 3021 * (rho 34496 * seg34AccX20 rho) * (rho 34495 * seg34AccY20 rho)) =
          rho 34496 * seg34AccX20 rho + rho 34495 * seg34AccY20 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34502 * (1 - 3021 * (rho 34496 * seg34AccX20 rho) * (rho 34495 * seg34AccY20 rho)) =
          (-1) * (rho 34496 * seg34AccX20 rho) - rho 34495 * seg34AccY20 rho +
            (seg34AccY20 rho - seg34AccX20 rho * (-1)) * (rho 34495 + rho 34496) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34502 * (1 - rho 34500) = rho 34497 - rho 34498 - rho 34499 := ha5
        _ = (-1) * rho 34498 - rho 34499 + (seg34AccY20 rho - seg34AccX20 rho * (-1)) * (rho 34495 + rho 34496) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX21 rho = seg34AccX20 rho - Bool.toZMod bit * (seg34AccX20 rho - rho 34501) := by
      have hd : rho 34503 = Bool.toZMod bit * (rho 34501 - seg34AccX20 rho) := by
        rw [← hbit, seg34LadderFlatX20_eq]
        unfold seg34LadderFlatX20
        linear_combination -r3231
      unfold seg34AccX21
      linear_combination hd
    have hsely : seg34AccY21 rho = seg34AccY20 rho - Bool.toZMod bit * (seg34AccY20 rho - rho 34502) := by
      have hd : rho 34504 = Bool.toZMod bit * (rho 34502 - seg34AccY20 rho) := by
        rw [← hbit, seg34LadderFlatY20_eq]
        unfold seg34LadderFlatY20
        linear_combination -r3232
      unfold seg34AccY21
      linear_combination hd
    have hd0 : rho 34495 * rho 34496 = rho 34505 := by linear_combination r3233
    have hd1 : rho 34495 * rho 34495 = rho 34506 := by linear_combination r3234
    have hd2 : rho 34496 * rho 34496 = rho 34507 := by linear_combination r3235
    have hd3 : rho 34508 * (rho 34496 * rho 34496 + rho 34495 * rho 34495 * (-1)) = 2 * (rho 34495 * rho 34496) := by
      rw [hd0, hd1, hd2]
      linear_combination r3236
    have hd4 : rho 34509 * (2 - (rho 34496 * rho 34496 + rho 34495 * rho 34495 * (-1))) = rho 34496 * rho 34496 - rho 34495 * rho 34495 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3237
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX20 rho : Seg34.F), (seg34AccY20 rho : Seg34.F)⟩
      ⟨(rho 34495 : Seg34.F), (rho 34496 : Seg34.F)⟩
      ⟨(rho 34501 : Seg34.F), (rho 34502 : Seg34.F)⟩
      ⟨(seg34AccX21 rho : Seg34.F), (seg34AccY21 rho : Seg34.F)⟩
      ⟨(rho 34508 : Seg34.F), (rho 34509 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung20

theorem seg34_rung21 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34013 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX21 rho : Seg34.F), (seg34AccY21 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34508 : Seg34.F), (rho 34509 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX21 rho : Seg34.F), (seg34AccY21 rho : Seg34.F)⟩
        ⟨(rho 34508 : Seg34.F), (rho 34509 : Seg34.F)⟩
        ⟨(seg34AccX22 rho : Seg34.F), (seg34AccY22 rho : Seg34.F)⟩
        ⟨(rho 34521 : Seg34.F), (rho 34522 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3238, r3239, r3240, r3241, r3242, r3243, r3244, r3245, r3246, r3247, r3248, r3249, r3250, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3238 Seg34.relationLc184 Seg34.relationLc184Part0 Seg34.relationLc184Part1 at r3238
  unfold Seg34.relationRow3239 at r3239
  unfold Seg34.relationRow3240 at r3240
  unfold Seg34.relationRow3241 at r3241
  unfold Seg34.relationRow3242 at r3242
  unfold Seg34.relationRow3243 at r3243
  unfold Seg34.relationRow3244 at r3244
  unfold Seg34.relationRow3245 at r3245
  unfold Seg34.relationRow3246 at r3246
  unfold Seg34.relationRow3247 at r3247
  unfold Seg34.relationRow3248 at r3248
  unfold Seg34.relationRow3249 at r3249
  unfold Seg34.relationRow3250 at r3250
  have hrung21 (bit : Bool) (hbit : rho 34013 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX21 rho : Seg34.F), (seg34AccY21 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34508 : Seg34.F), (rho 34509 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX21 rho : Seg34.F), (seg34AccY21 rho : Seg34.F)⟩
        ⟨(rho 34508 : Seg34.F), (rho 34509 : Seg34.F)⟩
        ⟨(seg34AccX22 rho : Seg34.F), (seg34AccY22 rho : Seg34.F)⟩
        ⟨(rho 34521 : Seg34.F), (rho 34522 : Seg34.F)⟩ := by
    have ha0 : (rho 34508 + rho 34509) * (seg34AccX21 rho + seg34AccY21 rho) = rho 34510 := by
      rw [seg34LadderFlatX21_eq, seg34LadderFlatY21_eq]
      unfold seg34LadderFlatX21 seg34LadderFlatY21
      linear_combination r3238
    have ha1 : rho 34509 * seg34AccX21 rho = rho 34511 := by
      rw [seg34LadderFlatX21_eq]
      unfold seg34LadderFlatX21
      linear_combination r3239
    have ha2 : rho 34508 * seg34AccY21 rho = rho 34512 := by
      rw [seg34LadderFlatY21_eq]
      unfold seg34LadderFlatY21
      linear_combination r3240
    have ha3 : 3021 * rho 34511 * rho 34512 = rho 34513 := by
      linear_combination r3241
    have ha4 : rho 34514 * (1 + rho 34513) = rho 34511 + rho 34512 := by
      linear_combination r3242
    have ha5 : rho 34515 * (1 - rho 34513) = rho 34510 - rho 34511 - rho 34512 := by
      linear_combination r3243
    have haddx :
        rho 34514 * (1 + 3021 * (rho 34509 * seg34AccX21 rho) * (rho 34508 * seg34AccY21 rho)) =
          rho 34509 * seg34AccX21 rho + rho 34508 * seg34AccY21 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34515 * (1 - 3021 * (rho 34509 * seg34AccX21 rho) * (rho 34508 * seg34AccY21 rho)) =
          (-1) * (rho 34509 * seg34AccX21 rho) - rho 34508 * seg34AccY21 rho +
            (seg34AccY21 rho - seg34AccX21 rho * (-1)) * (rho 34508 + rho 34509) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34515 * (1 - rho 34513) = rho 34510 - rho 34511 - rho 34512 := ha5
        _ = (-1) * rho 34511 - rho 34512 + (seg34AccY21 rho - seg34AccX21 rho * (-1)) * (rho 34508 + rho 34509) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX22 rho = seg34AccX21 rho - Bool.toZMod bit * (seg34AccX21 rho - rho 34514) := by
      have hd : rho 34516 = Bool.toZMod bit * (rho 34514 - seg34AccX21 rho) := by
        rw [← hbit, seg34LadderFlatX21_eq]
        unfold seg34LadderFlatX21
        linear_combination -r3244
      unfold seg34AccX22
      linear_combination hd
    have hsely : seg34AccY22 rho = seg34AccY21 rho - Bool.toZMod bit * (seg34AccY21 rho - rho 34515) := by
      have hd : rho 34517 = Bool.toZMod bit * (rho 34515 - seg34AccY21 rho) := by
        rw [← hbit, seg34LadderFlatY21_eq]
        unfold seg34LadderFlatY21
        linear_combination -r3245
      unfold seg34AccY22
      linear_combination hd
    have hd0 : rho 34508 * rho 34509 = rho 34518 := by linear_combination r3246
    have hd1 : rho 34508 * rho 34508 = rho 34519 := by linear_combination r3247
    have hd2 : rho 34509 * rho 34509 = rho 34520 := by linear_combination r3248
    have hd3 : rho 34521 * (rho 34509 * rho 34509 + rho 34508 * rho 34508 * (-1)) = 2 * (rho 34508 * rho 34509) := by
      rw [hd0, hd1, hd2]
      linear_combination r3249
    have hd4 : rho 34522 * (2 - (rho 34509 * rho 34509 + rho 34508 * rho 34508 * (-1))) = rho 34509 * rho 34509 - rho 34508 * rho 34508 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3250
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX21 rho : Seg34.F), (seg34AccY21 rho : Seg34.F)⟩
      ⟨(rho 34508 : Seg34.F), (rho 34509 : Seg34.F)⟩
      ⟨(rho 34514 : Seg34.F), (rho 34515 : Seg34.F)⟩
      ⟨(seg34AccX22 rho : Seg34.F), (seg34AccY22 rho : Seg34.F)⟩
      ⟨(rho 34521 : Seg34.F), (rho 34522 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung21

theorem seg34_rung22 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34014 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX22 rho : Seg34.F), (seg34AccY22 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34521 : Seg34.F), (rho 34522 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX22 rho : Seg34.F), (seg34AccY22 rho : Seg34.F)⟩
        ⟨(rho 34521 : Seg34.F), (rho 34522 : Seg34.F)⟩
        ⟨(seg34AccX23 rho : Seg34.F), (seg34AccY23 rho : Seg34.F)⟩
        ⟨(rho 34534 : Seg34.F), (rho 34535 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3251, r3252, r3253, r3254, r3255, r3256, r3257, r3258, r3259, r3260, r3261, r3262, r3263, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3251 Seg34.relationLc185 Seg34.relationLc185Part0 Seg34.relationLc185Part1 at r3251
  unfold Seg34.relationRow3252 at r3252
  unfold Seg34.relationRow3253 at r3253
  unfold Seg34.relationRow3254 at r3254
  unfold Seg34.relationRow3255 at r3255
  unfold Seg34.relationRow3256 at r3256
  unfold Seg34.relationRow3257 at r3257
  unfold Seg34.relationRow3258 at r3258
  unfold Seg34.relationRow3259 at r3259
  unfold Seg34.relationRow3260 at r3260
  unfold Seg34.relationRow3261 at r3261
  unfold Seg34.relationRow3262 at r3262
  unfold Seg34.relationRow3263 at r3263
  have hrung22 (bit : Bool) (hbit : rho 34014 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX22 rho : Seg34.F), (seg34AccY22 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34521 : Seg34.F), (rho 34522 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX22 rho : Seg34.F), (seg34AccY22 rho : Seg34.F)⟩
        ⟨(rho 34521 : Seg34.F), (rho 34522 : Seg34.F)⟩
        ⟨(seg34AccX23 rho : Seg34.F), (seg34AccY23 rho : Seg34.F)⟩
        ⟨(rho 34534 : Seg34.F), (rho 34535 : Seg34.F)⟩ := by
    have ha0 : (rho 34521 + rho 34522) * (seg34AccX22 rho + seg34AccY22 rho) = rho 34523 := by
      rw [seg34LadderFlatX22_eq, seg34LadderFlatY22_eq]
      unfold seg34LadderFlatX22 seg34LadderFlatY22
      linear_combination r3251
    have ha1 : rho 34522 * seg34AccX22 rho = rho 34524 := by
      rw [seg34LadderFlatX22_eq]
      unfold seg34LadderFlatX22
      linear_combination r3252
    have ha2 : rho 34521 * seg34AccY22 rho = rho 34525 := by
      rw [seg34LadderFlatY22_eq]
      unfold seg34LadderFlatY22
      linear_combination r3253
    have ha3 : 3021 * rho 34524 * rho 34525 = rho 34526 := by
      linear_combination r3254
    have ha4 : rho 34527 * (1 + rho 34526) = rho 34524 + rho 34525 := by
      linear_combination r3255
    have ha5 : rho 34528 * (1 - rho 34526) = rho 34523 - rho 34524 - rho 34525 := by
      linear_combination r3256
    have haddx :
        rho 34527 * (1 + 3021 * (rho 34522 * seg34AccX22 rho) * (rho 34521 * seg34AccY22 rho)) =
          rho 34522 * seg34AccX22 rho + rho 34521 * seg34AccY22 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34528 * (1 - 3021 * (rho 34522 * seg34AccX22 rho) * (rho 34521 * seg34AccY22 rho)) =
          (-1) * (rho 34522 * seg34AccX22 rho) - rho 34521 * seg34AccY22 rho +
            (seg34AccY22 rho - seg34AccX22 rho * (-1)) * (rho 34521 + rho 34522) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34528 * (1 - rho 34526) = rho 34523 - rho 34524 - rho 34525 := ha5
        _ = (-1) * rho 34524 - rho 34525 + (seg34AccY22 rho - seg34AccX22 rho * (-1)) * (rho 34521 + rho 34522) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX23 rho = seg34AccX22 rho - Bool.toZMod bit * (seg34AccX22 rho - rho 34527) := by
      have hd : rho 34529 = Bool.toZMod bit * (rho 34527 - seg34AccX22 rho) := by
        rw [← hbit, seg34LadderFlatX22_eq]
        unfold seg34LadderFlatX22
        linear_combination -r3257
      unfold seg34AccX23
      linear_combination hd
    have hsely : seg34AccY23 rho = seg34AccY22 rho - Bool.toZMod bit * (seg34AccY22 rho - rho 34528) := by
      have hd : rho 34530 = Bool.toZMod bit * (rho 34528 - seg34AccY22 rho) := by
        rw [← hbit, seg34LadderFlatY22_eq]
        unfold seg34LadderFlatY22
        linear_combination -r3258
      unfold seg34AccY23
      linear_combination hd
    have hd0 : rho 34521 * rho 34522 = rho 34531 := by linear_combination r3259
    have hd1 : rho 34521 * rho 34521 = rho 34532 := by linear_combination r3260
    have hd2 : rho 34522 * rho 34522 = rho 34533 := by linear_combination r3261
    have hd3 : rho 34534 * (rho 34522 * rho 34522 + rho 34521 * rho 34521 * (-1)) = 2 * (rho 34521 * rho 34522) := by
      rw [hd0, hd1, hd2]
      linear_combination r3262
    have hd4 : rho 34535 * (2 - (rho 34522 * rho 34522 + rho 34521 * rho 34521 * (-1))) = rho 34522 * rho 34522 - rho 34521 * rho 34521 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3263
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX22 rho : Seg34.F), (seg34AccY22 rho : Seg34.F)⟩
      ⟨(rho 34521 : Seg34.F), (rho 34522 : Seg34.F)⟩
      ⟨(rho 34527 : Seg34.F), (rho 34528 : Seg34.F)⟩
      ⟨(seg34AccX23 rho : Seg34.F), (seg34AccY23 rho : Seg34.F)⟩
      ⟨(rho 34534 : Seg34.F), (rho 34535 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung22

theorem seg34_rung23 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34015 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX23 rho : Seg34.F), (seg34AccY23 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34534 : Seg34.F), (rho 34535 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX23 rho : Seg34.F), (seg34AccY23 rho : Seg34.F)⟩
        ⟨(rho 34534 : Seg34.F), (rho 34535 : Seg34.F)⟩
        ⟨(seg34AccX24 rho : Seg34.F), (seg34AccY24 rho : Seg34.F)⟩
        ⟨(rho 34547 : Seg34.F), (rho 34548 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3264, r3265, r3266, r3267, r3268, r3269, r3270, r3271, r3272, r3273, r3274, r3275, r3276, _, _, _⟩
  unfold Seg34.relationRow3264 Seg34.relationLc186 Seg34.relationLc186Part0 Seg34.relationLc186Part1 at r3264
  unfold Seg34.relationRow3265 at r3265
  unfold Seg34.relationRow3266 at r3266
  unfold Seg34.relationRow3267 at r3267
  unfold Seg34.relationRow3268 at r3268
  unfold Seg34.relationRow3269 at r3269
  unfold Seg34.relationRow3270 at r3270
  unfold Seg34.relationRow3271 at r3271
  unfold Seg34.relationRow3272 at r3272
  unfold Seg34.relationRow3273 at r3273
  unfold Seg34.relationRow3274 at r3274
  unfold Seg34.relationRow3275 at r3275
  unfold Seg34.relationRow3276 at r3276
  have hrung23 (bit : Bool) (hbit : rho 34015 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX23 rho : Seg34.F), (seg34AccY23 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34534 : Seg34.F), (rho 34535 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX23 rho : Seg34.F), (seg34AccY23 rho : Seg34.F)⟩
        ⟨(rho 34534 : Seg34.F), (rho 34535 : Seg34.F)⟩
        ⟨(seg34AccX24 rho : Seg34.F), (seg34AccY24 rho : Seg34.F)⟩
        ⟨(rho 34547 : Seg34.F), (rho 34548 : Seg34.F)⟩ := by
    have ha0 : (rho 34534 + rho 34535) * (seg34AccX23 rho + seg34AccY23 rho) = rho 34536 := by
      rw [seg34LadderFlatX23_eq, seg34LadderFlatY23_eq]
      unfold seg34LadderFlatX23 seg34LadderFlatY23
      linear_combination r3264
    have ha1 : rho 34535 * seg34AccX23 rho = rho 34537 := by
      rw [seg34LadderFlatX23_eq]
      unfold seg34LadderFlatX23
      linear_combination r3265
    have ha2 : rho 34534 * seg34AccY23 rho = rho 34538 := by
      rw [seg34LadderFlatY23_eq]
      unfold seg34LadderFlatY23
      linear_combination r3266
    have ha3 : 3021 * rho 34537 * rho 34538 = rho 34539 := by
      linear_combination r3267
    have ha4 : rho 34540 * (1 + rho 34539) = rho 34537 + rho 34538 := by
      linear_combination r3268
    have ha5 : rho 34541 * (1 - rho 34539) = rho 34536 - rho 34537 - rho 34538 := by
      linear_combination r3269
    have haddx :
        rho 34540 * (1 + 3021 * (rho 34535 * seg34AccX23 rho) * (rho 34534 * seg34AccY23 rho)) =
          rho 34535 * seg34AccX23 rho + rho 34534 * seg34AccY23 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34541 * (1 - 3021 * (rho 34535 * seg34AccX23 rho) * (rho 34534 * seg34AccY23 rho)) =
          (-1) * (rho 34535 * seg34AccX23 rho) - rho 34534 * seg34AccY23 rho +
            (seg34AccY23 rho - seg34AccX23 rho * (-1)) * (rho 34534 + rho 34535) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34541 * (1 - rho 34539) = rho 34536 - rho 34537 - rho 34538 := ha5
        _ = (-1) * rho 34537 - rho 34538 + (seg34AccY23 rho - seg34AccX23 rho * (-1)) * (rho 34534 + rho 34535) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX24 rho = seg34AccX23 rho - Bool.toZMod bit * (seg34AccX23 rho - rho 34540) := by
      have hd : rho 34542 = Bool.toZMod bit * (rho 34540 - seg34AccX23 rho) := by
        rw [← hbit, seg34LadderFlatX23_eq]
        unfold seg34LadderFlatX23
        linear_combination -r3270
      unfold seg34AccX24
      linear_combination hd
    have hsely : seg34AccY24 rho = seg34AccY23 rho - Bool.toZMod bit * (seg34AccY23 rho - rho 34541) := by
      have hd : rho 34543 = Bool.toZMod bit * (rho 34541 - seg34AccY23 rho) := by
        rw [← hbit, seg34LadderFlatY23_eq]
        unfold seg34LadderFlatY23
        linear_combination -r3271
      unfold seg34AccY24
      linear_combination hd
    have hd0 : rho 34534 * rho 34535 = rho 34544 := by linear_combination r3272
    have hd1 : rho 34534 * rho 34534 = rho 34545 := by linear_combination r3273
    have hd2 : rho 34535 * rho 34535 = rho 34546 := by linear_combination r3274
    have hd3 : rho 34547 * (rho 34535 * rho 34535 + rho 34534 * rho 34534 * (-1)) = 2 * (rho 34534 * rho 34535) := by
      rw [hd0, hd1, hd2]
      linear_combination r3275
    have hd4 : rho 34548 * (2 - (rho 34535 * rho 34535 + rho 34534 * rho 34534 * (-1))) = rho 34535 * rho 34535 - rho 34534 * rho 34534 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3276
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX23 rho : Seg34.F), (seg34AccY23 rho : Seg34.F)⟩
      ⟨(rho 34534 : Seg34.F), (rho 34535 : Seg34.F)⟩
      ⟨(rho 34540 : Seg34.F), (rho 34541 : Seg34.F)⟩
      ⟨(seg34AccX24 rho : Seg34.F), (seg34AccY24 rho : Seg34.F)⟩
      ⟨(rho 34547 : Seg34.F), (rho 34548 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung23

theorem seg34_rung24 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34016 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX24 rho : Seg34.F), (seg34AccY24 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34547 : Seg34.F), (rho 34548 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX24 rho : Seg34.F), (seg34AccY24 rho : Seg34.F)⟩
        ⟨(rho 34547 : Seg34.F), (rho 34548 : Seg34.F)⟩
        ⟨(seg34AccX25 rho : Seg34.F), (seg34AccY25 rho : Seg34.F)⟩
        ⟨(rho 34560 : Seg34.F), (rho 34561 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3277, r3278, r3279⟩
  unfold Seg34.relationPart41 at p41
  rcases p41 with ⟨r3280, r3281, r3282, r3283, r3284, r3285, r3286, r3287, r3288, r3289, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3277 Seg34.relationLc187 Seg34.relationLc187Part0 Seg34.relationLc187Part1 at r3277
  unfold Seg34.relationRow3278 at r3278
  unfold Seg34.relationRow3279 at r3279
  unfold Seg34.relationRow3280 at r3280
  unfold Seg34.relationRow3281 at r3281
  unfold Seg34.relationRow3282 at r3282
  unfold Seg34.relationRow3283 at r3283
  unfold Seg34.relationRow3284 at r3284
  unfold Seg34.relationRow3285 at r3285
  unfold Seg34.relationRow3286 at r3286
  unfold Seg34.relationRow3287 at r3287
  unfold Seg34.relationRow3288 at r3288
  unfold Seg34.relationRow3289 at r3289
  have hrung24 (bit : Bool) (hbit : rho 34016 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX24 rho : Seg34.F), (seg34AccY24 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34547 : Seg34.F), (rho 34548 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX24 rho : Seg34.F), (seg34AccY24 rho : Seg34.F)⟩
        ⟨(rho 34547 : Seg34.F), (rho 34548 : Seg34.F)⟩
        ⟨(seg34AccX25 rho : Seg34.F), (seg34AccY25 rho : Seg34.F)⟩
        ⟨(rho 34560 : Seg34.F), (rho 34561 : Seg34.F)⟩ := by
    have ha0 : (rho 34547 + rho 34548) * (seg34AccX24 rho + seg34AccY24 rho) = rho 34549 := by
      rw [seg34LadderFlatX24_eq, seg34LadderFlatY24_eq]
      unfold seg34LadderFlatX24 seg34LadderFlatY24
      linear_combination r3277
    have ha1 : rho 34548 * seg34AccX24 rho = rho 34550 := by
      rw [seg34LadderFlatX24_eq]
      unfold seg34LadderFlatX24
      linear_combination r3278
    have ha2 : rho 34547 * seg34AccY24 rho = rho 34551 := by
      rw [seg34LadderFlatY24_eq]
      unfold seg34LadderFlatY24
      linear_combination r3279
    have ha3 : 3021 * rho 34550 * rho 34551 = rho 34552 := by
      linear_combination r3280
    have ha4 : rho 34553 * (1 + rho 34552) = rho 34550 + rho 34551 := by
      linear_combination r3281
    have ha5 : rho 34554 * (1 - rho 34552) = rho 34549 - rho 34550 - rho 34551 := by
      linear_combination r3282
    have haddx :
        rho 34553 * (1 + 3021 * (rho 34548 * seg34AccX24 rho) * (rho 34547 * seg34AccY24 rho)) =
          rho 34548 * seg34AccX24 rho + rho 34547 * seg34AccY24 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34554 * (1 - 3021 * (rho 34548 * seg34AccX24 rho) * (rho 34547 * seg34AccY24 rho)) =
          (-1) * (rho 34548 * seg34AccX24 rho) - rho 34547 * seg34AccY24 rho +
            (seg34AccY24 rho - seg34AccX24 rho * (-1)) * (rho 34547 + rho 34548) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34554 * (1 - rho 34552) = rho 34549 - rho 34550 - rho 34551 := ha5
        _ = (-1) * rho 34550 - rho 34551 + (seg34AccY24 rho - seg34AccX24 rho * (-1)) * (rho 34547 + rho 34548) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX25 rho = seg34AccX24 rho - Bool.toZMod bit * (seg34AccX24 rho - rho 34553) := by
      have hd : rho 34555 = Bool.toZMod bit * (rho 34553 - seg34AccX24 rho) := by
        rw [← hbit, seg34LadderFlatX24_eq]
        unfold seg34LadderFlatX24
        linear_combination -r3283
      unfold seg34AccX25
      linear_combination hd
    have hsely : seg34AccY25 rho = seg34AccY24 rho - Bool.toZMod bit * (seg34AccY24 rho - rho 34554) := by
      have hd : rho 34556 = Bool.toZMod bit * (rho 34554 - seg34AccY24 rho) := by
        rw [← hbit, seg34LadderFlatY24_eq]
        unfold seg34LadderFlatY24
        linear_combination -r3284
      unfold seg34AccY25
      linear_combination hd
    have hd0 : rho 34547 * rho 34548 = rho 34557 := by linear_combination r3285
    have hd1 : rho 34547 * rho 34547 = rho 34558 := by linear_combination r3286
    have hd2 : rho 34548 * rho 34548 = rho 34559 := by linear_combination r3287
    have hd3 : rho 34560 * (rho 34548 * rho 34548 + rho 34547 * rho 34547 * (-1)) = 2 * (rho 34547 * rho 34548) := by
      rw [hd0, hd1, hd2]
      linear_combination r3288
    have hd4 : rho 34561 * (2 - (rho 34548 * rho 34548 + rho 34547 * rho 34547 * (-1))) = rho 34548 * rho 34548 - rho 34547 * rho 34547 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3289
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX24 rho : Seg34.F), (seg34AccY24 rho : Seg34.F)⟩
      ⟨(rho 34547 : Seg34.F), (rho 34548 : Seg34.F)⟩
      ⟨(rho 34553 : Seg34.F), (rho 34554 : Seg34.F)⟩
      ⟨(seg34AccX25 rho : Seg34.F), (seg34AccY25 rho : Seg34.F)⟩
      ⟨(rho 34560 : Seg34.F), (rho 34561 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung24

theorem seg34_rung25 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34017 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX25 rho : Seg34.F), (seg34AccY25 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34560 : Seg34.F), (rho 34561 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX25 rho : Seg34.F), (seg34AccY25 rho : Seg34.F)⟩
        ⟨(rho 34560 : Seg34.F), (rho 34561 : Seg34.F)⟩
        ⟨(seg34AccX26 rho : Seg34.F), (seg34AccY26 rho : Seg34.F)⟩
        ⟨(rho 34573 : Seg34.F), (rho 34574 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, r3290, r3291, r3292, r3293, r3294, r3295, r3296, r3297, r3298, r3299, r3300, r3301, r3302, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3290 Seg34.relationLc188 Seg34.relationLc188Part0 Seg34.relationLc188Part1 at r3290
  unfold Seg34.relationRow3291 at r3291
  unfold Seg34.relationRow3292 at r3292
  unfold Seg34.relationRow3293 at r3293
  unfold Seg34.relationRow3294 at r3294
  unfold Seg34.relationRow3295 at r3295
  unfold Seg34.relationRow3296 at r3296
  unfold Seg34.relationRow3297 at r3297
  unfold Seg34.relationRow3298 at r3298
  unfold Seg34.relationRow3299 at r3299
  unfold Seg34.relationRow3300 at r3300
  unfold Seg34.relationRow3301 at r3301
  unfold Seg34.relationRow3302 at r3302
  have hrung25 (bit : Bool) (hbit : rho 34017 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX25 rho : Seg34.F), (seg34AccY25 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34560 : Seg34.F), (rho 34561 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX25 rho : Seg34.F), (seg34AccY25 rho : Seg34.F)⟩
        ⟨(rho 34560 : Seg34.F), (rho 34561 : Seg34.F)⟩
        ⟨(seg34AccX26 rho : Seg34.F), (seg34AccY26 rho : Seg34.F)⟩
        ⟨(rho 34573 : Seg34.F), (rho 34574 : Seg34.F)⟩ := by
    have ha0 : (rho 34560 + rho 34561) * (seg34AccX25 rho + seg34AccY25 rho) = rho 34562 := by
      rw [seg34LadderFlatX25_eq, seg34LadderFlatY25_eq]
      unfold seg34LadderFlatX25 seg34LadderFlatY25
      linear_combination r3290
    have ha1 : rho 34561 * seg34AccX25 rho = rho 34563 := by
      rw [seg34LadderFlatX25_eq]
      unfold seg34LadderFlatX25
      linear_combination r3291
    have ha2 : rho 34560 * seg34AccY25 rho = rho 34564 := by
      rw [seg34LadderFlatY25_eq]
      unfold seg34LadderFlatY25
      linear_combination r3292
    have ha3 : 3021 * rho 34563 * rho 34564 = rho 34565 := by
      linear_combination r3293
    have ha4 : rho 34566 * (1 + rho 34565) = rho 34563 + rho 34564 := by
      linear_combination r3294
    have ha5 : rho 34567 * (1 - rho 34565) = rho 34562 - rho 34563 - rho 34564 := by
      linear_combination r3295
    have haddx :
        rho 34566 * (1 + 3021 * (rho 34561 * seg34AccX25 rho) * (rho 34560 * seg34AccY25 rho)) =
          rho 34561 * seg34AccX25 rho + rho 34560 * seg34AccY25 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34567 * (1 - 3021 * (rho 34561 * seg34AccX25 rho) * (rho 34560 * seg34AccY25 rho)) =
          (-1) * (rho 34561 * seg34AccX25 rho) - rho 34560 * seg34AccY25 rho +
            (seg34AccY25 rho - seg34AccX25 rho * (-1)) * (rho 34560 + rho 34561) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34567 * (1 - rho 34565) = rho 34562 - rho 34563 - rho 34564 := ha5
        _ = (-1) * rho 34563 - rho 34564 + (seg34AccY25 rho - seg34AccX25 rho * (-1)) * (rho 34560 + rho 34561) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX26 rho = seg34AccX25 rho - Bool.toZMod bit * (seg34AccX25 rho - rho 34566) := by
      have hd : rho 34568 = Bool.toZMod bit * (rho 34566 - seg34AccX25 rho) := by
        rw [← hbit, seg34LadderFlatX25_eq]
        unfold seg34LadderFlatX25
        linear_combination -r3296
      unfold seg34AccX26
      linear_combination hd
    have hsely : seg34AccY26 rho = seg34AccY25 rho - Bool.toZMod bit * (seg34AccY25 rho - rho 34567) := by
      have hd : rho 34569 = Bool.toZMod bit * (rho 34567 - seg34AccY25 rho) := by
        rw [← hbit, seg34LadderFlatY25_eq]
        unfold seg34LadderFlatY25
        linear_combination -r3297
      unfold seg34AccY26
      linear_combination hd
    have hd0 : rho 34560 * rho 34561 = rho 34570 := by linear_combination r3298
    have hd1 : rho 34560 * rho 34560 = rho 34571 := by linear_combination r3299
    have hd2 : rho 34561 * rho 34561 = rho 34572 := by linear_combination r3300
    have hd3 : rho 34573 * (rho 34561 * rho 34561 + rho 34560 * rho 34560 * (-1)) = 2 * (rho 34560 * rho 34561) := by
      rw [hd0, hd1, hd2]
      linear_combination r3301
    have hd4 : rho 34574 * (2 - (rho 34561 * rho 34561 + rho 34560 * rho 34560 * (-1))) = rho 34561 * rho 34561 - rho 34560 * rho 34560 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3302
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX25 rho : Seg34.F), (seg34AccY25 rho : Seg34.F)⟩
      ⟨(rho 34560 : Seg34.F), (rho 34561 : Seg34.F)⟩
      ⟨(rho 34566 : Seg34.F), (rho 34567 : Seg34.F)⟩
      ⟨(seg34AccX26 rho : Seg34.F), (seg34AccY26 rho : Seg34.F)⟩
      ⟨(rho 34573 : Seg34.F), (rho 34574 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung25

theorem seg34_rung26 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34018 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX26 rho : Seg34.F), (seg34AccY26 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34573 : Seg34.F), (rho 34574 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX26 rho : Seg34.F), (seg34AccY26 rho : Seg34.F)⟩
        ⟨(rho 34573 : Seg34.F), (rho 34574 : Seg34.F)⟩
        ⟨(seg34AccX27 rho : Seg34.F), (seg34AccY27 rho : Seg34.F)⟩
        ⟨(rho 34586 : Seg34.F), (rho 34587 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3303, r3304, r3305, r3306, r3307, r3308, r3309, r3310, r3311, r3312, r3313, r3314, r3315, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3303 Seg34.relationLc189 Seg34.relationLc189Part0 Seg34.relationLc189Part1 at r3303
  unfold Seg34.relationRow3304 at r3304
  unfold Seg34.relationRow3305 at r3305
  unfold Seg34.relationRow3306 at r3306
  unfold Seg34.relationRow3307 at r3307
  unfold Seg34.relationRow3308 at r3308
  unfold Seg34.relationRow3309 at r3309
  unfold Seg34.relationRow3310 at r3310
  unfold Seg34.relationRow3311 at r3311
  unfold Seg34.relationRow3312 at r3312
  unfold Seg34.relationRow3313 at r3313
  unfold Seg34.relationRow3314 at r3314
  unfold Seg34.relationRow3315 at r3315
  have hrung26 (bit : Bool) (hbit : rho 34018 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX26 rho : Seg34.F), (seg34AccY26 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34573 : Seg34.F), (rho 34574 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX26 rho : Seg34.F), (seg34AccY26 rho : Seg34.F)⟩
        ⟨(rho 34573 : Seg34.F), (rho 34574 : Seg34.F)⟩
        ⟨(seg34AccX27 rho : Seg34.F), (seg34AccY27 rho : Seg34.F)⟩
        ⟨(rho 34586 : Seg34.F), (rho 34587 : Seg34.F)⟩ := by
    have ha0 : (rho 34573 + rho 34574) * (seg34AccX26 rho + seg34AccY26 rho) = rho 34575 := by
      rw [seg34LadderFlatX26_eq, seg34LadderFlatY26_eq]
      unfold seg34LadderFlatX26 seg34LadderFlatY26
      linear_combination r3303
    have ha1 : rho 34574 * seg34AccX26 rho = rho 34576 := by
      rw [seg34LadderFlatX26_eq]
      unfold seg34LadderFlatX26
      linear_combination r3304
    have ha2 : rho 34573 * seg34AccY26 rho = rho 34577 := by
      rw [seg34LadderFlatY26_eq]
      unfold seg34LadderFlatY26
      linear_combination r3305
    have ha3 : 3021 * rho 34576 * rho 34577 = rho 34578 := by
      linear_combination r3306
    have ha4 : rho 34579 * (1 + rho 34578) = rho 34576 + rho 34577 := by
      linear_combination r3307
    have ha5 : rho 34580 * (1 - rho 34578) = rho 34575 - rho 34576 - rho 34577 := by
      linear_combination r3308
    have haddx :
        rho 34579 * (1 + 3021 * (rho 34574 * seg34AccX26 rho) * (rho 34573 * seg34AccY26 rho)) =
          rho 34574 * seg34AccX26 rho + rho 34573 * seg34AccY26 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34580 * (1 - 3021 * (rho 34574 * seg34AccX26 rho) * (rho 34573 * seg34AccY26 rho)) =
          (-1) * (rho 34574 * seg34AccX26 rho) - rho 34573 * seg34AccY26 rho +
            (seg34AccY26 rho - seg34AccX26 rho * (-1)) * (rho 34573 + rho 34574) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34580 * (1 - rho 34578) = rho 34575 - rho 34576 - rho 34577 := ha5
        _ = (-1) * rho 34576 - rho 34577 + (seg34AccY26 rho - seg34AccX26 rho * (-1)) * (rho 34573 + rho 34574) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX27 rho = seg34AccX26 rho - Bool.toZMod bit * (seg34AccX26 rho - rho 34579) := by
      have hd : rho 34581 = Bool.toZMod bit * (rho 34579 - seg34AccX26 rho) := by
        rw [← hbit, seg34LadderFlatX26_eq]
        unfold seg34LadderFlatX26
        linear_combination -r3309
      unfold seg34AccX27
      linear_combination hd
    have hsely : seg34AccY27 rho = seg34AccY26 rho - Bool.toZMod bit * (seg34AccY26 rho - rho 34580) := by
      have hd : rho 34582 = Bool.toZMod bit * (rho 34580 - seg34AccY26 rho) := by
        rw [← hbit, seg34LadderFlatY26_eq]
        unfold seg34LadderFlatY26
        linear_combination -r3310
      unfold seg34AccY27
      linear_combination hd
    have hd0 : rho 34573 * rho 34574 = rho 34583 := by linear_combination r3311
    have hd1 : rho 34573 * rho 34573 = rho 34584 := by linear_combination r3312
    have hd2 : rho 34574 * rho 34574 = rho 34585 := by linear_combination r3313
    have hd3 : rho 34586 * (rho 34574 * rho 34574 + rho 34573 * rho 34573 * (-1)) = 2 * (rho 34573 * rho 34574) := by
      rw [hd0, hd1, hd2]
      linear_combination r3314
    have hd4 : rho 34587 * (2 - (rho 34574 * rho 34574 + rho 34573 * rho 34573 * (-1))) = rho 34574 * rho 34574 - rho 34573 * rho 34573 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3315
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX26 rho : Seg34.F), (seg34AccY26 rho : Seg34.F)⟩
      ⟨(rho 34573 : Seg34.F), (rho 34574 : Seg34.F)⟩
      ⟨(rho 34579 : Seg34.F), (rho 34580 : Seg34.F)⟩
      ⟨(seg34AccX27 rho : Seg34.F), (seg34AccY27 rho : Seg34.F)⟩
      ⟨(rho 34586 : Seg34.F), (rho 34587 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung26

theorem seg34_rung27 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34019 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX27 rho : Seg34.F), (seg34AccY27 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34586 : Seg34.F), (rho 34587 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX27 rho : Seg34.F), (seg34AccY27 rho : Seg34.F)⟩
        ⟨(rho 34586 : Seg34.F), (rho 34587 : Seg34.F)⟩
        ⟨(seg34AccX28 rho : Seg34.F), (seg34AccY28 rho : Seg34.F)⟩
        ⟨(rho 34599 : Seg34.F), (rho 34600 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3316, r3317, r3318, r3319, r3320, r3321, r3322, r3323, r3324, r3325, r3326, r3327, r3328, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3316 Seg34.relationLc190 Seg34.relationLc190Part0 Seg34.relationLc190Part1 at r3316
  unfold Seg34.relationRow3317 at r3317
  unfold Seg34.relationRow3318 at r3318
  unfold Seg34.relationRow3319 at r3319
  unfold Seg34.relationRow3320 at r3320
  unfold Seg34.relationRow3321 at r3321
  unfold Seg34.relationRow3322 at r3322
  unfold Seg34.relationRow3323 at r3323
  unfold Seg34.relationRow3324 at r3324
  unfold Seg34.relationRow3325 at r3325
  unfold Seg34.relationRow3326 at r3326
  unfold Seg34.relationRow3327 at r3327
  unfold Seg34.relationRow3328 at r3328
  have hrung27 (bit : Bool) (hbit : rho 34019 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX27 rho : Seg34.F), (seg34AccY27 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34586 : Seg34.F), (rho 34587 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX27 rho : Seg34.F), (seg34AccY27 rho : Seg34.F)⟩
        ⟨(rho 34586 : Seg34.F), (rho 34587 : Seg34.F)⟩
        ⟨(seg34AccX28 rho : Seg34.F), (seg34AccY28 rho : Seg34.F)⟩
        ⟨(rho 34599 : Seg34.F), (rho 34600 : Seg34.F)⟩ := by
    have ha0 : (rho 34586 + rho 34587) * (seg34AccX27 rho + seg34AccY27 rho) = rho 34588 := by
      rw [seg34LadderFlatX27_eq, seg34LadderFlatY27_eq]
      unfold seg34LadderFlatX27 seg34LadderFlatY27
      linear_combination r3316
    have ha1 : rho 34587 * seg34AccX27 rho = rho 34589 := by
      rw [seg34LadderFlatX27_eq]
      unfold seg34LadderFlatX27
      linear_combination r3317
    have ha2 : rho 34586 * seg34AccY27 rho = rho 34590 := by
      rw [seg34LadderFlatY27_eq]
      unfold seg34LadderFlatY27
      linear_combination r3318
    have ha3 : 3021 * rho 34589 * rho 34590 = rho 34591 := by
      linear_combination r3319
    have ha4 : rho 34592 * (1 + rho 34591) = rho 34589 + rho 34590 := by
      linear_combination r3320
    have ha5 : rho 34593 * (1 - rho 34591) = rho 34588 - rho 34589 - rho 34590 := by
      linear_combination r3321
    have haddx :
        rho 34592 * (1 + 3021 * (rho 34587 * seg34AccX27 rho) * (rho 34586 * seg34AccY27 rho)) =
          rho 34587 * seg34AccX27 rho + rho 34586 * seg34AccY27 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34593 * (1 - 3021 * (rho 34587 * seg34AccX27 rho) * (rho 34586 * seg34AccY27 rho)) =
          (-1) * (rho 34587 * seg34AccX27 rho) - rho 34586 * seg34AccY27 rho +
            (seg34AccY27 rho - seg34AccX27 rho * (-1)) * (rho 34586 + rho 34587) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34593 * (1 - rho 34591) = rho 34588 - rho 34589 - rho 34590 := ha5
        _ = (-1) * rho 34589 - rho 34590 + (seg34AccY27 rho - seg34AccX27 rho * (-1)) * (rho 34586 + rho 34587) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX28 rho = seg34AccX27 rho - Bool.toZMod bit * (seg34AccX27 rho - rho 34592) := by
      have hd : rho 34594 = Bool.toZMod bit * (rho 34592 - seg34AccX27 rho) := by
        rw [← hbit, seg34LadderFlatX27_eq]
        unfold seg34LadderFlatX27
        linear_combination -r3322
      unfold seg34AccX28
      linear_combination hd
    have hsely : seg34AccY28 rho = seg34AccY27 rho - Bool.toZMod bit * (seg34AccY27 rho - rho 34593) := by
      have hd : rho 34595 = Bool.toZMod bit * (rho 34593 - seg34AccY27 rho) := by
        rw [← hbit, seg34LadderFlatY27_eq]
        unfold seg34LadderFlatY27
        linear_combination -r3323
      unfold seg34AccY28
      linear_combination hd
    have hd0 : rho 34586 * rho 34587 = rho 34596 := by linear_combination r3324
    have hd1 : rho 34586 * rho 34586 = rho 34597 := by linear_combination r3325
    have hd2 : rho 34587 * rho 34587 = rho 34598 := by linear_combination r3326
    have hd3 : rho 34599 * (rho 34587 * rho 34587 + rho 34586 * rho 34586 * (-1)) = 2 * (rho 34586 * rho 34587) := by
      rw [hd0, hd1, hd2]
      linear_combination r3327
    have hd4 : rho 34600 * (2 - (rho 34587 * rho 34587 + rho 34586 * rho 34586 * (-1))) = rho 34587 * rho 34587 - rho 34586 * rho 34586 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3328
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX27 rho : Seg34.F), (seg34AccY27 rho : Seg34.F)⟩
      ⟨(rho 34586 : Seg34.F), (rho 34587 : Seg34.F)⟩
      ⟨(rho 34592 : Seg34.F), (rho 34593 : Seg34.F)⟩
      ⟨(seg34AccX28 rho : Seg34.F), (seg34AccY28 rho : Seg34.F)⟩
      ⟨(rho 34599 : Seg34.F), (rho 34600 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung27

theorem seg34_rung28 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34020 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX28 rho : Seg34.F), (seg34AccY28 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34599 : Seg34.F), (rho 34600 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX28 rho : Seg34.F), (seg34AccY28 rho : Seg34.F)⟩
        ⟨(rho 34599 : Seg34.F), (rho 34600 : Seg34.F)⟩
        ⟨(seg34AccX29 rho : Seg34.F), (seg34AccY29 rho : Seg34.F)⟩
        ⟨(rho 34612 : Seg34.F), (rho 34613 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3329, r3330, r3331, r3332, r3333, r3334, r3335, r3336, r3337, r3338, r3339, r3340, r3341, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3329 Seg34.relationLc191 Seg34.relationLc191Part0 Seg34.relationLc191Part1 at r3329
  unfold Seg34.relationRow3330 at r3330
  unfold Seg34.relationRow3331 at r3331
  unfold Seg34.relationRow3332 at r3332
  unfold Seg34.relationRow3333 at r3333
  unfold Seg34.relationRow3334 at r3334
  unfold Seg34.relationRow3335 at r3335
  unfold Seg34.relationRow3336 at r3336
  unfold Seg34.relationRow3337 at r3337
  unfold Seg34.relationRow3338 at r3338
  unfold Seg34.relationRow3339 at r3339
  unfold Seg34.relationRow3340 at r3340
  unfold Seg34.relationRow3341 at r3341
  have hrung28 (bit : Bool) (hbit : rho 34020 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX28 rho : Seg34.F), (seg34AccY28 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34599 : Seg34.F), (rho 34600 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX28 rho : Seg34.F), (seg34AccY28 rho : Seg34.F)⟩
        ⟨(rho 34599 : Seg34.F), (rho 34600 : Seg34.F)⟩
        ⟨(seg34AccX29 rho : Seg34.F), (seg34AccY29 rho : Seg34.F)⟩
        ⟨(rho 34612 : Seg34.F), (rho 34613 : Seg34.F)⟩ := by
    have ha0 : (rho 34599 + rho 34600) * (seg34AccX28 rho + seg34AccY28 rho) = rho 34601 := by
      rw [seg34LadderFlatX28_eq, seg34LadderFlatY28_eq]
      unfold seg34LadderFlatX28 seg34LadderFlatY28
      linear_combination r3329
    have ha1 : rho 34600 * seg34AccX28 rho = rho 34602 := by
      rw [seg34LadderFlatX28_eq]
      unfold seg34LadderFlatX28
      linear_combination r3330
    have ha2 : rho 34599 * seg34AccY28 rho = rho 34603 := by
      rw [seg34LadderFlatY28_eq]
      unfold seg34LadderFlatY28
      linear_combination r3331
    have ha3 : 3021 * rho 34602 * rho 34603 = rho 34604 := by
      linear_combination r3332
    have ha4 : rho 34605 * (1 + rho 34604) = rho 34602 + rho 34603 := by
      linear_combination r3333
    have ha5 : rho 34606 * (1 - rho 34604) = rho 34601 - rho 34602 - rho 34603 := by
      linear_combination r3334
    have haddx :
        rho 34605 * (1 + 3021 * (rho 34600 * seg34AccX28 rho) * (rho 34599 * seg34AccY28 rho)) =
          rho 34600 * seg34AccX28 rho + rho 34599 * seg34AccY28 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34606 * (1 - 3021 * (rho 34600 * seg34AccX28 rho) * (rho 34599 * seg34AccY28 rho)) =
          (-1) * (rho 34600 * seg34AccX28 rho) - rho 34599 * seg34AccY28 rho +
            (seg34AccY28 rho - seg34AccX28 rho * (-1)) * (rho 34599 + rho 34600) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34606 * (1 - rho 34604) = rho 34601 - rho 34602 - rho 34603 := ha5
        _ = (-1) * rho 34602 - rho 34603 + (seg34AccY28 rho - seg34AccX28 rho * (-1)) * (rho 34599 + rho 34600) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX29 rho = seg34AccX28 rho - Bool.toZMod bit * (seg34AccX28 rho - rho 34605) := by
      have hd : rho 34607 = Bool.toZMod bit * (rho 34605 - seg34AccX28 rho) := by
        rw [← hbit, seg34LadderFlatX28_eq]
        unfold seg34LadderFlatX28
        linear_combination -r3335
      unfold seg34AccX29
      linear_combination hd
    have hsely : seg34AccY29 rho = seg34AccY28 rho - Bool.toZMod bit * (seg34AccY28 rho - rho 34606) := by
      have hd : rho 34608 = Bool.toZMod bit * (rho 34606 - seg34AccY28 rho) := by
        rw [← hbit, seg34LadderFlatY28_eq]
        unfold seg34LadderFlatY28
        linear_combination -r3336
      unfold seg34AccY29
      linear_combination hd
    have hd0 : rho 34599 * rho 34600 = rho 34609 := by linear_combination r3337
    have hd1 : rho 34599 * rho 34599 = rho 34610 := by linear_combination r3338
    have hd2 : rho 34600 * rho 34600 = rho 34611 := by linear_combination r3339
    have hd3 : rho 34612 * (rho 34600 * rho 34600 + rho 34599 * rho 34599 * (-1)) = 2 * (rho 34599 * rho 34600) := by
      rw [hd0, hd1, hd2]
      linear_combination r3340
    have hd4 : rho 34613 * (2 - (rho 34600 * rho 34600 + rho 34599 * rho 34599 * (-1))) = rho 34600 * rho 34600 - rho 34599 * rho 34599 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3341
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX28 rho : Seg34.F), (seg34AccY28 rho : Seg34.F)⟩
      ⟨(rho 34599 : Seg34.F), (rho 34600 : Seg34.F)⟩
      ⟨(rho 34605 : Seg34.F), (rho 34606 : Seg34.F)⟩
      ⟨(seg34AccX29 rho : Seg34.F), (seg34AccY29 rho : Seg34.F)⟩
      ⟨(rho 34612 : Seg34.F), (rho 34613 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung28

theorem seg34_rung29 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34021 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX29 rho : Seg34.F), (seg34AccY29 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34612 : Seg34.F), (rho 34613 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX29 rho : Seg34.F), (seg34AccY29 rho : Seg34.F)⟩
        ⟨(rho 34612 : Seg34.F), (rho 34613 : Seg34.F)⟩
        ⟨(seg34AccX30 rho : Seg34.F), (seg34AccY30 rho : Seg34.F)⟩
        ⟨(rho 34625 : Seg34.F), (rho 34626 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3342, r3343, r3344, r3345, r3346, r3347, r3348, r3349, r3350, r3351, r3352, r3353, r3354, _, _, _, _, _⟩
  unfold Seg34.relationRow3342 Seg34.relationLc192 Seg34.relationLc192Part0 Seg34.relationLc192Part1 at r3342
  unfold Seg34.relationRow3343 at r3343
  unfold Seg34.relationRow3344 at r3344
  unfold Seg34.relationRow3345 at r3345
  unfold Seg34.relationRow3346 at r3346
  unfold Seg34.relationRow3347 at r3347
  unfold Seg34.relationRow3348 at r3348
  unfold Seg34.relationRow3349 at r3349
  unfold Seg34.relationRow3350 at r3350
  unfold Seg34.relationRow3351 at r3351
  unfold Seg34.relationRow3352 at r3352
  unfold Seg34.relationRow3353 at r3353
  unfold Seg34.relationRow3354 at r3354
  have hrung29 (bit : Bool) (hbit : rho 34021 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX29 rho : Seg34.F), (seg34AccY29 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34612 : Seg34.F), (rho 34613 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX29 rho : Seg34.F), (seg34AccY29 rho : Seg34.F)⟩
        ⟨(rho 34612 : Seg34.F), (rho 34613 : Seg34.F)⟩
        ⟨(seg34AccX30 rho : Seg34.F), (seg34AccY30 rho : Seg34.F)⟩
        ⟨(rho 34625 : Seg34.F), (rho 34626 : Seg34.F)⟩ := by
    have ha0 : (rho 34612 + rho 34613) * (seg34AccX29 rho + seg34AccY29 rho) = rho 34614 := by
      rw [seg34LadderFlatX29_eq, seg34LadderFlatY29_eq]
      unfold seg34LadderFlatX29 seg34LadderFlatY29
      linear_combination r3342
    have ha1 : rho 34613 * seg34AccX29 rho = rho 34615 := by
      rw [seg34LadderFlatX29_eq]
      unfold seg34LadderFlatX29
      linear_combination r3343
    have ha2 : rho 34612 * seg34AccY29 rho = rho 34616 := by
      rw [seg34LadderFlatY29_eq]
      unfold seg34LadderFlatY29
      linear_combination r3344
    have ha3 : 3021 * rho 34615 * rho 34616 = rho 34617 := by
      linear_combination r3345
    have ha4 : rho 34618 * (1 + rho 34617) = rho 34615 + rho 34616 := by
      linear_combination r3346
    have ha5 : rho 34619 * (1 - rho 34617) = rho 34614 - rho 34615 - rho 34616 := by
      linear_combination r3347
    have haddx :
        rho 34618 * (1 + 3021 * (rho 34613 * seg34AccX29 rho) * (rho 34612 * seg34AccY29 rho)) =
          rho 34613 * seg34AccX29 rho + rho 34612 * seg34AccY29 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34619 * (1 - 3021 * (rho 34613 * seg34AccX29 rho) * (rho 34612 * seg34AccY29 rho)) =
          (-1) * (rho 34613 * seg34AccX29 rho) - rho 34612 * seg34AccY29 rho +
            (seg34AccY29 rho - seg34AccX29 rho * (-1)) * (rho 34612 + rho 34613) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34619 * (1 - rho 34617) = rho 34614 - rho 34615 - rho 34616 := ha5
        _ = (-1) * rho 34615 - rho 34616 + (seg34AccY29 rho - seg34AccX29 rho * (-1)) * (rho 34612 + rho 34613) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX30 rho = seg34AccX29 rho - Bool.toZMod bit * (seg34AccX29 rho - rho 34618) := by
      have hd : rho 34620 = Bool.toZMod bit * (rho 34618 - seg34AccX29 rho) := by
        rw [← hbit, seg34LadderFlatX29_eq]
        unfold seg34LadderFlatX29
        linear_combination -r3348
      unfold seg34AccX30
      linear_combination hd
    have hsely : seg34AccY30 rho = seg34AccY29 rho - Bool.toZMod bit * (seg34AccY29 rho - rho 34619) := by
      have hd : rho 34621 = Bool.toZMod bit * (rho 34619 - seg34AccY29 rho) := by
        rw [← hbit, seg34LadderFlatY29_eq]
        unfold seg34LadderFlatY29
        linear_combination -r3349
      unfold seg34AccY30
      linear_combination hd
    have hd0 : rho 34612 * rho 34613 = rho 34622 := by linear_combination r3350
    have hd1 : rho 34612 * rho 34612 = rho 34623 := by linear_combination r3351
    have hd2 : rho 34613 * rho 34613 = rho 34624 := by linear_combination r3352
    have hd3 : rho 34625 * (rho 34613 * rho 34613 + rho 34612 * rho 34612 * (-1)) = 2 * (rho 34612 * rho 34613) := by
      rw [hd0, hd1, hd2]
      linear_combination r3353
    have hd4 : rho 34626 * (2 - (rho 34613 * rho 34613 + rho 34612 * rho 34612 * (-1))) = rho 34613 * rho 34613 - rho 34612 * rho 34612 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3354
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX29 rho : Seg34.F), (seg34AccY29 rho : Seg34.F)⟩
      ⟨(rho 34612 : Seg34.F), (rho 34613 : Seg34.F)⟩
      ⟨(rho 34618 : Seg34.F), (rho 34619 : Seg34.F)⟩
      ⟨(seg34AccX30 rho : Seg34.F), (seg34AccY30 rho : Seg34.F)⟩
      ⟨(rho 34625 : Seg34.F), (rho 34626 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung29

theorem seg34_rung30 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34022 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX30 rho : Seg34.F), (seg34AccY30 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34625 : Seg34.F), (rho 34626 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX30 rho : Seg34.F), (seg34AccY30 rho : Seg34.F)⟩
        ⟨(rho 34625 : Seg34.F), (rho 34626 : Seg34.F)⟩
        ⟨(seg34AccX31 rho : Seg34.F), (seg34AccY31 rho : Seg34.F)⟩
        ⟨(rho 34638 : Seg34.F), (rho 34639 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3355, r3356, r3357, r3358, r3359⟩
  unfold Seg34.relationPart42 at p42
  rcases p42 with ⟨r3360, r3361, r3362, r3363, r3364, r3365, r3366, r3367, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3355 Seg34.relationLc193 Seg34.relationLc193Part0 Seg34.relationLc193Part1 at r3355
  unfold Seg34.relationRow3356 at r3356
  unfold Seg34.relationRow3357 at r3357
  unfold Seg34.relationRow3358 at r3358
  unfold Seg34.relationRow3359 at r3359
  unfold Seg34.relationRow3360 at r3360
  unfold Seg34.relationRow3361 at r3361
  unfold Seg34.relationRow3362 at r3362
  unfold Seg34.relationRow3363 at r3363
  unfold Seg34.relationRow3364 at r3364
  unfold Seg34.relationRow3365 at r3365
  unfold Seg34.relationRow3366 at r3366
  unfold Seg34.relationRow3367 at r3367
  have hrung30 (bit : Bool) (hbit : rho 34022 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX30 rho : Seg34.F), (seg34AccY30 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34625 : Seg34.F), (rho 34626 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX30 rho : Seg34.F), (seg34AccY30 rho : Seg34.F)⟩
        ⟨(rho 34625 : Seg34.F), (rho 34626 : Seg34.F)⟩
        ⟨(seg34AccX31 rho : Seg34.F), (seg34AccY31 rho : Seg34.F)⟩
        ⟨(rho 34638 : Seg34.F), (rho 34639 : Seg34.F)⟩ := by
    have ha0 : (rho 34625 + rho 34626) * (seg34AccX30 rho + seg34AccY30 rho) = rho 34627 := by
      rw [seg34LadderFlatX30_eq, seg34LadderFlatY30_eq]
      unfold seg34LadderFlatX30 seg34LadderFlatY30
      linear_combination r3355
    have ha1 : rho 34626 * seg34AccX30 rho = rho 34628 := by
      rw [seg34LadderFlatX30_eq]
      unfold seg34LadderFlatX30
      linear_combination r3356
    have ha2 : rho 34625 * seg34AccY30 rho = rho 34629 := by
      rw [seg34LadderFlatY30_eq]
      unfold seg34LadderFlatY30
      linear_combination r3357
    have ha3 : 3021 * rho 34628 * rho 34629 = rho 34630 := by
      linear_combination r3358
    have ha4 : rho 34631 * (1 + rho 34630) = rho 34628 + rho 34629 := by
      linear_combination r3359
    have ha5 : rho 34632 * (1 - rho 34630) = rho 34627 - rho 34628 - rho 34629 := by
      linear_combination r3360
    have haddx :
        rho 34631 * (1 + 3021 * (rho 34626 * seg34AccX30 rho) * (rho 34625 * seg34AccY30 rho)) =
          rho 34626 * seg34AccX30 rho + rho 34625 * seg34AccY30 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34632 * (1 - 3021 * (rho 34626 * seg34AccX30 rho) * (rho 34625 * seg34AccY30 rho)) =
          (-1) * (rho 34626 * seg34AccX30 rho) - rho 34625 * seg34AccY30 rho +
            (seg34AccY30 rho - seg34AccX30 rho * (-1)) * (rho 34625 + rho 34626) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34632 * (1 - rho 34630) = rho 34627 - rho 34628 - rho 34629 := ha5
        _ = (-1) * rho 34628 - rho 34629 + (seg34AccY30 rho - seg34AccX30 rho * (-1)) * (rho 34625 + rho 34626) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX31 rho = seg34AccX30 rho - Bool.toZMod bit * (seg34AccX30 rho - rho 34631) := by
      have hd : rho 34633 = Bool.toZMod bit * (rho 34631 - seg34AccX30 rho) := by
        rw [← hbit, seg34LadderFlatX30_eq]
        unfold seg34LadderFlatX30
        linear_combination -r3361
      unfold seg34AccX31
      linear_combination hd
    have hsely : seg34AccY31 rho = seg34AccY30 rho - Bool.toZMod bit * (seg34AccY30 rho - rho 34632) := by
      have hd : rho 34634 = Bool.toZMod bit * (rho 34632 - seg34AccY30 rho) := by
        rw [← hbit, seg34LadderFlatY30_eq]
        unfold seg34LadderFlatY30
        linear_combination -r3362
      unfold seg34AccY31
      linear_combination hd
    have hd0 : rho 34625 * rho 34626 = rho 34635 := by linear_combination r3363
    have hd1 : rho 34625 * rho 34625 = rho 34636 := by linear_combination r3364
    have hd2 : rho 34626 * rho 34626 = rho 34637 := by linear_combination r3365
    have hd3 : rho 34638 * (rho 34626 * rho 34626 + rho 34625 * rho 34625 * (-1)) = 2 * (rho 34625 * rho 34626) := by
      rw [hd0, hd1, hd2]
      linear_combination r3366
    have hd4 : rho 34639 * (2 - (rho 34626 * rho 34626 + rho 34625 * rho 34625 * (-1))) = rho 34626 * rho 34626 - rho 34625 * rho 34625 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3367
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX30 rho : Seg34.F), (seg34AccY30 rho : Seg34.F)⟩
      ⟨(rho 34625 : Seg34.F), (rho 34626 : Seg34.F)⟩
      ⟨(rho 34631 : Seg34.F), (rho 34632 : Seg34.F)⟩
      ⟨(seg34AccX31 rho : Seg34.F), (seg34AccY31 rho : Seg34.F)⟩
      ⟨(rho 34638 : Seg34.F), (rho 34639 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung30

theorem seg34_rung31 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34023 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX31 rho : Seg34.F), (seg34AccY31 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34638 : Seg34.F), (rho 34639 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX31 rho : Seg34.F), (seg34AccY31 rho : Seg34.F)⟩
        ⟨(rho 34638 : Seg34.F), (rho 34639 : Seg34.F)⟩
        ⟨(seg34AccX32 rho : Seg34.F), (seg34AccY32 rho : Seg34.F)⟩
        ⟨(rho 34651 : Seg34.F), (rho 34652 : Seg34.F)⟩ := by
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
  rcases p42 with ⟨_, _, _, _, _, _, _, _, r3368, r3369, r3370, r3371, r3372, r3373, r3374, r3375, r3376, r3377, r3378, r3379, r3380, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3368 Seg34.relationLc194 Seg34.relationLc194Part0 Seg34.relationLc194Part1 at r3368
  unfold Seg34.relationRow3369 at r3369
  unfold Seg34.relationRow3370 at r3370
  unfold Seg34.relationRow3371 at r3371
  unfold Seg34.relationRow3372 at r3372
  unfold Seg34.relationRow3373 at r3373
  unfold Seg34.relationRow3374 at r3374
  unfold Seg34.relationRow3375 Seg34.relationLc195 Seg34.relationLc195Part0 Seg34.relationLc195Part1 at r3375
  unfold Seg34.relationRow3376 at r3376
  unfold Seg34.relationRow3377 at r3377
  unfold Seg34.relationRow3378 at r3378
  unfold Seg34.relationRow3379 at r3379
  unfold Seg34.relationRow3380 at r3380
  have hrung31 (bit : Bool) (hbit : rho 34023 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX31 rho : Seg34.F), (seg34AccY31 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34638 : Seg34.F), (rho 34639 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX31 rho : Seg34.F), (seg34AccY31 rho : Seg34.F)⟩
        ⟨(rho 34638 : Seg34.F), (rho 34639 : Seg34.F)⟩
        ⟨(seg34AccX32 rho : Seg34.F), (seg34AccY32 rho : Seg34.F)⟩
        ⟨(rho 34651 : Seg34.F), (rho 34652 : Seg34.F)⟩ := by
    have ha0 : (rho 34638 + rho 34639) * (seg34AccX31 rho + seg34AccY31 rho) = rho 34640 := by
      rw [seg34LadderFlatX31_eq, seg34LadderFlatY31_eq]
      unfold seg34LadderFlatX31 seg34LadderFlatY31
      linear_combination r3368
    have ha1 : rho 34639 * seg34AccX31 rho = rho 34641 := by
      rw [seg34LadderFlatX31_eq]
      unfold seg34LadderFlatX31
      linear_combination r3369
    have ha2 : rho 34638 * seg34AccY31 rho = rho 34642 := by
      rw [seg34LadderFlatY31_eq]
      unfold seg34LadderFlatY31
      linear_combination r3370
    have ha3 : 3021 * rho 34641 * rho 34642 = rho 34643 := by
      linear_combination r3371
    have ha4 : rho 34644 * (1 + rho 34643) = rho 34641 + rho 34642 := by
      linear_combination r3372
    have ha5 : rho 34645 * (1 - rho 34643) = rho 34640 - rho 34641 - rho 34642 := by
      linear_combination r3373
    have haddx :
        rho 34644 * (1 + 3021 * (rho 34639 * seg34AccX31 rho) * (rho 34638 * seg34AccY31 rho)) =
          rho 34639 * seg34AccX31 rho + rho 34638 * seg34AccY31 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34645 * (1 - 3021 * (rho 34639 * seg34AccX31 rho) * (rho 34638 * seg34AccY31 rho)) =
          (-1) * (rho 34639 * seg34AccX31 rho) - rho 34638 * seg34AccY31 rho +
            (seg34AccY31 rho - seg34AccX31 rho * (-1)) * (rho 34638 + rho 34639) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34645 * (1 - rho 34643) = rho 34640 - rho 34641 - rho 34642 := ha5
        _ = (-1) * rho 34641 - rho 34642 + (seg34AccY31 rho - seg34AccX31 rho * (-1)) * (rho 34638 + rho 34639) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX32 rho = seg34AccX31 rho - Bool.toZMod bit * (seg34AccX31 rho - rho 34644) := by
      have hd : rho 34646 = Bool.toZMod bit * (rho 34644 - seg34AccX31 rho) := by
        rw [← hbit, seg34LadderFlatX31_eq]
        unfold seg34LadderFlatX31
        linear_combination -r3374
      unfold seg34AccX32
      linear_combination hd
    have hsely : seg34AccY32 rho = seg34AccY31 rho - Bool.toZMod bit * (seg34AccY31 rho - rho 34645) := by
      have hd : rho 34647 = Bool.toZMod bit * (rho 34645 - seg34AccY31 rho) := by
        rw [← hbit, seg34LadderFlatY31_eq]
        unfold seg34LadderFlatY31
        linear_combination -r3375
      unfold seg34AccY32
      linear_combination hd
    have hd0 : rho 34638 * rho 34639 = rho 34648 := by linear_combination r3376
    have hd1 : rho 34638 * rho 34638 = rho 34649 := by linear_combination r3377
    have hd2 : rho 34639 * rho 34639 = rho 34650 := by linear_combination r3378
    have hd3 : rho 34651 * (rho 34639 * rho 34639 + rho 34638 * rho 34638 * (-1)) = 2 * (rho 34638 * rho 34639) := by
      rw [hd0, hd1, hd2]
      linear_combination r3379
    have hd4 : rho 34652 * (2 - (rho 34639 * rho 34639 + rho 34638 * rho 34638 * (-1))) = rho 34639 * rho 34639 - rho 34638 * rho 34638 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3380
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX31 rho : Seg34.F), (seg34AccY31 rho : Seg34.F)⟩
      ⟨(rho 34638 : Seg34.F), (rho 34639 : Seg34.F)⟩
      ⟨(rho 34644 : Seg34.F), (rho 34645 : Seg34.F)⟩
      ⟨(seg34AccX32 rho : Seg34.F), (seg34AccY32 rho : Seg34.F)⟩
      ⟨(rho 34651 : Seg34.F), (rho 34652 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung31

theorem seg34_hstep_c0 (rho : Nat -> Seg34.F) (h : Seg34.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (33992 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 0 ≤ i → i < 32 →
      EdwardsBridge.onCurve (seg34LadderAccState rho i) →
      EdwardsBridge.onCurve (seg34LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg34LadderAccState rho i) (seg34LadderCurState rho i)
        (seg34LadderAccState rho (i + 1)) (seg34LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg34_rung0 rho h bits[0]! (hbitAt 0 (by omega)) hacc hcur
  · exact seg34_rung1 rho h bits[1]! (hbitAt 1 (by omega)) hacc hcur
  · exact seg34_rung2 rho h bits[2]! (hbitAt 2 (by omega)) hacc hcur
  · exact seg34_rung3 rho h bits[3]! (hbitAt 3 (by omega)) hacc hcur
  · exact seg34_rung4 rho h bits[4]! (hbitAt 4 (by omega)) hacc hcur
  · exact seg34_rung5 rho h bits[5]! (hbitAt 5 (by omega)) hacc hcur
  · exact seg34_rung6 rho h bits[6]! (hbitAt 6 (by omega)) hacc hcur
  · exact seg34_rung7 rho h bits[7]! (hbitAt 7 (by omega)) hacc hcur
  · exact seg34_rung8 rho h bits[8]! (hbitAt 8 (by omega)) hacc hcur
  · exact seg34_rung9 rho h bits[9]! (hbitAt 9 (by omega)) hacc hcur
  · exact seg34_rung10 rho h bits[10]! (hbitAt 10 (by omega)) hacc hcur
  · exact seg34_rung11 rho h bits[11]! (hbitAt 11 (by omega)) hacc hcur
  · exact seg34_rung12 rho h bits[12]! (hbitAt 12 (by omega)) hacc hcur
  · exact seg34_rung13 rho h bits[13]! (hbitAt 13 (by omega)) hacc hcur
  · exact seg34_rung14 rho h bits[14]! (hbitAt 14 (by omega)) hacc hcur
  · exact seg34_rung15 rho h bits[15]! (hbitAt 15 (by omega)) hacc hcur
  · exact seg34_rung16 rho h bits[16]! (hbitAt 16 (by omega)) hacc hcur
  · exact seg34_rung17 rho h bits[17]! (hbitAt 17 (by omega)) hacc hcur
  · exact seg34_rung18 rho h bits[18]! (hbitAt 18 (by omega)) hacc hcur
  · exact seg34_rung19 rho h bits[19]! (hbitAt 19 (by omega)) hacc hcur
  · exact seg34_rung20 rho h bits[20]! (hbitAt 20 (by omega)) hacc hcur
  · exact seg34_rung21 rho h bits[21]! (hbitAt 21 (by omega)) hacc hcur
  · exact seg34_rung22 rho h bits[22]! (hbitAt 22 (by omega)) hacc hcur
  · exact seg34_rung23 rho h bits[23]! (hbitAt 23 (by omega)) hacc hcur
  · exact seg34_rung24 rho h bits[24]! (hbitAt 24 (by omega)) hacc hcur
  · exact seg34_rung25 rho h bits[25]! (hbitAt 25 (by omega)) hacc hcur
  · exact seg34_rung26 rho h bits[26]! (hbitAt 26 (by omega)) hacc hcur
  · exact seg34_rung27 rho h bits[27]! (hbitAt 27 (by omega)) hacc hcur
  · exact seg34_rung28 rho h bits[28]! (hbitAt 28 (by omega)) hacc hcur
  · exact seg34_rung29 rho h bits[29]! (hbitAt 29 (by omega)) hacc hcur
  · exact seg34_rung30 rho h bits[30]! (hbitAt 30 (by omega)) hacc hcur
  · exact seg34_rung31 rho h bits[31]! (hbitAt 31 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
