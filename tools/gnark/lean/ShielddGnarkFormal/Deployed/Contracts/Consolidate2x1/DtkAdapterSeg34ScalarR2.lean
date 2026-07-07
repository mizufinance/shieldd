import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg34_rows22 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3251 rho ∧ Seg34.relationRow3252 rho ∧ Seg34.relationRow3253 rho ∧ Seg34.relationRow3254 rho ∧ Seg34.relationRow3255 rho ∧ Seg34.relationRow3256 rho ∧ Seg34.relationRow3257 rho ∧ Seg34.relationRow3258 rho ∧ Seg34.relationRow3259 rho ∧ Seg34.relationRow3260 rho ∧ Seg34.relationRow3261 rho ∧ Seg34.relationRow3262 rho ∧ Seg34.relationRow3263 rho := by
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
  exact ⟨r3251, r3252, r3253, r3254, r3255, r3256, r3257, r3258, r3259, r3260, r3261, r3262, r3263⟩

theorem seg34_rung22 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34014 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX22 rho : Seg34.F), (seg34AccY22 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34521 : Seg34.F), (rho 34522 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX22 rho : Seg34.F), (seg34AccY22 rho : Seg34.F)⟩
        ⟨(rho 34521 : Seg34.F), (rho 34522 : Seg34.F)⟩
        ⟨(seg34AccX23 rho : Seg34.F), (seg34AccY23 rho : Seg34.F)⟩
        ⟨(rho 34534 : Seg34.F), (rho 34535 : Seg34.F)⟩ := by
  obtain ⟨r3251, r3252, r3253, r3254, r3255, r3256, r3257, r3258, r3259, r3260, r3261, r3262, r3263⟩ := seg34_rows22 rho h
  unfold Seg34.relationRow3251 at r3251
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3251
  unfold Seg34.relationRow3252 at r3252
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3252
  unfold Seg34.relationRow3253 at r3253
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3253
  unfold Seg34.relationRow3254 at r3254
  unfold Seg34.relationRow3255 at r3255
  unfold Seg34.relationRow3256 at r3256
  unfold Seg34.relationRow3257 at r3257
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3257
  unfold Seg34.relationRow3258 at r3258
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3258
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
    have hnextx : seg34AccX23 rho = seg34AccX22 rho + rho 34529 := by
      unfold seg34AccX23 seg34AccX22
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 22]
      ring
    have hnexty : seg34AccY23 rho = seg34AccY22 rho + rho 34530 := by
      unfold seg34AccY23 seg34AccY22
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 22]
      ring
    have ha0 : (rho 34521 + rho 34522) * (seg34AccX22 rho + seg34AccY22 rho) = rho 34523 := by
      unfold seg34AccX22 seg34AccY22
      linear_combination r3251
    have ha1 : rho 34522 * seg34AccX22 rho = rho 34524 := by
      unfold seg34AccX22
      linear_combination r3252
    have ha2 : rho 34521 * seg34AccY22 rho = rho 34525 := by
      unfold seg34AccY22
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
        rw [← hbit]
        unfold seg34AccX22
        linear_combination -r3257
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY23 rho = seg34AccY22 rho - Bool.toZMod bit * (seg34AccY22 rho - rho 34528) := by
      have hd : rho 34530 = Bool.toZMod bit * (rho 34528 - seg34AccY22 rho) := by
        rw [← hbit]
        unfold seg34AccY22
        linear_combination -r3258
      rw [hnexty]
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

theorem seg34_rows23 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3264 rho ∧ Seg34.relationRow3265 rho ∧ Seg34.relationRow3266 rho ∧ Seg34.relationRow3267 rho ∧ Seg34.relationRow3268 rho ∧ Seg34.relationRow3269 rho ∧ Seg34.relationRow3270 rho ∧ Seg34.relationRow3271 rho ∧ Seg34.relationRow3272 rho ∧ Seg34.relationRow3273 rho ∧ Seg34.relationRow3274 rho ∧ Seg34.relationRow3275 rho ∧ Seg34.relationRow3276 rho := by
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
  exact ⟨r3264, r3265, r3266, r3267, r3268, r3269, r3270, r3271, r3272, r3273, r3274, r3275, r3276⟩

theorem seg34_rung23 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34015 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX23 rho : Seg34.F), (seg34AccY23 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34534 : Seg34.F), (rho 34535 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX23 rho : Seg34.F), (seg34AccY23 rho : Seg34.F)⟩
        ⟨(rho 34534 : Seg34.F), (rho 34535 : Seg34.F)⟩
        ⟨(seg34AccX24 rho : Seg34.F), (seg34AccY24 rho : Seg34.F)⟩
        ⟨(rho 34547 : Seg34.F), (rho 34548 : Seg34.F)⟩ := by
  obtain ⟨r3264, r3265, r3266, r3267, r3268, r3269, r3270, r3271, r3272, r3273, r3274, r3275, r3276⟩ := seg34_rows23 rho h
  unfold Seg34.relationRow3264 at r3264
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3264
  unfold Seg34.relationRow3265 at r3265
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3265
  unfold Seg34.relationRow3266 at r3266
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3266
  unfold Seg34.relationRow3267 at r3267
  unfold Seg34.relationRow3268 at r3268
  unfold Seg34.relationRow3269 at r3269
  unfold Seg34.relationRow3270 at r3270
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3270
  unfold Seg34.relationRow3271 at r3271
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3271
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
    have hnextx : seg34AccX24 rho = seg34AccX23 rho + rho 34542 := by
      unfold seg34AccX24 seg34AccX23
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 23]
      ring
    have hnexty : seg34AccY24 rho = seg34AccY23 rho + rho 34543 := by
      unfold seg34AccY24 seg34AccY23
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 23]
      ring
    have ha0 : (rho 34534 + rho 34535) * (seg34AccX23 rho + seg34AccY23 rho) = rho 34536 := by
      unfold seg34AccX23 seg34AccY23
      linear_combination r3264
    have ha1 : rho 34535 * seg34AccX23 rho = rho 34537 := by
      unfold seg34AccX23
      linear_combination r3265
    have ha2 : rho 34534 * seg34AccY23 rho = rho 34538 := by
      unfold seg34AccY23
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
        rw [← hbit]
        unfold seg34AccX23
        linear_combination -r3270
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY24 rho = seg34AccY23 rho - Bool.toZMod bit * (seg34AccY23 rho - rho 34541) := by
      have hd : rho 34543 = Bool.toZMod bit * (rho 34541 - seg34AccY23 rho) := by
        rw [← hbit]
        unfold seg34AccY23
        linear_combination -r3271
      rw [hnexty]
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

theorem seg34_rows24 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3277 rho ∧ Seg34.relationRow3278 rho ∧ Seg34.relationRow3279 rho ∧ Seg34.relationRow3280 rho ∧ Seg34.relationRow3281 rho ∧ Seg34.relationRow3282 rho ∧ Seg34.relationRow3283 rho ∧ Seg34.relationRow3284 rho ∧ Seg34.relationRow3285 rho ∧ Seg34.relationRow3286 rho ∧ Seg34.relationRow3287 rho ∧ Seg34.relationRow3288 rho ∧ Seg34.relationRow3289 rho := by
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
  exact ⟨r3277, r3278, r3279, r3280, r3281, r3282, r3283, r3284, r3285, r3286, r3287, r3288, r3289⟩

theorem seg34_rung24 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34016 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX24 rho : Seg34.F), (seg34AccY24 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34547 : Seg34.F), (rho 34548 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX24 rho : Seg34.F), (seg34AccY24 rho : Seg34.F)⟩
        ⟨(rho 34547 : Seg34.F), (rho 34548 : Seg34.F)⟩
        ⟨(seg34AccX25 rho : Seg34.F), (seg34AccY25 rho : Seg34.F)⟩
        ⟨(rho 34560 : Seg34.F), (rho 34561 : Seg34.F)⟩ := by
  obtain ⟨r3277, r3278, r3279, r3280, r3281, r3282, r3283, r3284, r3285, r3286, r3287, r3288, r3289⟩ := seg34_rows24 rho h
  unfold Seg34.relationRow3277 at r3277
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3277
  unfold Seg34.relationRow3278 at r3278
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3278
  unfold Seg34.relationRow3279 at r3279
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3279
  unfold Seg34.relationRow3280 at r3280
  unfold Seg34.relationRow3281 at r3281
  unfold Seg34.relationRow3282 at r3282
  unfold Seg34.relationRow3283 at r3283
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3283
  unfold Seg34.relationRow3284 at r3284
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3284
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
    have hnextx : seg34AccX25 rho = seg34AccX24 rho + rho 34555 := by
      unfold seg34AccX25 seg34AccX24
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 24]
      ring
    have hnexty : seg34AccY25 rho = seg34AccY24 rho + rho 34556 := by
      unfold seg34AccY25 seg34AccY24
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 24]
      ring
    have ha0 : (rho 34547 + rho 34548) * (seg34AccX24 rho + seg34AccY24 rho) = rho 34549 := by
      unfold seg34AccX24 seg34AccY24
      linear_combination r3277
    have ha1 : rho 34548 * seg34AccX24 rho = rho 34550 := by
      unfold seg34AccX24
      linear_combination r3278
    have ha2 : rho 34547 * seg34AccY24 rho = rho 34551 := by
      unfold seg34AccY24
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
        rw [← hbit]
        unfold seg34AccX24
        linear_combination -r3283
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY25 rho = seg34AccY24 rho - Bool.toZMod bit * (seg34AccY24 rho - rho 34554) := by
      have hd : rho 34556 = Bool.toZMod bit * (rho 34554 - seg34AccY24 rho) := by
        rw [← hbit]
        unfold seg34AccY24
        linear_combination -r3284
      rw [hnexty]
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

theorem seg34_rows25 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3290 rho ∧ Seg34.relationRow3291 rho ∧ Seg34.relationRow3292 rho ∧ Seg34.relationRow3293 rho ∧ Seg34.relationRow3294 rho ∧ Seg34.relationRow3295 rho ∧ Seg34.relationRow3296 rho ∧ Seg34.relationRow3297 rho ∧ Seg34.relationRow3298 rho ∧ Seg34.relationRow3299 rho ∧ Seg34.relationRow3300 rho ∧ Seg34.relationRow3301 rho ∧ Seg34.relationRow3302 rho := by
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
  exact ⟨r3290, r3291, r3292, r3293, r3294, r3295, r3296, r3297, r3298, r3299, r3300, r3301, r3302⟩

theorem seg34_rung25 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34017 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX25 rho : Seg34.F), (seg34AccY25 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34560 : Seg34.F), (rho 34561 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX25 rho : Seg34.F), (seg34AccY25 rho : Seg34.F)⟩
        ⟨(rho 34560 : Seg34.F), (rho 34561 : Seg34.F)⟩
        ⟨(seg34AccX26 rho : Seg34.F), (seg34AccY26 rho : Seg34.F)⟩
        ⟨(rho 34573 : Seg34.F), (rho 34574 : Seg34.F)⟩ := by
  obtain ⟨r3290, r3291, r3292, r3293, r3294, r3295, r3296, r3297, r3298, r3299, r3300, r3301, r3302⟩ := seg34_rows25 rho h
  unfold Seg34.relationRow3290 at r3290
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3290
  unfold Seg34.relationRow3291 at r3291
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3291
  unfold Seg34.relationRow3292 at r3292
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3292
  unfold Seg34.relationRow3293 at r3293
  unfold Seg34.relationRow3294 at r3294
  unfold Seg34.relationRow3295 at r3295
  unfold Seg34.relationRow3296 at r3296
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3296
  unfold Seg34.relationRow3297 at r3297
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3297
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
    have hnextx : seg34AccX26 rho = seg34AccX25 rho + rho 34568 := by
      unfold seg34AccX26 seg34AccX25
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 25]
      ring
    have hnexty : seg34AccY26 rho = seg34AccY25 rho + rho 34569 := by
      unfold seg34AccY26 seg34AccY25
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 25]
      ring
    have ha0 : (rho 34560 + rho 34561) * (seg34AccX25 rho + seg34AccY25 rho) = rho 34562 := by
      unfold seg34AccX25 seg34AccY25
      linear_combination r3290
    have ha1 : rho 34561 * seg34AccX25 rho = rho 34563 := by
      unfold seg34AccX25
      linear_combination r3291
    have ha2 : rho 34560 * seg34AccY25 rho = rho 34564 := by
      unfold seg34AccY25
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
        rw [← hbit]
        unfold seg34AccX25
        linear_combination -r3296
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY26 rho = seg34AccY25 rho - Bool.toZMod bit * (seg34AccY25 rho - rho 34567) := by
      have hd : rho 34569 = Bool.toZMod bit * (rho 34567 - seg34AccY25 rho) := by
        rw [← hbit]
        unfold seg34AccY25
        linear_combination -r3297
      rw [hnexty]
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

theorem seg34_rows26 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3303 rho ∧ Seg34.relationRow3304 rho ∧ Seg34.relationRow3305 rho ∧ Seg34.relationRow3306 rho ∧ Seg34.relationRow3307 rho ∧ Seg34.relationRow3308 rho ∧ Seg34.relationRow3309 rho ∧ Seg34.relationRow3310 rho ∧ Seg34.relationRow3311 rho ∧ Seg34.relationRow3312 rho ∧ Seg34.relationRow3313 rho ∧ Seg34.relationRow3314 rho ∧ Seg34.relationRow3315 rho := by
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
  exact ⟨r3303, r3304, r3305, r3306, r3307, r3308, r3309, r3310, r3311, r3312, r3313, r3314, r3315⟩

theorem seg34_rung26 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34018 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX26 rho : Seg34.F), (seg34AccY26 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34573 : Seg34.F), (rho 34574 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX26 rho : Seg34.F), (seg34AccY26 rho : Seg34.F)⟩
        ⟨(rho 34573 : Seg34.F), (rho 34574 : Seg34.F)⟩
        ⟨(seg34AccX27 rho : Seg34.F), (seg34AccY27 rho : Seg34.F)⟩
        ⟨(rho 34586 : Seg34.F), (rho 34587 : Seg34.F)⟩ := by
  obtain ⟨r3303, r3304, r3305, r3306, r3307, r3308, r3309, r3310, r3311, r3312, r3313, r3314, r3315⟩ := seg34_rows26 rho h
  unfold Seg34.relationRow3303 at r3303
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3303
  unfold Seg34.relationRow3304 at r3304
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3304
  unfold Seg34.relationRow3305 at r3305
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3305
  unfold Seg34.relationRow3306 at r3306
  unfold Seg34.relationRow3307 at r3307
  unfold Seg34.relationRow3308 at r3308
  unfold Seg34.relationRow3309 at r3309
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3309
  unfold Seg34.relationRow3310 at r3310
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3310
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
    have hnextx : seg34AccX27 rho = seg34AccX26 rho + rho 34581 := by
      unfold seg34AccX27 seg34AccX26
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 26]
      ring
    have hnexty : seg34AccY27 rho = seg34AccY26 rho + rho 34582 := by
      unfold seg34AccY27 seg34AccY26
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 26]
      ring
    have ha0 : (rho 34573 + rho 34574) * (seg34AccX26 rho + seg34AccY26 rho) = rho 34575 := by
      unfold seg34AccX26 seg34AccY26
      linear_combination r3303
    have ha1 : rho 34574 * seg34AccX26 rho = rho 34576 := by
      unfold seg34AccX26
      linear_combination r3304
    have ha2 : rho 34573 * seg34AccY26 rho = rho 34577 := by
      unfold seg34AccY26
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
        rw [← hbit]
        unfold seg34AccX26
        linear_combination -r3309
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY27 rho = seg34AccY26 rho - Bool.toZMod bit * (seg34AccY26 rho - rho 34580) := by
      have hd : rho 34582 = Bool.toZMod bit * (rho 34580 - seg34AccY26 rho) := by
        rw [← hbit]
        unfold seg34AccY26
        linear_combination -r3310
      rw [hnexty]
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

theorem seg34_rows27 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3316 rho ∧ Seg34.relationRow3317 rho ∧ Seg34.relationRow3318 rho ∧ Seg34.relationRow3319 rho ∧ Seg34.relationRow3320 rho ∧ Seg34.relationRow3321 rho ∧ Seg34.relationRow3322 rho ∧ Seg34.relationRow3323 rho ∧ Seg34.relationRow3324 rho ∧ Seg34.relationRow3325 rho ∧ Seg34.relationRow3326 rho ∧ Seg34.relationRow3327 rho ∧ Seg34.relationRow3328 rho := by
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
  exact ⟨r3316, r3317, r3318, r3319, r3320, r3321, r3322, r3323, r3324, r3325, r3326, r3327, r3328⟩

theorem seg34_rung27 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34019 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX27 rho : Seg34.F), (seg34AccY27 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34586 : Seg34.F), (rho 34587 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX27 rho : Seg34.F), (seg34AccY27 rho : Seg34.F)⟩
        ⟨(rho 34586 : Seg34.F), (rho 34587 : Seg34.F)⟩
        ⟨(seg34AccX28 rho : Seg34.F), (seg34AccY28 rho : Seg34.F)⟩
        ⟨(rho 34599 : Seg34.F), (rho 34600 : Seg34.F)⟩ := by
  obtain ⟨r3316, r3317, r3318, r3319, r3320, r3321, r3322, r3323, r3324, r3325, r3326, r3327, r3328⟩ := seg34_rows27 rho h
  unfold Seg34.relationRow3316 at r3316
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3316
  unfold Seg34.relationRow3317 at r3317
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3317
  unfold Seg34.relationRow3318 at r3318
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3318
  unfold Seg34.relationRow3319 at r3319
  unfold Seg34.relationRow3320 at r3320
  unfold Seg34.relationRow3321 at r3321
  unfold Seg34.relationRow3322 at r3322
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3322
  unfold Seg34.relationRow3323 at r3323
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3323
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
    have hnextx : seg34AccX28 rho = seg34AccX27 rho + rho 34594 := by
      unfold seg34AccX28 seg34AccX27
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 27]
      ring
    have hnexty : seg34AccY28 rho = seg34AccY27 rho + rho 34595 := by
      unfold seg34AccY28 seg34AccY27
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 27]
      ring
    have ha0 : (rho 34586 + rho 34587) * (seg34AccX27 rho + seg34AccY27 rho) = rho 34588 := by
      unfold seg34AccX27 seg34AccY27
      linear_combination r3316
    have ha1 : rho 34587 * seg34AccX27 rho = rho 34589 := by
      unfold seg34AccX27
      linear_combination r3317
    have ha2 : rho 34586 * seg34AccY27 rho = rho 34590 := by
      unfold seg34AccY27
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
        rw [← hbit]
        unfold seg34AccX27
        linear_combination -r3322
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY28 rho = seg34AccY27 rho - Bool.toZMod bit * (seg34AccY27 rho - rho 34593) := by
      have hd : rho 34595 = Bool.toZMod bit * (rho 34593 - seg34AccY27 rho) := by
        rw [← hbit]
        unfold seg34AccY27
        linear_combination -r3323
      rw [hnexty]
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

theorem seg34_rows28 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3329 rho ∧ Seg34.relationRow3330 rho ∧ Seg34.relationRow3331 rho ∧ Seg34.relationRow3332 rho ∧ Seg34.relationRow3333 rho ∧ Seg34.relationRow3334 rho ∧ Seg34.relationRow3335 rho ∧ Seg34.relationRow3336 rho ∧ Seg34.relationRow3337 rho ∧ Seg34.relationRow3338 rho ∧ Seg34.relationRow3339 rho ∧ Seg34.relationRow3340 rho ∧ Seg34.relationRow3341 rho := by
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
  exact ⟨r3329, r3330, r3331, r3332, r3333, r3334, r3335, r3336, r3337, r3338, r3339, r3340, r3341⟩

theorem seg34_rung28 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34020 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX28 rho : Seg34.F), (seg34AccY28 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34599 : Seg34.F), (rho 34600 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX28 rho : Seg34.F), (seg34AccY28 rho : Seg34.F)⟩
        ⟨(rho 34599 : Seg34.F), (rho 34600 : Seg34.F)⟩
        ⟨(seg34AccX29 rho : Seg34.F), (seg34AccY29 rho : Seg34.F)⟩
        ⟨(rho 34612 : Seg34.F), (rho 34613 : Seg34.F)⟩ := by
  obtain ⟨r3329, r3330, r3331, r3332, r3333, r3334, r3335, r3336, r3337, r3338, r3339, r3340, r3341⟩ := seg34_rows28 rho h
  unfold Seg34.relationRow3329 at r3329
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3329
  unfold Seg34.relationRow3330 at r3330
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3330
  unfold Seg34.relationRow3331 at r3331
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3331
  unfold Seg34.relationRow3332 at r3332
  unfold Seg34.relationRow3333 at r3333
  unfold Seg34.relationRow3334 at r3334
  unfold Seg34.relationRow3335 at r3335
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3335
  unfold Seg34.relationRow3336 at r3336
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3336
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
    have hnextx : seg34AccX29 rho = seg34AccX28 rho + rho 34607 := by
      unfold seg34AccX29 seg34AccX28
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 28]
      ring
    have hnexty : seg34AccY29 rho = seg34AccY28 rho + rho 34608 := by
      unfold seg34AccY29 seg34AccY28
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 28]
      ring
    have ha0 : (rho 34599 + rho 34600) * (seg34AccX28 rho + seg34AccY28 rho) = rho 34601 := by
      unfold seg34AccX28 seg34AccY28
      linear_combination r3329
    have ha1 : rho 34600 * seg34AccX28 rho = rho 34602 := by
      unfold seg34AccX28
      linear_combination r3330
    have ha2 : rho 34599 * seg34AccY28 rho = rho 34603 := by
      unfold seg34AccY28
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
        rw [← hbit]
        unfold seg34AccX28
        linear_combination -r3335
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY29 rho = seg34AccY28 rho - Bool.toZMod bit * (seg34AccY28 rho - rho 34606) := by
      have hd : rho 34608 = Bool.toZMod bit * (rho 34606 - seg34AccY28 rho) := by
        rw [← hbit]
        unfold seg34AccY28
        linear_combination -r3336
      rw [hnexty]
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

theorem seg34_rows29 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3342 rho ∧ Seg34.relationRow3343 rho ∧ Seg34.relationRow3344 rho ∧ Seg34.relationRow3345 rho ∧ Seg34.relationRow3346 rho ∧ Seg34.relationRow3347 rho ∧ Seg34.relationRow3348 rho ∧ Seg34.relationRow3349 rho ∧ Seg34.relationRow3350 rho ∧ Seg34.relationRow3351 rho ∧ Seg34.relationRow3352 rho ∧ Seg34.relationRow3353 rho ∧ Seg34.relationRow3354 rho := by
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
  exact ⟨r3342, r3343, r3344, r3345, r3346, r3347, r3348, r3349, r3350, r3351, r3352, r3353, r3354⟩

theorem seg34_rung29 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34021 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX29 rho : Seg34.F), (seg34AccY29 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34612 : Seg34.F), (rho 34613 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX29 rho : Seg34.F), (seg34AccY29 rho : Seg34.F)⟩
        ⟨(rho 34612 : Seg34.F), (rho 34613 : Seg34.F)⟩
        ⟨(seg34AccX30 rho : Seg34.F), (seg34AccY30 rho : Seg34.F)⟩
        ⟨(rho 34625 : Seg34.F), (rho 34626 : Seg34.F)⟩ := by
  obtain ⟨r3342, r3343, r3344, r3345, r3346, r3347, r3348, r3349, r3350, r3351, r3352, r3353, r3354⟩ := seg34_rows29 rho h
  unfold Seg34.relationRow3342 at r3342
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3342
  unfold Seg34.relationRow3343 at r3343
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3343
  unfold Seg34.relationRow3344 at r3344
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3344
  unfold Seg34.relationRow3345 at r3345
  unfold Seg34.relationRow3346 at r3346
  unfold Seg34.relationRow3347 at r3347
  unfold Seg34.relationRow3348 at r3348
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3348
  unfold Seg34.relationRow3349 at r3349
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3349
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
    have hnextx : seg34AccX30 rho = seg34AccX29 rho + rho 34620 := by
      unfold seg34AccX30 seg34AccX29
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 29]
      ring
    have hnexty : seg34AccY30 rho = seg34AccY29 rho + rho 34621 := by
      unfold seg34AccY30 seg34AccY29
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 29]
      ring
    have ha0 : (rho 34612 + rho 34613) * (seg34AccX29 rho + seg34AccY29 rho) = rho 34614 := by
      unfold seg34AccX29 seg34AccY29
      linear_combination r3342
    have ha1 : rho 34613 * seg34AccX29 rho = rho 34615 := by
      unfold seg34AccX29
      linear_combination r3343
    have ha2 : rho 34612 * seg34AccY29 rho = rho 34616 := by
      unfold seg34AccY29
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
        rw [← hbit]
        unfold seg34AccX29
        linear_combination -r3348
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY30 rho = seg34AccY29 rho - Bool.toZMod bit * (seg34AccY29 rho - rho 34619) := by
      have hd : rho 34621 = Bool.toZMod bit * (rho 34619 - seg34AccY29 rho) := by
        rw [← hbit]
        unfold seg34AccY29
        linear_combination -r3349
      rw [hnexty]
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

theorem seg34_rows30 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3355 rho ∧ Seg34.relationRow3356 rho ∧ Seg34.relationRow3357 rho ∧ Seg34.relationRow3358 rho ∧ Seg34.relationRow3359 rho ∧ Seg34.relationRow3360 rho ∧ Seg34.relationRow3361 rho ∧ Seg34.relationRow3362 rho ∧ Seg34.relationRow3363 rho ∧ Seg34.relationRow3364 rho ∧ Seg34.relationRow3365 rho ∧ Seg34.relationRow3366 rho ∧ Seg34.relationRow3367 rho := by
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
  exact ⟨r3355, r3356, r3357, r3358, r3359, r3360, r3361, r3362, r3363, r3364, r3365, r3366, r3367⟩

theorem seg34_rung30 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34022 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX30 rho : Seg34.F), (seg34AccY30 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34625 : Seg34.F), (rho 34626 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX30 rho : Seg34.F), (seg34AccY30 rho : Seg34.F)⟩
        ⟨(rho 34625 : Seg34.F), (rho 34626 : Seg34.F)⟩
        ⟨(seg34AccX31 rho : Seg34.F), (seg34AccY31 rho : Seg34.F)⟩
        ⟨(rho 34638 : Seg34.F), (rho 34639 : Seg34.F)⟩ := by
  obtain ⟨r3355, r3356, r3357, r3358, r3359, r3360, r3361, r3362, r3363, r3364, r3365, r3366, r3367⟩ := seg34_rows30 rho h
  unfold Seg34.relationRow3355 at r3355
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3355
  unfold Seg34.relationRow3356 at r3356
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3356
  unfold Seg34.relationRow3357 at r3357
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3357
  unfold Seg34.relationRow3358 at r3358
  unfold Seg34.relationRow3359 at r3359
  unfold Seg34.relationRow3360 at r3360
  unfold Seg34.relationRow3361 at r3361
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3361
  unfold Seg34.relationRow3362 at r3362
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3362
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
    have hnextx : seg34AccX31 rho = seg34AccX30 rho + rho 34633 := by
      unfold seg34AccX31 seg34AccX30
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 30]
      ring
    have hnexty : seg34AccY31 rho = seg34AccY30 rho + rho 34634 := by
      unfold seg34AccY31 seg34AccY30
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 30]
      ring
    have ha0 : (rho 34625 + rho 34626) * (seg34AccX30 rho + seg34AccY30 rho) = rho 34627 := by
      unfold seg34AccX30 seg34AccY30
      linear_combination r3355
    have ha1 : rho 34626 * seg34AccX30 rho = rho 34628 := by
      unfold seg34AccX30
      linear_combination r3356
    have ha2 : rho 34625 * seg34AccY30 rho = rho 34629 := by
      unfold seg34AccY30
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
        rw [← hbit]
        unfold seg34AccX30
        linear_combination -r3361
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY31 rho = seg34AccY30 rho - Bool.toZMod bit * (seg34AccY30 rho - rho 34632) := by
      have hd : rho 34634 = Bool.toZMod bit * (rho 34632 - seg34AccY30 rho) := by
        rw [← hbit]
        unfold seg34AccY30
        linear_combination -r3362
      rw [hnexty]
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

theorem seg34_rows31 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3368 rho ∧ Seg34.relationRow3369 rho ∧ Seg34.relationRow3370 rho ∧ Seg34.relationRow3371 rho ∧ Seg34.relationRow3372 rho ∧ Seg34.relationRow3373 rho ∧ Seg34.relationRow3374 rho ∧ Seg34.relationRow3375 rho ∧ Seg34.relationRow3376 rho ∧ Seg34.relationRow3377 rho ∧ Seg34.relationRow3378 rho ∧ Seg34.relationRow3379 rho ∧ Seg34.relationRow3380 rho := by
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
  exact ⟨r3368, r3369, r3370, r3371, r3372, r3373, r3374, r3375, r3376, r3377, r3378, r3379, r3380⟩

theorem seg34_rung31 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34023 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX31 rho : Seg34.F), (seg34AccY31 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34638 : Seg34.F), (rho 34639 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX31 rho : Seg34.F), (seg34AccY31 rho : Seg34.F)⟩
        ⟨(rho 34638 : Seg34.F), (rho 34639 : Seg34.F)⟩
        ⟨(seg34AccX32 rho : Seg34.F), (seg34AccY32 rho : Seg34.F)⟩
        ⟨(rho 34651 : Seg34.F), (rho 34652 : Seg34.F)⟩ := by
  obtain ⟨r3368, r3369, r3370, r3371, r3372, r3373, r3374, r3375, r3376, r3377, r3378, r3379, r3380⟩ := seg34_rows31 rho h
  unfold Seg34.relationRow3368 at r3368
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3368
  unfold Seg34.relationRow3369 at r3369
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3369
  unfold Seg34.relationRow3370 at r3370
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3370
  unfold Seg34.relationRow3371 at r3371
  unfold Seg34.relationRow3372 at r3372
  unfold Seg34.relationRow3373 at r3373
  unfold Seg34.relationRow3374 at r3374
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3374
  unfold Seg34.relationRow3375 at r3375
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3375
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
    have hnextx : seg34AccX32 rho = seg34AccX31 rho + rho 34646 := by
      unfold seg34AccX32 seg34AccX31
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 31]
      ring
    have hnexty : seg34AccY32 rho = seg34AccY31 rho + rho 34647 := by
      unfold seg34AccY32 seg34AccY31
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 31]
      ring
    have ha0 : (rho 34638 + rho 34639) * (seg34AccX31 rho + seg34AccY31 rho) = rho 34640 := by
      unfold seg34AccX31 seg34AccY31
      linear_combination r3368
    have ha1 : rho 34639 * seg34AccX31 rho = rho 34641 := by
      unfold seg34AccX31
      linear_combination r3369
    have ha2 : rho 34638 * seg34AccY31 rho = rho 34642 := by
      unfold seg34AccY31
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
        rw [← hbit]
        unfold seg34AccX31
        linear_combination -r3374
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY32 rho = seg34AccY31 rho - Bool.toZMod bit * (seg34AccY31 rho - rho 34645) := by
      have hd : rho 34647 = Bool.toZMod bit * (rho 34645 - seg34AccY31 rho) := by
        rw [← hbit]
        unfold seg34AccY31
        linear_combination -r3375
      rw [hnexty]
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

theorem seg34_rows32 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3381 rho ∧ Seg34.relationRow3382 rho ∧ Seg34.relationRow3383 rho ∧ Seg34.relationRow3384 rho ∧ Seg34.relationRow3385 rho ∧ Seg34.relationRow3386 rho ∧ Seg34.relationRow3387 rho ∧ Seg34.relationRow3388 rho ∧ Seg34.relationRow3389 rho ∧ Seg34.relationRow3390 rho ∧ Seg34.relationRow3391 rho ∧ Seg34.relationRow3392 rho ∧ Seg34.relationRow3393 rho := by
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
  exact ⟨r3381, r3382, r3383, r3384, r3385, r3386, r3387, r3388, r3389, r3390, r3391, r3392, r3393⟩

theorem seg34_rung32 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34024 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX32 rho : Seg34.F), (seg34AccY32 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34651 : Seg34.F), (rho 34652 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX32 rho : Seg34.F), (seg34AccY32 rho : Seg34.F)⟩
        ⟨(rho 34651 : Seg34.F), (rho 34652 : Seg34.F)⟩
        ⟨(seg34AccX33 rho : Seg34.F), (seg34AccY33 rho : Seg34.F)⟩
        ⟨(rho 34664 : Seg34.F), (rho 34665 : Seg34.F)⟩ := by
  obtain ⟨r3381, r3382, r3383, r3384, r3385, r3386, r3387, r3388, r3389, r3390, r3391, r3392, r3393⟩ := seg34_rows32 rho h
  unfold Seg34.relationRow3381 at r3381
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3381
  unfold Seg34.relationRow3382 at r3382
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3382
  unfold Seg34.relationRow3383 at r3383
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3383
  unfold Seg34.relationRow3384 at r3384
  unfold Seg34.relationRow3385 at r3385
  unfold Seg34.relationRow3386 at r3386
  unfold Seg34.relationRow3387 at r3387
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3387
  unfold Seg34.relationRow3388 at r3388
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3388
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
    have hnextx : seg34AccX33 rho = seg34AccX32 rho + rho 34659 := by
      unfold seg34AccX33 seg34AccX32
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 32]
      ring
    have hnexty : seg34AccY33 rho = seg34AccY32 rho + rho 34660 := by
      unfold seg34AccY33 seg34AccY32
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 32]
      ring
    have ha0 : (rho 34651 + rho 34652) * (seg34AccX32 rho + seg34AccY32 rho) = rho 34653 := by
      unfold seg34AccX32 seg34AccY32
      linear_combination r3381
    have ha1 : rho 34652 * seg34AccX32 rho = rho 34654 := by
      unfold seg34AccX32
      linear_combination r3382
    have ha2 : rho 34651 * seg34AccY32 rho = rho 34655 := by
      unfold seg34AccY32
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
        rw [← hbit]
        unfold seg34AccX32
        linear_combination -r3387
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY33 rho = seg34AccY32 rho - Bool.toZMod bit * (seg34AccY32 rho - rho 34658) := by
      have hd : rho 34660 = Bool.toZMod bit * (rho 34658 - seg34AccY32 rho) := by
        rw [← hbit]
        unfold seg34AccY32
        linear_combination -r3388
      rw [hnexty]
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

theorem seg34_hstep_c2 (rho : Nat -> Seg34.F) (h : Seg34.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (33992 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 22 ≤ i → i < 33 →
      EdwardsBridge.onCurve (seg34LadderAccState rho i) →
      EdwardsBridge.onCurve (seg34LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg34LadderAccState rho i) (seg34LadderCurState rho i)
        (seg34LadderAccState rho (i + 1)) (seg34LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
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
  · exact seg34_rung32 rho h bits[32]! (hbitAt 32 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
