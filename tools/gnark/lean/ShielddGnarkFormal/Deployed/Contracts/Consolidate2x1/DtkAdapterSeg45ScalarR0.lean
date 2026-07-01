import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg45_rung0 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40948 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX0 rho : Seg45.F), (seg45AccY0 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 195 : Seg45.F), (rho 196 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX0 rho : Seg45.F), (seg45AccY0 rho : Seg45.F)⟩
        ⟨(rho 195 : Seg45.F), (rho 196 : Seg45.F)⟩
        ⟨(seg45AccX1 rho : Seg45.F), (seg45AccY1 rho : Seg45.F)⟩
        ⟨(rho 41204 : Seg45.F), (rho 41205 : Seg45.F)⟩ := by
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
        rw [← hbit, seg45LadderFlatX0_eq]
        unfold seg45LadderFlatX0
        linear_combination -r2971
      unfold seg45AccX1
      linear_combination hd
    have hsely : seg45AccY1 rho = seg45AccY0 rho - Bool.toZMod bit * (seg45AccY0 rho - rho 196) := by
      have hd : rho 41200 = Bool.toZMod bit * (rho 196 - seg45AccY0 rho) := by
        rw [← hbit, seg45LadderFlatY0_eq]
        unfold seg45LadderFlatY0
        linear_combination -r2972
      unfold seg45AccY1
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

theorem seg45_rung1 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40949 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX1 rho : Seg45.F), (seg45AccY1 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41204 : Seg45.F), (rho 41205 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX1 rho : Seg45.F), (seg45AccY1 rho : Seg45.F)⟩
        ⟨(rho 41204 : Seg45.F), (rho 41205 : Seg45.F)⟩
        ⟨(seg45AccX2 rho : Seg45.F), (seg45AccY2 rho : Seg45.F)⟩
        ⟨(rho 41217 : Seg45.F), (rho 41218 : Seg45.F)⟩ := by
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
    have ha0 : (rho 41204 + rho 41205) * (seg45AccX1 rho + seg45AccY1 rho) = rho 41206 := by
      rw [seg45LadderFlatX1_eq, seg45LadderFlatY1_eq]
      unfold seg45LadderFlatX1 seg45LadderFlatY1
      linear_combination r2978
    have ha1 : rho 41205 * seg45AccX1 rho = rho 41207 := by
      rw [seg45LadderFlatX1_eq]
      unfold seg45LadderFlatX1
      linear_combination r2979
    have ha2 : rho 41204 * seg45AccY1 rho = rho 41208 := by
      rw [seg45LadderFlatY1_eq]
      unfold seg45LadderFlatY1
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
        rw [← hbit, seg45LadderFlatX1_eq]
        unfold seg45LadderFlatX1
        linear_combination -r2984
      unfold seg45AccX2
      linear_combination hd
    have hsely : seg45AccY2 rho = seg45AccY1 rho - Bool.toZMod bit * (seg45AccY1 rho - rho 41211) := by
      have hd : rho 41213 = Bool.toZMod bit * (rho 41211 - seg45AccY1 rho) := by
        rw [← hbit, seg45LadderFlatY1_eq]
        unfold seg45LadderFlatY1
        linear_combination -r2985
      unfold seg45AccY2
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

theorem seg45_rung2 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40950 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX2 rho : Seg45.F), (seg45AccY2 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41217 : Seg45.F), (rho 41218 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX2 rho : Seg45.F), (seg45AccY2 rho : Seg45.F)⟩
        ⟨(rho 41217 : Seg45.F), (rho 41218 : Seg45.F)⟩
        ⟨(seg45AccX3 rho : Seg45.F), (seg45AccY3 rho : Seg45.F)⟩
        ⟨(rho 41230 : Seg45.F), (rho 41231 : Seg45.F)⟩ := by
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
    have ha0 : (rho 41217 + rho 41218) * (seg45AccX2 rho + seg45AccY2 rho) = rho 41219 := by
      rw [seg45LadderFlatX2_eq, seg45LadderFlatY2_eq]
      unfold seg45LadderFlatX2 seg45LadderFlatY2
      linear_combination r2991
    have ha1 : rho 41218 * seg45AccX2 rho = rho 41220 := by
      rw [seg45LadderFlatX2_eq]
      unfold seg45LadderFlatX2
      linear_combination r2992
    have ha2 : rho 41217 * seg45AccY2 rho = rho 41221 := by
      rw [seg45LadderFlatY2_eq]
      unfold seg45LadderFlatY2
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
        rw [← hbit, seg45LadderFlatX2_eq]
        unfold seg45LadderFlatX2
        linear_combination -r2997
      unfold seg45AccX3
      linear_combination hd
    have hsely : seg45AccY3 rho = seg45AccY2 rho - Bool.toZMod bit * (seg45AccY2 rho - rho 41224) := by
      have hd : rho 41226 = Bool.toZMod bit * (rho 41224 - seg45AccY2 rho) := by
        rw [← hbit, seg45LadderFlatY2_eq]
        unfold seg45LadderFlatY2
        linear_combination -r2998
      unfold seg45AccY3
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

theorem seg45_rung3 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40951 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX3 rho : Seg45.F), (seg45AccY3 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41230 : Seg45.F), (rho 41231 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX3 rho : Seg45.F), (seg45AccY3 rho : Seg45.F)⟩
        ⟨(rho 41230 : Seg45.F), (rho 41231 : Seg45.F)⟩
        ⟨(seg45AccX4 rho : Seg45.F), (seg45AccY4 rho : Seg45.F)⟩
        ⟨(rho 41243 : Seg45.F), (rho 41244 : Seg45.F)⟩ := by
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
    have ha0 : (rho 41230 + rho 41231) * (seg45AccX3 rho + seg45AccY3 rho) = rho 41232 := by
      rw [seg45LadderFlatX3_eq, seg45LadderFlatY3_eq]
      unfold seg45LadderFlatX3 seg45LadderFlatY3
      linear_combination r3004
    have ha1 : rho 41231 * seg45AccX3 rho = rho 41233 := by
      rw [seg45LadderFlatX3_eq]
      unfold seg45LadderFlatX3
      linear_combination r3005
    have ha2 : rho 41230 * seg45AccY3 rho = rho 41234 := by
      rw [seg45LadderFlatY3_eq]
      unfold seg45LadderFlatY3
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
        rw [← hbit, seg45LadderFlatX3_eq]
        unfold seg45LadderFlatX3
        linear_combination -r3010
      unfold seg45AccX4
      linear_combination hd
    have hsely : seg45AccY4 rho = seg45AccY3 rho - Bool.toZMod bit * (seg45AccY3 rho - rho 41237) := by
      have hd : rho 41239 = Bool.toZMod bit * (rho 41237 - seg45AccY3 rho) := by
        rw [← hbit, seg45LadderFlatY3_eq]
        unfold seg45LadderFlatY3
        linear_combination -r3011
      unfold seg45AccY4
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

theorem seg45_rung4 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40952 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX4 rho : Seg45.F), (seg45AccY4 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41243 : Seg45.F), (rho 41244 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX4 rho : Seg45.F), (seg45AccY4 rho : Seg45.F)⟩
        ⟨(rho 41243 : Seg45.F), (rho 41244 : Seg45.F)⟩
        ⟨(seg45AccX5 rho : Seg45.F), (seg45AccY5 rho : Seg45.F)⟩
        ⟨(rho 41256 : Seg45.F), (rho 41257 : Seg45.F)⟩ := by
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
    have ha0 : (rho 41243 + rho 41244) * (seg45AccX4 rho + seg45AccY4 rho) = rho 41245 := by
      rw [seg45LadderFlatX4_eq, seg45LadderFlatY4_eq]
      unfold seg45LadderFlatX4 seg45LadderFlatY4
      linear_combination r3017
    have ha1 : rho 41244 * seg45AccX4 rho = rho 41246 := by
      rw [seg45LadderFlatX4_eq]
      unfold seg45LadderFlatX4
      linear_combination r3018
    have ha2 : rho 41243 * seg45AccY4 rho = rho 41247 := by
      rw [seg45LadderFlatY4_eq]
      unfold seg45LadderFlatY4
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
        rw [← hbit, seg45LadderFlatX4_eq]
        unfold seg45LadderFlatX4
        linear_combination -r3023
      unfold seg45AccX5
      linear_combination hd
    have hsely : seg45AccY5 rho = seg45AccY4 rho - Bool.toZMod bit * (seg45AccY4 rho - rho 41250) := by
      have hd : rho 41252 = Bool.toZMod bit * (rho 41250 - seg45AccY4 rho) := by
        rw [← hbit, seg45LadderFlatY4_eq]
        unfold seg45LadderFlatY4
        linear_combination -r3024
      unfold seg45AccY5
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

theorem seg45_rung5 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40953 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX5 rho : Seg45.F), (seg45AccY5 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41256 : Seg45.F), (rho 41257 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX5 rho : Seg45.F), (seg45AccY5 rho : Seg45.F)⟩
        ⟨(rho 41256 : Seg45.F), (rho 41257 : Seg45.F)⟩
        ⟨(seg45AccX6 rho : Seg45.F), (seg45AccY6 rho : Seg45.F)⟩
        ⟨(rho 41269 : Seg45.F), (rho 41270 : Seg45.F)⟩ := by
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
    have ha0 : (rho 41256 + rho 41257) * (seg45AccX5 rho + seg45AccY5 rho) = rho 41258 := by
      rw [seg45LadderFlatX5_eq, seg45LadderFlatY5_eq]
      unfold seg45LadderFlatX5 seg45LadderFlatY5
      linear_combination r3030
    have ha1 : rho 41257 * seg45AccX5 rho = rho 41259 := by
      rw [seg45LadderFlatX5_eq]
      unfold seg45LadderFlatX5
      linear_combination r3031
    have ha2 : rho 41256 * seg45AccY5 rho = rho 41260 := by
      rw [seg45LadderFlatY5_eq]
      unfold seg45LadderFlatY5
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
        rw [← hbit, seg45LadderFlatX5_eq]
        unfold seg45LadderFlatX5
        linear_combination -r3036
      unfold seg45AccX6
      linear_combination hd
    have hsely : seg45AccY6 rho = seg45AccY5 rho - Bool.toZMod bit * (seg45AccY5 rho - rho 41263) := by
      have hd : rho 41265 = Bool.toZMod bit * (rho 41263 - seg45AccY5 rho) := by
        rw [← hbit, seg45LadderFlatY5_eq]
        unfold seg45LadderFlatY5
        linear_combination -r3037
      unfold seg45AccY6
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

theorem seg45_rung6 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40954 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX6 rho : Seg45.F), (seg45AccY6 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41269 : Seg45.F), (rho 41270 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX6 rho : Seg45.F), (seg45AccY6 rho : Seg45.F)⟩
        ⟨(rho 41269 : Seg45.F), (rho 41270 : Seg45.F)⟩
        ⟨(seg45AccX7 rho : Seg45.F), (seg45AccY7 rho : Seg45.F)⟩
        ⟨(rho 41282 : Seg45.F), (rho 41283 : Seg45.F)⟩ := by
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
    have ha0 : (rho 41269 + rho 41270) * (seg45AccX6 rho + seg45AccY6 rho) = rho 41271 := by
      rw [seg45LadderFlatX6_eq, seg45LadderFlatY6_eq]
      unfold seg45LadderFlatX6 seg45LadderFlatY6
      linear_combination r3043
    have ha1 : rho 41270 * seg45AccX6 rho = rho 41272 := by
      rw [seg45LadderFlatX6_eq]
      unfold seg45LadderFlatX6
      linear_combination r3044
    have ha2 : rho 41269 * seg45AccY6 rho = rho 41273 := by
      rw [seg45LadderFlatY6_eq]
      unfold seg45LadderFlatY6
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
        rw [← hbit, seg45LadderFlatX6_eq]
        unfold seg45LadderFlatX6
        linear_combination -r3049
      unfold seg45AccX7
      linear_combination hd
    have hsely : seg45AccY7 rho = seg45AccY6 rho - Bool.toZMod bit * (seg45AccY6 rho - rho 41276) := by
      have hd : rho 41278 = Bool.toZMod bit * (rho 41276 - seg45AccY6 rho) := by
        rw [← hbit, seg45LadderFlatY6_eq]
        unfold seg45LadderFlatY6
        linear_combination -r3050
      unfold seg45AccY7
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

theorem seg45_rung7 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40955 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX7 rho : Seg45.F), (seg45AccY7 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41282 : Seg45.F), (rho 41283 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX7 rho : Seg45.F), (seg45AccY7 rho : Seg45.F)⟩
        ⟨(rho 41282 : Seg45.F), (rho 41283 : Seg45.F)⟩
        ⟨(seg45AccX8 rho : Seg45.F), (seg45AccY8 rho : Seg45.F)⟩
        ⟨(rho 41295 : Seg45.F), (rho 41296 : Seg45.F)⟩ := by
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
    have ha0 : (rho 41282 + rho 41283) * (seg45AccX7 rho + seg45AccY7 rho) = rho 41284 := by
      rw [seg45LadderFlatX7_eq, seg45LadderFlatY7_eq]
      unfold seg45LadderFlatX7 seg45LadderFlatY7
      linear_combination r3056
    have ha1 : rho 41283 * seg45AccX7 rho = rho 41285 := by
      rw [seg45LadderFlatX7_eq]
      unfold seg45LadderFlatX7
      linear_combination r3057
    have ha2 : rho 41282 * seg45AccY7 rho = rho 41286 := by
      rw [seg45LadderFlatY7_eq]
      unfold seg45LadderFlatY7
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
        rw [← hbit, seg45LadderFlatX7_eq]
        unfold seg45LadderFlatX7
        linear_combination -r3062
      unfold seg45AccX8
      linear_combination hd
    have hsely : seg45AccY8 rho = seg45AccY7 rho - Bool.toZMod bit * (seg45AccY7 rho - rho 41289) := by
      have hd : rho 41291 = Bool.toZMod bit * (rho 41289 - seg45AccY7 rho) := by
        rw [← hbit, seg45LadderFlatY7_eq]
        unfold seg45LadderFlatY7
        linear_combination -r3063
      unfold seg45AccY8
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

theorem seg45_rung8 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40956 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX8 rho : Seg45.F), (seg45AccY8 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41295 : Seg45.F), (rho 41296 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX8 rho : Seg45.F), (seg45AccY8 rho : Seg45.F)⟩
        ⟨(rho 41295 : Seg45.F), (rho 41296 : Seg45.F)⟩
        ⟨(seg45AccX9 rho : Seg45.F), (seg45AccY9 rho : Seg45.F)⟩
        ⟨(rho 41308 : Seg45.F), (rho 41309 : Seg45.F)⟩ := by
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
    have ha0 : (rho 41295 + rho 41296) * (seg45AccX8 rho + seg45AccY8 rho) = rho 41297 := by
      rw [seg45LadderFlatX8_eq, seg45LadderFlatY8_eq]
      unfold seg45LadderFlatX8 seg45LadderFlatY8
      linear_combination r3069
    have ha1 : rho 41296 * seg45AccX8 rho = rho 41298 := by
      rw [seg45LadderFlatX8_eq]
      unfold seg45LadderFlatX8
      linear_combination r3070
    have ha2 : rho 41295 * seg45AccY8 rho = rho 41299 := by
      rw [seg45LadderFlatY8_eq]
      unfold seg45LadderFlatY8
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
        rw [← hbit, seg45LadderFlatX8_eq]
        unfold seg45LadderFlatX8
        linear_combination -r3075
      unfold seg45AccX9
      linear_combination hd
    have hsely : seg45AccY9 rho = seg45AccY8 rho - Bool.toZMod bit * (seg45AccY8 rho - rho 41302) := by
      have hd : rho 41304 = Bool.toZMod bit * (rho 41302 - seg45AccY8 rho) := by
        rw [← hbit, seg45LadderFlatY8_eq]
        unfold seg45LadderFlatY8
        linear_combination -r3076
      unfold seg45AccY9
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

theorem seg45_rung9 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40957 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX9 rho : Seg45.F), (seg45AccY9 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41308 : Seg45.F), (rho 41309 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX9 rho : Seg45.F), (seg45AccY9 rho : Seg45.F)⟩
        ⟨(rho 41308 : Seg45.F), (rho 41309 : Seg45.F)⟩
        ⟨(seg45AccX10 rho : Seg45.F), (seg45AccY10 rho : Seg45.F)⟩
        ⟨(rho 41321 : Seg45.F), (rho 41322 : Seg45.F)⟩ := by
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
    have ha0 : (rho 41308 + rho 41309) * (seg45AccX9 rho + seg45AccY9 rho) = rho 41310 := by
      rw [seg45LadderFlatX9_eq, seg45LadderFlatY9_eq]
      unfold seg45LadderFlatX9 seg45LadderFlatY9
      linear_combination r3082
    have ha1 : rho 41309 * seg45AccX9 rho = rho 41311 := by
      rw [seg45LadderFlatX9_eq]
      unfold seg45LadderFlatX9
      linear_combination r3083
    have ha2 : rho 41308 * seg45AccY9 rho = rho 41312 := by
      rw [seg45LadderFlatY9_eq]
      unfold seg45LadderFlatY9
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
        rw [← hbit, seg45LadderFlatX9_eq]
        unfold seg45LadderFlatX9
        linear_combination -r3088
      unfold seg45AccX10
      linear_combination hd
    have hsely : seg45AccY10 rho = seg45AccY9 rho - Bool.toZMod bit * (seg45AccY9 rho - rho 41315) := by
      have hd : rho 41317 = Bool.toZMod bit * (rho 41315 - seg45AccY9 rho) := by
        rw [← hbit, seg45LadderFlatY9_eq]
        unfold seg45LadderFlatY9
        linear_combination -r3089
      unfold seg45AccY10
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

theorem seg45_rung10 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40958 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX10 rho : Seg45.F), (seg45AccY10 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41321 : Seg45.F), (rho 41322 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX10 rho : Seg45.F), (seg45AccY10 rho : Seg45.F)⟩
        ⟨(rho 41321 : Seg45.F), (rho 41322 : Seg45.F)⟩
        ⟨(seg45AccX11 rho : Seg45.F), (seg45AccY11 rho : Seg45.F)⟩
        ⟨(rho 41334 : Seg45.F), (rho 41335 : Seg45.F)⟩ := by
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
    have ha0 : (rho 41321 + rho 41322) * (seg45AccX10 rho + seg45AccY10 rho) = rho 41323 := by
      rw [seg45LadderFlatX10_eq, seg45LadderFlatY10_eq]
      unfold seg45LadderFlatX10 seg45LadderFlatY10
      linear_combination r3095
    have ha1 : rho 41322 * seg45AccX10 rho = rho 41324 := by
      rw [seg45LadderFlatX10_eq]
      unfold seg45LadderFlatX10
      linear_combination r3096
    have ha2 : rho 41321 * seg45AccY10 rho = rho 41325 := by
      rw [seg45LadderFlatY10_eq]
      unfold seg45LadderFlatY10
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
        rw [← hbit, seg45LadderFlatX10_eq]
        unfold seg45LadderFlatX10
        linear_combination -r3101
      unfold seg45AccX11
      linear_combination hd
    have hsely : seg45AccY11 rho = seg45AccY10 rho - Bool.toZMod bit * (seg45AccY10 rho - rho 41328) := by
      have hd : rho 41330 = Bool.toZMod bit * (rho 41328 - seg45AccY10 rho) := by
        rw [← hbit, seg45LadderFlatY10_eq]
        unfold seg45LadderFlatY10
        linear_combination -r3102
      unfold seg45AccY11
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

theorem seg45_rung11 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40959 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX11 rho : Seg45.F), (seg45AccY11 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41334 : Seg45.F), (rho 41335 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX11 rho : Seg45.F), (seg45AccY11 rho : Seg45.F)⟩
        ⟨(rho 41334 : Seg45.F), (rho 41335 : Seg45.F)⟩
        ⟨(seg45AccX12 rho : Seg45.F), (seg45AccY12 rho : Seg45.F)⟩
        ⟨(rho 41347 : Seg45.F), (rho 41348 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3108, r3109, r3110, r3111, r3112, r3113, r3114, r3115, r3116, r3117, r3118, r3119⟩
  unfold Seg45.relationPart39 at p39
  rcases p39 with ⟨r3120, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3108 at r3108
  unfold Seg45.relationRow3109 at r3109
  unfold Seg45.relationRow3110 at r3110
  unfold Seg45.relationRow3111 at r3111
  unfold Seg45.relationRow3112 at r3112
  unfold Seg45.relationRow3113 at r3113
  unfold Seg45.relationRow3114 at r3114
  unfold Seg45.relationRow3115 at r3115
  unfold Seg45.relationRow3116 at r3116
  unfold Seg45.relationRow3117 at r3117
  unfold Seg45.relationRow3118 at r3118
  unfold Seg45.relationRow3119 at r3119
  unfold Seg45.relationRow3120 at r3120
  have hrung11 (bit : Bool) (hbit : rho 40959 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX11 rho : Seg45.F), (seg45AccY11 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41334 : Seg45.F), (rho 41335 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX11 rho : Seg45.F), (seg45AccY11 rho : Seg45.F)⟩
        ⟨(rho 41334 : Seg45.F), (rho 41335 : Seg45.F)⟩
        ⟨(seg45AccX12 rho : Seg45.F), (seg45AccY12 rho : Seg45.F)⟩
        ⟨(rho 41347 : Seg45.F), (rho 41348 : Seg45.F)⟩ := by
    have ha0 : (rho 41334 + rho 41335) * (seg45AccX11 rho + seg45AccY11 rho) = rho 41336 := by
      rw [seg45LadderFlatX11_eq, seg45LadderFlatY11_eq]
      unfold seg45LadderFlatX11 seg45LadderFlatY11
      linear_combination r3108
    have ha1 : rho 41335 * seg45AccX11 rho = rho 41337 := by
      rw [seg45LadderFlatX11_eq]
      unfold seg45LadderFlatX11
      linear_combination r3109
    have ha2 : rho 41334 * seg45AccY11 rho = rho 41338 := by
      rw [seg45LadderFlatY11_eq]
      unfold seg45LadderFlatY11
      linear_combination r3110
    have ha3 : 3021 * rho 41337 * rho 41338 = rho 41339 := by
      linear_combination r3111
    have ha4 : rho 41340 * (1 + rho 41339) = rho 41337 + rho 41338 := by
      linear_combination r3112
    have ha5 : rho 41341 * (1 - rho 41339) = rho 41336 - rho 41337 - rho 41338 := by
      linear_combination r3113
    have haddx :
        rho 41340 * (1 + 3021 * (rho 41335 * seg45AccX11 rho) * (rho 41334 * seg45AccY11 rho)) =
          rho 41335 * seg45AccX11 rho + rho 41334 * seg45AccY11 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41341 * (1 - 3021 * (rho 41335 * seg45AccX11 rho) * (rho 41334 * seg45AccY11 rho)) =
          (-1) * (rho 41335 * seg45AccX11 rho) - rho 41334 * seg45AccY11 rho +
            (seg45AccY11 rho - seg45AccX11 rho * (-1)) * (rho 41334 + rho 41335) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41341 * (1 - rho 41339) = rho 41336 - rho 41337 - rho 41338 := ha5
        _ = (-1) * rho 41337 - rho 41338 + (seg45AccY11 rho - seg45AccX11 rho * (-1)) * (rho 41334 + rho 41335) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX12 rho = seg45AccX11 rho - Bool.toZMod bit * (seg45AccX11 rho - rho 41340) := by
      have hd : rho 41342 = Bool.toZMod bit * (rho 41340 - seg45AccX11 rho) := by
        rw [← hbit, seg45LadderFlatX11_eq]
        unfold seg45LadderFlatX11
        linear_combination -r3114
      unfold seg45AccX12
      linear_combination hd
    have hsely : seg45AccY12 rho = seg45AccY11 rho - Bool.toZMod bit * (seg45AccY11 rho - rho 41341) := by
      have hd : rho 41343 = Bool.toZMod bit * (rho 41341 - seg45AccY11 rho) := by
        rw [← hbit, seg45LadderFlatY11_eq]
        unfold seg45LadderFlatY11
        linear_combination -r3115
      unfold seg45AccY12
      linear_combination hd
    have hd0 : rho 41334 * rho 41335 = rho 41344 := by linear_combination r3116
    have hd1 : rho 41334 * rho 41334 = rho 41345 := by linear_combination r3117
    have hd2 : rho 41335 * rho 41335 = rho 41346 := by linear_combination r3118
    have hd3 : rho 41347 * (rho 41335 * rho 41335 + rho 41334 * rho 41334 * (-1)) = 2 * (rho 41334 * rho 41335) := by
      rw [hd0, hd1, hd2]
      linear_combination r3119
    have hd4 : rho 41348 * (2 - (rho 41335 * rho 41335 + rho 41334 * rho 41334 * (-1))) = rho 41335 * rho 41335 - rho 41334 * rho 41334 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3120
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX11 rho : Seg45.F), (seg45AccY11 rho : Seg45.F)⟩
      ⟨(rho 41334 : Seg45.F), (rho 41335 : Seg45.F)⟩
      ⟨(rho 41340 : Seg45.F), (rho 41341 : Seg45.F)⟩
      ⟨(seg45AccX12 rho : Seg45.F), (seg45AccY12 rho : Seg45.F)⟩
      ⟨(rho 41347 : Seg45.F), (rho 41348 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung11

theorem seg45_rung12 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40960 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX12 rho : Seg45.F), (seg45AccY12 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41347 : Seg45.F), (rho 41348 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX12 rho : Seg45.F), (seg45AccY12 rho : Seg45.F)⟩
        ⟨(rho 41347 : Seg45.F), (rho 41348 : Seg45.F)⟩
        ⟨(seg45AccX13 rho : Seg45.F), (seg45AccY13 rho : Seg45.F)⟩
        ⟨(rho 41360 : Seg45.F), (rho 41361 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart39 at p39
  rcases p39 with ⟨_, r3121, r3122, r3123, r3124, r3125, r3126, r3127, r3128, r3129, r3130, r3131, r3132, r3133, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3121 at r3121
  unfold Seg45.relationRow3122 at r3122
  unfold Seg45.relationRow3123 at r3123
  unfold Seg45.relationRow3124 at r3124
  unfold Seg45.relationRow3125 at r3125
  unfold Seg45.relationRow3126 at r3126
  unfold Seg45.relationRow3127 at r3127
  unfold Seg45.relationRow3128 at r3128
  unfold Seg45.relationRow3129 at r3129
  unfold Seg45.relationRow3130 at r3130
  unfold Seg45.relationRow3131 at r3131
  unfold Seg45.relationRow3132 at r3132
  unfold Seg45.relationRow3133 at r3133
  have hrung12 (bit : Bool) (hbit : rho 40960 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX12 rho : Seg45.F), (seg45AccY12 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41347 : Seg45.F), (rho 41348 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX12 rho : Seg45.F), (seg45AccY12 rho : Seg45.F)⟩
        ⟨(rho 41347 : Seg45.F), (rho 41348 : Seg45.F)⟩
        ⟨(seg45AccX13 rho : Seg45.F), (seg45AccY13 rho : Seg45.F)⟩
        ⟨(rho 41360 : Seg45.F), (rho 41361 : Seg45.F)⟩ := by
    have ha0 : (rho 41347 + rho 41348) * (seg45AccX12 rho + seg45AccY12 rho) = rho 41349 := by
      rw [seg45LadderFlatX12_eq, seg45LadderFlatY12_eq]
      unfold seg45LadderFlatX12 seg45LadderFlatY12
      linear_combination r3121
    have ha1 : rho 41348 * seg45AccX12 rho = rho 41350 := by
      rw [seg45LadderFlatX12_eq]
      unfold seg45LadderFlatX12
      linear_combination r3122
    have ha2 : rho 41347 * seg45AccY12 rho = rho 41351 := by
      rw [seg45LadderFlatY12_eq]
      unfold seg45LadderFlatY12
      linear_combination r3123
    have ha3 : 3021 * rho 41350 * rho 41351 = rho 41352 := by
      linear_combination r3124
    have ha4 : rho 41353 * (1 + rho 41352) = rho 41350 + rho 41351 := by
      linear_combination r3125
    have ha5 : rho 41354 * (1 - rho 41352) = rho 41349 - rho 41350 - rho 41351 := by
      linear_combination r3126
    have haddx :
        rho 41353 * (1 + 3021 * (rho 41348 * seg45AccX12 rho) * (rho 41347 * seg45AccY12 rho)) =
          rho 41348 * seg45AccX12 rho + rho 41347 * seg45AccY12 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41354 * (1 - 3021 * (rho 41348 * seg45AccX12 rho) * (rho 41347 * seg45AccY12 rho)) =
          (-1) * (rho 41348 * seg45AccX12 rho) - rho 41347 * seg45AccY12 rho +
            (seg45AccY12 rho - seg45AccX12 rho * (-1)) * (rho 41347 + rho 41348) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41354 * (1 - rho 41352) = rho 41349 - rho 41350 - rho 41351 := ha5
        _ = (-1) * rho 41350 - rho 41351 + (seg45AccY12 rho - seg45AccX12 rho * (-1)) * (rho 41347 + rho 41348) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX13 rho = seg45AccX12 rho - Bool.toZMod bit * (seg45AccX12 rho - rho 41353) := by
      have hd : rho 41355 = Bool.toZMod bit * (rho 41353 - seg45AccX12 rho) := by
        rw [← hbit, seg45LadderFlatX12_eq]
        unfold seg45LadderFlatX12
        linear_combination -r3127
      unfold seg45AccX13
      linear_combination hd
    have hsely : seg45AccY13 rho = seg45AccY12 rho - Bool.toZMod bit * (seg45AccY12 rho - rho 41354) := by
      have hd : rho 41356 = Bool.toZMod bit * (rho 41354 - seg45AccY12 rho) := by
        rw [← hbit, seg45LadderFlatY12_eq]
        unfold seg45LadderFlatY12
        linear_combination -r3128
      unfold seg45AccY13
      linear_combination hd
    have hd0 : rho 41347 * rho 41348 = rho 41357 := by linear_combination r3129
    have hd1 : rho 41347 * rho 41347 = rho 41358 := by linear_combination r3130
    have hd2 : rho 41348 * rho 41348 = rho 41359 := by linear_combination r3131
    have hd3 : rho 41360 * (rho 41348 * rho 41348 + rho 41347 * rho 41347 * (-1)) = 2 * (rho 41347 * rho 41348) := by
      rw [hd0, hd1, hd2]
      linear_combination r3132
    have hd4 : rho 41361 * (2 - (rho 41348 * rho 41348 + rho 41347 * rho 41347 * (-1))) = rho 41348 * rho 41348 - rho 41347 * rho 41347 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3133
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX12 rho : Seg45.F), (seg45AccY12 rho : Seg45.F)⟩
      ⟨(rho 41347 : Seg45.F), (rho 41348 : Seg45.F)⟩
      ⟨(rho 41353 : Seg45.F), (rho 41354 : Seg45.F)⟩
      ⟨(seg45AccX13 rho : Seg45.F), (seg45AccY13 rho : Seg45.F)⟩
      ⟨(rho 41360 : Seg45.F), (rho 41361 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung12

theorem seg45_rung13 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40961 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX13 rho : Seg45.F), (seg45AccY13 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41360 : Seg45.F), (rho 41361 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX13 rho : Seg45.F), (seg45AccY13 rho : Seg45.F)⟩
        ⟨(rho 41360 : Seg45.F), (rho 41361 : Seg45.F)⟩
        ⟨(seg45AccX14 rho : Seg45.F), (seg45AccY14 rho : Seg45.F)⟩
        ⟨(rho 41373 : Seg45.F), (rho 41374 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r3134, r3135, r3136, r3137, r3138, r3139, r3140, r3141, r3142, r3143, r3144, r3145, r3146, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3134 at r3134
  unfold Seg45.relationRow3135 at r3135
  unfold Seg45.relationRow3136 at r3136
  unfold Seg45.relationRow3137 at r3137
  unfold Seg45.relationRow3138 at r3138
  unfold Seg45.relationRow3139 at r3139
  unfold Seg45.relationRow3140 at r3140
  unfold Seg45.relationRow3141 at r3141
  unfold Seg45.relationRow3142 at r3142
  unfold Seg45.relationRow3143 at r3143
  unfold Seg45.relationRow3144 at r3144
  unfold Seg45.relationRow3145 at r3145
  unfold Seg45.relationRow3146 at r3146
  have hrung13 (bit : Bool) (hbit : rho 40961 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX13 rho : Seg45.F), (seg45AccY13 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41360 : Seg45.F), (rho 41361 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX13 rho : Seg45.F), (seg45AccY13 rho : Seg45.F)⟩
        ⟨(rho 41360 : Seg45.F), (rho 41361 : Seg45.F)⟩
        ⟨(seg45AccX14 rho : Seg45.F), (seg45AccY14 rho : Seg45.F)⟩
        ⟨(rho 41373 : Seg45.F), (rho 41374 : Seg45.F)⟩ := by
    have ha0 : (rho 41360 + rho 41361) * (seg45AccX13 rho + seg45AccY13 rho) = rho 41362 := by
      rw [seg45LadderFlatX13_eq, seg45LadderFlatY13_eq]
      unfold seg45LadderFlatX13 seg45LadderFlatY13
      linear_combination r3134
    have ha1 : rho 41361 * seg45AccX13 rho = rho 41363 := by
      rw [seg45LadderFlatX13_eq]
      unfold seg45LadderFlatX13
      linear_combination r3135
    have ha2 : rho 41360 * seg45AccY13 rho = rho 41364 := by
      rw [seg45LadderFlatY13_eq]
      unfold seg45LadderFlatY13
      linear_combination r3136
    have ha3 : 3021 * rho 41363 * rho 41364 = rho 41365 := by
      linear_combination r3137
    have ha4 : rho 41366 * (1 + rho 41365) = rho 41363 + rho 41364 := by
      linear_combination r3138
    have ha5 : rho 41367 * (1 - rho 41365) = rho 41362 - rho 41363 - rho 41364 := by
      linear_combination r3139
    have haddx :
        rho 41366 * (1 + 3021 * (rho 41361 * seg45AccX13 rho) * (rho 41360 * seg45AccY13 rho)) =
          rho 41361 * seg45AccX13 rho + rho 41360 * seg45AccY13 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41367 * (1 - 3021 * (rho 41361 * seg45AccX13 rho) * (rho 41360 * seg45AccY13 rho)) =
          (-1) * (rho 41361 * seg45AccX13 rho) - rho 41360 * seg45AccY13 rho +
            (seg45AccY13 rho - seg45AccX13 rho * (-1)) * (rho 41360 + rho 41361) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41367 * (1 - rho 41365) = rho 41362 - rho 41363 - rho 41364 := ha5
        _ = (-1) * rho 41363 - rho 41364 + (seg45AccY13 rho - seg45AccX13 rho * (-1)) * (rho 41360 + rho 41361) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX14 rho = seg45AccX13 rho - Bool.toZMod bit * (seg45AccX13 rho - rho 41366) := by
      have hd : rho 41368 = Bool.toZMod bit * (rho 41366 - seg45AccX13 rho) := by
        rw [← hbit, seg45LadderFlatX13_eq]
        unfold seg45LadderFlatX13
        linear_combination -r3140
      unfold seg45AccX14
      linear_combination hd
    have hsely : seg45AccY14 rho = seg45AccY13 rho - Bool.toZMod bit * (seg45AccY13 rho - rho 41367) := by
      have hd : rho 41369 = Bool.toZMod bit * (rho 41367 - seg45AccY13 rho) := by
        rw [← hbit, seg45LadderFlatY13_eq]
        unfold seg45LadderFlatY13
        linear_combination -r3141
      unfold seg45AccY14
      linear_combination hd
    have hd0 : rho 41360 * rho 41361 = rho 41370 := by linear_combination r3142
    have hd1 : rho 41360 * rho 41360 = rho 41371 := by linear_combination r3143
    have hd2 : rho 41361 * rho 41361 = rho 41372 := by linear_combination r3144
    have hd3 : rho 41373 * (rho 41361 * rho 41361 + rho 41360 * rho 41360 * (-1)) = 2 * (rho 41360 * rho 41361) := by
      rw [hd0, hd1, hd2]
      linear_combination r3145
    have hd4 : rho 41374 * (2 - (rho 41361 * rho 41361 + rho 41360 * rho 41360 * (-1))) = rho 41361 * rho 41361 - rho 41360 * rho 41360 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3146
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX13 rho : Seg45.F), (seg45AccY13 rho : Seg45.F)⟩
      ⟨(rho 41360 : Seg45.F), (rho 41361 : Seg45.F)⟩
      ⟨(rho 41366 : Seg45.F), (rho 41367 : Seg45.F)⟩
      ⟨(seg45AccX14 rho : Seg45.F), (seg45AccY14 rho : Seg45.F)⟩
      ⟨(rho 41373 : Seg45.F), (rho 41374 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung13

theorem seg45_rung14 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40962 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX14 rho : Seg45.F), (seg45AccY14 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41373 : Seg45.F), (rho 41374 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX14 rho : Seg45.F), (seg45AccY14 rho : Seg45.F)⟩
        ⟨(rho 41373 : Seg45.F), (rho 41374 : Seg45.F)⟩
        ⟨(seg45AccX15 rho : Seg45.F), (seg45AccY15 rho : Seg45.F)⟩
        ⟨(rho 41386 : Seg45.F), (rho 41387 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3147, r3148, r3149, r3150, r3151, r3152, r3153, r3154, r3155, r3156, r3157, r3158, r3159, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3147 at r3147
  unfold Seg45.relationRow3148 at r3148
  unfold Seg45.relationRow3149 at r3149
  unfold Seg45.relationRow3150 at r3150
  unfold Seg45.relationRow3151 at r3151
  unfold Seg45.relationRow3152 at r3152
  unfold Seg45.relationRow3153 at r3153
  unfold Seg45.relationRow3154 at r3154
  unfold Seg45.relationRow3155 at r3155
  unfold Seg45.relationRow3156 at r3156
  unfold Seg45.relationRow3157 at r3157
  unfold Seg45.relationRow3158 at r3158
  unfold Seg45.relationRow3159 at r3159
  have hrung14 (bit : Bool) (hbit : rho 40962 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX14 rho : Seg45.F), (seg45AccY14 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41373 : Seg45.F), (rho 41374 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX14 rho : Seg45.F), (seg45AccY14 rho : Seg45.F)⟩
        ⟨(rho 41373 : Seg45.F), (rho 41374 : Seg45.F)⟩
        ⟨(seg45AccX15 rho : Seg45.F), (seg45AccY15 rho : Seg45.F)⟩
        ⟨(rho 41386 : Seg45.F), (rho 41387 : Seg45.F)⟩ := by
    have ha0 : (rho 41373 + rho 41374) * (seg45AccX14 rho + seg45AccY14 rho) = rho 41375 := by
      rw [seg45LadderFlatX14_eq, seg45LadderFlatY14_eq]
      unfold seg45LadderFlatX14 seg45LadderFlatY14
      linear_combination r3147
    have ha1 : rho 41374 * seg45AccX14 rho = rho 41376 := by
      rw [seg45LadderFlatX14_eq]
      unfold seg45LadderFlatX14
      linear_combination r3148
    have ha2 : rho 41373 * seg45AccY14 rho = rho 41377 := by
      rw [seg45LadderFlatY14_eq]
      unfold seg45LadderFlatY14
      linear_combination r3149
    have ha3 : 3021 * rho 41376 * rho 41377 = rho 41378 := by
      linear_combination r3150
    have ha4 : rho 41379 * (1 + rho 41378) = rho 41376 + rho 41377 := by
      linear_combination r3151
    have ha5 : rho 41380 * (1 - rho 41378) = rho 41375 - rho 41376 - rho 41377 := by
      linear_combination r3152
    have haddx :
        rho 41379 * (1 + 3021 * (rho 41374 * seg45AccX14 rho) * (rho 41373 * seg45AccY14 rho)) =
          rho 41374 * seg45AccX14 rho + rho 41373 * seg45AccY14 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41380 * (1 - 3021 * (rho 41374 * seg45AccX14 rho) * (rho 41373 * seg45AccY14 rho)) =
          (-1) * (rho 41374 * seg45AccX14 rho) - rho 41373 * seg45AccY14 rho +
            (seg45AccY14 rho - seg45AccX14 rho * (-1)) * (rho 41373 + rho 41374) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41380 * (1 - rho 41378) = rho 41375 - rho 41376 - rho 41377 := ha5
        _ = (-1) * rho 41376 - rho 41377 + (seg45AccY14 rho - seg45AccX14 rho * (-1)) * (rho 41373 + rho 41374) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX15 rho = seg45AccX14 rho - Bool.toZMod bit * (seg45AccX14 rho - rho 41379) := by
      have hd : rho 41381 = Bool.toZMod bit * (rho 41379 - seg45AccX14 rho) := by
        rw [← hbit, seg45LadderFlatX14_eq]
        unfold seg45LadderFlatX14
        linear_combination -r3153
      unfold seg45AccX15
      linear_combination hd
    have hsely : seg45AccY15 rho = seg45AccY14 rho - Bool.toZMod bit * (seg45AccY14 rho - rho 41380) := by
      have hd : rho 41382 = Bool.toZMod bit * (rho 41380 - seg45AccY14 rho) := by
        rw [← hbit, seg45LadderFlatY14_eq]
        unfold seg45LadderFlatY14
        linear_combination -r3154
      unfold seg45AccY15
      linear_combination hd
    have hd0 : rho 41373 * rho 41374 = rho 41383 := by linear_combination r3155
    have hd1 : rho 41373 * rho 41373 = rho 41384 := by linear_combination r3156
    have hd2 : rho 41374 * rho 41374 = rho 41385 := by linear_combination r3157
    have hd3 : rho 41386 * (rho 41374 * rho 41374 + rho 41373 * rho 41373 * (-1)) = 2 * (rho 41373 * rho 41374) := by
      rw [hd0, hd1, hd2]
      linear_combination r3158
    have hd4 : rho 41387 * (2 - (rho 41374 * rho 41374 + rho 41373 * rho 41373 * (-1))) = rho 41374 * rho 41374 - rho 41373 * rho 41373 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3159
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX14 rho : Seg45.F), (seg45AccY14 rho : Seg45.F)⟩
      ⟨(rho 41373 : Seg45.F), (rho 41374 : Seg45.F)⟩
      ⟨(rho 41379 : Seg45.F), (rho 41380 : Seg45.F)⟩
      ⟨(seg45AccX15 rho : Seg45.F), (seg45AccY15 rho : Seg45.F)⟩
      ⟨(rho 41386 : Seg45.F), (rho 41387 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung14

theorem seg45_rung15 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40963 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX15 rho : Seg45.F), (seg45AccY15 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41386 : Seg45.F), (rho 41387 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX15 rho : Seg45.F), (seg45AccY15 rho : Seg45.F)⟩
        ⟨(rho 41386 : Seg45.F), (rho 41387 : Seg45.F)⟩
        ⟨(seg45AccX16 rho : Seg45.F), (seg45AccY16 rho : Seg45.F)⟩
        ⟨(rho 41399 : Seg45.F), (rho 41400 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3160, r3161, r3162, r3163, r3164, r3165, r3166, r3167, r3168, r3169, r3170, r3171, r3172, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3160 at r3160
  unfold Seg45.relationRow3161 at r3161
  unfold Seg45.relationRow3162 at r3162
  unfold Seg45.relationRow3163 at r3163
  unfold Seg45.relationRow3164 at r3164
  unfold Seg45.relationRow3165 at r3165
  unfold Seg45.relationRow3166 at r3166
  unfold Seg45.relationRow3167 at r3167
  unfold Seg45.relationRow3168 at r3168
  unfold Seg45.relationRow3169 at r3169
  unfold Seg45.relationRow3170 at r3170
  unfold Seg45.relationRow3171 at r3171
  unfold Seg45.relationRow3172 at r3172
  have hrung15 (bit : Bool) (hbit : rho 40963 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX15 rho : Seg45.F), (seg45AccY15 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41386 : Seg45.F), (rho 41387 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX15 rho : Seg45.F), (seg45AccY15 rho : Seg45.F)⟩
        ⟨(rho 41386 : Seg45.F), (rho 41387 : Seg45.F)⟩
        ⟨(seg45AccX16 rho : Seg45.F), (seg45AccY16 rho : Seg45.F)⟩
        ⟨(rho 41399 : Seg45.F), (rho 41400 : Seg45.F)⟩ := by
    have ha0 : (rho 41386 + rho 41387) * (seg45AccX15 rho + seg45AccY15 rho) = rho 41388 := by
      rw [seg45LadderFlatX15_eq, seg45LadderFlatY15_eq]
      unfold seg45LadderFlatX15 seg45LadderFlatY15
      linear_combination r3160
    have ha1 : rho 41387 * seg45AccX15 rho = rho 41389 := by
      rw [seg45LadderFlatX15_eq]
      unfold seg45LadderFlatX15
      linear_combination r3161
    have ha2 : rho 41386 * seg45AccY15 rho = rho 41390 := by
      rw [seg45LadderFlatY15_eq]
      unfold seg45LadderFlatY15
      linear_combination r3162
    have ha3 : 3021 * rho 41389 * rho 41390 = rho 41391 := by
      linear_combination r3163
    have ha4 : rho 41392 * (1 + rho 41391) = rho 41389 + rho 41390 := by
      linear_combination r3164
    have ha5 : rho 41393 * (1 - rho 41391) = rho 41388 - rho 41389 - rho 41390 := by
      linear_combination r3165
    have haddx :
        rho 41392 * (1 + 3021 * (rho 41387 * seg45AccX15 rho) * (rho 41386 * seg45AccY15 rho)) =
          rho 41387 * seg45AccX15 rho + rho 41386 * seg45AccY15 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41393 * (1 - 3021 * (rho 41387 * seg45AccX15 rho) * (rho 41386 * seg45AccY15 rho)) =
          (-1) * (rho 41387 * seg45AccX15 rho) - rho 41386 * seg45AccY15 rho +
            (seg45AccY15 rho - seg45AccX15 rho * (-1)) * (rho 41386 + rho 41387) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41393 * (1 - rho 41391) = rho 41388 - rho 41389 - rho 41390 := ha5
        _ = (-1) * rho 41389 - rho 41390 + (seg45AccY15 rho - seg45AccX15 rho * (-1)) * (rho 41386 + rho 41387) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX16 rho = seg45AccX15 rho - Bool.toZMod bit * (seg45AccX15 rho - rho 41392) := by
      have hd : rho 41394 = Bool.toZMod bit * (rho 41392 - seg45AccX15 rho) := by
        rw [← hbit, seg45LadderFlatX15_eq]
        unfold seg45LadderFlatX15
        linear_combination -r3166
      unfold seg45AccX16
      linear_combination hd
    have hsely : seg45AccY16 rho = seg45AccY15 rho - Bool.toZMod bit * (seg45AccY15 rho - rho 41393) := by
      have hd : rho 41395 = Bool.toZMod bit * (rho 41393 - seg45AccY15 rho) := by
        rw [← hbit, seg45LadderFlatY15_eq]
        unfold seg45LadderFlatY15
        linear_combination -r3167
      unfold seg45AccY16
      linear_combination hd
    have hd0 : rho 41386 * rho 41387 = rho 41396 := by linear_combination r3168
    have hd1 : rho 41386 * rho 41386 = rho 41397 := by linear_combination r3169
    have hd2 : rho 41387 * rho 41387 = rho 41398 := by linear_combination r3170
    have hd3 : rho 41399 * (rho 41387 * rho 41387 + rho 41386 * rho 41386 * (-1)) = 2 * (rho 41386 * rho 41387) := by
      rw [hd0, hd1, hd2]
      linear_combination r3171
    have hd4 : rho 41400 * (2 - (rho 41387 * rho 41387 + rho 41386 * rho 41386 * (-1))) = rho 41387 * rho 41387 - rho 41386 * rho 41386 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3172
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX15 rho : Seg45.F), (seg45AccY15 rho : Seg45.F)⟩
      ⟨(rho 41386 : Seg45.F), (rho 41387 : Seg45.F)⟩
      ⟨(rho 41392 : Seg45.F), (rho 41393 : Seg45.F)⟩
      ⟨(seg45AccX16 rho : Seg45.F), (seg45AccY16 rho : Seg45.F)⟩
      ⟨(rho 41399 : Seg45.F), (rho 41400 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung15

theorem seg45_rung16 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40964 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX16 rho : Seg45.F), (seg45AccY16 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41399 : Seg45.F), (rho 41400 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX16 rho : Seg45.F), (seg45AccY16 rho : Seg45.F)⟩
        ⟨(rho 41399 : Seg45.F), (rho 41400 : Seg45.F)⟩
        ⟨(seg45AccX17 rho : Seg45.F), (seg45AccY17 rho : Seg45.F)⟩
        ⟨(rho 41412 : Seg45.F), (rho 41413 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3173, r3174, r3175, r3176, r3177, r3178, r3179, r3180, r3181, r3182, r3183, r3184, r3185, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3173 Seg45.relationLc179 Seg45.relationLc179Part0 Seg45.relationLc179Part1 at r3173
  unfold Seg45.relationRow3174 at r3174
  unfold Seg45.relationRow3175 at r3175
  unfold Seg45.relationRow3176 at r3176
  unfold Seg45.relationRow3177 at r3177
  unfold Seg45.relationRow3178 at r3178
  unfold Seg45.relationRow3179 at r3179
  unfold Seg45.relationRow3180 at r3180
  unfold Seg45.relationRow3181 at r3181
  unfold Seg45.relationRow3182 at r3182
  unfold Seg45.relationRow3183 at r3183
  unfold Seg45.relationRow3184 at r3184
  unfold Seg45.relationRow3185 at r3185
  have hrung16 (bit : Bool) (hbit : rho 40964 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX16 rho : Seg45.F), (seg45AccY16 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41399 : Seg45.F), (rho 41400 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX16 rho : Seg45.F), (seg45AccY16 rho : Seg45.F)⟩
        ⟨(rho 41399 : Seg45.F), (rho 41400 : Seg45.F)⟩
        ⟨(seg45AccX17 rho : Seg45.F), (seg45AccY17 rho : Seg45.F)⟩
        ⟨(rho 41412 : Seg45.F), (rho 41413 : Seg45.F)⟩ := by
    have ha0 : (rho 41399 + rho 41400) * (seg45AccX16 rho + seg45AccY16 rho) = rho 41401 := by
      rw [seg45LadderFlatX16_eq, seg45LadderFlatY16_eq]
      unfold seg45LadderFlatX16 seg45LadderFlatY16
      linear_combination r3173
    have ha1 : rho 41400 * seg45AccX16 rho = rho 41402 := by
      rw [seg45LadderFlatX16_eq]
      unfold seg45LadderFlatX16
      linear_combination r3174
    have ha2 : rho 41399 * seg45AccY16 rho = rho 41403 := by
      rw [seg45LadderFlatY16_eq]
      unfold seg45LadderFlatY16
      linear_combination r3175
    have ha3 : 3021 * rho 41402 * rho 41403 = rho 41404 := by
      linear_combination r3176
    have ha4 : rho 41405 * (1 + rho 41404) = rho 41402 + rho 41403 := by
      linear_combination r3177
    have ha5 : rho 41406 * (1 - rho 41404) = rho 41401 - rho 41402 - rho 41403 := by
      linear_combination r3178
    have haddx :
        rho 41405 * (1 + 3021 * (rho 41400 * seg45AccX16 rho) * (rho 41399 * seg45AccY16 rho)) =
          rho 41400 * seg45AccX16 rho + rho 41399 * seg45AccY16 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41406 * (1 - 3021 * (rho 41400 * seg45AccX16 rho) * (rho 41399 * seg45AccY16 rho)) =
          (-1) * (rho 41400 * seg45AccX16 rho) - rho 41399 * seg45AccY16 rho +
            (seg45AccY16 rho - seg45AccX16 rho * (-1)) * (rho 41399 + rho 41400) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41406 * (1 - rho 41404) = rho 41401 - rho 41402 - rho 41403 := ha5
        _ = (-1) * rho 41402 - rho 41403 + (seg45AccY16 rho - seg45AccX16 rho * (-1)) * (rho 41399 + rho 41400) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX17 rho = seg45AccX16 rho - Bool.toZMod bit * (seg45AccX16 rho - rho 41405) := by
      have hd : rho 41407 = Bool.toZMod bit * (rho 41405 - seg45AccX16 rho) := by
        rw [← hbit, seg45LadderFlatX16_eq]
        unfold seg45LadderFlatX16
        linear_combination -r3179
      unfold seg45AccX17
      linear_combination hd
    have hsely : seg45AccY17 rho = seg45AccY16 rho - Bool.toZMod bit * (seg45AccY16 rho - rho 41406) := by
      have hd : rho 41408 = Bool.toZMod bit * (rho 41406 - seg45AccY16 rho) := by
        rw [← hbit, seg45LadderFlatY16_eq]
        unfold seg45LadderFlatY16
        linear_combination -r3180
      unfold seg45AccY17
      linear_combination hd
    have hd0 : rho 41399 * rho 41400 = rho 41409 := by linear_combination r3181
    have hd1 : rho 41399 * rho 41399 = rho 41410 := by linear_combination r3182
    have hd2 : rho 41400 * rho 41400 = rho 41411 := by linear_combination r3183
    have hd3 : rho 41412 * (rho 41400 * rho 41400 + rho 41399 * rho 41399 * (-1)) = 2 * (rho 41399 * rho 41400) := by
      rw [hd0, hd1, hd2]
      linear_combination r3184
    have hd4 : rho 41413 * (2 - (rho 41400 * rho 41400 + rho 41399 * rho 41399 * (-1))) = rho 41400 * rho 41400 - rho 41399 * rho 41399 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3185
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX16 rho : Seg45.F), (seg45AccY16 rho : Seg45.F)⟩
      ⟨(rho 41399 : Seg45.F), (rho 41400 : Seg45.F)⟩
      ⟨(rho 41405 : Seg45.F), (rho 41406 : Seg45.F)⟩
      ⟨(seg45AccX17 rho : Seg45.F), (seg45AccY17 rho : Seg45.F)⟩
      ⟨(rho 41412 : Seg45.F), (rho 41413 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung16

theorem seg45_rung17 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40965 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX17 rho : Seg45.F), (seg45AccY17 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41412 : Seg45.F), (rho 41413 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX17 rho : Seg45.F), (seg45AccY17 rho : Seg45.F)⟩
        ⟨(rho 41412 : Seg45.F), (rho 41413 : Seg45.F)⟩
        ⟨(seg45AccX18 rho : Seg45.F), (seg45AccY18 rho : Seg45.F)⟩
        ⟨(rho 41425 : Seg45.F), (rho 41426 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3186, r3187, r3188, r3189, r3190, r3191, r3192, r3193, r3194, r3195, r3196, r3197, r3198, _⟩
  unfold Seg45.relationRow3186 Seg45.relationLc180 Seg45.relationLc180Part0 Seg45.relationLc180Part1 at r3186
  unfold Seg45.relationRow3187 at r3187
  unfold Seg45.relationRow3188 at r3188
  unfold Seg45.relationRow3189 at r3189
  unfold Seg45.relationRow3190 at r3190
  unfold Seg45.relationRow3191 at r3191
  unfold Seg45.relationRow3192 at r3192
  unfold Seg45.relationRow3193 at r3193
  unfold Seg45.relationRow3194 at r3194
  unfold Seg45.relationRow3195 at r3195
  unfold Seg45.relationRow3196 at r3196
  unfold Seg45.relationRow3197 at r3197
  unfold Seg45.relationRow3198 at r3198
  have hrung17 (bit : Bool) (hbit : rho 40965 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX17 rho : Seg45.F), (seg45AccY17 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41412 : Seg45.F), (rho 41413 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX17 rho : Seg45.F), (seg45AccY17 rho : Seg45.F)⟩
        ⟨(rho 41412 : Seg45.F), (rho 41413 : Seg45.F)⟩
        ⟨(seg45AccX18 rho : Seg45.F), (seg45AccY18 rho : Seg45.F)⟩
        ⟨(rho 41425 : Seg45.F), (rho 41426 : Seg45.F)⟩ := by
    have ha0 : (rho 41412 + rho 41413) * (seg45AccX17 rho + seg45AccY17 rho) = rho 41414 := by
      rw [seg45LadderFlatX17_eq, seg45LadderFlatY17_eq]
      unfold seg45LadderFlatX17 seg45LadderFlatY17
      linear_combination r3186
    have ha1 : rho 41413 * seg45AccX17 rho = rho 41415 := by
      rw [seg45LadderFlatX17_eq]
      unfold seg45LadderFlatX17
      linear_combination r3187
    have ha2 : rho 41412 * seg45AccY17 rho = rho 41416 := by
      rw [seg45LadderFlatY17_eq]
      unfold seg45LadderFlatY17
      linear_combination r3188
    have ha3 : 3021 * rho 41415 * rho 41416 = rho 41417 := by
      linear_combination r3189
    have ha4 : rho 41418 * (1 + rho 41417) = rho 41415 + rho 41416 := by
      linear_combination r3190
    have ha5 : rho 41419 * (1 - rho 41417) = rho 41414 - rho 41415 - rho 41416 := by
      linear_combination r3191
    have haddx :
        rho 41418 * (1 + 3021 * (rho 41413 * seg45AccX17 rho) * (rho 41412 * seg45AccY17 rho)) =
          rho 41413 * seg45AccX17 rho + rho 41412 * seg45AccY17 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41419 * (1 - 3021 * (rho 41413 * seg45AccX17 rho) * (rho 41412 * seg45AccY17 rho)) =
          (-1) * (rho 41413 * seg45AccX17 rho) - rho 41412 * seg45AccY17 rho +
            (seg45AccY17 rho - seg45AccX17 rho * (-1)) * (rho 41412 + rho 41413) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41419 * (1 - rho 41417) = rho 41414 - rho 41415 - rho 41416 := ha5
        _ = (-1) * rho 41415 - rho 41416 + (seg45AccY17 rho - seg45AccX17 rho * (-1)) * (rho 41412 + rho 41413) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX18 rho = seg45AccX17 rho - Bool.toZMod bit * (seg45AccX17 rho - rho 41418) := by
      have hd : rho 41420 = Bool.toZMod bit * (rho 41418 - seg45AccX17 rho) := by
        rw [← hbit, seg45LadderFlatX17_eq]
        unfold seg45LadderFlatX17
        linear_combination -r3192
      unfold seg45AccX18
      linear_combination hd
    have hsely : seg45AccY18 rho = seg45AccY17 rho - Bool.toZMod bit * (seg45AccY17 rho - rho 41419) := by
      have hd : rho 41421 = Bool.toZMod bit * (rho 41419 - seg45AccY17 rho) := by
        rw [← hbit, seg45LadderFlatY17_eq]
        unfold seg45LadderFlatY17
        linear_combination -r3193
      unfold seg45AccY18
      linear_combination hd
    have hd0 : rho 41412 * rho 41413 = rho 41422 := by linear_combination r3194
    have hd1 : rho 41412 * rho 41412 = rho 41423 := by linear_combination r3195
    have hd2 : rho 41413 * rho 41413 = rho 41424 := by linear_combination r3196
    have hd3 : rho 41425 * (rho 41413 * rho 41413 + rho 41412 * rho 41412 * (-1)) = 2 * (rho 41412 * rho 41413) := by
      rw [hd0, hd1, hd2]
      linear_combination r3197
    have hd4 : rho 41426 * (2 - (rho 41413 * rho 41413 + rho 41412 * rho 41412 * (-1))) = rho 41413 * rho 41413 - rho 41412 * rho 41412 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3198
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX17 rho : Seg45.F), (seg45AccY17 rho : Seg45.F)⟩
      ⟨(rho 41412 : Seg45.F), (rho 41413 : Seg45.F)⟩
      ⟨(rho 41418 : Seg45.F), (rho 41419 : Seg45.F)⟩
      ⟨(seg45AccX18 rho : Seg45.F), (seg45AccY18 rho : Seg45.F)⟩
      ⟨(rho 41425 : Seg45.F), (rho 41426 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung17

theorem seg45_rung18 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40966 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX18 rho : Seg45.F), (seg45AccY18 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41425 : Seg45.F), (rho 41426 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX18 rho : Seg45.F), (seg45AccY18 rho : Seg45.F)⟩
        ⟨(rho 41425 : Seg45.F), (rho 41426 : Seg45.F)⟩
        ⟨(seg45AccX19 rho : Seg45.F), (seg45AccY19 rho : Seg45.F)⟩
        ⟨(rho 41438 : Seg45.F), (rho 41439 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3199⟩
  unfold Seg45.relationPart40 at p40
  rcases p40 with ⟨r3200, r3201, r3202, r3203, r3204, r3205, r3206, r3207, r3208, r3209, r3210, r3211, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3199 Seg45.relationLc181 Seg45.relationLc181Part0 Seg45.relationLc181Part1 at r3199
  unfold Seg45.relationRow3200 at r3200
  unfold Seg45.relationRow3201 at r3201
  unfold Seg45.relationRow3202 at r3202
  unfold Seg45.relationRow3203 at r3203
  unfold Seg45.relationRow3204 at r3204
  unfold Seg45.relationRow3205 at r3205
  unfold Seg45.relationRow3206 at r3206
  unfold Seg45.relationRow3207 at r3207
  unfold Seg45.relationRow3208 at r3208
  unfold Seg45.relationRow3209 at r3209
  unfold Seg45.relationRow3210 at r3210
  unfold Seg45.relationRow3211 at r3211
  have hrung18 (bit : Bool) (hbit : rho 40966 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX18 rho : Seg45.F), (seg45AccY18 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41425 : Seg45.F), (rho 41426 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX18 rho : Seg45.F), (seg45AccY18 rho : Seg45.F)⟩
        ⟨(rho 41425 : Seg45.F), (rho 41426 : Seg45.F)⟩
        ⟨(seg45AccX19 rho : Seg45.F), (seg45AccY19 rho : Seg45.F)⟩
        ⟨(rho 41438 : Seg45.F), (rho 41439 : Seg45.F)⟩ := by
    have ha0 : (rho 41425 + rho 41426) * (seg45AccX18 rho + seg45AccY18 rho) = rho 41427 := by
      rw [seg45LadderFlatX18_eq, seg45LadderFlatY18_eq]
      unfold seg45LadderFlatX18 seg45LadderFlatY18
      linear_combination r3199
    have ha1 : rho 41426 * seg45AccX18 rho = rho 41428 := by
      rw [seg45LadderFlatX18_eq]
      unfold seg45LadderFlatX18
      linear_combination r3200
    have ha2 : rho 41425 * seg45AccY18 rho = rho 41429 := by
      rw [seg45LadderFlatY18_eq]
      unfold seg45LadderFlatY18
      linear_combination r3201
    have ha3 : 3021 * rho 41428 * rho 41429 = rho 41430 := by
      linear_combination r3202
    have ha4 : rho 41431 * (1 + rho 41430) = rho 41428 + rho 41429 := by
      linear_combination r3203
    have ha5 : rho 41432 * (1 - rho 41430) = rho 41427 - rho 41428 - rho 41429 := by
      linear_combination r3204
    have haddx :
        rho 41431 * (1 + 3021 * (rho 41426 * seg45AccX18 rho) * (rho 41425 * seg45AccY18 rho)) =
          rho 41426 * seg45AccX18 rho + rho 41425 * seg45AccY18 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41432 * (1 - 3021 * (rho 41426 * seg45AccX18 rho) * (rho 41425 * seg45AccY18 rho)) =
          (-1) * (rho 41426 * seg45AccX18 rho) - rho 41425 * seg45AccY18 rho +
            (seg45AccY18 rho - seg45AccX18 rho * (-1)) * (rho 41425 + rho 41426) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41432 * (1 - rho 41430) = rho 41427 - rho 41428 - rho 41429 := ha5
        _ = (-1) * rho 41428 - rho 41429 + (seg45AccY18 rho - seg45AccX18 rho * (-1)) * (rho 41425 + rho 41426) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX19 rho = seg45AccX18 rho - Bool.toZMod bit * (seg45AccX18 rho - rho 41431) := by
      have hd : rho 41433 = Bool.toZMod bit * (rho 41431 - seg45AccX18 rho) := by
        rw [← hbit, seg45LadderFlatX18_eq]
        unfold seg45LadderFlatX18
        linear_combination -r3205
      unfold seg45AccX19
      linear_combination hd
    have hsely : seg45AccY19 rho = seg45AccY18 rho - Bool.toZMod bit * (seg45AccY18 rho - rho 41432) := by
      have hd : rho 41434 = Bool.toZMod bit * (rho 41432 - seg45AccY18 rho) := by
        rw [← hbit, seg45LadderFlatY18_eq]
        unfold seg45LadderFlatY18
        linear_combination -r3206
      unfold seg45AccY19
      linear_combination hd
    have hd0 : rho 41425 * rho 41426 = rho 41435 := by linear_combination r3207
    have hd1 : rho 41425 * rho 41425 = rho 41436 := by linear_combination r3208
    have hd2 : rho 41426 * rho 41426 = rho 41437 := by linear_combination r3209
    have hd3 : rho 41438 * (rho 41426 * rho 41426 + rho 41425 * rho 41425 * (-1)) = 2 * (rho 41425 * rho 41426) := by
      rw [hd0, hd1, hd2]
      linear_combination r3210
    have hd4 : rho 41439 * (2 - (rho 41426 * rho 41426 + rho 41425 * rho 41425 * (-1))) = rho 41426 * rho 41426 - rho 41425 * rho 41425 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3211
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX18 rho : Seg45.F), (seg45AccY18 rho : Seg45.F)⟩
      ⟨(rho 41425 : Seg45.F), (rho 41426 : Seg45.F)⟩
      ⟨(rho 41431 : Seg45.F), (rho 41432 : Seg45.F)⟩
      ⟨(seg45AccX19 rho : Seg45.F), (seg45AccY19 rho : Seg45.F)⟩
      ⟨(rho 41438 : Seg45.F), (rho 41439 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung18

theorem seg45_rung19 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40967 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX19 rho : Seg45.F), (seg45AccY19 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41438 : Seg45.F), (rho 41439 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX19 rho : Seg45.F), (seg45AccY19 rho : Seg45.F)⟩
        ⟨(rho 41438 : Seg45.F), (rho 41439 : Seg45.F)⟩
        ⟨(seg45AccX20 rho : Seg45.F), (seg45AccY20 rho : Seg45.F)⟩
        ⟨(rho 41451 : Seg45.F), (rho 41452 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r3212, r3213, r3214, r3215, r3216, r3217, r3218, r3219, r3220, r3221, r3222, r3223, r3224, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3212 Seg45.relationLc182 Seg45.relationLc182Part0 Seg45.relationLc182Part1 at r3212
  unfold Seg45.relationRow3213 at r3213
  unfold Seg45.relationRow3214 at r3214
  unfold Seg45.relationRow3215 at r3215
  unfold Seg45.relationRow3216 at r3216
  unfold Seg45.relationRow3217 at r3217
  unfold Seg45.relationRow3218 at r3218
  unfold Seg45.relationRow3219 at r3219
  unfold Seg45.relationRow3220 at r3220
  unfold Seg45.relationRow3221 at r3221
  unfold Seg45.relationRow3222 at r3222
  unfold Seg45.relationRow3223 at r3223
  unfold Seg45.relationRow3224 at r3224
  have hrung19 (bit : Bool) (hbit : rho 40967 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX19 rho : Seg45.F), (seg45AccY19 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41438 : Seg45.F), (rho 41439 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX19 rho : Seg45.F), (seg45AccY19 rho : Seg45.F)⟩
        ⟨(rho 41438 : Seg45.F), (rho 41439 : Seg45.F)⟩
        ⟨(seg45AccX20 rho : Seg45.F), (seg45AccY20 rho : Seg45.F)⟩
        ⟨(rho 41451 : Seg45.F), (rho 41452 : Seg45.F)⟩ := by
    have ha0 : (rho 41438 + rho 41439) * (seg45AccX19 rho + seg45AccY19 rho) = rho 41440 := by
      rw [seg45LadderFlatX19_eq, seg45LadderFlatY19_eq]
      unfold seg45LadderFlatX19 seg45LadderFlatY19
      linear_combination r3212
    have ha1 : rho 41439 * seg45AccX19 rho = rho 41441 := by
      rw [seg45LadderFlatX19_eq]
      unfold seg45LadderFlatX19
      linear_combination r3213
    have ha2 : rho 41438 * seg45AccY19 rho = rho 41442 := by
      rw [seg45LadderFlatY19_eq]
      unfold seg45LadderFlatY19
      linear_combination r3214
    have ha3 : 3021 * rho 41441 * rho 41442 = rho 41443 := by
      linear_combination r3215
    have ha4 : rho 41444 * (1 + rho 41443) = rho 41441 + rho 41442 := by
      linear_combination r3216
    have ha5 : rho 41445 * (1 - rho 41443) = rho 41440 - rho 41441 - rho 41442 := by
      linear_combination r3217
    have haddx :
        rho 41444 * (1 + 3021 * (rho 41439 * seg45AccX19 rho) * (rho 41438 * seg45AccY19 rho)) =
          rho 41439 * seg45AccX19 rho + rho 41438 * seg45AccY19 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41445 * (1 - 3021 * (rho 41439 * seg45AccX19 rho) * (rho 41438 * seg45AccY19 rho)) =
          (-1) * (rho 41439 * seg45AccX19 rho) - rho 41438 * seg45AccY19 rho +
            (seg45AccY19 rho - seg45AccX19 rho * (-1)) * (rho 41438 + rho 41439) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41445 * (1 - rho 41443) = rho 41440 - rho 41441 - rho 41442 := ha5
        _ = (-1) * rho 41441 - rho 41442 + (seg45AccY19 rho - seg45AccX19 rho * (-1)) * (rho 41438 + rho 41439) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX20 rho = seg45AccX19 rho - Bool.toZMod bit * (seg45AccX19 rho - rho 41444) := by
      have hd : rho 41446 = Bool.toZMod bit * (rho 41444 - seg45AccX19 rho) := by
        rw [← hbit, seg45LadderFlatX19_eq]
        unfold seg45LadderFlatX19
        linear_combination -r3218
      unfold seg45AccX20
      linear_combination hd
    have hsely : seg45AccY20 rho = seg45AccY19 rho - Bool.toZMod bit * (seg45AccY19 rho - rho 41445) := by
      have hd : rho 41447 = Bool.toZMod bit * (rho 41445 - seg45AccY19 rho) := by
        rw [← hbit, seg45LadderFlatY19_eq]
        unfold seg45LadderFlatY19
        linear_combination -r3219
      unfold seg45AccY20
      linear_combination hd
    have hd0 : rho 41438 * rho 41439 = rho 41448 := by linear_combination r3220
    have hd1 : rho 41438 * rho 41438 = rho 41449 := by linear_combination r3221
    have hd2 : rho 41439 * rho 41439 = rho 41450 := by linear_combination r3222
    have hd3 : rho 41451 * (rho 41439 * rho 41439 + rho 41438 * rho 41438 * (-1)) = 2 * (rho 41438 * rho 41439) := by
      rw [hd0, hd1, hd2]
      linear_combination r3223
    have hd4 : rho 41452 * (2 - (rho 41439 * rho 41439 + rho 41438 * rho 41438 * (-1))) = rho 41439 * rho 41439 - rho 41438 * rho 41438 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3224
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX19 rho : Seg45.F), (seg45AccY19 rho : Seg45.F)⟩
      ⟨(rho 41438 : Seg45.F), (rho 41439 : Seg45.F)⟩
      ⟨(rho 41444 : Seg45.F), (rho 41445 : Seg45.F)⟩
      ⟨(seg45AccX20 rho : Seg45.F), (seg45AccY20 rho : Seg45.F)⟩
      ⟨(rho 41451 : Seg45.F), (rho 41452 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung19

theorem seg45_rung20 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40968 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX20 rho : Seg45.F), (seg45AccY20 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41451 : Seg45.F), (rho 41452 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX20 rho : Seg45.F), (seg45AccY20 rho : Seg45.F)⟩
        ⟨(rho 41451 : Seg45.F), (rho 41452 : Seg45.F)⟩
        ⟨(seg45AccX21 rho : Seg45.F), (seg45AccY21 rho : Seg45.F)⟩
        ⟨(rho 41464 : Seg45.F), (rho 41465 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3225, r3226, r3227, r3228, r3229, r3230, r3231, r3232, r3233, r3234, r3235, r3236, r3237, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3225 Seg45.relationLc183 Seg45.relationLc183Part0 Seg45.relationLc183Part1 at r3225
  unfold Seg45.relationRow3226 at r3226
  unfold Seg45.relationRow3227 at r3227
  unfold Seg45.relationRow3228 at r3228
  unfold Seg45.relationRow3229 at r3229
  unfold Seg45.relationRow3230 at r3230
  unfold Seg45.relationRow3231 at r3231
  unfold Seg45.relationRow3232 at r3232
  unfold Seg45.relationRow3233 at r3233
  unfold Seg45.relationRow3234 at r3234
  unfold Seg45.relationRow3235 at r3235
  unfold Seg45.relationRow3236 at r3236
  unfold Seg45.relationRow3237 at r3237
  have hrung20 (bit : Bool) (hbit : rho 40968 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX20 rho : Seg45.F), (seg45AccY20 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41451 : Seg45.F), (rho 41452 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX20 rho : Seg45.F), (seg45AccY20 rho : Seg45.F)⟩
        ⟨(rho 41451 : Seg45.F), (rho 41452 : Seg45.F)⟩
        ⟨(seg45AccX21 rho : Seg45.F), (seg45AccY21 rho : Seg45.F)⟩
        ⟨(rho 41464 : Seg45.F), (rho 41465 : Seg45.F)⟩ := by
    have ha0 : (rho 41451 + rho 41452) * (seg45AccX20 rho + seg45AccY20 rho) = rho 41453 := by
      rw [seg45LadderFlatX20_eq, seg45LadderFlatY20_eq]
      unfold seg45LadderFlatX20 seg45LadderFlatY20
      linear_combination r3225
    have ha1 : rho 41452 * seg45AccX20 rho = rho 41454 := by
      rw [seg45LadderFlatX20_eq]
      unfold seg45LadderFlatX20
      linear_combination r3226
    have ha2 : rho 41451 * seg45AccY20 rho = rho 41455 := by
      rw [seg45LadderFlatY20_eq]
      unfold seg45LadderFlatY20
      linear_combination r3227
    have ha3 : 3021 * rho 41454 * rho 41455 = rho 41456 := by
      linear_combination r3228
    have ha4 : rho 41457 * (1 + rho 41456) = rho 41454 + rho 41455 := by
      linear_combination r3229
    have ha5 : rho 41458 * (1 - rho 41456) = rho 41453 - rho 41454 - rho 41455 := by
      linear_combination r3230
    have haddx :
        rho 41457 * (1 + 3021 * (rho 41452 * seg45AccX20 rho) * (rho 41451 * seg45AccY20 rho)) =
          rho 41452 * seg45AccX20 rho + rho 41451 * seg45AccY20 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41458 * (1 - 3021 * (rho 41452 * seg45AccX20 rho) * (rho 41451 * seg45AccY20 rho)) =
          (-1) * (rho 41452 * seg45AccX20 rho) - rho 41451 * seg45AccY20 rho +
            (seg45AccY20 rho - seg45AccX20 rho * (-1)) * (rho 41451 + rho 41452) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41458 * (1 - rho 41456) = rho 41453 - rho 41454 - rho 41455 := ha5
        _ = (-1) * rho 41454 - rho 41455 + (seg45AccY20 rho - seg45AccX20 rho * (-1)) * (rho 41451 + rho 41452) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX21 rho = seg45AccX20 rho - Bool.toZMod bit * (seg45AccX20 rho - rho 41457) := by
      have hd : rho 41459 = Bool.toZMod bit * (rho 41457 - seg45AccX20 rho) := by
        rw [← hbit, seg45LadderFlatX20_eq]
        unfold seg45LadderFlatX20
        linear_combination -r3231
      unfold seg45AccX21
      linear_combination hd
    have hsely : seg45AccY21 rho = seg45AccY20 rho - Bool.toZMod bit * (seg45AccY20 rho - rho 41458) := by
      have hd : rho 41460 = Bool.toZMod bit * (rho 41458 - seg45AccY20 rho) := by
        rw [← hbit, seg45LadderFlatY20_eq]
        unfold seg45LadderFlatY20
        linear_combination -r3232
      unfold seg45AccY21
      linear_combination hd
    have hd0 : rho 41451 * rho 41452 = rho 41461 := by linear_combination r3233
    have hd1 : rho 41451 * rho 41451 = rho 41462 := by linear_combination r3234
    have hd2 : rho 41452 * rho 41452 = rho 41463 := by linear_combination r3235
    have hd3 : rho 41464 * (rho 41452 * rho 41452 + rho 41451 * rho 41451 * (-1)) = 2 * (rho 41451 * rho 41452) := by
      rw [hd0, hd1, hd2]
      linear_combination r3236
    have hd4 : rho 41465 * (2 - (rho 41452 * rho 41452 + rho 41451 * rho 41451 * (-1))) = rho 41452 * rho 41452 - rho 41451 * rho 41451 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3237
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX20 rho : Seg45.F), (seg45AccY20 rho : Seg45.F)⟩
      ⟨(rho 41451 : Seg45.F), (rho 41452 : Seg45.F)⟩
      ⟨(rho 41457 : Seg45.F), (rho 41458 : Seg45.F)⟩
      ⟨(seg45AccX21 rho : Seg45.F), (seg45AccY21 rho : Seg45.F)⟩
      ⟨(rho 41464 : Seg45.F), (rho 41465 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung20

theorem seg45_rung21 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40969 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX21 rho : Seg45.F), (seg45AccY21 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41464 : Seg45.F), (rho 41465 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX21 rho : Seg45.F), (seg45AccY21 rho : Seg45.F)⟩
        ⟨(rho 41464 : Seg45.F), (rho 41465 : Seg45.F)⟩
        ⟨(seg45AccX22 rho : Seg45.F), (seg45AccY22 rho : Seg45.F)⟩
        ⟨(rho 41477 : Seg45.F), (rho 41478 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3238, r3239, r3240, r3241, r3242, r3243, r3244, r3245, r3246, r3247, r3248, r3249, r3250, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3238 Seg45.relationLc184 Seg45.relationLc184Part0 Seg45.relationLc184Part1 at r3238
  unfold Seg45.relationRow3239 at r3239
  unfold Seg45.relationRow3240 at r3240
  unfold Seg45.relationRow3241 at r3241
  unfold Seg45.relationRow3242 at r3242
  unfold Seg45.relationRow3243 at r3243
  unfold Seg45.relationRow3244 at r3244
  unfold Seg45.relationRow3245 at r3245
  unfold Seg45.relationRow3246 at r3246
  unfold Seg45.relationRow3247 at r3247
  unfold Seg45.relationRow3248 at r3248
  unfold Seg45.relationRow3249 at r3249
  unfold Seg45.relationRow3250 at r3250
  have hrung21 (bit : Bool) (hbit : rho 40969 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX21 rho : Seg45.F), (seg45AccY21 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41464 : Seg45.F), (rho 41465 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX21 rho : Seg45.F), (seg45AccY21 rho : Seg45.F)⟩
        ⟨(rho 41464 : Seg45.F), (rho 41465 : Seg45.F)⟩
        ⟨(seg45AccX22 rho : Seg45.F), (seg45AccY22 rho : Seg45.F)⟩
        ⟨(rho 41477 : Seg45.F), (rho 41478 : Seg45.F)⟩ := by
    have ha0 : (rho 41464 + rho 41465) * (seg45AccX21 rho + seg45AccY21 rho) = rho 41466 := by
      rw [seg45LadderFlatX21_eq, seg45LadderFlatY21_eq]
      unfold seg45LadderFlatX21 seg45LadderFlatY21
      linear_combination r3238
    have ha1 : rho 41465 * seg45AccX21 rho = rho 41467 := by
      rw [seg45LadderFlatX21_eq]
      unfold seg45LadderFlatX21
      linear_combination r3239
    have ha2 : rho 41464 * seg45AccY21 rho = rho 41468 := by
      rw [seg45LadderFlatY21_eq]
      unfold seg45LadderFlatY21
      linear_combination r3240
    have ha3 : 3021 * rho 41467 * rho 41468 = rho 41469 := by
      linear_combination r3241
    have ha4 : rho 41470 * (1 + rho 41469) = rho 41467 + rho 41468 := by
      linear_combination r3242
    have ha5 : rho 41471 * (1 - rho 41469) = rho 41466 - rho 41467 - rho 41468 := by
      linear_combination r3243
    have haddx :
        rho 41470 * (1 + 3021 * (rho 41465 * seg45AccX21 rho) * (rho 41464 * seg45AccY21 rho)) =
          rho 41465 * seg45AccX21 rho + rho 41464 * seg45AccY21 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41471 * (1 - 3021 * (rho 41465 * seg45AccX21 rho) * (rho 41464 * seg45AccY21 rho)) =
          (-1) * (rho 41465 * seg45AccX21 rho) - rho 41464 * seg45AccY21 rho +
            (seg45AccY21 rho - seg45AccX21 rho * (-1)) * (rho 41464 + rho 41465) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41471 * (1 - rho 41469) = rho 41466 - rho 41467 - rho 41468 := ha5
        _ = (-1) * rho 41467 - rho 41468 + (seg45AccY21 rho - seg45AccX21 rho * (-1)) * (rho 41464 + rho 41465) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX22 rho = seg45AccX21 rho - Bool.toZMod bit * (seg45AccX21 rho - rho 41470) := by
      have hd : rho 41472 = Bool.toZMod bit * (rho 41470 - seg45AccX21 rho) := by
        rw [← hbit, seg45LadderFlatX21_eq]
        unfold seg45LadderFlatX21
        linear_combination -r3244
      unfold seg45AccX22
      linear_combination hd
    have hsely : seg45AccY22 rho = seg45AccY21 rho - Bool.toZMod bit * (seg45AccY21 rho - rho 41471) := by
      have hd : rho 41473 = Bool.toZMod bit * (rho 41471 - seg45AccY21 rho) := by
        rw [← hbit, seg45LadderFlatY21_eq]
        unfold seg45LadderFlatY21
        linear_combination -r3245
      unfold seg45AccY22
      linear_combination hd
    have hd0 : rho 41464 * rho 41465 = rho 41474 := by linear_combination r3246
    have hd1 : rho 41464 * rho 41464 = rho 41475 := by linear_combination r3247
    have hd2 : rho 41465 * rho 41465 = rho 41476 := by linear_combination r3248
    have hd3 : rho 41477 * (rho 41465 * rho 41465 + rho 41464 * rho 41464 * (-1)) = 2 * (rho 41464 * rho 41465) := by
      rw [hd0, hd1, hd2]
      linear_combination r3249
    have hd4 : rho 41478 * (2 - (rho 41465 * rho 41465 + rho 41464 * rho 41464 * (-1))) = rho 41465 * rho 41465 - rho 41464 * rho 41464 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3250
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX21 rho : Seg45.F), (seg45AccY21 rho : Seg45.F)⟩
      ⟨(rho 41464 : Seg45.F), (rho 41465 : Seg45.F)⟩
      ⟨(rho 41470 : Seg45.F), (rho 41471 : Seg45.F)⟩
      ⟨(seg45AccX22 rho : Seg45.F), (seg45AccY22 rho : Seg45.F)⟩
      ⟨(rho 41477 : Seg45.F), (rho 41478 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung21

theorem seg45_rung22 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40970 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX22 rho : Seg45.F), (seg45AccY22 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41477 : Seg45.F), (rho 41478 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX22 rho : Seg45.F), (seg45AccY22 rho : Seg45.F)⟩
        ⟨(rho 41477 : Seg45.F), (rho 41478 : Seg45.F)⟩
        ⟨(seg45AccX23 rho : Seg45.F), (seg45AccY23 rho : Seg45.F)⟩
        ⟨(rho 41490 : Seg45.F), (rho 41491 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3251, r3252, r3253, r3254, r3255, r3256, r3257, r3258, r3259, r3260, r3261, r3262, r3263, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3251 Seg45.relationLc185 Seg45.relationLc185Part0 Seg45.relationLc185Part1 at r3251
  unfold Seg45.relationRow3252 at r3252
  unfold Seg45.relationRow3253 at r3253
  unfold Seg45.relationRow3254 at r3254
  unfold Seg45.relationRow3255 at r3255
  unfold Seg45.relationRow3256 at r3256
  unfold Seg45.relationRow3257 at r3257
  unfold Seg45.relationRow3258 at r3258
  unfold Seg45.relationRow3259 at r3259
  unfold Seg45.relationRow3260 at r3260
  unfold Seg45.relationRow3261 at r3261
  unfold Seg45.relationRow3262 at r3262
  unfold Seg45.relationRow3263 at r3263
  have hrung22 (bit : Bool) (hbit : rho 40970 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX22 rho : Seg45.F), (seg45AccY22 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41477 : Seg45.F), (rho 41478 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX22 rho : Seg45.F), (seg45AccY22 rho : Seg45.F)⟩
        ⟨(rho 41477 : Seg45.F), (rho 41478 : Seg45.F)⟩
        ⟨(seg45AccX23 rho : Seg45.F), (seg45AccY23 rho : Seg45.F)⟩
        ⟨(rho 41490 : Seg45.F), (rho 41491 : Seg45.F)⟩ := by
    have ha0 : (rho 41477 + rho 41478) * (seg45AccX22 rho + seg45AccY22 rho) = rho 41479 := by
      rw [seg45LadderFlatX22_eq, seg45LadderFlatY22_eq]
      unfold seg45LadderFlatX22 seg45LadderFlatY22
      linear_combination r3251
    have ha1 : rho 41478 * seg45AccX22 rho = rho 41480 := by
      rw [seg45LadderFlatX22_eq]
      unfold seg45LadderFlatX22
      linear_combination r3252
    have ha2 : rho 41477 * seg45AccY22 rho = rho 41481 := by
      rw [seg45LadderFlatY22_eq]
      unfold seg45LadderFlatY22
      linear_combination r3253
    have ha3 : 3021 * rho 41480 * rho 41481 = rho 41482 := by
      linear_combination r3254
    have ha4 : rho 41483 * (1 + rho 41482) = rho 41480 + rho 41481 := by
      linear_combination r3255
    have ha5 : rho 41484 * (1 - rho 41482) = rho 41479 - rho 41480 - rho 41481 := by
      linear_combination r3256
    have haddx :
        rho 41483 * (1 + 3021 * (rho 41478 * seg45AccX22 rho) * (rho 41477 * seg45AccY22 rho)) =
          rho 41478 * seg45AccX22 rho + rho 41477 * seg45AccY22 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41484 * (1 - 3021 * (rho 41478 * seg45AccX22 rho) * (rho 41477 * seg45AccY22 rho)) =
          (-1) * (rho 41478 * seg45AccX22 rho) - rho 41477 * seg45AccY22 rho +
            (seg45AccY22 rho - seg45AccX22 rho * (-1)) * (rho 41477 + rho 41478) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41484 * (1 - rho 41482) = rho 41479 - rho 41480 - rho 41481 := ha5
        _ = (-1) * rho 41480 - rho 41481 + (seg45AccY22 rho - seg45AccX22 rho * (-1)) * (rho 41477 + rho 41478) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX23 rho = seg45AccX22 rho - Bool.toZMod bit * (seg45AccX22 rho - rho 41483) := by
      have hd : rho 41485 = Bool.toZMod bit * (rho 41483 - seg45AccX22 rho) := by
        rw [← hbit, seg45LadderFlatX22_eq]
        unfold seg45LadderFlatX22
        linear_combination -r3257
      unfold seg45AccX23
      linear_combination hd
    have hsely : seg45AccY23 rho = seg45AccY22 rho - Bool.toZMod bit * (seg45AccY22 rho - rho 41484) := by
      have hd : rho 41486 = Bool.toZMod bit * (rho 41484 - seg45AccY22 rho) := by
        rw [← hbit, seg45LadderFlatY22_eq]
        unfold seg45LadderFlatY22
        linear_combination -r3258
      unfold seg45AccY23
      linear_combination hd
    have hd0 : rho 41477 * rho 41478 = rho 41487 := by linear_combination r3259
    have hd1 : rho 41477 * rho 41477 = rho 41488 := by linear_combination r3260
    have hd2 : rho 41478 * rho 41478 = rho 41489 := by linear_combination r3261
    have hd3 : rho 41490 * (rho 41478 * rho 41478 + rho 41477 * rho 41477 * (-1)) = 2 * (rho 41477 * rho 41478) := by
      rw [hd0, hd1, hd2]
      linear_combination r3262
    have hd4 : rho 41491 * (2 - (rho 41478 * rho 41478 + rho 41477 * rho 41477 * (-1))) = rho 41478 * rho 41478 - rho 41477 * rho 41477 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3263
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX22 rho : Seg45.F), (seg45AccY22 rho : Seg45.F)⟩
      ⟨(rho 41477 : Seg45.F), (rho 41478 : Seg45.F)⟩
      ⟨(rho 41483 : Seg45.F), (rho 41484 : Seg45.F)⟩
      ⟨(seg45AccX23 rho : Seg45.F), (seg45AccY23 rho : Seg45.F)⟩
      ⟨(rho 41490 : Seg45.F), (rho 41491 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung22

theorem seg45_rung23 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40971 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX23 rho : Seg45.F), (seg45AccY23 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41490 : Seg45.F), (rho 41491 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX23 rho : Seg45.F), (seg45AccY23 rho : Seg45.F)⟩
        ⟨(rho 41490 : Seg45.F), (rho 41491 : Seg45.F)⟩
        ⟨(seg45AccX24 rho : Seg45.F), (seg45AccY24 rho : Seg45.F)⟩
        ⟨(rho 41503 : Seg45.F), (rho 41504 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3264, r3265, r3266, r3267, r3268, r3269, r3270, r3271, r3272, r3273, r3274, r3275, r3276, _, _, _⟩
  unfold Seg45.relationRow3264 Seg45.relationLc186 Seg45.relationLc186Part0 Seg45.relationLc186Part1 at r3264
  unfold Seg45.relationRow3265 at r3265
  unfold Seg45.relationRow3266 at r3266
  unfold Seg45.relationRow3267 at r3267
  unfold Seg45.relationRow3268 at r3268
  unfold Seg45.relationRow3269 at r3269
  unfold Seg45.relationRow3270 at r3270
  unfold Seg45.relationRow3271 at r3271
  unfold Seg45.relationRow3272 at r3272
  unfold Seg45.relationRow3273 at r3273
  unfold Seg45.relationRow3274 at r3274
  unfold Seg45.relationRow3275 at r3275
  unfold Seg45.relationRow3276 at r3276
  have hrung23 (bit : Bool) (hbit : rho 40971 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX23 rho : Seg45.F), (seg45AccY23 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41490 : Seg45.F), (rho 41491 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX23 rho : Seg45.F), (seg45AccY23 rho : Seg45.F)⟩
        ⟨(rho 41490 : Seg45.F), (rho 41491 : Seg45.F)⟩
        ⟨(seg45AccX24 rho : Seg45.F), (seg45AccY24 rho : Seg45.F)⟩
        ⟨(rho 41503 : Seg45.F), (rho 41504 : Seg45.F)⟩ := by
    have ha0 : (rho 41490 + rho 41491) * (seg45AccX23 rho + seg45AccY23 rho) = rho 41492 := by
      rw [seg45LadderFlatX23_eq, seg45LadderFlatY23_eq]
      unfold seg45LadderFlatX23 seg45LadderFlatY23
      linear_combination r3264
    have ha1 : rho 41491 * seg45AccX23 rho = rho 41493 := by
      rw [seg45LadderFlatX23_eq]
      unfold seg45LadderFlatX23
      linear_combination r3265
    have ha2 : rho 41490 * seg45AccY23 rho = rho 41494 := by
      rw [seg45LadderFlatY23_eq]
      unfold seg45LadderFlatY23
      linear_combination r3266
    have ha3 : 3021 * rho 41493 * rho 41494 = rho 41495 := by
      linear_combination r3267
    have ha4 : rho 41496 * (1 + rho 41495) = rho 41493 + rho 41494 := by
      linear_combination r3268
    have ha5 : rho 41497 * (1 - rho 41495) = rho 41492 - rho 41493 - rho 41494 := by
      linear_combination r3269
    have haddx :
        rho 41496 * (1 + 3021 * (rho 41491 * seg45AccX23 rho) * (rho 41490 * seg45AccY23 rho)) =
          rho 41491 * seg45AccX23 rho + rho 41490 * seg45AccY23 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41497 * (1 - 3021 * (rho 41491 * seg45AccX23 rho) * (rho 41490 * seg45AccY23 rho)) =
          (-1) * (rho 41491 * seg45AccX23 rho) - rho 41490 * seg45AccY23 rho +
            (seg45AccY23 rho - seg45AccX23 rho * (-1)) * (rho 41490 + rho 41491) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41497 * (1 - rho 41495) = rho 41492 - rho 41493 - rho 41494 := ha5
        _ = (-1) * rho 41493 - rho 41494 + (seg45AccY23 rho - seg45AccX23 rho * (-1)) * (rho 41490 + rho 41491) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX24 rho = seg45AccX23 rho - Bool.toZMod bit * (seg45AccX23 rho - rho 41496) := by
      have hd : rho 41498 = Bool.toZMod bit * (rho 41496 - seg45AccX23 rho) := by
        rw [← hbit, seg45LadderFlatX23_eq]
        unfold seg45LadderFlatX23
        linear_combination -r3270
      unfold seg45AccX24
      linear_combination hd
    have hsely : seg45AccY24 rho = seg45AccY23 rho - Bool.toZMod bit * (seg45AccY23 rho - rho 41497) := by
      have hd : rho 41499 = Bool.toZMod bit * (rho 41497 - seg45AccY23 rho) := by
        rw [← hbit, seg45LadderFlatY23_eq]
        unfold seg45LadderFlatY23
        linear_combination -r3271
      unfold seg45AccY24
      linear_combination hd
    have hd0 : rho 41490 * rho 41491 = rho 41500 := by linear_combination r3272
    have hd1 : rho 41490 * rho 41490 = rho 41501 := by linear_combination r3273
    have hd2 : rho 41491 * rho 41491 = rho 41502 := by linear_combination r3274
    have hd3 : rho 41503 * (rho 41491 * rho 41491 + rho 41490 * rho 41490 * (-1)) = 2 * (rho 41490 * rho 41491) := by
      rw [hd0, hd1, hd2]
      linear_combination r3275
    have hd4 : rho 41504 * (2 - (rho 41491 * rho 41491 + rho 41490 * rho 41490 * (-1))) = rho 41491 * rho 41491 - rho 41490 * rho 41490 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3276
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX23 rho : Seg45.F), (seg45AccY23 rho : Seg45.F)⟩
      ⟨(rho 41490 : Seg45.F), (rho 41491 : Seg45.F)⟩
      ⟨(rho 41496 : Seg45.F), (rho 41497 : Seg45.F)⟩
      ⟨(seg45AccX24 rho : Seg45.F), (seg45AccY24 rho : Seg45.F)⟩
      ⟨(rho 41503 : Seg45.F), (rho 41504 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung23

theorem seg45_rung24 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40972 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX24 rho : Seg45.F), (seg45AccY24 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41503 : Seg45.F), (rho 41504 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX24 rho : Seg45.F), (seg45AccY24 rho : Seg45.F)⟩
        ⟨(rho 41503 : Seg45.F), (rho 41504 : Seg45.F)⟩
        ⟨(seg45AccX25 rho : Seg45.F), (seg45AccY25 rho : Seg45.F)⟩
        ⟨(rho 41516 : Seg45.F), (rho 41517 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3277, r3278, r3279⟩
  unfold Seg45.relationPart41 at p41
  rcases p41 with ⟨r3280, r3281, r3282, r3283, r3284, r3285, r3286, r3287, r3288, r3289, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3277 Seg45.relationLc187 Seg45.relationLc187Part0 Seg45.relationLc187Part1 at r3277
  unfold Seg45.relationRow3278 at r3278
  unfold Seg45.relationRow3279 at r3279
  unfold Seg45.relationRow3280 at r3280
  unfold Seg45.relationRow3281 at r3281
  unfold Seg45.relationRow3282 at r3282
  unfold Seg45.relationRow3283 at r3283
  unfold Seg45.relationRow3284 at r3284
  unfold Seg45.relationRow3285 at r3285
  unfold Seg45.relationRow3286 at r3286
  unfold Seg45.relationRow3287 at r3287
  unfold Seg45.relationRow3288 at r3288
  unfold Seg45.relationRow3289 at r3289
  have hrung24 (bit : Bool) (hbit : rho 40972 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX24 rho : Seg45.F), (seg45AccY24 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41503 : Seg45.F), (rho 41504 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX24 rho : Seg45.F), (seg45AccY24 rho : Seg45.F)⟩
        ⟨(rho 41503 : Seg45.F), (rho 41504 : Seg45.F)⟩
        ⟨(seg45AccX25 rho : Seg45.F), (seg45AccY25 rho : Seg45.F)⟩
        ⟨(rho 41516 : Seg45.F), (rho 41517 : Seg45.F)⟩ := by
    have ha0 : (rho 41503 + rho 41504) * (seg45AccX24 rho + seg45AccY24 rho) = rho 41505 := by
      rw [seg45LadderFlatX24_eq, seg45LadderFlatY24_eq]
      unfold seg45LadderFlatX24 seg45LadderFlatY24
      linear_combination r3277
    have ha1 : rho 41504 * seg45AccX24 rho = rho 41506 := by
      rw [seg45LadderFlatX24_eq]
      unfold seg45LadderFlatX24
      linear_combination r3278
    have ha2 : rho 41503 * seg45AccY24 rho = rho 41507 := by
      rw [seg45LadderFlatY24_eq]
      unfold seg45LadderFlatY24
      linear_combination r3279
    have ha3 : 3021 * rho 41506 * rho 41507 = rho 41508 := by
      linear_combination r3280
    have ha4 : rho 41509 * (1 + rho 41508) = rho 41506 + rho 41507 := by
      linear_combination r3281
    have ha5 : rho 41510 * (1 - rho 41508) = rho 41505 - rho 41506 - rho 41507 := by
      linear_combination r3282
    have haddx :
        rho 41509 * (1 + 3021 * (rho 41504 * seg45AccX24 rho) * (rho 41503 * seg45AccY24 rho)) =
          rho 41504 * seg45AccX24 rho + rho 41503 * seg45AccY24 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41510 * (1 - 3021 * (rho 41504 * seg45AccX24 rho) * (rho 41503 * seg45AccY24 rho)) =
          (-1) * (rho 41504 * seg45AccX24 rho) - rho 41503 * seg45AccY24 rho +
            (seg45AccY24 rho - seg45AccX24 rho * (-1)) * (rho 41503 + rho 41504) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41510 * (1 - rho 41508) = rho 41505 - rho 41506 - rho 41507 := ha5
        _ = (-1) * rho 41506 - rho 41507 + (seg45AccY24 rho - seg45AccX24 rho * (-1)) * (rho 41503 + rho 41504) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX25 rho = seg45AccX24 rho - Bool.toZMod bit * (seg45AccX24 rho - rho 41509) := by
      have hd : rho 41511 = Bool.toZMod bit * (rho 41509 - seg45AccX24 rho) := by
        rw [← hbit, seg45LadderFlatX24_eq]
        unfold seg45LadderFlatX24
        linear_combination -r3283
      unfold seg45AccX25
      linear_combination hd
    have hsely : seg45AccY25 rho = seg45AccY24 rho - Bool.toZMod bit * (seg45AccY24 rho - rho 41510) := by
      have hd : rho 41512 = Bool.toZMod bit * (rho 41510 - seg45AccY24 rho) := by
        rw [← hbit, seg45LadderFlatY24_eq]
        unfold seg45LadderFlatY24
        linear_combination -r3284
      unfold seg45AccY25
      linear_combination hd
    have hd0 : rho 41503 * rho 41504 = rho 41513 := by linear_combination r3285
    have hd1 : rho 41503 * rho 41503 = rho 41514 := by linear_combination r3286
    have hd2 : rho 41504 * rho 41504 = rho 41515 := by linear_combination r3287
    have hd3 : rho 41516 * (rho 41504 * rho 41504 + rho 41503 * rho 41503 * (-1)) = 2 * (rho 41503 * rho 41504) := by
      rw [hd0, hd1, hd2]
      linear_combination r3288
    have hd4 : rho 41517 * (2 - (rho 41504 * rho 41504 + rho 41503 * rho 41503 * (-1))) = rho 41504 * rho 41504 - rho 41503 * rho 41503 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3289
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX24 rho : Seg45.F), (seg45AccY24 rho : Seg45.F)⟩
      ⟨(rho 41503 : Seg45.F), (rho 41504 : Seg45.F)⟩
      ⟨(rho 41509 : Seg45.F), (rho 41510 : Seg45.F)⟩
      ⟨(seg45AccX25 rho : Seg45.F), (seg45AccY25 rho : Seg45.F)⟩
      ⟨(rho 41516 : Seg45.F), (rho 41517 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung24

theorem seg45_rung25 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40973 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX25 rho : Seg45.F), (seg45AccY25 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41516 : Seg45.F), (rho 41517 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX25 rho : Seg45.F), (seg45AccY25 rho : Seg45.F)⟩
        ⟨(rho 41516 : Seg45.F), (rho 41517 : Seg45.F)⟩
        ⟨(seg45AccX26 rho : Seg45.F), (seg45AccY26 rho : Seg45.F)⟩
        ⟨(rho 41529 : Seg45.F), (rho 41530 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, r3290, r3291, r3292, r3293, r3294, r3295, r3296, r3297, r3298, r3299, r3300, r3301, r3302, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3290 Seg45.relationLc188 Seg45.relationLc188Part0 Seg45.relationLc188Part1 at r3290
  unfold Seg45.relationRow3291 at r3291
  unfold Seg45.relationRow3292 at r3292
  unfold Seg45.relationRow3293 at r3293
  unfold Seg45.relationRow3294 at r3294
  unfold Seg45.relationRow3295 at r3295
  unfold Seg45.relationRow3296 at r3296
  unfold Seg45.relationRow3297 at r3297
  unfold Seg45.relationRow3298 at r3298
  unfold Seg45.relationRow3299 at r3299
  unfold Seg45.relationRow3300 at r3300
  unfold Seg45.relationRow3301 at r3301
  unfold Seg45.relationRow3302 at r3302
  have hrung25 (bit : Bool) (hbit : rho 40973 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX25 rho : Seg45.F), (seg45AccY25 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41516 : Seg45.F), (rho 41517 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX25 rho : Seg45.F), (seg45AccY25 rho : Seg45.F)⟩
        ⟨(rho 41516 : Seg45.F), (rho 41517 : Seg45.F)⟩
        ⟨(seg45AccX26 rho : Seg45.F), (seg45AccY26 rho : Seg45.F)⟩
        ⟨(rho 41529 : Seg45.F), (rho 41530 : Seg45.F)⟩ := by
    have ha0 : (rho 41516 + rho 41517) * (seg45AccX25 rho + seg45AccY25 rho) = rho 41518 := by
      rw [seg45LadderFlatX25_eq, seg45LadderFlatY25_eq]
      unfold seg45LadderFlatX25 seg45LadderFlatY25
      linear_combination r3290
    have ha1 : rho 41517 * seg45AccX25 rho = rho 41519 := by
      rw [seg45LadderFlatX25_eq]
      unfold seg45LadderFlatX25
      linear_combination r3291
    have ha2 : rho 41516 * seg45AccY25 rho = rho 41520 := by
      rw [seg45LadderFlatY25_eq]
      unfold seg45LadderFlatY25
      linear_combination r3292
    have ha3 : 3021 * rho 41519 * rho 41520 = rho 41521 := by
      linear_combination r3293
    have ha4 : rho 41522 * (1 + rho 41521) = rho 41519 + rho 41520 := by
      linear_combination r3294
    have ha5 : rho 41523 * (1 - rho 41521) = rho 41518 - rho 41519 - rho 41520 := by
      linear_combination r3295
    have haddx :
        rho 41522 * (1 + 3021 * (rho 41517 * seg45AccX25 rho) * (rho 41516 * seg45AccY25 rho)) =
          rho 41517 * seg45AccX25 rho + rho 41516 * seg45AccY25 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41523 * (1 - 3021 * (rho 41517 * seg45AccX25 rho) * (rho 41516 * seg45AccY25 rho)) =
          (-1) * (rho 41517 * seg45AccX25 rho) - rho 41516 * seg45AccY25 rho +
            (seg45AccY25 rho - seg45AccX25 rho * (-1)) * (rho 41516 + rho 41517) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41523 * (1 - rho 41521) = rho 41518 - rho 41519 - rho 41520 := ha5
        _ = (-1) * rho 41519 - rho 41520 + (seg45AccY25 rho - seg45AccX25 rho * (-1)) * (rho 41516 + rho 41517) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX26 rho = seg45AccX25 rho - Bool.toZMod bit * (seg45AccX25 rho - rho 41522) := by
      have hd : rho 41524 = Bool.toZMod bit * (rho 41522 - seg45AccX25 rho) := by
        rw [← hbit, seg45LadderFlatX25_eq]
        unfold seg45LadderFlatX25
        linear_combination -r3296
      unfold seg45AccX26
      linear_combination hd
    have hsely : seg45AccY26 rho = seg45AccY25 rho - Bool.toZMod bit * (seg45AccY25 rho - rho 41523) := by
      have hd : rho 41525 = Bool.toZMod bit * (rho 41523 - seg45AccY25 rho) := by
        rw [← hbit, seg45LadderFlatY25_eq]
        unfold seg45LadderFlatY25
        linear_combination -r3297
      unfold seg45AccY26
      linear_combination hd
    have hd0 : rho 41516 * rho 41517 = rho 41526 := by linear_combination r3298
    have hd1 : rho 41516 * rho 41516 = rho 41527 := by linear_combination r3299
    have hd2 : rho 41517 * rho 41517 = rho 41528 := by linear_combination r3300
    have hd3 : rho 41529 * (rho 41517 * rho 41517 + rho 41516 * rho 41516 * (-1)) = 2 * (rho 41516 * rho 41517) := by
      rw [hd0, hd1, hd2]
      linear_combination r3301
    have hd4 : rho 41530 * (2 - (rho 41517 * rho 41517 + rho 41516 * rho 41516 * (-1))) = rho 41517 * rho 41517 - rho 41516 * rho 41516 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3302
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX25 rho : Seg45.F), (seg45AccY25 rho : Seg45.F)⟩
      ⟨(rho 41516 : Seg45.F), (rho 41517 : Seg45.F)⟩
      ⟨(rho 41522 : Seg45.F), (rho 41523 : Seg45.F)⟩
      ⟨(seg45AccX26 rho : Seg45.F), (seg45AccY26 rho : Seg45.F)⟩
      ⟨(rho 41529 : Seg45.F), (rho 41530 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung25

theorem seg45_rung26 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40974 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX26 rho : Seg45.F), (seg45AccY26 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41529 : Seg45.F), (rho 41530 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX26 rho : Seg45.F), (seg45AccY26 rho : Seg45.F)⟩
        ⟨(rho 41529 : Seg45.F), (rho 41530 : Seg45.F)⟩
        ⟨(seg45AccX27 rho : Seg45.F), (seg45AccY27 rho : Seg45.F)⟩
        ⟨(rho 41542 : Seg45.F), (rho 41543 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3303, r3304, r3305, r3306, r3307, r3308, r3309, r3310, r3311, r3312, r3313, r3314, r3315, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3303 Seg45.relationLc189 Seg45.relationLc189Part0 Seg45.relationLc189Part1 at r3303
  unfold Seg45.relationRow3304 at r3304
  unfold Seg45.relationRow3305 at r3305
  unfold Seg45.relationRow3306 at r3306
  unfold Seg45.relationRow3307 at r3307
  unfold Seg45.relationRow3308 at r3308
  unfold Seg45.relationRow3309 at r3309
  unfold Seg45.relationRow3310 at r3310
  unfold Seg45.relationRow3311 at r3311
  unfold Seg45.relationRow3312 at r3312
  unfold Seg45.relationRow3313 at r3313
  unfold Seg45.relationRow3314 at r3314
  unfold Seg45.relationRow3315 at r3315
  have hrung26 (bit : Bool) (hbit : rho 40974 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX26 rho : Seg45.F), (seg45AccY26 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41529 : Seg45.F), (rho 41530 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX26 rho : Seg45.F), (seg45AccY26 rho : Seg45.F)⟩
        ⟨(rho 41529 : Seg45.F), (rho 41530 : Seg45.F)⟩
        ⟨(seg45AccX27 rho : Seg45.F), (seg45AccY27 rho : Seg45.F)⟩
        ⟨(rho 41542 : Seg45.F), (rho 41543 : Seg45.F)⟩ := by
    have ha0 : (rho 41529 + rho 41530) * (seg45AccX26 rho + seg45AccY26 rho) = rho 41531 := by
      rw [seg45LadderFlatX26_eq, seg45LadderFlatY26_eq]
      unfold seg45LadderFlatX26 seg45LadderFlatY26
      linear_combination r3303
    have ha1 : rho 41530 * seg45AccX26 rho = rho 41532 := by
      rw [seg45LadderFlatX26_eq]
      unfold seg45LadderFlatX26
      linear_combination r3304
    have ha2 : rho 41529 * seg45AccY26 rho = rho 41533 := by
      rw [seg45LadderFlatY26_eq]
      unfold seg45LadderFlatY26
      linear_combination r3305
    have ha3 : 3021 * rho 41532 * rho 41533 = rho 41534 := by
      linear_combination r3306
    have ha4 : rho 41535 * (1 + rho 41534) = rho 41532 + rho 41533 := by
      linear_combination r3307
    have ha5 : rho 41536 * (1 - rho 41534) = rho 41531 - rho 41532 - rho 41533 := by
      linear_combination r3308
    have haddx :
        rho 41535 * (1 + 3021 * (rho 41530 * seg45AccX26 rho) * (rho 41529 * seg45AccY26 rho)) =
          rho 41530 * seg45AccX26 rho + rho 41529 * seg45AccY26 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41536 * (1 - 3021 * (rho 41530 * seg45AccX26 rho) * (rho 41529 * seg45AccY26 rho)) =
          (-1) * (rho 41530 * seg45AccX26 rho) - rho 41529 * seg45AccY26 rho +
            (seg45AccY26 rho - seg45AccX26 rho * (-1)) * (rho 41529 + rho 41530) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41536 * (1 - rho 41534) = rho 41531 - rho 41532 - rho 41533 := ha5
        _ = (-1) * rho 41532 - rho 41533 + (seg45AccY26 rho - seg45AccX26 rho * (-1)) * (rho 41529 + rho 41530) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX27 rho = seg45AccX26 rho - Bool.toZMod bit * (seg45AccX26 rho - rho 41535) := by
      have hd : rho 41537 = Bool.toZMod bit * (rho 41535 - seg45AccX26 rho) := by
        rw [← hbit, seg45LadderFlatX26_eq]
        unfold seg45LadderFlatX26
        linear_combination -r3309
      unfold seg45AccX27
      linear_combination hd
    have hsely : seg45AccY27 rho = seg45AccY26 rho - Bool.toZMod bit * (seg45AccY26 rho - rho 41536) := by
      have hd : rho 41538 = Bool.toZMod bit * (rho 41536 - seg45AccY26 rho) := by
        rw [← hbit, seg45LadderFlatY26_eq]
        unfold seg45LadderFlatY26
        linear_combination -r3310
      unfold seg45AccY27
      linear_combination hd
    have hd0 : rho 41529 * rho 41530 = rho 41539 := by linear_combination r3311
    have hd1 : rho 41529 * rho 41529 = rho 41540 := by linear_combination r3312
    have hd2 : rho 41530 * rho 41530 = rho 41541 := by linear_combination r3313
    have hd3 : rho 41542 * (rho 41530 * rho 41530 + rho 41529 * rho 41529 * (-1)) = 2 * (rho 41529 * rho 41530) := by
      rw [hd0, hd1, hd2]
      linear_combination r3314
    have hd4 : rho 41543 * (2 - (rho 41530 * rho 41530 + rho 41529 * rho 41529 * (-1))) = rho 41530 * rho 41530 - rho 41529 * rho 41529 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3315
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX26 rho : Seg45.F), (seg45AccY26 rho : Seg45.F)⟩
      ⟨(rho 41529 : Seg45.F), (rho 41530 : Seg45.F)⟩
      ⟨(rho 41535 : Seg45.F), (rho 41536 : Seg45.F)⟩
      ⟨(seg45AccX27 rho : Seg45.F), (seg45AccY27 rho : Seg45.F)⟩
      ⟨(rho 41542 : Seg45.F), (rho 41543 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung26

theorem seg45_rung27 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40975 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX27 rho : Seg45.F), (seg45AccY27 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41542 : Seg45.F), (rho 41543 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX27 rho : Seg45.F), (seg45AccY27 rho : Seg45.F)⟩
        ⟨(rho 41542 : Seg45.F), (rho 41543 : Seg45.F)⟩
        ⟨(seg45AccX28 rho : Seg45.F), (seg45AccY28 rho : Seg45.F)⟩
        ⟨(rho 41555 : Seg45.F), (rho 41556 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3316, r3317, r3318, r3319, r3320, r3321, r3322, r3323, r3324, r3325, r3326, r3327, r3328, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3316 Seg45.relationLc190 Seg45.relationLc190Part0 Seg45.relationLc190Part1 at r3316
  unfold Seg45.relationRow3317 at r3317
  unfold Seg45.relationRow3318 at r3318
  unfold Seg45.relationRow3319 at r3319
  unfold Seg45.relationRow3320 at r3320
  unfold Seg45.relationRow3321 at r3321
  unfold Seg45.relationRow3322 at r3322
  unfold Seg45.relationRow3323 at r3323
  unfold Seg45.relationRow3324 at r3324
  unfold Seg45.relationRow3325 at r3325
  unfold Seg45.relationRow3326 at r3326
  unfold Seg45.relationRow3327 at r3327
  unfold Seg45.relationRow3328 at r3328
  have hrung27 (bit : Bool) (hbit : rho 40975 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX27 rho : Seg45.F), (seg45AccY27 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41542 : Seg45.F), (rho 41543 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX27 rho : Seg45.F), (seg45AccY27 rho : Seg45.F)⟩
        ⟨(rho 41542 : Seg45.F), (rho 41543 : Seg45.F)⟩
        ⟨(seg45AccX28 rho : Seg45.F), (seg45AccY28 rho : Seg45.F)⟩
        ⟨(rho 41555 : Seg45.F), (rho 41556 : Seg45.F)⟩ := by
    have ha0 : (rho 41542 + rho 41543) * (seg45AccX27 rho + seg45AccY27 rho) = rho 41544 := by
      rw [seg45LadderFlatX27_eq, seg45LadderFlatY27_eq]
      unfold seg45LadderFlatX27 seg45LadderFlatY27
      linear_combination r3316
    have ha1 : rho 41543 * seg45AccX27 rho = rho 41545 := by
      rw [seg45LadderFlatX27_eq]
      unfold seg45LadderFlatX27
      linear_combination r3317
    have ha2 : rho 41542 * seg45AccY27 rho = rho 41546 := by
      rw [seg45LadderFlatY27_eq]
      unfold seg45LadderFlatY27
      linear_combination r3318
    have ha3 : 3021 * rho 41545 * rho 41546 = rho 41547 := by
      linear_combination r3319
    have ha4 : rho 41548 * (1 + rho 41547) = rho 41545 + rho 41546 := by
      linear_combination r3320
    have ha5 : rho 41549 * (1 - rho 41547) = rho 41544 - rho 41545 - rho 41546 := by
      linear_combination r3321
    have haddx :
        rho 41548 * (1 + 3021 * (rho 41543 * seg45AccX27 rho) * (rho 41542 * seg45AccY27 rho)) =
          rho 41543 * seg45AccX27 rho + rho 41542 * seg45AccY27 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41549 * (1 - 3021 * (rho 41543 * seg45AccX27 rho) * (rho 41542 * seg45AccY27 rho)) =
          (-1) * (rho 41543 * seg45AccX27 rho) - rho 41542 * seg45AccY27 rho +
            (seg45AccY27 rho - seg45AccX27 rho * (-1)) * (rho 41542 + rho 41543) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41549 * (1 - rho 41547) = rho 41544 - rho 41545 - rho 41546 := ha5
        _ = (-1) * rho 41545 - rho 41546 + (seg45AccY27 rho - seg45AccX27 rho * (-1)) * (rho 41542 + rho 41543) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX28 rho = seg45AccX27 rho - Bool.toZMod bit * (seg45AccX27 rho - rho 41548) := by
      have hd : rho 41550 = Bool.toZMod bit * (rho 41548 - seg45AccX27 rho) := by
        rw [← hbit, seg45LadderFlatX27_eq]
        unfold seg45LadderFlatX27
        linear_combination -r3322
      unfold seg45AccX28
      linear_combination hd
    have hsely : seg45AccY28 rho = seg45AccY27 rho - Bool.toZMod bit * (seg45AccY27 rho - rho 41549) := by
      have hd : rho 41551 = Bool.toZMod bit * (rho 41549 - seg45AccY27 rho) := by
        rw [← hbit, seg45LadderFlatY27_eq]
        unfold seg45LadderFlatY27
        linear_combination -r3323
      unfold seg45AccY28
      linear_combination hd
    have hd0 : rho 41542 * rho 41543 = rho 41552 := by linear_combination r3324
    have hd1 : rho 41542 * rho 41542 = rho 41553 := by linear_combination r3325
    have hd2 : rho 41543 * rho 41543 = rho 41554 := by linear_combination r3326
    have hd3 : rho 41555 * (rho 41543 * rho 41543 + rho 41542 * rho 41542 * (-1)) = 2 * (rho 41542 * rho 41543) := by
      rw [hd0, hd1, hd2]
      linear_combination r3327
    have hd4 : rho 41556 * (2 - (rho 41543 * rho 41543 + rho 41542 * rho 41542 * (-1))) = rho 41543 * rho 41543 - rho 41542 * rho 41542 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3328
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX27 rho : Seg45.F), (seg45AccY27 rho : Seg45.F)⟩
      ⟨(rho 41542 : Seg45.F), (rho 41543 : Seg45.F)⟩
      ⟨(rho 41548 : Seg45.F), (rho 41549 : Seg45.F)⟩
      ⟨(seg45AccX28 rho : Seg45.F), (seg45AccY28 rho : Seg45.F)⟩
      ⟨(rho 41555 : Seg45.F), (rho 41556 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung27

theorem seg45_rung28 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40976 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX28 rho : Seg45.F), (seg45AccY28 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41555 : Seg45.F), (rho 41556 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX28 rho : Seg45.F), (seg45AccY28 rho : Seg45.F)⟩
        ⟨(rho 41555 : Seg45.F), (rho 41556 : Seg45.F)⟩
        ⟨(seg45AccX29 rho : Seg45.F), (seg45AccY29 rho : Seg45.F)⟩
        ⟨(rho 41568 : Seg45.F), (rho 41569 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3329, r3330, r3331, r3332, r3333, r3334, r3335, r3336, r3337, r3338, r3339, r3340, r3341, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3329 Seg45.relationLc191 Seg45.relationLc191Part0 Seg45.relationLc191Part1 at r3329
  unfold Seg45.relationRow3330 at r3330
  unfold Seg45.relationRow3331 at r3331
  unfold Seg45.relationRow3332 at r3332
  unfold Seg45.relationRow3333 at r3333
  unfold Seg45.relationRow3334 at r3334
  unfold Seg45.relationRow3335 at r3335
  unfold Seg45.relationRow3336 at r3336
  unfold Seg45.relationRow3337 at r3337
  unfold Seg45.relationRow3338 at r3338
  unfold Seg45.relationRow3339 at r3339
  unfold Seg45.relationRow3340 at r3340
  unfold Seg45.relationRow3341 at r3341
  have hrung28 (bit : Bool) (hbit : rho 40976 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX28 rho : Seg45.F), (seg45AccY28 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41555 : Seg45.F), (rho 41556 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX28 rho : Seg45.F), (seg45AccY28 rho : Seg45.F)⟩
        ⟨(rho 41555 : Seg45.F), (rho 41556 : Seg45.F)⟩
        ⟨(seg45AccX29 rho : Seg45.F), (seg45AccY29 rho : Seg45.F)⟩
        ⟨(rho 41568 : Seg45.F), (rho 41569 : Seg45.F)⟩ := by
    have ha0 : (rho 41555 + rho 41556) * (seg45AccX28 rho + seg45AccY28 rho) = rho 41557 := by
      rw [seg45LadderFlatX28_eq, seg45LadderFlatY28_eq]
      unfold seg45LadderFlatX28 seg45LadderFlatY28
      linear_combination r3329
    have ha1 : rho 41556 * seg45AccX28 rho = rho 41558 := by
      rw [seg45LadderFlatX28_eq]
      unfold seg45LadderFlatX28
      linear_combination r3330
    have ha2 : rho 41555 * seg45AccY28 rho = rho 41559 := by
      rw [seg45LadderFlatY28_eq]
      unfold seg45LadderFlatY28
      linear_combination r3331
    have ha3 : 3021 * rho 41558 * rho 41559 = rho 41560 := by
      linear_combination r3332
    have ha4 : rho 41561 * (1 + rho 41560) = rho 41558 + rho 41559 := by
      linear_combination r3333
    have ha5 : rho 41562 * (1 - rho 41560) = rho 41557 - rho 41558 - rho 41559 := by
      linear_combination r3334
    have haddx :
        rho 41561 * (1 + 3021 * (rho 41556 * seg45AccX28 rho) * (rho 41555 * seg45AccY28 rho)) =
          rho 41556 * seg45AccX28 rho + rho 41555 * seg45AccY28 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41562 * (1 - 3021 * (rho 41556 * seg45AccX28 rho) * (rho 41555 * seg45AccY28 rho)) =
          (-1) * (rho 41556 * seg45AccX28 rho) - rho 41555 * seg45AccY28 rho +
            (seg45AccY28 rho - seg45AccX28 rho * (-1)) * (rho 41555 + rho 41556) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41562 * (1 - rho 41560) = rho 41557 - rho 41558 - rho 41559 := ha5
        _ = (-1) * rho 41558 - rho 41559 + (seg45AccY28 rho - seg45AccX28 rho * (-1)) * (rho 41555 + rho 41556) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX29 rho = seg45AccX28 rho - Bool.toZMod bit * (seg45AccX28 rho - rho 41561) := by
      have hd : rho 41563 = Bool.toZMod bit * (rho 41561 - seg45AccX28 rho) := by
        rw [← hbit, seg45LadderFlatX28_eq]
        unfold seg45LadderFlatX28
        linear_combination -r3335
      unfold seg45AccX29
      linear_combination hd
    have hsely : seg45AccY29 rho = seg45AccY28 rho - Bool.toZMod bit * (seg45AccY28 rho - rho 41562) := by
      have hd : rho 41564 = Bool.toZMod bit * (rho 41562 - seg45AccY28 rho) := by
        rw [← hbit, seg45LadderFlatY28_eq]
        unfold seg45LadderFlatY28
        linear_combination -r3336
      unfold seg45AccY29
      linear_combination hd
    have hd0 : rho 41555 * rho 41556 = rho 41565 := by linear_combination r3337
    have hd1 : rho 41555 * rho 41555 = rho 41566 := by linear_combination r3338
    have hd2 : rho 41556 * rho 41556 = rho 41567 := by linear_combination r3339
    have hd3 : rho 41568 * (rho 41556 * rho 41556 + rho 41555 * rho 41555 * (-1)) = 2 * (rho 41555 * rho 41556) := by
      rw [hd0, hd1, hd2]
      linear_combination r3340
    have hd4 : rho 41569 * (2 - (rho 41556 * rho 41556 + rho 41555 * rho 41555 * (-1))) = rho 41556 * rho 41556 - rho 41555 * rho 41555 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3341
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX28 rho : Seg45.F), (seg45AccY28 rho : Seg45.F)⟩
      ⟨(rho 41555 : Seg45.F), (rho 41556 : Seg45.F)⟩
      ⟨(rho 41561 : Seg45.F), (rho 41562 : Seg45.F)⟩
      ⟨(seg45AccX29 rho : Seg45.F), (seg45AccY29 rho : Seg45.F)⟩
      ⟨(rho 41568 : Seg45.F), (rho 41569 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung28

theorem seg45_rung29 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40977 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX29 rho : Seg45.F), (seg45AccY29 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41568 : Seg45.F), (rho 41569 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX29 rho : Seg45.F), (seg45AccY29 rho : Seg45.F)⟩
        ⟨(rho 41568 : Seg45.F), (rho 41569 : Seg45.F)⟩
        ⟨(seg45AccX30 rho : Seg45.F), (seg45AccY30 rho : Seg45.F)⟩
        ⟨(rho 41581 : Seg45.F), (rho 41582 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3342, r3343, r3344, r3345, r3346, r3347, r3348, r3349, r3350, r3351, r3352, r3353, r3354, _, _, _, _, _⟩
  unfold Seg45.relationRow3342 Seg45.relationLc192 Seg45.relationLc192Part0 Seg45.relationLc192Part1 at r3342
  unfold Seg45.relationRow3343 at r3343
  unfold Seg45.relationRow3344 at r3344
  unfold Seg45.relationRow3345 at r3345
  unfold Seg45.relationRow3346 at r3346
  unfold Seg45.relationRow3347 at r3347
  unfold Seg45.relationRow3348 at r3348
  unfold Seg45.relationRow3349 at r3349
  unfold Seg45.relationRow3350 at r3350
  unfold Seg45.relationRow3351 at r3351
  unfold Seg45.relationRow3352 at r3352
  unfold Seg45.relationRow3353 at r3353
  unfold Seg45.relationRow3354 at r3354
  have hrung29 (bit : Bool) (hbit : rho 40977 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX29 rho : Seg45.F), (seg45AccY29 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41568 : Seg45.F), (rho 41569 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX29 rho : Seg45.F), (seg45AccY29 rho : Seg45.F)⟩
        ⟨(rho 41568 : Seg45.F), (rho 41569 : Seg45.F)⟩
        ⟨(seg45AccX30 rho : Seg45.F), (seg45AccY30 rho : Seg45.F)⟩
        ⟨(rho 41581 : Seg45.F), (rho 41582 : Seg45.F)⟩ := by
    have ha0 : (rho 41568 + rho 41569) * (seg45AccX29 rho + seg45AccY29 rho) = rho 41570 := by
      rw [seg45LadderFlatX29_eq, seg45LadderFlatY29_eq]
      unfold seg45LadderFlatX29 seg45LadderFlatY29
      linear_combination r3342
    have ha1 : rho 41569 * seg45AccX29 rho = rho 41571 := by
      rw [seg45LadderFlatX29_eq]
      unfold seg45LadderFlatX29
      linear_combination r3343
    have ha2 : rho 41568 * seg45AccY29 rho = rho 41572 := by
      rw [seg45LadderFlatY29_eq]
      unfold seg45LadderFlatY29
      linear_combination r3344
    have ha3 : 3021 * rho 41571 * rho 41572 = rho 41573 := by
      linear_combination r3345
    have ha4 : rho 41574 * (1 + rho 41573) = rho 41571 + rho 41572 := by
      linear_combination r3346
    have ha5 : rho 41575 * (1 - rho 41573) = rho 41570 - rho 41571 - rho 41572 := by
      linear_combination r3347
    have haddx :
        rho 41574 * (1 + 3021 * (rho 41569 * seg45AccX29 rho) * (rho 41568 * seg45AccY29 rho)) =
          rho 41569 * seg45AccX29 rho + rho 41568 * seg45AccY29 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41575 * (1 - 3021 * (rho 41569 * seg45AccX29 rho) * (rho 41568 * seg45AccY29 rho)) =
          (-1) * (rho 41569 * seg45AccX29 rho) - rho 41568 * seg45AccY29 rho +
            (seg45AccY29 rho - seg45AccX29 rho * (-1)) * (rho 41568 + rho 41569) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41575 * (1 - rho 41573) = rho 41570 - rho 41571 - rho 41572 := ha5
        _ = (-1) * rho 41571 - rho 41572 + (seg45AccY29 rho - seg45AccX29 rho * (-1)) * (rho 41568 + rho 41569) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX30 rho = seg45AccX29 rho - Bool.toZMod bit * (seg45AccX29 rho - rho 41574) := by
      have hd : rho 41576 = Bool.toZMod bit * (rho 41574 - seg45AccX29 rho) := by
        rw [← hbit, seg45LadderFlatX29_eq]
        unfold seg45LadderFlatX29
        linear_combination -r3348
      unfold seg45AccX30
      linear_combination hd
    have hsely : seg45AccY30 rho = seg45AccY29 rho - Bool.toZMod bit * (seg45AccY29 rho - rho 41575) := by
      have hd : rho 41577 = Bool.toZMod bit * (rho 41575 - seg45AccY29 rho) := by
        rw [← hbit, seg45LadderFlatY29_eq]
        unfold seg45LadderFlatY29
        linear_combination -r3349
      unfold seg45AccY30
      linear_combination hd
    have hd0 : rho 41568 * rho 41569 = rho 41578 := by linear_combination r3350
    have hd1 : rho 41568 * rho 41568 = rho 41579 := by linear_combination r3351
    have hd2 : rho 41569 * rho 41569 = rho 41580 := by linear_combination r3352
    have hd3 : rho 41581 * (rho 41569 * rho 41569 + rho 41568 * rho 41568 * (-1)) = 2 * (rho 41568 * rho 41569) := by
      rw [hd0, hd1, hd2]
      linear_combination r3353
    have hd4 : rho 41582 * (2 - (rho 41569 * rho 41569 + rho 41568 * rho 41568 * (-1))) = rho 41569 * rho 41569 - rho 41568 * rho 41568 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3354
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX29 rho : Seg45.F), (seg45AccY29 rho : Seg45.F)⟩
      ⟨(rho 41568 : Seg45.F), (rho 41569 : Seg45.F)⟩
      ⟨(rho 41574 : Seg45.F), (rho 41575 : Seg45.F)⟩
      ⟨(seg45AccX30 rho : Seg45.F), (seg45AccY30 rho : Seg45.F)⟩
      ⟨(rho 41581 : Seg45.F), (rho 41582 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung29

theorem seg45_rung30 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40978 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX30 rho : Seg45.F), (seg45AccY30 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41581 : Seg45.F), (rho 41582 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX30 rho : Seg45.F), (seg45AccY30 rho : Seg45.F)⟩
        ⟨(rho 41581 : Seg45.F), (rho 41582 : Seg45.F)⟩
        ⟨(seg45AccX31 rho : Seg45.F), (seg45AccY31 rho : Seg45.F)⟩
        ⟨(rho 41594 : Seg45.F), (rho 41595 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3355, r3356, r3357, r3358, r3359⟩
  unfold Seg45.relationPart42 at p42
  rcases p42 with ⟨r3360, r3361, r3362, r3363, r3364, r3365, r3366, r3367, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3355 Seg45.relationLc193 Seg45.relationLc193Part0 Seg45.relationLc193Part1 at r3355
  unfold Seg45.relationRow3356 at r3356
  unfold Seg45.relationRow3357 at r3357
  unfold Seg45.relationRow3358 at r3358
  unfold Seg45.relationRow3359 at r3359
  unfold Seg45.relationRow3360 at r3360
  unfold Seg45.relationRow3361 at r3361
  unfold Seg45.relationRow3362 at r3362
  unfold Seg45.relationRow3363 at r3363
  unfold Seg45.relationRow3364 at r3364
  unfold Seg45.relationRow3365 at r3365
  unfold Seg45.relationRow3366 at r3366
  unfold Seg45.relationRow3367 at r3367
  have hrung30 (bit : Bool) (hbit : rho 40978 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX30 rho : Seg45.F), (seg45AccY30 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41581 : Seg45.F), (rho 41582 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX30 rho : Seg45.F), (seg45AccY30 rho : Seg45.F)⟩
        ⟨(rho 41581 : Seg45.F), (rho 41582 : Seg45.F)⟩
        ⟨(seg45AccX31 rho : Seg45.F), (seg45AccY31 rho : Seg45.F)⟩
        ⟨(rho 41594 : Seg45.F), (rho 41595 : Seg45.F)⟩ := by
    have ha0 : (rho 41581 + rho 41582) * (seg45AccX30 rho + seg45AccY30 rho) = rho 41583 := by
      rw [seg45LadderFlatX30_eq, seg45LadderFlatY30_eq]
      unfold seg45LadderFlatX30 seg45LadderFlatY30
      linear_combination r3355
    have ha1 : rho 41582 * seg45AccX30 rho = rho 41584 := by
      rw [seg45LadderFlatX30_eq]
      unfold seg45LadderFlatX30
      linear_combination r3356
    have ha2 : rho 41581 * seg45AccY30 rho = rho 41585 := by
      rw [seg45LadderFlatY30_eq]
      unfold seg45LadderFlatY30
      linear_combination r3357
    have ha3 : 3021 * rho 41584 * rho 41585 = rho 41586 := by
      linear_combination r3358
    have ha4 : rho 41587 * (1 + rho 41586) = rho 41584 + rho 41585 := by
      linear_combination r3359
    have ha5 : rho 41588 * (1 - rho 41586) = rho 41583 - rho 41584 - rho 41585 := by
      linear_combination r3360
    have haddx :
        rho 41587 * (1 + 3021 * (rho 41582 * seg45AccX30 rho) * (rho 41581 * seg45AccY30 rho)) =
          rho 41582 * seg45AccX30 rho + rho 41581 * seg45AccY30 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41588 * (1 - 3021 * (rho 41582 * seg45AccX30 rho) * (rho 41581 * seg45AccY30 rho)) =
          (-1) * (rho 41582 * seg45AccX30 rho) - rho 41581 * seg45AccY30 rho +
            (seg45AccY30 rho - seg45AccX30 rho * (-1)) * (rho 41581 + rho 41582) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41588 * (1 - rho 41586) = rho 41583 - rho 41584 - rho 41585 := ha5
        _ = (-1) * rho 41584 - rho 41585 + (seg45AccY30 rho - seg45AccX30 rho * (-1)) * (rho 41581 + rho 41582) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX31 rho = seg45AccX30 rho - Bool.toZMod bit * (seg45AccX30 rho - rho 41587) := by
      have hd : rho 41589 = Bool.toZMod bit * (rho 41587 - seg45AccX30 rho) := by
        rw [← hbit, seg45LadderFlatX30_eq]
        unfold seg45LadderFlatX30
        linear_combination -r3361
      unfold seg45AccX31
      linear_combination hd
    have hsely : seg45AccY31 rho = seg45AccY30 rho - Bool.toZMod bit * (seg45AccY30 rho - rho 41588) := by
      have hd : rho 41590 = Bool.toZMod bit * (rho 41588 - seg45AccY30 rho) := by
        rw [← hbit, seg45LadderFlatY30_eq]
        unfold seg45LadderFlatY30
        linear_combination -r3362
      unfold seg45AccY31
      linear_combination hd
    have hd0 : rho 41581 * rho 41582 = rho 41591 := by linear_combination r3363
    have hd1 : rho 41581 * rho 41581 = rho 41592 := by linear_combination r3364
    have hd2 : rho 41582 * rho 41582 = rho 41593 := by linear_combination r3365
    have hd3 : rho 41594 * (rho 41582 * rho 41582 + rho 41581 * rho 41581 * (-1)) = 2 * (rho 41581 * rho 41582) := by
      rw [hd0, hd1, hd2]
      linear_combination r3366
    have hd4 : rho 41595 * (2 - (rho 41582 * rho 41582 + rho 41581 * rho 41581 * (-1))) = rho 41582 * rho 41582 - rho 41581 * rho 41581 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3367
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX30 rho : Seg45.F), (seg45AccY30 rho : Seg45.F)⟩
      ⟨(rho 41581 : Seg45.F), (rho 41582 : Seg45.F)⟩
      ⟨(rho 41587 : Seg45.F), (rho 41588 : Seg45.F)⟩
      ⟨(seg45AccX31 rho : Seg45.F), (seg45AccY31 rho : Seg45.F)⟩
      ⟨(rho 41594 : Seg45.F), (rho 41595 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung30

theorem seg45_rung31 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40979 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX31 rho : Seg45.F), (seg45AccY31 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41594 : Seg45.F), (rho 41595 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX31 rho : Seg45.F), (seg45AccY31 rho : Seg45.F)⟩
        ⟨(rho 41594 : Seg45.F), (rho 41595 : Seg45.F)⟩
        ⟨(seg45AccX32 rho : Seg45.F), (seg45AccY32 rho : Seg45.F)⟩
        ⟨(rho 41607 : Seg45.F), (rho 41608 : Seg45.F)⟩ := by
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
  rcases p42 with ⟨_, _, _, _, _, _, _, _, r3368, r3369, r3370, r3371, r3372, r3373, r3374, r3375, r3376, r3377, r3378, r3379, r3380, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3368 Seg45.relationLc194 Seg45.relationLc194Part0 Seg45.relationLc194Part1 at r3368
  unfold Seg45.relationRow3369 at r3369
  unfold Seg45.relationRow3370 at r3370
  unfold Seg45.relationRow3371 at r3371
  unfold Seg45.relationRow3372 at r3372
  unfold Seg45.relationRow3373 at r3373
  unfold Seg45.relationRow3374 at r3374
  unfold Seg45.relationRow3375 Seg45.relationLc195 Seg45.relationLc195Part0 Seg45.relationLc195Part1 at r3375
  unfold Seg45.relationRow3376 at r3376
  unfold Seg45.relationRow3377 at r3377
  unfold Seg45.relationRow3378 at r3378
  unfold Seg45.relationRow3379 at r3379
  unfold Seg45.relationRow3380 at r3380
  have hrung31 (bit : Bool) (hbit : rho 40979 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX31 rho : Seg45.F), (seg45AccY31 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41594 : Seg45.F), (rho 41595 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX31 rho : Seg45.F), (seg45AccY31 rho : Seg45.F)⟩
        ⟨(rho 41594 : Seg45.F), (rho 41595 : Seg45.F)⟩
        ⟨(seg45AccX32 rho : Seg45.F), (seg45AccY32 rho : Seg45.F)⟩
        ⟨(rho 41607 : Seg45.F), (rho 41608 : Seg45.F)⟩ := by
    have ha0 : (rho 41594 + rho 41595) * (seg45AccX31 rho + seg45AccY31 rho) = rho 41596 := by
      rw [seg45LadderFlatX31_eq, seg45LadderFlatY31_eq]
      unfold seg45LadderFlatX31 seg45LadderFlatY31
      linear_combination r3368
    have ha1 : rho 41595 * seg45AccX31 rho = rho 41597 := by
      rw [seg45LadderFlatX31_eq]
      unfold seg45LadderFlatX31
      linear_combination r3369
    have ha2 : rho 41594 * seg45AccY31 rho = rho 41598 := by
      rw [seg45LadderFlatY31_eq]
      unfold seg45LadderFlatY31
      linear_combination r3370
    have ha3 : 3021 * rho 41597 * rho 41598 = rho 41599 := by
      linear_combination r3371
    have ha4 : rho 41600 * (1 + rho 41599) = rho 41597 + rho 41598 := by
      linear_combination r3372
    have ha5 : rho 41601 * (1 - rho 41599) = rho 41596 - rho 41597 - rho 41598 := by
      linear_combination r3373
    have haddx :
        rho 41600 * (1 + 3021 * (rho 41595 * seg45AccX31 rho) * (rho 41594 * seg45AccY31 rho)) =
          rho 41595 * seg45AccX31 rho + rho 41594 * seg45AccY31 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41601 * (1 - 3021 * (rho 41595 * seg45AccX31 rho) * (rho 41594 * seg45AccY31 rho)) =
          (-1) * (rho 41595 * seg45AccX31 rho) - rho 41594 * seg45AccY31 rho +
            (seg45AccY31 rho - seg45AccX31 rho * (-1)) * (rho 41594 + rho 41595) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41601 * (1 - rho 41599) = rho 41596 - rho 41597 - rho 41598 := ha5
        _ = (-1) * rho 41597 - rho 41598 + (seg45AccY31 rho - seg45AccX31 rho * (-1)) * (rho 41594 + rho 41595) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX32 rho = seg45AccX31 rho - Bool.toZMod bit * (seg45AccX31 rho - rho 41600) := by
      have hd : rho 41602 = Bool.toZMod bit * (rho 41600 - seg45AccX31 rho) := by
        rw [← hbit, seg45LadderFlatX31_eq]
        unfold seg45LadderFlatX31
        linear_combination -r3374
      unfold seg45AccX32
      linear_combination hd
    have hsely : seg45AccY32 rho = seg45AccY31 rho - Bool.toZMod bit * (seg45AccY31 rho - rho 41601) := by
      have hd : rho 41603 = Bool.toZMod bit * (rho 41601 - seg45AccY31 rho) := by
        rw [← hbit, seg45LadderFlatY31_eq]
        unfold seg45LadderFlatY31
        linear_combination -r3375
      unfold seg45AccY32
      linear_combination hd
    have hd0 : rho 41594 * rho 41595 = rho 41604 := by linear_combination r3376
    have hd1 : rho 41594 * rho 41594 = rho 41605 := by linear_combination r3377
    have hd2 : rho 41595 * rho 41595 = rho 41606 := by linear_combination r3378
    have hd3 : rho 41607 * (rho 41595 * rho 41595 + rho 41594 * rho 41594 * (-1)) = 2 * (rho 41594 * rho 41595) := by
      rw [hd0, hd1, hd2]
      linear_combination r3379
    have hd4 : rho 41608 * (2 - (rho 41595 * rho 41595 + rho 41594 * rho 41594 * (-1))) = rho 41595 * rho 41595 - rho 41594 * rho 41594 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3380
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX31 rho : Seg45.F), (seg45AccY31 rho : Seg45.F)⟩
      ⟨(rho 41594 : Seg45.F), (rho 41595 : Seg45.F)⟩
      ⟨(rho 41600 : Seg45.F), (rho 41601 : Seg45.F)⟩
      ⟨(seg45AccX32 rho : Seg45.F), (seg45AccY32 rho : Seg45.F)⟩
      ⟨(rho 41607 : Seg45.F), (rho 41608 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung31

theorem seg45_hstep_c0 (rho : Nat -> Seg45.F) (h : Seg45.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (40948 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 0 ≤ i → i < 32 →
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
  · exact seg45_rung11 rho h bits[11]! (hbitAt 11 (by omega)) hacc hcur
  · exact seg45_rung12 rho h bits[12]! (hbitAt 12 (by omega)) hacc hcur
  · exact seg45_rung13 rho h bits[13]! (hbitAt 13 (by omega)) hacc hcur
  · exact seg45_rung14 rho h bits[14]! (hbitAt 14 (by omega)) hacc hcur
  · exact seg45_rung15 rho h bits[15]! (hbitAt 15 (by omega)) hacc hcur
  · exact seg45_rung16 rho h bits[16]! (hbitAt 16 (by omega)) hacc hcur
  · exact seg45_rung17 rho h bits[17]! (hbitAt 17 (by omega)) hacc hcur
  · exact seg45_rung18 rho h bits[18]! (hbitAt 18 (by omega)) hacc hcur
  · exact seg45_rung19 rho h bits[19]! (hbitAt 19 (by omega)) hacc hcur
  · exact seg45_rung20 rho h bits[20]! (hbitAt 20 (by omega)) hacc hcur
  · exact seg45_rung21 rho h bits[21]! (hbitAt 21 (by omega)) hacc hcur
  · exact seg45_rung22 rho h bits[22]! (hbitAt 22 (by omega)) hacc hcur
  · exact seg45_rung23 rho h bits[23]! (hbitAt 23 (by omega)) hacc hcur
  · exact seg45_rung24 rho h bits[24]! (hbitAt 24 (by omega)) hacc hcur
  · exact seg45_rung25 rho h bits[25]! (hbitAt 25 (by omega)) hacc hcur
  · exact seg45_rung26 rho h bits[26]! (hbitAt 26 (by omega)) hacc hcur
  · exact seg45_rung27 rho h bits[27]! (hbitAt 27 (by omega)) hacc hcur
  · exact seg45_rung28 rho h bits[28]! (hbitAt 28 (by omega)) hacc hcur
  · exact seg45_rung29 rho h bits[29]! (hbitAt 29 (by omega)) hacc hcur
  · exact seg45_rung30 rho h bits[30]! (hbitAt 30 (by omega)) hacc hcur
  · exact seg45_rung31 rho h bits[31]! (hbitAt 31 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
