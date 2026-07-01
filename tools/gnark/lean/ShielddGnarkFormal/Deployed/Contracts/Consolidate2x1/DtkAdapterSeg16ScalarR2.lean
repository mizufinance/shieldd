import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg16_rows22 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3251 rho ∧ Seg16.relationRow3252 rho ∧ Seg16.relationRow3253 rho ∧ Seg16.relationRow3254 rho ∧ Seg16.relationRow3255 rho ∧ Seg16.relationRow3256 rho ∧ Seg16.relationRow3257 rho ∧ Seg16.relationRow3258 rho ∧ Seg16.relationRow3259 rho ∧ Seg16.relationRow3260 rho ∧ Seg16.relationRow3261 rho ∧ Seg16.relationRow3262 rho ∧ Seg16.relationRow3263 rho := by
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
  exact ⟨r3251, r3252, r3253, r3254, r3255, r3256, r3257, r3258, r3259, r3260, r3261, r3262, r3263⟩

theorem seg16_rung22 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15314 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX22 rho : Seg16.F), (seg16AccY22 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15821 : Seg16.F), (rho 15822 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX22 rho : Seg16.F), (seg16AccY22 rho : Seg16.F)⟩
        ⟨(rho 15821 : Seg16.F), (rho 15822 : Seg16.F)⟩
        ⟨(seg16AccX23 rho : Seg16.F), (seg16AccY23 rho : Seg16.F)⟩
        ⟨(rho 15834 : Seg16.F), (rho 15835 : Seg16.F)⟩ := by
  obtain ⟨r3251, r3252, r3253, r3254, r3255, r3256, r3257, r3258, r3259, r3260, r3261, r3262, r3263⟩ := seg16_rows22 rho h
  unfold Seg16.relationRow3251 at r3251
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3251
  unfold Seg16.relationRow3252 at r3252
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3252
  unfold Seg16.relationRow3253 at r3253
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3253
  unfold Seg16.relationRow3254 at r3254
  unfold Seg16.relationRow3255 at r3255
  unfold Seg16.relationRow3256 at r3256
  unfold Seg16.relationRow3257 at r3257
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3257
  unfold Seg16.relationRow3258 at r3258
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3258
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
    have hnextx : seg16AccX23 rho = seg16AccX22 rho + rho 15829 := by
      unfold seg16AccX23 seg16AccX22
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 22]
      ring
    have hnexty : seg16AccY23 rho = seg16AccY22 rho + rho 15830 := by
      unfold seg16AccY23 seg16AccY22
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 22]
      ring
    have ha0 : (rho 15821 + rho 15822) * (seg16AccX22 rho + seg16AccY22 rho) = rho 15823 := by
      unfold seg16AccX22 seg16AccY22
      linear_combination r3251
    have ha1 : rho 15822 * seg16AccX22 rho = rho 15824 := by
      unfold seg16AccX22
      linear_combination r3252
    have ha2 : rho 15821 * seg16AccY22 rho = rho 15825 := by
      unfold seg16AccY22
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
        rw [← hbit]
        unfold seg16AccX22
        linear_combination -r3257
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY23 rho = seg16AccY22 rho - Bool.toZMod bit * (seg16AccY22 rho - rho 15828) := by
      have hd : rho 15830 = Bool.toZMod bit * (rho 15828 - seg16AccY22 rho) := by
        rw [← hbit]
        unfold seg16AccY22
        linear_combination -r3258
      rw [hnexty]
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

theorem seg16_rows23 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3264 rho ∧ Seg16.relationRow3265 rho ∧ Seg16.relationRow3266 rho ∧ Seg16.relationRow3267 rho ∧ Seg16.relationRow3268 rho ∧ Seg16.relationRow3269 rho ∧ Seg16.relationRow3270 rho ∧ Seg16.relationRow3271 rho ∧ Seg16.relationRow3272 rho ∧ Seg16.relationRow3273 rho ∧ Seg16.relationRow3274 rho ∧ Seg16.relationRow3275 rho ∧ Seg16.relationRow3276 rho := by
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
  exact ⟨r3264, r3265, r3266, r3267, r3268, r3269, r3270, r3271, r3272, r3273, r3274, r3275, r3276⟩

theorem seg16_rung23 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15315 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX23 rho : Seg16.F), (seg16AccY23 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15834 : Seg16.F), (rho 15835 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX23 rho : Seg16.F), (seg16AccY23 rho : Seg16.F)⟩
        ⟨(rho 15834 : Seg16.F), (rho 15835 : Seg16.F)⟩
        ⟨(seg16AccX24 rho : Seg16.F), (seg16AccY24 rho : Seg16.F)⟩
        ⟨(rho 15847 : Seg16.F), (rho 15848 : Seg16.F)⟩ := by
  obtain ⟨r3264, r3265, r3266, r3267, r3268, r3269, r3270, r3271, r3272, r3273, r3274, r3275, r3276⟩ := seg16_rows23 rho h
  unfold Seg16.relationRow3264 at r3264
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3264
  unfold Seg16.relationRow3265 at r3265
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3265
  unfold Seg16.relationRow3266 at r3266
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3266
  unfold Seg16.relationRow3267 at r3267
  unfold Seg16.relationRow3268 at r3268
  unfold Seg16.relationRow3269 at r3269
  unfold Seg16.relationRow3270 at r3270
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3270
  unfold Seg16.relationRow3271 at r3271
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3271
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
    have hnextx : seg16AccX24 rho = seg16AccX23 rho + rho 15842 := by
      unfold seg16AccX24 seg16AccX23
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 23]
      ring
    have hnexty : seg16AccY24 rho = seg16AccY23 rho + rho 15843 := by
      unfold seg16AccY24 seg16AccY23
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 23]
      ring
    have ha0 : (rho 15834 + rho 15835) * (seg16AccX23 rho + seg16AccY23 rho) = rho 15836 := by
      unfold seg16AccX23 seg16AccY23
      linear_combination r3264
    have ha1 : rho 15835 * seg16AccX23 rho = rho 15837 := by
      unfold seg16AccX23
      linear_combination r3265
    have ha2 : rho 15834 * seg16AccY23 rho = rho 15838 := by
      unfold seg16AccY23
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
        rw [← hbit]
        unfold seg16AccX23
        linear_combination -r3270
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY24 rho = seg16AccY23 rho - Bool.toZMod bit * (seg16AccY23 rho - rho 15841) := by
      have hd : rho 15843 = Bool.toZMod bit * (rho 15841 - seg16AccY23 rho) := by
        rw [← hbit]
        unfold seg16AccY23
        linear_combination -r3271
      rw [hnexty]
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

theorem seg16_rows24 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3277 rho ∧ Seg16.relationRow3278 rho ∧ Seg16.relationRow3279 rho ∧ Seg16.relationRow3280 rho ∧ Seg16.relationRow3281 rho ∧ Seg16.relationRow3282 rho ∧ Seg16.relationRow3283 rho ∧ Seg16.relationRow3284 rho ∧ Seg16.relationRow3285 rho ∧ Seg16.relationRow3286 rho ∧ Seg16.relationRow3287 rho ∧ Seg16.relationRow3288 rho ∧ Seg16.relationRow3289 rho := by
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
  exact ⟨r3277, r3278, r3279, r3280, r3281, r3282, r3283, r3284, r3285, r3286, r3287, r3288, r3289⟩

theorem seg16_rung24 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15316 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX24 rho : Seg16.F), (seg16AccY24 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15847 : Seg16.F), (rho 15848 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX24 rho : Seg16.F), (seg16AccY24 rho : Seg16.F)⟩
        ⟨(rho 15847 : Seg16.F), (rho 15848 : Seg16.F)⟩
        ⟨(seg16AccX25 rho : Seg16.F), (seg16AccY25 rho : Seg16.F)⟩
        ⟨(rho 15860 : Seg16.F), (rho 15861 : Seg16.F)⟩ := by
  obtain ⟨r3277, r3278, r3279, r3280, r3281, r3282, r3283, r3284, r3285, r3286, r3287, r3288, r3289⟩ := seg16_rows24 rho h
  unfold Seg16.relationRow3277 at r3277
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3277
  unfold Seg16.relationRow3278 at r3278
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3278
  unfold Seg16.relationRow3279 at r3279
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3279
  unfold Seg16.relationRow3280 at r3280
  unfold Seg16.relationRow3281 at r3281
  unfold Seg16.relationRow3282 at r3282
  unfold Seg16.relationRow3283 at r3283
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3283
  unfold Seg16.relationRow3284 at r3284
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3284
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
    have hnextx : seg16AccX25 rho = seg16AccX24 rho + rho 15855 := by
      unfold seg16AccX25 seg16AccX24
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 24]
      ring
    have hnexty : seg16AccY25 rho = seg16AccY24 rho + rho 15856 := by
      unfold seg16AccY25 seg16AccY24
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 24]
      ring
    have ha0 : (rho 15847 + rho 15848) * (seg16AccX24 rho + seg16AccY24 rho) = rho 15849 := by
      unfold seg16AccX24 seg16AccY24
      linear_combination r3277
    have ha1 : rho 15848 * seg16AccX24 rho = rho 15850 := by
      unfold seg16AccX24
      linear_combination r3278
    have ha2 : rho 15847 * seg16AccY24 rho = rho 15851 := by
      unfold seg16AccY24
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
        rw [← hbit]
        unfold seg16AccX24
        linear_combination -r3283
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY25 rho = seg16AccY24 rho - Bool.toZMod bit * (seg16AccY24 rho - rho 15854) := by
      have hd : rho 15856 = Bool.toZMod bit * (rho 15854 - seg16AccY24 rho) := by
        rw [← hbit]
        unfold seg16AccY24
        linear_combination -r3284
      rw [hnexty]
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

theorem seg16_rows25 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3290 rho ∧ Seg16.relationRow3291 rho ∧ Seg16.relationRow3292 rho ∧ Seg16.relationRow3293 rho ∧ Seg16.relationRow3294 rho ∧ Seg16.relationRow3295 rho ∧ Seg16.relationRow3296 rho ∧ Seg16.relationRow3297 rho ∧ Seg16.relationRow3298 rho ∧ Seg16.relationRow3299 rho ∧ Seg16.relationRow3300 rho ∧ Seg16.relationRow3301 rho ∧ Seg16.relationRow3302 rho := by
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
  exact ⟨r3290, r3291, r3292, r3293, r3294, r3295, r3296, r3297, r3298, r3299, r3300, r3301, r3302⟩

theorem seg16_rung25 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15317 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX25 rho : Seg16.F), (seg16AccY25 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15860 : Seg16.F), (rho 15861 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX25 rho : Seg16.F), (seg16AccY25 rho : Seg16.F)⟩
        ⟨(rho 15860 : Seg16.F), (rho 15861 : Seg16.F)⟩
        ⟨(seg16AccX26 rho : Seg16.F), (seg16AccY26 rho : Seg16.F)⟩
        ⟨(rho 15873 : Seg16.F), (rho 15874 : Seg16.F)⟩ := by
  obtain ⟨r3290, r3291, r3292, r3293, r3294, r3295, r3296, r3297, r3298, r3299, r3300, r3301, r3302⟩ := seg16_rows25 rho h
  unfold Seg16.relationRow3290 at r3290
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3290
  unfold Seg16.relationRow3291 at r3291
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3291
  unfold Seg16.relationRow3292 at r3292
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3292
  unfold Seg16.relationRow3293 at r3293
  unfold Seg16.relationRow3294 at r3294
  unfold Seg16.relationRow3295 at r3295
  unfold Seg16.relationRow3296 at r3296
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3296
  unfold Seg16.relationRow3297 at r3297
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3297
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
    have hnextx : seg16AccX26 rho = seg16AccX25 rho + rho 15868 := by
      unfold seg16AccX26 seg16AccX25
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 25]
      ring
    have hnexty : seg16AccY26 rho = seg16AccY25 rho + rho 15869 := by
      unfold seg16AccY26 seg16AccY25
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 25]
      ring
    have ha0 : (rho 15860 + rho 15861) * (seg16AccX25 rho + seg16AccY25 rho) = rho 15862 := by
      unfold seg16AccX25 seg16AccY25
      linear_combination r3290
    have ha1 : rho 15861 * seg16AccX25 rho = rho 15863 := by
      unfold seg16AccX25
      linear_combination r3291
    have ha2 : rho 15860 * seg16AccY25 rho = rho 15864 := by
      unfold seg16AccY25
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
        rw [← hbit]
        unfold seg16AccX25
        linear_combination -r3296
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY26 rho = seg16AccY25 rho - Bool.toZMod bit * (seg16AccY25 rho - rho 15867) := by
      have hd : rho 15869 = Bool.toZMod bit * (rho 15867 - seg16AccY25 rho) := by
        rw [← hbit]
        unfold seg16AccY25
        linear_combination -r3297
      rw [hnexty]
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

theorem seg16_rows26 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3303 rho ∧ Seg16.relationRow3304 rho ∧ Seg16.relationRow3305 rho ∧ Seg16.relationRow3306 rho ∧ Seg16.relationRow3307 rho ∧ Seg16.relationRow3308 rho ∧ Seg16.relationRow3309 rho ∧ Seg16.relationRow3310 rho ∧ Seg16.relationRow3311 rho ∧ Seg16.relationRow3312 rho ∧ Seg16.relationRow3313 rho ∧ Seg16.relationRow3314 rho ∧ Seg16.relationRow3315 rho := by
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
  exact ⟨r3303, r3304, r3305, r3306, r3307, r3308, r3309, r3310, r3311, r3312, r3313, r3314, r3315⟩

theorem seg16_rung26 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15318 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX26 rho : Seg16.F), (seg16AccY26 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15873 : Seg16.F), (rho 15874 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX26 rho : Seg16.F), (seg16AccY26 rho : Seg16.F)⟩
        ⟨(rho 15873 : Seg16.F), (rho 15874 : Seg16.F)⟩
        ⟨(seg16AccX27 rho : Seg16.F), (seg16AccY27 rho : Seg16.F)⟩
        ⟨(rho 15886 : Seg16.F), (rho 15887 : Seg16.F)⟩ := by
  obtain ⟨r3303, r3304, r3305, r3306, r3307, r3308, r3309, r3310, r3311, r3312, r3313, r3314, r3315⟩ := seg16_rows26 rho h
  unfold Seg16.relationRow3303 at r3303
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3303
  unfold Seg16.relationRow3304 at r3304
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3304
  unfold Seg16.relationRow3305 at r3305
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3305
  unfold Seg16.relationRow3306 at r3306
  unfold Seg16.relationRow3307 at r3307
  unfold Seg16.relationRow3308 at r3308
  unfold Seg16.relationRow3309 at r3309
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3309
  unfold Seg16.relationRow3310 at r3310
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3310
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
    have hnextx : seg16AccX27 rho = seg16AccX26 rho + rho 15881 := by
      unfold seg16AccX27 seg16AccX26
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 26]
      ring
    have hnexty : seg16AccY27 rho = seg16AccY26 rho + rho 15882 := by
      unfold seg16AccY27 seg16AccY26
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 26]
      ring
    have ha0 : (rho 15873 + rho 15874) * (seg16AccX26 rho + seg16AccY26 rho) = rho 15875 := by
      unfold seg16AccX26 seg16AccY26
      linear_combination r3303
    have ha1 : rho 15874 * seg16AccX26 rho = rho 15876 := by
      unfold seg16AccX26
      linear_combination r3304
    have ha2 : rho 15873 * seg16AccY26 rho = rho 15877 := by
      unfold seg16AccY26
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
        rw [← hbit]
        unfold seg16AccX26
        linear_combination -r3309
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY27 rho = seg16AccY26 rho - Bool.toZMod bit * (seg16AccY26 rho - rho 15880) := by
      have hd : rho 15882 = Bool.toZMod bit * (rho 15880 - seg16AccY26 rho) := by
        rw [← hbit]
        unfold seg16AccY26
        linear_combination -r3310
      rw [hnexty]
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

theorem seg16_rows27 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3316 rho ∧ Seg16.relationRow3317 rho ∧ Seg16.relationRow3318 rho ∧ Seg16.relationRow3319 rho ∧ Seg16.relationRow3320 rho ∧ Seg16.relationRow3321 rho ∧ Seg16.relationRow3322 rho ∧ Seg16.relationRow3323 rho ∧ Seg16.relationRow3324 rho ∧ Seg16.relationRow3325 rho ∧ Seg16.relationRow3326 rho ∧ Seg16.relationRow3327 rho ∧ Seg16.relationRow3328 rho := by
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
  exact ⟨r3316, r3317, r3318, r3319, r3320, r3321, r3322, r3323, r3324, r3325, r3326, r3327, r3328⟩

theorem seg16_rung27 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15319 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX27 rho : Seg16.F), (seg16AccY27 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15886 : Seg16.F), (rho 15887 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX27 rho : Seg16.F), (seg16AccY27 rho : Seg16.F)⟩
        ⟨(rho 15886 : Seg16.F), (rho 15887 : Seg16.F)⟩
        ⟨(seg16AccX28 rho : Seg16.F), (seg16AccY28 rho : Seg16.F)⟩
        ⟨(rho 15899 : Seg16.F), (rho 15900 : Seg16.F)⟩ := by
  obtain ⟨r3316, r3317, r3318, r3319, r3320, r3321, r3322, r3323, r3324, r3325, r3326, r3327, r3328⟩ := seg16_rows27 rho h
  unfold Seg16.relationRow3316 at r3316
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3316
  unfold Seg16.relationRow3317 at r3317
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3317
  unfold Seg16.relationRow3318 at r3318
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3318
  unfold Seg16.relationRow3319 at r3319
  unfold Seg16.relationRow3320 at r3320
  unfold Seg16.relationRow3321 at r3321
  unfold Seg16.relationRow3322 at r3322
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3322
  unfold Seg16.relationRow3323 at r3323
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3323
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
    have hnextx : seg16AccX28 rho = seg16AccX27 rho + rho 15894 := by
      unfold seg16AccX28 seg16AccX27
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 27]
      ring
    have hnexty : seg16AccY28 rho = seg16AccY27 rho + rho 15895 := by
      unfold seg16AccY28 seg16AccY27
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 27]
      ring
    have ha0 : (rho 15886 + rho 15887) * (seg16AccX27 rho + seg16AccY27 rho) = rho 15888 := by
      unfold seg16AccX27 seg16AccY27
      linear_combination r3316
    have ha1 : rho 15887 * seg16AccX27 rho = rho 15889 := by
      unfold seg16AccX27
      linear_combination r3317
    have ha2 : rho 15886 * seg16AccY27 rho = rho 15890 := by
      unfold seg16AccY27
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
        rw [← hbit]
        unfold seg16AccX27
        linear_combination -r3322
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY28 rho = seg16AccY27 rho - Bool.toZMod bit * (seg16AccY27 rho - rho 15893) := by
      have hd : rho 15895 = Bool.toZMod bit * (rho 15893 - seg16AccY27 rho) := by
        rw [← hbit]
        unfold seg16AccY27
        linear_combination -r3323
      rw [hnexty]
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

theorem seg16_rows28 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3329 rho ∧ Seg16.relationRow3330 rho ∧ Seg16.relationRow3331 rho ∧ Seg16.relationRow3332 rho ∧ Seg16.relationRow3333 rho ∧ Seg16.relationRow3334 rho ∧ Seg16.relationRow3335 rho ∧ Seg16.relationRow3336 rho ∧ Seg16.relationRow3337 rho ∧ Seg16.relationRow3338 rho ∧ Seg16.relationRow3339 rho ∧ Seg16.relationRow3340 rho ∧ Seg16.relationRow3341 rho := by
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
  exact ⟨r3329, r3330, r3331, r3332, r3333, r3334, r3335, r3336, r3337, r3338, r3339, r3340, r3341⟩

theorem seg16_rung28 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15320 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX28 rho : Seg16.F), (seg16AccY28 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15899 : Seg16.F), (rho 15900 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX28 rho : Seg16.F), (seg16AccY28 rho : Seg16.F)⟩
        ⟨(rho 15899 : Seg16.F), (rho 15900 : Seg16.F)⟩
        ⟨(seg16AccX29 rho : Seg16.F), (seg16AccY29 rho : Seg16.F)⟩
        ⟨(rho 15912 : Seg16.F), (rho 15913 : Seg16.F)⟩ := by
  obtain ⟨r3329, r3330, r3331, r3332, r3333, r3334, r3335, r3336, r3337, r3338, r3339, r3340, r3341⟩ := seg16_rows28 rho h
  unfold Seg16.relationRow3329 at r3329
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3329
  unfold Seg16.relationRow3330 at r3330
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3330
  unfold Seg16.relationRow3331 at r3331
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3331
  unfold Seg16.relationRow3332 at r3332
  unfold Seg16.relationRow3333 at r3333
  unfold Seg16.relationRow3334 at r3334
  unfold Seg16.relationRow3335 at r3335
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3335
  unfold Seg16.relationRow3336 at r3336
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3336
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
    have hnextx : seg16AccX29 rho = seg16AccX28 rho + rho 15907 := by
      unfold seg16AccX29 seg16AccX28
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 28]
      ring
    have hnexty : seg16AccY29 rho = seg16AccY28 rho + rho 15908 := by
      unfold seg16AccY29 seg16AccY28
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 28]
      ring
    have ha0 : (rho 15899 + rho 15900) * (seg16AccX28 rho + seg16AccY28 rho) = rho 15901 := by
      unfold seg16AccX28 seg16AccY28
      linear_combination r3329
    have ha1 : rho 15900 * seg16AccX28 rho = rho 15902 := by
      unfold seg16AccX28
      linear_combination r3330
    have ha2 : rho 15899 * seg16AccY28 rho = rho 15903 := by
      unfold seg16AccY28
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
        rw [← hbit]
        unfold seg16AccX28
        linear_combination -r3335
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY29 rho = seg16AccY28 rho - Bool.toZMod bit * (seg16AccY28 rho - rho 15906) := by
      have hd : rho 15908 = Bool.toZMod bit * (rho 15906 - seg16AccY28 rho) := by
        rw [← hbit]
        unfold seg16AccY28
        linear_combination -r3336
      rw [hnexty]
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

theorem seg16_rows29 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3342 rho ∧ Seg16.relationRow3343 rho ∧ Seg16.relationRow3344 rho ∧ Seg16.relationRow3345 rho ∧ Seg16.relationRow3346 rho ∧ Seg16.relationRow3347 rho ∧ Seg16.relationRow3348 rho ∧ Seg16.relationRow3349 rho ∧ Seg16.relationRow3350 rho ∧ Seg16.relationRow3351 rho ∧ Seg16.relationRow3352 rho ∧ Seg16.relationRow3353 rho ∧ Seg16.relationRow3354 rho := by
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
  exact ⟨r3342, r3343, r3344, r3345, r3346, r3347, r3348, r3349, r3350, r3351, r3352, r3353, r3354⟩

theorem seg16_rung29 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15321 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX29 rho : Seg16.F), (seg16AccY29 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15912 : Seg16.F), (rho 15913 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX29 rho : Seg16.F), (seg16AccY29 rho : Seg16.F)⟩
        ⟨(rho 15912 : Seg16.F), (rho 15913 : Seg16.F)⟩
        ⟨(seg16AccX30 rho : Seg16.F), (seg16AccY30 rho : Seg16.F)⟩
        ⟨(rho 15925 : Seg16.F), (rho 15926 : Seg16.F)⟩ := by
  obtain ⟨r3342, r3343, r3344, r3345, r3346, r3347, r3348, r3349, r3350, r3351, r3352, r3353, r3354⟩ := seg16_rows29 rho h
  unfold Seg16.relationRow3342 at r3342
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3342
  unfold Seg16.relationRow3343 at r3343
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3343
  unfold Seg16.relationRow3344 at r3344
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3344
  unfold Seg16.relationRow3345 at r3345
  unfold Seg16.relationRow3346 at r3346
  unfold Seg16.relationRow3347 at r3347
  unfold Seg16.relationRow3348 at r3348
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3348
  unfold Seg16.relationRow3349 at r3349
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3349
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
    have hnextx : seg16AccX30 rho = seg16AccX29 rho + rho 15920 := by
      unfold seg16AccX30 seg16AccX29
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 29]
      ring
    have hnexty : seg16AccY30 rho = seg16AccY29 rho + rho 15921 := by
      unfold seg16AccY30 seg16AccY29
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 29]
      ring
    have ha0 : (rho 15912 + rho 15913) * (seg16AccX29 rho + seg16AccY29 rho) = rho 15914 := by
      unfold seg16AccX29 seg16AccY29
      linear_combination r3342
    have ha1 : rho 15913 * seg16AccX29 rho = rho 15915 := by
      unfold seg16AccX29
      linear_combination r3343
    have ha2 : rho 15912 * seg16AccY29 rho = rho 15916 := by
      unfold seg16AccY29
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
        rw [← hbit]
        unfold seg16AccX29
        linear_combination -r3348
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY30 rho = seg16AccY29 rho - Bool.toZMod bit * (seg16AccY29 rho - rho 15919) := by
      have hd : rho 15921 = Bool.toZMod bit * (rho 15919 - seg16AccY29 rho) := by
        rw [← hbit]
        unfold seg16AccY29
        linear_combination -r3349
      rw [hnexty]
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

theorem seg16_rows30 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3355 rho ∧ Seg16.relationRow3356 rho ∧ Seg16.relationRow3357 rho ∧ Seg16.relationRow3358 rho ∧ Seg16.relationRow3359 rho ∧ Seg16.relationRow3360 rho ∧ Seg16.relationRow3361 rho ∧ Seg16.relationRow3362 rho ∧ Seg16.relationRow3363 rho ∧ Seg16.relationRow3364 rho ∧ Seg16.relationRow3365 rho ∧ Seg16.relationRow3366 rho ∧ Seg16.relationRow3367 rho := by
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
  exact ⟨r3355, r3356, r3357, r3358, r3359, r3360, r3361, r3362, r3363, r3364, r3365, r3366, r3367⟩

theorem seg16_rung30 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15322 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX30 rho : Seg16.F), (seg16AccY30 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15925 : Seg16.F), (rho 15926 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX30 rho : Seg16.F), (seg16AccY30 rho : Seg16.F)⟩
        ⟨(rho 15925 : Seg16.F), (rho 15926 : Seg16.F)⟩
        ⟨(seg16AccX31 rho : Seg16.F), (seg16AccY31 rho : Seg16.F)⟩
        ⟨(rho 15938 : Seg16.F), (rho 15939 : Seg16.F)⟩ := by
  obtain ⟨r3355, r3356, r3357, r3358, r3359, r3360, r3361, r3362, r3363, r3364, r3365, r3366, r3367⟩ := seg16_rows30 rho h
  unfold Seg16.relationRow3355 at r3355
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3355
  unfold Seg16.relationRow3356 at r3356
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3356
  unfold Seg16.relationRow3357 at r3357
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3357
  unfold Seg16.relationRow3358 at r3358
  unfold Seg16.relationRow3359 at r3359
  unfold Seg16.relationRow3360 at r3360
  unfold Seg16.relationRow3361 at r3361
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3361
  unfold Seg16.relationRow3362 at r3362
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3362
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
    have hnextx : seg16AccX31 rho = seg16AccX30 rho + rho 15933 := by
      unfold seg16AccX31 seg16AccX30
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 30]
      ring
    have hnexty : seg16AccY31 rho = seg16AccY30 rho + rho 15934 := by
      unfold seg16AccY31 seg16AccY30
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 30]
      ring
    have ha0 : (rho 15925 + rho 15926) * (seg16AccX30 rho + seg16AccY30 rho) = rho 15927 := by
      unfold seg16AccX30 seg16AccY30
      linear_combination r3355
    have ha1 : rho 15926 * seg16AccX30 rho = rho 15928 := by
      unfold seg16AccX30
      linear_combination r3356
    have ha2 : rho 15925 * seg16AccY30 rho = rho 15929 := by
      unfold seg16AccY30
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
        rw [← hbit]
        unfold seg16AccX30
        linear_combination -r3361
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY31 rho = seg16AccY30 rho - Bool.toZMod bit * (seg16AccY30 rho - rho 15932) := by
      have hd : rho 15934 = Bool.toZMod bit * (rho 15932 - seg16AccY30 rho) := by
        rw [← hbit]
        unfold seg16AccY30
        linear_combination -r3362
      rw [hnexty]
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

theorem seg16_rows31 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3368 rho ∧ Seg16.relationRow3369 rho ∧ Seg16.relationRow3370 rho ∧ Seg16.relationRow3371 rho ∧ Seg16.relationRow3372 rho ∧ Seg16.relationRow3373 rho ∧ Seg16.relationRow3374 rho ∧ Seg16.relationRow3375 rho ∧ Seg16.relationRow3376 rho ∧ Seg16.relationRow3377 rho ∧ Seg16.relationRow3378 rho ∧ Seg16.relationRow3379 rho ∧ Seg16.relationRow3380 rho := by
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
  exact ⟨r3368, r3369, r3370, r3371, r3372, r3373, r3374, r3375, r3376, r3377, r3378, r3379, r3380⟩

theorem seg16_rung31 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15323 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX31 rho : Seg16.F), (seg16AccY31 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15938 : Seg16.F), (rho 15939 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX31 rho : Seg16.F), (seg16AccY31 rho : Seg16.F)⟩
        ⟨(rho 15938 : Seg16.F), (rho 15939 : Seg16.F)⟩
        ⟨(seg16AccX32 rho : Seg16.F), (seg16AccY32 rho : Seg16.F)⟩
        ⟨(rho 15951 : Seg16.F), (rho 15952 : Seg16.F)⟩ := by
  obtain ⟨r3368, r3369, r3370, r3371, r3372, r3373, r3374, r3375, r3376, r3377, r3378, r3379, r3380⟩ := seg16_rows31 rho h
  unfold Seg16.relationRow3368 at r3368
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3368
  unfold Seg16.relationRow3369 at r3369
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3369
  unfold Seg16.relationRow3370 at r3370
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3370
  unfold Seg16.relationRow3371 at r3371
  unfold Seg16.relationRow3372 at r3372
  unfold Seg16.relationRow3373 at r3373
  unfold Seg16.relationRow3374 at r3374
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3374
  unfold Seg16.relationRow3375 at r3375
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3375
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
    have hnextx : seg16AccX32 rho = seg16AccX31 rho + rho 15946 := by
      unfold seg16AccX32 seg16AccX31
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 31]
      ring
    have hnexty : seg16AccY32 rho = seg16AccY31 rho + rho 15947 := by
      unfold seg16AccY32 seg16AccY31
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 31]
      ring
    have ha0 : (rho 15938 + rho 15939) * (seg16AccX31 rho + seg16AccY31 rho) = rho 15940 := by
      unfold seg16AccX31 seg16AccY31
      linear_combination r3368
    have ha1 : rho 15939 * seg16AccX31 rho = rho 15941 := by
      unfold seg16AccX31
      linear_combination r3369
    have ha2 : rho 15938 * seg16AccY31 rho = rho 15942 := by
      unfold seg16AccY31
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
        rw [← hbit]
        unfold seg16AccX31
        linear_combination -r3374
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY32 rho = seg16AccY31 rho - Bool.toZMod bit * (seg16AccY31 rho - rho 15945) := by
      have hd : rho 15947 = Bool.toZMod bit * (rho 15945 - seg16AccY31 rho) := by
        rw [← hbit]
        unfold seg16AccY31
        linear_combination -r3375
      rw [hnexty]
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

theorem seg16_rows32 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3381 rho ∧ Seg16.relationRow3382 rho ∧ Seg16.relationRow3383 rho ∧ Seg16.relationRow3384 rho ∧ Seg16.relationRow3385 rho ∧ Seg16.relationRow3386 rho ∧ Seg16.relationRow3387 rho ∧ Seg16.relationRow3388 rho ∧ Seg16.relationRow3389 rho ∧ Seg16.relationRow3390 rho ∧ Seg16.relationRow3391 rho ∧ Seg16.relationRow3392 rho ∧ Seg16.relationRow3393 rho := by
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
  exact ⟨r3381, r3382, r3383, r3384, r3385, r3386, r3387, r3388, r3389, r3390, r3391, r3392, r3393⟩

theorem seg16_rung32 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15324 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX32 rho : Seg16.F), (seg16AccY32 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15951 : Seg16.F), (rho 15952 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX32 rho : Seg16.F), (seg16AccY32 rho : Seg16.F)⟩
        ⟨(rho 15951 : Seg16.F), (rho 15952 : Seg16.F)⟩
        ⟨(seg16AccX33 rho : Seg16.F), (seg16AccY33 rho : Seg16.F)⟩
        ⟨(rho 15964 : Seg16.F), (rho 15965 : Seg16.F)⟩ := by
  obtain ⟨r3381, r3382, r3383, r3384, r3385, r3386, r3387, r3388, r3389, r3390, r3391, r3392, r3393⟩ := seg16_rows32 rho h
  unfold Seg16.relationRow3381 at r3381
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3381
  unfold Seg16.relationRow3382 at r3382
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3382
  unfold Seg16.relationRow3383 at r3383
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3383
  unfold Seg16.relationRow3384 at r3384
  unfold Seg16.relationRow3385 at r3385
  unfold Seg16.relationRow3386 at r3386
  unfold Seg16.relationRow3387 at r3387
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3387
  unfold Seg16.relationRow3388 at r3388
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3388
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
    have hnextx : seg16AccX33 rho = seg16AccX32 rho + rho 15959 := by
      unfold seg16AccX33 seg16AccX32
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 32]
      ring
    have hnexty : seg16AccY33 rho = seg16AccY32 rho + rho 15960 := by
      unfold seg16AccY33 seg16AccY32
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 32]
      ring
    have ha0 : (rho 15951 + rho 15952) * (seg16AccX32 rho + seg16AccY32 rho) = rho 15953 := by
      unfold seg16AccX32 seg16AccY32
      linear_combination r3381
    have ha1 : rho 15952 * seg16AccX32 rho = rho 15954 := by
      unfold seg16AccX32
      linear_combination r3382
    have ha2 : rho 15951 * seg16AccY32 rho = rho 15955 := by
      unfold seg16AccY32
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
        rw [← hbit]
        unfold seg16AccX32
        linear_combination -r3387
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY33 rho = seg16AccY32 rho - Bool.toZMod bit * (seg16AccY32 rho - rho 15958) := by
      have hd : rho 15960 = Bool.toZMod bit * (rho 15958 - seg16AccY32 rho) := by
        rw [← hbit]
        unfold seg16AccY32
        linear_combination -r3388
      rw [hnexty]
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

theorem seg16_hstep_c2 (rho : Nat -> Seg16.F) (h : Seg16.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (15292 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 22 ≤ i → i < 33 →
      EdwardsBridge.onCurve (seg16LadderAccState rho i) →
      EdwardsBridge.onCurve (seg16LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg16LadderAccState rho i) (seg16LadderCurState rho i)
        (seg16LadderAccState rho (i + 1)) (seg16LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
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
  · exact seg16_rung32 rho h bits[32]! (hbitAt 32 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
