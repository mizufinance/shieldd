import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg45_rows22 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3251 rho ∧ Seg45.relationRow3252 rho ∧ Seg45.relationRow3253 rho ∧ Seg45.relationRow3254 rho ∧ Seg45.relationRow3255 rho ∧ Seg45.relationRow3256 rho ∧ Seg45.relationRow3257 rho ∧ Seg45.relationRow3258 rho ∧ Seg45.relationRow3259 rho ∧ Seg45.relationRow3260 rho ∧ Seg45.relationRow3261 rho ∧ Seg45.relationRow3262 rho ∧ Seg45.relationRow3263 rho := by
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
  exact ⟨r3251, r3252, r3253, r3254, r3255, r3256, r3257, r3258, r3259, r3260, r3261, r3262, r3263⟩

theorem seg45_rung22 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40970 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX22 rho : Seg45.F), (seg45AccY22 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41477 : Seg45.F), (rho 41478 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX22 rho : Seg45.F), (seg45AccY22 rho : Seg45.F)⟩
        ⟨(rho 41477 : Seg45.F), (rho 41478 : Seg45.F)⟩
        ⟨(seg45AccX23 rho : Seg45.F), (seg45AccY23 rho : Seg45.F)⟩
        ⟨(rho 41490 : Seg45.F), (rho 41491 : Seg45.F)⟩ := by
  obtain ⟨r3251, r3252, r3253, r3254, r3255, r3256, r3257, r3258, r3259, r3260, r3261, r3262, r3263⟩ := seg45_rows22 rho h
  unfold Seg45.relationRow3251 at r3251
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3251
  unfold Seg45.relationRow3252 at r3252
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3252
  unfold Seg45.relationRow3253 at r3253
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3253
  unfold Seg45.relationRow3254 at r3254
  unfold Seg45.relationRow3255 at r3255
  unfold Seg45.relationRow3256 at r3256
  unfold Seg45.relationRow3257 at r3257
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3257
  unfold Seg45.relationRow3258 at r3258
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3258
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
    have hnextx : seg45AccX23 rho = seg45AccX22 rho + rho 41485 := by
      unfold seg45AccX23 seg45AccX22
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 22]
      ring
    have hnexty : seg45AccY23 rho = seg45AccY22 rho + rho 41486 := by
      unfold seg45AccY23 seg45AccY22
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 22]
      ring
    have ha0 : (rho 41477 + rho 41478) * (seg45AccX22 rho + seg45AccY22 rho) = rho 41479 := by
      unfold seg45AccX22 seg45AccY22
      linear_combination r3251
    have ha1 : rho 41478 * seg45AccX22 rho = rho 41480 := by
      unfold seg45AccX22
      linear_combination r3252
    have ha2 : rho 41477 * seg45AccY22 rho = rho 41481 := by
      unfold seg45AccY22
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
        rw [← hbit]
        unfold seg45AccX22
        linear_combination -r3257
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY23 rho = seg45AccY22 rho - Bool.toZMod bit * (seg45AccY22 rho - rho 41484) := by
      have hd : rho 41486 = Bool.toZMod bit * (rho 41484 - seg45AccY22 rho) := by
        rw [← hbit]
        unfold seg45AccY22
        linear_combination -r3258
      rw [hnexty]
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

theorem seg45_rows23 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3264 rho ∧ Seg45.relationRow3265 rho ∧ Seg45.relationRow3266 rho ∧ Seg45.relationRow3267 rho ∧ Seg45.relationRow3268 rho ∧ Seg45.relationRow3269 rho ∧ Seg45.relationRow3270 rho ∧ Seg45.relationRow3271 rho ∧ Seg45.relationRow3272 rho ∧ Seg45.relationRow3273 rho ∧ Seg45.relationRow3274 rho ∧ Seg45.relationRow3275 rho ∧ Seg45.relationRow3276 rho := by
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
  exact ⟨r3264, r3265, r3266, r3267, r3268, r3269, r3270, r3271, r3272, r3273, r3274, r3275, r3276⟩

theorem seg45_rung23 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40971 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX23 rho : Seg45.F), (seg45AccY23 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41490 : Seg45.F), (rho 41491 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX23 rho : Seg45.F), (seg45AccY23 rho : Seg45.F)⟩
        ⟨(rho 41490 : Seg45.F), (rho 41491 : Seg45.F)⟩
        ⟨(seg45AccX24 rho : Seg45.F), (seg45AccY24 rho : Seg45.F)⟩
        ⟨(rho 41503 : Seg45.F), (rho 41504 : Seg45.F)⟩ := by
  obtain ⟨r3264, r3265, r3266, r3267, r3268, r3269, r3270, r3271, r3272, r3273, r3274, r3275, r3276⟩ := seg45_rows23 rho h
  unfold Seg45.relationRow3264 at r3264
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3264
  unfold Seg45.relationRow3265 at r3265
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3265
  unfold Seg45.relationRow3266 at r3266
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3266
  unfold Seg45.relationRow3267 at r3267
  unfold Seg45.relationRow3268 at r3268
  unfold Seg45.relationRow3269 at r3269
  unfold Seg45.relationRow3270 at r3270
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3270
  unfold Seg45.relationRow3271 at r3271
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3271
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
    have hnextx : seg45AccX24 rho = seg45AccX23 rho + rho 41498 := by
      unfold seg45AccX24 seg45AccX23
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 23]
      ring
    have hnexty : seg45AccY24 rho = seg45AccY23 rho + rho 41499 := by
      unfold seg45AccY24 seg45AccY23
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 23]
      ring
    have ha0 : (rho 41490 + rho 41491) * (seg45AccX23 rho + seg45AccY23 rho) = rho 41492 := by
      unfold seg45AccX23 seg45AccY23
      linear_combination r3264
    have ha1 : rho 41491 * seg45AccX23 rho = rho 41493 := by
      unfold seg45AccX23
      linear_combination r3265
    have ha2 : rho 41490 * seg45AccY23 rho = rho 41494 := by
      unfold seg45AccY23
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
        rw [← hbit]
        unfold seg45AccX23
        linear_combination -r3270
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY24 rho = seg45AccY23 rho - Bool.toZMod bit * (seg45AccY23 rho - rho 41497) := by
      have hd : rho 41499 = Bool.toZMod bit * (rho 41497 - seg45AccY23 rho) := by
        rw [← hbit]
        unfold seg45AccY23
        linear_combination -r3271
      rw [hnexty]
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

theorem seg45_rows24 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3277 rho ∧ Seg45.relationRow3278 rho ∧ Seg45.relationRow3279 rho ∧ Seg45.relationRow3280 rho ∧ Seg45.relationRow3281 rho ∧ Seg45.relationRow3282 rho ∧ Seg45.relationRow3283 rho ∧ Seg45.relationRow3284 rho ∧ Seg45.relationRow3285 rho ∧ Seg45.relationRow3286 rho ∧ Seg45.relationRow3287 rho ∧ Seg45.relationRow3288 rho ∧ Seg45.relationRow3289 rho := by
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
  exact ⟨r3277, r3278, r3279, r3280, r3281, r3282, r3283, r3284, r3285, r3286, r3287, r3288, r3289⟩

theorem seg45_rung24 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40972 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX24 rho : Seg45.F), (seg45AccY24 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41503 : Seg45.F), (rho 41504 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX24 rho : Seg45.F), (seg45AccY24 rho : Seg45.F)⟩
        ⟨(rho 41503 : Seg45.F), (rho 41504 : Seg45.F)⟩
        ⟨(seg45AccX25 rho : Seg45.F), (seg45AccY25 rho : Seg45.F)⟩
        ⟨(rho 41516 : Seg45.F), (rho 41517 : Seg45.F)⟩ := by
  obtain ⟨r3277, r3278, r3279, r3280, r3281, r3282, r3283, r3284, r3285, r3286, r3287, r3288, r3289⟩ := seg45_rows24 rho h
  unfold Seg45.relationRow3277 at r3277
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3277
  unfold Seg45.relationRow3278 at r3278
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3278
  unfold Seg45.relationRow3279 at r3279
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3279
  unfold Seg45.relationRow3280 at r3280
  unfold Seg45.relationRow3281 at r3281
  unfold Seg45.relationRow3282 at r3282
  unfold Seg45.relationRow3283 at r3283
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3283
  unfold Seg45.relationRow3284 at r3284
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3284
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
    have hnextx : seg45AccX25 rho = seg45AccX24 rho + rho 41511 := by
      unfold seg45AccX25 seg45AccX24
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 24]
      ring
    have hnexty : seg45AccY25 rho = seg45AccY24 rho + rho 41512 := by
      unfold seg45AccY25 seg45AccY24
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 24]
      ring
    have ha0 : (rho 41503 + rho 41504) * (seg45AccX24 rho + seg45AccY24 rho) = rho 41505 := by
      unfold seg45AccX24 seg45AccY24
      linear_combination r3277
    have ha1 : rho 41504 * seg45AccX24 rho = rho 41506 := by
      unfold seg45AccX24
      linear_combination r3278
    have ha2 : rho 41503 * seg45AccY24 rho = rho 41507 := by
      unfold seg45AccY24
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
        rw [← hbit]
        unfold seg45AccX24
        linear_combination -r3283
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY25 rho = seg45AccY24 rho - Bool.toZMod bit * (seg45AccY24 rho - rho 41510) := by
      have hd : rho 41512 = Bool.toZMod bit * (rho 41510 - seg45AccY24 rho) := by
        rw [← hbit]
        unfold seg45AccY24
        linear_combination -r3284
      rw [hnexty]
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

theorem seg45_rows25 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3290 rho ∧ Seg45.relationRow3291 rho ∧ Seg45.relationRow3292 rho ∧ Seg45.relationRow3293 rho ∧ Seg45.relationRow3294 rho ∧ Seg45.relationRow3295 rho ∧ Seg45.relationRow3296 rho ∧ Seg45.relationRow3297 rho ∧ Seg45.relationRow3298 rho ∧ Seg45.relationRow3299 rho ∧ Seg45.relationRow3300 rho ∧ Seg45.relationRow3301 rho ∧ Seg45.relationRow3302 rho := by
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
  exact ⟨r3290, r3291, r3292, r3293, r3294, r3295, r3296, r3297, r3298, r3299, r3300, r3301, r3302⟩

theorem seg45_rung25 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40973 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX25 rho : Seg45.F), (seg45AccY25 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41516 : Seg45.F), (rho 41517 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX25 rho : Seg45.F), (seg45AccY25 rho : Seg45.F)⟩
        ⟨(rho 41516 : Seg45.F), (rho 41517 : Seg45.F)⟩
        ⟨(seg45AccX26 rho : Seg45.F), (seg45AccY26 rho : Seg45.F)⟩
        ⟨(rho 41529 : Seg45.F), (rho 41530 : Seg45.F)⟩ := by
  obtain ⟨r3290, r3291, r3292, r3293, r3294, r3295, r3296, r3297, r3298, r3299, r3300, r3301, r3302⟩ := seg45_rows25 rho h
  unfold Seg45.relationRow3290 at r3290
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3290
  unfold Seg45.relationRow3291 at r3291
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3291
  unfold Seg45.relationRow3292 at r3292
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3292
  unfold Seg45.relationRow3293 at r3293
  unfold Seg45.relationRow3294 at r3294
  unfold Seg45.relationRow3295 at r3295
  unfold Seg45.relationRow3296 at r3296
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3296
  unfold Seg45.relationRow3297 at r3297
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3297
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
    have hnextx : seg45AccX26 rho = seg45AccX25 rho + rho 41524 := by
      unfold seg45AccX26 seg45AccX25
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 25]
      ring
    have hnexty : seg45AccY26 rho = seg45AccY25 rho + rho 41525 := by
      unfold seg45AccY26 seg45AccY25
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 25]
      ring
    have ha0 : (rho 41516 + rho 41517) * (seg45AccX25 rho + seg45AccY25 rho) = rho 41518 := by
      unfold seg45AccX25 seg45AccY25
      linear_combination r3290
    have ha1 : rho 41517 * seg45AccX25 rho = rho 41519 := by
      unfold seg45AccX25
      linear_combination r3291
    have ha2 : rho 41516 * seg45AccY25 rho = rho 41520 := by
      unfold seg45AccY25
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
        rw [← hbit]
        unfold seg45AccX25
        linear_combination -r3296
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY26 rho = seg45AccY25 rho - Bool.toZMod bit * (seg45AccY25 rho - rho 41523) := by
      have hd : rho 41525 = Bool.toZMod bit * (rho 41523 - seg45AccY25 rho) := by
        rw [← hbit]
        unfold seg45AccY25
        linear_combination -r3297
      rw [hnexty]
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

theorem seg45_rows26 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3303 rho ∧ Seg45.relationRow3304 rho ∧ Seg45.relationRow3305 rho ∧ Seg45.relationRow3306 rho ∧ Seg45.relationRow3307 rho ∧ Seg45.relationRow3308 rho ∧ Seg45.relationRow3309 rho ∧ Seg45.relationRow3310 rho ∧ Seg45.relationRow3311 rho ∧ Seg45.relationRow3312 rho ∧ Seg45.relationRow3313 rho ∧ Seg45.relationRow3314 rho ∧ Seg45.relationRow3315 rho := by
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
  exact ⟨r3303, r3304, r3305, r3306, r3307, r3308, r3309, r3310, r3311, r3312, r3313, r3314, r3315⟩

theorem seg45_rung26 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40974 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX26 rho : Seg45.F), (seg45AccY26 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41529 : Seg45.F), (rho 41530 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX26 rho : Seg45.F), (seg45AccY26 rho : Seg45.F)⟩
        ⟨(rho 41529 : Seg45.F), (rho 41530 : Seg45.F)⟩
        ⟨(seg45AccX27 rho : Seg45.F), (seg45AccY27 rho : Seg45.F)⟩
        ⟨(rho 41542 : Seg45.F), (rho 41543 : Seg45.F)⟩ := by
  obtain ⟨r3303, r3304, r3305, r3306, r3307, r3308, r3309, r3310, r3311, r3312, r3313, r3314, r3315⟩ := seg45_rows26 rho h
  unfold Seg45.relationRow3303 at r3303
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3303
  unfold Seg45.relationRow3304 at r3304
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3304
  unfold Seg45.relationRow3305 at r3305
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3305
  unfold Seg45.relationRow3306 at r3306
  unfold Seg45.relationRow3307 at r3307
  unfold Seg45.relationRow3308 at r3308
  unfold Seg45.relationRow3309 at r3309
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3309
  unfold Seg45.relationRow3310 at r3310
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3310
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
    have hnextx : seg45AccX27 rho = seg45AccX26 rho + rho 41537 := by
      unfold seg45AccX27 seg45AccX26
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 26]
      ring
    have hnexty : seg45AccY27 rho = seg45AccY26 rho + rho 41538 := by
      unfold seg45AccY27 seg45AccY26
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 26]
      ring
    have ha0 : (rho 41529 + rho 41530) * (seg45AccX26 rho + seg45AccY26 rho) = rho 41531 := by
      unfold seg45AccX26 seg45AccY26
      linear_combination r3303
    have ha1 : rho 41530 * seg45AccX26 rho = rho 41532 := by
      unfold seg45AccX26
      linear_combination r3304
    have ha2 : rho 41529 * seg45AccY26 rho = rho 41533 := by
      unfold seg45AccY26
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
        rw [← hbit]
        unfold seg45AccX26
        linear_combination -r3309
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY27 rho = seg45AccY26 rho - Bool.toZMod bit * (seg45AccY26 rho - rho 41536) := by
      have hd : rho 41538 = Bool.toZMod bit * (rho 41536 - seg45AccY26 rho) := by
        rw [← hbit]
        unfold seg45AccY26
        linear_combination -r3310
      rw [hnexty]
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

theorem seg45_rows27 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3316 rho ∧ Seg45.relationRow3317 rho ∧ Seg45.relationRow3318 rho ∧ Seg45.relationRow3319 rho ∧ Seg45.relationRow3320 rho ∧ Seg45.relationRow3321 rho ∧ Seg45.relationRow3322 rho ∧ Seg45.relationRow3323 rho ∧ Seg45.relationRow3324 rho ∧ Seg45.relationRow3325 rho ∧ Seg45.relationRow3326 rho ∧ Seg45.relationRow3327 rho ∧ Seg45.relationRow3328 rho := by
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
  exact ⟨r3316, r3317, r3318, r3319, r3320, r3321, r3322, r3323, r3324, r3325, r3326, r3327, r3328⟩

theorem seg45_rung27 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40975 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX27 rho : Seg45.F), (seg45AccY27 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41542 : Seg45.F), (rho 41543 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX27 rho : Seg45.F), (seg45AccY27 rho : Seg45.F)⟩
        ⟨(rho 41542 : Seg45.F), (rho 41543 : Seg45.F)⟩
        ⟨(seg45AccX28 rho : Seg45.F), (seg45AccY28 rho : Seg45.F)⟩
        ⟨(rho 41555 : Seg45.F), (rho 41556 : Seg45.F)⟩ := by
  obtain ⟨r3316, r3317, r3318, r3319, r3320, r3321, r3322, r3323, r3324, r3325, r3326, r3327, r3328⟩ := seg45_rows27 rho h
  unfold Seg45.relationRow3316 at r3316
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3316
  unfold Seg45.relationRow3317 at r3317
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3317
  unfold Seg45.relationRow3318 at r3318
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3318
  unfold Seg45.relationRow3319 at r3319
  unfold Seg45.relationRow3320 at r3320
  unfold Seg45.relationRow3321 at r3321
  unfold Seg45.relationRow3322 at r3322
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3322
  unfold Seg45.relationRow3323 at r3323
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3323
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
    have hnextx : seg45AccX28 rho = seg45AccX27 rho + rho 41550 := by
      unfold seg45AccX28 seg45AccX27
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 27]
      ring
    have hnexty : seg45AccY28 rho = seg45AccY27 rho + rho 41551 := by
      unfold seg45AccY28 seg45AccY27
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 27]
      ring
    have ha0 : (rho 41542 + rho 41543) * (seg45AccX27 rho + seg45AccY27 rho) = rho 41544 := by
      unfold seg45AccX27 seg45AccY27
      linear_combination r3316
    have ha1 : rho 41543 * seg45AccX27 rho = rho 41545 := by
      unfold seg45AccX27
      linear_combination r3317
    have ha2 : rho 41542 * seg45AccY27 rho = rho 41546 := by
      unfold seg45AccY27
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
        rw [← hbit]
        unfold seg45AccX27
        linear_combination -r3322
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY28 rho = seg45AccY27 rho - Bool.toZMod bit * (seg45AccY27 rho - rho 41549) := by
      have hd : rho 41551 = Bool.toZMod bit * (rho 41549 - seg45AccY27 rho) := by
        rw [← hbit]
        unfold seg45AccY27
        linear_combination -r3323
      rw [hnexty]
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

theorem seg45_rows28 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3329 rho ∧ Seg45.relationRow3330 rho ∧ Seg45.relationRow3331 rho ∧ Seg45.relationRow3332 rho ∧ Seg45.relationRow3333 rho ∧ Seg45.relationRow3334 rho ∧ Seg45.relationRow3335 rho ∧ Seg45.relationRow3336 rho ∧ Seg45.relationRow3337 rho ∧ Seg45.relationRow3338 rho ∧ Seg45.relationRow3339 rho ∧ Seg45.relationRow3340 rho ∧ Seg45.relationRow3341 rho := by
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
  exact ⟨r3329, r3330, r3331, r3332, r3333, r3334, r3335, r3336, r3337, r3338, r3339, r3340, r3341⟩

theorem seg45_rung28 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40976 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX28 rho : Seg45.F), (seg45AccY28 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41555 : Seg45.F), (rho 41556 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX28 rho : Seg45.F), (seg45AccY28 rho : Seg45.F)⟩
        ⟨(rho 41555 : Seg45.F), (rho 41556 : Seg45.F)⟩
        ⟨(seg45AccX29 rho : Seg45.F), (seg45AccY29 rho : Seg45.F)⟩
        ⟨(rho 41568 : Seg45.F), (rho 41569 : Seg45.F)⟩ := by
  obtain ⟨r3329, r3330, r3331, r3332, r3333, r3334, r3335, r3336, r3337, r3338, r3339, r3340, r3341⟩ := seg45_rows28 rho h
  unfold Seg45.relationRow3329 at r3329
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3329
  unfold Seg45.relationRow3330 at r3330
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3330
  unfold Seg45.relationRow3331 at r3331
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3331
  unfold Seg45.relationRow3332 at r3332
  unfold Seg45.relationRow3333 at r3333
  unfold Seg45.relationRow3334 at r3334
  unfold Seg45.relationRow3335 at r3335
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3335
  unfold Seg45.relationRow3336 at r3336
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3336
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
    have hnextx : seg45AccX29 rho = seg45AccX28 rho + rho 41563 := by
      unfold seg45AccX29 seg45AccX28
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 28]
      ring
    have hnexty : seg45AccY29 rho = seg45AccY28 rho + rho 41564 := by
      unfold seg45AccY29 seg45AccY28
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 28]
      ring
    have ha0 : (rho 41555 + rho 41556) * (seg45AccX28 rho + seg45AccY28 rho) = rho 41557 := by
      unfold seg45AccX28 seg45AccY28
      linear_combination r3329
    have ha1 : rho 41556 * seg45AccX28 rho = rho 41558 := by
      unfold seg45AccX28
      linear_combination r3330
    have ha2 : rho 41555 * seg45AccY28 rho = rho 41559 := by
      unfold seg45AccY28
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
        rw [← hbit]
        unfold seg45AccX28
        linear_combination -r3335
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY29 rho = seg45AccY28 rho - Bool.toZMod bit * (seg45AccY28 rho - rho 41562) := by
      have hd : rho 41564 = Bool.toZMod bit * (rho 41562 - seg45AccY28 rho) := by
        rw [← hbit]
        unfold seg45AccY28
        linear_combination -r3336
      rw [hnexty]
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

theorem seg45_rows29 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3342 rho ∧ Seg45.relationRow3343 rho ∧ Seg45.relationRow3344 rho ∧ Seg45.relationRow3345 rho ∧ Seg45.relationRow3346 rho ∧ Seg45.relationRow3347 rho ∧ Seg45.relationRow3348 rho ∧ Seg45.relationRow3349 rho ∧ Seg45.relationRow3350 rho ∧ Seg45.relationRow3351 rho ∧ Seg45.relationRow3352 rho ∧ Seg45.relationRow3353 rho ∧ Seg45.relationRow3354 rho := by
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
  exact ⟨r3342, r3343, r3344, r3345, r3346, r3347, r3348, r3349, r3350, r3351, r3352, r3353, r3354⟩

theorem seg45_rung29 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40977 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX29 rho : Seg45.F), (seg45AccY29 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41568 : Seg45.F), (rho 41569 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX29 rho : Seg45.F), (seg45AccY29 rho : Seg45.F)⟩
        ⟨(rho 41568 : Seg45.F), (rho 41569 : Seg45.F)⟩
        ⟨(seg45AccX30 rho : Seg45.F), (seg45AccY30 rho : Seg45.F)⟩
        ⟨(rho 41581 : Seg45.F), (rho 41582 : Seg45.F)⟩ := by
  obtain ⟨r3342, r3343, r3344, r3345, r3346, r3347, r3348, r3349, r3350, r3351, r3352, r3353, r3354⟩ := seg45_rows29 rho h
  unfold Seg45.relationRow3342 at r3342
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3342
  unfold Seg45.relationRow3343 at r3343
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3343
  unfold Seg45.relationRow3344 at r3344
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3344
  unfold Seg45.relationRow3345 at r3345
  unfold Seg45.relationRow3346 at r3346
  unfold Seg45.relationRow3347 at r3347
  unfold Seg45.relationRow3348 at r3348
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3348
  unfold Seg45.relationRow3349 at r3349
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3349
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
    have hnextx : seg45AccX30 rho = seg45AccX29 rho + rho 41576 := by
      unfold seg45AccX30 seg45AccX29
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 29]
      ring
    have hnexty : seg45AccY30 rho = seg45AccY29 rho + rho 41577 := by
      unfold seg45AccY30 seg45AccY29
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 29]
      ring
    have ha0 : (rho 41568 + rho 41569) * (seg45AccX29 rho + seg45AccY29 rho) = rho 41570 := by
      unfold seg45AccX29 seg45AccY29
      linear_combination r3342
    have ha1 : rho 41569 * seg45AccX29 rho = rho 41571 := by
      unfold seg45AccX29
      linear_combination r3343
    have ha2 : rho 41568 * seg45AccY29 rho = rho 41572 := by
      unfold seg45AccY29
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
        rw [← hbit]
        unfold seg45AccX29
        linear_combination -r3348
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY30 rho = seg45AccY29 rho - Bool.toZMod bit * (seg45AccY29 rho - rho 41575) := by
      have hd : rho 41577 = Bool.toZMod bit * (rho 41575 - seg45AccY29 rho) := by
        rw [← hbit]
        unfold seg45AccY29
        linear_combination -r3349
      rw [hnexty]
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

theorem seg45_rows30 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3355 rho ∧ Seg45.relationRow3356 rho ∧ Seg45.relationRow3357 rho ∧ Seg45.relationRow3358 rho ∧ Seg45.relationRow3359 rho ∧ Seg45.relationRow3360 rho ∧ Seg45.relationRow3361 rho ∧ Seg45.relationRow3362 rho ∧ Seg45.relationRow3363 rho ∧ Seg45.relationRow3364 rho ∧ Seg45.relationRow3365 rho ∧ Seg45.relationRow3366 rho ∧ Seg45.relationRow3367 rho := by
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
  exact ⟨r3355, r3356, r3357, r3358, r3359, r3360, r3361, r3362, r3363, r3364, r3365, r3366, r3367⟩

theorem seg45_rung30 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40978 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX30 rho : Seg45.F), (seg45AccY30 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41581 : Seg45.F), (rho 41582 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX30 rho : Seg45.F), (seg45AccY30 rho : Seg45.F)⟩
        ⟨(rho 41581 : Seg45.F), (rho 41582 : Seg45.F)⟩
        ⟨(seg45AccX31 rho : Seg45.F), (seg45AccY31 rho : Seg45.F)⟩
        ⟨(rho 41594 : Seg45.F), (rho 41595 : Seg45.F)⟩ := by
  obtain ⟨r3355, r3356, r3357, r3358, r3359, r3360, r3361, r3362, r3363, r3364, r3365, r3366, r3367⟩ := seg45_rows30 rho h
  unfold Seg45.relationRow3355 at r3355
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3355
  unfold Seg45.relationRow3356 at r3356
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3356
  unfold Seg45.relationRow3357 at r3357
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3357
  unfold Seg45.relationRow3358 at r3358
  unfold Seg45.relationRow3359 at r3359
  unfold Seg45.relationRow3360 at r3360
  unfold Seg45.relationRow3361 at r3361
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3361
  unfold Seg45.relationRow3362 at r3362
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3362
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
    have hnextx : seg45AccX31 rho = seg45AccX30 rho + rho 41589 := by
      unfold seg45AccX31 seg45AccX30
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 30]
      ring
    have hnexty : seg45AccY31 rho = seg45AccY30 rho + rho 41590 := by
      unfold seg45AccY31 seg45AccY30
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 30]
      ring
    have ha0 : (rho 41581 + rho 41582) * (seg45AccX30 rho + seg45AccY30 rho) = rho 41583 := by
      unfold seg45AccX30 seg45AccY30
      linear_combination r3355
    have ha1 : rho 41582 * seg45AccX30 rho = rho 41584 := by
      unfold seg45AccX30
      linear_combination r3356
    have ha2 : rho 41581 * seg45AccY30 rho = rho 41585 := by
      unfold seg45AccY30
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
        rw [← hbit]
        unfold seg45AccX30
        linear_combination -r3361
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY31 rho = seg45AccY30 rho - Bool.toZMod bit * (seg45AccY30 rho - rho 41588) := by
      have hd : rho 41590 = Bool.toZMod bit * (rho 41588 - seg45AccY30 rho) := by
        rw [← hbit]
        unfold seg45AccY30
        linear_combination -r3362
      rw [hnexty]
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

theorem seg45_rows31 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3368 rho ∧ Seg45.relationRow3369 rho ∧ Seg45.relationRow3370 rho ∧ Seg45.relationRow3371 rho ∧ Seg45.relationRow3372 rho ∧ Seg45.relationRow3373 rho ∧ Seg45.relationRow3374 rho ∧ Seg45.relationRow3375 rho ∧ Seg45.relationRow3376 rho ∧ Seg45.relationRow3377 rho ∧ Seg45.relationRow3378 rho ∧ Seg45.relationRow3379 rho ∧ Seg45.relationRow3380 rho := by
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
  exact ⟨r3368, r3369, r3370, r3371, r3372, r3373, r3374, r3375, r3376, r3377, r3378, r3379, r3380⟩

theorem seg45_rung31 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40979 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX31 rho : Seg45.F), (seg45AccY31 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41594 : Seg45.F), (rho 41595 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX31 rho : Seg45.F), (seg45AccY31 rho : Seg45.F)⟩
        ⟨(rho 41594 : Seg45.F), (rho 41595 : Seg45.F)⟩
        ⟨(seg45AccX32 rho : Seg45.F), (seg45AccY32 rho : Seg45.F)⟩
        ⟨(rho 41607 : Seg45.F), (rho 41608 : Seg45.F)⟩ := by
  obtain ⟨r3368, r3369, r3370, r3371, r3372, r3373, r3374, r3375, r3376, r3377, r3378, r3379, r3380⟩ := seg45_rows31 rho h
  unfold Seg45.relationRow3368 at r3368
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3368
  unfold Seg45.relationRow3369 at r3369
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3369
  unfold Seg45.relationRow3370 at r3370
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3370
  unfold Seg45.relationRow3371 at r3371
  unfold Seg45.relationRow3372 at r3372
  unfold Seg45.relationRow3373 at r3373
  unfold Seg45.relationRow3374 at r3374
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3374
  unfold Seg45.relationRow3375 at r3375
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3375
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
    have hnextx : seg45AccX32 rho = seg45AccX31 rho + rho 41602 := by
      unfold seg45AccX32 seg45AccX31
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 31]
      ring
    have hnexty : seg45AccY32 rho = seg45AccY31 rho + rho 41603 := by
      unfold seg45AccY32 seg45AccY31
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 31]
      ring
    have ha0 : (rho 41594 + rho 41595) * (seg45AccX31 rho + seg45AccY31 rho) = rho 41596 := by
      unfold seg45AccX31 seg45AccY31
      linear_combination r3368
    have ha1 : rho 41595 * seg45AccX31 rho = rho 41597 := by
      unfold seg45AccX31
      linear_combination r3369
    have ha2 : rho 41594 * seg45AccY31 rho = rho 41598 := by
      unfold seg45AccY31
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
        rw [← hbit]
        unfold seg45AccX31
        linear_combination -r3374
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY32 rho = seg45AccY31 rho - Bool.toZMod bit * (seg45AccY31 rho - rho 41601) := by
      have hd : rho 41603 = Bool.toZMod bit * (rho 41601 - seg45AccY31 rho) := by
        rw [← hbit]
        unfold seg45AccY31
        linear_combination -r3375
      rw [hnexty]
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

theorem seg45_rows32 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3381 rho ∧ Seg45.relationRow3382 rho ∧ Seg45.relationRow3383 rho ∧ Seg45.relationRow3384 rho ∧ Seg45.relationRow3385 rho ∧ Seg45.relationRow3386 rho ∧ Seg45.relationRow3387 rho ∧ Seg45.relationRow3388 rho ∧ Seg45.relationRow3389 rho ∧ Seg45.relationRow3390 rho ∧ Seg45.relationRow3391 rho ∧ Seg45.relationRow3392 rho ∧ Seg45.relationRow3393 rho := by
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
  exact ⟨r3381, r3382, r3383, r3384, r3385, r3386, r3387, r3388, r3389, r3390, r3391, r3392, r3393⟩

theorem seg45_rung32 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40980 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX32 rho : Seg45.F), (seg45AccY32 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41607 : Seg45.F), (rho 41608 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX32 rho : Seg45.F), (seg45AccY32 rho : Seg45.F)⟩
        ⟨(rho 41607 : Seg45.F), (rho 41608 : Seg45.F)⟩
        ⟨(seg45AccX33 rho : Seg45.F), (seg45AccY33 rho : Seg45.F)⟩
        ⟨(rho 41620 : Seg45.F), (rho 41621 : Seg45.F)⟩ := by
  obtain ⟨r3381, r3382, r3383, r3384, r3385, r3386, r3387, r3388, r3389, r3390, r3391, r3392, r3393⟩ := seg45_rows32 rho h
  unfold Seg45.relationRow3381 at r3381
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3381
  unfold Seg45.relationRow3382 at r3382
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3382
  unfold Seg45.relationRow3383 at r3383
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3383
  unfold Seg45.relationRow3384 at r3384
  unfold Seg45.relationRow3385 at r3385
  unfold Seg45.relationRow3386 at r3386
  unfold Seg45.relationRow3387 at r3387
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3387
  unfold Seg45.relationRow3388 at r3388
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3388
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
    have hnextx : seg45AccX33 rho = seg45AccX32 rho + rho 41615 := by
      unfold seg45AccX33 seg45AccX32
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 32]
      ring
    have hnexty : seg45AccY33 rho = seg45AccY32 rho + rho 41616 := by
      unfold seg45AccY33 seg45AccY32
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 32]
      ring
    have ha0 : (rho 41607 + rho 41608) * (seg45AccX32 rho + seg45AccY32 rho) = rho 41609 := by
      unfold seg45AccX32 seg45AccY32
      linear_combination r3381
    have ha1 : rho 41608 * seg45AccX32 rho = rho 41610 := by
      unfold seg45AccX32
      linear_combination r3382
    have ha2 : rho 41607 * seg45AccY32 rho = rho 41611 := by
      unfold seg45AccY32
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
        rw [← hbit]
        unfold seg45AccX32
        linear_combination -r3387
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY33 rho = seg45AccY32 rho - Bool.toZMod bit * (seg45AccY32 rho - rho 41614) := by
      have hd : rho 41616 = Bool.toZMod bit * (rho 41614 - seg45AccY32 rho) := by
        rw [← hbit]
        unfold seg45AccY32
        linear_combination -r3388
      rw [hnexty]
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

theorem seg45_hstep_c2 (rho : Nat -> Seg45.F) (h : Seg45.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (40948 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 22 ≤ i → i < 33 →
      EdwardsBridge.onCurve (seg45LadderAccState rho i) →
      EdwardsBridge.onCurve (seg45LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg45LadderAccState rho i) (seg45LadderCurState rho i)
        (seg45LadderAccState rho (i + 1)) (seg45LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
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
  · exact seg45_rung32 rho h bits[32]! (hbitAt 32 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
